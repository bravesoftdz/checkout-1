unit CadastroMovimentacaoEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, StdCtrls, ExtCtrls, DBCtrls, DBTables,
  DBActns, ActnList, ImgList, RxQuery, Menus, Mask, Grids, DBGrids,
  ComCtrls, RXCtrls, Buttons, jpeg, ToolEdit, RXDBCtrl;

type
  TFormCadastroMovimentacaoEstoque = class(TFormCadastroTEMPLATE)
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateMOVDA13ID: TStringField;
    SQLTemplateMEPDICOD: TIntegerField;
    SQLTemplateOPESICOD: TIntegerField;
    SQLTemplateMEPDDMOVIMENTO: TDateTimeField;
    SQLTemplateMEPDA255OBS: TStringField;
    SQLTemplateMEPDCCONLUIDO: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateUSUAA60LOGIN: TStringField;
    SQLTemplateUSUAICOD: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBDateEdit1: TDBDateEdit;
    DBMemo1: TDBMemo;
    DBLookupComboBox1: TDBLookupComboBox;
    SQLOpEstoque: TRxQuery;
    SQLOpEstoqueOPESICOD: TIntegerField;
    SQLOpEstoqueOPESA60DESCR: TStringField;
    DSSQLOpEstoque: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroMovimentacaoEstoque: TFormCadastroMovimentacaoEstoque;

implementation

uses UnitLibrary, VarSYS, FormResources, CadastroMovEstItem;

{$R *.dfm}

procedure TFormCadastroMovimentacaoEstoque.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'MOVESTPRODUCAO';
  if not SQLOpEstoque.Active then SQLOpEstoque.Active := true;
end;

procedure TFormCadastroMovimentacaoEstoque.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateMEPDCCONLUIDO.AsString := 'N';
end;

procedure TFormCadastroMovimentacaoEstoque.Button3Click(Sender: TObject);
begin
  inherited;
  DSMasterSys := DSTemplate;
  CriaFormulario(TFormCadastroMovEstItem, 'FormCadastroMovEstItem', False, False, SQLTemplateMOVDA13ID.AsString);
end;

end.
