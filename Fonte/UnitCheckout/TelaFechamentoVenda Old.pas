unit TelaFechamentoVenda;
interface

uses
  FormResources, Variants, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, RXCtrls, jpeg, Grids, DBGrids, Mask, VarSys, ToolEdit, CurrEdit, Db, BDE ,
  DBTables, RxQuery, MemTable, EWall, OleCtrls, UCrpe32, ppProd, ppClass, ppReport, ppComm, ppRelatv,
  ppDB, ppTxPipe, ppPrnabl, ppStrtch, ppMemo, ppCache, ppBands, CartaoCredito;

const
  InformandoCliente             = 'InformandoCliente';
  InformandoVendedor            = 'InformandoVendedor';
  InformandoPlano               = 'InformandoPlano';
  InformandoNumerarioVista      = 'InformandoNumerarioVista' ;
  InformandoValorNumerarioVista = 'InformandoValorNumerarioVista' ;
  InformandoNumerarioPrazo      = 'InformandoNumerarioPrazo' ;
  InformandoDesconto            = 'InformandoDesconto' ;
  AlterandoEntrada              = 'AlterandoEntrada' ;
  ExcluindoNumerarioVista       = 'ExcluindoNumerarioVista' ;
  InformandoPosicaoData         = 'InformandoPosicaoData' ;
  AlterandoData                 = 'AlterandoData' ;
  InformandoPosicaoParcelaPrazo = 'InformandoPosicaoParcelaPrazo' ;
  AlterandoParcelaPrazo         = 'AlterandoParcelaPrazo' ;
  DiminuirAcrescimo             = 'DiminuirAcrescimo' ;
  FinalizandoVenda              = 'FinalizandoVenda' ;
  TipoPadraoLiberacao : array [0..3] of string = ('CRD','CNV','CHQP','CHQ');
type
  TFormTelaFechamentoVenda = class(TForm)
    LblInstrucoes: TRxLabel;
    LblNomeSistema: TRxLabel;
    SQLPlanoRecebimento: TRxQuery;
    SQLPlanoRecebimentoParcela: TRxQuery;
    SQLParcelasPrazoVendaTemp: TRxQuery;
    SQLParcelasPrazoVendaTempDATAVENCTO: TDateTimeField;
    SQLParcelasPrazoVendaTempTERMICOD: TIntegerField;
    SQLParcelasPrazoVendaTempNROPARCELA: TIntegerField;
    SQLParcelasPrazoVendaTempVALORVENCTO: TBCDField;
    SQLParcelasPrazoVendaTempNUMEICOD: TIntegerField;
    UpdateSQLParcelasPrazoVendaTemp: TUpdateSQL;
    DSSQLParcelasPrazoVendaTemp: TDataSource;
    Timer: TTimer;
    SQLNumerario: TRxQuery;
    SQLParcelasPrazoVendaTempNumerarioLookup: TStringField;
    UpdateSQLParcelasVistaVendaTemp: TUpdateSQL;
    DSSQLParcelasVistaVendaTemp: TDataSource;
    SQLParcelasVistaVendaTemp: TRxQuery;
    SQLParcelasVistaVendaTempVALORPARC: TBCDField;
    SQLParcelasVistaVendaTempNUMEICOD: TIntegerField;
    SQLParcelasVistaVendaTempTERMICOD: TIntegerField;
    SQLParcelasVistaVendaTempNROITEM: TIntegerField;
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
    SQLPlanoRecebimentoPLRCCATIVO: TStringField;
    SQLPlanoRecebimentoPENDENTE: TStringField;
    SQLPlanoRecebimentoREGISTRO: TDateTimeField;
    SQLPlanoRecebimentoParcelaPLRCICOD: TIntegerField;
    SQLPlanoRecebimentoParcelaPLRPINROPARC: TIntegerField;
    SQLPlanoRecebimentoParcelaPLRPINRODIAS: TIntegerField;
    SQLPlanoRecebimentoParcelaPENDENTE: TStringField;
    SQLPlanoRecebimentoParcelaREGISTRO: TDateTimeField;
    SQLPlanoRecebimentoPLRCN2PERCENTR: TBCDField;
    SQLParcelasPrazoVendaTempTIPOPADR: TStringField;
    SQLParcelasVistaVendaTempTIPOPADR: TStringField;
    TblCarne: TTable;
    WallPaper: TEvWallPaper;
    SQLCaderno: TRxQuery;
    SQLCadernoCLIEA13ID: TStringField;
    SQLCadernoCLCADLANC: TDateTimeField;
    SQLCadernoCLCAICOD: TIntegerField;
    SQLCadernoCLCAN2VLRCREDITO: TBCDField;
    SQLCadernoCLCAN2VLRDEBITO: TBCDField;
    SQLCadernoCUPOA13ID: TStringField;
    SQLCadernoCLCAA60HIST: TStringField;
    UpdateSQLCaderno: TUpdateSQL;
    SQLParcelasVistaVendaTempNumerarioLookup: TStringField;
    TblCheques: TMemoryTable;
    TblChequesDtDep: TDateTimeField;
    TblChequesValor: TFloatField;
    TblChequesHistorico: TStringField;
    DSTblCheques: TDataSource;
    TblChequesNroCheque: TFloatField;
    TblChequesPORTICOD: TIntegerField;
    TblChequesBANCA5COD: TStringField;
    TblChequesAGENCIA: TStringField;
    TblChequesCONTA: TStringField;
    TblChequesDATAABERT: TDateField;
    TblChequesTITULAR: TStringField;
    SQLGeral : TRxQuery;
    DSTblCarne: TDataSource;
    TblTicketDadosVenda: TTable;
    TblTicketDadosVendaNomeEmpresa: TStringField;
    TblTicketDadosVendaFoneEmpresa: TStringField;
    TblTicketDadosVendaNomeVendedor: TStringField;
    TblTicketDadosVendaNomePlano: TStringField;
    TblTicketDadosVendaCodigoCliente: TStringField;
    TblTicketDadosVendaNomeCliente: TStringField;
    TblTicketDadosVendaCodProd: TIntegerField;
    TblTicketDadosVendaDescriProd: TStringField;
    TblTicketDadosVendaMarcaProd: TStringField;
    TblTicketDadosVendaRefProd: TStringField;
    TblTicketDadosVendaQtdeProd: TFloatField;
    TblTicketDadosVendaPrecoProd: TFloatField;
    TblTicketDadosVendaTotalProd: TFloatField;
    TblTicketDadosVendaTaxaCred: TFloatField;
    TblTicketDadosVendaAcrescimo: TFloatField;
    TblTicketDadosVendaDesconto: TFloatField;
    TblTicketDadosVendaIDCupom: TStringField;
    TblTicketDadosVendaDataVenda: TDateField;
    TblTicketDadosVendaNumerarioPagto: TStringField;
    TblTicketDadosVendaMensagem: TStringField;
    TblTicketDadosVendaTipoVenda: TStringField;
    SQLPreVendaItem: TRxQuery;
    SQLPreVendaItemTERMICOD: TIntegerField;
    SQLPreVendaItemPRVDICOD: TIntegerField;
    SQLPreVendaItemPVITIPOS: TIntegerField;
    SQLPreVendaItemPRODICOD: TIntegerField;
    SQLPreVendaItemPVITN3QTD: TBCDField;
    SQLPreVendaItemPVITN3VLRUNIT: TBCDField;
    SQLPreVendaItemPVITN3VLRCUSTUNIT: TBCDField;
    SQLPreVendaItemPVITN2DESC: TBCDField;
    SQLPreVendaItemVENDICOD: TIntegerField;
    SQLPreVendaItemPVITN3VLRUNITLUCR: TBCDField;
    SQLPreVendaItemPVITCSTATUS: TStringField;
    SQLPreVendaItemPVITN2ICMSALIQ: TBCDField;
    TblTicketDadosVendaFoneCliente: TStringField;
    TblTicketDadosVendaNroCreditCard: TStringField;
    TblTicketDadosVendaDataEntrega: TStringField;
    TblCarneEmpresaNome: TStringField;
    TblCarneEmpresaEnder: TStringField;
    TblCarneEmpresaBairro: TStringField;
    TblCarneEmpresaCidade: TStringField;
    TblCarneEmpresaUF: TStringField;
    TblCarneEmpresaFone: TStringField;
    TblCarneMensagem: TStringField;
    TblCarneCliente: TStringField;
    TblCarneEndereco: TStringField;
    TblCarneBairro: TStringField;
    TblCarneCidade: TStringField;
    TblCarneCodigoCliente: TStringField;
    TblCarneNumeroContrato: TStringField;
    TblCarneNumeroParcela: TIntegerField;
    TblCarneContadorParcelas: TIntegerField;
    TblCarneDataVencimento: TDateField;
    TblCarneValorParcela: TFloatField;
    TblCarneVendedor: TStringField;
    TblCarneTotalCupom: TFloatField;
    TblCarnePlano: TStringField;
    TblCarneDataEmissao: TDateField;
    TblCarneNroCupom: TStringField;
    SQLCupomNumerarioAut: TRxQuery;
    SQLCupomNumerarioAutCUPOA13ID: TStringField;
    SQLCupomNumerarioAutNUMEICOD: TIntegerField;
    SQLCupomNumerarioAutCPNMN2VLR: TBCDField;
    SQLCupomNumerarioAutCPNMCAUTENT: TStringField;
    TblChequesCGCCPF: TStringField;
    TblChequesALINICOD: TIntegerField;
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
    SQLRecebimentoRECEA30HIST: TStringField;
    SQLCadernoPENDENTE: TStringField;
    SQLCadernoREGISTRO: TDateTimeField;
    TblCartaoTemp: TTable;
    TblCartaoTempValor: TFloatField;
    TblCartaoTempCartao: TStringField;
    TblCartaoTempProvedor: TStringField;
    MemoCartao: TMemo;
    MemoImpressao: TMemo;
    MemoRetorno: TMemo;
    Fundo: TImage;
    LblCLiente: TRxLabel;
    LblCodigoCliente: TRxLabel;
    LblVendedor: TRxLabel;
    LblNomeVendedor: TRxLabel;
    LblPlano: TRxLabel;
    LblNomePlano: TRxLabel;
    LblRetorno: TRxLabel;
    LblNomeCliente: TRxLabel;
    VlrRetornoCliente: TCurrencyEdit;
    LblCaderno: TRxLabel;
    VlrCadernoCliente: TCurrencyEdit;
    LblTxCrediario: TRxLabel;
    VlrTxCrediario: TCurrencyEdit;
    LblBonusTroca: TRxLabel;
    ValorBonusTroca: TCurrencyEdit;
    LblValorDescontoAcrescimo: TRxLabel;
    LblEntrada: TRxLabel;
    LblRecebido: TRxLabel;
    LblTroco: TRxLabel;
    LblTotalVenda: TRxLabel;
    Panel1: TPanel;
    LblListaParcelasPrazo: TRxLabel;
    LblListaParcelasVista: TRxLabel;
    Panel3: TPanel;
    ListaParcelasPrazo: TDBGrid;
    Panel4: TPanel;
    ListaParcelasVista: TDBGrid;
    TimerCartao: TTimer;
    ValorDescontoAcrescimo: TCurrencyEdit;
    ValorEntrada: TCurrencyEdit;
    ValorRecebido: TCurrencyEdit;
    ValorTroco: TCurrencyEdit;
    ValorTotalVenda: TCurrencyEdit;
    RxLabel1: TRxLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    EntradaDados: TEdit;
    TextStarFiche: TppTextPipeline;
    ReportStarFiche: TppReport;
    ppDetailBand1: TppDetailBand;
    ppDBMemo1: TppDBMemo;
    TextStarFicheppField1: TppField;
    SQLParcelasPrazoVendaTempPRCAA13ID: TStringField;
    SQLParcelasPrazoVendaTempPRCAA60CARTAO: TStringField;
    SQLParcelasPrazoVendaTempPRCATPATHENVIA: TStringField;
    SQLParcelasPrazoVendaTempPRCATPATHRECEBE: TStringField;
    SQLParcelasVistaVendaTempPRCAA13ID: TStringField;
    SQLParcelasVistaVendaTempPRCAA60CARTAO: TStringField;
    SQLParcelasVistaVendaTempPRCATPATHENVIA: TStringField;
    SQLParcelasVistaVendaTempPRCATPATHRECEBE: TStringField;
    SQLProvedorCartao: TRxQuery;
    SQLProvedorCartaoPRCAA13ID: TStringField;
    SQLProvedorCartaoEMPRICOD: TIntegerField;
    SQLProvedorCartaoPRCAICOD: TIntegerField;
    SQLProvedorCartaoPRCAA60DESCR: TStringField;
    SQLProvedorCartaoPRCATPATHENVIA: TMemoField;
    SQLProvedorCartaoPRCATPATHRECEBE: TMemoField;
    SQLProvedorCartaoPRCAA60CARTAO: TStringField;
    SQLProvedorCartaoPENDENTE: TStringField;
    SQLProvedorCartaoREGISTRO: TDateTimeField;
    TblCarneTaxaCrediario: TFloatField;
    TblCarneValorDesconto: TFloatField;
    TblCarneAcrescimo: TFloatField;
    TblCarneEntrada: TFloatField;
    SQLPlanoRecebimentoPLRCN2PERCACRESC: TBCDField;
    SQLConvenio: TRxQuery;
    SQLConvenioCONVICOD: TIntegerField;
    SQLConvenioCONVA60DESCR: TStringField;
    SQLConvenioCONVN2DESC: TBCDField;
    SQLConvenioCONVN2TAXA: TBCDField;
    SQLConvenioCONVDVENC: TIntegerField;
    SQLConvenioCONVDFIMCOMPRA: TDateTimeField;
    SQLConvenioCONVDINICIOCOMPRA: TDateTimeField;
    SQLProvedorCartaoPRCACCONSCHEQUE: TStringField;
    SQLParcelasVistaVendaTempPRCACCONSCHEQUE: TStringField;
    SQLParcelasPrazoVendaTempPRCACCONSCHEQUE: TStringField;
    SQLRecebimentoRECEDDATAMOV: TDateTimeField;
    TblChequesDataVecto: TDateField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EntradaDadosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TimerTimer(Sender: TObject);
    procedure ValorAcrescimoEnter(Sender: TObject);
    procedure ListaParcelasVistaEnter(Sender: TObject);
    procedure ListaParcelasPrazoEnter(Sender: TObject);
    procedure ValorEntradaEnter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SQLCadernoNewRecord(DataSet: TDataSet);
    function  ParcelasPrazoTemNumerario : boolean ;
    procedure TblTicketDadosVendaNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    Tempo, TempoLimite, TempoIntervalo: Integer;
    HoraInicial, HoraAtual : TDateTime;
    HoraInicialStr, HoraAtualStr: String;
    MsgBloqueioVenda,
    TermCod,
    PrvCod,
    CodNextContaRec,
    DiaVctoCartaoCliente  : string ;
    NumParc, NroIt, ProxCod,
    CodNextPVContaRec, i,
    CodNextPreVenda  : integer ;
    TotalRetorno, SaldoCaderno, ValorCreditoCaderno, ValorDebitoCaderno,
    VlrEntr, VlrJuro, VlrAcresc, VlrTxCred, TotalVistaAut, ValorCartaoFidelizacao,
    VlrRetConfig_SldCad, ValorPrazo, ValorCartaoVista, ValorCartaoPrazo : double ;
    DescTotVenda, FechandoVenda, SairRec, Gravou, SolicitarLiberacao : boolean ;
    RetornoCartao : TInfoRetorno;
    DataVctoCartao : TDateTime;
    Dia,Mes,Ano,AnoVctoConvenio : Word;
    procedure OnPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
    procedure GravarCaixaPrazo ;
    procedure GravarMontanteCaixa ;
    function  InformarDadosCheque : boolean ;
    //PR�-VENDA
    function  GravarPreVenda : boolean ;
    function  GravarItensPreVenda : boolean ;
    function  GravarNumerarioAVistaPreVenda : boolean ;
    function  GravarNumerarioAPrazoPreVenda : boolean ;
    //ORCAMENTO
    function  GravarOrcamento : boolean ;
    function  GravarItensOrcamento : boolean ;
    //CUPOM

    function  GravarCadernoCliente : boolean ;
    function  AtualizaCupomOrigemTroca : boolean ;
    function  BloquearVenda : boolean ;
    function  VerificandoTotalVenda : double ;
    procedure IncluirRetornoConsignacao_SaldoCLiente ;
    function  Pontos(NumPOntos : integer) : string ;
    function VerificaCartaoCredito : Boolean;

  public
    { Public declarations }
    NomeClienteVenda,
    EnderecoClienteVenda,
    CidadeClienteVenda,
    BairroClienteVenda,
    DocumentoClienteVenda,
    NomeVendedorVenda,
    DadosClienteVenda,
    ObsCupom,
    ParcelaVistaCartao,
    ParcelaPrazoCartao,
    NomeCartao,
    ProvedorCartao,
    NumerarioCartao,
    NomeNumerarioCartao,
    DataTransacaoCartao,
    HoraTransacaoCartao,
    NSUProvedorCartao,
    NSUInstituicaoCartao,
    NumeroLiberacaoOk,
    Msg,
    NomeNumerario : string ;
    IncrementaNroCheque,
    TemNumerarioCartaoVista,

    TemNumerarioCartaoPrazo,
    AutorizouCartao,
    FechouCupomFiscal, AbrirTelaCliente  : boolean ;
    Tecla : Word;
    ValorEntradaAut,
    TotalCartao : Double;

    function  GravarCupom : boolean ;
    function  GravarItensCupom : boolean ;
    function  GravarItensRetorno : boolean ;
    function  GravarItensDevolucao : boolean ;
    function  GravarNumerarioAVistaCupom : boolean ;
    function  GravarNumerarioAPrazoCupom : boolean ;
    function  TemInformacaoPendente : boolean ;
    procedure PreparaEstadoFech(Estado : string) ;
    procedure AtualizaDadosPlanoNumerario(Sender: TObject) ;
    function  ImprimeConfissaoDividaNAOFISCAL(Impressora,Porta : String) : Boolean;
  end ;

var
  FormTelaFechamentoVenda: TFormTelaFechamentoVenda ;

implementation

uses TelaItens, TelaConsultaRapidaCliente, DataModulo,
     TelaConsultaRapidaVendedor, TelaConsultaRapidaPlano,
     TelaConsultaRapidaNumerario, TelaTeclasAtalhoTelaFechamentoVenda,
     ECFCheckout, TelaDadosCheque, UnitCheckoutLibrary,
     TelaImpressaoPreVenda, CadastroCliente, TelaImpressaoCarne,
     TelaCadastroDadosVenda, TelaImpressaoDadosVenda, TelaTipoDescontoItem,
     ImportarPreVenda, TelaFechamentoOrcamento, TelaDadosCliente,
     TelaCadastroObs, StarFiche, UnitLibrary, TelaAutorizacaoCompraCliente,
     TelaConsultaLiberacaoCredito, TelaDadosTeleEntrega, DataModuloTemplate,
     IMPNAOFISCAL;

{$R *.DFM}
procedure TFormTelaFechamentoVenda.FormCreate(Sender: TObject);
var i : integer ;
begin
  VarValorTroco    := 0;
  VarValorRecebido := 0;
  ValorCartaoFidelizacao := 0;
  TempoLimite := DM.SQLTerminalAtivoTERMITMPLIMITESERV.AsInteger;
  TempoIntervalo := DM.SQLTerminalAtivoTERMIINTERVALOSERV.AsInteger;
  if FileExists('c:\StarTef\STF002.Int')then
    DeleteFile('c:\StarTef\STF002.Int');
  if not SQLProvedorCartao.Active then SQLProvedorCartao.Open;  
  Top    := FormTelaItens.Top ;
  Left   := FormTelaItens.Left ;
  Height := FormTelaItens.Height ;
  Width  := FormTelaItens.Width ;
  ValorCreditoCaderno := 0 ;
  ValorDebitoCaderno  := 0 ;
  FinalizacaodeVenda  := False;
  AbrirTelaCliente    := False;
  TotalRetorno        := CalculaTotalRetornoConsignacao ;
  SaldoCaderno        := CalculaSaldoCaderno(ClienteVenda) ;
  //ESTA VARIAVEL SERA USADA PARA COMO BONUS DE RETORNO DE CONSIGNACAO + SALDO CADERNO
  VlrRetConfig_SldCad := TotalRetorno + SaldoCaderno ;
  //SE O VALOR DE RETORNO DE CONSIGNA��O + SALDO CADERNO FOR MAIOR QUE A VENDA
  //O CLIENTE N�O IR� PAGAR NADA ENT�O DEVE ZERAR A VARIAVEL PARA QUE A ROTINA
  //NO FORMACTIVATE FECHE A VENDA AUTOMATICAMENTE
  {if VlrRetConfig_SldCad > FormTelaItens.CurSubTotal.Value then
     VlrRetConfig_SldCad := 0 ;}
  if VlrRetConfig_SldCad > FormTelaItens.CurSubTotal.Value then
     VlrRetConfig_SldCad := FormTelaItens.CurSubTotal.Value ;

  ValorDiminuirAcresc := 0 ;

  if FileExists('PdvSemFundo.arq') THEN
    WallPaper.Enabled := False ;

  WallPaper.Picture.Assign(FormTelaItens.WallPaper.Picture) ;

  IncrementaNroCheque := false ;
  FechandoVenda       := false ;

  VlrTxCred := 0 ;

  if (VlrBonusTroca + VlrRetConfig_SldCad) > 0 then
    LblTotalVenda.Caption := 'TOTAL � PAGAR' ;

  ValorTotalVenda.Value := FormTelaItens.CurSubTotal.Value -
                           (VlrBonusTroca + VlrRetConfig_SldCad) ;

  if VlrRetConfig_SldCad > 0 then
    ValorDebitoCaderno := VlrRetConfig_SldCad
  else
    ValorDebitoCaderno := ValorTotalVenda.Value ;

  LblNomeCliente.Caption   := '' ;
  LblCodigoCliente.Caption := '' ;
  LblNomeVendedor.Caption  := '' ;
  LblNomePlano.Caption     := '' ;
  LblInstrucoes.Caption    := '' ;
  EstadoFechVendaAnt       := '' ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('delete from PARCELASPRAZOVENDATEMP') ;
  DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
  DM.SQLTemplate.ExecSQL ;

  SQLParcelasPrazoVendaTemp.Close ;
  SQLParcelasPrazoVendaTemp.SQL.Clear ;
  SQLParcelasPrazoVendaTemp.SQL.Add('select * from PARCELASPRAZOVENDATEMP') ;
  SQLParcelasPrazoVendaTemp.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
  SQLParcelasPrazoVendaTemp.SQL.Add('order by NROPARCELA') ;
  SQLParcelasPrazoVendaTemp.Open ;

  Timer.Enabled := true ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('delete from PARCELASVISTAVENDATEMP') ;
  DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
  DM.SQLTemplate.ExecSQL ;

  SQLParcelasVistaVendaTemp.Close ;
  SQLParcelasVistaVendaTemp.SQL.Clear ;
  SQLParcelasVistaVendaTemp.SQL.Add('select * from PARCELASVISTAVENDATEMP') ;
  SQLParcelasVistaVendaTemp.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
  SQLParcelasVistaVendaTemp.SQL.Add('order by NROITEM') ;
  SQLParcelasVistaVendaTemp.Open ;

  if VendaConsignada then
    begin
      EstadoFechVenda := InformandoVendedor ;
      PreparaEstadoFech(InformandoVendedor) ;
    end ;
end ;

procedure TFormTelaFechamentoVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.TblPedidoCab.Close;
  DM.TblPedidoItens.Close;
  DM.TblPedidoFinan.Close;

  ValorDiminuirAcresc := 0;
  ClienteCadastro := '';
  SolicitarLiberacao := False;
  Action := caFree;
end ;

procedure TFormTelaFechamentoVenda.EntradaDadosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
Var
  TotNumECF   : string ;
  Valor1,
  Valor2,
  ValorDevido : double ;
  DadosImpressora : TInfoImpressao;
  DiaVctoConvenio, MesVctoConvenio, MesVctoConvenioAnt, DataConevio : String;
  InicioCompraConvenio, FimCompraConveio, PrimeiraParcela : TDateTime;
  TamanhoArray, Tipo, DifMes, MesInicioCompra : Integer;
begin
//  if (FinalizacaodeVenda) and
//     (not FileExists('FinalizacaodeVenda.arq')) then exit ;

  if (Key = VK_ESCAPE) and (EstadoFechVenda = FinalizandoVenda) then
    begin
      if Pergunta('N�o', '* * * TEM CERTEZA QUE DESEJA CANCELAR ESTA VENDA ? * * *') then
        begin
          if not FileExists('SemTransacao.Arq') then
            if DM.DB.InTransaction then
              DM.DB.Rollback ;
          FormTelaItens.CancelarVenda ;
          FormTelaItens.LimparVariaveis ;
          FormTelaItens.EstadoPDVChk := 'AguardandoNovaVenda' ;
          FormTelaItens.PreparaEstadoBalcao(FormTelaItens.EstadoPDVChk) ;
        end
      else
        exit;

      if (ECFAtual <> '') and (PortaECFAtual <> '') then
        if not CancelarCupomFiscal(ECFAtual, PortaECFAtual) then
          exit ;
      Close ;
      exit ;
    end ;
  //ESTA ROTINA FOI COLOCADA PARA PODER TECLAR SETA PARA BAIXO E ABRIR AS LISTAS
  //DE PLANO, VENDENDOR, NUMER�RIO A VISTA E A PRAZO
  if (Key = VK_Down) then
    begin
      if EstadoFechVenda = InformandoNumerarioVista then
        begin
          Application.CreateForm(TFormTelaConsultaRapidaNumerario, FormTelaConsultaRapidaNumerario) ;
          FormTelaConsultaRapidaNumerario.LblTituloTela.Caption := 'Consulta de Numer�rios � Vista' ;
          FormTelaConsultaRapidaNumerario.LblTituloTela.Refresh ;

{          FormTelaConsultaRapidaNumerario.SQLNumerario.Close ;
          FormTelaConsultaRapidaNumerario.SQLNumerario.MacroByName('MTipo').Value := 'NUMECVISTAPRAZO = "V"' ;
          FormTelaConsultaRapidaNumerario.SQLNumerario.Open ;}

          FormTelaConsultaRapidaNumerario.ShowModal ;
          EntradaDados.text := IntToStr(NumerarioAtual) ;
          EntradaDadosKeyDown(Sender, Enter, [ssAlt]) ;
        end ;

      if EstadoFechVenda = InformandoNumerarioPrazo then
        begin
          Application.CreateForm(TFormTelaConsultaRapidaNumerario, FormTelaConsultaRapidaNumerario) ;
          FormTelaConsultaRapidaNumerario.LblTituloTela.Caption := 'Consulta de Numer�rios � Prazo' ;
          FormTelaConsultaRapidaNumerario.LblTituloTela.Refresh ;

