unit TelaPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, RxQuery, StdCtrls, Buttons, ConerBtn, FileCtrl,
  ComCtrls, Menus, DBLists, Grids, DBGrids, ExtCtrls, StrUtils;

type
  TFormTelaPrincipal = class(TForm)
    SQLAtualiza: TRxQuery;
    Database: TDatabase;
    SQLScript: TSQLScript;
    PopupMenu1: TPopupMenu;
    ExecutarSQLselecionado1: TMenuItem;
    TableFields: TTableItems;
    SQLUpdate: TRxQuery;
    SQLMax: TRxQuery;
    TblVendedorComissaoOLD: TTable;
    BatchMove: TBatchMove;
    TblVendedorComissaoOLDVENDICOD: TIntegerField;
    TblVendedorComissaoOLDCUPOA13ID: TStringField;
    TblVendedorComissaoOLDVDCON2TOTVENDVISTA: TBCDField;
    TblVendedorComissaoOLDVDCON2TOTVENDPRAZO: TBCDField;
    TblVendedorComissaoOLDVDCOINROVEND: TIntegerField;
    TblVendedorComissaoOLDVDCON2VENDMEDIA: TBCDField;
    TblVendedorComissaoOLDVDCON3QTDVEND: TBCDField;
    TblVendedorComissaoOLDVDCON2VLRCOMISS: TBCDField;
    TblVendedorComissaoOLDVDCODEMIS: TDateTimeField;
    TblVendedorComissaoOLDPENDENTE: TStringField;
    TblVendedorComissaoOLDREGISTRO: TDateTimeField;
    TbLIcmsUF: TTable;
    TbLIcmsUFICMUA2UF: TStringField;
    TbLIcmsUFICMSICOD: TIntegerField;
    TbLIcmsUFICMUN2ALIQUOTA: TBCDField;
    TbLIcmsUFICMSN2PERCSUBSTSAI: TBCDField;
    TbLIcmsUFPENDENTE: TStringField;
    TbLIcmsUFREGISTRO: TDateTimeField;
    PopupMenuTrigger: TPopupMenu;
    MenuItem1: TMenuItem;
    SQLCupom: TRxQuery;
    SQLCupomItem: TRxQuery;
    DSSQLCupom: TDataSource;
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
    SQLCupomCUPON2DESCITENS: TBCDField;
    SQLCupomCATCA13ID: TStringField;
    SQLCupomOPESICOD: TIntegerField;
    SQLCupomPLCTA15CODCRED: TStringField;
    SQLCupomPLCTA15CODDEB: TStringField;
    SQLCupomCUPOA13IDCUPNEG: TStringField;
    SQLCupomCFOPA5COD: TStringField;
    SQLCupomCUPON2BASEICMS: TBCDField;
    SQLCupomCUPON2VLRICMS: TBCDField;
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
    SQLCupomItemCPITN2VLRDESCSOBTOT: TBCDField;
    SQLCupomItemCPITN2BASEICMS: TBCDField;
    SQLCupomItemCPITN2VLRICMS: TBCDField;
    SQLProdutoICMS: TRxQuery;
    DSSQLCupomItem: TDataSource;
    SQLProdutoICMSICMSN2ALIQUOTA: TBCDField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Extras: TTabSheet;
    Memo: TMemo;
    Label2: TLabel;
    ListaTrigger: TFileListBox;
    Label1: TLabel;
    ListaSQL: TFileListBox;
    BtnVlrICMS: TSpeedButton;
    SQLProdutoICMSICMSICOD: TIntegerField;
    SpeedButton1: TSpeedButton;
    SQLMovBanco: TRxQuery;
    SQLRecebimento: TRxQuery;
    DSSQLMovBanco: TDataSource;
    SQLMovBancoCTRCA13ID: TStringField;
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
    SQLRecebimentoPLCTA15CREDITO: TStringField;
    SQLRecebimentoPLCTA15CODJUROCRED: TStringField;
    SQLRecebimentoPLCTA15CODMULTCRED: TStringField;
    SQLRecebimentoPLCTA15CODDESCCRED: TStringField;
    SQLRecebimentoPLCTA15DEBITO: TStringField;
    SQLRecebimentoPLCTA15CODJURODEB: TStringField;
    SQLRecebimentoPLCTA15CODMULTDEB: TStringField;
    SQLRecebimentoPLCTA15CODDESCDEB: TStringField;
    SQLRecebimentoRECEA254HISTORICO: TStringField;
    SQLRecebimentoTPLQICOD: TIntegerField;
    SQLRecebimentoRECEDDATAMOV: TDateTimeField;
    SQLMovBancoMVBCDLANC: TDateTimeField;
    BtAtualizaDataQuitacaoCupom: TSpeedButton;
    SQLCupomCUPODQUITACAO: TDateTimeField;
    SQLContasreceber: TRxQuery;
    SQLContasreceberCTRCA13ID: TStringField;
    SQLContasreceberEMPRICOD: TIntegerField;
    SQLContasreceberTERMICOD: TIntegerField;
    SQLContasreceberCTRCICOD: TIntegerField;
    SQLContasreceberCLIEA13ID: TStringField;
    SQLContasreceberCTRCCSTATUS: TStringField;
    SQLContasreceberCTRCINROPARC: TIntegerField;
    SQLContasreceberCTRCDVENC: TDateTimeField;
    SQLContasreceberCTRCN2VLR: TBCDField;
    SQLContasreceberCTRCN2DESCFIN: TBCDField;
    SQLContasreceberNUMEICOD: TIntegerField;
    SQLContasreceberPORTICOD: TIntegerField;
    SQLContasreceberCTRCN2TXJURO: TBCDField;
    SQLContasreceberCTRCN2TXMULTA: TBCDField;
    SQLContasreceberCTRCA5TIPOPADRAO: TStringField;
    SQLContasreceberCTRCDULTREC: TDateTimeField;
    SQLContasreceberCTRCN2TOTREC: TBCDField;
    SQLContasreceberCTRCN2TOTJUROREC: TBCDField;
    SQLContasreceberCTRCN2TOTMULTAREC: TBCDField;
    SQLContasreceberCTRCN2TOTDESCREC: TBCDField;
    SQLContasreceberCTRCN2TOTMULTACOBR: TBCDField;
    SQLContasreceberEMPRICODULTREC: TIntegerField;
    SQLContasreceberCUPOA13ID: TStringField;
    SQLContasreceberTPDCICOD: TIntegerField;
    SQLContasreceberPLCTA15COD: TStringField;
    SQLContasreceberCTRCA30NRODUPLICBANCO: TStringField;
    SQLContasreceberNOFIA13ID: TStringField;
    SQLContasreceberCTRCDEMIS: TDateTimeField;
    SQLContasreceberPENDENTE: TStringField;
    SQLContasreceberREGISTRO: TDateTimeField;
    SQLContasreceberCTRCDREABILSPC: TDateTimeField;
    SQLContasreceberBANCA5CODCHQ: TStringField;
    SQLContasreceberCTRCA10AGENCIACHQ: TStringField;
    SQLContasreceberCTRCA15CONTACHQ: TStringField;
    SQLContasreceberCTRCA15NROCHQ: TStringField;
    SQLContasreceberCTRCA60TITULARCHQ: TStringField;
    SQLContasreceberCTRCA20CGCCPFCHQ: TStringField;
    SQLContasreceberCTRCDDEPOSCHQ: TDateTimeField;
    SQLContasreceberALINICOD: TIntegerField;
    SQLContasreceberPDVDA13ID: TStringField;
    SQLContasreceberCTRCDESTORNO: TDateTimeField;
    SQLContasreceberFRETA13ID: TStringField;
    SQLContasreceberCTRCA254HIST: TStringField;
    SQLContasreceberCTRCCTEMREGRECEBER: TStringField;
    SQLContasreceberDUPLA13ID: TStringField;
    SQLContasreceberCOBRA13ID: TStringField;
    SQLContasreceberCTRCDENVIOCOBRANCA: TDateTimeField;
    SQLContasreceberHTPDICOD: TIntegerField;
    SQLContasreceberPLCTA15CODDEBITO: TStringField;
    Panel8: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    cboAcoes: TComboBox;
    edOutrsoFiltros: TEdit;
    Panel1: TPanel;
    BtnAtualizar: TSpeedButton;
    Progress: TProgressBar;
    BtAtualizarVendCupomItem: TSpeedButton;
    BtnAtualizaMesAnoCompetenciaPagarReceber: TSpeedButton;
    SQLPagamento: TRxQuery;
    SQLContasPagar: TRxQuery;
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
    SQLPagamentoTPLQICOD: TIntegerField;
    SQLPagamentoPLCTA15CREDITO: TStringField;
    SQLPagamentoPLCTA15CODJUROCRED: TStringField;
    SQLPagamentoPLCTA15CODMULTCRED: TStringField;
    SQLPagamentoPLCTA15CODDESCCRED: TStringField;
    SQLPagamentoPLCTA15DEBITO: TStringField;
    SQLPagamentoPLCTA15CODJURODEB: TStringField;
    SQLPagamentoPLCTA15CODMULTDEB: TStringField;
    SQLPagamentoPLCTA15CODDESCDEB: TStringField;
    SQLContasPagarCTPGA2MESCOMP: TStringField;
    SQLContasPagarCTPGA4ANOCOMP: TStringField;
    SQLContasReceber1: TRxQuery;
    SQLContasReceber1CTRCA13ID: TStringField;
    SQLContasReceber1EMPRICOD: TIntegerField;
    SQLContasReceber1TERMICOD: TIntegerField;
    SQLContasReceber1CTRCICOD: TIntegerField;
    SQLContasReceber1CLIEA13ID: TStringField;
    SQLContasReceber1CTRCCSTATUS: TStringField;
    SQLContasReceber1CTRCINROPARC: TIntegerField;
    SQLContasReceber1CTRCDVENC: TDateTimeField;
    SQLContasReceber1CTRCN2VLR: TBCDField;
    SQLContasReceber1CTRCN2DESCFIN: TBCDField;
    SQLContasReceber1NUMEICOD: TIntegerField;
    SQLContasReceber1PORTICOD: TIntegerField;
    SQLContasReceber1CTRCN2TXJURO: TBCDField;
    SQLContasReceber1CTRCN2TXMULTA: TBCDField;
    SQLContasReceber1CTRCA5TIPOPADRAO: TStringField;
    SQLContasReceber1CTRCDULTREC: TDateTimeField;
    SQLContasReceber1CTRCN2TOTREC: TBCDField;
    SQLContasReceber1CTRCN2TOTJUROREC: TBCDField;
    SQLContasReceber1CTRCN2TOTMULTAREC: TBCDField;
    SQLContasReceber1CTRCN2TOTDESCREC: TBCDField;
    SQLContasReceber1CTRCN2TOTMULTACOBR: TBCDField;
    SQLContasReceber1EMPRICODULTREC: TIntegerField;
    SQLContasReceber1CUPOA13ID: TStringField;
    SQLContasReceber1TPDCICOD: TIntegerField;
    SQLContasReceber1PLCTA15COD: TStringField;
    SQLContasReceber1CTRCA30NRODUPLICBANCO: TStringField;
    SQLContasReceber1NOFIA13ID: TStringField;
    SQLContasReceber1CTRCDEMIS: TDateTimeField;
    SQLContasReceber1PENDENTE: TStringField;
    SQLContasReceber1REGISTRO: TDateTimeField;
    SQLContasReceber1CTRCDREABILSPC: TDateTimeField;
    SQLContasReceber1BANCA5CODCHQ: TStringField;
    SQLContasReceber1CTRCA10AGENCIACHQ: TStringField;
    SQLContasReceber1CTRCA15CONTACHQ: TStringField;
    SQLContasReceber1CTRCA15NROCHQ: TStringField;
    SQLContasReceber1CTRCA60TITULARCHQ: TStringField;
    SQLContasReceber1CTRCA20CGCCPFCHQ: TStringField;
    SQLContasReceber1CTRCDDEPOSCHQ: TDateTimeField;
    SQLContasReceber1ALINICOD: TIntegerField;
    SQLContasReceber1PDVDA13ID: TStringField;
    SQLContasReceber1CTRCDESTORNO: TDateTimeField;
    SQLContasReceber1FRETA13ID: TStringField;
    SQLContasReceber1CTRCCTEMREGRECEBER: TStringField;
    SQLContasReceber1COBRA13ID: TStringField;
    SQLContasReceber1CTRCDENVIOCOBRANCA: TDateTimeField;
    SQLContasReceber1CTRCA254HIST: TStringField;
    SQLContasReceber1DUPLA13ID: TStringField;
    SQLContasReceber1AVALA13ID: TStringField;
    SQLContasReceber1CTRCCTIPOREGISTRO: TStringField;
    SQLContasReceber1HTPDICOD: TIntegerField;
    SQLContasReceber1PLCTA15CODDEBITO: TStringField;
    SQLContasReceber1CONTA13ID: TStringField;
    SQLContasReceber1CTRCA13CTRCAIDCHQ: TStringField;
    SQLContasReceber1CTRCCEMITIDOBOLETO: TStringField;
    SQLContasReceber1CTRCA4ANOCOMP: TStringField;
    SQLContasReceber1CTRCA2MESCOMP: TStringField;
    BtAtualizarCampoPERCICMS: TSpeedButton;
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
    SQLNotaFiscalAVALA13ID: TStringField;
    SQLNotaFiscalCUPOA13IDCUPNEG: TStringField;
    SQLNotaFiscalNOFIDCANCEL: TDateTimeField;
    SQLNotaFiscalPLCTA15CODCRED: TStringField;
    SQLNotaFiscalPLCTA15CODDEB: TStringField;
    SQLNotaFiscalUSUAICOD: TIntegerField;
    SQLNotaFiscalUSUAA60LOGIN: TStringField;
    SQLNotaFiscalROTAICOD: TIntegerField;
    SQLNotaFiscalNOFIAOBSCORPONF: TStringField;
    SQLNotaFiscalVEICA13ID: TStringField;
    SQLNotaFiscalNOFICEXPCONTABIL: TStringField;
    SQLNotaFiscalNOFIDSAIDAENTRADA: TDateTimeField;
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
    SQLClienteCLIEA30LOCALIMOV1: TStringField;
    SQLClienteCLIEA30LOCALIMOV2: TStringField;
    SQLClienteCLIEA30MODVEICULO: TStringField;
    SQLClienteCLIEA30TIPOIMOV1: TStringField;
    SQLClienteCLIEA30TIPOIMOV2: TStringField;
    SQLClienteCLIEA4ANOVEICULO: TStringField;
    SQLClienteCLIEA60IMOB: TStringField;
    SQLClienteCLIEA8PLACAVEICULO: TStringField;
    SQLClienteCLIECSTATUSIMOV1: TStringField;
    SQLClienteCLIECSTATUSIMOV2: TStringField;
    SQLClienteCLIEIDIAVCTOCARTAO: TIntegerField;
    SQLClienteCLIEN2VLRALUGUEL: TBCDField;
    SQLClienteROTAICOD: TIntegerField;
    SQLClienteCLIEA30CODCONTABIL: TStringField;
    BtRecalculaSaldoPelosMovimentos: TSpeedButton;
    SQLMovimentoEstoque: TRxQuery;
    SQLProdutoSaldo: TRxQuery;
    SQLProdutoSaldoEMPRICOD: TIntegerField;
    SQLProdutoSaldoPRODICOD: TIntegerField;
    SQLProdutoSaldoPSLDN3QTDE: TBCDField;
    SQLProdutoSaldoPSLDN3QTDMIN: TBCDField;
    SQLProdutoSaldoPSLDN3QTDMAX: TBCDField;
    SQLProdutoSaldoPENDENTE: TStringField;
    SQLProdutoSaldoREGISTRO: TDateTimeField;
    btEmpresaCupomItem: TSpeedButton;
    SQLCupomItemCPITN2VLRQDEVERIAVENDER: TBCDField;
    SQLCupomItemBOMBICOD: TIntegerField;
    SQLCupomItemEMPRICOD: TIntegerField;
    SQLCupomItemAux: TRxQuery;
    btApagaMovtosDuplicadosInventario: TSpeedButton;
    procedure BtnAtualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ExecutarSQLselecionado1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure ListaSQLChange(Sender: TObject);
    procedure ListaTriggerChange(Sender: TObject);
    procedure BtnVlrICMSClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BtAtualizaDataQuitacaoCupomClick(Sender: TObject);
    procedure cboAcoesChange(Sender: TObject);
    procedure BtAtualizarVendCupomItemClick(Sender: TObject);
    procedure BtnAtualizaMesAnoCompetenciaPagarReceberClick(Sender: TObject);
    procedure BtAtualizarCampoPERCICMSClick(Sender: TObject);
    procedure BtRecalculaSaldoPelosMovimentosClick(Sender: TObject);
    procedure btEmpresaCupomItemClick(Sender: TObject);
    procedure btApagaMovtosDuplicadosInventarioClick(Sender: TObject);
  private
    { Private declarations }
    procedure GravaArqTexto(Str, NomeArq : String) ;
    function  ExecutaSQL(ItemIndex : integer; Lista : TFileListBox)  : boolean ;
    procedure CorrecoesBanco;
    procedure VerificaTabelaRemessaBanco;
    function  ConvFloatToStr(Numero : Double) : string ;
    procedure BatchExec(Query : TQuery; Table : TTable) ;
    Function DigitVerifEAN(Cod:string) : string ;
    function  RetornaREDUCAOICMSProduto(CodICMS : Integer) : Double;

  public
    BASEICMS, VLRICMS : Double;
  
    { Public declarations }
  end;

