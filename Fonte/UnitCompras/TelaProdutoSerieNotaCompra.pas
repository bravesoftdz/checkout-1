unit TelaProdutoSerieNotaCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralModalTemplate, Buttons, jpeg, ExtCtrls, StdCtrls, DB,
  DBTables, Grids, DBGrids, RxQuery;

type
  TFormTelaGeralModalCadastroProdutoSerieNotaCompra = class(TFormTelaGeralModalTemplate)
    DSSQLProdutoSerie: TDataSource;
    DBGridLista: TDBGrid;
    SQLProdutoSerie: TRxQuery;
    SQLProdutoSeriePRODICOD: TIntegerField;
    SQLProdutoSeriePRSEA60NROSERIE: TStringField;
    SQLProdutoSerieEMPRICOD: TIntegerField;
    SQLProdutoSerieFORNICOD: TIntegerField;
    SQLProdutoSerieCLIEA13ID: TStringField;
    SQLProdutoSerieNOCPA13ID: TStringField;
    SQLProdutoSerieNOFIA13ID: TStringField;
    SQLProdutoSerieCUPOA13ID: TStringField;
    SQLProdutoSeriePDVDA13ID: TStringField;
    SQLProdutoSerieOSA13ID: TStringField;
    SQLProdutoSeriePENDENTE: TStringField;
    SQLProdutoSerieREGISTRO: TDateTimeField;
    SQLProdutoSerieMOVDA13ID: TStringField;
    procedure SQLProdutoSerieAfterPost(DataSet: TDataSet);
    procedure SQLProdutoSerieNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    CodProduto   : Integer;
    Destino, IDNotaCompra, IDCliente, IDPedidoVenda, IDNotaFiscal, IDOS, IDMovDiverso, CodFornecedor, CodEmpresa : String;
    { Public declarations }
  end;

var
  FormTelaGeralModalCadastroProdutoSerieNotaCompra: TFormTelaGeralModalCadastroProdutoSerieNotaCompra;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormTelaGeralModalCadastroProdutoSerieNotaCompra.SQLProdutoSerieAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  SQLProdutoSerie.Close;
  SQLProdutoSerie.Open;
  SQLProdutoSerie.Last;
end;

procedure TFormTelaGeralModalCadastroProdutoSerieNotaCompra.SQLProdutoSerieNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLProdutoSeriePRODICOD.AsInteger         := CodProduto;
  SQLProdutoSerieEMPRICOD.AsString          := EmpresaPadrao;
  case Destino[1] of
    'C' : SQLProdutoSerieCLIEA13ID.AsString := IDCliente;
    'E' : SQLProdutoSerieEMPRICOD.AsString  := CodEmpresa;
    'F' : SQLProdutoSerieFORNICOD.AsString  := CodFornecedor;
  end;
  if IDNotaCompra  <> '' then
    SQLProdutoSerieNOCPA13ID.AsString := IDNotaCompra;
  if IDPedidoVenda <> '' then
    SQLProdutoSeriePDVDA13ID.AsString := IDPedidoVenda;
  if IDOS <> '' then
    SQLProdutoSerieOSA13ID.AsString   := IDOS;
  if IDNotaFiscal  <> '' then
    SQLProdutoSerieNOFIA13ID.AsString := IDNotaFiscal;
  if IDMovDiverso  <> '' then
    SQLProdutoSerieMOVDA13ID.AsString := IDMovDiverso;
end;

end.