{          FormTelaConsultaRapidaNumerario.SQLNumerario.Close ;
          FormTelaConsultaRapidaNumerario.SQLNumerario.MacroByName('MTipo').Value := 'NUMECVISTAPRAZO = "P"' ;
          FormTelaConsultaRapidaNumerario.SQLNumerario.Open ;}

          FormTelaConsultaRapidaNumerario.ShowModal ;
          EntradaDados.text := IntToStr(NumerarioAtual) ;
          EntradaDadosKeyDown(Sender, Enter, [ssAlt]) ;
        end ;

      if EstadoFechVenda = InformandoVendedor then
        begin
          Application.CreateForm(TFormTelaConsultaRapidaVendedor, FormTelaConsultaRapidaVendedor) ;
          FormTelaConsultaRapidaVendedor.ShowModal ;
          EntradaDados.text := IntToStr(VendedorVenda) ;
          EntradaDadosKeyDown(Sender, Enter, [ssAlt]) ;
          exit ;
        end ;

      if EstadoFechVenda = InformandoPlano then
        begin
          ValorRecebido.Value  := 0;
          ValorDescontoAcrescimo.Value := 0;
          VlrAcresc := 0;
          VlrJuro   := 0;
          VlrEntr   := 0;

          Application.CreateForm(TFormTelaConsultaRapidaPlano, FormTelaConsultaRapidaPlano);
          FormTelaConsultaRapidaPlano.ShowModal;
          EntradaDados.text := IntToStr(PlanoVenda);

          EntradaDadosKeyDown(Sender, Enter, [ssAlt]);
          exit;
        end;

      if EstadoFechVenda = InformandoCliente then
        begin
          Application.CreateForm(TFormTelaConsultaRapidaCliente, FormTelaConsultaRapidaCliente);
          FormTelaConsultaRapidaCliente.ShowModal;
          EntradaDados.text := ClienteVenda;
          EntradaDadosKeyDown(Sender, Enter, [ssAlt]);
          exit;
        end;
    end;

  if (Key = VK_Return) then
    begin
      //INFORMADO CLIENTE
      if EstadoFechVenda = InformandoCliente then
        begin
          if  ((EntradaDados.text = '') or (not IsNumeric(EntradaDados.Text, 'FLOAT')) or (LeitorCodigoBarras <> ''))
          and (AbrirTelaCliente) then
            begin
              Application.CreateForm(TFormTelaConsultaRapidaCliente, FormTelaConsultaRapidaCliente) ;
              FormTelaConsultaRapidaCliente.ShowModal ;
              EntradaDados.text := ClienteVenda ;
            end ;

          if Length(EntradaDados.Text) < 13 then
            begin
              DM.SQLTemplate.Close ;
              DM.SQLTemplate.SQL.Clear ;
              DM.SQLTemplate.SQL.Add('select * from CLIENTE') ;
              DM.SQLTemplate.SQL.Add('where') ;
              DM.SQLTemplate.SQL.Add('CLIEA10CODANT = "' + EntradaDados.text + '"') ;
              DM.SQLTemplate.Open ;
            end
          else
            begin
              DM.SQLTemplate.Close ;
              DM.SQLTemplate.SQL.Clear ;
              DM.SQLTemplate.SQL.Add('select * from CLIENTE') ;
              DM.SQLTemplate.SQL.Add('where') ;
              DM.SQLTemplate.SQL.Add('CLIEA13ID = "' + EntradaDados.text + '"') ;
              DM.SQLTemplate.Open ;
            end ;

          DM.SQLTemplate.First ;
          if not DM.SQLTemplate.EOF then
            begin
              NomeClienteVenda     := DM.SQLTemplate.FieldByName('CLIEA60RAZAOSOC').AsString;
              EnderecoClienteVenda := DM.SQLTemplate.FieldByName('CLIEA60ENDRES').AsString ;
              CidadeClienteVenda   := DM.SQLTemplate.FieldByName('CLIEA60CIDRES').AsString ;
              BairroClienteVenda   := DM.SQLTemplate.FieldByName('CLIEA60BAIRES').AsString ;

              if DM.SQLTemplate.FieldByName('CLIEA5FISJURID').AsString = 'F' then
                begin
                  if DM.SQLTemplate.FieldByName('CLIEA11CPF').AsString <> '' then
                    DocumentoClienteVenda := 'CPF-' + DM.SQLTemplate.FieldByName('CLIEA11CPF').AsString
                  else
                    if DM.SQLTemplate.FieldByName('CLIEA10RG').AsString <> '' then
                      DocumentoClienteVenda := 'RG-' + DM.SQLTemplate.FieldByName('CLIEA10RG').AsString
                    else
                      if DM.SQLTemplate.FieldByName('CLIEA30OUTROSDOC').AsString <> '' then
                        DocumentoClienteVenda := 'DOC.' + DM.SQLTemplate.FieldByName('CLIEA30OUTROSDOC').AsString ;
                end
              else
                begin
                  if DM.SQLTemplate.FieldByName('CLIEA14CGC').AsString <> '' then
                    DocumentoClienteVenda := 'CGC-' + DM.SQLTemplate.FieldByName('CLIEA14CGC').AsString
                  else
                    if DM.SQLTemplate.FieldByName('CLIEA20IE').AsString <> '' then
                      DocumentoClienteVenda := 'IE-' + DM.SQLTemplate.FieldByName('CLIEA20IE').AsString
                    else
                      if DM.SQLTemplate.FieldByName('CLIEA30OUTROSDOC').AsString <> '' then
                        DocumentoClienteVenda := 'DOC.' + DM.SQLTemplate.FieldByName('CLIEA30OUTROSDOC').AsString ;
                end;

              ClienteVenda := DM.SQLTemplate.FieldByName('CLIEA13ID').AsString ;
              LblCodigoCliente.Caption := DM.SQLTemplate.FieldByName('CLIEA13ID').AsString ;

              if DM.SQLTemplate.FieldByName('CLIEA60RAZAOSOC').AsString <> '' then
                LblNomeCliente.Caption := DM.SQLTemplate.FieldByName('CLIEA60RAZAOSOC').AsString
              else
                LblNomeCliente.Caption := DM.SQLTemplate.FieldByName('CLIEA60NOMEFANT').AsString;
            end
          else
            begin
              EntradaDados.SelectAll ;
              Informa('Cliente n�o encontrado !') ;
              exit ;
            end ;
          if ClienteVenda <> '' then
            begin
              if ((DM.SQLConfigVendaCFVECTESTALIMTCRED.AsString = 'S') and (ClienteVenda <> DM.SQLTerminalAtivoCLIEA13ID.AsString) and (Sender = EntradaDados))
                 or ((ClienteCadastro <> '') and (ClienteCadastro <>DM.SQLTerminalAtivoCLIEA13ID.AsString) and ((Sender = EntradaDados))) then
                if not VerificaLimiteCredito(ClienteVenda,ValorTotalVenda.Value,DM.SQLParcelas,DM.SQLCliente) then
                  begin
                    Tecla := Word('C');
                    ClienteVenda := '';
                    LblCodigoCliente.Caption := '';
                    LblCodigoCliente.Update;
                    LblNomeCliente.Caption := '';
                    LblNomeCliente.Update;
                    FormKeyDown(nil,Tecla,[ssCtrl]);
                  end
                else
                  EstadoFechVenda := FinalizandoVenda;
            end;

          if ClienteVenda <> '' then
            if BloquearVenda then
              exit ;

          EntradaDados.Clear ;
          if EstadoFechVendaAnt = '' then
            begin
              if LblNomeVendedor.Caption = '' then
                EstadoFechVenda := InformandoVendedor
              else
                TemInformacaoPendente ;
            end
          else
            EstadoFechVenda := EstadoFechVendaAnt ;

          if EstadoFechVendaAnt = FinalizandoVenda then
            begin
              EstadoFechVendaAnt := '';
              EstadoFechVenda := FinalizandoVenda;
              PreparaEstadoFech(EstadoFechVenda) ;
            end
          else
            begin
              EstadoFechVendaAnt := '';
              EstadoFechVenda := InformandoVendedor;
              PreparaEstadoFech(EstadoFechVenda) ;
            end;

          exit ;
        end ;
      //INFORMANDO VENDEDOR
      if EstadoFechVenda = InformandoVendedor then
        begin
          if (EntradaDados.text = '') or (not IsNumeric(EntradaDados.Text, 'INTEGER')) then
            begin
              if (not IsNumeric(EntradaDados.Text, 'INTEGER')) and (SQLLocate('VENDEDOR', 'VENDA60NOME', 'VENDICOD', '"' + EntradaDados.Text + '"') <> '') then
                begin
                  EntradaDados.text := SQLLocate('VENDEDOR', 'VENDA60NOME', 'VENDICOD', '"' + EntradaDados.Text + '"') ;
                end
              else
                begin
                  Application.CreateForm(TFormTelaConsultaRapidaVendedor, FormTelaConsultaRapidaVendedor) ;
                  FormTelaConsultaRapidaVendedor.ShowModal ;
                  EntradaDados.text := IntToStr(VendedorVenda) ;
                end ;
            end ;

          DM.SQLTemplate.Close ;
          DM.SQLTemplate.SQL.Clear ;
          DM.SQLTemplate.SQL.Add('select * from VENDEDOR') ;
          DM.SQLTemplate.SQL.Add('where') ;
          DM.SQLTemplate.SQL.Add('VENDICOD = ' + EntradaDados.text) ;
          DM.SQLTemplate.Open ;

          DM.SQLTemplate.First ;
          if not DM.SQLTemplate.EOF then
            begin
              VendedorVenda           := DM.SQLTemplate.FieldByName('VENDICOD').AsInteger ;
              LblNomeVendedor.Caption := DM.SQLTemplate.FieldByName('VENDA60NOME').AsString ;
            end
          else
            begin
              EntradaDados.SelectAll ;
              Informa('Vendedor n�o encontrado !') ;
              exit ;
            end ;

          EntradaDados.Clear ;

          if VendaConsignada then
            begin
              {EstadoFechVenda := FinalizandoVenda ;
              PreparaEstadoFech(FinalizandoVenda) ;
              exit ;}
              EstadoFechVenda := InformandoPlano ;
              PreparaEstadoFech(FinalizandoVenda) ;
              exit ;
            end ;

          if EstadoFechVendaAnt = '' then
            begin
              if TemInformacaoPendente then
                exit
              else
                EstadoFechVenda := FinalizandoVenda ;
            end
          else
            EstadoFechVenda := EstadoFechVendaAnt ;

          EstadoFechVendaAnt := '' ;
          PreparaEstadoFech(EstadoFechVenda) ;
          exit ;
        end ;
      //INFORMANDO PLANO
      if EstadoFechVenda = InformandoPlano then
        begin
          if (EntradaDados.text = '') or (not IsNumeric(FormTelaFechamentoVenda.EntradaDados.Text, 'INTEGER')) then
            begin
              Application.CreateForm(TFormTelaConsultaRapidaPlano, FormTelaConsultaRapidaPlano) ;
              FormTelaConsultaRapidaPlano.ShowModal ;
              EntradaDados.text := IntToStr(PlanoVenda) ;
            end ;

          SQLPlanoRecebimento.Close ;
          SQLPlanoRecebimento.MacroByName('MFiltro').Value := 'PLRCICOD = ' + EntradaDados.text ;
          SQLPlanoRecebimento.Open ;
          SQLPlanoRecebimentoParcela.Close ;
          SQLPlanoRecebimentoParcela.MacroByName('MFiltro').Value := 'PLRCICOD = ' + EntradaDados.text ;
          SQLPlanoRecebimentoParcela.Open ;

          if (FormTelaFechamentoVenda.SQLPlanoRecebimentoPLRCCDFIX.Value <> 'S') and
             (SQLPlanoRecebimentoParcela.Recordcount = 0) then
            begin
              EntradaDados.SelectAll ;
              Informa('Este Plano n�o possui parcelas!') ;
              exit ;
            end ;

          SQLPlanoRecebimento.First ;
          if not SQLPlanoRecebimento.EOF then
            begin
              PlanoVenda           := SQLPlanoRecebimentoPLRCICOD.AsInteger ;
              LblNomePlano.Caption := SQLPlanoRecebimentoPLRCA60DESCR.AsString ;

              if VendaConsignada then
                begin
                  EstadoFechVenda := FinalizandoVenda ;
                  PreparaEstadoFech(FinalizandoVenda) ;
                  EntradaDados.Clear ;
                  exit ;
                end ;

              if (SQLPlanoRecebimentoPLRCN2PERCDESC.Value > 0) then
                begin
                  if DescTotVenda then
                    begin
                      Informa('O plano escolhido possui DESCONTO, ' +
                              'por�m este desconto n�o ser� aplicado pois j� foi dado um desconto pelo operador !') ;
                    end
                  else
                    begin
                      if ((VlrBonusTroca > 0) or (VlrRetConfig_SldCad > 0)) then
                        ValorDescontoAcrescimo.Value := (ValorTotalVenda.Value *
                                                         (SQLPlanoRecebimentoPLRCN2PERCDESC.Value/100))
                      else
                        ValorDescontoAcrescimo.Value := (FormTelaItens.CurSubTotal.Value *
                                                         (SQLPlanoRecebimentoPLRCN2PERCDESC.Value/100)) ;

                      LblValorDescontoAcrescimo.Caption := 'DESCONTO' ;
                      LblValorDescontoAcrescimo.Refresh ;
                    end ;
                end ;

              VlrTxCrediario.Value := 0 ;
              //SUBTRAIR DESCONTO NO PLANO
              ValorTotalVenda.Value := (FormTelaItens.CurSubTotal.Value + VlrTxCrediario.Value - (VlrBonusTroca + VlrRetConfig_SldCad)) -
                                       ((FormTelaItens.CurSubTotal.Value + VlrTxCrediario.Value - (VlrBonusTroca + VlrRetConfig_SldCad)) *
                                        (SQLPlanoRecebimentoPLRCN2PERCDESC.Value/100)) ;

              if DescTotVenda then
                ValorTotalVenda.Value := ValorTotalVenda.Value -
                                         ValorDescontoAcrescimo.Value ;
              if ValorEntrada.Value = 0 then
                ValorEntrada.Value := ValorEntrada.Value +
                                      ((SQLPlanoRecebimentoPLRCN2PERCENTR.Value/100) *
                                        (ValorTotalVenda.Value-(0+((SQLPlanoRecebimentoPLRCN2PERCDESC.Value/100)*ValorTotalVenda.Value)))) ;

              CriaParcelas(SQLParcelasPrazoVendaTemp,
                           SQLPlanoRecebimento,
                           SQLPlanoRecebimentoParcela,
                           ValorEntrada.Value,
                           0,
                           TiraPontoMilhar(ValorTotalVenda.Value),
                           PlanoVenda,
                           Date,
                           'TpRecVistaTel', 'TpRecPrazoTel', 'TpRecVistaPDV', 'TpRecPrazoPDV', 'Documento',
                           ValorDiminuirAcresc,
                           VlrJuro,
                           VlrAcresc,
                           VlrEntr,
                           VlrTxCred) ;

              if ConvenioVenda > 0 then
                begin
                  SQLConvenio.Close;
                  SQLConvenio.ParamByName('CONVICOD').AsInteger := ConvenioVenda;
                  SQLConvenio.Open;
                  if SQLConvenio.FieldByName('CONVDVENC').AsString = '' then
                    begin
                      Informa('O Dia de Vencimento do Convenio n�o foi informado, favor verificar!');
                      Exit;
                    end;
                  if SQLConvenio.FieldByName('CONVDINICIOCOMPRA').AsDateTime = 0 then
                    begin
                      Informa('O Dia de Inicio do Periodo de Compra do Convenio n�o foi informado, favor verificar!');
                      Exit;
                    end;
                  if SQLConvenio.FieldByName('CONVDFIMCOMPRA').AsDateTime = 0 then
                    begin
                      Informa('O Dia de Termino do Per�odo de Compra do Convenio n�o foi informado, favor verificar!');
                      Exit;
                    end;

                  InicioCompraConvenio := SQLConvenio.FieldByName('CONVDINICIOCOMPRA').AsDateTime;
                  FimCompraConveio     := SQLConvenio.FieldByName('CONVDFIMCOMPRA').AsDateTime;
                  DiaVctoConvenio      := SQLConvenio.FieldByName('CONVDVENC').AsString;
                  if DiaVctoConvenio <> '' then
                    begin
                      SQLParcelasPrazoVendaTemp.First;
                      MesInicioCompra    := StrToInt(FormatDateTime('mm',SQLConvenio.FieldByName('CONVDINICIOCOMPRA').AsDateTime));
                      while not SQLParcelasPrazoVendaTemp.Eof do
                        begin
                          MesVctoConvenio    := FormatDateTime('mm',SQLParcelasPrazoVendaTempDATAVENCTO.AsDateTime);
                          MesVctoConvenioAnt := MesVctoConvenio;
                          if (Date >= SQLConvenio.FieldByName('CONVDINICIOCOMPRA').AsDateTime) and
                             (StrToInt(FormatDateTime('mm',Now)) = MesInicioCompra) and
                             (Date <= SQLConvenio.FieldByName('CONVDFIMCOMPRA').AsDateTime) then
                            begin
                             if MesInicioCompra = StrToInt(FormatDateTime('mm',Date)) then
                               MesVctoConvenio := FormatDateTime('mm',IncMonth(SQLParcelasPrazoVendaTempDATAVENCTO.AsDateTime,1))
                             else
                               MesVctoConvenio := FormatDateTime('mm',SQLParcelasPrazoVendaTempDATAVENCTO.AsDateTime);
                            end;
{                          else
                            if (Date >= SQLConvenio.FieldByName('CONVDINICIOCOMPRA').AsDateTime) and
                               (StrToInt(FormatDateTime('dd',Now)) <= UltiDiaMes(FormatDateTime('mm',Now),FormatDateTime('yyyy',Now))) and
                               (Date <= SQLConvenio.FieldByName('CONVDFIMCOMPRA').AsDateTime) then
                              begin
                                MesVctoConvenio := FormatDateTime('mm',IncMonth(SQLParcelasPrazoVendaTempDATAVENCTO.AsDateTime,1));
                              end;}
                          SQLParcelasPrazoVendaTemp.Edit;
                          DecodeDate(SQLParcelasPrazoVendaTempDATAVENCTO.AsDateTime,AnoVctoConvenio,Mes,Dia);
                          if MesVctoConvenioAnt =  '12' then
                            Inc(AnoVctoConvenio);
                          DataConevio := DiaVctoConvenio + '/' + MesVctoConvenio + '/' + Format('%.4d',[AnoVctoConvenio]);
                          SQLParcelasPrazoVendaTempDATAVENCTO.AsString := DataConevio;
                          SQLParcelasPrazoVendaTemp.Post;
                          SQLParcelasPrazoVendaTemp.Next;
                        end;
                    end;
                end;
              if VlrTxCred > 0 then
                begin
                  LblTxCrediario.Visible := true;
                  VlrTxCrediario.Visible := true;
                  VlrTxCrediario.Value   := VlrTxCred;
                end
              else
                begin
                  LblTxCrediario.Visible := false;
                  VlrTxCrediario.Visible := false;
                  VlrTxCrediario.Value   := 0;
                end;

              SQLParcelasPrazoVendaTemp.Close;
              SQLParcelasPrazoVendaTemp.Open;
              ListaParcelasPrazo.Visible := False;
              ListaParcelasPrazo.Visible := True;
              ListaParcelasPrazo.Refresh;

              if ValorEntrada.Value = 0 then
                ValorEntrada.Value := VlrEntr;
              //ACRESCENTAR TAXA DE CREDI�RIO E ACR�SCIMO
              ValorTotalVenda.Value := ValorTotalVenda.Value +
                                       SQLPlanoRecebimentoPLRCN2TXCRED.Value +
                                       VlrAcresc;

              if (DescTotVenda) and (VlrAcresc > 0) then
                begin
                  Informa('O plano escolhido possui ACR�SCIMO, ' +
                          'por�m voc� concedeu um desconto e n�o � poss�vel mandar Desconto e Acr�scimo simultaneamente para o ECF. O plano dever� ser trocado!') ;

                  ValorEntrada.Value    := 0;
                  ValorTotalVenda.Value := FormTelaItens.CurSubTotal.Value +
                                           VlrTxCrediario.Value -
                                           ValorDescontoAcrescimo.Value -
                                           (VlrBonusTroca + VlrRetConfig_SldCad) ;

                  EstadoFechVenda := InformandoPlano;
                  PreparaEstadoFech(EstadoFechVenda);
                  EntradaDados.Clear;
                  exit;
                end;

              if ((VlrBonusTroca > 0) or (VlrRetConfig_SldCad > 0)) and (VlrAcresc > 0) then
                begin
                  Informa('O plano escolhido possui ACR�SCIMO, ' +
                          'por�m este cupom � de troca e n�o � poss�vel mandar Desconto e Acr�scimo simultaneamente para o ECF. O plano dever� ser trocado!') ;

                  EstadoFechVenda := InformandoPlano ;
                  PreparaEstadoFech(EstadoFechVenda) ;
                  EntradaDados.Clear ;
                  exit ;
                end ;

              if VlrAcresc > 0 then
                begin
                  ValorDescontoAcrescimo.Value      := VlrAcresc ;
                  LblValorDescontoAcrescimo.Caption := 'ACR�SCIMO' ;
                  LblValorDescontoAcrescimo.Refresh ;
                end
              else
                if DescTotVenda then
                  if LblValorDescontoAcrescimo.Caption = 'ACR�SCIMO' then
                    ValorDescontoAcrescimo.Value := 0 ;

              LblEntrada.Caption := 'ENTRADA' ;
              LblEntrada.Refresh ;
              if (ValorEntrada.Value <= ValorTotalVenda.Value) and
                 (SQLParcelasPrazoVendaTemp.RecordCount = 0) then
                begin
                  LblEntrada.Caption := 'SALDO' ;
                  LblEntrada.Refresh ;
                end ;

              if ValorEntrada.Value > 0 then
                begin
                  EstadoFechVenda := InformandoNumerarioVista ;
                  PreparaEstadoFech(EstadoFechVenda) ;
                  EntradaDados.Clear ;
                  EntradaDados.SelectAll ;
                  exit ;
                end ;
            end
          else
            begin
              EntradaDados.SelectAll ;
              Informa('Plano n�o encontrado !') ;
              exit ;
            end ;

          EntradaDados.Clear ;
          if EstadoFechVendaAnt = '' then
            begin
              if SQLParcelasPrazoVendaTemp.RecordCount = 0 then
                EstadoFechVenda := FinalizandoVenda
              else
                EstadoFechVenda := InformandoNumerarioPrazo ;
            end
          else
            EstadoFechVenda := EstadoFechVendaAnt ;

          EstadoFechVendaAnt := '' ;
          PreparaEstadoFech(EstadoFechVenda) ;
          exit ;
        end ;
      //INFORMANDO NUMER�RIO A VISTA
      if EstadoFechVenda = InformandoNumerarioVista then
        begin
          if (EntradaDados.text = '') or (not IsNumeric(EntradaDados.Text, 'INTEGER')) then
            begin
              if (not IsNumeric(EntradaDados.Text, 'INTEGER')) and (SQLLocate('NUMERARIO', 'NUMEA30DESCR', 'NUMEICOD', '"' + EntradaDados.Text + '"') <> '') then
                begin
                  EntradaDados.text := SQLLocate('NUMERARIO', 'NUMEA30DESCR', 'NUMEICOD', '"' + EntradaDados.Text + '"') ;
                end
              else
                begin
                  Application.CreateForm(TFormTelaConsultaRapidaNumerario, FormTelaConsultaRapidaNumerario) ;
                  FormTelaConsultaRapidaNumerario.LblTituloTela.Caption := 'Consulta de Numer�rios � Vista' ;
                  FormTelaConsultaRapidaNumerario.LblTituloTela.Refresh ;

{                  FormTelaConsultaRapidaNumerario.SQLNumerario.Close ;
                  FormTelaConsultaRapidaNumerario.SQLNumerario.MacroByName('MTipo').Value := 'NUMECVISTAPRAZO = "V"' ;
                  FormTelaConsultaRapidaNumerario.SQLNumerario.Open ;}

                  FormTelaConsultaRapidaNumerario.ShowModal ;
                  EntradaDados.text := IntToStr(NumerarioAtual) ;
                end ;
            end ;

          NumerarioVista := 0 ;
          DM.SQLTemplate.Close ;
          DM.SQLTemplate.SQL.Clear ;
          DM.SQLTemplate.SQL.Add('select * from NUMERARIO') ;
          DM.SQLTemplate.SQL.Add('where') ;
          DM.SQLTemplate.SQL.Add('NUMEICOD = ' + EntradaDados.text) ;
          DM.SQLTemplate.Open ;

          DM.SQLTemplate.First ;
          if DM.SQLTemplate.EOF then
            begin
              EntradaDados.SelectAll ;
              Informa('Numer�rio n�o encontrado !') ;
              exit ;
            end ;

{          if DM.SQLTemplate.FieldByName('NUMECVISTAPRAZO').Value <> 'V' then
            begin
              EntradaDados.SelectAll ;
              Informa('Este n�o � um numer�rio a vista!') ;
              exit ;
            end ;}

          NumerarioVista      := StrToInt(EntradaDados.Text) ;
          NumerarioVistaDescr := DM.SQLTemplate.Fieldbyname('NUMEA30DESCR').AsString ;
          TipoPadrao          := DM.SQLTemplate.FieldByName('NUMEA5TIPO').Value ;

          EntradaDados.Clear ;
          EstadoFechVenda := InformandoValorNumerarioVista ;
          PreparaEstadoFech(EstadoFechVenda) ;
          EntradaDados.Text := FormatFloat('###0.00', ValorEntrada.Value - ValorRecebido.Value) ;
          EntradaDados.SelectAll ;
          exit ;
        end ;
        //INFORMANDO VALOR NUMER�RIO A VISTA
      if EstadoFechVenda = InformandoValorNumerarioVista then
        begin
          EntradaDados.Text := TrocaPontoPorVirgula(EntradaDados.Text) ;
          try
            StrToFloat(EntradaDados.Text) ;
          except
            Informa('Valor inv�lido para o Numer�rio!') ;
            EntradaDados.SelectAll ;
            exit ;
          end ;

          if not (StrToFloat(EntradaDados.Text) > 0) then
            begin
              Informa('Valor deve ser maior que zero!') ;
              EntradaDados.SelectAll ;
              exit ;
            end ;

          if (TipoPadrao = 'DIN')  or
             (TipoPadrao = 'CHQV') or
             (TipoPadrao = 'CRTF') or
             (TipoPadrao = 'CRT') or
             (TipoPadrao = 'CRD') then
            begin

              DM.SQLTemplate.Close ;
              DM.SQLTemplate.SQL.Clear ;
              DM.SQLTemplate.SQL.Add('select * from PARCELASVISTAVENDATEMP') ;
              DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
              DM.SQLTemplate.SQL.Add('and   NUMEICOD = ' + IntToStr(NumerarioVista)) ;
              DM.SQLTemplate.Open ;
              if DM.SQLTemplate.EOF then
                begin
                  ValorDevido := ValorEntrada.Value - ValorRecebido.Value ;
                  SQLParcelasVistaVendaTemp.Last ;
                  NroIt := SQLParcelasVistaVendaTempNROITEM.Value + 1 ;

                  SQLParcelasVistaVendaTemp.Append ;
                  SQLParcelasVistaVendaTempTERMICOD.Value := TerminalAtual ;
                  SQLParcelasVistaVendaTempNROITEM.Value  := NroIt ;
                  SQLParcelasVistaVendaTempNUMEICOD.Value := NumerarioVista ;
                  Valor1 := StrToFloat(EntradaDados.Text) ;
                  if (Valor1 > ValorDevido) and (ValorDevido > 0) then
                    begin
                      if (TipoPadrao <> 'DIN') and (Copy(TipoPadrao,1,3) <> 'CHQ') then
                        begin
                          Informa('N�o � poss�vel dar troco para um numer�rio diferente de dinheiro ou cheque!') ;
                          SQLParcelasVistaVendaTemp.Cancel ;
                          EstadoFechVenda := InformandoNumerarioVista ;
                          PreparaEstadoFech(EstadoFechVenda) ;
                          exit ;
                        end ;
                      SQLParcelasVistaVendaTempVALORPARC.Value := StrToFloat(EntradaDados.Text) - (StrToFloat(EntradaDados.Text) - ValorDevido) ;
                    end
                  else
                    SQLParcelasVistaVendaTempVALORPARC.Value := StrToFloat(EntradaDados.Text) ;
                  SQLParcelasVistaVendaTempTIPOPADR.Value  := TipoPadrao ;
                  SQLParcelasVistaVendaTemp.Post ;
                end
              else
                begin
                  SQLParcelasVistaVendaTemp.Close ;
                  SQLParcelasVistaVendaTemp.SQL.Clear ;
                  SQLParcelasVistaVendaTemp.SQL.Add('select * from PARCELASVISTAVENDATEMP') ;
                  SQLParcelasVistaVendaTemp.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
                  SQLParcelasVistaVendaTemp.SQL.Add('and   NUMEICOD = ' + IntToStr(NumerarioVista)) ;
                  SQLParcelasVistaVendaTemp.Open ;
                  SQLParcelasVistaVendaTemp.Edit ;
                  SQLParcelasVistaVendaTempVALORPARC.Value := SQLParcelasVistaVendaTempVALORPARC.Value +
                                                              StrToFloat(EntradaDados.Text) ;
                  SQLParcelasVistaVendaTempTIPOPADR.Value  := TipoPadrao ;
                  SQLParcelasVistaVendaTemp.Post ;
                end ;

              SQLParcelasVistaVendaTemp.Close ;
              SQLParcelasVistaVendaTemp.SQL.Clear ;
              SQLParcelasVistaVendaTemp.SQL.Add('select * from PARCELASVISTAVENDATEMP') ;
              SQLParcelasVistaVendaTemp.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
              SQLParcelasVistaVendaTemp.Open ;

              ValorRecebido.Value := ValorRecebido.Value + StrToFloat(EntradaDados.Text) ;
              VarValorRecebido    := ValorRecebido.Value;
              EntradaDados.Clear ;

              if ValorRecebido.Value >= ValorEntrada.Value then
                begin
                  if EstadoFechVendaAnt = '' then
                    begin
                      if SQLParcelasPrazoVendaTemp.RecordCount = 0 then
                        EstadoFechVenda := FinalizandoVenda
                      else
                        EstadoFechVenda := InformandoNumerarioPrazo ;
                    end
                  else
                    EstadoFechVenda := EstadoFechVendaAnt ;

                  EstadoFechVendaAnt := '' ;
                  PreparaEstadoFech(EstadoFechVenda) ;
                  if (ValorRecebido.Value > ValorEntrada.Value) and (ValorDevido > 0) then
                    begin
                      ValorTroco.Value := ValorRecebido.Value - ValorEntrada.Value ;
                      VarValorTroco    := ValorTroco.Value;
                    end;
                end
              else
                begin
                  EntradaDados.Clear ;
                  if EstadoFechVendaAnt = '' then
                    EstadoFechVenda := InformandoNumerarioVista
                  else
                    EstadoFechVenda := EstadoFechVendaAnt;
                  EstadoFechVendaAnt := '';
                  PreparaEstadoFech(EstadoFechVenda);
                end;
              exit;
            end
          else
            begin
              Informa('Este numer�rio n�o pode ser considerado como � VISTA!');
              EntradaDados.Clear;
              EstadoFechVenda  := InformandoNumerarioVista;
              PreparaEstadoFech(EstadoFechVenda);
            end;
        end;
      //INFORMANDO NUMER�RIO A PRAZO
      if EstadoFechVenda = InformandoNumerarioPrazo then
        begin
          if (EntradaDados.text = '') or (not IsNumeric(EntradaDados.Text, 'INTEGER')) then
            begin
              if (not IsNumeric(EntradaDados.Text, 'INTEGER')) and
                 (SQLLocate('NUMERARIO', 'NUMEA30DESCR', 'NUMEICOD', '"' + EntradaDados.Text + '"') <> '') and
                 (Key <> VK_Down) then
                begin
                  EntradaDados.text := SQLLocate('NUMERARIO', 'NUMEA30DESCR', 'NUMEICOD', '"' + EntradaDados.Text + '"') ;
                end
              else
                begin
                  Application.CreateForm(TFormTelaConsultaRapidaNumerario, FormTelaConsultaRapidaNumerario) ;
                  FormTelaConsultaRapidaNumerario.LblTituloTela.Caption := 'Consulta de Numer�rios � Prazo' ;
                  FormTelaConsultaRapidaNumerario.LblTituloTela.Refresh ;

{                  FormTelaConsultaRapidaNumerario.SQLNumerario.Close ;
                  FormTelaConsultaRapidaNumerario.SQLNumerario.MacroByName('MTipo').Value := 'NUMECVISTAPRAZO = "P"' ;
                  FormTelaConsultaRapidaNumerario.SQLNumerario.Open ;}

                  FormTelaConsultaRapidaNumerario.ShowModal ;
                  EntradaDados.text := IntToStr(NumerarioAtual) ;
                end ;
            end ;

          DM.SQLTemplate.Close ;
          DM.SQLTemplate.SQL.Clear ;
          DM.SQLTemplate.SQL.Add('select Count(*) from PARCELASPRAZOVENDATEMP') ;
          DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
          DM.SQLTemplate.Open ;
          if DM.SQLTemplate.FieldByName('Count').Value = 0 then
            begin
              EntradaDados.Clear ;
              if EstadoFechVendaAnt = '' then
                EstadoFechVenda := FinalizandoVenda
              else
                EstadoFechVenda := EstadoFechVendaAnt ;

              EstadoFechVendaAnt := '' ;
              PreparaEstadoFech(EstadoFechVenda) ;
              Exit ;
            end ;

          DM.SQLTemplate.Close ;
          DM.SQLTemplate.SQL.Clear ;
          DM.SQLTemplate.SQL.Add('select * from NUMERARIO') ;
          DM.SQLTemplate.SQL.Add('where') ;
          DM.SQLTemplate.SQL.Add('NUMEICOD = ' + EntradaDados.text) ;
          DM.SQLTemplate.Open ;

