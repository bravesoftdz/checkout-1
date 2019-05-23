unit TelaPrecoAlterado;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, RXCtrls, ComCtrls, Grids, DBGrids, RXDBCtrl,
  Mask, ToolEdit, CurrEdit, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  jpeg;

type
  TFormTelaPrecoAlterado = class(TForm)
    ScrollBox1: TScrollBox;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvOfficeStatusBar2: TAdvOfficeStatusBar;
    RxLabel6: TRxLabel;
    BtnTransfConta: TSpeedButton;
    Panel1: TPanel;
    EditValorTotal: TCurrencyEdit;
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
    ImgDesligar: TImage;
    procedure FormCreate(Sender: TObject);
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
    procedure BtVirgulaClick(Sender: TObject);
    procedure BtBackSpaceClick(Sender: TObject);
    procedure BtReturnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImgDesligarClick(Sender: TObject);
    procedure EditValorTotalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaPrecoAlterado: TFormTelaPrecoAlterado;

implementation

uses DataModulo;

{$R *.DFM}


procedure TFormTelaPrecoAlterado.FormCreate(Sender: TObject);
begin
  case Dm.SQLConfigVendaCFVEINROCASASDEC.AsInteger of
    2 : begin
          EditValorTotal.DisplayFormat := 'R$ ,0.00;-R$ ,0.00';
          EditValorTotal.DecimalPlaces := 2;
        end;
    3 : begin
          EditValorTotal.DisplayFormat := 'R$ ,0.000;-R$ ,0.000';
          EditValorTotal.DecimalPlaces := 3;
        end;
  end;
end;

procedure TFormTelaPrecoAlterado.Bt7Click(Sender: TObject);
begin
  keybd_event(55,55,0,0);
end;

procedure TFormTelaPrecoAlterado.Bt8Click(Sender: TObject);
begin
  keybd_event(56,56,0,0);
end;

procedure TFormTelaPrecoAlterado.Bt9Click(Sender: TObject);
begin
  keybd_event(57,57,0,0);
end;

procedure TFormTelaPrecoAlterado.Bt4Click(Sender: TObject);
begin
  keybd_event(52,52,0,0);
end;

procedure TFormTelaPrecoAlterado.Bt5Click(Sender: TObject);
begin
  keybd_event(53,53,0,0);
end;

procedure TFormTelaPrecoAlterado.Bt6Click(Sender: TObject);
begin
  keybd_event(54,54,0,0);
end;

procedure TFormTelaPrecoAlterado.Bt1Click(Sender: TObject);
begin
  keybd_event(49,49,0,0);
end;

procedure TFormTelaPrecoAlterado.Bt2Click(Sender: TObject);
begin
  keybd_event(50,50,0,0);
end;

procedure TFormTelaPrecoAlterado.Bt3Click(Sender: TObject);
begin
  keybd_event(51,51,0,0);
end;

procedure TFormTelaPrecoAlterado.Bt0Click(Sender: TObject);
begin
  keybd_event(48,48,0,0);
end;

procedure TFormTelaPrecoAlterado.BtVirgulaClick(Sender: TObject);
begin
  keybd_event(188,188,0,0);
end;

procedure TFormTelaPrecoAlterado.BtBackSpaceClick(Sender: TObject);
begin
  keybd_event(8,8,0,0);
end;

procedure TFormTelaPrecoAlterado.BtReturnClick(Sender: TObject);
begin
  keybd_event(13,13,0,0);
end;

procedure TFormTelaPrecoAlterado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TFormTelaPrecoAlterado.ImgDesligarClick(Sender: TObject);
begin
  ModalResult := MrCancel;
  Close;
end;

procedure TFormTelaPrecoAlterado.EditValorTotalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
    ModalResult := MrOK;
  if Key = 27 then
    ModalResult := MrCancel;
end;

end.
