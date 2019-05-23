unit TelaGeracaoNotaFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, StdCtrls, ComCtrls,
  DB, DBTables, RxQuery, Mask, ToolEdit, RxLookup, Grids, DBGrids, Placemnt,
  CurrEdit, UCrpe32, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type

  TCLIE = Record
    nCliUF,
    nCliNome,
    nCliPessoa,
    nCliRegime:String;
  end;

  TICMSUF = Record
    nICMS,
    nRED_ICMS,
    nICMS_INTERNO,
    nMVA : Double;
    nSTFisica:String;
    nSTJuridica:String;
  end;

  TOPERACAO_ID = Record
    nOpOrigemDestino,
    nOpCalcIPI,
    nOpCalcICMS,
    nOpCalcST,
    nOpCalcIPIFis,
    nOpCalcICMSFis,
    nOpCalcSTFis,
    nOpCFOPnoUF,
    nOpCFOPForaUF,
    nOpPCTACred: String;
  end;

  TPRODUTO_ID = Record
    nProdVlrCmpra,
    nProdPercIPI,
    nProdPesoBruto,
    nProdPesoLiq:Double;
    nProdIcmsICOD,
    nProdServico,
    nProdSitTrib:String;
    nNCMCodigo  : String;
    nProdOrigem : Integer;
  end;

  TFormTelaGeracaoNotasFiscais = class(TFormTelaGeralTEMPLATE)
    BtnSelecionarDoc: TSpeedButton;
    BtnGeraNotas: TSpeedButton;
    Panel1: TPanel;
    Label1: TLabel;
    ComboEmpresa: TRxDBLookupCombo;
    Label2: TLabel;
    ComboCliente: TRxDBLookupCombo;
    Label3: TLabel;
    De: TDateEdit;
    Ate: TDateEdit;
    CheckPeriodo: TCheckBox;
    DSSQLPedido: TDataSource;
    SQLPedido: TRxQuery;
    SQLPedidoPDVDA13ID: TStringField;
    SQLPedidoEMPRICOD: TIntegerField;
    SQLPedidoPDVDICOD: TIntegerField;
    SQLPedidoVENDICOD: TIntegerField;
    SQLPedidoCLIEA13ID: TStringField;
    SQLPedidoTRANICOD: TIntegerField;
    SQLPedidoPLRCICOD: TIntegerField;
    SQLPedidoPDVDDEMISSAO: TDateTimeField;
    SQLPedidoPDVDN2VLRFRETE: TBCDField;
    SQLPedidoPDVDA30NROPEDCOMP: TStringField;
    SQLPedidoPDVDA30COMPRADOR: TStringField;
    SQLPedidoPDVDCTIPO: TStringField;
    SQLPedidoPDVDCSTATUS: TStringField;
    SQLPedidoPDVDN2VLRDESC: TBCDField;
    SQLPedidoPDVDN2TOTPROD: TBCDField;
    SQLPedidoPDVDN2TOTPED: TBCDField;
    SQLPedidoPDVDTOBS: TStringField;
    SQLPedidoREGISTRO: TDateTimeField;
    SQLPedidoPENDENTE: TStringField;
    SQLPedidoPDVDN2VLRDESCPROM: TBCDField;
    SQLPedidoPDVDCTIPOFRETE: TStringField;
    SQLPedidoPDVDDENTREGA: TDateTimeField;
    SQLPedidoPDVDINROTALAO: TIntegerField;
    SQLPedidoPDVDCIMPORTADO: TStringField;
    SQLPedidoCLIEA60RAZAOSOC: TStringField;
    SQLPedidoVENDA60NOME: TStringField;
    SQLPedidoItem: TRxQuery;
    SQLPedidoItemPDVDA13ID: TStringField;
    SQLPedidoItemPVITIITEM: TIntegerField;
    SQLPedidoItemPRODICOD: TIntegerField;
    SQLPedidoItemPVITN3QUANT: TBCDField;
    SQLPedidoItemPVITN2VLRUNIT: TBCDField;
    SQLPedidoItemPVITN2PERCDESC: TBCDField;
    SQLPedidoItemPVITN2VLRDESC: TBCDField;
    SQLPedidoItemREGISTRO: TDateTimeField;
    SQLPedidoItemPENDENTE: TStringField;
    SQLPedidoItemPVITN3QUANTVEND: TBCDField;
    SQLPedidoItemPDVDA60OBS: TStringField;
    SQLPedidoItemPVITN2PERCCOMIS: TBCDField;
    SQLPedidoItemPDVDA255OBS1: TStringField;
    SQLPedidoItemLOTEA30NRO: TStringField;
    SQLEmpresa: TRxQuery;
    DSSQLEmpresa: TDataSource;
    SQLCliente: TRxQuery;
    DSSQLCliente: TDataSource;
    Label6: TLabel;
    ComboVendedor: TRxDBLookupCombo;
    Progress: TProgressBar;
    SQLVendedor: TRxQuery;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    DSSQLVendedor: TDataSource;
    DBGridLista: TDBGrid;
    TblPedido: TTable;
    DSTblPedido: TDataSource;
    FormStorage: TFormStorage;
    Radioimportar: TRadioGroup;
    RadioOrdem: TRadioGroup;
    DbEditTotalPedidos: TCurrencyEdit;
    Label5: TLabel;
    SQLNotaFiscal: TRxQuery;
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
    SQLNotaFiscalAVALA13ID: TStringField;
    SQLNotaFiscalCUPOA13IDCUPNEG: TStringField;
    SQLNotaFiscalNOFIDCANCEL: TDateTimeField;
    SQLNotaFiscalPLCTA15CODCRED: TStringField;
    SQLNotaFiscalPLCTA15CODDEB: TStringField;
    SQLNotaFiscalUSUAICOD: TIntegerField;
    SQLNotaFiscalUSUAA60LOGIN: TStringField;
    SQLNotaFiscalROTAICOD: TIntegerField;
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
    SQLNotaFiscalItemNFITN2VLRICMS: TBCDField;
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
    SQLNotaFiscalItemNFITA254OBS: TStringField;
    DataEmissaoNF: TDateEdit;
    Label7: TLabel;
    SQLPedidoPDVDN2PERCFAT: TBCDField;
    SQLPedidoPDVDN2PERCOMIS: TBCDField;
    SQLPedidoROTAICOD: TIntegerField;
    SQLPedidoSERIA5COD: TStringField;
    SQLPedidoVEICA13ID: TStringField;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    SQLEmpresaEMPRA2UF: TStringField;
    SQLPedidoUSUAA60LOGIN: TStringField;
    TblPedidoPDVDA13ID: TStringField;
    TblPedidoEMPRICOD: TIntegerField;
    TblPedidoPDVDICOD: TIntegerField;
    TblPedidoVENDICOD: TIntegerField;
    TblPedidoCLIEA13ID: TStringField;
    TblPedidoTRANICOD: TIntegerField;
    TblPedidoPLRCICOD: TIntegerField;
    TblPedidoPDVDDEMISSAO: TDateTimeField;
    TblPedidoPDVDN2VLRFRETE: TBCDField;
    TblPedidoPDVDA30NROPEDCOMP: TStringField;
    TblPedidoPDVDA30COMPRADOR: TStringField;
    TblPedidoPDVDCTIPO: TStringField;
    TblPedidoPDVDCSTATUS: TStringField;
    TblPedidoPDVDN2VLRDESC: TBCDField;
    TblPedidoPDVDN2TOTPROD: TBCDField;
    TblPedidoPDVDN2TOTPED: TBCDField;
    TblPedidoPDVDTOBS: TStringField;
    TblPedidoREGISTRO: TDateTimeField;
    TblPedidoPENDENTE: TStringField;
    TblPedidoPDVDN2VLRDESCPROM: TBCDField;
    TblPedidoPDVDCTIPOFRETE: TStringField;
    TblPedidoPDVDDENTREGA: TDateTimeField;
    TblPedidoPDVDINROTALAO: TIntegerField;
    TblPedidoPDVDCIMPORTADO: TStringField;
    TblPedidoCLIEA60RAZAOSOC: TStringField;
    TblPedidoVENDA60NOME: TStringField;
    TblPedidoPDVDN2PERCFAT: TBCDField;
    TblPedidoPDVDN2PERCOMIS: TBCDField;
    TblPedidoROTAICOD: TIntegerField;
    TblPedidoSERIA5COD: TStringField;
    TblPedidoVEICA13ID: TStringField;
    TblPedidoUSUAA60LOGIN: TStringField;
    TblPedidoImportar: TBooleanField;
    SQLSerie: TRxQuery;
    SQLSerieSERIA5COD: TStringField;
    SQLSeriePENDENTE: TStringField;
    SQLSerieREGISTRO: TDateTimeField;
    SQLSerieSERIINRONF: TIntegerField;
    Label8: TLabel;
    DSSQLSerie: TDataSource;
    RadioStatus: TRadioGroup;
    SQLContasReceberPedido: TRxQuery;
    SQLContasReceberPedidoCTRCA13ID: TStringField;
    SQLContasReceberPedidoEMPRICOD: TIntegerField;
    SQLContasReceberPedidoTERMICOD: TIntegerField;
    SQLContasReceberPedidoCTRCICOD: TIntegerField;
    SQLContasReceberPedidoCLIEA13ID: TStringField;
    SQLContasReceberPedidoCTRCCSTATUS: TStringField;
    SQLContasReceberPedidoCTRCINROPARC: TIntegerField;
    SQLContasReceberPedidoCTRCDVENC: TDateTimeField;
    SQLContasReceberPedidoCTRCN2VLR: TBCDField;
    SQLContasReceberPedidoCTRCN2DESCFIN: TBCDField;
    SQLContasReceberPedidoNUMEICOD: TIntegerField;
    SQLContasReceberPedidoPORTICOD: TIntegerField;
    SQLContasReceberPedidoCTRCN2TXJURO: TBCDField;
    SQLContasReceberPedidoCTRCN2TXMULTA: TBCDField;
    SQLContasReceberPedidoCTRCA5TIPOPADRAO: TStringField;
    SQLContasReceberPedidoCTRCDULTREC: TDateTimeField;
    SQLContasReceberPedidoCTRCN2TOTREC: TBCDField;
    SQLContasReceberPedidoCTRCN2TOTJUROREC: TBCDField;
    SQLContasReceberPedidoCTRCN2TOTMULTAREC: TBCDField;
    SQLContasReceberPedidoCTRCN2TOTDESCREC: TBCDField;
    SQLContasReceberPedidoEMPRICODULTREC: TIntegerField;
    SQLContasReceberPedidoCUPOA13ID: TStringField;
    SQLContasReceberPedidoTPDCICOD: TIntegerField;
    SQLContasReceberPedidoPLCTA15COD: TStringField;
    SQLContasReceberPedidoCTRCA30NRODUPLICBANCO: TStringField;
    SQLContasReceberPedidoNOFIA13ID: TStringField;
    SQLContasReceberPedidoCTRCDEMIS: TDateTimeField;
    SQLContasReceberPedidoPENDENTE: TStringField;
    SQLContasReceberPedidoREGISTRO: TDateTimeField;
    SQLContasReceberPedidoCTRCDREABILSPC: TDateTimeField;
    SQLContasReceberPedidoCTRCN2TOTMULTACOBR: TBCDField;
    SQLContasReceberPedidoBANCA5CODCHQ: TStringField;
    SQLContasReceberPedidoCTRCA10AGENCIACHQ: TStringField;
    SQLContasReceberPedidoCTRCA15CONTACHQ: TStringField;
    SQLContasReceberPedidoCTRCA15NROCHQ: TStringField;
    SQLContasReceberPedidoCTRCA60TITULARCHQ: TStringField;
    SQLContasReceberPedidoCTRCA20CGCCPFCHQ: TStringField;
    SQLContasReceberPedidoCTRCDDEPOSCHQ: TDateTimeField;
    SQLContasReceberPedidoALINICOD: TIntegerField;
    SQLContasReceberPedidoPDVDA13ID: TStringField;
    SQLContasReceberPedidoCTRCA254HIST: TStringField;
    SQLContasReceberPedidoHTPDICOD: TIntegerField;
    SQLContasReceberPedidoPLCTA15CODDEBITO: TStringField;
    SQLContasReceberPedidoAVALA13ID: TStringField;
    SQLIcmsUF: TRxQuery;
    SQLNotaContasReceber: TRxQuery;
    SQLNotaFiscalNOFIAOBSCORPONF: TStringField;
    SQLNotaFiscalVEICA13ID: TStringField;
    SQLNotaFiscalNOFICEXPCONTABIL: TStringField;
    DSSQLTransportadora: TDataSource;
    SQLTransportadora: TRxQuery;
    SQLTransportadoraTRANICOD: TIntegerField;
    SQLTransportadoraTRANA60RAZAOSOC: TStringField;
    SQLTransportadoraTRANA60END: TStringField;
    SQLTransportadoraTRANA60BAI: TStringField;
    SQLTransportadoraTRANA60CID: TStringField;
    SQLTransportadoraTRANA8CEP: TStringField;
    SQLTransportadoraTRANA2UF: TStringField;
    SQLTransportadoraTRANA14CGC: TStringField;
    SQLTransportadoraTRANA15IE: TStringField;
    SQLVeiculo: TRxQuery;
    SQLVeiculoVEICA13ID: TStringField;
    SQLVeiculoEMPRICOD: TIntegerField;
    SQLVeiculoTERMICOD: TIntegerField;
    SQLVeiculoVEICICOD: TIntegerField;
    SQLVeiculoVEICA7PLACA: TStringField;
    SQLVeiculoVEICA2UFPLACA: TStringField;
    SQLVeiculoVEICA60DESCR: TStringField;
    SQLVeiculoVEICA3OMARCA: TStringField;
    SQLVeiculoVEICA3OMOTORISTA: TStringField;
    SQLVeiculoVEICA3OMOTOCPF: TStringField;
    SQLVeiculoVEICN3PESOSUPORTA: TBCDField;
    SQLVeiculoTRANICOD: TIntegerField;
    SQLVeiculoPENDENTE: TStringField;
    SQLVeiculoREGISTRO: TDateTimeField;
    SQLNotaFiscalTransportadoraLookup: TStringField;
    SQLNotaFiscalTransportadoraCGCLookUp: TStringField;
    SQLNotaFiscalTransportadoraEnderecoLookUp: TStringField;
    SQLNotaFiscalTransportadoraCidadeLookUp: TStringField;
    SQLNotaFiscalTransportadoraEstadoLookUp: TStringField;
    SQLNotaFiscalTransportadoraIELookUp: TStringField;
    SQLNotaContasReceberCTRCA13ID: TStringField;
    SQLNotaContasReceberEMPRICOD: TIntegerField;
    SQLNotaContasReceberTERMICOD: TIntegerField;
    SQLNotaContasReceberCTRCICOD: TIntegerField;
    SQLNotaContasReceberCLIEA13ID: TStringField;
    SQLNotaContasReceberCTRCCSTATUS: TStringField;
    SQLNotaContasReceberCTRCINROPARC: TIntegerField;
    SQLNotaContasReceberCTRCDVENC: TDateTimeField;
    SQLNotaContasReceberCTRCN2VLR: TBCDField;
    SQLNotaContasReceberCTRCN2DESCFIN: TBCDField;
    SQLNotaContasReceberNUMEICOD: TIntegerField;
    SQLNotaContasReceberPORTICOD: TIntegerField;
    SQLNotaContasReceberCTRCN2TXJURO: TBCDField;
    SQLNotaContasReceberCTRCN2TXMULTA: TBCDField;
    SQLNotaContasReceberCTRCA5TIPOPADRAO: TStringField;
    SQLNotaContasReceberCTRCDULTREC: TDateTimeField;
    SQLNotaContasReceberCTRCN2TOTREC: TBCDField;
    SQLNotaContasReceberCTRCN2TOTJUROREC: TBCDField;
    SQLNotaContasReceberCTRCN2TOTMULTAREC: TBCDField;
    SQLNotaContasReceberCTRCN2TOTDESCREC: TBCDField;
    SQLNotaContasReceberCTRCN2TOTMULTACOBR: TBCDField;
    SQLNotaContasReceberEMPRICODULTREC: TIntegerField;
    SQLNotaContasReceberCUPOA13ID: TStringField;
    SQLNotaContasReceberTPDCICOD: TIntegerField;
    SQLNotaContasReceberPLCTA15COD: TStringField;
    SQLNotaContasReceberCTRCA30NRODUPLICBANCO: TStringField;
    SQLNotaContasReceberNOFIA13ID: TStringField;
    SQLNotaContasReceberCTRCDEMIS: TDateTimeField;
    SQLNotaContasReceberPENDENTE: TStringField;
    SQLNotaContasReceberREGISTRO: TDateTimeField;
    SQLNotaContasReceberCTRCDREABILSPC: TDateTimeField;
    SQLNotaContasReceberBANCA5CODCHQ: TStringField;
    SQLNotaContasReceberCTRCA10AGENCIACHQ: TStringField;
    SQLNotaContasReceberCTRCA15CONTACHQ: TStringField;
    SQLNotaContasReceberCTRCA15NROCHQ: TStringField;
    SQLNotaContasReceberCTRCA60TITULARCHQ: TStringField;
    SQLNotaContasReceberCTRCA20CGCCPFCHQ: TStringField;
    SQLNotaContasReceberCTRCDDEPOSCHQ: TDateTimeField;
    SQLNotaContasReceberALINICOD: TIntegerField;
    SQLNotaContasReceberPDVDA13ID: TStringField;
    SQLNotaContasReceberCTRCDESTORNO: TDateTimeField;
    SQLNotaContasReceberFRETA13ID: TStringField;
    SQLNotaContasReceberCTRCCTEMREGRECEBER: TStringField;
    SQLNotaContasReceberCOBRA13ID: TStringField;
    SQLNotaContasReceberCTRCDENVIOCOBRANCA: TDateTimeField;
    SQLNotaContasReceberCTRCA254HIST: TStringField;
    SQLNotaContasReceberDUPLA13ID: TStringField;
    SQLNotaContasReceberAVALA13ID: TStringField;
    SQLNotaContasReceberCTRCCTIPOREGISTRO: TStringField;
    SQLNotaContasReceberHTPDICOD: TIntegerField;
    SQLNotaContasReceberPLCTA15CODDEBITO: TStringField;
    SQLNotaContasReceberCONTA13ID: TStringField;
    SQLNotaContasReceberCTRCA13CTRCAIDCHQ: TStringField;
    SQLSerieEMPRICOD: TIntegerField;
    SQLPedidoNOFIAOBSCORPONF: TStringField;
    TblPedidoNOFIAOBSCORPONF: TStringField;
    EditNossoNroinicial: TEdit;
    Label10: TLabel;
    SQLPedidoPDVD8PLACAVEIC: TStringField;
    TblPedidoPDVD8PLACAVEIC: TStringField;
    SQLPedidoPDVDA15NROPEDPALM: TStringField;
    SQLPedidoOPESICOD: TIntegerField;
    TblPedidoOPESICOD: TIntegerField;
    SQLContasReceberPedidoCTRCCEMITIDOBOLETO: TStringField;
    Label11: TLabel;
    EditDataHoraSaida: TEdit;
    SQLNotaFiscalNOFIDSAIDAENTRADA: TDateTimeField;
    SQLPedidoPDVDN2VLROUTRASDESP: TBCDField;
    TblPedidoPDVDN2VLROUTRASDESP: TBCDField;
    Label12: TLabel;
    ComboSerieNF: TRxDBLookupCombo;
    DSSQLSerieNF: TDataSource;
    SQLSerieNF: TRxQuery;
    SQLSerieNFSERIA5COD: TStringField;
    SQLSerieNFSERIINRONF: TIntegerField;
    SQLSerieNFEMPRICOD: TIntegerField;
    RadioTipo: TRadioGroup;
    CkVariosPedidos: TCheckBox;
    Label13: TLabel;
    ComboRota: TRxDBLookupCombo;
    DSSQLRota: TDataSource;
    SQLRota: TRxQuery;
    SQLRotaROTAICOD: TIntegerField;
    SQLRotaROTAA60NOME: TStringField;
    SQLSerieNFSERIA100PATHEXEIMP: TStringField;
    SQLSerieNFPENDENTE: TStringField;
    SQLSerieNFREGISTRO: TDateTimeField;
    SQLNotaFiscalNOFIA255OBS: TMemoField;
    TblPedidoPDVDA15NROPEDPALM: TStringField;
    SQLBuscas: TRxQuery;
    SQLNotaFiscalItemNFITICST: TIntegerField;
    TblPedidoPDVDIVOLUMES: TIntegerField;
    SQLPedidoPDVDIVOLUMES: TIntegerField;
    SQLNotaFiscalNOFA1ENTRADASAIDA: TStringField;
    SQLNotaFiscalNOFICFINALIDADE: TStringField;
    SQLNotaFiscalItemCFOPA5CODAUX: TStringField;
    chkDataHoraSaida: TCheckBox;
    procedure ImportaItensPedidoVenda(nOPES:TOPERACAO_ID; nCLIE:TCLIE);
    Procedure ImportaItensPedidoVendaJuntaPedidos;
    procedure GravaItensImpressaoNF;
    procedure ImportaContasReceber;
    procedure FormCreate(Sender: TObject);
    procedure BtnSelecionarDocClick(Sender: TObject);
    procedure SaveBoolean(Grid : TDBGrid) ;
    procedure DBGridListaCellClick(Column: TColumn);
    procedure DBGridListaColEnter(Sender: TObject);
    procedure DBGridListaColExit(Sender: TObject);
    procedure DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnGeraNotasClick(Sender: TObject);
    procedure SQLNotaFiscalBeforePost(DataSet: TDataSet);
    procedure SQLNotaFiscalItemBeforePost(DataSet: TDataSet);
    procedure SQLNotaFiscalItemNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    OriginalOptions : TDBGridOptions;
    TotalPedidos, Reducao, TotNFProd, TotNFGeral, TotNFFrete, TotNFOutrasDesp, TotBaseCalcICMS, TotVlrICMS, TotBaseCalcICMSSubst, DescPromPerc,
    TotVlrICMSSubst, TotVlrISSQN, AliquotaISSQN, PesoTotalBruto, PesoTotalLiq, QtdeTotal : Double;
    UFEmpresa, UFCliente : String;
    Item, NFNroInicial, NFNroFinal,NroUltItemNFAnterior, NroUltItemNFAtual, Cont, NossoNroAtual : Integer;
    DataDifPedidoNota : TDate;
    ContinuaNFProxForm, TrocaNota : Boolean;
    Function BuscaIcmsUf(varUF:String; varPessoa:String; varRegime:String):TICMSUF;
    Function BuscaIcms(nCodICMS:String; SitTributaria:String):TICMSUF;
    Function Busca_CFOP(Operacao:Integer; Origem:Integer; CST:Integer):String;
    Function BuscaDadosProduto:TPRODUTO_ID;
    Function BuscaDadosOperacao(nCodOp:String):TOPERACAO_ID;
    Function BuscaDadosCliente: TCLIE;
  public
    { Public declarations }
  end;

