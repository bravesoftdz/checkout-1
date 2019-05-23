unit Principal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PrincipalTemplate, Menus, ExtCtrls, jpeg, ComCtrls, ToolWin, FormResources,
  VarSys, EWall, DB, ImgList, StdCtrls, Grids, DBGrids, RXDBCtrl, Buttons,
  DBTables, RxQuery, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvGlowButton,
  dxGDIPlusClasses, XPMan, RXCtrls, AdvSmoothPanel, DBCtrls, dbcgrids;
type
  TFormPrincipal = class(TFormPrincipalTemplate)
    LOJAMNCadastros: TMenuItem;
    MnADMEstoque: TMenuItem;
    LOJAMNRelatorios: TMenuItem;
    MnADMCadastroProdutos: TMenuItem;
    MnADMCadastroProdutosGruposSubgruposVariacoes: TMenuItem;
    MnADMCadastroProdutosCores: TMenuItem;
    MnADMCadastroProdutosGrades: TMenuItem;
    MnADMCadastroProdutosMarcas: TMenuItem;
    MnADMCadastroProdutosIcms: TMenuItem;
    MnADMCadastroProdutosIcmsUF: TMenuItem;
    MnADMCadastroProdutosClassificacoesFiscais: TMenuItem;
    MnADMCadastroClientes: TMenuItem;
    MnADMCadastroClientesCadastro: TMenuItem;
    MnADMCadastroClientesTipodeCliente: TMenuItem;
    MnADMCadastroClientesProfissoes: TMenuItem;
    MnADMCadastroClientesMotivoBloquerio: TMenuItem;
    MnADMArquivosVendedores: TMenuItem;
    MnADMSairdoSistema: TMenuItem;
    N2: TMenuItem;
    MnADMCadastroProdutosDecretos: TMenuItem;
    MnADMRelatoriosVendas: TMenuItem;
    MnADMRelVendasPorPeriodo: TMenuItem;
    MnADMRelatorioCaixa: TMenuItem;
    MnADMRelCaixaMovimentacaoCaixa: TMenuItem;
    MnADMRelCaixaBoletimCaixa: TMenuItem;
    N3: TMenuItem;
    MnADMRelProdutosVendidos: TMenuItem;
    MnADMRelVendasPorPlano: TMenuItem;
    MnADMRelatorioEstoque: TMenuItem;
    MnADMRelInventarioEstoque: TMenuItem;
    MnADMEstoqueMovimentosDiversos: TMenuItem;
    N5: TMenuItem;
    MnADMRelComissoes: TMenuItem;
    MnADMUtilitarios: TMenuItem;
    MnADMUtilitariosCalcularComissoes: TMenuItem;
    MnADMUtilitariosConsultadeCupons: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    MnADMUtilitariosEspeciais: TMenuItem;
    MnADMUtilitariosEspeciaisExecutarSQL: TMenuItem;
    N8: TMenuItem;
    MnADMUtilitariosApagarPreVendasImportadas: TMenuItem;
    MnADMArquivosTipoVenda: TMenuItem;
    MnADMRelProdutosListagemProduto: TMenuItem;
    N9: TMenuItem;
    MnADMUtilitariosControledeAcesso: TMenuItem;
    N10: TMenuItem;
    MnADMDadosdaVersao: TMenuItem;
    MnADMUtilitariosConsultasAvancadas: TMenuItem;
    MnADMUtilitariosEspeciaisRecalcularTotalizadoresdeCaixa: TMenuItem;
    MnADMRelVendasConsignadas: TMenuItem;
    MnADMRelClientesCadastrados: TMenuItem;
    MnADMRelVendasPorPerodocomApuraodeMargem: TMenuItem;
    LOJAMNCrediario: TMenuItem;
    MnADMCobrancaGeracaoCartasAviso: TMenuItem;
    MnADMCobrancaReabilitacaoCredito: TMenuItem;
    MnRelCrediario: TMenuItem;
    MnRelReabilitacaoSPC: TMenuItem;
    MnADMMalaDireta: TMenuItem;
    MnADMEnvioEmail: TMenuItem;
    MnADMEmissaoEtiquetas: TMenuItem;
    MnADMCadastroProdutosUnidades: TMenuItem;
    MnADMReajustePreco: TMenuItem;
    N11: TMenuItem;
    MnADMManutencaoProdutos: TMenuItem;
    MnADMRelProdutosPorFornecedor: TMenuItem;
    MnADMDadosFechamentoCaixa: TMenuItem;
    MnADMInventario: TMenuItem;
    N12: TMenuItem;
    MnADMInvZerarSaldoEstoque: TMenuItem;
    MnClientesEmSPC: TMenuItem;
    MnADMInvGerarInventario: TMenuItem;
    MnADMInvRelDivergenciasInventario: TMenuItem;
    MnADMRelatorioGerenciais: TMenuItem;
    MnADMRelCurvaABCVendas: TMenuItem;
    N13: TMenuItem;
    MnADMECF: TMenuItem;
    MnADMMapaResumoSWEDA7000: TMenuItem;
    MnADMRelPosicaoFisicoFinanceiroEstoque: TMenuItem;
    N14: TMenuItem;
    MnADMCEP: TMenuItem;
    MnADMAtualizaoCep: TMenuItem;
    MnADMRelVendasPorGrade: TMenuItem;
    MnADMRelRegistrodeInventario: TMenuItem;
    MnADMRelMovimentacaodeEstoque: TMenuItem;
    MnADMRelEstoqueporGrade: TMenuItem;
    MnADMEstoqueCadastrodeLotes: TMenuItem;
    MnADMRelSaldoporLote: TMenuItem;
    MnADMRelConsignacaoXVendaConsignacao: TMenuItem;
    MnADMRelLotesPorProduto: TMenuItem;
    MnADMRelClientesBloqueados: TMenuItem;
    MnADMRelVendasPorGrupo: TMenuItem;
    MnADMRelCaixaTotaisporNumerario: TMenuItem;
    MnADMUtilitariosImportaodeDados: TMenuItem;
    MnADMRelClientesporcidade: TMenuItem;
    MnADMRelPosicaodiaria: TMenuItem;
    MnADMRelatorioClientes: TMenuItem;
    MnADMRelatorioProdutos: TMenuItem;
    MnADMRelatorioInventario: TMenuItem;
    MnPlanilhadeVendasExternas: TMenuItem;
    MnADMCobrancaAgendamento: TMenuItem;
    MnADMCadastroCobradores: TMenuItem;
    MnADMCobrancaEnviarContratosAnaliseDeCobranca: TMenuItem;
    MnADMEstoqueConsultadeSaldoporEmpresa: TMenuItem;
    MnADMCobrancaComisses: TMenuItem;
    MnADMUtilitariosManutenodeCupons: TMenuItem;
    MnADMRelEstoquePorMarca: TMenuItem;
    MnADMRelEstoqueMarcaReferencia: TMenuItem;
    MnRelCobranca: TMenuItem;
    MnRelCobExtratodeCredairioporCliente: TMenuItem;
    MnADMRelCupomEmitido: TMenuItem;
    MnADMRelGeranciaisResumodeOperacao: TMenuItem;
    MnADMRelProdProdutosCadastrados: TMenuItem;
    MnADMRELEstoquePorMarcaPorGrupo: TMenuItem;
    MnADMRelCredContasaReceber: TMenuItem;
    MnADMRelCredContasaReceberRecebidas: TMenuItem;
    MnADMRelCredContasaReceberAReceber: TMenuItem;
    MnADMFINCadastroComissao: TMenuItem;
    AtualizaodeMoeda1: TMenuItem;
    MnADMRelVenComSintetico: TMenuItem;
    MnADMRelVenDetalhado: TMenuItem;
    MnADMRELEstoquePorGradePorProduto: TMenuItem;
    MnADMRELFiscais: TMenuItem;
    MnADMRELApuracaodeICMS: TMenuItem;
    MnADMRELTeleEntrega: TMenuItem;
    MnADMRelVendasPorCliente: TMenuItem;
    MnADMRelCupomQuitado: TMenuItem;
    N1: TMenuItem;
    MnADMCadHorarios: TMenuItem;
    N4: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    MnADMRelFiscalNotasFiscaisCuponsEmitidosPorCFOP: TMenuItem;
    MnADMRelProdutosemPromocao: TMenuItem;
    MnADMRemPontodeEquilbrio: TMenuItem;
    MnADMRelInvListagemParaInventrioPorGradePorProduto: TMenuItem;
    ConsultaNmerosdeSrie1: TMenuItem;
    N17: TMenuItem;
    MnADMEstTransfernciadeMercadoria: TMenuItem;
    MnADMRelEstTransfernciadeProdutos: TMenuItem;
    MnADMRelCredCartasdeAviso: TMenuItem;
    MnADMUTILManutecaoTabelaPreco: TMenuItem;
    ResumodeCaixa1: TMenuItem;
    mnQuitaoComisses: TMenuItem;
    MnFornecedores: TMenuItem;
    MnCadFornecedor: TMenuItem;
    MnClinicas: TMenuItem;
    MnListaagendaporprofissional: TMenuItem;
    MnColecao: TMenuItem;
    MnIndiceInadimpleciaCred: TMenuItem;
    MnADMRelVendasPorMarca: TMenuItem;
    VendasporTipo1: TMenuItem;
    MnVendasporAliquotasparaContabilidade: TMenuItem;
    MnContasRecebidasparaContabidade: TMenuItem;
    RemessaRetorno: TMenuItem;
    MenuADMPostos: TMenuItem;
    MnTanques: TMenuItem;
    MnBombas: TMenuItem;
    MnLivro: TMenuItem;
    MnLmcManual: TMenuItem;
    MnVendasPorColecao: TMenuItem;
    MnFornecedoresMalaDireta: TMenuItem;
    MnADMCompras: TMenuItem;
    MNPedidoCompra: TMenuItem;
    MnNotadeEntrada: TMenuItem;
    MNADMRelatoriosCompras: TMenuItem;
    MnADMNotasEntradas: TMenuItem;
    MNADMRelatoriosComprasVendasporGrupo: TMenuItem;
    MnADMTipoFornecedor: TMenuItem;
    MnADMMalaDiretaCliente: TMenuItem;
    MnADMRamoSubRamo: TMenuItem;
    MnADMLanctoContasPagar: TMenuItem;
    MnADMBaixaDocumentosPagar: TMenuItem;
    MNADMProfissionaisExternos: TMenuItem;
    MnADMCadastroMaterias: TMenuItem;
    MnADMUtilitariosApagarOrcamentos: TMenuItem;
    MnReducaoZ: TMenuItem;
    MnEmissaoBonusCliente: TMenuItem;
    MnTransportadoras: TMenuItem;
    MnExportaparaBalancas: TMenuItem;
    MnRepresentantes: TMenuItem;
    N18: TMenuItem;
    MnTrocasMercadoria: TMenuItem;
    MnAtualizaodeEstoquedasVendasdosPDVs: TMenuItem;
    MnADMPontoFuncionrios: TMenuItem;
    MnADMCadAfastamentos: TMenuItem;
    MnADMCadMotAfastamento: TMenuItem;
    MnADMCadFeriados: TMenuItem;
    MnADMRelCurvaABCEstoque: TMenuItem;
    N19: TMenuItem;
    MnAgendaTelefonica: TMenuItem;
    MnRota: TMenuItem;
    MnCotacaoCompra: TMenuItem;
    MnADMUtilitariosConsultadePrevendas: TMenuItem;
    MnADMRelMovimentosDiversosporCliente: TMenuItem;
    MnExportarparaBuscaPrecoGertec22: TMenuItem;
    N21: TMenuItem;
    MNADMRelRegVendaAgrotoxicos: TMenuItem;
    MnADMRestaurantes: TMenuItem;
    MnCadastroMesas: TMenuItem;
    MnAdmReduesZPeriodo: TMenuItem;
    N22: TMenuItem;
    MnCadastroReducaoDia: TMenuItem;
    MnRelReducaoZDia: TMenuItem;
    MnadmCadastrarReserva: TMenuItem;
    MnADMCadastroProduto: TMenuItem;
    MnComprasporMarca: TMenuItem;
    MnComprasporGrupo: TMenuItem;
    MnComprasporColecao: TMenuItem;
    MnProdutosComprados: TMenuItem;
    MnCadastroFornecedor: TMenuItem;
    Agenda1: TMenuItem;
    MnMostrarResumodeOpFinanceiras: TMenuItem;
    MnCurvaABCVendasClientes: TMenuItem;
    N23: TMenuItem;
    MnGerenciarTarefas: TMenuItem;
    TimeLembrete: TTimer;
    MnAdicionarTarefa: TMenuItem;
    SQLAgendaVer: TQuery;
    MnConfigPopLembreteTarefa: TMenuItem;
    MnADMConsultaRastreabilidade: TMenuItem;
    MnProdutosPedidosCompra: TMenuItem;
    Cadastros1: TMenuItem;
    Movimentos1: TMenuItem;
    MnDigitacaoEncerrantesDiarios: TMenuItem;
    MnSaldoInicialProdutos: TMenuItem;
    MnAcompanharTarefas: TMenuItem;
    MnRelatorioLimitesCompraCliente: TMenuItem;
    MnCurriculumVitae: TMenuItem;
    N20: TMenuItem;
    MNADMCadastroNCM: TMenuItem;
    MnADMRelPontoFuncionarios: TMenuItem;
    MNADMRelApuraodeMargemporProduto: TMenuItem;
    MNADMConvenios: TMenuItem;
    MNADMSeries: TMenuItem;
    MNADMVencidas: TMenuItem;
    MnCadTipoContatoCobranca: TMenuItem;
    MnCadTipoRetornoCobranca: TMenuItem;
    N25: TMenuItem;
    MNADMEnquadramentoClienteCobranca: TMenuItem;
    N24: TMenuItem;
    PROCESSAMENTODEAVISOS1: TMenuItem;
    MnExportarProdutosSemBarras: TMenuItem;
    MnExportarparaBuscaPrecoGertec23: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    MnTabeladePreco: TMenuItem;
    MnExportarProdutoseGruposparaXML: TMenuItem;
    abeladeConversodeCSTdoICMS1: TMenuItem;
    abeladeConversodeCSTPISeCOFINS1: TMenuItem;
    MnADMListaPreco: TMenuItem;
    MnDisplayNumeracao: TMenuItem;
    MnMotoBoy: TMenuItem;
    ImportaXMLDelphi: TMenuItem;
    MnProdutosSemMovto: TMenuItem;
    MnADMRELApuracaodePisCofins: TMenuItem;
    MnProdutosAbaixoMinimo: TMenuItem;
    N29: TMenuItem;
    ExportarProdutosTeste1: TMenuItem;
    MNADMRelPrevendas: TMenuItem;
    MNADMObservaesComplementares: TMenuItem;
    RxLabel5: TRxLabel;
    bClientes: TAdvGlowButton;
    bProdutos: TAdvGlowButton;
    bNFEImportar: TAdvGlowButton;
    MNADMProdutosSemMovimentao: TMenuItem;
    MnIndiceInadimpleciaAnual: TMenuItem;
    MnPorPeriodoporEmpresaConferencia: TMenuItem;
    MnMostrarResumodeOpAdministrativas: TMenuItem;
    MnCidades: TMenuItem;
    N28: TMenuItem;
    N30: TMenuItem;
    MnExportarClientesCadastrados: TMenuItem;
    MnTabelaCEST: TMenuItem;
    ExportarProdutosparaColetordeDadosEanDescrioePreoVenda1: TMenuItem;
    MNADMRelatoriosComprasVendasporProduto: TMenuItem;
    procedure MnADMCadastroClientesCadastroClick(Sender: TObject);
    procedure MnADMCadastroProdutosCoresClick(Sender: TObject);
    procedure MnADMCadastroProdutosIcmsClick(Sender: TObject);
    procedure MnADMCadastroProdutosGradesClick(Sender: TObject);
    procedure MnADMCadastroProdutosGruposSubgruposVariacoesClick(Sender: TObject);
    procedure MnADMCadastroProdutosMarcasClick(Sender: TObject);
    procedure MnADMCadastroProdutosIcmsUFClick(Sender: TObject);
    procedure MnADMCadastroProdutosClassificacoesFiscaisClick(Sender: TObject);
    procedure MnADMCadastroClientesTipodeClienteClick(Sender: TObject);
    procedure MnADMArquivosVendedoresClick(Sender: TObject);
    procedure MnADMRelVendasPorPeriodoClick(Sender: TObject);
    procedure MnADMRelCaixaMovimentacaoCaixaClick(Sender: TObject);
    procedure MnADMRelCaixaBoletimCaixaClick(Sender: TObject);
    procedure MnADMRelProdutosVendidosClick(Sender: TObject);
    procedure MnADMRelVendasPorPlanoClick(Sender: TObject);
    procedure MnADMRelInventarioEstoqueClick(Sender: TObject);
    procedure MnADMUtilitariosCalcularComissoesClick(Sender: TObject);
    procedure MnADMCadastroClientesProfissoesClick(Sender: TObject);
    procedure MnADMCadastroClientesMotivoBloquerioClick(Sender: TObject);
    procedure MnADMUtilitariosConsultadeCuponsClick(Sender: TObject);
    procedure MnADMUtilitariosEspeciaisExecutarSQLClick(Sender: TObject);
    procedure MnADMUtilitariosApagarPreVendasImportadasClick(Sender: TObject);
    procedure MnADMArquivosTipoVendaClick(Sender: TObject);
    procedure MnADMRelProdutosListagemProdutoClick(Sender: TObject);
    procedure MnADMUtilitariosControledeAcessoClick(Sender: TObject);
    procedure MnADMDadosdaVersaoClick(Sender: TObject);
    procedure LOJAMNUtilitariosManutencaoCupomClick(Sender: TObject);
    procedure MnADMUtilitariosConsultasAvancadasClick(Sender: TObject);
    procedure MnADMUtilitariosEspeciaisRecalcularTotalizadoresdeCaixaClick(Sender: TObject);
    procedure MnADMRelVendasConsignadasClick(Sender: TObject);
    procedure MnADMRelClientesCadastradosClick(Sender: TObject);
    procedure MnADMRelVendasPorPerodocomApuraodeMargemClick(Sender: TObject);
    procedure MnADMSairdoSistemaClick(Sender: TObject);
    procedure MnADMCobrancaGeracaoCartasAvisoClick(Sender: TObject);
    procedure MnADMCobrancaReabilitacaoCreditoClick(Sender: TObject);
    procedure MnRelReabilitacaoSPCClick(Sender: TObject);
    procedure MnADMEnvioEmailClick(Sender: TObject);
    procedure MnADMEmissaoEtiquetasClick(Sender: TObject);
    procedure MnADMCadastroProdutosUnidadesClick(Sender: TObject);
    procedure MnADMReajustePrecoClick(Sender: TObject);
    procedure MnADMManutencaoProdutosClick(Sender: TObject);
    procedure MnADMRelProdutosPorFornecedorClick(Sender: TObject);
    procedure MnADMDadosFechamentoCaixaClick(Sender: TObject);
    procedure MnADMInvZerarSaldoEstoqueClick(Sender: TObject);
    procedure MnClientesEmSPCClick(Sender: TObject);
    procedure MnADMInvGerarInventarioClick(Sender: TObject);
    procedure MnADMInvRelDivergenciasInventarioClick(Sender: TObject);
    procedure MnADMRelCurvaABCVendasClick(Sender: TObject);
    procedure MnADMMapaResumoSWEDA7000Click(Sender: TObject);
    procedure MnADMRelPosicaoFisicoFinanceiroEstoqueClick(Sender: TObject);
    procedure MnADMAtualizaoCepClick(Sender: TObject);
    procedure MnADMRelVendasPorGradeClick(Sender: TObject);
    procedure MnADMRelRegistrodeInventarioClick(Sender: TObject);
    procedure MnADMRelMovimentacaodeEstoqueClick(Sender: TObject);
    procedure MnADMRelEstoqueporGradeClick(Sender: TObject);
    procedure MnADMEstoqueCadastrodeLotesClick(Sender: TObject);
    procedure MnADMRelSaldoporLoteClick(Sender: TObject);
    procedure MnADMRelConsignacaoXVendaConsignacaoClick(Sender: TObject);
    procedure MnADMRelLotesPorProdutoClick(Sender: TObject);
    procedure MnADMRelClientesBloqueadosClick(Sender: TObject);
    procedure MnADMRelVendasPorGrupoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MnADMRelCaixaTotaisporNumerarioClick(Sender: TObject);
    procedure MnADMUtilitariosImportaodeDadosClick(Sender: TObject);
    procedure MnADMEstoqueMovimentosDiversosClick(Sender: TObject);
    procedure MnADMRelClientesporcidadeClick(Sender: TObject);
    procedure MnADMRelPosicaodiariaClick(Sender: TObject);
    procedure ApagarPreVendas;
    procedure ApagarOrcamentos;
    procedure MnPlanilhadeVendasExternasClick(Sender: TObject);
    procedure MnADMCobrancaAgendamentoClick(Sender: TObject);
    procedure MnADMCadastroCobradoresClick(Sender: TObject);
    procedure MnADMCobrancaEnviarContratosAnaliseDeCobrancaClick(
      Sender: TObject);
    procedure MnADMEstoqueConsultadeSaldoporEmpresaClick(Sender: TObject);
    procedure MnADMCobrancaComissesClick(Sender: TObject);
    procedure MnADMUtilitariosManutenodeCuponsClick(Sender: TObject);
    procedure MnADMRelEstoquePorMarcaClick(Sender: TObject);
    procedure MnADMRelEstoqueMarcaReferenciaClick(Sender: TObject);
    procedure MnRelCobExtratodeCredairioporClienteClick(Sender: TObject);
    procedure MnADMRelCupomEmitidoClick(Sender: TObject);
    procedure MnADMRelGeranciaisResumodeOperacaoClick(Sender: TObject);
    procedure MnADMRelProdProdutosCadastradosClick(Sender: TObject);
    procedure MnADMRELEstoquePorMarcaPorGrupoClick(Sender: TObject);
    procedure MnADMRelCredContasaReceberRecebidasClick(Sender: TObject);
    procedure MnADMRelCredContasaReceberAReceberClick(Sender: TObject);
    procedure MnADMFINCadastroComissaoClick(Sender: TObject);
    procedure AtualizaodeMoeda1Click(Sender: TObject);
    procedure MnADMRelVenComSinteticoClick(Sender: TObject);
    procedure MnADMRelVenDetalhadoClick(Sender: TObject);
    procedure MnADMRELEstoquePorGradePorProdutoClick(Sender: TObject);
    procedure MnADMRELApuracaodeICMSClick(Sender: TObject);
    procedure MnADMRELTeleEntregaClick(Sender: TObject);
    procedure MnADMRelVendasPorClienteClick(Sender: TObject);
    procedure MnADMRelCupomQuitadoClick(Sender: TObject);
    procedure MnADMCadHorariosClick(Sender: TObject);
    procedure MnADMRelFiscalNotasFiscaisCuponsEmitidosPorCFOPClick(Sender: TObject);
    procedure MnADMRelProdutosemPromocaoClick(Sender: TObject);
    procedure MnADMRemPontodeEquilbrioClick(Sender: TObject);
    procedure MnADMRelInvListagemParaInventrioPorGradePorProdutoClick(
      Sender: TObject);
    procedure ConsultaNmerosdeSrie1Click(Sender: TObject);
    procedure MnADMEstTransfernciadeMercadoriaClick(Sender: TObject);
    procedure MnADMRelEstTransfernciadeProdutosClick(Sender: TObject);
    procedure MnADMRelCredCartasdeAvisoClick(Sender: TObject);
    procedure MnADMUTILManutecaoTabelaPrecoClick(Sender: TObject);
    procedure ResumodeCaixa1Click(Sender: TObject);
    procedure mnQuitaoComissesClick(Sender: TObject);
    procedure MnADMCadastroProdutosDecretosClick(Sender: TObject);
    procedure MnCadFornecedorClick(Sender: TObject);
    procedure MnListaagendaporprofissionalClick(Sender: TObject);
    procedure MnColecaoClick(Sender: TObject);
    procedure MnIndiceInadimpleciaCredClick(Sender: TObject);
    procedure MnADMRelVendasPorMarcaClick(Sender: TObject);
    procedure VendasporTipo1Click(Sender: TObject);
    procedure MnVendasporAliquotasparaContabilidadeClick(Sender: TObject);
    procedure MnContasRecebidasparaContabidadeClick(Sender: TObject);
    procedure RemessaRetornoClick(Sender: TObject);
    procedure MnTanquesClick(Sender: TObject);
    procedure MnBombasClick(Sender: TObject);
    procedure MnLivroClick(Sender: TObject);
    procedure MnLmcManualClick(Sender: TObject);
    procedure MnVendasPorColecaoClick(Sender: TObject);
    procedure MnFornecedoresMalaDiretaClick(Sender: TObject);
    procedure MNPedidoCompraClick(Sender: TObject);
    procedure MnNotadeEntradaClick(Sender: TObject);
    procedure MnADMNotasEntradasClick(Sender: TObject);
    procedure MNADMRelatoriosComprasVendasporGrupoClick(Sender: TObject);
    procedure MnADMTipoFornecedorClick(Sender: TObject);
    procedure MnADMMalaDiretaClienteClick(Sender: TObject);
    procedure MnADMRamoSubRamoClick(Sender: TObject);
    procedure MnADMLanctoContasPagarClick(Sender: TObject);
    procedure MnADMBaixaDocumentosPagarClick(Sender: TObject);
    procedure MNADMProfissionaisExternosClick(Sender: TObject);
    procedure MnADMCadastroMateriasClick(Sender: TObject);
    procedure MnADMUtilitariosApagarOrcamentosClick(Sender: TObject);
    procedure MnEmissaoBonusClienteClick(Sender: TObject);
    procedure MnTransportadorasClick(Sender: TObject);
    procedure MnExportaparaBalancasClick(Sender: TObject);
    procedure MnRepresentantesClick(Sender: TObject);
    procedure MnTrocasMercadoriaClick(Sender: TObject);
    procedure MnAtualizaodeEstoquedasVendasdosPDVsClick(Sender: TObject);
    procedure MnADMCadMotAfastamentoClick(Sender: TObject);
    procedure MnADMRelCurvaABCEstoqueClick(Sender: TObject);
    procedure MnRotaClick(Sender: TObject);
    procedure MnCotacaoCompraClick(Sender: TObject);
    procedure MnADMUtilitariosConsultadePrevendasClick(Sender: TObject);
    procedure MnADMRelMovimentosDiversosporClienteClick(Sender: TObject);
    procedure MnExportarparaBuscaPrecoGertec22Click(Sender: TObject);
    procedure MNADMRelRegVendaAgrotoxicosClick(Sender: TObject);
    procedure MnCadastroMesasClick(Sender: TObject);
    procedure MnAdmReduesZPeriodoClick(Sender: TObject);
    procedure MnCadastroReducaoDiaClick(Sender: TObject);
    procedure MnRelReducaoZDiaClick(Sender: TObject);
    procedure MnadmCadastrarReservaClick(Sender: TObject);
    procedure MnAgendaTelefonicaClick(Sender: TObject);
    procedure MnADMCadastroProdutoClick(Sender: TObject);
    procedure MnComprasporMarcaClick(Sender: TObject);
    procedure MnComprasporGrupoClick(Sender: TObject);
    procedure MnComprasporColecaoClick(Sender: TObject);
    procedure MnProdutosCompradosClick(Sender: TObject);
    procedure MnCadastroFornecedorClick(Sender: TObject);
    procedure Agenda1Click(Sender: TObject);
    procedure MnMostrarResumodeOpFinanceirasClick(Sender: TObject);
    procedure MnCurvaABCVendasClientesClick(Sender: TObject);
    procedure MnGerenciarTarefasClick(Sender: TObject);
    procedure MnAdicionarTarefaClick(Sender: TObject);
    procedure TimeLembreteTimer(Sender: TObject);
    procedure MnConfigPopLembreteTarefaClick(Sender: TObject);
    procedure MnADMConsultaRastreabilidadeClick(Sender: TObject);
    procedure MnProdutosPedidosCompraClick(Sender: TObject);
    procedure MnDigitacaoEncerrantesDiariosClick(Sender: TObject);
    procedure MnSaldoInicialProdutosClick(Sender: TObject);
    procedure MnAcompanharTarefasClick(Sender: TObject);
    procedure MnRelatorioLimitesCompraClienteClick(Sender: TObject);
    procedure MnCurriculumVitaeClick(Sender: TObject);
    procedure MnADMCadFeriadosClick(Sender: TObject);
    procedure MnADMCadAfastamentosClick(Sender: TObject);
    procedure MNADMCadastroNCMClick(Sender: TObject);
    procedure MnADMRelPontoFuncionariosClick(Sender: TObject);
    procedure MNADMRelApuraodeMargemporProdutoClick(Sender: TObject);
    procedure MNADMConveniosClick(Sender: TObject);
    procedure MNADMSeriesClick(Sender: TObject);
    procedure MNADMVencidasClick(Sender: TObject);
    procedure MnCadTipoRetornoCobrancaClick(Sender: TObject);
    procedure MnCadTipoContatoCobrancaClick(Sender: TObject);
    procedure MNADMEnquadramentoClienteCobrancaClick(Sender: TObject);
    procedure MnExportarProdutosSemBarrasClick(Sender: TObject);
    procedure MnExportarparaBuscaPrecoGertec23Click(Sender: TObject);
    procedure MnTabeladePrecoClick(Sender: TObject);
    procedure MnExportarProdutoseGruposparaXMLClick(Sender: TObject);
    procedure abeladeConversodeCSTdoICMS1Click(Sender: TObject);
    procedure abeladeConversodeCSTPISeCOFINS1Click(Sender: TObject);
    procedure MnADMListaPrecoClick(Sender: TObject);
    procedure MnDisplayNumeracaoClick(Sender: TObject);
    procedure MnMotoBoyClick(Sender: TObject);
    procedure ImportaXMLDelphiClick(Sender: TObject);
    procedure MnProdutosSemMovtoClick(Sender: TObject);
    procedure MnADMRELApuracaodePisCofinsClick(Sender: TObject);
    procedure MnProdutosAbaixoMinimoClick(Sender: TObject);
    procedure ExportarProdutosTeste1Click(Sender: TObject);
    procedure MNADMRelPrevendasClick(Sender: TObject);
    procedure MNADMObservaesComplementaresClick(Sender: TObject);
    procedure bsairClick(Sender: TObject);
    procedure bProdutosClick(Sender: TObject);
    procedure bClientesClick(Sender: TObject);
    procedure bNFEImportarClick(Sender: TObject);
    procedure MNADMProdutosSemMovimentaoClick(Sender: TObject);
    procedure MnIndiceInadimpleciaAnualClick(Sender: TObject);
    procedure MnPorPeriodoporEmpresaConferenciaClick(Sender: TObject);
    procedure MnMostrarResumodeOpAdministrativasClick(Sender: TObject);
    procedure MnCidadesClick(Sender: TObject);
    procedure MnExportarClientesCadastradosClick(Sender: TObject);
    procedure MnTabelaCESTClick(Sender: TObject);
    procedure ExportarProdutosparaColetordeDadosEanDescrioePreoVenda1Click(
      Sender: TObject);
    procedure MNADMRelatoriosComprasVendasporProdutoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses CadastroCliente, CadastroCor, CadastroICMS, CadastroFornecedor,
  CadastroGrade, CadastroGrupo, CadastroMarca, CadastroClassificacaoFiscal,
  CadastroIcmsUf, CadastroUsuario, CadastroTamanho, CadastroTemplate, CadastroVariacao, UnSoundPlay,
  CadastroTipoCliente, RelatorioVendasPeriodo,
  RelatorioMovimentacaoCaixa, CadastroSubgrupo, CadastroUnidade,
  CadastroVendedor, RelatorioBoletimCaixa, WaitWindow,
  RelatorioProdutosVendidos, RelatorioVendasPorPlano,
  RelatorioInventarioEstoque, TelaCalculoComissao,
  RelatorioComissao, CadastroProfissao, CadastroMotivoBloqueio,
  CadastroCupom, TelaGeralExecutarSQL, CadastroTransportadora,
  DataModulo, UnitLibrary, CadastroTipoVenda, RelatorioListagemProduto,
  CadastroClasse, TelaDadosVersaoLoja, CadastroManutencaoCupom,
  CadastroConsulta, TelaRecalcularTotalizador, RelatorioVendasConsignadas,
  RelatorioClienteCadastrado, RelatorioVendasPeriodoApuracaoMargem,
  CadastroBanco,  CadastroContaCorrente,
  TelaEnvioCartasAviso, TelaReabilitacaoCredito,
  RelatorioReabilitacaoSPC, RelatorioExtratoCliente, TelaEnvioEmail,
  TelaImpressaoDuplicatas, TelaEmissaoEtiquetasCodigoBarras, TelaReajustePreco,
  TelaManutencaoProdutos, RelatorioProdutosPorFornecedor,
  TelaManutencaoFechamentoCaixa, TelaZerarSaldoEstoque, RelatorioClientesSPC,
  TelaContagemManual, RelatorioDivergenciaInventario, RelatorioCurvaABC,
  SWEDA7000, TelaMapaResumo, RelatorioFisicoFinanceiroEstoque,
  TelaAtualizacaoCEP, RelatorioVendasPorGrade,
  RelatorioReceitasDespesasPlanoContas, RelatorioRegistroInventario,
  RelatorioExtratoProdutos, RelatorioEstoquePorGrade, CadastroLote,
  RelatorioEstoquePorLote, RelatorioConsignacaoVendaConsignacao,
  RelatorioLotePorProduto, RelatorioFluxoCaixa, RelatorioClienteBloqueado,
  RelatorioVendasGrupo, RelatorioTotalNumerarioCaixa,
  CadastroImportaDados, CadastroMovimentosDiversosEstoque,
  RelatorioClientesPorCidade, RelatorioPosicaoDiariaEstoque,
  RelatorioPlanilhaVendasExternas, TelaAgendaCobranca, CadastroCobrador,
  TelaEnvioContratoCobranca, TelaAnaliseCobranca,
  RelatorioComissaoCobrador,
  RelatorioHistoricoProduto, RelatorioSaldoPorMarca,
  RelatorioEstoquePorMarca, RelatorioEstoqueMarcaReferencia,
  RelatorioCupomEmitido, RelatorioResumoOperacaoDiaria,
  RelatorioProdutoCadastrado, RelatorioEstoquePorMarcaPorGrupo,
  RelatorioContasaReceber, CadastroVendedorComissao, TelaAtualizacaoMoeda,
  RelatorioComissaoDetalhado, RelatorioEstoquePorGradePorProduto,
  RelatorioApuracaoICMS, RelatorioTeleEntrega, RelatorioVendaPorCliente,
  RelatorioCupomQuitado, CadastroFuncionario, RelatorioNotaFiscalCupomEmitidoPorCFOP,
  RelatorioProdutoEmPromocao, RelatorioPontoDeEquilibrio,
  RelatorioListagemParaInventarioPorGradePorProduto,
  TelaConsultaNumeroSerie, TelaTransferenciaMercadoria,
  RelatorioTransferencia, RelatorioCartasAviso, TelaManutencaoTabelaPreco,
  RelatorioResumoCaixa, TelaQuitacaoComissoes, CadastroDecreto,
  RelatorioFornecedoresCadastrados, TelaRelConsultaPeriodo,
  TelaRelConsultaPeriodoAtendente, TelaRelGerConsultaPorPeriodo,
  CadastroColecao, RelatorioIndiceInadimplenciaCrediario,
  TelaConsultaSaldoPorEmpresa, RelatorioVendasMarca,
  RelatorioResumoVendasportipo, RelatorioResumoVendasporAliquota,
  RelatorioVendaPeriodoMenosRetorno, CadastroTanque, CadastroBomba,
  CadastroLivroLMC, CadastroLMC, RelatorioVendasColecao,
  TelaEmissaoMalaDiretaFornecedores, CadastroPedidoCompra,
  CadastroNotaCompra, RelatorioNotasCompra, RelatorioVendasComprasPorGrupo,
  CadastroTipoFornecedor, TelaGeracaoMalaDireta, CadastroRamo,
  CadastroContasPagar, TelaBaixarDocumentosPagar, CadastroProfExterno,
  CadastroMateriais, CadastroReducaoZDia, TelaEmissaoBonusCliente,
  TelaExportacaoBalanca, CadastroRepresentante, CadastroTrocas,
  TelaAtualizaEstoquePDVs, CadastroMotivoAfastamento,
  RelatorioCurvaABCEstoque, CadastroRota,
  CadastroCotacaoCompra, CadastroPrevenda, RelatorioMovtoDiversos,
  RelatorioRegVendaAgrotoxico, CadastroMesa, RelatorioReducoesZ,
  CadastroReservaMesa, Cadastroagendatelefonica, CadastroProdutos,
  RelatorioComprasMarca, RelatorioComprasGrupo, RelatorioComprasColecao,
  RelatorioProdutosComprados, RelatorioCurvaABCCliente, TelaLembreteTarefa,
  TelaLembreteTarefa2, TelaCadastroTarefa, ConfigPopUp, TelaResumoFinanceiro,
  TelaConsultaRastreabilidade, RelatorioProdutosPedidosCompra,
  CadastroEncerranteDiario, TelaGerarSaldoProduto,
  RelatorioClienteLimiteCreditoExcedido, CadastroCurriculum,
  CadastroFeriado, CadastroHorario, CadastroManutPonto, CadastroNCM,
  RelatorioPontoFuncionario, RelatorioApuracaoMargemPorProduto,
  CadastroConvenio, CadastroSerie, RelatorioContasReceberVencidas,
  CadastroTipoContato, CadastroTipoRetorno, TelaEnquadramentoClientes,
  TelaAgendaContatos, CadastroTabelaPreco, ExportacaoProdutosGruposXML,
  FormImportaXMLCompra, CadastroCSTConverte, CadastroCSTPisCofinsConverter,
  TelaEncerrantesDiarios, TelaListaPreco, CadastroDisplay, CadastroMotoboy,
  TelaImportadorXML, RelatorioProdutosSemMovto,
  RelatorioProdutosIsentosPisCofins, RelatorioApuracaoPISCOFINS,
  RelatorioProdutosAbaixoMinimo, RelatorioPrevendas,
  RelatorioContasRecebidas, CadastroObsProdutoRest,
  TelaProdutosSemMovimento, RelatorioInadimplenciaAnual,
  RelatorioCupomEmitidoPorEmpresa, DataModuloTemplate, telaResumoLoja,
  CadastroCidade, CadastroTabCest, RelatorioVendasComprasPorProduto;

