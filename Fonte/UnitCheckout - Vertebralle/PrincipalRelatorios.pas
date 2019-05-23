unit PrincipalRelatorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RxLookup, Mask, ToolEdit, DBTables, DB,
  ppCtrls, ppBands, ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppClass,
  ppCache, ppProd, ppDB, ppComm, ppRelatv, ppDBPipe, ppDBBDE, RxQuery, ppViewr,
  ppModule, raCodMod, ppMemo, Placemnt;

type
  TFormPrincipalRelatorios = class(TForm)
    DSSQLTerminal: TDataSource;
    SQLTerminal: TRxQuery;
    DSTblTemporaria: TDataSource;
    TblTemporaria: TTable;
    BatchMove: TBatchMove;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    De: TDateEdit;
    Ate: TDateEdit;
    GroupBox3: TGroupBox;
    ComboTerminal: TRxDBLookupCombo;
    GroupBox2: TGroupBox;
    ComboTerminal2: TRxDBLookupCombo;
    BtnVisualizar: TSpeedButton;
    SQLOperador: TRxQuery;
    DSSQLOperador: TDataSource;
    GroupBox4: TGroupBox;
    ComboOperador: TRxDBLookupCombo;
    HoraInicial: TEdit;
    HoraFinal: TEdit;
    dsEncerrante: TDataSource;
    SQLEncerranteDiario: TRxQuery;
    SQLEncerranteDiarioENDIA13ID: TStringField;
    SQLEncerranteDiarioEMPRICOD: TIntegerField;
    SQLEncerranteDiarioENDIICOD: TIntegerField;
    SQLEncerranteDiarioENDIDDATA: TDateTimeField;
    SQLEncerranteDiarioUSUAICOD: TIntegerField;
    SQLEncerranteDiarioBOMBICOD: TIntegerField;
    SQLEncerranteDiarioPRODICOD: TIntegerField;
    SQLEncerranteDiarioBombaDescricao: TStringField;
    SQLBomba: TRxQuery;
    SQLBombaBOMBICOD: TIntegerField;
    SQLBombaBOMBA30DESCR: TStringField;
    SQLEncerranteDiarioResultado: TFloatField;
    SQLEncerranteDiarioENDIN2ENCERINI: TBCDField;
    SQLEncerranteDiarioENDIN2ENCERFIM: TBCDField;
    SQLEncerranteDiarioENDIN2AFERICAO: TBCDField;
    PipePrestaConta: TppBDEPipeline;
    SQLPrestaContas: TRxQuery;
    SQLPrestaContasEMPRICOD: TIntegerField;
    SQLPrestaContasPRECODATA: TDateTimeField;
    SQLPrestaContasUSUAICOD: TIntegerField;
    SQLPrestaContasVLRMOEDA: TBCDField;
    SQLPrestaContasVLRCHPRAZO: TBCDField;
    SQLPrestaContasVLRNTPRAZO: TBCDField;
    SQLPrestaContasVLRNTAVULSO: TBCDField;
    SQLPrestaContasVLRCARCREDITO: TBCDField;
    SQLPrestaContasVLRVALES: TBCDField;
    SQLPrestaContasVLRORFRE: TBCDField;
    SQLPrestaContasVLROUTSAIDA: TBCDField;
    SQLPrestaContasREGISTRO: TDateTimeField;
    SQLPrestaContasPENDENTE: TStringField;
    SQLPrestaContasVLRCHVISTA: TBCDField;
    DSPrestaContas: TDataSource;
    DSSQLTotalOperacao: TDataSource;
    SQLTotalOperacao: TRxQuery;
    SQLTotalOperacaoOPCXICOD: TIntegerField;
    SQLTotalOperacaoOPCXA60DESCR: TStringField;
    SQLTotalOperacaoCREDITOS: TBCDField;
    SQLTotalOperacaoDEBITOS: TBCDField;
    SQLTotalOperacaoSALDO: TFloatField;
    DSSQLTotaNumrario: TDataSource;
    SQLTotaNumerario: TRxQuery;
    SQLTotaNumerarioNUMEICOD: TIntegerField;
    SQLTotaNumerarioNUMEA30DESCR: TStringField;
    SQLTotaNumerarioVLRCREDITO: TBCDField;
    SQLTotaNumerarioVLRDEBITO: TBCDField;
    SQLTotaNumerarioSALDO: TFloatField;
    SQLVendaCartoesCheques: TRxQuery;
    SQLVendaCartoesChequesCTRCN2VLR: TBCDField;
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
    ppLabel14: TppLabel;
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
    SubProdutosVendidos: TppSubReport;
    ppChildReport5: TppChildReport;
    TituloProdutosVendidos: TppTitleBand;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    DetalheProdutosVendidos: TppDetailBand;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    Produto: TppLabel;
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
    SubEncerrantes: TppSubReport;
    ppChildReport3: TppChildReport;
    TituloEncerrantes: TppTitleBand;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel40: TppLabel;
    DetalheEncerrantes: TppDetailBand;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    SumarioEncerrantes: TppSummaryBand;
    ppLine3: TppLine;
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
    PipeEncerrantes: TppBDEPipeline;
    PipeEncerrantesppField1: TppField;
    PipeEncerrantesppField2: TppField;
    PipeEncerrantesppField3: TppField;
    PipeEncerrantesppField4: TppField;
    PipeEncerrantesppField5: TppField;
    PipeEncerrantesppField6: TppField;
    PipeEncerrantesppField7: TppField;
    PipeEncerrantesppField8: TppField;
    PipeEncerrantesppField9: TppField;
    PipeEncerrantesppField10: TppField;
    PipeEncerrantesppField11: TppField;
    PipeEncerrantesppField12: TppField;
    PipeVendasCartoesCheques: TppBDEPipeline;
    PipeVendasCartoesChequesppField1: TppField;
    PipeVendasCartoesChequesppField2: TppField;
    PipeVendasCartoesChequesppField3: TppField;
    PipeVendasCartoesChequesppField4: TppField;
    PipeVendasCartoesChequesppField5: TppField;
    PipeVendasCartoesChequesppField6: TppField;
    PipeVendasCartoesChequesppField7: TppField;
    PipeVendasCartoesChequesppField8: TppField;
    CKImpVendaCartoes: TCheckBox;
    ckImpProdutosVendidos: TCheckBox;
    ckImpEncerrantes: TCheckBox;
    ppSubReport3: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText9: TppDBText;
    ppLabel16: TppLabel;
    ppDBText10: TppDBText;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText19: TppDBText;
    ppLine1: TppLine;
    ppTotalG: TppVariable;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLine6: TppLine;
    ppTotalVenda: TppVariable;
    ppSaldoCaixa: TppVariable;
    ppSobraFalta: TppLabel;
    ppSummaryBand5: TppSummaryBand;
    ppLine7: TppLine;
    SQLItensVendidosCPITN3VLRUNIT: TBCDField;
    CPITN3VLRUNIT: TppField;
    ppLabel30: TppLabel;
    ppDBText20: TppDBText;
    ppLabel31: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    TotalProdutosVendidos: TppGroupFooterBand;
    ppDBCalc4: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppOperador: TppLabel;
    FormStorage1: TFormStorage;
    procedure FormCreate(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure ReportTotaisPreviewFormCreate(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLEncerranteDiarioCalcFields(DataSet: TDataSet);
    procedure ppTitleBand1BeforePrint(Sender: TObject);
    procedure SumarioNumerariosBeforePrint(Sender: TObject);
    procedure SumarioProdutosVendidosBeforePrint(Sender: TObject);
    procedure SumarioVendaCartoesBeforePrint(Sender: TObject);
    procedure ppTitleBand2AfterPrint(Sender: TObject);
    procedure DetalheProdutosVendidosBeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipalRelatorios: TFormPrincipalRelatorios;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormPrincipalRelatorios.FormCreate(Sender: TObject);
begin
  SQLOperador.Open;
  SQLTerminal.Open;
  de.Date  := Date;
  Ate.Date := Date;

  if dm.SQLUsuarioUSUACPERMVMOVCX.Value <> 'S' then
    begin
      de.Enabled  := False;
      ate.Enabled := False;

      ComboTerminal.keyValue := TerminalAtual;
      ComboOperador.keyValue := dm.SQLUsuarioUSUAICOD.Value;
      ComboTerminal.Enabled  := False;
      ComboTerminal2.Enabled := False;
      ComboOperador.Enabled  := False;
    end;
end;

procedure TFormPrincipalRelatorios.BtnVisualizarClick(Sender: TObject);
begin
  SQLTotaNumerario.Close ;
  SQLTotaNumerario.MacrobyName('MEmpresa').Value  := 'EMPRICOD  = ' + EmpresaPadrao;
  SQLTotaNumerario.MacroByName('MTerminal').Value := '0=0';

  if (HoraInicial.Text = '') and (HoraInicial.Text = '') then
    SQLTotaNumerario.MacroByName('MData').Value := 'MOVIMENTOCAIXA.MVCXDMOV >= "' + FormatDateTime('mm/dd/yyyy', De.Date)  + '" and ' +
                                                   'MOVIMENTOCAIXA.MVCXDMOV <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"'
  else
    SQLTotaNumerario.MacroByName('MData').Value := 'MOVIMENTOCAIXA.REGISTRO >= "' + FormatDateTime('mm/dd/yyyy ', De.Date) + HoraInicial.Text + '" and ' +
                                                   'MOVIMENTOCAIXA.REGISTRO <= "' + FormatDateTime('mm/dd/yyyy ', Ate.Date)+ HoraFinal.Text   + '"';

  SQLTotaNumerario.MacroByName('MTerminal').Value := '0=0';

  if ComboTerminal.Value <> '' then
    SQLTotaNumerario.MacroByName('MTerminal').Value := 'MOVIMENTOCAIXA.TERMICOD = ' + ComboTerminal.Value;

  if ComboTerminal2.Value <> '' then
    SQLTotaNumerario.MacroByName('MTerminal').Value := SQLTotaNumerario.MacroByName('MTerminal').Value + ' or ' +
                                                       'MOVIMENTOCAIXA.TERMICOD = ' + ComboTerminal2.Value;

  if ComboOperador.Value <> '' then
    SQLTotaNumerario.MacroByName('MOperador').Value := 'MOVIMENTOCAIXA.USUAICOD = ' + ComboOperador.Value
  else
    SQLTotaNumerario.MacroByName('MOperador').Value := '0=0';

  SQLTotaNumerario.Open;

  SQLTotalOperacao.Close;
  SQLTotalOperacao.MacrobyName('MEmpresa').Value  := 'EMPRICOD  = ' + EmpresaPadrao;
  SQLTotalOperacao.MacroByName('MTerminal').Value := '0=0';

  if (HoraInicial.Text = '') and (HoraInicial.Text = '') then
    SQLTotalOperacao.MacroByName('MData').Value := 'MOVIMENTOCAIXA.MVCXDMOV >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                   'MOVIMENTOCAIXA.MVCXDMOV <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"'
  else
    SQLTotalOperacao.MacroByName('MData').Value := 'MOVIMENTOCAIXA.REGISTRO >= "' + FormatDateTime('mm/dd/yyyy ', De.Date) + HoraInicial.Text + '" and ' +
                                                   'MOVIMENTOCAIXA.REGISTRO <= "' + FormatDateTime('mm/dd/yyyy ', Ate.Date)+ HoraFinal.Text   + '"';


  if ComboTerminal.Value <> '' then
    SQLTotalOperacao.MacroByName('MTerminal').Value := 'MOVIMENTOCAIXA.TERMICOD = ' + ComboTerminal.Value;

  if ComboTerminal2.Value <> '' then
    SQLTotalOperacao.MacroByName('MTerminal').Value := SQLTotalOperacao.MacroByName('MTerminal').Value + ' or ' +
                                                       'MOVIMENTOCAIXA.TERMICOD = ' + ComboTerminal2.Value;

  if ComboOperador.Value <> '' then
    SQLTotalOperacao.MacroByName('MOperador').Value := 'MOVIMENTOCAIXA.USUAICOD = ' + ComboOperador.Value
  else
    SQLTotalOperacao.MacroByName('MOperador').Value := '0=0';

  SQLTotalOperacao.Open ;

  // Produtos Vendidos
  SQLItensVendidos.Close;

  SQLItensVendidos.MacrobyName('MEmpresa').Value := 'EMPRICOD  = ' + EmpresaPadrao;

  if (HoraInicial.Text = '') and (HoraInicial.Text = '') then
    SQLItensVendidos.MacroByName('MData').Value := 'CUPOM.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                   'CUPOM.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"'
  else
    SQLItensVendidos.MacroByName('MData').Value := 'CUPOM.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy ', De.Date) + HoraInicial.Text + '" and ' +
                                                   'CUPOM.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy ', Ate.Date)+ HoraFinal.Text   + '"';

  SQLItensVendidos.MacroByName('MTerminal').Value := '0=0';

  if ComboTerminal.Value <> '' then
    SQLItensVendidos.MacroByName('MTerminal').Value := 'CUPOM.TERMICOD = ' + ComboTerminal.Value;

  if ComboTerminal2.Value <> '' then
    SQLItensVendidos.MacroByName('MTerminal').Value := SQLItensVendidos.MacroByName('MTerminal').Value + ' or ' +
                                                       'CUPOM.TERMICOD = ' + ComboTerminal2.Value;

  if ComboOperador.Value <> '' then
    SQLItensVendidos.MacroByName('MOperador').Value := 'CUPOM.USUAICODVENDA = ' + ComboOperador.Value
  else
    SQLItensVendidos.MacroByName('MOperador').Value := '0=0';

  SQLItensVendidos.Open ;

 // Venda Cartoes , Cheques e Crediario
  SQLVendaCartoesCheques.Close;

  SQLVendaCartoesCheques.MacrobyName('MEmpresa').Value := 'EMPRICOD  = ' + EmpresaPadrao;

  if (HoraInicial.Text = '') and (HoraInicial.Text = '') then
    SQLVendaCartoesCheques.MacroByName('MData').Value := 'CUPOM.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                         'CUPOM.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"'
  else
    SQLVendaCartoesCheques.MacroByName('MData').Value := 'CUPOM.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy ', De.Date) + HoraInicial.Text + '" and ' +
                                                         'CUPOM.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy ', Ate.Date)+ HoraFinal.Text   + '"';

  SQLVendaCartoesCheques.MacroByName('MTerminal').Value := '0=0';

  if ComboTerminal.Value <> '' then
    SQLVendaCartoesCheques.MacroByName('MTerminal').Value := 'CUPOM.TERMICOD = ' + ComboTerminal.Value;

  if ComboTerminal2.Value <> '' then
    SQLVendaCartoesCheques.MacroByName('MTerminal').Value := SQLItensVendidos.MacroByName('MTerminal').Value + ' or ' +
                                                             'CUPOM.TERMICOD = ' + ComboTerminal2.Value;

  if ComboOperador.Value <> '' then
    SQLVendaCartoesCheques.MacroByName('MOperador').Value := 'CUPOM.USUAICODVENDA = ' + ComboOperador.Value
  else
    SQLVendaCartoesCheques.MacroByName('MOperador').Value := '0=0';

  SQLVendaCartoesCheques.Open ;

  // Encerrantes
  SQLEncerranteDiario.Close;
  SQLEncerranteDiario.MacroByName('MEmpresa').Value := 'EMPRICOD  = ' + EmpresaPadrao;
  SQLEncerranteDiario.MacroByName('MData').Value    := 'ENDIDDATA = "' + FormatDateTime('mm/dd/yyyy',De.Date) + '"';
  if ComboOperador.Value <> '' then
    SQLEncerranteDiario.MacroByName('MUsuario').Value := 'USUAICOD = ' + ComboOperador.Value
  else
    SQLEncerranteDiario.MacroByName('MUsuario').Value := '0=0';
  SQLEncerranteDiario.Open;

  SQLPrestaContas.Close;
  SQLPrestaContas.MacroByName('MEmpresa').Value := 'EMPRICOD  = ' + EmpresaPadrao;
  SQLPrestaContas.MacroByName('MData').Value    := 'PRECODATA = "' + FormatDateTime('mm/dd/yyyy',De.Date) + '"';
  if ComboOperador.Value <> '' then
    SQLPrestaContas.MacroByName('MUsuario').Value := 'USUAICOD = ' + ComboOperador.Value
  else
    SQLPrestaContas.MacroByName('MUsuario').Value := '0=0';
  SQLPrestaContas.Open;

  ReportTotais.Print;