var
  FormTelaPrincipal: TFormTelaPrincipal;

implementation

uses WaitWindow;

{$R *.dfm}
procedure TFormTelaPrincipal.BatchExec(Query : TQuery; Table : TTable) ;
begin
  BatchMove.Source      := Query ;
  BatchMove.Destination := Table ;
  BatchMove.Execute ;
end ;

function TFormTelaPrincipal.ConvFloatToStr(Numero : Double) : string ;
var
  Wstr : string ;
begin
  ConvFloatToStr := '0.00' ;
  if Numero <> null then
  begin
    Wstr := FloatToStr(Numero) ;
    ConvFloatToStr := Wstr ;
    if Pos(',', Wstr) > 0 then
      ConvFloatToStr := Copy(Wstr, 1, Pos(',', Wstr)-1) + '.' + Copy(Wstr, Pos(',', Wstr)+1, 3)
  end
  else ConvFloatToStr := '0.00' ;
end ;

procedure TFormTelaPrincipal.BtnAtualizarClick(Sender: TObject);
var
  i,x : integer ;

begin
  BtnAtualizar.Enabled := False;
  if not Database.Connected then
    Database.Open;
{ adilson comentou
  VerificaTabelaRemessaBanco; }
  for x := 1 to 2 do
    begin
      Memo.Lines.Clear;
      Progress.Min := 0;
      Progress.Max := ListaSQL.Items.Count;
      Progress.Position := 0;
      for i := 0 to ListaSQL.Items.Count-1 do
      begin
        ExecutaSQL(i,ListaSQL);
        Progress.Position := Progress.Position + 1;
        Progress.Update;
        Application.ProcessMessages;
      end;
      if x = 1 then
        begin
          Database.Close;
          Database.Open;
        end;
      Progress.Position := 0;
    end;
  Memo.Lines.SaveToFile('Log.txt');
  Progress.Position := 0;
  Memo.Lines.Clear ;
  // MANIPULAÇÃO DE TRIGGERS E STORED PROCEDURES
  Progress.Max := ListaTrigger.Items.Count ;
  Progress.Position := 0 ;
  SQLScript.SemicolonTerm := False;
  ListaTrigger.SetFocus;
  for i := 0 to ListaTrigger.Items.Count-1 do
  begin
    ExecutaSQL(i,ListaTrigger);
    Progress.Position := Progress.Position + 1;
    Progress.Update;
    Application.ProcessMessages;
  end ;
  Memo.Lines.SaveToFile('Log.txt');
  Progress.Position := 0;
  SQLScript.SemicolonTerm := True;
  CorrecoesBanco;
  Database.Close;
  Application.ProcessMessages;
  ShowMessage('Banco de Dados Atualizado com Sucesso !');
  Close;
  Free;
