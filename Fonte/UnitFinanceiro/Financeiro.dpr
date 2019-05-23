program Financeiro;

uses
  VarSYS,
  Forms,
  Windows,
  SysUtils,
  Variants,
  Dialogs,
  DataModuloTemplate in '..\..\Template\DataModuloTemplate.pas' {DMTemplate: TDataModule},
  CadastroTEMPLATE in '..\..\Template\CadastroTEMPLATE.pas' {FormCadastroTemplate},
  PrincipalTemplate in '..\..\Template\PrincipalTemplate.pas' {FormPrincipalTemplate},
  FormResources in '..\..\Template\FormResources.pas',
  TelaGeralTEMPLATE in '..\..\Template\TelaGeralTEMPLATE.pas' {FormTelaGeralTEMPLATE},
  DataModulo in 'DataModulo.pas' {DM: TDataModule},
  ComCtrls in 'ComCtrls.pas',
  UnitLibrary in '..\ArquivosComuns\UnitLibrary.pas',
  CadastroTipoCliente in '..\ArquivosComuns\CadastroTipoCliente.pas' {FormCadastroTipoCliente},
  CadastroCliente in '..\ArquivosComuns\CadastroCliente.pas' {FormCadastroCliente},
  RelatorioTemplate in '..\..\Template\RelatorioTemplate.pas' {FormRelatorioTEMPLATE},
  CadastroBanco in '..\ArquivosComuns\CadastroBanco.pas' {FormCadastroBanco},
  CadastroTipoDocumento in 'CadastroTipoDocumento.pas' {FormCadastroTipoDocumento},
  CadastroPortador in 'CadastroPortador.pas' {FormCadastroPortador},
  CadastroContasReceberDebito in 'CadastroContasReceberDebito.pas' {FormCadastroContasReceberDebito},
  CadastroEmpresa in '..\Config\CadastroEmpresa.pas' {FormCadastroEmpresa},
  TelaBaixarDocumentosPagar in 'TelaBaixarDocumentosPagar.pas' {FormTelaBaixarDocumentosPagar},
  CadastroProfissional in '..\SISCON\CadastroProfissional.pas' {FormCadastroProfissional},
  CadastroClienteDependente in '..\ArquivosComuns\CadastroClienteDependente.pas' {FormCadastroClienteDependente},
  CadastroClienteReferencia in '..\ArquivosComuns\CadastroClienteReferencia.pas' {FormCadastroClienteReferencia},
  CadastroMotivoBloqueio in '..\ArquivosComuns\CadastroMotivoBloqueio.pas' {FormCadastroMotivoBloqueio},
  CadastroProfissao in '..\ArquivosComuns\CadastroProfissao.pas' {FormCadastroProfissao},
  CadastroClienteContato in '..\ArquivosComuns\CadastroClienteContato.pas' {FormCadastroClienteContato},
  CadastroContasPagar in 'CadastroContasPagar.pas' {FormCadastroContasPagar},
  RelatorioContasRecebidas in 'RelatorioContasRecebidas.pas' {FormRelatorioContasRecebidas},
  RelatorioContasReceberVencidasAvalista in '..\UnitTransportadora\RelatorioContasReceberVencidasAvalista.pas' {FormRelatorioContasReceberVencidasAvalista},
  RelatorioContasaReceber in 'RelatorioContasaReceber.pas' {FormRelatorioContasaReceber},
  RelatorioContasPagarVENCIDAS in 'RelatorioContasPagarVENCIDAS.pas' {FormRelatorioContasPagarVENCIDAS},
  RelatorioContasPagarPAGAS in 'RelatorioContasPagarPAGAS.pas' {FormRelatorioContasPagarPAGAS},
  RelatorioContasPagarAPAGAR in 'RelatorioContasPagarAPAGAR.pas' {FormRelatorioContasPagarAPAGAR},
  CadastroFornecedor in '..\ArquivosComuns\CadastroFornecedor.pas' {FormCadastroFornecedor},
  CadastroTipoFornecedor in '..\ArquivosComuns\CadastroTipoFornecedor.pas' {FormCadastroTipoFornecedor},
  CadastroTipoCusto in '..\ArquivosComuns\CadastroTipoCusto.pas' {FormCadastroTipoCusto},
  TelaBaixarDocumentosReceber in 'TelaBaixarDocumentosReceber.pas' {FormTelaBaixarDocumentosReceber},
  CadastroClasse in '..\ArquivosComuns\CadastroClasse.pas' {FormCadastroClasse},
  CadastroClasseUsuario in '..\ArquivosComuns\CadastroClasseUsuario.pas' {FormCadastroClasseUsuario},
  CadastroUsuario in '..\ArquivosComuns\CadastroUsuario.pas' {FormCadastroUsuario},
  CadastroChequesRecebidos in 'CadastroChequesRecebidos.pas' {FormCadastroChequesRecebidos},
  TelaDadosVersaoFin in 'TelaDadosVersaoFin.pas' {FormTelaDadosVersaoFin},
  RelatorioChequesRecebidos in 'RelatorioChequesRecebidos.pas' {FormRelatorioChequeRecebidos},
  TelaBaixarChequesRecebidos in 'TelaBaixarChequesRecebidos.pas' {FormTelaBaixarChequesRecebidos},
  CadastroSituacaoCheque in 'CadastroSituacaoCheque.pas' {FormCadastroSituacaoCheque},
  TelaConsultaTabelaPreco in '..\ArquivosComuns\TelaConsultaTabelaPreco.pas',
  TelaConsultaConsignacoesPendentes in '..\ArquivosComuns\TelaConsultaConsignacoesPendentes.pas' {FormTelaConsultaConsignacoesPendentes},
  CadastroChequesHistorico in 'CadastroChequesHistorico.pas' {FormCadastroChequesHistorico},
  CadastroPlanoRecebimentoParcela in '..\Config\CadastroPlanoRecebimentoParcela.pas' {FormCadastroPlanoRecebimentoParcela},
  CadastroPlanoRecebimento in '..\Config\CadastroPlanoRecebimento.pas' {FormCadastroPlanoRecebimento},
  TelaConsultaNumerario in '..\ArquivosComuns\TelaConsultaNumerario.pas' {FormTelaConsultaNumerario},
  CadastroPlanodeContas in 'CadastroPlanodeContas.pas' {FormCadastroPlanodeContas},
  CadastroMovimentoBanco in 'CadastroMovimentoBanco.pas' {FormCadastroMovimentoBanco},
  CadastroOperacaoBanco in 'CadastroOperacaoBanco.pas' {FormCadastroOperacaoBanco},
  CadastroContaCorrente in 'CadastroContaCorrente.pas' {FormCadastroContaCorrente},
  RelatorioExtratoMovimentoBanco in 'RelatorioExtratoMovimentoBanco.pas' {FormRelatorioExtratoMovimentoBanco},
  TelaLogin in 'TelaLogin.pas' {FormTelaLogin},
  WaitWindow in '..\ArquivosComuns\WaitWindow.pas',
  TelaImpressaoTermicaCodBar in '..\ArquivosComuns\TelaImpressaoTermicaCodBar.pas' {FormTelaImpressaoTermicaCodBar},
  WindowsLibrary in '..\ArquivosComuns\WindowsLibrary.pas',
  CadastroConsulta in '..\ArquivosComuns\CadastroConsulta.pas' {FormCadastroConsulta},
  TelaEnvioEmailGeral in '..\ArquivosComuns\TelaEnvioEmailGeral.pas' {FormTelaEnvioEmailGeral},
  CadastroCep in '..\ArquivosComuns\CadastroCep.pas' {FormCadastroCep},
  TelaConsultaEmpresa in '..\ArquivosComuns\TelaConsultaEmpresa.pas' {FormTelaConsultaEmpresa},
  TelaConsultaPlanoContas in '..\ArquivosComuns\TelaConsultaPlanoContas.pas' {FormTelaConsultaPlanoContas},
  PertoCheque in '..\ArquivosComuns\PertoCheque.pas',
  CadastroRecibo in 'CadastroRecibo.pas' {FormCadastroRecibo},
  CadastroFuncionarioContaCorrente in '..\ArquivosComuns\CadastroFuncionarioContaCorrente.pas' {FormCadastroFuncionarioContaCorrente},
  CadastroFuncionario in '..\ArquivosComuns\CadastroFuncionario.pas' {FormCadastroFuncionario},
  CadastroOperacaoFuncionario in '..\ArquivosComuns\CadastroOperacaoFuncionario.pas' {FormCadastroOperacaoFuncionario},
  CadastroVeiculo in '..\ArquivosComuns\CadastroVeiculo.pas' {FormCadastroVeiculo},
  ExtensoLib in '..\ArquivosComuns\ExtensoLib.pas',
  TelaPlanoContas in '..\Config\TelaPlanoContas.pas' {FormTelaPlanoContas},
  TelaBaixarDocumentosReceberRecebimento in 'TelaBaixarDocumentosReceberRecebimento.pas' {FormTelaBaixaDocumentosReceberRecebimento},
  TelaBaixarDocumentosPagarPagamento in 'TelaBaixarDocumentosPagarPagamento.pas' {FormTelaBaixaDocumentosPagarPagamento},
  TelaImpressaoDuplicatas in 'TelaImpressaoDuplicatas.pas' {FormTelaImpressaoDuplicata},
  CadastroChequeEmitido in 'CadastroChequeEmitido.pas' {FormCadastroChequeEmitido},
  TelaBaixarChequesEmitidos in 'TelaBaixarChequesEmitidos.pas' {FormTelaBaixarChequeEmitido},
  CadastroRemessaBancosContasReceber in 'CadastroRemessaBancosContasReceber.pas' {FormCadastroRemessaBancosContasReceber},
  CadastroRemessaBancos in 'CadastroRemessaBancos.pas' {FormCadastroRemessaBancos},
  CadastroConfigRemessaBanco in '..\Config\CadastroConfigRemessaBanco.pas' {FormCadastroConfigRemessaBanco},
  CadastroTesouraria in 'CadastroTesouraria.pas' {FormCadastroTesouraria},
  CadastroOperacaoTesouraria in '..\Config\CadastroOperacaoTesouraria.pas' {FormCadastroOperacaoTesouraria},
  RelatorioContasReceberEmitidas in 'RelatorioContasReceberEmitidas.pas' {FormRelatorioContasReceberEmitidas},
  RelatorioContasPagarEMITIDAS in 'RelatorioContasPagarEMITIDAS.pas' {FormRelatorioContasPagarEmitidas},
  RelatorioReceitasDespesasPlanoContas in 'RelatorioReceitasDespesasPlanoContas.pas' {FormRelatorioReceitasDespesasPlanoContas},
  RelatorioFluxoCaixa in 'RelatorioFluxoCaixa.pas' {FormRelatorioFluxoCaixa},
  RelatorioBoletimCaixaTesouraria in 'RelatorioBoletimCaixaTesouraria.pas' {FormRelatorioBoletimCaixaTesouraria},
  RelatorioMovimentacaoTesouraria in 'RelatorioMovimentacaoTesouraria.pas' {FormRelatorioMovimentacaoTesouraria},
  RelatorioChequeEmitido in 'RelatorioChequeEmitido.pas' {FormRelatorioChequeEmitido},
  TelaGeracaoDuplicata in 'TelaGeracaoDuplicata.pas' {FormTelaGeracaoDuplicata},
  CadastroDuplicata in 'CadastroDuplicata.pas' {FormCadastroDuplicata},
  CadastroClienteHistorico in '..\UnitLoja\CadastroClienteHistorico.pas' {FormCadastroClienteHistorico},
  TelaClienteHistorico in '..\ArquivosComuns\TelaClienteHistorico.pas' {FormTelaClienteHistorico},
  CadastroHistoricoPadrao in '..\ArquivosComuns\CadastroHistoricoPadrao.pas' {FormCadastroHistoricoPadrao},
  TelaLancImpCheqEmitido in 'TelaLancImpCheqEmitido.pas' {FormTelaLancImpCheqEmitdos},
  RelatorioSaldoDiarioTesouraria in 'RelatorioSaldoDiarioTesouraria.pas' {FormRelatorioSaldoDiarioTesouraria},
  RelatorioPosicaoFinanceiraConsolidada in 'RelatorioPosicaoFinanceiraConsolidada.pas' {FormRelatorioSaldoDiarioPosicaoFinanceiraConsolidada},
  TelaDadosTeleEntrega in '..\UnitCheckout\TelaDadosTeleEntrega.pas' {FormTelaDadosTeleEntrega},
  TelaConsultaPlanoRecebimento in '..\ArquivosComuns\TelaConsultaPlanoRecebimento.pas' {FormTelaConsultaPlanoRecebimento},
  TelaConsultaPagamento in 'TelaConsultaPagamento.pas' {FormTelaConsultaPagamento},
  TelaConsultaRecebimento in 'TelaConsultaRecebimento.pas' {FormTelaConsultaRecebimento},
  TelaDadosReplicacaoContasReceber in 'TelaDadosReplicacaoContasReceber.pas' {FormTelaDadosReplicacaoContasReceber},
  RelatorioSaldoContasaPagarContabil in 'RelatorioSaldoContasaPagarContabil.pas' {FormRelatorioSaldoContasPagarContabil},
  TelaPesquisaDocumentoReceber in 'TelaPesquisaDocumentoReceber.pas' {FormTelaPesquisarDocumentoReceber},
  CadastroTipoLiquidacao in '..\Config\CadastroTipoLiquidacao.pas' {FormCadastroTipoLiquidacao},
  RelatorioContasRecebidasTipoLiquidacao in 'RelatorioContasRecebidasTipoLiquidacao.pas' {FormRelatorioContasRecebidasTipoLiquidacao},
  TelaImpressaoDadosVenda in '..\UnitCheckout\TelaImpressaoDadosVenda.pas' {FormTelaImpressaoDadosVenda},
  CadastroCupom in '..\ArquivosComuns\CadastroCupom.pas' {FormCadastroCupom},
  TelaNegociacaoDivida in '..\ArquivosComuns\TelaNegociacaoDivida.pas' {FormTelaNegociacaoDivida},
  RelatorioContasPagasTipoLiquidacao in 'RelatorioContasPagasTipoLiquidacao.pas' {FormRelatorioContasPagasTipoLiquidacao},
  RelatorioContasPagasPorOrigem in 'RelatorioContasPagasPorOrigem.pas' {FormRelatorioContasPagasPorOrigem},
  RelatorioContasRecebidasPorEmpresa in 'RelatorioContasRecebidasPorEmpresa.pas' {FormRelatorioContasRecebidasPorEmpresa},
  CadastroAvalista in '..\ArquivosComuns\CadastroAvalista.pas' {FormCadastroAvalista},
  RelatorioContasReceberVencidas in 'RelatorioContasReceberVencidas.pas' {FormRelatorioContasReceberVencidas},
  TelaGeralModalTemplate in '..\..\Template\TelaGeralModalTemplate.pas' {FormTelaGeralModalTemplate},
  TelaAssistenteLancamentoContasPagar in '..\ArquivosComuns\TelaAssistenteLancamentoContasPagar.pas' {FormTelaAssistenteLancamentoContasPagar},
  TelaBaixarDocumentosReceberPlanoConta in 'TelaBaixarDocumentosReceberPlanoConta.pas' {FormTelaBaixarDocumentosReceberPlanoConta},
  CadastroContasReceber in 'CadastroContasReceber.pas' {FormCadastroContasReceber},
  RelatorioCreditoDebitoPorCliente in 'RelatorioCreditoDebitoPorCliente.pas' {FormRelatorioCreditoDebitoPorCliente},
  RelatorioExtratoCliente in '..\ArquivosComuns\RelatorioExtratoCliente.pas' {FormRelatorioExtratoCliente},
  CadastroContasReceberCredito in 'CadastroContasReceberCredito.pas' {FormCadastroContasReceberCredito},
  RelatorioContasRecebidasPorSetor in 'RelatorioContasRecebidasPorSetor.pas' {FormRelatorioContasRecebidasPorSetor},
  RelatorioSaldoContasaReceberContabil in 'RelatorioSaldoContasaReceberContabil.pas' {FormRelatorioSaldoContasReceberContabil},
  TelaBaixaFuncionarioContaCorrente in 'TelaBaixaFuncionarioContaCorrente.pas' {FormTelaBaixaFuncionarioContaCorrente},
  RelatorioExtratoFuncionario in 'RelatorioExtratoFuncionario.pas' {FormRelatorioExtratoFuncionario},
  RelatorioAuxiliarParaLivroCaixa in 'RelatorioAuxiliarParaLivroCaixa.pas' {FormRelatorioAuxiliarLivroCaixa},
  CadastroEmpresaCusto in '..\Config\CadastroEmpresaCusto.pas' {FormCadastroEmpresaCusto},
  TelaConfigControle in '..\ArquivosComuns\TelaConfigControle.pas' {FormTelaConfigControle},
  TelaImpressaoBloquetos in '..\UnitFaturamento\TelaImpressaoBloquetos.pas' {FormTelaImpressaoBloquetos},
  RelatorioAnaliseRecebimento in 'RelatorioAnaliseRecebimento.pas' {FormRelatorioAnaliseRecebimento},
  CadastroCartaoCreditoManual in 'CadastroCartaoCreditoManual.pas' {FormCadastroCartaoCreditoManual},
  TelaGeracaoMalaDireta in '..\ArquivosComuns\TelaGeracaoMalaDireta.pas' {FormTelaGeracaoMalaDireta},
  TelaAssistenteLancamentoContasReceber in '..\ArquivosComuns\TelaAssistenteLancamentoContasReceber.pas' {FormTelaAssistenteLancamentoContasReceber},
  CadastroFornecedorContato in '..\ArquivosComuns\CadastroFornecedorContato.pas' {FormCadastroFornecedorContato},
  CadastroRamo in '..\ArquivosComuns\CadastroRamo.pas' {FormCadastroRamo},
  CadastroSubRamo in '..\ArquivosComuns\CadastroSubRamo.pas' {FormCadastroSubRamo},
  CadastroProtocoloChequeRecebido in 'CadastroProtocoloChequeRecebido.pas' {FormCadastroProtocoloChequeRecebido},
  TelaBaixaContasPagarAVista in 'TelaBaixaContasPagarAVista.pas' {FormTelaBaixaContasPagarAVista},
  TelaBaixaContasReceberAVista in 'TelaBaixaContasReceberAVista.pas' {FormTelaBaixaContasReceberAVista},
  CadastroAgendaTelefonica in '..\ArquivosComuns\CadastroAgendaTelefonica.pas' {FormCadastroAgendaTelefonica},
  TelaAutenticaUsuario in '..\UnitCheckout\TelaAutenticaUsuario.pas' {FormTelaAutenticaUsuario},
  ConfigPopUp in '..\UnitTarefa\ConfigPopUp.pas' {FormConfigPopUp},
  TelaCadastroTarefa in '..\UnitTarefa\TelaCadastroTarefa.pas' {FormTelaCadastroTarefa},
  TelaConsultaTarefa in '..\UnitTarefa\TelaConsultaTarefa.pas' {FormTelaConsultaTarefa},
  TelaLembreteTarefa2 in '..\UnitTarefa\TelaLembreteTarefa2.pas' {FormTelaLembreteTarefa2},
  TelaResumoFinanceiro in '..\ArquivosComuns\TelaResumoFinanceiro.pas' {FormTelaResumoFinanceiro},
  TelaLembreteTarefa in '..\UnitTarefa\TelaLembreteTarefa.pas' {FormTelaLembreteTarefa},
  CadastroClienteProduto in '..\ArquivosComuns\CadastroClienteProduto.pas' {FormCadastroClienteProduto},
  CadastroProdutoSerie in '..\UnitLoja\CadastroProdutoSerie.pas' {FormCadastroProdutoSerie},
  CadastroDecreto in '..\Config\CadastroDecreto.pas' {FormCadastroDecreto},
  TelaFotoExpandida in '..\UnitCheckout\TelaFotoExpandida.pas' {FormTelaFotoExpandida},
  TelaAssistenteContratosMensais in '..\ArquivosComuns\TelaAssistenteContratosMensais.pas' {FormTelaAssistenteContratosMensais},
  CadastroClienteVeiculos in '..\ArquivosComuns\CadastroClienteVeiculos.pas' {FormCadastroClienteVeiculos},
  TelaSaidaRapidaEstoque in '..\ArquivosComuns\TelaSaidaRapidaEstoque.pas' {FormTelaSaidaRapidaEstoque},
  TelaAvisoDebito in '..\UnitCheckout\TelaAvisoDebito.pas' {FormTelaAvisoDebito},
  TelaAtivacao in '..\Ativador\TelaAtivacao.pas' {FormTelaAtivacao},
  TelaDetalheRecebimento in '..\ArquivosComuns\TelaDetalheRecebimento.pas' {FormTelaDetalheRecebimento},
  Principal in 'Principal.pas' {FormPrincipal},
  TelaSplash in '..\ArquivosComuns\TelaSplash.pas' {FormSplash};

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
    // if not Pergunta('NAO', 'O Unit Checkout já está sendo executado, deseja abrir outra cópia ?') then
    // Informa('Gestão Empresarial - Módulo Financeiro já está sendo executado!') ;
    // Halt ;
  end ;

  Application.Initialize ;
  VersaoSistema := '3.2' ;
  Retaguarda := true;
  Application.Title := 'Módulo Financeiro' ;

  Application.CreateForm(TDM, DM);
  if dm.SQLConfigGeralCFGECBLOQ.AsString = 'S' then
    begin
      ShowMessage('Sistema Bloqueado!!! Ligue para a Suporte');
      DM.DB.Close;
      DM.zdb.Connected := False;
      application.terminate;
    end
  else
    begin
      FormTelaLogin := TFormTelaLogin.Create(Application);
      FormTelaLogin.Caption := 'Bem Vindo ao Módulo Financeiro ' ;
      if FormTelaLogin.ShowModal <> idOk then
        begin
          dm.Zdb.Connected := False;
          application.terminate;
        end;

      Application.CreateForm(TFormPrincipal, FormPrincipal);
      FormPrincipal.RodapePrincipal.Panels[0].Text := 'Empresa: ' +DM.SQLConfigGeralEmpresaPadraoCalcField.Value;
      FormPrincipal.RodapePrincipal.Panels[1].Text := 'Terminal: '+Dm.SQLTerminalAtivoTERMA60DESCR.AsString;
      FormPrincipal.RodapePrincipal.Panels[2].Text := 'Usuário: ' +DM.SQLUsuarioUSUAA60LOGIN.Value;
      FormPrincipal.RodapePrincipal.Panels[4].Text := 'Validade da Licença: ' +DM.SQLConfigGeralCFGEDBLOQ.AsString;
      Application.Run ;
    end;
end.
