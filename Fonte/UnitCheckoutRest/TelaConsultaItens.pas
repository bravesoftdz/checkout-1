unit TelaConsultaItens;

interface

uses
  JPEG, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Mask, ToolEdit, CurrEdit, StdCtrls, Db, DBTables, EnhTable, Grids,
  DBGrids, Placemnt, DBLists, ComboBoxPlus, IniFiles, IBCustomDataSet,
  RXDBCtrl ;

type
  TFormTelaConsultaItens = class(TForm)
    VALOR: TMaskEdit;
    DSTemplate: TDataSource;
    LblCodigoProd: TLabel;
    DBGridLista: TRxDBGrid;
    RxLabel2: TLabel;
    Shape2: TShape;
    QryProduto: TQuery;
    QryProdutoProdICod: TIntegerField;
    QryProdutoProdA60Descr: TStringField;
    QryProdutoProdN2VlrVenda: TFloatField;
    QryProdutoPRODCENTRACARD: TIBStringField;
    QryProdutoPRODN3SALDESTOQ: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure TblContratoItemCalcFields(DataSet: TDataSet);
    procedure VALORKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure VALORKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    JPG : TJPEGImage ;
    BMP : TBitMap;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaItens: TFormTelaConsultaItens;

implementation

uses UnitFrontLib, DataModuloRest;

{$R *.DFM}

procedure TFormTelaConsultaItens.FormCreate(Sender: TObject);
Var
  I,J:Integer;
  Chave:TStringList;
begin
  if not QryProduto.Active then
  begin
    QryProduto.SQL.Clear ;
    QryProduto.SQL.Add('select * from PRODUTO where PRODCENTRACARD = ''S''') ;
    QryProduto.SQL.Add('order by PRODA60DESCR') ;
    QryProduto.Open ;
  end ;
end;

procedure TFormTelaConsultaItens.TblContratoItemCalcFields(
  DataSet: TDataSet);
var
  I:Integer;
begin
  if DataSet.FieldByName('ContratoItemTroca').Value='S' then
    I := -1
  else
    I :=  1;
  DataSet.FieldByName('TotalItemCalculado').Value:=((DataSet.FieldByName('ContratoItemValorUnitario').Value-DataSet.FieldByName('ContratoItemDesconto').Value)*DataSet.FieldByName('ContratoItemQtde').Value)*I;
end;

procedure TFormTelaConsultaItens.VALORKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If Key=VK_DOWN Then
    Begin
      DSTemplate.DataSet.Next;
      DBGridLista.SetFocus;
    End;
  If Key=VK_UP Then
    Begin
      DSTemplate.DataSet.Prior;
      DBGridLista.SetFocus;
    End;
end;

procedure TFormTelaConsultaItens.VALORKeyPress(Sender: TObject;
  var Key: Char);
begin
  DSTemplate.DataSet.Locate('PRODA60DESCR', VALOR.Text, [loPartialKey]) ;
  {if Key = #13 then
  begin
    Screen.Cursor := crHourglass ;
    QryProduto.Close ;
    QryProduto.SQL.Clear ;
    QryProduto.SQL.Add('select * from PRODUTO') ;
    QryProduto.SQL.Add('where  PRODCENTRACARD = "S"') ;
    QryProduto.SQL.Add('and PRODA60DESCR Like UPPER("' + VALOR.Text + '%")') ;
    QryProduto.SQL.Add('order by PRODA60DESCR') ;
    QryProduto.Open ;
    QryProduto.SQL.SaveToFile('C:\Windows\Desktop\SQLConsultaItem.SQL') ;
    Screen.Cursor := crDefault ;
  end ;}
end ;

procedure TFormTelaConsultaItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree ;
end;

procedure TFormTelaConsultaItens.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = 13) or (Key = 27) then
  begin
    CodigoProduto := DSTemplate.DataSet.FieldByName('ProdICod').AsString ;
    Close ;
  end ;
end;

end.
