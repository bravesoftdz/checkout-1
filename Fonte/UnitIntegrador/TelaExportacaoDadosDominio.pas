unit TelaExportacaoDadosDominio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, StdCtrls, Mask,
  ToolEdit, DB, DBTables, RxQuery, VarSys, Placemnt, RXCtrls, ComCtrls,
  Gauges, RxLookup, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaExportacaoDadosDominio = class(TFormTelaGeralTEMPLATE)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    CheckProdutos: TCheckBox;
    CheckCliente: TCheckBox;
    CheckFornecedor: TCheckBox;
    EditDiretorio: TDirectoryEdit;
    SQLProdutos: TRxQuery;
    DSSQLProdutos: TDataSource;
    SQLProdutosPRODICOD: TIntegerField;
    SQLProdutosPRODA30CODESTRUT: TStringField;
    SQLProdutosPRODA60CODBAR: TStringField;
    SQLProdutosPRODA15CODANT: TStringField;
    SQLProdutosPRODIAGRUPGRADE: TIntegerField;
    SQLProdutosPRODA60REFER: TStringField;
    SQLProdutosPRODA60DESCR: TStringField;
    SQLProdutosPRODA30ADESCRREDUZ: TStringField;
    SQLProdutosPRODA255DESCRTEC: TStringField;
    SQLProdutosPRODICODBALANCA: TIntegerField;
    SQLProdutosPRODA15APAVIM: TStringField;
    SQLProdutosPRODA15RUA: TStringField;
    SQLProdutosPRODA15PRATEL: TStringField;
    SQLProdutosCLFSICOD: TIntegerField;
    SQLProdutosMARCICOD: TIntegerField;
    SQLProdutosUNIDICOD: TIntegerField;
    SQLProdutosGRADICOD: TIntegerField;
    SQLProdutosGRTMICOD: TIntegerField;
    SQLProdutosGRUPICOD: TIntegerField;
    SQLProdutosSUBGICOD: TIntegerField;
    SQLProdutosVARIICOD: TIntegerField;
    SQLProdutosICMSICOD: TIntegerField;
    SQLProdutosPRODN3PESOBRUTO: TBCDField;
    SQLProdutosPRODN3PESOLIQ: TBCDField;
    SQLProdutosPRODN3CAPACEMBAL: TBCDField;
    SQLProdutosPRODDCAD: TDateTimeField;
    SQLProdutosPRODDULTALTER: TDateTimeField;
    SQLProdutosPRODN3VLRVENDA: TBCDField;
    SQLProdutosPRODN3VLRVENDAPROM: TBCDField;
    SQLProdutosPRODDINIPROMO: TDateTimeField;
    SQLProdutosPRODDFIMPROMO: TDateTimeField;
    SQLProdutosPRODN3VLRCOMPRA: TBCDField;
    SQLProdutosPRODN3VLRCUSTO: TBCDField;
    SQLProdutosPRODN3VLRCUSTOMED: TBCDField;
    SQLProdutosPRODN3PERCIPI: TBCDField;
    SQLProdutosPRODN3PERCMARGLUCR: TBCDField;
    SQLProdutosPRODCATIVO: TStringField;
    SQLProdutosPRODCSERVICO: TStringField;
    SQLProdutosPRODCGERACOMIS: TStringField;
    SQLProdutosPRODN2COMISVISTA: TBCDField;
    SQLProdutosPRODN2COMISPRAZO: TBCDField;
    SQLProdutosPRODDIMOBOLIZ: TDateTimeField;
    SQLProdutosPRODICODPAI: TIntegerField;
    SQLProdutosPRODCTIPOBAIXA: TStringField;
    SQLProdutosPRODN3QTDEBAIXA: TBCDField;
    SQLProdutosCORICOD: TIntegerField;
    SQLProdutosPRODIORIGEM: TIntegerField;
    SQLProdutosPENDENTE: TStringField;
    SQLProdutosREGISTRO: TDateTimeField;
    SQLProdutosPRODDULTATUALIZ: TDateTimeField;
    SQLProdutosPRODA60DIMENSAO: TStringField;
    SQLProdutosPRODISITTRIB: TIntegerField;
    SQLProdutosPRODICODETIQBAL: TIntegerField;
    SQLProdutosPRODIDIASVALIDADE: TIntegerField;
    SQLProdutosPRODN3VLRCOMPRAMED: TBCDField;
    SQLProdutosPRODN3DOLARCUSTO: TBCDField;
    SQLProdutosPRODN3DOLARCOMPRA: TBCDField;
    SQLProdutosPRODN3DOLARVENDA: TBCDField;
    SQLProdutosUNIDA5DESCR: TStringField;
    SQLCliente: TRxQuery;
    DataSource1: TDataSource;
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
    SQLClienteCLIEA60PROFISSAO: TStringField;
    SQLClienteCLIEA60ENDRES: TStringField;
    SQLClienteCLIEA60BAIRES: TStringField;
    SQLClienteCLIEA60CIDRES: TStringField;
    SQLClienteCLIEA2UFRES: TStringField;
    SQLClienteCLIEA8CEPRES: TStringField;
    SQLClienteCLIEA60EMAIL: TStringField;
    SQLClienteCLIEA60URL: TStringField;
    SQLClienteCLIEN2RENDA: TBCDField;
    SQLClienteCLIEN2LIMITECRED: TBCDField;
    SQLClienteCLIEA60NOMEPAI: TStringField;
    SQLClienteCLIEA60NOMEMAE: TStringField;
    SQLClienteCLIEDNASC: TDateTimeField;
    SQLClienteCLIECESTADOCIVIL: TStringField;
    SQLClienteCLIEA60CONJUGE: TStringField;
    SQLClienteCLIEA60CONJUGEMAE: TStringField;
    SQLClienteCLIEN2CONJUGERENDA: TBCDField;
    SQLClienteCLIEDNASCCONJUGE: TDateTimeField;
    SQLClienteCLIEA60CONJUGEEMPR: TStringField;
    SQLClienteCLIEA15CONJFONEMPR: TStringField;
    SQLClienteCLIEA60EMPRESA: TStringField;
    SQLClienteCLIEA60ENDEMPRESA: TStringField;
    SQLClienteCLIEA60BAIEMPRESA: TStringField;
    SQLClienteCLIEA60CIDEMPRESA: TStringField;
    SQLClienteCLIEA2UFEMPRESA: TStringField;
    SQLClienteCLIEA8CEPEMPRESA: TStringField;
    SQLClienteCLIEDAMISEMPRESA: TDateTimeField;
    SQLClienteCLIEA15FONEEMPRESA: TStringField;
    SQLClienteBANCA5COD: TStringField;
    SQLClienteCLIEA5AGENCIA: TStringField;
    SQLClienteCLIEA10CONTA: TStringField;
    SQLClienteCLIEA60TITULAR: TStringField;
    SQLClienteCLIEDABERTCONTA: TDateTimeField;
    SQLClienteCLIETOBS: TStringField;
    SQLClienteTPCLICOD: TIntegerField;
    SQLClienteMTBLICOD: TIntegerField;
    SQLClientePROFICOD: TIntegerField;
    SQLClienteVENDICOD: TIntegerField;
    SQLClienteCLIEDCAD: TDateTimeField;
    SQLClienteCLIEDPRICOMPRA: TDateTimeField;
    SQLClienteCLIEDULTCOMPRA: TDateTimeField;
    SQLClienteCLIEA254PATHFOTO: TStringField;
    SQLClienteCLIECRECAVISATRASO: TStringField;
    SQLClienteCLIEA30NATURALIDADE: TStringField;
    SQLClienteCLIECRECEBECARTAO: TStringField;
    SQLClienteCLIEDENVCARTIMP: TDateTimeField;
    SQLClienteCLIEDRETCARTIMP: TDateTimeField;
    SQLClienteCLIEDENVCARTCLI: TDateTimeField;
    SQLClienteCLIEA10CODCONV: TStringField;
    SQLClienteCLIEA10CODANT: TStringField;
    SQLClienteCLIEA20NROCARTCRED: TStringField;
    SQLClientePENDENTE: TStringField;
    SQLClienteREGISTRO: TDateTimeField;
    SQLClienteCLIEA35NROCARTCRED: TStringField;
    SQLClienteCLIEA60EMAILCONJUG: TStringField;
    SQLClienteCLIEDCASAMENTO: TDateTimeField;
    SQLClienteTPRCICOD: TIntegerField;
    SQLClienteCLIEA60ENDCOB: TStringField;
    SQLClienteCLIEA60BAICOB: TStringField;
    SQLClienteCLIEA60CIDCOB: TStringField;
    SQLClienteCLIEA2UFCOB: TStringField;
    SQLClienteCLIEA8CEPCOB: TStringField;
    SQLClientePLRCICOD: TIntegerField;
    SQLClienteCLIEA30TEMPOMORADIA: TStringField;
    SQLClienteCLIECCASAPROPRIA: TStringField;
    SQLFornecedor: TRxQuery;
    DSSQLFornecedor: TDataSource;
    SQLFornecedorFORNICOD: TIntegerField;
    SQLFornecedorFORNA60RAZAOSOC: TStringField;
    SQLFornecedorFORNA60NOMEFANT: TStringField;
    SQLFornecedorTPFRICOD: TIntegerField;
    SQLFornecedorFORNA60CONTATO: TStringField;
    SQLFornecedorFORNCFISJURID: TStringField;
    SQLFornecedorFORNA14CGC: TStringField;
    SQLFornecedorFORNA20IE: TStringField;
    SQLFornecedorFORNA11CPF: TStringField;
    SQLFornecedorFORNA10RG: TStringField;
    SQLFornecedorFORNA60END: TStringField;
    SQLFornecedorFORNA60BAI: TStringField;
    SQLFornecedorFORNA60CID: TStringField;
    SQLFornecedorFORNA2UF: TStringField;
    SQLFornecedorFORNA8CEP: TStringField;
    SQLFornecedorFORNA15FONE1: TStringField;
    SQLFornecedorFORNA15FONE2: TStringField;
    SQLFornecedorFORNA15FAX: TStringField;
    SQLFornecedorFORNA60EMAIL: TStringField;
    SQLFornecedorFORNA60URL: TStringField;
    SQLFornecedorFORNTOBS: TStringField;
    SQLFornecedorPENDENTE: TStringField;
    SQLFornecedorREGISTRO: TDateTimeField;
    SQLFornecedorFORNA30CODCONTABIL: TStringField;
    FormStorage1: TFormStorage;
    CheckNotaSaida: TCheckBox;
    CheckNotaEntrada: TCheckBox;
    SQLNotaEntrada: TRxQuery;
    SQLNotaEntradaNOCPA13ID: TStringField;
    SQLNotaEntradaEMPRICOD: TIntegerField;
    SQLNotaEntradaNOCPICOD: TIntegerField;
    SQLNotaEntradaFORNICOD: TIntegerField;
    SQLNotaEntradaNOCPA4ANO: TStringField;
    SQLNotaEntradaNOCPA5SERIE: TStringField;
    SQLNotaEntradaNOCPA30NRO: TStringField;
    SQLNotaEntradaNOCPCSTATUS: TStringField;
    SQLNotaEntradaPDCPA13ID: TStringField;
    SQLNotaEntradaOPESICOD: TIntegerField;
    SQLNotaEntradaNOCPDCANCELAMENTO: TDateTimeField;
    SQLNotaEntradaPLPGICOD: TIntegerField;
    SQLNotaEntradaPLCTA15COD: TStringField;
    SQLNotaEntradaNOCPDEMISSAO: TDateTimeField;
    SQLNotaEntradaNOCPDRECEBIMENTO: TDateTimeField;
    SQLNotaEntradaNOCPN3SOMAITENS: TBCDField;
    SQLNotaEntradaNOCPN3TOTITENS: TBCDField;
    SQLNotaEntradaNOCPN3TOTDESC: TBCDField;
    SQLNotaEntradaNOCPN3VLRTOTNOTA: TBCDField;
    SQLNotaEntradaNOCPN3VLRBASCALICM: TBCDField;
    SQLNotaEntradaNOCPN3VLRICMS: TBCDField;
    SQLNotaEntradaNOCPN3VLRBCICMSSUB: TBCDField;
    SQLNotaEntradaNOCPN3VLRICMSSUB: TBCDField;
    SQLNotaEntradaNOCPN3VLRFRETE: TBCDField;
    SQLNotaEntradaNOCPN3VLRSEGURO: TBCDField;
    SQLNotaEntradaNOCPN3VLROUTRADESP: TBCDField;
    SQLNotaEntradaNOCPN3VLRIPI: TBCDField;
    SQLNotaEntradaNOCPN3VLRDESC: TBCDField;
    SQLNotaEntradaCFOPA5COD: TStringField;
    SQLNotaEntradaNOCPN3PERCICMSFRET: TBCDField;
    SQLNotaEntradaNOCPA254OBS: TMemoField;
    SQLNotaEntradaTRANICOD: TIntegerField;
    SQLNotaEntradaNOCPA5TIPOFRETE: TStringField;
    SQLNotaEntradaPENDENTE: TStringField;
    SQLNotaEntradaREGISTRO: TDateTimeField;
    SQLNotaEntradaEMPRICODDEST: TIntegerField;
    SQLNotaEntradaCLIEA13ID: TStringField;
    SQLNotaEntradaUSUAA60LOGIN: TStringField;
    SQLNotaEntradaCLIEA13IDDESTINO: TStringField;
    SQLNotaEntradaFUNCA13ID: TStringField;
    SQLNotaEntradaFORNICOD_1: TIntegerField;
    SQLNotaEntradaFORNA60RAZAOSOC: TStringField;
    SQLNotaEntradaFORNA60NOMEFANT: TStringField;
    SQLNotaEntradaTPFRICOD: TIntegerField;
    SQLNotaEntradaFORNA60CONTATO: TStringField;
    SQLNotaEntradaFORNCFISJURID: TStringField;
    SQLNotaEntradaFORNA14CGC: TStringField;
    SQLNotaEntradaFORNA20IE: TStringField;
    SQLNotaEntradaFORNA11CPF: TStringField;
    SQLNotaEntradaFORNA10RG: TStringField;
    SQLNotaEntradaFORNA60END: TStringField;
    SQLNotaEntradaFORNA60BAI: TStringField;
    SQLNotaEntradaFORNA60CID: TStringField;
    SQLNotaEntradaFORNA2UF: TStringField;
    SQLNotaEntradaFORNA8CEP: TStringField;
    SQLNotaEntradaFORNA15FONE1: TStringField;
    SQLNotaEntradaFORNA15FONE2: TStringField;
    SQLNotaEntradaFORNA15FAX: TStringField;
    SQLNotaEntradaFORNA60EMAIL: TStringField;
    SQLNotaEntradaFORNA60URL: TStringField;
    SQLNotaEntradaFORNTOBS: TStringField;
    SQLNotaEntradaPENDENTE_1: TStringField;
    SQLNotaEntradaREGISTRO_1: TDateTimeField;
    SQLNotaEntradaFORNA30CODCONTABIL: TStringField;
    DSSQLNotaEntrada: TDataSource;
    SQLCupom: TRxQuery;
    SQLEntrada: TRxQuery;
    SQLSaida: TRxQuery;
    SQLOperacaoEstoque: TRxQuery;
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
    SQLCupomCUPON2DESCITENS: TBCDField;
    SQLCupomCUPOA30DATACARTAO: TStringField;
    SQLCupomCUPOA30HORACARTAO: TStringField;
    SQLCupomCUPOA30NSUPROVEDOR: TStringField;
    SQLCupomCUPOA30NSUINSTITUICAO: TStringField;
    SQLCupomCATCA13ID: TStringField;
    SQLCupomOPESICOD: TIntegerField;
    SQLCupomPLCTA15CODCRED: TStringField;
    SQLCupomPLCTA15CODDEB: TStringField;
    SQLCupomCUPOA13IDCUPNEG: TStringField;
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
    SQLOperacaoEstoquePLCTA15CODCRED: TStringField;
    SQLOperacaoEstoquePLCTA15CODDEB: TStringField;
    SQLOperacaoEstoqueACUMICOD: TIntegerField;
    SQLEntradaNOCPA13ID: TStringField;
    SQLEntradaEMPRICOD: TIntegerField;
    SQLEntradaNOCPICOD: TIntegerField;
    SQLEntradaFORNICOD: TIntegerField;
    SQLEntradaNOCPA4ANO: TStringField;
    SQLEntradaNOCPA5SERIE: TStringField;
    SQLEntradaNOCPA30NRO: TStringField;
    SQLEntradaNOCPCSTATUS: TStringField;
    SQLEntradaPDCPA13ID: TStringField;
    SQLEntradaOPESICOD: TIntegerField;
    SQLEntradaNOCPDCANCELAMENTO: TDateTimeField;
    SQLEntradaPLPGICOD: TIntegerField;
    SQLEntradaPLCTA15COD: TStringField;
    SQLEntradaNOCPDEMISSAO: TDateTimeField;
    SQLEntradaNOCPDRECEBIMENTO: TDateTimeField;
    SQLEntradaNOCPN3SOMAITENS: TBCDField;
    SQLEntradaNOCPN3TOTITENS: TBCDField;
    SQLEntradaNOCPN3TOTDESC: TBCDField;
    SQLEntradaNOCPN3VLRTOTNOTA: TBCDField;
    SQLEntradaNOCPN3VLRBASCALICM: TBCDField;
    SQLEntradaNOCPN3VLRICMS: TBCDField;
    SQLEntradaNOCPN3VLRBCICMSSUB: TBCDField;
    SQLEntradaNOCPN3VLRICMSSUB: TBCDField;
    SQLEntradaNOCPN3VLRFRETE: TBCDField;
    SQLEntradaNOCPN3VLRSEGURO: TBCDField;
    SQLEntradaNOCPN3VLROUTRADESP: TBCDField;
    SQLEntradaNOCPN3VLRIPI: TBCDField;
    SQLEntradaNOCPN3VLRDESC: TBCDField;
    SQLEntradaCFOPA5COD: TStringField;
    SQLEntradaNOCPN3PERCICMSFRET: TBCDField;
    SQLEntradaNOCPA254OBS: TMemoField;
    SQLEntradaTRANICOD: TIntegerField;
    SQLEntradaNOCPA5TIPOFRETE: TStringField;
    SQLEntradaPENDENTE: TStringField;
    SQLEntradaREGISTRO: TDateTimeField;
    SQLEntradaEMPRICODDEST: TIntegerField;
    SQLEntradaCLIEA13ID: TStringField;
    SQLEntradaUSUAA60LOGIN: TStringField;
    SQLEntradaCLIEA13IDDESTINO: TStringField;
    SQLEntradaFUNCA13ID: TStringField;
    SQLEntradaPLCTA15CODDEB: TStringField;
    SQLAcumuladores: TRxQuery;
    SQLAcumuladoresACUMICOD: TIntegerField;
    SQLAcumuladoresACUMA60DESCR: TStringField;
    SQLAcumuladoresACUMICODASSOC: TIntegerField;
    SQLAcumuladoresACUMCICMS: TStringField;
    SQLAcumuladoresACUMCIPI: TStringField;
    SQLAcumuladoresACUMCISSQN: TStringField;
    SQLSaidaNOFIA13ID: TStringField;
    SQLSaidaEMPRICOD: TIntegerField;
    SQLSaidaNOFIICOD: TIntegerField;
    SQLSaidaEMPRICODDEST: TIntegerField;
    SQLSaidaCLIEA13ID: TStringField;
    SQLSaidaFORNICOD: TIntegerField;
    SQLSaidaSERIA5COD: TStringField;
    SQLSaidaNOFIINUMERO: TIntegerField;
    SQLSaidaNOFICSTATUS: TStringField;
    SQLSaidaNOFIDEMIS: TDateTimeField;
    SQLSaidaCFOPA5COD: TStringField;
    SQLSaidaOPESICOD: TIntegerField;
    SQLSaidaNOFIN2BASCALCICMS: TBCDField;
    SQLSaidaNOFIN2VLRICMS: TBCDField;
    SQLSaidaNOFIN2BASCALCSUBS: TBCDField;
    SQLSaidaNOFIN2BASCALCCIPI: TBCDField;
    SQLSaidaNOFIN2VLRIPI: TBCDField;
    SQLSaidaNOFIN2VLRDESC: TBCDField;
    SQLSaidaNOFIN2VLRFRETE: TBCDField;
    SQLSaidaNOFIN2VLRSEGURO: TBCDField;
    SQLSaidaNOFIN2VLROUTRASDESP: TBCDField;
    SQLSaidaNOFIN2VLRSERVICO: TBCDField;
    SQLSaidaNOFIN2VLRISSQN: TBCDField;
    SQLSaidaNOFIN2VLRPRODUTO: TBCDField;
    SQLSaidaNOFIN2VLRNOTA: TBCDField;
    SQLSaidaNOFIA255OBS: TStringField;
    SQLSaidaNOFICFRETEPORCONTA: TStringField;
    SQLSaidaTRANICOD: TIntegerField;
    SQLSaidaNOFIN3QUANT: TBCDField;
    SQLSaidaNOFIA15MARCA: TStringField;
    SQLSaidaNOFIN3PESBRUT: TBCDField;
    SQLSaidaNOFIN3PESLIQ: TBCDField;
    SQLSaidaNOFIA8PLACAVEIC: TStringField;
    SQLSaidaPLRCICOD: TIntegerField;
    SQLSaidaPLCTA15COD: TStringField;
    SQLSaidaPENDENTE: TStringField;
    SQLSaidaREGISTRO: TDateTimeField;
    SQLSaidaNOFIN2VLRDESCPROM: TBCDField;
    SQLSaidaNOFIINROTALAO: TIntegerField;
    SQLSaidaPDVDA13ID: TStringField;
    SQLSaidaVENDICOD: TIntegerField;
    SQLSaidaPDVDA60OBS: TStringField;
    SQLSaidaNOFIA20ESPECIE: TStringField;
    SQLSaidaNOFIA30COMPRADOR: TStringField;
    SQLSaidaNOFIA30NROPEDCOMP: TStringField;
    SQLSaidaNOFIN2VLRICMSFRETE: TBCDField;
    SQLSaidaNOFIN2VLRSUBS: TBCDField;
    SQLSaidaCUPOA13ID: TStringField;
    SQLSaidaNOFIA13IDCONSIGNADA: TStringField;
    SQLSaidaUSUAICOD: TIntegerField;
    SQLSaidaUSUAA60LOGIN: TStringField;
    SQLSaidaNOFIDCANCEL: TDateTimeField;
    SQLSaidaPLCTA15CODCRED: TStringField;
    SQLSaidaPLCTA15CODDEB: TStringField;
    SQLSaidaCUPOA13IDCUPNEG: TStringField;
    SQLSaidaAVALA13ID: TStringField;
    SQLContasPagar: TRxQuery;
    SQLPagamento: TRxQuery;
    DSSQLContasPagar: TDataSource;
    SQLNotaEntradaCodAcumuladorLookup: TIntegerField;
    SQLNotaEntradaAcumuladorLookup: TIntegerField;
    SQLNotaFiscal: TRxQuery;
    DSSQLNotaSaida: TDataSource;
    SQLNotaFiscalNOFIA13ID: TStringField;
    SQLNotaFiscalEMPRICOD: TIntegerField;
    SQLNotaFiscalNOFIICOD: TIntegerField;
    SQLNotaFiscalEMPRICODDEST: TIntegerField;
    SQLNotaFiscalCLIEA13ID: TStringField;
    SQLNotaFiscalFORNICOD: TIntegerField;
    SQLNotaFiscalSERIA5COD: TStringField;
    SQLNotaFiscalNOFIINUMERO: TIntegerField;
    SQLNotaFiscalNOFICSTATUS: TStringField;
    SQLNotaFiscalNOFIDEMIS: TDateTimeField;
    SQLNotaFiscalCFOPA5COD: TStringField;
    SQLNotaFiscalOPESICOD: TIntegerField;
    SQLNotaFiscalNOFIN2BASCALCICMS: TBCDField;
    SQLNotaFiscalNOFIN2VLRICMS: TBCDField;
    SQLNotaFiscalNOFIN2BASCALCSUBS: TBCDField;
    SQLNotaFiscalNOFIN2BASCALCCIPI: TBCDField;
    SQLNotaFiscalNOFIN2VLRIPI: TBCDField;
    SQLNotaFiscalNOFIN2VLRDESC: TBCDField;
    SQLNotaFiscalNOFIN2VLRFRETE: TBCDField;
    SQLNotaFiscalNOFIN2VLRSEGURO: TBCDField;
    SQLNotaFiscalNOFIN2VLROUTRASDESP: TBCDField;
    SQLNotaFiscalNOFIN2VLRSERVICO: TBCDField;
    SQLNotaFiscalNOFIN2VLRISSQN: TBCDField;
    SQLNotaFiscalNOFIN2VLRPRODUTO: TBCDField;
    SQLNotaFiscalNOFIN2VLRNOTA: TBCDField;
    SQLNotaFiscalNOFIA255OBS: TStringField;
    SQLNotaFiscalNOFICFRETEPORCONTA: TStringField;
    SQLNotaFiscalTRANICOD: TIntegerField;
    SQLNotaFiscalNOFIN3QUANT: TBCDField;
    SQLNotaFiscalNOFIA15MARCA: TStringField;
    SQLNotaFiscalNOFIN3PESBRUT: TBCDField;
    SQLNotaFiscalNOFIN3PESLIQ: TBCDField;
    SQLNotaFiscalNOFIA8PLACAVEIC: TStringField;
    SQLNotaFiscalPLRCICOD: TIntegerField;
    SQLNotaFiscalPLCTA15COD: TStringField;
    SQLNotaFiscalPENDENTE: TStringField;
    SQLNotaFiscalREGISTRO: TDateTimeField;
    SQLNotaFiscalNOFIN2VLRDESCPROM: TBCDField;
    SQLNotaFiscalNOFIINROTALAO: TIntegerField;
    SQLNotaFiscalPDVDA13ID: TStringField;
    SQLNotaFiscalVENDICOD: TIntegerField;
    SQLNotaFiscalPDVDA60OBS: TStringField;
    SQLNotaFiscalNOFIA20ESPECIE: TStringField;
    SQLNotaFiscalNOFIA30COMPRADOR: TStringField;
    SQLNotaFiscalNOFIA30NROPEDCOMP: TStringField;
    SQLNotaFiscalNOFIN2VLRICMSFRETE: TBCDField;
    SQLNotaFiscalNOFIN2VLRSUBS: TBCDField;
    SQLNotaFiscalCUPOA13ID: TStringField;
    SQLNotaFiscalNOFIA13IDCONSIGNADA: TStringField;
    SQLNotaFiscalUSUAICOD: TIntegerField;
    SQLNotaFiscalUSUAA60LOGIN: TStringField;
    SQLNotaFiscalNOFIDCANCEL: TDateTimeField;
    SQLNotaFiscalPLCTA15CODCRED: TStringField;
    SQLNotaFiscalPLCTA15CODDEB: TStringField;
    SQLNotaFiscalCUPOA13IDCUPNEG: TStringField;
    SQLNotaFiscalAVALA13ID: TStringField;
    SQLNotaFiscalCLIEA13ID_1: TStringField;
    SQLNotaFiscalEMPRICOD_1: TIntegerField;
    SQLNotaFiscalCLIEICOD: TIntegerField;
    SQLNotaFiscalCLIEA5FISJURID: TStringField;
    SQLNotaFiscalCLIEA14CGC: TStringField;
    SQLNotaFiscalCLIEA20IE: TStringField;
    SQLNotaFiscalCLIEA11CPF: TStringField;
    SQLNotaFiscalCLIEA10RG: TStringField;
    SQLNotaFiscalCLIEA60RAZAOSOC: TStringField;
    SQLNotaFiscalCLIEA60NOMEFANT: TStringField;
    SQLNotaFiscalCLIEA60CONTATO: TStringField;
    SQLNotaFiscalCLIEA15FONE1: TStringField;
    SQLNotaFiscalCLIEA15FONE2: TStringField;
    SQLNotaFiscalCLIEA15FAX: TStringField;
    SQLNotaFiscalCLIEA30OUTROSDOC: TStringField;
    SQLNotaFiscalCLIECSEXO: TStringField;
    SQLNotaFiscalCLIEA60PROFISSAO: TStringField;
    SQLNotaFiscalCLIEA60ENDRES: TStringField;
    SQLNotaFiscalCLIEA60BAIRES: TStringField;
    SQLNotaFiscalCLIEA60CIDRES: TStringField;
    SQLNotaFiscalCLIEA2UFRES: TStringField;
    SQLNotaFiscalCLIEA8CEPRES: TStringField;
    SQLNotaFiscalCLIEA60EMAIL: TStringField;
    SQLNotaFiscalCLIEA60URL: TStringField;
    SQLNotaFiscalCLIEN2RENDA: TBCDField;
    SQLNotaFiscalCLIEN2LIMITECRED: TBCDField;
    SQLNotaFiscalCLIEA60NOMEPAI: TStringField;
    SQLNotaFiscalCLIEA60NOMEMAE: TStringField;
    SQLNotaFiscalCLIEDNASC: TDateTimeField;
    SQLNotaFiscalCLIECESTADOCIVIL: TStringField;
    SQLNotaFiscalCLIEA60CONJUGE: TStringField;
    SQLNotaFiscalCLIEA60CONJUGEMAE: TStringField;
    SQLNotaFiscalCLIEN2CONJUGERENDA: TBCDField;
    SQLNotaFiscalCLIEDNASCCONJUGE: TDateTimeField;
    SQLNotaFiscalCLIEA60CONJUGEEMPR: TStringField;
    SQLNotaFiscalCLIEA15CONJFONEMPR: TStringField;
    SQLNotaFiscalCLIEA60EMPRESA: TStringField;
    SQLNotaFiscalCLIEA60ENDEMPRESA: TStringField;
    SQLNotaFiscalCLIEA60BAIEMPRESA: TStringField;
    SQLNotaFiscalCLIEA60CIDEMPRESA: TStringField;
    SQLNotaFiscalCLIEA2UFEMPRESA: TStringField;
    SQLNotaFiscalCLIEA8CEPEMPRESA: TStringField;
    SQLNotaFiscalCLIEDAMISEMPRESA: TDateTimeField;
    SQLNotaFiscalCLIEA15FONEEMPRESA: TStringField;
    SQLNotaFiscalBANCA5COD: TStringField;
    SQLNotaFiscalCLIEA5AGENCIA: TStringField;
    SQLNotaFiscalCLIEA10CONTA: TStringField;
    SQLNotaFiscalCLIEA60TITULAR: TStringField;
    SQLNotaFiscalCLIEDABERTCONTA: TDateTimeField;
    SQLNotaFiscalCLIETOBS: TStringField;
    SQLNotaFiscalTPCLICOD: TIntegerField;
    SQLNotaFiscalMTBLICOD: TIntegerField;
    SQLNotaFiscalPROFICOD: TIntegerField;
    SQLNotaFiscalVENDICOD_1: TIntegerField;
    SQLNotaFiscalCLIEDCAD: TDateTimeField;
    SQLNotaFiscalCLIEDPRICOMPRA: TDateTimeField;
    SQLNotaFiscalCLIEDULTCOMPRA: TDateTimeField;
    SQLNotaFiscalCLIEA254PATHFOTO: TStringField;
    SQLNotaFiscalCLIECRECAVISATRASO: TStringField;
    SQLNotaFiscalCLIEA30NATURALIDADE: TStringField;
    SQLNotaFiscalCLIECRECEBECARTAO: TStringField;
    SQLNotaFiscalCLIEDENVCARTIMP: TDateTimeField;
    SQLNotaFiscalCLIEDRETCARTIMP: TDateTimeField;
    SQLNotaFiscalCLIEDENVCARTCLI: TDateTimeField;
    SQLNotaFiscalCLIEA10CODCONV: TStringField;
    SQLNotaFiscalCLIEA10CODANT: TStringField;
    SQLNotaFiscalCLIEA20NROCARTCRED: TStringField;
    SQLNotaFiscalPENDENTE_1: TStringField;
    SQLNotaFiscalREGISTRO_1: TDateTimeField;
    SQLNotaFiscalCLIEA35NROCARTCRED: TStringField;
    SQLNotaFiscalCLIEA60EMAILCONJUG: TStringField;
    SQLNotaFiscalCLIEDCASAMENTO: TDateTimeField;
    SQLNotaFiscalTPRCICOD: TIntegerField;
    SQLNotaFiscalCLIEA60ENDCOB: TStringField;
    SQLNotaFiscalCLIEA60BAICOB: TStringField;
    SQLNotaFiscalCLIEA60CIDCOB: TStringField;
    SQLNotaFiscalCLIEA2UFCOB: TStringField;
    SQLNotaFiscalCLIEA8CEPCOB: TStringField;
    SQLNotaFiscalPLRCICOD_1: TIntegerField;
    SQLNotaFiscalCLIEA30TEMPOMORADIA: TStringField;
    SQLNotaFiscalCLIECCASAPROPRIA: TStringField;
    SQLNotaFiscalCLIEA30LOCALIMOV1: TStringField;
    SQLNotaFiscalCLIEA30LOCALIMOV2: TStringField;
    SQLNotaFiscalCLIEA30MODVEICULO: TStringField;
    SQLNotaFiscalCLIEA30TIPOIMOV1: TStringField;
    SQLNotaFiscalCLIEA30TIPOIMOV2: TStringField;
    SQLNotaFiscalCLIEA4ANOVEICULO: TStringField;
    SQLNotaFiscalCLIEA60IMOB: TStringField;
    SQLNotaFiscalCLIEA8PLACAVEICULO: TStringField;
    SQLNotaFiscalCLIECSTATUSIMOV1: TStringField;
    SQLNotaFiscalCLIECSTATUSIMOV2: TStringField;
    SQLNotaFiscalCLIEN2VLRALUGUEL: TBCDField;
    SQLNotaFiscalCLIEIDIAVCTOCARTAO: TIntegerField;
    SQLNotaFiscalCodAcumuladorLookup: TIntegerField;
    SQLNotaFiscalAcumuladorLookup: TIntegerField;
    SQLContasReceber: TRxQuery;
    DSSQLContasReceber: TDataSource;
    SQLRecebimento: TRxQuery;
    SQLRecebimentoCTRCA13ID: TStringField;
    SQLRecebimentoRECEICOD: TIntegerField;
    SQLRecebimentoRECEDRECTO: TDateTimeField;
    SQLRecebimentoRECEN2VLRRECTO: TBCDField;
    SQLRecebimentoRECEN2VLRJURO: TBCDField;
    SQLRecebimentoRECEN2VLRMULTA: TBCDField;
    SQLRecebimentoRECEN2DESC: TBCDField;
    SQLRecebimentoRECEN2MULTACOBR: TBCDField;
    SQLRecebimentoEMPRICODREC: TIntegerField;
    SQLRecebimentoTERMICODREC: TIntegerField;
    SQLRecebimentoCLIEA13ID: TStringField;
    SQLRecebimentoPENDENTE: TStringField;
    SQLRecebimentoREGISTRO: TDateTimeField;
    SQLRecebimentoTERMICOD: TIntegerField;
    SQLRecebimentoRECEA30HIST: TStringField;
    SQLRecebimentoRECEA254HISTORICO: TStringField;
    SQLRecebimentoPLCTA15CREDITO: TStringField;
    SQLRecebimentoPLCTA15CODJUROCRED: TStringField;
    SQLRecebimentoPLCTA15CODMULTCRED: TStringField;
    SQLRecebimentoPLCTA15CODDESCCRED: TStringField;
    SQLRecebimentoPLCTA15DEBITO: TStringField;
    SQLRecebimentoPLCTA15CODJURODEB: TStringField;
    SQLRecebimentoPLCTA15CODMULTDEB: TStringField;
    SQLRecebimentoPLCTA15CODDESCDEB: TStringField;
    SQLRecebimentoTPLQICOD: TIntegerField;
    SQLRecebimentoCTRCA13IDCREDITO: TStringField;
    SQLRecebimentoRECEDDATAMOV: TDateTimeField;
    SQLCFOP: TRxQuery;
    SQLCFOPCFOPA5COD: TStringField;
    SQLCFOPCFOPA60DESCR: TStringField;
    SQLCFOPCFOPCVENDA: TStringField;
    SQLCFOPPENDENTE: TStringField;
    SQLCFOPREGISTRO: TDateTimeField;
    SQLCFOPCFOPCDESTVLRNTRIB: TStringField;
    GroupBox3: TGroupBox;
    BtnAssociar: TRxSpeedButton;
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
    SQLContasReceberCTRCN2TOTMULTACOBR: TBCDField;
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
    SQLContasReceberBANCA5CODCHQ: TStringField;
    SQLContasReceberCTRCA10AGENCIACHQ: TStringField;
    SQLContasReceberCTRCA15CONTACHQ: TStringField;
    SQLContasReceberCTRCA15NROCHQ: TStringField;
    SQLContasReceberCTRCA60TITULARCHQ: TStringField;
    SQLContasReceberCTRCA20CGCCPFCHQ: TStringField;
    SQLContasReceberCTRCDDEPOSCHQ: TDateTimeField;
    SQLContasReceberALINICOD: TIntegerField;
    SQLContasReceberPDVDA13ID: TStringField;
    SQLContasReceberCTRCDESTORNO: TDateTimeField;
    SQLContasReceberFRETA13ID: TStringField;
    SQLContasReceberCTRCA254HIST: TStringField;
    SQLContasReceberCTRCCTEMREGRECEBER: TStringField;
    SQLContasReceberDUPLA13ID: TStringField;
    SQLContasReceberCOBRA13ID: TStringField;
    SQLContasReceberCTRCDENVIOCOBRANCA: TDateTimeField;
    SQLContasReceberHTPDICOD: TIntegerField;
    SQLContasReceberPLCTA15CODDEBITO: TStringField;
    SQLContasReceberAVALA13ID: TStringField;
    SQLContasReceberCTRCCTIPOREGISTRO: TStringField;
    SQLContasReceberCONTA13ID: TStringField;
    SQLContasReceberCODDEBITO: TIntegerField;
    SQLContasReceberCODCREDITO: TIntegerField;
    SQLContasReceberCLIEA30CODCONTABIL: TStringField;
    GroupBox4: TGroupBox;
    FileClientes: TFilenameEdit;
    Label4: TLabel;
    Label5: TLabel;
    FileFornecedores: TFilenameEdit;
    BtnCliente: TSpeedButton;
    SQLClienteCLIEA30CODCONTABIL: TStringField;
    SQLClienteCPF: TRxQuery;
    SQLClienteCPFCLIEA11CPF: TStringField;
    SQLClienteCPFCLIEA30CODCONTABIL: TStringField;
    SQLClienteCGC: TRxQuery;
    SQLClienteCGCCLIEA14CGC: TStringField;
    SQLClienteCGCCLIEA30CODCONTABIL: TStringField;
    Panel1: TPanel;
    LabelImpressao: TRxSpeedButton;
    RichLOG: TRichEdit;
    FileSalvar: TFilenameEdit;
    Label6: TLabel;
    BtnFornecedor: TSpeedButton;
    Gauge: TGauge;
    GroupBox5: TGroupBox;
    CheckParcelaSaida: TCheckBox;
    CheckParcelasCupom: TCheckBox;
    SQLPlanoContas: TRxQuery;
    SQLPlanoContasPLCTA15COD: TStringField;
    SQLPlanoContasPLCTICODREDUZ: TIntegerField;
    SQLPlanoContasPLCTINIVEL: TIntegerField;
    SQLPlanoContasPLCTA15CODPAI: TStringField;
    SQLPlanoContasPLCTA30CODEDIT: TStringField;
    SQLPlanoContasPLCTA60DESCR: TStringField;
    SQLPlanoContasPLCTCANALSINT: TStringField;
    SQLPlanoContasPLCTCTIPOSALDO: TStringField;
    SQLPlanoContasPENDENTE: TStringField;
    SQLPlanoContasREGISTRO: TDateTimeField;
    ComboPlanoContasReceber: TRxDBLookupCombo;
    Label7: TLabel;
    DSSQLPlanoContas: TDataSource;
    GroupBox6: TGroupBox;
    Label8: TLabel;
    CheckParcelaNotaEntrada: TCheckBox;
    ComboPlanoContasPagar: TRxDBLookupCombo;
    SQLRecebimentoCLIEA30CODCONTABIL: TStringField;
    SQLRecebimentoPLANOJUROCRED: TIntegerField;
    SQLRecebimentoPLANOMULTACRED: TIntegerField;
    SQLRecebimentoPLANODESCCRED: TIntegerField;
    SQLRecebimentoPLANODEBITO: TIntegerField;
    SQLRecebimentoPLANOJURODEB: TIntegerField;
    SQLRecebimentoPLANOMULTADEB: TIntegerField;
    SQLRecebimentoPLANODESCDEB: TIntegerField;
    SQLRecebimentoCLIEA60RAZAOSOC: TStringField;
    SQLRecebimentoCTRCA30NRODUPLICBANCO: TStringField;
    Recebimentos: TGroupBox;
    CheckRecebimentos: TCheckBox;
    CheckOutrasParcelasReceber: TCheckBox;
    CheckOutrosRecebimentos: TCheckBox;
    SQLRecebimentoPLANOCREDITO: TIntegerField;
    GroupBox7: TGroupBox;
    De: TDateTimePicker;
    Label9: TLabel;
    Label10: TLabel;
    Ate: TDateTimePicker;
    CheckOutrasParcelasPagar: TCheckBox;
    Pagamentos: TGroupBox;
    CheckPagamentosNota: TCheckBox;
    CheckOutrosPagamentos: TCheckBox;
    SQLPagamentoCTPGA13ID: TStringField;
    SQLPagamentoPAGAICOD: TIntegerField;
    SQLPagamentoPAGADPAGTO: TDateTimeField;
    SQLPagamentoPAGAN3VLRPAGTO: TBCDField;
    SQLPagamentoPAGAN3VLRJURO: TBCDField;
    SQLPagamentoPAGAN3VLRMULTA: TBCDField;
    SQLPagamentoPAGAN3VLRDESC: TBCDField;
    SQLPagamentoPENDENTE: TStringField;
    SQLPagamentoREGISTRO: TDateTimeField;
    SQLPagamentoPAGAA254HISTORICO: TStringField;
    SQLPagamentoPLCTA15CREDITO: TStringField;
    SQLPagamentoPLCTA15CODJUROCRED: TStringField;
    SQLPagamentoPLCTA15CODMULTCRED: TStringField;
    SQLPagamentoPLCTA15CODDESCCRED: TStringField;
    SQLPagamentoPLCTA15DEBITO: TStringField;
    SQLPagamentoPLCTA15CODJURODEB: TStringField;
    SQLPagamentoPLCTA15CODMULTDEB: TStringField;
    SQLPagamentoPLCTA15CODDESCDEB: TStringField;
    SQLPagamentoTPLQICOD: TIntegerField;
    SQLPagamentoFORNA30CODCONTABIL: TStringField;
    SQLPagamentoPLANOCREDITO: TIntegerField;
    SQLPagamentoPLANOJUROCRED: TIntegerField;
    SQLPagamentoPLANOMULTACRED: TIntegerField;
    SQLPagamentoPLANODESCCRED: TIntegerField;
    SQLPagamentoPLANODEBITO: TIntegerField;
    SQLPagamentoPLANOJURODEB: TIntegerField;
    SQLPagamentoPLANOMULTADEB: TIntegerField;
    SQLPagamentoPLANODESCDEB: TIntegerField;
    SQLPagamentoFORNA60RAZAOSOC: TStringField;
    SQLPagamentoCTPGA20DOCORIG: TStringField;
    SQLContasReceberCLIEA60RAZAOSOC: TStringField;
    SQLMovBancario: TRxQuery;
    SQLMovBancarioMVBCA13ID: TStringField;
    SQLMovBancarioEMPRICOD: TIntegerField;
    SQLMovBancarioMVBCICOD: TIntegerField;
    SQLMovBancarioMVBCDLANC: TDateTimeField;
    SQLMovBancarioBANCA5COD: TStringField;
    SQLMovBancarioCTCRICOD: TIntegerField;
    SQLMovBancarioMVBCA6NROCHQ: TStringField;
    SQLMovBancarioMVBCN2VLRDEB: TBCDField;
    SQLMovBancarioMVBCN2VLRCRED: TBCDField;
    SQLMovBancarioMVBCDCHQBOMPARA: TDateTimeField;
    SQLMovBancarioMVBCDCHQBAIXA: TDateTimeField;
    SQLMovBancarioMVBCA254HIST: TStringField;
    SQLMovBancarioMVBCA60FAVORECIDO: TStringField;
    SQLMovBancarioOPBCICOD: TIntegerField;
    SQLMovBancarioMVBCCALTSALD: TStringField;
    SQLMovBancarioPENDENTE: TStringField;
    SQLMovBancarioREGISTRO: TDateTimeField;
    SQLMovBancarioMVBCDMOV: TDateTimeField;
    SQLMovBancarioPLCTA15COD: TStringField;
    SQLMovBancarioCQEMA13ID: TStringField;
    SQLMovBancarioCTPGA13ID: TStringField;
    SQLMovBancarioCTRCA13ID: TStringField;
    SQLMovBancarioCTCRA30CODCONTABIL: TStringField;
    CheckMovBanco: TCheckBox;
    SQLMovBancarioPLCTICODREDUZ: TIntegerField;
    SQLMovBancarioOPBCA60DESCR: TStringField;
    CheckCredCliente: TCheckBox;
    CheckRecbtoCredito: TCheckBox;
    SQLContasPagarCTPGA13ID: TStringField;
    SQLContasPagarEMPRICOD: TIntegerField;
    SQLContasPagarCTPGICOD: TIntegerField;
    SQLContasPagarFORNICOD: TIntegerField;
    SQLContasPagarPLCTA15COD: TStringField;
    SQLContasPagarCTPGA20DOCORIG: TStringField;
    SQLContasPagarCTPGINROPARC: TIntegerField;
    SQLContasPagarCTPGDTEMIS: TDateTimeField;
    SQLContasPagarCTPGDVENC: TDateTimeField;
    SQLContasPagarCTPGN3VLR: TBCDField;
    SQLContasPagarTPDCICOD: TIntegerField;
    SQLContasPagarCTPGA5TIPOPADRAO: TStringField;
    SQLContasPagarNOCPA13ID: TStringField;
    SQLContasPagarPORTICOD: TIntegerField;
    SQLContasPagarCTPGDULTPAGTO: TDateTimeField;
    SQLContasPagarCTPGN2TOTPAG: TBCDField;
    SQLContasPagarCTPGN3JUROPAGTO: TBCDField;
    SQLContasPagarCTPGN3MULTAPAGTO: TBCDField;
    SQLContasPagarCTPGN3DESCPAGTO: TBCDField;
    SQLContasPagarCTPGN2DESCPROMO: TBCDField;
    SQLContasPagarPDCPA13ID: TStringField;
    SQLContasPagarCTPGCPREVREAL: TStringField;
    SQLContasPagarCTPGN3TXJURO: TBCDField;
    SQLContasPagarCTPGN3TXMULTA: TBCDField;
    SQLContasPagarPENDENTE: TStringField;
    SQLContasPagarREGISTRO: TDateTimeField;
    SQLContasPagarCTPGA254HIST: TStringField;
    SQLContasPagarCQEMA13ID: TStringField;
    SQLContasPagarNOCPA30NRO: TStringField;
    SQLContasPagarHTPDICOD: TIntegerField;
    SQLContasPagarPLCTA15CODCREDITO: TStringField;
    SQLContasPagarCTPGDRECBTO: TDateTimeField;
    SQLContasPagarCODDEBITO: TIntegerField;
    SQLContasPagarCODCREDITO: TIntegerField;
    SQLContasPagarFORNA30CODCONTABIL: TStringField;
    SQLContasPagarFORNA60RAZAOSOC: TStringField;
    CheckExclusaoDIEF: TCheckBox;
    SQLProdutosPRODITIPOPRODBALAN: TStringField;
    SQLProdutosPRODBIMAGEM: TBlobField;
    SQLProdutosPRODCSUBSTRIB: TStringField;
    SQLProdutosPRODCTEMNROSERIE: TStringField;
    SQLProdutosPRODA03GARANTIA: TStringField;
    SQLProdutosPRODA254COMPQUIMICA: TStringField;
    SQLProdutosPRODCTIPO: TStringField;
    SQLProdutosPRODN2PERCFRETE: TBCDField;
    SQLProdutosPRODN2PERDA: TBCDField;
    SQLProdutosPRODN2PIS: TBCDField;
    SQLProdutosPRODN3ALTURA: TBCDField;
    SQLProdutosPRODN3COMPRIMENTO: TBCDField;
    SQLProdutosPRODN3DIMENTOTAL: TBCDField;
    SQLProdutosPRODN3LARGURA: TBCDField;
    SQLProdutosPRODA30INF01ETQBARRAS: TStringField;
    SQLProdutosPRODA30INF02ETQBARRAS: TStringField;
    SQLProdutosCOLEICOD: TIntegerField;
    SQLProdutosPRODN2PERCDESP: TBCDField;
    SQLProdutosPRODN2PERCSUBST: TBCDField;
    SQLProdutosPRODN3VLRTABFOR: TBCDField;
    SQLProdutosDECRICOD: TIntegerField;
    SQLProdutosPRODN3PERCMARGLUC2: TBCDField;
    SQLProdutosPRODN2PERCDIFICM: TBCDField;
    SQLProdutosPRODN3PERCMGLVFIXA: TBCDField;
    SQLProdutosPRODN3PERCMGLAFIXA: TBCDField;
    SQLProdutosPRODCPERMITETROCA: TStringField;
    SQLProdutosPRODDULTCOMPRA: TDateTimeField;
    SQLProdutosPRODDULTVENDA: TDateTimeField;
    SQLProdutosPRODIPRINCIPAL: TIntegerField;
    SQLProdutosPRODN3QTDULTCOMPRA: TBCDField;
    SQLProdutosPRODDPREVCOMPRA: TDateTimeField;
    SQLProdutosPRODCCOFINS: TStringField;
    SQLProdutosPRODCIMPRECEITA: TStringField;
    SQLProdutosPRODA30CULTURA: TStringField;
    SQLProdutosPRODA30DIAGNOST: TStringField;
    SQLProdutosPRODA30PRINCATV: TStringField;
    SQLProdutosPRODA10MEDIDA: TStringField;
    SQLProdutosPRODA30EPOCAPLIC: TStringField;
    SQLProdutosPRODA30EQUIPAMEN: TStringField;
    SQLProdutosPRODA30FITOTOXID: TStringField;
    SQLProdutosPRODA30CARENCIA: TStringField;
    SQLProdutosPRODA30TOXIDADE: TStringField;
    SQLProdutosPRODN3MULTIPLIC: TBCDField;
    SQLProdutosPRODN2DOSAGEM: TBCDField;
    SQLProdutosPRODTEXTENDIDO: TStringField;
    SQLProdutosPRODTOBSCOMPLEM: TStringField;
    SQLProdutosPRODN3VLRVENDA2: TBCDField;
    SQLProdutosPRODCIMPETIQCDBAR: TStringField;
    SQLProdutosPRODA254ORIENTACAO: TStringField;
    SQLProdutosPRODN3QTDVOLUME: TBCDField;
    SQLProdutosPRODCVDESTNEG: TStringField;
    SQLProdutosPRODA2CSTCOFINS: TStringField;
    SQLProdutosPRODA2CSTIPI: TStringField;
    SQLProdutosPRODA2CSTPIS: TStringField;
    SQLProdutosPRODN2ALIQCOFINS: TBCDField;
    SQLProdutosPRODN2ALIQPIS: TBCDField;
    SQLProdutosPRODCBLOQVPRAZO: TStringField;
    SQLProdutosNCMICOD: TIntegerField;
    SQLProdutosPRODN2DESCMAX: TBCDField;
    SQLProdutosPRODA30COZINHA: TStringField;
    SQLProdutosPRODCIMPCOZINHA: TStringField;
    SQLProdutosPRODCIMPVALE: TStringField;
    SQLProdutosPRODA1MODBC: TStringField;
    SQLProdutosPRODA1MODBCST: TStringField;
    SQLProdutosPRODA1TIPO: TStringField;
    SQLProdutosPRODA20C0DIF: TStringField;
    SQLProdutosPRODA9CODANP: TStringField;
    SQLProdutosPRODN4ALIQCIDE: TBCDField;
    SQLProdutosPRODA3CSTCOFINSENTRADA: TStringField;
    SQLProdutosPRODA3CSTIPIENTRADA: TStringField;
    SQLProdutosPRODA3CSTPISENTRADA: TStringField;
    SQLProdutosPRODN2PERCIPIENTRADA: TBCDField;
    SQLProdutosPRODA1CSTSERVICO: TStringField;
    SQLProdutosPRODA20BARRAUNIDADE: TStringField;
    SQLProdutosPRODA2TIPOITEM: TStringField;
    SQLProdutosPRODICODLISTASERVICO: TIntegerField;
    SQLProdutosUNIDICOD2: TIntegerField;
    GroupBox2: TGroupBox;
    EditCodEmpresa: TEdit;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure GeraTXTProdutos;
    Procedure GeraTxtCliente;
    Procedure GeraTxtFornecedor;
    procedure GeraTxtNotaEntrada;
    procedure GeraTxtNotaSaida;
    procedure GeraTxtParcelaCupom;
    procedure GeraTxtParcelaNotaSaida;
    procedure GeraTxtParcelaNotaEntrada;
    procedure GeraTxtOutrasParcelasPagar;
    procedure GeraTxtOutrasParcelasReceber;
    procedure GeraTxtRecebimentos;
    procedure GeraTxtOutrosRecebimentos;
    procedure GeraTxtRecebimentosCredito;
    procedure GeraTxtPagamentos;
    procedure GeraTxtOutrosPagamentos;
    procedure GeraTxtMovBanco;
    procedure GeraTxtCreditoCliente;
    procedure GeraFinalizador(ArquivoTexto : String);
    function  GeraCabecalhoArquivo(Tipo:String) : String;
    function  PreencheValor(STRI, FloodStr:String; TAM:Integer ; JUST : Integer):String ;
    function  MontaLinhaProduto4 : String;
    function  MontaLinhaProduto5 : String;
    procedure BtnAssociarClick(Sender: TObject);
    procedure BtnClienteClick(Sender: TObject);
    procedure LabelImpressaoClick(Sender: TObject);
    procedure FileSalvarAfterDialog(Sender: TObject; var Name: String;
      var Action: Boolean);
    procedure BtnFornecedorClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  Arquivo : TextFile;
  Posicao, Fone, Fax, TipoPessoa, CGCCPF, PlanoConta, Linha, SQL : String;
  Erros, ImportadoCGC, ImportadoCPF, Linhas, TotLinhas, Cont: Integer;
  GeraLog : Boolean;

  public
  Historico : String;
    { Public declarations }
  end;

