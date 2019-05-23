unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RXCtrls, ExtCtrls, RXShell, Menus, StdCtrls, ComCtrls;
type
  TFormPrincipal = class(TForm)
    TrayIcon: TRxTrayIcon;
    PanelTop: TPanel;
    PanelClient: TPanel;
    PanelButton: TPanel;
    ButtonLoja: TRxSpeedButton;
    ButtonCrediario: TRxSpeedButton;
    ButtonCheckout: TRxSpeedButton;
    ButtonCompras: TRxSpeedButton;
    ButtonFinanceiro: TRxSpeedButton;
    ButtonVendas: TRxSpeedButton;
    ButtonIntegrador: TRxSpeedButton;
    ButtonSobre: TRxSpeedButton;
    ButtonSair: TRxSpeedButton;
    MenuTryIcon: TPopupMenu;
    UnitChekcout1: TMenuItem;
    UnitCredirio1: TMenuItem;
    UnitLoja1: TMenuItem;
    UnitCompras1: TMenuItem;
    N1: TMenuItem;
    UnitFinanceiro1: TMenuItem;
    UnitVendas1: TMenuItem;
    UnitIntegra1: TMenuItem;
    Sair1: TMenuItem;
    Sair2: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    PanelAnimate: TPanel;
    Animate: TAnimate;
    Label1: TLabel;
    procedure ButtonCheckoutClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonSairClick(Sender: TObject);
    procedure TrayIconDblClick(Sender: TObject);
    procedure Sair2Click(Sender: TObject);
    procedure UnitChekcout1Click(Sender: TObject);
    procedure UnitCredirio1Click(Sender: TObject);
    procedure ButtonCrediarioClick(Sender: TObject);
    procedure ButtonSobreClick(Sender: TObject);
    procedure ButtonComprasClick(Sender: TObject);
    procedure ButtonLojaClick(Sender: TObject);
    procedure ButtonFinanceiroClick(Sender: TObject);
    procedure ButtonVendasClick(Sender: TObject);
    procedure ButtonIntegradorClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure UnitLoja1Click(Sender: TObject);
    procedure UnitCompras1Click(Sender: TObject);
    procedure UnitFinanceiro1Click(Sender: TObject);
    procedure UnitVendas1Click(Sender: TObject);
    procedure UnitIntegra1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure RestauraJanela(Janela : THandle);
    procedure AbreExecutavel(NomeCaminho : PChar);
  private

  Public
    JaExiste : THandle
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}
Procedure TFormPrincipal.RestauraJanela(Janela : THandle);
var
 I : Integer;
begin
  ShowWindow(Janela,SW_SHOWNORMAL);
  BringWindowToTop(Janela);
  for I :=0 to 5 do
    begin
      FlashWindow(Janela,True);
      Sleep(250);
    end;
  FlashWindow(Janela,False);
  BringToFront;
  SetForegroundWindow(Janela);
  FormPrincipal.Hide;
  Application.ShowMainForm := False;
  Application.ProcessMessages;
end;
procedure TFormPrincipal.AbreExecutavel(NomeCaminho : PChar);
begin
  PanelAnimate.Visible := True;
  PanelAnimate.Update;
  Animate.Active := True;
  WinExec(NomeCaminho,SW_SHOWNORMAL);
  Animate.Active := False;
  PanelAnimate.Visible := False;
  Application.Minimize;
  FormPrincipal.Hide;
  Application.ShowMainForm := False;
  Application.ProcessMessages;
end;
procedure TFormPrincipal.ButtonCheckoutClick(Sender: TObject);
begin
    JaExiste := FindWindow('Tapplication','Front Loja');
    if Jaexiste > 0 then
      begin
        RestauraJanela(JaExiste);
      end
    else
      begin
        AbreExecutavel('C:\Unit\Gestao\Checkout.exe');
      end;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
  TrayIcon.Show;
  ButtonCheckout.Enabled   := FileExists('C:\Unit\Gestao\UnitCheckout.exe');
  ButtonCompras.Enabled    := FileExists('C:\Unit\Gestao\UnitCompras.exe');
  ButtonCrediario.Enabled  := FileExists('C:\Unit\Gestao\UnitCrediario.exe');
  ButtonFinanceiro.Enabled := FileExists('C:\Unit\Gestao\UnitFinanceiro.exe');
  ButtonIntegrador.Enabled := FileExists('C:\Unit\Gestao\UnitIntegrador.exe');
  ButtonLoja.Enabled       := FileExists('C:\Unit\Gestao\UnitLoja.exe');
