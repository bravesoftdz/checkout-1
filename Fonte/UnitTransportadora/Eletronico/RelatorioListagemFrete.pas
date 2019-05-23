unit RelatorioListagemFrete;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, UCrpe32,
  DBCtrls;

type
  TFormRelatorioListagemFrete = class(TFormRelatorioTEMPLATE)
    SQLFuncionario: TQuery;
    DSSQLFuncionario: TDataSource;
    GroupMotora: TGroupBox;
    ComboMotora: TRxDBLookupCombo;
    SQLFrete: TRxQuery;
    SQLFreteREGISTRO: TDateTimeField;
    SQLFreteFRETN3QTDETOTAL: TBCDField;
    SQLFreteFRETN2VLRTOTAL: TBCDField;
    SQLFretePRODICOD: TIntegerField;
    SQLFretePRODA60DESCR: TStringField;
    SQLFreteREMETENTE: TStringField;
    SQLFreteDESTINATARIO: TStringField;
    TblTemporariaREGISTRO: TDateTimeField;
    TblTemporariaFRETN3QTDETOTAL: TBCDField;
    TblTemporariaFRETN2VLRTOTAL: TBCDField;
    TblTemporariaREMETENTE: TStringField;
    TblTemporariaDESTINATARIO: TStringField;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPRODA60DESCR: TStringField;
    Report: TCrpe;
    GroupBox2: TGroupBox;
    ComboCliente: TRxDBLookupCombo;
    QueryCliente: TQuery;
    DSQueryCliente: TDataSource;
    GroupBox3: TGroupBox;
    ComboDestino: TRxDBLookupCombo;
    chkPeriodo: TCheckBox;
    cboStatus: TComboBox;
    Label5: TLabel;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioListagemFrete: TFormRelatorioListagemFrete;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioListagemFrete.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLFrete.Close;
  if chkPeriodo.Checked then
    SQLFrete.MacroByName('MData').Value := 'FRETE.REGISTRO >= "' + FormatDateTime('mm/dd/yyyy 00:00:00',De.Date) + '" AND '+
                                           'FRETE.REGISTRO <= "' + FormatDateTime('mm/dd/yyyy 23:59:00',Ate.Date) + '"';

  if ComboMotora.Value <> 'null' then
    SQLFrete.MacroByName('MMotorista').Value := 'FRETE.FUNCA13ID = "' + ComboMotora.Value + '"'
  else
    SQLFrete.MacroByName('MMotorista').Value := '0=0';

  if ComboCliente.Value <> 'null' then
    SQLFrete.MacroByName('MCliente').Value := 'FRETE.CLIEA13IDREMETE = "' + ComboCliente.Value + '"'
  else
    SQLFrete.MacroByName('MCliente').Value := '0=0';

  if ComboDestino.Value <> 'null' then
    SQLFrete.MacroByName('MDestino').Value := 'FRETE.CLIEA13IDDESTINO = "' + ComboDestino.Value + '"'
  else
    SQLFrete.MacroByName('MDestino').Value := '0=0';

  if cboStatus.Text[1] <> 'T' then
     SQLFrete.MacroByName('MFiltro').Value := 'FRETE.FRETCSTATUS = "' + cboStatus.Text[1] + '"';

  SQLFrete.Open;
//  ShowMessage(SQLFrete.RealSql.Text);
  BatchExec(SQLFrete,TblTemporaria);

  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Listagem de Fretes.rpt' ;

  Report.ReportTitle       := 'Listagem de Fretes.rpt' ;
  Report.WindowStyle.Title := 'Listagem de Fretes.rpt' ;
  //SETAR LEGENDA DE FILTROS NO RPT\\
  Report.Formulas.Retrieve;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
  //--------------------------------------------------------------------------\\

   Report.Formulas.Name         := 'PeriodoEmissao' ;
  if chkPeriodo.Checked then
     Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                    FormatDateTime('dd/mm/yyyy', Ate.Date) + '"'
  else
     Report.Formulas.Formula.Text := '"Tudo"';
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Funcionario' ;
  if ComboMotora.Text <> 'null' then
    Report.Formulas.Formula.Text := '"' + ComboMotora.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Cliente' ;
  if ComboCliente.Text <> 'null' then
    Report.Formulas.Formula.Text := '"' + ComboCliente.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;

  //--------------------------------------------------------------------------\\
  Report.Execute ;


end;

procedure TFormRelatorioListagemFrete.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLFuncionario.Active then SQLFuncionario.Open;
  if not QueryCliente.Active   then QueryCliente.Open; 
end;

procedure TFormRelatorioListagemFrete.ComboClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

end.
