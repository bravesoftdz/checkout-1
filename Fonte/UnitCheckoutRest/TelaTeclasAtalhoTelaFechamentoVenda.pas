unit TelaTeclasAtalhoTelaFechamentoVenda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, jpeg, RXCtrls, EWall, AdvSmoothPanel,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaTeclasAtalhoTelaFechamentoVenda = class(TForm)
    RxLabel6: TRxLabel;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ptopo: TAdvOfficeStatusBar;
    RxLabel11: TRxLabel;
    ImgDesligar: TImage;
    AdvSmoothPanel1: TAdvSmoothPanel;
    dxfLabel1: TRxLabel;
    RxLabel7: TRxLabel;
    RxLabel10: TRxLabel;
    RxLabel8: TRxLabel;
    RxLabel2: TRxLabel;
    dxfLabel6: TRxLabel;
    dxfLabel16: TRxLabel;
    dxfLabel4: TRxLabel;
    dxfLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    RxLabel3: TRxLabel;
    dxfLabel5: TRxLabel;
    RxLabel5: TRxLabel;
    dxfLabel2: TRxLabel;
    RxLabel9: TRxLabel;
    RxLabel1: TRxLabel;
    dxfLabel17: TRxLabel;
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
  FormTelaTeclasAtalhoTelaFechamentoVenda: TFormTelaTeclasAtalhoTelaFechamentoVenda;

implementation

uses TelaItens, UnitLibrary;

{$R *.DFM}

procedure TFormTelaTeclasAtalhoTelaFechamentoVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_Escape) or (Key = VK_Return) then
    Close ;
end;

procedure TFormTelaTeclasAtalhoTelaFechamentoVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree ;
end;

procedure TFormTelaTeclasAtalhoTelaFechamentoVenda.ImgDesligarClick(
  Sender: TObject);
begin
  Close;
end;

end.
