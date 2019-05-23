unit TelaItens;

interface

uses
  Variants, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, StdCtrls, Db, DBTables, Buttons,JPEG, Mask, ToolEdit,
  CurrEdit, ConerBtn, DBCtrls, RXCtrls, RxQuery, EWall, ComObj, Serial, Math, ShellApi,
  RxCalc, ppDB, ppDBPipe, ppDBBDE, ppBands, ppCtrls, ppPrnabl, ppClass, CartaoCredito,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, CRLabel, dbcgrids, Menus, IniFiles,
  ComCtrls, RxGIF, ESkinPlus, RzPanel, dxGDIPlusClasses,ACBrBAL,ACBrDevice,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvSmoothPanel, OleCtrls,
  SHDocVw, ACBrNFe, pcnConversao, ACBrUtil, ACBrNFeDANFEClass, ACBrNFeDANFeESCPOS,
  ACBrBase, ACBrDFe, XMLIntf, XMLDoc, zlib, ACBrMail, ACBrNFeDANFeRLClass,
  ACBrPosPrinter;

const
  // AS VARIAVEIS ABAIXO FORAM CRIADAS PARA NÃO CORRER O RISCO DE DIGITAR ERRADO
  // E ALGUMA ROTINA NAO FUNCIONAR, EU SO DESCOBRIRIA AO USAR, ASSIM JA DESCUBRO
  // NA COMPILACAO

  // TerminalModo = C => VENDA BALCAO
  // TerminalModo = P => VENDA NAS MESAS/COMANDAS
  // TerminalModo = TELE => VENDA TELE ENTREGA
  // Tanto a venda nas Mesas como a Tele é gravada na tabela de Prevenda e depois de
  // confirmada se transf. em Cupom recebendo no campo ORIGEMVENDA OS PARAM ACIMA

  AguardandoNovaVenda        = 'AguardandoNovaVenda';
  InformandoItens            = 'InformandoItens';
  CancelandoItem             = 'CancelandoItem';
  DescontoPercItem           = 'DescontoPercItem';
  DescontoVlrItem            = 'DescontoVlrItem';
  InformandoConvenio         = 'InformandoConvenio';
  InformandoClienteConvenio  = 'InformandoClienteConvenio';
  InformandoItensTroca       = 'InformandoItensTroca';
  InformandoTotalVenda       = 'InformandoTotalVenda';
type
  TFormTelaItens = class(TForm)
    SQLProduto: TRxQuery;
    DSSQLIntensVenda: TDataSource;
    SQLProdutoPRODICOD: TIntegerField;
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
    SQLItensVendaTemp: TTable;
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
    SQLItensVendaTempBASEICMS: TFloatField;
    SQLItensVendaTempVLRICMS: TFloatField;
    SQLItensVendaTempNROSERIE: TStringField;
    SQLItensVendaTempVLRQDEVERIAVENDER: TFloatField;
    SQLItensVendaTempCODBARRAS: TStringField;
    SQLItensVendaTempPRODA60DESCR: TStringField;
    SQLItensVendaTempREFERENCIA: TStringField;
    SQLSubTotal: TRxQuery;
    SQLItensVendaTempALIQUOTA: TFloatField;
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
    SQLItensVendaTempMARCA: TStringField;
    SQLItensVendaTempCOR: TStringField;
    SQLProdutoCORICOD: TIntegerField;
    SQLItensVendaTempBOMBICOD: TIntegerField;
    SQLItensVendaTempTAMANHO: TStringField;
    SQLProdutoGRADICOD: TIntegerField;
    SQLProdutoGRTMICOD: TIntegerField;
    SQLProdutoPRODN3VLRVENDA2: TFloatField;
    PopupGrid: TPopupMenu;
    MnAbrirMesa: TMenuItem;
    MnFecharMesa: TMenuItem;
    SQLGrupo: TRxQuery;
    SQLGrupoGRUPICOD: TIntegerField;
    SQLGrupoGRUPA60DESCR: TStringField;
    dsSQLGrupo: TDataSource;
    SQLGrupoProduto: TRxQuery;
    dsSQLGrupoProduto: TDataSource;
    SQLGrupoProdutoPRODICOD: TIntegerField;
    SQLGrupoGRUPBIMAGEM: TBlobField;
    SQLGrupoProdutoPRODN3VLRVENDA: TFloatField;
    SQLImpressaoCupom: TRxQuery;
    SQLParcelasPrazoVendaTemp: TRxQuery;
    SQLParcelasPrazoVendaTempTERMICOD: TIntegerField;
    SQLParcelasPrazoVendaTempDATAVENCTO: TDateTimeField;
    SQLParcelasPrazoVendaTempNROPARCELA: TIntegerField;
    SQLParcelasPrazoVendaTempVALORVENCTO: TFloatField;
    SQLParcelasPrazoVendaTempNUMEICOD: TIntegerField;
    SQLParcelasPrazoVendaTempTIPOPADR: TStringField;
    DSSQLParcelasPrazoVendaTemp: TDataSource;
    DSSQLParcelasVistaVendaTemp: TDataSource;
    SQLParcelasVistaVendaTemp: TRxQuery;
    SQLParcelasVistaVendaTempTERMICOD: TIntegerField;
    SQLParcelasVistaVendaTempNROITEM: TIntegerField;
    SQLParcelasVistaVendaTempNUMEICOD: TIntegerField;
    SQLParcelasVistaVendaTempVALORPARC: TFloatField;
    SQLParcelasVistaVendaTempTIPOPADR: TStringField;
    SQLItensVendaTempValorImpostoMedio: TFloatField;
    SQLItensVendaTempAliquotaMedia: TFloatField;
    SQLProdutoNCMICOD: TIntegerField;
    SQLProdutoPRODIORIGEM: TIntegerField;
    SQLProdutoPRODA255DESCRTEC: TMemoField;
    SQLGrupoProdutoPRODA60CODBAR: TStringField;
    SQLGrupoProdutoPRODA30ADESCRREDUZ: TStringField;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ptopo: TAdvOfficeStatusBar;
    LblNomeSistema: TRxLabel;
    RxUsuario: TRxLabel;
    PanelComandos: TPanel;
    EntradaDados: TEdit;
    RxLabel2: TRxLabel;
    EditQtde: TCurrencyEdit;
    BtnF12: TConerBtn;
    BtnF8: TConerBtn;
    BtnF9: TConerBtn;
    ckBusca: TCheckBox;
    PanelCentral: TPanel;
    PanelPrincipal: TPanel;
    PageControlPrincipal: TPageControl;
    TabLogo: TTabSheet;
    Logo: TImage;
    TabMesas: TTabSheet;
    DBCtrlGridMesas: TDBCtrlGrid;
    DBMesa: TDBText;
    DBText5: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label1: TLabel;
    pteste: TRzPanel;
    TabProdutos: TTabSheet;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    LblSubTotal: TRxLabel;
    CurSubTotal: TRxLabel;
    ckLevarCasa: TCheckBox;
    ImgDesligar: TImage;
    AdvOfficeStatusBar2: TAdvOfficeStatusBar;
    RxLabel6: TRxLabel;
    ScrollBoxTapaAbas: TScrollBox;
    LblInstrucoes: TRxLabel;
    btObsProduto: TConerBtn;
    BtReturn: TSpeedButton;
    BtBackSpace: TSpeedButton;
    BtVirgula: TSpeedButton;
    Bt0: TSpeedButton;
    Bt1: TSpeedButton;
    Bt2: TSpeedButton;
    Bt3: TSpeedButton;
    Bt4: TSpeedButton;
    Bt5: TSpeedButton;
    Bt6: TSpeedButton;
    Bt7: TSpeedButton;
    Bt8: TSpeedButton;
    Bt9: TSpeedButton;
    CtrlGridGrupos: TDBCtrlGrid;
    ImgGrupo: TImage;
    DBText10: TDBText;
    AdvOfficeStatusBar3: TAdvOfficeStatusBar;
    RxLabel7: TRxLabel;
    PanelItens: TPanel;
    GridItens: TDBGrid;
    CtrlGridProdutos: TDBCtrlGrid;
    DBCdBarras: TDBText;
    DBText4: TDBText;
    DBText3: TDBText;
    MemoRetorno: TMemo;
    AdvSmoothPanel1: TAdvSmoothPanel;
    RxLabel5: TRxLabel;
    EditMesaCodigo: TMemo;
    EditContaCodigo: TMemo;
    RxLabel4: TRxLabel;
    EditNomeCli: TMemo;
    RxLabel1: TRxLabel;
    EditFoneCliente: TMemo;
    EditSaldoCliente: TMemo;
    RxLabel8: TRxLabel;
    EditTxTele: TMemo;
    imgProduto: TImage;
    SQLGrupoProdutoPRODBIMAGEM: TBlobField;
    BtnTransfConta: TSpeedButton;
    btAtualizaMesa: TSpeedButton;
    shpStatusECF: TShape;
    lbStatusECF: TRxLabel;
    WBResposta: TWebBrowser;
    MemoRetornoNFE: TMemo;
    SQLImpressaoCupomFinanceiro: TRxQuery;
    SQLItensVendaTempBORDA01: TStringField;
    SQLItensVendaTempBORDA02: TStringField;
    SQLItensVendaTempBORDA03: TStringField;
    SQLItensVendaTempSABOR01: TStringField;
    SQLItensVendaTempSABOR02: TStringField;
    SQLItensVendaTempSABOR03: TStringField;
    SQLItensVendaTempSABOR04: TStringField;
    SQLItensVendaTempSABOR05: TStringField;
    SQLItensVendaTempSABOR06: TStringField;
    advPainelPizza: TAdvSmoothPanel;
    RxBorda: TRxLabel;
    DBborda01: TDBText;
    DBborda02: TDBText;
    DBborda03: TDBText;
    RxSabores: TRxLabel;
    DBsabor01: TDBText;
    DBsabor02: TDBText;
    DBsabor03: TDBText;
    DBsabor04: TDBText;
    DBsabor05: TDBText;
    DBsabor06: TDBText;
    SQLItensVendaTempBordaValor: TFloatField;
    SQLItensVendaTempSaborValor: TFloatField;
    EditVendedor: TMemo;
    BtnResumoCaixa: TConerBtn;
    BtnF2: TSpeedButton;
    BtnF3: TSpeedButton;
    BtnF4: TSpeedButton;
    BtnF5: TSpeedButton;
    BtnF7: TSpeedButton;
    BtnF6: TSpeedButton;
    SQLProdutoPESAGEM_AUTOMATICA: TStringField;
    btnF10: TSpeedButton;
    btnCrtlX: TSpeedButton;
    ACBrBAL1: TACBrBAL;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EntradaDadosKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure ListaItensEnter(Sender: TObject);
    procedure GridItensEnter(Sender: TObject);
    procedure DsSQLProvedorCartaoDataChange(Sender: TObject;
      Field: TField);
    procedure SerialAfterReceive(Sender: TObject; data: String);
    procedure EntradaDadosEnter(Sender: TObject);
    procedure SQLItensVendaTempOKNewRecord(DataSet: TDataSet);
    procedure FotoClick(Sender: TObject);
    procedure SQLItensVendaTempNewRecord(DataSet: TDataSet);
    procedure EditQtdeExit(Sender: TObject);
    procedure EditQtdeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditQtdeEnter(Sender: TObject);
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;
      Index: Integer);
    procedure MnAbrirMesaClick(Sender: TObject);
    procedure MnFecharMesaClick(Sender: TObject);
    procedure BtnF3Click(Sender: TObject);
    procedure BtnF4Click(Sender: TObject);
    procedure BtnF5Click(Sender: TObject);
    procedure BtnF6Click(Sender: TObject);
    procedure BtnF8Click(Sender: TObject);
    procedure BtnF12Click(Sender: TObject);
    procedure BtnF9Click(Sender: TObject);
    procedure BtnTransfContaClick(Sender: TObject);
    procedure lbStatusMesaClick(Sender: TObject);
    procedure dsSQLGrupoDataChange(Sender: TObject; Field: TField);
    procedure PageControlPrincipalChange(Sender: TObject);
    procedure CtrlGridGruposPaintPanel(DBCtrlGrid: TDBCtrlGrid;
      Index: Integer);
    procedure ImgDesligarClick(Sender: TObject);
    procedure CtrlGridGruposClick(Sender: TObject);
    procedure GridItensDblClick(Sender: TObject);
    procedure btObsProdutoClick(Sender: TObject);
    procedure BtnF2Click(Sender: TObject);
    procedure CtrlGridProdutosClick(Sender: TObject);
    procedure ckLevarCasaClick(Sender: TObject);
    procedure ckBuscaClick(Sender: TObject);
    procedure BtReturnClick(Sender: TObject);
    procedure Bt0Click(Sender: TObject);
    procedure BtVirgulaClick(Sender: TObject);
    procedure BtBackSpaceClick(Sender: TObject);
    procedure Bt1Click(Sender: TObject);
    procedure Bt2Click(Sender: TObject);
    procedure Bt3Click(Sender: TObject);
    procedure Bt4Click(Sender: TObject);
    procedure Bt5Click(Sender: TObject);
    procedure Bt6Click(Sender: TObject);
    procedure Bt7Click(Sender: TObject);
    procedure Bt8Click(Sender: TObject);
    procedure Bt9Click(Sender: TObject);
    procedure LblNomeSistemaClick(Sender: TObject);
    procedure DBText3Click(Sender: TObject);
    procedure CtrlGridProdutosPaintPanel(DBCtrlGrid: TDBCtrlGrid;
      Index: Integer);
    procedure btAtualizaMesaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DSSQLIntensVendaDataChange(Sender: TObject; Field: TField);
    procedure RxBordaClick(Sender: TObject);
    procedure RxSaboresClick(Sender: TObject);
    procedure BtnResumoCaixaClick(Sender: TObject);
    procedure BtnF7Click(Sender: TObject);
    procedure btnF10Click(Sender: TObject);
    procedure btnCrtlXClick(Sender: TObject);
  private
    { Private declarations }
    WNumItem, ItemCancelado : integer ;
    FormatStrQuant, FormatStrVlrVenda,
    InfDesc,
    Tributo, sXML : string ;
    VerCaixa, TemProdutoSemSubsTrib, TemProdutoComSubsTrib : boolean ;
    Tecla : Word;
    RetornoCartao : TInfoRetorno;
    DadosImpressora : TInfoImpressao;
    Peso: Double;
    PesoP05A: array[0..5] of char;
    PesoP05B: array[0..7] of char;
    Toledo_Dir, PesoSTR: string;
    Toledo_Porta, Toledo_Baud, Toledo_Paridade, Toledo_DataBits, Toledo_OpcoesDiponibilizar, Toledo_TipoLeitura: Integer;
    Urano_Modelo, Urano_Operacao: Integer;
    Urano_Porta: string;
    Urano_PesoLido: TextFile;
    procedure CalculaTotal ;
    procedure CapturaCodigosIniciais ;
    function VerificaCartaoCredito : Boolean;
    procedure Inicia_NFe;
    procedure CalcularImpostos(CodNCM, OrigemProduto: Integer; Valor: Currency);
    function Gerar_NFCe(idCupom:string): string;
    procedure LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
    procedure ExecutarCtrlQ;
    procedure VoltaParaEntradaDados;
    function SN(sNum:string):string;
  public
    { Public declarations }
    CodICMS,
    Qtd,
    Unidade,
    EstadoPDVChk,
    EstadoPDVChkAnt,
    QuantItemProv,
    RetornoCampoUsuario,
    ValorTotItem, ProvedorCartao, NomeNumerarioCartao,
    NroSerieProduto, LbInstrucoesOld, Chave  : string ;
    TrocandoItens, SolicitarPreco, SolicitarPrecoQDeveriaSerVendido, GPAtivo, TrancouVenda : boolean ;
    ValorItem, ValorItemQDeveriaSerVendido, ValorCustoTotal, ValorLucroTotal, ValorTele, ValorSubTotal : Currency;
    DescItemPerc,
    DescItemVlr,
    TotalDescItens,
    ReducaoICMS,
    QuantItem,QuantProx, SaldoEstoqueAtual : Double;
    VendPreVenda, NumNFe, QuitarComandaNumero : integer;
    BlobStream : TStream;
    JPEGImage  : TJPEGImage;
    Arquivo : TextFile;
    procedure PreparaEstadoBalcao(Estado : string) ;
    procedure TestaStatusCaixa ;
    procedure CancelarVenda ;
    procedure LimparVariaveis ;
    procedure LimparTabTempItens ;
    procedure AtualizaStatusMesas ;
    function  ProxCodContasReceber(Tipo : string ;ProxCntRecTemp : integer) : integer ;
    Function  Transmite_NFCe(idCupom : string): Boolean;
  end;

var
  FormTelaItens: TFormTelaItens;
  IniFile: TIniFile;
implementation

uses DataModulo, UnitLibrary, TelaTipoDescontoItem,TelaConsultaRapidaItem,
     TelaItensIncluidosCupom, TelaFechamentoVenda,TelaRecebimentoCrediario,
     TelaTeclasAtalhoTelaItens, ImportarPreVenda, MovimentoCaixaCheckout,
     TelaTiraTeima, ECFCheckout, TelaCompSigtron, Sigtron_FS345_FuncoesDLL,
     CadastroClienteRestaurante, TelaConsultaRapidaCliente, CadastroCupom,
     TelaConsultaRapidaConvenio, FormResources, VarSYS, Telalogin, UnitCheckoutLibrary,
     TelaTotaisCaixa, ConsultaProvedor, TelaReceituario, WaitWindow,
     WindowsLibrary, IMPNAOFISCAL, UnSoundPlay, TelaLucro, TelaFotoExpandida, BemaFi32,
     PrincipalRelatorios, TelaConsultaMesa, CadastroReservaMesa, TelaTransfereMesa,
     DataModuloTemplate, TelaPrecoAlterado,TelaConsultaRapidaCupom, Daruma_Framework_FISCAL,
     TelaRecargaCartao, TelaMesa, TelaObsProduto, TelaMesaCodigo, pcnNFe, pcnConversaoNFe,
     ACBrDFeConfiguracoes, pcnAuxiliar, ACBrDFeSSL, pcnNFeRTXT, ACBrNFeNotasFiscais,
    TelaSabores, TelaBordas, TelaVendedorCodigo, TelaContaCodigo,BalancaToledo,
  RelatorioCupomEmitido, BalancaFilizola,BalancaUrano;

{$R *.DFM}

function TFormTelaItens.SN(sNum:string):string;
var s1, s2: string;
    i: Integer;
begin
     s1 := snum;
     s2 := '';
     for i := 1 to Length(s1) do
          if s1[i] in ['0'..'9'] then
               s2 := s2 + s1[i];
     result:=s2;
end;

procedure TFormTelaItens.Inicia_NFe();
begin
  {$IFDEF ACBrNFeOpenSSL}
    dm.ACBrNFe.Configuracoes.Certificados.ArquivoPFX  := dm.sqlEmpresa.FieldByName('EMPRA100CERTIFSERIE').AsString;
    dm.ACBrNFe.Configuracoes.Certificados.Senha       := dm.sqlEmpresa.FieldByName('EMPRA35CERTIFSENHA').AsString;
  {$ELSE}
    dm.ACBrNFe.Configuracoes.Certificados.NumeroSerie  := dm.sqlEmpresa.FieldByName('EMPRA100CERTIFSERIE').AsString;
    dm.ACBrNFe.Configuracoes.Certificados.Senha        := dm.sqlEmpresa.FieldByName('EMPRA35CERTIFSENHA').AsString;
  {$ENDIF}

  if dm.sqlEmpresa.FieldByName('VERSAO').AsString = '4' then
    dm.ACBrNFe.Configuracoes.Geral.VersaoDF := ve400
  else
    dm.ACBrNFe.Configuracoes.Geral.VersaoDF := ve310;


  dm.ACBrNFe.Configuracoes.Geral.IdCSC  := dm.sqlEmpresa.FieldByName('idTOKEN').AsString;
  dm.ACBrNFe.Configuracoes.Geral.CSC    := dm.sqlEmpresa.FieldByName('TOKEN').AsString;
  DM.ACBrNFe.Configuracoes.Geral.VersaoQRCode := veqr200;

  dm.ACBrNFeDANFeESCPOS.ViaConsumidor := True;
  dm.ACBrNFeDANFeESCPOS.ImprimeItens := True;

  if (ECFAtual = 'NFCE A4')       then  dm.ACBrPosPrinter.Modelo := ppTexto;
  if (ECFAtual = 'NFCE EPSON')    then  dm.ACBrPosPrinter.Modelo := ppEscPosEpson;
  if (ECFAtual = 'NFCE BEMATECH') then  dm.ACBrPosPrinter.Modelo := ppEscBematech;
  if (ECFAtual = 'NFCE ELGIN')    then  dm.ACBrPosPrinter.Modelo := ppEscVox;
  if (ECFAtual = 'NFCE DR700')    then  dm.ACBrPosPrinter.Modelo := ppEscDaruma;
  if (ECFAtual = 'NFCE DR800') then
    begin
      dm.ACBrPosPrinter.Modelo := ppEscDaruma;
      dm.ACBrPosPrinter.ControlePorta := False;
    end;

  if dm.SQLTerminalAtivoTERMA5ECFPORTACOM.Value <> 'USB' then
    dm.ACBrPosPrinter.Device.Porta := dm.SQLTerminalAtivoTERMA5ECFPORTACOM.Value
  else
    dm.ACBrPosPrinter.Device.Porta := '\\localhost\nfce' ;

  dm.ACBrPosPrinter.Device.Baud  := dm.SQLTerminalAtivoECF_VELOC.Value;

  // ACBrPosPrinter.IgnorarTags     := False;

  dm.ACBrNFeDANFeESCPOS.ImprimeEmUmaLinha     := False;
  dm.ACBrNFeDANFeESCPOS.ImprimeDescAcrescItem := True;
end;

procedure TFormTelaItens.LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
begin
  MemoRetornoNFE.Lines.SaveToFile(ExtractFileDir(application.ExeName)+'temp.xml');
  MyWebBrowser.Navigate(ExtractFileDir(application.ExeName)+'temp.xml');
end;

