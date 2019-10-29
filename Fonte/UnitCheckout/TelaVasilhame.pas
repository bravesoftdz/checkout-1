unit TelaVasilhame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, RXCtrls, ComCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaVasilhame = class(TForm)
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ptopo: TAdvOfficeStatusBar;
    LblNomeSistema: TRxLabel;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    RxLabel2: TRxLabel;
    PanelCodigoBarra: TPanel;
    edtCodigoBarra: TEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaVasilhame: TFormTelaVasilhame;

implementation

uses
  TelaItens;

{$R *.DFM}


procedure TFormTelaVasilhame.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
 vCodigoBarra : String;
begin
  if Key = vk_Return then
  begin
    vCodigoBarra := edtCodigoBarra.Text;
    if Length(vCodigoBarra) = 12 then
      vCodigoBarra := Copy(vCodigobarra, 1, Length(vCodigoBarra) - 1);
    FormTelaItens.CalcularVasilhame(vCodigoBarra);
    edtCodigoBarra.Clear;
    edtCodigoBarra.SetFocus;
  end;

  if FormTelaItens.cdsVasilhame.IsEmpty then
    Close;

  if Key = VK_ESCAPE then
  begin
    FormTelaItens.CalcularSemVasilhame;
    Close;
  end;
end;

end.
