unit TelaItens;

interface

uses
  Variants, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, StdCtrls, Db, DBTables, Buttons,JPEG, Mask, ToolEdit,
  CurrEdit, ConerBtn, DBCtrls, RXCtrls, RxQuery, EWall, ComObj, Serial, Math, ShellApi,
  RxCalc, ppDB, ppDBPipe, ppDBBDE, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, CRLabel, dbcgrids, IniFiles;

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
    Timer: TTimer;
    NomeEmpresa: TRxLabel;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoPRODIAGRUPGRADE: TIntegerField;
    SQLProdutoUNIDICOD: TIntegerField;
    SQLProdutoPRODICODPAI: TIntegerField;
    SQLProdutoPRODCTIPOBAIXA: TStringField;
    SQLProdutoPRODN3VLRVENDA: TBCDField;
    SQLProdutoPRODA30ADESCRREDUZ: TStringField;
    SQLProdutoICMSICOD: TIntegerField;
    PanelDadosCliente: TPanel;
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
    PanelDadosConvenio: TPanel;
    LblConvenio: TLabel;
    LblInstrucoes: TRxLabel;
    MemoRetorno: TMemo;
    LblSubTotal: TRxLabel;
    CurSubTotal: TCurrencyEdit;
    Foto: TImage;
    Panel2: TPanel;
    GridItens: TDBGrid;
    EntradaDados: TEdit;
    Bevel1: TBevel;
    Bevel7: TBevel;
    Bevel5: TBevel;
    DescricaoProduto: TRxLabel;
    AdicionalProduto: TRxLabel;
    SQLProdutoPRODN3VLRCOMPRA: TBCDField;
    SQLProdutoPRODN3VLRCUSTO: TBCDField;
    SQLProdutoPRODA255DESCRTEC: TStringField;
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
    LabelLeitor: TLabel;
    BtnF1: TConerBtn;
    BtnF2: TConerBtn;
    BtnF3: TConerBtn;
    BtnF4: TConerBtn;
    BtnF8: TConerBtn;
    BtnF11: TConerBtn;
    BtnF12: TConerBtn;
    BtnSair: TConerBtn;
    SQLProdutoPRODA60REFER: TStringField;
    SQLProdutoPRODBIMAGEM: TBlobField;
    RxLabel1: TRxLabel;
    LblCLiente: TLabel;
    LbVendedor: TRxLabel;
    LblBonusTroca: TRxLabel;
    ValorBonusTroca: TCurrencyEdit;
    SQLProdutoPRODCATIVO: TStringField;
    LBRef: TRxLabel;
    LBSaldo: TRxLabel;
    SQLProdutoPRODA60CODBAR: TStringField;
    RxCalc: TRxCalculator;
    ppImprimeItensVendaTemp: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel17: TppLabel;
    ppLabel8: TppLabel;
    ppLabel11: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText6: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText18: TppDBText;
    ppDBText4: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel21: TppLabel;
    PipeItensVenda: TppBDEPipeline;
    ppLabel1: TppLabel;
    SQLItensVendaTemp: TTable;
    SQLSubTotal: TRxQuery;
    TblUnidade: TTable;
    TblUnidadeUNIDICOD: TIntegerField;
    TblUnidadeUNIDA5DESCR: TStringField;
    TblUnidadePENDENTE: TStringField;
    TblUnidadeREGISTRO: TDateTimeField;
    TblUnidadeUNIDA15DESCR: TStringField;
    SQLProdutoUNIDADE: TStringField;
    RunLB: TRunLabel;
    TblUnidadeUNIDCFRAC: TStringField;
    SQLProdutoFracionado: TStringField;
    SQLProdutoMARCICOD: TIntegerField;
    SQLProdutoPRODDPREVCOMPRA: TDateTimeField;
    RxLabel2: TRxLabel;
    EditQtde: TCurrencyEdit;
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
    TimerPista: TTimer;
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
    SQLAgendaVer: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EntradaDadosKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure CurSubTotalEnter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure ListaItensEnter(Sender: TObject);
    procedure GridItensEnter(Sender: TObject);
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
    procedure BtnF8Click(Sender: TObject);
    procedure BtnF11Click(Sender: TObject);
    procedure BtnF12Click(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure TimerPistaTimer(Sender: TObject);
    procedure TimeLembreteTimer(Sender: TObject);
  private
    { Private declarations }
    WNumItem, ItemCancelado : integer ;
    FormatStrQuant, FormatStrVlrVenda,
    InfDesc,
    Tributo       : string ;
    VerCaixa, TemProdutoSemSubsTrib, TemProdutoComSubsTrib : boolean ;
    Tecla : Word;
    procedure CalculaTotal ;
    procedure CapturaCodigosIniciais ;
    procedure InformaDescricaoTecnicaProduto;
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
    NroSerieProduto  : string ;
    TrocandoItens, SolicitarPreco, SolicitarPrecoQDeveriaSerVendido, GPAtivo, TrancouVenda : boolean ;
    ValorItem, ValorItemQDeveriaSerVendido, ValorCustoTotal, ValorLucroTotal : Currency;
    DescItemPerc,
    DescItemVlr,
    TotalDescItens,
    ReducaoICMS,
    QuantItem,QuantProx, SaldoEstoqueAtual : Double;
    VendPreVenda  : integer;
    BlobStream : TStream;
    JPEGImage  : TJPEGImage;
    Arquivo : TextFile;
    procedure PreparaEstadoBalcao(Estado : string) ;
    procedure TestaStatusCaixa ;
    procedure CancelarVenda ;
    procedure LimparVariaveis ;
    procedure LimparTabTempItens ;
    function  ProxCodContasReceber(Tipo : string ;ProxCntRecTemp : integer) : integer ;
    procedure vercontas;
  end;

var
  FormTelaItens: TFormTelaItens;
  SpeedBtn : array of TSpeedButton;
  VarEncerrante:Integer;
  Bloqueiovenda:String;
  VendeuManual : Boolean;


implementation

uses DataModulo, UnitLibrary, TelaTipoDescontoItem,TelaConsultaRapidaItem,
     TelaItensIncluidosCupom, TelaFechamentoVenda,TelaRecebimentoCrediario,
     TelaTeclasAtalhoTelaItens, ImportarPreVenda, MovimentoCaixaCheckout,
     TelaTiraTeima, TelaCadastroRapidoCliente, ECFCheckout, TelaCompSigtron, Sigtron_FS345_FuncoesDLL,
     CadastroCliente, TelaConsultaRapidaCliente, CadastroCupom, TelaConsultaRapidaConvenio,
     FormResources, VarSYS, Telalogin, UnitCheckoutLibrary, TelaDadosVersao,
     TelaTotaisCaixa, StarFiche, ImportarPedidoOrcamento, TelaDescricaoTecnicaProduto,
     CartaoCredito, ConsultaProvedor, TelaReceituario, WaitWindow, CadastroPedidoVenda,
     TelaCadastroRapidoProdutos, LeitorCodigoBarrasCheckout, WindowsLibrary,
     IMPNAOFISCAL, TelaInformaNumeroSerieProduto, TelaMarcacaoConsulta,
     TelaTransfereNroSerial, TelaConsultaSaldoPorEmpresa, UnSoundPlay,
     TelaBomba, TelaLucro, TelaFotoExpandida, CadastroProfExterno, BemaFi32,
     TelaTransferenciaMercadoria, PrincipalRelatorios, TelaAutomaBombas,
  TelaConsultaContratosCliente, TelaLembreteTarefa;

{$R *.DFM}

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
  I : integer;
  Info : TInfoRetorno;
  ValorTotalCartaoSTR, NomeRede, NroTransacao, Finalizacao : string;
  ValorTotalCartaoFloat : Double;
  IniFile: TiniFile;
begin
  // VERIFICA TECLADO REDUZIDO PRESENTE
  if TecladoReduzidoModelo = 'TEC44DIS' then
    begin
      try
        OpenTec44;
      except  end;
    end;
  if TecladoReduzidoModelo = 'TEC65' then
    begin
      try
        OpenTec65;
      except  end;
    end;

  if not FileExists('Temp\ItensVendaTemp.db') then
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
      TrancouVenda := False;
    end
  else
    TrancouVenda := True;

  if DM.SQLTerminalAtivoTERMCTIPO.Value = 'C' then
    BtnF12.Visible := True
  else
    BtnF8.Caption := 'F5 Fecha Orç.';

  if FileExists('Bmp\Logo PDV.Bmp') then
    Foto.Picture.LoadFromFile('Bmp\Logo PDV.Bmp') ;
  if FileExists('Bmp\Logo PDV.Jpg') then
    Foto.Picture.LoadFromFile('Bmp\Logo PDV.Jpg') ;

  Height := 600 ;
  Width  := 800 ;

  PanelDadosConvenio.Color := $00007FFF;

  FormTelaItens.Caption := '';
  CodProxCntRecTemp := 0 ;
  QuantProx         := 0 ;
  AlterarUsuario    := false ;
  Retaguarda        := false ;
  SolicitarPreco    := false ;
  SolicitarPrecoQDeveriaSerVendido := false ;
  //MouseShowCursor(False) ;

  DescricaoProduto.Caption := 'Seja Bem-Vindo!';
  AdicionalProduto.Caption := '';
  LBRef.Caption   := '';
  LBSaldo.Caption := '';

  EstadoPDVChk := AguardandoNovaVenda ;
  PreparaEstadoBalcao(EstadoPDVChk) ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select EMPRA60NOMEFANT from EMPRESA') ;
  DM.SQLTemplate.SQL.Add('where EMPRICOD = ' + EmpresaPadrao) ;
  DM.SQLTemplate.Open ;
  if not DM.SQLTemplate.EOF then
    begin
      NomeEmpresa.Caption := DM.SQLTemplate.FieldByName('EMPRA60NOMEFANT').Value;
      EmpresaAtualNome    := DM.SQLTemplate.FieldByName('EMPRA60NOMEFANT').Value;
    end;

  if (DM.SQLterminalativoTERMIQTDEPADRAO.Value > 0) then
    EditQtde.Text := DM.SQLterminalativoTERMIQTDEPADRAO.AsString
  else
    EditQtde.Value := 0;

  if dm.SQLTerminalAtivoTERMA60MENSAGEMPDV.Value <> '' then
    begin
      RunLB.RText := dm.SQLTerminalAtivoTERMA60MENSAGEMPDV.Value;
      RunLB.RLStart(1);
    end;


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
  if FileExists('C:\Unit\Gestao\Tef_Dial.txt') then
    begin
      SendDirectory    := 'C:\Tef_Dial\Req';
      ReceiveDirectory := 'C:\Tef_Dial\Resp';
      if not DirectoryExists(ReceiveDirectory + '\Backup') then
        CreateDir(ReceiveDirectory + '\Backup');
      if Ativo then
        begin
          GPAtivo := True;
          if FileExists('C:\Tef_Dial\Resp\IntPos.001') then
            begin
              AssignFile(TextRetornoCartoes,'C:\Tef_Dial\Resp\IntPos.001');
              Reset(TextRetornoCartoes);
               while not Eof(TextRetornoCartoes) do
                begin
                  Application.ProcessMessages;
                  Readln(TextRetornoCartoes,Return);
                  case StrToInt(Copy(Return,1,3)) of
                     3 : ValorTotalCartaoSTR := Trim(Copy(Return,10,Length(Return) - 9));
                    10 : NomeRede            := Trim(Copy(Return,10,Length(Return) - 9));
                    12 : NroTransacao        := Trim(Copy(Return,10,Length(Return) - 9));
                    27 : Finalizacao         := Trim(Copy(Return,10,Length(Return) - 9));
                  end;
                end;
              CloseFile(TextRetornoCartoes);
            end;
          if (not FileExists('C:\Tef_Dial\Resp\IntPos.001') and FileExists('C:\Tef_Dial\Resp\Backup\IntPos.001')) then
            begin
              AssignFile(TextRetornoCartoes,'C:\Tef_Dial\Resp\Backup\IntPos.001');
              Reset(TextRetornoCartoes);
               while not Eof(TextRetornoCartoes) do
                begin
                  Application.ProcessMessages;
                  Readln(TextRetornoCartoes,Return);
                  case StrToInt(Copy(Return,1,3)) of
                     3 : ValorTotalCartaoSTR:= Trim(Copy(Return,10,Length(Return) - 9));
                    10 : NomeRede           := Trim(Copy(Return,10,Length(Return) - 9));
                    12 : NroTransacao       := Trim(Copy(Return,10,Length(Return) - 9));
                    27 : Finalizacao        := Trim(Copy(Return,10,Length(Return) - 9));
                  end;
                end;
              CloseFile(TextRetornoCartoes);
            end;
          if NomeRede <> '' then
            begin
              Confirma(NomeRede, NroTransacao, Finalizacao,False);
              Info.CMC7 := 'A transação de Transferência Eletrônica de Fundos(TEF) foi cancelada!' + #13 + #13 +
                           'Rede --> ' + NomeRede + #13 +
                           'Documento(NSU) --> ' + NroTransacao + #13;
              try
                ValorTotalCartaoFloat := StrToFloat(ValorTotalCartaoSTR);
              except
                ValorTotalCartaoFloat := 0;
              end;
              if ValorTotalCartaoFloat > 0 then
                Info.CMC7 := Info.CMC7 + 'Valor --> ' + Formatfloat(FormatStrVlrVenda,ValorTotalCartaoFloat/100);
              Application.MessageBox(PChar(Info.CMC7),'Atenção', MB_OK + MB_ICONINFORMATION + MB_SYSTEMMODAL + MB_SETFOREGROUND);
              if (ECFAtual <> '') and (PortaECFAtual <> '') then
                begin
                  AbrirPortaECF(ECFAtual,PortaECFAtual);
                  try
                    if not FechamentoRelatorioGerencial(ECFAtual,PortaECFAtual) then
                      FecharCNFV(ECFAtual,PortaECFAtual);
                  except
                  end;
                  FecharPortaECF(ECFAtual,PortaECFAtual);
                end;
            end;
        end;
    end;
  // Verifica TEF DISC => Banrisul
  if FileExists('C:\Unit\Gestao\Tef_Disc.txt') then
    begin
      SendDirectory    := 'C:\Tef_Disc\Req';
      ReceiveDirectory := 'C:\Tef_Disc\Resp';
      if not DirectoryExists(ReceiveDirectory + '\Backup') then
        CreateDir(ReceiveDirectory + '\Backup');

      if Ativo then
        begin
          GPAtivo := True;
          if FileExists('C:\Tef_Disc\Resp\IntPos.001') then
            begin
              AssignFile(TextRetornoCartoes,'C:\Tef_Disc\Resp\IntPos.001');
              Reset(TextRetornoCartoes);
               while not Eof(TextRetornoCartoes) do
                begin
                  Application.ProcessMessages;
                  Readln(TextRetornoCartoes,Return);
                  case StrToInt(Copy(Return,1,3)) of
                     3 : ValorTotalCartaoSTR := Trim(Copy(Return,10,Length(Return) - 9));
                    10 : NomeRede            := Trim(Copy(Return,10,Length(Return) - 9));
                    12 : NroTransacao        := Trim(Copy(Return,10,Length(Return) - 9));
                    27 : Finalizacao         := Trim(Copy(Return,10,Length(Return) - 9));
                  end;
                end;
              CloseFile(TextRetornoCartoes);
            end;
          if (not FileExists('C:\Tef_Disc\Resp\IntPos.001') and FileExists('C:\Tef_Disc\Resp\Backup\IntPos.001')) then
            begin
              AssignFile(TextRetornoCartoes,'C:\Tef_Disc\Resp\Backup\IntPos.001');
              Reset(TextRetornoCartoes);
               while not Eof(TextRetornoCartoes) do
                begin
                  Application.ProcessMessages;
                  Readln(TextRetornoCartoes,Return);
                  case StrToInt(Copy(Return,1,3)) of
                     3 : ValorTotalCartaoSTR:= Trim(Copy(Return,10,Length(Return) - 9));
                    10 : NomeRede           := Trim(Copy(Return,10,Length(Return) - 9));
                    12 : NroTransacao       := Trim(Copy(Return,10,Length(Return) - 9));
                    27 : Finalizacao        := Trim(Copy(Return,10,Length(Return) - 9));
                  end;
                end;
              CloseFile(TextRetornoCartoes);
            end;
          if NomeRede <> '' then
            begin
              Confirma(NomeRede, NroTransacao, Finalizacao,False);
              Info.CMC7 := 'A transação de Transferência Eletrônica de Fundos(TEF) foi cancelada!' + #13 + #13 +
                           'Rede --> ' + NomeRede + #13 +
                           'Documento(NSU) --> ' + NroTransacao + #13;
              try
                ValorTotalCartaoFloat := StrToFloat(ValorTotalCartaoSTR);
              except
                ValorTotalCartaoFloat := 0;
              end;
              if ValorTotalCartaoFloat > 0 then
                Info.CMC7 := Info.CMC7 + 'Valor --> ' + Formatfloat(FormatStrVlrVenda,ValorTotalCartaoFloat/100);
              Application.MessageBox(PChar(Info.CMC7),'Atenção', MB_OK + MB_ICONINFORMATION + MB_SYSTEMMODAL + MB_SETFOREGROUND);
              if (ECFAtual <> '') and (PortaECFAtual <> '') then
                begin
                  AbrirPortaECF(ECFAtual,PortaECFAtual);
                  try
                    if not FechamentoRelatorioGerencial(ECFAtual,PortaECFAtual) then
                      FecharCNFV(ECFAtual,PortaECFAtual);
                  except
                  end;
                  FecharPortaECF(ECFAtual,PortaECFAtual);
                end;
            end;
        end;
    end;

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

  // verifica se existe sistema de automação

  IniFile := TIniFile.Create ('IBGestao.ini');
  Porta   := IniFile.ReadString('IB_Local','PortaAutomacao','FALSE');
  IniFile.Free;
  Bloqueiovenda := 'N'; // se não existe automação vende manual
  VendeuManual  := False;
  if UpperCase(Porta) <> 'FALSE' then
  begin
    // abre conexao com base de dados
    Bloqueiovenda := 'S'; //se existe automação pede senha na venda manual
    if not Dm.IBdb.Connected then
      Dm.IBdb.Connected := True;

    if not Dm.IBTran01.InTransaction then
      dm.IBTran01.StartTransaction;

    // Exibe o painel de botões
    PanelBombas.Height := 79;
    RunLB.Visible := False;
    Panel2.Height := 279;
    Panel2.Top    := 200;
    DescricaoProduto.Height    :=  33;
    DescricaoProduto.Font.Size :=  18;
    DescricaoProduto.Top       := 119;

    Bevel1.Top                 := 115;
    Bevel5.Top                 := 517;

    NomeEmpresa.Height         :=  30;
    NomeEmpresa.Font.Size      :=  18;
    NomeEmpresa.Font.Color     := clBlack;
    NomeEmpresa.ShadowColor    := clYellow;

    LBRef.Height               :=  21;
    lbRef.Font.Size            :=  14;
    LbRef.Top                  := 153;

    LBSaldo.Height             :=  21;
    LBSaldo.Font.Size          :=  14;
    LBSaldo.Top                := 175;

    AdicionalProduto.Height    :=  43;
    AdicionalProduto.Font.Size :=  18;
    AdicionalProduto.Top       := 153;

    Foto.Top                   := 200;
    LblSubTotal.Top            := 345;
    CurSubTotal.Top            := 382;
    Bevel7.top                 := 417;
    PanelDadosCliente.Top      := 428;

    EntradaDados.Top           := 486;
    RxLabel2.Top               := 486;
    EditQtde.Top               := 486;
    LblInstrucoes.Top          := 486;
    BtnF1.Top                  := 521;
    BtnF2.Top                  := 521;
    BtnF3.Top                  := 521;
    BtnF4.Top                  := 521;
    BtnF8.Top                  := 521;
    BtnF11.Top                 := 521;
    BtnF12.Top                 := 521;
    BtnSair.Top                := 521;


    // Carrega o Array de SpeedButtons
    if not Dm.SQLBomba.Active then
      Dm.SQLBomba.Open;
    Dm.SQLBomba.Last;
    For i:= 1 to Dm.SQLBomba.RecordCount do
    begin
        SetLength(SpeedBtn,i+1);
        SpeedBtn[i]:= TSpeedButton.Create(PanelBombas);
        SpeedBtn[i].Parent := PanelBombas;
        if DM.SQLBomba.RecordCount < 24 then
        begin
          SpeedBtn[i].Flat         := True;
          SpeedBtn[i].Transparent  := True;
          SpeedBtn[i].Width := ((792-16)div Dm.SQLBomba.RecordCount);
          SpeedBtn[i].Height:= 67;
          SpeedBtn[i].Top   := 8;
          SpeedBtn[i].Left  := ((((792-16)div Dm.SQLBomba.RecordCount)*(i-1))+2)+(i*1);
          SpeedBtn[i].Caption := 'Bico '+IntToStr(i);
          SpeedBtn[i].Font.Style:= [fsBold];
          SpeedBtn[i].Layout  := blGlyphTop;
          SpeedBtn[i].Glyph.LoadFromFile('BMP\bomba.bmp');
        end
    end;
    if Dm.IBTran01.InTransaction then
      Dm.IBTran01.CommitRetaining;
    if UpperCase(Porta) <> 'FALSE' then
      TimerPista.Enabled := True;
  end;
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
          RxLabel1.Visible   := False;
          RxLabel1.Update;
          LbVendedor.Caption := '';
          LbVendedor.Visible := False;
          LbVendedor.Update;

          ContinuarPreVenda       := False ;
          ReativarPreVenda        := False ;
          vImportarPreVenda       := False ;
          ImportandoPreVenda      := False ;

          if TerminalModo <> 'P' then
            if DM.SQLUsuario.Locate('USUAICOD',UsuarioCorrente,[]) then
              if DM.SQLUsuario.FieldByName('USUACCANCVENDA').AsString <> 'S' then
                if Pergunta('SIM','Você não tem permissão para cancelar venda. Deseja Informar Outro Usuário?') then
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

          if (ECFAtual <> '') and (PortaECFAtual <> '') then
            if not CancelarCupomFiscal(ECFAtual, PortaECFAtual) then
              InformaG('Problemas ao Cancelar Cupom Fiscal');

        end ;
    end ;

  if Key = VK_Return then
  begin
    {* * * * AGUARDANDO NOVA VENDA * * * *}
    if EstadoPDVChk = AguardandoNovaVenda then
    begin
       // Testar Gaveta

      if SQLProduto.Active then SQLProduto.Close;
      if not SQLItensVendaTemp.Active then exit;
      if (EntradaDados.Text = '') or
         ((EntradaDados.Text <> '') and
          (DM.SQLConfigVendaCFVECFINDPRODPORDESCR.Value <> 'N') and
          not IsOld(EntradaDados.Text))and
          (not EncontrouProduto(EntradaDados.Text,SQLProduto)) then
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
                if FileExists('MostraSaldo.txt') then
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
                        LBSaldo.Caption := 'Saldo: ' + FormatFloat('##0.000',DM.SQLTemplate.FieldByName('QUANT').Value);
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
                if FileExists('MostraSaldo.txt') then
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
                  end
                else
                  FormTelaTiraTeima.Foto.Picture.Assign(FormTelaItens.Foto.Picture) ;

                FormTelaTiraTeima.ShowModal;
                if FileExists('MostraRef.txt') then
                  LBRef.Caption            := '' ;
                if FileExists('MostraSaldo.txt') then
                  LBSaldo.Caption          := '' ;
              end
            else
              InformaG('Produto não encontrado!');

          EntradaDados.Clear;
        end;
    end ;
    {* * * * INFORMADO ITENS * * * *}
    if (EstadoPDVChk = InformandoItens) or (EstadoPDVChk = InformandoItensTroca) then
    begin
      if not SQLItensVendaTemp.Active then exit;
      LblInstrucoes.Caption := 'Aguarde, Procurando Produto...';
      LblInstrucoes.Refresh;
      E_PRODBALANCA := False;
      QuantItem := EditQtde.Value;
      if (EntradaDados.Text = '') or
         ((EntradaDados.Text <> '') and
         (not EncontrouProduto(EntradaDados.Text,SQLProduto)) and
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
                      InformaG('Produto não Encontrado!');
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
                  InformaG('Produto não Encontrado!');
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
          InformaG('Produto não Encontrado!');
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
      if FileExists('MostraSaldo.txt') then
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
              LBSaldo.Caption := 'Saldo: ' + FormatFloat('##0.000',DM.SQLTemplate.FieldByName('QUANT').Value);
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
      if FileExists('MostraFoto.txt') then
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

      // Testar se Produto ta relacionado a Bombas
      if not SolicitarPreco and (EditQtde.Text = '') and (EntradaDados.Text <> '') then
        begin
          dm.SQLTanque.Close;
          dm.SQLTanque.MacroByName('MFiltro').Value := 'PRODICOD = ' + SQLProdutoPRODICOD.AsString;
          dm.SQLTanque.Open;
          if not dm.SQLTanque.IsEmpty then
            begin
              if Bloqueiovenda = 'S' then
              begin
                if AutenticaUsuario(UsuarioAtualNome,'USUACUSERMASTER',RetornoUser) = 'S' then
                  VendeuManual := True
                else begin
                  VendeuManual := False;
                  Exit;
                end;
              end;
              dm.SQLBomba.Close;
              dm.SQLBomba.MacroByName('MFiltro').Value := 'TANQICOD = ' + dm.SQLTanqueTANQICOD.AsString ;
              dm.SQLBomba.Open;
              if not dm.SQLBomba.IsEmpty then
                begin
                  if dm.SQLBomba.RecordCount = 1 then
                    begin
                      ValorItem := SQLProdutoPRODN3VLRVENDA.Value;
                      if dm.SQLBombaBOMBN3VLRVISTA.Value > 0 then
                        begin
                          if Pergunta('SIM','Venda a Vista?') then
                             ValorItem := dm.SQLBombaBOMBN3VLRVISTA.Value // Esse Campo com valor de venda a vista
                        end;
                    end
                  else
                    begin
                      Application.CreateForm(TFormTelaBomba,FormTelaBomba);
                      FormTelaBomba.ShowModal;
                      if dm.SQLBombaBOMBN3VLRVISTA.Value > 0 then
                         ValorItem := dm.SQLBombaBOMBN3VLRVISTA.Value;   // Esse Campo com valor de venda a vista
                    end;
                  Application.CreateForm(TFormTelaBomba,FormTelaBomba);
                  FormTelaBomba.panelprincipal.visible  := False;
                  FormTelaBomba.PanelValorTotal.visible := True;
                  FormTelaBomba.ShowModal;
                  if FormTelaBomba.ModalResult = MrOK then
                    ValorTotItem := FormTelaBomba.EditValorTotal.Text;
                  try
                    QuantItem := StrToFloat(ValorTotItem) / ValorItem;
                  except
                    QuantItem := 0;
                  end;
                  FormTelaBomba.Free;
                end;
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
          AdicionalProduto.Caption := '';
          DescricaoProduto.Update;
          AdicionalProduto.Update;
          if FileExists('MostraRef.txt') then
            begin
              LBRef.caption  := 'Ref.: ' + SQLProdutoPRODA60REFER.Value;
              LBRef.Update;
            end;

//          ValorItem := StrToFloat(InputBox('Alteração de Valor do Item', 'Prompt', FormatFloat(FormatStrVlrVenda, RetornaPreco(SQLProduto, DM.SQLConfigVendaTPRCICOD.AsString, ''))));
          // MANDA DADOS DISPLAY TECLADO
          IF TecladoReduzidoModelo = 'TEC44DIS' THEN
            EnviaTecladoTextoDisplay44('Alterar o Valor do Item', '');
          IF TecladoReduzidoModelo = 'TEC65' THEN
            EnviaTecladoTextoDisplay65('Alterar o Valor do Item', '');
          ValorItem := StrToFloat(InputBox('Alteração de Valor do Item', 'Prompt', FormatFloat(FormatStrVlrVenda, RetornaPreco(SQLProduto, DM.SQLConfigVendaTPRCICOD.AsString, UsaPrecoVenda))));
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

      if ValorItem = 0 then
        ValorItem := StrToFloat(FormatFloat(FormatStrVlrVenda,RetornaPreco(SQLProduto, DM.SQLConfigVendaTPRCICOD.AsString, UsaPrecoVenda)));

      CodICMS                  := '';
      CodICMS                  := SQLProdutoICMSICOD.AsString;
      DescricaoProduto.Caption := SQLProdutoPRODA60DESCR.Value;
      AdicionalProduto.Caption := FormatFloat(FormatStrVlrVenda, ValorItem);
      DescricaoProduto.Update;
      AdicionalProduto.Update;

      if FileExists('MostraRef.txt') then
        begin
          LBRef.caption  := 'Ref.: ' + SQLProdutoPRODA60REFER.Value;
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
          ValorItem := StrToFloat(FormatFloat(FormatStrVlrVenda,StrToFloat(InputBox('Alteração de Valor do Item', 'Prompt', FormatFloat(FormatStrVlrVenda, SQLProdutoPRODN3VLRVENDA.Value))))) ;
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
        begin
          AdicionalProduto.Caption := FormatFloat(FormatStrVlrVenda, ValorItem) + ' - ' +
                                      FormatFloat('##0.00Desc.', DescItemVlr) + ' = ' +
                                      FormatFloat(FormatStrVlrVenda, ValorItem-DescItemVlr);

          TotalDescItens := TotalDescItens + DescItemVlr;
        end
      else
        AdicionalProduto.Caption := FormatFloat(FormatStrVlrVenda, ValorItem);

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

      if DescItemVlr > 0 then
      begin
        AdicionalProduto.Caption := '(' + FormatFloat(FormatStrQuant, QuantItem) +
                                    '  x  ' +
                                    FormatFloat(FormatStrVlrVenda, ValorItem) + ') - ' +
                                    FormatFloat('##0.00 Desc.', DescItemVlr) + ' = ' +
                                    FormatFloat(FormatStrVlrVenda, StrToFloat(FormatFloat(FormatStrVlrVenda,((ValorItem*QuantItem)-DescItemVlr))))
                                    + ' ';
        // * StrToFloat(FormatFloat(FormatStrQuant,QuantItem)))
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

          // Verifica Nro Serie
          if ((SQLProdutoPRODCTEMNROSERIE.AsString = 'S') and (not ImportandoPreVenda)) or
             ((SQLProdutoPRODCTEMNROSERIE.AsString = 'S') and (ImportandoPreVenda) and (NroSerieProduto = '')) then
            begin
              Application.CreateForm(TFormTelaInformaNumeroSerieProduto,FormTelaInformaNumeroSerieProduto);
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
          if SQLProdutoPRODCVDESTNEG.Value <> 'S' then
            if FileExists('MostraSaldo.txt') and (not TrocandoItens) and (SQLProdutoPRODCTIPOBAIXA.AsString <> 'N')  and (not ContinuarPreVenda) then
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

          // MANDA DADOS DISPLAY TECLADO
          IF TecladoReduzidoModelo = 'TEC44DIS' THEN
            EnviaTecladoTextoDisplay44(DescricaoProduto.Caption, AdicionalProduto.Caption);
          IF TecladoReduzidoModelo = 'TEC65' THEN
            EnviaTecladoTextoDisplay65(DescricaoProduto.Caption, AdicionalProduto.Caption);

          // Retorna a descricao da UNIDADE
          if (SQLProdutoUNIDADE.AsString <> '') and (Length(SQLProdutoUNIDADE.AsString) = 2) then
            Unidade := SQLProdutoUNIDADE.AsString
          else
            Unidade := 'UN';

          if (ECFAtual <> '') and (PortaECFAtual <> '') and (not TrocandoItens) then
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
                                       copy(SQLProdutoPRODA30ADESCRREDUZ.Value,1,20), {Descricao}
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
                                       SQLProdutoPRODICOD.AsString + '-' + copy(SQLProdutoPRODA30ADESCRREDUZ.Value,1,20), {Descricao}
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
          SQLItensVendaTempTERMICOD.Value     := TerminalAtual ;
          SQLItensVendaTempCODIGO.Value       := SQLProdutoPRODICOD.Value ;

          if SQLLocate('TANQUE','PRODICOD','TANQICOD',SQLProdutoPRODICOD.AsString) <> '' then
          Begin
            if Dm.SQLPista.Active then
              SQLItensVendaTempBOMBICOD.AsString := DM.SQLPistaBICO.asstring
            else
              SQLItensVendaTempBOMBICOD.Value     := DM.SQLBombaBOMBICOD.Value;
          end else
            SQLItensVendaTempBOMBICOD.Value := 0;

          if VendeuManual then
            SQLItensVendaTempCPITCSTATUS.AsString := 'M'
          else
            SQLItensVendaTempCPITCSTATUS.AsString := 'A';
          VendeuManual := False;

          if not TrocandoItens then
            SQLItensVendaTempDESCRICAO.Value  := SQLProdutoPRODA30ADESCRREDUZ.Value
          else
            SQLItensVendaTempDESCRICAO.Value  := '(T)' + SQLProdutoPRODA30ADESCRREDUZ.Value;
          SQLItensVendaTempREFERENCIA.Value   := SQLProdutoPRODA60REFER.Value;
          SQLItensVendaTempMARCA.Value        := dm.SQLLocate('MARCA','MARCICOD','MARCA60DESCR',SQLProdutoMARCICOD.AsString);
          SQLItensVendaTempCOR.Value          := dm.SQLLocate('COR','CORICOD','CORA30DESCR',SQLProdutoCORICOD.AsString);
          if (SQLProduto.FieldByName('GRADICOD').AsString <> '') and (SQLProduto.FieldByName('GRTMICOD').AsString <> '') then
            SQLItensVendaTempTAMANHO.Value      := RetornaTamanhoProduto(SQLProduto.FindField('GRADICOD').AsString,SQLProduto.FindField('GRTMICOD').AsString);

          if SQLItensVendaTempCOR.Value <> '' then
            SQLItensVendaTempDESCRICAO.Value := SQLItensVendaTempDESCRICAO.Value +'/'+SQLItensVendaTempCOR.Value;
          if SQLItensVendaTempTAMANHO.Value <> '' then
            SQLItensVendaTempDESCRICAO.Value := SQLItensVendaTempDESCRICAO.Value +'/'+SQLItensVendaTempTAMANHO.Value;

          SQLItensVendaTempPRODA60DESCR.Value   := SQLProdutoPRODA60DESCR.Value;
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
              if (ECFAtual <> '') and (ECFAtual <> 'CORISCO CT7000 V3')  then
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

                    If (UpperCase(Porta) <> 'FALSE') and (SQLItensVendaTempENCERRANTE.AsString <> '') then // se existe automação
                      begin
                        TimerPista.Enabled := False;
                        if not Dm.IBTran01.InTransaction then
                          Dm.IBTran01.StartTransaction;
                        Dm.SQLPista.Close;
                        Dm.IBEvents.OnEventAlert := nil;
                        TimerPista.Enabled       := False;
                        Dm.IBSQL.SQL.Text := 'Update LeituraPista set MARCADO = :xMarca where Encerrante = :xEncerrante  '+
                        'and canal = :xcanal AND Marcado = :xMI';
                        DM.IBSQL.Prepare;
                        Dm.IBSQL.ParamByName('xMarca').AsString := 'N';
                        Dm.IBSQL.PArambyname('xEncerrante').AsString := SQLItensVendaTempENCERRANTE.AsString;
                        dm.IBSQL.ParamByName('xcanal').AsString      := SQLLocate('BOMBA','BOMBICOD','CONVERTER',SQLItensVendaTempBOMBICOD.AsString);
                        Dm.IBSQL.ParamByName('xMI').asstring         := 'I';
                        Dm.IBSQL.ExecQuery;
                        Dm.IBTran01.CommitRetaining;
                        dm.IBEvents.OnEventAlert := DM.IBEventsEventAlert;
                        TimerPista.Enabled := True;
                        if UpperCase(Porta) <> 'FALSE' then
                          TimerPista.Enabled := True;
                      end;
                    SQLItensVendaTemp.Delete;
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
      if FileExists('MostraRef.txt') then
        LBRef.caption := '';
      if FileExists('MostraSaldo.txt') then
        LBSaldo.Caption := '';

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
  RetornoCartao : TInfoRetorno;
  DadosImpressora : TInfoImpressao;
  RetornoUser : TInfoRetornoUser;
  LinhasCartao : Integer;
begin
  case Key of
     VK_F1:begin//CHAMAR TECLA DE ATALHO
             Application.CreateForm(TFormTelaTeclasAtalhoTelaItens, FormTelaTeclasAtalhoTelaItens) ;
             FormTelaTeclasAtalhoTelaItens.ShowModal ;
           end ;
     VK_F2
     :begin//INICIANDO NOVA VENDA
             E_Orcamento           := false;
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
             if (ECFAtual <> '') and (PortaECFAtual <> '') then
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
        {     if (not SQLItensVendaTemp.IsEmpty) and (Saldo = 0) then
               CancelarVenda;}

             // Informa o Usuario que irá iniciar a Venda
             if FileExists('C:\Unit\Gestao\SolicitaUsuarioACadaVenda.txt') then
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

             // Solicita Cliente ao iniciar Venda (DARVAMI)
       {      if FileExists('C:\Unit\Gestao\SolicitaClienteInicioVenda.txt') then
               begin
                 CriaFormulario(TFormCadastroCliente,
                                'FormCadastroCliente',
                                False,
                                True,
                                False,
                                '');
               end; }
             // Informa o Nro Cupom => Darvami precisava lancar os cupons retroativos
             if FileExists('C:\Unit\Gestao\SolicitaNroCupom.txt') then
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
                   VendedorVenda := StrToInt(InputBox('Informar o Vendedor', 'Digite o código do vendedor', '')) ;
                 except
                   Application.ProcessMessages; end;
               end;
               if (dm.sqlterminalativoTERMCSOLCODVEND.value = 'S') then
                 if (VendedorVenda > 0) then
                   begin
                     RxLabel1.Visible   := True;
                     RxLabel1.Update;
                     LbVendedor.Visible := True;
                     LbVendedor.Caption := SQLLocate('VENDEDOR','VENDICOD','VENDA60NOME',IntToStr(VendedorVenda));
                     LbVendedor.Update ;
                   end
                 else
                   begin
                     LbVendedor.Caption := 'Não Encontrado';
                     LbVendedor.Update ;
                   end;


              if (FileExists('C:\Unit\Gestao\SolicitaCliente.txt')) and (TerminalModo = 'C') and (not ImportandoPreVenda) then
                begin
                  Application.CreateForm(TFormTelaConsultaRapidaCliente, FormTelaConsultaRapidaCliente);
                  FormTelaConsultaRapidaCliente.ShowModal;
                  If not VerificaLimiteCredito(ClienteVenda,0,DM.SQLParcelas,DM.SQLCliente) Then
                    vercontas;
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

              if ECFAtual = 'BEMATECH MP-25 FI' then
                begin
                  try
                    dm.SubTotal_ECF := '00000000000000';
                    Bematech_FI_SubTotal(dm.SubTotal_ECF);
                    dm.SubTotal_ECF  := FormatFloat(FormatStrVlrVenda,(StrToInt(dm.SubTotal_ECF)/100));
                    CurSubTotal.Text := dm.SubTotal_ECF;
                    CurSubTotal.Update;
                  except
                    Application.ProcessMessages;
                  end;
                end;

              if ECFAtual = 'DARUMA FS345' then
                begin
                  try
                    dm.SubTotal_ECF := '00000000000000';
                    Daruma_FI_SubTotal(dm.SubTotal_ECF);
                    dm.SubTotal_ECF  := FormatFloat(FormatStrVlrVenda,(StrToInt(dm.SubTotal_ECF)/100));
                    CurSubTotal.Text := dm.SubTotal_ECF;
                    CurSubTotal.Update;
                  except
                    Application.ProcessMessages;
                  end;
                end;

             Application.CreateForm(TFormTelaFechamentoVenda, FormTelaFechamentoVenda) ;
             if TerminalModo = 'C' then
               FormTelaFechamentoVenda.LblNomeSistema.Caption := 'Fechamento da Venda' ;
             if TerminalModo = 'P' then
               FormTelaFechamentoVenda.LblNomeSistema.Caption := 'Fechamento da Pré-Venda' ;
             if E_Orcamento then
               FormTelaFechamentoVenda.LblNomeSistema.Caption := 'Fechamento do Orçamento' ;
             TimerPista.Enabled := False;
             FormTelaFechamentoVenda.ShowModal ;
             if UpperCase(porta) <> 'FALSE' then
               TimerPista.Enabled := True;
             exit ;
           end ;
     VK_F4:begin //CANCELAMENTO DE ITENS
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
                 if Pergunta('SIM','Você não tem permissão para cancelar item. Deseja Informar Outro Usuário?') then
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
     VK_F5:begin
             Key := 0;
             if TerminalModo = 'P' then
               begin
                 E_Orcamento := true ;
                 FormKeyDown(Sender, F3, [ssAlt]);
               end
             else
               begin
                 if Length(SpeedBtn) > 1 then
                 begin
                   Application.CreateForm(TFormTelaAutomaBombas,FormTelaAutomaBombas);
                   if FormTelaAutomaBombas.Showmodal = mrOk then
                   begin
                        key := 0;
                        Dm.IBEvents.OnEventAlert  := nil;
                        TimerPista.Enabled        := False;
                        Timer.Enabled             := False;
                        If not DM.IBdb.Connected then
                          Dm.IBdb.Connected := True;
                        if not dm.IBTran01.InTransaction then
                          Dm.IBTran01.StartTransaction;

                        if Dm.SQLPista.Active then
                          Dm.SQLPista.close;

                        Dm.SQLPista.SQL.Text := 'Select * From LEITURAPISTA';
                        Dm.SQLPista.Prepare;
                        Dm.SQLPista.Open;
                        Dm.SQLPista.First;
                        while not dm.SQLPista.Eof do
                        begin
                          if Dm.SQLPistaMARCADO.AsString = 'S' then
                          begin
                            // se não abriu o cupom, força a abertura do mesmo.
                            if EstadoPDVChk = AguardandoNovaVenda then
                            begin
                                FormKeyDown(Sender, F2, [ssAlt]);
                                Application.ProcessMessages;
                            end;
                            EntradaDados.Text := DM.SQLLocate('TANQUE','TANQICOD','PRODICOD',DM.SQLLocate('BOMBA','BOMBICOD','TANQICOD',DM.SQLPistaBICO.AsString));
                            VarEncerrante     := DM.SQLPistaENCERRANTE.AsInteger;
                            try
                              EditQtde.Text   := FloattoStr(StrToFloat(dm.SQLPistaVALORTOTAL.AsString) / StrToFloat(DM.SQLPistaVALORUNITARIO.AsString))
                            except
                              EditQtde.Text   := DM.SQLPistaLITROS.AsString;
                            end;
                            EditQtdeKeyDown(Sender, Enter, [ssAlt]);
                            Application.ProcessMessages;
                            Try
                              if Dm.SQLPistaMARCADO.AsString = 'S' then
                              begin
                                Dm.SQLPista.Edit;
                                Dm.SQLPistaMARCADO.AsString := 'I';
                                Dm.SQLPista.Post;
                              end;
                            except
                              if Pergunta('SIM','Falha ao Eliminar Abastecida. Tentar Novamente?') then
                              begin
                                If not Dm.SQLPista.Active then
                                  Dm.SQLPista.Open;
                                Dm.SQLPista.First;
                                if Dm.SQLPistaMARCADO.AsString = 'S' then
                                begin
                                  Dm.SQLPista.Edit;
                                  Dm.SQLPistaMARCADO.AsString := 'I';
                                  Dm.SQLPista.Post;
                                end;
                              end;
                            end;
                            Application.ProcessMessages;
                          end;
                          Try
                            dm.SQLPista.Next;
                          Except
                            If Pergunta('SIM','Erro na SQLPISTA') then
                            begin
                                If not Dm.SQLPista.Active then
                                  Dm.SQLPista.Open;
                                Dm.SQLPista.First;
                            end;
                          end;
                        end;
                        Dm.SQLPista.Close;
                        Dm.SQLPista.SQL.Text := 'SELECT * FROM LEITURAPISTA  where MARCADO = "N" ORDER BY ABASTECIDA DESC';
                        if dm.IBTran01.InTransaction then
                          dm.IBTran01.Commit;
                        if UpperCase(Porta) <> 'FALSE' then
                          TimerPista.Enabled := True;
                        Timer.Enabled := True;
                        dm.IBEvents.OnEventAlert := DM.IBEventsEventAlert;
                   end;
                 end else
                 begin
                   InformaG('Este terminal não está configurado como "PEDIDO", portanto não pode fazer orçamentos!');
                   FormKeyDown(Sender, F3, [ssAlt]);
                 end;
               end;
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
             if EstadoPDVChk <> InformandoItens then
             begin
               InformaG('O desconto só pode aplicado quando o sistema está solicitando itens!') ;
               EntradaDados.SelectAll ;
               exit ;
             end ;

            { if PercDesqMaxUsario = 0 then
               begin
                 InformaG('Você não tem permissão para dar desconto no item') ;
                 EntradaDados.SelectAll ;
                 exit ;
               end ; }

             if TerminalModo = 'C' then
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

             PreparaEstadoBalcao(EstadoPDVChk) ;
           end ;
     VK_F8:begin//RECEBIMENTO DE CREDIÁRIO
             if TerminalModo = 'P' then
             begin
               InformaG('Não é possível receber prestações em um terminal que está operando como Pré-Venda!') ;
               EntradaDados.SelectAll ;
               Exit ;
             end ;

             if TerminalModo = 'C' then
             begin
               TestaStatusCaixa ;
               if VerCaixa then
                 exit ;
             end ;

             if EstadoPDVChk = InformandoItens then
             begin
               InformaG('O recebimento de crediário só pode ser feito quando o sistema estiver aguardando nova venda!') ;
               EntradaDados.SelectAll ;
               exit ;
             end ;

             // MANDA DADOS DISPLAY TECLADO
             IF TecladoReduzidoModelo = 'TEC44DIS' THEN
               EnviaTecladoTextoDisplay44('Tela para Recbto de Crediario...','');
             IF TecladoReduzidoModelo = 'TEC65' THEN
               EnviaTecladoTextoDisplay65('Tela para Recbto de Crediario...','');

             Application.CreateForm(TFormTelaRecebimentoCrediario, FormTelaRecebimentoCrediario) ;
             FormTelaRecebimentoCrediario.ShowModal ;
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
           end ;
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
                             LbVendedor.Caption := SQLLocate('VENDEDOR','VENDICOD','VENDA60NOME',IntToStr(VendedorVenda));
                             LbVendedor.Update ;
                           end
                         else
                           begin
                             LbVendedor.Caption := 'Não Encontrado';
                             LbVendedor.Update ;
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
                         CancelarVenda ;
                         LimparVariaveis ;
                         VlrBonusTroca   := 0;
                         ValorBonusTroca.Value := 0;
                         VendedorVenda   := 0;
                         LbVendedor.Caption := '';

                         EstadoPDVChk := 'AguardandoNovaVenda' ;
                         PreparaEstadoBalcao(FormTelaItens.EstadoPDVChk) ;
                       end;
                  end ;

//                EstadoPDVChk := InformandoConvenio ;
//                PreparaEstadoBalcao(EstadoPDVChk) ;
              end ;
          //DESTRAVAR IMPRESSORA
          'D':begin
                RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUCDESTRIMPFISC',RetornoUser);
                if RetornoCampoUsuario = 'S' then
                  begin
                    if (ECFAtual <> '') and (PortaECFAtual <> '') then
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

          //INFORMAR CÓDIGO ANTIGO DOCUMENTO
          'F':begin
                CodigoAntigoCupom := InputBox('Informar Código Antigo Documento', 'Digite o código antigo deste documento', '') ;
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
                    end;
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
                EditQtde.SetFocus;
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
                            LbVendedor.Caption := SQLLocate('VENDEDOR','VENDICOD','VENDA60NOME',IntToStr(VendedorVenda));
                            LbVendedor.Update ;
                          end
                        else
                          begin
                            LbVendedor.Caption := '';
                            LbVendedor.Update ;
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
                        FormTelaImportarPreVenda.DBGridLista.Columns.Items[3].Title.Caption := 'Marc' ;
                      end;
                  end;
                FormTelaImportarPreVenda.ShowModal ;
              end ;
          //IMPRIMIR ITENS DA VENDA
          'X':begin
                if (DM.SQLTerminalAtivoTERMCIMPPREVENDA.Value <> 'S') then
                  begin
                    Informa('Este terminal não está configurado para imprimir!') ;
                    exit ;
                  end ;
                if FileExists('C:\Unit\Gestao\Impress_Ctrl_X.exe') then
                  WinExec(Pchar(DM.PathAplicacao + '\Impress_Ctrl_X.EXE'),sw_Show)
                else
                  begin
                    ppImprimeItensVendaTemp.PrinterSetup.DocumentName := 'Cupom de Pre-Venda Itens' ;
                    ppImprimeItensVendaTemp.PrinterSetup.PrinterName  := DM.SQLTerminalAtivoTERMA60IMPPEDIDO.asString ;
                    ppImprimeItensVendaTemp.Print;
                  end;
              end ;
          //TOTAIS CAIXA ATIVO
          'Z':begin
                if DM.SQLUsuario.Locate('USUAICOD',UsuarioCorrente,[]) then
                  if DM.SQLUsuario.FieldByName('USUACVISULUCVEND').AsString <> 'S' then
                    begin
                      if Pergunta('SIM','Você não tem permissão para acessar os dados com os totais da venda. Deseja Informar Outro Usuário?') then
                        begin
                          RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACVISULUCVEND',RetornoUser);
                          if RetornoCampoUsuario = 'S' then
                            begin
                              Application.CreateForm(TFormTelaTotaisCaixa, FormTelaTotaisCaixa) ;
                              FormTelaTotaisCaixa.ShowModal ;
                            end;
                        end;
                    end
                  else
                    begin
                      Application.CreateForm(TFormTelaTotaisCaixa, FormTelaTotaisCaixa) ;
                      FormTelaTotaisCaixa.ShowModal ;
                    end;
              end ;
          //ABRE FUNÇÕES STARFICHE
          '1' : begin
                  if EstadoPDVChk <> AguardandoNovaVenda then
                    begin
                      InformaG('Só é possível utilizar as funções de cartão de crédito enquanto o sistema estiver aguardando nova venda!');
                      EntradaDados.SetFocus;
                      Exit;
                    end
                  else
                    FuncoesStarFiche;
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
                  //ANTIGO CADASTRO DE PRODUTOS
                  {Application.CreateForm(TFormTelaCadastroRapidoProduto, FormTelaCadastroRapidoProduto);
                  FormTelaCadastroRapidoProduto.ShowModal ;}
                  Application.CreateForm(TFormTelaTiraTeima, FormTelaTiraTeima) ;
                  FormTelaTiraTeima.ShowModal ;
                end;
            'R':begin
                  //CADASTRO DE RECEITUARIO
                  Application.CreateForm(TFormTelaConsultaRapidaCliente, FormTelaConsultaRapidaCliente) ;
                  FormTelaConsultaRapidaCliente.ShowModal ;
                  if ClienteVenda <> '' then
                    begin
                      Application.CreateForm(TFormTelaReceituario, FormTelaReceituario) ;
                      FormTelaReceituario.ShowModal ;
                    end;
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
//  DeleteFile('C:\Unit\Gestao\TrancouVenda.txt');

  FormTelaItens.LimparTabTempItens;
  // se tem automacao volta dados das abastecidas efetuadas
  if UpperCase(Porta) <> 'FALSE' then
    begin
      if not Dm.IBTran01.InTransaction then
        Dm.IBTran01.StartTransaction;
      Dm.IBSQL.Close;
      Dm.IBSQL.SQL.Text := 'update leiturapista set Marcado = :xNewMarca where marcado = :xOldMarca';
      Dm.IBSQL.Prepare;
      Dm.IBSQL.ParamByName('xNewMarca').AsString := 'N';
      Dm.IBSQL.ParamByName('xOldMarca').asstring := 'I';
      Dm.ibsql.ExecQuery;
      Dm.IBTran01.CommitRetaining;
    end;

  if (DM.SQLterminalativoTERMIQTDEPADRAO.Value > 0) then
    EditQtde.Text := DM.SQLterminalativoTERMIQTDEPADRAO.AsString
  else
    EditQtde.Value := 0;
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
  SQLSubTotal.SQL.Add('Select Sum(VLRTOTAL) as SubTotal from ItensVendaTemp where TERMICOD = '+dm.SQLTerminalAtivoTERMICOD.AsString+ ' and TROCA <> "S" or TROCA is null');
  SQLSubTotal.Open;
  if SQLSubTotal.FieldByName('SubTotal').Value > 0 then
    ValorTemp := SQLSubTotal.FieldByName('SubTotal').Value;
  CurSubTotal.Value := ValorTemp;
  CurSubTotal.Update;

  // Calcula Total Bonus Troca
  SQLSubTotal.Close;
  SQLSubTotal.SQL.Clear;
  SQLSubTotal.SQL.add('Select Sum(VLRTOTAL) as SubTotal from ItensVendaTemp where TERMICOD = '+dm.SQLTerminalAtivoTERMICOD.AsString+ ' and TROCA = "S"');
  SQLSubTotal.Open;
  if SQLSubTotal.fieldbyname('SubTotal').Value > 0 then
    VlrBonusTroca := SQLSubTotal.fieldbyname('SubTotal').Value;

  ValorBonusTroca.Value := VlrBonusTroca;
  ValorBonusTroca.Update;
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
  //MouseShowCursor(False) ;
  if dm.SQLTerminalAtivoTERMCSTATUSCAIXA.AsString = 'A' then
    begin
      if FileExists('C:\StarFiche\StatusUltImpressao.cfg') then
        begin
          MemoRetorno.Lines.LoadFromFile('C:\StarFiche\StatusUltImpressao.cfg');
          CancelarVendaCartao;
        end;
    end;
  if LabelLeitor.Visible then
    if TimerLeitor.Enabled = False then
      TimerLeitor.Enabled := True;
end ;

procedure TFormTelaItens.TimerTimer(Sender: TObject) ;
begin
   Caption := 'Data e Hora Atual: ' + FormatDateTime('ddddddddddddd hh:mm:ss', Now) +
             '    Operador: ' + UsuarioAtualNome +
             '    Terminal: ' + TerminalAtualNome ;
end ;

procedure TFormTelaItens.ListaItensEnter(Sender: TObject) ;
begin
  EntradaDados.Setfocus ;
end ;

procedure TFormTelaItens.GridItensEnter(Sender: TObject) ;
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

    DescricaoProduto.Caption := 'Seja Bem-Vindo!';
    AdicionalProduto.Caption := '' ;
    if FileExists('MostraRef.txt') then
      LBRef.Caption        := '' ;
    if FileExists('MostraSaldo.txt') then
      LBSaldo.Caption      := '' ;
    LblInstrucoes.Caption    := '' ;
    LbVendedor.Caption       := '' ;

    RxLabel1.Visible   := False;
    RxLabel1.Update;
    LbVendedor.Visible := False;
    LbVendedor.Update;

    LblBonusTroca.Visible    := False;
    LblBonusTroca.Update;
    ValorBonusTroca.Value    := 0  ;
    ValorBonusTroca.Visible  := False;
    ValorBonusTroca.Update;

//    LimparTabTempItens;

    CalculaTotal;

    GridItens.Options := [dgTitles,dgCancelOnExit];
    if TerminalModo = 'C' then
      LblInstrucoes.Caption := 'CAIXA LIVRE' ;
    if TerminalModo = 'P' then
      LblInstrucoes.Caption := 'PRE VENDA / ORÇAMENTO LIVRE' ;

    LblInstrucoes.Refresh ;

    // MANDA DADOS DISPLAY TECLADO
    IF TecladoReduzidoModelo = 'TEC44DIS' THEN
      EnviaTecladoTextoDisplay44(LblInstrucoes.Caption,'');
    IF TecladoReduzidoModelo = 'TEC65' THEN
      EnviaTecladoTextoDisplay65(LblInstrucoes.Caption,'');

    exit ;
  end ;

  if EstadoPDVChk = InformandoItens then
  begin
    LblInstrucoes.Caption := 'Informe o Produto';

    if SolicitarPreco then
      LblInstrucoes.Caption := 'Informe o Produto (C/Valor Alterado)';

    if (DescItemPerc > 0) or (DescItemVlr > 0) then
      LblInstrucoes.Caption := 'Informe o Produto (C/Desconto)';

    if ProcuraProdutoPelaRef08Char then
      LblInstrucoes.Caption := 'Informe o Produto pelo CD Barras Especial';

    LblInstrucoes.Refresh;

    LblSubTotal.Visible := true;
    CurSubTotal.Visible := true;

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
    if FileExists('MostraRef.txt') then
      LBRef.Caption            := '' ;
    if FileExists('MostraSaldo.txt') then
      LBSaldo.Caption          := '' ;
    LblSubTotal.Visible := true;
    CurSubTotal.Visible := true;
    exit;
  end;

  if EstadoPDVChk = CancelandoItem then
  begin
    LblInstrucoes.Caption := 'Informe o Numero do Item a Cancelar';
    LblInstrucoes.Refresh;
    DescricaoProduto.Caption := '';
    AdicionalProduto.Caption := '';
    if FileExists('MostraRef.txt') then
      LBRef.Caption            := '' ;
    if FileExists('MostraSaldo.txt') then
      LBSaldo.Caption          := '' ;

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
    if FileExists('MostraRef.txt') then
      LBRef.Caption            := '' ;
    if FileExists('MostraSaldo.txt') then
      LBSaldo.Caption          := '' ;

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
    if FileExists('MostraRef.txt') then
      LBRef.Caption            := '' ;
    if FileExists('MostraSaldo.txt') then
      LBSaldo.Caption          := '' ;

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
  TipoPadrao             := '';
  DataAniversario        := '';
  ProcuraProdutoPelaRef08Char := False;
  GravaPrevendaSemFinanceiro := False;
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
          Informa('Produto não encontrado !');
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
  if Serial.PortIsOpen then
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
  RunLB.RLStart(1);
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
  if (EstadoPDVChk <> InformandoItens) and (EstadoPDVChk <> InformandoItensTroca) then
    begin
      InformaG('A alteração da quantidade do item só pode aplicada quando o sistema está solicitando itens!') ;
      EntradaDados.SetFocus;
      Exit;
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

procedure TFormTelaItens.BtnF8Click(Sender: TObject);
begin
  EntradaDados.SetFocus;
  FormKeyDown(Sender, F8, [ssAlt]);
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

procedure TFormTelaItens.BtnSairClick(Sender: TObject);
begin
  EntradaDados.SetFocus;
  if EstadoPDVChk <> AguardandoNovaVenda then
  begin
    InformaG('Só é possível sair do ' + Application.Title + ' enquanto está aguardando nova venda!') ;
    EntradaDados.SelectAll ;
    Exit ;
  end ;

  Close ;
end;

procedure TFormTelaItens.TimerPistaTimer(Sender: TObject);
begin
  if not DM.IBTran01.InTransaction then
    Dm.IBTran01.StartTransaction;
  Dm.ibsqlBomba.Close;
  Dm.ibsqlBomba.Execquery;
  while Not dm.ibSQLBomba.Eof do
  begin
    if DM.ibSQLBomba.FieldByName('Status').AsString = 'L' then SpeedBtn[dm.ibSQLBomba.FieldByName('bombicod').AsInteger].Glyph.LoadFromFile('BMP\Bomba.bmp');
    if DM.ibSQLBomba.FieldByName('Status').AsString = 'P' then SpeedBtn[dm.ibSQLBomba.FieldByName('bombicod').AsInteger].Glyph.LoadFromFile('BMP\Bomba.bmp');
    if DM.ibSQLBomba.FieldByName('Status').AsString = 'F' then SpeedBtn[dm.ibSQLBomba.FieldByName('bombicod').AsInteger].Glyph.LoadFromFile('BMP\BombaFalha.bmp');
    if DM.ibSQLBomba.FieldByName('Status').AsString = 'O' then SpeedBtn[dm.ibSQLBomba.FieldByName('bombicod').AsInteger].Glyph.LoadFromFile('BMP\BombaOK.bmp');
    if DM.ibSQLBomba.FieldByName('Status').AsString = 'A' then SpeedBtn[dm.ibSQLBomba.FieldByName('bombicod').AsInteger].Glyph.LoadFromFile('BMP\BombaAbastecendo.bmp');
    if DM.ibSQLBomba.FieldByName('Status').AsString = 'B' then SpeedBtn[dm.ibSQLBomba.FieldByName('bombicod').AsInteger].Glyph.LoadFromFile('BMP\BombaBloqueada.bmp');
    if DM.ibSQLBomba.FieldByName('Status').AsString = 'R' then SpeedBtn[dm.ibSQLBomba.FieldByName('bombicod').AsInteger].Glyph.LoadFromFile('BMP\BombaLiberar.bmp');
    dm.ibSQLBomba.Next;
  end;
  dm.IBSQLBomba.close;
end;

procedure TFormtelaItens.vercontas;
var totalcliente, TotParcRec, Saldo: extended;
  Vencimento: TDatetime;
begin
          TotalCliente  := 0;

          DM.MemCtRecParc.Close;
          try
            DM.MemCtRecParc.DeleteTable;
          except
            Application.ProcessMessages;
          end;

          DM.MemCtRecParc.CreateTable;
          DM.MemCtRecParc.AddIndex('RecTemp','CTRCDVENC;CUPOA13ID;CTRCA13ID;CTRCINROPARC', [ixPrimary]);
          DM.MemCtRecParc.IndexFieldNames :=  'CTRCDVENC;CUPOA13ID;CTRCA13ID;CTRCINROPARC';
          DM.MemCtRecParc.Open;

          SQLContasReceber.Close;
          SQLContasReceber.MacroByName('MFiltro').AsString := ' CLIEA13ID = "' + ClienteVenda + '" and CTRCCSTATUS <> "C"' +
                                                              ' AND CTRCN2VLR > CTRCN2TOTREC';
          SQLContasReceber.Open;

          //PROCURAR NO CONTASRECEBER SE EXISTEM ALGUM EM ABERTO
          SQLContasReceber.First;
          TotParcRec := 0;
          while not SQLContasReceber.EOF do
          begin
            TotParcRec := TotParcRec + ( SQLContasReceberCTRCN2VLR.Value -
                                         SQLContasReceberCTRCN2TOTREC.Value );
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
                  DM.MemCtRecParc.Append ;
                  if SQLContasReceberCUPOA13ID.AsString <> '' then
                    DM.MemCtRecParcCUPOA13ID.Value      := SQLContasReceberCUPOA13ID.Value
                  else
                    DM.MemCtRecParcCUPOA13ID.Value      := 'Parc. Avulsa';

                  DM.MemCtRecParcCUPODEMIS.Value      := SQLContasReceberCTRCDEMIS.Value ;
                  DM.MemCtRecParcCLIEA13ID.Value      := SQLContasReceberCLIEA13ID.Value ;
                  DM.MemCtRecParcCTRCA13ID.Value      := SQLContasReceberCTRCA13ID.Value;
                  DM.MemCtRecParcCTRCINROPARC.Value   := SQLContasReceberCTRCINROPARC.Value;
                  DM.MemCtRecParcCTRCDVENC.Value      := SQLContasReceberCTRCDVENC.Value;
                  DM.MemCtRecParcCTRCDULTREC.AsDateTime := SQLContasReceberCTRCDULTREC.AsDateTime;

                  if SQLContasReceberCTRCDULTREC.AsVariant <> Null then
                    Vencimento := SQLContasReceberCTRCDULTREC.AsDateTime
                  else
                    Vencimento := SQLContasReceberCTRCDVENC.AsDateTime;

                  //Atualiza Configurações
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
                    DM.MemCtRecParcCTRCN2VLRJURO.Value := 0 ;

                  if DM.SQLConfigCrediarioCFCRN2PERCTAXACOBR.Value > 0 then
                    DM.MemCtRecParcCTRCN2VLRTXCOBR.Value := CalculaJuroMultaDesc(Saldo,
                                                                                   DM.SQLConfigCrediarioCFCRN2PERCTAXACOBR.Value,
                                                                                   Vencimento,
                                                                                   Date,
                                                                                   0,
                                                                                   0,
                                                                                   'TaxaCobranca',
                                                                                   SQLContasReceberCUPOA13ID.AsString,
                                                                                   SQLContasReceberCTRCINROPARC.AsString) ;


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
                     DM.MemCtRecParcCTRCN2VLRMULTA.Value := 0 ;

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
                    DM.MemCtRecParcCTRCN2VLRDESC.Value := 0 ;

                  DM.MemCtRecParcCTRCN2VLR.Value      := (SQLContasReceberCTRCN2VLR.Value +
                                                           DM.MemCtRecParcCTRCN2VLRJURO.Value +
                                                           DM.MemCtRecParcCTRCN2VLRMULTA.Value +
                                                           DM.MemCtRecParcCTRCN2VLRTXCOBR.Value) -
                                                           DM.MemCtRecParcCTRCN2VLRDESC.Value -
                                                           SQLContasReceberCTRCN2TOTREC.AsFloat;

                  DM.MemCtRecParcValorOrigem.Value    := Saldo;
                  DM.MemCtRecParc.Post ;
                end;
              TotalCliente := TotalCliente + DM.MemCtRecParcCTRCN2VLR.Value;
              SQLContasReceber.Next ;
            end;
          end;
          DM.MemCtRecParc.First;
          Screen.Cursor := crDefault ;
    if not DM.MemCtRecParc.EOF then
    begin
      Application.CreateForm(TFormTelaConsultaContratosCliente, FormTelaConsultaContratosCliente);
      FormTelaConsultaContratosCliente.panel1.Visible := false;
      FormTelaConsultaContratosCliente.ShowModal;
   end;
end;


procedure TFormTelaItens.TimeLembreteTimer(Sender: TObject);
var AMANHA : STRING;
    Year1, Month1, Day1: Word;
begin
  inherited;
  if (DM.SQLPopUPCFGCCEXIBIRPOPTARE.AsString = 'S') and (EstadoPDVChk = AguardandoNovaVenda) then
    begin
      SQLAgendaVer.Close;
//      SQLAgendaVer.SQL.Text := 'Select Count(TAREDLEMBRETE) From TAREFA Where (TAREDLEMBRETE <= '''+ FormatDateTime('MM/DD/YYYY',Date)+''' and TAREDTERMINO is null) and USUAICODDEST = ' + IntToStr(UsuarioCorrente);
      SQLAgendaVer.SQL.Text := 'Select Count(*) From TAREFA Where  USUAICODDEST = ' + IntToStr(UsuarioCorrente) + ' and TAREDTERMINO is null';
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

end.