{$R *.DFM}

procedure TFormPrincipal.MnADMCadastroClientesCadastroClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroCliente,'FormCadastroCliente',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMCadastroProdutosCoresClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroCor,'FormCadastroCor',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMCadastroProdutosIcmsClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroICMS,'FormCadastroICMS',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMCadastroProdutosGradesClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroGrade,'FormCadastroGrade',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMCadastroProdutosGruposSubgruposVariacoesClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroGrupo,'FormCadastroGrupo',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMCadastroProdutosMarcasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroMarca,'FormCadastroMarca',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMCadastroProdutosIcmsUFClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroIcmsUf,'FormCadastroIcmsUf',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMCadastroProdutosClassificacoesFiscaisClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroClassificacaoFiscal,'FormCadastroClassificacaoFiscal',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMCadastroClientesTipodeClienteClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTipoCliente,'FormCadastroTipoCliente',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMArquivosVendedoresClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario( TFormCadastroVendedor, 'FormCadastroVendedor', False, False, True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelVendasPorPeriodoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioVendasPeriodo, 'FormRelatorioVendasPeriodo', False, False, False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelCaixaMovimentacaoCaixaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioMovimentacaoCaixa, 'FormRelatorioMovimentacaoCaixa', False, False, False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelCaixaBoletimCaixaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioBoletimCaixa, 'FormRelatorioBoletimCaixa',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelProdutosVendidosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioProdutosVendidos, 'FormRelatorioProdutosVendidos',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelVendasPorPlanoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioVendasPorPlano, 'FormRelatorioVendasPorPlano',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelInventarioEstoqueClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioInventarioEstoque, 'FormRelatorioInventarioEstoque', False, False, False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMUtilitariosCalcularComissoesClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario( TFormTelaCalculoComissao, 'FormTelaCalculoComissao', False, False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMCadastroClientesProfissoesClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario( TFormCadastroProfissao, 'FormCadastroProfissao',False,False,False, '')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMCadastroClientesMotivoBloquerioClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario( TFormCadastroMotivoBloqueio, 'FormCadastroMotivoBloqueio',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMUtilitariosConsultadeCuponsClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario( TFormCadastroCupom, 'FormCadastroCupom',False,False,False, '')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMUtilitariosEspeciaisExecutarSQLClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario( TFormTelaGeralExecutarSQL, 'FormTelaGeralExecutarSQL',False,False,False, '')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMUtilitariosApagarPreVendasImportadasClick(
  Sender: TObject);
begin
  inherited ;
  if DM.Acesso((Sender as TMenuItem).Name) = 0 then
    exit
  else
    if Pergunta('Nao','Deseja apagar as Prevendas com mais de quinze dias.') then
      ApagarPreVendas;
end;

procedure TFormPrincipal.MnADMArquivosTipoVendaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario( TFormCadastroTipoVenda, 'FormCadastroTipoVenda',False,False,True, '')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelProdutosListagemProdutoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario( TFormRelatorioListagemProduto, 'FormRelatorioListagemProduto',False,False,True, '')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMUtilitariosControledeAcessoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario( TFormCadastroClasse, 'FormCadastroClasse',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMDadosdaVersaoClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormTelaDadosVersaoLoja, 'FormTelaDadosVersaoLoja',False,False,True, '') ;
end;

procedure TFormPrincipal.LOJAMNUtilitariosManutencaoCupomClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroManutencaoCupom, 'FormCadastroManutencaoCupom',False,False,False, '')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMUtilitariosConsultasAvancadasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroConsulta, 'FormCadastroConsulta',False,False,False, '')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMUtilitariosEspeciaisRecalcularTotalizadoresdeCaixaClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaRecalcularTotalizador, 'FormTelaRecalcularTotalizador',False,False,False, '')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelVendasConsignadasClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioVendasConsignadas, 'FormRelatorioVendasConsignadas', False, False, False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelClientesCadastradosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioClienteCadastrado, 'FormRelatorioClienteCadastrado', False, False, False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelVendasPorPerodocomApuraodeMargemClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioVendasPeriodoApuracaoMargem, 'FormRelatorioVendasPeriodoApuracaoMargem', False, False, False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMSairdoSistemaClick(Sender: TObject);
begin
  inherited;
  FormPrincipal.Close;
  Application.Terminate;
