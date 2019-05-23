program Configurador;

uses
  Forms,
  Windows,
  CadastroTEMPLATE in '..\..\Template\CadastroTEMPLATE.pas' {FormCadastroTEMPLATE},
  ComCtrls in '..\..\Template\ComCtrls.pas',
  FormResources in '..\..\Template\FormResources.pas',
  PrincipalTemplate in '..\..\Template\PrincipalTemplate.pas' {FormPrincipalTemplate},
  RelatorioTemplate in '..\..\Template\RelatorioTemplate.pas' {FormRelatorioTEMPLATE},
  TelaGeralTEMPLATE in '..\..\Template\TelaGeralTEMPLATE.pas' {FormTelaGeralTEMPLATE},
  TELALOGIN in '..\..\Template\TelaLogin.pas' {FormTelaLogin},
  TelaTemplate in '..\..\Template\TelaTemplate.pas' {FormTelaTemplate},
  VarSYS in '..\..\Template\VarSYS.pas',
  principal in 'principal.pas' {FormPrincipal},
  CadastroEmpresa in 'CadastroEmpresa.pas' {FormCadastroEmpresa},
  CadastroTerminal in 'CadastroTerminal.pas' {FormCadastroTerminais},
  CadastroBalanca in 'CadastroBalanca.pas' {FormCadastroBalanca},
  CadastroConfigBalancaLayOutArq in 'CadastroConfigBalancaLayOutArq.pas' {FormCadastroConfigBalancaLayOutArq},
  CadastroConfigColetor in 'CadastroConfigColetor.pas' {FormCadastroConfigColetor},
  CadastroConvenio in 'CadastroConvenio.pas' {FormCadastroConvenio},
  CadastroDecreto in 'CadastroDecreto.pas' {FormCadastroDecreto},
  CadastroEcf in 'CadastroEcf.pas' {FormCadastroEcf},
  TelaPlanoContas in 'TelaPlanoContas.pas' {FormTelaPlanoContas},
  CadastroEtiquetaCodigoBarras in 'CadastroEtiquetaCodigoBarras.pas' {FormCadastroEtiquetaCodigoBarras},
  CadastroNumerario in 'CadastroNumerario.pas' {FormCadastroNumerario},
  CadastroNumerarioTotalizadorCaixa in 'CadastroNumerarioTotalizadorCaixa.pas' {FormCadastroNumerarioTotalizadorCaixa},
  CadastroNumerarioTotalizadorECF in 'CadastroNumerarioTotalizadorECF.pas' {FormCadastroNumerarioTotalizadorECF},
  CadastroOperacaoCaixa in 'CadastroOperacaoCaixa.pas' {FormCadastroOperacaoCaixa},
  CadastroOperacaoCaixaTotalizadorCaixa in 'CadastroOperacaoCaixaTotalizadorCaixa.pas' {FormCadastroOperacaoCaixaTotalizadorCaixa},
  CadastroPlanoRecebimento in 'CadastroPlanoRecebimento.pas' {FormCadastroPlanoRecebimento},
  CadastroPlanoRecebimentoParcela in 'CadastroPlanoRecebimentoParcela.pas' {FormCadastroPlanoRecebimentoParcela},
  CadastroProdutoOrdemPesquisa in 'CadastroProdutoOrdemPesquisa.pas' {FormCadastroProdutoOrdemPesquisa},
  CadastroTotalizadorCaixa in 'CadastroTotalizadorCaixa.pas' {FormCadastroTotalizadorCaixa},
  TelaConfiguracaoCrediario in 'TelaConfiguracaoCrediario.pas' {FormTelaConfiguracaoCrediario},
  TelaConfiguracaoEmail in 'TelaConfiguracaoEmail.pas' {FormTelaConfiguracaoEmail},
  TelaConfiguracaoFinanceiro in 'TelaConfiguracaoFinanceiro.pas' {FormTelaConfigFinanceiro},
  TelaConfiguracaoGeral in 'TelaConfiguracaoGeral.pas' {FormTelaConfiguracaoGeral},
  TelaConfiguracaoInventario in 'TelaConfiguracaoInventario.pas' {FormTelaConfiguracaoInventario},
  TelaConfiguracaoVenda in 'TelaConfiguracaoVenda.pas' {FormTelaConfiguracaoVenda},
  WindowsLibrary in '..\ArquivosComuns\WindowsLibrary.pas',
  UnitLibrary in '..\ArquivosComuns\UnitLibrary.pas',
  WaitWindow in '..\ArquivosComuns\WaitWindow.pas',
  DataModulo in 'DataModulo.pas' {DM: TDataModule},
  TelaImpressaoTermicaCodBar in '..\ArquivosComuns\TelaImpressaoTermicaCodBar.pas' {FormTelaImpressaoTermicaCodBar},
  CadastroCep in '..\ArquivosComuns\CadastroCep.pas' {FormCadastroCep},
  CadastroECFAliquota in 'CadastroECFAliquota.pas' {FormCadastroECFAliquota},
  CadastroICMS in '..\ArquivosComuns\CadastroICMS.pas' {FormCadastroICMS},
  CadastroUsuario in '..\ArquivosComuns\CadastroUsuario.pas' {FormCadastroUsuario},
  CadastroBanco in '..\ArquivosComuns\CadastroBanco.pas' {FormCadastroBanco},
  TelaConsultaCliente in '..\ArquivosComuns\TelaConsultaCliente.pas' {FormTelaConsultaCliente},
  CadastroProvedorCartao in 'CadastroProvedorCartao.pas' {FormCadastroProvedorCartao},
  TelaConsultaVendedor in '..\ArquivosComuns\TelaConsultaVendedor.pas' {FormTelaConsultaVendedor},
  TelaConsultaPlanoRecebimento in '..\ArquivosComuns\TelaConsultaPlanoRecebimento.pas' {FormTelaConsultaPlanoRecebimento},
  CadastroSerie in 'CadastroSerie.pas' {FormCadastroSerie},
  CadastroCodigoFiscalOperacao in 'CadastroCodigoFiscalOperacao.pas' {FormCadastroCodigoFiscalOperacao},
  CadastroTipoDocumento in '..\UnitFinanceiro\CadastroTipoDocumento.pas' {FormCadastroTipoDocumento},
  CadastroPortador in '..\UnitFinanceiro\CadastroPortador.pas' {FormCadastroPortador},
  CadastroContaCorrente in '..\UnitFinanceiro\CadastroContaCorrente.pas' {FormCadastroContaCorrente},
  CadastroOperacaoBanco in '..\UnitFinanceiro\CadastroOperacaoBanco.pas' {FormCadastroOperacaoBanco},
  CadastroSituacaoCheque in '..\UnitFinanceiro\CadastroSituacaoCheque.pas' {FormCadastroSituacaoCheque},
  TelaConfiguracaoCompra in 'TelaConfiguracaoCompra.pas' {FormTelaConfiguracaoCompra},
  TelaConfiguracaoFaturamento in 'TelaConfiguracaoFaturamento.pas' {FormTelaConfiguracaoFaturamento},
  CadastroConfigIntegracao in 'CadastroConfigIntegracao.pas' {FormCadastroConfigIntegracao},
  CadastroOperacaoTesouraria in 'CadastroOperacaoTesouraria.pas' {FormCadastroOperacaoTesouraria},
  CadastroConfigRemessaBanco in 'CadastroConfigRemessaBanco.pas' {FormCadastroConfigRemessaBanco},
  CadastroIcmsUf in '..\ArquivosComuns\CadastroIcmsUf.pas' {FormCadastroIcmsUF},
  CadastroUnidade in '..\ArquivosComuns\CadastroUnidade.pas' {FormCadastroUnidade},
  CadastroHistoricoPadrao in '..\ArquivosComuns\CadastroHistoricoPadrao.pas' {FormCadastroHistoricoPadrao},
  CadastroUsuarioMaster in 'CadastroUsuarioMaster.pas' {FormCadastroUsuarioMaster},
  TelaConsultaPlanoContas in '..\ArquivosComuns\TelaConsultaPlanoContas.pas' {FormTelaConsultaPlanoContas},
  TelaConfigTransportadora in 'TelaConfigTransportadora.pas' {FormTelaConfigTransportadora},
  CadastroVeiculo in '..\ArquivosComuns\CadastroVeiculo.pas' {FormCadastroVeiculo},
  CadastroOperacaoFrete in '..\UnitTransportadora\CadastroOperacaoFrete.pas' {FormCadastroOperacaoFrete},
  CadastroOperacaoFuncionario in '..\ArquivosComuns\CadastroOperacaoFuncionario.pas' {FormCadastroOperacaoFuncionario},
  CadastroAcumulador in 'CadastroAcumulador.pas' {FormCadastroAcumulador},
  Sigtron_FS345_FuncoesDLL in '..\UnitCheckout\Sigtron_FS345_FuncoesDLL.pas',
  CadastroTipoLiquidacao in 'CadastroTipoLiquidacao.pas' {FormCadastroTipoLiquidacao},
  DataModuloTemplate in '..\..\Template\DataModuloTemplate.pas' {DMTemplate: TDataModule},
  TelaConsultaTemplate in '..\..\Template\TelaConsultaTemplate.pas' {FormTelaConsultaTemplate},
  CadastroEmpresaCusto in 'CadastroEmpresaCusto.pas' {FormCadastroEmpresaCusto},
  TelaConfigControle in '..\ArquivosComuns\TelaConfigControle.pas' {FormTelaConfigControle},
  Urano_1EFC in '..\UnitCheckout\Urano_1EFC.pas',
  CadastroMotivoNFecVenda in 'CadastroMotivoNFecVenda.pas' {FormCadastroMotivoNFecVenda},
  CadastroPalm in 'CadastroPalm.pas' {FormCadastroPalm},
  CadastroEspecialidade in '..\SISCON\CadastroEspecialidade.pas' {FormCadastroEspecialidade},
  CadastroFeriados in '..\SISCON\CadastroFeriados.pas' {FormCadastroFeriados},
  CadastroMotivoNaoAtendimento in '..\SISCON\CadastroMotivoNaoAtendimento.pas' {FormCadastroMotivoNaoAtendimento},
  CadastroConfigAgenda in '..\SISCON\CadastroConfigAgenda.pas' {FormCadastroConfigAgendaProf},
  TelaGeracaoHorario in '..\SISCON\TelaGeracaoHorario.pas' {FormTelaGeracaoHorario},
  TelaManutHorario in '..\SISCON\TelaManutHorario.pas' {FormTelaManutHorario},
  CadastroProfissional in '..\SISCON\CadastroProfissional.pas' {FormCadastroProfissional},
  TelaAutenticaUsuario in '..\UnitCheckout\TelaAutenticaUsuario.pas' {FormTelaAutenticaUsuario},
  TelaConfigRestaurante in '..\FrontCook\TelaConfigRestaurante.pas' {FormTelaConfigRestaurante},
  TelaAvisoDebito in '..\UnitCheckout\TelaAvisoDebito.pas' {FormTelaAvisoDebito},
  CadastroOperacoesEstoque in '..\UnitFaturamento\CadastroOperacoesEstoque.pas' {FormCadastroOperacoesEstoque},
  CadastroOperacoesEstoqueCFOP in '..\UnitFaturamento\CadastroOperacoesEstoqueCFOP.pas' {CadastroOperacaoEstoqueCFOP},
  CadastroOperacoesEstoqueConversor in '..\UnitFaturamento\CadastroOperacoesEstoqueConversor.pas' {CadastroOperacoesEstoqueConverte},
  TelaSplash in '..\ArquivosComuns\TelaSplash.pas' {FormSplash},
  uDebugEx in '..\..\Template\uDebugEx.pas',
  UnSoundPlay in '..\..\Template\UnSoundPlay.pas',
  TelaGerenciamentoAcesso in '..\..\Template\TelaGerenciamentoAcesso.pas' {FormTelaGerenciamentoAcesso},
  CadastroConfigNotaServico in 'CadastroConfigNotaServico.pas' {FormCadastroNotaServico},
  CadastroInstrucaoBanco in 'CadastroInstrucaoBanco.pas' {FormCadastroInstrucaoBanco};

{$R *.res}

begin
  Application.Initialize ;
  Retaguarda := true ;
  VersaoSistema := 'v.3.1';
  Application.Title := 'Modulo Configurador';

  Application.CreateForm(TDM, DM);
  FormTelaLogin := TFormTelaLogin.Create(Application) ;
  if FormTelaLogin.ShowModal = idOk then
    begin
      Application.CreateForm(TFormPrincipal, FormPrincipal);
      FormPrincipal.RodapePrincipal.Panels[0].Text := 'Empresa: ' +DM.SQLConfigGeralEmpresaPadraoCalcField.Value;
      FormPrincipal.RodapePrincipal.Panels[1].Text := 'Terminal: '+Dm.SQLTerminalAtivoTERMA60DESCR.AsString;
      FormPrincipal.RodapePrincipal.Panels[2].Text := 'Usuário: ' +DM.SQLUsuariosUSUAA60LOGIN.Value;
      FormPrincipal.RodapePrincipal.Panels[4].Text := 'Validade da Licença: ' +DM.SQLConfigGeralCFGEDBLOQ.AsString;
      Application.Run ;
    end
  else
    begin
      DM.Zdb.Connected := False;
      Application.Terminate;
    end;
end.
