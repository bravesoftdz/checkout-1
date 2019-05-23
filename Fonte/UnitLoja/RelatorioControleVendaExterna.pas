unit RelatorioControleVendaExterna;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, ppProd, ppClass, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppDBBDE, DBTables, Placemnt, DB, ComCtrls,
  StdCtrls, Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ppCtrls,
  ppPrnabl, ppCache, ppBands;

type
  TFormRelatorioControleExternoVendas = class(TFormRelatorioTEMPLATE)
    pipeProduto: TppBDEPipeline;
    ppReport: TppReport;
    SQLProduto: TRxQuery;
    DSSqlProduto: TDataSource;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppFooterBand1: TppFooterBand;
    procedure FormCreate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioControleExternoVendas: TFormRelatorioControleExternoVendas;

implementation

{$R *.dfm}

procedure TFormRelatorioControleExternoVendas.FormCreate(Sender: TObject);
begin
  inherited;
  SQLProduto.Close;
  SQLProduto.Open;
end;

procedure TFormRelatorioControleExternoVendas.ExecutarBtnClick(
  Sender: TObject);
begin
  inherited;
  ppReport.Print;
end;

end.
