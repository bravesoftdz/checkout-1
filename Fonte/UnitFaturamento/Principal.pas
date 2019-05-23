unit Principal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PrincipalTemplate, Menus, ExtCtrls, jpeg, ComCtrls, ToolWin, FormResources,
  VarSys, EWall, DB, ImgList, StdCtrls, DBTables, AdvGlowButton, XPMan,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, dxGDIPlusClasses, RXCtrls;

type
  TFormPrincipal = class(TFormPrincipalTemplate)
    FATUMNArquivos: TMenuItem;
    FATUMNRelatorios: TMenuItem;
    FATUMnCadastroClientes: TMenuItem;
    FATUMnCadastroClientesCadastro: TMenuItem;
    FATUMnCadastroClientesTipodeCliente: TMenuItem;
    FATUMnCadastroClientesProfissoes: TMenuItem;
    FATUMnCadastroClientesMotivoBloqueio: TMenuItem;
    FATUMnSairdoSistema: TMenuItem;
    FATUMnCadastroPortadores: TMenuItem;
    FATUMnCadastroTiposDocumentos: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    FATUMNVendas: TMenuItem;
    FATUMnVendasPedidosVenda: TMenuItem;
    FATUMnVendasNotasFiscais: TMenuItem;
    FATUMNUtilitarios: TMenuItem;
    FATUMnUtilitariosControledeAcesso: TMenuItem;
    FATUMnCadastroSerie: TMenuItem;
    FATUMnTelaConsultaProdutos: TMenuItem;
    FATUMnRelatoriosNotasFiscais: TMenuItem;
    FATUMnRelatoriosNotasFiscaisEmitidas: TMenuItem;
    FATUMnRelatoriosPedidos: TMenuItem;
    FATUMnRelatoriosPedidosListagem: TMenuItem;
    FATUMnRelatoriosPedidosListagemdeItens: TMenuItem;
    MnRelListagemdeItens: TMenuItem;
    MnGeracaodePedidos: TMenuItem;
    MnFATRelEmitidasporCFOP: TMenuItem;
    FATUMnFRETE: TMenuItem;
    MnFATFreteConhecimento: TMenuItem;
    MnFATRELFretes: TMenuItem;
    MnFATRELListagemdeFretes: TMenuItem;
    MnFATFRETEImportacaodeNotas: TMenuItem;
    ConhecimentoSimples1: TMenuItem;
    MnFATCadastroAvalistas: TMenuItem;
    MnFATOSPesquisarOS: TMenuItem;
    MnFATCadastroProdutoCadastro: TMenuItem;
    MnFATCadastroProdutoICMS: TMenuItem;
    MnFATCadastroProdutoICMSporUF: TMenuItem;
    N1: TMenuItem;
    Tabela_Frete: TMenuItem;
    FATServico: TMenuItem;
    MnFATOrdemdeServico: TMenuItem;
    MnFATContratoServico: TMenuItem;
    MnFATVendConsultadeProdutos: TMenuItem;
    MnRotas: TMenuItem;
    MnMixdeCarga: TMenuItem;
    MnListagemAcompanhamentoEntregador: TMenuItem;
    MnTransportadoras: TMenuItem;
    MnVeiculos: TMenuItem;
    MnGeracaoNotas: TMenuItem;
    MnCadastroVisita: TMenuItem;
    MnCadastroRoteiro: TMenuItem;
    MnGeracaoRoteiroPalm: TMenuItem;
    MnObsNotaFiscal: TMenuItem;
    Decretos1: TMenuItem;
    N2: TMenuItem;
    MnConfigurarLayoutNotasparaModoDOS: TMenuItem;
    MnCobrancaFrete: TMenuItem;
    MnOperacaoEstoque: TMenuItem;
    MnPedidoVendaComGrade: TMenuItem;
    N5: TMenuItem;
    MnAgendaTelefonica: TMenuItem;
    MnFornecedores: TMenuItem;
    MNRepresentante: TMenuItem;
    Mecnicos1: TMenuItem;
    N6: TMenuItem;
    OrdensdeServiosMecnicas1: TMenuItem;
    GruposdeExecuodeServio1: TMenuItem;
    ipodeServio1: TMenuItem;
    MnAcompanharTarefascriadaspeloUsuarioAtual: TMenuItem;
    MnGerenciarTarefas: TMenuItem;
    MnAdicionarTarefas: TMenuItem;
    MnConfigPopLembreteTarefa: TMenuItem;
    N8: TMenuItem;
    TimeLembrete: TTimer;
    SQLAgendaVer: TQuery;
    MnFATEmitidasporClienteeporIcms: TMenuItem;
    Cidades1: TMenuItem;
    N9: TMenuItem;
    OrdensdeSer1: TMenuItem;
    Mecnicas1: TMenuItem;
    RelatoriosdeOrdensEfet1: TMenuItem;
    abeladeConversodeCSTdoICMS1: TMenuItem;
    abeladeConversodeCSTPISeCOFINS1: TMenuItem;
    N7: TMenuItem;
    DigitaoConhecimentosdeFrete1: TMenuItem;
    Conver1: TMenuItem;
    abeladeConversodeCSTdeIPI1: TMenuItem;
    N10: TMenuItem;
    EmissodeConhecimentoEletrnicodeFrete1: TMenuItem;
    MnMixVenda: TMenuItem;
    MnVendedores: TMenuItem;
    bClientes: TAdvGlowButton;
    bProdutos: TAdvGlowButton;
    bEmitirNFE: TAdvGlowButton;
    RxLabel5: TRxLabel;
    MnCaptcaoPedidosMobile: TMenuItem;
    TimerImpressaoTablets: TTimer;
    MnRelMovimentoCaixaFaturamento: TMenuItem;
    procedure FATUMnCadastroClientesCadastroClick(Sender: TObject);
    procedure FATUMnCadastroClientesTipodeClienteClick(Sender: TObject);
    procedure FATUMnCadastroBancosClick(Sender: TObject);
    procedure FATUMnCadastroTiposDocumentosClick(Sender: TObject);
    procedure FATUMnCadastroPortadoresClick(Sender: TObject);
    procedure FATUMnUtilitariosControledeAcessoClick(Sender: TObject);
    procedure FATUMnVendasPedidosVendaClick(Sender: TObject);
    procedure FATUMnVendasNotasFiscaisClick(Sender: TObject);
    procedure FATUMnCadastroSerieClick(Sender: TObject);
    procedure FATUMnSairdoSistemaClick(Sender: TObject);
    procedure FATUMnRelatoriosPedidosListagemClick(Sender: TObject);
    procedure FATUMnRelatoriosPedidosListagemdeItensClick(Sender: TObject);
    procedure FATUMnRelatoriosNotasFiscaisEmitidasClick(Sender: TObject);
    procedure MnRelListagemdeItensClick(Sender: TObject);
    procedure MnGeracaodePedidosClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MnFATRelEmitidasporCFOPClick(Sender: TObject);
    procedure MnFATFreteConhecimentoClick(Sender: TObject);
    procedure MnFATRELListagemdeFretesClick(Sender: TObject);
    procedure MnFATFRETEImportacaodeNotasClick(Sender: TObject);
    procedure ConhecimentoSimples1Click(Sender: TObject);
    procedure MnFATCadastroAvalistasClick(Sender: TObject);
    procedure MnFATOSPesquisarOSClick(Sender: TObject);
    procedure FATUMnCadastroClientesMotivoBloqueioClick(Sender: TObject);
    procedure FATUMnCadastroClientesProfissoesClick(Sender: TObject);
    procedure MnFATCadastroProdutoCadastroClick(Sender: TObject);
    procedure MnFATCadastroProdutoICMSClick(Sender: TObject);
    procedure MnFATCadastroProdutoICMSporUFClick(Sender: TObject);
    procedure Tabela_FreteClick(Sender: TObject);
    procedure MnFATOrdemdeServicoClick(Sender: TObject);
    procedure MnFATContratoServicoClick(Sender: TObject);
    procedure MnFATVendConsultadeProdutosClick(Sender: TObject);
    procedure MnRotasClick(Sender: TObject);
    procedure MnMixdeCargaClick(Sender: TObject);
    procedure MnListagemAcompanhamentoEntregadorClick(Sender: TObject);
    procedure MnTransportadorasClick(Sender: TObject);
    procedure MnVeiculosClick(Sender: TObject);
    procedure MnGeracaoNotasClick(Sender: TObject);
    procedure MnCadastroVisitaClick(Sender: TObject);
    procedure MnCadastroRoteiroClick(Sender: TObject);
    procedure MnGeracaoRoteiroPalmClick(Sender: TObject);
    procedure MnObsNotaFiscalClick(Sender: TObject);
    procedure Decretos1Click(Sender: TObject);
    procedure MnConfigurarLayoutNotasparaModoDOSClick(Sender: TObject);
    procedure MnCobrancaFreteClick(Sender: TObject);
    procedure MnOperacaoEstoqueClick(Sender: TObject);
    procedure MnPedidoVendaComGradeClick(Sender: TObject);
    procedure MnAgendaTelefonicaClick(Sender: TObject);
    procedure MnFornecedoresClick(Sender: TObject);
    procedure MNRepresentanteClick(Sender: TObject);
    procedure Mecanica1Click(Sender: TObject);
    procedure OrdensdeServiosMecnicas1Click(Sender: TObject);
    procedure GruposdeExecuodeServio1Click(Sender: TObject);
    procedure Mecnicos1Click(Sender: TObject);
    procedure ipodeServio1Click(Sender: TObject);
    procedure MnAcompanharTarefascriadaspeloUsuarioAtualClick(
      Sender: TObject);
    procedure MnGerenciarTarefasClick(Sender: TObject);
    procedure MnAdicionarTarefasClick(Sender: TObject);
    procedure MnConfigPopLembreteTarefaClick(Sender: TObject);
    procedure TimeLembreteTimer(Sender: TObject);
    procedure MnFATEmitidasporClienteeporIcmsClick(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure OrdensdeSer1Click(Sender: TObject);
    procedure abeladeConversodeCSTdoICMS1Click(Sender: TObject);
    procedure abeladeConversodeCSTPISeCOFINS1Click(Sender: TObject);
    procedure DigitaoConhecimentosdeFrete1Click(Sender: TObject);
    procedure abeladeConversodeCSTdeIPI1Click(Sender: TObject);
    procedure EmissodeConhecimentoEletrnicodeFrete1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnF4Click(Sender: TObject);
    procedure btnF11Click(Sender: TObject);
    procedure BTNnFEClick(Sender: TObject);
    procedure MnMixVendaClick(Sender: TObject);
    procedure MnVendedoresClick(Sender: TObject);
    procedure bClientesClick(Sender: TObject);
    procedure bProdutosClick(Sender: TObject);
    procedure bEmitirNFEClick(Sender: TObject);
    procedure TimerImpressaoTabletsTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MnRelMovimentoCaixaFaturamentoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses CadastroCliente, CadastroTemplate, CadastroTipoCliente, CadastroBanco,
  CadastroTipoDocumento, CadastroPortador, CadastroClasse, CadastroPedidoVenda,
  CadastroNotaFiscal, CadastroSerie, UnSoundPlay,
  UnitLibrary, DataModulo, TelaConsultaProduto, RelatorioNotaFiscalEmitida,
  RelatorioItensPedidoVenda, RelatorioPedidoVenda, RelatorioItensNotaFiscal,
  TelaGeracaoPedido, RelatorioNotaFiscalEmitidaPorCFOP, CadastroFrete,
  RelatorioListagemFrete, TelaConhecimento, CadastroFreteSimples, CadastroAvalista, CadastroProdutos,
  CadastroMotivoBloqueio, CadastroProfissao, CadastroIcmsUf, CadastroICMS,
  TelaConfiguracaoLayOutNF, CadastroTabelaFrete, CadastroContrato,
  CadastroRota, RelatorioMixCarga, TelaConfigPedidos,
  RelatorioPedidoVendaEntrega, CadastroTransportadora, CadastroVeiculo,
  TelaGeracaoNotaFiscal, CadastroVisita, TelaSaldoPorLote, CadastroRoteiro,
  TelaGeracaoRoteiroPalm, CadastroObsNotaFiscal, CadastroDecreto,
  RelatorioNotaFiscalItensCobrancaFrete, CadastroOperacoesEstoque,
  CadastroPedidoVendaComGrade, CadastroAgendaTelefonica, CadastroFornecedor,
  CadastroRepresentante, CadastroMecanicos, CadastroMecOrdem,
  CadastroMecExecutaEm, CadastroMecVeiculosdoCliente,
  CadastroMecTipoServico, TelaLembreteTarefa2, TelaLembreteTarefa,
  TelaCadastroTarefa, ConfigPopUp, RelatorioNotaFiscalEmitidaPorICMS,
  CadastroCidade, CadastroGraficaOrdem, CadastroCSTConverte,
  CadastroCSTPisCofinsConverter, CadastroConhecimento,
  CadastroCSTConverteIPI, CadastroFreteCTE, CadastroMixVenda,
  CadastroVendedor, RelatorioMovimentoCaixaFaturamento;

{$R *.DFM}

procedure TFormPrincipal.FATUMnCadastroClientesCadastroClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroCliente,'FormCadastroCliente',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.FATUMnCadastroClientesTipodeClienteClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTipoCliente,'FormCadastroTipoCliente',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.FATUMnCadastroBancosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroBanco, 'FormCadastroBanco',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end ;

procedure TFormPrincipal.FATUMnCadastroTiposDocumentosClick(Sender: TObject);
begin
  inherited ;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTipoDocumento, 'FormCadastroTipoDocumento',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end ;

procedure TFormPrincipal.FATUMnCadastroPortadoresClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroPortador, 'FormCadastroPortador',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.FATUMnUtilitariosControledeAcessoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroClasse, 'FormCadastroClasse',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.FATUMnVendasPedidosVendaClick(Sender: TObject);
begin
  inherited;
  dm.VendedorAtualPedidos := 0;
  dm.RotaAtualPedidos     := 0;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroPedidoVenda, 'FormCadastroPedidoVenda',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.FATUMnVendasNotasFiscaisClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroNotaFiscal, 'FormCadastroNotaFiscal',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.FATUMnCadastroSerieClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroSerie, 'FormCadastroSerie',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.FATUMnSairdoSistemaClick(Sender: TObject);
begin
  inherited;
  Application.Terminate;
  Destroy;
end;

procedure TFormPrincipal.FATUMnRelatoriosPedidosListagemClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioPedidoVenda, 'FormRelatorioPedidoVenda',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.FATUMnRelatoriosPedidosListagemdeItensClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioItensPedidoVenda, 'FormRelatorioItensPedidoVenda',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.FATUMnRelatoriosNotasFiscaisEmitidasClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioNotaFiscalEmitida, 'FormRelatorioNotaFiscalEmitida',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnRelListagemdeItensClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioItensNotaFiscal, 'FormRelatorioItensNotaFiscal',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnGeracaodePedidosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaGeracaoPedido, 'FormTelaGeracaoPedido',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.FormActivate(Sender: TObject);
begin
  inherited;
  Dm.SQLConfigGeral.Close;
  Dm.SQLConfigGeral.Open;
  Dm.SQLConfigVenda.Close;
  Dm.SQLConfigVenda.Open;
  Dm.SQLUsuario.Close;
  Dm.SQLUsuario.Open;
  Dm.SQLTerminalAtivo.Close;
  Dm.SQLTerminalAtivo.Open;
end;

procedure TFormPrincipal.MnFATRelEmitidasporCFOPClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioNotaFiscalEmitidaPorCFOP, 'FormRelatorioNotaFiscalEmitidaPorCFOP',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFATFreteConhecimentoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroFrete, 'FormCadastroFrete',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFATRELListagemdeFretesClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioListagemFrete, 'FormRelatorioListagemFrete',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFATFRETEImportacaodeNotasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaConhecimento, 'FormTelaConhecimento',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.ConhecimentoSimples1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroFreteSimples, 'FormCadastroFreteSimples',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFATCadastroAvalistasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroAvalista, 'FormCadastroAvalista',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFATOSPesquisarOSClick(Sender: TObject);
begin
  inherited;
 { if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaPesquisaOS, 'FormTelaPesquisaOS',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);}