end;

procedure TFormPrincipal.MnADMCobrancaGeracaoCartasAvisoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaEnvioCartasAviso, 'FormTelaEnvioCartasAviso', False, False, False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMCobrancaReabilitacaoCreditoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaReabilitacaoCredito, 'FormTelaReabilitacaoCredito', False, False, False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnRelReabilitacaoSPCClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioReabilitacaoSPC, 'FormRelatorioReabilitacaoSPC', False, False, False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMEnvioEmailClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaEnvioGeracaoEmail, 'FormTelaEnvioGeracaoEmail', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMEmissaoEtiquetasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaEmissaoEtiquetasCodigoBarras,'FormTelaEmissaoEtiquetasCodigoBarras',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMCadastroProdutosUnidadesClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroUnidade,'FormCadastroUnidade',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMReajustePrecoClick(Sender: TObject);
begin
  inherited;
  if SQLLocate('EMPRESA','EMPRICOD','EMPRCMATRIZFILIAL',EmpresaPadrao) <> 'M'  then
    begin
      Application.MessageBox('Você não pode reajustar preços em uma filial !','Informação',MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONINFORMATION);
      Exit;
    end
  else
    if DM.Acesso((Sender as TMenuItem).Name) > 0 then
      CriaFormulario(TFormTelaReajustePreco,'FormTelaReajustePreco',False,False,False,'')
    else
       SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMManutencaoProdutosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaManutencaoProdutos,'FormTelaManutencaoProdutos',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelProdutosPorFornecedorClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioProdutosPorFornecedor,'FormRelatorioProdutosPorFornecedor',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMDadosFechamentoCaixaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaManutencaoFechamentoCaixa,'FormTelaManutencaoFechamentoCaixa',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMInvZerarSaldoEstoqueClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaZeraSaldoEstoque,'FormTelaZeraSaldoEstoque',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnClientesEmSPCClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioClientesSPC,'FormRelatorioClientesSPC',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMInvGerarInventarioClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaContagemManual,'FormTelaContagemManual',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMInvRelDivergenciasInventarioClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioDivergenciaInventario,'FormRelatorioDivergenciaInventario',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelCurvaABCVendasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioCurvaABC,'FormRelatorioCurvaABC',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMMapaResumoSWEDA7000Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaGeracaoMapaResumo,'FormTelaGeracaoMapaResumo',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelPosicaoFisicoFinanceiroEstoqueClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioFisicoFinanceiroEstoque,'FormRelatorioFisicoFinanceiroEstoque',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMAtualizaoCepClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaAtualizacaoCEP,'FormTelaAtualizacaoCEP',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelVendasPorGradeClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioVendasPorGrade,'FormRelatorioVendasPorGrade',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelRegistrodeInventarioClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioRegistroInventario,'FormRelatorioRegistroInventario',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelMovimentacaodeEstoqueClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioExtratoProdutos,'FormRelatorioExtratoProdutos',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelEstoqueporGradeClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioEstoquePorGrade,'FormRelatorioEstoquePorGrade',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMEstoqueCadastrodeLotesClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroLote,'FormCadastroLote',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelSaldoporLoteClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioEstoquePorLote,'FormRelatorioEstoquePorLote',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelConsignacaoXVendaConsignacaoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioConsignacaoVendaConsignacao,'FormRelatorioConsignacaoVendaConsignacao',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelLotesPorProdutoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioLotePorProduto,'FormRelatorioLotePorProduto',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelClientesBloqueadosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioClienteBloqueado,'FormRelatorioClienteBloqueado',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelVendasPorGrupoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioVendasGrupo,'FormRelatorioVendasGrupo',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.FormActivate(Sender: TObject);
