unit DataModulo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  VarSYS, DataModuloTemplate, Db, DBTables, RxQuery, DBLists, IdComponent,
  IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP, IdBaseComponent,
  IdMessage, DBXpress, SqlExpr, FMTBcd, IBSQL, IBDatabase, IBCustomDataSet,
  IBQuery, ZConnection, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ACBrBase, ACBrBAL, ACBrPosPrinter, ACBrNFeDANFEClass, ACBrNFeDANFeESCPOS,
  ACBrDFe, ACBrNFe ;

type
  TDM = class(TDMTemplate)
    SQLConfigGeral: TRxQuery;
    SQLConfigGeralCFGECATIVAEXPORT: TStringField;
    SQLConfigGeralCFGECATUSALDODIA: TStringField;
    SQLConfigGeralCFGEITIPMOVCONTENT: TIntegerField;
    SQLConfigGeralCFGEITIPMOVCONTSAI: TIntegerField;
    SQLConfigGeralCFGEA255PATHBLOQ: TStringField;
    SQLConfigGeralCFGECSETAREMPADREL: TStringField;
    SQLConfigGeralCFGECTROCAEMPLOGON: TStringField;
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
    SQLUsuario: TRxQuery;
    SQLUsuarioUSUAICOD: TIntegerField;
    SQLUsuarioUSUAA60LOGIN: TStringField;
    SQLUsuarioUSUAA5SENHA: TStringField;
    SQLUsuarioPENDENTE: TStringField;
    SQLUsuarioREGISTRO: TDateTimeField;
    SQLConfigGeralEmpresaPadraoCalcField: TStringField;
    SQLEmpresa: TRxQuery;
    SQLConfigVenda: TRxQuery;
    SQLConfigVendaCFVEN3MAXLIMCRED: TBCDField;
    SQLConfigVendaCFVEN2PERCLIMCRED: TBCDField;
    SQLConfigVendaCFVECTIPOLIMCRED: TStringField;
    SQLConfigVendaCFVECRENDCONJNOLIM: TStringField;
    SQLConfigVendaCFVECARREDPARCELA: TStringField;
    SQLTerminalAtivo: TRxQuery;
    SQLTerminalAtivoTERMICOD: TIntegerField;
    SQLTerminalAtivoTERMA60DESCR: TStringField;
    SQLTerminalAtivoTERMCINFDADOSCLICP: TStringField;
    SQLConfigCrediario: TRxQuery;
    SQLConfigCompra: TRxQuery;
    SQLConfigGeralEmpresaMatrizFilialLookUp: TStringField;
    SQLProduto: TRxQuery;
    DSSQLProduto: TDataSource;
    SQLProdutoFilho: TRxQuery;
    SQLProdutoSaldo: TRxQuery;
    SQLProdutoSaldoEMPRICOD: TIntegerField;
    SQLProdutoSaldoPRODICOD: TIntegerField;
    SQLProdutoSaldoPSLDN3QTDE: TBCDField;
    SQLConfigCompraCFCOITIPMOVCANCNFE: TIntegerField;
    SQLConfigCompraCFCOCALTPRCPRODENT: TStringField;
    SQLConfigCompraCFCOCTESTAITENSNFE: TStringField;
    SQLConfigCompraCFCOCTOTPRCVENPROD: TStringField;
    SQLConfigCompraCFCOCNUMSERPRODENT: TStringField;
    SQLConfigCompraCFCOCIMPLEGORDCOMP: TStringField;
    SQLConfigCompraCFCOITIPMOVNFE: TIntegerField;
    SQLLimparPreVenda: TRxQuery;
    SQLConfigVendaOPESICODCUPOM: TIntegerField;
    SQLConfigVendaOPESICODCANCCUPOM: TIntegerField;
    SQLConfigVendaOPESICODNF: TIntegerField;
    SQLConfigVendaOPESICODCANCNF: TIntegerField;
    SQLConfigVendaOPESICODRETORNO: TIntegerField;
    SQLConfigVendaOPESICODCANCTROCA: TIntegerField;
    SQLConfigVendaOPESICODTROCA: TIntegerField;
    SQLConfigGeralCFGEA255PATHREPORT: TStringField;
    SQLConfigVendaCFVECPARC0ENTRBAIX: TStringField;
    SQLConfigGeralCFGECTESTEANPROD: TStringField;
    SQLConfigGeralCFGECTESTREFPROD: TStringField;
    SQLPreco: TRxQuery;
    SQLConfigVendaTPRCICOD: TIntegerField;
    SQLProdutoOrdemPesquisa: TRxQuery;
    SQLProdutoOrdemPesquisaPDOPIORDEM: TIntegerField;
    SQLProdutoOrdemPesquisaPDOPA30CAMPO: TStringField;
    SQLConfigVendaCFVECFAZVENDCONSIG: TStringField;
    SQLConfigVendaOPESICODDEVOL: TIntegerField;
    SQLTerminalAtivoTERMA60IMPAUTORIZCOM: TStringField;
    SQLTerminalAtivoTERMA60IMPFICHACLI: TStringField;
    SQLConfigConta: TRxQuery;
    SQLConfigContaCFGCINIVEL1: TBCDField;
    SQLConfigContaCFGCNIVEIS: TIntegerField;
    SQLConfigContaCFGCINIVEL2: TBCDField;
    SQLConfigContaCFGCINIVEL3: TBCDField;
    SQLConfigContaCFGCINIVEL4: TBCDField;
    SQLConfigContaCFGCINIVEL5: TBCDField;
    SQLConfigContaCFGCINIVEL6: TBCDField;
    SQLConfigContaCFGCINIVEL7: TBCDField;
    SQLConfigContaCFGCINIVEL8: TBCDField;
    SQLConfigContaCFGCINIVEL9: TBCDField;
    SQLConfigContaCFGCINIVEL10: TBCDField;
    SQLConfigContaCFGCA30MASCARA: TStringField;
    SQLConfigContaPENDENTE: TStringField;
    SQLConfigContaREGISTRO: TDateTimeField;
    DSSQLPlanodeContas: TDataSource;
    SQLPlanodeContas: TRxQuery;
    SQLPlanodeContasPLCTA15COD: TStringField;
    SQLPlanodeContasPLCTICODREDUZ: TIntegerField;
    SQLPlanodeContasPLCTINIVEL: TIntegerField;
    SQLPlanodeContasPLCTA15CODPAI: TStringField;
    SQLPlanodeContasPLCTA30CODEDIT: TStringField;
    SQLPlanodeContasPLCTA60DESCR: TStringField;
    SQLPlanodeContasPLCTCANALSINT: TStringField;
    SQLPlanodeContasPLCTCTIPOSALDO: TStringField;
    SQLPlanodeContasPENDENTE: TStringField;
    SQLPlanodeContasREGISTRO: TDateTimeField;
    SQLConta: TRxQuery;
    SQLContaPLCTA15COD: TStringField;
    SQLContaPLCTICODREDUZ: TIntegerField;
    SQLContaPLCTINIVEL: TIntegerField;
    SQLContaPLCTA15CODPAI: TStringField;
    SQLContaPLCTA30CODEDIT: TStringField;
    SQLContaPLCTA60DESCR: TStringField;
    SQLContaPLCTCANALSINT: TStringField;
    SQLContaPLCTCTIPOSALDO: TStringField;
    SQLContaPENDENTE: TStringField;
    SQLContaREGISTRO: TDateTimeField;
    SQLConfigCrediarioCFCRN2PERCMULATRAS: TBCDField;
    SQLConfigCrediarioCFCRN2PERCJURATRAS: TBCDField;
    SQLConfigCrediarioCFCRINRODIASTOLJUR: TIntegerField;
    SQLConfigCrediarioCFCRINRODIASTOLMUL: TIntegerField;
    SQLConfigCrediarioCFCRN2PERCTAXACOBR: TBCDField;
    SQLConfigCrediarioCFCRN2PERCADIANT: TBCDField;
    SQLConfigCrediarioCFCRINRODIASADIANT: TIntegerField;
    SQLConfigCrediarioCFCRINRODIACARTA1A: TIntegerField;
    SQLConfigCrediarioCFCRINRODIACARTA2A: TIntegerField;
    SQLConfigCrediarioCFCRINRODIACARTA3A: TIntegerField;
    SQLConfigCrediarioCFCRINRODIACARTA4A: TIntegerField;
    SQLConfigCrediarioCFCRA255PATHCART1A: TStringField;
    SQLConfigCrediarioCFCRA255PATHCART2A: TStringField;
    SQLConfigCrediarioCFCRA255PATHCART3A: TStringField;
    SQLConfigCrediarioCFCRCCONSMOTBLOQ: TStringField;
    SQLConfigCrediarioCFCRCCONSCARTAVISO: TStringField;
    SQLConfigCrediarioCFCRA255PATHRELSPC: TStringField;
    SQLConfigCrediarioCFCRA255PATHAUTDEP: TStringField;
    SQLConfigCrediarioCFCRCBLOQVENDCLI1AV: TStringField;
    SQLConfigCrediarioCFCRCBLOQVENDCLI2AV: TStringField;
    SQLConfigCrediarioCFCRCBLOQVENDCLI3AV: TStringField;
    SQLConfigGeralCFGEA255EXEDUPLICATA: TStringField;
    SQLConfigVendaCFVECTESTALIMTCRED: TStringField;
    SQLConfigVendaCFVECSUBDEBNOLIMITE: TStringField;
    SQLParcelas: TRxQuery;
    SQLCliente: TRxQuery;
    SQLConfigVendaCFVEINROCASASDEC: TIntegerField;
    SQLTerminalAtivoECFA13ID: TStringField;
    SQLConfigGeralCFGECESTOQUEPORLOTE: TStringField;
    SQLConfigCrediarioCFCRA254PATHMALADIRETA: TStringField;
    SQLTerminalAtivoTERMCSQLORDENADO: TStringField;
    SQLConfigInventario: TQuery;
    SQLConfigInventarioOPESICODENTRADA: TIntegerField;
    SQLConfigInventarioOPESICODSAIDA: TIntegerField;
    SQLConfigGeralCFGECALCPRECOAUTOM: TStringField;
    SQLConfigVendaCFVEN2PERCCOFINS: TBCDField;
    SQLConfigVendaCFVEN2PERCENCARG: TBCDField;
    SQLConfigVendaCFVEN2PERCPIS: TBCDField;
    SQLConfigFinanceiro: TRxQuery;
    SQLConfigFinanceiroOPTEICODPAGAR: TIntegerField;
    SQLConfigFinanceiroOPBCICODPAGAR: TIntegerField;
    SQLConfigFinanceiroNUMEICODPAGAR: TIntegerField;
    SQLConfigFinanceiroCTCRICODPAGAR: TIntegerField;
    SQLConfigFinanceiroCGFIA254HISTPAGAR: TStringField;
    SQLConfigFinanceiroOPTEICODRECEBER: TIntegerField;
    SQLConfigFinanceiroOPBCICODRECEBER: TIntegerField;
    SQLConfigFinanceiroNUMEICODRECEBER: TIntegerField;
    SQLConfigFinanceiroCGFIA254HISTRECEBE: TStringField;
    SQLConfigFinanceiroALINICODRECEBER: TIntegerField;
    SQLConfigFinanceiroPORTICODRECEBER: TIntegerField;
    SQLConfigFinanceiroCGFIUSATESOURARIA: TStringField;
    SQLConfigFinanceiroALINICODPAGAR: TIntegerField;
    SQLTerminalAtivoEMPRICOD: TIntegerField;
    SQLConfigVendaCFVECQUITAPARCONV: TStringField;
    SQLConfigGeralCFGECUSASALDODIARIO: TStringField;
    SQLConfigGeralCFGECTIPOMARGLUCRO: TStringField;
    SQLConfigVendaCFVECFARREDVLRVEND: TStringField;
    SQLTeleEntrega: TRxQuery;
    SQLTeleEntregaTELEA13ID: TStringField;
    SQLTeleEntregaEMPRICOD: TIntegerField;
    SQLTeleEntregaTERMICOD: TIntegerField;
    SQLTeleEntregaTELEICOD: TIntegerField;
    SQLTeleEntregaCUPOA13ID: TStringField;
    SQLTeleEntregaNOFIA13ID: TStringField;
    SQLTeleEntregaPDVDA13ID: TStringField;
    SQLTeleEntregaTELEDENTRPREV: TDateTimeField;
    SQLTeleEntregaTELEDENTRPREV1: TDateTimeField;
    SQLTeleEntregaTELEDENTRPREV2: TDateTimeField;
    SQLTeleEntregaTELEDENTRREAL: TDateTimeField;
    SQLTeleEntregaTELEA60SOLICITANTE: TStringField;
    SQLTeleEntregaTELEA60ENTRPARANOME: TStringField;
    SQLTeleEntregaTELEA60ENTRPARAEND: TStringField;
    SQLTeleEntregaTELEA60ENTRPARABAI: TStringField;
    SQLTeleEntregaTELEA60ENTRPARACID: TStringField;
    SQLTeleEntregaTELEA2ENTRPARAUF: TStringField;
    SQLTeleEntregaTELEA15ENTRPARAFONE: TStringField;
    SQLTeleEntregaTELEA60RECPORNOME: TStringField;
    SQLTeleEntregaTELEADREC: TDateTimeField;
    SQLTeleEntregaTELEA1016MENSG: TMemoField;
    SQLTeleEntregaPENDENTE: TStringField;
    SQLTeleEntregaREGISTRO: TDateTimeField;
    UpdateSQLTeleEntrega: TUpdateSQL;
    SQLUsuarioUSUACUSERMASTER: TStringField;
    DBTemp: TDatabase;
    SQLTerminalAtivoTERMA60IMPPEDIDO: TStringField;
    SQLTeleEntregaTPVDICOD: TIntegerField;
    SQLTeleEntregaFUNCA13ID: TStringField;
    SQLConfigVendaCFVECINFDADOVENDA: TStringField;
    SQLTeleEntregaTELEA30OCASIAO: TStringField;
    SQLConfigGeralOPESICODTRANSFENTR: TIntegerField;
    SQLConfigGeralOPESICODTRANSFSAID: TIntegerField;
    SQLTerminalAtivoTERMINRODECQUANT: TIntegerField;
    SQLConfigCompraCFCOCTESTPRODFORN: TStringField;
    SQLConfigCompraPORTICOD: TIntegerField;
    SQLConfigCompraTPDCICOD: TIntegerField;
    SQLConfigCompraCFCOCINFDADOSFRETE: TStringField;
    SQLConfigTransportadora: TRxQuery;
    SQLConfigTransportadoraCFTROPFUICODCREDITO: TIntegerField;
    SQLConfigTransportadoraOPFUA60DESCRCREDITO: TStringField;
    SQLConfigTransportadoraCFTROPFUICODDEBITO: TIntegerField;
    SQLConfigTransportadoraOPFUA60DESCRDEBITO: TStringField;
    DsSQLConfigTransportadora: TDataSource;
    SQLConfigCompraCFCOCALTPERCIPI: TStringField;
    SQLConfigCompraCFCOCALTVLRCOMPRA: TStringField;
    SQLConfigCompraCFCOCALTVLRCUSTO: TStringField;
    SQLConfigCompraCFCOCEXCLUIPEDENT: TStringField;
    SQLConfigCompraCFCOCVERIFICAVLRMENOR: TStringField;
    SQLConfigFinanceiroCGFICINFPLCTBXSIMP: TStringField;
    SQLConfigFinanceiroOPTEICODESTORNOCRD: TIntegerField;
    SQLConfigFinanceiroOPBCICODESTORNOCRD: TIntegerField;
    SQLConfigFinanceiroOPBCICODESTORNODEB: TIntegerField;
    SQLConfigFinanceiroOPTEICODESTORNODEB: TIntegerField;
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
    SQLEmpresaEMPRBLOGOTIPO: TBlobField;
    SQLEmpresaEMPRA15CODEAN: TStringField;
    SQLEmpresaEMPRA60CONTATO: TStringField;
    SQLConfigGeralCFGECBLOQ: TStringField;
    SQLConfigGeralCFGECUSAMARGLIQ: TStringField;
    SQLEmpresaEMPRCLUCROREAL: TStringField;
    SQLEmpresaEMPRN2VLRFUNDOPROMO: TBCDField;
    SQLUsuarioUSUACPERMVMOVCX: TStringField;
    SQLUsuarioUSUACPERMVVENDAS: TStringField;
    SQLUsuarioUSUACVRESFINFORN: TStringField;
    SQLConfigGeralCFGEDBLOQ: TDateTimeField;
    SQLConfigCompraCFCOCPREVREALNFCOMPRAFIN: TStringField;
    SQLConfigCompraCFCOCNIMPFINPEDCOMP: TStringField;
    SQLConfigCrediarioCFCRA255PATHCARTPE: TStringField;
    SQLTerminalAtivoTERMA255MSGCARNE: TStringField;
    SQLUsuarioUSUACRESUMOFIN: TStringField;
    SQLPopUP: TQuery;
    SQLPopUPPOPTEMPO: TStringField;
    SQLPopUPCFGCCEXIBIRPOPTARE: TStringField;
    SQLProdutoSaldoPSLDN3QTDMIN: TBCDField;
    SQLProdutoSaldoPSLDN3QTDMAX: TBCDField;
    SQLTerminalAtivoTERMCMOVESTOQUE: TStringField;
    SQLUsuarioUSUACPERMITEADM: TStringField;
    DSNovoContato: TDataSource;
    SQLNovoContato: TRxQuery;
    SQLNovoContatoEMPRICOD: TIntegerField;
    SQLNovoContatoCONTDCONTATO: TDateTimeField;
    SQLNovoContatoCONTICOD: TIntegerField;
    SQLNovoContatoVENDICOD: TIntegerField;
    SQLNovoContatoCLIEA13ID: TStringField;
    SQLNovoContatoTPCLICOD: TIntegerField;
    SQLNovoContatoTPCTICOD: TIntegerField;
    SQLNovoContatoTPRTICOD: TIntegerField;
    SQLNovoContatoTPCTICODPROX: TIntegerField;
    SQLNovoContatoCONTDPROXCONT: TDateTimeField;
    SQLNovoContatoCONTDREAL: TDateTimeField;
    SQLNovoContatoCONTA255OBS: TStringField;
    SQLNovoContatoPENDENTE: TStringField;
    SQLNovoContatoREGISTRO: TDateTimeField;
    SQLNovoContatoUSUAICOD: TIntegerField;
    TblTicketPreVendaFin: TTable;
    TblTicketPreVendaFinPedICod: TStringField;
    TblTicketPreVendaFinParcela: TStringField;
    TblTicketPreVendaFinVencimento: TDateField;
    TblTicketPreVendaFinValor: TFloatField;
    TblTicketPreVendaFinPortador: TStringField;
    TblTicketPreVendaFinNumerario: TStringField;
    TblTicketPreVendaFinTipopadrao: TStringField;
    TblTicketPreVendaCab: TTable;
    TblTicketPreVendaCabTicketNumero: TStringField;
    TblTicketPreVendaCabVendedor: TStringField;
    TblTicketPreVendaCabPlano: TStringField;
    TblTicketPreVendaCabCliente: TStringField;
    TblTicketPreVendaCabFoneCliente: TStringField;
    TblTicketPreVendaCabTotalNominal: TFloatField;
    TblTicketPreVendaCabTaxaCrediario: TFloatField;
    TblTicketPreVendaCabAcrescimo: TFloatField;
    TblTicketPreVendaCabDesconto: TFloatField;
    TblTicketPreVendaCabTotalGeral: TFloatField;
    TblTicketPreVendaCabNroCreditCard: TStringField;
    TblTicketPreVendaCabNumerarioPagto: TStringField;
    TblTicketPreVendaCabMensagem: TStringField;
    TblTicketPreVendaCabDataEntrega: TStringField;
    TblTicketPreVendaCabTipoVenda: TStringField;
    TblTicketPreVendaCabPessoaRecebeNome: TStringField;
    TblTicketPreVendaCabPessoaRecebeEnder: TStringField;
    TblTicketPreVendaCabPessoaRecebeBai: TStringField;
    TblTicketPreVendaCabPessoaRecebeCid: TStringField;
    TblTicketPreVendaCabPessoaRecebeUF: TStringField;
    TblTicketPreVendaCabPessoaRecebeFone: TStringField;
    TblTicketPreVendaCabMensagem2: TMemoField;
    TblTicketPreVendaCabVlrEntrada: TFloatField;
    TblTicketPreVendaCabNomeClienteVenda: TStringField;
    TblTicketPreVendaCabDocumentoClienteVenda: TStringField;
    TblTicketPreVendaCabEnderecoClienteVenda: TStringField;
    TblTicketPreVendaCabCidadeClienteVenda: TStringField;
    TblTicketPreVendaCabOBSImpressaoCupom: TStringField;
    TblTicketPreVendaCabTERMICOD: TIntegerField;
    TblTicketPreVendaCabPRVDICOD: TIntegerField;
    TblTicketPreVendaCabDataEmissao: TDateTimeField;
    TblTicketPreVendaCabFoneClienteVenda: TStringField;
    TblTicketPreVendaCabUsuarioVendaSTR: TStringField;
    TblTicketPreVendaCabPlacaVeiculo: TStringField;
    TblTicketPreVendaCabTroco: TFloatField;
    TblTicketPreVendaCabPEDIDOORCAMENTO: TStringField;
    TblTicketPreVendaCabDisplayNumero: TIntegerField;
    TblTicketPreVendaCabMesaCodigo: TIntegerField;
    TblTicketPreVendaCabContaCodigo: TIntegerField;
    TblTicketPreVendaCabLevarCasa: TStringField;
    TblTicketPreVendaCabBairroClienteVenda: TStringField;
    TblTicketPreVendaCabKM: TStringField;
    TblTicketPreVendaCabClienteDependente: TStringField;
    TblTicketPreVendaItem: TTable;
    TblTicketPreVendaItemCodigo: TIntegerField;
    TblTicketPreVendaItemDescricao: TStringField;
    TblTicketPreVendaItemQuantidade: TFloatField;
    TblTicketPreVendaItemValorUnitario: TFloatField;
    TblTicketPreVendaItemValorTotal: TFloatField;
    TblTicketPreVendaItemDesconto: TFloatField;
    TblTicketPreVendaItemMarca: TStringField;
    TblTicketPreVendaItemReferencia: TStringField;
    TblTicketPreVendaItemUnidade: TStringField;
    TblTicketPreVendaItemTroca: TStringField;
    TblTicketPreVendaItemComplemento: TStringField;
    TblTicketPreVendaItemImpCozinha: TStringField;
    TblTicketPreVendaItemImpVale: TStringField;
    SQLTerminalAtivoTERMCIMPPREVENDA: TStringField;
    SQLEmpresaEMPRA3CRT: TStringField;
    SQLTerminalAtivoTERMCMOVTRANSF: TStringField;
    SQLEmpresaEMPRIENDNRO: TIntegerField;
    TblTicketPreVendaCabEmpresaEmit: TStringField;
    TblTicketPreVendaCabEmpresaEmit_Ender: TStringField;
    TblTicketPreVendaCabEmpresaEmit_Bairro: TStringField;
    TblTicketPreVendaCabEmpresaEmit_Cidade: TStringField;
    TblTicketPreVendaCabEmpresaEmit_Fone: TStringField;
    SQLTerminalAtivoTERMA254PATHTERM: TStringField;
    SQLEmpresaEMPRA75EMAILUSUARIO: TStringField;
    SQLEmpresaEMPRA50EMAILHOST: TStringField;
    SQLEmpresaEMPRIEMAILPORTA: TIntegerField;
    SQLEmpresaEMPRA50EMAILSENHA: TStringField;
    SQLEmpresaEMPRA1SSL: TStringField;
    SQLEmpresaEMPRA60EMAILCOPIA: TStringField;
    SQLEmpresaEMPRA1TSL: TStringField;
    SQLEmpresaEMPRA100CERTIFSERIE: TStringField;
    SQLEmpresaEMPRA35CERTIFSENHA: TStringField;
    SQLEmpresaEMPRIMUNICODFED: TIntegerField;
    SQLEmpresaEMPRIUFCODFED: TIntegerField;
    ACBrNFe: TACBrNFe;
    ACBrNFeDANFeESCPOS: TACBrNFeDANFeESCPOS;
    ACBrPosPrinter: TACBrPosPrinter;
    procedure DataModuleCreate(Sender: TObject);
    procedure SQLConfigContaBeforeEdit(DataSet: TDataSet);
    procedure SQLConfigContaBeforePost(DataSet: TDataSet);
    procedure SQLConfigContaNewRecord(DataSet: TDataSet);
    procedure SQLPlanodeContasBeforeInsert(DataSet: TDataSet);
    procedure SQLPlanodeContasBeforePost(DataSet: TDataSet);
    procedure SQLPlanodeContasNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    GrupoAtual, SubGrupoAtual, CodigoProdutoCompra, SeqItemCompra : Integer;
    TemClienteDiferente, GerandoMovtoDiverso, GerandoPedidoCompra, GerandoNotaCompra, InserindoItemPC, ImportandoPedidoCompra,
    InserindoItemNC, ProcurandoProduto, IncluindoGrade : Boolean;
    TipoPlanoContas, TabelaPrecoAssistente, CodTarefa, ID_NotaFiscal_Boleto : String;
    VlrCustoNovoGradeCompra, VlrVendaVarejoNovoGradeCompra, VlrVendaAtacNovoGradeCompra : Double;
    ConfigEtiqueta : Integer;
  end;

