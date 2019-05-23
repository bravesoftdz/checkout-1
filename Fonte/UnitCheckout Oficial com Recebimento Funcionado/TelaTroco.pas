unit TelaTroco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, RXCtrls, ComCtrls;

type
  TFormTelaTroco = class(TForm)
    RxLabel1: TRxLabel;
    RxLabel3: TRxLabel;
    labeltroco: TRxLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
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

end.
