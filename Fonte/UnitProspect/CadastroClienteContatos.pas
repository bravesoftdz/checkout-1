unit CadastroClienteContatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls;

type
  TFormCadastroClienteContatos = class(TFormCadastroTEMPLATE)
    SQLTemplatePRCLA13ID: TStringField;
    SQLTemplatePCCOICOD: TIntegerField;
    SQLTemplatePCCOA60NOME: TStringField;
    SQLTemplatePCCOA15FONE1: TStringField;
    SQLTemplatePCCOA15FONE2: TStringField;
    SQLTemplatePCCOA15FAX: TStringField;
    SQLTemplatePCCOA60EMAIL: TStringField;
    SQLTemplatePCCOA30FUNCAO: TStringField;
    SQLTemplatePCCOA30SETOR: TStringField;
    SQLTemplatePCCOA254OBS: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    GroupBox3: TGroupBox;
    DBMemo1: TDBMemo;
    SQLTemplateEMPRICOD: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroClienteContatos: TFormCadastroClienteContatos;

implementation

uses VarSYS;

{$R *.dfm}

procedure TFormCadastroClienteContatos.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PRCLCONTATO';
end;

procedure TFormCadastroClienteContatos.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplatePRCLA13ID.AsString := DSMasterTemplate.DataSet.FieldByName('PRCLA13ID').AsString;
end;

procedure TFormCadastroClienteContatos.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateEMPRICOD.AsInteger := EmpresaCorrente;
end;

end.