var
  DM: TDM;

implementation

uses UnitLibrary, TelaSplash;

{$R *.DFM}

procedure TDM.DataModuleCreate(Sender: TObject);
var DiaSemana : String;
begin
  inherited;
  FormSplash.lbDados.Caption := 'Abrindo Tabela de Parametros...'; FormSplash.lbDados.Update;
  SQLConfigGeral.Open;
  SQLConfigVenda.Open ;
  SQLConfigCrediario.Open ;
  SQLConfigCompra.Open ;
  SQLConfigInventario.Open;
  SQLConfigFinanceiro.Open;
  SQLPopUP.Open;
  FormSplash.lbDados.Caption := 'Abrindo Tabela de Filiais...'; FormSplash.lbDados.Update;
  SQLEmpresa.Open ;
  FormSplash.lbDados.Caption := 'Abrindo Tabela de Terminais...'; FormSplash.lbDados.Update;
  SQLTerminalAtivo.Close;
  SQLTerminalAtivo.MacroByName('MFiltro').Value := 'TERMICOD = ' + IntToStr(TerminalAtual);
  SQLTerminalAtivo.Open;
  FormSplash.lbDados.Caption := 'Abrindo Tabela de Usuarios...'; FormSplash.lbDados.Update;
  SQLUsuario.Open ;

  DataBaseSistema := StrToDate(FormatDateTime('dd/mm/yyyy',Now));

  FormSplash.lbDados.Caption := 'Verificando Licença de uso...'; FormSplash.lbDados.Update;
  if FileExists('Licenca.dll') and (SQLConfigGeralCFGEDBLOQ.AsString = '') then
    begin
      SQLConfigGeral.Edit;
      SQLConfigGeralCFGEDBLOQ.AsString := FormatDateTime('dd/mm/yyyy',Now+90);
      SQLConfigGeral.Post;
    end;

  DiaSemana := FormatDateTime('ddd',now);
  if FileExists('Licenca.dll') and (SQLConfigGeralCFGECBLOQ.AsString <> 'S') and (SQLConfigGeralCFGEDBLOQ.Value < Now) and (DiaSemana <> 'sáb') and (DiaSemana <> 'dom') then
    begin
      SQLConfigGeral.Edit;
      SQLConfigGeralCFGECBLOQ.AsString := 'S';
      SQLConfigGeral.Post;
    end;

  FormSplash.lbDados.Caption := 'Licença de uso Válida até => '+FormatDateTime('dd/mm/yyyy',SQLConfigGeralCFGEDBLOQ.Value) ; FormSplash.lbDados.Update;
  Sleep(1000);
  FormSplash.close;
