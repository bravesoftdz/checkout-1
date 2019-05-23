unit TelaDisplay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RXCtrls, StdCtrls, DBCtrls, dbcgrids, Mask;

type
  TFormTelaDisplay = class(TForm)
    RxLabel1: TRxLabel;
    CtrlGrid: TDBCtrlGrid;
    DBText10: TDBText;
    DBText1: TDBText;
    EditManual: TDBEdit;
    procedure DBText10Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaDisplay: TFormTelaDisplay;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormTelaDisplay.DBText10Click(Sender: TObject);
begin
  Close;
end;

procedure TFormTelaDisplay.FormShow(Sender: TObject);
begin
  if FileExists('DisplayManual.txt') then
    begin
      EditManual.Visible := True;
      DBText1.Visible    := False;
      EditManual.SetFocus;
    end
  else
    begin
      EditManual.Visible := False;
      DBText1.Visible    := True;
      CtrlGrid.SetFocus;
    end;
end;

procedure TFormTelaDisplay.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_Return) then
    Close;
end;

end.