end;

procedure TFormTelaPrincipal.FormCreate(Sender: TObject);
begin
  Database.Connected := true ;
  PageControl1.ActivePage := TabSheet1;
end;

procedure TFormTelaPrincipal.GravaArqTexto(Str, NomeArq : String) ;
var TxtFil : TextFile ;
begin
  AssignFile(TxtFil, NomeArq) ;
  Rewrite(TxtFil) ;
  WriteLn( TxtFil, Str) ;
  Closefile(TxtFil) ;
end ;

function TFormTelaPrincipal.ExecutaSQL(ItemIndex : integer; Lista : TFileListBox)  : boolean ;
begin
  Lista.ItemIndex := ItemIndex ;
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
        Result := false ;
      end ;
  end ;
end ;


procedure TFormTelaPrincipal.ExecutarSQLselecionado1Click(Sender: TObject);
begin
  if ExecutaSQL(ListaSQL.ItemIndex,ListaSQL) then
    ShowMessage('SQL executado com sucesso !')
  else
    ShowMessage('Problemas ao executar SQL !') ;
end;

procedure TFormTelaPrincipal.CorrecoesBanco;
var
  ChaveOK, Entra : Boolean;
  Fields, Incremento, I : Integer;
  ID : String;

begin
  // ROTINA QUE VERIIFICA O CAMPO REGISTRO NA TABELA DE FORNECEDORES QUE ESTAVA COM O TIPO STRING
  // E DEVE SER DO TIPO DATETIME, SE JÁ FOR DO TIPO CERTO NÃO FAZ NADA;
  try
    SQLAtualiza.Close;
    SQLAtualiza.SQL.Clear;
    SQLAtualiza.SQL.Add('Select REGISTRO from FORNECEDOR');
    SQLAtualiza.Open;
    if SQLAtualiza.FindField('REGISTRO').DataType <> FtDateTime then
      begin
        try
          SQLAtualiza.Close;
          SQLAtualiza.SQL.Clear;
          SQLAtualiza.SQL.Add('DROP INDEX XREGISTRO_FORN');
          SQLAtualiza.ExecSQL;
        except
          Application.ProcessMessages;
        end;
        try
          SQLAtualiza.Close;
          SQLAtualiza.SQL.Clear;
          SQLAtualiza.SQL.Add('ALTER TABLE FORNECEDOR DROP REGISTRO');
          SQLAtualiza.ExecSQL;
        except
          Application.ProcessMessages;
        end;
        try
          SQLAtualiza.Close;
          SQLAtualiza.SQL.Clear;
          SQLAtualiza.SQL.Add('ALTER TABLE FORNECEDOR ADD REGISTRO DATE');
          SQLAtualiza.ExecSQL;
        except
          Application.ProcessMessages;
        end;
        try
          SQLAtualiza.Close;
          SQLAtualiza.SQL.Clear;
          SQLAtualiza.SQL.Add('CREATE INDEX XREGISTRO_FORN ON FORNECEDOR (REGISTRO)');
          SQLAtualiza.ExecSQL;
        except
          Application.ProcessMessages;
        end;
      end;
  except
    on E: Exception do
      begin
        ShowMessage(E.Message);
        exit;
      end;
  end;

  // ROTINA QUE ATUALIZA A CHAVE DA TABELA VENDEDOR COMISSAO
  TableFields.Close;
  TableFields.TableName := 'VENDEDORCOMISSAO';
  TableFields.Open;
  TableFields.First;
  Entra := True;
  for Fields:=0 to TableFields.FieldCount -1 do
    begin
      if TableFields.FindField('NAME').AsString = 'VDCOICOD' then
         Entra := False;
      TableFields.Next;
    end;
  if Entra then
    begin
      SQLAtualiza.Close;
      SQLAtualiza.SQL.Clear;
      SQLAtualiza.SQL.Add('SELECT * FROM VENDEDORCOMISSAO');
      SQLAtualiza.Open;
      try
        TblVendedorComissaoOLD.Close;
        TblVendedorComissaoOLD.Delete;
        TblVendedorComissaoOLD.CreateTable;
      except
        TblVendedorComissaoOLD.CreateTable;
      end;
        TblVendedorComissaoOLD.Open;
      if TblVendedorComissaoOLD.FieldCount > 0 then
        BatchExec(SQLAtualiza,TblVendedorComissaoOLD);
      try
        SQLUpdate.Close;
        SQLAtualiza.Close;
        TableFields.Free;
        SQLUpdate.SQL.Clear;
        SQLUpdate.SQL.Add('DROP TABLE VENDEDORCOMISSAO');
        SQLUpdate.ExecSQL;
      except
        on E: Exception do
        begin
          ShowMessage(E.Message) ;
        end ;
      end;
      try
        Database.StartTransaction;
        SQLUpdate.Close;
        SQLUpdate.SQL.Clear;
        SQLUpdate.SQL.Add('CREATE TABLE VENDEDORCOMISSAO (');
        SQLUpdate.SQL.Add('VENDICOD INTEGER NOT NULL,');
        SQLUpdate.SQL.Add('CUPOA13ID CHAR(13) NOT NULL,');
        SQLUpdate.SQL.Add('VDCOICOD INTEGER NOT NULL,');
        SQLUpdate.SQL.Add('VDCON2TOTVENDVISTA NUMERIC(15, 3),');
        SQLUpdate.SQL.Add('VDCON2TOTVENDPRAZO NUMERIC(15, 3),');
        SQLUpdate.SQL.Add('VDCOINROVEND INTEGER,');
        SQLUpdate.SQL.Add('VDCON2VENDMEDIA NUMERIC(15, 3),');
        SQLUpdate.SQL.Add('VDCON3QTDVEND NUMERIC(15, 3),');
        SQLUpdate.SQL.Add('VDCON2VLRCOMISS NUMERIC(15, 3),');
        SQLUpdate.SQL.Add('VDCODEMIS TIMESTAMP,');
        SQLUpdate.SQL.Add('PENDENTE CHAR(1),');
        SQLUpdate.SQL.Add('REGISTRO TIMESTAMP,');
        SQLUpdate.SQL.Add('PRIMARY KEY(VENDICOD,CUPOA13ID,VDCOICOD))');
        SQLUpdate.ExecSQL;
        Database.Commit;
      except
        on E: Exception do
        begin
          ShowMessage(E.Message) ;
        end ;
      end;
        MakeWindow(TblVendedorComissaoOLD.RecordCount,'Reestruturando a tabela VENDEDORCOMISSAO');
        if not TblVendedorComissaoOLD.IsEmpty then
          begin
            TblVendedorComissaoOLD.First;
            while not TblVendedorComissaoOLD.Eof do
              begin
                try
                  Database.StartTransaction;
                  SQLUpdate.Close;
                  SQLUpdate.SQL.Clear;
                  SQLUpdate.SQL.Add('INSERT INTO VENDEDORCOMISSAO (');
                  SQLUpdate.SQL.Add('VENDICOD,');
                  SQLUpdate.SQL.Add('CUPOA13ID,');
                  SQLUpdate.SQL.Add('VDCOICOD,');
                  SQLUpdate.SQL.Add('VDCON2TOTVENDVISTA,');
                  SQLUpdate.SQL.Add('VDCON2TOTVENDPRAZO,');
                  SQLUpdate.SQL.Add('VDCOINROVEND,');
                  SQLUpdate.SQL.Add('VDCON2VENDMEDIA,');
                  SQLUpdate.SQL.Add('VDCON3QTDVEND,');
                  SQLUpdate.SQL.Add('VDCON2VLRCOMISS,');
                  SQLUpdate.SQL.Add('VDCODEMIS,');
                  SQLUpdate.SQL.Add('PENDENTE,');
                  SQLUpdate.SQL.Add('REGISTRO)');
                  SQLUpdate.SQL.Add('Values (');
                  SQLUpdate.SQL.Add(TblVendedorComissaoOLD.FindField('VENDICOD').AsString + ',');
                  SQLUpdate.SQL.Add('"' + TblVendedorComissaoOLD.FindField('CUPOA13ID').AsString + '",');
                  // RETORNA PROXIMO CODIGO DA COLUNA -> VDCOICOD.
                  try
                    SQLMax.Close;
                    SQLMax.SQL.Clear;
                    SQLMax.SQL.Add('Select MAX(VDCOICOD) AS PROXCOD FROM VENDEDORCOMISSAO');
                    SQLMax.Open;
                    if SQLMax.FindField('PROXCOD').AsFloat > 0 then
                      begin
                        SQLUpdate.SQL.Add(IntToStr(SQLMax.FindField('PROXCOD').AsInteger + 1) + ',')
                      end
                    else
                      SQLUpdate.SQL.Add('1,');
                  except
                    SQLUpdate.SQL.Add('1,');
                  end;

                  SQLUpdate.SQL.Add(ConvFloatToStr(TblVendedorComissaoOLD.FindField('VDCON2TOTVENDVISTA').AsFloat) + ',');
                  SQLUpdate.SQL.Add(ConvFloatToStr(TblVendedorComissaoOLD.FindField('VDCON2TOTVENDPRAZO').AsFloat) + ',');
                  SQLUpdate.SQL.Add(TblVendedorComissaoOLD.FieldByName('VDCOINROVEND').AsString + ',');
                  SQLUpdate.SQL.Add(ConvFloatToStr(TblVendedorComissaoOLD.FindField('VDCON2VENDMEDIA').AsFloat) + ',');
                  SQLUpdate.SQL.Add(ConvFloatToStr(TblVendedorComissaoOLD.FindField('VDCON3QTDVEND').AsFloat) + ',');
                  SQLUpdate.SQL.Add(ConvFloatToStr(TblVendedorComissaoOLD.FindField('VDCON2VLRCOMISS').AsFloat) + ',');
                  SQLUpdate.SQL.Add('"' + FormatDateTime('mm/dd/yyyy',TblVendedorComissaoOLD.FindField('VDCODEMIS').AsDateTime)+ '",');
                  SQLUpdate.SQL.Add('"S",');
                  SQLUpdate.SQL.Add('"' + FormatDateTime('mm/dd/yyyy hh:nn:ss',Now)+ '")');
