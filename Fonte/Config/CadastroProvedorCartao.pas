unit CadastroProvedorCartao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBCtrls, DB, DBTables, DBActns, ActnList,
  ImgList, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls,
  ExtCtrls, RXCtrls, Buttons, jpeg, RxDBComb, ToolEdit, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroProvedorCartao = class(TFormCadastroTEMPLATE)
    SQLTemplatePRCAA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplatePRCAICOD: TIntegerField;
    SQLTemplatePRCAA60DESCR: TStringField;
    SQLTemplatePRCATPATHENVIA: TMemoField;
    SQLTemplatePRCATPATHRECEBE: TMemoField;
    SQLTemplatePRCAA60CARTAO: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    ComboCartao: TRxDBComboBox;
    Label7: TLabel;
    DBEdit2: TDBMemo;
    DBEdit3: TDBMemo;
    Label2: TLabel;
    Label3: TLabel;
    SendDirectory: TDirectoryEdit;
    ReceiveDirectory: TDirectoryEdit;
    CheckConsultaChq: TDBCheckBox;
    SQLTemplatePRCACCONSCHEQUE: TStringField;
    procedure SendDirectoryChange(Sender: TObject);
    procedure ReceiveDirectoryChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure CheckConsultaChqClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroProvedorCartao: TFormCadastroProvedorCartao;

implementation

{$R *.dfm}

procedure TFormCadastroProvedorCartao.SendDirectoryChange(Sender: TObject);
begin
  inherited;
  if DsTemplate.DataSet.State in dsEditModes then
    DsTemplate.DataSet.FieldByName('PRCATPATHENVIA').AsString := SendDirectory.EditText;
end;

procedure TFormCadastroProvedorCartao.ReceiveDirectoryChange(
  Sender: TObject);
begin
  inherited;
  if DsTemplate.DataSet.State in dsEditModes then
    DsTemplate.DataSet.FieldByName('PRCATPATHRECEBE').AsString := ReceiveDirectory.EditText;
end;

procedure TFormCadastroProvedorCartao.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PROVEDORCARTAO';
end;

procedure TFormCadastroProvedorCartao.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  if DataSet.FieldByName('PRCAA60CARTAO').AsVariant = null then
    begin
      Application.MessageBox('Você deve informar corretamente o cartão!','Ateção',MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONINFORMATION);
      DataSet.FieldByName('PRCAA60CARTAO').FocusControl;
      Abort;
    end;
  inherited;
end;

procedure TFormCadastroProvedorCartao.CheckConsultaChqClick(Sender: TObject);
begin
  inherited;
  if CheckConsultaChq.Checked then
    Application.MessageBox('Selecionando esta opção o sistema irá vincular o fechamento da venda(cupom) com a aprovação do cheque...!' + #13 +
                           'Se o cheque não for aprovado a venda não poderá ser encerrada, a não ser que se escolha outra forma de pagamento!',
                           'Atenção',MB_OK + MB_SYSTEMMODAL + MB_ICONEXCLAMATION + MB_SETFOREGROUND);
end;

end.
