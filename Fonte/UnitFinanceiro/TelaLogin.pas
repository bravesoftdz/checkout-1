unit TELALOGIN;
interface
uses
  VarSYS, JPEG, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Db, DBTables, ConerBtn, Grids, DBGrids,
  DBCtrls, Placemnt, RXCtrls, RxQuery, Mask, ToolEdit, IniFiles, EAppProt,
  dxGDIPlusClasses, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;
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
    logo: TImage;
    Label1: TLabel;
    ComboPdv: TDBLookupComboBox;
    EditTerminal: TEdit;
    RxLabel1: TLabel;
    EditSenha: TEdit;
    Label3: TLabel;
    EditUsuario: TEdit;
    BtnOk: TBitBtn;
    BitBtn2: TBitBtn;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ptopo: TAdvOfficeStatusBar;
    RxLabel5: TRxLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormStorageRestorePlacement(Sender: TObject);
    procedure ComboPdvExit(Sender: TObject);
    procedure EditSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    NumTentativas:Integer;
  public
    { Public declarations }
  end;
var
  FormTelaLogin: TFormTelaLogin;
implementation

uses DataModulo, UnitLibrary, UnSoundPlay;

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

  if DM.SQLUsuarioUSUAA5SENHA.Value = EditSenha.Text then
  begin
    ModalResult := mrOk ;
  end
  else begin
//    Informa('Senha Inválida');
    Inc(NumTentativas) ;
    if NumTentativas = 3 then
      ModalResult := mrCancel
    else
      EditSenha.SetFocus ;
  end ;

  UsuarioMaster := False;
  if DM.SQLUsuarioUSUACUSERMASTER.AsString = 'S' then
    UsuarioMaster := True
  else
    UsuarioMaster := False;

  DM.UsuarioAtual  := DM.SQLUsuarioUSUAICOD.Value ;
  DM.DataBaseSistema := Date;
  UsuarioCorrente  := DM.SQLUsuarioUSUAICOD.Value ;
  TerminalCorrente := SQLTerminalTermICod.Value ;
  EmpresaPadrao    := SQLTerminalEMPRICOD.AsString;
  EmpresaCorrente  := SQLTerminalEMPRICOD.AsInteger;

  if dm.SQLUsuarioUSUACPERMITEFIN.Value <> 'S' then
    begin
      SoundPlay('Acesso Negado.wav',Sender);
      ShowMessage('Atenção! Usuário não possui permissão para entrar no módulo Financeiro!');
      Application.Terminate;
    end;

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
var Inifile: TInifile;
    LinhaA, LinhaB, LinhaC, LinhaD: String;
    Grupo:String;
const
    Msg= 'Faltam menos de 5 dias para a aplicação bloquear. Deseja liberar agora ?';
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
  if FileExists('NaoTestaTerminal.txt') then
    SQLTerminal.MacroByName('MFiltro').Value := '0=0'
  else
    SQLTerminal.MacroByName('MFiltro').Value := 'TERMA60NOMECOMPUT = "' + AnsiUpperCase(RetornarNomeComputador) + '"';
  SQLTerminal.Open ;

  if SQLTerminal.EOF then
  begin
    Informa('Não há nenhum terminal configurado para ser usado neste computador !') ;
    Halt ;
    exit ;
  end ;

  NumTentativas := 0 ;
  DM.SQLUsuario.Open ;
  {Carrega Logo do Parceiro}
  if FileExists('Bmp\logo parceiro.jpg') then
    logo.Picture.LoadFromFile('Bmp\logo parceiro.Jpg') ;
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
  if Key = Char(13) Then
    begin
      Key := CHR(0) ;
      Perform(Wm_NextDlgCtl, 0, 0) ;
    End;
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

procedure TFormTelaLogin.EditSenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    begin
      if not DM.SQLUsuario.Locate('USUAA5SENHA', EditSenha.Text, [])  then
        begin
          EditSenha.SetFocus;
          EditUsuario.Text := 'Não Encontrado';
          EditUsuario.Update;
          Beep;
          SoundPlay('Acesso Negado.wav',Sender);
          Exit;
        end
      else
        begin
          EditUsuario.Text := dm.SQLUsuarioUSUAA60LOGIN.Value;
          EditUsuario.Update;
        end;
    end;
end;

end.