//                  ShowMessage(SQLUpdate.SQL.Text);
                  SQLUpdate.ExecSQL;
                  Database.Commit;
                  TblVendedorComissaoOLD.Next;
                  SetProgress(TblVendedorComissaoOLD.RecNo);
                except
                  on E: Exception do
                  begin
                    Database.Rollback;
                    ShowMessage(E.Message) ;
                  end ;
                end;
              end;
          end;
      ChaveOK := True;
      DestroyWindow;
      TblVendedorComissaoOLD.Close;
      TblVendedorComissaoOLD.DeleteTable;
      SQLUpdate.Close;
      Application.ProcessMessages;
    end;

  // ROTINA QUE ATUALIZA A CHAVE DA TABELA FECHAMENTOCAIXA
  {SQLAtualiza.Close;
  SQLAtualiza.SQL.Clear;
  SQLAtualiza.SQL.Add('SELECT * FROM FECHAMENTOCAIXA WHERE FECXA13ID IS NULL');
  SQLAtualiza.Open;
  if not SQLAtualiza.IsEmpty then
    begin
      SQLAtualiza.First;
      SQLUpdate.Close;
      SQLUpdate.SQL.Clear;
      SQLUpdate.SQL.Add('UPDATE FECHAMENTOCAIXA SET FECXA13ID = %ID , FECXICOD = %Inc Where %Filtro');
      SQLMax.Close;
      SQLMax.SQL.Clear;
      SQLMax.SQL.Add('SELECT MAX(FECXICOD), COUNT(*) FROM FECHAMENTOCAIXA WHERE FECXDDATAMOV = :Data ');
      SQLMax.SQL.Add('and EMPRICOD = :Empresa and TERMICOD = :Terminal and NUMEICOD = :Numerario');
      SQLMax.ParamByName('Data').AsString      := FormatDateTime('mm/dd/yyyy',SQLAtualiza.FindField('FECXDDATAMOV').AsDateTime);
      SQLMax.ParamByName('Empresa').AsString   := SQLAtualiza.FindField('EMPRICOD').AsString;
      SQLMax.ParamByName('Terminal').AsString  := SQLAtualiza.FindField('TERMICOD').AsString;
      SQLMax.ParamByName('Numerario').AsString := SQLAtualiza.FindField('NUMEICOD').AsString;
      SQLMax.Open;
      MakeWindow(SQLMax.FieldByName('COUNT').AsInteger,'Atualizando a tabela FECHAMENTO CAIXA...');
      if not SQLMax.IsEmpty then
        begin
          if SQLMax.FieldByName('MAX').AsInteger > 0 then
            Incremento := SQLMax.FieldByName('MAX').AsInteger + 1
          else
            Incremento := 1;
        end;
      I := 0;
      while not SQLAtualiza.Eof do
        begin
          ID := FormatFloat('000',SQLAtualiza.FindField('EMPRICOD').AsInteger) +
                FormatFloat('000',SQLAtualiza.FindField('TERMICOD').AsInteger) +
                FormatFloat('000000',Incremento);

          SQLUpdate.MacroByName('ID').AsString    := ID + DigitVerifEAN(ID);
          SQLUpdate.MacroByName('Inc').AsInteger  := Incremento;


          SQLUpdate.MacroByName('Filtro').Value  := 'FECXDDATAMOV = "' + FormatDateTime('mm/dd/yyyy',SQLAtualiza.FindField('FECXDDATAMOV').AsDateTime) + '" and ' +
                                                    'EMPRICOD     =  ' + SQLAtualiza.FindField('EMPRICOD').AsString + ' and ' +
                                                    'TERMICOD     =  ' + SQLAtualiza.FindField('TERMICOD').AsString + ' and ' +
                                                    'NUMEICOD     =  ' + SQLAtualiza.FindField('NUMEICOD').AsString;


          SQLUpdate.ExecSQL;
          SQLAtualiza.Next;
          Inc(I);
          SetProgress(I);
        end;
      DestroyWindow;
    end; }
