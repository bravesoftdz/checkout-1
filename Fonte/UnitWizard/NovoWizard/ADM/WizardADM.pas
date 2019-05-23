unit WizardADM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RxLookup, StdCtrls, DB, DBTables, RxQuery, JvWizard,
  JvWizardRouteMapNodes, RXCtrls, ExtCtrls, jpeg, JvExControls, JvComponent,
  JvgHint, Handprot;

type
  TFormWizardADM = class(TForm)
    JvWizard: TJvWizard;
    WizardWelcomePage: TJvWizardWelcomePage;
    Image: TImage;
    WizardInteriorPageFinal: TJvWizardInteriorPage;
    Panel7: TPanel;
    lblLinkHelpOnLine: TRxLabel;
    imgLinkHelpOnLine: TImage;
    JvWizardRouteMapNodes1: TJvWizardRouteMapNodes;
    JvWizardInteriorPageInventario: TJvWizardInteriorPage;
    Panel1: TPanel;
    DSSQLConfigInventario: TDataSource;
    SQLConfigInventario: TRxQuery;
    SQLConfigInventarioOPESICODENTRADA: TIntegerField;
    SQLConfigInventarioOPESICODSAIDA: TIntegerField;
    DSSQLOperacaoEstoqueSaida: TDataSource;
    SQLOperacaoEstoqueSaida: TRxQuery;
    DSSQLOperacaoEstoqueEntrada: TDataSource;
    SQLOperacaoEstoqueEntrada: TRxQuery;
    Label1: TLabel;
    Label2: TLabel;
    ComboEntrada: TRxDBLookupCombo;
    ComboSaida: TRxDBLookupCombo;
    JvWizardInteriorTranferencias: TJvWizardInteriorPage;
    SQLConfigGeral: TQuery;
    SQLConfigGeralOPESICODTRANSFENTR: TIntegerField;
    SQLConfigGeralOPESICODTRANSFSAID: TIntegerField;
    DSSQLConfigGeral: TDataSource;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    Label3: TLabel;
    dblOpEntradaTransf: TRxDBLookupCombo;
    dblOpSaidaTransf: TRxDBLookupCombo;
    SQLOperacaoEstoqueSaidaOPESICOD: TIntegerField;
    SQLOperacaoEstoqueSaidaOPESA60DESCR: TStringField;
    SQLOperacaoEstoqueEntradaOPESICOD: TIntegerField;
    SQLOperacaoEstoqueEntradaOPESA60DESCR: TStringField;
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
    JvgHint: TJvgHint;
    procedure JvWizardInteriorPageInventarioEnterPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure JvWizardInteriorPageInventarioExitPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure JvWizardInteriorTranferenciasEnterPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure JvWizardCancelButtonClick(Sender: TObject);
    procedure JvWizardFinishButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SQLTerminalBeforeOpen(DataSet: TDataSet);
    procedure SQLTerminalAfterOpen(DataSet: TDataSet);
    procedure ComboEntradaDropDown(Sender: TObject);
    procedure ComboEntradaCloseUp(Sender: TObject);
    procedure JvWizardInteriorTranferenciasCancelButtonClick(
      Sender: TObject; var Stop: Boolean);
    procedure JvWizardInteriorTranferenciasExitPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure JvWizardInteriorPageInventarioCancelButtonClick(
      Sender: TObject; var Stop: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormWizardADM: TFormWizardADM;
  Terminal      : String;
implementation

uses DataModulo;

{$R *.dfm}

procedure TFormWizardADM.JvWizardInteriorPageInventarioEnterPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
begin
   if not SQLOperacaoEstoqueSaida.Active   then SQLOperacaoEstoqueSaida.Active := True;
   if not SQLOperacaoEstoqueEntrada.Active then SQLOperacaoEstoqueEntrada.Active := True;

   if not SQLConfigInventario.Active then SQLConfigInventario.Active := True;

   if SQLConfigInventario.IsEmpty then
      SQLConfigInventario.Append
   else
      SQLConfigInventario.Edit;
end;

procedure TFormWizardADM.JvWizardInteriorPageInventarioExitPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
begin
   if SQLConfigInventario.State in dsEditModes then
      SQLConfigInventario.Post;
end;

procedure TFormWizardADM.JvWizardInteriorTranferenciasEnterPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
begin
   if not SQLConfigGeral.Active then SQLConfigGeral.Active := True;
   if SQLConfigGeral.IsEmpty then
      SQLConfigGeral.Append
   else
      SQLConfigGeral.Edit;
end;

procedure TFormWizardADM.JvWizardCancelButtonClick(Sender: TObject);
begin
//   Database.Rollback;
   Close;
end;

procedure TFormWizardADM.JvWizardFinishButtonClick(Sender: TObject);
begin
//   Database.Commit;
   Close;
end;

procedure TFormWizardADM.FormCreate(Sender: TObject);
begin
  DM.VerificaAplicacaoHP(Tag);

  if not DM.Database.Connected then
     DM.Database.Open;

  Terminal := ParamStr(1);

  SQLTerminal.Open;

  Application.Title := Caption;  
end;

procedure TFormWizardADM.SQLTerminalBeforeOpen(DataSet: TDataSet);
begin
  if Terminal <> '' then
     SQLTerminal.MacroByName('MTerminal').AsString := ' TERMICOD = ' + Terminal;

end;

procedure TFormWizardADM.SQLTerminalAfterOpen(DataSet: TDataSet);
begin
  Caption := 'Advanced Control Wizard [Configurações ADM] Terminal: ' + SQLTerminalTERMA60DESCR.AsString;
end;

procedure TFormWizardADM.ComboEntradaDropDown(Sender: TObject);
begin
   TControl(Sender).ShowHint := False;
end;

procedure TFormWizardADM.ComboEntradaCloseUp(Sender: TObject);
begin
   TControl(Sender).ShowHint := True;
end;

procedure TFormWizardADM.JvWizardInteriorTranferenciasCancelButtonClick(
  Sender: TObject; var Stop: Boolean);
begin
   if SQLConfigGeral.State in dsEditModes then
      SQLConfigGeral.Cancel;
end;

procedure TFormWizardADM.JvWizardInteriorTranferenciasExitPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
begin
   if SQLConfigGeral.State in dsEditModes then
      SQLConfigGeral.Post;
end;

procedure TFormWizardADM.JvWizardInteriorPageInventarioCancelButtonClick(
  Sender: TObject; var Stop: Boolean);
begin
   if SQLConfigInventario.State in dsEditModes then
      SQLConfigInventario.Cancel;
end;

end.
