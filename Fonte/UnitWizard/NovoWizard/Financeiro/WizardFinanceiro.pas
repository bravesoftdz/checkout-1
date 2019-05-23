unit WizardFinanceiro;  

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, RxLookup, DB, DBTables, JvComponent, JvgHint,
  JvWizard, JvWizardRouteMapNodes, RXCtrls, ExtCtrls, jpeg, JvExControls,
  RxQuery, Handprot;

type
  TFormWizardFinanceiro = class(TForm)
    JvWizard: TJvWizard;
    WizardWelcomePage: TJvWizardWelcomePage;
    Image: TImage;
    JvWizardInteriorPrecosConfiguracao: TJvWizardInteriorPage;
    Panel1: TPanel;
    JvWizardInteriorPageParametros: TJvWizardInteriorPage;
    Panel2: TPanel;
    WizardInteriorPageFinal: TJvWizardInteriorPage;
    Panel7: TPanel;
    lblLinkHelpOnLine: TRxLabel;
    imgLinkHelpOnLine: TImage;
    JvWizardRouteMapNodes1: TJvWizardRouteMapNodes;
    SQLConfigFinanceiro: TQuery;
    SQLConfigFinanceiroOPTEICODPAGAR: TIntegerField;
    SQLConfigFinanceiroOPBCICODPAGAR: TIntegerField;
    SQLConfigFinanceiroNUMEICODPAGAR: TIntegerField;
    SQLConfigFinanceiroCTCRICODPAGAR: TIntegerField;
    SQLConfigFinanceiroALINICODPAGAR: TIntegerField;
    SQLConfigFinanceiroCGFIA254HISTPAGAR: TStringField;
    SQLConfigFinanceiroOPTEICODRECEBER: TIntegerField;
    SQLConfigFinanceiroOPBCICODRECEBER: TIntegerField;
    SQLConfigFinanceiroNUMEICODRECEBER: TIntegerField;
    SQLConfigFinanceiroCGFIA254HISTRECEBE: TStringField;
    SQLConfigFinanceiroALINICODRECEBER: TIntegerField;
    SQLConfigFinanceiroPORTICODRECEBER: TIntegerField;
    SQLConfigFinanceiroCGFIUSATESOURARIA: TStringField;
    SQLConfigFinanceiroCGFICINFPLCTBXSIMP: TStringField;
    DSSQLConfigFinanceiro: TDataSource;
    SQLOperacaoTesouraria: TQuery;
    SQLOperacaoTesourariaOPTEICOD: TIntegerField;
    SQLOperacaoTesourariaOPTEA60DESCR: TStringField;
    SQLOperacaoTesourariaOPTECDEBCRED: TStringField;
    SQLOperacaoTesourariaPENDENTE: TStringField;
    SQLOperacaoTesourariaREGISTRO: TDateTimeField;
    DSSQLOperacaoTesouraria: TDataSource;
    SQLOperacaoBanco: TQuery;
    SQLOperacaoBancoOPBCICOD: TIntegerField;
    SQLOperacaoBancoOPBCA60DESCR: TStringField;
    SQLOperacaoBancoOPBCCTIPO: TStringField;
    SQLOperacaoBancoOPBCCALTSALDO: TStringField;
    SQLOperacaoBancoPENDENTE: TStringField;
    SQLOperacaoBancoREGISTRO: TDateTimeField;
    SQLNumerario: TQuery;
    SQLNumerarioNUMEICOD: TIntegerField;
    SQLNumerarioNUMEA30DESCR: TStringField;
    SQLNumerarioNUMECVISTAPRAZO: TStringField;
    SQLNumerarioNUMECATIVO: TStringField;
    SQLNumerarioNUMEA5TIPO: TStringField;
    SQLNumerarioOPCXICOD: TIntegerField;
    SQLNumerarioPENDENTE: TStringField;
    SQLNumerarioREGISTRO: TDateTimeField;
    DSSQLOperacaoBanco: TDataSource;
    DSSQLNumerario: TDataSource;
    SQLContaCorrente: TQuery;
    SQLContaCorrenteCTCRICOD: TIntegerField;
    SQLContaCorrenteBANCA5COD: TStringField;
    SQLContaCorrenteCTCRA15AGENCIA: TStringField;
    SQLContaCorrenteCTCRA15NUMERO: TStringField;
    SQLContaCorrenteCTCRA60TITULAR: TStringField;
    SQLContaCorrenteCTCRDABERTURA: TDateTimeField;
    SQLContaCorrenteCTCRN2LIMITE: TBCDField;
    SQLContaCorrenteCTCRN2SALDOATUAL: TBCDField;
    SQLContaCorrenteTMBCICOD: TIntegerField;
    SQLContaCorrentePENDENTE: TStringField;
    SQLContaCorrenteREGISTRO: TDateTimeField;
    DSSQLContaCorrente: TDataSource;
    SQLPortador: TQuery;
    DSSQLPortador: TDataSource;
    SQLAlinea: TQuery;
    DSSQLAlinea: TDataSource;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    ComboOperacaoTesourariaPagar: TRxDBLookupCombo;
    ComboOperacaoBancoPagar: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo10: TRxDBLookupCombo;
    Panel3: TPanel;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ComboOperacaoTesourariaReceber: TRxDBLookupCombo;
    ComboOperacaoBancoReceber: TRxDBLookupCombo;
    RxDBLookupCombo7: TRxDBLookupCombo;
    RxDBLookupCombo8: TRxDBLookupCombo;
    RxDBLookupCombo9: TRxDBLookupCombo;
    SQLTerminal: TRxQuery;
    SQLTerminalTERMICOD: TIntegerField;
    SQLTerminalTERMA60DESCR: TStringField;
    SQLTerminalPENDENTE: TStringField;
    SQLTerminalREGISTRO: TDateTimeField;
    SQLTerminalTERMCTIPO: TStringField;
    SQLTerminalTERMCSTATUSCAIXA: TStringField;
    SQLTerminalTERMDSTATUSCAIXA: TDateTimeField;
    SQLTerminalEMPRICOD: TIntegerField;
    SQLTerminalCLIEA13ID: TStringField;
    SQLTerminalVENDICOD: TIntegerField;
    SQLTerminalPLRCICOD: TIntegerField;
    SQLTerminalTERMCMOVESTOQUE: TStringField;
    SQLTerminalECFA13ID: TStringField;
    SQLTerminalTERMA5ECFPORTACOM: TStringField;
    SQLTerminalTERMA255MSGTELA: TStringField;
    SQLTerminalTERMA60IMPCARNE: TStringField;
    SQLTerminalTERMA60IMPPEDIDO: TStringField;
    SQLTerminalTERMA60IMPORCAMEN: TStringField;
    SQLTerminalTERMA60IMPCHEQUE: TStringField;
    SQLTerminalTERMA60IMPTCKAFCX: TStringField;
    SQLTerminalTERMCIMPRIMECHEQUE: TStringField;
    SQLTerminalTERMCCONFIMPCARNE: TStringField;
    SQLTerminalTERMCIMPCONFDIVIDA: TStringField;
    SQLTerminalTERMA255MSGCARNE: TStringField;
    SQLTerminalTERMCIMPBARRASPED: TStringField;
    SQLTerminalTERMCINFDADOCLIPAD: TStringField;
    SQLTerminalTERMINRODECQUANT: TIntegerField;
    SQLTerminalTERMINUMEVISTA: TIntegerField;
    SQLTerminalTERMINUMEPRAZO: TIntegerField;
    SQLTerminalUSUAICODATIVO: TIntegerField;
    SQLTerminalTERMCATIVO: TStringField;
    SQLTerminalTERMCECFIMPRCLIE: TStringField;
    SQLTerminalTERMCECFIMPRVEND: TStringField;
    SQLTerminalTERMCECFIMPRCONFDIV: TStringField;
    SQLTerminalStatusCaixaCalcField: TStringField;
    SQLTerminalTERMCIMPPREVENDA: TStringField;
    SQLTerminalTERMA60NOMECOMPUT: TStringField;
    SQLTerminalTERMCAUTENTRFIMCUP: TStringField;
    SQLTerminalTERMCHIDECLIVENDPL: TStringField;
    SQLTerminalTERMCIMPRDADINTCUP: TStringField;
    SQLTerminalTERMCCONFFECHCUPOM: TStringField;
    SQLTerminalTERMA254PATHTERM: TStringField;
    SQLTerminalTERMA60IMPFICHACLI: TStringField;
    SQLTerminalTERMA60IMPAUTORIZCOM: TStringField;
    SQLTerminalTERMCMOSTRAIDCUPOM: TStringField;
    SQLTerminalTERMITMPLIMITESERV: TIntegerField;
    SQLTerminalTERMIINTERVALOSERV: TIntegerField;
    SQLTerminalTERMINUMERECCRED: TIntegerField;
    SQLTerminalTERMINROVIASTEF: TIntegerField;
    SQLTerminalCFGIICOD: TIntegerField;
    SQLTerminalTERMTPATHNF: TStringField;
    SQLTerminalTERMCAUTENTIMPMATRI: TStringField;
    SQLTerminalTERMACTIPOIMPPEDORC: TStringField;
    SQLTerminalTERMTPATHPEDORC: TStringField;
    SQLTerminalTERMA30MODIMPNFISC: TStringField;
    SQLTerminalTERMCIMPENTCARNE: TStringField;
    SQLTerminalTERMCDISPOENTRADA: TStringField;
    SQLTerminalTERMA60MODLEITOR: TStringField;
    SQLTerminalTERMA5LEITPORTACOM: TStringField;
    SQLTerminalTERMCIMPCOMPTOTREC: TStringField;
    SQLTerminalTERMCNAOAUTRCTOCRD: TStringField;
    SQLPortadorPORTICOD: TIntegerField;
    SQLPortadorPORTA60DESCR: TStringField;
    SQLAlineaALINICOD: TIntegerField;
    SQLAlineaALINA30DESCR: TStringField;
    JvgHint: TJvgHint;
    procedure SQLTerminalAfterOpen(DataSet: TDataSet);
    procedure SQLTerminalBeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure AbreTodasQuery(QTag: Integer);
    procedure JvWizardInteriorPrecosConfiguracaoEnterPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure JvWizardInteriorPrecosConfiguracaoExitPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure lblLinkHelpOnLineMouseLeave(Sender: TObject);
    procedure lblLinkHelpOnLineMouseEnter(Sender: TObject);
    procedure JvWizardCancelButtonClick(Sender: TObject);
    procedure JvWizardFinishButtonClick(Sender: TObject);
    procedure JvWizardInteriorPrecosConfiguracaoCancelButtonClick(
      Sender: TObject; var Stop: Boolean);
    procedure ComboOperacaoTesourariaPagarDropDown(Sender: TObject);
    procedure ComboOperacaoTesourariaPagarCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormWizardFinanceiro: TFormWizardFinanceiro;
  Terminal      : String;
