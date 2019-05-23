program UnitFinanceiro;

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
  ComCtrls in 'ComCtrls.pas',
  UnitLibrary in '..\ArquivosComuns\UnitLibrary.pas',
  CadastroTipoCliente in '..\ArquivosComuns\CadastroTipoCliente.pas' {FormCadastroTipoCliente},
  CadastroCliente in '..\ArquivosComuns\CadastroCliente.pas' {FormCadastroCliente},
  RelatorioTemplate in '..\..\Template\RelatorioTemplate.pas' {FormRelatorioTEMPLATE},
  CadastroBanco in '..\ArquivosComuns\CadastroBanco.pas' {FormCadastroBanco},
  CadastroTipoDocumento in 'CadastroTipoDocumento.pas' {FormCadastroTipoDocumento},
  CadastroPortador in 'CadastroPortador.pas' {FormCadastroPortador},
  CadastroContasReceber in 'CadastroContasReceber.pas' {FormCadastroContasReceber},
  CadastroEmpresa in '..\ArquivosComuns\CadastroEmpresa.pas' {FormCadastroEmpresa},
  TelaBaixarDocumentosPagar in 'TelaBaixarDocumentosPagar.pas' {FormTelaBaixarDocumentosPagar},
  CadastroVendedor in '..\ArquivosComuns\CadastroVendedor.pas' {FormCadastroVendedor},
  CadastroClienteDependente in '..\ArquivosComuns\CadastroClienteDependente.pas' {FormCadastroClienteDependente},
  CadastroClienteReferencia in '..\ArquivosComuns\CadastroClienteReferencia.pas' {FormCadastroClienteReferencia},
  CadastroMotivoBloqueio in '..\ArquivosComuns\CadastroMotivoBloqueio.pas' {FormCadastroMotivoBloqueio},
  CadastroProfissao in '..\ArquivosComuns\CadastroProfissao.pas' {FormCadastroProfissao},
  CadastroClienteContato in '..\ArquivosComuns\CadastroClienteContato.pas' {FormCadastroClienteContato},
  CadastroContasPagar in 'CadastroContasPagar.pas' {FormCadastroContasPagar},
  RelatorioContasRecebidas in '..\ArquivosComuns\RelatorioContasRecebidas.pas' {FormRelatorioContasRecebidas},
  RelatorioContasReceberVencidas in '..\ArquivosComuns\RelatorioContasReceberVencidas.pas' {FormRelatorioContasReceberVencidas},
  RelatorioContasaReceber in '..\ArquivosComuns\RelatorioContasaReceber.pas' {FormRelatorioContasaReceber},
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
  TelaPlanoContas in 'TelaPlanoContas.pas' {FormTelaPlanoContas},
  RelatorioChequesRecebidos in 'RelatorioChequesRecebidos.pas' {FormRelatorioChequeRecebidos},
  TelaBaixarChequesRecebidos in 'TelaBaixarChequesRecebidos.pas' {FormTelaBaixarChequesRecebidos},
  CadastroSituacaoCheque in 'CadastroSituacaoCheque.pas' {FormCadastroSituacaoCheque},
  TelaConsultaTabelaPreco in '..\ArquivosComuns\TelaConsultaTabelaPreco.pas',
  CadastroCupom in '..\ArquivosComuns\CadastroCupom.pas' {FormCadastroCupom},
  TelaConsultaConsignacoesPendentes in '..\ArquivosComuns\TelaConsultaConsignacoesPendentes.pas' {FormTelaConsultaConsignacoesPendentes},
  TelaAssistenteLancamentoContasReceber in 'TelaAssistenteLancamentoContasReceber.pas' {FormTelaAssistenteLancamentoContasReceber},
  CadastroChequesHistorico in 'CadastroChequesHistorico.pas' {FormCadastroChequesHistorico},
  CadastroPlanoRecebimentoParcela in '..\ArquivosComuns\CadastroPlanoRecebimentoParcela.pas' {FormCadastroPlanoRecebimentoParcela},
  CadastroPlanoRecebimento in '..\ArquivosComuns\CadastroPlanoRecebimento.pas' {FormCadastroPlanoRecebimento},
  TelaConsultaNumerario in '..\ArquivosComuns\TelaConsultaNumerario.pas' {FormTelaConsultaNumerario},
  CadastroPlanodeContas in 'CadastroPlanodeContas.pas' {FormCadastroPlanodeContas},
  CadastroMovimentoBanco in 'CadastroMovimentoBanco.pas' {FormCadastroMovimentoBanco},
  CadastroOperacaoBanco in 'CadastroOperacaoBanco.pas' {FormCadastroOperacaoBanco},
  CadastroContaCorrente in 'CadastroContaCorrente.pas' {FormCadastroContaCorrente},
  RelatorioExtratoMovimentoBanco in 'RelatorioExtratoMovimentoBanco.pas' {FormRelatorioExtratoMovimentoBanco},
  TELALOGIN in '..\ArquivosComuns\TelaLogin.pas' {FormTelaLogin};

{$R *.RES}

begin
  Application.Initialize ;
  Retaguarda        := true ;
  VersaoSistema     := '1.23' ;
  Application.Title := 'Gestão Financeiro';
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