{          if DM.SQLTemplate.FieldByName('NUMECVISTAPRAZO').Value <> 'P' then
            begin
              EntradaDados.SelectAll ;
              Informa('Este n�o � um numer�rio a vista!') ;
              exit ;
            end ;}

          DM.SQLTemplate.First ;
          if not DM.SQLTemplate.EOF then
            begin
              NumerarioPrazo := DM.SQLTemplate.FieldByName('NUMEICOD').AsInteger ;

              SQLParcelasPrazoVendaTemp.DisableControls ;
              SQLParcelasPrazoVendaTemp.First ;
              while not SQLParcelasPrazoVendaTemp.EOF do
                begin
                  SQLParcelasPrazoVendaTemp.Edit ;
                  SQLParcelasPrazoVendaTempNUMEICOD.Value := NumerarioPrazo ;
                  SQLParcelasPrazoVendaTempTIPOPADR.Value := DM.SQLTemplate.FieldByName('NUMEA5TIPO').AsString ;
                  if SQLParcelasPrazoVendaTempTIPOPADR.AsString = 'CRT' then
                    begin
                      if (SQLParcelasVistaVendaTempPRCAA60CARTAO.AsString <> SQLParcelasPrazoVendaTempPRCAA60CARTAO.AsString) and (SQLParcelasVistaVendaTempPRCAA60CARTAO.AsString <> '' ) then
                        begin
                          InformaG('Voc� selecionou uma forma de pagamento cart�o para as parcelas � vista e deve escolher a mesma para as parcelas a prazo');
                          EstadoFechVenda := InformandoNumerarioPrazo;
                          PreparaEstadoFech(EstadoFechVenda);
                          Exit;
                        end;
                    end;

                  SQLParcelasPrazoVendaTemp.Post ;

                  SQLParcelasPrazoVendaTemp.Next ;
                end ;
              SQLParcelasPrazoVendaTemp.First ;
              SQLParcelasPrazoVendaTemp.EnableControls ;
            end
          else
            begin
              EntradaDados.SelectAll ;
              Informa('Numer�rio n�o encontrado !') ;
              exit ;
            end ;

          EntradaDados.Clear ;
          if EstadoFechVendaAnt = '' then
            EstadoFechVenda := FinalizandoVenda
          else
            EstadoFechVenda := EstadoFechVendaAnt ;

          EstadoFechVendaAnt := '' ;
          PreparaEstadoFech(EstadoFechVenda) ;
          exit ;
        end ;
      //INFORMANDO A POSICAO DA DATA A SER ALTERADA
      if EstadoFechVenda = InformandoPosicaoData then
        begin
          if EntradaDados.Text = '' then
            exit ;

          Screen.Cursor := crHourglass ;
          if not SQLParcelasPrazoVendaTemp.Locate('NROPARCELA', EntradaDados.Text, []) then
            begin
              Informa('Parcela n�o encontrada!') ;
              exit ;
            end ;
          Screen.Cursor := crDefault ;
          EntradaDados.Text := SQLParcelasPrazoVendaTempDATAVENCTO.AsString ;

          EstadoFechVenda := AlterandoData ;
          PreparaEstadoFech(EstadoFechVenda) ;
          exit ;
        end ;
      //ALTERANDO DATA VENCIMENTO
      if EstadoFechVenda = AlterandoData then
        begin
          //TESTAR SE A DATA DIGITADAD � V�LIDA
          try
            EntradaDados.Text := DateToStr(StrToDate(EntradaDados.Text)) ;
          except
            Informa('Data inv�lida !') ;
            EntradaDados.Text := SQLParcelasPrazoVendaTempDATAVENCTO.AsString ;
            exit ;
          end ;

          //ALTERANDO DATA VENCIMENTO
          SQLParcelasPrazoVendaTemp.Edit ;
          SQLParcelasPrazoVendaTempDATAVENCTO.AsString := EntradaDados.Text ;
          SQLParcelasPrazoVendaTemp.Post ;

          SQLParcelasPrazoVendaTemp.Close ;
          SQLParcelasPrazoVendaTemp.Open ;
          ListaParcelasPrazo.Refresh ;

          EntradaDados.Clear ;
          EstadoFechVenda    := EstadoFechVendaAnt ;
          EstadoFechVendaAnt := '' ;
          PreparaEstadoFech(EstadoFechVenda) ;
          exit ;
        end ;
      //INFORMANDO A POSICAO DA PRACELA PRAZO A SER ALTERADA
      if EstadoFechVenda = InformandoPosicaoParcelaPrazo then
        begin
          if EntradaDados.Text = '' then
            exit ;

          Screen.Cursor := crHourglass ;
          if not SQLParcelasPrazoVendaTemp.Locate('NROPARCELA', EntradaDados.Text, []) then
            begin
              Informa('Parcela n�o encontrada!') ;
              exit ;
            end ;
          Screen.Cursor := crDefault ;
          EntradaDados.Text := SQLParcelasPrazoVendaTempVALORVENCTO.AsString ;

          EstadoFechVenda := AlterandoParcelaPrazo ;
          PreparaEstadoFech(EstadoFechVenda) ;
          exit ;
        end ;
      //ALTERANDO PARCELA PRAZO
      if EstadoFechVenda = AlterandoParcelaPrazo then
        begin
          //TESTAR SE A VALOR DIGITADO � V�LIDO
          try
            EntradaDados.Text := FloatToStr(StrToFloat(EntradaDados.Text)) ;
          except
            Informa('Valor inv�lido !') ;
            EntradaDados.Text := SQLParcelasPrazoVendaTempVALORVENCTO.AsString ;
            exit ;
          end ;

          //ALTERANDO DATA VENCIMENTO
          SQLParcelasPrazoVendaTemp.Edit ;
          SQLParcelasPrazoVendaTempVALORVENCTO.AsString := EntradaDados.Text ;
          SQLParcelasPrazoVendaTemp.Post ;

          SQLParcelasPrazoVendaTemp.Close ;
          SQLParcelasPrazoVendaTemp.Open ;
          ListaParcelasPrazo.Refresh;

          EntradaDados.Clear ;
          EstadoFechVenda    := EstadoFechVendaAnt ;
          EstadoFechVendaAnt := '' ;
          PreparaEstadoFech(EstadoFechVenda) ;
          exit ;
        end ;
      //DIMINUIR ACRESCIMO
      if EstadoFechVenda = DiminuirAcrescimo then
        begin
          //TESTAR SE A VALOR DIGITADO � V�LIDO
          try
            EntradaDados.Text := FloatToStr(StrToFloat(EntradaDados.Text)) ;
          except
            Informa('Valor inv�lido !') ;
            EntradaDados.Text := SQLParcelasPrazoVendaTempVALORVENCTO.AsString ;
            exit ;
          end ;

          ValorDiminuirAcresc := StrToFloat(EntradaDados.Text) ;
          ValorDescontoAcrescimo.Value := 0 ;
          ValorEntrada.Value           := 0 ;

          EntradaDados.Clear ;
          EstadoFechVenda    := InformandoPlano ;
          EstadoFechVendaAnt := '' ;
          PreparaEstadoFech(EstadoFechVenda) ;
          exit ;
        end ;
      //INFORMANDO DESCONTO
      if EstadoFechVenda = InformandoDesconto then
        begin
          try
            EntradaDados.Text := FloatToStr(StrToFloat(EntradaDados.Text)) ;
          except
            Informa('Valor inv�lido !') ;
            exit ;
          end ;

          if (LblValorDescontoAcrescimo.Caption = 'ACR�SCIMO') and
             (ValorDescontoAcrescimo.Value > 0) then
            begin
              ValorDescontoAcrescimo.Value := 0 ;
              ValorTotalVenda.Value := FormTelaItens.CurSubTotal.Value ;
            end ;

          if TipoDescFech = 'VALOR' then
            ValorDescontoAcrescimo.Text := EntradaDados.Text ;

          if TipoDescFech = 'PERCENTUAL' then
            ValorDescontoAcrescimo.Value := (FormTelaItens.CurSubTotal.Value + VlrTxCrediario.Value - (VlrBonusTroca + VlrRetConfig_SldCad)) *
                                            (StrToFloat(EntradaDados.Text)/100) ;

          if PercDesqMaxUsario < (ValorDescontoAcrescimo.Value / (FormTelaItens.CurSubTotal.Value + VlrTxCrediario.Value - (VlrBonusTroca + VlrRetConfig_SldCad))*100) then
            begin
              ValorDescontoAcrescimo.Value := 0 ;
              Informa('Voc� n�o tem permiss�o para dar desconto na venda') ;
            end
          else
            begin
              EntradaDados.Clear ;
              //SUBTRAIR DESCONTO DO TOTAL DA VENDA
              if ValorDescontoAcrescimo.Value > 0 then
                begin
                  LblValorDescontoAcrescimo.Caption := 'DESCONTO' ;

                  ValorTotalVenda.Value := FormTelaItens.CurSubTotal.Value  +
                                           VlrTxCrediario.Value -
                                           ValorDescontoAcrescimo.Value -
                                           (VlrBonusTroca + VlrRetConfig_SldCad)
                end
              else
                ValorTotalVenda.Value := FormTelaItens.CurSubTotal.Value +
                                         VlrTxCrediario.Value -
                                         (VlrBonusTroca + VlrRetConfig_SldCad) ;

              ValorEntrada.Value  := 0 ;
              ValorRecebido.Value := 0 ;
              //LIMPAR PARCELAS A VISTA
              DM.SQLTemplate.Close ;
              DM.SQLTemplate.SQL.Clear ;
              DM.SQLTemplate.SQL.Add('delete from PARCELASVISTAVENDATEMP') ;
              DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
              DM.SQLTemplate.ExecSQL ;
              SQLParcelasVistaVendaTemp.Close ;
              SQLParcelasVistaVendaTemp.Open ;
              //LIMPAR PARCELAS A PRAZO
              DM.SQLTemplate.Close ;
              DM.SQLTemplate.SQL.Clear ;
              DM.SQLTemplate.SQL.Add('delete from PARCELASPRAZOVENDATEMP') ;
              DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
              DM.SQLTemplate.ExecSQL ;
              SQLParcelasPrazoVendaTemp.Close ;
              SQLParcelasPrazoVendaTemp.Open ;
            end ;

          if ValorDescontoAcrescimo.Value > 0 then
            DescTotVenda := true
          else
            begin
              LblValorDescontoAcrescimo.Caption := 'ACR�SCIMO' ;
              LblValorDescontoAcrescimo.Refresh ;
              DescTotVenda := false ;
            end ;

          EstadoFechVendaAnt := '' ;
          //EstadoFechVenda    := InformandoPlano ;

          AtualizaDadosPlanoNumerario(Sender) ;
          exit ;
        end ;
      //ALTERANDO ENTRADA
      if EstadoFechVenda = AlterandoEntrada then
        begin
          ValorEntrada.Text := EntradaDados.Text ;
          EntradaDados.Clear ;

          AtualizaDadosPlanoNumerario(Sender) ;

          exit ;
        end ;
      //EXCLUINDO NUMER�RIO A VISTA
      if EstadoFechVenda = ExcluindoNumerarioVista then
        begin
          if not SQLParcelasVistaVendaTemp.Locate('NROITEM', EntradaDados.Text, []) then
            begin
              Informa('N�o h� nenhum Numer�rio a Vista na posi��o informada!') ;
              exit ;
            end ;

          ValorRecebido.Value := ValorRecebido.Value - SQLParcelasVistaVendaTempVALORPARC.Value ;
          VarValorRecebido    := ValorRecebido.Value;
          SQLParcelasVistaVendaTemp.Delete ;

          EntradaDados.Clear ;
          EstadoFechVenda := InformandoNumerarioVista ;
          EstadoFechVendaAnt := '' ;
          PreparaEstadoFech(EstadoFechVenda) ;
          exit ;
        end ;
      //--------------------- FECHAMENTO DA VENDA --------------------\\
      if (EstadoFechVenda = FinalizandoVenda) and (not FechandoVenda) then
      begin
        //LIMPAR TABELA TEMPORARIA DE CARNE
        FinalizacaodeVenda := true ;


        if not VendaConsignada then
          if PlanoVenda = 0 then
            begin
              Informa('O Plano deve ser informado !') ;
              EstadoFechVenda := InformandoPlano ;
              PreparaEstadoFech(EstadoFechVenda) ;
              exit ;
            end ;

        if ClienteVenda = '' then
          begin
            Informa('O Cliente deve ser informado !') ;
            AbrirTelaCliente    := True;
            EstadoFechVendaAnt := EstadoFechVenda ;
            EstadoFechVenda    := InformandoCliente ;
            PreparaEstadoFech(EstadoFechVenda) ;
            exit ;
          end ;

        if (ClienteVenda = DM.SQLTerminalAtivoCLIEA13ID.AsString) and
           (
             (TipoPadrao <> 'DIN')  and
             (TipoPadrao <> 'VISTA') and
             (Copy(TipoPadrao,1,3) <> 'CHQ') and
             (TipoPadrao <> 'CRT')
            ) then
          begin
            Informa('O Cliente deve ser informado !') ;
            AbrirTelaCliente   := True;
            EstadoFechVendaAnt := FinalizandoVenda;
            EstadoFechVenda    := InformandoCliente;
            PreparaEstadoFech(EstadoFechVenda);
            Tecla := Vk_Return;
            EntradaDados.Text := '';
            EntradaDadosKeyDown(EntradaDados,Tecla,[ssCtrl]);
            exit ;
          end ;

        if VendedorVenda = 0 then
          begin
            Informa('O Vendedor deve ser informado !') ;
            EstadoFechVendaAnt := EstadoFechVenda ;
            EstadoFechVenda    := InformandoVendedor ;
            PreparaEstadoFech(EstadoFechVenda) ;
            exit ;
          end ;

        if ClienteVenda <> '' then
          begin
            if BloquearVenda then
              exit ;
          end ;
        //ESTA VARIAVEL FOI CRIADA POIS QUANDO SE CLIACAVA F3 PARA FINALIZAR A VENDA
        //E RAPIDAMENTE DAVA-SE 5 ENTER O SISTEMA TENTAVA FECHAR DUAS VEZES A
        //VENDA E DAVA ERRO
        FechandoVenda := true ;

        if not VendaConsignada then
          if (VerificandoTotalVenda <> 0) and (ValorTotalVenda.Value > 0) then
          begin
            FechandoVenda := false ;
            if not Pergunta('NAO', 'O total das parcelas difere em R$ ' + FormatFloat('#,##0.00', VerificandoTotalVenda) +
                                   ' do total da venda. Deseja encerrar a venda assim mesmo ?') then
              exit;
          end;

        //CONSISTENCIAS
        if ValorRecebido.Value < ValorEntrada.Value then
          begin
            Informa('O valor recebido est� menor que o valor da Entrada/Saldo !') ;
            EstadoFechVenda := InformandoNumerarioVista ;
            PreparaEstadoFech(EstadoFechVenda) ;
            exit ;
          end ;

        TipoPadrao := '' ;
        SolicitarLiberacao := False;
        //TESTAR SE ALGUM VALOR AVISTA EST� SEM NUMER�RIO
        SQLParcelasVistaVendaTemp.DisableControls;
        SQLParcelasVistaVendaTemp.First;
        Dm.SQLConfigVenda.Close;
        Dm.SQLConfigVenda.Open;
        while not SQLParcelasVistaVendaTemp.EOF do
          begin
            if SQLParcelasVistaVendaTempNUMEICOD.Value > 0 then
              begin
                //VERIFICA SE PRECISA SOLICITAR LIBERACAO DE CREDITO
                if Dm.SQLConfigVendaCFVECUSALIBERCRED.AsString = 'S' then
                  begin
                    TamanhoArray := Length(TipoPadraoLiberacao);
                    for Tipo:=0 to TamanhoArray -1 do
                      begin
                        if SQLParcelasVistaVendaTempTIPOPADR.AsString = TipoPadraoLiberacao[Tipo] then
                           SolicitarLiberacao := True;
                      end;
                  end;
                if ((SQLParcelasVistaVendaTempTIPOPADR.AsString = 'CRT')
                     and (SQLParcelasVistaVendaTempPRCAA60CARTAO.AsString <> '')) or
                    ((Copy(SQLParcelasVistaVendaTempTIPOPADR.AsString,1,3) = 'CHQ')
                      and (SQLParcelasVistaVendaTempPRCACCONSCHEQUE.AsString = 'S')) then
                  begin
                    TemNumerarioCartaoVista := True;
                    ProvedorCartao := SQLParcelasVistaVendaTempPRCAA60CARTAO.AsString;
                    SendDirectory := SQLParcelasVistaVendaTempPRCATPATHENVIA.AsString;
                    ReceiveDirectory := SQLParcelasVistaVendaTempPRCATPATHRECEBE.AsString;
                    NumerarioCartao := SQLParcelasVistaVendaTempNUMEICOD.AsString;
                    NomeNumerarioCartao := SQLParcelasVistaVendaTempNumerarioLookup.AsString;
                  end
                else
                  begin
                    if SQLParcelasVistaVendaTempTIPOPADR.AsString = 'CRTF' then
                      begin
                        if ClienteVenda = DM.SQLTerminalAtivoCLIEA13ID.AsString then
                          begin
                            Informa('Voc� deve informar o cliente para uma venda com cart�o!');
                            FechandoVenda := False;
                            FinalizacaodeVenda := False;
                            EntradaDados.SetFocus;
                            EntradaDados.Clear;
                            AbrirTelaCliente   := True;
                            EstadoFechVendaAnt := FinalizandoVenda;
                            EstadoFechVenda    := InformandoCliente;
                            PreparaEstadoFech(EstadoFechVenda);
                            Exit;
                          end;
                      end;
                  end;
              end
            else
              begin
              Informa('Existe um valor a vista sem Numer�rio !') ;
              EstadoFechVenda := InformandoNumerarioVista ;
              PreparaEstadoFech(EstadoFechVenda) ;
              exit ;
            end ;

            TipoPadrao    := SQLParcelasVistaVendaTempTIPOPADR.Value ;
            TotalVistaAut := TotalVistaAut + SQLParcelasVistaVendaTempVALORPARC.Value ;

            if TipoPadrao = 'CRTF' then
              ValorCartaoFidelizacao := ValorCartaoFidelizacao + SQLParcelasVistaVendaTempVALORPARC.Value;

            SQLParcelasVistaVendaTemp.Next ;
          end ;
        SQLParcelasVistaVendaTemp.First ;
        SQLParcelasVistaVendaTemp.EnableControls ;

        //TESTAR SE ALGUM VALOR APRAZO EST� SEM NUMER�RIO
        NumParc := SQLParcelasPrazoVendaTemp.RecordCount ;
        SQLParcelasPrazoVendaTemp.DisableControls ;
        SQLParcelasPrazoVendaTemp.First ;

        //VERIFICA SE PRECISA SOLICITAR LIBERACAO DE CREDITO
        Dm.SQLConfigVenda.Close;
        Dm.SQLConfigVenda.Open;
        if Dm.SQLConfigVendaCFVECUSALIBERCRED.AsString = 'S' then
          begin
            TamanhoArray := Length(TipoPadraoLiberacao);
            for Tipo:=0 to TamanhoArray - 1 do
              begin
                if SQLParcelasPrazoVendaTempTIPOPADR.AsString =  TipoPadraoLiberacao[Tipo] then
                   SolicitarLiberacao := True;
              end;
            //SOLICITA LIBERACAO DO CLIENTE SELECIONADO
            if SolicitarLiberacao and (ClienteVenda <> Dm.SQLTerminalAtivoCLIEA13ID.AsString)then
              begin
                NumeroLiberacaoOk := '';
                Application.CreateForm(TFormTelaConsultaLiberacaoCredito,FormTelaConsultaLiberacaoCredito);
                FormTelaConsultaLiberacaoCredito.Hide;
                FormTelaConsultaLiberacaoCredito.SQLLiberacao.Close;
                FormTelaConsultaLiberacaoCredito.SQLLiberacao.ParamByName('CLIEA13ID').AsString := ClienteVenda;
                FormTelaConsultaLiberacaoCredito.SQLLiberacao.ParamByName('DataAtual').AsString := FormatDateTime('mm/dd/yyyy',Now);
                FormTelaConsultaLiberacaoCredito.SQLLiberacao.Open;
                if FormTelaConsultaLiberacaoCredito.SQLLiberacao.IsEmpty then
                  begin
                    InformaG('Nenhuma libera��o foi encontrada para o cliente no dia de hoje, imposs�vel encerrar a venda!');
                    FechandoVenda := False;
                    FinalizacaodeVenda := False;
                    EstadoFechVendaAnt := '';
                    EstadoFechVenda    := FinalizandoVenda;
                    PreparaEstadoFech(EstadoFechVenda);
                    Exit;
                  end
                else
                  begin
                    FormTelaConsultaLiberacaoCredito.SQLCliente.Close;
                    FormTelaConsultaLiberacaoCredito.SQLCliente.Open;
                    FormTelaConsultaLiberacaoCredito.ShowModal;
                    if FormTelaConsultaLiberacaoCredito.ModalResult = MrOk then
                      begin
                        if FormTelaConsultaLiberacaoCredito.SQLLiberacaoCATCN2VLRCREDITO.AsFloat < ValorTotalVenda.Value then
                          begin
                            InformaG('O valor desta venda � maior que o valor liberado para o cliente, favor verifique!');
                            FechandoVenda := False;
                            FinalizacaodeVenda := False;
                            EstadoFechVendaAnt := '';
                            EstadoFechVenda    := FinalizandoVenda;
                            PreparaEstadoFech(EstadoFechVenda);
                            Exit;
                          end
                        else
                          begin
                            FormTelaConsultaLiberacaoCredito.SQLLiberacao.Edit;
                            FormTelaConsultaLiberacaoCredito.SQLLiberacaoCATCCSTATUS.AsString := 'F';
                            FormTelaConsultaLiberacaoCredito.SQLLiberacao.Post;
                            NumeroLiberacaoOk := FormTelaConsultaLiberacaoCredito.SQLLiberacaoCATCA13ID.AsString;
                            FormTelaConsultaLiberacaoCredito.SQLLiberacao.Free;
                          end;
                      end
                    else
                      begin
                        FechandoVenda := False;
                        FinalizacaodeVenda := False;
                        EstadoFechVendaAnt := '';
                        EstadoFechVenda    := FinalizandoVenda;
                        PreparaEstadoFech(EstadoFechVenda);
                        Exit;
                      end;
                  end;
                FormTelaConsultaLiberacaoCredito.Close;
                FormTelaConsultaLiberacaoCredito.Free;
                Application.ProcessMessages;
              end;
            ////////////////////////////////////////////////////////
          end;
        ValorPrazo := 0 ;
        if ((SQLParcelasPrazoVendaTempTIPOPADR.AsString = 'CRD') and
          (FileExists(UPPERCASE(DM.PathAplicacao + 'CARNES.EXE')))) or
          ((FileExists(UPPERCASE(DM.PathAplicacao + 'CARNESITEM.EXE'))))then
          begin
            TblCarne.Close ;
            try
              TblCarne.DeleteTable ;
              TblCarne.CreateTable ;
            except
              TblCarne.CreateTable ;
            end ;
            TblCarne.Open ;
          end;

        while not SQLParcelasPrazoVendaTemp.EOF do
          begin
            if SQLParcelasPrazoVendaTempNUMEICOD.Value > 0 then
              begin
                if ((SQLParcelasPrazoVendaTempTIPOPADR.AsString = 'CRT')
                     and (SQLParcelasPrazoVendaTempPRCAA60CARTAO.AsString <> '')) or
                   ((Copy(SQLParcelasPrazoVendaTempPRCAA60CARTAO.AsString,1,3) = 'CHQ')
                     and (SQLParcelasPrazoVendaTempPRCACCONSCHEQUE.AsString = 'S')) then
                  begin
                    TemNumerarioCartaoPrazo := True;
                    ProvedorCartao := SQLParcelasPrazoVendaTempPRCAA60CARTAO.AsString;
                    SendDirectory := SQLParcelasPrazoVendaTempPRCATPATHENVIA.AsString;
                    ReceiveDirectory := SQLParcelasPrazoVendaTempPRCATPATHRECEBE.AsString;
                    NumerarioCartao := SQLParcelasPrazoVendaTempNUMEICOD.AsString;
                    NomeNumerarioCartao := SQLParcelasPrazoVendaTempNumerarioLookup.AsString;
                  end;
              end
            else
              begin
                Informa('Existe um valor a prazo sem Numer�rio !') ;
                exit ;
              end ;

            TipoPadrao := SQLParcelasPrazoVendaTempTIPOPADR.Value ;
            ValorPrazo := ValorPrazo + SQLParcelasPrazoVendaTempVALORVENCTO.Value ;

            if TemNumerarioCartaoVista or TemNumerarioCartaoPrazo then
              if ValorTroco.Value > 0 then
                begin
                  InformaG('Voc� selecionou um numer�rio do tipo cart�o, portanto est� venda n�o poder� ter troco!' + #13 +
                           'A opera��o ser� cancelada!');
                  FechandoVenda := False;
                  FinalizacaodeVenda := False;
                  EstadoFechVendaAnt := '';
                  EstadoFechVenda    := FinalizandoVenda;
                  PreparaEstadoFech(EstadoFechVenda);
                  Exit;
                end;
            //GRAVAR PARCELAS NA TABELA TEMPORARIA DE CARNE
            if ((SQLParcelasPrazoVendaTempTIPOPADR.AsString = 'CRD')
              and (FileExists(UPPERCASE(DM.PathAplicacao + 'CARNES.EXE'))))
              or (FileExists(UPPERCASE(DM.PathAplicacao + 'CARNESITEM.EXE'))) then
              begin
                if not TblCarne.Active then
                  TblCarne.Open ;
                //GRAVAR PARCELA A VISTA NO CARNE PARA AUTENTICAR
                if (TotalVistaAut > 0) and
                   (SQLParcelasPrazoVendaTempNROPARCELA.Value = 1)        and
                   ((DM.SQLConfigVendaCFVECPARC0ENTRBAIX.AsString <> 'S') or
                   (DM.SQLTerminalAtivoTERMCIMPENTCARNE.AsString = 'S'))  then
                  begin
                    TblCarne.Append;
                    TblCarneEmpresaNome.AsString    := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60NOMEFANT', EmpresaPadrao);
                    TblCarneEmpresaEnder.AsString   := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60END',      EmpresaPadrao);
                    TblCarneEmpresaBairro.AsString  := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60BAI',      EmpresaPadrao);
                    TblCarneEmpresaCidade.AsString  := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60CID',      EmpresaPadrao);
                    TblCarneEmpresaUF.AsString      := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA2UF',        EmpresaPadrao);
                    TblCarneEmpresaFone.AsString    := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA20FONE',     EmpresaPadrao);
                    TblCarneMensagem.AsString       := DM.SQLTerminalAtivoTERMA255MSGCARNE.Value;
                    TblCarneCliente.AsString        := LblNomeCliente.Caption;
                    TblCarneEndereco.AsString       := EnderecoClienteVenda;
                    TblCarneBairro.AsString         := CidadeClienteVenda;
                    TblCarneCidade.AsString         := BairroClienteVenda;
                    TblCarneCodigoCliente.AsString  := ClienteVenda;
                    TblCarneNumeroParcela.AsString  := '0';
                    TblCarneContadorParcelas.Value  := NumParc;
                    TblCarneDataVencimento.Value    := Date;
                    TblCarneValorParcela.Value      := TotalVistaAut;
                    TblCarneVendedor.AsString       := LblNomeVendedor.Caption;
                    TblCarneTotalCupom.Value        := ValorTotalVenda.Value;

                    if LblValorDescontoAcrescimo.Caption = 'DESCONTO' then
                      TblCarneValorDesconto.Value   := ValorDescontoAcrescimo.Value
                    else
                      TblCarneAcrescimo.Value       := ValorDescontoAcrescimo.Value;

                    TblCarneEntrada.Value           := ValorEntrada.Value;
                    TblCarneTaxaCrediario.Value     := VlrTxCrediario.Value;

                    TblCarnePlano.Value             := LblNomePlano.Caption ;
                    TblCarneDataEmissao.Value       := Date ;
                    TblCarneNroCupom.Value          := NroCupomFiscal ;
                    TblCarne.Post ;
                  end ;

                TblCarne.Append ;
                TblCarneEmpresaNome.AsString    := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60NOMEFANT', EmpresaPadrao) ;
                TblCarneEmpresaEnder.AsString   := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60END',      EmpresaPadrao) ;
                TblCarneEmpresaBairro.AsString  := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60BAI',      EmpresaPadrao) ;
                TblCarneEmpresaCidade.AsString  := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60CID',      EmpresaPadrao) ;
                TblCarneEmpresaUF.AsString      := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA2UF',        EmpresaPadrao) ;
                TblCarneEmpresaFone.AsString    := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA20FONE',     EmpresaPadrao) ;
                TblCarneMensagem.AsString       := DM.SQLTerminalAtivoTERMA255MSGCARNE.Value ;
                TblCarneCliente.AsString        := LblNomeCliente.Caption ;
                TblCarneEndereco.AsString       := EnderecoClienteVenda ;
                TblCarneBairro.AsString         := CidadeClienteVenda ;
                TblCarneCidade.AsString         := BairroClienteVenda ;
                TblCarneCodigoCliente.AsString  := ClienteVenda ;
                TblCarneNumeroParcela.AsString  := SQLParcelasPrazoVendaTempNROPARCELA.AsString ;
                TblCarneContadorParcelas.Value  := NumParc ;
                TblCarneDataVencimento.AsString := SQLParcelasPrazoVendaTempDATAVENCTO.AsString ;
                TblCarneValorParcela.AsString   := SQLParcelasPrazoVendaTempVALORVENCTO.AsString ;
                TblCarneVendedor.AsString       := LblNomeVendedor.Caption ;
                TblCarneTotalCupom.Value        := ValorTotalVenda.Value ;
                TblCarnePlano.Value             := LblNomePlano.Caption ;
                TblCarneDataEmissao.Value       := Date ;
                TblCarneNroCupom.Value          := NroCupomFiscal ;

                if LblValorDescontoAcrescimo.Caption = 'DESCONTO' then
                  TblCarneValorDesconto.Value   := ValorDescontoAcrescimo.Value
                else
                  TblCarneAcrescimo.Value       := ValorDescontoAcrescimo.Value;

                TblCarneEntrada.Value           := ValorEntrada.Value;
                TblCarneTaxaCrediario.Value     := VlrTxCrediario.Value;

                TblCarne.Post ;
              end ;

            SQLParcelasPrazoVendaTemp.Next ;
          end ;
        SQLParcelasPrazoVendaTemp.First ;
        SQLParcelasPrazoVendaTemp.EnableControls ;

        //SE N�O TIVER MAIS DE UM NUMERARIO A VISTA IR� GRAVAR VENDA A VISTA
        //COMO DESCRICAO NO CAIXA POIS N�O PODE ESCOLHER UM NUMER�RIO
        SQLParcelasVistaVendaTemp.First;
        if (SQLParcelasVistaVendaTemp.RecordCount = 1)
          and (SQLParcelasVistaVendaTempTIPOPADR.AsString = 'DIN')
          and (SQLParcelasPrazoVendaTemp.IsEmpty) then
           TipoPadrao := 'VISTA';

        if (ECFAtual <> '') and (PortaECFAtual <> '') and (TotalVistaAut > 0) then
          AbrirGaveta(ECFAtual, PortaECFAtual)
        else
          if (ImpNaoFiscalAtual <> '') and (TotalVistaAut > 0) and (PortaImpNaoFiscalAtual <> '') then
            AbrirGaveta_NAOFISCAL(ImpNaoFiscalAtual,PortaImpNaoFiscalAtual)
          else
            if (ECFAtual = '') and (PortaECFAtual <> '') and (TotalVistaAut > 0) then
              begin
                if not DM.SQLECF.Active then DM.SQLECF.Open;
                DM.SQLECF.First;
                while not DM.SQLECF.Eof do
                  begin
                    try
                     if AbrirGaveta(DM.SQLECFECFA30MODELO.AsString,PortaECFAtual) then
                       DM.SQLECF.Last;
                    except
                    end;
                    DM.SQLECF.Next;
                  end;
              end;

        //*************************************************
        //*         INFORMANDO DADOS DO CLIENTE           *
        //*************************************************
        if Dm.SQLTerminalAtivoTERMCINFDADOCLIPAD.AsString = 'S' then
          if ClienteVenda = Dm.SQLTerminalAtivoCLIEA13ID.AsString then
            begin
              Application.CreateForm(TFormTelaDadosCliente,FormTelaDadosCliente);
              FormTelaDadosCliente.ShowModal;
              DadosClienteVenda     := 'DADOS DA VENDA :' + ' ' +
                                       'CLIENTE : ' + NomeClienteVenda + ' -> ' +
                                       'CPF/CGC : ' + DocumentoClienteVenda + ' -> ' +
                                       'ENDERE�O : ' + EnderecoClienteVenda + ' -> ' +
                                       'CIDADE : ' + CidadeClienteVenda;

            end;

        //* * * * * * * * * * * * * * * * * * * * * * * * *
        //*               GRAVANDO PR�-VENDA              *
        //* * * * * * * * * * * * * * * * * * * * * * * * *
        if (TerminalModo = 'P') and (not E_Orcamento) then
          begin
            if DM.SQLTerminalAtivoTERMCCONFFECHCUPOM.Value <> 'N' then
              if not Pergunta('SIM', '* * * CONFIRMA O ENCERRAMENTO DESTA PR�-VENDA ? * * *') then
                Exit ;

            if not FileExists('SemTransacao.Arq') then
              if DM.DB.InTransaction then
                DM.DB.Rollback ;

            if not FileExists('SemTransacao.Arq') then
              DM.DB.StartTransaction ;

            GravarPreVenda ;
/////////// INICIA FECHAMENTO DE CUPOM NA PRE-VENDA ////////////////////

            if (ECFAtual <> '') and (PortaECFAtual <> '') then
            begin
              LblInstrucoes.Caption := 'INICIANDO ENCERRAMENTO CUPOM FISCAL PRE-VENDA...' ;
              LblInstrucoes.Refresh ;

              if VlrTxCrediario.Value > 0 then
                if (ECFAtual <> '') and (PortaECFAtual <> '') and (ECFAtual <> 'SIGTRON FS300') then
                if not ImprimeItemECF(ECFAtual,             //Impressora
                                       PortaECFAtual,        //Porta
                                       '',                   //Numitem
                                       '0',                  //Codigo
                                       'Taxa Crediario',     //Descricao
                                       TributoTaxaCrediario, //Tributo
                                       'UN',                 //Unid
                                       1,                    //Qtde
                                       VlrTxCrediario.Value, //Valor
                                       0,                    //Percdesc
                                       0,                    //Vlrdesco
                                       2) then               //NumDecQuant}
                begin
                  Informa('Problemas ao imprimir o item no ECF !') ;
                  exit ;
                end ;
              //EMITIR FECHAMENTO CUPOM FISCAL
              if (LblValorDescontoAcrescimo.Caption = 'DESCONTO') or
                 ((VlrBonusTroca > 0) or (VlrRetConfig_SldCad > 0)) then
                begin
                  if not FecharCupomFiscal(ECFAtual,
                                           PortaECFAtual,
                                           Ecf_CNFV,
                                           StrToFloat(FormatFloat('###0.00', ValorTotalVenda.Value)),
                                           0, //ACRESCIMO
                                           ValorDescontoAcrescimo.Value +
                                           VlrBonusTroca +
                                           VlrRetConfig_SldCad, //DESCONTO
                                           ValorTroco.Value,
                                           SQLParcelasVistaVendaTemp,
                                           SQLParcelasPrazoVendaTemp,
                                           NomeClienteVenda,
                                           EnderecoClienteVenda,
                                           CidadeClienteVenda,
                                           DocumentoClienteVenda,
                                           DM.CodNextCupom,
                                           LblNomeVendedor.Caption,
                                           LblNomePlano.Caption) then
                    begin
                      Informa('Houveram problemas ao encerrar este cupom !') ;
                      exit ;
                    end ;
                end ;

              if LblValorDescontoAcrescimo.Caption = 'ACR�SCIMO' then
                if not FecharCupomFiscal(ECFAtual,
                                         PortaECFAtual,
                                         Ecf_CNFV,
                                         StrToFloat(FormatFloat('###0.00', ValorTotalVenda.Value)),
                                         ValorDescontoAcrescimo.Value,//ACRESCIMO
                                         0,//DESCONTO
                                         ValorTroco.Value,
                                         SQLParcelasVistaVendaTemp,
                                         SQLParcelasPrazoVendaTemp,
                                         NomeClienteVenda,
                                         EnderecoClienteVenda,
                                         CidadeClienteVenda,
                                         DocumentoClienteVenda,
                                         DM.CodNextCupom,
                                         LblNomeVendedor.Caption,
                                         Trim(LblNomePlano.Caption)) then
                  begin
                    Informa('Houveram problemas ao encerrar este cupom !') ;
                    exit ;
                  end ;

              //EMITIR CONFISS�O DE D�VIDA
              if ((TipoPadrao = 'CRD') or (TipoPadrao = 'CRTF')) and (DM.SQLTerminalAtivoTERMCIMPCONFDIVIDA.Value = 'S') then
              begin
                SQLParcelasVistaVendaTemp.Last;
                if (ECFAtual <> 'BEMATECH MP-20 FI') then
                  if TipoPadrao = 'CRD' then
                    TotNumECF := RetornaTotalizadorNumerarioECF(Ecf_ID, SQLParcelasPrazoVendaTempNUMEICOD.AsString)
                  else
                    if TipoPadrao = 'CRTF' then
                      TotNumECF := RetornaTotalizadorNumerarioECF(Ecf_ID, SQLParcelasVistaVendaTempNUMEICOD.AsString);

                // Retorna Nome Numerario
                if TipoPadrao = 'CRD' then
                  NomeNumerario := SQLParcelasPrazoVendaTempNumerarioLookup.AsString
                else
                  NomeNumerario := SQLParcelasVistaVendaTempNumerarioLookup.AsString;

                if NomeNumerario = '' then
                  NomeNumerario := 'Dinheiro';
                /////////////////////////

                if (TotNumECF <> '') or (ECFAtual = 'BEMATECH MP-20 FI') then
                begin
                  LblInstrucoes.Caption := 'EMITINDO CONFISS�O DE D�VIDA...' ;
                  LblInstrucoes.Refresh ;

                  //ACERTAR VALOR A PRAZO CASO TENHA DIF.ARREDONDAMENTO
                  if (ValorEntrada.Value + ValorPrazo) < ValorTotalVenda.Value then
                    ValorPrazo := ValorPrazo + (ValorTotalVenda.Value - (ValorEntrada.Value + ValorPrazo)) ;
                  if (ValorEntrada.Value + ValorPrazo) > ValorTotalVenda.Value then
                    ValorPrazo := ValorPrazo - ((ValorEntrada.Value + ValorPrazo)-ValorTotalVenda.Value) ;

                  // Alimenta Vari�vel
                  if ValorPrazo <= 0 then
                    ValorPrazo := ValorCartaoFidelizacao;

                  if (ECFAtual <> 'CORISCO CT7000 V3') and (ECFAtual <> 'SWEDAS7000') and (ECFAtual <> 'URANO_1EFC') then
                    begin
                      if TipoPadrao <> 'CRTF' then
                        AbrirCNFV(ECFAtual,
                                  PortaECFAtual,
                                  TotNumECF[1],
                                  Ecf_CNFV[1],
                                  Ecf_ID,
                                  NroCupomFiscal,
                                  SQLParcelasPrazoVendaTempNumerarioLookup.AsString,
                                  ValorPrazo)
                      else
                        AbrirCNFV(ECFAtual,
                                  PortaECFAtual,
                                  TotNumECF[1],
                                  Ecf_CNFV[1],
                                  Ecf_ID,
                                  NroCupomFiscal,
                                  NomeNumerario,
                                  ValorCartaoFidelizacao);

                      if (ECFAtual <> 'SIGTRON FS300') then
                        begin
                          LinhaTextoLivre(ECFAtual, PortaECFAtual, 'DECLARO PARA OS DEVIDOS FINS QUE RECEBI A(S)'   + Chr(10));
                          LinhaTextoLivre(ECFAtual, PortaECFAtual, 'MERCADORIA(S) CONSTANTE(S) NO PRESENTE CUPOM'   + Chr(10));
                          LinhaTextoLivre(ECFAtual, PortaECFAtual, 'FISCAL DE PAGAMENTO(S) PREVISTO(S), BEM COMO'   + Chr(10));
                          LinhaTextoLivre(ECFAtual, PortaECFAtual, 'AUTORIZO A EMISSAO DE CARNE DE COBRANCA  DE-'   + Chr(10));
                          LinhaTextoLivre(ECFAtual, PortaECFAtual, 'CORRENTE DA PRESENTE COMPRA DE R$ ' + FormatFloat('#,##0.00', ValorPrazo) + Chr(10));
                          LinhaTextoLivre(ECFAtual, PortaECFAtual, ' ' + Chr(10));
                          LinhaTextoLivre(ECFAtual, PortaECFAtual, ' ' + Chr(10));
                          LinhaTextoLivre(ECFAtual, PortaECFAtual, 'Ass.________________________________________' + Chr(10));
                          LinhaTextoLivre(ECFAtual, PortaECFAtual, '    ' + LblNomeCliente.Caption  + Chr(10)) ;
                        end
                      else
                        begin
                           LinhaTextoLivre(ECFAtual, PortaECFAtual, FormatFloat('#,##0.00', ValorPrazo) + ' ' + LblNomeCliente.Caption) ;
                        end;

                      // Este tempo foi colocado porque o comando estava sendo enviado antes da impressora terminar
                      //de imprimir, e por isso n�o fechava o CNFV;
                      Sleep(1000);
                      FecharCNFV(ECFAtual, PortaECFAtual) ;
                    end
                  else
                    begin
                      if ECFAtual = 'CORISCO CT7000 V3' then
                        EmiteCNFV_Corisco(ECFAtual,PortaECFAtual,'CONFISSAO DE DIVIDA' + Chr(13),'DECLARO PARA OS DEVIDOS FINS QUE RECEBI A(S)    '  + Chr(10) +
                                                                'MERCADORIA(S) CONSTANTE(S) NO PRESENTE CUPOM    ' + Chr(10) +
                                                                'FISCAL DE PAGAMENTO(S) PREVISTO(S), BEM COMO    ' + Chr(10) +
                                                                'AUTORIZO A EMISSAO DE CARNE DE COBRANCA DECOR-  ' + Chr(10) +
                                                                '-RENTE DA PRESENTE COMPRA DE R$ ' + FormatFloat('#,##0.00', ValorPrazo) + Chr(13) +
                                                                'Ass.____________________________________________' + Chr(10) +
                                                                '    ' + LblNomeCliente.Caption  + Chr(13));
                      if (ECFAtual = 'SWEDAS7000') or (ECFAtual = 'URANO_1EFC') then
                        begin
                          if TipoPadrao <> 'CRTF' then
                            AbrirCNFV(ECFAtual,
                                      PortaECFAtual,
                                      TotNumECF[1],
                                      Ecf_CNFV[1],
                                      Ecf_ID,
                                      NroCupomFiscal,
                                      SQLParcelasPrazoVendaTempNumerarioLookup.AsString,
                                      ValorPrazo)
                          else
                            AbrirCNFV(ECFAtual,
                                      PortaECFAtual,
                                      TotNumECF[1],
                                      Ecf_CNFV[1],
                                      Ecf_ID,
                                      NroCupomFiscal,
                                      NomeNumerario,
                                      ValorCartaoFidelizacao);
                              if ECFAtual = 'URANO_1EFC' then
                                LinhaTextoLivre(ECFAtual,PortaECFAtual,'DECLARO PARA OS DEVIDOS FINS QUE RECEBI A(S)    '+
                                                                       'MERCADORIA(S) CONSTANTE(S) NO PRESENTE          '+
                                                                       'CUPOM FISCAL DE PAGAMENTO(S) PREVISTO(S),       '+
                                                                       'BEM COMO AUTORIZO A EMISSAO DE CARNE DE COBRANCA'+
                                                                       'DECORRENTE DA PRESENTE COMPRA DE R$     ' + FormatFloat('#,##0.00', ValorPrazo) +
                                                                       '________________________________________________'+
                                                                       '      ' + LblNomeCliente.Caption)
                              else
                                LinhaTextoLivre(ECFAtual,PortaECFAtual,'DECLARO QUE RECEBI A(S) MERCADORIA(S)'+
                                                                       'CONSTANTE(S) NO PRESENTE CUPOM'+
                                                                       'FISCAL DE PAGAMENTO(S) PREVISTO(S), BEM COMO'+
                                                                       'AUTORIZO A EMISSAO DE CARNE DE COBRANCA DECOR-'+
                                                                       '-RENTE DA PRESENTE COMPRA DE R$ ' + FormatFloat('#,##0.00', ValorPrazo)+
                                                                       'Ass.____________________________________________'+
                                                                       '    ' + LblNomeCliente.Caption);

                              Sleep(500);
                              FecharCNFV(ECFAtual,PortaECFAtual);
                        end;
                    end;
                end
                else begin
                  Informa('O Indentificador de CNFV do Numer�rio "' + SQLParcelasPrazoVendaTempNumerarioLookup.AsString + '" n�o foi informado, n�o ser� poss�vel emitir a confiss�o de d�vida!') ;
                end ;
              end ;
            end;
            //FIM FECHAMENTO CUPOM
