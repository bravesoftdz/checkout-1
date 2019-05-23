unit TelaExportarClientePDV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  ComCtrls, DB, DBTables, RxQuery, Mask, ToolEdit, CurrEdit;

type
  TFormTelaExportarClientePDV = class(TFormTelaGeralTEMPLATE)
    PanelImp: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    BtnIniciar: TSpeedButton;
    Label2: TLabel;
    EditHoraInicio: TEdit;
    EditTempoDecorrido: TEdit;
    EditHoraTermino: TEdit;
    EditContTotRegistros: TCurrencyEdit;
    Panel4: TPanel;
    LabelInfo: TLabel;
    ProgressBarTabelas: TProgressBar;
    GroupBox1: TGroupBox;
    MemoProblemas: TMemo;
    EditTerminal: TEdit;
    GroupBox2: TGroupBox;
    MemoDados: TMemo;
    SQLClienteOrig: TRxQuery;
    DatabaseImp: TDatabase;
    SQLTerminal: TRxQuery;
    SQLTerminalTERMICOD: TIntegerField;
    SQLTerminalEMPRICOD: TIntegerField;
    SQLTerminalTERMA60DESCR: TStringField;
    SQLTerminalTERMA254PATHTERM: TStringField;
    SQLClienteDest: TRxQuery;
    ExpProdAlter: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure BtnIniciarClick(Sender: TObject);
    procedure ExpProdAlterClick(Sender: TObject);
  private
    { Private declarations }
    Inicio : TDatetime ;
    procedure AtualizaTempoDecorrido ;
  public
    { Public declarations }
  end;

var
  FormTelaExportarClientePDV: TFormTelaExportarClientePDV;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormTelaExportarClientePDV.FormCreate(Sender: TObject);
begin
  inherited;
  EditContTotRegistros.text := IntToStr(SQLRecCount('CLIENTE', 'where PENDENTE = "S"')) ;
end;

procedure TFormTelaExportarClientePDV.BtnIniciarClick(Sender: TObject);
var
  Entra,
  IniImp          : boolean ;
  CodProx         : double ;
  MumProdAtualiz,
  i               : integer ;
  PontoImp,
  NomeCampo       : string ;