end;

procedure TDM.SQLConfigContaBeforeEdit(DataSet: TDataSet);
Var
  Existe:Boolean;
begin
  SQLTemplate.SQL.Text:='Select Count(*) as CONTAS From PLANODECONTAS';
  SQLTemplate.Open;
  Existe := SQLTemplate.FindField('CONTAS').asInteger > 0;
  SQLTemplate.Close;
  If Existe Then
    Begin
      ShowMessage('A estrutura do Plano de Contas não pode ser alterada se já existirem Contas!');
      Abort;
    End;
  inherited;
end;

procedure TDM.SQLConfigContaBeforePost(DataSet: TDataSet);
Var
  Soma,NumGraus,Teste,NivelGraus:Integer;
  Mascara:String;
begin
  inherited;
  If DataSet.State = dsInsert Then
    Begin
      Soma:=SQLConfigContaCFGCINIVEL1.asInteger+
            SQLConfigContaCFGCINIVEL2.asInteger+
            SQLConfigContaCFGCINIVEL3.asInteger+
            SQLConfigContaCFGCINIVEL4.asInteger+
            SQLConfigContaCFGCINIVEL5.asInteger+
            SQLConfigContaCFGCINIVEL6.asInteger+
            SQLConfigContaCFGCINIVEL7.asInteger+
            SQLConfigContaCFGCINIVEL8.asInteger+
            SQLConfigContaCFGCINIVEL9.asInteger+
            SQLConfigContaCFGCINIVEL10.AsInteger;
      If Soma>15 Then
        Begin
          Application.Messagebox('A soma dos Graus deve ser no máximo 15.','GVDASA Informa',MB_Ok+MB_IconInformation);
          SysUtils.Abort;
        End;
      Mascara:='';
      For NumGraus:=1 to SQLConfigContaCFGCNIVEIS.asInteger Do
        Begin
          If (NumGraus>1) Then Mascara:=Mascara+'.';
          Teste:=1;
          Teste:=SQLConfigConta.FieldByName('CFGCINIVEL'+IntToStr(NumGraus)).AsInteger;
          For NivelGraus:=1 to Teste Do
             Mascara:=Mascara+'_';
        End;
      SQLConfigContaCFGCA30MASCARA.asString:=Mascara;
    End;
  DataSet.FindField('REGISTRO').AsDateTime := Now ;
  DataSet.FindField('PENDENTE').AsString := 'S' ;
end;

procedure TDM.SQLConfigContaNewRecord(DataSet: TDataSet);
var
  I:Integer;
begin
  inherited;
  DataSet.FieldByName('CFGCNIVEIS').Value:=1;
  for I:= 1 to 10 do
    DataSet.FieldByName('CFGCINIVEL'+IntToStr(I)).Value:=1;
end;

procedure TDM.SQLPlanodeContasBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  inherited;
  If DM.SQLPlanodeContas.Active Then DM.SQLPlanodeContas.Close;
  DM.SQLPlanodeContas.MacroByName('MFiltro').asString:=DM.SQLPlanodeContas.Fields[0].FieldName + ' IS NULL';
  DM.SQLPlanodeContas.Open;

end;

procedure TDM.SQLPlanodeContasBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('REGISTRO').AsDateTime := Now ;
  DataSet.FindField('PENDENTE').AsString   := 'S' ;

end;

procedure TDM.SQLPlanodeContasNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('PLCTCANALSINT').Value  := 'S';
  DataSet.FieldByName('PLCTCTIPOSALDO').Value := 'A';
end;

end.
