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
    Checkout: TMenuItem;
    Faturamento: TMenuItem;
    Integrador: TMenuItem;
    ButtonClose: TMenuItem;
    Separator: TMenuItem;
    Loja: TMenuItem;
    Panel1: TPanel;
    Label2: TLabel;
    ButtonCash: TConerBtn;
    ButtonFaturamento: TConerBtn;
    ButtonAdministracao: TConerBtn;
    ButtonFechar: TConerBtn;
    ButtonIntegrador: TConerBtn;
    Configurador: TMenuItem;
    ButtonFinanceiro: TConerBtn;
    Financeiro: TMenuItem;
    BancodeDados1: TMenuItem;
    N1: TMenuItem;
    MnRealizarCopiadeSeguranca: TMenuItem;
    Timer: TTimer;
    ImageFinanceiro: TImage;
    N3: TMenuItem;
    MnAtualizarExec: TMenuItem;
    LiberarLicenaMensaldeLocao1: TMenuItem;
    Link1: TLabel;
    Link2: TLabel;
    Link3: TLabel;
    Link4: TLabel;
    Link5: TLabel;
    Link9: TLabel;
    procedure ButtonCheckoutClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormHide(Sender: TObject);
    procedure TrayIconClick(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ButtonFaturamentoClick(Sender: TObject);
    procedure ButtonAdministracaoClick(Sender: TObject);
    procedure ButtonFecharClick(Sender: TObject);
    procedure ButtonIntegradorClick(Sender: TObject);
    procedure ButtonConfiguradorClick(Sender: TObject);
    procedure LojaClick(Sender: TObject);
    procedure ButtonFinanceiroClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FinanceiroClick(Sender: TObject);
    procedure ButtonSairClick(Sender: TObject);
    procedure LojaAdvancedDrawItem(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; State: TOwnerDrawState);
    procedure BancodeDados1Click(Sender: TObject);
    procedure MnRealizarCopiadeSegurancaClick(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure MnAtualizarExecClick(Sender: TObject);
    procedure LiberarLicenaMensaldeLocao1Click(Sender: TObject);
    procedure Link1Click(Sender: TObject);
    procedure Link2Click(Sender: TObject);
    procedure Link3Click(Sender: TObject);
    procedure Link4Click(Sender: TObject);
    procedure Link5Click(Sender: TObject);
    procedure Link9Click(Sender: TObject);
  private
    { Private declarations }
    AutoUpDate, Form : TIniFile;
    procedure RestoreWindow(Window : THandle);
    procedure OpenFile(PathFile : string);
    procedure MakeParty(TitleApplication, ApplicationName : string);
    procedure SetForm(FormName : string);
    function  ExisteModulo(PathFile : string) : Boolean;
    procedure VerificaModulos;
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
      Application.MessageBox('Este módulo não está habilitado ou não existe, favor entrar em contato com seu revendedor para halitá-lo!','Atenção',MB_OK + MB_ICONEXCLAMATION + MB_SETFOREGROUND + MB_SYSTEMMODAL);
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
  VerificaModulos;
  TrayIcon.Show;
end;

procedure TFormPrincipal.ButtonFecharClick(Sender: TObject);
begin
  Free;
  Application.Terminate;
end;

procedure TFormPrincipal.ButtonCheckoutClick(Sender: TObject);
begin
  MakeParty('ADVANCED CONTROL PDV','Checkout.exe');
  if FileExists('C:\Unit\Gestao\CheckoutRest.exe') then
    MakeParty('ADVANCED CONTROL PDV','CheckoutRest.exe');
end;

procedure TFormPrincipal.ButtonFaturamentoClick(Sender: TObject);
begin
  MakeParty('Advanced Control Faturamento','Faturamento.exe');
end;

procedure TFormPrincipal.ButtonAdministracaoClick(Sender: TObject);
begin
  MakeParty('Advanced Control ADM','Loja.exe');
end;

procedure TFormPrincipal.ButtonIntegradorClick(Sender: TObject);
begin
  MakeParty('Advanced Control Integrador','Integrador.exe');
end;

procedure TFormPrincipal.ButtonConfiguradorClick(Sender: TObject);
begin
  MakeParty('Advanced Control Config','Configurador.exe');
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

procedure TFormPrincipal.LojaClick(Sender: TObject);
begin
  ButtonAdministracao.Click;
end;

procedure TFormPrincipal.ButtonFinanceiroClick(Sender: TObject);
begin
  MakeParty('Advanced Control Financeiro','Financeiro.exe');
end;

procedure TFormPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Char(27) then
    ButtonSairClick(Sender);
end;

procedure TFormPrincipal.FinanceiroClick(Sender: TObject);
begin
  ButtonFinanceiro.Click;
end;

procedure TFormPrincipal.ButtonSairClick(Sender: TObject);
begin
  Application.ShowMainForm := False;
  Hide;
  Application.ProcessMessages;
end;

procedure TFormPrincipal.VerificaModulos;
begin
  ButtonCash.Enabled          := ExisteModulo('Checkout.exe');
  ButtonAdministracao.Enabled := ExisteModulo('Loja.exe');
  ButtonFinanceiro.Enabled    := ExisteModulo('Financeiro.exe');
  ImageFinanceiro.Enabled     := ExisteModulo('Financeiro.exe');
  ButtonFaturamento.Enabled   := ExisteModulo('Faturamento.exe');
  ButtonIntegrador.Enabled    := ExisteModulo('Integrador.exe');
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
  Application.CreateForm(TFormTelaAtualizaVersao, FormTelaAtualizaVersao);
  FormTelaAtualizaVersao.Show;
end;

procedure TFormPrincipal.LiberarLicenaMensaldeLocao1Click(Sender: TObject);
begin
  if FileExists('C:\Unit\Gestao\Ativador.EXE') then
    WinExec(Pchar('C:\Unit\Gestao\Ativador.EXE'),SW_SHOW);
end;

procedure TFormPrincipal.Link1Click(Sender: TObject);
begin
  if FileExists('C:\Unit\Gestao\Checkout.exe') then
    MakeParty('ADVANCED CONTROL PDV','Checkout.exe');
  if FileExists('C:\Unit\Gestao\CheckoutRest.exe') then
    MakeParty('ADVANCED CONTROL PDV','CheckoutRest.exe');
end;

procedure TFormPrincipal.Link2Click(Sender: TObject);
begin
  MakeParty('Advanced Control Faturamento','Faturamento.exe');
end;

procedure TFormPrincipal.Link3Click(Sender: TObject);
begin
  ButtonAdministracao.Click;
end;

procedure TFormPrincipal.Link4Click(Sender: TObject);
begin
  ButtonFinanceiro.Click;
end;

procedure TFormPrincipal.Link5Click(Sender: TObject);
begin
  MakeParty('Advanced Control Integrador','Integrador.exe');
end;

procedure TFormPrincipal.Link9Click(Sender: TObject);
begin
  Free;
  Application.Terminate;
end;

end.
