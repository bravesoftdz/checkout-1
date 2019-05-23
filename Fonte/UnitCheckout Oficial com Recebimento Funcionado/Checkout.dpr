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
  Bematech_MP20_FI in 'Bematech_MP20_FI.pas',
  TelaCompSigtron in 'TelaCompSigtron.pas' {CompSigtron},
  CadastroCliente in '..\ArquivosComuns\CadastroCliente.pas' {FormCadastroCliente},
  CadastroClienteDependente in '..\ArquivosComuns\CadastroClienteDependente.pas' {FormCadastroClienteDependente},
  CadastroClienteReferencia in '..\ArquivosComuns\CadastroClienteReferencia.pas' {FormCadastroClienteReferencia},
  CadastroMotivoBloqueio in '..\ArquivosComuns\CadastroMotivoBloqueio.pas' {FormCadastroMotivoBloqueio},
  CadastroProfissao in '..\ArquivosComuns\CadastroProfissao.pas' {FormCadastroProfissao},
  CadastroTipoCliente in '..\ArquivosComuns\CadastroTipoCliente.pas' {FormCadastroTipoCliente},
  CadastroClienteContato in '..\ArquivosComuns\CadastroClienteContato.pas' {FormCadastroClienteContato},
  CadastroBanco in '..\ArquivosComuns\CadastroBanco.pas' {FormCadastroBanco},
  TelaDadosCheque in 'TelaDadosCheque.pas' {FormTelaDadosCheque},
  UnitLibrary in '..\ArquivosComuns\UnitLibrary.pas',
  UnitCheckoutLibrary in 'UnitCheckoutLibrary.pas',
  Elgin_FIT in 'Elgin_FIT.pas',
  Sigtron_FS345_FuncoesDLL in 'Sigtron_FS345_FuncoesDLL.pas',
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
  TelaMensagem in 'TelaMensagem.pas' {FormTelaMensagem},
  TelaConsultaTemplate in '..\..\Template\TelaConsultaTemplate.pas' {FormTelaConsultaTemplate},
  TelaConsultaTabelaPreco in '..\ArquivosComuns\TelaConsultaTabelaPreco.pas' {FormTelaConsultaTabelaPreco},
  Bematech_MP20_FI_II in 'Bematech_MP20_FI_II.pas',
  CadastroSituacaoCheque in '..\UnitFinanceiro\CadastroSituacaoCheque.pas' {FormCadastroSituacaoCheque},
  TelaConsultaConsignacoesPendentes in '..\ArquivosComuns\TelaConsultaConsignacoesPendentes.pas' {FormTelaConsultaConsignacoesPendentes},
  TelaFechamentoOrcamento in 'TelaFechamentoOrcamento.pas' {FormTelaFechamentoOrcamento},
  TELALOGIN in 'TelaLogin.pas' {FormTelaLogin},
  TelaEnvioEmailGeral in '..\ArquivosComuns\TelaEnvioEmailGeral.pas' {FormTelaEnvioEmailGeral},
  CadastroCep in '..\ArquivosComuns\CadastroCep.pas' {FormCadastroCep},
  TelaDadosCliente in 'TelaDadosCliente.pas' {FormTelaDadosCliente},
  TelaCadastroObs in 'TelaCadastroObs.pas' {FormTelaCadastroObs},
  StarFiche in 'StarFiche.pas',
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
  CadastroProfissional in '..\SISCON\CadastroProfissional.pas' {FormCadastroProfissional},
  CadastroPlanoRecebimentoParcela in '..\Config\CadastroPlanoRecebimentoParcela.pas' {FormCadastroPlanoRecebimentoParcela},
  CadastroPlanoRecebimento in '..\Config\CadastroPlanoRecebimento.pas' {FormCadastroPlanoRecebimento},
  CadastroConsulta in '..\ArquivosComuns\CadastroConsulta.pas' {FormCadastroConsulta},
  Corisco_CT7000_V3 in 'Corisco_CT7000_V3.pas',
  TelaReceituario in 'TelaReceituario.pas' {FormTelaReceituario},
  ECF_AFRAC in 'ECF_AFRAC.pas',
  TelaAutorizacaoCompraCliente in '..\ArquivosComuns\TelaAutorizacaoCompraCliente.pas' {FormTelaAutorizacaoCompra},
  TelaConsultaLiberacaoCredito in 'TelaConsultaLiberacaoCredito.pas' {FormTelaConsultaLiberacaoCredito},
  CadastroClienteHistorico in '..\UnitLoja\CadastroClienteHistorico.pas' {FormCadastroClienteHistorico},
  TelaClienteHistorico in '..\ArquivosComuns\TelaClienteHistorico.pas' {FormTelaClienteHistorico},
  TelaDadosTeleEntrega in 'TelaDadosTeleEntrega.pas' {FormTelaDadosTeleEntrega},
  SWEDA7000 in 'SWEDA7000.pas',
  TelaConsultaPlanoRecebimento in '..\ArquivosComuns\TelaConsultaPlanoRecebimento.pas' {FormTelaConsultaPlanoRecebimento},
  CadastroPedidoVendaItem in '..\UnitFaturamento\CadastroPedidoVendaItem.pas' {FormCadastroPedidoVendaItem},
  CadastroPedidoVenda in '..\UnitFaturamento\CadastroPedidoVenda.pas' {FormCadastroPedidoVenda},
  CadastroPedidoVendaFinanceiro in '..\UnitFaturamento\CadastroPedidoVendaFinanceiro.pas' {FormCadastroPedidoVendaFinanceiro},
  TelaConsultaProduto in '..\ArquivosComuns\TelaConsultaProduto.pas' {FormTelaConsultaProduto},
  TelaLancamentoGradePedido in '..\UnitFaturamento\TelaLancamentoGradePedido.pas' {FormTelaLancamentoGradePedido},
  TelaSaldoPorLote in '..\UnitFaturamento\TelaSaldoPorLote.pas' {FormTelaSaldoPorLote},
  SearchLibrary in '..\ArquivosComuns\SearchLibrary.pas',
  CadastroTransportadora in '..\ArquivosComuns\CadastroTransportadora.pas' {FormCadastroTransportadora},
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
  TelaProdVendItemComp in '..\UnitFaturamento\TelaProdVendItemComp.pas' {FormTelaProdVendItemComp},
  TelaConfigControle in '..\ArquivosComuns\TelaConfigControle.pas' {FormTelaConfigControle},
  Urano_1EFC in 'Urano_1EFC.pas',
  TelaInformaNumeroSerieProduto in 'TelaInformaNumeroSerieProduto.pas' {FormTelaInformaNumeroSerieProduto},
  TelaProdutoNumeroSerie in '..\ArquivosComuns\TelaProdutoNumeroSerie.pas' {FormTelaGeralModalCadastroProdutoNumeroSerie},
  TelaConfigPedidos in '..\UnitFaturamento\TelaConfigPedidos.pas' {FormTelaConfigPedidos},
  TelaDadosCartaoCreditoManual in 'TelaDadosCartaoCreditoManual.pas' {FormTelaDadosCartaoCreditoManual},
  CadastroProdutoSerie in '..\UnitLoja\CadastroProdutoSerie.pas' {FormCadastroProdutoSerie},
  TelaMarcacaoConsulta in '..\SISCON\TelaMarcacaoConsulta.pas' {FormTelaMarcacaoConsulta},
  TelaMotivoNaoAtend in '..\SISCON\TelaMotivoNaoAtend.pas' {FormTelaMotivoNaoAtend},
  TelaBomba in 'TelaBomba.pas' {FormTelaBomba},
  TelaTransfereNroSerial in '..\ArquivosComuns\TelaTransfereNroSerial.pas' {FormTelaTransfereNroSerial},
  TelaGeracaoMalaDireta in '..\ArquivosComuns\TelaGeracaoMalaDireta.pas' {FormTelaGeracaoMalaDireta},
  TelaConsultaSaldoPorEmpresa in '..\UnitLoja\TelaConsultaSaldoPorEmpresa.pas' {FormTelaConsultaSaldoPorEmpresa},
  TelaGeracaoPedidoParcial in '..\UnitFaturamento\TelaGeracaoPedidoParcial.pas' {FormTelaPedidoParcial},
  UnSoundPlay in '..\..\Template\UnSoundPlay.pas',
  DataModuloImpNotaFiscal in '..\UnitFaturamento\DataModuloImpNotaFiscal.pas' {DMImpNotaFiscal: TDataModule},
  TelaAssistenteLancamentoPlanoVariavelCheckout in 'TelaAssistenteLancamentoPlanoVariavelCheckout.pas' {FormTelaAssistenteLancamentoPlanoVariavelCheckout},
  TelaTroco in 'TelaTroco.pas' {FormTelaTroco},
  CadastroDecreto in '..\Config\CadastroDecreto.pas' {FormCadastroDecreto},
  TelaLucro in 'TelaLucro.pas' {FormTelaLucro},
  TelaFotoExpandida in 'TelaFotoExpandida.pas' {FormTelaFotoExpandida},
  CadastroProfExterno in '..\ArquivosComuns\CadastroProfExterno.pas' {FormCadastroProfExterno},
  BemaFi32 in 'BemaFi32.pas',
  TelaConsultaRapidaDependente in 'TelaConsultaRapidaDependente.pas' {FormTelaConsultaRapidaDependente},
  TelaTransferenciaMercadoriaReceberProduto in '..\ArquivosComuns\TelaTransferenciaMercadoriaReceberProduto.pas' {FormTelaTransferenciaMercadoriaReceberProduto},
  TelaTransferenciaMercadoria in '..\ArquivosComuns\TelaTransferenciaMercadoria.pas' {FormTelaTransferencia},
  PrincipalRelatorios in 'PrincipalRelatorios.pas' {FormPrincipalRelatorios},
  TelaAutenticaUsuario in 'TelaAutenticaUsuario.pas' {FormTelaAutenticaUsuario},
  Elgin_FIT_FuncoesDLL in 'Elgin_FIT_FuncoesDLL.pas',
  TelaAutomaBombas in 'TelaAutomaBombas.pas' {FormTelaAutomaBombas},
  TelaLembreteTarefa in '..\UnitTarefa\TelaLembreteTarefa.pas' {FormTelaLembreteTarefa},
  Principal in 'Principal.pas' {FormPrincipal},
  TelaConsultaTarefa in '..\UnitTarefa\TelaConsultaTarefa.pas' {FormTelaConsultaTarefa};

