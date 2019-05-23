unit CadastroFreteSimples;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, VarSys, FormResources, DBCtrls, RxDBComb,
  RxLookup, UnitLibrary, UCrpe32, StrUtils;

type
  TFormCadastroFreteSimples = class(TFormCadastroTEMPLATE)
    SQLTemplateFRETA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateFRETICOD: TIntegerField;
    SQLTemplateCLIEA13IDREMETE: TStringField;
    SQLTemplateCLIEA13IDDESTINO: TStringField;
    SQLTemplateCLIEA13IDCONSIG: TStringField;
    SQLTemplateFRETCPAGO: TStringField;
    SQLTemplateFRETN2VLR: TBCDField;
    SQLTemplateFRETN2VLRTOTAL: TBCDField;
    SQLTemplateFRETN3QTDETOTAL: TBCDField;
    SQLTemplateFRETN2BASECALCULO: TBCDField;
    SQLTemplateFRETN2ICMS: TBCDField;
    SQLTemplatePLCTA15COD: TStringField;
    SQLTemplatePLRCICOD: TIntegerField;
    Label1: TLabel;
    TabSheetFinanceiro: TTabSheet;
    ButtonFinanceiro: TRxSpeedButton;
    QueryCliente: TQuery;
    SQLTemplateCLIEA60ENDCOLETA: TStringField;
    SQLTemplateCLIEA60ENDENTREGA: TStringField;
    SQLTemplateCLIEA60REMENOME: TStringField;
    SQLTemplateCLIEA60DESTNOME: TStringField;
    SQLTemplateCLIEA60CONSNOME: TStringField;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    RadioPago: TDBRadioGroup;
    SQLTemplateFRETCSTATUS: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    ComboStatus: TRxDBComboBox;
    Label14: TLabel;
    QueryPlanoRecebimento: TQuery;
    SQLTemplatePLRCA60DESCR: TStringField;
    QueryPlanoConta: TQuery;
    SQLTemplatePLCTA60DESCR: TStringField;
    PanelPlano: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    ButtonCadastroPlanoConta: TSpeedButton;
    ButtonCadastroPlanoPagto: TSpeedButton;
    Panel7: TPanel;
    Panel8: TPanel;
    DBGrid2: TDBGrid;
    Panel11: TPanel;
    Label40: TLabel;
    Label28: TLabel;
    ComboNumerarioPrazo: TRxDBLookupCombo;
    ComboNumerarioVista: TRxDBLookupCombo;
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
    SQLPlanoParcela: TRxQuery;
    SQLParcelasPrazoVendaTemp: TRxQuery;
    SQLParcelasPrazoVendaTempTERMICOD: TIntegerField;
    SQLParcelasPrazoVendaTempDATAVENCTO: TDateTimeField;
    SQLParcelasPrazoVendaTempNROPARCELA: TIntegerField;
    SQLParcelasPrazoVendaTempVALORVENCTO: TBCDField;
    SQLParcelasPrazoVendaTempNUMEICOD: TIntegerField;
    SQLParcelasPrazoVendaTempNumerarioLookup: TStringField;
    SQLParcelasPrazoVendaTempTIPOPADR: TStringField;
    DSSQLParcelasPrazoVendaTemp: TDataSource;
    SQLNumerarioVista: TRxQuery;
    SQLNumerarioVistaNUMEICOD: TIntegerField;
    SQLNumerarioVistaNUMEA30DESCR: TStringField;
    SQLNumerarioVistaNUMECVISTAPRAZO: TStringField;
    SQLNumerarioVistaNUMECATIVO: TStringField;
    SQLNumerarioVistaNUMEA5TIPO: TStringField;
    SQLNumerarioPrazo: TRxQuery;
    DSSQLNumerarioPrazo: TDataSource;
    DSSQLNumerarioVista: TDataSource;
    SQLNumerario: TRxQuery;
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
    DSSQLContasReceber: TDataSource;
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
    SQLContasReceberPDVDA13ID: TStringField;
    SQLContasReceberCTRCDESTORNO: TDateTimeField;
    SQLContasReceberFRETA13ID: TStringField;
    Label15: TLabel;
    QueryFuncionario: TQuery;
    ButtonCadastroFuncionario: TSpeedButton;
    SQLTemplateFUNCA60NOME: TStringField;
    SQLTemplateFUNCA13ID: TStringField;
    MnConhecimentodeFrete: TMenuItem;
    TblFrete: TTable;
    TblFreteRemeNome: TStringField;
    TblFreteRemeEnd: TStringField;
    TblFreteRemeCidade: TStringField;
    TblFreteRemeCnpj: TStringField;
    TblFreteRemeUF: TStringField;
    TblFreteDestNome: TStringField;
    TblFreteDestEnd: TStringField;
    TblFreteDestCnpj: TStringField;
    TblFreteDestUf: TStringField;
    TblFreteConsNome: TStringField;
    TblFreteConsEnd: TStringField;
    TblFreteConsCidade: TStringField;
    TblFreteConsUf: TStringField;
    TblFreteDestCidade: TStringField;
    TblFreteProduto: TStringField;
    TblFreteNotaFiscal: TStringField;
    TblFreteQuantidade: TFloatField;
    TblFreteUnidade: TStringField;
    TblFreteValorFrete: TFloatField;
    TblFreteValorTotalFrete: TFloatField;
    QueryClienteCLIEA13ID: TStringField;
    QueryClienteCLIEA60ENDRES: TStringField;
    QueryClienteCLIEA60RAZAOSOC: TStringField;
    QueryClienteCLIEA60CIDRES: TStringField;
    QueryClienteCLIEA14CGC: TStringField;
    SQLTemplateCLIEA60REMECID: TStringField;
    SQLTemplateCLIEA14REMECGC: TStringField;
    SQLTemplateCLIEADESTCIDADE: TStringField;
    SQLTemplateCLIEA14DESTCGC: TStringField;
    SQLTemplateCLIEA60CONSCIDADE: TStringField;
    QueryClienteCLIEA2UFRES: TStringField;
    SQLTemplateCLIEA2REMEUF: TStringField;
    SQLTemplateCLIEA2DESTUF: TStringField;
    SQLTemplateCLIEA2CONSUF: TStringField;
    SQLTemplateCLIEA60CONSEND: TStringField;
    TblFretePagar: TStringField;
    TblFretePago: TStringField;
    Report: TCrpe;
    SQLTemplateVEICA13ID: TStringField;
    QueryVeiculo: TQuery;
    SQLTemplateVEICA60DESCR: TStringField;
    Label16: TLabel;
    ButtonCadastroVeiculo: TSpeedButton;
    TblFreteEspecie: TStringField;
    TblFreteObservacao: TStringField;
    Label17: TLabel;
    DBEdit24: TDBEdit;
    SQLTemplateFRETN2VLRCOMISSAO: TBCDField;
    QueryFuncionarioFUNCA13ID: TStringField;
    QueryFuncionarioEMPRICOD: TIntegerField;
    QueryFuncionarioTERMICOD: TIntegerField;
    QueryFuncionarioFUNCICOD: TIntegerField;
    QueryFuncionarioFUNCA60NOME: TStringField;
    QueryFuncionarioFUNCCAUTONOMO: TStringField;
    QueryFuncionarioPENDENTE: TStringField;
    QueryFuncionarioREGISTRO: TDateTimeField;
    QueryFuncionarioFUNCN2PERCCOMISSAO: TBCDField;
    QueryFuncionarioFUNCA11CPF: TStringField;
    QueryFuncionarioFUNCA14CNPJ: TStringField;
    QueryFuncionarioFUNCA15INSS: TStringField;
    QueryFuncionarioFUNCA60ENDRES: TStringField;
    QueryFuncionarioVEICA13ID: TStringField;
    SQLPlanoPLRCN2PERCACRESC: TBCDField;
    SQLQtdeItens: TRxQuery;
    BatchMove: TBatchMove;
    TableItensImpressao: TTable;
    SQLRomaneio: TRxQuery;
    mnRomaneiodeFrete: TMenuItem;
    DSSQLRomaneio: TDataSource;
    DBGrid1: TDBGrid;
    SQLItens: TRxQuery;
    DSSQLItens: TDataSource;
    Splitter1: TSplitter;
    SQLProduto: TRxQuery;
    SQLRomaneioFUNCA60NOME: TStringField;
    SQLRomaneioCLIENTE: TStringField;
    SQLRomaneioDESTINO: TStringField;
    SQLRomaneioCONSIG: TStringField;
    SQLRomaneioFRETA13ID: TStringField;
    SQLRomaneioFRITICOD: TIntegerField;
    SQLRomaneioPRODICOD: TIntegerField;
    SQLRomaneioPRODN2VLR: TBCDField;
    SQLRomaneioFRITN2ICMS: TBCDField;
    SQLRomaneioFRITN2VLRICMS: TBCDField;
    SQLRomaneioUNIDICOD: TIntegerField;
    SQLRomaneioFRITN3QTDE: TBCDField;
    SQLRomaneioFRITA30ESPECIE: TStringField;
    SQLRomaneioFRITA30MARCA: TStringField;
    SQLRomaneioREGISTRO: TDateTimeField;
    SQLRomaneioPENDENTE: TStringField;
    SQLRomaneioFRETA13ID_1: TStringField;
    SQLRomaneioEMPRICOD: TIntegerField;
    SQLRomaneioTERMICOD: TIntegerField;
    SQLRomaneioFRETICOD: TIntegerField;
    SQLRomaneioCLIEA13IDREMETE: TStringField;
    SQLRomaneioCLIEA13IDDESTINO: TStringField;
    SQLRomaneioCLIEA13IDCONSIG: TStringField;
    SQLRomaneioFRETCPAGO: TStringField;
    SQLRomaneioFRETTOBS: TStringField;
    SQLRomaneioFRETN2VLR: TBCDField;
    SQLRomaneioFRETN2VLRTOTAL: TBCDField;
    SQLRomaneioFRETN3QTDETOTAL: TBCDField;
    SQLRomaneioFRETN2BASECALCULO: TBCDField;
    SQLRomaneioFRETN2ICMS: TBCDField;
    SQLRomaneioPLCTA15COD: TStringField;
    SQLRomaneioPLRCICOD: TIntegerField;
    SQLRomaneioFRETCSTATUS: TStringField;
    SQLRomaneioREGISTRO_1: TDateTimeField;
    SQLRomaneioPENDENTE_1: TStringField;
    SQLRomaneioFRETN2VLRCOMISSAO: TBCDField;
    SQLRomaneioFUNCA13ID: TStringField;
    SQLRomaneioVEICA13ID: TStringField;
    SQLRomaneioNOCPDEMISSAO: TDateTimeField;
    SQLRomaneioPRODA60DESCR: TStringField;
    TblFreteVlrColeta: TFloatField;
    TblFreteVlrEntrega: TFloatField;
    TblFreteNaturezaCarga: TStringField;
    TblFretePeso: TFloatField;
    TblFreteIcms: TFloatField;
    TblFreteBaseCalculoIcms: TFloatField;
    TblFretePercIcms: TFloatField;
    TabSheetItem: TTabSheet;
    pnItens: TPanel;
    QueryProduto: TQuery;
    QueryProdutoPRODICOD: TIntegerField;
    QueryProdutoPRODA60DESCR: TStringField;
    QueryProdutoPRODN3VLRVENDA: TBCDField;
    QueryProdutoICMSICOD: TIntegerField;
    QueryProdutoICMSN2ALIQUOTA: TStringField;
    QueryUnidade: TQuery;
    QueryIcms: TQuery;
    DSSQLProduto: TDataSource;
    DSQueryUnidade: TDataSource;
    SQLItensFRETA13ID: TStringField;
    SQLItensFRITICOD: TIntegerField;
    SQLItensPRODICOD: TIntegerField;
    SQLItensPRODN2VLR: TBCDField;
    SQLItensFRITN2ICMS: TBCDField;
    SQLItensFRITN2VLRICMS: TBCDField;
    SQLItensUNIDICOD: TIntegerField;
    SQLItensFRITN3QTDE: TBCDField;
    SQLItensFRITA30ESPECIE: TStringField;
    SQLItensFRITA30MARCA: TStringField;
    SQLItensREGISTRO: TDateTimeField;
    SQLItensPENDENTE: TStringField;
    SQLItensPRODA60DESCR: TStringField;
    SQLItensUNIDA5DESCR: TStringField;
    SQLItensFRITN3OUTROS: TBCDField;
    SQLItensFRITANATCARGA: TStringField;
    SQLItensFRITN3PESO: TBCDField;
    SQLItensFRITN2VLRNOTA: TBCDField;
    SQLItensFRITINOTAFISCAL: TStringField;
    SQLRomaneioFRITINOTAFISCAL: TStringField;
    SQLTemplateFRITINOTAFISCAL: TStringField;
    SQLItensFRITN2VLRVALOREM: TBCDField;
    Label21: TLabel;
    DBEdit29: TDBEdit;
    TblFreteDescrIcms: TStringField;
    QueryIcmsICMSICOD: TIntegerField;
    QueryIcmsICMSN2ALIQUOTA: TBCDField;
    QueryIcmsICMSA60DESCR: TStringField;
    QueryProdutoICMSA60DESCR: TStringField;
    TblFretePesoTotal: TFloatField;
    TblFreteNotasTotalVlr: TFloatField;
    SQLItensCFOPA5COD: TStringField;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label33: TLabel;
    SQLCFOP: TRxQuery;
    DSSQLCFOP: TDataSource;
    TblFreteNatOperacao: TStringField;
    TblFreteCFOP: TStringField;
    SQLCFOPCFOPA5COD: TStringField;
    SQLCFOPCFOPA60DESCR: TStringField;
    SQLCFOPCFOPCVENDA: TStringField;
    GroupBox1: TGroupBox;
    Label19: TLabel;
    DBMemo1: TDBMemo;
    Label20: TLabel;
    Label30: TLabel;
    edPeso: TDBEdit;
    Label34: TLabel;
    DBEdit26: TDBEdit;
    GroupBox2: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    Label29: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit36: TDBEdit;
    GroupBox3: TGroupBox;
    Label26: TLabel;
    dbeColeta: TDBEdit;
    Label27: TLabel;
    dbeEntrega: TDBEdit;
    Label31: TLabel;
    Label24: TLabel;
    DBEdit32: TDBEdit;
    Label32: TLabel;
    DBEdit25: TDBEdit;
    Label25: TLabel;
    DBEdit33: TDBEdit;
    SQLItensFRITN2VOLUMES: TBCDField;
    SQLItensFRITN2PEDAGIO: TBCDField;
    Label35: TLabel;
    DBEdit27: TDBEdit;
    Label36: TLabel;
    DBEdit39: TDBEdit;
    SQLItensFRITN4PERCVALOREM: TBCDField;
    Label37: TLabel;
    DBEdit40: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit38: TDBEdit;
    DSQueryCliente: TDataSource;
    RxDBLookupCombo6: TRxDBLookupCombo;
    RxDBLookupCombo7: TRxDBLookupCombo;
    DSQueryFuncionario: TDataSource;
    DSQueryVeiculo: TDataSource;
    TblFreteQtdeVolumes: TFloatField;
    TblFreteFreteValorem: TFloatField;
    TblFreteFretePedagio: TFloatField;
    SQLTemplateCLIEA60CIDENTR: TStringField;
    SQLTemplateCLIEA13IDREDESPACH: TStringField;
    SQLTemplateCLIEA60ENDREDESP: TStringField;
    SQLTemplateCLIEA2UFREDESP: TStringField;
    SQLTemplateCLIEA60CIDREDESP: TStringField;
    GroupBox4: TGroupBox;
    RxDBLookupCombo3: TRxDBLookupCombo;
    ButtonCadastroRemetente: TSpeedButton;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit14: TDBEdit;
    GroupBox5: TGroupBox;
    ButtonCadastroDestinatario: TSpeedButton;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit16: TDBEdit;
    GroupBox6: TGroupBox;
    RxDBLookupCombo5: TRxDBLookupCombo;
    DBEdit1: TDBEdit;
    DBEdit9: TDBEdit;
    ButtonCadastroConsignatario: TSpeedButton;
    DBEdit15: TDBEdit;
    GroupBox7: TGroupBox;
    RxDBLookupCombo8: TRxDBLookupCombo;
    ButtonCadastroRedespacho: TSpeedButton;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit19: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    SQLTemplateCLIEA14CNPJREDES: TStringField;
    TblFreteRedespCNPJ: TStringField;
    TblFreteRedesNome: TStringField;
    TblFreteResdepEnd: TStringField;
    TblFreteRedespCidade: TStringField;
    TblFreteRedespUF: TStringField;
    SQLTemplateCLIEA60RESDENOME: TStringField;
    SQLTemplateCLIEA20REMEIE: TStringField;
    SQLTemplateCLIEA20DESTIE: TStringField;
    SQLTemplateCLIEA14CONSCNPJ: TStringField;
    SQLTemplateCLIEA20CONSIE: TStringField;
    SQLTemplateCLIEA20REDESIE: TStringField;
    TblFreteRemeIE: TStringField;
    TblFreteDestIE: TStringField;
    TblFreteConsCNPJ: TStringField;
    TblFreteConsIE: TStringField;
    TblFreteRedespIE: TStringField;
    QueryClienteCLIEA20IE: TStringField;
    SQLTabelaFreteLookUp: TRxQuery;
    cblTabelaFrete: TRxDBLookupCombo;
    dsSQLTabelaFreteLookUp: TDataSource;
    Label11: TLabel;
    SQLTabelaFreteFaixaPeso: TRxQuery;
    SQLItensFRITN2PESOVLR: TBCDField;
    chkColeta: TDBCheckBox;
    chkEntrega: TDBCheckBox;
    SQLItensFRITCCOLETA: TStringField;
    SQLItensFRITCENTREGA: TStringField;
    Label38: TLabel;
    DBEdit22: TDBEdit;
    SQLTabelaFreteFaixaPesoTBFTICOD: TIntegerField;
    SQLTabelaFreteFaixaPesoTFFVICOD: TIntegerField;
    SQLTabelaFreteFaixaPesoTBFCICOD: TIntegerField;
    SQLTabelaFreteFaixaPesoTFFVN2PESOMIN: TBCDField;
    SQLTabelaFreteFaixaPesoTFFVN2PESOMAX: TBCDField;
    SQLTabelaFreteFaixaPesoTFFVN2PESOVLR: TBCDField;
    SQLTabelaFreteFaixaPesoCIDAICOD: TIntegerField;
    SQLTabelaFreteFaixaPesoTBFCCCALCULOPESO: TStringField;
    SQLItensTBFTICOD: TIntegerField;
    cblPlanoConta: TRxDBLookupCombo;
    dsQueryPlanoRecebimento: TDataSource;
    dsQueryPlanoConta: TDataSource;
    cblPlanoPgto: TRxDBLookupCombo;
    SQLTabelFrete: TRxQuery;
    SQLTabelFreteTBFTICOD: TIntegerField;
    SQLTabelFreteTBFTA60DESCRICAO: TStringField;
    SQLTabelFreteTBFCCCALCULOPESO: TStringField;
    SQLTabelFreteTBFCCCOLETA: TStringField;
    SQLTabelFreteTBFCCENTREGA: TStringField;
    SQLTabelFreteTBFCN2COLETAVLR: TBCDField;
    SQLTabelFreteTBFCN2COLETAEXCVLR: TBCDField;
    SQLTabelFreteTBFCN2COLETAPESOMX: TBCDField;
    SQLTabelFreteTBFCN2ENTREGAVLR: TBCDField;
    SQLTabelFreteTBFCN2ENTREGAEXCVLR: TBCDField;
    SQLTabelFreteTBFCN2ENTREGAPESOMX: TBCDField;
    SQLTabelFreteTBFCN2TARIFAMINIMA: TBCDField;
    SQLTabelFreteTBFCN2VALORPESOEXEC: TBCDField;
    SQLTabelFretePESOMAX: TBCDField;
    SQLTabelaFreteLookUpTBFTICOD: TIntegerField;
    SQLTabelaFreteLookUpTBFTA60DESCRICAO: TStringField;
    SQLTabelaFreteLookUpTBFTA60ORIGEM: TStringField;
    SQLTabelaFreteLookUpTBFTA1000OBS: TMemoField;
    SQLItensDescrIcms: TStringField;
    QueryPlanoRecebimentoPLRCICOD: TIntegerField;
    QueryPlanoRecebimentoPLRCA60DESCR: TStringField;
    QueryPlanoRecebimentoPRAZOMAX: TIntegerField;
    SQLContasReceberCTRCA254HIST: TStringField;
    Label39: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplateFRETINROFORM: TIntegerField;
    SQLTabelaFreteFaixaPesoICMUA2UF: TStringField;
    SQLTabelFreteCIDAICOD: TIntegerField;
    SQLItensCIDAICOD: TIntegerField;
    dsSQLTabelFrete: TDataSource;
    SQLTabelFreteTBFCICOD: TIntegerField;
    DataSource1: TDataSource;
    SQLItensFRITN3CAT: TBCDField;
    gboFaixaDif: TGroupBox;
    edCidDiferente: TEdit;
    SQLItensFRITN2OUTRASDESP: TBCDField;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBMemo3: TDBMemo;
    SQLTemplateFRETTOBS: TStringField;
    DBGrid3: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure ButtonCadastroRemetenteClick(Sender: TObject);
    procedure ButtonCadastroDestinatarioClick(Sender: TObject);
    procedure ButtonCadastroConsignatarioClick(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure SQLTemplateAfterInsert(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure ButtonCadastroPlanoPagtoClick(Sender: TObject);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplatePLRCICODChange(Sender: TField);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure ComboNumerarioPrazoChange(Sender: TObject);
    procedure ComboNumerarioVistaChange(Sender: TObject);
    procedure SQLContasReceberBeforePost(DataSet: TDataSet);
    procedure ButtonCadastroFuncionarioClick(Sender: TObject);
    procedure MnConhecimentodeFreteClick(Sender: TObject);
    procedure ButtonCadastroVeiculoClick(Sender: TObject);
    procedure SQLContasReceberNewRecord(DataSet: TDataSet);
    procedure ReportWindowClose(Sender: TObject);
    procedure mnRomaneiodeFreteClick(Sender: TObject);
    procedure DBEdit25Exit(Sender: TObject);
    procedure ButtonCadastroUnidadeClick(Sender: TObject);
    procedure SQLTemplateAfterOpen(DataSet: TDataSet);
    procedure SQLItensBeforePost(DataSet: TDataSet);
    procedure SQLItensBeforeEdit(DataSet: TDataSet);
    procedure DSSQLProdutoDataChange(Sender: TObject; Field: TField);
    procedure SQLItensAfterPost(DataSet: TDataSet);
    procedure SQLItensNewRecord(DataSet: TDataSet);
    procedure SQLItensFRITN2VLRNOTAChange(Sender: TField);
    procedure SQLTemplateAfterScroll(DataSet: TDataSet);
    procedure RxDBLookupCombo3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateAfterCancel(DataSet: TDataSet);
    procedure SQLTemplateBeforeCancel(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure RxDBLookupCombo6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CalculaFrete;
    procedure edPesoExit(Sender: TObject);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure chkColetaClick(Sender: TObject);
    procedure cblPlanoContaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ButtonCadastroPlanoContaClick(Sender: TObject);
    procedure cblPlanoPgtoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLItensCalcFields(DataSet: TDataSet);
    procedure GravaFinanceiro;
    procedure TabSheetConsultaShow(Sender: TObject);
    procedure TabSheetDadosPrincipaisShow(Sender: TObject);
    procedure TabSheetFinanceiroShow(Sender: TObject);
    procedure TabSheetItemShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioPagoChange(Sender: TObject);
    procedure DSSQLItensDataChange(Sender: TObject; Field: TField);
    procedure edPesoEnter(Sender: TObject);
  private
    { Private declarations }
    Insert, InsertItens: Boolean;
    PlanoAnterior,
    PlanoNovo,
    CidadeFretePag, EstadoFretePag, CidadeFrete, EstadoFrete,
    ContasReceberCliente,
    ContasReceberID, FRETEID, EstadoEmpresa : string;
    CodCidadeFrete, CodEstadoFrete : Integer;
    CalculaPorPeso : Boolean;
    ValorAntigo    : Double;
    procedure OpenTemp;
  public
    { Public declarations }
  end;

var
  FormCadastroFreteSimples: TFormCadastroFreteSimples;

implementation

uses CadastroFreteItem, CadastroCliente,
  DataModulo, CadastroFuncionario, CadastroVeiculo, DataModuloTemplate,
  TelaConsultaPlanoRecebimento, TelaConsultaProduto, CadastroUnidade,
  TelaSelecaoCidadeUFFrete, TelaConsultaPlanoContas, CadastroTabelaFrete,
  CadastroFreteFinanceiro;

{$R *.dfm}

procedure TFormCadastroFreteSimples.OpenTemp;
begin
  if not SQLParcelasPrazoVendaTemp.Active then
    begin
      SQLParcelasPrazoVendaTemp.Close;
      SQLParcelasPrazoVendaTemp.SQL.Clear;
      SQLParcelasPrazoVendaTemp.SQL.Add('select * from PARCELASPRAZOVENDATEMP');
      SQLParcelasPrazoVendaTemp.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual));
      SQLParcelasPrazoVendaTemp.SQL.Add('order by NROPARCELA');
      SQLParcelasPrazoVendaTemp.Open;
    end;
end;

procedure TFormCadastroFreteSimples.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLCFOP.Active then SQLCFOP.Active := True;
  Tabela := 'FRETE';
  Insert := False;
  if not SQLItens.Active then SQLItens.Active := True;
  if not SQLTabelFrete.Active then SQLTabelFrete.Active := True;
  if not SQLTabelaFreteFaixaPeso.Active then SQLTabelaFreteFaixaPeso.Active := True;
  if not SQLTabelaFreteLookUp.Active then SQLTabelaFreteLookUp.Active := True;
  if not SQLNumerarioPrazo.Active then SQLNumerarioPrazo.Active := True;
  if not SQLNumerarioVista.Active then SQLNumerarioVista.Active := True;
  EstadoEmpresa := SQLLocate('EMPRESA','EMPRICOD','EMPRA2UF',IntToStr(EmpresaCorrente));
end;

procedure TFormCadastroFreteSimples.ButtonCadastroRemetenteClick(Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('CLIEA13IDREMETE');
  FieldOrigem := 'CLIEA13ID';
  CriaFormulario(TFormCadastroCliente,'FormCadastroCliente',False,True,False,'');
end;

procedure TFormCadastroFreteSimples.ButtonCadastroDestinatarioClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('CLIEA13IDDESTINO');
  FieldOrigem := 'CLIEA13ID';
  CriaFormulario(TFormCadastroCliente,'FormCadastroCliente',False,True,False,'');
end;

procedure TFormCadastroFreteSimples.ButtonCadastroConsignatarioClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('CLIEA13IDCONSIG');
  FieldOrigem := 'CLIEA13ID';
  CriaFormulario(TFormCadastroCliente,'FormCadastroCliente',False,True,False,'');
end;

procedure TFormCadastroFreteSimples.SQLTemplateBeforePost(DataSet: TDataSet);
  function CommaToPoint(Value : Double) : String;
  begin
    Result := FormatFloat('###0.00',Value);
    Result[Pos(',',Result)] := '.';
  end;
var
  FaltaNumerario : boolean;
  Query : TQuery;
  Next : integer;
begin
{  if (SQLItensFRITN3PESO.AsFloat <> 0) and (cblTabelaFrete.Text <> '...') and
     not (SQLTemplate.State in [dsInsert]) then
     CalculaFrete;   }
  
  PlanoNovo  := SQLTemplate.FindField('PLRCICOD').asString;
  if PlanoNovo <> PlanoAnterior then
    if PlanoNovo <> '' then
        begin
          FaltaNumerario := False;
          OpenTemp;
          SQLParcelasPrazoVendaTemp.DisableControls;
          SQLParcelasPrazoVendaTemp.First;
          while not SQLParcelasPrazoVendaTemp.Eof do
            begin
              if SQLParcelasPrazoVendaTempNUMEICOD.asVariant = Null then
                FaltaNumerario := True;
              SQLParcelasPrazoVendaTemp.Next;
            end;
          SQLParcelasPrazoVendaTemp.First;
          SQLParcelasPrazoVendaTemp.EnableControls;
          if FaltaNumerario then
            begin
              ShowMessage('Selecione os Numerários!');
              Abort;
            end;
        end;
  if not DM.SQLConfigTransportadora.Active then DM.SQLConfigTransportadora.Open;
  if DM.SQLConfigTransportadora.FieldByName('CFTROPFUICODCREDITO').AsVariant <> null then
    begin
      if DataSet.FieldByName('FRETCSTATUS').AsString = 'E' then
        if DataSet.FieldByName('FUNCA13ID').AsVariant <> null then
          begin
            Query := TQuery.Create(Application);
            Query.DatabaseName := 'DB';
            Query.SQL.Clear;
            Query.SQL.Add('SELECT MAX(FUCCICOD) AS NEXT FROM FUNCIONARIOCONTACORRENTE WHERE FUNCA13ID = "' + DataSet.FieldByName('FUNCA13ID').AsString + '"');
            Query.Open;
            Next := Query.FindField('NEXT').AsInteger + 1;
            Query.Close;
            Query.SQL.Clear;
            Query.SQL.Add('INSERT INTO FUNCIONARIOCONTACORRENTE(FUNCA13ID,FUCCICOD,FUCCN2VLRDEBITO,FUCCN2VLRCREDITO,OPFUICOD,PENDENTE,REGISTRO,FUCCN2VLRTOTREC,FUCCN2VLRULTREC,FUCCDLANCAMENTO)');
            Query.SQL.Add('VALUES ("' + DataSet.FieldByName('FUNCA13ID').AsString + '",' + IntToStr(Next) + ',0,');
            if QueryFuncionarioFUNCCAUTONOMO.AsString = 'A' then
              Query.SQL.Add(CommaToPoint((DataSet.FieldByName('FRETN3QTDETOTAL').AsFloat * DataSet.FieldByName('FRETN2VLRCOMISSAO').AsFloat)) + ',')
            else
              Query.SQL.Add(CommaToPoint((DataSet.FieldByName('FRETN3QTDETOTAL').AsFloat * DataSet.FieldByName('FRETN2VLRCOMISSAO').AsFloat) * (QueryFuncionarioFUNCN2PERCCOMISSAO.AsFloat / 100)) + ',');
            Query.SQL.Add(DM.SQLConfigTransportadoraCFTROPFUICODCREDITO.AsString + ',"S","' + FormatDateTime('mm/dd/yyyy',Now) + '",0,0,"' + FormatDateTime('mm/dd/yyyy',Now) + '");');
            Query.ExecSQL;
          end
        else
          begin
            Informa('Você deve informar o funcionário antes de encerrar o frete!');
            TabSheetDadosPrincipais.Show;
            DataSet.FieldByName('FUNCA13ID').FocusControl;
            Abort;
          end;
    end
  else
    begin
      Informa('Você deve informar configurar o tipo de movimentação de crédito padrão nas configurações!');
      Abort;
    end;
  inherited;

  FRETEID := SQLTemplateFRETA13ID.AsString;

  if (SQLTemplateFRETCSTATUS.AsString[1] in ['E','C']) then
       GravaFinanceiro;
end;

procedure TFormCadastroFreteSimples.FormActivate(Sender: TObject);
begin
  inherited;
  if QueryCliente.Active then
     QueryCliente.Close;
  QueryCliente.Open;

  if QueryPlanoRecebimento.Active then
     QueryPlanoRecebimento.Close;
  QueryPlanoRecebimento.Open;

  if QueryPlanoConta.Active then
     QueryPlanoConta.Close;
  QueryPlanoConta.Open;

  if QueryFuncionario.Active then
     QueryFuncionario.Close;
  QueryFuncionario.Open;

  if QueryVeiculo.Active then
     QueryVeiculo.Close;
  QueryVeiculo.Open;
end;

procedure TFormCadastroFreteSimples.SQLTemplateAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Insert := True;
end;

procedure TFormCadastroFreteSimples.SQLTemplateAfterPost(DataSet: TDataSet);
begin
  inherited;
  if Insert then
    begin
      Button3.Click;
      Insert := False;
    end
  else
    if SQLItens.State in dsEditModes then
       SQLItens.Post;
end;

procedure TFormCadastroFreteSimples.GravaFinanceiro;
begin
  case SQLTemplate.FieldByName('FRETCSTATUS').AsString[1] of
    'E' : begin
           if (cblPlanoConta.Value = '') and (cblPlanoPgto.Value = '') and
              ((ComboNumerarioPrazo.Value = '') or (QueryPlanoRecebimentoPRAZOMAX.AsFloat = 0)) then
              begin
                TabSheetFinanceiro.Show;
                Informa('Informe os dados para a geração das parcelas no financeiro.');
                Abort;
              end;
            //****************************************************************//
            //        GERA AS CONTAS A RECEBER ATRELADAS A ESTE FRETE         //
            //****************************************************************//
            SQLContasReceber.Close;
            SQLContasReceber.Open;
            SQLContasReceber.First;
            while not SQLContasReceber.Eof do
              begin
                SQLRecebimento.Close;
                SQLRecebimento.Open;
                while not SQLRecebimento.Eof do
                  begin
                    SQLRecebimento.Delete;
                  end;
                SQLContasReceber.Delete;
              end;
            OpenTemp;
            SQLParcelasPrazoVendaTemp.First;
            if SQLParcelasPrazoVendaTempNROPARCELA.AsInteger = 0 then
              begin
                SQLContasReceber.Append;
                SQLContasReceberCTRCCSTATUS.Value      := 'A';
                SQLContasReceberCTRCDEMIS.Value        := StrToDate(FormatDateTime('dd/mm/yyyy',Now));
                SQLContasReceberCTRCDVENC.AsString     := FormatDateTime('dd/mm/yyyy',Now);
                SQLContasReceberCTRCINROPARC.Value     := 0;
                SQLContasReceberCTRCN2VLR.Value        := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
                SQLContasReceberCTRCA5TIPOPADRAO.Value := SQLParcelasPrazoVendaTempTIPOPADR.Value;
                if SQLTemplateFRETCPAGO.AsString = 'S' then
                   SQLContasReceberCLIEA13ID.AsString     := SQLTemplateCLIEA13IDREMETE.AsString
                else
                  if not SQLTemplateCLIEA13IDCONSIG.IsNull and (SQLTemplateFRETCPAGO.AsString = 'N') then
                     SQLContasReceberCLIEA13ID.AsString     := SQLTemplateCLIEA13IDCONSIG.AsString
                  else
                     if not SQLTemplateCLIEA13IDDESTINO.IsNull and (SQLTemplateFRETCPAGO.AsString = 'N') then
                        SQLContasReceberCLIEA13ID.AsString     := SQLTemplateCLIEA13IDDESTINO.AsString;

                SQLContasReceberFRETA13ID.AsString     := SQLTemplate.FindField('FRETA13ID').AsString;
                SQLContasReceberNUMEICOD.Value         := SQLParcelasPrazoVendaTempNUMEICOD.Value;
                SQLContasReceberTERMICOD.Value         := TerminalCorrente;
                SQLContasReceberTPDCICOD.asVariant     := DM.SQLConfigVendaTPDCICOD.asVariant;
                SQLContasReceberPORTICOD.asVariant     := DM.SQLConfigVendaPORTICOD.asVariant;
                SQLContasReceberCTRCA254HIST.AsString  := 'REF. FRETE ' + SQLTemplate.FindField('FRETA13ID').AsString;
                SQLContasReceber.Post;
                if DM.SQLConfigVendaCFVECPARC0ENTRBAIX.asString='S' then
                  begin
                    if not SQLRecebimento.Active Then
                      SQLRecebimento.Open;
                    SQLRecebimento.Append;
                    SQLRecebimentoCTRCA13ID.Value          := ContasReceberID;
                    SQLRecebimentoTERMICODREC.Value        := TerminalCorrente;
                    SQLRecebimentoRECEDRECTO.Value         := Now;
                    SQLRecebimentoRECEICOD.Value           := 1;
                    SQLRecebimentoRECEN2VLRRECTO.Value     := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
                    SQLRecebimentoRECEN2VLRMULTA.Value     := 0;
                    SQLRecebimentoRECEN2VLRJURO.Value      := 0;
                    SQLRecebimentoRECEN2MULTACOBR.Value    := 0;
                    SQLRecebimentoRECEN2DESC.Value         := 0;
                    SQLRecebimentoPENDENTE.Value           := 'S';
                    SQLRecebimentoEMPRICODREC.Value        := EmpresaCorrente;
                    if SQLTemplateFRETCPAGO.AsString = 'S' then
                       SQLRecebimentoCLIEA13ID.AsString     := SQLTemplateCLIEA13IDREMETE.AsString
                    else
                      if not SQLTemplateCLIEA13IDCONSIG.IsNull and (SQLTemplateFRETCPAGO.AsString = 'N') then
                         SQLRecebimentoCLIEA13ID.AsString     := SQLTemplateCLIEA13IDCONSIG.AsString
                      else
                         if not SQLTemplateCLIEA13IDDESTINO.IsNull and (SQLTemplateFRETCPAGO.AsString = 'N') then
                            SQLRecebimentoCLIEA13ID.AsString     := SQLTemplateCLIEA13IDDESTINO.AsString;

//                    SQLRecebimentoCLIEA13ID.AsString       := SQLTemplate.FieldByName('CLIEA13IDCONSIG').AsString;
                    SQLRecebimento.Post;
                    SQLContasReceber.Edit;
                    SQLContasReceberCTRCN2TOTREC.Value     := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
                    SQLContasReceberCTRCDULTREC.Value      := Now;
                    SQLContasReceberEMPRICODULTREC.Value   := EmpresaCorrente;
                    SQLContasReceber.Post;
                  end;
              end;
            SQLParcelasPrazoVendaTemp.First;
            if SQLParcelasPrazoVendaTempNROPARCELA.AsInteger = 0 then
              SQLParcelasPrazoVendaTemp.Next;
            while not SQLParcelasPrazoVendaTemp.Eof do
              begin
                SQLContasReceber.Append;
                SQLContasReceberCTRCCSTATUS.Value      := 'A';
                SQLContasReceberCTRCDEMIS.Value        := StrToDate(FormatDateTime('dd/mm/yyyy',Now));
                SQLContasReceberCTRCDVENC.AsString     := FormatDateTime('dd/mm/yyyy',SQLParcelasPrazoVendaTempDATAVENCTO.Value);
                SQLContasReceberCTRCINROPARC.AsInteger := SQLParcelasPrazoVendaTempNROPARCELA.AsInteger;
                SQLContasReceberCTRCN2VLR.Value        := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
                SQLContasReceberCTRCA5TIPOPADRAO.Value := SQLParcelasPrazoVendaTempTIPOPADR.Value;
                if SQLTemplateFRETCPAGO.AsString = 'S' then
                   SQLContasReceberCLIEA13ID.AsString     := SQLTemplateCLIEA13IDREMETE.AsString
                else
                  if not SQLTemplateCLIEA13IDCONSIG.IsNull and (SQLTemplateFRETCPAGO.AsString = 'N') then
                     SQLContasReceberCLIEA13ID.AsString     := SQLTemplateCLIEA13IDCONSIG.AsString
                  else
                     if not SQLTemplateCLIEA13IDDESTINO.IsNull and (SQLTemplateFRETCPAGO.AsString = 'N') then
                        SQLContasReceberCLIEA13ID.AsString     := SQLTemplateCLIEA13IDDESTINO.AsString;

//                SQLContasReceberCLIEA13ID.AsString     := SQLTemplate.FindField('CLIEA13IDCONSIG').AsString;
                SQLContasReceberFRETA13ID.AsString     := SQLTemplate.FindField('FRETA13ID').AsString;
                SQLContasReceberNUMEICOD.Value         := SQLParcelasPrazoVendaTempNUMEICOD.Value;
                SQLContasReceberTERMICOD.Value         := TerminalCorrente;
                SQLContasReceberTPDCICOD.asVariant     := DM.SQLConfigVendaTPDCICOD.asVariant;
                SQLContasReceberPORTICOD.asVariant     := DM.SQLConfigVendaPORTICOD.asVariant;
                SQLContasReceber.Post;
                SQLParcelasPrazoVendaTemp.Next;
              end;
            ComboNumerarioPrazo.Value := '';
          end;
    'C' : begin
            //****************************************************************//
            //      CANCELA AS CONTAS A RECEBER ATRELADAS A ESTE FRETE        //
            //****************************************************************//
            if PlanoNovo <> PlanoAnterior then
              if PlanoNovo <> '' then
                begin
                  if not SQLContasReceber.Active Then
                    SQLContasReceber.Open;
                  SQLContasReceber.First;
                  while not SQLContasReceber.Eof Do
                    begin
                      SQLContasReceber.Edit;
                      SQLContasReceberCTRCCSTATUS.Value := 'C';
                      SQLContasReceber.Post;
                      SQLContasReceber.Next;
                    end;
                end;
          end;
  end;

end;

procedure TFormCadastroFreteSimples.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  gboFaixaDif.Visible := False;
  DataSet.FieldByName('FRETCPAGO').AsString := 'N';
  DataSet.FieldByName('FRETCSTATUS').AsString := 'A';
  DataSet.FieldByName('FRETN3QTDETOTAL').AsFloat := 0;
  DataSet.FieldByName('FRETN2VLR').AsFloat := 0;
  DataSet.FieldByName('FRETN2VLRTOTAL').AsFloat := 0;
  DataSet.FieldByName('FRETN2BASECALCULO').AsFloat := 0;
  DataSet.FieldByName('FRETN2VLRCOMISSAO').AsFloat := 0;
  DataSet.FieldByName('FRETN2ICMS').AsFloat := 0;
  DataSet.FieldByName('EMPRICOD').AsInteger := EmpresaCorrente;

  SQLCount.Close;
  SQLCount.SQL.Text := 'select max(FRETINROFORM) AS ProxForm from FRETE';
  SQLCount.Open;

  if SQLCount.FieldByName('ProxForm').IsNull then
     DataSet.FieldByName('FRETINROFORM').AsInteger := 1
  else
     DataSet.FieldByName('FRETINROFORM').AsInteger := SQLCount.FieldByName('ProxForm').AsInteger + 1;
end;

procedure TFormCadastroFreteSimples.SQLTemplateBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  PlanoAnterior  := SQLTemplate.FindField('PLRCICOD').AsString;
  if DataSet.FieldByName('FRETCSTATUS').AsString <> 'A' then
     begin
        Informa('Você não pode alterar um Frete ja encerrado.');
        Abort;
     end;
  FRETEID := SQLTemplateFRETA13ID.AsString;     
end;

procedure TFormCadastroFreteSimples.ButtonCadastroPlanoPagtoClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('PLRCICOD');
  FieldOrigem := 'PLRCICOD';
  CriaFormulario(TFormTelaConsultaPlanoRecebimento,'FormTelaConsultaPlanoRecebimento',False,True,True,'');
end;

procedure TFormCadastroFreteSimples.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F3 then
    ButtonCadastroRemetente.Click;
end;

procedure TFormCadastroFreteSimples.DBEdit10KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F3 then
    ButtonCadastroDestinatario.Click;
end;

procedure TFormCadastroFreteSimples.DBEdit11KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F3 then
    ButtonCadastroDestinatario.Click;
end;

procedure TFormCadastroFreteSimples.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F3 then
    ButtonCadastroPlanoPagto.Click;
end;

procedure TFormCadastroFreteSimples.SQLTemplatePLRCICODChange(Sender: TField);
var
  Entrada, Desconto, Valor: Double;
  DiminuiAcresc, ValorJuro,Acrescimo, EntradaCalc,TaxaCred: Double;
begin
  inherited;
  if SQLTemplate.FindField('PLRCICOD').asVariant <> Null Then
    begin
      DM.SQLTemplate.Close;
      DM.SQLTemplate.SQL.Clear;
      DM.SQLTemplate.SQL.Add('delete from PARCELASPRAZOVENDATEMP');
      DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual));
      DM.SQLTemplate.ExecSQL;

      SQLParcelasPrazoVendaTemp.Close;
      SQLParcelasPrazoVendaTemp.SQL.Clear;
      SQLParcelasPrazoVendaTemp.SQL.Add('select * from PARCELASPRAZOVENDATEMP');
      SQLParcelasPrazoVendaTemp.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual));
      SQLParcelasPrazoVendaTemp.SQL.Add('order by NROPARCELA');
      SQLParcelasPrazoVendaTemp.Open;

      SQLPlano.Close;
      SQLPlano.ParamByName('PLRCICOD').AsInteger := SQLTemplate.FindField('PLRCICOD').asInteger;
      SQLPlano.Open;
      if not SQLPlano.Eof then
        begin
          SQLPlanoParcela.Close;
          SQLPlanoParcela.ParamByName('PLRCICOD').AsInteger := SQLTemplate.FindField('PLRCICOD').asInteger;
          SQLPlanoParcela.Open;
          if (DM.SQLTerminalAtivoTERMINUMEVISTA.asString = '') and
             (DM.SQLTerminalAtivoTERMINUMEPRAZO.asString = '') Then
            begin
              ShowMessage('Você deve configurar os numerários padrão deste Terminal!');
              Abort;
            end;
          SQLPlanoParcela.First;
          ValorJuro := SQLPlanoPLRCN2TXJURO.AsFloat;
          CriaParcelas(SQLParcelasPrazoVendaTemp,
                       SQLPlano,
                       SQLPlanoParcela,
                       Entrada,
                       Desconto,
                       SQLTemplate.FindField('FRETN2VLRTOTAL').asFloat,
                       SQLTemplate.FindField('PLRCICOD').asInteger,
                       Now,
                       DM.SQLTerminalAtivoTERMINUMEVISTA.asString,
                       DM.SQLTerminalAtivoTERMINUMEPRAZO.asString,
                       DM.SQLTerminalAtivoTERMINUMEVISTA.asString,
                       DM.SQLTerminalAtivoTERMINUMEPRAZO.asString,
                       SQLTemplate.FindField('FRETA13ID').asString,
                       DiminuiAcresc,
                       ValorJuro,
                       Acrescimo,
                       EntradaCalc,
                       TaxaCred);
          SQLPlanoParcela.Close;

          SQLNumerarioVista.Close;
          SQLNumerarioVista.Open;

          if Dm.SQLTerminalAtivoTERMINUMEVISTA.AsVariant <> null then
            ComboNumerarioVista.Value := Dm.SQLTerminalAtivoTERMINUMEVISTA.AsString;

          SQLNumerarioPrazo.Close;
          SQLNumerarioPrazo.Open;

          if Dm.SQLTerminalAtivoTERMINUMEPRAZO.AsVariant <> null then
            ComboNumerarioPrazo.Value := Dm.SQLTerminalAtivoTERMINUMEPRAZO.AsString;

          if ComboNumerarioVista.Value <> '' then
            ComboNumerarioVistaChange(Self);

          if ComboNumerarioPrazo.Value <> '' then
            ComboNumerarioPrazoChange(Self);
        end;
      SQLPlano.Close;
    end;
