unit RelatorioConsignacaoVendaConsignacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, DBTables, Placemnt, DB, ComCtrls,
  StdCtrls, Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, QuickRpt,
  QRCtrls, Grids, DBGrids, DBCtrls, ppDB, ppDBPipe, ppComm, ppRelatv,
  ppProd, ppClass, ppReport, ppVar, ppPrnabl, ppCtrls, ppBands, ppCache,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioConsignacaoVendaConsignacao = class(TFormRelatorioTEMPLATE)
    SQLConsignada: TRxQuery;
    DSSQLConsignada: TDataSource;
    SQLVenda: TRxQuery;
    SQLConsignadaNOFIA13ID: TStringField;
    SQLConsignadaPRODICOD: TIntegerField;
    SQLVendaQTDEVENDIDA: TBCDField;
    SQLVendaNOFIA13ID: TStringField;
    SQLVendaPRODICOD: TIntegerField;
    TblTemporariaNFConsignada: TIntegerField;
    TblTemporariaNFVenda: TIntegerField;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPRODA60DESCR: TStringField;
    TblTemporariaLOTE: TStringField;
    SQLConsignadaLOTEA30NRO: TStringField;
    SQLVendaLOTEA30NRO: TStringField;
    DSSQLVenda: TDataSource;
    Report: TppReport;
    DBPipeline: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppLabel5: TppLabel;
    ppDBText8: TppDBText;
    ppLabel7: TppLabel;
    Vendida: TppDBCalc;
    ppLabel8: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLabel9: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLabel10: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine4: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel13: TppLabel;
    PeriodoEmissao: TppLabel;
    SQLConsignadaQTDECONSIG: TBCDField;
    TblTemporariaQtdeVendida: TFloatField;
    TblTemporariaQtdeConsignada: TFloatField;
    Consignada: TppDBText;
    ppLabel14: TppLabel;
    Saldo: TppVariable;
    ppLabel15: TppLabel;
    GroupBox2: TGroupBox;
    ComboCliente: TRxDBLookupCombo;
    SQLVendaCLIEA60RAZAOSOC: TStringField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    SQLProduto: TRxQuery;
    DSSQLProduto: TDataSource;
    GroupProduto: TGroupBox;
    ComboProduto: TRxDBLookupCombo;
    SQLVendaNFITN2VLRUNIT: TBCDField;
    TblTemporariaNFITN2VLRUNIT: TBCDField;
    ppLabel16: TppLabel;
    ppDBText1: TppDBText;
    SQLCliente: TRxQuery;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    DSSQLCliente: TDataSource;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure ReportBeforePrint(Sender: TObject);
    procedure ppGroupFooterBand2AfterGenerate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioConsignacaoVendaConsignacao: TFormRelatorioConsignacaoVendaConsignacao;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioConsignacaoVendaConsignacao.ExecutarBtnClick(
  Sender: TObject);
begin
  inherited;
  SQLConsignada.Close;
  SQLVenda.Close;

  SQLVenda.MacroByName('DataEmissao').Value := 'NotaFiscal.NOFIDEMIS >= ' + '"' + FormatDateTime('mm/dd/yyyy',De.Date) + '" and ' +
                                                    'NotaFiscal.NOFIDEMIS <= ' + '"' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';


  if ComboCliente.Value <> '' then
    SQLVenda.MacroByName('Cliente').Value := 'NotaFiscal.CLIEA13ID = "' + ComboCliente.Value + '"'
  else
    SQLVenda.MacroByName('Cliente').Value := '0=0';

  if ComboProduto.Value <> '' then
    SQLVenda.MacroByName('Produto').Value := 'NotaFiscalItem.PRODICOD = ' + ComboProduto.Value
  else
    SQLVenda.MacroByName('Produto').Value := '0=0';
    
  SQLVenda.Open;
  if (SQLVenda.IsEmpty) then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;

  if SQLVenda.IsEmpty then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;
   SQLVenda.First;
   While not SQLVenda.Eof do
     begin
       SQLConsignada.Close;
       SQLConsignada.ParamByName('NOTAFISCALVENDA').AsString := SQLLocate('NOTAFISCAL','NOFIA13ID','NOFIA13IDCONSIGNADA','"' + SQLVendaNOFIA13ID.AsString+'"');
       SQLConsignada.Open;
       TblTemporaria.Append;
       TblTemporariaNFConsignada.AsString := SQLLocate('NOTAFISCAL','NOFIA13ID','NOFIINUMERO','"' + SQLLocate('NOTAFISCAL','NOFIA13ID','NOFIA13IDCONSIGNADA','"' + SQLVendaNOFIA13ID.AsString+'"')+'"');
       TblTemporariaNFVenda.AsString      := SQLLocate('NOTAFISCAL','NOFIA13ID','NOFIINUMERO','"' + SQLVendaNOFIA13ID.AsString + '"');
       TblTemporariaPRODICOD.AsString     := SQLConsignadaPRODICOD.AsString;
       TblTemporariaPRODA60DESCR.AsString := SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',SQLConsignadaPRODICOD.AsString);
       TblTemporariaQtdeVendida.AsFloat   := SQLVendaQTDEVENDIDA.AsFloat;
       TblTemporariaQtdeConsignada.AsFloat:= SQLConsignadaQTDECONSIG.AsFloat;
       TblTemporariaLOTE.AsString         := SQLConsignadaLOTEA30NRO.AsString;
       TblTemporariaNFITN2VLRUNIT.AsFloat := SQLVendaNFITN2VLRUNIT.AsFloat;
       TblTemporaria.Post;
       SQLVenda.Next;
     end;
   Report.Print;  
end;

procedure TFormRelatorioConsignacaoVendaConsignacao.ReportBeforePrint(
  Sender: TObject);
begin
  inherited;
  PeriodoEmissao.Caption := FormatDateTime('dd/mm/yyyy',De.Date) + ' Até ' + FormatDateTime('dd/mm/yyyy',Ate.Date); 
end;

procedure TFormRelatorioConsignacaoVendaConsignacao.ppGroupFooterBand2AfterGenerate(
  Sender: TObject);
begin
  inherited;
  Saldo.Value := Consignada.FieldValue - Vendida.Value;
end;

procedure TFormRelatorioConsignacaoVendaConsignacao.FormCreate(
  Sender: TObject);
begin
  inherited;
  if not SQLCliente.Active then SQLCliente.Open;
  if not SQLProduto.Active then SQLProduto.Open; 
end;

procedure TFormRelatorioConsignacaoVendaConsignacao.ComboClienteKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

end.
