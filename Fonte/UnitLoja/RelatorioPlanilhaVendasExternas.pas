unit RelatorioPlanilhaVendasExternas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, ppDB, DB, ppDBPipe, ppDBBDE, ppBands,
  ppCtrls, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  DBTables, Buttons, jpeg, ExtCtrls, StdCtrls, Grids, DBGrids, ppViewr,
  RxLookup, RxQuery, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioPlanilhaMensalVendas = class(TFormTelaGeralTEMPLATE)
    ReportPlanilhaMensalVendas: TppReport;
    ppDetailBand1: TppDetailBand;
    PipeCliente: TppBDEPipeline;
    DSSQLClientes: TDataSource;
    ppShape9: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppDBText6: TppDBText;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText7: TppDBText;
    ppLabel10: TppLabel;
    ppDBText8: TppDBText;
    ppShape10: TppShape;
    ppShape11: TppShape;
    SQLCliente: TRxQuery;
    GroupBox2: TGroupBox;
    ComboCliente: TRxDBLookupCombo;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteEMPRICOD: TIntegerField;
    SQLClienteCLIEICOD: TIntegerField;
    SQLClienteCLIEA5FISJURID: TStringField;
    SQLClienteCLIEA14CGC: TStringField;
    SQLClienteCLIEA20IE: TStringField;
    SQLClienteCLIEA11CPF: TStringField;
    SQLClienteCLIEA10RG: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLClienteCLIEA60NOMEFANT: TStringField;
    SQLClienteCLIEA60CONTATO: TStringField;
    SQLClienteCLIEA15FONE1: TStringField;
    SQLClienteCLIEA15FONE2: TStringField;
    SQLClienteCLIEA15FAX: TStringField;
    SQLClienteCLIEA30OUTROSDOC: TStringField;
    SQLClienteCLIECSEXO: TStringField;
    SQLClienteCLIEA60PROFISSAO: TStringField;
    SQLClienteCLIEA60ENDRES: TStringField;
    SQLClienteCLIEA60BAIRES: TStringField;
    SQLClienteCLIEA60CIDRES: TStringField;
    SQLClienteCLIEA2UFRES: TStringField;
    SQLClienteCLIEA8CEPRES: TStringField;
    SQLClienteCLIEA60EMAIL: TStringField;
    BtnVisualizar: TSpeedButton;
    DSSqlCienteCombo: TDataSource;
    SQLClienteCombo: TQuery;
    SQLClienteComboCLIEA13ID: TStringField;
    SQLClienteComboCLIEA60RAZAOSOC: TStringField;
    GroupBox1: TGroupBox;
    ComboVendedor: TRxDBLookupCombo;
    DSSqlVendedorCombo: TDataSource;
    SQLVendedorCombo: TQuery;
    procedure FormCreate(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ReportPlanilhaMensalVendasPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioPlanilhaMensalVendas: TFormRelatorioPlanilhaMensalVendas;

implementation

uses ppForms;

{$R *.dfm}

procedure TFormRelatorioPlanilhaMensalVendas.FormCreate(Sender: TObject);
begin
  inherited;
  SQLClienteCombo.Open;
  SQLVendedorCombo.Open;
end;

procedure TFormRelatorioPlanilhaMensalVendas.BtnVisualizarClick(
  Sender: TObject);
begin
  inherited;
  SQLCliente.Close;
  if ComboCliente.Value <> '' then
    SQLCliente.MacroByName('Cliente').Value := 'CLIEA13ID = "'+ ComboCliente.Value + '"'
  else
    SQLCliente.MacroByName('Cliente').Value := '0=0';
  if ComboVendedor.Value <> '' then
    SQLCliente.MacroByName('Vendedor').Value := 'VENDICOD = "'+ ComboVendedor.Value + '"'
  else
    SQLCliente.MacroByName('Vendedor').Value := '0=0';
  SQLCliente.Open;
  ReportPlanilhaMensalVendas.Print;
end;

procedure TFormRelatorioPlanilhaMensalVendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  SQLClienteCombo.Close;
  SQLVendedorCombo.Close;
end;

procedure TFormRelatorioPlanilhaMensalVendas.ReportPlanilhaMensalVendasPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ReportPlanilhaMensalVendas.PreviewForm.WindowState := wsMaximized;
  TppViewer(ReportPlanilhaMensalVendas.PreviewForm.Viewer).ZoomPercentage := 100;
end;

end.
