unit CadastroFornecedoresSemiAcabados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBCtrls, RxLookup, DBTables, DBActns,
  ActnList, ImgList, DB, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids,
  ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg;

type
  TFormCadastroFornecedoresSemiAcabados = class(TFormCadastroTEMPLATE)
    Label1: TLabel;
    InsProdSemi: TDBEdit;
    Label5: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    AcessaFornecedor: TSpeedButton;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    SQLTemplateFORNICOD: TIntegerField;
    SQLTemplatePRSAICOD: TIntegerField;
    SQLTemplatePSFOA30REFERENCIA: TStringField;
    SQLTemplatePSFOIPRZENTREGA: TIntegerField;
    SQLTemplatePSFOA60PRZPAGTO: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLFornecedores: TRxQuery;
    DSSQLFornecedores: TDataSource;
    SQLSemi: TRxQuery;
    SQLTemplateFORNA60RAZAOSOC: TStringField;
    SQLTemplatePRSAA60DESCR: TStringField;
    procedure AcessaFornecedorClick(Sender: TObject);
    procedure SQLTemplatePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroFornecedoresSemiAcabados: TFormCadastroFornecedoresSemiAcabados;

implementation

uses VarSYS, FormResources, CadastroFornecedor, UnitLibrary;

{$R *.dfm}

procedure TFormCadastroFornecedoresSemiAcabados.AcessaFornecedorClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('FORNICOD');
  FieldOrigem := 'FORNICOD' ;
  CriaFormulario(TFormCadastroFornecedor,'FormCadastroFornecedor',False,True,'') ;

end;

procedure TFormCadastroFornecedoresSemiAcabados.SQLTemplatePostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  Informa('Verifique se este Fornecedor já não esta associado a este Produto Semi-Acabado.'+char(#13)+'Obrigado');
  Abort;
end;

procedure TFormCadastroFornecedoresSemiAcabados.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'PRODSEMIFORNECEDOR' ;
  if not SQLTemplate.Active     then SQLTemplate.Active := true;
  if not SQLFornecedores.Active then SQLFornecedores.Active := true;

end;

procedure TFormCadastroFornecedoresSemiAcabados.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  SQLTemplatePRSAICOD.AsInteger := DSMasterTemplate.DataSet.FieldByName('PRSAICOD').AsInteger;
end;

end.