/////////// FINALIZA FECHAMENTO DE CUPOM NA PRE-VENDA ////////////////////

            GravarItensPreVenda ;

            GravarNumerarioAVistaPreVenda ;

            GravarNumerarioAPrazoPreVenda ;

            if not FileExists('SemTransacao.Arq') then
              if DM.DB.InTransaction then
                DM.DB.Commit ;
          end ;
        //* * * * * * * * * * * * * * * * * * * * * * * * *
        //*               GRAVANDO CUPOM                  *
        //* * * * * * * * * * * * * * * * * * * * * * * * *
        if (TerminalModo = 'C') and (not E_Orcamento)  then
          begin
            if DM.SQLTerminalAtivoTERMCCONFFECHCUPOM.Value <> 'N' then
              if not Pergunta('SIM', '* * * CONFIRMA O ENCERRAMENTO DESTA VENDA ? * * *') then
                begin
                  FechandoVenda := false ;
                  exit ;
                end ;

            InformarDadosCheque ;

            if not FileExists('SemTransacao.Arq') then
              if DM.DB.InTransaction then
                DM.DB.Rollback ;

            if not FileExists('SemTransacao.Arq') then
              DM.DB.StartTransaction ;

            //AQUI CHAMA A TELA P/INFORMAR OS DADOS DA VENDA BLUMENSTRAUS
            if DM.SQLConfigVendaCFVECINFDADOVENDA.Value = 'S' then
            begin
              Application.CreateForm(TFormTelaDadosTeleEntrega, FormTelaDadosTeleEntrega);
              if not DM.SQLTeleEntrega.Active then DM.SQLTeleEntrega.Open;
              DM.SQLTeleEntrega.Append;
              FormTelaDadosTeleEntrega.Cliente.Text := LblNomeCliente.Caption;
              FormTelaDadosTeleEntrega.ShowModal ;
            end ;
            if DM.SQLConfigVendaOPESICODCUPOM.AsVariant <> Null then
              if DM.SQLConfigVendaOPESICODCUPOM.AsInteger <= 0 then
                begin
                  Informa('A opera��o de estoque para venda n�o foi configurada, favor verificar!');
                  FechandoVenda := False;
                  FinalizacaodeVenda := False;
                  EstadoFechVendaAnt := '';
                  EstadoFechVenda    := FinalizandoVenda;
                  PreparaEstadoFech(EstadoFechVenda);
                  Exit;
                end;
            GravarCupom ;
            // GRAVAR DADOS DA TELEENTREGA;
            if Application.FindComponent('FormTelaDadosTeleEntrega') <> nil then
              if (FormTelaDadosTeleEntrega.ModalResult = MrOk) and (Dm.SQLTeleEntrega.State in DsEditModes) then
                begin
                  DM.SQLTeleEntrega.FieldByName('CUPOA13ID').AsString := DM.CodNextCupom;
                  DM.SQLTeleEntrega.Post ;
                  try
                    DM.SQLTeleEntrega.ApplyUpdates;
                  except
                    on E:Exception do
                      begin
                        InformaG('Problemas ao Gravar Dados da TeleEntrega, ANOTE O ERRO: ' + E.Message);
                        DM.SQLTeleEntrega.CancelUpdates;
                        DM.SQLTeleEntrega.Close;
                        Application.ProcessMessages;
                      end;
                  end;
                  Application.ProcessMessages;
                  DM.SQLTeleEntrega.Close;
                end
              else
                begin
                  Application.ProcessMessages;
                  DM.SQLTeleEntrega.Close;
                end;

            //IMPRESSAO DO CARNE
            if (TipoPadrao = 'CRD')
              and (Dm.SQLTerminalAtivoTERMCCONFIMPCARNE.AsString = 'S')
              and (FileExists(UPPERCASE(DM.PathAplicacao + 'CARNES.EXE'))) then
              begin
                if Pergunta('SIM','* * * DESEJA IMPRIMIR CARN� ? * * *') then
                begin
                  //O WHILE ABAIXO SERVE PARA GRAVAR O ID DO CUPOM NA TABELA TEMP.DE CARNE
                  //POIS SOMENTE APOS A GRAVACAO DO CUPOM E POSSIVEL SABER O ID E NAO ONDE AS
                  //PARCELAS ESTAO SENDO GERADAS ACIMA
                  TblCarne.First ;
                  while not TblCarne.EOF do
                  begin
                    TblCarne.Edit ;
                    TblCarneNumeroContrato.AsString := DM.CodNextCupom ;
                    TblCarne.Post ;

                    TblCarne.Next ;
                    Application.ProcessMessages;
                  end ;

                  if (Pos('JONAS', FormTelaItens.NomeEmpresa.Caption) > 0) then
                  begin
                    if (Pos('JONAS', FormTelaItens.NomeEmpresa.Caption) > 0) then
                    begin
                      Application.CreateForm(TFormTelaImpressaoCarne, FormTelaImpressaoCarne) ;
                      if DM.SQLTerminalAtivoTERMA60IMPCARNE.Value = '' then
                      begin
                        ShowMessage('O caminho de impress�o n�o foi informado, este carn�s n�o ser� impresso!') ;
                        exit ;
                      end ;

                      FormTelaImpressaoCarne.CarneJonas.PrinterSetup.DocumentName := 'Carn�' ;
                      FormTelaImpressaoCarne.CarneJonas.PrinterSetup.PrinterName  := DM.SQLTerminalAtivoTERMA60IMPCARNE.Value ;
                      FormTelaImpressaoCarne.CarneJonas.Print ;

                      FormTelaImpressaoCarne.Close ;
                    end ;
                  end
                  else begin
                    if FileExists(UPPERCASE(DM.PathAplicacao + 'CARNES.EXE')) then
                      WinExec(Pchar(DM.PathAplicacao + 'CARNES.EXE ' + IntToStr(TerminalAtual) + ' PRN ' + '0'),sw_Show)
                    else
                      Informa('O programa de impress�o de carn� n�o foi encontrado !') ;
                  end ;
                end ;
              end
            else
              begin
                if (TipoPadrao = 'CRD') and (FileExists(UPPERCASE(DM.PathAplicacao + 'CARNES.EXE'))) then
                  begin
                    TblCarne.First ;
                    while not TblCarne.EOF do
                    begin
                      TblCarne.Edit ;
                      TblCarneNumeroContrato.AsString := DM.CodNextCupom ;
                      TblCarne.Post ;
                      TblCarne.Next ;
                      Application.ProcessMessages;
                    end ;

                    if (Pos('JONAS', FormTelaItens.NomeEmpresa.Caption) > 0) then
                    begin
                      if (Pos('JONAS', FormTelaItens.NomeEmpresa.Caption) > 0) then
                      begin
                        Application.CreateForm(TFormTelaImpressaoCarne, FormTelaImpressaoCarne) ;
                        if DM.SQLTerminalAtivoTERMA60IMPCARNE.Value = '' then
                        begin
                          ShowMessage('O caminho de impress�o n�o foi informado, este carn� n�o ser� impresso!') ;
                          exit ;
                        end ;

                        FormTelaImpressaoCarne.CarneJonas.PrinterSetup.DocumentName := 'Carn�' ;
                        FormTelaImpressaoCarne.CarneJonas.PrinterSetup.PrinterName  := DM.SQLTerminalAtivoTERMA60IMPCARNE.Value ;
                        FormTelaImpressaoCarne.CarneJonas.Print ;

                        FormTelaImpressaoCarne.Close ;
                      end ;
                    end
                    else begin
                      if FileExists(UPPERCASE(DM.PathAplicacao + 'CARNES.EXE')) then
                        WinExec(Pchar(DM.PathAplicacao + 'CARNES.EXE ' + IntToStr(TerminalAtual) + ' PRN ' + '0'),sw_Show)
                      else
                        Informa('O programa de impress�o de carn� n�o foi encontrado !') ;
                    end ;
                  end;
              end;
            //INICIO FECHAMENTO CUPOM FISCAL
            if (ECFAtual <> '') and (PortaECFAtual <> '') then
            begin
              LblInstrucoes.Caption := 'INICIANDO ENCERRAMENTO CUPOM FISCAL...' ;
              LblInstrucoes.Refresh ;

              {VERIFICANDO SE O CR�DITO DO CART�O FOI APROVADO}
              if TemNumerarioCartaoPrazo or TemNumerarioCartaoVista then
                if not VerificaCartaoCredito then
                  begin
                    TemNumerarioCartaoPrazo := False;
                    TemNumerarioCartaoVista := False;
                    Application.Restore;
                    Exit;
                  end;

              {SE FOI APROVADO O CARTAO DE CREDITO E POSSUI TAXA DE CREDIARIO A
               SER IMPRESSA}
              if VlrTxCrediario.Value > 0 then
                if (ECFAtual <> '') and (PortaECFAtual <> '') and (ECFAtual <> 'SIGTRON FS300') then
                  if not ImprimeItemECF( ECFAtual,             //Impressora
                                         PortaECFAtual,        //Porta
                                         '',                   //Numitem
                                         '0',                  //Codigo
                                         'Taxa Crediario',     //Descricao
                                         TributoTaxaCrediario, //Tributo
                                         'UN',                 //Unid
                                         1,                    //Qtde
                                         VlrTxCrediario.Value, //Valor
                                         0,                    //Percdesc
                                         0,                    //Vlrdesco
                                         2) then               //NumDecQuant}
                    begin
                      Informa('Problemas ao imprimir o item no ECF !');
                      exit;
                    end;

              //EMITIR FECHAMENTO CUPOM FISCAL
              FechouCupomFiscal   := False;
              EnviouNumerariosECF := False;
              repeat
                if (LblValorDescontoAcrescimo.Caption = 'DESCONTO') or
                   ((VlrBonusTroca > 0) or (VlrRetConfig_SldCad > 0)) then
                  begin
                    if not FecharCupomFiscal(ECFAtual,
                                             PortaECFAtual,
                                             Ecf_CNFV,
                                             StrToFloat(FormatFloat('###0.00', ValorTotalVenda.Value)),
                                             0, //ACRESCIMO
                                             ValorDescontoAcrescimo.Value +
                                             VlrBonusTroca +
                                             VlrRetConfig_SldCad, //DESCONTO
                                             ValorTroco.Value,
                                             SQLParcelasVistaVendaTemp,
                                             SQLParcelasPrazoVendaTemp,
                                             NomeClienteVenda,
                                             EnderecoClienteVenda,
                                             CidadeClienteVenda,
                                             DocumentoClienteVenda,
                                             DM.CodNextCupom,
                                             LblNomeVendedor.Caption,
                                             Trim(LblNomePlano.Caption)) then
                      begin
                        if Pergunta('SIM','A impressora fiscal n�o responde. Deseja tentar novamente?') then
                          FechouCupomFiscal := False
                        else
                          Break;
                      end
                    else
                      FechouCupomFiscal := True;
                  end;

                if LblValorDescontoAcrescimo.Caption = 'ACR�SCIMO' then
                  if not FecharCupomFiscal(ECFAtual,
                                           PortaECFAtual,
                                           Ecf_CNFV,
                                           StrToFloat(FormatFloat('###0.00', ValorTotalVenda.Value)),
                                           ValorDescontoAcrescimo.Value,//ACRESCIMO
                                           0,//DESCONTO
                                           ValorTroco.Value,
                                           SQLParcelasVistaVendaTemp,
                                           SQLParcelasPrazoVendaTemp,
                                           NomeClienteVenda,
                                           EnderecoClienteVenda,
                                           CidadeClienteVenda,
                                           DocumentoClienteVenda,
                                           DM.CodNextCupom,
                                           LblNomeVendedor.Caption,
                                           Trim(LblNomePlano.Caption)) then
                    begin
                      if Pergunta('SIM','A impressora fiscal n�o responde. Deseja tentar novamente?') then
                        FechouCupomFiscal := False
                      else
                        Break;
                    end
                  else
                    FechouCupomFiscal := True;
               until
                 FechouCupomFiscal;
               if not FechouCupomFiscal then
                 begin
                   if RetornoCartao.TransacaoAutorizada then
                     begin
                       Msg := 'A Transa��o de Transfer�ncia Eletr�nica de Fundos(TEF) foi cancelada!' + #13 + #13 +
                              'Rede --> ' + RetornoCartao.NomeRede + #13 +
                              'Documento(NSU) --> ' + RetornoCartao.NroTransacao + #13;
                       if RetornoCartao.ValorTotal <> ' ' then
                         Msg := Msg + 'Valor --> ' + FormatFloat('#,##0.00',StrToFloat(RetornoCartao.ValorTotal)/ 100);
                       ApagaDadosTransacaoAtual(RetornoCartao.NroTransacao);
                       Application.MessageBox(PChar(Msg),'Aten��o',MB_OK + MB_SYSTEMMODAL + MB_ICONINFORMATION + MB_SETFOREGROUND);
                       Confirma(RetornoCartao.NomeRede,RetornoCartao.NroTransacao,RetornoCartao.Finalizacao,False);
                     end;
                     FechandoVenda := False;
                     FinalizacaodeVenda := False;
                     EstadoFechVendaAnt := '';
                     EstadoFechVenda    := FinalizandoVenda;
                     PreparaEstadoFech(EstadoFechVenda);
                     Application.Restore;
                     Exit;
                 end;
              //EMITIR CONFISS�O DE D�VIDA
              if ((TipoPadrao = 'CRD') or (TipoPadrao = 'CRTF')) and (DM.SQLTerminalAtivoTERMCIMPCONFDIVIDA.Value = 'S') then
              begin
                SQLParcelasVistaVendaTemp.Last;
                if (ECFAtual <> 'BEMATECH MP-20 FI') then
                  if TipoPadrao = 'CRD' then
                    TotNumECF := RetornaTotalizadorNumerarioECF(Ecf_ID, SQLParcelasPrazoVendaTempNUMEICOD.AsString)
                  else
                    if TipoPadrao = 'CRTF' then
                      TotNumECF := RetornaTotalizadorNumerarioECF(Ecf_ID, SQLParcelasVistaVendaTempNUMEICOD.AsString);
                // Retorna Nome Numerario
                if TipoPadrao = 'CRD' then
                  NomeNumerario := SQLParcelasPrazoVendaTempNumerarioLookup.AsString
                else
                  NomeNumerario := SQLParcelasVistaVendaTempNumerarioLookup.AsString;

                if NomeNumerario = '' then
                  NomeNumerario := 'Dinheiro';
                /////////////////////////

                if (TotNumECF <> '') or (ECFAtual = 'BEMATECH MP-20 FI') then
                begin
                  LblInstrucoes.Caption := 'EMITINDO CONFISS�O DE D�VIDA...' ;
                  LblInstrucoes.Refresh ;

                  //ACERTAR VALOR A PRAZO CASO TENHA DIF.ARREDONDAMENTO
                  if (ValorEntrada.Value + ValorPrazo) < ValorTotalVenda.Value then
                    ValorPrazo := ValorPrazo + (ValorTotalVenda.Value - (ValorEntrada.Value + ValorPrazo)) ;
                  if (ValorEntrada.Value + ValorPrazo) > ValorTotalVenda.Value then
                    ValorPrazo := ValorPrazo - ((ValorEntrada.Value + ValorPrazo)-ValorTotalVenda.Value) ;

                  // Alimenta Vari�vel
                  if ValorPrazo <= 0 then
                    ValorPrazo := ValorCartaoFidelizacao;