end;
procedure TFormTelaPrincipal.VerificaTabelaRemessaBanco;
begin
  // DELETA TABELA REMESSABANCO CASO NAO POSSUA REGISTROS
  try
    Database.StartTransaction;
    SQLAtualiza.Close;
    SQLAtualiza.SQL.Clear;
    SQLAtualiza.SQL.Add('SELECT * FROM REMESSABANCO');
    SQLAtualiza.Open;
    if SQLAtualiza.IsEmpty then
      begin
        SQLAtualiza.Close;
        SQLAtualiza.SQL.Clear;
        SQLAtualiza.SQL.Add('DROP TABLE REMESSABANCO');
        SQLAtualiza.ExecSQL;
      end;
    Database.Commit;
  except
  end;
end;

Function TFormTelaPrincipal.DigitVerifEAN(Cod:string) : string ;
Var Digito     : string[1] ;
    DAux       : Double ;
    Par,
    Impar : Integer ;
    Str_Aux : string ;
begin
  DigitVerifEAN := '' ;

  {***********  CODIGO REDUZIDO DE PRODUTOS ***********}
  if Length(Cod) = 3 Then
  begin
    Impar := StrtoInt(Copy(Cod,1,1)) +
             StrtoInt(Copy(Cod,3,1)) ;

    Par := StrtoInt(Copy(Cod,2,1)) ;

    DAux := (Par*3) + Impar ;
    DAux := DAux / 10 ;
    Str_Aux := FloatToStr(DAux) ;
    if Pos(',', Str_Aux) > 0 then
    begin
      Digito := Copy(Str_Aux, Pos(',', Str_Aux)+1,1) ;
      Digito := floattostr(10 - strtofloat(Digito)) ;
    end
    else
      Digito := '0' ;

    DigitVerifEAN := Digito ;
  end ;

  {***********  EAN8 ***********}
  if Length(Cod) = 7 Then
  begin
    Impar := StrtoInt(Copy(Cod,01,1)) +
             StrtoInt(Copy(Cod,03,1)) +
             StrtoInt(Copy(Cod,05,1)) +
             StrtoInt(Copy(Cod,07,1)) ;

    Par := StrtoInt(Copy(Cod,02,1)) +
           StrtoInt(Copy(Cod,04,1)) +
           StrtoInt(Copy(Cod,06,1)) ;

    DAux := (Par*3)+Impar ;
    DAux := DAux / 10 ;
    Str_Aux := FloatToStr(DAux) ;
    if Pos(',', Str_Aux) > 0 then
    begin
      Digito := Copy(Str_Aux, Pos(',', Str_Aux)+1,1) ;
      Digito := floattostr(10 - strtofloat(Digito)) ;
    end
    else
      Digito := '0' ;

    DigitVerifEAN := Digito ;
  end ;

  {***********  EAN13 ***********}
  if Length(Cod) = 12 Then
  begin
    Impar := StrtoInt(Copy(Cod,01,1)) +
             StrtoInt(Copy(Cod,03,1)) +
             StrtoInt(Copy(Cod,05,1)) +
             StrtoInt(Copy(Cod,07,1)) +
             StrtoInt(Copy(Cod,09,1)) +
             StrtoInt(Copy(Cod,11,1)) ;

    Par := StrtoInt(Copy(Cod,02,1)) +
           StrtoInt(Copy(Cod,04,1)) +
           StrtoInt(Copy(Cod,06,1)) +
           StrtoInt(Copy(Cod,08,1)) +
           StrtoInt(Copy(Cod,10,1))+
           StrtoInt(Copy(Cod,12,1)) ;

    DAux := (Par*3)+Impar ;
    DAux := DAux / 10 ;
    Str_Aux := FloatToStr(DAux) ;
    if Pos(',', Str_Aux) > 0 then
    begin
      Digito := Copy(Str_Aux, Pos(',', Str_Aux)+1,1) ;
      Digito := floattostr(10 - strtofloat(Digito)) ;
    end
    else
      Digito := '0' ;

    DigitVerifEAN := Digito ;
  end ;

  {***********  DUN14 ***********}
  if Length(Cod) = 13 Then
  begin
    Impar := StrtoInt(Copy(Cod,01,1)) +
             StrtoInt(Copy(Cod,03,1)) +
             StrtoInt(Copy(Cod,05,1)) +
             StrtoInt(Copy(Cod,07,1)) +
             StrtoInt(Copy(Cod,09,1)) +
             StrtoInt(Copy(Cod,11,1)) +
             StrtoInt(Copy(Cod,13,1)) ;

    Par := StrtoInt(Copy(Cod,02,1)) +
           StrtoInt(Copy(Cod,04,1)) +
           StrtoInt(Copy(Cod,06,1)) +
           StrtoInt(Copy(Cod,08,1)) +
           StrtoInt(Copy(Cod,10,1))+
           StrtoInt(Copy(Cod,12,1)) ;

    DAux := (Impar*3)+Par ;
    DAux := DAux / 10 ;
    Str_Aux := FloatToStr(DAux) ;
    if Pos(',', Str_Aux) > 0 then
    begin
      Digito := Copy(Str_Aux, Pos(',', Str_Aux)+1,1) ;
      Digito := floattostr(10 - strtofloat(Digito)) ;
    end
    else
      Digito := '0' ;

    DigitVerifEAN := Digito ;
  end ;
