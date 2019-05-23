unit TelaItens;

interface

uses
  Variants, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, StdCtrls, Db, DBTables, Buttons,JPEG, Mask, ToolEdit,
  CurrEdit, ConerBtn, DBCtrls, RXCtrls, RxQuery, EWall, ComObj, Serial, Math, ShellApi,
  RxCalc, ppDB, ppDBPipe, ppDBBDE, ppBands, ppCtrls, ppPrnabl, ppClass, CartaoCredito,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, CRLabel, dbcgrids, IniFiles,
  RXSwitch, Menus, ESkinPlus, AdvGlowButton, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvSmoothPanel, AdvReflectionLabel,
  AdvSmoothSlideShow, ComCtrls, TFlatPanelUnit, OleCtrls, SHDocVw, ACBrNFe,
  ACBrNFeDANFEClass, ACBrNFeDANFeESCPOS, pcnConversao, pcnNFe;

const
  //AS VARIAVEIS ABAIXO FORAM CRIADAS PARA NÃO CORRER O RISCO DE DIGITAR ERRADO
  //E ALGUMA ROTINA NAO FUNCIONAR, EU SO DESCOBRIRIA AO USAR, ASSIM JA DESCUBRO
  //NA COMPILACAO
  AguardandoNovaVenda        = 'AguardandoNovaVenda';
  InformandoItens            = 'InformandoItens';
  CancelandoItem             = 'CancelandoItem';
  DescontoPercItem           = 'DescontoPercItem';
  DescontoVlrItem            = 'DescontoVlrItem';
  InformandoConvenio         = 'InformandoConvenio';
  InformandoOrdemCompra      = 'InformandoOrdemCompra';
  InformandoClienteConvenio  = 'InformandoClienteConvenio';
  InformandoItensTroca       = 'InformandoItensTroca';
  InformandoDescricaoTecnica = 'InformandoDescricaoTecnica';
  InformandoTotalVenda       = 'InformandoTotalVenda';
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
    SQLProdutoPRODN3VLRVENDA: TBCDField;
    SQLProdutoPRODA30ADESCRREDUZ: TStringField;
    SQLProdutoICMSICOD: TIntegerField;
    SQLProdutoPRODN3VLRVENDAPROM: TBCDField;
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
    SQLProdutoPRODN3VLRCOMPRA: TBCDField;
    SQLProdutoPRODN3VLRCUSTO: TBCDField;
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
    SQLTEFVALOR: TBCDField;
    SQLTEFTEXTO: TMemoField;
    SQLTEFFINALIZACAO: TStringField;
    TimerLeitor: TTimer;
    Serial: TSerialPort;
    SQLBalancaCFBLCTIPOPRECO: TStringField;
    SQLProdutoPRODN3VLRCUSTOMED: TBCDField;
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
    SQLProdutoPRODN3VLRVENDA2: TBCDField;
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
    SQLContasReceberCTRCN2VLR: TBCDField;
    SQLContasReceberCTRCN2DESCFIN: TBCDField;
    SQLContasReceberNUMEICOD: TIntegerField;
    SQLContasReceberPORTICOD: TIntegerField;
    SQLContasReceberCTRCN2TXMULTA: TBCDField;
    SQLContasReceberCTRCN2TXJURO: TBCDField;
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
    PanelBombas: TPanel;
    SQLItensVendaTempTERMICOD: TIntegerField;
    SQLItensVendaTempNUMITEM: TIntegerField;
    SQLItensVendaTempCODIGO: TIntegerField;
    SQLItensVendaTempDESCRICAO: TStringField;
    SQLItensVendaTempQUANTIDADE: TBCDField;
    SQLItensVendaTempVLRUNITBRUT: TBCDField;
    SQLItensVendaTempVLRDESC: TBCDField;
    SQLItensVendaTempVLRTOTAL: TBCDField;
    SQLItensVendaTempICMSICOD: TIntegerField;
    SQLItensVendaTempVENDICOD: TIntegerField;
    SQLItensVendaTempTROCA: TStringField;
    SQLItensVendaTempDESCRICAOTEC: TStringField;
    SQLItensVendaTempVLRCUSTO: TBCDField;
    SQLItensVendaTempALIQUOTA: TBCDField;
    SQLItensVendaTempBASEICMS: TBCDField;
    SQLItensVendaTempVLRICMS: TBCDField;
    SQLItensVendaTempNROSERIE: TStringField;
    SQLItensVendaTempVLRQDEVERIAVENDER: TBCDField;
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
    SQLParcelasVistaVendaTempVALORPARC: TBCDField;
    SQLParcelasVistaVendaTempTIPOPADR: TStringField;
    SQLParcelasPrazoVendaTemp: TRxQuery;
    SQLParcelasPrazoVendaTempTERMICOD: TIntegerField;
    SQLParcelasPrazoVendaTempDATAVENCTO: TDateTimeField;
    SQLParcelasPrazoVendaTempNROPARCELA: TIntegerField;
    SQLParcelasPrazoVendaTempVALORVENCTO: TBCDField;
    SQLParcelasPrazoVendaTempNUMEICOD: TIntegerField;
    SQLParcelasPrazoVendaTempTIPOPADR: TStringField;
    DSSQLParcelasPrazoVendaTemp: TDataSource;
    SQLProdutoPRODA15APAVIM: TStringField;
    SQLProdutoPRODA15RUA: TStringField;
    SQLProdutoPRODA15PRATEL: TStringField;
    SQLProdutoPRODA2CSTPIS: TStringField;
    SQLProdutoPRODN2ALIQCOFINS: TBCDField;
    SQLProdutoPRODN2ALIQPIS: TBCDField;
    SQLProdutoPRODA2CSTCOFINS: TStringField;
    SQLItensVendaTempCANCELADO: TStringField;
    SQLProdutoPRODN3PESOLIQ: TBCDField;
    SQLItensVendaTempAliquotaMedia: TFloatField;
    SQLProdutoPRODIORIGEM: TIntegerField;
    SQLProdutoPRODISITTRIB: TIntegerField;
    SQLProdutoNCMICOD: TIntegerField;
    SQLItensVendaTempValorImpostoMedio: TFloatField;
    SQLProdutoPRODA255DESCRTEC: TMemoField;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ScrollBoxPrincipal: TScrollBox;
    AdvSmoothPanel4: TAdvSmoothPanel;
    RxLabel2: TRxLabel;
    EditQtde: TCurrencyEdit;
    EntradaDados: TEdit;
    AdvSmoothPanel3: TAdvSmoothPanel;
    LblSubTotal: TRxLabel;
    CurSubTotal: TCurrencyEdit;
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
    AdvDetalheVenda: TAdvSmoothPanel;
    lbRef: TRxLabel;
    LBSaldo: TRxLabel;
    rxVendedor: TRxLabel;
    rxClienteNome: TRxLabel;
    AdvSmoothPanel5: TAdvSmoothPanel;
    slideshow: TAdvSmoothSlideShow;
    btnF1: TAdvGlowButton;
    btnF2: TAdvGlowButton;
    btnF4: TAdvGlowButton;
    btnF3: TAdvGlowButton;
    LabelLeitor: TLabel;
    AdvSmoothPanel6: TAdvSmoothPanel;
    shpStatusECF: TShape;
    lbStatusECF: TRxLabel;
    rxParceiro: TRxLabel;
    ImgUsuario: TImage;
    RxLabel5: TRxLabel;
    RxUsuario: TRxLabel;
    Image1: TImage;
    RxLabel4: TRxLabel;
    RxTerminal: TRxLabel;
    ValorBonusTroca: TCurrencyEdit;
    LblBonusTroca: TRxLabel;
    DescricaoProduto: TRxLabel;
    LblInstrucoes: TRxLabel;
    AdicionalProduto: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel1: TRxLabel;
    RxLabel8: TRxLabel;
    RxLabel10: TRxLabel;
    shpStatusServidor: TShape;
    lbStatusServidor: TRxLabel;
    btnF11: TAdvGlowButton;
    btnF12: TAdvGlowButton;
    btnSair: TAdvGlowButton;
    ConerBtn1: TAdvGlowButton;
    rxClienteFone: TRxLabel;
    RxLabel9: TRxLabel;
    rxClienteEmail: TRxLabel;
    RxLabel13: TRxLabel;
    MemoRetornoNFE: TMemo;
    ACBrNFeDANFeESCPOS: TACBrNFeDANFeESCPOS;
    ACBrNFe: TACBrNFe;
    PanelDadosConvenio: TPanel;
    LblConvenio: TLabel;
    WBResposta: TWebBrowser;
    PanelDataHora: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EntradaDadosKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure CurSubTotalEnter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ListaItensEnter(Sender: TObject);
    procedure DsSQLProvedorCartaoDataChange(Sender: TObject;
      Field: TField);
    procedure TimerLeitorTimer(Sender: TObject);
    procedure SerialAfterReceive(Sender: TObject; data: String);
    procedure EntradaDadosEnter(Sender: TObject);
    procedure BtnF1Click(Sender: TObject);
    procedure SQLItensVendaTempOKNewRecord(DataSet: TDataSet);
    procedure FotoClick(Sender: TObject);
    procedure SQLItensVendaTempNewRecord(DataSet: TDataSet);
    procedure RunLBEnd(Sender: TObject);
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

    Function  GravaCupom:Boolean;
    Function  GravaCupomItem:Boolean;
    procedure BtF7Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TabPublicidadeShow(Sender: TObject);
    procedure TabVendaShow(Sender: TObject);
    procedure setarceiroClick(Sender: TObject);

  private
    { Private declarations }
    WNumItem, ItemCancelado : integer ;
    FormatStrQuant, FormatStrVlrVenda,
    InfDesc,
    Tributo, sXML : string ;
    VerCaixa, TemProdutoSemSubsTrib, TemProdutoComSubsTrib, AplicarDescontoItem : boolean ;
    Tecla : Word;

    Peso          : Double;
    PesoP05A      : array[0..5]of char;
    PesoP05B      : array[0..7]of char;
    Toledo_Dir, PesoSTR : String;
    Toledo_Porta, Toledo_Baud, Toledo_Paridade, Toledo_DataBits, Toledo_OpcoesDiponibilizar, Toledo_TipoLeitura : Integer;

    Urano_Modelo, Urano_Operacao : Integer;
    Urano_Porta : string;
    Urano_PesoLido : TextFile;
    RetornoCartao : TInfoRetorno;
    DadosImpressora : TInfoImpressao;

    procedure CalculaTotal ;
    procedure CapturaCodigosIniciais ;
    procedure InformaDescricaoTecnicaProduto;
    function  VerificaCartaoCredito : Boolean;
    procedure Inicia_NFe;
    function Gerar_NFCe(idCupom:string): string;
    procedure LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
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
    ValorTotItem,
    NroSerieProduto, TipoDesc, ProvedorCartao, NomeNumerarioCartao, Msg, LbinstrucoesOld : string ;
    TrocandoItens, SolicitarPreco, SolicitarPrecoQDeveriaSerVendido, GPAtivo, MostraPublicidade : boolean ;
    ValorItem, ValorItemQDeveriaSerVendido, ValorCustoTotal, ValorLucroTotal : Currency;
    DescItemPerc,
    DescItemVlr,DescItemVlrUnitario,
    TotalDescItens,
    ReducaoICMS,
    QuantItem,QuantProx, SaldoEstoqueAtual, xNewQtd, xTotal, xCalculado : Double;
    VendPreVenda  : integer;
    BlobStream : TStream;
    JPEGImage  : TJPEGImage;
    Arquivo : TextFile;
    procedure PreparaEstadoBalcao(Estado : string) ;
    procedure TestaStatusCaixa ;
    procedure CancelarVenda ;
    procedure LimparVariaveis ;
    procedure LimparTabTempItens ;
  end;

var
  FormTelaItens: TFormTelaItens;
  SpeedBtn : array of TSpeedButton;
  VarEncerrante:Integer;
  Bloqueiovenda:String;
  VendeuManual : Boolean;
  IniFile : TIniFile;

implementation

uses DataModulo, UnitLibrary, TelaTipoDescontoItem,TelaConsultaRapidaItem,
     TelaItensIncluidosCupom, TelaFechamentoVenda, TelaTeclasAtalhoTelaItens, ImportarPreVenda, MovimentoCaixaCheckout,
     TelaTiraTeima, TelaCadastroRapidoCliente, CadastroCliente, TelaConsultaRapidaCliente,
     CadastroCupom, TelaConsultaRapidaConvenio, FormResources, VarSYS, Telalogin, UnitCheckoutLibrary,
     TelaDadosVersao, TelaTotaisCaixa, ImportarPedidoOrcamento, TelaDescricaoTecnicaProduto,
     ConsultaProvedor, WaitWindow, CadastroPedidoVenda,
     TelaCadastroRapidoProdutos, LeitorCodigoBarrasCheckout, WindowsLibrary,
     TelaInformaNumeroSerieProduto, TelaMarcacaoConsulta,
     TelaTransfereNroSerial, TelaConsultaSaldoPorEmpresa, UnSoundPlay,
     TelaLucro, TelaFotoExpandida, CadastroProfExterno, TelaTransferenciaMercadoria,
     PrincipalRelatorios, TelaLembreteTarefa,
     TelaPrecoAlterado, BalancaFilizola, BalancaToledo, BalancaUrano,
     TelaConsultaPlaca, TelaProdutoNaoEncontrado, TelaConsultaRapidaCupom ;

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
Var
  Ok : Boolean;
begin
  {$IFDEF ACBrNFeOpenSSL}
    ACBrNFe.Configuracoes.Certificados.Certificado  := dm.sqlEmpresa.FieldByName('EMPRA100CERTIFSERIE').AsString;
    ACBrNFe.Configuracoes.Certificados.Senha        := dm.sqlEmpresa.FieldByName('EMPRA35CERTIFSENHA').AsString;
  {$ELSE}
    ACBrNFe.Configuracoes.Certificados.NumeroSerie  := dm.sqlEmpresa.FieldByName('EMPRA100CERTIFSERIE').AsString;
    ACBrNFe.Configuracoes.Certificados.Senha        := dm.sqlEmpresa.FieldByName('EMPRA35CERTIFSENHA').AsString;
  {$ENDIF}

  ACBrNFe.Configuracoes.WebServices.UF              := dm.sqlEmpresa.FieldByName('EMPRA2WSUF').AsString;

 { if ACBrNFe.DANFE <> nil then
    ACBrNFe.DANFE.Logo := dm.sqlEmpresa.FieldByName('EMPRA100CAMINHOLOGO').AsString; }

  {Impressao em}
  if EcfAtual = 'NFCE DARUMA' then
    begin
      ACBrNFeDANFeESCPOS.MarcaImpressora       := iDaruma;
      ACBrNFeDANFeESCPOS.Device.Porta          := PortaECFAtual;
      ACBrNFeDANFeESCPOS.Device.Baud           := VelocECFAtual;
      ACBrNFeDANFeESCPOS.ImprimeEmUmaLinha     := True;
      ACBrNFeDANFeESCPOS.ImprimeDescAcrescItem := True;
      ACBrNFeDANFeESCPOS.IgnorarTagsFormatacao := False;
    end;
end;

procedure TFormTelaItens.LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
begin
  MemoRetornoNFE.Lines.SaveToFile(ExtractFileDir(application.ExeName)+'temp.xml');
  MyWebBrowser.Navigate(ExtractFileDir(application.ExeName)+'temp.xml');
end;

