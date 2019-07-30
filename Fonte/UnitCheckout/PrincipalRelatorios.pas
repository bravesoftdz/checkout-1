unit PrincipalRelatorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RxLookup, Mask, ToolEdit, DBTables, DB, ppCtrls,
  ppBands, ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppClass, ppCache,
  ppProd, ppDB, ppComm, ppRelatv, ppDBPipe, ppDBBDE, RxQuery, ppViewr, ppModule,
  raCodMod, ppMemo, Placemnt, AdvSmoothPanel, RXCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, ACBrNFeDANFEClass, ACBrNFeDANFeESCPOS, ACBrBase,
  ACBrPosPrinter;

type
  TFormPrincipalRelatorios = class(TForm)
    DSSQLTerminal: TDataSource;
    SQLTerminal: TRxQuery;
    DSTblTemporaria: TDataSource;
    TblTemporaria: TTable;
    BatchMove: TBatchMove;
    SQLOperador: TRxQuery;
    DSSQLOperador: TDataSource;
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
    SQLVendaCartoesCheques: TRxQuery;
    SQLVendaCartoesChequesCTRCN2VLR: TFloatField;
    SQLVendaCartoesChequesCTRCDVENC: TDateTimeField;
    SQLVendaCartoesChequesNUMEICOD: TIntegerField;
    SQLVendaCartoesChequesNUMEA30DESCR: TStringField;
    SQLVendaCartoesChequesTEF: TStringField;
    SQLVendaCartoesChequesBANCA5CODCHQ: TStringField;
    SQLVendaCartoesChequesCTRCA10AGENCIACHQ: TStringField;
    SQLVendaCartoesChequesCTRCA15NROCHQ: TStringField;
    dsSQLVendaCartoesCheques: TDataSource;
    SQLItensVendidos: TRxQuery;
    SQLItensVendidosPRODICOD: TIntegerField;
    SQLItensVendidosQTDE: TFloatField;
    SQLItensVendidosVLRTOTALITEM: TFloatField;
    dsSQLItensVendidos: TDataSource;
    ReportTotais: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    LbPeriodo: TppLabel;
    LbTerminal: TppLabel;
    ppLabel9: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppHeaderBand1: TppHeaderBand;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand5: TppTitleBand;
    ppLabel15: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel32: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    SumarioNumerarios: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLabel33: TppLabel;
    ppLine4: TppLine;
    ppLine13: TppLine;
    ppDBCalc3: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppLine11: TppLine;
    ppLabel45: TppLabel;
    ppLine12: TppLine;
    ppDBCalc8: TppDBCalc;
    PipeOperacao: TppBDEPipeline;
    PipeOperacaoppField1: TppField;
    PipeOperacaoppField2: TppField;
    PipeOperacaoppField3: TppField;
    PipeOperacaoppField4: TppField;
    PipeOperacaoppField5: TppField;
    PipeNumerario: TppBDEPipeline;
    PipeNumerarioppField1: TppField;
    PipeNumerarioppField2: TppField;
    PipeNumerarioppField3: TppField;
    PipeNumerarioppField4: TppField;
    PipeNumerarioppField5: TppField;
    PipeItensVendidos: TppBDEPipeline;
    PipeItensVendidosppField1: TppField;
    PipeItensVendidosppField2: TppField;
    PipeItensVendidosppField3: TppField;
    PipeVendasCartoesCheques: TppBDEPipeline;
    PipeVendasCartoesChequesppField1: TppField;
    PipeVendasCartoesChequesppField2: TppField;
    PipeVendasCartoesChequesppField3: TppField;
    PipeVendasCartoesChequesppField4: TppField;
    PipeVendasCartoesChequesppField5: TppField;
    PipeVendasCartoesChequesppField6: TppField;
    PipeVendasCartoesChequesppField7: TppField;
    PipeVendasCartoesChequesppField8: TppField;
    SQLItensVendidosCPITN3VLRUNIT: TFloatField;
    CPITN3VLRUNIT: TppField;
    ppLabel31: TppLabel;
    ppOperador: TppLabel;
    FormStorage1: TFormStorage;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ptopo: TAdvOfficeStatusBar;
    RxLabel2: TRxLabel;
    AdvSmoothPanel1: TAdvSmoothPanel;
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
    GroupBox4: TGroupBox;
    ComboOperador: TRxDBLookupCombo;
    CKImpVendaCartoes: TCheckBox;
    ckImpProdutosVendidos: TCheckBox;
    ckBobina: TCheckBox;
    Memo: TMemo;
    ckImpNumerario: TCheckBox;
    chkCrediario: TCheckBox;
    SQLCrediarioDetalhado: TRxQuery;
    DSSQLCrediarioDetalhado: TDataSource;
    SQLCrediarioDetalhadoMVCXN2VLRDEB: TFloatField;
    SQLCrediarioDetalhadoMVCXN2VLRCRED: TFloatField;
    SQLCrediarioDetalhadoNUMEA30DESCR: TStringField;
    SQLCrediarioDetalhadoTIPO: TStringField;
    PipeCrediarioDetalhado: TppBDEPipeline;
    PipeTotalCupom: TppBDEPipeline;
    SQLTotalCupom: TRxQuery;
    DSSQLTotalCupom: TDataSource;
    SQLTotalCupomVALOR_TOTAL: TFloatField;
    SQLTotalCupomQTDE_CUPOM: TIntegerField;
    SQLCancelados: TRxQuery;
    DSSQLCancelados: TDataSource;
    PipeCancelados: TppBDEPipeline;
    SQLCanceladosVALOR_CANCELADO: TFloatField;
    SQLCanceladosQTDE_CANCELADO: TIntegerField;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel17: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppSubReport4: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    SubProdutosVendidos: TppSubReport;
    ppChildReport5: TppChildReport;
    TituloProdutosVendidos: TppTitleBand;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel30: TppLabel;
    DetalheProdutosVendidos: TppDetailBand;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    SumarioProdutosVendidos: TppSummaryBand;
    ppLine5: TppLine;
    SubVendasCartoesCheque: TppSubReport;
    ppChildReport6: TppChildReport;
    TituloVendaCartoes: TppTitleBand;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel46: TppLabel;
    ppLabel48: TppLabel;
    ppLabel47: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    DetalheVendaCartoes: TppDetailBand;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    TEF: TppLabel;
    SumarioVendaCartoes: TppSummaryBand;
    ppLine2: TppLine;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    TituloCrediarioDetalhado: TppTitleBand;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel14: TppLabel;
    DetalheCrediarioDetalhado: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    SumarioCrediarioDetalhado: TppSummaryBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    TotalCrediarioDetalhado: TppGroupFooterBand;
    ppLabel16: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    TotalProdutosVendidos: TppGroupFooterBand;
    ppDBCalc4: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBText26: TppDBText;
    Produto: TppLabel;
    ppDBText20: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLabel20: TppLabel;
    ppLine1: TppLine;
    procedure FormCreate(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure ReportTotaisPreviewFormCreate(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ppTitleBand1BeforePrint(Sender: TObject);
    procedure SumarioNumerariosBeforePrint(Sender: TObject);
    procedure SumarioProdutosVendidosBeforePrint(Sender: TObject);
    procedure DetalheProdutosVendidosBeforePrint(Sender: TObject);
    procedure ReportTotaisPreviewFormClose(Sender: TObject);
    procedure SumarioVendaCartoesBeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipalRelatorios: TFormPrincipalRelatorios;

implementation

uses
  DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormPrincipalRelatorios.FormCreate(Sender: TObject);
begin
  SQLOperador.Open;
  SQLTerminal.Open;
  de.Date := Date;
  Ate.Date := Date;

  if dm.SQLUsuarioUSUACPERMVMOVCX.Value <> 'S' then
  begin
    de.Enabled := False;
    ate.Enabled := False;

    ComboTerminal.keyValue := TerminalAtual;
    ComboOperador.keyValue := dm.SQLUsuarioUSUAICOD.Value;
    ComboTerminal.Enabled := False;
    ComboTerminal2.Enabled := False;
    ComboOperador.Enabled := False;
  end;
end;

procedure TFormPrincipalRelatorios.BtnVisualizarClick(Sender: TObject);
var
  vSaldoTotal, vValorSangria, vValorCrediarioCred: double;
  x, y: string;
  espaco: Integer;
begin
//  if ECFAtual = 'NFCE BEMATECH' then
//    espaco := 20
//  else
  espaco := 20;
  SQLTotaNumerario.Close;
  SQLTotaNumerario.MacrobyName('MEmpresa').Value := 'EMPRICOD  = ' + EmpresaPadrao;
  SQLTotaNumerario.MacroByName('MTerminal').Value := '0=0';
  if (HoraInicial.Text = '') and (HoraInicial.Text = '') then
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

  //Operacoes de caixa
  SQLTotalOperacao.Close;
  SQLTotalOperacao.MacrobyName('MEmpresa').Value := 'EMPRICOD  = ' + EmpresaPadrao;
  SQLTotalOperacao.MacroByName('MTerminal').Value := '0=0';
  if (HoraInicial.Text = '') and (HoraInicial.Text = '') then
    SQLTotalOperacao.MacroByName('MData').Value := 'MOVIMENTOCAIXA.MVCXDMOV >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' + 'MOVIMENTOCAIXA.MVCXDMOV <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"'
  else
    SQLTotalOperacao.MacroByName('MData').Value := 'MOVIMENTOCAIXA.REGISTRO >= "' + FormatDateTime('mm/dd/yyyy ', De.Date) + HoraInicial.Text + '" and ' + 'MOVIMENTOCAIXA.REGISTRO <= "' + FormatDateTime('mm/dd/yyyy ', Ate.Date) + HoraFinal.Text + '"';
  if ComboTerminal.Value <> '' then
    SQLTotalOperacao.MacroByName('MTerminal').Value := 'MOVIMENTOCAIXA.TERMICOD = ' + ComboTerminal.Value;
  if ComboTerminal2.Value <> '' then
    SQLTotalOperacao.MacroByName('MTerminal').Value := SQLTotalOperacao.MacroByName('MTerminal').Value + ' or ' + 'MOVIMENTOCAIXA.TERMICOD = ' + ComboTerminal2.Value;
  if ComboOperador.Value <> '' then
    SQLTotalOperacao.MacroByName('MOperador').Value := 'MOVIMENTOCAIXA.USUAICOD = ' + ComboOperador.Value
  else
    SQLTotalOperacao.MacroByName('MOperador').Value := '0=0';
  SQLTotalOperacao.Open;

  // Produtos Vendidos
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
  if ComboOperador.Value <> '' then
    SQLItensVendidos.MacroByName('MOperador').Value := 'CUPOM.USUAICODVENDA = ' + ComboOperador.Value
  else
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

  if chkCrediario.Checked then
  begin
    SQLCrediarioDetalhado.Close;
    SQLCrediarioDetalhado.MacrobyName('MEmpresa').Value := 'EMPRICOD  = ' + EmpresaPadrao;
    SQLCrediarioDetalhado.MacroByName('MTerminal').Value := '0=0';
    if (HoraInicial.Text = '') and (HoraInicial.Text = '') then
      SQLCrediarioDetalhado.MacroByName('MData').Value := 'MVCXDMOV >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' + 'MVCXDMOV <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"'
    else
      SQLCrediarioDetalhado.MacroByName('MData').Value := 'REGISTRO >= "' + FormatDateTime('mm/dd/yyyy ', De.Date) + HoraInicial.Text + '" and ' + 'REGISTRO <= "' + FormatDateTime('mm/dd/yyyy ', Ate.Date) + HoraFinal.Text + '"';
    SQLCrediarioDetalhado.MacroByName('MTerminal').Value := '0=0';
    if ComboTerminal.Value <> '' then
      SQLCrediarioDetalhado.MacroByName('MTerminal').Value := 'TERMICOD = ' + ComboTerminal.Value;
    if ComboTerminal2.Value <> '' then
      SQLCrediarioDetalhado.MacroByName('MTerminal').Value := SQLTotaNumerario.MacroByName('MTerminal').Value + ' or ' + 'TERMICOD = ' + ComboTerminal2.Value;
    if ComboOperador.Value <> '' then
      SQLCrediarioDetalhado.MacroByName('MOperador').Value := 'USUAICOD = ' + ComboOperador.Value
    else
      SQLCrediarioDetalhado.MacroByName('MOperador').Value := '0=0';
    SQLCrediarioDetalhado.Open;
  end;

  //Total de cupom
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
    vValorSangria := 0;
    vValorCrediarioCred := 0;
    memo.Lines.Clear;
    memo.Lines.Add(' ');
    memo.Lines.Add('<ce><e>Resumo de Caixa</e></ce>');
    memo.Lines.Add(' ');
    if HoraInicial.Text = '' then
      memo.Lines.Add('</ae></fn>Periodo: ' + de.Text + ' até ' + Ate.Text)
    else
      memo.Lines.Add('</ae></fn>Periodo: ' + de.Text + ' ' + HoraInicial.Text + ' até ' + Ate.Text + ' ' + HoraFinal.Text);
    memo.Lines.Add('Terminais: ' + ComboTerminal.Text + ' - ' + ComboTerminal2.Text);
    memo.Lines.Add('Operador: ' + ComboOperador.Text);
    memo.Lines.Add('</ae>Impresso em: ' + FormatDateTime('dd/mm/yy hh:nn:ss', now));
    memo.Lines.Add(' ');
    if ECFAtual = 'NFCE BEMATECH' then
      memo.Lines.Add('<n>Totais por Operacoes             Vlr.Saldo</n>')
    else
      memo.Lines.Add('<n>Totais por Operacoes                Vlr.Saldo</n>');
    if SQLTotalOperacao.IsEmpty then
      ShowMessage('Nenhuma Operação inicial informada!');
    SQLTotalOperacao.First;
    while not SQLTotalOperacao.eof do
    begin
      x := MontaString(SQLTotalOperacaoOPCXA60DESCR.Value, 21, 1, ' ');
      y := MontaString(FormatFloat('R$ ##0.00', SQLTotalOperacaoSALDO.Value), espaco, 0, ' ');
      x := x + y;
      memo.Lines.Add('<ad></fn>' + x + '</ad>');
//          memo.Lines.Add('<ad></fn>' + FormatFloat('R$ ##0.00',SQLTotalOperacaoSALDO.Value) + '</ad>');
      vValorSangria := vValorSangria + (SQLTotalOperacaoSALDO.AsFloat *  - 1);
      if ckImpNumerario.Checked then
        vSaldoTotal := vSaldoTotal + SQLTotalOperacaoSALDO.Value;
      SQLTotalOperacao.next;
    end;
    if ckImpNumerario.Checked then
    begin
//      memo.Lines.Add('</fn>------------------------------------------------');
//      memo.Lines.Add('</ad><e><n>TOTAL => ' + FormatFloat('R$ ##0.00', vSaldoTotal) + '</n></e>');
    end;
    SQLTotalOperacao.First;

    vSaldoTotal := 0;
    memo.Lines.Add('------------------------------------------------');
    memo.Lines.Add('<n>Totais por Numerarios               Vlr.Saldo</n>');
    SQLTotaNumerario.First;
    while not SQLTotaNumerario.eof do
    begin
      x := MontaString(SQLTotaNumerarioNUMEA30DESCR.Value, 21, 1, ' ');
      y := MontaString(FormatFloat('R$ ##0.00', SQLTotaNumerarioSALDO.Value), espaco, 0, ' ');
      x := x + y;
      memo.Lines.Add('<ad></fn>' + x + '</ad>');
      vSaldoTotal := vSaldoTotal + SQLTotaNumerarioSALDO.Value;
      SQLTotaNumerario.next;
    end;
    memo.Lines.Add('------------------------------------------------');
    memo.Lines.Add('<ad><n>TOTAL => ' + FormatFloat('R$ ##0.00', vSaldoTotal) + '</n></ad>');
//    memo.Lines.Add('------------------------------------------------');
//    vValorSangria := vSaldoTotal + vValorSangria;
//    memo.Lines.Add('<ad><n>TOTAL DE VENDA => ' + FormatFloat('R$ ##0.00', vValorSangria) + '</n></ad>');

    memo.Lines.Add('------------------------------------------------');
    memo.Lines.Add('<ad><n>TOTAL Cupons  => ' + SQLTotalCupomQTDE_CUPOM.AsString + '  ' + FormatFloat('R$ ##0.00', SQLTotalCupomVALOR_TOTAL.AsFloat) + '</n></ad>');
    memo.Lines.Add('<ad><n>Cancelados  => ' + SQLCanceladosQTDE_CANCELADO.AsString + '  ' + FormatFloat('R$ ##0.00', SQLCanceladosVALOR_CANCELADO.AsFloat) + '</n></ad>');
    memo.Lines.Add('------------------------------------------------');

      // Produtos Vendidos
    if ckImpProdutosVendidos.Checked then
    begin
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

      // Resumo Crediário
    if chkCrediario.Checked then
    begin
      if not SQLCrediarioDetalhado.IsEmpty then
      begin
        memo.Lines.Add('</fn>------------------------------------------------');
        memo.Lines.Add('</ae><n>Resumo Crediario</n>');
        memo.Lines.Add('</fn>------------------------------------------------');
        memo.Lines.Add('</ae><n>Numerario          Tipo       Valor Operacao</n>');
        memo.Lines.Add('</fn>------------------------------------------------');
        SQLCrediarioDetalhado.First;
        while not SQLCrediarioDetalhado.eof do
        begin
          x := MontaString(SQLCrediarioDetalhadoNUMEA30DESCR.AsString, 18, 1, ' ');
          x := x + MontaString(SQLCrediarioDetalhadoTIPO.AsString, 14, 1, ' ');
          y := MontaString(FormatFloat('R$ ##0.00', SQLCrediarioDetalhadoMVCXN2VLRCRED.Value), espaco - 10, 0, ' ');
          x := x + y;
          memo.Lines.Add('<ad></fn>' + x + '</ad>');
          vValorCrediarioCred := vValorCrediarioCred + SQLCrediarioDetalhadoMVCXN2VLRCRED.AsFloat;
          SQLCrediarioDetalhado.Next;
        end;
        memo.Lines.Add('</fn>------------------------------------------------');
        memo.Lines.Add('</ad><e><n>TOTAL => ' + FormatFloat('R$ ##0.00', vValorCrediarioCred) + '</n></e>');

        SQLCrediarioDetalhado.close;
      end;
    end;


    memo.Lines.Add(' ');
    memo.Lines.Add(' ');
    memo.Lines.Add(' ');
    memo.Lines.Add(' ');
    memo.Lines.Add(' ');
    memo.Lines.Add('</corte_parcial>');

    try
      dm.ACBrPosPrinter.Device.Desativar;
      dm.ACBrPosPrinter.Device.Ativar;
      dm.ACBrPosPrinter.Imprimir(Memo.Lines.Text);
      if (ECFAtual = 'NFCE DR800') then
      begin
        sleep(100);
        dm.ACBrPosPrinter.Device.Desativar;
      end;
    except
      Application.ProcessMessages;
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
end;

procedure TFormPrincipalRelatorios.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    Perform(Wm_NextDlgCtl, 0, 0);
end;

procedure TFormPrincipalRelatorios.ppTitleBand1BeforePrint(Sender: TObject);
begin
  ReportTotais.PreviewForm.WindowState := wsMaximized;
  LbPeriodo.Caption := de.Text + ' até ' + Ate.Text;
  LbTerminal.Caption := ComboTerminal.Text + ' - ' + ComboTerminal2.Text;
  ppOperador.Caption := 'Operador: ' + ComboOperador.Text;
end;

procedure TFormPrincipalRelatorios.SumarioNumerariosBeforePrint(Sender: TObject);
begin
  if not ckImpProdutosVendidos.Checked then
  begin
    TituloProdutosVendidos.Visible := False;
    //  DetalheProdutosVendidos.Visible := False;
    TotalProdutosVendidos.Visible := False;
  end
  else
  begin
    TituloProdutosVendidos.Visible := True;
    //  DetalheProdutosVendidos.Visible := True;
    TotalProdutosVendidos.Visible := True;
  end;
end;

procedure TFormPrincipalRelatorios.SumarioProdutosVendidosBeforePrint(Sender: TObject);
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

procedure TFormPrincipalRelatorios.DetalheProdutosVendidosBeforePrint(Sender: TObject);
begin
  PRODUTO.Caption := SQLLocate('PRODUTO', 'PRODICOD', 'PRODA60DESCR', SQLItensVendidosPRODICOD.AsString);
end;

procedure TFormPrincipalRelatorios.ReportTotaisPreviewFormClose(Sender: TObject);
begin
  Close;
end;

procedure TFormPrincipalRelatorios.SumarioVendaCartoesBeforePrint(
  Sender: TObject);
begin
  if not chkCrediario.Checked then
  begin
    TituloCrediarioDetalhado.Visible := False;
    DetalheCrediarioDetalhado.Visible := False;
    TotalCrediarioDetalhado.Visible := False;
  end
  else
  begin
    TituloProdutosVendidos.Visible := True;
    DetalheCrediarioDetalhado.Visible := True;
    TotalCrediarioDetalhado.Visible := True;
  end;
end;

end.

