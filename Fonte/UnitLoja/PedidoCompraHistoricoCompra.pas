unit PedidoCompraHistoricoCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, DB, DBTables, RxQuery;

type
  TFormPedidoCompraHistoricoCompra = class(TForm)
    DSSQLNotasCompra: TDataSource;
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
    SQLNotasCompraNOCIN3VLREMBAL: TFloatField;
    SQLNotasCompraNOCIN3VLRUNIT: TFloatField;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    PanelCabecalho: TPanel;
    LabelTitulo: TLabel;
    Panel1: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPedidoCompraHistoricoCompra: TFormPedidoCompraHistoricoCompra;

implementation

{$R *.dfm}

end.