{$R *.RES}

var
  hMapping : hwnd ;
begin
  //Este código foi testado no arquivo dpr do projeto
  hMapping := CreateFileMapping(HWND($FFFFFFFF),
                                nil,
                                PAGE_READONLY,
                                0,
                                32,
                                PChar(ExtractFileName(Application.ExeName))) ;

  if (hMapping <> Null)  and (GetLastError <> 0) then
  begin
    Informa('O Advanced Control PDV já está sendo executado.') ;
    Halt ;
  end ;

  Application.Initialize ;
  VersaoSistema := '3.0' ;
  Enter := VK_Return;
  Esc   := VK_Escape;
  F2    := Vk_F2;
  F3    := Vk_F3;
  F4    := Vk_F4;
  F5    := Vk_F5;
  F6    := Vk_F6;
  F7    := Vk_F7;
  F8    := Vk_F8;
  F9    := Vk_F9;
  F10   := Vk_F10;
  F11   := Vk_F11;
  F12   := Vk_F12;
  Application.Title := 'Advanced Control PDV';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDMImpNotaFiscal, DMImpNotaFiscal);
  FormTelaLogin := TFormTelaLogin.Create(Application);
  FormTelaLogin.Caption := 'Bem Vindo ao Advanced Control PDV ' ;
  if FormTelaLogin.ShowModal <> idOk then
    exit ;

  Application.CreateForm(TFormTelaItens, FormTelaItens);
  Application.Run ;
end.
