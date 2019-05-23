unit RelatorioPrevendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, StdCtrls, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ppDB, ppDBPipe, ppBands,
  ppCtrls, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppViewr,
  ppStrtch, ppSubRpt, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioPrevendas = class(TFormRelatorioTEMPLATE)
    ppListagem: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLbEmpresa: TppLabel;
    pplbData: TppLabel;
    ppLine1: TppLine;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppDetalheCabecalho: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLine2: TppLine;
    zListagem: TZQuery;
    dszListagem: TDataSource;
    zListagemTERMICOD: TIntegerField;
    zListagemPRVDICOD: TIntegerField;
    zListagemCLIEA13ID: TStringField;
    zListagemPLRCICOD: TIntegerField;
    zListagemVENDICOD: TIntegerField;
    zListagemCONVICOD: TIntegerField;
    zListagemPRVDN2TOTITENS: TFloatField;
    zListagemPRVDN2DESC: TFloatField;
    zListagemPRVDN2ACRESC: TFloatField;
    zListagemPRVDN2TOTITENSRET: TFloatField;
    zListagemPRVDCTIPOPADRAO: TStringField;
    zListagemPRVDN2CONVTAXA: TFloatField;
    zListagemPRVDINROORDCOMPRA: TIntegerField;
    zListagemPRVDCIMPORT: TStringField;
    zListagemPRVDCMARCADO: TStringField;
    zListagemCLIENTENOME: TStringField;
    zListagemCLIENTECNPJ: TStringField;
    zListagemCLIENTEENDE: TStringField;
    zListagemCLIENTECIDA: TStringField;
    zListagemCLIENTEOBS: TStringField;
    zListagemPDVDDHVENDA: TDateTimeField;
    zListagemPDVCPRECONCLU: TStringField;
    zListagemCLIENTEFONE: TStringField;
    zListagemORIGEMVENDA: TStringField;
    zListagemCLIENTEBAIRRO: TStringField;
    GroupBox8: TGroupBox;
    ComboTerminal: TRxDBLookupCombo;
    SQLTerminal: TQuery;
    DSSQLTerminal: TDataSource;
    PipePrincipal: TppDBPipeline;
    ppLbTerminal: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppShape1: TppShape;
    ppItensVenda: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetalheItens: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    zListagemItem: TZQuery;
    dszListagemItem: TDataSource;
    zListagemItemTERMICOD: TIntegerField;
    zListagemItemPRVDICOD: TIntegerField;
    zListagemItemPVITIPOS: TIntegerField;
    zListagemItemPRODICOD: TIntegerField;
    zListagemItemPVITN3QTD: TFloatField;
    zListagemItemPVITN3VLRUNIT: TFloatField;
    zListagemItemPVITN3VLRCUSTUNIT: TFloatField;
    zListagemItemPVITN2DESC: TFloatField;
    zListagemItemVENDICOD: TIntegerField;
    zListagemItemPVITN3VLRUNITLUCR: TFloatField;
    zListagemItemPVITCSTATUS: TStringField;
    zListagemItemPVITN2ICMSALIQ: TFloatField;
    zListagemItemPRODA60NROSERIE: TStringField;
    zListagemItemPVITN3QTDTROCA: TFloatField;
    PipeItens: TppDBPipeline;
    ppProduto: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppTotalItem: TppLabel;
    ppShape2: TppShape;
    ppLabel3: TppLabel;
    ppTotalitemLiq: TppLabel;
    ppDBCalcDesconto: TppDBCalc;
    ppTotalLiqGeral: TppLabel;
    ppTotalBruto: TppLabel;
    ppShape3: TppShape;
    ppTotalGeralBruto: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppTotalGeralDesconto: TppLabel;
    ppTotalGeralLiquido: TppLabel;
    ppLabel2: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    procedure FormCreate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
    procedure ppListagemPreviewFormCreate(Sender: TObject);
    procedure ppDetalheItensBeforePrint(Sender: TObject);
    procedure dszListagemDataChange(Sender: TObject; Field: TField);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    VlrTotalBrutoGeral, VlrTotalLiquidoGeral : double;
  end;

var
  FormRelatorioPrevendas: TFormRelatorioPrevendas;

implementation

uses DataModulo, DataModuloTemplate;

{$R *.dfm}

procedure TFormRelatorioPrevendas.FormCreate(Sender: TObject);
begin
  inherited;
  sqlterminal.Open;
end;