end;

procedure TFormPrincipalRelatorios.ReportTotaisPreviewFormCreate(
  Sender: TObject);
begin
  ReportTotais.PreviewForm.WindowState := wsMaximized;
  TppViewer(ReportTotais.PreviewForm.Viewer).ZoomPercentage := 100;
end;

procedure TFormPrincipalRelatorios.ppHeaderBand1BeforePrint(
  Sender: TObject);
begin
  ReportTotais.PreviewForm.WindowState := wsMaximized;
end;

procedure TFormPrincipalRelatorios.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFormPrincipalRelatorios.SQLEncerranteDiarioCalcFields(
  DataSet: TDataSet);
begin
    SQLEncerranteDiarioResultado.Value :=  SQLEncerranteDiarioENDIN2ENCERFIM.Value -
                                           SQLEncerranteDiarioENDIN2ENCERINI.Value -
                                           SQLEncerranteDiarioENDIN2AFERICAO.Value;
end;

procedure TFormPrincipalRelatorios.ppTitleBand1BeforePrint(
  Sender: TObject);
begin
  ReportTotais.PreviewForm.WindowState := wsMaximized;
  LbPeriodo.Caption  := de.Text + ' até ' + Ate.Text;
  LbTerminal.Caption := ComboTerminal.Text + ' - ' + ComboTerminal2.Text;
  ppOperador.Caption := 'Operador: ' + ComboOperador.Text;
