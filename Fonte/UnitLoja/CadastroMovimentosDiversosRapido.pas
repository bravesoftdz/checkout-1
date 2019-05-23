unit CadastroMovimentosDiversosRapido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, StdCtrls, Buttons, RxLookup, DBCtrls,
  RxDBComb, Mask, ToolEdit, RXDBCtrl, DB, DBTables, RxQuery, jpeg, ExtCtrls,
  Grids, DBGrids;

type
  TFormTelaRapidaMovimentoDiverso = class(TFormTelaGeralTEMPLATE)
    SQLOperacaoEstoque: TRxQuery;
    SQLOperacaoEstoqueOPESICOD: TIntegerField;
    SQLOperacaoEstoqueOPESA60DESCR: TStringField;
    DSSQLOperacaoEstoque: TDataSource;
    SQLMovimentoDiverso: TRxQuery;
    DSSQLMovimentoDiverso: TDataSource;
    SQLMovimentoDiversoMOVDA13ID: TStringField;
    SQLMovimentoDiversoEMPRICOD: TIntegerField;
    SQLMovimentoDiversoMOVDICOD: TIntegerField;
    SQLMovimentoDiversoOPESICOD: TIntegerField;
    SQLMovimentoDiversoMOVDDMOVIMENTO: TDateTimeField;
    SQLMovimentoDiversoMOVDA255OBS: TStringField;
    SQLMovimentoDiversoMOVDCCONLUIDO: TStringField;
    SQLMovimentoDiversoPENDENTE: TStringField;
    SQLMovimentoDiversoREGISTRO: TDateTimeField;
    SQLMovimentoDiversoUSUAA60LOGIN: TStringField;
    SQLMovimentoDiversoUSUAICOD: TIntegerField;
    Panel1: TPanel;
    Label3: TLabel;
    DBEdit3: TDBDateEdit;
    Label5: TLabel;
    ComboConcluido: TRxDBComboBox;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    ComboOperacao: TRxDBLookupCombo;
    Panel4: TPanel;
    Label13: TLabel;
    Label18: TLabel;
    EditCodProduto: TDBEdit;
    ComboProdutos: TRxDBLookupCombo;
    DBEdit11: TDBEdit;
    BTItemNovo: TBitBtn;
    BtItemGravar: TBitBtn;
    BtItemExcluir: TBitBtn;
    Panel7: TPanel;
    SQLProdutos: TRxQuery;
    SQLProdutosPRODICOD: TIntegerField;
    SQLProdutosPRODA60DESCR: TStringField;
    SQLProdutosPRODN3VLRVENDA: TBCDField;
    SQLProdutosPRODN3VLRVENDAPROM: TBCDField;
    SQLProdutosPRODDINIPROMO: TDateTimeField;
    SQLProdutosPRODDFIMPROMO: TDateTimeField;
    DSSQLProdutos: TDataSource;
    DSSQLMovimentoDiversoItem: TDataSource;
    SQLMovimentoDiversoItem: TRxQuery;
    SQLMovimentoDiversoItemMOVDA13ID: TStringField;
    SQLMovimentoDiversoItemMVDIIITEM: TIntegerField;
    SQLMovimentoDiversoItemPRODICOD: TIntegerField;
    SQLMovimentoDiversoItemMVDIN3QTD: TBCDField;
    SQLMovimentoDiversoItemPENDENTE: TStringField;
    SQLMovimentoDiversoItemREGISTRO: TDateTimeField;
    SQLMovimentoDiversoItemLOTEA30NRO: TStringField;
    DBGridItens: TDBGrid;
    SQLMovimentoDiversoItemDescricaoProduto: TStringField;
    SQLMovimentoDiversoItemReferencia: TStringField;
    procedure SQLMovimentoDiversoItemNewRecord(DataSet: TDataSet);
    procedure SQLMovimentoDiversoItemCalcFields(DataSet: TDataSet);
    procedure SQLMovimentoDiversoNewRecord(DataSet: TDataSet);
    procedure SQLMovimentoDiversoBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaRapidaMovimentoDiverso: TFormTelaRapidaMovimentoDiverso;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormTelaRapidaMovimentoDiverso.SQLMovimentoDiversoItemNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLMovimentoDiversoItemMOVDA13ID.Value := SQLMovimentoDiversoMOVDA13ID.Value;
end;

procedure TFormTelaRapidaMovimentoDiverso.SQLMovimentoDiversoItemCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  SQLMovimentoDiversoItemDescricaoProduto.Value := SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',SQLMovimentoDiversoItemPRODICOD.AsString);
  SQLMovimentoDiversoItemDescricaoProduto.Value := SQLLocate('PRODUTO','PRODICOD','PRODA60REFER',SQLMovimentoDiversoItemPRODICOD.AsString);
end;

procedure TFormTelaRapidaMovimentoDiverso.SQLMovimentoDiversoNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLMovimentoDiversoMOVDCCONLUIDO.Value := 'N';
  SQLMovimentoDiversoMOVDDMOVIMENTO.AsString := FormatDateTime('dd/mm/yyyy',Now);
  SQLMovimentoDiversoREGISTRO.Value  := Now;
  SQLMovimentoDiversoPENDENTE.Value  := 'S';
end;

procedure TFormTelaRapidaMovimentoDiverso.SQLMovimentoDiversoBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  Dm.CodigoAutomatico('MovimentoDiverso',DSSQLMovimentoDiverso,SQLMovimentoDiverso,2,0);
end;

end.
