program UnitCheckout;

uses
  Variants,
  Forms,
  Windows,
  Dialogs,
  SysUtils,
  TelaItens in 'TelaItens.pas' {FormTelaItens},
  DataModuloTemplate in '..\..\Template\DataModuloTemplate.pas' {DMTemplate: TDataModule},
  DataModulo in 'DataModulo.pas' {DM: TDataModule},
  TelaSplash in 'TelaSplash.pas' {FormTelaSplash},
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
  TelaCadastroRapidoCliente in 'TelaCadastroRapidoCliente.pas' {FormTelaCadastroRapidoCliente},
  TelaTeclasAtalhoTelaFechamentoVenda in 'TelaTeclasAtalhoTelaFechamentoVenda.pas' {FormTelaTeclasAtalhoTelaFechamentoVenda},
  ECFCheckout in 'ECFCheckout.pas',
  Bematech_MP20_FI in 'Bematech_MP20_FI.pas',
  TelaCompSigtron in 'TelaCompSigtron.pas' {CompSigtron},
  CadastroCliente in '..\ArquivosComuns\CadastroCliente.pas' {FormCadastroCliente},
  CadastroVendedor in '..\ArquivosComuns\CadastroVendedor.pas' {FormCadastroVendedor},
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
  Sigtron_FS345 in 'Sigtron_FS345.pas',
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
  TelaCupomDevolucao in 'TelaCupomDevolucao.pas' {FormTelaCupomDevolucao},
  CadastroPortador in '..\UnitFinanceiro\CadastroPortador.pas' {FormCadastroPortador},
  CadastroSituacaoCheque in '..\UnitFinanceiro\CadastroSituacaoCheque.pas' {FormCadastroSituacaoCheque},
  CadastroEmpresa in '..\ArquivosComuns\CadastroEmpresa.pas' {FormCadastroEmpresa},
  CadastroTipoDocumento in '..\UnitFinanceiro\CadastroTipoDocumento.pas' {FormCadastroTipoDocumento},
  TelaConsultaConsignacoesPendentes in '..\ArquivosComuns\TelaConsultaConsignacoesPendentes.pas' {FormTelaConsultaConsignacoesPendentes},
  TelaFechamentoOrcamento in 'TelaFechamentoOrcamento.pas' {FormTelaFechamentoOrcamento},
  TelaSaldo in 'TelaSaldo.pas' {FormTelaSaldo},
  CadastroChequesRecebidos in '..\UnitFinanceiro\CadastroChequesRecebidos.pas' {FormCadastroChequesRecebidos},
  CadastroChequesHistorico in '..\UnitFinanceiro\CadastroChequesHistorico.pas' {FormCadastroChequesHistorico},
  CadastroPedidoVendaItem in '..\UnitFaturamento\CadastroPedidoVendaItem.pas' {FormCadastroPedidoVendaItem},
  CadastroPedidoVendaFinanceiro in '..\UnitFaturamento\CadastroPedidoVendaFinanceiro.pas' {FormCadastroPedidoVendaFinanceiro},
  CadastroPedidoVenda in '..\UnitFaturamento\CadastroPedidoVenda.pas' {FormCadastroPedidoVenda},
  TelaConsultaProduto in '..\ArquivosComuns\TelaConsultaProduto.pas' {FormTelaConsultaProduto},
  TelaLancamentoGradePedido in '..\UnitFaturamento\TelaLancamentoGradePedido.pas' {FormTelaLancamentoGradePedido},
  TelaConsultaPortador in '..\ArquivosComuns\TelaConsultaPortador.pas' {FormTelaConsultaPortador},
  TelaConsultaNumerario in '..\ArquivosComuns\TelaConsultaNumerario.pas' {FormTelaConsultaNumerario},
  CadastroTransportadora in '..\ArquivosComuns\CadastroTransportadora.pas' {FormCadastroTransportadora},
  CadastroPlanoRecebimento in '..\ArquivosComuns\CadastroPlanoRecebimento.pas' {FormCadastroPlanoRecebimento},
  CadastroPlanoRecebimentoParcela in '..\ArquivosComuns\CadastroPlanoRecebimentoParcela.pas' {FormCadastroPlanoRecebimentoParcela},
  TelaEmissaoEtiquetasCodigoBarras in '..\ArquivosComuns\TelaEmissaoEtiquetasCodigoBarras.pas' {FormTelaEmissaoEtiquetasCodigoBarras},
  TelaConsultaPedidoCompra in '..\ArquivosComuns\TelaConsultaPedidoCompra.pas' {FormTelaConsultaPedidoCompra},
  TelaConsultaNotaCompra in '..\ArquivosComuns\TelaConsultaNotaCompra.pas' {FormTelaConsultaNotaCompra},
  TelaConsultaPedidoVenda in '..\ArquivosComuns\TelaConsultaPedidoVenda.pas' {FormTelaConsultaPedidoVenda},
  TelaConsultaNotaFiscal in '..\ArquivosComuns\TelaConsultaNotaFiscal.pas' {FormTelaConsultaNotaFiscal},
  TelaConsultaTipoDocumento in '..\ArquivosComuns\TelaConsultaTipoDocumento.pas' {FormTelaConsultaTipoDocumento},
  TELALOGIN in 'TelaLogin.pas' {FormTelaLogin},
  CadastroConsulta in '..\ArquivosComuns\CadastroConsulta.pas' {FormCadastroConsulta},
  TelaEnvioEmailGeral in '..\ArquivosComuns\TelaEnvioEmailGeral.pas' {FormTelaEnvioEmailGeral},
  CadastroCep in '..\ArquivosComuns\CadastroCep.pas' {FormCadastroCep},
  TelaDadosCliente in 'TelaDadosCliente.pas' {FormTelaDadosCliente},
  TelaCadastroObs in 'TelaCadastroObs.pas' {FormTelaCadastroObs},
  StarFiche in 'StarFiche.pas',
  TelaFechamentoCaixa in 'TelaFechamentoCaixa.pas' {FormTelaFechamentoCaixa},
  TelaImpressaoTermicaCodBar in '..\ArquivosComuns\TelaImpressaoTermicaCodBar.pas' {FormTelaImpressaoTermicaCodBar},
  SWEDA7000 in 'SWEDA7000.pas';

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
    //if not Pergunta('NAO', 'O Unit Checkout já está sendo executado, deseja abrir outra cópia ?') then
    Informa('O Advanced Control PDV já está sendo executado.') ;
    Halt ;
  end ;

  Application.Initialize ;
  VersaoSistema := '1.97' ;

  Application.Title := 'Advanced Control PDV';
  Application.CreateForm(TDM, DM);
  FormTelaSplash := TFormTelaSplash.Create(Application) ;
  FormTelaSplash.Show ;
  FormTelaSplash.Update ;
  while FormTelaSplash.Visible do
    Application.ProcessMessages ;

  FormTelaLogin := TFormTelaLogin.Create(Application);
  FormTelaLogin.Caption := 'Bem Vindo ao Advanced Control PDV' ;
  FormTelaSplash.Free ;
  if FormTelaLogin.ShowModal <> idOk then
    exit ;

  Application.CreateForm(TFormTelaItens, FormTelaItens);
  Application.Run ;
end.