var
  FormTelaGeracaoNotasFiscais: TFormTelaGeracaoNotasFiscais;

implementation

uses DataModulo, UnitLibrary, DataModuloTemplate, DataModuloImpNotaFiscal, ExtensoLib;

{$R *.dfm}

procedure TFormTelaGeracaoNotasFiscais.FormCreate(Sender: TObject);
begin
  inherited;
  SQLEmpresa.Open;
  SQLCliente.Open;
  SQLVendedor.Open;
  SQLRota.Open;
  SQLSerie.Open;
  SQLSerieNF.Open;
  De.Date                := Now;
  Ate.Date               := Now;
  DataEmissaoNF.Date     := Now;
  EditDataHoraSaida.Text := FormatDateTime('dd/mm/yyyy hh:mm:ss',Now);
end;

procedure TFormTelaGeracaoNotasFiscais.BtnSelecionarDocClick(
  Sender: TObject);
var i : integer;
begin
  inherited;
  SQLPedido.Close;
  SQLPedidoItem.Close;

  SQLPedido.MacroByName('MEmpresa').Value := '0=0';
  if ComboEmpresa.Value <> '' then
    SQLPedido.MacroByName('MEmpresa').Value := 'EMPRICOD = ' + ComboEmpresa.Value
  else
    begin
      ShowMessage('É necessário escolher uma empresa!');
      exit;
    end;

  if ComboCliente.Value <> '' then
    SQLPedido.MacroByName('MCliente').Value  := 'CLIEA13ID = "' + ComboCliente.Value + '"'
  else
    SQLPedido.MacroByName('MCliente').Value  := '0=0';

  if ComboVendedor.Value <> '' then
    SQLPedido.MacroByName('MVendedor').Value  := 'VENDICOD = '+ ComboVendedor.KeyValue
  else
    SQLPedido.MacroByName('MVendedor').Value  := '0=0';

 { if ComboSerie.Value <> '' then
    SQLPedido.MacroByName('MSerie').Value  := 'SERIA5COD = "' + ComboSerie.Value + '"'
  else
    begin
      ShowMessage('É necessário escolher uma Série!');
      exit;
    end;
  }
  if ComboSerieNF.Value <> '' then
    SQLPedido.MacroByName('MSerie').Value  := 'SERIA5COD = "' + ComboSerieNF.Value + '"'
  else
    begin
      ShowMessage('É necessário escolher uma Série!');
      exit;
    end;

  if ComboRota.Value <> '' then
    SQLPedido.MacroByName('MRota').Value  := 'ROTAICOD = '+ ComboRota.KeyValue
  else
    SQLPedido.MacroByName('MRota').Value  := '0=0';

  if not CheckPeriodo.Checked then
    SQLPedido.MacroByName('MData').Value  := 'PDVDDEMISSAO >= "' + FormatDateTime('mm/dd/yyyy',De.Date)  + '" AND ' +
                                             'PDVDDEMISSAO <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"'
  else
    SQLPedido.MacroByName('MData').Value  := '0=0';

  Case RadioTipo.ItemIndex of
    0 : SQLPedido.MacroByName('MTipo').Value  := 'PDVDCTIPO = "P"';
    1 : SQLPedido.MacroByName('MTipo').Value  := 'PDVDCTIPO = "O"';
  End;

  Case RadioStatus.ItemIndex of
    0 : SQLPedido.MacroByName('MStatus').Value  := 'PDVDCSTATUS = "A"';
    1 : SQLPedido.MacroByName('MStatus').Value  := 'PDVDCSTATUS = "E"';
  End;

  Case RadioOrdem.ItemIndex of
    0 : SQLPedido.MacroByName('MOrdem').Value  := 'PDVDA13ID';
    1 : SQLPedido.MacroByName('MOrdem').Value  := 'CLIEA13ID';
    2 : SQLPedido.MacroByName('MOrdem').Value  := 'PDVDDEMISSAO';
    3 : SQLPedido.MacroByName('MOrdem').Value  := 'PDVDDENTREGA';
  End;

  SQLPedido.Open;
  TblPedido.Close;
  try
    TblPedido.DeleteTable;
    TblPedido.CreateTable;
  except
    TblPedido.CreateTable;
  end;
  TblPedido.Open;

//  BatchMove.Execute;
  TblPedido.DisableControls;
  SQLPedido.First;
  While not SQLPedido.Eof do
    begin
      TblPedido.Append ;
      for i := 0 to SQLPedido.FieldCount-1 do
        if SQLPedido.Fields[i].AsString <> '' then
          TblPedido.FieldByName(SQLPedido.Fields[i].FieldName).AsVariant := SQLPedido.Fields[i].AsVariant ;
      TblPedido.Post ;
      SQLPedido.Next ;
    end ;
  TblPedido.First ;
  TblPedido.EnableControls;

  Progress.Min := 0;
  Progress.Max := TblPedido.RecordCount;
  Progress.Position := 0;
  TotalPedidos := 0;
  TblPedido.First;
  While not TblPedido.Eof Do
    Begin
      TotalPedidos := TotalPedidos + TblPedidoPDVDN2TOTPED.Value;
      TblPedido.Edit;
      Case Radioimportar.ItemIndex of
        0 : TblPedidoImportar.Value := True;
        1 : TblPedidoImportar.Value := False;
      End;
      TblPedido.Post;
      TblPedido.Next;
      Progress.Position := Progress.Position + 1;
      Progress.Update;
    End;
  Progress.Position := 0;
  Progress.Update;
  TblPedido.First;
  DbEditTotalPedidos.Value := TotalPedidos;
  DbEditTotalPedidos.Update;
end;

procedure TFormTelaGeracaoNotasFiscais.SaveBoolean(Grid : TDBGrid) ;
begin
  Grid.SelectedField.Dataset.Edit ;
  Grid.SelectedField.AsBoolean := not Grid.SelectedField.AsBoolean ;
  Grid.SelectedField.Dataset.Post ;
end ;

procedure TFormTelaGeracaoNotasFiscais.DBGridListaCellClick(
  Column: TColumn);
begin
  inherited;
  if DBGridLista.SelectedField.DataType = ftBoolean then
    SaveBoolean(DBGridLista) ;
end;

procedure TFormTelaGeracaoNotasFiscais.DBGridListaColEnter(
  Sender: TObject);
begin
  inherited;
  if DBGridLista.SelectedField.DataType = ftBoolean then
    begin
      OriginalOptions := DBGridLista.Options ;
      DBGridLista.Options := DBGridLista.Options - [dgEditing] ;
    end ;
end;

procedure TFormTelaGeracaoNotasFiscais.DBGridListaColExit(Sender: TObject);
begin
  inherited;
  if DBGridLista.SelectedField.DataType = ftBoolean then
    DBGridLista.Options := OriginalOptions;
end;

procedure TFormTelaGeracaoNotasFiscais.DBGridListaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
Const
  CtrlState : array[Boolean] of Integer = (DFCS_BUTTONCHECK,
                                           DFCS_BUTTONCHECK or DFCS_CHECKED);
begin
  inherited;
  if Column.Field.DataType = ftBoolean then
    begin
      DBGridLista.Canvas.FillRect(Rect);
      DrawFrameControl(DBGridLista.Canvas.Handle,
                       Rect,
                       DFC_BUTTON,
                       CtrlState[Column.Field.AsBoolean]);
    end;
end;

procedure TFormTelaGeracaoNotasFiscais.DBGridListaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if ( Key = VK_SPACE ) and ( DBGridLista.SelectedField.DataType = ftBoolean ) then
    SaveBoolean(DBGridLista);
  if (Key = VK_Return) and (DSTblPedido.DataSet.State in DSEditModes) then
    TblPedido.Post;
end;

procedure TFormTelaGeracaoNotasFiscais.BtnGeraNotasClick(Sender: TObject);
var DescrCFOP : String;
var PulaPedidoCab : Boolean;
    nOPES:TOPERACAO_ID;
    nCLIE:TCLIE;