end ;

procedure TFormTelaPrincipal.FormActivate(Sender: TObject);
begin
  if ParamStr(1) = 'RUN' then
    BtnAtualizar.Click;
end;

procedure TFormTelaPrincipal.MenuItem1Click(Sender: TObject);
begin
  SQLScript.SemicolonTerm := False;
  if ExecutaSQL(ListaTrigger.ItemIndex,ListaTrigger) then
    ShowMessage('SQL executado com sucesso!')
  else
    ShowMessage('Problemas ao executar SQL!') ;
  SQLScript.SemicolonTerm := True;
end;

procedure TFormTelaPrincipal.ListaSQLChange(Sender: TObject);
begin
  ListaSQL.Canvas.FrameRect(ListaSQL.ItemRect(ListaSQL.ItemIndex));
end;

procedure TFormTelaPrincipal.ListaTriggerChange(Sender: TObject);
begin
  ListaTrigger.Canvas.FrameRect(ListaTrigger.ItemRect(ListaTrigger.ItemIndex));
end;

procedure TFormTelaPrincipal.BtnVlrICMSClick(Sender: TObject);
var
 I : Integer;
 ReducaoICMS : Double;
begin
  // ROTINA QUE ATUALIZA A CHAVE DA TABELA FECHAMENTOCAIXA
  BtnVlrICMS.Enabled := False;
  I := 0;
  SQLCupom.Close;
  SQLCupom.MacroByName('Filtro').Value := '(CUPON2BASEICMS is null or CUPON2BASEICMS = 0)';
  SQLCupom.Open;
  if not SQLCupom.IsEmpty then
    begin
      SQLCupom.First;
      Application.MessageBox('O sistema irá atualizar agora o ICMS nos cupons, se possível feche o sistema nas outras estações caso existirem!','Atenção',MB_ICONEXCLAMATION + MB_SYSTEMMODAL + MB_SETFOREGROUND);
      MakeWindow(SQLCupom.RecordCount,'Atualizando ICMS na tabela CUPOM...');
      while not SQLCupom.Eof do
        begin
          SQLCupomItem.Close;
          SQLCupomItem.Open;
          SQLCupomItem.First;
          while not SQLCupomItem.Eof do
            begin
              if SQLCupomItemCPITN2BASEICMS.AsVariant = Null then
                begin
                  SQLProdutoICMS.Close;
                  SQLProdutoICMS.Open;

                  SQLCupomItem.Edit;

                  SQLCupomItemCPITN2BASEICMS.AsFloat      := (SQLCupomItemCPITN3VLRUNIT.AsFloat * SQLCupomItemCPITN3QTD.AsFloat);

                  ReducaoICMS                             := RetornaREDUCAOICMSProduto(SQLProdutoICMSICMSICOD.AsInteger);
                  if ReducaoICMS > 0 then
                    begin
                      SQLCupomItemCPITN2BASEICMS.AsFloat  := (SQLCupomItemCPITN3VLRUNIT.AsFloat * SQLCupomItemCPITN3QTD.AsFloat)* (ReducaoICMS / 100);
                    end;

                  if not SQLProdutoICMS.IsEmpty then
                    SQLCupomItemCPITN2VLRICMS.AsFloat     := SQLCupomItemCPITN2BASEICMS.AsFloat * (SQLProdutoICMSICMSN2ALIQUOTA.AsFloat / 100)
                  else
                    SQLCupomItemCPITN2VLRICMS.AsFloat     := SQLCupomItemCPITN2BASEICMS.AsFloat * (17 / 100);

                  BASEICMS := BASEICMS + SQLCupomItemCPITN2BASEICMS.AsFloat;
                  VLRICMS  := VLRICMS  + SQLCupomItemCPITN2VLRICMS.AsFloat;
                end;
              SQLCupomItem.Post;
              SQLCupomItem.Next;
            end;
          SQLCupom.Edit;
          SQLCupomCUPON2BASEICMS.AsFloat := BASEICMS;
          SQLCupomCUPON2VLRICMS.AsFloat  := VLRICMS;
          SQLCupom.Post;
          SQLCupom.Next;
          BASEICMS  := 0;
          VLRICMS   := 0;
          Inc(I);
          SetProgress(I);
        end;
      DestroyWindow;
    end;
  SQLCupom.Close;
  BtnVlrICMS.Enabled := True;
  ShowMessage('Rotina Finalizada Com Sucesso!');
end;

function  TFormTelaPrincipal.RetornaREDUCAOICMSProduto(CodICMS : Integer) : Double;
var
  ICMS : TQuery;
begin
  ICMS := TQuery.Create(Owner);
  ICMS.DatabaseName := 'DBAt';
  ICMS.Close;
  ICMS.SQL.Clear;
  ICMS.SQL.ADD('SELECT ICMSN2REDBASEICMS FROM ICMS WHERE ICMSICOD = ' + IntToStr(CodICMS));
  ICMS.Open;
  if not ICMS.IsEmpty then
    begin
      if ICMS.FindField('ICMSN2REDBASEICMS').AsFloat > 0 then
        RetornaREDUCAOICMSProduto := ICMS.FindField('ICMSN2REDBASEICMS').AsFloat
      else
        RetornaREDUCAOICMSProduto := 0
    end
  else
    RetornaREDUCAOICMSProduto := 0;

  ICMS.Close;
  ICMS.Destroy;
end;

procedure TFormTelaPrincipal.SpeedButton1Click(Sender: TObject);
var
 I :Integer;
begin
  SQLMovBanco.Close;
  SQLMovBanco.Open;

  Application.MessageBox('O sistema irá atualizar agora a Data de Mov. nas Contas à Receber , se possível feche o sistema nas outras estações caso existirem!','Atenção',MB_ICONEXCLAMATION + MB_SYSTEMMODAL + MB_SETFOREGROUND);
  MakeWindow(SQLMovBanco.RecordCount,'Atualizando Data de Mov. na tabela CONTASRECEBER!');

  SQLMovBanco.First;
  I := 0;
  while not SQLMovBanco.Eof do
    begin
      SQLRecebimento.Close;
      SQLRecebimento.Open;
      if not SQLRecebimento.IsEmpty then
        begin
          SQLRecebimento.Edit;
          SQLRecebimentoRECEDDATAMOV.AsDateTime := SQLMovBancoMVBCDLANC.AsDateTime;
          SQLRecebimento.Post;
        end;
      SQLMovBanco.Next;
      Inc(I);
      SetProgress(I);
      Application.ProcessMessages;
    end;
  SQLMovBanco.Close;
  SQLRecebimento.Close;
  DestroyWindow;
  ShowMessage('Rotina Finalizada Com Sucesso!');
