unit TELALOGIN;
interface
uses
  JPEG, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Db, DBTables, ConerBtn, Grids, DBGrids,
  DBCtrls, Placemnt;
type
  TFormTelaLogin = class(TForm)
    FormStorage: TFormStorage;
    EditUsuario: TEdit;
    EditSenha: TEdit;
    BtnOk: TBitBtn;
    BitBtn2: TBitBtn;
    RxLabel1: TLabel;
    RxLabel3: TLabel;
    Label1: TLabel;
    Shape1: TShape;
    procedure BitBtn2Click(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EditSenhaExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    JPG : TJPEGImage ;
    BMP : TBitMap;
    NumTentativas:Integer;
  public
    { Public declarations }
  end;
var
  FormTelaLogin: TFormTelaLogin;
implementation

uses DataModulo, UnitLibrary ;

{$R *.DFM}

procedure TFormTelaLogin.BitBtn2Click(Sender: TObject);
begin
  ModalResult := mrCancel ;
end ;

procedure TFormTelaLogin.BtnOkClick(Sender: TObject);
begin
  if not DM.SQLUsuarios.Locate('USUAA60LOGIN', EditUsuario.Text, []) then
  begin
    Informa('Usuário não cadastrado') ;
    EditUsuario.SetFocus ;
    Exit ;
  end ;

  if DM.SQLUsuariosUSUAA5SENHA.Value = EditSenha.Text then
  begin
    ModalResult := mrOk ;
  end
  else begin
    Informa('Senha Inválida');
    Inc(NumTentativas) ;
    if NumTentativas = 3 then
      ModalResult := mrCancel
    else
      EditSenha.SetFocus ;
  end ;

  DM.UsuarioAtual := DM.SQLUsuariosUSUAICOD.Value ;

  {EmpresaPadrao     := DMRest.QryConfiguracaoEmprA3Cod.Value ;
  UsuarioAtual      := DMRest.QryFuncionarioFuncICod.AsString ;
  TerminalAtual     := QryTerminalTermICod.Value ;
  TerminalAtualData := QryTerminalTermDCaix.AsString ;
  TerminalModo      := 'V' ;
  ECFAtual          := QryTerminalTermA30ModECF.Value ;
  PortaECFAtual     := QryTerminalTermA5PortECF.Value ;
  CamImprMatr       := QryTerminalTERMA60PATHIMPRMATR.Value ;
  if ECFAtual = '' then
  begin
    Informa('As informações sobre o ECF está erradas, o sistema não irá funcionar corretamente!') ;
  end ;}
end ;

procedure TFormTelaLogin.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree ;
end;

procedure TFormTelaLogin.FormCreate(Sender: TObject);
begin
  FormStorage.IniFileName := Application.Title + '.ini' ;
  FormStorage.IniSection  := Name;
  FormStorage.Active      := true;

  NumTentativas := 0 ;
end;

procedure TFormTelaLogin.FormShow(Sender: TObject);
begin
  //FECHAR TELA DE SPLASH
  if Application.FindComponent('FormTelaSplash') <> nil then
    (Application.FindComponent('FormTelaSplash') as TForm).Close ;

  Application.ProcessMessages ;

  if (EditUsuario.Text <> '') and (DM.SQLUsuarios.Locate('USUAA60LOGIN', EditUsuario.Text, [])) then
    EditSenha.SetFocus
  else
    EditUsuario.SetFocus ;
End ;

procedure TFormTelaLogin.FormKeyPress(Sender: TObject; var Key: Char);
Var
  Objeto:TComponent;
begin
  if Key=char(13) Then
    begin
      Objeto:=(Sender as TForm).ActiveControl;
      //If (Objeto is TDBLookUpComboBox) AND (Objeto as TDBLookUpComboBox).IsDropDown Then Begin (Objeto as TDBLookUpComboBox).CloseUp(True);Application.ProcessMessages;End;
      Key:=CHR(0);
      Perform(Wm_NextDlgCtl,0,0);
    End;
end;

procedure TFormTelaLogin.EditSenhaExit(Sender: TObject);
begin
   {if (EditSenha.Text <> '') Then
    if (DM.SQLUsuariosUSUAA60SENHA.Value = EditSenha.Text) then
      if EditUsuario.Text <> '' then
    else
      begin
        Informa('Senha Inválida') ;
        Inc(NumTentativas);
        if NumTentativas = 3 Then
          ModalResult := mrCancel
        else
          EditSenha.SetFocus ;
      End;}
end;

procedure TFormTelaLogin.FormActivate(Sender: TObject);
begin
  FormTelaLogin.Caption := 'Bem Vindo ao ' + Application.Title ;
end ;

end.