begin
  inherited;
  if not SQLPedido.IsEmpty then
    begin
      try
        if ComboEmpresa.KeyValue = Null then
          begin
            ShowMessage('Selecione a Empresa');
            ComboEmpresa.SetFocus;
            Exit;
          end;

        //GERA CABEÇALHO DA NOTA
        SQLNotaFiscal.Close;
        SQLNotaFiscal.Open;
        SQLTransportadora.Open;
        SQLVeiculo.Open;
        Progress.Min := 0;
        Progress.Max := TblPedido.RecordCount;
        Progress.Position := 0;
        TblPedido.First;
        SQLPedidoItem.Open;
        SQLNotaFiscalItem.Open;
        NFNroInicial := 0;
        if EditNossoNroinicial.Text <> '' then
          begin
            try
              NossoNroAtual := StrToInt(EditNossoNroinicial.Text);
            except
              Application.ProcessMessages;
              NossoNroAtual := 0;
            end;
          end
        else
          NossoNroAtual := 0;

        if not CkVariosPedidos.Checked then
          begin
            While not TblPedido.Eof Do
              Begin
                if TblPedidoImportar.Value = True then
                  begin

                    UFEmpresa := SQLEmpresaEMPRA2UF.AsString;
                    nCLIE     := BuscaDadosCliente;

                    UFCliente := nCLIE.nCliUF;

                    if UFCliente  = '' then
                      begin
                        ShowMessage('Não foi cadastrado o Estado para o Cliente '+nCLIE.nCliNome+', Verifique!');
                        TblPedido.Last;
                        Abort;
                      end;

                    PesoTotalBruto                        := 0;
                    PesoTotalLiq                          := 0;
                    QtdeTotal                             := 0;
                    SQLNotaFiscal.Append;
                    SQLNotaFiscalEMPRICOD.Value           := DM.SQLTerminalAtivoEMPRICOD.Value;
                    SQLNotaFiscalCLIEA13ID.Value          := TblPedidoCLIEA13ID.Value;
                    SQLNotaFiscalNOFICSTATUS.Value        := 'E';
                    SQLNotaFiscalNOFIDEMIS.Value          := DataEmissaoNF.Date;
                    if chkDataHoraSaida.Checked then
                      SQLNotaFiscalNOFIDSAIDAENTRADA.clear
                    Else
                      SQLNotaFiscalNOFIDSAIDAENTRADA.Value  := StrToDateTime(EditDataHoraSaida.Text);
                    SQLNotaFiscalNOFIA30COMPRADOR.Value   := TblPedidoPDVDA30COMPRADOR.Value;
                    SQLNotaFiscalPDVDA13ID.Value          := TblPedidoPDVDA13ID.Value;
                    SQLNotaFiscalROTAICOD.AsString        := TblPedidoROTAICOD.AsString;
                    SQLNotaFiscalVENDICOD.AsString        := TblPedidoVENDICOD.AsString;
                    SQLNotaFiscalSERIA5COD.Value          := ComboSerieNF.Value;
                    SQLNotaFiscalNOFICFRETEPORCONTA.Value := TblPedidoPDVDCTIPOFRETE.Value;
                    SQLNotaFiscalTRANICOD.AsString        := TblPedidoTRANICOD.AsString;
                    SQLNotaFiscalVEICA13ID.Value          := TblPedidoVEICA13ID.Value;
                    SQLNotaFiscalNOFIA8PLACAVEIC.Value    := TblPedidoPDVD8PLACAVEIC.Value;
                    SQLNotaFiscalNOFICFINALIDADE.AsString := '1';
                    // Alimenta a Operação de Estoque ou Busca do Configurador
                    if TblPedidoOPESICOD.AsString <> '' then
                      SQLNotaFiscalOPESICOD.AsString      := TblPedidoOPESICOD.AsString
                    else
                      SQLNotaFiscalOPESICOD.AsString      := dm.SQLConfigVendaOPESICODNF.AsString;


                    // Busca dados da Operacao de Estoque e carrega Array nOPES
                    nOPES := BuscaDadosOperacao(SQLNotaFiscalOPESICOD.AsString);

                    if UFEmpresa = UFCliente then
                      SQLNotaFiscalCFOPA5COD.AsString      := nOPES.nOpCFOPnoUF
                    else
                      SQLNotaFiscalCFOPA5COD.AsString      := nOPES.nOpCFOPForaUF;
                    // Alimenta o Plano de Contas Padrao q esta ligado a Op Estoque
                    SQLNotaFiscalPLCTA15CODCRED.AsString   := nOPES.nOpPCTACred;
                    // Setar Valores
                    SQLNotaFiscalNOFIN2VLRPRODUTO.Value    := TblPedidoPDVDN2TOTPROD.Value;
                    SQLNotaFiscalNOFIN2VLRDESCPROM.Value   := TblPedidoPDVDN2VLRDESCPROM.Value;
                    DescPromPerc := TblPedidoPDVDN2TOTPED.Value/TblPedidoPDVDN2TOTPROD.Value;
                    DescPromPerc := DescPromPerc*100;
                    DescPromPerc := 100 - DescPromPerc;
                    SQLNotaFiscalNOFIN2VLROUTRASDESP.Value := TblPedidoPDVDN2VLROUTRASDESP.Value;
                    SQLNotaFiscalNOFIN2VLRNOTA.Value       := TblPedidoPDVDN2TOTPED.Value + TblPedidoPDVDN2VLRDESCPROM.Value;
                    SQLNotaFiscalNOFIN2VLRFRETE.Value      := TblPedidoPDVDN2VLRFRETE.Value;
                    SQLNotaFiscalNOFIN2VLRPRODUTO.Value    := TblPedidoPDVDN2TOTPROD.Value;
                    SQLNotaFiscalNOFIN2BASCALCCIPI.Value   := 0;
                    SQLNotaFiscalNOFIN2BASCALCICMS.Value   := 0;
                    SQLNotaFiscalNOFIN2BASCALCSUBS.Value   := 0;
                    SQLNotaFiscalNOFIN2VLRDESC.Value       := 0;
                    SQLNotaFiscalNOFIN2VLRICMS.Value       := 0;
                    SQLNotaFiscalNOFIN2VLRICMSFRETE.Value  := 0;
                    SQLNotaFiscalNOFIN2VLRIPI.Value        := 0;
                    SQLNotaFiscalNOFIN2VLRISSQN.Value      := 0;
                    SQLNotaFiscalNOFIN2VLRSERVICO.Value    := 0;
                    SQLNotaFiscalNOFIN2VLRSEGURO.Value     := 0;
                    SQLNotaFiscalNOFIN2VLRSUBS.Value       := 0;
                    SQLNotaFiscalNOFIN3PESBRUT.Value       := 0;
                    SQLNotaFiscalNOFIN3PESLIQ.Value        := 0;
                    SQLNotaFiscalNOFIN3QUANT.Value         := 0;
                    // Alimenta a Forma de Recto da Venda
                    SQLNotaFiscalPLRCICOD.Value            := TblPedidoPLRCICOD.Value;
                    SQLNotaFiscalPENDENTE.Value            := 'S';
                    SQLNotaFiscalREGISTRO.Value            := Now;
                    SQLNotaFiscalUSUAICOD.Value            := dm.UsuarioAtual;
                    SQLNotaFiscalUSUAA60LOGIN.Value        := TblPedidoUSUAA60LOGIN.value;
                    SQLNotaFiscal.Post;
                    // Alimenta o Nro Inicial e Final para poder imprimir no final
                    // as notas se o usuario confirmar a impressao...
                    if NFNroInicial > 0 then
                      NFNroFinal := SQLNotaFiscalNOFIINUMERO.Value
                    else
                      NFNroInicial := SQLNotaFiscalNOFIINUMERO.Value;

                    // Importa os Itens do Pedido
                    ImportaItensPedidoVenda(nOPES,nCLIE);
                    // Corrigir o Contas Receber
                    ImportaContasReceber;
                    // Alimenta Totais de Impostos
                    SQLNotaFiscal.Edit;
                    // Base e Valor IPI
                    SQLNotaFiscalNOFIN2BASCALCCIPI.Value := 0;
                    SQLNotaFiscalNOFIN2VLRIPI.Value      := 0;
                    // Base e Valor Total ICMS
                    SQLNotaFiscalNOFIN2BASCALCICMS.Value := TotBaseCalcICMS;
                    SQLNotaFiscalNOFIN2VLRICMS.Value     := TotVlrICMS;
                    // Base e Valor Total ICMS Subst
                    SQLNotaFiscalNOFIN2BASCALCSUBS.Value := TotBaseCalcICMSSubst;
                    SQLNotaFiscalNOFIN2VLRSUBS.Value     := TotVlrICMSSubst;
                    // Aliquota e Valor ISSQN
                    SQLNotaFiscalNOFIN2VLRISSQN.Value    := TotVlrISSQN;
                    //  Peso Bruto, Liq e Quantidade
                    SQLNotaFiscalNOFIN3PESBRUT.Value     := PesoTotalBruto;
                    SQLNotaFiscalNOFIN3PESLIQ.Value      := PesoTotalLiq;
                    if (TblPedidoPDVDIVOLUMES.Value = 0) or (TblPedidoPDVDIVOLUMES.isnull) then
                      SQLNotaFiscalNOFIN3QUANT.Value       := QtdeTotal
                    else
                      SQLNotaFiscalNOFIN3QUANT.Value       := TblPedidoPDVDIVOLUMES.Value;

                    SQLNotaFiscalNOFIA255OBS.Value        := TblPedidoPDVDTOBS.Value;
                    SQLNotaFiscalNOFIAOBSCORPONF.Value    := TblPedidoNOFIAOBSCORPONF.Value;

                    SQLNotaFiscalNOFIN2VLRNOTA.Value       := (SQLNotaFiscalNOFIN2VLRNOTA.Value+SQLNotaFiscalNOFIN2VLRFRETE.Value+SQLNotaFiscalNOFIN2VLROUTRASDESP.Value+SQLNotaFiscalNOFIN2VLRSUBS.Value)-SQLNotaFiscalNOFIN2VLRDESCPROM.Value;

                    SQLNotaFiscal.Post;

                    // Gravar Data Primeira Compra e Data Ultima Compra
                    Dm.SQLCliente.Close;
                    Dm.SQLCliente.Sql.Clear;
                    Dm.SQLCliente.SQL.Add('UPDATE CLIENTE SET Pendente="S" , CLIEDPRICOMPRA = "' + FormatDateTime('mm/dd/yyyy',SQLNotaFiscalNOFIDEMIS.Value) + '", CLIEDULTCOMPRA = "' +FormatDateTime('mm/dd/yyyy',SQLNotaFiscalNOFIDEMIS.Value)+ '" Where CLIEA13ID = ' + '"' + SQLNotaFiscalCLIEA13ID.Value + '" and CLIEDPRICOMPRA is null') ;
                    Dm.SQLCliente.ExecSql;
                    // Troca Status do Pedido pra FATURADO e Alimenta a Coluna Importado(SN)
                    SQLPedido.Close;
                    SQLPedido.Sql.Clear;
                    SQLPedido.Sql.Add('UPDATE PEDIDOVENDA SET Pendente="S", PDVDCSTATUS = "F", PDVDCIMPORTADO = "S" Where PDVDA13ID = ' + '"' + TblPedidoPDVDA13ID.Value + '"') ;
                    SQLPedido.ExecSql;
                 end;
                TblPedido.Next;
                Progress.Position := Progress.Position + 1;
                Progress.Update;
              End;
          end
        else
          begin
            // Juntar varios Pedidos em uma nota fiscal até estourar os itens, entao criar a prox.NF
            PulaPedidoCab := False;
            TotNFGeral := 0;
            TotNFProd  := 0;
            TotNFFrete := 0;
            TotNFOutrasDesp := 0;
            While not TblPedido.Eof Do
              Begin
                if (TblPedidoImportar.Value = True) then
                  begin
                    if not PulaPedidoCab then
                      begin
                        PulaPedidoCab := True;
                        if ComboEmpresa.KeyValue <> null then
                          UFEmpresa := DM.SQLLocate('EMPRESA','EMPRICOD','EMPRA2UF',ComboEmpresa.KeyValue)
                        else
                          UFEmpresa := DM.SQLLocate('EMPRESA','EMPRICOD','EMPRA2UF',EmpresaPadrao);
                        UFCliente := DM.SQLLocate('CLIENTE','CLIEA13ID','CLIEA2UFRES','"'+TblPedidoCLIEA13ID.Value+ '"');
                        if UFCliente  = '' then
                          begin
                            ShowMessage('Não foi cadastrado o Estado para o Cliente '+DM.SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','"'+TblPedidoCLIEA13ID.Value+ '"')+
                                        ', Verifique!');
                            TblPedido.Last;
                            Abort;
                          end;

                        if UFEmpresa <> UFCliente then
                          begin
                            SQLICMSUF.Close;
                            SQLICMSUF.MacroByName('MFiltro').asString  := 'ICMUA2UF = '+'"'+UFCliente+'"';
                            SQLICMSUF.Open;
                            if SQLICMSUF.IsEmpty then
                              begin
                                ShowMessage('O UF do cliente não está cadastrado na tabela de Icms por Estado, verifique!');
                                TblPedido.Last;
                                Abort;
                              end;
                            try
                              if SQLIcmsUF.FieldByName('ICMUN2ALIQUOTA').Value = 0 then
                                begin
                                  ShowMessage('A aliquota de Icms está cadastrado com valor Zero na tabela de Icms por Estado, verifique!');
                                  TblPedido.Last;
                                  Abort;
                                end;
                            except
                            end;
                          end;
                        PesoTotalBruto                        := 0;
                        PesoTotalLiq                          := 0;
                        QtdeTotal                             := 0;
                        SQLNotaFiscal.Append;
                        SQLNotaFiscalEMPRICOD.Value           := TblPedidoEMPRICOD.Value;
                        SQLNotaFiscalCLIEA13ID.Value          := TblPedidoCLIEA13ID.Value;
                        SQLNotaFiscalNOFICSTATUS.Value        := 'E';
                        SQLNotaFiscalNOFIDEMIS.Value          := DataEmissaoNF.Date;
                        if chkDataHoraSaida.Checked then
                          SQLNotaFiscalNOFIDSAIDAENTRADA.Clear
                        else
                          SQLNotaFiscalNOFIDSAIDAENTRADA.Value  := StrToDateTime(EditDataHoraSaida.Text);
                        SQLNotaFiscalNOFIA30COMPRADOR.Value   := TblPedidoPDVDA30COMPRADOR.Value;
                        SQLNotaFiscalPDVDA13ID.Value          := TblPedidoPDVDA13ID.Value;
                        SQLNotaFiscalROTAICOD.AsString        := TblPedidoROTAICOD.AsString;
                        SQLNotaFiscalVENDICOD.AsString        := TblPedidoVENDICOD.AsString;
                        SQLNotaFiscalSERIA5COD.Value          := ComboSerieNF.Value;
                        SQLNotaFiscalNOFICFRETEPORCONTA.Value := TblPedidoPDVDCTIPOFRETE.Value;
                        SQLNotaFiscalTRANICOD.AsString        := TblPedidoTRANICOD.AsString;
                        SQLNotaFiscalVEICA13ID.Value          := TblPedidoVEICA13ID.Value;
                        SQLNotaFiscalNOFIA8PLACAVEIC.Value    := TblPedidoPDVD8PLACAVEIC.Value;
                        // Alimenta a Operação de Estoque ou Busca do Configurador
                        if TblPedidoOPESICOD.AsString <> '' then
                          SQLNotaFiscalOPESICOD.AsString      := TblPedidoOPESICOD.AsString
                        else
                          SQLNotaFiscalOPESICOD.AsString      := dm.SQLConfigVendaOPESICODNF.AsString;
                        // Testa se o cliente é de outro estado e alimento o CFOP correto
                        if UFEmpresa = UFCliente then
                          SQLNotaFiscalCFOPA5COD.Value         := DM.SQLLocate('OPERACAOESTOQUE','OPESICOD','CFOPA5CODDENTROUF',SQLNotaFiscalOPESICOD.AsString)
                        else
                          SQLNotaFiscalCFOPA5COD.Value         := DM.SQLLocate('OPERACAOESTOQUE','OPESICOD','CFOPA5CODFORAUF',SQLNotaFiscalOPESICOD.AsString);
                        // Alimenta o Plano de Contas Padrao q esta ligado a Op Estoque
                        SQLNotaFiscalPLCTA15CODCRED.Value      := DM.SQLLocate('OPERACAOESTOQUE','OPESICOD','PLCTA15CODCRED',SQLNotaFiscalOPESICOD.AsString);
                        // Setar Valores
                        SQLNotaFiscalNOFIN2VLRPRODUTO.Value    := 0;
                        SQLNotaFiscalNOFIN2VLRDESCPROM.Value   := 0;
                        DescPromPerc := TblPedidoPDVDN2TOTPED.Value/TblPedidoPDVDN2TOTPROD.Value;
                        DescPromPerc := DescPromPerc*100;
                        DescPromPerc := 100 - DescPromPerc;
                        SQLNotaFiscalNOFIN2VLROUTRASDESP.Value := 0;
                        SQLNotaFiscalNOFIN2VLRNOTA.Value       := 0;
                        SQLNotaFiscalNOFIN2VLRFRETE.Value      := 0;
                        SQLNotaFiscalNOFIN2VLRPRODUTO.Value    := 0;
                        SQLNotaFiscalNOFIN2BASCALCCIPI.Value   := 0;
                        SQLNotaFiscalNOFIN2BASCALCICMS.Value   := 0;
                        SQLNotaFiscalNOFIN2BASCALCSUBS.Value   := 0;
                        SQLNotaFiscalNOFIN2VLRDESC.Value       := 0;
                        SQLNotaFiscalNOFIN2VLRICMS.Value       := 0;
                        SQLNotaFiscalNOFIN2VLRICMSFRETE.Value  := 0;
                        SQLNotaFiscalNOFIN2VLRIPI.Value        := 0;
                        SQLNotaFiscalNOFIN2VLRISSQN.Value      := 0;
                        SQLNotaFiscalNOFIN2VLRSERVICO.Value    := 0;
                        SQLNotaFiscalNOFIN2VLRSEGURO.Value     := 0;
                        SQLNotaFiscalNOFIN2VLRSUBS.Value       := 0;
                        SQLNotaFiscalNOFIN3PESBRUT.Value       := 0;
                        SQLNotaFiscalNOFIN3PESLIQ.Value        := 0;
                        SQLNotaFiscalNOFIN3QUANT.Value         := 0;
                        // Alimenta a Forma de Recto da Venda
                        SQLNotaFiscalPLRCICOD.Value            := TblPedidoPLRCICOD.Value;
                        SQLNotaFiscalPENDENTE.Value            := 'S';
                        SQLNotaFiscalREGISTRO.Value            := Now;
                        SQLNotaFiscalUSUAICOD.Value            := dm.UsuarioAtual;
                        SQLNotaFiscalUSUAA60LOGIN.Value        := TblPedidoUSUAA60LOGIN.value;
                        SQLNotaFiscal.Post;
                        // Alimenta o Nro Inicial e Final para poder imprimir no final
                        // as notas se o usuario confirmar a impressao...
                        if NFNroInicial > 0 then
                          NFNroFinal := SQLNotaFiscalNOFIINUMERO.Value
                        else
                          NFNroInicial := SQLNotaFiscalNOFIINUMERO.Value;

                        // Variaveis usadas na procedure Itens do Pedido
                        Item                 := 0;
                        TotBaseCalcICMS      := 0;
                        TotBaseCalcICMSSubst := 0;
                        TotVlrICMS           := 0;
                        TotVlrICMSSubst      := 0;
                        TotVlrISSQN          := 0;
                      end;
                    // Importa os Itens do Pedido
                    ImportaItensPedidoVendaJuntaPedidos;

                    TotNFGeral := TotNFGeral + TblPedidoPDVDN2TOTPED.Value;
                    TotNFProd  := TotNFProd  + TblPedidoPDVDN2TOTPROD.Value;
                    TotNFFrete := TotNFFrete + TblPedidoPDVDN2VLRFRETE.Value;
                    TotNFOutrasDesp := TotNFOutrasDesp + TblPedidoPDVDN2VLROUTRASDESP.Value;
                    // Troca Status do Pedido pra FATURADO e Alimenta a Coluna Importado(SN)
                    // Troca Status do Pedido pra Pendente(S)
                    SQLPedido.Close;
                    SQLPedido.Sql.Clear;
                    SQLPedido.Sql.Add('UPDATE PEDIDOVENDA SET PDVDCSTATUS = "F",PDVDCIMPORTADO = "S",PENDENTE = "S"'+' Where PDVDA13ID = ' + '"' + TblPedidoPDVDA13ID.Value + '"') ;
                    SQLPedido.ExecSql;
                    // Apaga as Parcelas de Contas a Receber do Pedido Atual, pois nao será mais utilizado
                    SQLPedido.Close;
                    SQLPedido.Sql.Clear;
                    SQLPedido.Sql.Add('DELETE FROM CONTASRECEBER Where PDVDA13ID = ' + '"' + TblPedidoPDVDA13ID.Value + '"') ;
                    SQLPedido.ExecSql;
                  end;
                TblPedido.Next;
                Progress.Position := Progress.Position + 1;
                Progress.Update;
              End;
            // Alimenta Totais de Impostos
            SQLNotaFiscal.Edit;
            // Base e Valor IPI
            SQLNotaFiscalNOFIN2BASCALCCIPI.Value := 0;
            SQLNotaFiscalNOFIN2VLRIPI.Value      := 0;
            // Base e Valor Total ICMS
            SQLNotaFiscalNOFIN2BASCALCICMS.Value := TotBaseCalcICMS;
            SQLNotaFiscalNOFIN2VLRICMS.Value     := TotVlrICMS;
            // Base e Valor Total ICMS Subst
            SQLNotaFiscalNOFIN2BASCALCSUBS.Value := TotBaseCalcICMSSubst;
            SQLNotaFiscalNOFIN2VLRSUBS.Value     := TotVlrICMSSubst;
            // Aliquota e Valor ISSQN
            SQLNotaFiscalNOFIN2VLRISSQN.Value    := TotVlrISSQN;
            //  Peso Bruto, Liq e Quantidade
            SQLNotaFiscalNOFIN3PESBRUT.Value     := PesoTotalBruto;
            SQLNotaFiscalNOFIN3PESLIQ.Value      := PesoTotalLiq;
            //SQLNotaFiscalNOFIN3QUANT.Value       := QtdeTotal;
            SQLNotaFiscalNOFIN3QUANT.Value       := TblPedidoPDVDIVOLUMES.value;

            SQLNotaFiscalNOFIA255OBS.Value        := TblPedidoPDVDTOBS.Value;
            SQLNotaFiscalNOFIAOBSCORPONF.Value    := TblPedidoNOFIAOBSCORPONF.Value;

            SQLNotaFiscalNOFIN2VLRNOTA.Value       := (TotNFGeral+SQLNotaFiscalNOFIN2VLRFRETE.Value+SQLNotaFiscalNOFIN2VLROUTRASDESP.Value+SQLNotaFiscalNOFIN2VLRSUBS.Value)-SQLNotaFiscalNOFIN2VLRDESCPROM.Value;
            SQLNotaFiscalNOFIN2VLRFRETE.Value      := TotNFFrete;
            SQLNotaFiscalNOFIN2VLRPRODUTO.Value    := TotNFProd;
            SQLNotaFiscal.Post;

            // Gravar Data Primeira Compra
            // Gravar Data Ultima Compra
            Dm.SQLCliente.Close;
            Dm.SQLCliente.Sql.Clear;
            Dm.SQLCliente.SQL.Add('UPDATE CLIENTE SET CLIEDPRICOMPRA = "' + FormatDateTime('mm/dd/yyyy',SQLNotaFiscalNOFIDEMIS.Value) + '", CLIEDULTCOMPRA = "'+FormatDateTime('mm/dd/yyyy',SQLNotaFiscalNOFIDEMIS.Value)+'" Where CLIEA13ID = ' + '"' + SQLNotaFiscalCLIEA13ID.Value + '" and CLIEDPRICOMPRA is null') ;
            Dm.SQLCliente.ExecSql;
          end;


        Progress.Position := 0;
        Progress.Update;
        TblPedido.Close;
        SQLPedido.Close;
        if (NFNroInicial > 0) and (NFNroFinal = 0) then
          NFNroFinal := NFNroInicial;

        // Perguntar se o usuario quer imprimir as notas fiscais
        if Pergunta('Sim','*** Deseja imprimir agora as notas de Número '+IntToStr(NFNroInicial)+' até '+IntToStr(NFNroFinal)+' ***') then
          begin
            SQLNotaFiscal.Close;
            SQLNotaFiscal.SQL.Clear;                                        //comboempresa.Value
                                                                            // alterado pelo Judi
            SQLNotaFiscal.SQL.Add('Select * From NotaFiscal Where EMPRICOD ='+Dm.SQLTerminalAtivoEMPRICOD.AsString+' and (%Serie) and (%NROInicial) and (%NROFinal) ORDER BY SERIA5COD, NOFIINUMERO');
            SQLNotaFiscal.MacroByName('Serie').Value      := 'SERIA5COD = "' + ComboSerieNF.Value + '"';
            SQLNotaFiscal.MacroByName('NROInicial').Value := 'NOFIINUMERO >= '+ IntToStr(NFNroInicial);
            SQLNotaFiscal.MacroByName('NROFinal').Value   := 'NOFIINUMERO <= '+ IntToStr(NFNroFinal);
            SQLNotaFiscal.Open;
            SQLTransportadora.Close;
            SQLVeiculo.Close;
            SQLTransportadora.Open;
            SQLVeiculo.Open;
            if SQLNotaFiscal.IsEmpty then
              begin
                ShowMessage('Não existem Notas Fiscais a serem impressas!');
                Exit;
              end;
            try
              //Preenche Cabecalho
              DMImpNotaFiscal := TDMImpNotaFiscal.Create(Self);
              DMImpNotaFiscal.TblNotaFiscal.Close;
              DMImpNotaFiscal.TblNotaFiscalItem.Close;
              DMImpNotaFiscal.TblNotaFiscalItemServico.Close;
              DMImpNotaFiscal.TblNotaFiscalFinanceiro.Close;
              DMImpNotaFiscal.TblNotaFiscalDecreto.Close;
              try
                DMImpNotaFiscal.TblNotaFiscal.DeleteTable ;
                DMImpNotaFiscal.TblNotaFiscal.CreateTable ;
                DMImpNotaFiscal.TblNotaFiscalItem.DeleteTable ;
                DMImpNotaFiscal.TblNotaFiscalItem.CreateTable ;
                DMImpNotaFiscal.TblNotaFiscalItemServico.DeleteTable ;
                DMImpNotaFiscal.TblNotaFiscalItemServico.CreateTable ;
                DMImpNotaFiscal.TblNotaFiscalFinanceiro.DeleteTable ;
                DMImpNotaFiscal.TblNotaFiscalFinanceiro.CreateTable ;
                DMImpNotaFiscal.TblNotaFiscalDecreto.DeleteTable ;
                DMImpNotaFiscal.TblNotaFiscalDecreto.CreateTable ;
              except
                DMImpNotaFiscal.TblNotaFiscal.CreateTable ;
                DMImpNotaFiscal.TblNotaFiscalItem.CreateTable ;
                DMImpNotaFiscal.TblNotaFiscalItemServico.CreateTable ;
                DMImpNotaFiscal.TblNotaFiscalFinanceiro.CreateTable ;
                DMImpNotaFiscal.TblNotaFiscalDecreto.CreateTable ;
              end;
              DMImpNotaFiscal.TblNotaFiscal.Open ;
              DMImpNotaFiscal.TblNotaFiscalItem.Open ;
              DMImpNotaFiscal.TblNotaFiscalItemServico.Open ;
              DMImpNotaFiscal.TblNotaFiscalFinanceiro.Open ;
              DMImpNotaFiscal.TblNotaFiscalDecreto.Open ;
            except
              Application.ProcessMessages;
            end;
            SQLNotaFiscal.First;
            while not SQLNotaFiscal.Eof do
              begin
                Cont := 0;
                NroUltItemNFAtual := 0;
                NroUltItemNFAnterior := 0;
                ContinuaNFProxForm := False;
                SQLNotaFiscalItem.Close;
                SQLNotaFiscalItem.MacroByName('Filtro').Value := 'NOFIA13ID = "'+SQLNotaFiscalNOFIA13ID.AsString+'"';
                SQLNotaFiscalItem.Open;

                if SQLnotafiscalitem.RecordCount > dm.SQLConfigVendaCFVEINROITENSNF.Value then
                  ContinuaNFProxForm := True;
                TrocaNota := False;
                while not TrocaNota do
                  begin
                    DMImpNotaFiscal.TblNotaFiscal.Append ;
                    DMImpNotaFiscal.TblNotaFiscalNumeroNF.AsString               := SQLNotaFiscalNOFIINUMERO.AsString;
                    DMImpNotaFiscal.TblNotaFiscalNumeroNFSeq.AsString            := IntToStr(Cont);
                    DMImpNotaFiscal.TblNotaFiscalX_Saida.asVariant               := 'X';
                    DMImpNotaFiscal.TblNotaFiscalX_Entrada.asVariant             := '';
                    //DADOS DO EMITENTE
                    DMImpNotaFiscal.TblNotaFiscalEmitente_CGC.asVariant          := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA14CGC',SQLNotaFiscalEMPRICOD.AsString);
                    DMImpNotaFiscal.TblNotaFiscalEmitente_InscEst.asVariant      := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA20IE',SQLNotaFiscalEMPRICOD.AsString);
                    DMImpNotaFiscal.TblNotaFiscalEmitenteEndereco.asString       := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA60END',SQLNotaFiscalEMPRICOD.AsString) + ' - '+
                                                                                    dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA60BAI',SQLNotaFiscalEMPRICOD.AsString) + ' - '+
                                                                                    dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA60CID',SQLNotaFiscalEMPRICOD.AsString) + ' - '+
                                                                                    dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA2UF',SQLNotaFiscalEMPRICOD.AsString);
                    DMImpNotaFiscal.TblNotaFiscalEmitenteCEP.asString            := 'CEP: ' + dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA8CEP',SQLNotaFiscalEMPRICOD.AsString);
                    DMImpNotaFiscal.TblNotaFiscalEmitenteFone.asString           := 'Fone: '+ dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA20FONE',SQLNotaFiscalEMPRICOD.AsString);
                    //DADOS TRIBUTARIOS
                    DMImpNotaFiscal.TblNotaFiscalNumeroNF.AsVariant              := FormatFloat('00000',SQLNotaFiscalNOFIINUMERO.asFloat);
                    DMImpNotaFiscal.TblNotaFiscalCFOP_Codigo.asVariant           := SQLNotaFiscalCFOPA5COD.asVariant;
                    DMImpNotaFiscal.TblNotaFiscalCFOP_Descricao.AsString         := dm.SQLLocate('CFOP','CFOPA5COD','CFOPA60DESCR','"'+SQLNotaFiscalCFOPA5COD.AsString+'"');
                    //DADOS DO DESTINATARIO
                    if SQLNotaFiscalCLIEA13ID.Value <> '' then
                      DMImpNotaFiscal.TblNotaFiscalIdCliente.AsVariant           := SQLNotaFiscalCLIEA13ID.Value;
                    DMImpNotaFiscal.TblNotaFiscalDestinatario_RazaoSoc.asVariant := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','"'+SQLNotaFiscalCLIEA13ID.AsString+'"');
                    DMImpNotaFiscal.TblNotaFiscalDestinatario_CGC.asVariant      := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA14CGC','"'+SQLNotaFiscalCLIEA13ID.AsString+'"');
                    if DMImpNotaFiscal.TblNotaFiscalDestinatario_CGC.AsString = '' then
                      DMImpNotaFiscal.TblNotaFiscalDestinatario_CGC.asVariant    := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA11CPF','"'+SQLNotaFiscalCLIEA13ID.AsString+'"');
                    DMImpNotaFiscal.TblNotaFiscalDestinatario_InscEst.asVariant  := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA20IE','"'+SQLNotaFiscalCLIEA13ID.AsString+'"');
                    DMImpNotaFiscal.TblNotaFiscalDestinatario_Ender.asVariant    := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA60ENDRES','"'+SQLNotaFiscalCLIEA13ID.AsString+'"');
                    DMImpNotaFiscal.TblNotaFiscalDestinatario_Bairro.asVariant   := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA60BAIRES','"'+SQLNotaFiscalCLIEA13ID.AsString+'"');
                    DMImpNotaFiscal.TblNotaFiscalDestinatario_Cep.asVariant      := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA8CEPRES','"'+SQLNotaFiscalCLIEA13ID.AsString+'"');
                    DMImpNotaFiscal.TblNotaFiscalDestinatario_Cidade.asVariant   := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA60CIDRES','"'+SQLNotaFiscalCLIEA13ID.AsString+'"');
                    DMImpNotaFiscal.TblNotaFiscalDestinatario_FoneFax.asVariant  := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA15FONE1','"'+SQLNotaFiscalCLIEA13ID.AsString+'"');
                    DMImpNotaFiscal.TblNotaFiscalDestinatario_UF.asVariant       := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA2UFRES','"'+SQLNotaFiscalCLIEA13ID.AsString+'"');
                    DMImpNotaFiscal.TblNotaFiscalData_Emissao.AsVariant          := SQLNotaFiscalNOFIDEMIS.AsString;
                    DMImpNotaFiscal.TblNotaFiscalDataHora_Saida.AsVariant        := SQLNotaFiscalNOFIDSAIDAENTRADA.AsString;
                    DMImpNotaFiscal.TblNotaFiscalPedidoVendaNumero.AsString      := SQLNotaFiscalPDVDA13ID.asString;
                    DMImpNotaFiscal.TblNotaFiscalVendedor.AsString               := SQLNotaFiscalVENDICOD.AsString + ' - ' + dm.SQLLocate('VENDEDOR','VENDICOD','VENDA60NOME',SQLNotaFiscalVENDICOD.AsString);
                    DMImpNotaFiscal.TblNotaFiscalOrdemCompraClienteNro.asString  := SQLNotaFiscalNOFIA30NROPEDCOMP.asString;
                    DMImpNotaFiscal.TblNotaFiscalCompradorCliente.asString       := SQLNotaFiscalNOFIA30COMPRADOR.AsString;
                    DMImpNotaFiscal.TblNotaFiscal.Post ;
                    // Lancar Itens
                    GravaItensImpressaoNF;
                    Cont := Cont+1;
                  end;
                  //LANCA ITEM COMO DESCONTO NA NOTA FISCAL APOS O ULTIMO ITEM SER IMPRESSO
                  if (SQLNotaFiscalNOFIN2VLRDESCPROM.AsFloat > 0) or (SQLNotaFiscalNOFIN2VLRDESC.AsFloat > 0) then
                    begin
                      DMImpNotaFiscal.TblNotaFiscalItem.Append;
                      DMImpNotaFiscal.TblNotaFiscalItemCodigo.AsString    := '****';
                      DMImpNotaFiscal.TblNotaFiscalItemDescricao.AsString := 'DESCONTO INCONDICIONAL  R$ ' + FormatFloat('###0.00',SQLNotaFiscalNOFIN2VLRDESC.AsFloat + SQLNotaFiscalNOFIN2VLRDESCPROM.AsFloat);
                      DMImpNotaFiscal.TblNotaFiscalItem.Post;
                    end;
                  // Lancar Desconto apos o Ultimo item da Nota
                  if SQLNotaFiscalNOFIAOBSCORPONF.AsString <> '' then
                    begin
                      DMImpNotaFiscal.TblNotaFiscalItem.Append;
                      DMImpNotaFiscal.TblNotaFiscalItemCodigo.AsString    := '****';
                      DMImpNotaFiscal.TblNotaFiscalItemDescricao.AsString := COPY(SQLNotaFiscalNOFIAOBSCORPONF.AsString,1,200);
                      DMImpNotaFiscal.TblNotaFiscalItem.Post;
                    end;
                  // Lancar Totais da Nota
                  DMImpNotaFiscal.TblNotaFiscal.Edit;
                  DMImpNotaFiscal.TblNotaFiscalBaseCalc_ICMS.asVariant           := SQLNotaFiscalNOFIN2BASCALCICMS.asVariant;
                  if dm.SQLEmpresaEMPRCLUCROREAL.Value = 'S' then
                    DMImpNotaFiscal.TblNotaFiscalValor_ICMS.asVariant              := SQLNotaFiscalNOFIN2VLRICMS.asVariant
                  else
                    DMImpNotaFiscal.TblNotaFiscalValor_ICMS.AsString               := '';
                  DMImpNotaFiscal.TblNotaFiscalBaseCalc_ICMS_Subts.asVariant     := SQLNotaFiscalNOFIN2BASCALCSUBS.asVariant;
                  DMImpNotaFiscal.TblNotaFiscalValor_ICMS_Subts.asVariant        := SQLNotaFiscalNOFIN2VLRSUBS.asVariant;

                  DMImpNotaFiscal.TblNotaFiscalValor_Produtos.asVariant          := SQLNotaFiscalNOFIN2VLRPRODUTO.asVariant;
                  DMImpNotaFiscal.TblNotaFiscalValor_Frete.asVariant             := SQLNotaFiscalNOFIN2VLRFRETE.asVariant;
                  DMImpNotaFiscal.TblNotaFiscalValor_Seguro.asVariant            := SQLNotaFiscalNOFIN2VLRSEGURO.asVariant;
                  DMImpNotaFiscal.TblNotaFiscalOutras_Despesas.asVariant         := SQLNotaFiscalNOFIN2VLROUTRASDESP.asVariant;
                  DMImpNotaFiscal.TblNotaFiscalValor_IPI.asVariant               := SQLNotaFiscalNOFIN2VLRIPI.asVariant;
                  DMImpNotaFiscal.TblNotaFiscalValor_Nota.asVariant              := SQLNotaFiscalNOFIN2VLRNOTA.asVariant;
                  DMImpNotaFiscal.TblNotaFiscalDestinatarioCodSistema.AsString   := SQLNotaFiscalCLIEA13ID.AsString;
                  If SQLNotaFiscalNOFICFRETEPORCONTA.Value = 'C' Then
                    DMImpNotaFiscal.TblNotaFiscalFretePorConta.Value             := 1
                  Else
                    DMImpNotaFiscal.TblNotaFiscalFretePorConta.Value             := 2;

                  if SQLNotaFiscalVEICA13ID.AsString <> '' then
                    begin
                      DMImpNotaFiscal.TblNotaFiscalTransportadora_RazaoSoc.asString  := SQLNotaFiscalTransportadoraLookup.asVariant+'-'+DM.SQLLocate('VEICULO','VEICA13ID','VEICA3OMOTORISTA','"'+SQLNotaFiscalVEICA13ID.Value+'"');
                      DMImpNotaFiscal.TblNotaFiscalVeiculo_UF.asVariant              := SQLVeiculoVEICA2UFPLACA.AsString;
                    end
                  else
                    begin
                      DMImpNotaFiscal.TblNotaFiscalTransportadora_RazaoSoc.asVariant := SQLNotaFiscalTransportadoraLookup.asVariant;
                      DMImpNotaFiscal.TblNotaFiscalVeiculo_UF.asVariant              := '';
                    end;
                  DMImpNotaFiscal.TblNotaFiscalVeiculo_Placa.asVariant           := SQLNotaFiscalNOFIA8PLACAVEIC.asVariant;
                  DMImpNotaFiscal.TblNotaFiscalTransportadora_CGC.asVariant      := SQLNotaFiscalTransportadoraCGCLookUp.AsVariant;
                  DMImpNotaFiscal.TblNotaFiscalTransportadora_Ender.asVariant    := SQLNotaFiscalTransportadoraEnderecoLookUp.asVariant;
                  DMImpNotaFiscal.TblNotaFiscalTransportadora_Cidade.asVariant   := SQLNotaFiscalTransportadoraCidadeLookUp.asVariant;
                  DMImpNotaFiscal.TblNotaFiscalTransportadora_UF.asVariant       := SQLNotaFiscalTransportadoraEstadoLookUp.asVariant;
                  DMImpNotaFiscal.TblNotaFiscalTransportadora_InscEst.asVariant  := SQLNotaFiscalTransportadoraIELookUp.asVariant;
                  DMImpNotaFiscal.TblNotaFiscalQuantidade.asVariant              := SQLNotaFiscalNOFIN3QUANT.asVariant;
                  DMImpNotaFiscal.TblNotaFiscalMarca.AsVariant                   := SQLNotaFiscalNOFIA15MARCA.AsVariant;
                  DMImpNotaFiscal.TblNotaFiscalEspecie.AsVariant                 := SQLNotaFiscalNOFIA20ESPECIE.AsVariant;
                  DMImpNotaFiscal.TblNotaFiscalNumero.asVariant                  := SQLNotaFiscalNOFIINUMERO.asVariant;
                  DMImpNotaFiscal.TblNotaFiscalPeso_Bruto.asVariant              := SQLNotaFiscalNOFIN3PESBRUT.asVariant;
                  DMImpNotaFiscal.TblNotaFiscalPeso_Liquido.asVariant            := SQLNotaFiscalNOFIN3PESLIQ.asVariant;
                  DMImpNotaFiscal.TblNotaFiscalDadosAdicionais.asVariant         := Null;
                  DMImpNotaFiscal.TblNotaFiscalValor_ISSQN.asVariant             := SQLNotaFiscalNOFIN2VLRISSQN.asVariant;
                  If DMImpNotaFiscal.TblNotaFiscalValor_ISSQN.AsFloat > 0 Then
                    DMImpNotaFiscal.TblNotaFiscalAliq_ISSQN.asVariant            := DM.SQLConfigVendaCFVEN3ALIQISSQN.asVariant;
                  DMImpNotaFiscal.TblNotaFiscalValor_Servicos.asVariant          := SQLNotaFiscalNOFIN2VLRSERVICO.asVariant;
                  DMImpNotaFiscal.TblNotaFiscalOBS.asString                      := SQLNotaFiscalNOFIA255OBS.asString;
                  DMImpNotaFiscal.TblNotaFiscalPlanoRecebimento.AsString         := dm.SQLLocate('PLANORECEBIMENTO','PLRCICOD','PLRCA60DESCR',SQLNotaFiscalPLRCICOD.AsString);

                  ValorExtenso(VExt,DMImpNotaFiscal.TblNotaFiscalValor_Nota.Value, '', '', 1, 254, ' ',3);
                  DMImpNotaFiscal.TblNotaFiscalValorExtenso.AsString             := VExt[0];
                  DMImpNotaFiscal.TblNotaFiscal.Post;
                  // Preenche Financeiro
                  SQLNotaContasReceber.Close;
                  SQLNotaContasReceber.MacroByName('Filtro').AsString := 'NOFIA13ID = "'+SQLNotaFiscalNOFIA13ID.AsString+'"';
                  SQLNotaContasReceber.Open;
                  SQLNotaContasReceber.First;
                  While Not SQLNotaContasReceber.Eof Do
                    Begin
                      DMImpNotaFiscal.TblNotaFiscalFinanceiro.Append;
                      DMImpNotaFiscal.TblNotaFiscalFinanceiroNumeroNF.AsString    := DMImpNotaFiscal.TblNotaFiscalNumeroNF.AsString;
                      DMImpNotaFiscal.TblNotaFiscalFinanceiroNumeroNFSeq.AsString := DMImpNotaFiscal.TblNotaFiscalNumeroNFSeq.AsString;
                      DMImpNotaFiscal.TblNotaFiscalFinanceiroParcela.asVariant    := SQLNotaContasReceberCTRCINROPARC.asVariant;
                      DMImpNotaFiscal.TblNotaFiscalFinanceiroVencimento.asVariant := SQLNotaContasReceberCTRCDVENC.asVariant;
                      DMImpNotaFiscal.TblNotaFiscalFinanceiroValor.asVariant      := SQLNotaContasReceberCTRCN2VLR.asVariant;
                      DMImpNotaFiscal.TblNotaFiscalFinanceiroNumero.asString      := DMImpNotaFiscal.TblNotaFiscalNumeroNF.AsString + '-' + SQLNotaContasReceberCTRCINROPARC.asString;
                      DMImpNotaFiscal.TblNotaFiscalFinanceiro.Post;
                      SQLNotaContasReceber.Next;
                    End;
                  // imprime a Nota
                 if SQLSerieNFSERIA100PATHEXEIMP.Value <> '' then
                   begin
                     if FileExists(SQLSerieNFSERIA100PATHEXEIMP.Value) then
                       WinExec(PChar(SQLSerieNFSERIA100PATHEXEIMP.Value+' '+SQLNotaFiscalNOFIA13ID.asString),SW_SHOW);
                   end
                 else
                   begin
                     if FileExists(Dm.PathAplicacao + '\NFRDPrint.exe') then
                       WinExec(PChar(DM.PathAplicacao + '\NFRDPrint.exe '+SQLNotaFiscalNOFIA13ID.asString),SW_SHOW)
                     else
                       begin
                         if Pergunta('Nao','Visualizar a Nota Fiscal em Tela?') then
                           DMImpNotaFiscal.Report.Output   := toWindow
                         else
                           DMImpNotaFiscal.Report.Output   := toPrinter;

                         DMImpNotaFiscal.Report.ReportName        := DM.SQLTerminalAtivoTERMTPATHNF.AsString;
                         DMImpNotaFiscal.Report.ReportTitle       := 'Impressão de Nota Fiscal';
                         DMImpNotaFiscal.Report.WindowStyle.Title := 'Impressão de Nota Fiscal';
                         DMImpNotaFiscal.Report.Execute;
                       end;
                   end;
                 // Apaga os Arquivos Temporarios
                 while not DMImpNotaFiscal.TblNotaFiscal.eof do
                   DMImpNotaFiscal.TblNotaFiscal.Delete;
                 while not DMImpNotaFiscal.TblNotaFiscalItem.eof do
                   DMImpNotaFiscal.TblNotaFiscalItem.Delete;
                 while not DMImpNotaFiscal.TblNotaFiscalItemServico.eof do
                   DMImpNotaFiscal.TblNotaFiscalItemServico.Delete;
                 while not DMImpNotaFiscal.TblNotaFiscalFinanceiro.eof do
                   DMImpNotaFiscal.TblNotaFiscalFinanceiro.Delete;
                 while not DMImpNotaFiscal.TblNotaFiscalDecreto.eof do
                   DMImpNotaFiscal.TblNotaFiscalDecreto.Delete;
                // Vai pra prox nota
                SQLNotaFiscal.Next;
              end;
          end;
        // Atualizar o Grid
        BtnSelecionarDoc.Click;
      except
        Application.ProcessMessages;
      end;
    end
  else
    begin
      ShowMessage('Não existem pedidos a serem importados, revise os filtros!');
    end;
  SQLNotaFiscal.Close;
  SQLNotaFiscalItem.Close;
  SQLPedido.Close;
  SQLPedidoItem.Close;
  SQLBuscas.Close;