var
  Retorno : Integer;
begin
  inherited;
  Retorno := ReturnClass;
  if Retorno >= 0 then
    if DM.Acesso(ListForm[Retorno].FormName) > 0 then
      CriaFormulario(ListForm[Retorno].FormClass,ListForm[Retorno].FormName,False,False,True,'')
    else
      SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelCaixaTotaisporNumerarioClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioTotalNumerarioCaixa,'FormRelatorioTotalNumerarioCaixa',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMUtilitariosImportaodeDadosClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroImportaDados,'FormCadastroImportaDados',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMEstoqueMovimentosDiversosClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroMovimentosDiversosEstoque,'FormCadastroMovimentosDiversosEstoque',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelClientesporcidadeClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioClienteporCidade,'FormRelatorioClienteporCidade',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelPosicaodiariaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioPosicaoDiariaEstoque,'FormRelatorioPosicaoDiariaEstoque',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.ApagarPreVendas;
var
  Painel, DataLimite : string ;
begin
  Painel := FormPrincipal.Caption ;

  DataLimite := FormatDateTime('mm/dd/yyyy',now-7) ;

  FormPrincipal.Caption := Application.Title + ' - Preparando para apagar Pré-Venda com mais de 7 dias...' ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select * from PREVENDA') ;
  DM.SQLTemplate.SQL.Add('where PDVDDHVENDA <= "' + DataLimite + '"');
  DM.SQLTemplate.SQL.Add('order by PDVDDHVENDA');
  DM.SQLTemplate.Open ;

  Screen.Cursor := crHourglass ;
  while not DM.SQLTemplate.EOF do
  begin
    FormPrincipal.Caption := Application.Title + ' - Apagando Pré-Venda Item ' +
                             DM.SQLTemplate.FieldByName('TERMICOD').AsString + '.' +
                             DM.SQLTemplate.FieldByName('PRVDICOD').AsString ;
    DM.SQLLimparPreVenda.Close ;
    DM.SQLLimparPreVenda.SQL.Clear ;
    DM.SQLLimparPreVenda.SQL.Add('delete from PREVENDAITEM') ;
    DM.SQLLimparPreVenda.SQL.Add('where TERMICOD = ' + DM.SQLTemplate.FieldByName('TERMICOD').AsString) ;
    DM.SQLLimparPreVenda.SQL.Add('and   PRVDICOD = ' + DM.SQLTemplate.FieldByName('PRVDICOD').AsString) ;
    DM.SQLLimparPreVenda.ExecSQL ;

    FormPrincipal.Caption := Application.Title + ' - Apagando Pré-Venda Nuerário ' +
                             DM.SQLTemplate.FieldByName('TERMICOD').AsString + '.' +
                             DM.SQLTemplate.FieldByName('PRVDICOD').AsString ;
    DM.SQLLimparPreVenda.Close ;
    DM.SQLLimparPreVenda.SQL.Clear ;
    DM.SQLLimparPreVenda.SQL.Add('delete from PREVENDANUMERARIO') ;
    DM.SQLLimparPreVenda.SQL.Add('where TERMICOD = ' + DM.SQLTemplate.FieldByName('TERMICOD').AsString) ;
    DM.SQLLimparPreVenda.SQL.Add('and   PRVDICOD = ' + DM.SQLTemplate.FieldByName('PRVDICOD').AsString) ;
    DM.SQLLimparPreVenda.ExecSQL ;

    FormPrincipal.Caption := Application.Title + ' - Apagando Pré-Venda Contas Receber ' +
                             DM.SQLTemplate.FieldByName('TERMICOD').AsString + '.' +
                             DM.SQLTemplate.FieldByName('PRVDICOD').AsString ;

    DM.SQLLimparPreVenda.Close ;
    DM.SQLLimparPreVenda.SQL.Clear ;
    DM.SQLLimparPreVenda.SQL.Add('delete from PREVENDACONTASRECEBER') ;
    DM.SQLLimparPreVenda.SQL.Add('where TERMICOD = ' + DM.SQLTemplate.FieldByName('TERMICOD').AsString) ;
    DM.SQLLimparPreVenda.SQL.Add('and   PRVDICOD = ' + DM.SQLTemplate.FieldByName('PRVDICOD').AsString) ;
    DM.SQLLimparPreVenda.ExecSQL ;

    FormPrincipal.Caption := Application.Title + ' - Apagando Pré-Venda ' +
                             DM.SQLTemplate.FieldByName('TERMICOD').AsString + '.' +
                             DM.SQLTemplate.FieldByName('PRVDICOD').AsString ;
    DM.SQLLimparPreVenda.Close ;
    DM.SQLLimparPreVenda.SQL.Clear ;
    DM.SQLLimparPreVenda.SQL.Add('delete from PREVENDA') ;
    DM.SQLLimparPreVenda.SQL.Add('where TERMICOD = ' + DM.SQLTemplate.FieldByName('TERMICOD').AsString);
    DM.SQLLimparPreVenda.SQL.Add('and   PRVDICOD = ' + DM.SQLTemplate.FieldByName('PRVDICOD').AsString);
    DM.SQLLimparPreVenda.ExecSQL ;

    DM.SQLTemplate.Next ;
  end ;
  Screen.Cursor := crDefault ;

  FormPrincipal.Caption := Painel ;
  Informa('Pré-Vendas apagadas com sucesso !') ;
