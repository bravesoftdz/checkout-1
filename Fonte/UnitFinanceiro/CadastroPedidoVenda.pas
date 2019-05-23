unit CadastroPedidoVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, EDBNum, RxDBComb, ToolEdit, RXDBCtrl, VarSys,
  FormResources, CurrEdit, RxLookup, UCrpe32, ValEdit, Placemnt, ppDB, ppDBPipe, ppDBBDE,
  ppStrtch, ppMemo, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache, ppComm, ppViewr,
  ppRelatv, ppProd, ppReport, ppSubRpt,  RDprint, Serial;

type
  TFormCadastroPedidoVenda = class(TFormCadastroTEMPLATE)
    SQLTemplatePDVDA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplatePDVDICOD: TIntegerField;
    SQLTemplateVENDICOD: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateTRANICOD: TIntegerField;
    SQLTemplatePLRCICOD: TIntegerField;
    SQLTemplatePDVDDEMISSAO: TDateTimeField;
    SQLTemplatePDVDN2VLRFRETE: TBCDField;
    SQLTemplatePDVDA30NROPEDCOMP: TStringField;
    SQLTemplatePDVDA30COMPRADOR: TStringField;
    SQLTemplatePDVDCTIPO: TStringField;
    SQLTemplatePDVDCSTATUS: TStringField;
    SQLTemplatePDVDN2VLRDESC: TBCDField;
    SQLTemplatePDVDN2TOTPROD: TBCDField;
    SQLTemplatePDVDN2TOTPED: TBCDField;
    SQLTemplatePDVDTOBS: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    Label2: TLabel;
    DBEdit2: TDBDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    ComboTipo: TRxDBComboBox;
    Combostatus: TRxDBComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label14: TLabel;
    SQLTemplateVendedorLookUp: TStringField;
    MnCancelarPedidodeVenda: TMenuItem;
    EtiquetasdeCdigodeBarras1: TMenuItem;
    Label24: TLabel;
    SQLTemplatePDVDN2VLRDESCPROM: TBCDField;
    SQLTemplatePDVDINROTALAO: TIntegerField;
    ImprimirPedidodeVenda1: TMenuItem;
    SQLTemplatePDVDCTIPOFRETE: TStringField;
    SQLTemplatePDVDDENTREGA: TDateTimeField;
    Label27: TLabel;
    DateEntrega: TDBDateEdit;
    OrdemdeServio1: TMenuItem;
    SQLTemplateEmpresaLookUp: TStringField;
    MnCalcularFinanceiro: TMenuItem;
    SQLEmpresa: TTable;
    mnGerarOS: TMenuItem;
    SQLTemplatePDVDN2PERCFAT: TBCDField;
    SQLTemplatePDVDN2PERCOMIS: TBCDField;
    ComboVendedor: TRxDBLookupCombo;
    DSSQLVendedor: TDataSource;
    SQLVendedor: TRxQuery;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    SQLVendedorVENDN2COMISV: TBCDField;
    SQLVendedorVENDN2COMISP: TBCDField;
    SQLVendedorVENDCTIPCOMIS: TStringField;
    SQLVendedorVENDCCOMISACRESC: TStringField;
    SQLVendedorPENDENTE: TStringField;
    SQLVendedorREGISTRO: TDateTimeField;
    SQLVendedorVENDA60EMAIL: TStringField;
    SQLVendedorVENDA5FISJURID: TStringField;
    SQLVendedorVENDA14CGC: TStringField;
    SQLVendedorVENDA20IE: TStringField;
    SQLVendedorVENDA11CPF: TStringField;
    SQLVendedorVENDA10RG: TStringField;
    SQLVendedorVENDA60CONTATO: TStringField;
    SQLVendedorVENDA15FONE1: TStringField;
    SQLVendedorVENDA15FONE2: TStringField;
    SQLVendedorVENDA15FAX: TStringField;
    SQLVendedorVENDA60END: TStringField;
    SQLVendedorVENDA60BAI: TStringField;
    SQLVendedorVENDA60CID: TStringField;
    SQLVendedorVENDA2UF: TStringField;
    SQLVendedorVENDA8CEP: TStringField;
    SQLVendedorBANCA5COD: TStringField;
    SQLVendedorVENDA5AGENCIA: TStringField;
    SQLVendedorVENDA10CONTA: TStringField;
    SQLVendedorVENDA60TITULAR: TStringField;
    SQLVendedorVENDDABERTCONTA: TDateTimeField;
    SQLVendedorVENDA254OBS: TStringField;
    SQLVendedorVENDA30CORE: TStringField;
    SQLVendedorVENDA60RAZAOSOCIAL: TStringField;
    SQLVendedorVENDIDIASVALFIDEL: TIntegerField;
    SQLVendedorVENDN2PERCFIDEL: TBCDField;
    SQLVendedorVENDN2PERCIRRF: TBCDField;
    PedidoOramentocomComposioCabecalho: TMenuItem;
    SQLTemplateUSUAA60LOGIN: TStringField;
    PedidoOramentocomComposicaoSemcabealho: TMenuItem;
    DBEdit15: TDBEdit;
    PanelPesquisa: TPanel;
    BTNLocalizar: TSpeedButton;
    ComboCliente: TRxDBLookupCombo;
    DSSQLCliente: TDataSource;
    SQLCliente: TRxQuery;
    SQLTemplateROTAICOD: TIntegerField;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    FormStorage1: TFormStorage;
    SQLRota: TRxQuery;
    SQLRotaROTAICOD: TIntegerField;
    DSSQLRota: TDataSource;
    ComboRota: TRxDBLookupCombo;
    SQLPlanoRecebimento: TRxQuery;
    SQLPlanoRecebimentoPLRCICOD: TIntegerField;
    SQLPlanoRecebimentoPLRCA60DESCR: TStringField;
    SQLPlanoRecebimentoPLRCN2TXJURO: TBCDField;
    SQLPlanoRecebimentoPLRCN2TXMULTA: TBCDField;
    SQLPlanoRecebimentoPLRCN2TXCRED: TBCDField;
    SQLPlanoRecebimentoPLRCN2PERCDESC: TBCDField;
    SQLPlanoRecebimentoPLRCCDFIX: TStringField;
    SQLPlanoRecebimentoPLRCIDFIXNROPARC: TIntegerField;
    SQLPlanoRecebimentoPLRCDFIXDVENC: TIntegerField;
    SQLPlanoRecebimentoPLRCCDFIXENTR: TStringField;
    SQLPlanoRecebimentoPLRCN2PERCENTR: TBCDField;
    SQLPlanoRecebimentoPLRCN2DESC: TBCDField;
    SQLPlanoRecebimentoPLRCCATIVO: TStringField;
    SQLPlanoRecebimentoPENDENTE: TStringField;
    SQLPlanoRecebimentoREGISTRO: TDateTimeField;
    SQLPlanoRecebimentoPLRCCIMPDESCRNF: TStringField;
    SQLPlanoRecebimentoPLRCN5FATOR: TBCDField;
    SQLPlanoRecebimentoPLRCN5FATORPARC: TBCDField;
    SQLPlanoRecebimentoPLRCN2PERCACRESC: TBCDField;
    DSSQLPlanoRecebimento: TDataSource;
    SQLRotaROTAA60NOME: TStringField;
    SQLTemplatePlanoRecebimentoLookUp: TStringField;
    MnPedidoOramentoemSequencia: TMenuItem;
    ppPedidoVendaPadrao: TppReport;
    ppLbEmpresa: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLine2: TppLine;
    ppLabel4: TppLabel;
    ppDBText2: TppDBText;
    ppLabel5: TppLabel;
    ppDBText3: TppDBText;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText5: TppDBText;
    ppLabel8: TppLabel;
    ppDBText6: TppDBText;
    ppLine3: TppLine;
    ppLabel9: TppLabel;
    ppDBText7: TppDBText;
    ppLabel10: TppLabel;
    ppDBText8: TppDBText;
    ppLabel11: TppLabel;
    ppDBText9: TppDBText;
    ppLabel12: TppLabel;
    ppDBText10: TppDBText;
    ppLabel13: TppLabel;
    ppDBText11: TppDBText;
    ppLabel14: TppLabel;
    ppDBText12: TppDBText;
    ppLabel15: TppLabel;
    ppDBText13: TppDBText;
    ppLabel16: TppLabel;
    ppDBText14: TppDBText;
    ppLine4: TppLine;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel22: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLabel23: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppBDEPipe: TppBDEPipeline;
    SQLPedidoVendaItem: TRxQuery;
    DSSQLPedidoVendaItem: TDataSource;
    SQLPedidoVendaItemPDVDA13ID: TStringField;
    SQLPedidoVendaItemPVITIITEM: TIntegerField;
    SQLPedidoVendaItemPRODICOD: TIntegerField;
    SQLPedidoVendaItemPVITN3QUANT: TBCDField;
    SQLPedidoVendaItemPVITN2VLRUNIT: TBCDField;
    SQLPedidoVendaItemDescricaoProduto: TStringField;
    ppHeaderBand1: TppHeaderBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel21: TppLabel;
    ppDBText15: TppDBText;
    ppDBText19: TppDBText;
    ppLabel25: TppLabel;
    ppDBText20: TppDBText;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    ppLabel26: TppLabel;
    ppDBText22: TppDBText;
    ppDBText4: TppDBText;
    SQLProdutos: TRxQuery;
    DSSQLProdutos: TDataSource;
    SQLProdutosPRODICOD: TIntegerField;
    SQLProdutosPRODA60DESCR: TStringField;
    SQLPedidoItens: TRxQuery;
    SQLProdutosPRODN3VLRVENDA: TBCDField;
    ppPedidoKrustallos: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppDBText24: TppDBText;
    ppLabel29: TppLabel;
    ppLine1: TppLine;
    ppLabel30: TppLabel;
    ppDBText25: TppDBText;
    ppLabel31: TppLabel;
    ppDBText26: TppDBText;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppDBText27: TppDBText;
    ppLabel34: TppLabel;
    ppDBText28: TppDBText;
    ppLine5: TppLine;
    LBCli: TppLabel;
    LBEnd: TppLabel;
    LBCidade: TppLabel;
    LBBairro: TppLabel;
    LBCep: TppLabel;
    LBUF: TppLabel;
    lbCNPJ: TppLabel;
    LBFone: TppLabel;
    ppLine6: TppLine;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDetailBand3: TppDetailBand;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    LBObs: TppLabel;
    ppDBText42: TppDBText;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    LBIE: TppLabel;
    ppLabel52: TppLabel;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDetailBand4: TppDetailBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    SQLPedidoVendaItemPVITN2PERCDESC: TBCDField;
    SQLPedidoVendaItemPVITN2VLRDESC: TBCDField;
    SQLPedidoVendaItemREGISTRO: TDateTimeField;
    SQLPedidoVendaItemPENDENTE: TStringField;
    SQLPedidoVendaItemPVITN3QUANTVEND: TBCDField;
    SQLPedidoVendaItemPVITN2PERCCOMIS: TBCDField;
    MnTrrocarVendedoreRotaPadrao: TMenuItem;
    LbVendedorAtual: TLabel;
    LbRotaAtual: TLabel;
    MnTrocarStatusdoPedidoparaFaturado: TMenuItem;
    LbDataEntrega: TLabel;
    RadioConsultaCodigo: TRadioGroup;
    ComboSerie: TRxDBLookupCombo;
    Label8: TLabel;
    SQLSerie: TRxQuery;
    DSSQLSerie: TDataSource;
    SQLSerieSERIA5COD: TStringField;
    SQLTemplatePDVDCIMPORTADO: TStringField;
    SQLTemplateSERIA5COD: TStringField;
    SQLTemplateVEICA13ID: TStringField;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    ComboTransp: TRxDBLookupCombo;
    SQLTransportadora: TRxQuery;
    DSSQLTransportadora: TDataSource;
    SQLTransportadoraTRANICOD: TIntegerField;
    SQLTransportadoraTRANA60RAZAOSOC: TStringField;
    Label16: TLabel;
    ComboVeiculo: TRxDBLookupCombo;
    SQLVeiculo: TRxQuery;
    DSSQLVeiculo: TDataSource;
    SQLVeiculoVEICA13ID: TStringField;
    SQLVeiculoVEICA7PLACA: TStringField;
    SQLVeiculoVEICA60DESCR: TStringField;
    LbTranspAtual: TLabel;
    LbVeiculo: TLabel;
    LbEmissao: TLabel;
    Label17: TLabel;
    ComboTipoFrete: TRxDBComboBox;
    Label20: TLabel;
    DBEdit16: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    dbFrete: TDBEdit;
    TabItens: TTabSheet;
    SQLNumerarioVista: TRxQuery;
    DSSQLNumerarioVista: TDataSource;
    SQLNumerarioPrazo: TRxQuery;
    DSSQLNumerarioPrazo: TDataSource;
    DSSQLHistoricoPadrao: TDataSource;
    SQLHistoricoPadrao: TRxQuery;
    SQLHistoricoPadraoHTPDICOD: TIntegerField;
    SQLHistoricoPadraoHTPDA100HISTORICO: TStringField;
    SQLHistoricoPadraoHTPDCTIPO: TStringField;
    SQLHistoricoPadraoPENDENTE: TStringField;
    SQLHistoricoPadraoREGISTRO: TDateTimeField;
    SQLPlano: TRxQuery;
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
    SQLPlanoPLRCN2PERCACRESC: TBCDField;
    SQLPlanoParcela: TRxQuery;
    SQLContasReceber: TRxQuery;
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
    SQLContasReceberPDVDA13ID: TStringField;
    SQLContasReceberCTRCA254HIST: TStringField;
    SQLContasReceberHTPDICOD: TIntegerField;
    SQLContasReceberPLCTA15CODDEBITO: TStringField;
    SQLContasReceberPortadorLookup: TStringField;
    SQLContasReceberAVALA13ID: TStringField;
    SQLNumerario: TRxQuery;
    SQLPortador: TRxQuery;
    DSSQLContasReceber: TDataSource;
    SQLTipoDoc: TRxQuery;
    DSSQLTipoDoc: TDataSource;
    SQLTipoDocTPDCICOD: TIntegerField;
    SQLTipoDocTPDCA60DESCR: TStringField;
    SQLPortadorPORTICOD: TIntegerField;
    SQLPortadorPORTA60DESCR: TStringField;
    DSSQLPortador: TDataSource;
    SQLProdutosPRODN3VLRVENDAPROM: TBCDField;
    SQLProdutosPRODDINIPROMO: TDateTimeField;
    SQLProdutosPRODDFIMPROMO: TDateTimeField;
    TabFinanceiro: TTabSheet;
    Panel4: TPanel;
    Label13: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    ComboProdutos: TRxDBLookupCombo;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    BTItemNovo: TBitBtn;
    BtItemGravar: TBitBtn;
    BtItemExcluir: TBitBtn;
    DBGridItens: TDBGrid;
    Panel7: TPanel;
    Button4: TRxSpeedButton;
    GroupCliente: TGroupBox;
    BtnCliente: TSpeedButton;
    DBEdit6: TDBEdit;
    ComboClientePedido: TRxDBLookupCombo;
    Panel8: TPanel;
    Panel9: TPanel;
    DSSQLParcelasPrazoVendaTemp: TDataSource;
    SQLParcelasPrazoVendaTemp: TRxQuery;
    SQLParcelasPrazoVendaTempTERMICOD: TIntegerField;
    SQLParcelasPrazoVendaTempDATAVENCTO: TDateTimeField;
    SQLParcelasPrazoVendaTempNROPARCELA: TIntegerField;
    SQLParcelasPrazoVendaTempVALORVENCTO: TBCDField;
    SQLParcelasPrazoVendaTempNUMEICOD: TIntegerField;
    SQLParcelasPrazoVendaTempNumerarioLookup: TStringField;
    SQLParcelasPrazoVendaTempTipoPadrao: TStringField;
    SQLContasReceberCTRCDESTORNO: TDateTimeField;
    SQLContasReceberFRETA13ID: TStringField;
    SQLContasReceberCOBRA13ID: TStringField;
    SQLContasReceberCTRCDENVIOCOBRANCA: TDateTimeField;
    SQLContasReceberDUPLA13ID: TStringField;
    SQLContasReceberCTRCCTIPOREGISTRO: TStringField;
    SQLContasReceberCONTA13ID: TStringField;
    SQLContasReceberCTRCA13CTRCAIDCHQ: TStringField;
    SQLContasReceberCTRCCEMITIDOBOLETO: TStringField;
    Panel6: TPanel;
    DBGrid2: TDBGrid;
    Panel10: TPanel;
    Panel11: TPanel;
    Label21: TLabel;
    ComboPlanoRectoAtual: TRxDBLookupCombo;
    Label12: TLabel;
    ComboPlanoRecto: TRxDBLookupCombo;
    Label28: TLabel;
    ComboNumerarioVista: TRxDBLookupCombo;
    Label26: TLabel;
    ComboNumerarioPrazo: TRxDBLookupCombo;
    Label22: TLabel;
    ComboTipoDoc: TRxDBLookupCombo;
    Label29: TLabel;
    ComboPortador: TRxDBLookupCombo;
    Label23: TLabel;
    ComboHistoricoPadrao: TRxDBLookupCombo;
    MemoHistorico: TMemo;
    BTNRecalcularFinanceiro: TSpeedButton;
    Label25: TLabel;
    ComboObsNota: TRxDBLookupCombo;
    DBMemo1: TDBMemo;
    Label30: TLabel;
    DBMemo2: TDBMemo;
    DSSQLObsNota: TDataSource;
    SQLObsNota: TRxQuery;
    SQLObsNotaOBSNICOD: TIntegerField;
    SQLTemplateNOFIAOBSCORPONF: TStringField;
    DSSQLCFOP: TDataSource;
    SQLCFOP: TRxQuery;
    SQLCFOPCFOPA5COD: TStringField;
    SQLCFOPCFOPA60DESCR: TStringField;
    SQLCFOPCFOPCVENDA: TStringField;
    SQLCFOPPENDENTE: TStringField;
    SQLCFOPREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    ComboOperacaoEstoque: TRxDBLookupCombo;
    SQLOperacaoEstoque: TRxQuery;
    DSSQLOperacaoEstoque: TDataSource;
    SQLOperacaoEstoqueOPESICOD: TIntegerField;
    SQLOperacaoEstoqueOPESA60DESCR: TStringField;
    SQLOperacaoEstoqueSERIA5COD: TStringField;
    SQLOperacaoEstoqueCFOPA5CODDENTROUF: TStringField;
    SQLOperacaoEstoqueCFOPA5CODFORAUF: TStringField;
    SQLOperacaoEstoqueOPESCENTRADASAIDA: TStringField;
    SQLOperacaoEstoqueOPESCORIGEMDESTINO: TStringField;
    SQLOperacaoEstoquePENDENTE: TStringField;
    SQLOperacaoEstoqueREGISTRO: TDateTimeField;
    SQLOperacaoEstoqueOPESA18CAMPOIMP: TStringField;
    SQLOperacaoEstoqueOPESCCALCIPI: TStringField;
    SQLOperacaoEstoqueOPESCCALCICMS: TStringField;
    SQLOperacaoEstoquePDVDA13ID: TStringField;
    SQLOperacaoEstoqueOPESCGERAFINANCEIRO: TStringField;
    SQLOperacaoEstoqueACUMICOD: TIntegerField;
    SQLOperacaoEstoquePLCTA15CODCRED: TStringField;
    SQLOperacaoEstoquePLCTA15CODDEB: TStringField;
    BtnTransportadora: TSpeedButton;
    LBPlaca: TLabel;
    DBEditPlaca: TDBEdit;
    SQLTemplatePDVD8PLACAVEIC: TStringField;
    SQLTemplatePDVDA15NROPEDPALM: TStringField;
    SQLTemplateOPESICOD: TIntegerField;
    SQLVeiculoVEICA3OMOTORISTA: TStringField;
    DBEdit8: TDBEdit;
    Label15: TLabel;
    ppDBText23: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBText21: TppDBText;
    ppLabel20: TppLabel;
    ppLabel1: TppLabel;
    LBUnidade: TppLabel;
    BtnExcluirParcAtuais: TSpeedButton;
    LSaldo: TLabel;
    SaldoAtual: TLabel;
    SQLGeral: TRxQuery;
    MNGerarPedidoParcial: TMenuItem;
    MnIgualarSaldoaEntregarcomoSaldoPedido: TMenuItem;
    DBEdit13: TDBEdit;
    Label31: TLabel;
    SQLTemplatePDVDN2VLROUTRASDESP: TBCDField;
    MnVisualizarPedidoOrcamentoAtual: TMenuItem;
    SQLPedidoVendaItemPVITN3TOTVENDITEM: TBCDField;
    SQLTotal: TRxQuery;
    GroupConsultaSituacao: TGroupBox;
    RdAbertos: TRadioButton;
    RdFaturado: TRadioButton;
    RdCanc: TRadioButton;
    Label32: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    SQLTemplateClienteLookup: TStringField;
    PipeItens: TppBDEPipeline;
    SQLClienteCLIEA13ID: TStringField;
    MnTrocarStatusdoPedidoparaAberto: TMenuItem;
    SQLProdutosPRODN3VLRVENDA2: TBCDField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    ppSummaryBand2: TppSummaryBand;
    SQLClienteCLIECTPPRCVENDA: TStringField;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    RDprint: TRDprint;
    PedidoEspecialPic1: TMenuItem;
    SQLObsNotaNOFIA50DESC: TStringField;
    SQLObsNotaOBSNA255DESC: TMemoField;
    EditCdProduto: TEdit;
    AcessaProduto: TSpeedButton;
    Label33: TLabel;
    DBEdit14: TDBEdit;
    SQLPedidoVendaItemPDVDA255OBS1: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure BtnClienteClick(Sender: TObject);
    procedure BtnVendedorClick(Sender: TObject);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure MnCancelarPedidodeVendaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EtiquetasdeCdigodeBarras1Click(Sender: TObject);
    procedure SQLTemplatePDVDN2VLRDESCPROMChange(Sender: TField);
    procedure SQLContasReceberBeforePost(DataSet: TDataSet);
    procedure ImprimirPedidodeVenda1Click(Sender: TObject);
    procedure OrdemdeServio1Click(Sender: TObject);
    procedure BtnEmpresaClick(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure GeraArquivoExternoParaImpOrcamento(IDOrcamento, CampoValorParcela, CampoDataVectoParcela : string ; SQLOrcamento, SQLOrcamentoItem, SQLParcelasVista, SQLParcelasPrazo : TRxQuery);
    procedure SQLContasReceberPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure mnGerarOSClick(Sender: TObject);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTNLocalizarClick(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure MnPedidoOramentoemSequenciaClick(Sender: TObject);
    procedure ppPedidoVendaPadraoPreviewFormCreate(Sender: TObject);
    procedure BTItemNovoClick(Sender: TObject);
    procedure BtItemGravarClick(Sender: TObject);
    procedure SQLPedidoVendaItemNewRecord(DataSet: TDataSet);
    procedure DBEdit11Exit(Sender: TObject);
    procedure BtItemExcluirClick(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure ppPedidoKrustallosPreviewFormCreate(Sender: TObject);
    procedure MnTrrocarVendedoreRotaPadraoClick(Sender: TObject);
    procedure MnTrocarStatusdoPedidoparaFaturadoClick(Sender: TObject);
    procedure ComboNumerarioVistaChange(Sender: TObject);
    procedure ComboNumerarioPrazoChange(Sender: TObject);
    procedure ComboHistoricoPadraoExit(Sender: TObject);
    procedure ComboHistoricoPadraoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BTNRecalcularFinanceiroClick(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ComboObsNotaExit(Sender: TObject);
    procedure DBMemo2Exit(Sender: TObject);
    procedure BtnTransportadoraClick(Sender: TObject);
    procedure ComboVeiculoExit(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure BtnExcluirParcAtuaisClick(Sender: TObject);
    procedure SQLPedidoVendaItemPRODICODChange(Sender: TField);
    procedure ComboPlanoRectoExit(Sender: TObject);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure MNGerarPedidoParcialClick(Sender: TObject);
    procedure SQLContasReceberNewRecord(DataSet: TDataSet);
    procedure MnIgualarSaldoaEntregarcomoSaldoPedidoClick(Sender: TObject);
    procedure MnVisualizarPedidoOrcamentoAtualClick(Sender: TObject);
    procedure SQLPedidoVendaItemPVITN2VLRUNITChange(Sender: TField);
    procedure SQLPedidoVendaItemPVITN3QUANTChange(Sender: TField);
    procedure ppHeaderBand2BeforePrint(Sender: TObject);
    procedure SQLTemplateBeforeOpen(DataSet: TDataSet);
    procedure MnTrocarStatusdoPedidoparaAbertoClick(Sender: TObject);
    procedure EditCdProdutoExit(Sender: TObject);
    procedure AcessaProdutoClick(Sender: TObject);
  private
    { Private declarations }
    StatusNovo, StatusAnterior:String;
    IniciouVenda, GerandoPedidoParcial, PlanoDoCliente, CancelandoPedido,TrocaEntrada, PermiteExcluirSemPerguntar :Boolean;
    ValorEntrada:Double;
    ContasReceberID:String;
    BkpEmpresaCorrente : Integer;
    procedure CalculaTotal ;
  public
    { Public declarations }
  end;

var
  FormCadastroPedidoVenda: TFormCadastroPedidoVenda;

implementation

uses DataModulo, CadastroCliente, CadastroVendedor, CadastroTransportadora,
  CadastroPedidoVendaItem, TelaEmissaoEtiquetasCodigoBarras, UnitLibrary,
  CadastroPedidoVendaFinanceiro, TelaConsultaPlanoRecebimento, WaitWindow,
  TelaConsultaEmpresa, TelaDadosOSPedidoVenda, ppForms, TelaConfigPedidos,
  DataModuloTemplate, TelaAssistenteLancamentoContasReceber,
  TelaGeracaoPedidoParcial, SearchLibrary, CadastroProdutos;


{$R *.dfm}

procedure TFormCadastroPedidoVenda.FormCreate(Sender: TObject);
begin
  inherited;
  PermiteExcluirSemPerguntar := False;
  TABELA:='PEDIDOVENDA';
  if FileExists('ORDEMCONSULTAPEDIDO.INI') then
    SQLTemplate.SQL.Add('ORDER BY ' + SqlTemplate.Fields[LocateByDisplayLabel(SqlTemplate,ComboOrder.Text)].FieldName + ' DESC');
  if not SQLVendedor.Active        then SQLVendedor.Open;
  if not SQLCliente.Active         then SQLCliente.Open;
  if not SQLTransportadora.Active  then SQLTransportadora.Open;
  if not SQLVeiculo.Active         then SQLVeiculo.Open;
  if not SQLSerie.Active           then SQLSerie.Open;
  if not SQLHistoricoPadrao.Active then SQLHistoricoPadrao.Open;
  if not SQLTipoDoc.Active         then SQLTipoDoc.Open;
  if not SQLPortador.Active        then SQLPortador.Open;
  if not SQLNumerarioVista.Active  then SQLNumerarioVista.Open;
  if not SQLNumerarioPrazo.Active  then SQLNumerarioPrazo.Open;
  if not SQLObsNota.Active         then SQLObsNota.Open;
  if not SQLOperacaoEstoque.Active then SQLOperacaoEstoque.Open;
  if not SQLCFOP.Active            then SQLCFOP.Open;
  if not SQLRota.Active            then SQLRota.Open;

  // Dados Padrao Financeiro da Nota
  ComboNumerarioVista.Value := dm.SQLTerminalAtivoTERMINUMEVISTA.AsString;
  ComboNumerarioPrazo.Value := dm.SQLTerminalAtivoTERMINUMEPRAZO.AsString;
  ComboPortador.Value       := dm.SQLConfigVendaPORTICOD.AsString;
  ComboTipoDoc.Value        := dm.SQLConfigVendaTPDCICOD.AsString;
end;

procedure TFormCadastroPedidoVenda.BtnClienteClick(Sender: TObject);
begin
  inherited;
  FieldLookup   := DsTemplate.DataSet.FieldByName('CLIEA13ID');
  FieldOrigem   := 'CLIEA13ID';
  DataSetLookup := SQLCliente;
  CriaFormulario(TFormCadastroCliente,'FormCadastroCliente',False,True,False,'');
end;

procedure TFormCadastroPedidoVenda.BtnVendedorClick(Sender: TObject);
begin
  inherited;
  FieldLookup   := DsTemplate.DataSet.FieldByName('VENDICOD');
  FieldOrigem   := 'VENDICOD';
  DataSetLookup := SQLVendedor;
  CriaFormulario(TFormCadastroVendedor,'FormCadastroVendedor',False,True,False,'');
end;

procedure TFormCadastroPedidoVenda.DBEdit6KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    BtnCliente.Click;
end;

procedure TFormCadastroPedidoVenda.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  IniciouVenda := True;

  SQLTemplateUSUAA60LOGIN.AsString    := UsuarioAtualNome;
  SQLTemplateEMPRICOD.Value           := EmpresaCorrente;
  StatusAnterior                      := '';
  SQLTemplatePDVDCTIPO.Value          := 'P';
  SQLTemplatePDVDCSTATUS.Value        := 'A';
  SQLTemplatePDVDCIMPORTADO.Value     := 'N';
  if DM.SQLConfigVendaOPESICODNF.AsVariant <> Null then
    begin
      DataSet.FindField('OPESICOD').Value   := DM.SQLConfigVendaOPESICODNF.Value;
      DataSet.FindField('SERIA5COD').Value  := SQLLocate('OPERACAOESTOQUE','OPESICOD','SERIA5COD',DM.SQLConfigVendaOPESICODNF.AsString);
    end;
  if dm.DataEmissaoPedidos > 0 then
    SQLTemplatePDVDDEMISSAO.AsString  := FormatDateTime('dd/mm/yyyy',dm.DataEmissaoPedidos)
  else
    SQLTemplatePDVDDEMISSAO.AsString  := FormatDateTime('dd/mm/yyyy',Now);
  if dm.DataEntregaPedidos > 0 then
    SQLTemplatePDVDDENTREGA.AsString  := FormatDateTime('dd/mm/yyyy',dm.DataEntregaPedidos)
  else
    SQLTemplatePDVDDENTREGA.AsString  := FormatDateTime('dd/mm/yyyy',Now);
  SQLTemplatePDVDN2TOTPROD.Value    := 0;
  SQLTemplatePDVDN2TOTPED.Value     := 0;
  SQLTemplatePDVDN2VLRDESC.Value    := 0;
  SQLTemplatePDVDN2VLRFRETE.Value   := 0;
  if FileExists('rede.txt') then
    SQLTemplatePDVDCTIPOFRETE.Value   := 'F'
  else
    SQLTemplatePDVDCTIPOFRETE.Value   := 'C';
  SQLTemplatePDVDN2PERCFAT.Value    := 0;
  SQLTemplatePDVDN2PERCOMIS.Value   := 0;
  if DM.SQLConfigVendaCFVETOBSPADRAOPED.AsString <> '' then
    SQLTemplatePDVDTOBS.AsString := DM.SQLConfigVendaCFVETOBSPADRAOPED.AsString;
  if DM.SQLTerminalAtivoVENDICOD.AsInteger > 0 then
    SQLTemplateVENDICOD.AsInteger := DM.SQLTerminalAtivoVENDICOD.AsInteger;
  if dm.RotaAtualPedidos > 0 then
    SQLTemplateRotaIcod.Value := dm.RotaAtualPedidos;
  if dm.VendedorAtualPedidos > 0 then
    SQLTemplateVENDICOD.Value := dm.VendedorAtualPedidos;
  if dm.TranspAtualPedidos > 0 then
    SQLTemplateTRANICOD.Value := dm.TranspAtualPedidos;
  if dm.VeiculoAtualPedidos <> '' then
    SQLTemplateVEICA13ID.Value := dm.VeiculoAtualPedidos;
  if dm.SerieAtualPedidos <> '' then
    SQLTemplateSERIA5COD.Value := dm.SerieAtualPedidos
  else
    SQLTemplateSERIA5COD.Value := SQLSerieSERIA5COD.Value;
  DBEdit6.SetFocus;
end;

procedure TFormCadastroPedidoVenda.SQLTemplateBeforeEdit(
  DataSet: TDataSet);
begin
{  if (SQLTemplate.FindField('PDVDCSTATUS').AsString <> 'A') and (not CancelandoPedido) and (not dm.TrocarStatusPedidoParaFaturado) then
    begin
      Informa('Este pedido de venda não está aberto, portanto não pode ser alterado!');
      Abort;
      Exit;
    end;}
  StatusAnterior := SQLTemplate.FindField('PDVDCSTATUS').AsString;
  inherited;
end;

procedure TFormCadastroPedidoVenda.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
  If SQLTemplate.FindField('PDVDCSTATUS').asString<>'A' Then
    Begin
      ShowMessage('Pedido de Venda não está aberto, portanto não pode ser excluído!');
      Abort;
    End;
  inherited;
end;

procedure TFormCadastroPedidoVenda.MnCancelarPedidodeVendaClick(
  Sender: TObject);
begin
  inherited;
  if SQLTemplate.FindField('PDVDCSTATUS').asString = 'C' then
    begin
      Informa('Este Pedido/Orçamento Já Foi Cancelado!');
      Abort;
      Exit;
    end;
  if SQLTemplate.FindField('PDVDCSTATUS').asString = 'F' then
    begin
      Informa('Este Pedido/Orçamento Já Foi Faturado!');
      Abort;
      Exit;
    end;
  If Not SQLTemplate.IsEmpty And (SQLTemplate.FindField('PDVDCSTATUS').asString = 'E') and (Application.MessageBox('Deseja realmente cancelar o Pedido?','Atenção',MB_YesNo)=IdYes) Then
    Begin
      CancelandoPedido := True;
      SQLTemplate.Edit;
      SQLTemplate.FindField('PDVDCSTATUS').asString := 'C';
      SQLTemplate.Post;
      CancelandoPedido := False;
    End;
end;

procedure TFormCadastroPedidoVenda.Button1Click(Sender: TObject);
begin
  inherited;
  If (Sender as TRxSpeedButton).Name='Button3' Then
    begin
      PagePrincipal.ActivePage := TabItens;
      SQLPedidoVendaItem.Close;
      SQLPedidoVendaItem.ParamByName('PDVDA13ID').AsString := SQLTemplatePDVDA13ID.AsString;
      SQLPedidoVendaItem.Open;
      BTItemNovo.SetFocus;
    end;
  If (Sender as TRxSpeedButton).Name='Button4' Then
    begin
      PagePrincipal.ActivePage := TabFinanceiro;
      SQLContasReceber.Close;
      SQLContasReceber.ParamByName('PDVDA13ID').AsString := SQLTemplatePDVDA13ID.AsString;
      SQLContasReceber.Open;
      ComboPlanoRecto.Value := '' ;
      ComboPlanoRecto.SetFocus;
    end;
end;

procedure TFormCadastroPedidoVenda.EtiquetasdeCdigodeBarras1Click(
  Sender: TObject);
begin
  inherited;
  EtiquetaPedidoVenda := SQLTemplate.FindField('PDVDA13ID').asString;
  CriaFormulario(TFormTelaEmissaoEtiquetasCodigoBarras,'FormTelaEmissaoEtiquetasCodigoBarras',False,False,True,'');
end;

procedure TFormCadastroPedidoVenda.SQLTemplatePDVDN2VLRDESCPROMChange(
  Sender: TField);
begin
  inherited;
  SQLTemplatePDVDN2TOTPED.asFloat := SQLTemplatePDVDN2TOTPROD.asFloat - SQLTemplatePDVDN2VLRDESCPROM.asFloat + SQLTemplatePDVDN2VLRFRETE.asFloat + SQLTemplatePDVDN2VLROUTRASDESP.asFloat;
end;

procedure TFormCadastroPedidoVenda.SQLContasReceberBeforePost(
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
end;

procedure TFormCadastroPedidoVenda.ImprimirPedidodeVenda1Click(
  Sender: TObject);
begin
  inherited;
  if (DM.SQLTerminalAtivoTERMCTIPO.AsString <> '') then
    begin
      SQLPedidoItens.Close;
      SQLPedidoItens.SQL.Text := 'Select * From PEDIDOVENDAITEM Where PDVDA13ID = "' + SQLTemplate.FieldByName('PDVDA13ID').AsString + '"' ;
      SQLPedidoItens.Open;
      if DM.SQLTerminalAtivoTERMACTIPOIMPPEDORC.AsString <> '' then
        Case DM.SQLTerminalAtivoTERMACTIPOIMPPEDORC.AsString[1] of
          '0' : begin
                  // Prepara Impressão de Pedido/Orçamento
                  // Padrao 80 Colunas bobina;
                  Informa('A opção de impressão para bobina 80 colunas, não está disponível no módulo Faturamento!');
                  Exit;
                end;
          '1' : begin
                  // Padrão Matricial/Deskjet/Laser
                  if DM.SQLConfigGeralCFGEA255PATHREPORT.AsString <> '' then
                    begin
                      DM.Report.DiscardSavedData    := True;
                      DM.Report.ReportName          := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Pedido Orcamento.rpt';
                      DM.Report.ReportTitle         := 'Orçamento';
                      DM.Report.WindowStyle.Title   := 'Orçamento';
                      if Dm.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString <> '' then
                        begin
                          DM.Report.Output          := toPrinter;
                          DM.Report.Printer.Name    := Dm.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString;
                        end
                      else
                        DM.Report.Output            := toWindow;

                      DM.Report.Execute;
                    end
                  else
                    Informa('O pedido/orçamento padrão não foi encontrado, verifique suas configurações!');
                end;
          '2' : begin
                  // Personalizado
                  if FileExists(DM.SQLTerminalAtivoTERMTPATHPEDORC.AsString) then
                    begin
                      DM.Report.DiscardSavedData    := True;
                      DM.Report.ReportName          := DM.SQLTerminalAtivoTERMTPATHPEDORC.Value;
                      DM.Report.ReportTitle         := 'Orçamento';
                      DM.Report.WindowStyle.Title   := 'Orçamento';
                      if Dm.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString <> '' then
                        begin
                          DM.Report.Output          := toPrinter;
                          DM.Report.Printer.Name    := Dm.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString;
                        end
                      else
                        DM.Report.Output            := toWindow;

                      DM.Report.Execute;
                    end
                  else
                    Informa('O arquivo para impressão de pedido/orçamento personalizado não foi encontrado, verifique suas consigurações!');
                end;
          '3' : begin
                  // Arquivo Externo .exe
                  if FileExists('PedidoVenda.exe') then
                    begin
                      WinExec(PChar('PedidoVenda.exe '+ SQLTemplatePDVDA13ID.asString),SW_SHOW);
                    end
                  else
                    begin
                      Informa('Você configurou o sistema para imprimir pedido/orçamento com arquivo externo, mas o arquivo não foi encontrado favor verificar!');
                    end;
                end;
        end
      else
        begin
          if DM.SQLConfigGeralCFGEA255PATHREPORT.AsString <> '' then
            begin
              DM.Report.DiscardSavedData    := True;
              DM.Report.ReportName          := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Pedido Orcamento.rpt';
              DM.Report.ReportTitle         := 'Orçamento';
              DM.Report.WindowStyle.Title   := 'Orçamento';
              if Dm.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString <> '' then
                begin
                  DM.Report.Output          := toPrinter;
                  DM.Report.Printer.Name    := Dm.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString;
                end
              else
                DM.Report.Output            := toWindow;

              DM.Report.Execute;
            end
          else
            Informa('O pedido/orçamento padrão não foi encontrado, verifique suas configurações!');
        end;
    end
  else
    begin
      Informa('Este orçamento não será impresso porque as configurações estão incompletas!');
    end;
end;

procedure TFormCadastroPedidoVenda.OrdemdeServio1Click(Sender: TObject);
begin
  inherited;
  if (DM.SQLTerminalAtivoTERMCTIPO.AsString <> '') then
    begin
      SQLPedidoItens.Close;
      SQLPedidoItens.SQL.Text := 'Select * From PEDIDOVENDAITEM Where PDVDA13ID = "' + SQLTemplate.FieldByName('PDVDA13ID').AsString + '"' ;
      SQLPedidoItens.Open;
      Case DM.SQLTerminalAtivoTERMACTIPOIMPPEDORC.AsString[1] of
        '0' : begin
                // Prepara Impressão de Pedido/Orçamento
                // Padrao 80 Colunas bobina;
                Informa('A opção de impressão para bobina 80 colunas, não está disponível no módulo Faturamento!');
                Exit;
              end;
        '1' : begin
                // Padrão Matricial/Deskjet/Laser
                if DM.SQLConfigGeralCFGEA255PATHREPORT.AsString <> '' then
                  begin
                    DM.Report.DiscardSavedData    := True;
                    DM.Report.ReportName          := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Pedido Orcamento.rpt';
                    DM.Report.ReportTitle         := 'Orçamento';
                    DM.Report.WindowStyle.Title   := 'Orçamento';
                    if Dm.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString <> '' then
                      begin
                        DM.Report.Output          := toPrinter;
                        DM.Report.Printer.Name    := Dm.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString;
                      end
                    else
                      DM.Report.Output            := toWindow;

                    DM.Report.Execute;
                  end
                else
                  Informa('O pedido/orçamento padrão não foi encontrado, verifique suas configurações!');
              end;
        '2' : begin
                // Personalizado
                if FileExists(DM.SQLTerminalAtivoTERMTPATHPEDORC.AsString) then
                  begin
                    DM.Report.ReportName          := DM.SQLTerminalAtivoTERMTPATHPEDORC.Value;
                    DM.Report.ReportTitle         := 'Orçamento';
                    DM.Report.WindowStyle.Title   := 'Orçamento';
                    if Dm.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString <> '' then
                      begin
                        DM.Report.Output          := toPrinter;
                        DM.Report.Printer.Name    := Dm.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString;
                      end
                    else
                      DM.Report.Output            := toWindow;

                    DM.Report.Execute;
                  end
                else
                  Informa('O arquivo para impressão de pedido/orçamento personalizado não foi encontrado, verifique suas consigurações!');
              end;
        '3' : begin
                // Arquivo Externo .exe
                if FileExists('PedidoVenda.exe') then
                  begin
                    WinExec(PChar(DM.PathAplicacao + '\PedidoVenda.exe '+SQLTemplatePDVDA13ID.asString+' OS'),SW_SHOW);
                  end
                else
                  begin
                    Informa('Você configurou o sistema para imprimir pedido/orçamento com arquivo externo, mas o arquivo não foi encontrado favor verificar!');
                  end;
              end;
      end;
    end
  else
    begin
      Informa('Este orçamento não será impresso porque as configurações estão incompletas!');
    end;
end;

procedure TFormCadastroPedidoVenda.BtnEmpresaClick(Sender: TObject);
begin
  inherited;
  FieldLookUp := SQLTemplate.FindField('EMPRICOD');
  FieldOrigem := 'EMPRICOD';
  CriaFormulario(TFormTelaConsultaEmpresa,'FormTelaConsultaEmpresa',False,True,True,'');
end;

procedure TFormCadastroPedidoVenda.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if not (SQLTemplate.State in dsEditModes) then
    if (PagePrincipal.ActivePage = TabItens) then
      begin
        SQLPedidoVendaItem.Close;
        SQLPedidoVendaItem.ParamByName('PDVDA13ID').AsString := SQLTemplatePDVDA13ID.AsString;
        SQLPedidoVendaItem.open;
      end;
end;

procedure TFormCadastroPedidoVenda.GeraArquivoExternoParaImpOrcamento(IDOrcamento, CampoValorParcela, CampoDataVectoParcela : string ; SQLOrcamento, SQLOrcamentoItem, SQLParcelasVista, SQLParcelasPrazo : TRxQuery);
begin
  if not SQLOrcamento.Active then SQLOrcamento.Open;
{  SQLOrcamento.Close ;
  SQLOrcamento.MacroByName('MFiltro').Value := 'PDVDA13ID = "' + IDOrcamento  + '"';
  SQLOrcamento.Open ;}
  if SQLOrcamento.IsEmpty then
    begin
      Informa('Problemas ao imprimir Orçamento!');
      Exit;
    end;
  //GRAVAR CABECALHO TICKET
  DM.TblPedidoCab.Close;
  try
    DM.TblPedidoCab.DeleteTable;
    DM.TblPedidoCab.CreateTable;
  except
    DM.TblPedidoCab.CreateTable;
  end;
  DM.TblPedidoCab.AddIndex('Primario','PedICod',[ixPrimary]);
  DM.TblPedidoCab.Open;

  DM.SQLEmpresa.Locate('EMPRICOD',EmpresaPadrao,[]);

  DM.TblPedidoCab.Append;
  If SQLOrcamento.FieldByName('PDVDCTIPO').asString = 'P' Then
    DM.TblPedidoCabPEDIDOORCAMENTO.AsString         := 'PEDIDO NRO:'
  Else
    DM.TblPedidoCabPEDIDOORCAMENTO.AsString         := 'ORÇAMENTO NRO:';
  DM.TblPedidoCabPedICod.AsString                := SQLOrcamento.FieldByName('PDVDA13ID').AsString;
  DM.TblPedidoCabEmitente_Nome.asString          := DM.SQLEmpresaEMPRA60NOMEFANT.AsString;
  DM.TblPedidoCabEmitente_Ender.asString         := DM.SQLEmpresaEMPRA60END.asString;
  DM.TblPedidoCabEmitente_Bairro.asString        := DM.SQLEmpresaEMPRA60BAI.asString;
  DM.TblPedidoCabEmitente_Cidade.asString        := DM.SQLEmpresaEMPRA60CID.asString;
  DM.TblPedidoCabEmitente_UF.asString            := DM.SQLEmpresaEMPRA2UF.asString;
  DM.TblPedidoCabEmitente_CGC.asString           := DM.SQLEmpresaEMPRA14CGC.asString;
  DM.TblPedidoCabEmitente_IE.asString            := DM.SQLEmpresaEMPRA20IE.asString;
  DM.TblPedidoCabEmitente_Fone.asString          := Dm.SQLEmpresaEMPRA20FONE.asString;
  DM.TblPedidoCabDtEmissao.Value                 := SQLOrcamento.FieldByName('PDVDDEMISSAO').Value;
  if DM.ProcuraRegistro('CLIENTE',['CLIEA13ID'],[SQLOrcamento.FieldByName('CLIEA13ID').Value],1) then
    begin
      DM.TblPedidoCabDestinatario_Nome.asString      := DM.SQLTemplate.FieldByName('CLIEA60RAZAOSOC').AsString;
      DM.TblPedidoCabDestinatario_Endereco.asString  := DM.SQLTemplate.FieldByName('CLIEA60ENDRES').AsString;
      DM.TblPedidoCabDestinatario_Bairro.asString    := DM.SQLTemplate.FieldByName('CLIEA60BAIRES').AsString;
      DM.TblPedidoCabDestinatario_Cep.asString       := DM.SQLTemplate.FieldByName('CLIEA8CEPRES').AsString;
      DM.TblPedidoCabDestinatario_Cidade.asString    := DM.SQLTemplate.FieldByName('CLIEA60CIDRES').AsString;
      DM.TblPedidoCabDestinatario_UF.asString        := DM.SQLTemplate.FieldByName('CLIEA2UFRES').AsString;
      DM.TblPedidoCabDestinatario_CpfCgc.asString    := DM.SQLTemplate.FieldByName('CLIEA11CPF').AsString;
      DM.TblPedidoCabDestinatario_IE.asString        := DM.SQLTemplate.FieldByName('CLIEA20IE').AsString;
      DM.TblPedidoCabDestinatario_Fone.asString      := DM.SQLTemplate.FieldByName('CLIEA15FONE1').AsString;
      DM.TblPedidoCabDestinatario_Fone2.AsString     := DM.SQLTemplate.FieldByName('CLIEA15FONE2').AsString;
      DM.TblPedidoCabDestinatario_Fax.asString       := DM.SQLTemplate.FieldByName('CLIEA15FAX').AsString;
    end;
    DM.TblPedidoCabDtaEntrega.asVariant            := SQLTemplatePDVDDENTREGA.asVariant;
    DM.TblPedidoCabDtEmissao.AsDateTime            := SQLTemplatePDVDDEMISSAO.AsDateTime;
    DM.TblPedidoCabComprador.asString              := SQLTemplatePDVDA30COMPRADOR.asString;
    DM.TblPedidoCabOrdemCompra.asString            := SQLTemplatePDVDA30NROPEDCOMP.asString;
    DM.TblPedidoCabPlano.asString                  := SQLTemplatePLRCICOD.AsString + ' - ' +
                                                      SQLTemplatePlanoRecebimentoLookUp.asString;
    If SQLTemplatePDVDCTIPOFRETE.asString='C' Then
      DM.TblPedidoCabTipoFrete.asString   := '1'
    Else
      DM.TblPedidoCabTipoFrete.asString   := '2';
  DM.TblPedidoCabValorFrete.Value                := SQLOrcamento.FieldByName('PDVDN2VLRFRETE').AsFloat;
  DM.TblPedidoCabTotalDesconto.Value             := SQLOrcamento.FieldByName('PDVDN2VLRDESC').AsFloat + SQLOrcamento.FieldByName('PDVDN2VLRDESCPROM').AsFloat;
  DM.TblPedidoCabTotal.Value                     := SQLOrcamento.FieldByName('PDVDN2TOTPROD').AsFloat;
  DM.TblPedidoCabObservacoes.asString            := SQLOrcamento.FieldByName('PDVDTOBS').asString;
  DM.TblPedidoCabVendedor.asString               := SQLOrcamento.FieldByName('VENDICOD').AsString + ' - '+
                                                    SQLLocate('VENDEDOR', 'VENDICOD', 'VENDA60NOME', SQLOrcamento.FieldByName('VENDICOD').AsString);
  DM.TblPedidoCabRota.asString                   := SQLOrcamento.FieldByName('ROTAICOD').AsString + ' - '+
                                                    SQLLocate('ROTA', 'ROTAICOD', 'ROTAA60NOME', SQLOrcamento.FieldByName('ROTAICOD').AsString);
  //  DM.TblPedidoCabEmail.asString                  := AnsiLowerCase(SQLTemplateVendedorEmailLookUp.asString);
  DM.TblPedidoCabEmitente_Email.AsString         := LowerCase(DM.SQLEmpresaEMPRA60EMAIL.AsString);
  DM.TblPedidoCabEmitente_URL.AsString           := LowerCase(DM.SQLEmpresaEMPRA60URL.AsString);
  DM.TblPedidoCabEmitenteLogo.AsVariant          := DM.SQLEmpresaEMPRBLOGOTIPO.AsVariant;

  DM.TblPedidoCab.Post;
  DM.TblPedidoCab.Close;

  If DM.TblPedidoItens.Exists Then
    DM.TblPedidoItens.DeleteTable;
  DM.TblPedidoItens.CreateTable;
  DM.TblPedidoItens.Open;

  if not SQLOrcamentoItem.Active then SQLOrcamentoItem.Open;
  SQLOrcamentoItem.First;
  // Itens
  While Not SQLOrcamentoItem.Eof Do
    Begin
      DM.TblPedidoItens.Append;
      DM.TblPedidoItensVlrUnitario.Value := SQLOrcamentoItem.FieldbyName('PVITN2VLRUNIT').Value;
      DM.TblPedidoItensVlrTotal.Value    := (SQLOrcamentoItem.FieldbyName('PVITN2VLRUNIT').Value) *
                                             SQLOrcamentoItem.FieldbyName('PVITN3QUANT').Value ;

      DM.TblPedidoItensUn.Value          := SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',
                                            SQLLocate('PRODUTO','PRODICOD','UNIDICOD', SQLOrcamentoItem.FieldByName('PRODICOD').AsString));

      DM.TblPedidoItensQtd1.Value        := SQLOrcamentoItem.FieldbyName('PVITN3QUANT').Value;
      DM.TblPedidoItensPedICod.Value     := SQLOrcamentoItem.FieldbyName('PDVDA13ID').Value;
      DM.TblPedidoItensDescricao.Value   := SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',SQLOrcamentoItem.FieldbyName('PRODICOD').AsString);
      DM.TblPedidoItensReferencia.Value  := SQLLocate('PRODUTO','PRODICOD','PRODA60REFER',SQLOrcamentoItem.FieldbyName('PRODICOD').AsString);
      DM.TblPedidoItensCodigo.Value      := SQLOrcamentoItem.FieldbyName('PRODICOD').AsInteger;
      DM.TblPedidoItensCodItem.Value     := SQLOrcamentoItem.FieldbyName('PVITIITEM').AsInteger;
      DM.TblPedidoItens.Post;
      SQLOrcamentoItem.Next;
    End;

  DM.TblPedidoItens.Close;
  SQLOrcamentoItem.Close;

    DM.TblPedidoFinan.Close;
  try
    DM.TblPedidoFinan.DeleteTable;
    DM.TblPedidoFinan.CreateTable;
  except
    DM.TblPedidoFinan.CreateTable;
  end;

  DM.TblPedidoFinan.Open;

  if SQLParcelasVista <> nil then
    begin
      if not SQLParcelasVista.Active then SQLParcelasVista.Open;
      SQLParcelasVista.First;
      While not SQLParcelasVista.Eof do
        begin
          DM.TblPedidoFinan.Append;
          DM.TblPedidoFinanPedICod.Value    := IDOrcamento;
          DM.TblPedidoFinanValor.Value      := SQLParcelasVista.FieldByName(CampoValorParcela).Value;
          DM.TblPedidoFinanVencimento.Value := Date;
          DM.TblPedidoFinan.Post;
          SQLParcelasVista.Next;
        end;
    end;

  if SQLParcelasPrazo <> nil then
    begin
      if not SQLParcelasPrazo.Active then SQLParcelasPrazo.Open;
      SQLParcelasPrazo.First;
      While not SQLParcelasPrazo.Eof do
        begin
          DM.TblPedidoFinan.Append;
          DM.TblPedidoFinanPedICod.Value    := IDOrcamento;
          DM.TblPedidoFinanValor.Value      := SQLParcelasPrazo.FieldByName(CampoValorParcela).Value;
          DM.TblPedidoFinanVencimento.Value := SQLParcelasPrazo.FieldByName(CampoDataVectoParcela).Value;
          DM.TblPedidoFinan.Post;
          SQLParcelasPrazo.Next;
        end;
    end;
  DM.TblPedidoFinan.Close;
end;

procedure TFormCadastroPedidoVenda.SQLContasReceberPostError(
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

procedure TFormCadastroPedidoVenda.mnGerarOSClick(Sender: TObject);
begin
  inherited;
  DSMasterSys := DSTemplate;
  Application.CreateForm(TFormTelaDadosOSPedidoVenda,FormTelaDadosOSPedidoVenda);
  FormTelaDadosOSPedidoVenda.ShowModal;
end;

procedure TFormCadastroPedidoVenda.DSTemplateStateChange(Sender: TObject);
begin
  inherited;
  if not (SQLTemplate.State in dsEditModes) then
     mnGerarOS.Enabled := True
  else
     mnGerarOS.Enabled := False;
end;

procedure TFormCadastroPedidoVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DataSetLookup := Nil;
end;

procedure TFormCadastroPedidoVenda.BTNLocalizarClick(Sender: TObject);
var
Clausula : String;
CampoOrdem : TField;
begin
  inherited;
  Clausula := '';
  if ComboCliente.Value <> '' then
    Clausula := 'CLIEA13ID = "' + ComboCliente.Value + '" ';

  if RdAbertos.Checked then
    Clausula := Clausula + ' and (PDVDCSTATUS = "A" or PDVDCSTATUS = "E" or PDVDCSTATUS = "P")';
  if RdFaturado.Checked then
    Clausula := Clausula + ' and PDVDCSTATUS = "F"';
  if RdCanc.Checked then
    Clausula := Clausula + ' and PDVDCSTATUS = "C"';

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
    Informa('Pesquisa incomleta, verifique!');
end;

procedure TFormCadastroPedidoVenda.DBEdit6Exit(Sender: TObject);
var MotBloq: String;
begin
  inherited;
  if DbEdit6.Text <> '' then
    begin
      MotBloq := DM.SQLLocate('CLIENTE','CLIEA13ID','MTBLICOD','"'+SQLTemplateCLIEA13ID.AsString+'"');
      if MotBloq <> '' then
        begin
          MotBloq := DM.SQLLocate('MOTIVOBLOQUEIO','MTBLICOD','MTBLA60DESCR',MotBloq);
          ShowMessage(MotBloq);
        end;
    end;
  try
    If SQLTemplateCLIEA13ID.AsVariant <> null then
      Begin
        // Cod.ID
        If RadioConsultaCodigo.ItemIndex = 0 Then
          Begin
            If DM.ProcuraRegistro('CLIENTE',['CLIEA13ID'],[SQLTemplateCLIEA13ID.asString],1) Then
              Begin
                // Plano
                if DM.SQLTemplate.FindField('PLRCICOD').AsVariant <> null then
                  SQLTemplate.FieldByName('PLRCICOD').AsVariant := DM.SQLTemplate.FindField('PLRCICOD').AsVariant;
                // Vendedor
                if DM.SQLTemplate.FindField('VENDICOD').AsVariant <>  null then
                  SQLTemplate.FieldByName('VENDICOD').AsVariant := DM.SQLTemplate.FindField('VENDICOD').AsVariant;
                // Rota
                if DM.SQLTemplate.FindField('ROTAICOD').AsVariant <>  null then
                  SQLTemplate.FieldByName('ROTAICOD').AsVariant  := DM.SQLTemplate.FindField('ROTAICOD').AsVariant;
                // Contato
                SQLTemplate.FieldByName('PDVDA30COMPRADOR').AsVariant := DM.SQLTemplate.FindField('CLIEA60CONTATO').AsVariant;
                // Obs do Cliente
                SQLTemplatePDVDTOBS.AsVariant := DM.SQLTemplate.FindField('CLIETOBS1').AsVariant;

                SQLTemplate.FieldByName('ClienteLookUp').AsVariant            := DM.SQLTemplate.FindField('CLIEA60RAZAOSOC').AsVariant;
                SQLTemplate.FieldByName('ClienteEnderecoLookUp').AsVariant    := DM.SQLTemplate.FindField('CLIEA60ENDRES').AsVariant;
                SQLTemplate.FieldByName('ClienteEstadoLookUp').AsVariant      := DM.SQLTemplate.FindField('CLIEA2UFRES').AsVariant;
                SQLTemplate.FieldByName('ClienteCEPLookUp').AsVariant         := DM.SQLTemplate.FindField('CLIEA8CEPRES').AsVariant;
                SQLTemplate.FieldByName('ClienteCidadeLookUp').AsVariant      := DM.SQLTemplate.FindField('CLIEA60CIDRES').AsVariant;
                SQLTemplate.FieldByName('ClienteBairroLookUp').AsVariant      := DM.SQLTemplate.FindField('CLIEA60BAIRES').AsVariant;
                SQLTemplate.FieldByName('ClienteFoneLookUp').AsVariant        := DM.SQLTemplate.FindField('CLIEA15FONE1').AsVariant;
                SQLTemplate.FieldByName('ClienteTabelaPrecoLookUp').AsVariant := DM.SQLTemplate.FindField('TPRCICOD').AsVariant;

                If DM.SQLTemplate.FindField('CLIEA5FISJURID').asString = 'F' Then
                  Begin
                    SQLTemplate.FieldByName('ClienteCPF').AsVariant    := DM.SQLTemplate.FindField('CLIEA11CPF').AsVariant;
                    SQLTemplate.FieldByName('ClienteRG').AsVariant     := DM.SQLTemplate.FindField('CLIEA10RG').AsVariant;
                    SQLTemplate.FieldByName('ClienteCPF').EditMask     := '000.000.000-00;0;_';
                  End
                Else
                  Begin
                    SQLTemplate.FieldByName('ClienteCGC').AsVariant    := DM.SQLTemplate.FindField('CLIEA14CGC').AsVariant;
                    SQLTemplate.FieldByName('ClienteIE').AsVariant     := DM.SQLTemplate.FindField('CLIEA20IE').AsVariant;
                    SQLTemplate.FieldByName('ClienteCGC').EditMask     := '00.000.000/0000-00;0;_';
                  End;
              End
            Else
              begin
                SQLTemplate.FieldByName('ClienteLookUp').asString     := MensagemLookUp;
              end;
          End;
        // Cod.Antigo
        If RadioConsultaCodigo.ItemIndex = 1 Then
          Begin
            If DM.ProcuraRegistro('CLIENTE',['CLIEA10CODANT'],[SQLTemplateCLIEA13ID.asString],1) Then
              Begin
                SQLTemplate.FieldByName('CLIEA13ID').AsVariant   := DM.SQLTemplate.FindField('CLIEA13ID').AsVariant;
                // Plano
                if DM.SQLTemplate.FindField('PLRCICOD').AsVariant <> null then
                  SQLTemplate.FieldByName('PLRCICOD').AsVariant := DM.SQLTemplate.FindField('PLRCICOD').AsVariant;
                // Vendedor
                if DM.SQLTemplate.FindField('VENDICOD').AsVariant <>  null then
                  SQLTemplate.FieldByName('VENDICOD').AsVariant := DM.SQLTemplate.FindField('VENDICOD').AsVariant;
                // Rota
                if DM.SQLTemplate.FindField('ROTAICOD').AsVariant <>  null then
                  SQLTemplate.FieldByName('ROTAICOD').AsVariant  := DM.SQLTemplate.FindField('ROTAICOD').AsVariant;
                // Contato
                SQLTemplate.FieldByName('PDVDA30COMPRADOR').AsVariant := DM.SQLTemplate.FindField('CLIEA60CONTATO').AsVariant;
                // Obs do Cliente
                SQLTemplatePDVDTOBS.AsVariant := DM.SQLTemplate.FindField('CLIETOBS1').AsVariant;

                SQLTemplate.FieldByName('ClienteLookUp').AsVariant            := DM.SQLTemplate.FindField('CLIEA60RAZAOSOC').AsVariant;
                SQLTemplate.FieldByName('ClienteEnderecoLookUp').AsVariant    := DM.SQLTemplate.FindField('CLIEA60ENDRES').AsVariant;
                SQLTemplate.FieldByName('ClienteEstadoLookUp').AsVariant      := DM.SQLTemplate.FindField('CLIEA2UFRES').AsVariant;
                SQLTemplate.FieldByName('ClienteCEPLookUp').AsVariant         := DM.SQLTemplate.FindField('CLIEA8CEPRES').AsVariant;
                SQLTemplate.FieldByName('ClienteCidadeLookUp').AsVariant      := DM.SQLTemplate.FindField('CLIEA60CIDRES').AsVariant;
                SQLTemplate.FieldByName('ClienteBairroLookUp').AsVariant      := DM.SQLTemplate.FindField('CLIEA60BAIRES').AsVariant;
                SQLTemplate.FieldByName('ClienteFoneLookUp').AsVariant        := DM.SQLTemplate.FindField('CLIEA15FONE1').AsVariant;
                SQLTemplate.FieldByName('ClienteTabelaPrecoLookUp').AsVariant := DM.SQLTemplate.FindField('TPRCICOD').AsVariant;

                If DM.SQLTemplate.FindField('CLIEA5FISJURID').asString = 'F' Then
                  Begin
                    SQLTemplate.FieldByName('ClienteCPF').AsVariant    := DM.SQLTemplate.FindField('CLIEA11CPF').AsVariant;
                    SQLTemplate.FieldByName('ClienteRG').AsVariant     := DM.SQLTemplate.FindField('CLIEA10RG').AsVariant;
                    SQLTemplate.FieldByName('ClienteCPF').EditMask     := '000.000.000-00;0;_';
                  End
                Else
                  Begin
                    SQLTemplate.FieldByName('ClienteCGC').AsVariant    := DM.SQLTemplate.FindField('CLIEA14CGC').AsVariant;
                    SQLTemplate.FieldByName('ClienteIE').AsVariant     := DM.SQLTemplate.FindField('CLIEA20IE').AsVariant;
                    SQLTemplate.FieldByName('ClienteCGC').EditMask     := '00.000.000/0000-00;0;_';
                  End;
              End
            Else
              begin
                SQLTemplate.FieldByName('ClienteLookUp').asString     := MensagemLookUp;
              end;
          End;
       // Cod.Rota+Seq Diaria
        If RadioConsultaCodigo.ItemIndex = 2 Then
          Begin
            If DM.ProcuraRegistro('CLIENTE',['ROTAICOD','CLIEA10CODANT'],[IntToStr(dm.RotaAtualPedidos),SQLTemplateCLIEA13ID.asString],2) Then
              Begin
                SQLTemplate.FieldByName('CLIEA13ID').AsVariant   := DM.SQLTemplate.FindField('CLIEA13ID').AsVariant;
                // Plano
                if DM.SQLTemplate.FindField('PLRCICOD').AsVariant <> null then
                  SQLTemplate.FieldByName('PLRCICOD').AsVariant := DM.SQLTemplate.FindField('PLRCICOD').AsVariant;
                // Vendedor
                if DM.SQLTemplate.FindField('VENDICOD').AsVariant <>  null then
                  SQLTemplate.FieldByName('VENDICOD').AsVariant := DM.SQLTemplate.FindField('VENDICOD').AsVariant;
                // Rota
                if DM.SQLTemplate.FindField('ROTAICOD').AsVariant <>  null then
                  SQLTemplate.FieldByName('ROTAICOD').AsVariant  := DM.SQLTemplate.FindField('ROTAICOD').AsVariant;
                // Contato
                SQLTemplate.FieldByName('PDVDA30COMPRADOR').AsVariant := DM.SQLTemplate.FindField('CLIEA60CONTATO').AsVariant;
                // Obs do Cliente
                SQLTemplatePDVDTOBS.AsVariant := DM.SQLTemplate.FindField('CLIETOBS1').AsVariant;

                SQLTemplate.FieldByName('ClienteLookUp').AsVariant            := DM.SQLTemplate.FindField('CLIEA60RAZAOSOC').AsVariant;
                SQLTemplate.FieldByName('ClienteEnderecoLookUp').AsVariant    := DM.SQLTemplate.FindField('CLIEA60ENDRES').AsVariant;
                SQLTemplate.FieldByName('ClienteEstadoLookUp').AsVariant      := DM.SQLTemplate.FindField('CLIEA2UFRES').AsVariant;
                SQLTemplate.FieldByName('ClienteCEPLookUp').AsVariant         := DM.SQLTemplate.FindField('CLIEA8CEPRES').AsVariant;
                SQLTemplate.FieldByName('ClienteCidadeLookUp').AsVariant      := DM.SQLTemplate.FindField('CLIEA60CIDRES').AsVariant;
                SQLTemplate.FieldByName('ClienteBairroLookUp').AsVariant      := DM.SQLTemplate.FindField('CLIEA60BAIRES').AsVariant;
                SQLTemplate.FieldByName('ClienteFoneLookUp').AsVariant        := DM.SQLTemplate.FindField('CLIEA15FONE1').AsVariant;
                SQLTemplate.FieldByName('ClienteTabelaPrecoLookUp').AsVariant := DM.SQLTemplate.FindField('TPRCICOD').AsVariant;

                If DM.SQLTemplate.FindField('CLIEA5FISJURID').asString = 'F' Then
                  Begin
                    SQLTemplate.FieldByName('ClienteCPF').AsVariant    := DM.SQLTemplate.FindField('CLIEA11CPF').AsVariant;
                    SQLTemplate.FieldByName('ClienteRG').AsVariant     := DM.SQLTemplate.FindField('CLIEA10RG').AsVariant;
                    SQLTemplate.FieldByName('ClienteCPF').EditMask     := '000.000.000-00;0;_';
                  End
                Else
                  Begin
                    SQLTemplate.FieldByName('ClienteCGC').AsVariant    := DM.SQLTemplate.FindField('CLIEA14CGC').AsVariant;
                    SQLTemplate.FieldByName('ClienteIE').AsVariant     := DM.SQLTemplate.FindField('CLIEA20IE').AsVariant;
                    SQLTemplate.FieldByName('ClienteCGC').EditMask     := '00.000.000/0000-00;0;_';
                  End;
              End
            Else
              begin
                SQLTemplate.FieldByName('ClienteLookUp').asString     := MensagemLookUp;
              end;
          End;
      End
    Else
      SQLTemplate.FieldByName('ClienteLookUp').AsVariant := NULL;
  except
    Application.ProcessMessages;
  end;
  if dm.VendedorAtualPedidos > 0 then
    SQLTemplate.FieldByName('VENDICOD').AsVariant := dm.VendedorAtualPedidos;
  if dm.RotaAtualPedidos > 0 then
    SQLTemplate.FieldByName('ROTAICOD').AsVariant := dm.RotaAtualPedidos;

end;

procedure TFormCadastroPedidoVenda.MnPedidoOramentoemSequenciaClick(
  Sender: TObject);
var Linha, vCol : integer;
begin
  inherited;
  // Arquivo Externo .exe
  if sqltemplate.IsEmpty then
    begin
      ShowMessage('Não existe nenhum pedido a ser impresso!');
      Exit;
    end;
  if FileExists('PedidoVenda.exe') then
    begin
      SQLTemplate.First;
      While not SQLTemplate.Eof Do
        begin
          WinExec(PChar('PedidoVenda.exe '+ SQLTemplatePDVDA13ID.asString),SW_SHOW);
          SQLTemplate.Next;
        end;
      Exit;
    end;
  if not FileExists('Krustallos.arq') then
    ppPedidoKrustallos.Print
  else
    begin
      RDprint.NumerodeCopias := 1;
      RDprint.Abrir;
      While not SQLTemplate.Eof Do
        begin
          Linha := 1;
          RDprint.ImpF(Linha, 1,dm.SQLEmpresaEMPRA60NOMEFANT.AsString,[Expandido, Italico]); Inc(Linha);
          RDprint.ImpF(Linha, 1,dm.SQLEmpresaEMPRA60END.AsString +' - '+
                                dm.SQLEmpresaEMPRA60BAI.AsString +' - '+
                                dm.SQLEmpresaEMPRA60CID.AsString +' - '+
                                dm.SQLEmpresaEMPRA20FONE.AsString,[Normal]);  Inc(Linha,2);
          RDprint.Imp(Linha,  1,'Controle....: '  + SQLTemplatePDVDA13ID.AsString);
          RDprint.Imp(Linha, 50,'Emiss/Entreg: '  + FormatDateTime('dd/mm/yy',SQLTemplatePDVDDEMISSAO.Value)+'   '+
                                                    FormatDateTime('dd/mm/yy',SQLTemplatePDVDDENTREGA.Value)); Inc(Linha);
          RDprint.Imp(Linha,  1,'Razao Social: '  + copy(dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','"'+SQLTemplateCLIEA13ID.AsString+'"'),1,30));
          RDprint.Imp(Linha, 50,'Rota........: '  + ComboRota.Value+ '-' + ComboRota.Text); Inc(Linha);
          RDprint.Imp(Linha,  1,'Nome Fant...: '  + copy(dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA60NOMEFANT','"'+SQLTemplateCLIEA13ID.AsString+'"'),1,30));
          RDprint.Imp(Linha, 50,'Fone........: '  + dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA15FONE1','"'+SQLTemplateCLIEA13ID.AsString+'"')); Inc(Linha);
          RDprint.Imp(Linha,  1,'Endereco....: '  + dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA60ENDRES','"'+SQLTemplateCLIEA13ID.AsString+'"')); Inc(Linha);
          RDprint.Imp(Linha,  1,'Bairro......: '  + dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA60BAIRES','"'+SQLTemplateCLIEA13ID.AsString+'"'));
          RDprint.Imp(Linha, 50,'Cidade/UF...: '  + dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA60CIDRES','"'+SQLTemplateCLIEA13ID.AsString+'"')+'/'+
                                                    dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA2UFRES','"'+SQLTemplateCLIEA13ID.AsString+'"')); Inc(Linha);
          RDprint.Imp(Linha,  1,'CPF/CNPJ....: '  + dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA14CGC','"'+SQLTemplateCLIEA13ID.AsString+'"'));
          RDprint.Imp(Linha, 50,'RG/IE.......: '  + dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA20IE','"'+SQLTemplateCLIEA13ID.AsString+'"')); Inc(Linha);
          RDprint.Imp(Linha,  1,'Faturamento.: '  + copy(ComboPlanoRectoAtual.Text,1,25));
          RDprint.Imp(Linha, 42,'Vend: '          + copy(ComboVendedor.Text,1,20));
          RDprint.Imp(Linha, 70,'Comprador: '     + copy(SQLTemplatePDVDA30COMPRADOR.Text,1,20));  Inc(Linha);
          RDprint.Imp(Linha,  1,'Codigo Descricao                                                 Quant    Vlr.Unit  Vlr.Total');    Inc(Linha);
          SQLPedidoVendaItem.Close;
          SQLPedidoVendaItem.ParamByName('PDVDA13ID').AsString := SQLTemplatePDVDA13ID.AsString;
          SQLPedidoVendaItem.Open;
          SQLPedidoVendaItem.First;
          While not SQLPedidoVendaItem.eof Do
            Begin
              RDprint.Imp(Linha, 1,FormatFloat('#####00000',SQLPedidoVendaItemPRODICOD.value));
              RDprint.Imp(Linha, 8,copy(ComboProdutos.Text,1,55));
              RDprint.ImpVal(Linha,65,'##0.00',SQLPedidoVendaItemPVITN3QUANT.Value,[]);
              RDprint.ImpVal(Linha,77,'##0.00',SQLPedidoVendaItemPVITN2VLRUNIT.Value,[]);
              RDprint.ImpVal(Linha,88,'##0.00',SQLPedidoVendaItemPVITN3TOTVENDITEM.Value,[]);
              Inc(Linha);
              SQLPedidoVendaItem.Next;
            End;
          Inc(Linha);
          RDprint.Imp(Linha, 1,'Obs.:');
          RDprint.Imp(Linha,68,'Total Geral');
          RDprint.ImpVal(Linha,84,'###,##0.00',SQLTemplatePDVDN2TOTPED.Value,[]); Inc(Linha);
          RDprint.Imp(Linha, 1,SQLTemplatePDVDTOBS.AsString);
          RDprint.Novapagina;
          SQLTemplate.Next;
        end;
      RDprint.Fechar;
    end;
end;

procedure TFormCadastroPedidoVenda.ppPedidoVendaPadraoPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ppPedidoVendaPadrao.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppPedidoVendaPadrao.PreviewForm.Viewer).ZoomPercentage := 100;
end;

procedure TFormCadastroPedidoVenda.BTItemNovoClick(Sender: TObject);
begin
  if SQLTemplatePDVDCSTATUS.Value = 'A' then
    begin
      if (SQLTemplate.State in dsEditModes) then
        SQLTemplate.Post
      else
        Application.ProcessMessages;

      if not SQLPedidoVendaItem.Active then
        begin
          SQLPedidoVendaItem.Close;
          SQLPedidoVendaItem.ParamByName('PDVDA13ID').AsString := SQLTemplatePDVDA13ID.AsString;
          SQLPedidoVendaItem.Open;
        end;
      SQLPedidoVendaItem.Append;
      SaldoAtual.Visible := True;
      SaldoAtual.Update;
      EditCdProduto.Clear;
      EditCdProduto.SetFocus;
    end
  else
    ShowMessage('Este Pedido não está em Aberto! Não é permitido incluir item!');
end;

procedure TFormCadastroPedidoVenda.BtItemGravarClick(Sender: TObject);
begin
  if SQLPedidoVendaItemPRODICOD.Value < 1 then
    begin
      ShowMessage('O campo codigo do produto deve ser maior do que zero! Verifique!');
      EditCdProduto.SetFocus;
      exit;
    end;

  if SQLPedidoVendaItemPVITN3QUANT.Value = 0 then
    begin
      ShowMessage('O campo quantidade deve ser maior do que zero! Verifique!');
      dbedit11.SetFocus;
      exit;
    end;

  if SQLPedidoVendaItemPVITN2VLRUNIT.Value = 0 then
    begin
      ShowMessage('O campo valor unitário não foi informado! Verifique!');
      dbedit12.SetFocus;
      exit;
    end;

  if ComboProdutos.Value = '' then
    begin
      ShowMessage('O Produto não foi informado! Verifique!');
      EditCdProduto.SetFocus;
      exit;
    end;

  if (SQLPedidoVendaItem.State in dsEditModes) then
    begin
      try
        SQLPedidoVendaItemPVITN3QUANTVEND.Value := SQLPedidoVendaItemPVITN3QUANT.Value;
      except
        Application.ProcessMessages;
      end;
      SQLPedidoVendaItem.Post;
      SQLPedidoVendaItem.Close;
      SQLPedidoVendaItem.ParamByName('PDVDA13ID').AsString := SQLTemplatePDVDA13ID.AsString;
      SQLPedidoVendaItem.open;
      SQLPedidoVendaItem.last;
      CalculaTotal;
      SaldoAtual.Visible := True;
      SaldoAtual.Update;
      BtItemNovo.SetFocus;
    end
  else
    ShowMessage('Não existem dados a ser gravados!');
end;

procedure TFormCadastroPedidoVenda.SQLPedidoVendaItemNewRecord(
  DataSet: TDataSet);
begin
  SQLPedidoVendaItemPDVDA13ID.Value   := SQLTemplatePDVDA13ID.Value;
  if SQLPedidoItens.Active then SQLPedidoItens.Close;
  SQLPedidoItens.SQL.Text := 'Select Max(PVITIITEM) From PEDIDOVENDAITEM Where PDVDA13ID = "' + SQLTemplatePDVDA13ID.AsString + '"' ;
  SQLPedidoItens.Open;
  if SQLPedidoItens.FieldByName('MAX').AsInteger = dm.SQLConfigVendaCFVEINROITENSNF.Value then
    ShowMessage('Aviso!'+chr(13)+chr(13)+'Ultrapassou o número máximo de itens que a sua Nota Fiscal permite!');

  SQLPedidoVendaItemPVITIITEM.Value := SQLPedidoItens.FieldByName('MAX').AsInteger+1;
  SQLPedidoItens.Close;
  SQLPedidoVendaItemPVITN3QUANT.Value           := 1;
  SQLPedidoVendaItemPVITN3QUANTVEND.asFloat     := 0;
  SQLPedidoVendaItemPVITN2VLRUNIT.asFloat       := 0;
  SQLPedidoVendaItemPVITN2PERCDESC.asFloat      := 0;
  SQLPedidoVendaItemPVITN2VLRDESC.asFloat       := 0;
  SQLPedidoVendaItemPVITN2PERCCOMIS.asFloat     := 0;
  SQLPedidoVendaItemPVITN3TOTVENDITEM.asFloat   := 0;
  SQLPedidoVendaItemREGISTRO.Value              := Now;
  SQLPedidoVendaItemPENDENTE.Value              := 'S';
end;


procedure TFormCadastroPedidoVenda.DBEdit11Exit(Sender: TObject);
begin
  inherited;
  if SQLPedidoVendaItemPRODICOD.AsString <> '' then
    If SQLLocate('CLIENTE','CLIEA13ID','CLIECTPPRCVENDA','"'+SQLTemplateCLIEA13ID.AsString+'"') = 'A' Then
      SQLPedidoVendaItemPVITN2VLRUNIT.Value := SQLProdutosPRODN3VLRVENDA2.Value
    else
      begin
        if ((SQLProdutos.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (SQLProdutos.FieldByName('PRODDFIMPROMO').AsDateTime >= Now) and (SQLProdutos.FieldByName('PRODN3VLRVENDAPROM').AsFloat>0)) or
           ((SQLProdutos.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (SQLProdutos.FieldByName('PRODDFIMPROMO').AsString = '') and (SQLProdutos.FieldByName('PRODN3VLRVENDAPROM').AsFloat>0)) then
          SQLPedidoVendaItemPVITN2VLRUNIT.Value := SQLProdutosPRODN3VLRVENDAPROM.Value
        else
          SQLPedidoVendaItemPVITN2VLRUNIT.Value := SQLProdutosPRODN3VLRVENDA.Value;
      end;
end;

procedure TFormCadastroPedidoVenda.BtItemExcluirClick(Sender: TObject);
begin
  if SQLTemplatePDVDCSTATUS.Value = 'A' then
    begin
      if Pergunta('Não','Tem certeza que deseja excluir o item lançado atualmente?') then
        begin
          SQLPedidoVendaItem.Delete;
          CalculaTotal;
          BtItemNovo.SetFocus;
        end;
    end
  else
    ShowMessage('Este Pedido não está em Aberto! Não é permitido excluir item!');
end;

procedure TFormCadastroPedidoVenda.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  if DM.SQLConfigVendaCFVECVENDEDOREXIGE.Value = 'S' then
    if SQLTemplateVENDICOD.AsString = '' then
      begin
        ShowMessage('Erro! O Vendedor esta configurado para ser Obrigatório!');
        Exit;
      end;

  if (SQLTemplateCLIEA13ID.Value <> '' ) then
    begin
      if (SQLTemplate.State in ([dsInsert])) and not GerandoPedidoParcial then
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
          DM.SQLTemplate.SQL.Add(' and (CTRCDVENC < :xDataVencimento)') ;
          Dm.SQLTemplate.ParamByName('xDataVencimento').asdate := date;

          DM.SQLTemplate.Open ;
          if DM.SQLTemplate.FieldByName('NROPARCVENC').Value > 0 then
            ShowMessage('Este cliente possui parcelas em aberto!');
        end;
    end
  else
    begin
      ShowMessage('Voce deve escolher um cliente para poder gravar um pedido!');
      Exit;
    end;
  inherited;
  StatusNovo := SQLTemplate.FindField('PDVDCSTATUS').asString;
end;

procedure TFormCadastroPedidoVenda.ppPedidoKrustallosPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ppPedidoKrustallos.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppPedidoKrustallos.PreviewForm.Viewer).ZoomPercentage := 100;
end;

procedure TFormCadastroPedidoVenda.MnTrrocarVendedoreRotaPadraoClick(
  Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFormTelaConfigPedidos,FormTelaConfigPedidos);
  FormTelaConfigPedidos.ShowModal;
  if dm.VendedorAtualPedidos > 0 then
    begin
      LbVendedorAtual.Visible := True;
      LbVendedorAtual.Caption := 'Vendedor Atual '+ intToStr(dm.VendedorAtualPedidos);
      LbVendedorAtual.Update;
    end
  else
    begin
      LbVendedorAtual.Visible := False;
      LbVendedorAtual.Update;
    end;
  if dm.RotaAtualPedidos > 0 then
    begin
      LbRotaAtual.Visible := True;
      LbRotaAtual.Caption := 'Rota Atual '+ intToStr(dm.RotaAtualPedidos);
      LbRotaAtual.Update;
    end
  else
    begin
      LbRotaAtual.Visible := False;
      LbRotaAtual.Update;
    end;
  if dm.TranspAtualPedidos > 0 then
    begin
      LbTranspAtual.Visible := True;
      LbTranspAtual.Caption := 'Transp Atual '+ intToStr(dm.TranspAtualPedidos);
      LbTranspAtual.Update;
    end
  else
    begin
      LbTranspAtual.Visible := False;
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
      LbVeiculo.Visible := False;
      LbVeiculo.Update;
    end;
  if dm.DataEmissaoPedidos <> null then
    begin
      LbEmissao.Visible := True;
      LbEmissao.Caption := 'Emissão '+ FormatDateTime('dd/mm/yyyy',dm.DataEmissaoPedidos);
      LbEmissao.Update;
    end
  else
    begin
      LbEmissao.Visible := False;
      LbEmissao.Update;
    end;
  if dm.DataEntregaPedidos <> null then
    begin
      LbDataEntrega.Visible := True;
      LbDataEntrega.Caption := 'Entrega '+ FormatDateTime('dd/mm/yyyy',dm.DataEntregaPedidos);
      LbDataEntrega.Update;
    end
  else
    begin
      LbDataEntrega.Visible := False;
      LbDataEntrega.Update;
    end;
end;

procedure TFormCadastroPedidoVenda.MnTrocarStatusdoPedidoparaFaturadoClick(
  Sender: TObject);
begin
  inherited;
  dm.TrocarStatusPedidoParaFaturado := True;
  if SQLTemplatePDVDCSTATUS.Value = 'E' then
    begin
      SQLTemplate.Edit;
      SQLTemplatePDVDCSTATUS.Value := 'F';
      SQLTemplate.Post;
    end
  else
    ShowMessage('O pedido não está Encerrado ainda, Verifique');
end;

procedure TFormCadastroPedidoVenda.ComboNumerarioVistaChange(
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

procedure TFormCadastroPedidoVenda.ComboNumerarioPrazoChange(
  Sender: TObject);
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

procedure TFormCadastroPedidoVenda.ComboHistoricoPadraoExit(
  Sender: TObject);
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

procedure TFormCadastroPedidoVenda.ComboHistoricoPadraoKeyDown(
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

procedure TFormCadastroPedidoVenda.BTNRecalcularFinanceiroClick(
  Sender: TObject);
Var
  Entrada, Desconto, Valor: Double;
  DiminuiAcresc, ValorJuro,Acrescimo, EntradaCalc,TaxaCred: Double;
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
  if (ComboPlanoRecto.Value <> '') and (SQLTemplatePDVDN2TOTPED.AsFloat > 0) and (SQLTemplatePDVDCSTATUS.Value = 'A') and (SQLTemplate.State in dsEditModes) then
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
                       Entrada, Desconto, SQLTemplate.FindField('PDVDN2TOTPED').asFloat, ComboPlanoRecto.KeyValue, SQLTemplate.FindField('PDVDDEMISSAO').asDateTime,
                       ComboNumerarioVista.Value, ComboNumerarioPrazo.Value,
                       ComboNumerarioVista.Value, ComboNumerarioPrazo.Value, SQLTemplate.FindField('PDVDA13ID').asString,
                       DiminuiAcresc, ValorJuro,Acrescimo, EntradaCalc,TaxaCred);
          SQLPlanoParcela.Close;
        End;
      SQLPlano.Close;
    End;

  // Lancar Contas a Receber
  if (ComboPlanoRecto.Value <> '') and (SQLTemplatePDVDN2TOTPED.AsFloat > 0) and (SQLTemplatePDVDCSTATUS.Value = 'A') and (SQLTemplate.State in dsEditModes) then
    begin
      SQLContasReceber.Close;
      SQLContasReceber.ParamByName('PDVDA13ID').AsString := SQLTemplatePDVDA13ID.AsString;
      SQLContasReceber.Open;
      SQLContasReceber.First;
      While Not SQLContasReceber.Eof Do
        SQLContasReceber.Delete;

      SQLContasReceber.Close;
      SQLContasReceber.ParamByName('PDVDA13ID').AsString := SQLTemplatePDVDA13ID.AsString;
      SQLContasReceber.Open;

      if not SQLParcelasPrazoVendaTemp.Active then SQLParcelasPrazoVendaTemp.Open;
      SQLParcelasPrazoVendaTemp.First;
      If SQLParcelasPrazoVendaTempNROPARCELA.AsInteger = 0 Then
        Begin
          SQLContasReceber.Append;
          SQLContasReceberCTRCCSTATUS.Value              := 'A';
          SQLContasReceberCTRCDEMIS.Value                := SQLTemplate.FindField('PDVDDEMISSAO').Value;
          SQLContasReceberCTRCDVENC.Value                := SQLTemplate.FindField('PDVDDEMISSAO').Value;
          SQLContasReceberCTRCINROPARC.Value             := 0;
          SQLContasReceberCTRCN2VLR.Value                := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
          SQLContasReceberCTRCA5TIPOPADRAO.Value         := SQLParcelasPrazoVendaTempTipoPadrao.Value;
          SQLContasReceberCLIEA13ID.AsString             := SQLTemplate.FindField('CLIEA13ID').AsString;
          SQLContasReceberPDVDA13ID.AsString             := SQLTemplate.FindField('PDVDA13ID').AsString;
          SQLContasReceberTPDCICOD.AsVariant             := ComboTipoDoc.KeyValue;
          SQLContasReceberPORTICOD.asVariant             := ComboPortador.KeyValue;
          SQLContasReceberCTRCA30NRODUPLICBANCO.AsString := '';
          SQLContasReceberCTRCCEMITIDOBOLETO.Value       := 'N';
          // PLANO DE CONTAS Busca do Numerario
          if SQLParcelasPrazoVendaTempNUMEICOD.AsVariant <> Null then
            begin
              SQLContasReceberPLCTA15COD.AsString       := SQLLocate('NUMERARIO','NUMEICOD','PLCTA15CODCRED',SQLParcelasPrazoVendaTempNUMEICOD.AsString);
              SQLContasReceberPLCTA15CODDEBITO.AsString := SQLLocate('NUMERARIO','NUMEICOD','PLCTA15CODDEB',SQLParcelasPrazoVendaTempNUMEICOD.AsString);
            end;

          SQLContasReceberNUMEICOD.AsString := SQLParcelasPrazoVendaTempNUMEICOD.AsString;

          // Histórico
          if ComboHistoricoPadrao.Value <> '' then
            SQLContasReceberHTPDICOD.AsString := ComboHistoricoPadrao.Value;
          if MemoHistorico.Lines.Count > 0 then
            SQLContasReceberCTRCA254HIST.AsString := UpperCase(MemoHistorico.Lines.Text);

          SQLContasReceberTERMICOD.AsInteger     := TerminalCorrente;
          SQLContasReceberPENDENTE.Value          := 'S' ;
          SQLContasReceberREGISTRO.Value          := Now ;

          SQLContasReceber.Post;
        end;
      SQLParcelasPrazoVendaTemp.First;
      if SQLParcelasPrazoVendaTempNROPARCELA.AsInteger = 0 then
        SQLParcelasPrazoVendaTemp.Next;
      While Not SQLParcelasPrazoVendaTemp.Eof Do
        Begin
          SQLContasReceber.Append;
          SQLContasReceberCTRCCSTATUS.Value      := 'A';
          SQLContasReceberPDVDA13ID.AsString     := SQLTemplate.FindField('PDVDA13ID').AsString;
          SQLContasReceberCTRCDEMIS.Value        := SQLTemplate.FindField('PDVDDEMISSAO').Value;
          SQLContasReceberCLIEA13ID.AsString     := SQLTemplate.FindField('CLIEA13ID').AsString;
          SQLContasReceberCTRCDVENC.Value        := SQLParcelasPrazoVendaTempDATAVENCTO.Value;
          SQLContasReceberCTRCINROPARC.Value     := SQLParcelasPrazoVendaTempNROPARCELA.Value;
          SQLContasReceberCTRCN2VLR.Value        := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
          SQLContasReceberCTRCA5TIPOPADRAO.Value := SQLParcelasPrazoVendaTempTipoPadrao.Value;
          SQLContasReceberTPDCICOD.AsVariant     := ComboTipoDoc.KeyValue;
          SQLContasReceberPORTICOD.asVariant     := ComboPortador.KeyValue;
          SQLContasReceberCTRCA30NRODUPLICBANCO.AsString := '';
          SQLContasReceberCTRCCEMITIDOBOLETO.Value := 'N';
          // PLANO DE CONTAS Busca do Numerario
          if SQLParcelasPrazoVendaTempNUMEICOD.AsVariant <> Null then
            begin
              SQLContasReceberPLCTA15COD.AsString       := SQLLocate('NUMERARIO','NUMEICOD','PLCTA15CODCRED',SQLParcelasPrazoVendaTempNUMEICOD.AsString);
              SQLContasReceberPLCTA15CODDEBITO.AsString := SQLLocate('NUMERARIO','NUMEICOD','PLCTA15CODDEB',SQLParcelasPrazoVendaTempNUMEICOD.AsString);
            end;

          SQLContasReceberNUMEICOD.Value         := SQLParcelasPrazoVendaTempNUMEICOD.Value;

          if ComboHistoricoPadrao.Value <> '' then
            SQLContasReceberHTPDICOD.AsString := ComboHistoricoPadrao.Value;

          if MemoHistorico.Lines.Count > 0 then
            SQLContasReceberCTRCA254HIST.AsString := UpperCase(MemoHistorico.Lines.Text);

          SQLContasReceberTERMICOD.AsInteger     := TerminalCorrente;
          SQLContasReceberPENDENTE.Value          := 'S' ;
          SQLContasReceberREGISTRO.Value          := Now ;
          SQLContasReceber.Post;
          SQLParcelasPrazoVendaTemp.Next;
        end;
      SQLParcelasPrazoVendaTemp.Close;
    End;
    PermiteExcluirSemPerguntar := False;

    SQLContasReceber.Close;
    SQLContasReceber.ParamByName('PDVDA13ID').AsString := SQLTemplatePDVDA13ID.AsString;
    SQLContasReceber.Open;

    if (SQLTemplate.State in dsEditModes) then
      begin
        SQLTemplatePLRCICOD.Value := SQLPlanoRecebimentoPLRCICOD.Value;
        SQLTemplate.Post;
      end;

    ComboPlanoRecto.Value := '';
end;

procedure TFormCadastroPedidoVenda.ppHeaderBand1BeforePrint(
  Sender: TObject);
begin
  inherited;
  ppLbEmpresa.Caption := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA60NOMEFANT',EmpresaPadrao);
end;

procedure TFormCadastroPedidoVenda.ComboObsNotaExit(Sender: TObject);
begin
  inherited;
  if ComboObsNota.DisplayValue <> '' then
    if SQLObsNota.Locate('NOFIA50DESC',ComboObsNota.DisplayValue,[]) then
      SQLTemplatePDVDTOBS.Value := SQLTemplatePDVDTOBS.Value + SQLObsNota.Fieldbyname('OBSNA255DESC').Asstring;
end;

procedure TFormCadastroPedidoVenda.DBMemo2Exit(Sender: TObject);
begin
  inherited;
  PagePrincipal.ActivePage := TabItens;
  BTItemNovo.SetFocus;
end;

procedure TFormCadastroPedidoVenda.BtnTransportadoraClick(Sender: TObject);
begin
  inherited;
  FieldLookUp := SQLTemplate.FindField('TRANICOD');
  FieldOrigem := 'TRANICOD';
  DataSetLookup := SQLTransportadora;
  CriaFormulario(TFormCadastroTransportadora,'FormCadastroTransportadora',False,True,True,'');
end;

procedure TFormCadastroPedidoVenda.ComboVeiculoExit(Sender: TObject);
begin
  inherited;
  if (ComboVeiculo.KeyValue <> null) and (SQLTemplate.State in dsEditModes) then
    SQLTemplatePDVD8PLACAVEIC.AsString := DM.SQLLocate('VEICULO','VEICA13ID','VEICA7PLACA','"'+SQLTemplateVEICA13ID.Value+'"');
end;

procedure TFormCadastroPedidoVenda.ppDetailBand2BeforePrint(
  Sender: TObject);
begin
  inherited;
  LbUnidade.Caption := dm.SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',DM.SQLLocate('PRODUTO','PRODICOD','UNIDICOD',SQLPedidoVendaItemPRODICOD.AsString));
end;

procedure TFormCadastroPedidoVenda.BtnExcluirParcAtuaisClick(
  Sender: TObject);
begin
  inherited;
  if not PermiteExcluirSemPerguntar then
    if Pergunta('Não', 'Tem certeza que deseja excluir estas parcelas?') then
      begin
        DM.RegistraExclusao('CONTASRECEBER',SQLContasReceber);
        SQLContasReceber.first;
        While not SQLContasReceber.eof do
            SQLContasReceber.Delete;

        SQLTemplate.Edit;
        SQLTemplatePLRCICOD.AsString := '';
        SQLTemplate.Post;

        SQLContasReceber.Close;
        SQLContasReceber.ParamByName('PDVDA13ID').AsString := SQLTemplatePDVDA13ID.AsString;
        SQLContasReceber.Open;
      end;

  ComboPlanoRecto.Value := '';
end;

procedure TFormCadastroPedidoVenda.SQLPedidoVendaItemPRODICODChange(
  Sender: TField);
begin
  inherited;
  // Monta Saldo Produto
  SaldoAtual.Caption := '0' ;
  SaldoAtual.Update;
  SQLGeral.Close ;
  SQLGeral.SQL.Clear ;
  SQLGeral.SQL.Add('select PSLDN3QTDE, PSLDN3QTDMIN, PSLDN3QTDMAX from PRODUTOSALDO');
  SQLGeral.SQL.Add('where EMPRICOD = ' + EmpresaPadrao);
  SQLGeral.SQL.Add('and   PRODICOD = ' + SQLPedidoVendaItemPRODICOD.AsString);
  SQLGeral.Open ;
  if not SQLGeral.Eof then
    begin
      SaldoAtual.Caption := FloatToStr(SQLGeral.FieldByName('PSLDN3QTDE').asFloat);
      SaldoAtual.Update;
    end ;
  SQLGeral.Close ;
end;

procedure TFormCadastroPedidoVenda.ComboPlanoRectoExit(Sender: TObject);
var
 I, ContadorDocumento : Integer;
 DocumentoSTR : String;
begin
  inherited;
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
  if (SQLPlanoRecebimentoPLRCCDFIX.Value = 'V') and (SQLTemplatePDVDN2TOTPED.Value > 0) and (SQLTemplate.State in dsEditModes) then
    begin
      Application.CreateForm(TFormTelaAssistenteLancamentoContasReceber,FormTelaAssistenteLancamentoContasReceber);
      FormTelaAssistenteLancamentoContasReceber.edtEmissao.Date          := SQLTemplatePDVDDEMISSAO.Value;
      FormTelaAssistenteLancamentoContasReceber.edtTotal.Value           := SQLTemplatePDVDN2TOTPED.Value;
      FormTelaAssistenteLancamentoContasReceber.edtEmissao.ReadOnly      := True;
      FormTelaAssistenteLancamentoContasReceber.edtEmissao.TabStop       := False;
      FormTelaAssistenteLancamentoContasReceber.edtTotal.ReadOnly        := True;
      FormTelaAssistenteLancamentoContasReceber.edtTotal.TabStop         := False;
      FormTelaAssistenteLancamentoContasReceber.ComboEmpresa.KeyValue    := SQLTemplateEMPRICOD.Value;
      FormTelaAssistenteLancamentoContasReceber.ComboEmpresa.ReadOnly    := True;
      FormTelaAssistenteLancamentoContasReceber.ComboEmpresa.TabStop     := False;
      FormTelaAssistenteLancamentoContasReceber.ComboCliente.Value       := ComboClientePedido.Value;
      FormTelaAssistenteLancamentoContasReceber.ComboCliente.ReadOnly    := True;
      FormTelaAssistenteLancamentoContasReceber.ComboCliente.TabStop     := False;
      FormTelaAssistenteLancamentoContasReceber.ComboTipoDoc.Value       := ComboTipoDoc.Value;
      FormTelaAssistenteLancamentoContasReceber.ComboPortador.Value      := ComboPortador.Value;
      FormTelaAssistenteLancamentoContasReceber.ComboHistorico.Value     := ComboHistoricoPadrao.Value;
      FormTelaAssistenteLancamentoContasReceber.edtDescricao.Text        := MemoHistorico.Lines.Text;
      FormTelaAssistenteLancamentoContasReceber.ShowModal;
      if FormTelaAssistenteLancamentoContasReceber.ModalResult = MrOk then
        begin
          if not FormTelaAssistenteLancamentoContasReceber.RxTable.IsEmpty then
            begin
              SQLContasReceber.first;
              While not SQLContasReceber.eof do
                  SQLContasReceber.Delete;
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
                  SQLContasReceber.ParamByName('PDVDA13ID').AsString := SQLTemplatePDVDA13ID.AsString;
                  SQLContasReceber.Open;
                  SQLContasReceber.Append;
                  if ContadorDocumento > 0 then
                    SQLContasReceberCTRCA30NRODUPLICBANCO.AsString  := DocumentoSTR;
                  SQLContasReceberCTRCA254HIST.AsString             := FormTelaAssistenteLancamentoContasReceber.RxTableDESCR.AsString;
                  SQLContasReceberPDVDA13ID.Value                   := SQLTemplatePDVDA13ID.Value;
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
                      SQLContasReceberNUMEICOD.AsVariant              := ComboNumerarioVista.KeyValue;
                      SQLContasReceberCTRCINROPARC.AsInteger          := I;
                      I := I-1;
                    end
                  else
                    begin
                      SQLContasReceberNUMEICOD.AsVariant              := ComboNumerarioPrazo.KeyValue;
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
              SQLContasReceber.ParamByName('PDVDA13ID').AsString := SQLTemplatePDVDA13ID.AsString;
              SQLContasReceber.Open;
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

procedure TFormCadastroPedidoVenda.SQLTemplateAfterPost(DataSet: TDataSet);
begin
  inherited;
  if IniciouVenda then
    begin
      SQLContasReceber.Close;
      Button3.Click;
      IniciouVenda := False;
    end;
end;

procedure TFormCadastroPedidoVenda.MNGerarPedidoParcialClick(Sender: TObject);
begin
  inherited;
  if SQLTemplatePDVDCSTATUS.Value = 'P' then
    begin
      GerandoPedidoParcial := True;
      Application.CreateForm(TFormTelaPedidoParcial,FormTelaPedidoParcial);
      SQLPedidoVendaItem.First;
      FormTelaPedidoParcial.TblQtde.Open;
      while not SQLPedidoVendaItem.eof do
        begin
          if SQLPedidoVendaItemPVITN3QUANTVEND.Value > 0 then
            begin
              FormTelaPedidoParcial.TblQtde.Append;
              FormTelaPedidoParcial.TblQtdePRODICOD.Value      := SQLPedidoVendaItemPRODICOD.Value;
              FormTelaPedidoParcial.TblQtdePRODA60DESCR.Value  := dm.SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',SQLPedidoVendaItemPRODICOD.AsString);
              FormTelaPedidoParcial.TblQtdePVITN3VLRUNIT.Value := SQLPedidoVendaItemPVITN2VLRUNIT.Value;
              FormTelaPedidoParcial.TblQtdePVITN3QUANT.Value   := SQLPedidoVendaItemPVITN3QUANT.Value;
              FormTelaPedidoParcial.TblQtdeVlrTotalItem.Value  := SQLPedidoVendaItemPVITN3TOTVENDITEM.Value;
              FormTelaPedidoParcial.TblQtdeQTDEATENDIDO.Value  := SQLPedidoVendaItemPVITN3QUANTVEND.Value;
              FormTelaPedidoParcial.TblQtdeCLIEA13ID.Value     := SQLTemplateCLIEA13ID.Value;
              FormTelaPedidoParcial.TblQtdeVENDICOD.Value      := SQLTemplateVENDICOD.Value;
              FormTelaPedidoParcial.TblQtdePLRCICOD.Value      := SQLTemplatePLRCICOD.Value;
              FormTelaPedidoParcial.TblQtdeROTAICOD.Value      := SQLTemplateROTAICOD.Value;
              FormTelaPedidoParcial.TblQtdePDVDA13ID.Value     := SQLTemplatePDVDA13ID.Value;
              FormTelaPedidoParcial.TblQtde.Post;
            end;
          SQLPedidoVendaItem.Next;
        end;
      FormTelaPedidoParcial.ShowModal;
      if FormTelaPedidoParcial.ModalResult = MROK then
        begin
          // Lancar Cabecalho
          SQLGeral.Close;
          SQLGeral.sql.Clear;
          SQLGeral.SQL.Add('Select * from PedidoVenda where PDVDA13ID = "'+FormTelaPedidoParcial.TblQtdePDVDA13ID.Value+'"');
          SQLGeral.Open;
          SQLTemplate.Append;
          IniciouVenda := False;
          SQLTemplatePDVDDEMISSAO.Asstring     := FormatDateTime('dd/mm/yyyy',now);
          SQLTemplatePDVDDENTREGA.Asstring     := FormatDateTime('dd/mm/yyyy',now);
          SQLTemplateEMPRICOD.Value            := SQLGeral.FindField('EMPRICOD').Value;
          SQLTemplateCLIEA13ID.Value           := SQLGeral.FindField('CLIEA13ID').Value;
          SQLTemplateVENDICOD.AsVariant        := SQLGeral.FindField('VENDICOD').AsVariant;
          SQLTemplatePLRCICOD.AsVariant        := SQLGeral.FindField('PLRCICOD').AsVariant;
          SQLTemplateROTAICOD.AsVariant        := SQLGeral.FindField('ROTAICOD').AsVariant;
          SQLTemplateTRANICOD.AsVariant        := SQLGeral.FindField('TRANICOD').AsVariant;
          SQLTemplatePDVDN2VLRFRETE.Value      := 0;
          SQLTemplatePDVDN2VLRDESC.Value       := 0;
          SQLTemplatePDVDN2VLRDESCPROM.Value   := 0;
          SQLTemplatePDVDN2TOTPROD.Value       := 0;
          SQLTemplatePDVDN2TOTPED.Value        := 0;
          SQLTemplatePDVDN2TOTPROD.Value       := 0;
          SQLTemplatePDVDINROTALAO.AsVariant   := SQLGeral.FindField('PDVDINROTALAO').AsVariant;
          SQLTemplateVEICA13ID.AsVariant       := SQLGeral.FindField('VEICA13ID').AsVariant;
          SQLTemplatePDVD8PLACAVEIC.AsVariant  := SQLGeral.FindField('PDVD8PLACAVEIC').AsVariant;
          SQLTemplatePDVDCTIPOFRETE.AsVariant  := SQLGeral.FindField('PDVDCTIPOFRETE').AsVariant;
          SQLTemplatePDVDCTIPO.AsVariant       := SQLGeral.FindField('PDVDCTIPO').AsVariant;
          SQLTemplateSERIA5COD.AsVariant       := SQLGeral.FindField('SERIA5COD').AsVariant;
          SQLTemplatePDVDCSTATUS.Value         := 'A';
          SQLTemplate.Post;
          // Lancar Itens
          FormTelaPedidoParcial.TblQtde.First;
          While not FormTelaPedidoParcial.TblQtde.Eof do
            begin
              if FormTelaPedidoParcial.TblQtdeQTDEATENDIDO.Value > 0 then
                begin
                  SQLPedidoVendaItem.Close;
                  SQLPedidoVendaItem.ParamByName('PDVDA13ID').AsString := SQLTemplatePDVDA13ID.AsString;
                  SQLPedidoVendaItem.Open;
                  SQLPedidoVendaItem.Append;
                  SQLPedidoVendaItemPDVDA13ID.Value       := SQLTemplatePDVDA13ID.Value;
                  SQLPedidoVendaItemPRODICOD.Value        := FormTelaPedidoParcial.TblQtdePRODICOD.Value;
                  SQLPedidoVendaItemPVITN2VLRUNIT.Value   := FormTelaPedidoParcial.TblQtdePVITN3VLRUNIT.Value;
                  SQLPedidoVendaItemPVITN3QUANT.Value     := FormTelaPedidoParcial.TblQtdeQTDEATENDIDO.Value;
                  SQLPedidoVendaItemPVITN2PERCDESC.Value  := 0;
                  SQLPedidoVendaItemPVITN2VLRDESC.Value   := 0;
                  SQLPedidoVendaItemPVITN2PERCCOMIS.Value := 0;
                  SQLPedidoVendaItem.Post;
                  CalculaTotal;
                  // Corrige a Quantidade no pedido Original (Coluna=PVITN3QUANTVEND) usada para fazer o parcial
                  SQLGeral.Close;
                  SQLGeral.sql.Clear;
                  SQLGeral.SQL.Add('Select * from PedidoVendaItem where PDVDA13ID = "'+FormTelaPedidoParcial.TblQtdePDVDA13ID.Value+'" and PRODICOD = '+
                                   FormTelaPedidoParcial.TblQtdePRODICOD.Asstring);
                  SQLGeral.Open;
                  SQLGeral.Edit;
                  SQLGeral.FindField('PVITN3QUANTVEND').Value := sqlgeral.FindField('PVITN3QUANTVEND').Value -
                                                                 FormTelaPedidoParcial.TblQtdeQTDEATENDIDO.Value;
                  SQLGeral.Post;
                end;
              FormTelaPedidoParcial.TblQtde.Next;
            end;
          SQLPedidoVendaItem.Close;
          SQLPedidoVendaItem.ParamByName('PDVDA13ID').AsString := SQLTemplatePDVDA13ID.AsString;
          SQLPedidoVendaItem.Open;
        end;
      GerandoPedidoParcial := False;
    end
  else
    ShowMessage('O Status do pedido selecionado não permite gerar entrega parcial!');
end;

procedure TFormCadastroPedidoVenda.SQLContasReceberNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLContasReceberCTRCCEMITIDOBOLETO.Value  := 'N' ;
  SQLContasReceberCTRCN2VLR.Value           := 0 ;
  SQLContasReceberCTRCN2DESCFIN.Value       := 0 ;

  if Dm.SQLConfigCrediarioCFCRN2PERCMULATRAS.AsFloat > 0 then
    SQLContasReceberCTRCN2TXMULTA.Value     := Dm.SQLConfigCrediarioCFCRN2PERCMULATRAS.Value
  else
    SQLContasReceberCTRCN2TXMULTA.Value     := 0 ;

  if Dm.SQLConfigCrediarioCFCRN2PERCJURATRAS.AsFloat > 0 then
    SQLContasReceberCTRCN2TXJURO.Value      := Dm.SQLConfigCrediarioCFCRN2PERCJURATRAS.Value
  else
    SQLContasReceberCTRCN2TXJURO.Value      := 0 ;

  SQLContasReceberCTRCN2TOTREC.Value      := 0 ;
  SQLContasReceberCTRCN2TOTJUROREC.Value  := 0 ;
  SQLContasReceberCTRCN2TOTMULTAREC.Value := 0 ;
  SQLContasReceberCTRCN2TOTDESCREC.Value  := 0 ;
  SQLContasReceberCTRCCSTATUS.Value       := 'A' ;
  SQLContasReceberCTRCA5TIPOPADRAO.Value  := 'CRD';
  // Tipo de Registro no Contas a Receber -> N = Normal C = Credito D = Debito;
  SQLContasReceberCTRCCTIPOREGISTRO.Value := 'N';
end;

procedure TFormCadastroPedidoVenda.MnIgualarSaldoaEntregarcomoSaldoPedidoClick(
  Sender: TObject);
begin
  inherited;
  if SQLTemplatePDVDCSTATUS.Value = 'P' then
    begin
      if Pergunta('Não','Tem Certeza que deseja igualar o saldo a entregar dos itens deste pedido parcial?') then
        begin
          SQLPedidoVendaItem.First;
          while not SQLPedidoVendaItem.Eof do
            begin
              SQLPedidoVendaItem.Edit;
              SQLPedidoVendaItemPVITN3QUANTVEND.Value := SQLPedidoVendaItemPVITN3QUANT.Value; 
              SQLPedidoVendaItem.Post;
              SQLPedidoVendaItem.Next;
            end;
        end;
    end;
end;

procedure TFormCadastroPedidoVenda.MnVisualizarPedidoOrcamentoAtualClick(
  Sender: TObject);
begin
  inherited;
  if (DM.SQLTerminalAtivoTERMCTIPO.AsString <> '') then
    begin
      SQLPedidoItens.Close;
      SQLPedidoItens.SQL.Text := 'Select * From PEDIDOVENDAITEM Where PDVDA13ID = "' + SQLTemplate.FieldByName('PDVDA13ID').AsString + '"' ;
      SQLPedidoItens.Open;
      if DM.SQLTerminalAtivoTERMACTIPOIMPPEDORC.AsString <> '' then
        Case DM.SQLTerminalAtivoTERMACTIPOIMPPEDORC.AsString[1] of
          '0' : begin
                  // Prepara Impressão de Pedido/Orçamento
                  // Padrao 80 Colunas bobina;
                  Informa('A opção de impressão para bobina 80 colunas, não está disponível no módulo Faturamento!');
                  Exit;
                end;
          '1' : begin
                  // Padrão Matricial/Deskjet/Laser
                  if DM.SQLConfigGeralCFGEA255PATHREPORT.AsString <> '' then
                    begin
                      DM.Report.DiscardSavedData    := True;
                      DM.Report.ReportName          := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Pedido Orcamento.rpt';
                      DM.Report.ReportTitle         := 'Orçamento';
                      DM.Report.WindowStyle.Title   := 'Orçamento';
                      if Dm.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString <> '' then
                        begin
                          DM.Report.Printer.Name    := Dm.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString;
                          DM.Report.Output          := toWindow;
                        end;

                      DM.Report.Execute;
                    end
                  else
                    Informa('O pedido/orçamento padrão não foi encontrado, verifique suas configurações!');
                end;
          '2' : begin
                  // Personalizado
                  if FileExists(DM.SQLTerminalAtivoTERMTPATHPEDORC.AsString) then
                    begin
                      DM.Report.DiscardSavedData    := True;
                      DM.Report.ReportName          := DM.SQLTerminalAtivoTERMTPATHPEDORC.Value;
                      DM.Report.ReportTitle         := 'Orçamento';
                      DM.Report.WindowStyle.Title   := 'Orçamento';
                      if Dm.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString <> '' then
                        begin
                          DM.Report.Output          := toWindow;
                          DM.Report.Printer.Name    := Dm.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString;
                        end;

                      DM.Report.Execute;
                    end
                  else
                    Informa('O arquivo para impressão de pedido/orçamento personalizado não foi encontrado, verifique suas consigurações!');
                end;
          '3' : begin
                  // Arquivo Externo .exe
                  if FileExists('PedidoVenda.exe') then
                    begin
                      WinExec(PChar('PedidoVenda.exe '+ SQLTemplatePDVDA13ID.asString),SW_SHOW);
                    end
                  else
                    begin
                      Informa('Você configurou o sistema para imprimir pedido/orçamento com arquivo externo, mas o arquivo não foi encontrado favor verificar!');
                    end;
                end;
        end
      else
        begin
          if DM.SQLConfigGeralCFGEA255PATHREPORT.AsString <> '' then
            begin
              DM.Report.DiscardSavedData    := True;
              DM.Report.ReportName          := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Pedido Orcamento.rpt';
              DM.Report.ReportTitle         := 'Orçamento';
              DM.Report.WindowStyle.Title   := 'Orçamento';
              if Dm.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString <> '' then
                begin
                  DM.Report.Output          := toPrinter;
                  DM.Report.Printer.Name    := Dm.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString;
                end
              else
                DM.Report.Output            := toWindow;

              DM.Report.Execute;
            end
          else
            Informa('O pedido/orçamento padrão não foi encontrado, verifique suas configurações!');
        end;
    end
  else
    begin
      Informa('Este orçamento não será impresso porque as configurações estão incompletas!');
    end;
end;

procedure TFormCadastroPedidoVenda.SQLPedidoVendaItemPVITN2VLRUNITChange(
  Sender: TField);
begin
  inherited;
  if (SQLPedidoVendaItemPVITN2VLRUNIT.Value > 0) and (SQLPedidoVendaItemPVITN3QUANT.Value > 0)
    and (SQLPedidoVendaItem.State in dsEditModes) then
    SQLPedidoVendaItemPVITN3TOTVENDITEM.Value := SQLPedidoVendaItemPVITN2VLRUNIT.Value *
                                                 SQLPedidoVendaItemPVITN3QUANT.Value;
end;

procedure TFormCadastroPedidoVenda.SQLPedidoVendaItemPVITN3QUANTChange(
  Sender: TField);
begin
  inherited;
  if (SQLPedidoVendaItemPVITN2VLRUNIT.Value > 0) and (SQLPedidoVendaItemPVITN3QUANT.Value > 0)
    and (SQLPedidoVendaItem.State in dsEditModes) then
    SQLPedidoVendaItemPVITN3TOTVENDITEM.Value := SQLPedidoVendaItemPVITN2VLRUNIT.Value *
                                                 SQLPedidoVendaItemPVITN3QUANT.Value;
end;

procedure TFormCadastroPedidoVenda.CalculaTotal ;
begin
  SQLTotal.Close;
  SQLTotal.SQL.Clear;
  SQLTotal.SQL.Add('Select Sum(PVITN3TOTVENDITEM) as TotalGeral from PedidoVendaItem where PDVDA13ID = "'+SQLTemplatePDVDA13ID.Value+'"');
  SQLTotal.Prepare;
  SQLTotal.Open;
  try
    SQLtemplate.Edit;
    try
      SQLTemplatePDVDN2TOTPROD.value := SQLTotal.FieldByName('TotalGeral').Value;
    except
      SQLTemplatePDVDN2TOTPROD.value := 0;
    end;
    SQLtemplate.Post;
  except
    Application.ProcessMessages;
  end;
end ;

procedure TFormCadastroPedidoVenda.ppHeaderBand2BeforePrint(
  Sender: TObject);
begin
  inherited;
  LBCLI.Caption    := 'Cliente..: '+ dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','"'+SQLTemplateCLIEA13ID.AsString+'"');
  LBEnd.Caption    := 'Endereco.: '+ dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA60ENDRES','"'+SQLTemplateCLIEA13ID.AsString+'"');
  LBCidade.Caption := 'Cidade...: '+ dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA60CIDRES','"'+SQLTemplateCLIEA13ID.AsString+'"');
  LBBairro.Caption := 'Bairro...: '+ dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA60BAIRES','"'+SQLTemplateCLIEA13ID.AsString+'"');
  LBCep.Caption    := 'Cep..: '    + dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA8CEPRES','"'+SQLTemplateCLIEA13ID.AsString+'"');
  LBUF.Caption     := 'UF...: '    + dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA2UFRES','"'+SQLTemplateCLIEA13ID.AsString+'"');
  LBFone.Caption   := 'Fone.....: '+ dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA15FONE1','"'+SQLTemplateCLIEA13ID.AsString+'"');
  lbCNPJ.Caption   := 'Cnpj.....: '+ dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA14CGC','"'+SQLTemplateCLIEA13ID.AsString+'"');
  LBIE.Caption     := 'Insc.Est.: '+ dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA20IE','"'+SQLTemplateCLIEA13ID.AsString+'"');
end;

procedure TFormCadastroPedidoVenda.SQLTemplateBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  if RdAbertos.Checked then SQLtemplate.MacroByName('MSituacao').Value  := '(PDVDCSTATUS = "A" or PDVDCSTATUS = "E" or PDVDCSTATUS = "P")';
  if RdFaturado.Checked then SQLtemplate.MacroByName('MSituacao').Value := '(PDVDCSTATUS = "F")';
  if RdCanc.Checked then SQLtemplate.MacroByName('MSituacao').Value     := '(PDVDCSTATUS = "C")';
end;

procedure TFormCadastroPedidoVenda.MnTrocarStatusdoPedidoparaAbertoClick(
  Sender: TObject);
begin
  inherited;
  if SQLTemplatePDVDCSTATUS.Value <> 'C' then
    begin
      SQLTemplate.Edit;
      SQLTemplatePDVDCSTATUS.Value := 'A';
      SQLTemplate.Post;
    end
  else
    ShowMessage('O pedido está Cancelado, Verifique!');
end;

procedure TFormCadastroPedidoVenda.EditCdProdutoExit(Sender: TObject);
begin
  inherited;
  if EditCdProduto.Text <> '' then
    if FindProduct(EditCdProduto,SQLPedidoVendaItem.FieldByName('PRODICOD')) then
      DbEdit11.SetFocus;
end;

procedure TFormCadastroPedidoVenda.AcessaProdutoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := SQLPedidoVendaItem.FindField('PRODICOD');
  FieldOrigem := 'PRODICOD';
  ComboProdutos.SetFocus;
  CriaFormulario(TFormCadastroProduto,'FormCadastroProduto',False,True,False,'');
end;

end.