end;

procedure TFormPrincipal.ButtonSairClick(Sender: TObject);
begin
  Application.ShowMainForm := False;
  FormPrincipal.Hide;
  Application.ProcessMessages;
end;

procedure TFormPrincipal.TrayIconDblClick(Sender: TObject);
begin
  Application.ShowMainForm := True;
  FormPrincipal.Show;
  Application.BringToFront;
end;

procedure TFormPrincipal.Sair2Click(Sender: TObject);
begin
  FormPrincipal.Free;
  Application.Terminate;
end;

procedure TFormPrincipal.UnitChekcout1Click(Sender: TObject);
begin
  ButtonCheckout.Click;
end;

procedure TFormPrincipal.UnitCredirio1Click(Sender: TObject);
begin
  ButtonCrediario.Click;
end;

procedure TFormPrincipal.ButtonCrediarioClick(Sender: TObject);
var
  I : Integer;
begin
    JaExiste := FindWindow('Tapplication','Gestão Crediário');
    if Jaexiste > 0 then
      begin
       RestauraJanela(JaExiste);
      end
    else
      begin
        AbreExecutavel('C:\Unit\Gestao\UnitCrediario.exe');
      end;
end;

procedure TFormPrincipal.ButtonSobreClick(Sender: TObject);
begin
  ShowMessage('Em Construção !');
end;

procedure TFormPrincipal.ButtonComprasClick(Sender: TObject);
begin
    JaExiste := FindWindow('Tapplication','Compras');
    if JaExiste > 0 then
      begin
        RestauraJanela(JaExiste);
      end
    else
      begin
        AbreExecutavel('C:\Unit\Gestao\UnitCompras.exe');
      end;
end;

procedure TFormPrincipal.ButtonLojaClick(Sender: TObject);
begin
    JaExiste := FindWindow('Tapplication','Gestão Loja');
    if Jaexiste > 0 then
      begin
        RestauraJanela(JaExiste);
      end
    else
      begin
        AbreExecutavel('C:\Unit\Gestao\Loja.exe');
      end;
end;

procedure TFormPrincipal.ButtonFinanceiroClick(Sender: TObject);
begin
    JaExiste := FindWindow('Tapplication','Gestão Financeiro');
    if Jaexiste > 0 then
      begin
        RestauraJanela(JaExiste);
      end
    else
      begin
        AbreExecutavel('C:\Unit\Gestao\Financeiro.exe');
      end;
end;

procedure TFormPrincipal.ButtonVendasClick(Sender: TObject);
begin
    JaExiste := FindWindow('Tapplication','Gestão Faturamento');
    if Jaexiste > 0 then
      begin
        RestauraJanela(JaExiste);
      end
    else
      begin
        AbreExecutavel('C:\Unit\Gestao\Faturamento.exe');
      end;
end;

procedure TFormPrincipal.ButtonIntegradorClick(Sender: TObject);
begin
    JaExiste := FindWindow('Tapplication','Gestão Integrador');
    if Jaexiste > 0 then
      begin
        RestauraJanela(JaExiste);
      end
    else
      begin
        AbreExecutavel('C:\Unit\Gestao\Integrador.exe');
      end;
end;

procedure TFormPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ButtonSair.Click;
  Abort;
end;

procedure TFormPrincipal.UnitLoja1Click(Sender: TObject);
begin
  ButtonLoja.Click;
end;

procedure TFormPrincipal.UnitCompras1Click(Sender: TObject);
begin
  ButtonCompras.Click;
end;

procedure TFormPrincipal.UnitFinanceiro1Click(Sender: TObject);
begin
  ButtonFinanceiro.Click;
end;

procedure TFormPrincipal.UnitVendas1Click(Sender: TObject);
begin
  ButtonVendas.Click;
end;

procedure TFormPrincipal.UnitIntegra1Click(Sender: TObject);
begin
  ButtonIntegrador.Click;
end;

procedure TFormPrincipal.Sair1Click(Sender: TObject);
begin
  ButtonSobre.Click;
end;

procedure TFormPrincipal.FormHide(Sender: TObject);
begin
  if Application.ShowMainForm = True then
    Application.ShowMainForm := False;
end;

end.
