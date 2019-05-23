unit TelaExportacaoBrasilMobile;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, StdCtrls, Mask, ToolEdit, Buttons, jpeg,
  ExtCtrls, Gauges, DB, DBTables, RxQuery, RxLookup, ComCtrls, DateUtils,
  RXDBCtrl, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaExportaBrasilMobile = class(TFormTelaGeralTEMPLATE)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    CheckProdutos: TCheckBox;
    CheckClientes: TCheckBox;
    CheckNotaSaida: TCheckBox;
    CheckNotaEntrada: TCheckBox;
    CheckRotas: TCheckBox;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    InlcuirRota: TSpeedButton;
    ExcluirRota: TSpeedButton;
    ComboRota: TRxDBLookupCombo;
    ListaRotas: TListBox;
    DSSQLRota: TDataSource;
    SQLRota: TRxQuery;
    SQLRotaROTAICOD: TIntegerField;
    SQLRotaROTAA60NOME: TStringField;
    GroupBox2: TGroupBox;
    EditDiretorio: TDirectoryEdit;
    Label1: TLabel;
    BtExecutar: TSpeedButton;
    Bevel1: TBevel;
    Label8: TLabel;
    Label11: TLabel;
    EditTabela: TEdit;
    Label3: TLabel;
    EditHoraInicio: TEdit;
    Label2: TLabel;
    EditHoraTermino: TEdit;
    RadioTipoExportacao: TRadioGroup;
    CheckTitulos: TCheckBox;
    SQLRotaExp: TRxQuery;
    SQLRotaExpROTAICOD: TIntegerField;
    SQLRotaExpROTAA60NOME: TStringField;
    SQLCliente: TRxQuery;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA30CODESTRUT: TStringField;
    SQLProdutoPRODA60CODBAR: TStringField;
    SQLProdutoPRODA15CODANT: TStringField;
    SQLProdutoPRODIAGRUPGRADE: TIntegerField;
    SQLProdutoPRODA60REFER: TStringField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoPRODA30ADESCRREDUZ: TStringField;
    SQLProdutoPRODA255DESCRTEC: TStringField;
    SQLProdutoPRODICODBALANCA: TIntegerField;
    SQLProdutoPRODA15APAVIM: TStringField;
    SQLProdutoPRODA15RUA: TStringField;
    SQLProdutoPRODA15PRATEL: TStringField;
    SQLProdutoCLFSICOD: TIntegerField;
    SQLProdutoMARCICOD: TIntegerField;
    SQLProdutoUNIDICOD: TIntegerField;
    SQLProdutoGRADICOD: TIntegerField;
    SQLProdutoGRTMICOD: TIntegerField;
    SQLProdutoGRUPICOD: TIntegerField;
    SQLProdutoSUBGICOD: TIntegerField;
    SQLProdutoVARIICOD: TIntegerField;
    SQLProdutoICMSICOD: TIntegerField;
    SQLProdutoPRODN3PESOBRUTO: TBCDField;
    SQLProdutoPRODN3PESOLIQ: TBCDField;
    SQLProdutoPRODN3CAPACEMBAL: TBCDField;
    SQLProdutoPRODDCAD: TDateTimeField;
    SQLProdutoPRODDULTALTER: TDateTimeField;
    SQLProdutoPRODN3VLRVENDA: TBCDField;
    SQLProdutoPRODN3VLRVENDAPROM: TBCDField;
    SQLProdutoPRODDINIPROMO: TDateTimeField;
    SQLProdutoPRODDFIMPROMO: TDateTimeField;
    SQLProdutoPRODN3VLRCOMPRA: TBCDField;
    SQLProdutoPRODN3VLRCUSTO: TBCDField;
    SQLProdutoPRODN3VLRCUSTOMED: TBCDField;
    SQLProdutoPRODN3PERCIPI: TBCDField;
    SQLProdutoPRODN3PERCMARGLUCR: TBCDField;
    SQLProdutoPRODCATIVO: TStringField;
    SQLProdutoPRODCSERVICO: TStringField;
    SQLProdutoPRODCGERACOMIS: TStringField;
    SQLProdutoPRODN2COMISVISTA: TBCDField;
    SQLProdutoPRODN2COMISPRAZO: TBCDField;
    SQLProdutoPRODDIMOBOLIZ: TDateTimeField;
    SQLProdutoPRODICODPAI: TIntegerField;
    SQLProdutoPRODCTIPOBAIXA: TStringField;
    SQLProdutoPRODN3QTDEBAIXA: TBCDField;
    SQLProdutoCORICOD: TIntegerField;
    SQLProdutoPRODIORIGEM: TIntegerField;
    SQLProdutoPENDENTE: TStringField;
    SQLProdutoREGISTRO: TDateTimeField;
    SQLProdutoPRODDULTATUALIZ: TDateTimeField;
    SQLProdutoPRODA60DIMENSAO: TStringField;
    SQLProdutoPRODISITTRIB: TIntegerField;
    SQLProdutoPRODITIPOPRODBALAN: TStringField;
    SQLProdutoPRODICODETIQBAL: TIntegerField;
    SQLProdutoPRODIDIASVALIDADE: TIntegerField;
    SQLProdutoPRODN3VLRCOMPRAMED: TBCDField;
    SQLProdutoPRODN3DOLARCUSTO: TBCDField;
    SQLProdutoPRODN3DOLARCOMPRA: TBCDField;
    SQLProdutoPRODN3DOLARVENDA: TBCDField;
    SQLProdutoPRODBIMAGEM: TBlobField;
    SQLProdutoPRODCSUBSTRIB: TStringField;
    SQLProdutoPRODCTEMNROSERIE: TStringField;
    CheckVendedores: TCheckBox;
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
    CheckGrupos: TCheckBox;
    SQLGrupo: TRxQuery;
    SQLGrupoGRUPICOD: TIntegerField;
    SQLGrupoGRUPA60DESCR: TStringField;
    SQLGrupoPENDENTE: TStringField;
    SQLGrupoREGISTRO: TDateTimeField;
    CheckPoliticaVendas: TCheckBox;
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
    SQLPlanoRecebimentoPLRCN2PERCACRESC: TBCDField;
    SQLPlanoRecebimentoPLRCCIMPDESCRNF: TStringField;
    SQLPlanoRecebimentoPLRCN5FATOR: TBCDField;
    SQLPlanoRecebimentoPLRCN5FATORPARC: TBCDField;
    CheckPrecos: TCheckBox;
    GroupBoxMensagem: TGroupBox;
    MemoMensagem: TMemo;
    Label4: TLabel;
    Label7: TLabel;
    EditAssunto: TEdit;
    SQLNFVenda: TRxQuery;
    SQLNFVendaNOFIA13ID: TStringField;
    SQLNFVendaEMPRICOD: TIntegerField;
    SQLNFVendaNOFIICOD: TIntegerField;
    SQLNFVendaEMPRICODDEST: TIntegerField;
    SQLNFVendaCLIEA13ID: TStringField;
    SQLNFVendaFORNICOD: TIntegerField;
    SQLNFVendaSERIA5COD: TStringField;
    SQLNFVendaNOFIINUMERO: TIntegerField;
    SQLNFVendaNOFICSTATUS: TStringField;
    SQLNFVendaNOFIDEMIS: TDateTimeField;
    SQLNFVendaCFOPA5COD: TStringField;
    SQLNFVendaOPESICOD: TIntegerField;
    SQLNFVendaNOFIN2BASCALCICMS: TBCDField;
    SQLNFVendaNOFIN2VLRICMS: TBCDField;
    SQLNFVendaNOFIN2BASCALCSUBS: TBCDField;
    SQLNFVendaNOFIN2BASCALCCIPI: TBCDField;
    SQLNFVendaNOFIN2VLRIPI: TBCDField;
    SQLNFVendaNOFIN2VLRDESC: TBCDField;
    SQLNFVendaNOFIN2VLRFRETE: TBCDField;
    SQLNFVendaNOFIN2VLRSEGURO: TBCDField;
    SQLNFVendaNOFIN2VLROUTRASDESP: TBCDField;
    SQLNFVendaNOFIN2VLRSERVICO: TBCDField;
    SQLNFVendaNOFIN2VLRISSQN: TBCDField;
    SQLNFVendaNOFIN2VLRPRODUTO: TBCDField;
    SQLNFVendaNOFIN2VLRNOTA: TBCDField;
    SQLNFVendaNOFICFRETEPORCONTA: TStringField;
    SQLNFVendaTRANICOD: TIntegerField;
    SQLNFVendaNOFIN3QUANT: TBCDField;
    SQLNFVendaNOFIA15MARCA: TStringField;
    SQLNFVendaNOFIN3PESBRUT: TBCDField;
    SQLNFVendaNOFIN3PESLIQ: TBCDField;
    SQLNFVendaNOFIA8PLACAVEIC: TStringField;
    SQLNFVendaPLRCICOD: TIntegerField;
    SQLNFVendaPLCTA15COD: TStringField;
    SQLNFVendaPENDENTE: TStringField;
    SQLNFVendaREGISTRO: TDateTimeField;
    SQLNFVendaNOFIN2VLRDESCPROM: TBCDField;
    SQLNFVendaNOFIINROTALAO: TIntegerField;
    SQLNFVendaPDVDA13ID: TStringField;
    SQLNFVendaVENDICOD: TIntegerField;
    SQLNFVendaPDVDA60OBS: TStringField;
    SQLNFVendaNOFIA20ESPECIE: TStringField;
    SQLNFVendaNOFIA30COMPRADOR: TStringField;
    SQLNFVendaNOFIA30NROPEDCOMP: TStringField;
    SQLNFVendaNOFIN2VLRICMSFRETE: TBCDField;
    SQLNFVendaNOFIN2VLRSUBS: TBCDField;
    SQLNFVendaCUPOA13ID: TStringField;
    SQLNFVendaNOFIA13IDCONSIGNADA: TStringField;
    SQLNFVendaAVALA13ID: TStringField;
    SQLNFVendaCUPOA13IDCUPNEG: TStringField;
    SQLNFVendaNOFIDCANCEL: TDateTimeField;
    SQLNFVendaPLCTA15CODCRED: TStringField;
    SQLNFVendaPLCTA15CODDEB: TStringField;
    SQLNFVendaUSUAICOD: TIntegerField;
    SQLNFVendaUSUAA60LOGIN: TStringField;
    SQLNFVendaROTAICOD: TIntegerField;
    CheckMensagens: TCheckBox;
    DSNFVenda: TDataSource;
    SQLNFVendaItem: TRxQuery;
    SQLNFVendaItemNOFIA13ID: TStringField;
    SQLNFVendaItemNFITIITEM: TIntegerField;
    SQLNFVendaItemPRODICOD: TIntegerField;
    SQLNFVendaItemNFITN3QUANT: TBCDField;
    SQLNFVendaItemNFITN2VLRUNIT: TBCDField;
    SQLNFVendaItemNFITN2PERCDESC: TBCDField;
    SQLNFVendaItemNFITN2VLRDESC: TBCDField;
    SQLNFVendaItemNFITN2PERCICMS: TBCDField;
    SQLNFVendaItemNFITN2BASEICMS: TBCDField;
    SQLNFVendaItemNFITN2VLRICMS: TBCDField;
    SQLNFVendaItemNFITN2PERCSUBS: TBCDField;
    SQLNFVendaItemNFITN2BASESUBS: TBCDField;
    SQLNFVendaItemNFITN2VLRSUBS: TBCDField;
    SQLNFVendaItemNFITN2PERCIPI: TBCDField;
    SQLNFVendaItemNFITN2VLRIPI: TBCDField;
    SQLNFVendaItemNFITN2PERCISSQN: TBCDField;
    SQLNFVendaItemNFITN2VLRISSQN: TBCDField;
    SQLNFVendaItemNFITN2VLRFRETE: TBCDField;
    SQLNFVendaItemNFITN2VLRLUCRO: TBCDField;
    SQLNFVendaItemPENDENTE: TStringField;
    SQLNFVendaItemREGISTRO: TDateTimeField;
    SQLNFVendaItemNFITN2PERCREDUCAO: TBCDField;
    SQLNFVendaItemNFITN3TOTVEND: TBCDField;
    SQLNFVendaItemPDVDA13ID: TStringField;
    SQLNFVendaItemPVITIITEM: TIntegerField;
    SQLNFVendaItemNFITN3QUANTVEND: TBCDField;
    SQLNFVendaItemNFITN2PERCCOMIS: TBCDField;
    SQLNFVendaItemCPITICPOS: TIntegerField;
    SQLNFVendaItemCUPOA13ID: TStringField;
    SQLNFVendaItemLOTEA30NRO: TStringField;
    SQLNFVendaItemNFITA254OBS: TStringField;
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
    SQLContasReceberCTRCCTEMREGRECEBER: TStringField;
    SQLContasReceberCOBRA13ID: TStringField;
    SQLContasReceberCTRCDENVIOCOBRANCA: TDateTimeField;
    SQLContasReceberCTRCA254HIST: TStringField;
    SQLContasReceberDUPLA13ID: TStringField;
    SQLContasReceberAVALA13ID: TStringField;
    SQLContasReceberCTRCCTIPOREGISTRO: TStringField;
    SQLContasReceberHTPDICOD: TIntegerField;
    SQLContasReceberPLCTA15CODDEBITO: TStringField;
    SQLContasReceberCONTA13ID: TStringField;
    SQLTransportadores: TRxQuery;
    Label9: TLabel;
    ComboVendedor: TRxDBLookupCombo;
    DSSQLVendedor: TDataSource;
    SQLContasReceberNOFIINUMERO: TIntegerField;
    SQLContasReceberTPDCA60DESCR: TStringField;
    CheckTransportes: TCheckBox;
    SQLTransportadoresTRANICOD: TIntegerField;
    SQLTransportadoresTRANA60RAZAOSOC: TStringField;
    SQLTransportadoresTRANA60NOMEFANT: TStringField;
    SQLTransportadoresTRANA60END: TStringField;
    SQLTransportadoresTRANA60BAI: TStringField;
    SQLTransportadoresTRANA60CID: TStringField;
    SQLTransportadoresTRANA8CEP: TStringField;
    SQLTransportadoresTRANA2UF: TStringField;
    SQLTransportadoresTRANA14CGC: TStringField;
    SQLTransportadoresTRANA15IE: TStringField;
    SQLTransportadoresPENDENTE: TStringField;
    SQLTransportadoresREGISTRO: TDateTimeField;
    SQLTransportadoresTRANA20FONE: TStringField;
    SQLTransportadoresTRANA20FAX: TStringField;
    SQLTransportadoresTRANA60EMAIL: TStringField;
    SQLTransportadoresTRANA60CONTATO: TStringField;
    SQLTransportadoresTRANA11CPF: TStringField;
    SQLProdutoUNIDA5DESCR: TStringField;
    SQLProdutoPRODN2VLRVENDA2835D: TFloatField;
    SQLProdutoPRODN2VLRVENDA283542D: TFloatField;
    SQLProdutoPRODN3VLRVENDA2: TBCDField;
    SQLCidades: TRxQuery;
    SQLCidadesCLIEA60CIDRES: TStringField;
    SQLCidadesCLIEIMUNICODFED: TIntegerField;
    SQLCidadesCLIEA2UFRES: TStringField;
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
    SQLClienteCLIEIDIAVCTOCARTAO: TIntegerField;
    SQLClienteROTAICOD: TIntegerField;
    SQLClienteCLIEA30CODCONTABIL: TStringField;
    SQLClienteRAMOICOD: TIntegerField;
    SQLClienteSRAMICOD: TIntegerField;
    SQLClienteCLIEINDIACHQSJURO: TIntegerField;
    SQLClienteCLIECATIVO: TStringField;
    SQLClienteCLIECVNDCHEQ: TStringField;
    SQLClienteCLIECVNDCRED: TStringField;
    SQLClienteCLIECCHEKCHEK: TStringField;
    SQLClienteCLIECTPPRCVENDA: TStringField;
    SQLClienteCLIEIMUNICODFED: TIntegerField;
    SQLClientePROFA13ID: TStringField;
    SQLClienteTPDCICOD: TIntegerField;
    SQLClientePORTICOD: TIntegerField;
    SQLClienteDIAVENCTO: TStringField;
    SQLClienteCTRCN2VLR: TBCDField;
    SQLClientePLCTA15COD: TStringField;
    SQLClienteCLIETOBS1: TBlobField;
    SQLClienteCLIETOBS2: TBlobField;
    SQLClienteCLIETOBSCOB: TBlobField;
    SQLClienteCLIEBIMAGEM: TBlobField;
    SQLClienteCLIEICODPAIS: TIntegerField;
    SQLClienteCLIEA5NROENDRES: TStringField;
    CheckInativos: TCheckBox;
    Panel2: TPanel;
    CheckFlex: TCheckBox;
    Label10: TLabel;
    Label12: TLabel;
    edtInicio: TDateEdit;
    edtFinal: TDateEdit;
    SQLVendedorVENDN2FLEX: TBCDField;
    SQLPrazoMedio: TRxQuery;
    SQLPrecoProduto: TRxQuery;
    DSNFVendaItem: TDataSource;
    ProgressBar1: TProgressBar;
    CheckNewFlex: TCheckBox;
    SpeedButton1: TSpeedButton;
    procedure BtExecutarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure InlcuirRotaClick(Sender: TObject);
    procedure ExcluirRotaClick(Sender: TObject);
    function  SQLDeListaRotaCliente(ListaRota:TListBox) : String ;
    function  SQLDeListaRotaNfVenda(ListaRota:TListBox) : String ;
    function  SQLDeListaRotaTitulos(ListaRota:TListBox) : String ;
    function  RetiraEnter(varTxt:String):String;
    procedure SQLProdutoCalcFields(DataSet: TDataSet);
    procedure CheckProdutosClick(Sender: TObject);
    function  GerarFlex_de_Vendas(nVendedor:Integer):Boolean;
    function  VerificaPrazo:Integer;
    procedure CheckFlexClick(Sender: TObject);
    procedure CheckNewFlexClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    Arquivo : TextFile;
    DiferencaFlex:Extended;
    { Public declarations }
  end;

