unit WizardStandard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvWizard, JvWizardRouteMapNodes, RXCtrls, ExtCtrls, jpeg,
  JvExControls, JvComponent, StdCtrls, Buttons, ConerBtn, ComCtrls,
  ShellCtrls, RxQuery, DB, ExtDlgs, DBTables, Menus, JvMenus, JvgHint,
  JvBaseDlg, JvBrowseFolder, FileCtrl, JvgPage, DBCtrls, Mask, CheckLst,
  Grids, DBGrids, JvExDBGrids, JvDBGrid, StrUtils, ShellApi, RxLookup,
  RxDBComb, ToolEdit;

type
  TFormWizardStandard = class(TForm)
    JvWizard: TJvWizard;
    wzBoasVindas: TJvWizardWelcomePage;
    Image: TImage;
    wzFinal: TJvWizardInteriorPage;
    Panel7: TPanel;
    lblLinkHelpOnLine: TRxLabel;
    imgLinkHelpOnLine: TImage;
    wzBarraLateral: TJvWizardRouteMapNodes;
    BrowseForFolderDialog: TJvBrowseForFolderDialog;
    JvgHint: TJvgHint;
    PopupMenuUsuario: TJvPopupMenu;
    mnRemoverUsurio: TMenuItem;
    PopupMenu: TJvPopupMenu;
    mnLista: TMenuItem;
    mnIcones: TMenuItem;
    mnDetalhes: TMenuItem;
    mnIconesPequenos: TMenuItem;
    SQLGeral: TRxQuery;
    OpenPictureDialog: TOpenPictureDialog;
    Dialog: TOpenDialog;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    SQLEmpresaEMPRA60NOMEFANT: TStringField;
    SQLEmpresaEMPRCMATRIZFILIAL: TStringField;
    SQLEmpresaEMPRA20FONE: TStringField;
    SQLEmpresaEMPRA20FAX: TStringField;
    SQLEmpresaEMPRA60END: TStringField;
    SQLEmpresaEMPRA60BAI: TStringField;
    SQLEmpresaEMPRA60CID: TStringField;
    SQLEmpresaEMPRA2UF: TStringField;
    SQLEmpresaEMPRA8CEP: TStringField;
    SQLEmpresaEMPRCFISJURID: TStringField;
    SQLEmpresaEMPRA14CGC: TStringField;
    SQLEmpresaPENDENTE: TStringField;
    SQLEmpresaREGISTRO: TDateTimeField;
    SQLEmpresaEMPRBLOGOTIPO: TBlobField;
    SQLEmpresaEMPRA20IE: TStringField;
    SQLEmpresaEMPRA60EMAIL: TStringField;
    SQLEmpresaEMPRA60URL: TStringField;
    SQLEmpresaEMPRA15CODEAN: TStringField;
    DSSQLEmpresa: TDataSource;
    SQLUsuario: TRxQuery;
    SQLUsuarioUSUAICOD: TIntegerField;
    SQLUsuarioUSUAA60LOGIN: TStringField;
    SQLUsuarioUSUAA5SENHA: TStringField;
    SQLUsuarioPENDENTE: TStringField;
    SQLUsuarioREGISTRO: TDateTimeField;
    SQLUsuarioUSUACEXCLCLI: TStringField;
    SQLUsuarioUSUACCANCPREVENDA: TStringField;
    SQLUsuarioUSUCALTERASLDINVENTARIO: TStringField;
    SQLUsuarioUSUACLIBERACREDITO: TStringField;
    SQLUsuarioUSUACUSERMASTER: TStringField;
    SQLUsuarioUSUACEXCLDADOSTESO: TStringField;
    SQLUsuarioUSUACVERDADCOMPRCLI: TStringField;
    SQLUsuarioUSUACDESBLOQCLI: TStringField;
    SQLUsuarioUSUAN2PERCDESC: TBCDField;
    SQLUsuarioUSUACVENDCLIBLOQ: TStringField;
    SQLUsuarioUSUACCANCVENDA: TStringField;
    SQLUsuarioUSUACALTVLRVENDA: TStringField;
    SQLUsuarioUSUACALTCAIXATES: TStringField;
    SQLUsuarioUSUACEXCMOVBCO: TStringField;
    SQLUsuarioUSUAA60EMAIL: TStringField;
    DSSQLUsuario: TDataSource;
    SQLTerminal: TRxQuery;
    SQLScript: TSQLScript;
    wzPageBD: TJvWizardInteriorPage;
    Splitter1: TSplitter;
    DBShellTreeView: TShellTreeView;
    DBShellListView: TShellListView;
    Panel1: TPanel;
    ConerBtn1: TConerBtn;
    ConerBtn2: TConerBtn;
    btIrMeuComputador: TConerBtn;
    wzPageScripts: TJvWizardInteriorPage;
    Panel6: TPanel;
    Panel8: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    btExeuctarScripts: TConerBtn;
    cboAcoes: TComboBox;
    edOutrsoFiltros: TEdit;
    Progress: TProgressBar;
    JvgPageControlScripts: TJvgPageControl;
    TabSheetScripts: TTabSheet;
    RxLabel2: TRxLabel;
    ListaSQL: TFileListBox;
    TabSheetScriptsErros: TTabSheet;
    Memo: TMemo;
    wzEmpresa: TJvWizardInteriorPage;
    pnBancoDados: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label18: TLabel;
    Label7: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    btGravarEmpresa: TSpeedButton;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEditEnd: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Panel2: TPanel;
    DBImage1: TDBImage;
    wzUsuario: TJvWizardInteriorPage;
    Panel3: TPanel;
    Label1: TLabel;
    Label11: TLabel;
    Label16: TLabel;
    edUsuario: TEdit;
    edEmail: TEdit;
    edSenha: TEdit;
    btInserirUsuario: TConerBtn;
    chkMaster: TCheckBox;
    Panel4: TPanel;
    JvDBGrid1: TJvDBGrid;
    wzTerminais: TJvWizardInteriorPage;
    Panel5: TPanel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    ckMicros: TCheckListBox;
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
    SQLOperacaoEstoqueSaida: TRxQuery;
    SQLOperacaoEstoqueSaidaOPESICOD: TIntegerField;
    SQLOperacaoEstoqueSaidaOPESA60DESCR: TStringField;
    DSSQLOperacaoEstoqueSaida: TDataSource;
    DSSQLOperacaoEstoqueEntrada: TDataSource;
    SQLOperacaoEstoqueEntrada: TRxQuery;
    SQLOperacaoEstoqueEntradaOPESICOD: TIntegerField;
    SQLOperacaoEstoqueEntradaOPESA60DESCR: TStringField;
    wzCompras1: TJvWizardInteriorPage;
    Panel9: TPanel;
    GroupBox4: TGroupBox;
    Label17: TLabel;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    RxDBComboBox1: TRxDBComboBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    GroupBox1: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    ComboOperacaoEntrada: TRxDBLookupCombo;
    ComboOperacaoSaida: TRxDBLookupCombo;
    wzCompras2: TJvWizardInteriorPage;
    Panel10: TPanel;
    GroupBox2: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    GroupBox3: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
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
    SQLConfigVendaCFVECINFPRODSUBTRI: TStringField;
    DSSQLConfigVenda: TDataSource;
    TblECF: TTable;
    TblECFECFA13ID: TStringField;
    TblECFECFA30DESCR: TStringField;
    dsTblECF: TDataSource;
    TblCliente: TTable;
    TblClienteCLIEA13ID: TStringField;
    TblClienteCLIEA60RAZAOSOC: TStringField;
    dsTblCliente: TDataSource;
    TblVendedor: TTable;
    TblVendedorVENDICOD: TIntegerField;
    TblVendedorVENDA60NOME: TStringField;
    dsTblVendedor: TDataSource;
    TblPlano: TTable;
    TblPlanoPLRCICOD: TIntegerField;
    TblPlanoPLRCA60DESCR: TStringField;
    dsTblPlano: TDataSource;
    TblNumerario: TTable;
    TblNumerarioNUMEICOD: TIntegerField;
    TblNumerarioNUMEA30DESCR: TStringField;
    dsTblNumerario: TDataSource;
    SQLMotivoBloqueio: TRxQuery;
    DSSQLMotivoBloqueio: TDataSource;
    SQLTabelaPreco: TRxQuery;
    DSSQLTabelaPreco: TDataSource;
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
    wzVendas1: TJvWizardInteriorPage;
    Panel11: TPanel;
    GroupBox5: TGroupBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    GroupBox6: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    GroupBox7: TGroupBox;
    DBEdit1: TDBEdit;
    wzVendas2: TJvWizardInteriorPage;
    Panel12: TPanel;
    GroupBox8: TGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    DBEdit6: TDBEdit;
    DBEdit15: TDBEdit;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    DBRadioGroup1: TDBRadioGroup;
    GroupBox10: TGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    GroupBox9: TGroupBox;
    Label37: TLabel;
    DBEdit22: TDBEdit;
    GroupBox11: TGroupBox;
    Label39: TLabel;
    DBEdit23: TDBEdit;
    SQLTerminalEMPRICOD: TIntegerField;
    SQLTerminalTERMA60DESCR: TStringField;
    SQLTerminalTERMCTIPO: TStringField;
    SQLTerminalECFA13ID: TStringField;
    SQLTerminalTERMINROVIASTEF: TIntegerField;
    SQLTerminalTERMA60NOMECOMPUT: TStringField;
    SQLICMS: TRxQuery;
    SQLICMSICMSICOD: TIntegerField;
    SQLICMSICMSA60DESCR: TStringField;
    SQLICMSICMSN2ALIQUOTA: TBCDField;
    DSSQLICMS: TDataSource;
    wzFaturamento1: TJvWizardInteriorPage;
    Panel13: TPanel;
    GroupBox12: TGroupBox;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    RxDBLookupCombo8: TRxDBLookupCombo;
    RxDBLookupCombo9: TRxDBLookupCombo;
    RxDBLookupCombo10: TRxDBLookupCombo;
    RxDBLookupCombo11: TRxDBLookupCombo;
    wzFaturamento2: TJvWizardInteriorPage;
    Panel14: TPanel;
    GroupBox13: TGroupBox;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox27: TDBCheckBox;
    GroupBox14: TGroupBox;
    Label45: TLabel;
    Label46: TLabel;
    RxDBLookupCombo12: TRxDBLookupCombo;
    RxDBLookupCombo13: TRxDBLookupCombo;
    GroupBox15: TGroupBox;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    DBEdit24: TDBEdit;
    ComboICMS: TRxDBLookupCombo;
    DBEdit25: TDBEdit;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox29: TDBCheckBox;
    GroupBox16: TGroupBox;
    DBMemoNF: TDBMemo;
    GroupBox17: TGroupBox;
    DBMemoPedido: TDBMemo;
    wzConfigGeral: TJvWizardInteriorPage;
    PanelCentral: TPanel;
    GroupBox18: TGroupBox;
    SpeedButton1: TSpeedButton;
    DBEdit26: TDBEdit;
    DBCheckBox26: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    DBCheckBox31: TDBCheckBox;
    DBRadioGroup2: TDBRadioGroup;
    GroupBox19: TGroupBox;
    RxDBLookupCombo14: TRxDBLookupCombo;
    SQLConfigGeral: TQuery;
    SQLConfigGeralCFGECATIVAEXPORT: TStringField;
    SQLConfigGeralCFGECATUSALDODIA: TStringField;
    SQLConfigGeralCFGEITIPMOVCONTENT: TIntegerField;
    SQLConfigGeralCFGEITIPMOVCONTSAI: TIntegerField;
    SQLConfigGeralCFGEA255PATHBLOQ: TStringField;
    SQLConfigGeralCFGECSETAREMPADREL: TStringField;
    SQLConfigGeralCFGEA255PATHFOTOCLI: TStringField;
    SQLConfigGeralCFGE1255PATHMALDIR: TStringField;
    SQLConfigGeralCFGECDELARQTEMPREL: TStringField;
    SQLConfigGeralCFGEA255PATHLOGOEMP: TStringField;
    SQLConfigGeralCFGECATUALSALDOMES: TStringField;
    SQLConfigGeralCFGECVALCODBARPROD: TStringField;
    SQLConfigGeralCFGECVALCODANTPRO: TStringField;
    SQLConfigGeralCFGECVALREFPROD: TStringField;
    SQLConfigGeralCFGECBASEPRCVENDA: TStringField;
    SQLConfigGeralCFGEIEMPPADRAO: TIntegerField;
    SQLConfigGeralCFGEA60HOSTSMTP: TStringField;
    SQLConfigGeralCFGEA60ENDRETSMTP: TStringField;
    SQLConfigGeralCFGEA60ENDHOSTPOP: TStringField;
    SQLConfigGeralCFGEA60NOMEUSERPOP: TStringField;
    SQLConfigGeralCFGEA60SENHAPOP: TStringField;
    SQLConfigGeralCGGEA30VERSAO: TStringField;
    SQLConfigGeralCFGEA255PATHVERSAO: TStringField;
    SQLConfigGeralCFGEA255PATHETIBAR: TStringField;
    SQLConfigGeralCFGEA255PATHREPORT: TStringField;
    SQLConfigGeralCFGECTROCAEMPLOGON: TStringField;
    SQLConfigGeralCFGECTESTEANPROD: TStringField;
    SQLConfigGeralCFGECTESTREFPROD: TStringField;
    SQLConfigGeralCFGEA255EXEDUPLICATA: TStringField;
    SQLConfigGeralCFGECESTOQUEPORLOTE: TStringField;
    SQLConfigGeralCFGECALCPRECOAUTOM: TStringField;
    SQLConfigGeralCFGECUSASALDODIARIO: TStringField;
    SQLConfigGeralCFGECTIPOMARGLUCRO: TStringField;
    SQLConfigGeralOPESICODTRANSFENTR: TIntegerField;
    SQLConfigGeralOPESICODTRANSFSAID: TIntegerField;
    SQLConfigGeralCFGECUSAMARGLIQ: TStringField;
    DSSQLConfigGeral: TDataSource;
    wzInventario: TJvWizardInteriorPage;
    Panel15: TPanel;
    Label47: TLabel;
    Label51: TLabel;
    ComboEntrada: TRxDBLookupCombo;
    ComboSaida: TRxDBLookupCombo;
    DSSQLConfigInventario: TDataSource;
    SQLConfigInventario: TRxQuery;
    SQLConfigInventarioOPESICODENTRADA: TIntegerField;
    SQLConfigInventarioOPESICODSAIDA: TIntegerField;
    SQLCadEcf: TRxQuery;
    SQLCadEcfECFA13ID: TStringField;
    SQLCadEcfEMPRICOD: TIntegerField;
    SQLCadEcfECFICOD: TIntegerField;
    SQLCadEcfECFA30DESCR: TStringField;
    SQLCadEcfECFA30MODELO: TStringField;
    SQLCadEcfECFA5IDENTIFICADORCNFV: TStringField;
    SQLCadEcfECFA5IDENTIFICADORCNFNV: TStringField;
    SQLCadEcfECFA2TRIBTXCRED: TStringField;
    SQLCadEcfPENDENTE: TStringField;
    SQLCadEcfREGISTRO: TDateTimeField;
    DSSQLCadEcf: TDataSource;
    wzCadastroEcf: TJvWizardInteriorPage;
    Panel16: TPanel;
    DBGridLista: TDBGrid;
    PanelCodigoDescricao: TPanel;
    Label52: TLabel;
    Label53: TLabel;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBNavigatorECF: TDBNavigator;
    SQLTerminalTERMICOD: TIntegerField;
    SQLTerminalCLIEA13ID: TStringField;
    SQLTerminalVENDICOD: TIntegerField;
    SQLTerminalPLRCICOD: TIntegerField;
    SQLTerminalTERMCSTATUSCAIXA: TStringField;
    SQLTerminalTERMDSTATUSCAIXA: TDateTimeField;
    SQLTerminalUSUAICODATIVO: TIntegerField;
    SQLTerminalTERMCMOVESTOQUE: TStringField;
    SQLTerminalTERMCUSAVENDEDOR: TStringField;
    SQLTerminalTERMCUSALIMITECRED: TStringField;
    SQLTerminalTERMA255MSGTELA: TStringField;
    SQLTerminalTERMA60IMPCARNE: TStringField;
    SQLTerminalTERMA60IMPPEDIDO: TStringField;
    SQLTerminalTERMA60IMPORCAMEN: TStringField;
    SQLTerminalTERMA60IMPCHEQUE: TStringField;
    SQLTerminalTERMA60IMPTCKAFCX: TStringField;
    SQLTerminalTERMCUSAMOEDA: TStringField;
    SQLTerminalTERMCIMPRIMECHEQUE: TStringField;
    SQLTerminalTERMCCONFIMPCARNE: TStringField;
    SQLTerminalTERMCIMPCONFDIVIDA: TStringField;
    SQLTerminalTERMCINFDADOSCLICP: TStringField;
    SQLTerminalTERMCIMPIDCUPOM: TStringField;
    SQLTerminalTERMA255MSGCARNE: TStringField;
    SQLTerminalTERMCIMPBARRASPED: TStringField;
    SQLTerminalTERMCINFDADOCLIPAD: TStringField;
    SQLTerminalTERMINRODECQUANT: TIntegerField;
    SQLTerminalTERMINUMEVISTA: TIntegerField;
    SQLTerminalTERMINUMEPRAZO: TIntegerField;
    SQLTerminalTERMCATIVO: TStringField;
    SQLTerminalTERMA5ECFPORTACOM: TStringField;
    SQLTerminalTERMCECFIMPRCLIE: TStringField;
    SQLTerminalTERMCECFIMPRVEND: TStringField;
    SQLTerminalTERMCECFIMPRCONFDIV: TStringField;
    SQLTerminalTERMCIMPPREVENDA: TStringField;
    SQLTerminalPENDENTE: TStringField;
    SQLTerminalREGISTRO: TDateTimeField;
    SQLTerminalTERMIPROXCODCTRC: TIntegerField;
    SQLTerminalTERMCAUTENTRFIMCUP: TStringField;
    SQLTerminalTERMA254PATHTERM: TStringField;
    SQLTerminalTERMCCONFFECHCUPOM: TStringField;
    SQLTerminalTERMCHIDECLIVENDPL: TStringField;
    SQLTerminalTERMCIMPRDADINTCUP: TStringField;
    SQLTerminalTERMA60IMPFICHACLI: TStringField;
    SQLTerminalTERMA60IMPAUTORIZCOM: TStringField;
    SQLTerminalTERMCMOSTRAIDCUPOM: TStringField;
    SQLTerminalTERMIINTERVALOSERV: TIntegerField;
    SQLTerminalTERMITMPLIMITESERV: TIntegerField;
    SQLTerminalTERMCSQLORDENADO: TStringField;
    SQLTerminalCFGIICOD: TIntegerField;
    SQLTerminalTERMTPATHNF: TStringField;
    SQLTerminalTERMCAUTENTIMPMATRI: TStringField;
    SQLTerminalTERMACTIPOIMPPEDORC: TStringField;
    SQLTerminalTERMTPATHPEDORC: TStringField;
    SQLTerminalTERMA30MODIMPNFISC: TStringField;
    SQLTerminalTERMCIMPENTCARNE: TStringField;
    SQLTerminalTERMA5LEITPORTACOM: TStringField;
    SQLTerminalTERMA60MODLEITOR: TStringField;
    SQLTerminalTERMCDISPOENTRADA: TStringField;
    SQLTerminalTERMCIMPCOMPTOTREC: TStringField;
    SQLTerminalTERMCNAOAUTRCTOCRD: TStringField;
    SQLTerminalTPDCICOD: TIntegerField;
    SQLTerminalTERMINUMERECCRED: TIntegerField;
    SQLConfigVendaCFVEICMSFRETECOD: TIntegerField;
    SQLConfigVendaCFVECMOVESTOQUENF: TStringField;
    SQLConfigVendaCFVECMOVESTOQUEPED: TStringField;
    SQLConfigVendaOPESICODCANCPED: TIntegerField;
    SQLConfigVendaOPESICODPED: TIntegerField;
    SQLConfigVendaPORTICOD: TIntegerField;
    SQLConfigVendaTPDCICOD: TIntegerField;
    SQLConfigVendaCFVECEXCLUIPEDFAT: TStringField;
    SQLConfigVendaCFVEINROITENSNF: TIntegerField;
    SQLConfigVendaCFVECALTPEDIMPORT: TStringField;
    SQLConfigVendaCFVETOBSPADRAONF: TStringField;
    SQLConfigVendaCFVETOBSPADRAOPED: TStringField;
    SQLConfigVendaOPESICODIMPCUPOM: TIntegerField;
    SQLConfigVendaOPESICODVENDCONSIG: TIntegerField;
    SQLConfigVendaCFVECSOLSENHAALTVLR: TStringField;
    SQLConfigVendaCFVECIMPDESCRPRINF: TStringField;
    SQLConfigVendaCFVEN2PERCICMS: TBCDField;
    SQLConfigVendaCFVECCONTPEDVDAUSU: TStringField;
    SQLConfigVendaCFVEIOPTESVENDANF: TIntegerField;
    SQLConfigVendaCFVECNAOIMPCLFISNF: TStringField;
    SQLConfigVendaCFVECQUITAPARCRT: TStringField;
    wzCrediario: TJvWizardInteriorPage;
    Panel17: TPanel;
    PanelBarra: TPanel;
    GroupBox20: TGroupBox;
    Label38: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    GroupBox21: TGroupBox;
    Label62: TLabel;
    Label63: TLabel;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    GroupBox22: TGroupBox;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    GroupBox23: TGroupBox;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    DBEdit43: TDBEdit;
    ArqCarta1Aviso: TFilenameEdit;
    DBEdit44: TDBEdit;
    ArqCarta2Aviso: TFilenameEdit;
    DBEdit45: TDBEdit;
    ArqCartaAvisoSPC: TFilenameEdit;
    GroupBox24: TGroupBox;
    DBCheckBox30: TDBCheckBox;
    DBCheckBox32: TDBCheckBox;
    DBCheckBox33: TDBCheckBox;
    procedure wzPageBDEnterPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure wzPageBDExitPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure btIrMeuComputadorClick(Sender: TObject);
    procedure DBShellListViewChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure JvWizardCancelButtonClick(Sender: TObject);
    procedure JvWizardFinishButtonClick(Sender: TObject);
    procedure wzPageScriptsEnterPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure MemoChange(Sender: TObject);
    procedure cboAcoesChange(Sender: TObject);
    procedure btExeuctarScriptsClick(Sender: TObject);
    function  ExecutaSQL(ItemIndex, Vez : integer; Lista : TFileListBox)  : boolean ;
    procedure wzEmpresaCancelButtonClick(Sender: TObject;
      var Stop: Boolean);
    procedure wzEmpresaEnterPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure wzEmpresaExitPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure DBImage1DblClick(Sender: TObject);
    procedure SQLEmpresaBeforePost(DataSet: TDataSet);
    procedure wzUsuarioEnterPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure btInserirUsuarioClick(Sender: TObject);
    procedure wzTerminaisEnterPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure wzTerminaisExitPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure lblLinkHelpOnLineMouseEnter(Sender: TObject);
    procedure lblLinkHelpOnLineMouseLeave(Sender: TObject);
    procedure lblLinkHelpOnLineClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SQLUsuarioBeforePost(DataSet: TDataSet);
    procedure SQLTerminalAfterOpen(DataSet: TDataSet);
    procedure SQLTerminalBeforePost(DataSet: TDataSet);
    procedure SQLTerminalNewRecord(DataSet: TDataSet);
    procedure wzCompras1BackButtonClick(
      Sender: TObject; var Stop: Boolean);
    procedure wzCompras1EnterPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure wzCompras1ExitPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure ComboOperacaoEntradaCloseUp(Sender: TObject);
    procedure ComboOperacaoEntradaDropDown(Sender: TObject);
    procedure wzVendas1BackButtonClick(Sender: TObject;
      var Stop: Boolean);
    procedure wzVendas1EnterPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure wzVendas1ExitPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure wzVendas2ExitPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure wzConfigGeralExitPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure wzConfigGeralBackButtonClick(Sender: TObject;
      var Stop: Boolean);
    procedure wzConfigGeralEnterPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure wzInventarioBackButtonClick(
      Sender: TObject; var Stop: Boolean);
    procedure wzInventarioEnterPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure wzInventarioExitPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure wzBoasVindasEnterPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure wzCadastroEcfEnterPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure wzCadastroEcfBackButtonClick(Sender: TObject;
      var Stop: Boolean);
    procedure wzCadastroEcfExitPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure SQLCadEcfBeforePost(DataSet: TDataSet);
    procedure SQLCadEcfAfterPost(DataSet: TDataSet);
    procedure DBNavigatorECFClick(Sender: TObject; Button: TNavigateBtn);
    procedure DBShellListViewDblClick(Sender: TObject);
    procedure wzPageBDNextButtonClick(Sender: TObject; var Stop: Boolean);
    procedure wzPageScriptsNextButtonClick(Sender: TObject;
      var Stop: Boolean);
    procedure wzEmpresaNextButtonClick(Sender: TObject; var Stop: Boolean);
    procedure wzFaturamento2ExitPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure wzFaturamento2EnterPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure SpeedButton1Click(Sender: TObject);
    procedure wzCrediarioBackButtonClick(Sender: TObject;
      var Stop: Boolean);
    procedure wzCrediarioExitPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure wzCrediarioEnterPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure ArqCarta1AvisoChange(Sender: TObject);
    procedure ArqCarta2AvisoChange(Sender: TObject);
    procedure ArqCartaAvisoSPCChange(Sender: TObject);
  private
    { Private declarations }
    ArquivoBanco, PathScripts, PathRelatorios : String;
    Rodou, PodeVoltar     : Boolean;
  public
    { Public declarations }
  end;

