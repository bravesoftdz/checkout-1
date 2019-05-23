unit CadastroFornecedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBCtrls, DB, DBTables, DBActns, ActnList,
  ImgList, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls,
  ExtCtrls, RXCtrls, Buttons, jpeg, RxLookup;

type
  TFormCadastroFornecedores = class(TFormCadastroTEMPLATE)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    InsProdSemi: TDBEdit;
    SQLFornecedores: TRxQuery;
    DSSQLFornecedores: TDataSource;
    DBMemo1: TDBMemo;
    SQLTemplateFORNICOD: TIntegerField;
    SQLTemplateISFOA30REFERENCIA: TStringField;
    SQLTemplateISFOIPRZENTREGA: TIntegerField;
    SQLTemplateISFOA60PRZPAGTO: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateINSUICOD: TIntegerField;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label5: TLabel;
    AcessaFornecedor: TSpeedButton;
    SQLTemplateFORNA60RAZAOSOC: TStringField;
    SQLInsumo: TRxQuery;
    SQLTemplateINSUA60DESCR: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplatePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure AcessaFornecedorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroFornecedores: TFormCadastroFornecedores;

implementation

uses VarSYS, FormResources, UnitLibrary, CadastroFornecedor, CadastroBanco;

{$R *.dfm}

procedure TFormCadastroFornecedores.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'INSUMOFORNECEDOR' ;
  if not SQLTemplate.Active     then SQLTemplate.Active := true;
  if not SQLFornecedores.Active then SQLFornecedores.Active := true;

end;

procedure TFormCadastroFornecedores.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateINSUICOD.AsInteger := DSMasterTemplate.DataSet.FieldByName('INSUICOD').AsInteger;
end;

procedure TFormCadastroFornecedores.SQLTemplatePostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  Informa('Verifique se este Fornecedor já não esta associado a este Insumo.'+char(#13)+'Obrigado');
  Abort;
end;

procedure TFormCadastroFornecedores.AcessaFornecedorClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('FORNICOD');
  FieldOrigem := 'FORNICOD' ;
  CriaFormulario(TFormCadastroFornecedor,'FormCadastroFornecedor',False,True,'') ;
end;

end.
