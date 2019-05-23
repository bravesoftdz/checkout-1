unit CadastroInsumosFilhos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, RxLookup, DBCtrls;

type
  TFormCadastroInsumosFilhos = class(TFormCadastroTEMPLATE)
    SQLProduto: TRxQuery;
    DSSQLInsumo: TDataSource;
    SQLExec: TRxQuery;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplatePRODICODFILHO: TIntegerField;
    SQLTemplatePRODN3QTDE: TBCDField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePRODN3VLRTOTAL: TBCDField;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLTemplatePRODA60DESCR: TStringField;
    SQLTemplatePRODA60DESCRFILHO: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    lblTipo: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplateTotalInsumo: TFloatField;
    SQLProdutoPRODN3VLRVENDA: TBCDField;
    GroupBox1: TGroupBox;
    DBLInsumo: TRxDBLookupCombo;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label2: TLabel;
    DBEdit5: TDBEdit;
    SQLTemplatePRODN2PERDA: TBCDField;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label9: TLabel;
    DBEdit12: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label6: TLabel;
    SQLTemplatePRODN3ALTURA: TBCDField;
    SQLTemplatePRODN3COMPRIMENTO: TBCDField;
    SQLTemplatePRODN3DIMENTOTAL: TBCDField;
    SQLTemplatePRODN3LARGURA: TBCDField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateAfterOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure DSSQLInsumoDataChange(Sender: TObject; Field: TField);
    procedure SQLTemplatePRODN3ALTURAChange(Sender: TField);
    procedure DSTemplateStateChange(Sender: TObject);
  private
    { Private declarations }
    Editando : Boolean;
  public
    { Public declarations }
  end;

var
  FormCadastroInsumosFilhos: TFormCadastroInsumosFilhos;

implementation

uses VarSYS;

{$R *.dfm}

procedure TFormCadastroInsumosFilhos.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'PRODUTOCOMPOSICAO';
  if not SQLProduto.Active  then SQLProduto.Active := True;
end;

procedure TFormCadastroInsumosFilhos.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  Editando := False;
  SQLTemplatePRODN3ALTURA.AsFloat      := 1;
  SQLTemplatePRODN3COMPRIMENTO.AsFloat := 0;
  SQLTemplatePRODN3LARGURA.AsFloat     := 0;
  SQLTemplatePRODN2PERDA.AsFloat       := 0;
  SQLTemplatePRODN3DIMENTOTAL.AsFloat  := 0;
  SQLTemplatePRODICOD.AsInteger := DSMasterTemplate.DataSet.FieldByName('PRODICOD').AsInteger;
  SQLTemplatePRODN3VLRTOTAL.AsFloat := DSMasterTemplate.DataSet.FieldByName('PRODN3VLRCOMPRA').AsFloat;
  SQLTemplatePRODN3QTDE.AsFloat     := 1;
  Editando := True;
end;

procedure TFormCadastroInsumosFilhos.SQLTemplateAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  if DSMasterTemplate.DataSet.FieldByName('PRODCTIPO').AsString = 'S' then
     lblTipo.Caption := 'Produto Semi-Acabado'
  else
    if DSMasterTemplate.DataSet.FieldByName('PRODCTIPO').AsString = 'M' then
       lblTipo.Caption := 'Matéria Prima';

end;

procedure TFormCadastroInsumosFilhos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DSMasterSys := nil;
end;

procedure TFormCadastroInsumosFilhos.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateTotalInsumo.AsFloat := SQLTemplatePRODN3VLRTOTAL.AsFloat * SQLTemplatePRODN3QTDE.AsFloat;
end;

procedure TFormCadastroInsumosFilhos.DSSQLInsumoDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if SQLTemplate.State in dsEditModes then
     SQLTemplatePRODN3VLRTOTAL.AsFloat := SQLProdutoPRODN3VLRVENDA.AsFloat;
end;

procedure TFormCadastroInsumosFilhos.SQLTemplatePRODN3ALTURAChange(
  Sender: TField);
begin
  inherited;
  if Editando then
     begin
        SQLTemplatePRODN3DIMENTOTAL.AsFloat := (SQLTemplatePRODN3ALTURA.AsFloat *
                                               SQLTemplatePRODN3COMPRIMENTO.AsFloat *
                                               SQLTemplatePRODN3LARGURA.AsFloat); //Em metros
        if SQLTemplatePRODN2PERDA.AsFloat <> 0 then
           SQLTemplatePRODN3DIMENTOTAL.AsFloat := SQLTemplatePRODN3DIMENTOTAL.AsFloat *
                                                  (1 + (SQLTemplatePRODN2PERDA.AsFloat / 100)); //Em metros
        if SQLTemplatePRODN3DIMENTOTAL.AsFloat > 0 then
           SQLTemplatePRODN3QTDE.AsFloat := SQLTemplatePRODN3DIMENTOTAL.AsFloat;
    end;
end;
procedure TFormCadastroInsumosFilhos.DSTemplateStateChange(
  Sender: TObject);
begin
  inherited;
  Editando := SQLTemplate.State in dsEditModes;
end;

end.