end;

procedure TFormPrincipal.FATUMnCadastroClientesMotivoBloqueioClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroMotivoBloqueio, 'FormCadastroMotivoBloqueio',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.FATUMnCadastroClientesProfissoesClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroProfissao, 'FormCadastroProfissao',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFATCadastroProdutoCadastroClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroProduto, 'FormCadastroProduto',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFATCadastroProdutoICMSClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroICMS, 'FormCadastroICMS',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFATCadastroProdutoICMSporUFClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroIcmsUF, 'FormCadastroIcmsUF',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.Tabela_FreteClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTabelaFrete,'FormCadastroTabelaFrete',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFATOrdemdeServicoClick(Sender: TObject);
begin
  inherited;
 { if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroOS, 'FormCadastroOS',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);}
end;

procedure TFormPrincipal.MnFATContratoServicoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroContrato, 'FormCadastroContrato',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFATVendConsultadeProdutosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaConsultaProduto, 'FormTelaConsultaProduto',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnRotasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroRota, 'FormCadastroRota',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnMixdeCargaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioMixCarga, 'FormRelatorioMixCarga',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnListagemAcompanhamentoEntregadorClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioPedidoVendaEntrega, 'FormRelatorioPedidoVendaEntrega',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnTransportadorasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTransportadora, 'FormCadastroTransportadora',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnVeiculosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroVeiculo, 'FormCadastroVeiculo',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnGeracaoNotasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaGeracaoNotasFiscais, 'FormTelaGeracaoNotasFiscais',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCadastroVisitaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroVisita, 'FormCadastroVisita',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCadastroRoteiroClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroRoteiro, 'FormCadastroRoteiro',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnGeracaoRoteiroPalmClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaGeracaoRoteiro, 'FormTelaGeracaoRoteiro',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnObsNotaFiscalClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroObsNotaFiscal, 'FormCadastroObsNotaFiscal',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.Decretos1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroDecreto, 'FormCadastroDecreto',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnConfigurarLayoutNotasparaModoDOSClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaConfiguracaoLayOutNF, 'FormTelaConfiguracaoLayOutNF',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCobrancaFreteClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioNotaFiscalItensCobrancaFrete, 'FormRelatorioNotaFiscalItensCobrancaFrete',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnOperacaoEstoqueClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroOperacoesEstoque, 'FormCadastroOperacoesEstoque',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnPedidoVendaComGradeClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroPedidoVendaComGrade, 'FormCadastroPedidoVendaComGrade',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnAgendaTelefonicaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroAgendaTelefonica,'FormCadastroAgendaTelefonica',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFornecedoresClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroFornecedor,'FormCadastroFornecedor',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MNRepresentanteClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroRepresentante,'FormCadastroRepresentante',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.Mecanica1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroMecOrdem,'FormCadastroMecOrdem',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.OrdensdeServiosMecnicas1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroMecOrdem,'FormCadastroMecOrdem',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.GruposdeExecuodeServio1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroMecExecutaEm,'FormCadastroMecExecutaEm',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.Mecnicos1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroMecanicos,'FormCadastroMecanicos',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.ipodeServio1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroMecTipoServico,'FormCadastroMecTipoServico',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnAcompanharTarefascriadaspeloUsuarioAtualClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    begin
      Application.CreateForm(TFormTelaLembreteTarefa2,FormTelaLembreteTarefa2);
      FormTelaLembreteTarefa2.ShowModal;
    end
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnGerenciarTarefasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    begin
      Application.CreateForm(TFormTelaLembreteTarefa,FormTelaLembreteTarefa);
      FormTelaLembreteTarefa.ShowModal;
    end
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnAdicionarTarefasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    begin
      Application.CreateForm(TFormTelaCadastroTarefa,FormTelaCadastroTarefa);
      FormTelaCadastroTarefa.ShowModal;
    end
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnConfigPopLembreteTarefaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    begin
      Application.CreateForm(TFormConfigPopUp,FormConfigPopUp);
      FormConfigPopUp.ShowModal;
    end
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.TimeLembreteTimer(Sender: TObject);
var AMANHA : STRING;
    Year1, Month1, Day1: Word;