end;

procedure TFormTelaPrincipal.BtAtualizaDataQuitacaoCupomClick(
  Sender: TObject);
var
 I :Integer;
begin
  I := 0;
  SQLCupom.Close;
  SQLCupom.MacroByName('Filtro').Value := 'CUPOCTIPOPADRAO = "CRD" and CUPODQUITACAO is null';
  SQLCupom.Open;
  SQLContasReceber.Open;
  if not SQLCupom.IsEmpty then
    begin
      Application.MessageBox('O sistema irá atualizar agora a data de quitação nos cupons, se possível feche o sistema nas outras estações caso existirem!','Atenção',MB_ICONEXCLAMATION + MB_SYSTEMMODAL + MB_SETFOREGROUND);
      MakeWindow(SQLCupom.RecordCount,'Atualizando QUITAÇÃO na tabela CUPOM...');
      SQLCupom.First;
      while not SQLCupom.Eof do
        begin
          if not SQLContasreceber.IsEmpty then
            begin
              SQLContasreceber.Last;
              if SQLContasreceberCTRCN2TOTREC.Value >= SQLContasreceberCTRCN2VLR.Value then
                begin
                  SQLCupom.Edit;
                  SQLCupomCUPODQUITACAO.Value := SQLContasreceberCTRCDULTREC.Value;
                  SQLCupom.Post;
                end;
            end;
          SQLCupom.Next;
          Application.ProcessMessages;
          Inc(I);
          SetProgress(I);
        end;
      DestroyWindow;
      ShowMessage('Rotina Finalizada Com Sucesso!');
    end;
  SQLCupom.Close;
  SQLContasreceber.Close;
end;

procedure TFormTelaPrincipal.cboAcoesChange(Sender: TObject);
begin
   case cboAcoes.ItemIndex of
      0 : ListaSQL.Mask := '*' + AnsiReplaceStr(edOutrsoFiltros.Text, ' ', '*') + '*.SQL';
      1 : ListaSQL.Mask := 'Adiciona*' + AnsiReplaceStr(edOutrsoFiltros.Text, ' ', '*') + '*.SQL';
      2 : ListaSQL.Mask := 'Atualiza*' + AnsiReplaceStr(edOutrsoFiltros.Text, ' ', '*') + '*.SQL';
      3 : ListaSQL.Mask := 'Deleta*' + AnsiReplaceStr(edOutrsoFiltros.Text, ' ', '*') + '*.SQL';
      4 : ListaSQL.Mask := 'Criar Tabela*' + AnsiReplaceStr(edOutrsoFiltros.Text, ' ', '*') + '*.SQL';
   end;
end;

procedure TFormTelaPrincipal.BtAtualizarVendCupomItemClick(
  Sender: TObject);
var I : integer;
begin
  // ROTINA QUE ATUALIZA O VENDEDOR NA TABELA CUPOMITEM
  BtAtualizarVendCupomItem.Enabled := False;
  I := 0;
  SQLCupom.Close;
  SQLCupom.MacroByName('Filtro').Value := 'CUPOCSTATUS = "A"';
  SQLCupom.Open;
  if not SQLCupom.IsEmpty then
    begin
      SQLCupom.First;
      Application.MessageBox('O sistema irá atualizar agora o Vendedor nos itens dos cupons fiscais, se possível feche o sistema nas outras estações caso existirem!','Atenção',MB_ICONEXCLAMATION + MB_SYSTEMMODAL + MB_SETFOREGROUND);
      MakeWindow(SQLCupom.RecordCount,'Atualizando Vendedor na tabela CUPOMITEM...');
      while not SQLCupom.Eof do
        begin
          SQLCupomItem.Close;
          SQLCupomItem.Open;
          SQLCupomItem.First;
          while not SQLCupomItem.Eof do
            begin
              if SQLCupomItemVENDICOD.AsVariant = Null then
                begin
                  SQLCupomItem.Edit;
                  SQLCupomItemVENDICOD.AsString := SQLCupomVENDICOD.AsString;
                  SQLCupomItem.Post;
                end;
              SQLCupomItem.Next;
            end;
          SQLCupom.Next;
          Inc(I);
          SetProgress(I);
        end;
      DestroyWindow;
    end;
  SQLCupom.Close;
  SQLCupomItem.Close;
  BtAtualizarVendCupomItem.Enabled := True;
  ShowMessage('Rotina Finalizada Com Sucesso!');
end;

procedure TFormTelaPrincipal.BtnAtualizaMesAnoCompetenciaPagarReceberClick(
  Sender: TObject);
var I : integer;
var mes, ano : string;
begin
  I := 0;
  Application.MessageBox('O sistema irá atualizar agora a Data de Competencia nas tabelas de contas a pagar e receber, se possível feche o sistema nas outras estações caso existirem!','Atenção',MB_ICONEXCLAMATION + MB_SYSTEMMODAL + MB_SETFOREGROUND);
  SQLContasPagar.Close;
  SQLContasPagar.MacroByName('MFiltro').Value := '0=0';
  SQLContasPagar.Open;
  if not SQLContasPagar.IsEmpty then
    begin
      MakeWindow(SQLContasPagar.RecordCount,'Atualizando Data de Competencia na tabela de ContasPagar...');
      SQLcontaspagar.First;
      while not SQLcontaspagar.eof do
        begin
          SQLContasPagar.Edit;
          mes := FormatDateTime('mm',SQLContasPagarCTPGDTEMIS.Value);
          ano := FormatDateTime('yyyy',SQLContasPagarCTPGDTEMIS.Value);
          SQLContasPagarCTPGA2MESCOMP.Value := mes;
          SQLContasPagarCTPGA4ANOCOMP.Value := ano;
          SQLContasPagar.Post;
          SQLContasPagar.Next;
          Inc(I);
          SetProgress(I);
        end;
    end;
  DestroyWindow;

  I := 0;
  SQLContasReceber1.Close;
  SQLContasReceber1.MacroByName('MFiltro').Value := '0=0';
  SQLContasReceber1.Open;
  if not SQLContasReceber1.IsEmpty then
    begin
      MakeWindow(SQLContasReceber1.RecordCount,'Atualizando Data de Competencia na tabela de ContasReceber...');
      SQLContasReceber1.First;
      while not SQLContasReceber1.eof do
        begin
          SQLContasReceber1.Edit;
          mes := FormatDateTime('mm',SQLContasReceber1CTRCDEMIS.Value);
          ano := FormatDateTime('yyyy',SQLContasReceber1CTRCDEMIS.Value);
          SQLContasReceber1CTRCA2MESCOMP.Value := mes;
          SQLContasReceber1CTRCA4ANOCOMP.Value := ano;
          SQLContasReceber1.Post;
          SQLContasReceber1.Next;
          Inc(I);
          SetProgress(I);
        end;
    end;
  DestroyWindow;
  SQLContasPagar.Close;
  SQLContasReceber1.Close;
  ShowMessage('Rotina Finalizada Com Sucesso!');
end;

procedure TFormTelaPrincipal.BtAtualizarCampoPERCICMSClick(
  Sender: TObject);
