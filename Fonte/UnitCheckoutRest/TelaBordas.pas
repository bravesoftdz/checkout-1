unit TelaBordas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RXCtrls, AdvSmoothPanel, Grids, DBGrids, DB, DBTables, StdCtrls,
  jpeg, ExtCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, RxQuery,
  Buttons;

type
  TFormTelaBordas = class(TForm)
    AdvSmoothPanel1: TAdvSmoothPanel;
    RxLabel5: TRxLabel;
    RxLabel1: TRxLabel;
    RxLabel3: TRxLabel;
    Borda01: TMemo;
    Borda02: TMemo;
    Borda03: TMemo;
    DSSQLObsProduto: TDataSource;
    DBGridItens: TDBGrid;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ptopo: TAdvOfficeStatusBar;
    ImgDesligar: TImage;
    lbTitulo: TRxLabel;
    SQLObsProduto: TRxQuery;
    SQLObsProdutoOBPRA15SIGLA: TStringField;
    SQLObsProdutoOBPRA1TIPO: TStringField;
    SQLObsProdutoOBPRIORDEM: TIntegerField;
    btApagaBorda01: TSpeedButton;
    btApagaBorda02: TSpeedButton;
    btApagaBorda03: TSpeedButton;
    SQLObsProdutoVALOR: TFloatField;
    RxLabel7: TRxLabel;
    EditValorTotal: TEdit;
    procedure DBGridItensDblClick(Sender: TObject);
    procedure ImgDesligarClick(Sender: TObject);
    procedure btApagaBorda01Click(Sender: TObject);
    procedure btApagaBorda02Click(Sender: TObject);
    procedure btApagaBorda03Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaBordas: TFormTelaBordas;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormTelaBordas.DBGridItensDblClick(Sender: TObject);
var TotalBorda : double;
begin
  if (Borda02.Text<>'') and (Borda03.Text='') then
    Borda03.Text := SQLObsProdutoOBPRA15SIGLA.Value;
  if (Borda01.Text<>'') and (Borda02.Text='') then
    Borda02.Text := SQLObsProdutoOBPRA15SIGLA.Value;
  if Borda01.Text = '' then
    Borda01.Text := SQLObsProdutoOBPRA15SIGLA.Value;

  try
    TotalBorda := StrToFloat(EditValorTotal.text);
  except
    TotalBorda := 0;
  end;

  if SQLObsProdutoVALOR.Value > TotalBorda then
    TotalBorda := SQLObsProdutoVALOR.Value;

  EditValorTotal.text := floattostr(TotalBorda);
  EditValorTotal.update;
end;

procedure TFormTelaBordas.ImgDesligarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormTelaBordas.btApagaBorda01Click(Sender: TObject);
begin
  borda01.Lines.Clear;
end;

procedure TFormTelaBordas.btApagaBorda02Click(Sender: TObject);
begin
  borda02.Lines.Clear;
end;

procedure TFormTelaBordas.btApagaBorda03Click(Sender: TObject);
begin
  borda03.Lines.Clear;
end;

end.