end;

procedure TFormTelaGeracaoNotasFiscais.SQLNotaFiscalBeforePost(
  DataSet: TDataSet);
var Erro : Boolean;
begin
  inherited;
  // Gerar o ID da Nota
  if DataSet.State in [DSInsert] then
    DM.CodigoAutomatico('NOTAFISCAL',Nil,DataSet,2,0);
  // Gerar o Nro da Nota Fiscal
  SQLSerieNF.Close;
  // Alterado pelo Judi
  SQLSerieNF.MacroByName('Empresa').value := 'EMPRICOD  = '+ DM.SQLTerminalAtivoEMPRICOD.asstring;//ComboEmpresa.Value;
  SQLSerieNF.MacroByName('Serie').Value   := 'SERIA5COD = "'+ SQLNotaFiscalSERIA5COD.asString+'"';
  SQLSerieNF.Open;
  Erro := True;
  if DataSet.State in [DSInsert] then
    begin
      while Erro do
        try
          // Pega o nro atual
          SQLNotaFiscalNOFIINUMERO.Value := SQLSerieNFSERIINRONF.Value;
          // Cria o prox numero de NF
          SQLSerieNF.Edit;
          SQLSerieNFSERIINRONF.Value       := SQLSerieNFSERIINRONF.asInteger + 1;
          SQLSerieNFPENDENTE.asString      := 'S';
          SQLSerieNFREGISTRO.asDateTime    := Now;
          SQLSerieNF.Post;
          If SQLNotaFiscalNOFA1ENTRADASAIDA.IsNull Then
            SQLNotaFiscalNOFA1ENTRADASAIDA.AsString := DM.SQLLocate('OPERACAOESTOQUE','OPESICOD','OPERACAO_E_S',SQLNotaFiscalOPESICOD.AsString);
          Erro := False;
        except
          If SQLSerieNF.State in DsEditModes Then SQLSerieNF.Cancel;
          Erro:=True;
        end;
    end;
