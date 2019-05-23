unit TelaPedidoCompraHistoricoComprasVendasProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralModalTemplate, Buttons, jpeg, ExtCtrls, StdCtrls, DB,
  DBTables, RxQuery, Grids, DBGrids, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaPedidoCompraHistoricoComprasVendasProduto = class(TFormTelaGeralModalTemplate)
    SQLNotasCompra: TRxQuery;
    SQLNotasCompraNOCPA13ID: TStringField;
    SQLNotasCompraEMPRICOD: TIntegerField;
    SQLNotasCompraFORNICOD: TIntegerField;
    SQLNotasCompraNOCPA30NRO: TStringField;
    SQLNotasCompraNOCPCSTATUS: TStringField;
    SQLNotasCompraOPESICOD: TIntegerField;
    SQLNotasCompraNOCPDEMISSAO: TDateTimeField;
    SQLNotasCompraNOCPDRECEBIMENTO: TDateTimeField;
    SQLNotasCompraPRODICOD: TIntegerField;
    SQLNotasCompraNOCIN3PERCDESC: TBCDField;
    SQLNotasCompraNOCIN3VLRDESC: TBCDField;
    SQLNotasCompraNOCIN3VLRICMS: TBCDField;
    SQLNotasCompraNOCIN3PERCICMS: TBCDField;
    SQLNotasCompraNOCIN3VLRSUBST: TBCDField;
    SQLNotasCompraNOCIN3VLRIPI: TBCDField;
    SQLNotasCompraNOCIN3PERCIPI: TBCDField;
    SQLNotasCompraNOCIN3VLRCUSTOMED: TBCDField;
    SQLNotasCompraNOCIN3VLRFRETE: TBCDField;
    SQLNotasCompraNOCIN3QTDBONIF: TBCDField;
    SQLNotasCompraFORNA60RAZAOSOC: TStringField;
    SQLNotasCompraLOTEA30NRO: TStringField;
    SQLNotasCompraNOCIN3CAPEMBAL: TBCDField;
    SQLNotasCompraNOCIN3QTDEMBAL: TBCDField;
    DSSQLNotasCompra: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    SQLVendas: TRxQuery;
    SQLVendasEMPRICOD: TIntegerField;
    SQLVendasPRODICOD: TIntegerField;
    SQLVendasPRODA60DESCR: TStringField;
    SQLVendasVLRTOTALITEM: TFloatField;
    SQLVendasPRODN3VLRCUSTO: TBCDField;
    SQLVendasPRODN3VLRVENDA: TBCDField;
    SQLVendasGRUPICOD: TIntegerField;
    SQLVendasSUBGICOD: TIntegerField;
    SQLVendasVARIICOD: TIntegerField;
    SQLVendasMARCICOD: TIntegerField;
    SQLVendasMARGEMPERC: TFloatField;
    SQLVendasMARGEMVLR: TFloatField;
    SQLVendasCPITN3QTD: TBCDField;
    SQLVendasVENDICOD: TIntegerField;
    SQLVendasCUPOA13ID: TStringField;
    SQLVendasCLIEA13ID: TStringField;
    SQLVendasCPITN2VLRQDEVERIAVENDER: TBCDField;
    SQLVendasCOLEICOD: TIntegerField;
    SQLVendasREGISTRO: TDateTimeField;
    dsSQLVendas: TDataSource;
    Panel4: TPanel;
    DBGrid2: TDBGrid;
    LBProduto: TLabel;
    SQLVendasCUPODEMIS: TDateTimeField;
    SQLNotasCompraNOCIN3VLREMBAL: TFloatField;
    SQLNotasCompraNOCIN3VLRUNIT: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaPedidoCompraHistoricoComprasVendasProduto: TFormTelaPedidoCompraHistoricoComprasVendasProduto;

implementation

{$R *.dfm}

end.
