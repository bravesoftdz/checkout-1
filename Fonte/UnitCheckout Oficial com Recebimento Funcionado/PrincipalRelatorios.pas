unit PrincipalRelatorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RxLookup, Mask, ToolEdit, DBTables, DB,
  ppCtrls, ppBands, ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppClass,
  ppCache, ppProd, ppDB, ppComm, ppRelatv, ppDBPipe, ppDBBDE, RxQuery, ppViewr;

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
    SQLOperador: TRxQuery;
    DSSQLOperador: TDataSource;
    GroupBox4: TGroupBox;
    ComboOperador: TRxDBLookupCombo;
    ReportTotais: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine6: TppLine;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    LbPeriodo: TppLabel;
    LbTerminal: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel25: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSystemVariable4: TppSystemVariable;
    ppLine7: TppLine;
    ppLabel26: TppLabel;
    ppSummaryBand3: TppSummaryBand;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppDBCalc2: TppDBCalc;
    ppLabel31: TppLabel;
    ppLine8: TppLine;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLine9: TppLine;
    ppLabel39: TppLabel;
    ppLine10: TppLine;
    ppDBCalc6: TppDBCalc;
    HoraInicial: TEdit;
    HoraFinal: TEdit;
    SQLItensVendidos: TRxQuery;
    SQLItensVendidosPRODICOD: TIntegerField;
    SQLItensVendidosQTDE: TFloatField;
    SQLItensVendidosVLRTOTALITEM: TFloatField;
    dsSQLItensVendidos: TDataSource;
    ppTitleBand4: TppTitleBand;
    dsEncerrante: TDataSource;
    SQLEncerranteDiario: TRxQuery;
    SQLEncerranteDiarioENDIA13ID: TStringField;
    SQLEncerranteDiarioEMPRICOD: TIntegerField;
    SQLEncerranteDiarioENDIICOD: TIntegerField;
    SQLEncerranteDiarioENDIDDATA: TDateTimeField;
    SQLEncerranteDiarioUSUAICOD: TIntegerField;
    SQLEncerranteDiarioBOMBICOD: TIntegerField;
    SQLEncerranteDiarioPRODICOD: TIntegerField;
    SQLEncerranteDiarioENDIIENCERINI: TIntegerField;
    SQLEncerranteDiarioENDIIENCERFIM: TIntegerField;
    SQLEncerranteDiarioENDIIAFERICAO: TIntegerField;
    SQLEncerranteDiarioBombaDescricao: TStringField;
    PipeEncerrantes: TppBDEPipeline;
    SQLBomba: TRxQuery;
    SQLBombaBOMBICOD: TIntegerField;
    SQLBombaBOMBA30DESCR: TStringField;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand1: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppSubReport4: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppProduto: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    SQLEncerranteDiarioResultado: TFloatField;
    PipeEncerrantesppField1: TppField;
    ppLabel3: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    PipeItensVendidos: TppBDEPipeline;
    PipeItensVendidosppField1: TppField;
    PipeItensVendidosppField2: TppField;
    PipeItensVendidosppField3: TppField;
    ppLabel10: TppLabel;
    procedure FormCreate(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure ReportTotaisPreviewFormCreate(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ppHeaderBand2BeforePrint(Sender: TObject);
    procedure ppDetailBand6BeforePrint(Sender: TObject);
    procedure SQLEncerranteDiarioCalcFields(DataSet: TDataSet);
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
    end;
end;

procedure TFormPrincipalRelatorios.BtnVisualizarClick(Sender: TObject);
begin
  SQLTotaNumerario.MacroByName('MTerminal').Value := '0=0';

  SQLTotaNumerario.Close ;
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

  if (HoraInicial.Text = '') and (HoraInicial.Text = '') then
    SQLTotalOperacao.MacroByName('MData').Value := 'MOVIMENTOCAIXA.MVCXDMOV >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                   'MOVIMENTOCAIXA.MVCXDMOV <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"'
  else
    SQLTotalOperacao.MacroByName('MData').Value := 'MOVIMENTOCAIXA.REGISTRO >= "' + FormatDateTime('mm/dd/yyyy ', De.Date) + HoraInicial.Text + '" and ' +
                                                   'MOVIMENTOCAIXA.REGISTRO <= "' + FormatDateTime('mm/dd/yyyy ', Ate.Date)+ HoraFinal.Text   + '"';

  SQLTotalOperacao.MacroByName('MTerminal').Value := '0=0';

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

  SQLItensVendidos.Close;

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

  SQLEncerranteDiario.Close;
  SQLEncerranteDiario.MacroByName('MEmpresa').Value := 'EMPRICOD  = ' + EmpresaPadrao;
  SQLEncerranteDiario.MacroByName('MData').Value    := 'ENDIDDATA = "' + FormatDateTime('mm/dd/yyyy',De.Date) + '"';
  if ComboOperador.Value <> '' then
    SQLEncerranteDiario.MacroByName('MUsuario').Value := 'USUAICOD = ' + ComboOperador.Value
  else
    SQLEncerranteDiario.MacroByName('MUsuario').Value := '0=0';
  SQLEncerranteDiario.Open;

  ReportTotais.Print;
end;

procedure TFormPrincipalRelatorios.ReportTotaisPreviewFormCreate(
  Sender: TObject);
begin
  ReportTotais.PreviewForm.WindowState := wsMaximized;
  TppViewer(ReportTotais.PreviewForm.Viewer).ZoomSetting := zs100Percent;
end;

procedure TFormPrincipalRelatorios.ppHeaderBand1BeforePrint(
  Sender: TObject);
begin
  ReportTotais.PreviewForm.WindowState := wsMaximized;
  LbPeriodo.Caption  := de.Text + ' até ' + Ate.Text;
  LbTerminal.Caption := ComboTerminal.Text + ' - ' + ComboTerminal2.Text;
end;

procedure TFormPrincipalRelatorios.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFormPrincipalRelatorios.ppHeaderBand2BeforePrint(
  Sender: TObject);
begin
  ReportTotais.PreviewForm.WindowState := wsMaximized;
  LbPeriodo.Caption  := de.Text + ' até ' + Ate.Text;
  LbTerminal.Caption := ComboTerminal.Text + ' - ' + ComboTerminal2.Text;
end;

procedure TFormPrincipalRelatorios.ppDetailBand6BeforePrint(
  Sender: TObject);
begin
  ppProduto.Caption := dm.SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',SQLItensVendidosPRODICOD.AsString);
end;

procedure TFormPrincipalRelatorios.SQLEncerranteDiarioCalcFields(
  DataSet: TDataSet);
begin
  if (SQLEncerranteDiarioENDIIENCERFIM.Value > 0) and (SQLEncerranteDiarioENDIIENCERINI.Value > 0) then
    SQLEncerranteDiarioResultado.Value :=  SQLEncerranteDiarioENDIIENCERFIM.Value -
                                           SQLEncerranteDiarioENDIIENCERINI.Value -
                                           SQLEncerranteDiarioENDIIAFERICAO.Value;
end;

end.