end;

procedure TFormTelaGeracaoNotasFiscais.SQLNotaFiscalItemBeforePost(
  DataSet: TDataSet);
begin
{  inherited;
  if DataSet.State in [DSInsert] then
    DM.CodigoAutomatico('NOTAFISCALITEM',Nil,DataSet,0,1);
    }
end;

Procedure TFormTelaGeracaoNotasFiscais.ImportaItensPedidoVenda(nOPES:TOPERACAO_ID; nCLIE:TCLIE);
var CalculaSubst, CalculaIPI, CalculaICMS, FisJur, Situacao: String;
    nPRODS:TPRODUTO_ID;
    nICMS:TICMSUF;
begin
  Item                 := 0;
  TotBaseCalcICMS      := 0;
  TotBaseCalcICMSSubst := 0;
  TotVlrICMS           := 0;
  TotVlrICMSSubst      := 0;
  TotVlrISSQN          := 0;

    // verifica a quem a operacao de estoque esta vinculada
  if nOPES.nOpOrigemDestino = 'C' then // se operação vinculada a clientes
    FisJur := nCLIE.nCliPessoa
  Else if nOPES.nOpOrigemDestino = 'F' then // operacao vinculada a fornecedor
  begin
    FisJur := SQLLocate('FORNECEDOR','FORNICOD','FORNCFISJURID','"'+SQLPedido.FieldByName('CLIEA13ID').AsString+'"')
  end Else // se for vinculada a empresa sempre é juridica
    FisJur := 'J' ;

  {SQLNotaFiscalItem.Close;
  SQLNotaFiscalItem.Open;
  SQLPedidoItem.Close;
  SQLPedidoItem.Open;}

  SQLPedidoItem.First;
  While not SQLPedidoItem.Eof do
    begin
      nPRODS  := BuscaDadosProduto;

      Item := Item + 1;
      SQLNotaFiscalItem.Append;
      SQLNotaFiscalItemNOFIA13ID.Value          := SQLNotaFiscalNOFIA13ID.AsString;
      SQLNotaFiscalItemNFITIITEM.Value          := Item;
      SQLNotaFiscalItemCFOPA5CODAUX.AsString    := Busca_CFOP(SQLNotaFiscalOPESICOD.AsInteger, nProds.nProdOrigem, StrToInt(nPRODS.nProdSitTrib));
      SQLNotaFiscalItemPDVDA13ID.Value          := TblPedidoPDVDA13ID.Value;
      SQLNotaFiscalItemPRODICOD.Value           := SQLPedidoItemPRODICOD.Value;
      SQLNotaFiscalItemNFITN3QUANT.Value        := SQLPedidoItemPVITN3QUANT.Value;
      SQLNotaFiscalItemNFITN2VLRUNIT.Value      := SQLPedidoItemPVITN2VLRUNIT.Value;
      SQLNotaFiscalItemNFITN2PERCDESC.AsVariant := SQLPedidoItemPVITN2PERCDESC.AsVariant;
      SQLNotaFiscalItemNFITN2VLRDESC.AsVariant  := SQLPedidoItemPVITN2VLRDESC.AsVariant;
      SQLNotaFiscalItemNFITN2VLRLUCRO.asFloat   := (SQLNotaFiscalItemNFITN2VLRUNIT.asFloat -
                                                    nPRODS.nProdVlrCmpra)
                                                    * SQLNotaFiscalItemNFITN3QUANT.asFloat;
      SQLNotaFiscalItemNFITN2VLRDESC.asFloat    := (SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat *
                                                    SQLNotaFiscalItemNFITN3QUANT.asFloat) *
                                                   (SQLNotaFiscalItemNFITN2PERCDESC.asFloat / 100);
      // Produto é Servico
      if nPRODS.nProdServico = 'S' then
        begin
          SQLNotaFiscalItemNFITN2PERCISSQN.asFloat  := DM.SQLConfigVendaCFVEN3ALIQISSQN.asFloat;
          SQLNotaFiscalItemNFITN2VLRISSQN.asFloat   := (SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat*SQLNotaFiscalItemNFITN3QUANT.asFloat)-SQLNotaFiscalItemNFITN2VLRDESC.asFloat*(SQLNotaFiscalItemNFITN2PERCISSQN.asFloat / 100);
        end
      else
        begin
          // se a op.estoque estiver marcada para calcular IPI e o campo Perc IPI no cad.produtos for maior que zero.
          if FisJur = 'J' then
          begin
            CalculaIPI  := nOPES.nOpCalcIPI;  //DM.SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCCALCIPI',SQLPEDIDOOPESICOD.AsString);
            CalculaICMS := nOPES.nOpCalcICMS; //DM.SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCCALCICMS',SQLNotaFiscalOPESICOD.AsString);
            CalculaSubst:= nOPES.nOpCalcST; // DM.SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCCALCSUBST',SQLNotaFiscalOPESICOD.AsString);
          end else
          begin
            CalculaIPI  := nOPES.nOpCalcIPIFis; //DM.SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCCALCIPIFIS',SQLNotaFiscalOPESICOD.AsString);
            CalculaICMS := nOPES.nOpCalcICMSFis; //DM.SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCCALCICMSFIS',SQLNotaFiscalOPESICOD.AsString);
            CalculaSubst:= nOPES.nOpCalcSTFis; //DM.SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCCALCSUBSTFIS',SQLNotaFiscalOPESICOD.AsString);
          end;

          if CalculaIPI = 'S' then
            SQLNotaFiscalItemNFITN2PERCIPI.Value   := nPRODS.nProdPercIPI //DM.SQLLocate('PRODUTO','PRODICOD','PRODN3PERCIPI',SQLNotaFiscalItemPRODICOD.AsString)
          else
            SQLNotaFiscalItemNFITN2PERCIPI.Value   := 0;

          if (CalculaIPI = 'S') and (SQLNotaFiscalItemNFITN2PERCIPI.AsFloat > 0) then
            SQLNotaFiscalItemNFITN2VLRIPI.asFloat     := (SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat*SQLNotaFiscalItemNFITN3QUANT.asFloat)-SQLNotaFiscalItemNFITN2VLRDESC.asFloat*
                                                         (SQLNotaFiscalItemNFITN2PERCIPI.asFloat/100);

         // Busca as Aliquotas de ICMS
          if UFEmpresa = UFCliente then
            nICMS := BuscaIcms(nPRODS.nProdIcmsICOD, nPRODS.nProdSitTrib)
          else
            nICMS := BuscaIcmsUf(UFCliente, FisJur, nCLIE.nCliRegime);

          If FisJur = 'F' then
            Situacao := nICMS.nSTFisica
          else
            Situacao := nICMS.nSTJuridica;
          // caso nenhuma situação tenha sido encontrada, pega a do Produto
          if Situacao = '' then
            Situacao := nPRODS.nProdSitTrib;

          SQLNotaFiscalItemNFITICST.AsString := Situacao;

          if CalculaICMS = 'S' then
          begin
            if (Situacao='0') or (Situacao='10') or (Situacao='20') or (Situacao='51') or (Situacao='70') or (Situacao='90') or (Situacao='900') then
            begin
              SQLNotaFiscalItemNFITN2PERCICMS.Value    := nICMS.nICMS; //DM.SQLLocate('ICMS','ICMSICOD','ICMSN2ICMSM1',DM.SQLLocate('PRODUTO','PRODICOD','ICMSICOD',SQLNotaFiscalItemPRODICOD.AsString));
              SQLNotaFiscalItemNFITN2PERCREDUCAO.Value := nICMS.nRED_ICMS;  //DM.SQLLocate('ICMS','ICMSICOD','ICMSN2REDBASEICMS',DM.SQLLocate('PRODUTO','PRODICOD','ICMSICOD',SQLNotaFiscalItemPRODICOD.AsString));

              SQLNotaFiscalItemNFITN2BASEICMS.AsFloat  := (SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat*SQLNotaFiscalItemNFITN3QUANT.asFloat)-SQLNotaFiscalItemNFITN2VLRDESC.asFloat + SQLNotaFiscalItemNFITN2VLRFRETE.AsFloat;
              // Calcula a Reduçao de Base de Calculo - utilizar variavel para quando a oper.estoq. calsula somente Subst.Tribut.
              if (SQLNotaFiscalItemNFITN2PERCREDUCAO.Value > 0) then
                  SQLNotaFiscalItemNFITN2BASEICMS.asFloat := (SQLNotaFiscalItemNFITN2BASEICMS.AsFloat) * (SQLNotaFiscalItemNFITN2PERCREDUCAO.Value / 100);
              SQLNotaFiscalItemNFITN2VLRICMS.asFloat := SQLNotaFiscalItemNFITN2BASEICMS.asFloat * (nICMS.nICMS / 100);
            end;
          end;

          // Calcula a substituicao tributaria
          If (CalculaSubst = 'S') Then
          Begin
            if (Situacao='10') or (Situacao='30') or (Situacao='70') or (Situacao='90') or (Situacao='201') or (Situacao='202') or (Situacao='203') or (Situacao='900') then
            begin
                // se a aliquotainterna nao foi especificada pega o percentual de icms normal (aliquota icms)
              if (FloatToSTr(nICMS.nICMS_INTERNO) = '') or (FloatToSTr(nICMS.nICMS_INTERNO) = '0') then
                nICMS.nICMS_INTERNO := nICMS.nICMS;

              If SQLNotaFiscalItemNFITN2PERCSUBS.asFloat > 0 Then
              Begin
                SQLNotaFiscalItemNFITN2BASESUBS.asFloat   := (((SQLNotaFiscalItemNFITN2BASEICMS.value + SQLNotaFiscalItemNFITN2VLRIPI.value + SQLNotaFiscalItemNFITN2VLRFRETE.value)+(SQLNotaFiscalItemNFITN2BASEICMS.value + SQLNotaFiscalItemNFITN2VLRIPI.value + SQLNotaFiscalItemNFITN2VLRFRETE.value) * (SQLNotaFiscalItemNFITN2PERCSUBS.asFloat/100)) ) ;
                SQLNotaFiscalItemNFITN2VLRSUBS.asFloat    := (SQLNotaFiscalItemNFITN2BASESUBS.asFloat  * (SQLNotaFiscalItemNFITN2PERCICMS.asFloat / 100)) - SQLNotaFiscalItemNFITN2VLRICMS.asFloat;
              End Else
              Begin
                SQLNotaFiscalItemNFITN2BASESUBS.asFloat   := 0;
                SQLNotaFiscalItemNFITN2VLRSUBS.asFloat    := 0;
              End;
            End;
          End;

          QtdeTotal      := QtdeTotal      + SQLNotaFiscalItemNFITN3QUANT.asFloat;
          PesoTotalBruto := PesoTotalBruto + StrToFloat(DM.SQLLocate('PRODUTO','PRODICOD','PRODN3PESOBRUTO',SQLNotaFiscalItemPRODICOD.AsString)) * SQLNotaFiscalItemNFITN3QUANT.asFloat;
          PesoTotalLiq   := PesoTotalLiq   + StrToFloat(DM.SQLLocate('PRODUTO','PRODICOD','PRODN3PESOLIQ',SQLNotaFiscalItemPRODICOD.AsString)) * SQLNotaFiscalItemNFITN3QUANT.asFloat;
        end;
      SQLNotaFiscalItem.Post;
      // alimenta variaveis com totais de impostos por item
      TotBaseCalcICMS := TotBaseCalcICMS + SQLNotaFiscalItemNFITN2BASEICMS.AsFloat;
      TotVlrICMS      := TotVlrICMS + SQLNotaFiscalItemNFITN2VLRICMS.AsFloat;
      TotBaseCalcICMSSubst := TotBaseCalcICMSSubst + SQLNotaFiscalItemNFITN2BASESUBS.AsFloat;
      TotVlrICMSSubst      := TotVlrICMSSubst + SQLNotaFiscalItemNFITN2VLRSUBS.AsFloat;
      TotVlrISSQN          := SQLNotaFiscalItemNFITN2VLRISSQN.asFloat;
      AliquotaISSQN        := SQLNotaFiscalItemNFITN2PERCISSQN.asFloat;

      GravaMovimentoEstoque(DM.SQLProduto,
                            DM.SQLProdutoFilho,
                            DM.SQLProdutoSaldo,
                            TblPedidoEMPRICOD.Value,//Empresa
                            SQLNotaFiscalItemPRODICOD.Value,//Produto
                            SQLNotaFiscalOPESICOD.Value,//Operacao
                            SQLNotaFiscalItemNFITN3QUANT.Value,//Quantidade
                            'S',//ENTRADA/SAIDA
                            FormatDateTime('mm/dd/yyyy', SQLNotaFiscalNOFIDEMIS.AsDateTime),
                            SQLNotaFiscalItemNFITN2VLRUNIT.asString,
                            'NOTAFISCAL',
                            SQLNotaFiscalNOFIA13ID.AsString,
                            '');
      SQLPedidoItem.Next;
    end;
  //SQLPedidoItem.Close;
