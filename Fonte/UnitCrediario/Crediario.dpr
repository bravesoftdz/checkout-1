program Crediario;

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
  TelaLogin in '..\UnitLoja\TelaLogin.pas' {FormTelaLogin},
  ComCtrls in '..\..\Template\ComCtrls.pas',
  CadastroTipoCliente in '..\ArquivosComuns\CadastroTipoCliente.pas' {FormCadastroTipoCliente},
  CadastroCliente in '..\ArquivosComuns\CadastroCliente.pas' {FormCadastroCliente},
  TelaEnvioCartasAviso in 'TelaEnvioCartasAviso.pas' {FormTelaEnvioCartasAviso},
  RelatorioTemplate in '..\..\Template\RelatorioTemplate.pas' {FormRelatorioTEMPLATE},
  CadastroVendedor in '..\ArquivosComuns\CadastroVendedor.pas' {FormCadastroVendedor},
  CadastroClienteReferencia in '..\ArquivosComuns\CadastroClienteReferencia.pas' {FormCadastroClienteReferencia},
  CadastroClienteDependente in '..\ArquivosComuns\CadastroClienteDependente.pas' {FormCadastroClienteDependente},
  CadastroProfissao in '..\ArquivosComuns\CadastroProfissao.pas' {FormCadastroProfissao},
  CadastroMotivoBloqueio in '..\ArquivosComuns\CadastroMotivoBloqueio.pas' {FormCadastroMotivoBloqueio},
  CadastroBanco in '..\ArquivosComuns\CadastroBanco.pas' {FormCadastroBanco},
  CadastroClienteContato in '..\ArquivosComuns\CadastroClienteContato.pas' {FormCadastroClienteContato},
  UnitLibrary in '..\ArquivosComuns\UnitLibrary.pas',
  CadastroCupom in '..\ArquivosComuns\CadastroCupom.pas' {FormCadastroCupom},
  TelaReabilitacaoCredito in 'TelaReabilitacaoCredito.pas' {FormTelaReabilitacaoCredito},
  RelatorioReabilitacaoSPC in 'RelatorioReabilitacaoSPC.pas' {FormRelatorioReabilitacaoSPC},
  RelatorioExtratoCliente in '..\ArquivosComuns\RelatorioExtratoCliente.pas' {FormRelatorioExtratoCliente},
  CadastroClasse in '..\ArquivosComuns\CadastroClasse.pas' {FormCadastroClasse},
  CadastroClasseUsuario in '..\ArquivosComuns\CadastroClasseUsuario.pas' {FormCadastroClasseUsuario},
  CadastroUsuario in '..\ArquivosComuns\CadastroUsuario.pas' {FormCadastroUsuario},
  TelaDadosVersaoCrediario in 'TelaDadosVersaoCrediario.pas' {FormTelaDadosVersaoCrediario},
  TelaConsultaTabelaPreco in '..\ArquivosComuns\TelaConsultaTabelaPreco.pas',
  TelaConsultaTemplate in '..\..\Template\TelaConsultaTemplate.pas' {FormTelaConsultaTemplate},
  CadastroPlanoRecebimentoParcela in '..\Config\CadastroPlanoRecebimentoParcela.pas' {FormCadastroPlanoRecebimentoParcela},
  CadastroPlanoRecebimento in '..\Config\CadastroPlanoRecebimento.pas' {FormCadastroPlanoRecebimento},
  TelaImpressaoTermicaCodBar in '..\ArquivosComuns\TelaImpressaoTermicaCodBar.pas' {FormTelaImpressaoTermicaCodBar},
  WindowsLibrary in '..\ArquivosComuns\WindowsLibrary.pas',
  WaitWindow in '..\ArquivosComuns\WaitWindow.pas',
  CadastroConsulta in '..\ArquivosComuns\CadastroConsulta.pas' {FormCadastroConsulta},
  TelaEnvioEmailGeral in '..\ArquivosComuns\TelaEnvioEmailGeral.pas' {FormTelaEnvioEmailGeral},
  CadastroCep in '..\ArquivosComuns\CadastroCep.pas' {FormCadastroCep},
  RelatorioContasaReceber in '..\UnitFinanceiro\RelatorioContasaReceber.pas' {FormRelatorioContasaReceber},
  RelatorioContasReceberEmitidas in '..\UnitFinanceiro\RelatorioContasReceberEmitidas.pas' {FormRelatorioContasReceberEmitidas},
  RelatorioContasReceberVencidas in '..\UnitFinanceiro\RelatorioContasReceberVencidas.pas' {FormRelatorioContasReceberVencidas},
  RelatorioContasRecebidas in '..\UnitFinanceiro\RelatorioContasRecebidas.pas' {FormRelatorioContasRecebidas},
  RelatorioVendasPeriodo in '..\ArquivosComuns\RelatorioVendasPeriodo.pas' {FormRelatorioVendasPeriodo},
  RelatorioClienteCadastrado in '..\ArquivosComuns\RelatorioClienteCadastrado.pas' {FormRelatorioClienteCadastrado},
  RelatorioClienteBloqueado in '..\ArquivosComuns\RelatorioClienteBloqueado.pas' {FormRelatorioClienteBloqueado},
  RelatorioClientesSPC in '..\UnitLoja\RelatorioClientesSPC.pas' {FormRelatorioClientesSPC},
  TelaAutorizacaoCompraCliente in '..\ArquivosComuns\TelaAutorizacaoCompraCliente.pas' {FormTelaAutorizacaoCompra};

{$R *.RES}

begin
  Application.Initialize ;
  Retaguarda := true ;
  VersaoSistema := '1.20b' ;
  Application.Title := '';
  Application.CreateForm(TDM, DM);
  FormTelaLogin := TFormTelaLogin.Create(Application) ;
  if FormTelaLogin.ShowModal <> idOk then
    exit ;

  Application.CreateForm(TFormPrincipal, FormPrincipal);
  FormPrincipal.RodapePrincipal.Panels[1].Text := DM.SQLUsuariosUSUAA60LOGIN.Value ;
  FormPrincipal.RodapePrincipal.Panels[2].Text := DM.SQLConfigGeralEmpresaPadraoCalcField.Value ;
  FormPrincipal.RodapePrincipal.Panels[3].Text := 'Versão ' + VersaoSistema ;

  Application.Run ;
end.
