unit TelaRecalculaCustoMedio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, StdCtrls, DB,
  DBTables, RxQuery, Grids, DBGrids, RXCtrls;

type
  TFormTelaRecalculaCustoMedio = class(TFormTelaGeralTEMPLATE)
    SQLNotaCompra: TRxQuery;
    DSSQLNotaCompra: TDataSource;
    SQLNotaCompraVALORCOMPRA: TFloatField;
    SQLNotaCompraVALORICMS: TBCDField;
    SQLNotaCompraVALORIPI: TBCDField;
    SQLNotaCompraVALORFRETE: TBCDField;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLNotaCompraPRODICOD: TIntegerField;
    SQLNotaCompraPRODA60DESCR: TStringField;
    DBGridLista: TDBGrid;
    SQLNotaCompraCustoMedio: TFloatField;
    LabelDiversos: TRxSpeedButton;
    RxSpeedButton1: TRxSpeedButton;
    SQLProdutoPRODN3VLRCUSTOMED: TBCDField;
    SQLProdutoSaldo: TRxQuery;
    DSSQLProduto: TDataSource;
    SQLProdutoSaldoPSLDN3QTDE: TBCDField;
    SQLProdutoSaldoPRODN3VLRCUSTO: TBCDField;
    SQLNotaCompraCompraMedio: TFloatField;
    SQLProdutoPRODN3VLRCOMPRAMED: TBCDField;
    SQLNotaCompraQTDE: TFloatField;
    Panel1: TPanel;
    Label1: TLabel;
    procedure SQLNotaCompraCalcFields(DataSet: TDataSet);
    procedure LabelDiversosClick(Sender: TObject);
    procedure RxSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaRecalculaCustoMedio: TFormTelaRecalculaCustoMedio;

implementation

uses UnitLibrary, WaitWindow;

{$R *.dfm}

procedure TFormTelaRecalculaCustoMedio.SQLNotaCompraCalcFields(
  DataSet: TDataSet);
var
  CustoCompra, ValorCompra : Double;
begin
  inherited;
  CustoCompra     := SQLNotaCompraVALORCOMPRA.AsFloat -
                     SQLNotaCompraVALORICMS.AsFloat   +
                     SQLNotaCompraVALORIPI.AsFloat    +
                     SQLNotaCompraVALORFRETE.AsFloat;
  ValorCompra     := SQLNotaCompraVALORCOMPRA.AsFloat;
  SQLNotaCompraCustoMedio.AsFloat  := CustoCompra / SQLNotaCompraQTDE.AsFloat;
  SQLNotaCompraCompraMedio.AsFloat := ValorCompra / SQLNotaCompraQTDE.AsFloat;
end;

procedure TFormTelaRecalculaCustoMedio.LabelDiversosClick(Sender: TObject);
begin
  inherited;
  SQLNotaCompra.Close;
  SQLNotaCompra.Open;
end;

procedure TFormTelaRecalculaCustoMedio.RxSpeedButton1Click(
  Sender: TObject);
var
  I : Integer;
begin
  inherited;
  SQLNotaCompra.DisableControls;
  if not SQLProduto.Active then SQLProduto.Open;
  SQLProduto.First;
  SQLNotaCompra.First;
  MakeWindow(SQLNotaCompra.RecordCount,'Recalculando Custo Médio!');
  I := 0;
  while not SQLNotaCompra.Eof do
    begin
      if SQLProduto.Locate('PRODICOD',SQLNotaCompraPRODICOD.AsString,[]) then
        begin
          SQLProduto.Edit;
          SQLProdutoPRODN3VLRCUSTOMED.AsFloat  := SQLNotaCompraCustoMedio.AsFloat;
          SQLProdutoPRODN3VLRCOMPRAMED.AsFloat := SQLNotaCompraCompraMedio.AsFloat;
          SQLProduto.Post;
        end;
      SQLNotaCompra.Next;
      Inc(I);
      SetProgress(I);
      Application.ProcessMessages;
    end;
  DestroyWindow;
  SQLNotaCompra.First;
  SQLNotaCompra.EnableControls;
  Informa('Rotina Finalizada Com Sucesso!');  
end;

end.