end;

Procedure TFormTelaGeracaoNotasFiscais.ImportaItensPedidoVendaJuntaPedidos;
var CalculaIPI, CalculaICMS : String;
begin
  SQLNotaFiscalItem.Close;
  SQLNotaFiscalItem.Open;
  SQLPedidoItem.Close;
  SQLPedidoItem.Open;
  SQLPedidoItem.First;
  While not SQLPedidoItem.Eof do
    begin
      Item := Item+1;
      SQLNotaFiscalItem.Append;
      SQLNotaFiscalItemNOFIA13ID.Value          := SQLNotaFiscalNOFIA13ID.AsString;
      SQLNotaFiscalItemNFITIITEM.Value          := Item;
      SQLNotaFiscalItemPDVDA13ID.Value          := TblPedidoPDVDA13ID.Value;
      SQLNotaFiscalItemPRODICOD.Value           := SQLPedidoItemPRODICOD.Value;
      SQLNotaFiscalItemNFITN3QUANT.Value        := SQLPedidoItemPVITN3QUANT.Value;
      SQLNotaFiscalItemNFITN2VLRUNIT.Value      := SQLPedidoItemPVITN2VLRUNIT.Value;
      SQLNotaFiscalItemNFITN2PERCDESC.AsVariant := SQLPedidoItemPVITN2PERCDESC.AsVariant;
      SQLNotaFiscalItemNFITN2VLRDESC.AsVariant  := SQLPedidoItemPVITN2VLRDESC.AsVariant;
      SQLNotaFiscalItemNFITN2VLRLUCRO.asFloat   := (SQLNotaFiscalItemNFITN2VLRUNIT.asFloat -
                                                    StrToFloat(dm.SQLLocate('PRODUTO','PRODICOD','PRODN3VLRCOMPRA',SQLPedidoItemPRODICOD.AsString)))
                                                    * SQLNotaFiscalItemNFITN3QUANT.asFloat;
      SQLNotaFiscalItemNFITN2VLRDESC.asFloat    := (SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat *
                                                    SQLNotaFiscalItemNFITN3QUANT.asFloat) *
                                                   (SQLNotaFiscalItemNFITN2PERCDESC.asFloat / 100);
      // Produto é Servico
      if DM.SQLLocate('PRODUTO','PRODICOD','PRODCSERVICO',SQLNotaFiscalItemPRODICOD.AsString)= 'S' then
        begin
          SQLNotaFiscalItemNFITN2PERCISSQN.asFloat  := DM.SQLConfigVendaCFVEN3ALIQISSQN.asFloat;
          SQLNotaFiscalItemNFITN2VLRISSQN.asFloat   := (SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat*SQLNotaFiscalItemNFITN3QUANT.asFloat)-SQLNotaFiscalItemNFITN2VLRDESC.asFloat*(SQLNotaFiscalItemNFITN2PERCISSQN.asFloat / 100);
        end
      else
        begin
          // se a op.estoque estiver marcada para calcular IPI e o campo Perc IPI no cad.produtos for maior que zero.
          CalculaIPI  := DM.SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCCALCIPI',SQLNotaFiscalOPESICOD.AsString);
          CalculaICMS := DM.SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCCALCICMS',SQLNotaFiscalOPESICOD.AsString);

          SQLNotaFiscalItemNFITN2PERCIPI.AsString   := DM.SQLLocate('PRODUTO','PRODICOD','PRODN3PERCIPI',SQLNotaFiscalItemPRODICOD.AsString);
          if (CalculaIPI = 'S') and (SQLNotaFiscalItemNFITN2PERCIPI.AsFloat > 0) then
            SQLNotaFiscalItemNFITN2VLRIPI.asFloat     := (SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat*SQLNotaFiscalItemNFITN3QUANT.asFloat)-SQLNotaFiscalItemNFITN2VLRDESC.asFloat*
                                                         (SQLNotaFiscalItemNFITN2PERCIPI.asFloat/100);
          // Se for venda dentro do estado, buscar dados da tabela de ICMS, else buscar da tabela ICMSUF
          if UFEmpresa = UFCliente then
            begin
              // Pega os Percentuais de Icms e Icms Subst se a Op.Estoque Permitir Calcular ICMS
              if CalculaICMS = 'S' then
                begin
                  SQLNotaFiscalItemNFITN2PERCICMS.AsString    := DM.SQLLocate('ICMS','ICMSICOD','ICMSN2ICMSM1',DM.SQLLocate('PRODUTO','PRODICOD','ICMSICOD',SQLNotaFiscalItemPRODICOD.AsString));
                  SQLNotaFiscalItemNFITN2PERCSUBS.AsString    := DM.SQLLocate('ICMS','ICMSICOD','ICMSN2PERCSUBSTSAI',DM.SQLLocate('PRODUTO','PRODICOD','ICMSICOD',SQLNotaFiscalItemPRODICOD.AsString));
                  SQLNotaFiscalItemNFITN2PERCREDUCAO.AsString := DM.SQLLocate('ICMS','ICMSICOD','ICMSN2REDBASEICMS',DM.SQLLocate('PRODUTO','PRODICOD','ICMSICOD',SQLNotaFiscalItemPRODICOD.AsString));
                  if SQLNotaFiscalItemNFITN2PERCREDUCAO.AsString = '' then SQLNotaFiscalItemNFITN2PERCREDUCAO.Value := 0;
                  if SQLNotaFiscalItemNFITN2PERCICMS.AsFloat > 0 then
                    begin
                      // Se a base for reduzida
                      if SQLNotaFiscalItemNFITN2PERCREDUCAO.AsFloat > 0 then
                        begin
                          SQLNotaFiscalItemNFITN2BASEICMS.AsFloat   := (SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat*SQLNotaFiscalItemNFITN3QUANT.asFloat)-SQLNotaFiscalItemNFITN2VLRDESC.asFloat;
                          SQLNotaFiscalItemNFITN2BASEICMS.AsFloat   := (SQLNotaFiscalItemNFITN2BASEICMS.AsFloat-(SQLNotaFiscalItemNFITN2BASEICMS.AsFloat*(DescPromPerc/100)))*(SQLNotaFiscalItemNFITN2PERCREDUCAO.asFloat/100);
                        end
                      else
                        begin
                          SQLNotaFiscalItemNFITN2BASEICMS.AsFloat   := (SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat*SQLNotaFiscalItemNFITN3QUANT.asFloat)-SQLNotaFiscalItemNFITN2VLRDESC.asFloat;
                          SQLNotaFiscalItemNFITN2BASEICMS.AsFloat   := (SQLNotaFiscalItemNFITN2BASEICMS.AsFloat-(SQLNotaFiscalItemNFITN2BASEICMS.AsFloat*(DescPromPerc/100)));
                        end;
                    end;
                  // Se o produto tiver Subst Tributaria
                  if SQLNotaFiscalItemNFITN2PERCSUBS.AsString = '' then SQLNotaFiscalItemNFITN2PERCSUBS.AsFloat := 0;
                  if SQLNotaFiscalItemNFITN2PERCSUBS.AsFloat > 0 then
                    begin
                      // Se a base for reduzida
                      if SQLNotaFiscalItemNFITN2PERCREDUCAO.AsFloat > 0 then
                        begin
                          SQLNotaFiscalItemNFITN2BASESUBS.AsFloat   := (SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat*SQLNotaFiscalItemNFITN3QUANT.asFloat)-SQLNotaFiscalItemNFITN2VLRDESC.asFloat;
                          SQLNotaFiscalItemNFITN2BASESUBS.AsFloat   := (SQLNotaFiscalItemNFITN2BASESUBS.AsFloat-(SQLNotaFiscalItemNFITN2BASESUBS.AsFloat*(DescPromPerc/100)))*(SQLNotaFiscalItemNFITN2PERCREDUCAO.asFloat/100);
                        end
                      else
                        begin
                          SQLNotaFiscalItemNFITN2BASESUBS.AsFloat   := (SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat*SQLNotaFiscalItemNFITN3QUANT.asFloat)-SQLNotaFiscalItemNFITN2VLRDESC.asFloat;
                          SQLNotaFiscalItemNFITN2BASESUBS.AsFloat   := (SQLNotaFiscalItemNFITN2BASESUBS.AsFloat-(SQLNotaFiscalItemNFITN2BASESUBS.AsFloat*(DescPromPerc/100)));
                        end;
                    end;
                end;
            end
          else
            begin
              if CalculaICMS = 'S' then
                begin
                  SQLNotaFiscalItemNFITN2PERCICMS.AsString    := DM.SQLLocate('ICMSUF','ICMUA2UF','ICMUN2ALIQUOTA','"'+UFCliente+'"');
                  if SQLNotaFiscalItemNFITN2PERCICMS.AsString = '' then SQLNotaFiscalItemNFITN2PERCICMS.AsFloat := 0;
                  if SQLNotaFiscalItemNFITN2PERCICMS.AsFloat > 0 then
                    begin
                      SQLNotaFiscalItemNFITN2PERCREDUCAO.AsFloat  := 0;
                      SQLNotaFiscalItemNFITN2BASEICMS.AsFloat     := ((SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat*SQLNotaFiscalItemNFITN3QUANT.asFloat)-SQLNotaFiscalItemNFITN2VLRDESC.asFloat)-DescPromPerc/100;
                    end;
                  SQLNotaFiscalItemNFITN2PERCSUBS.AsString    := DM.SQLLocate('ICMS','ICMSICOD','ICMSN2PERCSUBSTSAI',DM.SQLLocate('PRODUTO','PRODICOD','ICMSICOD',SQLNotaFiscalItemPRODICOD.AsString));
                  if SQLNotaFiscalItemNFITN2PERCSUBS.AsString = '' then SQLNotaFiscalItemNFITN2PERCSUBS.AsFloat := 0;
                  if SQLNotaFiscalItemNFITN2PERCSUBS.AsFloat > 0 then
                    begin
                      SQLNotaFiscalItemNFITN2PERCREDUCAO.AsFloat  := 0;
                      SQLNotaFiscalItemNFITN2BASESUBS.AsFloat     := ((SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat*SQLNotaFiscalItemNFITN3QUANT.asFloat)-SQLNotaFiscalItemNFITN2VLRDESC.asFloat)-DescPromPerc/100;
                    end;
                end
              else
                begin
                  SQLNotaFiscalItemNFITN2PERCREDUCAO.AsFloat  := 0;
                  SQLNotaFiscalItemNFITN2PERCICMS.AsFloat     := 0;
                  SQLNotaFiscalItemNFITN2BASEICMS.AsFloat     := 0;
                end;
            end;
          if CalculaICMS = 'S' then
            begin
              SQLNotaFiscalItemNFITN2VLRICMS.AsFloat := SQLNotaFiscalItemNFITN2BASEICMS.AsFloat*(SQLNotaFiscalItemNFITN2PERCICMS.asFloat/100);
              SQLNotaFiscalItemNFITN2VLRSUBS.AsFloat := SQLNotaFiscalItemNFITN2BASESUBS.AsFloat*(SQLNotaFiscalItemNFITN2PERCSUBS.asFloat/100);
            end
          else
            begin
              SQLNotaFiscalItemNFITN2VLRICMS.AsFloat := 0;
              SQLNotaFiscalItemNFITN2VLRSUBS.AsFloat := 0;
            end;
          QtdeTotal      := QtdeTotal      + SQLNotaFiscalItemNFITN3QUANT.asFloat;
          PesoTotalBruto := PesoTotalBruto + StrToFloat(DM.SQLLocate('PRODUTO','PRODICOD','PRODN3PESOBRUTO',SQLNotaFiscalItemPRODICOD.AsString)) * SQLNotaFiscalItemNFITN3QUANT.asFloat;
          PesoTotalLiq   := PesoTotalLiq   + StrToFloat(DM.SQLLocate('PRODUTO','PRODICOD','PRODN3PESOLIQ',SQLNotaFiscalItemPRODICOD.AsString)) * SQLNotaFiscalItemNFITN3QUANT.asFloat;
        end;
      SQLNotaFiscalItem.Post;
      // alimenta variaveis com totais de impostos por item
      TotBaseCalcICMS := TotBaseCalcICMS + SQLNotaFiscalItemNFITN2BASEICMS.AsFloat;
      TotVlrICMS      := TotVlrICMS + SQLNotaFiscalItemNFITN2VLRICMS.AsFloat;
      TotBaseCalcICMSSubst := TotBaseCalcICMSSubst + SQLNotaFiscalItemNFITN2BASESUBS.AsFloat;
      TotVlrICMSSubst      := TotVlrICMSSubst + SQLNotaFiscalItemNFITN2VLRSUBS.AsFloat;
      TotVlrISSQN          := SQLNotaFiscalItemNFITN2VLRISSQN.asFloat;
      AliquotaISSQN        := SQLNotaFiscalItemNFITN2PERCISSQN.asFloat;

      GravaMovimentoEstoque(DM.SQLProduto,
                            DM.SQLProdutoFilho,
                            DM.SQLProdutoSaldo,
                            TblPedidoEMPRICOD.Value,//Empresa
                            SQLNotaFiscalItemPRODICOD.Value,//Produto
                            SQLNotaFiscalOPESICOD.Value,//Operacao
                            SQLNotaFiscalItemNFITN3QUANT.Value,//Quantidade
                            'S',//ENTRADA/SAIDA
                            FormatDateTime('mm/dd/yyyy', SQLNotaFiscalNOFIDEMIS.AsDateTime),
                            SQLNotaFiscalItemNFITN2VLRUNIT.asString,
                            'NOTAFISCAL',
                            SQLNotaFiscalNOFIA13ID.AsString,
                            '');
      SQLPedidoItem.Next;
    end;
  SQLPedidoItem.Close;
