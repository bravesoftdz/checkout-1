unit WizardCash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, JvWizard, JvWizardRouteMapNodes, jpeg, JvExControls,
  JvComponent, DBCtrls, DB, DBTables, StdCtrls, Mask, RxLookup, RxQuery,
  JvgHint, RXCtrls, ShellApi, Handprot, Buttons, RxDBComb, ToolEdit, Printers;

type
  TFormWizardCash = class(TForm)
    JvWizard: TJvWizard;
    JvWizardWelcome: TJvWizardWelcomePage;
    Image: TImage;
    JvWizardInteriorPageFinal: TJvWizardInteriorPage;
    JvWizardRouteMapNodes1: TJvWizardRouteMapNodes;
    Panel1: TPanel;
    SQLConfigVenda: TRxQuery;
    SQLConfigVendaCFVEN3MAXLIMCRED: TBCDField;
    SQLConfigVendaCFVEN2PERCLIMCRED: TBCDField;
    SQLConfigVendaCFVECTIPOLIMCRED: TStringField;
    SQLConfigVendaCFVECARREDPARCELA: TStringField;
    SQLConfigVendaCFVECVENDAESTNEGAT: TStringField;
    SQLConfigVendaCFVECTIPOIMPPED: TStringField;
    SQLConfigVendaCFVECDADOSCHQPDV: TStringField;
    SQLConfigVendaCFVECUSADEBCREDCLI: TStringField;
    SQLConfigVendaCGVECTESTAITENSNF: TStringField;
    SQLConfigVendaCFVEN3ALIQISSQN: TBCDField;
    SQLConfigVendaCFVECIMPLEGPEDVENF: TStringField;
    SQLConfigVendaCFVEN3PERCICMFRETE: TBCDField;
    SQLConfigVendaCFVEA255OBSPADNF: TStringField;
    SQLConfigVendaCFVEITEMPOCONSPROD: TIntegerField;
    SQLConfigVendaCFVECQUITARPARCHQ: TStringField;
    SQLConfigVendaCFVEA255OBSPADRPED: TStringField;
    SQLConfigVendaOPESICODCUPOM: TIntegerField;
    SQLConfigVendaOPESICODCANCCUPOM: TIntegerField;
    SQLConfigVendaOPESICODNF: TIntegerField;
    SQLConfigVendaOPESICODCANCNF: TIntegerField;
    SQLConfigVendaCFVECRENDCONJNOLIM: TStringField;
    SQLConfigVendaOPESICODRETORNO: TIntegerField;
    SQLConfigVendaOPESICODCANCTROCA: TIntegerField;
    SQLConfigVendaOPESICODTROCA: TIntegerField;
    SQLConfigVendaCFVECINFDADOVENDA: TStringField;
    SQLConfigVendaCFVEIQTDPADRPDV: TIntegerField;
    SQLConfigVendaCFVECPARC0ENTRBAIX: TStringField;
    SQLConfigVendaCFVEA250MSGBLOQ: TStringField;
    SQLConfigVendaTPRCICOD: TIntegerField;
    SQLConfigVendaCFVECFAZVENDCONSIG: TStringField;
    SQLConfigVendaOPESICODDEVOL: TIntegerField;
    SQLConfigVendaMTBLICODVENDCONSIG: TIntegerField;
    SQLConfigVendaCFVECIMPPREVDCOD: TStringField;
    SQLConfigVendaCFVECFINVENDADPREVD: TStringField;
    SQLConfigVendaCFVECFINDPRODPORDESCR: TStringField;
    SQLConfigVendaCFVECPEDEVLRPRODUTO: TStringField;
    SQLConfigVendaCFVECTESTALIMTCRED: TStringField;
    SQLConfigVendaCFVECSUBDEBNOLIMITE: TStringField;
    SQLConfigVendaCFVEINROCASASDEC: TIntegerField;
    SQLConfigVendaCFVEN2PERCCOFINS: TBCDField;
    SQLConfigVendaCFVEN2PERCENCARG: TBCDField;
    SQLConfigVendaCFVEN2PERCPIS: TBCDField;
    SQLConfigVendaCFVECQUITAPARCONV: TStringField;
    SQLConfigVendaCFVECFARREDVLRVEND: TStringField;
    SQLConfigVendaCFVECUSALIBERCRED: TStringField;
    DSSQLConfigVenda: TDataSource;
    SQLTabelaPreco: TRxQuery;
    DSSQLTabelaPreco: TDataSource;
    SQLMotivoBloqueio: TRxQuery;
    DSSQLMotivoBloqueio: TDataSource;
    SQLConfigCrediario: TQuery;
    SQLConfigCrediarioCFCRN2PERCMULATRAS: TBCDField;
    SQLConfigCrediarioCFCRN2PERCJURATRAS: TBCDField;
    SQLConfigCrediarioCFCRINRODIASTOLJUR: TIntegerField;
    SQLConfigCrediarioCFCRINRODIASTOLMUL: TIntegerField;
    SQLConfigCrediarioCFCRN2PERCADIANT: TBCDField;
    SQLConfigCrediarioCFCRINRODIASADIANT: TIntegerField;
    SQLConfigCrediarioCFCRINRODIACARTA1A: TIntegerField;
    SQLConfigCrediarioCFCRINRODIACARTA2A: TIntegerField;
    SQLConfigCrediarioCFCRINRODIACARTA3A: TIntegerField;
    SQLConfigCrediarioCFCRA255PATHCART1A: TStringField;
    SQLConfigCrediarioCFCRA255PATHCART2A: TStringField;
    SQLConfigCrediarioCFCRA255PATHCART3A: TStringField;
    SQLConfigCrediarioCFCRCCONSMOTBLOQ: TStringField;
    SQLConfigCrediarioCFCRCCONSCARTAVISO: TStringField;
    SQLConfigCrediarioCFCRA255PATHRELSPC: TStringField;
    SQLConfigCrediarioCFCRA255PATHAUTDEP: TStringField;
    SQLConfigCrediarioCFCRINRODIACARTA4A: TIntegerField;
    SQLConfigCrediarioCFCRN2PERCTAXACOBR: TBCDField;
    SQLConfigCrediarioCFCRCBLOQVENDCLI1AV: TStringField;
    SQLConfigCrediarioCFCRCBLOQVENDCLI2AV: TStringField;
    SQLConfigCrediarioCFCRCBLOQVENDCLI3AV: TStringField;
    SQLConfigCrediarioCFCRA254PATHMALADIRETA: TStringField;
    DSSQLConfigCrediario: TDataSource;
    WizardInteriorPageConfigGeral: TJvWizardInteriorPage;
    Panel2: TPanel;
    GroupBox4: TGroupBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo5: TRxDBLookupCombo;
    GroupBox7: TGroupBox;
    DBEdit7: TDBEdit;
    WizardInteriorPageValores: TJvWizardInteriorPage;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBRadioGroup1: TDBRadioGroup;
    GroupBox10: TGroupBox;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit8: TDBEdit;
    imgLinkHelpOnLine: TImage;
    lblLinkHelpOnLine: TRxLabel;
    GroupBox5: TGroupBox;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    DBEdit6: TDBEdit;
    DBCheckBox19: TDBCheckBox;
    JvWizardInteriorPageImpressoras: TJvWizardInteriorPage;
    TblCliente: TTable;
    TblClienteCLIEA13ID: TStringField;
    TblClienteCLIEA60RAZAOSOC: TStringField;
    TblVendedor: TTable;
    TblVendedorVENDICOD: TIntegerField;
    TblVendedorVENDA60NOME: TStringField;
    TblNumerario: TTable;
    TblNumerarioNUMEICOD: TIntegerField;
    TblNumerarioNUMEA30DESCR: TStringField;
    TblECF: TTable;
    TblECFECFA13ID: TStringField;
    TblECFECFA30DESCR: TStringField;
    TblPlano: TTable;
    TblPlanoPLRCICOD: TIntegerField;
    TblPlanoPLRCA60DESCR: TStringField;
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
    Panel4: TPanel;
    GroupBox8: TGroupBox;
    FilenameImpPedOrc: TFilenameEdit;
    RxDBComboBox4: TRxDBComboBox;
    DBEdit28: TDBEdit;
    GroupImp: TGroupBox;
    Label26: TLabel;
    Label21: TLabel;
    ComboPedido: TDBComboBox;
    ComboImpNaoFiscal: TRxDBComboBox;
    GroupBox6: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label5: TLabel;
    ComboCarne: TDBComboBox;
    ComboFichaCli: TDBComboBox;
    ComboAutDep: TDBComboBox;
    Label24: TLabel;
    DBEdit14: TDBEdit;
    JvWizardInteriorPageParametros: TJvWizardInteriorPage;
    Panel5: TPanel;
    GroupBox11: TGroupBox;
    RxDBComboBox6: TDBCheckBox;
    RxDBComboBox9: TDBCheckBox;
    RxDBComboBox12: TDBCheckBox;
    RxDBComboBox7: TDBCheckBox;
    RxDBComboBox8: TDBCheckBox;
    RxDBComboBox1: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    JvWizardInteriorPageDispossitivos: TJvWizardInteriorPage;
    dsSQLTerminal: TDataSource;
    dsTblECF: TDataSource;
    dsTblCliente: TDataSource;
    dsTblVendedor: TDataSource;
    dsTblPlano: TDataSource;
    Panel6: TPanel;
    Label9: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    Label15: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    Label19: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    RxDBLookupCombo8: TRxDBLookupCombo;
    Label20: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    Label22: TLabel;
    dsTblNumerario: TDataSource;
    GroupBox9: TGroupBox;
    Label23: TLabel;
    Label25: TLabel;
    Label29: TLabel;
    RxDBLookupCombo9: TRxDBLookupCombo;
    RxDBLookupCombo10: TRxDBLookupCombo;
    RxDBLookupCombo11: TRxDBLookupCombo;
    Panel7: TPanel;
    gboxECF: TGroupBox;
    Label18: TLabel;
    Label34: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    ComboPortaECF: TDBComboBox;
    gboxTEF: TGroupBox;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    DBEdit27: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    SQLConfigVendaCFVECINFPRODSUBTRI: TStringField;
    chkECF: TCheckBox;
    chkTEF: TCheckBox;
    Label38: TLabel;
    Panel8: TPanel;
    RadioDispositivoEntrada: TDBRadioGroup;
    GroupLeitor: TGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    ComboLeitor: TRxDBComboBox;
    ComboPortaLeitor: TDBComboBox;
    SQLOperacaoEstoqueSaida: TRxQuery;
    SQLOperacaoEstoqueSaidaOPESICOD: TIntegerField;
    SQLOperacaoEstoqueSaidaOPESA60DESCR: TStringField;
    DSSQLOperacaoEstoqueSaida: TDataSource;
    DSSQLOperacaoEstoqueEntrada: TDataSource;
    SQLOperacaoEstoqueEntrada: TRxQuery;
    SQLOperacaoEstoqueEntradaOPESICOD: TIntegerField;
    SQLOperacaoEstoqueEntradaOPESA60DESCR: TStringField;
    JvgHint: TJvgHint;
    procedure SQLConfigVendaNewRecord(DataSet: TDataSet);
    procedure SQLConfigCrediarioNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure JvWizardFinishButtonClick(Sender: TObject);
    procedure JvWizardCancelButtonClick(Sender: TObject);
    procedure WizardInteriorPageConfigGeralExitPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure WizardInteriorPageConfigGeralEnterPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure WizardInteriorPageValoresExitPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure lblLinkHelpOnLineClick(Sender: TObject);
    procedure lblLinkHelpOnLineMouseEnter(Sender: TObject);
    procedure lblLinkHelpOnLineMouseLeave(Sender: TObject);
    procedure FilenameImpPedOrcButtonClick(Sender: TObject);
    procedure JvWizardInteriorPageImpressorasEnterPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure JvWizardInteriorPageImpressorasExitPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure chkECFClick(Sender: TObject);
    procedure chkTEFClick(Sender: TObject);
    procedure RadioDispositivoEntradaChange(Sender: TObject);
    procedure SQLTerminalBeforeOpen(DataSet: TDataSet);
    procedure SQLTerminalAfterOpen(DataSet: TDataSet);
    procedure RxDBLookupCombo1DropDown(Sender: TObject);
    procedure RxDBLookupCombo1CloseUp(Sender: TObject);
    procedure WizardInteriorPageConfigGeralCancelButtonClick(
      Sender: TObject; var Stop: Boolean);
    procedure JvWizardInteriorPageImpressorasBackButtonClick(
      Sender: TObject; var Stop: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormWizardCash: TFormWizardCash;
  Terminal      : String;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormWizardCash.SQLConfigVendaNewRecord(DataSet: TDataSet);
begin
     SQLConfigVendaCFVECVENDAESTNEGAT.AsString    := 'N';
     SQLConfigVendaCFVECDADOSCHQPDV.AsString      := 'N';
     SQLConfigVendaCFVECINFDADOVENDA.AsString     := 'N';
     SQLConfigVendaCFVECUSALIBERCRED.AsString     := 'N';
     SQLConfigVendaCFVECUSADEBCREDCLI.AsString    := 'N';
     SQLConfigVendaCFVECQUITARPARCHQ.AsString     := 'N';
     SQLConfigVendaCFVECPARC0ENTRBAIX.AsString    := 'N';
     SQLConfigVendaCFVECQUITAPARCONV.AsString     := 'N';
     SQLConfigVendaCFVECFAZVENDCONSIG.AsString    := 'N';
     SQLConfigVendaCFVECIMPPREVDCOD.AsString      := 'N';
     SQLConfigVendaCFVECFINVENDADPREVD.AsString   := 'N';
     SQLConfigVendaCFVECFINDPRODPORDESCR.AsString := 'N';
     SQLConfigVendaCFVECPEDEVLRPRODUTO.AsString   := 'N';
     SQLConfigVendaCFVECFARREDVLRVEND.AsString    := 'N';
     SQLConfigVendaCFVECTESTALIMTCRED.AsString    := 'N';
     SQLConfigVendaCFVECRENDCONJNOLIM.AsString    := 'N';
     SQLConfigVendaCFVECSUBDEBNOLIMITE.AsString   := 'N';
     SQLConfigVendaCFVEN2PERCLIMCRED.AsFloat      := 0;
     SQLConfigVendaCFVEN3MAXLIMCRED.AsFloat       := 0;
     SQLConfigVendaCFVEN2PERCCOFINS.AsFloat       := 0;
     SQLConfigVendaCFVEN2PERCPIS.AsFloat          := 0;
     SQLConfigVendaCFVEN2PERCENCARG.AsFloat       := 0;
     SQLConfigVendaCFVEN3ALIQISSQN.AsFloat        := 0;
     SQLConfigVendaCFVEN3PERCICMFRETE.AsFloat     := 0;
     SQLConfigVendaCFVEINROCASASDEC.AsFloat       := 1;
     SQLConfigVendaCFVEITEMPOCONSPROD.AsFloat     := 1;
     SQLConfigVendaCFVEIQTDPADRPDV.AsFloat        := 1;
end;

procedure TFormWizardCash.SQLConfigCrediarioNewRecord(DataSet: TDataSet);
begin
     SQLConfigCrediarioCFCRCBLOQVENDCLI1AV.AsString  := 'N';
     SQLConfigCrediarioCFCRCBLOQVENDCLI2AV.AsString  := 'N';
     SQLConfigCrediarioCFCRCBLOQVENDCLI3AV.AsString := 'N';

     SQLConfigCrediarioCFCRN2PERCJURATRAS.AsFloat    := 0;
     SQLConfigCrediarioCFCRN2PERCMULATRAS.AsFloat    := 0;
     SQLConfigCrediarioCFCRINRODIASTOLMUL.AsFloat    := 0;
     SQLConfigCrediarioCFCRINRODIASTOLJUR.AsFloat    := 0;
     SQLConfigCrediarioCFCRN2PERCTAXACOBR.AsFloat    := 0;
     SQLConfigCrediarioCFCRN2PERCADIANT.AsFloat      := 0;
     SQLConfigCrediarioCFCRINRODIASADIANT.AsFloat    := 0;
     SQLConfigCrediarioCFCRINRODIACARTA1A.AsFloat    := 10;
     SQLConfigCrediarioCFCRINRODIACARTA2A.AsFloat    := 20;
     SQLConfigCrediarioCFCRINRODIACARTA3A.AsFloat    := 30;
     SQLConfigCrediarioCFCRINRODIACARTA4A.AsFloat    := 15;
end;

procedure Informa(Texto : string);
begin
    Application.MessageBox(Pchar(Texto),'Atenção',MB_ICONINFORMATION + MB_SYSTEMMODAL + MB_SETFOREGROUND);
end;

procedure TFormWizardCash.FormCreate(Sender: TObject);
begin
  DM.VerificaAplicacaoHP(Tag);

  DM.Database.Close;
  DM.Database.Open;

//  Database.StartTransaction;
  SQLOperacaoEstoqueSaida.Open;
  SQLOperacaoEstoqueEntrada.Open;
  SQLTabelaPreco.Open;
  SQLMotivoBloqueio.Open;

  Terminal := ParamStr(1);
  SQLTerminal.Open;

  Application.Title := Caption;  
end;

procedure TFormWizardCash.JvWizardFinishButtonClick(Sender: TObject);
begin
//    Database.Commit;
    Close;
end;

procedure TFormWizardCash.JvWizardCancelButtonClick(Sender: TObject);
begin
//   Database.Rollback;
   Close;
end;

procedure TFormWizardCash.WizardInteriorPageConfigGeralExitPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
begin
   if (SQLConfigVendaOPESICODCUPOM.AsString = '') or SQLConfigVendaOPESICODCUPOM.IsNull then
      begin
         SQLConfigVendaOPESICODCUPOM.FocusControl;
         Application.MessageBox('Você deve informar o tipo de saida por cupom.', 'Atenção', MB_OK+MB_SYSTEMMODAL+MB_ICONINFORMATION);
         Abort;
      end;

   if (SQLConfigVendaOPESICODCANCCUPOM.AsString = '') or SQLConfigVendaOPESICODCANCCUPOM.IsNull then
      begin
         SQLConfigVendaOPESICODCANCCUPOM.FocusControl;
         Application.MessageBox('Você deve informar o tipo de operação de estoque para quando da saida de venda por cupom.', 'Atenção', MB_OK+MB_SYSTEMMODAL+MB_ICONINFORMATION);
         Abort;
      end;

   if (SQLConfigVendaOPESICODTROCA.AsString = '') or SQLConfigVendaOPESICODTROCA.IsNull then
      begin
         SQLConfigVendaOPESICODTROCA.FocusControl;
         Application.MessageBox('Você deve informar o tipo de operação de estoque para quando da entrada por troca.', 'Atenção', MB_OK+MB_SYSTEMMODAL+MB_ICONINFORMATION);
         Abort;
      end;

   if (SQLConfigVendaOPESICODCANCTROCA.AsString = '') or SQLConfigVendaOPESICODCANCTROCA.IsNull then
      begin
         JvWizard.ActivePage := WizardInteriorPageConfigGeral;
         SQLConfigVendaOPESICODCANCTROCA.FocusControl;
         Application.MessageBox('Você deve informar o tipo de operação de estoque para quando do cancelamento de troca.', 'Atenção', MB_OK+MB_SYSTEMMODAL+MB_ICONINFORMATION);
         Abort;
      end;

   if (SQLConfigVendaCFVEA250MSGBLOQ.AsString = '') or SQLConfigVendaCFVEA250MSGBLOQ.IsNull then
      begin
         SQLConfigVendaCFVEA250MSGBLOQ.FocusControl;
         Application.MessageBox('Você deve informar uma mensagem padrão para quando o cliente estiver com alguma situação de bloqueio.', 'Atenção', MB_OK+MB_SYSTEMMODAL+MB_ICONINFORMATION);
         Abort;
      end;

    if SQLConfigVenda.State in dsEditModes then
       SQLConfigVenda.Post;
end;

procedure TFormWizardCash.WizardInteriorPageConfigGeralEnterPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
begin
  if not SQLConfigVenda.Active then SQLConfigVenda.Active := True;
  if SQLConfigVenda.IsEmpty then
     SQLConfigVenda.Append
  else
     SQLConfigVenda.Edit;

  chkECF.Checked := not SQLTerminalECFA13ID.IsNull;
  chkTEF.Checked := SQLTerminalTERMINROVIASTEF.Value > 0;
end;

procedure TFormWizardCash.WizardInteriorPageValoresExitPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
begin
   if (SQLConfigVendaCFVECARREDPARCELA.AsString = '') or (SQLConfigVendaCFVECARREDPARCELA.IsNull) then
      begin
         Application.MessageBox('Você deve informar o tipo de arredondamento.', 'Atenção', MB_OK+MB_SYSTEMMODAL+MB_ICONINFORMATION);
         SQLConfigVendaCFVECARREDPARCELA.FocusControl;
         Abort;
      end;

    if SQLConfigVenda.State in dsEditModes then
       SQLConfigVenda.Post;
end;

procedure TFormWizardCash.lblLinkHelpOnLineClick(Sender: TObject);
begin
    ShellExecute(0,'open', 'http://www.atwnet.com.br/help', '', '', SW_SHOWNORMAL);
end;

procedure TFormWizardCash.lblLinkHelpOnLineMouseEnter(Sender: TObject);
begin
    TLabel(Sender).Font.Color := clBlue;
    TLabel(Sender).Font.Style := [fsUnderline];
end;

procedure TFormWizardCash.lblLinkHelpOnLineMouseLeave(Sender: TObject);
begin
    TLabel(Sender).Font.Color := clBlack;
    TLabel(Sender).Font.Style := [];
end;

procedure TFormWizardCash.FilenameImpPedOrcButtonClick(Sender: TObject);
begin
  if FilenameImpPedOrc.Text <> '' then
    SQLTerminalTERMTPATHPEDORC.AsString := FilenameImpPedOrc.FileName;
end;

procedure TFormWizardCash.JvWizardInteriorPageImpressorasEnterPage(Sender: TObject;
  const Page: TJvWizardCustomPage);
begin
      if TJvWizardCustomPage(Sender) = JvWizardInteriorPageImpressoras then
         begin
            ComboCarne.Items.Clear ;
            ComboPedido.Items.Clear ;
            ComboFichaCli.Items.Clear ;
            ComboAutDep.Items.Clear ;
            ComboCarne.Items    := Printer.Printers;
            ComboPedido.Items   := Printer.Printers;
            ComboFichaCli.Items := Printer.Printers;
            ComboAutDep.Items   := Printer.Printers;
         end;

      if not TblECF.Active       then TblECF.Active       := True;
      if not TblCliente.Active   then TblCliente.Active   := True;
      if not TblVendedor.Active  then TblVendedor.Active  := True;
      if not TblPlano.Active     then TblPlano.Active     := True;
      if not TblNumerario.Active then TblNumerario.Active := True;

      if not SQLTerminal.Active then SQLTerminal.Active := True;

      if SQLTerminal.IsEmpty then
         SQLTerminal.Append
      else
         SQLTerminal.Edit;
end;

procedure TFormWizardCash.JvWizardInteriorPageImpressorasExitPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
begin
      if SQLTerminal.State in dsEditModes then
         SQLTerminal.Post;
end;

procedure TFormWizardCash.chkECFClick(Sender: TObject);
begin
   gboxECF.Visible := chkECF.Checked;
end;

procedure TFormWizardCash.chkTEFClick(Sender: TObject);
begin
   gboxTEF.Visible := chkTEF.Checked;
end;

procedure TFormWizardCash.RadioDispositivoEntradaChange(Sender: TObject);
begin
  GroupLeitor.Visible := RadioDispositivoEntrada.ItemIndex = 1;
end;

procedure TFormWizardCash.SQLTerminalBeforeOpen(DataSet: TDataSet);
begin
  if Terminal <> '' then
     SQLTerminal.MacroByName('MTerminal').AsString := ' TERMICOD = ' + Terminal;
end;

procedure TFormWizardCash.SQLTerminalAfterOpen(DataSet: TDataSet);
begin
  Caption := 'Advanced Control Wizard [Configurações Cash] Terminal: ' + SQLTerminalTERMA60DESCR.AsString;
end;

procedure TFormWizardCash.RxDBLookupCombo1DropDown(Sender: TObject);
begin
   TControl(Sender).ShowHint := False;
end;

procedure TFormWizardCash.RxDBLookupCombo1CloseUp(Sender: TObject);
begin
   TControl(Sender).ShowHint := True;
end;

procedure TFormWizardCash.WizardInteriorPageConfigGeralCancelButtonClick(
  Sender: TObject; var Stop: Boolean);
begin
  if SQLConfigVenda.State in dsEditModes then
     SQLConfigVenda.Cancel;
end;

procedure TFormWizardCash.JvWizardInteriorPageImpressorasBackButtonClick(
  Sender: TObject; var Stop: Boolean);
begin
    if SQLTerminal.State in dsEditModes then
     SQLTerminal.Cancel;
end;

end.
