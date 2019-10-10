program Checkout;

uses
  Variants,
  Forms,
  Windows,
  Dialogs,
  SysUtils,
  TelaItens in 'TelaItens.pas' {FormTelaItens},
  DataModuloTemplate in '..\..\Template\DataModuloTemplate.pas' {DMTemplate: TDataModule},
  DataModulo in 'DataModulo.pas' {DM: TDataModule},
  TelaTeclasAtalhoTelaItens in 'TelaTeclasAtalhoTelaItens.pas' {FormTelaTeclasAtalhoTelaItens},
  TelaTipoDescontoItem in 'TelaTipoDescontoItem.pas' {FormTelaTipoDescontoItem},
  CadastroTemplate in '..\..\Template\CadastroTEMPLATE.pas' {FormCadastroTEMPLATE},
  TelaConsultaRapidaItem in 'TelaConsultaRapidaItem.pas' {FormTelaConsultaRapidaItem},
  TelaItensIncluidosCupom in 'TelaItensIncluidosCupom.pas' {FormTelaItensIncluidosCupom},
  TelaFechamentoVenda in 'TelaFechamentoVenda.pas' {FormTelaFechamentoVenda},
  TelaConsultaRapidaCliente in 'TelaConsultaRapidaCliente.pas' {FormTelaConsultaRapidaCliente},
  TelaConsultaRapidaVendedor in 'TelaConsultaRapidaVendedor.pas' {FormTelaConsultaRapidaVendedor},
  TelaConsultaRapidaPlano in 'TelaConsultaRapidaPlano.pas' {FormTelaConsultaRapidaPlano},
  TelaRecebimentoCrediario in 'TelaRecebimentoCrediario.pas' {FormTelaRecebimentoCrediario},
  TelaConsultaRapidaNumerario in 'TelaConsultaRapidaNumerario.pas' {FormTelaConsultaRapidaNumerario},
  TelaTeclasAtalhoTelaRecebimetoCrediario in 'TelaTeclasAtalhoTelaRecebimetoCrediario.pas' {FormTelaTeclasAtalhoTelaRecebimetoCrediario},
  TelaConsultaContratosCliente in 'TelaConsultaContratosCliente.pas' {FormTelaConsultaContratosCliente},
  ImportarPreVenda in 'ImportarPreVenda.pas' {FormTelaImportarPreVenda},
  MovimentoCaixaCheckout in 'MovimentoCaixaCheckout.pas' {FormTelaMovimentoCaixa},
  TelaTiraTeima in 'TelaTiraTeima.pas' {FormTelaTiraTeima},
  TelaTeclasAtalhoTelaFechamentoVenda in 'TelaTeclasAtalhoTelaFechamentoVenda.pas' {FormTelaTeclasAtalhoTelaFechamentoVenda},
  ECFCheckout in 'ECFCheckout.pas',
  TelaCompSigtron in 'TelaCompSigtron.pas' {CompSigtron},
  CadastroCliente in '..\ArquivosComuns\CadastroCliente.pas' {FormCadastroCliente},
  CadastroClienteDependente in '..\ArquivosComuns\CadastroClienteDependente.pas' {FormCadastroClienteDependente},
  CadastroClienteReferencia in '..\ArquivosComuns\CadastroClienteReferencia.pas' {FormCadastroClienteReferencia},
  CadastroMotivoBloqueio in '..\ArquivosComuns\CadastroMotivoBloqueio.pas' {FormCadastroMotivoBloqueio},
  CadastroTipoCliente in '..\ArquivosComuns\CadastroTipoCliente.pas' {FormCadastroTipoCliente},
  CadastroClienteContato in '..\ArquivosComuns\CadastroClienteContato.pas' {FormCadastroClienteContato},
  TelaDadosCheque in 'TelaDadosCheque.pas' {FormTelaDadosCheque},
  UnitLibrary in '..\ArquivosComuns\UnitLibrary.pas',
  UnitCheckoutLibrary in 'UnitCheckoutLibrary.pas',
  Elgin_FIT in 'Elgin_FIT.pas',
  CadastroCupom in '..\ArquivosComuns\CadastroCupom.pas' {FormCadastroCupom},
  TelaConsultaRapidaConvenio in 'TelaConsultaRapidaConvenio.pas' {FormTelaConsultaRapidaConvenio},
  VarSYS in '..\..\Template\VarSYS.pas',
  FormResources in '..\..\Template\FormResources.pas',
  TelaImpressaoPreVenda in 'TelaImpressaoPreVenda.pas' {FormTelaImpressaoPreVenda},
  TelaImpressaoCarne in 'TelaImpressaoCarne.pas' {FormTelaImpressaoCarne},
  TelaCadastroDadosVenda in 'TelaCadastroDadosVenda.pas' {FormTelaCadastroDadosVenda},
  TelaImpressaoDadosVenda in 'TelaImpressaoDadosVenda.pas' {FormTelaImpressaoDadosVenda},
  TelaDadosVersao in 'TelaDadosVersao.pas' {FormTelaDadosVersao},
  TelaTotaisCaixa in 'TelaTotaisCaixa.pas' {FormTelaTotaisCaixa},
  TelaProdutoNaoEncontrado in 'TelaProdutoNaoEncontrado.pas' {FormTelaProdutoNaoEncontrado},
  TelaConsultaTemplate in '..\..\Template\TelaConsultaTemplate.pas' {FormTelaConsultaTemplate},
  TelaConsultaTabelaPreco in '..\ArquivosComuns\TelaConsultaTabelaPreco.pas' {FormTelaConsultaTabelaPreco},
  CadastroSituacaoCheque in '..\UnitFinanceiro\CadastroSituacaoCheque.pas' {FormCadastroSituacaoCheque},
  TelaConsultaConsignacoesPendentes in '..\ArquivosComuns\TelaConsultaConsignacoesPendentes.pas' {FormTelaConsultaConsignacoesPendentes},
  TelaFechamentoOrcamento in 'TelaFechamentoOrcamento.pas' {FormTelaFechamentoOrcamento},
  TELALOGIN in 'TelaLogin.pas' {FormTelaLogin},
  TelaEnvioEmailGeral in '..\ArquivosComuns\TelaEnvioEmailGeral.pas' {FormTelaEnvioEmailGeral},
  CadastroCep in '..\ArquivosComuns\CadastroCep.pas' {FormCadastroCep},
  TelaDadosCliente in 'TelaDadosCliente.pas' {FormTelaDadosCliente},
  TelaCadastroObs in 'TelaCadastroObs.pas' {FormTelaCadastroObs},
  TelaFechamentoCaixa in 'TelaFechamentoCaixa.pas' {FormTelaFechamentoCaixa},
  TelaImpressaoTermicaCodBar in '..\ArquivosComuns\TelaImpressaoTermicaCodBar.pas' {FormTelaImpressaoTermicaCodBar},
  SWEDA7000_AFRAC in 'SWEDA7000_AFRAC.pas',
  TelaConsultaRapidaCupom in 'TelaConsultaRapidaCupom.pas' {FormTelaConsultaRapidaCupom},
  WindowsLibrary in '..\ArquivosComuns\WindowsLibrary.pas',
  Schalter_SCF_ECF in 'Schalter_SCF_ECF.pas',
  ImportarPedidoOrcamento in 'ImportarPedidoOrcamento.pas' {FormTelaImportarPedidoOrcamento},
  TelaImportaItens in '..\ArquivosComuns\TelaImportaItens.pas' {FormTelaImportaItens},
  TelaDescricaoTecnicaProduto in 'TelaDescricaoTecnicaProduto.pas' {FormTelaDescricaoTecnicaProduto},
  WaitWindow in '..\ArquivosComuns\WaitWindow.pas',
  CartaoCredito in 'CartaoCredito.pas',
  ConsultaProvedor in 'ConsultaProvedor.pas' {FormConsultaProvedor},
  CadastroPlanoRecebimentoParcela in '..\Config\CadastroPlanoRecebimentoParcela.pas' {FormCadastroPlanoRecebimentoParcela},
  CadastroPlanoRecebimento in '..\Config\CadastroPlanoRecebimento.pas' {FormCadastroPlanoRecebimento},
  CadastroConsulta in '..\ArquivosComuns\CadastroConsulta.pas' {FormCadastroConsulta},
  Corisco_CT7000_V3 in 'Corisco_CT7000_V3.pas',
  TelaReceituario in 'TelaReceituario.pas' {FormTelaReceituario},
  ECF_AFRAC in 'ECF_AFRAC.pas',
  TelaConsultaLiberacaoCredito in 'TelaConsultaLiberacaoCredito.pas' {FormTelaConsultaLiberacaoCredito},
  TelaClienteHistorico in '..\ArquivosComuns\TelaClienteHistorico.pas' {FormTelaClienteHistorico},
  SWEDA7000 in 'SWEDA7000.pas',
  TelaConsultaPlanoRecebimento in '..\ArquivosComuns\TelaConsultaPlanoRecebimento.pas' {FormTelaConsultaPlanoRecebimento},
  TelaConsultaProduto in '..\ArquivosComuns\TelaConsultaProduto.pas' {FormTelaConsultaProduto},
  TelaSaldoPorLote in '..\UnitFaturamento\TelaSaldoPorLote.pas' {FormTelaSaldoPorLote},
  SearchLibrary in '..\ArquivosComuns\SearchLibrary.pas',
  TelaEmissaoEtiquetasCodigoBarras in '..\ArquivosComuns\TelaEmissaoEtiquetasCodigoBarras.pas' {FormTelaEmissaoEtiquetasCodigoBarras},
  TelaConsultaNotaCompra in '..\ArquivosComuns\TelaConsultaNotaCompra.pas' {FormTelaConsultaNotaCompra},
  TelaConsultaNotaFiscal in '..\ArquivosComuns\TelaConsultaNotaFiscal.pas' {FormTelaConsultaNotaFiscal},
  TelaConsultaPedidoVenda in '..\ArquivosComuns\TelaConsultaPedidoVenda.pas' {FormTelaConsultaPedidoVenda},
  TelaConsultaPedidoCompra in '..\ArquivosComuns\TelaConsultaPedidoCompra.pas' {FormTelaConsultaPedidoCompra},
  TelaEmissaoEtiquetaGrade in '..\UnitLoja\TelaEmissaoEtiquetaGrade.pas' {FormTelaEmissaoEtiquetaGrade},
  TelaConsultaTipoDocumento in '..\ArquivosComuns\TelaConsultaTipoDocumento.pas' {FormTelaConsultaTipoDocumento},
  TelaConsultaPortador in '..\ArquivosComuns\TelaConsultaPortador.pas' {FormTelaConsultaPortador},
  TelaConsultaNumerario in '..\ArquivosComuns\TelaConsultaNumerario.pas' {FormTelaConsultaNumerario},
  TelaConsultaEmpresa in '..\ArquivosComuns\TelaConsultaEmpresa.pas' {FormTelaConsultaEmpresa},
  TelaCadastroRapidoProdutos in 'TelaCadastroRapidoProdutos.pas' {FormTelaCadastroRapidoProduto},
  BEMATECH_MP20_CI in 'BEMATECH_MP20_CI.pas',
  IMPNAOFISCAL in 'IMPNAOFISCAL.pas',
  LeitorCodigoBarrasCheckout in 'LeitorCodigoBarrasCheckout.pas',
  TelaRetornoPesquisaProduto in '..\ArquivosComuns\TelaRetornoPesquisaProduto.pas' {FormTelaRetornoPesquisaProduto},
  TelaNegociacaoDivida in '..\ArquivosComuns\TelaNegociacaoDivida.pas' {FormTelaNegociacaoDivida},
  ExtensoLib in '..\ArquivosComuns\ExtensoLib.pas',
  TelaDadosOSPedidoVenda in '..\UnitFaturamento\TelaDadosOSPedidoVenda.pas' {FormTelaDadosOSPedidoVenda},
  TelaConfigControle in '..\ArquivosComuns\TelaConfigControle.pas' {FormTelaConfigControle},
  Urano_1EFC in 'Urano_1EFC.pas',
  TelaInformaNumeroSerieProduto in 'TelaInformaNumeroSerieProduto.pas' {FormTelaInformaNumeroSerieProduto},
  TelaProdutoNumeroSerie in '..\ArquivosComuns\TelaProdutoNumeroSerie.pas' {FormTelaGeralModalCadastroProdutoNumeroSerie},
  TelaConfigPedidos in '..\UnitFaturamento\TelaConfigPedidos.pas' {FormTelaConfigPedidos},
  TelaDadosCartaoCreditoManual in 'TelaDadosCartaoCreditoManual.pas' {FormTelaDadosCartaoCreditoManual},
  TelaMarcacaoConsulta in '..\SISCON\TelaMarcacaoConsulta.pas' {FormTelaMarcacaoConsulta},
  TelaMotivoNaoAtend in '..\SISCON\TelaMotivoNaoAtend.pas' {FormTelaMotivoNaoAtend},
  TelaTransfereNroSerial in '..\ArquivosComuns\TelaTransfereNroSerial.pas' {FormTelaTransfereNroSerial},
  TelaGeracaoMalaDireta in '..\ArquivosComuns\TelaGeracaoMalaDireta.pas' {FormTelaGeracaoMalaDireta},
  TelaConsultaSaldoPorEmpresa in '..\UnitLoja\TelaConsultaSaldoPorEmpresa.pas' {FormTelaConsultaSaldoPorEmpresa},
  TelaGeracaoPedidoParcial in '..\UnitFaturamento\TelaGeracaoPedidoParcial.pas' {FormTelaPedidoParcial},
  UnSoundPlay in '..\..\Template\UnSoundPlay.pas',
  TelaAssistenteLancamentoPlanoVariavelCheckout in 'TelaAssistenteLancamentoPlanoVariavelCheckout.pas' {FormTelaAssistenteLancamentoPlanoVariavelCheckout},
  TelaCodigo in 'TelaCodigo.pas' {FormTelaTroco},
  TelaLucro in 'TelaLucro.pas' {FormTelaLucro},
  TelaFotoExpandida in 'TelaFotoExpandida.pas' {FormTelaFotoExpandida},
  BemaFi32 in 'BemaFi32.pas',
  TelaConsultaRapidaDependente in 'TelaConsultaRapidaDependente.pas' {FormTelaConsultaRapidaDependente},
  TelaTransferenciaMercadoriaReceberProduto in '..\ArquivosComuns\TelaTransferenciaMercadoriaReceberProduto.pas' {FormTelaTransferenciaMercadoriaReceberProduto},
  TelaTransferenciaMercadoria in '..\ArquivosComuns\TelaTransferenciaMercadoria.pas' {FormTelaTransferencia},
  PrincipalRelatorios in 'PrincipalRelatorios.pas' {FormPrincipalRelatorios},
  TelaAutenticaUsuario in 'TelaAutenticaUsuario.pas' {FormTelaAutenticaUsuario},
  Elgin_FIT_FuncoesDLL in 'Elgin_FIT_FuncoesDLL.pas',
  TelaLembreteTarefa in '..\UnitTarefa\TelaLembreteTarefa.pas' {FormTelaLembreteTarefa},
  Principal in 'Principal.pas' {FormPrincipal},
  TelaConsultaTarefa in '..\UnitTarefa\TelaConsultaTarefa.pas' {FormTelaConsultaTarefa},
  CadastroClienteProduto in '..\ArquivosComuns\CadastroClienteProduto.pas' {FormCadastroClienteProduto},
  Epson_Termica in 'Epson_Termica.pas',
  TelaSaidaRapidaEstoque in '..\ArquivosComuns\TelaSaidaRapidaEstoque.pas' {FormTelaSaidaRapidaEstoque},
  TelaPrecoAlterado in 'TelaPrecoAlterado.pas' {FormTelaPrecoAlterado},
  BalancaFilizola in 'BalancaFilizola.pas' {FormBalancaFilizola},
  TelaPrestacaoContas in 'TelaPrestacaoContas.pas' {FormTelaPrestacaoContas},
  TelaConsultaPlaca in 'TelaConsultaPlaca.pas' {TelaConsultaPlacaCliente},
  Sweda_Termica in 'Sweda_Termica.pas',
  TelaMensagem in 'TelaMensagem.pas' {FormTelaMensagem},
  BalancaToledo in 'BalancaToledo.pas',
  TelaGeracaoXMLVendas in 'TelaGeracaoXMLVendas.pas' {FormTelaGeracaoXMLVendas},
  Daruma_Framework_FISCAL in 'Daruma_Framework_FISCAL.pas',
  TelaAvisoDebito in 'TelaAvisoDebito.pas' {FormTelaAvisoDebito},
  BalancaUrano in 'BalancaUrano.pas',
  TelaAtivacao in '..\Ativador\TelaAtivacao.pas' {FormTelaAtivacao},
  TelaTransferenciaGrade in '..\UnitLoja\TelaTransferenciaGrade.pas' {FormTelaTransferenciaGrade},
  TelaSplash in '..\ArquivosComuns\TelaSplash.pas' {FormSplash},
  TelaDataEntrega in 'TelaDataEntrega.pas' {FormDataEntrega},
  TelaProdutoDimensao in 'TelaProdutoDimensao.pas' {FormTelaProdutoDimensao},
  uDebugEx in '..\..\Template\uDebugEx.pas',
  TelaGeralTEMPLATE in '..\..\Template\TelaGeralTEMPLATE.pas' {FormTelaGeralTEMPLATE},
  TelaGeralModalTemplate in '..\..\Template\TelaGeralModalTemplate.pas' {FormTelaGeralModalTemplate},
  RelatorioExtratoCliente in '..\ArquivosComuns\RelatorioExtratoCliente.pas',
  RelatorioTemplate in '..\..\Template\RelatorioTemplate.pas' {FormRelatorioTEMPLATE},
  RelatorioVendasComprasPorProduto in '..\ArquivosComuns\RelatorioVendasComprasPorProduto.pas' {FormRelatorioVendasComprasPorProduto},
  RelatorioListagemProduto in '..\ArquivosComuns\RelatorioListagemProduto.pas' {FormRelatorioListagemProduto},
  RelatorioProdutosVendidos in '..\ArquivosComuns\RelatorioProdutosVendidos.pas' {FormRelatorioProdutosVendidos},
  TelaCriacaoGrade in '..\ArquivosComuns\TelaCriacaoGrade.pas' {FormTelaCriacaoGrade},
  TelaGeralExecutarSQL in '..\ArquivosComuns\TelaGeralExecutarSQL.pas' {FormTelaGeralExecutarSQL},
  RelatorioClienteCadastrado in '..\ArquivosComuns\RelatorioClienteCadastrado.pas' {FormRelatorioClienteCadastrado},
  TelaAssistenteLancamentoContasReceber in '..\ArquivosComuns\TelaAssistenteLancamentoContasReceber.pas' {FormTelaAssistenteLancamentoContasReceber},
  TelaEnvioEmail in '..\ArquivosComuns\TelaEnvioEmail.pas' {FormTelaEnvioGeracaoEmail},
  TelaConsultaPrevenda in '..\ArquivosComuns\TelaConsultaPrevenda.pas' {FormTelaConsultaPreVenda},
  RelatorioVendasPeriodo in '..\ArquivosComuns\RelatorioVendasPeriodo.pas' {FormRelatorioVendasPeriodo},
  TelaAssistenteContratosMensais in '..\ArquivosComuns\TelaAssistenteContratosMensais.pas' {FormTelaAssistenteContratosMensais},
  RelatorioIndiceInadimplenciaCrediario in '..\ArquivosComuns\RelatorioIndiceInadimplenciaCrediario.pas' {FormRelatorioIndiceInadimplenciaCrediario},
  CadastroProdutoComposicao in '..\ArquivosComuns\CadastroProdutoComposicao.pas' {FormCadastroProdutoComposicao},
  TelaResumoFinanceiro in '..\ArquivosComuns\TelaResumoFinanceiro.pas' {FormTelaResumoFinanceiro},
  TelaAssistenteLancamentoContasPagar in '..\ArquivosComuns\TelaAssistenteLancamentoContasPagar.pas' {FormTelaAssistenteLancamentoContasPagar},
  TelaConsultaVendedor in '..\ArquivosComuns\TelaConsultaVendedor.pas' {FormTelaConsultaVendedor},
  TelaConsultaProdutoGeral in '..\ArquivosComuns\TelaConsultaProdutoGeral.pas' {FormTelaConsultaProdutoGeral},
  TelaAtualizaPrecoProduto in '..\ArquivosComuns\TelaAtualizaPrecoProduto.pas' {FormTelaAtualizaPrecoProduto},
  TelaConsultaCliente in '..\ArquivosComuns\TelaConsultaCliente.pas' {FormTelaConsultaCliente},
  CadastroHistoricoPadrao in '..\ArquivosComuns\CadastroHistoricoPadrao.pas' {FormCadastroHistoricoPadrao},
  TelaConsultaOperacaoEstoque in '..\ArquivosComuns\TelaConsultaOperacaoEstoque.pas' {FormTelaConsultaOperacaoEstoque},
  TelaConsultaPlanoContas in '..\ArquivosComuns\TelaConsultaPlanoContas.pas' {FormTelaConsultaPlanoContas},
  TelaManutencaoProdutos in '..\ArquivosComuns\TelaManutencaoProdutos.pas' {FormTelaManutencaoProdutos},
  RelatorioClienteBloqueado in '..\ArquivosComuns\RelatorioClienteBloqueado.pas' {FormRelatorioClienteBloqueado},
  RelatorioInventarioEstoque in '..\ArquivosComuns\RelatorioInventarioEstoque.pas' {FormRelatorioInventarioEstoque},
  RelatorioProdutosPorFornecedor in '..\ArquivosComuns\RelatorioProdutosPorFornecedor.pas' {FormRelatorioProdutosPorFornecedor},
  RelatorioVendasComprasPorGrupo in '..\ArquivosComuns\RelatorioVendasComprasPorGrupo.pas' {FormRelatorioVendasComprasPorGrupo},
  RelatorioVendasConsignadas in '..\ArquivosComuns\RelatorioVendasConsignadas.pas' {FormRelatorioVendasConsignadas},
  RelatorioVendasPeriodoApuracaoMargem in '..\ArquivosComuns\RelatorioVendasPeriodoApuracaoMargem.pas' {FormRelatorioVendasPeriodoApuracaoMargem},
  RelatorioVendasPorPlano in '..\ArquivosComuns\RelatorioVendasPorPlano.pas' {FormRelatorioVendasPorPlano},
  TelaConsultaNumeroSerie in '..\ArquivosComuns\TelaConsultaNumeroSerie.pas' {FormTelaConsultaNumeroSerie},
  TelaEmissaoMalaDiretaFornecedores in '..\ArquivosComuns\TelaEmissaoMalaDiretaFornecedores.pas' {FormTelaEmissaoMalaDiretaFornecedores},
  TelaEntradaRapidaEstoque in '..\ArquivosComuns\TelaEntradaRapidaEstoque.pas' {FormTelaEntradaRapidaEstoque},
  TelaProdutoNumeroSerieTEMP in '..\ArquivosComuns\TelaProdutoNumeroSerieTEMP.pas',
  TelaAtualizacaoCEP in '..\ArquivosComuns\TelaAtualizacaoCEP.pas' {FormTelaAtualizacaoCEP},
  TelaSelecaoProduto in '..\ArquivosComuns\TelaSelecaoProduto.pas' {FormTelaSelecaoProduto},
  CadastroProdutos in '..\ArquivosComuns\CadastroProdutos.pas' {FormCadastroProduto},
  JsonToDataSetConverter in '..\..\..\Program Files (x86)\Borland\Componentes\rest-client-api\src\JsonToDataSetConverter.pas',
  ACBrNFeDANFeESCPOS in '..\..\..\..\Acbr\trunk2\Fontes\ACBrDFe\ACBrNFe\DANFE\NFCe\EscPos\ACBrNFeDANFeESCPOS.pas',
  TelaItensCrediario in 'TelaItensCrediario.pas' {FormTelaItensCrediario},
  udmECF in 'udmECF.pas' {dmECF: TDataModule},
  uExibeMenu in 'SiTef\uExibeMenu.pas' {fExibeMenu},
  uObtemCampo in 'SiTef\uObtemCampo.pas' {fObtemCampo},
  udmSiTef in 'SiTef\udmSiTef.pas' {dmSiTef: TDataModule},
  ExceptLog in '..\ExceptLog.pas',
  MemCheck in '..\MemCheck.pas',
  CadastroPedidoCompra in '..\ArquivosComuns\CadastroPedidoCompra.pas' {FormCadastroPedidoCompra},
  CadastroPedidoCompraItem in '..\ArquivosComuns\CadastroPedidoCompraItem.pas' {FormCadastroPedidoCompraItem},
  uDlgTransferencia in '..\ArquivosComuns\uDlgTransferencia.pas' {dlgTransferencia};