end;

procedure TFormTelaGeracaoNotasFiscais.SQLNotaFiscalItemNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLNotaFiscalItemNFITN3QUANT.asFloat       :=  0;
  SQLNotaFiscalItemNFITN2BASEICMS.asFloat    :=  0;
  SQLNotaFiscalItemNFITN2BASESUBS.asFloat    :=  0;
  SQLNotaFiscalItemNFITN2PERCDESC.asFloat    :=  0;
  SQLNotaFiscalItemNFITN2PERCICMS.asFloat    :=  0;
  SQLNotaFiscalItemNFITN2PERCIPI.asFloat     :=  0;
  SQLNotaFiscalItemNFITN2PERCISSQN.asFloat   :=  0;
  SQLNotaFiscalItemNFITN2PERCSUBS.asFloat    :=  0;
  SQLNotaFiscalItemNFITN2VLRDESC.asFloat     :=  0;
  SQLNotaFiscalItemNFITN2VLRFRETE.asFloat    :=  0;
  SQLNotaFiscalItemNFITN2VLRICMS.asFloat     :=  0;
  SQLNotaFiscalItemNFITN2VLRIPI.asFloat      :=  0;
  SQLNotaFiscalItemNFITN2VLRISSQN.asFloat    :=  0;
  SQLNotaFiscalItemNFITN2VLRLUCRO.asFloat    :=  0;
  SQLNotaFiscalItemNFITN2VLRSUBS.asFloat     :=  0;
  SQLNotaFiscalItemNFITN2VLRUNIT.asFloat     :=  0;
  SQLNotaFiscalItemNFITN2PERCCOMIS.asFloat   :=  0;
  SQLNotaFiscalItemPENDENTE.Value            := 'S';
  SQLNotaFiscalItemREGISTRO.Value            := Now;
end;

Procedure TFormTelaGeracaoNotasFiscais.ImportaContasReceber;
begin
  SQLContasReceberPedido.Close;
  SQLContasReceberPedido.Open;
  SQLContasReceberPedido.First;
  DataDifPedidoNota := DataEmissaoNF.Date - TblPedidoPDVDDEMISSAO.Value;
  While not SQLContasReceberPedido.eof do
    begin
      SQLContasReceberPedido.Edit;
      SQLContasReceberPedidoPDVDA13ID.AsString             := '';
      SQLContasReceberPedidoNOFIA13ID.AsString             := SQLNotaFiscalNOFIA13ID.AsString;
      if NossoNroAtual = 0 then
        SQLContasReceberPedidoCTRCA30NRODUPLICBANCO.AsString := FormatFloat('000000',SQLNotaFiscalNOFIINUMERO.AsFloat)+
                                                                '-'+SQLContasReceberPedidoCTRCINROPARC.AsString
      else
        SQLContasReceberPedidoCTRCA30NRODUPLICBANCO.AsString := FormatFloat('000000',NossoNroAtual);

      SQLContasReceberPedidoCTRCN2DESCFIN.Value            := 0;
      if SQLContasReceberPedidoCTRCN2TXJURO.IsNull then
        SQLContasReceberPedidoCTRCN2TXJURO.Value             := 0;
      SQLContasReceberPedidoCTRCN2TXMULTA.Value            := 0;
      SQLContasReceberPedidoCTRCN2TOTREC.Value             := 0;
      SQLContasReceberPedidoCTRCN2TOTDESCREC.Value         := 0;
      SQLContasReceberPedidoCTRCN2TOTJUROREC.Value         := 0;
      SQLContasReceberPedidoCTRCN2TOTMULTAREC.Value        := 0;
      SQLContasReceberPedidoCTRCN2TOTMULTACOBR.Value       := 0;
      SQLContasReceberPedidoCTRCDVENC.Value                := SQLContasReceberPedidoCTRCDVENC.Value+DataDifPedidoNota;
      if SQLContasReceberPedidoCTRCCEMITIDOBOLETO.Value = '' then SQLContasReceberPedidoCTRCCEMITIDOBOLETO.Value := 'N';
      SQLContasReceberPedido.Post;
      SQLContasReceberPedido.Next;
      if NossoNroAtual > 0 then
        NossoNroAtual := NossoNroAtual+1;
    end;
end;

procedure TFormTelaGeracaoNotasFiscais.GravaItensImpressaoNF;
var vCodDecreto : String;
begin
  SQLNotaFiscalItem.Close;
  SQLNotaFiscalItem.MacroByName('Filtro').Value := 'NOFIA13ID = "'+SQLNotaFiscalNOFIA13ID.AsString+'"';
  SQLNotaFiscalItem.Open;
  SQLNotaFiscalItem.First;
  DMImpNotaFiscal.TblNotaFiscalItem.Close;
  DMImpNotaFiscal.TblNotaFiscalItem.Open;
  // Testa qual foi o ultimo item impresso na nota anterior
  if (ContinuaNFProxForm) and (NroUltItemNFAnterior >0) then
    SQLNotaFiscalItem.Locate('NFITIITEM',NroUltItemNFAnterior,[])
  else
    NroUltItemNFAnterior :=0;

  // Reseta o Contador de itens na NF atual
  NroUltItemNFAtual := 0;

  While not SQLNotaFiscalItem.eof do
    begin
      if dm.SQLLocate('PRODUTO','PRODICOD','PRODCSERVICO',SQLNotaFiscalItemPRODICOD.AsString) = 'N' then
        begin
          NroUltItemNFAtual := NroUltItemNFAtual+1;
          DMImpNotaFiscal.TblNotaFiscalItem.Append ;
          DMImpNotaFiscal.TblNotaFiscalItemNumeroNF.Value      := SQLNotaFiscalNOFIINUMERO.AsString;
          DMImpNotaFiscal.TblNotaFiscalItemNumeroNFSeq.Value   := IntToStr(Cont);
          if NroUltItemNFAtual < (dm.SQLConfigVendaCFVEINROITENSNF.Value+1) then
            begin
              DMImpNotaFiscal.TblNotaFiscalItemCodigo.Value        := SQLNotaFiscalItemPRODICOD.AsString;

              if DM.SQLConfigVendaCFVECIMPDESCRPRINF.AsString <> 'S' then
                DMImpNotaFiscal.TblNotaFiscalItemDescricao.Value   := dm.SQLLocate('PRODUTO','PRODICOD','PRODA30ADESCRREDUZ',SQLNotaFiscalItemPRODICOD.AsString)
              else
                DMImpNotaFiscal.TblNotaFiscalItemDescricao.Value   := dm.SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',SQLNotaFiscalItemPRODICOD.AsString);

              DMImpNotaFiscal.TblNotaFiscalItemUnidade.AsString    := dm.SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',dm.SQLLocate('PRODUTO','PRODICOD','UNIDICOD',SQLNotaFiscalItemPRODICOD.AsString));
              DMImpNotaFiscal.TblNotaFiscalItemValor_Unitario.Value:= SQLNotaFiscalItemNFITN2VLRUNIT.AsVariant -
                                                                      (SQLNotaFiscalItemNFITN2VLRUNIT.asVariant *
                                                                      (SQLNotaFiscalItemNFITN2PERCDESC.asVariant/100));
              DMImpNotaFiscal.TblNotaFiscalItemQuantidade.Value    := SQLNotaFiscalItemNFITN3QUANT.Value;
              DMImpNotaFiscal.TblNotaFiscalItemValor_Total.Value   := (SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat *
                                                                       SQLNotaFiscalItemNFITN3QUANT.asFloat) -
                                                                       SQLNotaFiscalItemNFITN2VLRDESC.AsFloat;
              if (dm.SQLLocate('PRODUTO','PRODICOD','CLFSICOD',SQLNotaFiscalItemPRODICOD.AsString) <> '') then
                DMImpNotaFiscal.TblNotaFiscalItemClasFisc.Value    := dm.SQLLocate('CLASSIFICACAOFISCAL','CLFSICOD','CLFSA30DESCR',dm.SQLLocate('PRODUTO','PRODICOD','CLFSICOD',SQLNotaFiscalItemPRODICOD.AsString));
              // Se o Produto possuir Sit Trib pegar dele ou pegar do cad.icms
              if (dm.SQLLocate('PRODUTO','PRODICOD','PRODISITTRIB',SQLNotaFiscalItemPRODICOD.AsString)<>'') then
                DMImpNotaFiscal.TblNotaFiscalItemSitTrib.Value     := dm.SQLLocate('PRODUTO','PRODICOD','PRODISITTRIB',SQLNotaFiscalItemPRODICOD.AsString)
              else
                DMImpNotaFiscal.TblNotaFiscalItemSitTrib.Value     := dm.SQLLocate('ICMS','ICMSICOD','ICMSICODSITTRIB',dm.SQLLocate('PRODUTO','PRODICOD','ICMSICOD',SQLNotaFiscalItemPRODICOD.AsString));

              if dm.SQLEmpresaEMPRCLUCROREAL.Value = 'S' then
                DMImpNotaFiscal.TblNotaFiscalItemICMS_Aliquota.Value    := SQLNotaFiscalItemNFITN2PERCICMS.Value
              else
                DMImpNotaFiscal.TblNotaFiscalItemICMS_Aliquota.AsString := '';

              DMImpNotaFiscal.TblNotaFiscalItemIPI_Aliquota.Value  := SQLNotaFiscalItemNFITN2PERCIPI.Value;
              DMImpNotaFiscal.TblNotaFiscalItemValor_IPI.Value     := SQLNotaFiscalItemNFITN2VLRIPI.Value;
              DMImpNotaFiscal.TblNotaFiscalItemValor_ICMS.Value    := SQLNotaFiscalItemNFITN2VLRICMS.Value;
              DMImpNotaFiscal.TblNotaFiscalItemLOTEA30NRO.Value    := SQLNotaFiscalItemLOTEA30NRO.Value;
   //             DMImpNotaFiscal.TblNotaFiscalItemReferencia.Value    :=
              DMImpNotaFiscal.TblNotaFiscalItem.Post ;
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


              TrocaNota := True;
            end
          else
            begin
              DMImpNotaFiscal.TblNotaFiscalItemCodigo.Value    := '******';
              DMImpNotaFiscal.TblNotaFiscalItemDescricao.Value := 'Esta nota continua no próximo formulário...';
              DMImpNotaFiscal.TblNotaFiscalItem.Post ;
              NroUltItemNFAnterior := SQLNotaFiscalItemNFITIITEM.Value;
              SQLNotaFiscalItem.Last;
              // imprime a Nota
              //DMImpNotaFiscal.Report.Printer.Name      := dm.SQLTerminalAtivoTERMA60IMPNF.AsString;
              DMImpNotaFiscal.Report.ReportName        := DM.SQLTerminalAtivoTERMTPATHNF.AsString;
              DMImpNotaFiscal.Report.ReportTitle       := 'Impressão de Nota Fiscal';
              DMImpNotaFiscal.Report.WindowStyle.Title := 'Impressão de Nota Fiscal';
              DMImpNotaFiscal.Report.Execute;
              // Apaga os Arquivos Temporarios
              while not DMImpNotaFiscal.TblNotaFiscal.eof do
                DMImpNotaFiscal.TblNotaFiscal.Delete;
              while not DMImpNotaFiscal.TblNotaFiscalItem.eof do
                DMImpNotaFiscal.TblNotaFiscalItem.Delete;
              while not DMImpNotaFiscal.TblNotaFiscalItemServico.eof do
                DMImpNotaFiscal.TblNotaFiscalItemServico.Delete;
              while not DMImpNotaFiscal.TblNotaFiscalFinanceiro.eof do
                DMImpNotaFiscal.TblNotaFiscalFinanceiro.Delete;
              while not DMImpNotaFiscal.TblNotaFiscalDecreto.eof do
                DMImpNotaFiscal.TblNotaFiscalDecreto.Delete;
              TrocaNota := False;
            end;
        end;
      SQLNotaFiscalItem.Next;
    end;
