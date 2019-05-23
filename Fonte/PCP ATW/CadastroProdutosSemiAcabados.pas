unit CadastroProdutosSemiAcabados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, RxLookup;

type
  TFormCadastroProdutosSemiAcabados = class(TFormCadastroTEMPLATE)
    SQLTemplatePRSAICOD: TIntegerField;
    SQLTemplatePRSAA60DESCR: TStringField;
    SQLTemplatePRSAN3VLRCOMPRA: TBCDField;
    SQLTemplatePRSAN3VLRCOMPRAMED: TBCDField;
    SQLTemplatePRSAN3VLRCUSTO: TBCDField;
    SQLTemplatePRSAN3VLRCUSTOMED: TBCDField;
    SQLTemplatePRSAA254DADOSTEC: TStringField;
    SQLTemplatePRSAA254COMPQUIMICA: TStringField;
    SQLTemplatePRSAA60CODBAR: TStringField;
    SQLTemplatePRSAN3PESOLIQ: TBCDField;
    SQLTemplatePRSAN3PESOBRUTO: TBCDField;
    SQLTemplatePRSAN3QTDE: TBCDField;
    SQLTemplatePRSAA254DIMENSOES: TStringField;
    SQLTemplateICMSICOD: TIntegerField;
    SQLTemplateUNIDICOD: TIntegerField;
    SQLTemplatePRSAN3IPI: TBCDField;
    SQLTemplateMARCICOD: TIntegerField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateGRUPICOD: TIntegerField;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    Label17: TLabel;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBEdit16: TDBEdit;
    DBEdit7: TDBEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label14: TLabel;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit5: TDBEdit;
    DBMemo1: TDBMemo;
    Label11: TLabel;
    Label18: TLabel;
    DBMemo2: TDBMemo;
    Label19: TLabel;
    DBMemo3: TDBMemo;
    SQLICMS: TRxQuery;
    SQLMarca: TRxQuery;
    SQLUnidade: TRxQuery;
    SQLUnidadeUNIDICOD: TIntegerField;
    SQLUnidadeUNIDA5DESCR: TStringField;
    SQLUnidadePENDENTE: TStringField;
    SQLUnidadeREGISTRO: TDateTimeField;
    dsSQLUnidade: TDataSource;
    DSSQLMarca: TDataSource;
    DSSQLICMS: TDataSource;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLExec: TRxQuery;
    SpeedButton2: TSpeedButton;
    AcessaFornecedor: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure AcessaFornecedorClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroProdutosSemiAcabados: TFormCadastroProdutosSemiAcabados;

implementation

uses VarSYS, FormResources, CadastroInsumoProdSemAcabados,
  CadastroUnidade, CadastroInsumosFilhos,
  CadastroMarca, CadastroICMS, 
  CadastroFornecedoresSemiAcabados;

{$R *.dfm}

procedure TFormCadastroProdutosSemiAcabados.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PRODUTOSEMIACABADO';
  if not SQLUnidade.Active then SQLUnidade.Active := TRUE;
  if not SQLICMS.Active then SQLICMS.Active := true;
  if not SQLMarca.Active then SQLMarca.Active := true;

end;

procedure TFormCadastroProdutosSemiAcabados.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  if Application.MessageBox('Se você deletar um Produto Semi-Acabado poderá causar danos a árvore de produtos.'+Char(#13)+
                            'É aconselhável que não seja deletado nenhum Produto Semi-Acabado antes de conferir seus dependentes.'+char(#13)+
                            'Deseja continuar e deletar este Produto Semi-Acabado?','Atenção',MB_YESNO+MB_SYSTEMMODAL+MB_ICONQUESTION) = IdYes then
  else
    Abort;
end;

procedure TFormCadastroProdutosSemiAcabados.Button3Click(Sender: TObject);
begin
  inherited;
  If (Sender as TRxSpeedButton).Name='Button3' Then
    begin
      DSMasterSys := DsTemplate;
      CriaFormulario(TFormCadastroFornecedoresSemiAcabados,'FormCadastroFornecedoresSemiAcabados',True,False,SQLTemplatePRSAA60DESCR.AsString);
    end ;

end;

procedure TFormCadastroProdutosSemiAcabados.SpeedButton2Click(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('UNIDICOD');
  FieldOrigem := 'UNIDICOD' ;
  CriaFormulario(TFormCadastroUnidade,'FormCadastroUnidade',False,True,'') ;

end;

procedure TFormCadastroProdutosSemiAcabados.AcessaFornecedorClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('MARCICOD');
  FieldOrigem := 'MARCICOD' ;
  CriaFormulario(TFormCadastroMarca,'FormCadastroMarca',False,True,'') ;

end;

procedure TFormCadastroProdutosSemiAcabados.SpeedButton1Click(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('ICMSICOD');
  FieldOrigem := 'ICMSICOD' ;
  CriaFormulario(TFormCadastroICMS,'FormCadastroICMS',False,True,'') ;

end;

end.
