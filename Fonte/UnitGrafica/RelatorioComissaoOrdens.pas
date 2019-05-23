unit RelatorioComissaoOrdens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, DBCtrls, QuickRpt, QRCtrls,
  StdCtrls, Mask, ToolEdit, Buttons, ExtCtrls, Grids, DBGrids;

type
  TFormCalcularComissaoSobreOrdens = class(TForm)
    Panel2: TPanel;
    LabelTitulo: TLabel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DataInicial: TDateEdit;
    DataFinal: TDateEdit;
    QuickRep1: TQuickRep;
    QRBand3: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText9: TQRDBText;
    QRShape3: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    Panel3: TPanel;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    dsSQLNotas: TDataSource;
    SQLNotas: TIBQuery;
    SQLVendedor: TIBQuery;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TIBStringField;
    SQLVendedorVENDN2COMISV: TFloatField;
    SQLVendedorVENDN2COMISP: TFloatField;
    SQLVendedorVENDCTIPCOMIS: TIBStringField;
    SQLVendedorVENDCCOMISACRESC: TIBStringField;
    SQLVendedorPENDENTE: TIBStringField;
    SQLVendedorREGISTRO: TDateTimeField;
    SQLVendedorVENDA60EMAIL: TIBStringField;
    SQLVendedorVENDA5FISJURID: TIBStringField;
    SQLVendedorVENDA14CGC: TIBStringField;
    SQLVendedorVENDA20IE: TIBStringField;
    SQLVendedorVENDA11CPF: TIBStringField;
    SQLVendedorVENDA10RG: TIBStringField;
    SQLVendedorVENDA60CONTATO: TIBStringField;
    SQLVendedorVENDA15FONE1: TIBStringField;
    SQLVendedorVENDA15FONE2: TIBStringField;
    SQLVendedorVENDA15FAX: TIBStringField;
    SQLVendedorVENDA60END: TIBStringField;
    SQLVendedorVENDA60BAI: TIBStringField;
    SQLVendedorVENDA60CID: TIBStringField;
    SQLVendedorVENDA2UF: TIBStringField;
    SQLVendedorVENDA8CEP: TIBStringField;
    SQLVendedorBANCA5COD: TIBStringField;
    SQLVendedorVENDA5AGENCIA: TIBStringField;
    SQLVendedorVENDA10CONTA: TIBStringField;
    SQLVendedorVENDA60TITULAR: TIBStringField;
    SQLVendedorVENDDABERTCONTA: TDateTimeField;
    SQLVendedorVENDA254OBS: TIBStringField;
    SQLVendedorVENDA30CORE: TIBStringField;
    SQLVendedorVENDA60RAZAOSOCIAL: TIBStringField;
    SQLVendedorVENDIDIASVALFIDEL: TIntegerField;
    SQLVendedorVENDN2PERCFIDEL: TFloatField;
    SQLVendedorVENDN2PERCIRRF: TFloatField;
    SQLVendedorVENDA30SENHA: TIBStringField;
    SQLVendedorVENDCATIVO: TIBStringField;
    DSSQLVendedor: TDataSource;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText3: TQRDBText;
    SQLNotasFINALIZADAEM: TDateTimeField;
    SQLNotasCLIEA60RAZAOSOC: TIBStringField;
    SQLNotasVENDA60NOME: TIBStringField;
    SQLNotasPRODA60DESCR: TIBStringField;
    SQLNotasORDNUM: TIntegerField;
    SQLNotasDATA: TDateTimeField;
    SQLNotasVENDICOD: TIntegerField;
    SQLNotasPRAZOENTR: TDateTimeField;
    SQLNotasCLIEA13ID: TIBStringField;
    SQLNotasPRODICOD: TIntegerField;
    SQLNotasSERVICO: TIBStringField;
    SQLNotasNUMDE: TIntegerField;
    SQLNotasNUMA: TIntegerField;
    SQLNotasCOREIMP: TIBStringField;
    SQLNotasNVIAS: TIntegerField;
    SQLNotasOBS: TMemoField;
    SQLNotasLARGURA: TIBBCDField;
    SQLNotasALTURA: TIBBCDField;
    SQLNotasQUANTTOTAL: TIntegerField;
    SQLNotasPAPEL: TIBStringField;
    SQLNotasQUANTTALOES: TIntegerField;
    SQLNotasLOCALENTR: TIBStringField;
    SQLNotasTIPOSERVIMP: TIBStringField;
    SQLNotasPICOTE: TIBStringField;
    SQLNotasGRAMPO: TIBStringField;
    SQLNotasCOLA: TIBStringField;
    SQLNotasNUMERADO: TIBStringField;
    SQLNotasSOLTO: TIBStringField;
    SQLNotasFURADO: TIBStringField;
    SQLNotasPALTIFICADO: TIBStringField;
    SQLNotasCARBONO: TIBStringField;
    SQLNotasFORMATO: TIBStringField;
    SQLNotasENTREGADO: TDateTimeField;
    SQLNotasCOMISSAO: TSmallintField;
    SQLNotasVAL: TFloatField;
    SQLNotasIMPRESSO: TIBStringField;
    SQLNotasPARCELAS: TIBStringField;
    SQLNotasCORDOPAPEL: TIBStringField;
    SQLNotasRESPONSAVEL: TIntegerField;
    SQLNotasVIAS: TIBStringField;
    SQLNotasSTATUS: TIBStringField;
    SQLNotasACABAMENTO: TIBStringField;
    SQLNotasCAPA: TIBStringField;
    SQLNotasMIOLO: TIBStringField;
    SQLNotasPARCELASVARIAVEIS: TIBStringField;
    SQLNotasCOMISSIONAPOR: TIBStringField;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel19: TQRLabel;
    QRShape14: TQRShape;
    QRBand2: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText4: TQRDBText;
    QRShape1: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape2: TQRShape;
    QRLabel17: TQRLabel;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRLabel18: TQRLabel;
    QRShape5: TQRShape;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QRDBText18Print(sender: TObject; var Value: String);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRExpr2Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCalcularComissaoSobreOrdens: TFormCalcularComissaoSobreOrdens;
  TotalComissao: Extended;
