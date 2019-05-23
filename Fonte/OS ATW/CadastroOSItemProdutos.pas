unit CadastroOSItemProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, RxLookup, DBCtrls;

type
  TFormCadastroOSItemProdutos = class(TFormCadastroTEMPLATE)
    SQLTemplateOSA13ID: TStringField;
    SQLTemplateOSITICOD: TIntegerField;
    SQLTemplateOSIPICOD: TIntegerField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplateOSIPN3QTDE: TBCDField;
    SQLTemplateOSIPN2VLRCUSTO: TBCDField;
    SQLTemplateOSIPN2VLRTOTPROD: TBCDField;
    SQLTemplateUSUA60LOGIN: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    SQLProduto: TRxQuery;
    DSSQLProduto: TDataSource;
    RxDBLookupCombo1: TRxDBLookupCombo;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLUsuario: TRxQuery;
    SQLUsuarioUSUAICOD: TIntegerField;
    SQLUsuarioUSUAA60LOGIN: TStringField;
    DSOS: TDataSource;
    btProcuraCliente: TSpeedButton;
    SQLProdutoPRODN3VLRVENDA: TBCDField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label9: TLabel;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure DBEdit5Change(Sender: TObject);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLTemplateAfterEdit(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure btProcuraClienteClick(Sender: TObject);
    procedure DSSQLProdutoDataChange(Sender: TObject; Field: TField);
    procedure DSTemplateStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroOSItemProdutos: TFormCadastroOSItemProdutos;
  Estado : String;
  ValorAntigo : Double;
implementation

uses VarSYS, DataModulo, CadastroOS, CadastroProdutos, UnitLibrary,
  FormResources;

{$R *.dfm}

procedure TFormCadastroOSItemProdutos.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'OSITEMPRODUTO';
  if not SQLProduto.Active then SQLProduto.Active := True;
  if not SQLUsuario.Active then SQLUsuario.Active := True;
end;

procedure TFormCadastroOSItemProdutos.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateUSUA60LOGIN.AsString    := UsuarioAtualNome;
  SQLTemplateOSA13ID.AsString        := DSMasterTemplate.DataSet.FieldByName('OSA13ID').AsString;
  SQLTemplateOSITICOD.AsString       := DSMasterTemplate.DataSet.FieldByName('OSITICOD').AsString;
  SQLTemplateOSIPN3QTDE.AsFloat      := 0;
  SQLTemplateOSIPN2VLRCUSTO.AsFloat  := 0;
  SQLTemplateOSIPN3QTDE.AsFloat      := 1;

end;

procedure TFormCadastroOSItemProdutos.DBEdit5Change(Sender: TObject);
begin
  inherited;
  if SQLTemplate.State in dsEditModes then
     SQLTemplateOSIPN2VLRTOTPROD.AsFloat := SQLTemplateOSIPN3QTDE.AsFloat * SQLTemplateOSIPN2VLRCUSTO.AsFloat;
end;

procedure TFormCadastroOSItemProdutos.SQLTemplateAfterPost(DataSet: TDataSet);
begin
  inherited;
  if Estado = 'dsInsert' then
     begin
        DSOS.DataSet.Edit;
        DSOS.DataSet.FieldByName('OSN2VLRPRODUTOS').AsFloat := SQLTemplateOSIPN2VLRTOTPROD.AsFloat + DSOS.DataSet.FieldByName('OSN2VLRPRODUTOS').AsFloat;
        DSOS.DataSet.Post;
     end;

  if Estado = 'dsEdit' then
     begin
        if SQLTemplateOSIPN2VLRTOTPROD.AsFloat <> ValorAntigo then
           begin
             DSOS.DataSet.Edit;
             DSOS.DataSet.FieldByName('OSN2VLRPRODUTOS').AsFloat := (SQLTemplateOSIPN2VLRTOTPROD.AsFloat - ValorAntigo) + DSOS.DataSet.FieldByName('OSN2VLRPRODUTOS').AsFloat;
             DSOS.DataSet.Post;
           end;
     end;
end;

procedure TFormCadastroOSItemProdutos.SQLTemplateAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if SQLTemplate.State in [dsEdit] then
     ValorAntigo := SQLTemplateOSIPN2VLRTOTPROD.AsFloat
  else
     ValorAntigo := 0;
end;

procedure TFormCadastroOSItemProdutos.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  if SQLTemplate.State in [dsInsert] then
     Estado := 'dsInsert'
  else if SQLTemplate.State in [dsEdit] then
     Estado := 'dsEdit'
  else
     Estado := '';

  if SQLTemplate.State in dsEditModes then
     SQLTemplateOSIPN2VLRTOTPROD.AsFloat := SQLTemplateOSIPN3QTDE.AsFloat * SQLTemplateOSIPN2VLRCUSTO.AsFloat;
  inherited;
end;

procedure TFormCadastroOSItemProdutos.SQLTemplateBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  DSOS.DataSet.Edit;
  DSOS.DataSet.FieldByName('OSN2VLRPRODUTOS').AsFloat := DSOS.DataSet.FieldByName('OSN2VLRPRODUTOS').AsFloat - SQLTemplateOSIPN2VLRTOTPROD.AsFloat;
  DSOS.DataSet.Post;
end;

procedure TFormCadastroOSItemProdutos.btProcuraClienteClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('PRODICOD');
  FieldOrigem := 'PRODICOD';
  DataSetLookup := SQLProduto;
  CriaFormulario(TFormCadastroProduto,'FormCadastroProduto',False,True,False,'');
end;

procedure TFormCadastroOSItemProdutos.DSSQLProdutoDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  if not (SQLProduto.IsEmpty) and (SQLTemplate.State in dsEditModes) then
   if SQLProdutoPRODN3VLRVENDA.AsFloat <> 0 then
      SQLTemplateOSIPN2VLRCUSTO.AsFloat := SQLProdutoPRODN3VLRVENDA.AsFloat;
end;

procedure TFormCadastroOSItemProdutos.DSTemplateStateChange(
  Sender: TObject);
begin
  inherited;
  if (DSOS.DataSet.FieldByName('OSCSTATUS').AsString = 'C') or (DSOS.DataSet.FieldByName('OSCSTATUS').AsString = 'E') then
     DesabilitarBotoes(True,True,True,True,True);
end;

end.