begin
  inherited;
  if DM.SQLPopUPCFGCCEXIBIRPOPTARE.AsString = 'S' then
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

procedure TFormPrincipal.MnFATEmitidasporClienteeporIcmsClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioNotaEmitidaPorICMS,'FormRelatorioNotaEmitidaPorICMS',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.Cidades1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroCidade,'FormCadastroCidade',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.OrdensdeSer1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroGraficaOrdem, 'FormCadastroGraficaOrdem',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.abeladeConversodeCSTdoICMS1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TCadastroCSTConverter, 'CadastroCSTConverter',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.abeladeConversodeCSTPISeCOFINS1Click(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TCadastroCSTPisCofinsConverte, 'CadastroCSTPisCofinsConverte',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.DigitaoConhecimentosdeFrete1Click(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TCadastroConhecimentos, 'CadastroConhecimentos',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.abeladeConversodeCSTdeIPI1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TCadastroCSTConverterIPI, 'CadastroCSTConverterIPI',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.EmissodeConhecimentoEletrnicodeFrete1Click(
  Sender: TObject);
begin
  inherited;
    if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroFreteCTE, 'FormCadastroFreteCTE',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.btn1Click(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroCliente,'FormCadastroCliente',False,False,False,'');
end;

procedure TFormPrincipal.btnF4Click(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroProduto, 'FormCadastroProduto',False,False,False,'');
end;

procedure TFormPrincipal.btnF11Click(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroCliente,'FormCadastroCliente',False,False,False,'')
end;

procedure TFormPrincipal.BTNnFEClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroNotaFiscal, 'FormCadastroNotaFiscal',False,False,False,'');
end;

procedure TFormPrincipal.MnMixVendaClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroMixVenda, 'FormCadastroMixVenda',False,False,True,'');
end;

