unit TelaEnvioCartasAviso;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls, RXCtrls,
  ComCtrls, Db, DBTables, RxQuery, Grids, DBGrids, RxGIF, Menus, Mask,
  ToolEdit, ppDB, ppComm, ppRelatv, ppDBPipe, ppDBBDE, ppPrnabl, ppClass,
  ppStrtch, ppRichTx, ppCache, ppBands, ppProd, ppReport, ppCtrls, ppVar,
  OleCtrls, UCrpe32, Variants, Varsys, Placemnt, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaEnvioCartasAviso = class(TFormTelaGeralTEMPLATE)
    Button1: TRxSpeedButton;
    Button2: TRxSpeedButton;
    Button3: TRxSpeedButton;
    PagePrincipal: TPageControl;
    TabPrimeiroAviso: TTabSheet;
    TabSegundoAviso: TTabSheet;
    TabAvisoSPC: TTabSheet;
    SQLContasReceber: TRxQuery;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberEMPRICODULTREC: TIntegerField;
    SQLContasReceberTERMICOD: TIntegerField;
    SQLContasReceberCTRCICOD: TIntegerField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCN2VLR: TBCDField;
    SQLContasReceberCTRCN2DESCFIN: TBCDField;
    SQLContasReceberNUMEICOD: TIntegerField;
    SQLContasReceberPORTICOD: TIntegerField;
    SQLContasReceberCTRCN2TXJURO: TBCDField;
    SQLContasReceberCTRCN2TXMULTA: TBCDField;
    SQLContasReceberCTRCDULTREC: TDateTimeField;
    SQLContasReceberCTRCN2TOTREC: TBCDField;
    SQLContasReceberCTRCN2TOTJUROREC: TBCDField;
    SQLContasReceberCTRCN2TOTMULTAREC: TBCDField;
    SQLContasReceberCTRCN2TOTDESCREC: TBCDField;
    SQLContasReceberPENDENTE: TStringField;
    SQLContasReceberREGISTRO: TDateTimeField;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLCartaPrimeiroAviso: TRxQuery;
    SQLCartaSegundoAviso: TRxQuery;
    SQLCartaAvisoSPC: TRxQuery;
    DSSQLSegundoAviso: TDataSource;
    DSSQLAvisoSPC: TDataSource;
    SQLCartaSegundoAvisoCLIEA13ID: TStringField;
    SQLCartaSegundoAvisoCTRCA13ID: TStringField;
    SQLCartaSegundoAvisoCTRCINROPARC: TIntegerField;
    SQLCartaSegundoAvisoCTRCN2VLR: TBCDField;
    SQLCartaSegundoAvisoPENDENTE: TStringField;
    SQLCartaSegundoAvisoREGISTRO: TDateTimeField;
    SQLCartaSegundoAvisoSGAVCENVIADO: TStringField;
    SQLCartaSegundoAvisoSGAVDPROCESS: TDateTimeField;
    SQLCartaSegundoAvisoSGAVIDIASATRASO: TIntegerField;
    SQLCartaSegundoAvisoCUPOA13ID: TStringField;
    SQLCartaSegundoAvisoSGAVA60NOMECLI: TStringField;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    PopupDiversosPriAvi: TPopupMenu;
    GerarCartas: TMenuItem;
    EiquetasdeEnderecamaneto: TMenuItem;
    MarcarComoEnviado: TMenuItem;
    Label1: TLabel;
    DtBase: TDateEdit;
    Mensagem: TLabel;
    SQLCartaSegundoAvisoSGAVDVENC: TDateTimeField;
    PopupDiversosSegAvi: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    PopupDiversosAviSPC: TPopupMenu;
    MenuItem2: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    TblEtiquetas: TTable;
    SQLEtiquetas: TRxQuery;
    BatchMove: TBatchMove;
    SQLEtiquetasCLIEA13ID: TStringField;
    SQLEtiquetasCLIEA60RAZAOSOC: TStringField;
    SQLEtiquetasCLIEA60ENDRES: TStringField;
    SQLEtiquetasCLIEA60BAIRES: TStringField;
    SQLEtiquetasCLIEA60CIDRES: TStringField;
    SQLEtiquetasCLIEA2UFRES: TStringField;
    SQLEtiquetasCLIEA8CEPRES: TStringField;
    SQLContasReceberCTRCA5TIPOPADRAO: TStringField;
    LblEnviados: TLabel;
    LblPendentes: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    GerarCartasdeAvisoSPC1: TMenuItem;
    TblEtiquetasCLIEA13ID: TStringField;
    TblEtiquetasCLIEA60RAZAOSOC: TStringField;
    TblEtiquetasCLIEA60ENDRES: TStringField;
    TblEtiquetasCLIEA60BAIRES: TStringField;
    TblEtiquetasCLIEA60CIDRES: TStringField;
    TblEtiquetasCLIEA2UFRES: TStringField;
    TblEtiquetasCLIEA8CEPRES: TStringField;
    DSSQLCartaAviso: TDataSource;
    SQLCartaAviso: TRxQuery;
    SQLCartaAvisoCLIEA13ID: TStringField;
    SQLCartaAvisoNOME: TStringField;
    SQLCartaAvisoENDERECO: TStringField;
    SQLCartaAvisoBAIRRO: TStringField;
    SQLCartaAvisoCIDADE: TStringField;
    SQLCartaAvisoESTADO: TStringField;
    SQLCartaAvisoCEP: TStringField;
    ReportCartas: TppReport;
    ppDetailBand1: TppDetailBand;
    ppTexto: TppRichText;
    PipeCartaAviso: TppBDEPipeline;
    SQLCartaAvisoDATA: TStringField;
    SQLListaSPC: TRxQuery;
    BatchMoveListaSPC: TBatchMove;
    TblListaSPC: TTable;
    DatabaseTemp: TDatabase;
    SQLLimparListaSPC: TRxQuery;
    SQLGeral: TRxQuery;
    SQLDelete: TRxQuery;
    SQLListaSPCCLIEA13ID: TStringField;
    SQLListaSPCCONTRATO: TStringField;
    SQLListaSPCPARCELA: TIntegerField;
    SQLListaSPCNOME: TStringField;
    SQLListaSPCENDERECO: TStringField;
    SQLListaSPCBAIRRO: TStringField;
    SQLListaSPCCIDADE: TStringField;
    SQLListaSPCESTADO: TStringField;
    SQLListaSPCCEP: TStringField;
    SQLListaSPCMAE: TStringField;
    SQLListaSPCPAI: TStringField;
    SQLListaSPCDATANASCIMENTO: TDateTimeField;
    SQLListaSPCCPF: TStringField;
    SQLListaSPCRG: TStringField;
    SQLListaSPCVALOR: TBCDField;
    SQLListaSPCVENCTO: TDateTimeField;
    SQLListaSPCEMISSAO: TDateTimeField;
    TblListaSPCCLIEA13ID: TStringField;
    TblListaSPCCONTRATO: TStringField;
    TblListaSPCPARCELA: TIntegerField;
    TblListaSPCNOME: TStringField;
    TblListaSPCENDERECO: TStringField;
    TblListaSPCBAIRRO: TStringField;
    TblListaSPCCIDADE: TStringField;
    TblListaSPCESTADO: TStringField;
    TblListaSPCCEP: TStringField;
    TblListaSPCMAE: TStringField;
    TblListaSPCPAI: TStringField;
    TblListaSPCDATANASCIMENTO: TDateTimeField;
    TblListaSPCCPF: TStringField;
    TblListaSPCRG: TStringField;
    TblListaSPCVALOR: TBCDField;
    TblListaSPCVENCTO: TDateTimeField;
    TblListaSPCEMISSAO: TDateTimeField;
    SQLCartaAvisoCobranca: TRxQuery;
    DSSQLAvisoCobranca: TDataSource;
    SQLCartaAvisoCobrancaCLIEA13ID: TStringField;
    SQLCartaAvisoCobrancaCTRCA13ID: TStringField;
    SQLCartaAvisoCobrancaCTRCINROPARC: TIntegerField;
    SQLCartaAvisoCobrancaCUPOA13ID: TStringField;
    SQLCartaAvisoCobrancaAVCOA60NOMECLI: TStringField;
    SQLCartaAvisoCobrancaAVCOCENVIADO: TStringField;
    SQLCartaAvisoCobrancaAVCODPROCESS: TDateTimeField;
    SQLCartaAvisoCobrancaAVCODVENC: TDateTimeField;
    SQLCartaAvisoCobrancaAVCOIDIASATRASO: TIntegerField;
    Button4: TRxSpeedButton;
    TabAvisoCobranca: TTabSheet;
    DBGrid3: TDBGrid;
    SQLCartaAvisoCobrancaPENDENTE: TStringField;
    SQLCartaAvisoCobrancaREGISTRO: TDateTimeField;
    SQLCartaAvisoCobrancaCTRCN2VLR: TBCDField;
    N1: TMenuItem;
    VerTodosDocumentosAV1: TMenuItem;
    VerDocumentosEnviadosAv1: TMenuItem;
    VerDocumentosNaoEnviadosAv1: TMenuItem;
    N2: TMenuItem;
    VerTodosDocumentosAV2: TMenuItem;
    VerDocumentosEnviadosAV2: TMenuItem;
    VerDocumentosNaoEnviadosAV2: TMenuItem;
    N3: TMenuItem;
    VerTodosDocumentosAV3: TMenuItem;
    VerDocumentosEnviadosAV3: TMenuItem;
    VerDocumentosNaoEnviadosAV3: TMenuItem;
    PopupDiversosAviCobr: TPopupMenu;
    MarcarComoEnviado1: TMenuItem;
    N4: TMenuItem;
    VerTodosDocumentosAV4: TMenuItem;
    VerDocumentosEnviadosAV4: TMenuItem;
    VerDocumentosNoEnviadosAV4: TMenuItem;
    SQLCartaAvisoDATAPROCESSAMENTO: TStringField;
    ListaSPC: TCrpe;
    TblEmpresa: TTable;
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
    SQLEmpresaEMPRA20IE: TStringField;
    SQLEmpresaEMPRA11CPF: TStringField;
    SQLEmpresaEMPRA10RG: TStringField;
    SQLEmpresaEMPRA60EMAIL: TStringField;
    SQLEmpresaEMPRA60URL: TStringField;
    SQLEmpresaPENDENTE: TStringField;
    SQLEmpresaREGISTRO: TDateTimeField;
    SQLEmpresaEMPRA100INFSPC: TStringField;
    BatchMoveEmpresa: TBatchMove;
    TblEmpresaEMPRICOD: TIntegerField;
    TblEmpresaEMPRA60RAZAOSOC: TStringField;
    TblEmpresaEMPRA60NOMEFANT: TStringField;
    TblEmpresaEMPRCMATRIZFILIAL: TStringField;
    TblEmpresaEMPRA20FONE: TStringField;
    TblEmpresaEMPRA20FAX: TStringField;
    TblEmpresaEMPRA60END: TStringField;
    TblEmpresaEMPRA60BAI: TStringField;
    TblEmpresaEMPRA60CID: TStringField;
    TblEmpresaEMPRA2UF: TStringField;
    TblEmpresaEMPRA8CEP: TStringField;
    TblEmpresaEMPRCFISJURID: TStringField;
    TblEmpresaEMPRA14CGC: TStringField;
    TblEmpresaEMPRA20IE: TStringField;
    TblEmpresaEMPRA11CPF: TStringField;
    TblEmpresaEMPRA10RG: TStringField;
    TblEmpresaEMPRA60EMAIL: TStringField;
    TblEmpresaEMPRA60URL: TStringField;
    TblEmpresaPENDENTE: TStringField;
    TblEmpresaREGISTRO: TDateTimeField;
    TblEmpresaEMPRA100INFSPC: TStringField;
    PopupAvisos: TPopupMenu;
    CriarumRegistrodesteclienteemPrimeiroAviso1: TMenuItem;
    SQLListaSPCCLIECESTADOCIVIL: TStringField;
    SQLListaSPCCLIETOBS: TStringField;
    SQLListaSPCAVSPDPROCESS: TDateTimeField;
    SQLListaSPCCTRCA5TIPOPADRAO: TStringField;
    SQLListaSPCBANCA5CODCHQ: TStringField;
    SQLListaSPCCTRCA10AGENCIACHQ: TStringField;
    SQLListaSPCCTRCA15CONTACHQ: TStringField;
    SQLListaSPCCTRCA15NROCHQ: TStringField;
    SQLListaSPCALINICOD: TIntegerField;
    SQLListaSPCALINA30DESCR: TStringField;
    TblListaSPCCLIECESTADOCIVIL: TStringField;
    TblListaSPCCLIETOBS: TStringField;
    TblListaSPCAVSPDPROCESS: TDateTimeField;
    TblListaSPCCTRCA5TIPOPADRAO: TStringField;
    TblListaSPCBANCA5CODCHQ: TStringField;
    TblListaSPCCTRCA10AGENCIACHQ: TStringField;
    TblListaSPCCTRCA15CONTACHQ: TStringField;
    TblListaSPCCTRCA15NROCHQ: TStringField;
    TblListaSPCALINICOD: TIntegerField;
    TblListaSPCALINA30DESCR: TStringField;
    SQLListaSPCCLIEA60CONJUGE: TStringField;
    TblListaSPCCLIEA60CONJUGE: TStringField;
    SQLListaSPCAVSPCENVIADO: TStringField;
    TblListaSPCAVSPCENVIADO: TStringField;
    DBGrid4: TDBGrid;
    DBGridPrimeiroAviso: TDBGrid;
    SQLPrimeiroAvisoParcelas: TRxQuery;
    DSSQLPrimeiroAvisoParcelas: TDataSource;
    SQLPrimeiroAvisoParcelasCUPOA13ID: TStringField;
    SQLPrimeiroAvisoParcelasCTRCINROPARC: TIntegerField;
    SQLPrimeiroAvisoParcelasCTRCN2VLR: TBCDField;
    SQLPrimeiroAvisoParcelasPRAVDVENC: TDateTimeField;
    SQLPrimeiroAvisoParcelasPRAVIDIASATRASO: TIntegerField;
    SQLPrimeiroAvisoParcelasPRAVCENVIADO: TStringField;
    SQLPrimeiroAvisoParcelasPRAVDPROCESS: TDateTimeField;
    SQLPrimeiroAvisoParcelasCTRCA13ID: TStringField;
    SQLPrimeiroAviso: TRxQuery;
    SQLCartaPrimeiroAvisoCLIEA13ID: TStringField;
    SQLCartaPrimeiroAvisoCTRCA13ID: TStringField;
    SQLCartaPrimeiroAvisoCTRCINROPARC: TIntegerField;
    SQLCartaPrimeiroAvisoCUPOA13ID: TStringField;
    SQLCartaPrimeiroAvisoCTRCN2VLR: TBCDField;
    SQLCartaPrimeiroAvisoPRAVA60NOMECLI: TStringField;
    SQLCartaPrimeiroAvisoPRAVCENVIADO: TStringField;
    SQLCartaPrimeiroAvisoPRAVDPROCESS: TDateTimeField;
    SQLCartaPrimeiroAvisoPRAVDVENC: TDateTimeField;
    SQLCartaPrimeiroAvisoPRAVIDIASATRASO: TIntegerField;
    SQLCartaPrimeiroAvisoPENDENTE: TStringField;
    SQLCartaPrimeiroAvisoREGISTRO: TDateTimeField;
    SQLSegundoAviso: TRxQuery;
    DSSQLPrimeiroAviso: TDataSource;
    SQLSegundoAvisoCLIEA13ID: TStringField;
    SQLSegundoAvisoSGAVA60NOMECLI: TStringField;
    SQLPrimeiroAvisoCLIEA13ID: TStringField;
    SQLPrimeiroAvisoPRAVA60NOMECLI: TStringField;
    SQLAvisoSPC: TRxQuery;
    SQLCartaAvisoSPCCLIEA13ID: TStringField;
    SQLCartaAvisoSPCCTRCA13ID: TStringField;
    SQLCartaAvisoSPCCTRCINROPARC: TIntegerField;
    SQLCartaAvisoSPCCUPOA13ID: TStringField;
    SQLCartaAvisoSPCCTRCN2VLR: TBCDField;
    SQLCartaAvisoSPCAVSPA60NOMECLI: TStringField;
    SQLCartaAvisoSPCAVSPCENVIADO: TStringField;
    SQLCartaAvisoSPCAVSPDPROCESS: TDateTimeField;
    SQLCartaAvisoSPCAVSPDVENC: TDateTimeField;
    SQLCartaAvisoSPCAVSPIDIASATRASO: TIntegerField;
    SQLCartaAvisoSPCPENDENTE: TStringField;
    SQLCartaAvisoSPCREGISTRO: TDateTimeField;
    SQLAvisoSPCCLIEA13ID: TStringField;
    SQLAvisoSPCAVSPA60NOMECLI: TStringField;
    SQLAvisoCobranca: TRxQuery;
    SQLAvisoCobrancaCLIEA13ID: TStringField;
    SQLAvisoCobrancaAVCOA60NOMECLI: TStringField;
    Panel2: TPanel;
    DBGridSegundoAviso: TDBGrid;
    DSSQLSegundoAvisoParcelas: TDataSource;
    SQLSegundoAvisoParcelas: TRxQuery;
    SQLSegundoAvisoParcelasCUPOA13ID: TStringField;
    SQLSegundoAvisoParcelasCTRCINROPARC: TIntegerField;
    SQLSegundoAvisoParcelasCTRCN2VLR: TBCDField;
    SQLSegundoAvisoParcelasSGAVDVENC: TDateTimeField;
    SQLSegundoAvisoParcelasSGAVIDIASATRASO: TIntegerField;
    SQLSegundoAvisoParcelasSGAVCENVIADO: TStringField;
    SQLSegundoAvisoParcelasSGAVDPROCESS: TDateTimeField;
    SQLSegundoAvisoParcelasCTRCA13ID: TStringField;
    Panel3: TPanel;
    DBGridSPC: TDBGrid;
    DSSQLAvisoSPCParcelas: TDataSource;
    SQLAvisoSPCParcelas: TRxQuery;
    SQLAvisoSPCParcelasCUPOA13ID: TStringField;
    SQLAvisoSPCParcelasCTRCINROPARC: TIntegerField;
    SQLAvisoSPCParcelasCTRCN2VLR: TBCDField;
    SQLAvisoSPCParcelasAVSPDVENC: TDateTimeField;
    SQLAvisoSPCParcelasAVSPIDIASATRASO: TIntegerField;
    SQLAvisoSPCParcelasAVSPCENVIADO: TStringField;
    SQLAvisoSPCParcelasAVSPDPROCESS: TDateTimeField;
    SQLAvisoSPCParcelasCTRCA13ID: TStringField;
    Panel4: TPanel;
    DBGridCobranca: TDBGrid;
    DSSQLAvisoCobrancaParcelas: TDataSource;
    SQLAvisoCobrancaParcelas: TRxQuery;
    SQLAvisoCobrancaParcelasCUPOA13ID: TStringField;
    SQLAvisoCobrancaParcelasCTRCINROPARC: TIntegerField;
    SQLAvisoCobrancaParcelasCTRCN2VLR: TBCDField;
    SQLAvisoCobrancaParcelasAVCODVENC: TDateTimeField;
    SQLAvisoCobrancaParcelasAVCOIDIASATRASO: TIntegerField;
    SQLAvisoCobrancaParcelasAVCOCENVIADO: TStringField;
    SQLAvisoCobrancaParcelasAVCODPROCESS: TDateTimeField;
    SQLAvisoCobrancaParcelasCTRCA13ID: TStringField;
    SQLClienteHistorico: TRxQuery;
    SQLClienteHistoricoCLIEA13ID: TStringField;
    SQLClienteHistoricoCLHTICOD: TIntegerField;
    SQLClienteHistoricoCLHTDEMIS: TDateTimeField;
    SQLClienteHistoricoCLHTTHISTORICO: TMemoField;
    SQLClienteHistoricoCUPOA13ID: TStringField;
    SQLClienteHistoricoCTRCA13ID: TStringField;
    SQLClienteHistoricoCTRCINROPARC: TIntegerField;
    SQLClienteHistoricoPENDENTE: TStringField;
    SQLClienteHistoricoREGISTRO: TDateTimeField;
    SQLCliente: TRxQuery;
    SQLPrimeiroAvisoCLIEA15FONE1: TStringField;
    SQLPrimeiroAvisoCLIEA15FONE2: TStringField;
    SQLSegundoAvisoCLIEA15FONE1: TStringField;
    SQLSegundoAvisoCLIEA15FONE2: TStringField;
    SQLAvisoSPCCLIEA15FONE1: TStringField;
    SQLAvisoSPCCLIEA15FONE2: TStringField;
    SQLAvisoCobrancaCLIEA15FONE1: TStringField;
    SQLAvisoCobrancaCLIEA15FONE2: TStringField;
    GroupPeriodoSPC: TGroupBox;
    DateIniSPC: TDateEdit;
    DateFimSPC: TDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    CheckPeriodoSPC: TCheckBox;
    FormStorageCartasAvisos: TFormStorage;
    Panel1: TPanel;
    Panel5: TPanel;
    LbCaminhoCartaAviso1: TLabel;
    LbCaminhoCartaAviso2: TLabel;
    LbCaminhoCartaAviso3: TLabel;
    Label4: TLabel;
    EnviarDiretoSPC1: TMenuItem;
    TabAvisoSPCsemCab: TTabSheet;
    DBGrid5: TDBGrid;
    SQLSPCAvulso: TRxQuery;
    IntegerField1: TIntegerField;
    BCDField1: TBCDField;
    DateTimeField1: TDateTimeField;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    DateTimeField2: TDateTimeField;
    StringField3: TStringField;
    DSSQLSPCAvulso: TDataSource;
    SQLSPCAvulsoCLIEA13ID: TStringField;
    SQLSPCAvulsoAVSPA60NOMECLI: TStringField;
    SQLSPCAvulsoCLIEA15FONE1: TStringField;
    SQLSPCAvulsoCLIEA15FONE2: TStringField;
    Button6: TRxSpeedButton;
    SQLListaSPCAvulso: TRxQuery;
    SQLListaSPCAvulsoCLIEA13ID: TStringField;
    SQLListaSPCAvulsoCONTRATO: TStringField;
    SQLListaSPCAvulsoPARCELA: TIntegerField;
    SQLListaSPCAvulsoAVSPCENVIADO: TStringField;
    SQLListaSPCAvulsoNOME: TStringField;
    SQLListaSPCAvulsoENDERECO: TStringField;
    SQLListaSPCAvulsoBAIRRO: TStringField;
    SQLListaSPCAvulsoCIDADE: TStringField;
    SQLListaSPCAvulsoESTADO: TStringField;
    SQLListaSPCAvulsoCEP: TStringField;
    SQLListaSPCAvulsoMAE: TStringField;
    SQLListaSPCAvulsoPAI: TStringField;
    SQLListaSPCAvulsoDATANASCIMENTO: TDateTimeField;
    SQLListaSPCAvulsoCPF: TStringField;
    SQLListaSPCAvulsoRG: TStringField;
    SQLListaSPCAvulsoCLIEA60CONJUGE: TStringField;
    SQLListaSPCAvulsoVALOR: TBCDField;
    SQLListaSPCAvulsoVENCTO: TDateTimeField;
    SQLListaSPCAvulsoEMISSAO: TDateTimeField;
    SQLListaSPCAvulsoCLIECESTADOCIVIL: TStringField;
    SQLListaSPCAvulsoCLIETOBS: TStringField;
    SQLListaSPCAvulsoAVSPDPROCESS: TDateTimeField;
    SQLListaSPCAvulsoCTRCA5TIPOPADRAO: TStringField;
    SQLListaSPCAvulsoBANCA5CODCHQ: TStringField;
    SQLListaSPCAvulsoCTRCA10AGENCIACHQ: TStringField;
    SQLListaSPCAvulsoCTRCA15CONTACHQ: TStringField;
    SQLListaSPCAvulsoCTRCA15NROCHQ: TStringField;
    SQLListaSPCAvulsoALINICOD: TIntegerField;
    SQLListaSPCAvulsoALINA30DESCR: TStringField;
    Progress: TProgressBar;
    BtnVerificar: TSpeedButton;
    BtnDiversos: TRxSpeedButton;
    ckFiltroFiliais: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGridPrimeiroAvisoTitleClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure BtnVerificarClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure EiquetasdeEnderecamanetoClick(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure GerarCartasClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure GerarCartasdeAvisoSPC1Click(Sender: TObject);
    procedure MarcarComoEnviadoClick(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure SQLCartaAvisoCalcFields(DataSet: TDataSet);
    procedure MenuItem2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure VerTodosDocumentosAV1Click(Sender: TObject);
    procedure VerDocumentosEnviadosAv1Click(Sender: TObject);
    procedure VerDocumentosNaoEnviadosAv1Click(Sender: TObject);
    procedure VerTodosDocumentosAV2Click(Sender: TObject);
    procedure VerDocumentosEnviadosAV2Click(Sender: TObject);
    procedure VerDocumentosNaoEnviadosAV2Click(Sender: TObject);
    procedure VerTodosDocumentosAV3Click(Sender: TObject);
    procedure VerDocumentosEnviadosAV3Click(Sender: TObject);
    procedure VerDocumentosNaoEnviadosAV3Click(Sender: TObject);
    procedure DBGrid3TitleClick(Column: TColumn);
    procedure VerTodosDocumentosAV4Click(Sender: TObject);
    procedure VerDocumentosEnviadosAV4Click(Sender: TObject);
    procedure VerDocumentosNoEnviadosAV4Click(Sender: TObject);
    procedure CriarumRegistrodesteclienteemPrimeiroAviso1Click(
      Sender: TObject);
    procedure DSSQLPrimeiroAvisoDataChange(Sender: TObject; Field: TField);
    procedure DSSQLSegundoAvisoDataChange(Sender: TObject; Field: TField);
    procedure DSSQLAvisoSPCDataChange(Sender: TObject; Field: TField);
    procedure DSSQLAvisoCobrancaDataChange(Sender: TObject; Field: TField);
    procedure DBGridSegundoAvisoTitleClick(Column: TColumn);
    procedure DBGridSPCTitleClick(Column: TColumn);
    procedure DBGridCobrancaTitleClick(Column: TColumn);
    procedure LancaHistoricoCliente(IDCliente, IDCupom, IDContasReceber, Parcela, Historico : String);
    procedure DBGridPrimeiroAvisoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LancaHistorico(IDCliente,IDCupom,IDContasReceber,Parcela : String);
    procedure DBGridSegundoAvisoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridSPCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridCobrancaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SQLPrimeiroAvisoParcelasNewRecord(DataSet: TDataSet);
    procedure SQLSegundoAvisoParcelasNewRecord(DataSet: TDataSet);
    procedure EnviarDiretoSPC1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure ReportCartasPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
    function ExisteParcela(Aviso, Doc, Parc, Cliente : string) : boolean ;
  public
    { Public declarations }
  end;

var
  FormTelaEnvioCartasAviso: TFormTelaEnvioCartasAviso;

implementation

uses DataModulo, UnitLibrary, WaitWindow, CadastroClienteHistorico,
  TelaClienteHistorico;

{$R *.DFM}

procedure TFormTelaEnvioCartasAviso.Button1Click(Sender: TObject);
begin
  inherited;
  GroupPeriodoSPC.Visible  := False;

  BtnDiversos.DropDownMenu := PopupDiversosPriAvi ;
  PagePrincipal.ActivePage := TabPrimeiroAviso ;
  LabelTitulo.Caption      := 'Envio de Cartas de Aviso/1º Aviso' ;

  LblEnviados.Caption := 'Enviados: ' + IntToStr(SQLRecCount('CARTAPRIMEIROAVISO', 'where PRAVCENVIADO = "S"'));
  LblPendentes.Caption := 'Pendentes: ' + IntToStr(SQLRecCount('CARTAPRIMEIROAVISO', 'where PRAVCENVIADO <> "S"' +
                                                               ' and CLIEA13ID in (SELECT CLIEA13ID FROM CLIENTE'+
                                                               ' WHERE EMPRICOD = ' + EmpresaPadrao +')'));

end;

procedure TFormTelaEnvioCartasAviso.Button2Click(Sender: TObject);
begin
  inherited;
  GroupPeriodoSPC.Visible  := False;

  BtnDiversos.DropDownMenu := PopupDiversosSegAvi ;
  PagePrincipal.ActivePage := TabSegundoAviso ;
  LabelTitulo.Caption      := 'Envio de Cartas de Aviso/2º Aviso' ;

  LblEnviados.Caption := 'Enviados: ' + IntToStr(SQLRecCount('CARTASEGUNDOAVISO', 'where SGAVCENVIADO = "S"')) ;
  LblPendentes.Caption := 'Pendentes: ' + IntToStr(SQLRecCount('CARTASEGUNDOAVISO', 'where SGAVCENVIADO <> "S"' +
                                                               ' and CLIEA13ID in (SELECT CLIEA13ID FROM CLIENTE'+
                                                               ' WHERE EMPRICOD = ' + EmpresaPadrao +')'));

end;

procedure TFormTelaEnvioCartasAviso.Button3Click(Sender: TObject);
begin
  inherited;
  BtnDiversos.DropDownMenu := PopupDiversosAviSPC ;
  PagePrincipal.ActivePage := TabAvisoSPC ;
  GroupPeriodoSPC.Visible  := True;
  LabelTitulo.Caption      := 'Envio de Cartas de Aviso/Aviso SPC' ;

  LblEnviados.Caption := 'Enviados: ' + IntToStr(SQLRecCount('CARTAAVISOSPC', 'where AVSPCENVIADO = "S"')) ;
  LblPendentes.Caption := 'Pendentes: ' + IntToStr(SQLRecCount('CARTAAVISOSPC', 'where AVSPCENVIADO <> "S"' +
                                                               ' and CLIEA13ID in (SELECT CLIEA13ID FROM CLIENTE'+
                                                               ' WHERE EMPRICOD = ' + EmpresaPadrao +')'));

end;

procedure TFormTelaEnvioCartasAviso.DBGridPrimeiroAvisoTitleClick(Column: TColumn);
begin
  inherited;
  SQLPrimeiroAvisoParcelas.Close ;
  SQLPrimeiroAvisoParcelas.MacroByName('MOrdem').Value := Column.Field.FieldName ;
  SQLPrimeiroAvisoParcelas.Open ;
end;

procedure TFormTelaEnvioCartasAviso.FormCreate(Sender: TObject);
begin
  inherited;

  PagePrincipal.TabHeight := 1 ;
  PagePrincipal.TabWidth  := 1 ;

  SQLPrimeiroAviso.MacroByName('MOrdem').Value   := 'CARTAPRIMEIROAVISO.PRAVA60NOMECLI';
  SQLPrimeiroAviso.MacroByName('MEmpresa').Value := 'CUPOM.EMPRICOD = ' + EmpresaPadrao;
  SQLSegundoAviso.MacroByName('MOrdem').Value    := 'CARTASEGUNDOAVISO.SGAVA60NOMECLI';
  SQLSegundoAviso.MacroByName('MEmpresa').Value  := 'CUPOM.EMPRICOD = ' + EmpresaPadrao;
  SQLAvisoSPC.MacroByName('MOrdem').Value        := 'CARTAAVISOSPC.AVSPA60NOMECLI';
  SQLAvisoSPC.MacroByName('MEmpresa').Value      := 'CUPOM.EMPRICOD = ' + EmpresaPadrao;
  SQLAvisoCobranca.MacroByName('MOrdem').Value   := 'AVCOA60NOMECLI';
  SQLAvisoCobranca.MacroByName('MEmpresa').Value := 'CUPOM.EMPRICOD = ' + EmpresaPadrao;

  SQLPrimeiroAviso.Open;
  SQLSegundoAviso.Open;
  SQLAvisoSPC.Open;
  SQLAvisoCobranca.Open;

  SQLCartaPrimeiroAviso.Open ;
  SQLCartaSegundoAviso.Open ;
  SQLCartaAvisoSPC.Open ;
  SQLCartaAvisoCobranca.Open ;

  SQLSPCAvulso.Open;

  PagePrincipal.ActivePage := TabPrimeiroAviso ;
  LabelTitulo.Caption      := 'Envio de Cartas de Aviso/1º Aviso' ;
  LabelTitulo.Refresh ;
  Button1.Down             := true ;

  DtBase.Date := Date ;
  BtnDiversos.DropDownMenu := PopupDiversosPriAvi ;

  LblEnviados.Caption  := 'Enviados: '  + IntToStr(SQLRecCount('CARTAPRIMEIROAVISO', 'where PRAVCENVIADO = "S"'));
  LblPendentes.Caption := 'Pendentes: ' + IntToStr(SQLRecCount('CARTAPRIMEIROAVISO', 'where PRAVCENVIADO <> "S"'));

  LbCaminhoCartaAviso1.Caption := LbCaminhoCartaAviso1.Caption + DM.SQLConfigCrediarioCFCRA255PATHCART1A.Value;
  LbCaminhoCartaAviso2.Caption := LbCaminhoCartaAviso2.Caption + DM.SQLConfigCrediarioCFCRA255PATHCART2A.Value;
  LbCaminhoCartaAviso3.Caption := LbCaminhoCartaAviso3.Caption + DM.SQLConfigCrediarioCFCRA255PATHCART3A.Value;

end;

procedure TFormTelaEnvioCartasAviso.BtnVerificarClick(Sender: TObject);
Var
  DiasAtraso : Double ;
  TipoPadrao, NomeCliente : String ;
begin
  inherited;
  if DtBase.Date < Date then
    begin
      Informa('A data de processamento está menor que a data do computador. Verifique!');
      DtBase.SetFocus;
      Abort;
    end;
  Progress.Min := 0;
  if ckFiltroFiliais.Checked then
    Progress.Max := SQLRecCount('CONTASRECEBER', 'where CTRCDULTREC is null and CTRCA5TIPOPADRAO = "CRD" and CTRCCSTATUS = "A"')
  else
    Progress.Max := SQLRecCount('CONTASRECEBER', 'where CTRCDULTREC is null and CTRCA5TIPOPADRAO = "CRD" and CTRCCSTATUS = "A" and EMPRICOD = '+ EmpresaPadrao);

  Progress.Visible := true ;
  Progress.Position := 0 ;

  Mensagem.Visible := true ;
  Mensagem.Caption := '' ;
  Mensagem.Refresh ;

  Mensagem.Caption := 'Iniciando a inclusão de clientes em atraso!' ;
  Mensagem.Refresh ;

  SQLContasReceber.Close;
  if ckFiltroFiliais.Checked then
    SQLContasReceber.MacroByName('MEmpresa').Value := '0=0'
  else
    SQLContasReceber.MacroByName('MEmpresa').Value := 'CONTASRECEBER.EMPRICOD = ' + EmpresaPadrao;

  SQLContasReceber.MacrobyName('MData').Value    := 'CONTASRECEBER.CTRCDVENC >= "' + FormatDateTime('mm/dd/yyyy', (Date - 90)) + '" and ' +
                                                    'CONTASRECEBER.CTRCDVENC <= "' + FormatDateTime('mm/dd/yyyy', Date) + '"' ;
  SQLContasReceber.Open;

  Screen.Cursor := crHourglass;
  while not SQLContasReceber.EOF do
  begin
    TipoPadrao := SQLContasReceberCTRCA5TIPOPADRAO.AsString ;
    DiasAtraso := DtBase.Date - SQLContasReceberCTRCDVENC.AsDateTime ;
    NomeCliente := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA60RAZAOSOC', '"' + SQLContasReceberCLIEA13ID.Value + '"');
    //PRIMEIRO AVISO
    if (DM.SQLConfigCrediarioCFCRINRODIACARTA1A.Value > 0) and
       (DiasAtraso >= DM.SQLConfigCrediarioCFCRINRODIACARTA1A.Value) and
       (not ExisteParcela('1', SQLContasReceberCUPOA13ID.AsString, SQLContasReceberCTRCINROPARC.AsString, SQLContasReceberCLIEA13ID.AsString)) then
      begin
        Mensagem.Caption := 'Incluindo Contrato => '+SQLContasReceberCUPOA13ID.AsString+' em Primeiro Aviso!';
        Mensagem.Refresh ;
        SQLCartaPrimeiroAviso.Append ;
        SQLCartaPrimeiroAvisoCLIEA13ID.Value       := SQLContasReceberCLIEA13ID.Value ;
        SQLCartaPrimeiroAvisoCTRCA13ID.Value       := SQLContasReceberCTRCA13ID.Value ;
        SQLCartaPrimeiroAvisoCTRCINROPARC.Value    := SQLContasReceberCTRCINROPARC.Value ;
        SQLCartaPrimeiroAvisoCUPOA13ID.Value       := SQLContasReceberCUPOA13ID.Value ;
        SQLCartaPrimeiroAvisoCTRCN2VLR.Value       := SQLContasReceberCTRCN2VLR.Value ;
        SQLCartaPrimeiroAvisoPRAVA60NOMECLI.Value  := NomeCliente ;
        SQLCartaPrimeiroAvisoPRAVCENVIADO.Value    := 'N' ;
        SQLCartaPrimeiroAvisoPRAVDVENC.Value       := SQLContasReceberCTRCDVENC.Value ;
        SQLCartaPrimeiroAvisoPRAVDPROCESS.Value    := DtBase.Date ;
        SQLCartaPrimeiroAvisoPRAVIDIASATRASO.AsFloat := DiasAtraso ;
        SQLCartaPrimeiroAvisoPENDENTE.Value        := 'S' ;
        SQLCartaPrimeiroAvisoREGISTRO.Value        := Now ;
        SQLCartaPrimeiroAviso.Post ;
      end ;

    //SEGUNDO AVISO
    if (DM.SQLConfigCrediarioCFCRINRODIACARTA2A.Value > 0) and
       (DiasAtraso >= DM.SQLConfigCrediarioCFCRINRODIACARTA2A.Value) and
       (not ExisteParcela('2', SQLContasReceberCUPOA13ID.AsString, SQLContasReceberCTRCINROPARC.AsString, SQLContasReceberCLIEA13ID.AsString)) then
      begin
        Mensagem.Caption := 'Incluindo Contrato => '+SQLContasReceberCUPOA13ID.AsString+' em Segundo Aviso!';
        Mensagem.Refresh ;
        SQLCartaSegundoAviso.Append ;
        SQLCartaSegundoAvisoCLIEA13ID.Value       := SQLContasReceberCLIEA13ID.Value ;
        SQLCartaSegundoAvisoCTRCA13ID.Value       := SQLContasReceberCTRCA13ID.Value ;
        SQLCartaSegundoAvisoCTRCINROPARC.Value    := SQLContasReceberCTRCINROPARC.Value ;
        SQLCartaSegundoAvisoCUPOA13ID.Value       := SQLContasReceberCUPOA13ID.Value ;
        SQLCartaSegundoAvisoCTRCN2VLR.Value       := SQLContasReceberCTRCN2VLR.Value ;
        SQLCartaSegundoAvisoSGAVA60NOMECLI.Value  := NomeCliente ;
        SQLCartaSegundoAvisoSGAVCENVIADO.Value    := 'N' ;
        SQLCartaSegundoAvisoSGAVDVENC.Value       := SQLContasReceberCTRCDVENC.Value ;
        SQLCartaSegundoAvisoSGAVDPROCESS.Value    := DtBase.Date ;
        SQLCartaSegundoAvisoSGAVIDIASATRASO.AsFloat := DiasAtraso ;
        SQLCartaSegundoAvisoPENDENTE.Value        := 'S' ;
        SQLCartaSegundoAvisoREGISTRO.Value        := Now ;
        SQLCartaSegundoAviso.Post ;
      end ;

    //AVISO SPC
    if (DM.SQLConfigCrediarioCFCRINRODIACARTA3A.Value > 0) and
       (DiasAtraso >= DM.SQLConfigCrediarioCFCRINRODIACARTA3A.Value) and
       (not ExisteParcela('SPC', SQLContasReceberCUPOA13ID.AsString, SQLContasReceberCTRCINROPARC.AsString, SQLContasReceberCLIEA13ID.AsString)) then
      begin
        Mensagem.Caption := 'Incluindo Contrato => '+SQLContasReceberCUPOA13ID.AsString+' em SPC!';
        Mensagem.Refresh ;
        SQLCartaAvisoSPC.Append ;
        SQLCartaAvisoSPCCLIEA13ID.Value       := SQLContasReceberCLIEA13ID.Value ;
        SQLCartaAvisoSPCCTRCA13ID.Value       := SQLContasReceberCTRCA13ID.Value ;
        SQLCartaAvisoSPCCTRCINROPARC.Value    := SQLContasReceberCTRCINROPARC.Value ;
        SQLCartaAvisoSPCCUPOA13ID.Value       := SQLContasReceberCUPOA13ID.Value ;
        SQLCartaAvisoSPCCTRCN2VLR.Value       := SQLContasReceberCTRCN2VLR.Value ;
        SQLCartaAvisoSPCAVSPA60NOMECLI.Value  := NomeCliente ;
        SQLCartaAvisoSPCAVSPCENVIADO.Value    := 'N' ;
        SQLCartaAvisoSPCAVSPDPROCESS.Value    := DtBase.Date ;
        SQLCartaAvisoSPCAVSPDVENC.Value       := SQLContasReceberCTRCDVENC.Value ;
        SQLCartaAvisoSPCAVSPIDIASATRASO.AsFloat := DiasAtraso ;
        SQLCartaAvisoSPCPENDENTE.Value        := 'S' ;
        SQLCartaAvisoSPCREGISTRO.Value        := Now ;
        SQLCartaAvisoSPC.Post ;
        // LANCA HISTORICO DO CLIENTE
        {LancaHistoricoCliente(SQLCartaAvisoSPCCLIEA13ID.AsString,
                              SQLCartaAvisoSPCCUPOA13ID.AsString,
                              SQLCartaAvisoSPCCTRCA13ID.AsString,
                              SQLCartaAvisoSPCCTRCINROPARC.AsString,
                              'INCLUIDO EM SPC, CUPOM: ' + SQLCartaAvisoSPCCUPOA13ID.AsString + ' PARCELA: ' + SQLCartaAvisoSPCCTRCINROPARC.AsString);}

      end ;

    //AVISO COBRANCA
    if (DM.SQLConfigCrediarioCFCRINRODIACARTA4A.Value > 0) and
       (DiasAtraso >= DM.SQLConfigCrediarioCFCRINRODIACARTA4A.Value) and
       (not ExisteParcela('COBRANCA', SQLContasReceberCUPOA13ID.AsString, SQLContasReceberCTRCINROPARC.AsString, SQLContasReceberCLIEA13ID.AsString)) then
      begin
        Mensagem.Caption := 'Incluindo Contrato => '+SQLContasReceberCUPOA13ID.AsString+' em Cobrança!';
        Mensagem.Refresh ;
        SQLCartaAvisoCobranca.Append ;
        SQLCartaAvisoCobrancaCLIEA13ID.Value         := SQLContasReceberCLIEA13ID.Value ;
        SQLCartaAvisoCobrancaCTRCA13ID.Value         := SQLContasReceberCTRCA13ID.Value ;
        SQLCartaAvisoCobrancaCTRCINROPARC.Value      := SQLContasReceberCTRCINROPARC.Value ;
        SQLCartaAvisoCobrancaCUPOA13ID.Value         := SQLContasReceberCUPOA13ID.Value ;
        SQLCartaAvisoCobrancaCTRCN2VLR.Value         := SQLContasReceberCTRCN2VLR.Value ;
        SQLCartaAvisoCobrancaAVCOA60NOMECLI.Value    := NomeCliente ;
        SQLCartaAvisoCobrancaAVCOCENVIADO.Value      := 'N' ;
        SQLCartaAvisoCobrancaAVCODPROCESS.Value      := DtBase.Date ;
        SQLCartaAvisoCobrancaAVCODVENC.Value         := SQLContasReceberCTRCDVENC.Value ;
        SQLCartaAvisoCobrancaAVCOIDIASATRASO.AsFloat := DiasAtraso ;
        SQLCartaAvisoCobrancaPENDENTE.Value          := 'S' ;
        SQLCartaAvisoCobrancaREGISTRO.Value          := Now ;
        SQLCartaAvisoCobranca.Post ;
      end ;

    SQLContasReceber.Next ;
    Progress.Position := Progress.Position + 1 ;
    Progress.Update;
    Application.ProcessMessages;
  end ;

  Progress.Position := 0 ;
  Progress.Visible := false ;
  Application.ProcessMessages;


  //VERIFICAR CONTRATOS QUE ESTAO EM SPC QUE DEVEM SER TIRADOS DO PRIMEIRO E SEGUNDO AVISO
  Mensagem.Caption := 'Verificando Contratos em SPC que devem ser tirados de Prim. e Seg.Avisos!' ;
  Mensagem.Refresh ;
  SQLCartaAvisoSPC.Close;
  SQLCartaAvisoSPC.Open;
  Progress.Min := 0;
  Progress.Max := SQLRecCount('CARTAAVISOSPC', '') ;
  Progress.Visible := true ;
  Progress.Position := 0 ;
  SQLCartaAvisoSPC.First ;
  while not SQLCartaAvisoSPC.EOF do
    begin
      //EXCLUINDO DO PRIMEIRO AVISO
      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('delete from CARTAPRIMEIROAVISO') ;
      DM.SQLTemplate.SQL.Add('where PRAVCENVIADO <> "S"') ;
      DM.SQLTemplate.SQL.Add('and   CLIEA13ID = "' + SQLCartaAvisoSPCCLIEA13ID.Value + '"') ;
      DM.SQLTemplate.ExecSQL ;
      //EXCLUINDO DO SEGUNDO AVISO
      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('delete from CARTASEGUNDOAVISO') ;
      DM.SQLTemplate.SQL.Add('where SGAVCENVIADO <> "S"') ;
      DM.SQLTemplate.SQL.Add('and   CLIEA13ID = "' + SQLCartaAvisoSPCCLIEA13ID.Value + '"') ;
      DM.SQLTemplate.ExecSQL ;

      SQLCartaAvisoSPC.Next ;
      Progress.Position := Progress.Position + 1;
      Progress.Update;
      Application.ProcessMessages;
    end ;

  //VERIFICAR CONTRATOS QUE ESTAO EM 2 AVISO QUE DEVEM SER TIRADOS DO PRIMEIRO AVISO
  Mensagem.Caption := 'Verificando Contratos em Seg.Aviso que devem ser retirados de Prim.Aviso!' ;
  Mensagem.Refresh ;
  SQLCartaSegundoAviso.Close;
  SQLCartaSegundoAviso.Open;
  Progress.Min := 0;
  Progress.Max := SQLRecCount('CARTASEGUNDOAVISO', '');
  Progress.Visible := true;
  Progress.Position := 0;
  SQLCartaSegundoAviso.First;
  DM.SQLTemplate.Close;
  DM.SQLTemplate.SQL.Clear;
  DM.SQLTemplate.SQL.Add('delete from CARTAPRIMEIROAVISO');
  DM.SQLTemplate.SQL.Add('where PRAVCENVIADO <> "S"');
  DM.SQLTemplate.SQL.Add('and   %Cliente');
  while not SQLCartaSegundoAviso.EOF do
    begin
      //EXCLUINDO DO PRIMEIRO AVISO
      DM.SQLTemplate.Close;
      DM.SQLTemplate.MacroByName('Cliente').AsString := 'CLIEA13ID = "' + SQLCartaSegundoAvisoCLIEA13ID.Value + '"';
      DM.SQLTemplate.ExecSQL ;
      SQLCartaSegundoAviso.Next;
      Progress.Position := Progress.Position + 1;
      Progress.Update;
      Application.ProcessMessages;
    end;
  Progress.Position := 0;
  Mensagem.Visible := False;
  Mensagem.Caption := '';
  Screen.Cursor := crDefault;
  Mensagem.Caption := 'Processamento Concluido!';
  Mensagem.Refresh ;
end;

procedure TFormTelaEnvioCartasAviso.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  SQLSegundoAviso.Close;
  SQLSegundoAviso.MacroByName('MOrdem').Value := Column.Field.FieldName;
  SQLSegundoAviso.Open;
end;

procedure TFormTelaEnvioCartasAviso.DBGrid2TitleClick(Column: TColumn);
begin
  inherited;
  SQLAvisoSPC.Close;
  SQLAvisoSPC.MacroByName('MOrdem').Value := 'CARTAAVISOSPC.' + Column.Field.FieldName;
  SQLAvisoSPC.Open;
end;

procedure TFormTelaEnvioCartasAviso.EiquetasdeEnderecamanetoClick(
  Sender: TObject);
begin
  inherited;
  SQLEtiquetas.Close;
  SQLEtiquetas.SQL.Clear;
  SQLEtiquetas.SQL.Add('select');
  SQLEtiquetas.SQL.Add('CLIEA13ID,');
  SQLEtiquetas.SQL.Add('CLIEA60RAZAOSOC,');
  SQLEtiquetas.SQL.Add('CLIEA60ENDRES,');
  SQLEtiquetas.SQL.Add('CLIEA60BAIRES,');
  SQLEtiquetas.SQL.Add('CLIEA60CIDRES,');
  SQLEtiquetas.SQL.Add('CLIEA2UFRES,');
  SQLEtiquetas.SQL.Add('CLIEA8CEPRES');
  SQLEtiquetas.SQL.Add('from');
  SQLEtiquetas.SQL.Add('CARTAPRIMEIROAVISO, CLIENTE, CUPOM');
  SQLEtiquetas.SQL.Add('where');
  SQLEtiquetas.SQL.Add('CARTAPRIMEIROAVISO.CLIEA13ID = CLIENTE.CLIEA13ID and ');
  SQLEtiquetas.SQL.Add('CARTAPRIMEIROAVISO.CUPOA13ID = CUPOM.CUPOA13ID and ');
  SQLEtiquetas.SQL.Add('CARTAPRIMEIROAVISO.PRAVCENVIADO <> "S" and ');
  SQLEtiquetas.SQL.Add('CUPOM.EMPRICOD = ' + EmpresaPadrao);
  SQLEtiquetas.SQL.Add('group by');
  SQLEtiquetas.SQL.Add('CLIEA13ID,');
  SQLEtiquetas.SQL.Add('CLIEA60RAZAOSOC,');
  SQLEtiquetas.SQL.Add('CLIEA60ENDRES,');
  SQLEtiquetas.SQL.Add('CLIEA60BAIRES,');
  SQLEtiquetas.SQL.Add('CLIEA60CIDRES,');
  SQLEtiquetas.SQL.Add('CLIEA2UFRES,');
  SQLEtiquetas.SQL.Add('CLIEA8CEPRES');
  SQLEtiquetas.SQL.Add('order by CLIEA60RAZAOSOC');

  TblEtiquetas.Close;
  try TblEtiquetas.DeleteTable ; except end;
  BatchMove.Execute;

  if FileExists('EtiquetasMalaDireta.exe') then
    WinExec('EtiquetasMalaDireta.exe ETQ',sw_Show)
  else
    Informa('Programa para impressão de etiquetas não encontrado !');
end;

function TFormTelaEnvioCartasAviso.ExisteParcela(Aviso, Doc, Parc, Cliente : string) : boolean;
begin
  DM.SQLTemplate.Close;
  DM.SQLTemplate.SQL.Clear;
  if Aviso = '1' then
    DM.SQLTemplate.SQL.Add('select * from CARTAPRIMEIROAVISO');
  if Aviso = '2' then
    DM.SQLTemplate.SQL.Add('select * from CARTASEGUNDOAVISO');
  if Aviso = 'SPC' then
    DM.SQLTemplate.SQL.Add('select * from CARTAAVISOSPC');
  if Aviso = 'COBRANCA' then
    DM.SQLTemplate.SQL.Add('select * from CARTAAVISOCOBRANCA');

  DM.SQLTemplate.SQL.Add('where CLIEA13ID = "' + Cliente + '"');
  DM.SQLTemplate.SQL.Add('and   CUPOA13ID = "' + Doc + '"');
  DM.SQLTemplate.SQL.Add('and   CTRCINROPARC = "' + Parc + '"');
  DM.SQLTemplate.Open;

  if not DM.SQLTemplate.EOF then
    ExisteParcela := true
  else
    ExisteParcela := false;
end;

procedure TFormTelaEnvioCartasAviso.MenuItem3Click(Sender: TObject);
begin
  inherited;
  SQLEtiquetas.Close;
  SQLEtiquetas.SQL.Clear;
  SQLEtiquetas.SQL.Add('Select');
  SQLEtiquetas.SQL.Add('CLIEA13ID,');
  SQLEtiquetas.SQL.Add('CLIEA60RAZAOSOC,');
  SQLEtiquetas.SQL.Add('CLIEA60ENDRES,');
  SQLEtiquetas.SQL.Add('CLIEA60BAIRES,');
  SQLEtiquetas.SQL.Add('CLIEA60CIDRES,');
  SQLEtiquetas.SQL.Add('CLIEA2UFRES,');
  SQLEtiquetas.SQL.Add('CLIEA8CEPRES');
  SQLEtiquetas.SQL.Add('from');
  SQLEtiquetas.SQL.Add('CARTASEGUNDOAVISO, CLIENTE, CUPOM');
  SQLEtiquetas.SQL.Add('where');
  SQLEtiquetas.SQL.Add('CARTASEGUNDOAVISO.CLIEA13ID = CLIENTE.CLIEA13ID and ');
  SQLEtiquetas.SQL.Add('CARTASEGUNDOAVISO.CUPOA13ID = CUPOM.CUPOA13ID and ');
  SQLEtiquetas.SQL.Add('CARTASEGUNDOAVISO.SGAVCENVIADO <> "S" and ');
  SQLEtiquetas.SQL.Add('CUPOM.EMPRICOD = ' + EmpresaPadrao);
  SQLEtiquetas.SQL.Add('group by');
  SQLEtiquetas.SQL.Add('CLIEA13ID,');
  SQLEtiquetas.SQL.Add('CLIEA60RAZAOSOC,');
  SQLEtiquetas.SQL.Add('CLIEA60ENDRES,');
  SQLEtiquetas.SQL.Add('CLIEA60BAIRES,');
  SQLEtiquetas.SQL.Add('CLIEA60CIDRES,');
  SQLEtiquetas.SQL.Add('CLIEA2UFRES,');
  SQLEtiquetas.SQL.Add('CLIEA8CEPRES');
  SQLEtiquetas.SQL.Add('order by CLIEA60RAZAOSOC');

  TblEtiquetas.Close;
  try TblEtiquetas.DeleteTable ; except end;
  BatchMove.Execute;

  if FileExists('EtiquetasMalaDireta.exe') then
    WinExec('EtiquetasMalaDireta.exe ETQ',sw_Show)
  else
    Informa('Programa para impressão de etiquetas não encontrado !') ;
end;

procedure TFormTelaEnvioCartasAviso.MenuItem5Click(Sender: TObject);
begin
  inherited;
  SQLEtiquetas.Close ;
  SQLEtiquetas.SQL.Clear ;
  SQLEtiquetas.SQL.Add('Select') ;
  SQLEtiquetas.SQL.Add('CLIEA13ID,') ;
  SQLEtiquetas.SQL.Add('CLIEA60RAZAOSOC,') ;
  SQLEtiquetas.SQL.Add('CLIEA60ENDRES,') ;
  SQLEtiquetas.SQL.Add('CLIEA60BAIRES,') ;
  SQLEtiquetas.SQL.Add('CLIEA60CIDRES,') ;
  SQLEtiquetas.SQL.Add('CLIEA2UFRES,') ;
  SQLEtiquetas.SQL.Add('CLIEA8CEPRES') ;
  SQLEtiquetas.SQL.Add('From') ;
  SQLEtiquetas.SQL.Add('CARTAAVISOSPC, CLIENTE, CUPOM') ;
  SQLEtiquetas.SQL.Add('Where') ;
  SQLEtiquetas.SQL.Add('CARTAAVISOSPC.CLIEA13ID = CLIENTE.CLIEA13ID and ') ;
  SQLEtiquetas.SQL.Add('CARTAAVISOSPC.CUPOA13ID = CUPOM.CUPOA13ID and ') ;
  SQLEtiquetas.SQL.Add('CARTAAVISOSPC.AVSPCENVIADO <> "S"') ;
  SQLEtiquetas.SQL.Add(' AND CUPOM.EMPRICOD = ' + EmpresaPadrao);
  if not CheckPeriodoSPC.Checked then
    begin
      if (DateIniSPC.Date > 0) and (DateFimSPC.Date > 0) then
        begin
          SQLCartaAviso.SQL.Add(' AND CARTAAVISOSPC.AVSPDVENC >= "' + FormatDateTime('mm/dd/yyyy',DateIniSPC.Date) + '" AND ');
          SQLCartaAviso.SQL.Add('CARTAAVISOSPC.AVSPDVENC <= "' + FormatDateTime('mm/dd/yyyy',DateFimSPC.Date) + '"');
        end
      else
        begin
          Informa('Você deve selecionar um período para o filtro do SPC, ou marcar a opção "Desconsiderar"');
          Abort;
        end;
    end;
  SQLEtiquetas.SQL.Add('group by') ;
  SQLEtiquetas.SQL.Add('CLIEA13ID,') ;
  SQLEtiquetas.SQL.Add('CLIEA60RAZAOSOC,') ;
  SQLEtiquetas.SQL.Add('CLIEA60ENDRES,') ;
  SQLEtiquetas.SQL.Add('CLIEA60BAIRES,') ;
  SQLEtiquetas.SQL.Add('CLIEA60CIDRES,') ;
  SQLEtiquetas.SQL.Add('CLIEA2UFRES,') ;
  SQLEtiquetas.SQL.Add('CLIEA8CEPRES') ;
  SQLEtiquetas.SQL.Add('order by CLIEA60RAZAOSOC') ;
  SQLEtiquetas.Open ;

  if TblEtiquetas.Exists then
     TblEtiquetas.DeleteTable;

  {TblEtiquetas.Close ;
  try TblEtiquetas.DeleteTable ; except end ;
  TblEtiquetas.CreateTable ;}

  BatchMove.Execute ;

  if FileExists('EtiquetasMalaDireta.exe') then
    WinExec('EtiquetasMalaDireta.exe ETQ',sw_Show)
  else
    Informa('Programa para impressão de etiquetas não encontrado !') ;
end;

procedure TFormTelaEnvioCartasAviso.GerarCartasClick(Sender: TObject);
begin
  inherited;
  if not FileExists(DM.SQLConfigCrediarioCFCRA255PATHCART1A.Value) then
  begin
    Informa('A carta de 1ºaviso não foi encontrada !') ;
    exit ;
  end ;

  SQLCartaAviso.Tag := 1 ;

  SQLCartaAviso.Close ;
  SQLCartaAviso.SQL.Clear ;
  SQLCartaAviso.SQL.Add('Select') ;
  SQLCartaAviso.SQL.Add('CLIEA13ID,') ;
  SQLCartaAviso.SQL.Add('CLIEA60RAZAOSOC AS NOME,') ;
  SQLCartaAviso.SQL.Add('CLIEA60ENDRES AS ENDERECO,') ;
  SQLCartaAviso.SQL.Add('CLIEA60BAIRES AS BAIRRO,') ;
  SQLCartaAviso.SQL.Add('CLIEA60CIDRES AS CIDADE,') ;
  SQLCartaAviso.SQL.Add('CLIEA2UFRES AS ESTADO,') ;
  SQLCartaAviso.SQL.Add('CLIEA8CEPRES AS CEP') ;
  SQLCartaAviso.SQL.Add('From') ;
  SQLCartaAviso.SQL.Add('CARTAPRIMEIROAVISO, CLIENTE, CUPOM') ;
  SQLCartaAviso.SQL.Add('Where') ;
  SQLCartaAviso.SQL.Add('CARTAPRIMEIROAVISO.CLIEA13ID = CLIENTE.CLIEA13ID and ') ;
  SQLCartaAviso.SQL.Add('CARTAPRIMEIROAVISO.CUPOA13ID = CUPOM.CUPOA13ID and ');
  SQLCartaAviso.SQL.Add('CARTAPRIMEIROAVISO.PRAVCENVIADO <> "S" and ') ;
  SQLCartaAviso.SQL.Add('CLIENTE.CLIECRECAVISATRASO = "S" and ') ;
  SQLCartaAviso.SQL.Add('CUPOM.EMPRICOD = ' + EmpresaPadrao) ;
  SQLCartaAviso.SQL.Add('Group By') ;
  SQLCartaAviso.SQL.Add('CLIEA13ID,') ;
  SQLCartaAviso.SQL.Add('CLIEA60RAZAOSOC,') ;
  SQLCartaAviso.SQL.Add('CLIEA60ENDRES,') ;
  SQLCartaAviso.SQL.Add('CLIEA60BAIRES,') ;
  SQLCartaAviso.SQL.Add('CLIEA60CIDRES,') ;
  SQLCartaAviso.SQL.Add('CLIEA2UFRES,') ;
  SQLCartaAviso.SQL.Add('CLIEA8CEPRES') ;
  SQLCartaAviso.SQL.Add('Order By CLIEA60RAZAOSOC') ;
  SQLCartaAviso.Open ;

  if SQLCartaAviso.IsEmpty then
    begin
      ShowMessage('Não foi encontrado registros a serem impressos!');
      exit;
    end;
  ppTexto.LoadFromFile(DM.SQLConfigCrediarioCFCRA255PATHCART1A.Value);
  ReportCartas.Print ;
end;

procedure TFormTelaEnvioCartasAviso.MenuItem1Click(Sender: TObject);
begin
  inherited;
  if not FileExists(DM.SQLConfigCrediarioCFCRA255PATHCART2A.Value) then
  begin
    Informa('A carta de 2ºaviso não foi encontrada !') ;
    exit ;
  end ;

  SQLCartaAviso.Tag := 2 ;

  SQLCartaAviso.Close ;
  SQLCartaAviso.SQL.Clear ;
  SQLCartaAviso.SQL.Add('select') ;
  SQLCartaAviso.SQL.Add('CLIEA13ID,') ;
  SQLCartaAviso.SQL.Add('CLIEA60RAZAOSOC AS NOME,') ;
  SQLCartaAviso.SQL.Add('CLIEA60ENDRES AS ENDERECO,') ;
  SQLCartaAviso.SQL.Add('CLIEA60BAIRES AS BAIRRO,') ;
  SQLCartaAviso.SQL.Add('CLIEA60CIDRES AS CIDADE,') ;
  SQLCartaAviso.SQL.Add('CLIEA2UFRES AS ESTADO,') ;
  SQLCartaAviso.SQL.Add('CLIEA8CEPRES AS CEP') ;
  SQLCartaAviso.SQL.Add('from') ;
  SQLCartaAviso.SQL.Add('CARTASEGUNDOAVISO, CLIENTE, CUPOM') ;
  SQLCartaAviso.SQL.Add('where') ;
  SQLCartaAviso.SQL.Add('CARTASEGUNDOAVISO.CLIEA13ID = CLIENTE.CLIEA13ID and ') ;
  SQLCartaAviso.SQL.Add('CARTASEGUNDOAVISO.CUPOA13ID = CUPOM.CUPOA13ID and ') ;
  SQLCartaAviso.SQL.Add('CARTASEGUNDOAVISO.SGAVCENVIADO <> "S" and ') ;
  SQLCartaAviso.SQL.Add('CLIENTE.CLIECRECAVISATRASO = "S" and ') ;
  SQLCartaAviso.SQL.Add('CUPOM.EMPRICOD = ' + EmpresaPadrao);
  SQLCartaAviso.SQL.Add('group by') ;
  SQLCartaAviso.SQL.Add('CLIEA13ID,') ;
  SQLCartaAviso.SQL.Add('CLIEA60RAZAOSOC,') ;
  SQLCartaAviso.SQL.Add('CLIEA60ENDRES,') ;
  SQLCartaAviso.SQL.Add('CLIEA60BAIRES,') ;
  SQLCartaAviso.SQL.Add('CLIEA60CIDRES,') ;
  SQLCartaAviso.SQL.Add('CLIEA2UFRES,') ;
  SQLCartaAviso.SQL.Add('CLIEA8CEPRES') ;
  SQLCartaAviso.SQL.Add('order by CLIEA60RAZAOSOC') ;
  SQLCartaAviso.Open ;

  if SQLCartaAviso.IsEmpty then
    begin
      ShowMessage('Não foi encontrado registros a serem impressos!');
      exit;
    end;

  ppTexto.LoadFromFile(DM.SQLConfigCrediarioCFCRA255PATHCART2A.Value) ;
  ReportCartas.Print ;
end;

procedure TFormTelaEnvioCartasAviso.GerarCartasdeAvisoSPC1Click(
  Sender: TObject);
begin
  inherited;
  if not FileExists(DM.SQLConfigCrediarioCFCRA255PATHCART3A.Value) then
  begin
    Informa('A carta de aviso de SPC não foi encontrada !') ;
    exit ;
  end ;

  SQLCartaAviso.Tag := 3 ;

  SQLCartaAviso.Close ;
  SQLCartaAviso.SQL.Clear ;
  SQLCartaAviso.SQL.Add('select') ;
  SQLCartaAviso.SQL.Add('CLIEA13ID,') ;
  SQLCartaAviso.SQL.Add('CLIEA60RAZAOSOC AS NOME,') ;
  SQLCartaAviso.SQL.Add('CLIEA60ENDRES AS ENDERECO,') ;
  SQLCartaAviso.SQL.Add('CLIEA60BAIRES AS BAIRRO,') ;
  SQLCartaAviso.SQL.Add('CLIEA60CIDRES AS CIDADE,') ;
  SQLCartaAviso.SQL.Add('CLIEA2UFRES AS ESTADO,') ;
  SQLCartaAviso.SQL.Add('CLIEA8CEPRES AS CEP') ;
  SQLCartaAviso.SQL.Add('from') ;
  SQLCartaAviso.SQL.Add('CARTAAVISOSPC, CLIENTE, CUPOM') ;
  SQLCartaAviso.SQL.Add('where') ;
  SQLCartaAviso.SQL.Add('CARTAAVISOSPC.CLIEA13ID = CLIENTE.CLIEA13ID and ') ;
  SQLCartaAviso.SQL.Add('CARTAAVISOSPC.CUPOA13ID = CUPOM.CUPOA13ID and ');
  SQLCartaAviso.SQL.Add('CARTAAVISOSPC.AVSPCENVIADO <> "S" and ') ;
  SQLCartaAviso.SQL.Add('CLIENTE.CLIECRECAVISATRASO = "S" and ') ;
  SQLCartaAviso.SQL.Add('CUPOM.EMPRICOD = ' + EmpresaPadrao);
  if not CheckPeriodoSPC.Checked then
    begin
      if (DateIniSPC.Date > 0) and (DateFimSPC.Date > 0) then
        begin
          SQLCartaAviso.SQL.Add(' AND CARTAAVISOSPC.AVSPDVENC >= "' + FormatDateTime('mm/dd/yyyy',DateIniSPC.Date) + '" AND ');
          SQLCartaAviso.SQL.Add('CARTAAVISOSPC.AVSPDVENC <= "' + FormatDateTime('mm/dd/yyyy',DateFimSPC.Date) + '"');
        end
      else
        begin
          Informa('Você deve selecionar um período para o filtro do SPC, ou marcar a opção "Desconsiderar"');
          Abort;
        end;
    end;
  SQLCartaAviso.SQL.Add('group by') ;
  SQLCartaAviso.SQL.Add('CLIEA13ID,') ;
  SQLCartaAviso.SQL.Add('CLIEA60RAZAOSOC,') ;
  SQLCartaAviso.SQL.Add('CLIEA60ENDRES,') ;
  SQLCartaAviso.SQL.Add('CLIEA60BAIRES,') ;
  SQLCartaAviso.SQL.Add('CLIEA60CIDRES,') ;
  SQLCartaAviso.SQL.Add('CLIEA2UFRES,') ;
  SQLCartaAviso.SQL.Add('CLIEA8CEPRES') ;
  SQLCartaAviso.SQL.Add('order by CLIEA60RAZAOSOC') ;
  SQLCartaAviso.Open ;

  if SQLCartaAviso.IsEmpty then
    begin
      ShowMessage('Não foi encontrado registros a serem impressos!');
      exit;
    end;
  
  ppTexto.LoadFromFile(DM.SQLConfigCrediarioCFCRA255PATHCART3A.Value) ;
  ReportCartas.Print ;
end;

procedure TFormTelaEnvioCartasAviso.MarcarComoEnviadoClick(
  Sender: TObject);
begin
  inherited;
  Mensagem.Visible := true ;
  Mensagem.Caption := 'Marcando Cartas de 1º aviso...' ;
  Mensagem.Refresh ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('update CARTAPRIMEIROAVISO') ;
  DM.SQLTemplate.SQL.Add('set PENDENTE="S", PRAVCENVIADO = "S"') ;
  DM.SQLTemplate.SQL.Add(' WHERE CUPOA13ID IN ');
  DM.SQLTemplate.SQL.Add('(Select CUPOA13ID From CUPOM WHERE EMPRICOD = ' + EmpresaPadrao + ' )');
  DM.SQLTemplate.ExecSQL ;

  Mensagem.Visible := false ;
  Mensagem.Caption := '' ;
  Mensagem.Refresh ;
  SQLPrimeiroAviso.Close ;
  SQLPrimeiroAviso.Open ;
  Informa('Cartas de 1º aviso foram marcadas com sucesso !') ;
end;

procedure TFormTelaEnvioCartasAviso.MenuItem4Click(Sender: TObject);
begin
  inherited;
  Mensagem.Visible := true ;
  Mensagem.Caption := 'Marcando Cartas de 2º aviso...' ;
  Mensagem.Refresh ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('update CARTASEGUNDOAVISO') ;
  DM.SQLTemplate.SQL.Add('set Pendente="S", SGAVCENVIADO = "S"') ;
  DM.SQLTemplate.SQL.Add(' WHERE CUPOA13ID IN ');
  DM.SQLTemplate.SQL.Add('(Select CUPOA13ID From CUPOM WHERE EMPRICOD = ' + EmpresaPadrao + ' )');
  DM.SQLTemplate.ExecSQL ;

  Mensagem.Visible := false ;
  Mensagem.Caption := '' ;
  Mensagem.Refresh ;
  SQLSegundoAviso.Close ;
  SQLSegundoAviso.Open ;
  Informa('Cartas de 2º aviso foram marcadas com sucesso !') ;
end;

procedure TFormTelaEnvioCartasAviso.MenuItem6Click(Sender: TObject);
begin
  inherited;
  Mensagem.Visible := true ;
  Mensagem.Caption := 'Marcando Cartas de SPC...' ;
  Mensagem.Refresh ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('update CARTAAVISOSPC') ;
  DM.SQLTemplate.SQL.Add('set Pendente="S", AVSPCENVIADO = "S"') ;
  DM.SQLTemplate.SQL.Add(' WHERE CUPOA13ID IN ');
  DM.SQLTemplate.SQL.Add('(Select CUPOA13ID From CUPOM WHERE EMPRICOD = ' + EmpresaPadrao + ' )');

  if not CheckPeriodoSPC.Checked then
    begin
      if (DateIniSPC.Date > 0) and (DateFimSPC.Date > 0) then
        begin
          DM.SQLTemplate.SQL.Add(' WHERE CARTAAVISOSPC.AVSPDVENC >= "' + FormatDateTime('mm/dd/yyyy',DateIniSPC.Date) + '" AND ');
          DM.SQLTemplate.SQL.Add('CARTAAVISOSPC.AVSPDVENC        <= "' + FormatDateTime('mm/dd/yyyy',DateFimSPC.Date) + '"');
        end
      else
        begin
          Informa('Você deve selecionar um período para o filtro do SPC, ou marcar a opção "Desconsiderar"');
          Abort;
        end;
    end;

  DM.SQLTemplate.ExecSQL ;

  Mensagem.Visible := false ;
  Mensagem.Caption := '' ;
  Mensagem.Refresh ;
  SQLAvisoSPC.Close ;
  SQLAvisoSPC.Open ;
  Informa('Cartas de SPC foram marcadas com sucesso !') ;
end;

procedure TFormTelaEnvioCartasAviso.SQLCartaAvisoCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  SQLCartaAvisoDATA.Value := FormatDateTime('ddddddddddddd', Now) ;
  {case SQLCartaAviso.Tag of
    1 : SQLCartaAvisoDATAPROCESSAMENTO.Value := SQLLocate('CARTAPRIMEIROAVISO', 'CTRCA13ID', 'PRAVDPROCESS', '"' + SQLCartaAvisoDATAPROCESSAMENTO.Value + '"') ;
    2 : SQLCartaAvisoDATAPROCESSAMENTO.Value := SQLCartaAviso.FieldByName('SGAVDPROCESS').AsString ;
    3 : SQLCartaAvisoDATAPROCESSAMENTO.Value := SQLCartaAviso.FieldByName('AVSPDPROCESS').AsString ;
  end ;}
  SQLCartaAvisoDATAPROCESSAMENTO.Value := FOrmatDAteTime('dd/mm/yyyy', Date) ;
end;

procedure TFormTelaEnvioCartasAviso.MenuItem2Click(Sender: TObject);
var
 I : Integer;
begin
  inherited;
  if PagePrincipal.ActivePage = TabAvisoSPCsemCab then
    begin
      TblListaSPC.Close;
      try
        TblListaSPC.DeleteTable;
        TblListaSPC.CreateTable;
      except
        TblListaSPC.CreateTable;
      end ;
        TblListaSPC.Open;

      SQLListaSPCAvulso.Close;
      SQLListaSPCAvulso.MacroByName('MFiltro').AsString  := '0=0';
      SQLListaSPCAvulso.MacroByName('MEmpresa').AsString := 'CONTASRECEBER.EMPRICOD = ' + EmpresaPadrao;
      if not CheckPeriodoSPC.Checked then
        begin
          if (DateIniSPC.Date > 0) and (DateFimSPC.Date > 0) then
            begin
              SQLListaSPCAvulso.MacroByName('MFiltro').AsString := 'CARTAAVISOSPC.AVSPDVENC >= "' + FormatDateTime('mm/dd/yyyy',DateIniSPC.Date) + '" AND ' +
                                                                   'CARTAAVISOSPC.AVSPDVENC <= "' + FormatDateTime('mm/dd/yyyy',DateFimSPC.Date) + '"';
            end
          else
            begin
              Informa('Você deve selecionar um período para o filtro do SPC ou marcar a opção "Desconsiderar"');
              Abort;
            end;
        end;

      SQLListaSPCAvulso.Open;

      Progress.Visible := true ;
      Mensagem.Visible := true ;
      Mensagem.Caption := 'Concatenando as parcelas para registro no SPC' ;
      Mensagem.Refresh;
      Progress.Position := 0;
      Progress.Max      := SQLListaSPCAvulso.RecordCount;

      SQLListaSPCAvulso.First;
      while not SQLListaSPCAvulso.Eof do
        begin
          if not TblListaSPC.Locate('CLIEA13ID;CONTRATO',VarArrayOF([SQLListaSPCAvulsoCLIEA13ID.AsString,SQLListaSPCAvulsoCONTRATO.AsString]),[]) then
            begin
              TblListaSPC.Append;
              for I := 0 to SQLListaSPCAvulso.FieldCount -1 do
                begin
                  TblListaSPC.FieldByName(SQLListaSPCAvulso.Fields[I].FieldName).AsVariant := SQLListaSPCAvulso.Fields[I].AsVariant;
                  if TblListaSPC.Fields[I].FieldName = 'CLIETOBS' then
                    TblListaSPC.Fields[I].AsString := '';
                end;
              TblListaSPC.Post;
            end;
          SQLListaSPCAvulso.Next;
          Progress.Position := Progress.Position + 1 ;
          Progress.Update;
          Application.ProcessMessages;
        end;

      TblEmpresa.Close;
      if TblEmpresa.Exists then
        begin
          TblEmpresa.DeleteTable;
        end;

      SQLEmpresa.Close;
      SQLEmpresa.MacroByName('MFiltro').Value := 'EMPRICOD = ' + EmpresaPadrao;
      SQLEmpresa.Open;

      BatchMoveEmpresa.Execute;

      ListaSPC.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Listagem SPC.rpt';
      ListaSPC.Execute;
      SQLListaSPCAvulso.Close;
    end
  else
    begin
      TblListaSPC.Close;
      try
        TblListaSPC.DeleteTable;
        TblListaSPC.CreateTable;
      except
        TblListaSPC.CreateTable;
      end ;
        TblListaSPC.Open;

      SQLListaSPC.Close;
      SQLListaSPC.MacroByName('MEmpresa').AsString  := 'CUPOM.EMPRICOD = ' + EmpresaPadrao;
      SQLListaSPC.MacroByName('MFiltro').AsString   := 'CLIEA13ID not in (Select CLIEA13ID From CARTAAVISOSPC where AVSPCENVIADO = "S")' ;
      if not CheckPeriodoSPC.Checked then
        begin
          if (DateIniSPC.Date > 0) and (DateFimSPC.Date > 0) then
            begin
              SQLListaSPC.MacroByName('MFiltro').AsString := 'CARTAAVISOSPC.AVSPDVENC >= "' + FormatDateTime('mm/dd/yyyy',DateIniSPC.Date) + '" AND ' +
                                                             'CARTAAVISOSPC.AVSPDVENC <= "' + FormatDateTime('mm/dd/yyyy',DateFimSPC.Date) + '"';
            end
          else
            begin
              Informa('Você deve selecionar um período para o filtro do SPC, ou marcar a opção "Desconsiderar"');
              Abort;
            end;
        end;

      SQLListaSPC.Open;

      Progress.Visible := true ;
      Mensagem.Visible := true ;
      Mensagem.Caption := 'Concatenando as parcelas para registro no SPC' ;
      Mensagem.Refresh;
      Progress.Position := 0;
      Progress.Max      := SQLListaSPC.RecordCount;

      SQLListaSPC.First;
      while not SQLListaSPC.Eof do
        begin
          if not TblListaSPC.Locate('CLIEA13ID;CONTRATO',VarArrayOF([SQLListaSPCCLIEA13ID.AsString,SQLListaSPCCONTRATO.AsString]),[]) then
            begin
              TblListaSPC.Append;
              for I := 0 to SQLListaSPC.FieldCount -1 do
                begin
                  TblListaSPC.FieldByName(SQLListaSPC.Fields[I].FieldName).AsVariant := SQLListaSPC.Fields[I].AsVariant;
                  if TblListaSPC.Fields[I].FieldName = 'CLIETOBS' then
                    TblListaSPC.Fields[I].AsString := '';
                end;
              TblListaSPC.Post;
            end;
          SQLListaSPC.Next;
          Progress.Position := Progress.Position + 1 ;
          Progress.Update;
          Application.ProcessMessages;
        end;

      TblEmpresa.Close;
      if TblEmpresa.Exists then
        begin
          TblEmpresa.DeleteTable;
        end;

      SQLEmpresa.Close;
      SQLEmpresa.MacroByName('MFiltro').Value := 'EMPRICOD = ' + EmpresaPadrao;
      SQLEmpresa.Open;

      BatchMoveEmpresa.Execute;

      ListaSPC.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Listagem SPC.rpt';
      ListaSPC.Execute;
      SQLListaSPC.Close;
    end;
  Mensagem.Caption := 'Geração das fichas de inclusão para SPC concluído!' ;
  Mensagem.Refresh;
end;

procedure TFormTelaEnvioCartasAviso.Button4Click(Sender: TObject);
begin
  inherited;
  GroupPeriodoSPC.Visible  := False;

  BtnDiversos.DropDownMenu := PopupDiversosAviCobr ;
  PagePrincipal.ActivePage := TabAvisoCobranca ;
  LabelTitulo.Caption      := 'Envio de Cartas de Aviso/Aviso Cobrança' ;

  LblEnviados.Caption := 'Enviados: '   + IntToStr(SQLRecCount('CARTAAVISOCOBRANCA', 'where AVCOCENVIADO = "S"')) ;
  LblPendentes.Caption := 'Pendentes: ' + IntToStr(SQLRecCount('CARTAAVISOCOBRANCA', 'where AVCOCENVIADO <> "S"'  +
                                                               ' and CLIEA13ID in (SELECT CLIEA13ID FROM CLIENTE'+
                                                               ' WHERE EMPRICOD = ' + EmpresaPadrao +')'));

end;

procedure TFormTelaEnvioCartasAviso.VerTodosDocumentosAV1Click(
  Sender: TObject);
begin
  inherited;
  SQLPrimeiroAviso.Close ;
  SQLPrimeiroAviso.MacroByName('MEnviadas').Value := '0=0' ;
  SQLPrimeiroAviso.Open ;
  VerTodosDocumentosAv1.Checked := true ;
end;

procedure TFormTelaEnvioCartasAviso.VerDocumentosEnviadosAv1Click(
  Sender: TObject);
begin
  inherited;
  SQLPrimeiroAviso.Close ;
  SQLPrimeiroAviso.MacroByName('MEnviadas').Value := 'CARTAPRIMEIROAVISO.PRAVCENVIADO = "S"' ;
  SQLPrimeiroAviso.Open ;
  VerDocumentosEnviadosAv1.Checked := true ;
end;

procedure TFormTelaEnvioCartasAviso.VerDocumentosNaoEnviadosAv1Click(
  Sender: TObject);
begin
  inherited;
  SQLPrimeiroAviso.Close ;
  SQLPrimeiroAviso.MacroByName('MEnviadas').Value := 'CARTAPRIMEIROAVISO.PRAVCENVIADO = "N"' ;
  SQLPrimeiroAviso.Open ;
  VerDocumentosNaoEnviadosAv1.Checked := true ;
end;

procedure TFormTelaEnvioCartasAviso.VerTodosDocumentosAV2Click(
  Sender: TObject);
begin
  inherited;
  SQLSegundoAviso.Close ;
  SQLSegundoAviso.MacroByName('MEnviadas').Value := '0=0' ;
  SQLSegundoAviso.Open ;
  VerTodosDocumentosAV2.Checked := true ;
end;

procedure TFormTelaEnvioCartasAviso.VerDocumentosEnviadosAV2Click(
  Sender: TObject);
begin
  inherited;
  SQLSegundoAviso.Close ;
  SQLSegundoAviso.MacroByName('MEnviadas').Value := 'CARTASEGUNDOAVISO.SGAVCENVIADO = "S"' ;
  SQLSegundoAviso.Open ;
  VerDocumentosEnviadosAV2.Checked := true ;
end;

procedure TFormTelaEnvioCartasAviso.VerDocumentosNaoEnviadosAV2Click(
  Sender: TObject);
begin
  inherited;
  SQLSegundoAviso.Close ;
  SQLSegundoAviso.MacroByName('MEnviadas').Value := 'CARTASEGUNDOAVISO.SGAVCENVIADO = "N"' ;
  SQLSegundoAviso.Open ;
  VerDocumentosNaoEnviadosAV2.Checked := true ;
end;

procedure TFormTelaEnvioCartasAviso.VerTodosDocumentosAV3Click(
  Sender: TObject);
begin
  inherited;
  SQLAvisoSPC.Close ;
  SQLAvisoSPC.MacroByName('MEnviadas').Value := '0=0' ;
  SQLAvisoSPC.Open ;
  VerTodosDocumentosAV3.Checked := true ;
end;

procedure TFormTelaEnvioCartasAviso.VerDocumentosEnviadosAV3Click(
  Sender: TObject);
begin
  inherited;
  SQLAvisoSPC.Close ;
  SQLAvisoSPC.MacroByName('MEnviadas').Value := 'CARTAAVISOSPC.AVSPCENVIADO = "S"' ;
  SQLAvisoSPC.Open ;
  VerDocumentosEnviadosAV3.Checked := true ;
end;

procedure TFormTelaEnvioCartasAviso.VerDocumentosNaoEnviadosAV3Click(
  Sender: TObject);
begin
  inherited;
  SQLAvisoSPC.Close ;
  // SQLAvisoSPC.MacroByName('MEnviadas').Value := 'CARTAAVISOSPC.AVSPCENVIADO = "N"' ; {Adilson Mudei para nem aparecer na lista}
  SQLAvisoSPC.MacroByName('MEnviadas').Value := 'CLIEA13ID not in (Select CLIEA13ID From CARTAAVISOSPC where AVSPCENVIADO = "S")' ;
  SQLAvisoSPC.Open ;
  VerDocumentosNaoEnviadosAV3.Checked := true ;
end;

procedure TFormTelaEnvioCartasAviso.DBGrid3TitleClick(Column: TColumn);
begin
  inherited;
  SQLAvisoCobranca.Close ;
  SQLAvisoCobranca.MacroByName('MOrdem').Value := Column.Field.FieldName ;
  SQLAvisoCobranca.Open ;
end;

procedure TFormTelaEnvioCartasAviso.VerTodosDocumentosAV4Click(
  Sender: TObject);
begin
  inherited;
  SQLAvisoCobranca.Close ;
  SQLAvisoCobranca.MacroByName('MEnviadas').Value := '0=0' ;
  SQLAvisoCobranca.Open ;
  VerTodosDocumentosAV4.Checked := true ;
end;

procedure TFormTelaEnvioCartasAviso.VerDocumentosEnviadosAV4Click(
  Sender: TObject);
begin
  inherited;
  SQLAvisoCobranca.Close ;
  SQLAvisoCobranca.MacroByName('MEnviadas').Value := 'AVCOCENVIADO = "S"' ;
  SQLAvisoCobranca.Open ;
  VerDocumentosEnviadosAV4.Checked := true ;
end;

procedure TFormTelaEnvioCartasAviso.VerDocumentosNoEnviadosAV4Click(
  Sender: TObject);
begin
  inherited;
  SQLAvisoCobranca.Close ;
  SQLAvisoCobranca.MacroByName('MEnviadas').Value := 'AVCOCENVIADO = "N"' ;
  SQLAvisoCobranca.Open ;
  VerDocumentosNoEnviadosAV4.Checked := true ;
end;

procedure TFormTelaEnvioCartasAviso.CriarumRegistrodesteclienteemPrimeiroAviso1Click(
  Sender: TObject);
begin
  inherited;
// Adilson
  if Pergunta('NAO','Deseja realmente criar um registro do cliente ' + SQLSegundoAvisoSGAVA60NOMECLI.AsString + ' em Primeiro Aviso ?') then
    begin
      if not SQLPrimeiroAviso.Active then SQLCartaPrimeiroAviso.Open;
      if not SQLPrimeiroAviso.Locate('CLIEA13ID',SQLSegundoAvisoCLIEA13ID.AsString,[]) then
        begin
          if SQLCartaSegundoAviso.Locate('CLIEA13ID',SQLSegundoAvisoCLIEA13ID.AsString,[]) then
            begin
              SQLCartaPrimeiroAviso.Append;
              SQLCartaPrimeiroAvisoCLIEA13ID.AsString       := SQLCartaSegundoAvisoCLIEA13ID.AsString;
              SQLCartaPrimeiroAvisoCTRCA13ID.AsString       := SQLCartaSegundoAvisoCTRCA13ID.AsString;
              SQLCartaPrimeiroAvisoCTRCINROPARC.AsString    := SQLCartaSegundoAvisoCTRCINROPARC.AsString;
              SQLCartaPrimeiroAvisoCTRCN2VLR.AsString       := SQLCartaSegundoAvisoCTRCN2VLR.AsString;
              SQLCartaPrimeiroAvisoCUPOA13ID.AsString       := SQLCartaSegundoAvisoCUPOA13ID.AsString;
              SQLCartaPrimeiroAvisoPENDENTE.AsString        := SQLCartaSegundoAvisoPENDENTE.AsString;
              SQLCartaPrimeiroAvisoPRAVA60NOMECLI.AsString  := SQLCartaSegundoAvisoSGAVA60NOMECLI.AsString;
              SQLCartaPrimeiroAvisoPRAVCENVIADO.AsString    := 'N';
              SQLCartaPrimeiroAvisoPRAVDPROCESS.AsDateTime  := Now;
              SQLCartaPrimeiroAvisoPRAVDVENC.AsString       := SQLCartaSegundoAvisoSGAVDVENC.AsString;
              SQLCartaPrimeiroAvisoPRAVIDIASATRASO.AsString := SQLCartaSegundoAvisoSGAVIDIASATRASO.AsString;
              SQLCartaPrimeiroAvisoREGISTRO.AsString        := SQLCartaSegundoAvisoREGISTRO.AsString;
              SQLCartaPrimeiroAviso.Post;
              try
                SQLCartaPrimeiroAviso.ApplyUpdates;
              except
                On E:Exception do
                  begin
                    ShowMessage('Problemas ao gravar, anote o ERRO ' + E.Message);
                    SQLCartaPrimeiroAviso.CancelUpdates;
                  end;
              end;
              SQLSegundoAviso.Close;
              SQLSegundoAviso.MacroByName('MEnviadas').Value := '0=0' ;
              SQLPrimeiroAviso.MacroByName('MOrdem').Value := 'CARTAPRIMEIROAVISO.PRAVA60NOMECLI' ;
              SQLSegundoAviso.Open ;
            end;
        end
      else
        Informa('Este Cliente já consta nos registros de Primeiro Aviso');
    end;

// Jonas
{  if Pergunta('NAO','Deseja realmente criar um registro do cliente ' + SQLSegundoAvisoSGAVA60NOMECLI.AsString + ' em Primeiro Aviso ?') then
    begin
      if not SQLPrimeiroAviso.Active then SQLCartaPrimeiroAviso.Open;
      if not SQLPrimeiroAviso.Locate('CLIEA13ID',SQLSegundoAvisoCLIEA13ID.AsString,[]) then
        begin
          SQLCartaPrimeiroAviso.Append;
          SQLCartaPrimeiroAvisoCLIEA13ID.AsString := SQLCartaSegundoAvisoCLIEA13ID.AsString;
          SQLCartaPrimeiroAvisoCTRCA13ID.AsString := SQLCartaSegundoAvisoCTRCA13ID.AsString;
          SQLCartaPrimeiroAvisoCTRCINROPARC.AsString := SQLCartaSegundoAvisoCTRCINROPARC.AsString;
          SQLCartaPrimeiroAvisoCTRCN2VLR.AsString := SQLCartaSegundoAvisoCTRCN2VLR.AsString;
          SQLCartaPrimeiroAvisoCUPOA13ID.AsString := SQLCartaSegundoAvisoCUPOA13ID.AsString;
          SQLCartaPrimeiroAvisoPENDENTE.AsString := SQLCartaSegundoAvisoPENDENTE.AsString;
          SQLCartaPrimeiroAvisoPRAVA60NOMECLI.AsString := SQLCartaSegundoAvisoSGAVA60NOMECLI.AsString;
          SQLCartaPrimeiroAvisoPRAVCENVIADO.AsString := 'N';
          SQLCartaPrimeiroAvisoPRAVDPROCESS.AsDateTime := Now;
          SQLCartaPrimeiroAvisoPRAVDVENC.AsString := SQLCartaSegundoAvisoSGAVDVENC.AsString;
          SQLCartaPrimeiroAvisoPRAVIDIASATRASO.AsString := SQLCartaSegundoAvisoSGAVIDIASATRASO.AsString;
          SQLCartaPrimeiroAvisoREGISTRO.AsString := SQLCartaSegundoAvisoREGISTRO.AsString;
          SQLCartaPrimeiroAviso.Post;
          try
            SQLCartaPrimeiroAviso.ApplyUpdates;
          except
            On E:Exception do
              begin
                ShowMessage('Problemas ao gravar, anote o ERRO ' + E.Message);
                SQLCartaPrimeiroAviso.CancelUpdates;
              end;
          end;
          SQLSegundoAviso.Close;
          SQLSegundoAviso.MacroByName('MEnviadas').Value := '0=0' ;
          SQLPrimeiroAviso.MacroByName('MOrdem').Value := 'CARTAPRIMEIROAVISO.PRAVA60NOMECLI' ;
          SQLSegundoAviso.Open ;
        end
      else
        Informa('Este Cliente já consta nos registros de Primeiro Aviso');

    end;}
end;

procedure TFormTelaEnvioCartasAviso.DSSQLPrimeiroAvisoDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  SQLPrimeiroAvisoParcelas.Close;
  SQLPrimeiroAvisoParcelas.MacroByName('MCliente').AsString := 'CLIEA13ID = "' + SQLPrimeiroAvisoCLIEA13ID.AsString + '"';
  SQLPrimeiroAvisoParcelas.MacroByName('MOrdem').AsString := 'CUPOA13ID, CTRCINROPARC';
  SQLPrimeiroAvisoParcelas.Open;
end;

procedure TFormTelaEnvioCartasAviso.DSSQLSegundoAvisoDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  SQLSegundoAvisoParcelas.Close;
  SQLSegundoAvisoParcelas.MacroByName('MCliente').AsString := 'CLIEA13ID = "' + SQLSegundoAvisoCLIEA13ID.AsString + '"';
  SQLSegundoAvisoParcelas.MacroByName('MOrdem').AsString   := 'CUPOA13ID, CTRCINROPARC';
  SQLSegundoAvisoParcelas.Open;
end;

procedure TFormTelaEnvioCartasAviso.DSSQLAvisoSPCDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  SQLAvisoSPCParcelas.Close;
  SQLAvisoSPCParcelas.MacroByName('MCliente').AsString   := 'CLIEA13ID = "' + SQLAvisoSPCCLIEA13ID.AsString + '"';
  SQLAvisoSPCParcelas.MacroByName('MOrdem').AsString     := 'CUPOA13ID, CTRCINROPARC';
  SQLAvisoSPCParcelas.Open;
end;

procedure TFormTelaEnvioCartasAviso.DSSQLAvisoCobrancaDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  SQLAvisoCobrancaParcelas.Close;
  SQLAvisoCobrancaParcelas.MacroByName('MCliente').AsString  := 'CLIEA13ID = "' + SQLAvisoCobrancaCLIEA13ID.AsString + '"';
  SQLAvisoCobrancaParcelas.MacroByName('MOrdem').AsString    := 'CUPOA13ID, CTRCINROPARC';
  SQLAvisoCobrancaParcelas.Open;
end;

procedure TFormTelaEnvioCartasAviso.DBGridSegundoAvisoTitleClick(Column: TColumn);
begin
  inherited;
  SQLSegundoAvisoParcelas.Close ;
  SQLSegundoAvisoParcelas.MacroByName('MOrdem').Value := Column.Field.FieldName ;
  SQLSegundoAvisoParcelas.Open ;
end;

procedure TFormTelaEnvioCartasAviso.DBGridSPCTitleClick(Column: TColumn);
begin
  inherited;
  SQLAvisoSPCParcelas.Close ;
  SQLAvisoSPCParcelas.MacroByName('MOrdem').Value := Column.Field.FieldName ;
  SQLAvisoSPCParcelas.Open ;
end;

procedure TFormTelaEnvioCartasAviso.DBGridCobrancaTitleClick(Column: TColumn);
begin
  inherited;
  SQLAvisoCobrancaParcelas.Close ;
  SQLAvisoCobrancaParcelas.MacroByName('MOrdem').Value := Column.Field.FieldName ;
  SQLAvisoCobrancaParcelas.Open ;
end;
procedure TFormTelaEnvioCartasAviso.LancaHistoricoCliente(IDCliente, IDCupom, IDContasReceber, Parcela, Historico : String);
var
  SQLHistorico, SQLIncremento : TRxQuery;
  NextCodigo : Integer;
  Sair : Boolean;
begin
  SQLHistorico := TRxQuery.Create(DM);
  SQLHistorico.DatabaseName := 'DB';
  SQLIncremento := TRxQuery.Create(DM);
  SQLIncremento.DatabaseName := 'DB';
  Sair := False;
  While not Sair do
    begin
      SQLIncremento.Close;
      SQLIncremento.SQL.Clear;
      SQLIncremento.SQL.ADD('SELECT MAX(CLHTICOD) FROM CLIENTEHISTORICO WHERE CLIEA13ID  = "' + IDCliente + '"');
      SQLIncremento.Open;
      //RETORNA ULTIMO CODIGO DA TABELA
      if SQLIncremento.IsEmpty then
        NextCodigo := 1
      else
        NextCodigo := SQLIncremento.FieldByName('MAX').AsInteger + 1;
      /////////////////////////////////
      SQLHistorico.Close;
      SQLHistorico.SQL.Clear;
      SQLHistorico.SQL.Add('INSERT INTO CLIENTEHISTORICO (');
      SQLHistorico.SQL.Add('CLIEA13ID , ');
      SQLHistorico.SQL.Add('CLHTICOD  , ');
      SQLHistorico.SQL.Add('CLHTDEMIS , ');
      SQLHistorico.SQL.Add('CLHTTHISTORICO , ');
      SQLHistorico.SQL.Add('CUPOA13ID , ');
      SQLHistorico.SQL.Add('CTRCA13ID , ');
      SQLHistorico.SQL.Add('CTRCINROPARC , ');
      SQLHistorico.SQL.Add('PENDENTE , ');
      SQLHistorico.SQL.Add('REGISTRO ');
      SQLHistorico.SQL.Add(') ');
      SQLHistorico.SQL.Add('VALUES (');
      SQLHistorico.SQL.Add('"' + IDCliente + '" , ');
      SQLHistorico.SQL.Add(IntToStr(NextCodigo) + ' , ');
      SQLHistorico.SQL.Add('"' + FormatDateTime('mm/dd/yyyy',Now) + '" , ');
      SQLHistorico.SQL.Add('"' + Historico + '" , ');
      if IDCupom <> '' then
        SQLHistorico.SQL.Add('"' + IDCupom + '" , ')
      else
        SQLHistorico.SQL.Add('Null , ');
      if IDContasReceber <> '' then
        SQLHistorico.SQL.Add('"' + IDContasReceber + '" , ')
      else
        SQLHistorico.SQL.Add('Null , ');
      if Parcela <> '' then
        SQLHistorico.SQL.Add(Parcela + ' , ')
      else
        SQLHistorico.SQL.Add('Null , ');

      SQLHistorico.SQL.Add('"S" , ');
      SQLHistorico.SQL.Add('"' +FormatDateTime('mm/dd/yyyy hh:nn:ss',Now)+ '")');
      try
        SQLHistorico.ExecSQL;
        Sair := True;
      except
         on E:Exception do
           begin
             ShowMessage('Problemas ao gravar histórico, anote o ERRO: ' + E.Message);
             Inc(NextCodigo);
           end;
      end
    end;
    SQLHistorico.Close;
    SQLHistorico.Free;
    SQLIncremento.Close;
    SQLIncremento.Free;
end;
procedure TFormTelaEnvioCartasAviso.DBGridPrimeiroAvisoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_Return then
    begin
      LancaHistorico(SQLPrimeiroAvisoCLIEA13ID.AsString,
                     SQLPrimeiroAvisoParcelasCUPOA13ID.AsString,
                     SQLPrimeiroAvisoParcelasCTRCA13ID.AsString,
                     SQLPrimeiroAvisoParcelasCTRCINROPARC.AsString);
    end;
end;

procedure TFormTelaEnvioCartasAviso.LancaHistorico(IDCliente,IDCupom,IDContasReceber,Parcela : String);
begin
  Application.CreateForm(TFormTelaClienteHistorico,FormTelaClienteHistorico);
  FormTelaClienteHistorico.Cliente       := IDCliente;
  FormTelaClienteHistorico.Cupom         := IDCupom;
  FormTelaClienteHistorico.ContasReceber := IDcontasReceber;
  FormTelaClienteHistorico.Parcela       := Parcela;
  FormTelaClienteHistorico.SQLTemplate.Close;
  FormTelaClienteHistorico.SQLTemplate.ParamByName('Cliente').AsString := IDCliente;
  FormTelaClienteHistorico.SQLTemplate.ParamByName('Cupom').AsString   := IDCupom;
  FormTelaClienteHistorico.SQLTemplate.Open;
  FormTelaClienteHistorico.ShowModal;
  FormTelaClienteHistorico.Close;
  FormTelaClienteHistorico.Free;
end;
procedure TFormTelaEnvioCartasAviso.DBGridSegundoAvisoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_Return then
    LancaHistorico(SQLSegundoAvisoCLIEA13ID.AsString,
                   SQLSegundoAvisoParcelasCUPOA13ID.AsString,
                   SQLSegundoAvisoParcelasCTRCA13ID.AsString,
                   SQLSegundoAvisoParcelasCTRCINROPARC.AsString);
end;

procedure TFormTelaEnvioCartasAviso.DBGridSPCKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_Return then
    LancaHistorico(SQLAvisoSPCCLIEA13ID.AsString,
                   SQLAvisoSPCParcelasCUPOA13ID.AsString,
                   SQLAvisoSPCParcelasCTRCA13ID.AsString,
                   SQLAvisoSPCParcelasCTRCINROPARC.AsString);
end;

procedure TFormTelaEnvioCartasAviso.DBGridCobrancaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_Return then
    LancaHistorico(SQLAvisoCobrancaCLIEA13ID.AsString,
                   SQLAvisoCobrancaParcelasCUPOA13ID.AsString,
                   SQLAvisoCobrancaParcelasCTRCA13ID.AsString,
                   SQLAvisoCobrancaParcelasCTRCINROPARC.AsString);
end;

procedure TFormTelaEnvioCartasAviso.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
//  inherited;
end;

procedure TFormTelaEnvioCartasAviso.SQLPrimeiroAvisoParcelasNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.Cancel;
end;

procedure TFormTelaEnvioCartasAviso.SQLSegundoAvisoParcelasNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.Cancel;
end;

procedure TFormTelaEnvioCartasAviso.EnviarDiretoSPC1Click(Sender: TObject);
begin
  inherited;
  try
    DM.DB.StartTransaction;

    SQLCartaAvisoSPC.Append ;
    SQLCartaAvisoSPCCLIEA13ID.Value       := SQLPrimeiroAvisoCLIEA13ID.Value ;
    SQLCartaAvisoSPCCTRCA13ID.Value       := SQLPrimeiroAvisoParcelasCTRCA13ID.Value ;
    SQLCartaAvisoSPCCUPOA13ID.Value       := SQLPrimeiroAvisoParcelasCUPOA13ID.Value ;
    SQLCartaAvisoSPCCTRCINROPARC.Value    := SQLPrimeiroAvisoParcelasCTRCINROPARC.Value ;
    SQLCartaAvisoSPCCTRCN2VLR.Value       := SQLPrimeiroAvisoParcelasCTRCN2VLR.Value ;
    SQLCartaAvisoSPCAVSPA60NOMECLI.Value  := SQLPrimeiroAvisoPRAVA60NOMECLI.Value ;
    SQLCartaAvisoSPCAVSPCENVIADO.Value    := 'N' ;
    SQLCartaAvisoSPCAVSPDPROCESS.Value    := DtBase.Date ;
    SQLCartaAvisoSPCAVSPDVENC.Value       := SQLPrimeiroAvisoParcelasPRAVDVENC.Value ;
    SQLCartaAvisoSPCAVSPIDIASATRASO.AsFloat := SQLPrimeiroAvisoParcelasPRAVIDIASATRASO.AsFloat ;
    SQLCartaAvisoSPCPENDENTE.Value        := 'S' ;
    SQLCartaAvisoSPCREGISTRO.Value        := Now ;
    SQLCartaAvisoSPC.Post ;
    // LANCA HISTORICO DO CLIENTE
    {LancaHistoricoCliente(SQLCartaAvisoSPCCLIEA13ID.AsString,
                          SQLCartaAvisoSPCCUPOA13ID.AsString,
                          SQLCartaAvisoSPCCTRCA13ID.AsString,
                          SQLCartaAvisoSPCCTRCINROPARC.AsString,
                          'INCLUIDO EM SPC, CUPOM: ' + SQLCartaAvisoSPCCUPOA13ID.AsString + ' PARCELA: ' + SQLCartaAvisoSPCCTRCINROPARC.AsString);}

  except
    on E: Exception do
    begin
      if Pos('Key violation.', E.Message) > 0 then
      else
        Informa('Problemas ao incluir contrato ' + SQLCartaAvisoSPCCUPOA13ID.AsString + ' em SPC:' + #13 + E.Message) ;
    end ;
  end ;

  try
    SQLCartaAvisoSPC.ApplyUpdates;
    Dm.DB.Commit;
  except
    on E:Exception do
      begin
        ShowMessage('Problemas ao gravar cartas de avisos, anote o ERRO : ' + E.Message);
        SQLCartaAvisoSPC.CancelUpdates;
        Dm.DB.Rollback;
      end;
  end;
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('Delete From CARTAPRIMEIROAVISO') ;
  DM.SQLTemplate.SQL.Add('Where CUPOA13ID = "' + SQLPrimeiroAvisoParcelasCUPOA13ID.Value + '"') ;
  DM.SQLTemplate.SQL.Add('And CTRCINROPARC = ' + SQLPrimeiroAvisoParcelasCTRCINROPARC.AsString) ;
  DM.SQLTemplate.ExecSQL ;

  SQLPrimeiroAviso.Close;
  SQLPrimeiroAviso.Open;
  SQLAvisoSPC.Close;
  SQLAvisoSPC.Open
end;

procedure TFormTelaEnvioCartasAviso.Button6Click(Sender: TObject);
begin
  inherited;
  BtnDiversos.DropDownMenu := PopupDiversosAviSPC ;
  GroupPeriodoSPC.Visible  := True;
  PagePrincipal.ActivePage := TabAvisoSPCsemCab ;
  LabelTitulo.Caption      := 'Envio de Cartas de Aviso/Aviso SPC' ;

  LblEnviados.Caption := 'Enviados: ' + IntToStr(SQLRecCount('CARTAAVISOSPC', 'where AVSPCENVIADO = "S"')) ;
  LblPendentes.Caption := 'Pendentes: ' + IntToStr(SQLRecCount('CARTAAVISOSPC', 'where AVSPCENVIADO <> "S"' +
                                                               ' and CLIEA13ID in (SELECT CLIEA13ID FROM CLIENTE'+
                                                               ' WHERE EMPRICOD = ' + EmpresaPadrao +')'));

end;

procedure TFormTelaEnvioCartasAviso.ReportCartasPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ReportCartas.PreviewForm.WindowState := wsMaximized;
end;

end.
