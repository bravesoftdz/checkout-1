unit RelatorioContasPagarPAGAS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, OleCtrls,
  UCrpe32;

type
  TFormRelatorioContasPagarPAGAS = class(TFormRelatorioTEMPLATE)
    SQLPagamento: TRxQuery;
    SQLFornecedor: TRxQuery;
    DSSQLFornecedor: TDataSource;
    GroupBox2: TGroupBox;
    ComboFornecedor: TRxDBLookupCombo;
    SQLPagamentoCTPGA13ID: TStringField;
    SQLPagamentoPAGAN3VLRJURO: TBCDField;
    SQLPagamentoPAGAN3VLRMULTA: TBCDField;
    SQLPagamentoPAGAN3VLRDESC: TBCDField;
    SQLPagamentoPAGADPAGTO: TDateTimeField;
    SQLPagamentoEMPRICOD: TIntegerField;
    SQLPagamentoCTPGDVENC: TDateTimeField;
    SQLPagamentoCTPGA20DOCORIG: TStringField;
    SQLPagamentoCTPGINROPARC: TIntegerField;
    SQLPagamentoCTPGN3VLR: TBCDField;
    SQLPagamentoPORTICOD: TIntegerField;
    SQLPagamentoFORNA60NOMEFANT: TStringField;
    SQLPagamentoTPDCA60DESCR: TStringField;
    SQLPagamentoPORTA60DESCR: TStringField;
    TblTemporariaCTPGA13ID: TStringField;
    TblTemporariaPAGAN3VLRJURO: TBCDField;
    TblTemporariaPAGAN3VLRMULTA: TBCDField;
    TblTemporariaPAGAN3VLRDESC: TBCDField;
    TblTemporariaPAGADPAGTO: TDateTimeField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaCTPGDVENC: TDateTimeField;
    TblTemporariaCTPGA20DOCORIG: TStringField;
    TblTemporariaCTPGINROPARC: TIntegerField;
    TblTemporariaCTPGN3VLR: TBCDField;
    TblTemporariaPORTICOD: TIntegerField;
    TblTemporariaFORNA60NOMEFANT: TStringField;
    TblTemporariaTPDCA60DESCR: TStringField;
    TblTemporariaPORTA60DESCR: TStringField;
    Report: TCrpe;
    SQLTipoDoc: TRxQuery;
    SQLTipoDocTPDCICOD: TIntegerField;
    SQLTipoDocTPDCA60DESCR: TStringField;
    DSSQLTipoDoc: TDataSource;
    SQLPortador: TRxQuery;
    SQLPortadorPORTICOD: TIntegerField;
    SQLPortadorPORTA60DESCR: TStringField;
    DSSQLPortador: TDataSource;
    GroupBox3: TGroupBox;
    ComboTipoDoc: TRxDBLookupCombo;
    GroupBox4: TGroupBox;
    ComboPortador: TRxDBLookupCombo;
    SQLPagamentoPAGAN3VLRPAGTO: TFloatField;
    TblTemporariaPAGAN3VLRPAGTO: TFloatField;
    SQLPlanoContas: TRxQuery;
    SQLPlanoContasPLCTA15COD: TStringField;
    SQLPlanoContasPLCTA60DESCR: TStringField;
    DSSQLPlanoContas: TDataSource;
    GroupBox5: TGroupBox;
    ComboConta: TRxDBLookupCombo;
    procedure FormCreate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
    procedure ComboFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioContasPagarPAGAS: TFormRelatorioContasPagarPAGAS;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioContasPagarPAGAS.FormCreate(Sender: TObject);
begin
  inherited;
  SQLFornecedor.Open ;
  SQLTipoDoc.Open;
  SQLPortador.Open;
  SQLPlanoContas.Open;
end;

procedure TFormRelatorioContasPagarPAGAS.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLPagamento.Close ;
  SQLPagamento.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CONTASPAGAR', '') ;
  SQLPagamento.MacrobyName('MData').Value    := 'PAGAMENTO.PAGADPAGTO >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                'PAGAMENTO.PAGADPAGTO <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
  if ComboFornecedor.Text <> '' then
    SQLPagamento.MacrobyName('MFornecedor').Value := 'CONTASPAGAR.FORNICOD = ' + ComboFornecedor.Value
  else
    SQLPagamento.MacrobyName('MFornecedor').Value := '0=0';
  if ComboTipoDoc.Value <> '' then
    SQLPagamento.MacrobyName('MTipoDoc').Value  := 'CONTASPAGAR.TPDCICOD = ' + ComboTipoDoc.Value
  else
    SQLPagamento.MacrobyName('MTipoDoc').Value  := '0=0';

  if ComboPortador.Value <> '' then
    SQLPagamento.MacrobyName('MPortador').Value := 'CONTASPAGAR.PORTICOD = ' + ComboPortador.Value
  else
    SQLPagamento.MacrobyName('MPortador').Value := '0=0';

  if ComboConta.Value <> '' then
    SQLPagamento.MacrobyName('MConta').Value := 'CONTASPAGAR.PLCTA15COD = "'+ ComboConta.Value + '"'
  else
    SQLPagamento.MacrobyName('MConta').Value := '0=0';

  // ShowMessage(SQLPagamento.RealSQL.Text);
  SQLPagamento.Open ;

  BatchExec(SQLPagamento, TblTemporaria) ;

  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Contas PAGAS.rpt' ;
  Report.ReportTitle       := 'Relat�rio de Contas PAGAS' ;
  Report.WindowStyle.Title := 'Relat�rio de Contas PAGAS' ;
  Report.Formulas.Retrieve ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa' ;
  Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' at� ' +
                                  FormatDateTime('dd/mm/yyyy', Ate.Date) + '"' ;
  Report.Execute ;
end;

procedure TFormRelatorioContasPagarPAGAS.ComboFornecedorKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

end.
