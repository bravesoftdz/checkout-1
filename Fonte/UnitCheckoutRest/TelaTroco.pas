unit TelaTroco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, RXCtrls, ComCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, jpeg;

type
  TFormTelaTroco = class(TForm)
    RxLabel3: TRxLabel;
    labeltroco: TRxLabel;
    ptopo: TAdvOfficeStatusBar;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvOfficeStatusBarOfficeStyler2: TAdvOfficeStatusBarOfficeStyler;
    lbEmpresa: TRxLabel;
    ImgDesligar: TImage;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ImgDesligarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaTroco: TFormTelaTroco;

implementation

{$R *.DFM}


procedure TFormTelaTroco.FormKeyPress(Sender: TObject; var Key: Char);
begin
  Close;
end;

procedure TFormTelaTroco.ImgDesligarClick(Sender: TObject);
begin
  Close;
end;

end.