var
  FormTelaExportacaoDadosDominio: TFormTelaExportacaoDadosDominio;
  Mes : array [0..11] of Integer = (01,02,03,04,05,06,07,08,09,10,11,12);

implementation

uses UnitLibrary, FormResources, WaitWindow, DataModulo;

{$R *.dfm}

Function TFormTelaExportacaoDadosDominio.PreencheValor( STRI, FloodStr:String; TAM:Integer ; JUST : Integer):String ;
var Conta : integer ;
    Aux_Str, TotalStr : String ;
begin
  Aux_Str := '' ;
  FOR Conta := 1 TO (Tam-Length(STRI)) DO
     if FloodStr = '' then
       AUX_STR := AUX_STR + ' '
     else
        AUX_STR := AUX_STR + FloodStr ;
  IF JUST = 0 THEN //Esquerda
    AUX_STR := AUX_STR + STRI ;
  IF JUST = 2 THEN //Direita
    AUX_STR := STRI + AUX_STR ;
  PreencheValor := AUX_STR ;
End ;

procedure TFormTelaExportacaoDadosDominio.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if EditDiretorio.Text = '' then
    begin
      Informa('Selecione o diretório onde será gerado o arquivo!');
      Abort;
    end
  else
    begin
      if not DirectoryExists(EditDiretorio.Text) then
        begin
          Informa('Diretório Inexistente. Favor Verificar!');
          Abort;
        end;
    end;

  try
    MakeWindowMessage('Gerando Arquivos...');
    if not SQLCFOP.Active then SQLCFOP.Open;
    if CheckProdutos.Checked then
      begin
        Posicao := 'Produtos';
        GeraTXTProdutos;
      end;
    if CheckCliente.Checked then
      begin
        Posicao := 'Cliente';
        GeraTxtCliente;
      end;
    if CheckFornecedor.Checked then
      begin
        Posicao := 'Fornecedor';
        GeraTxtFornecedor;
      end;
    if CheckNotaEntrada.Checked then
      begin
        Cont := 1;
        Posicao := 'Nota Entrada';
        GeraTxtNotaEntrada;
      end;
    if CheckNotaSaida.Checked then
      begin
        Cont := 1;
        Posicao := 'Nota Saída';
        GeraTxtNotaSaida;
      end;
    if CheckParcelasCupom.Checked then
      begin
        if ComboPlanoContasReceber.Value = '' then
          begin
            Informa('Você deve seleionar uma conta crédito!');
            Abort;
          end;
        Cont := 1;
        Posicao := 'Parcelas Cupom';
        GeraTxtParcelaCupom;
      end;
    if CheckOutrasParcelasReceber.Checked then
      begin
        Cont := 1;
        Posicao := 'Outras Parcelas Receber';
        GeraTxtOutrasParcelasReceber;
      end;

    if CheckParcelaSaida.Checked then
      begin
        if ComboPlanoContasReceber.Value = '' then
          begin
            Informa('Você deve seleionar uma conta crédito!');
            Abort;
          end;
        Cont := 1;
        Posicao := 'Parcelas Nota Saida';
        GeraTxtParcelaNotaSaida;
      end;
    if CheckParcelaNotaEntrada.Checked then
      begin
        if ComboPlanoContasPagar.Value = '' then
          begin
            Informa('Você deve seleionar uma conta débito!');
            Abort;
          end;
        Cont := 1;
        Posicao := 'Parcelas Nota Entrada';
        GeraTxtParcelaNotaEntrada;
      end;
    if CheckOutrasParcelasPagar.Checked then
      begin
        Cont := 1;
        Posicao := 'Outras Parcelas Pagar';
        GeraTxtOutrasParcelasPagar;
      end;
    if CheckRecebimentos.Checked then
      begin
        Cont := 1;
        Posicao := 'Recebimentos';
        GeraTxtRecebimentos;
      end;
    if CheckOutrosRecebimentos.Checked then
      begin
        Cont := 1;
        Posicao := 'Outros Recebimentos';
        GeraTxtOutrosRecebimentos;
      end;
    if CheckPagamentosNota.Checked then
      begin
        Cont := 1;
        Posicao := 'Pagamentos';
        GeraTxtPagamentos;
      end;
    if CheckOutrosPagamentos.Checked then
      begin
        Cont := 1;
        Posicao := 'Outros Pagamentos';
        GeraTxtOutrosPagamentos;
      end;
    if CheckMovBanco.Checked then
      begin
        cont := 1;
        Posicao := 'Mov. Banco';
        GeraTxtMovBanco;
      end;

    if CheckCredCliente.Checked then
      begin
       Cont := 1;
       Posicao := 'Credito Cliente';
       GeraTxtCreditoCliente;
      end;
    if CheckRecbtoCredito.Checked then
      begin
       Cont := 1;
       Posicao := 'Recbto Credito';
       GeraTxtRecebimentosCredito;
      end;
    DestroyWindow;
  except
    on E:Exception do
      begin
        Informa('Problemas ao gerar arquivo. ANOTE O ERRO : ' + #13 + E.Message + #13 + 'Posição: ' + Posicao);
        DestroyWindow;
      end
   end;
end;

procedure TFormTelaExportacaoDadosDominio.GeraTXTProdutos;
var
I:Integer;
Linha : String;
Arquivo : TextFile;
begin
  SQLProdutos.Open;
  SQLProdutos.First;
  //GERA ARQUIVO TEXTO
  AssignFile(Arquivo,EditDiretorio.Text + '\PRODUTOS.TXT');
  Rewrite(Arquivo);
  Reset(Arquivo);

  I := 1;
  while not SQLProdutos.Eof do
    begin
     // Monta Produto linha 4-Produto
     Append(Arquivo);
     Linha := '';
     Linha := MontaLinhaProduto4;
     Writeln(Arquivo,Linha);

     // Monta Produto linha 5-Vigencia
     Append(Arquivo);
     Linha := '';
     Linha := MontaLinhaProduto5;
     Writeln(Arquivo,Linha);

     Inc(I);
     if i = 20 then
       SQLProdutos.last;

     SQLProdutos.Next;
    end;
  CloseFile(Arquivo);
  SQLProdutos.Close;
end;
Procedure TFormTelaExportacaoDadosDominio.GeraTxtCliente;
///////////////////////////////////////
function MontaLinhaCliente : String;
var
 Str,ValorAux : String;
begin
  Str := '';
  Str := '22'; // Valor Fixo para Ident. de Cliente
  Str := STR + Format('%.7d',[EmpresaCorrente]); // Empresa
  Str := STR + SQLClienteCLIEA2UFRES.AsString; // UF
  Str := PreencheValor(STR,'0',7,2); // Cod. Conta Contabil
  Str := PreencheValor(STR,'0',7,2); // Cod. Municipio

  if SQLClienteCLIEA5FISJURID.AsString = 'J' then
    begin
      if Length(SQLClienteCLIEA60NOMEFANT.AsString) > 10 then
        Str := STR + Copy(SQLClienteCLIEA60NOMEFANT.AsString,1,10)
      else
        Str := STR + Preenche(SQLClienteCLIEA60NOMEFANT.AsString,' ',10,2); // Nome Reduzido;
    end
  else
    Str := PreencheValor(STR,' ',10,2);
  
  if Length(SQLClienteCLIEA60RAZAOSOC.AsString) > 40 then
    Str := STR + Copy(SQLClienteCLIEA60RAZAOSOC.AsString,1,40)
  else
    Str := STR + Preenche(SQLClienteCLIEA60RAZAOSOC.AsString,' ',40,2); // Nome Cliente;

  if Length(SQLClienteCLIEA60ENDRES.AsString) > 40 then
    Str := STR + Copy(SQLClienteCLIEA60ENDRES.AsString,1,40)
  else
    Str := STR + Preenche(SQLClienteCLIEA60ENDRES.AsString,' ',40,2); // Endereco Cliente;

  Str := PreencheValor(STR,'0',7,2); // Nro do Endereco

  if Length(SQLClienteCLIEA60CIDRES.AsString) > 30 then
    Str := STR + Copy(SQLClienteCLIEA60CIDRES.AsString,1,30)
  else
    Str := STR + Preenche(SQLClienteCLIEA60CIDRES.AsString,' ',30,2); // Cidade Cliente;


  Str := STR + Preenche(SQLClienteCLIEA8CEPRES.AsString, ' ', 8,2); // Cep Cliente;

  if SQLClienteCLIEA5FISJURID.AsString = 'J' then
    Str := STR + Preenche(SQLClienteCLIEA14CGC.AsString, ' ', 14,2) // CGC Cliente;
  else
    Str := STR + Preenche(SQLClienteCLIEA11CPF.AsString, ' ', 14,2); // CGC Cliente;

  Str := STR + Preenche(SQLClienteCLIEA20IE.AsString, ' ', 20,2); // IE Cliente;

  Fone:= copy(SQLClienteCLIEA15FONE1.AsString,1,14);
  while pos(' ',Fone) > 0 do
    Delete(Fone,pos(' ',Fone),1);
  Str := STR + Preenche(Fone, ' ', 14,2); // Fone Cliente;

  Fax := copy(SQLClienteCLIEA15FAX.AsString,1,14);
  while pos(' ',Fax) > 0 do
    Delete(Fax,pos(' ',Fax),1);
  Str := STR + Preenche(Fax, ' ', 14,2); // Fax Cliente;

  Str := STR + 'N'; // Agropecuario
  Str := STR + 'S'; // ICMS
  if SQLClienteCLIEA5FISJURID.AsString = 'F' then
     STR := STR + '2'
  else
    if SQLClienteCLIEA5FISJURID.AsString = 'J' then
       STR := STR + '1'
  else
    STR := STR + '3';

    MontaLinhaCliente := STR;
end;
//////////////////////////////////////
var
I:Integer;
Linha : String;
Arquivo : TextFile;
begin
  SQLCliente.Open;
  SQLCliente.First;
  //GERA ARQUIVO TEXTO
  AssignFile(Arquivo,EditDiretorio.Text + '\CLIENTES.TXT');
  Rewrite(Arquivo);
  Reset(Arquivo);

  I := 1;
  while not SQLCliente.Eof do
    begin
     Append(Arquivo);
     Linha := '';
     Linha := MontaLinhaCliente;
     Writeln(Arquivo,Linha);
     Inc(I);
     SQLCliente.Next;
    end;
  CloseFile(Arquivo);
  SQLCliente.Close;
end;

Procedure TFormTelaExportacaoDadosDominio.GeraTxtFornecedor;
///////////////////////////////////////
function MontaLinhaFornecedor : String;
var
 Str,ValorAux : String;
begin
Str := '';
Str := '11'; // Valor Fixo para Ident. de Fornecedor
Str := STR + Format('%.7d',[EmpresaCorrente]); // Empresa
Str := STR + SQLFornecedorFORNA2UF.AsString; // UF
Str := STR + Preenche(SQLFornecedorFORNA30CODCONTABIL.AsString,'0',7,2); // Cod. Conta Contabil
Str := PreencheValor(STR,'0',7,2); // Cod. Municipio

if Length(SQLFornecedorFORNA60NOMEFANT.AsString) > 10 then
  Str := STR + Copy(SQLFornecedorFORNA60NOMEFANT.AsString,1,10)
else
  Str := STR + Preenche(SQLFornecedorFORNA60NOMEFANT.AsString,' ',10,2); // Nome Reduzido;

if Length(SQLFornecedorFORNA60RAZAOSOC.AsString) > 40 then
  Str := STR + Copy(SQLFornecedorFORNA60RAZAOSOC.AsString,1,40)
else
  Str := STR + Preenche(SQLFornecedorFORNA60RAZAOSOC.AsString,' ',40,2); // Nome Fornecedor;

if Length(SQLFornecedorFORNA60END.AsString) > 40 then
  Str := STR + Copy(SQLFornecedorFORNA60END.AsString,1,40)
else
  Str := STR + Preenche(SQLFornecedorFORNA60END.AsString,' ',40,2); // Endereco Fornecedor;

Str := PreencheValor(STR,'0',7,2); // Nro do Endereco

if Length(SQLFornecedorFORNA60CID.AsString) > 30 then
  Str := STR + Copy(SQLFornecedorFORNA60CID.AsString,1,30)
else
  Str := STR + Preenche(SQLFornecedorFORNA60CID.AsString,' ',30,2); // Cidade Fornecedor;

Str := STR + Preenche(SQLFornecedorFORNA8CEP.AsString, ' ', 8,2); // Cep Fornecedor;

if SQLFornecedorFORNCFISJURID.AsString = 'J' then
  Str := STR + Preenche(SQLFornecedorFORNA14CGC.AsString, ' ', 14,2) // CGC Fornecedor;
else
  Str := STR + Preenche(SQLFornecedorFORNA11CPF.AsString, ' ', 14,2); // CGC Fornecedor;
  
Str := STR + Preenche(SQLFornecedorFORNA20IE.AsString, ' ', 20,2); // IE Fornecedor;

Fone:= SQLFornecedorFORNA15FONE1.AsString;
while pos(' ',Fone) > 0 do
  Delete(Fone,pos(' ',Fone),1);
Str := STR + Preenche(Fone, ' ', 14,2); // Fone Fornecedor;

Fax := SQLFornecedorFORNA15FAX.AsString;
while pos(' ',Fax) > 0 do
  Delete(Fax,pos(' ',Fax),1);
Str := STR + Preenche(Fax, ' ', 14,2); // Fax Fornecedor;

Str := STR + 'N'; // Agropecuario
Str := STR + 'S'; // ICMS
if SQLFornecedorFORNCFISJURID.AsString = 'F' then
   STR := STR + '2'
else
  if SQLFornecedorFORNCFISJURID.AsString = 'J' then
     STR := STR + '1'
else
  STR := STR + '3';

  MontaLinhaFornecedor := STR;
end;
//////////////////////////////////////
var
I:Integer;
Linha : String;
Arquivo : TextFile;
begin
  SQLFornecedor.Open;
  SQLFornecedor.First;
  //GERA ARQUIVO TEXTO
  AssignFile(Arquivo,EditDiretorio.Text + '\FORNECEDORES.TXT');
  Rewrite(Arquivo);
  Reset(Arquivo);

  I := 1;
  while not SQLFornecedor.Eof do
    begin
     Append(Arquivo);
     Linha := '';
     Linha := MontaLinhaFornecedor;
     Writeln(Arquivo,Linha);
     Inc(I);
     SQLFornecedor.Next;
    end;
  CloseFile(Arquivo);
  SQLFornecedor.Close;
end;
procedure TFormTelaExportacaoDadosDominio.GeraTxtNotaEntrada;
var
  Arquivo : TextFile;
function MontaLinhaNotaEntrada : String;
var
 Str : String;
begin
  Posicao := 'NOTAENTRADA';
  Str := '';
  Str := '02'; // Tipo
  Str := Str + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
  Str := STR + Format('%.7d',[EmpresaCorrente]); // Empresa
  Str := STR + Preenche(SQLNotaEntradaFORNA14CGC.AsString, ' ', 14,2); // CGC Fornecedor;
  Str := STR + '0000001';//PreencheValor(STR,'0',7,2); // Cod. Especie ************
  if (CheckExclusaoDIEF.Checked) and (SQLNotaEntradaNOCPN3VLRIPI.AsFloat > 0) then
    Str := Str + '04' // Cod. Exclusao da DIEF - Segundo a Dominio esse codigo é fixo para todas empresas.
  else
    Str := PreencheValor(STR,'0',2,2); // Cod. Exclusao da DIEF

  Str := STR + Preenche(SQLNotaEntradaAcumuladorLookup.AsString,'0',7,0); // Cod. Acumulador
  Str := STR + Preenche(SQLNotaEntradaCFOPA5COD.AsString,'0',7,0); // Cod. CFOP
  Str := PreencheValor(STR,'0',2,2); // Cod. Segmento **************
  Str := STR + Preenche(SQLNotaEntradaNOCPA30NRO.AsString,'0',7,0); // Nro. Documento ***********
  Str := STR + Preenche(SQLNotaEntradaNOCPA5SERIE.AsString,'0',7,0); // Serie **************
  Str := STR + Preenche(SQLNotaEntradaNOCPA30NRO.AsString,'0',7,0); // Nro. Documento Final ***********
  Str := Str + FormatDateTime('dd/mm/yyyy',SQLNotaEntradaNOCPDRECEBIMENTO.AsDateTime); // Data Recebimento
  Str := Str + FormatDateTime('dd/mm/yyyy',SQLNotaEntradaNOCPDEMISSAO.AsDateTime); // Data Emissao
  Str := Str + ConverteValorParaStringSemPontoSemVirgula(SQLNotaEntradaNOCPN3VLRTOTNOTA.AsFloat,13,2); // Valor Contabil ***************

  if (CheckExclusaoDIEF.Checked) and (SQLNotaEntradaNOCPN3VLRIPI.AsFloat > 0) then
    Str := Str + ConverteValorParaStringSemPontoSemVirgula(SQLNotaEntradaNOCPN3VLRIPI.AsFloat,13,2) // Valor Exclusao DIEF
  else
    Str := PreencheValor(STR,'0',13,2); // Valor Exclusao DIEF

  if SQLNotaEntradaNOCPA254OBS.AsString <> '' then
    Str := Str + Preenche(Trim(Copy(SQLNotaEntradaNOCPA254OBS.AsString,1,30)),' ',30,2) // OBS
  else
    Str := PreencheValor(STR,' ',30,2);

  Str := Str + SQLNotaEntradaFORNA2UF.AsString; // UF Fornecedor

  MontaLinhaNotaEntrada := Str;
end;
function MontaLinhaNotaEntradaImposto : String;
var
 Str,ValorAux : String;
 Aliquota, ValorIsenta, ValorOutras, ValorProduto, ValorIsentasOutras : Currency;
begin
  Posicao := 'Imposto';
  SQLOperacaoEstoque.Locate('OPESICOD',SQLNotaEntradaOPESICOD.AsString,[]);
  SQLAcumuladores.Locate('ACUMICOD',SQLOperacaoEstoqueACUMICOD.AsString,[]);
  
  if SQLAcumuladoresACUMCIPI.AsString = 'S' then
    begin
      Str := '';
      Str := '03'; // Impostos
      Inc(Cont);
      Str := Str + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
      Str := Str + '0000002'; // Cod. Imposto
      Str := PreencheValor(STR,'0',5,2); // % Reducao
      ValorAux := ConverteValorParaStringSemPontoSemVirgula(SQLNotaEntradaNOCPN3TOTITENS.AsFloat,13,2); // Base Calculo
      Str := Str + ValorAux; // Valor Contabil ***************

      Aliquota := Abs(Round((SQLNotaEntradaNOCPN3VLRIPI.AsFloat / SQLNotaEntradaNOCPN3TOTITENS.AsFloat) * 100));

      ValorAux := ConverteValorParaStringSemPontoSemVirgula(Aliquota,5,2); // Aliquota
      Str := Str + ValorAux; // % Aliquota

      STR := STR + ConverteValorParaStringSemPontoSemVirgula(SQLNotaEntradaNOCPN3VLRIPI.AsFloat,13,2); // Valor Imposto

      ValorProduto := (SQLNotaEntradaNOCPN3TOTITENS.AsFloat);

      ValorIsenta := 0;
      ValorOutras := 0;

      STR := STR + ConverteValorParaStringSemPontoSemVirgula(ValorIsenta,13,2); // Valor Isentas
      STR := STR + ConverteValorParaStringSemPontoSemVirgula(ValorOutras,13,2); // Valor Outras

      Append(Arquivo);
      Writeln(Arquivo,Str);
    end;
  if SQLAcumuladoresACUMCICMS.AsString = 'S' then
    begin
      Str := '';
      Str := '03'; // Impostos
      Inc(Cont);
      Str := Str + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
      Str := Str + '0000001'; // Cod. Imposto
      Str := PreencheValor(STR,'0',5,2); // % Reducao

      ValorAux := ConverteValorParaStringSemPontoSemVirgula(SQLNotaEntradaNOCPN3VLRBASCALICM.AsFloat,13,2); // Base Calculo
      Str := STR + ValorAux;

      Aliquota := Abs(Round((SQLNotaEntradaNOCPN3VLRICMS.AsFloat / SQLNotaEntradaNOCPN3TOTITENS.AsFloat) * 100));

      ValorAux := ConverteValorParaStringSemPontoSemVirgula(Aliquota,5,2);
      Str := Str + ValorAux; // % Aliquota

      STR := STR + ConverteValorParaStringSemPontoSemVirgula(SQLNotaEntradaNOCPN3VLRICMS.AsFloat,13,2); // Valor Imposto

      ValorProduto := (SQLNotaEntradaNOCPN3TOTITENS.AsFloat);

      ValorIsenta := 0;
      ValorOutras := 0;
      ValorIsentasOutras := 0;

      if SQLNotaEntradaNOCPN3VLRTOTNOTA.AsFloat > (SQLNotaEntradaNOCPN3VLRBASCALICM.AsFloat + SQLNotaEntradaNOCPN3VLRIPI.AsFloat)  then
        begin
          ValorIsentasOutras := SQLNotaEntradaNOCPN3VLRTOTNOTA.AsFloat - (SQLNotaEntradaNOCPN3VLRBASCALICM.AsFloat + SQLNotaEntradaNOCPN3VLRIPI.AsFloat);

          if SQLCFOP.Locate('CFOPA5COD',SQLNotaEntradaCFOPA5COD.AsString,[]) then
            begin
              if SQLCFOPCFOPCDESTVLRNTRIB.AsString = 'I' then
                ValorIsenta := ValorIsentasOutras
              else
                ValorOutras := ValorIsentasOutras;
            end;
        end;

      if SQLNotaEntradaNOCPN3VLRBCICMSSUB.AsFloat > 0 then
        begin
          ValorOutras := SQLNotaEntradaNOCPN3TOTITENS.AsFloat;
          ValorIsenta := 0;
        end;

      STR := STR + ConverteValorParaStringSemPontoSemVirgula(ValorIsenta,13,2); // Valor Isentas
      STR := STR + ConverteValorParaStringSemPontoSemVirgula(ValorOutras,13,2); // Valor Outras

      Append(Arquivo);
      Writeln(Arquivo,Str);
    end;
end;
function MontaLinhaNotaEntradaProduto : String;
var
 Str,ValorAux : String;
 SQLItensNE : TQuery;
 BaseCalc : Double;
begin
  Posicao := 'ITEM';
  SQLItensNE := TQuery.Create(DM);
  SQLItensNE.DatabaseName := 'DB';
  SQLItensNE.SQL.Text := 'SELECT * FROM NOTACOMPRAITEM LEFT OUTER JOIN PRODUTO ON NOTACOMPRAITEM.PRODICOD = PRODUTO.PRODICOD WHERE NOCPA13ID = "' + SQLNotaEntrada.FieldByName('NOCPA13ID').AsString + '"';
  SQLItensNE.Open;
  SQLItensNE.First;
  SQLOperacaoEstoque.Locate('OPESICOD',SQLNotaEntradaOPESICOD.AsString,[]);
  SQLAcumuladores.Locate('ACUMICOD',SQLOperacaoEstoqueACUMICOD.AsString,[]);
  while not SQLItensNE.Eof do
    begin
      Str := '';
      Str := '04'; // Produtos
      Inc(Cont);
      Str := Str + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
      Str := Str + Preenche(SQLItensNE.FieldByName('PRODICOD').AsString,'0',7,0); // Cod. Produto
      ValorAux := FormatFloat('###0.000',SQLItensNE.FieldByName('NOCIN3QTDEMBAL').AsFloat); // Quantidade
      Str := Str + ConverteValorParaStringSemPontoSemVirgula(StrToFloat(ValorAux),13,3); // Quantidade

      ValorAux := FormatFloat('###0.000',SQLItensNE.FieldByName('NOCIN3VLRUNIT').AsFloat); // Valor Unitario
      Str := Str + ConverteValorParaStringSemPontoSemVirgula(StrToFloat(ValorAux),13,3); // Valor Unitario

      ValorAux := FormatFloat('###0.000',SQLItensNE.FieldByName('NOCIN3VLRIPI').AsFloat); // Valor Imposto
      Str := Str + ConverteValorParaStringSemPontoSemVirgula(StrToFloat(ValorAux),13,3); // Valor Imposto

      BaseCalc := (SQLItensNE.FieldByName('NOCIN3VLRUNIT').AsFloat * SQLItensNE.FieldByName('NOCIN3QTDEMBAL').AsFloat) +
                   SQLItensNE.FieldByName('NOCIN3VLRFRETE').AsFloat -
                   SQLItensNE.FieldByName('NOCIN3VLRDESC').AsFloat;

      ValorAux := FormatFloat('###0.000',BaseCalc); // Base Calc.
      Str := Str + ConverteValorParaStringSemPontoSemVirgula(StrToFloat(ValorAux),13,3); // Base Calc.

      Str := Str + '1'; // 1 = Nota , 2 = Extra

      Str := Str + FormatDateTime('dd/mm/yyyy',SQLNotaEntradaNOCPDRECEBIMENTO.AsDateTime);

      Append(Arquivo);
      Writeln(Arquivo,Str);
      SQLItensNE.Next;
    end;
    SQLItensNE.Close;
    SQLItensNE.Free;
end;
function MontaLinhaNotaEntradaParcelas : String;
var
 Str,ValorAux : String;
begin
 SQLContasPagar.Close;
 SQLContasPagar.MacroByName('MFiltro').AsString := ' NOCPA13ID = "' + SQLNotaEntradaNOCPA13ID.AsString + '"';
 SQLContasPagar.Open;
 SQLPagamento.Open;
 while not SQLContasPagar.Eof do
   begin
     Str := '';
     Str := '09';
     Inc(Cont);
     Str := Str + Preenche(IntToStr(Cont),'0',7,0);
     Str := Str + FormatDateTime('dd/mm/yyyy',SQLContasPagarCTPGDVENC.AsDateTime);
     Str := Str + '0';
     Str := Str + ConverteValorParaStringSemPontoSemVirgula(SQLContasPagarCTPGN3VLR.AsFloat,13,2);
     Str := PreencheValor(STR,' ',50,2);
     Append(Arquivo);
     Writeln(Arquivo,Str);
     if not SQLPagamento.IsEmpty then
       begin
         SQLPagamento.First;
         while not SQLPagamento.Eof do
           begin
             Str := '';
             Str := '10';
             Inc(Cont);
             Str := Str + Preenche(IntToStr(Cont),'0',7,0);
             Str := Str + FormatDateTime('dd/mm/yyyy',SQLPagamentoPAGADPAGTO.AsDateTime);
             Str := Str + ConverteValorParaStringSemPontoSemVirgula(SQLPagamentoPAGAN3VLRPAGTO.AsFloat,13,2);
             Str := Str + ConverteValorParaStringSemPontoSemVirgula(SQLPagamentoPAGAN3VLRJURO.AsFloat,13,2);
             Str := Str + ConverteValorParaStringSemPontoSemVirgula(SQLPagamentoPAGAN3VLRMULTA.AsFloat,13,2);
             Str := Str + ConverteValorParaStringSemPontoSemVirgula(SQLPagamentoPAGAN3VLRDESC.AsFloat,13,2);
             Str := PreencheValor(STR,' ',50,2);
             SQLPagamento.Next;
           end;
         Append(Arquivo);
         Writeln(Arquivo,Str);
       end;
     SQLContasPagar.Next;
   end;
end;
var
  Linha : String;
begin
  SQLAcumuladores.Open;
  SQLOperacaoEstoque.Open;

  SQLNotaEntrada.Close;
  SQLNotaEntrada.MacroByName('MFiltro').AsString := ' NOTACOMPRA.NOCPDRECEBIMENTO >= "' + FormatDateTime('mm/dd/yyyy',De.Date) + '" AND ' +
                                                    ' NOTACOMPRA.NOCPDRECEBIMENTO <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';
  SQLNotaEntrada.Open;

  SQLNotaEntrada.First;
  AssignFile(Arquivo,EditDiretorio.Text + '\NFEntrada.txt');
  Rewrite(Arquivo);
  Reset(Arquivo);
  Linha := GeraCabecalhoArquivo('02');
  Append(Arquivo);
  Writeln(Arquivo,Linha);
  while not SQLNotaEntrada.Eof do
    begin
     Append(Arquivo);
     Linha := '';
     Linha := MontaLinhaNotaEntrada;
     Writeln(Arquivo,Linha);
     MontaLinhaNotaEntradaImposto;
     MontaLinhaNotaEntradaProduto;
//     MontaLinhaNotaEntradaParcelas;
     Inc(Cont);
     SQLNotaEntrada.Next;
     Application.ProcessMessages;
    end;
  CloseFile(Arquivo);
  GeraFinalizador(EditDiretorio.Text + '\NFEntrada.txt');
  SQLNotaEntrada.Close;
end;

procedure TFormTelaExportacaoDadosDominio.GeraTxtNotaSaida;
var
  Arquivo : TextFile;
  Linha : String;
function MontaLinhaNotaSaida : String;
var
  Str : String;
begin
  Posicao := 'NOTASAIDA';
  Str := '';
  Str := '02'; // Tipo
  Str := Str + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
  Str := STR + Format('%.7d',[EmpresaCorrente]); // Empresa
  Str := STR + Preenche(SQLLocate('CLIENTE','CLIEA13ID','CLIEA14CGC','"' + SQLNotaFiscalCLIEA13ID.AsString + '"'), '0', 14,2); // CGC Cliente;
  Str := STR + '0000001';//PreencheValor(STR,'0',7,2); // Cod. Especie ************

  Str := PreencheValor(STR,'0',2,2); // Cod. Exclusao da DIEF

  Str := STR + Preenche(SQLNotaFiscalAcumuladorLookup.AsString,'0',7,0); // Cod. Acumulador
  Str := STR + Preenche(SQLNotaFiscalCFOPA5COD.AsString,'0',7,0); // Cod. CFOP

  if SQLNotaFiscalCLIEA2UFRES.AsString <> '' then
    Str := STR + SQLNotaFiscalCLIEA2UFRES.AsString // UF Cliente
  else
    Str := STR + 'RS';

  Str := PreencheValor(STR,'0',2,2); // Cod. Segmento **************
  Str := STR + Preenche(SQLNotaFiscalNOFIINUMERO.AsString,'0',7,0); // Nro. Documento ***********
  Str := STR + Preenche(SQLNotaFiscalSERIA5COD.AsString,'0',7,0); // Serie **************
  Str := STR + Preenche(SQLNotaFiscalNOFIINUMERO.AsString,'0',7,0); // Nro. Documento Final ***********
  Str := Str + FormatDateTime('dd/mm/yyyy',SQLNotaFiscalNOFIDEMIS.AsDateTime); // Data Recebimento
  Str := Str + FormatDateTime('dd/mm/yyyy',SQLNotaFiscalNOFIDEMIS.AsDateTime); // Data Emissao
  Str := Str + ConverteValorParaStringSemPontoSemVirgula(SQLNotaFiscalNOFIN2VLRNOTA.AsFloat,13,2); // Valor Contabil ***************

  Str := PreencheValor(STR,'0',13,2); // Valor Exclusao DIEF

//  if SQLNotaFiscalNOFIA255OBS.AsString <> '' then
//    Str := Str + Preenche(Copy(SQLNotaFiscalNOFIA255OBS.AsString,1,30),' ',30,2) // OBS
//  else
    Str := PreencheValor(STR,' ',30,2);

  MontaLinhaNotaSaida := Str;
end;
function MontaLinhaNotaSaidaImposto : String;
var
 Str,ValorAux : String;
 SQLItensNF: TQuery;
 Aliquota, ValorIsenta, ValorOutras, ValorProduto, ValorIsentasOutras : Currency;

begin
  Posicao := 'Imposto';
  SQLItensNF := TQuery.Create(DM);
  SQLItensNF.DatabaseName := 'DB';
  SQLItensNF.SQL.Add('SELECT ');
  SQLItensNF.SQL.Add('sum(nfitn2vlripi) as NFITN2VLRIPI,');
  SQLItensNF.SQL.Add('sum(nfitn2vlrunit * nfitn3quant) as VlrProd,');
  SQLItensNF.SQL.Add('sum(nfitn2vlricms) as NFITN2VLRICMS,');
  SQLItensNF.SQL.Add('sum(nfitn2baseicms)as NFITN2BASEICMS,');
  SQLItensNF.SQL.Add('nfitn2percicms,');
  SQLItensNF.SQL.Add('NFITN2PERCIPI');
  SQLItensNF.SQL.Add('from notafiscalitem where nofia13id = "' + SQLNotaFiscalNOFIA13ID.AsString + '"');
  SQLItensNF.SQL.Add('group by nfitn2percicms, NFITN2PERCIPI');
  SQLItensNF.Open;
  SQLItensNF.First;
  SQLOperacaoEstoque.Locate('OPESICOD',SQLNotaFiscalOPESICOD.AsString,[]);
  SQLAcumuladores.Locate('ACUMICOD',SQLOperacaoEstoqueACUMICOD.AsString,[]);
  if not SQLCFOP.Active then SQLCFOP.Open; 
  while not SQLItensNF.Eof do
    begin
      try
        ValorProduto := SQLItensNF.FieldByName('VlrProd').AsFloat;

        if (SQLItensNF.FieldByName('NFITN2VLRIPI').AsFloat >= 0) and (SQLAcumuladoresACUMCIPI.AsString = 'S') then
          begin
            Str := '';
            Str := '03'; // Impostos
            Inc(Cont);
            Str := Str + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
            Str := Str + '0000002'; // Cod. Imposto
            Str := PreencheValor(STR,'0',5,2); // % Reducao

            ValorAux := ConverteValorParaStringSemPontoSemVirgula(SQLItensNF.FieldByName('NFITN2BASEICMS').AsFloat,13,2); // Base Calculo
            Str := Str + ValorAux; // Base de Cálculo ***************

            ValorAux := ConverteValorParaStringSemPontoSemVirgula(SQLItensNF.FieldByName('NFITN2PERCIPI').AsFloat,5,2); // Aliquota
            Str := Str + ValorAux; // % Aliquota

            STR := STR + ConverteValorParaStringSemPontoSemVirgula(SQLItensNF.FieldByName('NFITN2VLRIPI').AsFloat,13,2); // Valor Imposto

            ValorIsenta := 0;
            ValorOutras := 0;

            STR := STR + ConverteValorParaStringSemPontoSemVirgula(ValorIsenta,13,2); // Valor Isentas
            STR := STR + ConverteValorParaStringSemPontoSemVirgula(ValorOutras,13,2); // Valor Outras

            Append(Arquivo);
            Writeln(Arquivo,Str);
          end;
        if (SQLItensNF.FieldByName('NFITN2VLRICMS').AsFloat >= 0) and (SQLAcumuladoresACUMCICMS.AsString = 'S') then
          begin
            Str := '';
            Str := '03'; // Impostos
            Inc(Cont);
            Str := Str + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
            Str := Str + '0000001'; // Cod. Imposto
            if SQLItensNF.FieldByName('NFITN2BASEICMS').AsFloat < ValorProduto then
              begin
                ValorAux := ConverteValorParaStringSemPontoSemVirgula((SQLItensNF.FieldByName('NFITN2BASEICMS').AsFloat / SQLItensNF.FieldByName('VlrProd').AsFloat) * 100,5,2);
                Str := Str + ValorAux; // % Reducao
              end
            else
              Str := PreencheValor(STR,'0',5,2); // % Reducao

            ValorAux := ConverteValorParaStringSemPontoSemVirgula(SQLItensNF.FieldByName('NFITN2BASEICMS').AsFloat,13,2); // Base Calculo
            Str := STR + ValorAux;

            ValorAux := ConverteValorParaStringSemPontoSemVirgula(SQLItensNF.FieldByName('NFITN2PERCICMS').AsFloat,5,2);
            Str := Str + ValorAux; // % Aliquota

            STR := STR + ConverteValorParaStringSemPontoSemVirgula(SQLItensNF.FieldByName('NFITN2VLRICMS').AsFloat,13,2); // Valor Imposto

            ValorIsenta := 0;
            ValorOutras := 0;

            if ValorProduto > SQLItensNF.FieldByName('NFITN2BASEICMS').AsFloat then
              begin
                ValorIsentasOutras := ValorProduto - SQLItensNF.FieldByName('NFITN2BASEICMS').AsFloat;
                if SQLCFOP.Locate('CFOPA5COD',SQLNotaFiscalCFOPA5COD.AsString,[]) then
                  begin
                    if SQLCFOPCFOPCDESTVLRNTRIB.AsString = 'I' then
                      ValorIsenta := ValorIsentasOutras
                    else
                      ValorOutras := ValorIsentasOutras;
                  end
                else
                  ValorOutras := ValorIsentasOutras;
              end;

            STR := STR + ConverteValorParaStringSemPontoSemVirgula(ValorIsenta,13,2); // Valor Isentas
            STR := STR + ConverteValorParaStringSemPontoSemVirgula(ValorOutras,13,2); // Valor Outras

            Append(Arquivo);
            Writeln(Arquivo,Str);
          end;
      except
        ShowMessage(SQLItensNF.FieldByName('NOFIA13ID').AsString);
      end;
      SQLItensNF.Next;
    end;
    if (SQLNotaFiscal.FieldByName('NOFIN2VLRICMSFRETE').AsFloat > 0) and (SQLAcumuladoresACUMCICMS.AsString = 'S') then
      begin
        Str := '';
        Str := '03'; // Impostos
        Inc(Cont);

        Str := Str + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
        Str := Str + '0000001'; // Cod. Imposto
        Str := PreencheValor(STR,'0',5,2); // % Reducao

        ValorAux := ConverteValorParaStringSemPontoSemVirgula(SQLNotaFiscal.FieldByName('NOFIN2VLRFRETE').AsFloat,13,2); // Base Calculo
        Str := STR + ValorAux;

        Aliquota := 0;
        Aliquota := (SQLNotaFiscal.FieldByName('NOFIN2VLRICMSFRETE').AsFloat / SQLNotaFiscal.FieldByName('NOFIN2VLRFRETE').AsFloat)* 100;

        ValorAux := ConverteValorParaStringSemPontoSemVirgula(Aliquota,5,2);
        Str := Str + ValorAux ;// % Aliquota

        STR := STR + ConverteValorParaStringSemPontoSemVirgula(SQLNotaFiscal.FieldByName('NOFIN2VLRICMSFRETE').AsFloat,13,2); // Valor Imposto

        STR := PreencheValor(STR,'0',13,2); // Isentos
        STR := PreencheValor(STR,'0',13,2); // Outras
        Append(Arquivo);
        Writeln(Arquivo,Str);
      end;

    SQLItensNF.Close;
    SQLItensNF.Free;
end;
function MontaLinhaNotaSaidaProduto : String;
var
 Str,ValorAux : String;
 SQLItensNF : TQuery;
 BaseCalc : Double;
begin
  Posicao := 'ITEM';
  SQLItensNF := TQuery.Create(DM);
  SQLItensNF.DatabaseName := 'DB';
  SQLItensNF.SQL.Text := 'SELECT * FROM NOTAFISCALITEM LEFT OUTER JOIN PRODUTO ON NOTAFISCALITEM.PRODICOD = PRODUTO.PRODICOD WHERE NOFIA13ID = "' + SQLNotaFiscal.FieldByName('NOFIA13ID').AsString + '"';
  SQLItensNF.Open;
  SQLItensNF.First;
  SQLOperacaoEstoque.Locate('OPESICOD',SQLNotaFiscalOPESICOD.AsString,[]);
  SQLAcumuladores.Locate('ACUMICOD',SQLOperacaoEstoqueACUMICOD.AsString,[]);
  while not SQLItensNF.Eof do
    begin
      Str := '';
      Str := '04'; // Produtos
      Inc(Cont);
      Str := Str + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
      Str := Str + Preenche(SQLItensNF.FieldByName('PRODICOD').AsString,'0',7,0); // Cod. Produto
      ValorAux := ConverteValorParaStringSemPontoSemVirgula(SQLItensNF.FieldByName('NFITN3QUANT').AsFloat,13,3); // Quantidade
      Str := Str + ValorAux; // Quantidade
      ValorAux := ConverteValorParaStringSemPontoSemVirgula(SQLItensNF.FieldByName('NFITN2VLRUNIT').AsFloat * SQLItensNF.FieldByName('NFITN3QUANT').AsFloat,13,3); // Valor Unitario
      Str := Str + ValorAux; // Valor Contabil ***************

      STR := STR + ConverteValorParaStringSemPontoSemVirgula(SQLItensNF.FieldByName('NFITN2VLRIPI').AsFloat,13,3); // Valor Imposto

      BaseCalc := (SQLItensNF.FieldByName('NFITN2VLRUNIT').AsFloat * SQLItensNF.FieldByName('NFITN3QUANT').AsFloat) +
                   SQLItensNF.FieldByName('NFITN2VLRDESC').AsFloat;

      ValorAux := ConverteValorParaStringSemPontoSemVirgula(BaseCalc,13,3); // Base Calc.
      Str := Str + ValorAux; // % Base Calc.

      Str := Str + '1'; // 1 = Nota , 2 = Extra

      Str := Str + FormatDateTime('dd/mm/yyyy',SQLNotaFiscalNOFIDEMIS.AsDateTime);

      Append(Arquivo);
      Writeln(Arquivo,Str);
      SQLItensNF.Next;
    end;
    SQLItensNF.Close;
    SQLItensNF.Free;
end;
function MontaLinhaNotaSaidaParcelas : String;
var
 Str,ValorAux : String;
begin
 SQLContasReceber.Close;
 SQLContasReceber.MacroByName('MFiltro').AsString := ' NOFIA13ID = "' + SQLNotaFiscalNOFIA13ID.AsString + '"';
 SQLContasReceber.Open;
 SQLRecebimento.Open;
 SQLContasReceber.First;
 while not SQLContasReceber.Eof do
   begin
     Str := '';
     Str := '09';
     Inc(Cont);
     Str := Str + Preenche(IntToStr(Cont),'0',7,0);
     Str := Str + FormatDateTime('dd/mm/yyyy',SQLContasReceberCTRCDVENC.AsDateTime);
     Str := Str + '0';
     Str := Str + ConverteValorParaStringSemPontoSemVirgula(SQLContasReceberCTRCN2VLR.AsFloat,13,2);
     Str := PreencheValor(STR,' ',50,2);
     Append(Arquivo);
     Writeln(Arquivo,Str);
     if not SQLRecebimento.IsEmpty then
       begin
         SQLRecebimento.First;
         while not SQLPagamento.Eof do
           begin
             Str := '';
             Str := '10';
             Inc(Cont);
             Str := Str + Preenche(IntToStr(Cont),'0',7,0);
             Str := Str + FormatDateTime('dd/mm/yyyy',SQLRecebimentoRECEDDATAMOV.AsDateTime);
             Str := Str + ConverteValorParaStringSemPontoSemVirgula(SQLRecebimentoRECEDRECTO.AsFloat,13,2);
             Str := Str + ConverteValorParaStringSemPontoSemVirgula(SQLRecebimentoRECEN2VLRJURO.AsFloat,13,2);
             Str := Str + ConverteValorParaStringSemPontoSemVirgula(SQLRecebimentoRECEN2VLRMULTA.AsFloat,13,2);
             Str := Str + ConverteValorParaStringSemPontoSemVirgula(SQLRecebimentoRECEN2DESC.AsFloat,13,2);
             Str := PreencheValor(STR,' ',50,2);
             SQLRecebimento.Next;
           end;
         Append(Arquivo);
         Writeln(Arquivo,Str);
       end;
     SQLContasReceber.Next;
   end;
end;
// Aqui começa a rotina
begin
  SQLAcumuladores.Open;
  SQLOperacaoEstoque.Open;

  SQLNotaFiscal.Close;
  SQLNotaFiscal.MacroByName('MFiltro').AsString := ' NOTAFISCAL.NOFIDEMIS >= "' + FormatDateTime('mm/dd/yyyy',De.Date) + '" AND ' +
                                                   ' NOTAFISCAL.NOFIDEMIS <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';
  SQLNotaFiscal.Open;

  SQLNotaFiscal.Open;
  SQLNotaFiscal.First;

  AssignFile(Arquivo,EditDiretorio.Text + '\NFSaida.txt');
  Rewrite(Arquivo);
  Reset(Arquivo);
  Linha := GeraCabecalhoArquivo('03');
  Append(Arquivo);
  Writeln(Arquivo,Linha);
  while not SQLNotaFiscal.Eof do
    begin
     Append(Arquivo);
     Linha := '';
     Linha := MontaLinhaNotaSaida;
     Writeln(Arquivo,Linha);
     MontaLinhaNotaSaidaImposto;
     MontaLinhaNotaSaidaProduto;
//     MontaLinhaNotaSaidaParcelas;
     Inc(Cont);
     SQLNotaFiscal.Next;
    end;
  CloseFile(Arquivo);
  GeraFinalizador(EditDiretorio.Text + '\NFSaida.txt');
  SQLNotaFiscal.Close;
end;
procedure TFormTelaExportacaoDadosDominio.GeraTxtParcelaCupom;
var
  Arquivo : TextFile;
  Linha : String;
function MontaLinhaParcelaCupom : String;
  var
    Str : String;
  begin
    Posicao := 'PARCELACUPOM';
    Str := '';
    Str := '02'; // Tipo
    Str := STR + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
    Str := STR + FormatDateTime('dd/mm/yyyy',SQLContasReceberCTRCDEMIS.AsDateTime); // Data Lancamento
    Str := STR + ConverteValorParaStringSemPontoSemVirgula(SQLContasReceberCTRCN2VLR.AsFloat,15,2); // Valor Lancamento;
    Str := STR + Preenche(SQLContasReceberCLIEA30CODCONTABIL.AsString,'0',7,0); // Cod. Conta Debito CLIENTE
    Str := STR + Preenche(ComboPlanoContasReceber.Value,'0',7,0); // Cod. Conta Credito SELECIONADA

    Historico := SQLContasReceberCLIEA60RAZAOSOC.AsString + ' DOC.: ' + SQLContasReceberCTRCA30NRODUPLICBANCO.AsString;
    Str := STR + Preenche(Historico,' ',512,2); // Historico

    Str := STR + '12'; // Origem
    Str := PreencheValor(STR,' ',30,2);
    MontaLinhaParcelaCupom := Str;
  end;
begin
  SQLContasReceber.Close;
  SQLContasReceber.MacroByName('MFiltro').AsString := ' CONTASRECEBER.CUPOA13ID IS NOT NULL and CONTASRECEBER.ctrcdemis >= "' + FormatDateTime('mm/dd/yyyy',De.Date) + '"' +
                                                      ' and CONTASRECEBER.ctrcdemis <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';
  SQLContasReceber.Open;
  AssignFile(Arquivo,EditDiretorio.Text + '\ParcelasCupom.txt');
  Rewrite(Arquivo);
  Reset(Arquivo);
  Linha := GeraCabecalhoArquivo('01');
  Append(Arquivo);
  Writeln(Arquivo,Linha);
  while not SQLContasReceber.Eof do
    begin
     Append(Arquivo);
     Linha := MontaLinhaParcelaCupom;
     Writeln(Arquivo,Linha);
     Inc(Cont);
     SQLContasReceber.Next;
    end;
  CloseFile(Arquivo);
  GeraFinalizador(EditDiretorio.Text + '\ParcelasCupom.txt');
  SQLContasReceber.Close;
end;
procedure TFormTelaExportacaoDadosDominio.GeraTxtParcelaNotaSaida;
var
  Arquivo : TextFile;
  Linha : String;
function MontaLinhaParcelaNotaSaida : String;
  var
    Str : String;
  begin
    Posicao := 'PARCELANOTASAIDA';
    Str := '';
    Str := '02'; // Tipo
    Str := STR + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
    Str := STR + FormatDateTime('dd/mm/yyyy',SQLContasReceberCTRCDEMIS.AsDateTime); // Data Lancamento
    Str := STR + ConverteValorParaStringSemPontoSemVirgula(SQLContasReceberCTRCN2VLR.AsFloat,15,2); // Valor Lancamento;
    Str := STR + Preenche(SQLContasReceberCLIEA30CODCONTABIL.AsString,'0',7,0); // Cod. Conta Debito CLIENTE
    Str := STR + Preenche(ComboPlanoContasReceber.Value,'0',7,0); // Cod. Conta Credito CONTA SELECIONADA

    Historico := SQLContasReceberCLIEA60RAZAOSOC.AsString + ' DOC.: ' + SQLContasReceberCTRCA30NRODUPLICBANCO.AsString;
    Str := STR + Preenche(Historico,' ',512,2); // Historico

    Str := STR + '12'; // Origem
    Str := PreencheValor(STR,' ',30,2);
    MontaLinhaParcelaNotaSaida := Str;
  end;
begin
  SQLContasReceber.Close;
  SQLContasReceber.MacroByName('MFiltro').AsString := ' CONTASRECEBER.NOFIA13ID IS NOT NULL and CONTASRECEBER.ctrcdemis >= "' + FormatDateTime('mm/dd/yyyy',De.Date) + '"' +
                                                      ' and CONTASRECEBER.ctrcdemis <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"' +
                                                      ' and (CONTASRECEBER.CTRCCTIPOREGISTRO is null or CONTASRECEBER.CTRCCTIPOREGISTRO = "N")';
  SQLContasReceber.Open;
  AssignFile(Arquivo,EditDiretorio.Text + '\ParcelasNotaSaida.txt');
  Rewrite(Arquivo);
  Reset(Arquivo);
  Linha := GeraCabecalhoArquivo('01');
  Append(Arquivo);
  Writeln(Arquivo,Linha);
  while not SQLContasReceber.Eof do
    begin
     Append(Arquivo);
     Linha := MontaLinhaParcelaNotaSaida;
     Writeln(Arquivo,Linha);
     Inc(Cont);
     SQLContasReceber.Next;
    end;
  CloseFile(Arquivo);
  GeraFinalizador(EditDiretorio.Text + '\ParcelasNotaSaida.txt');
  SQLContasReceber.Close;
end;
procedure TFormTelaExportacaoDadosDominio.GeraTxtOutrasParcelasReceber;
var
  Arquivo : TextFile;
  Linha : String;
function MontaLinhaOutrasParcelasReceber : String;
  var
    Str : String;
  begin
    Posicao := 'OUTRAS PARCELAS RECEBER';
    Str := '';
    Str := '02'; // Tipo
    Str := STR + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
    Str := STR + FormatDateTime('dd/mm/yyyy',SQLContasReceberCTRCDEMIS.AsDateTime); // Data Lancamento
    Str := STR + ConverteValorParaStringSemPontoSemVirgula(SQLContasReceberCTRCN2VLR.AsFloat,15,2); // Valor Lancamento;

    Str := STR + Preenche(SQLContasReceberCLIEA30CODCONTABIL.AsString,'0',7,0); // Cod. Conta Debito CLIENTE
    Str := STR + Preenche(SQLContasReceberCODCREDITO.AsString,'0',7,0); // Cod. Conta Credito CONTA SELECIONADA

    Historico := SQLContasReceberCLIEA60RAZAOSOC.AsString + ' DOC.: ' + SQLContasReceberCTRCA30NRODUPLICBANCO.AsString;
    Str := STR + Preenche(Historico,' ',512,2); // Historico

    Str := STR + '12'; // Origem
    Str := PreencheValor(STR,' ',30,2);
    MontaLinhaOutrasParcelasReceber := Str;
  end;
begin
  SQLContasReceber.Close;
  SQLContasReceber.MacroByName('MFiltro').AsString := ' CONTASRECEBER.NOFIA13ID IS NULL and CONTASRECEBER.CUPOA13ID IS NULL and CONTASRECEBER.PDVDA13ID IS NULL and CONTASRECEBER.ctrcdemis >= "' + FormatDateTime('mm/dd/yyyy',De.Date) + '"' +
                                                      ' and CONTASRECEBER.ctrcdemis <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '" AND (CONTASRECEBER.PLCTA15COD is not null and  CONTASRECEBER.PLCTA15COD <> "")and' +
                                                      '(CONTASRECEBER.CTRCCTIPOREGISTRO is null or CONTASRECEBER.CTRCCTIPOREGISTRO = "N")';
  SQLContasReceber.Open;
  AssignFile(Arquivo,EditDiretorio.Text + '\OutrasParcelasReceber.txt');
  Rewrite(Arquivo);
  Reset(Arquivo);
  Linha := GeraCabecalhoArquivo('01');
  Append(Arquivo);
  Writeln(Arquivo,Linha);
  while not SQLContasReceber.Eof do
    begin
     Append(Arquivo);
     Linha := MontaLinhaOutrasParcelasReceber;
     Writeln(Arquivo,Linha);
     Inc(Cont);
     SQLContasReceber.Next;
    end;
  CloseFile(Arquivo);
  GeraFinalizador(EditDiretorio.Text + '\OutrasParcelasReceber.txt');
  SQLContasReceber.Close;
end;

procedure TFormTelaExportacaoDadosDominio.GeraTxtCreditoCliente;
var
  Arquivo : TextFile;
  Linha : String;
function MontaLinhaCreditoCliente : String;
  var
    Str : String;
  begin
    Posicao := 'CREDITO CLIENTE';
    Str := '';
    Str := '02'; // Tipo
    Str := STR + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
    Str := STR + FormatDateTime('dd/mm/yyyy',SQLContasReceberCTRCDEMIS.AsDateTime); // Data Lancamento
    Str := STR + ConverteValorParaStringSemPontoSemVirgula(SQLContasReceberCTRCN2VLR.AsFloat,15,2); // Valor Lancamento;
    Str := STR + Preenche(SQLContasReceberCODDEBITO.AsString,'0',7,0); // Cod. Conta Debito CLIENTE
    Str := STR + Preenche(SQLContasReceberCLIEA30CODCONTABIL.AsString,'0',7,0); // Cod. Conta Credito CONTA SELECIONADA

    Historico := SQLContasReceberCLIEA60RAZAOSOC.AsString + ' DOC.: ' + SQLContasReceberCTRCA30NRODUPLICBANCO.AsString;
    Str := STR + Preenche(Historico,' ',512,2); // Historico

    Str := STR + '12'; // Origem
    Str := PreencheValor(STR,' ',30,2);
    MontaLinhaCreditoCliente := Str;
  end;
begin
  SQLContasReceber.Close;
  SQLContasReceber.MacroByName('MFiltro').AsString := ' CONTASRECEBER.CTRCCTIPOREGISTRO = "C" and CONTASRECEBER.ctrcdemis >= "' + FormatDateTime('mm/dd/yyyy',De.Date) + '"' +
                                                      ' and CONTASRECEBER.ctrcdemis <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) +
                                                      '" AND (CONTASRECEBER.PLCTA15CODDEBITO is not null and CONTASRECEBER.PLCTA15CODDEBITO <> "")';
  SQLContasReceber.Open;
  AssignFile(Arquivo,EditDiretorio.Text + '\CreditoCliente.txt');
  Rewrite(Arquivo);
  Reset(Arquivo);
  Linha := GeraCabecalhoArquivo('01');
  Append(Arquivo);
  Writeln(Arquivo,Linha);
  while not SQLContasReceber.Eof do
    begin
     Append(Arquivo);
     Linha := MontaLinhaCreditoCliente;
     Writeln(Arquivo,Linha);
     Inc(Cont);
     SQLContasReceber.Next;
    end;
  CloseFile(Arquivo);
  GeraFinalizador(EditDiretorio.Text + '\CreditoCliente.txt');
  SQLContasReceber.Close;
end;


procedure TFormTelaExportacaoDadosDominio.GeraTxtParcelaNotaEntrada;
var
  Arquivo : TextFile;
  Linha : String;
function MontaLinhaParcelaNotaEntrada : String;
  var
    Str : String;
  begin
    Posicao := 'PARCELANOTAENTRADA';
    Str := '';
    Str := '02'; // Tipo
    Str := STR + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
    Str := STR + FormatDateTime('dd/mm/yyyy',SQLContasPagarCTPGDRECBTO.AsDateTime); // Data Lancamento
    Str := STR + ConverteValorParaStringSemPontoSemVirgula(SQLContasPagarCTPGN3VLR.AsFloat,15,2); // Valor Lancamento;
    Str := STR + Preenche(ComboPlanoContasPagar.Value,'0',7,0); // Cod. Conta Debito CONTA SELECIONADA
    Str := STR + Preenche(SQLContasPagarFORNA30CODCONTABIL.AsString,'0',7,0); // Cod. Conta Credito FORNECEDOR

    Historico := SQLContasPagarFORNA60RAZAOSOC.AsString + ' DOC.: ' + SQLContasPagarCTPGA20DOCORIG.AsString;
    Str := STR + Preenche(Historico,' ',512,2); // Historico

    Str := STR + '12'; // Origem
    Str := PreencheValor(STR,' ',30,2);
    MontaLinhaParcelaNotaEntrada := Str;
  end;
begin
  SQLContasPagar.Close;
  SQLContasPagar.MacroByName('MFiltro').AsString := ' CONTASPAGAR.NOCPA13ID IS NOT NULL and CONTASPAGAR.CTPGDRECBTO >= "' + FormatDateTime('mm/dd/yyyy',De.Date) + '"' +
                                                    ' and CONTASPAGAR.CTPGDRECBTO <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';
  SQLContasPagar.Open;
  AssignFile(Arquivo,EditDiretorio.Text + '\ParcelasNotaEntrada.txt');
  Rewrite(Arquivo);
  Reset(Arquivo);
  Linha := GeraCabecalhoArquivo('01');
  Append(Arquivo);
  Writeln(Arquivo,Linha);
  while not SQLContasPagar.Eof do
    begin
     Append(Arquivo);
     Linha := MontaLinhaParcelaNotaEntrada;
     Writeln(Arquivo,Linha);
     Inc(Cont);
     SQLContasPagar.Next;
    end;
  CloseFile(Arquivo);
  GeraFinalizador(EditDiretorio.Text + '\ParcelasNotaEntrada.txt');
  SQLContasPagar.Close;
end;
procedure TFormTelaExportacaoDadosDominio.GeraTxtOutrasParcelasPagar;
var
  Arquivo : TextFile;
  Linha : String;
function MontaLinhaOutrasParcelasContasPagar : String;
  var
    Str : String;
  begin
    Posicao := 'PARCELANOTAENTRADA';
    Str := '';
    Str := '02'; // Tipo
    Str := STR + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
    Str := STR + FormatDateTime('dd/mm/yyyy',SQLContasPagarCTPGDRECBTO.AsDateTime); // Data Lancamento
    Str := STR + ConverteValorParaStringSemPontoSemVirgula(SQLContasPagarCTPGN3VLR.AsFloat,15,2); // Valor Lancamento;

    Str := STR + Preenche(SQLContasPagarCODDEBITO.AsString,'0',7,0); // Cod. Conta Debito CONTA SELECIONADA
    Str := STR + Preenche(SQLContasPagarFORNA30CODCONTABIL.AsString,'0',7,0); // Cod. Conta Credito FORNECEDOR

    Historico := SQLContasPagarFORNA60RAZAOSOC.AsString + ' DOC.: ' + SQLContasPagarCTPGA20DOCORIG.AsString;
    Str := STR + Preenche(Historico,' ',512,2); // Historico

    Str := STR + '12'; // Origem
    Str := PreencheValor(STR,' ',30,2);
    MontaLinhaOutrasParcelasContasPagar := Str;
  end;
begin
  SQLContasPagar.Close;
  SQLContasPagar.MacroByName('MFiltro').AsString := ' CONTASPAGAR.NOCPA13ID IS NULL and CONTASPAGAR.CTPGDRECBTO >= "' + FormatDateTime('mm/dd/yyyy',De.Date) + '"' +
                                                    ' and CONTASPAGAR.CTPGDRECBTO <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '" and (CONTASPAGAR.PLCTA15COD is not null and CONTASPAGAR.PLCTA15COD <> "")';
  SQLContasPagar.Open;
  AssignFile(Arquivo,EditDiretorio.Text + '\OutrasParcelasContasPagar.txt');
  Rewrite(Arquivo);
  Reset(Arquivo);
  Linha := GeraCabecalhoArquivo('01');
  Append(Arquivo);
  Writeln(Arquivo,Linha);
  while not SQLContasPagar.Eof do
    begin
     Append(Arquivo);
     Linha := MontaLinhaOutrasParcelasContasPagar;
     Writeln(Arquivo,Linha);
     Inc(Cont);
     SQLContasPagar.Next;
    end;
  CloseFile(Arquivo);
  GeraFinalizador(EditDiretorio.Text + '\OutrasParcelasContasPagar.txt');
  SQLContasPagar.Close;
end;

procedure TFormTelaExportacaoDadosDominio.GeraTxtRecebimentos;
var
  Arquivo : TextFile;
  Linha : String;
procedure MontaLinhaRecebimento;
  var
    Str : String;
  begin
    Posicao := 'Recebimentos';
    Str := '';
    Str := '02'; // Tipo
    Str := STR + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
    Str := STR + FormatDateTime('dd/mm/yyyy',SQLRecebimentoRECEDDATAMOV.AsDateTime); // Data Lancamento
    Str := STR + ConverteValorParaStringSemPontoSemVirgula(SQLRecebimentoRECEN2VLRRECTO.AsFloat,15,2); // Valor Lancamento;
    Str := STR + Preenche(SQLRecebimentoPLANODEBITO.AsString,'0',7,0); // Cod. Conta Debito CONTA SELECIONADA
    Str := STR + Preenche(SQLRecebimentoCLIEA30CODCONTABIL.AsString,'0',7,0); // Cod. Conta Credito CLIENTE

    Historico := SQLRecebimentoCLIEA60RAZAOSOC.AsString + ' DOC.: ' + SQLRecebimentoCTRCA30NRODUPLICBANCO.AsString;
    Str := STR + Preenche(Historico,' ',512,2); // Historico
    
    Str := STR + '12'; // Origem
    Str := PreencheValor(STR,' ',30,2);
    Append(Arquivo);
    Writeln(Arquivo,STR);
    if SQLRecebimentoRECEN2VLRJURO.AsFloat > 0 then
      begin
        Str := '';
        Str := '02'; // Tipo
        inc(cont);
        Str := STR + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
        Str := STR + FormatDateTime('dd/mm/yyyy',SQLRecebimentoRECEDDATAMOV.AsDateTime); // Data Lancamento
        Str := STR + ConverteValorParaStringSemPontoSemVirgula(SQLRecebimentoRECEN2VLRJURO.AsFloat,15,2); // Valor Lancamento;
        Str := STR + Preenche(SQLRecebimentoPLANOJURODEB.AsString,'0',7,0);
        Str := STR + Preenche(SQLRecebimentoPLANOJUROCRED.AsString,'0',7,0);

        Historico := SQLRecebimentoCLIEA60RAZAOSOC.AsString + ' DOC.: ' + SQLRecebimentoCTRCA30NRODUPLICBANCO.AsString;
        Str := STR + Preenche(Historico,' ',512,2); // Historico

        Str := STR + '12'; // Origem
        Str := PreencheValor(STR,' ',30,2);
        Append(Arquivo);
        Writeln(Arquivo,STR);
      end;
    if SQLRecebimentoRECEN2VLRMULTA.AsFloat > 0 then
      begin
        Str := '';
        Str := '02'; // Tipo
        inc(cont);
        Str := STR + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
        Str := STR + FormatDateTime('dd/mm/yyyy',SQLRecebimentoRECEDDATAMOV.AsDateTime); // Data Lancamento
        Str := STR + ConverteValorParaStringSemPontoSemVirgula(SQLRecebimentoRECEN2VLRMULTA.AsFloat,15,2); // Valor Lancamento;
        Str := STR + Preenche(SQLRecebimentoPLANOMULTADEB.AsString,'0',7,0);
        Str := STR + Preenche(SQLRecebimentoPLANOMULTACRED.AsString,'0',7,0);

        Historico := SQLRecebimentoCLIEA60RAZAOSOC.AsString + ' DOC.: ' + SQLRecebimentoCTRCA30NRODUPLICBANCO.AsString;
        Str := STR + Preenche(Historico,' ',512,2); // Historico

        Str := STR + '12'; // Origem
        Str := PreencheValor(STR,' ',30,2);
        Append(Arquivo);
        Writeln(Arquivo,STR);
      end;
    if SQLRecebimentoRECEN2DESC.AsFloat > 0 then
      begin
        Str := '';
        Str := '02'; // Tipo
        inc(cont);
        Str := STR + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
        Str := STR + FormatDateTime('dd/mm/yyyy',SQLRecebimentoRECEDDATAMOV.AsDateTime); // Data Lancamento
        Str := STR + ConverteValorParaStringSemPontoSemVirgula(SQLRecebimentoRECEN2DESC.AsFloat,15,2); // Valor Lancamento;
        Str := STR + Preenche(SQLRecebimentoPLANODESCDEB.AsString,'0',7,0);
        Str := STR + Preenche(SQLRecebimentoPLANODESCCRED.AsString,'0',7,0);

        Historico := SQLRecebimentoCLIEA60RAZAOSOC.AsString + ' DOC.: ' + SQLRecebimentoCTRCA30NRODUPLICBANCO.AsString;
        Str := STR + Preenche(Historico,' ',512,2); // Historico

        Str := STR + '12'; // Origem
        Str := PreencheValor(STR,' ',30,2);
        Append(Arquivo);
        Writeln(Arquivo,STR);
      end;
  end;
begin
  SQLRecebimento.Close;
  SQLRecebimento.MacroByName('MFiltro').AsString := ' (CONTASRECEBER.NOFIA13ID IS NOT NULL or CONTASRECEBER.CUPOA13ID IS NOT NULL) and Recebimento.RECEDRECTO >= "' + FormatDateTime('mm/dd/yyyy',De.Date) + '"' +
                                                    ' and Recebimento.RECEDRECTO <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"' +
                                                    ' and (CONTASRECEBER.CTRCCTIPOREGISTRO is null or CONTASRECEBER.CTRCCTIPOREGISTRO = "N")' +
                                                    ' and recebimento.PLCTA15DEBITO is not null';
  SQLRecebimento.Open;
  SQLRecebimento.First;
  AssignFile(Arquivo,EditDiretorio.Text + '\Recebimentos.txt');
  Rewrite(Arquivo);
  Reset(Arquivo);
  Linha := GeraCabecalhoArquivo('01');
  Append(Arquivo);
  Writeln(Arquivo,Linha);
  while not SQLRecebimento.Eof do
    begin
      MontaLinhaRecebimento;
      Inc(Cont);
      SQLRecebimento.Next;
    end;
  CloseFile(Arquivo);
  GeraFinalizador(EditDiretorio.Text + '\Recebimentos.txt');
  SQLRecebimento.Close;
end;
procedure TFormTelaExportacaoDadosDominio.GeraTxtOutrosRecebimentos;
var
  Arquivo : TextFile;
  Linha, Historico : String;
procedure MontaLinhaOutrosRecebimentos;
  var
    Str : String;
  begin
    Posicao := 'Outros Recebimentos';
    Str := '';
    Str := '02'; // Tipo
    Str := STR + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
    Str := STR + FormatDateTime('dd/mm/yyyy',SQLRecebimentoRECEDDATAMOV.AsDateTime); // Data Lancamento
    Str := STR + ConverteValorParaStringSemPontoSemVirgula(SQLRecebimentoRECEN2VLRRECTO.AsFloat,15,2); // Valor Lancamento;
    Str := STR + Preenche(SQLRecebimentoPLANODEBITO.AsString,'0',7,0); // Cod. Conta Debito CONTA SELECIONADA
    Str := STR + Preenche(SQLRecebimentoCLIEA30CODCONTABIL.AsString,'0',7,0); // Cod. Conta Credito CLIENTE

    Historico := SQLRecebimentoCLIEA60RAZAOSOC.AsString + ' DOC.: ' + SQLRecebimentoCTRCA30NRODUPLICBANCO.AsString;
    Str := STR + Preenche(Historico,' ',512,2); // Historico

    Str := STR + '12'; // Origem
    Str := PreencheValor(STR,' ',30,2);
    Append(Arquivo);
    Writeln(Arquivo,STR);
    if SQLRecebimentoRECEN2VLRJURO.AsFloat > 0 then
      begin
        Str := '';
        Str := '02'; // Tipo
        inc(cont);
        Str := STR + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
        Str := STR + FormatDateTime('dd/mm/yyyy',SQLRecebimentoRECEDDATAMOV.AsDateTime); // Data Lancamento
        Str := STR + ConverteValorParaStringSemPontoSemVirgula(SQLRecebimentoRECEN2VLRJURO.AsFloat,15,2); // Valor Lancamento;
        Str := STR + Preenche(SQLRecebimentoPLANOJURODEB.AsString,'0',7,0);
        Str := STR + Preenche(SQLRecebimentoPLANOJUROCRED.AsString,'0',7,0);

        Historico := SQLRecebimentoCLIEA60RAZAOSOC.AsString + ' DOC.: ' + SQLRecebimentoCTRCA30NRODUPLICBANCO.AsString;
        Str := STR + Preenche(Historico,' ',512,2); // Historico

        Str := STR + '12'; // Origem
        Str := PreencheValor(STR,' ',30,2);
        Append(Arquivo);
        Writeln(Arquivo,STR);
      end;
    if SQLRecebimentoRECEN2VLRMULTA.AsFloat > 0 then
      begin
        Str := '';
        Str := '02'; // Tipo
        inc(cont);
        Str := STR + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
        Str := STR + FormatDateTime('dd/mm/yyyy',SQLRecebimentoRECEDDATAMOV.AsDateTime); // Data Lancamento
        Str := STR + ConverteValorParaStringSemPontoSemVirgula(SQLRecebimentoRECEN2VLRMULTA.AsFloat,15,2); // Valor Lancamento;
        Str := STR + Preenche(SQLRecebimentoPLANOMULTADEB.AsString,'0',7,0);
        Str := STR + Preenche(SQLRecebimentoPLANOMULTACRED.AsString,'0',7,0);

        Historico := SQLRecebimentoCLIEA60RAZAOSOC.AsString + ' DOC.: ' + SQLRecebimentoCTRCA30NRODUPLICBANCO.AsString;
        Str := STR + Preenche(Historico,' ',512,2); // Historico

        Str := STR + '12'; // Origem
        Str := PreencheValor(STR,' ',30,2);
        Append(Arquivo);
        Writeln(Arquivo,STR);
      end;
    if SQLRecebimentoRECEN2DESC.AsFloat > 0 then
      begin
        Str := '';
        Str := '02'; // Tipo
        inc(cont);
        Str := STR + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
        Str := STR + FormatDateTime('dd/mm/yyyy',SQLRecebimentoRECEDDATAMOV.AsDateTime); // Data Lancamento
        Str := STR + ConverteValorParaStringSemPontoSemVirgula(SQLRecebimentoRECEN2DESC.AsFloat,15,2); // Valor Lancamento;
        Str := STR + Preenche(SQLRecebimentoPLANODESCDEB.AsString,'0',7,0);
        Str := STR + Preenche(SQLRecebimentoPLANODESCCRED.AsString,'0',7,0);

        Historico := SQLRecebimentoCLIEA60RAZAOSOC.AsString + ' DOC.: ' + SQLRecebimentoCTRCA30NRODUPLICBANCO.AsString;
        Str := STR + Preenche(Historico,' ',512,2); // Historico

        Str := STR + '12'; // Origem
        Str := PreencheValor(STR,' ',30,2);
        Append(Arquivo);
        Writeln(Arquivo,STR);
      end;
  end;
begin
  SQLRecebimento.Close;
  SQLRecebimento.MacroByName('MFiltro').AsString := ' (CONTASRECEBER.NOFIA13ID IS NULL and CONTASRECEBER.CUPOA13ID IS NULL  and CONTASRECEBER.PDVDA13ID IS NULL) and Recebimento.RECEDRECTO >= "' + FormatDateTime('mm/dd/yyyy',De.Date) + '"' +
                                                    ' and Recebimento.RECEDRECTO <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"' +
                                                    ' and (CONTASRECEBER.CTRCCTIPOREGISTRO is null or CONTASRECEBER.CTRCCTIPOREGISTRO = "N")' +
                                                    ' and recebimento.PLCTA15DEBITO is not null';
  SQLRecebimento.Open;
  SQLRecebimento.First;
  AssignFile(Arquivo,EditDiretorio.Text + '\OutrosRecebimentos.txt');
  Rewrite(Arquivo);
  Reset(Arquivo);
  Linha := GeraCabecalhoArquivo('01');
  Append(Arquivo);
  Writeln(Arquivo,Linha);
  while not SQLRecebimento.Eof do
    begin
      MontaLinhaOutrosRecebimentos;
      Inc(Cont);
      SQLRecebimento.Next;
    end;
  CloseFile(Arquivo);
  GeraFinalizador(EditDiretorio.Text + '\OutrosRecebimentos.txt');
  SQLRecebimento.Close;
end;

procedure TFormTelaExportacaoDadosDominio.GeraTxtRecebimentosCredito;
var
  Arquivo : TextFile;
  Linha, Historico : String;
procedure MontaLinhaRecebimentosCredito;
  var
    Str : String;
  begin
    Posicao := 'Recebimentos Credito';
    Str := '';
    Str := '02'; // Tipo
    Str := STR + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
    Str := STR + FormatDateTime('dd/mm/yyyy',SQLRecebimentoRECEDDATAMOV.AsDateTime); // Data Lancamento
    Str := STR + ConverteValorParaStringSemPontoSemVirgula(SQLRecebimentoRECEN2VLRRECTO.AsFloat,15,2); // Valor Lancamento;

    Str := STR + Preenche(SQLRecebimentoCLIEA30CODCONTABIL.AsString,'0',7,0); // Cod. Conta Debito CONTA SELECIONADA
    Str := STR + Preenche(SQLRecebimentoPLANOCREDITO.AsString,'0',7,0); // Cod. Conta Credito CLIENTE

    Historico := SQLRecebimentoCLIEA60RAZAOSOC.AsString + ' DOC.: ' + SQLRecebimentoCTRCA30NRODUPLICBANCO.AsString;
    Str := STR + Preenche(Historico,' ',512,2); // Historico

    Str := STR + '12'; // Origem
    Str := PreencheValor(STR,' ',30,2);
    Append(Arquivo);
    Writeln(Arquivo,STR);
  end;
begin
  SQLRecebimento.Close;
  SQLRecebimento.MacroByName('MFiltro').AsString := ' (CONTASRECEBER.NOFIA13ID IS NULL and CONTASRECEBER.CUPOA13ID IS NULL  and CONTASRECEBER.PDVDA13ID IS NULL) and Recebimento.RECEDRECTO >= "' + FormatDateTime('mm/dd/yyyy',De.Date) + '"' +
                                                    ' and Recebimento.RECEDRECTO <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"' +
                                                    ' and CONTASRECEBER.CTRCCTIPOREGISTRO = "C"' +
                                                    ' and recebimento.PLCTA15CREDITO is not null';
  SQLRecebimento.Open;
  SQLRecebimento.First;
  AssignFile(Arquivo,EditDiretorio.Text + '\RecebimentosCredito.txt');
  Rewrite(Arquivo);
  Reset(Arquivo);
  Linha := GeraCabecalhoArquivo('01');
  Append(Arquivo);
  Writeln(Arquivo,Linha);
  while not SQLRecebimento.Eof do
    begin
      MontaLinhaRecebimentosCredito;
      Inc(Cont);
      SQLRecebimento.Next;
    end;
  CloseFile(Arquivo);
  GeraFinalizador(EditDiretorio.Text + '\RecebimentosCredito.txt');
  SQLRecebimento.Close;
end;

procedure TFormTelaExportacaoDadosDominio.GeraTxtPagamentos;
var
  Arquivo : TextFile;
  Linha, Historico : String;
procedure MontaLinhaPagamento;
  var
    Str : String;
  begin
    Posicao := 'Pagamentos';
    Str := '';
    Str := '02'; // Tipo
    Str := STR + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
    Str := STR + FormatDateTime('dd/mm/yyyy',SQLPagamentoPAGADPAGTO.AsDateTime); // Data Lancamento
    Str := STR + ConverteValorParaStringSemPontoSemVirgula(SQLPagamentoPAGAN3VLRPAGTO.AsFloat,15,2); // Valor Lancamento;
    Str := STR + Preenche(SQLPagamentoFORNA30CODCONTABIL.AsString,'0',7,0); // Cod. Conta Debito CONTA SELECIONADA
    Str := STR + Preenche(SQLPagamentoPLANOCREDITO.AsString,'0',7,0); // Cod. Conta Credito CLIENTE

    Historico := SQLPagamentoFORNA60RAZAOSOC.AsString + ' DOC.: ' + SQLPagamentoCTPGA20DOCORIG.AsString;
    Str := STR + Preenche(Historico,' ',512,2); // Historico

    Str := STR + '12'; // Origem
    Str := PreencheValor(STR,' ',30,2);
    Append(Arquivo);
    Writeln(Arquivo,STR);
    if SQLPagamentoPAGAN3VLRJURO.AsFloat > 0 then
      begin
        Str := '';
        Str := '02'; // Tipo
        inc(cont);
        Str := STR + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
        Str := STR + FormatDateTime('dd/mm/yyyy',SQLPagamentoPAGADPAGTO.AsDateTime); // Data Lancamento
        Str := STR + ConverteValorParaStringSemPontoSemVirgula(SQLPagamentoPAGAN3VLRJURO.AsFloat,15,2); // Valor Lancamento;
        Str := STR + Preenche(SQLPagamentoPLANOJURODEB.AsString,'0',7,0);
        Str := STR + Preenche(SQLPagamentoPLANOJUROCRED.AsString,'0',7,0);

        Historico := SQLPagamentoFORNA60RAZAOSOC.AsString + ' DOC.: ' + SQLPagamentoCTPGA20DOCORIG.AsString;
        Str := STR + Preenche(Historico,' ',512,2); // Historico

        Str := STR + '12'; // Origem
        Str := PreencheValor(STR,' ',30,2);
        Append(Arquivo);
        Writeln(Arquivo,STR);
      end;
    if SQLPagamentoPAGAN3VLRMULTA.AsFloat > 0 then
      begin
        Str := '';
        Str := '02'; // Tipo
        inc(cont);
        Str := STR + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
        Str := STR + FormatDateTime('dd/mm/yyyy',SQLPagamentoPAGADPAGTO.AsDateTime); // Data Lancamento
        Str := STR + ConverteValorParaStringSemPontoSemVirgula(SQLPagamentoPAGAN3VLRMULTA.AsFloat,15,2); // Valor Lancamento;
        Str := STR + Preenche(SQLPagamentoPLANOMULTADEB.AsString,'0',7,0);
        Str := STR + Preenche(SQLPagamentoPLANOMULTACRED.AsString,'0',7,0);

        Historico := SQLPagamentoFORNA60RAZAOSOC.AsString + ' DOC.: ' + SQLPagamentoCTPGA20DOCORIG.AsString;
        Str := STR + Preenche(Historico,' ',512,2); // Historico

        Str := STR + '12'; // Origem
        Str := PreencheValor(STR,' ',30,2);
        Append(Arquivo);
        Writeln(Arquivo,STR);
      end;
    if SQLPagamentoPAGAN3VLRDESC.AsFloat > 0 then
      begin
        Str := '';
        Str := '02'; // Tipo
        inc(cont);
        Str := STR + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
        Str := STR + FormatDateTime('dd/mm/yyyy',SQLPagamentoPAGADPAGTO.AsDateTime); // Data Lancamento
        Str := STR + ConverteValorParaStringSemPontoSemVirgula(SQLPagamentoPAGAN3VLRDESC.AsFloat,15,2); // Valor Lancamento;
        Str := STR + Preenche(SQLPagamentoPLANODESCDEB.AsString,'0',7,0);
        Str := STR + Preenche(SQLPagamentoPLANODESCCRED.AsString,'0',7,0);

        Historico := SQLPagamentoFORNA60RAZAOSOC.AsString + ' DOC.: ' + SQLPagamentoCTPGA20DOCORIG.AsString;
        Str := STR + Preenche(Historico,' ',512,2); // Historico

        Str := STR + '12'; // Origem
        Str := PreencheValor(STR,' ',30,2);
        Append(Arquivo);
        Writeln(Arquivo,STR);
      end;
  end;
begin
  SQLPagamento.Close;
  SQLPagamento.MacroByName('MFiltro').AsString := ' CONTASPAGAR.CTPGA13ID IS NOT NULL and Pagamento.PLCTA15CREDITO is not null and Pagamento.PAGADPAGTO >= "' + FormatDateTime('mm/dd/yyyy',De.Date) + '"' +
                                                  ' and Pagamento.PAGADPAGTO <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';
  SQLPagamento.Open;
  SQLPagamento.First;
  AssignFile(Arquivo,EditDiretorio.Text + '\Pagamentos.txt');
  Rewrite(Arquivo);
  Reset(Arquivo);
  Linha := GeraCabecalhoArquivo('01');
  Append(Arquivo);
  Writeln(Arquivo,Linha);
  while not SQLPagamento.Eof do
    begin
      MontaLinhaPagamento;
      Inc(Cont);
      SQLPagamento.Next;
    end;
  CloseFile(Arquivo);
  GeraFinalizador(EditDiretorio.Text + '\Pagamentos.txt');
  SQLPagamento.Close;
end;
procedure TFormTelaExportacaoDadosDominio.GeraTxtOutrosPagamentos;
var
  Arquivo : TextFile;
  Linha, Historico : String;
procedure MontaLinhaOutrosPagamentos;
  var
    Str : String;
  begin
    Posicao := 'Outros Pagamentos';
    Str := '';
    Str := '02'; // Tipo
    Str := STR + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
    Str := STR + FormatDateTime('dd/mm/yyyy',SQLPagamentoPAGADPAGTO.AsDateTime); // Data Lancamento
    Str := STR + ConverteValorParaStringSemPontoSemVirgula(SQLPagamentoPAGAN3VLRPAGTO.AsFloat,15,2); // Valor Lancamento;
    Str := STR + Preenche(SQLPagamentoFORNA30CODCONTABIL.AsString,'0',7,0); // Cod. Conta Debito CONTA SELECIONADA
    Str := STR + Preenche(SQLPagamentoPLANOCREDITO.AsString,'0',7,0); // Cod. Conta Credito CLIENTE

    Historico := SQLPagamentoFORNA60RAZAOSOC.AsString + ' DOC.: ' + SQLPagamentoCTPGA20DOCORIG.AsString;
    Str := STR + Preenche(Historico,' ',512,2); // Historico

    Str := STR + '12'; // Origem
    Str := PreencheValor(STR,' ',30,2);
    Append(Arquivo);
    Writeln(Arquivo,STR);
    if SQLPagamentoPAGAN3VLRJURO.AsFloat > 0 then
      begin
        Str := '';
        Str := '02'; // Tipo
        inc(cont);
        Str := STR + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
        Str := STR + FormatDateTime('dd/mm/yyyy',SQLPagamentoPAGADPAGTO.AsDateTime); // Data Lancamento
        Str := STR + ConverteValorParaStringSemPontoSemVirgula(SQLPagamentoPAGAN3VLRJURO.AsFloat,15,2); // Valor Lancamento;
        Str := STR + Preenche(SQLPagamentoPLANOJURODEB.AsString,'0',7,0);
        Str := STR + Preenche(SQLPagamentoPLANOJUROCRED.AsString,'0',7,0);

        Historico := SQLPagamentoFORNA60RAZAOSOC.AsString + ' DOC.: ' + SQLPagamentoCTPGA20DOCORIG.AsString;
        Str := STR + Preenche(Historico,' ',512,2); // Historico

        Str := STR + '12'; // Origem
        Str := PreencheValor(STR,' ',30,2);
        Append(Arquivo);
        Writeln(Arquivo,STR);
      end;
    if SQLPagamentoPAGAN3VLRMULTA.AsFloat > 0 then
      begin
        Str := '';
        Str := '02'; // Tipo
        inc(cont);
        Str := STR + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
        Str := STR + FormatDateTime('dd/mm/yyyy',SQLPagamentoPAGADPAGTO.AsDateTime); // Data Lancamento
        Str := STR + ConverteValorParaStringSemPontoSemVirgula(SQLPagamentoPAGAN3VLRMULTA.AsFloat,15,2); // Valor Lancamento;
        Str := STR + Preenche(SQLPagamentoPLANOMULTADEB.AsString,'0',7,0);
        Str := STR + Preenche(SQLPagamentoPLANOMULTACRED.AsString,'0',7,0);

        Historico := SQLPagamentoFORNA60RAZAOSOC.AsString + ' DOC.: ' + SQLPagamentoCTPGA20DOCORIG.AsString;
        Str := STR + Preenche(Historico,' ',512,2); // Historico

        Str := STR + '12'; // Origem
        Str := PreencheValor(STR,' ',30,2);
        Append(Arquivo);
        Writeln(Arquivo,STR);
      end;
    if SQLPagamentoPAGAN3VLRDESC.AsFloat > 0 then
      begin
        Str := '';
        Str := '02'; // Tipo
        inc(cont);
        Str := STR + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
        Str := STR + FormatDateTime('dd/mm/yyyy',SQLPagamentoPAGADPAGTO.AsDateTime); // Data Lancamento
        Str := STR + ConverteValorParaStringSemPontoSemVirgula(SQLPagamentoPAGAN3VLRDESC.AsFloat,15,2); // Valor Lancamento;
        Str := STR + Preenche(SQLPagamentoPLANODESCDEB.AsString,'0',7,0);
        Str := STR + Preenche(SQLPagamentoPLANODESCCRED.AsString,'0',7,0);

        Historico := SQLPagamentoFORNA60RAZAOSOC.AsString + ' DOC.: ' + SQLPagamentoCTPGA20DOCORIG.AsString;
        Str := STR + Preenche(Historico,' ',512,2); // Historico

        Str := STR + '12'; // Origem
        Str := PreencheValor(STR,' ',30,2);
        Append(Arquivo);
        Writeln(Arquivo,STR);
      end;
  end;
begin
  SQLPagamento.Close;
  SQLPagamento.MacroByName('MFiltro').AsString := ' CONTASPAGAR.CTPGA13ID IS NULL  and Pagamento.PAGADPAGTO >= "' + FormatDateTime('mm/dd/yyyy',De.Date) + '"' +
                                                    ' and Pagamento.PAGADPAGTO <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '" and PLCTA15CREDITO is not null';
  SQLPagamento.Open;
  SQLPagamento.First;
  AssignFile(Arquivo,EditDiretorio.Text + '\OutrosPagamentos.txt');
  Rewrite(Arquivo);
  Reset(Arquivo);
  Linha := GeraCabecalhoArquivo('01');
  Append(Arquivo);
  Writeln(Arquivo,Linha);
  while not SQLPagamento.Eof do
    begin
      MontaLinhaOutrosPagamentos;
      Inc(Cont);
      SQLPagamento.Next;
    end;
  CloseFile(Arquivo);
  GeraFinalizador(EditDiretorio.Text + '\OutrosPagamentos.txt');
  SQLPagamento.Close;
end;
procedure TFormTelaExportacaoDadosDominio.GeraTxtMovBanco;
var
  Arquivo : TextFile;
  Linha : String;
function MontaLinhaMovBanco : String;
  var
    Str : String;
  begin
    Posicao := 'Mov Banco';
    Str := '';
    Str := '02'; // Tipo
    Str := STR + Preenche(IntToStr(Cont),'0',7,0); // Sequencial
    Str := STR + FormatDateTime('dd/mm/yyyy',SQLMovBancarioMVBCDLANC.AsDateTime); // Data Lancamento
    if SQLMovBancarioMVBCN2VLRDEB.AsFloat > 0 then
      Str := STR + ConverteValorParaStringSemPontoSemVirgula(SQLMovBancarioMVBCN2VLRDEB.AsFloat,15,2) // Valor Lancamento
    else
      Str := STR + ConverteValorParaStringSemPontoSemVirgula(SQLMovBancarioMVBCN2VLRCRED.AsFloat,15,2);

    Str := STR + Preenche(SQLMovBancarioPLCTICODREDUZ.AsString,'0',7,0); // Cod. Conta Debito
    Str := STR + Preenche(SQLMovBancarioCTCRA30CODCONTABIL.AsString,'0',7,0); // Cod. Conta Credito ContaCorrente

    Historico := SQLMovBancarioOPBCA60DESCR.AsString;

    Str := STR + Preenche(Historico,' ',512,2); // Historico

    Str := STR + '12'; // Origem
    Str := PreencheValor(STR,' ',30,2);
    MontaLinhaMovBanco := Str;
  end;
begin
  SQLMovBancario.Close;
  SQLMovBancario.MacroByName('MFiltro').AsString := ' ((MOVIMENTOBANCO.PLCTA15COD IS NOT NULL) and MOVIMENTOBANCO.CTRCA13ID IS NULL and MOVIMENTOBANCO.CTPGA13ID IS NULL and MOVIMENTOBANCO.CQEMA13ID IS NULL)' +
                                                    ' and MOVIMENTOBANCO.MVBCDLANC >= "' + FormatDateTime('mm/dd/yyyy',De.Date) + '"' +
                                                    ' and MOVIMENTOBANCO.MVBCDLANC <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';
  SQLMovBancario.Open;
  AssignFile(Arquivo,EditDiretorio.Text + '\MovimentoBancario.txt');
  Rewrite(Arquivo);
  Reset(Arquivo);
  Linha := GeraCabecalhoArquivo('01');
  Append(Arquivo);
  Writeln(Arquivo,Linha);
  while not SQLMovBancario.Eof do
    begin
     Append(Arquivo);
     Linha := MontaLinhaMovBanco;
     Writeln(Arquivo,Linha);
     Inc(Cont);
     SQLMovBancario.Next;
    end;
  CloseFile(Arquivo);
  GeraFinalizador(EditDiretorio.Text + '\MovimentoBancario.txt');
  SQLMovBancario.Close;
end;

procedure TFormTelaExportacaoDadosDominio.BtnAssociarClick(
  Sender: TObject);
var
  I : Integer;
begin
  inherited;
  SQLOperacaoEstoque.Open;
  // CUPOM
  SQLCupom.Open;
  SQLCupom.Last;
  SQLCupom.First;
  I := 0;
  if not SQLCupom.IsEmpty then
    begin
      MakeWindow(SQLCupom.RecordCount,'Associando Acumuladores ao CUPOM!');
      while not SQLCupom.Eof do
        begin
          if SQLOperacaoEstoque.Locate('OPESICOD',SQLCupom.FieldByName('OPESICOD').AsString,[]) then
            begin
              SQLCupom.Edit;
              if SQLOperacaoEstoque.FieldByName('OPESICOD').AsString <> '' then
                SQLCupom.FieldByName('OPESICOD').AsString := SQLOperacaoEstoque.FieldByName('OPESICOD').AsString;
              if SQLOperacaoEstoque.FieldByName('PLCTA15CODCRED').AsString <> '' then
                SQLCupom.FieldByName('PLCTA15CODCRED').AsString := SQLOperacaoEstoque.FieldByName('PLCTA15CODCRED').AsString;
              if SQLOperacaoEstoque.FieldByName('PLCTA15CODDEB').AsString <> '' then
                SQLCupom.FieldByName('PLCTA15CODDEB').AsString := SQLOperacaoEstoque.FieldByName('PLCTA15CODDEB').AsString;
              SQLCupom.Post;
            end;
          SQLCupom.Next;
          Inc(I);
          SetProgress(I);
          Application.ProcessMessages;
        end;
      DestroyWindow;
    end;
  // NOTA FISCAL SAIDA
  SQLSaida.Open;
  SQLSaida.Last;
  SQLSaida.First;
  I := 0;
  if not SQLSaida.IsEmpty then
    begin
      MakeWindow(SQLSaida.RecordCount,'Associando Acumuladores a NOTA FISCAL DE SAIDA!');
      while not SQLSaida.Eof do
        begin
          if SQLOperacaoEstoque.Locate('OPESICOD',SQLSaida.FieldByName('OPESICOD').AsString,[]) then
            begin
              SQLSaida.Edit;
              if SQLOperacaoEstoque.FieldByName('OPESICOD').AsString <> '' then
                SQLSaida.FieldByName('OPESICOD').AsString := SQLOperacaoEstoque.FieldByName('OPESICOD').AsString;
              if SQLOperacaoEstoque.FieldByName('PLCTA15CODCRED').AsString <> '' then
                SQLSaida.FieldByName('PLCTA15CODCRED').AsString := SQLOperacaoEstoque.FieldByName('PLCTA15CODCRED').AsString;
              if SQLOperacaoEstoque.FieldByName('PLCTA15CODDEB').AsString <> '' then
                SQLSaida.FieldByName('PLCTA15CODDEB').AsString := SQLOperacaoEstoque.FieldByName('PLCTA15CODDEB').AsString;
              SQLSaida.Post;
            end;
          SQLSaida.Next;
          Inc(I);
          SetProgress(I);
          Application.ProcessMessages;
        end;
      DestroyWindow;
    end;
  // NOTA FISCAL ENTRADA
  SQLEntrada.Open;
  SQLEntrada.Last;
  SQLEntrada.First;
  I := 0;
  if not SQLEntrada.IsEmpty then
    begin
      MakeWindow(SQLEntrada.RecordCount,'Associando Acumuladores a NOTA FISCAL DE ENTRADA!');
      while not SQLEntrada.Eof do
        begin
          if SQLOperacaoEstoque.Locate('OPESICOD',SQLEntrada.FieldByName('OPESICOD').AsString,[]) then
            begin
              SQLEntrada.Edit;
              if SQLOperacaoEstoque.FieldByName('OPESICOD').AsString <> '' then
                SQLEntrada.FieldByName('OPESICOD').AsString := SQLOperacaoEstoque.FieldByName('OPESICOD').AsString;
              if SQLOperacaoEstoque.FieldByName('PLCTA15CODCRED').AsString <> '' then
                SQLEntrada.FieldByName('PLCTA15CODCRED').AsString := SQLOperacaoEstoque.FieldByName('PLCTA15CODCRED').AsString;
              if SQLOperacaoEstoque.FieldByName('PLCTA15CODDEB').AsString <> '' then
                SQLEntrada.FieldByName('PLCTA15CODDEB').AsString := SQLOperacaoEstoque.FieldByName('PLCTA15CODDEB').AsString;
              SQLEntrada.Post;
            end;
          SQLEntrada.Next;
          Inc(I);
          SetProgress(I);
          Application.ProcessMessages;
        end;
      DestroyWindow;
    end;
  Informa('Rotina Finalizada Com Sucesso!');
end;
function TFormTelaExportacaoDadosDominio.GeraCabecalhoArquivo(Tipo:String): String;
var
Str : String;
begin
  Dm.SQLEmpresa.Locate('EMPRICOD',EmpresaPadrao,[]);
  Str := '';
  Str := '01';
  Str := STR + Format('%.7d',[EmpresaCorrente]); // Empresa
  Str := STR + Preenche(DM.SQLEmpresa.FieldByName('EMPRA14CGC').AsString, ' ', 14,2); // CGC;
  Str := STR + FormatDateTime('dd/mm/yyyy',De.Date); // Data Incial
  Str := STR + FormatDateTime('dd/mm/yyyy',Ate.Date); // Data Final
  Str := STR + 'N';
  Str := STR + Tipo;
  Str := STR + '00000';
  Str := STR + '1';
  Str := STR + '1';
  GeraCabecalhoArquivo := Str;
end;
procedure TFormTelaExportacaoDadosDominio.GeraFinalizador(ArquivoTexto:String);
Var
  Arq : TextFile;
  Str : String;
begin
  AssignFile(Arq,ArquivoTexto);
  Append(Arq);
  STR := PreencheValor(STR,'9',100,2);
  Writeln(Arq,STR);
  CloseFile(Arq);
end;
procedure TFormTelaExportacaoDadosDominio.BtnClienteClick(
  Sender: TObject);
begin
  inherited;
  BtnCliente.Enabled := False;
  RichLOG.Lines.Clear;
  if FileClientes.FileName <> '' then
    if not FileExists(FileClientes.FileName) then
      begin
        Informa('Arquivo de Clientes não encontrado!');
      end;
  // Importação de Clientes;
  AssignFile(Arquivo,FileClientes.FileName);
  Reset(Arquivo);
  SQLClienteCPF.Open;
  SQLClienteCGC.Open;
  Linhas := 0;
  TotLinhas := 0;
  while not EOF(Arquivo) do
    begin
      Readln(Arquivo,Linha);
      Inc(TotLinhas);
    end;

  Gauge.MinValue := 0;
  Gauge.Progress := 0;
  Gauge.MaxValue := TotLinhas;

  AssignFile(Arquivo,FileClientes.FileName);
  Reset(Arquivo);
  Linha := '';
  while not EOF(Arquivo) do
    begin
      Readln(Arquivo,Linha);
      inc(Linhas);
      GeraLog := False;
      if Length(Linha) <= 23 then
        begin
          TipoPessoa := Copy(Linha,1,1);

          if Length(Linha) = 23 then
            CGCCPF     := Copy(Linha,3,14)
          else
            CGCCPF     := Copy(Linha,3,11);

          if Length(Linha) = 23 then
            PlanoConta := Copy(Linha,18,6)
          else
            PlanoConta := Copy(Linha,15,6);

          if (Trim(TipoPessoa) <> '') and (Trim(CGCCPF) <> '') then
            begin
              case TipoPessoa[1] of
                'J':begin
                      SQLClienteCGC.Close;
                      SQLClienteCGC.ParamByName('CLIEA14CGC').AsString := CGCCPF;
                      SQLClienteCGC.Open;

                      if not SQLClienteCGC.IsEmpty then
                        begin
                          SQLClienteCGC.Edit;
                          SQLClienteCGCCLIEA30CODCONTABIL.AsString := IntToStr(StrToInt(PlanoConta));
                          SQLClienteCGC.Post;
                          inc(ImportadoCGC);
                        end
                      else
                        GeraLog := True;

                    end;
                'F':begin
                      SQLClienteCPF.Close;
                      SQLClienteCPF.ParamByName('CLIEA11CPF').AsString := CGCCPF;
                      SQLClienteCPF.Open;
                      if not SQLClienteCPF.IsEmpty then
                        begin
                          SQLClienteCPF.Edit;
                          SQLClienteCPFCLIEA30CODCONTABIL.AsString := IntToStr(StrToInt(PlanoConta));
                          SQLClienteCPF.Post;
                          inc(ImportadoCPF);
                        end
                      else
                        GeraLog := True;
                    end;
              end;
            end
          else
            GeraLog := True;
        end
      else
        GeraLog := True;
      if GeraLog then
        begin
          inc(Erros);
          RichLOG.Lines.Add('Linha não importada: ' + IntToStr(Linhas) +  ' TipoPessoa: ' + TipoPessoa + ' Documento: ' + CGCCPF + ' PlanoConta: ' +  PlanoConta);
        end;
      Gauge.Progress := Gauge.Progress + 1;
      Gauge.Update;
      Application.ProcessMessages;
    end;
  Gauge.MinValue := 0;
  Gauge.Progress := 0;
  Gauge.MaxValue := 0;
  Informa('Importação Concluída, verifique o LOG de importação!');
  RichLOG.Lines.Add('Total de Registros: ' + IntToStr(Linhas));
  RichLOG.Lines.Add('Clientes CGC Importados: ' + IntToStr(ImportadoCGC) + ' Clientes CPF Importados: ' + IntToStr(ImportadoCPF));
  RichLOG.Lines.Add('Total Importados: ' + IntToStr(ImportadoCGC + ImportadoCPF));
  RichLOG.Lines.Add('Erros: ' + IntToStr(Erros));
  BtnCliente.Enabled := True;
end;

procedure TFormTelaExportacaoDadosDominio.LabelImpressaoClick(
  Sender: TObject);
begin
  inherited;
  RichLOG.Print('LOG Integração Dominio');
end;

procedure TFormTelaExportacaoDadosDominio.FileSalvarAfterDialog(
  Sender: TObject; var Name: String; var Action: Boolean);
begin
  inherited;
  RichLOG.Lines.SaveToFile(FileSalvar.FileName);
end;

procedure TFormTelaExportacaoDadosDominio.BtnFornecedorClick(
  Sender: TObject);
begin
  inherited;
  BtnCliente.Enabled := False;
  RichLOG.Lines.Clear;
  if FileFornecedores.FileName <> '' then
    if not FileExists(FileFornecedores.FileName) then
      begin
        Informa('Arquivo de Fornecedores não encontrado!');
      end;

  // Importação de Clientes;
  AssignFile(Arquivo,FileFornecedores.FileName);
  Reset(Arquivo);
  SQLFornecedor.Open;
  Linhas := 0;
  TotLinhas := 0;
  while not EOF(Arquivo) do
    begin
      Readln(Arquivo,Linha);
      Inc(TotLinhas);
    end;

  Gauge.MinValue := 0;
  Gauge.Progress := 0;
  Gauge.MaxValue := TotLinhas;

  AssignFile(Arquivo,FileFornecedores.FileName);
  Reset(Arquivo);

  while not EOF(Arquivo) do
    begin
      Readln(Arquivo,Linha);
      inc(Linhas);
      GeraLog := False;
      if Length(Linha) <= 23 then
        begin
          TipoPessoa := Copy(Linha,1,1);

          if Length(Linha) = 23 then
            CGCCPF     := Copy(Linha,3,14)
          else
            CGCCPF     := Copy(Linha,3,11);

          if Length(Linha) = 23 then
            PlanoConta := Copy(Linha,18,6)
          else
            PlanoConta := Copy(Linha,15,6);

          case TipoPessoa[1] of
            'J':begin
                  SQLFornecedor.Close;
                  SQLFornecedor.MacroByName('MFiltro').AsString := ' FORNA14CGC = "' + CGCCPF + '"';
                  SQLFornecedor.Open;
                  if not SQLFornecedor.IsEmpty then
                    begin
                      SQLFornecedor.Edit;
                      SQLFornecedorFORNA30CODCONTABIL.AsString := IntToStr(StrToInt(PlanoConta));
                      SQLFornecedor.Post;
                      inc(ImportadoCGC);
                    end
                  else
                    GeraLog := True;
                end;
            'F':begin
                  SQLFornecedor.Close;
                  SQLFornecedor.MacroByName('MFiltro').AsString := ' FORNA11CPF = "' + CGCCPF + '"';
                  SQLFornecedor.Open;
                  if not SQLFornecedor.IsEmpty then
                    begin
                      SQLFornecedor.Edit;
                      SQLFornecedorFORNA30CODCONTABIL.AsString := IntToStr(StrToInt(PlanoConta));
                      SQLFornecedor.Post;
                      inc(ImportadoCPF);
                    end
                  else
                    GeraLog := True;
                end;
          end;
        end
      else
        GeraLog := True;
      if GeraLog then
        begin
          inc(Erros);
          RichLOG.Lines.Add('Linha não importada: ' + IntToStr(Linhas) +  ' TipoPessoa: ' + TipoPessoa + ' Documento: ' + CGCCPF + ' PlanoConta: ' +  PlanoConta);
        end;
      Gauge.Progress := Gauge.Progress + 1;
      Gauge.Update;
      Application.ProcessMessages;
    end;
  Gauge.MinValue := 0;
  Gauge.Progress := 0;
  Gauge.MaxValue := 0;
  Informa('Importação Concluída, verifique o LOG de importação!');
  RichLOG.Lines.Add('Total de Registros: ' + IntToStr(Linhas));
  RichLOG.Lines.Add('Fornecedores CGC Importados: ' + IntToStr(ImportadoCGC) + ' Fornecedores CPF Importados: ' + IntToStr(ImportadoCPF));
  RichLOG.Lines.Add('Total Importados: ' + IntToStr(ImportadoCGC + ImportadoCPF));
  RichLOG.Lines.Add('Erros: ' + IntToStr(Erros));
  BtnCliente.Enabled := False;
end;

procedure TFormTelaExportacaoDadosDominio.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLPlanoContas.Active then SQLPlanoContas.Open;
end;

function TFormTelaExportacaoDadosDominio.MontaLinhaProduto4 : String;
var
 Str,ValorAux : String;
begin
  Str := '4';
  Str := str + PreencheValor(SQLProdutosPRODICOD.AsString,'0',14,0);            // 2-15 cd Produto
  Str := str + PreencheValor(EditCodEmpresa.Text,'0',7,0);                      // 16-22 cod Empresa
  Str := str + PreencheValor('7','0',7,0);                                       // 23-29 cod Grupo (Tipo de produto 7=merc revenda)
  Str := str + PreencheValor('','',10,0);                                       // 30-39 cod NBM
  Str := str + PreencheValor(SQLProdutosPRODA30ADESCRREDUZ.AsString,'',40,2);   // 40-79 Descricao Produto
  Str := str + PreencheValor(SQLProdutosUNIDA5DESCR.AsString,'',6,2);           // 80-85 Unidade

  // Valor do Produto
  ValorAux := FormatFloat('##0.00',SQLProdutosPRODN3VLRVENDA.AsFloat);
  while Pos('.',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos('.',ValorAux),1);
    end;
  while Pos(',',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos(',',ValorAux),1);
    end;
  Str := str + PreencheValor(ValorAux,'0',13,0);          // 86-98 Valor do Lancamento

  // Zeros
  Str := str + PreencheValor('','0',11,2); // 99-109  Qtde Inicial
  Str := str + PreencheValor('','0',11,2); // 110-120 Qtde Final
  Str := str + PreencheValor('','0',13,2); // 121-133 Vlr Inicial Estoque
  Str := str + PreencheValor('','0',13,2); // 134-146 Vlr Final Estoque

  // IPI
  ValorAux := FormatFloat('##0.00',SQLProdutosPRODN3PERCIPI.AsFloat);
  while Pos('.',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos('.',ValorAux),1);
    end;
  while Pos(',',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos(',',ValorAux),1);
    end;
  Str := str + PreencheValor(ValorAux,'0',5,0); // 147-151 Valor do IPI

  Str := str + PreencheValor('','',40,2);         // 152-191 OBS;

  // 192-199 Cod NCM
  if SQLProdutosNCMICOD.Value > 0 then
    Str := str + PreencheValor(SQLLocate('NCM','NCMICOD','NCMA30CODIGO',SQLProdutosNCMICOD.AsString),'',8,2)
  else
    Str := str + PreencheValor('','',8,2);

  Str := str + PreencheValor('','0',7,2); // Espécie para DNF
  Str := str + PreencheValor('','0',7,2); // Unidade para DNF

  Str := str + PreencheValor('','0',14,2); // Fator de Conversão para DNF
  Str := str + PreencheValor('','',1,2);  // Exporta Para DNF;
  Str := str + PreencheValor(SQLProdutosPRODISITTRIB.AsString,'',7,0); // Situação Tributária
  Str := str + PreencheValor('','',17,2); // branco;
  Str := str + PreencheValor('','',1,2);  // branco;
  Str := str + PreencheValor(SQLProdutosPRODA60CODBAR.AsString,'',14,2); // Cod Barras.
  Str := str + PreencheValor('','0',7,2);  // Cod. Produto Relevante
  Str := str + PreencheValor(FormatDateTime('dd/mm/yyyy',now),'',10,2); // Data do Saldo Final
  Str := str + PreencheValor('','0',7,2);  // Codigo PRoduto conforme Anexo I e II
  Str := str + PreencheValor('','0',7,2);  // Capacidade Volumétrica 292 298 7 Numérico Somente para a DNF (ml)
  Str := str + PreencheValor('','N',1,2);  // Incentivo Fiscal
  Str := str + PreencheValor('','N',1,2);  // Gera informações para 300 300 1 Caractere Informar S ou No GRF-CBT
  Str := str + PreencheValor('','0',7,2);  // Codigo PRoduto Somente para a GRF-CBT
  Str := str + PreencheValor('','N',1,2);  // Gera informações para 308 308 1 Caractere Informar S ou NSCANC
  Str := str + PreencheValor('','0',7,2);  // Codigo PRoduto Somente para SCANC
  Str := str + PreencheValor('','N',1,2);  // Este produto contém 316 316 1 Caractere Somente para o SCANC. Informar S ou N Gasolina A
  Str := str + PreencheValor(SQLProdutosUNIDA5DESCR.AsString,'',2,2); // Unidade
  Str := str + PreencheValor('','1',1,2);  // 1 = produto, 2 = Serv com incidencia de icms, 3 = Serv sem incidencia de icms.
  Str := str + PreencheValor('','N',1,2);  // Gera informações 320 320 1 Caractere Informar S ou N Registro 88ST Sintegra
  Str := str + PreencheValor('','0',7,2);  // Código do produto na 321 327 7 Numérico Somente para o 88ST Sintegra tabela SEFAZ

  // ICM Aliq
  ValorAux := SQLLocate('ICMS','ICMSICOD','ICMSN2ALIQUOTA',SQLProdutosICMSICOD.AsString);
  while Pos('.',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos('.',ValorAux),1);
    end;
  while Pos(',',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos(',',ValorAux),1);
    end;
  Str := str + PreencheValor(ValorAux,'0',5,0); // Preenche Aliq Icms

  Str := str + PreencheValor('O','',1,0);       // 333 Tipo Produto V=Veículos Novos, M=Medicamentos, A=Armas de Fogo, O=Outros

  Str := str + PreencheValor('','',1,0);        // 334 Tipo Arma 0 = Permitido, 1 = Restrito
  Str := str + PreencheValor('','',255,2);      // 335 Descricao da Arma
  Str := str + PreencheValor('','',7,2);        // Genero
  Str := str + PreencheValor('','',7,2);        // Código serviço
  Str := str + PreencheValor('','',7,2);        // Classificacao
  Str := str + PreencheValor(SQLProdutosPRODA2TIPOITEM.AsString,'',2,2); // 611 Tipo SPED
  Str := str + PreencheValor('','',2,2);        // 613 ncm exterior
  Str := str + PreencheValor('','',2,2);        // 615 codigo imposto importacao
  Str := str + PreencheValor('','N',1,2);       // 617 Produto composto
  Str := str + PreencheValor('','N',1,2);        // 618 Informações Apenas para o Estado de GO. Informar S ou complementares do NIPM da PDI
  Str := str + PreencheValor('','',2,2);        // 619 Código produto/serviço Apenas para o Estado de GO do IPM da DPI
  Str := str + PreencheValor('','N',1,2);        // 621 Cesta Básica
  Str := str + PreencheValor('','',7,2);        // 622 Código do produto DAM
  Str := str + PreencheValor(SQLProdutosPRODA60CODBAR.AsString,'',16,2); // 629 Cd Barras
  Str := str + PreencheValor('','',1,2);        // 645 tipo medicamento
  Str := str + PreencheValor('','N',1,2);       // 646 Produto incluído no campo Subst Tributaria
  Str := str + PreencheValor('','',10,2);       // 647 data inicio Subst Tributaria
  Str := str + PreencheValor('','N',1,2);       // 657 Produto com preco tabelado
  Str := str + PreencheValor('','',13,2);       // 658 valor unitario da Subst tributaria
  Str := str + PreencheValor('','',7,2);        // 671 MVA da Subst tributaria
  Str := str + PreencheValor('','',1,2);        // 678 Grupo da Subst tributaria
  Str := str + PreencheValor('','',1,2);        // 679 Equip ECF
  Str := str + PreencheValor('','N',1,2);       // 680 Servico Tribut pelo ISSQN
  Str := str + PreencheValor('','',3,2);        // 681 Ext IPI
  Str := str + PreencheValor('','M',1,2);       // 684 Periodicidade do IPI (M=Mensal D=Decendial)
  Str := str + PreencheValor('','',7,2);        // 685 Classif dos itens somente para energia e telecomunicacao
  Str := str + PreencheValor('','',16,2);       // 692 Quantidade Inicial
  Str := str + PreencheValor('','',16,2);       // 708 Quantidade Final
  Str := str + PreencheValor('','',7,2);        // 724 Conta contábil do informante em seu poder)
  Str := str + PreencheValor('','',7,2);        // 731 Conta contábil do informante em posse de informante em posse terceiros)
  Str := str + PreencheValor('','',7,2);        // 738 Conta contábil De terceiros em posse do terceiros em posse do informante)
  Str := str + PreencheValor('','N',1,2);       // 745 Unidade inventariada  1 Caractere Informar S ou N Diferente da comercializada
  Str := str + PreencheValor('','',46,2);       // 746-791 Reservado(Brancos)

  MontaLinhaProduto4 := STR;
end;

function TFormTelaExportacaoDadosDominio.MontaLinhaProduto5 : string;
var
 Str,ValorAux : String;
begin
  // Prefixo = 5 => Vigencia
  Str := '5';
  Str := str + PreencheValor('Vigencia','',80,2);    // 2-81 Descricao Vigencia
  Str := str + PreencheValor(SQLProdutosPRODA3CSTCOFINSENTRADA.AsString,'',2,2); // 82-83 CST - Entradas
  Str := str + PreencheValor('','',2,2);             // 84-85 Vínculo do Crédito
  Str := str + PreencheValor('','',2,2);             // 86-87 Base do Crédito
  Str := str + PreencheValor('S','',1,2);            // 88 Aproveitar Credito proporcional somente a receita não cumulativa
  Str := str + PreencheValor('S','',1,2);            // 89 Credito por aliq diferenciada

  ValorAux := FormatFloat('##0.00',SQLProdutosPRODN2ALIQPIS.Value);
  while Pos('.',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos('.',ValorAux),1);
    end;
  while Pos(',',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos(',',ValorAux),1);
    end;
  Str := str + PreencheValor(ValorAux,'0',5,0);       // 90-94 - Aliq Pis

  ValorAux := FormatFloat('##0.00',SQLProdutosPRODN2ALIQCOFINS.Value);
  while Pos('.',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos('.',ValorAux),1);
    end;
  while Pos(',',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos(',',ValorAux),1);
    end;
  Str := str + PreencheValor(ValorAux,'0',5,0);    // 95-99 - Aliq Cofins

  Str := str + PreencheValor('S','',1,2);                                     // 100 Credito por aliq diferenciada
  Str := str + PreencheValor('N','',1,2);                                     // 101 Unidade Tributada diferente da inventariada - Entradas
  Str := str + PreencheValor(SQLLocate('unidade','unidicod','UNIDA5DESCR',SQLProdutosUNIDICOD.AsString),'',6,2); // 102-107 - Unidade tributável Entradas

  ValorAux := FormatFloat('##0.000',SQLProdutosPRODN3CAPACEMBAL.Value);
  while Pos('.',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos('.',ValorAux),1);
    end;
  while Pos(',',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos(',',ValorAux),1);
    end;
  Str := str + PreencheValor(ValorAux,'0',15,0);   // 108-122 - Fator Conversao Entradas
  Str := str + PreencheValor('','0',13,2);                                    // 123-135 Valor do Pis Entrada
  Str := str + PreencheValor('','0',13,2);                                    // 136-148 Valor do Cofins Entrada
  Str := str + PreencheValor(SQLProdutosPRODA2CSTCOFINS.AsString,'',2,2);     // 149-151 - CST SAIDAS
  Str := str + PreencheValor('','N',1,2);           // 151 - Tipo Contribuicao Informar: N=Não cumulativo, C=Cumulativo ou S=Sem incidência
  Str := str + PreencheValor('','',4,2);            // 152-155 - Natureza da Receita
  Str := str + PreencheValor('','',6,2);            // 156-161 - Cod Recolhimento PIS
  Str := str + PreencheValor('','',6,2);            // 162-167 - Cod Recolhimento cofins
  Str := str + PreencheValor('','N',1,2);           // 168 - Debitos por aliq diferenciada - SAIDAS

  ValorAux := FormatFloat('##0.00',SQLProdutosPRODN2ALIQPIS.Value);
  while Pos('.',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos('.',ValorAux),1);
    end;
  while Pos(',',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos(',',ValorAux),1);
    end;
  Str := str + PreencheValor(ValorAux,'0',5,0);      // 169-173 - Aliq PIS Saida

  ValorAux := FormatFloat('##0.00',SQLProdutosPRODN2ALIQCOFINS.Value);
  while Pos('.',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos('.',ValorAux),1);
    end;
  while Pos(',',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos(',',ValorAux),1);
    end;
  Str := str + PreencheValor(ValorAux,'0',5,0);     // 174-178 - Aliq Cofins Saida
  Str := str + PreencheValor('','N',1,2);           // 179 - Debitos por unidade de medida - SAIDAS
  Str := str + PreencheValor('','N',1,2);           // 180 - Unidade Tributada diferente da inventariada - SAIDAS
  Str := str + PreencheValor(SQLLocate('unidade','unidicod','UNIDA5DESCR',SQLProdutosUNIDICOD.AsString),'',6,2); // 181-186 - Unidade tributável Saidas
  Str := str + PreencheValor('1','0',15,2);         // 187-201 - Fator Conversao estoque - SAIDAS
  Str := str + PreencheValor('','0',13,2);          // 202-214 Valor do Pis Saidas
  Str := str + PreencheValor('','0',13,2);          // 215-227 Valor do Cofins Saidas
  Str := str + PreencheValor('','',3,2);            // 228-230 Tabela SPED
  Str := str + PreencheValor('','',4,2);            // 231-234 Tabela Marca/Grupo SPED
  Str := str + PreencheValor('','',16,2);           // 235-250 Reservado (brancos)

  MontaLinhaProduto5 := str;
end;

end.
