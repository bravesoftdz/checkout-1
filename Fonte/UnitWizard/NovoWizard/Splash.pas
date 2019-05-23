unit Splash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RXCtrls, StdCtrls, ShellApi, jpeg;

type
  TFormSplash = class(TForm)
    Panel1: TPanel;
    Image: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    procedure RxLabel1MouseEnter(Sender: TObject);
    procedure RxLabel1MouseLeave(Sender: TObject);
    procedure RxLabel1Click(Sender: TObject);
    procedure RxLabel3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSplash: TFormSplash;

implementation



{$R *.dfm}

procedure TFormSplash.RxLabel1MouseEnter(Sender: TObject);
begin
    TLabel(Sender).Font.Color := clBlue;
    TLabel(Sender).Font.Style := [fsUnderline];
end;

procedure TFormSplash.RxLabel1MouseLeave(Sender: TObject);
begin
    TLabel(Sender).Font.Color := clBlack;
    TLabel(Sender).Font.Style := [];
end;

procedure TFormSplash.RxLabel1Click(Sender: TObject);
begin
    ShellExecute(0,'open', 'http://www.atwnet.com.br', '', '', SW_SHOWNORMAL);
end;

procedure TFormSplash.RxLabel3Click(Sender: TObject);
begin
    ShellExecute(0,'open', 'mailto: atw@atwnet.com.br', '', '', SW_SHOWNORMAL);
end;

end.