end;

procedure TFormPrincipal.ApagarOrcamentos;
var
  Painel, DataLimite : string ;
begin
  Painel := FormPrincipal.Caption ;

  DataLimite := FormatDateTime('mm/dd/yyyy',now-30) ;

  FormPrincipal.Caption := Application.Title + ' - Preparando para apagar Orçamentos com mais de 30 dias...' ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select * from PEDIDOVENDA') ;
  DM.SQLTemplate.SQL.Add('where REGISTRO <= "' + DataLimite + '"');
  DM.SQLTemplate.SQL.Add('order by REGISTRO');
  DM.SQLTemplate.Open ;

  Screen.Cursor := crHourglass ;
  while not DM.SQLTemplate.EOF do
  begin
    FormPrincipal.Caption := Application.Title + ' - Apagando Orçamento Item ' +
                             DM.SQLTemplate.FieldByName('PDVDA13ID').AsString ;
    DM.SQLLimparPreVenda.Close ;
    DM.SQLLimparPreVenda.SQL.Clear ;
    DM.SQLLimparPreVenda.SQL.Add('delete from PEDIDOVENDAITEM') ;
    DM.SQLLimparPreVenda.SQL.Add('where PDVDA13ID = "' + DM.SQLTemplate.FieldByName('PDVDA13ID').AsString+'"') ;
    DM.SQLLimparPreVenda.ExecSQL ;


    FormPrincipal.Caption := Application.Title + ' - Apagando Orçamento Contas Receber ' +
                             DM.SQLTemplate.FieldByName('PDVDA13ID').AsString ;
    DM.SQLLimparPreVenda.Close ;
    DM.SQLLimparPreVenda.SQL.Clear ;
    DM.SQLLimparPreVenda.SQL.Add('delete from CONTASRECEBER') ;
    DM.SQLLimparPreVenda.SQL.Add('where PDVDA13ID = "' + DM.SQLTemplate.FieldByName('PDVDA13ID').AsString+'"') ;
    DM.SQLLimparPreVenda.ExecSQL ;

    FormPrincipal.Caption := Application.Title + ' - Apagando Orçamento ' +
                             DM.SQLTemplate.FieldByName('PDVDA13ID').AsString ;
    DM.SQLLimparPreVenda.Close ;
    DM.SQLLimparPreVenda.SQL.Clear ;
    DM.SQLLimparPreVenda.SQL.Add('delete from PEDIDOVENDA') ;
    DM.SQLLimparPreVenda.SQL.Add('where PDVDA13ID = "' + DM.SQLTemplate.FieldByName('PDVDA13ID').AsString+'"') ;
    DM.SQLLimparPreVenda.ExecSQL ;

    DM.SQLTemplate.Next ;
  end ;
  Screen.Cursor := crDefault ;

  FormPrincipal.Caption := Painel ;
  Informa('Orçamentos apagados com sucesso!') ;
end;

procedure TFormPrincipal.MnPlanilhadeVendasExternasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioPlanilhaMensalVendas,'FormRelatorioPlanilhaMensalVendas',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);    
end;

procedure TFormPrincipal.MnADMCadastroCobradoresClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroCobrador,'FormCadastroCobrador',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);    
end;

procedure TFormPrincipal.MnADMCobrancaEnviarContratosAnaliseDeCobrancaClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaAnaliseCobranca,'FormTelaAnaliseCobranca',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);    
end;

procedure TFormPrincipal.MnADMEstoqueConsultadeSaldoporEmpresaClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaConsultaSaldoPorEmpresa,'FormTelaConsultaSaldoPorEmpresa',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMCobrancaComissesClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioComissaoCobranca,'FormRelatorioComissaoCobranca',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);    
end;

procedure TFormPrincipal.MnADMUtilitariosManutenodeCuponsClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroManutencaoCupom,'FormCadastroManutencaoCupom',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);    
end;

procedure TFormPrincipal.MnADMRelEstoquePorMarcaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioEstoquePorMarca,'FormRelatorioEstoquePorMarca',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);    
end;

procedure TFormPrincipal.MnADMRelEstoqueMarcaReferenciaClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioEstoqueMarcaReferencia,'FormRelatorioEstoqueMarcaReferencia',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);    
end;

procedure TFormPrincipal.MnRelCobExtratodeCredairioporClienteClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioExtratoCliente, 'FormRelatorioExtratoCliente',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);    
end;

procedure TFormPrincipal.MnADMRelCupomEmitidoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioCupomEmitido, 'FormRelatorioCupomEmitido',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);    
end;