var
  FormWizardStandard: TFormWizardStandard;
  cbBuffer : DWORD  	 = 16384;
implementation

uses DataModulo;

{$R *.dfm}

function TFormWizardStandard.ExecutaSQL(ItemIndex, Vez : integer; Lista : TFileListBox)  : boolean ;
begin
  Lista.ItemIndex := ItemIndex ;
  Application.ProcessMessages;  
  SQLScript.SQL.Clear ;
  SQLScript.SQL.LoadFromFile(Lista.FileName) ;
  try
    SQLScript.ExecSQL ;
    Memo.Lines.Add('S Q L   [ ' + IntToStr(ItemIndex+1) + ' ]') ;
    Memo.Lines.Add('---------------------') ;
    Memo.Lines.Add('Execução efetuada com sucesso') ;
    Memo.Lines.Add('') ;
    Memo.Lines.Add('') ;
    Memo.Lines.Add('') ;
    Memo.Lines.Add('') ;
    Result := true ;
  except
    on E: Exception do
      begin
        if Vez = 2 then
           begin
              Memo.Lines.Add('S Q L   [ ' + IntToStr(ItemIndex+1) + ' ]') ;
              Memo.Lines.Add('---------------------') ;
              Memo.Lines.Add(SQLScript.SQL.Text) ;
              Memo.Lines.Add('                  E R R O') ;
              Memo.Lines.Add('                  -------') ;
              Memo.Lines.Add(E.Message) ;
              Memo.Lines.Add('') ;
              Memo.Lines.Add('') ;
              Memo.Lines.Add('') ;
              Memo.Lines.Add('') ;
           end;
        Result := false ;
      end ;
  end ;
