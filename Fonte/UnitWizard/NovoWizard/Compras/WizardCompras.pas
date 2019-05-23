unit WizardCompras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RxLookup, StdCtrls, RxDBComb, DBCtrls, RxQuery, DB, DBTables,
  JvWizard, JvWizardRouteMapNodes, RXCtrls, ExtCtrls, jpeg, JvExControls,
  JvComponent, JvgHint, Handprot;

type
  TFormWizardCompras = class(TForm)
    JvWizard: TJvWizard;
    WizardWelcomePage: TJvWizardWelcomePage;
    Image: TImage;
    JvWizardInteriorPrecosConfiguracao: TJvWizardInteriorPage;
    WizardInteriorPageFinal: TJvWizardInteriorPage;
    Panel7: TPanel;
    lblLinkHelpOnLine: TRxLabel;
    imgLinkHelpOnLine: TImage;
    JvWizardRouteMapNodes1: TJvWizardRouteMapNodes;
    Panel1: TPanel;
    SQLConfigCompra: TQuery;
    SQLConfigCompraCFCOITIPMOVCANCNFE: TIntegerField;
    SQLConfigCompraCFCOCALTPRCPRODENT: TStringField;
    SQLConfigCompraCFCOCTESTAITENSNFE: TStringField;
    SQLConfigCompraCFCOCTOTPRCVENPROD: TStringField;
    SQLConfigCompraCFCOCNUMSERPRODENT: TStringField;
    SQLConfigCompraCFCOCIMPLEGORDCOMP: TStringField;
    SQLConfigCompraCFCOITIPMOVNFE: TIntegerField;
    SQLConfigCompraCFCOCALTVLRCOMPRA: TStringField;
    SQLConfigCompraCFCOCALTPERCIPI: TStringField;
    SQLConfigCompraCFCOCALTVLRCUSTO: TStringField;
    SQLConfigCompraTPDCICOD: TIntegerField;
    SQLConfigCompraPORTICOD: TIntegerField;
    SQLConfigCompraCFCOCEXCLUIPEDENT: TStringField;
    SQLConfigCompraCFCOCTESTPRODFORN: TStringField;
    SQLConfigCompraCFCOCVERIFICAVLRMENOR: TStringField;
    SQLConfigCompraCFCOCINFDADOSFRETE: TStringField;
    DSSQLConfigCompra: TDataSource;
    SQLPortador: TRxQuery;
    SQLPortadorPORTICOD: TIntegerField;
    SQLPortadorPORTA60DESCR: TStringField;
    DSSQLPortador: TDataSource;
    SQLTipoDocumento: TRxQuery;
    SQLTipoDocumentoTPDCICOD: TIntegerField;
    SQLTipoDocumentoTPDCA60DESCR: TStringField;
    DSSQLTipoDocumento: TDataSource;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    RxDBComboBox1: TRxDBComboBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    ComboOperacaoEntrada: TRxDBLookupCombo;
    ComboOperacaoSaida: TRxDBLookupCombo;
    JvWizardInteriorPageParametros: TJvWizardInteriorPage;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
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
    SQLOperacaoEstoqueSaida: TRxQuery;
    SQLOperacaoEstoqueSaidaOPESICOD: TIntegerField;
    SQLOperacaoEstoqueSaidaOPESA60DESCR: TStringField;
    DSSQLOperacaoEstoqueSaida: TDataSource;
    DSSQLOperacaoEstoqueEntrada: TDataSource;
    SQLOperacaoEstoqueEntrada: TRxQuery;
    SQLOperacaoEstoqueEntradaOPESICOD: TIntegerField;
    SQLOperacaoEstoqueEntradaOPESA60DESCR: TStringField;
    JvgHint: TJvgHint;
    procedure SQLTerminalBeforeOpen(DataSet: TDataSet);
    procedure SQLTerminalAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure JvWizardInteriorPrecosConfiguracaoEnterPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure JvWizardInteriorPrecosConfiguracaoExitPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure JvWizardFinishButtonClick(Sender: TObject);
    procedure JvWizardCancelButtonClick(Sender: TObject);
    procedure lblLinkHelpOnLineMouseLeave(Sender: TObject);
    procedure lblLinkHelpOnLineMouseEnter(Sender: TObject);
    procedure JvWizardInteriorPrecosConfiguracaoCancelButtonClick(
      Sender: TObject; var Stop: Boolean);
    procedure ComboOperacaoEntradaCloseUp(Sender: TObject);
    procedure ComboOperacaoEntradaDropDown(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormWizardCompras: TFormWizardCompras;
  Terminal      : String;
implementation

uses DataModulo;

{$R *.dfm}

procedure TFormWizardCompras.SQLTerminalBeforeOpen(DataSet: TDataSet);
begin
  if Terminal <> '' then
     SQLTerminal.MacroByName('MTerminal').AsString := ' TERMICOD = ' + Terminal;
end;

procedure TFormWizardCompras.SQLTerminalAfterOpen(DataSet: TDataSet);
begin
  Caption := 'Advanced Control Wizard [Configurações Compras] Terminal: ' + SQLTerminalTERMA60DESCR.AsString;
end;

procedure TFormWizardCompras.FormCreate(Sender: TObject);
begin
  DM.VerificaAplicacaoHP(Tag);

  DM.Database.Close;
  DM.Database.Open;

  SQLPortador.Open;
  SQLTipoDocumento.Open;
  SQLOperacaoEstoqueEntrada.Open;
  SQLOperacaoEstoqueSaida.Open;

  Terminal := ParamStr(1);
  SQLTerminal.Open;

  Application.Title := Caption;
end;

procedure TFormWizardCompras.JvWizardInteriorPrecosConfiguracaoEnterPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
begin
   if not SQLConfigCompra.Active then SQLConfigCompra.Active := True;

   if SQLConfigCompra.IsEmpty then
      SQLConfigCompra.Append
   else
      SQLConfigCompra.Edit;
end;

procedure TFormWizardCompras.JvWizardInteriorPrecosConfiguracaoExitPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
begin
   if SQLConfigCompra.State in dsEditModes then
      SQLConfigCompra.Post;
end;

procedure TFormWizardCompras.JvWizardFinishButtonClick(Sender: TObject);
begin
    Close;
end;

procedure TFormWizardCompras.JvWizardCancelButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TFormWizardCompras.lblLinkHelpOnLineMouseLeave(Sender: TObject);
begin
    TLabel(Sender).Font.Color := clBlack;
    TLabel(Sender).Font.Style := [];
end;

procedure TFormWizardCompras.lblLinkHelpOnLineMouseEnter(Sender: TObject);
begin
    TLabel(Sender).Font.Color := clBlue;
    TLabel(Sender).Font.Style := [fsUnderline];
end;

procedure TFormWizardCompras.JvWizardInteriorPrecosConfiguracaoCancelButtonClick(
  Sender: TObject; var Stop: Boolean);
begin
   if SQLConfigCompra.State in dsEditModes then
      SQLConfigCompra.Cancel;
end;

procedure TFormWizardCompras.ComboOperacaoEntradaCloseUp(Sender: TObject);
begin
   TControl(Sender).ShowHint := True;
end;

procedure TFormWizardCompras.ComboOperacaoEntradaDropDown(Sender: TObject);
begin
   TControl(Sender).ShowHint := False;
end;

end.
