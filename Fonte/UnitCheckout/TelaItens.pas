unit TelaItens;

interface

uses
  Variants, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, StdCtrls, Db, DBTables, Buttons, JPEG, Mask, ToolEdit,
  CurrEdit, ConerBtn, DBCtrls, RXCtrls, RxQuery, EWall, ComObj, Math, ShellApi, //Serial,
  RxCalc, ppDB, ppDBPipe, ppDBBDE, ppBands, ppCtrls, ppPrnabl, ppClass, CartaoCredito,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, CRLabel, dbcgrids, IniFiles, RXSwitch,
  Menus, ESkinPlus, AdvGlowButton, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvSmoothPanel, AdvReflectionLabel, AdvSmoothSlideShow, ComCtrls, TFlatPanelUnit,
  OleCtrls, SHDocVw, ACBrBAL, XMLIntf, XMLDoc, zlib, ACBrNFe, ACBrMail, ACBrBase, ACBrPosPrinter,
  pcnConversao, ACBrUtil, ACBrDevice, RXClock, cxStyles, dxSkinsCore, pcnConversaoNFe, ACBrDFeUtil;

const
  //AS VARIAVEIS ABAIXO FORAM CRIADAS PARA N�O CORRER O RISCO DE DIGITAR ERRADO
  //E ALGUMA ROTINA NAO FUNCIONAR, EU SO DESCOBRIRIA AO USAR, ASSIM JA DESCUBRO
  //NA COMPILACAO
  AguardandoNovaVenda = 'AguardandoNovaVenda';
  InformandoItens = 'InformandoItens';
  CancelandoItem = 'CancelandoItem';
  DescontoPercItem = 'DescontoPercItem';
  DescontoVlrItem = 'DescontoVlrItem';
  InformandoConvenio = 'InformandoConvenio';
  InformandoOrdemCompra = 'InformandoOrdemCompra';
  InformandoClienteConvenio = 'InformandoClienteConvenio';
  InformandoItensTroca = 'InformandoItensTroca';
  InformandoDescricaoTecnica = 'InformandoDescricaoTecnica';
  InformandoTotalVenda = 'InformandoTotalVenda';
type

  TFormTelaItens = class(TForm)
    SQLProduto: TRxQuery;
    DSSQLIntensVenda: TDataSource;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoPRODIAGRUPGRADE: TIntegerField;
    SQLProdutoUNIDICOD: TIntegerField;
    SQLProdutoPRODICODPAI: TIntegerField;
    SQLProdutoPRODCTIPOBAIXA: TStringField;
    SQLProdutoPRODN3VLRVENDA: TFloatField;
    SQLProdutoPRODA30ADESCRREDUZ: TStringField;
    SQLProdutoICMSICOD: TIntegerField;
    SQLProdutoPRODN3VLRVENDAPROM: TFloatField;
    SQLProdutoPRODDINIPROMO: TDateTimeField;
    SQLProdutoPRODDFIMPROMO: TDateTimeField;
    SQLBalanca: TRxQuery;
    SQLBalancaCFBLICOD: TIntegerField;
    SQLBalancaCFBLA60DESCR: TStringField;
    SQLBalancaCFBLIDECIMAIS: TIntegerField;
    SQLBalancaCFBLCUSASEPAR: TStringField;
    SQLBalancaCFBLA1TIPOSEPAR: TStringField;
    SQLBalancaCFBLA254NOMEARQTXT: TStringField;
    SQLBalancaCFBLA10BALID: TStringField;
    SQLBalancaCFBLIBALIDPOS: TIntegerField;
    SQLBalancaCFBLIBALIDTAM: TIntegerField;
    SQLBalancaCFBLIBALCODPOS: TIntegerField;
    SQLBalancaCFBLIBALCODTAM: TIntegerField;
    SQLBalancaCFBLIVLRPOS: TIntegerField;
    SQLBalancaCFBLIVLRTAM: TIntegerField;
    SQLProdutoPRODICODBALANCA: TIntegerField;
    SQLProdutoPRODA15CODANT: TStringField;
    MemoRetorno: TMemo;
    SQLProdutoPRODN3VLRCOMPRA: TFloatField;
    SQLProdutoPRODN3VLRCUSTO: TFloatField;
    SQLProvedorCartao: TRxQuery;
    DsSQLProvedorCartao: TDataSource;
    SQLProvedorCartaoPRCAA13ID: TStringField;
    SQLProvedorCartaoPRCAA60DESCR: TStringField;
    SQLProvedorCartaoPRCATPATHENVIA: TMemoField;
    SQLProvedorCartaoPRCATPATHRECEBE: TMemoField;
    SQLProvedorCartaoPRCAA60CARTAO: TStringField;
    SQLTEF: TQuery;
    SQLTEFTERMICOD: TIntegerField;
    SQLTEFNUMEICOD: TIntegerField;
    SQLTEFREDE: TStringField;
    SQLTEFNSU: TStringField;
    SQLTEFVALOR: TFloatField;
    SQLTEFTEXTO: TMemoField;
    SQLTEFFINALIZACAO: TStringField;
    TimerLeitor: TTimer;
    //Serial: TSerialPort;
    SQLBalancaCFBLCTIPOPRECO: TStringField;
    SQLProdutoPRODN3VLRCUSTOMED: TFloatField;
    SQLProdutoPRODCSUBSTRIB: TStringField;
    SQLProdutoPRODITIPOPRODBALAN: TStringField;
    SQLProdutoPRODCTEMNROSERIE: TStringField;
    SQLProdutoPRODA60REFER: TStringField;
    SQLProdutoPRODBIMAGEM: TBlobField;
    LblCLiente: TLabel;
    SQLProdutoPRODCATIVO: TStringField;
    SQLProdutoPRODA60CODBAR: TStringField;
    RxCalc: TRxCalculator;
    SQLItensVendaTemp: TTable;
    SQLSubTotal: TRxQuery;
    TblUnidade: TTable;
    TblUnidadeUNIDICOD: TIntegerField;
    TblUnidadeUNIDA5DESCR: TStringField;
    TblUnidadePENDENTE: TStringField;
    TblUnidadeREGISTRO: TDateTimeField;
    TblUnidadeUNIDA15DESCR: TStringField;
    SQLProdutoUNIDADE: TStringField;
    TblUnidadeUNIDCFRAC: TStringField;
    SQLProdutoFracionado: TStringField;
    SQLProdutoMARCICOD: TIntegerField;
    SQLProdutoPRODDPREVCOMPRA: TDateTimeField;
    SQLProdutoCORICOD: TIntegerField;
    SQLProdutoGRADICOD: TIntegerField;
    SQLProdutoGRTMICOD: TIntegerField;
    SQLProdutoPRODN3VLRVENDA2: TFloatField;
    SQLProdutoPRODCVDESTNEG: TStringField;
    SQLContasReceber: TRxQuery;
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
    SQLContasReceberCTRCN2TXMULTA: TFloatField;
    SQLContasReceberCTRCN2TXJURO: TFloatField;
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
    SQLItensVendaTempTERMICOD: TIntegerField;
    SQLItensVendaTempNUMITEM: TIntegerField;
    SQLItensVendaTempCODIGO: TIntegerField;
    SQLItensVendaTempDESCRICAO: TStringField;
    SQLItensVendaTempQUANTIDADE: TFloatField;
    SQLItensVendaTempVLRUNITBRUT: TFloatField;
    SQLItensVendaTempVLRDESC: TFloatField;
    SQLItensVendaTempVLRTOTAL: TFloatField;
    SQLItensVendaTempICMSICOD: TIntegerField;
    SQLItensVendaTempVENDICOD: TIntegerField;
    SQLItensVendaTempTROCA: TStringField;
    SQLItensVendaTempDESCRICAOTEC: TStringField;
    SQLItensVendaTempVLRCUSTO: TFloatField;
    SQLItensVendaTempALIQUOTA: TFloatField;
    SQLItensVendaTempBASEICMS: TFloatField;
    SQLItensVendaTempVLRICMS: TFloatField;
    SQLItensVendaTempNROSERIE: TStringField;
    SQLItensVendaTempVLRQDEVERIAVENDER: TFloatField;
    SQLItensVendaTempCODBARRAS: TStringField;
    SQLItensVendaTempPRODA60DESCR: TStringField;
    SQLItensVendaTempREFERENCIA: TStringField;
    SQLItensVendaTempMARCA: TStringField;
    SQLItensVendaTempCOR: TStringField;
    SQLItensVendaTempBOMBICOD: TIntegerField;
    SQLItensVendaTempTAMANHO: TStringField;
    SQLItensVendaTempENCERRANTE: TIntegerField;
    SQLItensVendaTempCPITCSTATUS: TStringField;
    TimeLembrete: TTimer;
    SQLProdutoGRUPICOD: TIntegerField;
    SQLImpressaoCupom: TRxQuery;
    SQLParcelasVistaVendaTemp: TRxQuery;
    SQLParcelasVistaVendaTempTERMICOD: TIntegerField;
    SQLParcelasVistaVendaTempNROITEM: TIntegerField;
    SQLParcelasVistaVendaTempNUMEICOD: TIntegerField;
    SQLParcelasVistaVendaTempVALORPARC: TFloatField;
    SQLParcelasVistaVendaTempTIPOPADR: TStringField;
    SQLParcelasPrazoVendaTemp: TRxQuery;
    SQLParcelasPrazoVendaTempTERMICOD: TIntegerField;
    SQLParcelasPrazoVendaTempDATAVENCTO: TDateTimeField;
    SQLParcelasPrazoVendaTempNROPARCELA: TIntegerField;
    SQLParcelasPrazoVendaTempVALORVENCTO: TFloatField;
    SQLParcelasPrazoVendaTempNUMEICOD: TIntegerField;
    SQLParcelasPrazoVendaTempTIPOPADR: TStringField;
    DSSQLParcelasPrazoVendaTemp: TDataSource;
    SQLProdutoPRODA15APAVIM: TStringField;
    SQLProdutoPRODA15RUA: TStringField;
    SQLProdutoPRODA15PRATEL: TStringField;
    SQLProdutoPRODA2CSTPIS: TStringField;
    SQLProdutoPRODN2ALIQCOFINS: TFloatField;
    SQLProdutoPRODN2ALIQPIS: TFloatField;
    SQLProdutoPRODA2CSTCOFINS: TStringField;
    SQLItensVendaTempCANCELADO: TStringField;
    SQLProdutoPRODN3PESOLIQ: TFloatField;
    SQLItensVendaTempAliquotaMedia: TFloatField;
    SQLProdutoPRODIORIGEM: TIntegerField;
    SQLProdutoPRODISITTRIB: TIntegerField;
    SQLProdutoNCMICOD: TIntegerField;
    SQLItensVendaTempValorImpostoMedio: TFloatField;
    SQLProdutoPRODA255DESCRTEC: TMemoField;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ScrollBoxPrincipal: TScrollBox;
    DSSQLParcelasVistaVendaTemp: TDataSource;
    SQLAgendaVer: TQuery;
    ScrollBoxEsquerda: TScrollBox;
    ScrollBoxDireita: TScrollBox;
    PagePrincipal: TPageControl;
    TabPublicidade: TTabSheet;
    TabVenda: TTabSheet;
    AdvSmoothPanel1: TAdvSmoothPanel;
    Foto: TImage;
    PanelProdutos: TAdvSmoothPanel;
    AdvOfficeStatusBar3: TAdvOfficeStatusBar;
    RxLabel7: TRxLabel;
    GridItens: TDBGrid;
    btnF1: TAdvGlowButton;
    btnF2: TAdvGlowButton;
    btnF4: TAdvGlowButton;
    btnF3: TAdvGlowButton;
    AdvSmoothPanel6: TAdvSmoothPanel;
    rxParceiro: TRxLabel;
    ValorBonusTroca: TCurrencyEdit;
    LblBonusTroca: TRxLabel;
    DescricaoProduto: TRxLabel;
    AdicionalProduto: TRxLabel;
    btnF11: TAdvGlowButton;
    btnF12: TAdvGlowButton;
    btnSair: TAdvGlowButton;
    btnF7: TAdvGlowButton;
    MemoRetornoNFE: TMemo;
    PanelDadosConvenio: TPanel;
    LblConvenio: TLabel;
    WBResposta: TWebBrowser;
    PanelDataHora: TPanel;
    SQLImpressaoCupomFinanceiro: TRxQuery;
    SQLItensVendaTempUNIDADE: TStringField;
    btnF5: TAdvGlowButton;
    ACBrBAL1: TACBrBAL;
    SQLItensVendaTempDENSIDADE: TStringField;
    SQLItensVendaTempMEDIDA: TStringField;
    SQLItensVendaTempESPESSURA: TStringField;
    SQLItensVendaTempTECIDO: TStringField;
    SQLItensVendaTempM3_ESPESSURA: TFloatField;
    SQLItensVendaTempM3_LARGURA: TFloatField;
    SQLItensVendaTempM3_COMPRI: TFloatField;
    SQLItensVendaTempM3_QTDE: TFloatField;
    RxHora: TRxClock;
    btnF9: TAdvGlowButton;
    SQLProdutoPRODN2VLRVENDA2835D: TFloatField;
    SQLProdutoPRODN2VLRVENDA283542D: TFloatField;
    SQLProdutoTABCEST: TStringField;
    AdvSmoothPanel2: TAdvSmoothPanel;
    Foto_Empresa: TImage;
    LblInstrucoes: TRxLabel;
    AdvSmoothPanel3: TAdvSmoothPanel;
    LblSubTotal: TRxLabel;
    CurSubTotal: TCurrencyEdit;
    AdvSmoothPanel4: TAdvSmoothPanel;
    RxLabel2: TRxLabel;
    EditQtde: TCurrencyEdit;
    EntradaDados: TEdit;
    RxLabel6: TRxLabel;
    AdvSmoothPanel7: TAdvSmoothPanel;
    RxLabel4: TRxLabel;
    RxTerminal: TRxLabel;
    RxLabel5: TRxLabel;
    RxUsuario: TRxLabel;
    RxLabel12: TRxLabel;
    RxLabel3: TRxLabel;
    rxClienteNome: TRxLabel;
    RxLabel1: TRxLabel;
    rxVendedor: TRxLabel;
    shpStatusServidor: TShape;
    lbStatusServidor: TRxLabel;
    shpStatusECF: TShape;
    lbStatusECF: TRxLabel;
    LabelLeitor: TLabel;
    sqlEmpresa: TRxQuery;
    Shape1: TShape;
    AdvSmoothPanel5: TAdvSmoothPanel;
    slideshow: TAdvSmoothSlideShow;
    RxLabel8: TRxLabel;
    LBSaldo: TRxLabel;
    SQLProdutoPESAGEM_AUTOMATICA: TStringField;
    SQLProdutoPERC_REDUCAO_BASE_CALCULO: TFloatField;
    SQLItensVendaTempPERC_RED_BASE_ICMS: TFloatField;
    SQLItensDescTemp: TTable;
    SQLItensDescTempCODIGO: TIntegerField;
    SQLItensDescTempQUANTIDADE: TFloatField;
    SQLItensDescTempVALOR: TFloatField;
    SQLItensDescTempCALCULAR_DESC: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EntradaDadosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CurSubTotalEnter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ListaItensEnter(Sender: TObject);
    procedure DsSQLProvedorCartaoDataChange(Sender: TObject;
      Field: TField);
    procedure TimerLeitorTimer(Sender: TObject);
    //procedure SerialAfterReceive(Sender: TObject; data: String);
    procedure EntradaDadosEnter(Sender: TObject);
    procedure BtnF1Click(Sender: TObject);
    procedure SQLItensVendaTempOKNewRecord(DataSet: TDataSet);
    procedure FotoClick(Sender: TObject);
    procedure SQLItensVendaTempNewRecord(DataSet: TDataSet);
    procedure EditQtdeExit(Sender: TObject);
    procedure EditQtdeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditQtdeEnter(Sender: TObject);
    procedure GridItensDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure EntradaDadosKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnF2Click(Sender: TObject);
    procedure BtnF3Click(Sender: TObject);
    procedure BtnF4Click(Sender: TObject);
    procedure BtnF11Click(Sender: TObject);
    procedure BtnF12Click(Sender: TObject);
    procedure TimeLembreteTimer(Sender: TObject);

    procedure BtF7Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure setarceiroClick(Sender: TObject);
    procedure ACBrMailMailProcess(const AMail: TACBrMail;
      const aStatus: TMailStatus);
    procedure btnF7Click(Sender: TObject);
    procedure btnF9Click(Sender: TObject);
    procedure btnF5Click(Sender: TObject);
    procedure SQLItensVendaTempAfterPost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure GridItensEnter(Sender: TObject);
    procedure PagePrincipalChange(Sender: TObject);

  private
    { Private declarations }
    vNaoPedeMaisParaFechar: Boolean;
    WNumItem, ItemCancelado: integer;
    FormatStrQuant, FormatStrVlrVenda,
      InfDesc,
      Tributo, sXML: string;
    VerCaixa, TemProdutoSemSubsTrib, TemProdutoComSubsTrib, AplicarDescontoItem: boolean;
    Tecla: Word;

    Peso: Double;
    PesoP05A: array[0..5] of char;
    PesoP05B: array[0..7] of char;
    Toledo_Dir, PesoSTR: string;
    Toledo_Porta, Toledo_Baud, Toledo_Paridade, Toledo_DataBits, Toledo_OpcoesDiponibilizar, Toledo_TipoLeitura: Integer;
    Urano_Modelo, Urano_Operacao: Integer;
    Urano_Porta: string;
    Urano_PesoLido: TextFile;

    procedure CriardmECF;
    procedure CriardmSiTEF;
    procedure Exec_SP_ACERTO_TOTAL_CUPOM;
    function GetCPNMN2VLR(pCUPOA13ID:String; pnumeicod: Integer):Double;
    function GravaCupom: Boolean;
    function GravaCupomItem: Boolean;
    function GravarOrcamento: boolean;
    function GravarItensOrcamento: boolean;
    procedure CalculaTotal;
    procedure CapturaCodigosIniciais;
    procedure CalcularDescontoProduto(ValidaQtde : Boolean);
    procedure InformaDescricaoTecnicaProduto;
    procedure Inicia_NFe;
    function Gerar_NFCe(idCupom: string): string;
    procedure LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
    function SN(sNum: string): string;
    procedure VoltaParaEntradaDados;
    procedure CalcularImpostos(CodNCM, OrigemProduto: Integer; Valor: Currency);
    procedure ExecutarCtrlQ;
    procedure ExecutarF2;
    procedure ExecutarPessagemAutomatica;
    procedure ConfACBrPosPrinter;
  public
    { Public declarations }
    CodICMS,
      Qtd,
      Unidade,
      EstadoPDVChk,
      EstadoPDVChkAnt,
      QuantItemProv,
      RetornoCampoUsuario,
      ValorTotItem,
      NroSerieProduto, TipoDesc, ProvedorCartao, NomeNumerarioCartao, Msg, LbinstrucoesOld, Chave, Danfe, PathPastaMensal: string;
    TrocandoItens, SolicitarPreco, SolicitarPrecoQDeveriaSerVendido, GPAtivo, MostraPublicidade: boolean;
    ValorItem, ValorItemQDeveriaSerVendido, ValorCustoTotal, ValorLucroTotal: Currency;
    DescItemPerc,
      DescItemVlr, DescItemVlrUnitario,
      TotalDescItens,
      ReducaoICMS,
      QuantItem, QuantProx, SaldoEstoqueAtual, xNewQtd, xTotal, xCalculado: Double;
    VendPreVenda, NumNFe, nfce_tentativa: integer;
    BlobStream: TStream;
    JPEGImage: TJPEGImage;
    Arquivo: TextFile;
    procedure PreparaEstadoBalcao(Estado: string);
    procedure TestaStatusCaixa;
    procedure CancelarVenda;
    procedure LimparVariaveis;
    procedure LimparTabTempItens;
    procedure vercontas;
    procedure TefAdm;
    procedure StatusServicoNFE;
    function Transmite_NFCe(idCupom: string): Boolean;
    procedure ImprimirConfissaoDeDivida(pTotalPrazo:Double; nomeCliente:String);
  end;

var
  FormTelaItens: TFormTelaItens;
  SpeedBtn: array of TSpeedButton;
  VarEncerrante: Integer;
  Bloqueiovenda: string;
  VendeuManual: Boolean;
  IniFile: TIniFile;

implementation

uses DataModulo, UnitLibrary, TelaTipoDescontoItem, TelaConsultaRapidaItem,
  TelaItensIncluidosCupom, TelaFechamentoVenda, TelaRecebimentoCrediario,
  TelaTeclasAtalhoTelaItens, ImportarPreVenda, MovimentoCaixaCheckout,
  TelaTiraTeima, TelaCadastroRapidoCliente, ECFCheckout,
  CadastroCliente, TelaConsultaRapidaCliente, CadastroCupom, TelaConsultaRapidaConvenio,
  FormResources, VarSYS, Telalogin, UnitCheckoutLibrary, TelaDadosVersao,
  TelaTotaisCaixa, ImportarPedidoOrcamento, TelaDescricaoTecnicaProduto,
  ConsultaProvedor, TelaReceituario, WaitWindow, //CadastroPedidoVenda,
  TelaCadastroRapidoProdutos, LeitorCodigoBarrasCheckout, WindowsLibrary,
  IMPNAOFISCAL, TelaInformaNumeroSerieProduto, TelaMarcacaoConsulta,
  TelaTransfereNroSerial, TelaConsultaSaldoPorEmpresa, UnSoundPlay,
  TelaLucro, TelaFotoExpandida, BemaFi32, Sweda_Termica,
  TelaTransferenciaMercadoria, PrincipalRelatorios, TelaConsultaContratosCliente, TelaLembreteTarefa,
  Epson_Termica, TelaPrecoAlterado, BalancaFilizola, BalancaToledo, BalancaUrano, TelaPrestacaoContas,
  TelaConsultaPlaca, TelaProdutoNaoEncontrado, TelaConsultaRapidaCupom, Daruma_Framework_FISCAL,
  pcnNFe, ACBrDFeConfiguracoes, pcnAuxiliar, ACBrDFeSSL, pcnNFeRTXT,
  ACBrNFeNotasFiscais, TelaDadosCliente, TelaImpressaoPreVenda,
  ACBrNFeWebServices, ACBrDFeWebService, TelaProdutoDimensao, udmECF,
  udmSiTef;

{$R *.DFM}

function TFormTelaItens.SN(sNum: string): string;
var s1, s2: string;
  i: Integer;
begin
  s1 := snum;
  s2 := '';
  for i := 1 to Length(s1) do
    if s1[i] in ['0'..'9'] then
      s2 := s2 + s1[i];
  result := s2;
end;

procedure TFormTelaItens.Inicia_NFe();
begin

{$IFDEF ACBrNFeOpenSSL}
  dm.ACBrNFe.Configuracoes.Certificados.ArquivoPFX := dm.sqlEmpresa.FieldByName('EMPRA100CERTIFSERIE').AsString;
  dm.ACBrNFe.Configuracoes.Certificados.Certificado := dm.sqlEmpresa.FieldByName('EMPRA100CERTIFSERIE').AsString;
  dm.ACBrNFe.Configuracoes.Certificados.Senha := dm.sqlEmpresa.FieldByName('EMPRA35CERTIFSENHA').AsString;
{$ELSE}
  dm.ACBrNFe.Configuracoes.Certificados.NumeroSerie := dm.sqlEmpresa.FieldByName('EMPRA100CERTIFSERIE').AsString;
  dm.ACBrNFe.Configuracoes.Certificados.Senha := dm.sqlEmpresa.FieldByName('EMPRA35CERTIFSENHA').AsString;
{$ENDIF}

  if dm.sqlEmpresa.FieldByName('VERSAO').AsString = '4' then
    dm.ACBrNFe.Configuracoes.Geral.VersaoDF := ve400
  else
    dm.ACBrNFe.Configuracoes.Geral.VersaoDF := ve310;

  dm.ACBrNFe.Configuracoes.Geral.IdCSC := dm.sqlEmpresa.FieldByName('idTOKEN').AsString;
  dm.ACBrNFe.Configuracoes.Geral.CSC := dm.sqlEmpresa.FieldByName('TOKEN').AsString;
  DM.ACBrNFe.Configuracoes.Geral.VersaoQRCode := veqr200;

  dm.ACBrNFeDANFeESCPOS.ViaConsumidor := True;
  dm.ACBrNFeDANFeESCPOS.ImprimeItens := True;

  if (ECFAtual = 'NFCE A4') then dm.ACBrPosPrinter.Modelo := ppTexto;
  if (ECFAtual = 'NFCE EPSON') then dm.ACBrPosPrinter.Modelo := ppEscPosEpson;
  if (ECFAtual = 'NFCE BEMATECH') then dm.ACBrPosPrinter.Modelo := ppEscBematech;
  if (ECFAtual = 'NFCE ELGIN') then dm.ACBrPosPrinter.Modelo := ppEscVox;
  if (ECFAtual = 'NFCE DR700') then dm.ACBrPosPrinter.Modelo := ppEscDaruma;
  if (ECFAtual = 'NFCE DR800') then dm.ACBrPosPrinter.Modelo := ppEscDaruma;
{  begin
    dm.ACBrPosPrinter.Modelo := ppEscDaruma;
    dm.ACBrPosPrinter.ControlePorta := False;
  end;}

  if dm.SQLTerminalAtivoTERMA5ECFPORTACOM.Value <> 'USB' then
    dm.ACBrPosPrinter.Device.Porta := dm.SQLTerminalAtivoTERMA5ECFPORTACOM.Value
  else
    dm.ACBrPosPrinter.Device.Porta := '\\localhost\nfce';

  if not FileExists('COMUNICACAO_OFFLINE.TXT') then
    dm.ACBrPosPrinter.Device.Baud := dm.SQLTerminalAtivoECF_VELOC.Value
  else
  begin
    dm.ACBrPosPrinter.Device.Porta := ExtractFilePath(application.ExeName) + '\nfceOffline.txt';
    dm.ACBrPosPrinter.ControlePorta := False;
    dm.ACBrPosPrinter.Device.DeviceType := dtFile;
  end;
  dm.ACBrNFeDANFeESCPOS.ViaConsumidor := True;
  dm.ACBrNFeDANFeESCPOS.ImprimeItens := True;

  ConfACBrPosPrinter; 
end;

procedure TFormTelaItens.LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
begin
  MemoRetornoNFE.Lines.SaveToFile(ExtractFileDir(application.ExeName) + 'temp.xml');
  MyWebBrowser.Navigate(ExtractFileDir(application.ExeName) + 'temp.xml');
end;

function TFormTelaItens.Gerar_NFCe(idCupom: string): string;
var xCliente, xDocumento, xPlano, vTotaItem, Associado: string;
var iCRT, vCont, vUltimo: integer;
var VlrDescNoTotal, VlrTroca, VlrTotalItens, PercDesc, TotalDesconto: double;
  vaux, Total_vTotTrib, VlrTroco, AliquotaPis, AliquotaCofins, ValorPis, ValorCofins, ValorBasePis, ValorBaseCofins, vPercSTEfe : Currency;
var vDescTodosItens : Boolean;
begin
  dm.ACBrNFe.DANFE.vTribFed := 0;
  dm.ACBrNFe.DANFE.vTribEst := 0;
  dm.ACBrNFe.DANFE.vTribMun := 0;
  vDescTodosItens := True;
  VlrTotalItens := 0;
  VlrDescNoTotal := 0;
  VlrTroca := 0;
  dm.sqlconsulta.close;
  dm.sqlconsulta.sql.clear;
  dm.sqlconsulta.sql.text := 'Select CUPOINRO, CUPON2TOTITENS, CUPON2DESC, CUPON3BONUSTROCA, CLIENTECNPJ, CLIENTENOME, PLRCICOD, CLIEA13ID, TROCO from cupom where CUPOA13ID=''' + idCupom + '''';
  dm.sqlconsulta.open;
  xCliente := dm.sqlconsulta.fieldbyname('CLIENTENOME').AsString;
  VlrTroco := dm.sqlconsulta.fieldbyname('TROCO').AsFloat;
  //xDocumento := dm.sqlconsulta.fieldbyname('CLIENTECNPJ').AsString ;
  xPlano := dm.sqlconsulta.fieldbyname('PLRCICOD').AsString;

  if dm.sqlconsulta.fieldbyname('CUPON2TOTITENS').Value > 0 then
    VlrTotalItens := RoundTo(dm.sqlconsulta.fieldbyname('CUPON2TOTITENS').AsCurrency, -2);
  if dm.sqlconsulta.fieldbyname('CUPON2DESC').Value > 0 then
    VlrDescNoTotal := dm.sqlconsulta.fieldbyname('CUPON2DESC').Value;
  if dm.sqlconsulta.fieldbyname('CUPON3BONUSTROCA').Value > 0 then
    VlrTroca := dm.sqlconsulta.fieldbyname('CUPON3BONUSTROCA').Value;
  Associado := SQLLocate('CLIENTE', 'CLIEA13ID', 'ASSOCIADO', dm.sqlconsulta.fieldbyname('CLIEA13ID').Value);

  if dm.sqlconsulta.fieldbyname('CUPOINRO').Value > 0 then {Retransmite NFCe que deu erro por qualquer motivo}
    NumNFe := dm.sqlconsulta.fieldbyname('CUPOINRO').value
  else
  begin {Transmite NFCe novo}
    dm.sqlconsulta.close;
    dm.sqlconsulta.sql.clear;
    dm.sqlconsulta.sql.text := 'Select Max(CUPOINRO) from cupom where termicod=' + dm.SQLTerminalAtivoTermicod.asstring;
    dm.sqlconsulta.open;
    if not dm.sqlconsulta.fieldbyname('MAX').IsNull then
      NumNFe := dm.sqlconsulta.fieldbyname('MAX').value + 1
    else
      NumNFe := 1;
  end;

  {Achar o Percentual de Desconto a ser aplicado em cada item, devido a alguma troca ou desconto no total}
  if (VlrDescNoTotal > 0) or (VlrTroca > 0) then
    PercDesc := ((VlrDescNoTotal + VlrTroca) / VlrTotalItens) * 100;

  LblInstrucoes.Caption := 'Aguarde... Montando NFCe.. ' + intToStr(NumNFe);
  LblInstrucoes.Update;

  //dm.ACBrNFe.
  dm.ACBrNFe.NotasFiscais.Clear;
  with dm.ACBrNFe.NotasFiscais.Add.NFe do
  begin

//    Ide.cNF := NumNFe; //Caso n�o seja preenchido ser� gerado um n�mero aleat�rio pelo componente
    Ide.cNF := GerarCodigoDFe(NumNFe);
    Ide.natOp := 'VENDA CONSUMIDOR';
    Ide.modelo := 65;
    Ide.serie := dm.SQLTerminalAtivoTERMICOD.Value;
    Ide.nNF := NumNFe;
    Ide.dEmi := now;
    Ide.dSaiEnt := now;
    Ide.hSaiEnt := now;
    Ide.tpNF := tnSaida;
    Ide.tpEmis := teNormal;
    Ide.cUF := StrToInt(SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRIUFCODFED', EmpresaPadrao));
    Ide.cMunFG := StrToInt(SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRIMUNICODFED', EmpresaPadrao));
    Ide.finNFe := fnNormal;
    Ide.tpImp := tiNFCe;
    Ide.indFinal := cfConsumidorFinal;
    Ide.indPres := pcPresencial;

       //     Ide.dhCont := date;
       //     Ide.xJust  := 'Justificativa Contingencia';

    Emit.CNPJCPF := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA14CGC', EmpresaPadrao);
    Emit.IE := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA20IE', EmpresaPadrao);
    Emit.xNome := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60RAZAOSOC', EmpresaPadrao);
    Emit.xFant := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60NOMEFANT', EmpresaPadrao);
    Emit.EnderEmit.fone := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA20FONE', EmpresaPadrao);
    Emit.EnderEmit.CEP := StrToInt(SN(SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA8CEP', EmpresaPadrao)));
    Emit.EnderEmit.xLgr := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60END', EmpresaPadrao);
    Emit.EnderEmit.nro := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRIENDNRO', EmpresaPadrao);
    Emit.EnderEmit.xCpl := ''; // Complemento
    Emit.EnderEmit.xBairro := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60BAI', EmpresaPadrao);
    Emit.EnderEmit.cMun := StrToInt(SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRIMUNICODFED', EmpresaPadrao));
    Emit.EnderEmit.xMun := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60CID', EmpresaPadrao);
    Emit.EnderEmit.UF := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA2UF', EmpresaPadrao);
    Emit.enderEmit.cPais := 1058;
    Emit.enderEmit.xPais := 'BRASIL';
    Emit.IEST := '';

    iCRT := StrToInt(SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA3CRT', EmpresaPadrao));
    if iCRT = 1 then
      Emit.CRT := crtSimplesNacional else
      if iCRT = 2 then
        Emit.CRT := crtSimplesExcessoReceita else
        if iCRT = 3 then
          Emit.CRT := crtRegimeNormal;

    if DocumentoClienteVenda <> '' then
      Dest.CNPJCPF := DocumentoClienteVenda;
       //else
       //  Dest.CNPJCPF           := xDocumento;

    Dest.xNome := xCliente;
    Dest.indIEDest := inNaoContribuinte; {Pq NFCe nao informa Destinatario}

    SQLImpressaoCupom.Close;
    SQLImpressaoCupom.RequestLive := False;
    SQLImpressaoCupom.SQL.Clear;
    SQLImpressaoCupom.SQL.Add('Select i.* From CUPOMITEM i left join Produto p on p.prodicod = i.prodicod Where (CPITCSTATUS=''A'') and (CPITN3QTD>0) and CUPOA13ID =''' + idCupom + '''');
    SQLImpressaoCupom.SQL.Add('Order by i.CPITIPOS');
    SQLImpressaoCupom.Open;
    SQLImpressaoCupom.First;
    vUltimo := 0;
    Total.ICMSTot.vBC := 0;
    Total.ICMSTot.vICMS := 0;
    vCont := SQLImpressaoCupom.RecordCount;
    while not SQLImpressaoCupom.Eof do
    begin
      vUltimo := vUltimo + 1;
           {Carrega Produtos temporarios}
      dm.sqlconsulta.close;
      dm.sqlconsulta.sql.Clear;
      dm.sqlconsulta.sql.Text := 'select NCMICOD, PRODA30ADESCRREDUZ,PRODA60CODBAR,PRODA60REFER,PRODIORIGEM, PRODISITTRIB, PRODA1TIPO, PRODA1MODBC,PRODA1MODBCST,PRODA1MODBCST,TABCEST, PRODA2CSTPIS, PRODN2ALIQPIS, PRODA2CSTCOFINS, PRODN2ALIQCOFINS, BASE_ICM_ST_RET, VALOR_ICM_ST_RET '
                               + ' from produto where prodicod=' + SQLImpressaoCupom.fieldbyname('PRODICOD').AsString;
      dm.sqlconsulta.open;

      with Det.Add do
      begin
        Prod.nItem := SQLImpressaoCupom.fieldbyname('CPITIPOS').AsInteger;
        Prod.cProd := SQLImpressaoCupom.fieldbyname('PRODICOD').AsString;
        if FileExists('NFEBarras.txt') then
        begin
          if length(dm.sqlConsulta.fieldbyname('PRODA60CODBAR').AsString) > 9 then
            Prod.cEAN := dm.sqlConsulta.fieldbyname('PRODA60CODBAR').AsString;
          if Length(dm.sqlConsulta.fieldbyname('PRODA60CODBAR').AsString) < 10 then
            Prod.cEAN := 'SEM GTIN';

          if length(dm.sqlConsulta.fieldbyname('PRODA60CODBAR').AsString) > 7 then
            Prod.cEANTrib := dm.sqlConsulta.fieldbyname('PRODA60CODBAR').AsString;
          if Length(dm.sqlConsulta.fieldbyname('PRODA60CODBAR').AsString) < 8 then
            Prod.cEANTrib := 'SEM GTIN';
        end;
        if (Length(dm.sqlConsulta.fieldbyname('PRODA60CODBAR').AsString) < 10) or (prod.cEAN = '') then
        begin
          Prod.cEAN := 'SEM GTIN';
          Prod.cEANTrib := 'SEM GTIN';
        end;

        Prod.xProd := dm.sqlConsulta.fieldbyname('PRODA30ADESCRREDUZ').AsString;
               // Prod.xProd    := 'NOTA FISCAL EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';

        Prod.NCM := SQLLocate('NCM', 'NCMICOD', 'NCMA30CODIGO', SQLLocate('PRODUTO', 'PRODICOD', 'NCMICOD', SQLImpressaoCupom.fieldbyname('PRODICOD').AsString));

        if SQLLocate('NCM', 'NCMICOD', 'ALIQ_ICMS', SQLLocate('PRODUTO', 'PRODICOD', 'NCMICOD', SQLImpressaoCupom.fieldbyname('PRODICOD').AsString)) <> '' then
          vPercSTEfe := StrToFloat(SQLLocate('NCM', 'NCMICOD', 'ALIQ_ICMS', SQLLocate('PRODUTO', 'PRODICOD', 'NCMICOD', SQLImpressaoCupom.fieldbyname('PRODICOD').AsString)))
        else
        if SQLLocate('ICMSUF', 'ICMUA2UF', 'ICMUN2ALIQUOTA', QuotedStr(Emit.EnderEmit.UF)) <> '' then
          vPercSTEfe := StrToFloat(SQLLocate('ICMSUF', 'ICMUA2UF', 'ICMUN2ALIQUOTA', QuotedStr(Emit.EnderEmit.UF)));

        Prod.EXTIPI := '';
        if (dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '60') or (dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '500') then
          Prod.CFOP := '5405'
        else
          Prod.CFOP := '5102';

        Prod.uCom := SQLLocate('UNIDADE', 'UNIDICOD', 'UNIDA5DESCR', SQLLocate('PRODUTO', 'PRODICOD', 'UNIDICOD', SQLImpressaoCupom.fieldbyname('PRODICOD').AsString));
        Prod.qCom := SQLImpressaoCupom.fieldbyname('CPITN3QTD').AsFloat;
        Prod.vUnCom := SQLImpressaoCupom.fieldbyname('CPITN3VLRUNIT').AsFloat;
        Prod.vProd := SQLImpressaoCupom.fieldbyname('CPITN3VLRUNIT').AsCurrency * SQLImpressaoCupom.fieldbyname('CPITN3QTD').AsCurrency;
        vaux := SQLImpressaoCupom.fieldbyname('CPITN3VLRUNIT').AsCurrency * SQLImpressaoCupom.fieldbyname('CPITN3QTD').AsCurrency;
        vTotaItem := FloatToStr(SQLImpressaoCupom.fieldbyname('CPITN3VLRUNIT').AsCurrency * SQLImpressaoCupom.fieldbyname('CPITN3QTD').AsCurrency);
        vTotaItem := FloatToStr(RoundTo(StrToFloat(vTotaItem), -2));
//        vaux := RoundTo(Prod.vProd, -2);
        vaux := StrToFloat(vTotaItem);
        Prod.vProd := vaux;

        Prod.uTrib := SQLLocate('UNIDADE', 'UNIDICOD', 'UNIDA5DESCR', SQLLocate('PRODUTO', 'PRODICOD', 'UNIDICOD', SQLImpressaoCupom.fieldbyname('PRODICOD').AsString));
        Prod.qTrib := SQLImpressaoCupom.fieldbyname('CPITN3QTD').AsFloat;
        Prod.vUnTrib := SQLImpressaoCupom.fieldbyname('CPITN3VLRUNIT').AsFloat;

        Prod.vOutro := 0;
        Prod.vFrete := 0;
        Prod.vSeg := 0;
        Prod.vDesc := 0;

        if SQLImpressaoCupom.fieldbyname('CPITN2DESC').AsFloat > 0 then
          Prod.vDesc := SQLImpressaoCupom.fieldbyname('CPITN2DESC').AsFloat;

//        if (PercDesc > 0) then
//          Prod.vDesc := ((Prod.vProd * PercDesc) / 100) + SQLImpressaoCupom.fieldbyname('CPITN2DESC').AsFloat;

        Prod.vDesc := RoundTo(Prod.vDesc, -2);

               {CEST CODIGO}
        if (dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '60') or (dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '500') then
          Prod.CEST := dm.sqlConsulta.fieldbyname('TABCEST').AsString;

               // infAdProd      := 'Informa��o Adicional do Produto';

        with Imposto do
        begin
                   // lei da transparencia nos impostos

          if dm.sqlConsulta.fieldbyname('PRODIORIGEM').AsString = '0' then
            ICMS.orig := oeNacional else
            if dm.sqlConsulta.fieldbyname('PRODIORIGEM').AsString = '1' then
              ICMS.orig := oeEstrangeiraImportacaoDireta else
              if dm.sqlConsulta.fieldbyname('PRODIORIGEM').AsString = '2' then
                ICMS.orig := oeEstrangeiraAdquiridaBrasil;

          case iCRT of
            1: begin // Linhas para o simples nacional
                if dm.sqlConsulta.fieldbyname('PRODISITTRIB').AsString = '101' then ICMS.CSOSN := csosn101;
                if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '102' then ICMS.CSOSN := csosn102;
                if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '103' then ICMS.CSOSN := csosn103;
                if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '300' then ICMS.CSOSN := csosn300;
                if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '400' then ICMS.CSOSN := csosn400;
                if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '201' then ICMS.CSOSN := csosn201;
                if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '202' then ICMS.CSOSN := csosn202;
                if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '500' then ICMS.CSOSN := csosn500;
                if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '900' then ICMS.CSOSN := csosn900;

                case ICMS.CSOSN of
                  csosn101: begin
                      ICMS.pCredSN := 0.0; // Colocar o percentual do Cr�dito
                      ICMS.vCredICMSSN := 0.0; // Colocar o valor do Cr�dito
                    end;
                  csosn102: begin
                    end;
                  csosn103: begin
                    end;
                  csosn300: begin
                    end;
                  csosn400: begin
                    end;
                  csosn201: begin
                      ICMS.modBCST := dbisMargemValorAgregado;
                      ICMS.pMVAST := 0; // Adilson, verificar melhor
                      ICMS.pRedBCST := 0;
                      ICMS.vBCST := 0; // Adilson, verificar melhor
                      ICMS.pICMSST := 0;
                      ICMS.vICMSST := 0; // Adilson, verificar melhor
                      ICMS.pCredSN := 0; // Colocar o percentual do Cr�dito
                      ICMS.vCredICMSSN := 0; // Colocar o valor do Cr�dito
                    end;
                  csosn202: begin
                      ICMS.modBCST := dbisMargemValorAgregado;
                      ICMS.pMVAST := 0; // Adilson, verificar melhor
                      ICMS.pRedBCST := 0;
                      ICMS.vBCST := 0; // Adilson, verificar melhor
                      ICMS.pICMSST := 0; // Adilson, verificar melhor
                      ICMS.vICMSST := 0; // Adilson, verificar melhor
                    end;
                  csosn500: begin
                      if dm.sqlConsulta.fieldbyname('VALOR_ICM_ST_RET').AsFloat > 0 then
                      begin
                        ICMS.vBCSTRet := dm.sqlConsulta.fieldbyname('BASE_ICM_ST_RET').AsFloat * Prod.qCom;
                        ICMS.vICMSSTRet := dm.sqlConsulta.fieldbyname('VALOR_ICM_ST_RET').AsFloat * Prod.qCom;
                      end;
                      if vPercSTEfe > 0 then
                      begin
                        ICMS.vICMSEfet := (Prod.qCom * (Prod.vProd - Prod.vDesc)) * vPercSTEfe / 100;
                        ICMS.pICMSEfet := vPercSTEfe;
                        ICMS.vBCEfet := (Prod.qCom * (Prod.vProd - Prod.vDesc));
                      end;
//                      ICMS.vBCSTRet := 0; // Adilson, verificar melhor
//                      ICMS.vICMSSTRet := 0; // Adilson, verificar melhor
                    end;
                end; // fim do case icms.csosn
              end;

            2: begin
                          //        (...)
              end;

            3: begin
                          // Cst ICMS
                if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '0' then ICMS.CST := cst00;
                if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '10' then ICMS.CST := cst10;
                if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '20' then ICMS.CST := cst20;
                if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '30' then ICMS.CST := cst30;
                if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '40' then ICMS.CST := cst40;
                if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '41' then ICMS.CST := cst41;
                if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '50' then ICMS.CST := cst50;
                if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '51' then ICMS.CST := cst51;
                if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '60' then ICMS.CST := cst60;
                if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '70' then ICMS.CST := cst70;
                if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '80' then ICMS.CST := cst80;
                if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '81' then ICMS.CST := cst81;
                if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '90' then ICMS.CST := cst90;

                if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '60' then
                  begin
                    ICMS.CST := cst60;
                    if dm.sqlConsulta.fieldbyname('VALOR_ICM_ST_RET').AsFloat > 0 then
                    begin
                      ICMS.vBCSTRet := dm.sqlConsulta.fieldbyname('BASE_ICM_ST_RET').AsFloat * Prod.qCom;
                      ICMS.vICMSSTRet := dm.sqlConsulta.fieldbyname('VALOR_ICM_ST_RET').AsFloat * Prod.qCom;
                    end;
                    if vPercSTEfe > 0 then
                    begin
                      ICMS.vICMSEfet := (Prod.qCom * (Prod.vProd - Prod.vDesc)) * vPercSTEfe / 100;
                      ICMS.pICMSEfet := vPercSTEfe;
                      ICMS.vBCEfet := (Prod.qCom * (Prod.vProd - Prod.vDesc));
                    end;
                  end;
                          // Base Calculo
                if dm.sqlConsulta.fieldbyname('PRODA1MODBC').AsString = '0' then
                  ICMS.modBC := dbiMargemValorAgregado else
                  if dm.sqlConsulta.fieldbyname('PRODA1MODBC').AsString = '1' then
                    ICMS.modBC := dbiPauta else
                    if dm.sqlConsulta.fieldbyname('PRODA1MODBC').AsString = '2' then
                      ICMS.modBC := dbiPrecoTabelado else
                      if dm.sqlConsulta.fieldbyname('PRODA1MODBC').AsString = '3' then
                        ICMS.modBC := dbiValorOperacao;

                ICMS.vBC := SQLImpressaoCupom.fieldbyname('CPITN2BASEICMS').AsFloat;
                ICMS.pICMS := SQLImpressaoCupom.fieldbyname('COITN2ICMSALIQ').AsFloat;
                ICMS.vICMS := SQLImpressaoCupom.fieldbyname('CPITN2VLRICMS').AsFloat;
                if ICMS.CST = cst20 then
                  ICMS.pRedBC := SQLImpressaoCupom.fieldbyname('PERC_REDUCAO_BASE_CALCULO').AsFloat;

                ICMS.vBCST := 0;
                ICMS.pICMSST := 0;
                ICMS.vICMSST := 0;

                //Pis e cofins
                if (dm.sqlConsulta.fieldbyname('PRODA2CSTCOFINS').AsString = '01') or (dm.sqlConsulta.fieldbyname('PRODA2CSTCOFINS').AsString = '02') or
                   (dm.sqlConsulta.fieldbyname('PRODA2CSTCOFINS').AsString = '03') then
                begin
                  ValorBaseCofins := SQLImpressaoCupom.fieldbyname('TOTAL_ITEM').AsFloat - SQLImpressaoCupom.fieldbyname('CPITN2DESC').AsFloat;
                  AliquotaCofins := dm.sqlConsulta.fieldbyname('PRODN2ALIQCOFINS').AsFloat;
                  ValorCofins := RoundTo(ValorBaseCofins * AliquotaCofins / 100, -2);
                end
                else
                begin
                  ValorCofins := 0;
                  AliquotaCofins := 0;
                  ValorBaseCofins := 0;
                end;

                if dm.sqlConsulta.fieldbyname('PRODA2CSTCOFINS').AsString = '01' then COFINS.CST := cof01;
                if dm.sqlConsulta.fieldbyname('PRODA2CSTCOFINS').AsString = '02' then COFINS.CST := cof02;
                if dm.sqlConsulta.fieldbyname('PRODA2CSTCOFINS').AsString = '03' then COFINS.CST := cof03;
                if dm.sqlConsulta.fieldbyname('PRODA2CSTCOFINS').AsString = '04' then COFINS.CST := cof04;
                if dm.sqlConsulta.fieldbyname('PRODA2CSTCOFINS').AsString = '05' then COFINS.CST := cof05;
                if dm.sqlConsulta.fieldbyname('PRODA2CSTCOFINS').AsString = '06' then COFINS.CST := cof06;
                if dm.sqlConsulta.fieldbyname('PRODA2CSTCOFINS').AsString = '07' then COFINS.CST := cof07;
                if dm.sqlConsulta.fieldbyname('PRODA2CSTCOFINS').AsString = '08' then COFINS.CST := cof08;
                if dm.sqlConsulta.fieldbyname('PRODA2CSTCOFINS').AsString = '09' then COFINS.CST := cof09;
                if dm.sqlConsulta.fieldbyname('PRODA2CSTCOFINS').AsString = '49' then COFINS.CST := cof49;

                if AliquotaCofins > 0 then
                begin
                  COFINS.vBC := ValorBaseCofins;
                  COFINS.pCOFINS := AliquotaCofins;
                  COFINS.vCOFINS := RoundTo(ValorCofins,-2);
                end;

                { Alimenta Pis
                 01 - Opera��o Tribut�vel com Aliquota B�sica (base de c�lculo = valor da opera��o al�quota normal (cumulativo/n�o cumulativo));
                 02 - Opera��o Tribut�vel com Al�quota Diferenciada (base de c�lculo = valor da opera��o (al�quota diferenciada));
                 03 - Opera��o Tribut�vel com Al�quota por Unidade de Medida de Produto (base de c�lculo = quantidade vendida x al�quota por unidade de produto);
                 04 - Opera��o Tribut�vel(tributa��o monof�sica (al�quota zero));
                 05 - Opera��o Tribut�vel por Substitui��o Tribut�ria;
                 06 - Opera��o Tribut�vel (al�quota zero);
                 07 - Opera��o Isenta da Contribui��o;
                 08 - Opera��o Sem Incid�ncia da Contribui��o;
                 09 - Opera��o com Suspens�o da Contribui��o;
                 49 - Outras Opera��es de Sa�da; }

                if (dm.sqlConsulta.fieldbyname('PRODA2CSTPIS').AsString = '01') or (dm.sqlConsulta.fieldbyname('PRODA2CSTPIS').AsString = '02') or
                   (dm.sqlConsulta.fieldbyname('PRODA2CSTPIS').AsString = '03')then
                begin
                  ValorBasePis := SQLImpressaoCupom.fieldbyname('TOTAL_ITEM').AsFloat - SQLImpressaoCupom.fieldbyname('CPITN2DESC').AsFloat;
                  AliquotaPis := dm.sqlConsulta.fieldbyname('PRODN2ALIQPIS').AsFloat;
                  ValorPis := RoundTo(ValorBasePis * AliquotaPis / 100, -2);
                end
                else
                begin
                  ValorPis := 0;
                  AliquotaPis := 0;
                  ValorBasePis := 0;
                end;

                if dm.sqlConsulta.fieldbyname('PRODA2CSTPIS').AsString = '01' then PIS.CST := pis01;
                if dm.sqlConsulta.fieldbyname('PRODA2CSTPIS').AsString = '02' then PIS.CST := pis02;
                if dm.sqlConsulta.fieldbyname('PRODA2CSTPIS').AsString = '03' then PIS.CST := pis03;
                if dm.sqlConsulta.fieldbyname('PRODA2CSTPIS').AsString = '04' then PIS.CST := pis04;
                if dm.sqlConsulta.fieldbyname('PRODA2CSTPIS').AsString = '05' then PIS.CST := pis05;
                if dm.sqlConsulta.fieldbyname('PRODA2CSTPIS').AsString = '06' then PIS.CST := pis06;
                if dm.sqlConsulta.fieldbyname('PRODA2CSTPIS').AsString = '07' then PIS.CST := pis07;
                if dm.sqlConsulta.fieldbyname('PRODA2CSTPIS').AsString = '08' then PIS.CST := pis08;
                if dm.sqlConsulta.fieldbyname('PRODA2CSTPIS').AsString = '09' then PIS.CST := pis09;
                if dm.sqlConsulta.fieldbyname('PRODA2CSTPIS').AsString = '49' then PIS.CST := pis49;

                if AliquotaPis > 0 then
                begin
                  PIS.vBC := ValorBasePis;
                  PIS.pPIS := AliquotaPis;
                  PIS.vPIS := RoundTo(ValorPis,-2);
                end;

                if Associado = 'S' then
                begin
                  COFINS.CST := cof07;
                  COFINS.vBC := 0;
                  COFINS.pCOFINS := 0;
                  COFINS.vCOFINS := 0;

                  PIS.CST := pis07;
                  PIS.vBC := 0;
                  PIS.pPIS := 0;
                  PIS.vPIS := 0;
                end;

                Total.ICMSTot.vBC := Total.ICMSTot.vBC + ICMS.vBC;
                Total.ICMSTot.vICMS := Total.ICMSTot.vICMS + ICMS.vICMS;
                Total.ICMSTot.vCOFINS := Total.ICMSTot.vCOFINS + cofins.vCOFINS;
                Total.ICMSTot.vPIS := Total.ICMSTot.vPIS + pis.vPIS;
                ValorBaseCofins := cofins.vCOFINS;
              end;
          end;

          vTotTrib := RetornaAliquotaMediaProduto(dm.sqlConsulta.fieldbyname('NCMICOD').AsInteger, dm.sqlConsulta.fieldbyname('PRODIORIGEM').AsInteger);
          CalcularImpostos(dm.sqlConsulta.fieldbyname('NCMICOD').AsInteger, dm.sqlConsulta.fieldbyname('PRODIORIGEM').AsInteger, Prod.vProd - Prod.vDesc);

          if vTotTrib > 0 then
            vTotTrib := (Prod.vProd * vTotTrib) / 100;

          vTotTrib := RoundTo(vTotTrib, -2);

          Total_vTotTrib := Total_vTotTrib + vTotTrib;

        end;

        vaux := RoundTo(Total.ICMSTot.vProd, -2);
        vaux := RoundTo(Prod.vProd, -2);
        vaux := Total.ICMSTot.vProd + vaux;
        Total.ICMSTot.vProd := vaux;
        vaux := Prod.vDesc;
        TotalDesconto := TotalDesconto + vaux;
        if (vCont = vUltimo) and (TotalDesconto <> VlrDescNoTotal) and (VlrDescNoTotal > 0) then
        begin
          Prod.vDesc := (Prod.vDesc - (TotalDesconto - VlrDescNoTotal));
        end;
      end;
      SQLImpressaoCupom.next;
    end;
//    if (VlrDescNoTotal > 0) and (TotalDesconto = 0) then
    if (VlrDescNoTotal > 0) and (VlrDescNoTotal <> TotalDesconto) then
      TotalDesconto := VlrDescNoTotal;

    Total.ICMSTot.vDesc := TotalDesconto;
      {Totais da NFCe}
    Total.ICMSTot.vTotTrib := Total_vTotTrib;

    SQLImpressaoCupom.Close;
    SQLImpressaoCupom.RequestLive := False;
    SQLImpressaoCupom.SQL.Clear;
    SQLImpressaoCupom.SQL.Add('Select * From CUPOM Where CUPOA13ID = ''' + idCupom + '''');
    SQLImpressaoCupom.Open;

    Total.ICMSTot.vBCST := 0;
    Total.ICMSTot.vST := 0;
    Total.ICMSTot.vFrete := 0;
    Total.ICMSTot.vSeg := 0;
    Total.ICMSTot.vII := 0;
    Total.ICMSTot.vIPI := 0;
//    Total.ICMSTot.vPIS := 0;
//    Total.ICMSTot.vCOFINS := 0;
    Total.ICMSTot.vOutro := 0;
 //    Total.ICMSTot.vOutro  := SQLImpressaoCupom.fieldbyname('CUPON2ACRESC').AsFloat; // adilson removi pq os cliente nao querem o acrescimo no cupom
    Total.ICMSTot.vNF := Total.ICMSTot.vProd - Total.ICMSTot.vDesc;

    Total.ISSQNtot.vServ := 0;
    Total.ISSQNTot.vBC := 0;
    Total.ISSQNTot.vISS := 0;
    Total.ISSQNTot.vPIS := 0;
    Total.ISSQNTot.vCOFINS := 0;

    Transp.modFrete := mfSemFrete; // NFC-e n�o pode ter FRETE

    if (SQLParcelasPrazoVendaTemp.Active) and (SQLParcelasPrazoVendaTemp.RecordCount > 1) then
    begin
      SQLParcelasPrazoVendaTemp.First;
      while not SQLParcelasPrazoVendaTemp.eof do
      begin
        with pag.Add do
        begin
          Ide.indPag := ipPrazo;

          if SQLParcelasPrazoVendaTempTIPOPADR.AsString = 'CRD' then
            tPag := fpCartaoCredito
          else if SQLParcelasPrazoVendaTempTIPOPADR.AsString = 'CHQV' then
            tPag := fpCheque
          else
            tPag := fpCartaoCredito;

          vPag := SQLParcelasPrazoVendaTempVALORVENCTO.AsFloat;
          SQLParcelasPrazoVendaTemp.Next;
        end;
      end;
    end
    else
      with ExecSql(' select a.CTRCN2VLR, a.ctrca5tipopadrao, b.numecvistaprazo from CONTASRECEBER A LEFT JOIN Numerario B ON B.numeicod = A.numeicod '
        + ' where CUPOA13ID = ' + QuotedStr(idCupom)
        + ' union all select cpnmn2vlr, ''DIN'', ''V'' from cupomnumerario where cupoa13id = ' + QuotedStr(idCupom)) do
      begin
        if IsEmpty then
        begin
          with pag.Add do
          begin
            if (SQLImpressaoCupom.fieldbyname('CUPOCTIPOPADRAO').AsString = 'VISTA') or
              (SQLImpressaoCupom.fieldbyname('CUPOCTIPOPADRAO').AsString = 'DIN') then
            begin
              Ide.indPag := ipVista;
              tPag := fpDinheiro;
            end;
            if SQLImpressaoCupom.fieldbyname('CUPOCTIPOPADRAO').AsString = 'CRT' then
            begin
              Ide.indPag := ipPrazo;
              tPag := fpCartaoCredito;
            end;
            if (SQLImpressaoCupom.fieldbyname('CUPOCTIPOPADRAO').AsString = 'CRTF') or
              (SQLImpressaoCupom.fieldbyname('CUPOCTIPOPADRAO').AsString = 'CRD') then
            begin
              Ide.indPag := ipPrazo;
              tPag := fpCreditoLoja;
            end;
            if (SQLImpressaoCupom.fieldbyname('CUPOCTIPOPADRAO').AsString = 'CHQV') or
              (SQLImpressaoCupom.fieldbyname('CUPOCTIPOPADRAO').AsString = 'CHQP') then
            begin
              Ide.indPag := ipPrazo;
              tPag := fpCheque;
            end;
            vPag := Total.ICMSTot.vNF;
          end;
        end
        else begin
          while not eof do
          begin
            with pag.Add do
            begin
              Ide.indPag := ipPrazo;
              if fieldbyname('ctrca5tipopadrao').AsString = 'DIN' then
                tPag := fpDinheiro
              else
                if fieldbyname('ctrca5tipopadrao').AsString = 'CRT' then
                begin
                  if fieldbyname('numecvistaprazo').AsString = 'P' then
                    tPag := fpCartaoCredito
                  else
                    tPag := fpCartaoDebito
                end
                else
                  if fieldbyname('ctrca5tipopadrao').AsString = 'CRD' then
                    tPag := fpOutro
                  else if fieldbyname('ctrca5tipopadrao').AsString = 'CHQV' then
                    tPag := fpCheque
                  else
                    tPag := fpOutro;
                 //Tirei pq quando era pago com dois tipos de pagamento a tag vpag ficava com o mesmo valor
                  vCont := RecordCount;
                  VarValorRecebido := SQLImpressaoCupom.fieldbyname('CUPON2TOTITENS').AsFloat + SQLImpressaoCupom.fieldbyname('TROCO').AsFloat;
//                  if (VarValorRecebido > 0) and (vCont = 1) then
                  if (VarValorRecebido <> fieldbyname('CTRCN2VLR').AsFloat) and (vCont = 1) then
                    vPag := SQLImpressaoCupom.fieldbyname('CUPON2TOTITENS').AsFloat + SQLImpressaoCupom.fieldbyname('TROCO').AsFloat - SQLImpressaoCupom.fieldbyname('CUPON2DESC').AsFloat
                  else
                  vPag := fieldbyname('CTRCN2VLR').AsFloat;
                if VlrTroco > 0 then
                  pag.vTroco := VlrTroco;
            end;
            next;
          end;
        end;
      end;

    //PAGAMENTOS apenas para NFC-e
    SQLImpressaoCupomFinanceiro.Close;

    InfAdic.infCpl := '';
    InfAdic.infAdFisco := '';
      {Dados do Cliente}
    if SQLImpressaoCupom.fieldbyname('CLIENTENOME').AsString <> '' then
      InfAdic.infCpl := InfAdic.infCpl + SQLImpressaoCupom.fieldbyname('CLIENTENOME').AsString + ', ';
    if SQLImpressaoCupom.fieldbyname('CLIENTECNPJ').AsString <> '' then
      InfAdic.infCpl := InfAdic.infCpl + SQLImpressaoCupom.fieldbyname('CLIENTECNPJ').AsString + ', ';
    if SQLImpressaoCupom.fieldbyname('CLIENTEFONE').AsString <> '' then
      InfAdic.infCpl := InfAdic.infCpl + SQLImpressaoCupom.fieldbyname('CLIENTEFONE').AsString + ', ';
    if SQLImpressaoCupom.fieldbyname('CLIENTECIDA').AsString <> '' then
      InfAdic.infCpl := InfAdic.infCpl + SQLImpressaoCupom.fieldbyname('CLIENTECIDA').AsString + ', ';
    if SQLImpressaoCupom.fieldbyname('CLIENTEENDE').AsString <> '' then
      InfAdic.infCpl := InfAdic.infCpl + SQLImpressaoCupom.fieldbyname('CLIENTEENDE').AsString + ', ';
    if SQLImpressaoCupom.fieldbyname('CLIENTEBAIRRO').AsString <> '' then
      InfAdic.infCpl := InfAdic.infCpl + SQLImpressaoCupom.fieldbyname('CLIENTEBAIRRO').AsString;
    if SQLImpressaoCupom.fieldbyname('VENDICOD').AsString <> '' then
      InfAdic.infCpl := InfAdic.infCpl + #13 + 'Vendedor: ' + SQLLocate('VENDEDOR', 'VENDICOD', 'VENDA60NOME', SQLImpressaoCupom.fieldbyname('VENDICOD').AsString);

    if Obs_Venda <> '' then
      InfAdic.infCpl := InfAdic.infCpl + #13 + Obs_Venda;

      // Gerar XML
    SQLImpressaoCupom.Close;
    dm.ACBrNFe.NotasFiscais.GerarNFe;

    if DirectoryExists('c:\temp') then
      if dm.ACBrNFe.NotasFiscais.Count > 0 then
        dm.ACBrNFe.NotasFiscais[0].GravarXML('nfe.xml', 'c:\temp');

    if (FileExists('COMUNICACAO_OFFLINE.TXT')) then //or (Imprimir_Nfce) then
      dm.ACBrNFe.NotasFiscais.Imprimir;
  end;
end;

procedure TFormTelaItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if LblInstrucoes.Caption = 'LblInstrucoes' then
    Close;

  if (EstadoPDVChk <> AguardandoNovaVenda) and (LblInstrucoes.Caption <> 'LblInstrucoes') then
  begin
    InformaG('S� � poss�vel sair do ' + Application.Title + ' enquanto est� aguardando nova venda!');
    Action := caNone;
    SQLItensVendaTemp.Open;
    SQLItensDescTemp.Open;
    Exit;
  end;

  // DESABILITAR LEITOR
  TimerLeitor.Enabled := False;
  if LeitorCodigoBarras <> '' then
  begin
    try
      FecharPortaLEITOR(LeitorCodigoBarras, PortaLeitorCodigoBarras);
    except
      on E: Exception do
      begin
        LabelLeitor.Visible := False;
        Informa('Problemas ao desabilitar leitor de c�digo de Barras, ANOTE O ERRO:' + #13 + E.Message);
      end;
    end;
  end;

  // DESABILITAR TECLADO REDUZIDO
  if TecladoReduzidoModelo = 'TEC44DIS' then
  begin
    try
      FormFeed;
      CloseTec44;
    except end;
  end;
  if TecladoReduzidoModelo = 'TEC65' then
  begin
    try
      FormFeed;
      CloseTec65;
    except end;
  end;

  SQLItensVendaTemp.Close;
  SQLItensDescTemp.Close;

  Application.ProcessMessages;

  DM.zdb.Disconnect;
  DM.zdbServidor.Disconnect;
  DM.DB.Close;

  Action := cafree;

{  if (dm.SQLTerminalAtivoTERMCTIPO.AsString = 'C') and (dm.SQLTerminalAtivoTERMCSTATUSCAIXA.AsString = 'F') then
    if Pergunta('NAO','*** DESEJA DESLIGAR O COMPUTADOR? ***') then
      DesligarWindows ;
  if (dm.SQLTerminalAtivoTERMCTIPO.AsString = 'P') then
    if Pergunta('NAO','*** DESEJA DESLIGAR O COMPUTADOR? ***') then
      DesligarWindows ;}

  Application.Terminate;
end;

procedure TFormTelaItens.FormCreate(Sender: TObject);
var
  Info: TInfoRetorno;
  ValorTotalCartaoSTR, NomeRede, NroTransacao, Finalizacao: string;
  ValorTotalCartaoFloat: Double;
  IniFile: TiniFile;

  begin
  {Ajustar paineis na Tela}
  Width := Screen.Width;
  Height := Screen.Height;
  ScrollBoxEsquerda.Width := (Screen.Width - ScrollBoxPrincipal.Width) div 2;

  {Abastecer imagens para slideshow}
  MostraPublicidade := False;
  if FileExists('Publicidade\1.jpg') then
  begin
    slideshow.Items.Add.Location := 'Publicidade\1.jpg';
    MostraPublicidade := True;
  end;
  if FileExists('Publicidade\2.jpg') then
  begin
    slideshow.Items.Add.Location := 'Publicidade\2.jpg';
    MostraPublicidade := True;
  end;
  if FileExists('Publicidade\3.jpg') then
  begin
    slideshow.Items.Add.Location := 'Publicidade\3.jpg';
    MostraPublicidade := True;
  end;
  if FileExists('Publicidade\4.jpg') then
  begin
    slideshow.Items.Add.Location := 'Publicidade\4.jpg';
    MostraPublicidade := True;
  end;
  if FileExists('Publicidade\5.jpg') then
  begin
    slideshow.Items.Add.Location := 'Publicidade\5.jpg';
    MostraPublicidade := True;
  end;
  if FileExists('Publicidade\6.jpg') then
  begin
    slideshow.Items.Add.Location := 'Publicidade\6.jpg';
    MostraPublicidade := True;
  end;
  if FileExists('Publicidade\7.jpg') then
  begin
    slideshow.Items.Add.Location := 'Publicidade\7.jpg';
    MostraPublicidade := True;
  end;
  if FileExists('Publicidade\8.jpg') then
  begin
    slideshow.Items.Add.Location := 'Publicidade\8.jpg';
    MostraPublicidade := True;
  end;
  if FileExists('Publicidade\9.jpg') then
  begin
    slideshow.Items.Add.Location := 'Publicidade\9.jpg';
    MostraPublicidade := True;
  end;
  if FileExists('Publicidade\10.jpg') then
  begin
    slideshow.Items.Add.Location := 'Publicidade\10.jpg';
    MostraPublicidade := True;
  end;

  if MostraPublicidade then
  begin
    slideshow.Visible := True;
    slideshow.Enabled := True;
    slideshow.Animation := True;
    AdvSmoothPanel5.Visible := True;
    PagePrincipal.ActivePage := TabVenda;
  end
  else
  begin
    slideshow.Enabled := False;
    slideshow.Animation := false;
    PagePrincipal.ActivePage := TabVenda;
  end;

  IniFile := TIniFile.Create(dm.PathAplicacao + 'Parceiro.INI');
  ParceiroNome := IniFile.ReadString('IB_SOFTWARE', 'LinhaA', 'Conceitos Sistemas 51 8411 0414');
  ParceiroPath := IniFile.ReadString('IB_SOFTWARE', 'LinhaD', '');
  SendDirectory := IniFile.ReadString('IB_SOFTWARE', 'Tef_Dial_SendDirectory', '');
  ReceiveDirectory := IniFile.ReadString('IB_SOFTWARE', 'Tef_Dial_ReceiveDirectory', '');
  F2_AUTOMATICO := IniFile.ReadString('IB_SOFTWARE', 'F2_AUTOMATICO', 'N');
  FiltraTerminal := IniFile.ReadString('IB_SOFTWARE', 'FiltraTerminal', 'S');
  DetalhesVenda := IniFile.ReadString('IB_SOFTWARE', 'DetalhesVenda', 'N');
  ProdutoComplemento := IniFile.ReadString('IB_SOFTWARE', 'ProdutoComplemento', 'N');
  SolicitaDataEntrega := IniFile.ReadString('IB_SOFTWARE', 'SolicitaDataEntrega', 'N');
  Enter_Vazio := IniFile.ReadString('IB_SOFTWARE', 'ENTER', 'S');
  GravarCupomCancelado := IniFile.ReadString('IB_SOFTWARE', 'GravarCupomCancelado', 'S');
  GravarDisplaySequencial := IniFile.ReadString('IB_SOFTWARE', 'GravarDisplaySequencial', 'N');
  NotaGaucha := IniFile.ReadString('IB_SOFTWARE', 'NotaGaucha', 'N');
  NroViasImpVenda := IniFile.ReadString('IB_SOFTWARE', 'NroViasImpVenda', '');
  Servidor_HostName := IniFile.ReadString('SERVIDOR', 'HostName', '');
  Servidor_Database := IniFile.ReadString('SERVIDOR', 'Database', '');
  Obs_Venda := IniFile.ReadString('IB_SOFTWARE', 'Obs_Venda', '');
  CrediarioOnLine := IniFile.ReadString('IB_SOFTWARE', 'Crediario_Online', '');
  IniFile.Free;

  TabelaMaisTerminal := 'ItensVendaTemp_' + FormatFloat('###000', TerminalAtual);
  SQLItensVendaTemp.TableName := TabelaMaisTerminal;

  TabelaMaisTerminalDesc := 'ItensDescTemp_' + FormatFloat('###000', TerminalAtual);
  SQLItensDescTemp.TableName := TabelaMaisTerminalDesc;

  // VERIFICA TECLADO REDUZIDO PRESENTE
  if TecladoReduzidoModelo = 'TEC44DIS' then
  begin
    try
      OpenTec44;
    except Application.ProcessMessages; end;
  end;
  if TecladoReduzidoModelo = 'TEC65' then
  begin
    try
      OpenTec65;
    except Application.ProcessMessages; end;
  end;

  if not FileExists('Temp\' + TabelaMaisTerminal + '.db') then
    SQLItensVendaTemp.CreateTable;

  try
    SQLItensVendaTemp.Close;
    SQLItensVendaTemp.Open;
    Application.ProcessMessages;
  except
    SQLItensVendaTemp.Close;
    SQLItensVendaTemp.DeleteTable;
    ShowMessage('Erro ao abrir tabela Temporaria de Itens, Tente Novamente!');
    Application.Terminate;
  end;

  if not FileExists('Temp\' + TabelaMaisTerminalDesc + '.db') then
    SQLItensDescTemp.CreateTable;
  try
    SQLItensDescTemp.Close;
    SQLItensDescTemp.Open;
    Application.ProcessMessages;
  except
    SQLItensDescTemp.Close;
    SQLItensDescTemp.DeleteTable;
    ShowMessage('Erro ao abrir tabela Temporaria de desconto dos Itens, Tente Novamente!');
    Application.Terminate;
  end;


  if FileExists('Bmp\Logo PDV.Bmp') then
    Foto.Picture.LoadFromFile('Bmp\Logo PDV.Bmp');
  if FileExists('Bmp\Logo PDV.Jpg') then
    Foto.Picture.LoadFromFile('Bmp\Logo PDV.Jpg');
  if FileExists('Bmp\Empresa.Bmp') then
    Foto_Empresa.Picture.LoadFromFile('Bmp\Empresa.Bmp');
  if FileExists('Bmp\Empresa.Jpg') then
    Foto_Empresa.Picture.LoadFromFile('Bmp\Empresa.Jpg');

  FormTelaItens.Caption := '';
  CodProxCntRecTemp := 0;
  QuantProx := 0;
  AlterarUsuario := false;
  Retaguarda := false;
  SolicitarPreco := false;
  SolicitarPrecoQDeveriaSerVendido := false;
  //MouseShowCursor(False) ;

  EstadoPDVChk := AguardandoNovaVenda;
  PreparaEstadoBalcao(EstadoPDVChk);
  RxParceiro.caption := ParceiroNome;
  EmpresaAtualNome := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60NOMEFANT', EmpresaPadrao);
  RxTerminal.Caption := TerminalAtualNome;
  RxUsuario.Caption := UsuarioAtualNome;
  if dm.SQLTerminalAtivoVENDICOD.AsString <> '' then
    Rxvendedor.Caption := SQLLocate('VENDEDOR', 'VENDICOD', 'VENDA60NOME', dm.SQLTerminalAtivoVENDICOD.AsString);

  AdicionalProduto.Caption := '';

 { if dm.SQLTerminalAtivoTERMA60MENSAGEMPDV.Value <> '' then
    begin
      RunLB.RText := dm.SQLTerminalAtivoTERMA60MENSAGEMPDV.Value;
      RunLB.RLStart(1);
    end; }

  if (DM.SQLterminalativoTERMIQTDEPADRAO.Value > 0) then
    EditQtde.Text := DM.SQLterminalativoTERMIQTDEPADRAO.AsString
  else
    EditQtde.Value := 0;

  SQLItensVendaTempQUANTIDADE.DisplayFormat := '';
  case DM.SQLTerminalAtivoTERMINRODECQUANT.Value of
    2: SQLItensVendaTempQUANTIDADE.DisplayFormat := '##0.00##';
    3: SQLItensVendaTempQUANTIDADE.DisplayFormat := '##0.000';
  end;
  FormatStrQuant := SQLItensVendaTempQUANTIDADE.DisplayFormat;

  SQLItensVendaTempVLRUNITBRUT.DisplayFormat := '';
  case Dm.SQLConfigVendaCFVEINROCASASDEC.AsInteger of
    2: SQLItensVendaTempVLRUNITBRUT.DisplayFormat := '##0.00##';
    3: SQLItensVendaTempVLRUNITBRUT.DisplayFormat := '###0.000';
    4: SQLItensVendaTempVLRUNITBRUT.DisplayFormat := '###0.0000';
  end;
  FormatStrVlrVenda := SQLItensVendaTempVLRUNITBRUT.DisplayFormat;

  // Cartao Credito => VISANET, REDECARD, AMEX, BANRISUL
  {VERIFICA SE EXISTE ALGUMA PEND�NCIA NO GERENCIADOR DOS CART�ES DE CR�DITO}
  NomeRede := '';
  NroTransacao := '';
  Finalizacao := '';
  GPAtivo := False;
  if FileExists('Tef_Dial.txt') then
  begin
    if not DirectoryExists(AdjustPath(ReceiveDirectory) + 'Backup') then
      CreateDir(AdjustPath(ReceiveDirectory) + 'Backup');
    if Ativo then
    begin
      GPAtivo := True;
      if FileExists(AdjustPath(ReceiveDirectory) + 'IntPos.001') then
      begin
        AssignFile(TextRetornoCartoes, AdjustPath(ReceiveDirectory) + 'IntPos.001');
        Reset(TextRetornoCartoes);
        while not Eof(TextRetornoCartoes) do
        begin
          Application.ProcessMessages;
          Readln(TextRetornoCartoes, Return);
          case StrToInt(Copy(Return, 1, 3)) of
            3: ValorTotalCartaoSTR := Trim(Copy(Return, 10, Length(Return) - 9));
            10: NomeRede := Trim(Copy(Return, 10, Length(Return) - 9));
            12: NroTransacao := Trim(Copy(Return, 10, Length(Return) - 9));
            27: Finalizacao := Trim(Copy(Return, 10, Length(Return) - 9));
          end;
        end;
        CloseFile(TextRetornoCartoes);
      end;
      if (not FileExists(AdjustPath(ReceiveDirectory) + 'IntPos.001') and FileExists(AdjustPath(ReceiveDirectory) + 'Backup\IntPos.001')) then
      begin
        AssignFile(TextRetornoCartoes, AdjustPath(ReceiveDirectory) + 'Backup\IntPos.001');
        Reset(TextRetornoCartoes);
        while not Eof(TextRetornoCartoes) do
        begin
          Application.ProcessMessages;
          Readln(TextRetornoCartoes, Return);
          case StrToInt(Copy(Return, 1, 3)) of
            3: ValorTotalCartaoSTR := Trim(Copy(Return, 10, Length(Return) - 9));
            10: NomeRede := Trim(Copy(Return, 10, Length(Return) - 9));
            12: NroTransacao := Trim(Copy(Return, 10, Length(Return) - 9));
            27: Finalizacao := Trim(Copy(Return, 10, Length(Return) - 9));
          end;
        end;
        CloseFile(TextRetornoCartoes);
      end;
      if NomeRede <> '' then
      begin
        Confirma(NomeRede, NroTransacao, Finalizacao, False);
        Info.CMC7 := 'A transa��o de Transfer�ncia Eletr�nica de Fundos(TEF) foi cancelada!' + #13 + #13 +
          'Rede --> ' + NomeRede + #13 +
          'Documento(NSU) --> ' + NroTransacao + #13;
        try
          ValorTotalCartaoFloat := StrToFloat(ValorTotalCartaoSTR);
        except
          ValorTotalCartaoFloat := 0;
        end;
        if ValorTotalCartaoFloat > 0 then
          Info.CMC7 := Info.CMC7 + 'Valor --> ' + Formatfloat(FormatStrVlrVenda, ValorTotalCartaoFloat / 100);
        Application.MessageBox(PChar(Info.CMC7), 'Aten��o', MB_OK + MB_ICONINFORMATION + MB_SYSTEMMODAL + MB_SETFOREGROUND);
        if (ECFAtual <> '') and (copy(EcfAtual, 1, 4) <> 'NFCE') then
        begin
          AbrirPortaECF(ECFAtual, PortaECFAtual);
          try
            if not FechamentoRelatorioGerencial(ECFAtual, PortaECFAtual) then
              FecharCNFV(ECFAtual, PortaECFAtual);
          except
          end;
          FecharPortaECF(ECFAtual, PortaECFAtual);
        end;
      end;
    end;
  end;
  // Verifica TEF DISC => Banrisul
  if FileExists('Tef_Disc.txt') then
  begin
    SendDirectory := 'C:\Tef_Disc\Req';
    ReceiveDirectory := 'C:\Tef_Disc\Resp';
    if not DirectoryExists(ReceiveDirectory + '\Backup') then
      CreateDir(ReceiveDirectory + '\Backup');

    if Ativo then
    begin
      GPAtivo := True;
      if FileExists('C:\Tef_Disc\Resp\IntPos.001') then
      begin
        AssignFile(TextRetornoCartoes, 'C:\Tef_Disc\Resp\IntPos.001');
        Reset(TextRetornoCartoes);
        while not Eof(TextRetornoCartoes) do
        begin
          Application.ProcessMessages;
          Readln(TextRetornoCartoes, Return);
          case StrToInt(Copy(Return, 1, 3)) of
            3: ValorTotalCartaoSTR := Trim(Copy(Return, 10, Length(Return) - 9));
            10: NomeRede := Trim(Copy(Return, 10, Length(Return) - 9));
            12: NroTransacao := Trim(Copy(Return, 10, Length(Return) - 9));
            27: Finalizacao := Trim(Copy(Return, 10, Length(Return) - 9));
          end;
        end;
        CloseFile(TextRetornoCartoes);
      end;
      if (not FileExists('C:\Tef_Disc\Resp\IntPos.001') and FileExists('C:\Tef_Disc\Resp\Backup\IntPos.001')) then
      begin
        AssignFile(TextRetornoCartoes, 'C:\Tef_Disc\Resp\Backup\IntPos.001');
        Reset(TextRetornoCartoes);
        while not Eof(TextRetornoCartoes) do
        begin
          Application.ProcessMessages;
          Readln(TextRetornoCartoes, Return);
          case StrToInt(Copy(Return, 1, 3)) of
            3: ValorTotalCartaoSTR := Trim(Copy(Return, 10, Length(Return) - 9));
            10: NomeRede := Trim(Copy(Return, 10, Length(Return) - 9));
            12: NroTransacao := Trim(Copy(Return, 10, Length(Return) - 9));
            27: Finalizacao := Trim(Copy(Return, 10, Length(Return) - 9));
          end;
        end;
        CloseFile(TextRetornoCartoes);
      end;
      if NomeRede <> '' then
      begin
        Confirma(NomeRede, NroTransacao, Finalizacao, False);
        Info.CMC7 := 'A transa��o de Transfer�ncia Eletr�nica de Fundos(TEF) foi cancelada!' + #13 + #13 +
          'Rede --> ' + NomeRede + #13 +
          'Documento(NSU) --> ' + NroTransacao + #13;
        try
          ValorTotalCartaoFloat := StrToFloat(ValorTotalCartaoSTR);
        except
          ValorTotalCartaoFloat := 0;
        end;
        if ValorTotalCartaoFloat > 0 then
          Info.CMC7 := Info.CMC7 + 'Valor --> ' + Formatfloat(FormatStrVlrVenda, ValorTotalCartaoFloat / 100);
        Application.MessageBox(PChar(Info.CMC7), 'Aten��o', MB_OK + MB_ICONINFORMATION + MB_SYSTEMMODAL + MB_SETFOREGROUND);
        if (ECFAtual <> '') and (copy(EcfAtual, 1, 4) <> 'NFCE') then
        begin
          AbrirPortaECF(ECFAtual, PortaECFAtual);
          try
            if not FechamentoRelatorioGerencial(ECFAtual, PortaECFAtual) then
              FecharCNFV(ECFAtual, PortaECFAtual);
          except
          end;
          FecharPortaECF(ECFAtual, PortaECFAtual);
        end;
      end;
    end;
  end;

  // VERIFICA LEITOR DE COD DE BARRAS PRESENTE
  if LeitorCodigoBarras <> '' then
  begin
    try
      if AbrirPortaLEITOR(LeitorCodigoBarras, PortaLeitorCodigoBarras) then
      begin
        TimerLeitor.Enabled := True;
        LabelLeitor.Visible := True;
      end;
    except
      on E: Exception do
      begin
        Informa('Problemas ao habilitar leitor de c�digo de barras, ANOTE O ERRO:' + #13 + E.Message);
        LabelLeitor.Visible := False;
      end;
    end;
  end;

  // Pega Configs do arquivo P05.INI
  if FileExists('BalancaCheckoutToledo.txt') or FileExists('BalancaCheckoutToledoDireto.txt') then
  begin
    IniFile := TIniFile.Create(ExtractFilePath(ParamStr(0)) + cArquivoINI);
    try
      Toledo_Porta := IniFile.ReadInteger(cSessaoConf, cPorta, 0);
      Toledo_Baud := IniFile.ReadInteger(cSessaoConf, cBaudRate, 0);
      Toledo_Paridade := IniFile.ReadInteger(cSessaoConf, cParidade, 2);
      Toledo_DataBits := IniFile.ReadInteger(cSessaoConf, cDataBits, 0);
      Toledo_OpcoesDiponibilizar := IniFile.ReadInteger(cSessaoConf, cDiponibi, 0);
      Toledo_TipoLeitura := IniFile.ReadInteger(cSessaoConf, cTipoLeitura, 0);
      Toledo_Dir := IniFile.ReadString(cSessaoConf, cDirPESO, ExtractFilePath(ParamStr(0)));
    finally
      IniFile.Free;
    end;
  end;

  // Pega Configs do arquivo LerPesoUrano.INI
  if FileExists('BalancaCheckoutUranoDireto.txt') then
  begin
    IniFile := TIniFile.Create(dm.PathAplicacao + 'LePesoUrano.INI');
    try
      Urano_Porta := IniFile.ReadString('Configuracao', 'IPortaSerial', 'COM4');
      Urano_Modelo := IniFile.ReadInteger('Configuracao', 'IModeloBalanca', 0);
      Urano_Operacao := IniFile.ReadInteger('Configuracao', 'IModoOperacao', 0);
      addLog('Urano Porta: ' + Urano_Porta,ExtractFilePath(Application.ExeName) + 'LogPesaUrano.txt');
      addLog('Urano Modelo: ' + IntToStr(Urano_Modelo),ExtractFilePath(Application.ExeName) + 'LogPesaUrano.txt');
      addLog('Urano Opera��o: ' + IntToStr(Urano_Operacao),ExtractFilePath(Application.ExeName) + 'LogPesaUrano.txt');
    finally
      IniFile.Free;
    end;
  end;

{ if DetalhesVenda = 'S' then
    AdvDetalheVenda.Visible := True;}

  // Pega NFCe Configs Iniciais
  if (copy(EcfAtual, 1, 4) = 'NFCE') then
  begin
    Inicia_NFe;
    shpStatusECF.Brush.Color := clLime;
    lbStatusECF.Caption := 'NFCe Online';
    lbStatusECF.Update;
  end;
end;

procedure TFormTelaItens.EntradaDadosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  RetornoUser: TInfoRetornoUser;
  CodigoBalanca : Boolean;
begin
  // EntradaDados.Text := Alltrim(EntradaDados.Text);
  if Key = VK_Escape then
  begin
    if EstadoPDVChk = InformandoItens then
    begin
      if TerminalModo = 'C' then
        if not Pergunta('NAO', '* * * CONFIRMA O CANCELAMENTO DESTA VENDA ? * * *') then
          Exit;

      if TerminalModo = 'P' then
        if not Pergunta('NAO', '* * * CONFIRMA O CANCELAMENTO DESTA PR�-VENDA ? * * *') then
          Exit;

      LblBonusTroca.Visible := False;
      LblBonusTroca.Update;
      ValorBonusTroca.Value := 0;
      ValorBonusTroca.Visible := False;
      ValorBonusTroca.Update;
      rxVendedor.Visible := False;
      rxVendedor.Caption := '';
      rxVendedor.Update;

      ContinuarPreVenda := False;
      ReativarPreVenda := False;
      vImportarPreVenda := False;
      ImportandoPreVenda := False;

      if TerminalModo <> 'P' then
        if DM.SQLUsuario.Locate('USUAICOD', UsuarioCorrente, []) then
          if DM.SQLUsuario.FieldByName('USUACCANCVENDA').AsString <> 'S' then
          begin
            RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome, 'USUACCANCVENDA', RetornoUser);
            if RetornoCampoUsuario <> 'S' then
              Exit;
          end;

      CancelarVenda;
      EstadoPDVChk := AguardandoNovaVenda;
      PreparaEstadoBalcao(EstadoPDVChk);
      EntradaDados.Clear;

      if (ECFAtual <> '') and (copy(EcfAtual, 1, 4) <> 'NFCE') and (not FileExists('Confirma.txt')) then
      begin
        if not CancelarCupomFiscal(ECFAtual, PortaECFAtual) then
          InformaG('Problemas ao Cancelar Cupom Fiscal');
      end;
    end;
  end;

  if Key = VK_Return then
  begin
    {* * * * AGUARDANDO NOVA VENDA * * * *}
    if (EstadoPDVChk = AguardandoNovaVenda) and (F2_AUTOMATICO = 'S') then
      FormKeyDown(Sender, F2, [ssAlt]);

    {* * * * AGUARDANDO NOVA VENDA * * * *}
    if (EstadoPDVChk = AguardandoNovaVenda) then
    begin
      if ((Enter_Vazio = 'N') and (EntradaDados.Text = '')) then exit;

      if SQLProduto.Active then SQLProduto.Close;
      if not SQLItensVendaTemp.Active then exit;
      if (EntradaDados.Text = '') or
        ((EntradaDados.Text <> '') and
        (not EncontrouProduto(trim(EntradaDados.Text), SQLProduto))) then
      begin
        Application.CreateForm(TFormTelaConsultaRapidaItem, FormTelaConsultaRapidaItem);
        FormTelaConsultaRapidaItem.ShowModal;

        if CodigoProduto = '' then
          exit;
        EntradaDados.Text := CodigoProduto;
      end;

      if EntradaDados.Text <> '' then
      begin
        if SQLProduto.IsEmpty then EncontrouProduto(EntradaDados.Text, SQLProduto);
        if not SQLProduto.IsEmpty then
        begin
                // RETORNA SALDO DO PRODUTO
          if DetalhesVenda = 'S' then
          begin
            DM.SQLTemplate.Close;
            DM.SQLTemplate.SQL.Clear;
            DM.SQLTemplate.SQL.Add('select PRODUTO.PRODICOD,');
            DM.SQLTemplate.SQL.Add('(select PRODUTOSALDO.PSLDN3QTDE from PRODUTOSALDO');
            DM.SQLTemplate.SQL.Add('where PRODUTOSALDO.EMPRICOD = ' + EmpresaPadrao);
            DM.SQLTemplate.SQL.Add('and   PRODUTOSALDO.PRODICOD = PRODUTO.PRODICOD) as QUANT');
            DM.SQLTemplate.SQL.Add('from PRODUTO');
            DM.SQLTemplate.SQL.Add('where PRODUTO.PRODICOD = ' + SQLProdutoPRODICOD.AsString);
            DM.SQLTemplate.Open;
            if DM.SQLTemplate.FieldByName('QUANT').asstring <> '' then
            begin
              SaldoEstoqueAtual := DM.SQLTemplate.FieldByName('QUANT').Value;
              LBSaldo.Caption := FormatFloat('##0.000', DM.SQLTemplate.FieldByName('QUANT').Value);
              LBSaldo.Update;
            end;
//          else
//          begin
//            LBSaldo.Caption := 'Saldo: N�o Consta';
//            LBSaldo.Update;
//          end;
          end;
                ////////////////////////////////////////////////////////////////////////////////
          Application.CreateForm(TFormTelaTiraTeima, FormTelaTiraTeima);
          FormTelaTiraTeima.DescricaoProduto.Caption := SQLProdutoPRODICOD.AsString + '-' + SQLProduto.FieldByName('PRODA60DESCR').AsString;
          if RetornaTamanhoProduto(SQLProdutoGRADICOD.AsString, SQLProdutoGRTMICOD.AsString) <> '' then
            FormTelaTiraTeima.DescricaoProduto.Caption := FormTelaTiraTeima.DescricaoProduto.Caption + '/' + RetornaTamanhoProduto(SQLProdutoGRADICOD.AsString, SQLProdutoGRTMICOD.AsString);

          if DM.SQLConfigVendaTPRCICOD.AsString <> '' then
            FormTelaTiraTeima.PrecoNormal.Value := StrToFloat(FormatFloat(FormatStrVlrVenda, RetornaPreco(SQLProduto, DM.SQLConfigVendaTPRCICOD.AsString, UsaPrecoVenda)))
          else
            FormTelaTiraTeima.PrecoNormal.Value := SQLProduto.FieldByName('PRODN3VLRVENDA').AsFloat;
                // Testa se mostra preco atacado
          if dm.SQLTerminalAtivoTERMCMPATACADO.Value = 'S' then
          begin
            FormTelaTiraTeima.lbPrecoAtacado.Visible := True;
            FormTelaTiraTeima.PrecoAtacado.Visible := True;
            FormTelaTiraTeima.PrecoAtacado.Value := SQLProduto.FieldByName('PRODN3VLRVENDA2').AsFloat;
          end;

          if ((SQLProduto.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (SQLProduto.FieldByName('PRODDFIMPROMO').AsDateTime >= Now) and (SQLProduto.FieldByName('PRODN3VLRVENDAPROM').AsFloat > 0)) or
            ((SQLProduto.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (SQLProduto.FieldByName('PRODDFIMPROMO').AsString = '') and (SQLProduto.FieldByName('PRODN3VLRVENDAPROM').AsFloat > 0)) then
            FormTelaTiraTeima.PrecoPromocao.Value := SQLProduto.FieldByName('PRODN3VLRVENDAPROM').AsFloat
          else
            FormTelaTiraTeima.PrecoPromocao.Value := 0;

          if FormTelaTiraTeima.PrecoPromocao.Value > 0 then
          begin
            FormTelaTiraTeima.lbPrecoPromocao.Visible := True;
            FormTelaTiraTeima.PrecoPromocao.Visible := True;
          end
          else
          begin
            FormTelaTiraTeima.lbPrecoPromocao.Visible := False;
            FormTelaTiraTeima.PrecoPromocao.Visible := False;
          end;

          if SQLProduto.FieldByName('PRODA255DESCRTEC').AsString <> '' then
            FormTelaTiraTeima.DescricaoTecnica.Caption := 'Ref.' + SQLProduto.FieldByName('PRODA60REFER').AsString + CHR(13) +
              SQLProduto.FieldByName('PRODA255DESCRTEC').AsString;

          FormTelaTiraTeima.lbLocalizacao.Caption := 'Pavimento: ' + SQLProdutoPRODA15APAVIM.Value + ' Rua: ' + SQLProdutoPRODA15RUA.Value +
            'Prateleira: ' + SQLProdutoPRODA15PRATEL.Value;
          FormTelaTiraTeima.SaldoAtual.Value := 0;
          if DetalhesVenda = 'S' then
            if DM.SQLTemplate.FieldByName('QUANT').AsString <> '' then
              FormTelaTiraTeima.SaldoAtual.Value := DM.SQLTemplate.FieldByName('QUANT').Value;

          FormTelaTiraTeima.LBMarca.Caption := dm.SQLLocate('MARCA', 'MARCICOD', 'MARCA60DESCR', SQLProdutoMARCICOD.AsString);
          FormTelaTiraTeima.lbGrupo.Caption := dm.SQLLocate('GRUPO', 'GRUPICOD', 'GRUPA60DESCR', FormTelaItens.SQLProdutoGRUPICOD.AsString);
          FormTelaTiraTeima.lbPREVCOMPRA.Caption := 'Prev.Compra. ' + SQLProduto.FieldByName('PRODDPREVCOMPRA').AsString;

          FormTelaTiraTeima.EntradaDados.Text := CodigoProduto;
          FormTelaTiraTeima.EntradaDados.Update;

                // Mostra Imagem Associada ao Produto
          if (SQLProdutoPRODBIMAGEM.BlobSize <> 0) then
          begin
            FormTelaTiraTeima.BlobStream := SQLProduto.CreateBlobStream(SQLProdutoPRODBIMAGEM, bmRead);
            FormTelaTiraTeima.JPEGImage := TJPEGImage.Create;
            try
              FormTelaTiraTeima.JPEGImage.LoadFromStream(FormTelaTiraTeima.BlobStream);
              FormTelaTiraTeima.Foto.Picture.Assign(FormTelaTiraTeima.JPEGImage);
            finally
              FormTelaTiraTeima.BlobStream.Free;
              FormTelaTiraTeima.JPEGImage.Free;
            end;
          end
          else
          begin
            if FileExists('Bmp\Logo PDV.Bmp') then
              FormTelaTiraTeima.Foto.Picture.LoadFromFile('Bmp\Logo PDV.Bmp');
            if FileExists('Bmp\Logo PDV.Jpg') then
              FormTelaTiraTeima.Foto.Picture.LoadFromFile('Bmp\Logo PDV.Jpg');
          end;

          FormTelaTiraTeima.ShowModal;
//        if DetalhesVenda = 'S' then
//        begin
//          LBRef.Caption := '';
//          lbUnidade.Caption := '';
//          LBSaldo.Caption := '';
//        end;
        end
        else
          ProdutoNaoCadastrado;

        EntradaDados.Clear;
      end;
    end;
   if (Length(EntradaDados.Text) = 13) or (StrToIntDef(EntradaDados.Text, -1) <> -1) then
     ExecutarPessagemAutomatica;

    {* * * * INFORMADO ITENS * * * *}
    if (EstadoPDVChk = InformandoItens) or (EstadoPDVChk = InformandoItensTroca) then
    begin
      if (Enter_Vazio = 'N') and (EntradaDados.Text = '') then exit;

      CodigoBalanca := False;
      if (Length(EntradaDados.Text) = 13) and (copy(EntradaDados.Text, 1, 1) = '2') then
        CodigoBalanca := true;

      if (EntradaDados.Text <> '') and (Enter_Vazio = 'N') and (not EncontrouProduto(trim(EntradaDados.Text), SQLProduto)) and not (CodigoBalanca) then
      begin
         ProdutoNaoCadastrado;
         EntradaDados.Clear;
         exit;
      end;

      if not SQLItensVendaTemp.Active then exit;
      LblInstrucoes.Caption := 'Aguarde, Procurando Produto...';
      LblInstrucoes.Refresh;
      E_PRODBALANCA := False;
      QuantItem := EditQtde.Value;

      if (EntradaDados.Text = '') or ((EntradaDados.Text <> '') and
        (not EncontrouProduto(trim(EntradaDados.Text), SQLProduto))) then
      begin
          //TESTAR SE O CODIGO � DE BALANCA
        if (Length(EntradaDados.Text) = 13) and (copy(EntradaDados.Text, 1, 1) = '2') then
        begin
          SQLBalanca.Close;
          SQLBalanca.MacroByName('MFiltro').Value := 'CFBLA10BALID = ''' + Copy(EntradaDados.Text, 1, 1) + '''';
          SQLBalanca.Open;
          if not SQLBalanca.Eof then
          begin
            SQLProduto.Close;
            SQLProduto.SQL.Clear;
            SQLProduto.SQL.Add('Select * From PRODUTO');
            SQLProduto.SQL.Add('where PRODICODBALANCA = ' + Copy(EntradaDados.Text, SQLBalancaCFBLIBALCODPOS.Value,
              SQLBalancaCFBLIBALCODTAM.Value));
            SQLProduto.Open;
            if not SQLProduto.Eof then
            begin
              ValorItem := StrToFloat(FormatFloat(FormatStrVlrVenda, RetornaPreco(SQLProduto, DM.SQLConfigVendaTPRCICOD.AsString, UsaPrecoVenda)));

              if SQLBalancaCFBLCTIPOPRECO.AsString = 'V' then
              begin
                QuantItem := StrToFloat(Copy(EntradaDados.Text, SQLBalancaCFBLIVLRPOS.Value, SQLBalancaCFBLIVLRTAM.Value - 2) + ',' +
                  Copy(EntradaDados.Text, SQLBalancaCFBLIVLRPOS.Value + SQLBalancaCFBLIVLRTAM.Value - 2, 2));
                if QuantItem = 0 then
                begin
                  E_PRODBALANCA := False;
                  InformaG('Quantidade Zerada ou n�o identificada!');
                  EntradaDados.SelectAll;
                  EstadoPDVChk := InformandoItens;
                  PreparaEstadoBalcao(InformandoItens);
                  EntradaDados.Clear;
                  Exit;
                end;

                QuantItem := QuantItem / ValorItem;
              end
              else
              begin
                          //testar casas decimais;
                if SQLProdutoPRODITIPOPRODBALAN.AsString <> 'U' then
                begin
                  if SQLBalancaCFBLIDECIMAIS.AsInteger = 2 then
                    QuantItem := StrToCurr(Copy(EntradaDados.Text, SQLBalancaCFBLIVLRPOS.Value, SQLBalancaCFBLIVLRTAM.Value - 2) + ',' +
                      Copy(EntradaDados.Text, SQLBalancaCFBLIVLRPOS.Value + SQLBalancaCFBLIVLRTAM.Value - 2, 2));

                  if SQLBalancaCFBLIDECIMAIS.AsInteger = 3 then
                    QuantItem := StrToCurr(Copy(EntradaDados.Text, SQLBalancaCFBLIVLRPOS.Value, SQLBalancaCFBLIVLRTAM.Value - 3) + ',' +
                      Copy(EntradaDados.Text, SQLBalancaCFBLIVLRPOS.Value + SQLBalancaCFBLIVLRTAM.Value - 3, 3));
                end
                else
                  QuantItem := StrToCurr(Copy(EntradaDados.Text, SQLBalancaCFBLIVLRPOS.Value, SQLBalancaCFBLIVLRTAM.Value));

                if QuantItem = 0 then
                begin
                  E_PRODBALANCA := False;
                  InformaG('Quantidade Zerada ou n�o identificada!');
                  EntradaDados.SelectAll;
                  EstadoPDVChk := InformandoItens;
                  PreparaEstadoBalcao(InformandoItens);
                  EntradaDados.Clear;
                  Exit;
                end;
              end;
              E_PRODBALANCA := True;
            end
            else
            begin
                      // MANDA DADOS DISPLAY TECLADO
              if TecladoReduzidoModelo = 'TEC44DIS' then
                EnviaTecladoTextoDisplay44('Atencao!', 'Produto nao Encontrado');
              if TecladoReduzidoModelo = 'TEC65' then
                EnviaTecladoTextoDisplay65('Atencao!', 'Produto nao Encontrado');
              ProdutoNaoCadastrado;
              EntradaDados.SelectAll;
              EstadoPDVChk := InformandoItens;
              PreparaEstadoBalcao(InformandoItens);
              EntradaDados.Clear;
              Exit;
            end;
          end
          else
          begin
                  // MANDA DADOS DISPLAY TECLADO
            if TecladoReduzidoModelo = 'TEC44DIS' then
              EnviaTecladoTextoDisplay44('Atencao!', 'Produto nao Encontrado');
            if TecladoReduzidoModelo = 'TEC65' then
              EnviaTecladoTextoDisplay65('Atencao!', 'Produto nao Encontrado');
            ProdutoNaoCadastrado;
            EntradaDados.SelectAll;
            EstadoPDVChk := InformandoItens;
            PreparaEstadoBalcao(InformandoItens);
            EntradaDados.Clear;
            Exit;
          end;
        end;


        if ((ValorItem = 0) and (EntradaDados.Text = '') and (not E_PRODBALANCA)) or
          ((ValorItem = 0) and (EntradaDados.Text <> '') and (not E_PRODBALANCA)) then
        begin
          if (DM.SQLConfigVendaCFVECFINDPRODPORDESCR.Value = 'S') then
          begin
                  // MANDA DADOS DISPLAY TECLADO
            if TecladoReduzidoModelo = 'TEC44DIS' then
              EnviaTecladoTextoDisplay44('Atencao!', 'Procurar pela Descricao do Produto');
            if TecladoReduzidoModelo = 'TEC65' then
              EnviaTecladoTextoDisplay65('Atencao!', 'Procurar pela Descricao do Produto');
            Application.CreateForm(TFormTelaConsultaRapidaItem, FormTelaConsultaRapidaItem);
            FormTelaConsultaRapidaItem.ShowModal;

            if FormTelaConsultaRapidaItem.ModalResult = MrOk then
            begin
              SQLProduto.Close;
              SQLProduto.SQL.Clear;
              SQLProduto.SQL.Add('select * from PRODUTO');
              SQLProduto.SQL.Add('where PRODICOD = ' + CodigoProduto);
              SQLProduto.Open;
            end
            else
              SQLProduto.Close;
          end
          else
            CodigoProduto := '';

          EntradaDados.text := CodigoProduto;
          EntradaDados.SelectAll;
        end
        else
        begin
          if not E_PRODBALANCA then
            EntradaDadosKeyDown(Sender, Enter, [ssAlt]);
        end;
      end;

      if EntradaDados.text = '' then
      begin
          // MANDA DADOS DISPLAY TECLADO
        if TecladoReduzidoModelo = 'TEC44DIS' then
          EnviaTecladoTextoDisplay44('Atencao!', 'Produto nao Encontrado!');
        if TecladoReduzidoModelo = 'TEC65' then
          EnviaTecladoTextoDisplay65('Atencao!', 'Produto nao Encontrado!');
        ProdutoNaoCadastrado;
        EntradaDados.SelectAll;
        EstadoPDVChk := InformandoItens;
        PreparaEstadoBalcao(InformandoItens);
        EntradaDados.Clear;
        Abort;
        Exit;
      end;

      if TrocandoItens then
      begin
        LblBonusTroca.Visible := True;
        LblBonusTroca.Update;
        ValorBonusTroca.Visible := True;
        ValorBonusTroca.Update;
      end;

      // RETORNA SALDO DO PRODUTO
      if DetalhesVenda = 'S' then
      begin
        DM.SQLTemplate.Close;
        DM.SQLTemplate.SQL.Clear;
        DM.SQLTemplate.SQL.Add('select PRODUTO.PESAGEM_AUTOMATICA, PRODUTO.PRODICOD, PRODUTO.PRODCVDESTNEG, ');
        DM.SQLTemplate.SQL.Add('(select PRODUTOSALDO.PSLDN3QTDE from PRODUTOSALDO');
        DM.SQLTemplate.SQL.Add('where PRODUTOSALDO.EMPRICOD = ' + EmpresaPadrao);
        DM.SQLTemplate.SQL.Add('and   PRODUTOSALDO.PRODICOD = PRODUTO.PRODICOD) as QUANT');
        DM.SQLTemplate.SQL.Add('from PRODUTO');
        DM.SQLTemplate.SQL.Add('where PRODUTO.PRODICOD = ' + SQLProdutoPRODICOD.AsString);
        DM.SQLTemplate.Open;
        if DM.SQLTemplate.FieldByName('QUANT').asstring <> '' then
        begin
          SaldoEstoqueAtual := DM.SQLTemplate.FieldByName('QUANT').Value;
          LBSaldo.Caption := FormatFloat('##0.000', DM.SQLTemplate.FieldByName('QUANT').Value);
          LBSaldo.Update;
        end;

//        else
//        begin
//          LBSaldo.Caption := 'Saldo: N�o Consta';
//          LBSaldo.Update;
 //       end;
          {if (DM.SQLTemplate.FieldByName('PRODCVDESTNEG').Value = 'N') and (DM.SQLTemplate.FieldByName('QUANT').Value < 1) then
            begin
              InformaG('Saldo Insuficiente para Vender esse Produto!');
              Abort;
              Exit;
            end;}
      end;
      // Mostra Imagem Associada ao Produto
      if DetalhesVenda = 'S' then
      begin
        if SQLProdutoPRODBIMAGEM.BlobSize <> 0 then
        begin
          BlobStream := SQLProduto.CreateBlobStream(SQLProdutoPRODBIMAGEM, bmRead);
          JPEGImage := TJPEGImage.Create;
          try
            JPEGImage.LoadFromStream(BlobStream);
            Foto.Picture.Assign(JPEGImage);
          finally
            BlobStream.Free;
            JPEGImage.Free;
          end;
        end
        else
        begin
          if FileExists('Bmp\Logo PDV.Bmp') then
            Foto.Picture.LoadFromFile('Bmp\Logo PDV.Bmp');
          if FileExists('Bmp\Logo PDV.Jpg') then
            Foto.Picture.LoadFromFile('Bmp\Logo PDV.Jpg');
        end;
      end;

      // MANDA DADOS DISPLAY TECLADO
      {  IF TecladoReduzidoModelo = 'TEC44DIS' THEN
        EnviaTecladoTextoDisplay44(SQLProdutoPRODA60DESCR.AsString, '');
        IF TecladoReduzidoModelo = 'TEC65' THEN
        EnviaTecladoTextoDisplay65(SQLProdutoPRODA60DESCR.AsString, '');}

      if SolicitarPreco and (EditQtde.Text <> '') then
      begin
        try
          DescricaoProduto.Caption := SQLProdutoPRODA60DESCR.Value;
          DescricaoProduto.Update;
          AdicionalProduto.Caption := '';
          AdicionalProduto.Update;
//          if DetalhesVenda = 'S' then
//          begin
//            LBRef.caption := SQLProdutoPRODA60REFER.Value;
//            LBRef.Update;
//            lbUnidade.caption := dm.SQLLocate('UNIDADE', 'UNIDICOD', 'UNIDA5DESCR', SQLProdutoUNIDICOD.AsString);
//            lbUnidade.Update;
//          end;

          // ValorItem := StrToFloat(InputBox('Altera��o de Valor do Item', 'Prompt', FormatFloat(FormatStrVlrVenda, RetornaPreco(SQLProduto, DM.SQLConfigVendaTPRCICOD.AsString, ''))));
          // MANDA DADOS DISPLAY TECLADO
          if TecladoReduzidoModelo = 'TEC44DIS' then
            EnviaTecladoTextoDisplay44('Alterar o Valor do Item', '');
          if TecladoReduzidoModelo = 'TEC65' then
            EnviaTecladoTextoDisplay65('Alterar o Valor do Item', '');

          // ValorItem := StrToFloat(InputBox('Altera��o de Valor do Item', 'Prompt', FormatFloat(FormatStrVlrVenda, RetornaPreco(SQLProduto, DM.SQLConfigVendaTPRCICOD.AsString, UsaPrecoVenda))));
          // Adilson - Colocar pq os clientes reclamavam que nao podiam cancelar o lanc.do produto
          { Para Dutoal, testar se o produto tem peso liquido, se tiver o valor a ser digitado deve ser o valor unitario do Kilo e ser multiplicado
            pelo Peso Liquido}

          Application.CreateForm(TFormTelaPrecoAlterado, FormTelaPrecoAlterado);
          if FileExists('Dutoal.txt') and (SQLProdutoPRODN3PESOLIQ.Value > 0) then
            FormTelaPrecoAlterado.lbVlrUnitario.caption := 'Informe o Valor do KG';
          FormTelaPrecoAlterado.EditValorTotal.Value := RetornaPreco(SQLProduto, DM.SQLConfigVendaTPRCICOD.AsString, UsaPrecoVenda);
          FormTelaPrecoAlterado.ShowModal;
          if FormTelaPrecoAlterado.ModalResult = MrOK then
          begin
            if FileExists('Dutoal.txt') and (SQLProdutoPRODN3PESOLIQ.Value > 0) then
              ValorItem := FormTelaPrecoAlterado.EditValorTotal.Value * SQLProdutoPRODN3PESOLIQ.Value // Aplica Calculo do Kg citado acima
            else
              ValorItem := FormTelaPrecoAlterado.EditValorTotal.Value; // Normal para todos os clientes
          end
          else
          begin
            EntradaDados.SelectAll;
            PreparaEstadoBalcao(InformandoItens);
            exit;
          end;

          // MANDA DADOS DISPLAY TECLADO
          if TecladoReduzidoModelo = 'TEC44DIS' then
            EnviaTecladoTextoDisplay44('Alterar o Valor do Item', FormatFloat('##0.00', ValorItem));
          if TecladoReduzidoModelo = 'TEC65' then
            EnviaTecladoTextoDisplay65('Alterar o Valor do Item', FormatFloat('##0.00', ValorItem));

          if (Dm.SQLConfigVendaCFVECPEDEVLRPRODUTO.AsString = 'S') and (not ImportandoPreVenda) then
            SolicitarPreco := True
          else
            SolicitarPreco := false;
        except
          // MANDA DADOS DISPLAY TECLADO
          if TecladoReduzidoModelo = 'TEC44DIS' then
            EnviaTecladoTextoDisplay44('Atencao!', 'Valor Digitado Invalido!');
          if TecladoReduzidoModelo = 'TEC65' then
            EnviaTecladoTextoDisplay65('Atencao!', 'Valor Digitado Invalido!');
          InformaG('Valor inv�lido');
          EntradaDados.SelectAll;
          PreparaEstadoBalcao(InformandoItens);
          exit;
        end;
        // Solicita Preco q deveria ser vendido o produto
        try
          if (Dm.SQLConfigVendaCFVECINFVLRDEVCVEN.AsString = 'S') and (not ImportandoPreVenda) then
            ValorItemQDeveriaSerVendido := StrToFloat(InputBox('Informe o Valor que deveria ser vendido o Item', 'Prompt', FormatFloat(FormatStrVlrVenda, RetornaPreco(SQLProduto, DM.SQLConfigVendaTPRCICOD.AsString, UsaPrecoVenda))));

          if (Dm.SQLConfigVendaCFVECINFVLRDEVCVEN.AsString = 'S') and (not ImportandoPreVenda) then
            SolicitarPrecoQDeveriaSerVendido := True
          else
            SolicitarPrecoQDeveriaSerVendido := false;
        except
          InformaG('Valor inv�lido');
          EntradaDados.SelectAll;
          PreparaEstadoBalcao(InformandoItens);
          exit;
        end;
      end;

      if (ECFAtual <> '') and (PortaECFAtual <> '') then
        if SQLProdutoICMSICOD.AsString = '' then
        begin
          InformaG('Este produto n�o cont�m Al�quota de ICMS!');
          EntradaDados.SelectAll;
          PreparaEstadoBalcao(InformandoItens);
          exit;
        end;

      if (ValorItem = 0) then
        ValorItem := StrToFloat(FormatFloat(FormatStrVlrVenda, RetornaPreco(SQLProduto, DM.SQLConfigVendaTPRCICOD.AsString, UsaPrecoVenda)));

      //Busca desconto no produto
      CalcularDescontoProduto(True);
      CodICMS := '';
      CodICMS := SQLProdutoICMSICOD.AsString;
      DescricaoProduto.Caption := SQLProdutoPRODA60DESCR.Value;
      DescricaoProduto.Update;
     // AdicionalProduto.Caption := FormatFloat(FormatStrVlrVenda, ValorItem); adilson, removi para aparecer o total antes de dar desconto pra nao ter q fazer na calc.
      AdicionalProduto.Caption := FormatFloat(FormatStrQuant, QuantItem) +
        '  x  R$ ' +
        FormatFloat(FormatStrVlrVenda, ValorItem) + ' = R$ ' +
        FormatFloat(FormatStrVlrVenda, StrToFloat(FormatFloat(FormatStrVlrVenda, ValorItem)) *
        StrToFloat(FormatFloat(FormatStrQuant, QuantItem))) + ' ';

      AdicionalProduto.Update;


//      if DetalhesVenda = 'S' then
//      begin
//        LBRef.caption := SQLProdutoPRODA60REFER.Value;
//        LBRef.Update;
//        lbUnidade.caption := dm.SQLLocate('UNIDADE', 'UNIDICOD', 'UNIDA5DESCR', SQLProdutoUNIDICOD.AsString);
//        lbUnidade.Update;
//      end;

      if (ValorItem = 0) and (EditQtde.Text <> '') then
      begin
        try
          // MANDA DADOS DISPLAY TECLADO
          if TecladoReduzidoModelo = 'TEC44DIS' then
            EnviaTecladoTextoDisplay44('Alterar Valor do Item', '');
          if TecladoReduzidoModelo = 'TEC65' then
            EnviaTecladoTextoDisplay65('Alterar Valor do Item', '');

          // ValorItem := StrToFloat(FormatFloat(FormatStrVlrVenda,StrToFloat(InputBox('Altera��o de Valor do Item', 'Prompt', FormatFloat(FormatStrVlrVenda, SQLProdutoPRODN3VLRVENDA.Value))))) ;
          // Adilson - Colocar pq os clientes reclamavam que nao podiam cancelar o lanc.do produto
          Application.CreateForm(TFormTelaPrecoAlterado, FormTelaPrecoAlterado);
          FormTelaPrecoAlterado.EditValorTotal.Value := SQLProdutoPRODN3VLRVENDA.Value;
          FormTelaPrecoAlterado.ShowModal;
          if FormTelaPrecoAlterado.ModalResult = MrOK then
            ValorItem := FormTelaPrecoAlterado.EditValorTotal.Value
          else
          begin
            EntradaDados.SelectAll;
            PreparaEstadoBalcao(InformandoItens);
            exit;
          end;

          // MANDA DADOS DISPLAY TECLADO
          if TecladoReduzidoModelo = 'TEC44DIS' then
            EnviaTecladoTextoDisplay44('Alterar Valor do Item', FormatFloat('##0.00', ValorItem));
          if TecladoReduzidoModelo = 'TEC65' then
            EnviaTecladoTextoDisplay65('Alterar Valor do Item', FormatFloat('##0.00', ValorItem));
        except
          Application.ProcessMessages;
        end;
      end;

      if QuantItem = 0 then
      begin
        EditQtde.SetFocus;
        Exit;
      end;

      // Testa se � para abrir a tela de Desconto no item
      if AplicarDescontoItem then
      begin
        Application.CreateForm(TFormTelaTipoDescontoItem, FormTelaTipoDescontoItem);
        FormTelaTipoDescontoItem.ShowModal;
        if FormTelaTipoDescontoItem.EditDesconto.Value > 0 then
        begin
          if FormTelaTipoDescontoItem.DescValor.Checked then
          begin
            DescItemVlr := FormTelaTipoDescontoItem.EditDesconto.Value;
            DescItemPerc := 0;
          end
          else
          begin
            DescItemPerc := FormTelaTipoDescontoItem.EditDesconto.Value;
            DescItemVlr := 0;
          end;
        end;
      end;
      if DescItemPerc > 0 then
        DescItemVlr := ValorItem * (DescItemPerc / 100);

      // Para que o Desconto seja Multiplicado pela Qtde Vendida
      if (QuantItem > 1) and (DescItemVlr > 0) then
      begin
        DescItemVlrUnitario := DescItemVlr / QuantItem;
        DescItemVlr := DescItemVlrUnitario * QuantItem;
      end;

      if DescItemVlr > 0 then
        if (DescItemVlr > ValorItem) and (QuantItem = 1) then
        begin
          Informa('O valor do desconto informado � maior que o valor do item!');
          EntradaDados.Clear;
          PreparaEstadoBalcao(InformandoItens);
          exit;
        end;

      if DescItemVlr > 0 then
        if DescItemVlrUnitario > ValorItem then
        begin
          Informa('O valor do desconto informado � maior que o valor do item!');
          EntradaDados.Clear;
          PreparaEstadoBalcao(InformandoItens);
          exit;
        end;
      if (((DescItemVlr / ValorItem) * 100) > PercDesqMaxUsario) and not ImportandoPreVenda then
      begin
        if QuantItem > 0 then
          DescItemPerc := (DescItemVlr / (ValorItem * QuantItem)) * 100
        else
          DescItemPerc := (DescItemVlr / (ValorItem * 1)) * 100; // Coloquei o nro.1 pq quando o usuario nao tem poder de desconto a QuantItem estava Nulo e dava erro de calculo

            // Testa se o usuario tem poder de Desconto, senao faz pergunta
        if PercDesqMaxUsario < DescItemPerc then
        begin
          if Pergunta('SIM', 'Informe a Senha para Desconto?') then
          begin
            RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome, 'USUAN2PERCDESC', RetornoUser);
            if RetornoCampoUsuario <> '' then
            begin
              if StrToInt(RetornoCampoUsuario) >= DescItemPerc then
              begin
                EntradaDados.Clear;
              end
              else
              begin
                Informa('Voc� n�o tem permiss�o de dar este percentual de desconto!');
                EntradaDados.Clear;
                PreparaEstadoBalcao(InformandoItens);
                AplicarDescontoItem := False;
                exit;
              end;
            end
            else
            begin
              EntradaDados.Clear;
              PreparaEstadoBalcao(InformandoItens);
              exit;
            end;
          end
          else
          begin
            EntradaDados.Clear;
            PreparaEstadoBalcao(InformandoItens);
            exit;
          end;
        end;
      end;
      if DescItemPerc > 0 then
      begin
        DescItemVlr := ValorItem * (DescItemPerc / 100);
        DescItemVlr := StrToFloat(Copy(FloatToStr(DescItemVlr), 1, Pos(',', FloatToStr(DescItemVlr)) + 2));
      end;

      // Esse teste foi colocado pq quando usa qtde padrao = 0 no configurador, nao importava os
      // Produtos de Trocas com o campo Qtde - Adilson
      if (QuantItem = 0) and ImportandoPreVenda and TrocandoItens then
        QuantItem := QuantProx;

      if QuantItem > 1000 then
      begin
        Beep;
        SoundPlay('error.wav', Sender);
          // MANDA DADOS DISPLAY TECLADO
        if TecladoReduzidoModelo = 'TEC44DIS' then
          EnviaTecladoTextoDisplay44(FormatFloat('##0.000', QuantItem) + '  Quantidade esta Correta?', '(Sim/Nao)');
        if TecladoReduzidoModelo = 'TEC65' then
          EnviaTecladoTextoDisplay65(FormatFloat('##0.000', QuantItem) + '  Quantidade esta Correta?', '(Sim/Nao)');
        if (not Pergunta('NAO', 'A quantidade do produto est� correta? -> ' + FormatFloat('##0.000', QuantItem))) then
        begin
          EditQtde.SetFocus;
          Exit;
        end;
      end;
      if ValorItem = 0 then
        ValorItem := StrToFloat(FormatFloat(FormatStrVlrVenda, RetornaPreco(SQLProduto, DM.SQLConfigVendaTPRCICOD.AsString, UsaPrecoVenda)));

      if DescItemPerc > 0 then
      begin
        if (TipoDesc = 'C') then
          DescItemVlr := 0 //DescItemVlr := DescItemPerc
        else
          if (TipoDesc = 'V') then
          begin
            DescItemVlr := (ValorItem * QuantItem) - ((ValorItem - DescItemPerc) * QuantItem);
          end
          else
            DescItemVlr := (ValorItem * QuantItem) * (DescItemPerc / 100);

        DescItemVlr := StrToFloat(Copy(FloatToStr(DescItemVlr), 1, Pos(',', FloatToStr(DescItemVlr)) + 3));
      end;

      InfDesc := '';
      if DescItemPerc > 0 then
        InfDesc := ' - (' + FormatFloat('##0.00 %', DescItemPerc) + ' Desc)  '
      else
        if DescItemVlr > 0 then
          InfDesc := ' - (' + FormatFloat('R$ ##0.00', DescItemVlr) + ' Desc)  ';

      if DescItemPerc > 0 then
      begin
        DescItemVlr := (ValorItem * QuantItem) * (DescItemPerc / 100);
        DescItemVlr := StrToFloat(Copy(FloatToStr(DescItemVlr), 1, Pos(',', FloatToStr(DescItemVlr)) + 2));
      end;

      InfDesc := '';
      if DescItemPerc > 0 then
        InfDesc := ' - (' + FormatFloat('##0.00 %', DescItemPerc) + ' Desc)  '
      else
        if DescItemVlr > 0 then
          InfDesc := ' - (' + FormatFloat('R$ ##0.00', DescItemVlr) + ' Desc)  ';

      if DescItemVlr > 0 then
      begin
        AdicionalProduto.Caption := '(' + FormatFloat(FormatStrQuant, QuantItem) +
          '  x  R$ ' +
          FormatFloat(FormatStrVlrVenda, ValorItem) + ' = R$ ' + FormatFloat(FormatStrVlrVenda, ValorItem * QuantItem) + ') - R$ ' +
          FormatFloat('##0.00 Desc.', DescItemVlr) + ' => R$ ' +
          FormatFloat(FormatStrVlrVenda, StrToFloat(FormatFloat(FormatStrVlrVenda, ((ValorItem * QuantItem) - DescItemVlr))))
          + ' ';
      end
      else
        AdicionalProduto.Caption := FormatFloat(FormatStrQuant, QuantItem) +
          '  x  R$ ' +
          FormatFloat(FormatStrVlrVenda, ValorItem) + ' = R$ ' +
          FormatFloat(FormatStrVlrVenda, StrToFloat(FormatFloat(FormatStrVlrVenda, ValorItem)) *
          StrToFloat(FormatFloat(FormatStrQuant, QuantItem))) + ' ';

      if QuantItem > 0 then
      begin
        if ItemCancelado > 0 then
        begin
          WNumItem := WNumItem + 1;
          ItemCancelado := 0;
        end;

        if TemProdutoSemSubsTrib then
          if SQLProdutoPRODCSUBSTRIB.AsString = 'S' then
            if DM.SQLConfigVendaCFVECINFPRODSUBTRI.AsString = 'S' then
            begin
              InformaG('J� existe(m) produto(s) SEM substitui��o tribut�ria nesta venda, voc� deve fazer um cupom separado para produtos COM substitui��o tribut�ria!' + #13 + 'Para maiores informa��es contate o suporte!');
              EntradaDados.SelectAll;
              EstadoPDVChk := InformandoItens;
              PreparaEstadoBalcao(EstadoPDVChk);
              exit;
            end;
        if TemProdutoComSubsTrib then
          if SQLProdutoPRODCSUBSTRIB.AsString <> 'S' then
            if DM.SQLConfigVendaCFVECINFPRODSUBTRI.AsString = 'S' then
            begin
              InformaG('J� existe(m) produto(s) COM substitui��o tribut�ria nesta venda, voc� deve fazer um cupom separado para produtos SEM substitui��o tribut�ria!' + #13 + 'Para maiores informa��es contate o suporte!');
              EntradaDados.SelectAll;
              EstadoPDVChk := InformandoItens;
              PreparaEstadoBalcao(EstadoPDVChk);
              exit;
            end;

          // Verifica Nro Serie
        if ((SQLProdutoPRODCTEMNROSERIE.AsString = 'S') and (not ImportandoPreVenda)) or
          ((SQLProdutoPRODCTEMNROSERIE.AsString = 'S') and (ImportandoPreVenda) and (NroSerieProduto = '')) then
        begin
          Application.CreateForm(TFormTelaInformaNumeroSerieProduto, FormTelaInformaNumeroSerieProduto);
          CodigoProduto := SQLProdutoPRODICOD.AsString;
          FormTelaInformaNumeroSerieProduto.ShowModal;
          if FormTelaInformaNumeroSerieProduto.ModalResult = MrOK then
          begin
            NroSerieProduto := FormTelaInformaNumeroSerieProduto.EditNroSerie.Text;
          end;
          FormTelaInformaNumeroSerieProduto.Destroy;
        end;

          // Testa se o produto pode ser vendido Fracionado
        if Frac(QuantItem) > 0 then
        begin
          if SQLProdutoFracionado.Value = 'N' then
          begin
            InformaG('Este Produto n�o permite Venda Fracionada!');
            EntradaDados.SelectAll;
            exit;
          end;
        end;
          // Testa se o Produto Nao Tem Saldo e se o Usuario pode Vender sem Saldo
          {if FileExists('MostraSaldo.txt') and (dm.SQLConfigVendaCFVECVENDAESTNEGAT.Value = 'N') and (not TrocandoItens) and (not ContinuarPreVenda) then
            begin
                if (SaldoEstoqueAtual = 0) or (SaldoEstoqueAtual < 0) then
                  begin
                    if DM.SQLUsuario.Locate('USUAICOD',UsuarioCorrente,[]) then
                      if DM.SQLUsuario.FieldByName('USUACLIBERASALDNEG').AsString <> 'S' then
                        if Pergunta('SIM','Voc� n�o tem permiss�o para vender com saldo Negativo ou Zerado. Deseja Informar Outro Usu�rio?') then
                          begin
                            RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACLIBERASALDNEG',RetornoUser);
                            if RetornoCampoUsuario <> 'S' then
                              begin
                                EntradaDados.SelectAll;
                                Exit;
                              end;
                          end
                        else
                          begin
                            EntradaDados.SelectAll;
                            Exit;
                          end;
                  end;
            end; }

          // Testa se o Saldo de Estoque menos a QuantComprada nao ficara menor q zero
          { if (not TrocandoItens) and (SQLProdutoPRODCTIPOBAIXA.AsString <> 'N')  and (not ContinuarPreVenda) then }
        if SQLProdutoPRODCVDESTNEG.Value <> 'S' then
          if (not TrocandoItens) and (SQLProdutoPRODCTIPOBAIXA.AsString <> 'N') then
          begin
            if (SaldoEstoqueAtual - QuantItem < 0) then
            begin
              if DM.SQLUsuario.Locate('USUAICOD', UsuarioCorrente, []) then
                if DM.SQLUsuario.FieldByName('USUACLIBERASALDNEG').AsString <> 'S' then
                  if Pergunta('SIM', 'Voc� n�o tem permiss�o para vender com saldo Negativo ou Zerado. Deseja Informar Outro Usu�rio?') then
                  begin
                    RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome, 'USUACLIBERASALDNEG', RetornoUser);
                    if RetornoCampoUsuario <> 'S' then
                    begin
                      EntradaDados.SelectAll;
                      ValorItem := 0;
                      PreparaEstadoBalcao(InformandoItens);
                      Exit;
                    end;
                  end
                  else
                  begin
                    EntradaDados.SelectAll;
                    ValorItem := 0;
                    PreparaEstadoBalcao(InformandoItens);
                    Exit;
                  end;
            end;
          end;

          // Retorna a descricao da UNIDADE
        if (SQLProdutoUNIDADE.AsString <> '') and ((Length(SQLProdutoUNIDADE.AsString) = 2) or (SQLProdutoUNIDADE.AsString = 'L')) then
          Unidade := SQLProdutoUNIDADE.AsString
        else
          Unidade := 'UN';

        if (ProdutoComplemento <> 'S') then
          DescrLivreProd := copy(SQLProdutoPRODA30ADESCRREDUZ.Value, 1, 29);

        if (ImportandoPreVenda) and (ProdutoComplemento = 'S') and (SQLItensVendaTempDESCRICAOTEC.Value <> '') then
          DescrLivreProd := copy(UpperCase(SQLItensVendaTempDESCRICAOTEC.Value), 1, 29);

          {Lanca Texto Complementar do Produto}
        if (not ImportandoPreVenda) and (ProdutoComplemento = 'S') then
        begin
          Application.CreateForm(TFormTelaDescricaoTecnicaProduto, FormTelaDescricaoTecnicaProduto);
          FormTelaDescricaoTecnicaProduto.ShowModal;
          if FormTelaDescricaoTecnicaProduto.ModalResult = MrOk then
          begin
            Densidade := FormTelaDescricaoTecnicaProduto.Densidade.Text;
            Medida := FormTelaDescricaoTecnicaProduto.Medida.Text;
            Espessura := FormTelaDescricaoTecnicaProduto.Espessura.Text;
            Tecido := FormTelaDescricaoTecnicaProduto.Tecido.Text;
            DescrLivreProd := FormTelaDescricaoTecnicaProduto.Obs.Text;
            FormTelaDescricaoTecnicaProduto.Close;
          end;
        end;

        if (ECFAtual <> '') and (copy(EcfAtual, 1, 4) <> 'NFCE') and (not TrocandoItens) and (not FileExists('Confirma.txt')) then
        begin
          if RetornaTotalizadorIcmsECF(Ecf_ID, CodICMS) = '' then
          begin
            InformaG('A al�quota de ICMS deste produto n�o possui um totalizador no ECF configurado!');
            EntradaDados.SelectAll;
            exit;
          end;
          if (CodigoBarrasProduto = '') then
            CodigoBarrasProduto := SQLProdutoPRODICOD.AsString;
            // Para Cliente q desejam imprimir no Cupom o Cd.Interno do Produto
          if FileExists('ImprimeCodigoInternoCupom.txt') then
            CodigoBarrasProduto := SQLProdutoPRODICOD.AsString;

          if NroSerieProduto = '' then
          begin
            if not ImprimeItemECF(ECFAtual, {Impressora}
              PortaECFAtual, {Porta}
              IntToStr(WNumItem), {Numitem}
              CodigoBarrasProduto, {Codigo}
              DescrLivreProd, {Descricao}
              RetornaTotalizadorIcmsECF(Ecf_ID, CodICMS), {Tributo}
              TipoDesc, {TipoDesc}
              Unidade, {Unid}
              QuantItem, {Qtde}
              ValorItem, {Valor}
              DescItemPerc, {Percdesc}
              DescItemVlr, {Vlrdesco}
              DM.SQLTerminalAtivoTERMINRODECQUANT.Value {NumDecQuant}) then
            begin
              InformaG('Problemas ao imprimir o item no ECF!');
              EntradaDados.SelectAll;
              exit;
            end;
          end
          else
          begin
            if not ImprimeItemECF(ECFAtual, {Impressora}
              PortaECFAtual, {Porta}
              IntToStr(WNumItem), {Numitem}
              NroSerieProduto, {Codigo}
              SQLProdutoPRODICOD.AsString + '-' + copy(SQLProdutoPRODA30ADESCRREDUZ.Value, 1, 20), {Descricao}
              RetornaTotalizadorIcmsECF(Ecf_ID, CodICMS), {Tributo}
              TipoDesc, {TipoDesc}
              Unidade, {Unid}
              QuantItem, {Qtde}
              ValorItem, {Valor}
              DescItemPerc, {Percdesc}
              DescItemVlr, {Vlrdesco}
              DM.SQLTerminalAtivoTERMINRODECQUANT.Value {NumDecQuant}) then
            begin
              InformaG('Problemas ao imprimir o item no ECF!');
              EntradaDados.SelectAll;
              exit;
            end
          end;
        end;

        SQLItensVendaTemp.Append;

          {Lanca Dimensoes do Produto quando marcado no produto dimensao}
        if (not ImportandoPreVenda) and (Unidade = 'M3') then
        begin
          Application.CreateForm(TFormTelaProdutoDimensao, FormTelaProdutoDimensao);
          FormTelaProdutoDimensao.EditM3_QTDE.Value := QuantItem;
          FormTelaProdutoDimensao.ShowModal;
          if FormTelaProdutoDimensao.ModalResult = MrOk then
          begin
            SQLItensVendaTempM3_ESPESSURA.Value := FormTelaProdutoDimensao.EditM3_ESP.Value;
            SQLItensVendaTempM3_LARGURA.Value := FormTelaProdutoDimensao.EditM3_LARG.Value;
            SQLItensVendaTempM3_COMPRI.Value := FormTelaProdutoDimensao.EditM3_COMPRI.Value;
            QuantItem := FormTelaProdutoDimensao.EditM3_QTDE.Value;
            FormTelaProdutoDimensao.Close;
          end;
        end;
        if (ImportandoPreVenda) and (Unidade = 'M3') then
        begin
          SQLItensVendaTempM3_ESPESSURA.Value := DM.SQLPreVendaItem1M3_ESPESSURA.Value;
          SQLItensVendaTempM3_LARGURA.Value := DM.SQLPreVendaItem1M3_LARGURA.Value;
          SQLItensVendaTempM3_COMPRI.Value := DM.SQLPreVendaItem1M3_COMPRI.Value;
        end;

        SQLItensVendaTempTERMICOD.Value := TerminalAtual;
        SQLItensVendaTempCODIGO.Value := SQLProdutoPRODICOD.Value;

        if VendeuManual then
          SQLItensVendaTempCPITCSTATUS.AsString := 'M'
        else
          SQLItensVendaTempCPITCSTATUS.AsString := 'A';
        VendeuManual := False;

        if not TrocandoItens then
          if (NroSerieProduto <> '') then
            SQLItensVendaTempDESCRICAO.Value := Copy(NroSerieProduto, 0, 30)
          else
            SQLItensVendaTempDESCRICAO.Value := SQLProdutoPRODA30ADESCRREDUZ.Value
        else
          SQLItensVendaTempDESCRICAO.Value := '(T)' + SQLProdutoPRODA30ADESCRREDUZ.Value;

        SQLItensVendaTempDESCRICAOTEC.Value := UpperCase(DescrLivreProd);
        SQLItensVendaTempREFERENCIA.Value := SQLProdutoPRODA60REFER.Value;
        SQLItensVendaTempUNIDADE.Value := dm.SQLLocate('UNIDADE', 'UNIDICOD', 'UNIDA5DESCR', SQLProdutoUNIDICOD.AsString);
        SQLItensVendaTempMARCA.Value := dm.SQLLocate('MARCA', 'MARCICOD', 'MARCA60DESCR', SQLProdutoMARCICOD.AsString);
        SQLItensVendaTempCOR.Value := dm.SQLLocate('COR', 'CORICOD', 'CORA30DESCR', SQLProdutoCORICOD.AsString);
        if (SQLProduto.FieldByName('GRADICOD').AsString <> '') and (SQLProduto.FieldByName('GRTMICOD').AsString <> '') then
          SQLItensVendaTempTAMANHO.Value := RetornaTamanhoProduto(SQLProduto.FindField('GRADICOD').AsString, SQLProduto.FindField('GRTMICOD').AsString);

        SQLItensVendaTempPRODA60DESCR.Value := SQLProdutoPRODA60DESCR.Value;
        if SQLItensVendaTempCOR.Value <> '' then
          SQLItensVendaTempDESCRICAO.Value := SQLItensVendaTempDESCRICAO.Value + '/' + SQLItensVendaTempCOR.Value;
        if SQLItensVendaTempTAMANHO.Value <> '' then
          SQLItensVendaTempDESCRICAO.Value := SQLItensVendaTempDESCRICAO.Value + '/' + SQLItensVendaTempTAMANHO.Value;

        SQLItensVendaTempQUANTIDADE.AsString := FormatFloat(FormatStrQuant, QuantItem);
        SQLItensVendaTempVLRUNITBRUT.Value := ValorItem;
        SQLItensVendaTempVLRDESC.Value := DescItemVlr;
        TotalDescItens := TotalDescItens + DescItemVlr;

        ValorTotItem := FloatToStr(SQLItensVendaTempQUANTIDADE.Value * ValorItem);
        ValorTotItem := FloatToStr(RoundTo(StrToFloat(ValorTotItem), -2));

        if (Unidade = 'M3') and (SQLItensVendaTempM3_ESPESSURA.Value > 0) and (SQLItensVendaTempM3_LARGURA.Value > 0) and
          (SQLItensVendaTempM3_COMPRI.Value > 0) then
        begin
          ValorTotItem := FloatToStr(((SQLItensVendaTempM3_ESPESSURA.Value / 100) *
            (SQLItensVendaTempM3_LARGURA.Value / 100) *
            SQLItensVendaTempM3_COMPRI.Value *
            SQLItensVendaTempQUANTIDADE.Value) * ValorItem);


          SQLItensVendaTempDESCRICAO.Value := SQLItensVendaTempDESCRICAO.Value + ' (' +
            formatfloat('##0.00', SQLItensVendaTempM3_ESPESSURA.value) + 'X' +
            formatfloat('##0.00', SQLItensVendaTempM3_LARGURA.value) + 'X' +
            formatfloat('##0.00', SQLItensVendaTempM3_COMPRI.value) + ')';
        end;

        if DescItemVlr > 0 then
          ValorTotItem := FormatFloat(FormatStrVlrVenda, StrToFloat(ValorTotItem) - StrTofloat(FormatFloat('0.00', DescItemVlr)));

        ValorTotItem := FormatFloat(FormatStrVlrVenda, StrToFloat(ValorTotItem));
        SQLItensVendaTempVLRTOTAL.AsString := ValorTotItem;

        if (SQLProdutoPRODISITTRIB.Value = 40) or (SQLProdutoPRODISITTRIB.Value = 41) or (SQLProdutoPRODISITTRIB.Value = 60) or
          (SQLProdutoPRODISITTRIB.Value = 400) or (SQLProdutoPRODISITTRIB.Value = 500) then
        begin
          SQLItensVendaTempBASEICMS.asFloat := 0;
          SQLItensVendaTempALIQUOTA.AsFloat := 0;
          ReducaoICMS := 0;
          SQLItensVendaTempVLRICMS.Value := 0;
        end
        else
        begin
          SQLItensVendaTempBASEICMS.asFloat := SQLItensVendaTempVLRTOTAL.AsFloat;
          SQLItensVendaTempALIQUOTA.AsFloat := RetornaAliquotaICMSProduto(SQLProdutoICMSICOD.AsInteger);
          ReducaoICMS := SQLProdutoPERC_REDUCAO_BASE_CALCULO.AsFloat;
//          ReducaoICMS := RetornaREDUCAOICMSProduto(SQLProdutoICMSICOD.AsInteger);
              if ReducaoICMS > 0 then
                begin
                  SQLItensVendaTempBASEICMS.asFloat := SQLItensVendaTempVLRTOTAL.AsFloat * (ReducaoICMS / 100);
                  SQLItensVendaTempPERC_RED_BASE_ICMS.AsFloat := ReducaoICMS;
                end;

          SQLItensVendaTempVLRICMS.Value := SQLItensVendaTempBASEICMS.asFloat * (SQLItensVendaTempALIQUOTA.AsFloat / 100);
        end;

        //CALCULA COFINS
{        if (SQLProdutoPRODA2CSTCOFINS.Value = '07') or (SQLProdutoPRODA2CSTCOFINS.Value = '08') or (SQLProdutoPRODA2CSTCOFINS.Value = '06') or
           (SQLProdutoPRODA2CSTCOFINS.Value = '09') or (SQLProdutoPRODA2CSTCOFINS.Value = '49') or (SQLProdutoPRODA2CSTCOFINS.Value = '04') then
        begin
          SQLItensVendaTempVALORCOFINS.asFloat := 0;
          SQLItensVendaTempALIQUOTACOFINS.AsFloat := 0;
          SQLItensVendaTempVLR_BASE_COFINS.AsFloat := 0;
        end
        else
        begin
          SQLItensVendaTempALIQUOTACOFINS.AsFloat := SQLProdutoPRODN2ALIQCOFINS.AsFloat;
          SQLItensVendaTempVLR_BASE_COFINS.AsFloat := SQLItensVendaTempVLRTOTAL.AsFloat - SQLItensVendaTempVLRDESC.AsFloat;
          SQLItensVendaTempVALORCOFINS.asFloat := SQLItensVendaTempVLR_BASE_COFINS.AsFloat * (SQLItensVendaTempALIQUOTACOFINS.AsFloat / 100);
        end;

        //CALCULA PIS
        if (SQLProdutoPRODA2CSTPIS.Value = '07') or (SQLProdutoPRODA2CSTPIS.Value = '08') or (SQLProdutoPRODA2CSTPIS.Value = '06') or
           (SQLProdutoPRODA2CSTPIS.Value = '09') or (SQLProdutoPRODA2CSTPIS.Value = '49') or (SQLProdutoPRODA2CSTPIS.Value = '04') then
        begin
          SQLItensVendaTempVALORPIS.asFloat := 0;
          SQLItensVendaTempALIQUOTAPIS.AsFloat := 0;
          SQLItensVendaTempVLR_BASE_PIS.AsFloat := 0;
        end
        else
        begin
          SQLItensVendaTempALIQUOTAPIS.AsFloat := SQLProdutoPRODN2ALIQPIS.AsFloat;
          SQLItensVendaTempVLR_BASE_PIS.AsFloat := SQLItensVendaTempVLRTOTAL.AsFloat - SQLItensVendaTempVLRDESC.AsFloat;
          SQLItensVendaTempVALORPIS.asFloat := SQLItensVendaTempVLR_BASE_PIS.AsFloat * (SQLItensVendaTempALIQUOTAPIS.AsFloat / 100);
        end;}

        if DM.SQLConfigCompraCFCOCTOTPRCVENPROD.AsString <> '' then
        begin
          case DM.SQLConfigCompraCFCOCTOTPRCVENPROD.AsString[1] of
            'M': SQLItensVendaTempVLRCUSTO.AsFloat := SQLProdutoPRODN3VLRCUSTOMED.AsFloat;
            'U': SQLItensVendaTempVLRCUSTO.AsFloat := SQLProdutoPRODN3VLRCUSTO.AsFloat;
          end;
        end;

        if TrocandoItens then
          SQLItensVendaTempTROCA.Value := 'S';

        ValorTotItem := FloatToStr(RoundTo(StrToFloat(ValorTotItem), -2));

          // Informa a Senha do Vendedor que ir� iniciar a Venda
        if FileExists('SolicitaVendedorACadaItem.txt') then
        begin
          try
            VendedorVenda := StrToInt(InputBox('Informar o Vendedor', 'Digite o C�digo do Vendedor', ''));
          except
            VendedorVenda := 0;
          end;
          if VendedorVenda > 0 then
            SQLItensVendaTempVENDICOD.Value := VendedorVenda;
        end;
        if VendPreVenda > 0 then
          SQLItensVendaTempVENDICOD.Value := VendPreVenda;

        if NroSerieProduto <> '' then
          SQLItensVendaTempNROSERIE.AsString := NroSerieProduto;

        if FloatToStr(ValorItemQDeveriaSerVendido) = '' then ValorItemQDeveriaSerVendido := 0;
        SQLItensVendaTempVLRQDEVERIAVENDER.asFloat := ValorItemQDeveriaSerVendido;

        SQLItensVendaTempCODBARRAS.Value := CodigoBarrasProduto;

        NroUltItem := NroUltItem + 1;
        SQLItensVendaTempNUMITEM.Value := NroUltItem;
        varEncerrante := 0;

        SQLItensVendaTempCANCELADO.Value := 'N';

          // Programa de Olho no Imposto
        SQLItensVendaTempAliquotaMedia.Value := RetornaAliquotaMediaProduto(SQLProdutoNCMICOD.Value, SQLProdutoPRODIORIGEM.Value);
        if SQLItensVendaTempAliquotaMedia.Value > 0 then
          SQLItensVendaTempValorImpostoMedio.Value := (SQLItensVendaTempVLRTOTAL.Value * SQLItensVendaTempAliquotaMedia.Value) / 100;

          { Removido Adilson
           if SQLItensVendaTempAliquotaMedia.Value = 0 then
            ShowMessage('Anote o NCM com ERRO para ser corrigido! NCM='+dm.SQLLocate('ncm','ncmicod','NCMA30CODIGO',SQLProdutoNCMICOD.AsString));}

        SQLItensVendaTempDENSIDADE.Value := Densidade;
        SQLItensVendaTempMEDIDA.Value := Medida;
        SQLItensVendaTempESPESSURA.Value := Espessura;
        SQLItensVendaTempTECIDO.Value := Tecido;

        SQLItensVendaTemp.Post;
        CalcularDescontoProduto(False);
        SQLItensVendaTemp.Close;
        SQLItensVendaTemp.Open;
        SQLItensVendaTemp.Last;

          // Variavel que informa se j� foi vendido algum produto sem subs. trib.
        if SQLProdutoPRODCSUBSTRIB.AsString = 'S' then
          TemProdutoComSubsTrib := True
        else
          TemProdutoSemSubsTrib := True;

        CodigoProduto := '';
        CodigoBarrasProduto := '';
        NroSerieProduto := '';
      end;

      AplicarDescontoItem := False;
      DescItemPerc := 0;
      DescItemVlr := 0;
      ValorItem := 0;
      VendPreVenda := 0;

      if (DM.SQLterminalativoTERMIQTDEPADRAO.Value > 0) then
        EditQtde.Text := DM.SQLterminalativoTERMIQTDEPADRAO.AsString
      else
        EditQtde.Value := 0;

      //PODE-SE DIGITAR ZERO NA QUANTIDADE PARA VOLTAR PARA FUNCAO ITENS NORMAIS
      if (not TrocandoItens) and (QuantItem > 0) then
        EstadoPDVChk := InformandoItens
      else begin
        if TrocandoItens then
          EstadoPDVChk := InformandoItensTroca;
      end;

      {Adilson Limpar Variavel}
      DescrLivreProd := '';

      CalculaTotal;

      PreparaEstadoBalcao(EstadoPDVChk);
      EntradaDados.Clear;
      Exit;
    end;

    if EstadoPDVChk = CancelandoItem then
    begin
      //ESTE TESTE FOI ACRESCENTADO POIS PODE SE DESISTIR DE CANCELAR O �TEM
      //INFORMANDO ZERO COMO VALOR
      if EntradaDados.Text <> '' then
      begin
          // Se o usuario possuir direito de cancelar, efetua o cancelamento
        if Length(EntradaDados.Text) > 7 then
        begin
          DM.SQLTemplate.Close;
          DM.SQLTemplate.SQL.Clear;
          DM.SQLTemplate.SQL.Add('select PRODICOD from PRODUTO');
          DM.SQLTemplate.SQL.Add('where PRODA60CODBAR = ''' + EntradaDados.Text + '''');
          DM.SQLTemplate.Open;
          if not DM.SQLTemplate.EOF then
            EntradaDados.Text := 'C' + DM.SQLTemplate.FieldByName('PRODICOD').AsString
          else
          begin
            DM.SQLTemplate.Close;
            DM.SQLTemplate.SQL.Clear;
            DM.SQLTemplate.SQL.Add('select PRODICOD from PRODUTOBARRAS');
            DM.SQLTemplate.SQL.Add('where PRBAA15BARRAS = ''' + EntradaDados.Text + '''');
            DM.SQLTemplate.Open;
            if not DM.SQLTemplate.EOF then
              EntradaDados.Text := 'C' + DM.SQLTemplate.FieldByName('PRODICOD').AsString
            else
              EntradaDados.Text := '0';
          end;
        end;

        if UppercASE(Copy(EntradaDados.Text, 0, 1)) = 'C' then
        begin
          SQLItensVendaTemp.Locate('CODIGO', Copy(EntradaDados.Text, 2, length(entradadados.text)), []);
          EntradaDados.Text := SQLItensVendaTempNUMITEM.AsString;
        end;

          // Se o usuario possuir direito de cancelar, efetua o cancelamento
        if SQLItensVendaTemp.Locate('NUMITEM', EntradaDados.Text, []) then
        begin
          if (ECFAtual <> '') and (copy(EcfAtual, 1, 4) <> 'NFCE') and (ECFAtual <> 'CORISCO CT7000 V3') and (not FileExists('Confirma.txt')) then
          begin
            if not CancelarItemECF(ECFAtual, PortaECFAtual, SQLItensVendaTempNUMITEM.AsString) then
            begin
              InformaG('Problemas ao Cancelar Item!');
              EntradaDados.SelectAll;
              exit;
            end;
          end;

          if SQLItensVendaTemp.Recordcount > 0 then
          begin
            if SQLItensVendaTempVLRDESC.AsFloat > 0 then
              TotalDescItens := TotalDescItens - SQLItensVendaTempVLRDESC.AsFloat;
                    // Excluir item
            if NroUltItem = SQLItensVendaTempNUMITEM.AsInteger then
              ItemCancelado := ItemCancelado + 1;

            SQLItensVendaTemp.Edit;
            SQLItensVendaTempDESCRICAO.Value := '(C)' + SQLItensVendaTempDESCRICAO.Value;
            SQLItensVendaTempCANCELADO.Value := 'S';
            SQLItensVendaTemp.Post;

            SQLItensVendaTemp.Close;
            SQLItensVendaTemp.Open;
            SQLItensVendaTemp.Last;
          end;
        end
        else
        begin
          InformaG('Item n�o encontrado!');
          EntradaDados.SelectAll;
        end;
      end;

      DescricaoProduto.Caption := '';
      AdicionalProduto.Caption := '';
//      if DetalhesVenda = 'S' then
//      begin
//        LBRef.caption := '';
//        lbUnidade.Caption := '';
//        LBSaldo.Caption := '';
//      end;

      EstadoPDVChk := InformandoItens;
      PreparaEstadoBalcao(EstadoPDVChk);

      EntradaDados.Clear;
      CalculaTotal;
    end;

    if EstadoPDVChk = DescontoPercItem then
    begin
      if EntradaDados.Text = '' then
      begin
        Informa('Digite um percentual de desconto!');
        EntradaDados.Clear;
        Exit;
      end;
      DescItemPerc := StrToFloat(EntradaDados.Text);
      if PercDesqMaxUsario < DescItemPerc then
      begin
        if Pergunta('SIM', 'Voc� n�o tem permiss�o de dar este percentual de desconto. Deseja Informar Outro Usu�rio?') then
        begin
          RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome, 'USUAN2PERCDESC', RetornoUser);
          if RetornoCampoUsuario <> '' then
          begin
            if StrToInt(RetornoCampoUsuario) >= DescItemPerc then
            begin
              DescItemPerc := StrToFloat(EntradaDados.Text);
              EstadoPDVChk := EstadoPDVChkAnt;
              PreparaEstadoBalcao(EstadoPDVChk);
              EntradaDados.Clear;
            end
            else
            begin
              Informa('Voc� n�o tem permiss�o de dar este percentual de desconto!');
              EntradaDados.Clear;
              Exit;
            end;
          end
          else
          begin
            EntradaDados.Clear;
            Exit;
          end;
        end
        else
        begin
          EntradaDados.Clear;
          Exit;
        end;
        EntradaDados.SelectAll;
        exit;
      end
      else
        EstadoPDVChk := EstadoPDVChkAnt;
      PreparaEstadoBalcao(EstadoPDVChk);
      EntradaDados.Clear;
    end;

    if EstadoPDVChk = DescontoVlrItem then
    begin
      if EntradaDados.Text = '' then
      begin
        Informa('Digite um valor para o desconto!');
        EntradaDados.Clear;
        Exit;
      end;
      DescItemVlr := StrToFloat(EntradaDados.Text);
      EstadoPDVChk := EstadoPDVChkAnt;
      PreparaEstadoBalcao(EstadoPDVChk);
      EntradaDados.Clear;
    end;

    if EstadoPDVChk = InformandoConvenio then
    begin
      if (EntradaDados.Text = '') then
      begin
        Application.CreateForm(TFormTelaConsultaRapidaConvenio, FormTelaConsultaRapidaConvenio);
        FormTelaConsultaRapidaConvenio.ShowModal;

        if not (ConvenioVenda > 0) then
          exit;

        EntradaDados.Text := IntToStr(ConvenioVenda);
      end;

      DM.SQLTemplate.Close;
      DM.SQLTemplate.SQL.Clear;
      DM.SQLTemplate.SQL.Add('select * from CONVENIO');
      DM.SQLTemplate.SQL.Add('where CONVICOD = ' + EntradaDados.Text);
      DM.SQLTemplate.Open;
      if DM.SQLTemplate.EOF then
      begin
        InformaG('Conv�nio n�o encontrado!');
        EntradaDados.SelectAll;
        EstadoPDVChk := InformandoItens;
        PreparaEstadoBalcao(EstadoPDVChk);
        EntradaDados.Clear;
        exit;
      end;

      ConvenioVenda := DM.SQLTemplate.FieldByName('CONVICOD').Value;
      LblConvenio.Caption := 'Conv�nio: ' + DM.SQLTemplate.FieldByName('CONVICOD').AsString + '-' +
        DM.SQLTemplate.FieldByName('CONVA60DESCR').Value;

      EstadoPDVChk := InformandoOrdemCompra;
      PreparaEstadoBalcao(EstadoPDVChk);
      EntradaDados.Clear;
      exit;
    end;

    if EstadoPDVChk = InformandoOrdemCompra then
    begin
      try
        NroOrdemCompraConvenio := StrToInt(EntradaDados.Text);
      except
      end;

      EstadoPDVChk := InformandoClienteConvenio;
      PreparaEstadoBalcao(EstadoPDVChk);
      EntradaDados.Clear;
      exit;
    end;

    if EstadoPDVChk = InformandoClienteConvenio then
    begin
      if (EntradaDados.text = '') or (not IsNumeric(EntradaDados.Text, 'FLOAT')) then
      begin
        Application.CreateForm(TFormTelaConsultaRapidaCliente, FormTelaConsultaRapidaCliente);
        FormTelaConsultaRapidaCliente.ShowModal;
      end
      else begin
        ClienteVenda := SQLLocate('CLIENTE', 'CLIEA10CODCONV', 'CLIEA13ID', '''' + EntradaDados.Text + '''');
        UsaPrecoVenda := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIECTPPRCVENDA', '''' + ClienteVenda + '''');
        if ClienteVenda = '' then
        begin
          InformaG('C�dido do cliente n�o encontrado!');
          EntradaDados.SelectAll;
          exit;
        end;
      end;

      LblCLiente.Caption := 'Cliente: ' + ClienteVenda + #13 + SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA60RAZAOSOC', '''' + ClienteVenda + '''');

      EstadoPDVChk := InformandoItens;
      PreparaEstadoBalcao(EstadoPDVChk);
      EntradaDados.Clear;
    end;
    if EstadoPDVChk = 'InformandoDescricaoTecnica' then
      InformaDescricaoTecnicaProduto;
  end; //Key
end;

procedure TFormTelaItens.VoltaParaEntradaDados;
begin
  try
    if not EntradaDados.Focused then
      EntradaDados.SetFocus;

  except
  end;
end;

procedure TFormTelaItens.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  PreVendaRimp, Certificado: string;
  RetornoUser: TInfoRetornoUser;
  FechouCupomFiscal, TemNumerarioAVista, TemNumerarioPrazo, ConsultarDenovo: Boolean;
  VlrTotalECF, VlrTotalSistema, VlrTotalDiferenca: Double;
begin

  if not EditQtde.Focused then
    VoltaParaEntradaDados;

  case Key of
    VK_F1: begin //CHAMAR TECLA DE ATALHO
        Application.CreateForm(TFormTelaTeclasAtalhoTelaItens, FormTelaTeclasAtalhoTelaItens);
        FormTelaTeclasAtalhoTelaItens.ShowModal;
      end;
    VK_F2: begin //INICIANDO NOVA VENDA
             {Testa pra ver se tem caminho ao Servidor para definir se o PDV � Offline}
        ExecutarF2;
      end;
    VK_F3: begin //FECHAMENTO DE VENDA
        if EstadoPDVChk <> InformandoItens then
        begin
          InformaG('O fechamento s� pode ser feito quando o sistema est� solicitando itens!');
          EntradaDados.SelectAll;
          exit;
        end;

        if CurSubTotal.Value > 0 then
        begin
        end
        else
        begin
          InformaG('Uma venda zerada n�o pode ser fechada!');
          EntradaDados.SelectAll;
          exit;
        end;

        if (ECFAtual = 'SWEDA_TERMICA') and (not FileExists('Confirma.txt')) then
        begin
          try
            dm.SubTotal_ECF := '00000000000000';
            ECF_SubTotal(dm.SubTotal_ECF);
            dm.SubTotal_ECF := FormatFloat(FormatStrVlrVenda, (StrToInt(dm.SubTotal_ECF) / 100));
            CurSubTotal.Text := dm.SubTotal_ECF;
            CurSubTotal.Update;
          except
            Application.ProcessMessages;
          end;
        end;

        if (ECFAtual = 'BEMATECH MP-25 FI') and (not FileExists('Confirma.txt')) then
        begin
          try
            dm.SubTotal_ECF := '00000000000000';
            Bematech_FI_SubTotal(dm.SubTotal_ECF);
            dm.SubTotal_ECF := FormatFloat(FormatStrVlrVenda, (StrToInt(dm.SubTotal_ECF) / 100));
            CurSubTotal.Text := dm.SubTotal_ECF;
            CurSubTotal.Update;
          except
            Application.ProcessMessages;
          end;
        end;

        if (ECFAtual = 'ECF') and (not FileExists('Confirma.txt')) then
        begin
          try
            dmECF.SubTotal;
          except
            Application.ProcessMessages;
          end;
        end;

        if (ECFAtual = 'DARUMA FRAMEWORK') and (not FileExists('Confirma.txt')) then
        begin
          try
            dm.SubTotal_ECF := '00000000000000';
            rCFSubTotal_ECF_Daruma(dm.SubTotal_ECF);
            dm.SubTotal_ECF := FormatFloat(FormatStrVlrVenda, (StrToInt(dm.SubTotal_ECF) / 100));
            CurSubTotal.Text := dm.SubTotal_ECF;
            CurSubTotal.Update;
          except
            Application.ProcessMessages;
          end;
        end;

        if (ECFAtual = 'EPSON TERMICA') and (not FileExists('Confirma.txt')) then
        begin
          try
            dm.SubTotal_ECF := '                    ';
            AbrirPortaECF_Epson_Termica;
            EPSON_Fiscal_Obter_SubTotal(PChar(dm.SubTotal_ECF));
            dm.SubTotal_ECF := FormatFloat(FormatStrVlrVenda, (StrToInt(dm.SubTotal_ECF) / 100));
            CurSubTotal.Text := dm.SubTotal_ECF;
            CurSubTotal.Update;
          except
            Application.ProcessMessages;
          end;
        end;

        Application.CreateForm(TFormTelaFechamentoVenda, FormTelaFechamentoVenda);
        if TerminalModo = 'C' then
          FormTelaFechamentoVenda.LblNomeSistema.Caption := 'Fechamento da Venda';
        if TerminalModo = 'P' then
          FormTelaFechamentoVenda.LblNomeSistema.Caption := 'Fechamento da Pr�-Venda';
        if E_Orcamento then
          FormTelaFechamentoVenda.LblNomeSistema.Caption := 'Fechamento do Or�amento';
        FormTelaFechamentoVenda.ShowModal;

        if EstadoPDVChk = AguardandoNovaVenda then
          if MostraPublicidade then
          begin
            slideshow.Enabled := True;
            slideshow.Visible := True;
            slideshow.Animation := True;
            AdvSmoothPanel5.Visible := True;
            PagePrincipal.ActivePage := TabVenda;
          end
          else
          begin
            slideshow.Enabled := False;
            slideshow.Visible := False;
            slideshow.Animation := false;
            AdvSmoothPanel5.Visible := False;
            PagePrincipal.ActivePage := TabVenda;
          end;

              {Chama Rotina de Transmissao da NFCe se nao tiver o arquivo confirma}
        Certificado := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA100CERTIFSERIE', EmpresaPadrao);
        if Certificado <> '' then
          if (copy(ECFAtual, 1, 4) = 'NFCE') and ImpCupomAutomatico then
            Transmite_NFCe(dm.CodNextCupom);

        {Verifica se mostra o valor limite para sangria}
        if (DM.SQLTerminalAtivoVALOR_LIMITE_SANGRIA.AsFloat > 0) then
        begin
          dm.sqlconsulta.close;
          dm.sqlconsulta.sql.clear;
          dm.sqlconsulta.sql.text := 'select cast(sum(MVCXN2VLRCRED) - COALESCE((select sum(MVCXN2VLRDEB) from MOVIMENTOCAIXA'
                                    +' inner join OPERACAOCAIXA on OPERACAOCAIXA.OPCXICOD = MOVIMENTOCAIXA.OPCXICOD'
                                    + ' where OPCXA5SIGLA = ' + QuotedStr('SANGR')
                                    + ' and MOVIMENTOCAIXA.TERMICOD = ' + DM.SQLTerminalAtivoTERMICOD.AsString
                                    + ' and MOVIMENTOCAIXA.MVCXDMOV = ''' + FormatDateTime('mm/dd/yyyy', Now) + ''''
                                    + ' ),0)as numeric(15,2)) TOTAL_SANGRIA'
                                    + ' from MOVIMENTOCAIXA'
                                    + ' inner join OPERACAOCAIXA on OPERACAOCAIXA.OPCXICOD = MOVIMENTOCAIXA.OPCXICOD'
                                    + ' where OPERACAOCAIXA.OPCXA5SIGLA <> ' + QuotedStr('SANGR')
                                    + ' and MOVIMENTOCAIXA.TERMICOD = ' + DM.SQLTerminalAtivoTERMICOD.AsString
                                    + ' and MOVIMENTOCAIXA.MVCXDMOV = ''' + FormatDateTime('mm/dd/yyyy', Now) + '''';
          dm.sqlConsulta.Open;
          if dm.sqlconsulta.fieldbyname('TOTAL_SANGRIA').AsFloat > DM.SQLTerminalAtivoVALOR_LIMITE_SANGRIA.AsFloat then
          begin
           InformaG('Valor limite para sangria excedido!');
          end;
        end;

            { exit ;}
      end;
    VK_F4: begin
             //CANCELAMENTO DE ITENS
             //ESTE TESTE FOI COLOCADO PARA N�O ENTRAR NESTA ROTINA QUANDO FOR
             //TECLADO Alt+F4 para finalizar PDV
        if ssAlt in Shift then
          exit;

        if TerminalModo = 'C' then
        begin
          TestaStatusCaixa;
          if VerCaixa then
            exit;
        end;

        if (EstadoPDVChk <> InformandoItens) then
        begin
          InformaG('O cancelamento s� pode ser aplicado quando o sistema est� solicitando itens!');
          EntradaDados.SelectAll;
          exit;
        end;

        if not dm.SQLUsuario.Active then
          DM.SQLUsuario.Open;

        if DM.SQLUsuario.Locate('USUAICOD', UsuarioCorrente, []) then
          if DM.SQLUsuario.FieldByName('USUACCANCITEMVENDA').AsString <> 'S' then
          begin
                   // MANDA DADOS DISPLAY TECLADO
            if TecladoReduzidoModelo = 'TEC44DIS' then
              EnviaTecladoTextoDisplay44('Sem permissao para cancelar item', '');
            if TecladoReduzidoModelo = 'TEC65' then
              EnviaTecladoTextoDisplay65('Sem permissao para cancelar item', '');

            RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome, 'USUACCANCITEMVENDA', RetornoUser);
            if RetornoCampoUsuario <> 'S' then
            begin
              EntradaDados.SelectAll;
              Exit;
            end;
          end;

        EstadoPDVChkAnt := EstadoPDVChk;
        EstadoPDVChk := CancelandoItem;
        PreparaEstadoBalcao(EstadoPDVChk);
        if EstadoPDVChkAnt = InformandoItens then
        begin
          SQLItensVendaTemp.Last;
          EntradaDados.Text := SQLItensVendaTempNUMITEM.AsString;
        end;

        EntradaDados.SelectAll;
      end;
    VK_F5: begin
             { Key := 0;
             E_Orcamento := true ;
             FormKeyDown(Sender, F3, [ssAlt]); }
        Application.CreateForm(TFormTelaDadosCliente, FormTelaDadosCliente);
        FormTelaDadosCliente.ShowModal;
        if FormTelaDadosCliente.modalResult = MrOk then
        begin
          GravarOrcamento;
          GravarItensOrcamento;
          if (DM.SQLTerminalAtivoTERMCIMPPREVENDA.Value = 'S') then
          begin
            GravarTabelaTempImpOrcamento(DM.CodNextOrc, DM.SQLPedidoOrcamento, DM.SQLPedidoOrcamentoItem);
            Application.CreateForm(TFormTelaImpressaoPreVenda, FormTelaImpressaoPreVenda);
            FormTelaImpressaoPreVenda.ImprimeClick(nil);
          end;

          CancelarVenda;
          LimparVariaveis;
          VlrBonusTroca := 0;
          ValorBonusTroca.Value := 0;
          VendedorVenda := 0;
          rxVendedor.Caption := '';
          rxVendedor.update;

          InformaG('OR�AMENTO FINALIZADO COM SUCESSO');

          EstadoPDVChk := 'AguardandoNovaVenda';
          PreparaEstadoBalcao(FormTelaItens.EstadoPDVChk);

        end;
      end;
    VK_F6: begin
        PreVendaRimp := InputBox('Re-Imprimir Pr�-Venda', 'Informe o Cupom', '');
        if SQLLocate('CUPOM', 'CUPOA13ID', 'CUPOCSTATUS', '''' + PreVendaRimp + '''') = '' then
        begin
          VarValorTroco := 0;
          VarValorRecebido := 0;
          InformaG('Cupom n�o encontrado!');
          EntradaDados.SelectAll;
          exit;
        end;

        GravarTabelaTempImpPreVendaDeCupom(PreVendaRimp, nil, nil, DM.SQLCup, DM.SQLCupomIt, 0, 'S');
      end;
    VK_F7: begin //DESCONTO NO ITEM
        AplicarDescontoItem := True;
        EstadoPDVChk := InformandoItens;
        PreparaEstadoBalcao(EstadoPDVChk);

             {if TerminalModo = 'C' then
               begin
                 TestaStatusCaixa ;
                 if VerCaixa then
                   exit ;
               end ;
             if ECFAtual = 'SIGTRON FS300' then
               begin
                 InformaG('A Impressora Fiscal SIGTRON FS300 n�o aceita desconto por produto, somente no total da venda!') ;
                 Abort;
               end;
             if EstadoPDVChk <> InformandoItens then
               begin
                 InformaG('O desconto s� pode aplicado quando o sistema est� solicitando itens!') ;
                 EntradaDados.SelectAll ;
                 exit ;
               end ;
             // MANDA DADOS DISPLAY TECLADO
             IF TecladoReduzidoModelo = 'TEC44DIS' THEN
               EnviaTecladoTextoDisplay44('Escolha o Tipo do Desconto?','(Valor ou Percentual)');
             IF TecladoReduzidoModelo = 'TEC65' THEN
               EnviaTecladoTextoDisplay65('Escolha o Tipo do Desconto?','(Valor ou Percentual)');
             Application.CreateForm(TFormTelaTipoDescontoItem, FormTelaTipoDescontoItem) ;
             FormTelaTipoDescontoItem.ShowModal ;
             if TipoDescItem = '' then
               Exit ;
             EstadoPDVChkAnt := EstadoPDVChk ;
             if TipoDescItem = 'VALOR' then
               EstadoPDVChk := DescontoVlrItem ;
             if TipoDescItem = 'PERCENTUAL' then
               EstadoPDVChk := DescontoPercItem ;
             PreparaEstadoBalcao(EstadoPDVChk) ;}
      end;
    VK_F8: begin //RECEBIMENTO DE CREDI�RIO
        if TerminalModo = 'P' then
        begin
          InformaG('N�o � poss�vel receber presta��es em um terminal que est� operando como Pr�-Venda!');
          EntradaDados.SelectAll;
          Exit;
        end;

        if TerminalModo = 'C' then
        begin
          TestaStatusCaixa;
          if VerCaixa then
            exit;
        end;

        if EstadoPDVChk = InformandoItens then
        begin
          InformaG('O recebimento de credi�rio s� pode ser feito quando o sistema estiver aguardando nova venda!');
          EntradaDados.SelectAll;
          exit;
        end;

             // MANDA DADOS DISPLAY TECLADO
        if TecladoReduzidoModelo = 'TEC44DIS' then
          EnviaTecladoTextoDisplay44('Tela para Recbto de Crediario...', '');
        if TecladoReduzidoModelo = 'TEC65' then
          EnviaTecladoTextoDisplay65('Tela para Recbto de Crediario...', '');

        Application.CreateForm(TFormTelaRecebimentoCrediario, FormTelaRecebimentoCrediario);
        FormTelaRecebimentoCrediario.ShowModal;
      end;
    VK_F9: begin //IMPORTAR PR�-VENDA
        if EstadoPDVChk = InformandoItens then
        begin
          InformaG('O sistema deve estar AGUARDANDO NOVA VENDA para poder importar uma Pr�-Venda!');
          EntradaDados.SelectAll;
          Exit;
        end;
        if TerminalModo = 'C' then
        begin
          TestaStatusCaixa;
          if VerCaixa then
            exit;
          vImportarPrevenda := True;
          ContinuarPreVenda := False;
          ReativarPreVenda := False;
          if EntradaDados.Text <> '' then
            NomeClienteVenda := EntradaDados.Text
          else
            NomeClienteVenda := '';
          Application.CreateForm(TFormTelaImportarPreVenda, FormTelaImportarPreVenda);
          FormTelaImportarPreVenda.ShowModal;
          EntradaDados.SetFocus;
        end
        else
        begin
          InformaG('N�o � poss�vel importar uma Pr�-Venda em um terminal que est� operando como Pr�-Venda!');
          EntradaDados.SelectAll;
          Exit;
        end;
      end;
    VK_F10: begin
             // MANDA DADOS DISPLAY TECLADO
        if TecladoReduzidoModelo = 'TEC44DIS' then
          EnviaTecladoTextoDisplay44('Tela para Consulta de Cupons Emitidos...', '');
        if TecladoReduzidoModelo = 'TEC65' then
          EnviaTecladoTextoDisplay65('Tela para Consulta de Cupons Emitidos...', '');
        CriaFormulario(TFormCadastroCupom,
          'FormCadastroCupom',
          False,
          False,
          False,
          '');
      end;
    VK_F11: begin
             // MANDA DADOS DISPLAY TECLADO
        if TecladoReduzidoModelo = 'TEC44DIS' then
          EnviaTecladoTextoDisplay44('Tela para Cadastro de Cliente...', '');
        if TecladoReduzidoModelo = 'TEC65' then
          EnviaTecladoTextoDisplay65('Tela para Cadastro de Cliente...', '');

        if DM.SQLUsuario.Locate('USUAICOD', UsuarioCorrente, []) then
          if DM.SQLUsuario.FieldByName('USUACPVERCLICASH').AsString <> 'S' then
          begin
            if Pergunta('SIM', 'Voc� n�o tem permiss�o para abrir Cadastro de Clientes. Deseja Informar Outro Usu�rio?') then
            begin
              RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome, 'USUACPVERCLICASH', RetornoUser);
              if RetornoCampoUsuario <> 'S' then
              begin
                EntradaDados.SelectAll;
                Exit;
              end
              else
              begin
                if CriaFormulario(TFormCadastroCliente,
                  'FormCadastroCliente',
                  False,
                  True,
                  False,
                  '',
                  True) = 2 then
                  rxClienteNome.caption := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA60RAZAOSOC', '''' + ClienteVenda + '''');
              end;
            end;
          end
          else
          begin
            if CriaFormulario(TFormCadastroCliente,
              'FormCadastroCliente',
              False,
              True,
              False,
              '',
              True) = 2 then
              rxClienteNome.caption := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA60RAZAOSOC', '''' + ClienteVenda + '''');
          end;
      end;
    VK_F12: begin     


        if (TerminalModo = 'P') and (ECFAtual = '') then
        begin
          InformaG('O sistema n�o pode movimentar caixa em um terminal que est� operando como Pr�-Venda!');
          EntradaDados.SelectAll;
          Exit;
        end;

        if EstadoPDVChk = InformandoItens then
        begin
          InformaG('O sistema n�o pode movimentar caixa enquanto est� solicitando �tens!');
          EntradaDados.SelectAll;
          Exit;
        end;
             // MANDA DADOS DISPLAY TECLADO
        if TecladoReduzidoModelo = 'TEC44DIS' then
          EnviaTecladoTextoDisplay44('Escolha uma Operacao de Caixa...', '');
        if TecladoReduzidoModelo = 'TEC65' then
          EnviaTecladoTextoDisplay65('Escolha uma Operacao de Caixa...', '');

        Application.CreateForm(TFormTelaMovimentoCaixa, FormTelaMovimentoCaixa);
        Dm.SQLTerminalAtivo.Close;
        Dm.SQLTerminalAtivo.Open;
        FormTelaMovimentoCaixa.EditData.Date := Date;
        FormTelaMovimentoCaixa.ShowModal;


             {Testa pra ver se tem caminho ao Servidor para definir se o PDV � Offline}
        if dm.ConectaServidor then
          shpStatusServidor.Brush.Color := clLime
        else
          shpStatusServidor.Brush.Color := clRed;
      end;
    VK_SCROLL: begin
        TelaConsultaPlacaCliente := TTelaConsultaPlacaCliente.Create(Self);
        TelaConsultaPlacaCliente.ShowModal;
      end;

  else
    if ssCtrl in Shift then
    begin
      case Upcase(Char(Key)) of
        'A': begin
            if FileExists('c:\easy2solutions\gestao\vertebralle.txt') then exit;

            CriaFormulario(TFormTelaConsultaSaldoPorEmpresa,
              'FormTelaConsultaSaldoPorEmpresa',
              False,
              False,
              True,
              '');
          end;
          // Mostra o Lucro da Venda para avaliar se pode ser dado algum desconto adicional
        'B': begin
            if CurSubTotal.Value > 0 then
              if DM.SQLUsuario.Locate('USUAICOD', UsuarioCorrente, []) then
                if DM.SQLUsuario.FieldByName('USUACVISULUCVEND').AsString <> 'S' then
                begin
                  if Pergunta('SIM', 'Voc� n�o tem permiss�o para acessar os dados com os totais da venda. Deseja Informar Outro Usu�rio?') then
                  begin
                    RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome, 'USUACVISULUCVEND', RetornoUser);
                    if RetornoCampoUsuario = 'S' then
                    begin
                      ValorItem := 0;
                      ValorCustoTotal := 0;
                      Application.CreateForm(TFormTelaLucro, FormTelaLucro);
                      SQLItensVendaTemp.DisableControls;
                      SQLItensVendaTemp.First;
                      while not SQLItensVendaTemp.EOF do
                      begin
                        if SQLItensVendaTempTROCA.Value <> 'S' then
                        begin
                          ValorItem := ValorItem + SQLItensVendaTempVLRTOTAL.AsFloat;
                          ValorCustoTotal := ValorCustoTotal + (SQLItensVendaTempVLRCUSTO.Value * SQLItensVendaTempQUANTIDADE.Value);
                        end;
                        SQLItensVendaTemp.Next;
                        Application.ProcessMessages;
                      end;
                      FormTelaLucro.LbVlrTotalVenda.Caption := FormatFloat('R$ ##0.00', ValorItem);
                      FormTelaLucro.LBVlrTotalCusto.Caption := FormatFloat('R$ ##0.00', ValorCustoTotal);
                      ValorLucroTotal := ValorItem - ValorCustoTotal;
                      FormTelaLucro.LBVlrLucro.Caption := FormatFloat('R$ ##0.00', ValorLucroTotal);
                                // Uso a mesma Variavel pra achar a Margem de lucro, pra nao ter q criar outra variavel
                      ValorLucroTotal := ((ValorItem / ValorCustoTotal) - 1) * 100;
                      FormTelaLucro.LBMargem.Caption := FormatFloat('##0.00 %', ValorLucroTotal);
                      FormTelaLucro.ShowModal;
                      SQLItensVendaTemp.EnableControls;
                    end;
                  end;
                end
                else
                begin
                  ValorItem := 0;
                  ValorCustoTotal := 0;
                  Application.CreateForm(TFormTelaLucro, FormTelaLucro);
                  SQLItensVendaTemp.DisableControls;
                  SQLItensVendaTemp.First;
                  while not SQLItensVendaTemp.EOF do
                  begin
                    if SQLItensVendaTempTROCA.Value <> 'S' then
                    begin
                      ValorItem := ValorItem + SQLItensVendaTempVLRTOTAL.AsFloat;
                      ValorCustoTotal := ValorCustoTotal + (SQLItensVendaTempVLRCUSTO.Value * SQLItensVendaTempQUANTIDADE.Value);
                    end;
                    SQLItensVendaTemp.Next;
                    Application.ProcessMessages;
                  end;
                  FormTelaLucro.LbVlrTotalVenda.Caption := FormatFloat('R$ ##0.00', ValorItem);
                  FormTelaLucro.LBVlrTotalCusto.Caption := FormatFloat('R$ ##0.00', ValorCustoTotal);
                  ValorLucroTotal := ValorItem - ValorCustoTotal;
                  FormTelaLucro.LBVlrLucro.Caption := FormatFloat('R$ ##0.00', ValorLucroTotal);
                  FormTelaLucro.ShowModal;
                  SQLItensVendaTemp.EnableControls;
                end;
          end;
          //Gravar Prevenda sem estar completa para pode reabrila em outro terminal
        'C': begin
            if (EstadoPDVChk = InformandoItens) and (TerminalModo = 'P') and (dm.sqlterminalativoTERMCSOLCODVEND.value = 'S') then
            begin
                     // Informa Vendedor
              if (VendedorVenda < 1) then
              begin
                try
                  VendedorVenda := StrToInt(InputBox('Informar o Vendedor', 'Digite o c�digo do vendedor', ''));
                except
                  Application.ProcessMessages;
                end;
                if VendedorVenda > 0 then
                begin
                  rxVendedor.Caption := SQLLocate('VENDEDOR', 'VENDICOD', 'VENDA60NOME', IntToStr(VendedorVenda));
                  rxVendedor.Update;
                end
                else
                begin
                  rxVendedor.Caption := 'N�o Encontrado';
                  rxVendedor.Update;
                  exit;
                end;
              end;
              if SQLItensVendaTemp.IsEmpty then
              begin
                exit;
              end;
              if Pergunta('SIM', 'Deseja gravar a Prevenda atual!') and (VendedorVenda > 0) and (dm.sqlterminalativoTERMCSOLCODVEND.value = 'S') then
              begin
                if (ClienteVenda = '') and (dm.SQLTerminalAtivoCLIEA13ID.Value <> '') then
                begin
                  ClienteVenda := dm.SQLTerminalAtivoCLIEA13ID.Value;
                  UsaPrecoVenda := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIECTPPRCVENDA', '''' + ClienteVenda + '''');
                end;

                if (PlanoVenda = NULL) or (PlanoVenda = 0) then
                  PlanoVenda := dm.SQLTerminalAtivoPLRCICOD.Value;

                Application.CreateForm(TFormTelaFechamentoVenda, FormTelaFechamentoVenda);
                GravaPrevendaSemFinanceiro := True;
                FormTelaFechamentoVenda.GravarPreVenda;
                FormTelaFechamentoVenda.GravarItensPreVenda;
                         // Se ja tiver importado uma prevenda antes tem que Marcar como Cancelada pra nao aparecer mais
                         // na lista de Prevendas pendentes
                if PedidosImportados <> '' then
                begin
                  FormTelaFechamentoVenda.TermCod := Copy(PedidosImportados, 1, Pos('-', PedidosImportados) - 1);
                  FormTelaFechamentoVenda.PrvCod := Copy(PedidosImportados, Pos('-', PedidosImportados) + 1, 6);
                  Delete(PedidosImportados, 1, Pos('-', PedidosImportados) + 7);
                  DM.SQLTemplate.Close;
                  DM.SQLTemplate.SQL.Clear;
                  DM.SQLTemplate.SQL.Add('Update PREVENDA');
                  DM.SQLTemplate.SQL.Add('Set PRVDCIMPORT = ''C''');
                  DM.SQLTemplate.SQL.Add('Where');
                  DM.SQLTemplate.SQL.Add('TERMICOD = ' + FormTelaFechamentoVenda.TermCod + ' And ');
                  DM.SQLTemplate.SQL.Add('PRVDICOD = ' + FormTelaFechamentoVenda.PrvCod);
                  DM.SQLTemplate.ExecSQL;
                end;

                         // MOSTRA INFORMACOES AO USUARIO ANTES DE FECHAR A TELA DE FECHAMENTO DE VENDA
                if (TerminalModo = 'P') and (DM.SQLTerminalAtivoTERMCMOSTRAIDCUPOM.AsString = 'S') and (not E_Orcamento) then
                begin
                  LblInstrucoes.Caption := 'PR�-VENDA FINALIZADA COM SUCESSO !';
                  LblInstrucoes.Refresh;
                  InformaG('ANOTE O C�DIGO DESTA PR�-VENDA :' + #13 + '* * * [ ' + intToStr(TerminalAtual) + '.' + intToStr(CodNextPreVenda) + ' ] * * *');
                end;

                CancelarVenda;
                LimparVariaveis;
                VlrBonusTroca := 0;
                ValorBonusTroca.Value := 0;
                VendedorVenda := 0;
                rxVendedor.Caption := '';
                rxVendedor.update;

                EstadoPDVChk := 'AguardandoNovaVenda';
                PreparaEstadoBalcao(FormTelaItens.EstadoPDVChk);
              end;
            end;

//                EstadoPDVChk := InformandoConvenio ;
//                PreparaEstadoBalcao(EstadoPDVChk) ;
          end;
          //DESTRAVAR IMPRESSORA
        'D': begin
            if LblInstrucoes.Caption = 'LblInstrucoes' then
            begin
              SQLItensVendaTemp.Close;
              try
                SQLItensVendaTemp.DeleteTable;
                SQLItensVendaTemp.CreateTable;
              except
                SQLItensVendaTemp.CreateTable;
              end;
              SQLItensVendaTemp.Open;
            end;

            RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome, 'USUCDESTRIMPFISC', RetornoUser);
            if RetornoCampoUsuario = 'S' then
            begin
              if (ECFAtual <> '') and (copy(EcfAtual, 1, 4) <> 'NFCE') then
              begin
                if ECFAtual = 'URANO_1EFC' then
                begin
                  EstadoPDVChkAnt := EstadoFechVenda;
                  EstadoFechVenda := 'ECF';
                  CancelarCupomFiscal(ECFAtual, PortaECFAtual);
                  EstadoFechVenda := EstadoPDVChkAnt;
                end;
                if CancelarCupomFiscal(ECFAtual, PortaECFAtual) then
                  Exit;
                if Leitura_X(ECFAtual, PortaECFAtual) then
                  Exit;
                if FechamentoRelatorioGerencial(ECFAtual, PortaECFAtual) then
                  Exit;
                if FecharCNFV(ECFAtual, PortaECFAtual) then
                  Exit;
                if FecharCNFNV(ECFAtual, PortaECFAtual) then
                  Exit;
              end;
            end;
          end;

          // CTRL + F => INFORMAR C�DIGO ANTIGO DOCUMENTO
          // CodigoAntigoCupom := InputBox('Informar C�digo Antigo Documento', 'Digite o c�digo antigo deste documento', '') ;

          // Desconto apos ter lancado o item e so funciona se nao tiver ecf.
        'F': begin
            if ECFAtual <> '' then
            begin
              InformaG('Desconto ap�s ter passado o produto n�o funciona para terminais com ECF instalados!');
              EntradaDados.Clear;
              exit;
            end;

                // Informar o Item que recebera o Desconto
            NroCupomFiscal := InputBox('Aten��o!', 'Informe o Item que receber� o Desconto?', '');
            if not SQLItensVendaTemp.Locate('NUMITEM', NroCupomFiscal, []) then
            begin
              InformaG('O Item informado nao foi encontrado!');
              EntradaDados.Clear;
              exit;
            end;


                // Chamar tela para informar o tipo de desconto
            Application.CreateForm(TFormTelaTipoDescontoItem, FormTelaTipoDescontoItem);
            FormTelaTipoDescontoItem.ShowModal;
            if FormTelaTipoDescontoItem.EditDesconto.Value > 0 then
            begin
              if FormTelaTipoDescontoItem.DescValor.Checked then
                DescItemVlr := FormTelaTipoDescontoItem.EditDesconto.Value
              else
              begin
                DescItemPerc := FormTelaTipoDescontoItem.EditDesconto.Value;
                DescItemVlr := (SQLItensVendaTempVLRTOTAL.Value) * (DescItemPerc / 100);
                DescItemVlr := StrToFloat(Copy(FloatToStr(DescItemVlr), 1, Pos(',', FloatToStr(DescItemVlr)) + 2));
              end;
            end;

                // Para que o Desconto seja Multiplicado pela Qtde Vendida
            if (SQLItensVendaTempQUANTIDADE.Value > 1) and (DescItemVlr > 0) then
            begin
              DescItemVlrUnitario := 0;
              DescItemVlrUnitario := DescItemVlr / SQLItensVendaTempQUANTIDADE.Value;
              DescItemVlr := DescItemVlrUnitario * SQLItensVendaTempQUANTIDADE.Value;
            end;

                // Testar se o desconto nao � maior que o total do item
            if DescItemVlrUnitario > SQLItensVendaTempVLRTOTAL.Value then
            begin
              Informa('O valor do desconto informado � maior que o valor do item!');
              EntradaDados.Clear;
              exit;
            end;

                // Testar se o usuario pode dar o desconto
            if ((DescItemVlr / SQLItensVendaTempVLRTOTAL.Value) * 100) > PercDesqMaxUsario then
            begin
              DescItemPerc := (DescItemVlr / SQLItensVendaTempVLRTOTAL.Value) * 100;

              if Pergunta('SIM', 'Voc� n�o tem permiss�o de dar este percentual de desconto. Deseja Informar Outro Usu�rio?') then
              begin
                RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome, 'USUAN2PERCDESC', RetornoUser);
                if RetornoCampoUsuario <> '' then
                begin
                  if StrToInt(RetornoCampoUsuario) >= DescItemPerc then
                  begin
                    EntradaDados.Clear;
                  end
                  else
                  begin
                    Informa('Voc� n�o tem permiss�o de dar este percentual de desconto!');
                    EntradaDados.Clear;
                    exit;
                  end;
                end
                else
                begin
                  EntradaDados.Clear;
                  exit;
                end;
              end
              else
              begin
                EntradaDados.Clear;
                Exit;
              end;
            end;

                // Gravar na tabela temporaria
            SQLItensVendaTemp.Edit;
            SQLItensVendaTempVLRDESC.AsFloat := StrToFloat(FormatFloat('0.00', DescItemVlr));
            SQLItensVendaTempVLRTOTAL.Value := (SQLItensVendaTempVLRUNITBRUT.Value * SQLItensVendaTempQUANTIDADE.Value) - SQLItensVendaTempVLRDESC.Value;
            SQLItensVendaTempBASEICMS.asFloat := SQLItensVendaTempVLRTOTAL.AsFloat;
            SQLItensVendaTempALIQUOTA.AsFloat := RetornaAliquotaICMSProduto(SQLProdutoICMSICOD.AsInteger);
            SQLItensVendaTempVLRICMS.Value := SQLItensVendaTempBASEICMS.asFloat * (SQLItensVendaTempALIQUOTA.AsFloat / 100);
            SQLItensVendaTemp.post;

            CalculaTotal;

                // Zerar variaveis e Retornar ao Edit principal;
            DescItemVlr := 0; DescItemPerc := 0; DescItemVlrUnitario := 0;
            VoltaParaEntradaDados;
          end;
          // ABRIR GAVETA
        'G': begin
            if DM.SQLUsuario.Locate('USUAICOD', UsuarioCorrente, []) then
              if DM.SQLUsuario.FieldByName('USUACBLOQCTRLG').AsString = 'S' then
              begin
                if Pergunta('SIM', 'Voc� n�o tem permiss�o para abrir a gaveta manualmente. Deseja Informar Outro Usu�rio?') then
                begin
                  RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome, 'USUACBLOQCTRLG', RetornoUser);
                  if RetornoCampoUsuario <> '' then
                  begin
                    if RetornoCampoUsuario <> 'S' then
                    begin
                      if (PortaECFAtual <> '') and (ECFAtual = '') then
                      begin
                        if not DM.SQLECF.Active then DM.SQLECF.Open;
                        DM.SQLECF.First;
                        while not DM.SQLECF.Eof do
                        begin
                          try
                            if AbrirGaveta(DM.SQLECFECFA30MODELO.AsString, PortaECFAtual) then
                                            //         DM.SQLECF.Last;
                          except
                            Application.ProcessMessages;
                          end;
                          DM.SQLECF.Next;
                        end;
                      end;
                      if (ECFAtual <> '') and (copy(EcfAtual, 1, 4) <> 'NFCE') then
                        AbrirGaveta(ECFAtual, PortaECFAtual);

                      if ImpNaoFiscalAtual <> '' then
                        AbrirGaveta_NAOFISCAL(ImpNaoFiscalAtual, PortaImpNaoFiscalAtual);

                      if FileExists('GAVETA.EXE') then
                        WinExec(Pchar('GAVETA.EXE'), sw_Show);

                      if (EcfAtual = 'NFCE DR800') and not (FileExists('GAVETA.EXE')) then
                      begin
                        dm.ACBrPosPrinter.Device.Desativar;
                        dm.ACBrPosPrinter.Device.Ativar;
                        try
                          dm.ACBrPosPrinter.AbrirGaveta;
                        except
                          Application.ProcessMessages;
                        end;
                      end;

                      UsuarioAutorizouOperacao := '';
                    end
                    else
                    begin
                      Informa('Voc� n�o tem permiss�o para abrir a gaveta manualmente');
                      exit;
                    end;
                  end;
                end
                else
                  Exit;
              end
              else
              begin
                if (PortaECFAtual <> '') and (ECFAtual = '') then
                begin
                  if not DM.SQLECF.Active then DM.SQLECF.Open;
                  DM.SQLECF.First;
                  while not DM.SQLECF.Eof do
                  begin
                    try
                      if AbrirGaveta(DM.SQLECFECFA30MODELO.AsString, PortaECFAtual) then
                        //          DM.SQLECF.Last;
                    except
                      Application.ProcessMessages;
                    end;
                    DM.SQLECF.Next;
                  end;
                end;
                if (ECFAtual <> '') and (copy(EcfAtual, 1, 4) <> 'NFCE') then
                  AbrirGaveta(ECFAtual, PortaECFAtual);

                if ImpNaoFiscalAtual <> '' then
                  AbrirGaveta_NAOFISCAL(ImpNaoFiscalAtual, PortaImpNaoFiscalAtual);

                if FileExists('GAVETA.EXE') then
                  WinExec(Pchar('GAVETA.EXE'), sw_Show);

                if (EcfAtual = 'NFCE DR800') and not (FileExists('GAVETA.EXE')) then
                begin
                  dm.ACBrPosPrinter.Device.Desativar;
                  dm.ACBrPosPrinter.Device.Ativar;
                  try
                    dm.ACBrPosPrinter.AbrirGaveta;
                  except
                    Application.ProcessMessages;
                  end;
                end;

                    // Gravar Movimento de Caixa mostrando Abertura de Gaveta Avulso
                    {  DM.SQLTemplate.Close ;
                      DM.SQLTemplate.SQL.Clear ;
                      DM.SQLTemplate.SQL.Add('select OPCXICOD from OPERACAOCAIXA') ;
                      DM.SQLTemplate.SQL.Add('where OPCXA5SIGLA = ''ABGAV''') ;
                      DM.SQLTemplate.Open ;
                      if not DM.SQLTemplate.IsEmpty then
                        GravaMovimentoCaixa(DM.SQLTotalizadorCaixa,
                                            DM.SQLTotalizar,
                                            EmpresaPadrao,//WEMPRICOD
                                            IntToStr(TerminalAtual),//WTERMICOD
                                            FormatDateTime('mm/dd/yyyy', Now),//WMVCIXDMOV
                                            'Null',//WNUMEICOD
                                            DM.SQLTemplate.FieldByName('OPCXICOD').AsString,//WOPCXICOD
                                            IntToStr(DM.UsuarioAtual),//WUSUAICOD
                                            'Abre Manual',//WMVCIXA15DOCORIG
                                            CurSubTotal.Value,//WMOVICAIXN2VLR
                                            0,//WMOVICAIXN2VLRJURO
                                            0,//WMOVICAIXN2VLRMULTA
                                            0,//WMOVICAIXN2VLRDEC
                                            'Null',//WMOVICAIXA6NUMCUPOM
                                            '',//WTIPO
                                            UsuarioAtualNome+'/'+ UsuarioAutorizouOperacao,//WMVCXA255HIST
                                            'N',
                                            ''); }
              end;
          end;
          //CALCULADORA ATIVAR/DESATIVAR
        'H': begin
            RxCalc.Execute;
          end;
        'E': begin
                {CriaFormulario(TFormCadastroProfExterno,
                'FormCadastroProfExterno',
                False,
                False,
                True,
                '');}
          end;
          //INFORMAR ITEM TROCA
        'I': begin
            if DM.SQLUsuario.Locate('USUAICOD', UsuarioCorrente, []) then
              if DM.SQLUsuario.FieldByName('USUACPERMITETROCA').AsString <> 'S' then
                if Pergunta('SIM', 'Voc� n�o tem permiss�o para Trocar Mercadorias. Deseja Informar Outro Usu�rio?') then
                begin
                  RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome, 'USUACPERMITETROCA', RetornoUser);
                  if RetornoCampoUsuario <> 'S' then
                  begin
                    EntradaDados.SelectAll;
                    Exit;
                  end;
                end
                else
                begin
                  EntradaDados.SelectAll;
                  Exit;
                end;

            if DM.SQLConfigVendaOPESICODTROCA.AsString = '' then
            begin
              InformaG('A Opera��o de Estoque para Troca n�o foi configurada. n�o ser� poss�vel informa item(ns) de troca!');
              EntradaDados.SelectAll;
              Exit;
            end;

            if (EstadoPDVChk <> InformandoItens) and
              (EstadoPDVChk <> InformandoItensTroca) then
            begin
              InformaG('Esta rotina s� pode ser executada enquanto est� solicitando �tens!');
              EntradaDados.SelectAll;
              Exit;
            end;

            if (EstadoPDVChk = InformandoItensTroca) then
            begin
              TrocandoItens := False;
              EstadoPDVChk := InformandoItens;
              PreparaEstadoBalcao(EstadoPDVChk);
              exit;
            end;

            TrocandoItens := true;
            LblBonusTroca.Visible := True;
            LblBonusTroca.Update;
            ValorBonusTroca.Visible := True;
            ValorBonusTroca.Update;

            EstadoPDVChk := InformandoItensTroca;
            PreparaEstadoBalcao(EstadoPDVChk);
          end;
          //TELA ORCAMENTO
        'J': begin
                //MouseShowCursor(True);
                //if EstadoPDVChk = 'AguardandoNovaVenda' then
                //  CriaFormulario(TFormCadastroPedidoVenda,'FormCadastroPedidoVenda',False,False,False,' Checkout ');
          end;
          // INFORMAR DESCRI��O T�CNICA DO PRODUTO
        'L': begin
                //MouseShowCursor(True);
            if (EstadoPDVChk = 'InformandoItens') and (not SQLItensVendaTemp.IsEmpty) then
            begin
              EstadoPDVChk := 'InformandoDescricaoTecnica';
              PreparaEstadoBalcao('InformandoDescricaoTecnica');
            end
            else
            begin
              Informa('A descri��o t�cnica dos produtos s� pode ser alterada quando o sistema estiver vendendo �tens...');
              PreparaEstadoBalcao('InformandoItens');
            end;
          end;
          //TELA MARCACAO CONSULTA
        'M': begin
            if EstadoPDVChk = 'AguardandoNovaVenda' then
              CriaFormulario(TFormTelaMarcacaoConsulta, 'FormTelaMarcacaoConsulta', False, False, True, '');
          end;
          //VER ITENS INCLUIDOS NO CUPOM
        'N': begin
            Application.CreateForm(TFormTelaItensIncluidosCupom, FormTelaItensIncluidosCupom);
            if EstadoPDVChk = InformandoItens then
              FormTelaItensIncluidosCupom.DBGrid.DataSource := FormTelaItens.DSSQLIntensVenda;
            FormTelaItensIncluidosCupom.ShowModal;
          end;
          //TROCAR QUANTIDADE
        'Q': begin
            ExecutarCtrlQ;
          end;
          //TROCAR PRECO ITEM
        'P': begin
            if (EstadoPDVChk <> InformandoItens) then
            begin
              InformaG('A altera��o do valor do item s� pode aplicada quando o sistema est� solicitando itens!');
              EntradaDados.SelectAll;
              exit;
            end;


            if DM.SQLUsuario.Locate('USUAICOD', UsuarioCorrente, []) then
              if DM.SQLUsuario.FieldByName('USUACALTVLRVENDA').AsString <> 'S' then
                if Pergunta('SIM', 'Voc� n�o tem permiss�o para trocar o valor do produto! Deseja Informar Outro Usu�rio?') then
                begin
                  RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome, 'USUACALTVLRVENDA', RetornoUser);
                  if RetornoCampoUsuario <> 'S' then
                  begin
                    InformaG('Usu�rio sem poder para alterar o pre�o durante a venda!');
                    EntradaDados.SelectAll;
                    Exit;
                  end
                end
                else
                  Exit;

            SolicitarPreco := true;
            SolicitarPrecoQDeveriaSerVendido := true;
            PreparaEstadoBalcao(EstadoPDVChk);
          end;
        'R': begin
            if DM.SQLUsuario.Locate('USUAICOD', UsuarioCorrente, []) then
              if DM.SQLUsuario.FieldByName('USUACPERMRESUCX').AsString <> 'S' then
                if Pergunta('SIM', 'Voc� n�o tem permiss�o para ver relatorio de caixa! Deseja Informar Outro Usu�rio?') then
                begin
                  RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome, 'USUACPERMRESUCX', RetornoUser);
                  if RetornoCampoUsuario <> 'S' then
                  begin
                    InformaG('Usu�rio sem poder para ver relatorio de caixa!');
                    EntradaDados.SelectAll;
                    Exit;
                  end
                end
                else
                  Exit;

               { if FileExists('Posto.txt') then
                  begin
                    Application.CreateForm(TFormTelaPrestacaoContas, FormTelaPrestacaoContas) ;
                    FormTelaPrestacaoContas.ShowModal ;
                  end;  }

            Application.CreateForm(TFormPrincipalRelatorios, FormPrincipalRelatorios);
            FormPrincipalRelatorios.ShowModal;
          end;
        'S': begin {Tenta Sair do Sistema}
            if LblInstrucoes.Caption = 'LblInstrucoes' then
              Close;

            if (EstadoPDVChk <> AguardandoNovaVenda) then
            begin
              InformaG('S� � poss�vel sair do ' + Application.Title + ' enquanto est� aguardando nova venda!');
              EntradaDados.SelectAll;
              Exit;
            end;

            Close;
          end;
          //PROCURAR PELA REF FAZENDO COPY DE S� 08 CHAR
        'K': begin
            if not ProcuraProdutoPelaRef08Char then
            begin
              ProcuraProdutoPelaRef08Char := True;
              LblInstrucoes.Caption := 'Informe o Produto pelo CD Barras Especial';
              LblInstrucoes.Refresh;
            end
            else
            begin
              ProcuraProdutoPelaRef08Char := False;
              LblInstrucoes.Caption := 'Informe o Produto';
              LblInstrucoes.Refresh;
            end;
                // MANDA DADOS DISPLAY TECLADO
            if TecladoReduzidoModelo = 'TEC44DIS' then
              EnviaTecladoTextoDisplay44(LblInstrucoes.Caption, '');
            if TecladoReduzidoModelo = 'TEC65' then
              EnviaTecladoTextoDisplay65(LblInstrucoes.Caption, '');

            exit;
          end;

          //TROCA DE TERMINAL
        'T': begin
            if EstadoPDVChk <> AguardandoNovaVenda then
            begin
              InformaG('S� � poss�vel trocar o terminal enquanto est� aguardando nova venda!');
              EntradaDados.SelectAll;
              Exit;
            end;

            TerminalAnterior := TerminalAtual;

            FormTelaLogin := TFormTelaLogin.Create(Application);
            FormTelaLogin.Caption := 'Bem-Vindo ao ' + Application.Title;
            if FormTelaLogin.ShowModal <> idOk then
              exit;

                {Atualizar nome do Terminal}
            RxTerminal.Caption := TerminalAtualNome;
            RxTerminal.Update;

            SQLItensVendaTemp.Close;
            TabelaMaisTerminal := 'ItensVendaTemp_' + FormatFloat('###000', TerminalAtual);
            SQLItensVendaTemp.TableName := TabelaMaisTerminal;
            if not FileExists('Temp\' + TabelaMaisTerminal + '.db') then
              SQLItensVendaTemp.CreateTable;

            SQLItensVendaTemp.Open;
            if SQLItensVendaTemp.RecordCount < 1 then
            begin
              SQLItensVendaTemp.Close;
              try
                SQLItensVendaTemp.DeleteTable;
                SQLItensVendaTemp.CreateTable;
              except
                SQLItensVendaTemp.CreateTable;
              end;
              SQLItensVendaTemp.Open;
//                    TrancouVenda := False;
            end
            else
 //                 TrancouVenda := True;


                {if TerminalAnterior <> TerminalAtual then
                   DM.DesbloquearTerminal(IntToStr(TerminalAnterior)) ;}

              CodProxCntRecTemp := 0;
          end;
          //REATIVAR PRE VENDAS
        'U': begin
            if TerminalModo = 'C' then
            begin
              ReativarPreVenda := True;
              vImportarPreVenda := False;
              ContinuarPreVenda := False;
              Application.CreateForm(TFormTelaImportarPreVenda, FormTelaImportarPreVenda);
              FormTelaImportarPreVenda.LblNomeSistema.Caption := 'Reativar Pr�-Venda';
              FormTelaImportarPreVenda.DBGridLista.Columns.Items[3].Title.Caption := 'Marc';
            end
            else
            begin
              if EntradaDados.Text <> '' then
                NomeClienteVenda := EntradaDados.Text; // Filtra o Cliente
              if (dm.sqlterminalativoTERMCSOLCODVEND.value = 'S') then
              begin
                try
                  VendedorVenda := StrToInt(InputBox('Informar o Vendedor', 'Digite o c�digo do vendedor', ''));
                except
                  Application.ProcessMessages;
                end;
                if VendedorVenda > 0 then
                begin
                  rxVendedor.Caption := SQLLocate('VENDEDOR', 'VENDICOD', 'VENDA60NOME', IntToStr(VendedorVenda));
                  rxVendedor.Update;
                end
                else
                begin
                  rxVendedor.Caption := 'Vendedor:';
                  rxVendedor.Update;
                end;

                ContinuarPreVenda := True;
                ReativarPreVenda := False;
                vImportarPreVenda := False;
                Application.CreateForm(TFormTelaImportarPreVenda, FormTelaImportarPreVenda);
                FormTelaImportarPreVenda.LblNomeSistema.Caption := 'Continuar Pr�-Venda';
                FormTelaImportarPreVenda.DBGridLista.Columns.Items[3].Title.Caption := 'Marc';
              end
              else
              begin
                ContinuarPreVenda := True;
                ReativarPreVenda := False;
                vImportarPreVenda := False;
                Application.CreateForm(TFormTelaImportarPreVenda, FormTelaImportarPreVenda);
                FormTelaImportarPreVenda.LblNomeSistema.Caption := 'Continuar Pr�-Venda';
                FormTelaImportarPreVenda.DBGridLista.Columns.Items[3].Title.Caption := 'Marca';
              end;
            end;
            FormTelaImportarPreVenda.ShowModal;
          end;
          //IMPRIMIR VENDA
        'X': begin {Cttl X}
            DocumentoClienteVenda := '';
            if (ECFAtual <> '') then
            begin
              if not Pergunta('SIM', 'Imprimir Cupom da Ultima Venda ou Consultar Vendas Anteriores?') then
              begin
                IDReimprimir := '';
                Application.CreateForm(TFormTelaConsultaRapidaCupom, FormTelaConsultaRapidaCupom);
                FormTelaConsultaRapidaCupom.Cancelamento := False;
                FormTelaConsultaRapidaCupom.SQLCupom.Close;
                FormTelaConsultaRapidaCupom.SQLCupom.MacroByName('DataEmissao').Value := 'Cupom.CUPODEMIS = ''' + FormatDateTime('mm/dd/yyyy', Now) + '''';
                FormTelaConsultaRapidaCupom.SQLCupom.MacroByName('Empresa').Value := 'Cupom.EMPRICOD  = ' + EmpresaPadrao;
                if FiltraTerminal = 'S' then
                  FormTelaConsultaRapidaCupom.SQLCupom.MacroByName('Terminal').Value := 'Cupom.TERMICOD  = ' + dm.SQLTerminalAtivoTermicod.AsString
                else
                  FormTelaConsultaRapidaCupom.SQLCupom.MacroByName('Terminal').Value := '0=0';
                FormTelaConsultaRapidaCupom.SQLCupom.MacroByName('MostraVendas').Value := 'Cupom.CUPOINRO < 1';
                FormTelaConsultaRapidaCupom.SQLCupom.Open;
                FormTelaConsultaRapidaCupom.ShowModal;
                if FormTelaConsultaRapidaCupom.ModalResult = MrOk then
                begin
                  IDReimprimir := FormTelaConsultaRapidaCupom.SQLCupomCUPOA13ID.AsString;
                  DocumentoClienteVenda := FormTelaConsultaRapidaCupom.SQLCupomCLIENTECNPJ.AsString;
                end;

                FormTelaConsultaRapidaCupom.Close;
              end
              else begin
                IDReimprimir := dm.CodNextCupom;

                if IDReimprimir <> '' then
                  DocumentoClienteVenda := ExecSql(' select CLIENTECNPJ from CUPOM where CUPOA13ID = ' + IDReimprimir).fieldbyname('CLIENTECNPJ').asstring;

              end;

              if (IDReimprimir = '') then
              begin
                InformaG('Nao existe cupom fiscal a ser impresso na memoria!');
                EntradaDados.SelectAll;
                Exit;
              end;
                    // Nota Gaucha
              if (NotaGaucha = 'S') and (ECFAtual <> 'EPSON TERMICA') then
              begin
                if DocumentoClienteVenda = '' then
                begin

                  repeat
                    CpfOK := False;
                    if (not CpfOK) then
                      DocumentoClienteVenda := InputBox('Nota Fiscal Gaucha!', 'Informar CPF/CNPJ no Cupom?', DocumentoClienteVenda);
                    if DocumentoClienteVenda <> '' then
                      if length(DocumentoClienteVenda) = 11 then
                      begin
                        if ValidaCPF(DocumentoClienteVenda) then
                          CpfOK := True
                        else
                          ShowMessage('ERRO: O CPF DIGITADO � INV�LIDO!');
                      end;
                    if length(DocumentoClienteVenda) = 14 then
                    begin
                      if ValidaCGC(DocumentoClienteVenda) then
                        CpfOK := True
                      else
                        ShowMessage('ERRO: O CNPJ DIGITADO � INV�LIDO!');
                    end;

                    if DocumentoClienteVenda = '' then
                      CpfOK := True;
                  until
                    CpfOK;
                end
                else
                  CpfOK := True;
              end;

                    {Inicio da impressao e transmissao do cupom eletronico}
              if (copy(ECFAtual, 1, 4) = 'NFCE') and (dm.sqlEmpresa.FieldByName('idTOKEN').AsString <> '') then
              begin
                        // StatusServicoNFE;
                Transmite_NFCe(IDReimprimir);
                Exit;
              end;
                    {Final da emissao do cupom eletronico}

                    // Abrir Cupom Fiscal da ultima venda
              LblInstrucoes.Caption := 'Aguarde... Tentando Emitir Cupom Fiscal...';
              LblInstrucoes.Update;
              NroCupomFiscal := '000000';
              if not AbrirCupomFiscal(ECFAtual, PortaECFAtual, NroCupomFiscal) then
              begin
                InformaG('Problemas ao tentar abrir o cupom!');
                EntradaDados.SelectAll;
                FormTelaItens.EstadoPDVChk := 'AguardandoNovaVenda';
                FormTelaItens.PreparaEstadoBalcao(FormTelaItens.EstadoPDVChk);
                exit;
              end;

                    // Pegar Troco
              SQLImpressaoCupom.close;
              SQLImpressaoCupom.sql.Clear;
              SQLImpressaoCupom.SQL.Text := 'Select * From Cupom Where CUPOA13ID = ''' + IDReimprimir + '''';
              SQLImpressaoCupom.Open;
              VarValorTroco := SQLImpressaoCupom.fieldbyname('TROCO').AsVariant;

                    // Imprimir Produtos
              SQLImpressaoCupom.close;
              SQLImpressaoCupom.sql.Clear;
              SQLImpressaoCupom.SQL.Text := 'Select * From CupomItem Where (CPITCSTATUS = ''A'') and CUPOA13ID = ''' + IDReimprimir + ''' order by CPITIPOS';
              SQLImpressaoCupom.Open;
              SQLImpressaoCupom.First;
              VlrBonusTroca := 0;
              while not SQLImpressaoCupom.eof do
              begin
                if SQLImpressaoCupom.fieldbyname('CPITN3QTDTROCA').AsVariant > 0 then
                  VlrBonusTroca := VlrBonusTroca + (SQLImpressaoCupom.fieldbyname('CPITN3VLRUNIT').AsVariant * SQLImpressaoCupom.fieldbyname('CPITN3QTDTROCA').AsVariant);

                CodICMS := SQLLocate('PRODUTO', 'PRODICOD', 'ICMSICOD', SQLImpressaoCupom.fieldbyname('PRODICOD').AsString);
                if SQLImpressaoCupom.FieldByName('CPITN3QTD').Value > 0 then
                begin
                  if (SQLImpressaoCupom.fieldbyname('CPITTOBS').AsString <> '') then
                    DescrLivreProd := SQLImpressaoCupom.fieldbyname('CPITTOBS').AsString
                  else
                    DescrLivreProd := Copy(SQLLocate('PRODUTO', 'PRODICOD', 'PRODA30ADESCRREDUZ', SQLImpressaoCupom.fieldbyname('PRODICOD').AsString), 1, 29);

                  if not ImprimeItemECF(ECFAtual, {Impressora}
                    PortaECFAtual, {Porta}
                    SQLImpressaoCupom.fieldbyname('CPITIPOS').AsString, {Numitem}
                    SQLImpressaoCupom.fieldbyname('PRODICOD').AsString, {Codigo}
                    DescrLivreProd, {Descricao}
                    RetornaTotalizadorIcmsECF(Ecf_ID, CodICMS), {Tributo}
                    '$', //'V', {TipoDesc}
                    SQLLocate('UNIDADE', 'UNIDICOD', 'UNIDA5DESCR', SQLLocate('PRODUTO', 'PRODICOD', 'UNIDICOD', SQLImpressaoCupom.fieldbyname('PRODICOD').AsString)), {Unid}
                    SQLImpressaoCupom.fieldbyname('CPITN3QTD').Value, {Qtde}
                    SQLImpressaoCupom.fieldbyname('CPITN3VLRUNIT').Value, {ValorUnitario}
                    0, {Percdesc}
                    SQLImpressaoCupom.fieldbyname('CPITN2DESC').Value, {Vlrdesco Total Itens}
                    DM.SQLTerminalAtivoTERMINRODECQUANT.Value {NumDecQuant}) then
                  begin
                    CancelarCupomFiscal(ECFAtual, PortaECFAtual);
                    InformaG('Problemas ao imprimir o item no ECF!');
                    EntradaDados.SelectAll;
                    FormTelaItens.EstadoPDVChk := 'AguardandoNovaVenda';
                    FormTelaItens.PreparaEstadoBalcao(FormTelaItens.EstadoPDVChk);
                    Exit;
                  end;
                end;
                SQLImpressaoCupom.Next;
              end;

                    // Subtotalizar para corrigir erros de arredondamentos eventuais
              VlrTotalECF := 0;
              if (ECFAtual = 'BEMATECH MP-25 FI') and (FileExists('Confirma.txt')) then
              begin
                try
                  dm.SubTotal_ECF := '00000000000000';
                  Bematech_FI_SubTotal(dm.SubTotal_ECF);
                  dm.SubTotal_ECF := FormatFloat(FormatStrVlrVenda, (StrToInt(dm.SubTotal_ECF) / 100));
                  VlrTotalECF := StrToFloat(dm.SubTotal_ECF);
                except
                  Application.ProcessMessages;
                end;
              end;
              if (ECFAtual = 'ECF') and (FileExists('Confirma.txt')) then
              begin
                try
                  dmECF.SubTotal;
                except
                  Application.ProcessMessages;
                end;
              end;

              if (ECFAtual = 'DARUMA FRAMEWORK') and (FileExists('Confirma.txt')) then
              begin
                try
                  dm.SubTotal_ECF := '00000000000000';
                  rCFSubTotal_ECF_Daruma(dm.SubTotal_ECF);
                  dm.SubTotal_ECF := FormatFloat(FormatStrVlrVenda, (StrToInt(dm.SubTotal_ECF) / 100));
                  VlrTotalECF := StrToFloat(dm.SubTotal_ECF);
                except
                  Application.ProcessMessages;
                end;
              end;

                    // Abrir CupomNumerario para ver se tem algum registro e popular a tabela temporaria a vista
              TemNumerarioAVista := False;
              dm.TotalCartao := 0;
              ProvedorCartao := '';
              VlrTotalSistema := 0;
              SQLImpressaoCupom.Close;
              SQLImpressaoCupom.sql.Clear;
              SQLImpressaoCupom.SQL.Text := 'Select * from CUPOMNUMERARIO where CUPOA13ID = ''' + IDReimprimir + '''';
              SQLImpressaoCupom.Open;
              SQLParcelasVistaVendaTemp.Close;
              SQLParcelasVistaVendaTemp.MacroByName('MFiltro').Value := 'TERMICOD = ' + IntToStr(StrToInt(copy(IDReimprimir, 4, 3)));
              SQLParcelasVistaVendaTemp.Open;
              if not SQLParcelasVistaVendaTemp.IsEmpty then
              begin
                TemNumerarioAVista := True;
                SQLParcelasVistaVendaTemp.First;
                while not SQLParcelasVistaVendaTemp.Eof do
                  SQLParcelasVistaVendaTemp.Delete;
                SQLParcelasVistaVendaTemp.First;
              end;

              if not SQLImpressaoCupom.IsEmpty then
              begin
                SQLImpressaoCupom.first;
                while not SQLImpressaoCupom.eof do
                begin
                  SQLParcelasVistaVendaTemp.Append;
                  SQLParcelasVistaVendaTempTERMICOD.AsString := IntToStr(StrToInt(copy(IDReimprimir, 4, 3)));
                  SQLParcelasVistaVendaTempNROITEM.Value := SQLImpressaoCupom.fieldbyname('NUMEICOD').AsInteger;
                  SQLParcelasVistaVendaTempNUMEICOD.Value := SQLImpressaoCupom.fieldbyname('NUMEICOD').AsInteger;

                  if (SQLParcelasVistaVendaTemp.RecNo = 1) and (VarValorTroco > 0) then
                    SQLParcelasVistaVendaTempVALORPARC.Value :=  GetCPNMN2VLR(IDReimprimir, SQLImpressaoCupom.fieldbyname('NUMEICOD').AsInteger) + VarValorTroco
                  else
                    SQLParcelasVistaVendaTempVALORPARC.Value := GetCPNMN2VLR(IDReimprimir, SQLImpressaoCupom.fieldbyname('NUMEICOD').AsInteger);
                  SQLParcelasVistaVendaTempTIPOPADR.Value := SQLLocate('NUMERARIO', 'NUMEICOD', 'NUMEA5TIPO', SQLImpressaoCupom.fieldbyname('NUMEICOD').AsString);
                  SQLParcelasVistaVendaTemp.Post;
                  if SQLParcelasVistaVendaTempTIPOPADR.Value = 'CRT' then
                  begin
                    TipoPadrao := SQLParcelasVistaVendaTempTIPOPADR.Value;
                    dm.TotalCartao := dm.TotalCartao + SQLParcelasVistaVendaTempVALORPARC.Value;
                    ProvedorCartao := SQLLocate('NUMERARIO', 'NUMEICOD', 'PRCAA13ID', SQLImpressaoCupom.fieldbyname('NUMEICOD').AsString);
                    NomeNumerarioCartao := SQLLocate('NUMERARIO', 'NUMEICOD', 'NUMEA30DESCR', SQLImpressaoCupom.fieldbyname('NUMEICOD').AsString);
                    dm.NumerarioCartao := SQLImpressaoCupom.fieldbyname('NUMEICOD').AsString;
                  end;

                  VlrTotalSistema := VlrTotalSistema + SQLParcelasVistaVendaTempVALORPARC.Value;

                  if (ECFAtual = 'ECF') then
                    dmECF.EfetuaPagamento(SQLImpressaoCupom.fieldbyname('NUMEICOD').AsInteger,SQLParcelasVistaVendaTempVALORPARC.Value, SQLParcelasVistaVendaTempTIPOPADR.Value);

                  SQLImpressaoCupom.next;
                end;
                SQLParcelasVistaVendaTemp.Close;
                SQLParcelasVistaVendaTemp.MacroByName('MFiltro').Value := 'TERMICOD = ' + IntToStr(StrToInt(copy(IDReimprimir, 4, 3)));
                SQLParcelasVistaVendaTemp.Open;
              end;

                    // Abrir CONTASRECEBER para ver se tem algum registro e popular a tabela temporaria a prazo
              TemNumerarioPrazo := False;
              SQLImpressaoCupom.close;
              SQLImpressaoCupom.sql.Clear;
              SQLImpressaoCupom.SQL.Text := 'Select * from contasreceber where CUPOA13ID = ''' + IDReimprimir + '''';
              SQLImpressaoCupom.open;
              SQLParcelasPrazoVendaTemp.Close;
              SQLParcelasPrazoVendaTemp.MacroByName('MFiltro').Value := 'TERMICOD = ' + IntToStr(StrToInt(copy(IDReimprimir, 4, 3)));
              SQLParcelasPrazoVendaTemp.Open;
              if not SQLParcelasPrazoVendaTemp.IsEmpty then
              begin
                TemNumerarioPrazo := True;
                SQLParcelasPrazoVendaTemp.first;
                while not SQLParcelasPrazoVendaTemp.eof do
                  SQLParcelasPrazoVendaTemp.Delete;
              end;

              if not SQLImpressaoCupom.IsEmpty then
              begin
                SQLImpressaoCupom.first;
                while not SQLImpressaoCupom.eof do
                begin
                  SQLParcelasPrazoVendaTemp.Append;
                  SQLParcelasPrazoVendaTempTERMICOD.AsString := SQLImpressaoCupom.fieldbyname('TERMICOD').AsString;
                  SQLParcelasPrazoVendaTempNROPARCELA.AsString := SQLImpressaoCupom.fieldbyname('CTRCICOD').AsString;
                  SQLParcelasPrazoVendaTempNUMEICOD.AsString := SQLImpressaoCupom.fieldbyname('NUMEICOD').AsString;
                  SQLParcelasPrazoVendaTempVALORVENCTO.AsString := SQLImpressaoCupom.fieldbyname('CTRCN2VLR').AsString;
                  SQLParcelasPrazoVendaTempDATAVENCTO.AsString := SQLImpressaoCupom.fieldbyname('CTRCDVENC').AsString;
                  SQLParcelasPrazoVendaTempTIPOPADR.AsString := SQLImpressaoCupom.fieldbyname('CTRCA5TIPOPADRAO').AsString;
                  SQLParcelasPrazoVendaTemp.Post;

                  if (SQLImpressaoCupom.fieldbyname('CTRCA5TIPOPADRAO').AsString = 'CRT') then
                  begin
                    TipoPadrao := SQLImpressaoCupom.fieldbyname('CTRCA5TIPOPADRAO').AsString;
                    dm.TotalCartao := dm.TotalCartao + SQLParcelasPrazoVendaTempVALORVENCTO.Value;
                    ProvedorCartao := SQLLocate('NUMERARIO', 'NUMEICOD', 'PRCAA13ID', SQLImpressaoCupom.fieldbyname('NUMEICOD').AsString);
                    NomeNumerarioCartao := SQLLocate('NUMERARIO', 'NUMEICOD', 'NUMEA30DESCR', SQLImpressaoCupom.fieldbyname('NUMEICOD').AsString);
                    dm.NumerarioCartao := SQLImpressaoCupom.fieldbyname('NUMEICOD').AsString;
                  end;
                  SQLImpressaoCupom.Next;

                  VlrTotalSistema := VlrTotalSistema + SQLParcelasPrazoVendaTempVALORVENCTO.Value;

                  if (ECFAtual = 'ECF') then
                    dmECF.EfetuaPagamento(SQLImpressaoCupom.fieldbyname('NUMEICOD').AsInteger,SQLParcelasPrazoVendaTempVALORVENCTO.Value, SQLParcelasVistaVendaTempTIPOPADR.Value);
                end;

                SQLParcelasPrazoVendaTemp.Close;
                SQLParcelasPrazoVendaTemp.MacroByName('MFiltro').Value := 'TERMICOD = ' + SQLImpressaoCupom.fieldbyname('TERMICOD').AsString;
                SQLParcelasPrazoVendaTemp.Open;
              end;

                    // Teste para ver se Total ECF � igual ao total do Sistema, caso sistema seja menor acrescer centavos.
              VlrTotalDiferenca := 0;
              if (VlrTotalSistema < VlrTotalECF) then
                VlrTotalDiferenca := VlrTotalECF - VlrTotalSistema;
              if VlrTotalDiferenca > 0 then
              begin
                if not SQLParcelasVistaVendaTemp.IsEmpty then
                begin
                  SQLParcelasVistaVendaTemp.edit;
                  SQLParcelasVistaVendaTempVALORPARC.Value := SQLParcelasVistaVendaTempVALORPARC.Value + VlrTotalDiferenca;
                  SQLParcelasVistaVendaTemp.post;
                end;
                if (SQLParcelasVistaVendaTemp.IsEmpty) and (not SQLParcelasPrazoVendaTemp.IsEmpty) then
                begin
                  SQLParcelasPrazoVendaTemp.edit;
                  SQLParcelasPrazoVendaTempVALORVENCTO.Value := SQLParcelasPrazoVendaTempVALORVENCTO.Value + VlrTotalDiferenca;
                  SQLParcelasPrazoVendaTemp.post;
                end;
              end;

              if (ProvedorCartao <> '') and (dm.TotalCartao > 0) then
              begin
                SQLProvedorCartao.Close;
                SQLProvedorCartao.MacroByName('Provedor').Value := 'PRCAA13ID = ''' + ProvedorCartao + '''';
                SQLProvedorCartao.Open;
                if not SQLProvedorCartao.IsEmpty then
                begin
                  ProvedorCartao := SQLProvedorCartaoPRCAA60CARTAO.AsString;
                            // dm.TotalCartao , ja peguei o total nas linhas mais acima
                end;
              end;

                    // Finalizar cupom
              FechouCupomFiscal := False;
              SQLImpressaoCupom.close;
              SQLImpressaoCupom.sql.Clear;
              SQLImpressaoCupom.SQL.Text := 'Select * from cupom where CUPOA13ID = ''' + IDReimprimir + '''';
              SQLImpressaoCupom.open;

                    // Testa se nao tem nenhum numerario a vista ou a prazo, lanca no dinheiro para nao trancar ecf
              if (not TemNumerarioAVista) and (not TemNumerarioPrazo) then
              begin
                SQLParcelasVistaVendaTemp.Append;
                SQLParcelasVistaVendaTempTERMICOD.AsString := IntToStr(StrToInt(copy(IDReimprimir, 4, 3)));
                SQLParcelasVistaVendaTempNROITEM.Value := 1;
                SQLParcelasVistaVendaTempNUMEICOD.Value := 1;
                SQLParcelasVistaVendaTempVALORPARC.AsCurrency := SQLImpressaoCupom.fieldbyname('CUPON2TOTITENS').AsCurrency;
                SQLParcelasVistaVendaTempTIPOPADR.Value := 'DIN';
                SQLParcelasVistaVendaTemp.Post;
                SQLParcelasVistaVendaTemp.Close;
                SQLParcelasVistaVendaTemp.MacroByName('MFiltro').Value := 'TERMICOD = ' + IntToStr(StrToInt(copy(IDReimprimir, 4, 3)));
                SQLParcelasVistaVendaTemp.Open;
              end;

              VarValorTroco := SQLImpressaoCupom.fieldbyname('TROCO').Value;
              if DocumentoClienteVenda = '' then
                DocumentoClienteVenda := SQLImpressaoCupom.fieldbyname('CLIENTECNPJ').AsString;
              repeat
                      {SQLImpressaoCupom.fieldbyname('CUPON2DESCITENS').Value}
                if not FecharCupomFiscal(ECFAtual,
                  PortaECFAtual,
                  Ecf_CNFV,
                  SQLImpressaoCupom.fieldbyname('CUPON2TOTITENS').Value + VlrTotalDiferenca, // VALOR
                  SQLImpressaoCupom.fieldbyname('CUPON2ACRESC').Value, // ACRESCIMO
                  SQLImpressaoCupom.fieldbyname('CUPON2DESC').Value + VlrBonusTroca, // DESCONTO + TROCAS
                  VarValorTroco, // TROCO
                  SQLParcelasVistaVendaTemp,
                  SQLParcelasPrazoVendaTemp,
                  SQLImpressaoCupom.fieldbyname('CLIENTENOME').AsString,
                  SQLImpressaoCupom.fieldbyname('CLIENTEENDE').AsString,
                  SQLImpressaoCupom.fieldbyname('CLIENTECIDA').AsString,
                  DocumentoClienteVenda,
                  SQLImpressaoCupom.fieldbyname('CUPOA13ID').AsString,
                  SQLLocate('VENDEDOR', 'VENDICOD', 'VENDA60NOME', SQLImpressaoCupom.fieldbyname('VENDICOD').AsString),
                  SQLLocate('PLANORECEBIMENTO', 'PLRCICOD', 'PLRCA60DESCR', SQLImpressaoCupom.fieldbyname('PLRCICOD').AsString),
                  SQLImpressaoCupom.fieldbyname('CUPOA8PLACAVEIC').AsString) then
                begin
                  if Pergunta('SIM', 'A impressora fiscal n�o responde. Deseja tentar novamente?') then
                    FechouCupomFiscal := False
                  else
                    Break;
                end
                else
                  FechouCupomFiscal := True;
              until
                FechouCupomFiscal;

                    // Cancelar Cupom e Voltar a tela inicial
              if not FechouCupomFiscal then
              begin
                CancelarCupomFiscal(ECFAtual, PortaECFAtual);
                InformaG('Problemas ao Fechar o Cupom Fiscal!');
                EntradaDados.SelectAll;
                FormTelaItens.EstadoPDVChk := 'AguardandoNovaVenda';
                FormTelaItens.PreparaEstadoBalcao(FormTelaItens.EstadoPDVChk);
                Exit;
              end;

                    // IMPRIME AUTORIZACAO DO CARTAO DE CREDITO
              if (ProvedorCartao <> '') and (dm.TotalCartao > 0) and (RetornoCartao.TransacaoAutorizada) then
              begin
                DadosImpressora.ECFAtual := ECFAtual;
                DadosImpressora.PortaECFAtual := PortaECFAtual;
                DadosImpressora.TotNumECFImp := RetornaTotalizadorNumerarioECF(Ecf_ID, dm.NumerarioCartao);
                DadosImpressora.Ecf_CNFV := Ecf_CNFV;
                DadosImpressora.Ecf_ID := Ecf_ID;
                DadosImpressora.NroCupomFiscal := NroCupomFiscal;
                if ((ECFAtual = 'DARUMA FS345') or (ECFAtual = 'BEMATECH MP-25 FI')) then
                  DadosImpressora.DescricaoNumerario := RetornaTotalizadorNumerarioECFDarumaFS345(Ecf_ID, dm.NumerarioCartao)
                else
                  DadosImpressora.DescricaoNumerario := NomeNumerarioCartao;
                DadosImpressora.ValorImp := dm.TotalCartao;

                        // ENVIAR O NRO DE VIAS QUE DESEJA IMPRIMIR
                if RetornoCartao.QtdeLinhas > 0 then
                begin
                  if not ImprimeRetorno(RetornoCartao, DadosImpressora, NroViasTEF, False) then
                    CancelarCupomFiscal(ECFAtual, PortaECFAtual);
                end;
              end;

                    // ZERAR BONUS TROCA
              VlrBonusTroca := 0;
              TipoPadrao := '';

                    // Gravar numero do Cupom Fiscal na Venda
              dm.SQLCupom.close;
              dm.SQLCupom.macrobyname('MFiltro').Value := 'CUPOA13ID = ''' + IDReimprimir + '''';
              dm.SQLCupom.Open;
              if not dm.SQLCupom.IsEmpty then
              begin
                dm.SQLCupom.RequestLive := True;
                dm.SQLCupom.edit;
                dm.SQLCupomCUPOINRO.Value := StrToInt(NroCupomFiscal);
                dm.SQLCupom.Post;
              end;
              dm.SQLCupom.close;
                    // Limpar Variavel
              NroCupomFiscal := '000000';

              LblInstrucoes.Caption := 'CAIXA LIVRE - Pr�ximo Cliente';
              LblInstrucoes.Update;

              Exec_SP_ACERTO_TOTAL_CUPOM;

              exit;
            end;

            if (DM.SQLTerminalAtivoTERMCIMPPREVENDA.Value <> 'S') then
            begin
              Informa('Este terminal n�o est� configurado para imprimir!');
              exit;
            end;
            if FileExists('Impress_Ctrl_X.exe') then
            begin
              TabelaMaisTerminal := 'ItensVendaTemp_' + FormatFloat('###000', TerminalAtual);
              WinExec(Pchar(DM.PathAplicacao + '\Impress_Ctrl_X.EXE ' + TabelaMaisTerminal), sw_Show);
            end;
          end;
          // IMPORTA PRODUTOS DO SERVIDOR
        'Z': begin
            if DM.SQLUsuario.Locate('USUAICOD', UsuarioCorrente, []) then
              if DM.SQLUsuario.FieldByName('USUACVISULUCVEND').AsString <> 'S' then
              begin
                if Pergunta('SIM', 'Voc� n�o tem permiss�o para acessar os dados com os totais da venda. Deseja Informar Outro Usu�rio?') then
                begin
                  RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome, 'USUACVISULUCVEND', RetornoUser);
                  if RetornoCampoUsuario = 'S' then
                  begin
                    Application.CreateForm(TFormTelaTotaisCaixa, FormTelaTotaisCaixa);
                    FormTelaTotaisCaixa.ShowModal;
                  end;
                end;
              end
              else
              begin
                Application.CreateForm(TFormTelaTotaisCaixa, FormTelaTotaisCaixa);
                FormTelaTotaisCaixa.ShowModal;
              end;
          end;
        '1': begin
            CodRapido := True;
            Application.CreateForm(TFormTelaConsultaRapidaItem, FormTelaConsultaRapidaItem);
            FormTelaConsultaRapidaItem.ShowModal;
            CodRapido := False;
            if CodigoProduto <> '' then
            begin
              EntradaDados.Text := CodigoProduto;
              EntradaDadosKeyDown(Sender, Enter, [ssAlt]);
            end;
          end;
          //REATIVAR PEDIDO/OR�AMENTO
        'O': begin
            if (EstadoPDVChk <> AguardandoNovaVenda) then
            begin
              InformaG('S� � poss�vel reativar pedido/or�amento quando o sistema n�o estiver efetuando uma venda!');
              VoltaParaEntradaDados;
              Exit;
            end
            else
            begin
              ReativarPedidoOrcamento := True;
              Application.CreateForm(TFormTelaImportarPedidoOrcamento, FormTelaImportarPedidoOrcamento);
              FormTelaImportarPedidoOrcamento.LblNomeSistema.Caption := 'Reabilitar Pedido/Or�amento(s)';
              FormTelaImportarPedidoOrcamento.DBGridLista.Columns.Items[3].Title.Caption := 'Marc';
              FormTelaImportarPedidoOrcamento.ShowModal;
              ReativarPedidoOrcamento := False;
            end;
          end;
          //IMPORTAR PEDIDO/OR�AMENTO
        '2': begin
            if (EstadoPDVChk <> AguardandoNovaVenda) then
            begin
              InformaG('S� � poss�vel importar pedido/or�amento quando o sistema n�o estiver efetuando uma venda!');
              VoltaParaEntradaDados;
              Exit;
            end
            else
            begin
              Application.CreateForm(TFormTelaImportarPedidoOrcamento, FormTelaImportarPedidoOrcamento);
              FormTelaImportarPedidoOrcamento.ShowModal;
            end;
          end;
      end;
    end
    else
    begin
      if (ssAlt in Shift) and (EntradaDados.text = '') then
        case Upcase(Char(Key)) of
            // Chama Funcoes Administrativas TEF
          'G': begin
              exit;
              if (ECFAtual = '') then
              begin
                InformaG('N�o foi encontrada nenhuma impressora fiscal configurada para este terminal!');
                Exit;
              end;
            end;
            {REIMPRIME �LTIMO CUPOM}
          'I': begin
              if FileExists('ImpressaoPreVenda.exe') then
                WinExec(Pchar('ImpressaoPreVenda.exe'), sw_Show);
              {Exit;
              if FileExists(ExtractFilePath(Application.ExeName) + '\NoBreak.txt') then
              begin
                DadosImpressora.ECFAtual := ECFAtual;
                DadosImpressora.PortaECFAtual := PortaECFAtual;
                RetornoCartao.QtdeLinhas := 1;
                RetornoCartao.Print := TStringList.Create;
                RetornoCartao.Print.LoadFromFile(ExtractFilePath(Application.ExeName) + '\NoBreak.txt');
                ImprimeRetorno(RetornoCartao, DadosImpressora, NroViasTEF, True);
              end
              else
                Application.MessageBox(PChar('Nenhum comprovante TEF foi encontrado para ser reimpresso!'), 'Aten��o', MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONINFORMATION);}
            end;
            {FIM FUN��ES ADMINISTRATIVAS DE TEF}
          'P': begin
              Application.CreateForm(TFormTelaTiraTeima, FormTelaTiraTeima);
              FormTelaTiraTeima.ShowModal;
            end;
          'R': begin
                  //CADASTRO DE RECEITUARIO
              Application.CreateForm(TFormTelaConsultaRapidaCliente, FormTelaConsultaRapidaCliente);
              FormTelaConsultaRapidaCliente.ShowModal;
              if ClienteVenda <> '' then
              begin
                Application.CreateForm(TFormTelaReceituario, FormTelaReceituario);
                FormTelaReceituario.ShowModal;
              end;
            end;
          'S': begin
                  //TROCA SERIAL PRODUTO
              CriaFormulario(TFormTelaTransfereNroSerial,
                'FormTelaTransfereNroSerial',
                False,
                False,
                True,
                '');
            end;
          'T': begin
                  {Tela Transf. entre Filiais}
              FormTelaTransferencia := TFormTelaTransferencia.Create(nil);
              try
                FormTelaTransferencia.ShowModal;
              finally
                FreeAndNil(FormTelaTransferencia);
              end;
              //CriaFormulario(TFormTelaTransferencia,
              //  'FormTelaTransferencia', False,  False,  True, '');
            end;
          'X': begin {Alt X - ReTransmitir NFCe Cupom Eletronico}
              if dm.sqlEmpresa.FieldByName('idTOKEN').AsString = '' then exit;

                  // StatusServicoNFE;

              IDReimprimir := '';
              Application.CreateForm(TFormTelaConsultaRapidaCupom, FormTelaConsultaRapidaCupom);
              FormTelaConsultaRapidaCupom.SQLCupom.Close;
              FormTelaConsultaRapidaCupom.SQLCupom.MacroByName('DataEmissao').Value := 'Cupom.CUPODEMIS = ''' + FormatDateTime('mm/dd/yyyy', Now) + '''';
              FormTelaConsultaRapidaCupom.SQLCupom.MacroByName('Empresa').Value := 'Cupom.EMPRICOD  = ' + EmpresaPadrao;
              if FiltraTerminal = 'S' then
                FormTelaConsultaRapidaCupom.SQLCupom.MacroByName('Terminal').Value := 'Cupom.TERMICOD  = ' + dm.SQLTerminalAtivoTermicod.AsString
              else
                FormTelaConsultaRapidaCupom.SQLCupom.MacroByName('Terminal').Value := '0=0';
              FormTelaConsultaRapidaCupom.SQLCupom.MacroByName('MostraVendas').Value := '(Cupom.CUPOINRO>0) and ((Cupom.STNFE is null) or (Cupom.STNFE=''''))';
              FormTelaConsultaRapidaCupom.SQLCupom.Open;
              FormTelaConsultaRapidaCupom.ShowModal;
              if FormTelaConsultaRapidaCupom.ModalResult = MrOk then
              begin
                IDReimprimir := FormTelaConsultaRapidaCupom.SQLCupomCUPOA13ID.AsString;
                DocumentoClienteVenda := FormTelaConsultaRapidaCupom.SQLCupomCLIENTECNPJ.AsString;
                chave := FormTelaConsultaRapidaCupom.SQLCupomCHAVEACESSO.AsString;
                PathPastaMensal := FormatDateTime('yyyymm', FormTelaConsultaRapidaCupom.SQLCupomCUPODEMIS.Value);
              end;
              FormTelaConsultaRapidaCupom.Close;

              if (IDReimprimir <> '') then
              begin
                Inicia_NFe;
                      {Tenta pegar retorno da nfce da chave pra ver se ja esta autorizada no sefaz, mas por falha nao gravamos o retorno}
                nfce_tentativa := 0;
                while (nfce_tentativa <= 5) do
                begin
                  ConsultarDenovo := False;
                  nfce_tentativa := nfce_tentativa + 1;
                  LblInstrucoes.Caption := 'Consultando Retorno Sefaz RS NFCe: ' + IntToStr(NumNFe) + ' - Tentativa N.' + intToStr(nfce_tentativa);
                  LblInstrucoes.Update;
                  if not FileExists('COMUNICACAO_OFFLINE.TXT') then
                    dm.ACBrNFe.Consultar(chave);

                  if (dm.ACBrNFe.WebServices.Consulta.cStat = 613) or (dm.ACBrNFe.WebServices.Consulta.cStat = 539) then
                  begin
                    if dm.ACBrNFe.WebServices.Consulta.XMotivo <> '' then
                    begin
                      if pos('NF-e [', dm.ACBrNFe.WebServices.Consulta.XMotivo) > 0 then
                      begin
                        Chave := Copy(dm.ACBrNFe.WebServices.Consulta.XMotivo, pos('NF-e [', dm.ACBrNFe.WebServices.Consulta.XMotivo), 200);
                        Chave := StringReplace(Chave, 'NF-e [', '', [rfReplaceAll, rfIgnoreCase]);
                        Chave := StringReplace(Chave, ']', '', [rfReplaceAll]);

                        if Chave <> '' then
                        begin
                          if dm.SQLCupom.IsEmpty then
                          begin
                            dm.SQLCupom.close;
                            dm.SQLCupom.macrobyname('MFiltro').Value := 'CUPOA13ID = ''' + IDReimprimir + '''';
                            dm.SQLCupom.Open;
                          end;

                          dm.SQLCupom.RequestLive := True;
                          dm.SQLCupom.edit;
                          dm.SQLCupomCHAVEACESSO.AsString := Chave;
                          dm.SQLCupom.Post;
                        end;

                        FormTelaConsultaRapidaCupom.SQLCupom.Close;
                        FormTelaConsultaRapidaCupom.SQLCupom.Open;

                        ConsultarDenovo := True;
                      end;
                    end
                    else if dm.ACBrNFe.WebServices.Consulta.protNFe.xMotivo <> '' then
                    begin
                      Chave := Copy(dm.ACBrNFe.WebServices.Consulta.XMotivo, pos('[chNFe:', dm.ACBrNFe.WebServices.Consulta.XMotivo), 200);
                      Chave := StringReplace(Chave, '[chNFe:', '', [rfReplaceAll, rfIgnoreCase]);
                      Chave := StringReplace(Chave, ']', '', [rfReplaceAll]);

                      if Chave <> '' then
                      begin
                        if dm.SQLCupom.IsEmpty then
                        begin
                          dm.SQLCupom.close;
                          dm.SQLCupom.macrobyname('MFiltro').Value := 'CUPOA13ID = ''' + IDReimprimir + '''';
                          dm.SQLCupom.Open;
                        end;

                        dm.SQLCupom.RequestLive := True;
                        dm.SQLCupom.edit;
                        dm.SQLCupomCHAVEACESSO.AsString := Chave;
                        dm.SQLCupom.Post;
                      end;

                    end;
                  end;

                  if ((FileExists('COMUNICACAO_OFFLINE.TXT')) or (dm.ACBrNFe.WebServices.Consulta.cStat <> 100)) and not ConsultarDenovo then
                      //or (dm.ACBrNFe.WebServices.Consulta.cStat = 217)or (dm.ACBrNFe.WebServices.Consulta.cStat = 613) then
                  begin
                              { Cria o arquivo XML }
                    sXML := Gerar_NFCe(IDReimprimir);
                    if (dm.ACBrNFe.WebServices.Consulta.cStat <> 613) and (dm.ACBrNFe.WebServices.Consulta.cStat <> 217) then
                      chave := copy(dm.ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID, (length(dm.ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID) - 44) + 1, 44);

                    LblInstrucoes.Caption := 'Assinando NFCe...' + intToStr(NumNFe);
                    LblInstrucoes.Update;
                    dm.ACBrNFe.NotasFiscais.Assinar;
                    LblInstrucoes.Caption := 'Validando NFCe...' + intToStr(NumNFe);
                    LblInstrucoes.Update;
                    dm.ACBrNFe.NotasFiscais.Validar;
                    LblInstrucoes.Caption := 'Enviando ao Sefaz RS NFCe: ' + intToStr(NumNFe);
                    LblInstrucoes.Update;
                    LblInstrucoes.Caption := 'Evento de retorno: ' + IntToStr(dm.ACBrNFe.WebServices.Consulta.cStat);

                    if not FileExists('COMUNICACAO_OFFLINE.TXT') then
                      dm.ACBrNFe.Enviar('1', False, False);
                              {refaz a consulta}
                    LblInstrucoes.Caption := 'Consultando Retorno Sefaz do NFCe: ' + intToStr(NumNFe);
                    LblInstrucoes.Update;

                    if not FileExists('COMUNICACAO_OFFLINE.TXT') then
                      dm.ACBrNFe.Consultar(chave);
                  end;

                  if (dm.ACBrNFe.WebServices.Consulta.cStat = 100) then
                  begin
                    LblInstrucoes.Caption := 'Gravando Retorno Sefaz do NFCe: ' + intToStr(NumNFe);
                    LblInstrucoes.Update;
                    SQLImpressaoCupom.Close;
                    SQLImpressaoCupom.RequestLive := False;
                    SQLImpressaoCupom.SQL.Text := 'Update CUPOM Set STNFE=' + IntToStr(dm.ACBrNFe.WebServices.consulta.cStat) +
                      ', PROTOCOLO=''' + dm.ACBrNFe.WebServices.consulta.Protocolo + '''' +
                      ', PENDENTE=' + QuotedStr('S') +
                      ' Where CUPOA13ID =''' + IDReimprimir + '''';
                    SQLImpressaoCupom.ExecSQL;

                    LblInstrucoes.Caption := 'Imprimindo NFCe: ' + intToStr(NumNFe);
                    LblInstrucoes.Update;
                    if (ECFAtual = 'NFCE A4') then
                    begin
                      Danfe := 'http://www.sefaz.rs.gov.br/ASP/AAE_ROOT/NFE/SAT-WEB-NFE-NFC_2.asp?chaveNFe=' + chave + '&HML=false&NF=07BA65B13';
                      ShellExecute(Handle, 'open', pchar(Danfe), '', '', 1);
                    end
                    else
                    begin
                      dm.ACBrNFe.NotasFiscais.Clear;
                      dm.ACBrNFe.NotasFiscais.LoadFromFile('c:\easy2solutions\nfce\' + PathPastaMensal + '\' + chave + '-NFe.xml');
                      dm.ACBrNFe.NotasFiscais.Imprimir;
                      if NroViasImpVenda = '2' then
                      begin
                        if Application.MessageBox(PChar('Imprimir Segunda Via NFCe?'), PChar(Application.Title), MB_SYSTEMMODAL + MB_YesNo + MB_IconQuestion + MB_DEFBUTTON2) = IdYes then
                          dm.ACBrNFe.NotasFiscais.Imprimir;
                      end;
                    end;
                    nfce_tentativa := 9;
                  end;
                end;
                      { Limpa a nota do componente ACBr }
                DescricaoProduto.Caption := '';
                DescricaoProduto.Update;
                dm.ACBrNFe.NotasFiscais.Clear;

                LblInstrucoes.Caption := 'CAIXA LIVRE - Pr�ximo Cliente';
                LblInstrucoes.Update;
                ImpCupomAutomatico := false;
              end;
            end;
        end;
    end;
  end;
end;

procedure TFormTelaItens.CancelarVenda;
begin
  if (DM.SQLterminalativoTERMIQTDEPADRAO.Value > 0) then
    EditQtde.Text := DM.SQLterminalativoTERMIQTDEPADRAO.AsString
  else
    EditQtde.Value := 0;

  if GravarCupomCancelado = 'S' then
  begin
      { Testa para ver se ja gravou esse movimento para nao gravar duas vezes o mesmo, em casos de trancar o PDV e ter que usar Ctrl+Del,
        mais de uma vez }
    DM.SQLTemplate.Close;
    DM.SQLTemplate.SQL.Clear;
    DM.SQLTemplate.SQL.Add('select CUPOA13ID from CUPOM');
    DM.SQLTemplate.SQL.Add('where (EMPRICOD=' + EmpresaPadrao + ') and (TERMICOD=' + IntToStr(TerminalAtual) + ') and (CUPOINRO=' + IntToStr(StrToIntdef(NroCupomFiscal, 0)) + ')');
    DM.SQLTemplate.Open;
    if DM.SQLTemplate.IsEmpty then
    begin
          // Gravar Cabecalho Cupom E Itens
      GravaCupom;
      GravaCupomItem;

          // Gravar Movimento de Caixa mostrando a Tentativa de Venda no Caixa
      DM.SQLTemplate.Close;
      DM.SQLTemplate.SQL.Clear;
      DM.SQLTemplate.SQL.Add('select OPCXICOD from OPERACAOCAIXA');
      DM.SQLTemplate.SQL.Add('where OPCXA5SIGLA = ''VDVIS''');
      DM.SQLTemplate.Open;
      if not DM.SQLTemplate.IsEmpty then
        GravaMovimentoCaixa(DM.SQLTotalizadorCaixa,
          DM.SQLTotalizar,
          EmpresaPadrao, //WEMPRICOD
          IntToStr(TerminalAtual), //WTERMICOD
          FormatDateTime('mm/dd/yyyy', Now), //WMVCIXDMOV
          'Null', //WNUMEICOD
          DM.SQLTemplate.FieldByName('OPCXICOD').AsString, //WOPCXICOD
          IntToStr(DM.UsuarioAtual), //WUSUAICOD
          'V. ' + NroCupomFiscal, //WMVCIXA15DOCORIG
          CurSubTotal.Value, //WMOVICAIXN2VLR
          0, //WMOVICAIXN2VLRJURO
          0, //WMOVICAIXN2VLRMULTA
          0, //WMOVICAIXN2VLRDEC
          'null', //WMOVICAIXA6NUMCUPOM
          'C', //WTIPO
          UsuarioAtualNome + '/' + UsuarioAutorizouOperacao, //WMVCXA255HIST
          'N',
          '');

          // Gravar Movimento de Caixa mostrando o Cancelamento da Venda no Caixa
      DM.SQLTemplate.Close;
      DM.SQLTemplate.SQL.Clear;
      DM.SQLTemplate.SQL.Add('select OPCXICOD from OPERACAOCAIXA');
      DM.SQLTemplate.SQL.Add('where OPCXA5SIGLA = ''CANCO''');
      DM.SQLTemplate.Open;
      if not DM.SQLTemplate.IsEmpty then
        GravaMovimentoCaixa(DM.SQLTotalizadorCaixa,
          DM.SQLTotalizar,
          EmpresaPadrao, //WEMPRICOD
          IntToStr(TerminalAtual), //WTERMICOD
          FormatDateTime('mm/dd/yyyy', Now), //WMVCIXDMOV
          'Null', //WNUMEICOD
          DM.SQLTemplate.FieldByName('OPCXICOD').AsString, //WOPCXICOD
          IntToStr(DM.UsuarioAtual), //WUSUAICOD
          'C.V. ' + NroCupomFiscal, //WMVCIXA15DOCORIG
          CurSubTotal.Value, //WMOVICAIXN2VLR
          0, //WMOVICAIXN2VLRJURO
          0, //WMOVICAIXN2VLRMULTA
          0, //WMOVICAIXN2VLRDEC
          'null', //WMOVICAIXA6NUMCUPOM
          'D', //WTIPO
          UsuarioAtualNome + '/' + UsuarioAutorizouOperacao, //WMVCXA255HIST
          'N',
          '')
      else
        Showmessage('N�o foi encontrado nenhuma Op.Caixa para Cancelamento de Venda pelo Operador! Verifique!');
    end;
  end;

  CodUsuarioAutorizouOperacao := 0;
  UsuarioAutorizouOperacao := '';

  FormTelaItens.LimparTabTempItens;
  TrocandoItens := False;

  if MostraPublicidade then
  begin
    slideshow.Enabled := True;
    slideshow.Visible := True;
    AdvSmoothPanel5.Visible := True;
    slideshow.Animation := True;
    PagePrincipal.ActivePage := TabVenda;
  end
  else
  begin
    slideshow.Enabled := False;
    slideshow.Visible := False;
    slideshow.Animation := false;
    AdvSmoothPanel5.Visible := False;
    PagePrincipal.ActivePage := TabVenda;
  end;
end;

procedure TFormTelaItens.CalculaTotal;
var
  ValorTemp: Double;
begin
  CurSubTotal.Value := 0;
  ValorTemp := 0;
  VlrBonusTroca := 0;

  SQLSubTotal.Close;
  SQLSubTotal.SQL.Clear;
  SQLSubTotal.SQL.Add('Select Sum(VLRTOTAL) as SubTotal from ' + UpperCase(TabelaMaisTerminal) + ' where TERMICOD = ' + dm.SQLTerminalAtivoTERMICOD.AsString + ' and (TROCA <> ''S'' or TROCA is null) and CANCELADO <> ''S''');
  SQLSubTotal.Open;
  if SQLSubTotal.FieldByName('SubTotal').Value > 0 then
    ValorTemp := SQLSubTotal.FieldByName('SubTotal').Value;

  ValorTemp := RoundTo(ValorTemp, -2);

  CurSubTotal.Value := ValorTemp;
  CurSubTotal.Update;

  // Calcula Total Bonus Troca
  SQLSubTotal.Close;
  SQLSubTotal.SQL.Clear;
  SQLSubTotal.SQL.add('Select Sum(VLRTOTAL) as SubTotal from ' + UpperCase(TabelaMaisTerminal) + ' where TERMICOD = ' + dm.SQLTerminalAtivoTERMICOD.AsString + ' and TROCA = ''S''');
  SQLSubTotal.Open;
  if SQLSubTotal.fieldbyname('SubTotal').Value > 0 then
    VlrBonusTroca := SQLSubTotal.fieldbyname('SubTotal').Value;

  VlrBonusTroca := RoundTo(VlrBonusTroca, -2);
  ValorBonusTroca.Value := VlrBonusTroca;
  ValorBonusTroca.Update;

  LblSubTotal.caption := FormatFloat('R$ ##0.00', CurSubTotal.value);
  LblSubTotal.update;

  Application.ProcessMessages;
end;

procedure TFormTelaItens.TestaStatusCaixa;
begin
  VerCaixa := false;

  if not FileExists('Posto.txt') then
  begin
    DM.SQLTemplate.Close;
    DM.SQLTemplate.SQL.Clear;
    DM.SQLTemplate.SQL.Add('select * from TERMINAL');
    DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual));
    DM.SQLTemplate.Open;

    TerminalAtualData := DateToStr(Date);

      //Testar o Status do Caixa
    if DM.SQLTemplate.FieldByName('TERMCSTATUSCAIXA').Value <> 'A' then
    begin
      if DM.SQLTemplate.FieldByName('TERMCSTATUSCAIXA').Value = 'F' then
      begin
        InformaG('O Caixa est� fechado desde ' + DM.SQLTemplate.FieldByName('TERMDSTATUSCAIXA').AsString + '.');
        TerminalAtualData := DateToStr(Date);
        EntradaDados.SelectAll;
        VerCaixa := True;
      end
      else begin
        InformaG('O Caixa nunca foi aberto!');
        EntradaDados.SelectAll;
        VerCaixa := True;
      end;
    end
    else
      if (DM.SQLTemplate.FieldByName('TERMDSTATUSCAIXA').Value <> StrToDate(TerminalAtualData)) and (not vNaoPedeMaisParaFechar) then
      begin
        if dm.SQLConfigGeralNAO_OBRIGA_FECHAR_CAIXA.asstring = 'S' then
        begin
          if Pergunta('SIM', 'O Caixa n�o foi fechado em ' + DM.SQLTemplate.FieldByName('TERMDSTATUSCAIXA').AsString
            + #13 + 'Deseja fechar agora?') then
            VerCaixa := True
          else vNaoPedeMaisParaFechar := True;
        end
        else begin
          InformaG('O Caixa n�o foi fechado em ' + DM.SQLTemplate.FieldByName('TERMDSTATUSCAIXA').AsString);
          VerCaixa := True;
        end;

        EntradaDados.SelectAll;
        TerminalAtualData := DM.SQLTemplate.FieldByName('TERMDSTATUSCAIXA').AsString;
      end;

    if VerCaixa then
    begin
      Application.CreateForm(TFormTelaMovimentoCaixa, FormTelaMovimentoCaixa);
      FormTelaMovimentoCaixa.Caption := FormTelaMovimentoCaixa.Caption + ' [' + DM.SQLTemplate.FieldByName('TERMA60DESCR').Value + ']';
      FormTelaMovimentoCaixa.EditData.Text := TerminalAtualData;
      FormTelaMovimentoCaixa.ShowModal;
      VoltaParaEntradaDados;
    end;
  end;
end;

procedure TFormTelaItens.CurSubTotalEnter(Sender: TObject);
begin
  VoltaParaEntradaDados;
  EntradaDados.SelectAll;
end;

procedure TFormTelaItens.FormActivate(Sender: TObject);
begin
  FinalizacaodeVenda := false;

  if TerminalModo = 'C' then
    TestaStatusCaixa;

  VoltaParaEntradaDados;
end;

procedure TFormTelaItens.ListaItensEnter(Sender: TObject);
begin
  VoltaParaEntradaDados;
end;

procedure TFormTelaItens.PreparaEstadoBalcao(Estado: string);
begin
  if EstadoPDVChk = AguardandoNovaVenda then
  begin
    if not SQLItensVendaTemp.Active then
      SQLItensVendaTemp.Open;

    Entradadados.Clear;

    LimparVariaveis;

    DescricaoProduto.Caption := '';
    AdicionalProduto.Caption := '';

//    if DetalhesVenda = 'S' then
//    begin
//      LBRef.Caption := '';
//      lbUnidade.Caption := '';
//      LBSaldo.Caption := '';
//    end;
    LblInstrucoes.Caption := '';

    rxVendedor.Visible := False;
    rxVendedor.Caption := '';
    rxVendedor.Update;

    LblBonusTroca.Visible := False;
    LblBonusTroca.Update;
    ValorBonusTroca.Value := 0;
    ValorBonusTroca.Visible := False;
    ValorBonusTroca.Update;

//    LimparTabTempItens;

    CalculaTotal;

    // GridItens.Options     := [dgTitles,dgCancelOnExit,dgIndicator];

    if TerminalModo = 'C' then
      LblInstrucoes.Caption := 'CAIXA LIVRE - Pr�ximo Cliente';
    if TerminalModo = 'P' then
      LblInstrucoes.Caption := 'PRE VENDA / OR�AMENTO LIVRE';

    LblInstrucoes.Refresh;

    // MANDA DADOS DISPLAY TECLADO
    if TecladoReduzidoModelo = 'TEC44DIS' then
      EnviaTecladoTextoDisplay44(LblInstrucoes.Caption, '');
    if TecladoReduzidoModelo = 'TEC65' then
      EnviaTecladoTextoDisplay65(LblInstrucoes.Caption, '');


{    if FileExists('Posto.txt') then
      EntradaDadosKeyDown(nil, F5, [ssAlt]);}

    exit;
  end;

  if EstadoPDVChk = InformandoItens then
  begin
    LblInstrucoes.Caption := 'Informe o Produto';

    if SolicitarPreco then
      LblInstrucoes.Caption := 'Informe o Produto (C/Valor Alterado)';

    if AplicarDescontoItem then
      LblInstrucoes.Caption := 'Informe o Produto (C/Desconto)';

    if ProcuraProdutoPelaRef08Char then
      LblInstrucoes.Caption := 'Informe o Produto pelo CD Barras Especial';

    LblInstrucoes.Refresh;

    exit;
  end;

  if EstadoPDVChk = InformandoItensTroca then
  begin
    LblInstrucoes.Caption := 'Informe o Produto para Troca';
    if SolicitarPreco then
      LblInstrucoes.Caption := 'Informe o Produto para Troca(C/Valor Alterado)';

    LblInstrucoes.Refresh;

    DescricaoProduto.Caption := '';
    AdicionalProduto.Caption := '';
//    if DetalhesVenda = 'S' then
//    begin
//      LBRef.Caption := '';
//      lbUnidade.Caption := '';
//      LBSaldo.Caption := '';
//    end;
    exit;
  end;

  if EstadoPDVChk = CancelandoItem then
  begin
    LblInstrucoes.Caption := 'Informe o Numero do Item a Cancelar';
    LblInstrucoes.Refresh;
    DescricaoProduto.Caption := '';
    AdicionalProduto.Caption := '';
//    if DetalhesVenda = 'S' then
//    begin
//      LBRef.Caption := '';
//      lbUnidade.Caption := '';
//      LBSaldo.Caption := '';
//    end;

    // MANDA DADOS DISPLAY TECLADO
    if TecladoReduzidoModelo = 'TEC44DIS' then
      EnviaTecladoTextoDisplay44(LblInstrucoes.Caption, '');
    if TecladoReduzidoModelo = 'TEC65' then
      EnviaTecladoTextoDisplay65(LblInstrucoes.Caption, '');

    exit;
  end;

  if EstadoPDVChk = DescontoPercItem then
  begin
    LblInstrucoes.Caption := 'Informe o % Desconto no Proximo Item';
    LblInstrucoes.Refresh;
    EntradaDados.Refresh;
    DescricaoProduto.Caption := '';
    AdicionalProduto.Caption := '';
//    if DetalhesVenda = 'S' then
//    begin
//      LBRef.Caption := '';
//      lbUnidade.Caption := '';
//      LBSaldo.Caption := '';
//    end;

    // MANDA DADOS DISPLAY TECLADO
    if TecladoReduzidoModelo = 'TEC44DIS' then
      EnviaTecladoTextoDisplay44(LblInstrucoes.Caption, '');
    if TecladoReduzidoModelo = 'TEC65' then
      EnviaTecladoTextoDisplay65(LblInstrucoes.Caption, '');

    exit;
  end;

  if EstadoPDVChk = DescontoVlrItem then
  begin
    LblInstrucoes.Caption := 'Informe o Valor de Desconto do Proximo Item';
    LblInstrucoes.Refresh;
    DescricaoProduto.Caption := '';
    AdicionalProduto.Caption := '';
//    if DetalhesVenda = 'S' then
//    begin
//      LBRef.Caption := '';
//      lbUnidade.Caption := '';
//      LBSaldo.Caption := '';
//    end;

    // MANDA DADOS DISPLAY TECLADO
    if TecladoReduzidoModelo = 'TEC44DIS' then
      EnviaTecladoTextoDisplay44(LblInstrucoes.Caption, '');
    if TecladoReduzidoModelo = 'TEC65' then
      EnviaTecladoTextoDisplay65(LblInstrucoes.Caption, '');

    Exit;
  end;

  if EstadoPDVChk = InformandoConvenio then
  begin
    LblInstrucoes.Caption := 'Informe o C�digo do Convenio';
    LblInstrucoes.Refresh;
    exit;
  end;

  if EstadoPDVChk = InformandoOrdemCompra then
  begin
    LblInstrucoes.Caption := 'Informe NRO. da Ordem de Compra do Conv�nio';
    LblInstrucoes.Refresh;
    exit;
  end;

  if EstadoPDVChk = InformandoClienteConvenio then
  begin
    LblInstrucoes.Caption := 'Informe o Cliente Deste Convenio';
    LblInstrucoes.Refresh;
    exit;
  end;

  if EstadoPDVChk = InformandoDescricaoTecnica then
  begin
    LblInstrucoes.Caption := 'Informe o Produto para Alterar a Descri��o T�cnica';
    LblInstrucoes.Refresh;
    // MANDA DADOS DISPLAY TECLADO
    if TecladoReduzidoModelo = 'TEC44DIS' then
      EnviaTecladoTextoDisplay44(LblInstrucoes.Caption, '');
    if TecladoReduzidoModelo = 'TEC65' then
      EnviaTecladoTextoDisplay65(LblInstrucoes.Caption, '');
    exit;
  end;

end;

procedure TFormTelaItens.LimparVariaveis;
begin
  LblCLiente.Caption := '';
  LblConvenio.Caption := '';
  ClienteVenda := '';
  ClienteCadastro := '';
  UsaPrecoVenda := '';
  ClienteDependente := '';
  NomeClienteVenda := '';
  EnderecoClienteVenda := '';
  CidadeClienteVenda := '';
  FoneClienteVenda := '';
  //DocumentoClienteVenda := '';
  OBSImpressaoCupom := '';
  PlacaCliente := '';
  KmCliente := '';
  ObsCupom := '';
  VendedorVenda := 0;
  PlanoVenda := 0;
  NumerarioVista := 0;
  NumerarioPrazo := 0;
  TermPVImp := 0;
  CodPVImp := 0;
  ConvenioVenda := 0;
  NroOrdemCompraConvenio := 0;
  TotalDescItens := 0;
  TipoPadrao := '';
  DataAniversario := '';
  Densidade := '';
  Medida := '';
  Espessura := '';
  Tecido := '';
  AplicarDescontoItem := False;
  ProcuraProdutoPelaRef08Char := False;
  GravaPrevendaSemFinanceiro := False;
  ImpValeTroco := False;

  if FileExists('Bmp\Logo PDV.Bmp') then
    Foto.Picture.LoadFromFile('Bmp\Logo PDV.Bmp');
  if FileExists('Bmp\Logo PDV.Jpg') then
    Foto.Picture.LoadFromFile('Bmp\Logo PDV.Jpg');

  ImprimeDadosClienteCupom := DM.SQLTerminalAtivoTERMCIMPRDADINTCUP.Value;

  try
    if not dm.TblCheques.Active then
      dm.TblCheques.Open;

    dm.TblCheques.First;
    while not dm.TblCheques.eof do
    begin
      dm.TblCheques.delete;
      Application.ProcessMessages;
    end;
  except
  end;
end;

procedure TFormTelaItens.CapturaCodigosIniciais;
begin
  if TerminalModo = 'C' then
  begin
      //CAPTURAR COD.PROX.CONTASRECEBER P/AGILIZAR FECHAMENTO CUPOM
    if CodProxCntRecTemp = 0 then
    begin
          // Foi colocada esse SQL para enganar o banco de dados e agilizar o retorno do Max.
      DM.SQLTemplate.Close;
      DM.SQLTemplate.SQL.Clear;
      DM.SQLTemplate.SQL.Add('Select CTRCICOD from CONTASRECEBER');
      DM.SQLTemplate.SQL.Add('Where 1=0');
      DM.SQLTemplate.SQL.Add('And TERMICOD = ' + IntToStr(TerminalAtual));
      DM.SQLTemplate.Open;

      DM.SQLTemplate.Close;
      DM.SQLTemplate.SQL.Clear;
      DM.SQLTemplate.SQL.Add('Select Max(CTRCICOD) from CONTASRECEBER');
      DM.SQLTemplate.SQL.Add('Where TERMICOD = ' + IntToStr(TerminalAtual));
      DM.SQLTemplate.Open;
      if DM.SQLTemplate.FieldByName('MAX').Value <> Null then
        CodProxCntRecTemp := DM.SQLTemplate.FieldByName('MAX').Value + 1
      else
        CodProxCntRecTemp := 1;
    end;
  end;
end;

procedure TFormTelaItens.InformaDescricaoTecnicaProduto;
begin
  if (EntradaDados.Text <> '') and (StrToInt(EntradaDados.Text) > 0) then
  begin
    if SQLItensVendaTemp.Locate('NUMITEM', IntToStr(StrToInt(EntradaDados.Text)), []) then
    begin
      LblInstrucoes.Caption := 'Informando a Descri��o T�cnica';
      Application.CreateForm(TFormTelaDescricaoTecnicaProduto, FormTelaDescricaoTecnicaProduto);
      FormTelaDescricaoTecnicaProduto.ShowModal;
      if FormTelaDescricaoTecnicaProduto.ModalResult = MrOk then
      begin
        SQLItensVendaTemp.Edit;
        SQLItensVendaTempDESCRICAOTEC.Value := FormTelaDescricaoTecnicaProduto.obs.Text;
        SQLItensVendaTempDENSIDADE.Value := FormTelaDescricaoTecnicaProduto.Densidade.Text;
        SQLItensVendaTempMEDIDA.Value := FormTelaDescricaoTecnicaProduto.Medida.Text;
        SQLItensVendaTempESPESSURA.Value := FormTelaDescricaoTecnicaProduto.Espessura.Text;
        SQLItensVendaTempTECIDO.Value := FormTelaDescricaoTecnicaProduto.Tecido.Text;
        SQLItensVendaTemp.Post;
        SQLItensVendaTemp.Last;
        FormTelaDescricaoTecnicaProduto.Close;
      end;
    end
    else
    begin
      ProdutoNaoCadastrado;
      Exit;
    end;
    FormTelaDescricaoTecnicaProduto.Free;
  end
  else
  begin
    EntradaDados.Text := '';
    EstadoPDVChk := 'InformandoItens';
    PreparaEstadoBalcao('InformandoItens');
  end;
  EntradaDados.Text := '';
  EstadoPDVChk := 'InformandoItens';
  PreparaEstadoBalcao('InformandoItens');
end;

procedure TFormTelaItens.DsSQLProvedorCartaoDataChange(Sender: TObject;
  Field: TField);
begin
  if Application.FindComponent('FormConsultaProvedor') <> nil then
  begin
    if SQLProvedorCartao.FieldByName('PRCAA60CARTAO').AsString = 'BANRISUL' then
    begin
      FormConsultaProvedor.PanelOpcoes.Visible := True;
      FormConsultaProvedor.Realign;
    end
    else
    begin
      FormConsultaProvedor.PanelOpcoes.Visible := False;
      FormConsultaProvedor.Realign;
    end;
  end;
end;

procedure TFormTelaItens.TimerLeitorTimer(Sender: TObject);
begin

  try
    if (FileExists('TelaAtiva.txt'))and(Screen.ActiveForm.active) then
      Screen.ActiveForm.BringToFront;   

   { PanelDataHora.Caption := FormatDateTime('ddddddddddddd hh:mm:ss', Now);
    PanelDataHora.Update; }
    {if (LeitorCodigoBarras <> '') then
      begin
        if(Serial.PortIsOpen) then      #ver
          begin
            Serial.GetData;
            Serial.FlushRX;
            Serial.FlushTX;
            Application.ProcessMessages;
          end;
      end; }
  except
    Application.ProcessMessages;
  end;
end;

{procedure TFormTelaItens.SerialAfterReceive(Sender: TObject; data: String);
begin
  if Data <> '' then
    begin
      if (Application.FindComponent('FormTelaItens') <> nil) and (FormTelaItens.Active) then
        begin
          EntradaDados.Text := TrataCodigoLidoPelaSerial(Data);
          if (EntradaDados.Focused) and (Length(Data) > 1) then
              EntradaDadosKeyDown(Sender,Enter,[ssAlt]);
        end
      else
        begin
          if (Application.FindComponent('FormTelaConsultaRapidaCliente') <> nil) and (FormTelaConsultaRapidaCliente.Active) then
            begin
              FormTelaConsultaRapidaCliente.VALOR.Text := TrataCodigoLidoPelaSerial(Data);
              if FormTelaConsultaRapidaCliente.VALOR.Focused and (Length(Data) > 1) then
                FormTelaConsultaRapidaCliente.VALORKeyDown(Sender,Enter,[ssAlt]);
            end;
        end;       #ver
    end;
end; }

procedure TFormTelaItens.EntradaDadosEnter(Sender: TObject);
begin
  EntradaDados.SelectAll;
end;

procedure TFormTelaItens.SQLItensVendaTempOKNewRecord(DataSet: TDataSet);
begin
  SQLItensVendaTempTERMICOD.Value := TerminalAtual;
end;

procedure TFormTelaItens.FotoClick(Sender: TObject);
begin
  // Abrir Tela Cheia com a Foto Grande
  Application.CreateForm(TFormTelaFotoExpandida, FormTelaFotoExpandida);
  FormTelaFotoExpandida.Foto.Picture.Assign(FormTelaItens.Foto.Picture);
  FormTelaFotoExpandida.ShowModal;
end;

procedure TFormTelaItens.SQLItensVendaTempNewRecord(DataSet: TDataSet);
begin
  SQLItensVendaTempTERMICOD.Value := TerminalAtual;
end;

procedure TFormTelaItens.LimparTabTempItens;
begin
  SQLItensVendaTemp.Close;
  try
    SQLItensVendaTemp.DeleteTable;
    SQLItensVendaTemp.CreateTable;
  except
    SQLItensVendaTemp.CreateTable;
  end;
  SQLItensVendaTemp.Open;

  SQLItensDescTemp.Close;
  try
    SQLItensDescTemp.DeleteTable;
    SQLItensDescTemp.CreateTable;
  except
    SQLItensDescTemp.CreateTable;
  end;
  SQLItensDescTemp.Open;

end;

procedure TFormTelaItens.EditQtdeExit(Sender: TObject);
begin
  if (EditQtde.Value < 0) then
  begin
    InformaG('A Quantidade nao pode ser menor que ZERO!');
    EditQtde.SetFocus;
  end;

  if (EditQtde.Value = 0) or (EditQtde.Value = Null) then
  begin
    ValorItem := 0;
    VoltaParaEntradaDados;
    PreparaEstadoBalcao(InformandoItens);
  end
  else
  begin
    LblInstrucoes.Caption := LbinstrucoesOld;
    LblInstrucoes.Update;
  end;
  QuantProx := EditQtde.Value;
end;

procedure TFormTelaItens.EditQtdeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  vDouble: Double;
begin
  if (Key = VK_Return) then
  begin
    if (EditQtde.Value > 0)  then
    begin
      vDouble := StrToFloat(EditQtde.Text);
      if vDouble >= 10000 then
      begin
        InformaG('Valor informado excede o limite permitido. Favor verificar!');
        EditQtde.SetFocus;
        Exit;
      end;
      if (EntradaDados.Text <> '') then
      begin
        VoltaParaEntradaDados;
        FormTelaItens.EstadoPDVChk := 'InformandoItens';
        EntradaDadosKeyDown(Sender, Enter, [ssAlt]);
      end
      else
        VoltaParaEntradaDados;
    end
    else
      VoltaParaEntradaDados;
  end;
  if (Key = VK_Escape) or (Key = VK_TAB) then
  begin
    ValorItem := 0;
    VoltaParaEntradaDados;
  end;
end;

procedure TFormTelaItens.EditQtdeEnter(Sender: TObject);
var
  RetornoUser: TInfoRetornoUser;
begin
  LbinstrucoesOld := LblInstrucoes.Caption;
  if (EstadoPDVChk <> InformandoItens) and (EstadoPDVChk <> InformandoItensTroca) and (F2_AUTOMATICO = 'N') then
  begin
    InformaG('A altera��o da quantidade do item s� pode aplicada quando o sistema est� solicitando itens!');
    VoltaParaEntradaDados;
    Exit;
  end;

  if DM.SQLUsuario.Locate('USUAICOD', UsuarioCorrente, []) then
    if DM.SQLUsuario.FieldByName('USUACTROCAQTDE').AsString <> 'S' then
    begin
      RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome, 'USUACTROCAQTDE', RetornoUser);
      if RetornoCampoUsuario <> 'S' then
      begin
        InformaG('Usuario n�o tem permiss�o para alterar a quantidade!');
        VoltaParaEntradaDados;
        Exit;
      end;
    end;

  LblInstrucoes.Caption := 'Informe a Quantidade...';
  LblInstrucoes.Refresh;
  // MANDA DADOS DISPLAY TECLADO
  if TecladoReduzidoModelo = 'TEC44DIS' then
    EnviaTecladoTextoDisplay44(LblInstrucoes.Caption, '');
  if TecladoReduzidoModelo = 'TEC65' then
    EnviaTecladoTextoDisplay65(LblInstrucoes.Caption, '');
end;

procedure TFormTelaItens.GridItensDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if SQLItensVendaTempTROCA.Value = 'S' then
  begin
    GridItens.Canvas.Font.Color := clGreen;
    GridItens.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
  if SQLItensVendaTempCANCELADO.Value = 'S' then
  begin
    GridItens.Canvas.Font.Color := clRed;
    GridItens.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TFormTelaItens.EntradaDadosKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 107 then // sinal de + para fazer igual ao CTRL+Q
  begin
    if (EstadoPDVChk = InformandoItens) then
    begin
      Key := 0;
      EntradaDados.SelText := '';
      Entradadados.SetSelTextBuf('');
      if EstadoPDVChk <> InformandoItens then
      begin
        InformaG('A altera��o da quantidade do item s� pode aplicada quando o sistema est� solicitando itens!');
        EntradaDados.SelectAll;
        exit;
      end;
      EntradaDados.Clear;
      EditQtde.SetFocus;
    end;
  end;
end;

procedure TFormTelaItens.BtnF1Click(Sender: TObject);
begin
  Application.CreateForm(TFormTelaTeclasAtalhoTelaItens, FormTelaTeclasAtalhoTelaItens);
  FormTelaTeclasAtalhoTelaItens.ShowModal;
end;

procedure TFormTelaItens.BtnF2Click(Sender: TObject);
begin
  VoltaParaEntradaDados;
  if EstadoPDVChk = 'AguardandoNovaVenda' then
    FormKeyDown(Sender, F2, [ssAlt]);
end;

procedure TFormTelaItens.BtnF3Click(Sender: TObject);
begin
  VoltaParaEntradaDados;
  FormKeyDown(Sender, F3, [ssAlt]);
end;

procedure TFormTelaItens.BtnF4Click(Sender: TObject);
begin
  VoltaParaEntradaDados;
  FormKeyDown(Sender, F4, [ssShift]);
end;

procedure TFormTelaItens.BtnF11Click(Sender: TObject);
begin
  VoltaParaEntradaDados;
  FormKeyDown(Sender, F11, [ssAlt]);
end;

procedure TFormTelaItens.BtnF12Click(Sender: TObject);
begin
  VoltaParaEntradaDados;
  FormKeyDown(Sender, F12, [ssAlt]);
end;

procedure TFormtelaItens.vercontas;
var totalcliente, TotParcRec, Saldo: extended;
  Vencimento: TDatetime;
begin
  TotalCliente := 0;

  DM.MemCtRecParc.Close;
  try
    DM.MemCtRecParc.DeleteTable;
  except
    Application.ProcessMessages;
  end;

  DM.MemCtRecParc.CreateTable;
  DM.MemCtRecParc.AddIndex('RecTemp', 'CTRCDVENC;CUPODEMIS;CUPOA13ID;CTRCA13ID;CTRCINROPARC', [ixPrimary]);
  DM.MemCtRecParc.IndexFieldNames := 'CTRCDVENC;CUPODEMIS;CUPOA13ID;CTRCA13ID;CTRCINROPARC';
  DM.MemCtRecParc.Open;

  SQLContasReceber.Close;
  SQLContasReceber.MacroByName('MFiltro').AsString := ' CLIEA13ID = ''' + ClienteVenda + ''' and CTRCCSTATUS <> ''C''' +
    ' AND CTRCN2VLR > CTRCN2TOTREC';
  SQLContasReceber.Open;

          //PROCURAR NO CONTASRECEBER SE EXISTEM ALGUM EM ABERTO
  SQLContasReceber.First;
  TotParcRec := 0;
  while not SQLContasReceber.EOF do
  begin
    TotParcRec := TotParcRec + (SQLContasReceberCTRCN2VLR.Value -
      SQLContasReceberCTRCN2TOTREC.Value);
    SQLContasReceber.Next;
  end;
  if TotParcRec > 0 then
  begin
    SQLContasReceber.First;
    while not SQLContasReceber.EOF do
    begin
      Saldo := SQLContasReceberCTRCN2VLR.Value - SQLContasReceberCTRCN2TOTREC.Value;
      if Saldo > 0 then
      begin
        DM.MemCtRecParc.Append;
        if SQLContasReceberCUPOA13ID.AsString <> '' then
          DM.MemCtRecParcCUPOA13ID.Value := SQLContasReceberCUPOA13ID.Value
        else
          DM.MemCtRecParcCUPOA13ID.Value := 'Parc. Avulsa';

        DM.MemCtRecParcCUPODEMIS.Value := SQLContasReceberCTRCDEMIS.Value;
        DM.MemCtRecParcCLIEA13ID.Value := SQLContasReceberCLIEA13ID.Value;
        DM.MemCtRecParcCTRCA13ID.Value := SQLContasReceberCTRCA13ID.Value;
        DM.MemCtRecParcCTRCINROPARC.Value := SQLContasReceberCTRCINROPARC.Value;
        DM.MemCtRecParcCTRCDVENC.Value := SQLContasReceberCTRCDVENC.Value;
        DM.MemCtRecParcCTRCDULTREC.AsDateTime := SQLContasReceberCTRCDULTREC.AsDateTime;

        if SQLContasReceberCTRCDULTREC.AsVariant <> Null then
          Vencimento := SQLContasReceberCTRCDULTREC.AsDateTime
        else
          Vencimento := SQLContasReceberCTRCDVENC.AsDateTime;

                  //Atualiza Configura��es
        DM.SQLConfigCrediario.Close;
        DM.SQLConfigCrediario.Open;
                  ///////////////////////////

        if SQLContasReceberCTRCN2TXJURO.Value > 0 then
          DM.MemCtRecParcCTRCN2VLRJURO.Value := CalculaJuroMultaDesc(Saldo,
            SQLContasReceberCTRCN2TXJURO.Value,
            SQLContasReceberCTRCDVENC.Value, // Adilson Troquei a variavel Vencimento pelo campo SQLParcelasCTRCDVENC.Value.
            Date,
            0,
            DM.SQLConfigCrediarioCFCRINRODIASTOLJUR.Value,
            'Juro',
            SQLContasReceberCUPOA13ID.AsString,
            SQLContasReceberCTRCINROPARC.AsString)
        else
          DM.MemCtRecParcCTRCN2VLRJURO.Value := 0;

        if DM.SQLConfigCrediarioCFCRN2PERCTAXACOBR.Value > 0 then
          DM.MemCtRecParcCTRCN2VLRTXCOBR.Value := CalculaJuroMultaDesc(Saldo,
            DM.SQLConfigCrediarioCFCRN2PERCTAXACOBR.Value,
            Vencimento,
            Date,
            0,
            0,
            'TaxaCobranca',
            SQLContasReceberCUPOA13ID.AsString,
            SQLContasReceberCTRCINROPARC.AsString);


        if (SQLContasReceberCTRCN2TXMULTA.Value > 0) then
          DM.MemCtRecParcCTRCN2VLRMULTA.Value := CalculaJuroMultaDesc(Saldo,
            SQLContasReceberCTRCN2TXMULTA.Value,
            Vencimento,
            Date,
            0,
            DM.SQLConfigCrediarioCFCRINRODIASTOLMUL.Value,
            'Multa',
            SQLContasReceberCUPOA13ID.AsString,
            SQLContasReceberCTRCINROPARC.AsString)
        else
          DM.MemCtRecParcCTRCN2VLRMULTA.Value := 0;

        if DM.SQLConfigCrediarioCFCRN2PERCADIANT.Value > 0 then
          DM.MemCtRecParcCTRCN2VLRDESC.Value := CalculaJuroMultaDesc(Saldo,
            DM.SQLConfigCrediarioCFCRN2PERCADIANT.Value,
            Vencimento,
            Date,
            0,
            DM.SQLConfigCrediarioCFCRINRODIASADIANT.Value,
            'Desconto',
            SQLContasReceberCUPOA13ID.AsString,
            SQLContasReceberCTRCINROPARC.AsString)
        else
          DM.MemCtRecParcCTRCN2VLRDESC.Value := 0;

        DM.MemCtRecParcCTRCN2VLR.Value := (SQLContasReceberCTRCN2VLR.Value +
          DM.MemCtRecParcCTRCN2VLRJURO.Value +
          DM.MemCtRecParcCTRCN2VLRMULTA.Value +
          DM.MemCtRecParcCTRCN2VLRTXCOBR.Value) -
          DM.MemCtRecParcCTRCN2VLRDESC.Value -
          SQLContasReceberCTRCN2TOTREC.AsFloat;

        DM.MemCtRecParcValorOrigem.Value := Saldo;
        DM.MemCtRecParc.Post;
      end;
      TotalCliente := TotalCliente + DM.MemCtRecParcCTRCN2VLR.Value;
      SQLContasReceber.Next;
    end;
  end;
  DM.MemCtRecParc.First;
  Screen.Cursor := crDefault;
  if not DM.MemCtRecParc.EOF then
  begin
    Application.CreateForm(TFormTelaConsultaContratosCliente, FormTelaConsultaContratosCliente);
    FormTelaConsultaContratosCliente.panel1.Visible := false;
    FormTelaConsultaContratosCliente.ShowModal;
  end;
end;

procedure TFormTelaItens.TimeLembreteTimer(Sender: TObject);
begin
  inherited;
  if (DM.SQLPopUPCFGCCEXIBIRPOPTARE.AsString = 'S') and (EstadoPDVChk = AguardandoNovaVenda) then
  begin
    SQLAgendaVer.Close;
    SQLAgendaVer.SQL.Text := 'Select Count(*) From TAREFA Where  USUAICODDEST = ' + IntToStr(UsuarioCorrente) + ' and TARECSTATUS <> ''T''';
    SQLAgendaVer.Open;
    if (SQLAgendaVer.FieldByName('Count').AsInteger > 0) then
    begin
      if Application.FindComponent('FormTelaLembreteTarefa') = nil then
      begin
        Application.CreateForm(TFormTelaLembreteTarefa, FormTelaLembreteTarefa);
        FormTelaLembreteTarefa.Show;
      end;
    end;
  end;
end;

function TFormTelaItens.GravaCupom: Boolean;
begin
  // Grava Cupom Cabecalho
  DM.SQLCupom.Close;
  DM.SQLCupom.MacroByName('MFiltro').Value := 'CUPOA13ID is null And TERMICOD = ' + IntToStr(TerminalAtual) + ' And EMPRICOD = ' + EmpresaPadrao;
  DM.SQLCupom.Open;

  DM.SQLCupom.Append;

  DM.SQLConfigVenda.Close;
  DM.SQLConfigVenda.Open;

  if DM.SQLConfigVendaOPESICODCUPOM.AsVariant <> Null then
  begin
    DM.SQLCupomOPESICOD.Value := DM.SQLConfigVendaOPESICODCUPOM.Value;
    if DM.ProcuraRegistro('OPERACAOESTOQUE', ['OPESICOD'], [DM.SQLConfigVendaOPESICODCUPOM.AsString], 1) then
    begin
      if DM.SQLTemplate.FieldByName('PLCTA15CODDEB').AsString <> '' then
        DM.SQLCupomPLCTA15CODDEB.AsString := DM.SQLTemplate.FieldByName('PLCTA15CODDEB').AsString;
      if DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString <> '' then
        DM.SQLCupomPLCTA15CODCRED.AsString := DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString;
      if DM.SQLTemplate.FieldByName('CFOPA5CODDENTROUF').AsString <> '' then
        DM.SQLCupomCFOPA5COD.AsString := DM.SQLTemplate.FieldByName('CFOPA5CODDENTROUF').AsString;
    end;
  end;

  DM.SQLCupomEMPRICOD.AsString := EmpresaPadrao;
  DM.SQLCupomTERMICOD.Value := TerminalAtual;
  DM.SQLCupomCUPODEMIS.Value := Date;
  DM.SQLCupomUSUAICODVENDA.Value := UsuarioCorrente;
  DM.SQLCupomUSUAICODCANC.Value := CodUsuarioAutorizouOperacao;
  DM.SQLCupomCUPOCSTATUS.Value := 'C';
  DM.SQLCupomCUPON2TOTITENS.AsCurrency := RoundTo(CurSubTotal.Value, -2);
  DM.SQLCupomCUPON2TOTITENSRET.Value := 0;
  DM.SQLCupomCUPON2ACRESC.Value := 0;
  DM.SQLCupomCUPON2DESC.Value := 0;
  DM.SQLCupomCUPON2DESCITENS.Value := 0;
  DM.SQLCupomCUPOINRO.AsString := NroCupomFiscal;
  DM.SQLCupomCUPOCTIPOPADRAO.Value := 'VISTA';
  DM.SQLCupomCUPODQUITACAO.AsDateTime := Date;
  DM.SQLCupomCUPON2CONVTAXA.Value := 0;
  DM.SQLCupomCUPOINROORDCOMPRA.Value := 0;
  DM.SQLCupomCUPON2VLRCOMISSAO.Value := 0;
  DM.SQLCupomCUPON2JUROATRAS.Value := 0;
  DM.SQLCupomCUPON2MULTAATRAS.Value := 0;
  DM.SQLCupomCUPON3CREDTAXA.Value := 0;
  DM.SQLCupomPLRCICOD.Value := dm.SQLTerminalAtivoPLRCICOD.Value;
  DM.SQLCupomVENDICOD.Value := dm.SQLTerminalAtivoVENDICOD.Value;
  DM.SQLCupomCLIEA13ID.Value := dm.SQLTerminalAtivoCLIEA13ID.Value;
  DM.SQLCupomPLRCICOD.Value := dm.SQLTerminalAtivoPLRCICOD.Value;
  DM.SQLCupomCLIENTENOME.Value := 'Consumidor Final';
  DM.SQLCupomPENDENTE.Value := 'S';
  DM.SQLCupomREGISTRO.Value := Now;
  try
    DM.SQLCupom.Post;
    GravaCupom := True;
    Application.ProcessMessages;
  except
    DM.SQLCupom.Cancel;
    GravaCupom := False;
    Application.ProcessMessages;
  end;
end;

function TFormTelaItens.GravaCupomItem: Boolean;
begin
  GravaCupomItem := False;
  DM.SQLCupomItem.Close;
  DM.SQLCupomItem.MacroByName('MFiltro').Value := 'CUPOA13ID is null';
  DM.SQLCupomItem.Open;
  SQLItensVendaTemp.First;
  while not SQLItensVendaTemp.Eof do
  begin
    DM.SQLCupomItem.Append;
    DM.SQLCupomItemEMPRICOD.Value := EmpresaCorrente;
    DM.SQLCupomItemCUPOA13ID.Value := dm.SQLCupomCUPOA13ID.Value;
    DM.SQLCupomItemCPITIPOS.Value := SQLItensVendaTempNUMITEM.Value;
    DM.SQLCupomItemPRODICOD.AsString := SQLItensVendaTempCODIGO.AsString;
    DM.SQLCupomItemCPITCSTATUS.AsString := 'C';
    DM.SQLCupomItemCPITN3QTD.Value := SQLItensVendaTempQUANTIDADE.Value;
    DM.SQLCupomItemCPITN3QTDTROCA.Value := 0;
    DM.SQLCupomItemCPITN3VLRUNIT.Value := SQLItensVendaTempVLRUNITBRUT.Value;
    DM.SQLCupomItemCPITN3VLRCUSTUNIT.Asstring := SQLItensVendaTempVLRCUSTO.AsString;
    DM.SQLCupomItemCPITN2DESC.Value := 0; // Foi retirado o desconto para gravar o valor real da venda
    DM.SQLCupomItemCPITN2VLRDESCSOBTOT.Value := 0;
    try
      DM.SQLCupomItemCPITN3VLRUNITLUCR.Value := SQLItensVendaTempVLRUNITBRUT.Value - SQLItensVendaTempVLRCUSTO.Value;
    except
      DM.SQLCupomItemCPITN3VLRUNITLUCR.Value := 0;
    end;
    DM.SQLCupomItemVENDICOD.Value := dm.SQLTerminalAtivoVENDICOD.Value;
    DM.SQLCupomItemENCERRANTE.AsString := '';
    DM.SQLCupomItemCOITN2ICMSALIQ.Value := 0;
    DM.SQLCupomItemCPITN2BASEICMS.Value := 0;
    DM.SQLCupomItemCPITN2VLRICMS.Value := 0;
    DM.SQLCupomItemCPITN2VLRQDEVERIAVENDER.Value := 0;
    DM.SQLCupomItemPENDENTE.Value := 'S';
    DM.SQLCupomItemREGISTRO.Value := now;
    try
      DM.SQLCupomItem.Post;
      GravaCupomItem := True;
      Application.ProcessMessages;
    except
      DM.SQLCupomItem.Cancel;
      GravaCupomItem := False;
      Application.ProcessMessages;
    end;

    SQLItensVendaTemp.Next;
  end;
end;


procedure TFormTelaItens.BtF7Click(Sender: TObject);
begin
  VoltaParaEntradaDados;
  FormKeyDown(Sender, F7, [ssAlt]);
end;

procedure TFormTelaItens.btnSairClick(Sender: TObject);
begin
  VoltaParaEntradaDados;
  if EstadoPDVChk <> AguardandoNovaVenda then
    keybd_event(27, 27, 0, 0)
  else
    Close;
end;

procedure TFormTelaItens.FormShow(Sender: TObject);
begin
  ConfACBrPosPrinter;
  CriardmECF;
  CriardmSiTEF;      
  
  dm.SQLCupom.RequestLive := True;
  dm.SQLCupomItem.RequestLive := True;

  {Testa pra ver se tem caminho ao Servidor para definir se o PDV � Offline}
  if dm.ConectaServidor then
    shpStatusServidor.Brush.Color := clLime
  else
    shpStatusServidor.Brush.Color := clRed;

  {Testar o Estado da ECF}
  if (ECFAtual <> '') and (Copy(ECFAtual, 1, 4) <> 'NFCE') then
  begin
    MakeWindow(1, 'Aguarde... Procurando ECF...');
    if VerificaECFLigada(EcfAtual, PortaECFAtual) then
    begin
      DestroyWindow;
      lbStatusECF.Caption := 'ECF OnLine';
      shpStatusECF.Brush.Color := clLime;

         {Testa se Tem Reducao Z Pendente}
         {  if VerificaZPendente(EcfAtual, PortaECFAtual) then
           InformaG('Existe uma Redu��o Z Pendente!'); }
    end
    else
    begin
      DestroyWindow;
      InformaG('ECF Desligada ou N�o Configurada!');
      lbStatusECF.Caption := 'ECF OffLine';
      shpStatusECF.Brush.Color := clRed;
    end;
  end;
  slideshow.Animation := True;
end;

procedure TFormTelaItens.setarceiroClick(Sender: TObject);
begin
  try
    WinExec(Pchar(ParceiroPath), sw_Show);
  except
    Application.ProcessMessages;
  end;

  VoltaParaEntradaDados;
end;

procedure TFormTelaItens.ACBrMailMailProcess(const AMail: TACBrMail;
  const aStatus: TMailStatus);
begin
  Application.ProcessMessages;
end;

function TFormTelaItens.GravarOrcamento: boolean;
begin
  if not DM.SQLPedidoVenda.Active then
    DM.SQLPedidoVenda.Open;

  LblInstrucoes.Caption := 'Gravando Or�amento...';
  LblInstrucoes.Refresh;

  DM.SQLPedidoVenda.Append;
  DM.SQLPedidoVendaEMPRICOD.Value := StrToInt(EmpresaPadrao);
  DM.SQLPedidoVendaVENDICOD.Value := VendedorVenda;
  DM.SQLPedidoVendaPLRCICOD.Value := dm.SQLTerminalAtivoPLRCICOD.Value;
  DM.SQLPedidoVendaPDVDDEMISSAO.Value := Date;
  DM.SQLPedidoVendaUSUAA60LOGIN.Value := UsuarioAtualNome;

  DM.SQLPedidoVendaCLIEA13ID.Value := ClienteVenda;
  DM.SQLPedidoVendaCLIENTENOME.Value := NomeClienteVenda;
  DM.SQLPedidoVendaCLIENTEFONE.Value := FoneClienteVenda;
  DM.SQLPedidoVendaCLIENTEEMAIL.Value := EmailCliente;
  DM.SQLPedidoVendaPDVDTOBS.Value := OBSImpressaoCupom;

  DM.SQLPedidoVendaPDVDN2VLRDESCPROM.Value := 0;
  DM.SQLPedidoVendaPDVDN2VLRFRETE.Value := 0;
  DM.SQLPedidoVendaPDVDCTIPO.Value := 'O';
  DM.SQLPedidoVendaPDVDCSTATUS.Value := 'A';

  DM.SQLPedidoVendaPDVDN2VLRDESCPROM.Value := 0;
  DM.SQLPedidoVendaPDVDN2VLRDESC.Value := 0;

  DM.SQLPedidoVendaPDVDN2TOTPROD.Value := RoundTo(CurSubTotal.Value + TotalDescItens, -2);
  DM.SQLPedidoVendaPDVDN2TOTPED.Value := RoundTo(CurSubTotal.Value, -2);

  DM.SQLPedidoVendaREGISTRO.Value := Now;
  DM.SQLPedidoVendaPENDENTE.Value := 'S';
  DM.SQLPedidoVendaPDVDCTIPOFRETE.Value := '';
  DM.SQLPedidoVendaPDVDDENTREGA.Value := Now;
  DM.SQLPedidoVendaPDVDCIMPORTADO.Value := 'N';
  try
    GravarOrcamento := True;
    DM.SQLPedidoVenda.Post;
  except
    GravarOrcamento := False;
    DM.SQLPedidoVenda.Cancel;
  end;
end;

function TFormTelaItens.GravarItensOrcamento: boolean;
var i: integer;
begin
  i := 1;
  if not DM.SQLPedidoVendaItem.Active then
    DM.SQLPedidoVendaItem.Open;

  SQLItensVendaTemp.First;
  while not FormTelaItens.SQLItensVendaTemp.EOF do
  begin
    LblInstrucoes.Caption := 'Gravando Itens do Or�amento...';
    LblInstrucoes.Refresh;

    if SQLItensVendaTempCANCELADO.Value <> 'S' then
    begin
      DM.SQLPedidoVendaItem.Append;
      DM.SQLPedidoVendaItemPDVDA13ID.Value := DM.CodNextOrc;
      DM.SQLPedidoVendaItemPVITIITEM.Value := SQLItensVendaTempNUMITEM.Value;
      DM.SQLPedidoVendaItemPRODICOD.Value := SQLItensVendaTempCODIGO.Value;
      DM.SQLPedidoVendaItemPVITN3QUANT.Value := SQLItensVendaTempQUANTIDADE.Value;
      DM.SQLPedidoVendaItemPVITN3QUANTVEND.Value := SQLItensVendaTempQUANTIDADE.Value;
      DM.SQLPedidoVendaItemPVITN2VLRUNIT.Value := SQLItensVendaTempVLRUNITBRUT.Value;
      DM.SQLPedidoVendaItemPVITN2PERCDESC.Value := 0;
      DM.SQLPedidoVendaItemPVITN2VLRDESC.Value := SQLItensVendaTempVLRDESC.Value;
      DM.SQLPedidoVendaItemPVITN3TOTVENDITEM.Value := (SQLItensVendaTempQUANTIDADE.Value *
        SQLItensVendaTempVLRUNITBRUT.Value) -
        SQLItensVendaTempVLRDESC.Value;

      DM.SQLPedidoVendaItemREGISTRO.Value := Now;
      DM.SQLPedidoVendaItemPENDENTE.Value := 'S';
      DM.SQLPedidoVendaItemPDVDA60OBS.Value := '';

      DM.SQLPedidoVendaItemUNIDICOD.AsString := SQLLocate('PRODUTO', 'PRODICOD', 'UNIDICOD', SQLItensVendaTempCODIGO.AsString);
      DM.SQLPedidoVendaItemPVITN2PERCCOMIS.Value := 0;
      DM.SQLPedidoVendaItemPRODN3PESOBRUTO.Value := 0;
      DM.SQLPedidoVendaItemPRODCMIX.Value := 'D';

      if SQLItensVendaTempDESCRICAOTEC.AsString <> '' then
        DM.SQLPedidoVendaItemPDVDA255OBS1.AsString := SQLItensVendaTempDESCRICAOTEC.AsString;
      DM.SQLPedidoVendaItem.Post;
    end;
    SQLItensVendaTemp.Next;
    Inc(i);
  end;
end;

procedure TFormTelaItens.btnF7Click(Sender: TObject);
begin
  VoltaParaEntradaDados;
  FormKeyDown(Sender, F7, [ssAlt]);
end;

function TFormTelaItens.Transmite_NFCe(idCupom: string): Boolean;
var Tentativa: integer;
  sTipoPadrao, xNomeCliente: string;
  TotalPrazo: Double;
begin
  Inicia_NFe;

  {Pega o Troco}
  SQLImpressaoCupom.Close;
  SQLImpressaoCupom.RequestLive := True;
  SQLImpressaoCupom.SQL.Clear;
  SQLImpressaoCupom.SQL.Add('Select CUPOINRO, TROCO, CHAVEACESSO, PROTOCOLO, STNFE From CUPOM Where CUPOA13ID =  ''' + idCupom + '''');
  SQLImpressaoCupom.Open;
  VarValorTroco := SQLImpressaoCupom.fieldbyname('TROCO').Value;
  dm.ACBrNFeDANFeESCPOS.vTroco := VarValorTroco;

  dm.TotalCartao := 0;
  ProvedorCartao := '';
  TotalPrazo := 0;
  sTipoPadrao := '';
  SQLImpressaoCupom.Close;
  SQLImpressaoCupom.SQL.clear;
  SQLImpressaoCupom.SQL.Text := 'Select * from CUPOMNUMERARIO where CUPOA13ID = ''' + idCupom + '''';
  SQLImpressaoCupom.Open;
  while not SQLImpressaoCupom.eof do
  begin
    xNomeCliente := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA60RAZAOSOC', '''' + SQLImpressaoCupom.fieldbyname('CLIEA13ID').AsString + '''');
    sTipoPadrao := SQLLocate('NUMERARIO', 'NUMEICOD', 'NUMEA5TIPO', SQLImpressaoCupom.fieldbyname('NUMEICOD').AsString);
    if (sTipoPadrao = 'CRT') then
    begin
      dm.TotalCartao := dm.TotalCartao + GetCPNMN2VLR(idCupom,SQLImpressaoCupom.fieldbyname('NUMEICOD').AsInteger);
      ProvedorCartao := SQLLocate('NUMERARIO', 'NUMEICOD', 'PRCAA13ID', SQLImpressaoCupom.fieldbyname('NUMEICOD').AsString);
      dm.NumerarioCartao := SQLImpressaoCupom.fieldbyname('NUMEICOD').AsString;
      NomeNumerarioCartao := SQLLocate('NUMERARIO', 'NUMEICOD', 'NUMEA30DESCR', SQLImpressaoCupom.fieldbyname('NUMEICOD').AsString);
    end;
    SQLImpressaoCupom.next;
  end;

  // Abrir CONTASRECEBER para ver se tem algum registro e popular a tabela temporaria a prazo
  SQLImpressaoCupom.close;
  SQLImpressaoCupom.SQL.clear;
  SQLImpressaoCupom.SQL.Text := 'Select * from CONTASRECEBER where CUPOA13ID = ''' + idCupom + '''';
  SQLImpressaoCupom.open;
  while not SQLImpressaoCupom.eof do
  begin
    xNomeCliente := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA60RAZAOSOC', '''' + SQLImpressaoCupom.fieldbyname('CLIEA13ID').AsString + '''');
    sTipoPadrao := SQLLocate('NUMERARIO', 'NUMEICOD', 'NUMEA5TIPO', SQLImpressaoCupom.fieldbyname('NUMEICOD').AsString);
    if (sTipoPadrao = 'CRT') then
    begin
      TipoPadrao := SQLImpressaoCupom.fieldbyname('CTRCA5TIPOPADRAO').AsString;
      dm.TotalCartao := dm.TotalCartao + SQLImpressaoCupom.fieldbyname('CTRCN2VLR').Value;
      ProvedorCartao := SQLLocate('NUMERARIO', 'NUMEICOD', 'PRCAA13ID', SQLImpressaoCupom.fieldbyname('NUMEICOD').AsString);
      dm.NumerarioCartao := SQLImpressaoCupom.fieldbyname('NUMEICOD').AsString;
      NomeNumerarioCartao := SQLLocate('NUMERARIO', 'NUMEICOD', 'NUMEA30DESCR', SQLImpressaoCupom.fieldbyname('NUMEICOD').AsString);
    end;
    if (sTipoPadrao = 'CRD') or (sTipoPadrao = 'CRTF') or (sTipoPadrao = 'CHQP') then
      TotalPrazo := TotalPrazo + SQLImpressaoCupom.fieldbyname('CTRCN2VLR').Value; ;

    SQLImpressaoCupom.Next;
  end;

  // Cria o arquivo XML
  sXML := Gerar_NFCe(idCupom);
  chave := copy(dm.ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID, (length(dm.ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID) - 44) + 1, 44);

  if chave = '' then
  begin
    ShowMessage('O sistema nao conseguiu gerar a Chave Eletronica! Tente Novamente');
    ImpCupomAutomatico := false;
    Exit;
  end;

  SQLImpressaoCupom.Close;
  SQLImpressaoCupom.RequestLive := False;
  SQLImpressaoCupom.SQL.Text := 'Update CUPOM Set CUPOINRO=' + IntToStr(NumNFe) + ', CHAVEACESSO=''' + chave + '''' +
    ' Where CUPOA13ID =''' + idCupom + '''';
  SQLImpressaoCupom.ExecSQL;

  LblInstrucoes.Caption := 'Assinando NFCe.: ' + inttostr(NumNFe);
  LblInstrucoes.Update;
  dm.ACBrNFe.NotasFiscais.Assinar;
  LblInstrucoes.Caption := 'Validando NFCe.: ' + inttostr(NumNFe);
  LblInstrucoes.Update;
  dm.ACBrNFe.NotasFiscais.Validar;
  if (ECFAtual <> 'NFCE A4') and (Imprimir_Nfce) then
  begin
    LblInstrucoes.Caption := 'Imprimindo NFCe.: ' + inttostr(NumNFe);
    LblInstrucoes.Update;
    dm.ACBrNFe.NotasFiscais.Imprimir;
    if NroViasImpVenda = '2' then
    begin
      if Application.MessageBox(PChar('Imprimir Segunda Via NFCe?'), PChar(Application.Title), MB_SYSTEMMODAL + MB_YesNo + MB_IconQuestion + MB_DEFBUTTON2) = IdYes then
        dm.ACBrNFe.NotasFiscais.Imprimir;
    end;
  end;

  {Testa se tem o arquivo Tef_Retorno.txt, imprime o cupom tef}
  if (dm.TotalCartao > 0) and (ProvedorCartao <> '') then
  begin
    DadosImpressora.ECFAtual := ECFAtual;
    DadosImpressora.PortaECFAtual := PortaECFAtual;
    if not ImprimeRetorno(RetornoCartao, DadosImpressora, NroViasTEF, False) then
    begin
      if Pergunta('SIM', 'Tenta Reimprimir Cupom TEF') then
        if ImprimeRetorno(RetornoCartao, DadosImpressora, NroViasTEF, False) then
        begin
                {Se imprimiu Confirma a Transacao}
          Confirma(RetornoCartao.NomeRede, RetornoCartao.NroTransacao, RetornoCartao.Finalizacao, True);
        end;
    end
    else
    begin
          {Se imprimiu Confirma a Transacao}
      Confirma(RetornoCartao.NomeRede, RetornoCartao.NroTransacao, RetornoCartao.Finalizacao, True);
    end;
  end;

  {imprime se tiver confissao divida e tiver TotalPrazo seja Cheq, Crediario ou Fidelizacao}
  ImprimirConfissaoDeDivida(TotalPrazo,xNomeCliente);

  LblInstrucoes.Caption := 'Enviando ao Sefaz RS NFCe: ' + inttostr(NumNFe);
  LblInstrucoes.Update;
  dm.ACBrNFe.Enviar('1', False, False);

  Tentativa := 0;
  while Tentativa < 5 do
  begin
    Tentativa := Tentativa + 1;
    Application.ProcessMessages;
    LblInstrucoes.Caption := 'Consulta Retorno do Sefaz RS NFCe: ' + inttostr(NumNFe) + ' -> Tentativa N.' + intToStr(Tentativa);
    LblInstrucoes.Update;
    dm.ACBrNFe.Consultar(Chave); //Consultar

    if (dm.ACBrNFe.WebServices.Consulta.cStat = 100) then //Tenta pegar retorno da nfce
    begin
      Tentativa := 9;
      LblInstrucoes.Caption := 'Gravando Retorno NFCe.: ' + inttostr(NumNFe);
      LblInstrucoes.Update;
      SQLImpressaoCupom.Close;
      SQLImpressaoCupom.RequestLive := False;
      SQLImpressaoCupom.SQL.Text := 'Update CUPOM Set STNFE=' + IntToStr(dm.ACBrNFe.WebServices.consulta.cStat) +
        ', PROTOCOLO=''' + dm.ACBrNFe.WebServices.consulta.Protocolo + '''' +
        ', PENDENTE=' + QuotedStr('S') +        
        ' Where CUPOA13ID =''' + idCupom + '''';
      SQLImpressaoCupom.ExecSQL;

      if (ECFAtual = 'NFCE A4') then
      begin
        LblInstrucoes.Caption := 'Imprimindo A4 NFCe.: ' + inttostr(NumNFe);
        LblInstrucoes.Update;
        Danfe := 'http://www.sefaz.rs.gov.br/ASP/AAE_ROOT/NFE/SAT-WEB-NFE-NFC_2.asp?chaveNFe=' + chave + '&HML=false&NF=07BA65B13';
        ShellExecute(Handle, 'open', pchar(Danfe), '', '', 1);
      end;
    end;
  end;

  SQLImpressaoCupom.Close;

  { Limpa a nota do componente ACBr }
  LblInstrucoes.Caption := 'CAIXA LIVRE - Pr�ximo Cliente';
  LblInstrucoes.Update;
  DescricaoProduto.Caption := '';
  DescricaoProduto.Update;
  NumNFe := 0;
  dm.ACBrNFe.NotasFiscais.Clear;

  ImpCupomAutomatico := false;
end;

procedure TFormTelaItens.btnF9Click(Sender: TObject);
begin
  VoltaParaEntradaDados;
  FormKeyDown(Sender, F9, [ssAlt]);
end;

procedure TFormTelaItens.TefAdm;
begin
  Application.CreateForm(TFormConsultaProvedor, FormConsultaProvedor);
  if not SQLProvedorCartao.Active then
    SQLProvedorCartao.Open;
  SQLProvedorCartao.Last;
  if SQLProvedorCartao.RecordCount > 0 then
  begin
    FormConsultaProvedor.ComboColetor.ListSource := DsSQLProvedorCartao;
    FormConsultaProvedor.ComboColetor.KeyValue := SQLProvedorCartaoPRCAA13ID.Value;
    FormConsultaProvedor.ShowModal;
    if FormConsultaProvedor.ModalResult = MrOk then
    begin
      Application.Minimize;
      SendDirectory := SQLProvedorCartao.FieldByName('PRCATPATHENVIA').AsString;
      ReceiveDirectory := SQLProvedorCartao.FieldByName('PRCATPATHRECEBE').AsString;
      if Ativo then
      begin
        if SQLProvedorCartaoPRCAA60CARTAO.AsString = 'BANRISUL' then
        begin
          if TipoOperacao.Administrativa then
            RetornoCartao := FuncaoAdministrativa();
          if TipoOperacao.ConsultaCheque then
          begin
            RetornoCartao := LiberaCartao('CHQ', '', TipoOperacao.ValorOperacao);
          end;
          if TipoOperacao.PagamentoContas then
            RetornoCartao := LiberaCartao('PAG', '', TipoOperacao.ValorOperacao);
        end
        else
          RetornoCartao := FuncaoAdministrativa();
        DadosImpressora.ECFAtual := ECFAtual;
        DadosImpressora.PortaECFAtual := PortaECFAtual;
        ImprimeRetorno(RetornoCartao, DadosImpressora, NroViasTEF, True);
      end
      else
        Application.MessageBox(PChar('O Gerenciador Padr�o n�o est� ativo!' + #13 + 'Imposs�vel estabelecer conex�o!'), 'Informa��o', MB_OK + MB_ICONERROR + MB_SETFOREGROUND + MB_SYSTEMMODAL);
      Application.Restore;
    end
    else
    begin
          // Se o Result for Cancel nao faz nada...
    end;
  end
  else
    Application.MessageBox('Nenhum provedor cadastrado! Verifique!', 'Informa��o', MB_OK + MB_ICONERROR + MB_SETFOREGROUND + MB_SYSTEMMODAL);
  SQLProvedorCartao.Close;
end;

procedure TFormTelaItens.StatusServicoNFE;
begin
  if dm.sqlEmpresa.FieldByName('idTOKEN').AsString <> '' then
  begin
    DescricaoProduto.Caption := 'Consultando Status Servidor SEFAZ';
    DescricaoProduto.Update;
    dm.ACBrNFe.WebServices.StatusServico.Executar;
    if dm.ACBrNFe.WebServices.StatusServico.cStat = 107 then
    begin
      DescricaoProduto.Caption := 'Servidor SEFAZ em Operacao Normal!';
      DescricaoProduto.Update;
      shpStatusECF.Brush.Color := clLime;
      lbStatusECF.Caption := 'NFCe Online';
      lbStatusECF.Update;
    end;
    if dm.ACBrNFe.WebServices.StatusServico.cStat = 108 then
    begin
      DescricaoProduto.Caption := 'Servidor SEFAZ paralizado curto prazo de retorno!';
      DescricaoProduto.Update;
      shpStatusECF.Brush.Color := clRed;
      lbStatusECF.Caption := 'NFCe Offline';
      lbStatusECF.Update;
    end;
    if dm.ACBrNFe.WebServices.StatusServico.cStat = 109 then
    begin
      DescricaoProduto.Caption := 'Servidor SEFAZ paralizado sem Previsao de Retorno!';
      DescricaoProduto.Update;
      shpStatusECF.Brush.Color := clRed;
      lbStatusECF.Caption := 'NFCe Offline';
      lbStatusECF.Update;
    end;
  end
  else
  begin
    shpStatusECF.Brush.Color := clRed;
    lbStatusECF.Caption := 'NFCe Offline';
    lbStatusECF.Update;
  end;
end;

procedure TFormTelaItens.btnF5Click(Sender: TObject);
begin
  VoltaParaEntradaDados;
  FormKeyDown(Sender, F5, [ssShift]);
end;

procedure TFormTelaItens.SQLItensVendaTempAfterPost(DataSet: TDataSet);
begin
  VoltaParaEntradaDados;
end;

procedure TFormTelaItens.CalcularImpostos(CodNCM, OrigemProduto: Integer; Valor: Currency);
begin
  with ExecSql('SELECT NCMN2ALIQNAC, ALIQESTADUAL, ALIQMUNICIPAL FROM NCM WHERE NCMICOD = ' + IntToStr(CodNCM)) do
  try
    if FieldByName('NCMN2ALIQNAC').AsCurrency > 0 then
      dm.ACBrNFe.DANFE.vTribFed := dm.ACBrNFe.DANFE.vTribFed + ((Valor * FieldByName('NCMN2ALIQNAC').AsCurrency) / 100);

    if FieldByName('ALIQESTADUAL').AsCurrency > 0 then
      dm.ACBrNFe.DANFE.vTribEst := dm.ACBrNFe.DANFE.vTribEst + ((Valor * FieldByName('ALIQESTADUAL').AsCurrency) / 100);

    if FieldByName('ALIQMUNICIPAL').AsCurrency > 0 then
      dm.ACBrNFe.DANFE.vTribMun := dm.ACBrNFe.DANFE.vTribMun + ((Valor * FieldByName('ALIQMUNICIPAL').AsCurrency) / 100);

  finally
    free;
  end;

end;

procedure TFormTelaItens.FormDestroy(Sender: TObject);
begin
  FreeAndNil(dmECF);
  FreeAndNil(dmSiTef);
end;

procedure TFormTelaItens.ExecutarCtrlQ;
begin
  if FileExists('BalancaCheckoutFilizola.txt') or FileExists('BalancaCheckoutToledo.txt') or FileExists('BalancaCheckoutUrano.txt') then
  begin
    if (EstadoPDVChk = AguardandoNovaVenda) and (F2_AUTOMATICO = 'S') then
      ExecutarF2;
    Application.CreateForm(TFormBalancaFilizola, FormBalancaFilizola);
    FormBalancaFilizola.ShowModal;
  end;
  if FileExists('BalancaCheckoutToledoDireto.txt') then
  begin
    LblInstrucoes.Caption := 'Lendo Balan�a Toledo...';
    LblInstrucoes.Refresh;
    ACBrBAL1.Desativar;

                    // configura porta de comunica��o
    ACBrBAL1.Modelo := balToledo;
    ACBrBAL1.Device.HandShake := TACBrHandShake(0);
    ACBrBAL1.Device.Parity := TACBrSerialParity(0); {zero}
    ACBrBAL1.Device.Stop := TACBrSerialStop(0); {s1}
    ACBrBAL1.Device.Data := 8; {8}
    if Toledo_Porta = 0 then
      ACBrBAL1.Device.Porta := 'COM1';
    if Toledo_Porta = 1 then
      ACBrBAL1.Device.Porta := 'COM2';
    if Toledo_Porta = 2 then
      ACBrBAL1.Device.Porta := 'COM3';
    if Toledo_Porta = 3 then
      ACBrBAL1.Device.Porta := 'COM4';
    if Toledo_Porta = 4 then
      ACBrBAL1.Device.Porta := 'COM5';
    if Toledo_Porta = 5 then
      ACBrBAL1.Device.Porta := 'COM6';
    if Toledo_Porta = 6 then
      ACBrBAL1.Device.Porta := 'COM7';
    if Toledo_Porta = 7 then
      ACBrBAL1.Device.Porta := 'COM8';

    if Toledo_Baud = 0 then
      ACBrBAL1.Device.Baud := 2400;
    if Toledo_Baud = 1 then
      ACBrBAL1.Device.Baud := 4800;
    if Toledo_Baud = 2 then
      ACBrBAL1.Device.Baud := 9600;
    if Toledo_Baud = 3 then
      ACBrBAL1.Device.Baud := 1200;
    if Toledo_Baud = 4 then
      ACBrBAL1.Device.Baud := 19200;

                    // Conecta com a balan�a
    ACBrBAL1.Ativar;
    EditQtde.Value := ACBrBAL1.LePeso(ACBrBAL1.Intervalo);
    ACBrBAL1.Desativar;

    LblInstrucoes.Caption := 'Informando Produto';
    LblInstrucoes.Refresh;
  end;

  if FileExists('BalancaCheckoutUranoDireto.txt') then
  begin
    LblInstrucoes.Caption := 'Comunicando com a Balan�a Urano...';
    LblInstrucoes.Refresh;
    addLog('Comunica��o OK',ExtractFilePath(Application.ExeName) + 'LogPesaUrano.txt');
                    // Abre Porta Serial
    _AlteraModeloBalanca(Urano_Modelo);
    _AlteraModoOperacao(0);

    if _AbrePortaSerial(Urano_Porta) < 1 then
      informaG('Problema de Comunica��o com a Balan�a!')
    else
    begin
                        // Grava Peso no arquivo txt, para tirar as sujeiras que vem da dll.
      PesoSTR := _LePeso();
      AssignFile(Urano_PesoLido, 'C:\Easy2Solutions\Gestao\PesoLido.txt');
      Rewrite(Urano_PesoLido); //abre o arquivo para escrita
      Writeln(Urano_PesoLido, PesoSTR); //escreve no arquivo e desce uma linha
      Closefile(Urano_PesoLido); //fecha o handle de arquivo

                        // Le peso do txt
      PesoSTR := '';
      AssignFile(Urano_PesoLido, 'C:\Easy2Solutions\Gestao\PesoLido.txt');
      Reset(Urano_PesoLido);
      ReadLn(Urano_PesoLido, PesoSTR);
      CloseFile(Urano_PesoLido);

      while pos('P', PesoSTR) > 0 do
        Delete(PesoSTR, pos('P', PesoSTR), 1);
      while pos('E', PesoSTR) > 0 do
        Delete(PesoSTR, pos('E', PesoSTR), 1);
      while pos('S', PesoSTR) > 0 do
        Delete(PesoSTR, pos('S', PesoSTR), 1);
      while pos('O', PesoSTR) > 0 do
        Delete(PesoSTR, pos('O', PesoSTR), 1);
      while pos(':', PesoSTR) > 0 do
        Delete(PesoSTR, pos(':', PesoSTR), 1);
      while pos(' ', PesoSTR) > 0 do
        Delete(PesoSTR, pos(' ', PesoSTR), 1);
      while pos('g', PesoSTR) > 0 do
        Delete(PesoSTR, pos('g', PesoSTR), 1);
      while pos('*', PesoSTR) > 0 do
        Delete(PesoSTR, pos('*', PesoSTR), 1);

      PesoSTR := FormatFloat('##0.000', (StrToFloat(PesoSTR) / 1000));
      Peso := StrToFloat(PesoSTR);
      EditQtde.Value := Peso;

                        // Fecha Porta
      if _FechaPortaSerial > 0 then
        Application.ProcessMessages;

      LblInstrucoes.Caption := 'Informando Produto';
      LblInstrucoes.Refresh;
    end;
  end;
end;

procedure TFormTelaItens.ExecutarF2;
var
  RetornoUser: TInfoRetornoUser;
begin
  DocumentoClienteVenda := '';

  if dm.ConectaServidor then
    shpStatusServidor.Brush.Color := clLime
  else
    shpStatusServidor.Brush.Color := clRed;

  if MostraPublicidade then
  begin
    slideshow.Visible := False;
    AdvSmoothPanel5.Visible := False;
    slideshow.Animation := True;
    PagePrincipal.ActivePage := TabVenda;
  end;

  UsuarioAutorizouOperacao := '';
  ImpCupomAutomatico := false;
  E_Orcamento := false;
  TemProdutoSemSubsTrib := False;
  TemProdutoComSubsTrib := False;
  CodigoAntigoCupom := '';
  SaldoEstoqueAtual := 0;
  ItemCancelado := 0;
  if SQLItensVendaTemp.RecordCount > 0 then
  begin
    SQLItensVendaTemp.Last;
    NroUltItem := SQLItensVendaTempNUMITEM.Value;
    SQLItensVendaTemp.First;
  end
  else
    NroUltItem := 0;

  if EstadoPDVChk = InformandoItens then
  begin
    InformaG('Esta venda j� foi iniciada!');
    EntradaDados.SelectAll;
    exit;
  end;

  if DM.SQLConfigVendaOPESICODCUPOM.Value > 0 then
  else begin
    InformaG('N�o h� nenhuma Operacao de Estoque padr�o configurada para Venda Cupom. Voc� deve ajustar esta configura��o antes de iniciar uma nova venda!');
    EntradaDados.SelectAll;
    exit;
  end;

  if DM.SQLConfigVendaOPESICODCANCCUPOM.Value > 0 then
  else begin
    InformaG('N�o h� nenhuma Operacao de Estpoque padr�o configurada para Cancelamanto Venda Cupom. Voc� deve ajustar esta configura��o antes de iniciar uma nova venda!');
    EntradaDados.SelectAll;
    exit;
  end;

  if (F2_AUTOMATICO = 'S') and (DM.SQLterminalativoTERMIQTDEPADRAO.Value <> EditQtde.Value) and (EditQtde.Value > 0) then
  begin
                 {mantenho a qtde digitada, pois pode ser balanca ou digitado pelo usuario}
  end
  else
  begin
    if (DM.SQLterminalativoTERMIQTDEPADRAO.Value > 0) then
      EditQtde.Text := DM.SQLterminalativoTERMIQTDEPADRAO.AsString
    else
      EditQtde.Value := 0;
  end;

  AlterarUsuario := false;

  if TerminalModo = 'C' then
  begin
    TestaStatusCaixa;
    if VerCaixa then
      exit;
  end;

  CupomOrigemTroca := '';
  TipoVenda := 0;
  DataEntregaVenda := '';

  CapturaCodigosIniciais;

  LblInstrucoes.Caption := '';
  LblInstrucoes.Refresh;

  LimparVariaveis;

  NroCupomFiscal := '000000';

  if (ECFAtual <> '') and (copy(EcfAtual, 1, 4) <> 'NFCE') and (not FileExists('Confirma.txt')) then
  begin
    NroCupomFiscal := '';
    if not AbrirCupomFiscal(ECFAtual, PortaECFAtual, NroCupomFiscal) and (ECFAtual <> 'SIGTRON FS300') then
    begin
      InformaG('Problemas ao tentar abrir o cupom!');
      EntradaDados.SelectAll;
      exit;
    end;
    if (NroCupomFiscal = '000000') and (ECFAtual <> 'SIGTRON FS300') then
    begin
      InformaG('N�o foi poss�vel capturar o n�mero do Cupom Fiscal');
      EntradaDados.SelectAll;
      NroCupomFiscal := '000000';
    end;
  end;
  SolicitarPreco := False;
  SolicitarPrecoQDeveriaSerVendido := False;
             // Solicita pre�o de produto automaticamente
  if (Dm.SQLConfigVendaCFVECPEDEVLRPRODUTO.AsString = 'S') and (not ImportandoPreVenda) then
    SolicitarPreco := True;
  if (Dm.SQLConfigVendaCFVECINFVLRDEVCVEN.AsString = 'S') and (not ImportandoPreVenda) then
    SolicitarPrecoQDeveriaSerVendido := True;

  PedidosImportados := '';
  ValorItem := 0;
        {     if (not SQLItensVendaTemp.IsEmpty) and (Saldo = 0) then
               CancelarVenda;}

             // Informa o Usuario que ir� iniciar a Venda
  if FileExists('SolicitaUsuarioACadaVenda.txt') then
  begin
    try
      NroCupomFiscal := InputBox('Aten��o!', 'Informe o Usu�rio Corrente...', '');
      if (StrToInt(NroCupomFiscal) <> UsuarioCorrente) and (NroCupomFiscal <> '0') then
      begin
        if DM.SQLUsuario.Locate('USUAICOD', NroCupomFiscal, []) then
        begin
          DM.UsuarioAtual := DM.SQLUsuarioUSUAICOD.AsInteger;
          if DM.SQLUsuarioUSUACUSERMASTER.AsString = 'S' then
            UsuarioMaster := True
          else
            UsuarioMaster := False;
          UsuarioCorrente := DM.SQLUsuarioUSUAICOD.AsInteger;
          UsuarioAtualNome := DM.SQLUsuarioUSUAA60LOGIN.AsString;
        end
        else
        begin
          InformaG('Usu�rio Selecionado � Inv�lido!');
          EntradaDados.SelectAll;
          exit;
        end;

      end;
    except
      Application.ProcessMessages;
    end;
  end;

             // Informa a Senha do Vendedor que ir� iniciar a Venda
  if FileExists('SolicitaVendedorACadaVenda.txt') then
  begin
    RetornoCampoUsuario := AutenticaVendedor(UsuarioAtualNome, 'VENDICOD', RetornoUser);
    if RetornoCampoUsuario <> '' then
      VendedorVenda := strtoint(RetornoCampoUsuario)
    else
    begin
      InformaG('Vendedor Selecionado � Inv�lido!');
      EntradaDados.SelectAll;
      EstadoPDVChk := AguardandoNovaVenda;
      PreparaEstadoBalcao(EstadoPDVChk);
      exit;
    end;
  end;

             // Informa o Nro Cupom => Darvami precisava lancar os cupons retroativos
  if FileExists('SolicitaNroCupom.txt') then
  begin
    try
      NroCupomFiscal := '0';
      NroCupomFiscal := InputBox('Aten��o!', 'Informe o n�mero do cupom fiscal desta venda:', '');
      StrToInt(NroCupomFiscal);
    except
      NroCupomFiscal := '0';
    end;
  end;

             // Informa Vendedor
  if (dm.sqlterminalativoTERMCSOLCODVEND.value = 'S') and
    (not ContinuarPrevenda) and (not vImportarPrevenda) and (not ImportandoPreVenda) then
  begin
    try
      VendedorVenda := StrToInt(InputBox('Informar o Vendedor', 'Digite o C�digo do Vendedor', ''));
    except
      Application.ProcessMessages; end;
  end;
  if (dm.sqlterminalativoTERMCSOLCODVEND.value = 'S') then
    if (VendedorVenda > 0) and (SQLLocate('VENDEDOR', 'VENDICOD', 'VENDCATIVO', IntToStr(VendedorVenda)) <> 'N') then
    begin
      rxVendedor.Visible := True;
      rxVendedor.Caption := SQLLocate('VENDEDOR', 'VENDICOD', 'VENDA60NOME', IntToStr(VendedorVenda));
      rxVendedor.Update;
    end
    else
    begin
      VendedorVenda := 0;
      rxVendedor.Caption := 'N�o Encontrado';
      rxVendedor.Update;
    end;

  if (FileExists('SolicitaCliente.txt')) and (not ImportandoPreVenda) then
  begin
    Application.CreateForm(TFormTelaConsultaRapidaCliente, FormTelaConsultaRapidaCliente);
    FormTelaConsultaRapidaCliente.ShowModal;
    IniFile := TIniFile.Create(dm.PathAplicacao + 'SolicitaCliente.txt');
    if IniFile.ReadString('VECONTAS', 'VERADICIONAIS', 'N') = 'S' then
    begin
      ObsCliente := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIETOBS1', '''' + ClienteVenda + '''');
      if Obscliente <> '' then
        ShowMessage(obscliente);
    end;
    if (DM.SQLConfigVendaCFVECTESTALIMTCRED.AsString = 'S') then
    begin
      if not VerificaLimiteCredito(ClienteVenda, 0, DM.SQLParcelas, DM.SQLCliente) then
      begin
        if IniFile.ReadString('VECONTAS', 'VER', 'N') = 'S' then
          vercontas;
      end;
    end;
    UsaPrecoVenda := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIECTPPRCVENDA', '''' + ClienteVenda + '''');
    rxClienteNome.caption := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA60RAZAOSOC', '''' + ClienteVenda + '''');
    rxClienteNome.update;
    IniFile.Free;
  end
  else
  begin
    ClienteVenda := dm.SQLTerminalAtivoCLIEA13ID.Value;
    rxClienteNome.caption := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA60RAZAOSOC', '''' + ClienteVenda + '''');
    UsaPrecoVenda := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIECTPPRCVENDA', '''' + ClienteVenda + '''');
    rxClienteNome.update;
  end;

             // MANDA DADOS DISPLAY TECLADO
  if TecladoReduzidoModelo = 'TEC44DIS' then
    EnviaTecladoTextoDisplay44('Informe o Produto', '');
  if TecladoReduzidoModelo = 'TEC65' then
    EnviaTecladoTextoDisplay65('Informe o Produto', '');

  EstadoPDVChk := InformandoItens;
  PreparaEstadoBalcao(EstadoPDVChk);
  VoltaParaEntradaDados;

//  Exec_SP_ACERTO_TOTAL_CUPOM;
end;

procedure TFormTelaItens.ExecutarPessagemAutomatica;
begin
  if (EncontrouProduto(trim(EntradaDados.Text), SQLProduto) and (Length(EntradaDados.Text) = 13)) then
  begin
    if PesagemAutomatica = 'S' then
      ExecutarCtrlQ;
  end
  else
  begin
    DM.SQLTemplate.Close;
    DM.SQLTemplate.SQL.Clear;
    DM.SQLTemplate.SQL.Add('select PRODUTO.PESAGEM_AUTOMATICA');
    DM.SQLTemplate.SQL.Add('from PRODUTO');
    DM.SQLTemplate.SQL.Add('where PRODUTO.PRODA60CODBAR = ''' + EntradaDados.Text + '''');
    DM.SQLTemplate.Open;
    if DM.SQLTemplate.IsEmpty then
    begin
      DM.SQLTemplate.Close;
      DM.SQLTemplate.SQL.Clear;
      DM.SQLTemplate.SQL.Add('select PRODUTO.PESAGEM_AUTOMATICA');
      DM.SQLTemplate.SQL.Add('from PRODUTO');
      DM.SQLTemplate.SQL.Add('where PRODUTO.PRODICOD = ' + EntradaDados.Text);
      DM.SQLTemplate.Open;
    end;
    if DM.SQLTemplate.FieldByName('PESAGEM_AUTOMATICA').AsString = 'S' then
       ExecutarCtrlQ;
  end;
end;

function TFormTelaItens.GetCPNMN2VLR(pCUPOA13ID: String; pnumeicod: Integer): Double;
begin   
  if pCUPOA13ID <> '' then
    result := ExecSql(' select CPNMN2VLR from cupomnumerario where CUPOA13ID = '
     + QuotedStr(pCUPOA13ID)
     +IIf(pnumeicod > 0, ' AND numeicod = '+ inttostr(pnumeicod), '')
      ).FieldByName('CPNMN2VLR').AsFloat;
end;

procedure TFormTelaItens.ImprimirConfissaoDeDivida(pTotalPrazo:Double;nomeCliente:String);
begin
  if (DM.SQLTerminalAtivoTERMCIMPCONFDIVIDA.Value = 'S') and (pTotalPrazo > 0) then
  begin
    try
      MemoRetornoNFE.Lines.Clear;
      MemoRetornoNFE.Lines.Add(' ');
      MemoRetornoNFE.Lines.Add('</ce><e>' + dm.SQLEmpresaEMPRA60NOMEFANT.Value + '</e>');
      MemoRetornoNFE.Lines.Add(' ');
      MemoRetornoNFE.Lines.Add('</ae></fn>Terminal: ' + dm.SQLTerminalAtivoTERMA60DESCR.Value);
      MemoRetornoNFE.Lines.Add('Usuario : ' + dm.SQLUsuarioUSUAA60LOGIN.Value);
      MemoRetornoNFE.Lines.Add('Impresso em ' + FormatDateTime('dd/mm/yy hh:mm', now));
      MemoRetornoNFE.Lines.Add(' ');
      MemoRetornoNFE.Lines.Add('</ce><e>CONFISSAO DE DIVIDA</e>');
      MemoRetornoNFE.Lines.Add(' ');
      MemoRetornoNFE.Lines.Add('</ae></fn>Cliente: ' + nomeCliente);
      MemoRetornoNFE.Lines.Add(' ');
      MemoRetornoNFE.Lines.Add('</ae></fn>NFCe Nro: ' + inttostr(NumNFe));
      MemoRetornoNFE.Lines.Add(' ');
      MemoRetornoNFE.Lines.Add('</ae></fn>DECLARO PARA OS DEVIDOS FINS QUE RECEBI A(S)');
      MemoRetornoNFE.Lines.Add('</ae></fn>MERCADORIA(S) CONSTANTE(S)  NO  CUPOM FISCAL');
      MemoRetornoNFE.Lines.Add('</ae></fn>VINCULADO A ESTE.   CONFESSO-ME DEVEDOR(A) E');
      MemoRetornoNFE.Lines.Add('</ae></fn>AUTORIZO  A  EMISSAO DE COBRANCA  DECORRENTE');
      MemoRetornoNFE.Lines.Add('</ae></fn>DA PRESENTE COMPRA DE R$ ' + FormatFloat('##0.00', pTotalPrazo));
      MemoRetornoNFE.Lines.Add(' ');
      MemoRetornoNFE.Lines.Add(' ');
      MemoRetornoNFE.Lines.Add('</ae></fn>Ass.________________________________________');
      MemoRetornoNFE.Lines.Add('</ae></fn>       ' + nomeCliente);
      MemoRetornoNFE.Lines.Add(' ');
      MemoRetornoNFE.Lines.Add(' ');
      MemoRetornoNFE.Lines.Add(' ');
      MemoRetornoNFE.Lines.Add(' ');
      MemoRetornoNFE.Lines.Add('</corte_parcial>');
      dm.ACBrPosPrinter.Device.Desativar;
      dm.ACBrPosPrinter.Device.Ativar;
      dm.ACBrPosPrinter.Imprimir(FormTelaItens.MemoRetornoNFE.Lines.Text);
    except
      Application.ProcessMessages;
    end;
    MemoRetornoNFE.Lines.Clear;
    dm.ACBrPosPrinter.Device.Desativar;
  end;
end;  

procedure TFormTelaItens.GridItensEnter(Sender: TObject);
begin
  EntradaDados.SetFocus;
end;

procedure TFormTelaItens.PagePrincipalChange(Sender: TObject);
begin
  if PagePrincipal.ActivePage = TabPublicidade then
    PagePrincipal.ActivePage := TabVenda;
end;

procedure TFormTelaItens.Exec_SP_ACERTO_TOTAL_CUPOM;
begin
  //ExecSql(' alter trigger TG_CUPOMITEM_BIU0 inactive; ',1);
  try
    ExecSql(' execute procedure SP_ACERTO_TOTAL_CUPOM; ', 1);
  finally
    //ExecSql(' alter trigger TG_CUPOMITEM_BIU0 active; ', 1);
  end;
end;

procedure TFormTelaItens.CriardmECF;
begin
  dmECF := TdmECF.Create(Self);
end;

procedure TFormTelaItens.CriardmSiTEF;
begin
  dmSiTef := TdmSiTef.Create(Self);
end;

procedure TFormTelaItens.ConfACBrPosPrinter;
begin
  if (ECFAtual = 'NFCE A4') then dm.ACBrPosPrinter.Modelo := ppTexto;
  if (ECFAtual = 'NFCE EPSON') then dm.ACBrPosPrinter.Modelo := ppEscPosEpson;
  if (ECFAtual = 'NFCE BEMATECH') then dm.ACBrPosPrinter.Modelo := ppEscBematech;
  if (ECFAtual = 'NFCE ELGIN') then dm.ACBrPosPrinter.Modelo := ppEscVox;
  if (ECFAtual = 'NFCE DR700') then dm.ACBrPosPrinter.Modelo := ppEscDaruma;
  if (ECFAtual = 'NFCE DR800') then dm.ACBrPosPrinter.Modelo := ppEscDaruma;
{  begin
    dm.ACBrPosPrinter.Modelo := ppEscDaruma;
    dm.ACBrPosPrinter.ControlePorta := False;
  end;}

  if dm.SQLTerminalAtivoTERMA5ECFPORTACOM.Value <> 'USB' then
    dm.ACBrPosPrinter.Device.Porta := dm.SQLTerminalAtivoTERMA5ECFPORTACOM.Value
  else
    dm.ACBrPosPrinter.Device.Porta := '\\localhost\nfce';

  if not FileExists('COMUNICACAO_OFFLINE.TXT') then
  begin
    if dm.SQLTerminalAtivoECF_VELOC.Value > 0 then
      dm.ACBrPosPrinter.Device.Baud := dm.SQLTerminalAtivoECF_VELOC.Value;
  end
  else
  begin
    dm.ACBrPosPrinter.Device.Porta := ExtractFilePath(application.ExeName) + '\nfceOffline.txt';
    dm.ACBrPosPrinter.ControlePorta := False;
    dm.ACBrPosPrinter.Device.DeviceType := dtFile;
  end;

  dm.ACBrNFeDANFeESCPOS.ImprimeEmUmaLinha := False;
  dm.ACBrNFeDANFeESCPOS.ImprimeDescAcrescItem := True;
end;

procedure TFormTelaItens.CalcularDescontoProduto(ValidaQtde : Boolean);
begin
  if ValidaQtde then
  begin
    DM.SQLProduto_Descontos.Close;
    DM.SQLProduto_Descontos.MacroByName('PRODUTO').Value := ' PRODICOD = ' + SQLProdutoPRODICOD.AsString;
    DM.SQLProduto_Descontos.MacroByName('QTDE').Value := 'QUANTIDADE <= ' + TrocaVirgulaPorPonto(FormatFloat('0.00',EditQtde.Value));
    DM.SQLProduto_Descontos.MacroByName('DATA').Value := 'DATA_VALIDADE >= ''' + FormatDateTime('mm/dd/yyyy', Now) + '''';
    addLog('sql desconto_produto: ' + dm.SQLProduto_Descontos.SQL.Text ,ExtractFilePath(Application.ExeName) + 'LogDescontoProduto.txt');
    addLog('produto: ' + DM.SQLProduto_Descontos.MacroByName('PRODUTO').Value ,ExtractFilePath(Application.ExeName) + 'LogDescontoProduto.txt');
    addLog('qtde: ' +  DM.SQLProduto_Descontos.MacroByName('QTDE').Value  ,ExtractFilePath(Application.ExeName) + 'LogDescontoProduto.txt');
    addLog('data: ' + DM.SQLProduto_Descontos.MacroByName('DATA').Value ,ExtractFilePath(Application.ExeName) + 'LogDescontoProduto.txt');
    DM.SQLProduto_Descontos.Open;
    if not (DM.SQLProduto_Descontos.IsEmpty) then
    begin
//      ValorItem := DM.SQLProduto_DescontosPRECO.AsFloat;
      DescItemVlr := (ValorItem - DM.SQLProduto_DescontosPRECO.AsFloat) * EditQtde.Value;
      addLog('Validade: ' + dm.SQLProduto_DescontosPRECO.AsString ,ExtractFilePath(Application.ExeName) + 'LogDescontoProduto.txt');
    end;
  end
  else
  begin
    DM.SQLProduto_Descontos.Close;
    DM.SQLProduto_Descontos.MacroByName('PRODUTO').Value := ' PRODICOD = ' + SQLProdutoPRODICOD.AsString;
    DM.SQLProduto_Descontos.MacroByName('QTDE').Value := '0=0';
    DM.SQLProduto_Descontos.MacroByName('DATA').Value := 'DATA_VALIDADE >= ''' + FormatDateTime('mm/dd/yyyy', Now) + '''';
    addLog('sql desconto_produto: ' + dm.SQLProduto_Descontos.SQL.Text ,ExtractFilePath(Application.ExeName) + 'LogDescontoProduto.txt');
    addLog('produto: ' + DM.SQLProduto_Descontos.MacroByName('PRODUTO').Value ,ExtractFilePath(Application.ExeName) + 'LogDescontoProduto.txt');
    addLog('data: ' + DM.SQLProduto_Descontos.MacroByName('DATA').Value ,ExtractFilePath(Application.ExeName) + 'LogDescontoProduto.txt');
    DM.SQLProduto_Descontos.Open;
    if not (DM.SQLProduto_Descontos.IsEmpty) then
    begin
      if SQLItensDescTemp.Locate('CODIGO',SQLProdutoPRODICOD.AsInteger,[loCaseInsensitive]) then
      begin
        SQLItensDescTemp.Edit;
        SQLItensDescTempQUANTIDADE.AsFloat := SQLItensDescTempQUANTIDADE.AsFloat + EditQtde.Value;
        if SQLItensDescTempQUANTIDADE.AsFloat >= DM.SQLProduto_DescontosQUANTIDADE.AsFloat then
        begin
          if SQLItensDescTempCALCULAR_DESC.AsString <> 'S' then
          begin
            SQLItensVendaTemp.First;
            while not SQLItensVendaTemp.Eof do
            begin
              if SQLItensVendaTempCODIGO.AsInteger = SQLItensDescTempCODIGO.AsInteger then
              begin
                SQLItensVendaTemp.Edit;
                SQLItensVendaTempVLRDESC.AsFloat := (SQLItensVendaTempVLRUNITBRUT.AsFloat - DM.SQLProduto_DescontosPRECO.AsFloat) * SQLItensVendaTempQUANTIDADE.AsFloat;
                SQLItensVendaTempVLRTOTAL.AsFloat := (SQLItensVendaTempVLRUNITBRUT.AsFloat - SQLItensVendaTempVLRDESC.AsFloat) * SQLItensVendaTempQUANTIDADE.AsFloat;
                SQLItensVendaTemp.Post;
              end;
              SQLItensDescTempCALCULAR_DESC.AsString := 'S';
              SQLItensVendaTemp.Next;
            end;
          end
          else
          begin
            SQLItensVendaTemp.Edit;
            SQLItensVendaTempVLRDESC.AsFloat := (SQLItensVendaTempVLRUNITBRUT.AsFloat - DM.SQLProduto_DescontosPRECO.AsFloat) * SQLItensVendaTempQUANTIDADE.AsFloat; ;
            SQLItensVendaTempVLRTOTAL.AsFloat := (SQLItensVendaTempVLRUNITBRUT.AsFloat - SQLItensVendaTempVLRDESC.AsFloat) * SQLItensVendaTempQUANTIDADE.AsFloat;
            SQLItensVendaTemp.Post;
          end;
          SQLItensDescTemp.Post;
        end;
      end
      else
      begin
        if not SQLItensDescTemp.Active then SQLItensDescTemp.Open;
        SQLItensDescTemp.Append;
        SQLItensDescTempCODIGO.AsInteger := SQLProdutoPRODICOD.AsInteger;
        SQLItensDescTempQUANTIDADE.AsFloat := EditQtde.Value;
        SQLItensDescTempCALCULAR_DESC.AsString := 'N';
        SQLItensDescTemp.Post;
      end;
    end;
  end;
end;

end.