end;

procedure TFormPrincipalRelatorios.SumarioNumerariosBeforePrint(
  Sender: TObject);
begin
  if not ckImpProdutosVendidos.Checked then
    begin
      TituloProdutosVendidos.Visible  := False;
    //  DetalheProdutosVendidos.Visible := False;
      TotalProdutosVendidos.Visible   := False;
    end
  else
    begin
      TituloProdutosVendidos.Visible  := True;
    //  DetalheProdutosVendidos.Visible := True;
      TotalProdutosVendidos.Visible   := True;
    end;
end;

procedure TFormPrincipalRelatorios.SumarioProdutosVendidosBeforePrint(
  Sender: TObject);
begin
  if not CKImpVendaCartoes.Checked then
    begin
      TituloVendaCartoes.Visible  := False;
      DetalheVendaCartoes.Visible := False;
    end
  else
    begin
      TituloVendaCartoes.Visible  := True;
      DetalheVendaCartoes.Visible := True;
    end;
end;

procedure TFormPrincipalRelatorios.SumarioVendaCartoesBeforePrint(
  Sender: TObject);
begin
  if not ckImpEncerrantes.Checked then
    begin
      TituloEncerrantes.Visible  := False;
      DetalheEncerrantes.Visible := False;
    end
  else
    begin
      TituloEncerrantes.Visible  := True;
      DetalheEncerrantes.Visible := True;
    end;