function TFormTelaItens.Gerar_NFCe(idCupom:string): string;
var iCRT : integer;
var iTipoPadrao : string;
var eServico : boolean;
var VlrDescNoTotal, VlrTroca, VlrTotalItens, PercDesc, TotalDesconto : double;
var vaux, Total_vTotTrib : Currency;
begin
  dm.sqlconsulta.close;
  dm.sqlconsulta.sql.clear;
  dm.sqlconsulta.sql.text := 'Select CUPOINRO, CUPON2TOTITENS, CUPON2DESC, CUPON3BONUSTROCA from cupom where CUPOA13ID="'+idCupom+'"';
  dm.sqlconsulta.open;
  if dm.sqlconsulta.fieldbyname('CUPON2TOTITENS').Value > 0 then
    VlrTotalItens := dm.sqlconsulta.fieldbyname('CUPON2TOTITENS').Value;
  if dm.sqlconsulta.fieldbyname('CUPON2DESC').Value > 0 then
    VlrDescNoTotal := dm.sqlconsulta.fieldbyname('CUPON2DESC').Value;
  if dm.sqlconsulta.fieldbyname('CUPON3BONUSTROCA').Value > 0 then
    VlrTroca := dm.sqlconsulta.fieldbyname('CUPON3BONUSTROCA').Value;

  if dm.sqlconsulta.fieldbyname('CUPOINRO').Value > 0 then {Retransmite NFCe que deu erro por qualquer motivo}
    NumNFe := dm.sqlconsulta.fieldbyname('CUPOINRO').value
  else
    begin {Transmite NFCe novo}
      dm.sqlconsulta.close;
      dm.sqlconsulta.sql.clear;
      dm.sqlconsulta.sql.text := 'Select Max(CUPOINRO) from cupom where termicod='+dm.SQLTerminalAtivoTermicod.asstring;
      dm.sqlconsulta.open;
      if not dm.sqlconsulta.fieldbyname('MAX').IsNull then
        NumNFe := dm.sqlconsulta.fieldbyname('MAX').value + 1
      else
        NumNFe := 1;
    end;

  {Achar o Percentual de Desconto a ser aplicado em cada item, devido a alguma troca ou desconto no total}
  if (VlrDescNoTotal>0) or (VlrTroca>0) then
    PercDesc := ((VlrDescNoTotal+VlrTroca) / VlrTotalItens) * 100 ;

  dm.ACBrNFe.NotasFiscais.Clear;
  with dm.ACBrNFe.NotasFiscais.Add.NFe do
     begin
       Ide.cNF       := NumNFe; //Caso não seja preenchido será gerado um número aleatório pelo componente
       Ide.natOp     := 'VENDA CONSUMIDOR';
       Ide.modelo    := 65;
       Ide.serie     := dm.SQLTerminalAtivoTERMICOD.Value;
       Ide.nNF       := NumNFe;
       Ide.dEmi      := now;
       Ide.dSaiEnt   := now;
       Ide.hSaiEnt   := now;
       Ide.tpNF      := tnSaida;
       Ide.tpEmis    := teNormal;
       Ide.tpAmb     := taProducao;
       Ide.cUF       := StrToInt(SQLLocate('EMPRESA','EMPRICOD','EMPRIUFCODFED',EmpresaPadrao));
       Ide.cMunFG    := StrToInt(SQLLocate('EMPRESA','EMPRICOD','EMPRIMUNICODFED',EmpresaPadrao));
       Ide.finNFe    := fnNormal;
       Ide.tpImp     := tiNFCe;
       Ide.indFinal  := cfConsumidorFinal;
       Ide.indPres   := pcPresencial;
       Ide.indPag    := ipVista;

       //     Ide.dhCont := date;
       //     Ide.xJust  := 'Justificativa Contingencia';

       Emit.CNPJCPF           := SQLLocate('EMPRESA','EMPRICOD','EMPRA14CGC',EmpresaPadrao);
       Emit.IE                := SQLLocate('EMPRESA','EMPRICOD','EMPRA20IE',EmpresaPadrao);
       Emit.xNome             := SQLLocate('EMPRESA','EMPRICOD','EMPRA60RAZAOSOC',EmpresaPadrao);
       Emit.xFant             := SQLLocate('EMPRESA','EMPRICOD','EMPRA60NOMEFANT',EmpresaPadrao);
       Emit.EnderEmit.fone    := SQLLocate('EMPRESA','EMPRICOD','EMPRA20FONE',EmpresaPadrao);
       Emit.EnderEmit.CEP     := StrToInt(SN(SQLLocate('EMPRESA','EMPRICOD','EMPRA8CEP',EmpresaPadrao)));
       Emit.EnderEmit.xLgr    := SQLLocate('EMPRESA','EMPRICOD','EMPRA60END',EmpresaPadrao);
       Emit.EnderEmit.nro     := SQLLocate('EMPRESA','EMPRICOD','EMPRIENDNRO',EmpresaPadrao);
       Emit.EnderEmit.xCpl    := ''; // Complemento
       Emit.EnderEmit.xBairro := SQLLocate('EMPRESA','EMPRICOD','EMPRA60BAI',EmpresaPadrao);
       Emit.EnderEmit.cMun    := StrToInt(SQLLocate('EMPRESA','EMPRICOD','EMPRIMUNICODFED',EmpresaPadrao));
       Emit.EnderEmit.xMun    := SQLLocate('EMPRESA','EMPRICOD','EMPRA60CID',EmpresaPadrao);
       Emit.EnderEmit.UF      := SQLLocate('EMPRESA','EMPRICOD','EMPRA2UF',EmpresaPadrao);
       Emit.enderEmit.cPais   := 1058;
       Emit.enderEmit.xPais   := 'BRASIL';
       Emit.IEST              := '';

       iCRT := StrToInt(SQLLocate('EMPRESA','EMPRICOD','EMPRA3CRT',EmpresaPadrao));
       IF iCRT = 1 Then
         Emit.CRT      := crtSimplesNacional  else
       IF iCRT = 2 Then
         Emit.CRT      := crtSimplesExcessoReceita  else
       IF iCRT = 3 Then
         Emit.CRT      := crtRegimeNormal;

       Dest.CNPJCPF           := DocumentoClienteVenda;
       Dest.xNome             := NomeClienteVenda;
       Dest.indIEDest         := inNaoContribuinte; {Pq NFCe nao informa Destinatario}

       SQLImpressaoCupom.Close;
       SQLImpressaoCupom.RequestLive := False;
       SQLImpressaoCupom.SQL.Clear;
       SQLImpressaoCupom.SQL.Add('Select i.* From CUPOMITEM i left join Produto p on p.prodicod = i.prodicod Where CPITCSTATUS="A" and CUPOA13ID ="'+idCupom+'"');
       SQLImpressaoCupom.SQL.Add('Order by i.CPITIPOS');
       SQLImpressaoCupom.Open;
       SQLImpressaoCupom.First;
       While not SQLImpressaoCupom.Eof do
         begin
           {Carrega Produtos temporarios}
           dm.sqlconsulta.close;
           dm.sqlconsulta.sql.Clear;
           dm.sqlconsulta.sql.Text := 'select NCMICOD, PRODA30ADESCRREDUZ,PRODA60REFER,PRODIORIGEM, PRODISITTRIB, PRODA1TIPO, PRODA1MODBC,PRODA1MODBCST,PRODA1MODBCST from produto where prodicod='+ SQLImpressaoCupom.fieldbyname('PRODICOD').AsString;
           dm.sqlconsulta.open;

           with Det.Add do
             begin
               Prod.nItem    := SQLImpressaoCupom.fieldbyname('CPITIPOS').AsInteger;
               Prod.cProd    := SQLImpressaoCupom.fieldbyname('PRODICOD').AsString;
               Prod.xProd    := dm.sqlConsulta.fieldbyname('PRODA30ADESCRREDUZ').AsString;
               Prod.NCM      := SQLLocate('NCM','NCMICOD','NCMA30CODIGO',SQLLocate('PRODUTO','PRODICOD','NCMICOD',SQLImpressaoCupom.fieldbyname('PRODICOD').AsString));
               Prod.EXTIPI   := '';
               if (dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '60') or (dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '500') then
                 Prod.CFOP     := '5405'
               else
                 Prod.CFOP     := '5102';


               Prod.uCom     := SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',SQLLocate('PRODUTO','PRODICOD','UNIDICOD',SQLImpressaoCupom.fieldbyname('PRODICOD').AsString));
               Prod.qCom     := SQLImpressaoCupom.fieldbyname('CPITN3QTD').AsFloat ;
               Prod.vUnCom   := SQLImpressaoCupom.fieldbyname('CPITN3VLRUNIT').AsFloat;
               Prod.vProd    := SQLImpressaoCupom.fieldbyname('CPITN3VLRUNIT').AsFloat * SQLImpressaoCupom.fieldbyname('CPITN3QTD').AsFloat ;

               Prod.uTrib     := SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',SQLLocate('PRODUTO','PRODICOD','UNIDICOD',SQLImpressaoCupom.fieldbyname('PRODICOD').AsString));
               Prod.qTrib     := SQLImpressaoCupom.fieldbyname('CPITN3QTD').AsFloat;
               Prod.vUnTrib   := SQLImpressaoCupom.fieldbyname('CPITN3VLRUNIT').AsFloat;

               Prod.vOutro    := 0;
               Prod.vFrete    := 0;
               Prod.vSeg      := 0;
               Prod.vDesc     := SQLImpressaoCupom.fieldbyname('CPITN2DESC').AsFloat;
               // infAdProd      := 'Informação Adicional do Produto';

               with Imposto do
                 begin
                   // lei da transparencia nos impostos
                   vTotTrib := 0;

                   if dm.sqlConsulta.fieldbyname('PRODIORIGEM').AsString = '0' then
                     ICMS.orig  := oeNacional else
                   if dm.sqlConsulta.fieldbyname('PRODIORIGEM').AsString = '1' then
                     ICMS.orig  := oeEstrangeiraImportacaoDireta else
                   if dm.sqlConsulta.fieldbyname('PRODIORIGEM').AsString = '2' then
                     ICMS.orig  := oeEstrangeiraAdquiridaBrasil;

                   case iCRT of
                      1:begin  // Linhas para o simples nacional
                          if dm.sqlConsulta.fieldbyname('PRODISITTRIB').AsString = '101' then ICMS.CSOSN :=  csosn101;
                          if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '102' then ICMS.CSOSN :=  csosn102;
                          if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '103' then ICMS.CSOSN :=  csosn103;
                          if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '300' then ICMS.CSOSN :=  csosn300;
                          if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '400' then ICMS.CSOSN :=  csosn400;
                          if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '201' then ICMS.CSOSN :=  csosn201;
                          if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '202' then ICMS.CSOSN :=  csosn202;
                          if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '500' then ICMS.CSOSN :=  csosn500;
                          if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '900' then ICMS.CSOSN :=  csosn900;

                          case ICMS.CSOSN of
                            csosn101 : begin
                                         ICMS.pCredSN     := 0.0; // Colocar o percentual do Crédito
                                         ICMS.vCredICMSSN := 0.0; // Colocar o valor do Crédito
                                       end;
                            csosn102 : begin
                                       end;
                            csosn103 : begin
                                       end;
                            csosn300 : begin
                                       end;
                            csosn400 : begin
                                       end;
                            csosn201 : begin
                                         ICMS.modBCST     := dbisMargemValorAgregado;
                                         ICMS.pMVAST      := 0; // Adilson, verificar melhor
                                         ICMS.pRedBCST    := 0;
                                         ICMS.vBCST       := 0; // Adilson, verificar melhor
                                         ICMS.pICMSST     := 0;
                                         ICMS.vICMSST     := 0; // Adilson, verificar melhor
                                         ICMS.pCredSN     := 0; // Colocar o percentual do Crédito
                                         ICMS.vCredICMSSN := 0; // Colocar o valor do Crédito
                                       end;
                            csosn202 : begin
                                         ICMS.modBCST  := dbisMargemValorAgregado;
                                         ICMS.pMVAST   := 0; // Adilson, verificar melhor
                                         ICMS.pRedBCST := 0;
                                         ICMS.vBCST    := 0; // Adilson, verificar melhor
                                         ICMS.pICMSST  := 0; // Adilson, verificar melhor
                                         ICMS.vICMSST  := 0; // Adilson, verificar melhor
                                       end;
                            csosn500 : begin
                                         ICMS.vBCSTRet   := 0; // Adilson, verificar melhor
                                         ICMS.vICMSSTRet := 0; // Adilson, verificar melhor
                                       end;
                          end; // fim do case icms.csosn
                        end;

                      2:begin
                          //        (...)
                        end;

                      3:begin
                          // Cst ICMS
                          if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring =  '0' then ICMS.CST := cst00;
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

                          // Base Calculo
                          if dm.sqlConsulta.fieldbyname('PRODA1MODBC').AsString = '0' then
                            ICMS.modBC  := dbiMargemValorAgregado else
                          if dm.sqlConsulta.fieldbyname('PRODA1MODBC').AsString = '1' then
                            ICMS.modBC  := dbiPauta else
                          if dm.sqlConsulta.fieldbyname('PRODA1MODBC').AsString = '2' then
                            ICMS.modBC  := dbiPrecoTabelado else
                          if dm.sqlConsulta.fieldbyname('PRODA1MODBC').AsString = '3' then
                            ICMS.modBC  := dbiValorOperacao;

                          ICMS.vBC     := SQLImpressaoCupom.fieldbyname('CPITN2BASEICMS').AsFloat;
                          ICMS.pICMS   := SQLImpressaoCupom.fieldbyname('COITN2ICMSALIQ').AsFloat;
                          ICMS.vICMS   := SQLImpressaoCupom.fieldbyname('CPITN2VLRICMS').AsFloat;

                          ICMS.vBCST   := 0;
                          ICMS.pICMSST := 0;
                          ICMS.vICMSST := 0;
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
                 TotalDesconto :=  TotalDesconto + vaux;
             end;
           SQLImpressaoCupom.next;
         end;
      Total.ICMSTot.vDesc := TotalDesconto;
      {Totais da NFCe}
      Total.ICMSTot.vTotTrib := Total_vTotTrib;
      SQLImpressaoCupom.Close;
      SQLImpressaoCupom.RequestLive := False;
      SQLImpressaoCupom.SQL.Clear;
      SQLImpressaoCupom.SQL.Add('Select * From CUPOM Where CUPOA13ID = "'+idCupom+'"');
      SQLImpressaoCupom.Open;

      Total.ICMSTot.vBC     := 0; //SQLImpressaoCupom.fieldbyname('CUPON2BASEICMS').AsFloat;
      Total.ICMSTot.vICMS   := 0; //SQLImpressaoCupom.fieldbyname('CUPON2VLRICMS').AsFloat;
      Total.ICMSTot.vBCST   := 0;
      Total.ICMSTot.vST     := 0;
      Total.ICMSTot.vProd   := SQLImpressaoCupom.fieldbyname('CUPON2TOTITENS').AsFloat+SQLImpressaoCupom.fieldbyname('CUPON2DESCITENS').AsFloat;
      Total.ICMSTot.vFrete  := 0;
      Total.ICMSTot.vSeg    := 0;
//      Total.ICMSTot.vDesc   := SQLImpressaoCupom.fieldbyname('CUPON2DESCITENS').AsFloat;
      Total.ICMSTot.vII     := 0;
      Total.ICMSTot.vIPI    := 0;
      Total.ICMSTot.vPIS    := 0;
      Total.ICMSTot.vCOFINS := 0;
      Total.ICMSTot.vOutro  := 0;
//      Total.ICMSTot.vNF     := SQLImpressaoCupom.fieldbyname('CUPON2TOTITENS').AsFloat;
      Total.ICMSTot.vNF := Total.ICMSTot.vProd - Total.ICMSTot.vDesc;

      Total.ISSQNtot.vServ   := 0;
      Total.ISSQNTot.vBC     := 0;
      Total.ISSQNTot.vISS    := 0;
      Total.ISSQNTot.vPIS    := 0;
      Total.ISSQNTot.vCOFINS := 0;

      Transp.modFrete := mfSemFrete; // NFC-e não pode ter FRETE

      SQLImpressaoCupomFinanceiro.Close;
      SQLImpressaoCupomFinanceiro.RequestLive := False;
      SQLImpressaoCupomFinanceiro.SQL.Clear;
      SQLImpressaoCupomFinanceiro.SQL.Add('Select * From CUPOMNUMERARIO Where CUPOA13ID = "'+idCupom+'"');
      SQLImpressaoCupomFinanceiro.Open;
      While not SQLImpressaoCupomFinanceiro.eof do
        begin
          iTipoPadrao := SQLLocate('NUMERARIO','NUMEICOD','NUMEA5TIPO',SQLImpressaoCupomFinanceiro.fieldbyname('NUMEICOD').AsString);
          SQLImpressaoCupomFinanceiro.next;
        end;

      with pag.Add do //PAGAMENTOS apenas para NFC-e
        begin
          if SQLImpressaoCupom.fieldbyname('CUPOCTIPOPADRAO').AsString = 'VISTA' then tPag := fpDinheiro;
          if SQLImpressaoCupom.fieldbyname('CUPOCTIPOPADRAO').AsString = 'DIN' then tPag   := fpDinheiro;
          if SQLImpressaoCupom.fieldbyname('CUPOCTIPOPADRAO').AsString = 'CRT' then tPag   := fpCartaoCredito;
          if SQLImpressaoCupom.fieldbyname('CUPOCTIPOPADRAO').AsString = 'CRTF' then tPag  := fpCreditoLoja;
          if SQLImpressaoCupom.fieldbyname('CUPOCTIPOPADRAO').AsString = 'CRD' then tPag   := fpCreditoLoja;
          if SQLImpressaoCupom.fieldbyname('CUPOCTIPOPADRAO').AsString = 'CHQV' then tPag  := fpCheque;
          if SQLImpressaoCupom.fieldbyname('CUPOCTIPOPADRAO').AsString = 'CHQP' then tPag  := fpCheque;
          vPag := Total.ICMSTot.vNF;
        end;

      SQLImpressaoCupomFinanceiro.Close;

      InfAdic.infCpl     :=  '';
      InfAdic.infAdFisco :=  '';
      {Dados do Cliente}
      if SQLImpressaoCupom.fieldbyname('CLIENTENOME').AsString <> '' then
        InfAdic.infCpl     := InfAdic.infCpl + SQLImpressaoCupom.fieldbyname('CLIENTENOME').AsString +', ' ;
      if SQLImpressaoCupom.fieldbyname('CLIENTECNPJ').AsString <> '' then
        InfAdic.infCpl     := InfAdic.infCpl + SQLImpressaoCupom.fieldbyname('CLIENTECNPJ').AsString +', ' ;
      if SQLImpressaoCupom.fieldbyname('CLIENTEFONE').AsString <> '' then
        InfAdic.infCpl     := InfAdic.infCpl + SQLImpressaoCupom.fieldbyname('CLIENTEFONE').AsString +', ' ;
      if SQLImpressaoCupom.fieldbyname('CLIENTECIDA').AsString <> '' then
        InfAdic.infCpl     := InfAdic.infCpl + SQLImpressaoCupom.fieldbyname('CLIENTECIDA').AsString +', ' ;
      if SQLImpressaoCupom.fieldbyname('CLIENTEENDE').AsString <> '' then
        InfAdic.infCpl     := InfAdic.infCpl + SQLImpressaoCupom.fieldbyname('CLIENTEENDE').AsString +', ' ;
      if SQLImpressaoCupom.fieldbyname('CLIENTEBAIRRO').AsString <> '' then
        InfAdic.infCpl     := InfAdic.infCpl + SQLImpressaoCupom.fieldbyname('CLIENTEBAIRRO').AsString ;

      // Gerar XML
      SQLImpressaoCupom.Close;
      dm.ACBrNFe.NotasFiscais.GerarNFe;
   end;
end;

procedure TFormTelaItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SQLItensVendaTemp.Close ;

  if EstadoPDVChk <> AguardandoNovaVenda then
    begin
      InformaG('Só é possível sair do ' + Application.Title + ' enquanto está aguardando nova venda!') ;
      Action := caNone ;
      SQLItensVendaTemp.Open ;
      Exit ;
    end ;

  Application.ProcessMessages;
  Action := cafree ;

  Application.Terminate;
end;

procedure TFormTelaItens.FormCreate(Sender: TObject);
var
  I : integer;
  Info : TInfoRetorno;
  IniFile: TiniFile;
begin
  IniFile := TIniFile.Create (DM.PathAplicacao+'Parceiro.ini');
  NotaGaucha  := IniFile.ReadString('IB_SOFTWARE','NotaGaucha','N');
  Enter_Vazio := IniFile.ReadString('IB_SOFTWARE','ENTER','S');
  GravarDisplaySequencial := IniFile.ReadString('IB_SOFTWARE','GravarDisplaySequencial','N');
  TeleQuitado := IniFile.ReadString('Restaurante','TeleQuitado','N');
  TabInicial  := IniFile.ReadString('Restaurante','TabInicial','TabLogo');
  UsaTablet   := IniFile.ReadString('Restaurante','UsaTablet','N');
  OrdemGrupo   := IniFile.ReadString('Restaurante','OrdemGrupo','GRUPA60DESCR');
  OrdemProduto := IniFile.ReadString('Restaurante','OrdemProduto','PRODA30ADESCRREDUZ');
  MostraCodigoBarras := IniFile.ReadString('Restaurante','MostraCodigoBarras','N');
  ImpressoraCaixaPath := IniFile.ReadString('Restaurante','ImpCaixa','');
  if ImpNaoFiscalAtual = '' then
    ImpNaoFiscalAtual := IniFile.ReadString('Restaurante','ImpMarca','');
  IniFile.Free;

  if not FileExists('Temp\ItensVendaTemp.db') then
    SQLItensVendaTemp.CreateTable ;

  SQLItensVendaTemp.Close ;
  try
    SQLItensVendaTemp.DeleteTable ;
    SQLItensVendaTemp.CreateTable ;
  except
    SQLItensVendaTemp.CreateTable ;
  end ;
  SQLItensVendaTemp.Open ;

  TrancouVenda := False;

  FormTelaItens.Caption := '';
  CodProxCntRecTemp := 0 ;
  QuantProx         := 0 ;
  AlterarUsuario    := false ;
  Retaguarda        := false ;
  SolicitarPreco    := false ;
  SolicitarPrecoQDeveriaSerVendido := false ;
  //MouseShowCursor(False) ;


  EstadoPDVChk := AguardandoNovaVenda ;
  PreparaEstadoBalcao(EstadoPDVChk) ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select EMPRA60NOMEFANT from EMPRESA') ;
  DM.SQLTemplate.SQL.Add('where EMPRICOD = ' + EmpresaPadrao) ;
  DM.SQLTemplate.Open ;
  if not DM.SQLTemplate.EOF then
    begin
      LblNomeSistema.Caption := DM.SQLTemplate.FieldByName('EMPRA60NOMEFANT').Value;
      EmpresaAtualNome    := DM.SQLTemplate.FieldByName('EMPRA60NOMEFANT').Value;
    end;

  if (DM.SQLConfigVendaCFVEIQTDPADRPDV.Value > 0) then
    EditQtde.Text := DM.SQLConfigVendaCFVEIQTDPADRPDV.AsString
  else
    EditQtde.Value := 0;

  SQLItensVendaTempQUANTIDADE.DisplayFormat := '';
  case DM.SQLTerminalAtivoTERMINRODECQUANT.Value of
    2 : SQLItensVendaTempQUANTIDADE.DisplayFormat := '##0.00';
    3 : SQLItensVendaTempQUANTIDADE.DisplayFormat := '##0.000';
  end;
  FormatStrQuant := SQLItensVendaTempQUANTIDADE.DisplayFormat;

  SQLItensVendaTempVLRUNITBRUT.DisplayFormat := '';
  case Dm.SQLConfigVendaCFVEINROCASASDEC.AsInteger of
    2 : SQLItensVendaTempVLRUNITBRUT.DisplayFormat := '##0.00';
    3 : SQLItensVendaTempVLRUNITBRUT.DisplayFormat := '###0.000';
  end;
  FormatStrVlrVenda := SQLItensVendaTempVLRUNITBRUT.DisplayFormat;

  // Cartao Credito => VISANET, REDECARD, AMEX, BANRISUL
  {VERIFICA SE EXISTE ALGUMA PENDÊNCIA NO GERENCIADOR DOS CARTÕES DE CRÉDITO}
  GPAtivo := False;
  if FileExists('Tef_Dial.txt') then
    begin
      if not DirectoryExists(AdjustPath(ReceiveDirectory) + 'Backup') then
        CreateDir(AdjustPath(ReceiveDirectory) + 'Backup');
      if Ativo then
        begin
          GPAtivo := True;
          SQLTEF.Close;
          SQLTEF.ParamByName('Terminal').AsInteger := TerminalCorrente;
          SQLTEF.Open;
          if not SQLTEF.IsEmpty then
            begin
              SQLTEF.First;
              while not SQLTEF.Eof do
                begin
                  SQLProvedorCartao.Close;
                  SQLProvedorCartao.MacroByName('Provedor').AsString := 'PRCAA60CARTAO = "' + SQLTEF.FieldByName('REDE').AsString + '"';
                  SQLProvedorCartao.Open;
                  SendDirectory    := SQLProvedorCartaoPRCATPATHENVIA.AsString;
                  ReceiveDirectory := SQLProvedorCartaoPRCATPATHRECEBE.AsString;
                  Confirma(SQLTEF.FieldByName('REDE').AsString,SQLTEF.FieldByName('NSU').AsString,SQLTEF.FieldByName('FINALIZACAO').AsString,False);
                  Info.CMC7 := 'A transação de Transferência Eletrônica de Fundos(TEF) foi cancelada!' + #13 + #13 +
                               'Rede --> ' + SQLTEF.FieldByName('REDE').AsString + #13 +
                               'Documento(NSU) --> ' + SQLTEF.FieldByName('NSU').AsString + #13;
                  if SQLTEF.FieldByName('Valor').AsFloat > 0 then
                    Info.CMC7 := Info.CMC7 + 'Valor --> ' + Formatfloat(FormatStrVlrVenda,SQLTEF.FieldByName('Valor').AsFloat /100);
                  Application.MessageBox(PChar(Info.CMC7),'Atenção', MB_OK + MB_ICONINFORMATION + MB_SYSTEMMODAL + MB_SETFOREGROUND);
                  if (ECFAtual <> '') then
                    begin
                      AbrirPortaECF(ECFAtual,PortaECFAtual);
                      try
                        if not FechamentoRelatorioGerencial(ECFAtual,PortaECFAtual) then
                          FecharCNFV(ECFAtual,PortaECFAtual);
                      except
                      end;
                      FecharPortaECF(ECFAtual,PortaECFAtual);
                    end;
                  SQLTEF.Delete;
                end;
              SetForegroundWindow(FormTelaItens.Handle);
            end;
          SQLProvedorCartao.Close;
          SQLProvedorCartao.MacroByName('Provedor').AsString := '0=0';
        end;
    end;
  // Carrega Logo Cliente
  if FileExists('Bmp\Logo PDV.Jpg') then
    Logo.Picture.LoadFromFile('Bmp\Logo PDV.Jpg') ;


  if DM.SQLTerminalAtivoTERMCSTATUSCAIXA.Value = 'F' then
    begin
      LblInstrucoes.Caption := 'CAIXA FECHADO';
      LblInstrucoes.Update;
    end;

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
      addLog('Urano Operação: ' + IntToStr(Urano_Operacao),ExtractFilePath(Application.ExeName) + 'LogPesaUrano.txt');
    finally
      IniFile.Free;
    end;
  end;

  if TabInicial = 'TabLogo' then PageControlPrincipal.ActivePage := TabLogo;
  if TabInicial = 'TabProdutos' then PageControlPrincipal.ActivePage := TabProdutos;
  if TabInicial = 'TabMesas' then
    begin
      PageControlPrincipal.ActivePage := TabMesas;
      AtualizaStatusMesas;
    end;

  SQLGrupo.close;
  SQLGrupo.MacroByName('Ordem').Value  := OrdemGrupo;
  SQLGrupo.Open;

  {Alimenta usuario atual}
  RxUsuario.Caption := 'Usuário: '+ UsuarioAtualNome;
  RxUsuario.Update;

  {Ajustar paineis na Tela}
  FormTelaItens.Width  := Screen.Width;
  if Screen.Width = 1024 then
    begin
      CtrlGridProdutos.ColCount := 8;
    end
  else
    begin
      ScrollBoxTapaAbas.Width   := Screen.Width-PanelComandos.Width;
      BtnTransfConta.left       := Screen.Width-PanelComandos.Width-BtnTransfConta.width-20;
      DBCtrlGridMesas.ColCount  := 6;
    end;

  if MostraCodigoBarras = 'N' then
    DBCdBarras.Visible := False;

  // Pega NFCe Configs Iniciais
  if (copy(EcfAtual,1,4) = 'NFCE') then
    Inicia_NFe;
end;

procedure TFormTelaItens.EntradaDadosKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
var
  RetornoUser : TInfoRetornoUser;