var
  FormTelaExportaBrasilMobile: TFormTelaExportaBrasilMobile;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}
procedure TFormTelaExportaBrasilMobile.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLVendedor.Active then SQLvendedor.Open;
end;

procedure TFormTelaExportaBrasilMobile.InlcuirRotaClick(Sender: TObject);
var i : integer ;
begin
  inherited;
  if ComboRota.Value <> 'Todas' then
  begin
    for i := 0 to ListaRotas.Items.Count-1 do
      if ListaRotas.Items.Strings[i] = ComboRota.Text then
        exit ;

    ListaRotas.Items.Add(ComboRota.Text) ;
  end;
end;

procedure TFormTelaExportaBrasilMobile.ExcluirRotaClick(Sender: TObject);
begin
  inherited;
  if ListaRotas.Items.Count > 0 then
    ListaRotas.Items.Delete(ListaRotas.ItemIndex);
end;

procedure TFormTelaExportaBrasilMobile.BtExecutarClick(Sender: TObject);
var CaminhoNomeArquivo, Linha, Obs, CNPJ, IE_RG, Grupo, Marca, Unidade, NFSaidaNumero, EstoqueProd : String;
var Saldo, TotalRecto : Extended;
var I : Integer;
    nLinhaVende:String;
begin
  inherited;
  EditHoraInicio.Text := FormatDateTime('hh:mm:ss',Now);
  EditHoraInicio.Update;
  linha := SQLLocate('VENDEDOR','VENDA60NOME','VENDICOD','"'+ComboVendedor.DisplayValue+'"');
  nLinhaVende:= Linha;
  If Linha = '' then
  begin
    Showmessage('Por favor, Escolha um Vendedor');
    ComboVendedor.SetFocus;
    Exit;
  end;


  if CheckFlex.Checked  or CheckNewFlex.Checked then
    if not GerarFlex_de_Vendas(StrToInt(linha)) then
    begin
      ComboVendedor.SetFocus;
      Exit;
    end;

  // Cria Arquivo
  CaminhoNomeArquivo := EditDiretorio.Text + '\'+linha+'.TXT';
  AssignFile(Arquivo,CaminhoNomeArquivo);
  Rewrite(Arquivo);
  Reset(Arquivo);
  Append(Arquivo);

  // Passa o valor do Flex de vendas
  Linha := 'ta01'; // CONSTANTE IDENTIFICAÇAO DA LINHA

  if DiferencaFlex < 0 then
    Linha := Linha + '-'+Preenche(FormatFloat('0.00',-(DiferencaFlex)),'0',7,0)
  else
    Linha := linha + Preenche(FormatFloat('0.00',DiferencaFlex),'0',8,0);

  // escreve linha ta01
  Writeln(Arquivo,Linha);



  // GERA ARQUIVO TEXTO ==> CLIENTE
  if CheckClientes.Checked then
    begin
      EditTabela.Text := 'CLIENTE';
      EditTabela.Update;
      SQLCliente.Close;
      SQLCliente.MacroByName('Rota').Value := SQLDeListaRotaCliente(ListaRotas) ;
      SQLCliente.MacroByName('VENDEDOR').Value := 'VENDICOD = "'+nLinhaVende+'"';
      SQLCliente.Open;
      SQLCliente.Last;
      ProgressBar1.Position := 0;
      ProgressBar1.Max      := SQLCliente.RecordCount;
      ProgressBar1.Update;
      SQLCliente.First;

      // Criar Primeira Linha
      While not SQLCliente.Eof Do
        begin
          if SQLClienteCLIEA5FISJURID.Value = 'J' then CNPJ := SQLClienteCLIEA14CGC.AsString;
          if SQLClienteCLIEA5FISJURID.Value = 'F' then CNPJ := SQLClienteCLIEA11CPF.AsString;
          if SQLClienteCLIEA5FISJURID.Value = 'J' then IE_RG := SQLClienteCLIEA20IE.AsString;
          if SQLClienteCLIEA5FISJURID.Value = 'F' then IE_RG := SQLClienteCLIEA10RG.AsString;

          Linha := 'tc01'; // CONSTANTE IDENTIFICAÇAO DA LINHA
          Linha := linha + Copy(SQLClienteCLIEA13ID.AsString,6,8) +
          Preenche(SQLClienteCLIEA60RAZAOSOC.AsString,'',100,2) +
          Preenche(SQLClienteCLIEA60NOMEFANT.AsString,'',100,2) +
          LowerCase(Copy(SQLClienteCLIEA5FISJURID.AsString,0,1))+
          Preenche(CNPJ,'',14,2)                                +
          Preenche(IE_RG,'',20,2)                               +
          Preenche(SQLClienteCLIEA60EMAIL.AsString,'',60,2)     +
          '00000000'                                            ; // id transportadora
          if SQLClienteMTBLICOD.AsString <> '' then
            Linha := Linha + 'b'   // a ativo - i inativo - b bloqueado - r restricoes
          else
            if SQLClienteCLIECATIVO.asstring = 'S' then
              Linha := Linha + 'a'
            else
              Linha := Linha + 'i';
          Linha := Linha + '00000000'                           +  // lista padrao
          '000'                                                 + // dias visita
          Preenche(SQLClienteCLIEIMUNICODFED.asstring,'0',8,0)  +
          '00000000'                                            + // Ramo Atividade
          '00000000'                                            + // Condição maxima de pagamento
          '                    '                                + // doc. cod. portador
          '00000000'                                            + // rendimento padrao
          Trim(Copy(RetiraEnter(SQLClienteCLIETOBS1.AsString),0,200));
          // escreve linha tc01
          Writeln(Arquivo,Linha);

          Linha := 'tc03' + // identificaçao do linha de endereco
          Copy(SQLClienteCLIEA13ID.AsString,6,8)                        +
          Preenche(TRIM(SQLClienteCLIEA60ENDRES.AsString)+'^'+TRIM(SQLClienteCLIEA5NROENDRES.AsString)+'^ ','',200,2)           +
          Preenche(Copy(SQLClienteCLIEA60BAIRES.AsString,0,40),'',40,2) +
          Preenche(SQLClienteCLIEIMUNICODFED.asstring,'0',8,0)          +
          Preenche(SQLClienteCLIEA8CEPRES.AsString,'',8,2)              +
          Preenche(SQLClienteCLIEA15FONE1.AsString,'',15,2)             +
          Preenche(SQLClienteCLIEA15FONE2.AsString,'',15,2)             +
          Preenche(SQLClienteCLIEA15FAX.AsString,'',15,2)               +
          Trim(Copy(SQLClienteCLIETOBS2.AsString,0,50));
          // escreve linha tc03
          Writeln(Arquivo,Linha);

          // insere dados financeiros CONTAS A RECEBER
          if CheckTitulos.Checked then
            begin
              EditTabela.Text := 'CONTASRECEBER';
              EditTabela.Update;
              SQLContasReceber.Close;
