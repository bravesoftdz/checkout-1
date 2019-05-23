unit CadastroNotaFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, RxDBComb, ToolEdit, RXDBCtrl, DBCtrls, VarSys, FormResources,
  EDBNum, RxLookup, CurrEdit, UCrpe32, Placemnt, MemTable, RDprint, xmldom,
  XMLIntf, msxmldom, XMLDoc, FileCtrl, shellapi, Inifiles, ACBrNFe, TFlatButtonUnit,
  // units nfe acbr
  pcnConversao, ACBrUtil, SHDocVw, OleCtrls, ACBrNFeDANFEClass,
  ACBrNFeDANFERave, Serial, AdvGlowButton, FMTBcd, DBClient, Provider,
  SqlExpr, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit,
  cxDBEdit, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TFormCadastroNotaFiscal = class(TFormCadastroTEMPLATE)
    Button5: TRxSpeedButton;
    SQLTemplateNOFIA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateNOFIICOD: TIntegerField;
    SQLTemplateEMPRICODDEST: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateFORNICOD: TIntegerField;
    SQLTemplateSERIA5COD: TStringField;
    SQLTemplateNOFIINUMERO: TIntegerField;
    SQLTemplateNOFICSTATUS: TStringField;
    SQLTemplateNOFIDEMIS: TDateTimeField;
    SQLTemplateCFOPA5COD: TStringField;
    SQLTemplateOPESICOD: TIntegerField;
    SQLTemplateNOFIN2BASCALCSUBS: TBCDField;
    SQLTemplateNOFIN2BASCALCCIPI: TBCDField;
    SQLTemplateNOFIN2VLRIPI: TBCDField;
    SQLTemplateNOFIN2VLRDESC: TBCDField;
    SQLTemplateNOFIN2VLRFRETE: TBCDField;
    SQLTemplateNOFIN2VLRSEGURO: TBCDField;
    SQLTemplateNOFIN2VLROUTRASDESP: TBCDField;
    SQLTemplateNOFIN2VLRSERVICO: TBCDField;
    SQLTemplateNOFIN2VLRISSQN: TBCDField;
    SQLTemplateNOFIN2VLRPRODUTO: TBCDField;
    SQLTemplateNOFIN2VLRNOTA: TBCDField;
    SQLTemplateNOFICFRETEPORCONTA: TStringField;
    SQLTemplateTRANICOD: TIntegerField;
    SQLTemplateNOFIN3QUANT: TBCDField;
    SQLTemplateNOFIA15MARCA: TStringField;
    SQLTemplateNOFIN3PESBRUT: TBCDField;
    SQLTemplateNOFIN3PESLIQ: TBCDField;
    SQLTemplateNOFIA8PLACAVEIC: TStringField;
    SQLTemplatePLRCICOD: TIntegerField;
    SQLTemplatePLCTA15COD: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePDVDA13ID: TStringField;
    SQLTemplateVENDICOD: TIntegerField;
    MnImportarDadosdoPedidodeVenda: TMenuItem;
    MnCancelarNotadeFiscal: TMenuItem;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBDateEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ComboStatus: TRxDBComboBox;
    Label24: TLabel;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60NOMEFANT: TStringField;
    SQLEmpresaEMPRA2UF: TStringField;
    SQLFornecedor: TRxQuery;
    SQLFornecedorFORNICOD: TIntegerField;
    SQLFornecedorFORNA2UF: TStringField;
    SQLFornecedorFORNA60RAZAOSOC: TStringField;
    SQLTransportadora: TRxQuery;
    SQLTransportadoraTRANICOD: TIntegerField;
    SQLTransportadoraTRANA60RAZAOSOC: TStringField;
    SQLPlanoContas: TRxQuery;
    SQLPlanoContasPLCTA15COD: TStringField;
    SQLPlanoContasPLCTA60DESCR: TStringField;
    SQLPlanoRecebimento: TRxQuery;
    SQLPlanoRecebimentoPLRCICOD: TIntegerField;
    SQLPlanoRecebimentoPLRCA60DESCR: TStringField;
    SQLTemplateTransportadoraLookup: TStringField;
    SQLTemplateContaLookUp: TStringField;
    SQLTemplateCliFornEmpEnderecoLookUp: TStringField;
    SQLTemplateCliFornEmpEstadoLookUp: TStringField;
    SQLTemplateCliFornEmpBairroLookUp: TStringField;
    SQLTemplateCliFornEmpCEPLookUp: TStringField;
    SQLTemplateCliFornEmpCGCCPFLookUp: TStringField;
    SQLTemplateCliFornEmpIERGLookUp: TStringField;
    SQLTemplateCliFornEmpCidadeLookUp: TStringField;
    SQLTemplateCliFornEmpFoneLookUp: TStringField;
    SQLVendedor: TRxQuery;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    SQLTemplateVendedorLookUp: TStringField;
    Label14: TLabel;
    BtnVendedor: TSpeedButton;
    SQLTemplatePlanoRecebimentoLookUp: TStringField;
    GroupBoxCliFornEmp: TGroupBox;
    BtnCliFornEmp: TSpeedButton;
    DBEditCod: TDBEdit;
    DBEdit17: TDBEdit;
    DBEditCGCCPF: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit13: TDBEdit;
    EditIERG: TDBEdit;
    DBEdit14: TDBEdit;
    SQLTemplateCliFornEmpLookUp: TStringField;
    Label15: TLabel;
    DBMemo1: TDBMemo;
    Label32: TLabel;
    DBEditPV: TDBEdit;
    SQLTemplateNOFIA30NROPEDCOMP: TStringField;
    SQLTemplateNOFIA30COMPRADOR: TStringField;
    BtnPedido: TSpeedButton;
    PaginaImpostos: TTabSheet;
    Button6: TRxSpeedButton;
    GroupBox2: TGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label42: TLabel;
    Label44: TLabel;
    Label49: TLabel;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit42: TDBEdit;
    Label41: TLabel;
    SQLTemplateNOFIN2VLRICMSFRETE: TBCDField;
    SQLNotaFiscalItens: TRxQuery;
    ImprimirEtiquetasdeCdigodeBarras1: TMenuItem;
    SQLTemplateEmpresaUFLookUp: TStringField;
    SQLTemplateCampoImpostoLookUp: TStringField;
    SQLTemplateCalcIPILookUp: TStringField;
    SQLTemplateCalcICMSLookUp: TStringField;
    SQLTemplateOrigemDestinoLookUp: TStringField;
    SQLPlano: TRxQuery;
    SQLPlanoParcela: TRxQuery;
    SQLParcelasPrazoVendaTemp: TRxQuery;
    SQLParcelasPrazoVendaTempTERMICOD: TIntegerField;
    SQLParcelasPrazoVendaTempDATAVENCTO: TDateTimeField;
    SQLParcelasPrazoVendaTempNROPARCELA: TIntegerField;
    SQLParcelasPrazoVendaTempVALORVENCTO: TBCDField;
    SQLParcelasPrazoVendaTempNUMEICOD: TIntegerField;
    SQLParcelasPrazoVendaTempNumerarioLookup: TStringField;
    PaginaFinanceiro: TTabSheet;
    DSSQLParcelasPrazoVendaTemp: TDataSource;
    SQLNumerarioVista: TRxQuery;
    SQLNumerarioPrazo: TRxQuery;
    DSSQLNumerarioVista: TDataSource;
    DSSQLNumerarioPrazo: TDataSource;
    Button4: TRxSpeedButton;
    SQLContasReceber: TRxQuery;
    DSSQLContasReceber: TDataSource;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberTERMICOD: TIntegerField;
    SQLContasReceberCTRCICOD: TIntegerField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCTRCCSTATUS: TStringField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCN2VLR: TBCDField;
    SQLContasReceberCTRCN2DESCFIN: TBCDField;
    SQLContasReceberNUMEICOD: TIntegerField;
    SQLContasReceberPORTICOD: TIntegerField;
    SQLContasReceberCTRCN2TXJURO: TBCDField;
    SQLContasReceberCTRCN2TXMULTA: TBCDField;
    SQLContasReceberCTRCA5TIPOPADRAO: TStringField;
    SQLContasReceberCTRCDULTREC: TDateTimeField;
    SQLContasReceberCTRCN2TOTREC: TBCDField;
    SQLContasReceberCTRCN2TOTJUROREC: TBCDField;
    SQLContasReceberCTRCN2TOTMULTAREC: TBCDField;
    SQLContasReceberCTRCN2TOTDESCREC: TBCDField;
    SQLContasReceberEMPRICODULTREC: TIntegerField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberTPDCICOD: TIntegerField;
    SQLContasReceberPLCTA15COD: TStringField;
    SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField;
    SQLContasReceberNOFIA13ID: TStringField;
    SQLContasReceberCTRCDEMIS: TDateTimeField;
    SQLContasReceberPENDENTE: TStringField;
    SQLContasReceberREGISTRO: TDateTimeField;
    SQLContasReceberCTRCDREABILSPC: TDateTimeField;
    SQLContasReceberCTRCN2TOTMULTACOBR: TBCDField;
    SQLContasReceberBANCA5CODCHQ: TStringField;
    SQLContasReceberCTRCA10AGENCIACHQ: TStringField;
    SQLContasReceberCTRCA15CONTACHQ: TStringField;
    SQLContasReceberCTRCA15NROCHQ: TStringField;
    SQLContasReceberCTRCA60TITULARCHQ: TStringField;
    SQLContasReceberCTRCA20CGCCPFCHQ: TStringField;
    SQLContasReceberCTRCDDEPOSCHQ: TDateTimeField;
    SQLContasReceberALINICOD: TIntegerField;
    SQLRecebimento: TRxQuery;
    SQLRecebimentoCTRCA13ID: TStringField;
    SQLRecebimentoRECEICOD: TIntegerField;
    SQLRecebimentoRECEDRECTO: TDateTimeField;
    SQLRecebimentoRECEN2VLRRECTO: TBCDField;
    SQLRecebimentoRECEN2VLRJURO: TBCDField;
    SQLRecebimentoRECEN2VLRMULTA: TBCDField;
    SQLRecebimentoRECEN2DESC: TBCDField;
    SQLRecebimentoEMPRICODREC: TIntegerField;
    SQLRecebimentoTERMICODREC: TIntegerField;
    SQLRecebimentoCLIEA13ID: TStringField;
    SQLRecebimentoPENDENTE: TStringField;
    SQLRecebimentoREGISTRO: TDateTimeField;
    SQLRecebimentoRECEN2MULTACOBR: TBCDField;
    SQLNumerario: TRxQuery;
    SQLTemplateNOFIN2VLRDESCPROM: TBCDField;
    SQLTemplateNOFIINROTALAO: TIntegerField;
    NotaFiscal1: TMenuItem;
    Identific1: TMenuItem;
    TblIdentificacaoCarga: TTable;
    TblIdentificacaoCargaRazaoSoc: TStringField;
    TblIdentificacaoCargaComprador: TStringField;
    TblIdentificacaoCargaEndereco: TStringField;
    TblIdentificacaoCargaBairro: TStringField;
    TblIdentificacaoCargaCepCidadeUF: TStringField;
    TblIdentificacaoCargaTransportadora: TStringField;
    TblIdentificacaoCargaFrete: TStringField;
    SQLContasReceberPDVDA13ID: TStringField;
    AtualizaContasReceberPV: TRxQuery;
    SQLTemplateCliFornEmpTabelaPrecoLookUp: TIntegerField;
    ImprimirDuplicatas1: TMenuItem;
    SQLIcmsUF: TRxQuery;
    SQLIcms: TRxQuery;
    DBEdit26: TDBEdit;
    Report: TCrpe;
    SQLTemplateNOFIN2VLRSUBS: TBCDField;
    SQLSerie: TRxQuery;
    SQLSerieSERIA5COD: TStringField;
    SQLSerieSERIINRONF: TIntegerField;
    ComboSerie: TRxDBLookupCombo;
    DSSQLSerie: TDataSource;
    SQLCFOP: TRxQuery;
    SQLCFOPCFOPA5COD: TStringField;
    SQLCFOPCFOPA60DESCR: TStringField;
    SQLCFOPCFOPCVENDA: TStringField;
    SQLCFOPPENDENTE: TStringField;
    SQLCFOPREGISTRO: TDateTimeField;
    SQLTemplateCFOPDentroLookUp: TStringField;
    SQLTemplateCFOPForaLookUp: TStringField;
    SQLAtualizaItemPedido: TRxQuery;
    Label51: TLabel;
    DBEdit41: TDBEdit;
    SQLTemplateEmpresaLookUp: TStringField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    SQLTemplateEntradaSaidaLookUp: TStringField;
    TblIdentificacaoCargaNotaFiscal: TStringField;
    SQLSeriePENDENTE: TStringField;
    SQLSerieREGISTRO: TDateTimeField;
    SQLParcelas: TRxQuery;
    SQLParcelasPARC: TIntegerField;
    SQLTemplatePlanoClienteLookUp: TIntegerField;
    SQLTemplateVendedorClienteLookUp: TIntegerField;
    RecalcularFinanceiro: TMenuItem;
    SQLPedidoVenda: TRxQuery;
    SQLPedidoVendaFinanceiro: TRxQuery;
    SQLPedidoVendaFinanceiroCTRCA13ID: TStringField;
    SQLPedidoVendaFinanceiroCTRCDVENC: TDateTimeField;
    SQLPedidoVendaFinanceiroNUMEICOD: TIntegerField;
    SQLPedidoVendaFinanceiroCTRCDEMIS: TDateTimeField;
    SQLPedidoVendaFinanceiroPDVDA13ID: TStringField;
    SQLTemplateNOFIA20ESPECIE: TStringField;
    PanelFinanceiro: TPanel;
    SQLPlanoPLRCICOD: TIntegerField;
    SQLPlanoPLRCA60DESCR: TStringField;
    SQLPlanoPLRCN2TXJURO: TBCDField;
    SQLPlanoPLRCN2TXMULTA: TBCDField;
    SQLPlanoPLRCN2TXCRED: TBCDField;
    SQLPlanoPLRCN2PERCDESC: TBCDField;
    SQLPlanoPLRCCDFIX: TStringField;
    SQLPlanoPLRCIDFIXNROPARC: TIntegerField;
    SQLPlanoPLRCDFIXDVENC: TIntegerField;
    SQLPlanoPLRCCDFIXENTR: TStringField;
    SQLPlanoPLRCN2PERCENTR: TBCDField;
    SQLPlanoPLRCN2DESC: TBCDField;
    SQLPlanoPLRCCATIVO: TStringField;
    SQLPlanoPENDENTE: TStringField;
    SQLPlanoREGISTRO: TDateTimeField;
    SQLPedidoVendaPDVDA13ID: TStringField;
    SQLPedidoVendaEMPRICOD: TIntegerField;
    SQLPedidoVendaPDVDICOD: TIntegerField;
    SQLPedidoVendaVENDICOD: TIntegerField;
    SQLPedidoVendaCLIEA13ID: TStringField;
    SQLPedidoVendaTRANICOD: TIntegerField;
    SQLPedidoVendaPLRCICOD: TIntegerField;
    SQLPedidoVendaPDVDDEMISSAO: TDateTimeField;
    SQLPedidoVendaPDVDN2VLRFRETE: TBCDField;
    SQLPedidoVendaPDVDA30NROPEDCOMP: TStringField;
    SQLPedidoVendaPDVDA30COMPRADOR: TStringField;
    SQLPedidoVendaPDVDCTIPO: TStringField;
    SQLPedidoVendaPDVDCSTATUS: TStringField;
    SQLPedidoVendaPDVDN2VLRDESC: TBCDField;
    SQLPedidoVendaPDVDN2TOTPROD: TBCDField;
    SQLPedidoVendaPDVDN2TOTPED: TBCDField;
    SQLPedidoVendaPDVDTOBS: TStringField;
    SQLPedidoVendaREGISTRO: TDateTimeField;
    SQLPedidoVendaPENDENTE: TStringField;
    SQLPedidoVendaPDVDN2VLRDESCPROM: TBCDField;
    SQLPedidoVendaPDVDCTIPOFRETE: TStringField;
    SQLPedidoVendaPDVDDENTREGA: TDateTimeField;
    SQLPedidoVendaPDVDINROTALAO: TIntegerField;
    DSSQLPedidoVenda: TDataSource;
    SQLPedidoVendaItem: TRxQuery;
    SQLPedidoVendaItemPDVDA13ID: TStringField;
    SQLPedidoVendaItemPVITIITEM: TIntegerField;
    SQLPedidoVendaItemPRODICOD: TIntegerField;
    SQLPedidoVendaItemPVITN3QUANT: TBCDField;
    SQLPedidoVendaItemPVITN2VLRUNIT: TBCDField;
    SQLPedidoVendaItemPVITN2PERCDESC: TBCDField;
    SQLPedidoVendaItemPVITN2VLRDESC: TBCDField;
    SQLPedidoVendaItemREGISTRO: TDateTimeField;
    SQLPedidoVendaItemPENDENTE: TStringField;
    SQLPedidoVendaItemPVITN3QUANTVEND: TBCDField;
    SQLPedidoVendaItemPDVDA60OBS: TStringField;
    SQLPedidoVendaItemPVITN2PERCCOMIS: TBCDField;
    DSSQLPedidoVendaItem: TDataSource;
    Label50: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label48: TLabel;
    DBEdit27: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit18: TDBEdit;
    MnGerarNotadeCupom: TMenuItem;
    SQLTemplateCUPOA13ID: TStringField;
    SQLCupom: TRxQuery;
    SQLCupomItem: TRxQuery;
    SQLCupomCUPOA13ID: TStringField;
    SQLCupomEMPRICOD: TIntegerField;
    SQLCupomTERMICOD: TIntegerField;
    SQLCupomCUPOICOD: TIntegerField;
    SQLCupomCUPODEMIS: TDateTimeField;
    SQLCupomCLIEA13ID: TStringField;
    SQLCupomPLRCICOD: TIntegerField;
    SQLCupomVENDICOD: TIntegerField;
    SQLCupomCONVICOD: TIntegerField;
    SQLCupomCUPOCSTATUS: TStringField;
    SQLCupomCUPON2TOTITENS: TBCDField;
    SQLCupomCUPON2DESC: TBCDField;
    SQLCupomCUPON2ACRESC: TBCDField;
    SQLCupomCUPON2TOTITENSRET: TBCDField;
    SQLCupomCUPOINRO: TIntegerField;
    SQLCupomCUPOCTIPOPADRAO: TStringField;
    SQLCupomCUPON2CONVTAXA: TBCDField;
    SQLCupomCUPOINROORDCOMPRA: TIntegerField;
    SQLCupomCUPOA13IDTROCA: TStringField;
    SQLCupomCUPON2VLRCOMISSAO: TBCDField;
    SQLCupomCUPOA20CODANT: TStringField;
    SQLCupomCUPODCANC: TDateTimeField;
    SQLCupomCUPON2JUROATRAS: TBCDField;
    SQLCupomCUPON2MULTAATRAS: TBCDField;
    SQLCupomCUPODPAGTOCONSIG: TDateTimeField;
    SQLCupomCUPON3BONUSTROCA: TBCDField;
    SQLCupomCUPODENTREGA: TDateTimeField;
    SQLCupomTPVDICOD: TIntegerField;
    SQLCupomUSUAICODCANC: TIntegerField;
    SQLCupomPENDENTE: TStringField;
    SQLCupomREGISTRO: TDateTimeField;
    SQLCupomCUPON3CREDTAXA: TBCDField;
    SQLCupomCUPOCCONSIG: TStringField;
    SQLCupomCUPOV254OBS: TStringField;
    SQLCupomCUPOA30DATACARTAO: TStringField;
    SQLCupomCUPOA30HORACARTAO: TStringField;
    SQLCupomCUPOA30NSUPROVEDOR: TStringField;
    SQLCupomCUPOA30NSUINSTITUICAO: TStringField;
    SQLCupomItemCUPOA13ID: TStringField;
    SQLCupomItemCPITIPOS: TIntegerField;
    SQLCupomItemPRODICOD: TIntegerField;
    SQLCupomItemCPITCSTATUS: TStringField;
    SQLCupomItemCPITN3QTD: TBCDField;
    SQLCupomItemCPITN3QTDTROCA: TBCDField;
    SQLCupomItemCPITN3VLRUNIT: TBCDField;
    SQLCupomItemCPITN3VLRCUSTUNIT: TBCDField;
    SQLCupomItemCPITN2DESC: TBCDField;
    SQLCupomItemCPITN3VLRUNITLUCR: TBCDField;
    SQLCupomItemCOITN2ICMSALIQ: TBCDField;
    SQLCupomItemVENDICOD: TIntegerField;
    SQLCupomItemPENDENTE: TStringField;
    SQLCupomItemREGISTRO: TDateTimeField;
    SQLOperacaEstoque: TTable;
    SQLOperacaEstoqueOPESICOD: TIntegerField;
    SQLOperacaEstoqueOPESA60DESCR: TStringField;
    SQLOperacaEstoqueSERIA5COD: TStringField;
    SQLOperacaEstoqueCFOPA5CODDENTROUF: TStringField;
    SQLOperacaEstoqueCFOPA5CODFORAUF: TStringField;
    SQLOperacaEstoqueOPESCENTRADASAIDA: TStringField;
    SQLOperacaEstoqueOPESCORIGEMDESTINO: TStringField;
    SQLOperacaEstoquePENDENTE: TStringField;
    SQLOperacaEstoqueREGISTRO: TDateTimeField;
    SQLOperacaEstoqueOPESA18CAMPOIMP: TStringField;
    SQLOperacaEstoqueOPESCCALCIPI: TStringField;
    SQLOperacaEstoqueOPESCCALCICMS: TStringField;
    SQLOperacaEstoquePDVDA13ID: TStringField;
    SQLCupomCUPON2DESCITENS: TBCDField;
    SQLCupomItemCPITN2VLRDESCSOBTOT: TBCDField;
    FormStorage: TFormStorage;
    SQLPedidoVendaItemLOTEA30NRO: TStringField;
    GerarNFdeVendaConsignada: TMenuItem;
    SQLConsignacao: TRxQuery;
    SQLNotaFiscalItemConsig: TRxQuery;
    SQLNotaFiscal: TRxQuery;
    SQLNotaFiscalNOFIA13ID: TStringField;
    SQLNotaFiscalCLIEA13ID: TStringField;
    SQLNotaFiscalFORNICOD: TIntegerField;
    SQLNotaFiscalSERIA5COD: TStringField;
    SQLNotaFiscalNOFIDEMIS: TDateTimeField;
    SQLNotaFiscalOPESICOD: TIntegerField;
    SQLNotaFiscalVENDICOD: TIntegerField;
    SQLTemplateNOFIA13IDCONSIGNADA: TStringField;
    SQLNotaFiscalItemConsigNOFIA13ID: TStringField;
    SQLNotaFiscalItemConsigNFITIITEM: TIntegerField;
    SQLNotaFiscalItemConsigPRODICOD: TIntegerField;
    SQLNotaFiscalItemConsigNFITN3QUANT: TBCDField;
    SQLNotaFiscalItemConsigNFITN2VLRUNIT: TBCDField;
    SQLNotaFiscalItemConsigNFITN2PERCDESC: TBCDField;
    SQLNotaFiscalItemConsigNFITN2VLRDESC: TBCDField;
    SQLNotaFiscalItemConsigNFITN2PERCICMS: TBCDField;
    SQLNotaFiscalItemConsigNFITN2BASEICMS: TBCDField;
    SQLNotaFiscalItemConsigNFITN2VLRICMS: TBCDField;
    SQLNotaFiscalItemConsigNFITN2PERCSUBS: TBCDField;
    SQLNotaFiscalItemConsigNFITN2BASESUBS: TBCDField;
    SQLNotaFiscalItemConsigNFITN2VLRSUBS: TBCDField;
    SQLNotaFiscalItemConsigNFITN2PERCIPI: TBCDField;
    SQLNotaFiscalItemConsigNFITN2VLRIPI: TBCDField;
    SQLNotaFiscalItemConsigNFITN2PERCISSQN: TBCDField;
    SQLNotaFiscalItemConsigNFITN2VLRISSQN: TBCDField;
    SQLNotaFiscalItemConsigNFITN2VLRFRETE: TBCDField;
    SQLNotaFiscalItemConsigNFITN2VLRLUCRO: TBCDField;
    SQLNotaFiscalItemConsigPENDENTE: TStringField;
    SQLNotaFiscalItemConsigREGISTRO: TDateTimeField;
    SQLNotaFiscalItemConsigNFITN2PERCREDUCAO: TBCDField;
    SQLNotaFiscalItemConsigNFITN3TOTVEND: TBCDField;
    SQLNotaFiscalItemConsigPDVDA13ID: TStringField;
    SQLNotaFiscalItemConsigPVITIITEM: TIntegerField;
    SQLNotaFiscalItemConsigNFITN3QUANTVEND: TBCDField;
    SQLNotaFiscalItemConsigNFITN2PERCCOMIS: TBCDField;
    SQLNotaFiscalItemConsigCPITICPOS: TIntegerField;
    SQLNotaFiscalItemConsigCUPOA13ID: TStringField;
    SQLNotaFiscalItemConsigLOTEA30NRO: TStringField;
    TblitensVendaConsignada: TTable;
    TblitensVendaConsignadaReferencia: TStringField;
    TblitensVendaConsignadaDescricao: TStringField;
    TblitensVendaConsignadaQtde: TFloatField;
    TblitensVendaConsignadaLote: TStringField;
    TblitensVendaConsignadaProduto: TIntegerField;
    SQLConsignacaoQTDE: TBCDField;
    SQLConsignacaoPRODICOD: TIntegerField;
    SQLOperacaEstoqueOPESCGERAFINANCEIRO: TStringField;
    Label3: TLabel;
    SQLNotaFiscalItem: TRxQuery;
    SQLNotaFiscalItemNOFIA13ID: TStringField;
    SQLNotaFiscalItemNFITIITEM: TIntegerField;
    SQLNotaFiscalItemPRODICOD: TIntegerField;
    SQLNotaFiscalItemNFITN3QUANT: TBCDField;
    SQLNotaFiscalItemNFITN2VLRUNIT: TBCDField;
    SQLNotaFiscalItemNFITN2PERCDESC: TBCDField;
    SQLNotaFiscalItemNFITN2VLRDESC: TBCDField;
    SQLNotaFiscalItemNFITN2PERCICMS: TBCDField;
    SQLNotaFiscalItemNFITN2BASEICMS: TBCDField;
    SQLNotaFiscalItemNFITN2PERCSUBS: TBCDField;
    SQLNotaFiscalItemNFITN2BASESUBS: TBCDField;
    SQLNotaFiscalItemNFITN2VLRSUBS: TBCDField;
    SQLNotaFiscalItemNFITN2PERCIPI: TBCDField;
    SQLNotaFiscalItemNFITN2VLRIPI: TBCDField;
    SQLNotaFiscalItemNFITN2PERCISSQN: TBCDField;
    SQLNotaFiscalItemNFITN2VLRISSQN: TBCDField;
    SQLNotaFiscalItemNFITN2VLRFRETE: TBCDField;
    SQLNotaFiscalItemNFITN2VLRLUCRO: TBCDField;
    SQLNotaFiscalItemPENDENTE: TStringField;
    SQLNotaFiscalItemREGISTRO: TDateTimeField;
    SQLNotaFiscalItemNFITN2PERCREDUCAO: TBCDField;
    SQLNotaFiscalItemNFITN3TOTVEND: TBCDField;
    SQLNotaFiscalItemPDVDA13ID: TStringField;
    SQLNotaFiscalItemPVITIITEM: TIntegerField;
    SQLNotaFiscalItemNFITN3QUANTVEND: TBCDField;
    SQLNotaFiscalItemNFITN2PERCCOMIS: TBCDField;
    SQLNotaFiscalItemCPITICPOS: TIntegerField;
    SQLNotaFiscalItemCUPOA13ID: TStringField;
    SQLNotaFiscalItemLOTEA30NRO: TStringField;
    SQLProduto: TRxQuery;
    DSSQLProduto: TDataSource;
    SQLNotaFiscalItemPesoBrutoLookup: TFloatField;
    SQLNotaFiscalItemPesoLiquidoLookup: TFloatField;
    SQLEmpresaEMPRA14CGC: TStringField;
    SQLTemplateEmpresaCGCLookup: TStringField;
    SQLEmpresaEMPRA20IE: TStringField;
    SQLTemplateEmpresaIELookup: TStringField;
    SQLTransportadoraTRANA60END: TStringField;
    SQLTransportadoraTRANA60BAI: TStringField;
    SQLTransportadoraTRANA60CID: TStringField;
    SQLTransportadoraTRANA8CEP: TStringField;
    SQLTransportadoraTRANA2UF: TStringField;
    SQLTransportadoraTRANA14CGC: TStringField;
    SQLTransportadoraTRANA15IE: TStringField;
    SQLTemplateTransportadoraCGCLookUp: TStringField;
    SQLTemplateTransportadoraEnderecoLookUp: TStringField;
    SQLTemplateTransportadoraCidadeLookUp: TStringField;
    SQLTemplateTransportadoraEstadoLookUp: TStringField;
    SQLTemplateTransportadoraIELookUp: TStringField;
    SQLNotaFiscalItemUnidadeLookup: TStringField;
    SQLNotaFiscalItemCLASFISCICOD: TIntegerField;
    SQLNotaFiscalItemClasFiscLookup: TStringField;
    SQLNotaFiscalItemProdutoLookup: TStringField;
    SQLNotaFiscalItemSitTribLookUp: TStringField;
    ListaDec: TListBox;
    SQLNotaFiscalItemDecretoLookUp: TStringField;
    SQLNotaFiscalItemTotalItemCalc: TFloatField;
    SQLNotaFiscalItemReferenciaLookUp: TStringField;
    SQLNotaFiscalItemGradeCodLookup: TIntegerField;
    SQLNotaFiscalItemAgrupGradeLookup: TIntegerField;
    SQLNotaFiscalItemServicoLookup: TStringField;
    SQLEmpresaEMPRCMATRIZFILIAL: TStringField;
    SQLEmpresaEMPRA20FONE: TStringField;
    SQLEmpresaEMPRA20FAX: TStringField;
    SQLEmpresaEMPRA60END: TStringField;
    SQLEmpresaEMPRA60BAI: TStringField;
    SQLEmpresaEMPRA60CID: TStringField;
    SQLEmpresaEMPRA8CEP: TStringField;
    SQLEmpresaEMPRCFISJURID: TStringField;
    SQLEmpresaEMPRA11CPF: TStringField;
    SQLEmpresaEMPRA10RG: TStringField;
    SQLEmpresaEMPRA60EMAIL: TStringField;
    SQLEmpresaEMPRA60URL: TStringField;
    SQLTemplateEmitenteEnderecoLookUp: TStringField;
    SQLTemplateEmitenteBairroLookUp: TStringField;
    SQLTemplateEmitenteCidadeLookUp: TStringField;
    SQLTemplateEmitenteUFLookUp: TStringField;
    SQLTemplateEmitenteCEPLookUp: TStringField;
    SQLTemplateEmitenteFoneLookUp: TStringField;
    SQLPedidoVendaItemPDVDA255OBS1: TStringField;
    SQLNotaFiscalItemNFITA254OBS: TStringField;
    SQLPlanoPLRCN2PERCACRESC: TBCDField;
    SQLParcelasPrazoVendaTempTipoPadrao: TStringField;
    SQLTemplateUSUAICOD: TIntegerField;
    SQLTemplateUSUAA60LOGIN: TStringField;
    SQLTotalParcelas: TRxQuery;
    SQLTemplateNOFIDCANCEL: TDateTimeField;
    SQLOperacaEstoquePLCTA15CODCRED: TStringField;
    SQLOperacaEstoquePLCTA15CODDEB: TStringField;
    SQLTemplatePLCTA15CODCRED: TStringField;
    SQLTemplatePLCTA15CODDEB: TStringField;
    ComboCFOP: TRxDBLookupCombo;
    DSSQLCFOP: TDataSource;
    DBEdit2: TDBEdit;
    SQLContasReceberCTRCA254HIST: TStringField;
    SQLContasReceberHTPDICOD: TIntegerField;
    SQLContasReceberPLCTA15CODDEBITO: TStringField;
    SQLHistoricoPadrao: TRxQuery;
    SQLHistoricoPadraoHTPDICOD: TIntegerField;
    SQLHistoricoPadraoHTPDA100HISTORICO: TStringField;
    SQLHistoricoPadraoHTPDCTIPO: TStringField;
    SQLHistoricoPadraoPENDENTE: TStringField;
    SQLHistoricoPadraoREGISTRO: TDateTimeField;
    DSSQLHistoricoPadrao: TDataSource;
    SQLPortador: TRxQuery;
    SQLContasReceberPortadorLookup: TStringField;
    DSSQLPlanoRecebimento: TDataSource;
    ComboVendedor: TRxDBLookupCombo;
    DSSQLVendedor: TDataSource;
    SQLAvalista: TRxQuery;
    DSSQLAvalista: TDataSource;
    SQLAvalistaAVALA13ID: TStringField;
    SQLAvalistaEMPRICOD: TIntegerField;
    SQLAvalistaAVALICOD: TIntegerField;
    SQLAvalistaAVALA5FISJURID: TStringField;
    SQLAvalistaAVALA14CGC: TStringField;
    SQLAvalistaAVALA20IE: TStringField;
    SQLAvalistaAVALA11CPF: TStringField;
    SQLAvalistaAVALA10RG: TStringField;
    SQLAvalistaAVALA60RAZAOSOC: TStringField;
    SQLAvalistaAVALA60CONTATO: TStringField;
    SQLAvalistaAVALA60NOMEPAI: TStringField;
    SQLAvalistaAVALA60NOMEMAE: TStringField;
    SQLAvalistaAVALN2RENDA: TBCDField;
    SQLAvalistaAVALA15FONE1: TStringField;
    SQLAvalistaAVALA15FONE2: TStringField;
    SQLAvalistaAVALA15FAX: TStringField;
    SQLAvalistaAVALA60ENDRES: TStringField;
    SQLAvalistaAVALA60BAIRES: TStringField;
    SQLAvalistaAVALA60CIDRES: TStringField;
    SQLAvalistaAVALA2UFRES: TStringField;
    SQLAvalistaAVALA8CEPRES: TStringField;
    SQLAvalistaAVALA60EMAIL: TStringField;
    SQLAvalistaAVALDNASC: TDateTimeField;
    SQLAvalistaAVALDFUND: TDateTimeField;
    SQLAvalistaPENDENTE: TStringField;
    SQLAvalistaREGISTRO: TDateTimeField;
    SQLTemplateAVALA13ID: TStringField;
    SQLContasReceberAVALA13ID: TStringField;
    DBEdit8: TDBEdit;
    ImprimirNotaNovo1: TMenuItem;
    SQLLayOutImpressao: TRxQuery;
    RDprint: TRDprint;
    SQLTemplateNOFIN2VLRICMS: TBCDField;
    SQLNotaFiscalItemNFITN2VLRICMS: TBCDField;
    SQLTemplateNOFIN2BASCALCICMS: TBCDField;
    SQLComposicaoPedido: TRxQuery;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    SQLTemplateNOFIAOBSCORPONF: TStringField;
    Label11: TLabel;
    DBMemo2: TDBMemo;
    SQLVeiculo: TRxQuery;
    DSSQLVeiculo: TDataSource;
    SQLVeiculoVEICA13ID: TStringField;
    SQLVeiculoEMPRICOD: TIntegerField;
    SQLVeiculoTERMICOD: TIntegerField;
    SQLVeiculoVEICICOD: TIntegerField;
    SQLVeiculoVEICA7PLACA: TStringField;
    SQLVeiculoVEICA60DESCR: TStringField;
    SQLVeiculoVEICA3OMARCA: TStringField;
    SQLVeiculoVEICA3OMOTORISTA: TStringField;
    SQLVeiculoVEICA3OMOTOCPF: TStringField;
    SQLVeiculoVEICN3PESOSUPORTA: TBCDField;
    SQLVeiculoTRANICOD: TIntegerField;
    SQLVeiculoPENDENTE: TStringField;
    SQLVeiculoREGISTRO: TDateTimeField;
    DSSQLTransportadora: TDataSource;
    SQLTemplatePDVDA60OBS: TStringField;
    SQLTemplateCUPOA13IDCUPNEG: TStringField;
    SQLTemplateROTAICOD: TIntegerField;
    SQLTemplateVEICA13ID: TStringField;
    SQLVeiculoVEICA2UFPLACA: TStringField;
    ComboObsNota: TRxDBLookupCombo;
    SQLObsNota: TRxQuery;
    DSSQLObsNota: TDataSource;
    SQLObsNotaOBSNICOD: TIntegerField;
    SQLConta: TRxQuery;
    DSSQLConta: TDataSource;
    Label18: TLabel;
    DBEdit10: TDBEdit;
    Label17: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit15: TDBEdit;
    SQLContasReceberCTRCCEMITIDOBOLETO: TStringField;
    PanelPesquisa: TPanel;
    BTNLocalizar: TSpeedButton;
    ComboCliente: TRxDBLookupCombo;
    DSSQLCliente: TDataSource;
    SQLCliente: TRxQuery;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteEMPRICOD: TIntegerField;
    SQLClienteCLIEICOD: TIntegerField;
    SQLClienteCLIEA5FISJURID: TStringField;
    SQLClienteCLIEA14CGC: TStringField;
    SQLClienteCLIEA20IE: TStringField;
    SQLClienteCLIEA11CPF: TStringField;
    SQLClienteCLIEA10RG: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLClienteCLIEA60NOMEFANT: TStringField;
    SQLClienteCLIEA60CONTATO: TStringField;
    SQLClienteCLIEA15FONE1: TStringField;
    SQLClienteCLIEA15FONE2: TStringField;
    SQLClienteCLIEA15FAX: TStringField;
    SQLClienteCLIEA30OUTROSDOC: TStringField;
    SQLClienteCLIECSEXO: TStringField;
    SQLClienteCLIEA60ENDRES: TStringField;
    SQLClienteCLIEA60BAIRES: TStringField;
    SQLClienteCLIEA60CIDRES: TStringField;
    SQLClienteCLIEA2UFRES: TStringField;
    SQLClienteCLIEA8CEPRES: TStringField;
    SQLClienteCLIEA60EMAIL: TStringField;
    SQLClienteCLIEN2RENDA: TBCDField;
    SQLClienteCLIEN2LIMITECRED: TBCDField;
    SQLClienteCLIEDNASC: TDateTimeField;
    GroupBox3: TGroupBox;
    Label27: TLabel;
    BtnTransportadora: TSpeedButton;
    Label12: TLabel;
    Label31: TLabel;
    Label26: TLabel;
    EditCdTransp: TDBEdit;
    ComboTransp: TRxDBLookupCombo;
    ComboMotorista: TRxDBLookupCombo;
    EditPlaca: TDBEdit;
    ComboTipoFrete: TRxDBComboBox;
    Label35: TLabel;
    EditQTdeVolumes: TDBEdit;
    Label53: TLabel;
    EditEspecie: TDBEdit;
    Label30: TLabel;
    EditMarca: TDBEdit;
    Label19: TLabel;
    EditPesoBruto: TDBEdit;
    Label20: TLabel;
    EditPesoLiquido: TDBEdit;
    Label21: TLabel;
    DBEdit16: TDBEdit;
    SQLTemplateNOFIDSAIDAENTRADA: TDateTimeField;
    ComboConsultaFornec: TRxDBLookupCombo;
    DSSQLFornecedor: TDataSource;
    SQLPlanoRecebimentoPLRCCDFIX: TStringField;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel6: TPanel;
    DBGrid2: TDBGrid;
    Panel11: TPanel;
    Label9: TLabel;
    ComboPlanoRectoAtual: TRxDBLookupCombo;
    Panel4: TPanel;
    Label10: TLabel;
    Label28: TLabel;
    Label16: TLabel;
    Label22: TLabel;
    Label29: TLabel;
    Label23: TLabel;
    BTNRecalcularFinanceiro: TSpeedButton;
    BtnExcluirParcAtuais: TSpeedButton;
    ComboPlanoRecto: TRxDBLookupCombo;
    ComboNumerarioVista: TRxDBLookupCombo;
    ComboNumerarioPrazo: TRxDBLookupCombo;
    ComboTipoDoc: TRxDBLookupCombo;
    ComboPortador: TRxDBLookupCombo;
    ComboHistoricoPadrao: TRxDBLookupCombo;
    MemoHistorico: TMemo;
    SQLTipoDoc: TRxQuery;
    SQLTipoDocTPDCICOD: TIntegerField;
    SQLTipoDocTPDCA60DESCR: TStringField;
    DSSQLTipoDoc: TDataSource;
    DSSQLPortador: TDataSource;
    SQLRecebimentoRECEA254HISTORICO: TStringField;
    SQLRecebimentoRECEDDATAMOV: TDateTimeField;
    CkImprimeNosServicos: TCheckBox;
    SQLContasReceberCTRCCTIPOREGISTRO: TStringField;
    ComboOPEstoque: TRxDBLookupCombo;
    DSTblOperacaoEstoque: TDataSource;
    SQLTemplateOperacaoEstoqueLookUp: TStringField;
    SQLPedidoVendaPDVDCIMPORTADO: TStringField;
    SQLPedidoVendaPDVDN2PERCFAT: TBCDField;
    SQLPedidoVendaPDVDN2PERCOMIS: TBCDField;
    SQLPedidoVendaUSUAA60LOGIN: TStringField;
    SQLPedidoVendaOPESICOD: TIntegerField;
    SQLPedidoVendaROTAICOD: TIntegerField;
    SQLPedidoVendaNOFIAOBSCORPONF: TStringField;
    SQLPedidoVendaPDVD8PLACAVEIC: TStringField;
    SQLPedidoVendaPDVDA15NROPEDPALM: TStringField;
    SQLPedidoVendaSERIA5COD: TStringField;
    SQLPedidoVendaVEICA13ID: TStringField;
    SQLPedidoVendaFinanceiroEMPRICOD: TIntegerField;
    SQLPedidoVendaFinanceiroTERMICOD: TIntegerField;
    SQLPedidoVendaFinanceiroCTRCICOD: TIntegerField;
    SQLPedidoVendaFinanceiroCLIEA13ID: TStringField;
    SQLPedidoVendaFinanceiroCTRCCSTATUS: TStringField;
    SQLPedidoVendaFinanceiroCTRCINROPARC: TIntegerField;
    SQLPedidoVendaFinanceiroCTRCN2VLR: TBCDField;
    SQLPedidoVendaFinanceiroCTRCN2DESCFIN: TBCDField;
    SQLPedidoVendaFinanceiroPORTICOD: TIntegerField;
    SQLPedidoVendaFinanceiroCTRCN2TXJURO: TBCDField;
    SQLPedidoVendaFinanceiroCTRCN2TXMULTA: TBCDField;
    SQLPedidoVendaFinanceiroCTRCA5TIPOPADRAO: TStringField;
    SQLPedidoVendaFinanceiroCTRCDULTREC: TDateTimeField;
    SQLPedidoVendaFinanceiroCTRCN2TOTREC: TBCDField;
    SQLPedidoVendaFinanceiroCTRCN2TOTJUROREC: TBCDField;
    SQLPedidoVendaFinanceiroCTRCN2TOTMULTAREC: TBCDField;
    SQLPedidoVendaFinanceiroCTRCN2TOTDESCREC: TBCDField;
    SQLPedidoVendaFinanceiroCTRCN2TOTMULTACOBR: TBCDField;
    SQLPedidoVendaFinanceiroEMPRICODULTREC: TIntegerField;
    SQLPedidoVendaFinanceiroCUPOA13ID: TStringField;
    SQLPedidoVendaFinanceiroTPDCICOD: TIntegerField;
    SQLPedidoVendaFinanceiroPLCTA15COD: TStringField;
    SQLPedidoVendaFinanceiroCTRCA30NRODUPLICBANCO: TStringField;
    SQLPedidoVendaFinanceiroNOFIA13ID: TStringField;
    SQLPedidoVendaFinanceiroPENDENTE: TStringField;
    SQLPedidoVendaFinanceiroREGISTRO: TDateTimeField;
    SQLPedidoVendaFinanceiroCTRCDREABILSPC: TDateTimeField;
    SQLPedidoVendaFinanceiroBANCA5CODCHQ: TStringField;
    SQLPedidoVendaFinanceiroCTRCA10AGENCIACHQ: TStringField;
    SQLPedidoVendaFinanceiroCTRCA15CONTACHQ: TStringField;
    SQLPedidoVendaFinanceiroCTRCA15NROCHQ: TStringField;
    SQLPedidoVendaFinanceiroCTRCA60TITULARCHQ: TStringField;
    SQLPedidoVendaFinanceiroCTRCA20CGCCPFCHQ: TStringField;
    SQLPedidoVendaFinanceiroCTRCDDEPOSCHQ: TDateTimeField;
    SQLPedidoVendaFinanceiroALINICOD: TIntegerField;
    SQLPedidoVendaFinanceiroCOBRA13ID: TStringField;
    SQLPedidoVendaFinanceiroCTRCDENVIOCOBRANCA: TDateTimeField;
    SQLPedidoVendaFinanceiroCTRCA254HIST: TStringField;
    SQLPedidoVendaFinanceiroCTRCDESTORNO: TDateTimeField;
    SQLPedidoVendaFinanceiroDUPLA13ID: TStringField;
    SQLPedidoVendaFinanceiroFRETA13ID: TStringField;
    SQLPedidoVendaFinanceiroHTPDICOD: TIntegerField;
    SQLPedidoVendaFinanceiroPLCTA15CODDEBITO: TStringField;
    SQLPedidoVendaFinanceiroCTRCCTEMREGRECEBER: TStringField;
    SQLPedidoVendaFinanceiroAVALA13ID: TStringField;
    SQLPedidoVendaFinanceiroCTRCCTIPOREGISTRO: TStringField;
    SQLPedidoVendaFinanceiroCONTA13ID: TStringField;
    SQLPedidoVendaFinanceiroCTRCA13CTRCAIDCHQ: TStringField;
    SQLPedidoVendaFinanceiroCTRCCEMITIDOBOLETO: TStringField;
    SQLPedidoVendaFinanceiroCTRCA4ANOCOMP: TStringField;
    SQLPedidoVendaFinanceiroCTRCA2MESCOMP: TStringField;
    SQLTemplateCUPOCTIPOPADRAO: TStringField;
    SQLTemplateCFOPA5CODAUX: TStringField;
    MnRecalcularImpostos: TMenuItem;
    SQLNotaFiscalItemCFOPA5CODAUX: TStringField;
    SQLPlanoRecebimentoPLRCFATCASH: TStringField;
    MnTrocarStatusEncerradaparaAberta1: TMenuItem;
    ComboObsCorpo: TRxDBLookupCombo;
    NotaFiscalEletronica1: TMenuItem;
    MnNFEGerarArquivoEnvio: TMenuItem;
    MnNFECancelamentoNotaEletronica: TMenuItem;
    XMLDoc: TXMLDocument;
    SQLNotaFiscalItemAliquotaICMS: TFloatField;
    SQLTemplateCliFornEmpCdMunicipoNfeLookUp: TIntegerField;
    SQLTemplateNOFICSTNFE: TStringField;
    GroupBox1: TGroupBox;
    SQLTemplateNOFIA5CODRETORNO: TStringField;
    SQLTemplateNOFITRETORNO: TStringField;
    MnNFERetornoNotaEletronica: TMenuItem;
    GroupBox4: TGroupBox;
    Label45: TLabel;
    EditNroNFFinal: TMaskEdit;
    Label46: TLabel;
    Label52: TLabel;
    EditNroNFInicial: TMaskEdit;
    SQLSerieNF: TRxQuery;
    SQLSerieNFSERIA5COD: TStringField;
    SQLSerieNFPENDENTE: TStringField;
    SQLSerieNFREGISTRO: TDateTimeField;
    SQLSerieNFSERIINRONF: TIntegerField;
    SQLSerieNFEMPRICOD: TIntegerField;
    DSSQLSerieNF: TDataSource;
    ComboSerieNF: TRxDBLookupCombo;
    Label54: TLabel;
    rocarStatusdaNFeparaNull1: TMenuItem;
    SQLTransportadoraTRANA11CPF: TStringField;
    SQLTemplateTransportadoraCPF: TStringField;
    ComboPrint: TComboBox;
    Label55: TLabel;
    SQLSerieSERIA100PATHEXEIMP: TStringField;
    Label56: TLabel;
    DBEdit25: TDBEdit;
    GerarArquivosdeNotasProcessadaparaContabilidade1: TMenuItem;
    Label40: TLabel;
    Label43: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    DBEdit23: TDBEdit;
    Label66: TLabel;
    DBEdit24: TDBEdit;
    Label67: TLabel;
    DBEdit31: TDBEdit;
    Label68: TLabel;
    DBEdit36: TDBEdit;
    Label69: TLabel;
    DBEdit39: TDBEdit;
    Label70: TLabel;
    DBEdit40: TDBEdit;
    Label71: TLabel;
    Label72: TLabel;
    SQLTemplateNOFIN2PERCCOFINS: TBCDField;
    SQLTemplateNOFIN2PERCCONTRSOCIAL: TBCDField;
    SQLTemplateNOFIN2PERCINSS: TBCDField;
    SQLTemplateNOFIN2PERCIR: TBCDField;
    SQLTemplateNOFIN2PERCPIS: TBCDField;
    SQLTemplateNOFIN3VLRCOFINS: TBCDField;
    SQLTemplateNOFIN3VLRCONTRSOCIAL: TBCDField;
    SQLTemplateNOFIN3VLRINSS: TBCDField;
    SQLTemplateNOFIN3VLRIR: TBCDField;
    SQLTemplateNOFIN3VLRMAODEOBRA: TBCDField;
    SQLTemplateNOFIN3VLRMATERIAL: TBCDField;
    SQLTemplateNOFIN3VLRPIS: TBCDField;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    SQLTemplateNOFIN2PERCMAODEOBRA: TBCDField;
    SQLTemplateNOFIN2PERCMATERIAL: TBCDField;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    SQLTemplateNOFIN2PERCISSQN: TBCDField;
    PopFunrural: TPopupMenu;
    Imprimir1: TMenuItem;
    SQLTemplateCalcSubstLookUp: TStringField;
    SQLOperacaEstoqueOPESA18CAMPOIMPFIS: TStringField;
    SQLOperacaEstoqueOPESCCALCICMSFIS: TStringField;
    SQLOperacaEstoqueOPESCCALCIPIFIS: TStringField;
    SQLOperacaEstoqueOPESCCALCSUBST: TStringField;
    SQLOperacaEstoqueOPESCCALCSUBSTFIS: TStringField;
    SQLTemplateCalcSubstFisLookUp: TStringField;
    SQLTemplateCalcICMSFisLookUp: TStringField;
    SQLTemplateCalcIpiFisLookUp: TStringField;
    SQLTemplateNOFIA255OBS: TMemoField;
    SQLObsNotaOBSNA255DESC: TMemoField;
    SQLObsNotaNOFIA50DESC: TStringField;
    LbVendedorAtual: TLabel;
    LbRotaAtual: TLabel;
    LbTranspAtual: TLabel;
    LbVeiculo: TLabel;
    LbEmissao: TLabel;
    LbDataEntrega: TLabel;
    BtDadosPadroes: TSpeedButton;
    SQLTemplateCliFornEmpcdPaisLookUp: TIntegerField;
    SQLClienteCLIEICODPAIS: TIntegerField;
    NotaFiscalEletrnicaListadas1: TMenuItem;
    SQLTemplateEmpNumeroEndLookUp: TStringField;
    PopPedidos: TPopupMenu;
    PedidodeVenda1: TMenuItem;
    OrdemServioMecnica1: TMenuItem;
    OrdemServioGrficas1: TMenuItem;
    SQLNotaFiscalItemNFITINITENS: TIntegerField;
    SQLNotaFiscalItemNFITA10DIIMPORT: TStringField;
    SQLNotaFiscalItemNFITA15PEDIDOCOMPRA: TStringField;
    SQLNotaFiscalItemNFITA2UFDESEMBARACO: TStringField;
    SQLNotaFiscalItemNFITA60CEXPORTADOR: TStringField;
    SQLNotaFiscalItemNFITA60CFABRICANTE: TStringField;
    SQLNotaFiscalItemNFITA60LOCALDESEMBARACO: TStringField;
    SQLNotaFiscalItemNFITDDATADI: TDateTimeField;
    SQLNotaFiscalItemNFITDDESEMBARACO: TDateTimeField;
    SQLNotaFiscalItemNFITINADICAO: TIntegerField;
    SQLNotaFiscalItemNFITINSEQADIC: TIntegerField;
    SQLNotaFiscalItemNFITN2DESCTOADIC: TBCDField;
    SQLNotaFiscalItemNFITN2OUTRASDESP: TBCDField;
    SQLNotaFiscalItemNFITN2SEGURO: TBCDField;
    TblIdentificacaoCargaVolume: TStringField;
    SQLTemplateCliFornEmpRegime: TStringField;
    SQLTemplateCliFornEmpFisicaJuridica: TStringField;
    SQLNotaFiscalItemNFITICST: TIntegerField;
    rocaStatusNFCanceladaparaAbertanomovestoque1: TMenuItem;
    SQLNotaFiscalItemNFITN2BC_IMP: TBCDField;
    SQLNotaFiscalItemNFITN2VALOR_DA: TBCDField;
    SQLNotaFiscalItemNFITN2VALOR_II: TBCDField;
    SQLNotaFiscalItemNFITN2VALOR_IOF: TBCDField;
    NotaFiscalJava1: TMenuItem;
    GroupBox5: TGroupBox;
    DBEdit28: TDBEdit;
    Label47: TLabel;
    NotaFiscalEletronicaMIGRATE1: TMenuItem;
    ReimprimirDANFE1: TMenuItem;
    CancelarNFe1: TMenuItem;
    ReenviarEmail1: TMenuItem;
    InunitilizarNmeros1: TMenuItem;
    SQLTemplateNOFIA44CHAVEACESSO: TStringField;
    SQLTemplateNOFIA15PROTOCOLO: TStringField;
    DBEdit54: TDBEdit;
    Label58: TLabel;
    DBEdit55: TDBEdit;
    Label73: TLabel;
    GroupBox6: TGroupBox;
    Label57: TLabel;
    DBMemo3: TDBMemo;
    DBEdit9: TDBEdit;
    DBMemo4: TDBMemo;
    Label74: TLabel;
    DBEdit29: TDBEdit;
    Label75: TLabel;
    DBEdit53: TDBEdit;
    ReceituarioAgrcola1: TMenuItem;
    EncerrarNotaFiscalEletronica1: TMenuItem;
    N2: TMenuItem;
    AlterarStatusDaNFeParaCancelada1: TMenuItem;
    RxSpeedButton1: TRxSpeedButton;
    RxSpeedButton2: TRxSpeedButton;
    SQLOperacaEstoqueOPESA60DESDENTRO: TStringField;
    SQLOperacaEstoqueOPESA60DESFORA: TStringField;
    SQLNotaFiscalReferenciada: TRxQuery;
    BitBtn1: TBitBtn;
    edtChave: TMaskEdit;
    SQLTemplateNOFA1ENTRADASAIDA: TStringField;
    SQLTemplateNOFICFINALIDADE: TStringField;
    Label76: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label25: TLabel;
    otasasNotasFiscaisEletronicasListadas1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    GeradordeNFeAtualy1: TMenuItem;
    N3: TMenuItem;
    N1: TMenuItem;
    N6: TMenuItem;
    GeradorGNFeDesktopEdition1: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    SQLCupomECFICOD: TIntegerField;
    SQLCupomECFA20NROSERIE: TStringField;
    VerificarStatusdaNFe1: TMenuItem;
    SQLTemplateNOFIA15RECIBO: TStringField;
    Label77: TLabel;
    DBEdit22: TDBEdit;
    Label78: TLabel;
    DBEdit56: TDBEdit;
    RxSpeedButton3: TRxSpeedButton;
    PageExportacao: TTabSheet;
    SQLTemplateNOFIA2UFEMBARQUE: TStringField;
    SQLTemplateNOFIA60LOCALEMBARQUE: TStringField;
    Label79: TLabel;
    Label80: TLabel;
    DBEdit58: TDBEdit;
    ComboUFRes: TRxDBComboBox;
    Label81: TLabel;
    MnCorrigirSitTributariadositensnulos: TMenuItem;
    ACBrNFe1: TACBrNFe;
    Image1: TImage;
    ListaRetornoXML: TFileListBox;
    MemoRetornoNFE: TMemo;
    ConsultarWebService1: TMenuItem;
    OpenDialog1: TOpenDialog;
    ACBrNFeDANFERave1: TACBrNFeDANFERave;
    Label97: TLabel;
    ComboPlanoContas: TRxDBLookupCombo;
    SQLContaPLCTA15COD: TStringField;
    SQLContaPLCTICODREDUZ: TIntegerField;
    SQLContaPLCTINIVEL: TIntegerField;
    SQLContaPLCTA15CODPAI: TStringField;
    SQLContaPLCTA30CODEDIT: TStringField;
    SQLContaPLCTA60DESCR: TStringField;
    SQLContaPLCTCANALSINT: TStringField;
    SQLContaPLCTCTIPOSALDO: TStringField;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    qryEmpresa: TSQLQuery;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    cdsEmpresaEMPRICOD: TIntegerField;
    cdsEmpresaEMPRA60RAZAOSOC: TStringField;
    cdsEmpresaEMPRA60NOMEFANT: TStringField;
    cdsEmpresaEMPRCMATRIZFILIAL: TStringField;
    cdsEmpresaEMPRA20FONE: TStringField;
    cdsEmpresaEMPRA20FAX: TStringField;
    cdsEmpresaEMPRA60END: TStringField;
    cdsEmpresaEMPRA60BAI: TStringField;
    cdsEmpresaEMPRA60CID: TStringField;
    cdsEmpresaEMPRA2UF: TStringField;
    cdsEmpresaEMPRA8CEP: TStringField;
    cdsEmpresaEMPRCFISJURID: TStringField;
    cdsEmpresaEMPRA14CGC: TStringField;
    cdsEmpresaEMPRA20IE: TStringField;
    cdsEmpresaEMPRA11CPF: TStringField;
    cdsEmpresaEMPRA10RG: TStringField;
    cdsEmpresaEMPRA60EMAIL: TStringField;
    cdsEmpresaEMPRA60URL: TStringField;
    cdsEmpresaPENDENTE: TStringField;
    cdsEmpresaREGISTRO: TSQLTimeStampField;
    cdsEmpresaEMPRA100INFSPC: TStringField;
    cdsEmpresaEMPRBLOGOTIPO: TBlobField;
    cdsEmpresaEMPRA15CODEAN: TStringField;
    cdsEmpresaEMPRA60CONTATO: TStringField;
    cdsEmpresaEMPRCLUCROREAL: TStringField;
    cdsEmpresaEMPRN2VLRFUNDOPROMO: TFMTBCDField;
    cdsEmpresaEMPRA15REGJUNTA: TStringField;
    cdsEmpresaEMPRA20IMUNIC: TStringField;
    cdsEmpresaNOMETECNICOAGRIC: TStringField;
    cdsEmpresaENDTECNICOAGRIC: TStringField;
    cdsEmpresaCIDTECNICOAGRIC: TStringField;
    cdsEmpresaCPFTECNICOAGRIC: TStringField;
    cdsEmpresaCREATECNICOAGRIC: TStringField;
    cdsEmpresaSERIE: TStringField;
    cdsEmpresaARTIGO: TStringField;
    cdsEmpresaNRORECEITATUAL: TIntegerField;
    cdsEmpresaNRORECEITAULT: TIntegerField;
    cdsEmpresaEMPRA20CPFCONTADOR: TStringField;
    cdsEmpresaEMPRA20CPFRESP: TStringField;
    cdsEmpresaEMPRA30CRC: TStringField;
    cdsEmpresaEMPRA40CARGOCONT: TStringField;
    cdsEmpresaEMPRA40CARGORESP: TStringField;
    cdsEmpresaEMPRA60CONTADOR: TStringField;
    cdsEmpresaEMPRIENDNRO: TIntegerField;
    cdsEmpresaEMPRIMUNICODFED: TIntegerField;
    cdsEmpresaEMPRIUFCODFED: TIntegerField;
    cdsEmpresaEMPRDREGJUNTA: TSQLTimeStampField;
    cdsEmpresaEMPRA3CRT: TStringField;
    cdsEmpresaEMPRN2CREDICMS: TFMTBCDField;
    cdsEmpresaEMPRA10FAXCONTADOR: TStringField;
    cdsEmpresaEMPRA10FONECONTADOR: TStringField;
    cdsEmpresaEMPRA14CNPJCONTADOR: TStringField;
    cdsEmpresaEMPRA60BAICONTADOR: TStringField;
    cdsEmpresaEMPRA60ENDCONTADOR: TStringField;
    cdsEmpresaEMPRA7CODMUNCONTADOR: TStringField;
    cdsEmpresaEMPRA8CEPCONTADOR: TStringField;
    cdsEmpresaEMPRA15CRCCONTADOR: TStringField;
    cdsEmpresaEMPRIATIVIDADE: TIntegerField;
    cdsEmpresaEMPRA150CONTADOREMAIL: TStringField;
    cdsEmpresaEMPRA2NATPJ: TStringField;
    cdsEmpresaEMPRA9SUFRAMA: TStringField;
    cdsEmpresaCNAEFISCAL: TStringField;
    cdsEmpresaEMPRA100CERTIFSERIE: TStringField;
    cdsEmpresaEMPRA35CERTIFSENHA: TStringField;
    cdsEmpresaEMPRIFORMAEMISDANFE: TIntegerField;
    cdsEmpresaEMPRIFORMAEMISNFE: TIntegerField;
    cdsEmpresaEMPRA100CAMINHOLOGO: TStringField;
    cdsEmpresaEMPRA100CAMINHOXML: TStringField;
    cdsEmpresaEMPRA100CAMINHODANFES: TStringField;
    cdsEmpresaEMPRA2WSUF: TStringField;
    cdsEmpresaEMPRIWSAMBIENTE: TIntegerField;
    cdsEmpresaEMPRA1VISUALIZAMSG: TStringField;
    cdsEmpresaEMPRA100PROXYHOST: TStringField;
    cdsEmpresaEMPRIPROXYPORTA: TIntegerField;
    cdsEmpresaEMPRA50PROXYUSUARIO: TStringField;
    cdsEmpresaEMPRA50PROXYSENHA: TStringField;
    cdsEmpresaEMPRA50EMAILHOST: TStringField;
    cdsEmpresaEMPRIEMAILPORTA: TIntegerField;
    cdsEmpresaEMPRA75EMAILUSUARIO: TStringField;
    cdsEmpresaEMPRA50EMAILSENHA: TStringField;
    dsEmpresa: TDataSource;
    Label82: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label83: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label84: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    WBResposta: TWebBrowser;
    Function  MontaXML:Boolean;
    Function  TabelaNFE_123(Produto, Situacao:string): String;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure MnCancelarNotadeFiscalClick(Sender: TObject);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure BtnOperacaoEstoqueClick(Sender: TObject);
    procedure BtnTransportadoraClick(Sender: TObject);
    procedure EditCdTranspKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnCliFornEmpClick(Sender: TObject);
    procedure DBEditCodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnPlanoRectoClick(Sender: TObject);
    procedure BtnPedidoClick(Sender: TObject);
    procedure DBEditPVKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ImprimirEtiquetasdeCdigodeBarras1Click(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure BtnVendedorClick(Sender: TObject);
    procedure ComboNumerarioPrazoChange(Sender: TObject);
    procedure SQLTemplatePLRCICODChange(Sender: TField);
    procedure SQLTemplateAfterCancel(DataSet: TDataSet);
    procedure SQLContasReceberNewRecord(DataSet: TDataSet);
    procedure SQLContasReceberBeforePost(DataSet: TDataSet);
    procedure SQLContasReceberBeforeDelete(DataSet: TDataSet);
    procedure SQLTemplateNOFIN2VLRFRETEChange(Sender: TField);
    procedure NotaFiscal1Click(Sender: TObject);
    procedure Identific1Click(Sender: TObject);
//    procedure ImprimirDuplicatas1Click(Sender: TObject);
    procedure SQLTemplateOPESICODChange(Sender: TField);
    procedure BtnEmpresaClick(Sender: TObject);
    procedure SQLTemplateAfterInsert(DataSet: TDataSet);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure RecalcularFinanceiroClick(Sender: TObject);
    procedure SQLPedidoVendaBeforeDelete(DataSet: TDataSet);
    procedure ImportaPedidoVenda(PedidoVendaID : String);
    procedure ImportarCupom ;
    procedure SQLTemplatePDVDA13IDChange(Sender: TField);
    procedure FormActivate(Sender: TObject);
    procedure MnGerarNotadeCupomClick(Sender: TObject);
    procedure ComboNumerarioVistaChange(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure GerarNFdeVendaConsignadaClick(Sender: TObject);
    procedure SQLNotaFiscalItemBeforePost(DataSet: TDataSet);
    procedure ImprimirNotaFiscal;
    procedure SQLNotaFiscalItemCalcFields(DataSet: TDataSet);
    procedure SQLNotaFiscalItemNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforeInsert(DataSet: TDataSet);
    procedure SQLTemplateNOFIN2VLRNOTAChange(Sender: TField);
    procedure SQLContasReceberPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure ComboHistoricoPadraoExit(Sender: TObject);
    procedure ComboHistoricoPadraoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CriaNovaNota;
    procedure ComboVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnAvalistaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    function TipoFonte(Nome: String):TTipoFonte;
    procedure ImprimirNotaFiscalPersonalizada;
    procedure ImprimeDadosNFPersonalizado(Divisao : Integer);
    procedure ImprimeFinanNFPersonalizado;
    procedure ImprimeItensNFPersonalizado;
    procedure ImprimeServsNFPersonalizado;

    Function  TrocaEnter(nTxt:String):String;
    procedure MontaXMLCancelamento;
    procedure ImprimirNotaNovo1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboMotoristaExit(Sender: TObject);
    procedure ComboObsNotaExit(Sender: TObject);
    procedure DBMemo2Exit(Sender: TObject);
    procedure BTNLocalizarClick(Sender: TObject);
    procedure BTNRecalcularFinanceiroClick(Sender: TObject);
    procedure BtnExcluirParcAtuaisClick(Sender: TObject);
    procedure ComboPlanoRectoExit(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure MnRecalcularImpostosClick(Sender: TObject);
    procedure MnTrocarStatusEncerradaparaAberta1Click(Sender: TObject);
    procedure ComboObsCorpoExit(Sender: TObject);
    procedure MnNFEGerarArquivoEnvioClick(Sender: TObject);
    procedure MnNFECancelamentoNotaEletronicaClick(Sender: TObject);
    procedure MnNFERetornoNotaEletronicaClick(Sender: TObject);
    procedure rocarStatusdaNFeparaNull1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit25KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GerarArquivosdeNotasProcessadaparaContabilidade1Click(
      Sender: TObject);
    procedure DBEdit50KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateNOFIN2PERCCONTRSOCIALChange(Sender: TField);
    procedure SQLTemplateNOFIN2PERCIRChange(Sender: TField);
    procedure SQLTemplateNOFIN2PERCPISChange(Sender: TField);
    procedure SQLTemplateNOFIN2PERCINSSChange(Sender: TField);
    procedure SQLTemplateNOFIN2PERCMATERIALChange(Sender: TField);
    procedure SQLTemplateNOFIN2PERCMAODEOBRAChange(Sender: TField);
    procedure SQLTemplateNOFIN2PERCCOFINSChange(Sender: TField);
    procedure Imprimir1Click(Sender: TObject);
    procedure SQLTemplateBeforeOpen(DataSet: TDataSet);
    procedure BtDadosPadroesClick(Sender: TObject);
    procedure OrdemServioGrficas1Click(Sender: TObject);
    procedure rocaStatusNFCanceladaparaAbertanomovestoque1Click(
      Sender: TObject);
    procedure NotaFiscalJava1Click(Sender: TObject);
    procedure ReimprimirDANFE1Click(Sender: TObject);
    procedure ReenviarEmail1Click(Sender: TObject);
    procedure CancelarNFe1Click(Sender: TObject);
    procedure EncerrarNotaFiscalJava1Click(Sender: TObject);
    procedure RxSpeedButton1Click(Sender: TObject);
    procedure RxSpeedButton2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure InunitilizarNmeros1Click(Sender: TObject);
    procedure SQLTemplateNOFICFINALIDADEChange(Sender: TField);
    procedure otasasNotasFiscaisEletronicasListadas1Click(Sender: TObject);
    procedure VerificarStatusdaNFe1Click(Sender: TObject);
    procedure RxSpeedButton3Click(Sender: TObject);
    procedure BtnGravaConfigNFEClick(Sender: TObject);
    procedure ACBrNFe1GerarLog(const Mensagem: String);
    procedure ACBrNFe1StatusChange(Sender: TObject);
    procedure ConsultarWebService1Click(Sender: TObject);
    procedure sbtnCaminhoCertClick(Sender: TObject);
    procedure btnF12Click(Sender: TObject);
    procedure ConerBtn1Click(Sender: TObject);
  private
    Config : String;

    { Private declarations }
    IDNOTAIMP,
    PedidoAnterior,
    PedidoNovo,
    PlanoAnterior,
    StatusAnterior,
    StatusNovo:String;
    CriandoNota,
    PlanoDoCliente,
    ClienteDoPedido,
    CancelandoNota,
    TrocaEntrada,
    AtivarFinanceiro, CalculandoFrete :Boolean;
    ValorEntrada,
    ValorFrete,
    ValorIcmsFrete,
    ValorVista :Double;
    ContasReceberCliente,ContasReceberID:String;
    BkpEmpresaCorrente :Integer;
    function RetornaPais(nPais:Integer): String ;
    function FaltamDadosNasParcelas  : Boolean;
    function GeraNotaVendaConsignada : Boolean;
    function TemMovimentoEstoqueNF(IDNotaFiscal:string) : Boolean;
    function InformarDadosCheque : boolean ;
    function CalculoSubstituicaoTributaria: String;
    function VerificaDadosCliente : Boolean;
    Function VerificaDadosProduto : Boolean;
    Function VerificaDadosTransp  : Boolean;
    Function ExecAndWait(Comando: String ; WindowState: word):Boolean;
    // Funcoes NFE

    procedure GravarConfiguracao;
    procedure LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
    function Gerar_XMLACBr():string;
    function RetornaCofins(Produto:String): String ;
    function RetornaPis(Produto:String): String ;
    function SN(sNum:string):string;
  public
    Arquivo : TextFile;
    GerandoNota,
    InserindoNota, InserindoCupomFiscal, PermiteExcluirSemPerguntar : Boolean;
    VarPDVDA13ID,
    VarSerie,
    VarTRANICOD,
    VarNOFIA30NROPEDCOMP,
    VarNOFIA30COMPRADOR,
    VarNOFIINROTALAO,
    VarPLRCICOD,
    VarCLIEA13ID,
    VarVENDICOD,
    VarNOFIN2VLRFRETE,
    VarNOFIN2VLRDESCPROM,
    VarNOFIA255OBS,
    VarOperacaoEstoque, VarOperacaoEntradaSaida, 
    Titulo,  Linha, SitTrib,
    EntradaSaida : String;
    VarNumero, VarNroItem : Integer;
    PesoLiquido, PesoBruto : Double;
    IncrementaNroCheque : Boolean;
    { Public declarations }
    procedure Inicia_NFe;
    function PontoVirgula(xText:String):String;
    function SoNumeros(xText:String):String;
  end;

var
  FormCadastroNotaFiscal: TFormCadastroNotaFiscal;
  PainelDivisao : array [0..3] of string = ('CFIPILININICAB','','','CFIPILININIRODAPE');
  lProcesso: TProcessInformation;
  vBC_Total, vICMS_Total, vBCST_Total, vST_Total, vProd_Total, vFrete_Total, vSeg_Total, vDesc_total, vII_Total,
  vIPI_Total, vPIS_Total, vCOFINS_Total, vOutro_Total, vNF_Total : Extended;

implementation

uses CadastroNotaFiscalFinanceiro, CadastroNotaFiscalItem, UnitLibrary,
  CadastroPedidoVenda, DataModulo, TelaImportacaoPedidoVenda,
  CadastroOperacoesEstoque, CadastroTransportadora, CadastroFornecedor,
  CadastroCliente,  TelaConsultaEmpresa,
  TelaEmissaoEtiquetasCodigoBarras, CadastroVendedor,
  {TelaImpressaoDuplicatas} TelaConsultaCupom,
  TelaItensVendaConsignacao, TelaConsultaPlanoRecebimento, WaitWindow,
  DataModuloImpNotaFiscal, DataModuloTemplate, TelaConsultaPlanoContas,
  TelaDadosCheque, WindowsLibrary, ExtensoLib, CadastroAvalista,
  TelaConsultaOperacaoTesouraria, TelaAssistenteLancamentoContasReceber,
  TelaImpressaoBloquetos, ProcessandoNFe, TelaConfigPedidos,
  CadastroGraficaOrdem, CadastroNotaFiscalReferenciada,
  CadastroNotaFiscalCartaCorrecao, TelaInutilizacaoNFe, pcnNFe, Math,
  ACBrNFeWebServices, StatusNFe, email, pcnRetConsReciNFe, pcnProcNFe;

{$R *.dfm}

procedure TFormCadastroNotaFiscal.CriaNovaNota;
begin
  Application.ProcessMessages;
  GerandoNota := True;
  Dm.ImportandoPedidoVenda := True;
  InserindoNota := False;
  SqlTemplate.Append;
  SQLTemplate.FieldByName('PDVDA13ID').AsString          := VarPDVDA13ID;
  SQLTemplate.FieldByName('SERIA5COD').AsString          := VarSerie;
  SQLTemplate.FieldByName('OPESICOD').AsString           := VarOperacaoEstoque;
  SQLTemplate.FieldByName('NOFA1ENTRADASAIDA').AsString  := VarOperacaoEntradaSaida;
  SQLTemplate.FieldByName('TRANICOD').AsString           := VarTRANICOD;
  SQLTemplate.FieldByName('NOFIA30NROPEDCOMP').AsString  := VarNOFIA30NROPEDCOMP;
  SQLTemplate.FieldByName('NOFIA30COMPRADOR').AsString   := VarNOFIA30COMPRADOR;
  SQLTemplate.FieldByName('NOFIINROTALAO').AsString      := VarNOFIINROTALAO;
  SQLTemplate.FieldByName('PLRCICOD').AsString           := VarPLRCICOD;
  SQLTemplate.FieldByName('CLIEA13ID').AsString          := VarCLIEA13ID;
  SQLTemplate.FieldByName('VENDICOD').AsString           := VarVENDICOD;
  SQLTemplate.FieldByName('NOFIN2VLRFRETE').AsString     := VarNOFIN2VLRFRETE;
  SQLTemplate.FieldByName('NOFIN2VLRDESCPROM').AsString  := VarNOFIN2VLRDESCPROM;
  SQLTemplate.FieldByName('NOFIA255OBS').AsString        := VarNOFIA255OBS;
  SQLTemplate.Post;
  GerandoNota := False;
end;

procedure TFormCadastroNotaFiscal.ImportaPedidoVenda(PedidoVendaID : String);
var
 TotNroItens : Integer;
  //////////////////////////////////////////////////////////////
  procedure AtualizaNotaFiscal(Key : string);
    function SUM(Field : string) : double;
    var
      Query : TQuery;
    begin
      Query := TQuery.Create(Application);
      Query.DatabaseName := DM.DB.DatabaseName;
      Query.SQL.Clear;
      Query.SQL.Add('SELECT SUM(' + Field + ') AS TOTAL FROM NOTAFISCALITEM WHERE NOFIA13ID = "' + Key + '"');
      Query.Open;
      Result := Query.FieldByName('TOTAL').AsFloat;
      Query.Free;
    end;
    function CalculaServico(Field : String) : Double;
    var
      QueryServico : TQuery;
    begin
      QueryServico := TQuery.Create(Application);
      QueryServico.DatabaseName := DM.DB.DatabaseName;
      QueryServico.SQL.Clear;
      QueryServico.SQL.ADD('SELECT SUM(' + Field + ') AS TOTALSERVICO ');
      QueryServico.SQL.ADD('FROM NOTAFISCALITEM LEFT OUTER JOIN PRODUTO ON NOTAFISCALITEM.PRODICOD = PRODUTO.PRODICOD ');
      QueryServico.SQL.ADD('WHERE PRODUTO.PRODCSERVICO = "S" and NOTAFISCALITEM.NOFIA13ID = "' + Key + '"');
      QueryServico.Open;
      Result := QueryServico.FieldByName('TOTALSERVICO').AsFloat;
      QueryServico.Free;
    end;
  var
    TOTAL : double;
    TOTALSERVICO : Double;
  begin
    SQLTemplate.Edit;
    //TOTAL := SUM('(NFITN2VLRUNIT * NFITN3QUANT) - NFITN2VLRDESC');
    TOTAL := SUM('(NFITN2VLRUNIT * NFITN3QUANT)');

//    TOTALSERVICO := CalculaServico('(NFITN2VLRUNIT * NFITN3QUANT) - NFITN2VLRDESC');
    TOTALSERVICO := CalculaServico('(NFITN2VLRUNIT * NFITN3QUANT)');
    if TOTALSERVICO > 0 then
      SQLTemplate.FieldByName('NOFIN2VLRPRODUTO').AsFloat := TOTAL - TOTALSERVICO
    else
      SQLTemplate.FieldByName('NOFIN2VLRPRODUTO').AsFloat := TOTAL;
//    SQLTemplate.FieldByName('NOFIN2VLRDESC').AsFloat := SUM('NFITN2VLRDESC');
    SQLTemplate.FieldByName('NOFIN2BASCALCICMS').asFloat := SUM('NFITN2BASEICMS');
    SQLTemplate.FieldByName('NOFIN2VLRICMS').asFloat := SUM('NFITN2VLRICMS');
    SQLTemplate.FieldByName('NOFIN2BASCALCSUBS').asFloat := SUM('NFITN2BASESUBS');
    SQLTemplate.FieldByName('NOFIN2VLRSUBS').asFloat := SUM('NFITN2VLRSUBS');
    SQLTemplate.FieldByName('NOFIN2VLRIPI').asFloat := SUM('NFITN2VLRIPI');
    if SQLTemplate.FieldByName('NOFIN2VLRIPI').asFloat > 0 then
      SQLTemplate.FieldByName('NOFIN2BASCALCCIPI').asFloat := TOTAL;
    SQLTemplate.FieldByName('NOFIN2VLRISSQN').asFloat := SUM('NFITN2VLRISSQN');
    if SQLTemplate.FieldByName('NOFIN2VLRISSQN').asFloat > 0 then
      SQLTemplate.FieldByName('NOFIN2VLRSERVICO').asFloat := TOTALSERVICO;
    SQLTemplate.FieldByName('NOFIN3QUANT').asFloat := SUM('NFITN3QUANT');
    if PesoBruto > 0 then
      SQLTemplate.FieldByName('NOFIN3PESBRUT').asFloat := PesoBruto;
    if PesoLiquido > 0 then
      SQLTemplate.FieldByName('NOFIN3PESLIQ').asFloat  := PesoLiquido;
    SQLTemplate.Post;
  end;

  procedure ImportaItensPedido;
  procedure ImportaComposicaoPedido;
  begin
      SQLComposicaoPedido.First;

      SQLTemplate.AutoCalcFields := False;
      SQLTemplate.AutoCalcFields := True;
      SQLNotaFiscalItem.Open;
      while not SQLComposicaoPedido.Eof do
        begin
          Inc(NumItem);
          Inc(TotNroItens);
          SQLNotaFiscalItem.Append;
          SQLNotaFiscalItem.FieldByName('NOFIA13ID').AsString := SQLTemplate.FieldByName('NOFIA13ID').AsString;
          SQLNotaFiscalItem.FieldByName('PRODICOD').AsInteger := SQLComposicaoPedido.FieldByName('PRODICODFILHO').AsInteger;
          if SQLTemplate.FieldByName('CampoImpostoLookUp').AsString = '' then
            begin
              Informa('Tipo de movimentação não tem campo para cálculo de ICMS!');
              Exit;
            end
          else
            begin
              DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[SQLNotaFiscalItem.FieldByName('PRODICOD').AsString],1);
              SQLNotaFiscalItemNFITICST.Value := DM.SQLTemplate.FindField('PRODIORIGEM').AsInteger + DM.SQLTemplate.FindField('PRODISITTRIB').AsInteger;

              if (SQLTemplate.FieldByName('CalcIPILookUp').AsString = 'S') then
                begin
                  if (DM.SQLTemplate.FindField('PRODN3PERCIPI').asFloat <> 0) then
                    SQLNotaFiscalItem.FieldByName('NFITN2PERCIPI').asFloat := DM.SQLTemplate.FindField('PRODN3PERCIPI').asFloat
                  else
                    SQLNotaFiscalItem.FieldByName('NFITN2PERCIPI').asFloat := 0;
                end
              else
                SQLNotaFiscalItem.FieldByName('NFITN2PERCIPI').asFloat := 0;
              if DM.SQLTemplate.FindField('PRODCSERVICO').asString = 'S' then
                SQLNotaFiscalItem.FieldByName('NFITN2PERCISSQN').AsFloat := DM.SQLConfigVenda.FieldByName('CFVEN3ALIQISSQN').asFloat
              else
                SQLNotaFiscalItem.FieldByName('NFITN2PERCISSQN').AsFloat := 0;

              if (DM.SQLTemplate.FindField('ICMSICOD').asVariant <> null) and
                 (SQLTemplate.FieldByName('CalcICMSLookUp').AsString = 'S') then
                begin
                  SQLICMS.Close;
                  SQLICMS.ParamByName('ICMSICOD').asInteger := DM.SQLTemplate.FindField('ICMSICOD').AsInteger;
                  SQLICMS.Open;
                  if SQLTemplate.FieldByName('EmpresaUFLookUp').asString <> SQLTemplate.FieldByName('CliFornEmpEstadoLookUp').asString then
                    begin
                      SQLICMSUF.Close;
                      SQLICMSUF.ParamByName('ICMUA2UF').asString := SQLTemplate.FieldByName('CliFornEmpEstadoLookUp').asString;
                      SQLICMSUF.Open;
                      SQLNotaFiscalItem.FieldByName('NFITN2PERCICMS').asFloat := SQLICMSUF.FindField('ICMUN2ALIQUOTA').asFloat;
                      if (SQLTemplate.FieldByName('OrigemDestinoLookUp').asVariant <> null) and
                         (SQLTemplate.FieldByName('OrigemDestinoLookUp').AsString <> '') then
                         begin
                            case SQLTemplate.FieldByName('OrigemDestinoLookUp').AsString[1] of
                              'C': begin
                                     SQLNotaFiscalItem.FieldByName('NFITN2PERCSUBS').asFloat := 0;
                                     SQLNotaFiscalItem.FieldByName('NFITN2PERCREDUCAO').asFloat := 0;
                                   end;
                             end;
                         end
                      else
                        begin
                          SQLNotaFiscalItem.FieldByName('NFITN2PERCSUBS').asFloat := 0;
                          SQLNotaFiscalItem.FieldByName('NFITN2PERCREDUCAO').asFloat := 0;
                        end;
                      SQLICMSUF.Close;
                    end
                  else
                    begin
                      SQLNotaFiscalItem.FieldByName('NFITN2PERCICMS').asFloat := SQLICMS.FindField('ICMSN2ICMSM1').asFloat;
                      if (SQLTemplate.FieldByName('OrigemDestinoLookUp').asVariant <> null) and
                         (SQLTemplate.FieldByName('OrigemDestinoLookUp').AsString <> '') then
                        begin
                          case SQLTemplate.FieldByName('OrigemDestinoLookUp').AsString[1] of
                            'C': begin
                                   SQLNotaFiscalItem.FieldByName('NFITN2PERCREDUCAO').asFloat := SQLICMS.FindField('ICMSN2REDBASEICMS').asFloat;
                                   SQLNotaFiscalItem.FieldByName('NFITN2PERCSUBS').asFloat := SQLICMS.FindField('ICMSN2PERCSUBSTSAI').asFloat;
                                 end;
                          end;
                        end
                      else
                        begin
                          SQLNotaFiscalItem.FieldByName('NFITN2PERCSUBS').asFloat := 0;
                          SQLNotaFiscalItem.FieldByName('NFITN2PERCREDUCAO').asFloat := 0;
                        end;
                    end;
                  SQLICMS.Close;
                end;
            end;
          SQLNotaFiscalItem.FieldByName('PDVDA13ID').Value               := SQLComposicaoPedido.FieldByName('PDVDA13ID').Value;
          SQLNotaFiscalItem.FieldByName('PVITIITEM').AsInteger           := SQLComposicaoPedido.FieldByName('PVITIITEM').AsInteger;
          SQLNotaFiscalItem.FieldByName('NFITN3QUANT').AsFloat           := SQLComposicaoPedido.FieldByName('PVCON3QUANT').AsFloat;
          SQLNotaFiscalItem.FieldByName('NFITN3QUANTVEND').AsFloat       := SQLComposicaoPedido.FieldByName('PVCON3QUANT').AsFloat;
          SQLNotaFiscalItem.FieldByName('NFITN2VLRUNIT').AsFloat         := SQLComposicaoPedido.FieldByName('PVCON2VLRUNIT').AsFloat;
          SQLNotaFiscalItem.FieldByName('NFITN2VLRDESC').AsFloat         := SQLComposicaoPedido.FieldByName('PVCON2VLRDESC').AsFloat;
          SQLNotaFiscalItem.FieldByName('NFITN2PERCDESC').AsFloat        := SQLComposicaoPedido.FieldByName('PVCON2PERCDESC').AsFloat;
          CalculaImpostosNotaFiscalItem(SQLNotaFiscalItem,DSTemplate);
          SQLNotaFiscalItem.FieldByName('NFITA254OBS').AsString          := SQLComposicaoPedido.FieldByName('PVCOA254OBS').AsString;
          PesoLiquido := PesoLiquido + SQLNotaFiscalItem.FieldByName('PesoLiquidoLookup').AsFloat;
          PesoBruto   := PesoBruto + SQLNotaFiscalItem.FieldByName('PesoBrutoLookup').AsFloat;
          SQLNotaFiscalItem.Post;

          if DM.SQLConfigVendaCFVEINROITENSNF.Value > 0 then
            if (NumItem = DM.SQLConfigVendaCFVEINROITENSNF.AsInteger) and (SQLComposicaoPedido.RecordCount > TotNroItens) then
              begin
                if Pergunta('SIM','O número máximo de itens para uma mesma nota foi alcançado, você deseja iniciar uma nova nota ?') then
                  begin
                    if SQLTemplatePDVDA13ID.AsString <> '' then
                      begin
                        NumItem := 0;
                        AtualizaNotaFiscal(SQLTemplate.FieldByName('NOFIA13ID').AsString);
                        CriaNovaNota;
                      end;
                  end
                else
                  begin
                    AtualizaNotaFiscal(SQLTemplate.FieldByName('NOFIA13ID').AsString);
                    DestroyWindow;
                    VarPDVDA13ID := '';
                    SQLProduto.Close;
                    Exit;
                  end;
              end;
          SQLComposicaoPedido.Next;
      end;
  end;
begin
  if SQLPedidoVendaItem.Active then
    SQLPedidoVendaItem.Close;
  SQLPedidoVendaItem.ParamByName('PDVDA13ID').asString := SQLTemplate.FieldByName('PDVDA13ID').asString;
  SQLPedidoVendaItem.Open;

  if not SQLPedidoVendaItem.IsEmpty then
    SQLPedidoVendaItem.First
  else
    begin
      Informa('O Pedido de venda selecionado não possui ítens, esta operação será cancelada !');
      Abort;
      DestroyWindow;
    end;

  SQLTemplate.AutoCalcFields := False;
  SQLTemplate.AutoCalcFields := True;
  SQLNotaFiscalItem.Open;
  while not SQLPedidoVendaItem.Eof do
    begin
      // Verificar composição do item
      if SQLComposicaoPedido.Active then
        SQLComposicaoPedido.Close;

      SQLComposicaoPedido.ParamByName('PDVDA13ID').asString  := SQLPedidoVendaPDVDA13ID.AsString;
      SQLComposicaoPedido.ParamByName('PVITIITEM').AsString  := SQLPedidoVendaItemPVITIITEM.AsString;
      SQLComposicaoPedido.Open;

      if not SQLComposicaoPedido.IsEmpty then
        begin
          ImportaComposicaoPedido;
        end
      else
        begin
          ///////////////////////////////
          Inc(NumItem);
          Inc(TotNroItens);
          SQLNotaFiscalItem.Append;
          SQLNotaFiscalItem.FieldByName('NOFIA13ID').AsString := SQLTemplate.FieldByName('NOFIA13ID').AsString;
          SQLNotaFiscalItem.FieldByName('PRODICOD').AsInteger := SQLPedidoVendaItem.FieldByName('PRODICOD').AsInteger;
          if SQLTemplate.FieldByName('CampoImpostoLookUp').AsString = '' then
            begin
              Informa('Tipo de movimentação não tem campo para cálculo de ICMS!');
              Exit;
            end
          else
            begin
              DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[SQLNotaFiscalItem.FieldByName('PRODICOD').AsString],1);
              SQLNotaFiscalItemNFITICST.Value := DM.SQLTemplate.FindField('PRODIORIGEM').AsInteger + DM.SQLTemplate.FindField('PRODISITTRIB').AsInteger;

              if (SQLTemplate.FieldByName('CalcIPILookUp').AsString = 'S') then
                begin
                  if (DM.SQLTemplate.FindField('PRODN3PERCIPI').asFloat <> 0) then
                    SQLNotaFiscalItem.FieldByName('NFITN2PERCIPI').asFloat := DM.SQLTemplate.FindField('PRODN3PERCIPI').asFloat
                  else
                    SQLNotaFiscalItem.FieldByName('NFITN2PERCIPI').asFloat := 0;
                end
              else
                SQLNotaFiscalItem.FieldByName('NFITN2PERCIPI').asFloat := 0;
              if DM.SQLTemplate.FindField('PRODCSERVICO').asString = 'S' then
                SQLNotaFiscalItem.FieldByName('NFITN2PERCISSQN').AsFloat := DM.SQLConfigVenda.FieldByName('CFVEN3ALIQISSQN').asFloat
              else
                SQLNotaFiscalItem.FieldByName('NFITN2PERCISSQN').AsFloat := 0;
              if (DM.SQLTemplate.FindField('ICMSICOD').asVariant <> null) and
                 (SQLTemplate.FieldByName('CalcICMSLookUp').AsString = 'S') then
                begin
                  SQLICMS.Close;
                  SQLICMS.ParamByName('ICMSICOD').asInteger := DM.SQLTemplate.FindField('ICMSICOD').AsInteger;
                  SQLICMS.Open;
                  if SQLTemplate.FieldByName('EmpresaUFLookUp').asString <> SQLTemplate.FieldByName('CliFornEmpEstadoLookUp').asString then
                    begin
                      SQLICMSUF.Close;
                      SQLICMSUF.ParamByName('ICMUA2UF').asString := SQLTemplate.FieldByName('CliFornEmpEstadoLookUp').asString;
                      SQLICMSUF.Open;
                      SQLNotaFiscalItem.FieldByName('NFITN2PERCICMS').asFloat := SQLICMSUF.FindField('ICMUN2ALIQUOTA').asFloat;
                      if (SQLTemplate.FieldByName('OrigemDestinoLookUp').asVariant <> null) and
                         (SQLTemplate.FieldByName('OrigemDestinoLookUp').AsString <> '') then
                         begin
                            case SQLTemplate.FieldByName('OrigemDestinoLookUp').AsString[1] of
                              'C': begin
                                     SQLNotaFiscalItem.FieldByName('NFITN2PERCSUBS').asFloat := SQLICMS.FindField('ICMSN2PERCSUBSTSAI').asFloat;
                                     SQLNotaFiscalItem.FieldByName('NFITN2PERCREDUCAO').asFloat := SQLICMS.FindField('ICMSN2REDBASEICMS').asFloat;
                                   end;
                             end;
                         end
                      else
                        begin
                          SQLNotaFiscalItem.FieldByName('NFITN2PERCSUBS').asFloat := 0;
                          SQLNotaFiscalItem.FieldByName('NFITN2PERCREDUCAO').asFloat := 0;
                        end;
                      SQLICMSUF.Close;
                    end
                  else
                    begin
                      SQLNotaFiscalItem.FieldByName('NFITN2PERCICMS').asFloat := SQLICMS.FindField('ICMSN2ICMSM1').asFloat;
                      if (SQLTemplate.FieldByName('OrigemDestinoLookUp').asVariant <> null) and
                         (SQLTemplate.FieldByName('OrigemDestinoLookUp').AsString <> '') then
                        begin
                          case SQLTemplate.FieldByName('OrigemDestinoLookUp').AsString[1] of
                            'C': begin
                                   SQLNotaFiscalItem.FieldByName('NFITN2PERCREDUCAO').asFloat := SQLICMS.FindField('ICMSN2REDBASEICMS').asFloat;
                                   SQLNotaFiscalItem.FieldByName('NFITN2PERCSUBS').asFloat := SQLICMS.FindField('ICMSN2PERCSUBSTSAI').asFloat;
                                 end;
                          end;
                        end
                      else
                        begin
                          SQLNotaFiscalItem.FieldByName('NFITN2PERCSUBS').asFloat := 0;
                          SQLNotaFiscalItem.FieldByName('NFITN2PERCREDUCAO').asFloat := 0;
                        end;
                    end;
                  SQLICMS.Close;
                end;
            end;
          SQLNotaFiscalItem.FieldByName('PDVDA13ID').Value     := SQLPedidoVendaItem.FieldByName('PDVDA13ID').Value;
          SQLNotaFiscalItem.FieldByName('PVITIITEM').AsInteger := SQLPedidoVendaItem.FieldByName('PVITIITEM').AsInteger;
          SQLNotaFiscalItem.FieldByName('NFITN3QUANT').AsFloat := SQLPedidoVendaItem.FieldByName('PVITN3QUANT').AsFloat;
          SQLNotaFiscalItem.FieldByName('NFITN3QUANTVEND').AsFloat := SQLPedidoVendaItem.FieldByName('PVITN3QUANT').AsFloat;
          SQLNotaFiscalItem.FieldByName('NFITN2VLRUNIT').AsFloat   := SQLPedidoVendaItem.FieldByName('PVITN2VLRUNIT').AsFloat;
          SQLNotaFiscalItem.FieldByName('NFITN2VLRDESC').AsFloat   := SQLPedidoVendaItem.FieldByName('PVITN2VLRDESC').AsFloat;
          SQLNotaFiscalItem.FieldByName('NFITN2PERCDESC').AsFloat  := SQLPedidoVendaItem.FieldByName('PVITN2PERCDESC').AsFloat;
          CalculaImpostosNotaFiscalItem(SQLNotaFiscalItem,DSTemplate);
          SQLNotaFiscalItem.FieldByName('LOTEA30NRO').AsString := SQLPedidoVendaItem.FieldByName('LOTEA30NRO').AsString;
          SQLNotaFiscalItem.FieldByName('NFITA254OBS').AsString := SQLPedidoVendaItem.FieldByName('PDVDA255OBS1').AsString;
          PesoLiquido := PesoLiquido + SQLNotaFiscalItem.FieldByName('PesoLiquidoLookup').AsFloat;
          PesoBruto   := PesoBruto + SQLNotaFiscalItem.FieldByName('PesoBrutoLookup').AsFloat;
          SQLNotaFiscalItem.Post;

          if DM.SQLConfigVendaCFVEINROITENSNF.Value > 0 then
            if (NumItem = DM.SQLConfigVendaCFVEINROITENSNF.AsInteger) and (SQLPedidoVendaItem.RecordCount > TotNroItens) then
              begin
                if Pergunta('SIM','O número máximo de itens para uma mesma nota foi alcançado, você deseja iniciar uma nova nota ?') then
                  begin
                    if SQLTemplatePDVDA13ID.AsString <> '' then
                      begin
                        NumItem := 0;
                        AtualizaNotaFiscal(SQLTemplate.FieldByName('NOFIA13ID').AsString);
                        CriaNovaNota;
                      end;
                  end
                else
                  begin
                    AtualizaNotaFiscal(SQLTemplate.FieldByName('NOFIA13ID').AsString);
                    DestroyWindow;
                    VarPDVDA13ID := '';
                    SQLProduto.Close;
                    Exit;
                  end;
              end;
        end;
      SQLPedidoVendaItem.Next;
    end;
    SQLComposicaoPedido.Close;
    SQLPedidoVenda.Close;
    SQLPedidoVendaItem.Close;
  end;
begin
  DM.ImportandoPedidoVenda := True;
//  MakeWindowMessage('Importando Pedido de Venda');
  SQLProduto.Open;
  if DM.SQLConfigVendaCFVECALTPEDIMPORT.Value = 'S' then
    begin
      if (SQLTemplate.FieldByName('PDVDA13ID').AsVariant <> null) and
         (SQLTemplate.State = dsInsert) Then
        begin
          SQLPedidoVenda.Close;
          if VarPDVDA13ID = '' then
            SQLPedidoVenda.ParamByName('PDVDA13ID').asString := SQLTemplate.FieldByName('PDVDA13ID').asString
          else
            SQLPedidoVenda.ParamByName('PDVDA13ID').asString := VarPDVDA13ID;
          SQLPedidoVenda.Open;
          // Troca Status do Pedido pra FATURADO e Alimenta a Coluna Importado(SN)
          SQLPedidoVenda.Edit;
          SQLPedidoVenda.FieldByName('PDVDCSTATUS').AsString := 'F';
          SQLPedidoVenda.FieldByName('PDVDCIMPORTADO').AsString := 'S';
          SQLPedidoVenda.Post;
          SQLPedidoVenda.First;
          if not SQLPedidoVenda.Eof then
            begin
              if (SQLPedidoVenda.FieldByName('PDVDCSTATUS').AsString = 'E') or
                 (SQLPedidoVenda.FieldByName('PDVDCSTATUS').AsString = 'A') then
                begin
                  SQLTemplate.FieldByName('TRANICOD').asVariant           := SQLPedidoVenda.FieldByName('TRANICOD').asVariant;
                  SQLTemplate.FieldByName('NOFIA30NROPEDCOMP').asVariant  := SQLPedidoVenda.FieldByName('PDVDA30NROPEDCOMP').asVariant;
                  SQLTemplate.FieldByName('NOFIA30COMPRADOR').asVariant   := SQLPedidoVenda.FieldByName('PDVDA30COMPRADOR').asVariant;
                  SQLTemplate.FieldByName('NOFIINROTALAO').asVariant      := SQLPedidoVenda.FieldByName('PDVDINROTALAO').asVariant;
                  SQLTemplate.FieldByName('VENDICOD').asVariant           := SQLPedidoVenda.FieldByName('VENDICOD').asVariant;
                  SQLTemplate.FieldByName('CLIEA13ID').asVariant          := SQLPedidoVenda.FieldByName('CLIEA13ID').asVariant;
                  SQLTemplate.FieldByName('NOFIN2VLRFRETE').asVariant     := SQLPedidoVenda.FieldByName('PDVDN2VLRFRETE').asVariant;
                  SQLTemplate.FieldByName('NOFIN2VLRDESC').asVariant      := SQLPedidoVenda.FieldByName('PDVDN2VLRDESC').asVariant;
                  SQLTemplate.FieldByName('NOFIN2VLRDESCPROM').asVariant  := SQLPedidoVenda.FieldByName('PDVDN2VLRDESCPROM').asVariant;
                  SQLTemplate.FieldByName('NOFIA255OBS').asVariant        := SQLPedidoVenda.FieldByName('PDVDTOBS').asVariant;
                  SQLTemplate.FieldByName('PLRCICOD').asVariant           := SQLPedidoVenda.FieldByName('PLRCICOD').asVariant;
                  SQLTemplate.FieldByName('ROTAICOD').asVariant           := SQLPedidoVenda.FieldByName('ROTAICOD').asVariant;
                end
              else
                begin
                  Informa('Este Pedido de Venda está cancelado!');
                  Abort;
                 // DestroyWindow;
                end;
            end
          else
            Informa('Pedido de Venda não encontrado!');

          DSMasterSys := DsTemplate;
          CriaFormulario(TFormCadastroNotaFiscalItem,'FormCadastroNotaFiscalItem',False,False,True,'Nota Fiscal Nº ' + SQLTemplateNOFIINUMERO.AsString);
          CriaFormulario(TFormTelaImportacaoPedidoVenda,'FormTelaImportacaoPedidoVenda',False,False,True,'');

          SQLPedidoVenda.Close;
        end;
    end
  else
    begin
      if SQLTemplate.FieldByName('PDVDA13ID').AsString <> '' then
        begin
          SQLPedidoVenda.Close;
          if VarPDVDA13ID = '' then
            SQLPedidoVenda.ParamByName('PDVDA13ID').asString := SQLTemplate.FieldByName('PDVDA13ID').asString
          else
            SQLPedidoVenda.ParamByName('PDVDA13ID').asString := VarPDVDA13ID;
          SQLPedidoVenda.Open;
          if (not SQLPedidoVenda.IsEmpty) and
             (SQLPedidoVendaPDVDCSTATUS.AsString <> 'C') then
            begin
              // Troca Status do Pedido pra FATURADO e Alimenta a Coluna Importado(SN)
              SQLPedidoVenda.Edit;
              SQLPedidoVenda.FieldByName('PDVDCSTATUS').AsString := 'F';
              SQLPedidoVenda.FieldByName('PDVDCIMPORTADO').AsString := 'S';
              SQLPedidoVenda.Post;
              SQLPedidoVenda.First;
              SQLTemplate.FieldByName('CLIEA13ID').AsString         := SQLPedidoVenda.FieldByName('CLIEA13ID').AsString;
              SQLTemplate.FieldByName('TRANICOD').AsInteger         := SQLPedidoVenda.FieldByName('TRANICOD').AsInteger;
              SQLTemplate.FieldByName('NOFIA30NROPEDCOMP').AsString := SQLPedidoVenda.FieldByName('PDVDA30NROPEDCOMP').AsString;
              SQLTemplate.FieldByName('NOFIA30COMPRADOR').AsString  := SQLPedidoVenda.FieldByName('PDVDA30COMPRADOR').AsString;
              SQLTemplate.FieldByName('VENDICOD').AsInteger         := SQLPedidoVenda.FieldByName('VENDICOD').AsInteger;
              SQLTemplate.FieldByName('NOFIN2VLRFRETE').AsFloat     := SQLPedidoVenda.FieldByName('PDVDN2VLRFRETE').AsFloat;
              SQLTemplate.FieldByName('NOFIN2VLRDESC').AsFloat      := SQLPedidoVenda.FieldByName('PDVDN2VLRDESC').AsFloat;
              SQLTemplate.FieldByName('NOFIN2VLRDESCPROM').AsFloat  := SQLPedidoVenda.FieldByName('PDVDN2VLRDESCPROM').AsFloat;
              SQLTemplate.FieldByName('NOFIA255OBS').AsString       := SQLPedidoVenda.FieldByName('PDVDTOBS').AsString;
              SQLTemplate.FieldByName('PLRCICOD').asVariant         := SQLPedidoVenda.FieldByName('PLRCICOD').asVariant;
              SQLTemplate.Post;

              ImportaItensPedido;

              AtualizaNotaFiscal(SQLTemplate.FieldByName('NOFIA13ID').AsString);
            end
          else
            begin
              Informa('Pedido de Venda Cancelado, Impossível realizar a importação');
              // DestroyWindow;
              Abort;
            end;
       end
     else
       begin
         Informa('Você deve informar o número do pedido');
         Abort;
       end;
    end;

  // DestroyWindow;
  SQLProduto.Close;
  VarPDVDA13ID := '';
  DM.ImportandoPedidoVenda := False;
end;

Function TFormCadastroNotaFiscal.FaltamDadosNasParcelas:Boolean;
Begin
  SQLParcelas.Open;
  If SQLParcelasPARC.AsInteger>0 Then
    Result:=True
  Else
    Result:=False;
  SQLParcelas.Close;
End;

procedure TFormCadastroNotaFiscal.FormCreate(Sender: TObject);
begin
  inherited;
  BkpEmpresaCorrente := EmpresaCorrente;
  TABELA := 'NOTAFISCAL';
  SQLCliente.Open;
  SQLFornecedor.Open;
  SQLObsNota.Open;
  SQLSerie.Open;
  SQLSerieNF.Open;
  SQLCFOP.Open;
  SQLTipoDoc.Open;
  SQLPortador.Open;
  SQLHistoricoPadrao.Open;
  SQLVeiculo.Open;
  SQLConta.Open;
  if not SQLNumerarioVista.Active then SQLNumerarioVista.Open;
  if not SQLNumerarioPrazo.Active then SQLNumerarioPrazo.Open;
  if DM.SQLConfigVendaCFVECALTPEDIMPORT.Value = 'S' then
    MnImportarDadosdoPedidodeVenda.Visible := true
  else
    MnImportarDadosdoPedidodeVenda.Visible := false ;
  Titulo := LabelTitulo.Caption;
  Dm.Cupom := '';
  Dm.ImportandoPedidoVenda := False;
  GerandoNota   := False;
  InserindoNota := False;
  DM.GerarNovaNota := False;
  if not SQLAvalista.Active then SQLAvalista.Open;
end;

procedure TFormCadastroNotaFiscal.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  ValorFrete     := 0;
  ValorIcmsFrete := 0;
  ValorVista     := 0;
  inherited;

  StatusAnterior                       := '';
  PlanoAnterior                        := '';
  PedidoAnterior                       := '';
  SQLTemplateNOFICFINALIDADE.Value     := '1'; // NOTA FISCAL ELETRONICA NORMAL
  SQLTemplateNOFICSTATUS.Value         := 'A';
  if dm.sqlconfigvendaCFVECFRETEPADRAO.Value <> '' then
    SQLTemplateNOFICFRETEPORCONTA.Value  := dm.sqlconfigvendaCFVECFRETEPADRAO.Value
  else
    SQLTemplateNOFICFRETEPORCONTA.Value  := 'C';
  SQLTemplateNOFIN2BASCALCCIPI.Value   := 0;
  SQLTemplateNOFIN2BASCALCICMS.Value   := 0;
  SQLTemplateNOFIN2BASCALCSUBS.Value   := 0;
  SQLTemplateNOFIN2VLRDESC.Value       := 0;
  SQLTemplateNOFIN2VLRFRETE.Value      := 0;
  SQLTemplateNOFIN2VLRICMS.Value       := 0;
  SQLTemplateNOFIN2VLRIPI.Value        := 0;
  SQLTemplateNOFIN2VLRISSQN.Value      := 0;
  SQLTemplateNOFIN2VLRNOTA.Value       := 0;
  SQLTemplateNOFIN2VLROUTRASDESP.Value := 0;
  SQLTemplateNOFIN2VLRPRODUTO.Value    := 0;
  SQLTemplateNOFIN2VLRSEGURO.Value     := 0;
  SQLTemplateNOFIN2VLRSERVICO.Value    := 0;
  SQLTemplateNOFIN2VLRSUBS.Value       := 0;
  SQLTemplateNOFIN3PESBRUT.Value       := 0;
  SQLTemplateNOFIN3PESLIQ.Value        := 0;
  SQLTemplateNOFIN3QUANT.Value         := 0;
  SQLTemplateNOFIN2VLRICMSFRETE.Value  := 0;
  SQLTemplateNOFIN2VLRDESCPROM.Value   := 0;

  SQLTemplateNOFIN2PERCMAODEOBRA.Value    := 0;
  SQLTemplateNOFIN2PERCMATERIAL.Value     := 0;
  SQLTemplateNOFIN2PERCINSS.Value         := 0;
  SQLTemplateNOFIN2PERCCOFINS.Value       := 0;
  SQLTemplateNOFIN2PERCPIS.Value          := 0;
  SQLTemplateNOFIN2PERCIR.Value           := 0;
  SQLTemplateNOFIN2PERCCONTRSOCIAL.Value  := 0;
  SQLTemplateNOFIN2PERCISSQN.Value        := 0;

  SQLTemplateNOFIn3VLRMAODEOBRA.Value     := 0;
  SQLTemplateNOFIn3VLRMATERIAL.Value      := 0;
  SQLTemplateNOFIn3VLRINSS.Value          := 0;
  SQLTemplateNOFIn3VLRCOFINS.Value        := 0;
  SQLTemplateNOFIn3VLRPIS.Value           := 0;
  SQLTemplateNOFIn3VLRIR.Value            := 0;
  SQLTemplateNOFIN3vlrCONTRSOCIAL.Value   := 0;

  if dm.DataEmissaoPedidos > 0 then
    SQLTemplateNOFIDEMIS.AsString  := FormatDateTime('dd/mm/yyyy',dm.DataEmissaoPedidos)
  else
    SQLTemplateNOFIDEMIS.AsString  := FormatDateTime('dd/mm/yyyy',Now);
  if dm.DataEntregaPedidos > 0 then
    SQLTemplateNOFIDSAIDAENTRADA.AsString  := FormatDateTime('dd/mm/yyyy hh:mm',dm.DataEntregaPedidos) ;
//  else
  //  SQLTemplateNOFIDSAIDAENTRADA.AsString  := FormatDateTime('dd/mm/yyyy hh:mm',Now);

  //SELECIONA VENDEDOR PADRAO
  if DM.SQLTerminalAtivoVENDICOD.AsVariant <> Null then
    SQLTemplateVENDICOD.AsInteger := DM.SQLTerminalAtivoVENDICOD.AsInteger;

  if dm.SerieAtualPedidos <> '' then
    SQLTemplateSERIA5COD.Value := dm.SerieAtualPedidos
  else
    SQLTemplateSERIA5COD.Value := SQLSerieSERIA5COD.Value;

  if dm.RotaAtualPedidos > 0 then
    SQLTemplateRotaIcod.Value := dm.RotaAtualPedidos;
  if dm.VendedorAtualPedidos > 0 then
    SQLTemplateVENDICOD.Value := dm.VendedorAtualPedidos;
  if dm.TranspAtualPedidos > 0 then
    SQLTemplateTRANICOD.Value := dm.TranspAtualPedidos;
  if dm.VeiculoAtualPedidos <> '' then
    SQLTemplateVEICA13ID.Value := dm.VeiculoAtualPedidos;
  if SQLTemplateVEICA13ID.Value <> '' then
    SQLTemplateNOFIA8PLACAVEIC.Value := dm.SQLLocate('VEICULO','VEICA13ID','VEICA7PLACA','"'+SQLTemplateVEICA13ID.Value+'"');



  //SELECIONA O PLANO PADRAO
  if DM.SQLTerminalAtivoPLRCICOD.AsVariant <> Null then
    SQLTemplatePLRCICOD.AsInteger := DM.SQLTerminalAtivoPLRCICOD.AsInteger;

  if DM.SQLConfigVendaCFVETOBSPADRAONF.AsString <> '' then
    SQLTemplateNOFIA255OBS.AsString := DM.SQLConfigVendaCFVETOBSPADRAONF.AsString;

  if UsuarioAtualNome <> '' then
    SQLTemplateUSUAA60LOGIN.AsString   := UsuarioAtualNome;

  if UsuarioCorrente  > 0 then
    SQLTemplateUSUAICOD.AsInteger      := UsuarioCorrente;

  if DM.GerarNovaNota then
    begin
      SQLTemplate.FieldByName('SERIA5COD').AsString          := VarSerie;
      SQLTemplate.FieldByName('OPESICOD').AsString           := VarOperacaoEstoque;
      SQLTemplate.FieldByName('NOFA1ENTRADASAIDA').AsString  := VarOperacaoEntradaSaida;
      SQLTemplate.FieldByName('TRANICOD').AsString           := VarTRANICOD;
      SQLTemplate.FieldByName('NOFIA30NROPEDCOMP').AsString  := VarNOFIA30NROPEDCOMP;
      SQLTemplate.FieldByName('NOFIA30COMPRADOR').AsString   := VarNOFIA30COMPRADOR;
      SQLTemplate.FieldByName('NOFIINROTALAO').AsString      := VarNOFIINROTALAO;
      SQLTemplate.FieldByName('PLRCICOD').AsString           := VarPLRCICOD;
      SQLTemplate.FieldByName('CLIEA13ID').AsString          := VarCLIEA13ID;
      SQLTemplate.FieldByName('VENDICOD').AsString           := VarVENDICOD;
      SQLTemplate.FieldByName('NOFIN2VLRFRETE').AsString     := VarNOFIN2VLRFRETE;
      SQLTemplate.FieldByName('NOFIN2VLRDESCPROM').AsString  := VarNOFIN2VLRDESCPROM;
      SQLTemplate.FieldByName('NOFIA255OBS').AsString        := VarNOFIA255OBS;
    end;

  // Dados Padrao Financeiro da Nota
  ComboNumerarioVista.Value := dm.SQLTerminalAtivoTERMINUMEVISTA.AsString;
  ComboNumerarioPrazo.Value := dm.SQLTerminalAtivoTERMINUMEPRAZO.AsString;
  ComboPortador.Value       := dm.SQLConfigVendaPORTICOD.AsString;
  ComboTipoDoc.Value        := dm.SQLConfigVendaTPDCICOD.AsString;

  PagePrincipal.ActivePage := TabSheetDadosPrincipais;
  PagePrincipal.Update;
  DBEditCod.SetFocus;
end;

procedure TFormCadastroNotaFiscal.DSTemplateStateChange(Sender: TObject);
begin
  inherited;
  If ((Sender as TDataSource).State in dsEditModes) Then
    Begin
      DBEditPV.TabStop  := True;
      DBEditPV.ReadOnly := False;
      DBEditPV.Color    := clWindow;
    End
  Else
    Begin
      DBEditPV.TabStop  := False;
      DBEditPV.ReadOnly := True;
      DBEditPV.Color    := $00E0E0E0;
    End;
end;

procedure TFormCadastroNotaFiscal.SQLTemplateBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  If Not CancelandoNota Then
  Begin
    If SQLTemplate.FindField('NOFICSTATUS').asString<>'A' Then
      Begin
        Informa('Alterações só serão permitidas quando a nota estiver com status de "Aberta".');
        Abort;
      End;
    If SQLTemplate.FindField('NOFIA15PROTOCOLO').asString <> '' Then
      Begin
        Informa('Não são permitidas Alterações em Notas Fiscais EFETIVADAS.');
        Abort;
      End;
  end;
  StatusAnterior := SQLTemplate.FindField('NOFICSTATUS').Value;
  PlanoAnterior  := SQLTemplate.FindField('PLRCICOD').asString;
  PedidoAnterior := SQLTemplate.FindField('PDVDA13ID').asString;
  ValorFrete     := SQLTemplate.FindField('NOFIN2VLRFRETE').AsFloat;
  ValorIcmsFrete := SQLTemplate.FindField('NOFIN2VLRICMSFRETE').AsFloat;
end;

procedure TFormCadastroNotaFiscal.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
  If SQLTemplate.FindField('NOFICSTATUS').asString<>'A' Then
    Begin
      Informa('Você não pode excluir uma nota fiscal "Encerrada,Cancelada, Denegada ou Inutilizada"!');
      Abort;
    End;
  inherited;
end;

procedure TFormCadastroNotaFiscal.SQLTemplateBeforePost(DataSet: TDataSet);
Var
  Erro, FaltaNumerario: Boolean;
begin
{  if SQLTemplate.State = dsEdit Then
    if SQLTemplateNOFIN3QUANT.Value = 0 then
      begin
        ShowMessage('Atenção! A Qtde de Volume é um campo Obrigatório!');
      end;}

  if DM.SQLConfigVendaCFVECVENDEDOREXIGE.Value = 'S' then
    if SQLTemplateVENDICOD.AsString = '' then
      begin
        ShowMessage('Erro! O Vendedor esta configurado para ser Obrigatório!');
        Abort;
        Exit;
      end;

  BkpEmpresaCorrente := EmpresaCorrente;
  EmpresaCorrente    := SQLTemplateEMPRICOD.AsInteger;
  if not DM.InserindoItemNV then
    begin
      if (StatusAnterior = '') and (StatusAnterior<>SQLTemplate.FindField('NOFICSTATUS').asString) then
        if (SQLTemplate.FindField('NOFICSTATUS').asString <> 'A') then
          begin
            Informa('Status Permitido: "Aberta".');
            EmpresaCorrente := BkpEmpresaCorrente;
            Abort;
          end;
      If (StatusAnterior = 'A')  and (StatusAnterior<>SQLTemplate.FindField('NOFICSTATUS').asString) Then
        If (SQLTemplate.FindField('NOFICSTATUS').asString <> 'E') Then
          Begin
            Informa('Status Permitido: "Encerrada".');
            EmpresaCorrente := BkpEmpresaCorrente;
            Abort;
          End
        Else
          Begin
            If (SQLTemplateOrigemDestinoLookUp.asVariant<>null) and
               (SQLTemplateOrigemDestinoLookUp.AsString <>'')   Then
              Case SQLTemplateOrigemDestinoLookUp.AsString[1] Of
                'C':Begin
                      { If (SQLTemplatePLRCICOD.AsVariant=Null) and ((not DM.ImportandoPedidoVenda) or (not GerandoNota))Then
                        Begin
                          if not Pergunta('SIM','Você não informou nenhum plano de recebimento, deseja continuar mesmo assim ? ') then
                            begin
                              Abort;
                            end
                          else
                            begin
                              If FaltamDadosNasParcelas Then
                                Begin
                                  Informa('Faltam dados nas Parcelas!');
                                  Abort;
                                  Exit;
                                End;
                            end;
                        End; }
                      // Verificar se o valor das parcelas fecham com o valor da nota
                      SQLTotalParcelas.Close;
                      SQLTotalParcelas.Open;
                      if SQLTotalParcelas.FindField('TOTAL').AsFloat > 0 then
                        begin
                          if SQLTotalParcelas.FindField('TOTAL').AsFloat <> SQLTemplateNOFIN2VLRNOTA.AsFloat then
                            begin
                              if not Pergunta('NAO','O total da nota difere do total das parcelas. Deseja continuar mesmo assim?'
                                              + #13 + 'Total da Nota: '      + FormatFloat('#,##0.00',SQLTemplateNOFIN2VLRNOTA.AsFloat)
                                              + #13 + 'Total das Parcelas: ' + FormatFloat('#,##0.00',SQLTotalParcelas.FindField('TOTAL').AsFloat)) then
                                begin
                                  Abort;
                                  Exit;
                                end
                              else
                                begin
                                  if ABS(SQLTemplateNOFIN2VLRNOTA.AsFloat - SQLTotalParcelas.FindField('TOTAL').AsFloat) > 0.10 then
                                    begin
                                      Informa('A diferença entre o total da nota e o total das parcelas é muito alto. R$ ' +
                                              FormatFloat('#,##0.00',ABS(SQLTemplateNOFIN2VLRNOTA.AsFloat - SQLTotalParcelas.FindField('TOTAL').AsFloat)) + #13 +
                                              'O sistema irá cancelar a operação por medidas de segurança!');
                                      SQLTemplate.Cancel;
                                      Abort;
                                      Exit;
                                    end;
                                end;
                            end;
                        end;

                    End;
              End;
            // Vincula o Plano de Contas
            if not SQLOperacaEstoque.Active then SQLOperacaEstoque.Open;
            if SQLOperacaEstoque.Locate('OPESICOD',SQLTemplateOPESICOD.AsString,[]) then
              begin
                if SQLOperacaEstoquePLCTA15CODCRED.AsString <> '' then
                  SQLTemplatePLCTA15CODCRED.AsString := SQLOperacaEstoquePLCTA15CODCRED.AsString;

                if SQLOperacaEstoquePLCTA15CODDEB.AsString <> '' then
                  SQLTemplatePLCTA15CODDEB.AsString := SQLOperacaEstoquePLCTA15CODDEB.AsString;
              end;
          end;
      If (StatusAnterior = 'E')  and (StatusAnterior<>SQLTemplate.FindField('NOFICSTATUS').asString) Then
        If (SQLTemplate.FindField('NOFICSTATUS').asString <> 'C') Then
          Begin
            Informa('Status Permitido: "Cancelada".');
            EmpresaCorrente := BkpEmpresaCorrente;
            Abort;
          End;
      StatusNovo := SQLTemplate.FindField('NOFICSTATUS').asString;
      PedidoNovo := SQLTemplate.FindField('PDVDA13ID').asString;
    End;
  inherited;

  VarPDVDA13ID           := SQLTemplate.FieldByName('PDVDA13ID').AsString;
  VarSerie               := SQLTemplate.FieldByName('SERIA5COD').AsString;
  VarOperacaoEstoque     := SQLTemplate.FieldByName('OPESICOD').AsString;
  VarOperacaoEntradaSaida:= DM.SQLLocate('OPERACAOESTOQUE','OPESICOD','OPERACAO_E_S',SQLTemplateOPESICOD.AsString);
  SQLTemplate.FieldByName('NOFA1ENTRADASAIDA').AsString := VarOperacaoEntradaSaida;
  VarTRANICOD            := SQLTemplate.FieldByName('TRANICOD').AsString;
  VarNOFIA30NROPEDCOMP   := SQLTemplate.FieldByName('NOFIA30NROPEDCOMP').AsString;
  VarNOFIA30COMPRADOR    := SQLTemplate.FieldByName('NOFIA30COMPRADOR').AsString;
  VarNOFIINROTALAO       := SQLTemplate.FieldByName('NOFIINROTALAO').AsString;
  VarPLRCICOD            := SQLTemplate.FieldByName('PLRCICOD').AsString;
  VarCLIEA13ID           := SQLTemplate.FieldByName('CLIEA13ID').AsString;
  VarVENDICOD            := SQLTemplate.FieldByName('VENDICOD').AsString;
  VarNOFIN2VLRFRETE      := SQLTemplate.FieldByName('NOFIN2VLRFRETE').AsString;
  VarNOFIN2VLRDESCPROM   := SQLTemplate.FieldByName('NOFIN2VLRDESCPROM').AsString;
  VarNOFIA255OBS         := SQLTemplate.FieldByName('NOFIA255OBS').AsString;

  If SQLTemplate.State = dsInsert Then
    Begin
      SQLSerie.Close;
      SQLSerie.MacroByName('mEmpresa').value := 'EMPRICOD = '+SQLTemplateEMPRICOD.AsString;
      SQLSerie.Open;
      SQLSerie.Locate('SERIA5COD',SQLTemplateSERIA5COD.asString,[]);
      Erro := True;
      While Erro Do
        Try
          SQLTemplateNOFIINUMERO.Value := SQLSerieSERIINRONF.Value;
          SQLSerie.Edit;
          SQLSerieSERIINRONF.asInteger := SQLSerieSERIINRONF.asInteger + 1;
          SQLSeriePENDENTE.asString    := 'S';
          SQLSerieREGISTRO.asDateTime  := Now;
          SQLSerie.Post;
          Erro := False;
        Except
          If SQLSerie.State in DsEditModes Then SQLSerie.Cancel;
          Erro:=True;
        End;
        // Testa se o cliente possui parcelas em aberto

{        if SQLTemplateCLIEA13ID.Value <> '' then
          VerificaLimiteCredito(SQLTemplateCLIEA13ID.asstring,0,DM.SQLParcelas,DM.SQLCliente);

        if SQLTemplateCLIEA13ID.Value <> '' then
          begin
            DM.SQLTemplate.Close ;
            DM.SQLTemplate.SQL.Clear ;
            DM.SQLTemplate.SQL.Add('select') ;
            DM.SQLTemplate.SQL.Add('Count(*) as NROPARCVENC') ;
            DM.SQLTemplate.SQL.Add('from CONTASRECEBER') ;
            DM.SQLTemplate.SQL.Add('where CLIEA13ID = "' + SQLTemplateCLIEA13ID.AsString + '"') ;
            DM.SQLTemplate.SQL.Add(' and (CTRCN2VLR-CTRCN2TOTREC) > 0') ;
            DM.SQLTemplate.SQL.Add(' and (CTRCCSTATUS = "A" OR CTRCCSTATUS = "N")') ;
            DM.SQLTemplate.SQL.Add(' and (CTRCCTIPOREGISTRO = "N" OR CTRCCTIPOREGISTRO IS NULL)') ;
            DM.SQLTemplate.Open ;
            if DM.SQLTemplate.FieldByName('NROPARCVENC').Value > 0 then
              ShowMessage('Este cliente possui parcelas em aberto!');
          end;
}
    End;
  IDNOTAIMP := DataSet.FindField('NOFIA13ID').asString;
end;

procedure TFormCadastroNotaFiscal.MnCancelarNotadeFiscalClick(
  Sender: TObject);
var
  InfoRetorno : TInfoRetornoUser;
begin
  inherited;
  if (Alltrim(SQLTemplateNOFIA5CODRETORNO.AsString) <> '101') and (SQLTemplateNOFICSTATUS.AsString <> 'C') then
  begin
    If SQLTemplate.FindField('NOFIA15PROTOCOLO').asString <> '' Then
      Begin
        Informa('Não são permitidas Alterações em Notas Fiscais EFETIVADAS.');
        Abort;
      End;
  End;

  if AutenticaUsuario(UsuarioAtualNome,'USUACCANCVENDA',InfoRetorno) <> 'N' then
    begin
      if (not SQLTemplate.IsEmpty) and (SQLTemplate.FindField('NOFICSTATUS').asString = 'E') and (Application.MessageBox('Deseja realmente cancelar a Nota?','Atenção',MB_YesNo)=IdYes) then
        begin
          CancelandoNota := True;
          SQLTemplate.Edit;
          SQLTemplate.FindField('NOFICSTATUS').asString   := 'C';
          SQLTemplate.FindField('USUAICOD').AsInteger     := InfoRetorno.CodUsuarioAutenticado;
          SQLTemplate.FindField('USUAA60LOGIN').AsString  := InfoRetorno.NomeUsuarioAutenticado;
          SQLTemplate.FindField('NOFIDCANCEL').AsDateTime := Date;
          SQLTemplate.Post;
          CancelandoNota := False;
        end;
    end
  else
    begin
      Informa('Você não tem autorização para cancelar vendas!');
      Abort;
      Exit;
    end;
end;

procedure TFormCadastroNotaFiscal.SQLTemplateAfterPost(DataSet: TDataSet);
var
  Erro         : Boolean;
  ValorBase    : Double;
  I            : Integer;
begin
  inherited;
  If DM.InserindoItemNV Then Exit;

  // ENCERRANDO NOTA FISCAL
  EntradaSaida := SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCENTRADASAIDA',SQLTemplateOPESICOD.AsString);
  If (StatusNovo = 'E') and (DM.SQLConfigVenda.FindField('CFVECMOVESTOQUENF').asString='S') and (EntradaSaida <> 'N') Then
    Begin
      SQLNotaFiscalItens.SQL.Text := 'Select * From NOTAFISCALITEM Where NOFIA13ID = "' + DataSet.FindField('NOFIA13ID').AsString + '"' ;
      SQLNotaFiscalItens.Open;
      SQLNotaFiscalItens.First;
      MakeWindowMessage('Encerrando Nota Fiscal...');
      while not SQLNotaFiscalItens.Eof do
        begin
          if  not TestaNotaCompraMovimentoEstoque('',  '', DataSet.FindField('NOFIA13ID').AsString,
                                                  SQLNotaFiscalItens.FindField('PRODICOD').AsString) then
            GravaMovimentoEstoque(DM.SQLProduto,
                                  DM.SQLProdutoFilho,
                                  DM.SQLProdutoSaldo,
                                  EmpresaCorrente,//Empresa
                                  SQLNotaFiscalItens.FindField('PRODICOD').asInteger,//Produto
                                  DataSet.FindField('OPESICOD').Value,//Operacao
                                  SQLNotaFiscalItens.FindField('NFITN3QUANT').asFloat,//Quantidade
                                  DataSet.FindField('EntradaSaidaLookUp').asString,//ENTRADA/SAIDA
                                  FormatDateTime('mm/dd/yyyy', DataSet.FindField('NOFIDEMIS').AsDateTime),
                                  SQLNotaFiscalItens.FindField('NFITN2VLRUNIT').asString,
                                  'NOTAFISCAL',
                                  DataSet.FindField('NOFIA13ID').AsString,
                                  SQLNotaFiscalItens.FindField('LOTEA30NRO').AsString);
          SQLNotaFiscalItens.Next;
        end;
        SQLNotaFiscalItens.Close;

      // RECEBER PARCELA A VISTA DO CONTASRECEBER E GERAR MOVTO CAIXA
//      if not SQLContasReceber.Active then
//        SQLContasReceber.Open;
//      SQLContasReceber.First;
//      if SQLContasReceberCTRCDEMIS.Value = SQLContasReceberCTRCDVENC.Value then
//        if Pergunta('NÃO','A Nota atual possui um valor À VISTA. Deseja quitar automaticamente?') Then
//          Begin
//            If Not SQLRecebimento.Active Then
//              SQLRecebimento.Open;
//            if SQLRecebimento.IsEmpty then
//              begin
//                SQLRecebimento.Append;
//                SQLRecebimentoCTRCA13ID.Value          := SQLContasReceberCTRCA13ID.Value;
//                SQLRecebimentoTERMICODREC.Value        := TerminalCorrente;
//                SQLRecebimentoRECEDRECTO.AsString      := FormatDateTime('dd/mm/yyyy',SQLContasReceberCTRCDEMIS.Value);
//                SQLRecebimentoRECEDDATAMOV.AsString    := FormatDateTime('dd/mm/yyyy',SQLContasReceberCTRCDEMIS.Value);
//                SQLRecebimentoRECEICOD.Value           := 1;
//                SQLRecebimentoRECEN2VLRRECTO.Value     := SQLContasReceberCTRCN2VLR.Value;
//                SQLRecebimentoRECEN2VLRMULTA.Value     := 0;
//                SQLRecebimentoRECEN2VLRJURO.Value      := 0;
//                SQLRecebimentoRECEN2MULTACOBR.Value    := 0;
//                SQLRecebimentoRECEN2DESC.Value         := 0;
//                SQLRecebimentoEMPRICODREC.Value        := EmpresaCorrente;
//                SQLRecebimentoCLIEA13ID.Value          := SQLTemplate.FieldByName('CLIEA13ID').Value;
//                SQLRecebimentoRECEA254HISTORICO.Value  := 'ENTRADA DE VENDA NF NRO.: ' + SQLTemplateNOFIINUMERO.AsString;
//                SQLRecebimentoPENDENTE.Value           := 'S';
//                SQLRecebimentoREGISTRO.Value           := now;
//                SQLRecebimento.Post;
//                SQLContasReceber.Edit;
//                SQLContasReceberCTRCN2TOTREC.Value       := SQLContasReceberCTRCN2VLR.Value;
//                SQLContasReceberCTRCDULTREC.AsString     := FormatDateTime('dd/mm/yyyy',SQLContasReceberCTRCDVENC.Value);
//                SQLContasReceberEMPRICODULTREC.Value     := SQLContasReceberEMPRICOD.Value;
//                SQLContasReceberCTRCN2TOTDESCREC.Value   := 0;
//                SQLContasReceberCTRCN2TOTJUROREC.Value   := 0;
//                SQLContasReceberCTRCN2TOTMULTACOBR.Value := 0;
//                SQLContasReceberCTRCN2TOTMULTAREC.Value  := 0;
//                SQLContasReceber.Post;
//              end;
//            // LANCAR NO CAIXA SE O CLIENTE QUIZER
//            Dm.SQLConfigFinanceiro.Close;
//            Dm.SQLConfigFinanceiro.Open;
//            if Dm.SQLConfigFinanceiroCGFIUSATESOURARIA.AsString = 'S' then
//              begin
//                Application.CreateForm(TFormTelaConsultaOperacaoTesouraria,FormTelaConsultaOperacaoTesouraria);
//                FormTelaConsultaOperacaoTesouraria.SQLOperacaoTesouraria.Close;
//                FormTelaConsultaOperacaoTesouraria.SQLOperacaoTesouraria.MacroByName('DebCred').AsString := 'OPTECDEBCRED = "C"';
//                FormTelaConsultaOperacaoTesouraria.SQLOperacaoTesouraria.Open;
//                FormTelaConsultaOperacaoTesouraria.ComboOperacaoTes.KeyValue := dm.SQLConfigVendaCFVEIOPTESVENDNFNA.AsVariant;
//                FormTelaConsultaOperacaoTesouraria.ShowModal;
//                if FormTelaConsultaOperacaoTesouraria.ModalResult = MrOK then
//                  LancaMovimentacaoTesouraria(SQLTemplateEMPRICOD.AsInteger,
//                                              TerminalCorrente,
//                                              ComboNumerarioVista.KeyValue,
//                                              FormTelaConsultaOperacaoTesouraria.ComboOperacaoTes.KeyValue,
//                                              SQLContasReceberCTRCN2VLR.Value,
//                                              'VENDA NOTA FISCAL NRO.: ' + SQLTemplateNOFIINUMERO.AsString,
//                                              '',
//                                              '',
//                                              '',
//                                              '',
//                                              SQLTemplateNOFIDEMIS.AsDateTime,
//                                              'NF-' + SQLTemplateNOFIINUMERO.AsString,
//                                              SQLTemplatePLCTA15CODCRED.asString);
//                FormTelaConsultaOperacaoTesouraria.Close;
//                FormTelaConsultaOperacaoTesouraria.Free;
//              end;
//          End;
//        //if Pergunta('NÃO','A Nota atual possui um valor À VISTA. Deseja quitar automaticamente?') Then
          //Begin
//            If Not SQLRecebimento.Active Then
//              SQLRecebimento.Open;
//            if SQLRecebimento.IsEmpty then
//              begin
//                SQLRecebimento.Append;
//                SQLRecebimentoCTRCA13ID.Value          := SQLContasReceberCTRCA13ID.Value;
//                SQLRecebimentoTERMICODREC.Value        := TerminalCorrente;
//                SQLRecebimentoRECEDRECTO.AsString      := FormatDateTime('dd/mm/yyyy',SQLContasReceberCTRCDEMIS.Value);
//                SQLRecebimentoRECEDDATAMOV.AsString    := FormatDateTime('dd/mm/yyyy',SQLContasReceberCTRCDEMIS.Value);
//                SQLRecebimentoRECEICOD.Value           := 1;
//                SQLRecebimentoRECEN2VLRRECTO.Value     := SQLContasReceberCTRCN2VLR.Value;
//                SQLRecebimentoRECEN2VLRMULTA.Value     := 0;
//                SQLRecebimentoRECEN2VLRJURO.Value      := 0;
//                SQLRecebimentoRECEN2MULTACOBR.Value    := 0;
//                SQLRecebimentoRECEN2DESC.Value         := 0;
//                SQLRecebimentoEMPRICODREC.Value        := EmpresaCorrente;
//                SQLRecebimentoCLIEA13ID.Value          := SQLTemplate.FieldByName('CLIEA13ID').Value;
//                SQLRecebimentoRECEA254HISTORICO.Value  := 'ENTRADA DE VENDA NF NRO.: ' + SQLTemplateNOFIINUMERO.AsString;
//                SQLRecebimentoPENDENTE.Value           := 'S';
//                SQLRecebimentoREGISTRO.Value           := now;
//                SQLRecebimento.Post;
//                SQLContasReceber.Edit;
//                SQLContasReceberCTRCN2TOTREC.Value       := SQLContasReceberCTRCN2VLR.Value;
//                SQLContasReceberCTRCDULTREC.AsString     := FormatDateTime('dd/mm/yyyy',SQLContasReceberCTRCDVENC.Value);
//                SQLContasReceberEMPRICODULTREC.Value     := SQLContasReceberEMPRICOD.Value;
//                SQLContasReceberCTRCN2TOTDESCREC.Value   := 0;
//                SQLContasReceberCTRCN2TOTJUROREC.Value   := 0;
//                SQLContasReceberCTRCN2TOTMULTACOBR.Value := 0;
//                SQLContasReceberCTRCN2TOTMULTAREC.Value  := 0;
//                SQLContasReceber.Post;
//              end;
//            // LANCAR NO CAIXA SE O CLIENTE QUIZER
//            Dm.SQLConfigFinanceiro.Close;
//            Dm.SQLConfigFinanceiro.Open;
//            if Dm.SQLConfigFinanceiroCGFIUSATESOURARIA.AsString = 'S' then
//              begin
//                Application.CreateForm(TFormTelaConsultaOperacaoTesouraria,FormTelaConsultaOperacaoTesouraria);
//                FormTelaConsultaOperacaoTesouraria.SQLOperacaoTesouraria.Close;
//                FormTelaConsultaOperacaoTesouraria.SQLOperacaoTesouraria.MacroByName('DebCred').AsString := 'OPTECDEBCRED = "C"';
//                FormTelaConsultaOperacaoTesouraria.SQLOperacaoTesouraria.Open;
//                FormTelaConsultaOperacaoTesouraria.ComboOperacaoTes.KeyValue := dm.SQLConfigVendaCFVEIOPTESVENDNFNA.AsVariant;
//                FormTelaConsultaOperacaoTesouraria.ShowModal;
//                if FormTelaConsultaOperacaoTesouraria.ModalResult = MrOK then
//                  LancaMovimentacaoTesouraria(SQLTemplateEMPRICOD.AsInteger,
//                                              TerminalCorrente,
//                                              ComboNumerarioVista.KeyValue,
//                                              FormTelaConsultaOperacaoTesouraria.ComboOperacaoTes.KeyValue,
//                                              SQLContasReceberCTRCN2VLR.Value,
//                                              'VENDA NOTA FISCAL NRO.: ' + SQLTemplateNOFIINUMERO.AsString,
//                                              '',
//                                              '',
//                                              '',
//                                              '',
//                                              SQLTemplateNOFIDEMIS.AsDateTime,
//                                              'NF-' + SQLTemplateNOFIINUMERO.AsString,
//                                              SQLTemplatePLCTA15CODCRED.asString);
//                FormTelaConsultaOperacaoTesouraria.Close;
//                FormTelaConsultaOperacaoTesouraria.Free;
//              end;
          //End;
      // Gravar Data Primeira Compra
      if SQLTemplateNOFIN2VLRPRODUTO.Value > 0 then
        begin
          Dm.SQLCliente.Close;
          Dm.SQLCliente.Sql.Clear;
          Dm.SQLCliente.Sql.Add('UPDATE CLIENTE SET CLIEDPRICOMPRA = ' + '"' + FormatDateTime('mm/dd/yyyy',SQLTemplateNOFIDEMIS.Value) + '"' + ' Where CLIEA13ID = ' + '"' + SQLTemplateCLIEA13ID.AsString + '" and CLIEDPRICOMPRA is null') ;
          Dm.SQLCliente.ExecSql;
        end;
      // Gravar Data Ultima Compra
      if SQLTemplateNOFIN2VLRPRODUTO.Value > 0 then
        begin
          Dm.SQLCliente.Close;
          Dm.SQLCliente.Sql.Clear;
          Dm.SQLCliente.Sql.Add('UPDATE CLIENTE SET CLIEDULTCOMPRA = ' + '"' + FormatDateTime('mm/dd/yyyy',SQLTemplateNOFIDEMIS.Value) + '"' + ' Where CLIEA13ID = ' + '"' + SQLTemplateCLIEA13ID.AsString + '"') ;
          Dm.SQLCliente.ExecSql;
        end;
      if (DM.SQLConfigVendaCFVECEXCLUIPEDFAT.asString = 'S') and (SQLTemplatePDVDA13ID.AsVariant <> Null) then
        begin
          SQLPedidoVenda.Close;
          SQLPedidoVenda.ParamByName('PDVDA13ID').asString:= SQLTemplate.FieldByName('PDVDA13ID').asString;
          SQLPedidoVenda.Open;
          SQLPedidoVenda.First;
          if not SQLPedidoVenda.Eof then
            SQLPedidoVenda.Delete;
          SQLPedidoVenda.Close;
        end;
      DestroyWindow;
    end;
  // CANCELANDO NOTA FISCAL
  if (StatusNovo = 'C') Then
    Begin
      If (DM.SQLConfigVenda.FindField('CFVECMOVESTOQUENF').asString='S')
        and (TemMovimentoEstoqueNF(SQLTemplateNOFIA13ID.AsString)) and
        (EntradaSaida <> 'N') and (SQLTemplateNOFIN2VLRPRODUTO.Value > 0) then
        begin
          SQLNotaFiscalItens.SQL.Text:='Select * From NOTAFISCALITEM Where NOFIA13ID="'+DataSet.FindField('NOFIA13ID').AsString+'"';
          SQLNotaFiscalItens.Open;
          SQLNotaFiscalItens.First;
          MakeWindowMessage('Cancelando Nota Fiscal...');
          While Not SQLNotaFiscalItens.Eof Do
            Begin
              GravaMovimentoEstoque(DM.SQLProduto,
                                    DM.SQLProdutoFilho,
                                    DM.SQLProdutoSaldo,
                                    EmpresaCorrente,//Empresa
                                    SQLNotaFiscalItens.FindField('PRODICOD').asInteger,//Produto
                                    DM.SQLConfigVendaOPESICODCANCNF.Value,//Operacao
                                    SQLNotaFiscalItens.FindField('NFITN3QUANT').asFloat,//Quantidade
                                    EntradaSaida,//ENTRADA/SAIDA
                                    FormatDateTime('mm/dd/yyyy', Now),
                                    SQLNotaFiscalItens.FindField('NFITN2VLRUNIT').asString,
                                    'NOTAFISCAL',
                                    DataSet.FindField('NOFIA13ID').AsString,
                                    SQLNotaFiscalItens.FindField('LOTEA30NRO').AsString);
              If (SQLNotaFiscalItens.FindField('PDVDA13ID').asVariant<>Null) and
                 (SQLNotaFiscalItens.FindField('PVITIITEM').asVariant<>Null) Then
                Begin
                  SQLAtualizaItemPedido.ParamByName('PDVDA13ID').Value := SQLNotaFiscalItens.FindField('PDVDA13ID').Value;
                  SQLAtualizaItemPedido.ParamByName('PVITIITEM').Value := SQLNotaFiscalItens.FindField('PVITIITEM').Value;
                  SQLAtualizaItemPedido.ParamByName('QtdePed').asFloat := SQLNotaFiscalItens.FindField('NFITN3QUANTVEND').asFloat;
                  SQLAtualizaItemPedido.ExecSql;
                End;
              SQLNotaFiscalItens.Next;
            End;
          DestroyWindow;
        End;
      // Cancelar Contas Receber
      if SQLTemplateNOFIN2VLRPRODUTO.Value > 0 then
        begin
          SQLContasReceber.Close;
          SQLContasReceber.Open;
          SQLContasReceber.First;
          ValorVista := 0;
          While Not SQLContasReceber.Eof Do
            Begin
              SQLContasReceber.Edit;
              SQLContasReceberCTRCCSTATUS.Value := 'C';
              SQLContasReceber.Post;
              if (SQLContasReceberCTRCINROPARC.AsInteger = 0) and (SQLContasReceberCTRCN2VLR.AsFloat = SQLContasReceberCTRCN2TOTREC.AsFloat) then
                ValorVista := ValorVista + SQLContasReceberCTRCN2TOTREC.AsFloat;
              SQLContasReceber.Next;
            End;
          SQLContasReceber.Close;
          if ValorVista > 0 then
            begin
              DM.SQLConfigVenda.Close;
              DM.SQLConfigVenda.Open;
              Application.CreateForm(TFormTelaConsultaOperacaoTesouraria,FormTelaConsultaOperacaoTesouraria);
              FormTelaConsultaOperacaoTesouraria.SQLOperacaoTesouraria.Close;
              FormTelaConsultaOperacaoTesouraria.SQLOperacaoTesouraria.MacroByName('DebCred').AsString := 'OPTECDEBCRED = "D"';
              FormTelaConsultaOperacaoTesouraria.SQLOperacaoTesouraria.Open;
              if DM.SQLConfigVendaCFVEIOPTESVENDANF.AsVariant <> Null then
                FormTelaConsultaOperacaoTesouraria.ComboOperacaoTes.Value := DM.SQLConfigVendaCFVEIOPTESVENDANF.AsString;
              FormTelaConsultaOperacaoTesouraria.ShowModal;
              if FormTelaConsultaOperacaoTesouraria.ModalResult = MrOK then
                begin
                  LancaMovimentacaoTesouraria(SQLTemplateEMPRICOD.AsInteger,
                                              TerminalCorrente,
                                              1, // Numerario dinheiro
                                              FormTelaConsultaOperacaoTesouraria.ComboOperacaoTes.KeyValue,
                                              ValorVista,
                                              'DEBITO DE CANCELAMENTO NOTA FISCAL NRO.: ' + SQLTemplateNOFIINUMERO.AsString,
                                              '',
                                              '',
                                              '',
                                              '',
                                              SQLTemplateNOFIDEMIS.Value,
                                              'NF-' + SQLTemplateNOFIINUMERO.AsString,
                                              SQLTemplatePLCTA15CODDEB.AsString);
                end
              else
                begin
                  Informa('O lançamento de estorno na tesouraria não será efetuado!');
                end;
              if Application.FindComponent('FormTelaConsultaOperacaoTesouraria') <> Nil then
                FormTelaConsultaOperacaoTesouraria.Destroy;
            end;
        end;
    End;
  If PedidoNovo <> PedidoAnterior Then
    If PedidoNovo <> '' Then
      Begin
        AtualizaContasReceberPV.Close;
        AtualizaContasReceberPV.MacroByName('MDados').asString := 'NOFIA13ID = "' + SQLTemplateNOFIA13ID.AsString + '" , CTRCDEMIS = "'+FormatDateTime('mm/dd/yyyy',SQLTemplateNOFIDEMIS.Value)+'"';
        If SQLTemplate.FindField('PLCTA15COD').asVariant <> Null Then
          AtualizaContasReceberPV.MacroByName('MConta').asString := ' , PLCTA15COD = "'+SQLTemplate.FindField('PLCTA15COD').asString+'"'
        Else
          AtualizaContasReceberPV.MacroByName('MConta').asString := '';

        AtualizaContasReceberPV.MacroByName('MPedido').asString := 'PDVDA13ID = "' + SQLTemplate.FindField('PDVDA13ID').AsString + '"';

        Erro:=True;
        While Erro Do
          Try
            AtualizaContasReceberPV.ExecSQL;
            Erro:=False;
          Except
            Erro:=True;
          End;
      End;

  EmpresaCorrente := BkpEmpresaCorrente;
  if not Dm.ImportandoPedidoVenda then
    begin
      VarPDVDA13ID := '';
    end;
  if (InserindoNota) and (not Dm.ImportandoPedidoVenda) then
    begin
      InserindoNota    := False;
      AtivarFinanceiro := True;
      Button5.Click;
    end;
end;

procedure TFormCadastroNotaFiscal.BtnOperacaoEstoqueClick(Sender: TObject);
begin
  if SQLLocate('NOTAFISCALITEM','NOFIA13ID','NOFIA13ID','"' + SQLTemplateNOFIA13ID.AsString + '"') <> '' then
    begin
      Informa('Esta nota fiscal possui itens, portanto a operação de estoque não pode ser alterada!' + #13 +
              'Você deve excluir todos os itens para alterar a operação ou lançar uma nova nota!');
      Exit;        
    end;
  inherited;
  FieldLookUp := SQLTemplate.FindField('OPESICOD');
  FieldOrigem := 'OPESICOD';
  DataSetLookup := SQLOperacaEstoque;
  CriaFormulario(TFormCadastroOperacoesEstoque,'FormCadastroOperacoesEstoque',False,True,True,'');
end;

procedure TFormCadastroNotaFiscal.BtnTransportadoraClick(Sender: TObject);
begin
  inherited;
  FieldLookUp := SQLTemplate.FindField('TRANICOD');
  FieldOrigem := 'TRANICOD';
  DataSetLookup := SQLTransportadora;
  CriaFormulario(TFormCadastroTransportadora,'FormCadastroTransportadora',False,True,True,'');
end;

procedure TFormCadastroNotaFiscal.EditCdTranspKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (Key = VK_F2) and (BtnTransportadora.Enabled) Then
    BtnTransportadora.Click;
end;

procedure TFormCadastroNotaFiscal.BtnCliFornEmpClick(Sender: TObject);
begin
  inherited;
  If GroupBoxCliFornEmp.Caption='Cliente' Then
    Begin
      FieldLookUp := SQLTemplate.FindField('CLIEA13ID');
      FieldOrigem := 'CLIEA13ID';
      CriaFormulario(TFormCadastroCliente,'FormCadastroCliente',False,True,False,'');
    End;
  If GroupBoxCliFornEmp.Caption='Fornecedor' Then
    Begin
      FieldLookUp := SQLTemplate.FindField('FORNICOD');
      FieldOrigem := 'FORNICOD';
      CriaFormulario(TFormCadastroFornecedor,'FormCadastroFornecedor',False,True,False,'');
    End;
  If GroupBoxCliFornEmp.Caption='Empresa' Then
    Begin
      FieldLookUp := SQLTemplate.FindField('EMPRICODDEST');
      FieldOrigem := 'EMPRICOD';
      CriaFormulario(TFormTelaConsultaEmpresa,'FormTelaConsultaEmpresa',False,True,True,'');
    End;
end;

procedure TFormCadastroNotaFiscal.DBEditCodKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (Key = VK_F2) and (BtnCliFornEmp.Enabled) Then
    BtnCliFornEmp.Click;
end;

procedure TFormCadastroNotaFiscal.BtnPlanoRectoClick(Sender: TObject);
begin
  inherited;
  FieldLookUp := SQLTemplate.FindField('PLRCICOD');
  FieldOrigem := 'PLRCICOD';
  CriaFormulario(TFormTelaConsultaPlanoRecebimento,'FormTelaConsultaPlanoRecebimento',False,True,True,'');
end;

procedure TFormCadastroNotaFiscal.BtnPedidoClick(Sender: TObject);
begin
  inherited;
  FieldLookUp := SQLTemplate.FindField('PDVDA13ID');
  FieldOrigem := 'PDVDA13ID';
  CriaFormulario(TFormCadastroPedidoVenda,'FormCadastroPedidoVenda',False,True,False,'');
end;

procedure TFormCadastroNotaFiscal.DBEditPVKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (Key = VK_F2) and (BtnPedido.Enabled) Then
    BtnPedido.Click ;
end;

procedure TFormCadastroNotaFiscal.ImprimirEtiquetasdeCdigodeBarras1Click(
  Sender: TObject);
begin
  inherited;
  EtiquetaNotaVenda := SQLTemplate.FindField('NOFIA13ID').asString;
  CriaFormulario(TFormTelaEmissaoEtiquetasCodigoBarras,'FormTelaEmissaoEtiquetasCodigoBarras',False,False,True,'');
end;

procedure TFormCadastroNotaFiscal.SQLTemplateCalcFields(DataSet: TDataSet);
begin
  inherited;
  If (SQLTemplateOrigemDestinoLookUp.asVariant<>null) and
     (SQLTemplateOrigemDestinoLookUp.AsString <>'')   Then
    Case SQLTemplateOrigemDestinoLookUp.AsString[1] Of
      'C':Begin
            If DataSet.FieldByName('CLIEA13ID').AsVariant <> null then
              Begin
                If DM.ProcuraRegistro('CLIENTE',['CLIEA13ID'],[SQLTemplateCLIEA13ID.asString],1) Then
                  Begin
                    if DM.SQLTemplate.FindField('PLRCICOD').AsVariant <> null then
                      DataSet.FieldByName('PlanoClienteLookUp').AsVariant          := DM.SQLTemplate.FindField('PLRCICOD').AsVariant;

                    if DM.SQLTemplate.FindField('VENDICOD').AsVariant <>  null then
                      DataSet.FieldByName('VendedorClienteLookUp').AsVariant       := DM.SQLTemplate.FindField('VENDICOD').AsVariant;

                    DataSet.FieldByName('CliFornEmpLookup').AsVariant               := DM.SQLTemplate.FindField('CLIEA60RAZAOSOC').AsVariant;
                    DataSet.FieldByName('CliFornEmpEnderecoLookUp').AsVariant       := DM.SQLTemplate.FindField('CLIEA60ENDRES').AsVariant;
                    DataSet.FieldByName('EmpNumeroEndLookUp').AsVariant             := DM.SQLTemplate.FindField('CLIEA5NROENDRES').AsVariant;
                    DataSet.FieldByName('CliFornEmpEstadoLookUp').AsVariant         := DM.SQLTemplate.FindField('CLIEA2UFRES').AsVariant;
                    DataSet.FieldByName('CliFornEmpcdPaisLookUp').AsVariant         := DM.SQLTemplate.FindField('CLIEICODPAIS').AsVariant;
                    DataSet.FieldByName('CliFornEmpCEPLookUp').AsVariant            := DM.SQLTemplate.FindField('CLIEA8CEPRES').AsVariant;
                    DataSet.FieldByName('CliFornEmpCidadeLookUp').AsVariant         := DM.SQLTemplate.FindField('CLIEA60CIDRES').AsVariant;
                    DataSet.FieldByName('CliFornEmpBairroLookUp').AsVariant         := DM.SQLTemplate.FindField('CLIEA60BAIRES').AsVariant;
                    DataSet.FieldByName('CliFornEmpFoneLookUp').AsVariant           := DM.SQLTemplate.FindField('CLIEA15FONE1').AsVariant;
                    DataSet.FieldByName('CliFornEmpTabelaPrecoLookUp').AsVariant    := DM.SQLTemplate.FindField('TPRCICOD').AsVariant;
                    DataSet.FieldByName('CliFornEmpCdMunicipoNfeLookUp').AsVariant  := DM.SQLTemplate.FindField('CLIEIMUNICODFED').AsVariant;
                    DataSet.FieldByName('CliFornEmpRegime').AsVariant    := DM.SQLTemplate.FindField('CLIECENQUADRAMENTO').AsVariant;


                    If DM.SQLTemplate.FindField('CLIEA5FISJURID').asString = 'F' Then
                      Begin
                        DataSet.FieldByName('CliFornEmpCGCCPFLookUp').AsVariant    := DM.SQLTemplate.FindField('CLIEA11CPF').AsVariant;
                        DataSet.FieldByName('CliFornEmpIERGLookUp').AsVariant      := DM.SQLTemplate.FindField('CLIEA10RG').AsVariant;
                        DataSet.FieldByName('CliFornEmpFisicaJuridica').AsVariant  := 'F';
                      End
                    Else
                      Begin
                        DataSet.FieldByName('CliFornEmpCGCCPFLookUp').AsVariant    := DM.SQLTemplate.FindField('CLIEA14CGC').AsVariant;
                        DataSet.FieldByName('CliFornEmpIERGLookUp').AsVariant      := DM.SQLTemplate.FindField('CLIEA20IE').AsVariant;
                        DataSet.FieldByName('CliFornEmpFisicaJuridica').AsVariant  := 'J';
                      End;
                  End
                Else
                  begin
                    DataSet.FieldByName('CliFornEmpLookup').asString     := MensagemLookUp;
                  end;
              End
            Else
              DataSet.FieldByName('CliFornEmpLookup').AsVariant := NULL;
          End;
      'F':Begin
            If DataSet.FieldByName('FORNICOD').AsVariant <> null then
              Begin
                If DM.ProcuraRegistro('FORNECEDOR',['FORNICOD'],[SQLTemplateFORNICOD.asString],1) Then
                  Begin
                    DataSet.FieldByName('CliFornEmpLookup').AsVariant            := DM.SQLTemplate.FindField('FORNA60RAZAOSOC').AsVariant;
                    DataSet.FieldByName('CliFornEmpEnderecoLookUp').AsVariant    := DM.SQLTemplate.FindField('FORNA60END').AsVariant;
                    DataSet.FieldByName('CliFornEmpEstadoLookUp').AsVariant      := DM.SQLTemplate.FindField('FORNA2UF').AsVariant;
                    DataSet.FieldByName('EmpNumeroEndLookUp').AsVariant          := DM.SQLTemplate.FindField('FORNA5NROEND').AsVariant;
                    DataSet.FieldByName('CliFornEmpcdPaisLookUp').AsVariant      := DM.SQLTemplate.FindField('FORNICODPAIS').AsVariant;
                    DataSet.FieldByName('CliFornEmpCEPLookUp').AsVariant         := DM.SQLTemplate.FindField('FORNA8CEP').AsVariant;
                    DataSet.FieldByName('CliFornEmpCidadeLookUp').AsVariant      := DM.SQLTemplate.FindField('FORNA60CID').AsVariant;
                    DataSet.FieldByName('CliFornEmpBairroLookUp').AsVariant      := DM.SQLTemplate.FindField('FORNA60BAI').AsVariant;
                    DataSet.FieldByName('CliFornEmpFoneLookUp').AsVariant        := DM.SQLTemplate.FindField('FORNA15FONE1').AsVariant;
                    DataSet.FieldByName('CliFornEmpCdMunicipoNfeLookUp').AsVariant  := DM.SQLTemplate.FindField('FORNIMUNICODFED').AsVariant;
                    DataSet.FieldByName('CliFornEmpTabelaPrecoLookUp').AsVariant    := Null;
                    DataSet.FieldByName('CliFornEmpRegime').AsVariant    := DM.SQLTemplate.FindField('FORNCSIMPLES').AsVariant;
                    If DM.SQLTemplate.FindField('FORNCFISJURID').asString = 'F' Then
                      Begin
                        DataSet.FieldByName('CliFornEmpCGCCPFLookUp').AsVariant    := DM.SQLTemplate.FindField('FORNA11CPF').AsVariant;
                        DataSet.FieldByName('CliFornEmpIERGLookUp').AsVariant      := DM.SQLTemplate.FindField('FORNA10RG').AsVariant;
                        DataSet.FieldByName('CliFornEmpCGCCPFLookUp').EditMask     := '000.000.000-00;0;_';
                        DataSet.FieldByName('CliFornEmpFisicaJuridica').AsVariant  := 'F';
                      End
                    Else
                      Begin
                        DataSet.FieldByName('CliFornEmpCGCCPFLookUp').AsVariant    := DM.SQLTemplate.FindField('FORNA14CGC').AsVariant;
                        DataSet.FieldByName('CliFornEmpIERGLookUp').AsVariant      := DM.SQLTemplate.FindField('FORNA20IE').AsVariant;
                        DataSet.FieldByName('CliFornEmpCGCCPFLookUp').EditMask     := '00.000.000/0000-00;0;_';
                        DataSet.FieldByName('CliFornEmpFisicaJuridica').AsVariant  := 'J';
                      End;
                  End
                Else
                  DataSet.FieldByName('CliFornEmpLookup').asString     := MensagemLookUp;
              End
            Else
              DataSet.FieldByName('CliFornEmpLookup').AsVariant := NULL;
          End;
      'E':Begin
            If DataSet.FieldByName('EMPRICODDEST').AsVariant <> null then
              Begin
                If DM.ProcuraRegistro('EMPRESA',['EMPRICOD'],[SQLTemplateEMPRICODDEST.asString],1) Then
                  Begin
                    DataSet.FieldByName('CliFornEmpLookup').AsVariant            := DM.SQLTemplate.FindField('EMPRA60RAZAOSOC').AsVariant;
                    DataSet.FieldByName('CliFornEmpEnderecoLookUp').AsVariant    := DM.SQLTemplate.FindField('EMPRA60END').AsVariant;
                    DataSet.FieldByName('EmpNumeroEndLookUp').AsVariant   := DM.SQLTemplate.FindField('EMPRIENDNRO').AsVariant;
                    DataSet.FieldByName('CliFornEmpcdPaisLookUp').AsVariant      := '1058'; // Código do pais BRASIL
                    DataSet.FieldByName('CliFornEmpEstadoLookUp').AsVariant      := DM.SQLTemplate.FindField('EMPRA2UF').AsVariant;
                    DataSet.FieldByName('CliFornEmpCEPLookUp').AsVariant         := DM.SQLTemplate.FindField('EMPRA8CEP').AsVariant;
                    DataSet.FieldByName('CliFornEmpCidadeLookUp').AsVariant      := DM.SQLTemplate.FindField('EMPRA60CID').AsVariant;
                    DataSet.FieldByName('CliFornEmpBairroLookUp').AsVariant      := DM.SQLTemplate.FindField('EMPRA60BAI').AsVariant;
                    DataSet.FieldByName('CliFornEmpFoneLookUp').AsVariant        := DM.SQLTemplate.FindField('EMPRA20FONE').AsVariant;
                    DataSet.FieldByName('CliFornEmpCdMunicipoNfeLookUp').AsVariant:= DM.SQLTemplate.FindField('EMPRIMUNICODFED').AsVariant;
                    DataSet.FieldByName('CliFornEmpTabelaPrecoLookUp').AsVariant  := Null;
                    DataSet.FieldByName('CliFornEmpFisicaJuridica').AsVariant     := 'J';
                    if DM.SQLTemplate.FindField('EMPRA3CRT').AsString = '3' then
                      DataSet.FieldByName('CliFornEmpRegime').AsVariant    := 'N'  // Regime Normal
                    else
                      DataSet.FieldByName('CliFornEmpRegime').AsVariant    := 'S'; // Optante pelo Simples
                    If DM.SQLTemplate.FindField('EMPRCFISJURID').asString = 'F' Then
                      Begin
                        DataSet.FieldByName('CliFornEmpCGCCPFLookUp').AsVariant    := DM.SQLTemplate.FindField('EMPRA11CPF').AsVariant;
                        DataSet.FieldByName('CliFornEmpIERGLookUp').AsVariant      := DM.SQLTemplate.FindField('EMPRA10RG').AsVariant;
                        DataSet.FieldByName('CliFornEmpCGCCPFLookUp').EditMask     := '000.000.000-00;0;_';
                      End
                    Else
                      Begin
                        DataSet.FieldByName('CliFornEmpCGCCPFLookUp').AsVariant    := DM.SQLTemplate.FindField('EMPRA14CGC').AsVariant;
                        DataSet.FieldByName('CliFornEmpIERGLookUp').AsVariant      := DM.SQLTemplate.FindField('EMPRA20IE').AsVariant;
                        DataSet.FieldByName('CliFornEmpCGCCPFLookUp').EditMask     := '00.000.000/0000-00;0;_';
                      End;
                  End
                Else
                  DataSet.FieldByName('CliFornEmpLookup').asString     := MensagemLookUp;
              End
            Else
              DataSet.FieldByName('CliFornEmpLookup').AsVariant := NULL;
          End;
    End;
end;

procedure TFormCadastroNotaFiscal.BtnVendedorClick(Sender: TObject);
begin
  inherited;
  FieldLookUp := SQLTemplate.FindField('VENDICOD');
  FieldOrigem := 'VENDICOD';
  DataSetLookup := SQLVendedor;
  CriaFormulario(TFormCadastroVendedor,'FormCadastroVendedor',False,True,True,'');
end;

procedure TFormCadastroNotaFiscal.ComboNumerarioPrazoChange(Sender: TObject);
begin
  inherited;
  if ComboNumerarioPrazo.Value <> '' then
    begin
      if not SQLParcelasPrazoVendaTemp.Active then SQLParcelasPrazoVendaTemp.open;
      SQLParcelasPrazoVendaTemp.First;
      While not SQLParcelasPrazoVendaTemp.Eof do
        begin
          if SQLParcelasPrazoVendaTempNROPARCELA.AsInteger > 0 then
            begin
              SQLParcelasPrazoVendaTemp.Edit;
              SQLParcelasPrazoVendaTempNUMEICOD.AsInteger := ComboNumerarioPrazo.KeyValue;
              SQLParcelasPrazoVendaTempTipoPadrao.AsString  := SQLLocate('NUMERARIO','NUMEICOD','NUMEA5TIPO',ComboNumerarioPrazo.Value);
              SQLParcelasPrazoVendaTemp.Post;
            end;
          SQLParcelasPrazoVendaTemp.Next;
        end;
      SQLParcelasPrazoVendaTemp.First;
    end;
end;

procedure TFormCadastroNotaFiscal.SQLTemplatePLRCICODChange(
  Sender: TField);
Var
  Entrada, Desconto, Valor: Double;
  DiminuiAcresc, ValorJuro,Acrescimo, EntradaCalc,TaxaCred: Double;
begin
  inherited;
  if GerandoNota then Exit;
  if SQLTemplate.FindField('OPESICOD').AsString <> '' then
    if SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCGERAFINANCEIRO',SQLTemplate.FindField('OPESICOD').AsString) <> 'S' then
      begin
        Informa('A operação de estoque desta nota fiscal foi configurada para não movimentar financeiro!');
        Exit;
      end;
end;

procedure TFormCadastroNotaFiscal.SQLTemplateAfterCancel(
  DataSet: TDataSet);
begin
  inherited;
//  PanelFinanceiro.Visible := False;
  InserindoNota := False;
end;

procedure TFormCadastroNotaFiscal.SQLContasReceberNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('NOFIA13ID').Value           := SQLTemplate.FindField('NOFIA13ID').Value;
  DataSet.FindField('CTRCINROPARC').Value        := 0 ;
  DataSet.FindField('CTRCN2DESCFIN').Value       := 0 ;
  if Dm.SQLConfigCrediarioCFCRN2PERCMULATRAS.AsFloat > 0 then
    DataSet.FindField('CTRCN2TXMULTA').Value     := Dm.SQLConfigCrediarioCFCRN2PERCMULATRAS.Value
  else
    DataSet.FindField('CTRCN2TXMULTA').Value     := 0 ;

  if Dm.SQLConfigCrediarioCFCRN2PERCJURATRAS.Value > 0 then
    DataSet.FindField('CTRCN2TXJURO').Value      := Dm.SQLConfigCrediarioCFCRN2PERCJURATRAS.Value
  else
    DataSet.FindField('CTRCN2TXJURO').Value      := 0 ;
  DataSet.FindField('CTRCN2TOTREC').Value        := 0 ;
  DataSet.FindField('CTRCN2TOTJUROREC').Value    := 0 ;
  DataSet.FindField('CTRCN2TOTMULTAREC').Value   := 0 ;
  DataSet.FindField('CTRCN2TOTDESCREC').Value    := 0 ;
  DataSet.FindField('CTRCCEMITIDOBOLETO').Value  := 'N' ;
  // Tipo de Registro no Contas a Receber -> N = Normal C = Credito D = Debito;
  DataSet.FindField('CTRCCTIPOREGISTRO').Value   := 'N';
end;

procedure TFormCadastroNotaFiscal.SQLContasReceberBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  If DataSet.FindField('REGISTRO') <> Nil Then
    DataSet.FindField('REGISTRO').AsDateTime := Now ;
  If DataSet.FindField('PENDENTE')<> Nil Then
    DataSet.FindField('PENDENTE').AsString := 'S' ;
  If DataSet.FindField('EMPRICOD')<>Nil Then
    DataSet.FindField('EMPRICOD').Value := EmpresaCorrente ;
  If DataSet.FindField('TERMICOD')<>Nil Then
    DataSet.FindField('TERMICOD').Value := TerminalCorrente ;
  Case DataSet.State Of
    DsInsert: DM.CodigoAutomatico('CONTASRECEBER', DSSQLContasReceber, DataSet, 3, 0);
  end;
  ContasReceberID      := SQLContasReceberCTRCA13ID.asString;
  ContasReceberCliente := SQLContasReceberCLIEA13ID.asString;
end;

procedure TFormCadastroNotaFiscal.SQLContasReceberBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  DM.RegistraExclusao('CONTASRECEBER',SQLContasReceber);
  SQLExcluiDetalhes.MacroByName('MTabela').AsString   := 'RECEBIMENTO';
  SQLExcluiDetalhes.MacroByName('MFiltro').asString   := DM.ClausulaFiltro('CONTASRECEBER',SQLContasReceber);
  SQLExcluiDetalhes.MacroByName('MClausula').asString := 'Select *';
  SQLExcluiDetalhes.Open;
  SQLExcluiDetalhes.First;
  While Not SQLExcluiDetalhes.Eof Do
    Begin
      DM.RegistraExclusao('RECEBIMENTO',SQLExcluiDetalhes);
      SQLExcluiDetalhes.Next;
    End;
  SQLExcluiDetalhes.Close;
  SQLExcluiDetalhes.MacroByName('MClausula').asString := 'Delete';
  SQLExcluiDetalhes.ExecSQL;
end;

procedure TFormCadastroNotaFiscal.SQLTemplateNOFIN2VLRFRETEChange(
  Sender: TField);
var
  Aliquota : Double;
begin
  inherited;

  if CalculandoFrete then
    Exit;
  CalculandoFrete := True;

  if ValorIcmsFrete <= 0 then
    ValorIcmsFrete := SQLTemplate.FindField('NOFIN2VLRICMSFRETE').asFloat;

  SQLTemplate.FindField('NOFIN2VLRNOTA').asFloat := SQLTemplate.FindField('NOFIN2VLRPRODUTO').asFloat  +
                                                    SQLTemplate.FindField('NOFIN2VLRIPI').asFloat      +
                                                    SQLTemplate.FindField('NOFIN2VLRSERVICO').asFloat  +
                                                    SQLTemplate.FindField('NOFIN2VLRFRETE').asFloat    +
                                                    SQLTemplate.FindField('NOFIN2VLRSEGURO').asFloat   +
                                                    SQLTemplate.FindField('NOFIN2VLROUTRASDESP').asFloat +
                                                    SQLTemplate.FindField('NOFIN2VLRSUBS').asFloat -
                                                    SQLTemplate.FindField('NOFIN2VLRDESC').asFloat ;

  if (SQLTemplate.FindField('NOFIN2VLRDESCPROM').asFloat > 0) and (SQLTemplate.FindField('NOFIN2BASCALCICMS').AsFloat > 0) then
    begin
      if SQLTemplate.FieldByName('EmpresaUFLookUp').asString <> SQLTemplate.FieldByName('CliFornEmpEstadoLookUp').asString then
        begin
          SQLICMSUF.Close;
          SQLICMSUF.ParamByName('ICMUA2UF').asString := SQLTemplate.FieldByName('CliFornEmpEstadoLookUp').asString;
          SQLICMSUF.Open;
          if not SQLICMSUF.IsEmpty then
            Aliquota := SQLICMSUF.FindField('ICMUN2ALIQUOTA').asFloat
          else
            Informa('O ICMS do estado ' + SQLTemplate.FieldByName('CliFornEmpEstadoLookUp').asString + ' não foi cadastrado !');
        end
      else
        Aliquota := 17;

      SQLTemplate.FindField('NOFIN2BASCALCICMS').AsFloat := SQLTemplate.FindField('NOFIN2VLRPRODUTO').asFloat -
                                                            ValorFrete +
                                                            SQLTemplate.FindField('NOFIN2VLRFRETE').asFloat;


//      SQLTemplate.FindField('NOFIN2BASCALCICMS').AsFloat := SQLTemplate.FindField('NOFIN2BASCALCICMS').AsFloat -
  //                                                          SQLTemplate.FindField('NOFIN2VLRDESCPROM').AsFloat;

      SQLTemplate.FindField('NOFIN2VLRICMS').AsFloat     := (SQLTemplate.FindField('NOFIN2BASCALCICMS').AsFloat * (Aliquota / 100)) -
                                                            ValorIcmsFrete  +
                                                            SQLTemplate.FindField('NOFIN2VLRICMSFRETE').AsFloat;

//      SQLTemplate.FindField('NOFIN2VLRICMS').AsFloat     := SQLTemplate.FindField('NOFIN2VLRICMS').AsFloat - ((SQLTemplate.FindField('NOFIN2VLRDESCPROM').AsFloat * Aliquota)/ 100);

      SQLICMSUF.Close;
    end;

  If (Sender.FieldName='NOFIN2VLRFRETE') Then
    begin
      If (DM.SQLConfigVendaCFVEICMSFRETECOD.asVariant<>Null) Then
        Begin
          SQLICMS.Close;
          SQLICMS.ParamByName('ICMSICOD').asInteger := DM.SQLConfigVendaCFVEICMSFRETECOD.asInteger;
          SQLICMS.Open;
          If (SQLTemplate.FindField('CliFornEmpEstadoLookUp').asString<>'') and (SQLTemplate.FindField('EmpresaUFLookUp').asString<>SQLTemplate.FindField('CliFornEmpEstadoLookUp').asString) Then
            Begin
              SQLICMSUF.Close;
              SQLICMSUF.ParamByName('ICMUA2UF').asString  := SQLTemplate.FindField('CliFornEmpEstadoLookUp').asString;
              SQLICMSUF.Open;
              If Not SQLICMSUF.Eof Then
                begin
                  SQLTemplate.FindField('NOFIN2VLRICMSFRETE').asFloat := 0;
                  SQLTemplate.FindField('NOFIN2VLRICMSFRETE').asFloat := SQLTemplate.FindField('NOFIN2VLRFRETE').asFloat * (SQLICMSUF.FindField('ICMUN2ALIQUOTA').asFloat/100);
                  SQLTemplate.FindField('NOFIN2BASCALCICMS').AsFloat  := SQLTemplate.FindField('NOFIN2BASCALCICMS').asFloat -
                                                                         ValorFrete +
                                                                         SQLTemplate.FindField('NOFIN2VLRFRETE').asFloat;
                  SQLTemplate.FindField('NOFIN2VLRICMS').AsFloat      := SQLTemplate.FindField('NOFIN2VLRICMS').AsFloat -
                                                                         ValorIcmsFrete +
                                                                         SQLTemplate.FindField('NOFIN2VLRICMSFRETE').asFloat;

                end
              Else
                Informa('O Estado '+ SQLTemplate.FindField('CliFornEmpEstadoLookUp').asString + ' não tem ICMS configurado!');
              SQLICMSUF.Close;
            End
          Else
            begin
              SQLTemplate.FindField('NOFIN2VLRICMSFRETE').asFloat := 0;
              SQLTemplate.FindField('NOFIN2VLRICMSFRETE').asFloat := SQLTemplate.FindField('NOFIN2VLRFRETE').asFloat * (SQLICMS.FindField('ICMSN2ICMSM1').asFloat/100);
              SQLTemplate.FindField('NOFIN2BASCALCICMS').AsFloat  := SQLTemplate.FindField('NOFIN2BASCALCICMS').asFloat -
                                                                     ValorFrete +
                                                                     SQLTemplate.FindField('NOFIN2VLRFRETE').asFloat;
              SQLTemplate.FindField('NOFIN2VLRICMS').AsFloat      := SQLTemplate.FindField('NOFIN2VLRICMS').AsFloat -
                                                                     ValorIcmsFrete +
                                                                     SQLTemplate.FindField('NOFIN2VLRICMSFRETE').asFloat;

            end;
          SQLICMS.Close;
        End
      Else
        Begin
          Informa('Você deve configurar o Cód. ICMS do Frete!');
          Abort;
        End;
      if SQLTemplate.State in [DsEdit] then
        SQLTemplate.Post;
    end;

  CalculandoFrete := False;

end;

procedure TFormCadastroNotaFiscal.NotaFiscal1Click(Sender: TObject);
var DataHoraSaida : TDateTime;
    Erro : Boolean;
   InfoRetornoUser    : TInfoRetornoUser;
begin
  inherited;

  if SQLTemplateCLIEA13ID.Value <> '' then
    if not VerificaLimiteCredito(SQLTemplateCLIEA13ID.asstring,0,DM.SQLParcelas,DM.SQLCliente) then
      if SQLLocate('USUARIO', 'USUAICOD', 'USUACVENDCLIBLOQCHQ', IntToStr(DM.UsuarioAtual)) <> 'S' then
      begin
        if AutenticaUsuario(UsuarioAtualNome,'USUACVENDCLIBLOQCHQ',InfoRetornoUser) = 'S' then
        begin
          Showmessage('Impressão da Nota Cancelada');
          Exit;
        end;
      end;

  Erro := False;
  if SQLTemplate.IsEmpty then
    begin
      ShowMessage('Não foi encontrado nenhuma nota fiscal a ser impressa! Verifique!');
      Abort;
    end;
  try
    if SQLTemplateNOFICSTATUS.Value = 'A' then
      DataHoraSaida := StrToDateTime(InputBox('Data e Hora da Saída','',FormatDateTime('dd/mm/yyyy hh:mm:ss',Now)))
    else
      DataHoraSaida := now;
  except
    ShowMessage('Data e Hora da Saída inválida! Verifique!');
  end;
  if (not Erro) and (SQLTemplateNOFICSTATUS.Value = 'A') then
    begin
      SQLTemplate.Edit;
      SQLTemplateNOFIDSAIDAENTRADA.Value := DataHoraSaida;
      SQLTemplate.Post;
    end;
  // Exec antigo usado para a impressao com o Crystal onde ele pegava o ID da nota e criava as tab.temporarias pra impressao
  if FileExists(Dm.PathAplicacao + '\NotaFiscal.exe') then
    WinExec(PChar(DM.PathAplicacao + '\NotaFiscal.exe '+SQLTemplateNOFIA13ID.asString),SW_SHOW)
  else
    ImprimirNotaFiscal;

  // rotina para Encerrar a NF e movimentar o Estoque
  if SQLTemplateNOFICSTATUS.Value = 'A' then
    if Pergunta('SIM','* * * DESEJA FINALIZAR ESTA NOTA * * *') then
      begin
        SQLTemplate.Edit;
        SQLTemplateNOFICSTATUS.Value := 'E';
        SQLTemplate.Post;
      end;
  // Foi comentado pois no financeiro foi alterado a telaimpressão duplicatas
  {if Pergunta('SIM','* * * DESEJA IMPRIMIR OS BLOQUETOS/DUPLICATAS PARA ESTA NOTA * * *') then
    begin
      Application.CreateForm(TFormTelaImpressaoDuplicata, FormTelaImpressaoDuplicata);
      FormTelaImpressaoDuplicata.ComboCliente.Value := SQLTemplateCLIEA13ID.Value;
      FormTelaImpressaoDuplicata.De.Date  := SQLTemplateNOFIDEMIS.Value;
      FormTelaImpressaoDuplicata.ate.Date := SQLTemplateNOFIDEMIS.Value;
      FormTelaImpressaoDuplicata.Show;
      FormTelaImpressaoDuplicata.BtnSelecionarDoc.Click;
    end;}
end;

procedure TFormCadastroNotaFiscal.Identific1Click(Sender: TObject);
Var
  I,Copias:Integer;
begin
  inherited;
  Try
    Copias := StrToInt(InputBox('Número de Cópias','Cópias','1'));
    If Copias >= 1 Then
      Begin
        Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.asString + '\IdentificacaoCarga.rpt';
        If TblIdentificacaoCarga.Exists Then
          TblIdentificacaoCarga.DeleteTable;
        TblIdentificacaoCarga.CreateTable;
        TblIdentificacaoCarga.Open;
        For I:=1 To Copias Do
          Begin
            TblIdentificacaoCarga.Append;
            TblIdentificacaoCargaTransportadora.asString := SQLTemplateTransportadoraLookup.asString;
            TblIdentificacaoCargaRazaoSoc.asString       := SQLTemplateCliFornEmpLookUp.asString;
            If SQLTemplateNOFICFRETEPORCONTA.AsString = 'C' Then
              TblIdentificacaoCargaFrete.AsString        := '** FRETE POR CONTA DO EMITENTE **'
            Else
              TblIdentificacaoCargaFrete.AsString        := '** FRETE POR CONTA DO DESTINATÁRIO **';
            TblIdentificacaoCargaEndereco.AsString       := SQLTemplateCliFornEmpEnderecoLookUp.asString;
            TblIdentificacaoCargaComprador.asString      := '  A/C: ' + SQLTemplateNOFIA30COMPRADOR.asString;
            TblIdentificacaoCargaCepCidadeUF.asString    := Trim(SQLTemplateCliFornEmpCidadeLookUp.asString) + ' - ' + SQLTemplateCliFornEmpEstadoLookUp.asString + ' - '+SQLTemplateCliFornEmpCEPLookUp.asString;
            TblIdentificacaoCargaBairro.asString         := SQLTemplateCliFornEmpBairroLookUp.asString;
            TblIdentificacaoCargaNotaFiscal.asString     := 'Número NF: ' + FormatFloat('00000', SQLTemplateNOFIINUMERO.asFloat);
            TblIdentificacaoCargaVolume.AsString         := SQLTemplateNOFIN3QUANT.AsString;

            TblIdentificacaoCarga.Post;
          End;
        TblIdentificacaoCarga.Close;
        DM.SQLConfigGeral.Open;
        Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.asString+'\IdentificacaoCarga.rpt';
        Report.Execute;
      End
    Else
      Informa('Número de cópias deve ser maior ou igual a 1 !');
  Except
    Informa('Problemas ao gerar a identificação de carga !');
  End;
end;

{procedure TFormCadastroNotaFiscal.ImprimirDuplicatas1Click(
  Sender: TObject);
  // Foi comentado pois foi alterado no financeiro a telaimpressão duplicata
{begin
  inherited;
  Application.CreateForm(TFormTelaImpressaoDuplicata, FormTelaImpressaoDuplicata);
  FormTelaImpressaoDuplicata.ComboCliente.Value := SQLTemplateCLIEA13ID.Value;
  FormTelaImpressaoDuplicata.De.Date  := SQLTemplateNOFIDEMIS.Value;
  FormTelaImpressaoDuplicata.ate.Date := SQLTemplateNOFIDEMIS.Value;
  FormTelaImpressaoDuplicata.Show;
  FormTelaImpressaoDuplicata.BtnSelecionarDoc.Click;
end;}

procedure TFormCadastroNotaFiscal.SQLTemplateOPESICODChange(
  Sender: TField);
begin
 { if SQLLocate('NOTAFISCALITEM','NOFIA13ID','NOFIA13ID','"' + SQLTemplateNOFIA13ID.AsString + '"') <> '' then
    begin
      Informa('Esta nota fiscal possui itens, portanto a operação de estoque não pode ser alterada!' + #13 +
              'Você deve excluir todos os itens para alterar a operação ou lançar uma nova nota!');
      Abort;
    end; }
  inherited;
  if (Sender.FieldName = 'CLIEA13ID') and not ClienteDoPedido then
    begin
      PlanoDoCliente := True;
      if SQLTemplatePlanoClienteLookUp.AsVariant <> Null then
        SQLTemplatePLRCICOD.asVariant := SQLTemplatePlanoClienteLookUp.AsVariant;
      if SQLTemplatePLRCICOD.asVariant<>Null then
        PlanoAnterior := SQLTemplatePLRCICOD.asString;
      PlanoDoCliente := False;
      if dm.VendedorAtualPedidos < 1 then
        if SQLTemplateVendedorClienteLookUp.Asstring <> '' then
          SQLTemplateVENDICOD.asVariant := SQLTemplateVendedorClienteLookUp.AsVariant;
    end;
  if SQLTemplate.FindField('EmpresaUFLookUp').asString<>SQLTemplate.FindField('CliFornEmpEstadoLookUp').asString then
    SQLTemplate.FindField('CFOPA5COD').asString := SQLTemplate.FindField('CFOPForaLookUp').asString
  else
    SQLTemplate.FindField('CFOPA5COD').asString := SQLTemplate.FindField('CFOPDentroLookUp').asString;
end;

procedure TFormCadastroNotaFiscal.BtnEmpresaClick(Sender: TObject);
begin
  inherited;
  FieldLookUp := SQLTemplate.FindField('EMPRICOD');
  FieldOrigem := 'EMPRICOD';
  CriaFormulario(TFormTelaConsultaEmpresa,'FormTelaConsultaEmpresa',False,True,True,'');
end;

procedure TFormCadastroNotaFiscal.SQLTemplateAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  if GerandoNota then exit;
  if DM.SQLConfigVendaOPESICODNF.AsVariant <> Null then
    begin
      DataSet.FindField('OPESICOD').Value   := DM.SQLConfigVendaOPESICODNF.Value;
      DataSet.FindField('SERIA5COD').Value  := SQLLocate('OPERACAOESTOQUE','OPESICOD','SERIA5COD',DM.SQLConfigVendaOPESICODNF.AsString);
    end;
end;

procedure TFormCadastroNotaFiscal.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  DBEditPV.Enabled           := ComboSerie.Text  <> '';
  BtnPedido.Enabled          := (ComboSerie.Text <> '') and (SQLTemplate.FieldByName('NOFICSTATUS').AsString = 'A');
  BtnCliFornEmp.Enabled      := SQLTemplate.FieldByName('NOFICSTATUS').AsString = 'A';
  BtnVendedor.Enabled        := SQLTemplate.FieldByName('NOFICSTATUS').AsString = 'A';
  BtnTransportadora.Enabled  := SQLTemplate.FieldByName('NOFICSTATUS').AsString = 'A';

  if (Field = Nil) or (Field.FieldName='OPESICOD') then
    begin
      if (SQLTemplateOrigemDestinoLookUp.asVariant<>null) and
         (SQLTemplateOrigemDestinoLookUp.AsString <>'')   then
        case SQLTemplateOrigemDestinoLookUp.AsString[1] of
          'C':begin
                GroupBoxCliFornEmp.Caption := 'Cliente';
                DBEditCod.DataField        := 'CLIEA13ID';
              end;
          'F':begin
                DBEditCod.DataField        := 'FORNICOD';
                GroupBoxCliFornEmp.Caption := 'Fornecedor';
              end;
          'E':begin
                DBEditCod.DataField        := 'EMPRICODDEST';
                GroupBoxCliFornEmp.Caption := 'Empresa';
              end;
        end;
    end;

  if PagePrincipal.ActivePage = PaginaFinanceiro then
    begin
      SQLContasReceber.Close;
      SQLContasReceber.ParamByName('NOFIA13ID').AsString := SQLTemplateNOFIA13ID.AsString;
      SQLContasReceber.Open;
    end;
end;

procedure TFormCadastroNotaFiscal.RecalcularFinanceiroClick(Sender: TObject);
begin
  inherited;
  Button4.Click;
  SQLTemplate.Edit;
  SQLTemplatePLRCICODChange(SQLTemplatePLRCICOD);
  PlanoAnterior:='';
end;

procedure TFormCadastroNotaFiscal.SQLPedidoVendaBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  DM.RegistraExclusao('PEDIDOVENDA',SQLPedidoVenda);
  SQLExcluiDetalhes.MacroByName('MTabela').AsString   := 'PEDIDOVENDAITEM';
  SQLExcluiDetalhes.MacroByName('MFiltro').asString   := DM.ClausulaFiltro('PEDIDOVENDA',SQLPedidoVenda);
  SQLExcluiDetalhes.MacroByName('MClausula').asString := 'Select *';
  SQLExcluiDetalhes.Open;
  SQLExcluiDetalhes.First;
  While Not SQLExcluiDetalhes.Eof Do
    Begin
      DM.RegistraExclusao('PEDIDOVENDAITEM',SQLExcluiDetalhes);
      SQLExcluiDetalhes.Next;
    End;
  SQLExcluiDetalhes.Close;
  SQLExcluiDetalhes.MacroByName('MClausula').asString := 'Delete';
  SQLExcluiDetalhes.ExecSQL;
  If CriandoNota Then
    Begin
      SQLExcluiDetalhes.MacroByName('MTabela').AsString   := 'CONTASRECEBER';
      SQLExcluiDetalhes.MacroByName('MFiltro').asString   := DM.ClausulaFiltro('CONTASRECEBER',SQLPedidoVenda);
      SQLExcluiDetalhes.MacroByName('MClausula').asString := 'Select *';
      SQLExcluiDetalhes.Open;
      SQLExcluiDetalhes.First;
      While Not SQLExcluiDetalhes.Eof Do
        Begin
          DM.RegistraExclusao('CONTASRECEBER',SQLExcluiDetalhes);
          SQLExcluiDetalhes.Next;
        End;
      SQLExcluiDetalhes.Close;
      SQLExcluiDetalhes.MacroByName('MClausula').asString := 'Delete';
      SQLExcluiDetalhes.ExecSQL;
    End;
end;

procedure TFormCadastroNotaFiscal.SQLTemplatePDVDA13IDChange(
  Sender: TField);
begin
  inherited;
  if not GerandoNota then
    ImportaPedidoVenda(SQLTemplatePDVDA13ID.AsString);
end;

procedure TFormCadastroNotaFiscal.FormActivate(Sender: TObject);
begin
  inherited;
  if Application.FindComponent('FormTelaConsultaCupom') <> Nil then
  if (DM.Cupom <> '') and (not InserindoCupomFiscal) then
    ImportarCupom;
  Application.FindComponent('FomTelaConsultaCupom').Free;

  if AtivarFinanceiro = True then
    begin
      Button4Click(Sender);
      AtivarFinanceiro := False;
    end;
  SQLTemplate.DisableControls;
  SQLTemplate.EnableControls;
end;

procedure TFormCadastroNotaFiscal.ImportarCupom ;
var nProd, cPos : Integer;
    nQUANT, nVLRTOTAL, nVLRDESC : Extended;
begin
  if DM.Cupom <> '' then
    begin
      DestroyWindow;
      MakeWindowMessage('Gerando nota Fiscal a Partir de Cupons Selecionados.');
      SQLCupom.Close;
      SQLCupom.SQL.Text := 'Select C.*, E.ECFICOD, E.ECFA20NROSERIE from CUPOM C '+
      'LEFT join terminal T ON T.TERMICOD = C.termicod '+
      'LEFT JOIN ecf E ON E.ecfa13id = T.ECFA13ID      '+
      'where CUPOA13ID in ('+Dm.Cupom+')';
      SQLCupom.Prepare;
      SQLCupom.Open;
      if Dm.SQLConfigVendaOPESICODIMPCUPOM.AsString = '' then
        begin
          DestroyWindow;
          Application.MessageBox('Não existe nenhuma operação de estoque configurada para importação de cupom !','Informa',MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND);
          Abort;
        end;

      SQLCupomItem.Close;
      SQLCupomItem.SQL.Text := 'Select * From CupomItem Where Cupoa13id in ('+Dm.Cupom+') order by Prodicod';
      SQLCupomItem.Prepare;
      SQLCupomItem.Open;


      if SQLCupomItem.IsEmpty then
        begin
          DestroyWindow;
          Application.MessageBox('O cupom selecionado não possui itens !','Informa',MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND);
          Abort;
        end;

      Dm.ImportandoPedidoVenda := True;
      InserindoCupomFiscal := True;
      SQLTemplate.Append;
      InserindoNota := False;


      SQLTemplateCLIEA13ID.AsVariant          := SQLCupom.FieldByName('CLIEA13ID').AsVariant;
      SQLTemplateVENDICOD.AsVariant           := SQLCupom.FieldByName('VENDICOD').AsVariant;
      SQLTemplateOPESICOD.AsVariant           := Dm.SQLConfigVendaOPESICODIMPCUPOM.AsVariant;
      SQLTemplateSERIA5COD.AsVariant          := SQLLocate('OPERACAOESTOQUE','OPESICOD','SERIA5COD',Dm.SQLConfigVendaOPESICODIMPCUPOM.AsString);
      SQLTemplateNOFIDEMIS.AsDateTime         := Now ;
      SQLTemplateNOFIN2VLRDESCPROM.AsVariant  := 0;
      SQLTemplateNOFIA255OBS.AsString         := 'NF EMITIDA EM DECORRENCIA DA EMISSAO DOS CUPONS FISCAIS '+DM.PedidoObs; // utilizada essa variavel para informar os  numeros do COO do cupom
      SQLTemplate.Post;

      SQLCupomItem.First;
      if SQLCupomItem.IsEmpty then
        begin
          DestroyWindow;
          Application.MessageBox('O cupom selecionado não possui itens !','Informa',MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND);
          Abort;
        end;

      DSMasterSys := DsTemplate;
      Application.CreateForm(TFormCadastroNotaFiscalItem,FormCadastroNotaFiscalItem);
      FormCadastroNotaFiscalItem.SQLTemplate.MacroByName('MFiltro').Value := 'NOFIA13ID is null';
      FormCadastroNotaFiscalItem.SQLTemplate.Open;
      FormCadastroNotaFiscalItem.Show;
      NumItem := 0;
      cPos    := 1;

      while not SQLCupomItem.Eof do
        begin
          nProd := SQLCupomItem.fieldbyname('Prodicod').AsInteger;
          FormCadastroNotaFiscalItem.SQLTemplate.DisableControls;
          FormCadastroNotaFiscalItem.SQLTemplate.Append;
          FormCadastroNotaFiscalItem.SQLTemplatePRODICOD.asInteger     := SQLCupomItemPRODICOD.AsInteger;
          FormCadastroNotaFiscalItem.SQLTemplateCPITICPOS.asInteger    := cPos;
          Inc(cPos);

          nQUANT    := 0;
          nVLRTOTAL := 0;
          nVLRDESC  := 0;
          While (SQLCupomItem.FieldByName('Prodicod').asinteger = nProd) and (not SQLCupomItem.Eof) do
          begin
            nQUANT    := nQuant    + SQLCupomItemCPITN3QTD.Value;
            nVLRTOTAL := nVLRTOTAL + (SQLCupomItemCPITN3VLRUNIT.Value * SQLCupomItemCPITN3QTD.Value);
            nVLRDESC  := nVLRDESC  + (SQLCupomItemCPITN2DESC.asFloat*SQLCupomItemCPITN3QTD.Value);
            SQLCupomItem.Next;
          End;

          FormCadastroNotaFiscalItem.SQLTemplateNFITN3QUANT.asFloat    := nQUANT;
          FormCadastroNotaFiscalItem.SQLTemplateNFITN2VLRUNIT.Value    := (nVLRTOTAL / nQUANT);
          FormCadastroNotaFiscalItem.SQLTemplateNFITN2VLRDESC.asFloat  := nVLRDESC ;

          FormCadastroNotaFiscalItem.SQLTemplate.Post;
          FormCadastroNotaFiscalItem.SQLTemplate.EnableControls;

        end;
        FormCadastroNotaFiscalItem.SQLTemplate.Close;
        FormCadastroNotaFiscalItem.Close;
        FormCadastroNotaFiscalItem.Free;

        // Referenciado cupons fiscais
        DSMasterSYS:= DsTemplate;
        Application.CreateForm(TFormCadastroNotaFiscalReferenciada,FormCadastroNotaFiscalReferenciada);
        FormCadastroNotaFiscalReferenciada.SQLTemplate.MacroByName('MFiltro').Value := 'NOFIA13ID is null';
        FormCadastroNotaFiscalReferenciada.SQLTemplate.Open;
        FormCadastroNotaFiscalReferenciada.Show;
        FormCadastroNotaFiscalReferenciada.SQLTemplate.OnNewRecord := nil;
        FormCadastroNotaFiscalReferenciada.SQLTemplate.DisableControls;


        SQLCupom.First;
        While not SQLCupom.Eof do
        begin
          FormCadastroNotaFiscalReferenciada.SQLTemplate.Append;
          FormCadastroNotaFiscalReferenciada.SQLTemplateTIPO.AsString         := '5';
          FormCadastroNotaFiscalReferenciada.SQLTemplateNOFIA13ID.AsString    := SQLTemplateNOFIA13ID.AsString;
          FormCadastroNotaFiscalReferenciada.SQLTemplateNUMERO_ECF.AsString   := SQLCupomECFICOD.asString;
          FormCadastroNotaFiscalReferenciada.SQLTemplateNUMERO_COO.AsString   := SQLCupomCUPOINRO.AsString;
          FormCadastroNotaFiscalReferenciada.SQLTemplateDATAEMISSAO.AsDateTime:= SQLCupomCUPODEMIS.AsDateTime;
          FormCadastroNotaFiscalReferenciada.SQLTemplateMODELO.AsString       := '2D';
          FormCadastroNotaFiscalReferenciada.SQLTemplateNUMERO_SERIE.AsString := SQLCupomECFA20NROSERIE.AsString;
          FormCadastroNotaFiscalReferenciada.SQLTemplate.Post;
          SQLCupom.Next;
        End;
        FormCadastroNotaFiscalReferenciada.SQLTemplate.EnableControls;
        FormCadastroNotaFiscalReferenciada.Close;
        FormCadastroNotaFiscalReferenciada.Free;

    end;
    DestroyWindow;

    SqlTemplate.Edit;
    Dm.ImportandoPedidoVenda := False;




    {
    if Application.MessageBox('Deseja transferir os dados financeiros ?','Pergunta',MB_YESNO + MB_SYSTEMMODAL + MB_ICONQUESTION + MB_SETFOREGROUND) = IdYes then
      begin
        PagePrincipal.ActivePageIndex := 3;
        EmpresaPadrao   := Dm.SQLTerminalAtivoEMPRICOD.AsString;
        SqlTemplate.Edit;
        SQLTemplatePLRCICOD.AsInteger := SQLCupomPLRCICOD.AsInteger;
      end;
      }

  Dm.Cupom := '';
  InserindoCupomFiscal := False;
end;

procedure TFormCadastroNotaFiscal.MnGerarNotadeCupomClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormTelaConsultaCupom,'FormTelaConsultaCupom',False,True,False,'');
end;

procedure TFormCadastroNotaFiscal.ComboNumerarioVistaChange(
  Sender: TObject);
begin
  inherited;
  if ComboNumerarioVista.Value <> '' then
    begin
      if not SQLParcelasPrazoVendaTemp.Active then SQLParcelasPrazoVendaTemp.open;
      SQLParcelasPrazoVendaTemp.First;
      While not SQLParcelasPrazoVendaTemp.Eof do
        begin
          if SQLParcelasPrazoVendaTempNROPARCELA.AsInteger = 0 then
            begin
              SQLParcelasPrazoVendaTemp.Edit;
              SQLParcelasPrazoVendaTempNUMEICOD.AsInteger := ComboNumerarioVista.KeyValue;
              SQLParcelasPrazoVendaTempTipoPadrao.AsString  := SQLLocate('NUMERARIO','NUMEICOD','NUMEA5TIPO',ComboNumerarioVista.Value);
              SQLParcelasPrazoVendaTemp.Post;
            end;
          SQLParcelasPrazoVendaTemp.Next;
        end;
      SQLParcelasPrazoVendaTemp.First;
    end;
end;

procedure TFormCadastroNotaFiscal.Button5Click(Sender: TObject);
begin
  inherited;
  DSMasterSys := DsTemplate;
  CriaFormulario(TFormCadastroNotaFiscalItem,'FormCadastroNotaFiscalItem',True,False,True,'Nota Fiscal Nº ' + SQLTemplateNOFIINUMERO.AsString);
end;

procedure TFormCadastroNotaFiscal.Button3Click(Sender: TObject);
begin
  inherited;
  PagePrincipal.ActivePage := PaginaImpostos;
end;

procedure TFormCadastroNotaFiscal.Button6Click(Sender: TObject);
begin
  inherited;
  If SQLTemplate.FindField('PLRCICOD').asVariant<>Null Then
    Begin
      DSMasterSys := DsTemplate;
      CriaFormulario(TFormCadastroNotaFiscalFinanceiro,'FormCadastroNotaFiscalFinanceiro',True,False,True,'Nota Fiscal Nº ' + SQLTemplateNOFIINUMERO.AsString);
    End
  Else
    Informa('Informe o Plano no Financeiro!');
end;

procedure TFormCadastroNotaFiscal.GerarNFdeVendaConsignadaClick(
  Sender: TObject);
begin
  inherited;
  GeraNotaVendaConsignada;
end;
function TFormCadastroNotaFiscal.GeraNotaVendaConsignada : Boolean;
var
 I : Integer;
begin
  if DM.SQLConfigVendaOPESICODVENDCONSIG.AsVariant = null then
    begin
      Informa('Nenhuma operação de estoque foi configurada para venda consignada !');
      Abort;
    end;
  if not SQLOperacaEstoque.Active then SQLOperacaEstoque.Open;

  if SQLOperacaEstoque.Locate('OPESICOD',DM.SQLConfigVendaOPESICODVENDCONSIG.AsString,[]) then
    begin
      if SQLOperacaEstoqueOPESCENTRADASAIDA.AsString = '' then
        begin
          Informa('Operação de Estoque incompleta !');
          Abort;
        end;
      if SQLOperacaEstoqueOPESCORIGEMDESTINO.AsString = '' then
        begin
          Informa('Operação de Estoque incompleta !');
          Abort;
        end
    end
  else
    begin
      Informa('Operação de Estoque não encontrada !');
    end;
  SQLNotaFiscal.Close;
  SQLNotaFiscal.ParamByName('NOFIA13ID').Value := SQLTemplateNOFIA13ID.AsString;
  SQLNotaFiscal.Open;
  SQLNotaFiscalItemConsig.Close;
  SQLNotaFiscalItemConsig.ParamByName('NOFIA13ID').Value := SQLNotaFiscalNOFIA13ID.AsString;
  SQLNotaFiscalItemConsig.Open;
  if SQLNotaFiscalItemConsig.IsEmpty then
    begin
      Informa('Esta nota fiscal não possui itens !');
      Abort;
    end;
  SQlTemplate.Append;
  InserindoNota := False;
  SQLTemplateCLIEA13ID.AsVariant         := SQLNotaFiscalCLIEA13ID.AsVariant;
  SQLTemplateVENDICOD.AsVariant          := SQLNotaFiscalVENDICOD.AsVariant;
  SQLTemplateOPESICOD.AsVariant          := Dm.SQLConfigVendaOPESICODVENDCONSIG.AsVariant;
  SQLTemplateSERIA5COD.AsVariant         := SQLLocate('OPERACAOESTOQUE','OPESICOD','SERIA5COD',Dm.SQLConfigVendaOPESICODVENDCONSIG.AsString);
  SQLTemplateNOFIDEMIS.AsDateTime        := SQLNotaFiscalNOFIDEMIS.AsDateTime;
  SQLTemplateNOFIA13IDCONSIGNADA.AsString:= SQLNotaFiscalNOFIA13ID.AsString;
  SQLTemplate.Post;
  SQLNotaFiscalItemConsig.First;
  Application.CreateForm(TFormTelaItensVendaConsignacao,FormTelaItensVendaConsignacao);
  FormTelaItensVendaConsignacao.Hide;
  SQLConsignacao.Close;
  SQLConsignacao.MacroByName('NotaFiscal').Value := 'NOFIA13IDCONSIGNADA = ' + '"' + SQLNotaFiscalNOFIA13ID.AsString + '"';
  SQLConsignacao.Open;
  FormTelaItensVendaConsignacao.TblItensVendaConsig.Open;
  while not SQLNotaFiscalItemConsig.Eof do
    begin
      FormTelaItensVendaConsignacao.TblItensVendaConsig.Append;
      FormTelaItensVendaConsignacao.TblItensVendaConsigProduto.AsVariant    := SQLNotaFiscalItemConsigPRODICOD.AsVariant;

      if SQLConsignacao.Locate('PRODICOD',SQLNotaFiscalItemConsigPRODICOD.AsString,[]) then
        FormTelaItensVendaConsignacao.TblItensVendaConsigQtde.AsVariant     := SQLNotaFiscalItemConsigNFITN3QUANT.AsFloat - SQLConsignacaoQTDE.AsFloat
      else
        FormTelaItensVendaConsignacao.TblItensVendaConsigQtde.AsVariant     := SQLNotaFiscalItemConsigNFITN3QUANT.AsVariant;

      FormTelaItensVendaConsignacao.TblItensVendaConsigLote.AsVariant       := SQLNotaFiscalItemConsigLOTEA30NRO.AsVariant;
      FormTelaItensVendaConsignacao.TblItensVendaConsigDescricao.AsVariant  := SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',SQLNotaFiscalItemConsigPRODICOD.AsString);
      FormTelaItensVendaConsignacao.TblItensVendaConsigReferencia.AsVariant := SQLLocate('PRODUTO','PRODICOD','PRODA60REFER',SQLNotaFiscalItemConsigPRODICOD.AsString);
      FormTelaItensVendaConsignacao.TblItensVendaConsig.Post;
      SQLNotaFiscalItemConsig.Next;
    end;
  DSMasterSys := DsTemplate;
  Application.CreateForm(TFormCadastroNotaFiscalItem,FormCadastroNotaFiscalItem);
  FormCadastroNotaFiscalItem.Hide;
  FormCadastroNotaFiscalItem.SQLTemplate.Open;
  FormTelaItensVendaConsignacao.ShowModal;
  if FormTelaItensVendaConsignacao.ModalResult = MrOk then
    begin
      TblitensVendaConsignada.Open;
      SQLNotaFiscalItemConsig.First;
      while not SQLNotaFiscalItemConsig.Eof do
        begin
          if (TblitensVendaConsignada.Locate('Produto',SQLNotaFiscalItemConsigPRODICOD.AsString,[])) and (TblitensVendaConsignadaQtde.AsFloat > 0) then
            begin
              FormCadastroNotaFiscalItem.SQLTemplate.Append;
              for I := 0 to SQLNotaFiscalItemConsig.FieldCount -1 do
                begin
                  if (FormCadastroNotaFiscalItem.SQLTemplate.FindField(SQLNotaFiscalItemConsig.Fields[I].FieldName) <> Nil) and
                   (FormCadastroNotaFiscalItem.SQLTemplate.FindField(SQLNotaFiscalItemConsig.Fields[I].FieldName).FieldName <> 'NFITN3QUANT') then
                    begin
                       FormCadastroNotaFiscalItem.SQLTemplate.FindField(SQLNotaFiscalItemConsig.Fields[I].FieldName).AsVariant := SQLNotaFiscalItemConsig.Fields[I].AsVariant;
                    end;
                end;
              FormCadastroNotaFiscalItem.SQLTemplateNFITN2PERCICMS.AsFloat := 0;
              FormCadastroNotaFiscalItem.SQLTemplateNFITN2VLRICMS.AsFloat  := 0;
              FormCadastroNotaFiscalItem.SQLTemplateNFITN2BASEICMS.AsFloat := 0;
              FormCadastroNotaFiscalItem.SQLTemplateNFITN3QUANT.AsVariant  := TblitensVendaConsignadaQtde.AsVariant;
              FormCadastroNotaFiscalItem.SQLTemplateNOFIA13ID.AsVariant    := SQLTemplateNOFIA13ID.AsVariant;
              FormCadastroNotaFiscalItem.SQLTemplate.Post;
            end;
          SQLNotaFiscalItemConsig.Next;
        end;
      TblitensVendaConsignada.Close;
      FormTelaItensVendaConsignacao.TblItensVendaConsig.Close;
      FormTelaItensVendaConsignacao.Free;
      FormCadastroNotaFiscalItem.Close;
    end
  else
    begin
      Informa('A operação foi cancelada, você deve excluir ou completar a nota fiscal, pois ela não foi finalizada !');
      TblitensVendaConsignada.Close;
      FormTelaItensVendaConsignacao.TblItensVendaConsig.Close;
      FormTelaItensVendaConsignacao.Free;
    end;
end;
procedure TFormCadastroNotaFiscal.SQLNotaFiscalItemBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if Dm.ImportandoPedidoVenda then
    DM.CodigoAutomatico('NOTAFISCALITEM',DSTemplate,SQLNotaFiscalItem,1,0);
end;

procedure TFormCadastroNotaFiscal.ImprimirNotaFiscal;
var
  vCodDecreto, DescrCFOP : String;
  vImprimeReceita : Boolean;
begin
  try
    DMImpNotaFiscal := TDMImpNotaFiscal.Create(Self);
    // Preenche Cabecalho
    DMImpNotaFiscal.TblNotaFiscal.Close;
    try
      DMImpNotaFiscal.TblNotaFiscal.DeleteTable ;
      DMImpNotaFiscal.TblNotaFiscal.CreateTable ;
    except
      DMImpNotaFiscal.TblNotaFiscal.CreateTable ;
    end;
    DMImpNotaFiscal.TblNotaFiscal.Open ;

    DMImpNotaFiscal.TblNotaFiscal.Append ;

    if SQLTemplateEntradaSaidaLookUp.asString = 'S' Then
      DMImpNotaFiscal.TblNotaFiscalX_Saida.asVariant := 'X';
    if SQLTemplateEntradaSaidaLookUp.asString = 'E' then
      DMImpNotaFiscal.TblNotaFiscalX_Entrada.asVariant := 'X';

    if SQLTemplateEntradaSaidaLookUp.asString = 'N' then
      begin
        if SQLTemplateCLIEA13ID.AsVariant <> null then
          DMImpNotaFiscal.TblNotaFiscalX_Saida.AsVariant           := 'X';

        if SQLTemplateFORNICOD.AsVariant <> null then
          DMImpNotaFiscal.TblNotaFiscalX_Saida.AsVariant           := 'X';

        if SQLTemplateEMPRICODDEST.AsVariant <> null then
          DMImpNotaFiscal.TblNotaFiscalX_Saida.AsVariant           := 'X';
      end;

    //DADOS DO EMITENTE
    DMImpNotaFiscal.TblNotaFiscalEmitente_CGC.asVariant            := SQLTemplateEmpresaCGCLookUp.asVariant;
    DMImpNotaFiscal.TblNotaFiscalEmitente_InscEst.asVariant        := SQLTemplateEmpresaIELookUp.asVariant;
    DMImpNotaFiscal.TblNotaFiscalEmitenteEndereco.asString         := SQLTemplate.FieldByName('EmitenteEnderecoLookUp').asString + ' - '+
                                                                      SQLTemplate.FieldByName('EmitenteBairroLookUp').asString   + ' - '+
                                                                      SQLTemplate.FieldByName('EmitenteCidadeLookUp').asString   + ' - '+
                                                                      SQLTemplate.FieldByName('EmitenteUFLookUp').asString;
    DMImpNotaFiscal.TblNotaFiscalEmitenteCEP.asString              := 'CEP: ' + SQLTemplate.FieldByName('EmitenteCEPLookUp').AsString;
    DMImpNotaFiscal.TblNotaFiscalEmitenteFone.asString             := 'Fone: '+ SQLTemplate.FieldByName('EmitenteFoneLookUp').asString;
    //  DMImpNotaFiscal.TblNotaFiscalEndCobranca.asString              := SQLTemplate.FieldByName('EndCobranca').asString;
    DMImpNotaFiscal.TblNotaFiscalEndEntrega.asString               := SQLTemplate.FieldByName('CliFornEmpEnderecoLookUp').asString + ' - ' +
                                                                      SQLTemplate.FieldByName('CliFornEmpBairroLookUp').asString   + ' - ' +
                                                                      SQLTemplate.FieldByName('CliFornEmpCidadeLookUp').asString   + ' - ' +
                                                                      SQLTemplate.FieldByName('CliFornEmpEstadoLookUp').asString   + ' - ' +
                                                                      SQLTemplate.FieldByName('CliFornEmpCEPLookUp').asString;

    //DADOS DO DESTINATARIO
    DMImpNotaFiscal.TblNotaFiscalNumeroNF.asVariant                := FormatFloat('00000',SQLTemplateNOFIINUMERO.asFloat);
    DescrCFOP := '';
    if SQLTemplateCFOPA5COD.AsString <> '' then
      begin
        DMImpNotaFiscal.TblNotaFiscalCFOP_Codigo.asVariant         := SQLTemplateCFOPA5COD.asVariant;
        DescrCFOP := SQLLocate('CFOP','CFOPA5COD','CFOPA60DESCR',SQLTemplateCFOPA5COD.AsString);
        if DescrCFOP <> '' then
          DMImpNotaFiscal.TblNotaFiscalCFOP_Descricao.asVariant    := DescrCFOP
        else
          DMImpNotaFiscal.TblNotaFiscalCFOP_Descricao.asVariant    := SQLTemplateOperacaoEstoqueLookUp.asVariant;
      end
    else
      DMImpNotaFiscal.TblNotaFiscalCFOP_Descricao.asVariant        := SQLTemplateOperacaoEstoqueLookUp.asVariant;

    if SQLTemplateCFOPA5CODAUX.Value <> '' then
      begin
        DMImpNotaFiscal.TblNotaFiscalCFOP_Cod_Aux.asVariant               := SQLTemplateCFOPA5CODAUX.asVariant;
        DMImpNotaFiscal.TblNotaFiscalCFOP_Descricao_Aux.AsString          := DM.SQLLocate('CFOP','CFOPA5COD','CFOPA60DESCR','"'+SQLTemplateCFOPA5CODAUX.AsString+'"');
      end;
    if SQLTemplateCLIEA13ID.Value <> '' then
      DMImpNotaFiscal.TblNotaFiscalIdCliente.AsVariant             := SQLTemplateCLIEA13ID.Value;
    DMImpNotaFiscal.TblNotaFiscalDestinatario_RazaoSoc.asVariant   := SQLTemplateCliFornEmpLookUp.asVariant;
    DMImpNotaFiscal.TblNotaFiscalDestinatario_CGC.asVariant        := SQLTemplateCliFornEmpCGCCPFLookUp.DisplayText;
    DMImpNotaFiscal.TblNotaFiscalDestinatario_Ender.asVariant      := SQLTemplateCliFornEmpEnderecoLookUp.asVariant;
    DMImpNotaFiscal.TblNotaFiscalDestinatario_Bairro.asVariant     := SQLTemplateCliFornEmpBairroLookUp.asVariant;
    DMImpNotaFiscal.TblNotaFiscalDestinatario_Cep.asVariant        := SQLTemplateCliFornEmpCEPLookUp.DisplayText;
    DMImpNotaFiscal.TblNotaFiscalDestinatario_Cidade.asVariant     := SQLTemplateCliFornEmpCidadeLookUp.asVariant;
    DMImpNotaFiscal.TblNotaFiscalDestinatario_FoneFax.asVariant    := SQLTemplateCliFornEmpFoneLookUp.asVariant;
    DMImpNotaFiscal.TblNotaFiscalDestinatario_UF.asVariant         := SQLTemplateCliFornEmpEstadoLookUp.asVariant;
    DMImpNotaFiscal.TblNotaFiscalDestinatario_InscEst.asVariant    := SQLTemplateCliFornEmpIERGLookUp.asVariant;
    DMImpNotaFiscal.TblNotaFiscalData_Emissao.asVariant            := SQLTemplateNOFIDEMIS.asVariant;
    DMImpNotaFiscal.TblNotaFiscalDataHora_Saida.asVariant          := SQLTemplateNOFIDSAIDAENTRADA.asVariant;
    // DMImpNotaFiscal.TblNotaFiscalBaseCalc_ICMS.asVariant           := SQLTemplateNOFIN2BASCALCICMS.asFloat + SQLTemplateNOFIN2VLRFRETE.asFloat;
    DMImpNotaFiscal.TblNotaFiscalBaseCalc_ICMS.asVariant           := SQLTemplateNOFIN2BASCALCICMS.asFloat;
    if dm.SQLEmpresaEMPRCLUCROREAL.Value = 'S' then
      DMImpNotaFiscal.TblNotaFiscalValor_ICMS.asFloat    := SQLTemplateNOFIN2VLRICMS.asFloat
    else
      DMImpNotaFiscal.TblNotaFiscalValor_ICMS.AsString   := '';
    DMImpNotaFiscal.TblNotaFiscalBaseCalc_ICMS_Subts.asVariant     := SQLTemplateNOFIN2BASCALCSUBS.asVariant;
    DMImpNotaFiscal.TblNotaFiscalValor_ICMS_Subts.asVariant        := SQLTemplateNOFIN2VLRSUBS.asVariant;
    DMImpNotaFiscal.TblNotaFiscalValor_Produtos.asVariant          := SQLTemplateNOFIN2VLRPRODUTO.asVariant;
    DMImpNotaFiscal.TblNotaFiscalValor_Frete.asVariant             := SQLTemplateNOFIN2VLRFRETE.asVariant;
    DMImpNotaFiscal.TblNotaFiscalValor_Seguro.asVariant            := SQLTemplateNOFIN2VLRSEGURO.asVariant;
    DMImpNotaFiscal.TblNotaFiscalOutras_Despesas.asVariant         := SQLTemplateNOFIN2VLROUTRASDESP.asVariant;
    DMImpNotaFiscal.TblNotaFiscalValor_IPI.asVariant               := SQLTemplateNOFIN2VLRIPI.asVariant;
    DMImpNotaFiscal.TblNotaFiscalValor_Nota.asVariant              := SQLTemplateNOFIN2VLRNOTA.asVariant;
    DMImpNotaFiscal.TblNotaFiscalDestinatarioCodSistema.AsString   := SQLTemplateCLIEA13ID.AsString;

    DMImpNotaFiscal.TblNotaFiscalPercMaoObra.AsVariant             := SQLTemplateNOFIN2PERCMAODEOBRA.AsVariant;
    DMImpNotaFiscal.TblNotaFiscalPercMaterial.AsVariant            := SQLTemplateNOFIN2PERCMATERIAL.AsVariant;
    DMImpNotaFiscal.TblNotaFiscalPercINSS.AsVariant                := SQLTemplateNOFIN2PERCINSS.AsVariant;
    DMImpNotaFiscal.TblNotaFiscalPercCofins.AsVariant              := SQLTemplateNOFIN2PERCCOFINS.AsVariant;
    DMImpNotaFiscal.TblNotaFiscalPercPis.AsVariant                 := SQLTemplateNOFIN2PERCPIS.AsVariant;
    DMImpNotaFiscal.TblNotaFiscalPercIR.AsVariant                  := SQLTemplateNOFIN2PERCIR.AsVariant;
    DMImpNotaFiscal.TblNotaFiscalPercContrSocial.AsVariant         := SQLTemplateNOFIN2PERCCONTRSOCIAL.AsVariant;

    DMImpNotaFiscal.TblNotaFiscalVlrMaoObra.AsVariant             := SQLTemplateNOFIN3VLRMAODEOBRA.AsVariant;
    DMImpNotaFiscal.TblNotaFiscalVlrMaterial.AsVariant            := SQLTemplateNOFIN3VLRMATERIAL.AsVariant;
    DMImpNotaFiscal.TblNotaFiscalVlrINSS.AsVariant                := SQLTemplateNOFIN3VLRINSS.AsVariant;
    DMImpNotaFiscal.TblNotaFiscalVlrCofins.AsVariant              := SQLTemplateNOFIN3VLRCOFINS.AsVariant;
    DMImpNotaFiscal.TblNotaFiscalVlrPis.AsVariant                 := SQLTemplateNOFIN3VLRPIS.AsVariant;
    DMImpNotaFiscal.TblNotaFiscalVlrIR.AsVariant                  := SQLTemplateNOFIN3VLRIR.AsVariant;
    DMImpNotaFiscal.TblNotaFiscalVlrContrSocial.AsVariant         := SQLTemplateNOFIN3VLRCONTRSOCIAL.AsVariant;








    If SQLTemplateNOFICFRETEPORCONTA.Value = 'C' Then
      DMImpNotaFiscal.TblNotaFiscalFretePorConta.Value             := 1
    Else
      DMImpNotaFiscal.TblNotaFiscalFretePorConta.Value             := 2;

    if SQLTemplateVEICA13ID.AsString <> '' then
      begin
        DMImpNotaFiscal.TblNotaFiscalTransportadora_RazaoSoc.asString  := SQLTemplateTransportadoraLookup.asVariant+'-'+SQLVeiculoVEICA3OMOTORISTA.AsString;
        DMImpNotaFiscal.TblNotaFiscalVeiculo_UF.asVariant              := SQLVeiculoVEICA2UFPLACA.AsString;
      end
    else
      begin
        DMImpNotaFiscal.TblNotaFiscalTransportadora_RazaoSoc.asVariant := SQLTemplateTransportadoraLookup.asVariant;
        DMImpNotaFiscal.TblNotaFiscalVeiculo_UF.asVariant              := '';
      end;
    DMImpNotaFiscal.TblNotaFiscalVeiculo_Placa.asVariant           := SQLTemplateNOFIA8PLACAVEIC.asVariant;
    DMImpNotaFiscal.TblNotaFiscalTransportadora_CGC.asVariant      := SQLTemplateTransportadoraCGCLookUp.DisplayText;
    DMImpNotaFiscal.TblNotaFiscalTransportadora_Ender.asVariant    := SQLTemplateTransportadoraEnderecoLookUp.asVariant;
    DMImpNotaFiscal.TblNotaFiscalTransportadora_Cidade.asVariant   := SQLTemplateTransportadoraCidadeLookUp.asVariant;
    DMImpNotaFiscal.TblNotaFiscalTransportadora_UF.asVariant       := SQLTemplateTransportadoraEstadoLookUp.asVariant;
    DMImpNotaFiscal.TblNotaFiscalTransportadora_InscEst.asVariant  := SQLTemplateTransportadoraIELookUp.asVariant;
    DMImpNotaFiscal.TblNotaFiscalQuantidade.asVariant              := SQLTemplateNOFIN3QUANT.asVariant;
    DMImpNotaFiscal.TblNotaFiscalMarca.AsVariant                   := SQLTemplateNOFIA15MARCA.AsVariant;
    DMImpNotaFiscal.TblNotaFiscalEspecie.AsVariant                 := SQLTemplateNOFIA20ESPECIE.AsVariant;
    DMImpNotaFiscal.TblNotaFiscalNumero.asVariant                  := SQLTemplateNOFIINUMERO.asVariant;
    DMImpNotaFiscal.TblNotaFiscalPeso_Bruto.asVariant              := SQLTemplateNOFIN3PESBRUT.asVariant;
    DMImpNotaFiscal.TblNotaFiscalPeso_Liquido.asVariant            := SQLTemplateNOFIN3PESLIQ.asVariant;
    DMImpNotaFiscal.TblNotaFiscalDadosAdicionais.asVariant         := Null;
    DM.SQLConfigVenda.Open;
    DMImpNotaFiscal.TblNotaFiscalValor_ISSQN.asFloat               := SQLTemplateNOFIN2VLRISSQN.asFloat;
    If DMImpNotaFiscal.TblNotaFiscalValor_ISSQN.asFloat > 0 Then
      DMImpNotaFiscal.TblNotaFiscalAliq_ISSQN.asFloat              := DM.SQLConfigVendaCFVEN3ALIQISSQN.asFloat;
    DMImpNotaFiscal.TblNotaFiscalValor_Servicos.asFloat            := SQLTemplateNOFIN2VLRSERVICO.asFloat;
    DMImpNotaFiscal.TblNotaFiscalPedidoVendaNumero.AsString        := SQLTemplatePDVDA13ID.asString;
    DMImpNotaFiscal.TblNotaFiscalVendedor.AsString                 := SQLTemplateVENDICOD.AsString + ' - ' + SQLTemplateVendedorLookUp.asString;
    DMImpNotaFiscal.TblNotaFiscalOrdemCompraClienteNro.asString    := SQLTemplateNOFIA30NROPEDCOMP.asString;
    DMImpNotaFiscal.TblNotaFiscalCompradorCliente.asString         := SQLTemplateNOFIA30COMPRADOR.asString;
    DMImpNotaFiscal.TblNotaFiscalOBS.asString                      := SQLTemplateNOFIA255OBS.asString;
    DMImpNotaFiscal.TblNotaFiscalPlanoRecebimento.AsString         := SQLTemplatePlanoRecebimentoLookUp.AsString;

    ValorExtenso(VExt,DMImpNotaFiscal.TblNotaFiscalValor_Nota.Value, '', '', 1, 254, ' ',3);
    DMImpNotaFiscal.TblNotaFiscalValorExtenso.AsString             := VExt[0];

    DMImpNotaFiscal.TblNotaFiscal.Post;

    //Preenche Item
    DMImpNotaFiscal.TblNotaFiscalItem.Close;
    try
      DMImpNotaFiscal.TblNotaFiscalItem.DeleteTable;
      DMImpNotaFiscal.TblNotaFiscalItem.CreateTable;
    except
      DMImpNotaFiscal.TblNotaFiscalItem.CreateTable;
    end;
    DMImpNotaFiscal.TblNotaFiscalItem.Open;

    DMImpNotaFiscal.TblNotaFiscalItemServico.Close;
    try
      DMImpNotaFiscal.TblNotaFiscalItemServico.DeleteTable;
      DMImpNotaFiscal.TblNotaFiscalItemServico.CreateTable;
    except
      DMImpNotaFiscal.TblNotaFiscalItemServico.CreateTable;
    end;
    DMImpNotaFiscal.TblNotaFiscalItemServico.Open;

    DMImpNotaFiscal.TblNotaFiscalDecreto.Close;
    try
      DMImpNotaFiscal.TblNotaFiscalDecreto.DeleteTable;
      DMImpNotaFiscal.TblNotaFiscalDecreto.CreateTable;
    except
      DMImpNotaFiscal.TblNotaFiscalDecreto.CreateTable;
    end;
    DMImpNotaFiscal.TblNotaFiscalDecreto.AddIndex('Primario','Codigo',[ixPrimary]);
    DMImpNotaFiscal.TblNotaFiscalDecreto.Open;

    SQLNotaFiscalItem.Close;
    SQLNotaFiscalItem.SQL.Clear;
    SQLNotaFiscalItem.SQL.Add('Select * From NOTAFISCALITEM Where NOFIA13ID =:NOFIA13ID');
    SQLNotaFiscalItem.Open;
    SQLNotaFiscalItem.First;
    While Not SQLNotaFiscalItem.Eof Do
      Begin
        If SQLNotaFiscalItemServicoLookUp.asString='S' Then
          Begin
            DMImpNotaFiscal.TblNotaFiscalItemServico.Append;

            // ALTERADO PELO JUDI
            DMImpNotaFiscal.TblNotaFiscalItemServicoNFITA254OBS.AsString         := SQLNotaFiscalItemNFITA254OBS.asString;
            DMImpNotaFiscal.TblNotaFiscalItemServicoNumeroNFSeq.AsString         := SQLNotaFiscalItemNFITIITEM.asString;

            DMImpNotaFiscal.TblNotaFiscalItemServicoValor_UnitarioServ.asVariant := SQLNotaFiscalItemNFITN2VLRUNIT.asVariant;
//  alterado Judi           DMImpNotaFiscal.TblNotaFiscalItemServicoValor_TotalServ.asVariant    := SQLNotaFiscalItemNFITN3TOTVEND.asVariant;
            DMImpNotaFiscal.TblNotaFiscalItemServicoValor_TotalServ.asVariant    := SQLNotaFiscalItemTotalItemCalc.asVariant;
            DMImpNotaFiscal.TblNotaFiscalItemServicoUnidadeServ.asString         := SQLNotaFiscalItemUnidadeLookup.AsString; //DMImpNotaFiscal.SQLUnidadeUNIDA5DESCR.AsString;
            DMImpNotaFiscal.TblNotaFiscalItemServicoQuantidadeServ.AsVariant     := SQLNotaFiscalItemNFITN3QUANT.asVariant;
            if SQLNotaFiscalItemCFOPA5CODAUX.Value = '' then
              DMImpNotaFiscal.TblNotaFiscalItemServicoDescricaoServ.asVariant    := SQLNotaFiscalItemProdutoLookUp.asVariant
            else
              DMImpNotaFiscal.TblNotaFiscalItemServicoDescricaoServ.asVariant    := 'Cfop: ' +SQLNotaFiscalItemCFOPA5CODAUX.Value+' - '+SQLNotaFiscalItemProdutoLookUp.asVariant;
            DMImpNotaFiscal.TblNotaFiscalItemServicoCodigoServ.asVariant         := SQLNotaFiscalItemPRODICOD.asVariant;
            DMImpNotaFiscal.TblNotaFiscalItemServico.Post;
          End
        else
          begin
            if DM.SQLConfigVendaCFVECNAOIMPCLFISNF.AsString <> 'S' then
              begin
                if not DMImpNotaFiscal.TblNotaFiscalItem.Locate('ClasFisc',SQLNotaFiscalItemCLASFISCICOD.AsString,[]) and (SQLNotaFiscalItemClasFiscLookup.AsString <> '') then
                  begin
                    DMImpNotaFiscal.TblNotaFiscal.Edit;
                    DMImpNotaFiscal.TblNotaFiscalOBS.asString           := DMImpNotaFiscal.TblNotaFiscalOBS.asString + ' CF ' + SQLNotaFiscalItemCLASFISCICOD.AsString + '-' +
                                                                           SQLNotaFiscalItemClasFiscLookup.AsString;
                    DMImpNotaFiscal.TblNotaFiscal.Post;
                  end;
              end;
            DMImpNotaFiscal.TblNotaFiscalItem.Append;
            DMImpNotaFiscal.TblNotaFiscalItemCodigo.asVariant    := SQLNotaFiscalItemPRODICOD.asVariant;
            if SQLNotaFiscalItemCFOPA5CODAUX.Value = '' then
              DMImpNotaFiscal.TblNotaFiscalItemDescricao.asVariant  := SQLNotaFiscalItemProdutoLookUp.asVariant
            else
              DMImpNotaFiscal.TblNotaFiscalItemDescricao.asVariant  := 'Cfop: ' +SQLNotaFiscalItemCFOPA5CODAUX.Value+' - '+SQLNotaFiscalItemProdutoLookUp.asVariant;

            if DM.SQLConfigVendaCFVECNAOIMPCLFISNF.AsString <> 'S' then
              if SQLNotaFiscalItemClasFiscLookup.AsString <> '' then
                begin
                  DMImpNotaFiscal.TblNotaFiscalItemClasFisc.AsString  := SQLNotaFiscalItemCLASFISCICOD.AsString;
                end;

            case Length(SQLNotaFiscalItemSitTribLookUp.AsString) of
              1 : begin DMImpNotaFiscal.TblNotaFiscalItemSitTrib.asVariant   := Preenche(SQLNotaFiscalItemSitTribLookUp.AsString,'0',3,2) end;
              2 : begin DMImpNotaFiscal.TblNotaFiscalItemSitTrib.AsString    := '0' + SQLNotaFiscalItemSitTribLookUp.AsString end;
              3 : begin DMImpNotaFiscal.TblNotaFiscalItemSitTrib.asVariant   := SQLNotaFiscalItemSitTribLookUp.AsString; end;
            end;

            if (DMImpNotaFiscal.TblNotaFiscalItemSitTrib.asVariant <> Null) then
              begin
                if DMImpNotaFiscal.TblNotaFiscalItemSitTrib.AsInteger > 0 then
                  begin
                    DMImpNotaFiscal.TblNotaFiscalItemDescricao.asString := '(*)' + DMImpNotaFiscal.TblNotaFiscalItemDescricao.asString;
                    if ListaDec.Items.IndexOf(SQLNotaFiscalItemDecretoLookUp.asString)=-1 Then
                      begin
                        ListaDec.Items.Add(SQLNotaFiscalItemDecretoLookUp.asString);
                        DMImpNotaFiscal.TblNotaFiscal.Edit;
                        if DMImpNotaFiscal.TblNotaFiscalDecretos.asString = '' then
                          DMImpNotaFiscal.TblNotaFiscalDecretos.asString := SQLNotaFiscalItemDecretoLookUp.asString
                        else
                          DMImpNotaFiscal.TblNotaFiscalDecretos.asString := DMImpNotaFiscal.TblNotaFiscalDecretos.asString +
                                                                            #13#10 + SQLNotaFiscalItemDecretoLookUp.asString;

                        DMImpNotaFiscal.TblNotaFiscal.Post;
                      end;
                  end;
              end;

            // ALTERADO PELO JUDI
            DMImpNotaFiscal.TblNotaFiscalItemNFITA254OBS.AsString                := SQLNotaFiscalItemNFITA254OBS.asString;
            DMImpNotaFiscal.TblNotaFiscalItemNumeroNFSeq.AsString                := SQLNotaFiscalItemNFITIITEM.asString;

            DMImpNotaFiscal.TblNotaFiscalItemUnidade.asVariant        := SQLNotaFiscalItemUnidadeLookUp.asVariant ;
            DMImpNotaFiscal.TblNotaFiscalItemQuantidade.asVariant     := SQLNotaFiscalItemNFITN3QUANT.asVariant ;
            DMImpNotaFiscal.TblNotaFiscalItemValor_Unitario.asVariant := SQLNotaFiscalItemNFITN2VLRUNIT.asVariant -
                                                                         (SQLNotaFiscalItemNFITN2VLRUNIT.asVariant *
                                                                         (SQLNotaFiscalItemNFITN2PERCDESC.asVariant/100));
            DMImpNotaFiscal.TblNotaFiscalItemValor_Desconto.asVariant := SQLNotaFiscalItemNFITN2VLRDESC.asVariant ;
// alterado Judi           DMImpNotaFiscal.TblNotaFiscalItemValor_Total.asVariant    := SQLNotaFiscalItemNFITN3TOTVEND.asVariant ;
            DMImpNotaFiscal.TblNotaFiscalItemValor_Total.asVariant    := SQLNotaFiscalItemTotalItemCalc.asVariant ;
            if dm.SQLEmpresaEMPRCLUCROREAL.Value = 'S' then
              DMImpNotaFiscal.TblNotaFiscalItemICMS_Aliquota.asVariant  := SQLNotaFiscalItemNFITN2PERCICMS.asVariant
            else
              DMImpNotaFiscal.TblNotaFiscalItemICMS_Aliquota.AsString   := '';
            DMImpNotaFiscal.TblNotaFiscalItemIPI_Aliquota.asVariant   := SQLNotaFiscalItemNFITN2PERCIPI.asVariant ;
            DMImpNotaFiscal.TblNotaFiscalItemValor_IPI.asVariant      := SQLNotaFiscalItemNFITN2VLRIPI.asVariant ;
            DMImpNotaFiscal.TblNotaFiscalItemLOTEA30NRO.AsString      := SQLNotaFiscalItemLOTEA30NRO.AsString;
            DMImpNotaFiscal.TblNotaFiscalItemReferencia.AsString      := SQLNotaFiscalItemReferenciaLookUp.AsString;
            DMImpNotaFiscal.TblNotaFiscalItem.Post;
            try
              vCodDecreto := SQLLocate('PRODUTO','PRODICOD','DECRICOD',SQLNotaFiscalItemPRODICOD.AsString);
              if vCodDecreto <> '' then
                begin
                  DMImpNotaFiscal.TblNotaFiscalDecreto.Append;
                  DMImpNotaFiscal.TblNotaFiscalDecretoCodigo.AsString    := vCodDecreto;
                  DMImpNotaFiscal.TblNotaFiscalDecretoDescricao.AsString := SQLLocate('DECRETO','DECRICOD','DECRA100DESCR',vCodDecreto);
                  DMImpNotaFiscal.TblNotaFiscalDecreto.Post;
                end;
            except
              DMImpNotaFiscal.TblNotaFiscalDecreto.Cancel;
              Application.ProcessMessages;
            end;

          end;
        SQLNotaFiscalItem.Next;
      End;
    //LANCA ITEM COMO DESCONTO NA NOTA FISCAL
    if (SQLTemplateNOFIN2VLRDESCPROM.AsFloat > 0) or (SQLTemplateNOFIN2VLRDESC.AsFloat > 0) then
      begin
        DMImpNotaFiscal.TblNotaFiscalItem.Append;
        DMImpNotaFiscal.TblNotaFiscalItemCodigo.AsString    := '****';
        DMImpNotaFiscal.TblNotaFiscalItemDescricao.AsString := 'DESCONTO INCONDICIONAL  R$ ' + FormatFloat('###0.00',SQLTemplateNOFIN2VLRDESC.AsFloat + SQLTemplateNOFIN2VLRDESCPROM.AsFloat);
        DMImpNotaFiscal.TblNotaFiscalItem.Post;
      end;
    //LANCA ITEM COM DADOS COMPLEMENTARES BUSCANDO DE UM MEMO NA PAG.PRINCIPAL DO CADASTRO DE NF
    if SQLTemplateNOFIAOBSCORPONF.AsString <> '' then
      begin
        if not CkImprimeNosServicos.Checked then
          begin
            DMImpNotaFiscal.TblNotaFiscalItem.Append;
            DMImpNotaFiscal.TblNotaFiscalItemCodigo.AsString    := '****';
            DMImpNotaFiscal.TblNotaFiscalItemDescricao.AsString := COPY(SQLTemplateNOFIAOBSCORPONF.AsString,1,100);
            DMImpNotaFiscal.TblNotaFiscalItem.Post;
            if Length(SQLTemplateNOFIAOBSCORPONF.AsString) > 100 THEN
              begin
                DMImpNotaFiscal.TblNotaFiscalItem.Append;
                DMImpNotaFiscal.TblNotaFiscalItemCodigo.AsString    := '';
                DMImpNotaFiscal.TblNotaFiscalItemDescricao.AsString := COPY(SQLTemplateNOFIAOBSCORPONF.AsString,101,200);
                DMImpNotaFiscal.TblNotaFiscalItem.Post;
              end;
          end
        else
          begin
            DMImpNotaFiscal.TblNotaFiscalItemServico.Append;
            DMImpNotaFiscal.TblNotaFiscalItemServicoCodigoServ.AsString    := '****';
            DMImpNotaFiscal.TblNotaFiscalItemServicoDescricaoServ.AsString := COPY(SQLTemplateNOFIAOBSCORPONF.AsString,1,100);
            DMImpNotaFiscal.TblNotaFiscalItemServico.Post;
            if Length(SQLTemplateNOFIAOBSCORPONF.AsString) > 100 THEN
              begin
                DMImpNotaFiscal.TblNotaFiscalItemServico.Append;
                DMImpNotaFiscal.TblNotaFiscalItemServicoCodigoServ.AsString    := '';
                DMImpNotaFiscal.TblNotaFiscalItemServicoDescricaoServ.AsString := COPY(SQLTemplateNOFIAOBSCORPONF.AsString,101,200);
                DMImpNotaFiscal.TblNotaFiscalItemServico.Post;
              end;
          end;
      end;

    //Preenche Financeiro
    DMImpNotaFiscal.TblNotaFiscalFinanceiro.Close;
    try
      DMImpNotaFiscal.TblNotaFiscalFinanceiro.DeleteTable;
      DMImpNotaFiscal.TblNotaFiscalFinanceiro.CreateTable;
    except
      DMImpNotaFiscal.TblNotaFiscalFinanceiro.CreateTable;
    end;
    DMImpNotaFiscal.TblNotaFiscalFinanceiro.Open;

    SQLContasReceber.Close;
    SQLContasReceber.Open;
    SQLContasReceber.Last;
    if SQLContasReceberPortadorLookup.AsString <> '' then
      begin
        DMImpNotaFiscal.TblNotaFiscal.Edit;
        DMImpNotaFiscal.TblNotaFiscalPortador.AsString := 'Portador: ' + SQLContasReceberPortadorLookup.AsString;
        DMImpNotaFiscal.TblNotaFiscal.Post;
      end;
    SQLContasReceber.First;
    While Not SQLContasReceber.Eof Do
      Begin
        DMImpNotaFiscal.TblNotaFiscalFinanceiro.Append;
        DMImpNotaFiscal.TblNotaFiscalFinanceiroParcela.asVariant    := SQLContasReceberCTRCINROPARC.asVariant;
        DMImpNotaFiscal.TblNotaFiscalFinanceiroVencimento.asVariant := SQLContasReceberCTRCDVENC.asVariant;
        DMImpNotaFiscal.TblNotaFiscalFinanceiroValor.asVariant      := SQLContasReceberCTRCN2VLR.asVariant;
        DMImpNotaFiscal.TblNotaFiscalFinanceiroNumero.asString      := dmimpnotafiscal.TblNotaFiscalNumeroNF.AsString + '-' + SQLContasReceberCTRCINROPARC.asString;
        DMImpNotaFiscal.TblNotaFiscalFinanceiro.Post;
        SQLContasReceber.Next;
      End;
    DM.SQLConfigGeral.Close;
    DM.SQLConfigGeral.Open;
    SQLNotaFiscalItem.Close;
    DMImpNotaFiscal.TblNotaFiscal.Close;
    DMImpNotaFiscal.TblNotaFiscalItem.Close;
    DMImpNotaFiscal.TblNotaFiscalFinanceiro.Close;
    DMImpNotaFiscal.TblNotaFiscalDecreto.Close;
    DMImpNotaFiscal.Free;

   if SQLSerieSERIA100PATHEXEIMP.Value <> '' then
     begin
       if FileExists(SQLSerieSERIA100PATHEXEIMP.Value) then
         WinExec(PChar(SQLSerieSERIA100PATHEXEIMP.Value+' '+SQLTemplateNOFIA13ID.asString),SW_SHOW);
     end
   else
     begin
        if FileExists(Dm.PathAplicacao + '\NFRDPrint.exe') then
          WinExec(PChar(DM.PathAplicacao + '\NFRDPrint.exe '+SQLTemplateNOFIA13ID.asString),SW_SHOW)
        else
          begin
            Report.ReportName        := DM.SQLTerminalAtivoTERMTPATHNF.AsString;
            Report.ReportTitle       := 'Impressão de Nota Fiscal';
            Report.WindowStyle.Title := 'Impressão de Nota Fiscal';
            Report.Execute;
          end;
     end;

  except
    on E:Exception do
      begin
        Informa('Problemas ao imprimir a nota fiscal...'         + #13 +
                'Informe a mensagem abaixo ao seu revendedor...' + #13 +
                'Mensagem: ' + E.Message);
        Abort;
      end;
  end;
end;

// Fabiano
function TFormCadastroNotaFiscal.TipoFonte(Nome: String):TTipoFonte;
begin
    if Nome = 'normal' then
       Result := normal;
    if Nome = 'comp12' then
       Result := comp12;
    if Nome = 'comp17' then
       Result := comp17;
    if Nome = 'comp20' then
       Result := comp20;
end;


///Fabiano Impressão Nota Com Novo componente
procedure TFormCadastroNotaFiscal.ImprimirNotaFiscalPersonalizada;
begin
  try
    //Imprime dados Nota ;
    RDprint.Abrir;
    ImprimeDadosNFPersonalizado(0); // Cabecalho
    ImprimeFinanNFPersonalizado;    //Financeiro
    ImprimeItensNFPersonalizado;    //Itens
    ImprimeDadosNFPersonalizado(3); // Rodape
    ImprimeServsNFPersonalizado;    //Serviços
    RDprint.Fechar;
    if DMImpNotaFiscal.SQLConfigimpressao.Active then
       DMImpNotaFiscal.SQLConfigimpressao.Close;
    if DMImpNotaFiscal.SQLConfigImpPapel.Active then
       DMImpNotaFiscal.SQLConfigImpPapel.Close;
  except
    on E:Exception do
      begin
        Informa('Problemas ao imprimir a nota fiscal...'         + #13 +
                'Informe a mensagem abaixo ao seu revendedor...' + #13 +
                'Mensagem: ' + E.Message);
        DMImpNotaFiscal.TblNotaFiscal.Close;
        DMImpNotaFiscal.TblNotaFiscalItem.Close;
        DMImpNotaFiscal.TblNotaFiscalFinanceiro.Close;
        DMImpNotaFiscal.TblNotaFiscalItemServico.Close;
        if DMImpNotaFiscal.SQLConfigimpressao.Active then
           DMImpNotaFiscal.SQLConfigimpressao.Close;
        if DMImpNotaFiscal.SQLConfigImpPapel.Active then
           DMImpNotaFiscal.SQLConfigImpPapel.Close;
        Abort;
      end;
  end;
end;

procedure TFormCadastroNotaFiscal.ImprimeDadosNFPersonalizado(Divisao : Integer);
Var I : Integer;
begin
   SQLLayOutImpressao.Close;
   SQLLayOutImpressao.SQL.Text := ' select CONFIGIMPRESSAO.*, CONFIGIMPRESSAOPAPEL.* from CONFIGIMPRESSAO  ' +
                                  ' left outer join CONFIGIMPRESSAOPAPEL on CONFIGIMPRESSAO.CFIMIID = CONFIGIMPRESSAOPAPEL.CFIMIID ' +
                                  ' where CONFIGIMPRESSAO.CFIMIID  = ' + Config + ' and CONFIGIMPRESSAO.CFIMIDIVISAO  = ' + IntToStr(Divisao) ;
   SQLLayOutImpressao.Open;

   RDprint.TamanhoQteLinhas  := SQLLayOutImpressao.FieldByName('CFIPITOTALLINHAS').AsInteger;
   RDprint.TamanhoQteColunas := SQLLayOutImpressao.FieldByName('CFIPITOTALCOLUNAS').AsInteger;

   for I := 0 to DMImpNotaFiscal.TblNotaFiscal.FieldCount - 1 do
     begin
       if SQLLayOutImpressao.Locate('CFIMA30FIELD',DMImpNotaFiscal.TblNotaFiscal.Fields.Fields[I].FieldName,[loCaseInsensitive]) then
         if (DMImpNotaFiscal.TblNotaFiscal.Fields.Fields[I].DataType in [ftFloat, ftCurrency]) and
            (DMImpNotaFiscal.TblNotaFiscal.Fields.Fields[I].Tag <> 1) then
            RDprint.ImpVal(SQLLayOutImpressao.FieldByName('CFIMIIMPLIN').AsInteger + SQLLayOutImpressao.FieldByName(PainelDivisao[Divisao]).AsInteger,
                           SQLLayOutImpressao.FieldByName('CFIMIIMPCOL').AsInteger,
                           '#,##0.00',
                           DMImpNotaFiscal.TblNotaFiscal.Fields.Fields[I].AsFloat,
                           [TipoFonte(SQLLayOutImpressao.FieldByName('CFIPA13COMPRESSAO').AsString)])
         else
            RDprint.ImpF(SQLLayOutImpressao.FieldByName('CFIMIIMPLIN').AsInteger + SQLLayOutImpressao.FieldByName(PainelDivisao[Divisao]).AsInteger,
                         SQLLayOutImpressao.FieldByName('CFIMIIMPCOL').AsInteger,DMImpNotaFiscal.TblNotaFiscal.Fields.Fields[I].AsString,[TipoFonte(SQLLayOutImpressao.FieldByName('CFIPA13COMPRESSAO').AsString)]);
     end;
end;

procedure TFormCadastroNotaFiscal.ImprimeItensNFPersonalizado;
Var I, Item : Integer;
begin
   SQLLayOutImpressao.Close;
   SQLLayOutImpressao.SQL.Text := ' select CONFIGIMPRESSAO.*, CONFIGIMPRESSAOPAPEL.* from CONFIGIMPRESSAO ' +
                                  ' left outer join CONFIGIMPRESSAOPAPEL on CONFIGIMPRESSAO.CFIMIID = CONFIGIMPRESSAOPAPEL.CFIMIID ' +
                                  ' where CONFIGIMPRESSAO.CFIMIID  = ' + Config + ' and CONFIGIMPRESSAO.CFIMIDIVISAO  = 1 ';
   SQLLayOutImpressao.Open;

   for I := 0 to DMImpNotaFiscal.TblNotaFiscalItem.FieldCount - 1 do
       begin
          if SQLLayOutImpressao.Locate('CFIMA30FIELD',DMImpNotaFiscal.TblNotaFiscalItem.Fields.Fields[I].FieldName,[loCaseInsensitive]) then
             begin
                DMImpNotaFiscal.TblNotaFiscalItem.First;
                Item := 0;
                while not DMImpNotaFiscal.TblNotaFiscalItem.Eof do
                    begin
                       if (DMImpNotaFiscal.TblNotaFiscalItem.Fields.Fields[I].DataType in [ftFloat, ftCurrency]) and
                          (DMImpNotaFiscal.TblNotaFiscalItem.Fields.Fields[I].Tag <> 1) then
                          RDprint.ImpVal(SQLLayOutImpressao.FieldByName('CFIMIIMPLIN').AsInteger + SQLLayOutImpressao.FieldByName('CFIPILININIITENS').AsInteger + Item,
                                         SQLLayOutImpressao.FieldByName('CFIMIIMPCOL').AsInteger,
                                         '#,##0.00',
                                         DMImpNotaFiscal.TblNotaFiscalItem.Fields.Fields[I].AsFloat,
                                         [TipoFonte(SQLLayOutImpressao.FieldByName('CFIPA13COMPRESSAO').AsString)])
                       else
                          RDprint.ImpF(SQLLayOutImpressao.FieldByName('CFIMIIMPLIN').AsInteger + SQLLayOutImpressao.FieldByName('CFIPILININIITENS').AsInteger + Item,
                                       SQLLayOutImpressao.FieldByName('CFIMIIMPCOL').AsInteger,DMImpNotaFiscal.TblNotaFiscalItem.Fields.Fields[I].AsString,[TipoFonte(SQLLayOutImpressao.FieldByName('CFIPA13COMPRESSAO').AsString)]);
                       DMImpNotaFiscal.TblNotaFiscalItem.Next;
                       Item := Item + 1;
                    end;
             end;
       end;
end;


procedure TFormCadastroNotaFiscal.ImprimeServsNFPersonalizado;
Var I, Item : Integer;
begin
   SQLLayOutImpressao.Close;
   SQLLayOutImpressao.SQL.Text := ' select CONFIGIMPRESSAO.*, CONFIGIMPRESSAOPAPEL.* from CONFIGIMPRESSAO ' +
                                  ' left outer join CONFIGIMPRESSAOPAPEL on CONFIGIMPRESSAO.CFIMIID = CONFIGIMPRESSAOPAPEL.CFIMIID ' +
                                  ' where CONFIGIMPRESSAO.CFIMIID  = ' + Config + ' and CONFIGIMPRESSAO.CFIMIDIVISAO  = 2 ';
   SQLLayOutImpressao.Open;

   for I := 0 to DMImpNotaFiscal.TblNotaFiscalItemServico.FieldCount - 1 do
       begin
          if SQLLayOutImpressao.Locate('CFIMA30FIELD',DMImpNotaFiscal.TblNotaFiscalItemServico.Fields.Fields[I].FieldName,[loCaseInsensitive]) then
             begin
                DMImpNotaFiscal.TblNotaFiscalItemServico.First;
                Item := 0;
                while not DMImpNotaFiscal.TblNotaFiscalItemServico.Eof do
                    begin
                       if (DMImpNotaFiscal.TblNotaFiscalItemServico.Fields.Fields[I].DataType in [ftFloat, ftCurrency])  and
                          (DMImpNotaFiscal.TblNotaFiscalItemServico.Fields.Fields[I].Tag <> 1) then
                          RDprint.ImpVal(SQLLayOutImpressao.FieldByName('CFIMIIMPLIN').AsInteger + SQLLayOutImpressao.FieldByName('CFIPILININISERV').AsInteger + Item,
                                         SQLLayOutImpressao.FieldByName('CFIMIIMPCOL').AsInteger,
                                         '#,##0.00',
                                         DMImpNotaFiscal.TblNotaFiscalItemServico.Fields.Fields[I].AsFloat,
                                         [TipoFonte(SQLLayOutImpressao.FieldByName('CFIPA13COMPRESSAO').AsString)])
                       else
                          RDprint.ImpF(SQLLayOutImpressao.FieldByName('CFIMIIMPLIN').AsInteger + SQLLayOutImpressao.FieldByName('CFIPILININISERV').AsInteger + Item,
                                       SQLLayOutImpressao.FieldByName('CFIMIIMPCOL').AsInteger,DMImpNotaFiscal.TblNotaFiscalItemServico.Fields.Fields[I].AsString,[TipoFonte(SQLLayOutImpressao.FieldByName('CFIPA13COMPRESSAO').AsString)]);
                       DMImpNotaFiscal.TblNotaFiscalItemServico.Next;
                       Item := Item + 1;
                    end;
             end;
       end;
end;

procedure TFormCadastroNotaFiscal.ImprimeFinanNFPersonalizado;
Var I, Item, QtdeItens, QtdeColunas, ColunasBox, Linha : Integer;
begin
   SQLLayOutImpressao.Close;
   SQLLayOutImpressao.SQL.Text := ' select CONFIGIMPRESSAO.*, CONFIGIMPRESSAOPAPEL.* from CONFIGIMPRESSAO ' +
                                  ' left outer join CONFIGIMPRESSAOPAPEL on CONFIGIMPRESSAO.CFIMIID = CONFIGIMPRESSAOPAPEL.CFIMIID ' +
                                  ' where CONFIGIMPRESSAO.CFIMIID  = ' + Config + ' and CONFIGIMPRESSAO.CFIMIDIVISAO  = 4';
   SQLLayOutImpressao.Open;

   QtdeItens := SQLLayOutImpressao.FieldByName('CFIPILINFINFINAN').AsInteger - SQLLayOutImpressao.FieldByName('CFIPILININIFINAN').AsInteger;
   ColunasBox := SQLLayOutImpressao.FieldByName('CFIPICOLFINFINAN').AsInteger - SQLLayOutImpressao.FieldByName('CFIPICOLINIFINAN').AsInteger;

   if not DMImpNotaFiscal.TblNotaFiscalFinanceiro.Active then DMImpNotaFiscal.TblNotaFiscalFinanceiro.Active := True;

   for I := 0 to DMImpNotaFiscal.TblNotaFiscalFinanceiro.FieldCount - 1 do
       begin
          if SQLLayOutImpressao.Locate('CFIMA30FIELD',DMImpNotaFiscal.TblNotaFiscalFinanceiro.Fields.Fields[I].FieldName,[loCaseInsensitive]) then
             begin
                DMImpNotaFiscal.TblNotaFiscalFinanceiro.First;
                Item := 0;
                QtdeColunas := 0;
                Linha       := 0;

                while not DMImpNotaFiscal.TblNotaFiscalFinanceiro.Eof do
                   begin
                       //Direção Vertical
                       if SQLLayOutImpressao.FieldByName('CFIPCDIRECAO').AsString = 'V' then
                          begin
                             if Item > (QtdeItens - 1) then
                                begin
                                   Item := 0;
                                   QtdeColunas := QtdeColunas + ColunasBox;
                                end;
                             if Item <> 0 then
                                Linha := Linha + 1
                             else
                                Linha := 0;
                          end;

                       //Direção Horizontal
                       if SQLLayOutImpressao.FieldByName('CFIPCDIRECAO').AsString = 'H' then
                          if (Item * ColunasBox) > SQLLayOutImpressao.FieldByName('CFIPITOTALCOLUNAS').AsFloat  then
                             begin
                               QtdeColunas := 0;
                               Linha       := Linha + 1;
                             end
                          else
                             begin
                               QtdeColunas := Item * ColunasBox;
                             end;

                       if (DMImpNotaFiscal.TblNotaFiscalFinanceiro.Fields.Fields[I].DataType in [ftFloat, ftCurrency])  and
                          (DMImpNotaFiscal.TblNotaFiscalFinanceiro.Fields.Fields[I].Tag <> 1) then
                          RDprint.ImpVal(SQLLayOutImpressao.FieldByName('CFIMIIMPLIN').AsInteger + SQLLayOutImpressao.FieldByName('CFIPILININIFINAN').AsInteger + Linha,
                                         SQLLayOutImpressao.FieldByName('CFIMIIMPCOL').AsInteger + QtdeColunas,
                                         '#,##0.00',
                                         DMImpNotaFiscal.TblNotaFiscalFinanceiro.Fields.Fields[I].AsFloat,
                                         [TipoFonte(SQLLayOutImpressao.FieldByName('CFIPA13COMPRESSAO').AsString)])
                       else
                          RDprint.ImpF(SQLLayOutImpressao.FieldByName('CFIMIIMPLIN').AsInteger + SQLLayOutImpressao.FieldByName('CFIPILININIFINAN').AsInteger + Linha,
                                       SQLLayOutImpressao.FieldByName('CFIMIIMPCOL').AsInteger + QtdeColunas,
                                       DMImpNotaFiscal.TblNotaFiscalFinanceiro.Fields.Fields[I].AsString,
                                       [TipoFonte(SQLLayOutImpressao.FieldByName('CFIPA13COMPRESSAO').AsString)]);
                       DMImpNotaFiscal.TblNotaFiscalFinanceiro.Next;

                       Item := Item + 1;
                    end;
             end;
       end;
   DMImpNotaFiscal.TblNotaFiscalFinanceiro.Close;
end;

//Fim de impressão para testes...


procedure TFormCadastroNotaFiscal.SQLNotaFiscalItemCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if not Dm.ImportandoPedidoVenda then
    begin
      SQLNotaFiscalItemTotalItemCalc.asFloat := (SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat
                                                 * SQLNotaFiscalItemNFITN3QUANT.asFloat)
                                                 - SQLNotaFiscalItemNFITN2VLRDESC.AsFloat;
      If DataSet.FieldByName('PRODICOD').AsVariant <> null then
        Begin
          If DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[DataSet.FieldByName('PRODICOD').AsString],1) Then
            Begin
              DMImpNotaFiscal.SQLUnidade.Close;
              if DM.SQLTemplate.FindField('UNIDICOD').AsVariant <> Null then
                begin
                  DMImpNotaFiscal.SQLUnidade.ParamByName('UNIDICOD').AsInteger := DM.SQLTemplate.FindField('UNIDICOD').asInteger;
                  DMImpNotaFiscal.SQLUnidade.Open;
                  DMImpNotaFiscal.SQLUnidade.First;
                end;
              If Not DMImpNotaFiscal.SQLUnidade.IsEmpty Then
                DataSet.FieldByName('UnidadeLookup').AsVariant := DMImpNotaFiscal.SQLUnidadeUNIDA5DESCR.asString;
              DMImpNotaFiscal.SQLUnidade.Close;
              DMImpNotaFiscal.SQLClasFisc.Close;
              DMImpNotaFiscal.SQLClasFisc.ParamByName('CLFSICOD').AsInteger      := DM.SQLTemplate.FindField('CLFSICOD').asInteger;
              DMImpNotaFiscal.SQLClasFisc.Open;
              DMImpNotaFiscal.SQLClasFisc.First;
              If Not DMImpNotaFiscal.SQLClasFisc.Eof Then
                begin
                  DataSet.FieldByName('ClasFiscLookup').AsVariant := DMImpNotaFiscal.SQLClasFiscCLFSA30DESCR.asString;
                  DataSet.FieldByName('ClasFiscICod').AsInteger   := DMImpNotaFiscal.SQLClasFiscCLFSICOD.AsInteger;
                end;
              DMImpNotaFiscal.SQLClasFisc.Close;
              DMImpNotaFiscal.SQLICMS.Close;

              If DM.SQLTemplate.FindField('ICMSICOD').asVariant = Null Then
                DMImpNotaFiscal.SQLICMS.ParamByName('ICMSICOD').asInteger := 1
              Else
                DMImpNotaFiscal.SQLICMS.ParamByName('ICMSICOD').AsString  := DM.SQLTemplate.FindField('ICMSICOD').AsString;
              DMImpNotaFiscal.SQLICMS.Open;
              DMImpNotaFiscal.SQLICMS.First;
              if not DMImpNotaFiscal.SQLDecreto.Active then DMImpNotaFiscal.SQLDecreto.Open;
              If Not DMImpNotaFiscal.SQLICMS.Eof Then
                Begin
                  if Dm.SQLTemplate.FindField('PRODISITTRIB').AsVariant <> null then
                    DataSet.FieldByName('SitTribLookup').AsString :=Dm.SQLTemplate.FindField('PRODISITTRIB').AsString
                  else
                    DataSet.FieldByName('SitTribLookup').AsVariant := DMImpNotaFiscal.SQLICMSICMSICODSITTRIB.AsVariant;

                  If DMImpNotaFiscal.SQLICMSICMSN2ALIQUOTA.asVariant<>Null Then
                    DataSet.FieldByName('AliquotaICMS').asString  := DMImpNotaFiscal.SQLICMSICMSN2ALIQUOTA.asString;

                  If DMImpNotaFiscal.SQLICMSDECRICOD.asVariant<>Null Then
                    DataSet.FieldByName('DecretoLookup').asString  := DMImpNotaFiscal.SQLICMSDECRICOD.asString+'-'+DMImpNotaFiscal.SQLICMSDecretoLookup.asString;
                End;
              SQLICMS.Close;

              if DM.SQLConfigVendaCFVECIMPDESCRPRINF.AsString <> 'S' then
                DataSet.FieldByName('ProdutoLookup').AsVariant  := DM.SQLTemplate.FindField('PRODA30ADESCRREDUZ').asString
              else
                DataSet.FieldByName('ProdutoLookup').AsVariant  := DM.SQLTemplate.FindField('PRODA60DESCR').asString;

              DataSet.FieldByName('GradeCodLookup').AsVariant   := DM.SQLTemplate.FindField('GRADICOD').AsVariant;
              DataSet.FieldByName('AgrupGradeLookup').AsVariant := DM.SQLTemplate.FindField('PRODIAGRUPGRADE').AsVariant;
              DataSet.FieldByName('ReferenciaLookup').AsVariant := DM.SQLTemplate.FindField('PRODA60REFER').AsVariant;
              DataSet.FieldByName('ServicoLookup').AsVariant    := DM.SQLTemplate.FindField('PRODCSERVICO').AsVariant;
            End
          Else
            Begin
              DataSet.FieldByName('ProdutoLookup').asString     := MensagemLookUp;
              DataSet.FieldByName('GradeCodLookup').AsVariant   := NULL;
              DataSet.FieldByName('AgrupGradeLookup').AsVariant := NULL;
              DataSet.FieldByName('ReferenciaLookup').AsVariant := MensagemLookUp;
              DataSet.FieldByName('ServicoLookup').AsVariant    := NULL;
            End;
        End
      Else
        Begin
          DataSet.FieldByName('ProdutoLookup').AsVariant    := Null;
          DataSet.FieldByName('GradeCodLookup').AsVariant   := NULL;
          DataSet.FieldByName('AgrupGradeLookup').AsVariant := NULL;
          DataSet.FieldByName('ReferenciaLookup').AsVariant := NULL;
          DataSet.FieldByName('ServicoLookup').AsVariant    := NULL;
        End;
    end;
end;

procedure TFormCadastroNotaFiscal.SQLNotaFiscalItemNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLNotaFiscalItemNFITN3QUANT.asFloat       :=0;
  SQLNotaFiscalItemNFITN2BASEICMS.asFloat    :=0;
  SQLNotaFiscalItemNFITN2BASESUBS.asFloat    :=0;
  SQLNotaFiscalItemNFITN2PERCDESC.asFloat    :=0;
  SQLNotaFiscalItemNFITN2PERCICMS.asFloat    :=0;
  SQLNotaFiscalItemNFITN2PERCIPI.asFloat     :=0;
  SQLNotaFiscalItemNFITN2PERCISSQN.asFloat   :=0;
  SQLNotaFiscalItemNFITN2PERCSUBS.asFloat    :=0;
  SQLNotaFiscalItemNFITN2VLRDESC.asFloat     :=0;
  SQLNotaFiscalItemNFITN2VLRFRETE.asFloat    :=0;
  SQLNotaFiscalItemNFITN2VLRICMS.asFloat     :=0;
  SQLNotaFiscalItemNFITN2VLRIPI.asFloat      :=0;
  SQLNotaFiscalItemNFITN2VLRISSQN.asFloat    :=0;
  SQLNotaFiscalItemNFITN2VLRLUCRO.asFloat    :=0;
  SQLNotaFiscalItemNFITN2VLRSUBS.asFloat     :=0;
  SQLNotaFiscalItemNFITN2VLRUNIT.asFloat     :=0;
end;

procedure TFormCadastroNotaFiscal.SQLTemplateBeforeInsert(
  DataSet: TDataSet);
begin
  if DM.GerarNovaNota then
    begin
      VarPDVDA13ID           := SQLTemplate.FieldByName('PDVDA13ID').AsString;
      VarSerie               := SQLTemplate.FieldByName('SERIA5COD').AsString;
      VarOperacaoEstoque     := SQLTemplate.FieldByName('OPESICOD').AsString;
      VarOperacaoEntradaSaida:= SQLTemplate.FieldByName('NOFA1ENTRADASAIDA').AsString;
      VarTRANICOD            := SQLTemplate.FieldByName('TRANICOD').AsString;
      VarNOFIA30NROPEDCOMP   := SQLTemplate.FieldByName('NOFIA30NROPEDCOMP').AsString;
      VarNOFIA30COMPRADOR    := SQLTemplate.FieldByName('NOFIA30COMPRADOR').AsString;
      VarNOFIINROTALAO       := SQLTemplate.FieldByName('NOFIINROTALAO').AsString;
      VarPLRCICOD            := SQLTemplate.FieldByName('PLRCICOD').AsString;
      VarCLIEA13ID           := SQLTemplate.FieldByName('CLIEA13ID').AsString;
      VarVENDICOD            := SQLTemplate.FieldByName('VENDICOD').AsString;
      VarNOFIN2VLRFRETE      := SQLTemplate.FieldByName('NOFIN2VLRFRETE').AsString;
      VarNOFIN2VLRDESCPROM   := SQLTemplate.FieldByName('NOFIN2VLRDESCPROM').AsString;
      VarNOFIA255OBS         := SQLTemplate.FieldByName('NOFIA255OBS').AsString;
    end;
  inherited;
  InserindoNota := True;
end;

function TFormCadastroNotaFiscal.TemMovimentoEstoqueNF(IDNotaFiscal:string) : Boolean;
var
  SQLMovimento : TRxQuery;
begin
  SQLMovimento := TRxQuery.Create(DM);
  SQLMovimento.DatabaseName := 'DB';
  SQLMovimento.Close;
  SQLMovimento.SQL.Add('SELECT * FROM MOVIMENTOESTOQUE WHERE NOFIA13ID = "' + IDNotaFiscal + '"');
  SQLMovimento.Open;
  if not SQLMovimento.IsEmpty then
    begin
      if SQLMovimento.FieldByName('MVESN3QTDENTRADA').AsInteger > 0 then
        EntradaSaida := 'S'
      else
        if SQLMovimento.FieldByName('MVESN3QTDSAIDA').AsInteger > 0 then
          EntradaSaida := 'E'
        else
          EntradaSaida := 'N';
      Result := True;
    end
  else
    result := False;
  SQLMovimento.Close;
  SQLMovimento.Free;
end;
function TFormCadastroNotaFiscal.InformarDadosCheque : boolean ;
begin
  if DM.SQLConfigVendaCFVECDADOSCHQPDV.Value = 'S' then
    begin
      IncrementaNroCheque := false ;
      if not DM.TblCheques.Active then
        DM.TblCheques.Open ;
      //VERIFICAR SEM TEM CHEQUE
      SQLParcelasPrazoVendaTemp.DisableControls ;
      SQLParcelasPrazoVendaTemp.First ;
      while not SQLParcelasPrazoVendaTemp.EOF do
      begin
        if Copy(SQLParcelasPrazoVendaTempTipoPadrao.Value,1,3) = 'CHQ' then
        begin
          DM.TblCheques.Append ;
          DM.TblChequesDtDep.Value := SQLParcelasPrazoVendaTempDATAVENCTO.Value ;
          DM.TblChequesValor.Value := SQLParcelasPrazoVendaTempVALORVENCTO.Value ;
          DM.TblCheques.Post ;
        end ;

        SQLParcelasPrazoVendaTemp.Next ;
      end ;
      SQLParcelasPrazoVendaTemp.First ;
      SQLParcelasPrazoVendaTemp.EnableControls ;
      //VERIFICAR SEM TEM DE INFORMAR DADOS DO CHEQUE
      DM.TblCheques.First ;
      if not DM.TblCheques.EOF then
      begin
        IncrementaNroCheque := true ;
        ClienteVenda := SQLTemplateCLIEA13ID.AsString;
        Application.CreateForm(TFormTelaDadosCheque, FormTelaDadosCheque);
        FormTelaDadosCheque.ShowModal ;
        IncrementaNroCheque := false ;
      end ;
    end ;
end ;
procedure TFormCadastroNotaFiscal.SQLTemplateNOFIN2VLRNOTAChange(
  Sender: TField);
begin
  inherited;
//  if (not DM.InserindoItemNV) and (not DM.ImportandoPedidoVenda) and (not GerandoNota) then
//    begin
//      if (SQLTemplate.State in [DSEdit]) and (SQLTemplate.FieldByName('PLRCICOD').AsVariant <> Null) then
//        begin
//          if Pergunta('SIM','O Valor da nota foi modificado. Deseja recalcular o financeiro?') then
//            RecalcularFinanceiro.Click;
//        end;
//    end;
end;

procedure TFormCadastroNotaFiscal.SQLContasReceberPostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
var
ID : String;
begin
  inherited;
  Case DataSet.State Of
    DsInsert: begin
                DataSet.FieldByName('CTRCICOD').AsInteger:=DataSet.FieldByName('CTRCICOD').AsInteger + 1;
                ID := Format('%.3d',[EmpresaCorrente])+Format('%.3d',[TerminalCorrente])+Format('%.6d',[DataSet.FieldByName('CTRCICOD').asInteger]);
                DataSet.FieldByName('CTRCA13ID').asString:=ID+DM.DigitVerifEAN(ID);
              end;

  end;
  Action := DaRetry;

end;

procedure TFormCadastroNotaFiscal.ComboHistoricoPadraoExit(Sender: TObject);
begin
  inherited;
  if ComboHistoricoPadrao.Value <> '' then
    begin
      try
        MemoHistorico.Lines.Clear;
        MemoHistorico.Lines.Add(ComboHistoricoPadrao.DisplayValue);
        MemoHistorico.SelectAll;
        MemoHistorico.SelStart := Length(MemoHistorico.Text);
      except
      end;  
    end;
end;

procedure TFormCadastroNotaFiscal.ComboHistoricoPadraoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_ESCAPE then
    MemoHistorico.Lines.Clear;

  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value    <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
       (sender  as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

procedure TFormCadastroNotaFiscal.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if TObject((Sender as TForm).ActiveControl).ClassType <> TMemo then
    if key = char(13) then
      inherited;
end;

procedure TFormCadastroNotaFiscal.ComboVendedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_F2) and (BtnVendedor.Enabled) then
    BtnVendedor.Click;

  if Key = VK_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value    <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
       (sender  as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

procedure TFormCadastroNotaFiscal.BtnAvalistaClick(Sender: TObject);
begin
  inherited;
  FieldLookUp   := SQLTemplate.FindField('AVALA13ID');
  FieldOrigem   := 'AVALA13ID';
  DataSetLookup := SQLAvalista;
  CriaFormulario(TFormCadastroAvalista,'FormCadastroAvalista',False,True,True,' NF NRO.: ' + DBEdit3.Text);
end;

procedure TFormCadastroNotaFiscal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if DataSetLookup <> nil then
    DataSetLookup := Nil;

  Action := CaFree;
end;

procedure TFormCadastroNotaFiscal.ImprimirNotaNovo1Click(Sender: TObject);
begin
  inherited;
  SQLCount.Close;
  SQLCount.SQL.Text := 'select CFIMIID from CONFIGIMPRESSAOPAPEL where CFIPCPADRAO = "S"';
  SQLCount.Open;

  if SQLCount.RecordCount > 1 then
     begin
       Informa('Há mais de uma configuração de Impressão de Nota Fiscal como padrão.' + Char(#13) +
               'Verifique as Configurações e tente novamente. Só pode haver uma configuração como Padrão.');
       Abort;
     end;

  if SQLCount.IsEmpty then
     begin
       Informa('Não foi encontrada nenhuma configuração de Impressão de Nota Fiscal como padrão.' + Char(#13) +
               'Verifique as Configurações e tente novamente.');
       Abort;
     end;

  Config := SQLCount.FieldByName('CFIMIID').AsString;

  ImprimirNotaFiscalPersonalizada;
end;

procedure TFormCadastroNotaFiscal.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  Button4.Click;
  SQLTemplate.Edit;
  PlanoAnterior:='';
  SQLTemplatePLRCICODChange(SQLTemplatePLRCICOD);
  PlanoAnterior:='';
end;

procedure TFormCadastroNotaFiscal.ComboMotoristaExit(Sender: TObject);
begin
  inherited;
  if ComboMotorista.KeyValue <> null then
    SQLTemplateNOFIA8PLACAVEIC.AsString := SQLVeiculoVEICA7PLACA.AsString;
end;

procedure TFormCadastroNotaFiscal.ComboObsNotaExit(Sender: TObject);
begin
  inherited;
  if ComboObsNota.DisplayValue <> '' then
  begin
    if SQLObsNota.Locate('NOFIA50DESC',ComboObsNota.DisplayValue,[]) then
    SQLTemplateNOFIA255OBS.Value:= SQLTemplateNOFIA255OBS.value + SQLObsNotaOBSNA255DESC.value;
  end;
end;

procedure TFormCadastroNotaFiscal.DBMemo2Exit(Sender: TObject);
begin
  inherited;
  if DSTemplate.State = dsinsert then
    begin
      SQLTemplate.Post;
      Button5.Click;
    end;
end;

procedure TFormCadastroNotaFiscal.BTNLocalizarClick(Sender: TObject);
var
Clausula : String;
CampoOrdem : TField;
begin
  inherited;
  Clausula := '';
  if ComboCliente.Value <> '' then
    Clausula := 'CLIEA13ID = "' + ComboCliente.Value + '" ';
  if ComboConsultaFornec.Value <> '' then
    begin
      if ComboCliente.Value <> '' then
        Clausula := Clausula +' or FORNICOD = ' + ComboConsultaFornec.keyValue
      else
         Clausula := 'FORNICOD = ' + ComboConsultaFornec.keyValue;
    end;

  if ComboSerieNF.Value <> '' then
    if Clausula = '' then
       Clausula := ' SERIA5COD = "' + ComboSerieNF.Value + '"'
    else
       Clausula := Clausula +' and SERIA5COD = "' + ComboSerieNF.Value + '"';
  if EditNroNFInicial.Text <> '' then
    if Clausula = '' then
       Clausula := ' NOFIINUMERO >= ' + EditNroNFInicial.Text
    else
       Clausula := Clausula +' and NOFIINUMERO >= ' + EditNroNFInicial.Text;
  if EditNroNFInicial.Text <> '' then
    if Clausula = '' then
       Clausula := ' NOFIINUMERO <= ' + EditNroNFFinal.Text
    else
       Clausula := Clausula +' and NOFIINUMERO <= ' + EditNroNFFinal.Text;

  EditProcura.Text := '';
  EditEntre.Text   := '';
  EditE.Text       := '';
  CampoOrdem := SQLTemplate.FindField(DM.LocateByDisplayLabel(SQLTemplate,ComboOrder.Text));
  if Clausula <> '' then
    begin
      SQLTemplate.Close;
      if Pos('ORDER BY',TRxQuery(SQLTemplate).SQL.Text) <> 0 Then
        begin
          TRxQuery(SQLTemplate).SQL.Text := Trim(Copy(TRxQuery(SQLTemplate).SQL.Text,1,Pos('ORDER BY',TRxQuery(SQLTemplate).SQL.Text)-1));
        end;
      SQLTemplate.MacroByName('MFiltro').AsString := Clausula;
      SQLTemplate.SQL.Add(' ORDER BY ' + CampoOrdem.FieldName);
      SQLTemplate.Open;
    end
  else
    Informa('Pesquisa incompleta, verifique!');
end;

procedure TFormCadastroNotaFiscal.BTNRecalcularFinanceiroClick(
  Sender: TObject);
Var
  Entrada, Desconto, Valor: Double;
  DiminuiAcresc, ValorJuro, Acrescimo, EntradaCalc, TaxaCred: Double;
  Erro      : Boolean;
  ValorBase : Double;
  I         : Integer;
begin
  inherited;

  PermiteExcluirSemPerguntar := True;

  if ComboNumerarioVista.Value = '' then
    begin
      ShowMessage('Nenhum numerário a vista foi escolhido! Verifique!');
      Abort;
    end;

  if ComboNumerarioPrazo.Value = '' then
    begin
      ShowMessage('Nenhum numerário a prazo foi escolhido! Verifique!');
      Abort;
    end;

  if (ComboPlanoRecto.Value <> '') and (SQLTemplateNOFIN2VLRNOTA.AsFloat > 0) and (SQLTemplateNOFICSTATUS.Value = 'A') and (SQLTemplate.State in dsEditModes) Then
    Begin
      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('delete from PARCELASPRAZOVENDATEMP') ;
      DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
      DM.SQLTemplate.ExecSQL ;

      SQLParcelasPrazoVendaTemp.Close ;   
      SQLParcelasPrazoVendaTemp.SQL.Clear ;
      SQLParcelasPrazoVendaTemp.SQL.Add('select * from PARCELASPRAZOVENDATEMP') ;
      SQLParcelasPrazoVendaTemp.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
      SQLParcelasPrazoVendaTemp.SQL.Add('order by NROPARCELA') ;
      SQLParcelasPrazoVendaTemp.Open ;

      SQLPlano.Close;
      SQLPlano.ParamByName('PLRCICOD').AsInteger := ComboPlanoRecto.KeyValue;
      SQLPlano.Open;
      SQLPlano.First;
      if not SQLPlano.Eof then
        Begin
          SQLPlanoParcela.Close;
          SQLPlanoParcela.ParamByName('PLRCICOD').AsInteger := ComboPlanoRecto.KeyValue;
          SQLPlanoParcela.Open;
          SQLPlanoParcela.First;
          ValorJuro := SQLPlanoPLRCN2TXJURO.AsFloat;
          CriaParcelas(SQLParcelasPrazoVendaTemp,
                       SQLPlano,
                       SQLPlanoParcela,
                       Entrada, Desconto, SQLTemplate.FindField('NOFIN2VLRNOTA').asFloat, ComboPlanoRecto.KeyValue, SQLTemplate.FindField('NOFIDEMIS').asDateTime,
                       ComboNumerarioVista.Value, ComboNumerarioPrazo.Value,
                       ComboNumerarioVista.Value, ComboNumerarioPrazo.Value, SQLTemplate.FindField('NOFIA13ID').asString,
                       DiminuiAcresc, ValorJuro,Acrescimo, EntradaCalc,TaxaCred);
          SQLPlanoParcela.Close;
        End;
      SQLPlano.Close;
    End;

  // Lancar Contas a Receber
  if (ComboPlanoRecto.Value <> '') and (SQLTemplateNOFIN2VLRNOTA.AsFloat > 0) and (SQLTemplateNOFICSTATUS.Value = 'A') and (SQLTemplate.State in dsEditModes) Then
    begin
      SQLContasReceber.Close;
      SQLContasReceber.ParamByName('NOFIA13ID').AsString := SQLTemplateNOFIA13ID.AsString;
      SQLContasReceber.Open;
      SQLContasReceber.First;
      While Not SQLContasReceber.Eof Do
        SQLContasReceber.Delete;

      SQLContasReceber.Close;
      SQLContasReceber.ParamByName('NOFIA13ID').AsString := SQLTemplateNOFIA13ID.AsString;
      SQLContasReceber.Open;

      if not SQLParcelasPrazoVendaTemp.Active then SQLParcelasPrazoVendaTemp.Open;
      SQLParcelasPrazoVendaTemp.First;
      While Not SQLParcelasPrazoVendaTemp.Eof Do
        Begin
          SQLContasReceber.Append;
          SQLContasReceberCTRCCSTATUS.Value      := 'A';
          SQLContasReceberNOFIA13ID.AsString     := SQLTemplate.FindField('NOFIA13ID').AsString;
          SQLContasReceberCTRCINROPARC.Value     := SQLParcelasPrazoVendaTempNROPARCELA.Value;
          SQLContasReceberCTRCDEMIS.Value        := SQLTemplate.FindField('NOFIDEMIS').Value;
          SQLContasReceberCLIEA13ID.AsString     := SQLTemplate.FindField('CLIEA13ID').AsString;
          SQLContasReceberCTRCDVENC.Value        := SQLParcelasPrazoVendaTempDATAVENCTO.Value;
          SQLContasReceberCTRCN2VLR.Value        := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
          SQLContasReceberCTRCA5TIPOPADRAO.Value := SQLParcelasPrazoVendaTempTipoPadrao.Value;
          if SQLContasReceberCTRCA5TIPOPADRAO.Value = '' then
            SQLContasReceberCTRCA5TIPOPADRAO.Value := 'CRD';
          SQLContasReceberTPDCICOD.AsVariant     := ComboTipoDoc.KeyValue;
          SQLContasReceberPORTICOD.asVariant     := ComboPortador.KeyValue;
          SQLContasReceberCTRCA30NRODUPLICBANCO.AsString := FormatFloat('######000000',SQLTemplateNOFIINUMERO.Value)+'-'+SQLParcelasPrazoVendaTempNROPARCELA.AsString;
          SQLContasReceberCTRCCEMITIDOBOLETO.Value := 'N';
          SQLContasReceberNUMEICOD.Value         := SQLParcelasPrazoVendaTempNUMEICOD.Value;

          // PLANO DE CONTAS Busca do Numerario
          if SQLParcelasPrazoVendaTempNUMEICOD.AsVariant <> Null then
            begin
              SQLContasReceberPLCTA15COD.AsString       := SQLLocate('NUMERARIO','NUMEICOD','PLCTA15CODCRED',SQLParcelasPrazoVendaTempNUMEICOD.AsString);
              SQLContasReceberPLCTA15CODDEBITO.AsString := SQLLocate('NUMERARIO','NUMEICOD','PLCTA15CODDEB',SQLParcelasPrazoVendaTempNUMEICOD.AsString);
            end;

          if (SQLContasReceberPLCTA15COD.AsString = '') and (ComboPlanoContas.Value <> '') then
            SQLContasReceberPLCTA15COD.AsVariant := ComboPlanoContas.KeyValue;

          if ComboHistoricoPadrao.Value <> '' then
            SQLContasReceberHTPDICOD.AsString := ComboHistoricoPadrao.Value;

          if MemoHistorico.Lines.Count > 0 then
            SQLContasReceberCTRCA254HIST.AsString := UpperCase(MemoHistorico.Lines.Text);

          SQLContasReceberTERMICOD.AsInteger      := TerminalCorrente;
          SQLContasReceberPENDENTE.Value          := 'S' ;
          SQLContasReceberREGISTRO.Value          := Now ;

          SQLContasReceber.Post;
          SQLParcelasPrazoVendaTemp.Next;
        end;
      SQLParcelasPrazoVendaTemp.Close;
    End;
    PermiteExcluirSemPerguntar := False;

    SQLContasReceber.Close;
    SQLContasReceber.ParamByName('NOFIA13ID').AsString := SQLTemplateNOFIA13ID.AsString;
    SQLContasReceber.Open;

    if (SQLTemplate.State in dsEditModes) then
      begin
        SQLTemplatePLRCICOD.Value := SQLPlanoRecebimentoPLRCICOD.Value;
        SQLTemplate.Post;
      end;


    ComboPlanoRecto.Value := '';
end;

procedure TFormCadastroNotaFiscal.BtnExcluirParcAtuaisClick(
  Sender: TObject);
begin
  inherited;
  if not PermiteExcluirSemPerguntar then
    if Pergunta('Não', 'Tem certeza que deseja excluir estas parcelas?') then
      begin
        SQLContasReceber.first;
        While not SQLContasReceber.eof do                        
            SQLContasReceber.Delete;

        SQLTemplate.Edit;
        SQLTemplatePLRCICOD.AsString := '';
        SQLTemplate.Post;

        SQLContasReceber.Close;
        SQLContasReceber.ParamByName('NOFIA13ID').AsString := SQLTemplateNOFIA13ID.AsString;
        SQLContasReceber.Open;
      end;

  ComboPlanoRecto.Value := '';
end;


   {  EVENTO AFTERPOST - REMOVIDO POR ADILSON QUANDO ARRUMEI A TELA DE PLANO VARIAVEL EM CASCA
            If (SQLTemplatePLRCICOD.AsString <> '') and (StatusNovo <> 'C') and (not SQLContasReceber.IsEmpty) and (SQLTemplateNOFIN2VLRPRODUTO.Value > 0) Then
    Begin
      SQLContasReceber.First;
      SQLRecebimento.Close;
      SQLRecebimento.Open;
      SQLRecebimento.First;
      while not SQLRecebimento.Eof do
        begin
          SQLRecebimento.Delete;
        end;
      While Not SQLContasReceber.Eof Do
        Begin
          SQLContasReceber.Delete;
        End;

      // Dados do Cheque
      InformarDadosCheque;

            //DADOS CHEQUE
            SQLContasReceberBANCA5CODCHQ.Value      := DM.TblChequesBANCA5COD.AsString ;
            SQLContasReceberCTRCA10AGENCIACHQ.Value := DM.TblChequesAGENCIA.AsString ;
            SQLContasReceberCTRCA15CONTACHQ.Value   := DM.TblChequesCONTA.AsString ;
            SQLContasReceberCTRCA15NROCHQ.Value     := DM.TblChequesNroCheque.AsString ;
            SQLContasReceberCTRCA60TITULARCHQ.Value := DM.TblChequesTITULAR.AsString ;
            SQLContasReceberCTRCA20CGCCPFCHQ.Value  := DM.TblChequesCGCCPF.AsString ;
            SQLContasReceberALINICOD.Value          := DM.TblChequesALINICOD.Value ;
            SQLContasReceberPORTICOD.Value          := DM.TblChequesPORTICOD.Value ;

          End;
      SQLParcelasPrazoVendaTemp.First;
      if SQLParcelasPrazoVendaTempNROPARCELA.AsInteger = 0 then
        SQLParcelasPrazoVendaTemp.Next;
      While Not SQLParcelasPrazoVendaTemp.Eof Do
        Begin
          SQLContasReceber.Append;
          SQLContasReceberCTRCCSTATUS.Value      := 'A';
          SQLContasReceberCTRCDEMIS.Value        := SQLTemplate.FindField('NOFIDEMIS').Value;
          SQLContasReceberCTRCDVENC.Value        := SQLParcelasPrazoVendaTempDATAVENCTO.Value;
          SQLContasReceberCTRCINROPARC.Value     := SQLParcelasPrazoVendaTempNROPARCELA.Value;
          SQLContasReceberCTRCN2VLR.Value        := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
          SQLContasReceberCTRCA5TIPOPADRAO.Value := SQLParcelasPrazoVendaTempTipoPadrao.Value;
          SQLContasReceberCLIEA13ID.AsString     := SQLTemplate.FindField('CLIEA13ID').AsString;
          SQLContasReceberNOFIA13ID.AsString     := SQLTemplate.FindField('NOFIA13ID').AsString;
          SQLContasReceberCTRCA30NRODUPLICBANCO.AsString := SQLTemplate.FindField('NOFIINUMERO').AsString;
          // PLANO DE CONTAS
          if SQLParcelasPrazoVendaTempNUMEICOD.AsVariant <> Null then
            if DM.ProcuraRegistro('NUMERARIO',['NUMEICOD'],[SQLParcelasPrazoVendaTempNUMEICOD.AsString],1) then
              begin
                if DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString <> '' then
                  SQLContasReceberPLCTA15COD.AsString  := DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString;
                if DM.SQLTemplate.FieldByName('PLCTA15CODDEB').AsString <> '' then
                  SQLContasReceberPLCTA15CODDEBITO.AsString  := DM.SQLTemplate.FieldByName('PLCTA15CODDEB').AsString;
              end;
          SQLContasReceberNUMEICOD.Value         := SQLParcelasPrazoVendaTempNUMEICOD.Value;

          // Histórico
          if CheckHistorico.Checked then
            begin
              if ComboHistoricoPadrao.Value <> '' then
                SQLContasReceberHTPDICOD.AsString := ComboHistoricoPadrao.Value;

              if MemoHistorico.Lines.Count > 0 then
                SQLContasReceberCTRCA254HIST.AsString := UpperCase(MemoHistorico.Lines.Text);
            end;
          SQLContasReceberTERMICOD.Value         := TerminalCorrente;
          SQLContasReceberTPDCICOD.asVariant     := DM.SQLConfigVendaTPDCICOD.asVariant;
          SQLContasReceberPORTICOD.asVariant     := DM.SQLConfigVendaPORTICOD.asVariant;

          // Avalista
          if SQLTemplateAVALA13ID.AsString <> '' then
            SQLContasReceberAVALA13ID.AsString   := SQLTemplateAVALA13ID.AsString;

          SQLContasReceber.Post;
          if (Copy(SQLParcelasPrazoVendaTempTipoPadrao.AsString,1,3) = 'CHQ') and
             (DM.SQLConfigVendaCFVECDADOSCHQPDV.Value = 'S') then
            begin
              if not DM.TblCheques.Active then
                DM.TblCheques.Open ;

              if DM.TblCheques.RecordCount > 0 then
                begin
                  DM.TblCheques.First ;
                  //ESTE FOR SERVE PARA POSICIONAR A TABLE TEMP NA MESMA PARCELA QUE ESTÁ
                  //SENDO GRAVADA NO CONTAS A RECEBER
                  if SQLParcelasPrazoVendaTempNROPARCELA.Value > 1 then
                    for i := 1 to SQLParcelasPrazoVendaTempNROPARCELA.Value do
                      DM.TblCheques.Next ;

                  //QUITAR CHEQUE AUTOMATICAMENTE
                  if (Copy(SQLParcelasPrazoVendaTempTipoPadrao.AsString,1,3) = 'CHQ') and
                     (DM.SQLConfigVendaCFVECQUITARPARCHQ.Value = 'S') then
                        begin
                          SQLContasReceberCTRCN2TOTREC.Value      := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
                          SQLContasReceberCTRCDULTREC.AsString    := FormatDateTime('dd/mm/yyyy',Now);
                          if not SQLRecebimento.Active then SQLRecebimento.Open;
                          SQLRecebimento.Append;
                          SQLRecebimento.FieldByName('CTRCA13ID').AsString     := SQLContasReceberCTRCA13ID.AsString;
                          SQLRecebimento.FieldByName('CLIEA13ID').AsString     := ClienteVenda;
                          SQLRecebimento.FieldByName('RECEDRECTO').AsString    := FormatDateTime('dd/mm/yyyy',Now);
                          SQLRecebimento.FieldByName('RECEN2VLRRECTO').AsFloat := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
                          SQLRecebimento.FieldByName('RECEN2VLRJURO').AsFloat  := 0;
                          SQLRecebimento.FieldByName('RECEN2VLRMULTA').AsFloat := 0;
                          SQLRecebimento.FieldByName('RECEN2DESC').AsFloat     := 0;
                          SQLRecebimento.FieldByName('EMPRICODREC').asInteger  := EmpresaCorrente ;
                          SQLRecebimento.FieldByName('RECEICOD').asInteger     := DM.ProximoCodigoUnico('RECEBIMENTO',SQLRecebimento,Nil,1);
                          SQLRecebimento.Post ;
                        end;
                  SQLContasReceber.Edit;
                  //DADOS CHEQUE
                  SQLContasReceberBANCA5CODCHQ.Value      := DM.TblChequesBANCA5COD.AsString;
                  SQLContasReceberCTRCA10AGENCIACHQ.Value := DM.TblChequesAGENCIA.AsString;
                  SQLContasReceberCTRCA15CONTACHQ.Value   := DM.TblChequesCONTA.AsString;
                  SQLContasReceberCTRCA15NROCHQ.Value     := DM.TblChequesNroCheque.AsString;
                  SQLContasReceberCTRCA60TITULARCHQ.Value := DM.TblChequesTITULAR.AsString;
                  SQLContasReceberCTRCA20CGCCPFCHQ.Value  := '';
                  SQLContasReceberALINICOD.Value          := DM.TblChequesALINICOD.Value;
                  SQLContasReceberPORTICOD.Value          := DM.TblChequesPORTICOD.Value;
                  SQLContasReceber.Post;
                end;
            end;
          SQLParcelasPrazoVendaTemp.Next;
        end;
      ComboNumerarioPrazo.Value := '';
      SQLContasReceber.Close;
    end;
  SQLParcelasPrazoVendaTemp.Close;
  Dm.TblCheques.Close;}

procedure TFormCadastroNotaFiscal.ComboPlanoRectoExit(Sender: TObject);
var
 I, ContadorDocumento : Integer;
 DocumentoSTR : String;
begin
  inherited;
{  if ComboNumerarioVista.Value = '' then
    begin
      ShowMessage('Nenhum numerário a vista foi escolhido! Verifique!');
      Abort;
    end;
  if ComboNumerarioPrazo.Value = '' then
    begin
      ShowMessage('Nenhum numerário a prazo foi escolhido! Verifique!');
      Abort;
    end;}
  if (SQLPlanoRecebimentoPLRCCDFIX.Value = 'V') and (SQLTemplateNOFIN2VLRNOTA.Value > 0) and (SQLTemplate.State in dsEditModes) then
    begin
      Application.CreateForm(TFormTelaAssistenteLancamentoContasReceber,FormTelaAssistenteLancamentoContasReceber);
      FormTelaAssistenteLancamentoContasReceber.edtEmissao.Date          := SQLTemplateNOFIDEMIS.Value;
      FormTelaAssistenteLancamentoContasReceber.edtTotal.Value           := SQLTemplateNOFIN2VLRNOTA.Value;
      FormTelaAssistenteLancamentoContasReceber.edtEmissao.ReadOnly      := True;
      FormTelaAssistenteLancamentoContasReceber.edtEmissao.TabStop       := False;
      FormTelaAssistenteLancamentoContasReceber.edtTotal.ReadOnly        := True;
      FormTelaAssistenteLancamentoContasReceber.edtTotal.TabStop         := False;
      FormTelaAssistenteLancamentoContasReceber.ComboEmpresa.KeyValue    := SQLTemplateEMPRICOD.Value;
      FormTelaAssistenteLancamentoContasReceber.ComboEmpresa.ReadOnly    := True;
      FormTelaAssistenteLancamentoContasReceber.ComboEmpresa.TabStop     := False;
      FormTelaAssistenteLancamentoContasReceber.ComboCliente.Value       := SQLTemplateCLIEA13ID.Value;
      FormTelaAssistenteLancamentoContasReceber.ComboCliente.ReadOnly    := True;
      FormTelaAssistenteLancamentoContasReceber.ComboCliente.TabStop     := False;
      FormTelaAssistenteLancamentoContasReceber.ComboTipoDoc.Value       := ComboTipoDoc.Value;
      FormTelaAssistenteLancamentoContasReceber.ComboPortador.Value      := ComboPortador.Value;
      FormTelaAssistenteLancamentoContasReceber.ComboHistorico.Value     := ComboHistoricoPadrao.Value;
      FormTelaAssistenteLancamentoContasReceber.edtDescricao.Text        := MemoHistorico.Lines.Text;
      FormTelaAssistenteLancamentoContasReceber.edtDocum.Text            := SQLTemplateNOFIINUMERO.AsString;
      FormTelaAssistenteLancamentoContasReceber.ShowModal;
      if FormTelaAssistenteLancamentoContasReceber.ModalResult = MrOk then
        begin
          if not FormTelaAssistenteLancamentoContasReceber.RxTable.IsEmpty then
            begin
              SQLContasReceber.first;
              While not SQLContasReceber.eof do
                SQLContasReceber.Delete;
              SQLTemplate.DisableControls;
              SQLContasReceber.DisableControls;
              FormTelaAssistenteLancamentoContasReceber.RxTable.First;
              try
                ContadorDocumento := StrToInt(FormTelaAssistenteLancamentoContasReceber.edtDocum.text);
              except
                Application.ProcessMessages;
                ContadorDocumento := 0;
              end;
              if ContadorDocumento > 0 then
                DocumentoSTR   := IntToStr(ContadorDocumento);

              I := 0;
              while not FormTelaAssistenteLancamentoContasReceber.RxTable.Eof do
                begin
                  SQLContasReceber.Close;
                  SQLContasReceber.ParamByName('NOFIA13ID').AsString := SQLTemplateNOFIA13ID.AsString;
                  SQLContasReceber.Open;
                  SQLContasReceber.Append;
                  if ContadorDocumento > 0 then
                    SQLContasReceberCTRCA30NRODUPLICBANCO.AsString  := DocumentoSTR;
                  SQLContasReceberCTRCA254HIST.AsString             := FormTelaAssistenteLancamentoContasReceber.RxTableDESCR.AsString;
                  SQLContasReceberNOFIA13ID.Value                   := SQLTemplateNOFIA13ID.Value;
                  SQLContasReceberCTRCDEMIS.AsString                := FormatDateTime('dd/mm/yyyy',FormTelaAssistenteLancamentoContasReceber.RxTableEMI.AsDateTime);
                  SQLContasReceberCTRCDVENC.AsString                := FormatDateTime('dd/mm/yyyy',FormTelaAssistenteLancamentoContasReceber.RxTableVENCI.AsDateTime);
                  SQLContasReceberCTRCN2VLR.AsFloat                 := FormTelaAssistenteLancamentoContasReceber.RxTableVALOR.AsFloat;
                  SQLContasReceberEMPRICOD.AsVariant                := FormTelaAssistenteLancamentoContasReceber.ComboEmpresa.KeyValue;
                  SQLContasReceberCLIEA13ID.AsVariant               := FormTelaAssistenteLancamentoContasReceber.ComboCliente.Value;
                  SQLContasReceberPLCTA15COD.AsString               := FormTelaAssistenteLancamentoContasReceber.ComboContaCredito.Value;
                  SQLContasReceberPLCTA15CODDEBITO.AsString         := FormTelaAssistenteLancamentoContasReceber.ComboContaDebito.Value;
                  SQLContasReceberPORTICOD.AsVariant                := FormTelaAssistenteLancamentoContasReceber.ComboPortador.KeyValue;
                  SQLContasReceberTPDCICOD.AsVariant                := FormTelaAssistenteLancamentoContasReceber.ComboTipoDoc.KeyValue;
                  SQLContasReceberHTPDICOD.AsVariant                := FormTelaAssistenteLancamentoContasReceber.ComboHistorico.KeyValue;
                  SQLContasReceberCTRCCSTATUS.AsString              := 'A';
                  SQLContasReceberCTRCA5TIPOPADRAO.AsString         := 'CRD';
                  if SQLContasReceberCTRCDEMIS.AsDateTime = SQLContasReceberCTRCDVENC.AsDateTime then
                    begin
                      try
                        SQLContasReceberNUMEICOD.AsVariant              := ComboNumerarioVista.KeyValue;
                      except application.ProcessMessages end;
                      SQLContasReceberCTRCINROPARC.AsInteger          := I;
                      i := i-1;
                    end
                  else
                    begin
                      try
                        SQLContasReceberNUMEICOD.AsVariant              := ComboNumerarioPrazo.KeyValue;
                      except application.ProcessMessages end;
                      SQLContasReceberCTRCINROPARC.AsInteger          := I+1;
                    end;
                  SQLContasReceber.Post;
                  FormTelaAssistenteLancamentoContasReceber.RxTable.Next;
                  if ContadorDocumento > 0 then
                    begin
                      inc(ContadorDocumento);
                      DocumentoSTR := IntToStr(ContadorDocumento);
                    end;
                  inc(I);
                end;
              SQLContasReceber.Close;
              SQLContasReceber.ParamByName('NOFIA13ID').AsString := SQLTemplateNOFIA13ID.AsString;
              SQLContasReceber.Open;
              SQLTemplate.EnableControls;
              SQLContasReceber.EnableControls;
              SQLTemplatePLRCICOD.Value := SQLPlanoRecebimentoPLRCICOD.Value;
              SQLTemplate.Post;
              FormTelaAssistenteLancamentoContasReceber.RxTable.Close;
              FormTelaAssistenteLancamentoContasReceber.RxTable.Free;
              FormTelaAssistenteLancamentoContasReceber.Close;
              FormTelaAssistenteLancamentoContasReceber.Free;
              ComboPlanoRecto.Value := '';
            end;
        end;
    end;
end;

procedure TFormCadastroNotaFiscal.Button4Click(Sender: TObject);
begin
  inherited;
  SQLconta.Close;
  SQLconta.Open;
  SQLContasReceber.Close;
  SQLContasReceber.ParamByName('NOFIA13ID').AsString := SQLTemplateNOFIA13ID.AsString;
  SQLContasReceber.Open;

  PagePrincipal.ActivePage := PaginaFinanceiro;

  ComboTipoDoc.KeyValue  := dm.SQLConfigVendaTPDCICOD.Value;
  ComboPortador.KeyValue := dm.SQLConfigVendaPORTICOD.Value;
  ComboNumerarioVista.KeyValue := dm.SQLConfigVendaNUMEVISTA.Value;
  ComboNumerarioPrazo.KeyValue := dm.SQLConfigVendaNUMEPRAZO.Value;
  ComboPlanoRecto.Value := '' ;
  ComboPlanoRecto.SetFocus;

end;

procedure TFormCadastroNotaFiscal.MnRecalcularImpostosClick(
  Sender: TObject);
var UFDest : String;
var AliquotaUF, VlrBaseCalculoTotal, VlrIcmsTotal : Double;
begin
  inherited;
  CancelandoNota := True;
  Dm.ImportandoPedidoVenda := True;
  VlrBaseCalculoTotal := 0;
  VlrIcmsTotal        := 0;
  UFDest     := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA2UFRES','"'+SQLTemplate.FieldbyName('CLIEA13ID').AsString+'"');
  AliquotaUF := StrToFloat(dm.SQLLocate('ICMSUF','ICMUA2UF','ICMUN2ALIQUOTA','"'+UFDest+'"'));
  SQLNotaFiscalItem.Close;
  SQLNotaFiscalItem.SQL.Clear;
  SQLNotaFiscalItem.SQL.Add('Select * From NotaFiscalItem Where NOFIA13ID =:NOFIA13ID');
  SQLNotaFiscalItem.Open;
  SQLNotaFiscalItem.First;
  while not SQLNotaFiscalItem.Eof do
    begin
      If (SQLTemplate.FindField('CalcICMSLookUp').asString = 'S') and (SQLNotaFiscalItemNFITN2PERCICMS.AsFloat > 0) Then
        Begin
          SQLNotaFiscalItem.Edit;
          SQLNotaFiscalItemNFITN2PERCICMS.asFloat   := AliquotaUF;
          SQLNotaFiscalItemNFITN2BASEICMS.asFloat   := (SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat * SQLNotaFiscalItemNFITN3QUANT.asFloat) - SQLNotaFiscalItemNFITN2VLRDESC.AsFloat;
          SQLNotaFiscalItemNFITN2VLRICMS.asFloat    := SQLNotaFiscalItemNFITN2BASEICMS.asFloat * (SQLNotaFiscalItemNFITN2PERCICMS.asFloat / 100);
          SQLNotaFiscalItem.Post;
          VlrBaseCalculoTotal := VlrBaseCalculoTotal + SQLNotaFiscalItemNFITN2BASEICMS.asFloat;
          VlrIcmsTotal        := VlrIcmsTotal + SQLNotaFiscalItemNFITN2VLRICMS.asFloat;
        End;
      SQLNotaFiscalItem.Next;
    end;
  try
    SQLTemplate.Edit;
    SQLTemplateNOFIN2BASCALCICMS.Value := VlrBaseCalculoTotal;
    SQLTemplateNOFIN2VLRICMS.Value     := VlrIcmsTotal;
    SQLTemplate.Post;
  except
    Application.ProcessMessages;
  end;
  SQLNotaFiscalItem.Close;
  Dm.ImportandoPedidoVenda := False;
  CancelandoNota := False;
end;

procedure TFormCadastroNotaFiscal.MnTrocarStatusEncerradaparaAberta1Click(
  Sender: TObject);
var Erro : Boolean;
begin
  inherited;
    If SQLTemplate.FindField('NOFIA15PROTOCOLO').asString <> '' Then
      Begin
        Informa('Não são permitidas Alterações em Notas Fiscais EFETIVADAS.');
        Abort;
      End;

  if (SQLTemplateNOFICSTATUS.Value = 'E') and (not SQLTemplate.IsEmpty) then
    begin
      try
        dm.SQLTemplate.Close;
        dm.SQLTemplate.sql.Clear;
        dm.SQLTemplate.SQL.Add('Update NotaFiscal set NOFICSTATUS = "A" where NOFIA13ID = "'+ SQLTemplateNOFIA13ID.Value+'"');
        dm.SQLTemplate.ExecSQL;
        Erro := False;
      except
        Erro := True;
        Application.ProcessMessages;
        ShowMessage('Não foi possível trocar o Status da Nota Atual, verifique!');
      end;
      if not Erro then
        begin
          SQLNotaFiscalItens.SQL.Text := 'Select * From NOTAFISCALITEM Where NOFIA13ID = "' + SQLTemplateNOFIA13ID.Value + '"' ;
          SQLNotaFiscalItens.Open;
          SQLNotaFiscalItens.First;
          MakeWindowMessage('Retornando Produtos ao Estoque...');
          while not SQLNotaFiscalItens.Eof do
            begin
              GravaMovimentoEstoque(DM.SQLProduto,
                                    DM.SQLProdutoFilho,
                                    DM.SQLProdutoSaldo,
                                    EmpresaCorrente,//Empresa
                                    SQLNotaFiscalItens.FindField('PRODICOD').asInteger,//Produto
                                    dm.SQLConfigVendaOPESICODCANCNF.Value,//Operacao
                                    SQLNotaFiscalItens.FindField('NFITN3QUANT').asFloat,//Quantidade
                                    'E',//ENTRADA/SAIDA
                                    FormatDateTime('mm/dd/yyyy', SQLTemplateNOFIDEMIS.Value),
                                    SQLNotaFiscalItens.FindField('NFITN2VLRUNIT').asString,
                                    'NOTAFISCAL',
                                    SQLTemplateNOFIA13ID.Value,
                                    SQLNotaFiscalItens.FindField('LOTEA30NRO').AsString);
              SQLNotaFiscalItens.Next;
            end;
          SQLNotaFiscalItens.Close;
          DestroyWindow;
          ShowMessage('Operação realizada com sucesso!');
        end;
      SQLTemplate.Close;
    end;
end;

procedure TFormCadastroNotaFiscal.ComboObsCorpoExit(Sender: TObject);
begin
  inherited;
  if ComboObsNota.DisplayValue <> '' then
  begin
    if SQLObsNota.Locate('NOFIA50DESC',ComboObsCorpo.DisplayValue,[]) then
    SQLTemplateNOFIAOBSCORPONF.Value := SQLTemplateNOFIAOBSCORPONF.Value + SQLObsNotaOBSNA255DESC.value;
  end;
end;

procedure TFormCadastroNotaFiscal.MnNFEGerarArquivoEnvioClick(
  Sender: TObject);
var i: integer;
  lStartUpInfo:TStartUpInfo;
  dir, direxec, ValCertificado :string;
  IniFile      : TiniFile;
  RetornoMontaXML: Boolean;
begin
  inherited;
  if not Pergunta('Nao','Confirma a geração do arquivo de Notas Fiscais Eletrônicas?') then
    Exit;
  if ComboPrint.Text = '' then
  begin
    ShowMessage('Selecione a Impressora para imprimir o DANF');
    Exit;
  end;

  // verifica data de validade do Certificado Eletronico
  IniFile := TIniFile.Create ('IBGestao.ini');
  ValCertificado := IniFile.ReadString('IB_Local','ValidadeCertificado','');
  if ValCertificado = '' then
  begin
    ValCertificado := InputBox('Certificado Digital','Validade do Certificado (dd/MM/aaaa:','');
    IniFile.WriteString('IB_Local','ValidadeCertificado',#39+ValCertificado+#39);
    Inifile.UpdateFile;
  end;
  IniFile.Free;

  Try
    if StrToDate(ValCertificado)-10 <= Date then
      ShowMessage('Atenção...'+#13+#10+''+#13+#10+'Seu Certificado Eletrônico Vence Dia '+ValCertificado);
  except on e:Exception do
  Begin
    Showmessage('Falha ao Identificar Vencimento do Certificado Eletronico: '+e.message);
    Showmessage('Geração de Notas Cancelada');
    Exit;
  end; End;


  i := 1;
  MakeWindow(sqltemplate.RecordCount,'Aguarde! Gerando arquivos (XML) de Notas Fiscais Eletronicas...');
  SQLTemplate.first;
  SQLTemplate.BeforeEdit := nil;
  SQLTemplate.BeforePost := nil;
  while not SQLTemplate.Eof do
    begin
      if SQLTemplateNOFICSTATUS.Value = 'C' then
        ShowMessage('Erro! Nota Fiscal Nro.'+SQLTemplateNOFIINUMERO.AsString+' CANCELADA, não pode ser Enviada!');

      IF ((not SQLTemplateNOFICSTNFE.IsNull) and (not (SQLTemplateNOFICSTNFE.asstring = '0')) and (not (SQLTemplateNOFICSTNFE.asstring = '6'))) or (SQLTemplateNOFICSTATUS.Value = 'C') then
        begin
          ShowMessage('Nota Eletronica NFe Nº '+SQLTemplateNOFIINUMERO.AsString +' já enviada.'+#13+#10+''+#13+#10+'Processamento ignorado.');
          SQLTemplate.Next;
        end
      else
        begin
          Try
            StrToInt(SQLTemplateSERIA5COD.AsString);
            if not MontaXML then
            Begin
              DestroyWindow;
              Showmessage('Processo de Geração de Notas Fiscais Cancelado.'+#13#10+'Corrija o erro e Reinicie o processo');
              SQLTemplate.BeforeEdit := SQLTemplateBeforeEdit;
              SQLTemplate.BeforePost := SQLTemplateBeforePost;
              Exit;
            end;
          except on e:exception do
          begin
            DestroyWindow;
            ShowMessage('Falha ao Gerar Nota Fiscal: '+e.message);
          end; end;
        end;
      sqltemplate.Next;
      SetProgress(i);
      inc(i);
    end;
  DestroyWindow;
  SQLTemplate.BeforeEdit := SQLTemplateBeforeEdit;
  SQLTemplate.BeforePost := SQLTemplateBeforePost;

  if Pergunta('SIM','Nota(s) Gerada(s) com Sucesso.'+#13+#10+'Envia-las agora ?') then
  begin
    if FileExists('C:\Migrate\GNFe\GNFeTarefas.exe') then
      begin
        FormProcessandoNFE:= TFormProcessandoNFE.Create(Self);
        With lStartUpInfo do
          begin
             cb:=2048;
             lpReserved:=NIL;
             lpDesktop:=NIL;
             lpTitle:=NIL;
             dwFlags:=STARTF_USESHOWWINDOW;
             wShowWindow:=SW_SHOWNORMAL;//SW_Hide; //para não aparecer na tela (background)!
             cbReserved2:=0;
             lpReserved2:=NIL;
          end;

          getDir(0,dir);  //armazena diretório atual
          ChDir('c:\Migrate\GNFe');  //altera diretório de execução
          getdir(0,DirExec);

          if not CreateProcess(NIL,PChar('GNFeTarefas.exe'), NIL, NIL, False, 0, NIL, nil , lStartUpInfo, lProcesso) then
            ShowMessage('Erro para executar CreateProcess abrindo o GNFeTarefas.exe.'+#13+#10+
            'Tente Utilizar o GNFeTarefas atraves do atalho existente em área de trabalho.')
          Else
            begin
              While 1=1 Do Begin
                  if GetExitCodeProcess(lProcesso.hProcess, lExitCode) then
                    if (lExitCode<>STILL_ACTIVE) then
                      Break
              end;
            End;
          ChDir(dir);  //retorna ao diretório do sistema
          FormProcessandoNFE.Free;

        //if WinExec(PChar('C:\Migrate\GNFe\GNFeTarefas.exe'),SW_SHOW) > 31 then
        //  ShowMessage('Processo Finalizado com Sucesso!');
      end;
    if Pergunta('Sim','Deseja verificar o retorno agora ?') then
      MnNFERetornoNotaEletronica.Click;
  end;

end;

Function TFormCadastroNotaFiscal.MontaXML:Boolean;
var CaminhoNomeArquivo, nEmail, nTipoProduto : String;
    Cpf_Dest, Cnpj_Dest, IE_Dest, CFOP, CdBarras, TipoFrete, Descr_Prod, Unidade, NCM, ForPag, eServico : String;
    Erro : boolean;
    Vlr_Tot_Bruto, ValordoPis : double;
begin
  CaminhoNomeArquivo := 'C:\Migrate\Entrada\NFE'+Preenche(SQLTemplateEMPRICOD.AsString,'0',3,0)+
                                                      Preenche(SQLTemplateNOFIINUMERO.AsString,'0',9,0)+
                                                      Preenche(COPY(SQLTemplateSERIA5COD.asstring,0,3),'0',3,0)+'.xml';

  if not VerificaDadosCliente then
  begin
    Result := False;
    Exit;
  end;

  if not VerificaDadosTransp then
  begin
    Result := False;
    Exit;
  end;

{  if Not VerificaDadosProduto then
  begin
    Result := False;
    Exit;
  end;
 }

  try
    AssignFile(Arquivo,CaminhoNomeArquivo);
    Rewrite(Arquivo);
    Reset(Arquivo);
    Erro := False;
  except
    Erro := True;
  end;

  // Zera os totalizadores
  vBC_Total  := 0; vICMS_Total := 0; vBCST_Total   := 0; vST_Total    := 0; vProd_Total := 0; vFrete_Total  := 0; vNF_Total    := 0;
  vSeg_Total := 0; vDesc_total := 0; vII_Total     := 0; vIPI_Total   := 0; vPIS_Total  := 0; vCOFINS_Total := 0; vOutro_Total := 0;


  // Criar linha contendo dados dos campos do A01 ao A10
  Linha :=   '<SDTNFE001 xmlns="NF-e">'                                            + CHR(13) +
 // Linha :=   '<SDTNFE001 xmlns="urn:migrategnfe-schema">'                                            + CHR(13) +
             '    <Acao>E</Acao>'                                                                    + CHR(13) + // E=Envio, C=Cancelamento
             '    <EmpCodigo>' + SQLTemplateEMPRICOD.AsString +'</EmpCodigo> '                       + CHR(13) + // Cd.Empresa
             '    <NtfNumero>' + SQLTemplateNOFIINUMERO.AsString +'</NtfNumero> '                    + CHR(13) + // Nro Nota Fiscal
             '    <NtfSerie>'  + Copy(Trim(SQLTemplateSERIA5COD.AsString),length(Trim(SQLTemplateSERIA5COD.AsString)),1) +'</NtfSerie> '             + CHR(13) + // Serie
             '    <UsuImpPadrao>'+ComboPrint.Text+'</UsuImpPadrao>'                + CHR(13) +
             '    <UsuImpCont></UsuImpCont>'                    + CHR(13) +
             '    <UsuModDANFE></UsuModDANFE>'                  + CHR(13) +
             '    <Justificativa></Justificativa>'              + CHR(13) +
             '    <EmailArquivos>5</EmailArquivos>';    // usar dos parametros gerais
  try
    Append(Arquivo);
    Writeln(Arquivo,Linha);
    Erro := False;
  except
    Erro := True;
  end;

  // Criar linha contendo dados dos campos do A13 ao A31
  if SQLTemplateNOFA1ENTRADASAIDA.AsString = 'E' Then
    EntradaSaida := '0'
  Else if SQLTemplateNOFA1ENTRADASAIDA.AsString = 'S' Then
    EntradaSaida := '1'
  Else
  Begin
    if SQLTemplateEntradaSaidaLookUp.AsString = 'E' then
      EntradaSaida := '0'
    else if SQLTemplateEntradaSaidaLookUp.AsString = 'S' Then
      EntradaSaida := '1'
    else begin
      If Pergunta('SIM','Informe...'+#13+#10+''+#13+#10+'Esta nota fiscal é de Entrada ?') then
        EntradaSaida := '0'
      else
        EntradaSaida := '1';
    end;
  End;

  CFOP := SQLTemplateCFOPA5COD.Value;

  while pos('-',CFOP) > 0 do
    delete(CFOP,pos('-',CFOP),1);
  while pos('.',CFOP) > 0 do
    delete(CFOP,pos('.',CFOP),1);

  // verifica a forma de pagamento
  SQLContasReceber.Open;
  SQLContasReceber.First;
  if SQLContasReceberCTRCDVENC.isnull then
    ForPag :='0'
  else begin
    if  (SQLContasReceberCTRCDVENC.AsString = SQLTemplateNOFIDEMIS.AsString) then
      ForPag := '0'
    else
      ForPag := '1';
    SQLContasReceber.Next;
    if SQLContasReceber.RecordCount > 1 then
      ForPag := '1';
  end;

  if (SQLOperacaEstoqueOPESA60DESDENTRO.asstring <> '') or (SQLOperacaEstoqueOPESA60DESFORA.asstring <> '')then
  begin
    if (Copy(CFOP,0,1) = '1') or (Copy(CFOP,0,1) = '5') then
      eServico := SQLOperacaEstoqueOPESA60DESDENTRO.asstring
    Else if (Copy(CFOP,0,1) = '2') or (Copy(CFOP,0,1) = '6') then
      eServico := SQLOperacaEstoqueOPESA60DESFORA.asstring
  end else
    eServico := SQLLocate('CFOP','CFOPA5COD','CFOPA60DESCR','"'+SQLTemplateCFOPA5COD.asstring+'"');

  Linha :=   '    <ide>'                                                                                        + CHR(13) +
             '        <cUF>'+ SQLLocate('EMPRESA','EMPRICOD','EMPRIUFCODFED',EmpresaPadrao) +'</cUF>'           + CHR(13) + // Uf Cod.Estado Gerador NF
             '        <cNF>' + Preenche(SQLTemplateNOFIINUMERO.AsString,'0',8,0) +'</cNF>'                                                                             + CHR(13) + // Código Numérico que compõe a Chave de Acesso
             '        <natOp>'+ eServico +'</natOp>'                                                                + CHR(13) + // CFOP
             '        <indPag>'+ForPag+'</indPag>'                                                                       + CHR(13) + // 0=vista, 1=prazo
             '        <mod>55</mod>'                                                                            + CHR(13) + // Modelo 55=nfe
             '        <serie>'+Copy(Trim(SQLTemplateSERIA5COD.AsString),length(Trim(SQLTemplateSERIA5COD.AsString)),1)+'</serie>'                                                                         + CHR(13) + // Serie 0=unica
             '        <nNF>'+ TRIM(SQLTemplateNOFIINUMERO.AsString) +'</nNF>'                                   + CHR(13) + // Nro NF
             '        <dEmi>'+ FormatDateTime('yyyy-mm-dd',SQLTemplateNOFIDEMIS.value) +'</dEmi>'               + CHR(13); // Dt.Emissao

           if not SQLTemplateNOFIDSAIDAENTRADA.IsNull then
             begin
                Linha := Linha + '        <dSaiEnt>'+ FormatDateTime('yyyy-mm-dd',SQLTemplateNOFIDSAIDAENTRADA.value) +'</dSaiEnt>' + CHR(13); // Dt.Saida
                if FormatDateTime('HH:MM:SS',SQLTemplateNOFIDSAIDAENTRADA.AsDateTime) <> '00:00:00' then
                  Linha := Linha +'        <hrSaiEnt>'+ FormatDateTime('HH:MM:NN',SQLTemplateNOFIDSAIDAENTRADA.value) +'</hrSaiEnt>' + CHR(13); // Hora Saida
             end;

             linha := Linha +
             '        <tpNf>'+ EntradaSaida +'</tpNf>'                                                          + CHR(13) + // 0=entrada, 1=saida
             '        <cMunFg>'+ SQLLocate('EMPRESA','EMPRICOD','EMPRIMUNICODFED',EmpresaPadrao) +'</cMunFg>'   + CHR(13) + // Cod.Municipio Gerador NF
             '        <tpImp>1</tpImp>'                                                                         + CHR(13) + // Danfe 1=Retrato, 2=Paisagem
             '        <tpEmis>1</tpEmis>'                                                                       + CHR(13) + // Tipo Emissao 1=Online, 2=Contingencia Ofline, 3=Contingencia SCAN
             '        <tpAmb>1</tpAmb>'                                                                         + CHR(13) + // 1-Produção/ 2-Homologação
             '        <finNFe>'+SQLTemplateNOFICFINALIDADE.AsString+'</finNFe>'                                 + CHR(13) + // Finalidade de emissão, 1- NF-e normal/ 2-NF-e complementar / 3 – NF-e de ajuste notas
             '        <procEmi>0</procEmi>'                                                                     + CHR(13) + // Processo de emissão da NF-e, 0 - emissão de NF-e com aplicativo do contribuinte;
             '        <verProc />'                                                                              + CHR(13) ;
             try
                Append(Arquivo);
                Writeln(Arquivo,Linha);
                Erro := False;
              except
                Erro := True;
              end;

            // Notas Fiscais Referenciadas
            SQLNotaFiscalReferenciada.Close;
            SQLNotaFiscalReferenciada.SQL.Clear;
            SQLNotaFiscalReferenciada.SQL.Add('Select * From NOTAFISCALREFERENCIADA Where NOFIA13ID =:xNOFIA13ID');
            SQLNotaFiscalReferenciada.ParamByName('xNOFIA13ID').AsString := SQLTemplateNOFIA13ID.AsString;
            SQLNotaFiscalReferenciada.Open;
            if not SQLNotaFiscalReferenciada.IsEmpty then
            begin
              Linha :=  '    <NFRef>' ;
              try
                Append(Arquivo);
                Writeln(Arquivo,Linha);
                Erro := False;
              except
                Erro := True;
              end;
            End;

            While not SQLNotaFiscalReferenciada.Eof do
              begin
                Linha := '       <SDTNFE001.ide.NFRefItem>'                                    + CHR(13) ;
                // Referenciar Nota Fiscal Eletronica - preencher campo Ab03
                if SQLNotaFiscalReferenciada.FieldByName('TIPO').AsString = '1' Then
                  Linha := Linha + '           <refNFe>' + SQLNotaFiscalReferenciada.FieldByName('CHAVEACESSO').AsString + '</refNFe>'     + CHR(13) ;
                // Referenciar Conhecimento Eletronica - preencher campo Ab12
                if SQLNotaFiscalReferenciada.FieldByName('TIPO').AsString = '2' Then
                  Linha := Linha + '           <RefCte>' + SQLNotaFiscalReferenciada.FieldByName('CHAVEACESSO').AsString + '</RefCte>'     + CHR(13) ;
               // Referenciar Nota Fiscal 1 e 1A
                if SQLNotaFiscalReferenciada.FieldByName('TIPO').AsString = '3' Then
                begin
                  Linha := Linha +
                  '           <cUF_refNFE>' + SQLNotaFiscalReferenciada.FieldByName('UF').AsString + '</cUF_refNFE>'             + CHR(13) +
                  '           <AAMM>' + Copy(FormatDateTime('dd/mm/yyyy',SQLNotaFiscalReferenciada.FieldByName('DATAEMISSAO').AsDateTime),9,2)+
                                        Copy(FormatDateTime('dd/mm/yyyy',SQLNotaFiscalReferenciada.FieldByName('DATAEMISSAO').AsDateTime),4,2)+  '</AAMM>'      + CHR(13) +
                  '           <CNPJ>' + SQLNotaFiscalReferenciada.FieldByName('CNPJ_CPF').AsString + '</CNPJ>'                   + CHR(13) +
                  '           <mod_refNFE>' + SQLNotaFiscalReferenciada.FieldByName('MODELO').AsString +'</mod_refNFE>'          + CHR(13) +
                  '           <serie_refNFE>' + SQLNotaFiscalReferenciada.FieldByName('SERIA5COD').AsString +'</serie_refNFE>'   + CHR(13) +
                  '           <nNF_refNFE>' + SQLNotaFiscalReferenciada.FieldByName('NUMERO').AsString +'</nNF_refNFE>'          + CHR(13) ;
                end;
                // Nota Fiscal de Produtor Rural
                if SQLNotaFiscalReferenciada.FieldByName('TIPO').AsString = '4' Then
                begin
                  Linha := Linha +
                  '           <cUF_refNFE>' + SQLNotaFiscalReferenciada.FieldByName('UF').AsString + '</cUF_refNFE>'             + CHR(13) +
                  '           <AAMM>' + Copy(FormatDateTime('dd/mm/yyyy',SQLNotaFiscalReferenciada.FieldByName('DATAEMISSAO').AsDateTime),9,2)+
                                        Copy(FormatDateTime('dd/mm/yyyy',SQLNotaFiscalReferenciada.FieldByName('DATAEMISSAO').AsDateTime),4,2)+  '</AAMM>'      + CHR(13) ;
                  if SQLNotaFiscalReferenciada.FieldByName('TIPO_DOCUMENTO').AsString  = '1' Then // CNPJ
                  Begin
                    Linha := Linha +  '           <CNPJ>' + SQLNotaFiscalReferenciada.FieldByName('CNPJ_CPF').AsString + '</CNPJ>'                   + CHR(13) +
                                      '           <CPF></CPF>'                   + CHR(13)
                  End Else
                  Begin
                    Linha := Linha +  '           <CNPJ></CNPJ>'                   + CHR(13) +
                                      '           <CPF>' + SQLNotaFiscalReferenciada.FieldByName('CNPJ_CPF').AsString + '</CPF>'                   + CHR(13);
                    End;
                  Linha := Linha +
                  '           <mod_refNFE>' + SQLNotaFiscalReferenciada.FieldByName('MODELO').AsString +'</mod_refNFE>'          + CHR(13) +
                  '           <serie_refNFE>' + SQLNotaFiscalReferenciada.FieldByName('SERIA5COD').AsString +'</serie_refNFE>'   + CHR(13) +
                  '           <nNF_refNFE>' + SQLNotaFiscalReferenciada.FieldByName('NUMERO').AsString +'</nNF_refNFE>'          + CHR(13) +
                  '           <IE_refNFP>' + SQLNotaFiscalReferenciada.FieldByName('IE').AsString +'</IE_refNFP>'          + CHR(13) ;
                end;

                // Cupom Fiscal
                if SQLNotaFiscalReferenciada.FieldByName('TIPO').AsString = '5' Then
                begin
                  Linha := Linha +
                  '           <mod_refECF>' + SQLNotaFiscalReferenciada.FieldByName('MODELO').AsString + '</mod_refECF>'             + CHR(13) +
                  '           <nECF_refECF>' + SQLNotaFiscalReferenciada.FieldByName('NUMERO_ECF').AsString + '</nECF_refECF>'             + CHR(13) +
                  '           <nCOO_refECF>' + SQLNotaFiscalReferenciada.FieldByName('NUMERO_COO').AsString + '</nCOO_refECF>'             + CHR(13) ;
                End;

                Linha := Linha + '       </SDTNFE001.ide.NFRefItem>';

                try
                  Append(Arquivo);
                  Writeln(Arquivo,Linha);
                  Erro := False;
                except
                  Erro := True;
                end;

                SQLNotaFiscalReferenciada.Next;
              End;

            if not SQLNotaFiscalReferenciada.IsEmpty then
            begin
                Linha := '    </NFRef>'+CHR(13);
                try
                  Append(Arquivo);
                  Writeln(Arquivo,Linha);
                  Erro := False;
                except
                  Erro := True;
                end;
            End;
            SQLNotaFiscalReferenciada.Close;
    Linha := '    </ide>';
  try
    Append(Arquivo);
    Writeln(Arquivo,Linha);
    Erro := False;
  except
    Erro := True;
  end;


  eServico := '';

  // Criar linha contendo dados do Emitente B01 ao B24
  Linha :=   '    <emit>'                                                                                            + CHR(13) + // Tag Inicial
             '        <CNPJ_emit>'+ SQLLocate('EMPRESA','EMPRICOD','EMPRA14CGC',EmpresaPadrao) +'</CNPJ_emit>'       + CHR(13) + // CNPJ Emitente
             '        <xNome>'+ SQLLocate('EMPRESA','EMPRICOD','EMPRA60RAZAOSOC',EmpresaPadrao) +'</xNome>'          + CHR(13) + // Razao Social
             '        <xFant>'+ SQLLocate('EMPRESA','EMPRICOD','EMPRA60NOMEFANT',EmpresaPadrao) +'</xFant>'          + CHR(13) + // Fantasia
             '        <enderEmit>'                                                                                   + CHR(13) + // Tag Grupo dados emitente
             '            <xLgr>'+ SQLLocate('EMPRESA','EMPRICOD','EMPRA60END',EmpresaPadrao) +'</xLgr>'             + CHR(13) + // Endereco
             '            <nro>'+ SQLLocate('EMPRESA','EMPRICOD','EMPRIENDNRO',EmpresaPadrao) +'</nro>'              + CHR(13) + // Numero
             '            <xBairro>'+ SQLLocate('EMPRESA','EMPRICOD','EMPRA60BAI',EmpresaPadrao) +'</xBairro>'       + CHR(13) + // Bairro
             '            <cMun>'+ SQLLocate('EMPRESA','EMPRICOD','EMPRIMUNICODFED',EmpresaPadrao) +'</cMun>'        + CHR(13) + // Cod.Municipio Gerador NF, tab.IBGE
             '            <xMun>'+ SQLLocate('EMPRESA','EMPRICOD','EMPRA60CID',EmpresaPadrao) +'</xMun>'             + CHR(13) + // Nome Cidade
             '            <UF>'+ SQLLocate('EMPRESA','EMPRICOD','EMPRA2UF',EmpresaPadrao) +'</UF>'                   + CHR(13) + // Sigla da UF
             '            <CEP>'+ SQLLocate('EMPRESA','EMPRICOD','EMPRA8CEP',EmpresaPadrao) +'</CEP>'                + CHR(13) + // CEP
             '            <cPais>1058</cPais>'                                                                       + CHR(13) + // Cod.Pais (Brail = 1058)
             '            <xPais>BRASIL</xPais>'                                                                              + CHR(13) + // Nome Pais
             '            <fone>'+ Preenche(SQLLocate('EMPRESA','EMPRICOD','EMPRA20FONE',EmpresaPadrao),'0',14,0) +'</fone>'  + CHR(13) + // Fone
             '            <fax>' + Preenche(SQLLocate('EMPRESA','EMPRICOD','EMPRA20FAX',EmpresaPadrao),'0',14,0)  +'</fax>'   + CHR(13) + // Fone
             '            <Email>'+ LowerCase(SQLLocate('EMPRESA','EMPRICOD','EMPRA60EMAIL',EmpresaPadrao)) +'</Email>'       + CHR(13) + // Insc.Estadual
             '        </enderEmit>'                                                                                           + CHR(13) + // IE
             '        <IE>'+ SQLLocate('EMPRESA','EMPRICOD','EMPRA20IE',EmpresaPadrao) +'</IE>'                               + CHR(13) ; // Insc.Estadual
             if SQLLocate('EMPRESA','EMPRICOD','EMPRA14CGC',EmpresaPadrao) = '11049317000139' then
                Linha := Linha + '        <CRT>1</CRT>'                             + CHR(13)
             else
                Linha := Linha + '        <CRT>'+ SQLLocate('EMPRESA','EMPRICOD','EMPRA3CRT',EmpresaPadrao) +'</CRT>'                             + CHR(13) ; // Insc.Estadual
             Linha := Linha +
             '    </emit>'                                                                                           ;
  try
    Append(Arquivo);
    Writeln(Arquivo,Linha);
    Erro := False;
  except
    Erro := True;
  end;

  // Criar linhas contendo dados do Destinatario C01 a E10

  if Length(SQLTemplateCliFornEmpCGCCPFLookUp.AsString) = 14 then
    begin
      Cnpj_Dest := SQLTemplateCliFornEmpCGCCPFLookUp.AsString;
      IE_Dest   := SQLTemplateCliFornEmpIERGLookUp.AsString;
    end
  else
    begin
      Cpf_Dest := SQLTemplateCliFornEmpCGCCPFLookUp.AsString;
      IE_Dest := SQLLocate('CLIENTE','CLIEA13ID','CLIEA30OUTROSDOC','"'+SQLTemplateCLIEA13ID.AsString+'"');
      if  ( IE_Dest <> '') and (Trim(IE_Dest) <> 'ISENTO')  THEN
        IE_Dest := SoNumeros(IE_Dest)
      else
        IE_Dest   := 'ISENTO';
      if SQLTemplateOrigemDestinoLookUp.asstring = 'F' then
        IE_Dest   :=  SQLTemplateCliFornEmpIERGLookUp.AsString;
    end;



  nEmail := '';
  if SQLTemplateOrigemDestinoLookUp.AsString[1] = 'C' then
    nEmail := SQLLocate('CLIENTE','CLIEA13ID','CLIEA60EMAIL','"' + SQLTemplate.FieldByName('CLIEA13ID').AsString + '"')
  else if SQLTemplateOrigemDestinoLookUp.AsString[1] = 'F' then
    nEmail := SQLLocate('FORNECEDOR','FORNICOD','FORNA60EMAIL',SQLTemplate.FieldByName('FORNICOD').AsString);



  Linha :=   '    <dest>'                                                                                       + CHR(13);
  if Cnpj_Dest <> '' then
    linha := linha + '        <CNPJ_dest>'+ SoNumeros(Cnpj_Dest) +'</CNPJ_dest>'                                                   + CHR(13);  // CNPJ Destinatario
  if Cpf_Dest <> '' then
    linha := Linha +  '        <CPF_dest>'+ SoNumeros(Cpf_Dest) +'</CPF_dest>'                                                      + CHR(13) // CPF
  else if (Cnpj_Dest = '') and (Cpf_Dest = '') and (SQLTemplateCliFornEmpEstadoLookUp.AsString = 'EX') then
    linha := linha + '        <CNPJ_dest></CNPJ_dest>'                                                   + CHR(13);  // CNPJ Destinatario
  linha := Linha +  '        <xNome_dest>'+ ConverteAcentos(SQLTemplateCliFornEmpLookUp.AsString) +'</xNome_dest>'                      + CHR(13) + // Razao Social
             '        <enderDest>'                                                                              + CHR(13) + // Tag Grupo dados Destinatario
             '            <nro_dest>'+SQLTemplateEmpNumeroEndLookUp.AsString+'</nro_dest>'                      + CHR(13) + // Numero Desativado colocando S/N
             '            <xCpl_dest></xCpl_dest>'                                                              + CHR(13) + // Numero Desativado colocando S/N
             '            <xBairro_dest>'+ ConverteAcentos(SQLTemplateCliFornEmpBairroLookUp.AsString) +'</xBairro_dest>'        + CHR(13) ; // Bairro
             If nEmail <> '' then
               linha := Linha +  '            <xEmail_dest>'+ nEmail +'</xEmail_dest>'  + CHR(13) ;
             linha := Linha +
             '            <xLgr_dest>'+ Converteacentos(SQLTemplateCliFornEmpEnderecoLookUp.AsString) +'</xLgr_dest>'            + CHR(13) + // Endereco
             '            <xPais_dest>'+Copy(RetornaPais(SQLTemplateCliFornEmpcdPaisLookUp.AsInteger),0,60)+'</xPais_dest>'  + CHR(13) + // Pais
             '            <cMun_dest>'+SQLTemplateCliFornEmpCdMunicipoNfeLookUp.AsString+'</cMun_dest>'         + CHR(13) + // Cod.Municipio Dest
             '            <xMun_dest>'+ ConverteAcentos(SQLTemplateCliFornEmpCidadeLookUp.AsString) +'</xMun_dest>'              + CHR(13) + // Nome Municipio
             '            <UF_dest>'+ SQLTemplateCliFornEmpEstadoLookUp.AsString +'</UF_dest>'                  + CHR(13) + // Sigla da UF
             '            <CEP_dest>'+ SQLTemplateCliFornEmpCEPLookUp.AsString +'</CEP_dest>'                   + CHR(13) + // CEP
             '            <cPais_dest>'+SQLTemplateCliFornEmpcdPaisLookUp.AsString +'</cPais_dest>'             + CHR(13) + // Cd.Pais
             '            <fone_dest>'+ Preenche(SoNumeros(SQLTemplateCliFornEmpFoneLookUp.AsString),'0',14,0) +'</fone_dest>'  + CHR(13) ; // Telefone
             linha := Linha +
             '        </enderDest>'                                                                             + CHR(13) +
             '        <IE_dest>'+ IE_Dest +'</IE_dest>'                                                         + CHR(13) + // IE
             '        <ISUF></ISUF>'                                                                            + CHR(13) ; // Inscrição na SUFRAMA
             If nEmail <> '' then
               linha := Linha +  '            <Email_dest>'+ copy(nEmail,0,pos(';',nEmail)-1) +'</Email_dest>'  + CHR(13) ;
             Linha := Linha +
             '    </dest>'                                                                                      + CHR(13) +
             '    <retirada>'                                                                                   + CHR(13) +
             '        <CNPJ_ret />'                                                                             + CHR(13) +
             '        <CPF_ret />'                                                                              + CHR(13) +
             '        <xLgr_ret />'                                                                             + CHR(13) +
             '        <nro_ret />'                                                                              + CHR(13) +
             '        <xCpl_ret />'                                                                             + CHR(13) +
             '        <xBairro_ret />'                                                                          + CHR(13) +
             '        <xMun_ret />'                                                                             + CHR(13) +
             '        <cMun_ret />'                                                                             + CHR(13) +
             '        <UF_ret />'                                                                               + CHR(13) +
             '    </retirada>'                                                                                  + CHR(13) +
             '    <entrega>'                                                                                    + CHR(13) +
             '        <CNPJ_entr />'                                                                            + CHR(13) +
             '        <CPF_entr />'                                                                             + CHR(13) +
             '        <xLgr_entr />'                                                                            + CHR(13) +
             '        <nro_entr />'                                                                             + CHR(13) +
             '        <xCpl_entr />'                                                                            + CHR(13) +
             '        <xBairro_entr />'                                                                         + CHR(13) +
             '        <cMun_entr />'                                                                            + CHR(13) +
             '        <xMun_entr />'                                                                            + CHR(13) +
             '        <UF_entr /> '                                                                             + CHR(13) +
             '    </entrega>'                                                                                   + CHR(13) +
             '    <det>'                                                                                        ;
  try
    Append(Arquivo);
    Writeln(Arquivo,Linha);
    Erro := False;
  except
    Erro := True;
  end;

  // Loop dos Produtos
  Dm.ImportandoPedidoVenda := True; // Pra enganar a rotina Calcfields

  SQLNotaFiscalItem.Close;
  SQLNotaFiscalItem.RequestLive := False;
  SQLNotaFiscalItem.SQL.Clear;
  SQLNotaFiscalItem.SQL.Add('Select i.* From NOTAFISCALITEM i left join Produto p on p.prodicod = i.prodicod Where NOFIA13ID =:NOFIA13ID order by p.proda60descr');
  SQLNotaFiscalItem.Open;
  SQLNotaFiscalItem.First;
  While not SQLNotaFiscalItem.Eof do
    begin

      if SQLNotaFiscalItemCFOPA5CODAUX.Value <> '' then
        CFOP := SoNumeros(SQLNotaFiscalItemCFOPA5CODAUX.asstring)
      else
        CFOP := SoNumeros(SQLTemplateCFOPA5COD.AsString);

      if SQLNotaFiscalItemNFITN3TOTVEND.isnull then
        Vlr_Tot_Bruto := (SQLNotaFiscalItemNFITN2VLRUNIT.Value * SQLNotaFiscalItemNFITN3QUANT.Value) - SQLNotaFiscalItemNFITN2VLRDESC.AsFloat
      else
        Vlr_Tot_Bruto := SQLNotaFiscalItemNFITN3TOTVEND.Value;

      if FileExists('VFNota.txt') then // exibe o valor final (total custo + subst. Trib.) ao lado do nome do produto.
        Descr_Prod    := ConverteAcentos(SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',SQLNotaFiscalItemPRODICOD.AsString)) + CalculoSubstituicaoTributaria
      else
        if FileExists ('NFEREDUZ.txt') then
           Descr_Prod   := ConverteAcentos(Trim(SQLLocate('PRODUTO','PRODICOD','PRODA30ADESCRREDUZ',SQLNotaFiscalItemPRODICOD.AsString))+ ' ' + Trim(SQLNotaFiscalItemNFITA254OBS.AsString))
        else
          Descr_Prod    := ConverteAcentos(Trim(SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',SQLNotaFiscalItemPRODICOD.AsString))+ ' ' + Trim(SQLNotaFiscalItemNFITA254OBS.AsString));

      if not FileExists ('Superbom.txt') then
        CdBarras      := SQLLocate('PRODUTO','PRODICOD','PRODA60CODBAR',SQLNotaFiscalItemPRODICOD.AsString)
      else
        CdBarras      := '';

      // Empresa Maos do mundo no simples nacional
      if SQLLocate('EMPRESA','EMPRICOD','EMPRA14CGC',EmpresaPadrao) = '11049317000139' then
      begin
        if SQLNotaFiscalItemNFITICST.AsString = '60' then
          SitTrib := '500'
        else if SQLNotaFiscalItemNFITICST.AsString = '10' then
          SitTrib := '101'
        else if SQLNotaFiscalItemNFITICST.AsString = '90' then
          SitTrib := '900'
        else
          SitTrib := '102'
      end else
        SitTrib       := SQLNotaFiscalItemNFITICST.AsString;

      Unidade       := SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',SQLLocate('PRODUTO','PRODICOD','UNIDICOD',SQLNotaFiscalItemPRODICOD.AsString));
      NCM           := SQLLocate('NCM','NCMICOD','NCMA30CODIGO',SQLLocate('PRODUTO','PRODICOD','NCMICOD',SQLNotaFiscalItemPRODICOD.AsString));



      // Criar linhas contendo dados dos Produtos de F01 a

      Linha := '        <SDTNFE001.detItem>'                                                                            + CHR(13) +
               '            <prod>'                                                                                     + CHR(13) +
               '                <cProd>'+SQLNotaFiscalItemPRODICOD.AsString +'</cProd>'                                + CHR(13); // Cod.Produto
      if (Copy(CdBarras,0,3) <> '999') and (Trim(cdBarras) <> '') then // se o codigo de barras não for o codigo interno coloca a tag
      begin
        if (Length(trim(cdBarras)) > 14) then
          ShowMessage('Atenção...  O Produto Cód. '+SQLNotaFiscalItemPRODICOD.AsString+ ' tem seu codigo de barras inválido.'+#13#10+
          'O codigo de barras será ignorado.'+#13#10+
          'Caso necessário corrija a nota fiscal '+ SQLTemplateNOFIINUMERO.AsString)
        else
          Linha := Linha +
               '                <cEAN>'+ SoNumeros(CdBarras) +'</cEAN>'                                                            + CHR(13) ; // Cod.Barras
      end;
      Linha := Linha +
               '                <xProd>'+ Copy(Descr_Prod,0,120) +'</xProd>'                                                        + CHR(13) +
               '                <NCM>'+SoNumeros(NCM)+'</NCM>'                                                                     + CHR(13) ; // NCM

               //'                <EXTIPI />'                                                                             + CHR(13) + // Preencher de acordo com o código EX da TIPI. Em caso de serviço, não incluir a TAG.

               // caso a descricao do cfop seja  "5403 - venda de mercadoria no uf / C.subst.trib.
               // usado pra quando for venda no cfop 5102 com produtos 5403 juntos.  Criar uma operacao de estoque com a descricao acima.

              if  CFOP  = '000' then // utilizar o codigo da operaçao de estoque no numero antigo no cadastro do produto
              begin
                If SQLTemplateCliFornEmpEstadoLookUp.AsString = 'RS' then
                  Linha := Linha +'                <CFOP>'+SoNumeros(SQLLocate('OPERACAOESTOQUE','OPESICOD','CFOPA5CODDENTROUF',(SQLLocate('PRODUTO','PRODICOD','PRODA15CODANT',SQLNotaFiscalItemPRODICOD.AsString))))+'</CFOP>'                                                                + CHR(13)  // Cfop
                else
                  Linha := Linha +'                <CFOP>'+Sonumeros(SQLLocate('OPERACAOESTOQUE','OPESICOD','CFOPA5CODFORAUF',(SQLLocate('PRODUTO','PRODICOD','PRODA15CODANT',SQLNotaFiscalItemPRODICOD.AsString))))+'</CFOP>'                                                                + CHR(13)  // Cfop
              end else
              begin
               if (Pos('5403',SQLLocate('CFOP','CFOPA5COD','CFOPA60DESCR',SQLTemplateCFOPA5COD.asstring)) > 0) and
               ((SitTrib = '60' ) or (SitTrib = '500' )) then
                 Linha := Linha +'                <CFOP>5403</CFOP>'                                                                + CHR(13)  // Cfop
               else if (Pos('5405',SQLLocate('CFOP','CFOPA5COD','CFOPA60DESCR',SQLTemplateCFOPA5COD.asstring)) > 0) and
               ((SitTrib = '60' ) or (SitTrib = '500' )) then
                 Linha := Linha +'                <CFOP>5405</CFOP>'                                                                + CHR(13)  // Cfop
               else if (Pos('6403',SQLLocate('CFOP','CFOPA5COD','CFOPA60DESCR',SQLTemplateCFOPA5COD.asstring)) > 0) and
               ((SitTrib = '60' ) or (SitTrib = '500' )) then
                 Linha := Linha +'                <CFOP>6403</CFOP>'                                                                + CHR(13)  // Cfop
               else if (Pos('6405',SQLLocate('CFOP','CFOPA5COD','CFOPA60DESCR',SQLTemplateCFOPA5COD.asstring)) > 0) and
               ((SitTrib = '60' ) or (SitTrib = '500' )) then
                 Linha := Linha +'                <CFOP>6405</CFOP>'                                                                + CHR(13)  // Cfop
               else
                 Linha := Linha +'                <CFOP>'+ CFOP +'</CFOP>'                                                          + CHR(13);  // Cfop
              end;

               Linha := Linha +'                <uCOM>'+ Unidade +'</uCOM>'                                                         + CHR(13) + // Unidade
               '                <qCOM>'+ PontoVirgula(FormatFloat('0000000000.0000',SQLNotaFiscalItemNFITN3QUANT.Value)) +'</qCOM>' + CHR(13) ; // Qtde

               if SQLNotaFiscalItemNFITN3TOTVEND.IsNull then
                 Linha := Linha + '                <vUnCom>'+ PontoVirgula(FormatFloat('0000000000.0000000000',SQLNotaFiscalItemNFITN2VLRUNIT.value)) +'</vUnCom>'                         + CHR(13) // Vlr.Unitario
               else
                 Linha := Linha + '                <vUnCom>'+ PontoVirgula(FormatFloat('0000000000.0000000000',SQLNotaFiscalItemNFITN3TOTVEND.value/SQLNotaFiscalItemNFITN3QUANT.Value)) +'</vUnCom>'                         + CHR(13); // Vlr.Unitario

               Linha := Linha +
               '                <vProd>'+ PontoVirgula(FormatFloat('0.00',Vlr_Tot_Bruto + SQLNotaFiscalItemNFITN2VLRDESC.AsFloat)) + '</vProd>'                  + CHR(13) ; // Vlr.Total Bruto


               if not FileExists ('Superbom.txt') then
                 CdBarras      := SQLLocate('PRODUTO','PRODICOD','PRODA20BARRAUNIDADE',SQLNotaFiscalItemPRODICOD.AsString)
               else
                 CdBarras      := '';

               if (Copy(CdBarras,0,3) <> '999') and (cdBarras <> '') then
                 Linha := Linha + '                <cEANTrib>'+ CdBarras + '</cEANTrib>'+ CHR(13); // Cd.Barras do Produto Tributado
               Linha := Linha +
               '                <uTrib>'+ Unidade +'</uTrib>'                                                           + CHR(13) + // Unidade Tributavel
               '                <qTrib>'+ PontoVirgula(FormatFloat('0.0000',SQLNotaFiscalItemNFITN3QUANT.value)) +'</qTrib>'                             + CHR(13); // Qtde Tributavel


               eServico := SQLLocate('PRODUTO','PRODICOD','PRODCSERVICO',SQLNotaFiscalItemPRODICOD.AsString);
               If eServico = 'N' then
                 vProd_Total  := vProd_Total +  Vlr_Tot_Bruto + SQLNotaFiscalItemNFITN2VLRDESC.AsFloat;



               if  SQLNotaFiscalItemNFITN3TOTVEND.IsNull then
                  Linha := Linha +  '                <vUnTrib>'+ PontoVirgula(FormatFloat('0000000000.0000000000',SQLNotaFiscalItemNFITN2VLRUNIT.value)) +'</vUnTrib>'                       + CHR(13) // Vlr.Unitario Tributavel
               else
                  Linha := Linha +  '                <vUnTrib>'+ PontoVirgula(FormatFloat('0000000000.0000000000',SQLNotaFiscalItemNFITN3TOTVEND.value/SQLNotaFiscalItemNFITN3QUANT.Value)) +'</vUnTrib>'                       + CHR(13); // Vlr.Unitario Tributavel

               if SQLNotaFiscalItemNFITN2VLRFRETE.Value > 0 then
                  linha := linha +'                <vFrete>'+ PontoVirgula(FormatFloat('0.00',SQLNotaFiscalItemNFITN2VLRFRETE.value)) +'</vFrete>'                              + CHR(13) ;// Vlr.Total Frete
               vFrete_Total := vFrete_Total + SQLNotaFiscalItemNFITN2VLRFRETE.value;

              if SQLNotaFiscalItemNFITN2SEGURO.Value > 0 then
                  linha := linha +'                <vSeg>'+ PontoVirgula(FormatFloat('0.00',SQLNotaFiscalItemNFITN2SEGURO.value)) +'</vSeg>'                                 + CHR(13) ; // Vlr.Total Seguro
               vSeg_Total := vSeg_Total + SQLNotaFiscalItemNFITN2SEGURO.value;

               if SQLNotaFiscalItemNFITN2VLRDESC.Value > 0 then
                  linha := linha +'                <vDesc>'+ PontoVirgula(FormatFloat('0.00',SQLNotaFiscalItemNFITN2VLRDESC.Value)) +'</vDesc>'                           + CHR(13) ; // Vlr.Desconto Item
               vDesc_total := vDesc_total + SQLNotaFiscalItemNFITN2VLRDESC.Value;

               if SQLNotaFiscalItemNFITN2OUTRASDESP.Value > 0 then
                  linha := linha +'                <vOutro_item>'+ PontoVirgula(FormatFloat('0.00',SQLNotaFiscalItemNFITN2OUTRASDESP.Value)) +'</vOutro_item>'                           + CHR(13) ; // Vlr.Desconto Item
               vOutro_Total := vOutro_Total + SQLNotaFiscalItemNFITN2OUTRASDESP.Value;

               if eServico = 'N' then
                 linha := linha +'                <indTot>1</indTot>'     + CHR(13) // 1 = Vlr do item compoe Vlr.Total;  0 = Vlr do item nao compoe o Vlr.Total;
               else
                 linha := linha +'                <indTot>0</indTot>'     + CHR(13) ; // 1 = Vlr do item compoe Vlr.Total;  0 = Vlr do item nao compoe o Vlr.Total;


               // se for nota de importaçao tem que preencher isso...

               nTipoProduto:= SQLLocate('PRODUTO','PRODICOD','PRODA1TIPO',SQLNotaFiscalItemPRODICOD.AsString);
               linha := linha +'                <nTipoItem>'+nTipoProduto+'</nTipoItem>'                                                               + CHR(13) ; // Tipo Item, 0 - Produto 1 - Veiculos 2 - Medicamentos 3 - Armamentos 4 - Combustível

               if SQLNotaFiscalItemNFITA10DIIMPORT.asstring <> '' then
               begin
                 Linha := Linha +
                 '                <detDI>'                + CHR(13) +
                 '                    <SDTNFE001.detItem.prod.detDIItem>'                                    + CHR(13) +
                 '                        <nDI>'+Trim(SQLNotaFiscalItemNFITA10DIIMPORT.AsString)+'</nDI>'                                                                  + CHR(13) + // No caso de Importacao outro pais
                 '                        <dDi>'+FormatDateTime('yyyy-mm-dd',SQLNotaFiscalItemNFITDDATADI.value)+'</dDi>'                                                                        + CHR(13) +
                 '                        <xLocDesemb>'+SQLNotaFiscalItemNFITA60LOCALDESEMBARACO.AsString+'</xLocDesemb>'                                                                 + CHR(13) +
                 '                        <UFDesemb>'+SQLNotaFiscalItemNFITA2UFDESEMBARACO.AsString+'</UFDesemb>'                                                                   + CHR(13) +
                 '                        <cExportador>'+TRIM(SQLNotaFiscalItemNFITA60CEXPORTADOR.AsString)+'</cExportador>'                                                  + CHR(13) +
                 '                        <dDesemb>'+FormatDateTime('yyyy-mm-dd',SQLNotaFiscalItemNFITDDESEMBARACO.value)+'</dDesemb>'                                                                    + CHR(13) +
                 '                        <detAdicoes>' + chr(13) +
                 '                             <SDTNFE001.detItem.prod.detAdicoesItem>'+CHR(13)+
                 '                                 <nAdicao>'+TRIM(SQLNotaFiscalItemNFITINADICAO.AsString)+'</nAdicao>'+CHR(13)+
                 '                                 <nSeqAdic>'+TRIM(SQLNotaFiscalItemNFITINSEQADIC.AsString)+'</nSeqAdic>'+CHR(13)+
                 '                                 <cFabricante>'+TRIM(SQLNotaFiscalItemNFITA60CFABRICANTE.AsString)+'</cFabricante>'+CHR(13)+
                 '                                 <vDescDI>'+PontoVirgula(FormatFloat('0.00',SQLNotaFiscalItemNFITN2DESCTOADIC.value))+'</vDescDI>'+CHR(13)+
//                 '                                 <xPed_item>'+SQLNotaFiscalItemNFITA15PEDIDOCOMPRA.AsString+'</xPed_item>'+CHR(13)+
//                 '                                 <nItemPed>'+SQLNotaFiscalItemNFITINITENS.AsString+'</nItemPed>'+CHR(13)+
                 '                             </SDTNFE001.detItem.prod.detAdicoesItem>'+CHR(13)+
                 '                         </detAdicoes>'+CHR(13)+
                 '                     </SDTNFE001.detItem.prod.detDIItem>'+CHR(13)+
                 '                 </detDI>'+CHR(13);
               end;

               if nTipoProduto = '4' then
               begin
                 linha :=  Linha +
                 '                <comb>'                                                                                   + CHR(13) +
                 '                    <cProdANP>'+ SQLLocate('PRODUTO','PRODICOD','PRODA9CODANP',SQLNotaFiscalItemPRODICOD.AsString) +'</cProdANP>'       + CHR(13) +
                // '                    <CODIF>'+SQLLocate('PRODUTO','PRODICOD','PRODA20C0DIF',SQLNotaFiscalItemPRODICOD.AsString) +'</CODIF>'              + CHR(13) +
                // '                    <qTemp>'+ PontoVirgula(FormatFloat('0.0000',SQLNotaFiscalItemNFITN3QUANT.value)) +'</qTemp>'                        + CHR(13) +
                 '                    <UFcons>'+SQLTemplateCliFornEmpEstadoLookUp.AsString+'</UFcons>'                                                    + CHR(13) +
                 {'                    <CIDE>'                                                                                                             + CHR(13) +
                 '                        <qBCprod>'+  PontoVirgula(FormatFloat('0.0000',SQLNotaFiscalItemNFITN3QUANT.value)) +'</qBCprod>'               + CHR(13) +
                 '                        <vAliqProd>'+ PontoVirgula(FormatFloat('0.00',StrToFloat(SQLLocate('PRODUTO','PRODICOD','PRODN4ALIQCIDE',SQLNotaFiscalItemPRODICOD.AsString)))) +'</vAliqProd>'     + CHR(13) +
                 '                        <vCIDE>'+ PontoVirgula(FormatFloat('0.00',SQLNotaFiscalItemNFITN3QUANT.value * (StrToFloat(SQLLocate('PRODUTO','PRODICOD','PRODN4ALIQCIDE',SQLNotaFiscalItemPRODICOD.AsString))/1000))) +'</vCIDE>'                    + CHR(13) +
                 '                    </CIDE>'+CHR(13)+
                 }
                 '                    <ICMS>'                                                                                                       + CHR(13) +
                 '                        <vBCICMS>'+PontoVirgula(FormatFloat('0.00',0)) +'</vBCICMS>'                                                                   + CHR(13) +
                 '                        <vICMS>0.00</vICMS>'                                                              + CHR(13) +
                 '                        <vBCICMSST>'+PontoVirgula(FormatFloat('0.00',0))+'</vBCICMSST>'                                                                     + CHR(13) +
                 '                        <vICMSST>'+PontoVirgula(FormatFloat('0.00',0))+'</vICMSST>'                                                                 + CHR(13) +
                 '                    </ICMS>'                                                                                                       + CHR(13) +
                 {'                    <ICMSInter>'                                                                                                       + CHR(13) +
                 '                        <vBCICMSSTDest>'+PontoVirgula(FormatFloat('0.00',0)) +'</vBCICMSSTDest>'                                                                   + CHR(13) +
                 '                        <vICMSSTDest>'+PontoVirgula(FormatFloat('0.00',0)) +'</vICMSSTDest>'                                                               + CHR(13) +
                 '                    </ICMSInter>'                                                                                                       + CHR(13) +
                 '                    <ICMSCons>'                                                                                                       + CHR(13) +
                 '                        <vBCICMSSTCons>'+PontoVirgula(FormatFloat('0.00',0)) +'</vBCICMSSTCons>'                                                                   + CHR(13) +
                 '                        <vICMSSTCons>0.00</vICMSSTCons>'                                                               + CHR(13) +
                 '                        <UFcons>'+SQLTemplateCliFornEmpEstadoLookUp.AsString+'</UFcons>'                                                                     + CHR(13) +
                 '                    </ICMSCons>'                                                                                                       + CHR(13) +
                 }
                '                </comb>'+CHR(13);
               end;
               linha := linha +'            </prod>';
      try
        Append(Arquivo);
        Writeln(Arquivo,Linha);
        Erro := False;
      except
        Erro := True;
      end;


      // Criar linha contendo dados dos campos do 184 ao 204 (Impostos / ICMS)
      Linha := '            <imposto>'                                                + CHR(13) +
               '                <ICMS>'                                                                                      + CHR(13) ;
               // caso maos do mundo empresa do Simples Nacional
               if SQLLocate('EMPRESA','EMPRICOD','EMPRA14CGC',EmpresaPadrao) = '11049317000139' then
               begin
                  EntradaSaida := SQLLocate('CLASSIFICACAOFISCAL','CLFSICOD','CLFSA30DESCR',SQLLocate('PRODUTO','PRODICOD','CLFSICOD',SQLNotaFiscalItemPRODICOD.AsString));
                  IF Trim(EntradaSaida) = '0 - NACIONAL' Then
                      Linha := Linha + '                    <orig>0</orig>'       + CHR(13)  // Origem 0 – Nacional; 1 – Estrangeira – Importação direta; 2 – Estrangeira – Adquirida no mercado interno.
                  else if Trim(EntradaSaida) = '1 - IMP.DIRETO' Then
                      Linha := Linha + '                    <orig>1</orig>'       + CHR(13)  // Origem 0 – Nacional; 1 – Estrangeira – Importação direta; 2 – Estrangeira – Adquirida no mercado interno.
                  else if Trim(EntradaSaida) = '2 - IMP.ADQ.INT' Then
                      Linha := Linha + '                    <orig>2</orig>'       + CHR(13)  // Origem 0 – Nacional; 1 – Estrangeira – Importação direta; 2 – Estrangeira – Adquirida no mercado interno.
                  else
                    Linha := Linha + '                    <orig>2</orig>'       + CHR(13)  // Origem 0 – Nacional; 1 – Estrangeira – Importação direta; 2 – Estrangeira – Adquirida no mercado interno.
               end else
                  Linha := Linha + '                    <orig>'+ SQLLocate('PRODUTO','PRODICOD','PRODIORIGEM',SQLNotaFiscalItemPRODICOD.AsString) +'</orig>'       + CHR(13);  // Origem 0 – Nacional; 1 – Estrangeira – Importação direta; 2 – Estrangeira – Adquirida no mercado interno.

               // Preenche Calculo dos Impostos Icms e Icms Subst conforme Tabela 1.23 da Migrate
               TabelaNFE_123(SQLNotaFiscalItemPRODICOD.AsString, SitTrib);

      try
        Append(Arquivo);
        Writeln(Arquivo,Linha);
        Erro := False;
      except
        Erro := True;
      end;

      Linha := '';

      if (SQLNotaFiscalItemNFITN2PERCIPI.value > 0) or (SQLTemplateCliFornEmpEstadoLookUp.AsString = 'EX') then
      begin
         // Criar linha contendo dados dos campos do 205 ao 211 (Impostos / IPI)
         Linha := '                <IPI>'                                                                 + CHR(13) +
         {'                    <clEnq />'                                                         + CHR(13) +
         '                    <CNPJProd />'                                                      + CHR(13) +
         '                    <cSelo />'                                                         + CHR(13) +
         '                    <qSelo>0</qSelo>'                                                  + CHR(13) +
         }
         '                    <cEnq>999</cEnq>'                                                          + CHR(13);
         { correção do manual: quando o ipi é por aliquota preencher os campos L09 e L12
         quando o ipi é por unidade  preencher os campos L10 e L11 }

         Linha := Linha +
         '                    <CSTIPI>'                                                          + CHR(13) ;
              If SQLLocate('EMPRESA','EMPRICOD','EMPRA14CGC',EmpresaPadrao) = '11049317000139' then
                Linha := Linha + '                    <CST_IPI>99</CST_IPI>'            + CHR(13)
              Else
                Linha := Linha + '                        <CST_IPI>'+SQLLocate('PRODUTO','PRODICOD','PRODA2CSTIPI',SQLNotaFiscalItemPRODICOD.AsString)+'</CST_IPI>'                                                    + CHR(13) ;
         Linha := Linha +
         '                        <vBC_IPI>'+PontoVirgula(FormatFloat('0.00',  (SQLNotaFiscalItemNFITN2VLRUNIT.value -( SQLNotaFiscalItemNFITN2VLRUNIT.value * (SQLNotaFiscalItemNFITN2PERCDESC.value / 100) )) * SQLNotaFiscalItemNFITN3QUANT.Value   ))+'</vBC_IPI>'                                        + CHR(13) + // Base IPI
         '                        <qUnid_IPI>0</qUnid_IPI>'                                  + CHR(13) + // Quantidade total na unidade padrão para tributação (somente para os produtos tributados por unidade)
         '                        <vUnid_IPI>0</vUnid_IPI>'                                  + CHR(13) + // Valor por Unidade Tributável
         '                        <pIPI>'+PontoVirgula(FormatFloat('0.00',SQLNotaFiscalItemNFITN2PERCIPI.value))+'</pIPI>'                                              + CHR(13) + // Aliq. IPI
         '                        <vIPI>'+PontoVirgula(FormatFloat('0.00',SQLNotaFiscalItemNFITN2VLRIPI.value))+'</vIPI>'                                              + CHR(13) + // Vlr.IPI
         '                    </CSTIPI>'                                                         + CHR(13) ;
         vIPI_Total   :=  vIPI_Total  +  SQLNotaFiscalItemNFITN2VLRIPI.value;
         Linha := Linha +'                </IPI>'                                                                ;

        try
          Append(Arquivo);
          Writeln(Arquivo,Linha);
          Erro := False;
        except
          Erro := True;
        end;

      end;

      // Cria Linha de Imposto de Importação II

      if SQLNotaFiscalItemNFITA10DIIMPORT.asstring <> '' then
      begin
         // Criar linha contendo dados dos campos do 205 ao 211 (Impostos / IPI)
         Linha := '                <II>'                                                                 + CHR(13) +
         '                    <vBC_imp>'+PontoVirgula(FormatFloat('0.00',SQLNotaFiscalItemNFITN2BC_IMP.value))+'</vBC_imp>'                                                    + CHR(13) + // Código da situação tributária do IPI. 00-Entrada com recuperação de crédito 01-Entrada tributada com alíquota zero 02-Entrada isenta 03-Entrada não-tributada 04-Entrada imune 05-Entrada com suspensão 51-Saída tributada com alíquota zero 52-Saída isenta 53-Saída não-tributada 54-Saída imune 55-Saída com suspensão 49-Outras entradas 50-Saída tributada 99-Outras saídas
         '                    <vDespAdu>'+PontoVirgula(FormatFloat('0.00',SQLNotaFiscalItemNFITN2VALOR_DA.value))+'</vDespAdu>'                                        + CHR(13) + // Base IPI
         '                    <vII>'+PontoVirgula(FormatFloat('0.00',SQLNotaFiscalItemNFITN2VALOR_II.value))+'</vII>'                                  + CHR(13) + // Quantidade total na unidade padrão para tributação (somente para os produtos tributados por unidade)
         '                    <vIOF>'+PontoVirgula(FormatFloat('0.00',SQLNotaFiscalItemNFITN2VALOR_IOF.value))+'</vIOF>'                                  + CHR(13);  // Valor por Unidade Tributável
         Linha := Linha +'                </II>'                                                                ;

        try
          Append(Arquivo);
          Writeln(Arquivo,Linha);
          Erro := False;
          vII_Total := vII_Total +  SQLNotaFiscalItemNFITN2VALOR_II.value;
        except
          Erro := True;
        end;
      end;


      // Criar linha contendo dados dos campos do 217 ao 223 (Impostos / PIS)

      linha := '';
      if SQLLocate('PRODUTO','PRODICOD','PRODN2ALIQPIS',SQLNotaFiscalItemPRODICOD.AsString) <> '' Then
        begin
            ValordoPis:= Vlr_Tot_Bruto *( (StrToFloat(SQLLocate('PRODUTO','PRODICOD','PRODN2ALIQPIS',SQLNotaFiscalItemPRODICOD.AsString)))/100);
            Linha := '                <PIS>'                                                                 + CHR(13) ;
                     If SQLLocate('EMPRESA','EMPRICOD','EMPRA14CGC',EmpresaPadrao) = '11049317000139' then
                     begin
                        Linha := Linha + '                    <CST_pis>99</CST_pis>'            + CHR(13) +
                         '                    <vBC_pis>'+ PontoVirgula(FormatFloat('0.00',0)) + '</vBC_pis>'                                           + CHR(13) + // Base Calculo PIS
                         '                    <pPIS>'+ PontoVirgula(FormatFloat('0.00',0)) + '</pPIS>'                                                 + CHR(13) + // Aliq. em Percentual
                         '                    <vPIS>'+PontoVirgula(FormatFloat('0.00',0)) + '</vPIS>'                                                 + CHR(13) + // Valor do PIS
                         '                    <qBCprod_pis>'+ PontoVirgula(FormatFloat('0.0000',0)) +'</qBCprod_pis>'                                 + CHR(13) + // Qtde Vendida
                         '                    <vAliqProd_pis>'+ PontoVirgula(FormatFloat('0.0000',0)) + '</vAliqProd_pis>'                             + CHR(13) + // Aliq. em Reais
                         '                </PIS>'                                                                ;
                     end Else
                     begin
                        Linha := Linha + '                    <CST_pis>'+SQLLocate('PRODUTO','PRODICOD','PRODA2CSTPIS',SQLNotaFiscalItemPRODICOD.AsString)+'</CST_pis>'            + CHR(13);  // Código de Situação Tributária do PIS. 01 – Operação Tributável (base de cálculo = valor da operação alíquota normal (cumulativo/não cumulativo)); 02 - Operação Tributável (base de cálculo = valor da operação (alíquota diferenciada)); 04 - Operação Tributável(tributação monofásica (alíquota zero)); 06 - Operação Tributável (alíquota zero); 07 - Operação Isenta da Contribuição; 08 - Operação Sem Incidência da Contribuição; 09 - Operação com Suspensão da Contribuição; 99 - Outras Operações;

                       if (StrToFloat(SQLLocate('PRODUTO','PRODICOD','PRODN2ALIQPIS',SQLNotaFiscalItemPRODICOD.AsString)) > 0)  then
                       begin
                         Linha := Linha +
                         '                    <vBC_pis>'+ PontoVirgula(FormatFloat('0.00',Vlr_Tot_Bruto)) + '</vBC_pis>'                                           + CHR(13) + // Base Calculo PIS
                         '                    <pPIS>'+ PontoVirgula(FormatFloat('0.00',StrToFloat(SQLLocate('PRODUTO','PRODICOD','PRODN2ALIQPIS',SQLNotaFiscalItemPRODICOD.AsString)))) + '</pPIS>'                                                 + CHR(13) + // Aliq. em Percentual
                         '                    <vPIS>'+PontoVirgula(FormatFloat('0.00',ValordoPis)) + '</vPIS>'                                                 + CHR(13) + // Valor do PIS
                         '                    <qBCprod_pis>'+ PontoVirgula(FormatFloat('0.0000',SQLNotaFiscalItemNFITN3QUANT.Value)) +'</qBCprod_pis>'                                 + CHR(13) + // Qtde Vendida
                         '                    <vAliqProd_pis>'+ PontoVirgula(FormatFloat('0.0000',StrToFloat(SQLLocate('PRODUTO','PRODICOD','PRODN2ALIQPIS',SQLNotaFiscalItemPRODICOD.AsString)))) + '</vAliqProd_pis>'                             + CHR(13) + // Aliq. em Reais
                         '                </PIS>';
                         vPIS_Total  := vPIS_Total +  StrToFloat(FormatFloat('0.00',ValordoPis));
                       end else
                         Linha := Linha +
                         '                    <vBC_pis>'+ PontoVirgula(FormatFloat('0.00',0)) + '</vBC_pis>'                                           + CHR(13) + // Base Calculo PIS
                         '                    <pPIS>'+ PontoVirgula(FormatFloat('0.00',0)) + '</pPIS>'                                                 + CHR(13) + // Aliq. em Percentual
                         '                    <vPIS>'+PontoVirgula(FormatFloat('0.00',0)) + '</vPIS>'                                                 + CHR(13) + // Valor do PIS
                         '                    <qBCprod_pis>'+ PontoVirgula(FormatFloat('0.0000',0)) +'</qBCprod_pis>'                                 + CHR(13) + // Qtde Vendida
                         '                    <vAliqProd_pis>'+ PontoVirgula(FormatFloat('0.0000',0)) + '</vAliqProd_pis>'                             + CHR(13) + // Aliq. em Reais
                         '                </PIS>'                                                                ;
                     End;
        end;
      try
        Append(Arquivo);
        Writeln(Arquivo,Linha);
        Erro := False;
      except
        Erro := True;
      end;

      // Criar linha contendo dados dos campos do 224 ao 230 (Impostos / COFINS)
      if SQLLocate('PRODUTO','PRODICOD','PRODN2ALIQCOFINS',SQLNotaFiscalItemPRODICOD.AsString) <> '' Then
        begin
            ValordoPis:= Vlr_Tot_Bruto * ((StrToFloat(SQLLocate('PRODUTO','PRODICOD','PRODN2ALIQCOFINS',SQLNotaFiscalItemPRODICOD.AsString)))/100);
            Linha := '                <COFINS>'                                                              + CHR(13) ;
                     If SQLLocate('EMPRESA','EMPRICOD','EMPRA14CGC',EmpresaPadrao) = '11049317000139' then
                     Begin
                        Linha := Linha + '                    <CST_cofins>99</CST_cofins>'            + CHR(13)+
                         '                    <vBC_cofins>'+ PontoVirgula(FormatFloat('0.00',0)) + '</vBC_cofins>'                                     + CHR(13) + // Base Calculo COFINS
                         '                    <pCOFINS>'+ PontoVirgula(FormatFloat('0.00',0)) + '</pCOFINS>'                                           + CHR(13) + // Aliq. em Percentual
                         '                    <vCOFINS>'+PontoVirgula(FormatFloat('0.00',0)) + '</vCOFINS>'                                           + CHR(13) + // Valor do COFINS
                         '                    <qBCProd_cofins>'+ PontoVirgula(FormatFloat('0.0000',0)) +'</qBCProd_cofins>'                           + CHR(13) + // Qtde Vendida
                         '                    <vAliqProd_cofins>'+ PontoVirgula(FormatFloat('0.0000',0)) + '</vAliqProd_cofins>'                       + CHR(13) + // Aliq. em Reais
                         '                </COFINS>';
                     End Else
                     begin
                        Linha := Linha + '                    <CST_cofins>'+SQLLocate('PRODUTO','PRODICOD','PRODA2CSTCOFINS',SQLNotaFiscalItemPRODICOD.AsString)+'</CST_cofins>'                                        + CHR(13); // Código de Situação Tributária do COFINS. 01 – Operação Tributável (base de cálculo = valor da operação alíquota normal (cumulativo/não cumulativo)); 02 - Operação Tributável (base de cálculo = valor da operação (alíquota diferenciada)); 03 - Operação Tributável (base de cálculo = quantidade vendida x alíquota por unidade de produto); 04 - Operação Tributável (tributação monofásica (alíquota zero)); 06 - Operação Tributável (alíquota zero); 07 - Operação Isenta da Contribuição; 08 - Operação Sem Incidência da Contribuição; 09 - Operação com Suspensão da Contribuição; 99 - Outras Operações;

                       if ( StrToFloat(SQLLocate('PRODUTO','PRODICOD','PRODN2ALIQCOFINS',SQLNotaFiscalItemPRODICOD.AsString)) > 0 )  then
                       begin
                         Linha := Linha +
                         '                    <vBC_cofins>'+ PontoVirgula(FormatFloat('0.00',Vlr_Tot_Bruto)) + '</vBC_cofins>'                                     + CHR(13) + // Base Calculo COFINS
                         '                    <pCOFINS>'+ PontoVirgula(FormatFloat('0.00',StrToFloat(SQLLocate('PRODUTO','PRODICOD','PRODN2ALIQCOFINS',SQLNotaFiscalItemPRODICOD.AsString)))) + '</pCOFINS>'                                           + CHR(13) + // Aliq. em Percentual
                         '                    <vCOFINS>'+PontoVirgula(FormatFloat('0.00',ValordoPis)) + '</vCOFINS>'                                           + CHR(13) + // Valor do COFINS
                         '                    <qBCProd_cofins>'+ PontoVirgula(FormatFloat('0.0000',SQLNotaFiscalItemNFITN3QUANT.Value)) +'</qBCProd_cofins>'                           + CHR(13) + // Qtde Vendida
                         '                    <vAliqProd_cofins>'+ PontoVirgula(FormatFloat('0.0000',StrToFloat(SQLLocate('PRODUTO','PRODICOD','PRODN2ALIQCOFINS',SQLNotaFiscalItemPRODICOD.AsString)))) + '</vAliqProd_cofins>'                       + CHR(13) + // Aliq. em Reais
                         '                </COFINS>';
                         vCOFINS_Total := vCOFINS_Total + StrToFloat(FormatFloat('0.00',ValordoPis));
                       end else
                         Linha := Linha +
                         '                    <vBC_cofins>'+ PontoVirgula(FormatFloat('0.00',0)) + '</vBC_cofins>'                                     + CHR(13) + // Base Calculo COFINS
                         '                    <pCOFINS>'+ PontoVirgula(FormatFloat('0.00',0)) + '</pCOFINS>'                                           + CHR(13) + // Aliq. em Percentual
                         '                    <vCOFINS>'+PontoVirgula(FormatFloat('0.00',0)) + '</vCOFINS>'                                           + CHR(13) + // Valor do COFINS
                         '                    <qBCProd_cofins>'+ PontoVirgula(FormatFloat('0.0000',0)) +'</qBCProd_cofins>'                           + CHR(13) + // Qtde Vendida
                         '                    <vAliqProd_cofins>'+ PontoVirgula(FormatFloat('0.0000',0)) + '</vAliqProd_cofins>'                       + CHR(13) + // Aliq. em Reais
                         '                </COFINS>';
                    End;
        end;
      try
        Append(Arquivo);
        Writeln(Arquivo,Linha);
        Erro := False;
      except
        Erro := True;
      end;

      // Criar linha contendo dados dos campos do 231 ao 236 (Impostos / ISSQN)

      {Linha := '                <ISSQN>'                                                               + CHR(13) +
               '                    <vBC_issqn>0.00</vBC_issqn>'                                       + CHR(13) + // Base Calculo ISSQN
               '                    <vAliq>0.00</vAliq>'                                               + CHR(13) + // Aliq. em Percentual
               '                    <vISSQN>0.00</vISSQN>'                                             + CHR(13) + // Valor do ISSQN
               '                    <cMunFg_issqn>0</cMunFg_issqn>'                                    + CHR(13) + // Cod.Municipio
               '                    <cListServ>0</cListServ>'                                          + CHR(13) + // Informar o código da lista de serviços da LC 116/03 em que se classifica o serviço.
               '                    <cSitTrib>I</cSitTrib>'                                            + CHR(13) + // Informar o código da tributação do ISSQN: N – NORMAL; R – RETIDA; S – SUBSTITUTA; I – ISENTA
               '                </ISSQN>'                                                              + CHR(13) +}
       Linha :='            </imposto>'                                                                + CHR(13) ;
               if Length(Trim(DM.SQLLocate('PRODUTO','PRODICOD','PRODTEXTENDIDO',SQLNotaFiscalItemPRODICOD.AsString))) > 60 then
                 Linha := Linha + '            <infADProd>'+ ConverteAcentos(Trim(DM.SQLLocate('PRODUTO','PRODICOD','PRODTEXTENDIDO',SQLNotaFiscalItemPRODICOD.AsString))) +'</infADProd>'    + CHR(13)
               else
                   Linha:= Linha + '            <infADProd />'    + CHR(13);
               Linha := Linha +
               '        </SDTNFE001.detItem>'                                                          + CHR(13);
      try
        Append(Arquivo);
        Writeln(Arquivo,Linha);
        Erro := False;
      except
        Erro := True;
      end;

      SQLNotaFiscalItem.Next;
    end;
  SQLNotaFiscalItem.Close;
  SQLNotaFiscal.SQL.Text := 'SELECT * FROM NOTAFISCALITEM WHERE NOFIA13ID = :NOFIA13ID';
  SQLNotaFiscalitem.RequestLive := True;
  Dm.ImportandoPedidoVenda := False;

  // Criar linha contendo dados dos campos do 238 ao 266 (TOTAIS NFe)
  Linha := '    </det>'                                                                                + CHR(13) +
           '    <total>'                                                                               + CHR(13) +
           '        <ICMStot>'                                                                         + CHR(13) +
           '            <vBC_ttlnfe>'+ PontoVirgula(FormatFloat('##0.00',vBC_Total)) +'</vBC_ttlnfe>'          + CHR(13) + // Total Base Icms
           '            <vICMS_ttlnfe>'+ PontoVirgula(FormatFloat('##0.00',vICMS_Total)) +'</vICMS_ttlnfe>'          + CHR(13) + // Vlr. Total Icms
           '            <vBCST_ttlnfe>'+ PontoVirgula(FormatFloat('##0.00',vBCST_Total)) +'</vBCST_ttlnfe>'      + CHR(13) + // Vlr. Total Base Icms Subst Tribut
           '            <vST_ttlnfe>'+ PontoVirgula(FormatFloat('##0.00',vST_Total)) +'</vST_ttlnfe>'              + CHR(13) + // Vlr. Total Icms Subst Tribut
           '            <vProd_ttlnfe>'+ PontoVirgula(FormatFloat('##0.00',vProd_Total)) +'</vProd_ttlnfe>'       + CHR(13) + // Vlr. Total Produtos
           '            <vFrete_ttlnfe>'+ PontoVirgula(FormatFloat('##0.00',vFrete_Total)) +'</vFrete_ttlnfe>'       + CHR(13) + // Vlr. Total Frete
           '            <vSeg_ttlnfe>'+ PontoVirgula(FormatFloat('##0.00',SQLTemplateNOFIN2VLRSEGURO.value))+'</vSeg_ttlnfe>'          + CHR(13) + // Vlr. Total Seguro
           '            <vDesc_ttlnfe>'+ PontoVirgula(FormatFloat('##0.00',vDesc_total)) +'</vDesc_ttlnfe>'          + CHR(13) + // Vlr. Total Desconto
           '            <vII_ttlnfe>'+ PontoVirgula(FormatFloat('##0.00',vII_Total)) +'</vII_ttlnfe>'                                                 + CHR(13) + // Vlr. Total II
           '            <vIPI_ttlnfe>'+ PontoVirgula(FormatFloat('##0.00',vIPI_Total)) +'</vIPI_ttlnfe>'             + CHR(13) + // Vlr. Total IPI
           '            <vPIS_ttlnfe>'+ PontoVirgula(FormatFloat('##0.00',vPIS_Total)) +'</vPIS_ttlnfe>'                                               + CHR(13) + // Vlr. Total PIS
           '            <vCOFINS_ttlnfe>'+ PontoVirgula(FormatFloat('##0.00',vCOFINS_Total)) +'</vCOFINS_ttlnfe>'                                         + CHR(13) + // Vlr. Total Cofins
           '            <vOutro>'+ PontoVirgula(FormatFloat('##0.00',SQLTemplateNOFIN2VLROUTRASDESP.value)) +'</vOutro>'                + CHR(13) + // Vlr. outras despesas
           '            <vNF>'+ PontoVirgula(FormatFloat('##0.00',SQLTemplateNOFIN2VLRNOTA.value)) +'</vNF>'                            + CHR(13) + // Vlr. Total Nota
           '        </ICMStot>'                                                                        + CHR(13) +
           {
           '        <ISSQNtot>'                                                                        + CHR(13) +
           '            <vServ>'+ PontoVirgula(FormatFloat('##0.00',SQLTemplateNOFIN2VLRSERVICO.Value)) +'</vServ>'                     + CHR(13) + // Vlr. Total Servicos
           '            <vBC_ttlnfe_iss>'+ PontoVirgula(FormatFloat('##0.00',SQLTemplateNOFIN2VLRSERVICO.Value)) +'</vBC_ttlnfe_iss>'   + CHR(13) + // Base Servicos
           '            <vISS>'+ PontoVirgula(FormatFloat('##0.00',SQLTemplateNOFIN2VLRISSQN.Value)) +'</vISS>'                         + CHR(13) + // Vlr.Total Servicos
           '            <vPIS_servttlnfe>0.00</vPIS_servttlnfe>'                                       + CHR(13) + // Vlr PIS sobre servico
           '            <vCOFINS_servttlnfe>0.00</vCOFINS_servttlnfe>'                                 + CHR(13) + // Vlr COFINS sobre servico
           '        </ISSQNtot>'                                                                       + CHR(13) +
           }
           '    </total>'                                                                              ;
  try
    Append(Arquivo);
    Writeln(Arquivo,Linha);
    Erro := False;
  except
    Erro := True;
  end;

  // Criar linha contendo dados dos campos do 267 ao 295 (Transporte)
  if SQLTemplateNOFICFRETEPORCONTA.Value = 'C' then
    TipoFrete := '0'
  else
    TipoFrete := '1';

  Linha := '    <transp>'                                                                                + CHR(13) +
           '        <modFrete>'+ TipoFrete +'</modFrete>'                                                + CHR(13) + // Tipo frete: 0 = Emitente; 1 = Destinatario
           '        <transporta>'                                                                        + CHR(13) ;
           If SQLTemplateTransportadoraCGCLookUp.AsString <> '' then
              linha := linha + '            <CNPJ_transp>'+ SoNumeros(SQLTemplateTransportadoraCGCLookUp.AsString) +'</CNPJ_transp>'    + CHR(13) ;
           if SQLTemplateTransportadoraCPF.AsString <> '' then
              linha := linha + '            <CPF_transp>'+ SoNumeros(SQLTemplateTransportadoraCPF.AsString) + '</CPF_transp>'                                                                  + CHR(13);

           linha := linha + '            <xNome_transp>'+ ConverteAcentos(SQLTemplateTransportadoraLookup.AsString) +'</xNome_transp>'        + CHR(13) ;
           if SQLTemplateTransportadoraIELookUp.asstring <> '' then
             linha := linha + '            <IE_transp>' + Sonumeros(SQLTemplateTransportadoraIELookUp.AsString) + '</IE_transp>'           + CHR(13) ;
           linha := linha + '            <xEnder>'+ConverteAcentos(SQLTemplateTransportadoraEnderecoLookUp.asstring)+'</xEnder>'               + CHR(13) +
           '            <xMun_transp>'+ConverteAcentos(SQLTemplateTransportadoraCidadeLookUp.AsString)+'</xMun_transp>'                       + CHR(13) +
           '            <UF_transp>'+SQLTemplateTransportadoraEstadoLookUp.asstring+'</UF_transp>'                           + CHR(13) +
           '        </transporta>'                                                                       + CHR(13) +
	 {  '        <retTransp>'                                                                         + CHR(13) +
	   '            <vServ_transp>0.00</vServ_transp>'                                               + CHR(13) + // Vlr. Servico
	   '            <vBCRet>0.00</vBCRet>'                                                           + CHR(13) + // Base Ret.ICMS
	   '            <pICMSRet>0.00</pICMSRet>'                                                       + CHR(13) + // Aliq.Retencao
	   '            <vICMSRet>0.00</vICMSRet>'                                                       + CHR(13) + // Vlr. Icms REtido
	   '            <CFOP_transp>0</CFOP_transp>'                                                    + CHR(13) + // CFOP
	   '            <cMunFG_transp>0</cMunFG_transp>'                                                + CHR(13) + // Cod.Muni Gerador fato
	   '        </retTransp>'                                                                        + CHR(13) +
    }
	   '        <veicTransp>'                                                                        + CHR(13) +
	   '            <placa>'+SQLTemplateNOFIA8PLACAVEIC.AsString+'</placa>'                                                                       + CHR(13) +
	   '            <UF_veictransp>'+ SQLTemplateTransportadoraEstadoLookUp.AsString +'</UF_veictransp>'  + CHR(13) +
	 //  '            <RNTC />'                                                                             + CHR(13) + // REgistro nacional transp.cargas
	   '        </veicTransp>'                                                                       + CHR(13) +
     '        <vol>'                                                                      + CHR(13) +
     '            <SDTNFE001.transp.volItem>'                                             + CHR(13) +
     '                <qVol>'+Trim(SQLTemplateNOFIN3QUANT.AsString)+'</qVol>'                                                              + CHR(13) ;
     if SQLTemplateNOFIA20ESPECIE.AsString <> '' then
	     Linha := linha + '		            <esp>'+Trim(SQLTemplateNOFIA20ESPECIE.asstring)+'</esp>'                                                                     + CHR(13) ;
     if SQLTemplateNOFIA15MARCA.AsString <> '' then
	     Linha := Linha + '		            <marca>'+Trim(SQLTemplateNOFIA15MARCA.asstring)+'</marca>'                                                                   + CHR(13) ;
	   Linha := Linha + '		            <nVol>0</nVol>'                                                              + CHR(13) +
	   '		            <pesoL_transp>'+PontoVirgula(FormatFloat('##0.000',SQLTemplateNOFIN3PESLIQ.value))+'</pesoL_transp>'                                              + CHR(13) +
	   '		            <pesoB_transp>'+PontoVirgula(FormatFloat('##0.000',SQLTemplateNOFIN3PESBRUT.value))+'</pesoB_transp>'                                              + CHR(13) +
	   '	        </SDTNFE001.transp.volItem>'                                                     + CHR(13) +
	   '        </vol>'                                                                     + CHR(13) +
	   '    </transp>'                                                                               ;
  try
    Append(Arquivo);
    Writeln(Arquivo,Linha);
    Erro := False;
  except
    Erro := True;
  end;

  // Exportar
  if sqltemplateNOFIA2UFEMBARQUE.Value <> '' then
    begin
      Linha := '    <exporta>'                                                                 + CHR(13) +
               '       <UFEmbarq>'+sqltemplateNOFIA2UFEMBARQUE.Value+'</UFEmbarq>'             + CHR(13) +
               '       <xLocEmbarq>'+SQLTemplateNOFIA60LOCALEMBARQUE.Value+'</xLocEmbarq>'     + CHR(13) +
               '    </exporta>';
      try
        Append(Arquivo);
        Writeln(Arquivo,Linha);
        Erro := False;
      except
        Erro := True;
      end;
    end;

  // Criar linha contendo dados dos campos do 296 ao 295 (Cobranca)
  SQLContasReceber.Close;
  SQLContasReceber.Open ;
  SQLContasReceber.First;
  linha := '';
  if not SqlContasReceber.Eof then
    begin
      Linha:= '    <cobr>' +CHR(13)+
              '	    <dup>' + CHR(13);

      while not SQLContasReceber.Eof do
      begin
         Linha := Linha +
         '	       	<SDTNFE001.cobr.dupItem>'  + CHR(13) +
         '                <nDup>'+SQLContasReceberCTRCA30NRODUPLICBANCO.AsString+'</nDup>'   + chr(13) +
         '	            <dVenc>'+FormatDateTime('yyyy-mm-dd',SQLContasReceberCTRCDVENC.AsDateTime)+'</dVenc>'                                                   + CHR(13) +
         '	            <vDup>'+PontoVirgula(FormatFloat('##0.00',SQLContasReceberCTRCN2VLR.value))+'</vDup>'                                                          + CHR(13) +
         '	        </SDTNFE001.cobr.dupItem>';
          try
            Append(Arquivo);
            Writeln(Arquivo,Linha);
            Erro := False;
          except
            Erro := True;
          end;
          Linha := '';
          SQLContasReceber.Next;
      end;
      SQLContasReceber.Close;
      Linha :=  '	    </dup>'+CHR(13)+
                '    </cobr>';
      try
        Append(Arquivo);
        Writeln(Arquivo,Linha);
        Erro := False;
      except
        Erro := True;
      end;
    end;

 // informaçoes adicionais
  Linha:= '    <infAdic>' +CHR(13)+
          '        <infCpl>'+TrocaEnter(ConverteAcentos(SQLTemplateNOFIA255OBS.AsString))+'  '+TrocaEnter(ConverteAcentos(SQLTEMPLATENOFIAOBSCORPONF.AsString))+'</infCpl>'   + chr(13) +
          '    </infAdic>' + CHR(13) +
          '</SDTNFE001>';
  try
    Append(Arquivo);
    Writeln(Arquivo,Linha);
    Erro := False;
  except
    Erro := True;
  end;
  SQLTemplate.Edit;
  SQLTemplateNOFICSTNFE.Value := '0';
  SQLTemplate.Post;
  // Fechar Arquivo
  CloseFile(Arquivo);
  Result := True;
end;

Function TFormCadastroNotaFiscal.TrocaEnter(nTxt:String):String;
begin
  if trim(ntxt) = '' then
    Result := ''
  else
  begin
    While Pos(#13,nTxt) > 0 do
    begin
      Insert(' | ',nTxt,Pos(#13,nTxt));
      Delete(nTxt,Pos(#13,nTxt),Length(#13));
    end;
    While Pos(#10,nTxt) > 0 do
      Delete(nTxt,Pos(#10,nTxt),Length(#10));

    Result := nTxt;
  end;
end;

procedure TFormCadastroNotaFiscal.MnNFECancelamentoNotaEletronicaClick(
  Sender: TObject);
var i: integer;
  lStartUpInfo:TStartUpInfo;
  dir, direxec:string;
begin
  inherited;
  if not Pergunta('Nao','Confirma o Cancelamento da Nota Fiscal Eletrônica Atual?') then
    Exit;

  MontaXMLCancelamento;


  if FileExists('C:\Migrate\GNFe\GNFeIntegrador.exe') then
    begin
      FormProcessandoNFE:= TFormProcessandoNFE.Create(Self);
      With lStartUpInfo do
        begin
           cb:=2048;
           lpReserved:=NIL;
           lpDesktop:=NIL;
           lpTitle:=NIL;
           dwFlags:=STARTF_USESHOWWINDOW;
           wShowWindow:=SW_SHOWNORMAL;//SW_Hide; //para não aparecer na tela (background)!
           cbReserved2:=0;
           lpReserved2:=NIL;
        end;

        getDir(0,dir);  //armazena diretório atual
        ChDir('c:\Migrate\GNFe');  //altera diretório de execução
        getdir(0,DirExec);

        if not CreateProcess(NIL,PChar('GNFeIntegrador.exe '+
                                               SQLTemplateEMPRICOD.AsString +
                                               ' 0 ' +
                                               Copy(Trim(SQLTemplateSERIA5COD.AsString),length(Trim(SQLTemplateSERIA5COD.AsString)),1) + ' ' +
                                               SQLTemplateNOFIINUMERO.AsString +
                                               ' 0' +
                                               ' 0' +
                                               ' 0' +
                                           ' C'), NIL, NIL, False, 0, NIL, nil , lStartUpInfo, lProcesso) then
          ShowMessage('Erro para executar CreateProcess abrindo o GNFeIntegrador.exe.'+#13+#10+
          'Tente Novamente.')
        Else
          begin
            While 1=1 Do Begin
                if GetExitCodeProcess(lProcesso.hProcess, lExitCode) then
                  if (lExitCode<>STILL_ACTIVE) then
                    Break
            end;
          End;
        ChDir(dir);  //retorna ao diretório do sistema
        FormProcessandoNFE.Free;
    end;
  if Pergunta('Sim','Deseja verificar o retorno agora ?') then
    MnNFERetornoNotaEletronica.Click;

  MnCancelarNotadeFiscalClick(Sender);

end;

procedure TFormCadastroNotaFiscal.MnNFERetornoNotaEletronicaClick(
  Sender: TObject);
var   Texto : TextFile;
  Teste, Info, CdEmpresa, Serie, NroNota, CdErro, DescrErro, Status : string;
    I:Integer;
begin
  inherited;
  if not Pergunta('Nao','Confirma a leitura do arquivo de retorno de Notas Fiscais Eletrônicas?') then
    Exit;

  ListaRetornoXML.Directory := 'C:\Migrate\Saida';
  ListaRetornoXML.Mask:='*.XML';
  ListaRetornoXML.Update;

  if ListaRetornoXML.Items.Count = 0 then
    begin
      ShowMessage('Não existem arquivos a serem lidos!');
      Exit;
    end;

  MakeWindow(ListaRetornoXML.Items.Count,'Lendo arquivo(s) de retorno NFe!');
  for I:=0 To ListaRetornoXML.Items.Count-1 do
    begin
      try
        SetProgress(I);
        // Rotina para Capturar os Dados Importantes de Retorno
        AssignFile(Texto,ListaRetornoXML.Items[I]);
        Reset(Texto);
        while not EOF(Texto) do
          begin
            Readln(Texto,Info);

            Teste := Copy(Info, 3,14) ;
            if Teste  = '<NFeEmpCodigo>' then
               CdEmpresa := Copy(Info, 17,Length(Info) - 31) ;

            Teste := Copy(Info, 3,13) ;
            if Teste  = '<NfeNtfSerie>' then
               Serie := Copy(Info, 16,Length(Info) - 29) ;

            Teste := Copy(Info, 3,14) ;
            if Teste  = '<NfeNtfNumero>' then
               NroNota := Copy(Info, 17,Length(Info) - 31) ;

            Teste := Copy(Info, 3,13) ;
            if Teste = '<NfeRetSefaz>' then
               CdErro := Copy(Info, 16,Length(Info) - 29) ;

            Teste := Copy(Info, 3,11) ;
            if Teste = '<NfeMotivo>' then
               DescrErro := Copy(Info, 14,Length(Info) - 25) ;

            Teste := Copy(Info, 3,11) ;
            if Teste = '<NfeStatus>' then
               Status := Copy(Info, 14,Length(Info) - 25) ;
          end;
        CloseFile(Texto);
        // Atualizar a Nota Fiscal Correspondente
        dm.SQLTemplate.Close;
        dm.SQLTemplate.sql.Clear;
        dm.SQLTemplate.SQL.Add('Update NotaFiscal set NOFICSTNFE = "'+Status+'", NOFIA5CODRETORNO = "'+CdErro+'", NOFITRETORNO = "'+DescrErro+'"');
        dm.SQLTemplate.SQL.Add('Where EMPRICOD = '+CdEmpresa+' AND SERIA5COD = "'+Serie+'" AND NOFIINUMERO = '+NroNota);
        dm.SQLTemplate.ExecSQL;
      except
        Application.ProcessMessages;
      end;
      try
        DestroyWindow;
        RenameFile(ListaRetornoXML.Items[I],copy(ListaRetornoXML.Items[I],1,length(ListaRetornoXML.Items[I])-4)+'.LDO');
      except
        Application.ProcessMessages;
      end;

    end;
    if (ComboSerieNF.Text <> '') And (ComboSerieNF.Text <> '...')then
      BTNLocalizar.Click;

end;

function TFormCadastroNotaFiscal.PontoVirgula( xText:String):String;
var PosVirg: Integer;
begin
  PosVirg := Pos(',',xText);
  While Pos(',',xText) > 0 do
    Delete(xText,Pos(',',xtext),1);
  insert('.',xtext, PosVirg);
  Result:= xText;
end;

procedure TFormCadastroNotaFiscal.rocarStatusdaNFeparaNull1Click(
  Sender: TObject);
var Erro : Boolean;
begin
  inherited;
    If SQLTemplate.FindField('NOFIA15PROTOCOLO').asString <> '' Then
      Begin
        Informa('Não são permitidas Alterações em Notas Fiscais EFETIVADAS.');
        Abort;
      End;
  if (SQLTemplateNOFICSTNFE.AsString = '0') or (SQLTemplateNOFICSTNFE.AsString = '6') then
    begin
    if (not SQLTemplateNOFICSTNFE.isnull) and (not SQLTemplate.IsEmpty) then
      begin
        try
          dm.SQLTemplate.Close;
          dm.SQLTemplate.sql.Clear;
          dm.SQLTemplate.SQL.Add('Update NotaFiscal set NOFICSTNFE = null where NOFIA13ID = "'+ SQLTemplateNOFIA13ID.Value+'"');
          dm.SQLTemplate.ExecSQL;
          Erro := False;
        except
          Erro := True;
          Application.ProcessMessages;
          ShowMessage('Não foi possível trocar o Status da Nota Fiscal Eletrônica, verifique!');
        end;
        SQLTemplate.Close;
      end;
    end else
      Showmessage('Somente é permitido trocar o Status da NFe para Null caso o Status atual seja 0 ou 6.');
end;

procedure TFormCadastroNotaFiscal.FormShow(Sender: TObject);
var i: integer;
begin
  inherited;
  qryEmpresa.ParamByName('EMPRICOD').AsInteger := EmpresaCorrente;
  cdsEmpresa.Close;
  cdsEmpresa.Open;
end;

procedure TFormCadastroNotaFiscal.MontaXMLCancelamento;
var CaminhoNomeArquivo, Linha : String;
    EntradaSaida, Cpf_Dest, Cnpj_Dest, IE_Dest, CFOP, CdBarras, TipoFrete, Descr_Prod, Unidade, SitTrib : String;
    Erro : boolean;
    Vlr_Tot_Bruto, ValordoPis : double;
begin
  CaminhoNomeArquivo := 'C:\Migrate\Entrada\NFE'+Preenche(SQLTemplateEMPRICOD.AsString,'0',3,0)+
                                                      Preenche(SQLTemplateNOFIINUMERO.AsString,'0',9,0)+
                                                      Preenche(cOPY(SQLTemplateSERIA5COD.asstring,0,3),'0',3,0)+'.xml';
  try
    AssignFile(Arquivo,CaminhoNomeArquivo);
    Rewrite(Arquivo);
    Reset(Arquivo);
    Erro := False;
  except
    Erro := True;
  end;

  // Criar linha contendo dados dos campos do 1 ao 7  = "NF-e"
  Linha :=   '<SDTNFE001 xmlns="NF-e">'                                            + CHR(13) +
 // Linha :=   '<SDTNFE001 xmlns="urn:migrategnfe-schema">'                                            + CHR(13) +
             '    <Acao>C</Acao>'                                                                    + CHR(13) + // E=Envio, C=Cancelamento
             '    <EmpCodigo>' + SQLTemplateEMPRICOD.AsString +'</EmpCodigo> '                       + CHR(13) + // Cd.Empresa
             '    <NtfNumero>' + SQLTemplateNOFIINUMERO.AsString +'</NtfNumero> '                    + CHR(13) + // Nro Nota Fiscal
             '    <NtfSerie>'  + Trim(SQLTemplateSERIA5COD.AsString) +'</NtfSerie> '                 + CHR(13) + // Serie
             '</SDTNFE001>';
  try
    Append(Arquivo);
    Writeln(Arquivo,Linha);
    Erro := False;
  except
    Erro := True;
  end;
  // Fechar Arquivo
  CloseFile(Arquivo);
end;


procedure TFormCadastroNotaFiscal.DBEdit25KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    if (DBEdit25.text = '  /  /       :  ') and (SQLTemplate.State in ([dsInsert, dsEdit])) then
      SQLTemplateNOFIDSAIDAENTRADA.Clear;
end;

procedure TFormCadastroNotaFiscal.GerarArquivosdeNotasProcessadaparaContabilidade1Click(
  Sender: TObject);
var  DataInicial, DataFinal : String;
  dir, direxec:string;

begin
  inherited;
   if not DirectoryExists('C:\unit\NotaExporta') then
   begin
      Showmessage('Crie a pasta C:\UNIT\NOTAEXPORTA');
      Exit;
   end;
   if FileExists('C:\Migrate\GNFe\GNFeExportador.exe') then
      begin
        DataInicial := InputBox('Data Inicial','Informe Data Inicial ( xx/xx/xx )','');
        DataFinal   := InputBox('Data Final','Informe Data Final ( xx/xx/xx )','');
        Try
          StrToDate(DataInicial);
          StrToDate(DataFinal);
          if (Length(DataInicial) > 8) or (Length(DataFinal) > 8) then
          begin
            Showmessage('Formato das Datas Inválido (99/99/99)'+#13+#10+'Processo Cancelado.');
            Exit;
          end
        Except
        Begin
          Showmessage('Intervalo de Datas Inválido'+#13+#10+'Processo Cancelado.');
          Exit;
        end ;
        END;

          getDir(0,dir);  //armazena diretório atual
          ChDir('c:\Migrate\GNFe');  //altera diretório de execução
          getdir(0,DirExec);
          WinExec(PChar('GNFeExportador.exe '+Trim(Dm.SQLTerminalAtivoEMPRICOD.AsString)+ ' '+Datainicial+' '+DataFinal+ ' C:\Unit\NotaExporta 3'),SW_SHOW	);

          ChDir(dir);  //retorna ao diretório do sistema
    end else
      Showmessage('Não Foi Possivel encontrar o arquivo C:\MIGRATE\GNFE\GNFeEXPORTADOR.EXE');
end;

procedure TFormCadastroNotaFiscal.DBEdit50KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  var vISSQN:Extended;
begin
  inherited;
  If KEY = 123 Then // F12
  begin
    SQLTemplate.Edit;
    SQLTemplateNOFIN2PERCMAODEOBRA.Value    := 50;
    SQLTemplateNOFIN2PERCMATERIAL.Value     := 50;
    SQLTemplateNOFIN2PERCINSS.Value         := 11;
    SQLTemplateNOFIN2PERCCOFINS.Value       := 3;
    SQLTemplateNOFIN2PERCPIS.Value          := 0.65;
    SQLTemplateNOFIN2PERCIR.Value           := 1.5;
    SQLTemplateNOFIN2PERCCONTRSOCIAL.Value  := 1;
    Try
      vISSQN := StrToFloat(SQLLocate('CIDADE','CIDAA60NOME','CIDAN3ISSQN','"'+SQLTemplate.FieldbyName('CLIFORNEMPCIDADELOOKUP').AsString+'"'));
    except
      vISSQN := 0;
    end;
    SQLTemplateNOFIN2PERCISSQN.Value := vISSQN;

  end;
end;

procedure TFormCadastroNotaFiscal.SQLTemplateNOFIN2PERCCONTRSOCIALChange(
  Sender: TField);
begin
  inherited;
  SQLTemplateNOFIN3VLRCONTRSOCIAL.Value    := SQLTemplateNOFIN2VLRNOTA.value  * (SQLTemplateNOFIN2PERCCONTRSOCIAL.Value / 100);
end;

procedure TFormCadastroNotaFiscal.SQLTemplateNOFIN2PERCIRChange(
  Sender: TField);
begin
  inherited;
  SQLTemplateNOFIN3VLRIR.Value    := SQLTemplateNOFIN2VLRNOTA.value  * (SQLTemplateNOFIN2PERCIR.Value / 100);
end;

procedure TFormCadastroNotaFiscal.SQLTemplateNOFIN2PERCPISChange(
  Sender: TField);
begin
  inherited;
  SQLTemplateNOFIN3VLRPIS.Value    := SQLTemplateNOFIN2VLRNOTA.value  * (SQLTemplateNOFIN2PERCPIS.Value / 100);
end;

procedure TFormCadastroNotaFiscal.SQLTemplateNOFIN2PERCINSSChange(
  Sender: TField);
begin
  inherited;
  SQLTemplateNOFIN3VLRINSS.Value    := SQLTemplateNOFIN2VLRNOTA.value  * (SQLTemplateNOFIN2PERCINSS.Value / 100);
end;

procedure TFormCadastroNotaFiscal.SQLTemplateNOFIN2PERCMATERIALChange(
  Sender: TField);
begin
  inherited;
  SQLTemplateNOFIN3VLRMATERIAL.Value    := SQLTemplateNOFIN2VLRNOTA.value * (SQLTemplateNOFIN2PERCMATERIAL.Value / 100);
end;

procedure TFormCadastroNotaFiscal.SQLTemplateNOFIN2PERCMAODEOBRAChange(
  Sender: TField);
begin
  inherited;
  SQLTemplateNOFIN3VLRMAODEOBRA.Value    := SQLTemplateNOFIN2VLRNOTA.value * (SQLTemplateNOFIN2PERCMAODEOBRA.Value / 100);
  SQLTemplateNOFIN3VLRMATERIAL.Value     := 100 - SQLTemplateNOFIN2PERCMAODEOBRA.Value ;
end;

procedure TFormCadastroNotaFiscal.SQLTemplateNOFIN2PERCCOFINSChange(
  Sender: TField);
begin
  inherited;
  SQLTemplateNOFIN3VLRCOFINS.Value    := SQLTemplateNOFIN2VLRNOTA.value  * (SQLTemplateNOFIN2PERCCOFINS.Value / 100);
end;

procedure TFormCadastroNotaFiscal.Imprimir1Click(Sender: TObject);
Var nFunrural:Extended;
begin
  inherited;
  nFunrural := StrToFloat(InputBox('Funrural','Informe Percentual Funrural:','2,30'));
  SQLTemplate.Edit;
  SQLTemplateNOFIA255OBS.AsString := SQLTemplateNOFIA255OBS.AsString + ' *** Desconto '+FormatFloat(',0.00',nFunrural)+'% Ref. Funrural - R$ '+
  FormatFloat(',0.00',SQLTemplateNOFIN2VLRPRODUTO.Value * (nFunrural/100))+ ' *** ';
  SQLTemplate.Post;
end;


function TFormCadastroNotaFiscal.CalculoSubstituicaoTributaria: String;
var Retorno: Extended;
begin
  Retorno := 0;
  Retorno := SQLNotaFiscalItemNFITN2VLRSUBS.value/SQLNotaFiscalItemNFITN3QUANT.Value;
  Retorno := Retorno + (SQLNotaFiscalItemNFITN2VLRIPI.Value/SQLNotaFiscalItemNFITN3QUANT.Value);

  if Retorno > 0 then
    CalculoSubstituicaoTributaria := ' - VF: '+FormatFloat(',0.00',Retorno+(SQLNotaFiscalItemNFITN2VLRUNIT.value))
  else
    CalculoSubstituicaoTributaria := '';
end;


procedure TFormCadastroNotaFiscal.SQLTemplateBeforeOpen(DataSet: TDataSet);
begin
  inherited;
//  SQLTemplate.MacroByName('MEmpresa').Value := 'EMPRICOD = ' + EmpresaPadrao;
end;

procedure TFormCadastroNotaFiscal.BtDadosPadroesClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFormTelaConfigPedidos,FormTelaConfigPedidos);
  FormTelaConfigPedidos.ShowModal;
  if dm.VendedorAtualPedidos > 0 then
    begin
      LbVendedorAtual.Caption := 'Vendedor Atual '+ intToStr(dm.VendedorAtualPedidos);
      LbVendedorAtual.Update;
    end
  else
    begin
      LbVendedorAtual.Caption := 'Vendedor Atual ';
      LbVendedorAtual.Update;
    end;
  if dm.RotaAtualPedidos > 0 then
    begin
      LbRotaAtual.Caption := 'Rota Atual '+ intToStr(dm.RotaAtualPedidos);
      LbRotaAtual.Update;
    end
  else
    begin
      LbRotaAtual.Caption := 'Rota Atual ';
      LbRotaAtual.Update;
    end;
  if dm.TranspAtualPedidos > 0 then
    begin
      LbTranspAtual.Caption := 'Transp Atual '+ intToStr(dm.TranspAtualPedidos);
      LbTranspAtual.Update;
    end
  else
    begin
      LbTranspAtual.Caption := 'Transp Atual ';
      LbTranspAtual.Update;
    end;
  if dm.VeiculoAtualPedidos <> '' then
    begin
      LbVeiculo.Visible := True;
      LbVeiculo.Caption := 'Veiculo Atual '+ dm.VeiculoAtualPedidos;
      LbVeiculo.Update;
    end
  else
    begin
      LbVeiculo.Caption := 'Veiculo Atual ';
      LbVeiculo.Update;
    end;
  if dm.DataEmissaoPedidos <> null then
    begin
      LbEmissao.Caption := 'Emissão '+ FormatDateTime('dd/mm/yy',dm.DataEmissaoPedidos);
      LbEmissao.Update;
    end
  else
    begin
      LbEmissao.Caption := 'Emissão ';
      LbEmissao.Update;
    end;
  if dm.DataEntregaPedidos <> null then
    begin
      LbDataEntrega.Caption := 'Entrega '+ FormatDateTime('dd/mm/yy hh:mm',dm.DataEntregaPedidos);
      LbDataEntrega.Update;
    end
  else
    begin
      LbDataEntrega.Caption := 'Entrega ';
      LbDataEntrega.Update;
    end;
end;

function TFormCadastroNotaFiscal.RetornaCofins(Produto:String):String;
begin
end;

function TFormCadastroNotaFiscal.RetornaPis(Produto:String):String;
begin
 if SQLLocate('PRODUTO','PRODICOD','PRODA2CSTPIS', Produto) = '01' then ;
 if SQLLocate('PRODUTO','PRODICOD','PRODA2CSTPIS', Produto) = '02' then ;
end;

function TFormCadastroNotaFiscal.RetornaPais(nPais:Integer):String;
begin
  case nPais of
    00132  : Result := 'AFEGANISTAO';
    00175  : Result := 'ALBANIA, REPUBLICA  DA';
    00230  : Result := 'ALEMANHA';
    00310  : Result := 'BURKINA FASO';
    00370  : Result := 'ANDORRA';
    00400  : Result := 'ANGOLA';
    00418  : Result := 'ANGUILLA';
    00434  : Result := 'ANTIGUA E BARBUDA';
    00477  : Result := 'ANTILHAS HOLANDESAS';
    00531  : Result := 'ARABIA SAUDITA';
    00590  : Result := 'ARGELIA';
    00639  : Result := 'ARGENTINA';
    00647  : Result := 'ARMENIA, REPUBLICA DA';
    00655  : Result := 'ARUBA';
    00698  : Result := 'AUSTRALIA';
    00728  : Result := 'AUSTRIA';
    00736  : Result := 'AZERBAIJAO, REPUBLICA DO';
    00779  : Result := 'BAHAMAS, ILHAS';
    00809  : Result := 'BAHREIN, ILHAS';
    00817  : Result := 'BANGLADESH';
    00833  : Result := 'BARBADOS';
    00850  : Result := 'BELARUS, REPUBLICA DA';
    00876  : Result := 'BELGICA';
    00884  : Result := 'BELIZE';
    00906  : Result := 'BERMUDAS';
    00930  : Result := 'MIANMAR (BIRMANIA)';
    00973  : Result := 'BOLIVIA, ESTADO PLURINACIONAL DA';
    00981  : Result := 'BOSNIA-HERZEGOVINA (REPUBLICA DA)';
    01015  : Result := 'BOTSUANA';
    01058  : Result := 'BRASIL';
    01082  : Result := 'BRUNEI';
    01112  : Result := 'BULGARIA, REPUBLICA DA';
    01155  : Result := 'BURUNDI';
    01198  : Result := 'BUTAO';
    01279  : Result := 'CABO VERDE, REPUBLICA DE';
    01376  : Result := 'CAYMAN, ILHAS';
    01414  : Result := 'CAMBOJA';
    01457  : Result := 'CAMAROES';
    01490  : Result := 'CANADA';
    01504  : Result := 'GUERNSEY, ILHA DO CANAL (INCLUI ALDERNEY E SARK)';
    01508  : Result := 'JERSEY, ILHA DO CANAL';
    01511  : Result := 'CANARIAS, ILHAS';
    01538  : Result := 'CAZAQUISTAO, REPUBLICA DO';
    01546  : Result := 'CATAR';
    01589  : Result := 'CHILE';
    01600  : Result := 'CHINA, REPUBLICA POPULAR';
    01619  : Result := 'FORMOSA (TAIWAN)';
    01635  : Result := 'CHIPRE';
    01651  : Result := 'COCOS(KEELING),ILHAS';
    01694  : Result := 'COLOMBIA';
    01732  : Result := 'COMORES, ILHAS';
    01775  : Result := 'CONGO';
    01830  : Result := 'COOK, ILHAS';
    01872  : Result := 'COREIA (DO NORTE), REP.POP.DEMOCRATICA';
    01902  : Result := 'COREIA (DO SUL), REPUBLICA DA';
    01937  : Result := 'COSTA DO MARFIM';
    01953  : Result := 'CROACIA (REPUBLICA DA)';
    01961  : Result := 'COSTA RICA';
    01988  : Result := 'COVEITE';
    01996  : Result := 'CUBA';
    02291  : Result := 'BENIN';
    02321  : Result := 'DINAMARCA';
    02356  : Result := 'DOMINICA,ILHA';
    02399  : Result := 'EQUADOR';
    02402  : Result := 'EGITO';
    02437  : Result := 'ERITREIA';
    02445  : Result := 'EMIRADOS ARABES UNIDOS';
    02453  : Result := 'ESPANHA';
    02461  : Result := 'ESLOVENIA, REPUBLICA DA';
    02470  : Result := 'ESLOVACA, REPUBLICA';
    02496  : Result := 'ESTADOS UNIDOS';
    02518  : Result := 'ESTONIA, REPUBLICA DA';
    02534  : Result := 'ETIOPIA';
    02550  : Result := 'FALKLAND (ILHAS MALVINAS)';
    02593  : Result := 'FEROE, ILHAS';
    02674  : Result := 'FILIPINAS';
    02712  : Result := 'FINLANDIA';
    02755  : Result := 'FRANCA';
    02810  : Result := 'GABAO';
    02852  : Result := 'GAMBIA';
    02895  : Result := 'GANA';
    02917  : Result := 'GEORGIA, REPUBLICA DA';
    02933  : Result := 'GIBRALTAR';
    02976  : Result := 'GRANADA';
    03018  : Result := 'GRECIA';
    03050  : Result := 'GROENLANDIA';
    03093  : Result := 'GUADALUPE';
    03131  : Result := 'GUAM';
    03174  : Result := 'GUATEMALA';
    03255  : Result := 'GUIANA FRANCESA';
    03298  : Result := 'GUINE';
    03310  : Result := 'GUINE-EQUATORIAL';
    03344  : Result := 'GUINE-BISSAU';
    03379  : Result := 'GUIANA';
    03417  : Result := 'HAITI';
    03450  : Result := 'HONDURAS';
    03514  : Result := 'HONG KONG';
    03557  : Result := 'HUNGRIA, REPUBLICA DA';
    03573  : Result := 'IEMEN';
    03595  : Result := 'MAN, ILHA DE';
    03611  : Result := 'INDIA';
    03654  : Result := 'INDONESIA';
    03697  : Result := 'IRAQUE';
    03727  : Result := 'IRA, REPUBLICA ISLAMICA DO';
    03751  : Result := 'IRLANDA';
    03794  : Result := 'ISLANDIA';
    03832  : Result := 'ISRAEL';
    03867  : Result := 'ITALIA';
    03913  : Result := 'JAMAICA';
    03964  : Result := 'JOHNSTON, ILHAS';
    03999  : Result := 'JAPAO';
    04030  : Result := 'JORDANIA';
    04111  : Result := 'KIRIBATI';
    04200  : Result := 'LAOS, REP.POP.DEMOCR.DO';
    04235  : Result := 'LEBUAN,ILHAS';
    04260  : Result := 'LESOTO';
    04278  : Result := 'LETONIA, REPUBLICA DA';
    04316  : Result := 'LIBANO';
    04340  : Result := 'LIBERIA';
    04383  : Result := 'LIBIA';
    04405  : Result := 'LIECHTENSTEIN';
    04421  : Result := 'LITUANIA, REPUBLICA DA';
    04456  : Result := 'LUXEMBURGO';
    04472  : Result := 'MACAU';
    04499  : Result := 'MACEDONIA, ANT.REP.IUGOSLAVA';
    04502  : Result := 'MADAGASCAR';
    04525  : Result := 'MADEIRA, ILHA DA';
    04553  : Result := 'MALASIA';
    04588  : Result := 'MALAVI';
    04618  : Result := 'MALDIVAS';
    04642  : Result := 'MALI';
    04677  : Result := 'MALTA';
    04723  : Result := 'MARIANAS DO NORTE';
    04740  : Result := 'MARROCOS';
    04766  : Result := 'MARSHALL,ILHAS';
    04774  : Result := 'MARTINICA';
    04855  : Result := 'MAURICIO';
    04880  : Result := 'MAURITANIA';
    04885  : Result := 'MAYOTTE (ILHAS FRANCESAS)';
    04901  : Result := 'MIDWAY, ILHAS';
    04936  : Result := 'MEXICO';
    04944  : Result := 'MOLDAVIA, REPUBLICA DA';
    04952  : Result := 'MONACO';
    04979  : Result := 'MONGOLIA';
    04985  : Result := 'MONTENEGRO';
    04995  : Result := 'MICRONESIA';
    05010  : Result := 'MONTSERRAT,ILHAS';
    05053  : Result := 'MOCAMBIQUE';
    05070  : Result := 'NAMIBIA';
    05088  : Result := 'NAURU';
    05118  : Result := 'CHRISTMAS,ILHA (NAVIDAD)';
    05177  : Result := 'NEPAL';
    05215  : Result := 'NICARAGUA';
    05258  : Result := 'NIGER';
    05282  : Result := 'NIGERIA';
    05312  : Result := 'NIUE,ILHA';
    05355  : Result := 'NORFOLK,ILHA';
    05380  : Result := 'NORUEGA';
    05428  : Result := 'NOVA CALEDONIA';
    05452  : Result := 'PAPUA NOVA GUINE';
    05487  : Result := 'NOVA ZELANDIA';
    05517  : Result := 'VANUATU';
    05568  : Result := 'OMA';
    05665  : Result := 'PACIFICO,ILHAS DO (POSSESSAO DOS EUA)';
    05738  : Result := 'PAISES BAIXOS (HOLANDA)';
    05754  : Result := 'PALAU';
    05762  : Result := 'PAQUISTAO';
    05800  : Result := 'PANAMA';
    05860  : Result := 'PARAGUAI';
    05894  : Result := 'PERU';
    05932  : Result := 'PITCAIRN,ILHA';
    05991  : Result := 'POLINESIA FRANCESA';
    06033  : Result := 'POLONIA, REPUBLICA DA';
    06076  : Result := 'PORTUGAL';
    06114  : Result := 'PORTO RICO';
    06238  : Result := 'QUENIA';
    06254  : Result := 'QUIRGUIZ, REPUBLICA';
    06289  : Result := 'REINO UNIDO';
    06408  : Result := 'REPUBLICA CENTRO-AFRICANA';
    06475  : Result := 'REPUBLICA DOMINICANA';
    06602  : Result := 'REUNIAO, ILHA';
    06653  : Result := 'ZIMBABUE';
    06700  : Result := 'ROMENIA';
    06750  : Result := 'RUANDA';
    06769  : Result := 'RUSSIA, FEDERACAO DA';
    06777  : Result := 'SALOMAO, ILHAS';
    06858  : Result := 'SAARA OCIDENTAL';
    06874  : Result := 'EL SALVADOR';
    06904  : Result := 'SAMOA';
    06912  : Result := 'SAMOA AMERICANA';
    06955  : Result := 'SAO CRISTOVAO E NEVES,ILHAS';
    06971  : Result := 'SAN MARINO';
    07005  : Result := 'SAO PEDRO E MIQUELON';
    07056  : Result := 'SAO VICENTE E GRANADINAS';
    07102  : Result := 'SANTA HELENA';
    07153  : Result := 'SANTA LUCIA';
    07200  : Result := 'SAO TOME E PRINCIPE, ILHAS';
    07285  : Result := 'SENEGAL';
    07315  : Result := 'SEYCHELLES';
    07358  : Result := 'SERRA LEOA';
    07370  : Result := 'SERVIA';
    07412  : Result := 'CINGAPURA';
    07447  : Result := 'SIRIA, REPUBLICA ARABE DA';
    07480  : Result := 'SOMALIA';
    07501  : Result := 'SRI LANKA';
    07544  : Result := 'SUAZILANDIA';
    07560  : Result := 'AFRICA DO SUL';
    07595  : Result := 'SUDAO';
    07641  : Result := 'SUECIA';
    07676  : Result := 'SUICA';
    07706  : Result := 'SURINAME';
    07722  : Result := 'TADJIQUISTAO, REPUBLICA DO';
    07765  : Result := 'TAILANDIA';
    07803  : Result := 'TANZANIA, REP. UNIDA DA';
    07820  : Result := 'TERRITORIO BRIT. OC. INDICO';
    07838  : Result := 'DJIBUTI';
    07889  : Result := 'CHADE';
    07919  : Result := 'TCHECA, REPUBLICA';
    07951  : Result := 'TIMOR LESTE';
    08001  : Result := 'TOGO';
    08052  : Result := 'TOQUELAU,ILHAS';
    08109  : Result := 'TONGA';
    08150  : Result := 'TRINIDAD E TOBAGO';
    08206  : Result := 'TUNISIA';
    08230  : Result := 'TURCAS E CAICOS,ILHAS';
    08249  : Result := 'TURCOMENISTAO, REPUBLICA DO';
    08273  : Result := 'TURQUIA';
    08281  : Result := 'TUVALU';
    08311  : Result := 'UCRANIA';
    08338  : Result := 'UGANDA';
    08451  : Result := 'URUGUAI';
    08478  : Result := 'UZBEQUISTAO, REPUBLICA DO';
    08486  : Result := 'VATICANO, EST. DA CIDADE DO';
    08508  : Result := 'VENEZUELA';
    08583  : Result := 'VIETNA';
    08630  : Result := 'VIRGENS,ILHAS (BRITANICAS)';
    08664  : Result := 'VIRGENS,ILHAS (E.U.A.)';
    08702  : Result := 'FIJI';
    08737  : Result := 'WAKE, ILHA';
    08885  : Result := 'CONGO, REPUBLICA DEMOCRATICA DO';
    08907  : Result := 'ZAMBIA';
  end;
end;

Function TFormCadastroNotaFiscal.TabelaNFE_123(Produto, Situacao:string): String;
var  modBC, modBCST, UFST : String;
     ICMSCrd : Extended;
begin
  // Tabela NFE Calculo ICMS 1.23
  modBC   := SQLLocate('PRODUTO','PRODICOD','PRODA1MODBC',Produto);
  modBCST := SQLLocate('PRODUTO','PRODICOD','PRODA1MODBCST',Produto);

  if Situacao = '0' then
    Linha   := Linha + '                    <CST>'+ Preenche(Situacao,'0',2,0) +'</CST>' + CHR(13)
  else
    Linha   := Linha + '                    <CST>'+ Situacao +'</CST>' + CHR(13) ;


  if (Situacao='0') or (Situacao='10') or (Situacao='20') or (Situacao='70') or (Situacao='90') or (Situacao='900') then
    Linha := Linha + '                    <modBC>'+modBC+'</modBC>' + CHR(13)
  else
    Linha := Linha + '                    <modBC />' + CHR(13) ;

  if (Situacao='0') or (Situacao='10') or (Situacao='20') or (Situacao='70') or (Situacao='90') or (Situacao='900') then
  begin
    Linha := Linha + '                    <vBC>'+ PontoVirgula(FormatFloat('0.00',SQLNotaFiscalItemNFITN2BASEICMS.value)) +'</vBC>' + CHR(13);
    vBC_Total  := vBC_Total  + SQLNotaFiscalItemNFITN2BASEICMS.value;
  end else
    Linha := Linha + '                    <vBC />' + CHR(13) ;

  if (Situacao='0') or (Situacao='10') or (Situacao='20') or (Situacao='51') or (Situacao='70') or (Situacao='90') or (Situacao='900') then
    Linha := Linha + '                    <pICMS>'+ PontoVirgula(FormatFloat('0.00',SQLNotaFiscalItemNFITN2PERCICMS.value)) +'</pICMS>' + CHR(13)
  else
    Linha := Linha + '                    <pICMS />' + CHR(13) ;


  if (Situacao='0') or (Situacao='10') or (Situacao='20') or (Situacao='51') or (Situacao='70') or (Situacao='90') or (Situacao='900') then
  begin
    Linha := Linha + '                    <vICMS_icms>'+ PontoVirgula(FormatFloat('0.00',SQLNotaFiscalItemNFITN2VLRICMS.value)) +'</vICMS_icms>' + CHR(13);
    vICMS_Total := vICMS_Total + SQLNotaFiscalItemNFITN2VLRICMS.value;
  end else
    Linha := Linha + '                    <vICMS_icms />' + CHR(13) ;

  if (Situacao='10') or (Situacao='30') or (Situacao='70') or (Situacao='90') or (Situacao='201') or (Situacao='202') or (Situacao='203') or (Situacao='900') then
    Linha := Linha + '                    <modBCST>'+modBCST+'</modBCST>' + CHR(13)
  else
    Linha := Linha + '                    <modBCST />' + CHR(13) ;

  Linha := Linha + '                    <pMVAST />'   + CHR(13) ;
  Linha := Linha + '                    <pRedBCST />' + CHR(13) ;

  if (Situacao='10') or (Situacao='30') or (Situacao='70') or (Situacao='90') or (Situacao='201') or (Situacao='202') or (Situacao='203') or (Situacao='900') then
  begin
    Linha := Linha + '                    <vBCST>'+PontoVirgula(FormatFloat('0.00',SQLNotaFiscalItemNFITN2BASESUBS.value)) + '</vBCST>' + CHR(13);
    vBCST_Total   := vBCST_Total  + SQLNotaFiscalItemNFITN2BASESUBS.value;
  end else
    Linha := Linha + '                    <vBCST />' + CHR(13) ;

  if (Situacao='10') or (Situacao='30') or (Situacao='70') or (Situacao='90') or (Situacao='201') or (Situacao='202') or (Situacao='203') or (Situacao='900') then
    Linha := Linha + '                    <pICMSST>'+PontoVirgula(FormatFloat('0.00',SQLNotaFiscalItemNFITN2PERCSUBS.value)) + '</pICMSST>' + CHR(13)
  else
    Linha := Linha + '                    <pICMSST />' + CHR(13) ;

  if (Situacao='10') or (Situacao='30') or (Situacao='70') or (Situacao='90') or (Situacao='201') or (Situacao='202') or (Situacao='203') or (Situacao='900') then
  begin
    Linha := Linha + '                    <vICMSST_icms>'+PontoVirgula(FormatFloat('0.00',SQLNotaFiscalItemNFITN2VLRSUBS.value)) + '</vICMSST_icms>' + CHR(13);
    vST_Total    := vST_Total + SQLNotaFiscalItemNFITN2VLRSUBS.value
  end else
    Linha := Linha + '                    <vICMSST_icms />' + CHR(13) ;

  if (Situacao='60') or (Situacao='500') then
    Linha := Linha + '                    <vBCSTRet></vBCSTRet>' + CHR(13)
  else
    Linha := Linha + '                    <vBCSTRet />' + CHR(13) ;

  if (Situacao='60') or (Situacao='500') then
    Linha := Linha + '                    <vICMSSTRet></vICMSSTRet>' + CHR(13)
  else
    Linha := Linha + '                    <vICMSSTRet />' + CHR(13) ;

  if (Situacao='20') or (Situacao='70') then
    Linha := Linha + '                    <pRedBC></pRedBC>' + CHR(13)
  else
    Linha := Linha + '                    <pRedBC />' + CHR(13) ;

  Linha := Linha + '                    <pBCOp />' + CHR(13) ;
  Linha := Linha + '                    <UFST />' + CHR(13) ;
  Linha := Linha + '                    <vBCSTDest />' + CHR(13) ;
  Linha := Linha + '                    <vICMSSTDest_icms />' + CHR(13) ;

  if (Situacao='101') or (Situacao='201') or (Situacao='900') then
    Linha := Linha + '                    <pCredSN>'+SQLLocate('EMPRESA','EMPRICOD','EMPRN2CREDICMS',EmpresaPadrao)+'</pCredSN>' + CHR(13)
  else
    Linha := Linha + '                    <pCredSN />' + CHR(13) ;

  if (Situacao='101') or (Situacao='201') or (Situacao='900') then
    Linha := Linha + '                    <vCredICMSSN>'+FloatToStr(((StrToFloat(SQLLocate('EMPRESA','EMPRICOD','EMPRN2CREDICMS',EmpresaPadrao))/100)*((SQLNotaFiscalItemNFITN2VLRUNIT.value*SQLNotaFiscalItemNFITN3QUANT.value)-SQLNotaFiscalItemNFITN2VLRDESC.value)))+'</vCredICMSSN>' + CHR(13)
  else
    Linha := Linha + '                    <vCredICMSSN />' + CHR(13) ;

  Linha := Linha + '                </ICMS>' ;
end;

procedure TFormCadastroNotaFiscal.OrdemServioGrficas1Click(
  Sender: TObject);
begin
  inherited;
  FieldLookUp := SQLTemplate.FindField('ORDNUM');
  FieldOrigem := 'ORDNUM';
  CriaFormulario(TFormCadastroGraficaOrdem,'FormCadastroGraficaOrdem',False,True,False,'');

end;

procedure TFormCadastroNotaFiscal.rocaStatusNFCanceladaparaAbertanomovestoque1Click(
  Sender: TObject);
begin
  inherited;
  If SQLTemplate.FindField('NOFIA15PROTOCOLO').asString <> '' Then
    Begin
      Informa('Não são permitidas Alterações em Notas Fiscais EFETIVADAS.');
      Abort;
    End;

  if (SQLTemplateNOFICSTATUS.Value = 'C') and (not SQLTemplate.IsEmpty) then
    begin
      try
        dm.SQLTemplate.Close;
        dm.SQLTemplate.sql.Clear;
        dm.SQLTemplate.SQL.Add('Update NotaFiscal set NOFICSTATUS = "A" where NOFIA13ID = "'+ SQLTemplateNOFIA13ID.Value+'"');
        dm.SQLTemplate.ExecSQL;
      except
        Application.ProcessMessages;
        ShowMessage('Não foi possível trocar o Status da Nota Atual, verifique!');
      end;
      SQLTemplate.Close;
      ShowMessage('Troca de Status Efetuada com Sucesso');
    end;
end;

Function TFormCadastroNotaFiscal.VerificaDadosCliente:Boolean ;
begin
  // Verifica Nome
  if (SQLTemplateCliFornEmpLookUp.AsString = '') or (SQLTemplateCliFornEmpLookUp.isnull) or (Pos('&',SQLTemplateCliFornEmpLookUp.AsString) > 0) then
  begin
    ShowMessage('Nome do Destinatário Inválido ou Nota Fiscal não selecionada!! . Verifique!'+#13#10+'Nota Fiscal Nº: '+SQLTemplateNOFIINUMERO.AsString);
    Result := False;
    Exit;
  end;

  // Verifica CPF ou CNPJ
  if ((SQLTemplateCliFornEmpCGCCPFLookUp.AsString = '') or (SQLTemplateCliFornEmpCGCCPFLookUp.isnull)) and (Trim(SQLTemplateCliFornEmpEstadoLookUp.AsString) <> 'EX') then
  begin
    ShowMessage('CPF / CNPJ do Destinatário Inválido ou Inexistente. Verifique!'+#13#10+'Nota Fiscal Nº: '+SQLTemplateNOFIINUMERO.AsString);
    Result := False;
    Exit;
  end;

  // Verifica numero do endereço
  if (SQLTemplateEmpNumeroEndLookUp.AsString = '') or (SQLTemplateEmpNumeroEndLookUp.isnull) then
  begin
    ShowMessage('Número do Endereço do Destinatário Inválido ou Inexistente. Verifique!'+#13#10+'Nota Fiscal Nº: '+SQLTemplateNOFIINUMERO.AsString);
    Result := False;
    Exit;
  end;

  // Verifica bairro
  if (SQLTemplateCliFornEmpBairroLookUp.AsString = '') or (SQLTemplateCliFornEmpBairroLookUp.isnull) then
  begin
    ShowMessage('Bairro do Destinatário Inválido ou Inexistente. Verifique!'+#13#10+'Nota Fiscal Nº: '+SQLTemplateNOFIINUMERO.AsString);
    Result := False;
    Exit;
  end;

  // Verifica Endereco
  if (SQLTemplateCliFornEmpEnderecoLookUp.AsString = '') or (SQLTemplateCliFornEmpEnderecoLookUp.isnull) then
  begin
    ShowMessage('Endereço do Destinatário Inválido ou Inexistente. Verifique!'+#13#10+'Nota Fiscal Nº: '+SQLTemplateNOFIINUMERO.AsString);
    Result := False;
    Exit;
  end;

  // Verifica Pais
  if (Copy(RetornaPais(SQLTemplateCliFornEmpcdPaisLookUp.AsInteger),0,60) = '')  then
  begin
    ShowMessage('País do Destinatário não Identificado. Verifique!'+#13#10+'Nota Fiscal Nº: '+SQLTemplateNOFIINUMERO.AsString);
    Result := False;
    Exit;
  end;

  // Verifica Numero do Municipio
  if (SQLTemplateCliFornEmpCdMunicipoNfeLookUp.AsString = '') or (SQLTemplateCliFornEmpCdMunicipoNfeLookUp.isnull) then
  begin
    ShowMessage('Número da Cidade (Cd.NFe) do Destinatário não Informado. Verifique!'+#13#10+'Nota Fiscal Nº: '+SQLTemplateNOFIINUMERO.AsString);
    Result := False;
    Exit;
  end;

  // Verifica Municipio
  if (SQLTemplateCliFornEmpCidadeLookUp.AsString = '') or (SQLTemplateCliFornEmpCidadeLookUp.isnull) then
  begin
    ShowMessage('Município do Destinatário Inválido ou Inexistente. Verifique!'+#13#10+'Nota Fiscal Nº: '+SQLTemplateNOFIINUMERO.AsString);
    Result := False;
    Exit;
  end;

  // Verifica estado
  if (SQLTemplateCliFornEmpEstadoLookUp.AsString = '') or (SQLTemplateCliFornEmpEstadoLookUp.isnull) then
  begin
    ShowMessage('Estado do Destinatário Inválido ou Inexistente. Verifique!'+#13#10+'Nota Fiscal Nº: '+SQLTemplateNOFIINUMERO.AsString);
    Result := False;
    Exit;
  end;

  // Verifica Cep
  if (SQLTemplateCliFornEmpCEPLookUp.AsString = '') or (SQLTemplateCliFornEmpCEPLookUp.isnull) then
  begin
    ShowMessage('CEP do Destinatário Inválido ou Inexistente. Verifique!'+#13#10+'Nota Fiscal Nº: '+SQLTemplateNOFIINUMERO.AsString);
    Result := False;
    Exit;
  end;

end;


Function TFormCadastroNotaFiscal.VerificaDadosTransp:Boolean ;
begin
  // Verifica Nome
  if SQLTemplateTransportadoraLookup.AsString <> '' then
  begin
    if (Pos('&',SQLTemplateTransportadoraLookup.AsString) > 0) then
    begin
      ShowMessage('Nome do(a) Transportador(a) Inválido. Verifique!'+#13#10+'Nota Fiscal Nº: '+SQLTemplateNOFIINUMERO.AsString);
      Result := False;
      Exit;
    end;

//     Verifica Cidade
//    if (SQLTemplateTransportadoraCidadeLookUp.AsString = '') or (SQLTemplateTransportadoraCidadeLookUp.isnull) then
//    begin
//      ShowMessage('Cidade do(a) Transportador(a) Inválido ou Inexistente. Verifique!'+#13#10+'Nota Fiscal Nº: '+SQLTemplateNOFIINUMERO.AsString);
//      Result := False;
//      Exit;
//    end;
//
//     Verifica UF
//    if (SQLTemplateTransportadoraEstadoLookUp.AsString = '') or (SQLTemplateTransportadoraEstadoLookUp.isnull) then
//    begin
//      ShowMessage('Estado do(a) Transportador(a) Inválido ou Inexistente. Verifique!'+#13#10+'Nota Fiscal Nº: '+SQLTemplateNOFIINUMERO.AsString);
//      Result := False;
//      Exit;
//    end;
//
//
//    if (SQLTemplateNOFIA8PLACAVEIC.AsString <> '') and (Pos('-',SQLTemplateNOFIA8PLACAVEIC.asstring) > 0) then
//    begin
//      ShowMessage('Placa do(a) Transportador(a) Inválido ou contem hífem (-) . Verifique!'+#13#10+'Nota Fiscal Nº: '+SQLTemplateNOFIINUMERO.AsString);
//      Result := False;
//      Exit;
//    end;

  end;
end;

Function TFormCadastroNotaFiscal.SoNumeros(xText:String):String;
var p:Integer;
 nVar:String;
begin
  nVar := '';
  if xText <> '' then
  begin
    for p:= 0 to length(xText) do
      if xText[p] in (['0'..'9']) then
        nVar := nVar + xText[p];
  end else
    nVar := '';
  Result := nVar
end;

Function TFormCadastroNotaFiscal.VerificaDadosProduto:Boolean ;
var DeuCerto:Boolean;
begin
  DeuCerto:= True;
{  SQLProduto.Close;
  SQLProduto.SQL.Text := 'Select * from produto where prodicod = :xProduto';
  SQLNotaFiscalItem.Close;
  SQLNotaFiscalItem.SQL.Clear;
  SQLNotaFiscalItem.SQL.Add('Select * From NOTAFISCALITEM Where NOFIA13ID =:NOFIA13ID');
  SQLNotaFiscalItem.Open;
  SQLNotaFiscalItem.First;
  DeuCerto:= True;
  While not SQLNotaFiscalItem.Eof do
  begin
    SQLProduto.Close;
    SQLProduto.Prepare;
    SQLProduto.ParamByName('xProduto').Asstring := SQLNotaFiscalItemPRODICOD.AsString;
    SQLProduto.Open;
    if SQLProduto.IsEmpty then
    begin
      Showmessage('Produto de codigo '+ SQLNotaFiscalItemPRODICOD.AsString + ' não existe no cadastro. Verifique!'+#13#10+
      'Nota Fiscal '+SQLTemplateNOFIINUMERO.AsString);
      DeuCerto:= False;
      Exit;
    end;


    SQLProduto.Close;
    SQLNotaFiscalItem.Next;
  end;
  SQLProduto.Close;
  SQLProduto.SQL.Text := 'SELECT PRODICOD, PRODN3PESOBRUTO,PRODN3PESOLIQ FROM PRODUTO';

  }
  Result := DeuCerto;

end;

procedure TFormCadastroNotaFiscal.NotaFiscalJava1Click(Sender: TObject);
var comando : String;
  i: integer;
  dir, direxec, ValCertificado, RetornoCampoUsuario, sXML, PDf, De, Para :string;
  IniFile      : TiniFile;
  Point: TBookmark;
   InfoRetornoUser    : TInfoRetornoUser;
  Email : TEmail;

begin
  inherited;
  VerificaDadosCliente;

  if (SQLTemplateCLIEA13ID.Value <> '') AND (SQLLocate('CLIENTE','CLIEA13ID','CLIEN2RENDA','"'+SQLTemplateCLIEA13ID.asstring+'"') <> '0') then
    if VerificaLimiteCredito(SQLTemplateCLIEA13ID.asstring,SQLTemplateNOFIN2VLRNOTA.value,DM.SQLParcelas,DM.SQLCliente) = False then
    Begin
      if SQLLocate('USUARIO', 'USUAICOD', 'USUACVENDCLIBLOQMOTIV', IntToStr(DM.UsuarioAtual)) <> 'S' then
      begin
        RetornoCampoUsuario := AutenticaUsuario( UsuarioAtualNome,'USUACVENDCLIBLOQMOTIV',InfoRetornoUser );
        if RetornoCampoUsuario = 'N' then
        begin
          ShowMessage('Usuario não tem permissão para liberar venda com limite excedido');
          Exit;
        end;
      end;
    End;

  if not Pergunta('Nao','Gerar Notas Fiscais Eletrônicas?') then
    Exit;

  if ComboPrint.Text = '' then
    begin
      ShowMessage('Selecione a Impressora para imprimir o DANFE');
      Exit;
    end;

  // verifica data de validade do Certificado Eletronico
{  IniFile := TIniFile.Create ('IBGestao.ini');
  ValCertificado := IniFile.ReadString('IB_Local','ValidadeCertificado','');
  if ValCertificado = '' then
  begin
    ValCertificado := InputBox('Certificado Digital','Validade do Certificado (dd/MM/aaaa:','');
    IniFile.WriteString('IB_Local','ValidadeCertificado',#39+ValCertificado+#39);
    Inifile.UpdateFile;
  end;
  IniFile.Free;

  Try
    if StrToDate(ValCertificado)-10 <= Date then
      ShowMessage('Atenção...'+#13+#10+''+#13+#10+'Seu Certificado Eletrônico Vence Dia '+ValCertificado);
  except on e:Exception do
  Begin
    Showmessage('Falha ao Identificar Vencimento do Certificado Eletronico: '+e.message);
    Showmessage('Geração de Notas Cancelada');
    Exit;
  end; End; }

{  Chamada Java para emitir NFE
  Comando:= 'javaw -jar C:\Unit\NFe\Atualy_NFe_Certo.jar E '+SQLTemplateNOFIINUMERO.ASSTRING + ' '+SQLTemplateEMPRICOD.AsString+ ' '+SQLTemplateSERIA5COD.asstring + ' ' +SQLTemplateEmpresaCGCLookup.AsString;

  ExecAndWait(Comando, SW_SHOWNORMAL);
  Point := SQLTemplate.GetBookmark;
  SQLTemplate.Close;
  SQLTemplate.Open;
  SQLtemplate.GotoBookmark(Point);
  SQLTemplate.FreeBookmark(Point);

  if Alltrim(SQLTemplateNOFIA5CODRETORNO.AsString) = '100' then
    EncerrarNotaFiscalJava1Click(Sender);

   Fim Chamada Java }

  {Inicio Rotina usando ACBR NFE, por Adilson}

  if SQLTemplateNOFICSTATUS.Value = 'C' then
    begin
      ShowMessage('Erro! Nota Fiscal Nro.'+SQLTemplateNOFIINUMERO.AsString+' CANCELADA, não pode ser Enviada!');
      Abort;
      Exit;
    end;

  IF ((not SQLTemplateNOFICSTNFE.IsNull) and (not (SQLTemplateNOFICSTNFE.asstring = '0')) and (not (SQLTemplateNOFICSTNFE.asstring = '6'))) or (SQLTemplateNOFICSTATUS.Value = 'C') then
    begin
      ShowMessage('Nota Eletronica NFe Nº '+SQLTemplateNOFIINUMERO.AsString +' já enviada.'+#13+#10+''+#13+#10+'Processamento ignorado.');
    end
  else
    begin
      Try
        // Pega Configs Iniciais
        Inicia_NFe;
        Application.ProcessMessages;

        // Cria o arquivo XML
        sXML := Gerar_XMLACBr;
        Application.ProcessMessages;

        if FileExists(sXML) then
          begin
            // Valida NFe
            ACBrNFe1.NotasFiscais.Clear;
            ACBrNFe1.NotasFiscais.LoadFromFile(sXML);
            ACBrNFe1.NotasFiscais.Valida;

            // Grava Chave no Banco
            SQLTemplate.BeforeEdit := SQLTemplateBeforeEdit;
            SQLTemplate.BeforePost := SQLTemplateBeforePost;
            sqltemplate.Edit;
            sqltemplateNOFIA44CHAVEACESSO.Value := copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, (length(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID)-44)+1, 44);
            SQLTemplate.BeforeEdit := nil;
            SQLTemplate.BeforePost := nil;

            // Envia NFe
            ACBrNFe1.NotasFiscais.Clear;
            ACBrNFe1.NotasFiscais.LoadFromFile(sXML);
            ACBrNFe1.Enviar(0, False);

            // Le novamente o xml para poder pegar o retorno correto
            //ACBrNFe1.NotasFiscais.Clear;
            //ACBrNFe1.NotasFiscais.LoadFromFile(sXML);
            MemoRetornoNFE.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Retorno.RetWS);
            LoadXML(MemoRetornoNFE, WBResposta);

            // Se retorno = 100, NFe foi autorizada imprime Danfe
            if (ACBrNFe1.WebServices.Retorno.cStat = 100) or (ACBrNFe1.WebServices.Retorno.cStat = 104) then
              begin
                SQLTemplate.BeforeEdit := SQLTemplateBeforeEdit;
                SQLTemplate.BeforePost := SQLTemplateBeforePost;
                SQLTemplate.Edit;
                sqltemplateNOFICSTATUS.Value := 'E';
                sqltemplate.post;
                SQLTemplate.BeforeEdit := nil;
                SQLTemplate.BeforePost := nil;
              end;


            // Grava Retorno da Sefaz
            sqltemplate.Edit;
            sqltemplateNOFIA44CHAVEACESSO.Value := copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, (length(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID)-44)+1, 44);
            sqltemplateNOFIA5CODRETORNO.Value   := IntToStr(ACBrNFe1.WebServices.Retorno.cStat);
            sqltemplateNOFITRETORNO.Value       := ACBrNFe1.WebServices.Retorno.xMotivo;
            sqltemplateNOFIA15PROTOCOLO.Value   := ACBrNFe1.WebServices.Retorno.Protocolo;
            sqltemplateNOFIA15RECIBO.Value      := ACBrNFe1.WebServices.Retorno.Recibo;
            sqltemplate.post;

            // Tenta Imprimir Danfe
             if ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpEmis = teDPEC then
               begin
//
//                  ACBrNFe1.WebServices.ConsultaDPEC.NFeChave := ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID;
//                  ACBrNFe1.WebServices.ConsultaDPEC.Executar;
//                  ACBrNFe1.DANFE.ProtocoloNFe := ACBrNFe1.WebServices.ConsultaDPEC.nRegDPEC +' '+ DateTimeToStr(ACBrNFe1.WebServices.ConsultaDPEC.retDPEC.dhRegDPEC);

              end;

            // Se retorno = 100, NFe foi autorizada imprime Danfe
              if  (ACBrNFe1.WebServices.Retorno.cStat = 100) or (ACBrNFe1.WebServices.Retorno.cStat = 104)  then
              begin

                ACBrNFe1.NotasFiscais.ImprimirPDF;
                ACBrNFe1.NotasFiscais.Imprimir;

                PDf  := cdsEmpresaEMPRA100CAMINHODANFES.AsString+'\'+copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, (length(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID)-44)+1, 44) + '.PDF';

                // Enviar Email
                De := LowerCase(SQLLocate('EMPRESA','EMPRICOD','EMPRA60EMAIL',EmpresaPadrao));

                // Para - Destinatario
                if SQLTemplateEMPRICODDEST.AsString <> '' then para := LowerCase(SQLLocate('EMPRESA','EMPRICOD','EMPRA60EMAIL',SQLTemplateEMPRICODDEST.AsString));
                if SQLTemplateCLIEA13ID.AsString    <> '' then para := LowerCase(SQLLocate('CLIENTE','CLIEA13ID','CLIEA60EMAIL','"'+SQLTemplateCLIEA13ID.AsString+'"'));
                if SQLTemplateFORNICOD.AsString     <> '' then para := LowerCase(SQLLocate('FORNECEDOR','FORNICOD','FORNA60EMAIL',SQLTemplateFORNICOD.AsString));

                if trim(Para) <> EmptyStr then
                begin
                  ReenviarEmail1Click(Self);
                end;

              end;

            // Realimenta os eventos abaixo:
            SQLTemplate.BeforeEdit := SQLTemplateBeforeEdit;
            SQLTemplate.BeforePost := SQLTemplateBeforePost;

            // Limpa a nota do componente ACBr
            ACBrNFe1.NotasFiscais.Clear;
          end
        else
          begin
            Application.MessageBox('Arquivo XML não encontrado!','Erro',mb_ok+mb_iconerror);
            SQLTemplate.BeforeEdit := SQLTemplateBeforeEdit;
            SQLTemplate.BeforePost := SQLTemplateBeforePost;
            // Limpa a nota do componente ACBr
            ACBrNFe1.NotasFiscais.Clear;

            exit;
          end;
      except on e:exception do
      begin
        ShowMessage('Falha ao Gerar Nota Fiscal: '+e.message);
      end; end;
    end;
end;

procedure TFormCadastroNotaFiscal.ReimprimirDANFE1Click(Sender: TObject);
var comando, sXML, sPasta : String;

begin
  inherited;
  VerificaDadosCliente;

  IF Trim(SQLTemplateNOFIA44CHAVEACESSO.AsString) = EmptyStr then
  begin
    ShowMessage('Nota ainda não emitida/enviada ao SEFAZ.');
    Exit;
  end;

  if not Pergunta('Nao','Confirma a Reimpressão do DANFE desta Nota Fiscal Eletrônica?') then
    Exit;
    
  // Le arquivo .ini para pegar as config da nfe por filial
  Inicia_NFe;

  ACBrNFe1.NotasFiscais.Clear;
  ACBrNFe1.NotasFiscais.LoadFromFile(cdsEmpresaEMPRA100CAMINHOXML.AsString+'\'+SQLTemplateNOFIA44CHAVEACESSO.AsString+'-NFe.xml');

  ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt := SQLTemplateNOFIA15PROTOCOLO.AsString;

  ACBrNFe1.NotasFiscais.Valida;
  ACBrNFe1.NotasFiscais.Assinar;
  ACBrNFe1.NotasFiscais.Imprimir;

end;

procedure TFormCadastroNotaFiscal.ReenviarEmail1Click(Sender: TObject);
var
  Comando, sXML, Danfe, De, Para : String;
  Email : TEmail;
  stl : TStringList;
begin
  inherited;
  VerificaDadosCliente;
  if not Pergunta('Nao','Confirma o Reenvio do Email desta Nota Fiscal Eletrônica a seu Destinatario?') then
    Exit;

  { Comando:= 'javaw -jar C:\Unit\NFe\Atualy_NFe_Certo.jar REEMAIL '+SQLTemplateNOFIA44CHAVEACESSO.asstring+ ' ' +SQLTemplateEmpresaCGCLookup.AsString;
   WinExec(PChar(comando),SW_SHOW);}

  // Le arquivo .ini para pegar as config da nfe por filial
  Inicia_NFe;

  sXML := cdsEmpresaEMPRA100CAMINHOXML.AsString+'\'+SQLTemplateNOFIA44CHAVEACESSO.asstring +'-NFe.xml';
  Danfe := cdsEmpresaEMPRA100CAMINHODANFES.AsString+'\'+SQLTemplateNOFIA44CHAVEACESSO.asstring + '.pdf';

  if FileExists(sXML) then
    begin
      if (Trim(cdsEmpresaEMPRA50EMAILHOST.AsString) = EmptyStr) or
            (Trim(cdsEmpresaEMPRA75EMAILUSUARIO.AsString) = EmptyStr) or
               (Trim(cdsEmpresaEMPRA50EMAILSENHA.AsString) = EmptyStr) then
      begin
        application.messagebox('Verifique se as configurações para envio de e-mail foram configuradas.','Erro', mb_ok+mb_iconerror);
        exit;
      end;

      De := SQLEmpresaEMPRA60NOMEFANT.AsString;

      // Para - Destinatario
      if SQLTemplateEMPRICODDEST.AsString <> '' then para := LowerCase(SQLLocate('EMPRESA','EMPRICOD','EMPRA60EMAIL',SQLTemplateEMPRICODDEST.AsString));
      if SQLTemplateCLIEA13ID.AsString    <> '' then para := LowerCase(SQLLocate('CLIENTE','CLIEA13ID','CLIEA60EMAIL','"'+SQLTemplateCLIEA13ID.AsString+'"'));
      if SQLTemplateFORNICOD.AsString     <> '' then para := LowerCase(SQLLocate('FORNECEDOR','FORNICOD','FORNA60EMAIL',SQLTemplateFORNICOD.AsString));

      Email := TEmail.Create; //Instancia a classe de email.

      try

      //Montando o corpo do email com dados ref. a nota fiscal.
      stl := TStringList.Create; //Instanciando objeto TStringList

      //Adiciona texto padrão de email Nf-e.
      stl.Add('Caro Cliente,');
      stl.Add('');
      stl.Add('Informamos que uma Nota Fiscal Eletrônica foi emitida para seu CPF/CNPJ. Número da NF.: '+ IntToStr(SQLTemplateNOFIINUMERO.AsInteger));
      stl.Add('');
      stl.Add('Para consultar a nota diretamente no site da Receita Federal*, escolha e clique nos endereços eletrônicos abaixo e informe a seguinte chave de acesso:');
      stl.Add(SQLTemplateNOFIA44CHAVEACESSO.AsString);
      stl.Add('');
      stl.Add('- Consulta em Ambiente Nacional');
      stl.Add('http://www.nfe.fazenda.gov.br/PORTAL/consulta.aspx?tipoConsulta=completa&tipoConteudo=XbSeqxE8pl8=');
      stl.Add('');
      stl.Add('- Consulta em Ambiente Regional (' + UpperCase(SQLEmpresaEMPRA2UF.AsString) + ')');
      stl.Add('https://www.sefaz.rs.gov.br/NFE/NFE-COM.aspx');
      stl.Add('');
      stl.Add('*A NF-e ficará disponível para consulta por 180 dias, a partir da data de emissão');

        if  Email.EnviarEmail(De, Para, EmptyStr, stl.Text, sxml, Danfe,
                              cdsEmpresaEMPRA75EMAILUSUARIO.AsString, cdsEmpresaEMPRA50EMAILSENHA.AsString, cdsEmpresaEMPRA50EMAILHOST.AsString,
                              cdsEmpresaEMPRIEMAILPORTA.AsInteger) then begin
          Application.MessageBox(PChar('Email enviado com sucesso para o endereço: '+para),'Aviso',mb_ok+MB_ICONINFORMATION)
        end else
        begin
          Application.messagebox('Houve falha no envio do email. Verifique as configurações de envio de e-mail.','Atenção',mb_ok+MB_ICONERROR);
        end;

      finally
        stl.Free;
      end;

      Email.Free;

    end
  else
    begin
      Application.MessageBox('Arquivo XML não encontrado!','Erro',mb_ok+mb_iconerror);
      Exit;
    end;
end;

procedure TFormCadastroNotaFiscal.CancelarNFe1Click(Sender: TObject);
var comando : String;
    Point : TBookmark;
    InfoRetorno : TInfoRetornoUser;
var vAux, sXML : string;
begin
  inherited;

  if not Pergunta('Nao','Confirma o CANCELAMENTO desta Nota Fiscal Eletrônica?') then
    Exit;

  Point := SQLTemplate.GetBookmark;

{ Judimar chamada Java
  Comando:= 'javaw -jar C:\Unit\NFe\Atualy_NFe_Certo.jar C '+SQLTemplateNOFIA44CHAVEACESSO.asstring + ' '+SQLTemplateNOFIA15PROTOCOLO.asstring+ ' ' +SQLTemplateEmpresaCGCLookup.AsString;
  ExecAndWait(comando,SW_SHOWNORMAL);}

  // Le arquivo .ini para pegar as config da nfe por filial
  Inicia_NFe;

  vAux := 'Cancelamento por erro no preenchimento dos dados da nfe.';

  sXML := cdsEmpresaEMPRA100CAMINHOXML.AsString+'\'+SQLTemplateNOFIA44CHAVEACESSO.asstring +'-NFe.xml';
  if FileExists(sxml) then
    begin
      ACBrNFe1.NotasFiscais.Clear;
      ACBrNFe1.NotasFiscais.LoadFromFile(sXML);
      ACBrNFe1.Cancelamento(vAux);
      MemoRetornoNFE.Lines.Text :=  UTF8Encode(ACBrNFe1.WebServices.Cancelamento.RetWS);
      LoadXML(MemoRetornoNFE, WBResposta);


      // Grava Retorno da Sefaz
      // se retorno = 101, nota foi cancelada
      if ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.cStat = 101 then
        begin
          SQLTemplate.BeforeEdit := nil;
          SQLTemplate.BeforePost := nil;
          sqltemplate.Edit;
          sqltemplateNOFIA5CODRETORNO.Value := intToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.cStat);
//          sqltemplateNOFIA5CODRETORNO.Value := IntToStr(ACBrNFe1.WebServices.Retorno.cStat);
//          sqltemplateNOFITRETORNO.Value       := ACBrNFe1.WebServices.Retorno.xMotivo;
//          sqltemplateNOFIA15PROTOCOLO.Value   := ACBrNFe1.WebServices.Retorno.Protocolo;
          sqltemplateNOFITRETORNO.Value     := ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.xMotivo;
          sqltemplateNOFIA15PROTOCOLO.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt;
          sqltemplate.Post;
          SQLTemplate.BeforeEdit := SQLTemplateBeforeEdit;
          SQLTemplate.BeforePost := SQLTemplateBeforePost;
        end;
    end;

  SQLTemplate.Close;
  SQLTemplate.Open;
  SQLtemplate.GotoBookmark(Point);
  SQLTemplate.FreeBookmark(Point);

  if Alltrim(SQLTemplateNOFIA5CODRETORNO.AsString) = '101' then
  Begin
    if AutenticaUsuario(UsuarioAtualNome,'USUACCANCVENDA',InfoRetorno) <> 'N' then
      begin
        if (not SQLTemplate.IsEmpty) and (SQLTemplate.FindField('NOFICSTATUS').asString = 'E') and (Application.MessageBox('Deseja realmente cancelar a Nota?','Atenção',MB_YesNo)=IdYes) then
          begin
            CancelandoNota := True;
            SQLTemplate.Edit;
            SQLTemplate.FindField('NOFICSTATUS').asString   := 'C';
            SQLTemplate.FindField('USUAICOD').AsInteger     := InfoRetorno.CodUsuarioAutenticado;
            SQLTemplate.FindField('USUAA60LOGIN').AsString  := InfoRetorno.NomeUsuarioAutenticado;
            SQLTemplate.FindField('NOFIDCANCEL').AsDateTime := Date;
            SQLTemplate.Post;
            CancelandoNota := False;
          end;
      end
    else
      begin
        Informa('Você não tem autorização para cancelar vendas!');
        Abort;
        Exit;
      end;
  End;
end;

procedure TFormCadastroNotaFiscal.EncerrarNotaFiscalJava1Click(
  Sender: TObject);
begin
  inherited;
  try
    SQLTemplate.BeforeEdit:= nil;

    SQLTemplate.Edit;

    If Not CancelandoNota Then
      If SQLTemplate.FindField('NOFICSTATUS').asString<>'A' Then
        Begin
          Informa('Alterações só serão permitidas quando a nota estiver com status de "Aberta".');
          SQLTemplate.Cancel;
          SQLTemplate.BeforeEdit :=  SQLTemplateBeforeEdit;
          Abort;
        End;

    StatusAnterior := SQLTemplate.FindField('NOFICSTATUS').Value;
    PlanoAnterior  := SQLTemplate.FindField('PLRCICOD').asString;
    PedidoAnterior := SQLTemplate.FindField('PDVDA13ID').asString;
    ValorFrete     := SQLTemplate.FindField('NOFIN2VLRFRETE').AsFloat;
    ValorIcmsFrete := SQLTemplate.FindField('NOFIN2VLRICMSFRETE').AsFloat;
    SQLTemplateNOFICSTATUS.AsString := 'E';
    LabelGravar.Click;
    SQLTemplate.BeforeEdit :=  SQLTemplateBeforeEdit;
  except on e:exception do
  begin
    Showmessage('Falha ao Encerrar a Nota Fiscal: '+e.Message);
    if SQLTemplate.State in ([dsEdit]) then
      SQLTemplate.Cancel;
  end;end;
end;

function  TFormCadastroNotaFiscal.ExecAndWait(Comando: String; WindowState: word):
boolean;
var
SUInfo: TStartupInfo;
ProcInfo: TProcessInformation;
CmdLine: string;
begin
  { Enclose filename in quotes to take care of long filenames with spaces. }

  FillChar(SUInfo, SizeOf(SUInfo), #0);
  with SUInfo do
  begin
    cb:=2048;
    lpReserved := NIL;
    lpDesktop  := NIL;
    lpTitle    := NIL;
    dwFlags    := STARTF_USESHOWWINDOW;
    wShowWindow:= SW_SHOWNORMAL;//SW_Hide; //para não aparecer na tela (background)!
    cbReserved2:= 0;
    lpReserved2:= NIL;
  end;

  Result := CreateProcess(NIL,PChar(Comando), NIL, NIL, False, 0, NIL, nil , SUInfo, ProcInfo);
  { Wait for it to finish. }
  if Result then
    WaitForSingleObject(ProcInfo.hProcess, INFINITE);
end;

procedure TFormCadastroNotaFiscal.RxSpeedButton1Click(Sender: TObject);
begin
  inherited;
  DSMasterSYS:= DsTemplate;
  CriaFormulario(TFormCadastroNotaFiscalReferenciada,'FormCadastroNotaFiscalReferenciada',True,False,True,'Nota Fiscal Nº ' + SQLTemplateNOFIINUMERO.AsString);
end;

procedure TFormCadastroNotaFiscal.RxSpeedButton2Click(Sender: TObject);
begin
  inherited;
  If Trim(SQLTemplate.FindField('NOFIA5CODRETORNO').asString) <> '100' Then
    Begin
      Informa('Não são permitidas Correções em Notas Fiscais com codigo de Retorno diferente de 100 (Efetivada).');
      Abort;
    End;
  DSMasterSYS:= DsTemplate;
  CriaFormulario(TFormCadastroNotaFiscalCartaCorrecao,'FormCadastroNotaFiscalCartaCorrecao',True,False,True,'Carta de Correção da Nota Fiscal Nº ' + SQLTemplateNOFIINUMERO.AsString);
end;

procedure TFormCadastroNotaFiscal.BitBtn1Click(Sender: TObject);
begin
  inherited;
    try
    SQLTemplate.BeforeEdit:= nil;
    SQLTemplate.BeforePost:= Nil;
    SQLTemplate.Edit;
    SQLTemplateNOFIA44CHAVEACESSO.AsString := edtChave.Text;
    SQLTemplate.Post;
    SQLTemplate.BeforeEdit :=  SQLTemplateBeforeEdit;
    SQLTemplate.BeforePost :=  SQLTemplateBeforePost;
  except on e:exception do
  begin
    Showmessage('Falha ao Gravar Chave da Nota Fiscal: '+e.Message);
    if SQLTemplate.State in ([dsEdit]) then
      SQLTemplate.Cancel;
  end;end;

end;

procedure TFormCadastroNotaFiscal.InunitilizarNmeros1Click(
  Sender: TObject);
  var FormInutilizacaoNFe : TForm;
 Modelo, Serie, Ano, NumeroInicial, NumeroFinal, Justificativa : String;
begin
  inherited;
  Inicia_NFe;
 if not(InputQuery('WebServices Inutilização ', 'Ano',    Ano)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Modelo', Modelo)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Serie',  Serie)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Número Inicial', NumeroInicial)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Número Inicial', NumeroFinal)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Justificativa', Justificativa)) then
    exit;
  ACBrNFe1.WebServices.Inutiliza(SQLEmpresaEMPRA14CGC.AsString, Justificativa, StrToInt(Ano), StrToInt(Modelo), StrToInt(Serie), StrToInt(NumeroInicial), StrToInt(NumeroFinal));
  ShowMessage('Inutilização Ok.');
//  FormInutilizacaoNFe := TFormInutilizacaoNFe.Create(Self);
//  FormInutilizacaoNFe.ShowModal;
end;

procedure TFormCadastroNotaFiscal.SQLTemplateNOFICFINALIDADEChange(
  Sender: TField);
begin
  inherited;
    label11.Visible := not (SQLTemplateNOFICFINALIDADE.AsString = '3');
    Label25.Visible :=     SQLTemplateNOFICFINALIDADE.AsString = '3';
end;

procedure TFormCadastroNotaFiscal.otasasNotasFiscaisEletronicasListadas1Click(
  Sender: TObject);
var xText, Comando: string;
    xTexto: TextFile;
begin
  inherited;
  if not Pergunta('Nao','Confirma a geração do arquivo de Notas Fiscais Eletrônicas?') then
    Exit;

  SQLTemplate.First;

  Text := '';
  while Not SQLTemplate.Eof do
  begin
    Text := Text + SQLTemplate.Fieldbyname('NOFIA13ID').asstring+'|';
    SQLTemplate.Next;
  End;
  if Text <> '' Then
  Begin
    AssignFile(xTexto,UpperCase('C:\UNIT\NFE\TEMP\LOTENFE.TXT'));
    ReWrite(xTexto);
    WriteLn(xTexto,Text);
    CloseFile(xTexto);
    Comando:= 'javaw -jar C:\Unit\NFe\Atualy_NFe_Certo.jar ENVIALOTE' + ' ' +SQLTemplateEmpresaCGCLookup.AsString;
    ExecAndWait(comando,SW_SHOWNORMAL);
  End Else
    ShowMessage('Nenhuma Nota Listada Para Impressão');
end;

procedure TFormCadastroNotaFiscal.VerificarStatusdaNFe1Click(
  Sender: TObject);
var comando : String;
    Point : TBookmark;
    InfoRetorno : TInfoRetornoUser;

begin
  inherited;

  if (SQLTemplateNOFIA44CHAVEACESSO.asstring = '') or (SQLTemplateNOFIA44CHAVEACESSO.isnull) then
  begin
    Showmessage('Chave de Acesso Inválida. Tente Imprimir a nota novamente.');
    Exit;
  End;
  if (SQLTemplateNOFIA15RECIBO.asstring = '') or (SQLTemplateNOFIA15RECIBO.isnull) then
  begin
    Showmessage('Número do Recibo Inválido. Tente Imprimir a nota novamente.');
    Exit;
  End;

  Comando:= 'javaw -jar C:\Unit\NFe\Atualy_NFe_Certo.jar R ' + SQLTemplateEmpresaCGCLookup.AsString + ' ' +
                                                               SQLTemplateNOFIA44CHAVEACESSO.asstring +' '+
                                                               SQLTemplateEMPRICOD.AsString+ ' '+
                                                               SQLTemplateSERIA5COD.asstring + ' '+
                                                               SQLTemplateNOFIA15RECIBO.asstring;
  ExecAndWait(comando,SW_SHOWNORMAL);

  Point := SQLTemplate.GetBookmark;
  SQLTemplate.Close;
  SQLTemplate.Open;
  SQLtemplate.GotoBookmark(Point);
  SQLTemplate.FreeBookmark(Point);
end;

procedure TFormCadastroNotaFiscal.RxSpeedButton3Click(Sender: TObject);
begin
  inherited;
  PagePrincipal.ActivePage := PageExportacao;
end;

procedure TFormCadastroNotaFiscal.LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
begin
  MemoRetornoNFE.Lines.SaveToFile(ExtractFileDir(application.ExeName)+'temp.xml');
  MyWebBrowser.Navigate(ExtractFileDir(application.ExeName)+'temp.xml');
end;

procedure TFormCadastroNotaFiscal.GravarConfiguracao;
begin
  //
end;

procedure TFormCadastroNotaFiscal.Inicia_NFe();
Var
  Ok : Boolean;
begin
  {$IFDEF ACBrNFeOpenSSL}
    ACBrNFe1.Configuracoes.Certificados.Certificado  := cdsEmpresa.FieldByName('EMPRA100CERTIFSERIE').AsString;
    ACBrNFe1.Configuracoes.Certificados.Senha        := cdsEmpresa.FieldByName('EMPRA35CERTIFSENHA').AsString;
  {$ELSE}
    ACBrNFe1.Configuracoes.Certificados.NumeroSerie := cdsEmpresa.FieldByName('EMPRA100CERTIFSERIE').AsString;
  {$ENDIF}

  ACBrNFe1.Configuracoes.Geral.FormaEmissao := StrToTpEmis(OK,IntToStr(cdsEmpresa.FieldByName('EMPRIFORMAEMISNFE').AsInteger+1));

  ACBrNFe1.Configuracoes.Geral.Salvar       := True;
  ACBrNFe1.Configuracoes.Geral.PathSalvar   := cdsEmpresa.FieldByName('EMPRA100CAMINHODANFES').AsString;
  ACBrNFe1.Configuracoes.Arquivos.PathNFe   := cdsEmpresa.FieldByName('EMPRA100CAMINHOXML').AsString;
  ACBrNFe1.Configuracoes.Arquivos.PathCan   := cdsEmpresa.FieldByName('EMPRA100CAMINHOXML').AsString;
  ACBrNFe1.Configuracoes.Arquivos.PathInu   := cdsEmpresa.FieldByName('EMPRA100CAMINHOXML').AsString;
  ACBrNFe1.Configuracoes.Arquivos.PathDPEC  := cdsEmpresa.FieldByName('EMPRA100CAMINHOXML').AsString;
  ACBrNFe1.Configuracoes.Arquivos.PathCCe   := cdsEmpresa.FieldByName('EMPRA100CAMINHOXML').AsString;

  ACBrNFe1.Configuracoes.WebServices.UF         := cdsEmpresa.FieldByName('EMPRA2WSUF').AsString;
  ACBrNFe1.Configuracoes.WebServices.Ambiente   := StrToTpAmb(Ok,IntToStr(cdsEmpresa.FieldByName('EMPRIWSAMBIENTE').AsInteger+1));
  ACBrNFe1.Configuracoes.WebServices.Visualizar := cdsEmpresa.FieldByName('EMPRA1VISUALIZAMSG').AsString = 'S';
  ACBrNFe1.Configuracoes.WebServices.ProxyHost  := cdsEmpresa.FieldByName('EMPRA100PROXYHOST').AsString;

  if cdsEmpresa.FieldByName('EMPRIPROXYPORTA').AsInteger > 0 then
    ACBrNFe1.Configuracoes.WebServices.ProxyPort  := IntToStr(cdsEmpresa.FieldByName('EMPRIPROXYPORTA').AsInteger);

  ACBrNFe1.Configuracoes.WebServices.ProxyUser  := cdsEmpresa.FieldByName('EMPRA50PROXYUSUARIO').AsString;
  ACBrNFe1.Configuracoes.WebServices.ProxyPass  := cdsEmpresa.FieldByName('EMPRA50PROXYSENHA').AsString;

  if ACBrNFe1.DANFE <> nil then
  begin
    ACBrNFe1.DANFE.TipoDANFE  := StrToTpImp(OK,IntToStr(cdsEmpresa.FieldByName('EMPRIFORMAEMISDANFE').AsInteger+1));
    ACBrNFe1.DANFE.Logo       := cdsEmpresa.FieldByName('EMPRA100CAMINHOLOGO').AsString;
  end;

//  IniFile := ChangeFileExt( 'Nfe_'+EmpresaPadrao, '.ini') ;
//
//  Ini := TIniFile.Create( IniFile );
//  try
//      {$IFDEF ACBrNFeOpenSSL}
//         edtCaminho.Text  := Ini.ReadString( 'Certificado','Caminho' ,'') ;
//         edtSenha.Text    := Ini.ReadString( 'Certificado','Senha'   ,'') ;
//
//         edtNumSerie.Visible := False;
//         Label25.Visible := False;
//         sbtnGetCert.Visible := False;
//      {$ELSE}
//         edtNumSerie.Text := Ini.ReadString( 'Certificado','NumSerie','') ;
//         edtCaminho.Text  := Ini.ReadString( 'Certificado','Caminho' ,'') ;
//         edtSenha.Text    := Ini.ReadString( 'Certificado','Senha'   ,'') ;
//         ACBrNFe1.Configuracoes.Certificados.NumeroSerie := edtNumSerie.Text;
//         edtNumSerie.Text := ACBrNFe1.Configuracoes.Certificados.NumeroSerie;
//      {$ENDIF}
//
//      rgFormaEmissao.ItemIndex := Ini.ReadInteger( 'Geral','FormaEmissao',0) ;
//      ckSalvar.Checked    := Ini.ReadBool(   'Geral','Salvar'      ,True) ;
//      edtPathLogs.Text    := Ini.ReadString( 'Geral','PathSalvar'  ,'') ;
//
////
//
//      cbUF.ItemIndex       := cbUF.Items.IndexOf(Ini.ReadString( 'WebService','UF','AL')) ;
//      rgTipoAmb.ItemIndex  := Ini.ReadInteger( 'WebService','Ambiente'  ,0) ;
//      ckVisualizar.Checked := Ini.ReadBool(    'WebService','Visualizar',False) ;
//
//
//      edtProxyHost.Text  := Ini.ReadString( 'Proxy','Host'   ,'') ;
//      edtProxyPorta.Text := Ini.ReadString( 'Proxy','Porta'  ,'') ;
//      edtProxyUser.Text  := Ini.ReadString( 'Proxy','User'   ,'') ;
//      edtProxySenha.Text := Ini.ReadString( 'Proxy','Pass'   ,'') ;
//
//
//      rgTipoDanfe.ItemIndex     := Ini.ReadInteger( 'Geral','DANFE'       ,0) ;
//      edtLogoMarca.Text         := Ini.ReadString( 'Geral','LogoMarca'   ,'') ;
//
//
//      edtSmtpHost.Text      := Ini.ReadString( 'Email','Host'   ,'') ;
//      edtSmtpPort.Text      := Ini.ReadString( 'Email','Port'   ,'') ;
//      edtSmtpUser.Text      := Ini.ReadString( 'Email','User'   ,'') ;
//      edtSmtpPass.Text      := Ini.ReadString( 'Email','Pass'   ,'') ;
//      edtEmailAssunto.Text  := Ini.ReadString( 'Email','Assunto','') ;
//      cbEmailSSL.Checked    := Ini.ReadBool(   'Email','SSL'    ,False) ;
//      StreamMemo := TMemoryStream.Create;
//      Ini.ReadBinaryStream( 'Email','Mensagem', StreamMemo) ;
//      mmEmailMsg.Lines.LoadFromStream(StreamMemo);
//      StreamMemo.Free;
//  finally
//     Ini.Free ;
//  end;

end;

procedure TFormCadastroNotaFiscal.BtnGravaConfigNFEClick(Sender: TObject);
begin
  inherited;
  GravarConfiguracao;
end;

procedure TFormCadastroNotaFiscal.ACBrNFe1GerarLog(const Mensagem: String);
begin
  inherited;
  MemoRetornoNFE.Lines.Add(Mensagem);
  ShowMessage(mensagem);
end;

procedure TFormCadastroNotaFiscal.ACBrNFe1StatusChange(Sender: TObject);
begin
  inherited;
  try frmStatusNFe.Close; except Application.ProcessMessages;  end;

  case ACBrNFe1.Status of
    stIdle :
      begin
       { if ( frmStatusNFe <> nil ) then
          frmStatusNFe.Hide;}
       Application.ProcessMessages;
      end;
    stNFeStatusServico :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Verificando Status do servico...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
    stNFeRecepcao :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Enviando dados da NFe...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
    stNfeRetRecepcao :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Recebendo dados da NFe...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
    stNfeConsulta :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Consultando NFe...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
    stNfeCancelamento :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Enviando cancelamento de NFe...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
    stNfeInutilizacao :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Enviando pedido de Inutilização...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
    stNFeRecibo :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Consultando Recibo de Lote...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
    stNFeCadastro :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Consultando Cadastro...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
    stNFeEnvDPEC :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Enviando DPEC...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
    stNFeConsultaDPEC :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Consultando DPEC...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
    stNFeEmail :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Enviando Email...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
  end;
  Application.ProcessMessages;
end;

procedure TFormCadastroNotaFiscal.ConsultarWebService1Click(
  Sender: TObject);
begin
  inherited;

    // Consulta Status Servidor Web
  Inicia_NFe;
  MemoRetornoNFE.lines.Clear;
  ACBrNFe1.WebServices.StatusServico.Executar;
  MemoRetornoNFE.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.StatusServico.RetWS);
  LoadXML(MemoRetornoNFE, WBResposta);
end;

function TFormCadastroNotaFiscal.Gerar_XMLACBr():string;
var  nEmail, nTipoProduto, modBC, modBCST : String;
    Cpf_Dest, Cnpj_Dest, IE_Dest, CFOP, CdBarras, TipoFrete, Descr_Prod, Unidade, NCM, ForPag, eServico : String;
    Erro : boolean;
    Vlr_Tot_Bruto, ValordoPis, ValordoCofins, PercCofins, PercPis : double;
    iCRT : integer;
begin

  if not VerificaDadosCliente then
    Exit;

  if not VerificaDadosTransp then
    Exit;

  // Zera os totalizadores
  vBC_Total  := 0; vICMS_Total := 0; vBCST_Total   := 0; vST_Total    := 0; vProd_Total := 0; vFrete_Total  := 0; vNF_Total    := 0;
  vSeg_Total := 0; vDesc_total := 0; vII_Total     := 0; vIPI_Total   := 0; vPIS_Total  := 0; vCOFINS_Total := 0; vOutro_Total := 0;

  CFOP := SQLTemplateCFOPA5COD.Value;

  while pos('-',CFOP) > 0 do
    delete(CFOP,pos('-',CFOP),1);
  while pos('.',CFOP) > 0 do
    delete(CFOP,pos('.',CFOP),1);

  if length(CFOP) <> 4 then
    begin
      ShowMessage('Tamanho do CFOP está incorreto! Verifique no Cadastro de Operações de Estoque');
      Exit;
    end;

  ACBrNFe1.NotasFiscais.Clear;
  with ACBrNFe1.NotasFiscais.Add.NFe do
  begin
    infNFe.ID     := sqltemplate.fieldbyname('NOFIA13ID').asstring;
    Ide.natOp     := SQLLocate('CFOP','CFOPA5COD','CFOPA60DESCR','"'+CFOP+'"');
    Ide.nNF       := sqltemplate.fieldbyname('NOFIINUMERO').AsInteger;
    Ide.cNF       := sqltemplate.fieldbyname('NOFIINUMERO').AsInteger;
    Ide.modelo    := 55;
    Ide.serie     := StrToInt(sqltemplate.fieldbyname('SERIA5COD').AsString);
    Ide.dEmi      := sqltemplate.fieldbyname('NOFIDEMIS').AsDateTime;
    Ide.dSaiEnt   := sqltemplate.fieldbyname('NOFIDSAIDAENTRADA').AsDateTime;
    Ide.hSaiEnt   := sqltemplate.fieldbyname('NOFIDSAIDAENTRADA').AsDateTime;


    if SQLTemplateNOFA1ENTRADASAIDA.AsString = 'S' Then
      Ide.tpNF      := tnSaida
    else
      Ide.tpNF      := tnEntrada;

    // verifica a forma de pagamento
    SQLContasReceber.Open;
    SQLContasReceber.First;
    if SQLContasReceberCTRCDVENC.isnull then
        Ide.indPag    := ipVista
    else
      begin
        if  (SQLTemplateNOFIDEMIS.AsString = SQLContasReceberCTRCDVENC.AsString) then
          Ide.indPag    := ipVista
        else
          Ide.indpag    := ipPrazo;
        SQLContasReceber.Next;
        if SQLContasReceber.RecordCount > 1 then
          Ide.indpag    := ipPrazo;
      end;

    Ide.verProc   := '3.0';
    Ide.cUF       := StrToInt(SQLLocate('EMPRESA','EMPRICOD','EMPRIUFCODFED',EmpresaPadrao));
    Ide.cMunFG    := StrToInt(SQLLocate('EMPRESA','EMPRICOD','EMPRIMUNICODFED',EmpresaPadrao));

    // Testa se tem os cod Estado e Municipio conforme padrao IBGE
    if Ide.cUF < 1 then
      begin
        ShowMessage('Erro: Verifique no Cadastro de Empresa o Cod.UF na Tabela Ibge!');
        Exit;
      end;
    if Length(IntToStr(Ide.cMunFG)) <> 7 then
      begin
        ShowMessage('Erro: Verifique no Cadastro de Empresa o Cod.Municipio na Tabela Ibge!');
        Exit;
      end;

    // Notas Fiscais Referenciadas
    SQLNotaFiscalReferenciada.Close;
    SQLNotaFiscalReferenciada.SQL.Clear;
    SQLNotaFiscalReferenciada.SQL.Add('Select * From NOTAFISCALREFERENCIADA Where NOFIA13ID =:xNOFIA13ID');
    SQLNotaFiscalReferenciada.ParamByName('xNOFIA13ID').AsString := SQLTemplateNOFIA13ID.AsString;
    SQLNotaFiscalReferenciada.Open;
    if not SQLNotaFiscalReferenciada.IsEmpty then
      begin
        while not SQLNotaFiscalReferenciada.Eof do
          begin
            // Referenciar Nota Fiscal Eletronica
            if SQLNotaFiscalReferenciada.FieldByName('TIPO').AsString = '1' Then
              Ide.refNFP.nNF := SQLNotaFiscalReferenciada.FieldByName('CHAVEACESSO').AsInteger;
            // Referenciar Conhecimento Eletronica
            if SQLNotaFiscalReferenciada.FieldByName('TIPO').AsString = '2' Then
              Ide.refNFP.nNF := SQLNotaFiscalReferenciada.FieldByName('CHAVEACESSO').AsInteger;
            // Referenciar Nota Fiscal 1 e 1A
            if SQLNotaFiscalReferenciada.FieldByName('TIPO').AsString = '3' Then
              begin
                Ide.refNFP.cUF       := SQLNotaFiscalReferenciada.FieldByName('UF').AsInteger;
                Ide.refNFP.AAMM      := FormatDateTime('AAMM',SQLNotaFiscalReferenciada.FieldByName('DATAEMISSAO').AsDateTime);
                Ide.refNFP.CNPJCPF   := SQLNotaFiscalReferenciada.FieldByName('CNPJ_CPF').AsString;
                Ide.refNFP.modelo    := SQLNotaFiscalReferenciada.FieldByName('MODELO').AsString;
                Ide.refNFP.serie     := SQLNotaFiscalReferenciada.FieldByName('SERIA5COD').AsInteger;
                Ide.refNFP.nNF       := SQLNotaFiscalReferenciada.FieldByName('NUMERO').AsInteger;
              end;
            // Nota Fiscal de Produtor Rural
            if SQLNotaFiscalReferenciada.FieldByName('TIPO').AsString = '4' Then
              begin
                Ide.refNFP.cUF       := SQLNotaFiscalReferenciada.FieldByName('UF').AsInteger;
                Ide.refNFP.AAMM      := FormatDateTime('AAMM',SQLNotaFiscalReferenciada.FieldByName('DATAEMISSAO').AsDateTime);
                Ide.refNFP.CNPJCPF   := SQLNotaFiscalReferenciada.FieldByName('CNPJ_CPF').AsString;
                Ide.refNFP.modelo    := SQLNotaFiscalReferenciada.FieldByName('MODELO').AsString;
                Ide.refNFP.serie     := SQLNotaFiscalReferenciada.FieldByName('SERIA5COD').AsInteger;
                Ide.refNFP.nNF       := SQLNotaFiscalReferenciada.FieldByName('NUMERO').AsInteger;
                Ide.refNFP.IE        := SQLNotaFiscalReferenciada.FieldByName('IE').AsString;
              end;
            // Cupom Fiscal
            if SQLNotaFiscalReferenciada.FieldByName('TIPO').AsString = '5' Then
              begin
                // Ide.refNFP.modelo    := SQLNotaFiscalReferenciada.FieldByName('MODELO').AsString;
                // Ide.erefNFP.nNF      := SQLNotaFiscalReferenciada.FieldByName('NUMERO_COO').AsInteger;
                 //                     := SQLNotaFiscalReferenciada.FieldByName('NUMERO_ECF').AsString;
              end;
          end;
        SQLNotaFiscalReferenciada.Next;
      end;

    // dados do emitente
    Emit.CNPJCPF          := sn(SQLLocate('EMPRESA','EMPRICOD','EMPRA14CGC',EmpresaPadrao));

    IF (SQLLocate('EMPRESA','EMPRICOD','EMPRA20IE',EmpresaPadrao) = '') or
       (SQLLocate('EMPRESA','EMPRICOD','EMPRA20IE',EmpresaPadrao) = 'ISENTO') Then
         Emit.IE          := '1234567890'
    else
         Emit.IE          := sn(SQLLocate('EMPRESA','EMPRICOD','EMPRA20IE',EmpresaPadrao));

    Emit.IM               := sn(SQLLocate('EMPRESA','EMPRICOD','EMPRA20IMUNIC',EmpresaPadrao));
    Emit.CNAE             := sn(SQLLocate('EMPRESA','EMPRICOD','CNAEFISCAL',EmpresaPadrao));

    IF SQLLocate('EMPRESA','EMPRICOD','EMPRA3CRT',EmpresaPadrao) = '1' Then
      Emit.CRT      := crtSimplesNacional
    else
    IF SQLLocate('EMPRESA','EMPRICOD','EMPRA3CRT',EmpresaPadrao) = '2' Then
      Emit.CRT      := crtSimplesExcessoReceita
      else
    IF SQLLocate('EMPRESA','EMPRICOD','EMPRA3CRT',EmpresaPadrao) = '3' Then
      Emit.CRT      := crtRegimeNormal;

    Emit.xNome             := SQLLocate('EMPRESA','EMPRICOD','EMPRA60RAZAOSOC',EmpresaPadrao);
    Emit.xFant             := SQLLocate('EMPRESA','EMPRICOD','EMPRA60NOMEFANT',EmpresaPadrao);
    Emit.EnderEmit.fone    := SQLLocate('EMPRESA','EMPRICOD','EMPRA20FONE',EmpresaPadrao);
    Emit.EnderEmit.CEP     := StrToInt(SN(SQLLocate('EMPRESA','EMPRICOD','EMPRA8CEP',EmpresaPadrao)));
    Emit.EnderEmit.xLgr    := SQLLocate('EMPRESA','EMPRICOD','EMPRA60END',EmpresaPadrao);
    Emit.EnderEmit.nro     := SQLLocate('EMPRESA','EMPRICOD','EMPRIENDNRO',EmpresaPadrao);
    Emit.EnderEmit.xCpl    := ''; // Complemento
    Emit.EnderEmit.xBairro := SQLLocate('EMPRESA','EMPRICOD','EMPRA60BAI',EmpresaPadrao);
    Emit.EnderEmit.cMun    := StrToInt(SQLLocate('EMPRESA','EMPRICOD','EMPRIMUNICODFED',EmpresaPadrao));
    Emit.EnderEmit.xMun    := SQLLocate('EMPRESA','EMPRICOD','EMPRA60CID',EmpresaPadrao);
    Emit.EnderEmit.UF      := SQLLocate('EMPRESA','EMPRICOD','EMPRA2UF',EmpresaPadrao);
    Emit.enderEmit.cPais   := 1058;
    Emit.enderEmit.xPais   := 'BRASIL';


    // destinatario
    if Length(SQLTemplateCliFornEmpCGCCPFLookUp.AsString) = 14 then
      begin
        Cnpj_Dest := SQLTemplateCliFornEmpCGCCPFLookUp.AsString;
        IE_Dest   := SQLTemplateCliFornEmpIERGLookUp.AsString;

        Dest.IE   := sn(IE_Dest);
        if (SQLTemplateCliFornEmpEstadoLookUp.AsString <> 'EX') then
          Dest.CNPJCPF           := sn(Cnpj_Dest);
      end
    else
      begin
        Cpf_Dest := SQLTemplateCliFornEmpCGCCPFLookUp.AsString;
        IE_Dest := SQLLocate('CLIENTE','CLIEA13ID','CLIEA30OUTROSDOC','"'+SQLTemplateCLIEA13ID.AsString+'"');
        if  ( IE_Dest <> '') and (Trim(IE_Dest) <> 'ISENTO')  THEN
          IE_Dest := SoNumeros(IE_Dest)
        else
          IE_Dest   := 'ISENTO';
        if SQLTemplateOrigemDestinoLookUp.asstring = 'F' then
          IE_Dest   :=  SQLTemplateCliFornEmpIERGLookUp.AsString;

        Dest.IE   := sn(IE_Dest);
        Dest.CNPJCPF           := sn(Cpf_Dest);
      end;

    nEmail := '';
    if SQLTemplateOrigemDestinoLookUp.AsString[1] = 'C' then
      nEmail := SQLLocate('CLIENTE','CLIEA13ID','CLIEA60EMAIL','"' + SQLTemplate.FieldByName('CLIEA13ID').AsString + '"')
    else if SQLTemplateOrigemDestinoLookUp.AsString[1] = 'F' then
      nEmail := SQLLocate('FORNECEDOR','FORNICOD','FORNA60EMAIL',SQLTemplate.FieldByName('FORNICOD').AsString);

    Dest.xNome             := ConverteAcentos(SQLTemplateCliFornEmpLookUp.AsString);
    Dest.EnderDest.CEP     := StrToInt(sn(SQLTemplateCliFornEmpCEPLookUp.AsString));
    Dest.EnderDest.xLgr    := Converteacentos(SQLTemplateCliFornEmpEnderecoLookUp.AsString);
    Dest.EnderDest.nro     := SQLTemplateEmpNumeroEndLookUp.AsString;
    Dest.EnderDest.xCpl    := ''; // Complemento
    Dest.EnderDest.xBairro := ConverteAcentos(SQLTemplateCliFornEmpBairroLookUp.AsString);
    Dest.EnderDest.cMun    := StrToInt(SQLTemplateCliFornEmpCdMunicipoNfeLookUp.AsString);
    Dest.EnderDest.xMun    := ConverteAcentos(SQLTemplateCliFornEmpCidadeLookUp.AsString);
    Dest.EnderDest.UF      := SQLTemplateCliFornEmpEstadoLookUp.AsString;
    Dest.EnderDest.Fone    := sn(SQLTemplateCliFornEmpFoneLookUp.AsString);
    Dest.ISUF              := ''; // Inscrição na SUFRAMA
    Dest.Email             := nEmail;

    if SQLTemplateCliFornEmpEstadoLookUp.AsString <> 'EX' then
      begin
        Dest.EnderDest.cPais   := 1058;
        Dest.EnderDest.xPais   := 'BRASIL';
      end
    else
      begin
        Dest.EnderDest.cPais   := 2496;
        Dest.EnderDest.xPais   := 'EXTERIOR';
        Dest.IE                := 'ISENTO';
      end;

    // Testa se tem cod.mun.ibge
    if Length(IntToStr(Dest.EnderDest.cMun)) <> 7 then
      begin
        ShowMessage('Erro: Verifique no Cadastro de Destinatario o Cod.Municipio na Tabela Ibge!');
        Exit;
      end;

    // Loop dos Produtos
    Dm.ImportandoPedidoVenda := True; // Pra enganar a rotina Calcfields

    SQLNotaFiscalItem.Close;
    SQLNotaFiscalItem.RequestLive := False;
    SQLNotaFiscalItem.SQL.Clear;
    SQLNotaFiscalItem.SQL.Add('Select i.* From NOTAFISCALITEM i left join Produto p on p.prodicod = i.prodicod Where NOFIA13ID =:NOFIA13ID order by p.proda60descr');
    SQLNotaFiscalItem.Open;
    SQLNotaFiscalItem.First;
    While not SQLNotaFiscalItem.Eof do
      begin
        if SQLNotaFiscalItemCFOPA5CODAUX.Value <> '' then
          CFOP := SoNumeros(SQLNotaFiscalItemCFOPA5CODAUX.asstring)
        else
          CFOP := SoNumeros(SQLTemplateCFOPA5COD.AsString);

        // Testa se tem CFOP
        if Length(CFOP) <> 4 then
          begin
            ShowMessage('Erro: Tamanho do CFOP incorreto! Verifique no Cadastro de Operações de Estoque');
            Exit;
          end;

        if SQLNotaFiscalItemNFITN3TOTVEND.isnull then
          Vlr_Tot_Bruto := (SQLNotaFiscalItemNFITN2VLRUNIT.Value * SQLNotaFiscalItemNFITN3QUANT.Value) - SQLNotaFiscalItemNFITN2VLRDESC.AsFloat
        else
          Vlr_Tot_Bruto := SQLNotaFiscalItemNFITN3TOTVEND.Value;

        if FileExists('VFNota.txt') then // exibe o valor final (total custo + subst. Trib.) ao lado do nome do produto.
          Descr_Prod    := ConverteAcentos(SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',SQLNotaFiscalItemPRODICOD.AsString)) + CalculoSubstituicaoTributaria
        else
          if FileExists ('NFEREDUZ.txt') then
             Descr_Prod   := ConverteAcentos(Trim(SQLLocate('PRODUTO','PRODICOD','PRODA30ADESCRREDUZ',SQLNotaFiscalItemPRODICOD.AsString))+ ' ' + Trim(SQLNotaFiscalItemNFITA254OBS.AsString))
          else
            Descr_Prod    := ConverteAcentos(Trim(SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',SQLNotaFiscalItemPRODICOD.AsString))+ ' ' + Trim(SQLNotaFiscalItemNFITA254OBS.AsString));

        if not FileExists ('NFEBarras.txt') then
          CdBarras      := SQLLocate('PRODUTO','PRODICOD','PRODA60CODBAR',SQLNotaFiscalItemPRODICOD.AsString)
        else
          CdBarras      := '';

        SitTrib       := SQLNotaFiscalItemNFITICST.AsString;
        // Testa se tem SitTrib
        if SitTrib = '' then
          begin
            ShowMessage('Erro: Situação Tributária do Produto não foi informada no Cadastro de Produto = ' +SQLNotaFiscalItemPRODICOD.AsString);
            Exit;
          end;
        // Testa se Empresa for do Simples 1 ou 2 e se SitTrib for menor que 3 digitos, tem erro de cadastro produto.
        if (SQLLocate('EMPRESA','EMPRICOD','EMPRA3CRT',EmpresaPadrao) <> '3') and (length(SitTrib) < 3) then
          begin
            ShowMessage('Erro: Situação Tributária do Produto = ' +SQLNotaFiscalItemPRODICOD.AsString + ' não confere com o Regime do Emitente informado no Cadastro de Empresas!');
            Exit;
          end;
        Unidade       := SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',SQLLocate('PRODUTO','PRODICOD','UNIDICOD',SQLNotaFiscalItemPRODICOD.AsString));
        NCM           := SQLLocate('NCM','NCMICOD','NCMA30CODIGO',SQLLocate('PRODUTO','PRODICOD','NCMICOD',SQLNotaFiscalItemPRODICOD.AsString));
        nTipoProduto  := SQLLocate('PRODUTO','PRODICOD','PRODA1TIPO',SQLNotaFiscalItemPRODICOD.AsString);
        eServico      := SQLLocate('PRODUTO','PRODICOD','PRODCSERVICO',SQLNotaFiscalItemPRODICOD.AsString);
        modBC         := SQLLocate('PRODUTO','PRODICOD','PRODA1MODBC',SQLNotaFiscalItemPRODICOD.AsString);
        modBCST       := SQLLocate('PRODUTO','PRODICOD','PRODA1MODBCST',SQLNotaFiscalItemPRODICOD.AsString);

        // Testa se Produto tem NCM.
        if NCM = '' then
          begin
            ShowMessage('Erro: NCM do Produto = ' +SQLNotaFiscalItemPRODICOD.AsString + ' não informado!');
            Exit;
          end;


        If eServico = 'N' then
          vProd_Total  := vProd_Total +  Vlr_Tot_Bruto + SQLNotaFiscalItemNFITN2VLRDESC.AsFloat;

        With Det.Add do
          begin
           Prod.nItem    := SQLNotaFiscalItemNFITIITEM.asinteger;
           Prod.cProd    := SQLNotaFiscalItemPRODICOD.AsString;
           Prod.cEAN     := CdBarras;
           prod.NCM      := sn(NCM);
           Prod.xProd    := Copy(Descr_Prod,0,120);
           if SQLNotaFiscalItemCFOPA5CODAUX.AsString <> '' then
             Prod.CFOP   := sn(SQLNotaFiscalItemCFOPA5CODAUX.AsString)
           else
             Prod.CFOP   := sn(CFOP);
           Prod.uCom     := Unidade;
           Prod.qCom     := SQLNotaFiscalItemNFITN3QUANT.asfloat;
           Prod.vUnCom   := SQLNotaFiscalItemNFITN2VLRUNIT.asfloat;
           Prod.vProd    := Vlr_Tot_Bruto + SQLNotaFiscalItemNFITN2VLRDESC.AsFloat; // Vlr.Total
           Prod.qTrib    := SQLNotaFiscalItemNFITN3QUANT.asfloat;  // Qtde Tributavel
           Prod.vUnTrib  := SQLNotaFiscalItemNFITN2VLRUNIT.asfloat;
           prod.uTrib    := Unidade;
           prod.vDesc    := SQLNotaFiscalItemNFITN2VLRDESC.AsCurrency;
           Prod.vFrete   := SQLNotaFiscalItemNFITN2VLRFRETE.AsCurrency;
           Prod.vSeg     := SQLNotaFiscalItemNFITN2SEGURO.AsCurrency;
           Prod.vOutro   := SQLNotaFiscalItemNFITN2OUTRASDESP.AsCurrency;
           infAdProd     := SQLNotaFiscalItemNFITA254OBS.AsString; // complemento do nome do item
           Prod.EXTIPI   := '23';
           Prod.IndTot   := itSomaTotalNFe;
           if (Copy(CdBarras,0,3) <> '999') and (cdBarras <> '') then
             Prod.cEANTrib := CdBarras;

           with Imposto do
            begin
              if SQLLocate('PRODUTO','PRODICOD','PRODIORIGEM',SQLNotaFiscalItemPRODICOD.AsString) = '0' then
                ICMS.orig  := oeNacional;
              if SQLLocate('PRODUTO','PRODICOD','PRODIORIGEM',SQLNotaFiscalItemPRODICOD.AsString) = '1' then
                ICMS.orig  := oeEstrangeiraImportacaoDireta;
              if SQLLocate('PRODUTO','PRODICOD','PRODIORIGEM',SQLNotaFiscalItemPRODICOD.AsString) = '2' then
                ICMS.orig  := oeEstrangeiraAdquiridaBrasil;


              iCRT := StrToInt(SQLLocate('EMPRESA','EMPRICOD','EMPRA3CRT',EmpresaPadrao));
              case iCRT of
              1:begin  // Linhas para o simples nacional
                 if SQLNotaFiscalItemNFITICST.asstring = '101' then ICMS.CSOSN :=  csosn101;
                 if SQLNotaFiscalItemNFITICST.asstring = '102' then ICMS.CSOSN :=  csosn102;
                 if SQLNotaFiscalItemNFITICST.asstring = '103' then ICMS.CSOSN :=  csosn103;
                 if SQLNotaFiscalItemNFITICST.asstring = '300' then ICMS.CSOSN :=  csosn300;
                 if SQLNotaFiscalItemNFITICST.asstring = '400' then ICMS.CSOSN :=  csosn400;
                 if SQLNotaFiscalItemNFITICST.asstring = '201' then ICMS.CSOSN :=  csosn201;
                 if SQLNotaFiscalItemNFITICST.asstring = '202' then ICMS.CSOSN :=  csosn202;
                 if SQLNotaFiscalItemNFITICST.asstring = '500' then ICMS.CSOSN :=  csosn500;
                 if SQLNotaFiscalItemNFITICST.asstring = '900' then ICMS.CSOSN :=  csosn900;

                 case ICMS.CSOSN of

                  csosn101 : begin
                              ICMS.pCredSN     := 0.0; // Colocar o percentual do Crédito
                              ICMS.vCredICMSSN := 0.0; // Colocar o valor do Crédito
                             end;

                  csosn102 : begin

                             end;
                  csosn103 : begin

                             end;
                  csosn300 : begin

                             end;
                  csosn400 : begin

                             end;

                  csosn201 : begin
                              ICMS.modBCST     := dbisMargemValorAgregado;
                              ICMS.pMVAST      := 0; // Adilson, verificar melhor
                              ICMS.pRedBCST    := 00.00;
                              ICMS.vBCST       := SQLNotaFiscalItemNFITN2BASESUBS.Value;
                              ICMS.pICMSST     := 00.00;
                              ICMS.vICMSST     := SQLNotaFiscalItemNFITN2VLRSUBS.value;
                              ICMS.pCredSN     := 0.0; // Colocar o percentual do Crédito
                              ICMS.vCredICMSSN := 0.0; // Colocar o valor do Crédito
                             end;

                  csosn202 : begin
                              ICMS.modBCST  := dbisMargemValorAgregado;
                              ICMS.pMVAST   := 0; // Adilson, verificar melhor
                              ICMS.pRedBCST := 00.00;
                              ICMS.vBCST    := SQLNotaFiscalItemNFITN2BASESUBS.Value;
                              ICMS.pICMSST  := 00.00;
                              ICMS.vICMSST  := SQLNotaFiscalItemNFITN2VLRSUBS.value;
                             end;

                  csosn500 : begin
                              ICMS.vBCSTRet   := SQLNotaFiscalItemNFITN2BASESUBS.Value;
                              ICMS.vICMSSTRet := SQLNotaFiscalItemNFITN2VLRSUBS.Value;
                             end;

                  csosn900 : begin
                              ICMS.modBC       := dbiMargemValorAgregado;
                              ICMS.vBC         := SQLNotaFiscalItemNFITN2BASEICMS.value;
                              ICMS.pRedBC      := 0; // Adilson nao achei na tabela migrate 123
                              ICMS.pICMS       := SQLNotaFiscalItemNFITN2PERCICMS.Value;
                              ICMS.vICMS       := SQLNotaFiscalItemNFITN2VLRICMS.value;
                              ICMS.modBCST     := dbisMargemValorAgregado;
                              ICMS.pMVAST      := 0; // Adilson nao achei na tabela migrate 123
                              ICMS.pRedBCST    := 00.00;
                              ICMS.vBCST       := SQLNotaFiscalItemNFITN2BASESUBS.value;
                              ICMS.pICMSST     := 00.00;
                              ICMS.vICMSST     := SQLNotaFiscalItemNFITN2VLRSUBS.value;
                              ICMS.pCredSN     := 0.0; // Colocar o percentual do Crédito
                              ICMS.vCredICMSSN := 0.0; // Colocar o valor do Crédito
                             end;
                 end; // fim do case icms.csosn

                end;

              2:begin
                 //        (...)
                end;

              3:begin
                 if SQLNotaFiscalItemNFITICST.asstring =  '0' then ICMS.CST :=  cst00;
                 if SQLNotaFiscalItemNFITICST.asstring = '10' then ICMS.CST :=  cst10;
                 if SQLNotaFiscalItemNFITICST.asstring = '20' then ICMS.CST :=  cst20;
                 if SQLNotaFiscalItemNFITICST.asstring = '30' then ICMS.CST :=  cst30;
                 if SQLNotaFiscalItemNFITICST.asstring = '40' then ICMS.CST :=  cst40;
                 if SQLNotaFiscalItemNFITICST.asstring = '41' then ICMS.CST :=  cst41;
                 if SQLNotaFiscalItemNFITICST.asstring = '50' then ICMS.CST :=  cst50;
                 if SQLNotaFiscalItemNFITICST.asstring = '51' then ICMS.CST :=  cst51;
                 if SQLNotaFiscalItemNFITICST.asstring = '60' then ICMS.CST :=  cst60;
                 if SQLNotaFiscalItemNFITICST.asstring = '70' then ICMS.CST :=  cst70;
                 if SQLNotaFiscalItemNFITICST.asstring = '80' then ICMS.CST :=  cst80;
                 if SQLNotaFiscalItemNFITICST.asstring = '81' then ICMS.CST :=  cst81;
                 if SQLNotaFiscalItemNFITICST.asstring = '90' then ICMS.CST :=  cst90;

                 ICMS.orig   := oeNacional;
                 ICMS.modBC  := dbiPrecoTabelado;
                 ICMS.vBC    := SQLNotaFiscalItemNFITN2BASEICMS.Value;
                 ICMS.pICMS  := SQLNotaFiscalItemNFITN2PERCICMS.Value;
                 ICMS.vICMS  := SQLNotaFiscalItemNFITN2VLRICMS.Value;

                 {ICMS.vBCST   := SQLNotaFiscalItemNFITN2BASESUBS.Value;
                 ICMS.vICMSST := SQLNotaFiscalItemNFITN2VLRSUBS.Value;

                 // Alimenta Cofins
                 if SQLLocate('PRODUTO','PRODICOD','PRODA2CSTCOFINS', SQLNotaFiscalItemPRODICOD.AsString) = '01' then
                   begin
                     PercCofins     := StrToFloat(SQLLocate('PRODUTO','PRODICOD','PRODN2ALIQCOFINS', SQLNotaFiscalItemPRODICOD.AsString));
                     vCOFINS_Total  := (Vlr_Tot_Bruto * PercCofins) /100;
                     COFINS.CST     := cof01;
                     COFINS.vBC     := Vlr_Tot_Bruto;
                     COFINS.pCOFINS := PercCofins;
                     COFINS.vCOFINS := vCOFINS_Total;
                   end;

                 // Alimenta Pis
                 if SQLLocate('PRODUTO','PRODICOD','PRODA2CSTPIS', SQLNotaFiscalItemPRODICOD.AsString) = '01' then
                   begin
                     PercPis        := StrToFloat(SQLLocate('PRODUTO','PRODICOD','PRODN2ALIQPIS', SQLNotaFiscalItemPRODICOD.AsString));
                     vPIS_Total     := (Vlr_Tot_Bruto * PercPis) /100;
                     PIS.CST        := pis01;
                     PIS.vBC        := Vlr_Tot_Bruto;
                     PIS.pPIS       := PercPis;
                     PIS.vPIS       := vPIS_Total;
                   end;}

                 // Alimenta IPI
                 IPI.CST     := ipi00;
                 IPI.clEnq   := '';
                 IPI.cEnq    := '999';
                end;

              end; // fim do case iCRT

            end; // fim do with imposto

          end; // fim do with det.add

        SQLNotaFiscalItem.Next;
      end; // fim do loop de itens

    // Exportadoras (Ex.Darvami)
    if sqltemplateNOFIA2UFEMBARQUE.Value <> '' then
      begin
        exporta.UFembarq   := sqltemplateNOFIA2UFEMBARQUE.AsString;
        exporta.xLocEmbarq := SQLTemplateNOFIA60LOCALEMBARQUE.AsString;
      end;

  // Inserir Totais
    // base de calculo do icms
    Total.ICMSTot.vBC   := sqltemplateNOFIN2BASCALCICMS.Value;
    // valor do icms
    Total.ICMSTot.vICMS := sqltemplateNOFIN2VLRICMS.Value;
    // base de calculo st
    Total.ICMSTot.vBCST := sqltemplateNOFIN2BASCALCSUBS.Value;
    // valor st
    Total.ICMSTot.vst := sqltemplateNOFIN2VLRSUBS.Value;
    // frete
    Total.ICMSTot.vFrete:= sqltemplateNOFIN2VLRFRETE.Value;
    // seguro
    Total.ICMSTot.vSeg  := sqltemplateNOFIN2VLRSEGURO.Value;
    // outras despesas
    Total.ICMSTot.vOutro:= sqltemplateNOFIN2VLROUTRASDESP.Value;
    // ipi
    Total.ICMSTot.vIPI:= sqltemplateNOFIN2VLRIPI.Value;
    // valor da nota
    Total.ICMSTot.vNF   := sqltemplateNOFIN2VLRNOTA.Value;
    // valor dos produtos
    Total.ICMSTot.vProd := sqltemplateNOFIN2VLRPRODUTO.Value;
    // desconto
    Total.ICMSTot.vDesc := sqltemplateNOFIN2VLRDESC.Value;


    // Duplicatas
    SQLContasReceber.Close;
    SQLContasReceber.Open ;
    SQLContasReceber.First;
    if not SqlContasReceber.IsEmpty then
      begin
        cobr.Fat.nFat  := SQLTemplateNOFIINUMERO.AsString;
        cobr.Fat.vOrig := RoundTo(SQLTemplateNOFIN2VLRPRODUTO.Value, -2);
        cobr.Fat.vDesc := RoundTo(sqltemplateNOFIN2VLRDESC.Value, -2);
        cobr.Fat.vLiq  := RoundTo(sqltemplateNOFIN2VLRNOTA.Value, -2);
        while not SQLContasReceber.Eof do
          begin
            with Cobr.Dup.Add do
              begin
                nDup  := SQLTemplateNOFIINUMERO.AsString+'-'+SQLContasReceberCTRCINROPARC.AsString;
                dVenc := SQLContasReceberCTRCDVENC.AsDateTime;
                vDup  := RoundTo(SQLContasReceberCTRCN2VLR.asfloat, -2);
              end;
            SQLContasReceber.Next;
          end;
      end;
    SQLContasReceber.Close;

    // Trasnportadora
    if SQLTemplateNOFICFRETEPORCONTA.Value = 'C' then
      Transp.modFrete := mfContaEmitente
    else
      Transp.modFrete := mfContaDestinatario;
    { Temos apenas 2 opcoes para frete
      2 : Transp.modFrete := mfContaTerceiros;
      9 : Transp.modFrete := mfSemFrete;}

    If Trim(SQLTemplateTransportadoraCGCLookUp.AsString) <> EmptyStr then
      Transp.Transporta.CNPJCPF :=  sn(SQLTemplateTransportadoraCGCLookUp.AsString);

    if Trim(SQLTemplateTransportadoraCPF.AsString) <> EmptyStr then
      Transp.Transporta.CNPJCPF :=  sn(SQLTemplateTransportadoraCPF.AsString);

     if Trim(SQLTemplateTransportadoraLookup.AsString) <> EmptyStr then
       Transp.Transporta.xNome   := ConverteAcentos(SQLTemplateTransportadoraLookup.AsString);

     if Trim(SQLTemplateTransportadoraIELookUp.asstring) <> EmptyStr then
       Transp.Transporta.IE      := SQLTemplateTransportadoraIELookUp.asstring;

     if Trim(SQLTemplateTransportadoraEnderecoLookUp.asstring) <> EmptyStr then
       Transp.Transporta.xEnder  := ConverteAcentos(SQLTemplateTransportadoraEnderecoLookUp.asstring);

     if Trim(SQLTemplateTransportadoraCidadeLookUp.AsString) <> EmptyStr then
       Transp.Transporta.xMun    := ConverteAcentos(SQLTemplateTransportadoraCidadeLookUp.AsString);

     if Trim(SQLTemplateTransportadoraEstadoLookUp.asstring) <> EmptyStr then
       Transp.Transporta.UF      := SQLTemplateTransportadoraEstadoLookUp.asstring;

     Transp.retTransp.vServ    := RoundTo(0.0, -2);;  // X12 - Valor do Serviço
     Transp.retTransp.vBCRet   := RoundTo(0.0, -2);;  // X13 - BC da Retenção do ICMS
     Transp.retTransp.pICMSRet := RoundTo(0.0, -2);;  // X14 - Alíquota da Retenção
     Transp.retTransp.vICMSRet := RoundTo(0.0, -2);;  // X15 - Valor do ICMS Retido
     Transp.retTransp.CFOP     := ''; // X16 - CFOP (Utilizar Tabela de CFOP)
     Transp.retTransp.cMunFG   := 0;  // X17 - Código do município de ocorrência do fato gerador do ICMS do transporte (Tabela do IBGE)

     //Não criar o grupo "veicTransp" caso não tenha placa senão entra na validação do SEFAZ
     if Trim(SQLTemplateNOFIA8PLACAVEIC.AsString) <> EmptyStr then
     begin
       Transp.veicTransp.placa   := SQLTemplateNOFIA8PLACAVEIC.AsString;
       Transp.veicTransp.UF      := SQLTemplateTransportadoraEstadoLookUp.AsString;
       Transp.veicTransp.RNTC    := ''; // X21 - Registro Nacional de Transportador de Carga (ANTT)
     end;
     
     //Dados sobre Volumes Transportados

     with Transp.Vol.Add do
      begin
       qVol  := SQLTemplateNOFIN3QUANT.AsInteger;
       esp   := SQLTemplateNOFIA20ESPECIE.AsString;
       marca := SQLTemplateNOFIA15MARCA.AsString;
       nVol  := '0'; // Adilson, ver melhor
       pesoL := RoundTo(SQLTemplateNOFIN3PESLIQ.AsFloat, -3);
       pesoB := RoundTo(SQLTemplateNOFIN3PESBRUT.AsFloat, -3);
      end;


     // Informações complementares

     InfAdic.infCpl := TrocaEnter(ConverteAcentos(SQLTemplateNOFIA255OBS.AsString)) + ' ' +
                       TrocaEnter(ConverteAcentos(SQLTEMPLATENOFIAOBSCORPONF.AsString));

  end;

  // Gerar XML
  ACBrNFe1.NotasFiscais.Items[0].SaveToFile;
  result := ACBrNFe1.NotasFiscais.Items[0].NomeArq;

  MemoRetornoNFE.Lines.LoadFromFile(PathWithDelim(ACBrNFe1.Configuracoes.Geral.PathSalvar)+copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, (length(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID)-44)+1, 44)+'-NFe.xml');
  LoadXML(MemoRetornoNFE, WBResposta);
end;

function TFormCadastroNotaFiscal.SN(sNum:string):string;
var s1, s2: string;
    i: Integer;
begin
     s1 := snum;
     s2 := '';
     for i := 1 to Length(s1) do
          if s1[i] in ['0'..'9'] then
               s2 := s2 + s1[i];
     result:=s2;
end;

procedure TFormCadastroNotaFiscal.sbtnCaminhoCertClick(Sender: TObject);
begin
  inherited;
//  OpenDialog1.Title := 'Selecione o Certificado';
//  OpenDialog1.DefaultExt := '*.pfx';
//  OpenDialog1.Filter := 'Arquivos PFX (*.pfx)|*.pfx|Todos os Arquivos (*.*)|*.*';
//  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
//  if OpenDialog1.Execute then
//    edtCaminho.Text := OpenDialog1.FileName;
end;

procedure TFormCadastroNotaFiscal.btnF12Click(Sender: TObject);
begin
  inherited;
   // Consulta Status Servidor Web
  Inicia_NFe;
  MemoRetornoNFE.lines.Clear;
  ACBrNFe1.WebServices.StatusServico.Executar;
  MemoRetornoNFE.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.StatusServico.RetWS);
  LoadXML(MemoRetornoNFE, WBResposta);
end;

procedure TFormCadastroNotaFiscal.ConerBtn1Click(Sender: TObject);
begin
  inherited;
    if not Pergunta('Nao','Confirma a Reimpressão do DANFE desta Nota Fiscal Eletrônica?') then
    Exit;
{  Comando:= 'javaw -jar C:\Unit\NFe\Atualy_NFe_Certo.jar REIMP '+SQLTemplateNOFIA44CHAVEACESSO.asstring + ' ' +SQLTemplateEmpresaCGCLookup.AsString;
  WinExec(PChar(comando),SW_SHOW);}

  // Le arquivo .ini para pegar as config da nfe por filial
  Inicia_NFe;

  ACBrNFe1.NotasFiscais.Clear;
//  ACBrNFe1.WebServices.Consulta.NFeChave := SQLTemplateNOFIA44CHAVEACESSO.asstring;
//  ACBrNFe1.WebServices.Consulta.Executar;
  ACBrNFe1.NotasFiscais.LoadFromFile('C:\Unit\NFe\'+SQLTemplateNOFIA44CHAVEACESSO.asstring+'-NFe.xml');

  ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt := SQLTemplateNOFIA15PROTOCOLO.AsString;

  ACBrNFe1.NotasFiscais.Valida;
  ACBrNFe1.NotasFiscais.Assinar;
  ACBrNFe1.NotasFiscais.Imprimir;

//  sXML := +'\'+ ;
//
//  if FileExists(sxml) then
//    begin
//      ACBrNFe1.NotasFiscais.Clear;
//      ACBrNFe1.NotasFiscais.LoadFromFile(sXML);
//      if ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpEmis = teDPEC then
//        begin
//          { ACBrNFe1.WebServices.ConsultaDPEC.NFeChave := ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID;
//           ACBrNFe1.WebServices.ConsultaDPEC.Executar;
//           ACBrNFe1.DANFE.ProtocoloNFe := ACBrNFe1.WebServices.ConsultaDPEC.nRegDPEC +' '+ DateTimeToStr(ACBrNFe1.WebServices.ConsultaDPEC.retDPEC.dhRegDPEC);}
//        end;
//      ACBrNFe1.NotasFiscais.Imprimir;
//    end
//  else
//    begin
//      application.messagebox('Arquivo XML não econtraddo!','Erro',mb_ok+mb_iconerror);
//    end;
end;

end.                            
