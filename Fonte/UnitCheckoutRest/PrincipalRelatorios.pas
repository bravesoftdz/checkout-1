unit PrincipalRelatorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RxLookup, Mask, ToolEdit, DBTables, DB, ppCtrls,
  ppBands, ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppClass, ppCache,
  ppProd, ppDB, ppComm, ppRelatv, ppDBPipe, ppDBBDE, RxQuery, ppViewr, ExtCtrls,
  dxGDIPlusClasses, Placemnt, jpeg, ppModule, raCodMod, RDprint, ppParameter,
  RXCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, ACBrNFeDANFEClass,
  ACBrNFeDANFeESCPOS, ACBrBase, ACBrPosPrinter, AdvSmoothPanel;

type
  TFormPrincipalRelatorios = class(TForm)
    DSSQLTerminal: TDataSource;
    SQLTerminal: TRxQuery;
    DSTblTemporaria: TDataSource;
    TblTemporaria: TTable;
    BatchMove: TBatchMove;
    DSSQLTotalOperacao: TDataSource;
    SQLTotalOperacao: TRxQuery;
    SQLTotalOperacaoOPCXICOD: TIntegerField;
    SQLTotalOperacaoOPCXA60DESCR: TStringField;
    SQLTotalOperacaoCREDITOS: TFloatField;
    SQLTotalOperacaoDEBITOS: TFloatField;
    SQLTotalOperacaoSALDO: TFloatField;
    DSSQLTotaNumrario: TDataSource;
    SQLTotaNumerario: TRxQuery;
    SQLTotaNumerarioNUMEICOD: TIntegerField;
    SQLTotaNumerarioNUMEA30DESCR: TStringField;
    SQLTotaNumerarioVLRCREDITO: TFloatField;
    SQLTotaNumerarioVLRDEBITO: TFloatField;
    SQLTotaNumerarioSALDO: TFloatField;
    PipeOperacao: TppBDEPipeline;
    PipeNumerario: TppBDEPipeline;
    dsMotoboy: TDataSource;
    sqlMotoboy: TRxQuery;
    sqlMotoboyMTBYICOD: TIntegerField;
    sqlMotoboyMTBYA30DESCR: TStringField;
    SQLVendas: TRxQuery;
    SQLVendasCUPOA13ID: TStringField;
    SQLVendasEMPRICOD: TIntegerField;
    SQLVendasTERMICOD: TIntegerField;
    SQLVendasCUPOICOD: TIntegerField;
    SQLVendasCUPODEMIS: TDateTimeField;
    SQLVendasCLIEA13ID: TStringField;
    SQLVendasPLRCICOD: TIntegerField;
    SQLVendasVENDICOD: TIntegerField;
    SQLVendasCONVICOD: TIntegerField;
    SQLVendasCUPOCSTATUS: TStringField;
    SQLVendasCUPON2TOTITENS: TFloatField;
    SQLVendasCUPON2DESC: TFloatField;
    SQLVendasCUPON2ACRESC: TFloatField;
    SQLVendasCUPON2TOTITENSRET: TFloatField;
    SQLVendasCUPOINRO: TIntegerField;
    SQLVendasCUPOCTIPOPADRAO: TStringField;
    SQLVendasORIGEMVENDA: TStringField;
    SQLVendasMTBYICOD: TIntegerField;
    dsVendas: TDataSource;
    ReportTele: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    LbPeriodoTele: TppLabel;
    LbTerminalTele: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    SQLVendasCLIENTENOME: TStringField;
    SQLVendasCLIENTEFONE: TStringField;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    lbMotoboy: TppLabel;
    SQLVendasCUPON3CREDTAXA: TFloatField;
    PipeVendas: TppBDEPipeline;
    ppSummaryBand3: TppSummaryBand;
    ppFooterBand2: TppFooterBand;
    ppSystemVariable4: TppSystemVariable;
    ppDBCalc2: TppDBCalc;
    ppLabel24: TppLabel;
    ppLine6: TppLine;
    ppDBCalc4: TppDBCalc;
    FormStorage: TFormStorage;
    SQLTotaNumerarioNUMEA5TIPO: TStringField;
    rdp: TRDprint;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ptopo: TAdvOfficeStatusBar;
    LblNomeSistema: TRxLabel;
    ImgDesligar: TImage;
    SQLVendasPorVendedor: TRxQuery;
    SQLVendasPorVendedorTOTALVENDEDOR: TFloatField;
    SQLVendasPorVendedorVENDICOD: TIntegerField;
    dsSQLItensVendidos: TDataSource;
    SQLItensVendidos: TRxQuery;
    SQLItensVendidosPRODICOD: TIntegerField;
    SQLItensVendidosCPITN3VLRUNIT: TFloatField;
    SQLItensVendidosQTDE: TFloatField;
    SQLItensVendidosVLRTOTALITEM: TFloatField;
    SQLVendasCanceladas: TRxQuery;
    SQLVendasCanceladasID: TIntegerField;
    SQLVendasCanceladasEMPRICOD: TIntegerField;
    SQLVendasCanceladasTERMICOD: TIntegerField;
    SQLVendasCanceladasCUPOA13ID: TStringField;
    SQLVendasCanceladasPRVDICOD: TIntegerField;
    SQLVendasCanceladasMESAICOD: TIntegerField;
    SQLVendasCanceladasCONTAICOD: TIntegerField;
    SQLVendasCanceladasPRODICOD: TIntegerField;
    SQLVendasCanceladasREGISTRO: TDateTimeField;
    SQLVendasCanceladasCLIENTENOME: TStringField;
    SQLVendasCanceladasCLIENTEFONE: TStringField;
    SQLVendasCanceladasMOTIVO: TStringField;
    SQLVendasCanceladasUSUAICOD: TIntegerField;
    SQLVendasCanceladasVENDICOD: TIntegerField;
    SQLVendasCanceladasPRODUTO: TStringField;
    SQLVendasCanceladasTOTALITEM: TFloatField;
    SQLOperador: TRxQuery;
    DSSQLOperador: TDataSource;
    ReportTotais: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    LbPeriodo: TppLabel;
    LbTerminal: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel13: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText8: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable1: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppParameterList1: TppParameterList;
    PipeItensVendidos: TppBDEPipeline;
    AdvSmoothPanel1: TAdvSmoothPanel;
    Memo: TMemo;
    BtnVisualizar: TSpeedButton;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    De: TDateEdit;
    Ate: TDateEdit;
    HoraInicial: TEdit;
    HoraFinal: TEdit;
    GroupBox3: TGroupBox;
    ComboTerminal: TRxDBLookupCombo;
    GroupBox2: TGroupBox;
    ComboTerminal2: TRxDBLookupCombo;
    ckBobina: TCheckBox;
    ckItensVendidos: TCheckBox;
    GroupBox5: TGroupBox;
    ComboOperador: TRxDBLookupCombo;
    SQLTotalCupom: TRxQuery;
    SQLTotalCupomVALOR_TOTAL: TFloatField;
    SQLTotalCupomQTDE_CUPOM: TIntegerField;
    DSSQLTotalCupom: TDataSource;
    SQLCancelados: TRxQuery;
    SQLCanceladosVALOR_CANCELADO: TFloatField;
    SQLCanceladosQTDE_CANCELADO: TIntegerField;
    DSSQLCancelados: TDataSource;
    PipeCancelados: TppBDEPipeline;
    PipeCanceladosppField1: TppField;
    PipeCanceladosppField2: TppField;
    PipeTotalCupom: TppBDEPipeline;
    PipeTotalCupomppField1: TppField;
    PipeTotalCupomppField2: TppField;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLabel6: TppLabel;
    ppLabel9: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    SumarioNumerarios: TppSummaryBand;
    ppDBCalc3: TppDBCalc;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    lbTotalVendaBalcao: TppLabel;
    lbTotalServicosBalcao: TppLabel;
    lbTotalVendaTele: TppLabel;
    lbTotalServicosTele: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    lbTotalVendas: TppLabel;
    lbTotalServicos: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    lbTotalVendaMesas: TppLabel;
    lbTotalServicosMesas: TppLabel;
    ppLabel10: TppLabel;
    ppLabel34: TppLabel;
    lbTotalDin: TppLabel;
    lbTotalCrt: TppLabel;
    ppLine4: TppLine;
    ppLine2: TppLine;
    ppLabel35: TppLabel;
    raCodeModule1: TraCodeModule;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText10: TppDBText;
    ppDBText14: TppDBText;
    ppLabel38: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppSubReport4: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppDetailBand5: TppDetailBand;
    ppLabel39: TppLabel;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppSummaryBand5: TppSummaryBand;
    ppLine5: TppLine;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    TituloProdutosVendidos: TppTitleBand;
    ppLabel43: TppLabel;
    ppLabel11: TppLabel;
    ppLabel42: TppLabel;
    ppLabel41: TppLabel;
    DetalheProdutosVendidos: TppDetailBand;
    ppSummaryBand4: TppSummaryBand;
    ppLine1: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    TotalProdutosVendidos: TppGroupFooterBand;
    ppDBText26: TppDBText;
    Produto: TppLabel;
    ppDBText20: TppDBText;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    raCodeModule5: TraCodeModule;
    raCodeModule3: TraCodeModule;
    raCodeModule4: TraCodeModule;
    SQLItensVendidosVLRDESCONTO: TFloatField;
    ppLabel12: TppLabel;
    ppDBText17: TppDBText;
    CKImpVendaCartoes: TCheckBox;
    dsSQLVendaCartoesCheques: TDataSource;
    SQLVendaCartoesCheques: TRxQuery;
    SQLVendaCartoesChequesCTRCN2VLR: TFloatField;
    SQLVendaCartoesChequesCTRCDVENC: TDateTimeField;
    SQLVendaCartoesChequesNUMEICOD: TIntegerField;
    SQLVendaCartoesChequesNUMEA30DESCR: TStringField;
    SQLVendaCartoesChequesTEF: TStringField;
    SQLVendaCartoesChequesBANCA5CODCHQ: TStringField;
    SQLVendaCartoesChequesCTRCA10AGENCIACHQ: TStringField;
    SQLVendaCartoesChequesCTRCA15NROCHQ: TStringField;
    ppSubReport5: TppSubReport;
    ppChildReport5: TppChildReport;
    TituloVendaCartoes: TppTitleBand;
    DetalheVendaCartoes: TppDetailBand;
    ppSummaryBand6: TppSummaryBand;
    PipeVendasCartoesCheques: TppBDEPipeline;
    ppLabel48: TppLabel;
    ppLabel40: TppLabel;
    ppLabel44: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppDBText29: TppDBText;
    TEF: TppLabel;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    procedure FormCreate(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure ReportTotaisPreviewFormCreate(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ReportTelePreviewFormCreate(Sender: TObject);
    procedure ppHeaderBand2BeforePrint(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure ImgDesligarClick(Sender: TObject);
    procedure DetalheProdutosVendidosBeforePrint(Sender: TObject);
    procedure SumarioNumerariosBeforePrint(Sender: TObject);
    procedure ppSummaryBand4BeforePrint(Sender: TObject);
    procedure ppSummaryBand5BeforePrint(Sender: TObject);
  private
    { Private declarations }
    ValorTotalVendaGeral, ValorTotalBalcao, ValorTotalServicosBalcao, ValorTotalMesas, ValorTotalTele, ValorTotalServicosTele, ValorTotalServicosMesas: double;
    TotalDin, TotalCRT: Double;
  public
    { Public declarations }
  end;

var
  FormPrincipalRelatorios: TFormPrincipalRelatorios;

implementation

uses
  DataModulo, DataModuloTemplate, UnitLibrary;

{$R *.dfm}

procedure TFormPrincipalRelatorios.FormCreate(Sender: TObject);
begin
  SQLTerminal.Open;
  sqlMotoboy.Open;
  SQLOperador.Open;
  de.Date := Date;
  Ate.Date := Date;
  ComboTerminal.keyValue := TerminalAtual;

  if dm.SQLUsuarioUSUACPERMVMOVCX.Value <> 'S' then
  begin
    de.Enabled := False;
    ate.Enabled := False;
  end;
end;

procedure TFormPrincipalRelatorios.BtnVisualizarClick(Sender: TObject);
var
  Linha: integer;
var
  vSaldoTotal: double;
begin
  SQLTotaNumerario.Close;
  if (HoraInicial.Text = '') and (HoraFinal.Text = '') then
    SQLTotaNumerario.MacroByName('MData').Value := 'MOVIMENTOCAIXA.MVCXDMOV >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' + 'MOVIMENTOCAIXA.MVCXDMOV <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"'
  else
    SQLTotaNumerario.MacroByName('MData').Value := 'MOVIMENTOCAIXA.REGISTRO >= "' + FormatDateTime('mm/dd/yyyy ', De.Date) + HoraInicial.Text + '" and ' + 'MOVIMENTOCAIXA.REGISTRO <= "' + FormatDateTime('mm/dd/yyyy ', Ate.Date) + HoraFinal.Text + '"';

  SQLTotaNumerario.MacroByName('MTerminal').Value := '0=0';

  if ComboTerminal.Value <> '' then
    SQLTotaNumerario.MacroByName('MTerminal').Value := 'MOVIMENTOCAIXA.TERMICOD = ' + ComboTerminal.Value;

  if ComboTerminal2.Value <> '' then
    SQLTotaNumerario.MacroByName('MTerminal').Value := SQLTotaNumerario.MacroByName('MTerminal').Value + ' or ' + 'MOVIMENTOCAIXA.TERMICOD = ' + ComboTerminal2.Value;
  if ComboOperador.Value <> '' then
    SQLTotaNumerario.MacroByName('MOperador').Value := 'MOVIMENTOCAIXA.USUAICOD = ' + ComboOperador.Value
  else
    SQLTotaNumerario.MacroByName('MOperador').Value := '0=0';

  SQLTotaNumerario.Open;

  {Somar todos tipos de cartoes}
  SQLTotaNumerario.first;
  TotalDin := 0;
  TotalCRT := 0;
  while not SQLTotaNumerario.eof do
  begin
    if SQLTotaNumerarioNUMEA5TIPO.Value = 'DIN' then
      TotalDin := TotalDin + SQLTotaNumerarioSALDO.Value;
    if SQLTotaNumerarioNUMEA5TIPO.Value = 'CRT' then
      TotalCRT := TotalCRT + SQLTotaNumerarioSALDO.Value;
    SQLTotaNumerario.next;
  end;
  SQLTotaNumerario.first;

  SQLTotalOperacao.Close;

  if (HoraInicial.Text = '') and (HoraFinal.Text = '') then
    SQLTotalOperacao.MacroByName('MData').Value := 'MOVIMENTOCAIXA.MVCXDMOV >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' + 'MOVIMENTOCAIXA.MVCXDMOV <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"'
  else
    SQLTotalOperacao.MacroByName('MData').Value := 'MOVIMENTOCAIXA.REGISTRO >= "' + FormatDateTime('mm/dd/yyyy ', De.Date) + HoraInicial.Text + '" and ' + 'MOVIMENTOCAIXA.REGISTRO <= "' + FormatDateTime('mm/dd/yyyy ', Ate.Date) + HoraFinal.Text + '"';

  SQLTotalOperacao.MacroByName('MTerminal').Value := '0=0';

  if ComboTerminal.Value <> '' then
    SQLTotalOperacao.MacroByName('MTerminal').Value := 'MOVIMENTOCAIXA.TERMICOD = ' + ComboTerminal.Value;

  if ComboTerminal2.Value <> '' then
    SQLTotalOperacao.MacroByName('MTerminal').Value := SQLTotalOperacao.MacroByName('MTerminal').Value + ' or MOVIMENTOCAIXA.TERMICOD = ' + ComboTerminal2.Value;

  if ComboOperador.Value <> '' then
    SQLTotalOperacao.MacroByName('MOperador').Value := 'MOVIMENTOCAIXA.USUAICOD = ' + ComboOperador.Value
  else
    SQLTotalOperacao.MacroByName('MOperador').Value := '0=0';

  SQLTotalOperacao.Open;

  {Calcula Total de Balcao}
  SQLVendas.Close;
  SQLVendas.MacroByName('ORIGEMVENDA').Value := 'ORIGEMVENDA = "C"';
  SQLVendas.MacroByName('MTerminal').Value := '0=0';
  SQLVendas.MacroByName('MMotoboy').Value := '0=0';

  if (HoraInicial.Text = '') and (HoraFinal.Text = '') then
    SQLVendas.MacroByName('MData').Value := 'CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' + 'CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"'
  else
    SQLVendas.MacroByName('MData').Value := 'REGISTRO >= "' + FormatDateTime('mm/dd/yyyy ', De.Date) + HoraInicial.Text + '" and ' + 'REGISTRO <= "' + FormatDateTime('mm/dd/yyyy ', Ate.Date) + HoraFinal.Text + '"';

  if ComboTerminal.Value <> '' then
    SQLVendas.MacroByName('MTerminal').Value := 'TERMICOD = ' + ComboTerminal.Value;

  if ComboTerminal2.Value <> '' then
    SQLVendas.MacroByName('MTerminal').Value := SQLVendas.MacroByName('MTerminal').Value + ' or ' + 'TERMICOD = ' + ComboTerminal2.Value;
  SQLVendas.Open;
  ValorTotalBalcao := 0;
  ValorTotalServicosBalcao := 0;
  if not SQLVendas.IsEmpty then
  begin
    while not SQLVendas.eof do
    begin
      ValorTotalBalcao := ValorTotalBalcao + (SQLVendasCUPON2TOTITENS.Value - SQLVendasCUPON2DESC.value);
      ValorTotalServicosBalcao := ValorTotalServicosBalcao + SQLVendasCUPON3CREDTAXA.Value;
      SQLVendas.next;
    end;
  end;

  {Calcula Total de Mesas}
  SQLVendas.Close;
  SQLVendas.MacroByName('ORIGEMVENDA').Value := 'ORIGEMVENDA = "P"';
  SQLVendas.MacroByName('MTerminal').Value := '0=0';
  SQLVendas.MacroByName('MMotoboy').Value := '0=0';

  if (HoraInicial.Text = '') and (HoraFinal.Text = '') then
    SQLVendas.MacroByName('MData').Value := 'CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' + 'CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"'
  else
    SQLVendas.MacroByName('MData').Value := 'REGISTRO >= "' + FormatDateTime('mm/dd/yyyy ', De.Date) + HoraInicial.Text + '" and ' + 'REGISTRO <= "' + FormatDateTime('mm/dd/yyyy ', Ate.Date) + HoraFinal.Text + '"';

  if ComboTerminal.Value <> '' then
    SQLVendas.MacroByName('MTerminal').Value := 'TERMICOD = ' + ComboTerminal.Value;

  if ComboTerminal2.Value <> '' then
    SQLVendas.MacroByName('MTerminal').Value := SQLVendas.MacroByName('MTerminal').Value + ' or ' + 'TERMICOD = ' + ComboTerminal2.Value;
  SQLVendas.Open;
  ValorTotalMesas := 0;
  ValorTotalServicosMesas := 0;
  if not SQLVendas.IsEmpty then
  begin
    while not SQLVendas.eof do
    begin
      ValorTotalMesas := ValorTotalMesas + (SQLVendasCUPON2TOTITENS.Value - SQLVendasCUPON2DESC.value);
      ValorTotalServicosMesas := ValorTotalServicosMesas + SQLVendasCUPON3CREDTAXA.Value;
      SQLVendas.next;
    end;
  end;

  {Calcula Total de Tele}
  SQLVendas.Close;
  SQLVendas.MacroByName('ORIGEMVENDA').Value := 'ORIGEMVENDA = "TELE"';
  SQLVendas.MacroByName('MTerminal').Value := '0=0';
  SQLVendas.MacroByName('MMotoboy').Value := '0=0';

  if (HoraInicial.Text = '') and (HoraFinal.Text = '') then
    SQLVendas.MacroByName('MData').Value := 'CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' + 'CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"'
  else
    SQLVendas.MacroByName('MData').Value := 'REGISTRO >= "' + FormatDateTime('mm/dd/yyyy ', De.Date) + HoraInicial.Text + '" and ' + 'REGISTRO <= "' + FormatDateTime('mm/dd/yyyy ', Ate.Date) + HoraFinal.Text + '"';

  if ComboTerminal.Value <> '' then
    SQLVendas.MacroByName('MTerminal').Value := 'TERMICOD = ' + ComboTerminal.Value;

  if ComboTerminal2.Value <> '' then
    SQLVendas.MacroByName('MTerminal').Value := SQLVendas.MacroByName('MTerminal').Value + ' or ' + 'TERMICOD = ' + ComboTerminal2.Value;
  SQLVendas.Open;
  ValorTotalTele := 0;
  ValorTotalServicosTele := 0;
  if not SQLVendas.IsEmpty then
  begin
    while not SQLVendas.eof do
    begin
      ValorTotalTele := ValorTotalTele + (SQLVendasCUPON2TOTITENS.Value - SQLVendasCUPON2DESC.value);
      ValorTotalServicosTele := ValorTotalServicosTele + SQLVendasCUPON3CREDTAXA.Value;
      SQLVendas.next;
    end;
  end;

  SQLItensVendidos.Close;
  SQLItensVendidos.MacrobyName('MEmpresa').Value := 'EMPRICOD  = ' + EmpresaPadrao;
  if (HoraInicial.Text = '') and (HoraInicial.Text = '') then
    SQLItensVendidos.MacroByName('MData').Value := 'CUPOM.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' + 'CUPOM.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"'
  else
    SQLItensVendidos.MacroByName('MData').Value := 'CUPOM.REGISTRO >= "' + FormatDateTime('mm/dd/yyyy ', De.Date) + HoraInicial.Text + '" and ' + 'CUPOM.REGISTRO <= "' + FormatDateTime('mm/dd/yyyy ', Ate.Date) + HoraFinal.Text + '"';
  SQLItensVendidos.MacroByName('MTerminal').Value := '0=0';
  if ComboTerminal.Value <> '' then
    SQLItensVendidos.MacroByName('MTerminal').Value := 'CUPOM.TERMICOD = ' + ComboTerminal.Value;
  if ComboTerminal2.Value <> '' then
    SQLItensVendidos.MacroByName('MTerminal').Value := SQLItensVendidos.MacroByName('MTerminal').Value + ' or ' + 'CUPOM.TERMICOD = ' + ComboTerminal2.Value;
  SQLItensVendidos.MacroByName('MOperador').Value := '0=0';
  SQLItensVendidos.Open;


 // Venda Cartoes , Cheques e Crediario
  SQLVendaCartoesCheques.Close;
  SQLVendaCartoesCheques.MacrobyName('MEmpresa').Value := 'EMPRICOD  = ' + EmpresaPadrao;
  if (HoraInicial.Text = '') and (HoraInicial.Text = '') then
    SQLVendaCartoesCheques.MacroByName('MData').Value := 'CUPOM.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' + 'CUPOM.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"'
  else
    SQLVendaCartoesCheques.MacroByName('MData').Value := 'CUPOM.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy ', De.Date) + HoraInicial.Text + '" and ' + 'CUPOM.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy ', Ate.Date) + HoraFinal.Text + '"';
  SQLVendaCartoesCheques.MacroByName('MTerminal').Value := '0=0';
  if ComboTerminal.Value <> '' then
    SQLVendaCartoesCheques.MacroByName('MTerminal').Value := 'CUPOM.TERMICOD = ' + ComboTerminal.Value;
  if ComboTerminal2.Value <> '' then
    SQLVendaCartoesCheques.MacroByName('MTerminal').Value := SQLItensVendidos.MacroByName('MTerminal').Value + ' or ' + 'CUPOM.TERMICOD = ' + ComboTerminal2.Value;
  if ComboOperador.Value <> '' then
    SQLVendaCartoesCheques.MacroByName('MOperador').Value := 'CUPOM.USUAICODVENDA = ' + ComboOperador.Value
  else
    SQLVendaCartoesCheques.MacroByName('MOperador').Value := '0=0';
  SQLVendaCartoesCheques.Open;

  //Total de cupom
  SQLTotalCupom.Close;
  SQLTotalCupom.MacrobyName('MEmpresa').Value := 'EMPRICOD  = ' + EmpresaPadrao;
  if ComboTerminal.Value <> '' then
    SQLTotalCupom.MacroByName('MTerminal').Value := 'C.TERMICOD = ' + ComboTerminal.Value;
  if ComboTerminal2.Value <> '' then
    SQLTotalCupom.MacroByName('MTerminal').Value := SQLItensVendidos.MacroByName('MTerminal').Value + ' or ' + 'C.TERMICOD = ' + ComboTerminal2.Value;
  if ComboOperador.Value <> '' then
    SQLTotalCupom.MacroByName('MOperador').Value := 'C.USUAICODVENDA = ' + ComboOperador.Value
  else
    SQLTotalCupom.MacroByName('MOperador').Value := '0=0';
  if (HoraInicial.Text = '') and (HoraInicial.Text = '') then
    SQLTotalCupom.MacroByName('MData').Value := 'CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' + 'CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"'
  else
    SQLTotalCupom.MacroByName('MDat').Value := 'REGISTRO >= "' + FormatDateTime('mm/dd/yyyy ', De.Date) + HoraInicial.Text + '" and ' + 'REGISTRO <= "' + FormatDateTime('mm/dd/yyyy ', Ate.Date) + HoraFinal.Text + '"';
  SQLTotalCupom.Open;

  //Cancelados
  SQLCancelados.Close;
  SQLCancelados.MacrobyName('MEmpresa').Value := 'EMPRICOD  = ' + EmpresaPadrao;
  if ComboTerminal.Value <> '' then
    SQLCancelados.MacroByName('MTerminal').Value := 'C.TERMICOD = ' + ComboTerminal.Value;
  if ComboTerminal2.Value <> '' then
    SQLCancelados.MacroByName('MTerminal').Value := SQLItensVendidos.MacroByName('MTerminal').Value + ' or ' + 'C.TERMICOD = ' + ComboTerminal2.Value;
  if ComboOperador.Value <> '' then
    SQLCancelados.MacroByName('MOperador').Value := 'C.USUAICODVENDA = ' + ComboOperador.Value
  else
    SQLCancelados.MacroByName('MOperador').Value := '0=0';
  if (HoraInicial.Text = '') and (HoraInicial.Text = '') then
    SQLCancelados.MacroByName('MData').Value := 'C.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' + 'C.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"'
  else
    SQLCancelados.MacroByName('MData').Value := 'REGISTRO >= "' + FormatDateTime('mm/dd/yyyy ', De.Date) + HoraInicial.Text + '" and ' + 'REGISTRO <= "' + FormatDateTime('mm/dd/yyyy ', Ate.Date) + HoraFinal.Text + '"';
  SQLCancelados.Open;



  if not ckBobina.checked then
    ReportTotais.Print
  else
  begin
      {Impressao em formato Bobina}
    vSaldoTotal := 0;
    memo.Lines.Clear;
    memo.Lines.Add(' ');
    memo.Lines.Add('</ce><e>Resumo de Caixa</e></fn>');
    memo.Lines.Add(' ');
    if HoraInicial.Text = '' then
      memo.Lines.Add('</ae>Periodo: ' + de.Text + ' até ' + Ate.Text)
    else
      memo.Lines.Add('</ae>Periodo: ' + de.Text + ' ' + HoraInicial.Text + ' até ' + Ate.Text + ' ' + HoraFinal.Text);
    memo.Lines.Add('Terminais: ' + ComboTerminal.Text + ' - ' + ComboTerminal2.Text);
    memo.Lines.Add('Operador: ' + ComboOperador.Text);
    memo.Lines.Add(' ');
    memo.Lines.Add('</ae><n>Totais por Operacoes                   Vlr.Saldo</n>');
    SQLTotalOperacao.First;
    while not SQLTotalOperacao.eof do
    begin
      memo.Lines.Add('</ae></fn>' + SQLTotalOperacaoOPCXA60DESCR.Value);
      memo.Lines.Add('</ad></fn>' + FormatFloat('R$ ##0.00', SQLTotalOperacaoSALDO.Value));
      vSaldoTotal := vSaldoTotal + SQLTotalOperacaoSALDO.Value;
      SQLTotalOperacao.next;
    end;
    memo.Lines.Add('</fn>------------------------------------------------');
    memo.Lines.Add('</ad><e><n>TOTAL => ' + FormatFloat('R$ ##0.00', vSaldoTotal) + '</n></e>');
    SQLTotalOperacao.First;

    vSaldoTotal := 0;
    memo.Lines.Add('</fn>------------------------------------------------');
    memo.Lines.Add(' ');
    memo.Lines.Add('</ae><n>Totais por Numerarios                  Vlr.Saldo</n>');
    SQLTotaNumerario.First;
    while not SQLTotaNumerario.eof do
    begin
      memo.Lines.Add('</ae></fn>' + SQLTotaNumerarioNUMEA30DESCR.Value);
      memo.Lines.Add('</ad></fn>' + FormatFloat('R$ ##0.00', SQLTotaNumerarioSALDO.Value));
      vSaldoTotal := vSaldoTotal + SQLTotaNumerarioSALDO.Value;
      SQLTotaNumerario.next;
    end;
    memo.Lines.Add('</fn>------------------------------------------------');
    memo.Lines.Add('</ad><n>TOTAL => ' + FormatFloat('R$ ##0.00', vSaldoTotal) + '</n>');
    memo.Lines.Add('</fn>------------------------------------------------');
    memo.Lines.Add(' ');

    memo.Lines.Add('------------------------------------------------');
    memo.Lines.Add('<ad><n>TOTAL Cupons  => ' + SQLTotalCupomQTDE_CUPOM.AsString + '  ' + FormatFloat('R$ ##0.00', SQLTotalCupomVALOR_TOTAL.AsFloat) + '</n></ad>');
    memo.Lines.Add('<ad><n>Cancelados  => ' + SQLCanceladosQTDE_CANCELADO.AsString + '  ' + FormatFloat('R$ ##0.00', SQLCanceladosVALOR_CANCELADO.AsFloat) + '</n></ad>');
    memo.Lines.Add('------------------------------------------------');

    SQLVendasPorVendedor.close;
    if (HoraInicial.Text = '') and (HoraFinal.Text = '') then
      SQLVendasPorVendedor.MacroByName('MData').Value := 'CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' + 'CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"'
    else
      SQLVendasPorVendedor.MacroByName('MData').Value := 'REGISTRO >= "' + FormatDateTime('mm/dd/yyyy ', De.Date) + HoraInicial.Text + '" and ' + 'REGISTRO <= "' + FormatDateTime('mm/dd/yyyy ', Ate.Date) + HoraFinal.Text + '"';

    if ComboTerminal.Value <> '' then
      SQLVendasPorVendedor.MacroByName('MTerminal').Value := 'TERMICOD = ' + ComboTerminal.Value;

    if ComboTerminal2.Value <> '' then
      SQLVendasPorVendedor.MacroByName('MTerminal').Value := SQLVendas.MacroByName('MTerminal').Value + ' or ' + 'TERMICOD = ' + ComboTerminal2.Value;
    SQLVendasPorVendedor.open;
    if not SQLVendasPorVendedor.IsEmpty then
    begin
      memo.Lines.Add('</fn>------------------------------------------------');
      memo.Lines.Add('</ae><n>Totais por Garcon                     Valor</n>');
      SQLVendasPorVendedor.First;
      while not SQLVendasPorVendedor.eof do
      begin
        memo.Lines.Add('</ae></fn>' + SQLLocate('VENDEDOR', 'VENDICOD', 'VENDA60NOME', SQLVendasPorVendedorVENDICOD.AsString));
        memo.Lines.Add('</ad></fn>' + FormatFloat('R$ ##0.00', SQLVendasPorVendedorTOTALVENDEDOR.Value));
        SQLVendasPorVendedor.Next;
      end;
      memo.Lines.Add('</fn>------------------------------------------------');
      SQLVendasPorVendedor.close;
    end;
      // fIM VENDA POR GARCON

      // VENDAS CANCELADAS
    SQLVendasCanceladas.close;
    if (HoraInicial.Text = '') and (HoraFinal.Text = '') then
      SQLVendasCanceladas.MacroByName('MData').Value := 'REGISTRO >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + ' 00:00:01" and ' + 'REGISTRO <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + ' 23:59:59"'
    else
      SQLVendasCanceladas.MacroByName('MData').Value := 'REGISTRO >= "' + FormatDateTime('mm/dd/yyyy ', De.Date) + HoraInicial.Text + '" and ' + 'REGISTRO <= "' + FormatDateTime('mm/dd/yyyy ', Ate.Date) + HoraFinal.Text + '"';

    if ComboTerminal.Value <> '' then
      SQLVendasCanceladas.MacroByName('MTerminal').Value := 'TERMICOD = ' + ComboTerminal.Value;

    if ComboTerminal2.Value <> '' then
      SQLVendasCanceladas.MacroByName('MTerminal').Value := SQLVendas.MacroByName('MTerminal').Value + ' or ' + 'TERMICOD = ' + ComboTerminal2.Value;
    SQLVendasCanceladas.open;
    if not SQLVendasCanceladas.IsEmpty then
    begin
      memo.Lines.Add('</fn>------------------------------------------------');
      memo.Lines.Add('</ae><n>Atendimentos Cancelados                  </n>');
      memo.Lines.Add('</fn>------------------------------------------------');
      SQLVendasCanceladas.First;
      while not SQLVendasCanceladas.eof do
      begin
        if SQLVendasCanceladasCUPOA13ID.Value <> '' then
          memo.Lines.Add('</ae></fn>ID Cupom.: ' + SQLVendasCanceladasCUPOA13ID.AsString);
        if SQLVendasCanceladasPRVDICOD.Value > 0 then
        begin
          memo.Lines.Add('</ae></fn>Pedido.: ' + SQLVendasCanceladasPRVDICOD.AsString);
          if SQLVendasCanceladasMESAICOD.Value > 0 then
            memo.Lines.Add('</ae></fn>Mesa.: ' + SQLVendasCanceladasMESAICOD.AsString);
          if SQLVendasCanceladasCONTAICOD.Value > 0 then
            memo.Lines.Add('</ae></fn>Comanda.: ' + SQLVendasCanceladasCONTAICOD.AsString);
        end;
        if SQLVendasCanceladasPRODICOD.Value > 0 then
          memo.Lines.Add('</ae></fn>Produto.: ' + SQLVendasCanceladasPRODICOD.AsString + '-' + SQLVendasCanceladasPRODUTO.Value);
        memo.Lines.Add('</ae></fn>Valor Total ==> ' + FormatFloat('R$ ##0.00', SQLVendasCanceladasTOTALITEM.Value));
        memo.Lines.Add('</ae></fn>Cliente: ' + SQLVendasCanceladasCLIENTENOME.Value);
        memo.Lines.Add('</ae></fn>Fone...: ' + SQLVendasCanceladasCLIENTEFONE.Value);
        memo.Lines.Add('</ae></fn>Garcon.: ' + SQLLocate('VENDEDOR', 'VENDICOD', 'VENDA60NOME', SQLVendasCanceladasVENDICOD.AsString));
        memo.Lines.Add('</ae></fn>Operador Cancelamento: ' + SQLLocate('USUARIO', 'USUAICOD', 'USUAA60LOGIN', SQLVendasCanceladasUSUAICOD.AsString));
        memo.Lines.Add('</ae></fn>Motivo Cancelamento: ');
        memo.Lines.Add('</ae></fn>' + SQLVendasCanceladasMOTIVO.Value);
        memo.Lines.Add('</fn>------------------------------------------------');
        SQLVendasCanceladas.Next;
      end;
      memo.Lines.Add('</fn>------------------------------------------------');
      SQLVendasCanceladas.close;
    end;
      // FIM VENDA CANCELADAS

      // Produtos Vendidos
    if ckItensVendidos.Checked then
    begin
      SQLItensVendidos.Close;
      SQLItensVendidos.MacrobyName('MEmpresa').Value := 'EMPRICOD  = ' + EmpresaPadrao;
      if (HoraInicial.Text = '') and (HoraInicial.Text = '') then
        SQLItensVendidos.MacroByName('MData').Value := 'CUPOM.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' + 'CUPOM.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"'
      else
        SQLItensVendidos.MacroByName('MData').Value := 'CUPOM.REGISTRO >= "' + FormatDateTime('mm/dd/yyyy ', De.Date) + HoraInicial.Text + '" and ' + 'CUPOM.REGISTRO <= "' + FormatDateTime('mm/dd/yyyy ', Ate.Date) + HoraFinal.Text + '"';

      SQLItensVendidos.MacroByName('MTerminal').Value := '0=0';

      if ComboTerminal.Value <> '' then
        SQLItensVendidos.MacroByName('MTerminal').Value := 'CUPOM.TERMICOD = ' + ComboTerminal.Value;

      if ComboTerminal2.Value <> '' then
        SQLItensVendidos.MacroByName('MTerminal').Value := SQLItensVendidos.MacroByName('MTerminal').Value + ' or ' + 'CUPOM.TERMICOD = ' + ComboTerminal2.Value;

      SQLItensVendidos.MacroByName('MOperador').Value := '0=0';

      SQLItensVendidos.Open;
      if not SQLItensVendidos.IsEmpty then
      begin
        memo.Lines.Add('</fn>------------------------------------------------');
        memo.Lines.Add('</ae><n>Produtos Vendidos               Qtde    Valor</n>');
        memo.Lines.Add('</fn>------------------------------------------------');
        SQLItensVendidos.First;
        while not SQLItensVendidos.eof do
        begin
          memo.Lines.Add('</ae></fn>' + SQLItensVendidosPRODICOD.AsString + '-' + copy(SQLLocate('produto', 'prodicod', 'proda60descr', SQLItensVendidosPRODICOD.AsString), 1, 30));
          memo.Lines.Add('</ad></fn>' + FormatFloat('R$ ##0.00', SQLItensVendidosQTDE.Value) + '    ' + FormatFloat('R$ ##0.00', SQLItensVendidosVLRTOTALITEM.Value));
          SQLItensVendidos.Next;
        end;
        memo.Lines.Add('</fn>------------------------------------------------');
        SQLItensVendidos.close;
      end;
    end;
    memo.Lines.Add(' ');
    memo.Lines.Add(' ');
    memo.Lines.Add(' ');
    memo.Lines.Add(' ');

    if (ECFAtual = 'NFCE BEMATECH') then
      DM.ACBrPosPrinter.Modelo := ppEscBematech;
    if (ECFAtual = 'DR700') then
      DM.ACBrPosPrinter.Modelo := ppEscDaruma;
    if (ECFAtual = 'DR800') then
      DM.ACBrPosPrinter.Modelo := ppEscDaruma;
    if (ECFAtual = 'NFCE EPSON') then
      DM.ACBrPosPrinter.Modelo := ppEscPosEpson;
    if (ECFAtual = 'NFCE ELGIN') then
      DM.ACBrPosPrinter.Modelo := ppEscVox;

    if dm.SQLTerminalAtivoTERMA5ECFPORTACOM.Value = 'USB' then
      DM.ACBrPosPrinter.Device.Porta := '\\localhost\nfce'
    else
      DM.ACBrPosPrinter.Device.Porta := dm.SQLTerminalAtivoTERMA5ECFPORTACOM.Value;
    DM.ACBrPosPrinter.Device.Baud := dm.SQLTerminalAtivoECF_VELOC.Value;
    DM.ACBrPosPrinter.Device.Ativar;

    try
      DM.ACBrPosPrinter.Imprimir(Memo.Lines.Text);
    finally
      DM.ACBrPosPrinter.Device.Desativar;
    end;
      {corta papel}
    DM.ACBrPosPrinter.Device.Ativar;
    try
      DM.ACBrPosPrinter.Imprimir('</corte_parcial>');
    finally
      DM.ACBrPosPrinter.Device.Desativar;
    end;
  end;
end;

procedure TFormPrincipalRelatorios.ReportTotaisPreviewFormCreate(Sender: TObject);
begin
  ReportTotais.PreviewForm.WindowState := wsMaximized;
  TppViewer(ReportTotais.PreviewForm.Viewer).ZoomPercentage := 100;
end;

procedure TFormPrincipalRelatorios.ppHeaderBand1BeforePrint(Sender: TObject);
begin
  ReportTotais.PreviewForm.WindowState := wsMaximized;
  if HoraInicial.Text = '' then
    LbPeriodo.Caption := de.Text + ' até ' + Ate.Text
  else
    LbPeriodo.Caption := de.Text + ' ' + HoraInicial.Text + ' até ' + Ate.Text + ' ' + HoraFinal.Text;

  LbTerminal.Caption := ComboTerminal.Text + ' - ' + ComboTerminal2.Text;
end;

procedure TFormPrincipalRelatorios.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    Perform(Wm_NextDlgCtl, 0, 0);
end;

procedure TFormPrincipalRelatorios.ReportTelePreviewFormCreate(Sender: TObject);
begin
  ReportTele.PreviewForm.WindowState := wsMaximized;
  TppViewer(ReportTele.PreviewForm.Viewer).ZoomPercentage := 100;
end;

procedure TFormPrincipalRelatorios.ppHeaderBand2BeforePrint(Sender: TObject);
begin
  ReportTele.PreviewForm.WindowState := wsMaximized;
  LbPeriodoTele.Caption := de.Text + ' até ' + Ate.Text;
  LbTerminalTele.Caption := ComboTerminal.Text + ' - ' + ComboTerminal2.Text;
end;

procedure TFormPrincipalRelatorios.ppDetailBand3BeforePrint(Sender: TObject);
begin
  lbMotoboy.caption := dm.SQLLocate('MOTOBOY', 'MTBYICOD', 'MTBYA30DESCR', SQLVendasMTBYICOD.AsString);
end;

procedure TFormPrincipalRelatorios.ppSummaryBand2BeforePrint(Sender: TObject);
begin
  lbTotalVendaBalcao.Caption := FormatFloat('##0.00', ValorTotalBalcao);
  lbTotalVendaMesas.Caption := FormatFloat('##0.00', ValorTotalMesas);
  lbTotalVendaTele.Caption := FormatFloat('##0.00', ValorTotalTele);
  lbTotalServicosBalcao.Caption := FormatFloat('##0.00', ValorTotalServicosBalcao);
  lbTotalServicosMesas.Caption := FormatFloat('##0.00', ValorTotalServicosMesas);
  lbTotalServicosTele.Caption := FormatFloat('##0.00', ValorTotalServicosTele);
  lbTotalVendas.Caption := FormatFloat('##0.00', (ValorTotalBalcao + ValorTotalMesas + ValorTotalTele));
  lbTotalServicos.Caption := FormatFloat('##0.00', (ValorTotalServicosBalcao + ValorTotalServicosMesas + ValorTotalServicosTele));

  lbTotalDin.Caption := FormatFloat('##0.00', TotalDin);
  lbTotalCrt.Caption := FormatFloat('##0.00', TotalCRT);
end;

procedure TFormPrincipalRelatorios.ImgDesligarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormPrincipalRelatorios.DetalheProdutosVendidosBeforePrint(
  Sender: TObject);
begin
  PRODUTO.Caption    := SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',SQLItensVendidosPRODICOD.AsString);
end;

procedure TFormPrincipalRelatorios.SumarioNumerariosBeforePrint(
  Sender: TObject);
begin
  if not ckItensVendidos.Checked then
    begin
      TituloProdutosVendidos.Visible  := False;
      TotalProdutosVendidos.Visible   := False;
    end
  else
    begin
      TituloProdutosVendidos.Visible  := True;
      TotalProdutosVendidos.Visible   := True;
    end;

end;

procedure TFormPrincipalRelatorios.ppSummaryBand4BeforePrint(
  Sender: TObject);
begin
  if not CKImpVendaCartoes.Checked then
  begin
    TituloVendaCartoes.Visible := False;
    DetalheVendaCartoes.Visible := False;
  end
  else
  begin
    TituloVendaCartoes.Visible := True;
    DetalheVendaCartoes.Visible := True;
  end;
end;

procedure TFormPrincipalRelatorios.ppSummaryBand5BeforePrint(
  Sender: TObject);
begin
  if not ckItensVendidos.Checked then
  begin
    TituloProdutosVendidos.Visible := False;
    TotalProdutosVendidos.Visible := False;
  end
  else
  begin
    TituloProdutosVendidos.Visible := True;
    TotalProdutosVendidos.Visible := True;
  end;
end;

end.

