unit CadastroClienteRestaurante;

interface

uses
  Variants, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTemplate, Db, DBTables, RxQuery, Menus, RXCtrls, StdCtrls, Mask,
  Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, jpeg, DBCtrls, RxDBComb,
  VarSYS, FormResources, ToolEdit, RXDBCtrl, CurrEdit, MemTable, DBActns, ActnList, ImgList,
  EDBNum, OleCtrls, RxLookup, UCrpe32, Placemnt, ExtDlgs, ppDB, ppDBPipe,
  ppComm, ppRelatv, ppProd, ppClass, ppReport, ppCtrls, ppPrnabl, ppBands,
  ppCache, UnSoundPlay, ppStrtch, ppRichTx, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TProtectDBGrid = Class(TDBGrid);
  TFormCadastroClienteRestaurante = class(TFormCadastroTEMPLATE)
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateCLIEA15FONE1: TStringField;
    SQLTemplateCLIEA15FONE2: TStringField;
    SQLTemplateCLIEA60ENDRES: TStringField;
    SQLTemplateCLIEA60BAIRES: TStringField;
    SQLTemplateCLIEA60CIDRES: TStringField;
    SQLTemplateCLIEA2UFRES: TStringField;
    SQLTemplateCLIEA8CEPRES: TStringField;
    SQLTemplateCLIEA60EMAIL: TStringField;
    SQLTemplateCLIEDNASC: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEditNome: TDBEdit;
    SQLTemplateCLIEICOD: TIntegerField;
    SQLTemplateCLIEA60RAZAOSOC: TStringField;
    Button8: TRxSpeedButton;
    TabSheetDadosCompra: TTabSheet;
    SQLParcelas: TRxQuery;
    DSSQLParcelas: TDataSource;
    SQLTemplateCLIEA254PATHFOTO: TStringField;
    SQLCartaPrimeiroAviso: TRxQuery;
    DSSQLCartaPrimeiroAviso: TDataSource;
    SQLCartaPrimeiroAvisoCLIEA13ID: TStringField;
    SQLCartaPrimeiroAvisoCUPOA13ID: TStringField;
    SQLCartaPrimeiroAvisoCTRCINROPARC: TIntegerField;
    SQLCartaSegundoAviso: TRxQuery;
    DSSQLCartaSegundoAviso: TDataSource;
    SQLCartaSegundoAvisoCLIEA13ID: TStringField;
    SQLCartaSegundoAvisoCUPOA13ID: TStringField;
    SQLCartaSegundoAvisoCTRCINROPARC: TIntegerField;
    SQLCartaAvisoSPC: TRxQuery;
    DSSQLCartaAvisoSPC: TDataSource;
    SQLCartaAvisoSPCCLIEA13ID: TStringField;
    SQLCartaAvisoSPCCUPOA13ID: TStringField;
    SQLCartaAvisoSPCCTRCINROPARC: TIntegerField;
    SQLCupom: TRxQuery;
    ImprimirCarneAvulso: TMenuItem;
    TblCarne: TTable;
    ImprimirParcelaCarneAvulsa: TMenuItem;
    SQLNumerario: TRxQuery;
    Button9: TRxSpeedButton;
    TabSheetItens: TTabSheet;
    DBGridItens: TDBGrid;
    SQLItem: TRxQuery;
    DSSQLItem: TDataSource;
    SQLParcelasCUPOA13ID: TStringField;
    SQLParcelasCLIEA13ID: TStringField;
    SQLParcelasCTRCA13ID: TStringField;
    SQLParcelasCTRCINROPARC: TIntegerField;
    SQLParcelasCTRCDVENC: TDateTimeField;
    SQLParcelasCTRCDEMIS: TDateTimeField;
    SQLParcelasCTRCDULTREC: TDateTimeField;
    SQLParcelasCTRCCSTATUS: TStringField;
    SQLParcelasEMPRICODULTREC: TIntegerField;
    SQLParcelasCUPOCTIPOPADRAO: TStringField;
    SQLParcelasValorPagar: TBCDField;
    SQLParcelasNUMEICOD: TIntegerField;
    SQLParcelasNumerarioLookup: TStringField;
    SQLParcelasAtraso: TIntegerField;
    N1: TMenuItem;
    FichaCliente1: TMenuItem;
    DSTblCarne: TDataSource;
    TblDadosCompra: TTable;
    BatchMoveParc: TBatchMove;
    TblDadosCompraCUPOA13ID: TStringField;
    TblDadosCompraCLIEA13ID: TStringField;
    TblDadosCompraCTRCA13ID: TStringField;
    TblDadosCompraCTRCINROPARC: TIntegerField;
    TblDadosCompraCTRCDVENC: TDateTimeField;
    TblDadosCompraCTRCDEMIS: TDateTimeField;
    TblDadosCompraCTRCDULTREC: TDateTimeField;
    TblDadosCompraCTRCCSTATUS: TStringField;
    TblDadosCompraEMPRICODULTREC: TIntegerField;
    TblDadosCompraCUPOCTIPOPADRAO: TStringField;
    TblDadosCompraNUMEICOD: TIntegerField;
    TblDadosCompraValorPagar: TBCDField;
    TblDadosCompraNumerarioLookup: TStringField;
    TblDadosCompraAtraso: TIntegerField;
    TblCarneEmpresaNome: TStringField;
    TblCarneEmpresaEnder: TStringField;
    TblCarneEmpresaBairro: TStringField;
    TblCarneEmpresaCidade: TStringField;
    TblCarneEmpresaUF: TStringField;
    TblCarneEmpresaFone: TStringField;
    TblCarneMensagem: TStringField;
    TblCarneCliente: TStringField;
    TblCarneEndereco: TStringField;
    TblCarneBairro: TStringField;
    TblCarneCidade: TStringField;
    TblCarneCodigoCliente: TStringField;
    TblCarneNumeroContrato: TStringField;
    TblCarneNumeroParcela: TIntegerField;
    TblCarneContadorParcelas: TIntegerField;
    TblCarneDataVencimento: TDateField;
    TblCarneValorParcela: TFloatField;
    TblCarneVendedor: TStringField;
    TblCarneTotalCupom: TFloatField;
    TblCarnePlano: TStringField;
    TblCarneDataEmissao: TDateField;
    TblCarneNroCupom: TStringField;
    SQLGeral: TRxQuery;
    TblDadosCompraJuroParc: TFloatField;
    TblDadosCompraMultaParc: TFloatField;
    TblDadosCompraTxCobrParc: TFloatField;
    TblDadosCompraDescParc: TFloatField;
    AlterarDataBasepDadosdeCompra1: TMenuItem;
    N2: TMenuItem;
    ImprimeExtratoCaderno: TMenuItem;
    SQLCaderno: TRxQuery;
    SQLCadernoCLIEA13ID: TStringField;
    SQLCadernoCLCADLANC: TDateTimeField;
    SQLCadernoCLCAICOD: TIntegerField;
    SQLCadernoCLCAN2VLRCREDITO: TBCDField;
    SQLCadernoCLCAN2VLRDEBITO: TBCDField;
    SQLCadernoCUPOA13ID: TStringField;
    SQLCadernoCLCAA60HIST: TStringField;
    TblCadernoCliente: TTable;
    TblCadernoClienteCLIEA13ID: TStringField;
    TblCadernoClienteCLCADLANC: TDateTimeField;
    TblCadernoClienteCLCAICOD: TIntegerField;
    TblCadernoClienteCLCAN2VLRCREDITO: TBCDField;
    TblCadernoClienteCLCAN2VLRDEBITO: TBCDField;
    TblCadernoClienteCUPOA13ID: TStringField;
    TblCadernoClienteCLCAA60HIST: TStringField;
    BatchMoveCaderno: TBatchMove;
    SQLItemPRODICOD: TIntegerField;
    SQLItemQTDE: TBCDField;
    SQLItemVLRUNIT: TBCDField;
    SQLItemVLRDESC: TBCDField;
    SQLItemSTATUS: TStringField;
    SQLItemEMPRICOD: TIntegerField;
    SQLItemCLIEA13ID: TStringField;
    SQLItemDEMISSAO: TDateTimeField;
    SQLItemPRODA60DESCR: TStringField;
    SQLParcelasNOFIA13ID: TStringField;
    TblDadosCompraNOFIA13ID: TStringField;
    TblDadosCompraDocumento: TStringField;
    SQLParcelasCTRCA30NRODUPLICBANCO: TStringField;
    TblDadosCompraCTRCA30NRODUPLICBANCO: TStringField;
    Report: TCrpe;
    SQLBanco: TTable;
    SQLTabelaPreco: TTable;
    MnGeracaoMalaDireta: TMenuItem;
    SQLTipoCliente: TTable;
    FormStorage: TFormStorage;
    MnCartasAvisos: TMenuItem;
    Picture: TOpenPictureDialog;
    Panel4: TPanel;
    FotoCliente: TImage;
    SQLCupomObs: TRxQuery;
    SQLCupomObsCUPOA13ID: TStringField;
    SQLCupomObsCUPOV254OBS: TStringField;
    DSSQLCupomObs: TDataSource;
    MnOcultaObservacao: TMenuItem;
    SQLLimiteCliente: TRxQuery;
    SQLLimiteParcelas: TRxQuery;
    ListagemPersonalizada1: TMenuItem;
    ReportPlanilhaMensalVendas: TppReport;
    PipeCliente: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    MnRelPlanilhadeVendas: TMenuItem;
    SQLItemDOCUMENTO: TStringField;
    ImageList2: TImageList;
    TblCarneTaxaCrediario: TFloatField;
    TblCarneValorDesconto: TFloatField;
    TblCarneAcrescimo: TFloatField;
    TblCarneEntrada: TFloatField;
    SQLCartaPrimeiroAvisoPRAVCENVIADO: TStringField;
    SQLCartaAvisoSPCAVSPCENVIADO: TStringField;
    SQLCartaSegundoAvisoSGAVCENVIADO: TStringField;
    MnADMGerarautorizacaodecompra: TMenuItem;
    MnCadastroClienteItensComprados: TMenuItem;
    TblItensComprados: TTable;
    TblItensCompradosDOCUMENTO: TStringField;
    TblItensCompradosPRODICOD: TIntegerField;
    TblItensCompradosQTDE: TBCDField;
    TblItensCompradosVLRUNIT: TBCDField;
    TblItensCompradosVLRDESC: TBCDField;
    TblItensCompradosSTATUS: TStringField;
    TblItensCompradosEMPRICOD: TIntegerField;
    TblItensCompradosCLIEA13ID: TStringField;
    TblItensCompradosDEMISSAO: TDateTimeField;
    TblItensCompradosPRODA60DESCR: TStringField;
    BatchItensComprados: TBatchMove;
    MnFichaClienteResumida: TMenuItem;
    PanelPesquisa: TPanel;
    EditDe: TDateEdit;
    Label83: TLabel;
    ComboProduto: TRxDBLookupCombo;
    Label84: TLabel;
    EditAte: TDateEdit;
    Label85: TLabel;
    SQLProduto: TRxQuery;
    DSSQLProduto: TDataSource;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    BtnLocalizar: TBitBtn;
    PopupMenuParcelas: TPopupMenu;
    LanarHistrico1: TMenuItem;
    PageControlDadosCompra: TPageControl;
    TabCarne: TTabSheet;
    TabCheques: TTabSheet;
    DBGridDadosCompra: TDBGrid;
    GroupBoxCupomObs: TGroupBox;
    GroupBox2: TGroupBox;
    Label25: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    NroParcelasAbertas: TCurrencyEdit;
    DivitaAtual: TCurrencyEdit;
    NroCompras: TCurrencyEdit;
    TotalCompras: TCurrencyEdit;
    TotalPago: TCurrencyEdit;
    TotalPagar: TCurrencyEdit;
    TotalVencidas: TCurrencyEdit;
    AtrasoMedio: TCurrencyEdit;
    EditLimiteCredito: TCurrencyEdit;
    DSSQLCheques: TDataSource;
    SQLCheques: TRxQuery;
    SQLChequesCTRCA13ID: TStringField;
    SQLChequesEMPRICOD: TIntegerField;
    SQLChequesCTRCINROPARC: TIntegerField;
    SQLChequesCTRCDVENC: TDateTimeField;
    SQLChequesCTRCN2VLR: TBCDField;
    SQLChequesNUMEICOD: TIntegerField;
    SQLChequesCTRCDULTREC: TDateTimeField;
    SQLChequesCTRCN2TOTREC: TBCDField;
    SQLChequesCTRCN2TOTJUROREC: TBCDField;
    SQLChequesCTRCN2TOTMULTAREC: TBCDField;
    SQLChequesCTRCN2TOTDESCREC: TBCDField;
    SQLChequesEMPRICODULTREC: TIntegerField;
    SQLChequesCUPOA13ID: TStringField;
    SQLChequesCTRCA5TIPOPADRAO: TStringField;
    SQLChequesCTRCN2TXMULTA: TBCDField;
    SQLChequesCTRCN2TXJURO: TBCDField;
    SQLChequesBANCA5CODCHQ: TStringField;
    SQLChequesCTRCA10AGENCIACHQ: TStringField;
    SQLChequesCTRCA15CONTACHQ: TStringField;
    SQLChequesCTRCA15NROCHQ: TStringField;
    SQLChequesCTRCA60TITULARCHQ: TStringField;
    SQLChequesCTRCA20CGCCPFCHQ: TStringField;
    SQLChequesCTRCDDEPOSCHQ: TDateTimeField;
    SQLChequesCTRCDEMIS: TDateTimeField;
    DBGridCheque: TDBGrid;
    GroupBox4: TGroupBox;
    Label86: TLabel;
    EditDividaChq: TCurrencyEdit;
    Label87: TLabel;
    EditVencidoChq: TCurrencyEdit;
    Label88: TLabel;
    EditMedioChq: TCurrencyEdit;
    Label89: TLabel;
    EditPagoChq: TCurrencyEdit;
    Label90: TLabel;
    EditNroChq: TCurrencyEdit;
    SQLChequesNOFIINUMERO: TIntegerField;
    SQLChequesNOFIA13ID: TStringField;
    SQLDadosCompra: TRxQuery;
    SQLDadosCompraCUPOA13ID: TStringField;
    SQLDadosCompraNOFIA13ID: TStringField;
    SQLDadosCompraCLIEA13ID: TStringField;
    SQLDadosCompraCTRCA13ID: TStringField;
    SQLDadosCompraCTRCA30NRODUPLICBANCO: TStringField;
    SQLDadosCompraCTRCINROPARC: TIntegerField;
    SQLDadosCompraCTRCDVENC: TDateTimeField;
    SQLDadosCompraCTRCDEMIS: TDateTimeField;
    SQLDadosCompraCTRCDULTREC: TDateTimeField;
    SQLDadosCompraCTRCN2TOTREC: TFloatField;
    SQLDadosCompraCTRCCSTATUS: TStringField;
    SQLDadosCompraEMPRICODULTREC: TIntegerField;
    SQLDadosCompraCUPOCTIPOPADRAO: TStringField;
    SQLDadosCompraNUMEICOD: TIntegerField;
    SQLDadosCompraValorPagar: TBCDField;
    SQLDadosCompraNumerarioLookup: TStringField;
    SQLDadosCompraAtraso: TIntegerField;
    SQLDadosCompraJuroParc: TFloatField;
    SQLDadosCompraMultaParc: TFloatField;
    SQLDadosCompraTxCobrParc: TFloatField;
    SQLDadosCompraDescParc: TFloatField;
    SQLDadosCompraDocumento: TStringField;
    SQLDadosCompraTipoPadraoLookup: TStringField;
    SQLParcelasEMPRICOD: TIntegerField;
    TblDadosCompraEMPRICOD: TIntegerField;
    SQLDadosCompraEMPRICOD: TIntegerField;
    SQLDadosCompraVENDA60NOME: TStringField;
    SQLItemVENDA60NOME: TStringField;
    DadosdeTeleEntrega: TMenuItem;
    TblFichaCliente: TTable;
    TblFichaClienteCLIEA13ID: TStringField;
    TblFichaClienteEMPRICOD: TIntegerField;
    TblFichaClienteCLIEICOD: TIntegerField;
    TblFichaClienteCLIEA60RAZAOSOC: TStringField;
    TblFichaClienteCLIEA60NOMEFANT: TStringField;
    TblFichaClienteCLIEA14CGC: TStringField;
    TblFichaClienteCLIEA20IE: TStringField;
    TblFichaClienteCLIEA11CPF: TStringField;
    TblFichaClienteCLIEA10RG: TStringField;
    TblFichaClienteCLIEA15FONE1: TStringField;
    TblFichaClienteCLIEA15FONE2: TStringField;
    TblFichaClienteCLIEA15FAX: TStringField;
    TblFichaClienteCLIEA30OUTROSDOC: TStringField;
    TblFichaClienteCLIECSEXO: TStringField;
    TblFichaClienteCLIEA60PROFISSAO: TStringField;
    TblFichaClienteCLIEA60ENDRES: TStringField;
    TblFichaClienteCLIEA60BAIRES: TStringField;
    TblFichaClienteCLIEA60CIDRES: TStringField;
    TblFichaClienteCLIEA2UFRES: TStringField;
    TblFichaClienteCLIEA8CEPRES: TStringField;
    TblFichaClienteCLIEA60EMAIL: TStringField;
    TblFichaClienteCLIEA60URL: TStringField;
    TblFichaClienteCLIEA60NOMEPAI: TStringField;
    TblFichaClienteCLIEA60NOMEMAE: TStringField;
    TblFichaClienteCLIEDNASC: TDateTimeField;
    TblFichaClienteCLIETOBS: TStringField;
    TblFichaClienteCLIEA5FISJURID: TStringField;
    TblFichaClienteCLIEA60CONTATO: TStringField;
    TblFichaClienteCLIEN2RENDA: TBCDField;
    TblFichaClienteCLIEN2LIMITECRED: TBCDField;
    TblFichaClienteCLIECESTADOCIVIL: TStringField;
    TblFichaClienteCLIEA60CONJUGE: TStringField;
    TblFichaClienteCLIEA60CONJUGEMAE: TStringField;
    TblFichaClienteCLIEN2CONJUGERENDA: TBCDField;
    TblFichaClienteCLIEDNASCCONJUGE: TDateTimeField;
    TblFichaClienteCLIEA60EMPRESA: TStringField;
    TblFichaClienteCLIEA60ENDEMPRESA: TStringField;
    TblFichaClienteCLIEA60BAIEMPRESA: TStringField;
    TblFichaClienteCLIEA60CIDEMPRESA: TStringField;
    TblFichaClienteCLIEA2UFEMPRESA: TStringField;
    TblFichaClienteCLIEA8CEPEMPRESA: TStringField;
    TblFichaClienteCLIEA60CONJUGEEMPR: TStringField;
    TblFichaClienteCLIECRECEBECARTAO: TStringField;
    TblFichaClienteCLIEA5AGENCIA: TStringField;
    TblFichaClienteBANCA5COD: TStringField;
    TblFichaClienteBancoLookup: TStringField;
    TblFichaClienteCLIEA10CONTA: TStringField;
    TblFichaClienteCLIEA60TITULAR: TStringField;
    TblFichaClienteTPCLICOD: TIntegerField;
    TblFichaClienteCLIEA15CONJFONEMPR: TStringField;
    TblFichaClienteCLIEDAMISEMPRESA: TDateTimeField;
    TblFichaClienteCLIEA15FONEEMPRESA: TStringField;
    TblFichaClienteCLIEDABERTCONTA: TDateTimeField;
    TblFichaClienteMTBLICOD: TIntegerField;
    TblFichaClientePROFICOD: TIntegerField;
    TblFichaClienteVENDICOD: TIntegerField;
    TblFichaClienteCLIEDCAD: TDateTimeField;
    TblFichaClienteCLIEDPRICOMPRA: TDateTimeField;
    TblFichaClienteCLIEDULTCOMPRA: TDateTimeField;
    TblFichaClienteCLIEA254PATHFOTO: TStringField;
    TblFichaClienteCLIECRECAVISATRASO: TStringField;
    TblFichaClienteCLIEA30NATURALIDADE: TStringField;
    TblFichaClienteCLIEDENVCARTIMP: TDateTimeField;
    TblFichaClienteCLIEDRETCARTIMP: TDateTimeField;
    TblFichaClienteCLIEDENVCARTCLI: TDateTimeField;
    TblFichaClienteREGISTRO: TDateTimeField;
    TblFichaClientePENDENTE: TStringField;
    TblFichaClienteCLIEA10CODCONV: TStringField;
    TblFichaClienteCLIEA10CODANT: TStringField;
    TblFichaClienteTipoClienteLookup: TStringField;
    TblFichaClienteCLIEA60EMAILCONJUG: TStringField;
    TblFichaClienteCLIEDCASAMENTO: TDateTimeField;
    TblFichaClienteTPRCICOD: TIntegerField;
    TblFichaClienteTabelaPrecoLookup: TStringField;
    TblFichaClienteCLIEA35NROCARTCRED: TStringField;
    TblFichaClienteCLIEA60ENDCOB: TStringField;
    TblFichaClienteCLIEA60BAICOB: TStringField;
    TblFichaClienteCLIEA60CIDCOB: TStringField;
    TblFichaClienteCLIEA2UFCOB: TStringField;
    TblFichaClienteCLIEA8CEPCOB: TStringField;
    TblFichaClientePLRCICOD: TIntegerField;
    TblFichaClienteCLIEA20NROCARTCRED: TStringField;
    TblFichaClienteCLIEA30TEMPOMORADIA: TStringField;
    TblFichaClienteCLIECCASAPROPRIA: TStringField;
    TblFichaClienteCLIEA60IMOB: TStringField;
    TblFichaClienteCLIEN2VLRALUGUEL: TBCDField;
    TblFichaClienteCLIEA30MODVEICULO: TStringField;
    TblFichaClienteCLIEA8PLACAVEICULO: TStringField;
    TblFichaClienteCLIEA4ANOVEICULO: TStringField;
    TblFichaClienteCLIEA30LOCALIMOV1: TStringField;
    TblFichaClienteCLIEA30LOCALIMOV2: TStringField;
    TblFichaClienteCLIEA30TIPOIMOV1: TStringField;
    TblFichaClienteCLIEA30TIPOIMOV2: TStringField;
    TblFichaClienteCLIECSTATUSIMOV1: TStringField;
    TblFichaClienteCLIECSTATUSIMOV2: TStringField;
    SQLDadosCompraAVALA60RAZAOSOC: TStringField;
    SQLDadosCompraPORTA60DESCR: TStringField;
    SQLParcelasAVALA13ID: TStringField;
    SQLParcelasPORTICOD: TIntegerField;
    TblDadosCompraAVALA13ID: TStringField;
    TblDadosCompraPORTICOD: TIntegerField;
    SQLDadosCompraAVALA13ID: TStringField;
    SQLDadosCompraPORTICOD: TIntegerField;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    GroupBox10: TGroupBox;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    EditSaldo: TCurrencyEdit;
    EditDebitoBaixado: TCurrencyEdit;
    EditTotalCredito: TCurrencyEdit;
    EditTotalDebito: TCurrencyEdit;
    EditCreditoBaixado: TCurrencyEdit;
    SQLParcelasPDVDA13ID: TStringField;
    SQLDadosCompraPDVDA13ID: TStringField;
    TblDadosCompraPDVDA13ID: TStringField;
    TblItensCompradosVLRTOTITEM: TBCDField;
    MnCorrigeemailparaminusculo: TMenuItem;
    DBMemo1: TDBMemo;
    Label26: TLabel;
    TotalMulta: TCurrencyEdit;
    Label27: TLabel;
    TotalDesconto: TCurrencyEdit;
    TotalJuros: TCurrencyEdit;
    CKAviso1: TCheckBox;
    CKAviso2: TCheckBox;
    LbAvisos: TLabel;
    CKAvisoSPC: TCheckBox;
    SQLParcelasBANCA5CODCHQ: TStringField;
    SQLParcelasCTRCA15NROCHQ: TStringField;
    TblDadosCompraBANCA5CODCHQ: TStringField;
    TblDadosCompraCTRCA15NROCHQ: TStringField;
    SQLDadosCompraBANCA5CODCHQ: TStringField;
    SQLDadosCompraCTRCA15NROCHQ: TStringField;
    SQLParcelasALINICOD: TIntegerField;
    TblDadosCompraALINICOD: TIntegerField;
    SQLDadosCompraALINICOD: TIntegerField;
    SQLParcelasCHEQDEVOLVIDO: TStringField;
    TblDadosCompraCHEQDEVOLVIDO: TStringField;
    SQLDadosCompraCHEQDEVOLVIDO: TStringField;
    MnExtratoCliente: TMenuItem;
    GroupLegenda: TGroupBox;
    Shape1: TShape;
    Label81: TLabel;
    Label82: TLabel;
    Shape2: TShape;
    Label113: TLabel;
    Shape3: TShape;
    Shape4: TShape;
    Label114: TLabel;
    Shape5: TShape;
    Label115: TLabel;
    Shape6: TShape;
    Label116: TLabel;
    TblCarneClienteDependente: TIntegerField;
    BloquearClientesqueestejamemSPC1: TMenuItem;
    ItensCompradosConferenciaparaoDeposito1: TMenuItem;
    TblItensCompradosNroVolumes: TFloatField;
    SQLItemCUPOM: TIntegerField;
    MnRecalcularoLimitedeCreditoInicial: TMenuItem;
    ReportTextos: TppReport;
    ppDetailBand8: TppDetailBand;
    ppTexto: TppRichText;
    MnContratoCredito: TMenuItem;
    MnProdutoscomDescontoporCliente: TMenuItem;
    SQLParcelasCTRCN2TOTDESCREC: TBCDField;
    SQLParcelasCTRCN2TOTJUROREC: TBCDField;
    SQLParcelasCTRCN2TOTMULTAREC: TBCDField;
    SQLParcelasCTRCN2TOTREC: TFloatField;
    SQLParcelasCTRCN2TXJURO: TBCDField;
    SQLParcelasCTRCN2TXMULTA: TBCDField;
    SQLParcelasCTRCN2VLR: TBCDField;
    TblDadosCompraCTRCN2TOTDESCREC: TBCDField;
    TblDadosCompraCTRCN2TOTJUROREC: TBCDField;
    TblDadosCompraCTRCN2TOTMULTAREC: TBCDField;
    TblDadosCompraCTRCN2TOTREC: TFloatField;
    TblDadosCompraCTRCN2TXJURO: TBCDField;
    TblDadosCompraCTRCN2TXMULTA: TBCDField;
    TblDadosCompraCTRCN2VLR: TBCDField;
    SQLDadosCompraCTRCN2TOTDESCREC: TBCDField;
    SQLDadosCompraCTRCN2TOTJUROREC: TBCDField;
    SQLDadosCompraCTRCN2TOTMULTAREC: TBCDField;
    SQLDadosCompraCTRCN2TXJURO: TBCDField;
    SQLDadosCompraCTRCN2TXMULTA: TBCDField;
    SQLDadosCompraCTRCN2VLR: TBCDField;
    TblDadosCompraCUPON2TOTITENS: TBCDField;
    SQLDadosCompraCUPON2TOTITENS: TBCDField;
    TblItensCompradosCUPOM: TIntegerField;
    dsSQLTipoDoc: TDataSource;
    SQLTipoDoc: TRxQuery;
    SQLTipoDocTPDCICOD: TIntegerField;
    SQLTipoDocTPDCA60DESCR: TStringField;
    SQLPortador: TRxQuery;
    dsSQLPortador: TDataSource;
    SQLPortadorPORTICOD: TIntegerField;
    SQLPortadorPORTA60DESCR: TStringField;
    dsSQLPlanoConta: TDataSource;
    SQLPlanoConta: TRxQuery;
    SQLPlanoContaPLCTA15COD: TStringField;
    SQLPlanoContaPLCTA60DESCR: TStringField;
    SQLTemplateCLIETOBS1: TMemoField;
    SQLTemplateCLIETOBS2: TBlobField;
    RadioIgnoracheque: TCheckBox;
    SQLCidades: TRxQuery;
    PanelTop: TPanel;
    Label40: TLabel;
    DBEditEnd: TDBEdit;
    Label43: TLabel;
    DBComboBox1: TDBComboBox;
    Label44: TLabel;
    ComboUFRes: TRxDBComboBox;
    DBEdit21: TDBEdit;
    Label42: TLabel;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label49: TLabel;
    DBEdit32: TDBEdit;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    MemoOBS: TDBMemo;
    TabSheet3: TTabSheet;
    DBMemo2: TDBMemo;
    SQLTemplateCLIECATIVO: TStringField;
    SQLTemplateCLIEDCAD: TDateTimeField;
    SQLTemplateCLIECVNDCHEQ: TStringField;
    SQLTemplateCLIECVNDCRED: TStringField;
    SQLTemplateCLIECTPPRCVENDA: TStringField;
    Label3: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label61: TLabel;
    ComboAtivo: TRxDBComboBox;
    Label77: TLabel;
    DBDateEdit8: TDBDateEdit;
    ValorFrete: TEvDBNumEdit;
    Label4: TLabel;
    EvDBNumEdit1: TEvDBNumEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplateCLIEA35NROCARTCRED: TStringField;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    SQLTemplateCLIEA14CGC: TStringField;
    SQLTemplateCLIEN2RENDA: TFloatField;
    SQLTemplateCLIEN2CONJUGERENDA: TFloatField;
    SQLTemplateCLIEN2LIMITECRED: TFloatField;
    SQLTemplateCLIEN3VLRFRETE: TFloatField;
    DBCheckBox3: TDBCheckBox;
    Label10: TLabel;
    DBEdit6: TDBEdit;
    SQLTemplateCLIEA5NROENDRES: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure ImprimirCarneAvulsoClick(Sender: TObject);
    procedure ImprimirParcelaCarneAvulsaClick(Sender: TObject);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure DBGridItensCellClick(Column: TColumn);
    procedure AlterarDataBasepDadosdeCompra1Click(Sender: TObject);
    procedure SQLTemplateCLIEA10RGChange(Sender: TField);
    procedure SQLTemplateAfterInsert(DataSet: TDataSet);
    procedure SQLTemplateAfterEdit(DataSet: TDataSet);
    procedure ImprimeExtratoCadernoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabelRetornarClick(Sender: TObject);
    procedure FotoClienteDblClick(Sender: TObject);
    procedure MnOcultaObservacaoClick(Sender: TObject);
    procedure DSSQLParcelasDataChange(Sender: TObject; Field: TField);
    procedure MnRelPlanilhadeVendasClick(Sender: TObject);
    procedure MnCadastroClienteItensCompradosClick(Sender: TObject);
    procedure MnFichaClienteResumidaClick(Sender: TObject);
    procedure BtnLocalizarClick(Sender: TObject);
    procedure ComboProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabSheetItensEnter(Sender: TObject);
    procedure TabSheetItensExit(Sender: TObject);
    procedure SQLChequesCalcFields(DataSet: TDataSet);
    procedure TabChequesShow(Sender: TObject);
    procedure TabCarneShow(Sender: TObject);
    procedure DBGridDadosCompraTitleClick(Column: TColumn);
    procedure SQLDadosCompraCalcFields(DataSet: TDataSet);
    procedure DBGridDadosCompraDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure SQLTemplateMTBLICODChange(Sender: TField);
    procedure SQLDadosCompraAfterScroll(DataSet: TDataSet);
    procedure MnCorrigeemailparaminusculoClick(Sender: TObject);
    procedure MnExtratoClienteClick(Sender: TObject);
    procedure ItensCompradosConferenciaparaoDeposito1Click(
      Sender: TObject);
    procedure MnRecalcularoLimitedeCreditoInicialClick(Sender: TObject);
    procedure MnContratoCreditoClick(Sender: TObject);
    procedure DBComboBox1Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure ValorFreteEnter(Sender: TObject);
  private
    { Private declarations }
    VlrSaldo,
    VlrJuro,
    VlrMulta,
    PerJurDia : double ;
    RGAlterado,
    CPFAlterado,
    CGCAlterado,
    CalcTot   : boolean ;
    DataBase  : TDateTime ;
    NroCupom  : string ;
    procedure MontaDadosCompra;
    procedure MontaDadosCheque;
  public
  Produto : String;

    { Public declarations }
  end;

