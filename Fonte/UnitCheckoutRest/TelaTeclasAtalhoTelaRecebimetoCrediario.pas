unit TelaTeclasAtalhoTelaRecebimetoCrediario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, jpeg, RXCtrls, EWall, AdvSmoothPanel,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaTeclasAtalhoTelaRecebimetoCrediario = class(TForm)
    RxLabel6: TRxLabel;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ptopo: TAdvOfficeStatusBar;
    RxLabel11: TRxLabel;
    ImgDesligar: TImage;
    AdvSmoothPanel1: TAdvSmoothPanel;
    dxfLabel1: TRxLabel;
    dxfLabel4: TRxLabel;
    dxfLabel5: TRxLabel;
    RxLabel4: TRxLabel;
    dxfLabel16: TRxLabel;
    RxLabel1: TRxLabel;
    dxfLabel3: TRxLabel;
    dxfLabel17: TRxLabel;
    dxfLabel6: TRxLabel;
    dxfLabel2: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImgDesligarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaTeclasAtalhoTelaRecebimetoCrediario: TFormTelaTeclasAtalhoTelaRecebimetoCrediario;

implementation

uses TelaItens, UnitLibrary;

{$R *.DFM}

procedure TFormTelaTeclasAtalhoTelaRecebimetoCrediario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_Escape) or (Key = VK_Return) then
    Close ;
end;

procedure TFormTelaTeclasAtalhoTelaRecebimetoCrediario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree ;
end;

procedure TFormTelaTeclasAtalhoTelaRecebimetoCrediario.ImgDesligarClick(
  Sender: TObject);
begin
  Close;
end;

end.
