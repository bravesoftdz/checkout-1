unit AjudaManutencao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, StrUtils, ShellApi;

type
  TFormAjudaManutencao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    procedure JvTransparentButton1Click(Sender: TObject);
    procedure JvTransparentButton2Click(Sender: TObject);
    procedure JvTransparentButton3Click(Sender: TObject);
    procedure JvTransparentButton4Click(Sender: TObject);
    procedure JvTransparentButton6Click(Sender: TObject);
    procedure JvTransparentButton8Click(Sender: TObject);
    procedure JvTransparentButton9Click(Sender: TObject);
    procedure JvTransparentButton7Click(Sender: TObject);
    procedure JvTransparentButton5Click(Sender: TObject);
    procedure JvTransparentButton10Click(Sender: TObject);
    procedure JvTransparentButton11Click(Sender: TObject);
    procedure JvTransparentButton12Click(Sender: TObject);
    procedure JvTransparentButton13Click(Sender: TObject);
    procedure JvTransparentButton1MouseEnter(Sender: TObject);
    procedure JvTransparentButton1MouseLeave(Sender: TObject);
    procedure JvTransparentButton14Click(Sender: TObject);
    procedure JvTransparentButton15Click(Sender: TObject);
    procedure JvTransparentButton17Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAjudaManutencao: TFormAjudaManutencao;

implementation

{$R *.dfm}

function PathSystemPlatafora: String;
begin
 if (Win32Platform = VER_PLATFORM_WIN32_NT) and
    (Win32MajorVersion >= 5) and (Win32MinorVersion >= 1) then
    Result := '\System32'
 else
    Result := '\System';
end;

procedure TFormAjudaManutencao.JvTransparentButton1Click(Sender: TObject);
begin
//   JvConnectNetwork.Execute;
end;

procedure TFormAjudaManutencao.JvTransparentButton2Click(Sender: TObject);
begin
//   JvAddPrinterDialog.Execute;
end;

procedure TFormAjudaManutencao.JvTransparentButton3Click(Sender: TObject);
begin
//   JvFindFilesDialog.Execute;
end;

procedure TFormAjudaManutencao.JvTransparentButton4Click(Sender: TObject);
begin
//   JvPainelControle.AppletName := '';
//   JvPainelControle.Execute;
end;

procedure TFormAjudaManutencao.JvTransparentButton6Click(Sender: TObject);
begin
//  JvRunDialog.Execute;
end;

function GetWindowsDrive(SoDrive : Boolean): String;
var
  S: string;
begin
  SetLength(S, MAX_PATH);
  if GetWindowsDirectory(PChar(S), MAX_PATH) > 0 then
    begin
      if SoDrive then
         Result := string(S)[1]
      else
         Result := Copy(S,0, Pos(#0,S)-1);
    end
  else
    Result := #0;
end;


procedure TFormAjudaManutencao.JvTransparentButton8Click(Sender: TObject);
begin
//   JvObjectPropertiesDialog.ObjectName := GetWindowsDrive(True) + ':\';
//   JvObjectPropertiesDialog.Execute;
end;

procedure TFormAjudaManutencao.JvTransparentButton9Click(Sender: TObject);
begin
//   JvObjectPropertiesDialog.ObjectName := '';
//   JvObjectPropertiesDialog.Execute;
end;

procedure TFormAjudaManutencao.JvTransparentButton7Click(Sender: TObject);
begin
//   JvAddHardwareDialog.Execute;
end;

procedure TFormAjudaManutencao.JvTransparentButton5Click(Sender: TObject);
begin
//   JvExitWindowsDialog.Execute;
end;

procedure TFormAjudaManutencao.JvTransparentButton10Click(Sender: TObject);
begin
   if FileExists(GetWindowsDrive(False) + PathSystemPlatafora + '\bdeadmin.cpl') then
      begin
//        JvPainelControle.AppletName := GetWindowsDrive(False) + PathSystemPlatafora + '\bdeadmin.cpl';
//        JvPainelControle.Execute;
      end
   else
      Application.MessageBox('Não foi encontrado o Arquivo do BDE.', 'Erro', MB_OK + MB_ICONEXCLAMATION + MB_SYSTEMMODAL);
end;

procedure TFormAjudaManutencao.JvTransparentButton11Click(Sender: TObject);
begin
   if FileExists(GetWindowsDrive(False) + PathSystemPlatafora + '\timedate.cpl') then
      begin
//        JvPainelControle.AppletName := GetWindowsDrive(False) + PathSystemPlatafora + '\timedate.cpl';
//        JvPainelControle.Execute;
      end
   else
      Application.MessageBox('Não foi encontrado o Arquivo para Ajuste de Data/Hora', 'Erro', MB_OK + MB_ICONEXCLAMATION + MB_SYSTEMMODAL);
end;

procedure TFormAjudaManutencao.JvTransparentButton12Click(Sender: TObject);
begin
   if FileExists(GetWindowsDrive(False) + '\System32\main.cpl') then
      begin
//        JvPainelControle.AppletName := GetWindowsDrive(False) + PathSystemPlatafora + '\main.cpl';
//        JvPainelControle.Execute;
      end
   else
      Application.MessageBox('Não foi encontrado o Arquivo para Ajuste de Teclado', 'Erro', MB_OK + MB_ICONEXCLAMATION + MB_SYSTEMMODAL);
end;

procedure TFormAjudaManutencao.JvTransparentButton13Click(Sender: TObject);
begin
   if FileExists(GetWindowsDrive(False) + PathSystemPlatafora + '\desk.cpl') then
      begin
//        JvPainelControle.AppletName := GetWindowsDrive(False) + PathSystemPlatafora + '\desk.cpl';
//        JvPainelControle.Execute;
      end
   else
      Application.MessageBox('Não foi encontrado o Arquivo para Ajuste de Video', 'Erro', MB_OK + MB_ICONEXCLAMATION + MB_SYSTEMMODAL);

end;

procedure TFormAjudaManutencao.JvTransparentButton1MouseEnter(
  Sender: TObject);
begin
//   TJvTransparentButton(Sender).Font.Color := clNavy;
//   TJvTransparentButton(Sender).Color      := $00FCF3E2;
end;

procedure TFormAjudaManutencao.JvTransparentButton1MouseLeave(
  Sender: TObject);
begin
//   TJvTransparentButton(Sender).Font.Color := clBlack;
//   TJvTransparentButton(Sender).Color      := clWhite;
end;

procedure TFormAjudaManutencao.JvTransparentButton14Click(Sender: TObject);
begin
  WinExec(Pchar(ExtractFilePath(Application.ExeName) + 'Config.EXE'),SW_NORMAL);
end;

procedure TFormAjudaManutencao.JvTransparentButton15Click(Sender: TObject);
begin
  ShellExecute(0,'open', PChar(ExtractFilePath(Application.ExeName)) , '', '',SW_NORMAL);
end;

procedure TFormAjudaManutencao.JvTransparentButton17Click(Sender: TObject);
begin
  Close;
end;

procedure TFormAjudaManutencao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
