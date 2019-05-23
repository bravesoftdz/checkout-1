unit RelatorioCreditoDebitoPorCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, StdCtrls, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, UCrpe32, RxQuery;

type
  TFormRelatorioCreditoDebitoPorCliente = class(TFormRelatorioTEMPLATE)
    SQLContasReceber: TRxQuery;
    Report: TCrpe;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberCTRCDEMIS: TDateTimeField;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCLIEA60RAZAOSOC: TStringField;
    SQLContasReceberCTRCN2VLR: TBCDField;
    SQLContasReceberEMPRICODULTREC: TIntegerField;
    SQLContasReceberDTULTREC: TStringField;
    SQLContasReceberCTRCN2TOTREC: TBCDField;
    SQLContasReceberSALDO: TFloatField;
    SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField;
    SQLContasReceberPORTA60DESCR: TStringField;
    SQLContasReceberTPDCA60DESCR: TStringField;
    SQLCliente: TQuery;
    DSSQLCliente: TDataSource;
    GroupBox3: TGroupBox;
    ComboCliente: TRxDBLookupCombo;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaCTRCDEMIS: TDateTimeField;
    TblTemporariaCTRCA13ID: TStringField;
    TblTemporariaCTRCINROPARC: TIntegerField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    TblTemporariaCTRCN2VLR: TBCDField;
    TblTemporariaEMPRICODULTREC: TIntegerField;
    TblTemporariaDTULTREC: TStringField;
    TblTemporariaCTRCN2TOTREC: TBCDField;
    TblTemporariaSALDO: TFloatField;
    TblTemporariaCTRCA30NRODUPLICBANCO: TStringField;
    TblTemporariaPORTA60DESCR: TStringField;
    TblTemporariaTPDCA60DESCR: TStringField;
    RadioTipo: TRadioGroup;
    SQLContasReceberCTRCCTIPOREGISTRO: TStringField;
    TblTemporariaCTRCCTIPOREGISTRO: TStringField;
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
  FormRelatorioCreditoDebitoPorCliente: TFormRelatorioCreditoDebitoPorCliente;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioCreditoDebitoPorCliente.ExecutarBtnClick(
  Sender: TObject);
begin
  inherited;
  SQLContasReceber.Close ;
  SQLContasReceber.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CONTASRECEBER', '') ;
  SQLContasReceber.MacrobyName('MData').Value    := 'CONTASRECEBER.CTRCDEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                    'CONTASRECEBER.CTRCDEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;

  if ComboCliente.Text <> '' then
    SQLContasReceber.MacrobyName('MCliente').Value := 'CONTASRECEBER.CLIEA13ID = ' + '"' + ComboCliente.KeyValue + '"'
  else
    SQLContasReceber.MacrobyName('MCliente').Value := '0=0';

  case RadioTipo.ItemIndex of
    0 : SQLContasReceber.MacrobyName('MTipo').Value := 'CONTASRECEBER.CTRCCTIPOREGISTRO = "C"';
    1 : SQLContasReceber.MacrobyName('MTipo').Value := 'CONTASRECEBER.CTRCCTIPOREGISTRO = "D"';
    2 : SQLContasReceber.MacrobyName('MTipo').Value := '0=0';
  end;

  SQLContasReceber.Open;

  BatchExec(SQLContasReceber, TblTemporaria);

  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Creditos Debitos Por Cliente.rpt';
  Report.ReportTitle       := 'Relatório de Créditos / Débitos Por Cliente';
  Report.WindowStyle.Title := 'Relatório de Créditos / Débitos Por Cliente';
  Report.Formulas.Retrieve ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                        FormatDateTime('dd/mm/yyyy', Ate.Date) + '"' ;
  //--------------------------------------------------------------------------\\
  if ComboCliente.Value <> '' then
    begin
      Report.Formulas.Name         := 'Cliente' ;
      Report.Formulas.Formula.Text := '"' + ComboCliente.DisplayValue + '"' ;
    end;
  //--------------------------------------------------------------------------\\
  
  Report.Execute ;

end;

procedure TFormRelatorioCreditoDebitoPorCliente.FormCreate(Sender: TObject);
begin
  inherited;
  SQLCliente.Open;
end;

procedure TFormRelatorioCreditoDebitoPorCliente.ComboClienteKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '') or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

end.