end ;

function EnumerateFunc( hwnd: HWND; hdc: HDC ; lpnr: PNetResource ): Boolean;
var
  hEnum, dwResult, dwResultEnum: DWORD;
  lpnrLocal: array[0..16384 div SizeOf(TNetResource)] of TNetResource;
  i: integer;
  cEntries : Longint;
begin
  centries := -1;

  dwResult := WNetOpenEnum(
                          RESOURCE_CONTEXT,
                          RESOURCETYPE_DISK,
                          0,
                          lpnr,
                          hEnum
                          );

  if (dwResult <> NO_ERROR) then
  begin
    result := FALSE;
    Exit;
  end;

  FillChar( lpnrLocal, cbBuffer, 0 );

  dwResultEnum := WNetEnumResource(hEnum,
                                  DWORD(cEntries),
                                  @lpnrLocal,
                                  cbBuffer);

  for i := 0 to cEntries - 1 do
  begin
    if StrPas(lpnrLocal[i].lpRemoteName) <> '' then
       FormWizardStandard.ckMicros.Items.Add( StrPas(lpnrLocal[i].lpRemoteName) );
  end;

  dwResult := WNetCloseEnum(hEnum);

  if(dwResult <> NO_ERROR) then
  begin
    result := FALSE;
  end
  else
    result :=  TRUE;