/////////////////////////////////////
                  if (ECFAtual <> 'CORISCO CT7000 V3') and (ECFAtual <> 'SWEDAS7000') and (ECFAtual <> 'URANO_1EFC') then
                    begin
                      if TipoPadrao <> 'CRTF' then
                        AbrirCNFV(ECFAtual,
                                  PortaECFAtual,
                                  TotNumECF[1],
                                  Ecf_CNFV[1],
                                  Ecf_ID,
                                  NroCupomFiscal,
                                  SQLParcelasPrazoVendaTempNumerarioLookup.AsString,
                                  ValorPrazo)
                      else
                        AbrirCNFV(ECFAtual,
                                  PortaECFAtual,
                                  TotNumECF[1],
                                  Ecf_CNFV[1],
                                  Ecf_ID,
                                  NroCupomFiscal,
                                  NomeNumerario,
                                  ValorCartaoFidelizacao);

                      if (ECFAtual <> 'SIGTRON FS300') then
                        begin
                          LinhaTextoLivre(ECFAtual, PortaECFAtual, 'DECLARO PARA OS DEVIDOS FINS QUE RECEBI A(S)'   + Chr(10));
                          LinhaTextoLivre(ECFAtual, PortaECFAtual, 'MERCADORIA(S) CONSTANTE(S) NO PRESENTE CUPOM'   + Chr(10));
                          LinhaTextoLivre(ECFAtual, PortaECFAtual, 'FISCAL DE PAGAMENTO(S) PREVISTO(S), BEM COMO'   + Chr(10));
                          LinhaTextoLivre(ECFAtual, PortaECFAtual, 'AUTORIZO A EMISSAO DE CARNE DE COBRANCA  DE-'   + Chr(10));
                          LinhaTextoLivre(ECFAtual, PortaECFAtual, 'CORRENTE DA PRESENTE COMPRA DE R$ ' + FormatFloat('#,##0.00', ValorPrazo) + Chr(10));
                          LinhaTextoLivre(ECFAtual, PortaECFAtual, ' ' + Chr(10));
                          LinhaTextoLivre(ECFAtual, PortaECFAtual, ' ' + Chr(10));
                          LinhaTextoLivre(ECFAtual, PortaECFAtual, 'Ass.________________________________________' + Chr(10));
                          LinhaTextoLivre(ECFAtual, PortaECFAtual, '    ' + LblNomeCliente.Caption  + Chr(10)) ;
                        end
                      else
                        begin
                           LinhaTextoLivre(ECFAtual, PortaECFAtual, FormatFloat('#,##0.00', ValorTotalVenda.Value) + ' ' + LblNomeCliente.Caption) ;
                        end;

                      // Este tempo foi colocado porque o comando estava sendo enviado antes da impressora terminar
                      //de imprimir, e por isso n�o fechava o CNFV;
                      Sleep(1000);
                      FecharCNFV(ECFAtual, PortaECFAtual) ;
                    end
                  else
                    begin
                      if ECFAtual = 'CORISCO CT7000 V3' then
                        EmiteCNFV_Corisco(ECFAtual,PortaECFAtual,'CONFISSAO DE DIVIDA' + Chr(13),'DECLARO PARA OS DEVIDOS FINS QUE RECEBI A(S)    '  + Chr(10) +
                                                                'MERCADORIA(S) CONSTANTE(S) NO PRESENTE CUPOM    ' + Chr(10) +
                                                                'FISCAL DE PAGAMENTO(S) PREVISTO(S), BEM COMO    ' + Chr(10) +
                                                                'AUTORIZO A EMISSAO DE CARNE DE COBRANCA DECOR-  ' + Chr(10) +
                                                                '-RENTE DA PRESENTE COMPRA DE R$ ' + FormatFloat('#,##0.00', ValorPrazo) + Chr(13) +
                                                                'Ass.____________________________________________' + Chr(10) +
                                                                '    ' + LblNomeCliente.Caption  + Chr(13));
                      if (ECFAtual = 'SWEDAS7000') or (ECFAtual = 'URANO_1EFC') then
                        begin
                          if TipoPadrao <> 'CRTF' then
                            AbrirCNFV(ECFAtual,
                                      PortaECFAtual,
                                      TotNumECF[1],
                                      Ecf_CNFV[1],
                                      Ecf_ID,
                                      NroCupomFiscal,
                                      SQLParcelasPrazoVendaTempNumerarioLookup.AsString,
                                      ValorPrazo)
                          else
                            AbrirCNFV(ECFAtual,
                                      PortaECFAtual,
                                      TotNumECF[1],
                                      Ecf_CNFV[1],
                                      Ecf_ID,
                                      NroCupomFiscal,
                                      NomeNumerario,
                                      ValorCartaoFidelizacao);

                              if ECFAtual = 'URANO_1EFC' then
                                LinhaTextoLivre(ECFAtual,PortaECFAtual,'DECLARO PARA OS DEVIDOS FINS QUE RECEBI A(S)    '+
                                                                       'MERCADORIA(S) CONSTANTE(S) NO PRESENTE          '+
                                                                       'CUPOM FISCAL DE PAGAMENTO(S) PREVISTO(S),       '+
                                                                       'BEM COMO AUTORIZO A EMISSAO DE CARNE DE COBRANCA'+
                                                                       'DECORRENTE DA PRESENTE COMPRA DE R$     ' + FormatFloat('#,##0.00', ValorPrazo) +
                                                                       '________________________________________________'+
                                                                       '      ' + LblNomeCliente.Caption)
                              else
                                LinhaTextoLivre(ECFAtual,PortaECFAtual,'DECLARO QUE RECEBI A(S) MERCADORIA(S)'+
                                                                       'CONSTANTE(S) NO PRESENTE CUPOM'+
                                                                       'FISCAL DE PAGAMENTO(S) PREVISTO(S), BEM COMO'+
                                                                       'AUTORIZO A EMISSAO DE CARNE DE COBRANCA DECOR-'+
                                                                       '-RENTE DA PRESENTE COMPRA DE R$ ' + FormatFloat('#,##0.00', ValorPrazo)+
                                                                       'Ass.____________________________________________'+
                                                                       '    ' + LblNomeCliente.Caption);
                              Sleep(500);
                              FecharCNFV(ECFAtual,PortaECFAtual);
                        end;
                    end;
                end
                else begin
                  Informa('O Indentificador de CNFV do Numer�rio "' + SQLParcelasPrazoVendaTempNumerarioLookup.AsString + '" n�o foi informado, n�o ser� poss�vel emitir a confiss�o de d�vida!') ;
                end;
              end;
              LblInstrucoes.Caption := 'FINALIZANDO ENCERRAMENTO DO CUPOM FISCAL...';
              LblInstrucoes.Refresh ;
            end;
            //FIM FECHAMENTO CUPOM
            if (ECFAtual = '') and (PortaECFAtual = '') and ((TemNumerarioCartaoPrazo) or (TemNumerarioCartaoVista))then
              if not VerificaCartaoCredito then
                begin
                  TemNumerarioCartaoPrazo := False;
                  TemNumerarioCartaoVista := False;
                  Application.Restore;
                  Exit;
                end;
            //IMPRIMIR AUTORIZACAO DE CARTAO
            if (AutorizouCartao) then
              begin
                ImprimeAutorizacaoStarFiche(TotalCartao,NomeNumerarioCartao,NroViasTEF);
              end;

            GravarItensCupom ;

            GravarItensRetorno ;

            GravarItensDevolucao ;

            GravarMontanteCaixa ;

            GravarNumerarioAVistaCupom ;

            GravarNumerarioAPrazoCupom ;

            GravarCaixaPrazo ;

            GravarCadernoCliente ;

            AtualizaCupomOrigemTroca ;

            if DM.SQLConfigVendaCFVECUSADEBCREDCLI.Value = 'S' then
              begin
                LblInstrucoes.Caption := 'GERANDO IMPRESS�O DO PEDIDO...' ;
                LblInstrucoes.Refresh ;
                while true do
                  begin
                    NumCopias := InputBox('Nro.Vias Pedido', 'Informe o nro. de vias que deseja imprimir', '1');
                    try
                      NumCopias := IntToStr(StrToInt(NumCopias)) ;
                      Break ;
                    except
                      Informa('Nro.de c�pias inv�lido') ;
                    end ;
                  end ;
                GravarTabelaTempPedidoRetorno(DM.CodNextCupom, StrToInt(NumCopias)) ;
              end ;

            //IMPRIMIR PRE-VENDA - DENTRO DESTA ROTINA TEM A CHAMADA DA TELA
            if (DM.SQLTerminalAtivoTERMCIMPPREVENDA.AsString = 'S') or
               (DM.SQLConfigVendaCFVECINFDADOVENDA.AsString = 'S')  then
              GravarTabelaTempImpPreVendaDeCupom(DM.CodNextCupom, SQLParcelasVistaVendaTemp, SQLParcelasPrazoVendaTemp, DM.SQLCup, DM.SQLCupomIt);

            //IMPRIMIR DADOS VENDA
            if (DM.SQLConfigVendaCFVECINFDADOVENDA.Value = 'S') then
              begin
                Application.CreateForm(TFormTelaImpressaoDadosVenda, FormTelaImpressaoDadosVenda) ;
                FormTelaImpressaoDadosVenda.ImprimeClick(Nil) ;
              end ;
            if (ECFAtual = '') and (ImpNaoFiscalAtual <> '') and
               ((TipoPadrao = 'CRD') or (TipoPadrao = 'CRTF')) and (DM.SQLTerminalAtivoTERMCIMPCONFDIVIDA.Value = 'S') then
              begin
                LblInstrucoes.Caption := 'EMITINDO CONFISS�O DE D�VIDA...' ;
                LblInstrucoes.Refresh ;
                // Alimenta Vari�vel
                if ValorPrazo <= 0 then
                  ValorPrazo := ValorCartaoFidelizacao;

                if not ImprimeConfissaoDividaNAOFISCAL(ImpNaoFiscalAtual,PortaImpNaoFiscalAtual) then
                  Informa('Problemas ao Imprimir a Confiss�o de D�vida, verifique a impressora!');
              end;
            //**** LAN�AMENTO DO CAIXA REF.TROCO ****
            {if ValorTroco.Value > 0 then
            begin
              GravaMovimentoCaixa( DM.SQLTotalizadorCaixa,
                                   DM.SQLTotalizar,
                                   EmpresaPadrao,//WEMPRICOD
                                   IntToStr(TerminalAtual),//WTERMICOD
                                   FormatDateTime('mm/dd/yyyy', Now),//WMVCIXDMOV
                                   'Null',//WNUMEICOD
                                   'Null',//WOPCXICOD
                                   IntToStr(DM.UsuarioAtual),//WUSUAICOD
                                   DM.CodNextCupom,//WMVCIXA15DOCORIG
                                   ValorTroco.Value,//WMOVICAIXN2VLR
                                   0,//WMOVICAIXN2VLRJURO
                                   0,//WMOVICAIXN2VLRMULTA
                                   0,//WMOVICAIXN2VLRDEC
                                   'Null',//WMOVICAIXA6NUMCUPOM
                                   'C',//WTIPO
                                   'TROCO(-)',
                                   'N',
                                   '');//WMVCXA255HIST
            end ;}

            FinalizacaodeVenda := false ;

            if not FileExists('SemTransacao.Arq') then
              if DM.DB.InTransaction then
                DM.DB.Commit ;

            //IMPRESSAO DO CARNE COM ITENS /////////////////
            if (TipoPadrao = 'CRD') and (FileExists(UPPERCASE('CARNESITEM.EXE'))) then
              begin
                if Pergunta('SIM','* * * DESEJA IMPRIMIR CARN� COM OS ITENS DA VENDA? * * *') then
                  begin
                    //O WHILE ABAIXO SERVE PARA GRAVAR O ID DO CUPOM NA TABELA TEMP.DE CARNE
                    //POIS SOMENTE APOS A GRAVACAO DO CUPOM E POSSIVEL SABER O ID E NAO ONDE AS
                    //PARCELAS ESTAO SENDO GERADAS ACIMA
                    TblCarne.Open;
                    TblCarne.First;
                    while not TblCarne.EOF do
                      begin
                        TblCarne.Edit;
                        TblCarneNumeroContrato.AsString := DM.CodNextCupom;
                        TblCarne.Post;

                        TblCarne.Next;
                        Application.ProcessMessages;
                      end ;
                    WinExec(Pchar('CARNESITEM.EXE ' + IntToStr(TerminalAtual) + ' PRN ' + '0'),sw_Show);
                  end;
              end;
            //////////////////////////////// fim impressao do carne com itens ///////
          end ;

        if (TerminalModo = 'P') and (E_Orcamento)  then
          begin
            if DM.SQLTerminalAtivoTERMCCONFFECHCUPOM.Value <> 'N' then
              if not Pergunta('SIM', '* * * CONFIRMA O ENCERRAMENTO DESTE OR�AMENTO ? * * *') then
                Exit ;

            Application.CreateForm(TFormTelaFechamentoOrcamento, FormTelaFechamentoOrcamento) ;
            FormTelaFechamentoOrcamento.ShowModal ;

            {if not FileExists('SemTransacao.Arq') then
              if DM.DB.InTransaction then
                DM.DB.Rollback ;}

            if not FileExists('SemTransacao.Arq') then
              DM.DB.StartTransaction;

            DeleteFile(DM.DBRel.Directory + 'PedidoCab*.*');

            GravarOrcamento;
            GravarItensOrcamento;

            if DM.DB.InTransaction then
              DM.DB.Commit;

            if E_Orcamento then
              begin
                if (DM.SQLTerminalAtivoTERMACTIPOIMPPEDORC.AsString <> '') then
                  begin
                    LblInstrucoes.Caption := 'PREPARANDO IMPRESS�O DO OR�AMENTO ' + DM.CodNextOrc;
                    LblInstrucoes.Refresh;
                    Case DM.SQLTerminalAtivoTERMACTIPOIMPPEDORC.AsString[1] of
                      '0' : begin
                              // Prepara Impress�o de Pedido/Or�amento
                              // Padrao 80 Colunas bobina;
                              GravarTabelaTempImpOrcamento(DM.CodNextOrc,DM.SQLPedidoOrcamento,DM.SQLPedidoOrcamentoItem);
                              Application.CreateForm(TFormTelaImpressaoPreVenda, FormTelaImpressaoPreVenda);
                              FormTelaImpressaoPreVenda.ImprimeClick(Nil);
                            end;
                      '1' : begin
                              // Padr�o Matricial/Deskjet/Laser
                              if DM.SQLConfigGeralCFGEA255PATHREPORT.AsString <> '' then
                                begin
                                  GeraArquivoExternoParaImpOrcamento(DM.CodNextOrc,SQLParcelasPrazoVendaTempVALORVENCTO.FieldName,SQLParcelasPrazoVendaTempDATAVENCTO.FieldName,DM.SQLPedidoOrcamento,DM.SQLPedidoOrcamentoItem,SQLParcelasVistaVendaTemp,SQLParcelasPrazoVendaTemp);
                                  DM.Report.DiscardSavedData    := True;
                                  DM.Report.ReportName          := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Pedido Orcamento.rpt';
                                  DM.Report.ReportTitle         := 'Or�amento';
                                  DM.Report.WindowStyle.Title   := 'Or�amento';
                                  if Dm.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString <> '' then
                                    begin
                                      DM.Report.Output          := toPrinter;
                                      DM.Report.Printer.Name    := Dm.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString;
                                    end
                                  else
                                    DM.Report.Output            := toWindow;

                                  DM.Report.Execute;
                                end
                              else
                                Informa('O pedido/or�amento padr�o n�o foi encontrado, verifique suas configura��es!');
                            end;
                      '2' : begin
                              // Personalizado
                              if FileExists(DM.SQLTerminalAtivoTERMTPATHPEDORC.AsString) then
                                begin
                                  GeraArquivoExternoParaImpOrcamento(DM.CodNextOrc,SQLParcelasPrazoVendaTempVALORVENCTO.FieldName,SQLParcelasPrazoVendaTempDATAVENCTO.FieldName,DM.SQLPedidoOrcamento,DM.SQLPedidoOrcamentoItem,SQLParcelasVistaVendaTemp,SQLParcelasPrazoVendaTemp);
                                  DM.Report.DiscardSavedData    := True;
                                  DM.Report.ReportName          := DM.SQLTerminalAtivoTERMTPATHPEDORC.Value;
                                  DM.Report.ReportTitle         := 'Or�amento';
                                  DM.Report.WindowStyle.Title   := 'Or�amento';
                                  if Dm.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString <> '' then
                                    begin
                                      DM.Report.Output          := toPrinter;
                                      DM.Report.Printer.Name    := Dm.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString;
                                    end
                                  else
                                    DM.Report.Output            := toWindow;

                                  DM.Report.Execute;
                                end
                              else
                                Informa('O arquivo para impress�o de pedido/or�amento personalizado n�o foi encontrado, verifique suas consigura��es!');
                            end;
                      '3' : begin
                              // Arquivo Externo .exe
                              if FileExists('PedidoVenda.exe') then
                                begin
                                  WinExec(PChar('PedidoVenda.exe '+ DM.CodNextOrc + ' PDV'),SW_SHOW);
                                end
                              else
                                begin
                                  Informa('Voc� configurou o sistema para imprimir pedido/or�amento com arquivo externo, mas o arquivo n�o foi encontrado favor verificar!');
                                end;
                            end;
                    end;
                  end
                else
                  begin
                    Informa('Este or�amento n�o ser� impresso porque as configura��es est�o incompletas!');
                  end;
              end;
          end;
        if (PedidosImportados <> '') and (not AtualizarPedidos)  then
          begin
            while PedidosImportados <> '' do
              begin
                LblInstrucoes.Caption := 'ATUALIZANDO STATUS PR�-VENDA...';
                LblInstrucoes.Refresh ;
                TermCod := Copy(PedidosImportados, 1, Pos('-',PedidosImportados)-1);
                PrvCod  := Copy(PedidosImportados, Pos('-',PedidosImportados)+1, 6);

                Delete(PedidosImportados,1,Pos('-',PedidosImportados)+7);

                DM.SQLTemplate.Close;
                DM.SQLTemplate.SQL.Clear;
                DM.SQLTemplate.SQL.Add('update PREVENDA');
                DM.SQLTemplate.SQL.Add('set PRVDCIMPORT = "S"');
                DM.SQLTemplate.SQL.Add('where');
                DM.SQLTemplate.SQL.Add('TERMICOD = ' + TermCod + ' and ');
                DM.SQLTemplate.SQL.Add('PRVDICOD = ' + PrvCod);
                DM.SQLTemplate.ExecSQL;
              end;
          end;
        if (PedidosImportados <> '') and (AtualizarPedidos) then
          begin
            while PedidosImportados <> '' do
              begin
                LblInstrucoes.Caption := 'ATUALIZANDO STATUS PEDIDOS/OR�AMENTOS...';
                LblInstrucoes.Refresh;
                if Pos(',',PedidosImportados) > 0 then
                  begin
                    IDPedido := Copy(PedidosImportados, 1, Pos(',',PedidosImportados)-1);
                    Delete(PedidosImportados,1,Pos(',',PedidosImportados))
                  end
                else
                  begin
                    IDPedido := Copy(PedidosImportados, 1, Length(PedidosImportados));
                    Delete(PedidosImportados,1,Length(PedidosImportados));
                  end;

                DM.SQLTemplate.Close;
                DM.SQLTemplate.SQL.Clear;
                DM.SQLTemplate.SQL.Add('update PEDIDOVENDA');
                DM.SQLTemplate.SQL.Add('set PDVDCIMPORTADO = "S"');
                DM.SQLTemplate.SQL.Add('where');
                DM.SQLTemplate.SQL.Add('PDVDA13ID = "' + IDPedido + '"');
                DM.SQLTemplate.ExecSQL;
              end;
          end;
        PedidosImportados := '';
        //AUTENTICAR ENTRADA DE VENDA A PRAZO
        if (DM.SQLTerminalAtivoTERMCAUTENTRFIMCUP.Value = 'S') and (TipoPadrao = 'CRD') then
          begin
            ValorEntradaAut := 0;
            SQLCupomNumerarioAut.Close;
            SQLCupomNumerarioAut.MacroByName('MFiltro').Value := 'CUPOA13ID = "' + DM.CodNextCupom +
                                                                 '" and CPNMCAUTENT is null';
            SQLCupomNumerarioAut.Open;
            if not SQLCupomNumerarioAut.EOF then
              while not SQLCupomNumerarioAut.Eof do
                begin
                  ValorEntradaAut := ValorEntradaAut + SQLCupomNumerarioAutCPNMN2VLR.Value;
                  SQLCupomNumerarioAut.Next;
                end ;
            //ENVIAR AUTENTICACAO PARA O ECF
            if (ValorEntradaAut > 0) and (ECFAtual <> '') and (PortaECFAtual <> '')
              and (ECFAtual <> 'SCHALTER SCF_ECF')then //ESTE TESTE EXISTE PQ NA SCHALTER A AUTENT.
                                                      //TEM QUE SER FEITA ANTES DE FECHAR O CUMPOM.
              Autenticacao( ECFAtual,       //Impressora
                            PortaECFAtual,  //Porta,
                            Ecf_CNFNV,      //Identificador
                            Ecf_ID,         //Ecf_ID
                            DM.CodNextCupom,//Documento
                            '0',            //Parcela
                            'Entrada',
                            ValorEntradaAut,//Valor
                            SQLCupomNumerarioAutNUMEICOD.Value);//NumerarioCod

            SQLCupomNumerarioAut.First ;
            while not SQLCupomNumerarioAut.Eof do
              begin
                SQLCupomNumerarioAut.Edit ;
                SQLCupomNumerarioAutCPNMCAUTENT.Value := 'S' ;
                SQLCupomNumerarioAut.Post ;
                SQLCupomNumerarioAut.Next ;
              end ;
          end ;
        //LIMPAR TABELA TEMPORARIA ITENS
        LblInstrucoes.Caption := 'LIMPANDO ITENS TEMPOR�RIOS...' ;
        LblInstrucoes.Refresh ;
        FormTelaItens.SQLItensVendaTemp.Close ;
        DM.SQLTemplate.Close ;
        DM.SQLTemplate.SQL.Clear ;
        DM.SQLTemplate.SQL.Add('delete from ITENSVENDATEMP') ;
        DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
        DM.SQLTemplate.ExecSQL ;
        FormTelaItens.SQLItensVendaTemp.Open ;

        FormTelaItens.EstadoPDVChk := 'AguardandoNovaVenda' ;
        FormTelaItens.PreparaEstadoBalcao(FormTelaItens.EstadoPDVChk) ;

        if (TerminalModo = 'P') and (DM.SQLTerminalAtivoTERMCMOSTRAIDCUPOM.AsString = 'S') and (not E_Orcamento) then
          begin
            LblInstrucoes.Caption := 'PR�-VENDA FINALIZADA COM SUCESSO !' ;
            LblInstrucoes.Refresh ;
            InformaG('ANOTE O C�DIGO DESTA PR�-VENDA :' + #13 + '* * * [ ' + IntToStr(TerminalAtual) + '.' +  IntToStr(CodNextPreVenda) + ' ] * * *') ;
          end ;
        if (TerminalModo = 'C') and (DM.SQLTerminalAtivoTERMCMOSTRAIDCUPOM.AsString = 'S') and (not E_Orcamento) then
          begin
            LblInstrucoes.Caption := 'CUPOM FINALIZADO COM SUCESSO !' ;
            LblInstrucoes.Refresh ;
            InformaG('ANOTE O C�DIGO DO CUPOM :' + #13 + '* * * [ ' + DM.CodNextCupom + ' ] * * *') ;
          end ;

        if (DM.SQLTerminalAtivoTERMCMOSTRAIDCUPOM.AsString = 'S') and (E_Orcamento) then
          begin
            LblInstrucoes.Caption := 'OR�AMENTO FINALIZADO COM SUCESSO !' ;
            LblInstrucoes.Refresh ;
            InformaG('ANOTE O C�DIGO DO OR�AMENTO :' + #13 + '* * * [ ' + DM.CodNextOrc + ' ] * * *') ;
          end ;

        if (NroCupomFiscal = '') and (ECFAtual <> '') and (not E_Orcamento) then
          begin
            InformaG('O N�MERO DO CUPOM FISCAL N�O SER� REGISTRADO NESTA VENDA, FAVOR INFORMAR MANUALMENTE NA MANUTEN��O DE CUPOM!' +#13+ 'ID CUPOM : [ ' + DM.CodNextCupom + ' ]');
          end ;

        // IMPRIME AUTORIZACAO DO CARTAO DE CREDITO
        if RetornoCartao.TransacaoAutorizada then
          begin
            LockWindowUpdate(FormTelaFechamentoVenda.Handle);
            DadosImpressora.ECFAtual := ECFAtual;
            DadosImpressora.PortaECFAtual := PortaECFAtual;
            DadosImpressora.TotNumECFImp := RetornaTotalizadorNumerarioECF(Ecf_ID,NumerarioCartao);
            DadosImpressora.Ecf_CNFV := Ecf_CNFV;
            DadosImpressora.Ecf_ID := Ecf_ID;
            DadosImpressora.NroCupomFiscal := NroCupomFiscal;
            DadosImpressora.DescricaoNumerario := NomeNumerarioCartao;
            DadosImpressora.ValorImp := TotalCartao;
            // ENVIAR O NRO DE VIAS QUE DESEJA IMPRIMIR
            if RetornoCartao.QtdeLinhas > 0 then
              begin
                if not ImprimeRetorno(RetornoCartao,DadosImpressora,NroViasTEF,False) then
                  begin
                    CancelarCupomFiscal(ECFAtual,PortaECFAtual);
                    CancelamentoCupom(DM.CodNextCupom,IntToStr(UsuarioCorrente));
                  end;
              end
            else
              begin
                if (Copy(TipoPadrao,1,3) = 'CHQ') and (RetornoCartao.TransacaoAutorizada) then
                  begin
                    Application.Restore;
                    ApagaDadosTransacaoAtual(RetornoCartao.NroTransacao);
                    Informa(RetornoCartao.RetornoOperador);
                  end;
              end;
          end;
        LockWindowUpdate(0);
        //FECHAR TELA FECHAMENTO VENDA
        Close ;
      end ;
    end ;
end;

procedure TFormTelaFechamentoVenda.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  NomeClie : string ;
begin
  case Key of
     VK_F1:begin
             if (FinalizacaodeVenda) and
                (not FileExists('FinalizacaodeVenda.arq')) then exit;

             Application.CreateForm(TFormTelaTeclasAtalhoTelaFechamentoVenda, FormTelaTeclasAtalhoTelaFechamentoVenda);
             FormTelaTeclasAtalhoTelaFechamentoVenda.ShowModal;
           end;
     VK_F2:begin
             if (FinalizacaodeVenda) and
                (not FileExists('FinalizacaodeVenda.arq')) then exit;
           end;
     VK_F3:begin
             if (FinalizacaodeVenda) and
                (not FileExists('FinalizacaodeVenda.arq')) then exit;
           end;
     VK_F4:begin
             if (FinalizacaodeVenda) and
                (not FileExists('FinalizacaodeVenda.arq')) then exit;
           end;
     VK_F5:begin
             if (FinalizacaodeVenda) and
                (not FileExists('FinalizacaodeVenda.arq')) then exit;

             if (Key = VK_F5) and (Dm.SQLTerminalAtivoTERMCINFDADOCLIPAD.AsVariant <> 'S')then
               begin
                  Application.CreateForm(TFormTelaDadosCliente,FormTelaDadosCliente);
                  FormTelaDadosCliente.ShowModal;
                  DadosClienteVenda     := 'DADOS DA VENDA :' + ' ' +
                                           'CLIENTE : ' + NomeClienteVenda + ' -> ' +
                                           'CPF/CGC : ' + DocumentoClienteVenda + ' -> ' +
                                           'ENDERE�O : ' + EnderecoClienteVenda + ' -> ' +
                                           'CIDADE : ' + CidadeClienteVenda;
               end;
           end;
     VK_F6:begin
             if (FinalizacaodeVenda) and
                (not FileExists('FinalizacaodeVenda.arq')) then exit;
           end;
     VK_F7:begin
             if (FinalizacaodeVenda) and
                (not FileExists('FinalizacaodeVenda.arq')) then exit;
           end;
     VK_F8:begin
             if (FinalizacaodeVenda) and
                (not FileExists('FinalizacaodeVenda.arq')) then exit;
           end;
     VK_F9:begin
             if (FinalizacaodeVenda) and
                (not FileExists('FinalizacaodeVenda.arq')) then exit;
           end;
    VK_F10:begin
             if (FinalizacaodeVenda) and
                (not FileExists('FinalizacaodeVenda.arq')) then exit;
           end;
    VK_F11:begin
             if (FinalizacaodeVenda) and (not FileExists('FinalizacaodeVenda.arq')) then exit;

             //MouseShowCursor(True) ;


             // Esta rotina s� criava o cadastro de cliente se n�o havia nenhum cliente selecionado;

           {   if (Length(ClienteVenda) >=10) then
               begin
                 if Length(ClienteVenda) > 10 then
                   begin
                     NomeClie := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA60RAZAOSOC', '"' + ClienteVenda + '"') ;
                     if NomeClie <> '' then
                     begin
                       Application.CreateForm(TFormTelaConsultaRapidaCliente, FormTelaConsultaRapidaCliente) ;
                       FormTelaConsultaRapidaCliente.VALOR.Text := NomeClie ;
                       FormTelaConsultaRapidaCliente.ShowModal ;
                       exit ;
                     end ;
                   end
                 else
                   begin
                   end ;

                 Informa('Cliente n�o Encontrado') ;
               end ;    }

               // Esta Rotina chama o cadastro de clientes e grava o cliente numa vari�vel(ClienteCadastro)
               // na unit 'VarSys', no evento close do Cadastro de Clientes;
               // No Activate deste form a vari�vel ClienteAtual recebe o cliente selecionado no cadastro ;
               ValorVenda :=  ValorTotalVenda.Value;
               CriaFormulario(TFormCadastroCliente,'FormCadastroCliente',False,True,'');
           end ;
    VK_F12:begin
             if (FinalizacaodeVenda) and
                (not FileExists('FinalizacaodeVenda.arq')) then exit ;
           end ;
  else
    begin
      if ssAlt in Shift then
        case Upcase(Char(Key)) of
          'A' : begin
                  if (FinalizacaodeVenda) and
                     (not FileExists('FinalizacaodeVenda.arq')) then exit ;
                end ;
        end ;
      if ssCtrl in Shift then
        case Upcase(Char(Key)) of
          'A':begin//Excluir Numerario a Vista
                if (FinalizacaodeVenda) and
                   (not FileExists('FinalizacaodeVenda.arq')) then exit ;
                EntradaDados.Clear ;
                EstadoFechVenda    := ExcluindoNumerarioVista ;
                PreparaEstadoFech(EstadoFechVenda) ;
              end ;
          'C':begin//Consulta de Clientes
                if (FinalizacaodeVenda) and
                   (not FileExists('FinalizacaodeVenda.arq')) then exit ;
                EntradaDados.Clear ;
                EstadoFechVendaAnt := EstadoFechVenda ;
                EstadoFechVenda    := InformandoCliente ;
                PreparaEstadoFech(EstadoFechVenda) ;
                AbrirTelaCliente := True;
                Tecla := Vk_Return;
                EntradaDados.Text := '';
                EntradaDadosKeyDown(EntradaDados,Tecla,[ssCtrl]);

              end ;
          'D':begin//Desconto Total Venda
                if (FinalizacaodeVenda) and
                   (not FileExists('FinalizacaodeVenda.arq')) then exit ;

                if (EstadoFechVenda = InformandoNumerarioVista) then
                  begin
                    InformaG('O desconto s� pode ser aplicado ap�s informar o numer�rio � vista');
                    Exit;
                  end;
                if (EstadoFechVenda = InformandoValorNumerarioVista) then
                  begin
                    InformaG('O desconto s� pode ser aplicado ap�s informar o valor do numer�rio � vista');
                    Exit;
                  end;


                if PercDesqMaxUsario = 0 then
                  begin
                    Informa('Voc� n�o tem permiss�o para dar desconto na venda') ;
                    exit ;
                  end ;

                 Application.CreateForm(TFormTelaTipoDescontoItem, FormTelaTipoDescontoItem) ;
                 FormTelaTipoDescontoItem.ShowModal ;
                 if TipoDescFech = '' then
                   Exit ;

                EntradaDados.Clear ;
                EstadoFechVendaAnt := EstadoFechVenda ;
                EstadoFechVenda    := InformandoDesconto ;
                PreparaEstadoFech(EstadoFechVenda) ;
              end ;
          'E':begin//Alterar Entrada
                if (FinalizacaodeVenda) and
                   (not FileExists('FinalizacaodeVenda.arq')) then exit ;

                EntradaDados.Clear ;
                ValorRecebido.Value  := 0;
                ValorDescontoAcrescimo.Value := 0;
                VlrAcresc := 0;
                VlrJuro   := 0;
                VlrEntr   := 0;

                DM.SQLTemplate.Close ;
                DM.SQLTemplate.SQL.Clear ;
                DM.SQLTemplate.SQL.Add('delete from PARCELASVISTAVENDATEMP') ;
                DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
                DM.SQLTemplate.ExecSQL ;

                DM.SQLTemplate.Close ;
                DM.SQLTemplate.SQL.Clear ;
                DM.SQLTemplate.SQL.Add('delete from PARCELASPRAZOVENDATEMP') ;
                DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
                DM.SQLTemplate.ExecSQL ;

                SQLParcelasVistaVendaTemp.Close ;
                SQLParcelasVistaVendaTemp.Open ;

                EstadoFechVenda    := AlterandoEntrada ;
                PreparaEstadoFech(EstadoFechVenda) ;
              end ;
          //DIMINUIR ACR�SCIMO
          'F':begin
                if (FinalizacaodeVenda) and
                   (not FileExists('FinalizacaodeVenda.arq')) then exit ;

                if LblValorDescontoAcrescimo.Caption = 'DESCONTO' then
                begin
                  Informa('N�o � poss�vel abater valor do acr�scimo pois est� sendo informa do o valor do desconto. Escolha um plano com acr�scimo antes !') ;
                  exit ;
                end ;

                EntradaDados.Clear ;
                EstadoFechVendaAnt := EstadoFechVenda ;
                EstadoFechVenda    := DiminuirAcrescimo ;
                PreparaEstadoFech(EstadoFechVenda) ;
              end ;
          'L':begin//Valor Parcela Prazo
                if (FinalizacaodeVenda) and
                   (not FileExists('FinalizacaodeVenda.arq')) then exit ;

                EntradaDados.Clear ;
                EstadoFechVendaAnt := EstadoFechVenda ;
                EstadoFechVenda    := InformandoPosicaoParcelaPrazo ;
                PreparaEstadoFech(EstadoFechVenda) ;
              end ;
          'N':begin
                if (FinalizacaodeVenda) and
                   (not FileExists('FinalizacaodeVenda.arq')) then exit ;

                if SQLParcelasPrazoVendaTemp.RecordCount = 0 then
                begin
                  Informa('N�o h� parcelas a prazo !') ;
                  exit ;
                end ;

                EntradaDados.Clear ;
                EstadoFechVenda    := InformandoNumerarioPrazo ;

                NumerarioPrazo     := 0 ;
                PreparaEstadoFech(EstadoFechVenda) ;
              end ;
          'O':begin
                if (FinalizacaodeVenda) and
                   (not FileExists('FinalizacaodeVenda.arq')) then exit ;

                EstadoFechVendaAnt := EstadoFechVenda;
                Application.CreateForm(TFormTelaCadastroObs,FormTelaCadastroObs);
                FormTelaCadastroObs.ShowModal;
                EstadoFechVenda    := EstadoFechVendaAnt;
                PreparaEstadoFech(EstadoFechVenda);
                EstadoFechVendaAnt := '';

              end ;

          'P':begin //Alterar Plano
                if (FinalizacaodeVenda) and
                   (not FileExists('FinalizacaodeVenda.arq')) then exit ;

                ValorRecebido.Value  := 0;
                ValorDescontoAcrescimo.Value := 0;
                VlrAcresc := 0;
                VlrJuro   := 0;
                VlrEntr   := 0;

                EntradaDados.Clear ;
                EstadoFechVenda    := InformandoPlano ;

                if not DescTotVenda then
                begin
                  LblValorDescontoAcrescimo.Caption := 'ACR�SCIMO' ;
                  ValorDescontoAcrescimo.Value      := 0 ;
                end ;

                VlrTxCrediario.Value   := 0 ;
                VlrTxCred              := 0;
                LblTxCrediario.Visible := false ;
                VlrTxCrediario.Visible := false ;
                VlrTxCrediario.Value   := 0 ;

                ValorTroco.Value       := 0 ;
                ValorEntrada.Value     := 0 ;
                ValorRecebido.Value    := 0 ;
                PlanoVenda             := 0 ;
                NumerarioPrazo         := 0 ;

                ValorTotalVenda.Value := FormTelaItens.CurSubTotal.Value +
                                         VlrTxCrediario.Value -
                                         (VlrBonusTroca + VlrRetConfig_SldCad);
                //LIMPAR PARCELAS A PRAZO
                SQLParcelasPrazoVendaTemp.Close ;
                DM.SQLTemplate.Close ;
                DM.SQLTemplate.SQL.Clear ;
                DM.SQLTemplate.SQL.Add('delete from PARCELASPRAZOVENDATEMP') ;
                DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
                DM.SQLTemplate.ExecSQL ;
                SQLParcelasPrazoVendaTemp.Open ;
                //LIMPAR PARCEAS A VISTA
                SQLParcelasVistaVendaTemp.Close ;
                DM.SQLTemplate.Close ;
                DM.SQLTemplate.SQL.Clear ;
                DM.SQLTemplate.SQL.Add('delete from PARCELASVISTAVENDATEMP') ;
                DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
                DM.SQLTemplate.ExecSQL ;
                SQLParcelasVistaVendaTemp.Open ;

                //IncluirRetornoConsignacao_SaldoCLiente ;

                PreparaEstadoFech(EstadoFechVenda) ;
                Tecla := Vk_Return;
                EntradaDados.Text := '';
                EntradaDadosKeyDown(EntradaDados,Tecla,[ssCtrl]);
              end ;
          'S':begin
                Close ;
              end ;
          'T':begin
                if (FinalizacaodeVenda) and
                   (not FileExists('FinalizacaodeVenda.arq')) then exit ;

                EntradaDados.Clear ;
                EstadoFechVendaAnt := EstadoFechVenda ;
                EstadoFechVenda    := InformandoPosicaoData ;
                PreparaEstadoFech(EstadoFechVenda) ;
              end ;
          'U':begin
                if (FinalizacaodeVenda) and
                   (not FileExists('FinalizacaodeVenda.arq')) then exit ;

                EntradaDados.Clear ;
                EstadoFechVendaAnt := EstadoFechVenda ;
                EstadoFechVenda    := InformandoVendedor ;
                PreparaEstadoFech(EstadoFechVenda) ;

                Tecla := Vk_Return;
                EntradaDados.Text := '';
                EntradaDadosKeyDown(EntradaDados,Tecla,[ssCtrl]);

              end ;
        end ;
    end ;
  end ;
end;

procedure TFormTelaFechamentoVenda.PreparaEstadoFech(Estado : string) ;
begin
  if EstadoFechVenda = InformandoCliente then
  begin
    LblInstrucoes.Caption := 'INFORME O CLIENTE' ;
    LblInstrucoes.Refresh ;

    if DM.SQLTerminalAtivoCLIEA13ID.Value <> '' then
    begin
      EntradaDados.Text := DM.SQLTerminalAtivoCLIEA13ID.AsString ;
      EntradaDados.SelectAll ;
    end ;

    if (ClienteVenda <> '') then
    begin
      EntradaDados.Text := ClienteVenda ;
      EntradaDados.SelectAll ;
    end ;

    exit ;
  end ;

  if EstadoFechVenda = InformandoVendedor then
  begin
    LblInstrucoes.Caption := 'INFORME O VENDEDOR' ;
    LblInstrucoes.Refresh ;

    if DM.SQLTerminalAtivoVENDICOD.Value > 0 then
    begin
      EntradaDados.Text := DM.SQLTerminalAtivoVENDICOD.AsString ;
      EntradaDados.SelectAll ;
    end ;

    if VendedorVenda > 0 then
    begin
      EntradaDados.Text := IntToStr(VendedorVenda) ;
      EntradaDados.SelectAll ;
    end ;

    exit ;
  end ;

  if EstadoFechVenda = InformandoPlano then
  begin
    LblInstrucoes.Caption := 'INFORME O PLANO' ;
    LblInstrucoes.Refresh ;

    if DM.SQLTerminalAtivoPLRCICOD.Value > 0 then
    begin
      EntradaDados.Text := DM.SQLTerminalAtivoPLRCICOD.AsString ;
      EntradaDados.SelectAll ;
    end ;

    if PlanoVenda > 0 then
    begin
      EntradaDados.Text := IntToStr(PlanoVenda) ;
      EntradaDados.SelectAll ;
    end ;

    exit ;
  end ;

  if EstadoFechVenda = InformandoNumerarioVista then
  begin
    LblInstrucoes.Caption := 'INFORME O NUMER�RIO DA PARCELA � VISTA' ;
    LblInstrucoes.Refresh ;

    if DM.SQLTerminalAtivoTERMINUMEVISTA.Value > 0 then
    begin
      EntradaDados.Text := DM.SQLTerminalAtivoTERMINUMEVISTA.AsString ;
      EntradaDados.SelectAll ;
    end ;

    if NumerarioVista > 0 then
    begin
      EntradaDados.Text := IntToStr(NumerarioVista) ;
      EntradaDados.SelectAll ;
    end ;

    exit ;
  end ;

  if EstadoFechVenda = InformandoValorNumerarioVista then
  begin
    EntradaDados.Text := FormatFloat('###0.00', ValorEntrada.Value - ValorRecebido.Value) ;
    EntradaDados.SelectAll ;
    LblInstrucoes.Caption := 'INFORME O VALOR RECEBIDO EM ' + NumerarioVistaDescr ;
    LblInstrucoes.Refresh ;
    exit ;
  end ;

  if EstadoFechVenda = InformandoNumerarioPrazo then
  begin
    LblInstrucoes.Caption := 'INFORME O NUMER�RIO DA(S) PARCELA(S) � PRAZO' ;
    LblInstrucoes.Refresh ;

    if DM.SQLTerminalAtivoTERMINUMEPRAZO.Value > 0 then
    begin
      EntradaDados.Text := DM.SQLTerminalAtivoTERMINUMEPRAZO.AsString ;
      EntradaDados.SelectAll ;
    end ;
    if NumerarioPrazo > 0 then
    begin
      EntradaDados.Text := IntToStr(NumerarioPrazo) ;
      EntradaDados.SelectAll ;
    end ;

    exit ;
  end ;

  if EstadoFechVenda = AlterandoEntrada then
  begin
    LblInstrucoes.Caption := 'INFORME O VALOR DA ENTRADA' ;
    LblInstrucoes.Refresh ;
    exit ;
  end ;

  if EstadoFechVenda = DiminuirAcrescimo then
  begin
    LblInstrucoes.Caption := 'INFORME O VALOR QUE DESEJA DIMINUIR DO ACR�SCIMO' ;
    LblInstrucoes.Refresh ;
    EntradaDados.Text := ValorDescontoAcrescimo.Text ;
    EntradaDados.SelectAll ;
    exit ;
  end ;

  if EstadoFechVenda = ExcluindoNumerarioVista then
  begin
    SQLParcelasVistaVendaTemp.Last ;
    EntradaDados.Text := SQLParcelasVistaVendaTempNROITEM.AsString ;
    EntradaDados.SelectAll ;
    LblInstrucoes.Caption := 'INFORME A POSI��O DO NUMER�RIO A VISTA QUE DESEJA EXCLUIR' ;
    LblInstrucoes.Refresh ;
    exit ;
  end ;

  if EstadoFechVenda = FinalizandoVenda then
  begin
    if not VendaConsignada then
      if TemInformacaoPendente then
        exit ;

    {if PlanoVenda = 0 then
      begin
        EstadoFechVenda := InformandoPlano ;
        PreparaEstadoFech(EstadoFechVenda) ;
        exit ;
      end ;

    if ClienteVenda = '' then
      begin
        EstadoFechVendaAnt := EstadoFechVenda ;
        EstadoFechVenda    := InformandoCliente ;
        PreparaEstadoFech(EstadoFechVenda) ;
        exit ;
      end ;

    if VendedorVenda = 0 then
      begin
        EstadoFechVendaAnt := EstadoFechVenda ;
        EstadoFechVenda    := InformandoVendedor ;
        PreparaEstadoFech(EstadoFechVenda) ;
        exit ;
      end ;

    if VendedorVenda = 0 then
      begin
        EstadoFechVendaAnt := EstadoFechVenda ;
        EstadoFechVenda    := InformandoVendedor ;
        PreparaEstadoFech(EstadoFechVenda) ;
        exit ;
      end ;}

    if TerminalModo = 'C' then
      LblInstrucoes.Caption := 'TECLE [ENTER] PARA ENCERRAR ESTA VENDA OU [ESC] PARA CANCELAR' ;
    if (TerminalModo = 'P') and (not E_Orcamento) then
      LblInstrucoes.Caption := 'TECLE [ENTER] PARA ENCERRAR ESTA PR�-VENDA OU [ESC] PARA CANCELAR' ;
    if (TerminalModo = 'P') and (E_Orcamento) then
      LblInstrucoes.Caption := 'TECLE [ENTER] PARA ENCERRAR ESTE OR�AMENTO OU [ESC] PARA CANCELAR' ;

    LblInstrucoes.Refresh ;
    exit ;
  end ;

  if EstadoFechVenda = InformandoPosicaoData then
  begin
    EntradaDados.Clear ;
    EntradaDados.SelectAll ;
    LblInstrucoes.Caption := 'INFORME A PARCELA QUE DESEJA ALTERAR A DATA' ;
    LblInstrucoes.Refresh ;
    exit ;
  end ;

  if EstadoFechVenda = AlterandoData then
  begin
    EntradaDados.SelectAll ;
    LblInstrucoes.Caption := 'INFORME A NOVA DATA DE VENCIMENTO' ;
    LblInstrucoes.Refresh ;
    exit ;
  end ;

  if EstadoFechVenda = InformandoPosicaoParcelaPrazo then
  begin
    EntradaDados.Clear ;
    EntradaDados.SelectAll ;
    LblInstrucoes.Caption := 'INFORME A PARCELA QUE DESEJA ALTERAR O VALOR' ;
    LblInstrucoes.Refresh ;
    exit ;
  end ;

  if EstadoFechVenda = AlterandoParcelaPrazo then
  begin
    EntradaDados.SelectAll ;
    LblInstrucoes.Caption := 'INFORME O NOVO VALOR DA PARCELA A PRAZO' ;
    LblInstrucoes.Refresh ;
    exit ;
  end ;

  if EstadoFechVenda = InformandoDesconto then
  begin
    EntradaDados.Clear ;
    EntradaDados.SelectAll ;
    if TipoDescFech = 'VALOR' then
      LblInstrucoes.Caption := 'INFORME O VALOR DO DESCONTO NO TOTAL DA VENDA' ;
    if TipoDescFech = 'PERCENTUAL' then
      LblInstrucoes.Caption := 'INFORME O PERCENTUAL DO DESCONTO NO TOTAL DA VENDA' ;

    LblInstrucoes.Refresh ;
    exit ;
  end ;
end ;

procedure TFormTelaFechamentoVenda.TimerTimer(Sender: TObject);
begin
  //Timer.Interval := 60000 ;
//  Caption               := 'Checkout    Terminal: ' + TerminalAtualNome ;
  Caption := 'Data e Hora Atual: ' + FormatDateTime('ddddddddddddd hh:mm:ss', Now) +
                           '    Operador: ' + UsuarioAtualNome +
                           '    Terminal: ' + TerminalAtualNome ;

  LblListaParcelasVista.Visible := (SQLParcelasVistaVendaTemp.RecordCount > 0) ;
  ListaParcelasVista.Visible    := (SQLParcelasVistaVendaTemp.RecordCount > 0) ;

  LblListaParcelasPrazo.Visible := (SQLParcelasPrazoVendaTemp.RecordCount > 0) ;
  ListaParcelasPrazo.Visible    := (SQLParcelasPrazoVendaTemp.RecordCount > 0) ;
  Application.ProcessMessages;
end ;

procedure TFormTelaFechamentoVenda.ValorAcrescimoEnter(Sender: TObject);
begin
  EntradaDados.SetFocus ;
  EntradaDados.SelectAll ;
end;

procedure TFormTelaFechamentoVenda.ListaParcelasVistaEnter(Sender: TObject);
begin
  EntradaDados.SetFocus ;
  EntradaDados.SelectAll ;
end;

procedure TFormTelaFechamentoVenda.ListaParcelasPrazoEnter(Sender: TObject);
begin
  EntradaDados.SetFocus ;
  EntradaDados.SelectAll ;
end;

procedure TFormTelaFechamentoVenda.ValorEntradaEnter(Sender: TObject);
begin
  EntradaDados.SetFocus ;
  EntradaDados.SelectAll ;
end;

procedure TFormTelaFechamentoVenda.OnPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
var
  Tabela : TObject ;
begin
 Tabela := DataSet ;
 if E is EDBEngineError then
   with EDBEngineError(E) do
   begin
     ShowMessage(Errors[ErrorCount-1].Message) ;
   end ;
end ;

procedure TFormTelaFechamentoVenda.FormActivate(Sender: TObject);
begin
  if SolicitarLiberacao then
    exit;

  
  DescTotVenda := false ;

  if DM.SQLTerminalAtivoTERMCHIDECLIVENDPL.Value = 'S' then
    begin
      LblCLiente.Visible       := false ;
      LblCodigoCliente.Visible := false ;
      LblNomeCliente.Visible   := false ;
      LblVendedor.Visible      := false ;
      LblNomeVendedor.Visible  := false ;
      LblPlano.Visible         := false ;
      LblNomePlano.Visible     := false ;
    end ;

  if ClienteCadastro <> '' then
    ClienteVenda := ClienteCadastro;

  if (DM.SQLTerminalAtivoCLIEA13ID.Value <> '') or (ClienteVenda <> '') then
    begin
      if ClienteVenda = '' then
        ClienteVenda  := DM.SQLTerminalAtivoCLIEA13ID.Value ;
      EstadoFechVenda := InformandoCliente ;
      EntradaDados.Text := ClienteVenda ;
      EntradaDadosKeyDown(Sender, Enter, [ssAlt]);
    end;

  if (DM.SQLTerminalAtivoVENDICOD.Value > 0) or (VendedorVenda > 0) then
    begin
      if VendedorVenda = 0 then
        VendedorVenda := DM.SQLTerminalAtivoVENDICOD.Value ;
      EstadoFechVenda := InformandoVendedor ;
      EntradaDados.Text := IntToStr(VendedorVenda) ;
      EntradaDadosKeyDown(Sender, Enter, [ssAlt]);
    end ;

  if (not VendaConsignada) and (ClienteCadastro = '') then
    if (DM.SQLTerminalAtivoPLRCICOD.Value > 0) or (PlanoVenda > 0) then
      begin
        if PlanoVenda = 0 then
          PlanoVenda := DM.SQLTerminalAtivoPLRCICOD.Value ;

        EstadoFechVenda := InformandoPlano ;
        EntradaDados.Text := IntToStr(PlanoVenda) ;
        EntradaDadosKeyDown(Sender, Enter, [ssAlt]);
      end ;

  if (VlrBonusTroca > 0) then
    begin
      LblBonusTroca.Visible   := true ;
      ValorBonusTroca.Visible := true ;
      ValorBonusTroca.Value   := VlrBonusTroca ;
    end ;

  ValorCreditoCaderno := TotalRetorno ;

  //SE ESTIVER IMPORTANDO PRE-VENDA N�O PODE TER A LINHA ABAIXO SEN�O
  if Application.FindComponent('FormTelaImportarPreVenda') = nil then
    TemInformacaoPendente ;

  if TotalRetorno > 0 then
    begin
      LblRetorno.Visible        := true ;
      VlrRetornoCliente.Visible := true ;
      VlrRetornoCliente.Value   := TotalRetorno ;
    end ;

  if SaldoCaderno > 0 then
    begin
      LblCaderno.Visible        := true ;
      VlrCadernoCliente.Visible := true ;
      VlrCadernoCliente.Value   := SaldoCaderno ;
    end ;

  //PEGAR DADOS DO PLANO DA PR�-VENDA
  if (DM.SQLConfigVendaCFVECFINVENDADPREVD.Value = 'S') and
     (TerminalModo = 'C') then
    begin
      DM.SQLPreVendaNumerario.Open ;
      DM.SQLPreVendaNumerario.Last ;
      if DM.SQLPreVendaNumerario.RecordCount > 0 then
        begin
          if EstadoFechVenda = InformandoNumerarioVista then
            begin
              DM.SQLPreVendaNumerario.First ;
              EntradaDados.Text := DM.SQLPreVendaNumerarioNUMEICOD.AsString ;
              NumerarioVista    := DM.SQLPreVendaNumerarioNUMEICOD.Value ;
              EntradaDadosKeyDown(Sender, Enter, [ssAlt]) ;
            end ;

          if EstadoFechVenda = InformandoValorNumerarioVista then
            begin
              EntradaDadosKeyDown(Sender, Enter, [ssAlt]) ;
            end ;
        end ;

      DM.SQLPreVendaContasReceber.Open ;
      DM.SQLPreVendaContasReceber.Last ;
      if DM.SQLPreVendaContasReceber.RecordCount > 0 then
        begin
          if EstadoFechVenda = InformandoNumerarioPrazo then
            begin
              DM.SQLPreVendaContasReceber.First ;
              EntradaDados.Text := DM.SQLPreVendaContasReceberNUMEICOD.AsString ;
              NumerarioVista    := DM.SQLPreVendaContasReceberNUMEICOD.Value ;
              EntradaDadosKeyDown(Sender, Enter, [ssAlt]) ;
            end ;
        end ;
    end ;
  //N�O COLOCAR LINHAS ABAIXO POIS EXISTE O COMANDO "EXIT" NAS ROTINAS ABAIXO
  if (not VendaConsignada) and
     ((TotalRetorno + SaldoCaderno) > 0) and
     (DM.SQLConfigVendaCFVECUSADEBCREDCLI.Value = 'S') and
     ((TotalRetorno + SaldoCaderno) > FormTelaItens.CurSubTotal.Value) then
    begin
      //TESTAR SE H� NUMER�RIO CONFIG.PARA RETORNO CONSIGNA��O
      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('select NUMEICOD from NUMERARIO') ;
      DM.SQLTemplate.SQL.Add('where NUMEA5TIPO = "RTC"') ;
      DM.SQLTemplate.Open ;
      if DM.SQLTemplate.EOF then
        begin
          Informa('N�o ser� poss�vel efetuar retorno de produtos em consigna��o pois n�o h� nenhum numer�rio com "Tipo Padr�o" configurado para RETORNO CONSIGNA��O!') ;
          TemInformacaoPendente ;
          exit ;
        end ;
      NumerarioVista := DM.SQLTemplate.FieldByName('NUMEICOD').Value ;
      //SE O SALDO FOR "M A I O R" QUE A VENDA O SISTEMA IRA ESCOLHER AUTOMATICAMENTE
      //UM PLANO A VISTA E FINALIZAR A VENDA, LANCANDO O VALOR DA VENDA A DEBITO NO
      //CADERNO DO CLIENTE;
      if (TotalRetorno + SaldoCaderno) >= FormTelaItens.CurSubTotal.Value then
      begin
        //PROCURAR PLANO A VISTA PARA FECHAR VENDA
        DM.SQLTemplate.Close ;
        DM.SQLTemplate.SQL.Clear ;
        DM.SQLTemplate.SQL.Add('select PLRCICOD, Count(PLRCICOD) as CONTPARC, Sum(PLRPINRODIAS) as TOTDIAS') ;
        DM.SQLTemplate.SQL.Add('from PLANORECEBIMENTOPARCELA') ;
        DM.SQLTemplate.SQL.Add('group by PLRCICOD') ;
        DM.SQLTemplate.Open ;
        while not DM.SQLTemplate.EOF do
          begin
            if (DM.SQLTemplate.FieldByName('CONTPARC').Value = 1) and
               (DM.SQLTemplate.FieldByName('TOTDIAS').Value = 0) then
              begin
                //INFORMAR PLANO
                EstadoFechVenda := InformandoPlano ;
                EntradaDados.Text := DM.SQLTemplate.FieldByName('PLRCICOD').AsString ;
                EntradaDadosKeyDown(Sender, Enter, [ssAlt]);
                //INFORMAR NUMERARIO DE RETORNO CONSIG.
                EstadoFechVenda := InformandoNumerarioVista ;
                EntradaDados.Text := IntToStr(NumerarioVista) ;
                EntradaDadosKeyDown(Sender, Enter, [ssAlt]) ;
                //INFORMAR VALOR DE RETORNO CONSIG.
                EstadoFechVenda := InformandoValorNumerarioVista ;
                EntradaDados.Text := FormTelaItens.CurSubTotal.Text ;
                EntradaDadosKeyDown(Sender, Enter, [ssAlt]) ;

                ValorDebitoCaderno := FormTelaItens.CurSubTotal.Value ;

                TemInformacaoPendente ;
                exit ;
              end ;

            DM.SQLTemplate.Next ;
          end ;

        Informa('N�o ser� poss�vel efetuar o fechamento desta venda pois o ' +
                'cliente tem um saldo maior que valor da venda e n�o h� ' +
                'nenhum plano a vista cadastrado!') ;
        TemInformacaoPendente ;
        exit ;
      end ;
      //IncluirRetornoConsignacao_SaldoCliente ;
    end
  else
    if ClienteCadastro = '' then
      if ((DM.SQLTerminalAtivoTERMINUMEVISTA.Value > 0) or (NumerarioVista > 0)) and
          (ValorEntrada.Value > 0) then
        begin
          if (DM.SQLConfigVendaCFVECFINVENDADPREVD.Value = 'S') and (TerminalModo = 'C') then
            exit ;

          if NumerarioVista = 0 then
            NumerarioVista := DM.SQLTerminalAtivoTERMINUMEVISTA.Value ;
          EstadoFechVenda := InformandoNumerarioVista ;
          PreparaEstadoFech(EstadoFechVenda) ;
          EntradaDados.text := IntToStr(NumerarioVista) ;
          EntradaDados.SelectAll ;
        end ;
  //N�O COLOCAR LINHAS ABAIXO POIS EXISTE O COMANDO "EXIT" NAS ROTINAS ACIMA
end ;

procedure TFormTelaFechamentoVenda.GravarMontanteCaixa ;
var
  VlrLanc,
  VlrAcresc,
  VlrDesc : double ;
  MsgErro,
  Sigla,
  Descri  : string ;
begin
  MsgErro   := '' ;
  Sigla     := '' ;
  VlrDesc   := 0 ;
  VlrAcresc := 0 ;

  if (LblValorDescontoAcrescimo.Caption = 'DESCONTO') and (ValorDescontoAcrescimo.Value > 0) then
    VlrDesc := ValorDescontoAcrescimo.Value ;

  if (LblValorDescontoAcrescimo.Caption = 'ACR�SCIMO') and (ValorDescontoAcrescimo.Value > 0) then
    VlrAcresc := ValorDescontoAcrescimo.Value ;

  if (TipoPadrao = 'VISTA') or (TipoPadrao = 'DIN') or (TipoPadrao = 'RTC') then
    begin
      Sigla   := 'VDVIS' ;
      MsgErro := 'N�o h� nenhuma Opera��o de Caixa configurada com a sigla de Venda a Vista!' ;
      VlrLanc := ValorTotalVenda.Value ;
    end ;

  if Copy(TipoPadrao,1,3) = 'CHQ' then
    begin
      if TipoPadrao = 'CHQP' then
        Sigla   := 'VDCHQ'
      else
        Sigla   := 'VDVIS';
      MsgErro := 'N�o h� nenhuma Opera��o de Caixa configurada com a sigla de Venda Cheque!' ;
      VlrLanc := ValorTotalVenda.Value ;
    end ;

  if TipoPadrao = 'CRD' then
    begin
      Sigla   := 'VDCRD' ;
      MsgErro := 'N�o h� nenhuma Opera��o de Caixa configurada com a sigla de Venda Credi�rio!' ;

      SQLGeral.Close;
      SQLGeral.SQL.Text := 'select sum(VALORVENCTO) as TotParcelas from PARCELASPRAZOVENDATEMP where TERMICOD = ' + IntToStr(TerminalAtual);
      SQLGeral.Open;

      VlrLanc :=  SQLGeral.FieldByName('TotParcelas').AsFloat;//ValorTotalVenda.Value ;
    end ;

  if TipoPadrao = 'CNV' then
    begin
      Sigla   := 'VDCNV' ;
      MsgErro := 'N�o h� nenhuma Opera��o de Caixa configurada com a sigla de Venda Conv�nio!' ;
      VlrLanc := ValorTotalVenda.Value ;
    end ;

  if (TipoPadrao = 'CRT') or (TipoPadrao = 'CRTF') then
    begin
      Sigla   := 'VDCRT' ;
      MsgErro := 'N�o h� nenhuma Opera��o de Caixa configurada com a sigla de Venda Conv�nio!' ;
      VlrLanc := ValorTotalVenda.Value ;
    end ;

  //TESTAR SE MOVIMENTO DO CAIXA PADRAO PARA TIPO VENDA EXISTE
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select * from OPERACAOCAIXA') ;
  DM.SQLTemplate.SQL.Add('where OPCXA5SIGLA = "' + Sigla + '"') ;
  DM.SQLTemplate.Open ;
  if DM.SQLTemplate.IsEmpty then
    begin
       Informa(MsgErro) ;

      if not FileExists('SemTransacao.Arq') then
        if DM.DB.InTransaction then
          DM.DB.RollBack ;

      if (ECFAtual <> '') and (PortaECFAtual <> '') then
        if not CancelarCupomFiscal(ECFAtual, PortaECFAtual) then
          exit ;
      FormTelaItens.CancelarVenda ;
      FormTelaItens.EstadoPDVChk := 'AguardandoNovaVenda' ;
      FormTelaItens.PreparaEstadoBalcao(FormTelaItens.EstadoPDVChk) ;
      Close ;

      exit ;
    end ;
  //MOVIMENTO REF.TOTAL DA VENDA
  if (TotalVistaAut > 0)  and (ValorPrazo > 0) and ((Copy(TipoPadrao,1,3) = 'CHQ')) then
    GravaMovimentoCaixa( DM.SQLTotalizadorCaixa,
                         DM.SQLTotalizar,
                         EmpresaPadrao,//WEMPRICOD
                         IntToStr(TerminalAtual),//WTERMICOD
                         FormatDateTime('mm/dd/yyyy', Now),//WMVCIXDMOV
                         'Null',//WNUMEICOD
                         DM.SQLTemplate.FieldByName('OPCXICOD').AsString,//WOPCXICOD
                         IntToStr(DM.UsuarioAtual),//WUSUAICOD
                         DM.CodNextCupom,//WMVCIXA15DOCORIG
                         VlrLanc - TotalVistaAut,//WMOVICAIXN2VLR
                         VlrAcresc,//WMOVICAIXN2VLRJURO
                         0,//WMOVICAIXN2VLRMULTA
                         VlrDesc,//WMOVICAIXN2VLRDEC
                         'Null',//WMOVICAIXA6NUMCUPOM
                         'C',//WTIPO
                         '',//WMVCXA255HIST
                         'N',
                         '')
  else
    GravaMovimentoCaixa( DM.SQLTotalizadorCaixa,
                         DM.SQLTotalizar,
                         EmpresaPadrao,//WEMPRICOD
                         IntToStr(TerminalAtual),//WTERMICOD
                         FormatDateTime('mm/dd/yyyy', Now),//WMVCIXDMOV
                         'Null',//WNUMEICOD
                         DM.SQLTemplate.FieldByName('OPCXICOD').AsString,//WOPCXICOD
                         IntToStr(DM.UsuarioAtual),//WUSUAICOD
                         DM.CodNextCupom,//WMVCIXA15DOCORIG
                         VlrLanc,//WMOVICAIXN2VLR
                         VlrAcresc,//WMOVICAIXN2VLRJURO
                         0,//WMOVICAIXN2VLRMULTA
                         VlrDesc,//WMOVICAIXN2VLRDEC
                         'Null',//WMOVICAIXA6NUMCUPOM
                         'C',//WTIPO
                         '',//WMVCXA255HIST
                         'N',
                         '');
end ;

procedure TFormTelaFechamentoVenda.GravarCaixaPrazo ;
begin
  if ValorPrazo = 0 then
    exit ;
  LblInstrucoes.Caption := 'TOTALIZANDO NUMER�RIO � PRAZO NO BOLETIM DO CAIXA...' ;
  LblInstrucoes.Refresh ;
  //MOVIMENTO REF.TOTALIZA��O DE NUM.PRAZO NO BOLETIM
  GravaMovimentoCaixa( DM.SQLTotalizadorCaixa,
                       DM.SQLTotalizar,
                       EmpresaPadrao,//WEMPRICOD
                       IntToStr(TerminalAtual),//WTERMICOD
                       FormatDateTime('mm/dd/yyyy', Now),//WMVCIXDMOV
                       SQLParcelasPrazoVendaTempNUMEICOD.AsString,//WNUMEICOD
                       'Null',//WOPCXICOD
                       IntToStr(DM.UsuarioAtual),//WUSUAICOD
                       DM.CodNextCupom,//WMVCIXA15DOCORIG
                       ValorPrazo,//WMOVICAIXN2VLR
                       0,//WMOVICAIXN2VLRJURO
                       0,//WMOVICAIXN2VLRMULTA
                       0,//WMOVICAIXN2VLRDEC
                       'Null',//WMOVICAIXA6NUMCUPOM
                       'C',//WTIPO
                       'Lancto.p/tot.numer.Bol.Cx.:' + SQLParcelasPrazoVendaTempNumerarioLookup.AsString,//WMVCXA255HIST
                       'N',
                       '') ;
end ;

procedure TFormTelaFechamentoVenda.SQLCadernoNewRecord(DataSet: TDataSet);
begin
  SQLCadernoCLCAN2VLRCREDITO.Value := 0 ;
  SQLCadernoCLCAN2VLRDEBITO.Value  := 0 ;
end;

function TFormTelaFechamentoVenda.ParcelasPrazoTemNumerario : boolean ;
begin
  SQLParcelasPrazoVendaTemp.DisableControls ;
  SQLParcelasPrazoVendaTemp.First ;
  ParcelasPrazoTemNumerario := true ;
  while not SQLParcelasPrazoVendaTemp.EOF do
  begin
    if SQLParcelasPrazoVendaTempNUMEICOD.Value > 0 then
    else begin
      ParcelasPrazoTemNumerario := false ;
      Break ;
    end ;

    SQLParcelasPrazoVendaTemp.Next ;
  end ;
  SQLParcelasPrazoVendaTemp.EnableControls ;
end ;

function TFormTelaFechamentoVenda.InformarDadosCheque : boolean ;
begin
  if DM.SQLConfigVendaCFVECDADOSCHQPDV.Value = 'S' then
    begin
      IncrementaNroCheque := false ;
      if not TblCheques.Active then
        TblCheques.Open ;
      //VERIFICAR SEM TEM CHEQUE A VISTA
      SQLParcelasVistaVendaTemp.DisableControls ;
      SQLParcelasVistaVendaTemp.First ;
      while not SQLParcelasVistaVendaTemp.EOF do
      begin
        if Copy(SQLParcelasVistaVendaTempTIPOPADR.Value,1,3) = 'CHQ' then
        begin
          TblCheques.Append ;
          TblChequesDataVecto.Value := Date ;
          TblChequesValor.Value := SQLParcelasVistaVendaTempVALORPARC.Value ;
          TblCheques.Post ;
        end ;

        SQLParcelasVistaVendaTemp.Next ;
      end ;
      SQLParcelasVistaVendaTemp.First ;
      SQLParcelasVistaVendaTemp.EnableControls ;
      //VERIFICAR SEM TEM CHEQUE A PRAZO
      SQLParcelasPrazoVendaTemp.DisableControls ;
      SQLParcelasPrazoVendaTemp.First ;
      while not SQLParcelasPrazoVendaTemp.EOF do
      begin
        if Copy(SQLParcelasPrazoVendaTempTIPOPADR.Value,1,3) = 'CHQ' then
        begin
          TblCheques.Append ;
          TblChequesDataVecto.Value := SQLParcelasPrazoVendaTempDATAVENCTO.Value ;
          TblChequesValor.Value := SQLParcelasPrazoVendaTempVALORVENCTO.Value ;
          TblCheques.Post ;
        end ;

        SQLParcelasPrazoVendaTemp.Next ;
      end ;
      SQLParcelasPrazoVendaTemp.First ;
      SQLParcelasPrazoVendaTemp.EnableControls ;
      //VERIFICAR SEM TEM DE INFORMAR DADOS DO CHEQUE
      TblCheques.First ;
      if not TblCheques.EOF then
      begin
        IncrementaNroCheque := true ;
        Application.CreateForm(TFormTelaDadosCheque, FormTelaDadosCheque);
        FormTelaDadosCheque.ShowModal ;
        IncrementaNroCheque := false ;
      end ;
    end ;
end ;

function TFormTelaFechamentoVenda.GravarPreVenda : boolean ;
begin
  //CAPTURAR O ID DO PR�-VENDA
  LblInstrucoes.Caption := 'GERANDO C�DIGO PR�-VENDA...' ;
  LblInstrucoes.Refresh ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select Max(PRVDICOD) as Contador from PREVENDA') ;
  DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
  DM.SQLTemplate.Open ;
  if DM.SQLTemplate.FieldByName('Contador').Value <> Null then
    ProxCod := DM.SQLTemplate.FieldByName('Contador').Value + 1
  else
    ProxCod := 1 ;

  //GRAVAR CABECALHO PR�-VENDA
  Gravou := false ;
  while not Gravou do
  begin
    LblInstrucoes.Caption := 'GRAVANDO PR�-VENDA...' ;
    LblInstrucoes.Refresh ;

    CodNextPreVenda := ProxCod ;

    DM.SQLTemplate.Close ;
    DM.SQLTemplate.SQL.Clear ;
    DM.SQLTemplate.SQL.Add('insert into PREVENDA') ;
    DM.SQLTemplate.SQL.Add('(TERMICOD, PRVDICOD, CLIEA13ID, PLRCICOD, VENDICOD, CONVICOD, PRVDN2TOTITENS,') ;
    DM.SQLTemplate.SQL.Add('PRVDN2DESC, PRVDN2ACRESC, PRVDN2TOTITENSRET, PRVDCTIPOPADRAO, PRVDN2CONVTAXA,') ;
    DM.SQLTemplate.SQL.Add('PRVDINROORDCOMPRA, PRVDCIMPORT, PRVDCMARCADO)') ;
    DM.SQLTemplate.SQL.Add('Values (') ;
    DM.SQLTemplate.SQL.Add(IntToStr(TerminalAtual) + ',') ;//TERMICOD
    DM.SQLTemplate.SQL.Add(IntToStr(CodNextPreVenda) + ', ') ;//PRVDICOD
    DM.SQLTemplate.SQL.Add('"' + ClienteVenda + '",') ;//CLIEA13ID
    DM.SQLTemplate.SQL.Add(IntToStr(PlanoVenda) + ',') ;//PLRCICOD
    DM.SQLTemplate.SQL.Add(IntToStr(VendedorVenda) + ',') ;//VENDICOD
    if ConvenioVenda > 0 then
      DM.SQLTemplate.SQL.Add(IntToStr(ConvenioVenda) + ', ') //CONVICOD
    else
      DM.SQLTemplate.SQL.Add('null,') ;//CONVICOD
    DM.SQLTemplate.SQL.Add(ConvFloatToStr(ValorTotalVenda.Value) + ',') ;//PRVDN2TOTITENS
    if LblValorDescontoAcrescimo.Caption = 'DESCONTO' then
      DM.SQLTemplate.SQL.Add(ConvFloatToStr(ValorDescontoAcrescimo.Value) + ',')//PRVDN2DESC
    else
      DM.SQLTemplate.SQL.Add('0.00,') ;//PRVDN2DESC
    if LblValorDescontoAcrescimo.Caption = 'ACR�SCIMO' then
      DM.SQLTemplate.SQL.Add(ConvFloatToStr(ValorDescontoAcrescimo.Value) + ',')//PRVDN2ACRESC
    else
      DM.SQLTemplate.SQL.Add('0.00,') ;//PRVDN2ACRESC
    DM.SQLTemplate.SQL.Add('0.00,') ;//PRVDN2TOTITENSRET
    DM.SQLTemplate.SQL.Add('"' + TipoPadrao + '",') ;//PRVDCTIPOPADRAO
    DM.SQLTemplate.SQL.Add('0,') ;//PRVDN2CONVTAXA
    if NroOrdemCompraConvenio > 0 then
      DM.SQLTemplate.SQL.Add('null,') {PRVDINROORDCOMPRA}
    else
      DM.SQLTemplate.SQL.Add('null,') ;{PRVDINROORDCOMPRA}
    DM.SQLTemplate.SQL.Add('"N",') ;{PRVDCIMPORT}
    DM.SQLTemplate.SQL.Add('"N")') ;{PRVDCMARCADO}
    try
      DM.SQLTemplate.ExecSQL ;
      Gravou := true ;
    except
      Inc(ProxCod) ;
    end ;
  end ;
end ;

function TFormTelaFechamentoVenda.GravarItensPreVenda : boolean ;
begin
  if not DM.SQLPreVendaItem2.Active then
    DM.SQLPreVendaItem2.Open ;

  LblInstrucoes.Caption := 'GRAVANDO ITENS DA PR�-VENDA...' ;
  LblInstrucoes.Refresh ;

  FormTelaItens.SQLItensVendaTemp.First ;
  while not FormTelaItens.SQLItensVendaTemp.EOF do
  begin
    DM.SQLPreVendaItem2.Append ;
    DM.SQLPreVendaItem2TERMICOD.Value           := TerminalAtual ;
    DM.SQLPreVendaItem2PRVDICOD.Value           := CodNextPreVenda ;
    DM.SQLPreVendaItem2PVITIPOS.Value           := FormTelaItens.SQLItensVendaTempNUMITEM.Value ;
    DM.SQLPreVendaItem2PRODICOD.Value           := FormTelaItens.SQLItensVendaTempCODIGO.Value ;
    DM.SQLPreVendaItem2PVITN3QTD.Value          := FormTelaItens.SQLItensVendaTempQUANTIDADE.Value ;
    DM.SQLPreVendaItem2PVITN3VLRUNIT.Value      := FormTelaItens.SQLItensVendaTempVLRUNITBRUT.Value ;
    DM.SQLPreVendaItem2PVITN3VLRCUSTUNIT.Value  := 0 ;
    DM.SQLPreVendaItem2PVITN2DESC.Value         := FormTelaItens.SQLItensVendaTempVLRDESC.Value ;
    DM.SQLPreVendaItem2VENDICOD.Value           := VendedorVenda ;
    DM.SQLPreVendaItem2PVITN3VLRUNITLUCR.Value  := 0 ;
    DM.SQLPreVendaItem2PVITCSTATUS.Value        := 'A' ;
    DM.SQLPreVendaItem2PVITN2ICMSALIQ.Value     := 0 ;
    DM.SQLPreVendaItem2PRODA60NROSERIE.AsString := FormTelaItens.SQLItensVendaTempNROSERIE.AsString;
    DM.SQLPreVendaItem2.Post ;

    FormTelaItens.SQLItensVendaTemp.Next ;
  end ;

  GravarTabelaTempImpPreVenda(IntToStr(TerminalAtual),
                              IntToStr(CodNextPreVenda),
                              '',
                              DM.SQLPreVD,
                              DM.SQLPreVDIt) ;
end ;

function TFormTelaFechamentoVenda.GravarNumerarioAVistaPreVenda : boolean ;
begin
  SQLParcelasVistaVendaTemp.DisableControls ;
  SQLParcelasVistaVendaTemp.First ;
  LblInstrucoes.Caption := 'GRAVANDO NUMER�RIOS � VISTA...' ;
  LblInstrucoes.Refresh ;

  while not SQLParcelasVistaVendaTemp.EOF do
  begin
    DM.SQLTemplate.Close ;
    DM.SQLTemplate.SQL.Clear ;
    DM.SQLTemplate.SQL.Add('insert into PREVENDANUMERARIO') ;
    DM.SQLTemplate.SQL.Add('(TERMICOD, PRVDICOD, NUMEICOD, PVNUN2VLR)') ;
    DM.SQLTemplate.SQL.Add('values (') ;
    DM.SQLTemplate.SQL.Add(IntToStr(TerminalAtual) + ',') ;{TERMICOD}
    DM.SQLTemplate.SQL.Add(IntToStr(CodNextPreVenda) + ', ') ;{CUPOA13ID}
    DM.SQLTemplate.SQL.Add(SQLParcelasVistaVendaTempNUMEICOD.AsString + ',');{NUMEICOD}
    DM.SQLTemplate.SQL.Add(ConvFloatToStr(SQLParcelasVistaVendaTempVALORPARC.Value) + ')');{PVNUN2VLR}
    DM.SQLTemplate.ExecSQL ;
    SQLParcelasVistaVendaTemp.Next ;
  end ;
  SQLParcelasVistaVendaTemp.First ;
  SQLParcelasVistaVendaTemp.EnableControls ;
end ;

function TFormTelaFechamentoVenda.GravarNumerarioAPrazoPreVenda : boolean ;
begin
  SQLParcelasPrazoVendaTemp.DisableControls ;
  SQLParcelasPrazoVendaTemp.First ;

  LblInstrucoes.Caption := 'GRAVANDO NUMER�RIOS � PRAZO...';
  LblInstrucoes.Refresh ;

  while not SQLParcelasPrazoVendaTemp.EOF do
  begin
    //CAPTURAR O ID DO CONTA A RECEBER
    DM.SQLTemplate.Close ;
    DM.SQLTemplate.SQL.Clear ;
    DM.SQLTemplate.SQL.Add('select Max(PVCRICOD) as Contador from PREVENDACONTASRECEBER') ;
    DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
    DM.SQLTemplate.Open ;
    if DM.SQLTemplate.FieldByName('Contador').Value <> Null then
      ProxCod := DM.SQLTemplate.FieldByName('Contador').Value + 1
    else
      ProxCod := 1 ;

    Gravou := false ;
    while not Gravou do
    begin
      LblInstrucoes.Caption := 'GRAVANDO NUMER�RIOS � PRAZO DA PARCELA NRO.' + SQLParcelasPrazoVendaTempNROPARCELA.AsString + '...';
      LblInstrucoes.Refresh ;

      CodNextPVContaRec := ProxCod ;

      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('insert into PREVENDACONTASRECEBER') ;
      DM.SQLTemplate.SQL.Add('(PVCRICOD, TERMICOD, PRVDICOD, CLIEA13ID, PORTICOD, NUMEICOD, PVCRINROPARC,') ;
      DM.SQLTemplate.SQL.Add('PVCRDVENC, PVCRN2VLR, PVCRN2TXJURO, PVCRN2TXMULTA, PVCRN2DESCFIN)') ;
      DM.SQLTemplate.SQL.Add('values (') ;
      DM.SQLTemplate.SQL.Add(IntToStr(CodNextPVContaRec) + ',') ; {PVCRICOD}
      DM.SQLTemplate.SQL.Add(IntToStr(TerminalAtual) + ', ') ; {TERMICOD}
      DM.SQLTemplate.SQL.Add(IntToStr(CodNextPreVenda) + ', ') ;{PRVDICOD}
      DM.SQLTemplate.SQL.Add( '"' + ClienteVenda + '", ') ; {CLIEA13ID}
      DM.SQLTemplate.SQL.Add( 'null, ') ; {PORTICOD}
      DM.SQLTemplate.SQL.Add( SQLParcelasPrazoVendaTempNUMEICOD.AsString + ',') ; {NUMEICOD}
      DM.SQLTemplate.SQL.Add( SQLParcelasPrazoVendaTempNROPARCELA.AsString + ', ') ; {PVCRINROPARC}
      DM.SQLTemplate.SQL.Add( '"' + FormatDateTime('mm/dd/yyyy', SQLParcelasPrazoVendaTempDATAVENCTO.Value) + '", ') ; {PVCRDVENC}
      DM.SQLTemplate.SQL.Add( ConvFloatToStr(SQLParcelasPrazoVendaTempVALORVENCTO.Value) + ',') ; {PVCRN2VLR}
      DM.SQLTemplate.SQL.Add( '0, ') ; {PVCRN2TXJURO}
      DM.SQLTemplate.SQL.Add( '0, ') ; {PVCRN2TXMULTA}
      DM.SQLTemplate.SQL.Add( '0)') ; {PVCRN2DESCFIN}
      try
        DM.SQLTemplate.ExecSQL ;
        Gravou := true ;
      except
        Inc(ProxCod) ;
      end ;
    end ;

    SQLParcelasPrazoVendaTemp.Next ;
  end ;
end ;

function  TFormTelaFechamentoVenda.GravarCupom : boolean ;
begin

  //GRAVAR CABECALHO CUPOM
  LblInstrucoes.Caption := 'GRAVANDO CUPOM...';
  LblInstrucoes.Refresh;

  DM.SQLCupom.Close;
  DM.SQLCupom.MacroByName('MFiltro').Value := 'CUPOA13ID is null';
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
            DM.SQLCupomPLCTA15CODDEB.AsString := DM.SQLTemplate.FieldByName('PLCTA15CODDEB').AsString;

          if DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString <> '' then
            DM.SQLCupomPLCTA15CODCRED.AsString := DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString;

          if DM.SQLTemplate.FieldByName('CFOPA5CODDENTROUF').AsString <> '' then
            DM.SQLCupomCFOPA5COD.AsString      := DM.SQLTemplate.FieldByName('CFOPA5CODDENTROUF').AsString;
        end;
    end;

  DM.SQLCupomEMPRICOD.AsString       := EmpresaPadrao;
  DM.SQLCupomTERMICOD.Value          := TerminalAtual;
  DM.SQLCupomCUPODEMIS.Value         := Date ;
  DM.SQLCupomCLIEA13ID.Value         := ClienteVenda;
  DM.SQLCupomPLRCICOD.Value          := PlanoVenda;
  DM.SQLCupomVENDICOD.Value          := VendedorVenda;
  if ConvenioVenda > 0 then
    DM.SQLCupomCONVICOD.Value := ConvenioVenda;

  DM.SQLCupomCUPOCSTATUS.Value       := 'A';
  DM.SQLCupomCUPON2TOTITENS.Value    := ValorTotalVenda.Value -
                                        VlrTxCrediario.Value +
                                        (VlrBonusTroca + VlrRetConfig_SldCad);

  if VlrRetornoCliente.Value > 0 then
    DM.SQLCupomCUPON2TOTITENSRET.Value := VlrRetornoCliente.Value;

  if (LblValorDescontoAcrescimo.Caption = 'DESCONTO') then
  begin
    DM.SQLCupomCUPON2DESC.Value      := ValorDescontoAcrescimo.Value;
    DM.SQLCupomCUPON2DESCITENS.Value := FormTelaItens.TotalDescItens;
    //ESTA LINHA FOI COLOCADA PARA COLOCAR O DESCONTO NO TOTAL DA VENDA POIS
    //ELE � ABATIDO DO CAMPO TOTAL DA TELA
    DM.SQLCupomCUPON2TOTITENS.Value := DM.SQLCupomCUPON2TOTITENS.Value +
                                       ValorDescontoAcrescimo.Value;
  end;
  if LblValorDescontoAcrescimo.Caption = 'ACR�SCIMO' then
  begin
    DM.SQLCupomCUPON2ACRESC.Value   := ValorDescontoAcrescimo.Value ;
    DM.SQLCupomCUPON2TOTITENS.Value := DM.SQLCupomCUPON2TOTITENS.Value -
                                       ValorDescontoAcrescimo.Value;
  end;

 if (ECFAtual = 'SIGTRON FS300') then
   NroCupomFiscal := RetornaNroCupomFiscal(ECFAtual,PortaECFAtual);

 if ECFAtual = 'SWEDAS7000' then
    NroCupomFiscal := '';

 if NroCupomFiscal <> '' then
   DM.SQLCupomCUPOINRO.AsString := NroCupomFiscal ;

  if not VendaConsignada then
    begin
      DM.SQLCupomCUPOCTIPOPADRAO.Value := TipoPadrao;
      if (TipoPadrao = 'DIN') or (TipoPadrao = 'VISTA') then
        DM.SQLCupomCUPODQUITACAO.AsDateTime := Date;
    end
  else
    DM.SQLCupomCUPOCTIPOPADRAO.Value := 'CONSI' ;

  DM.SQLCupomCUPON2CONVTAXA.Value    := 0 ;
  DM.SQLCupomCUPOINROORDCOMPRA.Value := 0 ;

  if CupomOrigemTroca <> '' then
    DM.SQLCupomCUPOA13IDTROCA.Value := CupomOrigemTroca
  else
    DM.SQLCupomCUPOA13IDTROCA.Value := '' ;

  DM.SQLCupomCUPON2VLRCOMISSAO.Value := 0 ;
  if CodigoAntigoCupom <> '' then
    DM.SQLCupomCUPOA20CODANT.Value := CodigoAntigoCupom
  else
    DM.SQLCupomCUPOA20CODANT.Value := '' ;

  DM.SQLCupomCUPON2JUROATRAS.Value   := 0 ;
  DM.SQLCupomCUPON2MULTAATRAS.Value  := 0 ;
  if VlrBonusTroca > 0 then
    DM.SQLCupomCUPON3BONUSTROCA.Value := VlrBonusTroca
  else
    DM.SQLCupomCUPON3BONUSTROCA.Value := 0 ;

  if DataEntregaVenda <> '' then
    DM.SQLCupomCUPODENTREGA.AsString  := Copy(DataEntregaVenda, 1, 10) ;
  if TipoVenda > 0 then
    DM.SQLCupomTPVDICOD.Value  := TipoVenda ;

  if VlrTxCrediario.Value > 0 then
    DM.SQLCupomCUPON3CREDTAXA.Value := VlrTxCrediario.Value
  else
    DM.SQLCupomCUPON3CREDTAXA.Value := 0 ;

  if VendaConsignada then
    DM.SQLCupomCUPOCCONSIG.Value := 'S' ;

  if DadosClienteVenda <> '' then
    DM.SQLCupomCUPOV254OBS.AsString := DadosClienteVenda;

  if ObsCupom <> '' then
    begin
      DM.SQLCupomCUPOV254OBS.AsString := DM.SQLCupomCUPOV254OBS.AsString + ' ' + ObsCupom;
    end;

  // dados cartao

  if DataTransacaoCartao <> '' then
  begin
    DM.SQLCupomCUPOA30DATACARTAO.AsString := DataTransacaoCartao;
    DM.SQLCupomCUPOA30HORACARTAO.AsString := HoraTransacaoCartao;
    DM.SQLCupomCUPOA30NSUPROVEDOR.AsString := NSUProvedorCartao;
    DM.SQLCupomCUPOA30NSUINSTITUICAO.AsString := NSUInstituicaoCartao;
  end;

  if NumeroLiberacaoOk <> '' then
    DM.SQLCupomCATCA13ID.AsString    := NumeroLiberacaoOk;

  // ICMS
  DM.SQLCupomCUPON2BASEICMS.AsFloat  := RetornaBaseIcmsProdutosVenda(TerminalAtual);
  DM.SQLCupomCUPON2VLRICMS.AsFloat   := RetornaValorIcmsProdutosVenda(TerminalAtual);

  DM.SQLCupomPENDENTE.Value          := 'S' ;
  DM.SQLCupomREGISTRO.Value          := Now ;

  DM.SQLCupom.Post ;
  //ALTERAR DATA DE PRIMEIRA E ULTIMA COMPRA
  DM.SQLCliDadosCompra.Close ;
  DM.SQLCliDadosCompra.MacroByName('Filtro').Value := 'CLIEA13ID = "' + ClienteVenda + '"' ;
  DM.SQLCliDadosCompra.Open ;
  if not DM.SQLCliDadosCompra.Eof then
    begin
      DM.SQLCliDadosCompra.Edit ;
      if DM.SQLCliDadosCompraCLIEDPRICOMPRA.AsString = '' then
        DM.SQLCliDadosCompraCLIEDPRICOMPRA.Value := Date ;
      DM.SQLCliDadosCompraCLIEDULTCOMPRA.Value := Date ;
      if VendaConsignada then
        DM.SQLCliDadosCompraMTBLICOD.Value := DM.SQLConfigVendaMTBLICODVENDCONSIG.Value ;
      DM.SQLCliDadosCompra.Post ;
    end ;

end ;

function TFormTelaFechamentoVenda.GravarItensCupom : boolean ;
var
  PercItemSobreTot,VlrDesc : double ;
begin
  i := 1;

  DM.SQLCupomItem.Close;
  DM.SQLCupomItem.MacroByName('MFiltro').Value := 'CUPOA13ID is null';
  DM.SQLCupomItem.Open;

  FormTelaItens.SQLItensVendaTemp.First;
  while not FormTelaItens.SQLItensVendaTemp.EOF do
  begin
    LblInstrucoes.Caption := 'GRAVANDO ITENS DO CUPOM' + Pontos(i);
    LblInstrucoes.Refresh;

    //TESTAR SE HOUVE DESCONTO NO TOTAL DA VENDA PARA RATEAR NOS ITENS
    VlrDesc          := 0;
    PercItemSobreTot := 0;
    if (LblValorDescontoAcrescimo.Caption = 'DESCONTO') and (ValorDescontoAcrescimo.Value > 0) then
      begin
        PercItemSobreTot := (FormTelaItens.SQLItensVendaTempVLRUNITBRUT.Value *
                             FormTelaItens.SQLItensVendaTempQUANTIDADE.Value);
        PercItemSobreTot := (PercItemSobreTot /
                            (ValorTotalVenda.Value + ValorDescontoAcrescimo.Value))*100;
        VlrDesc          := ValorDescontoAcrescimo.Value * (PercItemSobreTot/100);
        VlrDesc          := VlrDesc / FormTelaItens.SQLItensVendaTempQUANTIDADE.Value;
      end;

    DM.SQLCupomItem.Append;
    DM.SQLCupomItemCUPOA13ID.Value         := DM.CodNextCupom;
    DM.SQLCupomItemCPITIPOS.Value          := FormTelaItens.SQLItensVendaTempNUMITEM.Value;
    DM.SQLCupomItemPRODICOD.Value          := FormTelaItens.SQLItensVendaTempCODIGO.Value;
    DM.SQLCupomItemCPITCSTATUS.Value       := 'A';

    if FormTelaItens.SQLItensVendaTempTROCA.Value <> 'S' then
      DM.SQLCupomItemCPITN3QTD.Value       := FormTelaItens.SQLItensVendaTempQUANTIDADE.Value
    else
      DM.SQLCupomItemCPITN3QTDTROCA.Value  := FormTelaItens.SQLItensVendaTempQUANTIDADE.Value;

    if VlrDesc > 0 then
      Dm.SQLCupomItemCPITN2VLRDESCSOBTOT.AsFloat := VlrDesc;

    if Dm.SQLCupomItemCPITN2VLRDESCSOBTOT.AsVariant = null then
      Dm.SQLCupomItemCPITN2VLRDESCSOBTOT.AsVariant := 0;

    DM.SQLCupomItemCPITN3VLRUNIT.Value     := FormTelaItens.SQLItensVendaTempVLRUNITBRUT.Value -
                                              (FormTelaItens.SQLItensVendaTempVLRDESC.Value / FormTelaItens.SQLItensVendaTempQUANTIDADE.Value )-
                                              VlrDesc;
    DM.SQLCupomItemCPITN3VLRCUSTUNIT.Value := 0;

    if FormTelaItens.SQLItensVendaTempVLRDESC.Value > 0 then
      DM.SQLCupomItemCPITN2DESC.Value := FormTelaItens.SQLItensVendaTempVLRDESC.Value;

    //O DESCONTO EST� SENDO APLICADO NOVAMENTE POIS PODE SER DADO DESCONTO NO TOTAL DA VENDA
    // E J� TER DESCONTO NO ITEM

    if (VlrDesc > 0) and (LblValorDescontoAcrescimo.Caption = 'DESCONTO') and (ValorDescontoAcrescimo.Value > 0 )then
      DM.SQLCupomItemCPITN2DESC.Value := DM.SQLCupomItemCPITN2DESC.Value + VlrDesc
    else
      DM.SQLCupomItemCPITN2DESC.Value := DM.SQLCupomItemCPITN2DESC.Value;

    // CALCULA O VALOR DE LUCRO DO PRODUTO
    if FormTelaItens.SQLItensVendaTempVLRCUSTO.Value > 0 then
      DM.SQLCupomItemCPITN3VLRUNITLUCR.Value :=  DM.SQLCupomItemCPITN3VLRUNIT.Value - FormTelaItens.SQLItensVendaTempVLRCUSTO.Value
    else
      DM.SQLCupomItemCPITN3VLRUNITLUCR.Value := 0;

    DM.SQLCupomItemCOITN2ICMSALIQ.Value    := 0;
    if FormTelaItens.SQLItensVendaTempVENDICOD.AsVariant <> Null then
      if FormTelaItens.SQLItensVendaTempVENDICOD.AsInteger > 0 then
        DM.SQLCupomItemVENDICOD.Value := FormTelaItens.SQLItensVendaTempVENDICOD.Value
    else
      if VendedorVenda > 0 then
        DM.SQLCupomItemVENDICOD.Value := VendedorVenda;

    DM.SQLCupomItemPENDENTE.Value := 'S';
    DM.SQLCupomItemREGISTRO.Value := Now;
    TRY
      DM.SQLCupomItem.Post;

      if (DM.SQLTerminalAtivoTERMCMOVESTOQUE.Value <> 'N') and
         (SQLRecCount('ITENSDEVOLUCAOTEMP', 'where TERMICOD = ' + IntToStr(TerminalAtual))=0) then
        begin
          {LblInstrucoes.Caption := 'GERANDO MOVIMENTO DE ESTOQUE DOS ITENS...' ;
          LblInstrucoes.Refresh ;}

          if (FormTelaItens.SQLItensVendaTempTROCA.Value <> 'S')  then
            GravaMovimentoEstoque(DM.SQLProduto,
                                  DM.SQLProdutoFilho,
                                  DM.SQLProdutoSaldo,
                                  StrToInt(EmpresaPadrao),//Empresa
                                  FormTelaItens.SQLItensVendaTempCODIGO.Value,//Produto
                                  DM.SQLConfigVendaOPESICODCUPOM.Value,//Operacao
                                  FormTelaItens.SQLItensVendaTempQUANTIDADE.Value,//Quantidade
                                  'S',//ENTRADA/SAIDA
                                  FormatDateTime('mm/dd/yyyy', Now),
                                  FormTelaItens.SQLItensVendaTempVLRUNITBRUT.AsString,
                                  'CUPOM',
                                  DM.CodNextCupom,
                                  '')
          else
            GravaMovimentoEstoque(DM.SQLProduto,
                                  DM.SQLProdutoFilho,
                                  DM.SQLProdutoSaldo,
                                  StrToInt(EmpresaPadrao),//Empresa
                                  FormTelaItens.SQLItensVendaTempCODIGO.Value,//Produto
                                  DM.SQLConfigVendaOPESICODTROCA.Value,//Operacao
                                  FormTelaItens.SQLItensVendaTempQUANTIDADE.Value,//Quantidade
                                  'E',//ENTRADA/SAIDA
                                  FormatDateTime('mm/dd/yyyy', Now),
                                  FormTelaItens.SQLItensVendaTempVLRUNITBRUT.AsString,
                                  'CUPOM',
                                  DM.CodNextCupom,
                                  '');
        end;
    EXCEPT
      on E: Exception do
      begin
        Informa('Problemas ao gravar o item ' + FormTelaItens.SQLItensVendaTempNUMITEM.AsString + ' do Cupom:' + #13 + E.Message);
      end;
    END;

    // Grava Nro de Serie
    if FormTelaItens.SQLItensVendaTempNROSERIE.AsString <> '' then
      GravaSaidaNroSerieProduto(FormTelaItens.SQLItensVendaTempNROSERIE.AsString,
                                FormTelaItens.SQLItensVendaTempCODIGO.AsString,
                                'I',
                                EmpresaPadrao,
                                ClienteVenda,
                                DM.CodNextCupom,
                                '',
                                '',
                                '');

    FormTelaItens.SQLItensVendaTemp.Next;
    Inc(i);
  end;
end;

function TFormTelaFechamentoVenda.GravarItensRetorno : boolean;
begin
  i := 1 ;

  if TotalRetorno > 0 then
  begin
    FormTelaItens.SQLItensRetornoTemp.Close ;
    FormTelaItens.SQLItensRetornoTemp.MacroByName('MCliente').Value := 'CLIENTE ="' + ClienteVenda + '"' ;
    FormTelaItens.SQLItensRetornoTemp.Open ;
    FormTelaItens.SQLItensRetornoTemp.First ;

    DM.SQLCupomItemRetorno.Close ;
    DM.SQLCupomItemRetorno.MacroByName('MFiltro').Value := 'CUPOA13ID is null' ;
    DM.SQLCupomItemRetorno.Open ;

    while not FormTelaItens.SQLItensRetornoTemp.EOF do
    begin
      LblInstrucoes.Caption := 'GRAVANDO ITENS DE RETORNO DO CUPOM' + Pontos(i) ;
      LblInstrucoes.Refresh ;

      DM.SQLCupomItemRetorno.Append ;
      DM.SQLCupomItemRetornoCUPOA13ID.Value     := DM.CodNextCupom ;
      DM.SQLCupomItemRetornoCPIRIPOS.Value      := FormTelaItens.SQLItensRetornoTempNUMITEM.Value ;
      DM.SQLCupomItemRetornoPRODICOD.Value      := FormTelaItens.SQLItensRetornoTempCODIGO.Value ;
      DM.SQLCupomItemRetornoCPIRN3QTD.Value     := FormTelaItens.SQLItensRetornoTempQUANTIDADE.Value ;
      DM.SQLCupomItemRetornoCPIRN3VLRUNIT.Value := FormTelaItens.SQLItensRetornoTempVLRUNITBRUT.Value ;
      DM.SQLCupomItemRetornoPENDENTE.Value      := 'S' ;
      DM.SQLCupomItemRetornoREGISTRO.Value      := Now ;
      DM.SQLCupomItemRetorno.Post ;

      if (DM.SQLTerminalAtivoTERMCMOVESTOQUE.Value <> 'N') then
        begin
          {LblInstrucoes.Caption := 'GERANDO MOVIMENTO DE ESTOQUE ITENS RETORNO...' ;
          LblInstrucoes.Refresh ;}

          GravaMovimentoEstoque(DM.SQLProduto,
                                DM.SQLProdutoFilho,
                                DM.SQLProdutoSaldo,
                                StrToInt(EmpresaPadrao),//Empresa
                                FormTelaItens.SQLItensRetornoTempCODIGO.Value,//Produto
                                DM.SQLConfigVendaOPESICODRETORNO.Value,//Operacao
                                FormTelaItens.SQLItensRetornoTempQUANTIDADE.Value,//Quantidade
                                'E',//ENTRADA/SAIDA
                                FormatDateTime('mm/dd/yyyy', Now),
                                FormTelaItens.SQLItensRetornoTempVLRUNITBRUT.AsString,
                                'CUPOM',
                                DM.CodNextCupom,
                                '') ;
        end ;

      FormTelaItens.SQLItensRetornoTemp.Next ;
      Inc(i) ;
    end ;
    //APAGAR ITENS RETORNO
    DM.SQLTemplate.Close ;
    DM.SQLTemplate.SQL.Clear ;
    DM.SQLTemplate.SQL.Add('delete from ITENSRETORNOTEMP') ;
    DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
    DM.SQLTemplate.ExecSQL ;
  end ;
end ;

function TFormTelaFechamentoVenda.GravarItensDevolucao: boolean ;
var
  Valor      : double ;
  ProxCodRec : integer ;
  ContasRec  : string ;
begin
  i := 1 ;
  if SQLRecCount('ITENSDEVOLUCAOTEMP', 'where TERMICOD = ' + IntToStr(TerminalAtual)) > 0 then
  begin
    FormTelaItens.SQLItensDevolucaoTemp.Close ;
    FormTelaItens.SQLItensDevolucaoTemp.MacroByName('MCliente').Value := 'CLIENTE ="' + ClienteVenda + '"' ;
    FormTelaItens.SQLItensDevolucaoTemp.Open ;
    FormTelaItens.SQLItensDevolucaoTemp.First ;

    Valor := 0 ;
    while not FormTelaItens.SQLItensDevolucaoTemp.EOF do
    begin
      LblInstrucoes.Caption := 'GRAVANDO ITENS DE RETORNO DO CUPOM' + Pontos(i) ;
      LblInstrucoes.Refresh ;

      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('insert into CUPOMITEMDEVOLUCAO') ;
      DM.SQLTemplate.SQL.Add('(CUPOA13ID, CPIDIPOS, PRODICOD, CPIDN3QTD, ') ;
      DM.SQLTemplate.SQL.Add('CPIDN3VLRUNIT, PENDENTE, REGISTRO)') ;
      DM.SQLTemplate.SQL.Add('values (') ;
      DM.SQLTemplate.SQL.Add('"' + DM.CodNextCupom + '", ') ;{CUPOA13ID}
      DM.SQLTemplate.SQL.Add(FormTelaItens.SQLItensDevolucaoTempNUMITEM.AsString + ', ') ;{CPITIPOS}
      DM.SQLTemplate.SQL.Add(FormTelaItens.SQLItensDevolucaoTempCODIGO.AsString + ', ') ;{PRODICOD}
      DM.SQLTemplate.SQL.Add(FormTelaItens.SQLItensDevolucaoTempQUANTIDADE.AsString + ', ') ;{CPITN3QTD}
      DM.SQLTemplate.SQL.Add(ConvFloatToStr(FormTelaItens.SQLItensDevolucaoTempVLRUNITBRUT.Value) + ', ') ;{CPITN3VLRUNIT}
      DM.SQLTemplate.SQL.Add('"S",') ;{PENDENTE}
      DM.SQLTemplate.SQL.Add('"' + FormatDateTime('mm/dd/yyyy hh:mm:ss', Now) + '")') ;{REGISTRO}
      DM.SQLTemplate.ExecSQL ;

      if DM.SQLTerminalAtivoTERMCMOVESTOQUE.Value <> 'N' then
        begin
          {LblInstrucoes.Caption := 'GERANDO MOVIMENTO DE ESTOQUE ITENS DEVOLUCAO' + Pontos(i) ;
          LblInstrucoes.Refresh ;}
          GravaMovimentoEstoque(DM.SQLProduto,
                                DM.SQLProdutoFilho,
                                DM.SQLProdutoSaldo,
                                StrToInt(EmpresaPadrao),//Empresa
                                FormTelaItens.SQLItensDevolucaoTempCODIGO.Value,//Produto
                                DM.SQLConfigVendaOPESICODDEVOL.Value,//Operacao
                                FormTelaItens.SQLItensDevolucaoTempQUANTIDADE.Value,//Quantidade
                                'E',//ENTRADA/SAIDA
                                FormatDateTime('mm/dd/yyyy', Now),
                                FormTelaItens.SQLItensDevolucaoTempVLRUNITBRUT.AsString,
                                'CUPOM',
                                DM.CodNextCupom,
                                '') ;
        end ;

      Valor := Valor + FormTelaItens.SQLItensDevolucaoTempVLRUNITBRUT.Value ;
      FormTelaItens.SQLItensDevolucaoTemp.Next ;
      Inc(i) ;
    end ;

    if DevolucaoAbateConsig then
      begin
        //ABATIMENTO DE CONSIG COM DEVOLUCAO DE MERCADORIAS
        ContasRec := '' ;
        DM.SQLTemplate.Close ;
        DM.SQLTemplate.SQL.Clear ;
        DM.SQLTemplate.SQL.Add('select CTRCA13ID from CONTASRECEBER') ;
        DM.SQLTemplate.SQL.Add('where CUPOA13ID = "' + CupoA13IDDevol + '"') ;
        DM.SQLTemplate.SQL.Add('and   CTRCA5TIPOPADRAO = "CONSI"') ;
        DM.SQLTemplate.Open ;
        if not DM.SQLTemplate.Eof then
          ContasRec := DM.SQLTemplate.FieldByName('CTRCA13ID').AsString ;

        if ContasRec <> '' then
          begin
            DM.SQLTemplate.Close ;
            DM.SQLTemplate.SQL.Clear ;
            DM.SQLTemplate.SQL.Add('select Max(RECEICOD) as Contador from RECEBIMENTO') ;
            DM.SQLTemplate.SQL.Add('where CTRCA13ID = "' + ContasRec + '"') ;
            DM.SQLTemplate.Open ;
            if DM.SQLTemplate.FieldByName('Contador').Value > 0 then
              ProxCodRec := DM.SQLTemplate.FieldByName('Contador').Value + 1
            else
              ProxCodRec := 1 ;

            if not SQLRecebimento.Active then
              SQLRecebimento.Open ;

            SQLRecebimento.Append ;
            SQLRecebimentoCTRCA13ID.Value      := ContasRec ;
            SQLRecebimentoRECEICOD.Value       := ProxCodRec ;
            SQLRecebimentoRECEDRECTO.Value     := Date;
            SQLRecebimentoRECEDDATAMOV.Value   := Date;
            SQLRecebimentoRECEN2VLRRECTO.Value := Valor ;
            SQLRecebimentoRECEN2VLRJURO.Value  := 0 ;
            SQLRecebimentoRECEN2VLRMULTA.Value := 0 ;
            SQLRecebimentoRECEN2DESC.Value     := 0 ;
            SQLRecebimentoRECEN2MULTACOBR.Value:= 0 ;
            SQLRecebimentoEMPRICODREC.Value    := StrToInt(EmpresaPadrao) ;
            SQLRecebimentoPENDENTE.Value       := 'S' ;
            SQLRecebimentoREGISTRO.Value       := Now ;
            SQLRecebimentoTERMICODREC.Value    := TerminalAtual ;
            SQLRecebimentoRECEA30HIST.Value    := 'DEVOL.MERC.' ;
            SQLRecebimento.Post ;
            //ATUALIZA TOTAIS CABECALHO CONTAS RECEBER
            AtualizaTotaisCabecalhoContasReceber(ContasRec) ;
            //ATUALIZA TOTAIS CABECALHO CUPOM CONSIGNACAO
            AtualizaDataQuitacaoCupomConsignado(CupoA13IDDevol) ;
          end ;
        //ABATIMENTO DE CONSIG COM DIF.DE PRODUTOS QUE N�O FORAM DEVOLVIDOS
        SQLParcelasVistaVendaTemp.First ;
        while not SQLParcelasVistaVendaTemp.Eof do
          begin
            DM.SQLTemplate.Close ;
            DM.SQLTemplate.SQL.Clear ;
            DM.SQLTemplate.SQL.Add('select Max(RECEICOD) as Contador from RECEBIMENTO') ;
            DM.SQLTemplate.SQL.Add('where CTRCA13ID = "' + ContasRec + '"') ;
            DM.SQLTemplate.Open ;
            if DM.SQLTemplate.FieldByName('Contador').Value > 0 then
              ProxCodRec := DM.SQLTemplate.FieldByName('Contador').Value + 1
            else
              ProxCodRec := 1 ;

            if not SQLRecebimento.Active then
              SQLRecebimento.Open ;

            SQLRecebimento.Append ;
            SQLRecebimentoCTRCA13ID.Value      := ContasRec ;
            SQLRecebimentoRECEICOD.Value       := ProxCodRec ;
            SQLRecebimentoRECEDRECTO.Value     := Date ;
            SQLRecebimentoRECEDDATAMOV.Value   := Date ;
            SQLRecebimentoRECEN2VLRRECTO.Value := SQLParcelasVistaVendaTempVALORPARC.Value ;
            SQLRecebimentoRECEN2VLRJURO.Value  := 0 ;
            SQLRecebimentoRECEN2VLRMULTA.Value := 0 ;
            SQLRecebimentoRECEN2DESC.Value     := 0 ;
            SQLRecebimentoRECEN2MULTACOBR.Value:= 0 ;
            SQLRecebimentoEMPRICODREC.Value    := StrToInt(EmpresaPadrao) ;
            SQLRecebimentoPENDENTE.Value       := 'S' ;
            SQLRecebimentoREGISTRO.Value       := Now ;
            SQLRecebimentoTERMICODREC.Value    := TerminalAtual ;
            SQLRecebimentoRECEA30HIST.Value    := SQLParcelasVistaVendaTempNumerarioLookup.Value ;
            SQLRecebimento.Post ;
            //ATUALIZA TOTAIS CABECALHO CONTAS RECEBER
            AtualizaTotaisCabecalhoContasReceber(ContasRec) ;

            SQLParcelasVistaVendaTemp.Next ;
          end ;
      end ;

    //APAGAR ITENS DEVOLUCAO
    DM.SQLTemplate.Close ;
    DM.SQLTemplate.SQL.Clear ;
    DM.SQLTemplate.SQL.Add('delete from ITENSDEVOLUCAOTEMP') ;
    DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
    DM.SQLTemplate.ExecSQL ;
  end ;
end ;

function TFormTelaFechamentoVenda.GravarNumerarioAVistaCupom : boolean ;
var
  Historico  : string ;
begin

  DM.SQLCupomNumerario.Close ;
  DM.SQLCupomNumerario.MacroByName('MFiltro').Value := 'CUPOA13ID is null' ;
  DM.SQLCupomNumerario.Open ;

  TotalVistaAut := 0 ;
  SQLParcelasVistaVendaTemp.DisableControls ;
  SQLParcelasVistaVendaTemp.First ;
  LblInstrucoes.Caption := 'GRAVANDO NUMERARIO(S) � VISTA...' ;
  LblInstrucoes.Refresh ;

  while not SQLParcelasVistaVendaTemp.EOF do
    begin
      if ((Copy(SQLParcelasVistaVendaTempTIPOPADR.Value,1,3) = 'CHQ') and
         (DM.SQLConfigVendaCFVECDADOSCHQPDV.Value = 'S')) or
         (Copy(SQLParcelasVistaVendaTempTIPOPADR.Value,1,3) = 'CRT') then
        begin

          DM.SQLContasReceber.Close ;
          DM.SQLContasReceber.MacroByName('MFiltro').Value := 'CTRCA13ID is null' ;
          DM.SQLContasReceber.Open ;

          SairRec := false ;
          while not SairRec do
          begin
            if not TblCheques.Active then
              TblCheques.Open ;

            TblCheques.First ;

            //CAPTURAR O ID DO CONTA A RECEBER
            if Copy(SQLParcelasVistaVendaTempTIPOPADR.Value,1,3) = 'CHQ' then
              LblInstrucoes.Caption := 'GERANDO C�DIGO CHEQUES � RECEBER DA PARCELA ' + SQLParcelasVistaVendaTempNROITEM.AsString + '...'
            else
              LblInstrucoes.Caption := 'GERANDO C�DIGO � RECEBER DA PARCELA ' + SQLParcelasVistaVendaTempNROITEM.AsString + '...';

            LblInstrucoes.Refresh ;

            Inc(CodProxCntRecTemp) ;

            CodNextContaRec := FormatFloat('000' ,StrToFloat(EmpresaPadrao)) +
                               FormatFloat('000' ,StrToFloat(IntToStr(TerminalAtual))) +
                               Format('%.6d', [CodProxCntRecTemp]) ;
            CodNextContaRec := CodNextContaRec + DigitVerifEAN(CodNextContaRec)  ;

            DM.SQLContasReceber.Append ;
            DM.SQLContasReceberCTRCA13ID.Value         := CodNextContaRec ;
            DM.SQLContasReceberEMPRICOD.AsString       := EmpresaPadrao ;
            DM.SQLContasReceberTERMICOD.Value          := TerminalAtual ;
            DM.SQLContasReceberCTRCICOD.Value          := CodProxCntRecTemp ;
            DM.SQLContasReceberCLIEA13ID.Value         := ClienteVenda ;
            DM.SQLContasReceberCTRCCSTATUS.Value       := 'A' ;
            DM.SQLContasReceberCTRCINROPARC.Value      := DM.SQLContasReceberCTRCINROPARC.AsInteger + 1;

            if Copy(SQLParcelasVistaVendaTempTIPOPADR.Value,1,4) = 'CRTF' then
              begin
                DiaVctoCartaoCliente := SQLLocate('CLIENTE','CLIEA13ID','CLIEIDIAVCTOCARTAO','"' + ClienteVenda + '"');
                if (DM.SQLConfigCrediarioCFCRIPRZMINCARTAO.AsVariant <> Null) and (DiaVctoCartaoCliente <> '') then
                  begin
                    DecodeDate(Date,Ano,Mes,Dia);

                    if DiaVctoCartaoCliente <> '' then
                      Dia := StrToInt(DiaVctoCartaoCliente);

                    DataVctoCartao := EncodeDate(Ano,Mes,Dia);

                    if StrToInt(DiaVctoCartaoCliente) > Dia then
                      DataVctoCartao := IncMonth(DataVctoCartao,1);

                    if (DataVctoCartao - Date) < DM.SQLConfigCrediarioCFCRIPRZMINCARTAO.AsInteger then
                       DataVctoCartao := IncMonth(DataVctoCartao,1);

                    DM.SQLContasReceberCTRCDVENC.Value := DataVctoCartao;
                  end
                else
                  begin
                    if DiaVctoCartaoCliente <> '' then
                      begin
                        DecodeDate(Date,Ano,Mes,Dia);
                        if DiaVctoCartaoCliente <> '' then
                          Dia := StrToInt(DiaVctoCartaoCliente);

                        DataVctoCartao := EncodeDate(Ano,Mes,Dia);
                        DataVctoCartao := IncMonth(Date,1);

                        DM.SQLContasReceberCTRCDVENC.Value := DataVctoCartao;
                      end
                    else
                      DM.SQLContasReceberCTRCDVENC.Value   := IncMonth(Date,1)
                  end;
              end
            else
              DM.SQLContasReceberCTRCDVENC.Value         := Date;

            DM.SQLContasReceberCTRCN2VLR.Value         := SQLParcelasVistaVendaTempVALORPARC.Value ;
            DM.SQLContasReceberCTRCN2DESCFIN.Value     := 0 ;
            // PLANO DE CONTAS
            if DM.ProcuraRegistro('NUMERARIO',['NUMEICOD'],[SQLParcelasVistaVendaTempNUMEICOD.AsString],1) then
              begin
                if DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString <> '' then
                  DM.SQLContasReceberPLCTA15COD.AsString  := DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString;
                if DM.SQLTemplate.FieldByName('PLCTA15CODDEB').AsString <> '' then
                  DM.SQLContasReceberPLCTA15CODDEBITO.AsString  := DM.SQLTemplate.FieldByName('PLCTA15CODDEB').AsString;
              end;
            DM.SQLContasReceberNUMEICOD.Value          := SQLParcelasVistaVendaTempNUMEICOD.Value ;

            DM.SQLContasReceberCTRCN2TXJURO.Value      := 0 ;
            DM.SQLContasReceberCTRCN2TXMULTA.Value     := 0 ;

            if DM.SQLConfigCrediarioCFCRN2PERCJURATRAS.Value > 0 then
              DM.SQLContasReceberCTRCN2TXJURO.Value := DM.SQLConfigCrediarioCFCRN2PERCJURATRAS.Value ;
            if DM.SQLConfigCrediarioCFCRN2PERCMULATRAS.Value > 0 then
              DM.SQLContasReceberCTRCN2TXMULTA.Value := DM.SQLConfigCrediarioCFCRN2PERCMULATRAS.Value ;

            DM.SQLContasReceberCTRCA5TIPOPADRAO.Value  := SQLParcelasVistaVendaTempTIPOPADR.Value ;
            DM.SQLContasReceberCTRCN2TOTREC.Value      := 0 ;
            DM.SQLContasReceberCTRCN2TOTJUROREC.Value  := 0 ;
            DM.SQLContasReceberCTRCN2TOTMULTAREC.Value := 0 ;
            DM.SQLContasReceberCTRCN2TOTDESCREC.Value  := 0 ;
            DM.SQLContasReceberCUPOA13ID.Value         := DM.CodNextCupom ;
            DM.SQLContasReceberCTRCDEMIS.Value         := Date ;
            if Copy(SQLParcelasVistaVendaTempTIPOPADR.Value,1,3) = 'CHQ' then
              begin
                //DADOS CHEQUE
                DM.SQLContasReceberBANCA5CODCHQ.Value      := TblChequesBANCA5COD.AsString ;
                DM.SQLContasReceberCTRCA10AGENCIACHQ.Value := TblChequesAGENCIA.AsString ;
                DM.SQLContasReceberCTRCA15CONTACHQ.Value   := TblChequesCONTA.AsString ;
                DM.SQLContasReceberCTRCA15NROCHQ.Value     := TblChequesNroCheque.AsString ;
                DM.SQLContasReceberCTRCA60TITULARCHQ.Value := TblChequesTITULAR.AsString ;
                DM.SQLContasReceberCTRCA20CGCCPFCHQ.Value  := '' ;
                if TblChequesDataVecto.AsVariant <> Null then
                  DM.SQLContasReceberCTRCDVENC.AsDateTime  := TblChequesDataVecto.AsDateTime;
                //DM.SQLContasReceberCTRCDDEPOSCHQ.Value     :=
                DM.SQLContasReceberALINICOD.Value          := TblChequesALINICOD.Value ;
                DM.SQLContasReceberPORTICOD.Value          := TblChequesPORTICOD.Value ;
              end;

            // QUITAR PARCELAS DE CARTAO AUTOMATICAMENTE
            if (Copy(SQLParcelasVistaVendaTempTIPOPADR.AsString,1,3) = 'CRT') and
               (SQLParcelasVistaVendaTempTIPOPADR.AsString <> 'CRTF') and
               (DM.SQLConfigVendaCFVECQUITAPARCRT.Value = 'S') then
               begin
                 DM.SQLContasReceberCTRCN2TOTREC.Value      := SQLParcelasVistaVendaTempVALORPARC.Value;
                 DM.SQLContasReceberCTRCDULTREC.AsString    := FormatDateTime('dd/mm/yyyy',Now);
                 if not SQLRecebimento.Active then SQLRecebimento.Open;
                 SQLRecebimento.Append;
                 SQLRecebimento.FieldByName('CTRCA13ID').AsString     := CodNextContaRec;
                 SQLRecebimento.FieldByName('CLIEA13ID').AsString     := ClienteVenda;
                 SQLRecebimento.FieldByName('RECEDRECTO').AsString    := FormatDateTime('dd/mm/yyyy',Now);
                 SQLRecebimento.FieldByName('RECEN2VLRRECTO').AsFloat := SQLParcelasVistaVendaTempVALORPARC.Value;
                 SQLRecebimento.FieldByName('RECEN2VLRJURO').AsFloat  := 0;
                 SQLRecebimento.FieldByName('RECEN2VLRMULTA').AsFloat := 0;
                 SQLRecebimento.FieldByName('RECEN2DESC').AsFloat     := 0;
                 SQLRecebimento.FieldByName('EMPRICODREC').asInteger  := EmpresaCorrente ;
                 SQLRecebimento.FieldByName('RECEICOD').asInteger     := DM.ProximoCodigoUnico('RECEBIMENTO',SQLRecebimento,Nil,1);
                 SQLRecebimento.Post;
               end;

            DM.SQLContasReceberPENDENTE.Value          := 'S' ;
            DM.SQLContasReceberREGISTRO.Value          := Now ;

            TRY
              DM.SQLContasReceber.Post ;
              SairRec := true ;
            EXCEPT
              on E: Exception do
              begin
                DM.SQLContasReceber.Cancel ;

                if Pos('violation', E.Message) = 0 then
                  Informa('Problemas ao gravar o cheque a vista: ' +
                          'Numer�rio..........: ' + SQLParcelasPrazoVendaTempNumerarioLookup.AsString + #13 +
                          'Cupom..............: ' + DM.CodNextCupom + #13 +
                          'Contas Receber(ID).: ' + CodNextContaRec + #13 +
                          'Anote a mensagem abaixo e tecle ENTER para continuar:' + #13 + E.Message) ;
              end ;
            END ;
          end ;
        end
      else
        begin
          DM.SQLCupomNumerario.Append ;
          DM.SQLCupomNumerarioCUPOA13ID.Value   := DM.CodNextCupom ;
          DM.SQLCupomNumerarioNUMEICOD.Value    := SQLParcelasVistaVendaTempNUMEICOD.Value ;
          DM.SQLCupomNumerarioCONMCSTATUS.Value := 'A' ;
          DM.SQLCupomNumerarioCPNMN2VLR.Value   := SQLParcelasVistaVendaTempVALORPARC.Value ;
          DM.SQLCupomNumerarioPENDENTE.Value    := 'S' ;
          DM.SQLCupomNumerarioREGISTRO.Value    := Now ;
          DM.SQLCupomNumerarioCLIEA13ID.Value   := ClienteVenda ;
          if DM.SQLConfigVendaCFVECPARC0ENTRBAIX.Value = 'S' then
            DM.SQLCupomNumerarioCPNMCAUTENT.Value := 'S' ;

          try
            DM.SQLCupomNumerario.Post ;
          except
            on E: Exception do
              begin
                Informa('Problemas ao gravar o numer�rio a vista ' + SQLParcelasVistaVendaTempNumerarioLookup.AsString + ' do Cupom:' + #13 + E.Message) ;
              end ;
          end ;
        end ;

      //GRAVAR MOVIMENTO DE CAIXA NUMERARIO A VISTA
      LblInstrucoes.Caption := 'TOTALIZANDO NUMER�RIO � VISTA NO BOLETIM DO CAIXA...' ;
      LblInstrucoes.Refresh ;
//      SQLNumerario.Close ;
//      SQLNumerario.MacroByName('Filtro').Value := 'NUMEICOD = ' + SQLParcelasVistaVendaTempNUMEICOD.AsString ;
//      SQLNumerario.Open ;
      //MOVIMENTO REF.TOTALIZA��O DE NUM.VISTA NO BOLETIM
      GravaMovimentoCaixa( DM.SQLTotalizadorCaixa,
                           DM.SQLTotalizar,
                           EmpresaPadrao,//WEMPRICOD
                           IntToStr(TerminalAtual),//WTERMICOD
                           FormatDateTime('mm/dd/yyyy', Now),//WMVCIXDMOV
                           SQLParcelasVistaVendaTempNUMEICOD.AsString,//WNUMEICOD
                           'Null',//WOPCXICOD
                           IntToStr(DM.UsuarioAtual),//WUSUAICOD
                           DM.CodNextCupom,//WMVCIXA15DOCORIG
                           SQLParcelasVistaVendaTempVALORPARC.Value,//WMOVICAIXN2VLR
                           0,//WMOVICAIXN2VLRJURO
                           0,//WMOVICAIXN2VLRMULTA
                           0,//WMOVICAIXN2VLRDEC
                           'Null',//WMOVICAIXA6NUMCUPOM
                           'C',//WTIPO
                           'Lancto.p/tot.numer.Bol.Cx.:' + SQLParcelasVistaVendaTempNumerarioLookup.AsString,//WMVCXA255HIST
                           'N',
                           '') ;

      TotalVistaAut := TotalVistaAut + SQLParcelasVistaVendaTempVALORPARC.Value ;

      SQLParcelasVistaVendaTemp.Next ;
    end ;

  if ((TipoPadrao = 'CRD') and (TotalVistaAut > 0)) then
    begin
      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('select * from OPERACAOCAIXA') ;
      DM.SQLTemplate.SQL.Add('where OPCXA5SIGLA = "EVPRZ"') ;
      DM.SQLTemplate.Open ;
      if not DM.SQLTemplate.Eof then
        //MOVIMENTO REF.ENTADA VENDA PRAZO
        GravaMovimentoCaixa( DM.SQLTotalizadorCaixa,
                             DM.SQLTotalizar,
                             EmpresaPadrao,//WEMPRICOD
                             IntToStr(TerminalAtual),//WTERMICOD
                             FormatDateTime('mm/dd/yyyy', Now),//WMVCIXDMOV
                             'Null',//WNUMEICOD
                             DM.SQLTemplate.FieldByName('OPCXICOD').AsString,//WOPCXICOD
                             IntToStr(DM.UsuarioAtual),//WUSUAICOD
                             DM.CodNextCupom,//WMVCIXA15DOCORIG
                             SQLParcelasVistaVendaTempVALORPARC.Value,//WMOVICAIXN2VLR
                             0,//WMOVICAIXN2VLRJURO
                             0,//WMOVICAIXN2VLRMULTA
                             0,//WMOVICAIXN2VLRDEC
                             'Null',//WMOVICAIXA6NUMCUPOM
                             'C',//WTIPO
                             '',//WMVCXA255HIST
                             'N',
                             '')
      else
        Informa('N�o h� nenhuma opera��o de caixa configurada com a sigla de "Entrada Venda a Prazo -> EVPRZ". A entrada n�o ser� registrada no movimento do caixa!') ;

    end;
  if ((Copy(TipoPadrao,1,3) = 'CHQ') and (TotalVistaAut > 0) and (ValorPrazo > 0)) then
    begin
      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('select * from OPERACAOCAIXA') ;
      DM.SQLTemplate.SQL.Add('where OPCXA5SIGLA = "EVCHP"') ;
      DM.SQLTemplate.Open ;
      if not DM.SQLTemplate.Eof then
        //MOVIMENTO REF.ENTADA VENDA PRAZO
        GravaMovimentoCaixa( DM.SQLTotalizadorCaixa,
                             DM.SQLTotalizar,
                             EmpresaPadrao,//WEMPRICOD
                             IntToStr(TerminalAtual),//WTERMICOD
                             FormatDateTime('mm/dd/yyyy', Now),//WMVCIXDMOV
                             'Null',//WNUMEICOD
                             DM.SQLTemplate.FieldByName('OPCXICOD').AsString,//WOPCXICOD
                             IntToStr(DM.UsuarioAtual),//WUSUAICOD
                             DM.CodNextCupom,//WMVCIXA15DOCORIG
                             SQLParcelasVistaVendaTempVALORPARC.Value,//WMOVICAIXN2VLR
                             0,//WMOVICAIXN2VLRJURO
                             0,//WMOVICAIXN2VLRMULTA
                             0,//WMOVICAIXN2VLRDEC
                             'Null',//WMOVICAIXA6NUMCUPOM
                             'C',//WTIPO
                             '',//WMVCXA255HIST
                             'N',
                             '')
      else
        Informa('N�o h� nenhuma Opera��o de Caixa configurada com a sigla de Entrada Venda Cheque a Prazo. Esta entrada n�o aparecer� no Movimento do Caixa!') ;

    end;
  SQLParcelasVistaVendaTemp.First ;
  SQLParcelasVistaVendaTemp.EnableControls ;

end ;

function TFormTelaFechamentoVenda.GravarNumerarioAPrazoCupom : boolean ;
var
  i    : integer ;
  Hora : TDateTime ;
begin
  DM.SQLContasReceber.Close ;
  DM.SQLContasReceber.MacroByName('MFiltro').Value := 'CTRCA13ID is null' ;
  DM.SQLContasReceber.Open ;
  if VendaConsignada then
    begin
      SairRec := false ;
      while not SairRec do
        begin
          //CAPTURAR O ID DO CONTA A RECEBER
          LblInstrucoes.Caption := 'GERANDO C�DIGO DOCUMENTO � RECEBER VENDA CONSIGNADA...';
          LblInstrucoes.Refresh ;

          Inc(CodProxCntRecTemp) ;

          CodNextContaRec := FormatFloat('000' ,StrToFloat(EmpresaPadrao)) +
                             FormatFloat('000' ,StrToFloat(IntToStr(TerminalAtual))) +
                             Format('%.6d', [CodProxCntRecTemp]) ;
          CodNextContaRec := CodNextContaRec + DigitVerifEAN(CodNextContaRec) ;

          DM.SQLContasReceber.Append ;
          DM.SQLContasReceberCTRCA13ID.Value             := CodNextContaRec ;
          DM.SQLContasReceberEMPRICOD.AsString           := EmpresaPadrao ;
          DM.SQLContasReceberTERMICOD.Value              := TerminalAtual ;
          DM.SQLContasReceberCTRCICOD.Value              := CodProxCntRecTemp ;
          DM.SQLContasReceberCLIEA13ID.Value             := ClienteVenda ;
          DM.SQLContasReceberCTRCCSTATUS.Value           := 'A' ;
          DM.SQLContasReceberCTRCINROPARC.Value          := 1 ;
          DM.SQLContasReceberCTRCDVENC.Value             := Date ;
          DM.SQLContasReceberCTRCN2VLR.Value             := ValorTotalVenda.Value ;
          DM.SQLContasReceberCTRCN2DESCFIN.Value         := 0 ;
          DM.SQLContasReceberNUMEICOD.Value              := 999 ;
          if DM.SQLConfigCrediarioCFCRN2PERCJURATRAS.Value > 0 then
            DM.SQLContasReceberCTRCN2TXJURO.Value := DM.SQLConfigCrediarioCFCRN2PERCJURATRAS.Value ;
          if DM.SQLConfigCrediarioCFCRN2PERCMULATRAS.Value > 0 then
            DM.SQLContasReceberCTRCN2TXMULTA.Value := DM.SQLConfigCrediarioCFCRN2PERCMULATRAS.Value ;
          DM.SQLContasReceberCTRCA5TIPOPADRAO.Value      := 'CONSI' ;
          DM.SQLContasReceberCTRCN2TOTREC.Value          := 0 ;
          DM.SQLContasReceberCTRCN2TOTJUROREC.Value      := 0 ;
          DM.SQLContasReceberCTRCN2TOTMULTAREC.Value     := 0 ;
          DM.SQLContasReceberCTRCN2TOTDESCREC.Value      := 0 ;
          DM.SQLContasReceberCUPOA13ID.Value             := DM.CodNextCupom ;
          DM.SQLContasReceberCTRCDEMIS.Value             := Date ;
          DM.SQLContasReceberPENDENTE.Value              := 'S' ;
          DM.SQLContasReceberREGISTRO.Value              := Now ;

          TRY
            DM.SQLContasReceber.Post ;
            SairRec := true ;
          //--------------------------------------\\
          EXCEPT
            on E: Exception do
            begin
              DM.SQLContasReceber.Cancel ;

              if Pos('violation', E.Message) = 0 then
                Informa('Problemas ao gravar o contas receber a prazo: ' +
                        'Numer�rio..........: Consignado' + #13 +
                        'Cupom..............: ' + DM.CodNextCupom + #13 +
                        'Contas Receber(ID).: ' + CodNextContaRec + #13 +
                        'Anote a mensagem abaixo e tecle ENTER para continuar:' + #13 + E.Message) ;
            end ;
          end ;
        end ;
    end
  else
    begin
      SQLParcelasPrazoVendaTemp.DisableControls ;
      SQLParcelasPrazoVendaTemp.First ;
      while not SQLParcelasPrazoVendaTemp.EOF do
        begin
          SairRec := false ;
          while not SairRec do
            begin
              //CAPTURAR O ID DO CONTA A RECEBER
              LblInstrucoes.Caption := 'GERANDO C�DIGO DOCUMENTO � RECEBER DA PARCELA ' + SQLParcelasPrazoVendaTempNROPARCELA.AsString + '...';
              LblInstrucoes.Refresh ;

              Inc(CodProxCntRecTemp) ;

              CodNextContaRec := FormatFloat('000' ,StrToFloat(EmpresaPadrao)) +
                                 FormatFloat('000' ,StrToFloat(IntToStr(TerminalAtual))) +
                                 Format('%.6d', [CodProxCntRecTemp]) ;
              CodNextContaRec := CodNextContaRec + DigitVerifEAN(CodNextContaRec) ;

              DM.SQLContasReceber.Append ;
              DM.SQLContasReceberCTRCA13ID.Value             := CodNextContaRec ;
              DM.SQLContasReceberEMPRICOD.AsString           := EmpresaPadrao ;
              DM.SQLContasReceberTERMICOD.Value              := TerminalAtual ;
              DM.SQLContasReceberCTRCICOD.Value              := CodProxCntRecTemp ;
              DM.SQLContasReceberCLIEA13ID.Value             := ClienteVenda ;
              DM.SQLContasReceberCTRCCSTATUS.Value           := 'A' ;
              DM.SQLContasReceberCTRCINROPARC.Value          := SQLParcelasPrazoVendaTempNROPARCELA.Value ;
              DM.SQLContasReceberCTRCDVENC.Value             := SQLParcelasPrazoVendaTempDATAVENCTO.Value ;
              DM.SQLContasReceberCTRCN2VLR.Value             := SQLParcelasPrazoVendaTempVALORVENCTO.Value ;
              DM.SQLContasReceberCTRCN2DESCFIN.Value         := 0 ;
              // PLANO DE CONTAS
              if DM.ProcuraRegistro('NUMERARIO',['NUMEICOD'],[SQLParcelasPrazoVendaTempNUMEICOD.AsString],1) then
                begin
                  if DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString <> '' then
                    DM.SQLContasReceberPLCTA15COD.AsString  := DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString;
                  if DM.SQLTemplate.FieldByName('PLCTA15CODDEB').AsString <> '' then
                    DM.SQLContasReceberPLCTA15CODDEBITO.AsString  := DM.SQLTemplate.FieldByName('PLCTA15CODDEB').AsString;
                end;

              DM.SQLContasReceberNUMEICOD.Value              := SQLParcelasPrazoVendaTempNUMEICOD.Value ;
              if DM.SQLConfigCrediarioCFCRN2PERCJURATRAS.Value > 0 then
                DM.SQLContasReceberCTRCN2TXJURO.Value := DM.SQLConfigCrediarioCFCRN2PERCJURATRAS.Value ;
              if DM.SQLConfigCrediarioCFCRN2PERCMULATRAS.Value > 0 then
                DM.SQLContasReceberCTRCN2TXMULTA.Value := DM.SQLConfigCrediarioCFCRN2PERCMULATRAS.Value ;
              DM.SQLContasReceberCTRCA5TIPOPADRAO.Value      := SQLParcelasPrazoVendaTempTIPOPADR.Value ;
              DM.SQLContasReceberCTRCN2TOTREC.Value          := 0 ;
              DM.SQLContasReceberCTRCN2TOTJUROREC.Value      := 0 ;
              DM.SQLContasReceberCTRCN2TOTMULTAREC.Value     := 0 ;
              DM.SQLContasReceberCTRCN2TOTDESCREC.Value      := 0 ;
              DM.SQLContasReceberCUPOA13ID.Value             := DM.CodNextCupom;
              DM.SQLContasReceberCTRCDEMIS.Value             := Date;

              if NroCupomFiscal <> '' then
                DM.SQLContasReceberCTRCA30NRODUPLICBANCO.AsString := NroCupomFiscal;

              if DM.SQLTerminalAtivoTPDCICOD.AsVariant <> Null then
                DM.SQLTerminalAtivoTPDCICOD.AsInteger        := DM.SQLTerminalAtivoTPDCICOD.AsInteger;

              DM.SQLContasReceberPENDENTE.Value              := 'S';
              DM.SQLContasReceberREGISTRO.Value              := Now;

              // QUITAR PARCELAS DE CONVENIO AUTOMATICAMENTE
              if (Copy(SQLParcelasPrazoVendaTempTIPOPADR.AsString,1,3) = 'CNV') and
                 (DM.SQLConfigVendaCFVECQUITAPARCONV.Value = 'S') then
                 begin
                   DM.SQLContasReceberCTRCN2TOTREC.Value      := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
                   DM.SQLContasReceberCTRCDULTREC.AsString    := FormatDateTime('dd/mm/yyyy',Now);
                   if not SQLRecebimento.Active then SQLRecebimento.Open;
                   SQLRecebimento.Append;
                   SQLRecebimento.FieldByName('CTRCA13ID').AsString     := CodNextContaRec;
                   SQLRecebimento.FieldByName('CLIEA13ID').AsString     := ClienteVenda;
                   SQLRecebimento.FieldByName('RECEDRECTO').AsString    := FormatDateTime('dd/mm/yyyy',Now);
                   SQLRecebimento.FieldByName('RECEN2VLRRECTO').AsFloat := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
                   SQLRecebimento.FieldByName('RECEN2VLRJURO').AsFloat  := 0;
                   SQLRecebimento.FieldByName('RECEN2VLRMULTA').AsFloat := 0;
                   SQLRecebimento.FieldByName('RECEN2DESC').AsFloat     := 0;
                   SQLRecebimento.FieldByName('EMPRICODREC').asInteger  := EmpresaCorrente ;
                   SQLRecebimento.FieldByName('RECEICOD').asInteger     := DM.ProximoCodigoUnico('RECEBIMENTO',SQLRecebimento,Nil,1);
                   SQLRecebimento.Post;
                 end;

              // QUITAR PARCELAS DE CARTAO AUTOMATICAMENTE
              if (Copy(SQLParcelasPrazoVendaTempTIPOPADR.AsString,1,3) = 'CRT') and
                 (SQLParcelasPrazoVendaTempTIPOPADR.AsString <> 'CRTF') and
                 (DM.SQLConfigVendaCFVECQUITAPARCRT.Value = 'S') then
                 begin
                   DM.SQLContasReceberCTRCN2TOTREC.Value      := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
                   DM.SQLContasReceberCTRCDULTREC.AsString    := FormatDateTime('dd/mm/yyyy',Now);
                   if not SQLRecebimento.Active then SQLRecebimento.Open;
                   SQLRecebimento.Append;
                   SQLRecebimento.FieldByName('CTRCA13ID').AsString     := CodNextContaRec;
                   SQLRecebimento.FieldByName('CLIEA13ID').AsString     := ClienteVenda;
                   SQLRecebimento.FieldByName('RECEDRECTO').AsString    := FormatDateTime('dd/mm/yyyy',Now);
                   SQLRecebimento.FieldByName('RECEN2VLRRECTO').AsFloat := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
                   SQLRecebimento.FieldByName('RECEN2VLRJURO').AsFloat  := 0;
                   SQLRecebimento.FieldByName('RECEN2VLRMULTA').AsFloat := 0;
                   SQLRecebimento.FieldByName('RECEN2DESC').AsFloat     := 0;
                   SQLRecebimento.FieldByName('EMPRICODREC').asInteger  := EmpresaCorrente ;
                   SQLRecebimento.FieldByName('RECEICOD').asInteger     := DM.ProximoCodigoUnico('RECEBIMENTO',SQLRecebimento,Nil,1);
                   SQLRecebimento.Post;
                 end;

              if (Copy(SQLParcelasPrazoVendaTempTIPOPADR.AsString,1,3) = 'CHQ') and
                 (DM.SQLConfigVendaCFVECDADOSCHQPDV.Value = 'S') then
                begin
                  if not TblCheques.Active then
                    TblCheques.Open ;

                  if TblCheques.RecordCount > 0 then
                    begin
                      TblCheques.First ;
                      //ESTE FOR SERVE PARA POSICIONAR A TABLE TEMP NA MESMA PARCELA QUE EST�
                      //SENDO GRAVADA NO CONTAS A RECEBER
                      if SQLParcelasPrazoVendaTempNROPARCELA.Value > 1 then
                        for i := 1 to SQLParcelasPrazoVendaTempNROPARCELA.Value do
                          TblCheques.Next ;

                      //QUITAR CHEQUE AUTOMATICAMENTE
                      if (Copy(SQLParcelasPrazoVendaTempTIPOPADR.AsString,1,3) = 'CHQ') and
                         (DM.SQLConfigVendaCFVECQUITARPARCHQ.Value = 'S') then
                            begin
                              DM.SQLContasReceberCTRCN2TOTREC.Value      := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
                              DM.SQLContasReceberCTRCDULTREC.AsString    := FormatDateTime('dd/mm/yyyy',Now);
                              if not SQLRecebimento.Active then SQLRecebimento.Open;
                              SQLRecebimento.Append;
                              SQLRecebimento.FieldByName('CTRCA13ID').AsString     := CodNextContaRec;
                              SQLRecebimento.FieldByName('CLIEA13ID').AsString     := ClienteVenda;
                              SQLRecebimento.FieldByName('RECEDRECTO').AsString    := FormatDateTime('dd/mm/yyyy',Now);
                              SQLRecebimento.FieldByName('RECEN2VLRRECTO').AsFloat := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
                              SQLRecebimento.FieldByName('RECEN2VLRJURO').AsFloat  := 0;
                              SQLRecebimento.FieldByName('RECEN2VLRMULTA').AsFloat := 0;
                              SQLRecebimento.FieldByName('RECEN2DESC').AsFloat     := 0;
                              SQLRecebimento.FieldByName('EMPRICODREC').asInteger  := EmpresaCorrente ;
                              SQLRecebimento.FieldByName('RECEICOD').asInteger     := DM.ProximoCodigoUnico('RECEBIMENTO',SQLRecebimento,Nil,1); 
                              SQLRecebimento.Post ;
                            end;
                      //DADOS CHEQUE
                      DM.SQLContasReceberBANCA5CODCHQ.Value      := TblChequesBANCA5COD.AsString ;
                      DM.SQLContasReceberCTRCA10AGENCIACHQ.Value := TblChequesAGENCIA.AsString ;
                      DM.SQLContasReceberCTRCA15CONTACHQ.Value   := TblChequesCONTA.AsString ;
                      DM.SQLContasReceberCTRCA15NROCHQ.Value     := TblChequesNroCheque.AsString ;
                      DM.SQLContasReceberCTRCA60TITULARCHQ.Value := TblChequesTITULAR.AsString ;
                      DM.SQLContasReceberCTRCA20CGCCPFCHQ.Value  := '' ;
                      if TblChequesDataVecto.AsVariant <> Null then
                        DM.SQLContasReceberCTRCDVENC.AsDateTime  := TblChequesDataVecto.AsDateTime;

                      //DM.SQLContasReceberCTRCDDEPOSCHQ.Value     :=
                      DM.SQLContasReceberALINICOD.Value          := TblChequesALINICOD.Value ;
                      DM.SQLContasReceberPORTICOD.Value          := TblChequesPORTICOD.Value ;
                    end ;
                end ;

              TRY
                DM.SQLContasReceber.Post ;

                SairRec := true ;
              //--------------------------------------\\
              EXCEPT
                on E: Exception do
                begin
                  DM.SQLContasReceber.Cancel ;

                  if Pos('violation', E.Message) = 0 then
                    Informa('Problemas ao gravar o numer�rio a prazo: ' +
                            'Numer�rio..........: ' + SQLParcelasPrazoVendaTempNumerarioLookup.AsString + #13 +
                            'Cupom..............: ' + DM.CodNextCupom + #13 +
                            'Contas Receber(ID).: ' + CodNextContaRec + #13 +
                            'Anote a mensagem abaixo e tecle ENTER para continuar:' + #13 + E.Message) ;
                end ;
              end ;
            end ;

          SQLParcelasPrazoVendaTemp.Next ;
        end ;
    end ;
end ;

function TFormTelaFechamentoVenda.GravarCadernoCliente : boolean ;
begin
  if (DM.SQLConfigVendaCFVECUSADEBCREDCLI.Value = 'S') then
  begin
    //LANCAMENTO DE CREDITO POR RETORNO
    if (ValorCreditoCaderno > 0) then
      begin
        DM.SQLTemplate.Close ;
        DM.SQLTemplate.SQL.Clear ;
        DM.SQLTemplate.SQL.Add('select Count(*) as Contador') ;
        DM.SQLTemplate.SQL.Add('from CADERNO') ;
        DM.SQLTemplate.SQL.Add('where CLIEA13ID = "' + ClienteVenda + '"') ;
        DM.SQLTemplate.SQL.Add('and   CLCADLANC =  "' + FormatDateTime('mm/dd/yyyy', Date) + '"') ;
        DM.SQLTemplate.Open ;
        if DM.SQLTemplate.FieldByName('Contador').Value > 0 then
          NroIt := DM.SQLTemplate.FieldByName('Contador').Value + 1
        else
          NroIt := 1 ;

        if not SQLCaderno.Active then
          SQLCaderno.Open ;

        SQLCaderno.Append ;
        SQLCadernoCLIEA13ID.Value        := ClienteVenda ;
        SQLCadernoCLCADLANC.Value        := Date ;
        SQLCadernoCLCAICOD.Value         := NroIt ;
        SQLCadernoCLCAN2VLRCREDITO.Value := ValorCreditoCaderno ;
        SQLCadernoCLCAA60HIST.Value      := 'CREDITO RETORNO CONSIGNACAO' ;
        SQLCadernoCLCAN2VLRDEBITO.Value  := 0 ;
        SQLCadernoCUPOA13ID.Value        := DM.CodNextCupom ;
        SQLCadernoPENDENTE.Value         := 'S' ;
        SQLCadernoREGISTRO.Value         := Now ;
        SQLCaderno.Post ;
      end ;
    //LANCAMENTO DE DEBITO
    if (ValorDebitoCaderno > 0) or (ValorCreditoCaderno > 0) then
      begin
        DM.SQLTemplate.Close ;
        DM.SQLTemplate.SQL.Clear ;
        DM.SQLTemplate.SQL.Add('select Count(*) as Contador') ;
        DM.SQLTemplate.SQL.Add('from CADERNO') ;
        DM.SQLTemplate.SQL.Add('where CLIEA13ID = "' + ClienteVenda + '"') ;
        DM.SQLTemplate.SQL.Add('and   CLCADLANC =  "' + FormatDateTime('mm/dd/yyyy', Date) + '"') ;
        DM.SQLTemplate.Open ;
        if DM.SQLTemplate.FieldByName('Contador').Value > 0 then
          NroIt := DM.SQLTemplate.FieldByName('Contador').Value + 1
        else
          NroIt := 1 ;

        if not SQLCaderno.Active then
          SQLCaderno.Open ;

        SQLCaderno.Append ;
        SQLCadernoCLIEA13ID.Value        := ClienteVenda ;
        SQLCadernoCLCADLANC.Value        := Date ;
        SQLCadernoCLCAICOD.Value         := NroIt ;
        SQLCadernoCLCAN2VLRDEBITO.Value  := ValorDebitoCaderno ;
        SQLCadernoCLCAA60HIST.Value      := 'DEBITO PAGTO. VENDA';
        SQLCadernoCLCAN2VLRCREDITO.Value := 0 ;
        SQLCadernoCUPOA13ID.Value        := DM.CodNextCupom ;
        SQLCadernoPENDENTE.Value         := 'S' ;
        SQLCadernoREGISTRO.Value         := Now ;
        SQLCaderno.Post ;
      end ;
    //LANCAMENTO DE CREDITO POR POR SALDO POSITIVO DE RETORNO
    {if (ValorCreditoCaderno > ValorDebitoCaderno) then
      begin
        DM.SQLTemplate.Close ;
        DM.SQLTemplate.SQL.Clear ;
        DM.SQLTemplate.SQL.Add('select Count(*) as Contador') ;
        DM.SQLTemplate.SQL.Add('from CADERNO') ;
        DM.SQLTemplate.SQL.Add('where CLIEA13ID = "' + ClienteVenda + '"') ;
        DM.SQLTemplate.SQL.Add('and   CLCADLANC =  "' + FormatDateTime('mm/dd/yyyy', Date) + '"') ;
        DM.SQLTemplate.Open ;
        if DM.SQLTemplate.FieldByName('Contador').Value > 0 then
          NroIt := DM.SQLTemplate.FieldByName('Contador').Value + 1
        else
          NroIt := 1 ;

        if not SQLCaderno.Active then
          SQLCaderno.Open ;

        SQLCaderno.Append ;
        SQLCadernoCLIEA13ID.Value        := ClienteVenda ;
        SQLCadernoCLCADLANC.Value        := Date ;
        SQLCadernoCLCAICOD.Value         := NroIt ;
        SQLCadernoCLCAN2VLRCREDITO.Value := ValorCreditoCaderno - ValorDebitoCaderno ;
        SQLCadernoCLCAA60HIST.Value      := 'SALDO POSITIVO RETORNO MAIOR SAIDA' ;
        SQLCadernoCLCAN2VLRDEBITO.Value  := 0 ;
        SQLCadernoCUPOA13ID.Value        := DM.CodNextCupom ;
        SQLCadernoPENDENTE.Value         := 'S' ;
        SQLCadernoREGISTRO.Value         := Now ;
        SQLCaderno.Post ;
      end ;}
  end ;
end ;

function  TFormTelaFechamentoVenda.AtualizaCupomOrigemTroca : boolean ;
begin
  if ValorBonusTroca.Value > 0 then
  else
    exit ;

  LblInstrucoes.Caption := 'ATUALIZANDO PRODUTO CUPOM ORIGEM TROCA...' ;
  LblInstrucoes.Refresh ;

  FormTelaItens.SQLItensVendaTemp.DisableControls ;
  FormTelaItens.SQLItensVendaTemp.First ;

  while not FormTelaItens.SQLItensVendaTemp.EOF do
  begin
    if FormTelaItens.SQLItemCupOrigTroca.Locate('PRODICOD', FormTelaItens.SQLItensVendaTempCODIGO.Value, []) then
    begin
      FormTelaItens.SQLItemCupOrigTroca.Edit ;
      FormTelaItens.SQLItemCupOrigTrocaCPITN3QTD.Value := FormTelaItens.SQLItemCupOrigTrocaCPITN3QTD.Value -
                                                          FormTelaItens.SQLItensVendaTempQUANTIDADE.Value ;
      FormTelaItens.SQLItemCupOrigTrocaCPITN3QTDTROCA.Value := FormTelaItens.SQLItensVendaTempQUANTIDADE.Value ;
      FormTelaItens.SQLItemCupOrigTroca.Post ;
    end ;

    FormTelaItens.SQLItensVendaTemp.Next ;
  end ;

  FormTelaItens.SQLItensVendaTemp.First ;
  FormTelaItens.SQLItensVendaTemp.EnableControls ;

  LblInstrucoes.Caption := '' ;
  LblInstrucoes.Refresh ;
end ;

function TFormTelaFechamentoVenda.TemInformacaoPendente : boolean ;
begin
  Result := false ;
  //TESTAR SE TEM CLIENTE
  if (ClienteVenda = '') then
    begin
      EstadoFechVenda := InformandoCliente ;
      PreparaEstadoFech(EstadoFechVenda) ;
      exit ;
    end ;
  if LblCodigoCliente.Caption = ''then
    begin
      Result := true ;
      EstadoFechVenda := InformandoCliente ;
      PreparaEstadoFech(EstadoFechVenda) ;
      exit ;
    end ;
  //TESTAR SE TEM VENDEDOR
  if (VendedorVenda > 0) then
  else
    begin
      Result := true ;
      EstadoFechVenda := InformandoVendedor ;
      PreparaEstadoFech(EstadoFechVenda) ;
      exit ;
    end ;
  if LblNomeVendedor.Caption = ''then
    begin
      Result := true ;
      EstadoFechVenda := InformandoVendedor ;
      PreparaEstadoFech(EstadoFechVenda) ;
      exit ;
    end ;
  //TESTAR SE TEM PLANO
  if (PlanoVenda > 0) then
  else
    begin
      Result := true ;
      EstadoFechVenda := InformandoPlano ;
      PreparaEstadoFech(EstadoFechVenda) ;
      exit ;
    end ;
  if LblNomePlano.Caption = '' then
    begin
      Result := true ;
      EstadoFechVenda := InformandoPlano ;
      PreparaEstadoFech(EstadoFechVenda) ;
      exit ;
    end ;
  //TESTAR SE TEM NUMERARIO VISTA
  if PlanoVistaPrazo(PlanoVenda, SQLPlanoRecebimento, SQLPlanoRecebimentoParcela) = 'VISTA' then
    begin
      if (NumerarioVista > 0) then
      else
        if SQLRecCount('PARCELASVISTAVENDATEMP', 'where TERMICOD = ' + IntToStr(TerminalAtual)) = 0 then
          begin
            Result := true ;
            EstadoFechVenda := InformandoNumerarioVista ;
            PreparaEstadoFech(EstadoFechVenda) ;
            exit ;
          end ;
      //TESTAR SE ALGUMA VALOR AVISTA EST� SEM NUMER�RIO
      SQLParcelasVistaVendaTemp.DisableControls ;
      SQLParcelasVistaVendaTemp.First ;
      while not SQLParcelasVistaVendaTemp.EOF do
        begin
          if SQLParcelasVistaVendaTempNUMEICOD.Value > 0 then
          else begin
            Result := true ;
            EstadoFechVenda := InformandoNumerarioVista ;
            PreparaEstadoFech(EstadoFechVenda) ;
            exit ;
          end ;
          SQLParcelasVistaVendaTemp.Next ;
        end ;
      SQLParcelasVistaVendaTemp.First ;
      SQLParcelasVistaVendaTemp.EnableControls ;
    end ;
  //TESTAR SE TEM NUMERARIO PRAZO
  if PlanoVistaPrazo(PlanoVenda, SQLPlanoRecebimento, SQLPlanoRecebimentoParcela) = 'PRAZO' then
    begin
      if (NumerarioPrazo > 0) then
      else
        if SQLRecCount('PARCELASPRAZOVENDATEMP', 'where TERMICOD = ' + IntToStr(TerminalAtual)) = 0 then
          begin
            Result := true ;
            EstadoFechVenda := InformandoNumerarioPrazo ;
            PreparaEstadoFech(EstadoFechVenda) ;
            exit ;
          end ;

      SQLParcelasPrazoVendaTemp.DisableControls ;
      SQLParcelasPrazoVendaTemp.First ;
      ValorPrazo := 0 ;
      while not SQLParcelasPrazoVendaTemp.EOF do
        begin
          if SQLParcelasPrazoVendaTempNUMEICOD.Value > 0 then
          else begin
            Result := true ;
            EstadoFechVenda := InformandoNumerarioPrazo ;
            PreparaEstadoFech(EstadoFechVenda) ;
            exit ;
          end ;
          SQLParcelasPrazoVendaTemp.Next ;
        end ;
    end ;
end ;

function TFormTelaFechamentoVenda.VerificandoTotalVenda : double ;
var
  TotVista,
  TotPrazo : double ;
begin
  TotVista := 0 ;
  TotPrazo := 0 ;
  SQLParcelasVistaVendaTemp.DisableControls ;
  SQLParcelasVistaVendaTemp.First ;
  while not SQLParcelasVistaVendaTemp.EOF do
  begin
    TotVista := TotVista + SQLParcelasVistaVendaTempVALORPARC.Value ;

    SQLParcelasVistaVendaTemp.Next ;
  end ;

  SQLParcelasVistaVendaTemp.First ;
  SQLParcelasVistaVendaTemp.EnableControls ;

  SQLParcelasPrazoVendaTemp.DisableControls ;
  SQLParcelasPrazoVendaTemp.First ;
  while not SQLParcelasPrazoVendaTemp.EOF do
  begin
    TotPrazo := TotPrazo + SQLParcelasPrazoVendaTempVALORVENCTO.Value ;

    SQLParcelasPrazoVendaTemp.Next ;
  end ;
  SQLParcelasPrazoVendaTemp.First ;
  SQLParcelasPrazoVendaTemp.EnableControls ;

  VerificandoTotalVenda := StrToFloat(FormatFloat('#,##0.00', (TotVista + TotPrazo) - ValorTotalVenda.Value)) ;
end ;

procedure TFormTelaFechamentoVenda.TblTicketDadosVendaNewRecord(DataSet: TDataSet);
begin
  TblTicketDadosVendaQtdeProd.Value  := 0 ;
  TblTicketDadosVendaPrecoProd.Value := 0 ;
  TblTicketDadosVendaTotalProd.Value := 0 ;
  TblTicketDadosVendaTaxaCred.Value  := 0 ;
  TblTicketDadosVendaAcrescimo.Value := 0 ;
  TblTicketDadosVendaDesconto.Value  := 0 ;
end;

procedure TFormTelaFechamentoVenda.AtualizaDadosPlanoNumerario(Sender: TObject);
begin
  if PlanoVenda > 0 then
    begin
      EstadoFechVenda   := InformandoPlano ;
      EntradaDados.text := IntToStr(PlanoVenda) ;
      EntradaDadosKeyDown(Sender, Enter, [ssAlt]);
    end ;

  if (ValorEntrada.Value > 0) and (NumerarioVista > 0) then
    begin
      EstadoFechVenda   := InformandoNumerarioVista ;
      EntradaDados.text := IntToStr(NumerarioVista) ;
      exit ;
    end ;

  if (SQLParcelasPrazoVendaTemp.RecordCount > 0) and (NumerarioPrazo > 0) then
    begin
      EstadoFechVenda   := InformandoNumerarioPrazo ;
      EntradaDados.text := IntToStr(NumerarioPrazo) ;
      EntradaDadosKeyDown(Sender, Enter, [ssAlt]);
    end ;
end ;

function TFormTelaFechamentoVenda.BloquearVenda : boolean ;
var
  MsgBloqueioVenda,
  MotivoBloqueio : string ;
  TipoBloqueio      : integer ;
begin
  Result       := false ;
  TipoBloqueio := 0 ;

  //TESTAR SE CLIENTE TEM MOTIVO DE BLOQUEIO
  MotivoBloqueio := SQLLocate('CLIENTE', 'CLIEA13ID', 'MTBLICOD', '"' + ClienteVenda + '"');
  if MotivoBloqueio <> '' then
    if MotivoBloqueio <> '0' then
      TipoBloqueio := 1 ;

  //TESTAR SE CLIENTE ESTA EM 1 AVISO
  if DM.SQLConfigCrediarioCFCRCBLOQVENDCLI1AV.Value = 'S' then
    begin
      MotivoBloqueio := SQLLocate('CARTAPRIMEIROAVISO', 'CLIEA13ID', 'CLIEA13ID', '"' + ClienteVenda + '"');
      if MotivoBloqueio <> '' then
        if MotivoBloqueio <> '0' then
          TipoBloqueio := 2 ;
    end;

  //TESTAR SE CLIENTE ESTA EM 2 AVISO
  if DM.SQLConfigCrediarioCFCRCBLOQVENDCLI2AV.Value = 'S' then
    begin
      MotivoBloqueio := SQLLocate('CARTASEGUNDOAVISO', 'CLIEA13ID', 'CLIEA13ID', '"' + ClienteVenda + '"');
        if MotivoBloqueio <> '' then
          if MotivoBloqueio <> '0' then
            TipoBloqueio := 3 ;
    end;

  //TESTAR SE CLIENTE ESTA EM SPC
  if DM.SQLConfigCrediarioCFCRCBLOQVENDCLI3AV.Value = 'S' then
    begin
      MotivoBloqueio := SQLLocate('CARTAAVISOSPC', 'CLIEA13ID', 'CLIEA13ID', '"' + ClienteVenda + '"');
        if MotivoBloqueio <> '' then
          if MotivoBloqueio <> '0' then
            TipoBloqueio := 4 ;
    end;

  case TipoBloqueio of
    1 : MsgBloqueioVenda := 'est� Bloqueado' ;
    2 : MsgBloqueioVenda := 'est� em 1 Aviso' ;
    3 : MsgBloqueioVenda := 'est� em 2 Aviso' ;
    4 : MsgBloqueioVenda := 'est� em SPC' ;
  end ;

  if TipoBloqueio > 0 then
    if SQLLocate('USUARIO', 'USUAICOD', 'USUACVENDCLIBLOQ', IntToStr(DM.UsuarioAtual)) <> 'S' then
      begin
        if DM.SQLConfigVendaCFVEA250MSGBLOQ.Value <> '' then
          Informa(DM.SQLConfigVendaCFVEA250MSGBLOQ.Value)
        else
          Informa('Este Cliente ' + MsgBloqueioVenda + '. Esta venda n�o pode ser efetuada !') ;

        Result := true ;
      end
    else
      if not Pergunta('NAO', 'Este Cliente ' + MsgBloqueioVenda + ', deseja vender mesmo assim?') then
        Result := true ;
end ;

procedure TFormTelaFechamentoVenda.IncluirRetornoConsignacao_SaldoCLiente ;
begin
  //SE O SALDO FOR "M E N O R" O SISTEMA DEVERA EXIGIR QUE O USUARIO ESCOLHA
  //PLANO A PRAZO COM ENTRADA, LANCAR O SALDO NA ENTRADA E PARCELAR O RESTANTE
  //FAZENDO UM LANCAMENTO, LANCANDO O VALOR DA VENDA A DEBITO NO
  //CADERNO DO CLIENTE;
  if (TotalRetorno + SaldoCaderno) < ValorTotalVenda.Value then
    begin
      //TESTAR SE O PLANO TEM ENTRADA SE N�O TIVER CANCELAR O FECHAMENTO POIS
      //N�O SER� POSS�VEL LAN�AR O VALOR DO RETORNO SE PLANO N�O TEM PARCELA A VISTA
      while not VerificaSePlanoTemParcelaVista(IntToStr(PlanoVenda)) do
        begin
          Informa('N�o � poss�vel efetuar o fechamento desta venda pois h� ' +
                  'retorno de consigna��o e este valor deve ser lan�ado como ' +
                  'um numer�rio a vista, mas o plano escolhido n�o possui uma parcela ' +
                  '� vista. Selecione um plano que tenha uma parcela a vista!') ;

          Application.CreateForm(TFormTelaConsultaRapidaPlano, FormTelaConsultaRapidaPlano) ;
          FormTelaConsultaRapidaPlano.ShowModal ;
        end ;

      //INFORMAR PLANO
      EstadoFechVenda   := InformandoPlano ;
      EntradaDados.Text := IntToStr(PlanoVenda) ;
      EntradaDadosKeyDown(nil, Enter, [ssAlt]);
      //INFORMAR NUMERARIO DE RETORNO CONSIG.
      EstadoFechVenda   := InformandoNumerarioVista ;
      EntradaDados.Text := IntToStr(NumerarioVista) ;
      EntradaDadosKeyDown(nil, Enter, [ssAlt]) ;
      //INFORMAR VALOR DE RETORNO CONSIG.
      EstadoFechVenda := InformandoValorNumerarioVista ;
      if (TotalRetorno + SaldoCaderno) > ValorEntrada.Value then
        begin
          EntradaDados.Text  := ValorEntrada.Text ;
          ValorDebitoCaderno := ValorEntrada.Value ;
        end
      else
        begin
          EntradaDados.Text  := FloatToStr((TotalRetorno + SaldoCaderno))  ;
          ValorDebitoCaderno := (TotalRetorno + SaldoCaderno) ;
        end ;

      EntradaDadosKeyDown(nil, Enter, [ssAlt]) ;

      TemInformacaoPendente ;
      exit ;
    end ;
end ;

function TFormTelaFechamentoVenda.Pontos(NumPontos : integer) : string ;
var i : integer ;
    Str : string ;
begin
  Str := '' ;
  for  i := 1 to NumPontos do
    Str := Str + '.' ;
  Result := Str ;
end ;

function  TFormTelaFechamentoVenda.GravarOrcamento : boolean ;
begin
  if not DM.SQLPedidoVenda.Active then
    DM.SQLPedidoVenda.Open ;

  LblInstrucoes.Caption := 'GRAVANDO O OR�AMENTO...' ;
  LblInstrucoes.Refresh ;

  DM.SQLPedidoVenda.Append ;
  DM.SQLPedidoVendaEMPRICOD.Value          := StrToInt(EmpresaPadrao) ;
  DM.SQLPedidoVendaVENDICOD.Value          := VendedorVenda ;
  DM.SQLPedidoVendaCLIEA13ID.Value         := ClienteVenda ;
  //DM.SQLPedidoVendaTRANICOD.Value          :=
  DM.SQLPedidoVendaPLRCICOD.Value          := PlanoVenda ;
  DM.SQLPedidoVendaPDVDDEMISSAO.Value      := Date ;
  DM.SQLPedidoVendaPDVDN2VLRFRETE.Value    := FormTelaFechamentoOrcamento.Frete.Value ;
  //DM.SQLPedidoVendaPDVDA30NROPEDCOMP.Value :=
  //DM.SQLPedidoVendaPDVDA30COMPRADOR.Value  :=
  DM.SQLPedidoVendaPDVDCTIPO.Value         := 'O' ;
  DM.SQLPedidoVendaPDVDCSTATUS.Value       := 'A' ;
  if (LblValorDescontoAcrescimo.Caption = 'DESCONTO') then
    DM.SQLPedidoVendaPDVDN2VLRDESC.Value := ValorDescontoAcrescimo.Value ;
  DM.SQLPedidoVendaPDVDN2TOTPROD.Value     := ValorTotalVenda.Value -
                                              VlrTxCrediario.Value +
                                              (VlrBonusTroca + VlrRetConfig_SldCad) ;
  DM.SQLPedidoVendaPDVDN2TOTPED.Value      := ValorTotalVenda.Value -
                                              VlrTxCrediario.Value +
                                              (VlrBonusTroca + VlrRetConfig_SldCad) +
                                              FormTelaFechamentoOrcamento.Frete.Value ;
  DM.SQLPedidoVendaPDVDTOBS.Value          := FormTelaFechamentoOrcamento.Obs.Text ;
  DM.SQLPedidoVendaREGISTRO.Value          := Now ;
  DM.SQLPedidoVendaPENDENTE.Value          := 'S' ;
  DM.SQLPedidoVendaPDVDN2VLRDESCPROM.Value := 0 ;
  DM.SQLPedidoVendaPDVDCTIPOFRETE.Value    := '' ;
  //DM.SQLPedidoVendaPDVDDENTREGA.Value      :=
  //DM.SQLPedidoVendaPDVDINROTALAO.Value     :=
  DM.SQLPedidoVenda.Post ;
  FormTelaFechamentoOrcamento.Destroy ;
end ;

function  TFormTelaFechamentoVenda.GravarItensOrcamento : boolean ;
begin
  i := 1 ;
  if not DM.SQLPedidoVendaItem.Active then
    DM.SQLPedidoVendaItem.Open ;

  FormTelaItens.SQLItensVendaTemp.First ;
  while not FormTelaItens.SQLItensVendaTemp.EOF do
  begin
    LblInstrucoes.Caption := 'GRAVANDO ITENS DO OR�AMENTO' + Pontos(i) ;
    LblInstrucoes.Refresh ;

    DM.SQLPedidoVendaItem.Append ;
    DM.SQLPedidoVendaItemPDVDA13ID.Value       := DM.CodNextOrc ;
    DM.SQLPedidoVendaItemPVITIITEM.Value       := FormTelaItens.SQLItensVendaTempNUMITEM.Value ;
    DM.SQLPedidoVendaItemPRODICOD.Value        := FormTelaItens.SQLItensVendaTempCODIGO.Value ;
    DM.SQLPedidoVendaItemPVITN3QUANT.Value     := FormTelaItens.SQLItensVendaTempQUANTIDADE.Value ;
    DM.SQLPedidoVendaItemPVITN2VLRUNIT.Value   := FormTelaItens.SQLItensVendaTempVLRUNITBRUT.Value ;
    DM.SQLPedidoVendaItemPVITN2PERCDESC.Value  := 0 ;
    DM.SQLPedidoVendaItemPVITN2VLRDESC.Value   := FormTelaItens.SQLItensVendaTempVLRDESC.Value ;
    DM.SQLPedidoVendaItemREGISTRO.Value        := Now ;
    DM.SQLPedidoVendaItemPENDENTE.Value        := 'S' ;
    DM.SQLPedidoVendaItemPDVDA60OBS.Value      := '' ;
    DM.SQLPedidoVendaItemPVITN2PERCCOMIS.Value := 0 ;
    DM.SQLPedidoVendaItemPVITN3QUANTVEND.Value := 0 ;
    if FormTelaItens.SQLItensVendaTempDESCRICAOTEC.AsString <> '' then
      DM.SQLPedidoVendaItemPDVDA255OBS1.AsString := FormTelaItens.SQLItensVendaTempDESCRICAOTEC.AsString;
    DM.SQLPedidoVendaItem.Post ;

    FormTelaItens.SQLItensVendaTemp.Next ;
    Inc(i) ;
  end ;
end ;
function TFormTelaFechamentoVenda.VerificaCartaoCredito : Boolean;
begin
// TESTA CARTAO DE CR�DITO
if (((TemNumerarioCartaoVista) or (TemNumerarioCartaoPrazo))
   and (ProvedorCartao <> '')) or
   ((Copy(TipoPadrao,1,3) = 'CHQ') and (ProvedorCartao <> '')) then
  begin
    SQLParcelasVistaVendaTemp.First;
    ValorCartaoVista := 0;
    while not SQLParcelasVistaVendaTemp.Eof do
      begin
        if (SQLParcelasVistaVendaTempTIPOPADR.AsString = 'CRT') or
            ((Copy(SQLParcelasVistaVendaTempTIPOPADR.AsString,1,3) = 'CHQ')
              and (SQLParcelasVistaVendaTempPRCACCONSCHEQUE.AsString = 'S')) then
          begin
            ValorCartaoVista   := ValorCartaoVista + SQLParcelasVistaVendaTempVALORPARC.AsFloat;
            ParcelaVistaCartao := SQLParcelasVistaVendaTempPRCAA60CARTAO.AsString;
            ProvedorCartao     := SQLParcelasVistaVendaTempPRCAA60CARTAO.AsString;
          end;
        SQLParcelasVistaVendaTemp.Next;
      end;
    ValorCartaoPrazo := 0;
    while not SQLParcelasPrazoVendaTemp.Eof do
      begin
        if (SQLParcelasPrazoVendaTempTIPOPADR.AsString = 'CRT') or
            ((Copy(SQLParcelasPrazoVendaTempTIPOPADR.AsString,1,3) = 'CHQ')
              and (SQLParcelasPrazoVendaTempPRCACCONSCHEQUE.AsString = 'S')) then
          begin
            ValorCartaoPrazo   := ValorCartaoPrazo + SQLParcelasPrazoVendaTempVALORVENCTO.AsFloat;
            ParcelaPrazoCartao := SQLParcelasPrazoVendaTempPRCAA60CARTAO.AsString;
            ProvedorCartao     := SQLParcelasPrazoVendaTempPRCAA60CARTAO.AsString;
          end;
        SQLParcelasPrazoVendaTemp.Next;
      end;
    if ((ParcelaVistaCartao <> '') or (ParcelaPrazoCartao <> '')) and (ProvedorCartao <> '') then
      begin
        TotalCartao := ValorCartaoVista + ValorCartaoPrazo;
        if ProvedorCartao = 'STARFICHE' then
          begin
            if ParcelaVistaCartao <> '' then
              begin
                NomeCartao := ParcelaVistaCartao;
              end
            else
              NomeCartao := ParcelaPrazoCartao;
            while StrToInt(NroCupomFiscal) <= 0 do
              begin
                try
                  NroCupomFiscal := InputBox('Aten��o!','Informe o n�mero do documento fiscal a ser vinculado:','');
                  StrToInt(NroCupomFiscal);
                except
                  NroCupomFiscal := '0';
                end;
              end;
            if GeraArquivoVendaStarFiche('VEND','','','','',NomeCartao,NroCupomFiscal,0,0,0,TotalCartao)  then
              begin
               HoraInicial := Now ;
               HoraInicialStr := FormatDateTime('ss',HoraInicial);
               Tempo := 0;

               while (Tempo < TempoLimite) and (not(AutorizouCartao)) do
                 begin
                   HoraAtual := Now;
                   HoraAtualStr := FormatDateTime('ss',HoraAtual);
                   if StrToInt(HoraAtualStr) < StrToInt(HoraInicialStr) then
                   begin
                     {HoraInicialStr := '0';
                     HoraAtualStr := '1';}
                   end;
                   if (StrToInt(HoraAtualStr)- StrToInt(HoraInicialStr)>= 1) or (StrToInt(HoraAtualStr)- StrToInt(HoraInicialStr)<= -1)then
                     begin
                      Inc(Tempo);
                      if Tempo < TempoLimite + 1 then
                        begin
                           if (Tempo mod TempoIntervalo = 0) and ( Tempo <> TempoLimite) then
                             begin
                              FormTelaFechamentoVenda.BringToFront;
                              if Application.MessageBox('Nenhum Retorno foi encontrado!'+#13+ #13+
                                                     'Poss�veis problemas.............:'+#13+#13+
                                                     '- O software do Provedor de Cart�o de Cr�dito n�o foi instalado !' + #13 +#13+
                                                     '- O software do Provedor de Cart�o de Cr�dito n�o est� ativo !' + #13 + #13+
                                                     '- O diret�rio de troca de arquivos n�o exite !' + #13 + #13+
                                                     '- O software do Provedor de Cart�o de Cr�dito est� aguardando um comando do usu�rio!' + #13 + #13+
                                                     '- O usu�rio cancelou a opera��o !' + #13 + #13+
                                                     'Deseja Continuar ?','Informa��o',MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_YESNO + MB_ICONQUESTION ) = idNO then
                                begin
                                  Tempo := TempoLimite;
                                  FechandoVenda := False;
                                  FinalizacaodeVenda := False;
                                  EstadoFechVendaAnt := '';
                                  EstadoFechVenda    := FinalizandoVenda;
                                  PreparaEstadoFech(EstadoFechVenda);
                                  VerificaCartaoCredito := False;
                                  Application.Restore;
                                end;
                             end;
                           if (AutorizaCartaoStarFiche = 'RETORNORECUSADO') then
                             begin
                               FechandoVenda := False;
                               Tempo := TempoLimite;
                               FinalizacaodeVenda := False;
                               EstadoFechVendaAnt := '';
                               EstadoFechVenda    := FinalizandoVenda;
                               PreparaEstadoFech(EstadoFechVenda);
                               Application.Restore;
                               Application.MessageBox('Opera��o n�o autorizada ou cancelada !' +#13+#13,'Informa��o',MB_OK + MB_ICONERROR);
                               Exit;
                             end;
                           if (AutorizaCartaoStarFiche = 'SEMRETORNO') and (Tempo >= TempoLimite) then
                            begin
                              Application.MessageBox('O tempo limite para esta opera��o foi excedido !' +#13+#13+
                                                     'N�o foi poss�vel autorizar esta Transa��o!'+#13+ #13+
                                                     'Poss�veis problemas.............:'+#13+#13+
                                                     '- O software do Provedor de Cart�o de Cr�dito n�o foi instalado !' + #13 +#13+
                                                     '- O software do Provedor de Cart�o de Cr�dito n�o est� ativo !' + #13 + #13+
                                                     '- O software do Provedor de Cart�o de Cr�dito est� aguardando um comando do usu�rio!' + #13 + #13+
                                                     '- O diret�rio de troca de arquivos n�o exite !' + #13 + #13+
                                                     '- O usu�rio cancelou a opera��o !' + #13 + #13+
                                                     'Para maiores detalhes contate o administrador do sistema...!','Informa��o',MB_OK + MB_ICONERROR);
                              FechandoVenda := False;
                              FinalizacaodeVenda := False;
                              EstadoFechVendaAnt := '';
                              EstadoFechVenda    := FinalizandoVenda;
                              PreparaEstadoFech(EstadoFechVenda);
                              Exit;
                            end;
                        end;
                     end;
                     HoraInicialStr := HoraAtualStr;
                 end;
                VerificaCartaoCredito := True;
              end
            else
              begin
                InformaG('N�o foi poss�vel gerar o arquivo Para Star Fiche, a opera��o ser� cancelada !');
                FechandoVenda := False;
                FinalizacaodeVenda := False;
                EstadoFechVendaAnt := '';
                EstadoFechVenda    := FinalizandoVenda;
                PreparaEstadoFech(EstadoFechVenda);
                Exit;
              end;
          end;
        //********************************************************************//
        //                TRANSA��O COM CART�ES DE CR�DITO                    //
        //********************************************************************//
        if ((Trim(ProvedorCartao) = 'VISANET') or
            (Trim(ProvedorCartao) = 'REDECARD') or
            (Trim(ProvedorCartao) = 'AMEX') or
            (Trim(ProvedorCartao) = 'BANRISUL')or
            (Trim(ProvedorCartao) = 'TECBAN')) then
          begin
            if Ativo then
              begin
                Application.Minimize;
                if (Copy(TipoPadrao,1,3) = 'CHQ') then
                  RetornoCartao :=  LiberaCartao('CHQ',NroCupomFiscal,TotalCartao)
                else
                  RetornoCartao :=  LiberaCartao('CRT',NroCupomFiscal,TotalCartao);
                Result := RetornoCartao.TransacaoAutorizada;
                if not Result then
                  begin
                    FechandoVenda := False;
                    FinalizacaodeVenda := False;
                    EstadoFechVendaAnt := '';
                    EstadoFechVenda    := FinalizandoVenda;
                    PreparaEstadoFech(EstadoFechVenda);
                    Application.Restore;
                    if RetornoCartao.RetornoOperador <> '' then
                      Application.MessageBox(PChar(RetornoCartao.RetornoOperador + #13 + #13),'Informa��o',MB_OK + MB_ICONERROR + MB_SETFOREGROUND + MB_SYSTEMMODAL);
                  end;
              end
            else
              begin
                Application.MessageBox(PChar('O Gerenciador Padr�o n�o est� ativo!' + #13 +'Imposs�vel estabelecer conex�o para efetuar a venda!'),'Informa��o',MB_OK + MB_ICONERROR + MB_SETFOREGROUND + MB_SYSTEMMODAL);
                DeleteText(AdjustPath(SendDirectory) + 'IntPos.001');
                FechandoVenda := False;
                FinalizacaodeVenda := False;
                EstadoFechVendaAnt := '';
                EstadoFechVenda    := FinalizandoVenda;
                PreparaEstadoFech(EstadoFechVenda);
              end;
          end;
        //********************************************************************//
        //          T�RMINO DA TRANSA��O COM CART�ES DE CR�DITO               //
        //********************************************************************//
      end;
  end;
end;
function TFormTelaFechamentoVenda.ImprimeConfissaoDividaNAOFISCAL(Impressora,Porta : String) : Boolean;
begin
  try
    if AbrirPortaNAOFISCAL(Impressora,Porta) then
    if ImprimeTextoFormatado_NAOFISCAL(Impressora,DM.SQLEmpresaEMPRA60NOMEFANT.AsString+chr(10),3,0,0,0,1) then
      begin
        ImprimeTextoFormatado_NAOFISCAL(Impressora,'-----------------------------------------------'+chr(10),2,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,' DOCUMENTO NAO FISCAL'+chr(10),2,0,0,1,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,' CONFISSAO DE DIVIDA '+chr(10),2,0,0,1,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,'Documento: ' + DM.CodNextCupom + chr(10),2,0,0,1,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,'-----------------------------------------------'+chr(10),2,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,'DECLARO PARA OS DEVIDOS FINS QUE RECEBI A(S)'   + chr(10),2,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,'MERCADORIA(S) CONSTANTE(S) NO PRESENTE CUPOM'   + chr(10),2,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,'DE PAGAMENTO(S) PREVISTO(S), BEM COMO AUTORIZO'   + chr(10),2,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,'A EMISSAO DE CARNE(S) DE COBRANCA DECORRENTE(S)'   + chr(10),2,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,'DA PRESENTE COMPRA DE R$ ' + FormatFloat('#,##0.00', ValorPrazo)+ chr(10),2,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,Chr(10),1,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,Chr(10),1,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,'-----------------------------------------------'+chr(10),2,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,LblNomeCliente.Caption,1,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,Chr(10),1,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,Chr(10),1,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,Chr(10),1,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,Chr(10),1,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,Chr(10),1,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,Chr(10),1,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,Chr(10),1,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,Chr(10),1,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,Chr(10),1,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,Chr(10),1,0,0,0,0);
        AcionaGuilhotina_NAOFISCAL(Impressora,1);
      end;
    FecharPortaNAOFISCAL(Impressora);
    ImprimeConfissaoDividaNAOFISCAL := True;
  except
    FecharPortaNAOFISCAL(Impressora);
    ImprimeConfissaoDividaNAOFISCAL := False;
  end;
end;
end.