end;

procedure TFormCadastroFreteSimples.SQLTemplateBeforeDelete(DataSet: TDataSet);
begin
{  Informa('Não é permitido Excluir um Frete.');
  Abort;}
  
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

procedure TFormCadastroFreteSimples.ComboNumerarioPrazoChange(Sender: TObject);
begin
  inherited;
  if ComboNumerarioPrazo.Value <> '' then
    begin
      SQLParcelasPrazoVendaTemp.First;
      While not SQLParcelasPrazoVendaTemp.Eof do
        begin
          if SQLParcelasPrazoVendaTempNROPARCELA.AsInteger <> 0 then
            begin
              SQLParcelasPrazoVendaTemp.Edit;
              SQLParcelasPrazoVendaTempNUMEICOD.AsVariant := ComboNumerarioPrazo.KeyValue;
              SQLParcelasPrazoVendaTempTIPOPADR.AsString  := SQLLocate('NUMERARIO','NUMEICOD','NUMEA5TIPO',ComboNumerarioPrazo.Value);
              SQLParcelasPrazoVendaTemp.Post;
            end;
          SQLParcelasPrazoVendaTemp.Next;
        end;
      SQLParcelasPrazoVendaTemp.First;
    end;
end;

procedure TFormCadastroFreteSimples.ComboNumerarioVistaChange(Sender: TObject);
begin
  inherited;
  if ComboNumerarioVista.Value <> '' then
    begin
      SQLParcelasPrazoVendaTemp.First;
      if SQLParcelasPrazoVendaTempNROPARCELA.AsInteger = 0 then
        begin
          SQLParcelasPrazoVendaTemp.Edit;
          SQLParcelasPrazoVendaTempNUMEICOD.AsInteger := ComboNumerarioVista.KeyValue;
          SQLParcelasPrazoVendaTempTIPOPADR.AsString  := SQLLocate('NUMERARIO','NUMEICOD','NUMEA5TIPO',ComboNumerarioVista.Value);
          SQLParcelasPrazoVendaTemp.Post;
        end
      else
        Informa('Não existem parcelas à vista para seleção de numerário !');
      SQLParcelasPrazoVendaTemp.First;
    end;
