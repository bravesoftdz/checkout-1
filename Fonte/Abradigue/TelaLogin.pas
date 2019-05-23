unit TELALOGIN;
interface
uses
  VarSYS, JPEG, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Db, DBTables, ConerBtn, Grids, DBGrids,
  DBCtrls, Placemnt, RXCtrls, RxQuery, Mask, ToolEdit;
type
  TFormTelaLogin = class(TForm)
    FormStorage: TFormStorage;
    Image1: TImage;
    Panel2: TPanel;
    EditUsuario: TEdit;
    EditSenha: TEdit;
    BtnOk: TBitBtn;
    BitBtn2: TBitBtn;
    RxLabel1: TLabel;
    Panel1: TPanel;
    RxLabel4: TRxLabel;
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
    EditTerminal: TEdit;
    ComboPdv: TDBLookupComboBox;
    Label1: TLabel;
    SQLTerminalEMPRICOD: TIntegerField;
    LblRetorno: TRxLabel;
    Label2: TLabel;
    DataBase: TDateEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EditSenhaExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormStorageRestorePlacement(Sender: TObject);
    procedure ComboPdvExit(Sender: TObject);
  private
    { Private declarations }
    NumTentativas:Integer;
  public
    { Public declarations }
  end;
var
  FormTelaLogin: TFormTelaLogin;
implementation

uses DataModulo, UnitLibrary;

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

  if not (SQLTerminalEMPRICOD.Value > 0) then
  begin
    Informa('Não há nehuma Empresa Padrão selecionada para o terminal,  o sistema não pode iniciar!');
    ComboPDV.SetFocus;
    ModalResult := mrCancel ;
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
  else begin
    Informa('Senha Inválida');
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

  DM.UsuarioAtual  := DM.SQLUsuariosUSUAICOD.Value ;
  DM.DataBaseSistema := DataBase.Date;
  UsuarioCorrente  := DM.SQLUsuariosUSUAICOD.Value ;
  TerminalCorrente := SQLTerminalTermICod.Value ;
  EmpresaPadrao    := SQLTerminalEMPRICOD.AsString;
  EmpresaCorrente  := SQLTerminalEMPRICOD.AsInteger;

  if DM.SQLEmpresa.Locate('EMPRICOD', EmpresaPadrao, []) then
    MatrizFilial := DM.SQLEmpresa.FieldByName('EMPRCMATRIZFILIAL').AsString ;

  if not DM.SQLConfigGeral.Active then DM.SQLConfigGeral.Open;
  DM.SQLConfigGeral.Edit;
  DM.SQLConfigGeralCFGEIEMPPADRAO.AsInteger := EmpresaCorrente;
  DM.SQLConfigGeral.Post;
  
  TerminalAtual    := TerminalCorrente;
  if DM.SQLTerminalAtivo.Active then
    DM.SQLTerminalAtivo.Close;
  DM.SQLTerminalAtivo.MacroByName('MFiltro').asString := 'TERMICOD = ' + SQLTerminalTermICod.asString;
  DM.SQLTerminalAtivo.Open;
end ;

procedure TFormTelaLogin.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree ;
end;

procedure TFormTelaLogin.FormCreate(Sender: TObject);
var
  Grupo : String;
begin
  FormStorage.IniFileName := Application.Title + '.ini' ;
  FormStorage.IniSection  := Name;
  FormStorage.Active      := true;

  if RetornarNomeComputador = '' then
  begin
    Informa('Não foi possível Descobrir o nome deste computador, a execução do sistema será cancelada!') ;
    Halt ;
    exit ;
  end ;

  SQLTerminal.Close ;
  SQLTerminal.MacroByName('MFiltro').Value := 'TERMA60NOMECOMPUT = "' + AnsiUpperCase(RetornarNomeComputador) + '"';
  SQLTerminal.Open ;

  if SQLTerminal.EOF then
  begin
    Informa('Não há nenhum terminal configurado para ser usado neste computador !') ;
    Halt ;
    exit ;
  end ;

  DataBase.Date := Date;
  NumTentativas := 0 ;
  DM.SQLUsuarios.Open ;
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
  Objeto : TComponent;
begin
  if Key = Char(13) Then
    begin
      Key := CHR(0) ;
      Perform(Wm_NextDlgCtl, 0, 0) ;
    End;
end;

procedure TFormTelaLogin.EditSenhaExit(Sender: TObject);
begin
{   if (EditSenha.Text <> '') Then
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
      End;        }
end;

procedure TFormTelaLogin.FormActivate(Sender: TObject);
begin
  FormTelaLogin.Caption := 'Bem Vindo ao ' + Application.Title ;
end ;

procedure TFormTelaLogin.FormStorageRestorePlacement(Sender: TObject);
begin
  try
    if EditTerminal.Text <> '' then
      ComboPDV.KeyValue := EditTerminal.Text ;
  except
    Application.ProcessMessages ;
  end ;
end;

procedure TFormTelaLogin.ComboPdvExit(Sender: TObject);
begin
  if (Sender as TDBLookUpComboBox).Text <> '' then
    EditTerminal.Text := IntToStr((Sender as TDBLookUpComboBox).KeyValue) ;
end;

end.