procedure TFormPrincipal.MnVendedoresClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroVendedor,'FormCadastroVendedor',False,False,False,'')
end;

procedure TFormPrincipal.bClientesClick(Sender: TObject);
begin
  inherited;
  FATUMnCadastroClientesCadastro.Click;
end;

procedure TFormPrincipal.bProdutosClick(Sender: TObject);
begin
  inherited;
  MnFATCadastroProdutoCadastro.Click;
end;

procedure TFormPrincipal.bEmitirNFEClick(Sender: TObject);
begin
  inherited;
  FATUMnVendasNotasFiscais.Click;
end;

procedure TFormPrincipal.TimerImpressaoTabletsTimer(Sender: TObject);
begin
  inherited;
  TimerImpressaoTablets.Enabled := False;
  {fitlra pedidos a serem impressos}
  dm.sqltemplate.Close;
  dm.sqltemplate.sql.Text := 'Select * from Prevenda where PRVDN2TOTITENS>0 and PRVDCIMPORT="N" and PDVCPRECONCLU="S" and PRVDCIMPRESSO<>"S" and EMPRICOD='+EmpresaPadrao+' order by PRVDICOD asc';
  dm.sqltemplate.open;
  if not dm.sqltemplate.IsEmpty then
    begin
      while not dm.sqltemplate.eof do
        begin
          if FileExists('C:\Easy2Solutions\Gestao\ImpressaoViaParametro.EXE') then
            begin
              WinExec(Pchar('C:\Easy2Solutions\Gestao\ImpressaoViaParametro.EXE ' + dm.sqltemplate.FieldByName('termicod').AsString +' '+dm.sqltemplate.FieldByName('prvdicod').AsString),sw_Show);
            end;
          dm.sqltemplate.next;
        end;
    end;
  TimerImpressaoTablets.Enabled := True;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
  inherited;
  if dm.SQLTerminalAtivoUSATABLET.Value = 'S' then
    TimerImpressaoTablets.Enabled := True
  else
    TimerImpressaoTablets.Enabled := False;
end;

procedure TFormPrincipal.MnRelMovimentoCaixaFaturamentoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioMovimentoCaixaFaturamento, 'RelatorioMovimentoCaixaFaturamento',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

end.
