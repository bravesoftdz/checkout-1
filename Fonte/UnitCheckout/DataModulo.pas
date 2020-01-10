unit DataModulo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  BDE, VarSYS, DataModuloTemplate, Db, DBTables, RxQuery, MemTable, DBLists,
  UCrpe32, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppProd, ppClass, UnitLibrary,
  ppReport, ppBands, ppCache, ppPrnabl, ppCtrls, ppStrtch, ppMemo, Serial,
  ExtCtrls, IBDatabase, IBCustomDataSet, IBQuery, IBUpdateSQL,  Inifiles,
  IBEvents, IBSQL, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP, IdBaseComponent, IdMessage, DBXpress, SqlExpr,
  ZConnection, ZAbstractRODataset, ZAbstractDataset, ZDataset, ACBrBase,
  ACBrBAL, ACBrPosPrinter, ACBrNFeDANFEClass, ACBrNFeDANFeESCPOS, ACBrDFe,
  ACBrNFe, pcnConversao, ACBrUtil, ACBrMail, ACBrNFeDANFeRLClass, ACBrDevice,
  ZAbstractConnection, DBClient, RestClient, RestUtils, pcnConversaoNFe,
  ACBrDFeReport, ACBrDFeDANFeReport, Principal, ShellAPI;

type
  TDM = class(TDMTemplate)
    SQLUsuario: TRxQuery;
    SQLUsuarioUSUAICOD: TIntegerField;
    SQLUsuarioUSUAA60LOGIN: TStringField;
    SQLUsuarioUSUAA5SENHA: TStringField;
    SQLTerminalAtivo: TRxQuery;
    SQLTerminalAtivoTERMICOD: TIntegerField;
    SQLTerminalAtivoTERMCTIPO: TStringField;
    SQLTerminalAtivoTERMCSTATUSCAIXA: TStringField;
    SQLTerminalAtivoTERMDSTATUSCAIXA: TDateTimeField;
    SQLTerminalAtivoTERMA60DESCR: TStringField;
    SQLExtratoProduto: TRxQuery;
    SQLTerminalAtivoCLIEA13ID: TStringField;
    SQLTerminalAtivoVENDICOD: TIntegerField;
    SQLTerminalAtivoPLRCICOD: TIntegerField;
    SQLTerminalAtivoTERMCMOVESTOQUE: TStringField;
    SQLTerminalAtivoTERMCUSAVENDEDOR: TStringField;
    SQLTerminalAtivoTERMCUSALIMITECRED: TStringField;
    SQLTerminalAtivoTERMA60IMPCARNE: TStringField;
    SQLTerminalAtivoTERMA60IMPPEDIDO: TStringField;
    SQLTerminalAtivoTERMA60IMPORCAMEN: TStringField;
    SQLTerminalAtivoTERMA60IMPCHEQUE: TStringField;
    SQLTerminalAtivoTERMA60IMPTCKAFCX: TStringField;
    SQLTerminalAtivoTERMCUSAMOEDA: TStringField;
    SQLTerminalAtivoTERMCIMPRIMECHEQUE: TStringField;
    SQLTerminalAtivoTERMCCONFIMPCARNE: TStringField;
    SQLTerminalAtivoTERMCIMPCONFDIVIDA: TStringField;
    SQLTerminalAtivoTERMCINFDADOSCLICP: TStringField;
    SQLTerminalAtivoTERMCIMPIDCUPOM: TStringField;
    SQLTerminalAtivoTERMA255MSGCARNE: TStringField;
    SQLTerminalAtivoTERMCIMPBARRASPED: TStringField;
    SQLTerminalAtivoTERMCINFDADOCLIPAD: TStringField;
    SQLTerminalAtivoTERMINRODECQUANT: TIntegerField;
    SQLTerminalAtivoTERMINUMEVISTA: TIntegerField;
    SQLTerminalAtivoTERMINUMEPRAZO: TIntegerField;
    SQLConfigCrediario: TRxQuery;
    SQLConfigCrediarioCFCRN2PERCJURATRAS: TFloatField;
    SQLConfigCrediarioCFCRN2PERCMULATRAS: TFloatField;
    SQLConfigCrediarioCFCRN2PERCADIANT: TFloatField;
    SQLConfigCrediarioCFCRINRODIASADIANT: TIntegerField;
    SQLConfigCrediarioCFCRCCONSMOTBLOQ: TStringField;
    SQLConfigCrediarioCFCRCCONSCARTAVISO: TStringField;
    SQLConfigCrediarioCFCRA255PATHRELSPC: TStringField;
    SQLConfigCrediarioCFCRA255PATHAUTDEP: TStringField;
    SQLConfigCrediarioCFCRINRODIASTOLJUR: TIntegerField;
    SQLConfigCrediarioCFCRINRODIASTOLMUL: TIntegerField;
    SQLClienteDadChq: TRxQuery;
    SQLTotalizadorCaixa: TRxQuery;
    SQLTotalizar: TRxQuery;
    SQLTotalizadorCaixaTOTAICOD: TIntegerField;
    SQLTotalizadorCaixaTOTAA60DESCR: TStringField;
    SQLTotalizadorCaixaTOTACTRANSFSALDO: TStringField;
    SQLTotalizadorCaixaTOTACDEBITOCREDITO: TStringField;
    SQLTotalizadorCaixaTOTAIORDLIST: TIntegerField;
    SQLOperacaoCaixa: TRxQuery;
    SQLOperacaoCaixaOPCXICOD: TIntegerField;
    SQLOperacaoCaixaOPCXCDEBITOCREDITO: TStringField;
    SQLOperacaoCaixaOPCXA5SIGLA: TStringField;
    SQLOperacaoCaixaOPCXA60DESCR: TStringField;
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
    SQLTerminalAtivoTERMCATIVO: TStringField;
    SQLTerminalAtivoUSUAICODATIVO: TIntegerField;
    MemCtRecParc: TTable;
    MemCtRecParcCUPOA13ID: TStringField;
    MemCtRecParcCTRCA13ID: TStringField;
    MemCtRecParcCTRCINROPARC: TIntegerField;
    MemCtRecParcCTRCDVENC: TDateTimeField;
    MemCtRecParcCTRCN2VLR: TFloatField;
    DSSQLCupomCons: TDataSource;
    DSMemCtRecParc: TDataSource;
    SQLTerminalAtivoECFA13ID: TStringField;
    SQLConfigVenda: TRxQuery;
    SQLConfigVendaCFVEN2PERCLIMCRED: TFloatField;
    SQLConfigVendaCFVEN3MAXLIMCRED: TFloatField;
    SQLConfigVendaCFVECTIPOLIMCRED: TStringField;
    SQLConfigVendaCFVECARREDPARCELA: TStringField;
    SQLConfigVendaCFVECTIPOIMPPED: TStringField;
    SQLConfigVendaCFVECDADOSCHQPDV: TStringField;
    SQLConfigVendaCFVECUSADEBCREDCLI: TStringField;
    SQLConfigVendaCGVECTESTAITENSNF: TStringField;
    SQLConfigVendaCFVEN3ALIQISSQN: TFloatField;
    SQLConfigVendaCFVECIMPLEGPEDVENF: TStringField;
    SQLConfigVendaCFVEN3PERCICMFRETE: TFloatField;
    SQLConfigVendaCFVEA255OBSPADNF: TStringField;
    SQLConfigVendaCFVEITEMPOCONSPROD: TIntegerField;
    SQLConfigVendaCFVECQUITARPARCHQ: TStringField;
    SQLConfigVendaCFVEA255OBSPADRPED: TStringField;
    SQLConfigVendaOPESICODCUPOM: TIntegerField;
    SQLConfigVendaOPESICODCANCCUPOM: TIntegerField;
    SQLConfigVendaOPESICODNF: TIntegerField;
    SQLConfigVendaOPESICODCANCNF: TIntegerField;
    SQLConfigVendaCFVECRENDCONJNOLIM: TStringField;
    SQLTerminalAtivoTERMA5ECFPORTACOM: TStringField;
    SQLConfigVendaOPESICODRETORNO: TIntegerField;
    DatabaseTerm: TDatabase;
    SQLCupom: TRxQuery;
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
    SQLCupomCUPON2TOTITENS: TFloatField;
    SQLCupomCUPON2DESC: TFloatField;
    SQLCupomCUPON2ACRESC: TFloatField;
    SQLCupomCUPON2TOTITENSRET: TFloatField;
    SQLCupomCUPOINRO: TIntegerField;
    SQLCupomCUPOCTIPOPADRAO: TStringField;
    SQLCupomCUPON2CONVTAXA: TFloatField;
    SQLCupomCUPOINROORDCOMPRA: TIntegerField;
    SQLCupomCUPOA13IDTROCA: TStringField;
    SQLCupomCUPON2VLRCOMISSAO: TFloatField;
    SQLCupomCUPOA20CODANT: TStringField;
    SQLCupomCUPODCANC: TDateTimeField;
    SQLCupomCUPON2JUROATRAS: TFloatField;
    SQLCupomCUPON2MULTAATRAS: TFloatField;
    SQLCupomCUPODPAGTOCONSIG: TDateTimeField;
    SQLCupomPENDENTE: TStringField;
    SQLCupomREGISTRO: TDateTimeField;
    DSSQLCupom: TDataSource;
    SQLCupomItem: TRxQuery;
    DSSQLCupomItem: TDataSource;
    SQLCupomItemCUPOA13ID: TStringField;
    SQLCupomItemCPITIPOS: TIntegerField;
    SQLCupomItemPRODICOD: TIntegerField;
    SQLCupomItemCPITCSTATUS: TStringField;
    SQLCupomItemCPITN3QTDTROCA: TFloatField;
    SQLCupomItemCPITN3VLRUNIT: TFloatField;
    SQLCupomItemCPITN3VLRCUSTUNIT: TFloatField;
    SQLCupomItemCPITN2DESC: TFloatField;
    SQLCupomItemCPITN3VLRUNITLUCR: TFloatField;
    SQLCupomItemCOITN2ICMSALIQ: TFloatField;
    SQLCupomItemVENDICOD: TIntegerField;
    SQLCupomItemPENDENTE: TStringField;
    SQLCupomItemREGISTRO: TDateTimeField;
    SQLCupomNumerario: TRxQuery;
    DSSQLCupomNumerario: TDataSource;
    SQLContasReceber: TRxQuery;
    DSSQLContasReceber: TDataSource;
    SQLCupomNumerarioCUPOA13ID: TStringField;
    SQLCupomNumerarioNUMEICOD: TIntegerField;
    SQLCupomNumerarioCONMCSTATUS: TStringField;
    SQLCupomNumerarioCPNMN2VLR: TFloatField;
    SQLCupomNumerarioPENDENTE: TStringField;
    SQLCupomNumerarioREGISTRO: TDateTimeField;
    SQLCupomNumerarioCPNMCAUTENT: TStringField;
    SQLCupomNumerarioCLIEA13ID: TStringField;
    SQLProxCodCTRC: TRxQuery;
    SQLProdutoSaldo: TRxQuery;
    SQLProdutoSaldoEMPRICOD: TIntegerField;
    SQLProdutoSaldoPRODICOD: TIntegerField;
    SQLProdutoSaldoPSLDN3QTDE: TFloatField;
    SQLProdutoFilho: TRxQuery;
    DSSQLProduto: TDataSource;
    SQLProduto: TRxQuery;
    SQLTerminalAtivoTERMCIMPPREVENDA: TStringField;
    SQLConfigVendaOPESICODCANCTROCA: TIntegerField;
    SQLConfigVendaOPESICODTROCA: TIntegerField;
    SQLCupomCUPON3BONUSTROCA: TFloatField;
    SQLCupomCUPODENTREGA: TDateTimeField;
    SQLCupomTPVDICOD: TIntegerField;
    SQLConfigVendaCFVECINFDADOVENDA: TStringField;
    SQLEmpresa: TRxQuery;
    SQLConfigGeralEmpresaLookup: TStringField;
    SQLConfigCrediarioCFCRN2PERCTAXACOBR: TFloatField;
    SQLUsuarioUSUACVERDADCOMPRCLI: TStringField;
    SQLUsuarioUSUACDESBLOQCLI: TStringField;
    SQLUsuarioUSUAN2PERCDESC: TFloatField;
    SQLUsuarioUSUACVENDCLIBLOQ: TStringField;
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
    TblTicketPreVendaItem: TTable;
    TblTicketPreVendaItemCodigo: TIntegerField;
    TblTicketPreVendaItemQuantidade: TFloatField;
    TblTicketPreVendaItemValorUnitario: TFloatField;
    TblTicketPreVendaItemValorTotal: TFloatField;
    TblTicketPreVendaItemDesconto: TFloatField;
    TblTicketPreVendaItemMarca: TStringField;
    TblTicketPreVendaItemReferencia: TStringField;
    SQLCupomIt: TRxQuery;
    SQLCupomItCUPOA13ID: TStringField;
    SQLCupomItCPITIPOS: TIntegerField;
    SQLCupomItPRODICOD: TIntegerField;
    SQLCupomItCPITCSTATUS: TStringField;
    SQLCupomItCPITN3QTD: TFloatField;
    SQLCupomItCPITN3QTDTROCA: TFloatField;
    SQLCupomItCPITN3VLRUNIT: TFloatField;
    SQLCupomItCPITN2DESC: TFloatField;
    SQLCupomItVENDICOD: TIntegerField;
    SQLCup: TRxQuery;
    SQLCupomCUPON3CREDTAXA: TFloatField;
    SQLPreVD: TRxQuery;
    SQLPreVDIt: TRxQuery;
    SQLPreVendaItem2: TRxQuery;
    SQLPreVendaItem2TERMICOD: TIntegerField;
    SQLPreVendaItem2PRVDICOD: TIntegerField;
    SQLPreVendaItem2PVITIPOS: TIntegerField;
    SQLPreVendaItem2PRODICOD: TIntegerField;
    SQLPreVendaItem2PVITN3QTD: TFloatField;
    SQLPreVendaItem2PVITN3VLRUNIT: TFloatField;
    SQLPreVendaItem2PVITN3VLRCUSTUNIT: TFloatField;
    SQLPreVendaItem2PVITN2DESC: TFloatField;
    SQLPreVendaItem2VENDICOD: TIntegerField;
    SQLPreVendaItem2PVITN3VLRUNITLUCR: TFloatField;
    SQLPreVendaItem2PVITCSTATUS: TStringField;
    SQLPreVendaItem2PVITN2ICMSALIQ: TFloatField;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberTERMICOD: TIntegerField;
    SQLContasReceberCTRCICOD: TIntegerField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCTRCCSTATUS: TStringField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCN2VLR: TFloatField;
    SQLContasReceberCTRCN2DESCFIN: TFloatField;
    SQLContasReceberNUMEICOD: TIntegerField;
    SQLContasReceberPORTICOD: TIntegerField;
    SQLContasReceberCTRCN2TXJURO: TFloatField;
    SQLContasReceberCTRCN2TXMULTA: TFloatField;
    SQLContasReceberCTRCA5TIPOPADRAO: TStringField;
    SQLContasReceberCTRCDULTREC: TDateTimeField;
    SQLContasReceberCTRCN2TOTREC: TFloatField;
    SQLContasReceberCTRCN2TOTJUROREC: TFloatField;
    SQLContasReceberCTRCN2TOTMULTAREC: TFloatField;
    SQLContasReceberCTRCN2TOTDESCREC: TFloatField;
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
    SQLContasReceberCTRCN2TOTMULTACOBR: TFloatField;
    SQLContasReceberBANCA5CODCHQ: TStringField;
    SQLContasReceberCTRCA10AGENCIACHQ: TStringField;
    SQLContasReceberCTRCA15CONTACHQ: TStringField;
    SQLContasReceberCTRCA15NROCHQ: TStringField;
    SQLContasReceberCTRCA60TITULARCHQ: TStringField;
    SQLContasReceberCTRCA20CGCCPFCHQ: TStringField;
    SQLContasReceberCTRCDDEPOSCHQ: TDateTimeField;
    SQLContasReceberALINICOD: TIntegerField;
    TblTicketPreVendaCabMensagem2: TMemoField;
    SQLTerminalAtivoTERMCECFIMPRCONFDIV: TStringField;
    SQLTerminalAtivoTERMCAUTENTRFIMCUP: TStringField;
    SQLConfigVendaCFVECPARC0ENTRBAIX: TStringField;
    SQLConfigGeralCFGEA255PATHREPORT: TStringField;
    SQLConfigVendaCFVEA250MSGBLOQ: TStringField;
    SQLTerminalAtivoTERMCHIDECLIVENDPL: TStringField;
    SQLTerminalAtivoTERMCIMPRDADINTCUP: TStringField;
    SQLTerminalAtivoTERMCCONFFECHCUPOM: TStringField;
    SQLCliDadosCompra: TRxQuery;
    SQLCliDadosCompraCLIEA13ID: TStringField;
    SQLCliDadosCompraCLIEDPRICOMPRA: TDateTimeField;
    SQLCliDadosCompraCLIEDULTCOMPRA: TDateTimeField;
    SQLConfigCrediarioCFCRCBLOQVENDCLI1AV: TStringField;
    SQLConfigCrediarioCFCRCBLOQVENDCLI2AV: TStringField;
    SQLConfigCrediarioCFCRCBLOQVENDCLI3AV: TStringField;
    SQLPreco: TRxQuery;
    SQLConfigVendaTPRCICOD: TIntegerField;
    TblCupomCab: TTable;
    TblCupomItemVend: TTable;
    TblCupomItemRet: TTable;
    TblCupomFinan: TTable;
    SQLProdutoOrdemPesquisa: TRxQuery;
    SQLProdutoOrdemPesquisaPDOPIORDEM: TIntegerField;
    SQLProdutoOrdemPesquisaPDOPA30CAMPO: TStringField;
    SQLClienteDadChqCLIEA13ID: TStringField;
    SQLClienteDadChqCLIEA60RAZAOSOC: TStringField;
    SQLClienteDadChqBANCA5COD: TStringField;
    SQLClienteDadChqCLIEA5AGENCIA: TStringField;
    SQLClienteDadChqCLIEA10CONTA: TStringField;
    SQLClienteDadChqCLIEA60TITULAR: TStringField;
    SQLClienteDadChqCLIEDABERTCONTA: TDateTimeField;
    SQLCupomCUPOCCONSIG: TStringField;
    SQLConfigVendaCFVECFAZVENDCONSIG: TStringField;
    SQLConfigVendaOPESICODDEVOL: TIntegerField;
    SQLCliDadosCompraMTBLICOD: TIntegerField;
    SQLConfigVendaMTBLICODVENDCONSIG: TIntegerField;
    SQLConfigVendaCFVECIMPPREVDCOD: TStringField;
    SQLPreVenda: TRxQuery;
    SQLPreVendaItem1: TRxQuery;
    SQLPreVendaNumerario: TRxQuery;
    SQLPreVendaNumerarioTERMICOD: TIntegerField;
    SQLPreVendaNumerarioPRVDICOD: TIntegerField;
    SQLPreVendaNumerarioNUMEICOD: TIntegerField;
    SQLPreVendaNumerarioPVNUN2VLR: TFloatField;
    SQLPreVendaContasReceber: TRxQuery;
    SQLPreVendaContasReceberPVCRICOD: TIntegerField;
    SQLPreVendaContasReceberTERMICOD: TIntegerField;
    SQLPreVendaContasReceberPRVDICOD: TIntegerField;
    SQLPreVendaContasReceberNUMEICOD: TIntegerField;
    SQLPreVendaContasReceberPVCRINROPARC: TIntegerField;
    SQLPreVendaContasReceberPVCRDVENC: TDateTimeField;
    SQLPreVendaContasReceberPVCRN2VLR: TFloatField;
    SQLPreVendaContasReceberPVCRN2DESCFIN: TFloatField;
    SQLPreVendaItem1TERMICOD: TIntegerField;
    SQLPreVendaItem1PRVDICOD: TIntegerField;
    SQLPreVendaItem1PVITIPOS: TIntegerField;
    SQLPreVendaItem1PRODICOD: TIntegerField;
    SQLPreVendaItem1PVITN3QTD: TFloatField;
    SQLPreVendaItem1PVITN3VLRUNIT: TFloatField;
    SQLPreVendaItem1PVITN3VLRCUSTUNIT: TFloatField;
    SQLPreVendaItem1PVITN2DESC: TFloatField;
    SQLPreVendaItem1VENDICOD: TIntegerField;
    SQLPreVendaItem1PVITN3VLRUNITLUCR: TFloatField;
    SQLPreVendaItem1PVITCSTATUS: TStringField;
    SQLPreVendaItem1PVITN2ICMSALIQ: TFloatField;
    SQLConfigVendaCFVECFINVENDADPREVD: TStringField;
    TblCupomCabCUPOA13ID: TStringField;
    TblCupomCabEmpresaEmit: TStringField;
    TblCupomCabEmpresaEmit_Ender: TStringField;
    TblCupomCabEmpresaEmit_Bairro: TStringField;
    TblCupomCabEmpresaEmit_Cidade: TStringField;
    TblCupomCabEmpresaEmit_Fone: TStringField;
    TblCupomCabCliente: TStringField;
    TblCupomCabCliente_Ender: TStringField;
    TblCupomCabCliente_Bairro: TStringField;
    TblCupomCabCliente_Cidade: TStringField;
    TblCupomCabCliente_CPF: TStringField;
    TblCupomCabQtde_Devolvida: TIntegerField;
    TblCupomCabQtde_Retirada: TIntegerField;
    TblCupomCabCondPagto: TStringField;
    TblCupomCabVendedor: TStringField;
    TblCupomCabDataEmissao: TDateField;
    TblCupomCabObservacoes: TStringField;
    TblCupomCabTotalBruto: TFloatField;
    TblCupomCabEncargosFin: TFloatField;
    TblCupomCabDescRetorno: TFloatField;
    TblCupomCabSaldoAnterior: TFloatField;
    TblCupomCabTotalDescontos: TFloatField;
    TblCupomCabTotalLiquido: TFloatField;
    TblCupomCabCreditoTroco: TFloatField;
    TblCupomCabTotalPagar: TFloatField;
    TblCupomItemVendCUPOA13ID: TStringField;
    TblCupomItemVendItem: TIntegerField;
    TblCupomItemVendCodigo: TIntegerField;
    TblCupomItemVendDescricao: TStringField;
    TblCupomItemVendQuant: TFloatField;
    TblCupomItemVendValorUnitario: TFloatField;
    TblCupomItemVendCodigoAntigo: TStringField;
    TblCupomItemRetCUPOA13ID: TStringField;
    TblCupomItemRetItem: TIntegerField;
    TblCupomItemRetCodigo: TIntegerField;
    TblCupomItemRetDescricao: TStringField;
    TblCupomItemRetQuant: TFloatField;
    TblCupomItemRetValorUnitario: TFloatField;
    TblCupomItemRetCodigoAntigo: TStringField;
    TblCupomFinanCUPOA13ID: TStringField;
    TblCupomFinanDataVenc: TDateField;
    TblCupomFinanValor: TFloatField;
    Report: TCrpe;
    SQLPedidoVenda: TRxQuery;
    SQLPedidoVendaPDVDA13ID: TStringField;
    SQLPedidoVendaEMPRICOD: TIntegerField;
    SQLPedidoVendaPDVDICOD: TIntegerField;
    SQLPedidoVendaVENDICOD: TIntegerField;
    SQLPedidoVendaCLIEA13ID: TStringField;
    SQLPedidoVendaTRANICOD: TIntegerField;
    SQLPedidoVendaPLRCICOD: TIntegerField;
    SQLPedidoVendaPDVDDEMISSAO: TDateTimeField;
    SQLPedidoVendaPDVDN2VLRFRETE: TFloatField;
    SQLPedidoVendaPDVDA30NROPEDCOMP: TStringField;
    SQLPedidoVendaPDVDA30COMPRADOR: TStringField;
    SQLPedidoVendaPDVDCTIPO: TStringField;
    SQLPedidoVendaPDVDCSTATUS: TStringField;
    SQLPedidoVendaPDVDN2VLRDESC: TFloatField;
    SQLPedidoVendaPDVDN2TOTPROD: TFloatField;
    SQLPedidoVendaPDVDN2TOTPED: TFloatField;
    SQLPedidoVendaPDVDTOBS: TStringField;
    SQLPedidoVendaREGISTRO: TDateTimeField;
    SQLPedidoVendaPENDENTE: TStringField;
    SQLPedidoVendaPDVDN2VLRDESCPROM: TFloatField;
    SQLPedidoVendaPDVDCTIPOFRETE: TStringField;
    SQLPedidoVendaPDVDDENTREGA: TDateTimeField;
    SQLPedidoVendaPDVDINROTALAO: TIntegerField;
    SQLPedidoVendaItem: TRxQuery;
    SQLPedidoVendaItemPDVDA13ID: TStringField;
    SQLPedidoVendaItemPVITIITEM: TIntegerField;
    SQLPedidoVendaItemPRODICOD: TIntegerField;
    SQLPedidoVendaItemPVITN3QUANT: TFloatField;
    SQLPedidoVendaItemPVITN2VLRUNIT: TFloatField;
    SQLPedidoVendaItemPVITN2PERCDESC: TFloatField;
    SQLPedidoVendaItemPVITN2VLRDESC: TFloatField;
    SQLPedidoVendaItemREGISTRO: TDateTimeField;
    SQLPedidoVendaItemPENDENTE: TStringField;
    SQLPedidoVendaItemPDVDA60OBS: TStringField;
    SQLPedidoVendaItemPVITN2PERCCOMIS: TFloatField;
    SQLPedidoVendaItemPVITN3QUANTVEND: TFloatField;
    DBRel: TDatabase;
    DSTblPedidoItens: TDataSource;
    PipePedVd: TppBDEPipeline;
    PipePedVdIt: TppBDEPipeline;
    TblPedidoCab: TTable;
    TblPedidoItens: TTable;
    TblPedidoFinan: TTable;
    TblPedidoCabPedICod: TStringField;
    TblPedidoCabEmitente_Nome: TStringField;
    TblPedidoCabEmitente_Ender: TStringField;
    TblPedidoCabEmitente_Bairro: TStringField;
    TblPedidoCabEmitente_Cidade: TStringField;
    TblPedidoCabEmitente_UF: TStringField;
    TblPedidoCabEmitente_CGC: TStringField;
    TblPedidoCabEmitente_IE: TStringField;
    TblPedidoCabEmitente_Fone: TStringField;
    TblPedidoCabDtEmissao: TDateField;
    TblPedidoCabDestinatario_Nome: TStringField;
    TblPedidoCabDestinatario_Endereco: TStringField;
    TblPedidoCabDestinatario_Bairro: TStringField;
    TblPedidoCabDestinatario_Cep: TStringField;
    TblPedidoCabDestinatario_Cidade: TStringField;
    TblPedidoCabDestinatario_UF: TStringField;
    TblPedidoCabDestinatario_CpfCgc: TStringField;
    TblPedidoCabDestinatario_IE: TStringField;
    TblPedidoCabDestinatario_Fone: TStringField;
    TblPedidoCabDestinatario_Fax: TStringField;
    TblPedidoCabTransp: TStringField;
    TblPedidoCabDtaEntrega: TDateField;
    TblPedidoCabComprador: TStringField;
    TblPedidoCabOrdemCompra: TStringField;
    TblPedidoCabPlano: TStringField;
    TblPedidoCabTipoFrete: TStringField;
    TblPedidoCabValorFrete: TFloatField;
    TblPedidoCabTotalDesconto: TFloatField;
    TblPedidoCabTotal: TFloatField;
    TblPedidoCabObservacoes: TMemoField;
    TblPedidoCabVendedor: TStringField;
    TblPedidoCabEmail: TStringField;
    TblPedidoCabPEDIDOORCAMENTO: TStringField;
    TblPedidoItensPedICod: TStringField;
    TblPedidoItensCodigo: TIntegerField;
    TblPedidoItensDescricao: TStringField;
    TblPedidoItensUn: TStringField;
    TblPedidoItensQtd1: TFloatField;
    TblPedidoItensVlrUnitario: TFloatField;
    TblPedidoItensVlrTotal: TFloatField;
    TblPedidoItensCor: TStringField;
    TblPedidoItensTecido: TStringField;
    TblPedidoItensLegenda: TIntegerField;
    TblPedidoItensQtd2: TFloatField;
    TblPedidoItensQtd3: TFloatField;
    TblPedidoItensQtd4: TFloatField;
    TblPedidoItensQtd5: TFloatField;
    TblPedidoItensQtd6: TFloatField;
    TblPedidoItensQtd7: TFloatField;
    TblPedidoItensQtd8: TFloatField;
    TblPedidoItensQtd9: TFloatField;
    TblPedidoItensQtd10: TFloatField;
    TblPedidoItensQtd11: TFloatField;
    TblPedidoItensQtd12: TFloatField;
    TblPedidoItensQtd13: TFloatField;
    TblPedidoItensQtd14: TFloatField;
    TblPedidoItensQtd15: TFloatField;
    TblPedidoFinanPedICod: TStringField;
    TblPedidoFinanVencimento: TDateField;
    TblPedidoFinanValor: TFloatField;
    DSTblPedidoFinan: TDataSource;
    PipePedFin: TppBDEPipeline;
    ReportOrc: TppReport;
    DSTblPedidoCab: TDataSource;
    DSSQLPedidoVenda: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBText18: TppDBText;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDBText19: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel21: TppLabel;
    ppDBText20: TppDBText;
    ppLabel22: TppLabel;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    TblPedidoCabTotalGeral: TFloatField;
    ppDBText23: TppDBText;
    ppLabel28: TppLabel;
    ppDBText24: TppDBText;
    SQLTerminalAtivoTERMA60IMPAUTORIZCOM: TStringField;
    SQLConfigVendaCFVECFINDPRODPORDESCR: TStringField;
    TblCupomCabCliente_Fone: TStringField;
    TblCupomCabCliente_Codigo: TStringField;
    SQLConfigVendaOPESICODCANCPED: TIntegerField;
    SQLConfigVendaCFVECMOVESTOQUENF: TStringField;
    SQLConfigVendaCFVECMOVESTOQUEPED: TStringField;
    SQLConfigVendaCFVEICMSFRETECOD: TIntegerField;
    SQLConfigVendaOPESICODPED: TIntegerField;
    SQLConfigVendaCFVEINROITENSNF: TIntegerField;
    SQLConfigVendaTPDCICOD: TIntegerField;
    SQLConfigVendaPORTICOD: TIntegerField;
    TblCupomCabConsignada: TStringField;
    SQLConfigVendaCFVECPEDEVLRPRODUTO: TStringField;
    SQLConfigVendaCFVECTESTALIMTCRED: TStringField;
    SQLConfigVendaCFVECSUBDEBNOLIMITE: TStringField;
    SQLParcelas: TRxQuery;
    SQLCliente: TRxQuery;
    SQLConfigVendaCFVETOBSPADRAONF: TStringField;
    SQLConfigVendaCFVETOBSPADRAOPED: TStringField;
    SQLTerminalAtivoTERMCMOSTRAIDCUPOM: TStringField;
    SQLCupomCUPOV254OBS: TStringField;
    SQLFechamentoCaixa: TRxQuery;
    SQLNumerario: TRxQuery;
    SQLFechamentoCaixaFECXDDATAMOV: TDateTimeField;
    SQLFechamentoCaixaEMPRICOD: TIntegerField;
    SQLFechamentoCaixaTERMICOD: TIntegerField;
    SQLFechamentoCaixaNUMEICOD: TIntegerField;
    SQLFechamentoCaixaFECXN2VALOR: TFloatField;
    SQLFechamentoCaixaUSUAICOD: TIntegerField;
    SQLNumerarioNUMEICOD: TIntegerField;
    SQLNumerarioNUMEA30DESCR: TStringField;
    SQLNumerarioNUMECVISTAPRAZO: TStringField;
    SQLNumerarioNUMECATIVO: TStringField;
    SQLNumerarioNUMEA5TIPO: TStringField;
    SQLNumerarioOPCXICOD: TIntegerField;
    SQLNumerarioPENDENTE: TStringField;
    SQLNumerarioREGISTRO: TDateTimeField;
    SQLFechamentoCaixaNUMEA30DESCR: TStringField;
    SQLCupomUSUAICODCANC: TIntegerField;
    SQLCupomCUPOA30DATACARTAO: TStringField;
    SQLCupomCUPOA30HORACARTAO: TStringField;
    SQLCupomCUPOA30NSUPROVEDOR: TStringField;
    SQLCupomCUPOA30NSUINSTITUICAO: TStringField;
    SQLTerminalAtivoEMPRICOD: TIntegerField;
    SQLTerminalAtivoTERMCECFIMPRCLIE: TStringField;
    SQLTerminalAtivoTERMCECFIMPRVEND: TStringField;
    SQLTerminalAtivoPENDENTE: TStringField;
    SQLTerminalAtivoREGISTRO: TDateTimeField;
    SQLTerminalAtivoTERMA60NOMECOMPUT: TStringField;
    SQLTerminalAtivoTERMA60IMPFICHACLI: TStringField;
    SQLTerminalAtivoTERMITMPLIMITESERV: TIntegerField;
    SQLTerminalAtivoTERMIINTERVALOSERV: TIntegerField;
    SQLTerminalAtivoTERMINUMERECCRED: TIntegerField;
    SQLCupomCUPON2DESCITENS: TFloatField;
    SQLCupomItemCPITN2VLRDESCSOBTOT: TFloatField;
    SQLConfigGeralCFGECESTOQUEPORLOTE: TStringField;
    SQLConfigCrediarioCFCRA254PATHMALADIRETA: TStringField;
    SQLConfigCompra: TRxQuery;
    SQLConfigCompraCFCOCTOTPRCVENPROD: TStringField;
    SQLPedidoOrcamento: TRxQuery;
    SQLPedidoOrcamentoPDVDA13ID: TStringField;
    SQLPedidoOrcamentoCLIEA13ID: TStringField;
    SQLPedidoOrcamentoVENDICOD: TIntegerField;
    SQLPedidoOrcamentoPLRCICOD: TIntegerField;
    SQLPedidoOrcamentoPDVDN2TOTPROD: TFloatField;
    SQLPedidoOrcamentoCLIEA60RAZAOSOC: TStringField;
    SQLPedidoOrcamentoVENDA60NOME: TStringField;
    SQLPedidoOrcamentoPLRCA60DESCR: TStringField;
    SQLPedidoOrcamentoItem: TRxQuery;
    SQLPedidoOrcamentoItemPDVDA13ID: TStringField;
    SQLPedidoOrcamentoItemPVITIITEM: TIntegerField;
    SQLPedidoOrcamentoItemPRODICOD: TIntegerField;
    SQLPedidoOrcamentoItemPVITN3QUANT: TFloatField;
    SQLPedidoOrcamentoItemPVITN2VLRUNIT: TFloatField;
    SQLPedidoOrcamentoItemPVITN2PERCDESC: TFloatField;
    SQLPedidoOrcamentoItemPVITN2VLRDESC: TFloatField;
    SQLPedidoOrcamentoItemREGISTRO: TDateTimeField;
    SQLPedidoOrcamentoItemPENDENTE: TStringField;
    SQLPedidoOrcamentoItemPVITN3QUANTVEND: TFloatField;
    SQLPedidoOrcamentoItemPDVDA60OBS: TStringField;
    SQLPedidoOrcamentoItemPVITN2PERCCOMIS: TFloatField;
    SQLPedidoOrcamentoItemPDVDA255OBS1: TStringField;
    SQLPedidoOrcamentoItemLOTEA30NRO: TStringField;
    SQLFechamentoCaixaPENDENTE: TStringField;
    SQLFechamentoCaixaREGISTRO: TDateTimeField;
    SQLFechamentoCaixaFECXA13ID: TStringField;
    SQLFechamentoCaixaFECXICOD: TIntegerField;
    SQLPedidoVendaItemPDVDA255OBS1: TStringField;
    SQLTerminalAtivoTERMINROVIASTEF: TIntegerField;
    SQLNumerarioPRCAA13ID: TStringField;
    SQLProvedorCartao: TRxQuery;
    SQLConfigVendaCFVECQUITAPARCONV: TStringField;
    SQLConfigGeralCFGECUSASALDODIARIO: TStringField;
    SQLConfigVendaCFVECFARREDVLRVEND: TStringField;
    SQLConfigVendaCFVEINROCASASDEC: TIntegerField;
    SQLConfigGeralEmpresaPadraoCalcField: TStringField;
    SQLCupomCATCA13ID: TStringField;
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
    SQLConfigVendaCFVECUSALIBERCRED: TStringField;
    SQLTerminalAtivoTERMCAUTENTIMPMATRI: TStringField;
    SQLPedidoOrcamentoPDVDN2VLRDESC: TFloatField;
    SQLPedidoOrcamentoPDVDN2VLRDESCPROM: TFloatField;
    SQLPedidoOrcamentoPDVDN2VLRFRETE: TFloatField;
    SQLPedidoOrcamentoPDVDTOBS: TStringField;
    SQLUsuarioUSUACUSERMASTER: TStringField;
    SQLCupomOPESICOD: TIntegerField;
    SQLUsuarioUSUACCANCVENDA: TStringField;
    SQLUsuarioUSUACEXCLCLI: TStringField;
    SQLUsuarioUSUACCANCPREVENDA: TStringField;
    SQLUsuarioUSUCALTERASLDINVENTARIO: TStringField;
    SQLUsuarioUSUACLIBERACREDITO: TStringField;
    SQLTerminalAtivoTERMACTIPOIMPPEDORC: TStringField;
    SQLTerminalAtivoTERMTPATHPEDORC: TStringField;
    TblPedidoCabEmitente_Email: TStringField;
    TblPedidoCabEmitente_URL: TStringField;
    TblPedidoItensReferencia: TStringField;
    SQLPedidoOrcamentoPDVDCTIPO: TStringField;
    SQLPedidoOrcamentoPDVDDEMISSAO: TDateTimeField;
    SQLConfigGeralCFGECTESTEANPROD: TStringField;
    SQLConfigGeralCFGECTESTREFPROD: TStringField;
    SQLTerminalAtivoTERMA30MODIMPNFISC: TStringField;
    SQLTerminalAtivoTERMCIMPENTCARNE: TStringField;
    SQLCupomPLCTA15CODCRED: TStringField;
    SQLCupomPLCTA15CODDEB: TStringField;
    SQLContasReceberPLCTA15CODDEBITO: TStringField;
    SQLTerminalAtivoTPDCICOD: TIntegerField;
    SQLConfigVendaCFVECEXCLUIPEDFAT: TStringField;
    SQLConfigVendaCFVECALTPEDIMPORT: TStringField;
    SQLConfigVendaOPESICODIMPCUPOM: TIntegerField;
    SQLConfigVendaOPESICODVENDCONSIG: TIntegerField;
    SQLConfigVendaCFVEN2PERCCOFINS: TFloatField;
    SQLConfigVendaCFVEN2PERCENCARG: TFloatField;
    SQLConfigVendaCFVEN2PERCICMS: TFloatField;
    SQLConfigVendaCFVEN2PERCPIS: TFloatField;
    SQLConfigVendaCFVECSOLSENHAALTVLR: TStringField;
    SQLUsuarioPENDENTE: TStringField;
    SQLUsuarioREGISTRO: TDateTimeField;
    SQLUsuarioUSUACEXCLDADOSTESO: TStringField;
    SQLUsuarioUSUACALTCAIXATES: TStringField;
    SQLUsuarioUSUACEXCMOVBCO: TStringField;
    SQLUsuarioUSUACALTVLRVENDA: TStringField;
    TblPedidoCabEmitenteLogo: TBlobField;
    SQLEmpresaEMPRA15CODEAN: TStringField;
    SQLEmpresaEMPRBLOGOTIPO: TBlobField;
    TblPedidoItensCodItem: TIntegerField;
    SQLCupomCUPON2BASEICMS: TFloatField;
    SQLCupomCUPON2VLRICMS: TFloatField;
    SQLCupomItemCPITN2BASEICMS: TFloatField;
    SQLCupomItemCPITN2VLRICMS: TFloatField;
    SQLPedidoOrcamentoEMPRICOD: TIntegerField;
    SQLPedidoOrcamentoPDVDICOD: TIntegerField;
    SQLPedidoOrcamentoTRANICOD: TIntegerField;
    SQLPedidoOrcamentoPDVDA30NROPEDCOMP: TStringField;
    SQLPedidoOrcamentoPDVDA30COMPRADOR: TStringField;
    SQLPedidoOrcamentoPDVDCSTATUS: TStringField;
    SQLPedidoOrcamentoPDVDN2TOTPED: TFloatField;
    SQLPedidoOrcamentoREGISTRO: TDateTimeField;
    SQLPedidoOrcamentoPENDENTE: TStringField;
    SQLPedidoOrcamentoPDVDCTIPOFRETE: TStringField;
    SQLPedidoOrcamentoPDVDDENTREGA: TDateTimeField;
    SQLPedidoOrcamentoPDVDINROTALAO: TIntegerField;
    SQLPedidoOrcamentoPDVDCIMPORTADO: TStringField;
    SQLPedidoOrcamentoPDVDN2PERCFAT: TFloatField;
    SQLPedidoOrcamentoPDVDN2PERCOMIS: TFloatField;
    SQLConfigCrediarioCFCRIPRZMINCARTAO: TStringField;
    MemCtRecParcCUPODEMIS: TDateTimeField;
    MemCtRecParcCUPON2TOTITENS: TFloatField;
    MemCtRecParcCUPON2DESC: TFloatField;
    MemCtRecParcCUPON2ACRESC: TFloatField;
    MemCtRecParcCLIEA13ID: TStringField;
    MemCtRecParcBaixar: TBooleanField;
    MemCtRecParcCTRCN2VLRJURO: TFloatField;
    MemCtRecParcCTRCN2VLRMULTA: TFloatField;
    MemCtRecParcCTRCN2VLRDESC: TFloatField;
    MemCtRecParcCTRCN2VLRTXCOBR: TFloatField;
    SQLConfigVendaCFVECIMPDESCRPRINF: TStringField;
    SQLConfigVendaCFVECCONTPEDVDAUSU: TStringField;
    SQLTerminalAtivoTERMCIMPCOMPTOTREC: TStringField;
    SQLTerminalAtivoTERMCNAOAUTRCTOCRD: TStringField;
    MemCtRecParcCTRCDULTREC: TDateField;
    SQLCupomCUPOA13IDCUPNEG: TStringField;
    SQLCupomCFOPA5COD: TStringField;
    SQLCupomAVALA13ID: TStringField;
    SQLCupomCUPODQUITACAO: TDateTimeField;
    SQLConfigVendaCFVECINFPRODSUBTRI: TStringField;
    TblPedidoCabDestinatario_Fone2: TStringField;
    SQLConfigVendaCFVECQUITAPARCRT: TStringField;
    SQLPreVendaItem2PRODA60NROSERIE: TStringField;
    SQLPreVendaItem1PRODA60NROSERIE: TStringField;
    MemCtRecParcValorOrigem: TFloatField;
    SQLECF: TRxQuery;
    SQLECFECFA30MODELO: TStringField;
    SQLConfigVendaCFVECFRETEPADRAO: TStringField;
    TblPedidoCabValorEntrada: TFloatField;
    TblPedidoFinanPortador: TStringField;
    SQLUsuarioUSUACBLOQCTRLG: TStringField;
    SQLConfigFinanceiro: TRxQuery;
    SQLConfigFinanceiroOPTEICODPAGAR: TIntegerField;
    SQLConfigFinanceiroOPBCICODPAGAR: TIntegerField;
    SQLConfigFinanceiroNUMEICODPAGAR: TIntegerField;
    SQLConfigFinanceiroCTCRICODPAGAR: TIntegerField;
    SQLConfigFinanceiroALINICODPAGAR: TIntegerField;
    SQLConfigFinanceiroCGFIA254HISTPAGAR: TStringField;
    SQLConfigFinanceiroOPTEICODRECEBER: TIntegerField;
    SQLConfigFinanceiroOPBCICODRECEBER: TIntegerField;
    SQLConfigFinanceiroNUMEICODRECEBER: TIntegerField;
    SQLConfigFinanceiroCGFIA254HISTRECEBE: TStringField;
    SQLConfigFinanceiroALINICODRECEBER: TIntegerField;
    SQLConfigFinanceiroPORTICODRECEBER: TIntegerField;
    SQLConfigFinanceiroCGFIUSATESOURARIA: TStringField;
    SQLConfigFinanceiroCGFICINFPLCTBXSIMP: TStringField;
    SQLConfigGeralCFGEA255EXEDUPLICATA: TStringField;
    SQLConfigGeralCFGECALCPRECOAUTOM: TStringField;
    SQLConfigGeralCFGECTIPOMARGLUCRO: TStringField;
    SQLConfigGeralCFGECUSAMARGLIQ: TStringField;
    TblPedidoCabRota: TStringField;
    SQLTerminalAtivoTERMCSQLORDENADO: TStringField;
    SQLTerminalAtivoCFGIICOD: TIntegerField;
    SQLTerminalAtivoTERMTPATHNF: TStringField;
    SQLTerminalAtivoTERMA5LEITPORTACOM: TStringField;
    SQLTerminalAtivoTERMA60MODLEITOR: TStringField;
    SQLTerminalAtivoTERMCDISPOENTRADA: TStringField;
    SQLTerminalAtivoTERMA60MENSAGEMPDV: TStringField;
    SQLTerminalAtivoTERMCINFDADOCARTAO: TStringField;
    SQLConfigVendaCFVECINFVLRDEVCVEN: TStringField;
    SQLCupomItemCPITN2VLRQDEVERIAVENDER: TFloatField;
    SQLTerminalAtivoTERMA30MODIMPCHQ: TStringField;
    SQLTerminalAtivoTERMA5IMPCHQPORTA: TStringField;
    DSTblCheques: TDataSource;
    TblCheques: TMemoryTable;
    TblChequesDtDep: TDateTimeField;
    TblChequesNroCheque: TFloatField;
    TblChequesValor: TFloatField;
    TblChequesHistorico: TStringField;
    TblChequesPORTICOD: TIntegerField;
    TblChequesBANCA5COD: TStringField;
    TblChequesAGENCIA: TStringField;
    TblChequesCONTA: TStringField;
    TblChequesDATAABERT: TDateField;
    TblChequesTITULAR: TStringField;
    TblChequesCGCCPF: TStringField;
    TblChequesALINICOD: TIntegerField;
    TblChequesDataVecto: TDateField;
    SQLConfigGeralOPESICODTRANSFENTR: TIntegerField;
    SQLConfigGeralOPESICODTRANSFSAID: TIntegerField;
    SQLTerminalAtivoTERMCMOSTRATROCOCUP: TStringField;
    SQLPreVendaItem2PVITN3QTDTROCA: TFloatField;
    SQLPreVendaItem1PVITN3QTDTROCA: TFloatField;
    SQLPreVendaTERMICOD: TIntegerField;
    SQLPreVendaPRVDICOD: TIntegerField;
    SQLPreVendaCONVICOD: TIntegerField;
    SQLPreVendaCLIEA13ID: TStringField;
    SQLPreVendaPLRCICOD: TIntegerField;
    SQLPreVendaPRVDCMARCADO: TStringField;
    SQLPreVendaPRVDN2TOTITENS: TFloatField;
    SQLPreVendaPRVDN2DESC: TFloatField;
    SQLPreVendaVENDICOD: TIntegerField;
    SQLPreVendaPRVDCIMPORT: TStringField;
    SQLPreVendaCLIEA60RAZAOSOC: TStringField;
    SQLPreVendaCLIEA60ENDRES: TStringField;
    SQLPreVendaCLIEA60BAIRES: TStringField;
    SQLPreVendaCLIEA60CIDRES: TStringField;
    SQLPreVendaCLIEDCAD: TDateTimeField;
    SQLPreVendaCLIEDPRICOMPRA: TDateTimeField;
    SQLPreVendaCLIEDULTCOMPRA: TDateTimeField;
    SQLPreVendaTPCLICOD: TIntegerField;
    SQLPreVendaMTBLICOD: TIntegerField;
    SQLPreVendaVENDA60NOME: TStringField;
    SQLPreVendaTERMA60DESCR: TStringField;
    SQLPreVendaCLIENTENOME: TStringField;
    SQLPreVendaCLIENTEENDE: TStringField;
    SQLPreVendaCLIENTECIDA: TStringField;
    SQLPreVendaCLIENTEOBS: TStringField;
    SQLPedidoOrcamentoUSUAA60LOGIN: TStringField;
    SQLPedidoOrcamentoROTAICOD: TIntegerField;
    SQLPedidoOrcamentoSERIA5COD: TStringField;
    SQLPedidoOrcamentoVEICA13ID: TStringField;
    SQLPedidoOrcamentoPDVDA15NROPEDPALM: TStringField;
    SQLPedidoOrcamentoNOFIAOBSCORPONF: TStringField;
    SQLPedidoOrcamentoPDVD8PLACAVEIC: TStringField;
    SQLPedidoOrcamentoOPESICOD: TIntegerField;
    SQLContasReceberPDVDA13ID: TStringField;
    SQLContasReceberCTRCDESTORNO: TDateTimeField;
    SQLContasReceberFRETA13ID: TStringField;
    SQLContasReceberCTRCCTEMREGRECEBER: TStringField;
    SQLContasReceberCOBRA13ID: TStringField;
    SQLContasReceberCTRCDENVIOCOBRANCA: TDateTimeField;
    SQLContasReceberCTRCA254HIST: TStringField;
    SQLContasReceberDUPLA13ID: TStringField;
    SQLContasReceberAVALA13ID: TStringField;
    SQLContasReceberCTRCCTIPOREGISTRO: TStringField;
    SQLContasReceberHTPDICOD: TIntegerField;
    SQLContasReceberCONTA13ID: TStringField;
    SQLContasReceberCTRCA13CTRCAIDCHQ: TStringField;
    SQLContasReceberCTRCCEMITIDOBOLETO: TStringField;
    SQLPreVendaCLIENTECNPJ: TStringField;
    SQLPreVendaCLIEDNASC: TDateTimeField;
    SQLPreVendaCLIEN2RENDA: TFloatField;
    SQLPreVendaCLIEN2CONJUGERENDA: TFloatField;
    SQLPreVendaCLIEN2LIMITECRED: TFloatField;
    TblCupomCabVlrEntrada: TFloatField;
    SQLCupomCLIENTENOME: TStringField;
    SQLCupomCLIENTECNPJ: TStringField;
    SQLCupomCLIENTEENDE: TStringField;
    SQLCupomCLIENTECIDA: TStringField;
    SQLBomba: TRxQuery;
    SQLTanque: TRxQuery;
    DSSQLBomba: TDataSource;
    DSSQLTanque: TDataSource;
    SQLPreVendaPDVDDHVENDA: TDateTimeField;
    TblTicketPreVendaCabVlrEntrada: TFloatField;
    TblTicketPreVendaCabNomeClienteVenda: TStringField;
    TblTicketPreVendaCabDocumentoClienteVenda: TStringField;
    TblTicketPreVendaCabEnderecoClienteVenda: TStringField;
    TblTicketPreVendaCabCidadeClienteVenda: TStringField;
    TblTicketPreVendaCabOBSImpressaoCupom: TStringField;
    SQLTerminalAtivoTERMCSOLCODVEND: TStringField;
    TblTicketPreVendaItemTroca: TStringField;
    SQLConfigGeralCFGECBLOQ: TStringField;
    SQLUsuarioUSUACVISULUCVEND: TStringField;
    SQLConfigCompraCFCOITIPMOVNFE: TIntegerField;
    SQLConfigCompraCFCOITIPMOVCANCNFE: TIntegerField;
    SQLConfigCompraCFCOCALTPRCPRODENT: TStringField;
    SQLConfigCompraCFCOCTESTAITENSNFE: TStringField;
    SQLConfigCompraCFCOCNUMSERPRODENT: TStringField;
    SQLConfigCompraCFCOCIMPLEGORDCOMP: TStringField;
    SQLConfigCompraCFCOCALTPERCIPI: TStringField;
    SQLConfigCompraCFCOCALTVLRCOMPRA: TStringField;
    SQLConfigCompraCFCOCALTVLRCUSTO: TStringField;
    SQLConfigCompraPORTICOD: TIntegerField;
    SQLConfigCompraTPDCICOD: TIntegerField;
    SQLConfigCompraCFCOCEXCLUIPEDENT: TStringField;
    SQLConfigCompraCFCOCTESTPRODFORN: TStringField;
    SQLConfigCompraCFCOCVERIFICAVLRMENOR: TStringField;
    SQLConfigCompraCFCOCINFDADOSFRETE: TStringField;
    SQLTerminalAtivoTERMCIMPPREVENDASIM: TStringField;
    SQLEmpresaEMPRCLUCROREAL: TStringField;
    SQLCupomNumerarioPLCTA15COD: TStringField;
    SQLUsuarioUSUCDESTRIMPFISC: TStringField;
    SQLUsuarioUSUAA60EMAIL: TStringField;
    SQLUsuarioUSUACVERTODASEMPR: TStringField;
    SQLUsuarioUSUACBXCPAGFIN: TStringField;
    SQLUsuarioUSUACBXCRECFIN: TStringField;
    SQLUsuarioUSUCENCERRAMVTODVS: TStringField;
    SQLUsuarioUSUACLIBERASALDNEG: TStringField;
    SQLTerminalAtivoTERMCBXESTFECHCX: TStringField;
    SQLPreVendaPDVCPRECONCLU: TStringField;
    SQLUsuarioUSUACVRESFINFORN: TStringField;
    TblTicketPreVendaCabTERMICOD: TIntegerField;
    TblTicketPreVendaCabPRVDICOD: TIntegerField;
    TblTicketPreVendaCabDataEmissao: TDateTimeField;
    TblPedidoFinanParcela: TStringField;
    TblPedidoFinanNumerario: TStringField;
    SQLCupomItemBOMBICOD: TIntegerField;
    SQLCupomCLIENTEFONE: TStringField;
    SQLPreVendaCLIENTEFONE: TStringField;
    TblTicketPreVendaCabFoneClienteVenda: TStringField;
    SQLPreVendaCLIEA15FONE1: TStringField;
    SQLCupomUSUAICODVENDA: TIntegerField;
    TblTicketPreVendaCabUsuarioVendaSTR: TStringField;
    SQLPedidoVendaPDVDCIMPORTADO: TStringField;
    SQLPedidoVendaItemPVITN3TOTVENDITEM: TFloatField;
    SQLCupomCLDPICOD: TIntegerField;
    SQLContasReceberCTRCA2MESCOMP: TStringField;
    SQLContasReceberCTRCA4ANOCOMP: TStringField;
    SQLContasReceberCLDPICOD: TIntegerField;
    SQLPreVendaCLDPICOD: TIntegerField;
    SQLUsuarioUSUACPERMVMOVCX: TStringField;
    SQLUsuarioUSUACPERMVVENDAS: TStringField;
    SQLUsuarioUSUACPERMLEITX: TStringField;
    SQLUsuarioUSUACPERMREDZ: TStringField;
    SQLUsuarioUSUACPERMSANGRIA: TStringField;
    SQLUsuarioUSUACPERMSUPRI: TStringField;
    SQLConfigCrediarioCFCRA255PATHCARTPE: TStringField;
    SQLCupomCUPOA8PLACAVEIC: TStringField;
    TblTicketPreVendaCabPlacaVeiculo: TStringField;
    TblPedidoCabPlacaVeiculo: TStringField;
    SQLConfigGeralCFGEDBLOQ: TDateTimeField;
    SQLConfigVendaCFVEA20ORDIMPVEND: TStringField;
    SQLUsuarioUSUACPERMRESUCX: TStringField;
    SQLUsuarioUSUACVENDCLIBLOQCHQ: TStringField;
    SQLUsuarioUSUACVENDCLIBLOQMOTIV: TStringField;
    TblTicketPreVendaCabTroco: TFloatField;
    TblPedidoCabTroco: TFloatField;
    SQLCupomTROCO: TFloatField;
    SQLUsuarioUSUACPVERCLICASH: TStringField;
    TblChequesNroDias: TIntegerField;
    SQLCupomItemEMPRICOD: TIntegerField;
    SQLBombaEMPRICOD: TIntegerField;
    SQLBombaBOMBICOD: TIntegerField;
    SQLBombaTANQICOD: TIntegerField;
    SQLBombaBOMBN2CONT: TFloatField;
    SQLBombaBOMBA30DESCR: TStringField;
    SQLBombaBOMBN3VLRVISTA: TFloatField;
    SQLBombaPENDENTE: TStringField;
    SQLBombaREGISTRO: TDateTimeField;
    SQLBombaCONVERTER: TStringField;
    SQLBombaSTATUS: TStringField;
    SQLBombaPOINT: TIntegerField;
    SQLTanqueEMPRICOD: TIntegerField;
    SQLTanqueTANQICOD: TIntegerField;
    SQLTanqueTANQA30DESCR: TStringField;
    SQLTanquePRODICOD: TIntegerField;
    SQLTanqueTANQN2CAPACID: TFloatField;
    SQLTanqueTANQN2SALDO: TFloatField;
    SQLTanqueTANQN2ESTMIN: TFloatField;
    SQLCupomItemENCERRANTE: TIntegerField;
    SQLTerminalAtivoTERMIQTDEPADRAO: TIntegerField;
    SQLPopUP: TQuery;
    SQLPopUPPOPTEMPO: TStringField;
    SQLPopUPCFGCCEXIBIRPOPTARE: TStringField;
    SQLTerminalAtivoTERMCTECLREDUZ: TStringField;
    SQLConfigInventario: TRxQuery;
    SQLConfigInventarioOPESICODENTRADA: TIntegerField;
    SQLConfigInventarioOPESICODSAIDA: TIntegerField;
    SQLTerminalAtivoTERMCMPATACADO: TStringField;
    SQLPreVendaCLIETOBS1: TBlobField;
    SQLTerminalAtivoTERMIPROXCODCTRC: TIntegerField;
    SQLTerminalAtivoTERMA60IMPNF: TStringField;
    SQLTerminalAtivoTERMCIMPNFPRT: TStringField;
    SQLTerminalAtivoTERMCIMPPEDPRT: TStringField;
    SQLTerminalAtivoTERMCECFIMPRCONFDIVIMPFAT: TStringField;
    SQLTerminalAtivoTERMCECFIMPRCONFDIVIMPITENS: TStringField;
    SQLTerminalAtivoTERMCECFIMPRCONFDIVPERGUNTA: TStringField;
    SQLUsuarioUSUACPERMITECASH: TStringField;
    SQLUsuarioUSUACPRODNOTFOUND: TStringField;
    SQLConfigCrediarioCFCRINRODIACARTA1A: TIntegerField;
    TblTicketPreVendaCabPEDIDOORCAMENTO: TStringField;
    SQLCupomNumerarioEMPRICOD: TIntegerField;
    TblTicketPreVendaCabDisplayNumero: TIntegerField;
    TblTicketPreVendaCabMesaCodigo: TIntegerField;
    TblTicketPreVendaCabContaCodigo: TIntegerField;
    TblTicketPreVendaCabLevarCasa: TStringField;
    TblTicketPreVendaCabBairroClienteVenda: TStringField;
    TblTicketPreVendaItemComplemento: TStringField;
    TblTicketPreVendaItemImpCozinha: TStringField;
    TblTicketPreVendaItemImpVale: TStringField;
    SQLCupomItemCPITTOBS: TStringField;
    TblTicketPreVendaFin: TTable;
    TblTicketPreVendaFinPedICod: TStringField;
    TblTicketPreVendaFinParcela: TStringField;
    TblTicketPreVendaFinVencimento: TDateField;
    TblTicketPreVendaFinValor: TFloatField;
    TblTicketPreVendaFinPortador: TStringField;
    TblTicketPreVendaFinNumerario: TStringField;
    TblTicketPreVendaFinTipopadrao: TStringField;
    TblAutenticacao: TTable;
    TblAutenticacaoEmpresaNome: TStringField;
    TblAutenticacaoOperacao: TStringField;
    TblAutenticacaoUsuarioNome: TStringField;
    TblAutenticacaoValor: TFloatField;
    TblAutenticacaoHistorico: TStringField;
    TblTicketPreVendaCabKM: TStringField;
    TblAutenticacaoTerminalNome: TStringField;
    TblAutenticacaoForma: TStringField;
    TblTicketPreVendaCabClienteDependente: TStringField;
    TblTicketPreVendaItemUnidade: TStringField;
    SQLCupomItemADICIONAIS: TStringField;
    SQLEmpresaEMPRA3CRT: TStringField;
    SQLCupomItADICIONAIS: TStringField;
    SQLCupomItCPITN2VLRDESCSOBTOT: TFloatField;
    SQLTerminalAtivoTERMINRODECVALORUNIT: TIntegerField;
    SQLConfigVendaCFVECVENDEDOREXIGE: TStringField;
    SQLUsuarioUSUACPLANOCOMSENHA: TStringField;
    SQLUsuarioUSUACPERMITETROCA: TStringField;
    SQLTerminalAtivoTERMCMOVTRANSF: TStringField;
    SQLCupomDISPICOD: TIntegerField;
    SQLCupomItemCPITN2IMPOSTOMED: TFloatField;
    SQLUsuarioUSUACTROCAQTDE: TStringField;
    SQLPedidoVendaItemUNIDICOD: TIntegerField;
    SQLPedidoVendaItemPRODCMIX: TStringField;
    SQLPedidoVendaItemPRODN3PESOBRUTO: TFloatField;
    TblTicketPreVendaCabEmpresaEmit: TStringField;
    TblTicketPreVendaCabEmpresaEmit_Ender: TStringField;
    TblTicketPreVendaCabEmpresaEmit_Bairro: TStringField;
    TblTicketPreVendaCabEmpresaEmit_Cidade: TStringField;
    TblTicketPreVendaCabEmpresaEmit_Fone: TStringField;
    SQLEmpresaEMPRA100CERTIFSERIE: TStringField;
    SQLEmpresaEMPRA35CERTIFSENHA: TStringField;
    SQLEmpresaEMPRIFORMAEMISDANFE: TIntegerField;
    SQLEmpresaEMPRIFORMAEMISNFE: TIntegerField;
    SQLEmpresaEMPRA100CAMINHOLOGO: TStringField;
    SQLEmpresaEMPRA100CAMINHOXML: TStringField;
    SQLEmpresaEMPRA100CAMINHODANFES: TStringField;
    SQLEmpresaEMPRA2WSUF: TStringField;
    SQLEmpresaEMPRIWSAMBIENTE: TIntegerField;
    SQLEmpresaEMPRA1VISUALIZAMSG: TStringField;
    SQLEmpresaEMPRA100PROXYHOST: TStringField;
    SQLEmpresaEMPRIPROXYPORTA: TIntegerField;
    SQLEmpresaEMPRA50PROXYUSUARIO: TStringField;
    SQLEmpresaEMPRA50PROXYSENHA: TStringField;
    SQLEmpresaEMPRA50EMAILHOST: TStringField;
    SQLEmpresaEMPRIEMAILPORTA: TIntegerField;
    SQLEmpresaEMPRA50EMAILSENHA: TStringField;
    SQLEmpresaEMPRA1SSL: TStringField;
    SQLEmpresaEMPRA60EMAILCOPIA: TStringField;
    SQLTerminalAtivoECF_VELOC: TIntegerField;
    SQLCupomItCPITTOBS: TStringField;
    SQLPreVendaItem2PVITTOBS: TStringField;
    SQLPreVendaItem1PVITTOBS: TStringField;
    TblTicketPreVendaFinBonusTroca: TStringField;
    TblCupomFinanTipoPadrao: TStringField;
    SQLCupomItemTERMICOD: TIntegerField;
    TblTicketPreVendaItemDescricao: TStringField;
    SQLPedidoVendaCLIENTENOME: TStringField;
    SQLPedidoVendaCLIENTEFONE: TStringField;
    SQLPedidoVendaCLIENTEEMAIL: TStringField;
    SQLCupomCHAVEACESSO: TStringField;
    SQLCupomPROTOCOLO: TStringField;
    TblTicketPreVendaCabTerminal: TStringField;
    SQLPedidoOrcamentoCLIENTENOME: TStringField;
    SQLPedidoOrcamentoCLIENTEFONE: TStringField;
    SQLPedidoOrcamentoCLIENTEEMAIL: TStringField;
    SQLEmpresaEMPRA1TSL: TStringField;
    SQLEmpresaIDTOKEN: TStringField;
    SQLEmpresaTOKEN: TStringField;
    SQLUsuarioEMPRESA_ACESSO: TIntegerField;
    SQLCupomItemDENSIDADE: TStringField;
    SQLCupomItemMEDIDA: TStringField;
    SQLCupomItemESPESSURA: TStringField;
    SQLCupomItemTECIDO: TStringField;
    ACBrPosPrinter: TACBrPosPrinter;
    ACBrNFe: TACBrNFe;
    SQLPedidoVendaUSUAA60LOGIN: TStringField;
    SQLCupomItemM3_LARGURA: TFloatField;
    SQLCupomItemM3_COMPRI: TFloatField;
    SQLCupomItemM3_ESPESSURA: TFloatField;
    SQLPreVendaItem2M3_LARGURA: TFloatField;
    SQLPreVendaItem2M3_COMPRI: TFloatField;
    SQLPreVendaItem2M3_ESPESSURA: TFloatField;
    SQLPreVendaItem1M3_ESPESSURA: TFloatField;
    SQLPreVendaItem1M3_LARGURA: TFloatField;
    SQLPreVendaItem1M3_COMPRI: TFloatField;
    SQLCupomItemCPITN3QTD: TFloatField;
    SQLConfigGeralDIAS_AVISO: TIntegerField;
    RestClient: TRestClient;
    cdsAPIAutorizacao: TClientDataSet;
    cdsAPIAutorizacaoDATA_AUTORIZACAO: TStringField;
    cdsAPIAutorizacaoOBS_AUTORIZACAO: TStringField;
    cdsAPIAutorizacaoDIAS_AVISO: TStringField;
    TblAPIAutorizacao: TTable;
    TblAPIAutorizacaoDATA_AUTORIZACAO: TDateField;
    TblAPIAutorizacaoOBS_AUTORIZACAO: TStringField;
    TblAPIAutorizacaoDIAS_AVISO: TStringField;
    SQLConfigGeralDATA_INI_SEM_NET: TDateTimeField;
    SQLConfigGeralNAO_OBRIGA_FECHAR_CAIXA: TStringField;
    SQLUsuarioUSUACCANCITEMVENDA: TStringField;
    SQLEmpresaVERSAO: TStringField;
    ACBrNFeDANFeRL1: TACBrNFeDANFeRL;
    ACBrNFeDANFeESCPOS: TACBrNFeDANFeESCPOS;
    SQLConfigVendaVALOR_LIMITE_PAGTO: TFloatField;
    SQLProduto_Descontos: TRxQuery;
    SQLProduto_DescontosCOD_PRODUTODESCONTOS: TIntegerField;
    SQLProduto_DescontosPRODICOD: TIntegerField;
    SQLProduto_DescontosQUANTIDADE: TFloatField;
    SQLProduto_DescontosPRECO: TFloatField;
    SQLProduto_DescontosDATA_VALIDADE: TDateTimeField;
    SQLTerminalAtivoVALOR_LIMITE_SANGRIA: TFloatField;
    SQLCupomItemCPITN2VLRPIS: TFloatField;
    SQLCupomItemCPITN2VLRCOFINS: TFloatField;
    SQLCupomItemALIQUOTA_PIS: TFloatField;
    SQLCupomItemVLR_BASE_PIS: TFloatField;
    SQLCupomItemALIQUOTA_COFINS: TFloatField;
    SQLCupomItemVLR_BASE_COFINS: TFloatField;
    SQLCupomItemPERC_REDUCAO_BASE_CALCULO: TFloatField;
    SQLCupomItemBASE_ST_RETIDO: TFloatField;
    SQLCupomItemVALOR_ST_RETIDO: TFloatField;
    SQLConfigGeralVERIFICA_CUPOM_PENDENTE: TStringField;
    SQLConfigCrediarioIMPRIMIR_RESUMO: TStringField;
    SQLEmpresaCFGEDBLOQ: TDateTimeField;
    SQLEmpresaCFGECBLOQ: TStringField;
    SQLPreVendaSEQ_DIA: TIntegerField;
    SQLConfigVendaUTILIZA_NUMERO_SEQ: TStringField;
    TblTicketPreVendaCabSequencial: TIntegerField;
    TblTicketPreVendaCabSeq_Dia: TIntegerField;
    SQLPrecoCliente: TRxQuery;
    SQLConfigGeralRETORNO_CONS_PROD: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure SQLCupomNewRecord(DataSet: TDataSet);
    procedure SQLCupomBeforePost(DataSet: TDataSet);
    procedure SQLCupomItemNewRecord(DataSet: TDataSet);
    procedure SQLContasReceberBeforePost(DataSet: TDataSet);
    procedure SQLContasReceberNewRecord(DataSet: TDataSet);
    procedure SQLCupomNumerarioNewRecord(DataSet: TDataSet);
    procedure SQLContasReceberPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure SQLPedidoVendaBeforePost(DataSet: TDataSet);
    procedure SQLPedidoVendaPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure TblPedidoCabCalcFields(DataSet: TDataSet);
    procedure SQLFechamentoCaixaBeforePost(DataSet: TDataSet);
    procedure ACBrNFeStatusChange(Sender: TObject);
    procedure DBAfterConnect(Sender: TObject);
  private
    procedure GetDataValidadeSistemaWebApi;
    { Private declarations }
  public
    { Public declarations }
    vSEM_INTERNET:Boolean;
    CodTarefa,
    CodNextOrc,
    CodNextCupom,
    ConfigEtiqueta, NumerarioCartao, SubTotal_ECF : string ;
    InserindoItemPV,
    GerandoPedidoVenda,
    ImportandoColetor, AceitaMotivoNaoAtend : boolean ;
    TotalCartao : Double;
    // Adilson p/uso na tela de pedidos
    TrocarStatusPedidoParaFaturado : boolean;
    DataEntregaPedidos, DataEmissaoPedidos : TDate;
    SerieAtualPedidos, VeiculoAtualPedidos, LinhaTXT, FretePorConta, PedidoVolume, PedidoEspecie, PedidoMarca,
    PedidoPesoB, PedidoPesoL, PedidoOBS : String;
    VendedorAtualPedidos, RotaAtualPedidos, TranspAtualPedidos : Integer;
    Texto : TextFile;
    DataSistema: TDate;
    OBSAutorizacao: string;
    GerandoPedidoCompra : Boolean;
    InserindoItemPC : Boolean;
    procedure GetDataValidadeSistema;
    function ConectaServidor : boolean ;
    function BloquearTerminal(Usuario, Terminal : string ) : boolean ;
