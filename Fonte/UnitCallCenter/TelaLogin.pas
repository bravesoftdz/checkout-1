unit TELALOGIN;
interface
uses
  VarSYS, JPEG, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Db, DBTables, ConerBtn, Grids, DBGrids,
  DBCtrls, Placemnt, RxQuery, RXCtrls;
type
  TFormTelaLogin = class(TForm)
    Versao: TLabel;
    SQLTerminal: TRxQuery;
    SQLTerminalTERMICOD: TIntegerField;
    SQLTerminalTERMCTIPO: TStringField;
    SQLTerminalTERMCSTATUSCAIXA: TStringField;
    SQLTerminalTERMDSTATUSCAIXA: TDateTimeField;
    SQLTerminalTERMA60DESCR: TStringField;
    SQLTerminalTERMCATIVO: TStringField;
    SQLTerminalECFA13ID: TStringField;
    SQLTerminalTERMA60NOMECOMPUT: TStringField;
    DSTblTerminal: TDataSource;
    EditTerminal: TEdit;
    Label1: TLabel;
    ComboPDV: TDBLookupComboBox;
    EditUsuario: TEdit;
    EditSenha: TEdit;
    BtnOk: TSpeedButton;
    Image1: TImage;
    Panel1: TPanel;
    LblRetorno: TRxLabel;
    LblNomeModulo: TRxLabel;
    SQLTerminalEMPRICOD: TIntegerField;
    SQLTerminalEMPRA60RAZAOSOC: TStringField;
    BtnCancel: TSpeedButton;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    FormStorage: TFormStorage;
    procedure BitBtn2Click(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EditSenhaExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure EditSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboPdvExit(Sender: TObject);
    procedure FormStorageRestorePlacement(Sender: TObject);
  private
    { Private declarations }
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
  if ComboPDV.Text = '' then
    begin
      Informa('Selecione o Terminal');
      ComboPDV.SetFocus;
      Exit;
    end ;

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
  else
    begin
      Informa('Senha Inválida');
      Inc(NumTentativas) ;
      if NumTentativas = 3 then
        ModalResult := mrCancel
      else
        EditSenha.SetFocus ;
    end ;

  DM.UsuarioAtual  := DM.SQLUsuariosUSUAICOD.Value ;
  UsuarioCorrente  := DM.SQLUsuariosUSUAICOD.Value ;
  UsuarioAtualNome := DM.SQLUsuariosUSUAA60LOGIN.Value ;
  TerminalCorrente := SQLTerminalTermICod.Value ;
  TerminalAtual    := TerminalCorrente;
  DM.SQLTerminalAtivo.Close ;
  DM.SQLTerminalAtivo.MacroByName('MFiltro').asString := 'TERMICOD = ' + SQLTerminalTermICod.asString;
  DM.SQLTerminalAtivo.Open ;
  TerminalAtualNome := DM.SQLTerminalAtivoTERMA60DESCR.Value ;
end ;

procedure TFormTelaLogin.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree ;
end;

procedure TFormTelaLogin.FormCreate(Sender: TObject);
begin
  FormStorage.IniFileName := DM.PathAplicacao + Application.Title + '.ini' ;
  FormStorage.IniSection  := Name;
  FormStorage.Active      := true;

  SQLTerminal.Close ;
  SQLTerminal.MacroByName('MFiltro').Value := 'TERMA60NOMECOMPUT = "' + AnsiUpperCase(RetornarNomeComputador) + '"';
  SQLTerminal.Open ;

  if SQLTerminal.EOF then
  begin
    Informa('Não há nenhum terminal configurado para ser usado neste computador !') ;
    Halt ;
    exit ;
  end ;

  Versao.Caption := 'Versão ' + VersaoAtualSis ;

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
      If Objeto.Name = 'EditSenha' Then Exit;
      Key:=CHR(0);
      Perform(Wm_NextDlgCtl,0,0);
    End;
end;

procedure TFormTelaLogin.EditSenhaExit(Sender: TObject);
begin
   if (EditSenha.Text <> '') Then
    if (DM.SQLUsuariosUSUAA5SENHA.Value = EditSenha.Text) then
      if EditUsuario.Text <> '' then
    else
      begin
        Informa('Senha Inválida') ;
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

procedure TFormTelaLogin.BtnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFormTelaLogin.EditSenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_RETURN then
      BtnOk.Click;
end;

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

end.