implementation

{$R *.dfm}

procedure TFormCalcularComissaoSobreOrdens.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCalcularComissaoSobreOrdens.SpeedButton1Click(
  Sender: TObject);
begin
  TotalComissao := 0;
  
  if (DataInicial.Text = '  /  /    ') or (DataFinal.Text = '  /  /    ') then
  begin
    ShowMessage('Período não pode ser em branco');
    Exit;
  end;
  if (DataInicial.Date > DataFinal.Date) then
  begin
    ShowMessage('Período Inválido.  Verifique');
    Exit;
  end;

  SQLNotas.Close;
  SQLNotas.SQL.Text:=  'select (select max(F.DATA) from ord_finaliza F where F.ordnum = GR.ordnum) as finalizadaem, '+
  'C.CLIEA60RAZAOSOC, '+
  'V.VENDA60NOME,     '+
  'P.PRODA60DESCR,    '+
  'GR.*               '+
  'from ORDENSGRAFICA GR '+
  'left join vendedor v on V.vendicod = GR.vendicod  '+
  'left join cliente C on C.CLIEA13ID = GR.cliea13id '+
  'left join produto P on P.prodicod = GR.Prodicod   '+
  'where                                             '+
  '(select max(F.DATA) from ord_finaliza F where F.ordnum = GR.ordnum) >= :xDataInicial and '+
  '(select max(F.DATA) from ord_finaliza F where F.ordnum = GR.ordnum) <= :xDataFinal and   '+
  'GR.STATUS = :xStatus and ';
  if DBLookupComboBox1.Text <> '' then
    SQLNotas.SQL.Text :=  SQLNotas.SQL.Text + 'v.VENDICOD = :xVENDEDOR  ';
  SQLNotas.SQL.Text :=  SQLNotas.SQL.Text + 'order by 1';

  SQLNotas.Prepare;
  SQLNotas.ParamByName('xStatus').asstring           := 'F';
  SQLNotas.ParamByName('xDataInicial').asstring      := DataInicial.Text;
  SQLNotas.ParamByName('xDataFinal').asstring        := DataFinal.Text;
  If DBLookupComboBox1.Text <> '' then
    SQLNotas.ParamByName('xVENDEDOR').AsInteger := SQLVendedorVENDICOD.AsInteger;

  SQLNotas.Open;
  if SQLNotas.IsEmpty Then
  Begin
    Showmessage('Não existem dados a serem impressos!');
    SQLNotas.Close;
  End Else
  Begin
    QRLabel5.Caption := DAtaInicial.Text;
    QRLabel6.Caption := DataFinal.Text;
    QuickRep1.Preview;
  End;
end;

procedure TFormCalcularComissaoSobreOrdens.QRExpr1Print(sender: TObject;
  var Value: String);
begin
    TotalComissao := TotalComissao + StrToFloat(value);
    Value := FormatFloat(',0.00',StrToFloat(Value));
end;

procedure TFormCalcularComissaoSobreOrdens.FormShow(Sender: TObject);
begin
  QuickRep1.Height:= 0;
  QuickRep1.Width := 0;

end;

procedure TFormCalcularComissaoSobreOrdens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QuickRep1.Free;
  SQLNotas.Close;
  SQLVendedor.Close;
  Action := caFree;
end;

procedure TFormCalcularComissaoSobreOrdens.FormCreate(Sender: TObject);
begin
  SQLVendedor.Open;
end;

procedure TFormCalcularComissaoSobreOrdens.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF Key = #13 then
  begin
    Key := #0;
    Perform(CM_Dialogkey,VK_TAB,0);
  end;
end;


procedure TFormCalcularComissaoSobreOrdens.QRDBText18Print(sender: TObject;
  var Value: String);
begin
  if Value = 'P' then
    Value := '%'
  Else
    Value := 'R$';
end;

procedure TFormCalcularComissaoSobreOrdens.QRBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLabel19.Caption := FormatFloat(',0.00',TotalComissao);
  QRLabel19.Update;
end;

procedure TFormCalcularComissaoSobreOrdens.QRExpr2Print(sender: TObject;
  var Value: String);
begin
 Value := FormatFloat(',0.0000',StrToFloat(Value));
end;

end.