var UFEmit, UFDest : String;
var I : integer;
begin
  UFEmit := 'RS';
  SQLNotaFiscal.Open;
  SQLNotaFiscal.First;
  I := 0;
  MakeWindow(SQLNotaFiscal.RecordCount,'Atualizando Campo Percentual ICMS nos Itens das Notas Fiscais...');
  while not SQLNotaFiscal.eof do
    begin
      SQLCliente.Close;
      SQLCliente.MacroByName('Mfiltro').Value := 'CLIEA13ID = "' + SQLNotaFiscalCLIEA13ID.Value + '"';
      SQLCliente.Open;
      UFDest := SQLClienteCLIEA2UFRES.AsString;

      SQLNotaFiscalitem.Close;
      SQLNotaFiscalitem.MacroByName('Mfiltro').Value := 'NOFIA13ID = "' + SQLNotaFiscalNOFIA13ID.Value + '"';
      SQLNotaFiscalitem.Open;
      if not SQLNotaFiscalitem.IsEmpty then
        begin
          while not SQLNotaFiscalitem.eof do
            begin
              if (SQLNotaFiscalItemNFITN2PERCICMS.Value = 0) or (SQLNotaFiscalItemNFITN2PERCICMS.AsVariant = Null) then
                begin
                  if UFEmit = UFDest then
                    begin
                      SQLNotaFiscalitem.Edit;
                      SQLNotaFiscalItemNFITN2PERCICMS.Value := 17;
                      SQLNotaFiscalitem.Post;
                    end
                  else
                    begin
                      SQLNotaFiscalitem.Edit;
                      SQLNotaFiscalItemNFITN2PERCICMS.Value := 12;
                      SQLNotaFiscalitem.Post;
                    end;
                end;
              SQLNotaFiscalitem.Next;
            end;
        end;
      SQLNotaFiscal.Next;
      Inc(I);
      SetProgress(I);
    end;
  DestroyWindow;
  ShowMessage('Rotina Finalizada Com Sucesso!');
end;

procedure TFormTelaPrincipal.BtRecalculaSaldoPelosMovimentosClick(Sender: TObject);
var I : integer;
begin
//  exit;

  SQLMovimentoEstoque.Close;
//  SQLMovimentoEstoque.MacroByName('MFiltro').Value := '0=0';
  SQLMovimentoEstoque.SQL.Clear;
  SQLMovimentoEstoque.SQL.Add('select prodicod, sum(MVESN3QTDENTRADA-MVESN3QTDSAIDA) from MovimentoEstoque');
  SQLMovimentoEstoque.SQL.Add('where mvesdmov >= "08/19/2012" and empricod=1');
  SQLMovimentoEstoque.SQL.Add('group by prodicod');

  SQLMovimentoEstoque.Open;
  if not SQLMovimentoEstoque.IsEmpty then
    begin
      I := 0;
      MakeWindow(SQLMovimentoEstoque.RecordCount,'Recalculando Saldo de Estoque...');
      SQLMovimentoEstoque.First;
      while not SQLMovimentoEstoque.eof do
        begin
          SQLProdutoSaldo.Close;
          SQLProdutoSaldo.MacroByName('MFiltro').Value := 'EMPRICOD=1 AND PRODICOD = ' + SQLMovimentoEstoque.Findfield('PRODICOD').AsString;
          SQLProdutoSaldo.Open;
          if not SQLProdutoSaldo.IsEmpty then
            begin
              SQLProdutoSaldo.Edit;
              if not SQLMovimentoEstoque.Findfield('SUM').IsNull then
                SQLProdutoSaldoPSLDN3QTDE.Value  := SQLMovimentoEstoque.Findfield('SUM').Value
              else
                SQLProdutoSaldoPSLDN3QTDE.Value  := 0;
              SQLProdutoSaldo.Post;
            end;
          SQLMovimentoEstoque.Next;
          Inc(I);
          SetProgress(I);
        end;
    end;
  DestroyWindow;
  SQLMovimentoEstoque.Close;
  SQLProdutoSaldo.Close;
  ShowMessage('Concluido com Sucesso!');
end;

procedure TFormTelaPrincipal.btEmpresaCupomItemClick(Sender: TObject);
var I : integer;
begin
  // ROTINA QUE ATUALIZA O COD.EMPRESA NA TABELA CUPOMITEM
  I := 0;
  SQLCupomItemAux.Close;
  SQLCupomItemAux.SQL.Clear;
  SQLCupomItemAux.SQL.Add('Select CUPOA13ID, EMPRICOD From CupomItem Where EMPRICOD is Null');
  SQLCupomItemAux.Open;
  SQLCupomItemAux.First;
  if not SQLCupomItemAux.IsEmpty then
    begin
      Application.MessageBox('O sistema irá atualizar agora o campo Empresa nos itens dos cupons fiscais, se possível feche o sistema nas outras estações caso existirem!','Atenção',MB_ICONEXCLAMATION + MB_SYSTEMMODAL + MB_SETFOREGROUND);
      MakeWindow(SQLCupomItemAux.RecordCount,'Atualizando Empresa na tabela CUPOMITEM...');
      while not SQLCupomItemAux.Eof do
        begin
          SQLCupomItemAux.Edit;
          SQLCupomItemAux.FindField('EMPRICOD').AsString := copy(SQLCupomItemAux.FindField('CUPOA13ID').AsString,1,3);
          SQLCupomItemAux.Post;
          SQLCupomItemAux.Next;
          Inc(I);
          SetProgress(I);
        end;
      DestroyWindow;
    end;

  // ROTINA QUE ATUALIZA O COD.EMPRESA NA TABELA CUPOMNUMERARIO
  I := 0;
  SQLCupomItemAux.Close;
  SQLCupomItemAux.SQL.Clear;
  SQLCupomItemAux.SQL.Add('Select CUPOA13ID, EMPRICOD From CupomNumerario Where EMPRICOD is Null');
  SQLCupomItemAux.Open;
  SQLCupomItemAux.First;
  if not SQLCupomItemAux.IsEmpty then
    begin
      Application.MessageBox('O sistema irá atualizar agora o campo Empresa nos Numerarios dos cupons fiscais, se possível feche o sistema nas outras estações caso existirem!','Atenção',MB_ICONEXCLAMATION + MB_SYSTEMMODAL + MB_SETFOREGROUND);
      MakeWindow(SQLCupomItemAux.RecordCount,'Atualizando Empresa na tabela CUPOMNUMERARIO...');
      while not SQLCupomItemAux.Eof do
        begin
          SQLCupomItemAux.Edit;
          SQLCupomItemAux.FindField('EMPRICOD').AsString := copy(SQLCupomItemAux.FindField('CUPOA13ID').AsString,1,3);
          SQLCupomItemAux.Post;
          SQLCupomItemAux.Next;
          Inc(I);
          SetProgress(I);
        end;
      DestroyWindow;
    end;
  SQLCupomItemAux.Close;
  ShowMessage('Rotina Finalizada Com Sucesso!');
end;

procedure TFormTelaPrincipal.btApagaMovtosDuplicadosInventarioClick(
  Sender: TObject);
begin
  SQLMovimentoEstoque.Close;
  SQLMovimentoEstoque.SQL.Clear;
  SQLMovimentoEstoque.SQL.Add('select prodicod, max(mvesicod), count(mvesicod) from MovimentoEstoque');
  SQLMovimentoEstoque.SQL.Add('where (mvesdmov<="08/26/2012") and movda13id="AI26/08/12" ');
  SQLMovimentoEstoque.SQL.Add('group by prodicod having count(prodicod)>1 ');
  SQLMovimentoEstoque.Open;
  // Tem movimento duplicado no inventario acima
  if not SQLMovimentoEstoque.IsEmpty then
    begin
      while not SQLMovimentoEstoque.eof do
        begin
          SQLAtualiza.Close;
          SQLAtualiza.SQL.Clear;
          SQLAtualiza.SQL.Add('Delete from MovimentoEstoque where mvesicod = '+SQLMovimentoEstoque.FindField('MAX').AsString);
          SQLAtualiza.ExecSQL;
          SQLMovimentoEstoque.Next;
        end;
      SQLAtualiza.Close;
      SQLAtualiza.SQL.Clear;
      SQLMovimentoEstoque.Close;
      ShowMessage('Concluido com Sucesso!');
    end
  else
   ShowMessage('Nenhum Registro Encontrado!');
end;

end.
