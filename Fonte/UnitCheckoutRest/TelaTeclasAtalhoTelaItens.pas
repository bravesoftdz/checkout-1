unit TelaTeclasAtalhoTelaItens;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, jpeg, RXCtrls, EWall, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvSmoothPanel;

type
  TFormTelaTeclasAtalhoTelaItens = class(TForm)
    RxLabel7: TRxLabel;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ptopo: TAdvOfficeStatusBar;
    RxLabel2: TRxLabel;
    ImgDesligar: TImage;
    AdvSmoothPanel1: TAdvSmoothPanel;
    dxfLabel1: TRxLabel;
    dxfLabel2: TRxLabel;
    dxfLabel3: TRxLabel;
    dxfLabel4: TRxLabel;
    dxfLabel5: TRxLabel;
    dxfLabel6: TRxLabel;
    dxfLabel7: TRxLabel;
    dxfLabel8: TRxLabel;
    dxfLabel9: TRxLabel;
    dxfLabel10: TRxLabel;
    dxfLabel11: TRxLabel;
    dxfLabel12: TRxLabel;
    RxLabel13: TRxLabel;
    RxLabel19: TRxLabel;
    RxLabel17: TRxLabel;
    Ctrl_X: TRxLabel;
    dxfLabel16: TRxLabel;
    LabelAlteraQtde: TRxLabel;
    dxfLabel13: TRxLabel;
    RxLabel1: TRxLabel;
    RxLabel3: TRxLabel;
    dxfLabel15: TRxLabel;
    RxLabel4: TRxLabel;
    RxLabel6: TRxLabel;
    RxLabel5: TRxLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure ImgDesligarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaTeclasAtalhoTelaItens: TFormTelaTeclasAtalhoTelaItens;

implementation

uses TelaItens, UnitLibrary, DataModulo;

{$R *.DFM}

procedure TFormTelaTeclasAtalhoTelaItens.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_Escape) or (Key = VK_Return) then
    Close ;
end;

procedure TFormTelaTeclasAtalhoTelaItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree ;
end;

procedure TFormTelaTeclasAtalhoTelaItens.FormActivate(Sender: TObject);
begin
  LabelAlteraQtde.Enabled := (DM.SQLConfigVendaCFVEIQTDPADRPDV.Value > 0) ;
end;

procedure TFormTelaTeclasAtalhoTelaItens.ImgDesligarClick(Sender: TObject);
begin
  Close;
end;

end.
