unit TelaTempoHelp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DateUtils;

type
  TFormTempoHelp = class(TForm)
    LabelTempo: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
     Tempo : TDatetime;
    { Public declarations }
  end;

var
  FormTempoHelp: TFormTempoHelp;

implementation

{$R *.dfm}

procedure TFormTempoHelp.FormCreate(Sender: TObject);
begin
  Tempo := 0;
  LabelTempo.Caption := DateToStr(Tempo);
end;

end.
