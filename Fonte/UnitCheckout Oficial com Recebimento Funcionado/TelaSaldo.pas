unit TelaSaldo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, jpeg, DBCtrls, RXCtrls, Mask, ToolEdit,
  CurrEdit, EWall;

type
  TFormTelaSaldo = class(TForm)
    LblNomeSistema: TRxLabel;
    Timer: TTimer;
    MolduraDescricaoItens: TImage;
    Cliente: TRxLabel;
    MolduraSubtotal: TImage;
    TotalSaida: TCurrencyEdit;
    RxLabel2: TRxLabel;
    WallPaper: TEvWallPaper;
    MolduraFotos: TImage;
    Foto: TImage;
    DadosTerminal: TRxLabel;
    Image2: TImage;
    RxLabel3: TRxLabel;
    SaldoAtual: TCurrencyEdit;
    Image3: TImage;
    RxLabel4: TRxLabel;
    TotalRetorno: TCurrencyEdit;
    Image1: TImage;
    RxLabel1: TRxLabel;
    SaldoCaderno: TCurrencyEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TimerTimer(Sender: TObject);
    procedure TimerTiraTelaTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaSaldo: TFormTelaSaldo;

implementation

uses TelaItens, UnitLibrary, DataModulo;

{$R *.DFM}

procedure TFormTelaSaldo.FormCreate(Sender: TObject);
begin
  Top    := FormTelaItens.Top ;
  Left   := FormTelaItens.Left ;
  Height := FormTelaItens.Height ;
  Width  := FormTelaItens.Width ;

  Foto.Picture.Assign(FormTelaItens.Foto.Picture) ;
end;

procedure TFormTelaSaldo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_Escape) then
    Close ;
end;

procedure TFormTelaSaldo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree ;
end;

procedure TFormTelaSaldo.TimerTimer(Sender: TObject);
begin
  Timer.Interval := 60000 ;
  Caption               := 'Advanced Control PDV    Terminal: ' + TerminalAtualNome ;
  DadosTerminal.Caption := FormatDateTime('ddddddddddddd hh:mm', Now) +
                           '    Operador: ' + UsuarioAtualNome +
                           '    Terminal: ' + TerminalAtualNome ;
end;

procedure TFormTelaSaldo.TimerTiraTelaTimer(Sender: TObject);
begin
  Close ;
end;

end.
