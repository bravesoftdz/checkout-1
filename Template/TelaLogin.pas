unit TELALOGIN;
interface
uses
  VarSYS, JPEG, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Db, DBTables, ConerBtn, Grids, DBGrids,
  DBCtrls, Placemnt, RXCtrls, RxQuery;
type
  TFormTelaLogin = class(TForm)
    FormStorage: TFormStorage;
    DSTblTerminal: TDataSource;
    SQLTerminal: TRxQuery;
    SQLTerminalTERMICOD: TIntegerField;
    SQLTerminalTERMCTIPO: TStringField;
    SQLTerminalTERMCSTATUSCAIXA: TStringField;
    SQLTerminalTERMDSTATUSCAIXA: TDateTimeField;
    SQLTerminalTERMA60DESCR: TStringField;
    SQLTerminalTERMCATIVO: TStringField;
    SQLTerminalECFA13ID: TStringField;
    SQLTerminalTERMA60NOMECOMPUT: TStringField;
    SQLTerminalEMPRICOD: TIntegerField;
    Panel1: TPanel;
    Image2: TImage;
    Panel2: TPanel;
    Label1: TLabel;
    RxLabel1: TLabel;
    Label3: TLabel;
    ComboPdv: TDBLookupComboBox;
    BtnOk: TBitBtn;
    BitBtn2: TBitBtn;
    EditTerminal: TEdit;
    EditSenha: TEdit;
    EditUsuario: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EditSenhaExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ComboPdvExit(Sender: TObject);
    procedure FormStorageRestorePlacement(Sender: TObject);
    procedure EditSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    NumTentativas:Integer;
    btNaoMuda : Boolean;
  public
    { Public declarations }
  end;
var
  FormTelaLogin: TFormTelaLogin;
implementation

uses DataModulo, UnitLibrary, UnSoundPlay ;

{$R *.DFM}

procedure TFormTelaLogin.BitBtn2Click(Sender: TObject);
begin
  ModalResult := mrCancel ;
end ;

procedure TFormTelaLogin.BtnOkClick(Sender: TObject);
begin
  if (ComboPDV.Text = '') then
  begin
    Informa('Selecione o Terminal');
    ComboPDV.SetFocus;
    Exit;
  end ;

  if not (SQLTerminalEMPRICOD.Value > 0) then
  begin
    Informa('Não há nehuma Empresa Padrão selecionada para o terminal,  o sistema não pode iniciar!');
    ComboPDV.SetFocus;
    ModalResult := mrCancel ;
    Exit;
  end ;

  if DM.SQLUsuariosUSUAA5SENHA.Value = EditSenha.Text then
  begin
    ModalResult := mrOk ;
  end
  else begin
    Inc(NumTentativas) ;
    if NumTentativas = 3 then
      ModalResult := mrCancel
    else
      EditSenha.SetFocus ;
  end ;

  UsuarioMaster := False;
  if DM.SQLUsuariosUSUACUSERMASTER.AsString = 'S' then
    UsuarioMaster := True
  else
    UsuarioMaster := False;

  DM.UsuarioAtual   := DM.SQLUsuariosUSUAICOD.Value ;
  UsuarioCorrente   := DM.SQLUsuariosUSUAICOD.Value ;
  TerminalCorrente  := SQLTerminalTermICod.Value ;
  TerminalAtual     := TerminalCorrente;
  EmpresaPadrao     := SQLTerminalEMPRICOD.AsString;
  EmpresaCorrente   := SQLTerminalEMPRICOD.AsInteger;

  if dm.SQLUsuariosUSUACPERMITECONFIG.Value <> 'S' then
    begin
      SoundPlay('Acesso Negado.wav',Sender);
      ShowMessage('Atenção! Usuário não possui permissão para entrar no módulo Configurador!');
      Application.Terminate;
    end;

  if DM.SQLEmpresa.Locate('EMPRICOD', EmpresaPadrao, []) then
    MatrizFilial := DM.SQLEmpresa.FieldByName('EMPRCMATRIZFILIAL').AsString ;

  DM.SQLTerminalAtivo.MacroByName('MFiltro').asString := 'TERMICOD = ' + SQLTerminalTermICod.asString;
  DM.SQLTerminalAtivo.Open;
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
  DM.SQLUsuarios.Open ;
  SQLTerminal.Open;
end;

procedure TFormTelaLogin.FormShow(Sender: TObject);
begin
  //FECHAR TELA DE SPLASH
  if Application.FindComponent('FormTelaSplash') <> nil then
    (Application.FindComponent('FormTelaSplash') as TForm).Close ;

  Application.ProcessMessages ;

  if (ComboPDV.KeyValue <> '') then
    EditSenha.SetFocus
  else
    ComboPDV.SetFocus ;
End ;

procedure TFormTelaLogin.FormKeyPress(Sender: TObject; var Key: Char);
Var
  Objeto : TComponent;
begin
  if (Key = Char(13)) and not btNaoMuda Then
    begin
      Key := CHR(0) ;
      Perform(Wm_NextDlgCtl, 0, 0) ;
    End;
end;

procedure TFormTelaLogin.EditSenhaExit(Sender: TObject);
begin
   if (EditSenha.Text <> '') Then
    if (DM.SQLUsuariosUSUAA5SENHA.Value = EditSenha.Text) then
      if EditUsuario.Text <> '' then
    else
      begin
        ShowMessage('Senha Inválida') ;
        Inc(NumTentativas);
        if NumTentativas = 3 Then
          ModalResult := mrCancel
        else
          EditSenha.SetFocus ;
      End;
end;

procedure TFormTelaLogin.FormActivate(Sender: TObject);
begin
  FormTelaLogin.Caption := 'Bem Vindo ao ' + Application.Title ;
end ;

procedure TFormTelaLogin.ComboPdvExit(Sender: TObject);
begin
  if (Sender as TDBLookUpComboBox).Text <> '' then
    EditTerminal.Text := IntToStr((Sender as TDBLookUpComboBox).KeyValue) ;
end;

procedure TFormTelaLogin.FormStorageRestorePlacement(Sender: TObject);
begin
  try
    if EditTerminal.Text <> '' then
      ComboPDV.KeyValue := EditTerminal.Text ;
  except
    Application.ProcessMessages ;
  end ;
end;

procedure TFormTelaLogin.EditSenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    begin
      if not DM.SQLUsuarios.Locate('USUAA5SENHA', EditSenha.Text, [])  then
        begin
          EditSenha.SetFocus;
          EditUsuario.Text := 'Não Encontrado';
          EditUsuario.Update;
          SoundPlay('Acesso Negado.wav',Sender);
          Exit;
        end
      else
        begin
          EditUsuario.Text := dm.SQLUsuariosUSUAA60LOGIN.Value;
          EditUsuario.Update;
        end;
    end;
end;

end.
