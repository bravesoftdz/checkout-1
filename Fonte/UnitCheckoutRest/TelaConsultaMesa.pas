unit TelaConsultaMesa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, Grids, DBGrids, RXCtrls, DBTables, MemTable, DBCGrids, StdCtrls, DBCtrls,
  Buttons, ConerBtn, RxQuery;

type
  TFormTelaConsultaMesas = class(TForm)
    RxLabel4: TRxLabel;
    Panel8: TPanel;
    DBCtrlGrid1: TDBCtrlGrid;
    lbStatusMesa: TLabel;
    DBText1: TDBText;
    lbAbertura: TLabel;
    lbFechamento: TLabel;
    BtnF2: TConerBtn;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    DBText5: TDBText;
    Label3: TLabel;
    DBText6: TDBText;
    Label4: TLabel;
    DBText7: TDBText;
    Label5: TLabel;
    Label6: TLabel;
    DBText8: TDBText;
    Label7: TLabel;
    DBText9: TDBText;
    dsSQLMesasTotais: TDataSource;
    SQLMesasTotais: TRxQuery;
    SQLMesasTotaisSUM: TFloatField;
    SQLCountAbertas: TRxQuery;
    SQLCountAbertasCOUNT: TIntegerField;
    dsSQLCountAbertas: TDataSource;
    dsSQLCountFechadas: TDataSource;
    SQLCountFechadas: TRxQuery;
    IntegerField1: TIntegerField;
    BtnF3: TConerBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;
      Index: Integer);
    procedure BtnF2Click(Sender: TObject);
    procedure DBCtrlGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnF3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaMesas: TFormTelaConsultaMesas;

implementation

uses DataModulo;

{$R *.DFM}

procedure TFormTelaConsultaMesas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree ;
end;

procedure TFormTelaConsultaMesas.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = 27) or (Key = 13) then
    Close ;
end;

procedure TFormTelaConsultaMesas.FormCreate(Sender: TObject);
begin
  dm.SQLMesaStatus.Close;
  dm.SQLMesaStatus.Macrobyname('MFILTRO').Value := '0=0';
  dm.SQLMesaStatus.Open;
  SQLMesasTotais.Close;
  SQLMesasTotais.Open;
  SQLCountAbertas.Close;
  SQLCountAbertas.Open;
  SQLCountFechadas.Close;
  SQLCountFechadas.Open;
end;

procedure TFormTelaConsultaMesas.DBCtrlGrid1PaintPanel(
  DBCtrlGrid: TDBCtrlGrid; Index: Integer);
begin
  if (dm.SQLMesaStatusMESACSTATUS.Value = 'A') or (dm.SQLMesaStatusMESACSTATUS.Value = 'P') then
    begin
      lbStatusMesa.Caption    := 'Ocupada s/Pedido!';
      lbStatusMesa.Font.Color := clRed;
    end;
  if dm.SQLMesaStatusMESACSTATUS.Value = 'F' then
    begin
      lbStatusMesa.Caption    := 'Livre';
      lbStatusMesa.Font.Color := clgreen;
    end;
  if dm.SQLMesaStatusMESACSTATUS.Value = 'P' then
    begin
      lbStatusMesa.Caption    := 'Ocupada c/Pedido';
      lbStatusMesa.Font.Color := clMaroon;
    end;
end;

procedure TFormTelaConsultaMesas.DBCtrlGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_F2: BtnF2.Click;
    VK_F3: BtnF3.Click;
  end;
end;

procedure TFormTelaConsultaMesas.BtnF2Click(Sender: TObject);
begin
  dm.SQLMesaStatus.Edit;
  dm.SQLMesaStatusMESACSTATUS.Value    := 'A';
  dm.SQLMesaStatusMESADABERTURA.Value  := Now;
  dm.SQLMesaStatusMESAN3VLRTOTAL.Value := 0;
  dm.SQLMesaStatus.Post;
end;

procedure TFormTelaConsultaMesas.BtnF3Click(Sender: TObject);
begin
  dm.SQLMesaStatus.Edit;
  dm.SQLMesaStatusMESACSTATUS.Value    := 'F';
  dm.SQLMesaStatusMESADFECHAMENTO.Value := Now;
  dm.SQLMesaStatus.Post;
end;

end.
