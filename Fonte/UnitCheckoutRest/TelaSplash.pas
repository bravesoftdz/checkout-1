unit TelaSplash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Animate, ExtCtrls, StdCtrls, ComCtrls, jpeg;

type
  TFormTelaSplash = class(TForm)
    Timer: TTimer;
    Panel1: TPanel;
    ImagemSplash: TImage;
    procedure FormCreate(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaSplash: TFormTelaSplash;

implementation

{$R *.DFM}

procedure TFormTelaSplash.FormCreate(Sender: TObject);
begin
  if Application.Title = 'FrontCook Administração' then
    if FileExists('Bmp\FrontCook.jpg') then
    begin
      ImagemSplash.Picture.LoadFromFile('Bmp\FrontCook.jpg') ;
      ImagemSplash.Refresh ;
    end ;

  if Application.Title = 'FrontCook PDV' then
    if FileExists('Bmp\SplashRestPDV.jpg') then
    begin
      ImagemSplash.Picture.LoadFromFile('Bmp\SplashRestPDV.jpg') ;
      ImagemSplash.Refresh ;
    end
    else if FileExists('Bmp\FrontCook.jpg') then
         begin
           ImagemSplash.Picture.LoadFromFile('Bmp\FrontCook.jpg') ;
           ImagemSplash.Refresh ;
         end ;
end;

procedure TFormTelaSplash.TimerTimer(Sender: TObject);
begin
  FormTelaSplash.Hide ;
end;

procedure TFormTelaSplash.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree ;
end;

end.
