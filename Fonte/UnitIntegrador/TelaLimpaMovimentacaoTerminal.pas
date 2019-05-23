unit TelaLimpaMovimentacaoTerminal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  ComCtrls, Mask, ToolEdit, CurrEdit, DB, DBTables, RxQuery,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaLimpaMovimentacaoTerminal = class(TFormTelaGeralTEMPLATE)
    PanelImp: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    BtnIniciar: TSpeedButton;
    Label2: TLabel;
    EditHoraInicio: TEdit;
    EditTempoDecorrido: TEdit;
    EditHoraTermino: TEdit;
    Panel4: TPanel;
    LabelInfo: TLabel;
    ProgressBarTabelas: TProgressBar;
    GroupBox1: TGroupBox;
    MemoProblemas: TMemo;
    EditTerminal: TEdit;
    GroupBox2: TGroupBox;
    MemoDados: TMemo;
    DatabaseImp: TDatabase;
    SQLTerminal: TRxQuery;
    SQLTerminalTERMICOD: TIntegerField;
    SQLTerminalEMPRICOD: TIntegerField;
    SQLTerminalTERMA60DESCR: TStringField;
    SQLTerminalTERMA254PATHTERM: TStringField;
    SQLCupomOrig: TRxQuery;
    SQLCupomItemOrig: TRxQuery;
    SQLCupomNumerarioOrig: TRxQuery;
    SQLTotalizadorDiarioOrig: TRxQuery;
    SQLMovimentoCaixaOrig: TRxQuery;
    SQLGeral: TRxQuery;
    Label7: TLabel;
    DtBaseLimp: TDateEdit;
    Label1: TLabel;
    EditTabela: TEdit;
    Label5: TLabel;
    EditContTotRegistros: TEdit;
    tbl_Cupom_ArqMorto: TTable;
    procedure BtnIniciarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Inicio : TDateTime ;

    function  ConsistirMovimentacaoServidor_Terminal(Terminal, Data : string) : boolean ;
    procedure AtualizaTempoDecorrido ;
    procedure CriarTabelasArquivoMorto ;

  public
    { Public declarations }
  end;

var
  FormTelaLimpaMovimentacaoTerminal: TFormTelaLimpaMovimentacaoTerminal;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormTelaLimpaMovimentacaoTerminal.BtnIniciarClick(
  Sender: TObject);
var
  IniImp     : boolean ;
  CodProx    : double ;
  i          : integer ;
  IDMontado,
  PontoImp,
  NomeCampo  : string ;