{$R *.RES}

var
  hMapping: hwnd;

begin
  OutputDebugString('c:\Easy2Solutions\Temp');

  //Este código foi testado no arquivo dpr do projeto
  hMapping := CreateFileMapping(HWND($FFFFFFFF), nil, PAGE_READONLY, 0, 32, PChar(ExtractFileName(Application.ExeName)));

  if (hMapping <> Null) and (GetLastError <> 0) then
  begin
    Informa('O Módulo de Emissão de Cupom Fiscal já está sendo executado.');
    Halt;
  end;

  Application.Initialize;
  VersaoSistema := 'v.3.1';
  Enter := VK_Return;
  Esc := VK_Escape;
  F2 := Vk_F2;
  F3 := Vk_F3;
  F4 := Vk_F4;
  F5 := Vk_F5;
  F6 := Vk_F6;
  F7 := Vk_F7;
  F8 := Vk_F8;
  F9 := Vk_F9;
  F10 := Vk_F10;
  F11 := Vk_F11;
  F12 := Vk_F12;
  Application.Title := 'Cupom Fiscal';
  Application.CreateForm(TDM, DM);
  //  if not DelphiAberto then
//    dm.ExecAndWait('C:\Easy2Solutions\Updater.exe', '-Quiet', SW_SHOW);

  FormTelaLogin := TFormTelaLogin.Create(Application);
  FormTelaLogin.Caption := 'Bem Vindo ao Módulo Emissão de Cupom Fiscal ';

  if FormTelaLogin.ShowModal <> idOk then
  begin
    application.terminate;
  end;

  if ((DM.OBSAutorizacao <> '') and (DM.SQLEmpresaCFGECBLOQ.AsString = '')) or (dm.SQLEmpresaCFGECBLOQ.AsString = 'S') and (not DelphiAberto) then
  begin
    FormTelaAtivacao := TFormTelaAtivacao.Create(Application);
    FormTelaAtivacao.ShowModal;

    if (DM.vSEM_INTERNET) and ((DM.DataSistema - DM.SQLConfigGeralDATA_INI_SEM_NET.AsDateTime) <= 7) then
    begin
    end
    else if (dm.SQLEmpresaCFGECBLOQ.AsString = 'S') then
    begin
      Application.terminate;
      Exit;
    end;
  end;

  Application.CreateForm(TFormTelaItens, FormTelaItens);
  Application.Run;
end.