procedure TFormRelatorioPrevendas.ExecutarBtnClick(Sender: TObject);
var sql : string;
begin
  inherited;

  VlrTotalBrutoGeral   := 0;
  VlrTotalLiquidoGeral := 0;
  
  sql := 'Select * from PREVENDA where (PDVDDHVENDA >= '''+FormatDateTime('mm/dd/yyyy',de.Date) +
                                               ''' and PDVDDHVENDA <=''' +FormatDateTime('mm/dd/yyyy',ate.Date) + ''') ';
  if ComboTerminal.Value <> '' then
    sql := sql + ' and TERMICOD=' + ComboTerminal.Value;

  zListagem.Close;
  zListagem.SQL.Clear;
  zListagem.SQL.Text := sql;
  try
    zListagem.Open;
  except
    ShowMessage('Não existem dados a serem impressos! Verifique os filtros!');
    Exit;
  end;

  if zListagem.IsEmpty then
    begin
      ShowMessage('Não existem dados a serem impressos! Verifique os filtros!');
      Exit;
    end
  else
    begin
      ppListagem.print;
      zListagem.close;
    end;
end;

procedure TFormRelatorioPrevendas.ppListagemPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ppListagem.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppListagem.PreviewForm.Viewer).ZoomPercentage := 100;
end;

procedure TFormRelatorioPrevendas.ppDetalheItensBeforePrint(
  Sender: TObject);
begin
  inherited;
  ppProduto.Caption      := FormatFloat('######000000',zListagemItemPRODICOD.AsFloat)+'-'+ copy(dm.SQLLocate('Produto','Prodicod','Proda60Descr',zListagemItemPRODICOD.AsString),1,30);
  ppTotalItem.Caption    := FormatFloat('##0.00',(zListagemItemPVITN3VLRUNIT.Value*zListagemItemPVITN3QTD.Value));
  ppTotalitemLiq.Caption := FormatFloat('##0.00',(zListagemItemPVITN3VLRUNIT.Value*zListagemItemPVITN3QTD.Value)-zListagemItemPVITN2DESC.Value);
end;

procedure TFormRelatorioPrevendas.dszListagemDataChange(Sender: TObject;
  Field: TField);
var sql : string;
begin
  inherited;
  sql := 'Select * from PREVENDAITEM where PRVDICOD = '+zListagemPRVDICOD.AsString + ' AND TERMICOD = ' + zListagemTERMICOD.AsString;
  sql := sql + ' order by PVITIPOS asc';
  zListagemItem.Close;
  zListagemItem.SQL.Clear;
  zListagemItem.SQL.Text := sql;
  zListagemItem.Open;
end;

procedure TFormRelatorioPrevendas.ppHeaderBand1BeforePrint(
  Sender: TObject);
begin
  inherited;
  ppLbEmpresa.Caption  := 'Empresa:  ' + ComboEmpresa.Text;
  pplbData.Caption     := 'Período:  ' + de.Text + ' até ' + ate.Text;
  ppLbTerminal.Caption := 'Terminal: ' + ComboTerminal.Text
end;

procedure TFormRelatorioPrevendas.ppSummaryBand1BeforePrint(
  Sender: TObject);
begin
  inherited;
  dm.zConsulta.close;
  dm.zConsulta.sql.clear;
  dm.zConsulta.sql.text := 'Select Sum(PVITN3VLRUNIT*PVITN3QTD) from PREVENDAITEM Where TERMICOD=' + zListagemTERMICOD.AsString+
                           ' and PRVDICOD='+zlistagemPRVDICOD.AsString;
  try
    dm.zConsulta.open;
    ppTotalBruto.Caption    := FormatFloat('##0.00',dm.zConsulta.fieldbyname('SUM').AsFloat);
    ppTotalLiqGeral.Caption := FormatFloat('##0.00',dm.zConsulta.fieldbyname('SUM').AsFloat-ppDBCalcDesconto.Value);

    VlrTotalBrutoGeral   := VlrTotalBrutoGeral + dm.zConsulta.fieldbyname('SUM').AsFloat;
    VlrTotalLiquidoGeral := VlrTotalLiquidoGeral + (dm.zConsulta.fieldbyname('SUM').AsFloat-ppDBCalcDesconto.Value);
  except
    ppTotalBruto.Caption    := '0,00';
    ppTotalLiqGeral.Caption := '0,00';
  end;

end;

procedure TFormRelatorioPrevendas.ppSummaryBand2BeforePrint(
  Sender: TObject);
begin
  inherited;
  ppTotalGeralBruto.Caption  := FormatFloat('##0.00',VlrTotalBrutoGeral);
  ppTotalGeralDesconto.Caption    := FormatFloat('##0.00',VlrTotalBrutoGeral-VlrTotalLiquidoGeral);
  ppTotalGeralLiquido.Caption    := FormatFloat('##0.00',VlrTotalLiquidoGeral);
end;

end.