end;

procedure TFormCadastroFreteSimples.SQLContasReceberBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FindField('REGISTRO') <> nil then
    DataSet.FindField('REGISTRO').AsDateTime := Now;
  if DataSet.FindField('PENDENTE')<> nil then
    DataSet.FindField('PENDENTE').AsString := 'S';
  if DataSet.FindField('EMPRICOD')<> nil then
    DataSet.FindField('EMPRICOD').AsInteger := EmpresaCorrente;
  if DataSet.FindField('TERMICOD')<> nil then
    DataSet.FindField('TERMICOD').AsInteger := TerminalCorrente;
  if DataSet.State in [dsInsert] then
    DM.CodigoAutomatico('CONTASRECEBER',DSSQLContasReceber,DataSet,3,0);
  ContasReceberID := SQLContasReceberCTRCA13ID.asString;
end;

procedure TFormCadastroFreteSimples.ButtonCadastroFuncionarioClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('FUNCA13ID');
  FieldOrigem := 'FUNCA13ID';
  CriaFormulario(TFormCadastroFuncionario,'FormCadastroFuncionario',False,True,True,'');
end;

procedure TFormCadastroFreteSimples.MnConhecimentodeFreteClick(Sender: TObject);
var
  Produto : String;
begin
  inherited;
//  CalculaFrete;
  TblFrete.Close;
  try
    TblFrete.DeleteTable;
    TblFrete.CreateTable;
  except
    TblFrete.CreateTable;
  end;
  TblFrete.Open;

  TblFrete.Append;
  TblFreteRemeNome.AsString   := SQLTemplateCLIEA60REMENOME.AsString;
  TblFreteRemeEnd.AsString    := SQLTemplateCLIEA60ENDCOLETA.AsString;
  TblFreteRemeCidade.AsString := SQLTemplateCLIEA60REMECID.AsString;
  TblFreteRemeUF.AsString     := SQLTemplateCLIEA2REMEUF.AsString;
  TblFreteRemeCnpj.AsString   := SQLTemplateCLIEA14REMECGC.AsString;
  TblFreteRemeIE.AsString     := SQLTemplateCLIEA20REMEIE.AsString;
  TblFreteDestNome.AsString   := SQLTemplateCLIEA60DESTNOME.AsString;
  TblFreteDestEnd.AsString    := SQLTemplateCLIEA60ENDENTREGA.AsString;
  TblFreteDestCidade.AsString := SQLTemplateCLIEADESTCIDADE.AsString;
  TblFreteDestCnpj.AsString   := SQLTemplateCLIEA14DESTCGC.AsString;
  TblFreteDestIE.AsString     := SQLTemplateCLIEA20DESTIE.AsString;
  TblFreteDestUf.AsString     := SQLTemplateCLIEA2DESTUF.AsString;
  TblFreteConsNome.AsString   := SQLTemplateCLIEA60CONSNOME.AsString;
  TblFreteConsEnd.AsString    := SQLTemplateCLIEA60CONSEND.AsString;
  TblFreteConsCidade.AsString := SQLTemplateCLIEA60CONSCIDADE.AsString;
  TblFreteConsUf.AsString     := SQLTemplateCLIEA2CONSUF.AsString;
  TblFreteConsCNPJ.AsString   := SQLTemplateCLIEA14CONSCNPJ.AsString;
  TblFreteConsIE.AsString     := SQLTemplateCLIEA20CONSIE.AsString;
  if SQLTemplateFRETCPAGO.AsString = 'S' then
    begin
       TblFretePago.AsString       := '';
       TblFretePagar.AsString      := 'X';
    end
  else
    begin
      TblFretePago.AsString       := 'X';
      TblFretePagar.AsString      := '';
    end;

  Produto := SQLLocate('FRETEITEM','FRETA13ID','PRODICOD','"' + SQLTemplateFRETA13ID.AsString + '"');

  if Produto <> '' then
    TblFreteProduto.AsString    := SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',Produto);
  SQLQtdeItens.Close;
  SQLQtdeItens.MacroByName('MFiltro').AsString := ' FRETA13ID = '''+SQLTemplateFRETA13ID.AsString+'''';
  SQLQtdeItens.Open;

  TblFreteObservacao.AsString     := SQLTemplateFRETTOBS.AsString;
  if SQLQtdeItens.FieldByName('COUNT').AsInteger > 1 then
     begin
       TblFreteNotaFiscal.AsString    := 'ANEXOS';
     end
  else
     if Length(SQLItensFRITINOTAFISCAL.AsString) < 15 then
        TblFreteNotaFiscal.AsString   := SQLItensFRITINOTAFISCAL.AsString
     else
        begin
          TblFreteObservacao.AsString := TblFreteObservacao.AsString + 'Notas: ' + SQLItensFRITINOTAFISCAL.AsString;
          TblFreteNotaFiscal.AsString := 'VIDE OBS';
        end;

  TblFreteQuantidade.AsFloat      := SQLTemplateFRETN3QTDETOTAL.AsFloat;
  TblFreteValorFrete.AsFloat      := SQLItensPRODN2VLR.AsFloat;
  TblFreteValorTotalFrete.AsFloat := SQLTemplateFRETN2VLRTOTAL.AsFloat;
  TblFreteEspecie.AsString        := SQLLocate('FRETEITEM','FRETA13ID','FRITA30ESPECIE','"' + SQLTemplateFRETA13ID.AsString + '"');
  TblFreteUnidade.AsString        := SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',SQLLocate('FRETEITEM','FRETA13ID','UNIDICOD','"' + SQLTemplateFRETA13ID.AsString + '"'));
  TblFreteVlrColeta.AsFloat       := StrToFloat(SQLLocate('FRETEITEM','FRETA13ID','FRITN3CAT','"' + SQLTemplateFRETA13ID.AsString + '"'));
  TblFreteVlrEntrega.AsFloat      := StrToFloat(SQLLocate('FRETEITEM','FRETA13ID','FRITN3OUTROS','"' + SQLTemplateFRETA13ID.AsString + '"'));
  TblFreteNaturezaCarga.AsString  := SQLLocate('FRETEITEM','FRETA13ID','FRITANATCARGA','"' + SQLTemplateFRETA13ID.AsString + '"');
  if SQLTabelFrete.Locate('TBFTICOD;CIDAICOD', VarArrayOf([cblTabelaFrete.KeyValue, SQLItensCIDAICOD.AsInteger]), [loCaseInsensitive]) then
    if SQLTabelFreteTBFCCCALCULOPESO.AsString = 'S' then
      TblFretePeso.AsFloat            := SQLItensFRITN2PESOVLR.AsFloat * SQLItensFRITN3PESO.AsFloat
    else
      TblFretePeso.AsFloat            := SQLItensFRITN2PESOVLR.AsFloat;
                                     //SQLItensPRODN2VLR.AsFloat - SQLItensFRITN3CAT.AsFloat - SQLItensFRITN2OUTRASDESP.AsFloat -
                                     //SQLItensFRITN2PEDAGIO.AsFloat - SQLItensFRITN2VLRVALOREM.AsFloat - SQLItensFRITN3OUTROS.AsFloat;
  TblFreteIcms.AsFloat            := SQLTemplateFRETN2ICMS.AsFloat;
  TblFreteBaseCalculoIcms.AsFloat := SQLTemplateFRETN2BASECALCULO.AsFloat;
  if QueryProdutoICMSN2ALIQUOTA.AsString = '' then
     TblFreteDescrIcms.AsString   := QueryProdutoICMSA60DESCR.AsString
  else
     TblFretePercIcms.AsFloat        := QueryProdutoICMSN2ALIQUOTA.AsFloat;
  TblFretePesoTotal.AsFloat          := SQLItensFRITN3PESO.AsFloat;
  TblFreteNotasTotalVlr.AsFloat      := SQLItensFRITN2VLRNOTA.AsFloat;
  TblFreteNatOperacao.AsString        := SQLCFOPCFOPA60DESCR.AsString;
  TblFreteCFOP.AsString               := SQLCFOPCFOPA5COD.AsString;
  TblFreteQtdeVolumes.AsFloat         := SQLItensFRITN2VOLUMES.AsFloat;
  TblFreteFreteValorem.AsFloat        := SQLItensFRITN2VLRVALOREM.AsFloat;
  TblFreteFretePedagio.AsFloat        := SQLItensFRITN2PEDAGIO.AsFloat;
  TblFreteRedesNome.AsString           := SQLTemplateCLIEA60RESDENOME.AsString;
  TblFreteResdepEnd.AsString           := SQLTemplateCLIEA60ENDREDESP.AsString;
  TblFreteRedespCNPJ.AsString          := SQLTemplateCLIEA14CNPJREDES.AsString;
  TblFreteRedespCidade.AsString        := SQLTemplateCLIEA60CIDREDESP.AsString;
  TblFreteRedespUF.AsString            := SQLTemplateCLIEA2UFREDESP.AsString;
  TblFreteRedespIE.AsString            := SQLTemplateCLIEA20REDESIE.AsString;

  TblFrete.Post;


  BatchMove.Execute;
  if not Dm.SQLConfigGeral.Active then Dm.SQLConfigGeral.Open;
  Report.ReportName        := Dm.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\FreteJatex.rpt';
  Report.ReportTitle       :=  'Conhecimento de Frete';
  Report.WindowStyle.Title :=  'Conhecimento de Frete';
  Report.Execute;
  if SQLQtdeItens.FieldByName('COUNT').AsInteger > 1 then
     begin
       if Application.MessageBox('Este frete contem romaneio.'+char(#13)+'Deseja imprimi-lo agora?','Atenção',MB_YESNO+MB_SYSTEMMODAL+MB_ICONINFORMATION+MB_DEFBUTTON1) = iDYes then
          mnRomaneiodeFrete.Click;
     end;

end;

procedure TFormCadastroFreteSimples.ButtonCadastroVeiculoClick(Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('VEICA13ID');
  FieldOrigem := 'VEICA13ID';
  CriaFormulario(TFormCadastroVeiculo,'FormCadastroVeiculo',False,True,True,'');
end;

procedure TFormCadastroFreteSimples.SQLContasReceberNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('CTRCINROPARC').Value      := 0 ;
  DataSet.FindField('CTRCN2DESCFIN').Value     := 0 ;
  DataSet.FindField('CTRCN2TXJURO').Value      := 0 ;
  DataSet.FindField('CTRCN2TXMULTA').Value     := 0 ;
  DataSet.FindField('CTRCN2TOTREC').Value      := 0 ;
  DataSet.FindField('CTRCN2TOTJUROREC').Value  := 0 ;
  DataSet.FindField('CTRCN2TOTMULTAREC').Value := 0 ;
  DataSet.FindField('CTRCN2TOTDESCREC').Value  := 0 ;
end;

procedure TFormCadastroFreteSimples.ReportWindowClose(Sender: TObject);
begin
  inherited;
  TblFrete.Close;
end;

procedure TFormCadastroFreteSimples.mnRomaneiodeFreteClick(Sender: TObject);
begin
  inherited;
  SQLQtdeItens.Close;
  SQLQtdeItens.MacroByName('MFiltro').AsString := ' FRETA13ID = '''+SQLTemplateFRETA13ID.AsString+'''';
  SQLQtdeItens.Open;
  if SQLQtdeItens.FieldByName('COUNT').AsInteger > 1 then
     begin
       try
         TableItensImpressao.Close;
         TableItensImpressao.DeleteTable;
         TableItensImpressao.CreateTable;
       except
         TableItensImpressao.CreateTable;
       end;
       BatchMove.Execute;
       Report.ReportName             :=  Dm.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Romaneio.rpt';
       Report.ReportTitle            :=  'Romaneio de Frete';
       Report.WindowStyle.Title      :=  'Romaneio de Frete';
       Report.Execute;
     end
  else
     Informa('Não há romaneio a ser gerado para este frete.');
end;

procedure TFormCadastroFreteSimples.DBEdit25Exit(Sender: TObject);
begin
  inherited;
  if not QueryProduto.Active then
     QueryProduto.Active := True;
  QueryProduto.Locate('PRODICOD',SQLItensPRODICOD.AsString,[loCaseInsensitive]);
end;

procedure TFormCadastroFreteSimples.ButtonCadastroUnidadeClick(Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('UNIDICOD');
  FieldOrigem := 'UNIDICOD';
  DataSetLookup := QueryUnidade;
  CriaFormulario(TFormCadastroUnidade,'FormCadastroUnidade',False,True,True,'');

end;

procedure TFormCadastroFreteSimples.SQLTemplateAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if not SQLItens.Active then SQLItens.Open;
end;

procedure TFormCadastroFreteSimples.SQLItensBeforePost(DataSet: TDataSet);
var I : Integer;

begin
  inherited;
  InsertItens := SQLItens.State in [dsInsert];

  if InsertItens then
     begin
        SQLItensFRETA13ID.AsString := FRETEID;

        SQLCount.Close;
        SQLCount.SQL.Text := 'select Max(FRITICOD) as MaxCount from FRETEITEM';
        SQLCount.Open;

        if (SQLCount.FieldByName('MaxCount').AsInteger = 0) or (SQLCount.FieldByName('MaxCount').AsInteger = null) then
           SQLItensFRITICOD.AsInteger := 1
        else
           SQLItensFRITICOD.AsInteger := SQLCount.FieldByName('MaxCount').AsInteger + 1;
        SQLItensPENDENTE.AsString := 'S';
        SQLItensREGISTRO.AsDateTime := Now;
     end;

  SQLItensFRITN2VLRVALOREM.AsFloat     := (SQLItensFRITN4PERCVALOREM.AsFloat / 1000) * SQLItensFRITN2VLRNOTA.AsFloat;

  for I := 0 to SQLItens.FieldCount - 1 do
     begin
       if SQLItens.Fields.Fields[I].Tag = 1 then
          if (SQLItens.Fields.Fields[I].AsString = '0') or (SQLItens.Fields.Fields[I].Value = null) then
             begin
                SQLItens.Fields.Fields[I].FocusControl;
                raise Exception.Create('Você deve preencher o campo "'+SQLItens.Fields.Fields[I].DisplayLabel+'".');
                SQLTemplate.Edit;
                Abort;
             end;
     end;
  edPesoExit(edPeso);
end;

procedure TFormCadastroFreteSimples.SQLItensBeforeEdit(DataSet: TDataSet);
begin
  if not (SQLTemplate.State in dsEditModes) then
     begin
       SQLItens.Cancel;
       Abort;
     end;
  inherited;
end;

procedure TFormCadastroFreteSimples.DSSQLProdutoDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if (SQLItens.State in dsEditModes) then
      SQLItensFRITN2VLRVALOREM.AsFloat     := (SQLItensFRITN4PERCVALOREM.AsFloat / 1000) * SQLItensFRITN2VLRNOTA.AsFloat;
end;

procedure TFormCadastroFreteSimples.SQLItensAfterPost(DataSet: TDataSet);
var
    Obs  : string;
begin
  inherited;
  if not (SQLTemplate.State in dsEditModes) then
     SQLTemplate.Edit;
//Atuliza valores
  SQLItens.Close;
  SQLItens.MacroByName('MFrete').AsString := 'FRETA13ID = ''' +  SQLTemplateFRETA13ID.AsString + '''';
  SQLItens.Open;

  SQLItens.Locate('FRETA13ID',SQLTemplateFRETA13ID.AsString,[loCaseInsensitive]);

  SQLTemplateFRETN3QTDETOTAL.AsFloat   := SQLItensFRITN3QTDE.AsFloat;

  SQLTemplateFRETN2BASECALCULO.AsFloat := SQLItensPRODN2VLR.AsFloat - SQLItensFRITN2PEDAGIO.AsFloat;

  SQLTemplateFRETN2ICMS.AsFloat        := SQLItensFRITN2VLRICMS.AsFloat;

  SQLTemplateFRETN2VLRTOTAL.AsFloat    := SQLItensPRODN2VLR.AsFloat;

    Obs := 'CONHECIEMTNO Nº ' + SQLTemplateFRETINROFORM.AsString + '  ';
  if not SQLItensFRITN2OUTRASDESP.IsNull then
     Obs := Obs + 'OUTRAS DESPESAS R$ ' + SQLItensFRITN2OUTRASDESP.DisplayText + '  ';

  Obs := Obs + Char(#13) + Char(#10)  + SQLTemplateFRETTOBS.AsString;

  if InsertItens then
     SQLTemplateFRETTOBS.AsString := Obs;

  InsertItens := False; 
end;

procedure TFormCadastroFreteSimples.SQLItensNewRecord(DataSet: TDataSet);
begin
  inherited;
  InsertItens := SQLItens.State in [dsInsert];

  SQLItensFRITN2VLRNOTA.AsFloat := 0;
  SQLItensFRITN3QTDE.AsFloat    := 0;
  SQLItensFRITN3OUTROS.AsFloat  := 0;
  SQLItensFRITN3CAT.AsFloat     := 0;
  SQLItensFRITN3QTDE.AsFloat    := 1;
  SQLItensFRITN2ICMS.AsFloat    := 0;
  SQLItensFRITN3PESO.AsFloat    := 0;
  SQLItensFRITN4PERCVALOREM.AsFloat := 5;
  SQLItensFRITN2PEDAGIO.AsFloat     := 0;
  SQLItensFRITN2VOLUMES.AsFloat     := 0;
  SQLItensFRITA30ESPECIE.AsString   := 'CAIXA';
  SQLItensFRITCCOLETA.AsString      := 'N';
  SQLItensFRITCENTREGA.AsString     := 'N';
  SQLItensFRITN2PESOVLR.AsFloat     := 0;
  SQLItensFRITN2OUTRASDESP.AsFloat  := 0;

end;

procedure TFormCadastroFreteSimples.SQLItensFRITN2VLRNOTAChange(Sender: TField);
begin
  inherited;
  if (SQLItens.State in dsEditModes) then
     SQLItensFRITN2VLRVALOREM.AsFloat     := (SQLItensFRITN4PERCVALOREM.AsFloat / 1000) * SQLItensFRITN2VLRNOTA.AsFloat;
end;

procedure TFormCadastroFreteSimples.SQLTemplateAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if not (SQLItens.State in dsEditModes) then
     begin
        SQLItens.Close;
        SQLItens.MacroByName('MFrete').AsString := 'FRETA13ID = ''' +  SQLTemplateFRETA13ID.AsString + '''';
        SQLItens.Open;
     end;

  CodCidadeFrete := 0;
end;

procedure TFormCadastroFreteSimples.RxDBLookupCombo3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     ButtonCadastroRemetente.Click;
end;

procedure TFormCadastroFreteSimples.RxDBLookupCombo4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    ButtonCadastroDestinatario.Click;
end;

procedure TFormCadastroFreteSimples.RxDBLookupCombo5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    ButtonCadastroConsignatario.Click;
end;

procedure TFormCadastroFreteSimples.RxDBLookupCombo8KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    ButtonCadastroRedespacho.Click;
end;

procedure TFormCadastroFreteSimples.SQLTemplateAfterCancel(DataSet: TDataSet);
begin
  inherited;
  if InsertItens then
     if Application.MessageBox('Você esta Cancelando a inserção de um item ao Frete, deseja Cancelar o Conhecimento?','Atenção',MB_YESNO+MB_SYSTEMMODAL+MB_ICONQUESTION) = idYes then
        SQLTemplate.Delete;
  Insert := False;
end;

procedure TFormCadastroFreteSimples.SQLTemplateBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  InsertItens := SQLItens.State in [dsInsert];
  SQLItens.Cancel;
end;

procedure TFormCadastroFreteSimples.Button1Click(Sender: TObject);
Var I : Integer;
begin
  inherited;
  if TComponent(Sender).Name = 'Button3' then
     begin
        if Insert and not (SQLItens.State in [dsInsert]) then
           begin
              InsertItens := True;
              SQLTemplate.Edit;
              SQLItens.Cancel;
              SQLItens.Append;
           end;
        PagePrincipal.ActivePage := TabSheetItem;
     end;

  if TComponent(Sender).Name = 'ButtonFinanceiro' then
     begin
       if SQLTemplateFRETCSTATUS.AsString <> 'E' then
          PagePrincipal.ActivePage := TabSheetFinanceiro
       else
          begin
            DSMasterSys := DSTemplate;
            CriaFormulario(TFormCadastroFreteFinanceiro,'FormCadastroFreteFinanceiro',True,False,True,'Frete: ' + SQLTemplateFRETA13ID.AsString);
          end;
     end;
end;

procedure TFormCadastroFreteSimples.RxDBLookupCombo6KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    ButtonCadastroFuncionario.Click;

end;

procedure TFormCadastroFreteSimples.RxDBLookupCombo7KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    ButtonCadastroVeiculo.Click;
end;

procedure TFormCadastroFreteSimples.DBEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    ButtonCadastroPlanoConta.Click;
end;

procedure TFormCadastroFreteSimples.CalculaFrete;
Var SQLNovo : String;
    VlrFrete, VlrPeso, VlrTotalPeso : Double;
    Peso: String;
    PercIcms : Double;
Label EscolhaDestino;

begin
     PercIcms := 0;
     if not (SQLItens.State in dsEditModes) then
        SQLItens.Edit;
     SQLItensPRODN2VLR.AsFloat := 0;
     SQLItensFRITN2VLRICMS.AsFloat := 0;
     SQLItensFRITN2PESOVLR.AsFloat := 0;

     if cblTabelaFrete.Text = '...' then
        begin
           Informa('Não há nehuma Tabela para  o Cálculo frete.' + char(#13) + 'Selecione uma Tabela.');
           cblTabelaFrete.SetFocus;
           Abort;
        end;

     if (SQLItensFRITN3PESO.AsFloat = 0) then
        begin
           Informa('Favor informe o peso do frete.');
           SQLItensFRITN3PESO.FocusControl;
           Abort;
        end;

     //Verifica quem paga o Frete
     if not SQLTemplateCLIEA13IDCONSIG.IsNull and (SQLTemplateFRETCPAGO.AsString = 'N') then
        begin
          CidadeFretePag := SQLTemplateCLIEA60CONSCIDADE.AsString;
          EstadoFretePag := SQLTemplateCLIEA2CONSUF.AsString;
        end
     else
        if not SQLTemplateCLIEA13IDDESTINO.IsNull and (SQLTemplateFRETCPAGO.AsString = 'N') then
          begin
            CidadeFretePag := SQLTemplateCLIEA60CIDENTR.AsString;
            EstadoFretePag := SQLTemplateCLIEA2DESTUF.AsString;
          end;

     if not SQLTemplateCLIEA13IDREMETE.IsNull and (SQLTemplateFRETCPAGO.AsString = 'S') then
        begin
          CidadeFretePag := SQLTemplateCLIEA60REMECID.AsString;
          EstadoFretePag := SQLTemplateCLIEA2REMEUF.AsString;
        end;
     //
     //Indica a Cidade Destino
     if not SQLTemplateCLIEA13IDDESTINO.IsNull then
        begin
          CidadeFrete := SQLTemplateCLIEA60CIDENTR.AsString;
          EstadoFrete := SQLTemplateCLIEA2DESTUF.AsString;
        end;
     //
     if CodCidadeFrete = 0 then
        begin
           if SQLLocate('CIDADE','CIDAA60NOME','CIDAICOD', '"' + CidadeFrete + '"') <> '' then
              CodCidadeFrete := StrToInt(SQLLocate('CIDADE','CIDAA60NOME','CIDAICOD', '"' + CidadeFrete + '"'))
           else
              CodCidadeFrete := 0;
        end;

    EscolhaDestino:

    if edCidDiferente.Text <> '' then
       begin
           if Pergunta('Sim', 'Deseja continuar os Cálculos com a Tabela da Cidade "' + edCidDiferente.Text + '".') then
              if DM.ProcuraRegistro('CIDADE',['CIDAA60NOME'],[edCidDiferente.Text], 1) then
                 begin
                    CodCidadeFrete := DM.SQLTemplate.FieldByName('CIDAICOD').AsInteger;
                    CidadeFrete    := DM.SQLTemplate.FieldByName('CIDAA60NOME').AsString;
                    EstadoFrete    := DM.SQLTemplate.FieldByName('ICMUA2UF').AsString;
                    if SQLLocate('ICMSUF','ICMUA2UF','ICMUICOD', '"'+ EstadoFrete + '"') <> '' then
                       CodEstadoFrete := StrToInt(SQLLocate('ICMSUF','ICMUA2UF','ICMUICOD', '"'+ EstadoFrete + '"'));
                 end;
       end;

    if CodCidadeFrete = 0 then
        begin
            Informa('Não foi encontrado na Tabela de Frete a Cidade cadastra no ' + char(#13) +
                    'Cliente Destino["' + CidadeFrete + '"](Faturado).' + char(#13) +
                    'Clique <OK> e selecione a Cidade/UF desejado.');
           Dm.CodTabelaFrete := SQLItensTBFTICOD.AsString;
           if Application.FindComponent('TelaSelecaoCidadeUFFrete') = nil then
              Application.CreateForm(TFormTelaSelecaoCidadeUFFrete,FormTelaSelecaoCidadeUFFrete);

           FormTelaSelecaoCidadeUFFrete.dblEstado.KeyValue := EstadoFrete;

           FormTelaSelecaoCidadeUFFrete.ShowModal;
           if FormTelaSelecaoCidadeUFFrete.ModalResult = mrOK then
              begin
                 if FormTelaSelecaoCidadeUFFrete.dblCidade.Text <> '...' then
                    begin
                       CodCidadeFrete := FormTelaSelecaoCidadeUFFrete.dblCidade.KeyValue;
                       CidadeFrete    := FormTelaSelecaoCidadeUFFrete.SQLCidade.FieldByName('CIDAA60NOME').AsString;
                    end;
                 if FormTelaSelecaoCidadeUFFrete.dblEstado.Text <> '...' then
                    EstadoFrete := FormTelaSelecaoCidadeUFFrete.dblEstado.KeyValue;
              end
           else
              begin
                 Informa('Operação Cancelada.');
                 Abort;
              end;
        end;

     SQLTabelFrete.Close;
     SQLTabelFrete.MacroByName('MCidade').AsString := 'TABELAFRETECIDADE.CIDAICOD = ' + IntToStr(CodCidadeFrete);
     SQLTabelFrete.Open;

     SQLItensCIDAICOD.AsInteger := SQLTabelFreteCIDAICOD.AsInteger;

     if (EstadoEmpresa = EstadoFretePag) then
        begin
           SQLItensFRITN2ICMS.AsFloat := 0;
           SQLItensDescrIcms.AsString := 'Diferido';
        end
     else
        begin
           try
              if SQLLocate('ICMSUF','ICMUA2UF','ICMUN2ALIQUOTA', '"'+ EstadoFretePag + '"') <> '' then
                 PercIcms := StrToFloat(SQLLocate('ICMSUF','ICMUA2UF','ICMUN2ALIQUOTA', '"'+ EstadoFretePag + '"'))
              else
                 PercIcms := 0;
           except
              PercIcms := 0;
           end;
           SQLItensDescrIcms.AsString := SQLLocate('ICMSUF','ICMUA2UF','ICMUA60DESCR', '"'+ EstadoFretePag + '"');
           SQLItensFRITN2ICMS.AsFloat := PercIcms;
        end;

     SQLItensCalcFields(SQLItens);

     Peso := SQLItensFRITN3PESO.AsString; //AnsiReplaceStr(edPeso.Text,',','.');

     if (SQLItensFRITN3PESO.AsFloat <= SQLTabelFretePESOMAX.AsFloat) then
        begin
          SQLTabelaFreteFaixaPeso.Close;
          if CodCidadeFrete <> 0 then
             SQLTabelaFreteFaixaPeso.MacroByName('MFiltro').AsString := ' TABELAFRETECIDADE.CIDAICOD = ' + IntToStr(CodCidadeFrete) + ' and TABELAFRETECIDADE.ICMUA2UF  = "' + EstadoFrete + '" and ' +
                                                                        ' (TABELAFRETEFAIXAVLR.TFFVN2PESOMIN <= ' + Peso + ' and ' +
                                                                        '  TABELAFRETEFAIXAVLR.TFFVN2PESOMAX >= ' + Peso + ')'
          else
             if CodEstadoFrete <> 0 then
                SQLTabelaFreteFaixaPeso.MacroByName('MFiltro').AsString := ' TABELAFRETECIDADE.ICMUA2UF = "' + EstadoFrete + '" and ' +
                                                                           ' (TABELAFRETEFAIXAVLR.TFFVN2PESOMIN <= ' + Peso + ' and ' +
                                                                           '  TABELAFRETEFAIXAVLR.TFFVN2PESOMAX >= ' + Peso + ')';
          SQLTabelaFreteFaixaPeso.Open;
        end;

     if SQLItensFRITN3PESO.AsFloat > SQLTabelFretePESOMAX.AsFloat then
        begin
          SQLTabelaFreteFaixaPeso.Close;
          if CodCidadeFrete <> 0 then
             SQLTabelaFreteFaixaPeso.MacroByName('MFiltro').AsString :=  ' TABELAFRETECIDADE.CIDAICOD = ' + IntToStr(CodCidadeFrete) + ' and TABELAFRETECIDADE.ICMUA2UF  = "' + EstadoFrete  + '" and ' +
                                                                         ' TABELAFRETEFAIXAVLR.TFFVN2PESOMAX = ' + FloatToStr(SQLTabelFretePESOMAX.AsFloat)
          else
             if CodEstadoFrete <> 0 then
                SQLTabelaFreteFaixaPeso.MacroByName('MFiltro').AsString :=  ' TABELAFRETECIDADE.ICMUA2UF  = "' + EstadoFrete  + '" and ' +
                                                                            'TABELAFRETEFAIXAVLR.TFFVN2PESOMAX = ' + FloatToStr(SQLTabelFretePESOMAX.AsFloat);
          SQLTabelaFreteFaixaPeso.Open;
        end;

    if (SQLTabelaFreteFaixaPeso.RecordCount = 1) and ((CodCidadeFrete <> 0) or (CodEstadoFrete <> 0)) then
       VlrPeso := SQLTabelaFreteFaixaPesoTFFVN2PESOVLR.AsFloat
    else
       begin
         if SQLTabelaFreteFaixaPeso.RecordCount > 1 then
            begin
              Informa('Há mais de uma faixa de peso com os dados informados.');
              CodCidadeFrete := 0;
              Abort;
            end;

         if ((CodCidadeFrete = 0) or (CodEstadoFrete = 0)) then
            begin
               CodCidadeFrete := 0;
               if Application.MessageBox(PChar('Não há uma faixa de peso na Tabela de Frete para a Cidade de Destino["' + CidadeFrete + '"](Faturado).' + Char(13) +
                                         'Deseja escolher outra Cidade para o Destino?'),'Atenção',MB_YESNO + MB_SETFOREGROUND + MB_ICONEXCLAMATION + MB_SYSTEMMODAL) = IdYes then
                  goto EscolhaDestino;
               Abort;
            end;

         if SQLTabelaFreteFaixaPeso.RecordCount < 1 then
            begin
               CodCidadeFrete := 0;
               if Application.MessageBox(PChar('Não há uma faixa de peso na Tabela de Frete para a Cidade de Destino["' + CidadeFrete + '"](Faturado).' + Char(13) +
                                         'Deseja escolher outra Cidade para o Destino?'),'Atenção',MB_YESNO + MB_SETFOREGROUND + MB_ICONEXCLAMATION + MB_SYSTEMMODAL) = IdYes then
                  goto EscolhaDestino;
               Abort;
            end;
       end;

     if SQLTabelFreteTBFCCCALCULOPESO.AsString = 'S' then
        begin
           if (VlrPeso * SQLItensFRITN3PESO.AsFloat) < SQLTabelFreteTBFCN2TARIFAMINIMA.AsFloat then
              VlrTotalPeso := SQLTabelFreteTBFCN2TARIFAMINIMA.AsFloat
           else
              VlrTotalPeso := (VlrPeso * SQLItensFRITN3PESO.AsFloat);
           CalculaPorPeso  := True;
        end
     else
        begin
           if SQLItensFRITN3PESO.AsFloat > SQLTabelFretePESOMAX.AsFloat then
              VlrTotalPeso := VlrPeso + ((SQLItensFRITN3PESO.AsFloat - SQLTabelFretePESOMAX.AsFloat) * SQLTabelFreteTBFCN2VALORPESOEXEC.AsFloat)
           else
              VlrTotalPeso := VlrPeso;
           CalculaPorPeso  := False;
        end;

//Coleta Entrega
     if chkColeta.Checked and (SQLTabelFreteTBFCCCOLETA.AsString = 'S') and
        (SQLItensFRITN3CAT.AsFloat = 0) then
        begin
           if SQLTabelFreteTBFCN2COLETAPESOMX.AsFloat < SQLItensFRITN3PESO.AsFloat then
              SQLItensFRITN3CAT.AsFloat := SQLTabelFreteTBFCN2COLETAVLR.AsFloat +
                                ((SQLItensFRITN3PESO.AsFloat - SQLTabelFreteTBFCN2COLETAPESOMX.AsFloat) * SQLTabelFreteTBFCN2COLETAEXCVLR.AsFloat)
           else
              SQLItensFRITN3CAT.AsFloat := SQLTabelFreteTBFCN2COLETAVLR.AsFloat;
        end;

     if chkEntrega.Checked and (SQLTabelFreteTBFCCENTREGA.AsString = 'S') and
        (SQLItensFRITN3OUTROS.AsFloat = 0) then
        begin
           if (SQLTabelFreteTBFCN2ENTREGAPESOMX.AsFloat < SQLItensFRITN3PESO.AsFloat) then
              SQLItensFRITN3OUTROS.AsFloat := SQLTabelFreteTBFCN2ENTREGAVLR.AsFloat +
                                ((SQLItensFRITN3PESO.AsFloat - SQLTabelFreteTBFCN2ENTREGAPESOMX.AsFloat) * SQLTabelFreteTBFCN2ENTREGAEXCVLR.AsFloat)
           else
              SQLItensFRITN3OUTROS.AsFloat := SQLTabelFreteTBFCN2COLETAVLR.AsFloat;
        end;
////

     VlrFrete := SQLItensFRITN2VLRVALOREM.AsFloat + VlrTotalPeso +
                 SQLItensFRITN3CAT.AsFloat + SQLItensFRITN3OUTROS.AsFloat + SQLItensFRITN2OUTRASDESP.AsFloat;

     SQLItensFRITN2VLRICMS.AsFloat  := VlrFrete/((100 - SQLItensFRITN2ICMS.AsFloat)/100) - VlrFrete;

     VlrFrete         := VlrFrete + SQLItensFRITN2VLRICMS.AsFloat;

     SQLItensPRODN2VLR.AsFloat := VlrFrete + SQLItensFRITN2PEDAGIO.AsFloat;

     SQLItensFRITN2PESOVLR.AsFloat := VlrPeso;
end;

procedure TFormCadastroFreteSimples.edPesoExit(Sender: TObject);
begin
  inherited;
  if (SQLItensFRITN3PESO.AsFloat <> 0) and (cblTabelaFrete.Text <> '...') and
     (SQLItens.State in dsEditModes) and (TEdit(Sender).Text <> '') then
     if (ValorAntigo <> StrToFloat(TEdit(Sender).Text))  then
        CalculaFrete;
end;

procedure TFormCadastroFreteSimples.DSTemplateStateChange(Sender: TObject);
begin
  inherited;
  CodCidadeFrete := 0;
  if SQLTemplate.State in dsEditModes then
     begin
        if SQLTemplate.State in [dsInsert] then
           begin
             Button3.Tag := 2;
             ButtonFinanceiro.Tag := 2;
           end
        else
           begin
             Button3.Tag := 1;
             ButtonFinanceiro.Tag := 1;
           end;
     end;
  if not (SQLItens.State in dsEditModes) and (SQLTemplate.State in dsEditModes) and
     not InsertItens and not SQLItens.IsEmpty then
     SQLItens.Edit;
end;

procedure TFormCadastroFreteSimples.chkColetaClick(Sender: TObject);
begin
  inherited;
  edPesoExit(edPeso);

  if TCheckBox(Sender).Name = 'chkColeta' then
     dbeColeta.Enabled := TCheckBox(Sender).Checked;

  if TCheckBox(Sender).Name = 'chkEntrega' then
     dbeEntrega.Enabled := TCheckBox(Sender).Checked;
end;

procedure TFormCadastroFreteSimples.cblPlanoContaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     ButtonCadastroPlanoConta.Click;
end;

procedure TFormCadastroFreteSimples.ButtonCadastroPlanoContaClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('PLCTA15COD');
  FieldOrigem := 'PLCTA15COD';
  CriaFormulario(TFormTelaConsultaPlanoContas,'FormTelaConsultaPlanoContas',False,True,True,'');
end;

procedure TFormCadastroFreteSimples.cblPlanoPgtoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     ButtonCadastroPlanoPagto.Click;
end;

procedure TFormCadastroFreteSimples.SQLItensCalcFields(DataSet: TDataSet);
begin
  inherited;
    if EstadoEmpresa = EstadoFrete then
       begin
         SQLItensDescrIcms.AsString := 'Diferido';
      end
    else
     if not SQLItensFRITN2ICMS.IsNull then
         SQLItensDescrIcms.AsString := SQLLocate('ICMSUF','ICMUA2UF','ICMUA60DESCR', '"'+ EstadoFrete + '"')
      else
         SQLItensDescrIcms.AsString := '';
end;

procedure TFormCadastroFreteSimples.TabSheetConsultaShow(Sender: TObject);
begin
  inherited;
  PanelCodigoDescricao.Enabled := True;
end;

procedure TFormCadastroFreteSimples.TabSheetDadosPrincipaisShow(
  Sender: TObject);
begin
  inherited;
  PanelCodigoDescricao.Enabled := True;
end;

procedure TFormCadastroFreteSimples.TabSheetFinanceiroShow(
  Sender: TObject);
begin
  inherited;
  PanelCodigoDescricao.Enabled := True;
end;

procedure TFormCadastroFreteSimples.TabSheetItemShow(Sender: TObject);
begin
  inherited;
  PanelCodigoDescricao.Enabled := False;
end;

procedure TFormCadastroFreteSimples.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DSMasterSys := Nil;
end;

procedure TFormCadastroFreteSimples.RadioPagoChange(Sender: TObject);
begin
  inherited;
  CodCidadeFrete := 0;
end;

procedure TFormCadastroFreteSimples.DSSQLItensDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if (SQLItens.State in dsEditModes) then
     begin
       if not SQLItensCIDAICOD.IsNull then
          edCidDiferente.Text := SQLLocate('CIDADE','CIDAICOD','CIDAA60NOME',IntToStr(SQLItensCIDAICOD.AsInteger));

       CidadeFrete := SQLTemplateCLIEA60CIDENTR.AsString;

       gboFaixaDif.Visible  := (edCidDiferente.Text <> CidadeFrete);
     end
  else
     begin
       gboFaixaDif.Visible  := False;
     end;

  pnItens.Enabled := not SQLItens.IsEmpty and (SQLTemplate.State in dsEditModes);

end;

procedure TFormCadastroFreteSimples.edPesoEnter(Sender: TObject);
begin
  inherited;
  if TEdit(Sender).Text <> '' then
     ValorAntigo := StrToFloat(TEdit(Sender).Text);
end;

end.