var
  FormCadastroClienteRestaurante: TFormCadastroClienteRestaurante;

implementation

uses DataModulo, CadastroClienteDependente, UnitLibrary, WaitWindow, TelaGeracaoMalaDireta, RelatorioExtratoCliente ;

{$R *.DFM}

procedure TFormCadastroClienteRestaurante.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela   := 'CLIENTE';
  DataBase := Date ;
end;

procedure TFormCadastroClienteRestaurante.MontaDadosCompra ;
Var
    JuroParc,
    MultaParc,
    TxCobrParc,
    DescParc,
    MyTotal,
    Saldo      : double ;
    Documento  : String;
    TotDiasAtraso,
    i,
    NroParcAtraso : integer ;
    Vencimento : TDate;
begin
  if PagePrincipal.ActivePage <> TabSheetDadosCompra then
    exit ;

  NroParcelasAbertas.Value := 0 ;
  TotalJuros.Value         := 0 ;
  TotalMulta.Value         := 0 ;
  TotalDesconto.Value      := 0 ;
  TotalVencidas.Value      := 0 ;
  TotalCompras.Value       := 0 ;
  DivitaAtual.Value        := 0 ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('Select') ;
  DM.SQLTemplate.SQL.Add('Sum(CTRCN2TOTJUROREC) as TOTALJUROS,') ;
  DM.SQLTemplate.SQL.Add('Sum(CTRCN2TOTMULTAREC) as TOTALMULTA,') ;
  DM.SQLTemplate.SQL.Add('Sum(CTRCN2TOTDESCREC) as TOTALDESC,') ;
  DM.SQLTemplate.SQL.Add('Sum(CTRCN2VLR-CTRCN2TOTREC) as TOTALAPAGAR,') ;
  DM.SQLTemplate.SQL.Add('Sum(CTRCN2TOTREC) as TOTALPAGO') ;
  DM.SQLTemplate.SQL.Add('From CONTASRECEBER');
  DM.SQLTemplate.SQL.Add('Where CLIEA13ID = "' + SQLTemplateCLIEA13ID.AsString + '"') ;
  DM.SQLTemplate.SQL.Add(' And (CTRCCSTATUS = "A" OR CTRCCSTATUS = "N")') ;
  DM.SQLTemplate.SQL.Add(' And (PDVDA13ID = "" OR PDVDA13ID is Null)') ;
  if RadioIgnoracheque.Checked then
    Dm.SQLTemplate.SQL.Add(' and ( CONTASRECEBER.CTRCA5TIPOPADRAO <> "CHQ") ');
