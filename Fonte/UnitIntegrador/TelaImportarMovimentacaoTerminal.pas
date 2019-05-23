unit TelaImportarMovimentacaoTerminal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  FileCtrl, RXCtrls, ComCtrls, DB, DBTables, RxQuery, Mask, ToolEdit,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaImportarMovimentacaoTerminal = class(TFormTelaGeralTEMPLATE)
    PanelImp: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    BtnIniciar: TSpeedButton;
    EditTabela: TEdit;
    EditHoraInicio: TEdit;
    EditTempoDecorrido: TEdit;
    EditHoraTermino: TEdit;
    EditContTotRegistros: TEdit;
    Panel4: TPanel;
    LabelInfo: TLabel;
    ProgressBarTabelas: TProgressBar;
    DatabaseImp: TDatabase;
    SQLTerminal: TRxQuery;
    SQLCupomOrig: TRxQuery;
    SQLCupomItemOrig: TRxQuery;
    SQLCupomNumerarioOrig: TRxQuery;
    SQLTotalizadorDiarioOrig: TRxQuery;
    SQLMovimentoCaixaOrig: TRxQuery;
    SQLCupomDest: TRxQuery;
    SQLCupomItemDest: TRxQuery;
    SQLCupomNumerarioDest: TRxQuery;
    SQLTotalizadorDiarioDest: TRxQuery;
    SQLMovimentoCaixaDest: TRxQuery;
    SQLTerminalTERMICOD: TIntegerField;
    SQLTerminalEMPRICOD: TIntegerField;
    SQLTerminalTERMA60DESCR: TStringField;
    SQLTerminalTERMA254PATHTERM: TStringField;
    SQLGeral: TRxQuery;
    GroupBox1: TGroupBox;
    MemoProblemas: TMemo;
    Label2: TLabel;
    EditTerminal: TEdit;
    DSSQLCupomOrig: TDataSource;
    GroupBox2: TGroupBox;
    MemoDados: TMemo;
    Label7: TLabel;
    DtBaseImp: TDateEdit;
    procedure FormResize(Sender: TObject);
    procedure BtnIniciarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Inicio : TDateTime ;

    procedure AtualizaTempoDecorrido ;
  public
    { Public declarations }
  end;

var
  FormTelaImportarMovimentacaoTerminal: TFormTelaImportarMovimentacaoTerminal;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormTelaImportarMovimentacaoTerminal.FormResize(
  Sender: TObject);
begin
  inherited;
  PanelImp.Top := (PanelCentral.Height-PanelImp.Height) Div 2;
  PanelImp.Left:= ((PanelCentral.Width-PanelImp.Width) Div 2) + (PanelBarra.Width Div 2);
end;

procedure TFormTelaImportarMovimentacaoTerminal.BtnIniciarClick(
  Sender: TObject);
