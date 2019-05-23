unit WizardFaturamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, RxLookup, DB, DBTables, RxQuery,
  JvWizard, JvWizardRouteMapNodes, RXCtrls, ExtCtrls, jpeg, JvExControls,
  JvComponent, ShellApi, JvgHint, Handprot;

type
  TFormWizardFaturamento = class(TForm)
    JvWizard: TJvWizard;
    WizardWelcomePage: TJvWizardWelcomePage;
    Image: TImage;
    JvWizardInteriorPageOpEstoque: TJvWizardInteriorPage;
    Panel1: TPanel;
    JvWizardInteriorParametros: TJvWizardInteriorPage;
    Panel2: TPanel;
    WizardInteriorPageFinal: TJvWizardInteriorPage;
    Panel7: TPanel;
    lblLinkHelpOnLine: TRxLabel;
    imgLinkHelpOnLine: TImage;
    JvWizardRouteMapNodes: TJvWizardRouteMapNodes;
    SQLICMS: TRxQuery;
    DSSQLICMS: TDataSource;
    SQLPortador: TRxQuery;
    SQLPortadorPORTICOD: TIntegerField;
    SQLPortadorPORTA60DESCR: TStringField;
    DSSQLPortador: TDataSource;
    SQLOperacaoTesouraria: TRxQuery;
    SQLOperacaoTesourariaOPTEICOD: TIntegerField;
    SQLOperacaoTesourariaOPTEA60DESCR: TStringField;
    DSSQLOperacaoTesouraria: TDataSource;
    SQLTipoDocumento: TRxQuery;
    SQLTipoDocumentoTPDCICOD: TIntegerField;
    SQLTipoDocumentoTPDCA60DESCR: TStringField;
    DSSQLTipoDocumento: TDataSource;
    DSSQLConfigVenda: TDataSource;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label5: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo7: TRxDBLookupCombo;
    RxDBLookupCombo8: TRxDBLookupCombo;
    GroupBox4: TGroupBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    RxDBLookupCombo9: TRxDBLookupCombo;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    ComboICMS: TRxDBLookupCombo;
    DBEdit1: TDBEdit;
    JvWizardInteriorPageOBS: TJvWizardInteriorPage;
    Panel3: TPanel;
    GroupBox5: TGroupBox;
    DBMemoNF: TDBMemo;
    GroupBox6: TGroupBox;
    DBMemoPedido: TDBMemo;
    SQLConfiguracaoVenda: TRxQuery;
    SQLICMSICMSICOD: TIntegerField;
    SQLICMSICMSA60DESCR: TStringField;
    SQLICMSICMSN2ALIQUOTA: TBCDField;
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
    SQLOperacaoEstoqueEntrada: TRxQuery;
    SQLOperacaoEstoqueEntradaOPESICOD: TIntegerField;
    SQLOperacaoEstoqueEntradaOPESA60DESCR: TStringField;
    DSSQLOperacaoEstoqueEntrada: TDataSource;
    DSSQLOperacaoEstoqueSaida: TDataSource;
    SQLOperacaoEstoqueSaida: TRxQuery;
    SQLOperacaoEstoqueSaidaOPESICOD: TIntegerField;
    SQLOperacaoEstoqueSaidaOPESA60DESCR: TStringField;
    JvgHint: TJvgHint;
    procedure FormCreate(Sender: TObject);
    procedure JvWizardInteriorPageOpEstoqueEnterPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure JvWizardInteriorPageOpEstoqueExitPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure JvWizardFinishButtonClick(Sender: TObject);
    procedure JvWizardCancelButtonClick(Sender: TObject);
    procedure lblLinkHelpOnLineMouseEnter(Sender: TObject);
    procedure lblLinkHelpOnLineMouseLeave(Sender: TObject);
    procedure lblLinkHelpOnLineClick(Sender: TObject);
    procedure SQLTerminalAfterOpen(DataSet: TDataSet);
    procedure SQLTerminalBeforeOpen(DataSet: TDataSet);
    procedure JvWizardInteriorPageOpEstoqueCancelButtonClick(
      Sender: TObject; var Stop: Boolean);
    procedure RxDBLookupCombo3CloseUp(Sender: TObject);
    procedure RxDBLookupCombo3DropDown(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormWizardFaturamento: TFormWizardFaturamento;
  Terminal      : String;
implementation

uses DataModulo;

{$R *.dfm}

procedure TFormWizardFaturamento.FormCreate(Sender: TObject);
begin
  DM.VerificaAplicacaoHP(Tag);    

  DM.Database.Close;
  DM.Database.Open;

  SQLICMS.Open;
  SQLPortador.Open;
  SQLTipoDocumento.Open;
  SQLOperacaoEstoqueEntrada.Open;
  SQLOperacaoEstoqueSaida.Open;
  SQLOperacaoTesouraria.Open;

  Terminal := ParamStr(1);
  SQLTerminal.Open;

  Application.Title := Caption;
end;

procedure TFormWizardFaturamento.JvWizardInteriorPageOpEstoqueEnterPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
begin
   Application.HintHidePause := 10000;
   if not SQLConfiguracaoVenda.Active then SQLConfiguracaoVenda.Active := True;

   if SQLConfiguracaoVenda.IsEmpty then
      SQLConfiguracaoVenda.Append
   else
      SQLConfiguracaoVenda.Edit;
end;

procedure TFormWizardFaturamento.JvWizardInteriorPageOpEstoqueExitPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
begin
   Application.HintHidePause := 2500;
   if SQLConfiguracaoVenda.State in dsEditModes then
      SQLConfiguracaoVenda.Post;
end;

procedure TFormWizardFaturamento.JvWizardFinishButtonClick(
  Sender: TObject);
begin
   Close;
end;

procedure TFormWizardFaturamento.JvWizardCancelButtonClick(
  Sender: TObject);
begin
   Close; 
end;

procedure TFormWizardFaturamento.lblLinkHelpOnLineMouseEnter(
  Sender: TObject);
begin
    TLabel(Sender).Font.Color := clBlue;
    TLabel(Sender).Font.Style := [fsUnderline];
end;

procedure TFormWizardFaturamento.lblLinkHelpOnLineMouseLeave(
  Sender: TObject);
begin
    TLabel(Sender).Font.Color := clBlack;
    TLabel(Sender).Font.Style := [];
end;

procedure TFormWizardFaturamento.lblLinkHelpOnLineClick(Sender: TObject);
begin
    ShellExecute(0,'open', 'http://www.atwnet.com.br/help', '', '', SW_SHOWNORMAL);
end;

procedure TFormWizardFaturamento.SQLTerminalAfterOpen(DataSet: TDataSet);
begin
  Caption := 'Advanced Control Wizard [Configurações Faturamento] Terminal: ' + SQLTerminalTERMA60DESCR.AsString;
end;

procedure TFormWizardFaturamento.SQLTerminalBeforeOpen(DataSet: TDataSet);
begin
  if Terminal <> '' then
     SQLTerminal.MacroByName('MTerminal').AsString := ' TERMICOD = ' + Terminal;
end;

procedure TFormWizardFaturamento.JvWizardInteriorPageOpEstoqueCancelButtonClick(
  Sender: TObject; var Stop: Boolean);
begin
   if SQLConfiguracaoVenda.State in dsEditModes then
      SQLConfiguracaoVenda.Cancel;
end;

procedure TFormWizardFaturamento.RxDBLookupCombo3CloseUp(Sender: TObject);
begin
   TControl(Sender).ShowHint := True;
end;

procedure TFormWizardFaturamento.RxDBLookupCombo3DropDown(Sender: TObject);
begin
   TControl(Sender).ShowHint := False;
end;

end.
