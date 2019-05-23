program UnitFaturamento;

uses
  VarSYS,
  Forms,
  Windows,
  DataModuloTemplate in '..\..\Template\DataModuloTemplate.pas' {DMTemplate: TDataModule},
  CadastroTEMPLATE in '..\..\Template\CadastroTEMPLATE.pas' {FormCadastroTemplate},
  PrincipalTemplate in '..\..\Template\PrincipalTemplate.pas' {FormPrincipalTemplate},
  FormResources in '..\..\Template\FormResources.pas',
  TelaGeralTEMPLATE in '..\..\Template\TelaGeralTEMPLATE.pas' {FormTelaGeralTEMPLATE},
  DataModulo in 'DataModulo.pas' {DM: TDataModule},
  Principal in 'Principal.pas' {FormPrincipal},
  TELALOGIN in 'TelaLogin.pas' {FormTelaLogin},
  ComCtrls in 'ComCtrls.pas',
  UnitLibrary in '..\ArquivosComuns\UnitLibrary.pas',
  CadastroTipoCliente in '..\ArquivosComuns\CadastroTipoCliente.pas' {FormCadastroTipoCliente},
  CadastroCliente in '..\ArquivosComuns\CadastroCliente.pas' {FormCadastroCliente},
  RelatorioTemplate in '..\..\Template\RelatorioTemplate.pas' {FormRelatorioTEMPLATE},
  CadastroBanco in '..\ArquivosComuns\CadastroBanco.pas' {FormCadastroBanco},
  CadastroTipoDocumento in 'CadastroTipoDocumento.pas' {FormCadastroTipoDocumento},
  CadastroPortador in 'CadastroPortador.pas' {FormCadastroPortador},
  CadastroPlanodeContas in 'CadastroPlanodeContas.pas' {FormCadastroPlanodeContas},
  CadastroContasReceber in 'CadastroContasReceber.pas' {FormCadastroContasReceber},
  CadastroEmpresa in '..\ArquivosComuns\CadastroEmpresa.pas' {FormCadastroEmpresa},
  TelaBaixarDocumentosReceber in 'TelaBaixarDocumentosReceber.pas' {FormTelaBaixarDocumentosReceber},
  CadastroVendedor in '..\ArquivosComuns\CadastroVendedor.pas' {FormCadastroVendedor},
  CadastroClienteDependente in '..\ArquivosComuns\CadastroClienteDependente.pas' {FormCadastroClienteDependente},
  CadastroClienteReferencia in '..\ArquivosComuns\CadastroClienteReferencia.pas' {FormCadastroClienteReferencia},
  CadastroMotivoBloqueio in '..\ArquivosComuns\CadastroMotivoBloqueio.pas' {FormCadastroMotivoBloqueio},
  CadastroProfissao in '..\ArquivosComuns\CadastroProfissao.pas' {FormCadastroProfissao},
  CadastroClienteContato in '..\ArquivosComuns\CadastroClienteContato.pas' {FormCadastroClienteContato},
  CadastroClasse in '..\ArquivosComuns\CadastroClasse.pas' {FormCadastroClasse},
  CadastroClasseUsuario in '..\ArquivosComuns\CadastroClasseUsuario.pas' {FormCadastroClasseUsuario},
  CadastroUsuario in '..\ArquivosComuns\CadastroUsuario.pas' {FormCadastroUsuario},
  CadastroPedidoVenda in 'CadastroPedidoVenda.pas' {FormCadastroPedidoVenda},
  CadastroPedidoVendaItem in 'CadastroPedidoVendaItem.pas' {FormCadastroPedidoVendaItem},
  CadastroTransportadora in '..\ArquivosComuns\CadastroTransportadora.pas' {FormCadastroTransportadora},
  CadastroPlanoRecebimento in '..\ArquivosComuns\CadastroPlanoRecebimento.pas' {FormCadastroPlanoRecebimento},
  CadastroPlanoRecebimentoParcela in '..\ArquivosComuns\CadastroPlanoRecebimentoParcela.pas' {FormCadastroPlanoRecebimentoParcela},
  TelaEmissaoEtiquetasCodigoBarras in '..\ArquivosComuns\TelaEmissaoEtiquetasCodigoBarras.pas' {FormTelaEmissaoEtiquetasCodigoBarras},
  TelaLancamentoGradePedido in 'TelaLancamentoGradePedido.pas' {FormTelaLancamentoGradePedido},
  CadastroClassificacaoFiscal in '..\ArquivosComuns\CadastroClassificacaoFiscal.pas' {FormCadastroClassificacaoFiscal},
  CadastroFornecedor in '..\ArquivosComuns\CadastroFornecedor.pas' {FormCadastroFornecedor},
  CadastroNotaFiscal in 'CadastroNotaFiscal.pas' {FormCadastroNotaFiscal},
  TelaConsultaTemplate in '..\..\Template\TelaConsultaTemplate.pas' {FormTelaConsultaTemplate},
  TelaConsultaProduto in '..\ArquivosComuns\TelaConsultaProduto.pas' {FormTelaConsultaProduto},
  TelaConsultaNotaCompra in '..\ArquivosComuns\TelaConsultaNotaCompra.pas' {FormTelaConsultaNotaCompra},
  TelaConsultaPedidoCompra in '..\ArquivosComuns\TelaConsultaPedidoCompra.pas' {FormTelaConsultaPedidoCompra},
  TelaConsultaPedidoVenda in '..\ArquivosComuns\TelaConsultaPedidoVenda.pas' {FormTelaConsultaPedidoVenda},
  TelaConsultaNotaFiscal in '..\ArquivosComuns\TelaConsultaNotaFiscal.pas' {FormTelaConsultaNotaFiscal},
  CadastroTipoFornecedor in '..\ArquivosComuns\CadastroTipoFornecedor.pas' {FormCadastroTipoFornecedor},
  CadastroTipoCusto in '..\ArquivosComuns\CadastroTipoCusto.pas' {FormCadastroTipoCusto},
  CadastroNotaFiscalItem in 'CadastroNotaFiscalItem.pas' {FormCadastroNotaFiscalItem},
  CadastroNotaFiscalFinanceiro in 'CadastroNotaFiscalFinanceiro.pas' {FormCadastroNotaFiscalFinanceiro},
  TelaImportacaoPedidoVenda in 'TelaImportacaoPedidoVenda.pas' {FormTelaImportacaoPedidoVenda},
  CadastroOperacoesEstoque in '..\ArquivosComuns\CadastroOperacoesEstoque.pas' {FormCadastroOperacoesEstoque},
  TelaLancamentoGradeNotaFiscal in 'TelaLancamentoGradeNotaFiscal.pas' {FormTelaLancamentoGradeNotaFiscal},
  TelaConsultaNumerario in '..\ArquivosComuns\TelaConsultaNumerario.pas' {FormTelaConsultaNumerario},
  TelaConsultaPortador in '..\ArquivosComuns\TelaConsultaPortador.pas' {FormTelaConsultaPortador},
  TelaConfiguracaoFaturamento in 'TelaConfiguracaoFaturamento.pas' {FormTelaConfiguracaoFaturamento},
  CadastroPedidoVendaFinanceiro in 'CadastroPedidoVendaFinanceiro.pas' {FormCadastroPedidoVendaFinanceiro},
  TelaConsultaTabelaPreco in '..\ArquivosComuns\TelaConsultaTabelaPreco.pas' {FormTelaConsultaTabelaPreco},
  CadastroSerie in 'CadastroSerie.pas' {FormCadastroSerie},
  RelatorioNotaFiscalEmitida in 'RelatorioNotaFiscalEmitida.pas' {FormRelatorioNotaFiscalEmitida},
  RelatorioItensPedidoVenda in 'RelatorioItensPedidoVenda.pas' {FormRelatorioItensPedidoVenda},
  RelatorioPedidoVenda in 'RelatorioPedidoVenda.pas' {FormRelatorioPedidoVenda},
  TelaConsultaTipoDocumento in '..\ArquivosComuns\TelaConsultaTipoDocumento.pas' {FormTelaConsultaTipoDocumento},
  CadastroConsulta in '..\ArquivosComuns\CadastroConsulta.pas' {FormCadastroConsulta},
  TelaEnvioEmailGeral in '..\ArquivosComuns\TelaEnvioEmailGeral.pas' {FormTelaEnvioEmailGeral},
  CadastroCep in '..\ArquivosComuns\CadastroCep.pas' {FormCadastroCep},
  TelaImpressaoDuplicatas in '..\ArquivosComuns\TelaImpressaoDuplicatas.pas' {FormTelaImpressaoDuplicata},
  TelaImpressaoBloquetos in 'TelaImpressaoBloquetos.pas' {FormTelaImpressaoBloquetos},
  ExtensoLib in '..\ArquivosComuns\ExtensoLib.pas',
  TelaImpressaoTermicaCodBar in '..\ArquivosComuns\TelaImpressaoTermicaCodBar.pas' {FormTelaImpressaoTermicaCodBar},
  TelaConsultaCupom in 'TelaConsultaCupom.pas' {FormTelaConsultaCupom};

{$R *.RES}

begin
  Application.Initialize ;
  Retaguarda := true ;
  Application.Title := 'Gestão Faturamento';
  Application.CreateForm(TDM, DM);
  FormTelaLogin := TFormTelaLogin.Create(Application) ;
  if FormTelaLogin.ShowModal <> idOk then
    exit ;

  Application.CreateForm(TFormPrincipal, FormPrincipal);
  FormPrincipal.RodapePrincipal.Panels[1].Text := DM.SQLUsuariosUSUAA60LOGIN.Value ;
  FormPrincipal.RodapePrincipal.Panels[2].Text := DM.SQLConfigGeralEmpresaPadraoCalcField.Value ;

  Application.Run ;
end.