begin
  if Key = VK_Escape then
    begin
      if EstadoPDVChk = InformandoItens then
        begin
          if not Pergunta('NAO', '* * * CONFIRMA O CANCELAMENTO DESTE ATENDIMENTO ? * * *') then
            Exit ;

          ContinuarPreVenda        := False ;
          ReativarPreVenda         := False ;
          vImportarPreVenda        := False ;
          ImportandoPreVenda       := False ;

          if TabInicial = 'TabLogo' then PageControlPrincipal.ActivePage := TabLogo;
          if TabInicial = 'TabProdutos' then PageControlPrincipal.ActivePage := TabProdutos;
          if TabInicial = 'TabMesas' then
            begin
              PageControlPrincipal.ActivePage := TabMesas;
              AtualizaStatusMesas;
            end;

          if DM.SQLUsuario.Locate('USUAICOD',UsuarioCorrente,[]) then
            if DM.SQLUsuario.FieldByName('USUACCANCVENDA').AsString <> 'S' then
              if Pergunta('SIM','Você não tem permissão para cancelar este Atendimento!'+chr(13)+
                          'Deseja Informar Outro Usuário?') then
                begin
                  RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACCANCVENDA',RetornoUser);
                  if RetornoCampoUsuario <> 'S' then
                    Exit;
                end
              else
                Exit;

          CancelarVenda ;
          EstadoPDVChk := AguardandoNovaVenda ;
          PreparaEstadoBalcao(EstadoPDVChk) ;
          EntradaDados.Clear ;

          if (ECFAtual <> '') and (not FileExists('Confirma.txt')) then
            if not CancelarCupomFiscal(ECFAtual, PortaECFAtual) then
              InformaG('Problemas ao Cancelar Cupom Fiscal');

        end ;
      AtualizaStatusMesas;
    end ;

  if Key = VK_Return then
  begin
    {* * * * AGUARDANDO NOVA VENDA * * * *}
    if EstadoPDVChk = AguardandoNovaVenda then
    begin
      if ((Enter_Vazio = 'N') and (EntradaDados.Text='')) then exit;

      if SQLProduto.Active then SQLProduto.Close;
      if not SQLItensVendaTemp.Active then exit;
      if (EntradaDados.Text = '') or
         (EntradaDados.Text <> '')and
          (not EncontrouProduto(EntradaDados.Text,SQLProduto)) then
      begin
        if (DM.SQLConfigVendaCFVECFINDPRODPORDESCR.Value = 'S') then
          begin
            Application.CreateForm(TFormTelaConsultaRapidaItem, FormTelaConsultaRapidaItem);
            FormTelaConsultaRapidaItem.ShowModal;

            if CodigoProduto = '' then exit;
            EntradaDados.Text := CodigoProduto;
          end;
      end;

      if EntradaDados.Text <> '' then
        begin
          if SQLProduto.IsEmpty then EncontrouProduto(EntradaDados.Text,SQLProduto);
            if not SQLProduto.IsEmpty then
              begin
                // RETORNA SALDO DO PRODUTO
                DM.SQLTemplate.Close;
                DM.SQLTemplate.SQL.Clear;
                DM.SQLTemplate.SQL.Add('select PRODUTO.PRODICOD,');
                DM.SQLTemplate.SQL.Add('(select PRODUTOSALDO.PSLDN3QTDE from PRODUTOSALDO');
                DM.SQLTemplate.SQL.Add('where PRODUTOSALDO.EMPRICOD = ' + EmpresaPadrao);
                DM.SQLTemplate.SQL.Add('and   PRODUTOSALDO.PRODICOD = PRODUTO.PRODICOD) as QUANT');
                DM.SQLTemplate.SQL.Add('from PRODUTO');
                DM.SQLTemplate.SQL.Add('where PRODUTO.PRODICOD = ' + SQLProdutoPRODICOD.AsString);
                DM.SQLTemplate.Open ;
                ////////////////////////////////////////////////////////////////////////////////
                Application.CreateForm(TFormTelaTiraTeima, FormTelaTiraTeima);
                FormTelaTiraTeima.DescricaoProduto.Caption := SQLProdutoPRODICOD.AsString+'-'+SQLProduto.FieldByName('PRODA30ADESCRREDUZ').AsString;
                if UsaPrecoVenda <> 'A' then
                  begin
                    FormTelaTiraTeima.LBPreco.Caption   := 'PREÇO VAREJO';
                    FormTelaTiraTeima.PrecoNormal.Value := SQLProduto.FieldByName('PRODN3VLRVENDA').AsFloat;
                  end
                else
                  begin
                    FormTelaTiraTeima.LBPreco.Caption   := 'PREÇO ATACADO';
                    FormTelaTiraTeima.PrecoNormal.Value        := SQLProduto.FieldByName('PRODN3VLRVENDA2').AsFloat;
                  end;
                if ((SQLProduto.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (SQLProduto.FieldByName('PRODDFIMPROMO').AsDateTime >= Now) and (SQLProduto.FieldByName('PRODN3VLRVENDAPROM').AsFloat>0)) or
                   ((SQLProduto.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (SQLProduto.FieldByName('PRODDFIMPROMO').AsString = '') and (SQLProduto.FieldByName('PRODN3VLRVENDAPROM').AsFloat>0)) then
                  FormTelaTiraTeima.PrecoPromocao.Value    := SQLProduto.FieldByName('PRODN3VLRVENDAPROM').AsFloat
                else
                  FormTelaTiraTeima.PrecoPromocao.Value    := 0;
                if SQLProduto.FieldByName('PRODA255DESCRTEC').AsString <> '' then
                  FormTelaTiraTeima.DescricaoTecnica.Caption := 'Ref.'+SQLProduto.FieldByName('PRODA60REFER').AsString+CHR(13)+
                                                                SQLProduto.FieldByName('PRODA255DESCRTEC').AsString;
                FormTelaTiraTeima.SaldoAtual.Value := 0;
                if DM.SQLTemplate.FieldByName('QUANT').AsString <> '' then
                  FormTelaTiraTeima.SaldoAtual.Value := DM.SQLTemplate.FieldByName('QUANT').Value;

                FormTelaTiraTeima.LBMarca.Caption       := dm.SQLLocate('MARCA','MARCICOD','MARCA60DESCR',SQLProdutoMARCICOD.AsString);
                FormTelaTiraTeima.lbPREVCOMPRA.Caption  := 'Prev.Compra. '+ SQLProduto.FieldByName('PRODDPREVCOMPRA').AsString;

                FormTelaTiraTeima.EntradaDados.Text  := CodigoProduto;
                FormTelaTiraTeima.EntradaDados.Update;

                // Mostra Imagem Associada ao Produto
                if (SQLProdutoPRODBIMAGEM.BlobSize <> 0) then
                  begin
                    FormTelaTiraTeima.BlobStream:= SQLProduto.CreateBlobStream(SQLProdutoPRODBIMAGEM,bmRead);
                    FormTelaTiraTeima.JPEGImage := TJPEGImage.Create;
                    try
                      FormTelaTiraTeima.JPEGImage.LoadFromStream(FormTelaTiraTeima.BlobStream);
                      FormTelaTiraTeima.Foto.Picture.Assign(FormTelaTiraTeima.JPEGImage);
                    finally
                      FormTelaTiraTeima.BlobStream.Free;
                      FormTelaTiraTeima.JPEGImage.Free;
                    end;
                  end;

                FormTelaTiraTeima.ShowModal;
              end
            else
             begin
              {InformaG('Produto não encontrado!');}
             end;
          EntradaDados.Clear;
        end;
    end ;

    {* * * * INFORMADO ITENS * * * *}
    if (EstadoPDVChk = InformandoItens) or (EstadoPDVChk = InformandoItensTroca) then
    begin
      if (Enter_Vazio = 'N') and (EntradaDados.Text='') then exit;

      if SQLProduto.Active then SQLProduto.Close;
      if not SQLItensVendaTemp.Active then exit;
      LblInstrucoes.Caption := 'Procurando Produto...';
      LblInstrucoes.Refresh;
      E_PRODBALANCA := False;
      QuantItem := EditQtde.Value;
      if (EntradaDados.Text = '') or
         ((EntradaDados.Text <> '') and
         (not EncontrouProduto(EntradaDados.Text,SQLProduto))) then
        begin
          //TESTAR SE O CODIGO É DE BALANCA
          if Length(EntradaDados.Text) = 13 then
            begin
              SQLBalanca.Close;
              SQLBalanca.MacroByName('MFiltro').Value := 'CFBLA10BALID = "' + Copy(EntradaDados.Text, 1, 1) + '"';
              SQLBalanca.Open;
              if not SQLBalanca.Eof then
                begin
                  SQLProduto.Close;
                  SQLProduto.SQL.Clear;
                  SQLProduto.SQL.Add('select * from PRODUTO');
                  SQLProduto.SQL.Add('where PRODICODBALANCA = ' + Copy(EntradaDados.Text, SQLBalancaCFBLIBALCODPOS.Value,
                                                                                          SQLBalancaCFBLIBALCODTAM.Value));
                  SQLProduto.Open;
                  if not SQLProduto.Eof then
                    begin
                      ValorItem := StrToFloat(FormatFloat(FormatStrVlrVenda,RetornaPreco(SQLProduto, DM.SQLConfigVendaTPRCICOD.AsString,'')));

                      if SQLBalancaCFBLCTIPOPRECO.AsString = 'V' then
                        begin
                          QuantItem := StrToFloat(Copy(EntradaDados.Text, SQLBalancaCFBLIVLRPOS.Value, SQLBalancaCFBLIVLRTAM.Value - 2) + ',' +
                                                  Copy(EntradaDados.Text, SQLBalancaCFBLIVLRPOS.Value + SQLBalancaCFBLIVLRTAM.Value - 2, 2));

                          if QuantItem = 0 then
                            begin
                              E_PRODBALANCA := False;
                              InformaG('Quantidade Zerada ou não identificada!');
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
                                QuantItem     := StrToCurr(Copy(EntradaDados.Text, SQLBalancaCFBLIVLRPOS.Value, SQLBalancaCFBLIVLRTAM.Value - 2) + ',' +
                                                           Copy(EntradaDados.Text, SQLBalancaCFBLIVLRPOS.Value + SQLBalancaCFBLIVLRTAM.Value - 2, 2));

                              if SQLBalancaCFBLIDECIMAIS.AsInteger = 3 then
                                QuantItem     := StrToCurr(Copy(EntradaDados.Text, SQLBalancaCFBLIVLRPOS.Value, SQLBalancaCFBLIVLRTAM.Value - 3) + ',' +
                                                           Copy(EntradaDados.Text, SQLBalancaCFBLIVLRPOS.Value + SQLBalancaCFBLIVLRTAM.Value - 3, 3));
                            end
                          else
                            QuantItem     := StrToCurr(Copy(EntradaDados.Text, SQLBalancaCFBLIVLRPOS.Value, SQLBalancaCFBLIVLRTAM.Value));

                          if QuantItem = 0 then
                            begin
                              E_PRODBALANCA := False;
                              InformaG('Quantidade Zerada ou não identificada!');
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
                     { InformaG('Produto não Encontrado!');}
                      EntradaDados.SelectAll;
                      EstadoPDVChk := InformandoItens;
                      PreparaEstadoBalcao(InformandoItens);
                      EntradaDados.Clear;
                      Exit;
                    end;
                end
              else
                begin
                  {InformaG('Produto não Encontrado!'); }
                  EntradaDados.SelectAll;
                  EstadoPDVChk := InformandoItens;
                  PreparaEstadoBalcao(InformandoItens);
                  EntradaDados.Clear;
                  Exit;
                end;
            end;

          if ((ValorItem = 0) and (EntradaDados.Text = '')  and (not E_PRODBALANCA)) or
             ((ValorItem = 0) and (EntradaDados.Text <> '') and (not E_PRODBALANCA)) then
            begin
              if (DM.SQLConfigVendaCFVECFINDPRODPORDESCR.Value = 'S') then
                begin
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

              EntradaDados.text  := CodigoProduto;
              EntradaDados.SelectAll;
            end
          else
            begin
              if not E_PRODBALANCA  then
                EntradaDadosKeyDown(Sender, Enter, [ssAlt]);
            end;
        end;

      if EntradaDados.text = '' then
        begin
          {InformaG('Produto não Encontrado!');}
          EntradaDados.SelectAll;
          EstadoPDVChk := InformandoItens;
          PreparaEstadoBalcao(InformandoItens);
          EntradaDados.Clear;
          Abort;
          Exit;
        end;

      if SolicitarPreco and (EditQtde.Text <> '') then
      begin
        try
          if (Dm.SQLConfigVendaCFVECPEDEVLRPRODUTO.AsString = 'S') and (not ImportandoPreVenda) then
            SolicitarPreco := True
          else
            SolicitarPreco := false;
        except
          InformaG('Valor inválido');
          EntradaDados.SelectAll;
          PreparaEstadoBalcao(InformandoItens);
          exit;
        end;

        {Solicita Preco Automaticamente}
        Application.CreateForm(TFormTelaPrecoAlterado,FormTelaPrecoAlterado);
        FormTelaPrecoAlterado.EditValorTotal.Value := RetornaPreco(SQLProduto, DM.SQLConfigVendaTPRCICOD.AsString, UsaPrecoVenda);
        FormTelaPrecoAlterado.ShowModal;
        if FormTelaPrecoAlterado.ModalResult = MrOK then
          begin
            ValorItem := FormTelaPrecoAlterado.EditValorTotal.Value; // Normal para todos os clientes
          end
        else
          begin
            EntradaDados.SelectAll;
            PreparaEstadoBalcao(InformandoItens);
            exit;
          end;

        // Solicita Preco q deveria ser vendido o produto
        try
          if (Dm.SQLConfigVendaCFVECINFVLRDEVCVEN.AsString = 'S') and (not ImportandoPreVenda) then
            ValorItemQDeveriaSerVendido  := StrToFloat(InputBox('Informe o Valor que deveria ser vendido o Item', 'Prompt', FormatFloat(FormatStrVlrVenda, RetornaPreco(SQLProduto, DM.SQLConfigVendaTPRCICOD.AsString, UsaPrecoVenda))));

          if (Dm.SQLConfigVendaCFVECINFVLRDEVCVEN.AsString = 'S') and (not ImportandoPreVenda) then
            SolicitarPrecoQDeveriaSerVendido := True
          else
            SolicitarPrecoQDeveriaSerVendido := false;
        except
          InformaG('Valor inválido');
          EntradaDados.SelectAll;
          PreparaEstadoBalcao(InformandoItens);
          exit;
        end;
      end;


      if (ECFAtual <> '') then
        if SQLProdutoICMSICOD.AsString = '' then
        begin
          InformaG('Este produto não contém Alíquota de ICMS!') ;
          EntradaDados.SelectAll;
          PreparaEstadoBalcao(InformandoItens);
          exit;
        end;

      if ValorItem = 0 then
        ValorItem := StrToFloat(FormatFloat(FormatStrVlrVenda,RetornaPreco(SQLProduto, DM.SQLConfigVendaTPRCICOD.AsString, UsaPrecoVenda)));

      CodICMS                  := '';
      CodICMS                  := SQLProdutoICMSICOD.AsString;

      // Solicita Precos para Produtos com preco Zerado no Cadastro
      if (ValorItem = 0)  and (EditQtde.Text <> '') then
      begin
        try
          LblInstrucoes.Caption := SQLProdutoPRODA30ADESCRREDUZ.Value;
          LblInstrucoes.Update;
          Application.CreateForm(TFormTelaPrecoAlterado,FormTelaPrecoAlterado);
          FormTelaPrecoAlterado.EditValorTotal.Value := SQLProdutoPRODN3VLRVENDA.Value;
          FormTelaPrecoAlterado.ShowModal;
          if FormTelaPrecoAlterado.ModalResult = MrOK then
            begin
              if FormTelaPrecoAlterado.EditValorTotal.Value > 0 then
                ValorItem := FormTelaPrecoAlterado.EditValorTotal.Value
              else
                begin
                  EntradaDados.SelectAll;
                  PreparaEstadoBalcao(InformandoItens);
                  exit;
                end;
            end
          else
            begin
              EntradaDados.SelectAll;
              PreparaEstadoBalcao(InformandoItens);
              exit;
            end;
        except
          Application.ProcessMessages;
        end;
      end;

      if QuantItem = 0 then
        begin
          EditQtde.SetFocus;
          Exit;
        end;

      // Para que o Desconto seja Multiplicado pela Qtde Vendida
      if (QuantItem > 1) and (DescItemVlr > 0) then
        DescItemVlr := DescItemVlr * QuantItem ;

      if DescItemVlr > 0 then
        if DescItemVlr > ValorItem then
          begin
            Informa('O valor do desconto informado é maior que o valor do item!');
            EntradaDados.Clear;
            PreparaEstadoBalcao(InformandoItens);
            exit;
          end;
        if ((DescItemVlr/ValorItem) * 100) > PercDesqMaxUsario then
          begin
            if QuantItem > 0 then
              DescItemPerc := (DescItemVlr / (ValorItem * QuantItem)) * 100
            else
              DescItemPerc := (DescItemVlr / (ValorItem * 1)) * 100; // Coloquei o nro.1 pq quando o usuario nao tem poder de desconto a QuantItem estava Nulo e dava erro de calculo
            if Pergunta('SIM','Você não tem permissão de dar este percentual de desconto. Deseja Informar Outro Usuário?') then
              begin
                RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUAN2PERCDESC',RetornoUser);
                if RetornoCampoUsuario <> '' then
                  begin
                    if StrToInt(RetornoCampoUsuario) >= DescItemPerc then
                      begin
                        EntradaDados.Clear;
                      end
                    else
                      begin
                        Informa('Você não tem permissão de dar este percentual de desconto!');
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
              end
            else
              begin
                EntradaDados.Clear;
                PreparaEstadoBalcao(InformandoItens);
                exit;
              end;
          end;
      if DescItemPerc > 0 then
        begin
          DescItemVlr := ValorItem * (DescItemPerc/100);
          DescItemVlr := StrToFloat(Copy(FloatToStr(DescItemVlr),1,Pos(',', FloatToStr(DescItemVlr))+2));
        end;

      if DescItemVlr > 0 then
        TotalDescItens := TotalDescItens + DescItemVlr;

      // Esse teste foi colocado pq quando usa qtde padrao = 0 no configurador, nao importava os
      // Produtos de Trocas com o campo Qtde - Adilson
      if (QuantItem = 0) and ImportandoPreVenda and TrocandoItens then
         QuantItem := QuantProx;

      if QuantItem > 1000  then
        begin
          Beep;
          SoundPlay('error.wav',Sender);
          if (not Pergunta('NAO','A quantidade do produto está correta? -> ' + FormatFloat('##0.000',QuantItem))) then
            begin
              EditQtde.SetFocus;
              Exit;
            end;
        end;
      if ValorItem = 0 then
        ValorItem := StrToFloat(FormatFloat(FormatStrVlrVenda,RetornaPreco(SQLProduto, DM.SQLConfigVendaTPRCICOD.AsString, UsaPrecoVenda)));

      if DescItemPerc > 0 then
        begin
          DescItemVlr := (ValorItem * QuantItem)* (DescItemPerc/100);
          DescItemVlr := StrToFloat(Copy(FloatToStr(DescItemVlr),1,Pos(',', FloatToStr(DescItemVlr))+2)) ;
        end ;

      InfDesc := '' ;
      if DescItemPerc > 0 then
        InfDesc := ' - (' + FormatFloat('##0.00 %', DescItemPerc) + ' Desc)  '
      else
        if DescItemVlr > 0 then
          InfDesc := ' - (' + FormatFloat('R$ ##0.00', DescItemVlr) + ' Desc)  ' ;

      if DescItemPerc > 0 then
        begin
          DescItemVlr := (ValorItem * QuantItem) * (DescItemPerc/100) ;
          DescItemVlr := StrToFloat(Copy(FloatToStr(DescItemVlr),1,Pos(',', FloatToStr(DescItemVlr))+2)) ;
        end ;

      InfDesc := '' ;
      if DescItemPerc > 0 then
        InfDesc := ' - (' + FormatFloat('##0.00 %', DescItemPerc) + ' Desc)  '
      else
        if DescItemVlr > 0 then
          InfDesc := ' - (' + FormatFloat('R$ ##0.00', DescItemVlr) + ' Desc)  ' ;

      if QuantItem > 0 then
        begin
          if ItemCancelado > 0 then
            begin
              WNumItem := WNumItem + 1;
              ItemCancelado := 0;
            end;

          if DescItemPerc = 0 then
            DescItemPerc := (DescItemVlr/(ValorItem * QuantItem)) * 100;

          if TemProdutoSemSubsTrib then
            if SQLProdutoPRODCSUBSTRIB.AsString = 'S' then
              if DM.SQLConfigVendaCFVECINFPRODSUBTRI.AsString = 'S' then
                begin
                  InformaG('Já existe(m) produto(s) SEM substituição tributária nesta venda, você deve fazer um cupom separado para produtos COM substituição tributária!' + #13 + 'Para maiores informações contate o suporte!');
                  EntradaDados.SelectAll;
                  EstadoPDVChk := InformandoItens;
                  PreparaEstadoBalcao(EstadoPDVChk);
                  exit;
                end;
          if TemProdutoComSubsTrib then
            if SQLProdutoPRODCSUBSTRIB.AsString <> 'S' then
              if DM.SQLConfigVendaCFVECINFPRODSUBTRI.AsString = 'S' then
                begin
                  InformaG('Já existe(m) produto(s) COM substituição tributária nesta venda, você deve fazer um cupom separado para produtos SEM substituição tributária!' + #13 + 'Para maiores informações contate o suporte!');
                  EntradaDados.SelectAll;
                  EstadoPDVChk := InformandoItens;
                  PreparaEstadoBalcao(EstadoPDVChk);
                  exit;
                end;

          // Testa se o produto pode ser vendido Fracionado
          if Frac(QuantItem)>0 then
            begin
              if SQLProdutoFracionado.Value = 'N' then
                begin
                  InformaG('Este Produto não permite Venda Fracionada!') ;
                  EntradaDados.SelectAll ;
                  exit ;
                end;
            end ;

          // Retorna a descricao da UNIDADE
          if (SQLProdutoUNIDADE.AsString <> '') and (Length(SQLProdutoUNIDADE.AsString) = 2) then
            Unidade := SQLProdutoUNIDADE.AsString
          else
            Unidade := 'UN';

          // Testa Limite Saldo se trabalha com CartaoConsumo
          if (CodConta>0) and (FileExists('CartaoConsumo.txt')) then
            if ((ValorSubTotal + (QuantItem * ValorItem)) > StrToFloat(EditSaldoCliente.Text)) then
              begin
                InformaG('Saldo Cartão Excedido! Comprar mais Crédito!');
                EntradaDados.Clear;
                PreparaEstadoBalcao(InformandoItens);
                exit;
              end;

          {Envia para o ECF o Item Vendido}
          if (ECFAtual <> '') and (TerminalModo='C') and (not TrocandoItens) and (not FileExists('Confirma.txt')) then
          begin
            if RetornaTotalizadorIcmsECF(Ecf_ID, CodICMS) = '' then
              begin
                InformaG('A alíquota de ICMS deste produto não possui um totalizador no ECF configurado!') ;
                EntradaDados.SelectAll ;
                exit ;
              end ;

            if CodigoBarrasProduto = '' then
              CodigoBarrasProduto := SQLProdutoPRODICOD.AsString;
            // Para Cliente q desejam imprimir no Cupom o Cd.Interno do Produto
            if FileExists('ImprimeCodigoInternoCupom.txt') then
              CodigoBarrasProduto := SQLProdutoPRODICOD.AsString;

            if NroSerieProduto = '' then
              begin
                 if not ImprimeItemECF(ECFAtual,                                  {Impressora}
                                       PortaECFAtual,                             {Porta}
                                       IntToStr(WNumItem),                        {Numitem}
                                       CodigoBarrasProduto,                       {Codigo}
                                       SQLProdutoPRODA30ADESCRREDUZ.Value,        {Descricao}
                                       RetornaTotalizadorIcmsECF(Ecf_ID, CodICMS),{Tributo}
                                       Unidade,                                   {Unid}
                                       QuantItem,                                 {Qtde}
                                       ValorItem,                                 {Valor}
                                       DescItemPerc,                              {Percdesc}
                                       DescItemVlr,                               {Vlrdesco}
                                       DM.SQLTerminalAtivoTERMINRODECQUANT.Value  {NumDecQuant}) then
                begin
                  InformaG('Problemas ao imprimir o item no ECF!');
                  EntradaDados.SelectAll;
                  exit;
                end;
              end
            else
              begin
                if not ImprimeItemECF( ECFAtual,                                  {Impressora}
                                       PortaECFAtual,                             {Porta}
                                       IntToStr(WNumItem),                        {Numitem}
                                       NroSerieProduto,                           {Codigo}
                                       SQLProdutoPRODICOD.AsString + '-' + SQLProdutoPRODA30ADESCRREDUZ.Value, {Descricao}
                                       RetornaTotalizadorIcmsECF(Ecf_ID, CodICMS),{Tributo}
                                       Unidade,                                   {Unid}
                                       QuantItem,                                 {Qtde}
                                       ValorItem,                                 {Valor}
                                       DescItemPerc,                              {Percdesc}
                                       DescItemVlr,                               {Vlrdesco}
                                       DM.SQLTerminalAtivoTERMINRODECQUANT.Value  {NumDecQuant}) then
                begin
                  InformaG('Problemas ao imprimir o item no ECF!');
                  EntradaDados.SelectAll;
                  exit;
                end
              end;
          end;

          SQLItensVendaTemp.Append ;
          if ContinuarPrevenda then
            SQLItensVendaTempTERMICOD.Value     := TermPVImp
          else
            SQLItensVendaTempTERMICOD.Value     := TerminalAtual ;

          // SQLItensVendaTempNUMITEM.Value     := wNumItem ;
          NroUltItem := NroUltItem + 1;
          SQLItensVendaTempNUMITEM.Value        := NroUltItem;
          SQLItensVendaTempCODIGO.Value         := SQLProdutoPRODICOD.Value ;
          SQLItensVendaTempDESCRICAO.Value      := SQLProdutoPRODA30ADESCRREDUZ.Value;
          SQLItensVendaTempPRODA60DESCR.Value   := SQLProdutoPRODA30ADESCRREDUZ.Value;
          SQLItensVendaTempREFERENCIA.Value     := SQLProdutoPRODA60REFER.Value;
          SQLItensVendaTempMARCA.Value          := dm.SQLLocate('MARCA','MARCICOD','MARCA60DESCR',SQLProdutoMARCICOD.AsString);
          SQLItensVendaTempCOR.Value            := dm.SQLLocate('COR','CORICOD','CORA30DESCR',SQLProdutoCORICOD.AsString);
          if (SQLProduto.FieldByName('GRADICOD').AsString <> '') and (SQLProduto.FieldByName('GRTMICOD').AsString <> '') then
            SQLItensVendaTempTAMANHO.Value      := RetornaTamanhoProduto(SQLProduto.FindField('GRADICOD').AsString,SQLProduto.FindField('GRTMICOD').AsString);
          SQLItensVendaTempQUANTIDADE.AsString  := FormatFloat(FormatStrQuant, QuantItem);
          SQLItensVendaTempVLRUNITBRUT.Value    := ValorItem;
          SQLItensVendaTempVLRDESC.Value        := DescItemVlr;

          ValorTotItem := FloatToStr(SQLItensVendaTempQUANTIDADE.Value * ValorItem);

          if DescItemVlr > 0 then
            ValorTotItem := FormatFloat(FormatStrVlrVenda,StrToFloat(ValorTotItem)  - DescItemVlr);

          ValorTotItem := FormatFloat(FormatStrVlrVenda,StrToFloat(ValorTotItem));
          SQLItensVendaTempVLRTOTAL.AsString := ValorTotItem;
          SQLItensVendaTempBASEICMS.asFloat  := SQLItensVendaTempVLRTOTAL.AsFloat;
          SQLItensVendaTempALIQUOTA.AsFloat  := RetornaAliquotaICMSProduto(SQLProdutoICMSICOD.AsInteger);
          ReducaoICMS                        := RetornaREDUCAOICMSProduto(SQLProdutoICMSICOD.AsInteger);
          if ReducaoICMS > 0 then
            begin
              SQLItensVendaTempBASEICMS.asFloat := SQLItensVendaTempVLRTOTAL.AsFloat * (ReducaoICMS / 100);
            end;

          SQLItensVendaTempVLRICMS.Value     :=  SQLItensVendaTempBASEICMS.asFloat * (SQLItensVendaTempALIQUOTA.AsFloat / 100);

          if DM.SQLConfigCompraCFCOCTOTPRCVENPROD.AsString <> '' then
            begin
              case DM.SQLConfigCompraCFCOCTOTPRCVENPROD.AsString[1] of
                'M' : SQLItensVendaTempVLRCUSTO.AsFloat := SQLProdutoPRODN3VLRCUSTOMED.AsFloat;
                'U' : SQLItensVendaTempVLRCUSTO.AsFloat := SQLProdutoPRODN3VLRCUSTO.AsFloat;
              end;
            end;

          if VendPreVenda > 0 then
            SQLItensVendaTempVENDICOD.Value := VendPreVenda;

          if NroSerieProduto <> '' then
            SQLItensVendaTempNROSERIE.AsString := NroSerieProduto;

          if FloatToStr(ValorItemQDeveriaSerVendido) = '' then ValorItemQDeveriaSerVendido := 0;
          SQLItensVendaTempVLRQDEVERIAVENDER.asFloat  := ValorItemQDeveriaSerVendido;

          SQLItensVendaTempCODBARRAS.Value := CodigoBarrasProduto;

          // Pergunta se o produto tem Obs
          if not vImportarPrevenda then
            begin
              if FileExists('SolicitaObsProduto.txt') then
                if Pergunta('Nao','Digitar Obs para esse Produto?') then
                  SQLItensVendaTempDESCRICAOTEC.AsString := UpperCase(InputBox('Atenção!','Digite a Observacao...',''));
            end
          else
            SQLItensVendaTempDESCRICAOTEC.AsString := DM.SQLPreVendaItem1PVITTOBS.AsString ;

          // Programa de Olho no Imposto
          SQLItensVendaTempAliquotaMedia.Value := RetornaAliquotaMediaProduto(SQLProdutoNCMICOD.Value, SQLProdutoPRODIORIGEM.Value);
          if SQLItensVendaTempAliquotaMedia.Value > 0 then
            SQLItensVendaTempValorImpostoMedio.Value := (SQLItensVendaTempVLRTOTAL.Value * SQLItensVendaTempAliquotaMedia.Value) / 100;

          { Removido Adilson
           if SQLItensVendaTempAliquotaMedia.Value = 0 then
            ShowMessage('Anote o NCM com ERRO para ser corrigido! NCM='+dm.SQLLocate('ncm','ncmicod','NCMA30CODIGO',SQLProdutoNCMICOD.AsString));}

          {Chama Tela de Bordas se produto for Pizza}
          if SQLLocate('produto','prodicod','SABORES',SQLItensVendaTempCODIGO.AsString) = 'S' then
            begin
              Application.CreateForm(TFormTelaBordas, FormTelaBordas);
              FormTelaBordas.SQLObsProduto.Close;
              FormTelaBordas.SQLObsProduto.SQL.clear;
              FormTelaBordas.SQLObsProduto.SQL.Text := 'Select * from ObsProdutoRest where OBPRA1TIPO="B" Order by OBPRIORDEM ASC' ;
              FormTelaBordas.SQLObsProduto.Open;
              if not FormTelaBordas.SQLObsProduto.IsEmpty then
                begin
                  FormTelaBordas.ShowModal;
                  if FormTelaBordas.EditValorTotal.Text <> '' then
                    SQLItensVendaTempBordaValor.Value  := StrToFloat(FormTelaBordas.EditValorTotal.Text);
                  SQLItensVendaTempBORDA01.Value := FormTelaBordas.Borda01.Text;
                  SQLItensVendaTempBORDA02.Value := FormTelaBordas.Borda02.Text;
                  SQLItensVendaTempBORDA03.Value := FormTelaBordas.Borda03.Text;
                end
              else
                begin
                  FormTelaBordas.close;
                  FormTelaBordas.free;
                end;
              Application.CreateForm(TFormTelaSabores, FormTelaSabores);
              FormTelaSabores.ShowModal;
              if FormTelaSabores.EditValorTotal.Text <> '' then
                begin
                  SQLItensVendaTempSaborValor.Value  := StrToFloat(FormTelaSabores.EditValorTotal.Text);
                  SQLItensVendaTempVLRUNITBRUT.Value := SQLItensVendaTempBordaValor.Value  + SQLItensVendaTempSaborValor.Value;
                  SQLItensVendaTempVLRTOTAL.Value    := SQLItensVendaTempVLRUNITBRUT.Value * SQLItensVendaTempQUANTIDADE.Value;
                end;
              SQLItensVendaTempSabor01.Value := FormTelaSabores.Sabor01.Text;
              SQLItensVendaTempSabor02.Value := FormTelaSabores.Sabor02.Text;
              SQLItensVendaTempSabor03.Value := FormTelaSabores.Sabor03.Text;
              SQLItensVendaTempSabor04.Value := FormTelaSabores.Sabor04.Text;
              SQLItensVendaTempSabor05.Value := FormTelaSabores.Sabor05.Text;
              SQLItensVendaTempSabor06.Value := FormTelaSabores.Sabor06.Text;
            end;
          SQLItensVendaTemp.Post;
          SQLItensVendaTemp.Close;
          SQLItensVendaTemp.Open;
          SQLItensVendaTemp.Last;

          // Variavel que informa se já foi vendido algum produto sem subs. trib.
          if SQLProdutoPRODCSUBSTRIB.AsString = 'S' then
            TemProdutoComSubsTrib := True
          else
            TemProdutoSemSubsTrib := True;

          CodigoProduto := '';
          CodigoBarrasProduto := '';
          NroSerieProduto := '';

        end ;

      DescItemPerc := 0 ;
      DescItemVlr  := 0 ;
      ValorItem    := 0 ;
//      VendPreVenda := 0 ;

      if (DM.SQLConfigVendaCFVEIQTDPADRPDV.Value > 0) then
        EditQtde.Text := DM.SQLConfigVendaCFVEIQTDPADRPDV.AsString
      else
        EditQtde.Value := 0;

      //PODE-SE DIGITAR ZERO NA QUANTIDADE PARA VOLTAR PARA FUNCAO ITENS NORMAIS
      if (not TrocandoItens) and (QuantItem > 0) then
        EstadoPDVChk := InformandoItens
      else begin
        if TrocandoItens then
          EstadoPDVChk := InformandoItensTroca ;
      end ;

      CalculaTotal;

      PreparaEstadoBalcao(EstadoPDVChk) ;
      EntradaDados.Clear ;
      Exit ;

    end ;

    if EstadoPDVChk = CancelandoItem then
    begin
      //ESTE TESTE FOI ACRESCENTADO POIS PODE SE DESISTIR DE CANCELAR O ÍTEM
      //INFORMANDO ZERO COMO VALOR
      if EntradaDados.Text <> '' then
        begin
          // Se o usuario possuir direito de cancelar, efetua o cancelamento
          if SQLItensVendaTemp.Locate('NUMITEM', EntradaDados.Text, []) then
            begin
              if (ECFAtual <> '') and (ECFAtual <> 'CORISCO CT7000 V3') and (not FileExists('Confirma.txt')) then
                begin
                  if not CancelarItemECF(ECFAtual, PortaECFAtual, SQLItensVendaTempNUMITEM.AsString) then
                    begin
                      InformaG('Problemas ao cancelar item!') ;
                      EntradaDados.SelectAll ;
                      exit ;
                    end ;
                end;

              if SQLItensVendaTemp.Recordcount > 0 then
                begin
                  if SQLItensVendaTempVLRDESC.AsFloat > 0 then
                    TotalDescItens := TotalDescItens - SQLItensVendaTempVLRDESC.AsFloat;
                    // Excluir item
                    if NroUltItem = SQLItensVendaTempNUMITEM.AsInteger then
                      ItemCancelado := ItemCancelado + 1;
                    SQLItensVendaTemp.Delete;
                end ;
            end
          else
            begin
              InformaG('Item não encontrado!') ;
              EntradaDados.SelectAll ;
            end ;
        end ;


      EstadoPDVChk := InformandoItens;
      PreparaEstadoBalcao(EstadoPDVChk);

      EntradaDados.Clear;
      CalculaTotal;
    end ;

    if EstadoPDVChk = DescontoPercItem then
    begin
      if EntradaDados.Text = '' then
        begin
          Informa('Digite um valor % para o desconto!');
          EntradaDados.Clear;
          Exit;
        end;
      DescItemPerc := StrToFloat(EntradaDados.Text);
      if PercDesqMaxUsario < DescItemPerc then
        begin
          if Pergunta('SIM','Você não tem permissão de dar este percentual de desconto. Deseja Informar Outro Usuário?') then
            begin
              RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUAN2PERCDESC',RetornoUser);
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
                      Informa('Você não tem permissão de dar este percentual de desconto!');
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
      DescItemVlr  := StrToFloat(EntradaDados.Text);
      EstadoPDVChk := EstadoPDVChkAnt;
      PreparaEstadoBalcao(EstadoPDVChk);
      EntradaDados.Clear;
    end ;
  end ;//Key
end;

procedure TFormTelaItens.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  Saldo    : double ;
  DocReImprPedRet,
  PreVendaRimp,
  Status, DataHoraPedido,
  SaldoStr : string ;
  RetornoCartao : TInfoRetorno;
  DadosImpressora : TInfoImpressao;
  RetornoUser : TInfoRetornoUser;
  Sequencial, LinhasCartao : Integer;
begin
  case Key of
     VK_F1:begin//CHAMAR TECLA DE ATALHO
             Application.CreateForm(TFormTelaTeclasAtalhoTelaItens, FormTelaTeclasAtalhoTelaItens) ;
             FormTelaTeclasAtalhoTelaItens.ShowModal ;
           end ;
     VK_F2
     :begin//INICIANDO NOVA VENDA Balcao
             {Limpa Taxa Tele}
             CodMesa := 0; CodConta := 0 ;
             ckLevarCasa.Checked    := false;
             ckBusca.Checked        := false;

             EditTxTele.Text := '';
             EditTxTele.Update;

             TerminalModo := 'C';
             OrigemVenda  := 'C';
             TemProdutoSemSubsTrib := False;
             TemProdutoComSubsTrib := False;
             GridItens.Options     := [dgTitles,dgCancelOnExit,dgIndicator];
             CodigoAntigoCupom     := '';
             SaldoEstoqueAtual     := 0;
             ItemCancelado         := 0;
             if SQLItensVendaTemp.RecordCount > 0 then
               begin
                 SQLItensVendaTemp.Last;
                 NroUltItem := SQLItensVendaTempNUMITEM.Value;
                 SQLItensVendaTemp.First;
               end
             else
               NroUltItem          := 0;
             if EstadoPDVChk = InformandoItens then
             begin
               InformaG('Esta venda já foi iniciada!') ;
               EntradaDados.SelectAll ;
               exit ;
             end ;

             if DM.SQLConfigVendaOPESICODCUPOM.Value > 0 then
             else begin
               InformaG('Não há nenhuma Operacao de Estoque padrão configurada para Venda Cupom. Você deve ajustar esta configuração antes de iniciar uma nova venda!') ;
               EntradaDados.SelectAll ;
               exit ;
             end ;

             if DM.SQLConfigVendaOPESICODCANCCUPOM.Value > 0 then
             else begin
               InformaG('Não há nenhuma Operacao de Estpoque padrão configurada para Cancelamanto Venda Cupom. Você deve ajustar esta configuração antes de iniciar uma nova venda!') ;
               EntradaDados.SelectAll ;
               exit ;
             end ;

             if (DM.SQLConfigVendaCFVEIQTDPADRPDV.Value > 0) then
               EditQtde.Text := DM.SQLConfigVendaCFVEIQTDPADRPDV.AsString
             else
               EditQtde.Value := 0;

             AlterarUsuario  := false ;

             if TerminalModo = 'C' then
             begin
               TestaStatusCaixa ;
               if VerCaixa then
                 exit ;
             end ;

             TipoVenda        := 0 ;

             CapturaCodigosIniciais ;

             LblInstrucoes.Caption := '' ;
             LblInstrucoes.Refresh ;

             LimparVariaveis ;

             BtnF3.Visible := True;
             BtnF4.Visible := True;
             BtnF2.Visible := False;
             BtnF5.Visible := False;
             BtnF6.Visible := False;

             ClienteVenda := DM.SQLTerminalAtivoCLIEA13ID.Value;
             if FileExists('SolicitaCliente.txt') then
               begin
                 try
                   NomeClienteVenda := InputBox('Atenção!','Identifica o Cliente...','');
                   NomeClienteVenda := UpperCase(NomeClienteVenda);
                 except
                   Application.ProcessMessages;
                 end;
               end;
             UsaPrecoVenda := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIECTPPRCVENDA', '''' + ClienteVenda + '''');

             {Solicita Vendedor}
             if dm.SQLTerminalAtivoTERMCSOLCODVEND.Value = 'S' then
               begin
                 Application.CreateForm(TFormVendedorCodigo,FormVendedorCodigo);
                 FormVendedorCodigo.ShowModal;
                 if FormVendedorCodigo.ModalResult = MrOK then
                   begin
                     VendedorVenda := StrToInt(FormVendedorCodigo.EditCod.text);
                     editVendedor.Text := SQLLocate('vendedor','vendicod','VENDA60NOME',IntToStr(VendedorVenda));
                     editVendedor.Update;
                   end
                 else
                   begin
                     editVendedor.Text := '';
                     editVendedor.Update;
                   end;
               end;

             if NomeClienteVenda <> '' then
               begin
                 EditNomeCli.Text := NomeClienteVenda;
                 EditNomeCli.Update;
               end;

             LblNomeSistema.Caption := 'EM VENDA BALCAO...';
             LblNomeSistema.Update;

             NroCupomFiscal := '000000' ;
             if (ECFAtual <> '') and (not FileExists('Confirma.txt')) then
             begin
               NroCupomFiscal := '' ;
               if not AbrirCupomFiscal(ECFAtual, PortaECFAtual, NroCupomFiscal) and (ECFAtual <> 'SIGTRON FS300') then
               begin
                 InformaG('Problemas ao tentar abrir o cupom!') ;
                 EntradaDados.SelectAll ;
                 exit ;
               end ;
               if (NroCupomFiscal = '000000') and (ECFAtual <> 'SIGTRON FS300') then
               begin
                 InformaG('Não foi possível capturar o número do Cupom Fiscal') ;
                 EntradaDados.SelectAll ;
                 NroCupomFiscal := '000000' ;
               end;
             end ;
             SolicitarPreco := False;
             SolicitarPrecoQDeveriaSerVendido := False;
             // Solicita preço de produto automaticamente
             if (Dm.SQLConfigVendaCFVECPEDEVLRPRODUTO.AsString = 'S') and (not ImportandoPreVenda) then
               SolicitarPreco := True;
             if (Dm.SQLConfigVendaCFVECINFVLRDEVCVEN.AsString = 'S') and (not ImportandoPreVenda) then
               SolicitarPrecoQDeveriaSerVendido := True;

             PedidosImportados := '' ;
             ValorItem := 0 ;


             EstadoPDVChk := InformandoItens ;
             PreparaEstadoBalcao(EstadoPDVChk) ;
           end ;
     VK_F3:begin//FECHAMENTO DE VENDA
             if EstadoPDVChk <> InformandoItens then
               begin
                 InformaG('O fechamento só pode ser feito quando o sistema está solicitando itens!') ;
                 EntradaDados.SelectAll ;
                 Exit ;
               end ;

             if (ValorSubTotal = 0) then
               begin
                { TerminalModo := 'C';
                 EstadoPDVChk := AguardandoNovaVenda ;
                 PreparaEstadoBalcao(EstadoPDVChk) ; }

                 InformaG('Venda Zerada não pode ser Finalizada! [ESC]Cancelar') ;
                 EntradaDados.SelectAll ;
                 Exit ;
               end ;

             if (OrigemVenda = 'C') and (ECFAtual = 'BEMATECH MP-25 FI') and (not FileExists('Confirma.txt')) then
               begin
                 try
                   dm.SubTotal_ECF  := '00000000000000';
                   Bematech_FI_SubTotal(dm.SubTotal_ECF);
                   dm.SubTotal_ECF  := FormatFloat(FormatStrVlrVenda,(StrToInt(dm.SubTotal_ECF)/100));
                   CurSubTotal.Caption := dm.SubTotal_ECF;
                   CurSubTotal.Update;
                 except
                   Application.ProcessMessages;
                 end;
               end;

             if (OrigemVenda = 'C') and (ECFAtual = 'DARUMA FS345') and (not FileExists('Confirma.txt')) then
               begin
                 try
                   dm.SubTotal_ECF := '00000000000000';
                   Daruma_FI_SubTotal(dm.SubTotal_ECF);
                   dm.SubTotal_ECF  := FormatFloat(FormatStrVlrVenda,(StrToInt(dm.SubTotal_ECF)/100));
                   CurSubTotal.Caption := dm.SubTotal_ECF;
                   CurSubTotal.Update;
                 except
                   Application.ProcessMessages;
                 end;
               end;

             if OrigemVenda = 'C' then
               begin
                 Application.CreateForm(TFormTelaFechamentoVenda, FormTelaFechamentoVenda) ;
                 FormTelaFechamentoVenda.LblNomeSistema.Caption := 'Fecha Venda a Balcao' ;
               end;
             if OrigemVenda = 'TELE' then
               begin
                 Application.CreateForm(TFormTelaFechamentoVenda, FormTelaFechamentoVenda) ;
                 FormTelaFechamentoVenda.LblNomeSistema.Caption := 'Fecha Venda Tele-Entrega' ;
               end;

             // Se for Pedido Mesas apenas grava os itens consumidos
             {TerminalModo = 'Mesa' Adilson Verificar essa variavel}
             if (TerminalModo = 'MESA') then
               begin
                 {Atualiza Label para mostrar o nome da empresa}
                 LblNomeSistema.Caption := EmpresaAtualNome;
                 LblNomeSistema.Update;

                 // Testa se a Mesa Esta Aberta, caso a variavel CodMesa seja maior que Zero, do contrario nao havera controle de mesa
                 if CodMesa > 0 then
                   begin
                     dm.SQLMesaStatus.Close;
                     dm.SQLMesaStatus.Macrobyname('MFILTRO').Value := 'MESAICOD = '+ IntToStr(CodMesa);
                     dm.SQLMesaStatus.Open;
                     dm.SQLMesaStatus.Edit;
                     dm.SQLMesaStatusMESACSTATUS.Value        := 'F';
                     dm.SQLMesaStatusMESADABERTURA.Value      := Now;
                     dm.SQLMesaStatusMESADULTPED.AsString     := '' ;
                     dm.SQLMesaStatusMESADFECHAMENTO.AsString := '' ;
                     dm.SQLMesaStatusMESAN3VLRTOTAL.Value     := 0  ;
                     if (dm.SQLMesaStatusNOMECLIENTE.Value = '') and (dm.SQLMesaStatusVENDICOD.AsString = '') and (NomeClienteVenda <> 'CONSUMO MESAS') then
                       dm.SQLMesaStatusNOMECLIENTE.Value := NomeClienteVenda;

                     dm.SQLMesaStatus.Post;
                   end;

                 //GRAVAR CABECALHO PRÉ-VENDA
                 Gravou := false ;
                 DataHoraPedido := FormatDateTime('mm/dd/yyyy hh:mm:ss',Now) ;
                 while not Gravou do
                   begin
                     // Calcula o Sequencial da Prevenda
                     DM.SQLTemplate.Close ;
                     DM.SQLTemplate.SQL.Clear ;
                     DM.SQLTemplate.SQL.Add('select Max(SEQUENCIAL) as SEQ from PREVENDA') ;
                     DM.SQLTemplate.Open ;
                     if DM.SQLTemplate.FieldByName('SEQ').Value <> Null then
                       Sequencial := DM.SQLTemplate.FieldByName('SEQ').Value + 1
                     else
                       Sequencial := 1 ;

                     try
                       DM.SQLTemplate.Close ;
                       DM.SQLTemplate.SQL.Clear ;
                       DM.SQLTemplate.SQL.Add('SELECT GEN_ID(PREVENDA, 1) FROM CONFIGVENDA');
                       DM.SQLTemplate.Open ;
                       ProxCod := DM.SQLTemplate.FieldByName('GEN_ID').Value
                     except
                       Application.ProcessMessages;
                     end;

                     DM.SQLTemplate.Close ;
                     DM.SQLTemplate.SQL.Clear ;
                     DM.SQLTemplate.SQL.Add('Insert into PREVENDA') ;
                     DM.SQLTemplate.SQL.Add('(TERMICOD, PRVDICOD, CLIEA13ID, CLIENTENOME, PLRCICOD, VENDICOD, PRVDN2TOTITENS,') ;
                     DM.SQLTemplate.SQL.Add('PRVDN2DESC, PRVDN2ACRESC, PRVDCTIPOPADRAO, PRVDN2CONVTAXA, SEQUENCIAL,') ;
                     DM.SQLTemplate.SQL.Add('PRVDCIMPORT, PRVDCMARCADO, PDVDDHVENDA, PDVCPRECONCLU, MESAICOD, CONTAICOD, ORIGEMVENDA, EMPRICOD, SITUACAO, DATA_PEDIDO, CUPOCLEVAR)') ;
                     DM.SQLTemplate.SQL.Add('Values (') ;
                     DM.SQLTemplate.SQL.Add(IntToStr(TerminalAtual) + ',') ;//TERMICOD
                     DM.SQLTemplate.SQL.Add(IntToStr(ProxCod) + ', ') ;//PRVDICOD

                     if ClienteVenda <> '' then
                       DM.SQLTemplate.SQL.Add('"' + ClienteVenda + '",')
                     else
                       DM.SQLTemplate.SQL.Add('"' + dm.SQLTerminalAtivoCLIEA13ID.Value + '",');

                     DM.SQLTemplate.SQL.Add('"' + NomeClienteVenda + '",') ;// NomeClienteVenda
                     DM.SQLTemplate.SQL.Add('1,') ;//PLRCICOD
                     DM.SQLTemplate.SQL.Add(IntToStr(VendedorVenda) + ',') ;//VENDICOD
                     DM.SQLTemplate.SQL.Add('0,') ;//PRVDN2TOTITENS
                     DM.SQLTemplate.SQL.Add('0,') ;//PRVDN2DESC
                     DM.SQLTemplate.SQL.Add('0,') ;//PRVDN2ACRESC
                     DM.SQLTemplate.SQL.Add('"' + TipoPadrao + '",') ;//PRVDCTIPOPADRAO
                     DM.SQLTemplate.SQL.Add('0,') ;//PRVDN2CONVTAXA
                     DM.SQLTemplate.SQL.Add(IntToStr(Sequencial) + ',') ;//Sequencial
                     DM.SQLTemplate.SQL.Add('"N",') ;{PRVDCIMPORT}
                     DM.SQLTemplate.SQL.Add('"N",') ;{PRVDCMARCADO}
                     DM.SQLTemplate.SQL.Add('"'+DataHoraPedido+'",') ;{DAtaHora Venda}
                     DM.SQLTemplate.SQL.Add('"N",') ;{PDVCPRECONCLU}
                     if CodMesa > 0 then
                       DM.SQLTemplate.SQL.Add(IntToStr(CodMesa)+',') {MESA}
                     else
                       DM.SQLTemplate.SQL.Add('0,') ; {0}
                     DM.SQLTemplate.SQL.Add(IntToStr(CodConta)+','); {CONTAICOD}
                     DM.SQLTemplate.SQL.Add('"'+OrigemVenda+'",');   {ORIGEM DA VENDA}
                     DM.SQLTemplate.SQL.Add(EmpresaPadrao+',');      {EMPRICOD}
                     DM.SQLTemplate.SQL.Add('"AGUARDANDO",');        {SITUACAO}
                     DM.SQLTemplate.SQL.Add(intToStr(DM.DateTimeToUNIXTime(Now))+',');      {DATA_PEDIDO}
                     if ckLevarCasa.Checked then
                       DM.SQLTemplate.SQL.Add('"S")') {CUPOCLEVAR}
                     else
                       DM.SQLTemplate.SQL.Add('"N")');

                     try
                       DM.SQLTemplate.ExecSQL ;
                       Gravou := true ;
                     except
                       {Inc(ProxCod) ; }
                       Gravou := False;
                     end ;
                   end ;


                 // Salvar os itens na Prevenda correspondente a Conta
                 DM.SQLPreVendaItem2.Close;
                 DM.SQLPreVendaItem2.Open;
                 SQLItensVendaTemp.First ;
                 while not SQLItensVendaTemp.EOF do
                   begin
                     DM.SQLPreVendaItem2.Append ;
                     DM.SQLPreVendaItem2TERMICOD.Value           := SQLItensVendaTempTERMICOD.Value ;
                     DM.SQLPreVendaItem2PRVDICOD.Value           := ProxCod ;
                     DM.SQLPreVendaItem2PVITIPOS.Value           := SQLItensVendaTempNUMITEM.Value ;
                     DM.SQLPreVendaItem2PRODICOD.Value           := SQLItensVendaTempCODIGO.Value ;
                     DM.SQLPreVendaItem2DESCRICAO.Value          := SQLItensVendaTempDESCRICAO.Value;
                     DM.SQLPreVendaItem2PVITTOBS.Value           := SQLItensVendaTempDESCRICAOTEC.Value;
                     DM.SQLPreVendaItem2PVITN3QTD.Value          := SQLItensVendaTempQUANTIDADE.Value ;
                     DM.SQLPreVendaItem2PVITN3QTDTROCA.Value     := 0;
                     DM.SQLPreVendaItem2PVITN3VLRUNIT.Value      := SQLItensVendaTempVLRUNITBRUT.Value ;
                     DM.SQLPreVendaItem2PVITN3VLRCUSTUNIT.Value  := 0 ;
                     DM.SQLPreVendaItem2PVITN2DESC.Value         := SQLItensVendaTempVLRDESC.Value ;
                     DM.SQLPreVendaItem2VENDICOD.Value           := VendedorVenda ;
                     DM.SQLPreVendaItem2PVITN3VLRUNITLUCR.Value  := 0 ;
                     DM.SQLPreVendaItem2PVITCSTATUS.Value        := 'A' ;
                     DM.SQLPreVendaItem2PVITN2ICMSALIQ.Value     := 0 ;
                     DM.SQLPreVendaItem2PRODA60NROSERIE.AsString := SQLItensVendaTempNROSERIE.AsString;
                     DM.SQLPreVendaItem2SITUACAO.Value           := 'AGUARDANDO';
                     DM.SQLPreVendaItem2DATA_PEDIDO.Value        := DM.DateTimeToUNIXTime(now);
                     DM.SQLPreVendaItem2COZINHA.Value            := uppercase(SQLLocate('PRODUTO', 'PRODICOD', 'PRODA30COZINHA', SQLItensVendaTempCODIGO.AsString));

                     DM.SQLPreVendaItem2BORDA01.Value            := SQLItensVendaTempBORDA01.Value;
                     DM.SQLPreVendaItem2BORDA02.Value            := SQLItensVendaTempBORDA02.Value;
                     DM.SQLPreVendaItem2BORDA03.Value            := SQLItensVendaTempBORDA03.Value;

                     DM.SQLPreVendaItem2SABOR01.Value            := SQLItensVendaTempSABOR01.Value;
                     DM.SQLPreVendaItem2SABOR02.Value            := SQLItensVendaTempSABOR02.Value;
                     DM.SQLPreVendaItem2SABOR03.Value            := SQLItensVendaTempSABOR03.Value;
                     DM.SQLPreVendaItem2SABOR04.Value            := SQLItensVendaTempSABOR04.Value;
                     DM.SQLPreVendaItem2SABOR05.Value            := SQLItensVendaTempSABOR05.Value;
                     DM.SQLPreVendaItem2SABOR06.Value            := SQLItensVendaTempSABOR06.Value;

                     DM.SQLPreVendaItem2.Post;
                     SQLItensVendaTemp.Next;
                   end ;

                 // TOTALIZA A PREVENDA
                 if SQLItensVendaTemp.RecordCount > 0 then
                   begin
                     DM.SQLTemplate.Close;
                     DM.SQLTemplate.SQL.Clear;
                     DM.SQLTemplate.SQL.Add('Update PREVENDA');
                     if ClienteCadastro <> '' then
                       DM.SQLTemplate.SQL.Add('Set PRVDN2TOTITENS = PRVDN2TOTITENS + '+ConvFloatToStr(ValorSubTotal)+', CLIEA13ID = "'+ClienteCadastro+'"')
                     else
                       DM.SQLTemplate.SQL.Add('Set PRVDN2TOTITENS = PRVDN2TOTITENS + '+ConvFloatToStr(ValorSubTotal));
                     DM.SQLTemplate.SQL.Add('  ,TOTAL_ITENS='+IntToStr(SQLItensVendaTemp.RecordCount)+' , PDVCPRECONCLU="S", PRVDCIMPRESSO="N"  Where');
                     DM.SQLTemplate.SQL.Add('TERMICOD = ' + SQLItensVendaTempTERMICOD.AsString + ' And ');
                     DM.SQLTemplate.SQL.Add('PRVDICOD = ' + IntToStr(ProxCod));
                     DM.SQLTemplate.Prepare;
                     DM.SQLTemplate.ExecSQL;
                   end;

                 // Atualiza Saldo do Cliente, Ver melhor essa rotina
                 if (CodConta>0) then
                   begin
                     DM.SQLTemplate.Close;
                     DM.SQLTemplate.SQL.Clear;
                     DM.SQLTemplate.SQL.Add('Update CLIENTE');
                     DM.SQLTemplate.SQL.Add('Set CLIEN2LIMITECRED = CLIEN2LIMITECRED - '+ConvFloatToStr(ValorSubTotal));
                     DM.SQLTemplate.SQL.Add('Where');
                     DM.SQLTemplate.SQL.Add('CLIEA13ID = "' + ClienteVenda + '"');
                     DM.SQLTemplate.ExecSQL;
                  end;

                 // Atualizar info da Mesa
                 if CodMesa > 0 then
                   begin
                     DM.SQLTemplate.Close;
                     DM.SQLTemplate.SQL.Clear;
                     DM.SQLTemplate.SQL.Add('Select Sum(PRVDN2TOTITENS) from PREVENDA');
                     DM.SQLTemplate.SQL.Add('Where PRVDCIMPORT = "N" and PDVCPreConclu = "S" and MESAICOD = ' + IntToStr(CodMesa));
                     DM.SQLTemplate.Open;

                     dm.SQLMesaStatus.Edit;
                     dm.SQLMesaStatusMESADULTPED.Value    := Now;
                     dm.SQLMesaStatusMESACSTATUS.Value    := 'P';
                     dm.SQLMesaStatusMESAN3VLRTOTAL.Value := dm.SQLTemplate.fieldbyname('SUM').Value;
                     dm.SQLMesaStatus.Post;
                     DM.SQLTemplate.Close;
                   end;

                 //IMPRIMIR P/COZINHA APENAS OS NOVOS PRODUTOS SOLICITADOS PELO CLIENTE
                 if (DM.SQLTerminalAtivoTERMCIMPPREVENDA.AsString = 'S') then
                   begin
                     try DM.TblTicketPreVendaCab.Close         except Application.ProcessMessages end;
                     try DM.TblTicketPreVendaCab.DeleteTable   except Application.ProcessMessages end ;
                     try DM.TblTicketPreVendaCab.CreateTable   except Application.ProcessMessages end ;
                     try DM.TblTicketPreVendaCab.Open          except Application.ProcessMessages end ;
                     while not DM.TblTicketPreVendaCab.eof do
                       DM.TblTicketPreVendaCab.delete;

                     try DM.TblTicketPreVendaItem.Close        except Application.ProcessMessages end ;
                     try DM.TblTicketPreVendaItem.DeleteTable  except Application.ProcessMessages end ;
                     try DM.TblTicketPreVendaItem.CreateTable  except Application.ProcessMessages end ;
                     try DM.TblTicketPreVendaItem.Open         except Application.ProcessMessages end ;
                     while not DM.TblTicketPreVendaItem.eof do
                       DM.TblTicketPreVendaItem.delete;

                     try DM.TblTicketPreVendaFin.Close        except Application.ProcessMessages end ;
                     try DM.TblTicketPreVendaFin.DeleteTable  except Application.ProcessMessages end ;
                     try DM.TblTicketPreVendaFin.CreateTable  except Application.ProcessMessages end ;
                     try DM.TblTicketPreVendaFin.Open         except Application.ProcessMessages end ;
                     while not DM.TblTicketPreVendaFin.eof do
                       DM.TblTicketPreVendaFin.delete;

                     // Grava Cab do Ticket
                     DM.TblTicketPreVendaCab.Append ;
                     DM.TblTicketPreVendaCabTicketNumero.AsString          := FormatFloat('000000000000', ProxCod);
                     DM.TblTicketPreVendaCabTERMICOD.AsString              := SQLItensVendaTempTERMICOD.AsString ;
                     DM.TblTicketPreVendaCabNomeEmpresa.Value              := EmpresaAtualNome;
                     DM.TblTicketPreVendaCabFoneEmpresa.Value              := DM.SQLEmpresaEMPRA20FONE.Value;
                     DM.TblTicketPreVendaCabNomeClienteVenda.AsString      := NomeClienteVenda;
                     DM.TblTicketPreVendaCabPRVDICOD.AsInteger             := ProxCod ;
                     DM.TblTicketPreVendaCabMESACODIGO.Value               := CodMesa ;
                     DM.TblTicketPreVendaCabCONTACODIGO.Value              := CodConta ;
                     DM.TblTicketPreVendaCabSequencial.Value               := Sequencial ;
                     DM.TblTicketPreVendaCabTipoVenda.Value                := 'Mesa' ;
                     DM.TblTicketPreVendaCabDataEmissao.AsString           := DataHoraPedido ;
                     DM.TblTicketPreVendaCabTotalNominal.Value             := ValorSubTotal ;
                     DM.TblTicketPreVendaCabTotalGeral.Value               := ValorSubTotal ;
                     DM.TblTicketPreVendaCabDesconto.Value                 := 0 ;
                     try
                       DM.TblTicketPreVendaCabVendedor.Value := SQLLocate('VENDEDOR', 'VENDICOD', 'VENDA60NOME', inttostr(VendedorVenda));
                     except
                       application.ProcessMessages;
                     end;

                     if ckLevarCasa.Checked then
                       DM.TblTicketPreVendaCabLevarCasa.value := 'S' ;
                     if ckBusca.Checked then
                       DM.TblTicketPreVendaCabBusca.value     := 'S' ;

                     DM.TblTicketPreVendaCab.Post;
                     // Grava Itens do Ticket
                     SQLItensVendaTemp.First ;
                     while not SQLItensVendaTemp.EOF do
                       begin
                         DM.TblTicketPreVendaItem.Append ;
                         DM.TblTicketPreVendaItemCodigo.Value        := SQLItensVendaTempCODIGO.Value;
                         DM.TblTicketPreVendaItemDescricao.Value     := SQLItensVendaTempDESCRICAO.Value;
                         DM.TblTicketPreVendaItemComplemento.Value   := SQLItensVendaTempDESCRICAOTEC.Value ;
                         DM.TblTicketPreVendaItemImpCozinha.Value    := SQLLocate('PRODUTO', 'PRODICOD', 'PRODCIMPCOZINHA', SQLItensVendaTempCODIGO.AsString) ;
                         DM.TblTicketPreVendaItemImpVale.Value       := SQLLocate('PRODUTO', 'PRODICOD', 'PRODCIMPVALE', SQLItensVendaTempCODIGO.AsString) ;
                         DM.TblTicketPreVendaItemPRODA30COZINHA.Value:= uppercase(SQLLocate('PRODUTO', 'PRODICOD', 'PRODA30COZINHA', SQLItensVendaTempCODIGO.AsString)) ;
                         DM.TblTicketPreVendaItemQuantidade.Value    := SQLItensVendaTempQUANTIDADE.Value ;
                         DM.TblTicketPreVendaItemValorUnitario.Value := SQLItensVendaTempVLRUNITBRUT.Value ;
                         DM.TblTicketPreVendaItemValorTotal.Value    := (SQLItensVendaTempVLRUNITBRUT.Value * SQLItensVendaTempQUANTIDADE.Value) - SQLItensVendaTempVLRDESC.Value;
                         DM.TblTicketPreVendaItemDesconto.Value      := SQLItensVendaTempVLRDESC.Value;
                         DM.TblTicketPreVendaItemTroca.Value         := 'N';

                         DM.TblTicketPreVendaItemBORDA01.Value       := SQLItensVendaTempBORDA01.Value;
                         DM.TblTicketPreVendaItemBORDA02.Value       := SQLItensVendaTempBORDA02.Value;
                         DM.TblTicketPreVendaItemBORDA03.Value       := SQLItensVendaTempBORDA03.Value;

                         DM.TblTicketPreVendaItemSABOR01.Value       := SQLItensVendaTempSABOR01.Value;
                         DM.TblTicketPreVendaItemSABOR02.Value       := SQLItensVendaTempSABOR02.Value;
                         DM.TblTicketPreVendaItemSABOR03.Value       := SQLItensVendaTempSABOR03.Value;
                         DM.TblTicketPreVendaItemSABOR04.Value       := SQLItensVendaTempSABOR04.Value;
                         DM.TblTicketPreVendaItemSABOR05.Value       := SQLItensVendaTempSABOR05.Value;
                         DM.TblTicketPreVendaItemSABOR06.Value       := SQLItensVendaTempSABOR06.Value;
                         DM.TblTicketPreVendaItem.Post ;
                         SQLItensVendaTemp.Next ;
                       end;
                     SQLItensVendaTemp.First ;

                     if FileExists('IMPRESSAOCOZINHA.EXE') then
                       WinExec(Pchar('IMPRESSAOCOZINHA.EXE'),sw_Show);
                     if FileExists('VALEBEBIDA.EXE') then
                       WinExec(Pchar('VALEBEBIDA.EXE'),sw_Show);
                   end;

               {  CodMesa := 0; CodConta := 0;
                 TerminalModo := 'C';
                 OrigemVenda  := 'C'; }

                 CancelarVenda ; // Apenas pra limpar a tab.Temp e voltar pra Caixa Livre
                 AtualizaStatusMesas;

                 EstadoPDVChk := AguardandoNovaVenda ;
                 PreparaEstadoBalcao(EstadoPDVChk) ;
                 EntradaDados.Clear ;
               end
             else
               begin
                 FormTelaFechamentoVenda.ShowModal ;
                 if ImpCupomAutomatico then
                   LblNomeSistemaClick(Sender);
                 ImpCupomAutomatico := False;
               end;

             exit ;
           end ;
     VK_F4:begin//CANCELAMENTO DE ITENS
             //ESTE TESTE FOI COLOCADO PARA NÃO ENTRAR NESTA ROTINA QUANDO FOR
             //TECLADO Alt+F4 para finalizar PDV
             if ssAlt in Shift then
               exit ;

             if SQLItensVendaTemp.RecordCount = 0 then
               exit ;

             if (EstadoPDVChk <> InformandoItens) then
             begin
               InformaG('O cancelamento só pode ser aplicado quando o sistema está solicitando itens!') ;
               EntradaDados.SelectAll ;
               exit ;
             end ;

             if DM.SQLUsuario.Locate('USUAICOD',UsuarioCorrente,[]) then
               if DM.SQLUsuario.FieldByName('USUACCANCVENDA').AsString <> 'S' then
                 if Pergunta('SIM','Você não tem permissão para cancelar item. Deseja Informar Outro Usuário?') then
                   begin
                     RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACCANCVENDA',RetornoUser);
                     if RetornoCampoUsuario <> 'S' then
                       begin
                         EntradaDados.SelectAll ;
                         Exit;
                       end;
                   end
                 else
                   begin
                     EntradaDados.SelectAll ;
                     Exit;
                   end;

             EstadoPDVChkAnt := EstadoPDVChk ;
             EstadoPDVChk    := CancelandoItem ;
             PreparaEstadoBalcao(EstadoPDVChk) ;
             if EstadoPDVChkAnt = InformandoItens then
               begin
                 SQLItensVendaTemp.Last ;
                 EntradaDados.Text := SQLItensVendaTempNUMITEM.AsString ;
               end ;

             EntradaDados.SelectAll ;
           end ;
     VK_F5:begin // Tele-Entrega
             {Limpa Taxa Tele}
             CodMesa := 0; CodConta := 0 ;
             ckLevarCasa.Checked    := false;
             ckBusca.Checked        := false;
             EditTxTele.Text := '';
             EditTxTele.Update;

             if TerminalModo = 'C' then
             begin
               TestaStatusCaixa ;
               if VerCaixa then
                 exit ;
             end ;

             LblNomeSistema.Caption := 'EM VENDA TELE...';
             LblNomeSistema.Update;

             OrigemVenda           := 'TELE';
             TerminalModo          := 'TELE';
             TemProdutoSemSubsTrib := False;
             TemProdutoComSubsTrib := False;
             GridItens.Options     := [dgTitles,dgCancelOnExit,dgIndicator];
             CodigoAntigoCupom     := '';
             SaldoEstoqueAtual     := 0;
             ItemCancelado         := 0;
             if SQLItensVendaTemp.RecordCount > 0 then
               begin
                 SQLItensVendaTemp.Last;
                 NroUltItem := SQLItensVendaTempNUMITEM.Value;
                 SQLItensVendaTemp.First;
               end
             else
               NroUltItem          := 0;

             if EstadoPDVChk = InformandoItens then
             begin
               InformaG('Esta venda já foi iniciada!') ;
               EntradaDados.SelectAll ;
               exit ;
             end ;

             if (DM.SQLConfigVendaCFVEIQTDPADRPDV.Value > 0) then
               EditQtde.Text := DM.SQLConfigVendaCFVEIQTDPADRPDV.AsString
             else
               EditQtde.Value := 0;

             AlterarUsuario  := false ;

             TipoVenda        := 0  ;

             CapturaCodigosIniciais ;

             LblInstrucoes.Caption := '' ;
             LblInstrucoes.Refresh ;

             LimparVariaveis ;

             BtnF3.Visible := True;
             BtnF4.Visible := True;
             BtnF2.Visible := False;
             BtnF5.Visible := False;
             BtnF6.Visible := False;

             {Serve para Quitar as vendas de tele sem passar pela prevenda. Ex.Xis Show Bola}
             if TeleQuitado = 'S' then
               ImportandoPreVenda := true;

             GravaPrevendaSemFinanceiro := False;
             NroCupomFiscal := '' ;
             SolicitarPreco := False;
             SolicitarPrecoQDeveriaSerVendido := False;
             // Solicita preço de produto automaticamente
             if (Dm.SQLConfigVendaCFVECPEDEVLRPRODUTO.AsString = 'S') and (not ImportandoPreVenda) then
               SolicitarPreco := True;
             if (Dm.SQLConfigVendaCFVECINFVLRDEVCVEN.AsString = 'S') and (not ImportandoPreVenda) then
               SolicitarPrecoQDeveriaSerVendido := True;

             PedidosImportados := '' ;
             ValorItem := 0 ;

             CriaFormulario(TFormCadastroClienteRestaurante, 'FormCadastroClienteRestaurante', False, True, False, '');

             EstadoPDVChk := InformandoItens ;
             PreparaEstadoBalcao(EstadoPDVChk) ;
           end ;
     VK_F6:begin // Venda nas Mesas ou por Conta

             CapturaCodigosIniciais ;
             LimparVariaveis ;

             {Limpa Taxa Tele}
             EditTxTele.Text := '';
             EditTxTele.Update;
             CodMesa := 0; CodConta := 0; VendPreVenda := 0;
             ckLevarCasa.Checked    := false;
             ckBusca.Checked        := false;

             if TerminalModo = 'C' then
             begin
               TestaStatusCaixa ;
               if VerCaixa then
                 exit ;
             end ;

             LblNomeSistema.Caption := 'EM PEDIDO...';
             LblNomeSistema.Update;

             {Alimenta o Atendente da Prevenda}
             VendedorVenda := 1;

             {Testa se nao tem mesa cadastrada, nem pergunta qual será a mesa}
             dm.SQLTemplate.Close;
             dm.SQLTemplate.SQL.Clear;
             dm.SQLTemplate.SQL.Text := 'Select * from Mesa';
             dm.SQLTemplate.Open;
             if dm.SQLTemplate.IsEmpty then
               begin
                 {Se nao tiver mesas pede apenas o Nro Comanda}
                 Application.CreateForm(TFormTelaContaCodigo,FormTelaContaCodigo);
                 FormTelaContaCodigo.ShowModal;
                 if FormTelaContaCodigo.ModalResult = MrOK then
                   CodConta := FormTelaContaCodigo.EditCodComanda.AsInteger;
               end
             else
               begin
                 {Se tiver mesas pede Mesa o Nro Comanda}
                 AtualizaStatusMesas;
                 PageControlPrincipal.ActivePage := TabMesas;

                 Application.CreateForm(TFormTelaMesaCodigo,FormTelaMesaCodigo);
                 FormTelaMesaCodigo.ShowModal;
                 if FormTelaMesaCodigo.ModalResult = MrOK then
                   begin
                     if FormTelaMesaCodigo.EditCodMesa.Value > 0 then
                       CodMesa := FormTelaMesaCodigo.EditCodMesa.AsInteger;

                //     if (FormTelaMesaCodigo.EditCodMesa.Value > 0) and (FormTelaMesaCodigo.EditCodComanda.Value = 0) then
                //       CodConta := FormTelaMesaCodigo.EditCodMesa.AsInteger;

                     if FormTelaMesaCodigo.EditCodComanda.Value > 0 then
                       CodConta := FormTelaMesaCodigo.EditCodComanda.AsInteger;

                     if FormTelaMesaCodigo.EditVendedorCodigo.text <> '' then
                       VendedorVenda := strToInt(FormTelaMesaCodigo.EditVendedorCodigo.text);

                     if (FormTelaMesaCodigo.EditCodMesa.Value = 0) and (FormTelaMesaCodigo.EditCodComanda.Value = 0) then
                       begin
                         EstadoPDVChk := AguardandoNovaVenda ;
                         PreparaEstadoBalcao(EstadoPDVChk) ;
                         Exit;
                       end;
                   end
                 else
                   begin
                     EstadoPDVChk := AguardandoNovaVenda ;
                     PreparaEstadoBalcao(EstadoPDVChk) ;
                     Exit;
                   end;
               end;

             {Lança Nova Conta}

             // Testa se Usa CartaoConsumo, se sim pedir numero do cartao.
             if FileExists('CartaoConsumo.txt') then
               begin
                 Application.CreateForm(TFormTelaContaCodigo,FormTelaContaCodigo);
                 FormTelaContaCodigo.ShowModal;
                 if FormTelaContaCodigo.ModalResult = MrOK then
                   begin
                     CodConta := FormTelaContaCodigo.EditCodComanda.AsInteger;
                     if CodConta > 0 then
                       begin
                         EstadoPDVChk := AguardandoNovaVenda ;
                         PreparaEstadoBalcao(EstadoPDVChk) ;
                         LblInstrucoes.Caption := 'CAIXA LIVRE';
                         LblInstrucoes.Update;
                         Exit;
                       end;
                   end;
               end;

            { if CodConta = 0 then
               begin
                 ShowMessage('A Conta Informada é Inválida! Operação Cancelada');
                 EstadoPDVChk := AguardandoNovaVenda ;
                 PreparaEstadoBalcao(EstadoPDVChk) ;
                 LblInstrucoes.Caption := 'CAIXA LIVRE';
                 LblInstrucoes.Update;
                 Exit;
               end;  }

             BtnF3.Visible := True;
             BtnF4.Visible := True;
             BtnF2.Visible := False;
             BtnF5.Visible := False;
             BtnF6.Visible := False;

             NroUltItem := 0;

             TerminalModo  := 'MESA';
             OrigemVenda   := 'MESA';
             { Adilson Verificar essa variavel => OrigemVenda   := 'Mesa';}

             // Nova PreVenda de Mesas
             // Identificar o Cliente pelo nome caso nao use o Cartao Consumo
             if FileExists('CartaoConsumo.txt') then
               begin
                 ClienteVenda     := SQLLocate('CLIENTE','CLIEA35NROCARTCRED','CLIEA13ID','"'+IntToStr(CodConta)+'"');
                 NomeClienteVenda := SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','"'+ClienteVenda+'"');
                 EditSaldoCliente.Text := SQLLocate('CLIENTE','CLIEA13ID','CLIEN2LIMITECRED','"'+ClienteVenda+'"');
                 EditSaldoCliente.Update;
               end
             else
               begin
                 NomeClienteVenda := '';
                 if FileExists('SolicitaCliente.txt') then
                   begin
                     try
                       NomeClienteVenda := InputBox('Atenção!','Informe o Nome do Cliente','');
                       NomeClienteVenda := UpperCase(NomeClienteVenda);
                     except
                       Application.ProcessMessages;
                     end;
                   end;
               end;

             // coloquei esse teste pra ficar igual a funcao dos tablets
             if (NomeClienteVenda = '') and (CodMesa>0) and (CodConta>0) then
               NomeClienteVenda := 'CONSUMO MESA/COMANDA '+ inttoStr(CodMesa)+'/'+inttoStr(CodConta);
             if (NomeClienteVenda = '') and (CodMesa=0) and (CodConta>0) then
               NomeClienteVenda := 'CONSUMO COMANDA '+inttoStr(CodConta);

             TemProdutoSemSubsTrib := False;
             TemProdutoComSubsTrib := False;
             GridItens.Options     := [dgTitles,dgCancelOnExit,dgIndicator];
             CodigoAntigoCupom     := '';
             SaldoEstoqueAtual     := 0;
             ItemCancelado         := 0;
             if SQLItensVendaTemp.RecordCount > 0 then
               begin
                 SQLItensVendaTemp.Last;
                 NroUltItem := SQLItensVendaTempNUMITEM.Value;
                 SQLItensVendaTemp.First;
               end;

             if EstadoPDVChk = InformandoItens then
             begin
               InformaG('Esta venda já foi iniciada!') ;
               EntradaDados.SelectAll ;
               exit ;
             end ;

             if (DM.SQLConfigVendaCFVEIQTDPADRPDV.Value > 0) then
               EditQtde.Text := DM.SQLConfigVendaCFVEIQTDPADRPDV.AsString
             else
               EditQtde.Value := 0;

             AlterarUsuario  := false ;

             TipoVenda        := 0  ;

             LblInstrucoes.Caption := '' ;
             LblInstrucoes.Refresh ;

             if CodMesa > 0 then
               begin
                 EditMesaCodigo.Text := FormatFloat('###000',CodMesa);
                 EditMesaCodigo.Update;
               end;

             if CodConta > 0 then
               begin
                 EditContaCodigo.Text := FormatFloat('#####00000',CodConta);
                 EditContaCodigo.Update;
               end;

             EditNomeCli.Text := NomeClienteVenda;
             EditNomeCli.Update;

             NroCupomFiscal := '000000' ;

             SolicitarPreco := False;
             SolicitarPrecoQDeveriaSerVendido := False;

             PedidosImportados := '' ;
             ValorItem := 0 ;

             EstadoPDVChk := InformandoItens ;
             PreparaEstadoBalcao(EstadoPDVChk) ;
           end ;
     VK_F7:begin//quitar por comanda
             btnf7.click;
           end ;
     VK_F8:begin//RECEBIMENTO DE CREDIÁRIO
             if TerminalModo = 'P' then
               begin
                 InformaG('Não é possível receber prestações em um terminal que está operando como Pré-Venda!') ;
                 EntradaDados.SelectAll ;
                 Exit ;
               end ;

           {  if TerminalModo = 'C' then
               begin
                 TestaStatusCaixa ;
                 if VerCaixa then
                   exit ;
               end ; }

             if EstadoPDVChk = InformandoItens then
               begin
                 InformaG('O recebimento de crediário só pode ser feito quando o sistema estiver aguardando nova venda!') ;
                 EntradaDados.SelectAll ;
                 exit ;
               end ;

             Application.CreateForm(TFormTelaRecebimentoCrediario, FormTelaRecebimentoCrediario) ;
             FormTelaRecebimentoCrediario.ShowModal ;
           end ;
     VK_F9:begin//IMPORTAR ATENDIMENTO
             if EstadoPDVChk = InformandoItens then
               begin
                 InformaG('O sistema deve estar AGUARDANDO NOVA VENDA para poder importar uma Pré-Venda!') ;
                 EntradaDados.SelectAll ;
                 Exit ;
               end ;
             if TerminalModo = 'C' then
               begin

                { TestaStatusCaixa ;
                 if VerCaixa then
                   exit ;  }

                 vImportarPrevenda  := True ;
                 ContinuarPreVenda  := False ;
                 ReativarPreVenda   := False ;
                 CodMesa := 0;

                 if EntradaDados.Text <> '' then
                   NomeClienteVenda := EntradaDados.Text
                 else
                   NomeClienteVenda := '';
                 Application.CreateForm(TFormTelaImportarPreVenda, FormTelaImportarPreVenda) ;
                 FormTelaImportarPreVenda.ShowModal ;
                 AtualizaStatusMesas;
               end
             else
               begin
                 InformaG('Não é possível importar uma Pré-Venda em um terminal que está operando como Pré-Venda ou Tele-Entrega!') ;
                 EntradaDados.SelectAll ;
                 Exit ;
               end ;
           end ;
    VK_F10:begin
             CriaFormulario(TFormCadastroCupom,
                            'FormCadastroCupom',
                            False,
                            False,
                            False,
                            '');
           end ;
    VK_F11:begin
             CriaFormulario(TFormCadastroClienteRestaurante,
                            'FormCadastroClienteRestaurante',
                            False,
                            True,
                            False,
                            '');
           end ;
    VK_F12:begin
             if (TerminalModo <> 'C') then
               begin
                 InformaG('O sistema não pode movimentar caixa em um terminal que está operando como Pré-Venda ou Tele-Entrega!') ;
                 EntradaDados.SelectAll ;
                 Exit ;
               end ;

             if EstadoPDVChk = InformandoItens then
               begin
                 InformaG('O sistema não pode movimentar caixa enquanto está solicitando ítens!') ;
                 EntradaDados.SelectAll ;
                 Exit ;
               end ;

             Application.CreateForm(TFormTelaMovimentoCaixa, FormTelaMovimentoCaixa) ;
             Dm.SQLTerminalAtivo.Close;
             Dm.SQLTerminalAtivo.Open;
             FormTelaMovimentoCaixa.EditData.Date := Date;
             FormTelaMovimentoCaixa.ShowModal ;
             EntradaDados.SetFocus;
             keybd_event(27,27,0,0);
           end ;
  else
    if ssCtrl in Shift then
      begin
        case Upcase(Char(Key)) of
          'A':begin
                // Chama Tela Transf. Mesa
                Application.CreateForm(TFormTelaTransfContas, FormTelaTransfContas) ;
                FormTelaTransfContas.ShowModal;
              end ;
          // Mostra o Lucro da Venda para avaliar se pode ser dado algum desconto adicional
          'B':begin
                {Livre}
              end ;
          //LIVRE
          'C':begin
                EntradaDados.SetFocus;
                Application.CreateForm(TFormTelaRecargaCartao, FormTelaRecargaCartao) ;
                FormTelaRecargaCartao.ShowModal;
              end ;
          //DESTRAVAR IMPRESSORA
          'D':begin
                RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUCDESTRIMPFISC',RetornoUser);
                if RetornoCampoUsuario = 'S' then
                  begin
                    if (ECFAtual <> '') and (not FileExists('Confirma.txt')) then
                      begin
                        if ECFAtual = 'URANO_1EFC' then
                          begin
                            EstadoPDVChkAnt := EstadoFechVenda;
                            EstadoFechVenda := 'ECF';
                            CancelarCupomFiscal(ECFAtual,PortaECFAtual);
                            EstadoFechVenda := EstadoPDVChkAnt;
                          end;
                        if CancelarCupomFiscal(ECFAtual,PortaECFAtual) then
                          Exit;
                        if Leitura_X(ECFAtual,PortaECFAtual) then
                          Exit;
                        if FechamentoRelatorioGerencial(ECFAtual,PortaECFAtual) then
                          Exit;
                        if FecharCNFV(ECFAtual,PortaECFAtual) then
                          Exit;
                        if FecharCNFNV(ECFAtual,PortaECFAtual) then
                          Exit;
                      end;
                  end;
              end ;
          'F':begin
                EntradaDados.SetFocus;
                Application.CreateForm(TFormRelatorioCupomEmitido, FormRelatorioCupomEmitido) ;
                FormRelatorioCupomEmitido.ShowModal;
              end ;
          //ABRIR GAVETA
          'G':begin
                if DM.SQLUsuario.Locate('USUAICOD',UsuarioCorrente,[]) then
                  if DM.SQLUsuario.FieldByName('USUACBLOQCTRLG').AsString = 'S' then
                    begin
                      if Pergunta('SIM','Você não tem permissão para abrir a gaveta manualmente. Deseja Informar Outro Usuário?') then
                        begin
                          RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACBLOQCTRLG',RetornoUser);
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
                                            if AbrirGaveta(DM.SQLECFECFA30MODELO.AsString,PortaECFAtual) then
                                            //         DM.SQLECF.Last;
                                          except
                                            Application.ProcessMessages;
                                          end;
                                          DM.SQLECF.Next;
                                        end;
                                    end;
                                  if (PortaECFAtual <> '') and (ECFAtual <> '') then
                                    AbrirGaveta(ECFAtual, PortaECFAtual);
                                  if ImpNaoFiscalAtual <> '' then
                                    AbrirGaveta_NAOFISCAL(ImpNaoFiscalAtual,PortaImpNaoFiscalAtual);

                                  if FileExists('GAVETA.EXE') then
                                     WinExec(Pchar('GAVETA.EXE'),sw_Show);

                                end
                              else
                                begin
                                  Informa('Você não tem permissão para abrir a gaveta manualmente');
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
                                if AbrirGaveta(DM.SQLECFECFA30MODELO.AsString,PortaECFAtual) then
                        //          DM.SQLECF.Last;
                              except
                                Application.ProcessMessages;
                              end;
                              DM.SQLECF.Next;
                            end;
                        end;
                        if (PortaECFAtual <> '') and (ECFAtual <> '') then
                          AbrirGaveta(ECFAtual, PortaECFAtual);
                        if ImpNaoFiscalAtual <> '' then
                          AbrirGaveta_NAOFISCAL(ImpNaoFiscalAtual,PortaImpNaoFiscalAtual);
                        if FileExists('GAVETA.EXE') then
                           WinExec(Pchar('GAVETA.EXE'),sw_Show);
                    end;
              end ;
          //livre
          'H':begin
                AtualizaStatusMesas;
              end;
          //LIVRE - antes era pra INFORMAR ITENS DE DEVOLUCAO
          'E':begin
              end ;
          'I':begin
                // Livre
              end ;
          'J':begin
                // Livre
              end ;
          'L':begin
                EditQtde.SetFocus;
              end ;
          'M':begin
                // Consulta de Mesas
                 Application.CreateForm(TFormTelaConsultaMesas, FormTelaConsultaMesas) ;
                 FormTelaConsultaMesas.ShowModal ;
              end ;
          //VER ITENS INCLUIDOS NO CUPOM
          'N':begin
                // Livre
              end ;
          //TROCAR QUANTIDADE
          'Q':begin
                if (EstadoPDVChk = InformandoItens) then
                  ExecutarCtrlQ;
              end ;
          //TROCAR PRECO ITEM
          'P':begin
                if (EstadoPDVChk <> InformandoItens) then
                begin
                  InformaG('A alteração do valor do item só pode aplicada quando o sistema está solicitando itens!') ;
                  EntradaDados.SelectAll ;
                  exit ;
                end ;

                if DM.SQLUsuario.Locate('USUAICOD',UsuarioCorrente,[]) then
                  if DM.SQLUsuario.FieldByName('USUACALTVLRVENDA').AsString <> 'S' then
                    if Pergunta('SIM','Você não tem permissão para trocar o valor do produto! Deseja Informar Outro Usuário?') then
                      begin
                        RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACALTVLRVENDA',RetornoUser);
                        if RetornoCampoUsuario <> 'S' then
                          begin
                            InformaG('Usuário sem poder para alterar o preço durante a venda!') ;
                            EntradaDados.SelectAll ;
                            Exit;
                          end
                      end
                    else
                      Exit;

                SolicitarPreco := true ;
                SolicitarPrecoQDeveriaSerVendido := true ;
                PreparaEstadoBalcao(EstadoPDVChk) ;
              end ;
          'R':begin
                // Relatorio de Fechamento de Caixa
                if DM.SQLUsuario.Locate('USUAICOD',UsuarioCorrente,[]) then
                  if DM.SQLUsuario.FieldByName('USUACPERMRESUCX').AsString <> 'S' then
                    if Pergunta('SIM','Você não tem permissão para ver relatorio de caixa! Deseja Informar Outro Usuário?') then
                      begin
                        RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACPERMRESUCX',RetornoUser);
                        if RetornoCampoUsuario <> 'S' then
                          begin
                            InformaG('Usuário sem poder para ver relatorio de caixa!') ;
                            EntradaDados.SelectAll ;
                            Exit;
                          end
                      end
                    else
                      Exit;
                Application.CreateForm(TFormPrincipalRelatorios, FormPrincipalRelatorios) ;
                FormPrincipalRelatorios.ShowModal ;
              end ;
          'S':begin
                if EstadoPDVChk <> AguardandoNovaVenda then
                begin
                  InformaG('Só é possível sair do ' + Application.Title + ' enquanto está aguardando nova venda!') ;
                  EntradaDados.SelectAll ;
                  Exit ;
                end ;

                Close ;
              end ;

          //TROCA DE TERMINAL
          'T':begin
                {Livre}
              end ;
          //REATIVAR PRE VENDAS
          'U':begin
                {Livre}
              end ;
          //IMPRIMIR CUPOM FISCAL
          'X': begin
                 LblNomeSistemaClick(Sender);
               end;
          //TOTAIS CAIXA ATIVO
          'Z': begin
                 {Livre}
               end ;
          //ABRE FUNÇÕES STARFICHE
          '1' : begin
                  if EstadoPDVChk <> AguardandoNovaVenda then
                    begin
                      InformaG('Só é possível utilizar as funções de cartão de crédito enquanto o sistema estiver aguardando nova venda!');
                      EntradaDados.SetFocus;
                      Exit;
                    end;
                end;
          'O' : begin
                  // Livre
                end;
          '2' : begin
                  // Livre
                end;
        end ;
      end
    else
      begin
        if (ssAlt in Shift) and (EntradaDados.text = '') then
          case Upcase(Char(Key)) of
            // Chama Funcoes Administrativas TEF
            'G' : begin
                    if (ECFAtual = '') then
                      begin
                        InformaG('Não foi encontrada nenhuma impressora fiscal configurada para este terminal!');
                        Exit;
                      end;
                    Application.CreateForm(TFormConsultaProvedor,FormConsultaProvedor);
                    if not SQLProvedorCartao.Active then
                      SQLProvedorCartao.Open;
                    SQLProvedorCartao.Last;
                    if SQLProvedorCartao.RecordCount > 0 then
                      begin
                        FormConsultaProvedor.ComboColetor.ListSource := DsSQLProvedorCartao;
                        FormConsultaProvedor.ShowModal;
                        if FormConsultaProvedor.ModalResult = MrOk then
                          begin
                            Application.Minimize;
                            SendDirectory    := SQLProvedorCartao.FieldByName('PRCATPATHENVIA').AsString;
                            ReceiveDirectory := SQLProvedorCartao.FieldByName('PRCATPATHRECEBE').AsString;
                            if Ativo then
                              begin
                                if SQLProvedorCartaoPRCAA60CARTAO.AsString = 'BANRISUL' then
                                  begin
                                    if TipoOperacao.Administrativa then
                                      RetornoCartao := FuncaoAdministrativa();
                                    if TipoOperacao.ConsultaCheque then
                                      begin
                                        RetornoCartao := LiberaCartao('CHQ','',TipoOperacao.ValorOperacao);
                                      end;
                                    if TipoOperacao.PagamentoContas then
                                      RetornoCartao := LiberaCartao('PAG','',TipoOperacao.ValorOperacao);
                                  end
                                else
                                  RetornoCartao := FuncaoAdministrativa();
                                DadosImpressora.ECFAtual := ECFAtual;
                                DadosImpressora.PortaECFAtual := PortaECFAtual;
                                ImprimeRetorno(RetornoCartao,DadosImpressora,NroViasTEF,True);
                              end
                            else
                              Application.MessageBox(PChar('O Gerenciador Padrão não está ativo!' + #13 +'Impossível estabelecer conexão!'),'Informação',MB_OK + MB_ICONERROR + MB_SETFOREGROUND + MB_SYSTEMMODAL);
                            Application.Restore;
                          end
                        else
                          begin
                            // Se o Result for Cancel nao faz nada...
                          end;
                      end
                    else
                      Application.MessageBox('Nenhum provedor cadastrado! Verifique!','Informação',MB_OK + MB_ICONERROR + MB_SETFOREGROUND + MB_SYSTEMMODAL);
                    SQLProvedorCartao.Close;
                  end;
            {REIMPRIME CUPOM NÃO FISCAL VINCULADO DE TEF}
            'I' : begin
                    Exit;
                    if FileExists(ExtractFilePath(Application.ExeName) + 'NoBreak.txt') then
                      begin
                        DadosImpressora.ECFAtual := ECFAtual;
                        DadosImpressora.PortaECFAtual := PortaECFAtual;
                        RetornoCartao.QtdeLinhas := 1;
                        RetornoCartao.Print := TStringList.Create;
                        RetornoCartao.Print.LoadFromFile(ExtractFilePath(Application.ExeName) + 'NoBreak.txt');
                        ImprimeRetorno(RetornoCartao,DadosImpressora,NroViasTEF,True);
                      end
                    else
                      Application.MessageBox(PChar('Nenhum comprovante TEF foi encontrado para ser reimpresso!'),'Atenção',MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONINFORMATION);
                  end;
            {FUNÇÕES ADMINISTRATIVAS DE TEF}
            'P':begin
                  Application.CreateForm(TFormTelaTiraTeima, FormTelaTiraTeima) ;
                  FormTelaTiraTeima.ShowModal ;
                end;
            'R':begin
                  // Cadastro de Reservas
                  CriaFormulario(TFormCadastroReservaMesa,
                                 'FormCadastroReservaMesa',
                                 False,
                                 True,
                                 False,
                                 '');

                end ;
            'S':begin
                  // Livre
                end;
            'T':begin
                  // Livre
                end ;
          end;
      end;
  end ;
end;

procedure TFormTelaItens.CancelarVenda ;
begin
  LblNomeSistema.Caption := EmpresaAtualNome;
  LblNomeSistema.Update;

  CodMesa      := 0 ;
  CodConta     := 0 ;
  TerminalModo := 'C';
  OrigemVenda  := 'C';
  EditTxTele.Text     := '';
  EditVendedor.text   := '';
  ckLevarCasa.Checked := False;
  ckBusca.Checked     := False;

  FormTelaItens.LimparTabTempItens;
  if (DM.SQLConfigVendaCFVEIQTDPADRPDV.Value > 0) then
    FormTelaItens.EditQtde.Text := DM.SQLConfigVendaCFVEIQTDPADRPDV.AsString
  else
    FormTelaItens.EditQtde.Value := 0;
end ;

procedure TFormTelaItens.CalculaTotal ;
var
  ValorTemp : Double;
begin
  ValorSubTotal  := 0 ;
  ValorTemp      := 0 ;
  TRY
    SQLSubTotal.Close;
    SQLSubTotal.SQL.Clear;
    SQLSubTotal.SQL.Add('Select Sum(VLRTOTAL) as SubTotal from ItensVendaTemp where TERMICOD = ' + inttostr(TerminalAtual) + ' and TROCA <> "S" or TROCA is null');
    SQLSubTotal.Open;
    if SQLSubTotal.FieldByName('SubTotal').Value > 0 then
      ValorTemp := SQLSubTotal.FieldByName('SubTotal').Value;

    ValorSubTotal       := ValorTemp;
    CurSubTotal.Caption := Formatfloat('##0.00',ValorSubTotal);
    CurSubTotal.Update;
  EXCEPT
    Application.ProcessMessages;
    ValorSubTotal  := 0 ;
    CurSubTotal.Caption := FloatToStr(ValorSubTotal);
    CurSubTotal.Update;
  END;
  Application.ProcessMessages;
end ;

procedure TFormTelaItens.TestaStatusCaixa ;
begin
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select * from TERMINAL') ;
  DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
  DM.SQLTemplate.Open ;

  VerCaixa := false;
  TerminalAtualData := DateToStr(Date) ;

  //Testar o Status do Caixa
  if DM.SQLTemplate.FieldByName('TERMCSTATUSCAIXA').Value <> 'A' Then
  begin
    if DM.SQLTemplate.FieldByName('TERMCSTATUSCAIXA').Value = 'F' then
    begin
      InformaG('O Caixa está fechado desde ' + DM.SQLTemplate.FieldByName('TERMDSTATUSCAIXA').AsString + '.');
      TerminalAtualData := DateToStr(Date);
      EntradaDados.SelectAll ;
      VerCaixa := True ;
    end
    else begin
      InformaG('O Caixa nunca foi aberto!');
      EntradaDados.SelectAll ;
      VerCaixa := True ;
    end ;
  end
  else
    if DM.SQLTemplate.FieldByName('TERMDSTATUSCAIXA').Value <> StrToDate(TerminalAtualData) then
    begin
      InformaG('O Caixa não foi fechado em ' + DM.SQLTemplate.FieldByName('TERMDSTATUSCAIXA').AsString);
      EntradaDados.SelectAll ;
      TerminalAtualData := DM.SQLTemplate.FieldByName('TERMDSTATUSCAIXA').AsString ;
      VerCaixa  := True;
    end ;

  if VerCaixa then
  begin
    Application.CreateForm(TFormTelaMovimentoCaixa, FormTelaMovimentoCaixa);
    FormTelaMovimentoCaixa.Caption       := FormTelaMovimentoCaixa.Caption +' [' + DM.SQLTemplate.FieldByName('TERMA60DESCR').Value + ']' ;
    FormTelaMovimentoCaixa.EditData.Text := TerminalAtualData ;
    FormTelaMovimentoCaixa.ShowModal ;
    EntradaDados.SetFocus ;
  end ;
end ;

procedure TFormTelaItens.AtualizaStatusMesas ;
begin
  dm.SQLMesaStatus.Close;
//  dm.SQLMesaStatus.MacroByName('MFiltro').Value  := 'MESACSTATUS<>"F"';
  dm.SQLMesaStatus.MacroByName('MFiltro').Value  := '0=0';
  dm.SQLMesaStatus.Open;
end;

procedure TFormTelaItens.FormActivate(Sender: TObject) ;
begin
  if (ClienteCadastro <> '') and (TerminalModo = 'TELE') then
    begin
      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('Select CLIEA60RAZAOSOC,CLIEA15FONE1,CLIETOBS1,COALESCE(CLIEN3VLRFRETE,0) CLIEN3VLRFRETE From CLIENTE') ;
      DM.SQLTemplate.SQL.Add('Where') ;
      DM.SQLTemplate.SQL.Add('CLIEA13ID = "' + ClienteCadastro + '"') ;
      DM.SQLTemplate.Open ;
      DM.SQLTemplate.First ;
      if not DM.SQLTemplate.EOF then
        begin
          EditNomeCli.Text     := DM.SQLTemplate.FieldByName('CLIEA60RAZAOSOC').AsString ;
          EditFoneCliente.Text := DM.SQLTemplate.FieldByName('CLIEA15FONE1').AsString ;
          ObsCliente           := DM.SQLTemplate.FieldByName('CLIETOBS1').AsString ;
          ValorTele            := DM.SQLTemplate.FieldByName('CLIEN3VLRFRETE').Value ;
          EditTxTele.Text      := FormatFloat('##0.00',ValorTele);
          EditNomeCli.Update;
          EditFoneCliente.Update;
          EditTxTele.Update;
        end;
    end;

  FinalizacaodeVenda := false ;

 { if TerminalModo = 'C' then
    TestaStatusCaixa ; }

  EntradaDados.SetFocus;
end ;

procedure TFormTelaItens.ListaItensEnter(Sender: TObject) ;
begin
  EntradaDados.Setfocus ;
end ;

procedure TFormTelaItens.GridItensEnter(Sender: TObject) ;
begin
//  EntradaDados.Setfocus ;
end ;

procedure TFormTelaItens.PreparaEstadoBalcao(Estado : string) ;
begin
  if EstadoPDVChk = AguardandoNovaVenda then
  begin
    if not SQLItensVendaTemp.Active then
      SQLItensVendaTemp.Open ;

    Entradadados.Clear ;

    LimparVariaveis ;

    LblInstrucoes.Caption    := '' ;

    CalculaTotal;

    GridItens.Options := [dgTitles,dgCancelOnExit];
    if TerminalModo = 'C' then
      LblInstrucoes.Caption := 'CAIXA LIVRE' ;
    if TerminalModo = 'P' then
      LblInstrucoes.Caption := 'ATENDIMENTO LIVRE' ;

    LblInstrucoes.Refresh ;

    if TabInicial = 'TabLogo' then PageControlPrincipal.ActivePage := TabLogo;
    if TabInicial = 'TabProdutos' then PageControlPrincipal.ActivePage := TabProdutos;
    if TabInicial = 'TabMesas' then
      begin
        PageControlPrincipal.ActivePage := TabMesas;
        AtualizaStatusMesas;
      end;

    exit ;
  end ;

  if EstadoPDVChk = InformandoItens then
  begin
    LblInstrucoes.Caption := 'Informe o Produto ou [ESC] Cancelar';

    if SolicitarPreco then
      LblInstrucoes.Caption := 'Produto (C/Vlr Alterado)';

    if (DescItemPerc > 0) or (DescItemVlr > 0) then
      LblInstrucoes.Caption := 'Produto (C/Desconto)';

    if ProcuraProdutoPelaRef08Char then
      LblInstrucoes.Caption := 'Produto pelo CD Barras Especial';

    LblInstrucoes.Refresh;

    LblSubTotal.Visible := true;
    CurSubTotal.Visible := true;

    PageControlPrincipal.ActivePage := TabProdutos;

    exit;
  end;

  if EstadoPDVChk = InformandoItensTroca then
  begin
    LblInstrucoes.Caption := 'Produto para Troca';
    if SolicitarPreco then
      LblInstrucoes.Caption := 'Produto de Troca(C/Vlr Alterado)';

    LblInstrucoes.Refresh;

    LblSubTotal.Visible := true;
    CurSubTotal.Visible := true;
    exit;
  end;

  if EstadoPDVChk = CancelandoItem then
  begin
    LblInstrucoes.Caption := 'Cancelar o Item Nro.';
    LblInstrucoes.Refresh;
    exit;
  end;

  if EstadoPDVChk = DescontoPercItem then
  begin
    LblInstrucoes.Caption := 'Desconto % Prox.Item';
    LblInstrucoes.Refresh;
    EntradaDados.Refresh;
    exit;
  end;

  if EstadoPDVChk = DescontoVlrItem then
  begin
    LblInstrucoes.Caption := 'Desconto Valor Prox.Item';
    LblInstrucoes.Refresh;
    Exit;
  end;

  if EstadoPDVChk = InformandoConvenio then
  begin
    LblInstrucoes.Caption := 'Código do Convenio' ;
    LblInstrucoes.Refresh ;
    exit ;
  end ;
end ;

procedure TFormTelaItens.LimparVariaveis;
begin
  BtnF3.Visible          := False;
  BtnF4.Visible          := False;
  BtnF2.Visible          := True;
  BtnF5.Visible          := True;
  BtnF6.Visible          := True;
  advPainelPizza.Visible := False;
  EditContaCodigo.Text   := '';
  EditMesaCodigo.Text    := '';
  EditSaldoCliente.Text  := '';
  EditNomeCli.Text       := '';
  EditFoneCliente.Text   := '';
  LblCLiente.Caption     := '';
  ClienteVenda           := '';
  ClienteCadastro        := '';
  UsaPrecoVenda          := '';
  ClienteDependente      := '';
  NomeClienteVenda       := '';
  EnderecoClienteVenda   := '';
  CidadeClienteVenda     := '';
  BairroClienteVenda     := '';
  FoneClienteVenda       := '';
  DocumentoClienteVenda  := '';
  OBSImpressaoCupom      := '';
  PlacaCliente           := '';
  KmCliente              := '';
  ObsCupom               := '';
  VendedorVenda          := 0 ;
  PlanoVenda             := 0 ;
  NumerarioVista         := 0 ;
  NumerarioPrazo         := 0 ;
// TermPVImp              := 0 ;
// CodPVImp               := 0 ;
  ConvenioVenda          := 0 ;
  NroOrdemCompraConvenio := 0 ;
  ValorFrete             := 0 ;
  CodMotoboy             := '';
  TipoPadrao             := '';
  DataAniversario        := '';
  ValorTele              := 0 ;
  ProcuraProdutoPelaRef08Char := False;
  GravaPrevendaSemFinanceiro := False;
  ImprimeDadosClienteCupom := DM.SQLTerminalAtivoTERMCIMPRDADINTCUP.Value;

  if not dm.TblCheques.Active then
    dm.TblCheques.Open ;
  dm.TblCheques.First;
  while not dm.TblCheques.eof do
    begin
      dm.TblCheques.delete;
      Application.ProcessMessages;
    end;
end ;

procedure TFormTelaItens.CapturaCodigosIniciais ;
begin
  if TerminalModo = 'C' then
  begin
    //CAPTURAR COD.PROX.CONTASRECEBER P/AGILIZAR FECHAMENTO CUPOM
    if CodProxCntRecTemp = 0 then
    begin
      DM.SQLTemplate.Close;
      DM.SQLTemplate.SQL.Clear;
      DM.SQLTemplate.SQL.Add('select Max(CTRCICOD) as Contador from CONTASRECEBER');
      DM.SQLTemplate.SQL.Add('where  EMPRICOD = ' + EmpresaPadrao);
      DM.SQLTemplate.SQL.Add('and    TERMICOD = ' + IntToStr(TerminalAtual));
      DM.SQLTemplate.Open;
      if DM.SQLTemplate.FieldByName('Contador').Value <> Null then
        CodProxCntRecTemp := DM.SQLTemplate.FieldByName('Contador').Value
      else
        CodProxCntRecTemp := 1;
      //ProxCodContasReceber('GRAVAR', CodProxCntRecTemp) ;
    end;
  end;
end;

function TFormTelaItens.ProxCodContasReceber(Tipo : string ;ProxCntRecTemp : integer) : integer ;
begin
  if Tipo = 'GRAVAR' then
  begin
    DM.SQLProxCodCTRC.Close;
    DM.SQLProxCodCTRC.SQL.Clear;
    DM.SQLProxCodCTRC.SQL.Add('update TERMINAL');
    DM.SQLProxCodCTRC.SQL.Add('set TERMIPROXCODCTRC = ' + IntToStr(ProxCntRecTemp));
    DM.SQLProxCodCTRC.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual));
    DM.SQLProxCodCTRC.ExecSQL;
  end;
  if Tipo = 'RETORNAR' then
  begin
    DM.SQLProxCodCTRC.Close;
    DM.SQLProxCodCTRC.SQL.Clear;
    DM.SQLProxCodCTRC.SQL.Add('selet TERMIPROXCODCTRC from TERMINAL');
    DM.SQLProxCodCTRC.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual));
    DM.SQLProxCodCTRC.Open;
    ProxCodContasReceber := DM.SQLProxCodCTRC.FieldByName('TERMIPROXCODCTRC').AsInteger;
  end;
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

procedure TFormTelaItens.SerialAfterReceive(Sender: TObject; data: String);
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
        end;
    end;
end;

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
  Application.CreateForm(TFormTelaFotoExpandida,FormTelaFotoExpandida);
  FormTelaFotoExpandida.ShowModal;
end;

procedure TFormTelaItens.SQLItensVendaTempNewRecord(DataSet: TDataSet);
begin
  SQLItensVendaTempTERMICOD.Value := TerminalAtual;
end;

procedure TFormTelaItens.LimparTabTempItens;
begin
  SQLItensVendaTemp.Close ;
  try
    SQLItensVendaTemp.DeleteTable ;
    SQLItensVendaTemp.CreateTable ;
  except
    SQLItensVendaTemp.CreateTable ;
  end ;
  SQLItensVendaTemp.Open ;
end;

procedure TFormTelaItens.EditQtdeExit(Sender: TObject);
begin
  if (EditQtde.Value = 0) or (EditQtde.Value = Null) then
    ValorItem := 0;
  QuantProx := EditQtde.Value;
  EntradaDados.SetFocus;
  LblInstrucoes.Caption := LbInstrucoesOld;
  LblInstrucoes.Refresh;
{  PreparaEstadoBalcao(InformandoItens);}
end;

procedure TFormTelaItens.EditQtdeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_Return then
    begin
      if (EditQtde.Value > 0) then
        begin
          if (EntradaDados.Text <> '') then
            begin
              EntradaDados.SetFocus;
              FormTelaItens.EstadoPDVChk  := 'InformandoItens';
              EntradaDadosKeyDown(Sender, Enter, [ssAlt]);
            end
          else
            EntradaDados.SetFocus;
        end
      else
        EntradaDados.SetFocus;
    end;
  if Key = VK_Escape then
    EntradaDados.SetFocus;
end;

procedure TFormTelaItens.EditQtdeEnter(Sender: TObject);
begin
  LbInstrucoesOld := LblInstrucoes.Caption;
  EditQtde.SelectAll;
  LblInstrucoes.Caption := 'Informe a Quantidade...';
  LblInstrucoes.Refresh;
end;

procedure TFormTelaItens.DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
begin
  if dm.SQLMesaStatusVENDICOD.AsString ='' then
    begin
      if dm.SQLMesaStatusMESACSTATUS.Value = 'F' then
        begin
          pteste.Color      := clgreen;
          pteste.Caption    := 'Livre';
        end;
      if dm.SQLMesaStatusMESACSTATUS.Value = 'P' then
        begin
          pteste.Color      := clRed;
          pteste.Caption    := 'em Pedido';
        end;
      if dm.SQLMesaStatusMESACSTATUS.Value = 'E' then
        begin
          pteste.Color      := clYellow;
          pteste.Caption    := 'em Conta';
        end;
      if dm.SQLMesaStatusNOMECLIENTE.Value <> '' then
        pteste.Caption    := dm.SQLMesaStatusNOMECLIENTE.Value;
    end
  else
    begin
      if dm.SQLMesaStatusMESACSTATUS.Value = 'F' then
          pteste.Color      := clgreen;
      if dm.SQLMesaStatusMESACSTATUS.Value = 'P' then
          pteste.Color      := clRed;
      if dm.SQLMesaStatusMESACSTATUS.Value = 'E' then
          pteste.Color      := clYellow;
      pteste.Caption    := SQLLocate('vendedor','vendicod','VENDA60NOME',dm.SQLMesaStatusVENDICOD.AsString);
    end;
  pteste.update;
end;

procedure TFormTelaItens.MnAbrirMesaClick(Sender: TObject);
begin
  dm.SQLMesaStatus.Edit;
  dm.SQLMesaStatusMESACSTATUS.Value        := 'L';  {Mesa Livre}
  dm.SQLMesaStatusMESADABERTURA.Value      := Now;
  dm.SQLMesaStatusMESADULTPED.AsString     := '' ;
  dm.SQLMesaStatusMESADFECHAMENTO.AsString := '' ;
  dm.SQLMesaStatusMESAN3VLRTOTAL.Value     := 0;
  dm.SQLMesaStatusNOMECLIENTE.Value        := '' ;
  dm.SQLMesaStatus.Post;
  EntradaDados.SetFocus;
end;

procedure TFormTelaItens.MnFecharMesaClick(Sender: TObject);
begin
  // Testar se tem alguma Prevenda aberta pra essa mesa antes de Fechar
  DM.SQLTemplate.Close;
  DM.SQLTemplate.SQL.Clear;
  DM.SQLTemplate.SQL.Add('Select CONTAICOD from PREVENDA');
  DM.SQLTemplate.SQL.Add('Where PRVDCIMPORT = "N" and MESAICOD = ' + dm.SQLMesaStatusMESAICOD.AsString);
  DM.SQLTemplate.Open;
  if not DM.SQLTemplate.IsEmpty then
    begin
      ShowMessage('Existem Contas Pendentes para essa Mesa => '+ FormatFloat('###000',dm.SQLMesaStatusMESAICOD.Value));
      while not dm.SQLTemplate.Eof do
        begin
          ShowMessage('Conta => ' + dm.SQLTemplate.fieldbyname('CONTAICOD').AsString);
          dm.SQLTemplate.Next;
        end;
      EntradaDados.SetFocus;
      Exit;
    end;
  dm.SQLMesaStatus.Edit;
  dm.SQLMesaStatusMESACSTATUS.Value     := 'L';
  dm.SQLMesaStatusMESAN3VLRTOTAL.Value  :=  0;
  dm.SQLMesaStatusMESADABERTURA.AsString:= '';
  dm.SQLMesaStatusMESADULTPED.AsString  := '';
  dm.SQLMesaStatusMESADFECHAMENTO.Value := Now;
  dm.SQLMesaStatusNOMECLIENTE.Value     := '' ;
  dm.SQLMesaStatus.Post;
  EntradaDados.SetFocus;
end;

procedure TFormTelaItens.BtnF3Click(Sender: TObject);
begin
  EntradaDados.SetFocus;
  FormKeyDown(Sender, F3, [ssAlt]);
end;

procedure TFormTelaItens.BtnF4Click(Sender: TObject);
begin
  EntradaDados.SetFocus;
  FormKeyDown(Sender, F4, [ssShift]);
end;

procedure TFormTelaItens.BtnF5Click(Sender: TObject);
begin
  EntradaDados.SetFocus;
  FormKeyDown(Sender, F5, [ssAlt]);
end;

procedure TFormTelaItens.BtnF6Click(Sender: TObject);
begin
  EntradaDados.SetFocus;
  FormKeyDown(Sender, F6, [ssAlt]);
end;

procedure TFormTelaItens.BtnF8Click(Sender: TObject);
begin
  EntradaDados.SetFocus;
  Application.CreateForm(TFormTelaRecargaCartao, FormTelaRecargaCartao) ;
  FormTelaRecargaCartao.ShowModal;
end;

procedure TFormTelaItens.BtnF9Click(Sender: TObject);
begin
  EntradaDados.SetFocus;
  FormKeyDown(Sender, F9, [ssAlt]);
end;

procedure TFormTelaItens.BtnF12Click(Sender: TObject);
begin
  EntradaDados.SetFocus;
  FormKeyDown(Sender, F12, [ssAlt]);
end;

procedure TFormTelaItens.BtnTransfContaClick(Sender: TObject);
begin
  EntradaDados.SetFocus;
  Application.CreateForm(TFormTelaTransfContas, FormTelaTransfContas) ;
  FormTelaTransfContas.ShowModal;
end;

procedure TFormTelaItens.lbStatusMesaClick(Sender: TObject);
begin
  if EstadoPDVChk = InformandoItens then
    begin
      InformaG('O sistema deve estar CAIXA LIVRE para poder quitar mesas!') ;
      EntradaDados.SelectAll ;
      Exit ;
    end ;
  if TerminalModo = 'C' then
    begin
      vImportarPrevenda  := True ;
      ContinuarPreVenda  := False ;
      ReativarPreVenda   := False ;
      CodMesa := DM.SQLMesaStatusMESAICOD.Value;
      if EntradaDados.Text <> '' then
        NomeClienteVenda := EntradaDados.Text
      else
        NomeClienteVenda := '';
      {Abre tela de quitacao de mesas}
      Application.CreateForm(TFormTelaMesa, FormTelaMesa) ;
      FormTelaMesa.lbEmpresa.Caption := 'Fechamento da Mesa => ' + intToStr(CodMesa);
      FormTelaMesa.ShowModal ;
      if ImpCupomAutomatico then
        LblNomeSistemaClick(Sender);
      ImpCupomAutomatico := False;

      AtualizaStatusMesas;
    end
  else
    begin
      InformaG('Não é possível importar uma Pré-Venda em um terminal que está operando como Pré-Venda ou Tele-Entrega!') ;
      EntradaDados.SelectAll ;
      Exit ;
    end ;
end;

procedure TFormTelaItens.dsSQLGrupoDataChange(Sender: TObject;
  Field: TField);
begin
  SQLGrupoProduto.Close;
  SQLGrupoProduto.MacroByName('Filtro').Value := 'GRUPICOD = ' + SQLGrupoGRUPICOD.AsString;
  SQLGrupoProduto.MacroByName('OrdemProduto').Value  := OrdemProduto;
  SQLGrupoProduto.Open;
end;

procedure TFormTelaItens.PageControlPrincipalChange(Sender: TObject);
begin
  if PageControlPrincipal.ActivePage = TabMesas then
    AtualizaStatusMesas
  else
    DM.SQLMesaStatus.close;
end;

procedure TFormTelaItens.CtrlGridGruposPaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
var
  BlobStream : TStream;
  JPEGImage  : TJPEGImage;
begin
  // Mostra Imagem Associada
  if SQLGrupoGRUPBIMAGEM.BlobSize <> 0 then
  begin
    BlobStream:= SQLGrupo.CreateBlobStream(SQLGrupoGRUPBIMAGEM,bmRead);
    JPEGImage := TJPEGImage.Create;
    try
      JPEGImage.LoadFromStream(BlobStream);
      ImgGrupo.Picture.Assign(JPEGImage);
    finally
      BlobStream.Free;
      JPEGImage.Free;
    end;
  end
  else
    ImgGrupo.Picture:=nil;
end;

procedure TFormTelaItens.ImgDesligarClick(Sender: TObject);
begin
  EntradaDados.SetFocus;
  if EstadoPDVChk <> AguardandoNovaVenda then
    keybd_event(27,27,0,0)
  else
    Close ;
end;

procedure TFormTelaItens.CtrlGridGruposClick(Sender: TObject);
begin
  EntradaDados.SetFocus;
end;

procedure TFormTelaItens.GridItensDblClick(Sender: TObject);
begin
  btObsProduto.Click;
end;

function TFormTelaItens.VerificaCartaoCredito : Boolean;
begin
  //********************************************************************//
  //                TRANSAÇÃO COM CARTÕES DE CRÉDITO                    //
  //********************************************************************//
  if ((Trim(ProvedorCartao) = 'VISANET') or
      (Trim(ProvedorCartao) = 'REDECARD') or
      (Trim(ProvedorCartao) = 'AMEX') or
      (Trim(ProvedorCartao) = 'BANRISUL')or
      (Trim(ProvedorCartao) = 'TECBAN')) then
    begin
      if FormTelaItens.GPAtivo then
        begin
          Application.Minimize;
          if (Copy(TipoPadrao,1,3) = 'CRT') then
            RetornoCartao := LiberaCartao('CRT',NroCupomFiscal,dm.TotalCartao);
          Result := RetornoCartao.TransacaoAutorizada;
          if not Result then
            begin
              Application.Restore;
              if RetornoCartao.RetornoOperador <> '' then
                Application.MessageBox(PChar(RetornoCartao.RetornoOperador + #13 + #13),'Informação',MB_OK + MB_ICONERROR + MB_SETFOREGROUND + MB_SYSTEMMODAL);
            end;
        end
      else
        begin
          Application.MessageBox(PChar('O Gerenciador Padrão não está ativo!' + #13 +'Impossível estabelecer conexão para efetuar a venda!'),'Informação',MB_OK + MB_ICONERROR + MB_SETFOREGROUND + MB_SYSTEMMODAL);
          DeleteText(AdjustPath(SendDirectory) + 'IntPos.001');
        end;
    end;
  //********************************************************************//
  //          TÉRMINO DA TRANSAÇÃO COM CARTÕES DE CRÉDITO               //
  //********************************************************************//
end;

procedure TFormTelaItens.btObsProdutoClick(Sender: TObject);
begin
  if SQLItensVendaTempCODIGO.AsString = '' then
    begin
      informag('Escolha o Produto Primeiro!');
      exit;
    end;

  // Alterar Obs Produto Selecionado
 { if FileExists('SolicitaObsProduto.txt') then
    begin
      SQLItensVendaTemp.Edit;
      SQLItensVendaTempDESCRICAOTEC.AsString := UpperCase(InputBox('Atenção!','Digite a Observacao...',''));
      SQLItensVendaTemp.Post;
      EntradaDados.SetFocus;
    end; }

  {Abre Tela Com Observacoes Cadastradas no Administrativo}
  Application.CreateForm(TFormTelaObsProduto, FormTelaObsProduto) ;
  FormTelaObsProduto.lbTitulo.Caption := ' Observações do Item => ' + SQLItensVendaTempDESCRICAO.Value;
  FormTelaObsProduto.ShowModal ;

  FormTelaObsProduto.TblMemObsProduto.First;

  SQLItensVendaTemp.Edit;
  SQLItensVendaTempDESCRICAOTEC.AsString := '' ;

  while not FormTelaObsProduto.TblMemObsProduto.eof do
    begin
      if FormTelaObsProduto.TblMemObsProdutoMarcado.Value then
        begin
          if FormTelaObsProduto.TblMemObsProduto.bof then
            SQLItensVendaTempDESCRICAOTEC.AsString := SQLItensVendaTempDESCRICAOTEC.AsString + ' ' + FormTelaObsProduto.TblMemObsProdutoSigla.Value
          else
            SQLItensVendaTempDESCRICAOTEC.AsString := SQLItensVendaTempDESCRICAOTEC.AsString + ' , ' + FormTelaObsProduto.TblMemObsProdutoSigla.Value ;
        end;
      FormTelaObsProduto.TblMemObsProduto.next ;
    end;
  SQLItensVendaTempDESCRICAOTEC.AsString := SQLItensVendaTempDESCRICAOTEC.AsString + ', ' + FormTelaObsProduto.Memo.Text ;
  SQLItensVendaTemp.Post;

  EntradaDados.SetFocus;
end;

procedure TFormTelaItens.BtnF2Click(Sender: TObject);
begin
  EntradaDados.SetFocus;
  FormKeyDown(Sender, F2, [ssAlt]);
end;

procedure TFormTelaItens.CtrlGridProdutosClick(Sender: TObject);
begin
  if EstadoPDVChk = InformandoItens then
    begin
      EntradaDados.Text := SQLGrupoProdutoPRODICOD.AsString;
      EntradaDados.SetFocus;
      EntradaDadosKeyDown(Sender, Enter, [ssAlt]);
    end;
end;

procedure TFormTelaItens.ckLevarCasaClick(Sender: TObject);
begin
  EntradaDados.SetFocus;
end;

procedure TFormTelaItens.ckBuscaClick(Sender: TObject);
begin
  EntradaDados.SetFocus;
end;

procedure TFormTelaItens.BtReturnClick(Sender: TObject);
begin
  keybd_event(13,13,0,0);
end;

procedure TFormTelaItens.Bt0Click(Sender: TObject);
begin
  keybd_event(48,48,0,0);
end;

procedure TFormTelaItens.BtVirgulaClick(Sender: TObject);
begin
  keybd_event(188,188,0,0);
end;

procedure TFormTelaItens.BtBackSpaceClick(Sender: TObject);
begin
  keybd_event(8,8,0,0);
end;

procedure TFormTelaItens.Bt1Click(Sender: TObject);
begin
  keybd_event(112,112,0,0);
end;

procedure TFormTelaItens.Bt2Click(Sender: TObject);
begin
  keybd_event(113,113,0,0);
end;

procedure TFormTelaItens.Bt3Click(Sender: TObject);
begin
  keybd_event(114,114,0,0);
end;

procedure TFormTelaItens.Bt4Click(Sender: TObject);
begin
  keybd_event(115,115,0,0);
end;

procedure TFormTelaItens.Bt5Click(Sender: TObject);
begin
  keybd_event(116,116,0,0);
end;

procedure TFormTelaItens.Bt6Click(Sender: TObject);
begin
  keybd_event(117,117,0,0);
end;

procedure TFormTelaItens.Bt7Click(Sender: TObject);
begin
  keybd_event(118,118,0,0);
end;

procedure TFormTelaItens.Bt8Click(Sender: TObject);
begin
  keybd_event(119,119,0,0);
end;

procedure TFormTelaItens.Bt9Click(Sender: TObject);
begin
  keybd_event(120,120,0,0);
end;

procedure TFormTelaItens.LblNomeSistemaClick(Sender: TObject);
var  FechouCupomFiscal : Boolean;
var  VlrTotalECF, VlrTotalSistema, VlrTotalDiferenca : Double;
begin
  if (ECFAtual <> '') then
    begin
      if not ImpCupomAutomatico then
        begin
          if not Pergunta('NAO','Imprimir Venda Atual ou Consultar Vendas?') then
            begin
              IDReimprimir := '';
              Application.CreateForm(TFormTelaConsultaRapidaCupom,FormTelaConsultaRapidaCupom);
              FormTelaConsultaRapidaCupom.de.Date := Now;
              FormTelaConsultaRapidaCupom.SQLCupom.Close;
              FormTelaConsultaRapidaCupom.SQLCupom.MacroByName('Terminal').Value    := '0=0';
              FormTelaConsultaRapidaCupom.SQLCupom.MacroByName('Filtro').Value      := 'Cupom.CUPOINRO < 1';
              FormTelaConsultaRapidaCupom.SQLCupom.MacroByName('DataEmissao').Value := 'Cupom.CUPODEMIS = "' + FormatDateTime('mm/dd/yyyy',Now) + '"';
              FormTelaConsultaRapidaCupom.SQLCupom.MacroByName('Empresa').Value     := 'Cupom.EMPRICOD  = ' + EmpresaPadrao;
              FormTelaConsultaRapidaCupom.SQLCupom.Open;
              FormTelaConsultaRapidaCupom.ShowModal;
              if FormTelaConsultaRapidaCupom.ModalResult = MrOk then
                IDReimprimir := FormTelaConsultaRapidaCupom.SQLCupomCUPOA13ID.AsString;

              FormTelaConsultaRapidaCupom.Close;
            end
          else
            IDReimprimir := dm.CodNextCupom;
        end
      else
        IDReimprimir := dm.CodNextCupom; {Imprime Cupom Automatico Venda Cartoes}

      if (IDReimprimir = '') then
        begin
         { InformaG('Nao existe cupom fiscal a ser impresso na memoria!') ; }
          EntradaDados.SelectAll ;
          exit ;
        end;

      // Nota Gaucha
      if (ECFAtual <> 'EPSON TERMICA') and (ECFAtual <> 'SWEDA_TERMICA') then
        begin
          repeat
            CpfOK := False;
            DocumentoClienteVenda := '';
            DocumentoClienteVenda := InputBox('Informar CPF no Cupom','Informar CPF no Cupom?','');
            if DocumentoClienteVenda <> '' then
              if length(DocumentoClienteVenda)=11 then
                begin
                  if ValidaCPF(DocumentoClienteVenda) then
                    CpfOK := True
                  else
                   ShowMessage('ERRO: O CPF DIGITADO É INVÁLIDO!');
                end;
              if length(DocumentoClienteVenda)=14 then
                begin
                  if ValidaCGC(DocumentoClienteVenda) then
                    CpfOK := True
                  else
                   ShowMessage('ERRO: O CNPJ DIGITADO É INVÁLIDO!');
                end;

            if DocumentoClienteVenda = '' then
              CpfOK := True;
          until
            CpfOK;
        end;

      {Inicio da impressao e transmissao do cupom eletronico}
      if (copy(ECFAtual,1,4) = 'NFCE') then
        begin
          // StatusServicoNFE;
          Transmite_NFCe(IDReimprimir);
          Exit;
        end;
      {Final da emissao do cupom eletronico}

     { if (copy(ECFAtual,1,4) = 'NFCE') then
        begin
          // Cria o arquivo XML
          LblInstrucoes.Caption := 'Aguarde... Gerando Cupom Eletronico...';
          LblInstrucoes.Update;
          sXML := Gerar_NFCe(IDReimprimir);

          SQLImpressaoCupom.Close;
          SQLImpressaoCupom.RequestLive := True;
          SQLImpressaoCupom.SQL.Clear;
          SQLImpressaoCupom.SQL.Add('Select CUPOINRO, TROCO, CHAVEACESSO, PROTOCOLO, RECIBO From CUPOM Where CUPOA13ID ="'+IDReimprimir+'"');
          SQLImpressaoCupom.Open;

          SQLImpressaoCupom.edit;
          SQLImpressaoCupom.fieldbyname('CUPOINRO').Value    := NumNFe;
          SQLImpressaoCupom.fieldbyname('CHAVEACESSO').Value := copy(ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID, (length(ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID)-44)+1, 44);
          SQLImpressaoCupom.Post;

          ACBrNFe.NotasFiscais.Assinar;
          ACBrNFe.NotasFiscais.Validar;
          ACBrNFe.NotasFiscais.Imprimir;

          try
            LblInstrucoes.Caption := 'Enviando ao Sefaz RS NFCe: '+inttostr(NumNFe);
            LblInstrucoes.Update;
            ACBrNFe.Enviar('1', False, False);
            Application.ProcessMessages;
          finally
            Application.ProcessMessages;
            ACBrNFe.Consultar(SQLImpressaoCupom.fieldbyname('CHAVEACESSO').Value);
            SQLImpressaoCupom.Edit;
            SQLImpressaoCupom.fieldbyname('PROTOCOLO').Value := ACBrNFe.WebServices.consulta.Protocolo;
           // SQLImpressaoCupom.fieldbyname('RECIBO').Value    := ACBrNFe.WebServices.consulta.Recibo;
            SQLImpressaoCupom.Post;
            SQLImpressaoCupom.Close;
            application.ProcessMessages;
          end;

          // Limpa a nota do componente ACBr
          NumNFe := 0;
          ACBrNFe.NotasFiscais.Clear;

          LblInstrucoes.Caption := 'CAIXA LIVRE - Próximo Cliente';
          LblInstrucoes.Update;
          exit;
        end; }

      // Abrir Cupom Fiscal da ultima venda
      NroCupomFiscal := '000000' ;
      if not AbrirCupomFiscal(ECFAtual, PortaECFAtual, NroCupomFiscal) then
        begin
          InformaG('Problemas ao tentar abrir o cupom!') ;
          EntradaDados.SelectAll ;
          exit ;
        end ;

      // Pegar Troco
      SQLImpressaoCupom.close;
      SQLImpressaoCupom.sql.Clear;
      SQLImpressaoCupom.SQL.Text := 'Select * From Cupom Where CUPOA13ID = "'+ IDReimprimir +'"';
      SQLImpressaoCupom.Open;
      VarValorTroco := SQLImpressaoCupom.fieldbyname('TROCO').AsVariant;

      // Imprimir Produtos
      SQLImpressaoCupom.close;
      SQLImpressaoCupom.sql.Clear;
      SQLImpressaoCupom.SQL.Text := 'Select * From CupomItem Where (CPITCSTATUS = "A") and CUPOA13ID = "'+ IDReimprimir +'" order by CPITIPOS';
      SQLImpressaoCupom.Open;
      SQLImpressaoCupom.First;
      while not SQLImpressaoCupom.eof do
        begin
          CodICMS := SQLLocate('PRODUTO','PRODICOD','ICMSICOD',SQLImpressaoCupom.fieldbyname('PRODICOD').AsString);
          if SQLImpressaoCupom.FieldByName('CPITN3QTD').Value > 0 then
            begin
              if not ImprimeItemECF(ECFAtual,                                                             {Impressora}
                                    PortaECFAtual,                                                        {Porta}
                                    SQLImpressaoCupom.fieldbyname('CPITIPOS').AsString,                   {Numitem}
                                    SQLImpressaoCupom.fieldbyname('PRODICOD').AsString,                   {Codigo}
                                    Copy(SQLLocate('PRODUTO','PRODICOD','PRODA30ADESCRREDUZ',SQLImpressaoCupom.fieldbyname('PRODICOD').AsString),1,20), {Descricao}
                                    RetornaTotalizadorIcmsECF(Ecf_ID, CodICMS),                           {Tributo}
                                    SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',SQLLocate('PRODUTO','PRODICOD','UNIDICOD',SQLImpressaoCupom.fieldbyname('PRODICOD').AsString)), {Unid}
                                    SQLImpressaoCupom.fieldbyname('CPITN3QTD').Value,                     {Qtde}
                                    SQLImpressaoCupom.fieldbyname('CPITN3VLRUNIT').Value,                 {ValorUnitario}
                                    0,                                                                    {Percdesc}
                                    (SQLImpressaoCupom.fieldbyname('CPITN2DESC').Value*
                                     SQLImpressaoCupom.fieldbyname('CPITN3QTD').Value),                   {Vlrdesco}
                                    DM.SQLTerminalAtivoTERMINRODECQUANT.Value                             {NumDecQuant}) then
                begin
                  CancelarCupomFiscal(ECFAtual,PortaECFAtual);
                  InformaG('Problemas ao imprimir o item no ECF!');
                  EntradaDados.SelectAll;
                  Exit;
                end;
            end;
          SQLImpressaoCupom.Next;
        end;

      // Subtotalizar para corrigir erros de arredondamentos eventuais
      if (ECFAtual = 'BEMATECH MP-25 FI') and (FileExists('Confirma.txt')) then
        begin
          try
            dm.SubTotal_ECF := '00000000000000';
            Bematech_FI_SubTotal(dm.SubTotal_ECF);
            dm.SubTotal_ECF  := FormatFloat(FormatStrVlrVenda,(StrToInt(dm.SubTotal_ECF)/100));
            VlrTotalECF := StrToFloat(dm.SubTotal_ECF);
          except
            Application.ProcessMessages;
          end;
        end;

      if (ECFAtual = 'DARUMA FS345') and (FileExists('Confirma.txt')) then
        begin
          try
            dm.SubTotal_ECF := '00000000000000';
            Daruma_FI_SubTotal(dm.SubTotal_ECF);
            dm.SubTotal_ECF  := FormatFloat(FormatStrVlrVenda,(StrToInt(dm.SubTotal_ECF)/100));
            VlrTotalECF := StrToFloat(dm.SubTotal_ECF);
          except
            Application.ProcessMessages;
          end;
        end;

      if (ECFAtual = 'DARUMA FRAMEWORK') and (not FileExists('Confirma.txt')) then
        begin
          try
            dm.SubTotal_ECF := '00000000000000';
            rCFSubTotal_ECF_Daruma(dm.SubTotal_ECF);
            dm.SubTotal_ECF  := FormatFloat(FormatStrVlrVenda,(StrToInt(dm.SubTotal_ECF)/100));
            VlrTotalECF := StrToFloat(dm.SubTotal_ECF);
          except
            Application.ProcessMessages;
          end;
        end;

      // Abrir CupomNumerario para ver se tem algum registro e popular a tabela temporaria a vista
      dm.TotalCartao  := 0;
      ProvedorCartao  := '';
      VlrTotalSistema := 0;
      SQLImpressaoCupom.Close;
      SQLImpressaoCupom.sql.Clear;
      SQLImpressaoCupom.SQL.Text := 'Select * from CUPOMNUMERARIO where CUPOA13ID = "'+ IDReimprimir +'"';
      SQLImpressaoCupom.Open;
      SQLParcelasVistaVendaTemp.Close;
      SQLParcelasVistaVendaTemp.MacroByName('MFiltro').Value := 'TERMICOD = '+ IntToStr(StrToInt(copy(IDReimprimir,4,3)));
      SQLParcelasVistaVendaTemp.Open;
      if not SQLParcelasVistaVendaTemp.IsEmpty then
        begin
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
              SQLParcelasVistaVendaTempTERMICOD.AsString := copy(SQLImpressaoCupom.fieldbyname('CUPOA13ID').AsString,4,3);
              SQLParcelasVistaVendaTempNROITEM.Value     := SQLImpressaoCupom.fieldbyname('NUMEICOD').AsInteger;
              SQLParcelasVistaVendaTempNUMEICOD.Value    := SQLImpressaoCupom.fieldbyname('NUMEICOD').AsInteger;
              if (SQLParcelasVistaVendaTemp.RecNo = 1) and (VarValorTroco > 0) then
                SQLParcelasVistaVendaTempVALORPARC.Value   := SQLImpressaoCupom.fieldbyname('CPNMN2VLR').Value+VarValorTroco
              else
                SQLParcelasVistaVendaTempVALORPARC.Value   := SQLImpressaoCupom.fieldbyname('CPNMN2VLR').Value;
              SQLParcelasVistaVendaTempTIPOPADR.Value    := SQLLocate('NUMERARIO','NUMEICOD','NUMEA5TIPO',SQLImpressaoCupom.fieldbyname('NUMEICOD').AsString);
              SQLParcelasVistaVendaTemp.Post;

              if SQLParcelasVistaVendaTempTIPOPADR.Value = 'CRT' then
                begin
                  TipoPadrao     := SQLParcelasVistaVendaTempTIPOPADR.Value;
                  dm.TotalCartao := dm.TotalCartao + SQLParcelasVistaVendaTempVALORPARC.Value;
                  ProvedorCartao := SQLLocate('NUMERARIO','NUMEICOD','PRCAA13ID',SQLImpressaoCupom.fieldbyname('NUMEICOD').AsString);
                  NomeNumerarioCartao := SQLLocate('NUMERARIO','NUMEICOD','NUMEA30DESCR',SQLImpressaoCupom.fieldbyname('NUMEICOD').AsString);
                  dm.NumerarioCartao  := SQLImpressaoCupom.fieldbyname('NUMEICOD').AsString;
                end;

              VlrTotalSistema := VlrTotalSistema + SQLParcelasVistaVendaTempVALORPARC.Value;

              SQLImpressaoCupom.next;
            end;
          SQLParcelasVistaVendaTemp.Close;
          SQLParcelasVistaVendaTemp.MacroByName('MFiltro').Value := 'TERMICOD = '+ IntToStr(StrToInt(copy(IDReimprimir,4,3)));
          SQLParcelasVistaVendaTemp.Open;
        end;

      // Abrir CONTASRECEBER para ver se tem algum registro e popular a tabela temporaria a prazo
      SQLImpressaoCupom.close;
      SQLImpressaoCupom.sql.Clear;
      SQLImpressaoCupom.SQL.Text := 'Select * from contasreceber where CUPOA13ID = "'+ IDReimprimir +'"';
      SQLImpressaoCupom.open;
      SQLParcelasPrazoVendaTemp.Close;
      SQLParcelasPrazoVendaTemp.MacroByName('MFiltro').Value := 'TERMICOD = '+ IntToStr(StrToInt(copy(IDReimprimir,4,3)));
      SQLParcelasPrazoVendaTemp.Open;
      if not SQLParcelasPrazoVendaTemp.IsEmpty then
        begin
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
              SQLParcelasPrazoVendaTempTERMICOD.AsString    := SQLImpressaoCupom.fieldbyname('TERMICOD').AsString;
              SQLParcelasPrazoVendaTempNROPARCELA.AsString  := SQLImpressaoCupom.fieldbyname('CTRCICOD').AsString;
              SQLParcelasPrazoVendaTempNUMEICOD.AsString    := SQLImpressaoCupom.fieldbyname('NUMEICOD').AsString;
              SQLParcelasPrazoVendaTempVALORVENCTO.AsString := SQLImpressaoCupom.fieldbyname('CTRCN2VLR').AsString;
              SQLParcelasPrazoVendaTempDATAVENCTO.AsString  := SQLImpressaoCupom.fieldbyname('CTRCDVENC').AsString;
              SQLParcelasPrazoVendaTempTIPOPADR.AsString    := SQLImpressaoCupom.fieldbyname('CTRCA5TIPOPADRAO').AsString;
              SQLParcelasPrazoVendaTemp.Post;

              if SQLImpressaoCupom.fieldbyname('CTRCA5TIPOPADRAO').AsString = 'CRT' then
                begin
                  TipoPadrao     := SQLImpressaoCupom.fieldbyname('CTRCA5TIPOPADRAO').AsString;
                  dm.TotalCartao := dm.TotalCartao + SQLParcelasPrazoVendaTempVALORVENCTO.Value;
                  ProvedorCartao := SQLLocate('NUMERARIO','NUMEICOD','PRCAA13ID',SQLImpressaoCupom.fieldbyname('NUMEICOD').AsString);
                  NomeNumerarioCartao := SQLLocate('NUMERARIO','NUMEICOD','NUMEA30DESCR',SQLImpressaoCupom.fieldbyname('NUMEICOD').AsString);
                  dm.NumerarioCartao  := SQLImpressaoCupom.fieldbyname('NUMEICOD').AsString;
                end;
              SQLImpressaoCupom.Next;

              VlrTotalSistema := VlrTotalSistema + SQLParcelasPrazoVendaTempVALORVENCTO.Value;
            end;
          SQLParcelasPrazoVendaTemp.Close;
          SQLParcelasPrazoVendaTemp.MacroByName('MFiltro').Value := 'TERMICOD = '+SQLImpressaoCupom.fieldbyname('TERMICOD').AsString;
          SQLParcelasPrazoVendaTemp.Open;
        end;

      // Teste para ver se Total ECF é igual ao total do Sistema, caso sistema seja menor acrescer centavos.
      VlrTotalDiferenca := 0;
      if (VlrTotalSistema<VlrTotalECF) then
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
          SQLProvedorCartao.MacroByName('Provedor').Value := 'PRCAA13ID = "'+ProvedorCartao+'"';
          SQLProvedorCartao.Open;
          if not SQLProvedorCartao.IsEmpty then
            begin
              ProvedorCartao := SQLProvedorCartaoPRCAA60CARTAO.AsString;
              // dm.TotalCartao , ja peguei o total nas linhas mais acima
              {VERIFICANDO SE O CRÉDITO DO CARTÃO FOI APROVADO}
              if not VerificaCartaoCredito then
                begin
                  InformaG('Transação não completada! Verifique!') ;
                  CancelarCupomFiscal(ECFAtual,PortaECFAtual);
                  Exit;
                end;
            end;
        end;

      // Finalizar cupom
      FechouCupomFiscal := False;
      SQLImpressaoCupom.close;
      SQLImpressaoCupom.sql.Clear;
      SQLImpressaoCupom.SQL.Text := 'Select * from cupom where CUPOA13ID = "'+ IDReimprimir +'"';
      SQLImpressaoCupom.open;
      if DocumentoClienteVenda = '' then
        DocumentoClienteVenda := SQLImpressaoCupom.fieldbyname('CLIENTECNPJ').AsString;
      repeat
        {SQLImpressaoCupom.fieldbyname('CUPON2DESCITENS').Value}
        if not FecharCupomFiscal(ECFAtual,
                                 PortaECFAtual,
                                 Ecf_CNFV,
                                 SQLImpressaoCupom.fieldbyname('CUPON2TOTITENS').Value+VlrTotalDiferenca,  // VALOR
                                 SQLImpressaoCupom.fieldbyname('CUPON2ACRESC').Value,                      // ACRESCIMO
                                 SQLImpressaoCupom.fieldbyname('CUPON2DESC').Value,                        // DESCONTO
                                 VarValorTroco, // TROCO
                                 SQLParcelasVistaVendaTemp,
                                 SQLParcelasPrazoVendaTemp,
                                 SQLImpressaoCupom.fieldbyname('CLIENTENOME').AsString,
                                 SQLImpressaoCupom.fieldbyname('CLIENTEENDE').AsString,
                                 SQLImpressaoCupom.fieldbyname('CLIENTECIDA').AsString,
                                 DocumentoClienteVenda,
                                 '','','') then
          begin
            if Pergunta('SIM','A impressora fiscal não responde. Deseja tentar novamente?') then
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
          CancelarCupomFiscal(ECFAtual,PortaECFAtual);
          InformaG('Problemas ao Fechar o Cupom Fiscal!');
          EntradaDados.SelectAll ;
          Exit;
        end;

      // IMPRIME AUTORIZACAO DO CARTAO DE CREDITO
      if (ProvedorCartao <> '') and (dm.TotalCartao > 0) and (RetornoCartao.TransacaoAutorizada) then
        begin
          DadosImpressora.ECFAtual           := ECFAtual;
          DadosImpressora.PortaECFAtual      := PortaECFAtual;
          DadosImpressora.TotNumECFImp       := RetornaTotalizadorNumerarioECF(Ecf_ID,dm.NumerarioCartao);
          DadosImpressora.Ecf_CNFV           := Ecf_CNFV;
          DadosImpressora.Ecf_ID             := Ecf_ID;
          DadosImpressora.NroCupomFiscal     := NroCupomFiscal;
          if ((ECFAtual = 'DARUMA FS345') or (ECFAtual = 'BEMATECH MP-25 FI')) then
            DadosImpressora.DescricaoNumerario := RetornaTotalizadorNumerarioECFDarumaFS345(Ecf_ID, dm.NumerarioCartao)
          else
            DadosImpressora.DescricaoNumerario := NomeNumerarioCartao;
          DadosImpressora.ValorImp           := dm.TotalCartao;

          // ENVIAR O NRO DE VIAS QUE DESEJA IMPRIMIR
          if RetornoCartao.QtdeLinhas > 0 then
            begin
              if not ImprimeRetorno(RetornoCartao,DadosImpressora,NroViasTEF,False) then
                CancelarCupomFiscal(ECFAtual,PortaECFAtual);
            end;
        end;

      TipoPadrao     := '';

      // Gravar numero do Cupom Fiscal na Venda
      dm.SQLCupom.close;
      dm.SQLCupom.macrobyname('MFiltro').Value := 'CUPOA13ID = "'+ IDReimprimir +'"';
      dm.SQLCupom.Open;
      if not dm.SQLCupom.IsEmpty then
        begin
          dm.SQLCupom.edit;
          dm.SQLCupomCUPOINRO.Value := StrToInt(NroCupomFiscal);
          dm.SQLCupom.Post;
        end;
      dm.SQLCupom.close;

      exit ;
    end;
end;

procedure TFormTelaItens.DBText3Click(Sender: TObject);
begin
  if EstadoPDVChk = InformandoItens then
    begin
      EntradaDados.Text := SQLGrupoProdutoPRODA60CODBAR.AsString;
      EntradaDados.SetFocus;
      EntradaDadosKeyDown(Sender, Enter, [ssAlt]);
    end;
end;

procedure TFormTelaItens.CtrlGridProdutosPaintPanel(
  DBCtrlGrid: TDBCtrlGrid; Index: Integer);
var
  BlobStream : TStream;
  JPEGImage  : TJPEGImage;
begin
  // Mostra Imagem Associada
  if SQLGrupoProdutoPRODBIMAGEM.BlobSize <> 0 then
  begin
    BlobStream:= SQLGrupoProduto.CreateBlobStream(SQLGrupoProdutoPRODBIMAGEM,bmRead);
    JPEGImage := TJPEGImage.Create;
    try
      JPEGImage.LoadFromStream(BlobStream);
      imgProduto.Picture.Assign(JPEGImage);
    finally
      BlobStream.Free;
      JPEGImage.Free;
    end;
  end
  else
    imgProduto.Picture:=nil;
end;

procedure TFormTelaItens.btAtualizaMesaClick(Sender: TObject);
begin
  EntradaDados.SetFocus;
  keybd_event(27,27,0,0);
end;

procedure TFormTelaItens.FormShow(Sender: TObject);
begin
  {Testar o Estado da ECF}
  if (ECFAtual <> '') then
    if (copy(PortaECFAtual,1,4) <> 'NFCE') then
      begin
       if VerificaECFLigada(EcfAtual, PortaECFAtual) then
         begin
           lbStatusECF.Caption := 'ECF OnLine';
           shpStatusECF.Brush.Color := clLime;

           {Testa se Tem Reducao Z Pendente}
          { if VerificaZPendente(EcfAtual, PortaECFAtual) then
             InformaG('Existe uma Redução Z Pendente!'); }
         end
       else
         begin
           InformaG('ECF Desligada ou Não Configurada!');
           lbStatusECF.Caption := 'ECF OffLine';
           shpStatusECF.Brush.Color := clRed;
         end;
      end;

  {Testar Estado do Caixa}
  if TerminalModo = 'C' then
    begin
      TestaStatusCaixa ;
      if VerCaixa then
        exit ;
    end;
end;

procedure TFormTelaItens.DSSQLIntensVendaDataChange(Sender: TObject;
  Field: TField);
begin
  if (not SQLItensVendaTempSABOR01.IsNull) or (not SQLItensVendaTempSABOR02.IsNull) or (not SQLItensVendaTempSABOR03.IsNull) then
    advPainelPizza.Visible := True
  else
    advPainelPizza.Visible := False;
end;

procedure TFormTelaItens.RxBordaClick(Sender: TObject);
begin
  if SQLLocate('produto','prodicod','SABORES',SQLItensVendaTempCODIGO.AsString) = 'S' then
    begin
      Application.CreateForm(TFormTelaBordas, FormTelaBordas);
      FormTelaBordas.SQLObsProduto.Close;
      FormTelaBordas.SQLObsProduto.SQL.clear;
      FormTelaBordas.SQLObsProduto.SQL.Text := 'Select * from ObsProdutoRest where OBPRA1TIPO="B" Order by OBPRIORDEM ASC' ;
      FormTelaBordas.SQLObsProduto.Open;
      if not FormTelaBordas.SQLObsProduto.IsEmpty then
        begin
          FormTelaBordas.Borda01.Text := SQLItensVendaTempBORDA01.Value;
          FormTelaBordas.Borda02.Text := SQLItensVendaTempBORDA02.Value;
          FormTelaBordas.Borda03.Text := SQLItensVendaTempBORDA03.Value;
          FormTelaBordas.EditValorTotal.Text := SQLItensVendaTempBordaValor.AsString;
          FormTelaBordas.ShowModal;
          SQLItensVendaTemp.edit;
          SQLItensVendaTempBORDA01.Value := FormTelaBordas.Borda01.Text;
          SQLItensVendaTempBORDA02.Value := FormTelaBordas.Borda02.Text;
          SQLItensVendaTempBORDA03.Value := FormTelaBordas.Borda03.Text;
          if FormTelaBordas.EditValorTotal.Text <> '' then
            SQLItensVendaTempBordaValor.Value  := StrToFloat(FormTelaBordas.EditValorTotal.Text);

          if FormTelaSabores.EditValorTotal.Text <> '' then
            begin
              SQLItensVendaTempSaborValor.Value  := StrToFloat(FormTelaSabores.EditValorTotal.Text);
              SQLItensVendaTempVLRUNITBRUT.Value := SQLItensVendaTempBordaValor.Value  + SQLItensVendaTempSaborValor.Value;
              SQLItensVendaTempVLRTOTAL.Value    := SQLItensVendaTempVLRUNITBRUT.Value * SQLItensVendaTempQUANTIDADE.Value;
            end;

          SQLItensVendaTemp.post;
        end
      else
        begin
          FormTelaBordas.close;
          FormTelaBordas.free;
        end;
    end;
end;

procedure TFormTelaItens.RxSaboresClick(Sender: TObject);
begin
  if SQLLocate('produto','prodicod','SABORES',SQLItensVendaTempCODIGO.AsString) = 'S' then
    begin
      Application.CreateForm(TFormTelaSabores, FormTelaBordas);
      FormTelaSabores.Sabor01.Text := SQLItensVendaTempSabor01.Value;
      FormTelaSabores.Sabor02.Text := SQLItensVendaTempSabor02.Value;
      FormTelaSabores.Sabor03.Text := SQLItensVendaTempSabor03.Value;
      FormTelaSabores.Sabor04.Text := SQLItensVendaTempSabor04.Value;
      FormTelaSabores.Sabor05.Text := SQLItensVendaTempSabor05.Value;
      FormTelaSabores.Sabor06.Text := SQLItensVendaTempSabor06.Value;
      FormTelaSabores.EditValorTotal.Text := SQLItensVendaTempSaborValor.AsString;
      FormTelaSabores.ShowModal;
      {Salva a escolha dos novos sabores}
      SQLItensVendaTemp.edit;
      SQLItensVendaTempSabor01.Value := FormTelaSabores.Sabor01.Text;
      SQLItensVendaTempSabor02.Value := FormTelaSabores.Sabor02.Text;
      SQLItensVendaTempSabor03.Value := FormTelaSabores.Sabor03.Text;
      SQLItensVendaTempSabor04.Value := FormTelaSabores.Sabor04.Text;
      SQLItensVendaTempSabor05.Value := FormTelaSabores.Sabor05.Text;
      SQLItensVendaTempSabor06.Value := FormTelaSabores.Sabor06.Text;
      if FormTelaSabores.EditValorTotal.Text <> '' then
        begin
          SQLItensVendaTempSaborValor.Value  := StrToFloat(FormTelaSabores.EditValorTotal.Text);
          SQLItensVendaTempVLRUNITBRUT.Value := SQLItensVendaTempBordaValor.Value  + SQLItensVendaTempSaborValor.Value;
          SQLItensVendaTempVLRTOTAL.Value    := SQLItensVendaTempVLRUNITBRUT.Value * SQLItensVendaTempQUANTIDADE.Value;
        end;

      SQLItensVendaTemp.post;
    end;
end;

procedure TFormTelaItens.BtnResumoCaixaClick(Sender: TObject);
var
  RetornoUser : TInfoRetornoUser;
begin
  // Relatorio de Fechamento de Caixa
  if DM.SQLUsuario.Locate('USUAICOD',UsuarioCorrente,[]) then
    if DM.SQLUsuario.FieldByName('USUACPERMRESUCX').AsString <> 'S' then
      if Pergunta('SIM','Você não tem permissão para ver relatorio de caixa! Deseja Informar Outro Usuário?') then
        begin
          RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACPERMRESUCX',RetornoUser);
          if RetornoCampoUsuario <> 'S' then
            begin
              InformaG('Usuário sem poder para ver relatorio de caixa!') ;
              EntradaDados.SelectAll ;
              Exit;
            end
        end
      else
        Exit;
  Application.CreateForm(TFormPrincipalRelatorios, FormPrincipalRelatorios) ;
  FormPrincipalRelatorios.ShowModal ;
end;

procedure TFormTelaItens.BtnF7Click(Sender: TObject);
begin
  CodMesa  := 0;
  CodConta := 0;
  if EstadoPDVChk = InformandoItens then
    begin
      InformaG('O sistema deve estar CAIXA LIVRE para poder quitar mesas!') ;
      EntradaDados.SelectAll ;
      Exit ;
    end ;
  if TerminalModo = 'C' then
    begin
      Application.CreateForm(TFormTelaContaCodigo,FormTelaContaCodigo);
      FormTelaContaCodigo.ShowModal;
      if FormTelaContaCodigo.ModalResult = MrOK then
        begin
           CodConta := FormTelaContaCodigo.EditCodComanda.AsInteger;

           {Abre tela de quitacao de mesas}
           if (CodConta > 0) then
             begin
               Application.CreateForm(TFormTelaMesa, FormTelaMesa) ;
               FormTelaMesa.lbEmpresa.Caption := 'Fechamento da Comanda => ' + intToStr(CodConta);
               FormTelaMesa.ShowModal ;
               AtualizaStatusMesas;
             end;  
        end;
    end;
  CodMesa  := 0;
  CodConta := 0;  
end;

Function TFormTelaItens.Transmite_NFCe(idCupom : string):Boolean;
var Tentativa : integer;
begin
  {Pega o Troco}
  SQLImpressaoCupom.Close;
  SQLImpressaoCupom.RequestLive := True;
  SQLImpressaoCupom.SQL.Clear;
  SQLImpressaoCupom.SQL.Add('Select CUPOINRO, TROCO, CHAVEACESSO, PROTOCOLO, STNFE From CUPOM Where CUPOA13ID ="'+idCupom+'"');
  SQLImpressaoCupom.Open;
  VarValorTroco := SQLImpressaoCupom.fieldbyname('TROCO').AsFloat;
  dm.ACBrNFeDANFeESCPOS.vTroco := VarValorTroco;

  dm.TotalCartao  := 0;
  ProvedorCartao  := '';
  SQLImpressaoCupom.Close;
  SQLImpressaoCupom.SQL.clear;
  SQLImpressaoCupom.SQL.Text := 'Select * from CUPOMNUMERARIO where CUPOA13ID = "'+ idCupom +'"';
  SQLImpressaoCupom.Open;
  while not SQLImpressaoCupom.eof do
    begin
      if SQLLocate('NUMERARIO','NUMEICOD','NUMEA5TIPO',SQLImpressaoCupom.fieldbyname('NUMEICOD').AsString) = 'CRT' then
        begin
          dm.TotalCartao := dm.TotalCartao + SQLImpressaoCupom.fieldbyname('CPNMN2VLR').Value;
          ProvedorCartao := SQLLocate('NUMERARIO','NUMEICOD','PRCAA13ID',SQLImpressaoCupom.fieldbyname('NUMEICOD').AsString);
          dm.NumerarioCartao  := SQLImpressaoCupom.fieldbyname('NUMEICOD').AsString;
          NomeNumerarioCartao := SQLLocate('NUMERARIO','NUMEICOD','NUMEA30DESCR',SQLImpressaoCupom.fieldbyname('NUMEICOD').AsString);
        end;
      SQLImpressaoCupom.next;
    end;

  // Abrir CONTASRECEBER para ver se tem algum registro e popular a tabela temporaria a prazo
  SQLImpressaoCupom.close;
  SQLImpressaoCupom.SQL.clear;
  SQLImpressaoCupom.SQL.Text := 'Select * from CONTASRECEBER where CUPOA13ID = "'+ idCupom +'"';
  SQLImpressaoCupom.open;
  while not SQLImpressaoCupom.eof do
    begin
      if (SQLImpressaoCupom.fieldbyname('CTRCA5TIPOPADRAO').AsString = 'CRT') then
        begin
          TipoPadrao     := SQLImpressaoCupom.fieldbyname('CTRCA5TIPOPADRAO').AsString;
          dm.TotalCartao := dm.TotalCartao + SQLImpressaoCupom.fieldbyname('CTRCN2VLR').Value;
          ProvedorCartao := SQLLocate('NUMERARIO','NUMEICOD','PRCAA13ID',SQLImpressaoCupom.fieldbyname('NUMEICOD').AsString);
          dm.NumerarioCartao  := SQLImpressaoCupom.fieldbyname('NUMEICOD').AsString;
          NomeNumerarioCartao := SQLLocate('NUMERARIO','NUMEICOD','NUMEA30DESCR',SQLImpressaoCupom.fieldbyname('NUMEICOD').AsString);
        end;
      SQLImpressaoCupom.Next;
    end;

  // Cria o arquivo XML
  sXML := Gerar_NFCe(idCupom);
  chave:= copy(dm.ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID, (length(dm.ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID)-44)+1, 44);

  if chave ='' then
    begin
      ShowMessage('O sistema nao conseguiu gerar a Chave Eletronica! Tente Novamente');
      ImpCupomAutomatico := false;
      Exit;
    end;

  SQLImpressaoCupom.Close;
  SQLImpressaoCupom.RequestLive := False;
  SQLImpressaoCupom.SQL.Text := 'Update CUPOM Set CUPOINRO=' +IntToStr(NumNFe)+ ', CHAVEACESSO="'+chave +'"'+
                                ' Where CUPOA13ID ="'+idCupom+'"';
  SQLImpressaoCupom.ExecSQL;

  LblInstrucoes.Caption := 'Assinando NFCe.: '+inttostr(NumNFe) ;
  LblInstrucoes.Update;
  dm.ACBrNFe.NotasFiscais.Assinar;
  LblInstrucoes.Caption := 'Validando NFCe.: '+inttostr(NumNFe) ;
  LblInstrucoes.Update;
  dm.ACBrNFe.NotasFiscais.Validar;
  if (ECFAtual <> 'NFCE A4') then
    begin
      LblInstrucoes.Caption := 'Imprimindo NFCe.: '+inttostr(NumNFe) ;
      LblInstrucoes.Update;
      dm.ACBrNFe.NotasFiscais.Imprimir;
      if NroViasImpVenda = '2' then
        begin
          if Application.MessageBox(PChar('Imprimir Segunda Via NFCe?'), PChar(Application.Title), MB_SYSTEMMODAL + MB_YesNo + MB_IconQuestion + MB_DEFBUTTON2) = IdYes then
            dm.ACBrNFe.NotasFiscais.Imprimir;
        end;
    end;

  {Testa se tem o arquivo Tef_Retorno.txt, imprime o cupom tef}
  if (dm.TotalCartao>0) and (ProvedorCartao<>'') then
    begin
      DadosImpressora.ECFAtual           := ECFAtual;
      DadosImpressora.PortaECFAtual      := PortaECFAtual;
      if not ImprimeRetorno(RetornoCartao,DadosImpressora,NroViasTEF,False) then
        begin
          if Pergunta('SIM','Tenta Reimprimir Cupom TEF') then
            if ImprimeRetorno(RetornoCartao,DadosImpressora,NroViasTEF,False) then
              begin
                {Se imprimiu Confirma a Transacao}
                Confirma(RetornoCartao.NomeRede,RetornoCartao.NroTransacao,RetornoCartao.Finalizacao,True);
              end;
        end
      else
        begin
          {Se imprimiu Confirma a Transacao}
          Confirma(RetornoCartao.NomeRede,RetornoCartao.NroTransacao,RetornoCartao.Finalizacao,True);
        end;
    end;

  LblInstrucoes.Caption := 'Enviando ao Sefaz RS NFCe: '+inttostr(NumNFe) ;
  LblInstrucoes.Update;
  dm.ACBrNFe.Enviar('1', False, False);

  Tentativa := 0;
  while Tentativa < 5 do
    begin
      Tentativa := Tentativa+1;
      Application.ProcessMessages;
      LblInstrucoes.Caption := 'Consulta Retorno do Sefaz RS NFCe: '+inttostr(NumNFe)+' -> Tentativa N.'+intToStr(Tentativa) ;
      LblInstrucoes.Update;
      dm.ACBrNFe.Consultar(Chave); //Consultar

      if (dm.ACBrNFe.WebServices.Consulta.cStat = 100) then //Tenta pegar retorno da nfce
        begin
          Tentativa := 9;
          LblInstrucoes.Caption := 'Gravando Retorno NFCe.: '+inttostr(NumNFe) ;
          LblInstrucoes.Update;
          SQLImpressaoCupom.Close;
          SQLImpressaoCupom.RequestLive := False;
          SQLImpressaoCupom.SQL.Text := 'Update CUPOM Set STNFE='+IntToStr(dm.ACBrNFe.WebServices.consulta.cStat)+
                                        ', PROTOCOLO="'+dm.ACBrNFe.WebServices.consulta.Protocolo +'"'+
                                        ' Where CUPOA13ID ="'+idCupom+'"';
          SQLImpressaoCupom.ExecSQL;
        end;
    end;

  SQLImpressaoCupom.Close;

  { Limpa a nota do componente ACBr }
  LblInstrucoes.Caption := 'CAIXA LIVRE - Próximo Cliente';
  LblInstrucoes.Update;
  NumNFe := 0;
  dm.ACBrNFe.NotasFiscais.Clear;
end;

procedure TFormTelaItens.CalcularImpostos(CodNCM, OrigemProduto: Integer;
  Valor: Currency);
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

procedure TFormTelaItens.btnF10Click(Sender: TObject);
begin
  keybd_event(121,121,0,0);
end;

procedure TFormTelaItens.btnCrtlXClick(Sender: TObject);
begin
  LblNomeSistemaClick(Sender);
end;

procedure TFormTelaItens.ExecutarCtrlQ;
begin
  if FileExists('BalancaCheckoutFilizola.txt') or FileExists('BalancaCheckoutToledo.txt') or FileExists('BalancaCheckoutUrano.txt') then
  begin
//    if (EstadoPDVChk = AguardandoNovaVenda) and (F2_AUTOMATICO = 'S') then
//      ExecutarF2;
    Application.CreateForm(TFormBalancaFilizola, FormBalancaFilizola);
    FormBalancaFilizola.ShowModal;
  end;
  if FileExists('BalancaCheckoutToledoDireto.txt') then
  begin
    LblInstrucoes.Caption := 'Lendo Balança Toledo...';
    LblInstrucoes.Refresh;
    ACBrBAL1.Desativar;

                    // configura porta de comunicação
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
                    // Conecta com a balança
    ACBrBAL1.Ativar;
    EditQtde.Value := ACBrBAL1.LePeso(ACBrBAL1.Intervalo);
    ACBrBAL1.Desativar;

    LblInstrucoes.Caption := 'Informando Produto';
    LblInstrucoes.Refresh;
  end;

  if FileExists('BalancaCheckoutUranoDireto.txt') then
  begin
    LblInstrucoes.Caption := 'Comunicando com a Balança Urano...';
    LblInstrucoes.Refresh;
    addLog('Comunicação OK',ExtractFilePath(Application.ExeName) + 'LogPesaUrano.txt');
                    // Abre Porta Serial
    _AlteraModeloBalanca(Urano_Modelo);
    _AlteraModoOperacao(0);

    if _AbrePortaSerial(Urano_Porta) < 1 then
      informaG('Problema de Comunicação com a Balança!')
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

procedure TFormTelaItens.VoltaParaEntradaDados;
begin
  try
    if not EntradaDados.Focused then
      EntradaDados.SetFocus;

  except
  end;
end;

end.