end;

function ValidaCGC(CGC: string): boolean;
var
 n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12: integer;
 d1,d2: integer;
 digitado, calculado: string;
begin
 n1:=StrToInt(CGC[1]);
 n2:=StrToInt(CGC[2]);
 n3:=StrToInt(CGC[3]);
 n4:=StrToInt(CGC[4]);  // Retira cada numero do Edit, e joda p/ variavel
 n5:=StrToInt(CGC[5]);
 n6:=StrToInt(CGC[6]);
 n7:=StrToInt(CGC[7]);
 n8:=StrToInt(CGC[8]);
 n9:=StrToInt(CGC[9]);
 n10:=StrToInt(CGC[10]);
 n11:=StrToInt(CGC[11]);
 n12:=StrToInt(CGC[12]);
 d1:=n12*2+n11*3+n10*4+n9*5+n8*6+n7*7+n6*8+n5*9+n4*2+n3*3+n2*4+n1*5;
 d1:=11-(d1 mod 11);
 if d1>=10 then d1:=0;
 d2:=d1*2+n12*3+n11*4+n10*5+n9*6+n8*7+n7*8+n6*9+n5*2+n4*3+n3*4+n2*5+n1*6;
 d2:=11-(d2 mod 11);
 if d2>=10 then d2:=0;
 calculado:=inttostr(d1)+inttostr(d2);
 digitado:=CGC[13]+CGC[14];
 if calculado=digitado then
   ValidaCGC:=true
  else
   ValidaCGC:=false;
end;

procedure Informa(Texto : string);
begin
    Application.MessageBox(Pchar(Texto),'Atenção',MB_ICONINFORMATION + MB_SYSTEMMODAL + MB_SETFOREGROUND);
end;

function Pergunta(Texto : string): Boolean;
begin
    Result := Application.MessageBox(Pchar(Texto),'Atenção',MB_YESNO + MB_ICONQUESTION + MB_SYSTEMMODAL + MB_SETFOREGROUND) = idYes;
end;

procedure TFormWizardStandard.wzPageBDEnterPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
var
  Params : TStringList;
  I, UltimoDir : Integer;
  Diretorios   : TStringList;
  ERede        : String;