//    function ExecAndWait(FileName, Params: string; const WindowState: Word): boolean;
    function ExecAndWait(const FileName, Params: string; const WindowState: Word): boolean;
    procedure DesbloquearTerminal(Terminal : string) ;
  end;

var
  DM: TDM;

implementation

uses TelaSplash, TelaAtivacao, JsonToDataSetConverter, DateUtils, Math;

{$R *.DFM}

function TDM.ConectaServidor : boolean ;
begin
  {Tenta conectar pra ver se o servidor esta Online se estiver inicia a transmissao!}
  if FileExists('Online.txt') then
    result := true
  else
    result := false;
end;

function TDM.BloquearTerminal(Usuario, Terminal : string ) : boolean ;
begin
{
*** * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * **
* Esta rotina para bloquear o terminal da seguinte forma, quando se edita e    *
* grava * um dados de uma registro e se deixa a transação pendente o banco não *
* deixa editar * e gravar novamente o mesmo registro, portanto sai na rotina   *
* abaixo por except * e aasim podemos saber que em outro micro alguém já abriu *
* este terminal.                                                               *
*** * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * **
}
  {try
    DM.DatabaseTerm.StartTransaction ;
    DM.SQLTerminalAtivo.Edit ;
    DM.SQLTerminalAtivoTERMA255MSGCARNE.Value := DM.SQLTerminalAtivoTERMA255MSGCARNE.Value + '.' ;
    DM.SQLTerminalAtivo.Post ;
    BloquearTerminal := true ;
  except
    BloquearTerminal := false ;
  end ;}
  BloquearTerminal := true ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('update TERMINAL') ;
  DM.SQLTemplate.SQL.Add('set') ;
  DM.SQLTemplate.SQL.Add('TERMCATIVO = ''S'', ') ;
  DM.SQLTemplate.SQL.Add('USUAICODATIVO = ' + Usuario) ;
  DM.SQLTemplate.SQL.Add('where TERMICOD = ' + Terminal) ;
  try
    DM.SQLTemplate.ExecSQL ;
  except
    on E: Exception do
    begin
      ShowMessage('Problemas ao bloquear terminal: ' + #13 + E.Message) ;
    end ;
  end ;
end ;

procedure TDM.DesbloquearTerminal(Terminal : string) ;
begin
  {if DatabaseTerm.InTransaction then
    DatabaseTerm.Rollback ;}

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('update TERMINAL') ;
  DM.SQLTemplate.SQL.Add('set') ;
  DM.SQLTemplate.SQL.Add('TERMCATIVO = ''N'', ') ;
  DM.SQLTemplate.SQL.Add('USUAICODATIVO = Null') ;
  DM.SQLTemplate.SQL.Add('where TERMICOD = ' + Terminal) ;
  try
    DM.SQLTemplate.ExecSQL ;
  except
    on E: Exception do
    begin
      ShowMessage('Problemas ao desbloquear terminal: ' + #13 + E.Message) ;
    end ;
  end ;
end ;

procedure TDM.DataModuleCreate(Sender: TObject);
var
  IniFile: Tinifile;
  DiaSemana : string;
begin
  inherited;

  FormSplash.lbDados.Caption := 'Abrindo Tabela de Filiais...'; FormSplash.lbDados.Update;
  SQLEmpresa.Open ;
  FormSplash.lbDados.Caption := 'Abrindo Tabela de Terminais...'; FormSplash.lbDados.Update;
  SQLTerminalAtivo.Open ;
  FormSplash.lbDados.Caption := 'Abrindo Tabela de Usuarios...'; FormSplash.lbDados.Update;
  SQLUsuario.Open ;
  FormSplash.lbDados.Caption := 'Abrindo Tabela de Parametros...'; FormSplash.lbDados.Update;
  SQLConfigGeral.Open ;
  SQLConfigCrediario.Open ;
  SQLConfigVenda.Open ;
  SQLConfigCompra.Open;
  SQLOperacaoCaixa.Open ;
  SQLPopUP.Open;

  DBRel.Connected := True ;

  {FormSplash.lbDados.Caption := 'Verificando Licença de uso...'; FormSplash.lbDados.Update;
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
  Sleep(1000);     }
  FormSplash.close;

  DataSistema := ExecSql('select current_timestamp from rdb$relations').fieldbyname('current_timestamp').AsDateTime;
  DataSistema := StrToDate(FormatDateTime('dd/mm/yyyy', DataSistema));

//  if DelphiAberto then
//    ACBrNFe.Configuracoes.WebServices.Ambiente := taHomologacao;

  if sqlEmpresa.FieldByName('VERSAO').AsString = '4' then
    ACBrNFe.Configuracoes.Geral.VersaoDF := ve400
  else
    ACBrNFe.Configuracoes.Geral.VersaoDF := ve310;

end;

procedure TDM.GetDataValidadeSistema;
var
  Data: TDateTime;
  DiasVencimento: integer;
  Bloqueio : string;

  function DiasEmAviso:Boolean;
  begin
    Result := False;

    if SQLConfigGeralDIAS_AVISO.Value > 0 then
    begin
      DiasVencimento := DaysBetween((SQLEmpresaCFGEDBLOQ.AsDateTime + SQLConfigGeralDIAS_AVISO.AsInteger), DataSistema);

      if (SQLConfigGeralDIAS_AVISO.Value >= DiasVencimento) and (SQLEmpresaCFGEDBLOQ.AsDateTime < DataSistema) then
      begin
        Result := True;
      end;
    end;
  end;
  
begin
  vSEM_INTERNET := False;
  OBSAutorizacao := '';
  if ((SQLEmpresaCFGEDBLOQ.AsDateTime + SQLConfigGeralDIAS_AVISO.AsInteger) < DataSistema) or (DiasEmAviso) then
  begin
    GetDataValidadeSistemaWebApi;
  end;

  Dm.SQLConfigGeral.Edit;

  if not vSEM_INTERNET then
    Dm.SQLConfigGeralDATA_INI_SEM_NET.Clear
  else begin
    if Dm.SQLConfigGeralDATA_INI_SEM_NET.IsNull then
      Dm.SQLConfigGeralDATA_INI_SEM_NET.AsDateTime := DataSistema;
  end;

  if (SQLEmpresaCFGEDBLOQ.AsDateTime + SQLConfigGeralDIAS_AVISO.AsInteger) < DataSistema then
    Bloqueio := 'S'
  else begin
    Bloqueio := '';

    if DiasEmAviso then
    begin
      if DiasVencimento = 1 then
        OBSAutorizacao := '01 dia'
      else
        OBSAutorizacao := FormatFloat('00', DiasVencimento) + ' dias '; // - Falta '+FormatFloat('00', DiasVencimento)+' dias;
    end;
  end;

  try
    SQLConsulta.Close;
    SQLConsulta.RequestLive := False;
    SQLConsulta.SQL.Text    := 'Update EMPRESA Set CFGECBLOQ = ''' + Bloqueio + '''' +
                                  ' Where EMPRICOD = '''+ EmpresaPadrao +'''';
    SQLConsulta.ExecSQL;
  except

  end;
  SQLEmpresa.Close;
  SQLEmpresa.Open;
  SQLEmpresa.Locate('EMPRICOD',EmpresaPadrao,[]);

  if Dm.SQLConfigGeral.state in ([dsedit, dsinsert]) then
    Dm.SQLConfigGeral.Post;
end;

procedure TDM.GetDataValidadeSistemaWebApi;
var
  Data: TDate;
  xhttp: string;
  xDocumento : String;
begin
  if not Dm.SQLEmpresa.Active then
    Dm.SQLEmpresa.Open;

  cdsAPIAutorizacao.Close;
  cdsAPIAutorizacao.CreateDataSet;

  xDocumento := SQLLocate('EMPRESA','EMPRICOD','EMPRA14CGC', EmpresaPadrao);
  if xDocumento = EmptyStr then
    xDocumento := SQLEmpresaEMPRA14CGC.AsString;

  xhttp := 'http://200.98.170.118/Automafour/api/cad_pessoa/documento/'
    + xDocumento;

  //xhttp:= 'http://localhost:51308/api/cad_pessoa/documento/83125841020';

  try
    try
      RestClient.Resource(xhttp).Accept(RestUtils.MediaType_Json).GetAsDataSet(cdsAPIAutorizacao);
    except
      on E: Exception do
      begin         
        // E.message
        vSEM_INTERNET := True;
        exit;
      end;
    end;

    if cdsAPIAutorizacao.Active then
    begin
      if cdsAPIAutorizacaoDATA_AUTORIZACAO.AsString <> '' then
      begin
        Data := StrToDate(copy(cdsAPIAutorizacaoDATA_AUTORIZACAO.value, 9, 2) + '/' + copy(cdsAPIAutorizacaoDATA_AUTORIZACAO.value, 6, 2)
          + '/' + copy(cdsAPIAutorizacaoDATA_AUTORIZACAO.value, 1, 4));

        try
          SQLConsulta.Close;
          SQLConsulta.RequestLive := False;
          SQLConsulta.SQL.Text    := 'Update EMPRESA Set CFGEDBLOQ = ''' + FormatDateTime('mm/dd/yyyy', Data) + '''' +
                                        ' Where EMPRICOD = '''+ EmpresaPadrao +'''';
          SQLConsulta.ExecSQL;
        except

        end;
        SQLEmpresa.Close;
        SQLEmpresa.Open;
        SQLEmpresa.Locate('EMPRICOD',EmpresaPadrao,[]);

        Dm.SQLConfigGeral.Edit;
        Dm.SQLConfigGeralCFGEDBLOQ.Value := Data;
        Dm.SQLConfigGeralDIAS_AVISO.AsInteger := StrToIntDef(cdsAPIAutorizacaoDIAS_AVISO.AsString, 0);
        Dm.SQLConfigGeral.Post;
      end
    end;

  finally
    if ((not DM.vSEM_INTERNET)and((DM.DataSistema-DM.SQLConfigGeralDATA_INI_SEM_NET.AsDateTime) <= 7)) then
    if (not cdsAPIAutorizacao.Active) or (cdsAPIAutorizacaoDATA_AUTORIZACAO.AsString = '') then
    begin
      FormTelaAtivacao := TFormTelaAtivacao.Create(Application);
      FormTelaAtivacao.lblMensagem.Font.Size := 17;
      FormTelaAtivacao.lblMensagem.Caption := 'Cadastro não encontrado na Base de Dados da Automafour!';
      FormTelaAtivacao.ShowModal;
      Application.terminate;
    end;
  end;

end;


procedure TDM.SQLCupomNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLCupomCUPON2TOTITENS.Value    := 0 ;
  SQLCupomCUPON2DESC.Value        := 0 ;
  SQLCupomCUPON2ACRESC.Value      := 0 ;
  SQLCupomCUPON2TOTITENSRET.Value := 0 ;
  SQLCupomCUPON2CONVTAXA.Value    := 0 ;
  SQLCupomCUPOINROORDCOMPRA.Value := 0 ;
  SQLCupomCUPON2VLRCOMISSAO.Value := 0 ;
  SQLCupomCUPON2JUROATRAS.Value   := 0 ;
  SQLCupomCUPON2MULTAATRAS.Value  := 0 ;
  SQLCupomCUPON3CREDTAXA.Value    := 0 ;
  SQLCupomCUPOCCONSIG.Value       := 'N';
end;

procedure TDM.SQLCupomBeforePost(DataSet: TDataSet);
begin
  inherited;
  Case DataSet.State Of
    DsInsert: CodigoAutomatico('CUPOM', DSSQLCupom, DataSet, 3, 0);
  end ;
  CodNextCupom := DataSet.FIelds[0].AsString ;
end;

procedure TDM.SQLCupomItemNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLCupomItemCPITCSTATUS.Value       := 'A' ;
  SQLCupomItemCPITN3QTD.Value         := 0 ;
  SQLCupomItemCPITN3QTDTROCA.Value    := 0 ;
  SQLCupomItemCPITN3VLRUNIT.Value     := 0 ;
  SQLCupomItemCPITN3VLRCUSTUNIT.Value := 0 ;
  SQLCupomItemCPITN2DESC.Value        := 0 ;
  SQLCupomItemCPITN3VLRUNITLUCR.Value := 0 ;
  SQLCupomItemCOITN2ICMSALIQ.Value    := 0 ;
end ;

procedure TDM.SQLContasReceberBeforePost(DataSet: TDataSet);
begin
  inherited;
  {Case DataSet.State Of
    DsInsert: if (DataSet.Tag in [1,2,3]) Then
                CodigoAutomatico('CONTASRECEBER', DSSQLContasReceber, DataSet, 3, 0);
  end ;}
end;

procedure TDM.SQLContasReceberNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLContasReceberCTRCN2VLR.Value          := 0 ;
  SQLContasReceberCTRCN2DESCFIN.Value      := 0 ;
  SQLContasReceberCTRCN2TXJURO.Value       := 0 ;
  SQLContasReceberCTRCN2TXMULTA.Value      := 0 ;
  SQLContasReceberCTRCN2TOTREC.Value       := 0 ;
  SQLContasReceberCTRCN2TOTJUROREC.Value   := 0 ;
  SQLContasReceberCTRCN2TOTMULTAREC.Value  := 0 ;
  SQLContasReceberCTRCN2TOTDESCREC.Value   := 0 ;
  SQLContasReceberCTRCN2TOTMULTACOBR.Value := 0 ;
end;

procedure TDM.SQLCupomNumerarioNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLCupomNumerarioCONMCSTATUS.Value := 'A' ;
end;

procedure TDM.SQLContasReceberPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  {if (E is EDatabaseError) then
  begin
    if (E is EDBEngineError) then
    begin
      with E as EDBEngineError do
      begin
        case Errors[0].ErrorCode of
          dbierr_keyviol: if (DataSet.Tag in [1,2,3]) then
                            begin
                              DM.CodigoAutomatico('CONTASRECEBER', DSSQLContasReceber, DataSet, 3, 0);
                              CodNextCupom := DataSet.FIelds[0].AsString ;
                              Action       := DaRetry ;
                            end ;
        end ;
      end ;
    end ;
  end ;}
end;

procedure TDM.SQLPedidoVendaBeforePost(DataSet: TDataSet);
begin
  inherited;
  Case DataSet.State Of
    DsInsert: if (DataSet.Tag in [1,2,3]) Then
                CodigoAutomatico('PEDIDOVENDA', DSSQLPedidoVenda, DataSet, 2, 0);
  end ;
  CodNextOrc := DataSet.FIelds[0].AsString ;
end;

procedure TDM.SQLPedidoVendaPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  inherited;
  if (E is EDatabaseError) then
  begin
    if (E is EDBEngineError) then
    begin
      with E as EDBEngineError do
      begin
        if Errors[0].ErrorCode = DBIERR_KEYVIOL then
        begin
          if (DataSet.Tag in [1,2,3]) then
          begin
            DM.CodigoAutomatico('PEDIDOVENDA', DSSQLPedidoVenda, DataSet, 2, 0);
            CodNextOrc := DataSet.FIelds[0].AsString ;
            Action       := DaRetry ;
          end ;
       end
       else ShowMessage('Problemas ao gravar o Cabecalho do Orçamento :' + #13 + Errors[0].Message) ;
      end ;
    end ;
  end ;
end;

procedure TDM.TblPedidoCabCalcFields(DataSet: TDataSet);
begin
  inherited;
  TblPedidoCabTotalGeral.Value := TblPedidoCabTotal.Value -
                                  TblPedidoCabTotalDesconto.Value +
                                  TblPedidoCabValorFrete.Value ;
end;

procedure TDM.SQLFechamentoCaixaBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('PENDENTE').AsString   := 'S';
  DataSet.FieldByName('REGISTRO').AsDateTime := Now;
  Dm.CodigoAutomatico('FECHAMENTOCAIXA',Nil,DataSet,5,0);
end;

procedure TDM.ACBrNFeStatusChange(Sender: TObject);
begin
  inherited;
 { case dm.ACBrNFe.Status of
    stNFeStatusServico :
    begin
      DescricaoProduto.Caption := 'Verificando Status do servico...';
      DescricaoProduto.Update;
    end;
    stNFeRecepcao :
    begin
      DescricaoProduto.Caption := 'Enviando dados da NFe...';
      DescricaoProduto.Update;
    end;
    stNfeRetRecepcao :
    begin
      DescricaoProduto.Caption := 'Recebendo dados da NFe...';
      DescricaoProduto.Update;
    end;
    stNfeConsulta :
    begin
      DescricaoProduto.Caption := 'Consultando NFe...';
      DescricaoProduto.Update;
    end;
    stNfeCancelamento :
    begin
      DescricaoProduto.Caption := 'Enviando cancelamento de NFe...';
      DescricaoProduto.Update;
    end;
    stNfeInutilizacao :
    begin
      DescricaoProduto.Caption := 'Enviando pedido de Inutilização...';
      DescricaoProduto.Update;
    end;
    stNFeRecibo :
    begin
      DescricaoProduto.Caption := 'Consultando Recibo de Lote...';
      DescricaoProduto.Update;
    end;
    stNFeCadastro :
    begin
      DescricaoProduto.Caption := 'Consultando Cadastro...';
      DescricaoProduto.Update;
    end;
    stNFeCCe :
    begin
      DescricaoProduto.Caption := 'Enviando Carta de Correção...';
      DescricaoProduto.Update;
    end;
    stNFeEvento :
    begin
      DescricaoProduto.Caption := 'Enviando Evento...';
      DescricaoProduto.Update
    end;
  end;
  Application.ProcessMessages;
  }
end;

procedure TDM.DBAfterConnect(Sender: TObject);
begin
  inherited;
  //
end;

//function TDM.ExecAndWait(FileName, Params: string;
//  const WindowState: Word): boolean;
//var
//  StartInfo : TStartupInfo;
//  ProcInfo : TProcessInformation;
//  Done : Boolean;
//begin
//  FillChar(StartInfo,SizeOf(TStartupInfo),#0);
//  FillChar(ProcInfo,SizeOf(TProcessInformation),#0);
//  StartInfo.cb := SizeOf(TStartupInfo);
//  try
//    {$IFDEF UNICODE}
//    if StringRefCount(FileName) = -1 then begin
//      FileName := Copy(FileName, 1, MaxInt);
//    end;
//    {$ENDIF UNICODE}
//
//    Done := CreateProcess(nil, PChar(FileName + ' ' + Params), nil, nil,False,
//                          CREATE_NEW_PROCESS_GROUP + NORMAL_PRIORITY_CLASS,
//                          nil, nil, StartInfo, ProcInfo);
//    Result := Done;
//  finally
//    CloseHandle(ProcInfo.hProcess);
//    CloseHandle(ProcInfo.hThread);
//  end;
//end;

function TDM.ExecAndWait(const FileName, Params: string;
  const WindowState: Word): boolean;
var
  SUinfo : TStartupInfo;
  ProcInfo : TProcessInformation;
  CmdLine : String;  
begin
  { Coloca o nome do arquivo entre aspas. Isto é necessário devido aos espaços contidos em nomes longos } 
  CmdLine := '"' + Filename + '"' + Params; 
  FillChar(SUInfo, SizeOf(SUInfo), #0); 
  with SUInfo do
  begin
    cb := SizeOf(SUInfo);
    dwFlags := STARTF_USESHOWWINDOW;
    wShowWindow := WindowState;
  end;
  Result := CreateProcess(nil, PChar(CmdLine), nil, nil, false,
  CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, nil,
  PChar(ExtractFilePath(Filename)), SUInfo, ProcInfo);
  { Aguarda até ser finalizado }
  if Result then
  begin
    WaitForSingleObject(ProcInfo.hProcess, INFINITE);
    { Libera os Handles }
    CloseHandle(ProcInfo.hProcess);
    CloseHandle(ProcInfo.hThread);
  end;
end;

end.

