unit TelaBomba;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, RXCtrls, ComCtrls, Grids, DBGrids, RXDBCtrl,
  Mask, ToolEdit, CurrEdit;

type
  TFormTelaBomba = class(TForm)
    PanelValorTotal: TPanel;
    EditValorTotal: TCurrencyEdit;
    RxLabel3: TRxLabel;
    PanelPrincipal: TPanel;
    RxLabel1: TRxLabel;
    RxDBGrid1: TRxDBGrid;
    RxLabel2: TRxLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure RxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaBomba: TFormTelaBomba;

implementation

uses DataModulo;

{$R *.DFM}


procedure TFormTelaBomba.FormKeyPress(Sender: TObject; var Key: Char);
begin
  Close;
end;

procedure TFormTelaBomba.RxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
    ModalResult := MrOK;
end;

end.
