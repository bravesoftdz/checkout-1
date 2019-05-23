unit TelaContaCodigo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, ExtCtrls, jpeg, Buttons,
  RXCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaContaCodigo = class(TForm)
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ScrollBox1: TScrollBox;
    AdvOfficeStatusBar2: TAdvOfficeStatusBar;
    BtnTransfConta: TSpeedButton;
    ImgDesligar: TImage;
    Panel1: TPanel;
    Bt7: TSpeedButton;
    Bt8: TSpeedButton;
    Bt9: TSpeedButton;
    BtReturn: TSpeedButton;
    BtBackSpace: TSpeedButton;
    BtVirgula: TSpeedButton;
    Bt0: TSpeedButton;
    Bt1: TSpeedButton;
    Bt2: TSpeedButton;
    Bt3: TSpeedButton;
    Bt6: TSpeedButton;
    Bt5: TSpeedButton;
    Bt4: TSpeedButton;
    RxLabel2: TRxLabel;
    lbTitulo: TRxLabel;
    EditCodComanda: TCurrencyEdit;
    procedure ImgDesligarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtReturnClick(Sender: TObject);
    procedure BtBackSpaceClick(Sender: TObject);
    procedure BtVirgulaClick(Sender: TObject);
    procedure Bt7Click(Sender: TObject);
    procedure Bt8Click(Sender: TObject);
    procedure Bt9Click(Sender: TObject);
    procedure Bt4Click(Sender: TObject);
    procedure Bt5Click(Sender: TObject);
    procedure Bt6Click(Sender: TObject);
    procedure Bt1Click(Sender: TObject);
    procedure Bt2Click(Sender: TObject);
    procedure Bt3Click(Sender: TObject);
    procedure Bt0Click(Sender: TObject);
    procedure EditCodComandaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaContaCodigo: TFormTelaContaCodigo;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormTelaContaCodigo.ImgDesligarClick(Sender: TObject);
begin
  ModalResult := MrCancel;
  Close;
end;

procedure TFormTelaContaCodigo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TFormTelaContaCodigo.Bt7Click(Sender: TObject);
begin
  keybd_event(55,55,0,0);
end;

procedure TFormTelaContaCodigo.Bt8Click(Sender: TObject);
begin
  keybd_event(56,56,0,0);
end;

procedure TFormTelaContaCodigo.Bt9Click(Sender: TObject);
begin
  keybd_event(57,57,0,0);
end;

procedure TFormTelaContaCodigo.Bt4Click(Sender: TObject);
begin
  keybd_event(52,52,0,0);
end;

procedure TFormTelaContaCodigo.Bt5Click(Sender: TObject);
begin
  keybd_event(53,53,0,0);
end;

procedure TFormTelaContaCodigo.Bt6Click(Sender: TObject);
begin
  keybd_event(54,54,0,0);
end;

procedure TFormTelaContaCodigo.Bt1Click(Sender: TObject);
begin
  keybd_event(49,49,0,0);
end;

procedure TFormTelaContaCodigo.Bt2Click(Sender: TObject);
begin
  keybd_event(50,50,0,0);
end;

procedure TFormTelaContaCodigo.Bt3Click(Sender: TObject);
begin
  keybd_event(51,51,0,0);
end;

procedure TFormTelaContaCodigo.Bt0Click(Sender: TObject);
begin
  keybd_event(48,48,0,0);
end;

procedure TFormTelaContaCodigo.BtVirgulaClick(Sender: TObject);
begin
  keybd_event(188,188,0,0);
end;

procedure TFormTelaContaCodigo.BtBackSpaceClick(Sender: TObject);
begin
  keybd_event(8,8,0,0);
end;

procedure TFormTelaContaCodigo.BtReturnClick(Sender: TObject);
begin
  keybd_event(13,13,0,0);
end;

procedure TFormTelaContaCodigo.EditCodComandaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
    ModalResult := MrOK;
  if Key = 27 then
    ModalResult := MrCancel;
end;

end.