procedure TFormPrincipal.MnADMRelGeranciaisResumodeOperacaoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioResumoOperacaoDiaria, 'FormRelatorioResumoOperacaoDiaria',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);    
end;

procedure TFormPrincipal.MnADMRelProdProdutosCadastradosClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioProdutoCadastrado, 'FormRelatorioProdutoCadastrado',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);    
end;

procedure TFormPrincipal.MnADMRELEstoquePorMarcaPorGrupoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioEstoquePorMarcaPorGrupo, 'FormRelatorioEstoquePorMarcaPorGrupo',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);    
end;

procedure TFormPrincipal.MnADMRelCredContasaReceberRecebidasClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasRecebidas, 'FormRelatorioContasRecebidas',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);    
end;

procedure TFormPrincipal.MnADMRelCredContasaReceberAReceberClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasaReceber, 'FormRelatorioContasaReceber',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMFINCadastroComissaoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroVendedorComissao, 'FormCadastroVendedorComissao',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.AtualizaodeMoeda1Click(Sender: TObject);
begin
  inherited;
  if MatrizFilial = 'M' then
    begin
      if DM.Acesso((Sender as TMenuItem).Name) > 0 then
        CriaFormulario(TFormTelaAtualizacaoMoeda, 'FormTelaAtualizacaoMoeda',False,False,False,'')
      else
        SoundPlay('Acesso Negado.wav',Sender);
    end
  else
    begin
      SoundPlay('Acesso Negado.wav',Sender);
      Informa('Esta tela não pode ser acessada na filial!');
      Abort;
    end;
end;

procedure TFormPrincipal.MnADMRelVenComSinteticoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario( TFormRelatorioComissao, 'FormRelatorioComissao',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelVenDetalhadoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario( TFormRelatorioComissaoDetalhado, 'FormRelatorioComissaoDetalhado',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRELEstoquePorGradePorProdutoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioEstoquePorGradePorProduto, 'FormRelatorioEstoquePorGradePorProduto',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRELApuracaodeICMSClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioApuracaoICMS, 'FormRelatorioApuracaoICMS',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRELTeleEntregaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioTeleEntrega, 'FormRelatorioTeleEntrega',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelVendasPorClienteClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioVendaPorCliente, 'FormRelatorioVendaPorCliente',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelCupomQuitadoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioCupomQuitado, 'FormRelatorioCupomQuitado',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMCadHorariosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroHorario, 'FormCadastroHorario',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelFiscalNotasFiscaisCuponsEmitidosPorCFOPClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioNotaFiscalEmitidaPorCFOP, 'FormRelatorioNotaFiscalEmitidaPorCFOP',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelProdutosemPromocaoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioProdutoEmPromocao, 'FormRelatorioProdutoEmPromocao',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRemPontodeEquilbrioClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioPontoDeEquilibrio, 'FormRelatorioPontoDeEquilibrio',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelInvListagemParaInventrioPorGradePorProdutoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioListagemParaInventarioPorGradePorProduto, 'FormRelatorioListagemParaInventarioPorGradePorProduto',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.ConsultaNmerosdeSrie1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaConsultaNumeroSerie, 'FormTelaConsultaNumeroSerie',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMEstTransfernciadeMercadoriaClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaTransferencia, 'FormTelaTransferencia',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelEstTransfernciadeProdutosClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioTransferencia, 'FormRelatorioTransferencia',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelCredCartasdeAvisoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioCartasAviso, 'FormRelatorioCartasAviso',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMUTILManutecaoTabelaPrecoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaManutencaoTabelaPreco, 'FormTelaManutencaoTabelaPreco',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.ResumodeCaixa1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioResumoCaixa, 'FormRelatorioResumoCaixa',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.mnQuitaoComissesClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaQuitacaoComissoes, 'FormTelaQuitacaoComissoes',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMCadastroProdutosDecretosClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroDecreto, 'FormCadastroDecreto',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCadFornecedorClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioFornecedoresCadastrados, 'FormRelatorioFornecedoresCadastrados',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnListaagendaporprofissionalClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaRelListConsultaPeriodo, 'FormTelaRelListConsultaPeriodo',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnColecaoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroColecao, 'FormCadastroColecao',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnIndiceInadimpleciaCredClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioIndiceInadimplenciaCrediario, 'FormRelatorioIndiceInadimplenciaCrediario',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelVendasPorMarcaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioVendasMarca,'FormRelatorioVendasMarca',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.VendasporTipo1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioResumoVendasportipo,'FormRelatorioResumoVendasportipo',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnVendasporAliquotasparaContabilidadeClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioResumoVendasporAliquota,'FormRelatorioResumoVendasporAliquota',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnContasRecebidasparaContabidadeClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasRecebidas, 'FormRelatorioContasRecebidas',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.RemessaRetornoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioVendaPeriodoMenosRetorno, 'FormRelatorioVendaPeriodoMenosRetorno',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnTanquesClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTanque, 'FormCadastroTanque',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnBombasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroBomba, 'FormCadastroBomba',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnLivroClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroLivroLMC, 'FormCadastroLivroLMC',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnLmcManualClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroLMC, 'FormCadastroLMC',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnVendasPorColecaoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioVendasColecao, 'FormRelatorioVendasColecao',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFornecedoresMalaDiretaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaEmissaoMalaDiretaFornecedores, 'FormTelaEmissaoMalaDiretaFornecedores',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MNPedidoCompraClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroPedidoCompra, 'FormCadastroPedidoCompra',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnNotadeEntradaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroNotaCompra, 'FormCadastroNotaCompra',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMNotasEntradasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioNotasCompra,'FormRelatorioNotasCompra',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MNADMRelatoriosComprasVendasporGrupoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioVendasComprasPorGrupo,'FormRelatorioVendasComprasPorGrupo',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMTipoFornecedorClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTipoFornecedor, 'FormCadastroTipoFornecedor',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMMalaDiretaClienteClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaGeracaoMalaDireta, 'FormTelaGeracaoMalaDireta',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRamoSubRamoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroRamo, 'FormCadastroRamo',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMLanctoContasPagarClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroContasPagar, 'FormCadastroContasPagar',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMBaixaDocumentosPagarClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaBaixarDocumentosPagar, 'FormTelaBaixarDocumentosPagar',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MNADMProfissionaisExternosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroProfExterno, 'FormCadastroProfExterno',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMCadastroMateriasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroMateriais, 'FormCadastroMateriais',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMUtilitariosApagarOrcamentosClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) = 0 then
    exit
  else
    if Pergunta('Nao','Deseja apagar os Orçamentos com mais de trinta dias.') then
      ApagarOrcamentos;
end;

procedure TFormPrincipal.MnEmissaoBonusClienteClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaEmissaoBonusCliente, 'FormTelaEmissaoBonusCliente',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender)
end;

procedure TFormPrincipal.MnTransportadorasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTransportadora,'FormCadastroTransportadora',False,True,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender)
end;

procedure TFormPrincipal.MnExportaparaBalancasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaExportacaoBalanca,'FormTelaExportacaoBalanca',False,True,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnRepresentantesClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroRepresentante,'FormCadastroRepresentante',False,True,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnTrocasMercadoriaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTrocas,'FormCadastroTrocas',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnAtualizaodeEstoquedasVendasdosPDVsClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaAtualizaEstoquePDVs,'FormTelaAtualizaEstoquePDVs',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMCadMotAfastamentoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroMotivoAfastamento,'FormCadastroMotivoAfastamento',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender)
end;

procedure TFormPrincipal.MnADMRelCurvaABCEstoqueClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioCurvaABCEstoque,'FormRelatorioCurvaABCEstoque',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender)
end;

procedure TFormPrincipal.MnRotaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroRota,'FormCadastroRota',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCotacaoCompraClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroCotacaoCompra,'FormCadastroCotacaoCompra',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMUtilitariosConsultadePrevendasClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroPrevenda,'FormCadastroPrevenda',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelMovimentosDiversosporClienteClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioMotvoDiversos, 'FormRelatorioMotvoDiversos',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnExportarparaBuscaPrecoGertec22Click(
  Sender: TObject);
var CaminhoNomeArquivo, Linha, PrecoStr : String;
    Arquivo : TextFile;
    Preco : Double;