begin
  inherited;
  TRY
    DM.DB.StartTransaction ;

    MemoDados.Lines.Clear ;
    MemoProblemas.Lines.Clear ;
    PontoImp       := '' ;

    Inicio := Now ;
    EditHoraInicio.Text := FormatDateTime('hh:mm:ss', Inicio) ;
    EditHoraInicio.Refresh ;

    SQLTerminal.Open ;
    SQLTerminal.First ;

    while not SQLTerminal.EOF do
      begin
        EditTerminal.Text := SQLTerminalTERMA60DESCR.Value ;
        EditTerminal.Refresh ;

        AtualizaTempoDecorrido ;

        IniImp := false ;
        if SQLTerminalTERMA254PATHTERM.Value <> '' then
        begin

          TRY
            LabelInfo.Caption := 'Conectando no terminal ' + SQLTerminalTERMA60DESCR.Value + '...' ;
            LabelInfo.Refresh ;
            DatabaseImp.Connected := false ;
            AlterarPathAlias('UNITGESTAO_IMPORTA_TERM', SQLTerminalTERMA254PATHTERM.Value);
            DatabaseImp.Connected := true ;
            IniImp := true ;
          EXCEPT
            DatabaseImp.Connected := false ;
            MemoProblemas.Lines.Add('Não limpou o terminal ' + SQLTerminalTERMA60DESCR.Value)
          END ;

          AtualizaTempoDecorrido ;

          //VERIFICAR CUPONS NA DATA
          if not ConsistirMovimentacaoServidor_Terminal(SQLTerminalTERMICOD.AsString, DtBaseLimp.Text) then
          begin
            Informa('Limpeza cancelada !') ;

            if DatabaseImp.InTransaction then
              DatabaseImp.Rollback ;

            if DM.DB.InTransaction then
              DM.DB.Rollback ;

            exit ;
          end ;

          if IniImp then
            begin
              DatabaseImp.StartTransaction ;

              LabelInfo.Caption := 'Filtrando cupons...' ;
              LabelInfo.Refresh ;
              //------------------------------------\\
              SQLCupomOrig.Close ;
              SQLCupomOrig.MacroByName('MFiltro').Value := 'CUPODEMIS = "' + FormatDateTime('mm/dd/yyyy', DtBaseLimp.Date) + '"';
              SQLCupomOrig.Open ;
              while not SQLCupomOrig.Eof do
                begin
                  //LIMPANDO ITENS DO CUPOM
                  LabelInfo.Caption := 'Limpando itens do cupom...' ;
                  LabelInfo.Refresh ;
                  SQLGeral.Close ;
                  SQLGeral.SQL.Clear ;
                  SQLGeral.SQL.Add('delete from CUPOMITEM where CUPOA13ID = "' + SQLCupomOrig.FieldByName('CUPOA13ID').AsString + '"') ;
                  SQLGeral.ExecSQL ;
                  //LIMPANDO NUMERARIOS DO CUPOM
                  LabelInfo.Caption := 'Limpando numerários do cupom...' ;
                  LabelInfo.Refresh ;
                  SQLGeral.Close ;
                  SQLGeral.SQL.Clear ;
                  SQLGeral.SQL.Add('delete from CUPOMNUMERARIO where CUPOA13ID = "' + SQLCupomOrig.FieldByName('CUPOA13ID').AsString + '"') ;
                  SQLGeral.ExecSQL ;

                  SQLCupomOrig.Next ;
                end ;
              //************ IMPORTANDO CUPOM ************\\
              LabelInfo.Caption := 'Limpando Cupons...' ;
              LabelInfo.Refresh ;
              SQLGeral.Close ;
              SQLGeral.SQL.Clear ;
              SQLGeral.SQL.Add('delete from CUPOM where CUPODEMIS = "' + FormatDateTime('mm/dd/yyyy', DtBaseLimp.Date)+ '"') ;
              SQLGeral.ExecSQL ;
              //------------------------------------\\
              LabelInfo.Caption := 'Limpando movimentação do caixa...' ;
              LabelInfo.Refresh ;
              SQLMovimentoCaixaOrig.Close ;
              SQLMovimentoCaixaOrig.MacroByName('MFiltro').Value := 'MVCXDMOV = "' + FormatDateTime('mm/dd/yyyy', DtBaseLimp.Date)+ '"';
              SQLMovimentoCaixaOrig.ExecSQL ;
              AtualizaTempoDecorrido ;
              LabelInfo.Caption := 'Limpando totalizadores diários do caixa...' ;
              LabelInfo.Refresh ;
              SQLTotalizadorDiarioOrig.Close ;
              SQLTotalizadorDiarioOrig.MacroByName('MFiltro').Value := 'TODIDMOV = "' + FormatDateTime('mm/dd/yyyy', DtBaseLimp.Date)+ '"';
              SQLTotalizadorDiarioOrig.ExecSQL ;
              AtualizaTempoDecorrido ;
            end ;

          MemoDados.Lines.Add('TERMINAL ' + SQLTerminalTERMA60DESCR.Value) ;
          MemoDados.Lines.Add('') ;
        end ;

        SQLTerminal.Next ;
        if DatabaseImp.InTransaction then
          DatabaseImp.Commit ;
        if DM.DB.InTransaction then
          DM.DB.Commit ;
      end ;

    AtualizaTempoDecorrido ;
    EditHoraTermino.Text := FormatDateTime('hh:mm:ss', Now) ;
    EditHoraTermino.Refresh ;

    if MemoProblemas.Lines.Count = 0 then
      begin
        LabelInfo.Caption := 'Limpeza efetuada com sucesso!' ;
        LabelInfo.Refresh ;
      end
    else
      begin
        LabelInfo.Caption := 'Houveram problemas na limpeza!' ;
        LabelInfo.Refresh ;
      end ;
  EXCEPT
    on E: Exception do
    begin
      LabelInfo.Caption := 'Limpeza cancelada..' ;
      LabelInfo.Refresh ;

      if DatabaseImp.InTransaction then
        DatabaseImp.Rollback ;
      if DM.DB.InTransaction then
        DM.DB.Rollback ;

      Informa('Problemas ao limpar dados:' + PontoImp + #13 + E.Message) ;
    end ;
  END ;
end;

function TFormTelaLimpaMovimentacaoTerminal.ConsistirMovimentacaoServidor_Terminal(Terminal, Data : string) : boolean ;
var
  NroOrig,
  NroDest : integer ;
  VlrDebOrig,
  VlrOrig,
  VlrDebDest,
  VlrDest : double ;

begin
  Result  := true ;
  //---------------------------------------------\\
  LabelInfo.Caption := 'Consistindo Cupons..' ;
  LabelInfo.Refresh ;
  SQLGeral.Close ;
  SQLGeral.SQL.Clear ;
  SQLGeral.SQL.Add('select count(*) as RecCount, Sum(CUPON2TOTITENS) as Total from CUPOM') ;
  SQLGeral.SQL.Add('where CUPODEMIS = "' + FormatDateTime('mm/dd/yyyy', DtBaseLimp.Date) + '"') ;
  SQLGeral.Open ;
  NroOrig := SQLGeral.FieldByName('RecCount').Value ;
  if SQLGeral.FieldByName('Total').Value > 0 then
    VlrOrig := SQLGeral.FieldByName('Total').Value
  else
    VlrOrig := 0 ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select count(*) as RecCount , Sum(CUPON2TOTITENS) as Total from CUPOM') ;
  DM.SQLTemplate.SQL.Add('where CUPODEMIS = "' + FormatDateTime('mm/dd/yyyy', DtBaseLimp.Date) + '"') ;
  DM.SQLTemplate.SQL.Add('and   TERMICOD = ' + Terminal) ;
  DM.SQLTemplate.Open ;
  NroDest := DM.SQLTemplate.FieldByName('RecCount').Value ;
  if DM.SQLTemplate.FieldByName('Total').Value > 0 then
    VlrDest := DM.SQLTemplate.FieldByName('Total').Value
  else
    VlrDest := 0 ;

  if NroDest <> NroOrig then
    begin
      Informa('O número de cupons do terminal ' + SQLTerminalTERMA60DESCR.Value + '(' + IntToStr(NroOrig) + ' Cupons) ' +
              'difere do número de cupons da RETAGUARDA(' + IntToStr(NroDest) + ' Cupons))') ;
      Result := false ;
      exit ;
    end ;

  if FormatFloat('#,##0.00', VlrDest) <> FormatFloat('#,##0.00', VlrOrig) then
    begin
      if not Pergunta('NAO', 'O valor dos cupons do terminal "' + SQLTerminalTERMA60DESCR.Value + '" é de R$ ' + FormatFloat('#,##0.00', VlrOrig) + '.' + #13 + #13 +
                      'O valor encontrado na RETAGUARDA é de R$ ' + FormatFloat('#,##0.00', VlrDest) + '.' + #13 + #13 +
                      'CONTINUA A LIMPEZA MESMO ASSIM ?') then
        begin
          Result := false ;
          exit ;
        end ;

    end ;
  //---------------------------------------------\\
  LabelInfo.Caption := 'Consistindo Itens dos Cupons..' ;
  LabelInfo.Refresh ;
  SQLGeral.Close ;
  SQLGeral.SQL.Clear ;
  SQLGeral.SQL.Add('select count(*) as RecCount , Sum(CPITN3VLRUNIT) as Total from CUPOM, CUPOMITEM') ;
  SQLGeral.SQL.Add('where CUPOM.CUPOA13ID = CUPOMITEM.CUPOA13ID') ;
  SQLGeral.SQL.Add('and   CUPOM.CUPODEMIS = "' + FormatDateTime('mm/dd/yyyy', DtBaseLimp.Date) + '"') ;
  SQLGeral.Open ;
  NroOrig := SQLGeral.FieldByName('RecCount').Value ;
  if SQLGeral.FieldByName('Total').Value > 0 then
    VlrOrig := SQLGeral.FieldByName('Total').Value
  else
    VlrOrig := 0 ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select count(*) as RecCount , Sum(CPITN3VLRUNIT) as Total from CUPOM, CUPOMITEM') ;
  DM.SQLTemplate.SQL.Add('where CUPOM.CUPOA13ID = CUPOMITEM.CUPOA13ID') ;
  DM.SQLTemplate.SQL.Add('and   CUPOM.CUPODEMIS = "' + FormatDateTime('mm/dd/yyyy', DtBaseLimp.Date) + '"') ;
  DM.SQLTemplate.SQL.Add('and   CUPOM.TERMICOD = ' + Terminal) ;
  DM.SQLTemplate.Open ;
  NroDest := DM.SQLTemplate.FieldByName('RecCount').Value ;
  if DM.SQLTemplate.FieldByName('Total').Value > 0 then
    VlrDest := DM.SQLTemplate.FieldByName('Total').Value
  else
    VlrDest := 0 ;

  if NroDest <> NroOrig then
    begin
      Informa('O número de itens dos cupons do terminal ' + SQLTerminalTERMA60DESCR.Value + '(' + IntToStr(NroOrig) + ' Cupons) ' +
              'difere do número de cupons da RETAGUARDA(' + IntToStr(NroDest) + ' Cupons))') ;
      Result := false ;
      exit ;
    end ;

  if FormatFloat('#,##0.00', VlrDest) <> FormatFloat('#,##0.00', VlrOrig) then
    begin
      if not Pergunta('NAO', 'O valor dos itens dos cupons do terminal "' + SQLTerminalTERMA60DESCR.Value + '" é de R$ ' + FormatFloat('#,##0.00', VlrOrig) + '.' + #13 + #13 +
                      'O valor encontrado na RETAGUARDA é de R$ ' + FormatFloat('#,##0.00', VlrDest) + '.' + #13 + #13 +
                      'CONTINUA A LIMPEZA MESMO ASSIM ?') then
        begin
          Result := false ;
          exit ;
        end ;
    end ;
  //---------------------------------------------\\
  LabelInfo.Caption := 'Consistindo Numerários dos Cupons..' ;
  LabelInfo.Refresh ;
  SQLGeral.Close ;
  SQLGeral.SQL.Clear ;
  DM.SQLTemplate.Close ;
  SQLGeral.SQL.Clear ;
  SQLGeral.SQL.Add('select count(*) as RecCount , Sum(CUPOMNUMERARIO.CPNMN2VLR) as Total from CUPOM, CUPOMNUMERARIO') ;
  SQLGeral.SQL.Add('where CUPOM.CUPOA13ID = CUPOMNUMERARIO.CUPOA13ID') ;
  SQLGeral.SQL.Add('and   CUPOM.CUPODEMIS = "' + FormatDateTime('mm/dd/yyyy', DtBaseLimp.Date) + '"') ;
  SQLGeral.Open ;
  NroOrig := SQLGeral.FieldByName('RecCount').Value ;
  if SQLGeral.FieldByName('Total').Value > 0 then
    VlrOrig := SQLGeral.FieldByName('Total').Value
  else
    VlrOrig := 0 ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select count(*) as RecCount , Sum(CUPOMNUMERARIO.CPNMN2VLR) as Total from CUPOM, CUPOMNUMERARIO') ;
  DM.SQLTemplate.SQL.Add('where CUPOM.CUPOA13ID = CUPOMNUMERARIO.CUPOA13ID') ;
  DM.SQLTemplate.SQL.Add('and   CUPOM.CUPODEMIS = "' + FormatDateTime('mm/dd/yyyy', DtBaseLimp.Date) + '"') ;
  DM.SQLTemplate.SQL.Add('and   CUPOM.TERMICOD = ' + Terminal) ;
  DM.SQLTemplate.Open ;
  NroDest := DM.SQLTemplate.FieldByName('RecCount').Value ;
  if DM.SQLTemplate.FieldByName('Total').Value > 0 then
    VlrDest := DM.SQLTemplate.FieldByName('Total').Value
  else
    VlrDest := 0 ;

  if NroDest <> NroOrig then
    begin
      Informa('O número de numerários dos cupons do terminal ' + SQLTerminalTERMA60DESCR.Value + '(' + IntToStr(NroOrig) + ' Cupons) ' +
              'difere do números da RETAGUARDA(' + IntToStr(NroDest) + ' Cupons))') ;
      Result := false ;
      exit ;
    end ;

  if FormatFloat('#,##0.00', VlrDest) <> FormatFloat('#,##0.00', VlrOrig) then
    begin
      if not Pergunta('NAO', 'O valor dos numerários dos Cupons do terminal "' + SQLTerminalTERMA60DESCR.Value + '" é de R$ ' + FormatFloat('#,##0.00', VlrOrig) + '.' + #13 + #13 +
                      'O valor encontrado na RETAGUARDA é de R$ ' + FormatFloat('#,##0.00', VlrDest) + '.' + #13 + #13 +
                      'CONTINUA A LIMPEZA MESMO ASSIM ?') then
        begin
          Result := false ;
          exit ;
        end ;
    end ;
  //---------------------------------------------\\
  LabelInfo.Caption := 'Consistindo Movimentos de Caixa..' ;
  LabelInfo.Refresh ;
  SQLGeral.Close ;
  SQLGeral.SQL.Clear ;
  SQLGeral.SQL.Add('select count(*) as RecCount , Sum(MVCXN2VLRCRED) as Credito, Sum(MVCXN2VLRDEB) as Debito from MOVIMENTOCAIXA') ;
  SQLGeral.SQL.Add('where MVCXDMOV = "' + FormatDateTime('mm/dd/yyyy', DtBaseLimp.Date) + '"') ;
  SQLGeral.Open ;
  NroOrig := SQLGeral.FieldByName('RecCount').Value ;
  if SQLGeral.FieldByName('Credito').Value > 0 then
    VlrOrig := SQLGeral.FieldByName('Credito').Value
  else
    VlrOrig := 0 ;

  if SQLGeral.FieldByName('Debito').Value > 0 then
    VlrDebOrig := SQLGeral.FieldByName('Debito').Value
  else
    VlrDebOrig := 0 ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select count(*) as RecCount , Sum(MVCXN2VLRCRED) as Credito, Sum(MVCXN2VLRDEB) as Debito from MOVIMENTOCAIXA') ;
  DM.SQLTemplate.SQL.Add('where MVCXDMOV = "' + FormatDateTime('mm/dd/yyyy', DtBaseLimp.Date) + '"') ;
  DM.SQLTemplate.SQL.Add('and   TERMICOD = ' + Terminal) ;
  DM.SQLTemplate.Open ;
  NroDest    := SQLGeral.FieldByName('RecCount').Value ;
  if DM.SQLTemplate.FieldByName('Credito').Value > 0 then
    VlrDest := DM.SQLTemplate.FieldByName('Credito').Value
  else
    VlrDest := 0 ;

  if DM.SQLTemplate.FieldByName('Debito').Value > 0 then
    VlrDebDest := DM.SQLTemplate.FieldByName('Debito').Value
  else
    VlrDebDest := 0 ;

  if NroDest <> NroOrig then
    begin
      Informa('O número de movimentos do caixa do terminal ' + SQLTerminalTERMA60DESCR.Value + '(' + IntToStr(NroOrig) + ' Cupons) ' +
              'difere do número da RETAGUARDA(' + IntToStr(NroDest) + ' Cupons))') ;
      Result := false ;
      exit ;
    end ;

  if FormatFloat('#,##0.00', VlrDest) <> FormatFloat('#,##0.00', VlrOrig) then
    begin
      if not Pergunta('NAO', 'O valor de créditos dos movimentos do Caixa do terminal "' + SQLTerminalTERMA60DESCR.Value + '" é de R$ ' +
                      FormatFloat('#,##0.00', VlrOrig) + '.' + #13 + #13 +
                      'O valor encontrado na RETAGUARDA é de R$ ' + FormatFloat('#,##0.00', VlrDest) + '.' + #13 + #13 +
                      'CONTINUA A LIMPEZA MESMO ASSIM ?') then
        begin
          Result := false ;
          exit ;
        end ;
    end ;

  if FormatFloat('#,##0.00', VlrDebDest) <> FormatFloat('#,##0.00', VlrDebOrig) then
    begin
     if not Pergunta('NAO', 'O valor dos débitos dos movimentos do Caixa do terminal "' + SQLTerminalTERMA60DESCR.Value + '" é de R$ ' +
                      FormatFloat('#,##0.00', VlrDebOrig) + '.' + #13 + #13 +
                      'O valor encontrado na RETAGUARDA é de R$ ' + FormatFloat('#,##0.00', VlrDebDest) + '.' + #13 + #13 +
                      'CONTINUA A LIMPEZA MESMO ASSIM ?') then
        begin
          Result := false ;
          exit ;
        end ;
    end ;
  //---------------------------------------------\\
  LabelInfo.Caption := 'Consistindo Totalizadores Diários do Caixa..' ;
  LabelInfo.Refresh ;
  SQLGeral.Close ;
  SQLGeral.SQL.Clear ;
  SQLGeral.SQL.Add('select count(*) as RecCount , Sum(TODIN2VLRCREDITO) as Credito, Sum(TODIN2VLRDEBITO) as Debito from TOTALIZADORDIARIOCAIXA') ;
  SQLGeral.SQL.Add('where TODIDMOV = "' + FormatDateTime('mm/dd/yyyy', DtBaseLimp.Date) + '"') ;
  SQLGeral.Open ;
  NroOrig    := SQLGeral.FieldByName('RecCount').Value ;
  if SQLGeral.FieldByName('Credito').Value > 0 then
    VlrOrig := SQLGeral.FieldByName('Credito').Value
  else
    VlrOrig := 0 ;

  if SQLGeral.FieldByName('Debito').Value > 0 then
    VlrDebOrig := SQLGeral.FieldByName('Debito').Value
  else
    VlrDebOrig :=  0 ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select count(*) as RecCount , Sum(TODIN2VLRCREDITO) as Credito, Sum(TODIN2VLRDEBITO) as Debito from TOTALIZADORDIARIOCAIXA') ;
  DM.SQLTemplate.SQL.Add('where TODIDMOV = "' + FormatDateTime('mm/dd/yyyy', DtBaseLimp.Date) + '"') ;
  DM.SQLTemplate.SQL.Add('and   TERMICOD = ' + Terminal) ;
  DM.SQLTemplate.Open ;
  NroDest := SQLGeral.FieldByName('RecCount').Value ;
  if DM.SQLTemplate.FieldByName('Credito').Value > 0 then
    VlrDest := DM.SQLTemplate.FieldByName('Credito').Value
  else
    VlrDest := 0 ;

  if DM.SQLTemplate.FieldByName('Credito').Value > 0 then
    VlrDebDest := DM.SQLTemplate.FieldByName('Debito').Value
  else
    VlrDebDest := 0 ;

  if NroDest <> NroOrig then
    begin
      Informa('O número de totalizadores diários do caixa do terminal ' + SQLTerminalTERMA60DESCR.Value + '(' + IntToStr(NroOrig) + ' Cupons) ' +
              'difere do número da RETAGUARDA(' + IntToStr(NroDest) + ' Cupons))') ;
      Result := false ;
      exit ;
    end ;

  if FormatFloat('#,##0.00', VlrDest) <> FormatFloat('#,##0.00', VlrOrig) then
    begin
      if not Pergunta('NAO', 'O valor de créditos dos totalizadores diários de caixa do terminal "' + SQLTerminalTERMA60DESCR.Value + '" é de R$ ' +
                      FormatFloat('#,##0.00', VlrOrig) + '.' + #13 + #13 +
                      'O valor encontrado na RETAGUARDA é de R$ ' + FormatFloat('#,##0.00', VlrDest) + '.' + #13 + #13 +
                      'CONTINUA A LIMPEZA MESMO ASSIM ?') then
        begin
          Result := false ;
          exit ;
        end ;
    end ;

  if FormatFloat('#,##0.00', VlrDebDest) <> FormatFloat('#,##0.00', VlrDebOrig) then
    begin
      if not Pergunta('NAO', 'O valor de débitos dos totalizadores diários de caixa do terminal "' + SQLTerminalTERMA60DESCR.Value + '" é de R$ ' +
                      FormatFloat('#,##0.00', VlrDebOrig) + '.' + #13 + #13 +
                      'O valor encontrado na RETAGUARDA é de R$ ' + FormatFloat('#,##0.00', VlrDebDest) + '.' + #13 + #13 +
                      'CONTINUA A LIMPEZA MESMO ASSIM ?') then
        begin
          Result := false ;
          exit ;
        end ;
    end ;
end ;

procedure TFormTelaLimpaMovimentacaoTerminal.AtualizaTempoDecorrido ;
begin
  EditTempoDecorrido.Text := FormatDateTime('hh:nn:ss', Now - Inicio);
  EditTempoDecorrido.Update ;
end ;

procedure TFormTelaLimpaMovimentacaoTerminal.CriarTabelasArquivoMorto ;
var
  i : integer ;
begin
  if not DirectoryExists(DM.PathAplicacao + '\Arquivo Morto') then
    if not CreateDir(DM.PathAplicacao + '\Arquivo Morto') then
      begin
        Informa('Não foi possível criar o diretório "C:\Unit\Gestao\Arquivo Morto"');
        exit ;
      end ;

  if FileExists('Arquivo Morto\Cupom ' + FormatDateTime('dd-mm-aaaa hh-mm-ss', Now) + '.db') then
    begin
      tbl_Cupom_ArqMorto.DatabaseName := 'Arquivo Morto\' ;
      tbl_Cupom_ArqMorto.DatabaseName := 'Cupom' + FormatDateTime('dd-mm-aaaa hh-mm-ss', Now) + '.db' ;
      tbl_Cupom_ArqMorto.CreateTable ;
      for i := 0 to SQLCupomOrig.FieldCount do
      begin
      end ;
    end ;
end ;

procedure TFormTelaLimpaMovimentacaoTerminal.FormCreate(Sender: TObject);
begin
  inherited;
  DtBaseLimp.Date := Date ;
end;

end.
