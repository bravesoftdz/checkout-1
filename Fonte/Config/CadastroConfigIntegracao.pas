unit CadastroConfigIntegracao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, RxDBComb, DBCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroConfigIntegracao = class(TFormCadastroTEMPLATE)
    SQLTemplateCFGIICOD: TIntegerField;
    SQLTemplateCFGIA60DESCR: TStringField;
    SQLTemplateCFGICTIPOCONEXAO: TStringField;
    SQLTemplateCFGIA100USUARIO: TStringField;
    SQLTemplateCFGIA30SENHA: TStringField;
    SQLTemplateCFGIA100POP3: TStringField;
    SQLTemplateCFGIA100SMTP: TStringField;
    SQLTemplateCFGIIPORTA: TIntegerField;
    SQLTemplateCFGITPATHORIGEM: TMemoField;
    SQLTemplateCFGITPATHDESTINO: TMemoField;
    SQLTemplateCFGA60DIALNAME: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    ComboTipoConexao: TRxDBComboBox;
    Label3: TLabel;
    Label4: TLabel;
    DBEditUser: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBMemoDestino: TDBMemo;
    Label8: TLabel;
    DBEditDial: TDBEdit;
    Label9: TLabel;
    DBEditPOP: TDBEdit;
    Label10: TLabel;
    DBEditSMTP: TDBEdit;
    SQLTemplateCFGIA100HOST: TStringField;
    Label11: TLabel;
    DBEditHost: TDBEdit;
    DBMemoOrigem: TDBMemo;
    SQLTemplateCFGIA5PORTAFTP: TStringField;
    Label12: TLabel;
    DBEditPorta: TDBEdit;
    DBEditSenha: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroConfigIntegracao: TFormCadastroConfigIntegracao;

implementation

{$R *.dfm}

procedure TFormCadastroConfigIntegracao.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CONFIGINTEGRACAO';
end;

procedure TFormCadastroConfigIntegracao.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('CFGICTIPOCONEXAO').AsString := 'E';
end;

procedure TFormCadastroConfigIntegracao.FormShow(Sender: TObject);
var
  I : integer;
begin
  inherited;
  for I := 0 to TabSheetDadosPrincipais.ControlCount - 1 do
    begin
      if TabSheetDadosPrincipais.Controls[I] is TDBEdit then
        begin
          if (TabSheetDadosPrincipais.Controls[I] as TDBEdit).Tag = 1 then (TabSheetDadosPrincipais.Controls[I] as TDBEdit).CharCase := ecLowerCase;
          if (TabSheetDadosPrincipais.Controls[I] as TDBEdit).Tag = 2 then (TabSheetDadosPrincipais.Controls[I] as TDBEdit).CharCase := ecNormal;
        end;
      if TabSheetDadosPrincipais.Controls[I] is TDBMemo then
        if (TabSheetDadosPrincipais.Controls[I] as TDBMemo).Tag = 1 then
          (TabSheetDadosPrincipais.Controls[I] as TDBMemo).OnKeyPress := nil;
    end;
end;

procedure TFormCadastroConfigIntegracao.SQLTemplateBeforePost(
  DataSet: TDataSet);
  procedure IsNull(Field,FieldMessage : string);
  begin
    if ((DataSet.FieldByName(Field).AsVariant = null) or
        (DataSet.FieldByName(Field).AsString = '')) then
      begin
        Application.MessageBox(PChar('O campo ' + FieldMessage + ' deve ser diferente preenchido!'),'Atenção',MB_OK + MB_ICONINFORMATION + MB_SYSTEMMODAL + MB_SETFOREGROUND);
        DataSet.FieldByName(Field).FocusControl;
        Abort;
        Exit;
      end;
  end;
begin
  IsNull('CFGICTIPOCONEXAO','Tipo de Conexão');
  case DataSet.FieldByName('CFGICTIPOCONEXAO').AsString[1] of
    'E',
    'F' : begin
            IsNull('CFGIA100USUARIO','Usuário');
            IsNull('CFGIA30SENHA','Senha');
            IsNull('CFGIA100HOST','Host');
            if DataSet.FieldByName('CFGICTIPOCONEXAO').AsString[1] = 'E' then
              begin
                IsNull('CFGIA100POP3','Servidor POP3');
                IsNull('CFGIA100SMTP','Servidor SMTP');
              end;
          end;
  end;
  case DataSet.FieldByName('CFGICTIPOCONEXAO').AsString[1] of
    'F',
    'L' : begin
            IsNull('CFGITPATHORIGEM','Caminho de Importação');
            IsNull('CFGITPATHDESTINO','Caminho de Exportação');
          end;
  end;
  inherited;
end;

end.