//              SQLContasReceber.MacroByName('Rota').Value := SQLDeListaRotaTitulos(ListaRotas) ;
              SQLContasReceber.MacroByName('MCliente').Value := 'CONTASRECEBER.CLIEA13ID = "'+SQLClienteCLIEA13ID.AsString+'"';
              SQLContasReceber.Open;
              SQLContasReceber.First;
              // Criar Proximas Linhas
              While Not SQLContasReceber.Eof do
              begin
                Linha := 'tc07';

                Saldo :=      SQLContasReceberCTRCN2VLR.value - (SQLContasReceberCTRCN2TOTREC.Value+
                              SQLContasReceberCTRCN2TOTJUROREC.Value+
                              SQLContasReceberCTRCN2TOTMULTAREC.Value-
                              SQLContasReceberCTRCN2TOTDESCREC.Value);

                if (Trim(SQLClienteCLIEA60RAZAOSOC.AsString) = 'ALEXANDRE DARIFF ZENATTI') and (Saldo <> 0) then
                  beep;

                Linha := Linha +
                Copy(SQLContasReceberCTRCA13ID.AsString ,6,8)                             + // id
                Copy(SQLContasReceberCLIEA13ID.AsString,6,8)                              + // id cliente
                //Preenche(Copy(SQLContasReceberCTRCA30NRODUPLICBANCO.asstring,0,8),'0',8,0)+ // n documento
                Preenche(Copy(SQLContasReceberNOFIINUMERO.asstring,0,8),'0',8,0)          + // n documento
                Preenche(Copy(SQLContasReceberNOFIINUMERO.asstring,0,8),'0',8,0)          + // nota fiscal
                Preenche(Copy(SQLContasReceberTPDCA60DESCR.asstring,0,12),' ',12,2)       + // tipo Documento
                FormatDateTime('dd/mm/yyyy',SQLContasReceberCTRCDEMIS.Value)              + // emissao
                FormatDateTime('dd/mm/yyyy',SQLContasReceberCTRCDVENC.Value)              + // vencimento
                Preenche(Copy(SQLContasReceberCTRCINROPARC.asstring,0,2),'0',2,0)         + // n parcela
                Preenche(Copy(SQLContasReceberCTRCINROPARC.asstring,0,2),'0',2,0)         + // total de parcelas
                Preenche(FormatFloat('0.00',SQLContasReceberCTRCN2VLR.value),'0',8,0)     + // valor da parcela
                Preenche(FormatFloat('0.00',SQLContasReceberCTRCn2vlr.value),'0',8,0)     ; // total das parcelas

                if Saldo <= 0 then
                  Linha := Linha + Preenche('Pago',' ',20,2)  // status:  Pago / Aberto / Vencido / Protestado
                else
                  if SQLContasReceberCTRCDVENC.AsDateTime < date then // vencida
                    Linha := Linha + Preenche('Vencido',' ',20,2)
                  else
                    Linha := Linha + Preenche('Aberto',' ',20,2);
                Linha := Linha + '00000000' +  // custo de protesto
                Retiraenter(SQLContasReceberCTRCA254HIST.asstring); // obs / historico

                Writeln(Arquivo,Linha);
                SQLContasReceber.Next;
              end;
              SQLContasReceber.Close;
            end;
          // FIM TEXTO ==> CONTAS A RECEBER / VENCIDAS


          // TABELA TC08 - DADOS MEDIA FINANCEIRO  DEIXADA DE LADO

          SQLCliente.Next;
          ProgressBar1.Position := ProgressBar1.Position + 1;
        end;
      SQLCliente.Close;

            // Inicio das tabelas tc06 - paises
      // e tc05 - estados
      Linha := 'tc0600000001' + // identificaçao do linha de endereco
      Preenche('BRASIL','',40,2)           +
      '055';
      Writeln(Arquivo,Linha);

      // cria um ID do UF
      Linha := 'tc05      ACAC'+Preenche(' ','',40,2)+'00000001';
      Writeln(Arquivo,Linha);

      Linha := 'tc05      ALAL'+Preenche(' ','',40,2)+'00000001';
      Writeln(Arquivo,Linha);

      Linha := 'tc05      AMAM'+Preenche(' ','',40,2)+'00000001';
      Writeln(Arquivo,Linha);

      Linha := 'tc05      APAP'+Preenche(' ','',40,2)+'00000001';
      Writeln(Arquivo,Linha);

      Linha := 'tc05      BABA'+Preenche(' ','',40,2)+'00000001';
      Writeln(Arquivo,Linha);

      Linha := 'tc05      CECE'+Preenche(' ','',40,2)+'00000001';
      Writeln(Arquivo,Linha);

      Linha := 'tc05      DFDF'+Preenche(' ','',40,2)+'00000001';
      Writeln(Arquivo,Linha);

      Linha := 'tc05      ESES'+Preenche(' ','',40,2)+'00000001';
      Writeln(Arquivo,Linha);

      Linha := 'tc05      GOGO'+Preenche(' ','',40,2)+'00000001';
      Writeln(Arquivo,Linha);

      Linha := 'tc05      MAMA'+Preenche(' ','',40,2)+'00000001';
      Writeln(Arquivo,Linha);

      Linha := 'tc05      MGMG'+Preenche(' ','',40,2)+'00000001';
      Writeln(Arquivo,Linha);

      Linha := 'tc05      MSMS'+Preenche(' ','',40,2)+'00000001';
      Writeln(Arquivo,Linha);

      Linha := 'tc05      PAPA'+Preenche(' ','',40,2)+'00000001';
      Writeln(Arquivo,Linha);

      Linha := 'tc05      PBPB'+Preenche(' ','',40,2)+'00000001';
      Writeln(Arquivo,Linha);

      Linha := 'tc05      PEPE'+Preenche(' ','',40,2)+'00000001';
      Writeln(Arquivo,Linha);

      Linha := 'tc05      PIPI'+Preenche(' ','',40,2)+'00000001';
      Writeln(Arquivo,Linha);

      Linha := 'tc05      PRPR'+Preenche(' ','',40,2)+'00000001';
      Writeln(Arquivo,Linha);

      Linha := 'tc05      MTMT'+Preenche(' ','',40,2)+'00000001';
      Writeln(Arquivo,Linha);

      Linha := 'tc05      RJRJ'+Preenche(' ','',40,2)+'00000001';
      Writeln(Arquivo,Linha);

      Linha := 'tc05      RNRN'+Preenche(' ','',40,2)+'00000001';
      Writeln(Arquivo,Linha);

      Linha := 'tc05      RRRR'+Preenche(' ','',40,2)+'00000001';
      Writeln(Arquivo,Linha);

      Linha := 'tc05      RSRS'+Preenche(' ','',40,2)+'00000001';
      Writeln(Arquivo,Linha);

      Linha := 'tc05      SCSC'+Preenche(' ','',40,2)+'00000001';
      Writeln(Arquivo,Linha);

      Linha := 'tc05      SESE'+Preenche(' ','',40,2)+'00000001';
      Writeln(Arquivo,Linha);

      Linha := 'tc05      SPSP'+Preenche(' ','',40,2)+'00000001';
      Writeln(Arquivo,Linha);

      Linha := 'tc05      TOTO'+Preenche(' ','',40,2)+'00000001';
      Writeln(Arquivo,Linha);

      Linha := 'tc05      RORO'+Preenche(' ','',40,2)+'00000001';
      Writeln(Arquivo,Linha);

      // cria tabela de cidades tc04

      SQLCidades.Open;
      SQLCidades.First;
      While Not SQLCidades.Eof do
      begin
          linha := 'tc04' +
          Preenche(SQLCidadesCLIEIMUNICODFED.asstring,'0',8,0)+
          Preenche(Copy(SQLCidadesCLIEA60CIDRES.AsString,0,40),'',40,2);
          if      SQLCidadesCLIEA2UFRES.asstring  = 'AC' then obs := 'AC'
          Else if SQLCidadesCLIEA2UFRES.asstring  = 'AL' then obs := 'AL'
          else if SQLCidadesCLIEA2UFRES.asstring  = 'AM' then obs := 'AM'
          else if SQLCidadesCLIEA2UFRES.asstring  = 'AP' then obs := 'AP'
          else if SQLCidadesCLIEA2UFRES.asstring  = 'BA' then obs := 'BA'
          else if SQLCidadesCLIEA2UFRES.asstring  = 'CE' then obs := 'CE'
          else if SQLCidadesCLIEA2UFRES.asstring  = 'DF' then obs := 'DF'
          else if SQLCidadesCLIEA2UFRES.asstring  = 'ES' then obs := 'ES'
          else if SQLCidadesCLIEA2UFRES.asstring  = 'GO' then obs := 'GO'
          else if SQLCidadesCLIEA2UFRES.asstring  = 'MA' then obs := 'MA'
          else if SQLCidadesCLIEA2UFRES.asstring  = 'MG' then obs := 'MG'
          else if SQLCidadesCLIEA2UFRES.asstring  = 'MS' then obs := 'MS'
          else if SQLCidadesCLIEA2UFRES.asstring  = 'PA' then obs := 'PA'
          else if SQLCidadesCLIEA2UFRES.asstring  = 'PB' then obs := 'PB'
          else if SQLCidadesCLIEA2UFRES.asstring  = 'PE' then obs := 'PE'
          else if SQLCidadesCLIEA2UFRES.asstring  = 'PI' then obs := 'PI'
          else if SQLCidadesCLIEA2UFRES.asstring  = 'PR' then obs := 'PR'
          else if SQLCidadesCLIEA2UFRES.asstring  = 'MT' then obs := 'MT'
          else if SQLCidadesCLIEA2UFRES.asstring  = 'RJ' then obs := 'RJ'
          else if SQLCidadesCLIEA2UFRES.asstring  = 'RN' then obs := 'RN'
          else if SQLCidadesCLIEA2UFRES.asstring  = 'RR' then obs := 'RR'
          else if SQLCidadesCLIEA2UFRES.asstring  = 'RS' then obs := 'RS'
          else if SQLCidadesCLIEA2UFRES.asstring  = 'SC' then obs := 'SC'
          else if SQLCidadesCLIEA2UFRES.asstring  = 'SE' then obs := 'SE'
          else if SQLCidadesCLIEA2UFRES.asstring  = 'SP' then obs := 'SP'
          else if SQLCidadesCLIEA2UFRES.asstring  = 'TO' then obs := 'TO'
          else if SQLCidadesCLIEA2UFRES.asstring  = 'RO' then obs := 'RO';
          linha := linha + Preenche(obs,' ',8,2)+'000' ; // identifica o ID do UF
          Writeln(Arquivo,Linha);
          SQLCidades.Next;
      end;
    end;
    // FIM ARQUIVO TEXTO ==> CLIENTE

     // Inicio do tabela tc09 - CONDICOES DE PAGAMETNO
    if CheckPoliticaVendas.Checked then
    begin
      EditTabela.Text := 'PLANORECEBIMENTO';
      EditTabela.Update;
      SQLPlanoRecebimento.Open;
      SQLPlanoRecebimento.First;

      i:= 1;
      While not SQLPlanoRecebimento.Eof Do
        begin
          // Tabela tc09 - CONDIÇÕES DE PAGAMENTO
          Linha := 'tc09'                                          +
          Preenche(SQLPlanoRecebimentoPLRCICOD.AsString,'0',8,0)          + // id da condição
          Preenche(Copy(SQLPlanoRecebimentoPLRCA60DESCR.AsString,0,40),' ',40,2);
          if SQLPlanoRecebimentoPLRCN2PERCDESC.Value > 0 then
            Linha := Linha + Preenche(formatfloat('0.00',SQLPlanoRecebimentoPLRCN2PERCDESC.value),'0',8,0) +
            '00000000d'
          else if SQLPlanoRecebimentoPLRCN2PERCACRESC.Value > 0 then
            Linha := Linha + Preenche(formatfloat('0.00',SQLPlanoRecebimentoPLRCN2PERCACRESC.value),'0',8,0) +
            '00000000a'
          else
            Linha := Linha + '0000000000000000d';
          Linha := Linha + Preenche(InttoStr(i),'0',3,0);
          inc(i);

          Writeln(Arquivo,Linha);
          SQLPlanoRecebimento.Next;
        end;
      SQLPlanoRecebimento.Close;
    end;
    // FIM DAS LINHAS DAS CONDICOES DE PAGAMENTO

    // INICIO DAS LINHAS DO CADASTRO DE TRANSPORTADORAS
    if CheckTransportes.Checked then
    begin
      EditTabela.Text := 'TRANSPORTADORA';
      EditTabela.Update;
      SQLTransportadores.Open;
      SQLTransportadores.First;

      While not SQLTransportadores.Eof Do
        begin
          // Tabela tc11 - CONDIÇÕES DE PAGAMENTO
          Linha := 'tc11'                                          +
          Preenche(SQLTransportadoresTRANICOD.AsString,'0',8,0)          + // id da condição
          Preenche(Copy(SQLTransportadoresTRANA60RAZAOSOC.AsString,0,40),' ',40,2) + // nome da transportadora
          Preenche(Copy(SQLTransportadoresTRANA20FONE.AsString,0,15),' ',15,2) ; // nome da transportadora
          Writeln(Arquivo,Linha);
          SQLTransportadores.Next;
        end;
      SQLTransportadores.Close;
    end;
    // FIM DAS LINHAS DAS transportadoras

    // INICIO DAS LINHAS DO CADASTRO DE GRUPOS
    if CheckGrupos.Checked then
    begin
      EditTabela.Text := 'GRUPOS';
      EditTabela.Update;
      SQLGrupo.Open;
      SQLGrupo.First;

      While not SQLGrupo.Eof Do
        begin
          // Tabela td01 - GRUPOS
          Linha := 'td01'                                          +
          Preenche(SQLGrupoGRUPICOD.AsString,'0',8,0)              + // ID DO GRUPO
          Preenche(Copy(SQLGrupoGRUPA60DESCR.AsString,0,40),' ',40,2) + // DESCRIÇÃO
          'UN  '; // UNIDADE DE MEDIDA
          Writeln(Arquivo,Linha);
          SQLGrupo.Next;
        end;
      SQLGrupo.Close;
    end;
    // FIM DAS LINHAS DOS GRUPOS

    // GERA TABELA TD03 ==> PRODUTO
    if CheckProdutos.Checked then
    begin
      EditTabela.Text := 'PRODUTO';
      EditTabela.Update;
      SQLProduto.Close;

      if FileExists('c:\unit\gestao\goldbrasil.txt') Then
      begin
        SQLproduto.Sql.Text := 'Select Produto.*, Unidade.Unida5descr from Produto       '+
        'left join unidade on unidade.unidicod = produto.unidicod '+
        'wHERE PRODUTO.PRODN3VLRVENDA2 <> 0                       ';
        if not CheckInativos.Checked then
          SQLProduto.SQl.Text := SQLProduto.SQl.Text + ' and Produto.prodcativo = "S" ';
        SQLProduto.SQl.Text := SQLProduto.SQl.Text + 'Order By PRODICOD ';
      end Else
      begin
        SQLproduto.Sql.Text := 'Select Produto.*, Unidade.Unida5descr from Produto       '+
        'left join unidade on unidade.unidicod = produto.unidicod '+
        'wHERE PRODUTO.PRODN3VLRVENDA <> 0                        ';
        if not CheckInativos.Checked then
          SQLProduto.SQl.Text := SQLProduto.SQl.Text + ' and Produto.prodcativo = "S" ';
        SQLProduto.SQl.Text := SQLProduto.SQl.Text + 'Order By PRODICOD  ';
      end;
      SQLProduto.Open;
      SQLProduto.Last ;
      ProgressBar1.Position := 0;
      ProgressBar1.Max      := SQLProduto.RecordCount;
      ProgressBar1.Update;
      SQLProduto.First;

      // Criar Proximas Linhas
      While not SQLProduto.Eof Do
        begin

          EditTabela.Text := 'PRODUTO Cód: '+ SQLProdutoPRODICOD.asstring;
          EditTabela.Refresh;
          EstoqueProd := SQLLocate('PRODUTOSALDO','EMPRICOD = '+DM.SQLTerminalAtivoEMPRICOD.AsString+' AND PRODICOD','PSLDN3QTDE',SQLProdutoPRODICOD.AsString);
          if StrToFloat(EstoqueProd) < 0 then
            EstoqueProd := '0';

          Linha := 'td03' +
          Preenche(SQLProdutoPRODICOD.asstring,'0',8,0)                         + // id
          Preenche(SQLProdutoPRODICOD.asstring,' ',25,2)                        + // referencia
          Preenche(Copy(SQLProdutoPRODA60DESCR.AsString,0,60),' ',60,2)         + // descfriocao do produto
          Preenche(Copy(SQLProdutoUNIDA5DESCR.AsString,0,3),' ',3,2)            + // Unidade
          Preenche(SQLProdutoGRUPICOD.AsString,'0',8,0)                         + // ID DO GRUPO
          '00000000'                                                            + // id subgrupo
          FormatDateTime('dd/mm/yyyy',SQLProdutoPRODDCAD.AsDateTime)            + // data cadastramento
          ' '                                                                   + // alternativo ?
          '001'                                                                 + // multiplicador ?
          '                    '                                                + // foto arquivo jpg
          'a'                                                                   + // a = ativo  i = inativo
          '00000000'                                                            + // desconto
          '00'                                                                  + // tabela padrao
          Preenche(SQLProdutoPRODN3PESOLIQ.AsString,'0',8,0)                    + // peso
          ' '                                                                   + // status foto ?
          '                                        '                            + // espaco reservado
          Preenche(EstoqueProd,'0',8,0)                    ; // estoque coletivo


          if FileExists('c:\unit\gestao\goldbrasil.txt') Then
          begin
            linha := Linha +
            // monta lista de preços c/ preco atacado
            '00000001'+Preenche(formatfloat('0.00',SQLProdutoPRODN3VLRVENDA2.value),'0',8,0)        + // lista 00000001 - a vista
            '0000^';

            linha := Linha +
            // monta lista de preços c/ 28/35 dias
            '00000002'+Preenche(formatfloat('0.00',SQLProdutoPRODN2VLRVENDA2835D.value),'0',8,0)        + // lista 00000001 - a vista
                       '0000^'+
            // monta lista de preços c/ 28/35 dias
            '00000003'+Preenche(formatfloat('0.00',SQLProdutoPRODN2VLRVENDA283542D.value),'0',8,0)        + // lista 00000001 - a vista
                       '0000^';
          end else
            linha := Linha +
            // monta lista de preços c/ preco Varejo
            '00000001'+Preenche(formatfloat('0.00',SQLProdutoPRODN3VLRVENDA.value),'0',8,0)        + // lista 00000001 - a vista
                     '0000^';

          Writeln(Arquivo,Linha);
          SQLProduto.Next;
          ProgressBar1.Position := ProgressBar1.Position +1 ;
        end;
      SQLProduto.Close;
    end;
    // FIM ARQUIVO TEXTO ==> PRODUTOS

    // INICIA A CRIAÇÃO DA TABELA DE LISTA DE PREÇOS
    if CheckProdutos.Checked then
    begin
      EditTabela.Text := 'PRODUTO - LISTAS';
      EditTabela.Update;

      // Criar Proximas Linhas
      Linha := 'td08'+
      '00000001'+ //ID	Numérico	8
      Preenche('A VISTA',' ',40,2)+//Descrição	Caracter	40
      '0'+//Moeda - 0 = Real / 1 = Dólar / 2 = Euro	Numérico	1
      '00000001'+//Índice Geral	Numérico	8
      '00000001'+//ID Estoque	Numérico	8
      '00000001'+//Índice 01 - IW	Numérico	8
      '00000001'+//Índice 02 - IY	Numérico	8
      '00000001'+//Índice 03 - BW	Numérico	8
      '00000001'+//Índice 04 - BY	Numérico	8
      '00000001'+//Índice 05 - CW	Numérico	8
      '00000001'+//Índice 06 - CY	Numérico	8
      '00000001'; //Índice 07 - PR	Numérico	8
      Writeln(Arquivo,Linha);

      Linha := 'td08'+
      '00000002'+ //ID	Numérico	8
      Preenche('PRAZO 28/35 DIAS',' ',40,2)+//Descrição	Caracter	40
      '0'+//Moeda - 0 = Real / 1 = Dólar / 2 = Euro	Numérico	1
      '00000001'+//Índice Geral	Numérico	8
      '00000001'+//ID Estoque	Numérico	8
      '00000001'+//Índice 01 - IW	Numérico	8
      '00000001'+//Índice 02 - IY	Numérico	8
      '00000001'+//Índice 03 - BW	Numérico	8
      '00000001'+//Índice 04 - BY	Numérico	8
      '00000001'+//Índice 05 - CW	Numérico	8
      '00000001'+//Índice 06 - CY	Numérico	8
      '00000001';//Índice 07 - PR	Numérico	8
      Writeln(Arquivo,Linha);

      Linha := 'td08'+
      '00000003'+ //ID	Numérico	8
      Preenche('PRAZO 28/35/42 DIAS',' ',40,2)+//Descrição	Caracter	40
      '0'+//Moeda - 0 = Real / 1 = Dólar / 2 = Euro	Numérico	1
      '00000001'+//Índice Geral	Numérico	8
      '00000001'+//ID Estoque	Numérico	8
      '00000001'+//Índice 01 - IW	Numérico	8
      '00000001'+//Índice 02 - IY	Numérico	8
      '00000001'+//Índice 03 - BW	Numérico	8
      '00000001'+//Índice 04 - BY	Numérico	8
      '00000001'+//Índice 05 - CW	Numérico	8
      '00000001'+//Índice 06 - CY	Numérico	8
      '00000001';//Índice 07 - PR	Numérico	8
      Writeln(Arquivo,Linha);
    End;
  // Fechar Arquivo
  CloseFile(Arquivo);

  EditHoraTermino.Text := FormatDateTime('hh:mm:ss',Now);
  EditHoraTermino.Update;
  ShowMessage('Exportação gerada com sucesso!');
  EditTabela.Text := '';
  EditTabela.Update;
