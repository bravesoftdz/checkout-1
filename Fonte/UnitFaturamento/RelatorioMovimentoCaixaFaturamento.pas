unit RelatorioMovimentoCaixaFaturamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, DBTables, Placemnt, DB, StdCtrls, Mask,
  ToolEdit, RxLookup, Buttons, ExtCtrls, ComCtrls, RxQuery, ppDB, ppDBPipe,
  ppDBBDE, ppBands, ppClass, ppCtrls, ppReport, ppStrtch, ppSubRpt, ppVar,
  ppPrnabl, ppCache, ppComm, ppRelatv, ppProd;

type
  TFormRelatorioMovimentoCaixaFaturamento = class(TFormRelatorioTEMPLATE)
    ppReport: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    LbPeriodo: TppLabel;
    LbTerminal: TppLabel;
    ppLabel9: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel31: TppLabel;
    ppOperador: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLabel10: TppLabel;
    ppLabel13: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText4: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand5: TppTitleBand;
    ppLabel15: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText8: TppDBText;
    SumarioNumerarios: TppSummaryBand;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppDBCalc8: TppDBCalc;
    SQLPrevenda: TRxQuery;
    SQLPrevendaEMPRICOD: TIntegerField;
    SQLPrevendaTERMICOD: TIntegerField;
    SQLPrevendaPRVDICOD: TIntegerField;
    SQLPrevendaCLIEA13ID: TStringField;
    SQLPrevendaPLRCICOD: TIntegerField;
    SQLPrevendaVENDICOD: TIntegerField;
    SQLPrevendaPRVDN2TOTITENS: TBCDField;
    SQLPrevendaPRVDN2DESC: TBCDField;
    SQLPrevendaPRVDCIMPORT: TStringField;
    SQLPrevendaCLIENTENOME: TStringField;
    SQLPrevendaPDVDDHVENDA: TDateTimeField;
    SQLPrevendaPLACA: TStringField;
    SQLPrevendaSITUACAO: TStringField;
    SQLPrevendaOBS: TStringField;
    DSSQLPrevenda: TDataSource;
    PipePrevenda: TppBDEPipeline;
    ppDBText6: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText2: TppDBText;
    ppLabel7: TppLabel;
    SQLNotaFiscal: TRxQuery;
    SQLNotaFiscalEMPRICOD: TIntegerField;
    SQLNotaFiscalCLIEA13ID: TStringField;
    SQLNotaFiscalCLIEA60RAZAOSOC: TStringField;
    SQLNotaFiscalFORNA60RAZAOSOC: TStringField;
    SQLNotaFiscalSERIA5COD: TStringField;
    SQLNotaFiscalOPESICOD: TIntegerField;
    SQLNotaFiscalNOFIINUMERO: TIntegerField;
    SQLNotaFiscalNOFICSTATUS: TStringField;
    SQLNotaFiscalNOFIDEMIS: TDateTimeField;
    SQLNotaFiscalNOFIN2VLRNOTA: TBCDField;
    SQLNotaFiscalNOFIN2VLRICMS: TBCDField;
    SQLNotaFiscalNOFIN2VLRSUBS: TBCDField;
    SQLNotaFiscalNOFIN3VLRPIS: TBCDField;
    SQLNotaFiscalNOFIN3VLRCOFINS: TBCDField;
    DSSQLNotaFiscal: TDataSource;
    PipeSQLNotasEmitidas: TppBDEPipeline;
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioMovimentoCaixaFaturamento: TFormRelatorioMovimentoCaixaFaturamento;

implementation

{$R *.dfm}

procedure TFormRelatorioMovimentoCaixaFaturamento.ExecutarBtnClick(
  Sender: TObject);
begin
  inherited;
  SQLNotaFiscal.Close;
  SQLNotaFiscal.MacrobyName('Empresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas,'','NotaFiscal','') ;
  SQLNotaFiscal.MacroByName('DataInicial').Value := ' "' + FormatDateTime('mm/dd/yyyy',De.Date)  + '" ';
  SQLNotaFiscal.MacroByName('DataFinal').Value   := ' "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '" ';
  SQLNotaFiscal.Open;

  SQLPrevenda.Close;
  SQLPrevenda.macrobyname('MEmpresa').Value := 'EMPRICOD='+SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'PREVENDA', '');
  SQLPrevenda.macrobyname('MFiltro').Value  := '0=0';
  SQLPrevenda.Open;

  ppReport.Print;
end;

end.