function TFormTelaItens.Gerar_NFCe(idCupom:string): string;
var NumNFe, iCRT : integer;
begin
  dm.sqlconsulta.close;
  dm.sqlconsulta.sql.clear;
  dm.sqlconsulta.sql.text := 'Select Max(CUPOINRO) from cupom where termicod='+dm.SQLTerminalAtivoTermicod.asstring;
  dm.sqlconsulta.open;
  if not dm.sqlconsulta.fieldbyname('MAX').IsNull then
     NumNFe := dm.sqlconsulta.fieldbyname('MAX').value + 1
  else
    NumNFe := 1;

  ACBrNFe.NotasFiscais.Clear;
  with ACBrNFe.NotasFiscais.Add.NFe do
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
           dm.sqlconsulta.sql.Text := 'select PRODA30ADESCRREDUZ,PRODA60CODBAR,PRODA60REFER,PRODIORIGEM, PRODISITTRIB, PRODA1TIPO, PRODA1MODBC,PRODA1MODBCST,PRODA1MODBCST from produto where prodicod='+ SQLImpressaoCupom.fieldbyname('PRODICOD').AsString;
           dm.sqlconsulta.open;

           with Det.Add do
             begin
               Prod.nItem    := SQLImpressaoCupom.fieldbyname('CPITIPOS').AsInteger;
               Prod.cProd    := SQLImpressaoCupom.fieldbyname('PRODICOD').AsString;
               if length(dm.sqlConsulta.fieldbyname('PRODA60CODBAR').AsString) > 9 then
                 Prod.cEAN     := dm.sqlConsulta.fieldbyname('PRODA60CODBAR').AsString;
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

               if length(dm.sqlConsulta.fieldbyname('PRODA60CODBAR').AsString) > 7 then
                 Prod.cEANTrib  := dm.sqlConsulta.fieldbyname('PRODA60CODBAR').AsString;
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
                 end;
             end;
           SQLImpressaoCupom.next;
         end;

      {Totais da NFCe}
      SQLImpressaoCupom.Close;
      SQLImpressaoCupom.RequestLive := False;
      SQLImpressaoCupom.SQL.Clear;
      SQLImpressaoCupom.SQL.Add('Select * From CUPOM Where CUPOA13ID = "'+idCupom+'"');
      SQLImpressaoCupom.Open;

      Total.ICMSTot.vBC     := 0; //SQLImpressaoCupom.fieldbyname('CUPON2BASEICMS').AsFloat;
      Total.ICMSTot.vICMS   := 0; //SQLImpressaoCupom.fieldbyname('CUPON2VLRICMS').AsFloat;
      Total.ICMSTot.vBCST   := 0;
      Total.ICMSTot.vST     := 0;
      Total.ICMSTot.vProd   := SQLImpressaoCupom.fieldbyname('CUPON2TOTITENS').AsFloat;
      Total.ICMSTot.vFrete  := 0;
      Total.ICMSTot.vSeg    := 0;
      Total.ICMSTot.vDesc   := SQLImpressaoCupom.fieldbyname('CUPON2DESC').AsFloat;
      Total.ICMSTot.vII     := 0;
      Total.ICMSTot.vIPI    := 0;
      Total.ICMSTot.vPIS    := 0;
      Total.ICMSTot.vCOFINS := 0;
      Total.ICMSTot.vOutro  := 0;
      Total.ICMSTot.vNF     := SQLImpressaoCupom.fieldbyname('CUPON2TOTITENS').AsFloat;

      Total.ISSQNtot.vServ   := 0;
      Total.ISSQNTot.vBC     := 0;
      Total.ISSQNTot.vISS    := 0;
      Total.ISSQNTot.vPIS    := 0;
      Total.ISSQNTot.vCOFINS := 0;

      Transp.modFrete := mfSemFrete; // NFC-e não pode ter FRETE

      with pag.Add do //PAGAMENTOS apenas para NFC-e
        begin
          tPag := fpDinheiro;
          vPag := SQLImpressaoCupom.fieldbyname('CUPON2TOTITENS').AsFloat;
        end;

      InfAdic.infCpl     :=  '';
      InfAdic.infAdFisco :=  '';

      // Gerar XML
      SQLImpressaoCupom.Close;
      ACBrNFe.NotasFiscais.Items[0].SaveToFile;
      result := ACBrNFe.NotasFiscais.Items[0].NomeArq;

      SQLImpressaoCupom.Close;
      SQLImpressaoCupom.RequestLive := True;
      SQLImpressaoCupom.SQL.Clear;
      SQLImpressaoCupom.SQL.Add('Select CUPOINRO From CUPOM Where CUPOA13ID ="'+idCupom+'"');
      SQLImpressaoCupom.Open;
      SQLImpressaoCupom.Edit;
      SQLImpressaoCupom.fieldbyname('CUPOINRO').Value := NumNFe;
      SQLImpressaoCupom.Post;
      SQLImpressaoCupom.Close;
   end;
end;