//  DM.SQLTemplate.SQL.Add(' And (CTRCCTIPOREGISTRO = "N" OR CTRCCTIPOREGISTRO is Null or CTRCCTIPOREGISTRO = "") And (PDVDA13ID = "" OR PDVDA13ID is Null)') ;
  DM.SQLTemplate.Open ;
  if DM.SQLTemplate.FieldByName('TOTALJUROS').Value > 0 then
    TotalJuros.Value    := DM.SQLTemplate.FieldByName('TOTALJUROS').Value ;
  if DM.SQLTemplate.FieldByName('TOTALMULTA').Value > 0 then
    TotalMulta.Value    := DM.SQLTemplate.FieldByName('TOTALMULTA').Value ;
  if DM.SQLTemplate.FieldByName('TOTALDESC').Value > 0 then
    TotalDesconto.Value := DM.SQLTemplate.FieldByName('TOTALDESC').Value ;

  TotalJuros.Value := TotalJuros.Value + TotalMulta.Value;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select') ;
  DM.SQLTemplate.SQL.Add('Count(*) as NROPARCVENC') ;
  DM.SQLTemplate.SQL.Add('from CONTASRECEBER') ;
  DM.SQLTemplate.SQL.Add('where CLIEA13ID = "' + SQLTemplateCLIEA13ID.AsString + '"') ;
  DM.SQLTemplate.SQL.Add(' and (CTRCN2VLR-CTRCN2TOTREC) > 0') ;
  DM.SQLTemplate.SQL.Add(' and (CTRCCSTATUS = "A" OR CTRCCSTATUS = "N")') ;
  DM.SQLTemplate.SQL.Add(' and (PDVDA13ID = "" OR PDVDA13ID is Null)') ;
  if RadioIgnoracheque.Checked then
    Dm.SQLTemplate.SQL.Add(' and (CONTASRECEBER.CTRCA5TIPOPADRAO <> "CHQ") ');

  //  DM.SQLTemplate.SQL.Add(' and (CTRCCTIPOREGISTRO = "N" OR CTRCCTIPOREGISTRO is Null or CTRCCTIPOREGISTRO = "") and (PDVDA13ID = "" or PDVDA13ID is null)') ;
  DM.SQLTemplate.Open ;
  if DM.SQLTemplate.FieldByName('NROPARCVENC').Value > 0 then
    NroParcelasAbertas.Value := DM.SQLTemplate.FieldByName('NROPARCVENC').Value ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select Count(CLIEA13ID) as NROCOMPRAS,') ;
  DM.SQLTemplate.SQL.Add('sum(CUPON2TOTITENS+CUPON3CREDTAXA+CUPON2ACRESC-CUPON2DESC-CUPON3BONUSTROCA) as TOTALCOMPRAS') ;
  DM.SQLTemplate.SQL.Add('from CUPOM') ;
  DM.SQLTemplate.SQL.Add('where CLIEA13ID = "' + SQLTemplateCLIEA13ID.AsString + '"') ;
  DM.SQLTemplate.SQL.Add(' and (CUPOCSTATUS = "A" or CUPOCSTATUS = "N")') ;
  if RadioIgnoracheque.Checked then
    Dm.SQLTemplate.SQL.Add(' and (CUPOCTIPOPADRAO NOT CONTAINING "CHQ") ');

  DM.SQLTemplate.Open ;
  if DM.SQLTemplate.FieldByName('NROCOMPRAS').Value > 0 then
    NroCompras.Value := DM.SQLTemplate.FieldByName('NROCOMPRAS').Value ;
  if DM.SQLTemplate.FieldByName('TOTALCOMPRAS').Value > 0 then
    TotalCompras.Value := DM.SQLTemplate.FieldByName('TOTALCOMPRAS').Value ;

  SQLParcelas.Close ;
  SQLParcelas.MacroByName('MCliente').Value  := 'CONTASRECEBER.CLIEA13ID = "' + SQLTemplateCLIEA13ID.AsString + '"' ;
  SQLParcelas.MacroByName('MCliente2').Value := 'CUPOM.CLIEA13ID = "' + SQLTemplateCLIEA13ID.AsString + '"' ;
  if RadioIgnoracheque.Checked then
    SQLParcelas.MacroByName('MCheques').Value := ' CONTASRECEBER.CTRCA5TIPOPADRAO <> "CHQ" '
  Else
    SQLParcelas.MacroByName('MCheques').Value := ' 0 = 0 ';


  if not SQLParcelas.Active then
    SQLParcelas.Open ;

  CalcTot := true ;
  //O LAST ABAIXO SERVE PARA CALCULAR OS TOTAIS
  SQLParcelas.DisableControls ;
  SQLParcelas.First ;

  DivitaAtual.Value   := 0 ;
  TotalPago.Value     := 0 ;
  TotalVencidas.Value := 0 ;
  TotalPagar.Value    := 0 ;

  while not SQLParcelas.EOF do
  begin
    TRY
      Saldo := SQLParcelas.FieldByName('CTRCN2VLR').Value;
      if SQLParcelas.FieldByName('CTRCDULTREC').AsVariant <> null then
        Vencimento := SQLParcelas.FieldByName('CTRCDULTREC').AsDateTime
      else
        Vencimento := SQLParcelas.FieldByName('CTRCDVENC').AsDateTime;

      if SQLParcelas.FieldByName('CTRCN2TOTREC').AsVariant <> null then
        Saldo := SQLParcelas.FieldByName('CTRCN2VLR').Value -
                 (SQLParcelas.FieldByName('CTRCN2TOTREC').AsVariant -
                  SQLParcelas.FieldByName('CTRCN2TOTJUROREC').AsVariant -
                  SQLParcelas.FieldByName('CTRCN2TOTMULTAREC').AsVariant +
                  SQLParcelas.FieldByName('CTRCN2TOTDESCREC').AsVariant);

      JuroParc   := 0 ;
      MultaParc  := 0 ;
      TxCobrParc := 0 ;
      DescParc   := 0 ;

      If (SQLParcelasCTRCA13ID.AsString <> '') and (Length(SQLParcelasCTRCA13ID.AsString) = 13) Then
        Documento := SQLParcelasCTRCA13ID.AsString ;
      If (SQLParcelasCUPOA13ID.AsString <> '') and (Length(SQLParcelasCUPOA13ID.AsString) = 13) Then
        Documento := SQLParcelasCUPOA13ID.AsString ;
      If (SQLParcelasNOFIA13ID.AsString <> '') and (Length(SQLParcelasNOFIA13ID.AsString) = 13) Then
        Documento := SQLParcelasNOFIA13ID.AsString ;
      If SQLParcelasCTRCA30NRODUPLICBANCO.AsString <> '' Then
        Documento := 'Dupl.'+SQLParcelasCTRCA30NRODUPLICBANCO.AsString ;

      if (SQLParcelas.FieldByName('CTRCN2TXJURO').asFloat > 0) and
         (DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLJUR').Value >= 0)  and
         (Documento <> '') then

        // alterado pelo judi... calcular os juros corretamente.
        IF SQLParcelas.FieldByname('CTRCDULTREC').ISNULL THEN
          JuroParc := CalculaJuroMultaDesc(Saldo,
                                         SQLParcelasCTRCN2TXJURO.asFloat,
                                         SQLParcelasCTRCDVENC.Value,  // Adilson Troquei a variavel Vencimento pelo campo SQLParcelasCTRCDVENC.Value.
                                         DataBase,
                                         0,
                                         DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLJUR').Value,
                                         'Juro',
                                         Documento,
                                         SQLParcelasCTRCINROPARC.AsString)
        else
          JuroParc := CalculaJuroMultaDesc(Saldo,
                                         SQLParcelasCTRCN2TXJURO.asFloat,
                                         SQLParcelasCTRCDVENC.Value,  // Adilson Troquei a variavel Vencimento pelo campo SQLParcelasCTRCDVENC.Value.
                                         SQLParcelasCTRCDULTREC.asDateTime,
                                         0,
                                         DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLJUR').Value,
                                         'Juro',
                                         Documento,
                                         SQLParcelasCTRCINROPARC.AsString);




      if (SQLParcelas.FieldByName('CTRCN2TXMULTA').asFloat > 0) and
         (DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLMUL').Value >= 0) and
         (Documento <> '') then
        MultaParc := CalculaJuroMultaDesc(Saldo,
                                          SQLParcelasCTRCN2TXMULTA.Value,
                                          Vencimento,
                                          DataBase,
                                          0,
                                          DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLMUL').Value,
                                          'Multa',
                                          Documento,
                                          SQLParcelasCTRCINROPARC.AsString) ;

      if (DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCTAXACOBR').asFloat > 0) and (Documento <> '') then
        TxCobrParc := CalculaJuroMultaDesc(Saldo,
                                           DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCTAXACOBR').AsFloat,
                                           Vencimento,
                                           DataBase,
                                           0,
                                           0,
                                           'TaxaCobranca',
                                           Documento,
                                           SQLParcelasCTRCINROPARC.AsString) ;


      if (DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCADIANT').asFloat > 0) and
         (DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCADIANT').Value >= 0) and
         (DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASADIANT').Value >= 0)  and
         (Documento <> '')  then
        DescParc := CalculaJuroMultaDesc(Saldo,
                                         DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCADIANT').Value,
                                         Vencimento,
                                         DataBase,
                                         0,
                                         DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASADIANT').Value,
                                         'Desconto',
                                         Documento,
                                         SQLParcelasCTRCINROPARC.AsString) ;

      MyTotal := Saldo + JuroParc + MultaParc + TxCobrParc - DescParc ;

//      DivitaAtual.Value := DivitaAtual.Value + MyTotal ;
      if SQLParcelas.FieldByName('CTRCN2TOTREC').Value > 0 then
        TotalPago.Value := TotalPago.Value + SQLParcelas.FieldByName('CTRCN2TOTREC').Value ;

      if (DataBase > SQLParcelas.FieldByName('CTRCDVENC').Value) and (Saldo > 0) then
        TotalVencidas.Value := TotalVencidas.Value + MyTotal ;

      if DataBase < SQLParcelas.FieldByName('CTRCDVENC').Value then
        TotalPagar.Value  := TotalPagar.Value  + Saldo ;
    EXCEPT
      on E: Exception do
      begin
        Informa('Problemas ao montar dados de compra : ' + #13 +
                'Cupom..............: ' + SQLParcelas.Fieldbyname('CUPOA13ID').AsString + #13 +
                'Contas Receber(ID).: ' + SQLParcelas.Fieldbyname('CTRCA13ID').AsString + #13 +
                'Anote a mensagem abaixo e tecle ENTER para continuar:' + #13 + E.Message) ;
      end ;
    END ;

    SQLParcelas.Next ;
  end ;
  //A VARIAVEL CalcTot SERA SETADA P/FALSE P/NAO CALCULAR TOTAIS NOVAMENTE
  //NO BROWSE DA TABELA
  CalcTot := false ;

  DivitaAtual.Value := TotalVencidas.Value + TotalPagar.Value;

  AtrasoMedio.Value := 0 ;
  TotDiasAtraso     := 0 ;
  NroParcAtraso     := 0 ;
  //PARCELAS PAGAS EM ATRASO
  SQLGeral.Close ;
  SQLGeral.SQL.Clear ;
  SQLGeral.SQL.Add('select sum(CTRCDULTREC-CTRCDVENC) TotDias, count(CTRCA13ID) as NroParc from CONTASRECEBER');
  SQLGeral.SQL.Add('where CLIEA13ID = "' + SQLTemplateCLIEA13ID.AsString + '" and');
  SQLGeral.SQL.Add('not (CTRCDULTREC is null) and') ;
  SQLGeral.SQL.Add('CTRCDULTREC > CTRCDVENC and') ;
  SQLGeral.SQL.Add('CTRCDVENC < "' + FormatDateTime('mm/dd/yyyy', DataBase) + '"');
  SQLGeral.SQL.Add(' and (CTRCCSTATUS = "A" OR CTRCCSTATUS = "N")') ;
  SQLGeral.SQL.Add(' and (PDVDA13ID = "" OR PDVDA13ID is Null)') ;
  if RadioIgnoracheque.Checked then
    Dm.SQLTemplate.SQL.Add(' and (CTRCA5TIPOPADRAO <> "CHQ" ) ');
  SQLGeral.Open ;
  if SQLGeral.FieldByName('TotDias').Value > 0 then
    TotDiasAtraso := TotDiasAtraso + SQLGeral.FieldByName('TotDias').Value ;
  if SQLGeral.FieldByName('NroParc').Value > 0 then
    NroParcAtraso := NroParcAtraso + SQLGeral.FieldByName('NroParc').Value ;
  //PARCELAS VENCIDAS NÃO PAGAS
  SQLGeral.Close ;
  SQLGeral.SQL.Clear ;
  SQLGeral.SQL.Add('Select Sum("' + FormatDateTime('mm/dd/yyyy', DataBase) + '" -CTRCDVENC) TotDias, count(CTRCA13ID) as NroParc from CONTASRECEBER') ;
  SQLGeral.SQL.Add('Where CLIEA13ID = "' + SQLTemplateCLIEA13ID.AsString + '" and') ;
  SQLGeral.SQL.Add(' (CTRCDULTREC is null) and') ;
  SQLGeral.SQL.Add(' CTRCDVENC < "' + FormatDateTime('mm/dd/yyyy', DataBase) + '"') ;
  SQLGeral.SQL.Add(' and (CTRCCSTATUS = "A" OR CTRCCSTATUS = "N")') ;
  SQLGeral.SQL.Add(' and (PDVDA13ID = "" OR PDVDA13ID is Null)') ;
  if RadioIgnoracheque.Checked then
    Dm.SQLTemplate.SQL.Add(' and (CTRCA5TIPOPADRAO <> "CHQ") ');
  SQLGeral.Open ;
  if SQLGeral.FieldByName('TotDias').Value > 0 then
    TotDiasAtraso := TotDiasAtraso + SQLGeral.FieldByName('TotDias').Value ;
  if SQLGeral.FieldByName('NroParc').Value > 0 then
    NroParcAtraso := NroParcAtraso + SQLGeral.FieldByName('NroParc').Value ;

  if (TotDiasAtraso > 0) and (NroParcAtraso > 0) then
    AtrasoMedio.Value := TotDiasAtraso / NroParcAtraso ;

  TblDadosCompra.Close ;
  try
    TblDadosCompra.DeleteTable;
    TblDadosCompra.CreateTable;
  except
    TblDadosCompra.CreateTable;
  end ;

  TblDadosCompra.IndexFieldNames := '' ;

  BatchMoveParc.Execute ;

  TblDadosCompra.AddIndex('', 'CUPOA13ID;NOFIA13ID;CTRCA30NRODUPLICBANCO;CLIEA13ID;CTRCA13ID', [ixPrimary]);
  TblDadosCompra.AddIndex('Indice3', 'CTRCDEMIS;CUPOA13ID;NOFIA13ID;CTRCINROPARC', [ixCaseInsensitive]);
  TblDadosCompra.IndexFieldNames := 'CTRCDEMIS;CUPOA13ID;NOFIA13ID;CTRCINROPARC' ;
  TblDadosCompra.Open ;

  //ESTA ROTINA FOI COLOCADA POIS QUANDO NAO TEM NOTA FISCAL E TEM ENTRADA GRAVA
  //O ID CUPOM NO NOFIA13ID E ORDENA AS PARCELAS DE MANEIRA ERRADA
  TblDadosCompra.DisableControls ;
  TblDadosCompra.Open ;
  while not TblDadosCompra.Eof do
    begin
      if TblDadosCompraCUPOA13ID.Value = TblDadosCompraNOFIA13ID.Value then
        begin
          TblDadosCompra.Edit ;
          TblDadosCompraNOFIA13ID.Clear ;
          TblDadosCompra.Post ;
        end ;
      if TblDadosCompraALINICOD.AsString <> '' then
        if sqllocate('ALINEA','ALINICOD','ALINCCHEQDEV',TblDadosCompraALINICOD.AsString) = 'S' then
        begin
          TblDadosCompra.Edit ;
          TblDadosCompraCHEQDEVOLVIDO.Value := 'S' ;
          TblDadosCompra.Post ;
        end;
      TblDadosCompra.Next ;
    end ;
  TblDadosCompra.First ;
  TblDadosCompra.EnableControls ;

  SQLParcelas.First;
  SQLParcelas.EnableControls;
  SQLParcelas.Close;
  SQLDadosCompra.Close;
  SQLDadosCompra.MacroByName('MOrdem').AsString := 'ORDER BY CTRCDVENC DESC';
  SQLDadosCompra.Open;
  NroParcelasAbertas.Refresh;
  TotalJuros.Refresh;
  TotalMulta.Refresh;
  TotalDesconto.Refresh;

  if DivitaAtual.Value < 0 then
    DivitaAtual.Value := TotalVencidas.Value;

  DivitaAtual.Refresh;
  NroCompras.Refresh;
  TotalCompras.Refresh;
  TotalPago.Refresh;
  TotalPagar.Refresh;
  TotalVencidas.Refresh;
  AtrasoMedio.Refresh;
end;

procedure TFormCadastroClienteRestaurante.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  Dataset.FieldByName('CLIECATIVO').Value         := 'S' ;
  Dataset.FieldByName('CLIEN2LIMITECRED').Value   :=  0  ;
  Dataset.FieldByName('CLIEN2RENDA').Value        :=  0  ;
  Dataset.FieldByName('CLIEN2CONJUGERENDA').Value :=  0  ;
  Dataset.FieldByName('CLIEN3VLRFRETE').Value     :=  0  ;
  Dataset.FieldByName('CLIEDCAD').AsString        :=  FormatDateTime('dd/mm/yyyy',Now) ;
  Dataset.FieldByName('CLIEA2UFRES').Value        := 'RS';
  Dataset.FieldByName('CLIECVNDCRED').Value       := 'S';
  Dataset.FieldByName('CLIECVNDCHEQ').Value       := 'S';
  Dataset.FieldByName('CLIECTPPRCVENDA').Value    := 'V';
end;

procedure TFormCadastroClienteRestaurante.Button1Click(Sender: TObject);
begin
  inherited;
  SQLParcelas.Close ;
  SQLItem.Close ;
  SQLProduto.Close;
  //-------------------------------------------------------------------------\\
  if TRxSpeedButton(Sender).Name = 'Button8' then
    begin
      if SQLLocate('USUARIO', 'USUAICOD', 'USUACVERDADCOMPRCLI', IntToStr(DM.UsuarioAtual)) <> 'S' then
        begin
          Informa('Você não tem permissão para ver os dados de compra!') ;
          exit ;
        end ;

      SQLCartaPrimeiroAviso.Close;
      SQLCartaSegundoAviso.Close;
      SQLCartaAvisoSPC.Close;
      SQLCartaPrimeiroAviso.Open;
      SQLCartaSegundoAviso.Open;
      SQLCartaAvisoSPC.Open;
      PagePrincipal.ActivePage := TabSheetDadosCompra ;

      MontaDadosCompra;
      MontaDadosCheque;

      if not Dm.SQLConfigVenda.Active then Dm.SQLConfigVenda.Open;
      if Dm.SQLConfigVendaCFVECTESTALIMTCRED.AsString = 'S' then
        EditLimiteCredito.Value := CalculaLimiteCredito(SQLTemplateCLIEA13ID.AsString,0,SQLLimiteParcelas,SQLLimiteCliente);
    end ;
  //-------------------------------------------------------------------------\\
  if TRxSpeedButton(Sender).Name = 'Button9' then
    begin
      SQLItem.Open;
      SQLProduto.Open;
      EditDe.Date;
      PagePrincipal.ActivePage := TabSheetItens;
      MontaDadosCompra;
    end ;
end;

procedure TFormCadastroClienteRestaurante.SQLTemplateBeforePost(DataSet: TDataSet);
var LimiteInicial : double;
var IdCliente : string;
begin
  inherited;
  if SQLTemplateCLIEN3VLRFRETE.AsString = '' then
    SQLTemplateCLIEN3VLRFRETE.Value := 0;

  if SQLTemplate.State in [DsInsert] then
    if (SQLTemplate.FieldByName('CLIEA15FONE1').AsString <> '') or (SQLTemplate.FieldByName('CLIEA15FONE2').AsString <> '') then
      begin
        if SQLTemplate.FieldByName('CLIEA15FONE1').AsString <> '' then
          begin
            IdCliente := SQLLocate('CLIENTE','CLIEA15FONE1','CLIEA13ID','"' + SQLTemplate.FieldByName('CLIEA15FONE1').AsString + '"');
            if IdCliente <> '' then
              begin
                if not Pergunta('NAO','O Sistema verificou que já existe no ID = '+IdCliente+' um Cliente com este Telefone. Deseja Continuar Mesmo Assim ?') then
                  Abort;
              end;
          end;
        if SQLTemplate.FieldByName('CLIEA15FONE2').AsString <> '' then
          begin
            IdCliente := SQLLocate('CLIENTE','CLIEA15FONE1','CLIEA13ID','"' + SQLTemplate.FieldByName('CLIEA15FONE2').AsString + '"');
            if IdCliente <> '' then
              begin
                if not Pergunta('NAO','O Sistema verificou que já existe no ID = '+IdCliente+' um Cliente com este Telefone. Deseja Continuar Mesmo Assim ?') then
                  Abort;
              end;
          end;
        if SQLTemplate.FieldByName('CLIEA60RAZAOSOC').AsString <> '' then
          begin
            IdCliente := '';
            IdCliente := SQLLocate('CLIENTEDEPENDENTE','CLDPA60NOME','CLIEA13ID','"' + SQLTemplate.FieldByName('CLIEA60RAZAOSOC').AsString + '"');
            if IdCliente <> '' then
              begin
                if not Pergunta('NAO','O Sistema verificou que já existe no ID = '+IdCliente+' um Dependente com este Nome/Razão Social. Deseja Continuar Mesmo Assim ?') then
                  Abort;
              end;
          end;
      end;


  // Calcula limite Original
  if SQLTemplateCLIEN2RENDA.Value > 0 then
    begin
      try
        if (DM.SQLConfigVenda.FieldByName('CFVECRENDCONJNOLIM').Value = 'S') and (SQLTemplateCLIEN2CONJUGERENDA.Value > 0) then
          LimiteInicial := (SQLTemplate.FieldByName('CLIEN2RENDA').Value +
                     SQLTemplate.FieldByName('CLIEN2CONJUGERENDA').Value) *
                    (DM.SQLConfigVenda.FieldByName('CFVEN2PERCLIMCRED').Value/100)
        else
          LimiteInicial := (SQLTemplate.FieldByName('CLIEN2RENDA').Value) *
                    (DM.SQLConfigVenda.FieldByName('CFVEN2PERCLIMCRED').Value/100) ;

        SQLTemplateCLIEN2LIMITECRED.Value := LimiteInicial;
      except
        Application.ProcessMessages;
      end;
    end;
end;

procedure TFormCadastroClienteRestaurante.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if ((Sender as TDataSource).DataSet <> Nil) and
     ((Sender as TDataSource).DataSet.Active) and
     ((PagePrincipal.ActivePage.Name = 'TabSheetDadosCompra') or (PagePrincipal.ActivePage.Name = 'TabSheetItens')) then
  begin
    MontaDadosCompra;
    MontaDadosCheque;

    if not Dm.SQLConfigVenda.Active then Dm.SQLConfigVenda.Open;
    if Dm.SQLConfigVendaCFVECTESTALIMTCRED.AsString = 'S' then
      EditLimiteCredito.Value := CalculaLimiteCredito(SQLTemplateCLIEA13ID.AsString,0,SQLLimiteParcelas,SQLLimiteCliente);
  end ;
  if SQLTemplateCLIEDNASC.AsDateTime > 0 then
    if FormatDateTime('dd/mm',SQLTemplateCLIEDNASC.AsDateTime) = FormatDateTime('dd/mm',Now) then
      Informa('O Cliente está fazendo Aniversário hoje!');

  if SQLTemplateCLIEA254PATHFOTO.AsString <> '' then
    begin
      try
        FotoCliente.Picture.LoadFromFile(SQLTemplateCLIEA254PATHFOTO.AsString);
      except
   //     Informa('Não foi possível localizar a foto deste cliente -> ' + SQLTemplateCLIEA254PATHFOTO.AsString);
        FotoCliente.Picture := Nil;
      end;
      FotoCliente.Refresh;
    end
  else
    FotoCliente.Picture := Nil;
end;

procedure TFormCadastroClienteRestaurante.ImprimirCarneAvulsoClick(Sender: TObject);
Var
  DocParc     : string ;
  NumParcelas : integer ;
  VlrVista    : double ;
begin
  inherited;
  if Pergunta('SIM','* * * CONFIRMA A IMPRESSÃO DO CARNÊ AVULSO PARA O DOCUMENTO ' +
                    SQLDadosCompraCUPOA13ID.AsString + ' ? * * *') then
  begin
    TblCarne.Close ;
    try
      TblCarne.DeleteTable ;
    except
    end ;
    TblCarne.CreateTable ;
    TblCarne.Open ;
    //GRAVAR PARCELA A PRAZO NA TEBLA TEMPORARIA DE CARNE
    SQLGeral.Close ;
    SQLGeral.SQL.Clear ;
    SQLGeral.SQL.Add('select * from CUPOMNUMERARIO') ;
    SQLGeral.SQL.Add('where CUPOA13ID = "' + SQLDadosCompraCUPOA13ID.AsString + '"') ;
//    SQLGeral.SQL.Add('and   CPNMCAUTENT <> "S"') ;
    SQLGeral.Open ;
    SQLGeral.First ;
    VlrVista := 0 ;
    while not SQLGeral.EOF do
      begin
        VlrVista := VlrVista + SQLGeral.FieldByName('CPNMN2VLR').Value ;
        SQLGeral.Next ;
      end ;

    NroCupom := SQLLocate('CUPOM', 'CUPOA13ID', 'CUPOINRO',  '"' + SQLDadosCompraCUPOA13ID.AsString + '"') ;

    if VlrVista > 0 then
      begin
        NumParcelas := 1 ;

        TblCarne.Append ;
        TblCarneEmpresaNome.AsString    := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60NOMEFANT', EmpresaPadrao) ;
        TblCarneEmpresaEnder.AsString   := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60END',      EmpresaPadrao) ;
        TblCarneEmpresaBairro.AsString  := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60BAI',      EmpresaPadrao) ;
        TblCarneEmpresaCidade.AsString  := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60CID',      EmpresaPadrao) ;
        TblCarneEmpresaUF.AsString      := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA2UF',        EmpresaPadrao) ;
        TblCarneEmpresaFone.AsString    := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA20FONE',     EmpresaPadrao) ;
        TblCarneMensagem.AsString       := DM.SQLTerminalAtivoTERMA255MSGCARNE.Value ;
        TblCarneCliente.AsString        := SQLTemplateCLIEA60RAZAOSOC.AsString ;
        TblCarneEndereco.AsString       := SQLTemplateCLIEA60ENDRES.AsString ;
        TblCarneBairro.AsString         := SQLTemplateCLIEA60CIDRES.AsString ;
        TblCarneCidade.AsString         := SQLTemplateCLIEA60BAIRES.AsString ;
        TblCarneCodigoCliente.AsString  := SQLTemplateCLIEA13ID.AsString ;
        TblCarneClienteDependente.AsString  := SQLLocate('CUPOM', 'CUPOA13ID', 'CLDPICOD',  '"' + SQLDadosCompraCUPOA13ID.AsString + '"') ;
        TblCarneNumeroContrato.AsString := SQLDadosCompraCUPOA13ID.AsString ;
        TblCarneNumeroParcela.Value     := 0 ;
        TblCarneContadorParcelas.Value  := NumParcelas ;
        TblCarneDataVencimento.AsString := SQLDadosCompraCTRCDEMIS.AsString ;
        TblCarneValorParcela.Value      := VlrVista ;
        TblCarneDataEmissao.AsString    := SQLDadosCompraCTRCDEMIS.AsString ;
        TblCarneNroCupom.AsString       := NroCupom ;
        TblCarneVendedor.AsString       := SQLLocate('VENDEDOR','VENDICOD','VENDA60NOME', SQLLocate('CUPOM','CUPOA13ID','VENDICOD','"' + TblCarneNumeroContrato.AsString + '"'));
        TblCarneTotalCupom.AsString     := SQLLocate('CUPOM','CUPOA13ID','CUPON2TOTITENS','"' + TblCarneNumeroContrato.AsString + '"');
        TblCarneAcrescimo.AsString      := SQLLocate('CUPOM','CUPOA13ID','CUPON2ACRESC','"' + TblCarneNumeroContrato.AsString + '"');
        TblCarneValorDesconto.AsString  := SQLLocate('CUPOM','CUPOA13ID','CUPON2DESC','"' + TblCarneNumeroContrato.AsString + '"');
        TblCarneTotalCupom.AsString     := SQLLocate('CUPOM','CUPOA13ID','CUPON2TOTITENS','"' + TblCarneNumeroContrato.AsString + '"');
        TblCarneTaxaCrediario.AsString  := SQLLocate('CUPOM','CUPOA13ID','CUPON3CREDTAXA','"' + TblCarneNumeroContrato.AsString + '"');
        TblCarneTotalCupom.AsString     := FloatToStr(TblCarneTotalCupom.Value + TblCarneTaxaCrediario.Value);

        Dm.SQLTemplate.Close;
        Dm.SQLTemplate.SQL.Clear;
        Dm.SQLTemplate.SQL.Add('SELECT CPNMN2VLR FROM CUPOMNUMERARIO WHERE CONMCSTATUS = "A" AND ');
        Dm.SQLTemplate.SQL.Add('CUPOA13ID = "' + TblCarneNumeroContrato.AsString + '"');
        Dm.SQLTemplate.Open;
        if not Dm.SQLTemplate.IsEmpty then
          TblCarneEntrada.Value           := Dm.SQLTemplate.FieldByName('CPNMN2VLR').AsFloat
        else
          TblCarneEntrada.Value           := 0;
        TblCarneTaxaCrediario.AsString  := SQLLocate('CUPOM','CUPOA13ID','CUPON3CREDTAXA','"' + TblCarneNumeroContrato.AsString + '"');
        TblCarnePlano.AsString          := SQLLocate('PLANORECEBIMENTO','PLRCICOD','PLRCA60DESCR',SQLLocate('CUPOM','CUPOA13ID','PLRCICOD','"' + TblCarneNumeroContrato.AsString + '"'));

        TblCarne.Post ;

        SQLGeral.Next ;
      end ;
    //GRAVAR PARCELAS A PRAZO NA TABELA TEMPORARIA DE CARNE
    NumParcelas := NumParcelas + SQLRecCount('CONTASRECEBER', 'where CUPOA13ID = "' + SQLDadosCompraCUPOA13ID.AsString + '"') ;
    SQLGeral.Close ;
    SQLGeral.SQL.Clear ;
    SQLGeral.SQL.Add('select * from CONTASRECEBER') ;
    SQLGeral.SQL.Add('where CUPOA13ID = "' + SQLDadosCompraCUPOA13ID.AsString + '"') ;
    SQLGeral.Open ;
    SQLGeral.First ;

    while not SQLGeral.EOF do
      begin
        TblCarne.Append ;
        TblCarneEmpresaNome.AsString    := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60NOMEFANT', EmpresaPadrao) ;
        TblCarneEmpresaEnder.AsString   := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60END',      EmpresaPadrao) ;
        TblCarneEmpresaBairro.AsString  := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60BAI',      EmpresaPadrao) ;
        TblCarneEmpresaCidade.AsString  := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60CID',      EmpresaPadrao) ;
        TblCarneEmpresaUF.AsString      := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA2UF',        EmpresaPadrao) ;
        TblCarneEmpresaFone.AsString    := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA20FONE',     EmpresaPadrao) ;
        TblCarneMensagem.AsString       := '' ;
        TblCarneCliente.AsString        := SQLTemplateCLIEA60RAZAOSOC.AsString ;
        TblCarneEndereco.AsString       := SQLTemplateCLIEA60ENDRES.AsString ;
        TblCarneBairro.AsString         := SQLTemplateCLIEA60CIDRES.AsString ;
        TblCarneCidade.AsString         := SQLTemplateCLIEA60BAIRES.AsString ;
        TblCarneCodigoCliente.AsString  := SQLTemplateCLIEA13ID.AsString ;
        TblCarneClienteDependente.AsString  := SQLLocate('CUPOM', 'CUPOA13ID', 'CLDPICOD',  '"' + SQLDadosCompraCUPOA13ID.AsString + '"') ;
        TblCarneNumeroContrato.AsString := SQLDadosCompraCUPOA13ID.AsString ;
        TblCarneNumeroParcela.AsString  := SQLGeral.FieldByName('CTRCINROPARC').AsString ;
        TblCarneContadorParcelas.Value  := NumParcelas ;
        TblCarneDataVencimento.AsString := SQLGeral.FieldByName('CTRCDVENC').AsString ;
        TblCarneValorParcela.AsString   := SQLGeral.FieldByName('CTRCN2VLR').AsString ;
        TblCarneDataEmissao.AsString    := SQLGeral.FieldByName('CTRCDEMIS').AsString ;
        TblCarneNroCupom.AsString       := NroCupom ;
        TblCarneVendedor.AsString       := SQLLocate('VENDEDOR','VENDICOD','VENDA60NOME', SQLLocate('CUPOM','CUPOA13ID','VENDICOD','"' + TblCarneNumeroContrato.AsString + '"'));
        TblCarneTotalCupom.AsString     := SQLLocate('CUPOM','CUPOA13ID','CUPON2TOTITENS','"' + TblCarneNumeroContrato.AsString + '"');
        TblCarneAcrescimo.AsString      := SQLLocate('CUPOM','CUPOA13ID','CUPON2ACRESC','"' + TblCarneNumeroContrato.AsString + '"');
        TblCarneValorDesconto.AsString  := SQLLocate('CUPOM','CUPOA13ID','CUPON2DESC','"' + TblCarneNumeroContrato.AsString + '"');
        TblCarneTotalCupom.AsString     := SQLLocate('CUPOM','CUPOA13ID','CUPON2TOTITENS','"' + TblCarneNumeroContrato.AsString + '"');
        TblCarneTaxaCrediario.AsString  := SQLLocate('CUPOM','CUPOA13ID','CUPON3CREDTAXA','"' + TblCarneNumeroContrato.AsString + '"');
        TblCarneTotalCupom.AsString     := FloatToStr(TblCarneTotalCupom.Value + TblCarneTaxaCrediario.Value);

        Dm.SQLTemplate.Close;
        Dm.SQLTemplate.SQL.Clear;
        Dm.SQLTemplate.SQL.Add('SELECT CPNMN2VLR FROM CUPOMNUMERARIO WHERE CONMCSTATUS = "A" AND ');
        Dm.SQLTemplate.SQL.Add('CUPOA13ID = "' + TblCarneNumeroContrato.AsString + '"');
        Dm.SQLTemplate.Open;
        if not Dm.SQLTemplate.IsEmpty then
          TblCarneEntrada.Value           := Dm.SQLTemplate.FieldByName('CPNMN2VLR').AsFloat
        else
          TblCarneEntrada.Value           := 0;
        TblCarneTaxaCrediario.AsString  := SQLLocate('CUPOM','CUPOA13ID','CUPON3CREDTAXA','"' + TblCarneNumeroContrato.AsString + '"');
        TblCarnePlano.AsString          := SQLLocate('PLANORECEBIMENTO','PLRCICOD','PLRCA60DESCR',SQLLocate('CUPOM','CUPOA13ID','PLRCICOD','"' + TblCarneNumeroContrato.AsString + '"'));

        TblCarne.Post ;

        SQLGeral.Next ;
      end ;
    if FileExists(DM.PathAplicacao + 'CARNES.EXE') then
    begin
      if FileExists('ToScreen.Arq') then
        WinExec(Pchar(DM.PathAplicacao + 'Carnes.EXE ' + IntToStr(TerminalAtual) + ' SCR ' + '0'),sw_Show)
      else
        WinExec(Pchar(DM.PathAplicacao + 'Carnes.EXE ' + IntToStr(TerminalAtual) + ' PRN ' + '0'),sw_Show) ;
    end
    else
    if FileExists('CARNESITEM.EXE') then
      begin
        if FileExists('ToScreen.Arq') then
          WinExec(Pchar(DM.PathAplicacao + 'CARNESITEM.EXE ' + IntToStr(TerminalAtual) + ' SCR ' + '0'),sw_Show)
        else
          WinExec(Pchar(DM.PathAplicacao + 'CARNESITEM.EXE ' + IntToStr(TerminalAtual) + ' PRN ' + '0'),sw_Show);
      end
    else
      Informa('O programa de impressão de carnê não foi encontrado !') ;
  end ;
end;

procedure TFormCadastroClienteRestaurante.ImprimirParcelaCarneAvulsaClick(
  Sender: TObject);
begin
  inherited;
  if SQLDadosCompraCUPOCTIPOPADRAO.Value <> 'CRD' then
    begin
      ShowMessage('*** ESTA VENDA NÃO PODE IMPRIMIR CARNÊ ***');
      Abort;
    end;

  if SQLDadosCompraCTRCN2TOTREC.Value = SQLDadosCompraCTRCN2VLR.Value then
  begin
    Informa('Esta parcela já está quitada !') ;
    exit ;
  end ;

  if Pergunta('SIM','* * * CONFIRMA A IMPRESSÃO DO CARNÊ AVULSO PARA O DOCUMENTO ' +
                    SQLDadosCompraCUPOA13ID.AsString + '/' +
                    SQLDadosCompraCTRCINROPARC.AsString + ' ? * * *') then
  begin
    TblCarne.Close ;
    try
      TblCarne.DeleteTable ;
    except
    end ;
    TblCarne.CreateTable ;
    TblCarne.Open ;

    NroCupom := SQLLocate('CUPOM', 'CUPOA13ID', 'CUPOINRO',  '"' + SQLDadosCompraCUPOA13ID.AsString + '"') ;

    TblCarne.Append ;
    TblCarneEmpresaNome.AsString    := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60NOMEFANT', EmpresaPadrao) ;
    TblCarneEmpresaEnder.AsString   := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60END',      EmpresaPadrao) ;
    TblCarneEmpresaBairro.AsString  := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60BAI',      EmpresaPadrao) ;
    TblCarneEmpresaCidade.AsString  := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60CID',      EmpresaPadrao) ;
    TblCarneEmpresaUF.AsString      := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA2UF',        EmpresaPadrao) ;
    TblCarneEmpresaFone.AsString    := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA20FONE',     EmpresaPadrao) ;
    TblCarneMensagem.AsString       := '' ;
    TblCarneCliente.AsString        := SQLTemplateCLIEA60RAZAOSOC.AsString ;
    TblCarneEndereco.AsString       := SQLTemplateCLIEA60ENDRES.AsString  ;
    TblCarneBairro.AsString         := SQLTemplateCLIEA60CIDRES.AsString  ;
    TblCarneCidade.AsString         := SQLTemplateCLIEA60BAIRES.AsString  ;
    TblCarneCodigoCliente.AsString  := SQLTemplateCLIEA13ID.AsString  ;
    TblCarneNumeroContrato.AsString := SQLDadosCompraCUPOA13ID.AsString ;
    TblCarneNumeroParcela.AsString  := SQLDadosCompraCTRCINROPARC.AsString ;
    //TblCarneContadorParcelas.AsString :=
    TblCarneDataVencimento.AsString := SQLDadosCompraCTRCDVENC.AsString ;
    TblCarneValorParcela.AsString   := SQLDadosCompraCTRCN2VLR.AsString ;
    TblCarneTotalCupom.AsString     := SQLLocate('CUPOM','CUPOA13ID','CUPON2TOTITENS','"' + TblCarneNumeroContrato.AsString + '"');
    TblCarneAcrescimo.AsString      := SQLLocate('CUPOM','CUPOA13ID','CUPON2ACRESC','"' + TblCarneNumeroContrato.AsString + '"');
    TblCarneValorDesconto.AsString  := SQLLocate('CUPOM','CUPOA13ID','CUPON2DESC','"' + TblCarneNumeroContrato.AsString + '"');
    TblCarneTaxaCrediario.AsString  := SQLLocate('CUPOM','CUPOA13ID','CUPON3CREDTAXA','"' + TblCarneNumeroContrato.AsString + '"');
    TblCarneTotalCupom.AsString     := FloatToStr(TblCarneTotalCupom.Value + TblCarneTaxaCrediario.Value);

    //TblCarneVendedor.AsString       := LblNomeVendedor.Caption ;
    TblCarneNroCupom.AsString       := NroCupom ;
    TblCarne.Post ;

    {if FileExists('carne.rpt') then
    begin
      TicketPreVenda.PrinterName   := Copy(TargetPrinter, 1, Pos('=', TargetPrinter)-1) ;
      TicketPreVenda.PrinterDriver := Copy(TargetPrinter, Pos('=', TargetPrinter)+1, Pos(',', TargetPrinter)-Pos('=', TargetPrinter)-1) ;
      TicketPreVenda.PrinterPort   := Copy(TargetPrinter, Pos(',', TargetPrinter)+1, 200) ;

      ReportCarne.PrintReport ;
    end
    else
      Informa('O programa de impressão de carnê não foi encontrado !') ;}
    if FileExists(DM.PathAplicacao + 'CARNES.EXE') then
      begin
        if FileExists('ToScreen.arq') then
          WinExec(Pchar(DM.PathAplicacao + 'CARNES.EXE ' + IntToStr(TerminalAtual) + ' SCR ' + '0'),sw_Show)
        else
          WinExec(Pchar(DM.PathAplicacao + 'CARNES.EXE ' + IntToStr(TerminalAtual) + ' PRN ' + '0'),sw_Show) ;
      end
    else
      begin
        if FileExists('CARNESITEM.EXE') then
          begin
            if FileExists('ToScreen.Arq') then
              WinExec(Pchar(DM.PathAplicacao + 'CARNESITEM.EXE ' + IntToStr(TerminalAtual) + ' SCR ' + '0'),sw_Show)
            else
              WinExec(Pchar(DM.PathAplicacao + 'CARNESITEM.EXE ' + IntToStr(TerminalAtual) + ' PRN ' + '0'),sw_Show);
          end
        else
          Informa('O programa de impressão de carnê não foi encontrado !') ;
      end;
  end ;
end;

procedure TFormCadastroClienteRestaurante.SQLTemplateBeforeDelete(DataSet: TDataSet);
begin
  DM.SQLTemplate.Close;
  DM.SQLTemplate.SQL.Text:='Select * From USUARIO Where USUAICOD = ' + IntToStr(UsuarioCorrente);
  DM.SQLTemplate.Open;
  If DM.SQLTemplate.FindField('USUACEXCLCLI').asString <> 'S' Then
    Begin
      Informa('Você não tem poder para excluir clientes!') ;
      Sysutils.Abort ;
    End;
  if SQLLocate('CUPOM', 'CLIEA13ID', 'CLIEA13ID', '"' + SQLTemplateCLIEA13ID.Value + '"') <> '' then
  begin
    Informa('Este cliente não pode ser excluído pois possui compras !') ;
    Sysutils.Abort ;
  end ;
  if SQLLocate('NOTAFISCAL', 'CLIEA13ID', 'CLIEA13ID', '"' + SQLTemplateCLIEA13ID.Value + '"') <> '' then
  begin
    Informa('Este cliente não pode ser excluído pois possui compras !') ;
    Sysutils.Abort ;
  end ;
  inherited;
end;

procedure TFormCadastroClienteRestaurante.DBGridItensCellClick(Column: TColumn);
begin
  inherited;
{  SQLItem.Close;
  SQLItem.MacroByName('MOrdem').Value := 'order by ' + Column.FieldName ;
  SQLItem.Open ;}
end;

procedure TFormCadastroClienteRestaurante.AlterarDataBasepDadosdeCompra1Click(
  Sender: TObject);
begin
  inherited;
  try
    DataBase := StrToDate(InputBox('Alterar Data Base Dados Compra', 'Informa a nova data base', DateToStr(DataBase)));
    MontaDadosCompra ;
  except
    Informa('Data inválida') ;
  end ;
end;

procedure TFormCadastroClienteRestaurante.SQLTemplateCLIEA10RGChange(Sender: TField);
begin
  inherited;
  RGAlterado := true ;
end;

procedure TFormCadastroClienteRestaurante.SQLTemplateAfterInsert(DataSet: TDataSet);
begin
  inherited;
  RGAlterado  := false ;
  CPFAlterado := false ;
  CGCAlterado := False;
end;

procedure TFormCadastroClienteRestaurante.SQLTemplateAfterEdit(DataSet: TDataSet);
begin
  inherited;
  RGAlterado  := false ;
  CPFAlterado := false ;
  CGCAlterado := False;
end;

procedure TFormCadastroClienteRestaurante.ImprimeExtratoCadernoClick(Sender: TObject);
begin
  inherited;
  BatchMoveCaderno.Execute;
  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Extrato de Caderno Cliente.rpt';
  Report.ReportTitle       := 'Extrato de Caderno de Cliente';
  Report.WindowStyle.Title := 'Extrato de Caderno de Cliente';
  //SETAR LEGENDA DE FILTROS NO RPT\\
  Report.Formulas.Retrieve;
  Report.Formulas.Name         := 'Emissao';
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"';
  //-------------------------------------------------\\
  Report.Formulas.Name         := 'NomeCliente' ;
  Report.Formulas.Formula.Text := '"' + SQLTemplateCLIEA60RAZAOSOC.Value + '"' ;
  Report.Execute ;
end;

procedure TFormCadastroClienteRestaurante.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  // Rotina que retorna o cliente para o Front Loja;
  DataSetLookup := Nil;
end;

procedure TFormCadastroClienteRestaurante.DBGridItensKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    begin
      SQLItem.First;
      Produto := UPPERCASE(InputBox('Pesquisa de Produtos','Digite a descrição do produto :',''));
      SQLItem.Close;
      if POS('*',Produto) > 0  then
        begin
          Delete(Produto,POS('*',Produto),1);
          SQLItem.MacroByName('MProdutoCP').Value := 'PRODUTO.PRODA60DESCR Like "%' + Produto + '%"' ;
          SQLItem.MacroByName('MProdutoNF').Value := 'PRODUTO.PRODA60DESCR Like "%' + Produto + '%"' ;
        end
      else
        begin
          SQLItem.MacroByName('MProdutoCP').Value := 'PRODUTO.PRODA60DESCR Like "' + Produto + '%"' ;
          SQLItem.MacroByName('MProdutoNF').Value := 'PRODUTO.PRODA60DESCR Like "' + Produto + '%"' ;
        end;
      SQLItem.Open;
    end;
  if Key = VK_Return then
    begin
      SQLItem.Close;
      SQLItem.MacroByName('MProdutoCP').Value := '0=0' ;
      SQLItem.MacroByName('MProdutoNF').Value := '0=0' ;
      SQLItem.Open;
    end;
end;

procedure TFormCadastroClienteRestaurante.LabelRetornarClick(Sender: TObject);
begin
{  if Application.FindComponent('FormTelaFechamentoVenda') <> Nil then
    begin }
    // Verifica Limite de Crédito;
    {if (DM.SQLConfigVendaCFVECTESTALIMTCRED.AsString = 'S') then
      if not VerificaLimiteCredito(SQLTemplateCLIEA13ID.AsString,ValorVenda,DM.SQLParcelas,DM.SQLCliente) then
        Abort;}
      ClienteCadastro := SQLTemplateCLIEA13ID.AsString;
      UsaPrecoVenda   := SQLTemplateCLIECTPPRCVENDA.AsString;
  {  end;   }
  inherited;
end;

procedure TFormCadastroClienteRestaurante.FotoClienteDblClick(Sender: TObject);
begin
  inherited;
  if SQLTemplate.State in DsEditModes then
    begin
      Picture.Execute;
      if Picture.FileName <> '' then
        begin
          SQLTemplateCLIEA254PATHFOTO.AsString := Picture.FileName;
        end;
    end
  else
    Informa('Você deve alterar ou incluir para capturar uma foto !');  
end;

procedure TFormCadastroClienteRestaurante.MnOcultaObservacaoClick(Sender: TObject);
begin
  inherited;
  if GroupBoxCupomObs.Visible = False then
    begin
      GroupBoxCupomObs.Visible := True;
      SQLCupomObs.Close;
      SQLCupomObs.ParamByName('Cupom').AsString := SQLDadosCompraCUPOA13ID.AsString ;
      SQLCupomObs.Open;
    end
  else
    begin
      SQLCupomObs.Close;
      GroupBoxCupomObs.Visible := False;
    end;
end;

procedure TFormCadastroClienteRestaurante.DSSQLParcelasDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if GroupBoxCupomObs.Visible = True then
    begin
      SQLCupomObs.Close;
      SQLCupomObs.ParamByName('Cupom').AsString := SQLDadosCompraCUPOA13ID.AsString ;
      SQLCupomObs.Open;
    end
end;

procedure TFormCadastroClienteRestaurante.MnRelPlanilhadeVendasClick(Sender: TObject);
begin
  inherited;
  ReportPlanilhaMensalVendas.Print;
end;

procedure TFormCadastroClienteRestaurante.MnCadastroClienteItensCompradosClick(
  Sender: TObject);
var QtdVolume : Double;
begin
  inherited;
  if PagePrincipal.ActivePage <> TabSheetItens then
    begin
      Informa('Por favor selecione a página "Itens Comprados" antes de executar esta função!');
      Exit;
    end;
  try
    TblItensComprados.Close;
    TblItensComprados.DeleteTable;
    TblItensComprados.CreateTable;
  except
    TblItensComprados.CreateTable;
  end;
  TblItensComprados.Open;
  SQLItem.First;
  BatchItensComprados.Execute;
  TblItensComprados.close;
  TblItensComprados.open;
  TblItensComprados.First;
  while not TblItensComprados.eof do
    begin
      TblItensComprados.Edit;
      try
        QtdVolume := StrToFloat(SQLLocate('Produto','PRODICOD','PRODN3PESOBRUTO',TblItensCompradosPRODICOD.AsString));
      except
        QtdVolume := 0;
      end;
      if QtdVolume > 0 then
        TblItensCompradosNroVolumes.Value := TblItensCompradosQTDE.Value / QtdVolume
      else
        TblItensCompradosNroVolumes.Value := 0;
      TblItensCompradosVLRTOTITEM.Value := TblItensCompradosVLRUNIT.Value*TblItensCompradosQTDE.Value;
      TblItensComprados.Post;
      TblItensComprados.next;
    end;
  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Listagem de Itens Comprados.rpt' ;
  Report.ReportTitle       := 'Listagem de Itens Comprados';
  Report.WindowStyle.Title := 'Listagem de Itens Comprados';
  Report.Formulas.Retrieve;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa' ;
  Report.Formulas.Formula.Text := '"' + SQLLocate('EMPRESA','EMPRICOD','EMPRA60RAZAOSOC',EmpresaPadrao) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Cliente';
  Report.Formulas.Formula.Text := '"' + SQLTemplateCLIEA60RAZAOSOC.AsString + '"';
  //--------------------------------------------------------------------------\\
  Report.Formulas.Send;
  Report.Execute;
end;

procedure TFormCadastroClienteRestaurante.MnFichaClienteResumidaClick(
  Sender: TObject);
var
 I : Integer;  
begin
  inherited;
  TblFichaCliente.Close;
  try
    TblFichaCliente.DeleteTable;
  except
  end;
  TblFichaCliente.CreateTable;
  TblFichaCliente.Open;

  TblFichaCliente.Append;
  for i := 0 to SQLTemplate.FieldCount-1 do
    if (SQLTemplate.Fields[i].AsString <> '') and (TblFichaCliente.FindField(SQLTemplate.Fields[i].FieldName) <> nil) then
      TblFichaCliente.FieldByName(SQLTemplate.Fields[i].FieldName).AsVariant := SQLTemplate.Fields[i].AsVariant;
  TblFichaCliente.Post;

  Report.ReportName     := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Ficha de Cliente Resumida.rpt';
  Report.Execute;
end;

procedure TFormCadastroClienteRestaurante.BtnLocalizarClick(Sender: TObject);
var
 ClausulaCP, ClausulaNF : String;
begin
  inherited;
  ClausulaCP := '';
  ClausulaNF := '';
  if (EditDe.Text <> '  /  /    ') and (EditDe.Text <> '  /  /    ') then
    begin
      ClausulaCP := 'CUPOM.CUPODEMIS >= "'      + FormatDateTime('mm/dd/yyyy',EditDe.Date)  + '" AND ' +
                    'CUPOM.CUPODEMIS <= "'      + FormatDateTime('mm/dd/yyyy',EditAte.Date) + '"';
      ClausulaNF := 'NOTAFISCAL.NOFIDEMIS >= "' + FormatDateTime('mm/dd/yyyy',EditDe.Date)  + '" AND ' +
                    'NOTAFISCAL.NOFIDEMIS <= "' + FormatDateTime('mm/dd/yyyy',EditAte.Date) + '"';
    end;

  if ((ClausulaCP <> '') or (ClausulaNF <> '')) and (ComboProduto.Value <> '') then
    begin
      ClausulaCP := ClausulaCP + ' AND PRODUTO.PRODICOD = ' + ComboProduto.Value;
      ClausulaNF := ClausulaNF + ' AND PRODUTO.PRODICOD = ' + ComboProduto.Value;
    end
  else
    if ComboProduto.Value <> '' then
      begin
        ClausulaCP := 'PRODUTO.PRODICOD = ' + ComboProduto.Value;
        ClausulaNF := 'PRODUTO.PRODICOD = ' + ComboProduto.Value;
      end;

  if (ClausulaCP <> '') or (ClausulaNF <> '') then
    begin
      SQLItem.Close;
      SQLItem.MacroByName('MProdutoCP').Value := ClausulaCP;
      SQLItem.MacroByName('MProdutoNF').Value := ClausulaNF;
      SQLItem.Open;
    end;
end;

procedure TFormCadastroClienteRestaurante.ComboProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if (sender as trxdblookupcombo).IsDropDown then
      if ((sender as trxdblookupcombo).Value = '')
        or ((sender as trxdblookupcombo).Value <>
            (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
          (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;
end;

procedure TFormCadastroClienteRestaurante.TabSheetItensEnter(Sender: TObject);
begin
  inherited;
  EditDe.SetFocus;
end;

procedure TFormCadastroClienteRestaurante.TabSheetItensExit(Sender: TObject);
begin
  inherited;
  SQLItem.Close;
end;

procedure TFormCadastroClienteRestaurante.MontaDadosCheque;
var
  TotalPagoCheque,
  TotalDivida,
  TotalVencido,
  NroCheques,
  NroChequesVencidos,
  DiasAtraso : Double;
begin
  if SQLCheques.Active then SQLCheques.Close;
  SQLCheques.DisableControls;
  SQLCheques.Open;
  SQLCheques.First;
  TotalPagoCheque := 0;
  TotalDivida := 0;
  TotalVencido := 0;
  NroCheques := 0;
  NroChequesVencidos := 0;
  While not SQLCheques.Eof do
    begin
      if SQLCheques.FieldByName('CTRCDULTREC').AsVariant = null then
        begin
          TotalDivida := TotalDivida + SQLCheques.FieldByName('CTRCN2VLR').AsFloat;
          if SQLCheques.FieldByName('CTRCDVENC').AsDateTime < Date then
            begin
              TotalVencido := TotalVencido + SQLCheques.FieldByName('CTRCN2VLR').AsFloat;
              NroChequesVencidos := NroChequesVencidos + 1;
              DiasAtraso := DiasAtraso + Int(Date - SQLCheques.FieldByName('CTRCDVENC').AsDateTime);
            end;
        end;
      if SQLCheques.FieldByName('CTRCDULTREC').AsVariant <> Null then
        begin
          TotalPagoCheque := TotalPagoCheque + SQLCheques.FieldByName('CTRCN2TOTREC').AsFloat;
          if SQLCheques.FieldByName('CTRCN2TOTREC').AsFloat < SQLCheques.FieldByName('CTRCN2VLR').AsFloat then
            TotalDivida := TotalDivida + (SQLCheques.FieldByName('CTRCN2VLR').AsFloat - SQLCheques.FieldByName('CTRCN2TOTREC').AsFloat);
        end;
      NroCheques := NroCheques + 1;
      SQLCheques.Next;
    end;
  if (DiasAtraso > 0)  and (NroChequesVencidos > 0) then
    EditMedioChq.Value := DiasAtraso / NroChequesVencidos;
  EditNroChq.Value   := NroCheques;
  EditPagoChq.Value  := TotalPagoCheque;
  EditVencidoChq.Value := TotalVencido;
  EditDividaChq.Value  := TotalDivida;
  SQLCheques.First;
  SQLCheques.EnableControls;
  EditNroChq.Update;
  EditPagoChq.Update;
  EditVencidoChq.Update;
  EditDividaChq.Update;
  PageControlDadosCompra.ActivePage := TabCarne;
  Application.ProcessMessages;
end;
procedure TFormCadastroClienteRestaurante.SQLChequesCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('NOFIA13ID').AsString <> '' then
    DataSet.FieldByName('NOFIINUMERO').AsString := SQLLocate('NOTAFISCAL','NOFIA13ID','NOFIINUMERO','"' + DataSet.FieldByName('NOFIA13ID').AsString + '"');
end;

procedure TFormCadastroClienteRestaurante.TabChequesShow(Sender: TObject);
begin
  inherited;
  DBGridCheque.SetFocus;
end;

procedure TFormCadastroClienteRestaurante.TabCarneShow(Sender: TObject);
begin
  inherited;
  DBGridDadosCompra.SetFocus;
end;

procedure TFormCadastroClienteRestaurante.DBGridDadosCompraTitleClick(
  Column: TColumn);
begin
  inherited;
  if Column.FieldName = 'CTRCDVENC' then
    begin
      SQLDadosCompra.Close;                                               //,
      SQLDadosCompra.MacroByName('MOrdem').AsString := 'ORDER BY CTRCDVENC DESC';
      SQLDadosCompra.Open;
    end;
  if Column.FieldName = 'CTRCDULTREC' then
    begin
      SQLDadosCompra.Close;                                               //,
      SQLDadosCompra.MacroByName('MOrdem').AsString := 'ORDER BY CTRCDULTREC DESC';
      SQLDadosCompra.Open;
    end;
  if Column.FieldName = 'CTRCDEMIS' then
    begin
      SQLDadosCompra.Close;
      SQLDadosCompra.MacroByName('MOrdem').AsString := 'ORDER BY CTRCDEMIS,CUPOA13ID,NOFIA13ID,CTRCINROPARC ASC';
      SQLDadosCompra.Open;
    end;
end;

procedure TFormCadastroClienteRestaurante.SQLDadosCompraCalcFields(DataSet: TDataSet);
var
  Vencimento : TDate;
  ValorItens,Vendedor : String;
begin
  inherited;
  VlrSaldo   := DataSet.FieldByName('CTRCN2VLR').Value ;
  if DataSet.FieldByName('NOFIA13ID').AsString <> '' then
    begin
      ValorItens := SQLLocate('NOTAFISCAL','NOFIA13ID','NOFIN2VLRPRODUTO','"' + DataSet.FieldByName('NOFIA13ID').AsString + '"');
      if ValorItens <> '' then
        DataSet.FieldByName('CUPON2TOTITENS').AsFloat := StrToFloat(ValorItens)
      else
        DataSet.FieldByName('CUPON2TOTITENS').AsFloat := 0;
    end;
  if DataSet.FieldByName('CUPOA13ID').AsString <> '' then
    begin
      try
        DataSet.FieldByName('CUPON2TOTITENS').AsFloat := StrToFloat(SQLLocate('CUPOM','CUPOA13ID','CUPON2TOTITENS','"' + DataSet.FieldByName('CUPOA13ID').AsString + '"'));
      except
        DataSet.FieldByName('CUPON2TOTITENS').AsFloat := 0; // Quando nao tem cabecalho por exemplo na exclusao de movimentos.
      end;
    end;
  if DataSet.FieldByName('CTRCDULTREC').AsVariant <> Null then
    Vencimento := DataSet.FieldByName('CTRCDULTREC').AsVariant
  else
    if DataSet.FieldByName('CTRCDVENC').AsVariant <> Null then
      Vencimento := DataSet.FieldByName('CTRCDVENC').AsVariant;

  if DataSet.FieldByName('CTRCN2TOTREC').Value > 0 then
     VlrSaldo := DataSet.FieldByName('CTRCN2VLR').Value -
                (DataSet.FieldByName('CTRCN2TOTREC').Value -
                 DataSet.FieldByName('CTRCN2TOTJUROREC').Value -
                 DataSet.FieldByName('CTRCN2TOTMULTAREC').Value +
                 DataSet.FieldByName('CTRCN2TOTDESCREC').Value);

  DataSet.FieldByName('ValorPagar').Value := 0 ;
  DataSet.FieldByName('JuroParc').Value   := 0 ;
  DataSet.FieldByName('MultaParc').Value  := 0 ;
  DataSet.FieldByName('DescParc').Value   := 0 ;

  If DataSet.FieldByName('NOFIA13ID').AsString <> '' Then
    begin
      DataSet.FieldByName('Documento').asString := 'NF ' + SQLLocate('NOTAFISCAL', 'NOFIA13ID', 'SERIA5COD', '"' + DataSet.FieldByName('NOFIA13ID').asString + '"') + '-' + SQLLocate('NOTAFISCAL', 'NOFIA13ID', 'NOFIINUMERO', '"' + DataSet.FieldByName('NOFIA13ID').asString + '"');
      If DataSet.FieldByName('Documento').AsString[1] = 'N' Then
        DataSet.FieldByName('Documento').asString := DataSet.FieldByName('EMPRICOD').AsString    +
                                                    ' - NF ' + DataSet.FieldByName('CTRCA30NRODUPLICBANCO').AsString;
      try
        Vendedor := SQLLocate('NOTAFISCAL','NOFIA13ID','VENDICOD','"' + DataSet.FieldByName('NOFIA13ID').asString + '"');
        if Vendedor <> '' then
          DataSet.FieldByName('VENDA60NOME').asString := SQLLocate('VENDEDOR','VENDICOD','VENDA60NOME',Vendedor);
      except
      end;
    end
  else
    begin
      if DataSet.FieldByName('CUPOA13ID').AsString <> '' then
        begin
          try
            Vendedor := SQLLocate('CUPOM','CUPOA13ID','VENDICOD','"' + DataSet.FieldByName('CUPOA13ID').asString + '"');
            if Vendedor <> '' then
              DataSet.FieldByName('VENDA60NOME').asString := SQLLocate('VENDEDOR','VENDICOD','VENDA60NOME',Vendedor);
          except
          end;
          DataSet.FieldByName('Documento').asString := 'CP - ' + DataSet.FieldByName('CUPOA13ID').asString;
        end
      else
        begin
          if DataSet.FieldByName('PDVDA13ID').AsString <> '' then
            begin
              try
                Vendedor := SQLLocate('PEDIDOVENDA','PDVDA13ID','VENDICOD','"' + DataSet.FieldByName('PDVDA13ID').asString + '"');
                if Vendedor <> '' then
                  DataSet.FieldByName('VENDA60NOME').asString := SQLLocate('VENDEDOR','VENDICOD','VENDA60NOME',Vendedor);
              except
              end;
              DataSet.FieldByName('Documento').asString := 'PV - ' + DataSet.FieldByName('PDVDA13ID').asString;
            end;
        end;
    end;

  //AVALISTA
  if DataSet.FieldByName('AVALA13ID').asVariant <> Null then
    DataSet.FieldByName('AVALA60RAZAOSOC').AsString := SQLLocate('AVALISTA','AVALA13ID','AVALA60RAZAOSOC','"' + DataSet.FieldByName('AVALA13ID').AsString + '"')
  else
    DataSet.FieldByName('AVALA60RAZAOSOC').AsString := 'NAO INFORMADO';

  if DataSet.FieldByName('AVALA60RAZAOSOC').AsString = '' then
    DataSet.FieldByName('AVALA60RAZAOSOC').AsString  := MensagemLookUp;

  //PORTADOR
  if DataSet.FieldByName('PORTICOD').asVariant <> Null then
    DataSet.FieldByName('PORTA60DESCR').AsString := SQLLocate('PORTADOR','PORTICOD','PORTA60DESCR',DataSet.FieldByName('PORTICOD').AsString)
  else
    DataSet.FieldByName('PORTA60DESCR').AsString := 'NAO INFORMADO';

  if DataSet.FieldByName('PORTA60DESCR').AsString = '' then
    DataSet.FieldByName('PORTA60DESCR').AsString  := MensagemLookUp;

  If (DataSet.FieldByName('CTRCA30NRODUPLICBANCO').asVariant <> Null) and (DataSet.FieldByName('Documento').AsString = '') Then
    DataSet.FieldByName('Documento').asString  := DataSet.FieldByName('CTRCA30NRODUPLICBANCO').Value ;

  If (DataSet.FieldByName('CTRCA13ID').asVariant <> Null) and (DataSet.FieldByName('Documento').AsString = '') Then
    DataSet.FieldByName('Documento').asString := DataSet.FieldByName('CTRCA13ID').Value ;

  if (DataSet.FieldByName('CTRCDVENC').AsVariant <> Null) and (DataSet.FieldByName('CTRCDULTREC').AsVariant = null) then
    DataSet.FieldByName('Atraso').AsFloat := (DataBase - Vencimento);

  if (DataSet.FieldByName('CTRCDVENC').AsVariant <> Null) and (DataSet.FieldByName('CTRCDULTREC').AsVariant <> null) then
   DataSet.FieldByName('Atraso').AsFloat := (DataSet.FieldByName('CTRCDULTREC').AsDateTime - DataSet.FieldByName('CTRCDVENC').AsVariant);

  // Se pagou com antecedencia, Zera para nao influenciar no calculo do atraso medio!
  if (DataSet.FieldByName('Atraso').Value < 0) then
     DataSet.FieldByName('Atraso').Value := 0 ;

  if VlrSaldo > 0 then
  begin
    if DataSet.FieldByName('CTRCN2TXJURO').Value > 0 then
      DataSet.FieldByName('JuroParc').Value := CalculaJuroMultaDesc(VlrSaldo,
                                                                    DataSet.FieldByName('CTRCN2TXJURO').Value,
                                                                    Vencimento,
                                                                    DataBase,
                                                                    0,
                                                                    DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLJUR').AsInteger,
                                                                    'Juro',
                                                                    DataSet.FieldByName('CUPOA13ID').AsString,
                                                                    DataSet.FieldByName('CTRCINROPARC').AsString)
    else
      DataSet.FieldByName('JuroParc').Value := 0 ;


    if DataSet.FieldByName('CTRCN2TXMULTA').Value > 0 then
      DataSet.FieldByName('MultaParc').Value := CalculaJuroMultaDesc(VlrSaldo,
                                               DataSet.FieldByName('CTRCN2TXMULTA').Value,
                                               Vencimento,
                                               DataBase,
                                               0,
                                               DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLMUL').Value,
                                               'Multa',
                                               DataSet.FieldByName('CUPOA13ID').AsString,
                                               DataSet.FieldByName('CTRCINROPARC').AsString)
    else
      DataSet.FieldByName('MultaParc').Value := 0 ;

    if DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCTAXACOBR').Value > 0 then
      DataSet.FieldByName('TxCobrParc').Value := CalculaJuroMultaDesc(VlrSaldo,
                                                 DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCTAXACOBR').Value,
                                                 Vencimento,
                                                 DataBase,
                                                 0,
                                                 0,
                                                 'TaxaCobranca',
                                                 DataSet.FieldByName('CUPOA13ID').AsString,
                                                 DataSet.FieldByName('CTRCINROPARC').AsString)
    else
      DataSet.FieldByName('TxCobrParc').Value := 0 ;


    if DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCADIANT').Value > 0 then
      DataSet.FieldByName('DescParc').Value := CalculaJuroMultaDesc(VlrSaldo,
                                               DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCADIANT').Value,
                                               Vencimento,
                                               DataBase,
                                               0,
                                               DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASADIANT').Value,
                                               'Desconto',
                                               DataSet.FieldByName('CUPOA13ID').AsString,
                                               DataSet.FieldByName('CTRCINROPARC').AsString)
    else
      DataSet.FieldByName('DescParc').Value := 0 ;

    DataSet.FieldByName('ValorPagar').Value := VlrSaldo +
                                               DataSet.FieldByName('JuroParc').Value +
                                               DataSet.FieldByName('MultaParc').Value +
                                               DataSet.FieldByName('TxCobrParc').Value -
                                               DataSet.FieldByName('DescParc').Value ;
  end ;
end;

procedure TFormCadastroClienteRestaurante.DBGridDadosCompraDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
 if (SQLDadosCompra.Fieldbyname('ValorPagar').Value=0) then
    DBGridDadosCompra.Canvas.Font.Color:=clNavy;

 If SQLDadosCompraCTRCCSTATUS.AsString = 'N' Then
    DBGridDadosCompra.Canvas.Font.Color:=clBlue;

 if (SQLDadosCompra.Fieldbyname('CTRCDVENC').AsDateTime > DataBase) and (SQLDadosCompra.Fieldbyname('ValorPagar').Value>0) then
    DBGridDadosCompra.Canvas.Font.Color := clGreen;

  if (SQLDadosCompra.Fieldbyname('CTRCDVENC').AsDateTime < DataBase) and (SQLDadosCompra.Fieldbyname('ValorPagar').Value>0) then
    DBGridDadosCompra.Canvas.Font.Color := clRed;

  If SQLDadosCompra.Fieldbyname('CheqDevolvido').AsString = 'S' Then
    DBGridDadosCompra.Canvas.Font.Color:=clMaroon;

  TDBGrid(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFormCadastroClienteRestaurante.SQLTemplateMTBLICODChange(Sender: TField);
begin
  inherited;
  if (SQLTemplate.State = dsEdit) and
     (SQLLocate('USUARIO', 'USUAICOD', 'USUACDESBLOQCLI', IntToStr(DM.UsuarioAtual)) <> 'S') then
    begin
      Informa('Você não tem permissão para desbloquear clientes !') ;
      TField(Sender).Value := TField(Sender).OldValue;
    end ;
end;

procedure TFormCadastroClienteRestaurante.SQLDadosCompraAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  // Redesenha o Grid por causa do Zebrado
  DBGridDadosCompra.Repaint;
end;

procedure TFormCadastroClienteRestaurante.MnCorrigeemailparaminusculoClick(
  Sender: TObject);
begin
  inherited;
  SQLTemplate.First;
  while not SQLTemplate.eof do
    begin
      if SQLTemplateCLIEA60EMAIL.Value <> '' then
        begin
          SQLTemplate.Edit;
          SQLTemplateCLIEA60EMAIL.Value := LowerCase(SQLTemplateCLIEA60EMAIL.Value);
          SQLTemplate.Post;
        end;
      SQLTemplate.next;
    end;
end;

procedure TFormCadastroClienteRestaurante.MnExtratoClienteClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormRelatorioExtratoCliente,'FormRelatorioExtratoCliente',False,True,True,'') ;
end;

procedure TFormCadastroClienteRestaurante.ItensCompradosConferenciaparaoDeposito1Click(
  Sender: TObject);
var QtdVolume : Double;
begin
  inherited;
  if PagePrincipal.ActivePage <> TabSheetItens then
    begin
      Informa('Por favor selecione a página "Itens Comprados" antes de executar esta função!');
      Exit;
    end;
  try
    TblItensComprados.Close;
    TblItensComprados.DeleteTable;
    TblItensComprados.CreateTable;
  except
    TblItensComprados.CreateTable;
  end;
  TblItensComprados.Open;
  SQLItem.First;
  BatchItensComprados.Execute;
  TblItensComprados.close;
  TblItensComprados.open;
  TblItensComprados.First;
  while not TblItensComprados.eof do
    begin
      TblItensComprados.Edit;
      TblItensCompradosVLRTOTITEM.Value := TblItensCompradosVLRUNIT.Value*TblItensCompradosQTDE.Value;
      QtdVolume := StrToFloat(SQLLocate('Produto','PRODICOD','PRODN3PESOBRUTO',TblItensCompradosPRODICOD.AsString));
      if QtdVolume > 0 then
        TblItensCompradosNroVolumes.Value := TblItensCompradosQTDE.Value / QtdVolume
      else
        TblItensCompradosNroVolumes.Value := 0;
      TblItensComprados.Post;
      TblItensComprados.next;
    end;
  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Listagem de Itens Comprados Conferencia.rpt' ;
  Report.ReportTitle       := 'Listagem de Itens Comprados';
  Report.WindowStyle.Title := 'Listagem de Itens Comprados';
  Report.Formulas.Retrieve;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa' ;
  Report.Formulas.Formula.Text := '"' + SQLLocate('EMPRESA','EMPRICOD','EMPRA60RAZAOSOC',EmpresaPadrao) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Cliente';
  Report.Formulas.Formula.Text := '"' + SQLTemplateCLIEA60RAZAOSOC.AsString + '"';
  //--------------------------------------------------------------------------\\
  Report.Formulas.Send;
  Report.Execute;
end;

procedure TFormCadastroClienteRestaurante.MnRecalcularoLimitedeCreditoInicialClick(
  Sender: TObject);
var LimiteInicial : Double;
begin
  inherited;
  // Calcula limite Original
  While not SQLTemplate.Eof Do
    begin
      if SQLTemplateCLIEN2RENDA.Value > 0 then
        begin
          try
            if (DM.SQLConfigVenda.FieldByName('CFVECRENDCONJNOLIM').Value = 'S') and (SQLTemplateCLIEN2CONJUGERENDA.Value > 0) then
              LimiteInicial := (SQLTemplate.FieldByName('CLIEN2RENDA').Value +
                         SQLTemplate.FieldByName('CLIEN2CONJUGERENDA').Value) *
                        (DM.SQLConfigVenda.FieldByName('CFVEN2PERCLIMCRED').Value/100)
            else
              LimiteInicial := (SQLTemplate.FieldByName('CLIEN2RENDA').Value) *
                        (DM.SQLConfigVenda.FieldByName('CFVEN2PERCLIMCRED').Value/100) ;

            SQLTemplate.Edit;
            SQLTemplateCLIEN2LIMITECRED.Value := LimiteInicial;
            SQLTemplate.Post;
          except
            Application.ProcessMessages;
          end;
        end;
      SQLTemplate.Next;
    end;
end;

procedure TFormCadastroClienteRestaurante.MnContratoCreditoClick(Sender: TObject);
begin
  inherited;
  ppTexto.LoadFromFile('C:\Unit\Gestao\LAY-OUTS\CONTRATOASSOCIADO.rtf') ;
  ReportTextos.Print ;
end;

procedure TFormCadastroClienteRestaurante.DBComboBox1Enter(Sender: TObject);
begin
  inherited;
  SQLCidades.SQL.Text := 'Select Distinct  CLIEA60CIDRES from CLIENTE order by CLIEA60CIDRES';
  SQLCidades.Prepare;
  SQLCidades.Open;
  DBComboBox1.Items.Clear;
  While Not SQLCidades.Eof do
  begin
    DBComboBox1.Items.Add(SQLCidades.Fieldbyname('CLIEA60CIDRES').AsString);
    SQLCidades.Next;
  end;
  SQLCidades.Close;
end;

procedure TFormCadastroClienteRestaurante.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  try
    if (dstemplate.state in dseditmodes) then
      sqltemplateCLIEA35NROCARTCRED.Value :=  IntToStr(StrToInt(sqltemplateCLIEA35NROCARTCRED.Value));
  except
    Application.ProcessMessages;
  end;
end;

procedure TFormCadastroClienteRestaurante.ValorFreteEnter(Sender: TObject);
begin
  inherited;
  ValorFrete.SelectAll;
end;

end.
