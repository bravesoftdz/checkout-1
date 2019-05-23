unit TelaTransfereMesa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ConerBtn, RXCtrls, DB, DBTables, RxQuery,
  jpeg, ExtCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaTransfContas = class(TForm)
    EditContaOrigem: TEdit;
    LblNomeSistema: TRxLabel;
    RxLabel2: TRxLabel;
    EditMesaDest: TEdit;
    BtnF2: TConerBtn;
    EditMesaOrigem: TEdit;
    RxLabel3: TRxLabel;
    SQLTranf: TRxQuery;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ptopo: TAdvOfficeStatusBar;
    RxLabel4: TRxLabel;
    ImgDesligar: TImage;
    procedure BtnF2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditContaOrigemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditMesaDestKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditMesaOrigemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ImgDesligarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaTransfContas: TFormTelaTransfContas;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormTelaTransfContas.BtnF2Click(Sender: TObject);
var TotalPedido : Double;
begin
  if (EditContaOrigem.Text <> '') and  (EditMesaOrigem.Text <> '') and (EditMesaDest.Text <> '') then
    begin
      DM.SQLTemplate.Close;
      DM.SQLTemplate.SQL.Clear;
      DM.SQLTemplate.SQL.Add('Select PRVDICOD, PRVDN2TOTITENS from PREVENDA');
      DM.SQLTemplate.SQL.Add('Where PRVDCIMPORT = "N" and PDVCPreConclu = "S" and CONTAICOD = ' + EditContaOrigem.Text + 'and MESAICOD = '+EditMesaOrigem.Text);
      DM.SQLTemplate.Open;
      TotalPedido := 0 ;
      if not DM.SQLTemplate.IsEmpty then
        begin
          while not DM.SQLTemplate.eof do
            begin
              TotalPedido := TotalPedido + dm.SQLTemplate.fieldbyname('PRVDN2TOTITENS').AsFloat;
              SQLTranf.Close;
              SQLTranf.SQL.Clear;
              SQLTranf.SQL.Add('update PREVENDA set MESAICOD = '+ EditMesaDest.Text);
              SQLTranf.SQL.Add('Where PRVDICOD = '+dm.SQLTemplate.fieldbyname('PRVDICOD').AsString);
              SQLTranf.Prepare;
              SQLTranf.ExecSQL;

              DM.SQLTemplate.next;
            end;
        end;

      // Atualizar a Mesa Origem
      dm.SQLMesaStatus.Close;
      dm.SQLMesaStatus.Macrobyname('MFILTRO').Value := 'MESAICOD = '+ EditMesaOrigem.Text;
      dm.SQLMesaStatus.Open;
      dm.SQLMesaStatus.Edit;
      dm.SQLMesaStatusMESAN3VLRTOTAL.Value := dm.SQLMesaStatusMESAN3VLRTOTAL.Value - TotalPedido;

      if dm.SQLMesaStatusMESAN3VLRTOTAL.Value > 0 then
        dm.SQLMesaStatusMESACSTATUS.Value    := 'P';
      if dm.SQLMesaStatusMESAN3VLRTOTAL.Value = 0 then
        dm.SQLMesaStatusMESACSTATUS.Value    := 'A';

      if dm.SQLMesaStatusMESADABERTURA.AsString = '' then
        dm.SQLMesaStatusMESADABERTURA.Value := Now;
      if dm.SQLMesaStatusMESADFECHAMENTO.AsString <> '' then
        dm.SQLMesaStatusMESADFECHAMENTO.AsString := '';
      dm.SQLMesaStatus.Post;

      // Atualizar a Mesa Dest
      dm.SQLMesaStatus.Close;
      dm.SQLMesaStatus.Macrobyname('MFILTRO').Value := 'MESAICOD = '+ EditMesaDest.Text;
      dm.SQLMesaStatus.Open;
      dm.SQLMesaStatus.Edit;
      dm.SQLMesaStatusMESAN3VLRTOTAL.Value := dm.SQLMesaStatusMESAN3VLRTOTAL.Value + TotalPedido;
      if dm.SQLMesaStatusMESAN3VLRTOTAL.Value > 0 then
        dm.SQLMesaStatusMESACSTATUS.Value    := 'P';
      if dm.SQLMesaStatusMESAN3VLRTOTAL.Value = 0 then
        dm.SQLMesaStatusMESACSTATUS.Value    := 'A';

      if dm.SQLMesaStatusMESADABERTURA.AsString = '' then
        dm.SQLMesaStatusMESADABERTURA.Value := Now;
      if dm.SQLMesaStatusMESADFECHAMENTO.AsString <> '' then
        dm.SQLMesaStatusMESADFECHAMENTO.AsString := '';
      dm.SQLMesaStatus.Post;

      ShowMessage('Transferência Realizada com Sucesso!');
      Close;
    end
  else
    begin
      ShowMessage('A Mesa ou a Conta não foi informada! Operação Cancelada!');
      Close;
    end;
end;

procedure TFormTelaTransfContas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 27) then
    Close ;
  if (key = VK_F2) then
    BtnF2.Click;
end;

procedure TFormTelaTransfContas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dm.SQLMesaStatus.Close;
  dm.SQLMesaStatus.Macrobyname('MFILTRO').Value := '0=0';
  dm.SQLMesaStatus.Open;
end;

procedure TFormTelaTransfContas.EditContaOrigemKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key = VK_Return) then
    EditMesaDest.SetFocus;
end;

procedure TFormTelaTransfContas.EditMesaDestKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key = VK_Return) then
    BtnF2.SetFocus;
end;

procedure TFormTelaTransfContas.EditMesaOrigemKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key = VK_Return) then
    EditContaOrigem.SetFocus;
end;

procedure TFormTelaTransfContas.ImgDesligarClick(Sender: TObject);
begin
  Close;
end;

end.