end;


Function TFormTelaGeracaoNotasFiscais.Busca_CFOP(Operacao:Integer; Origem:Integer; CST:Integer):String;
Begin
  SQLICMSUF.Close;
  SQLICMSUF.SQL.Text := 'Select * From OPERACAOESTOQUECFOP Where OPESICOD = :xOp and CSTICMS = :xCst and ORIGEMMERC = :xOrigem';
  SQLIcmsUF.ParamByName('xOp').AsInteger      := Operacao;
  SQLIcmsUF.ParamByName('xCst').AsInteger     := CST;
  SQLIcmsUF.ParamByName('xOrigem').AsInteger  := Origem;
  SQLIcmsUF.Open;

  If UFEmpresa <> UFCliente Then
    Result := SQLIcmsUF.Fieldbyname('CFOPVENDAFORAUF').AsString
  Else
    Result := SQLIcmsUF.Fieldbyname('CFOPVENDANOUF').AsString;
  SQLICMSUf.Close;
End;


Function TFormTelaGeracaoNotasFiscais.BuscaIcms(nCodICMS:String; SitTributaria:String):TICMSUF;
var nLocal : TICMSUF;
begin
    try
    SQLBuscas.Close;
    SQLBuscas.SQL.Text :=  'Select * From ICMS Where ICMSICOD= :ICMSICOD';
    SQLBuscas.ParamByName('ICMSICOD').AsString := nCodICMS;
    SQLBuscas.Open;

    if SQLBuscas.IsEmpty then
    begin
      ShowMessage('ATENÇÃO...'+#13#10+#13#10+'Alíquota de ICMS não cadastrado na tabela de ICMS');
      nLocal.nICMS          := 0;
      nLocal.nRED_ICMS      := 0;
      nLocal.nICMS_INTERNO  := 0;
      nLocal.nMVA           := 0;
      nLocal.nSTFisica      := '';
      nLocal.nSTJuridica    := '';
    end else
    begin
      nLocal.nICMS          := SQLBuscas.FindField('ICMSN2ICMSM1').asFloat;
      nLocal.nRED_ICMS      := SQLBuscas.FindField('ICMSN2REDBASEICMS').asFloat;
      nLocal.nICMS_INTERNO  := SQLBuscas.FindField('ICMSN2ICMSM1').asFloat;
      nLocal.nMVA           := SQLBuscas.FindField('ICMSN2PERCSUBSTSAI').asFloat;
      nLocal.nSTFisica      := SitTributaria;
      nLocal.nSTJuridica    := SitTributaria;
    End;
  Except on e:Exception do
  begin
    Showmessage('Aliquota ICMS Não Processada para o Produto Cod. '+SQLPedidoItemPRODICOD.AsString+#13#10+
    'Do Pedido ID '+SQLPedidoItemPDVDA13ID.AsString+#13#10+
    'Da Nota Fiscal '+SQLNotaFiscalNOFIINUMERO.AsString+#13#10+
    E.message);
      nLocal.nICMS          := 0;
      nLocal.nRED_ICMS      := 0;
      nLocal.nICMS_INTERNO  := 0;
      nLocal.nMVA           := 0;
      nLocal.nSTFisica      := '';
      nLocal.nSTJuridica    := '';
  end; end;

  Result := nLocal;
end;

Function TFormTelaGeracaoNotasFiscais.BuscaIcmsUf(varUF:String; varPessoa:String; varRegime:String):TICMSUF;
var SQLText, nNCM : String;
    nProduto: Integer;
    nLocal : TICMSUF;
    nDadosProduto:TPRODUTO_ID;
begin
    try
    nProduto := 0;
    nNCM     := '';
    // Pesquisa o UF + Cod.Produto para ver se existe algum registro especifico ao Cod Produto digitado
    SQLBuscas.Close;
    SQLBuscas.SQL.Text := 'Select * From ICMSUF Where ICMUA2UF = :ICMUA2UF AND PRODICOD = :pPRODICOD';
    SQLBuscas.ParamByName('ICMUA2UF').asString  := varUF;
    SQLBuscas.ParamByName('pPRODICOD').AsString := SQLPedidoItemPRODICOD.AsString;
    SQLBuscas.Open;

    // se obtiver algum registro como resultado cria o parametro para busca agregada ao produto
    if not SQLBuscas.IsEmpty then
      nProduto := SQLPedidoItemPRODICOD.AsInteger
   else begin
      nDadosProduto   := BuscaDadosProduto;
      SQLBuscas.Close;
      SQLBuscas.SQL.Text := 'Select * From ICMSUF Where ICMUA2UF =:ICMUA2UF AND NCMA30CODIGO = :pNCM';
      SQLBuscas.ParamByName('ICMUA2UF').asString  := varUF;
      SQLBuscas.ParamByName('pNCM').AsString := nDadosProduto.nNCMCodigo;
      SQLBuscas.Open;
      // se obtiver algum registro como resultado cria o parametro para busca agregada ao NCM
      if not SQLBuscas.IsEmpty then
        nNCM := nDadosProduto.nNCMCodigo ;
    end;

    // Fecha e cria o novo SQL de Pesquisa
    SQLBuscas.Close;
    SQLBuscas.SQL.Text := 'Select * From ICMSUF Where PRODICOD = :pPRODICOD AND '+
    'ICMUA2UF =:ICMUA2UF AND TIPOPESSOA = :pPESSOA AND ENQUADRAMENTO = :pREGIME AND NCMA30CODIGO = :pNCM';

    // Se o Resultado for em branco, busca somente pelo UF + Tipo Pessoa (Fis/Jur) + Regime (Enquadramento)
    if SQLBuscas.IsEmpty then
    begin
      SQLBuscas.Close;
      SQLBuscas.ParamByName('ICMUA2UF').asString  := varUF;
      SQLBuscas.ParamByName('pPESSOA').AsString   := varPessoa;
      SQLBuscas.ParamByName('pRegime').AsString   := varRegime;
      SQLBuscas.ParamByName('pPRODICOD').AsString := SQLPedidoItemPRODICOD.AsString;
      SQLBuscas.ParamByName('pNCM').AsString      := nNCM;
      SQLBuscas.Open;
    End;

    // Se o Resultado for em branco, busca somente pelo UF + Tipo Pessoa (Fis/Jur)
    if SQLBuscas.IsEmpty then
    begin
      SQLBuscas.Close;
      SQLBuscas.ParamByName('ICMUA2UF').asString  := varUF;
      SQLBuscas.ParamByName('pPESSOA').AsString   := varPessoa;
      SQLBuscas.ParamByName('pRegime').AsString   := 'A'; // Ambas
      SQLBuscas.ParamByName('pPRODICOD').AsString := SQLPedidoItemPRODICOD.AsString;
      SQLBuscas.ParamByName('pNCM').AsString      := nNCM;
      SQLBuscas.Open;
    end;

    // Se o Resultado ainda for em branco, busca somente o UF
    if SQLBuscas.IsEmpty then
    begin
      SQLBuscas.Close;
      SQLBuscas.ParamByName('ICMUA2UF').asString  := varUF;
      SQLBuscas.ParamByName('pPESSOA').AsString   := 'A';
      SQLBuscas.ParamByName('pRegime').AsString   := 'A'; // Ambas
      SQLBuscas.ParamByName('pPRODICOD').AsString := SQLPedidoItemPRODICOD.AsString;
      SQLBuscas.ParamByName('pNCM').AsString      := nNCM;
      SQLBuscas.Open;
    end;
    if SQLBuscas.IsEmpty then
    begin
      ShowMessage('ATENÇÃO...'+#13#10+#13#10+'Alíquota de ICMS não cadastrado na tabela de ICMS por UF');
      nLocal.nICMS          := 0;
      nLocal.nRED_ICMS      := 0;
      nLocal.nICMS_INTERNO  := 0;
      nLocal.nMVA           := 0;
      nLocal.nSTFisica      := '';
      nLocal.nSTJuridica    := '';
    end else
    begin
      nLocal.nICMS          := SQLBuscas.FindField('ICMUN2ALIQUOTA').asFloat;
      nLocal.nRED_ICMS      := SQLBuscas.FindField('ICMUN3REDBASECALC').asFloat;
      nLocal.nICMS_INTERNO  := SQLBuscas.FindField('ICMUN2ALIQUOTAINTERNA').asFloat;
      nLocal.nMVA           := SQLBuscas.FindField('ICMUN3MVA').asFloat;
      nLocal.nSTFisica      := SQLBuscas.FindField('ICMUISITTRIB').AsString;
      nLocal.nSTJuridica    := SQLBuscas.FindField('ICMUISITTRIBJURIDICA').AsString;
    end;
  Except on e:Exception do
  begin
    Showmessage('Aliquota ICMS no UF Não Processada para o Produto Cod. '+SQLPedidoItemPRODICOD.AsString+#13#10+
    'Do Pedido ID '+SQLPedidoItemPDVDA13ID.AsString+#13#10+
    'Da Nota Fiscal '+SQLNotaFiscalNOFIINUMERO.AsString+#13#10+
    E.message);
      nLocal.nICMS          := 0;
      nLocal.nRED_ICMS      := 0;
      nLocal.nICMS_INTERNO  := 0;
      nLocal.nMVA           := 0;
      nLocal.nSTFisica      := '';
      nLocal.nSTJuridica    := '';
  end;end;
  Result := nLocal;

end;

Function TFormTelaGeracaoNotasFiscais.BuscaDadosProduto:TPRODUTO_ID;
var nLocal:TPRODUTO_ID;
begin
  try
    SQLBuscas.Close;
    SQLBuscas.SQL.Text := 'Select P.PRODN3VLRCOMPRA, P.PRODCSERVICO, P.PRODN3PERCIPI, P.ICMSICOD, '+
    'P.PRODN3PESOBRUTO, P.PRODN3PESOLIQ, P.PRODISITTRIB, N.NCMA30CODIGO, P.PRODIORIGEM From PRODUTO P '+
    'LEFT JOIN NCM N ON N.NCMICOD = P.NCMICOD '+
    'where PRODICOD = :xPRODI';
    SQLBuscas.Prepare;
    SQLBuscas.ParamByName('xPRODI').AsString := SQLPedidoItemPRODICOD.AsString;
    SQLBuscas.Open;

    if not SQLBuscas.IsEmpty then
    begin
      nLocal.nProdVlrCmpra := SQLBuscas.FieldByName('PRODN3VLRCOMPRA').Value;
      nLocal.nProdPercIPI  := SQLBuscas.FieldByName('PRODN3PERCIPI').Value;
      nLocal.nProdPesoBruto:= SQLBuscas.FieldByName('PRODN3PESOBRUTO').Value;
      nLocal.nProdPesoLiq  := SQLBuscas.FieldByName('PRODN3PESOLIQ').Value;
      nLocal.nProdServico  := SQLBuscas.FieldByName('PRODCSERVICO').AsString;
      nLocal.nProdIcmsICOD := SQLBuscas.FieldByName('ICMSICOD').AsString;
      nLocal.nProdSitTrib  := SQLBuscas.FieldByName('PRODISITTRIB').AsString;
      nLocal.nNCMCodigo    := SQLBuscas.FieldByName('NCMA30CODIGO').AsString;
      nLocal.nProdOrigem   := SQLBuscas.FieldByName('PRODIORIGEM').AsInteger;
    end else
    begin
      nLocal.nProdVlrCmpra := 0;
      nLocal.nProdPercIPI  := 0;
      nLocal.nProdPesoBruto:= 0;
      nLocal.nProdPesoLiq  := 0;
      nLocal.nProdOrigem   := 0;
      nLocal.nProdServico  := '';
      nLocal.nProdIcmsICOD := '';
      nLocal.nProdSitTrib  := '';
    end;
  except on e:Exception do
  begin
    Showmessage('Falha ao Processar Dados do Produto Cod. '+SQLPedidoItemPRODICOD.AsString+#13#10+
    'Do Pedido ID '+SQLPedidoItemPDVDA13ID.AsString+#13#10+
    'Da Nota Fiscal '+SQLNotaFiscalNOFIINUMERO.AsString+#13#10+
    E.message);
      nLocal.nProdVlrCmpra := 0;
      nLocal.nProdPercIPI  := 0;
      nLocal.nProdPesoBruto:= 0;
      nLocal.nProdPesoLiq  := 0;
      nLocal.nProdOrigem   := 0;
      nLocal.nProdServico  := '';
      nLocal.nProdIcmsICOD := '';
      nLocal.nProdSitTrib  := '';
  end;end;
  Result := nLocal;
end;

Function TFormTelaGeracaoNotasFiscais.BuscaDadosOperacao(nCodOp:String):TOPERACAO_ID;
var nLocal:TOPERACAO_ID;
begin
  try
    SQLBuscas.Close;
    SQLBuscas.SQL.Text := 'Select * From OPERACAOESTOQUE where OPESICOD = :xOPESCod';
    SQLBuscas.Prepare;
    SQLBuscas.ParamByName('xOPESCod').AsString := nCodOp;
    SQLBuscas.Open;

    if not SQLBuscas.IsEmpty then
    begin
      nLocal.nOpOrigemDestino := SQLBuscas.fieldByName('OPESCORIGEMDESTINO').AsString;
      nLocal.nOpCalcIPI       := SQLBuscas.fieldByName('OPESCCALCIPI').AsString;
      nLocal.nOpCalcICMS      := SQLBuscas.fieldByName('OPESCCALCICMS').AsString;
      nLocal.nOpCalcST        := SQLBuscas.fieldByName('OPESCCALCSUBST').AsString;
      nLocal.nOpCalcIPIFis    := SQLBuscas.fieldByName('OPESCCALCIPIFIS').AsString;
      nLocal.nOpCalcICMSFis   := SQLBuscas.fieldByName('OPESCCALCICMSFIS').AsString;
      nLocal.nOpCalcSTFis     := SQLBuscas.fieldByName('OPESCCALCSUBSTFIS').AsString;
      nLocal.nOpCFOPnoUF      := SQLBuscas.fieldByName('CFOPA5CODDENTROUF').AsString;
      nLocal.nOpCFOPForaUF    := SQLBuscas.fieldByName('CFOPA5CODFORAUF').AsString;
      nLocal.nOpPCTACred      := SQLBuscas.fieldByName('PLCTA15CODCRED').AsString;
    end else
    begin
      nLocal.nOpOrigemDestino := '';
      nLocal.nOpCalcIPI       := '';
      nLocal.nOpCalcICMS      := '';
      nLocal.nOpCalcST        := '';
      nLocal.nOpCalcIPIFis    := '';
      nLocal.nOpCalcICMSFis   := '';
      nLocal.nOpCalcSTFis     := '';
      nLocal.nOpCFOPnoUF      := '';
      nLocal.nOpCFOPForaUF    := '';
      nLocal.nOpPCTACred      := '';
    end;

    Result := nLocal;
  except on E:Exception do
  begin
    ShowMessage('Falha ao encontar dados da OPERACAO DE ESTOQUE - '+#13#10+
    'Do Pedido ID '+SQLPedidoItemPDVDA13ID.AsString+#13#10+
    E.Message);
  End; End;
end;

Function TFormTelaGeracaoNotasFiscais.BuscaDadosCliente:TCLIE;
var nLocal:TCLIE;
begin
  Try
    SQLBuscas.Close;
    SQLBuscas.SQL.Text := 'Select CLIEA2UFRES, CLIEA60RAZAOSOC, CLIEA5FISJURID, CLIECENQUADRAMENTO '+
    'From CLIENTE where CLIEA13ID = :xCLI';
    SQLBuscas.Prepare;
    SQLBuscas.ParamByName('xCLI').AsString := SQLNotaFiscalCLIEA13ID.AsString;;
    SQLBuscas.Open;

    if not SQLBuscas.IsEmpty then
    begin
      nLocal.nCliUF           := SQLBuscas.fieldByName('CLIEA2UFRES').AsString;
      nLocal.nCliNome         := SQLBuscas.fieldByName('CLIEA60RAZAOSOC').AsString;
      nLocal.nCliPessoa       := SQLBuscas.fieldByName('CLIEA5FISJURID').AsString;
      nLocal.nCliRegime       := SQLBuscas.fieldByName('CLIECENQUADRAMENTO').AsString;
    end else
    begin
      nLocal.nCliUF           := '';
      nLocal.nCliNome         := '';
      nLocal.nCliPessoa       := '';
      nLocal.nCliRegime       := '';
    end;

    Result := nLocal;
  Except on e:Exception do
  begin
    ShowMessage('Falha ao encontar dados do Cliente - '+e.message);
  end; end;
end;


end.