var
  AbriuBancos,
  IniImp          : boolean ;
  CodProx         : double ;
  NumRegCup,
  NumRegCupIt,
  NumRegCupNum,
  NumRegTotDiaCx,
  NumRegMovCx,
  i               : integer ;
  IDMontado,
  PontoImp,
  NomeCampo       : string ;
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

    SQLCupomDest.Open ;
    SQLCupomItemDest.Open ;
    SQLCupomNumerarioDest.Open ;
    SQLTotalizadorDiarioDest.Open ;
    SQLMovimentoCaixaDest.Open ;
    SQLTerminal.Open ;
    SQLTerminal.First ;

    GravaArqTexto(FormatDateTime('dd/mm/yyyy hh:mm:ss', Now), 'ImportacaoTerminais.txt', 'EDITAR') ;

    while not SQLTerminal.EOF do
      begin
        NumRegCup      := 0 ;
        NumRegCupIt    := 0 ;
        NumRegCupNum   := 0 ;
        NumRegTotDiaCx := 0 ;
        NumRegMovCx    := 0 ;

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
            MemoProblemas.Lines.Add('- Não conectou no terminal ' + SQLTerminalTERMA60DESCR.Value) ;
            MemoProblemas.Lines.Add('') ;
            GravaArqTexto('- Não importou terminal ' + SQLTerminalTERMA60DESCR.Value,
                          'ImportacaoTerminais.txt',
                          'EDITAR') ;
          END ;

          AtualizaTempoDecorrido ;

          if IniImp then
            begin
              DatabaseImp.StartTransaction ;

              LabelInfo.Caption := 'Abrindo tabelas...' ;
              LabelInfo.Refresh ;
              //------------------------------------\\
              AbriuBancos := true ;
              TRY
                SQLCupomOrig.Close ;
                SQLCupomOrig.MacroByName('MFiltro').Value := 'CUPODEMIS = "' + FormatDateTime('mm/dd/yyyy', DtBaseImp.Date)+ '"';
                SQLCupomOrig.Open ;
              EXCEPT
                on E: Exception do
                begin
                  AbriuBancos := false ;
                  MemoProblemas.Lines.Add('- Problemas ao tentar abrir a tabela de CUPOM no terminal ' + SQLTerminalTERMA60DESCR.Value + ' ERRO INTERNO [ ' + E.Message + ' ]') ;
                  MemoProblemas.Lines.Add('') ;
                  GravaArqTexto('- Problemas ao tentar abrir a tabela de CUPOM no terminal ' + SQLTerminalTERMA60DESCR.Value + ' ERRO INTERNO [ ' + E.Message + ' ]',
                                'ImportacaoTerminais.txt',
                                'EDITAR') ;
                  Informa('Problemas ao tentar abrir a tabela de CUPOM.') ;
                end ;
              END ;
              //------------------------------------\\
              TRY
                SQLCupomItemOrig.Open ;
              EXCEPT
                on E: Exception do
                begin
                  AbriuBancos := false ;
                  MemoProblemas.Lines.Add('- Problemas ao tentar abrir a tabela de ITENS DO CUPOM no terminal ' + SQLTerminalTERMA60DESCR.Value + 'ERRO INTERNO [ ' + E.Message +' ]') ;
                  MemoProblemas.Lines.Add('') ;
                  GravaArqTexto('- Problemas ao tentar abrir a tabela de ITENS DO CUPOM no terminal ' + SQLTerminalTERMA60DESCR.Value + 'ERRO INTERNO [ ' + E.Message +' ]',
                                'ImportacaoTerminais.txt',
                                'EDITAR') ;
                  Informa('Problemas ao tentar abrir a tabela de ITENS DO CUPOM') ;
                end ;
              END ;
              //------------------------------------\\
              TRY
                SQLCupomNumerarioOrig.Open ;
              EXCEPT
                on E: Exception do
                begin
                  AbriuBancos := false ;
                  MemoProblemas.Lines.Add('- Problemas ao tentar abrir a tabela de NUMERARIOS DO CUPOM no terminal ' + SQLTerminalTERMA60DESCR.Value + 'ERRO INTERNO [ ' + E.Message + ' ]') ;
                  MemoProblemas.Lines.Add('') ;
                  GravaArqTexto('- Problemas ao tentar abrir a tabela de NUMERARIOS DO CUPOM no terminal ' + SQLTerminalTERMA60DESCR.Value + 'ERRO INTERNO [ ' + E.Message + ' ]',
                                'ImportacaoTerminais.txt',
                                'EDITAR') ;
                  Informa('Problemas ao tentar abrir a tabela de NUMERARIOS DO CUPOM.') ;
                end ;
              END ;
              //------------------------------------\\
              TRY
                SQLTotalizadorDiarioOrig.Close ;
                SQLTotalizadorDiarioOrig.MacroByName('MFiltro').Value := 'TODIDMOV = "' + FormatDateTime('mm/dd/yyyy', DtBaseImp.Date)+ '"';
                SQLTotalizadorDiarioOrig.Open ;
              EXCEPT
                on E: Exception do
                begin
                  AbriuBancos := false ;
                  MemoProblemas.Lines.Add('- Problemas ao tentar abrir a tabela de TOTALIZADORES DE CAIXA no terminal ' + SQLTerminalTERMA60DESCR.Value + ' ERRO [ ' + E.Message + ' ]') ;
                  MemoProblemas.Lines.Add('') ;
                  GravaArqTexto('- Problemas ao tentar abrir a tabela de TOTALIZADORES DE CAIXA no terminal ' + SQLTerminalTERMA60DESCR.Value + ' ERRO [ ' + E.Message + ' ]',
                                'ImportacaoTerminais.txt',
                                'EDITAR') ;
                  Informa('Problemas ao tentar abrir a tabela de TOTALIZADORES DE CAIXA.') ;
                end ;
              END ;
              //------------------------------------\\
              TRY
                SQLMovimentoCaixaOrig.Close ;
                SQLMovimentoCaixaOrig.MacroByName('MFiltro').Value := 'MVCXDMOV = "' + FormatDateTime('mm/dd/yyyy', DtBaseImp.Date)+ '"';
                SQLMovimentoCaixaOrig.Open ;
              EXCEPT
                on E: Exception do
                begin
                  AbriuBancos := false ;
                  MemoProblemas.Lines.Add('- Problemas ao tentar abrir a tabela de MOVIMENTAÇÃO DO CAIXA no terminal ' + SQLTerminalTERMA60DESCR.Value + ' ERRO INTERNO [ ' + E.Message + ' ]') ;
                  MemoProblemas.Lines.Add('') ;
                  GravaArqTexto('- Problemas ao tentar abrir a tabela de MOVIMENTAÇÃO DO CAIXA no terminal ' + SQLTerminalTERMA60DESCR.Value + ' ERRO INTERNO [ ' + E.Message + ' ]',
                                'ImportacaoTerminais.txt',
                                'EDITAR') ;
                  Informa('Problemas ao tentar abrir a tabela de MOVIMENTAÇÃO DO CAIXA.') ;
                end ;
              END ;

              if AbriuBancos then
                begin
                  AtualizaTempoDecorrido ;

                  //************ IMPORTANDO CUPOM ************\\
                  LabelInfo.Caption := 'Contando registros da tabela de CUPOM...' ;
                  LabelInfo.Refresh ;
                  SQLGeral.Close ;
                  SQLGeral.SQL.Clear ;
                  SQLGeral.SQL.Add('select count(*) as NumReg from CUPOM where CUPODEMIS = "' + FormatDateTime('mm/dd/yyyy', DtBaseImp.Date)+ '"') ;
                  SQLGeral.Open ;
                  if SQLGeral.FieldByName('NumReg').AsString <> '' then
                    ProgressBarTabelas.Max := SQLGeral.FieldByName('NumReg').Value ;
                  ProgressBarTabelas.Position := 0 ;

                  EditContTotRegistros.Text := IntToStr(ProgressBarTabelas.Max) ;
                  EditContTotRegistros.Refresh ;

                  AtualizaTempoDecorrido ;

                  EditTabela.Text := 'CUPOM' ;
                  EditTabela.Refresh ;
                  SQLCupomOrig.First ;
                  //PEGAR CODIGO DO PROXIMO CUPOM
                  DM.SQLTemplate.Close ;
                  DM.SQLTemplate.SQL.Clear ;
                  DM.SQLTemplate.SQL.Add('select max(CUPOICOD) as Contador from CUPOM') ;
                  DM.SQLTemplate.SQL.Add('where  EMPRICOD = ' + EmpresaPadrao) ;
                  DM.SQLTemplate.SQL.Add('and    TERMICOD = ' + SQLTerminalTERMICOD.AsString) ;
                  DM.SQLTemplate.Open ;
                  if DM.SQLTemplate.FieldByName('Contador').Value <> Null then
                    CodProx := DM.SQLTemplate.FieldByName('Contador').AsFloat + 1
                  else
                    CodProx := 1 ;

                  AtualizaTempoDecorrido ;

                  while not SQLCupomOrig.EOF do
                    begin
                      LabelInfo.Caption := 'Importando dados CUPOM...' ;
                      LabelInfo.Refresh ;
                      //PROCURAR SE CUPOM JA ESTA INCLUIDO
                      SQLCupomDest.Close ;
                      SQLCupomDest.MacroByName('MFiltro').Value := 'CUPODEMIS = "' + FormatDateTime('mm/dd/yyyy', SQLCupomOrig.FieldByName('CUPODEMIS').Value)  +
                                                                   '" and CUPOA13ID = "' +SQLCupomOrig.FieldByName('CUPOA13ID').Value + '"' ;
                      SQLCupomDest.Open ;
                      if SQLCupomDest.Eof then
                        begin
                          //MONTAR ID DO CUPOM
                          IDMontado := FormatFloat('000', SQLCupomOrig.FieldByName('EMPRICOD').AsFloat) +
                                       FormatFloat('000', SQLCupomOrig.FieldByName('TERMICOD').AsFloat) +
                                       FormatFloat('000000', CodProx) ;
                          IDMontado := IDMontado + DigitVerifEAN(IDMontado) ;

                          AtualizaTempoDecorrido ;

                          //GRAVAR DADOS DO CUPOM
                          SQLCupomDest.Append ;
                          SQLCupomDest.FieldByName('CUPOA13ID').Value := IDMontado ;
                          SQLCupomDest.FieldByName('CUPOICOD').Value  := CodProx ;
                          for i := 0 to SQLCupomOrig.FieldCount-1 do
                            begin
                              NomeCampo := SQLCupomOrig.Fields[i].FieldName ;
                              if (NomeCampo <> 'CUPOA13ID') and
                                 (NomeCampo <> 'CUPOA20CODANT') and
                                 (NomeCampo <> 'CUPOICOD') then
                                begin
                                  if SQLCupomOrig.Fields[i].AsString <> '' then
                                    SQLCupomDest.FieldByName(NomeCampo).AsVariant := SQLCupomOrig.Fields[i].AsVariant ;
                                  AtualizaTempoDecorrido ;
                                end ;

                              if (NomeCampo = 'CUPOA20CODANT') then
                                SQLCupomDest.FieldByName('CUPOA20CODANT').AsVariant := SQLCupomOrig.FieldByName('CUPOA13ID').AsVariant ;
                            end ;
                          SQLCupomDest.Post ;
                          Inc(NumRegCup) ;
                          //GRAVAR DADOS DOS ITENS DO CUPOM
                          LabelInfo.Caption := 'Importando dados ITENS DO CUPOM...' ;
                          LabelInfo.Refresh ;
                          SQLCupomItemOrig.First ;
                          while not SQLCupomItemOrig.EOF do
                            begin
                              SQLCupomItemDest.Append ;
                              SQLCupomItemDest.FieldByName('CUPOA13ID').Value := IDMontado ;
                              for i := 0 to SQLCupomItemOrig.FieldCount-1 do
                                begin
                                  NomeCampo := SQLCupomItemOrig.Fields[i].FieldName ;
                                  if (NomeCampo <> 'CUPOA13ID') then
                                    begin
                                      if SQLCupomItemOrig.Fields[i].AsString <> '' then
                                        SQLCupomItemDest.FieldByName(NomeCampo).AsVariant := SQLCupomItemOrig.Fields[i].AsVariant ;
                                      AtualizaTempoDecorrido ;
                                    end ;
                                end ;
                              SQLCupomItemDest.Post ;
                              Inc(NumRegCupIt) ;

                              SQLCupomItemOrig.Next ;
                            end ;
                          //GRAVAR DADOS DOS NUMERARIOS DO CUPOM
                          LabelInfo.Caption := 'Importando dados NUMERÁRIOS DO CUPOM...' ;
                          LabelInfo.Refresh ;
                          SQLCupomNumerarioOrig.First ;
                          while not SQLCupomNumerarioOrig.EOF do
                            begin
                              SQLCupomNumerarioDest.Append ;
                              SQLCupomNumerarioDest.FieldByName('CUPOA13ID').Value := IDMontado ;
                              for i := 0 to SQLCupomNumerarioOrig.FieldCount-1 do
                                begin
                                  NomeCampo := SQLCupomNumerarioOrig.Fields[i].FieldName ;
                                  if (NomeCampo <> 'CUPOA13ID') then
                                    begin
                                      if SQLCupomNumerarioOrig.Fields[i].AsString <> '' then
                                        SQLCupomNumerarioDest.FieldByName(NomeCampo).AsVariant := SQLCupomNumerarioOrig.Fields[i].AsVariant ;
                                      AtualizaTempoDecorrido ;
                                    end ;
                                end ;
                              SQLCupomNumerarioDest.Post ;
                              Inc(NumRegCupNum) ;

                              SQLCupomNumerarioOrig.Next ;
                            end ;
                        end ;

                      SQLCupomOrig.Next ;

                      ProgressBarTabelas.Position := ProgressBarTabelas.Position + 1 ;
                      CodProx := CodProx + 1 ;
                    end ;
                  ProgressBarTabelas.Position := 0 ;
                  //Alterando variavel PENDENTE para "N" tabela CUPOMITEM
                  AtualizaTempoDecorrido ;

                  //************ IMPORTANDO TOTADORDIARIOCAIXA ************\\
                  LabelInfo.Caption := 'Contando registros da tabela de TOTALIZADOR DIÁRIO CAIXA...' ;
                  LabelInfo.Refresh ;
                  SQLGeral.Close ;
                  SQLGeral.SQL.Clear ;
                  SQLGeral.SQL.Add('select count(*) as NumReg from TOTALIZADORDIARIOCAIXA where TODIDMOV = "' + FormatDateTime('mm/dd/yyyy', DtBaseImp.Date)+ '"') ;
                  SQLGeral.Open ;
                  if SQLGeral.FieldByName('NumReg').AsString <> '' then
                    ProgressBarTabelas.Max := SQLGeral.FieldByName('NumReg').Value ;
                  ProgressBarTabelas.Position := 0 ;

                  EditContTotRegistros.Text := IntToStr(ProgressBarTabelas.Max) ;
                  EditContTotRegistros.Refresh ;

                  AtualizaTempoDecorrido ;

                  EditTabela.Text := 'TOTALIZADOR DIÁRIO CAIXA' ;
                  EditTabela.Refresh ;
                  SQLTotalizadorDiarioOrig.First ;
                  LabelInfo.Caption := 'Importando dados TOTALIZADOR DIÁRIO CAIXA...' ;
                  LabelInfo.Refresh ;
                  while not SQLTotalizadorDiarioOrig.EOF do
                    begin
                      AtualizaTempoDecorrido ;
                      //GRAVAR DADOS DO TOTALIZADOR DIÁRIO CAIXA

                      SQLTotalizadorDiarioDest.Close ;
                      SQLTotalizadorDiarioDest.MacroByName('MFiltro').Value := 'EMPRICOD = ' + SQLTotalizadorDiarioOrig.FieldByName('EMPRICOD').AsString + ' and ' +
                                                                               'TERMICOD = ' + SQLTotalizadorDiarioOrig.FieldByName('TERMICOD').AsString + ' and ' +
                                                                               'TODIDMOV = "'+ FormatDateTime('mm/dd/yyyy', SQLTotalizadorDiarioOrig.FieldByName('TODIDMOV').Value) + '" and ' +
                                                                               'USUAICOD = ' + SQLTotalizadorDiarioOrig.FieldByName('USUAICOD').AsString + ' and ' +
                                                                               'TOTAICOD = ' + SQLTotalizadorDiarioOrig.FieldByName('TOTAICOD').AsString ;
                      SQLTotalizadorDiarioDest.Open ;
                      if SQLTotalizadorDiarioDest.Eof then
                        begin
                          SQLTotalizadorDiarioDest.Append ;
                          for i := 0 to SQLTotalizadorDiarioOrig.FieldCount-1 do
                            begin
                              PontoImp := 'Totalizadores de Caixa' ;

                              NomeCampo := SQLTotalizadorDiarioOrig.Fields[i].FieldName ;
                              if SQLTotalizadorDiarioOrig.Fields[i].AsString <> '' then
                                SQLTotalizadorDiarioDest.FieldByName(NomeCampo).AsString := SQLTotalizadorDiarioOrig.Fields[i].AsString ;
                              AtualizaTempoDecorrido ;
                            end ;
                          SQLTotalizadorDiarioDest.Post ;
                          Inc(NumRegTotDiaCx) ;
                        end ;

                      SQLTotalizadorDiarioOrig.Next ;
                      ProgressBarTabelas.Position := ProgressBarTabelas.Position + 1 ;
                    end ;
                  ProgressBarTabelas.Position := 0 ;

                  //************ IMPORTANDO MOVIMENTO CAIXA ************\\
                  LabelInfo.Caption := 'Contando registros da tabela de MOVIMENTO DO CAIXA...' ;
                  LabelInfo.Refresh ;
                  SQLGeral.Close ;
                  SQLGeral.SQL.Clear ;
                  SQLGeral.SQL.Add('select count(*) as NumReg from MOVIMENTOCAIXA where MVCXDMOV = "' + FormatDateTime('mm/dd/yyyy', DtBaseImp.Date)+ '"') ;
                  SQLGeral.Open ;
                  if SQLGeral.FieldByName('NumReg').AsString <> '' then
                    ProgressBarTabelas.Max := SQLGeral.FieldByName('NumReg').Value ;
                  ProgressBarTabelas.Position := 0 ;

                  EditContTotRegistros.Text := IntToStr(ProgressBarTabelas.Max) ;
                  EditContTotRegistros.Refresh ;

                  AtualizaTempoDecorrido ;

                  EditTabela.Text := 'MOVIMENTO DO CAIXA' ;
                  EditTabela.Refresh ;
                  SQLMovimentoCaixaOrig.First ;
                  LabelInfo.Caption := 'Importando dados MOVIMENTO DO CAIXA...' ;
                  LabelInfo.Refresh ;
                  while not SQLMovimentoCaixaOrig.EOF do
                    begin
                      AtualizaTempoDecorrido ;
                      //GRAVAR DADOS DO TOTALIZADOR DIÁRIO CAIXA
                      SQLMovimentoCaixaDest.Close ;
                      SQLMovimentoCaixaDest.MacroByName('MFiltro').Value := 'EMPRICOD = ' + SQLMovimentoCaixaOrig.FieldByName('EMPRICOD').AsString + ' and ' +
                                                                            'TERMICOD = ' + SQLMovimentoCaixaOrig.FieldByName('TERMICOD').AsString + ' and ' +
                                                                            'MVCXDMOV = "'+ FormatDateTime('mm/dd/yyyy', SQLMovimentoCaixaOrig.FieldByName('MVCXDMOV').Value) + '" and ' +
                                                                            'MVCXICOD = ' + SQLMovimentoCaixaOrig.FieldByName('MVCXICOD').AsString ;
                      SQLMovimentoCaixaDest.Open ;
                      if SQLMovimentoCaixaDest.Eof then
                        begin
                          SQLMovimentoCaixaDest.Append ;
                          for i := 0 to SQLMovimentoCaixaOrig.FieldCount-1 do
                            begin
                              NomeCampo := SQLMovimentoCaixaOrig.Fields[i].FieldName ;
                              if SQLMovimentoCaixaOrig.Fields[i].AsString <> '' then
                                SQLMovimentoCaixaDest.FieldByName(NomeCampo).AsVariant := SQLMovimentoCaixaOrig.Fields[i].AsVariant ;
                              AtualizaTempoDecorrido ;
                            end ;
                          SQLMovimentoCaixaDest.Post ;
                          Inc(NumRegMovCx) ;
                        end ;

                      SQLMovimentoCaixaOrig.Next ;
                      ProgressBarTabelas.Position := ProgressBarTabelas.Position + 1 ;
                    end ;
                end ;
              ProgressBarTabelas.Position := 0 ;
            end ;

          MemoDados.Lines.Add('TERMINAL ' + SQLTerminalTERMA60DESCR.Value) ;
          MemoDados.Lines.Add(Format('%6s', [IntToSTr(NumRegCup)])      + ' importados da tabela de Cupons') ;
          MemoDados.Lines.Add(Format('%6s', [IntToSTr(NumRegCupIt)])    + ' importados da tabela de Itens') ;
          MemoDados.Lines.Add(Format('%6s', [IntToSTr(NumRegCupNum)])   + ' importados da tabela de Numerários') ;
          MemoDados.Lines.Add(Format('%6s', [IntToSTr(NumRegTotDiaCx)]) + ' importados da tabela de Totais de Caixa') ;
          MemoDados.Lines.Add(Format('%6s', [IntToSTr(NumRegMovCx)])    + ' importados da tabela de Movimentos de Caixa') ;
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
        LabelInfo.Caption := 'Importação finalizada com sucesso!' ;
        LabelInfo.Refresh ;
      end
    else
      begin
        LabelInfo.Caption := 'Houveram problemas na importação!' ;
        LabelInfo.Refresh ;
      end ;
  EXCEPT
    on E: Exception do
    begin
      LabelInfo.Caption := 'Importação cancelada..' ;
      LabelInfo.Refresh ;

      if DatabaseImp.InTransaction then
        DatabaseImp.Rollback ;
      if DM.DB.InTransaction then
        DM.DB.Rollback ;

      Informa('Problemas ao importar dados:' + PontoImp + #13 + E.Message) ;
    end ;
  END ;
end ;

procedure TFormTelaImportarMovimentacaoTerminal.AtualizaTempoDecorrido ;
begin
  EditTempoDecorrido.Text := FormatDateTime('hh:nn:ss', Now - Inicio);
  EditTempoDecorrido.Update ;
end ;

procedure TFormTelaImportarMovimentacaoTerminal.FormCreate(
  Sender: TObject);
begin
  inherited;
  DtBaseImp.Date := Date ;
end;

end.

Problemas ao tentar abrir a tabela de MOVIMENTAÇÃO DO CAIXA no terminal PDV 03
General SQL error.
database file appears corrupt ()
wrong page type
page 1301 is of wrong type (expected 5, found -123)
Problemas ao tentar abrir a tabela de MOVIMENTAÇÃO DO CAIXA no terminal PDV 04General SQL error.
database file appears corrupt ()
wrong page type
page 1301 is of wrong type (expected 5, found -123)
Não importou terminal PDV 05
Não importou terminal PDV 06
Não importou terminal PDV 07
Não importou terminal PDV 08

