unit Acesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RXCtrls, ExtCtrls, RXShell, Menus, StdCtrls, ComCtrls, ShellApi,
  GIFCtrl, Buttons, ConerBtn, IniFiles, jpeg, RxGIF, FileCtrl, DB, DBTables,
  IBDatabase, IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TFormPrincipal = class(TForm)
    TrayIcon: TRxTrayIcon;
    MenuTryIcon: TPopupMenu;
    ButtonClose: TMenuItem;
    Separator: TMenuItem;
    Panel1: TPanel;
    Label2: TLabel;
    ButtonFechar: TConerBtn;
    BancodeDados1: TMenuItem;
    N1: TMenuItem;
    MnRealizarCopiadeSeguranca: TMenuItem;
    Timer: TTimer;
    ImageFinanceiro: TImage;
    MnAtualizarExec: TMenuItem;
    Link1Checkout: TLabel;
    Link2Faturamento: TLabel;
    Link4Adm: TLabel;
    Link5Financeiro: TLabel;
    Link9Sair: TLabel;
    LinkIntegrador: TLabel;
    LinkConfigurador: TLabel;
    LinkAtivador: TLabel;
    LinkAcessoRemoto: TLabel;
    LinkChatSuporte: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ButtonCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormHide(Sender: TObject);
    procedure TrayIconClick(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ButtonFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonSairClick(Sender: TObject);
    procedure LojaAdvancedDrawItem(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; State: TOwnerDrawState);
    procedure BancodeDados1Click(Sender: TObject);
    procedure MnRealizarCopiadeSegurancaClick(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure MnAtualizarExecClick(Sender: TObject);
    procedure Link1CheckoutClick(Sender: TObject);
    procedure Link2FaturamentoClick(Sender: TObject);
    procedure Link5FinanceiroClick(Sender: TObject);
    procedure Link9SairClick(Sender: TObject);
    procedure Link4AdmClick(Sender: TObject);
    procedure LinkIntegradorClick(Sender: TObject);
    procedure LinkConfiguradorClick(Sender: TObject);
    procedure LinkAtivadorClick(Sender: TObject);
    procedure LinkAcessoRemotoClick(Sender: TObject);
    procedure LinkChatSuporteClick(Sender: TObject);
  private
    { Private declarations }
    AutoUpDate, Form : TIniFile;
    procedure RestoreWindow(Window : THandle);
    procedure OpenFile(PathFile : string);
    procedure MakeParty(TitleApplication, ApplicationName : string);
    procedure SetForm(FormName : string);
    function  ExisteModulo(PathFile : string) : Boolean;
  public
      Path, HoraINI, HoraFIM, Intervalo, LinhaTXT : String;
      Texto : TextFile;
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses WaitWindow, WindowsLibrary, TelaConfigAlias, AjudaManutencao, Backup,
  TelaAtualizaVersao;

{$R *.dfm}

procedure TFormPrincipal.RestoreWindow(Window : THandle);
var
 I : Integer;
begin
  ShowWindow(Window,SW_SHOWNORMAL);
  BringWindowToTop(Window);
  for I := 0 to 5 do
    begin
      FlashWindow(Window,True);
      Sleep(250);
    end;
  FlashWindow(Window,False);
  BringToFront;
  SetForegroundWindow(Window);
  FormPrincipal.Hide;
  Application.ShowMainForm := False;
  Application.ProcessMessages;
end;

procedure TFormPrincipal.OpenFile(PathFile : string);
begin
  ShellExecute(0,'Open',Pchar(PathFile),'',Pchar(Path),SW_SHOWNORMAL);
  Application.Minimize;
  Hide;
  Application.ShowMainForm := False;
  Application.ProcessMessages;
end;
function TFormPrincipal.ExisteModulo(PathFile : string) : Boolean;
begin
  ExisteModulo := True;
  Exit;
  if FileExists(PathFile) then
    ExisteModulo := True
  else
    ExisteModulo := False;
end;
procedure TFormPrincipal.MakeParty(TitleApplication,ApplicationName : string);
var
  ApplicationExists : THandle;
  Local : double;
  BackUpList : TStrings;
  Log : TextFile;
begin
  if not ExisteModulo(ApplicationName) then
    begin
      Application.MessageBox('Este m�dulo n�o est� habilitado ou n�o existe, favor entrar em contato com seu revendedor para halit�-lo!','Aten��o',MB_OK + MB_ICONEXCLAMATION + MB_SETFOREGROUND + MB_SYSTEMMODAL);
      Application.Minimize;
//      Hide;
      Application.ShowMainForm := False;
      Application.ProcessMessages;
    end;
  ApplicationExists := FindWindow('Tapplication',PChar(TitleApplication));
  if ApplicationExists > 0 then
    RestoreWindow(ApplicationExists)
  else
    OpenFile(Path + ApplicationName);
end;

procedure TFormPrincipal.SetForm(FormName : string);
begin
  Form := TIniFile.Create(GetCurrentDir + '\SystemControls.ini');
  Form.WriteString('Form','Name',FormName);
  Form.UpdateFile;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
var Hd: THandle;
    Texto : TextFile;
    Linha : String;
begin
  Timer.Enabled := False;
  if FileExists('C:\Unit\IntegradorAutoMatriz.TXT') then
    begin
      Timer.Enabled := True;
      AssignFile(Texto,'C:\Unit\IntegradorAutoMatriz.TXT');
      Reset(Texto);
      While not EOF(Texto) Do
        begin
          Readln(Texto,Linha);
          if Trim(Copy(Linha,1,18)) = 'HORA INICIO' then
            HoraINI := Copy(Linha,21,25);
          if Trim(Copy(Linha,1,18)) = 'HORA FIM' then
            HoraFIM := Copy(Linha,21,25);
          if Trim(Copy(Linha,1,18)) = 'INTERVALO MINUTOS' then
            Intervalo := Copy(Linha,21,25);
        end;
      CloseFile(Texto);
      if Intervalo <> '' then
        begin
          try
            Timer.Interval := StrToInt(Intervalo) * 1000 * 60;
          except
            Application.ProcessMessages;
          end;
        end;
    end;
  if FileExists('C:\Unit\IntegradorAutoFilial.TXT') then
    begin
      Timer.Enabled := True;
      AssignFile(Texto,'C:\Unit\IntegradorAutoFilial.TXT');
      Reset(Texto);
      While not EOF(Texto) Do
        begin
          Readln(Texto,Linha);
          if Trim(Copy(Linha,1,18)) = 'HORA INICIO' then
            HoraINI := Copy(Linha,21,25);
          if Trim(Copy(Linha,1,18)) = 'HORA FIM' then
            HoraFIM := Copy(Linha,21,25);
          if Trim(Copy(Linha,1,18)) = 'INTERVALO MINUTOS' then
            Intervalo := Copy(Linha,21,25);
        end;
      CloseFile(Texto);
      if Intervalo <> '' then
        begin
          try
            Timer.Interval := StrToInt(Intervalo) * 1000 * 60;
          except
            Application.ProcessMessages;
          end;
        end;
    end;

  if ParamStr(1) = 'Min' then
    ButtonSairClick(nil);
  Path := GetCurrentDir + '\';
  TrayIcon.Show;
end;

procedure TFormPrincipal.ButtonFecharClick(Sender: TObject);
begin
  Free;
  Application.Terminate;
end;

procedure TFormPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Application.ShowMainForm := False;
  Hide;
  Application.ProcessMessages;
  Abort;
end;

procedure TFormPrincipal.FormHide(Sender: TObject);
begin
  if Application.ShowMainForm = True then
    Application.ShowMainForm := False;
end;

procedure TFormPrincipal.TrayIconClick(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Application.ShowMainForm := True;
  Show;
  Application.BringToFront;
end;

procedure TFormPrincipal.ButtonCloseClick(Sender: TObject);
begin
  Free;
  Application.Terminate;
end;

procedure TFormPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Char(27) then
    ButtonSairClick(Sender);
end;

procedure TFormPrincipal.ButtonSairClick(Sender: TObject);
begin
  Application.ShowMainForm := False;
  Hide;
  Application.ProcessMessages;
end;

procedure TFormPrincipal.LojaAdvancedDrawItem(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; State: TOwnerDrawState);
begin
  TMenuItem(Sender).Enabled := ExisteModulo('Loja.exe');
end;

procedure TFormPrincipal.BancodeDados1Click(Sender: TObject);
begin
  Application.CreateForm(TFormConfigAlias,FormConfigAlias);
  FormConfigAlias.ShowModal;
  if FormConfigAlias.ModalResult = MrOK then
    begin
      FormConfigAlias.Database.Session.SaveConfigFile;
      FormConfigAlias.ListBox.Items.SaveToFile(Path + 'ConfigAlias.ini');
//      FormConfigAlias.Database.Params.SaveToFile(Path + 'CaminhoAtualBanco.ini');
    end;
  FormConfigAlias.Destroy;
end;

procedure TFormPrincipal.MnRealizarCopiadeSegurancaClick(Sender: TObject);
begin
  Application.CreateForm(TFormBackup, FormBackup);
  FormBackup.Show;
end;

procedure TFormPrincipal.TimerTimer(Sender: TObject);
begin
  // Chama o Integrador Automatico conforme Temporizador
  if ( time >= StrToTime(HoraINI) ) and ( time <= StrToTime(HoraFIM) ) then
    begin
      if FileExists('C:\Unit\IntegradorAutoMatriz.TXT') then
        WinExec(Pchar('C:\Unit\Gestao\Integrador.exe MATRIZ'),SW_MINIMIZE);
      if FileExists('C:\Unit\IntegradorAutoFilial.TXT') then
        WinExec(Pchar('C:\Unit\Gestao\Integrador.exe FILIAL'),SW_MINIMIZE);
    end;
end;

procedure TFormPrincipal.MnAtualizarExecClick(Sender: TObject);
begin
{  Application.CreateForm(TFormTelaAtualizaVersao, FormTelaAtualizaVersao);
  FormTelaAtualizaVersao.Show;}
end;

procedure TFormPrincipal.Link1CheckoutClick(Sender: TObject);
begin
  MakeParty('ADVANCED CONTROL PDV','Checkout.exe');
end;

procedure TFormPrincipal.Link2FaturamentoClick(Sender: TObject);
begin
  MakeParty('Advanced Control Faturamento','Faturamento.exe');
end;

procedure TFormPrincipal.Link5FinanceiroClick(Sender: TObject);
begin
  MakeParty('Advanced Control Financeiro','Financeiro.exe');
end;

procedure TFormPrincipal.Link4AdmClick(Sender: TObject);
begin
  MakeParty('Advanced Control Administrativo','Loja.exe');
end;

procedure TFormPrincipal.LinkIntegradorClick(Sender: TObject);
begin
  MakeParty('Advanced Control Integrador','Integrador.exe');
end;

procedure TFormPrincipal.LinkConfiguradorClick(Sender: TObject);
begin
  MakeParty('Advanced Control Configurador','Configurador.exe');
end;

procedure TFormPrincipal.LinkAtivadorClick(Sender: TObject);
begin
  if FileExists('C:\Unit\Gestao\Ativador.EXE') then
    WinExec(Pchar('C:\Unit\Gestao\Ativador.EXE'),SW_SHOW);
end;

procedure TFormPrincipal.LinkAcessoRemotoClick(Sender: TObject);
begin
  MakeParty('Advanced Control Configurador','C:\Unit\Instaladores\AA_v3.exe');
end;

procedure TFormPrincipal.LinkChatSuporteClick(Sender: TObject);
begin
//  MakeParty('Advanced Control Configurador','http://www.interface.agoraos.com.br/automasystem/');
    shellExecute(0, 'open', PChar('http://interface.agoraos.com.br/automasystem/'), '', '', SW_SHOWNORMAL);

end;

procedure TFormPrincipal.Link9SairClick(Sender: TObject);
begin
  Free;
  Application.Terminate;
end;

end.