begin
  inherited;
  if not (EditContTotRegistros.Value > 0) then
  begin
    Informa('Não há modificações pendentes de clientes!') ;
    exit ;
  end ;

  TRY
    DM.DB.StartTransaction ;

    MemoDados.Lines.Clear ;
    MemoProblemas.Lines.Clear ;
    PontoImp       := '' ;

    Inicio := Now ;
    EditHoraInicio.Text := FormatDateTime('hh:mm:ss', Inicio) ;
    EditHoraInicio.Refresh ;

    if ExpProdAlter.Checked then
      begin
        SQLClienteOrig.Close ;
        SQLClienteOrig.MacroByName('MFiltro').Value := 'PENDENTE = "S"' ;
      end ;

    SQLClienteOrig.Open ;
    SQLTerminal.Open ;
    SQLTerminal.First ;

    while not SQLTerminal.EOF do
      begin
        EditTerminal.Text := SQLTerminalTERMA60DESCR.Value ;
        EditTerminal.Refresh ;

        AtualizaTempoDecorrido ;

        IniImp := false ;
        TRY
          LabelInfo.Caption := 'Conectando no terminal ' + SQLTerminalTERMA60DESCR.Value + '...' ;
          LabelInfo.Refresh ;
          DatabaseImp.Connected := false ;
          AlterarPathAlias('UNITGESTAO_IMPORTA_TERM', SQLTerminalTERMA254PATHTERM.Value);
          DatabaseImp.Connected := true ;
          IniImp := true ;
        EXCEPT
          DatabaseImp.Connected := false ;
          MemoProblemas.Lines.Add('Não exportou p/terminal ' + SQLTerminalTERMA60DESCR.Value)
        END ;

        AtualizaTempoDecorrido ;

        if IniImp then
          begin
            if not DatabaseImp.InTransaction then
              DatabaseImp.StartTransaction ;

            LabelInfo.Caption := 'Abrindo tabelas...' ;
            LabelInfo.Refresh ;

            SQLClienteDest.Open ;

            AtualizaTempoDecorrido ;

            if EditContTotRegistros.Value > 0 then
              ProgressBarTabelas.Max := StrToInt(EditContTotRegistros.Text) ;
            ProgressBarTabelas.Position := 0 ;

            MumProdAtualiz := 0 ;
            AtualizaTempoDecorrido ;

            SQLClienteOrig.First ;
            while not SQLClienteOrig.EOF do
              begin
                LabelInfo.Caption := 'Exportando CLIENTES...' ;
                LabelInfo.Refresh ;

                AtualizaTempoDecorrido ;

                SQLClienteDest.Close ;
                SQLClienteDest.MacroByName('MFiltro').Value := 'CLIEA13ID = "' +
                                                               SQLClienteOrig.FieldByName('CLIEA13ID').AsString + '"' ;
                SQLClienteDest.Open ;
                Entra := true ;

                if (not SQLClienteDest.Eof) and (not ExpProdAlter.Checked) then
                  begin
                    //SE FOR EXPORTAR TODOS OS CLIENTES ENTÃO O SISTEMA IRÁ TESTAR
                    //A DATA ULT.ATUALIZA, SE FOR DIFERENTE DO CAMPO REGISTRO SÓ AÍ
                    //ELE VAI ATUALIZAR, ISTO PARA AGILIZAR POIS ELE NÃO VAI EDITAR
                    //TODOS OS REGISTROS
                    if (SQLClienteOrig.FieldByName('REGISTRO').AsString <> '') then
                      if SQLClienteDest.FieldByName('REGISTRO').AsVariant = SQLClienteOrig.FieldByName('REGISTRO').AsVariant then
                        Entra := false
                  end ;

                if Entra then
                  begin
                    if SQLClienteDest.Eof then
                      begin
                        SQLClienteDest.Append ;
                        SQLClienteDest.FieldByName('CLIEA13ID').Value := SQLClienteOrig.FieldByName('CLIEA13ID').Value ;
                      end
                    else
                      SQLClienteDest.Edit ;

                    for i := 0 to SQLClienteOrig.FieldCount-1 do
                      begin
                        NomeCampo := SQLClienteOrig.Fields[i].FieldName ;
                        if (NomeCampo <> 'CLIEA13ID') then
                          begin
                            if SQLClienteOrig.Fields[i].AsString <> '' then
                              SQLClienteDest.FieldByName(NomeCampo).AsVariant := SQLClienteOrig.Fields[i].AsVariant ;

                            AtualizaTempoDecorrido ;
                          end ;
                      end ;
                    SQLClienteDest.Post ;

                    Inc(MumProdAtualiz) ;
                  end ;
                SQLClienteOrig.Next ;
                ProgressBarTabelas.Position := ProgressBarTabelas.Position + 1 ;
                CodProx := CodProx + 1 ;
              end ;

            MemoDados.Lines.Add(IntToStr(MumProdAtualiz) + ' cliente(s) atualizado(s) no terminal ' + SQLTerminalTERMA60DESCR.Value) ;
          end ;
        ProgressBarTabelas.Position := 0 ;

        if DatabaseImp.InTransaction then
          DatabaseImp.Commit ;

        SQLTerminal.Next ;
      end ;

    AtualizaTempoDecorrido ;
    EditHoraTermino.Text := FormatDateTime('hh:mm:ss', Now) ;
    EditHoraTermino.Refresh ;
    //SETAR TABELA ORIGEM PENDENTE PARA "N"
    //if IniImp then
    //  begin
        DM.SQLTemplate.Close ;
        DM.SQLTemplate.SQL.Clear ;
        DM.SQLTemplate.SQL.Add('update CLIENTE') ;
        DM.SQLTemplate.SQL.Add('set    PENDENTE = "N"') ;
        DM.SQLTemplate.SQL.Add('where  PENDENTE = "S"') ;
        DM.SQLTemplate.ExecSQL ;
    //  end ;

    if DM.DB.InTransaction then
      DM.DB.Commit ;

    if MemoProblemas.Lines.Count = 0 then
      begin
        LabelInfo.Caption := 'Exportação finalizada com sucesso!' ;
        LabelInfo.Refresh ;
      end
    else
      begin
        LabelInfo.Caption := 'Houveram problemas na exportação!' ;
        LabelInfo.Refresh ;
      end ;
  EXCEPT
    on E: Exception do
    begin
      LabelInfo.Caption := 'Exportação cancelada..' ;
      LabelInfo.Refresh ;

      if DatabaseImp.InTransaction then
        DatabaseImp.Rollback ;
      if DM.DB.InTransaction then
        DM.DB.Rollback ;

      Informa('Problemas ao exportar dados:' + PontoImp + #13 + E.Message) ;
    end ;
  END ;
end ;

procedure TFormTelaExportarClientePDV.AtualizaTempoDecorrido ;
begin
  EditTempoDecorrido.Text := FormatDateTime('hh:nn:ss', Now - Inicio);
  EditTempoDecorrido.Update ;
end ;


procedure TFormTelaExportarClientePDV.ExpProdAlterClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass ;
  if ExpProdAlter.Checked then
    EditContTotRegistros.text := IntToStr(SQLRecCount('CLIENTE', 'where PENDENTE = "S"'))
  else
    EditContTotRegistros.text := IntToStr(SQLRecCount('CLIENTE', '')) ;
  Screen.Cursor := crDefault ;
end;

end.
