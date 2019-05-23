unit CadastroProdutoProducaoInsumo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, RxLookup, DBCtrls, DBTables, DBActns,
  ActnList, ImgList, DB, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids,
  ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg;

type
  TFormCadastroProdutoProducaoInsumo = class(TFormCadastroTEMPLATE)
    Label2: TLabel;
    lblTituloInsumo: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBLInsumo: TRxDBLookupCombo;
    DBEdit4: TDBEdit;
    AcessaFornecedor: TSpeedButton;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplatePRODICODFILHO: TIntegerField;
    SQLTemplatePRODN3QTDE: TBCDField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePRODN3VLRTOTAL: TBCDField;
    SQLProduto: TRxQuery;
    dsSQLProduto: TDataSource;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoPRODCTIPO: TStringField;
    SQLProdutoTipo: TStringField;
    SQLProdutoPRODN3VLRCUSTO: TBCDField;
    SQLTemplateNomeFilho: TStringField;
    rchDetalhe: TRichEdit;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure AcessaFornecedorClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SQLTemplatePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure DBLInsumoChange(Sender: TObject);
    procedure SQLProdutoCalcFields(DataSet: TDataSet);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure DSMasterTemplateDataChange(Sender: TObject; Field: TField);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

Type
  CodigoNodo=Record
    Codigo:String[15];
  End;
  NodoArvore=^CodigoNodo;

var
  FormCadastroProdutoProducaoInsumo: TFormCadastroProdutoProducaoInsumo;

implementation

uses UnitLibrary, DataModulo, CadastroProdutos, VarSYS, FormResources,
  CadastroInsumo;

{$R *.dfm}

procedure TFormCadastroProdutoProducaoInsumo.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'PRODUTOCOMPOSICAO';
  if not SQLProduto.Active then SQLProduto.Active := True;
end;

procedure TFormCadastroProdutoProducaoInsumo.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplatePRODICOD.AsInteger := DSMasterTemplate.DataSet.FieldByName('PRODICOD').AsInteger;
  SQLTemplatePRODN3VLRTOTAL.AsFloat := 0;
  SQLTemplatePRODN3QTDE.AsFloat := 1;
end;

procedure TFormCadastroProdutoProducaoInsumo.AcessaFornecedorClick(
  Sender: TObject);
begin
  inherited;
  DataSetLookup := SQLProduto;
  FieldLookup   := SQLTemplatePRODICOD;
  FieldOrigem   := 'PRODICOD';
  CriaFormulario(TFormCadastroInsumo,'FormCadastroInsumo',False,True,'') ;
end;

procedure TFormCadastroProdutoProducaoInsumo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DSMasterSys   := Nil;
  DataSetLookup := Nil;
end;

procedure TFormCadastroProdutoProducaoInsumo.SQLTemplatePostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  if pos('PRIMARY or UNIQUE KEY', E.Message) > 0 then
     begin
       Informa('Esta Matéria Prima ou Semi Acabado já esta associado a esse Produto.' + char(#13) + 'Selecione outro ou cancele a operação.' + char(#13) + 'Obrigado.');
       Abort;
     end;
end;

procedure TFormCadastroProdutoProducaoInsumo.DBLInsumoChange(
  Sender: TObject);
begin
  inherited;
  SQLTemplatePRODN3VLRTOTAL.AsVariant := SQLProduto.FieldByName('PRODN3VLRCUSTO').AsVariant;
  if (SQLLocate('PRODUTO','PRODICOD','PRODCTIPO', DSMasterTemplate.DataSet.FieldByName('PRODICOD').AsString) = 'S')
     and (SQLProdutoPRODCTIPO.AsString = 'S') then
     begin
       Informa('Você deve informar um Produto do Tipo Matéria Prima para este Semi Acabado.');
       DBLInsumo.KeyValue := '';
       Abort;
     end;

end;

procedure TFormCadastroProdutoProducaoInsumo.SQLProdutoCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  case SQLProdutoPRODCTIPO.AsString[1] of
     'S' : SQLProdutoTipo.AsString := 'Semi Acabado';
     'M' : SQLProdutoTipo.AsString := 'Matéria Prima';
  end;
end;

procedure TFormCadastroProdutoProducaoInsumo.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if not SQLTemplatePRODICODFILHO.IsNull then
     SQLTemplateNomeFilho.AsString := SQLLocate('PRODUTO', 'PRODICOD', 'PRODA60DESCR', SQLTemplatePRODICODFILHO.AsString);
end;

procedure TFormCadastroProdutoProducaoInsumo.DSMasterTemplateDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  if SQLLocate('PRODUTO','PRODICOD','PRODCTIPO', DSMasterTemplate.DataSet.FieldByName('PRODICOD').AsString) = 'S' then
     lblTituloInsumo.Caption := 'Código Matéria Prima';

  if SQLLocate('PRODUTO','PRODICOD','PRODCTIPO', DSMasterTemplate.DataSet.FieldByName('PRODICOD').AsString) = 'P' then
     lblTituloInsumo.Caption := 'Código Matéria Prima/ Semi Acabado';
end;

end.
