unit RelatorioPontoFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DB, RxQuery, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, DBTables, Placemnt, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, ppStrtch,
  ppMemo, ppBands, ppCtrls, ppPrnabl, ppCache, ppViewr, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormRelatorioPontoFuncionario = class(TFormRelatorioTEMPLATE)
    ppBDEPipeline1: TppBDEPipeline;
    ReportPonto: TppReport;
    SQLPonto: TRxQuery;
    SQLPontoPONTA13ID: TStringField;
    SQLPontoEMPRICOD: TIntegerField;
    SQLPontoPONTICOD: TIntegerField;
    SQLPontoFORNICOD: TIntegerField;
    SQLPontoPONTDDATA: TDateTimeField;
    SQLPontoPONTDMANHAENT: TDateTimeField;
    SQLPontoPONTDMANHASAI: TDateTimeField;
    SQLPontoPONTDTARDEENT: TDateTimeField;
    SQLPontoPONTDTARDESAI: TDateTimeField;
    SQLPontoPONTDNOITEENT: TDateTimeField;
    SQLPontoPONTDNOITESAI: TDateTimeField;
    SQLPontoPONTDDIASEMANA: TStringField;
    SQLPontoPONTDATRAZO: TDateTimeField;
    SQLPontoPONTDEXTRA: TDateTimeField;
    SQLPontoPONTTOBS: TStringField;
    SQLPontoREGISTRO: TDateTimeField;
    SQLPontoPENDENTE: TStringField;
    DSSQLFornecedor: TDataSource;
    SQLFornecedor: TRxQuery;
    GroupBox2: TGroupBox;
    ComboFornecedor: TRxDBLookupCombo;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppShape2: TppShape;
    ppLabel5: TppLabel;
    ppShape3: TppShape;
    ppLabel6: TppLabel;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine1: TppLine;
    ppLabel10: TppLabel;
    ppShape4: TppShape;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppShape5: TppShape;
    ppLine2: TppLine;
    ppShape6: TppShape;
    ppShape9: TppShape;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLine3: TppLine;
    ppShape10: TppShape;
    ppLabel16: TppLabel;
    ppShape11: TppShape;
    ppSummaryBand1: TppSummaryBand;
    ppShape12: TppShape;
    ppFooterBand1: TppFooterBand;
    ppLabel17: TppLabel;
    ppMemo1: TppMemo;
    ppLine4: TppLine;
    ppLabel18: TppLabel;
    SQLFornecedorFORNICOD: TIntegerField;
    SQLFornecedorFORNA60RAZAOSOC: TStringField;
    SQLFornecedorFORNA13IDCRACHA: TStringField;
    ppEmpresa: TppLabel;
    ppFuncionario: TppLabel;
    ppHorario: TppLabel;
    dsSQLPonto: TDataSource;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ReportPontoPreviewFormCreate(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioPontoFuncionario: TFormRelatorioPontoFuncionario;

implementation

uses DataModulo, DataModuloTemplate;

{$R *.dfm}

procedure TFormRelatorioPontoFuncionario.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLPonto.Open;
  ReportPonto.Print;
end;

procedure TFormRelatorioPontoFuncionario.FormCreate(Sender: TObject);
begin
  inherited;
  SQLFornecedor.Open;
end;

procedure TFormRelatorioPontoFuncionario.ReportPontoPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ReportPonto.PreviewForm.WindowState := wsMaximized;
  TppViewer(ReportPonto.PreviewForm.Viewer).ZoomPercentage := 100;
end;

procedure TFormRelatorioPontoFuncionario.ppHeaderBand1BeforePrint(
  Sender: TObject);
begin
  inherited;
  ppEmpresa.Caption     := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA60NOMEFANT', SQLPontoEMPRICOD.AsString);
  ppFuncionario.Caption := dm.SQLLocate('FORNECEDOR','FORNICOD','FORNA60RAZAOSOC', SQLPontoFORNICOD.AsString);
  ppHorario.Caption     := dm.SQLLocate('HORARIO','HORAICOD','HORAA60DESCR', dm.SQLLocate('FORNECEDOR','FORNICOD','HORAICOD', SQLPontoFORNICOD.AsString));
end;

end.