begin
   if PodeVoltar then
      begin
         ShowMessage('não pode voltar');
         Abort;
      end;

    if ArquivoBanco = '' then
       begin
          Params := TStringList.Create;
          Session.GetAliasParams('UnitGestao', Params);
          for I := 0 to Params.Count -1 do
             if Pos('SERVER NAME=', Params.Strings[I]) > 0 then
                begin
                  ArquivoBanco := Copy(Params.Strings[I], 13, Length(Params.Strings[I]));
                  Break;
                end;
       end;

    if Diretorios = Nil then
       Diretorios := TStringList.Create;

    UltimoDir := 0;
    for I := Length(ArquivoBanco) downto 0 do
        begin
           if (ArquivoBanco[I] = ':') and (ArquivoBanco[2] <> ':') then
              if (I > 2) and (Pos(':', Diretorios.Text) = 0) then
                 Diretorios.Add(Copy(ArquivoBanco, I - 1, 2))
              else
                 Diretorios.Add('\\' + Copy(ArquivoBanco, 0, I-1) + '\')
           else
              if I = 0 then
                 Diretorios.Add(ExtractFileDrive(ArquivoBanco));

           if ArquivoBanco[I] = '\' then
              Begin
                 if UltimoDir = 0 then
                    Diretorios.Add(Copy(ArquivoBanco, I + 1, Length(ArquivoBanco) - (I +1)))
                 else
                    Diretorios.Add(Copy(ArquivoBanco, I + 1, UltimoDir - (I +1)));

                 UltimoDir := I;
              end;
        end;

    I := Diretorios.Count -1;

    while I >=  0 do
        begin
          if I = Diretorios.Count - 1 then
             DBShellTreeView.Root := ExtractFilePath(Diretorios.Strings[I])
          else
             for UltimoDir := 0 to DBShellTreeView.Selected.Count - 1 do
                 begin
                    if (Pos('\\', DBShellTreeView.Root) > 0) and (DBShellTreeView.Selected.Level < 1) then
                       ERede := ':'
                    else
                       ERede := '';

                    if (DBShellTreeView.Selected.Item[UltimoDir].Text + ERede) = Diretorios.Strings[I] then
                       begin
                          DBShellTreeView.Selected.Item[UltimoDir].Selected := True;
                          DBShellTreeView.Selected.Expand(False);
                          Break;
                       end;
                 end;
          I := I - 1;
        end;

    for I := 0 to DBShellListView.Items.Count -1 do
       if TShellFolder(DBShellListView.Items.Item[I]).DisplayName = ExtractFileName(ArquivoBanco) then
          begin
             DBShellListView.SetFocus;
             DBShellListView.Items.Item[I].Selected := True;
             Break;
          end;
end;

procedure TFormWizardStandard.wzPageBDExitPage(Sender: TObject;
  const Page: TJvWizardCustomPage);
Var
 Params : TStringList;
 I      : Integer;
 Servidor : Boolean;
begin
   if Page.PageIndex < wzPageBD.PageIndex then
      exit;

   if ArquivoBanco = '' then
      begin
         Application.MessageBox('Você deve escolher um Arquivo de Banco de Dados.',
                                'Atenção', MB_OK + MB_SETFOREGROUND + MB_SYSTEMMODAL+ MB_ICONINFORMATION);
         Abort;
      end;

   if not FileExists(ArquivoBanco) then
      begin
         Application.MessageBox('Informe um Arquivo de Banco de Dados Válido.',
                                'Arquivo não existe', MB_OK + MB_SETFOREGROUND + MB_SYSTEMMODAL+ MB_ICONINFORMATION);
         Abort;
      end;

   if UpperCase(ExtractFileExt(ArquivoBanco)) <> '.GDB' then
      begin
         Application.MessageBox('A Extensão do Arquivo não corresponde a extensão requerida "GDB".',
                                'Extensão Incorreta', MB_OK + MB_SETFOREGROUND + MB_SYSTEMMODAL+ MB_ICONINFORMATION);
         Abort;
      end;

  if Application.MessageBox(Pchar('Tem certeza que deseja modificar o banco de dados ?' + #13'A ATW não se responsabiliza pelo uso desta rotina!'),'Atenção',MB_YESNO + MB_SYSTEMMODAL + MB_ICONQUESTION + MB_SETFOREGROUND) = IdYes then
    begin
          if Pos('\\', ArquivoBanco) > 0 then
             begin
                ArquivoBanco := AnsiReplaceStr(ArquivoBanco, '\\', '');
                Servidor     := False;
                for I := 1 to Length(ArquivoBanco)-1 do
                   begin
                      if (ArquivoBanco[I] = '\') then
                         if Servidor then
                            begin
                               ArquivoBanco[I] := '@';
                               Break;
                            end
                         else
                            begin
                               ArquivoBanco[I] := ':';
                               Servidor        := True;
                            end;
                   end;
             end;
          ArquivoBanco := AnsiReplaceStr(ArquivoBanco, '@', ':\');

          Params := TStringList.Create;
          Params.Add('SERVER NAME=' + ArquivoBanco);
          DM.Database.Close;
          DM.Database.Session.ModifyAlias('UnitGestao',Params);
          DM.Database.Session.SaveConfigFile;
          try
            DM.Database.Open;
          except
            on E:Exception do
               Application.MessageBox(Pchar('Ocorreu um erro ao tentar salvar a configuração.' + #13 + E.message),'Erro',MB_ICONERROR + MB_SYSTEMMODAL + MB_SETFOREGROUND);
          end;
    end;

    DM.Database.Open;
end;

procedure TFormWizardStandard.btIrMeuComputadorClick(Sender: TObject);
begin
   case TWinControl(Sender).Tag of
      1 : DBShellTreeView.Root := 'rfMyComputer';
      2 : DBShellTreeView.Root := 'rfDesktop';
      3 : DBShellTreeView.Root := 'rfNetwork';
   end;
end;

procedure TFormWizardStandard.DBShellListViewChange(Sender: TObject;
  Item: TListItem; Change: TItemChange);
begin
   if DBShellListView.SelectedFolder <> Nil then
      ArquivoBanco := DBShellListView.SelectedFolder.PathName;
end;

procedure TFormWizardStandard.JvWizardCancelButtonClick(Sender: TObject);
begin
   Close;
end;

procedure TFormWizardStandard.JvWizardFinishButtonClick(Sender: TObject);
begin
   if JvWizard.ActivePage <> wzFinal then
      begin
        if Pergunta('Deseja Sair?') then
           Close;
      end
   else
      Close;
end;

procedure TFormWizardStandard.wzPageScriptsEnterPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
Var I : Integer;
    Servidor : Boolean;

begin
   JvgPageControlScripts.ActivePage := TabSheetScripts;

   TabSheetScriptsErros.TabVisible  := Memo.Lines.Count > 0;

   BrowseForFolderDialog.Directory := '';

   PathScripts := ArquivoBanco;

   if PathScripts[2] <> ':' then
      begin
        for I := 1 to length(PathScripts)-1 do
            if PathScripts[I] = ':' then
               if Servidor then
                  begin
                    PathScripts[I] := ' ';
                    Break;
                  end
               else
                  begin
                     PathScripts[I] := '\';
                     Servidor        := True;
                  end;

        PathScripts := '\\' + PathScripts;
        PathScripts := AnsiReplaceStr(PathScripts, ' ', '');
      end;

   SetCurrentDir(ExtractFilePath(PathScripts));
   SetCurrentDir('..');
   if DirectoryExists(GetCurrentDir + '\Scripts') then
      PathScripts := GetCurrentDir + '\Scripts'
   else
      BrowseForFolderDialog.Execute;

   if DirectoryExists(GetCurrentDir + '\Relatorios') then
      PathRelatorios := GetCurrentDir + '\Relatorios';

   if BrowseForFolderDialog.Directory <> '' then
       PathScripts := BrowseForFolderDialog.Directory;

   BrowseForFolderDialog.Directory := '';

   if DirectoryExists(PathScripts) then
      ListaSQL.Directory := PathScripts;

   SetCurrentDir(ExtractFilePath(Application.ExeName));

   Application.HintHidePause := 10000;
end;

procedure TFormWizardStandard.MemoChange(Sender: TObject);
begin
   TabSheetScriptsErros.TabVisible := Memo.Lines.Count > 0;
end;

procedure TFormWizardStandard.cboAcoesChange(Sender: TObject);
begin
   case cboAcoes.ItemIndex of
      0 : ListaSQL.Mask := '*' + AnsiReplaceStr(edOutrsoFiltros.Text, ' ', '*') + '*.SQL';
      1 : ListaSQL.Mask := 'Adiciona*' + AnsiReplaceStr(edOutrsoFiltros.Text, ' ', '*') + '*.SQL';
      2 : ListaSQL.Mask := 'Atualiza*' + AnsiReplaceStr(edOutrsoFiltros.Text, ' ', '*') + '*.SQL';
      3 : ListaSQL.Mask := 'Deleta*' + AnsiReplaceStr(edOutrsoFiltros.Text, ' ', '*') + '*.SQL';
      4 : ListaSQL.Mask := 'Criar Tabela*' + AnsiReplaceStr(edOutrsoFiltros.Text, ' ', '*') + '*.SQL';
   end;
end;

procedure TFormWizardStandard.btExeuctarScriptsClick(Sender: TObject);
var
    I, X : Integer;
begin
     Memo.Clear;
     Progress.Max      := ListaSQL.Items.Count * 2;
     Progress.Position := 0;
     Application.ProcessMessages;

     DM.Database.Close;
     DM.Database.Open;

     for X := 1 to 2 do
        begin
          Application.ProcessMessages;
          Memo.Lines.Clear;
          for I := 0 to ListaSQL.Items.Count-1 do
          begin
            Progress.Position := Progress.Position + 1;
            ExecutaSQL(I, X, ListaSQL);
            Progress.Update;
            Application.ProcessMessages;
          end;
          if X = 1 then
            begin
              DM.Database.Close;
              DM.Database.Open;
            end;
        end;
     try
       Memo.Lines.SaveToFile('Log.txt');
     except
     end;
     
     Progress.Position := 0;
     Rodou := True;
end;

procedure TFormWizardStandard.wzEmpresaCancelButtonClick(
  Sender: TObject; var Stop: Boolean);
begin
  if SQLEmpresa.State in dsEditModes then
     SQLEmpresa.Cancel;
end;

procedure TFormWizardStandard.wzEmpresaEnterPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
begin
   if not DM.Database.Connected then DM.Database.Open;

   if not SQLEmpresa.Active then SQLEmpresa.Active := True;

   if SQLEmpresa.IsEmpty then
      SQLEmpresa.Append;
end;

procedure TFormWizardStandard.wzEmpresaExitPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
begin
   if SQLEmpresa.State in dsEditModes then
      SQLEmpresa.Post;
end;

procedure TFormWizardStandard.DBImage1DblClick(Sender: TObject);
begin
   if OpenPictureDialog.Execute then
      if OpenPictureDialog.FileName <> '' then
         begin
           if not (SQLEmpresa.State in dsEditModes) then
              SQLEmpresa.Edit;
           SQLEmpresaEMPRBLOGOTIPO.LoadFromFile(OpenPictureDialog.FileName);
         end;
end;

procedure TFormWizardStandard.SQLEmpresaBeforePost(DataSet: TDataSet);
Var I : Integer;
begin
    for I := 0 to SQLEmpresa.FieldCount - 1 do
        begin
          if (SQLEmpresa.Fields.Fields[I].Tag = 1) and (SQLEmpresa.Fields.Fields[I].IsNull) then
             begin
               SQLEmpresa.Fields.Fields[I].FocusControl;
               Informa('O campo ''' + SQLEmpresa.Fields.Fields[I].DisplayLabel + ''' deve ser preenchido.');
               Abort;
             end;
        end;

    if not ValidaCGC(SQLEmpresaEMPRA14CGC.AsString) then
       begin
          SQLEmpresaEMPRA14CGC.FocusControl;
          Informa('CNPJ invalido!!! Verifique e tente novamente.');
          Abort;
       end;

    SQLGeral.Close;
    SQLGeral.SQL.Text := 'select Max(EMPRICOD) as ProximoCodigo from EMPRESA';
    SQLGeral.Open;

    SQLEmpresaEMPRICOD.AsInteger := SQLGeral.FieldByName('ProximoCodigo').AsInteger + 1;
    SQLEmpresaEMPRCMATRIZFILIAL.AsString := 'M';
    SQLEmpresaEMPRCFISJURID.AsString := 'J';
    SQLEmpresaPENDENTE.AsString := 'S';
    SQLEmpresaREGISTRO.AsDateTime := Now;
end;

procedure TFormWizardStandard.wzUsuarioEnterPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
begin
   if not SQLUsuario.Active then SQLUsuario.Active := True;
end;

procedure TFormWizardStandard.JvDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
Var Senha : String;
    I : Integer;
begin
    if Column.FieldName = 'USUAA5SENHA' then
       begin
         Senha := '';
         for I := 0 to Length(Column.Field.AsString) - 1 do
             Senha :=  Senha + '* ';
         TDBGrid(Sender).Canvas.TextOut(Rect.Left, Rect.Top, Senha);
       end;
end;

procedure TFormWizardStandard.edUsuarioKeyPress(Sender: TObject;
  var Key: Char);
begin
   btInserirUsuario.Enabled := (Length(edUsuario.Text) > 4) and
                               (Length(edSenha.Text) > 4);
end;

procedure TFormWizardStandard.btInserirUsuarioClick(Sender: TObject);
begin
   if TButton(Sender).Enabled then
      begin
        SQLUsuario.Append;
        SQLUsuario.Post;
        SQLUsuario.Close;
        SQLUsuario.Open;

        edUsuario.Text    := '';
        edEmail.Text      := '';
        edSenha.Text      := '';
        chkMaster.Checked := False;

        btInserirUsuario.Enabled := False;
      end;
end;

procedure TFormWizardStandard.wzTerminaisEnterPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
var
  Myhwnd: HWND;
  Myhdc : HDC;
  Mylpnr: PNetResource;
begin
    ckMicros.Items.Clear;
    Mylpnr := nil;
    Myhwnd := Handle;
    Myhdc  := Canvas.Handle;
    EnumerateFunc( Myhwnd, Myhdc , Mylpnr );

    SQLTerminal.Close;
    SQLTerminal.Open;
end;

procedure TFormWizardStandard.wzTerminaisExitPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
Var I, X : Integer;
begin
   for X := 0 to ckMicros.Items.Count - 1 do
      if ckMicros.Checked[X] then
         begin
           if not SQLTerminal.Locate('TERMA60NOMECOMPUT', copy(ckMicros.Items.Strings[X],3,length(ckMicros.Items.Strings[X])), [loCaseInsensitive]) then
              begin
                 SQLTerminal.Append;
                 SQLTerminal.FieldByName('TERMA60NOMECOMPUT').AsString := copy(ckMicros.Items.Strings[X],3,length(ckMicros.Items.Strings[X]));
                 SQLTerminal.FieldByName('TERMA60DESCR').AsString      := copy(ckMicros.Items.Strings[X],3,length(ckMicros.Items.Strings[X]));
                 SQLTerminal.Post;
              end;
         end
      else
         begin
           if SQLTerminal.Locate('TERMA60NOMECOMPUT', copy(ckMicros.Items.Strings[X],3,length(ckMicros.Items.Strings[X])), [loCaseInsensitive]) then
              SQLTerminal.Delete;
         end;

   SQLTerminal.Close;
end;
procedure TFormWizardStandard.lblLinkHelpOnLineMouseEnter(Sender: TObject);
begin
    TLabel(Sender).Font.Color := clBlue;
    TLabel(Sender).Font.Style := [fsUnderline];
end;

procedure TFormWizardStandard.lblLinkHelpOnLineMouseLeave(Sender: TObject);
begin
    TLabel(Sender).Font.Color := clBlack;
    TLabel(Sender).Font.Style := [];
end;



procedure TFormWizardStandard.lblLinkHelpOnLineClick(Sender: TObject);
begin
    ShellExecute(0,'open', 'http://www.atwnet.com.br/help', '', '', SW_SHOWNORMAL);
end;

Type
   TPCustomPanel = class(TCustomPanel);

procedure TFormWizardStandard.FormCreate(Sender: TObject);
Var i : Integer;
begin
  for I := 0 to DBNavigatorECF.ControlCount-1 do
      if DBNavigatorECF.Controls[I] is TNavButton then
         begin
            TNavButton(DBNavigatorECF.Controls[I]).Caption := TNavButton(DBNavigatorECF.Controls[I]).Hint;
         end;

  TPCustomPanel(DBNavigatorECF).ParentColor := True;

  PodeVoltar := False;

  Rodou := False;

  DM.Database.Close;
  DM.Database.Open;

  Application.Title := Caption;
end;

procedure TFormWizardStandard.SQLUsuarioBeforePost(DataSet: TDataSet);
begin
    SQLGeral.Close;
    SQLGeral.SQL.Text := 'select Max(USUAICOD) as ProximoCodigo from Usuario';
    SQLGeral.Open;

    SQLUsuarioUSUAICOD.AsInteger := SQLGeral.FieldByName('ProximoCodigo').AsInteger + 1;

    SQLUsuarioUSUAA60LOGIN.AsString := edUsuario.Text;
    SQLUsuarioUSUAA5SENHA.AsString  := edSenha.Text;
    SQLUsuarioUSUAA60EMAIL.AsString := edEmail.Text;
    SQLUsuarioPENDENTE.AsString := 'S';
    SQLUsuarioREGISTRO.AsDateTime := Now;
    if chkMaster.Checked then
       SQLUsuarioUSUACUSERMASTER.AsString := 'S'
    else
       SQLUsuarioUSUACUSERMASTER.AsString := 'N';
end;

procedure TFormWizardStandard.SQLTerminalAfterOpen(DataSet: TDataSet);
begin
   SQLTerminal.First;
   while not SQLTerminal.Eof do
      begin
         if ckMicros.Items.IndexOf('\\' + SQLTerminal.FieldByName('TERMA60NOMECOMPUT').AsString) > -1 then
            ckMicros.Checked[ckMicros.Items.IndexOf('\\' + SQLTerminal.FieldByName('TERMA60NOMECOMPUT').AsString)] := True;
         SQLTerminal.Next;
      end;
end;

procedure TFormWizardStandard.SQLTerminalBeforePost(DataSet: TDataSet);
begin
     SQLGeral.Close;
     SQLGeral.SQL.Text := 'select Max(TERMICOD) as Novo from TERMINAL';
     SQLGeral.Open;

     SQLTerminal.FieldByName('TERMICOD').AsInteger := SQLGeral.FieldByName('Novo').AsInteger + 1;
     SQLTerminal.FieldByName('REGISTRO').AsDateTime := Now;
     SQLTerminal.FieldByName('PENDENTE').AsString   := 'S';
end;

procedure TFormWizardStandard.SQLTerminalNewRecord(DataSet: TDataSet);
begin
  SQLTerminal.FieldByName('TERMCATIVO').Value            := 'I';
  SQLTerminal.FieldByName('TERMCTIPO').AsString          := 'C';
  SQLTerminal.FieldByName('TERMINRODECQUANT').AsString   := '2';
  SQLTerminal.FieldByName('TERMCIMPPREVENDA').AsString   := 'N';
  SQLTerminal.FieldByName('TERMCIMPBARRASPED').AsString  := 'N';
  SQLTerminal.FieldByName('TERMCAUTENTRFIMCUP').AsString := 'S';
  SQLTerminal.FieldByName('TERMCHIDECLIVENDPL').AsString := 'N';
  SQLTerminal.FieldByName('TERMCCONFFECHCUPOM').AsString := 'N';
  SQLTerminal.FieldByName('TERMCIMPCONFDIVIDA').AsString := 'S';
  SQLTerminal.FieldByName('TERMCIMPRDADINTCUP').AsString := 'S';
  SQLTerminal.FieldByName('TERMCCONFIMPCARNE').AsString  := 'N';
  SQLTerminal.FieldByName('TERMCINFDADOCLIPAD').AsString := 'N';
  SQLTerminal.FieldByName('TERMCMOSTRAIDCUPOM').AsString := 'N';
  SQLTerminal.FieldByName('TERMCMOVESTOQUE').AsString    := 'S';
  SQLTerminal.FieldByName('EMPRICOD').AsString           := SQLEmpresaEMPRICOD.AsString;
end;

procedure TFormWizardStandard.wzCompras1BackButtonClick(
  Sender: TObject; var Stop: Boolean);
begin
   if SQLConfigCompra.State in dsEditModes then
      SQLConfigCompra.Cancel;
end;

procedure TFormWizardStandard.wzCompras1EnterPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
begin
   if not SQLOperacaoEstoqueSaida.Active   then SQLOperacaoEstoqueSaida.Active   := True;
   if not SQLOperacaoEstoqueEntrada.Active then SQLOperacaoEstoqueEntrada.Active := True;
   if not SQLPortador.Active               then SQLPortador.Active               := True;
   if not SQLTipoDocumento.Active          then SQLTipoDocumento.Active          := True;

   if not SQLConfigCompra.Active           then SQLConfigCompra.Active           := True;

   if SQLConfigCompra.IsEmpty then
      SQLConfigCompra.Append
   else
      SQLConfigCompra.Edit;
end;

procedure TFormWizardStandard.wzCompras1ExitPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
begin
   if SQLConfigCompra.State in dsEditModes then
      SQLConfigCompra.Post;

   SQLConfigCompra.Close;
   SQLOperacaoEstoqueSaida.Close;
   SQLOperacaoEstoqueEntrada.Close;
   SQLPortador.Close;
   SQLTipoDocumento.Close;
end;

procedure TFormWizardStandard.ComboOperacaoEntradaCloseUp(Sender: TObject);
begin
   TControl(Sender).ShowHint := True;
end;

procedure TFormWizardStandard.ComboOperacaoEntradaDropDown(
  Sender: TObject);
begin
   TControl(Sender).ShowHint := False;
end;

procedure TFormWizardStandard.wzVendas1BackButtonClick(
  Sender: TObject; var Stop: Boolean);
begin
  if SQLConfigVenda.State in dsEditModes then
     SQLConfigVenda.Cancel;
end;

procedure TFormWizardStandard.wzVendas1EnterPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
begin
  if not SQLConfigVenda.Active then SQLConfigVenda.Active := True;
  if not SQLOperacaoEstoqueSaida.Active then SQLOperacaoEstoqueSaida.Active := True;
  if not SQLOperacaoEstoqueEntrada.Active then SQLOperacaoEstoqueEntrada.Active := True;

  if SQLConfigVenda.IsEmpty then
     SQLConfigVenda.Append
  else
     SQLConfigVenda.Edit;

end;

procedure TFormWizardStandard.wzVendas1ExitPage(
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
         JvWizard.ActivePage := wzConfigGeral;
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

    SQLConfigVenda.Close;
end;

procedure TFormWizardStandard.wzVendas2ExitPage(
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

    SQLConfigVenda.Close;
end;

procedure TFormWizardStandard.wzConfigGeralExitPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
begin
   if SQLConfigGeral.State in dsEditModes then
      SQLConfigGeral.Post;

   Application.HintHidePause := 2500;

   SQLConfigGeral.Close;
end;

procedure TFormWizardStandard.wzConfigGeralBackButtonClick(
  Sender: TObject; var Stop: Boolean);
begin
    if SQLConfigGeral.State in dsEditModes then
     SQLConfigGeral.Cancel;
end;

procedure TFormWizardStandard.wzConfigGeralEnterPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
begin
   if not SQLConfigGeral.Active     then SQLConfigGeral.Active := True;

   if SQLConfigGeral.RecordCount = 0 then
      SQLConfigGeral.Append
   else
      SQLConfigGeral.Edit;

   Application.HintHidePause := 10000;
end;

procedure TFormWizardStandard.wzInventarioBackButtonClick(
  Sender: TObject; var Stop: Boolean);
begin
   if SQLConfigInventario.State in dsEditModes then
      SQLConfigInventario.Cancel;
end;

procedure TFormWizardStandard.wzInventarioEnterPage(
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

procedure TFormWizardStandard.wzInventarioExitPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
begin
   if SQLConfigInventario.State in dsEditModes then
      SQLConfigInventario.Post;

   SQLConfigInventario.Close;
end;

procedure TFormWizardStandard.wzBoasVindasEnterPage(Sender: TObject;
  const Page: TJvWizardCustomPage);
begin
   if PodeVoltar then
      begin
         ShowMessage('não pode voltar');
         Abort;
      end;
end;

procedure TFormWizardStandard.wzCadastroEcfEnterPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
begin
    if not SQLCadEcf.Active then SQLCadEcf.Active := True; 
end;

procedure TFormWizardStandard.wzCadastroEcfBackButtonClick(
  Sender: TObject; var Stop: Boolean);   
begin
    SQLCadEcf.Cancel;   
end;

procedure TFormWizardStandard.wzCadastroEcfExitPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
begin
    SQLCadEcf.Cancel;
end;

procedure TFormWizardStandard.SQLCadEcfBeforePost(DataSet: TDataSet);
begin
  if not SQLEmpresa.Active then SQLEmpresa.Active := True;
  if not SQLConfigGeral.Active then SQLConfigGeral.Active  := True;
  if not SQLConfigGeralCFGEIEMPPADRAO.IsNull then
     SQLEmpresa.Locate('EMPRICOD', SQLConfigGeralCFGEIEMPPADRAO.AsString, [loCaseInsensitive]);
  DM.EmpresaCorrente := SQLEmpresaEMPRICOD.AsInteger;
  SQLCadEcfEMPRICOD.AsInteger := SQLEmpresaEMPRICOD.AsInteger;
  SQLCadEcfPENDENTE.AsString  := 'S';
  SQLCadEcfREGISTRO.AsDateTime:= Now;
  DM.CodigoAutomatico('Ecf', DSSQLCadEcf, SQLCadEcf, 2,0);

  SQLEmpresa.Close;
  SQLConfigGeral.Close;
end;

procedure TFormWizardStandard.SQLCadEcfAfterPost(DataSet: TDataSet);
begin
  SQLCadEcf.Close;
  SQLCadEcf.Open;
end;

procedure TFormWizardStandard.DBNavigatorECFClick(Sender: TObject;
  Button: TNavigateBtn);
begin
   SQLCadEcfECFA30DESCR.FocusControl;
end;

procedure TFormWizardStandard.DBShellListViewDblClick(Sender: TObject);
Var Stop : Boolean;
begin
   wzPageBDNextButtonClick(wzPageBD,Stop);
   JvWizard.SelectNextPage;
end;

procedure TFormWizardStandard.wzPageBDNextButtonClick(Sender: TObject;
  var Stop: Boolean);
begin
   wzPageScripts.EnableJumpToPage := True;
end;

procedure TFormWizardStandard.wzPageScriptsNextButtonClick(Sender: TObject;
  var Stop: Boolean);
begin
   Application.HintHidePause := 2500;
   if not Rodou then
      begin
         if Application.MessageBox('As atualizações devem ser Realizadas antes de prosseguir.' + #13 +
                                   'Deseja Executar agora?',
                                   'Atenção', MB_YESNO + MB_ICONQUESTION + MB_SETFOREGROUND + MB_SYSTEMMODAL) = idYes then
            btExeuctarScripts.Click
         else
            Abort;
      end;

  wzBoasVindas.EnableJumpToPage  := False;
  wzPageBD.EnableJumpToPage      := False;
  wzPageScripts.EnableJumpToPage := False;
  wzEmpresa.EnableJumpToPage     := True;
end;

procedure TFormWizardStandard.wzEmpresaNextButtonClick(Sender: TObject;
  var Stop: Boolean);
begin
   wzUsuario.EnableJumpToPage      := True;
   wzTerminais.EnableJumpToPage    := True;
   wzCompras1.EnableJumpToPage     := True;
   wzCompras2.EnableJumpToPage     := True;
   wzVendas1.EnableJumpToPage      := True;
   wzVendas2.EnableJumpToPage      := True;
   wzFaturamento1.EnableJumpToPage := True;
   wzFaturamento2.EnableJumpToPage := True;
   wzConfigGeral.EnableJumpToPage  := True;
   wzInventario.EnableJumpToPage   := True;
   wzCadastroEcf.EnableJumpToPage  := True;
   wzCrediario.EnableJumpToPage    := True;
end;

procedure TFormWizardStandard.wzFaturamento2ExitPage(Sender: TObject;
  const Page: TJvWizardCustomPage);
begin
    if SQLConfigVenda.State in dsEditModes then
       SQLConfigVenda.Post;

    SQLConfigVenda.Close;
end;

procedure TFormWizardStandard.wzFaturamento2EnterPage(Sender: TObject;
  const Page: TJvWizardCustomPage);
begin
  if not SQLConfigVenda.Active then SQLConfigVenda.Active := True;
  if not SQLTipoDocumento.Active then SQLTipoDocumento.Active := True;
  if not SQLPortador.Active then SQLPortador.Active := True;
  if not SQLICMS.Active then SQLICMS.Active := True;

  if SQLConfigVenda.IsEmpty then
     SQLConfigVenda.Append
  else
     SQLConfigVenda.Edit;
end;

procedure TFormWizardStandard.SpeedButton1Click(Sender: TObject);
begin
   BrowseForFolderDialog.StatusText := 'Informe o diretório onde se encontra os relatórios';
   BrowseForFolderDialog.Execute;
   if BrowseForFolderDialog.Directory <> '' then
      begin
         PathScripts := BrowseForFolderDialog.Directory;
         SQLConfigGeralCFGEA255PATHREPORT.Value := PathScripts;
      end;
end;

procedure TFormWizardStandard.wzCrediarioBackButtonClick(
  Sender: TObject; var Stop: Boolean);
begin
   SQLConfigCrediario.Cancel;
end;

procedure TFormWizardStandard.wzCrediarioExitPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
begin
   if SQLConfigCrediario.State in dsEditModes then
      SQLConfigCrediario.Post;

   SQLConfigCrediario.Close;
end;

procedure TFormWizardStandard.wzCrediarioEnterPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
begin
   if not SQLConfigCrediario.Active then SQLConfigCrediario.Active := True;

   if SQLConfigCrediario.IsEmpty then
      SQLConfigCrediario.Append
   else
      SQLConfigCrediario.Edit;
end;

procedure TFormWizardStandard.ArqCarta1AvisoChange(Sender: TObject);
begin
  SQLConfigCrediarioCFCRA255PATHCART1A.Value := ArqCarta1Aviso.Text ;
end;

procedure TFormWizardStandard.ArqCarta2AvisoChange(Sender: TObject);
begin
  SQLConfigCrediarioCFCRA255PATHCART2A.Value := ArqCarta2Aviso.Text ;
end;

procedure TFormWizardStandard.ArqCartaAvisoSPCChange(Sender: TObject);
begin
  SQLConfigCrediarioCFCRA255PATHCART3A.Value := ArqCartaAvisoSPC.Text ;
end;

end.