procedure TFormTelaItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if EstadoPDVChk <> AguardandoNovaVenda then
    begin
      InformaG('Só é possível sair do ' + Application.Title + ' enquanto está aguardando nova venda!') ;
      Action := caNone ;
      SQLItensVendaTemp.Open ;
      Exit ;
    end ;

  // DESABILITAR LEITOR
  if LeitorCodigoBarras <> '' then
    begin
      try
        FecharPortaLEITOR(LeitorCodigoBarras,PortaLeitorCodigoBarras);
        TimerLeitor.Enabled := False;
      except
        on E:Exception do
          begin
            Informa('Problemas ao desabilitar leitor de código de Barras, ANOTE O ERRO:' + #13 + E.Message);
            LabelLeitor.Visible := False;
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

  SQLItensVendaTemp.Close ;

  Application.ProcessMessages;

  Action := cafree ;

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
  I, Tabela, TentaAbrirTabelaVendaTemp : integer;
  Info : TInfoRetorno;
  ValorTotalCartaoSTR, NomeRede, NroTransacao, Finalizacao : string;
  ValorTotalCartaoFloat : Double;
  IniFile: TiniFile;
begin
  {Ajustar paineis na Tela}
  Width    := Screen.Width;
  Height   := Screen.Height;
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
      slideshow.Enabled := True;
      PagePrincipal.ActivePage := TabPublicidade;
    end
  else
    begin
      slideshow.Enabled := False;
      PagePrincipal.ActivePage := TabVenda;
    end;

  IniFile := TIniFile.Create ('Parceiro.INI');
  ParceiroNome     := IniFile.ReadString('IB_SOFTWARE','LinhaA','Conceitos Sistemas 51 8411 0414');
  ParceiroPath     := IniFile.ReadString('IB_SOFTWARE','LinhaD','');
  SendDirectory    := IniFile.ReadString('IB_SOFTWARE','Tef_Dial_SendDirectory','');
  ReceiveDirectory := IniFile.ReadString('IB_SOFTWARE','Tef_Dial_ReceiveDirectory','');
  F2_AUTOMATICO    := IniFile.ReadString('IB_SOFTWARE','F2_AUTOMATICO','N');
  DetalhesVenda    := IniFile.ReadString('IB_SOFTWARE','DetalhesVenda','N');
  Enter_Vazio := IniFile.ReadString('IB_SOFTWARE','ENTER','S');
  GravarCupomCancelado    := IniFile.ReadString('IB_SOFTWARE','GravarCupomCancelado','S');
  GravarDisplaySequencial := IniFile.ReadString('IB_SOFTWARE','GravarDisplaySequencial','N');
  NotaGaucha := IniFile.ReadString('IB_SOFTWARE','NotaGaucha','N');

  IniFile.Free;

  TabelaMaisTerminal := 'ItensVendaTemp_' + FormatFloat('###000', TerminalAtual);
  SQLItensVendaTemp.TableName := TabelaMaisTerminal;

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

  if not FileExists('Temp\'+TabelaMaisTerminal+'.db') then
    SQLItensVendaTemp.CreateTable ;

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

  if FileExists('Bmp\Logo PDV.Bmp') then
    Foto.Picture.LoadFromFile('Bmp\Logo PDV.Bmp') ;
  if FileExists('Bmp\Logo PDV.Jpg') then
    Foto.Picture.LoadFromFile('Bmp\Logo PDV.Jpg') ;

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
  RxParceiro.caption    := ParceiroNome;
  EmpresaAtualNome      := SQLLocate('EMPRESA','EMPRICOD','EMPRA60NOMEFANT',EmpresaPadrao);
  RxTerminal.Caption    := TerminalAtualNome;
  RxUsuario.Caption     := UsuarioAtualNome;
  if dm.SQLTerminalAtivoVENDICOD.AsString <> '' then
    Rxvendedor.Caption    := SQLLocate('VENDEDOR', 'VENDICOD', 'VENDA60NOME', dm.SQLTerminalAtivoVENDICOD.AsString) ;

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
  NomeRede     := '';
  NroTransacao := '';
  Finalizacao  := '';
  GPAtivo := False;

  // VERIFICA LEITOR DE COD DE BARRAS PRESENTE
  if LeitorCodigoBarras <> '' then
    begin
      try
        if AbrirPortaLEITOR(LeitorCodigoBarras,PortaLeitorCodigoBarras) then
          begin
            TimerLeitor.Enabled := True;
            LabelLeitor.Visible := True;
          end;
      except
        on E:Exception do
          begin
            Informa('Problemas ao habilitar leitor de código de barras, ANOTE O ERRO:' + #13 + E.Message);
            LabelLeitor.Visible := False;
          end;
      end;
    end;

  // Pega Configs do arquivo P05.INI
  if FileExists('BalancaCheckoutToledo.txt') then
    begin
      IniFile:=TIniFile.Create(ExtractFilePath(ParamStr(0))+cArquivoINI);
      try
        Toledo_Porta                   := IniFile.ReadInteger(cSessaoConf,cPorta,0);
        Toledo_Baud                    := IniFile.ReadInteger(cSessaoConf,cBaudRate,0);
        Toledo_Paridade                := IniFile.ReadInteger(cSessaoConf,cParidade,2);
        Toledo_DataBits                := IniFile.ReadInteger(cSessaoConf,cDataBits,0);
        Toledo_OpcoesDiponibilizar     := IniFile.ReadInteger(cSessaoConf,cDiponibi,0);
        Toledo_TipoLeitura             := IniFile.ReadInteger(cSessaoConf,cTipoLeitura,0);
        Toledo_Dir                     := IniFile.ReadString(cSessaoConf,cDirPESO,ExtractFilePath(ParamStr(0)));
      finally
        IniFile.Free;
      end;
    end;
  // Pega Configs do arquivo LerPesoUrano.INI
  if FileExists('BalancaCheckoutUrano.txt') then
    begin
      IniFile:=TIniFile.Create('LePesoUrano.INI');
      try
        Urano_Porta                   := IniFile.ReadString('Configuracao','IPortaSerial','COM4');
        Urano_Modelo                  := IniFile.ReadInteger('Configuracao','IModeloBalanca',0);
        Urano_Operacao                := IniFile.ReadInteger('Configuracao','IModoOperacao',0);
      finally
        IniFile.Free;
      end;
    end;

  if DetalhesVenda = 'S' then
    AdvDetalheVenda.Visible := True;

  // Pega NFCe Configs Iniciais
  if (EcfAtual = 'NFCE DARUMA') then
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
          if TerminalModo = 'C' then
            if not Pergunta('NAO', '* * * CONFIRMA O CANCELAMENTO DESTA VENDA ? * * *') then
              Exit ;

          if TerminalModo = 'P' then
            if not Pergunta('NAO', '* * * CONFIRMA O CANCELAMENTO DESTA PRÉ-VENDA ? * * *') then
              Exit ;

          LblBonusTroca.Visible    := False;
          LblBonusTroca.Update;
          ValorBonusTroca.Value    := 0 ;
          ValorBonusTroca.Visible  := False;
          ValorBonusTroca.Update;
          rxVendedor.Visible   := False;
          rxVendedor.Caption := '';
          rxVendedor.Update;

          ContinuarPreVenda       := False ;
          ReativarPreVenda        := False ;
          vImportarPreVenda       := False ;
          ImportandoPreVenda      := False ;

          if TerminalModo <> 'P' then
            if DM.SQLUsuario.Locate('USUAICOD',UsuarioCorrente,[]) then
              if DM.SQLUsuario.FieldByName('USUACCANCVENDA').AsString <> 'S' then
                begin
                  RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACCANCVENDA',RetornoUser);
                  if RetornoCampoUsuario <> 'S' then
                    Exit;
                end;

          CancelarVenda ;
          EstadoPDVChk := AguardandoNovaVenda ;
          PreparaEstadoBalcao(EstadoPDVChk) ;
          EntradaDados.Clear ;
        end ;
    end ;

  if Key = VK_Return then
  begin
    {* * * * AGUARDANDO NOVA VENDA * * * *}
    if (EstadoPDVChk = AguardandoNovaVenda) and (F2_AUTOMATICO = 'S') then
      FormKeyDown(Sender, F2, [ssAlt]);

    {* * * * AGUARDANDO NOVA VENDA * * * *}
    if (EstadoPDVChk = AguardandoNovaVenda) then
    begin
      if ((Enter_Vazio = 'N') and (EntradaDados.Text='')) then exit;

      if SQLProduto.Active then SQLProduto.Close;
      if not SQLItensVendaTemp.Active then exit;
      if (EntradaDados.Text = '') or
         ((EntradaDados.Text <> '') and
          not IsOld(EntradaDados.Text))and
          (not EncontrouProduto(trim(EntradaDados.Text),SQLProduto)) then
      begin
        Application.CreateForm(TFormTelaConsultaRapidaItem, FormTelaConsultaRapidaItem);
        FormTelaConsultaRapidaItem.ShowModal;

        if CodigoProduto = '' then
          exit;
        EntradaDados.Text := CodigoProduto;
      end;

      if EntradaDados.Text <> '' then
        begin
          if SQLProduto.IsEmpty then EncontrouProduto(EntradaDados.Text,SQLProduto);
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
                    DM.SQLTemplate.Open ;
                    if DM.SQLTemplate.FieldByName('QUANT').asstring <> '' then
                      begin
                        SaldoEstoqueAtual := DM.SQLTemplate.FieldByName('QUANT').Value;
                        LBSaldo.Caption   := FormatFloat('##0.000',DM.SQLTemplate.FieldByName('QUANT').Value);
                        LBSaldo.Update;
                      end
                    else
                      begin
                        LBSaldo.Caption := 'Saldo: Não Consta';
                        LBSaldo.Update;
                      end;
                  end;
                ////////////////////////////////////////////////////////////////////////////////
                Application.CreateForm(TFormTelaTiraTeima, FormTelaTiraTeima);
                FormTelaTiraTeima.DescricaoProduto.Caption := SQLProdutoPRODICOD.AsString+'-'+SQLProduto.FieldByName('PRODA60DESCR').AsString;
                if RetornaTamanhoProduto(SQLProdutoGRADICOD.AsString,SQLProdutoGRTMICOD.AsString) <> '' then
                  FormTelaTiraTeima.DescricaoProduto.Caption := FormTelaTiraTeima.DescricaoProduto.Caption + '/' + RetornaTamanhoProduto(SQLProdutoGRADICOD.AsString,SQLProdutoGRTMICOD.AsString);

                if DM.SQLConfigVendaTPRCICOD.AsString <> '' then
                  FormTelaTiraTeima.PrecoNormal.Value  := StrToFloat(FormatFloat(FormatStrVlrVenda,RetornaPreco(SQLProduto, DM.SQLConfigVendaTPRCICOD.AsString, UsaPrecoVenda)))
                else
                  FormTelaTiraTeima.PrecoNormal.Value  := SQLProduto.FieldByName('PRODN3VLRVENDA').AsFloat;
                // Testa se mostra preco atacado
                if dm.SQLTerminalAtivoTERMCMPATACADO.Value = 'S' then
                  begin
                    FormTelaTiraTeima.lbPrecoAtacado.Visible := True;
                    FormTelaTiraTeima.PrecoAtacado.Visible   := True;
                    FormTelaTiraTeima.PrecoAtacado.Value     := SQLProduto.FieldByName('PRODN3VLRVENDA2').AsFloat;
                  end;

                if ((SQLProduto.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (SQLProduto.FieldByName('PRODDFIMPROMO').AsDateTime >= Now) and (SQLProduto.FieldByName('PRODN3VLRVENDAPROM').AsFloat>0)) or
                   ((SQLProduto.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (SQLProduto.FieldByName('PRODDFIMPROMO').AsString = '') and (SQLProduto.FieldByName('PRODN3VLRVENDAPROM').AsFloat>0)) then
                  FormTelaTiraTeima.PrecoPromocao.Value := SQLProduto.FieldByName('PRODN3VLRVENDAPROM').AsFloat
                else
                  FormTelaTiraTeima.PrecoPromocao.Value := 0;

                if FormTelaTiraTeima.PrecoPromocao.Value > 0 then
                  begin
                    FormTelaTiraTeima.lbPrecoPromocao.Visible := True;
                    FormTelaTiraTeima.PrecoPromocao.Visible   := True;
                  end
                else
                  begin
                    FormTelaTiraTeima.lbPrecoPromocao.Visible := False;
                    FormTelaTiraTeima.PrecoPromocao.Visible   := False;
                  end;

                if SQLProduto.FieldByName('PRODA255DESCRTEC').AsString <> '' then
                  FormTelaTiraTeima.DescricaoTecnica.Caption := 'Ref.'+SQLProduto.FieldByName('PRODA60REFER').AsString+CHR(13)+
                                                                SQLProduto.FieldByName('PRODA255DESCRTEC').AsString;
                FormTelaTiraTeima.SaldoAtual.Value := 0;
                if DetalhesVenda = 'S' then
                  if DM.SQLTemplate.FieldByName('QUANT').AsString <> '' then
                    FormTelaTiraTeima.SaldoAtual.Value := DM.SQLTemplate.FieldByName('QUANT').Value;

                FormTelaTiraTeima.LBMarca.Caption       := dm.SQLLocate('MARCA','MARCICOD','MARCA60DESCR',SQLProdutoMARCICOD.AsString);
                FormTelaTiraTeima.lbGrupo.Caption       := dm.SQLLocate('GRUPO','GRUPICOD','GRUPA60DESCR',FormTelaItens.SQLProdutoGRUPICOD.AsString);
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
                  end
                else
                  FormTelaTiraTeima.Foto.Picture.Assign(FormTelaItens.Foto.Picture) ;

                FormTelaTiraTeima.ShowModal;
                if DetalhesVenda = 'S' then
                  begin
                    LBRef.Caption   := '' ;
                    LBSaldo.Caption := '' ;
                  end;  
              end
            else
              ProdutoNaoCadastrado;

          EntradaDados.Clear;
        end;
    end ;
    {* * * * INFORMADO ITENS * * * *}
    if (EstadoPDVChk = InformandoItens) or (EstadoPDVChk = InformandoItensTroca) then
    begin
      if (Enter_Vazio = 'N') and (EntradaDados.Text='') then exit;

      if not SQLItensVendaTemp.Active then exit;
      LblInstrucoes.Caption := 'Aguarde, Procurando Produto...';
      LblInstrucoes.Refresh;
      E_PRODBALANCA := False;
      QuantItem := EditQtde.Value;
      if (EntradaDados.Text = '') or ((EntradaDados.Text <> '') and
         (not EncontrouProduto(trim(EntradaDados.Text),SQLProduto)) and
         (not IsOld(EntradaDados.Text))) then
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
                  SQLProduto.SQL.Add('Select * From PRODUTO');
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
                      // MANDA DADOS DISPLAY TECLADO
                      IF TecladoReduzidoModelo = 'TEC44DIS' THEN
                        EnviaTecladoTextoDisplay44('Atencao!', 'Produto nao Encontrado');
                      IF TecladoReduzidoModelo = 'TEC65' THEN
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
                  IF TecladoReduzidoModelo = 'TEC44DIS' THEN
                    EnviaTecladoTextoDisplay44('Atencao!', 'Produto nao Encontrado');
                  IF TecladoReduzidoModelo = 'TEC65' THEN
                    EnviaTecladoTextoDisplay65('Atencao!', 'Produto nao Encontrado');
                  ProdutoNaoCadastrado;
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
                  // MANDA DADOS DISPLAY TECLADO
                  IF TecladoReduzidoModelo = 'TEC44DIS' THEN
                    EnviaTecladoTextoDisplay44('Atencao!', 'Procurar pela Descricao do Produto');
                  IF TecladoReduzidoModelo = 'TEC65' THEN
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
          // MANDA DADOS DISPLAY TECLADO
          IF TecladoReduzidoModelo = 'TEC44DIS' THEN
            EnviaTecladoTextoDisplay44('Atencao!', 'Produto nao Encontrado!');
          IF TecladoReduzidoModelo = 'TEC65' THEN
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
          LblBonusTroca.Visible    := True;
          LblBonusTroca.Update;
          ValorBonusTroca.Visible  := True;
          ValorBonusTroca.Update;
        end;

      // RETORNA SALDO DO PRODUTO
      if DetalhesVenda = 'S' then
        begin
          DM.SQLTemplate.Close;
          DM.SQLTemplate.SQL.Clear;
          DM.SQLTemplate.SQL.Add('select PRODUTO.PRODICOD, PRODUTO.PRODCVDESTNEG, ');
          DM.SQLTemplate.SQL.Add('(select PRODUTOSALDO.PSLDN3QTDE from PRODUTOSALDO');
          DM.SQLTemplate.SQL.Add('where PRODUTOSALDO.EMPRICOD = ' + EmpresaPadrao);
          DM.SQLTemplate.SQL.Add('and   PRODUTOSALDO.PRODICOD = PRODUTO.PRODICOD) as QUANT');
          DM.SQLTemplate.SQL.Add('from PRODUTO');
          DM.SQLTemplate.SQL.Add('where PRODUTO.PRODICOD = ' + SQLProdutoPRODICOD.AsString);
          DM.SQLTemplate.Open ;
          if DM.SQLTemplate.FieldByName('QUANT').asstring <> '' then
            begin
              SaldoEstoqueAtual := DM.SQLTemplate.FieldByName('QUANT').Value;
              LBSaldo.Caption   := FormatFloat('##0.000',DM.SQLTemplate.FieldByName('QUANT').Value);
              LBSaldo.Update;
            end
          else
            begin
              LBSaldo.Caption := 'Saldo: Não Consta';
              LBSaldo.Update;
            end;
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
              BlobStream:= SQLProduto.CreateBlobStream(SQLProdutoPRODBIMAGEM,bmRead);
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
                Foto.Picture.LoadFromFile('Bmp\Logo PDV.Bmp') ;
              if FileExists('Bmp\Logo PDV.Jpg') then
                Foto.Picture.LoadFromFile('Bmp\Logo PDV.Jpg') ;
            end;
        end;

      if SolicitarPreco and (EditQtde.Text <> '') then
      begin
        try
          DescricaoProduto.Caption := SQLProdutoPRODA60DESCR.Value;
          DescricaoProduto.Update;
          AdicionalProduto.Caption := '';
          AdicionalProduto.Update;
          if DetalhesVenda = 'S' then
            begin
              LBRef.caption  := SQLProdutoPRODA60REFER.Value;
              LBRef.Update;
            end;

          // ValorItem := StrToFloat(InputBox('Alteração de Valor do Item', 'Prompt', FormatFloat(FormatStrVlrVenda, RetornaPreco(SQLProduto, DM.SQLConfigVendaTPRCICOD.AsString, ''))));
          // MANDA DADOS DISPLAY TECLADO
          IF TecladoReduzidoModelo = 'TEC44DIS' THEN
            EnviaTecladoTextoDisplay44('Alterar o Valor do Item', '');
          IF TecladoReduzidoModelo = 'TEC65' THEN
            EnviaTecladoTextoDisplay65('Alterar o Valor do Item', '');

          // ValorItem := StrToFloat(InputBox('Alteração de Valor do Item', 'Prompt', FormatFloat(FormatStrVlrVenda, RetornaPreco(SQLProduto, DM.SQLConfigVendaTPRCICOD.AsString, UsaPrecoVenda))));
          // Adilson - Colocar pq os clientes reclamavam que nao podiam cancelar o lanc.do produto
          { Para Dutoal, testar se o produto tem peso liquido, se tiver o valor a ser digitado deve ser o valor unitario do Kilo e ser multiplicado
            pelo Peso Liquido}

          Application.CreateForm(TFormTelaPrecoAlterado,FormTelaPrecoAlterado);
          if FileExists('Dutoal.txt') and (SQLProdutoPRODN3PESOLIQ.Value>0) then
            FormTelaPrecoAlterado.lbVlrUnitario.caption := 'Informe o Valor do KG';
          FormTelaPrecoAlterado.EditValorTotal.Value := RetornaPreco(SQLProduto, DM.SQLConfigVendaTPRCICOD.AsString, UsaPrecoVenda);
          FormTelaPrecoAlterado.ShowModal;
          if FormTelaPrecoAlterado.ModalResult = MrOK then
            begin
              if FileExists('Dutoal.txt') and (SQLProdutoPRODN3PESOLIQ.Value>0) then
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
          IF TecladoReduzidoModelo = 'TEC44DIS' THEN
            EnviaTecladoTextoDisplay44('Alterar o Valor do Item', FormatFloat('##0.00',ValorItem));
          IF TecladoReduzidoModelo = 'TEC65' THEN
            EnviaTecladoTextoDisplay65('Alterar o Valor do Item', FormatFloat('##0.00',ValorItem));

          if (Dm.SQLConfigVendaCFVECPEDEVLRPRODUTO.AsString = 'S') and (not ImportandoPreVenda) then
            SolicitarPreco := True
          else
            SolicitarPreco := false;
        except
          // MANDA DADOS DISPLAY TECLADO
          IF TecladoReduzidoModelo = 'TEC44DIS' THEN
            EnviaTecladoTextoDisplay44('Atencao!', 'Valor Digitado Invalido!');
          IF TecladoReduzidoModelo = 'TEC65' THEN
            EnviaTecladoTextoDisplay65('Atencao!', 'Valor Digitado Invalido!');
          InformaG('Valor inválido');
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

      if (ECFAtual <> '') and (PortaECFAtual <> '') then
        if SQLProdutoICMSICOD.AsString = '' then
        begin
          InformaG('Este produto não contém Alíquota de ICMS!') ;
          EntradaDados.SelectAll;
          PreparaEstadoBalcao(InformandoItens);
          exit;
        end;

      if (ValorItem = 0) then
        ValorItem := StrToFloat(FormatFloat(FormatStrVlrVenda,RetornaPreco(SQLProduto, DM.SQLConfigVendaTPRCICOD.AsString, UsaPrecoVenda)));

      CodICMS                  := '';
      CodICMS                  := SQLProdutoICMSICOD.AsString;
      DescricaoProduto.Caption := SQLProdutoPRODA60DESCR.Value;
      DescricaoProduto.Update;
      AdicionalProduto.Caption := FormatFloat(FormatStrVlrVenda, ValorItem);
      AdicionalProduto.Update;


      if DetalhesVenda = 'S' then
        begin
          LBRef.caption  := SQLProdutoPRODA60REFER.Value;
          LBRef.Update;
        end;

      if (ValorItem = 0)  and (EditQtde.Text <> '') then
      begin
        try
          // MANDA DADOS DISPLAY TECLADO
          IF TecladoReduzidoModelo = 'TEC44DIS' THEN
            EnviaTecladoTextoDisplay44('Alterar Valor do Item', '');
          IF TecladoReduzidoModelo = 'TEC65' THEN
            EnviaTecladoTextoDisplay65('Alterar Valor do Item', '');

          // ValorItem := StrToFloat(FormatFloat(FormatStrVlrVenda,StrToFloat(InputBox('Alteração de Valor do Item', 'Prompt', FormatFloat(FormatStrVlrVenda, SQLProdutoPRODN3VLRVENDA.Value))))) ;
          // Adilson - Colocar pq os clientes reclamavam que nao podiam cancelar o lanc.do produto
          Application.CreateForm(TFormTelaPrecoAlterado,FormTelaPrecoAlterado);
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
          IF TecladoReduzidoModelo = 'TEC44DIS' THEN
            EnviaTecladoTextoDisplay44('Alterar Valor do Item', FormatFloat('##0.00',ValorItem));
          IF TecladoReduzidoModelo = 'TEC65' THEN
            EnviaTecladoTextoDisplay65('Alterar Valor do Item', FormatFloat('##0.00',ValorItem));
        except
          Application.ProcessMessages;
        end;
      end;

      if QuantItem = 0 then
        begin
          EditQtde.SetFocus;
          Exit;
        end;

        
      // Testa se é para abrir a tela de Desconto no item
      if AplicarDescontoItem  then
        begin
          Application.CreateForm(TFormTelaTipoDescontoItem, FormTelaTipoDescontoItem) ;
          FormTelaTipoDescontoItem.ShowModal ;
          if FormTelaTipoDescontoItem.EditDesconto.Value > 0 then
            begin
              if FormTelaTipoDescontoItem.DescValor.Checked then
                DescItemVlr  := FormTelaTipoDescontoItem.EditDesconto.Value
              else
                DescItemPerc := FormTelaTipoDescontoItem.EditDesconto.Value;
            end;
        end;

      // Para que o Desconto seja Multiplicado pela Qtde Vendida
      if (QuantItem > 1) and (DescItemVlr > 0) then
        begin
          DescItemVlrUnitario := DescItemVlr / QuantItem ;
          DescItemVlr := DescItemVlrUnitario * QuantItem ;
        end;

      if DescItemVlr > 0 then
        if (DescItemVlr > ValorItem) and (QuantItem = 1) then
          begin
            Informa('O valor do desconto informado é maior que o valor do item!');
            EntradaDados.Clear;
            PreparaEstadoBalcao(InformandoItens);
            exit;
          end;

      if DescItemVlr > 0 then
        if DescItemVlrUnitario > ValorItem then
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

            // Testa se o usuario tem poder de Desconto, senao faz pergunta
            if PercDesqMaxUsario < DescItemPerc then
              begin
                if Pergunta('SIM','Informe a Senha para Desconto?') then
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
          end;
      if DescItemPerc > 0 then
        begin
          DescItemVlr := ValorItem * (DescItemPerc/100);
          DescItemVlr := StrToFloat(Copy(FloatToStr(DescItemVlr),1,Pos(',', FloatToStr(DescItemVlr))+2));
        end;

      // Esse teste foi colocado pq quando usa qtde padrao = 0 no configurador, nao importava os
      // Produtos de Trocas com o campo Qtde - Adilson
      if (QuantItem = 0) and ImportandoPreVenda and TrocandoItens then
         QuantItem := QuantProx;

      if QuantItem > 1000  then
        begin
          Beep;
          SoundPlay('error.wav',Sender);
          // MANDA DADOS DISPLAY TECLADO
          IF TecladoReduzidoModelo = 'TEC44DIS' THEN
            EnviaTecladoTextoDisplay44(FormatFloat('##0.000',QuantItem)+'  Quantidade esta Correta?','(Sim/Nao)');
          IF TecladoReduzidoModelo = 'TEC65' THEN
            EnviaTecladoTextoDisplay65(FormatFloat('##0.000',QuantItem)+'  Quantidade esta Correta?','(Sim/Nao)');
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
          if (TipoDesc = 'C') then
            DescItemVlr := 0 //DescItemVlr := DescItemPerc
          else
           if (TipoDesc = 'V') then
             begin
               DescItemVlr := (ValorItem * QuantItem) - ((ValorItem - DescItemPerc) * QuantItem);
             end
           else
             DescItemVlr := (ValorItem * QuantItem)* (DescItemPerc/100);

          DescItemVlr := StrToFloat(Copy(FloatToStr(DescItemVlr),1,Pos(',', FloatToStr(DescItemVlr))+3)) ;
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

      if DescItemVlr > 0 then
      begin
        AdicionalProduto.Caption := '(' + FormatFloat(FormatStrQuant, QuantItem) +
                                    '  x  ' +
                                    FormatFloat(FormatStrVlrVenda, ValorItem) + ') - ' +
                                    FormatFloat('##0.00 Desc.', DescItemVlr) + ' = ' +
                                    FormatFloat(FormatStrVlrVenda, StrToFloat(FormatFloat(FormatStrVlrVenda,((ValorItem*QuantItem)-DescItemVlr))))
                                    + ' ';
      end
      else
        AdicionalProduto.Caption := FormatFloat(FormatStrQuant, QuantItem) +
                                    '  x  ' +
                                    FormatFloat(FormatStrVlrVenda, ValorItem)  + ' = ' +
                                    FormatFloat(FormatStrVlrVenda, StrToFloat(FormatFloat(FormatStrVlrVenda,ValorItem))*
                                    StrToFloat(FormatFloat(FormatStrQuant,QuantItem))) + ' ';

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

          // Verifica Nro Serie
          if ((SQLProdutoPRODCTEMNROSERIE.AsString = 'S') and (not ImportandoPreVenda)) or
             ((SQLProdutoPRODCTEMNROSERIE.AsString = 'S') and (ImportandoPreVenda) and (NroSerieProduto = '')) then
            begin
              Application.CreateForm(TFormTelaInformaNumeroSerieProduto,FormTelaInformaNumeroSerieProduto);
              CodigoProduto := SQLProdutoPRODICOD.AsString;
              FormTelaInformaNumeroSerieProduto.ShowModal;
              if FormTelaInformaNumeroSerieProduto.ModalResult = MrOK then
                begin
                  NroSerieProduto := FormTelaInformaNumeroSerieProduto.EditNroSerie.Text;
                end;
              FormTelaInformaNumeroSerieProduto.Destroy;
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
          // Testa se o Produto Nao Tem Saldo e se o Usuario pode Vender sem Saldo
          {if FileExists('MostraSaldo.txt') and (dm.SQLConfigVendaCFVECVENDAESTNEGAT.Value = 'N') and (not TrocandoItens) and (not ContinuarPreVenda) then
            begin
                if (SaldoEstoqueAtual = 0) or (SaldoEstoqueAtual < 0) then
                  begin
                    if DM.SQLUsuario.Locate('USUAICOD',UsuarioCorrente,[]) then
                      if DM.SQLUsuario.FieldByName('USUACLIBERASALDNEG').AsString <> 'S' then
                        if Pergunta('SIM','Você não tem permissão para vender com saldo Negativo ou Zerado. Deseja Informar Outro Usuário?') then
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
            if (not TrocandoItens) and (SQLProdutoPRODCTIPOBAIXA.AsString <> 'N')  then
              begin
                if (SaldoEstoqueAtual-QuantItem < 0) then
                  begin
                    if DM.SQLUsuario.Locate('USUAICOD',UsuarioCorrente,[]) then
                      if DM.SQLUsuario.FieldByName('USUACLIBERASALDNEG').AsString <> 'S' then
                        if Pergunta('SIM','Você não tem permissão para vender com saldo Negativo ou Zerado. Deseja Informar Outro Usuário?') then
                          begin
                            RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACLIBERASALDNEG',RetornoUser);
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

          if (ECFAtual <> '') and (PortaECFAtual <> '') and (not TrocandoItens) and (not FileExists('Confirma.txt')) then
          begin
            if RetornaTotalizadorIcmsECF(Ecf_ID, CodICMS) = '' then
              begin
                InformaG('A alíquota de ICMS deste produto não possui um totalizador no ECF configurado!') ;
                EntradaDados.SelectAll ;
                exit ;
              end ;
            if (CodigoBarrasProduto = '') then
              CodigoBarrasProduto := SQLProdutoPRODICOD.AsString;
            // Para Cliente q desejam imprimir no Cupom o Cd.Interno do Produto
            if FileExists('ImprimeCodigoInternoCupom.txt') then
              CodigoBarrasProduto := SQLProdutoPRODICOD.AsString;

            if NroSerieProduto = '' then
              begin
                DescrLivreProd := copy(SQLProdutoPRODA30ADESCRREDUZ.Value,1,29);
                if (FileExists('IDDIVERSOS.TXT')) and (Trim(SQLProdutoPRODA30ADESCRREDUZ.AsString) = 'DIVERSOS') Then
                begin
                  DescrLivreProd  := UpperCase(InputBox('Descrição do Produto','Identifique o Produto',DescrLivreProd));
                end;
              end;
          end;

          SQLItensVendaTemp.Append ;
          SQLItensVendaTempTERMICOD.Value     := TerminalAtual ;
          SQLItensVendaTempCODIGO.Value       := SQLProdutoPRODICOD.Value ;

          if VendeuManual then
            SQLItensVendaTempCPITCSTATUS.AsString := 'M'
          else
            SQLItensVendaTempCPITCSTATUS.AsString := 'A';
          VendeuManual := False;

          if not TrocandoItens then
            if (NroSerieProduto <> '') then
              SQLItensVendaTempDESCRICAO.Value  := Copy(NroSerieProduto,0,30)
            else
              SQLItensVendaTempDESCRICAO.Value  := SQLProdutoPRODA30ADESCRREDUZ.Value
          else
            SQLItensVendaTempDESCRICAO.Value  := '(T)' + SQLProdutoPRODA30ADESCRREDUZ.Value;

          SQLItensVendaTempREFERENCIA.Value   := SQLProdutoPRODA60REFER.Value;
          SQLItensVendaTempMARCA.Value        := dm.SQLLocate('MARCA','MARCICOD','MARCA60DESCR',SQLProdutoMARCICOD.AsString);
          SQLItensVendaTempCOR.Value          := dm.SQLLocate('COR','CORICOD','CORA30DESCR',SQLProdutoCORICOD.AsString);
          if (SQLProduto.FieldByName('GRADICOD').AsString <> '') and (SQLProduto.FieldByName('GRTMICOD').AsString <> '') then
            SQLItensVendaTempTAMANHO.Value      := RetornaTamanhoProduto(SQLProduto.FindField('GRADICOD').AsString,SQLProduto.FindField('GRTMICOD').AsString);

          if (FileExists('IDDIVERSOS.TXT')) and (SQLItensVendaTempDESCRICAO.Asstring = 'DIVERSOS')Then
            begin
              SQLItensVendaTempDESCRICAO.Value  := Copy(DescrLivreProd,0,29);
              SQLItensVendaTempNROSERIE.value   := SQLItensVendaTempDESCRICAO.Value;
            end;

          SQLItensVendaTempPRODA60DESCR.Value   := SQLProdutoPRODA60DESCR.Value;
          if SQLItensVendaTempCOR.Value <> '' then
            SQLItensVendaTempDESCRICAO.Value := SQLItensVendaTempDESCRICAO.Value +'/'+SQLItensVendaTempCOR.Value;
          if SQLItensVendaTempTAMANHO.Value <> '' then
            SQLItensVendaTempDESCRICAO.Value := SQLItensVendaTempDESCRICAO.Value +'/'+SQLItensVendaTempTAMANHO.Value;

          SQLItensVendaTempQUANTIDADE.AsString  := FormatFloat(FormatStrQuant, QuantItem);
          SQLItensVendaTempVLRUNITBRUT.Value    := ValorItem;
          SQLItensVendaTempVLRDESC.Value        := DescItemVlr;
          TotalDescItens := TotalDescItens + DescItemVlr;

          ValorTotItem := FloatToStr(SQLItensVendaTempQUANTIDADE.Value * ValorItem);

          if DescItemVlr > 0 then
            ValorTotItem := FormatFloat(FormatStrVlrVenda,StrToFloat(ValorTotItem)  - StrTofloat(FormatFloat('0.00',DescItemVlr)));

          ValorTotItem := FormatFloat(FormatStrVlrVenda,StrToFloat(ValorTotItem));
          SQLItensVendaTempVLRTOTAL.AsString := ValorTotItem;

          if (SQLProdutoPRODISITTRIB.Value = 60) or (SQLProdutoPRODISITTRIB.Value = 400) or (SQLProdutoPRODISITTRIB.Value = 500) then
            begin
              SQLItensVendaTempBASEICMS.asFloat  := 0;
              SQLItensVendaTempALIQUOTA.AsFloat  := 0;
              ReducaoICMS                        := 0;
              SQLItensVendaTempVLRICMS.Value     := 0;
            end
          else
            begin
              SQLItensVendaTempBASEICMS.asFloat  := SQLItensVendaTempVLRTOTAL.AsFloat;
              SQLItensVendaTempALIQUOTA.AsFloat  := RetornaAliquotaICMSProduto(SQLProdutoICMSICOD.AsInteger);
              ReducaoICMS                        := RetornaREDUCAOICMSProduto(SQLProdutoICMSICOD.AsInteger);
              {if ReducaoICMS > 0 then
                begin
                  SQLItensVendaTempBASEICMS.asFloat := SQLItensVendaTempVLRTOTAL.AsFloat * (ReducaoICMS / 100);
                end;}

              SQLItensVendaTempVLRICMS.Value     :=  SQLItensVendaTempBASEICMS.asFloat * (SQLItensVendaTempALIQUOTA.AsFloat / 100);
            end;
          if DM.SQLConfigCompraCFCOCTOTPRCVENPROD.AsString <> '' then
            begin
              case DM.SQLConfigCompraCFCOCTOTPRCVENPROD.AsString[1] of
                'M' : SQLItensVendaTempVLRCUSTO.AsFloat := SQLProdutoPRODN3VLRCUSTOMED.AsFloat;
                'U' : SQLItensVendaTempVLRCUSTO.AsFloat := SQLProdutoPRODN3VLRCUSTO.AsFloat;
              end;
            end;

          if TrocandoItens then
            SQLItensVendaTempTROCA.Value := 'S';

          if VendPreVenda > 0 then
            SQLItensVendaTempVENDICOD.Value := VendPreVenda;

          if NroSerieProduto <> '' then
            SQLItensVendaTempNROSERIE.AsString := NroSerieProduto;

          if FloatToStr(ValorItemQDeveriaSerVendido) = '' then ValorItemQDeveriaSerVendido := 0;
          SQLItensVendaTempVLRQDEVERIAVENDER.asFloat  := ValorItemQDeveriaSerVendido;

          SQLItensVendaTempCODBARRAS.Value := CodigoBarrasProduto;

          NroUltItem := NroUltItem + 1;
          SQLItensVendaTempNUMITEM.Value := NroUltItem;
          SQLItensVendaTempEncerrante.Value := VarEncerrante;
          varEncerrante := 0;

          SQLItensVendaTempCANCELADO.Value := 'N';

          // Programa de Olho no Imposto
          SQLItensVendaTempAliquotaMedia.Value := RetornaAliquotaMediaProduto(SQLProdutoNCMICOD.Value, SQLProdutoPRODIORIGEM.Value);
          if SQLItensVendaTempAliquotaMedia.Value > 0 then
            SQLItensVendaTempValorImpostoMedio.Value := (SQLItensVendaTempVLRTOTAL.Value * SQLItensVendaTempAliquotaMedia.Value) / 100;

          { Removido Adilson
           if SQLItensVendaTempAliquotaMedia.Value = 0 then
            ShowMessage('Anote o NCM com ERRO para ser corrigido! NCM='+dm.SQLLocate('ncm','ncmicod','NCMA30CODIGO',SQLProdutoNCMICOD.AsString));}

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

      AplicarDescontoItem := False;
      DescItemPerc := 0 ;
      DescItemVlr  := 0 ;
      ValorItem    := 0 ;
      VendPreVenda := 0 ;

      if (DM.SQLterminalativoTERMIQTDEPADRAO.Value > 0) then
        EditQtde.Text := DM.SQLterminalativoTERMIQTDEPADRAO.AsString
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
          if Length(EntradaDados.Text) > 7 then
            begin
              DM.SQLTemplate.Close ;
              DM.SQLTemplate.SQL.Clear ;
              DM.SQLTemplate.SQL.Add('select PRODICOD from PRODUTO') ;
              DM.SQLTemplate.SQL.Add('where PRODA60CODBAR = "' + EntradaDados.Text+'"') ;
              DM.SQLTemplate.Open ;
              if not DM.SQLTemplate.EOF then
                EntradaDados.Text := 'C'+ DM.SQLTemplate.FieldByName('PRODICOD').AsString
              else
                begin
                  DM.SQLTemplate.Close ;
                  DM.SQLTemplate.SQL.Clear ;
                  DM.SQLTemplate.SQL.Add('select PRODICOD from PRODUTOBARRAS') ;
                  DM.SQLTemplate.SQL.Add('where PRBAA15BARRAS = "' + EntradaDados.Text+'"') ;
                  DM.SQLTemplate.Open ;
                  if not DM.SQLTemplate.EOF then
                    EntradaDados.Text := 'C'+ DM.SQLTemplate.FieldByName('PRODICOD').AsString
                  else
                    EntradaDados.Text := '0';
                end;
            end;

          if UppercASE(Copy(EntradaDados.Text,0,1)) = 'C' then
            begin
              SQLItensVendaTemp.Locate('CODIGO', Copy(EntradaDados.Text,2,length(entradadados.text)), []);
              EntradaDados.Text := SQLItensVendaTempNUMITEM.AsString;
            end;

          // Se o usuario possuir direito de cancelar, efetua o cancelamento
          if SQLItensVendaTemp.Locate('NUMITEM', EntradaDados.Text, []) then
            begin
              if SQLItensVendaTemp.Recordcount > 0 then
                begin
                  if SQLItensVendaTempVLRDESC.AsFloat > 0 then
                    TotalDescItens := TotalDescItens - SQLItensVendaTempVLRDESC.AsFloat;
                    // Excluir item
                  if NroUltItem = SQLItensVendaTempNUMITEM.AsInteger then
                    ItemCancelado := ItemCancelado + 1;

                  SQLItensVendaTemp.Edit;
                  SQLItensVendaTempDESCRICAO.Value := '(C)'+SQLItensVendaTempDESCRICAO.Value;
                  SQLItensVendaTempCANCELADO.Value := 'S';
                  SQLItensVendaTemp.Post;

                  SQLItensVendaTemp.Close;
                  SQLItensVendaTemp.Open;
                  SQLItensVendaTemp.Last;
                end ;
            end
          else
            begin
              InformaG('Item não encontrado!') ;
              EntradaDados.SelectAll ;
            end ;
        end ;

      DescricaoProduto.Caption := '';
      AdicionalProduto.Caption := '';
      if DetalhesVenda = 'S' then
        begin
          LBRef.caption   := '';
          LBSaldo.Caption := '';
        end;

      EstadoPDVChk := InformandoItens;
      PreparaEstadoBalcao(EstadoPDVChk);

      EntradaDados.Clear;
      CalculaTotal;
    end ;

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

    if EstadoPDVChk = InformandoConvenio then
    begin
      if (EntradaDados.Text = '') then
      begin
        Application.CreateForm(TFormTelaConsultaRapidaConvenio, FormTelaConsultaRapidaConvenio) ;
        FormTelaConsultaRapidaConvenio.ShowModal ;

        if not (ConvenioVenda > 0) then
          exit ;

        EntradaDados.Text := IntToStr(ConvenioVenda) ;
      end ;

      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('select * from CONVENIO') ;
      DM.SQLTemplate.SQL.Add('where CONVICOD = ' + EntradaDados.Text) ;
      DM.SQLTemplate.Open ;
      if DM.SQLTemplate.EOF then
      begin
        InformaG('Convênio não encontrado!') ;
        EntradaDados.SelectAll ;
        EstadoPDVChk := InformandoItens ;
        PreparaEstadoBalcao(EstadoPDVChk) ;
        EntradaDados.Clear ;
        exit ;
      end ;

      ConvenioVenda       := DM.SQLTemplate.FieldByName('CONVICOD').Value ;
      LblConvenio.Caption := 'Convênio: ' + DM.SQLTemplate.FieldByName('CONVICOD').AsString + '-' +
                                            DM.SQLTemplate.FieldByName('CONVA60DESCR').Value ;

      EstadoPDVChk := InformandoOrdemCompra ;
      PreparaEstadoBalcao(EstadoPDVChk) ;
      EntradaDados.Clear ;
      exit ;
    end ;

    if EstadoPDVChk = InformandoOrdemCompra then
    begin
      try
        NroOrdemCompraConvenio := StrToInt(EntradaDados.Text) ;
      except
      end ;

      EstadoPDVChk := InformandoClienteConvenio ;
      PreparaEstadoBalcao(EstadoPDVChk) ;
      EntradaDados.Clear ;
      exit ;
    end ;

    if EstadoPDVChk = InformandoClienteConvenio then
    begin
      if (EntradaDados.text = '') or (not IsNumeric(EntradaDados.Text, 'FLOAT')) then
      begin
        Application.CreateForm(TFormTelaConsultaRapidaCliente, FormTelaConsultaRapidaCliente) ;
        FormTelaConsultaRapidaCliente.ShowModal ;
      end
      else begin
        ClienteVenda := SQLLocate('CLIENTE', 'CLIEA10CODCONV' , 'CLIEA13ID', '"' + EntradaDados.Text + '"') ;
        if ClienteVenda = '' then
        begin
          InformaG('Códido do cliente não encontrado!') ;
          EntradaDados.SelectAll ;
          exit ;
        end ;
      end ;

      LblCLiente.Caption :=  'Cliente: ' + ClienteVenda + #13 + SQLLocate('CLIENTE', 'CLIEA13ID' , 'CLIEA60RAZAOSOC', '"' + ClienteVenda + '"') ;

      EstadoPDVChk := InformandoItens ;
      PreparaEstadoBalcao(EstadoPDVChk) ;
      EntradaDados.Clear ;
    end ;
    if EstadoPDVChk = 'InformandoDescricaoTecnica' then
      InformaDescricaoTecnicaProduto;
  end ;//Key
end;

procedure TFormTelaItens.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  Saldo    : double ;
  DocReImprPedRet,
  PreVendaRimp,
  Status,
  SaldoStr : string ;
  RetornoUser : TInfoRetornoUser;
  LinhasCartao, i : Integer;
  FechouCupomFiscal, TemNumerarioAVista, TemNumerarioPrazo : Boolean;
  VlrTotalECF, VlrTotalSistema, VlrTotalDiferenca : Double;
begin
  case Key of
     VK_F1:begin//CHAMAR TECLA DE ATALHO
             Application.CreateForm(TFormTelaTeclasAtalhoTelaItens, FormTelaTeclasAtalhoTelaItens) ;
             FormTelaTeclasAtalhoTelaItens.ShowModal ;
           end ;
     VK_F2
     :begin//INICIANDO NOVA VENDA
             {Testa pra ver se tem caminho ao Servidor para definir se o PDV é Offline}
             if dm.ConectaServidor then
               shpStatusServidor.Brush.Color := clLime
             else
               shpStatusServidor.Brush.Color := clRed;

             if MostraPublicidade then
               PagePrincipal.ActivePage := TabVenda;


             UsuarioAutorizouOperacao := '';
             E_Orcamento           := false;
             TemProdutoSemSubsTrib := False;
             TemProdutoComSubsTrib := False;
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
               NroUltItem            := 0;

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

             // ESTE COMANDO FOI COLOCADO PORQUE QUANDO HAVIA UMA CONSULTA ANTES DE INICIAR A VENDA
             // O SQL DA TABELA FICAVA COM ERRO.
             {SQLProduto.Close;
             SQLProduto.SQL.Clear;
             SQLProduto.SQL.Add('SELECT * FROM PRODUTO Where PRODICOD is Null');

             if not SQLProduto.Active then SQLProduto.Open;}

             if (DM.SQLterminalativoTERMIQTDEPADRAO.Value > 0) then
               EditQtde.Text := DM.SQLterminalativoTERMIQTDEPADRAO.AsString
             else
               EditQtde.Value := 0;

             AlterarUsuario  := false ;

             if TerminalModo = 'C' then
             begin
               TestaStatusCaixa ;
               if VerCaixa then
                 exit ;
             end ;

             CupomOrigemTroca := '' ;
             TipoVenda        := 0 ;
             DataEntregaVenda := '' ;

             CapturaCodigosIniciais ;

             LblInstrucoes.Caption := '' ;
             LblInstrucoes.Refresh ;

             LimparVariaveis ;

             NroCupomFiscal := '000000' ;

             SolicitarPreco := False;
             SolicitarPrecoQDeveriaSerVendido := False;
             // Solicita preço de produto automaticamente
             if (Dm.SQLConfigVendaCFVECPEDEVLRPRODUTO.AsString = 'S') and (not ImportandoPreVenda) then
               SolicitarPreco := True;
             if (Dm.SQLConfigVendaCFVECINFVLRDEVCVEN.AsString = 'S') and (not ImportandoPreVenda) then
               SolicitarPrecoQDeveriaSerVendido := True;

             PedidosImportados := '' ;
             ValorItem := 0 ;
        {     if (not SQLItensVendaTemp.IsEmpty) and (Saldo = 0) then
               CancelarVenda;}

             // Informa o Usuario que irá iniciar a Venda
             if FileExists('SolicitaUsuarioACadaVenda.txt') then
               begin
                 try
                   NroCupomFiscal := InputBox('Atenção!','Informe o Usuário Corrente...','');
                   if (StrToInt(NroCupomFiscal) <> UsuarioCorrente) and (NroCupomFiscal <> '0') then
                     begin
                       if DM.SQLUsuario.Locate('USUAICOD', NroCupomFiscal, [])  then
                         begin
                           DM.UsuarioAtual   := DM.SQLUsuarioUSUAICOD.AsInteger;
                           if DM.SQLUsuarioUSUACUSERMASTER.AsString = 'S' then
                             UsuarioMaster := True
                           else
                             UsuarioMaster := False;
                           UsuarioCorrente   := DM.SQLUsuarioUSUAICOD.AsInteger;
                           UsuarioAtualNome  := DM.SQLUsuarioUSUAA60LOGIN.AsString;
                         end
                       else
                         begin
                           InformaG('Usuário Selecionado é Inválido!') ;
                           EntradaDados.SelectAll ;
                           exit ;
                         end;

                     end;
                 except
                   Application.ProcessMessages;
                 end;
               end;

             // Informa a Senha do Vendedor que irá iniciar a Venda
             if FileExists('SolicitaVendedorACadaVenda.txt') then
               begin
                 RetornoCampoUsuario := AutenticaVendedor(UsuarioAtualNome,'VENDICOD',RetornoUser);
                  if RetornoCampoUsuario <> '' then
                    VendedorVenda := strtoint(RetornoCampoUsuario)
                  else
                    begin
                      InformaG('Vendedor Selecionado é Inválido!') ;
                      EntradaDados.SelectAll ;
                      EstadoPDVChk := AguardandoNovaVenda ;
                      PreparaEstadoBalcao(EstadoPDVChk) ;
                      exit;
                    end;
               end;

             // Informa o Nro Cupom => Darvami precisava lancar os cupons retroativos
             if FileExists('SolicitaNroCupom.txt') then
               begin
                 try
                   NroCupomFiscal := '0';
                   NroCupomFiscal := InputBox('Atenção!','Informe o número do cupom fiscal desta venda:','');
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
                   VendedorVenda := StrToInt(InputBox('Informar o Vendedor', 'Digite o Código do Vendedor', '')) ;
                 except
                   Application.ProcessMessages; end;
               end;
               if (dm.sqlterminalativoTERMCSOLCODVEND.value = 'S') then
                 if (VendedorVenda > 0) then
                   begin
                     rxVendedor.Visible := True;
                     rxVendedor.Caption := SQLLocate('VENDEDOR','VENDICOD','VENDA60NOME',IntToStr(VendedorVenda));
                     rxVendedor.Update ;
                   end
                 else
                   begin
                     rxVendedor.Caption := 'Não Encontrado';
                     rxVendedor.Update ;
                   end;

             if (FileExists('SolicitaCliente.txt')) and (not ImportandoPreVenda) then
                begin
                  Application.CreateForm(TFormTelaConsultaRapidaCliente, FormTelaConsultaRapidaCliente);
                  FormTelaConsultaRapidaCliente.ShowModal;
                  IniFile := TIniFile.Create ('SolicitaCliente.txt');
                  IF IniFile.ReadString('VECONTAS','VERADICIONAIS','N') = 'S' then
                  begin
                    ObsCliente := SQLLocate('CLIENTE','CLIEA13ID','CLIETOBS1','"' + ClienteVenda + '"');
                    if Obscliente <> '' then
                      ShowMessage(obscliente);
                  end;
                  UsaPrecoVenda   := copy(SQLLocate('CLIENTE','CLIEA13ID','CLIECTPPRCVENDA','"'+ClienteVenda+'"'),1,1);
                  rxClienteNome.caption := SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','"'+ClienteVenda+'"');
                  rxClienteNome.update;
                  IniFile.Free;
                end
              else
                begin
                  ClienteVenda := dm.SQLTerminalAtivoCLIEA13ID.Value;
                  rxClienteNome.caption := SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','"'+ClienteVenda+'"');
                  rxClienteNome.update;
                end;

             // MANDA DADOS DISPLAY TECLADO
             IF TecladoReduzidoModelo = 'TEC44DIS' THEN
               EnviaTecladoTextoDisplay44('Informe o Produto','');
             IF TecladoReduzidoModelo = 'TEC65' THEN
               EnviaTecladoTextoDisplay65('Informe o Produto','');

             EstadoPDVChk := InformandoItens ;
             PreparaEstadoBalcao(EstadoPDVChk) ;
           end ;
     VK_F3:begin//FECHAMENTO DE VENDA
             if EstadoPDVChk <> InformandoItens then
               begin
                 InformaG('O fechamento só pode ser feito quando o sistema está solicitando itens!') ;
                 EntradaDados.SelectAll ;
                 exit ;
               end ;

             if CurSubTotal.Value > 0 then
               begin
               end
             else
               begin
                 InformaG('Uma venda zerada não pode ser fechada!') ;
                 EntradaDados.SelectAll ;
                 exit ;
               end ;

             Application.CreateForm(TFormTelaFechamentoVenda, FormTelaFechamentoVenda) ;
             if TerminalModo = 'C' then
               FormTelaFechamentoVenda.LblNomeSistema.Caption := 'Fechamento da Venda' ;
             if TerminalModo = 'P' then
               FormTelaFechamentoVenda.LblNomeSistema.Caption := 'Fechamento da Pré-Venda' ;
             if E_Orcamento then
               FormTelaFechamentoVenda.LblNomeSistema.Caption := 'Fechamento do Orçamento' ;
             FormTelaFechamentoVenda.ShowModal ;

             if EstadoPDVChk = AguardandoNovaVenda then
               if MostraPublicidade then
                 begin
                   slideshow.Enabled := True;
                   PagePrincipal.ActivePage := TabPublicidade;
                 end
               else
                 begin
                   slideshow.Enabled := False;
                   PagePrincipal.ActivePage := TabVenda;
                 end;

            { exit ;}
           end ;
     VK_F4:begin
             //CANCELAMENTO DE ITENS
             //ESTE TESTE FOI COLOCADO PARA NÃO ENTRAR NESTA ROTINA QUANDO FOR
             //TECLADO Alt+F4 para finalizar PDV
             if ssAlt in Shift then
               exit ;

             if TerminalModo = 'C' then
             begin
               TestaStatusCaixa ;
               if VerCaixa then
                 exit ;
             end ;

             if (EstadoPDVChk <> InformandoItens) then
             begin
               InformaG('O cancelamento só pode ser aplicado quando o sistema está solicitando itens!') ;
               EntradaDados.SelectAll ;
               exit ;
             end ;

             if DM.SQLUsuario.Locate('USUAICOD',UsuarioCorrente,[]) then
               if DM.SQLUsuario.FieldByName('USUACCANCVENDA').AsString <> 'S' then
                 begin
                   // MANDA DADOS DISPLAY TECLADO
                   IF TecladoReduzidoModelo = 'TEC44DIS' THEN
                     EnviaTecladoTextoDisplay44('Sem permissao para cancelar item','');
                   IF TecladoReduzidoModelo = 'TEC65' THEN
                     EnviaTecladoTextoDisplay65('Sem permissao para cancelar item','');

                   RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACCANCVENDA',RetornoUser);
                   if RetornoCampoUsuario <> 'S' then
                     begin
                       EntradaDados.SelectAll ;
                       Exit;
                     end;
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
     VK_F5:begin
             Key := 0;
             E_Orcamento := true ;
             FormKeyDown(Sender, F3, [ssAlt]);
           end ;
     VK_F6:begin
             PreVendaRimp := InputBox('Re-Imprimir Pré-Venda', 'Informe o Cupom', '');
             if SQLLocate('CUPOM', 'CUPOA13ID' , 'CUPOCSTATUS', '"' + PreVendaRimp + '"') = '' then
             begin
               VarValorTroco    := 0;
               VarValorRecebido := 0;
               InformaG('Cupom não encontrado!') ;
               EntradaDados.SelectAll ;
               exit ;
             end ;

             GravarTabelaTempImpPreVendaDeCupom(PreVendaRimp, Nil, Nil, DM.SQLCup, DM.SQLCupomIt, 0, 'S') ;
           end ;
     VK_F7:begin//DESCONTO NO ITEM
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
                 InformaG('A Impressora Fiscal SIGTRON FS300 não aceita desconto por produto, somente no total da venda!') ;
                 Abort;
               end;
             if EstadoPDVChk <> InformandoItens then
               begin
                 InformaG('O desconto só pode aplicado quando o sistema está solicitando itens!') ;
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
           end ;
     VK_F8:begin//RECEBIMENTO DE CREDIÁRIO
           end ;
     VK_F9:begin//IMPORTAR PRÉ-VENDA
             if EstadoPDVChk = InformandoItens then
             begin
               InformaG('O sistema deve estar AGUARDANDO NOVA VENDA para poder importar uma Pré-Venda!') ;
               EntradaDados.SelectAll ;
               Exit ;
             end ;
             if TerminalModo = 'C' then
               begin
                 TestaStatusCaixa ;
                 if VerCaixa then
                   exit ;
                 vImportarPrevenda  := True ;
                 ContinuarPreVenda  := False ;
                 ReativarPreVenda   := False ;
                 if EntradaDados.Text <> '' then
                   NomeClienteVenda := EntradaDados.Text
                 else
                   NomeClienteVenda := '';
                 Application.CreateForm(TFormTelaImportarPreVenda, FormTelaImportarPreVenda) ;
                 FormTelaImportarPreVenda.ShowModal ;
               end
             else
               begin
                 InformaG('Não é possível importar uma Pré-Venda em um terminal que está operando como Pré-Venda!') ;
                 EntradaDados.SelectAll ;
                 Exit ;
               end ;
           end ;
    VK_F10:begin
             // MANDA DADOS DISPLAY TECLADO
             IF TecladoReduzidoModelo = 'TEC44DIS' THEN
               EnviaTecladoTextoDisplay44('Tela para Consulta de Cupons Emitidos...','');
             IF TecladoReduzidoModelo = 'TEC65' THEN
               EnviaTecladoTextoDisplay65('Tela para Consulta de Cupons Emitidos...','');
             CriaFormulario(TFormCadastroCupom,
                            'FormCadastroCupom',
                            False,
                            False,
                            False,
                            '');
           end ;
    VK_F11:begin
             // MANDA DADOS DISPLAY TECLADO
             IF TecladoReduzidoModelo = 'TEC44DIS' THEN
               EnviaTecladoTextoDisplay44('Tela para Cadastro de Cliente...','');
             IF TecladoReduzidoModelo = 'TEC65' THEN
               EnviaTecladoTextoDisplay65('Tela para Cadastro de Cliente...','');

             if DM.SQLUsuario.Locate('USUAICOD',UsuarioCorrente,[]) then
               if DM.SQLUsuario.FieldByName('USUACPVERCLICASH').AsString <> 'S' then
                 begin
                   if Pergunta('SIM','Você não tem permissão para abrir Cadastro de Clientes. Deseja Informar Outro Usuário?') then
                     begin
                       RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACPVERCLICASH',RetornoUser);
                       if RetornoCampoUsuario <> 'S' then
                         begin
                           EntradaDados.SelectAll ;
                           Exit;
                         end
                       else
                         CriaFormulario(TFormCadastroCliente,
                                        'FormCadastroCliente',
                                        False,
                                        True,
                                        False,
                                        '');

                     end;
                 end
               else
                 CriaFormulario(TFormCadastroCliente,
                                'FormCadastroCliente',
                                False,
                                True,
                                False,
                                '');
           end ;
    VK_F12:begin
             if (TerminalModo = 'P') and (ECFAtual = '') then
             begin
               InformaG('O sistema não pode movimentar caixa em um terminal que está operando como Pré-Venda!') ;
               EntradaDados.SelectAll ;
               Exit ;
             end ;

             if EstadoPDVChk = InformandoItens then
             begin
               InformaG('O sistema não pode movimentar caixa enquanto está solicitando ítens!') ;
               EntradaDados.SelectAll ;
               Exit ;
             end ;
             // MANDA DADOS DISPLAY TECLADO
             IF TecladoReduzidoModelo = 'TEC44DIS' THEN
               EnviaTecladoTextoDisplay44('Escolha uma Operacao de Caixa...','');
             IF TecladoReduzidoModelo = 'TEC65' THEN
               EnviaTecladoTextoDisplay65('Escolha uma Operacao de Caixa...','');

             Application.CreateForm(TFormTelaMovimentoCaixa, FormTelaMovimentoCaixa) ;
             Dm.SQLTerminalAtivo.Close;
             Dm.SQLTerminalAtivo.Open;
             FormTelaMovimentoCaixa.EditData.Date := Date;
             FormTelaMovimentoCaixa.ShowModal ;

             {Testa pra ver se tem caminho ao Servidor para definir se o PDV é Offline}
             if dm.ConectaServidor then
               shpStatusServidor.Brush.Color := clLime
             else
               shpStatusServidor.Brush.Color := clRed;
           end ;
      VK_SCROLL:begin
                TelaConsultaPlacaCliente := TTelaConsultaPlacaCliente.Create(Self);
                TelaConsultaPlacaCliente.ShowModal;
              end;

  else
    if ssCtrl in Shift then
      begin
        case Upcase(Char(Key)) of
          'A':begin
                CriaFormulario(TFormTelaConsultaSaldoPorEmpresa,
                            'FormTelaConsultaSaldoPorEmpresa',
                            False,
                            False,
                            True,
                            '');
              end ;
          // Mostra o Lucro da Venda para avaliar se pode ser dado algum desconto adicional
          'B':begin
                if CurSubTotal.Value > 0 then
                  if DM.SQLUsuario.Locate('USUAICOD',UsuarioCorrente,[]) then
                    if DM.SQLUsuario.FieldByName('USUACVISULUCVEND').AsString <> 'S' then
                      begin
                        if Pergunta('SIM','Você não tem permissão para acessar os dados com os totais da venda. Deseja Informar Outro Usuário?') then
                          begin
                            RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACVISULUCVEND',RetornoUser);
                            if RetornoCampoUsuario = 'S' then
                              begin
                                ValorItem := 0;
                                ValorCustoTotal := 0;
                                Application.CreateForm(TFormTelaLucro, FormTelaLucro);
                                SQLItensVendaTemp.DisableControls ;
                                SQLItensVendaTemp.First ;
                                while not SQLItensVendaTemp.EOF do
                                  begin
                                    if SQLItensVendaTempTROCA.Value <> 'S' then
                                      begin
                                       ValorItem := ValorItem + SQLItensVendaTempVLRTOTAL.AsFloat;
                                       ValorCustoTotal := ValorCustoTotal + (SQLItensVendaTempVLRCUSTO.Value*SQLItensVendaTempQUANTIDADE.Value);
                                      end;
                                    SQLItensVendaTemp.Next ;
                                    Application.ProcessMessages;
                                  end ;
                                FormTelaLucro.LbVlrTotalVenda.Caption := FormatFloat('R$ ##0.00',ValorItem);
                                FormTelaLucro.LBVlrTotalCusto.Caption := FormatFloat('R$ ##0.00',ValorCustoTotal);
                                ValorLucroTotal := ValorItem - ValorCustoTotal;
                                FormTelaLucro.LBVlrLucro.Caption      := FormatFloat('R$ ##0.00',ValorLucroTotal);
                                // Uso a mesma Variavel pra achar a Margem de lucro, pra nao ter q criar outra variavel
                                ValorLucroTotal := ((ValorItem/ValorCustoTotal)-1) * 100;
                                FormTelaLucro.LBMargem.Caption := FormatFloat('##0.00 %',ValorLucroTotal);
                                FormTelaLucro.ShowModal;
                                SQLItensVendaTemp.EnableControls ;
                              end;
                          end;
                      end
                    else
                      begin
                        ValorItem := 0;
                        ValorCustoTotal := 0;
                        Application.CreateForm(TFormTelaLucro, FormTelaLucro);
                        SQLItensVendaTemp.DisableControls ;
                        SQLItensVendaTemp.First ;
                        while not SQLItensVendaTemp.EOF do
                          begin
                            if SQLItensVendaTempTROCA.Value <> 'S' then
                              begin
                               ValorItem := ValorItem + SQLItensVendaTempVLRTOTAL.AsFloat;
                               ValorCustoTotal := ValorCustoTotal + (SQLItensVendaTempVLRCUSTO.Value*SQLItensVendaTempQUANTIDADE.Value);
                              end;
                            SQLItensVendaTemp.Next ;
                            Application.ProcessMessages;
                          end ;
                        FormTelaLucro.LbVlrTotalVenda.Caption := FormatFloat('R$ ##0.00',ValorItem);
                        FormTelaLucro.LBVlrTotalCusto.Caption := FormatFloat('R$ ##0.00',ValorCustoTotal);
                        ValorLucroTotal := ValorItem - ValorCustoTotal;
                        FormTelaLucro.LBVlrLucro.Caption      := FormatFloat('R$ ##0.00',ValorLucroTotal);
                        FormTelaLucro.ShowModal;
                        SQLItensVendaTemp.EnableControls ;
                      end;
              end ;
          //Gravar Prevenda sem estar completa para pode reabrila em outro terminal
          'C':begin
                if (EstadoPDVChk = InformandoItens) and (TerminalModo = 'P') and (dm.sqlterminalativoTERMCSOLCODVEND.value = 'S') then
                  begin
                     // Informa Vendedor
                     if (VendedorVenda < 1) then
                       begin
                         try
                           VendedorVenda := StrToInt(InputBox('Informar o Vendedor', 'Digite o código do vendedor', ''));
                         except
                           Application.ProcessMessages;
                         end;
                         if VendedorVenda > 0 then
                           begin
                             rxVendedor.Caption := SQLLocate('VENDEDOR','VENDICOD','VENDA60NOME',IntToStr(VendedorVenda));
                             rxVendedor.Update ;
                           end
                         else
                           begin
                             rxVendedor.Caption := 'Não Encontrado';
                             rxVendedor.Update ;
                             exit;
                           end;
                       end;
                     if SQLItensVendaTemp.IsEmpty then
                       begin
                         exit;
                       end;
                     if Pergunta('SIM','Deseja gravar a Prevenda atual!') and (VendedorVenda > 0) and (dm.sqlterminalativoTERMCSOLCODVEND.value = 'S') then
                       begin
                         if (ClienteVenda = '') and (dm.SQLTerminalAtivoCLIEA13ID.Value <> '') then
                            ClienteVenda := dm.SQLTerminalAtivoCLIEA13ID.Value;
                         if (PlanoVenda = NULL) or (PlanoVenda = 0) then
                            PlanoVenda := dm.SQLTerminalAtivoPLRCICOD.Value;

                         Application.CreateForm(TFormTelaFechamentoVenda,FormTelaFechamentoVenda);
                         GravaPrevendaSemFinanceiro := True;
                         FormTelaFechamentoVenda.GravarPreVenda;
                         FormTelaFechamentoVenda.GravarItensPreVenda;
                         // Se ja tiver importado uma prevenda antes tem que Marcar como Cancelada pra nao aparecer mais
                         // na lista de Prevendas pendentes
                         if PedidosImportados <> '' then
                           begin
                             FormTelaFechamentoVenda.TermCod := Copy(PedidosImportados, 1, Pos('-',PedidosImportados)-1);
                             FormTelaFechamentoVenda.PrvCod  := Copy(PedidosImportados, Pos('-',PedidosImportados)+1, 6);
                             Delete(PedidosImportados,1,Pos('-',PedidosImportados)+7);
                             DM.SQLTemplate.Close;
                             DM.SQLTemplate.SQL.Clear;
                             DM.SQLTemplate.SQL.Add('Update PREVENDA');
                             DM.SQLTemplate.SQL.Add('Set PRVDCIMPORT = "C"');
                             DM.SQLTemplate.SQL.Add('Where');
                             DM.SQLTemplate.SQL.Add('TERMICOD = ' + FormTelaFechamentoVenda.TermCod + ' And ');
                             DM.SQLTemplate.SQL.Add('PRVDICOD = ' + FormTelaFechamentoVenda.PrvCod);
                             DM.SQLTemplate.ExecSQL;
                           end;

                         // MOSTRA INFORMACOES AO USUARIO ANTES DE FECHAR A TELA DE FECHAMENTO DE VENDA
                         if (TerminalModo = 'P') and (DM.SQLTerminalAtivoTERMCMOSTRAIDCUPOM.AsString = 'S') and (not E_Orcamento) then
                           begin
                             LblInstrucoes.Caption := 'PRÉ-VENDA FINALIZADA COM SUCESSO !' ;
                             LblInstrucoes.Refresh ;
                             InformaG('ANOTE O CÓDIGO DESTA PRÉ-VENDA :' + #13 + '* * * [ ' + intToStr(TerminalAtual) + '.' +  intToStr(CodNextPreVenda) + ' ] * * *') ;
                           end ;

                         CancelarVenda ;
                         LimparVariaveis ;
                         VlrBonusTroca   := 0;
                         ValorBonusTroca.Value := 0;
                         VendedorVenda   := 0;
                         rxVendedor.Caption := '';
                         rxVendedor.update;
                         
                         EstadoPDVChk := 'AguardandoNovaVenda' ;
                         PreparaEstadoBalcao(FormTelaItens.EstadoPDVChk) ;
                       end;
                  end ;

//                EstadoPDVChk := InformandoConvenio ;
//                PreparaEstadoBalcao(EstadoPDVChk) ;
              end ;
          //DESTRAVAR IMPRESSORA
          'D':begin
              end ;

          // CTRL + F => INFORMAR CÓDIGO ANTIGO DOCUMENTO
          // CodigoAntigoCupom := InputBox('Informar Código Antigo Documento', 'Digite o código antigo deste documento', '') ;

          // Desconto apos ter lancado o item e so funciona se nao tiver ecf.
          'F':begin
                if ECFAtual <> '' then
                  begin
                    InformaG('Desconto após ter passado o produto não funciona para terminais com ECF instalados!');
                    EntradaDados.Clear;
                    exit;
                  end;

                // Informar o Item que recebera o Desconto
                NroCupomFiscal := InputBox('Atenção!','Informe o Item que receberá o Desconto?','');
                if not SQLItensVendaTemp.Locate('NUMITEM', NroCupomFiscal, []) then
                  begin
                    InformaG('O Item informado nao foi encontrado!');
                    EntradaDados.Clear;
                    exit;
                  end;


                // Chamar tela para informar o tipo de desconto
                Application.CreateForm(TFormTelaTipoDescontoItem, FormTelaTipoDescontoItem) ;
                FormTelaTipoDescontoItem.ShowModal ;
                if FormTelaTipoDescontoItem.EditDesconto.Value > 0 then
                  begin
                    if FormTelaTipoDescontoItem.DescValor.Checked then
                      DescItemVlr  := FormTelaTipoDescontoItem.EditDesconto.Value
                    else
                      begin
                        DescItemPerc := FormTelaTipoDescontoItem.EditDesconto.Value;
                        DescItemVlr := (SQLItensVendaTempVLRTOTAL.Value)* (DescItemPerc/100);
                        DescItemVlr := StrToFloat(Copy(FloatToStr(DescItemVlr),1,Pos(',', FloatToStr(DescItemVlr))+2)) ;
                      end;
                  end;

                // Para que o Desconto seja Multiplicado pela Qtde Vendida
                if (SQLItensVendaTempQUANTIDADE.Value > 1) and (DescItemVlr > 0) then
                  begin
                    DescItemVlrUnitario := 0;
                    DescItemVlrUnitario := DescItemVlr / SQLItensVendaTempQUANTIDADE.Value ;
                    DescItemVlr := DescItemVlrUnitario * SQLItensVendaTempQUANTIDADE.Value ;
                  end;

                // Testar se o desconto nao é maior que o total do item
                if DescItemVlrUnitario > SQLItensVendaTempVLRTOTAL.Value then
                  begin
                    Informa('O valor do desconto informado é maior que o valor do item!');
                    EntradaDados.Clear;
                    exit;
                  end;

                // Testar se o usuario pode dar o desconto
                if ((DescItemVlr/SQLItensVendaTempVLRTOTAL.Value) * 100) > PercDesqMaxUsario then
                  begin
                    DescItemPerc := (DescItemVlr / SQLItensVendaTempVLRTOTAL.Value) * 100;

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
                SQLItensVendaTempVLRDESC.AsFloat   := StrToFloat(FormatFloat('0.00',DescItemVlr));
                SQLItensVendaTempVLRTOTAL.Value    := (SQLItensVendaTempVLRUNITBRUT.Value * SQLItensVendaTempQUANTIDADE.Value) - SQLItensVendaTempVLRDESC.Value;
                SQLItensVendaTempBASEICMS.asFloat  := SQLItensVendaTempVLRTOTAL.AsFloat;
                SQLItensVendaTempALIQUOTA.AsFloat  := RetornaAliquotaICMSProduto(SQLProdutoICMSICOD.AsInteger);
                SQLItensVendaTempVLRICMS.Value     := SQLItensVendaTempBASEICMS.asFloat * (SQLItensVendaTempALIQUOTA.AsFloat / 100);
                SQLItensVendaTemp.post;

                CalculaTotal;

                // Zerar variaveis e Retornar ao Edit principal;
                DescItemVlr := 0; DescItemPerc := 0; DescItemVlrUnitario := 0;
                EntradaDados.SetFocus;
              end ;
          // ABRIR GAVETA
          'G':begin
              end ;
          //CALCULADORA ATIVAR/DESATIVAR
          'H':begin
                RxCalc.Execute;
              end;
          //LIVRE - antes era pra INFORMAR ITENS DE DEVOLUCAO
          'E':begin
                CriaFormulario(TFormCadastroProfExterno,
                'FormCadastroProfExterno',
                False,
                False,
                True,
                '');
              end ;
          //INFORMAR ITEM TROCA
          'I':begin
               { if ECFAtual<>'' then
                  begin
                    InformaG('A Operação de Troca não é possível nesse terminal') ;
                    EntradaDados.SelectAll ;
                    Exit ;
                  end; }
                  
                if DM.SQLUsuario.Locate('USUAICOD',UsuarioCorrente,[]) then
                  if DM.SQLUsuario.FieldByName('USUACPERMITETROCA').AsString <> 'S' then
                    if Pergunta('SIM','Você não tem permissão para Trocar Mercadorias. Deseja Informar Outro Usuário?') then
                      begin
                        RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACPERMITETROCA',RetornoUser);
                        if RetornoCampoUsuario <> 'S' then
                          begin
                            EntradaDados.SelectAll;
                            Exit ;
                          end;
                      end
                    else
                      begin
                        EntradaDados.SelectAll;
                        Exit ;
                      end;

                if DM.SQLConfigVendaOPESICODTROCA.AsString = '' then
                  begin
                    InformaG('A Operação de Estoque para Troca não foi configurada. não será possível informa item(ns) de troca!') ;
                    EntradaDados.SelectAll ;
                    Exit ;
                  end ;

                if (EstadoPDVChk <> InformandoItens) and
                   (EstadoPDVChk <> InformandoItensTroca) then
                  begin
                    InformaG('Esta rotina só pode ser executada enquanto está solicitando ítens!') ;
                    EntradaDados.SelectAll ;
                    Exit ;
                  end ;

                if (EstadoPDVChk = InformandoItensTroca) then
                  begin
                    TrocandoItens := False ;
                    EstadoPDVChk := InformandoItens ;
                    PreparaEstadoBalcao(EstadoPDVChk) ;
                    exit ;
                  end ;

                TrocandoItens := true ;
                LblBonusTroca.Visible    := True;
                LblBonusTroca.Update;
                ValorBonusTroca.Visible  := True;
                ValorBonusTroca.Update;

                EstadoPDVChk := InformandoItensTroca ;
                PreparaEstadoBalcao(EstadoPDVChk) ;
              end ;
          //TELA ORCAMENTO
          'J':begin
                //MouseShowCursor(True);
                if EstadoPDVChk = 'AguardandoNovaVenda' then
                  CriaFormulario(TFormCadastroPedidoVenda,'FormCadastroPedidoVenda',False,False,False,' Checkout ');
              end ;
          // INFORMAR DESCRIÇÃO TÉCNICA DO PRODUTO
          'L':begin
                //MouseShowCursor(True);
                if (EstadoPDVChk = 'InformandoItens') and (not SQLItensVendaTemp.IsEmpty) then
                  begin
                    EstadoPDVChk := 'InformandoDescricaoTecnica';
                    PreparaEstadoBalcao('InformandoDescricaoTecnica');
                  end
                else
                  begin
                    Informa('A descrição técnica dos produtos só pode ser alterada quando o sistema estiver vendendo ítens...');
                    PreparaEstadoBalcao('InformandoItens');
                  end;
              end ;
          //TELA MARCACAO CONSULTA
          'M':begin
                if EstadoPDVChk = 'AguardandoNovaVenda' then
                  CriaFormulario(TFormTelaMarcacaoConsulta,'FormTelaMarcacaoConsulta',False,False,True,'');
              end ;
          //VER ITENS INCLUIDOS NO CUPOM
          'N':begin
                 Application.CreateForm(TFormTelaItensIncluidosCupom, FormTelaItensIncluidosCupom) ;
                 if EstadoPDVChk = InformandoItens then
                   FormTelaItensIncluidosCupom.DBGrid.DataSource := FormTelaItens.DSSQLIntensVenda ;
                 FormTelaItensIncluidosCupom.ShowModal ;
              end ;
          //TROCAR QUANTIDADE
          'Q':begin
                if FileExists('BalancaCheckoutFilizola.txt') or FileExists('BalancaCheckoutToledo.txt') then
                  begin
                    Application.CreateForm(TFormBalancaFilizola, FormBalancaFilizola) ;
                    FormBalancaFilizola.ShowModal;
                  end;
                if FileExists('BalancaCheckoutToledoDireto.txt') then
                  begin
                    LblInstrucoes.Caption := 'Lendo Balança Toledo...';
                    LblInstrucoes.Refresh;
                    // Abre Porta Serial
                    if AbrePorta(Toledo_Porta,Toledo_Baud,Toledo_DataBits,Toledo_Paridade) = cSucesso then
                      begin
                        // Pega Peso
                        if Toledo_TipoLeitura = 0 then // P05A
                          begin
                            if PegaPeso(0,PesoP05A,pchar(Toledo_Dir)) = cSucesso then
                              begin
                                PesoSTR := FormatFloat('#0.000',(StrToInt(TrimLeft(PesoP05A)) / 1000));
                                Peso    := StrToFloat(PesoSTR);
                                EditQtde.Value := Peso;
                              end;
                            // Fecha Porta
                            if FechaPorta = cSucesso then
                              begin
                                // Apaga arquivos Temporarios vindos da Balanca
                                try DeleteFile(pchar(Toledo_Dir+'\PESO.TXT')) except Application.ProcessMessages; end;
                                try DeleteFile(pchar(Toledo_Dir+'\OK.TXT'))   except Application.ProcessMessages; end;
                              end;
                          end;
                        if Toledo_TipoLeitura = 1 then // P05B
                          begin
                            if PegaPesoP05B(0,0,PesoP05B,pchar(Toledo_Dir)) = cSucesso then
                              begin
                                try
                                  PesoSTR := PesoP05B;
                                  PesoSTR := TrocaPontoPorVirgula(Trim(PesoSTR));
                                  Peso    := StrToFloat(PesoSTR);
                                  EditQtde.Value := Peso;
                                  try FechaPortaP05; except Application.ProcessMessages; end;
                                except
                                  EditQtde.Value := 0;
                                  Application.ProcessMessages;
                                end;
                              end;
                          end;
                        LblInstrucoes.Caption := 'Informando Produto';
                        LblInstrucoes.Refresh;
                      end;
                  end;
                if FileExists('BalancaCheckoutUrano.txt') then
                  begin
                    LblInstrucoes.Caption := 'Comunicando com a Balança Urano...';
                    LblInstrucoes.Refresh;
                    // Abre Porta Serial
                    _AlteraModeloBalanca(Urano_Modelo);
                    _AlteraModoOperacao(0);

                    if _AbrePortaSerial(Urano_Porta) < 1 then
                      informaG('Problema de Comunicação com a Balança!')
                    else
                      begin
                        // Grava Peso no arquivo txt, para tirar as sujeiras que vem da dll.
                        PesoSTR := _LePeso();
                        AssignFile(Urano_PesoLido, '..\PesoLido.txt');
                        Rewrite(Urano_PesoLido); //abre o arquivo para escrita
                        Writeln(Urano_PesoLido, PesoSTR); //escreve no arquivo e desce uma linha
                        Closefile(Urano_PesoLido); //fecha o handle de arquivo

                        // Le peso do txt
                        PesoSTR := '';
                        AssignFile(Urano_PesoLido,'..\PesoLido.txt');
                        Reset(Urano_PesoLido);
                        ReadLn(Urano_PesoLido,PesoSTR);
                        CloseFile(Urano_PesoLido);


                        While pos('P',PesoSTR) > 0 do
                          Delete(PesoSTR,pos('P',PesoSTR),1);
                        While pos('E',PesoSTR) > 0 do
                          Delete(PesoSTR,pos('E',PesoSTR),1);
                        While pos('S',PesoSTR) > 0 do
                          Delete(PesoSTR,pos('S',PesoSTR),1);
                        While pos('O',PesoSTR) > 0 do
                          Delete(PesoSTR,pos('O',PesoSTR),1);
                        While pos(':',PesoSTR) > 0 do
                          Delete(PesoSTR,pos(':',PesoSTR),1);
                        While pos(' ',PesoSTR) > 0 do
                          Delete(PesoSTR,pos(' ',PesoSTR),1);
                        While pos('g',PesoSTR) > 0 do
                          Delete(PesoSTR,pos('g',PesoSTR),1);
                        While pos('*',PesoSTR) > 0 do
                          Delete(PesoSTR,pos('*',PesoSTR),1);

                        PesoSTR := FormatFloat('##0.000',(StrToFloat(PesoSTR)/1000));
                        Peso    := StrToFloat(PesoSTR);
                        EditQtde.Value := Peso;

                        // Fecha Porta
                        if _FechaPortaSerial > 0 then
                          Application.ProcessMessages;

                        LblInstrucoes.Caption := 'Informando Produto';
                        LblInstrucoes.Refresh;
                      end;

                  end;
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
          //LIVRE
          'R':begin
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

               { if FileExists('Posto.txt') then
                  begin
                    Application.CreateForm(TFormTelaPrestacaoContas, FormTelaPrestacaoContas) ;
                    FormTelaPrestacaoContas.ShowModal ;
                  end;  }

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
          //PROCURAR PELA REF FAZENDO COPY DE SÓ 08 CHAR
          'K':begin
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
                IF TecladoReduzidoModelo = 'TEC44DIS' THEN
                  EnviaTecladoTextoDisplay44(LblInstrucoes.Caption,'');
                IF TecladoReduzidoModelo = 'TEC65' THEN
                  EnviaTecladoTextoDisplay65(LblInstrucoes.Caption,'');

                exit ;
              end;

          //TROCA DE TERMINAL
          'T':begin
                if EstadoPDVChk <> AguardandoNovaVenda then
                  begin
                    InformaG('Só é possível trocar o terminal enquanto está aguardando nova venda!') ;
                    EntradaDados.SelectAll ;
                    Exit ;
                  end ;

                TerminalAnterior := TerminalAtual ;

                FormTelaLogin := TFormTelaLogin.Create(Application);
                FormTelaLogin.Caption := 'Bem-Vindo ao ' + Application.Title;
                if FormTelaLogin.ShowModal <> idOk then
                  exit ;

                {Atualizar nome do Terminal}
                RxTerminal.Caption := TerminalAtualNome;
                RxTerminal.Update;
                
                SQLItensVendaTemp.Close;
                TabelaMaisTerminal := 'ItensVendaTemp_' + FormatFloat('###000', TerminalAtual);
                SQLItensVendaTemp.TableName := TabelaMaisTerminal;
                if not FileExists('Temp\'+TabelaMaisTerminal+'.db') then
                  SQLItensVendaTemp.CreateTable ;

                SQLItensVendaTemp.Open ;
                if SQLItensVendaTemp.RecordCount < 1 then
                  begin
                    SQLItensVendaTemp.Close ;
                    try
                      SQLItensVendaTemp.DeleteTable ;
                      SQLItensVendaTemp.CreateTable ;
                    except
                      SQLItensVendaTemp.CreateTable ;
                    end ;
                    SQLItensVendaTemp.Open ;
//                    TrancouVenda := False;
                  end
                else
 //                 TrancouVenda := True;


                {if TerminalAnterior <> TerminalAtual then
                   DM.DesbloquearTerminal(IntToStr(TerminalAnterior)) ;}

                CodProxCntRecTemp := 0 ;
              end ;
          //REATIVAR PRE VENDAS
          'U':begin
                if TerminalModo = 'C' then
                  begin
                    ReativarPreVenda   := True ;
                    vImportarPreVenda  := False ;
                    ContinuarPreVenda  := False ;
                    Application.CreateForm(TFormTelaImportarPreVenda, FormTelaImportarPreVenda) ;
                    FormTelaImportarPreVenda.LblNomeSistema.Caption := 'Reativar Pré-Venda' ;
                    FormTelaImportarPreVenda.DBGridLista.Columns.Items[3].Title.Caption := 'Marc' ;
                  end
                else
                  begin
                    if EntradaDados.Text <> '' then
                      NomeClienteVenda := EntradaDados.Text; // Filtra o Cliente
                    if (dm.sqlterminalativoTERMCSOLCODVEND.value = 'S') then
                      begin
                        try
                          VendedorVenda      := StrToInt(InputBox('Informar o Vendedor', 'Digite o código do vendedor', '')) ;
                        except
                          Application.ProcessMessages;
                        end;
                        if VendedorVenda > 0 then
                          begin
                            rxVendedor.Caption := SQLLocate('VENDEDOR','VENDICOD','VENDA60NOME',IntToStr(VendedorVenda));
                            rxVendedor.Update ;
                          end
                        else
                          begin
                            rxVendedor.Caption := 'Vendedor:';
                            rxVendedor.Update ;
                          end;

                        ContinuarPreVenda  := True ;
                        ReativarPreVenda   := False ;
                        vImportarPreVenda  := False ;
                        Application.CreateForm(TFormTelaImportarPreVenda, FormTelaImportarPreVenda) ;
                        FormTelaImportarPreVenda.LblNomeSistema.Caption := 'Continuar Pré-Venda' ;
                        FormTelaImportarPreVenda.DBGridLista.Columns.Items[3].Title.Caption := 'Marc' ;
                      end
                    else
                      begin
                        ContinuarPreVenda  := True ;
                        ReativarPreVenda   := False ;
                        vImportarPreVenda  := False ;
                        Application.CreateForm(TFormTelaImportarPreVenda, FormTelaImportarPreVenda) ;
                        FormTelaImportarPreVenda.LblNomeSistema.Caption := 'Continuar Pré-Venda' ;
                        FormTelaImportarPreVenda.DBGridLista.Columns.Items[3].Title.Caption := 'Marca' ;
                      end;
                  end;
                FormTelaImportarPreVenda.ShowModal ;
              end ;
          //IMPRIMIR ITENS DA VENDA
          'X':begin
              end ;
          // IMPORTA PRODUTOS DO SERVIDOR
          'Z':begin
              end ;
          //LIVRE
          '1' : begin
                  CodRapido := True;
                  Application.CreateForm(TFormTelaConsultaRapidaItem, FormTelaConsultaRapidaItem) ;
                  FormTelaConsultaRapidaItem.ShowModal ;
                  CodRapido := False;
                  if CodigoProduto <> '' then
                    begin
                      EntradaDados.Text := CodigoProduto;
                      EntradaDadosKeyDown(Sender, Enter, [ssAlt]);
                    end;
                end;
          //REATIVAR PEDIDO/ORÇAMENTO
          'O' : begin
                  if (EstadoPDVChk <> AguardandoNovaVenda) then
                    begin
                      InformaG('Só é possível reativar pedido/orçamento quando o sistema não estiver efetuando uma venda!');
                      EntradaDados.SetFocus;
                      Exit;
                    end
                  else
                    begin
                      ReativarPedidoOrcamento := True;
                      Application.CreateForm(TFormTelaImportarPedidoOrcamento, FormTelaImportarPedidoOrcamento);
                      FormTelaImportarPedidoOrcamento.LblNomeSistema.Caption := 'Reabilitar Pedido/Orçamento(s)';
                      FormTelaImportarPedidoOrcamento.DBGridLista.Columns.Items[3].Title.Caption := 'Marc';
                      FormTelaImportarPedidoOrcamento.ShowModal;
                      ReativarPedidoOrcamento := False;
                    end;
                end;
          //IMPORTAR PEDIDO/ORÇAMENTO
          '2' : begin
                  if (EstadoPDVChk <> AguardandoNovaVenda) then
                    begin
                      InformaG('Só é possível importar pedido/orçamento quando o sistema não estiver efetuando uma venda!');
                      EntradaDados.SetFocus;
                      Exit;
                    end
                  else
                    begin
                      Application.CreateForm(TFormTelaImportarPedidoOrcamento, FormTelaImportarPedidoOrcamento);
                      FormTelaImportarPedidoOrcamento.ShowModal ;
                    end;
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
                    if FileExists(ExtractFilePath(Application.ExeName) + '\NoBreak.txt') then
                      begin
                        DadosImpressora.ECFAtual := ECFAtual;
                        DadosImpressora.PortaECFAtual := PortaECFAtual;
                        RetornoCartao.QtdeLinhas := 1;
                        RetornoCartao.Print := TStringList.Create;
                        RetornoCartao.Print.LoadFromFile(ExtractFilePath(Application.ExeName) + '\NoBreak.txt');
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
                end ;
            'S':begin
                  //TROCA SERIAL PRODUTO
                  CriaFormulario(TFormTelaTransfereNroSerial,
                                 'FormTelaTransfereNroSerial',
                                 False,
                                 False,
                                 True,
                                 '');
                end;
            'T':begin
                  //Tela Transf. entre Filiais
                  CriaFormulario(TFormTelaTransferencia,
                                 'FormTelaTransferencia',
                                 False,
                                 False,
                                 True,
                                 '');
                end ;
          end;
      end;
  end ;
end;

procedure TFormTelaItens.CancelarVenda ;
begin
  if (DM.SQLterminalativoTERMIQTDEPADRAO.Value > 0) then
    EditQtde.Text := DM.SQLterminalativoTERMIQTDEPADRAO.AsString
  else
    EditQtde.Value := 0;

  if GravarCupomCancelado = 'S' then
    begin
      { Testa para ver se ja gravou esse movimento para nao gravar duas vezes o mesmo, em casos de trancar o PDV e ter que usar Ctrl+Del,
        mais de uma vez }
      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('select CUPOA13ID from CUPOM') ;
      DM.SQLTemplate.SQL.Add('where (EMPRICOD='+EmpresaPadrao+') and (TERMICOD='+IntToStr(TerminalAtual)+') and (CUPOINRO='+IntToStr(StrToInt(NroCupomFiscal))+')');
      DM.SQLTemplate.Open ;
      if DM.SQLTemplate.IsEmpty then
        begin
          // Gravar Cabecalho Cupom E Itens
          GravaCupom;
          GravaCupomItem;

          // Gravar Movimento de Caixa mostrando a Tentativa de Venda no Caixa
          DM.SQLTemplate.Close ;
          DM.SQLTemplate.SQL.Clear ;
          DM.SQLTemplate.SQL.Add('select OPCXICOD from OPERACAOCAIXA') ;
          DM.SQLTemplate.SQL.Add('where OPCXA5SIGLA = "VDVIS"') ;
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
                                'V. '+NroCupomFiscal,//WMVCIXA15DOCORIG
                                CurSubTotal.Value,//WMOVICAIXN2VLR
                                0,//WMOVICAIXN2VLRJURO
                                0,//WMOVICAIXN2VLRMULTA
                                0,//WMOVICAIXN2VLRDEC
                                'null',//WMOVICAIXA6NUMCUPOM
                                'C',//WTIPO
                                UsuarioAtualNome+'/'+ UsuarioAutorizouOperacao,//WMVCXA255HIST
                                'N',
                                '');

          // Gravar Movimento de Caixa mostrando o Cancelamento da Venda no Caixa
          DM.SQLTemplate.Close ;
          DM.SQLTemplate.SQL.Clear ;
          DM.SQLTemplate.SQL.Add('select OPCXICOD from OPERACAOCAIXA') ;
          DM.SQLTemplate.SQL.Add('where OPCXA5SIGLA = "CANCO"') ;
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
                                'C.V. '+NroCupomFiscal,//WMVCIXA15DOCORIG
                                CurSubTotal.Value,//WMOVICAIXN2VLR
                                0,//WMOVICAIXN2VLRJURO
                                0,//WMOVICAIXN2VLRMULTA
                                0,//WMOVICAIXN2VLRDEC
                                'null',//WMOVICAIXA6NUMCUPOM
                                'D',//WTIPO
                                UsuarioAtualNome+'/'+ UsuarioAutorizouOperacao,//WMVCXA255HIST
                                'N',
                                '')
          else
            Showmessage('Não foi encontrado nenhuma Op.Caixa para Cancelamento de Venda pelo Operador! Verifique!');                      
        end;
    end;

  CodUsuarioAutorizouOperacao := 0 ;
  UsuarioAutorizouOperacao    := '';

  FormTelaItens.LimparTabTempItens;

  if MostraPublicidade then
    begin
      slideshow.Enabled := True;
      PagePrincipal.ActivePage := TabPublicidade;
    end
  else
    begin
      slideshow.Enabled := False;
      PagePrincipal.ActivePage := TabVenda;
    end;

end ;

procedure TFormTelaItens.CalculaTotal ;
var
  ValorTemp : Double;
begin
  CurSubTotal.Value := 0 ;
  ValorTemp         := 0 ;
  VlrBonusTroca     := 0 ;

  SQLSubTotal.Close;
  SQLSubTotal.SQL.Clear;
  SQLSubTotal.SQL.Add('Select Sum(VLRTOTAL) as SubTotal from '+TabelaMaisTerminal+' where TERMICOD = '+dm.SQLTerminalAtivoTERMICOD.AsString+ ' and (TROCA <> "S" or TROCA is null) and CANCELADO <> "S"');
  SQLSubTotal.Open;
  if SQLSubTotal.FieldByName('SubTotal').Value > 0 then
    ValorTemp := SQLSubTotal.FieldByName('SubTotal').Value;
  CurSubTotal.Value := ValorTemp;
  CurSubTotal.Update;

  // Calcula Total Bonus Troca
  SQLSubTotal.Close;
  SQLSubTotal.SQL.Clear;
  SQLSubTotal.SQL.add('Select Sum(VLRTOTAL) as SubTotal from '+TabelaMaisTerminal+' where TERMICOD = '+dm.SQLTerminalAtivoTERMICOD.AsString+ ' and TROCA = "S"');
  SQLSubTotal.Open;
  if SQLSubTotal.fieldbyname('SubTotal').Value > 0 then
    VlrBonusTroca := SQLSubTotal.fieldbyname('SubTotal').Value;

  ValorBonusTroca.Value := VlrBonusTroca;
  ValorBonusTroca.Update;

  LblSubTotal.caption := FormatFloat('R$ ##0.00',CurSubTotal.value);
  LblSubTotal.update;

  Application.ProcessMessages;
end ;

procedure TFormTelaItens.TestaStatusCaixa ;
begin
  VerCaixa := false;

  if not FileExists('Posto.txt') then
    begin
      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('select * from TERMINAL') ;
      DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
      DM.SQLTemplate.Open ;

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
    end;
end ;

procedure TFormTelaItens.CurSubTotalEnter(Sender: TObject) ;
begin
  EntradaDados.SetFocus ;
  EntradaDados.SelectAll ;
end ;

procedure TFormTelaItens.FormActivate(Sender: TObject) ;
begin
  FinalizacaodeVenda := false ;

  if TerminalModo = 'C' then
    TestaStatusCaixa ;
end ;

procedure TFormTelaItens.ListaItensEnter(Sender: TObject) ;
begin
  EntradaDados.Setfocus ;
end ;

procedure TFormTelaItens.PreparaEstadoBalcao(Estado : string) ;
begin
  if EstadoPDVChk = AguardandoNovaVenda then
  begin
    if not SQLItensVendaTemp.Active then
      SQLItensVendaTemp.Open ;

    Entradadados.Clear ;

    LimparVariaveis ;

    DescricaoProduto.Caption := '' ;
    AdicionalProduto.Caption := '' ;

    if DetalhesVenda = 'S' then
      begin
        LBRef.Caption        := '' ;
        LBSaldo.Caption      := '' ;
      end;  
    LblInstrucoes.Caption  := '' ;

    rxVendedor.Visible := False;
    rxVendedor.Caption := '' ;
    rxVendedor.Update;

    LblBonusTroca.Visible    := False;
    LblBonusTroca.Update;
    ValorBonusTroca.Value    := 0  ;
    ValorBonusTroca.Visible  := False;
    ValorBonusTroca.Update;

//    LimparTabTempItens;

    CalculaTotal;

    // GridItens.Options     := [dgTitles,dgCancelOnExit,dgIndicator];

    if TerminalModo = 'C' then
      LblInstrucoes.Caption := 'CAIXA LIVRE - Próximo Cliente';
    if TerminalModo = 'P' then
      LblInstrucoes.Caption := 'PRE VENDA / ORÇAMENTO LIVRE' ;

    LblInstrucoes.Refresh ;

    // MANDA DADOS DISPLAY TECLADO
    IF TecladoReduzidoModelo = 'TEC44DIS' THEN
      EnviaTecladoTextoDisplay44(LblInstrucoes.Caption,'');
    IF TecladoReduzidoModelo = 'TEC65' THEN
      EnviaTecladoTextoDisplay65(LblInstrucoes.Caption,'');


{    if FileExists('Posto.txt') then
      EntradaDadosKeyDown(nil, F5, [ssAlt]);}

    exit ;
  end ;

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
    if DetalhesVenda = 'S' then
      begin
        LBRef.Caption   := '' ;
        LBSaldo.Caption := '' ;
      end;  
    exit;
  end;

  if EstadoPDVChk = CancelandoItem then
  begin
    LblInstrucoes.Caption := 'Informe o Numero do Item a Cancelar';
    LblInstrucoes.Refresh;
    DescricaoProduto.Caption := '';
    AdicionalProduto.Caption := '';
    if DetalhesVenda = 'S' then
      begin
        LBRef.Caption   := '' ;
        LBSaldo.Caption := '' ;
      end;  

    // MANDA DADOS DISPLAY TECLADO
    IF TecladoReduzidoModelo = 'TEC44DIS' THEN
      EnviaTecladoTextoDisplay44(LblInstrucoes.Caption,'');
    IF TecladoReduzidoModelo = 'TEC65' THEN
      EnviaTecladoTextoDisplay65(LblInstrucoes.Caption,'');

    exit;
  end;

  if EstadoPDVChk = DescontoPercItem then
  begin
    LblInstrucoes.Caption := 'Informe o % Desconto no Proximo Item';
    LblInstrucoes.Refresh;
    EntradaDados.Refresh;
    DescricaoProduto.Caption := '';
    AdicionalProduto.Caption := '';
    if DetalhesVenda = 'S' then
      begin
        LBRef.Caption   := '' ;
        LBSaldo.Caption := '' ;
      end;

    // MANDA DADOS DISPLAY TECLADO
    IF TecladoReduzidoModelo = 'TEC44DIS' THEN
      EnviaTecladoTextoDisplay44(LblInstrucoes.Caption,'');
    IF TecladoReduzidoModelo = 'TEC65' THEN
      EnviaTecladoTextoDisplay65(LblInstrucoes.Caption,'');

    exit;
  end;

  if EstadoPDVChk = DescontoVlrItem then
  begin
    LblInstrucoes.Caption := 'Informe o Valor de Desconto do Proximo Item';
    LblInstrucoes.Refresh;
    DescricaoProduto.Caption := '';
    AdicionalProduto.Caption := '';
    if DetalhesVenda = 'S' then
      begin
        LBRef.Caption   := '' ;
        LBSaldo.Caption := '' ;
      end;  

    // MANDA DADOS DISPLAY TECLADO
    IF TecladoReduzidoModelo = 'TEC44DIS' THEN
      EnviaTecladoTextoDisplay44(LblInstrucoes.Caption,'');
    IF TecladoReduzidoModelo = 'TEC65' THEN
      EnviaTecladoTextoDisplay65(LblInstrucoes.Caption,'');

    Exit;
  end;

  if EstadoPDVChk = InformandoConvenio then
  begin
    LblInstrucoes.Caption := 'Informe o Código do Convenio' ;
    LblInstrucoes.Refresh ;
    exit ;
  end ;

  if EstadoPDVChk = InformandoOrdemCompra then
  begin
    LblInstrucoes.Caption := 'Informe NRO. da Ordem de Compra do Convênio' ;
    LblInstrucoes.Refresh ;
    exit ;
  end ;

  if EstadoPDVChk = InformandoClienteConvenio then
  begin
    LblInstrucoes.Caption := 'Informe o Cliente Deste Convenio' ;
    LblInstrucoes.Refresh ;
    exit ;
  end ;

  if EstadoPDVChk = InformandoDescricaoTecnica then
  begin
    LblInstrucoes.Caption := 'Informe o Produto para Alterar a Descrição Técnica' ;
    LblInstrucoes.Refresh ;
    // MANDA DADOS DISPLAY TECLADO
    IF TecladoReduzidoModelo = 'TEC44DIS' THEN
      EnviaTecladoTextoDisplay44(LblInstrucoes.Caption,'');
    IF TecladoReduzidoModelo = 'TEC65' THEN
      EnviaTecladoTextoDisplay65(LblInstrucoes.Caption,'');
    exit ;
  end ;

end ;

procedure TFormTelaItens.LimparVariaveis;
begin
  LblCLiente.Caption     := '';
  LblConvenio.Caption    := '';
  ClienteVenda           := '';
  ClienteCadastro        := '';
  UsaPrecoVenda          := '';
  ClienteDependente      := '';
  NomeClienteVenda       := '';
  EnderecoClienteVenda   := '';
  CidadeClienteVenda     := '';
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
  TermPVImp              := 0 ;
  CodPVImp               := 0 ;
  ConvenioVenda          := 0 ;
  NroOrdemCompraConvenio := 0 ;
  TotalDescItens         := 0 ;
  TipoPadrao             := '';
  DataAniversario        := '';
  AplicarDescontoItem         := False;
  ProcuraProdutoPelaRef08Char := False;
  GravaPrevendaSemFinanceiro  := False;
  ImpValeTroco                := False;

  if FileExists('Bmp\Logo PDV.Bmp') then
    Foto.Picture.LoadFromFile('Bmp\Logo PDV.Bmp') ;
  if FileExists('Bmp\Logo PDV.Jpg') then
    Foto.Picture.LoadFromFile('Bmp\Logo PDV.Jpg') ;

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
      if SQLItensVendaTemp.Locate('NUMITEM',IntToStr(StrToInt(EntradaDados.Text)),[]) then
        begin
          LblInstrucoes.Caption := 'Informando a Descrição Técnica';
          Application.CreateForm(TFormTelaDescricaoTecnicaProduto,FormTelaDescricaoTecnicaProduto);
          SQLItensVendaTemp.Edit;
          FormTelaDescricaoTecnicaProduto.ShowModal;
          if FormTelaDescricaoTecnicaProduto.ModalResult = MrOk then
            begin
              if FormTelaDescricaoTecnicaProduto.MemoDescrTec.Lines.Text <> '' then
                SQLItensVendaTemp.Post;
              SQLItensVendaTemp.Last;
            end
          else
            begin
              SQLItensVendaTemp.Cancel;
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
  PanelDataHora.Caption := FormatDateTime('ddddddddddddd hh:mm:ss', Now);
  PanelDataHora.Update;
  if (LeitorCodigoBarras <> '') and (Serial.PortIsOpen) then
    begin
      Serial.GetData;
      Serial.FlushRX;
      Serial.FlushTX;
      Application.ProcessMessages;
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
  FormTelaFotoExpandida.Foto.Picture.Assign(FormTelaItens.Foto.Picture) ;
  FormTelaFotoExpandida.ShowModal;
end;

procedure TFormTelaItens.SQLItensVendaTempNewRecord(DataSet: TDataSet);
begin
  SQLItensVendaTempTERMICOD.Value := TerminalAtual;
end;

procedure TFormTelaItens.RunLBEnd(Sender: TObject);
begin
//  RunLB.RLStart(1);
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
  if (EditQtde.Value < 0) then
    begin
      InformaG('A Quantidade nao pode ser menor que ZERO!');
      EditQtde.SetFocus;
    end;

  if (EditQtde.Value = 0) or (EditQtde.Value = Null) then
    begin
      ValorItem := 0;
      EntradaDados.SetFocus;
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
begin
  if Key = VK_Return then
    begin
      if (EditQtde.Value > 0) then
        begin
          if (EntradaDados.Text <> '') then
            begin
              EntradaDados.SetFocus;
              FormTelaItens.EstadoPDVChk := 'InformandoItens';
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
var
  RetornoUser : TInfoRetornoUser;
begin
  LbinstrucoesOld := LblInstrucoes.Caption;
  if (EstadoPDVChk <> InformandoItens) and (EstadoPDVChk <> InformandoItensTroca) then
    begin
      InformaG('A alteração da quantidade do item só pode aplicada quando o sistema está solicitando itens!') ;
      EntradaDados.SetFocus;
      Exit;
    end;

  if DM.SQLUsuario.Locate('USUAICOD',UsuarioCorrente,[]) then
    if DM.SQLUsuario.FieldByName('USUACTROCAQTDE').AsString <> 'S' then
      begin
        RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACTROCAQTDE',RetornoUser);
        if RetornoCampoUsuario <> 'S' then
          begin
            InformaG('Usuario não tem permissão para alterar a quantidade!') ;
            EntradaDados.SetFocus;
            Exit;
          end;
      end;

  LblInstrucoes.Caption := 'Informe a Quantidade...';
  LblInstrucoes.Refresh;
  // MANDA DADOS DISPLAY TECLADO
  IF TecladoReduzidoModelo = 'TEC44DIS' THEN
    EnviaTecladoTextoDisplay44(LblInstrucoes.Caption,'');
  IF TecladoReduzidoModelo = 'TEC65' THEN
    EnviaTecladoTextoDisplay65(LblInstrucoes.Caption,'');
end;

procedure TFormTelaItens.GridItensDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  If SQLItensVendaTempTROCA.Value = 'S' Then
    begin
      GridItens.Canvas.Font.Color:=clGreen;
      GridItens.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
  If SQLItensVendaTempCANCELADO.Value = 'S' Then
    begin
      GridItens.Canvas.Font.Color:=clRed;
      GridItens.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
end;

procedure TFormTelaItens.EntradaDadosKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = 107 then // sinal de + para fazer igual ao CTRL+Q
   begin
     if (EstadoPDVChk = InformandoItens) then
     begin
       Key:= 0;
       EntradaDados.SelText := '';
       Entradadados.SetSelTextBuf('');
       if EstadoPDVChk <> InformandoItens then
       begin
         InformaG('A alteração da quantidade do item só pode aplicada quando o sistema está solicitando itens!') ;
         EntradaDados.SelectAll ;
         exit ;
       end ;
       EntradaDados.Clear;
       EditQtde.SetFocus;
     end;
   end;
end;

procedure TFormTelaItens.BtnF1Click(Sender: TObject);
begin
  EntradaDados.SetFocus;
  FormKeyDown(Sender, F1, [ssAlt]);
end;

procedure TFormTelaItens.BtnF2Click(Sender: TObject);
begin
  EntradaDados.SetFocus;
  If EstadoPDVChk = 'AguardandoNovaVenda' Then
    FormKeyDown(Sender, F2, [ssAlt]);
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

procedure TFormTelaItens.BtnF11Click(Sender: TObject);
begin
  EntradaDados.SetFocus;
  FormKeyDown(Sender, F11, [ssAlt]);
end;

procedure TFormTelaItens.BtnF12Click(Sender: TObject);
begin
  EntradaDados.SetFocus;
  FormKeyDown(Sender, F12, [ssAlt]);
end;

procedure TFormTelaItens.TimeLembreteTimer(Sender: TObject);
var AMANHA : STRING;
    Year1, Month1, Day1: Word;
begin
  inherited;
  if (DM.SQLPopUPCFGCCEXIBIRPOPTARE.AsString = 'S') and (EstadoPDVChk = AguardandoNovaVenda) then
    begin
      SQLAgendaVer.Close;
      SQLAgendaVer.SQL.Text := 'Select Count(*) From TAREFA Where  USUAICODDEST = ' + IntToStr(UsuarioCorrente) + ' and TARECSTATUS <> "T"';
      SQLAgendaVer.Open;
      if (SQLAgendaVer.FieldByName('Count').AsInteger > 0) then
        begin
          if Application.FindComponent('FormTelaLembreteTarefa') = nil then
            begin
              Application.CreateForm(TFormTelaLembreteTarefa,FormTelaLembreteTarefa);
              FormTelaLembreteTarefa.Show;
            end;
        end;
    end;
end;

Function TFormTelaItens.GravaCupom:Boolean;
begin
  // Grava Cupom Cabecalho
  DM.SQLCupom.Close;
  DM.SQLCupom.MacroByName('MFiltro').Value := 'CUPOA13ID is null And TERMICOD = ' + IntToStr(TerminalAtual)+' And EMPRICOD = ' + EmpresaPadrao;
  DM.SQLCupom.Open;

  DM.SQLCupom.Append;

  DM.SQLConfigVenda.Close;
  DM.SQLConfigVenda.Open;

  if DM.SQLConfigVendaOPESICODCUPOM.AsVariant <> Null then
    begin
      DM.SQLCupomOPESICOD.Value        := DM.SQLConfigVendaOPESICODCUPOM.Value;
      if DM.ProcuraRegistro('OPERACAOESTOQUE',['OPESICOD'],[DM.SQLConfigVendaOPESICODCUPOM.AsString],1) then
        begin
          if DM.SQLTemplate.FieldByName('PLCTA15CODDEB').AsString <> '' then
            DM.SQLCupomPLCTA15CODDEB.AsString  := DM.SQLTemplate.FieldByName('PLCTA15CODDEB').AsString;
          if DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString <> '' then
            DM.SQLCupomPLCTA15CODCRED.AsString := DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString;
          if DM.SQLTemplate.FieldByName('CFOPA5CODDENTROUF').AsString <> '' then
            DM.SQLCupomCFOPA5COD.AsString      := DM.SQLTemplate.FieldByName('CFOPA5CODDENTROUF').AsString;
        end;
    end;

  DM.SQLCupomEMPRICOD.AsString          := EmpresaPadrao;
  DM.SQLCupomTERMICOD.Value             := TerminalAtual;
  DM.SQLCupomCUPODEMIS.Value            := Date;
  DM.SQLCupomUSUAICODVENDA.Value        := UsuarioCorrente;
  DM.SQLCupomUSUAICODCANC.Value         := CodUsuarioAutorizouOperacao;
  DM.SQLCupomCUPOCSTATUS.Value          := 'C';
  DM.SQLCupomCUPON2TOTITENS.Value       := CurSubTotal.Value;
  DM.SQLCupomCUPON2TOTITENSRET.Value    := 0;
  DM.SQLCupomCUPON2ACRESC.Value         := 0;
  DM.SQLCupomCUPON2DESC.Value           := 0;
  DM.SQLCupomCUPON2DESCITENS.Value      := 0;
  DM.SQLCupomCUPOINRO.AsString          := NroCupomFiscal ;
  DM.SQLCupomCUPOCTIPOPADRAO.Value      := 'VISTA';
  DM.SQLCupomCUPODQUITACAO.AsDateTime   := Date;
  DM.SQLCupomCUPON2CONVTAXA.Value       := 0 ;
  DM.SQLCupomCUPOINROORDCOMPRA.Value    := 0 ;
  DM.SQLCupomCUPON2VLRCOMISSAO.Value    := 0 ;
  DM.SQLCupomCUPON2JUROATRAS.Value      := 0 ;
  DM.SQLCupomCUPON2MULTAATRAS.Value     := 0 ;
  DM.SQLCupomCUPON3CREDTAXA.Value       := 0 ;
  DM.SQLCupomPLRCICOD.Value             := dm.SQLTerminalAtivoPLRCICOD.Value;
  DM.SQLCupomVENDICOD.Value             := dm.SQLTerminalAtivoVENDICOD.Value;
  DM.SQLCupomCLIEA13ID.Value            := dm.SQLTerminalAtivoCLIEA13ID.Value;
  DM.SQLCupomPLRCICOD.Value             := dm.SQLTerminalAtivoPLRCICOD.Value;
  DM.SQLCupomCLIENTENOME.Value          := 'Consumidor Final' ;
  DM.SQLCupomPENDENTE.Value             := 'S' ;
  DM.SQLCupomREGISTRO.Value             := Now ;
  try
    DM.SQLCupom.Post;
    GravaCupom        := True;
    Application.ProcessMessages;
  except
    DM.SQLCupom.Cancel;
    GravaCupom        := False;
    Application.ProcessMessages;
  end;
end;

Function TFormTelaItens.GravaCupomItem:Boolean;
begin
  DM.SQLCupomItem.Close;
  DM.SQLCupomItem.MacroByName('MFiltro').Value := 'CUPOA13ID is null';
  DM.SQLCupomItem.Open;
  SQLItensVendaTemp.First;
  while not SQLItensVendaTemp.Eof do
    begin
      DM.SQLCupomItem.Append;
      DM.SQLCupomItemEMPRICOD.Value                := EmpresaCorrente;
      DM.SQLCupomItemCUPOA13ID.Value               := dm.SQLCupomCUPOA13ID.Value;
      DM.SQLCupomItemCPITIPOS.Value                := SQLItensVendaTempNUMITEM.Value;
      DM.SQLCupomItemPRODICOD.AsString             := SQLItensVendaTempCODIGO.AsString;
      DM.SQLCupomItemCPITCSTATUS.AsString          := 'C';
      DM.SQLCupomItemCPITN3QTD.Value               := SQLItensVendaTempQUANTIDADE.Value;
      DM.SQLCupomItemCPITN3QTDTROCA.Value          := 0;
      DM.SQLCupomItemCPITN3VLRUNIT.Value           := SQLItensVendaTempVLRUNITBRUT.Value;
      DM.SQLCupomItemCPITN3VLRCUSTUNIT.Asstring    := SQLItensVendaTempVLRCUSTO.AsString;
      DM.SQLCupomItemCPITN2DESC.Value              := 0; // Foi retirado o desconto para gravar o valor real da venda
      DM.SQLCupomItemCPITN2VLRDESCSOBTOT.Value     := 0;
      try
        DM.SQLCupomItemCPITN3VLRUNITLUCR.Value       := SQLItensVendaTempVLRUNITBRUT.Value - SQLItensVendaTempVLRCUSTO.Value;
      except
        DM.SQLCupomItemCPITN3VLRUNITLUCR.Value       := 0;
      end;
      DM.SQLCupomItemVENDICOD.Value                := dm.SQLTerminalAtivoVENDICOD.Value;
      DM.SQLCupomItemENCERRANTE.AsString           := '';
      DM.SQLCupomItemCOITN2ICMSALIQ.Value          := 0;
      DM.SQLCupomItemCPITN2BASEICMS.Value          := 0;
      DM.SQLCupomItemCPITN2VLRICMS.Value           := 0;
      DM.SQLCupomItemCPITN2VLRQDEVERIAVENDER.Value := 0;
      DM.SQLCupomItemPENDENTE.Value                := 'S';
      DM.SQLCupomItemREGISTRO.Value                := now;
      try
        DM.SQLCupomItem.Post;
        GravaCupomItem    := True;
        Application.ProcessMessages;
      except
        DM.SQLCupomItem.Cancel;
        GravaCupomItem    := False;
        Application.ProcessMessages;
      end;

      SQLItensVendaTemp.Next;
    end;
end;


procedure TFormTelaItens.BtF7Click(Sender: TObject);
begin
  EntradaDados.SetFocus;
  FormKeyDown(Sender, F7, [ssAlt]);
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


procedure TFormTelaItens.btnSairClick(Sender: TObject);
begin
  EntradaDados.SetFocus;
  if EstadoPDVChk <> AguardandoNovaVenda then
    keybd_event(27,27,0,0)
  else
    Close ;
end;

procedure TFormTelaItens.FormShow(Sender: TObject);
begin
  {Testa pra ver se tem caminho ao Servidor para definir se o PDV é Offline}
  if dm.ConectaServidor then
    shpStatusServidor.Brush.Color := clLime
  else
    shpStatusServidor.Brush.Color := clRed;
end;

procedure TFormTelaItens.TabPublicidadeShow(Sender: TObject);
begin
  slideshow.Animation := True;
end;

procedure TFormTelaItens.TabVendaShow(Sender: TObject);
begin
  slideshow.Animation := False;
end;

procedure TFormTelaItens.setarceiroClick(Sender: TObject);
begin
  try
    WinExec(Pchar(ParceiroPath),sw_Show);
  except
    Application.ProcessMessages;
  end;

  EntradaDados.SetFocus;
end;

end.
