program Transportadora;

uses
  Forms,
  Windows,
  PrincipalTemplate in '..\..\Template\PrincipalTemplate.pas' {FormPrincipalTemplate},
  VarSYS in '..\..\Template\VarSYS.pas',
  CadastroTEMPLATE in '..\..\Template\CadastroTEMPLATE.pas' {FormCadastroTEMPLATE},
  DataModuloTemplate in '..\..\Template\DataModuloTemplate.pas' {DMTemplate: TDataModule},
  FormResources in '..\..\Template\FormResources.pas',
  Principal in 'Principal.pas' {FormPrincipal},
  DataModulo in 'DataModulo.pas' {DM: TDataModule},
  CadastroFrete in 'CadastroFrete.pas' {FormCadastroFrete},
  CadastroFreteItem in 'CadastroFreteItem.pas' {FormCadastroFreteItem},
  TelaConsultaProduto in '..\ArquivosComuns\TelaConsultaProduto.pas' {FormTelaConsultaProduto},
  CadastroUnidade in '..\ArquivosComuns\CadastroUnidade.pas' {FormCadastroUnidade},
  CadastroCliente in '..\ArquivosComuns\CadastroCliente.pas' {FormCadastroCliente},
  UnitLibrary in '..\ArquivosComuns\UnitLibrary.pas',
  WindowsLibrary in '..\ArquivosComuns\WindowsLibrary.pas',
  TelaImpressaoTermicaCodBar in '..\ArquivosComuns\TelaImpressaoTermicaCodBar.pas' {FormTelaImpressaoTermicaCodBar},
  CadastroProfissional in '..\SISCON\CadastroProfissional.pas' {FormCadastroProfissional},
  CadastroBanco in '..\ArquivosComuns\CadastroBanco.pas' {FormCadastroBanco},
  CadastroPlanoRecebimento in '..\Config\CadastroPlanoRecebimento.pas' {FormCadastroPlanoRecebimento},
  CadastroProfissao in '..\ArquivosComuns\CadastroProfissao.pas' {FormCadastroProfissao},
  CadastroMotivoBloqueio in '..\ArquivosComuns\CadastroMotivoBloqueio.pas' {FormCadastroMotivoBloqueio},
  CadastroClienteDependente in '..\ArquivosComuns\CadastroClienteDependente.pas' {FormCadastroClienteDependente},
  CadastroClienteReferencia in '..\ArquivosComuns\CadastroClienteReferencia.pas' {FormCadastroClienteReferencia},
  CadastroClienteContato in '..\ArquivosComuns\CadastroClienteContato.pas' {FormCadastroClienteContato},
  TelaConsultaTabelaPreco in '..\ArquivosComuns\TelaConsultaTabelaPreco.pas' {FormTelaConsultaTabelaPreco},
  CadastroPlanoRecebimentoParcela in '..\Config\CadastroPlanoRecebimentoParcela.pas' {FormCadastroPlanoRecebimentoParcela},
  CadastroConsulta in '..\ArquivosComuns\CadastroConsulta.pas' {FormCadastroConsulta},
  TelaEnvioEmailGeral in '..\ArquivosComuns\TelaEnvioEmailGeral.pas' {FormTelaEnvioEmailGeral},
  CadastroCep in '..\ArquivosComuns\CadastroCep.pas' {FormCadastroCep},
  TELALOGIN in '..\UnitLoja\TelaLogin.pas' {FormTelaLogin},
  CadastroFuncionario in '..\ArquivosComuns\CadastroFuncionario.pas' {FormCadastroFuncionario},
  CadastroVeiculo in '..\ArquivosComuns\CadastroVeiculo.pas' {FormCadastroVeiculo},
  CadastroOperacaoFuncionario in '..\ArquivosComuns\CadastroOperacaoFuncionario.pas' {FormCadastroOperacaoFuncionario},
  CadastroFuncionarioContaCorrente in '..\ArquivosComuns\CadastroFuncionarioContaCorrente.pas' {FormCadastroFuncionarioContaCorrente},
  TelaGeralTEMPLATE in '..\..\Template\TelaGeralTEMPLATE.pas' {FormTelaGeralTEMPLATE},
  TelaBaixaFuncionarioContaCorrente in 'TelaBaixaFuncionarioContaCorrente.pas' {FormTelaBaixaFuncionarioContaCorrente},
  TelaConfigTransportadora in '..\Config\TelaConfigTransportadora.pas' {FormTelaConfigTransportadora},
  CadastroRecibo in '..\UnitFinanceiro\CadastroRecibo.pas' {FormCadastroRecibo},
  CadastroFornecedor in '..\ArquivosComuns\CadastroFornecedor.pas' {FormCadastroFornecedor},
  CadastroTipoFornecedor in '..\ArquivosComuns\CadastroTipoFornecedor.pas' {FormCadastroTipoFornecedor},
  CadastroTipoCusto in '..\ArquivosComuns\CadastroTipoCusto.pas' {FormCadastroTipoCusto},
  ExtensoLib in '..\ArquivosComuns\ExtensoLib.pas',
  RelatorioTemplate in '..\..\Template\RelatorioTemplate.pas' {FormRelatorioTEMPLATE},
  RelatorioListagemFrete in 'RelatorioListagemFrete.pas' {FormRelatorioListagemFrete},
  WaitWindow in '..\ArquivosComuns\WaitWindow.pas',
  TelaAutorizacaoCompraCliente in '..\ArquivosComuns\TelaAutorizacaoCompraCliente.pas' {FormTelaAutorizacaoCompra},
  CadastroClienteHistorico in '..\UnitLoja\CadastroClienteHistorico.pas' {FormCadastroClienteHistorico},
  TelaClienteHistorico in '..\ArquivosComuns\TelaClienteHistorico.pas' {FormTelaClienteHistorico},
  TelaConsultaPlanoRecebimento in '..\ArquivosComuns\TelaConsultaPlanoRecebimento.pas',
  TelaConhecimento in 'TelaConhecimento.pas' {FormTelaConhecimento},
  RelatorioComissoes in 'RelatorioComissoes.pas' {FormRelatorioComissoes},
  TelaConsultaCliente in '..\ArquivosComuns\TelaConsultaCliente.pas' {FormTelaConsultaCliente},
  TelaConsultaGeral in 'TelaConsultaGeral.pas' {FormTelaConsultaGeral},
  TelaNegociacaoDivida in '..\ArquivosComuns\TelaNegociacaoDivida.pas' {FormTelaNegociacaoDivida},
  TelaDadosTeleEntrega in '..\UnitCheckout\TelaDadosTeleEntrega.pas' {FormTelaDadosTeleEntrega},
  TelaConfigControle in '..\ArquivosComuns\TelaConfigControle.pas' {FormTelaConfigControle};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Advanced Control Transportadora';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormTelaConfigControle, FormTelaConfigControle);
  FormTelaLogin := TFormTelaLogin.Create(Application);
  if FormTelaLogin.ShowModal = IDOK then
    begin
      Application.CreateForm(TFormPrincipal, FormPrincipal);
      Application.Run;
    end
  else
    Application.Terminate;
end.
