unit Help;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, StdCtrls;

type
  TFormHelp = class(TForm)
    MemoHelp: TMemo;
    PanelBottom: TPanel;
    ButtonClose: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ButtonCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHelp: TFormHelp;

implementation

{$R *.dfm}

procedure TFormHelp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormHelp.FormDestroy(Sender: TObject);
begin
  FormHelp := nil;
end;

procedure TFormHelp.ButtonCloseClick(Sender: TObject);
begin
  Close;
end;

end.
