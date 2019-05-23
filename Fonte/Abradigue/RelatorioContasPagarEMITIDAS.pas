unit RelatorioContasPagarEMITIDAS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, DBTables, Placemnt, DB, ComCtrls,
  StdCtrls, Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, UCrpe32;

type
  TFormRelatorioContasPagarEmitidas = class(TFormRelatorioTEMPLATE)
    SQLContasPagar: TRxQuery;
    SQLContasPagarCTPGA13ID: TStringField;
    SQLContasPagarCTPGDTEMIS: TDateTimeField;
    SQLContasPagarPAGAN3VLRPAGTO: TBCDField;
    SQLContasPagarCTPGDVENC: TDateTimeField;
    SQLContasPagarCTPGA20DOCORIG: TStringField;
    SQLContasPagarCTPGINROPARC: TIntegerField;
    SQLContasPagarCTPGN3VLR: TBCDField;
    SQLContasPagarFORNA60NOMEFANT: TStringField;
    SQLContasPagarTPDCA60DESCR: TStringField;
    TblTemporariaCTPGA13ID: TStringField;
    TblTemporariaCTPGDTEMIS: TDateTimeField;
    TblTemporariaPAGAN3VLRPAGTO: TBCDField;
    TblTemporariaCTPGDVENC: TDateTimeField;
    TblTemporariaCTPGA20DOCORIG: TStringField;
    TblTemporariaCTPGINROPARC: TIntegerField;
    TblTemporariaCTPGN3VLR: TBCDField;
    TblTemporariaFORNA60NOMEFANT: TStringField;
    TblTemporariaTPDCA60DESCR: TStringField;
    Report: TCrpe;
    SQLFornecedor: TRxQuery;
    DSSQLFornecedor: TDataSource;
    SQLTipoDoc: TRxQuery;
    SQLTipoDocTPDCICOD: TIntegerField;
    SQLTipoDocTPDCA60DESCR: TStringField;
    DSSQLTipoDoc: TDataSource;
    SQLPortador: TRxQuery;
    SQLPortadorPORTICOD: TIntegerField;
    SQLPortadorPORTA60DESCR: TStringField;
    DSSQLPortador: TDataSource;
    GroupBox2: TGroupBox;
    ComboFornecedor: TRxDBLookupCombo;
    GroupBox3: TGroupBox;
    ComboTipoDoc: TRxDBLookupCombo;
    GroupBox4: TGroupBox;
    ComboPortador: TRxDBLookupCombo;
    RadioEmissao: TRadioButton;
    RadioRecebto: TRadioButton;
    GroupBox5: TGroupBox;
    ComboConta: TRxDBLookupCombo;
    DSSQLPlanoContas: TDataSource;
    SQLPlanoContas: TRxQuery;
    SQLPlanoContasPLCTA15COD: TStringField;
    SQLPlanoContasPLCTA60DESCR: TStringField;
    SQLContasPagarPLCTA15COD: TStringField;
    TblTemporariaPLCTA15COD: TStringField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioContasPagarEmitidas: TFormRelatorioContasPagarEmitidas;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioContasPagarEmitidas.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLContasPagar.Close ;
  SQLContasPagar.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CONTASPAGAR', '') ;
  if RadioEmissao.Checked then
    SQLContasPagar.MacrobyName('MData').Value    := 'CONTASPAGAR.CTPGDTEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                    'CONTASPAGAR.CTPGDTEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
  if RadioRecebto.Checked then
    SQLContasPagar.MacrobyName('MData').Value    := 'CONTASPAGAR.CTPGDRECBTO >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                    'CONTASPAGAR.CTPGDRECBTO <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;

  if ComboFornecedor.Value <> '' then
    SQLContasPagar.MacrobyName('MFornecedor').Value := 'CONTASPAGAR.FORNICOD = ' + ComboFornecedor.Value
  else
    SQLContasPagar.MacrobyName('MFornecedor').Value := '0=0';

  if ComboTipoDoc.Value <> '' then
    SQLContasPagar.MacrobyName('MTipoDoc').Value  := 'CONTASPAGAR.TPDCICOD = ' + ComboTipoDoc.Value
  else
    SQLContasPagar.MacrobyName('MTipoDoc').Value  := '0=0';

  if ComboPortador.Value <> '' then
    SQLContasPagar.MacrobyName('MPortador').Value := 'CONTASPAGAR.PORTICOD = ' + ComboPortador.Value
  else
    SQLContasPagar.MacrobyName('MPortador').Value := '0=0';

  if ComboConta.Value <> '' then
    SQLContasPagar.MacrobyName('MConta').Value := 'CONTASPAGAR.PLCTA15COD = "'+ ComboConta.Value + '"'
  else
    SQLContasPagar.MacrobyName('MConta').Value := '0=0';

  SQLContasPagar.Open;

  BatchExec(SQLContasPagar, TblTemporaria) ;

  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Contas Pagar Emitidas.rpt' ;
  Report.ReportTitle       := 'Relatório de Contas à Pagar EMITIDAS' ;
  Report.WindowStyle.Title := 'Relatório de Contas à Pagar EMITIDAS' ;
  Report.Formulas.Retrieve ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa' ;
  Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                  FormatDateTime('dd/mm/yyyy', Ate.Date) + '"' ;

  if RadioEmissao.Checked then
    Report.Formulas.Formula.Text := '"Emissão"';
  if RadioRecebto.Checked then
    Report.Formulas.Formula.Text := '"Recebimento"';

  if ComboPortador.Value <> '' then
    begin
      Report.Formulas.Name         := 'Portador' ;
      Report.Formulas.Formula.Text := '"' + ComboPortador.DisplayValue + '"' ;
    end;
  if ComboTipoDoc.Value <> '' then
    begin
      Report.Formulas.Name         := 'TipoDoc' ;
      Report.Formulas.Formula.Text := '"' + ComboTipoDoc.DisplayValue + '"' ;
    end;

  Report.Execute ;

end;

procedure TFormRelatorioContasPagarEmitidas.FormCreate(Sender: TObject);
begin
  inherited;
  SQLFornecedor.Open;
  SQLTipoDoc.Open;
  SQLPortador.Open;
  SQLPlanoContas.Open;
end;

procedure TFormRelatorioContasPagarEmitidas.ComboFornecedorKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

end.