end;

procedure TFormPrincipalRelatorios.ppTitleBand2AfterPrint(Sender: TObject);
begin
  ppTotalG.Value :=  SQLPrestaContasVLRMOEDA.Value +
                     SQLPrestaContasVLRCHVISTA.Value +
                     SQLPrestaContasVLRCHPRAZO.Value +
                     SQLPrestaContasVLRNTPRAZO.Value +
                     SQLPrestaContasVLRNTAVULSO.Value +
                     SQLPrestaContasVLRCARCREDITO.Value +
                     SQLPrestaContasVLRVALES.Value +
                     SQLPrestaContasVLRORFRE.Value +
                     SQLPrestaContasVLROUTSAIDA.Value ;

  ppTotalVenda.Value := ppDBCalc8.Value;
  ppSaldoCaixa.Value := ppTotalG.Value - ppTotalVenda.Value;

  ppSobraFalta.Font.Color := clBlack;
  ppSaldoCaixa.Font.Color := clBlack;
  if ppSaldoCaixa.Value > 0 then
    ppSobraFalta.Caption := '(Sobra)';

  if ppSaldoCaixa.Value < 0 then
  begin
    ppSaldoCaixa.Font.Color := clRed;
    ppSobraFalta.Font.Color := clRed;
    ppSobraFalta.Caption := '(Falta)';
  end;
end;

procedure TFormPrincipalRelatorios.DetalheProdutosVendidosBeforePrint(
  Sender: TObject);
begin
  PRODUTO.Caption    := SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',SQLItensVendidosPRODICOD.AsString);
end;

end.