implementation

uses DataModulo;

{$R *.dfm}
procedure TFormWizardFinanceiro.SQLTerminalBeforeOpen(DataSet: TDataSet);
begin
  if Terminal <> '' then
     SQLTerminal.MacroByName('MTerminal').AsString := ' TERMICOD = ' + Terminal;
end;

procedure TFormWizardFinanceiro.SQLTerminalAfterOpen(DataSet: TDataSet);
begin
  Caption := 'Advanced Control Wizard [Configurações Financeiro] Terminal: ' + SQLTerminalTERMA60DESCR.AsString;
end;

procedure TFormWizardFinanceiro.AbreTodasQuery(QTag: Integer);
Var I : Integer;
begin
  for I := 0 to ComponentCount-1 do
      if ((Components[I].ClassName = 'TRxQuery') or
         (Components[I].ClassName = 'TQuery')) and (Components[I].Tag = QTag) then
         if not TQuery(Components[I]).Active then
            begin
             TQuery(Components[I]).Active := True;
            end;
end;

procedure TFormWizardFinanceiro.FormCreate(Sender: TObject);

begin
  DM.VerificaAplicacaoHP(Tag);

  DM.Database.Close;
  DM.Database.Open;

  AbreTodasQuery(1);

  Terminal := ParamStr(1);
  SQLTerminal.Open;

  Application.Title := Caption;
