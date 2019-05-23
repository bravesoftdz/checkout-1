unit UnErrorPrinter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ComCtrls, TimerLst, ExtCtrls;

type
  TFrmErrorPrinter = class(TForm)
    Label1: TLabel;
    btnRepetir: TBitBtn;
    BtnCancelar: TBitBtn;
    Timer1: TTimer;
    procedure BtnCancelarClick(Sender: TObject);
    procedure btnRepetirClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmErrorPrinter: TFrmErrorPrinter;

implementation

{$R *.DFM}

procedure TFrmErrorPrinter.BtnCancelarClick(Sender: TObject);
begin
//   FrmVnd_PreNota.PrintAbort := True;
   Self.Close;
end;

procedure TFrmErrorPrinter.btnRepetirClick(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrmErrorPrinter.Timer1Timer(Sender: TObject);
begin
   BtnRepetir.Click;
end;

end.