begin
  inherited;
  // A Diferenca no arquivo PriceTab da versao 2.2 para 2.3, é apenas no tamanho da Descricao que diminuiu dois Caracteres!

  if Pergunta('Nao','Deseja gerar na pasta ..\BuscaPreco o arquivo para o Pricetab.txt?') then
    begin
      CaminhoNomeArquivo := dm.PathAplicacao + '\BuscaPreco\Pricetab.txt';
      AssignFile(Arquivo,CaminhoNomeArquivo);
      Rewrite(Arquivo);
      Reset(Arquivo);
      Append(Arquivo);
      dm.SQLTemplate.Close;
      dm.SQLTemplate.sql.Clear;
      dm.SQLTemplate.sql.Add('Select * from Produto Where PRODCSERVICO = "N" and PRODCATIVO = "S"');
      dm.SQLTemplate.Open;
      dm.SQLTemplate.First;
      Linha := '';
      // Criar Proximas Linhas
      While not dm.SQLTemplate.Eof Do
        begin
          try
            if (((dm.SQLTemplate.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (dm.SQLTemplate.FieldByName('PRODDFIMPROMO').AsDateTime >= Now)) or
               ((dm.SQLTemplate.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (dm.SQLTemplate.FieldByName('PRODDFIMPROMO').AsString = ''))) and (dm.SQLTemplate.FieldByName('PRODN3VLRVENDAPROM').AsFloat > 0) then
               Preco := dm.SQLTemplate.FieldByName('PRODN3VLRVENDAPROM').Value
            else
               Preco := dm.SQLTemplate.fieldbyname('PRODN3VLRVENDA').Value;

            PrecoSTR := FormatFloat('##0.00', Preco);
            if dm.SQLTemplate.fieldbyname('PRODA60CODBAR').AsString <> '' then
              Linha := dm.SQLTemplate.fieldbyname('PRODA60CODBAR').AsString +'|'+
                       Copy(dm.SQLTemplate.fieldbyname('PRODA30ADESCRREDUZ').AsString,1,20) +'|'+
                       PrecoSTR +'|';
            Writeln(Arquivo,Linha);
          except
            ShowMessage('Cód.Produto com Erro = ' +dm.SQLTemplate.fieldbyname('PRODICOD').AsString +CHR(13)+
                        'Valor R$ '+ FloatToStr(Preco));
          end;
          dm.SQLTemplate.Next;
        end;

      // Loop no Cd.Barras Aux
      dm.SQLTemplate.Close;
      dm.SQLTemplate.sql.Clear;
      dm.SQLTemplate.sql.Add('Select PRODUTOBARRAS.PRODICOD,PRODUTOBARRAS.PRBAA15BARRAS,PRODUTO.PRODICOD,PRODUTO.PRODA30ADESCRREDUZ, PRODUTO.PRODN3VLRVENDAPROM,PRODUTO.PRODN3VLRVENDA,PRODUTO.PRODDINIPROMO,PRODUTO.PRODDFIMPROMO');
      dm.SQLTemplate.sql.Add('From ProdutoBarras inner join Produto  on ProdutoBarras.PRODICOD = Produto.PRODICOD');
      dm.SQLTemplate.Open;
      dm.SQLTemplate.First;
      Linha := '';
      // Criar Proximas Linhas
      While not dm.SQLTemplate.Eof Do
        begin
          try
            if (((dm.SQLTemplate.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (dm.SQLTemplate.FieldByName('PRODDFIMPROMO').AsDateTime >= Now)) or
               ((dm.SQLTemplate.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (dm.SQLTemplate.FieldByName('PRODDFIMPROMO').AsString = ''))) and (dm.SQLTemplate.FieldByName('PRODN3VLRVENDAPROM').AsFloat > 0) then
               Preco := dm.SQLTemplate.FieldByName('PRODN3VLRVENDAPROM').Value
            else
               Preco := dm.SQLTemplate.fieldbyname('PRODN3VLRVENDA').Value;

            PrecoSTR := FormatFloat('##0.00', Preco);
            if dm.SQLTemplate.fieldbyname('PRBAA15BARRAS').AsString <> '' then
              Linha := dm.SQLTemplate.fieldbyname('PRBAA15BARRAS').AsString +'|'+
                       Copy(dm.SQLTemplate.fieldbyname('PRODA30ADESCRREDUZ').AsString,1,20) +'|'+
                       PrecoSTR +'|';
            Writeln(Arquivo,Linha);
          except
            ShowMessage('Cód.Produto com Erro = ' +dm.SQLTemplate.fieldbyname('PRODICOD').AsString +CHR(13)+
                        'Valor R$ '+ FloatToStr(Preco));
          end;
          dm.SQLTemplate.Next;
        end;
      // Fechar Arquivo
      CloseFile(Arquivo);
      ShowMessage('Concluído com Sucesso!');
    end;
end;

procedure TFormPrincipal.MNADMRelRegVendaAgrotoxicosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioRegVendaAgrotoxico,'FormRelatorioRegVendaAgrotoxico',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCadastroMesasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroMesa,'FormCadastroMesa',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnAdmReduesZPeriodoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioReducaoZ,'FormRelatorioReducaoZ',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCadastroReducaoDiaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroReducaoZ, 'FormCadastroReducaoZ',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnRelReducaoZDiaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioReducaoZ, 'FormRelatorioReducaoZ',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnadmCadastrarReservaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroReservaMesa,'FormCadastroReservaMesa',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnAgendaTelefonicaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroAgendaTelefonica, 'FormCadastroAgendaTelefonica',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMCadastroProdutoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroProduto,'FormCadastroProduto',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnComprasporMarcaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioComprasMarca,'FormRelatorioComprasMarca',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnComprasporGrupoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioComprasGrupo,'FormRelatorioComprasGrupo',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnComprasporColecaoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioComprasColecao,'FormRelatorioComprasColecao',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnProdutosCompradosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioProdutosComprados,'FormRelatorioProdutosComprados',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCadastroFornecedorClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroFornecedor,'FormCadastroFornecedor',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.Agenda1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroFornecedor,'FormRelatorioAgendaTelefonica',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnMostrarResumodeOpFinanceirasClick(
  Sender: TObject);
begin
  inherited;
  if dm.SQLLocate('USUARIO','USUAICOD','USUACRESUMOFIN',INTTOSTR(UsuarioCorrente)) = 'S' then
    begin
      Application.CreateForm(TFormTelaResumoFinanceiro,FormTelaResumoFinanceiro);
      FormTelaResumoFinanceiro.ShowModal;
    end
  else
    begin
      try SoundPlay('Acesso Negado.wav',Sender); except Application.ProcessMessages; end;
      ShowMessage('Acesso Negado! Usuario sem permissão para ver o Resumo Financeiro!');
    end;
end;

procedure TFormPrincipal.MnCurvaABCVendasClientesClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioCurvaABCCliente,'FormRelatorioCurvaABCCliente',False,False,False,'')
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

procedure TFormPrincipal.MnAdicionarTarefaClick(Sender: TObject);
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

procedure TFormPrincipal.MnADMConsultaRastreabilidadeClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaConsultaRastreabilidade,'FormTelaConsultaRastreabilidade',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnProdutosPedidosCompraClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioProdutosPedidosCompra,'FormRelatorioProdutosPedidosCompra',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnDigitacaoEncerrantesDiariosClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaEncerranteDiario,'FormTelaEncerranteDiario',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnSaldoInicialProdutosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaGerarSaldoProduto,'FormTelaGerarSaldoProduto',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);

end;

procedure TFormPrincipal.MnAcompanharTarefasClick(Sender: TObject);
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

procedure TFormPrincipal.MnRelatorioLimitesCompraClienteClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioClienteLimiteCreditoExcedido,'FormRelatorioClienteLimiteCreditoExcedido',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCurriculumVitaeClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroCurriculum,'FormCadastroCurriculum',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMCadFeriadosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroFeriado,'FormCadastroFeriado',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMCadAfastamentosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroManutPonto,'FormCadastroManutPonto',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MNADMCadastroNCMClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroNCM,'FormCadastroNCM',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelPontoFuncionariosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioPontoFuncionario,'FormRelatorioPontoFuncionario',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MNADMRelApuraodeMargemporProdutoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioApuracaoMargemPorProduto,'FormRelatorioApuracaoMargemPorProduto',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MNADMConveniosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroConvenio,'FormCadastroConvenio',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MNADMSeriesClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroSerie,'FormCadastroSerie',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MNADMVencidasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasReceberVencidas,'FormRelatorioContasReceberVencidas',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCadTipoRetornoCobrancaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTipoRetorno,'FormCadastroTipoRetorno',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCadTipoContatoCobrancaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTipoContatoCobranca,'FormCadastroTipoContatoCobranca',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMCobrancaAgendamentoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaAgendaContatos,'FormTelaAgendaContatos',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MNADMEnquadramentoClienteCobrancaClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaEnquadramentoClientes,'FormTelaEnquadramentoClientes',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnExportarProdutosSemBarrasClick(Sender: TObject);
var CaminhoNomeArquivo, Linha, PrecoStr : String;
    Arquivo : TextFile;
    Preco : Double;
begin
  inherited;
  if Pergunta('Nao','Deseja gerar o arquivo Produtos?') then
    begin
      CaminhoNomeArquivo := '..\ProdutosSemCodigoBarras.txt';
      AssignFile(Arquivo,CaminhoNomeArquivo);
      Rewrite(Arquivo);
      Reset(Arquivo);
      Append(Arquivo);

      dm.SQLTemplate.Close;
      dm.SQLTemplate.sql.Clear;
      dm.SQLTemplate.sql.Add('Select * from Produto Where PRODA60CODBAR = "" and PRODCATIVO = "S"');
      dm.SQLTemplate.Open;
      dm.SQLTemplate.First;
      Linha := '';
      // Criar Proximas Linhas
      While not dm.SQLTemplate.Eof Do
        begin
          try
            if (((dm.SQLTemplate.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (dm.SQLTemplate.FieldByName('PRODDFIMPROMO').AsDateTime >= Now)) or
               ((dm.SQLTemplate.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (dm.SQLTemplate.FieldByName('PRODDFIMPROMO').AsString = ''))) and (dm.SQLTemplate.FieldByName('PRODN3VLRVENDAPROM').AsFloat > 0) then
               Preco := dm.SQLTemplate.FieldByName('PRODN3VLRVENDAPROM').Value
            else
               Preco := dm.SQLTemplate.fieldbyname('PRODN3VLRVENDA').Value;

            PrecoSTR := FormatFloat('##0.00', Preco);
            Linha    := dm.SQLTemplate.fieldbyname('PRODA30ADESCRREDUZ').AsString +'|'+
                       PrecoSTR +'|';
            Writeln(Arquivo,Linha);
          except
            ShowMessage('Cód.Produto com Erro = ' +dm.SQLTemplate.fieldbyname('PRODICOD').AsString +CHR(13)+
                        'Valor R$ '+ FloatToStr(Preco));
          end;
          dm.SQLTemplate.Next;
        end;

      // Fechar Arquivo
      CloseFile(Arquivo);
      ShowMessage('Concluído com Sucesso!');
    end;
end;

procedure TFormPrincipal.MnExportarparaBuscaPrecoGertec23Click(
  Sender: TObject);
var CaminhoNomeArquivo, Linha, PrecoStr : String;
    Arquivo : TextFile;
    Preco : Double;
begin
  inherited;
  // A Diferenca no arquivo PriceTab da versao 2.2 para 2.3, é apenas no tamanho da Descricao que diminuiu dois Caracteres!
  if Pergunta('Nao','Deseja gerar na pasta BuscaPreco o arquivo para o Pricetab.txt?') then
    begin
      CaminhoNomeArquivo := dm.PathAplicacao+'\BuscaPreco\Pricetab.txt';
      AssignFile(Arquivo,CaminhoNomeArquivo);
      Rewrite(Arquivo);
      Reset(Arquivo);
      Append(Arquivo);
      dm.SQLTemplate.Close;
      dm.SQLTemplate.sql.Clear;
      dm.SQLTemplate.sql.Add('Select * from Produto Where PRODCSERVICO = "N" and PRODCATIVO = "S"');
      dm.SQLTemplate.Open;
      dm.SQLTemplate.First;
      Linha := '';
      // Criar Proximas Linhas
      While not dm.SQLTemplate.Eof Do
        begin
          try
            if (((dm.SQLTemplate.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (dm.SQLTemplate.FieldByName('PRODDFIMPROMO').AsDateTime >= Now)) or
               ((dm.SQLTemplate.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (dm.SQLTemplate.FieldByName('PRODDFIMPROMO').AsString = ''))) and (dm.SQLTemplate.FieldByName('PRODN3VLRVENDAPROM').AsFloat > 0) then
               Preco := dm.SQLTemplate.FieldByName('PRODN3VLRVENDAPROM').Value
            else
               Preco := dm.SQLTemplate.fieldbyname('PRODN3VLRVENDA').Value;

            PrecoSTR := FormatFloat('##0.00', Preco);
            if dm.SQLTemplate.fieldbyname('PRODA60CODBAR').AsString <> '' then
              Linha := dm.SQLTemplate.fieldbyname('PRODA60CODBAR').AsString +'|'+
                       Copy(dm.SQLTemplate.fieldbyname('PRODA30ADESCRREDUZ').AsString,1,18) +'|'+
                       PrecoSTR +'|';
            Writeln(Arquivo,Linha);
          except
           // ShowMessage('Cód.Produto com Erro = ' +dm.SQLTemplate.fieldbyname('PRODICOD').AsString +CHR(13)+'Valor R$ '+ FloatToStr(Preco));
            Application.ProcessMessages;
          end;
          dm.SQLTemplate.Next;
        end;

      // Loop no Cd.Barras Aux
      dm.SQLTemplate.Close;
      dm.SQLTemplate.sql.Clear;
      dm.SQLTemplate.sql.Add('Select PRODUTOBARRAS.PRODICOD,PRODUTOBARRAS.PRBAA15BARRAS,PRODUTO.PRODICOD,PRODUTO.PRODA30ADESCRREDUZ, PRODUTO.PRODN3VLRVENDAPROM,PRODUTO.PRODN3VLRVENDA,PRODUTO.PRODDINIPROMO,PRODUTO.PRODDFIMPROMO');
      dm.SQLTemplate.sql.Add('From ProdutoBarras inner join Produto  on ProdutoBarras.PRODICOD = Produto.PRODICOD');
      dm.SQLTemplate.Open;
      dm.SQLTemplate.First;
      Linha := '';
      // Criar Proximas Linhas
      While not dm.SQLTemplate.Eof Do
        begin
          try
            if (((dm.SQLTemplate.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (dm.SQLTemplate.FieldByName('PRODDFIMPROMO').AsDateTime >= Now)) or
               ((dm.SQLTemplate.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (dm.SQLTemplate.FieldByName('PRODDFIMPROMO').AsString = ''))) and (dm.SQLTemplate.FieldByName('PRODN3VLRVENDAPROM').AsFloat > 0) then
               Preco := dm.SQLTemplate.FieldByName('PRODN3VLRVENDAPROM').Value
            else
               Preco := dm.SQLTemplate.fieldbyname('PRODN3VLRVENDA').Value;

            PrecoSTR := FormatFloat('##0.00', Preco);
            if dm.SQLTemplate.fieldbyname('PRBAA15BARRAS').AsString <> '' then
              Linha := dm.SQLTemplate.fieldbyname('PRBAA15BARRAS').AsString +'|'+
                       Copy(dm.SQLTemplate.fieldbyname('PRODA30ADESCRREDUZ').AsString,1,18) +'|'+
                       PrecoSTR +'|';
            Writeln(Arquivo,Linha);
          except
            //ShowMessage('Cód.Produto com Erro = ' +dm.SQLTemplate.fieldbyname('PRODICOD').AsString +CHR(13)+'Valor R$ '+ FloatToStr(Preco));
            Application.ProcessMessages;
          end;
          dm.SQLTemplate.Next;
        end;
      // Fechar Arquivo
      CloseFile(Arquivo);
      ShowMessage('Concluído com Sucesso!');
    end;
end;

procedure TFormPrincipal.MnTabeladePrecoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTabelaPreco,'FormCadastroTabelaPreco',True,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnExportarProdutoseGruposparaXMLClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormExportacaoProdutosGruposXML,'FormExportacaoProdutosGruposXML',True,False,False,'')
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

procedure TFormPrincipal.MnADMListaPrecoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaListaPreco, 'FormTelaListaPreco',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnDisplayNumeracaoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroDisplay,'FormCadastroDisplay',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnMotoBoyClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroMotoboy,'FormCadastroMotoboy',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.ImportaXMLDelphiClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaImportadorXML,'FormTelaImportadorXML',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnProdutosSemMovtoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioProdutosSemMovto,'FormRelatorioProdutosSemMovto',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRELApuracaodePisCofinsClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioApuracaoPisCofins,'FormRelatorioApuracaoPisCofins',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnProdutosAbaixoMinimoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioProdutosAbaixoMinimo,'FormRelatorioProdutosAbaixoMinimo',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.ExportarProdutosTeste1Click(Sender: TObject);
var CaminhoNomeArquivo, Linha : String;
    Arquivo : TextFile;
begin
  inherited;
  if Pergunta('Nao','Deseja gerar na pasta o arquivo para o Produtos.txt?') then
    begin
      CaminhoNomeArquivo := 'C:\Produtos.txt';
      AssignFile(Arquivo,CaminhoNomeArquivo);
      Rewrite(Arquivo);
      Reset(Arquivo);
      Append(Arquivo);
      dm.zConsulta.Close;
      dm.zConsulta.sql.Clear;
      dm.zConsulta.sql.Add('Select * from Produto Where PRODCSERVICO = ''N'' ');
      dm.zConsulta.Open;
      dm.zConsulta.First;
      Linha := '';
      // Criar Proximas Linhas
      While not dm.zConsulta.Eof Do
        begin
          try
            Linha    := dm.zConsulta.fieldbyname('PRODICOD').AsString      +'|'+
                        dm.zConsulta.fieldbyname('PRODA60CODBAR').AsString +'|'+
                        dm.zConsulta.fieldbyname('PRODA60DESCR').AsString  +'|'+
                        SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',dm.zConsulta.fieldbyname('UNIDICOD').AsString)   +'|'+
                        SQLLocate('NCM','NCMICOD','NCMA30CODIGO',dm.zConsulta.fieldbyname('NCMICOD').AsString)        +'|'+
                        SQLLocate('GRUPO','GRUPICOD','GRUPA60DESCR',dm.zConsulta.fieldbyname('GRUPICOD').AsString)    +'|'+
                        SQLLocate('SUBGRUPO','SUBGICOD','SUBGA60DESCR',dm.zConsulta.fieldbyname('SUBGICOD').AsString) +'|'+
                        dm.zConsulta.fieldbyname('PRODN3VLRCOMPRA').AsString                                          +'|'+
                        dm.zConsulta.fieldbyname('PRODN3VLRVENDA').AsString                                           +'|';
            Writeln(Arquivo,Linha);
          except
            Application.ProcessMessages;
          end;
          dm.zConsulta.Next;
        end;

      // Fechar Arquivo
      CloseFile(Arquivo);
      ShowMessage('Concluído com Sucesso!');
    end;
  DM.zConsulta.Close;
end;

procedure TFormPrincipal.MNADMRelPrevendasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioPrevendas,'FormRelatorioPrevendas',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MNADMObservaesComplementaresClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroObsProdutoRest,'FormCadastroObsProdutoRest',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.bsairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFormPrincipal.bProdutosClick(Sender: TObject);
begin
  inherited;
  MnADMCadastroProduto.Click;
end;

procedure TFormPrincipal.bClientesClick(Sender: TObject);
begin
  inherited;
  MnADMCadastroClientesCadastro.Click;
end;

procedure TFormPrincipal.bNFEImportarClick(Sender: TObject);
begin
  inherited;
  ImportaXMLDelphi.Click;
end;

procedure TFormPrincipal.MNADMProdutosSemMovimentaoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaProdutosSemMov, 'FormTelaProdutosSemMov',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnIndiceInadimpleciaAnualClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioInadimplenciaAnual, 'FormRelatorioInadimplenciaAnual',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnPorPeriodoporEmpresaConferenciaClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioCupomEmitidoPorEmpresa, 'FormRelatorioCupomEmitidoPorEmpresa', False, False, False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnMostrarResumodeOpAdministrativasClick(
  Sender: TObject);
begin
  inherited;
  if dm.SQLLocate('USUARIO','USUAICOD','USUACRESUMOFIN',INTTOSTR(UsuarioCorrente)) = 'S' then
    begin
      Application.CreateForm(TFormTelaResumoLoja,FormTelaResumoLoja);
      FormTelaResumoLoja.ShowModal;
    end
  else
    begin
      try SoundPlay('Acesso Negado.wav',Sender); except Application.ProcessMessages; end;
      ShowMessage('Acesso Negado! Usuario sem permissão para ver o Resumo Financeiro!');
    end;

end;

procedure TFormPrincipal.MnCidadesClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroCidade, 'FormCadastroCidade', False, False, False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnExportarClientesCadastradosClick(
  Sender: TObject);
var CaminhoNomeArquivo, Linha : String;
    Arquivo : TextFile;
begin
  inherited;
  if Pergunta('Nao','Deseja gerar na pasta o arquivo para o Clientes.txt?') then
    begin
      CaminhoNomeArquivo := 'C:\Clientes.txt';
      AssignFile(Arquivo,CaminhoNomeArquivo);
      Rewrite(Arquivo);
      Reset(Arquivo);
      Append(Arquivo);
      dm.zConsulta.Close;
      dm.zConsulta.sql.Clear;
      dm.zConsulta.sql.Add('Select * from Cliente');
      dm.zConsulta.Open;
      dm.zConsulta.First;
      Linha := '';
      // Criar Proximas Linhas
      While not dm.zConsulta.Eof Do
        begin
          try
            Linha    := dm.zConsulta.fieldbyname('CLIEA13ID').AsString        +'|'+
                        dm.zConsulta.fieldbyname('CLIEA60RAZAOSOC').AsString  +'|'+
                        dm.zConsulta.fieldbyname('CLIEA60NOMEFANT').AsString  +'|'+
                        dm.zConsulta.fieldbyname('CLIEA15FONE1').AsString     +'|'+
                        dm.zConsulta.fieldbyname('CLIEA60ENDRES').AsString    +'|'+
                        dm.zConsulta.fieldbyname('CLIEA5NROENDRES').AsString  +'|'+
                        dm.zConsulta.fieldbyname('CLIEA60BAIRES').AsString    +'|'+
                        dm.zConsulta.fieldbyname('CLIEA60CIDRES').AsString    +'|'+
                        dm.zConsulta.fieldbyname('CLIEA2UFRES').AsString      +'|'+
                        dm.zConsulta.fieldbyname('CLIEA14CGC').AsString       +'|'+
                        dm.zConsulta.fieldbyname('CLIEA11CPF').AsString       +'|'+
                        dm.zConsulta.fieldbyname('CLIEA20IE').AsString        +'|'+
                        dm.zConsulta.fieldbyname('CLIEA10RG').AsString        +'|';
            Writeln(Arquivo,Linha);
          except
            Application.ProcessMessages;
          end;
          dm.zConsulta.Next;
        end;

      // Fechar Arquivo
      CloseFile(Arquivo);
      ShowMessage('Concluído com Sucesso!');
    end;
  DM.zConsulta.Close;
end;

procedure TFormPrincipal.MnTabelaCESTClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTabCEST,'FormCadastroTabCEST',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.ExportarProdutosparaColetordeDadosEanDescrioePreoVenda1Click(
  Sender: TObject);
var CaminhoNomeArquivo, Linha : String;
    Arquivo : TextFile;
begin
  inherited;
  if Pergunta('Nao','Deseja gerar na pasta o arquivo para o c:\Produtos_Coletor.txt?') then
    begin
      CaminhoNomeArquivo := 'C:\Produtos_Coletor.txt';
      AssignFile(Arquivo,CaminhoNomeArquivo);
      Rewrite(Arquivo);
      Reset(Arquivo);
      Append(Arquivo);
      dm.zConsulta.Close;
      dm.zConsulta.sql.Clear;
      dm.zConsulta.sql.Add('Select * from Produto Where PRODCSERVICO = ''N'' ');
      dm.zConsulta.Open;
      dm.zConsulta.First;
      Linha := '';
      // Criar Proximas Linhas
      While not dm.zConsulta.Eof Do
        begin
          if length(dm.zConsulta.fieldbyname('PRODA60CODBAR').AsString)=13 then
            begin
              try
                Linha    := copy(dm.zConsulta.fieldbyname('PRODA60CODBAR').AsString,1,13) +','+
                            copy(dm.zConsulta.fieldbyname('PRODA60DESCR').AsString,1,27)  +','+
                            TrocaVirgulaPorPonto(dm.zConsulta.fieldbyname('PRODN3VLRVENDA').AsString) ;
                Writeln(Arquivo,Linha);
                Application.ProcessMessages;
              except
                Application.ProcessMessages;
              end;
            end;
          dm.zConsulta.Next;
        end;

      // Fechar Arquivo
      CloseFile(Arquivo);
      ShowMessage('Concluído com Sucesso!');
    end;
  DM.zConsulta.Close;
end;

procedure TFormPrincipal.MNADMRelatoriosComprasVendasporProdutoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioVendasComprasPorProduto,'FormRelatorioVendasComprasPorProduto',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

end.
