unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RXShell, Menus, ShellAPI, IniFiles, AppEvnts, TLHelp32,
  RestClient, RestUtils;

type
  TfrmAtualizarPHP = class(TForm)
    TrayIcon: TRxTrayIcon;
    Timer: TTimer;
    PopupMenuMenuTryIcon: TPopupMenu;
    MenuItemMnImportarTabelasConfiguracao: TMenuItem;
    MenuItemN1: TMenuItem;
    MenuItemButtonClose: TMenuItem;
    ApplicationEvents1: TApplicationEvents;
    RestClient: TRestClient;
    procedure TimerTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MenuItemAbrir1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MenuItemMnImportarTabelasConfiguracaoClick(Sender: TObject);
    procedure MenuItemButtonCloseClick(Sender: TObject);
    procedure ApplicationEvents1Minimize(Sender: TObject);
    procedure TrayIconDblClick(Sender: TObject);
  private
    { Private declarations }
    url : string;
    Tempo : Integer;
    procedure AtualizarPHP;
  public
    { Public declarations }
  end;

var
  frmAtualizarPHP: TfrmAtualizarPHP;

implementation

uses
  TelaAutenticaUsuario;

{$R *.dfm}

procedure TfrmAtualizarPHP.TimerTimer(Sender: TObject);
begin
  AtualizarPHP;
end;

procedure TfrmAtualizarPHP.FormCreate(Sender: TObject);
var Inifile: TInifile;
begin
  top := Screen.Height - Height - 50;
  left := Screen.Width - Width;
  IniFile := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'config.ini');
  Tempo := StrToInt(IniFile.ReadString('CICLO', 'TEMPOCICLO', '0'));
  url := IniFile.ReadString('ATUALIZAR', 'url', '');
  IniFile.Free;
  Timer.Interval := Tempo;
end;

procedure TfrmAtualizarPHP.AtualizarPHP;
begin
  if url <> EmptyStr then
  begin
    try
      try
        RestClient.Resource(url).Accept(RestUtils.MediaType_Json).GetAsDataSet();
      except
        on E: Exception do
        begin
        end;
      end;
      TrayIcon.Animated := True;
    finally
    end;
  end;
end;

procedure TfrmAtualizarPHP.MenuItemAbrir1Click(Sender: TObject);
begin
  AtualizarPHP;
end;

procedure TfrmAtualizarPHP.FormClose(Sender: TObject;
  var Action: TCloseAction);
var Password: string;
begin
  Application.CreateForm(TFormTelaAutenticaUsuario, FormTelaAutenticaUsuario);
  FormTelaAutenticaUsuario.ShowModal;
  if (FormTelaAutenticaUsuario.ModalResult = MrCancel) then
  begin
    FormTelaAutenticaUsuario.Close;
    FormTelaAutenticaUsuario.Free;
    Action := caNone;
    exit;
  end;
  if (FormTelaAutenticaUsuario.ModalResult = MrOK) and (FormTelaAutenticaUsuario.EditSenha.Text <> '') then
  begin
    Password := UpperCase(FormTelaAutenticaUsuario.EditSenha.Text);
    if (Password = 'DELPHIPHP') then
    begin
      FormTelaAutenticaUsuario.Close;
      FormTelaAutenticaUsuario.Free;
      action := cafree;
      Application.Terminate;
    end
    else
    begin
      FormTelaAutenticaUsuario.Close;
      FormTelaAutenticaUsuario.Free;
      Action := caNone;
    end;
  end;
end;

procedure TfrmAtualizarPHP.MenuItemMnImportarTabelasConfiguracaoClick(
  Sender: TObject);
begin
  AtualizarPHP;
end;

procedure TfrmAtualizarPHP.MenuItemButtonCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAtualizarPHP.ApplicationEvents1Minimize(Sender: TObject);
begin
  Self.Hide();
  Self.WindowState := wsMinimized;
  TrayIcon.Enabled := True;
  TrayIcon.Animated := True;
  TrayIcon.Show;
end;

procedure TfrmAtualizarPHP.TrayIconDblClick(Sender: TObject);
begin
  TrayIcon.Enabled := False;
  Show();
  WindowState := wsNormal;
  Application.BringToFront();
end;


end.