end;

procedure TFormWizardFinanceiro.JvWizardInteriorPrecosConfiguracaoEnterPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
begin
   if not SQLConfigFinanceiro.Active then SQLConfigFinanceiro.Active := True;

   if SQLConfigFinanceiro.IsEmpty then
      SQLConfigFinanceiro.Append
   else
      SQLConfigFinanceiro.Edit;
end;

procedure TFormWizardFinanceiro.JvWizardInteriorPrecosConfiguracaoExitPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
begin
   if SQLConfigFinanceiro.State in dsEditModes then
      SQLConfigFinanceiro.Post;
end;

procedure TFormWizardFinanceiro.lblLinkHelpOnLineMouseLeave(
  Sender: TObject);
begin
    TLabel(Sender).Font.Color := clBlack;
    TLabel(Sender).Font.Style := [];
end;

procedure TFormWizardFinanceiro.lblLinkHelpOnLineMouseEnter(
  Sender: TObject);
begin
    TLabel(Sender).Font.Color := clBlue;
    TLabel(Sender).Font.Style := [fsUnderline];
end;

procedure TFormWizardFinanceiro.JvWizardCancelButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TFormWizardFinanceiro.JvWizardFinishButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TFormWizardFinanceiro.JvWizardInteriorPrecosConfiguracaoCancelButtonClick(
  Sender: TObject; var Stop: Boolean);
begin
   if SQLConfigFinanceiro.State in dsEditModes then
      SQLConfigFinanceiro.Cancel;
end;

procedure TFormWizardFinanceiro.ComboOperacaoTesourariaPagarDropDown(
  Sender: TObject);
begin
   TControl(Sender).ShowHint := False;
end;

procedure TFormWizardFinanceiro.ComboOperacaoTesourariaPagarCloseUp(
  Sender: TObject);
begin
   TControl(Sender).ShowHint := True;
end;

end.
