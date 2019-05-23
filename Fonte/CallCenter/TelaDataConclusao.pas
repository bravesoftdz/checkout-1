unit TelaDataConclusao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Buttons, ConerBtn;

type
  TFormTelaDataConclusao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    CalendarioConclusao: TMonthCalendar;
    HoraConclusao: TDateTimePicker;
    Label2: TLabel;
    btOK: TConerBtn;
    btCancela: TConerBtn;
    procedure CalendarioConclusaoDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btOKClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaDataConclusao: TFormTelaDataConclusao;

implementation

{$R *.dfm}

procedure TFormTelaDataConclusao.CalendarioConclusaoDblClick(
  Sender: TObject);
begin
    HoraConclusao.Date := CalendarioConclusao.Date;
    FormTelaDataConclusao.ModalResult := mrOK;
end;

procedure TFormTelaDataConclusao.FormCreate(Sender: TObject);
begin
  HoraConclusao.Time := time();
  CalendarioConclusao.Date := date();
end;

procedure TFormTelaDataConclusao.btOKClick(Sender: TObject);
begin
    HoraConclusao.Date := CalendarioConclusao.Date;
    FormTelaDataConclusao.ModalResult := mrOK;
end;

procedure TFormTelaDataConclusao.btCancelaClick(Sender: TObject);
begin
    HoraConclusao.Date := CalendarioConclusao.Date;
    FormTelaDataConclusao.ModalResult := mrCancel;
end;

end.