end;

function TFormTelaExportaBrasilMobile.SQLDeListaRotaCliente(ListaRota:TListBox) : String ;
var i   : integer ;
    SQLRota : string ;
begin
  if ListaRota.Items.Count = 0 then
    begin
      if (ComboRota.Text <> '') and (ComboRota.Text <> 'Todas')then
        SQLRota := 'Cliente.RotaIcod = ' + '"' + ComboRota.Value + '"'
      else
        SQLRota := '0=0' ;
    end
  else
    begin
      SQLRota := '' ;
      for I:=0 To ListaRota.Items.Count-1 Do
        begin
          if I = ListaRota.Items.Count-1 Then
            SQLRota := SQLRota + 'Cliente.RotaIcod = ' + '"' + Copy(ListaRota.Items[I],1,Pos('-',ListaRota.Items[I]) - 1) + '"'
          else
            SQLRota := SQLRota + 'Cliente.RotaIcod = ' + '"' + Copy(ListaRota.Items[I],1,Pos('-',ListaRota.Items[I]) - 1) + '"' + ' or '
        end ;
    end ;

  SQLDeListaRotaCliente := SQLRota ;
end ;

function TFormTelaExportaBrasilMobile.SQLDeListaRotaNfVenda(ListaRota:TListBox) : String ;
var i   : integer ;
    SQLRota : string ;
begin
  if ListaRota.Items.Count = 0 then
    begin
      if (ComboRota.Text <> '') and (ComboRota.Text <> 'Todas')then
        SQLRota := 'NotaFiscal.RotaIcod = ' + '"' + ComboRota.Value + '"'
      else
        SQLRota := '0=0' ;
    end
  else
    begin
      SQLRota := '' ;
      for I:=0 To ListaRota.Items.Count-1 Do
        begin
          if I = ListaRota.Items.Count-1 Then
            SQLRota := SQLRota + 'NotaFiscal.RotaIcod = ' + '"' + Copy(ListaRota.Items[I],1,Pos('-',ListaRota.Items[I]) - 1) + '"'
          else
            SQLRota := SQLRota + 'NotaFiscal.RotaIcod = ' + '"' + Copy(ListaRota.Items[I],1,Pos('-',ListaRota.Items[I]) - 1) + '"' + ' or '
        end ;
    end ;
  SQLDeListaRotaNfVenda := SQLRota ;
end ;

function TFormTelaExportaBrasilMobile.SQLDeListaRotaTitulos(ListaRota:TListBox) : String ;
var i   : integer ;
    SQLRota : string ;
begin
  if ListaRota.Items.Count = 0 then
    begin
      if (ComboRota.Text <> '') and (ComboRota.Text <> 'Todas')then
        SQLRota := 'Cliente.RotaIcod = ' + '"' + ComboRota.Value + '"'
      else
        SQLRota := '0=0' ;
    end
  else
    begin
      SQLRota := '' ;
      for I:=0 To ListaRota.Items.Count-1 Do
        begin
          if I = ListaRota.Items.Count-1 Then
            SQLRota := SQLRota + 'Cliente.RotaIcod = ' + '"' + Copy(ListaRota.Items[I],1,Pos('-',ListaRota.Items[I]) - 1) + '"'
          else
            SQLRota := SQLRota + 'Cliente.RotaIcod = ' + '"' + Copy(ListaRota.Items[I],1,Pos('-',ListaRota.Items[I]) - 1) + '"' + ' or '
        end ;
    end ;
  SQLDeListaRotaTitulos := SQLRota ;
end ;

procedure TFormTelaExportaBrasilMobile.SQLProdutoCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if FileExists('c:\unit\gestao\goldbrasil.txt') Then
    begin
      SQLProdutoPRODN2VLRVENDA2835D.AsFloat   := SQLProdutoPRODN3VLRVENDA2.VALUE+(SQLProdutoPRODN3VLRVENDA2.VALUE *SQLProdutoPRODN3DOLARCOMPRA.Value / 100);
      SQLprodutoPRODN2VLRVENDA283542D.AsFloat := SQLProdutoPRODN3VLRVENDA2.VALUE+(SQLProdutoPRODN3VLRVENDA2.VALUE *SQLProdutoPRODN3DOLARCUSTO.VALUE / 100);
    end;
end;

function TformTelaExportaBrasilMobile.RetiraEnter(varTxt:String):String;
begin
  While Pos(#13,varTxt) > 0 do
    Delete(varTxt,Pos(#13,varTxt),Length(#13));

  While Pos(#10,varTxt) > 0 do
    Delete(varTxt,Pos(#10,varTxt),Length(#10));


end;

procedure TFormTelaExportaBrasilMobile.CheckProdutosClick(Sender: TObject);
begin
  inherited;
  CheckInativos.Enabled := CheckProdutos.Checked;
end;


procedure TFormTelaExportaBrasilMobile.CheckFlexClick(Sender: TObject);
begin
  inherited;
  panel2.Enabled := CheckFlex.Checked;
  if CheckNewFlex.Checked then
    CheckNewFlex.Checked := not CheckFlex.Checked;
  if Checkflex.Checked then
  begin
    edtInicio.Date := StartOfTheMonth(now);
    edtFinal.Date  := EndOfTheMonth(now)
  end;
end;

function  TFormTelaExportaBrasilMobile.VerificaPrazo:Integer;

begin

  // seleciona o prazo medio do plano de recebimento da nota em questão
  SQLPrazoMedio.Close;
  SQLPrazoMedio.ParamByName('xPLRCICOD').value := SQLNFVendaPLRCICOD.Value;
  SQLPrazoMedio.Open;

  // se o prazomedio do plano de recebimento for menor que 28 dias = a vista
  if SQLPrazoMedio.FieldByName('PrazoMedio').value <= 28 then
    Result := 1
  else if (SQLPrazoMedio.FieldByName('PrazoMedio').value > 28) and (SQLPrazoMedio.FieldByName('PrazoMedio').value <= 35) then
    Result := 2
  else
    Result := 3;

  SQLprazoMedio.Close;
end;



function  TFormTelaExportaBrasilMobile.GerarFlex_de_vendas(nvendedor:Integer):Boolean;
var vFlex, ValorProduto :Extended;
    Tabela: Integer;

begin
  // Verifica período de pesquisa...
  if (edtInicio.Date > edtFinal.date) then
  begin
    ShowMessage('Período de Apuração do Flex de Vendas Inválido');
    Result := False;
    Exit;
  end;

    Try
    // Seleciona o valor total do flex do vendedor.
    vFlex := SQLVendedorVENDN2FLEX.Value;

    if CheckNewFlex.Checked then
    begin
      DiferencaFlex := vFlex;
      Result := True;
      Exit;
    end;

    // Efetua Select das notas efetivadas no Período
    if SQLNFVenda.Active then
      SQLNFVenda.Close;

    SQLNFVenda.Prepare;
    SQLNFVenda.ParamByName('nVENDEDOR').AsInteger    := nVendedor;
    SQLNFVenda.ParamByName('nDATAINICIAL').AsDateTime := edtInicio.Date;
    SQLNFVenda.ParamByName('nDATAFINAL').AsDateTime   := edtFinal.Date;

    SQLNFVenda.Open;
    SQLNFVenda.Last;
    ProgressBar1.Max := SQLNFVenda.RecordCount;
    SQLNFVenda.First;
    DiferencaFlex := 0;

    While not SQLNFVenda.Eof do
    begin
      EditTabela.Text :='Calculando Flex do Vendedor';
      ProgressBar1.Position := ProgressBar1.Position + 1;
      if FileExists('C:\UNIT\GESTAO\FLEXPRECO.TXT') Then
        Tabela := 0
      Else
      Begin
        Case VerificaPrazo of
        1: Tabela := 1;
        2: Tabela := 2;
        3: Tabela := 3;
        end;
      End;

      SQLNFVendaItem.Prepare;
      SQLNFVendaItem.Open;
      SQLNFVendaItem.First;
      SQLPrecoProduto.Open;
      While not SQLNFVendaItem.Eof do
      begin
          Try
          EditTabela.Text :='Calculando Flex NF '+SQLNFVendaNOFIINUMERO.AsString + ' Prod. Cód.: '+SQLNFVendaItemPRODICOD.AsString;
          Case Tabela of
          0: ValorProduto := SQLPrecoproduto.fieldbyname('PRODN3VLRVENDA').Value;
          1: ValorProduto := SQLPrecoproduto.fieldbyname('PRODN3VLRVENDA2').Value;
          2: ValorProduto := SQLPrecoProduto.Fieldbyname('PRECO2835D').Value;
          3: ValorProduto := SQLPrecoProduto.Fieldbyname('PRECO283542D').Value;
          End;
          DiferencaFlex := DiferencaFlex + ((SQLNFVendaItemNFITN2VLRUNIT.value * SQLNFVendaItemNFITN3QUANT.value) - (ValorProduto * SQLNFVendaItemNFITN3QUANT.value));
        Except On E:Exception Do
        Begin
          ShowMessage('Falha ao Calcular Flex NF '+SQLNFVendaNOFIINUMERO.AsString + ' Prod. Cód.: '+SQLNFVendaItemPRODICOD.AsString +#13#10+
          E.message + #13#10+'Verifique os valores de Venda para Tabela '+IntToStr(Tabela)+#13#10+
          '0 = Valor Venda, 1 = Venda Atacado, 2 = 28/35 dias e 3 = 28/35/42 dias'+#13#10+
          'Para utilizar tabela 0 (zero) criar arquivo C:\UNIT\GESTAO\FLEXPRECO.TXT');
          Result := False;
          Exit;
        End;End;
        SQLNFVendaItem.Next;
      end;
      SQLNFVendaItem.Close;
      SQLPrecoProduto.Close;
      SQLNFVenda.Next;
    end;
    DiferencaFlex := VFlex + DiferencaFlex;
    Result := True;
  Except on e:exception do
  begin
    ShowMessage('Falha ao Gerar Flex de Vendas: '+e.Message);
    Result := False;
  end;end;
end;


procedure TFormTelaExportaBrasilMobile.CheckNewFlexClick(Sender: TObject);
begin
  inherited;
  if CheckNewFlex.Checked then
    CheckFlex.Checked := not CheckNewFlex.Checked;
end;

procedure TFormTelaExportaBrasilMobile.SpeedButton1Click(Sender: TObject);
var Linha:String;
begin
  inherited;
    if CheckFlex.Checked then
    begin
      linha := SQLLocate('VENDEDOR','VENDA60NOME','VENDICOD','"'+ComboVendedor.DisplayValue+'"');
      If Linha = '' then
      begin
        Showmessage('Por favor, Escolha um Vendedor');
        ComboVendedor.SetFocus;
        Exit;
      end;


      if not GerarFlex_de_Vendas(StrToInt(linha)) then
      begin
        ComboVendedor.SetFocus;
        Exit;
      end;
      Showmessage('Flex Deste Vendedor R$ '+FormatFloat(',0.00',DiferencaFlex));
    end;
end;

end.
