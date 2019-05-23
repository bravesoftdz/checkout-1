program CheckoutRest;

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
  TelaImpressaoCarne in 'TelaImpressaoCarne.pas' {FormTelaImpressaoCarne},
  TelaCadastroDadosVenda in 'TelaCadastroDadosVenda.pas' {FormTelaCadastroDadosVenda},
  TelaMensagem in 'TelaMensagem.pas' {FormTelaMensagem},
  TelaConsultaTemplate in '..\..\Template\TelaConsultaTemplate.pas' {FormTelaConsultaTemplate},
  TelaConsultaTabelaPreco in '..\ArquivosComuns\TelaConsultaTabelaPreco.pas' {FormTelaConsultaTabelaPreco},
  Bematech_MP20_FI_II in 'Bematech_MP20_FI_II.pas',
  CadastroSituacaoCheque in '..\UnitFinanceiro\CadastroSituacaoCheque.pas' {FormCadastroSituacaoCheque},
  TELALOGIN in 'TelaLogin.pas' {FormTelaLogin},
  TelaEnvioEmailGeral in '..\ArquivosComuns\TelaEnvioEmailGeral.pas' {FormTelaEnvioEmailGeral},
  TelaDadosCliente in 'TelaDadosCliente.pas' {FormTelaDadosCliente},
  TelaCadastroObs in 'TelaCadastroObs.pas' {FormTelaCadastroObs},
  TelaImpressaoTermicaCodBar in '..\ArquivosComuns\TelaImpressaoTermicaCodBar.pas' {FormTelaImpressaoTermicaCodBar},
  SWEDA7000_AFRAC in 'SWEDA7000_AFRAC.pas',
  TelaConsultaRapidaCupom in 'TelaConsultaRapidaCupom.pas' {FormTelaConsultaRapidaCupom},
  WindowsLibrary in '..\ArquivosComuns\WindowsLibrary.pas',
  TelaImportaItens in '..\ArquivosComuns\TelaImportaItens.pas' {FormTelaImportaItens},
  WaitWindow in '..\ArquivosComuns\WaitWindow.pas',
  CartaoCredito in 'CartaoCredito.pas',
  ConsultaProvedor in 'ConsultaProvedor.pas' {FormConsultaProvedor},
  CadastroPlanoRecebimentoParcela in '..\Config\CadastroPlanoRecebimentoParcela.pas' {FormCadastroPlanoRecebimentoParcela},
  CadastroPlanoRecebimento in '..\Config\CadastroPlanoRecebimento.pas' {FormCadastroPlanoRecebimento},
  CadastroConsulta in '..\ArquivosComuns\CadastroConsulta.pas' {FormCadastroConsulta},
  ECF_AFRAC in 'ECF_AFRAC.pas',
  TelaClienteHistorico in '..\ArquivosComuns\TelaClienteHistorico.pas' {FormTelaClienteHistorico},
  SWEDA7000 in 'SWEDA7000.pas',
  TelaConsultaPlanoRecebimento in '..\ArquivosComuns\TelaConsultaPlanoRecebimento.pas' {FormTelaConsultaPlanoRecebimento},
  TelaConsultaProduto in '..\ArquivosComuns\TelaConsultaProduto.pas' {FormTelaConsultaProduto},
  TelaSaldoPorLote in '..\UnitFaturamento\TelaSaldoPorLote.pas' {FormTelaSaldoPorLote},
  SearchLibrary in '..\ArquivosComuns\SearchLibrary.pas',
  TelaConsultaTipoDocumento in '..\ArquivosComuns\TelaConsultaTipoDocumento.pas' {FormTelaConsultaTipoDocumento},
  TelaConsultaPortador in '..\ArquivosComuns\TelaConsultaPortador.pas' {FormTelaConsultaPortador},
  TelaConsultaNumerario in '..\ArquivosComuns\TelaConsultaNumerario.pas' {FormTelaConsultaNumerario},
  TelaConsultaEmpresa in '..\ArquivosComuns\TelaConsultaEmpresa.pas' {FormTelaConsultaEmpresa},
  BEMATECH_MP20_CI in 'BEMATECH_MP20_CI.pas',
  IMPNAOFISCAL in 'IMPNAOFISCAL.pas',
  TelaRetornoPesquisaProduto in '..\ArquivosComuns\TelaRetornoPesquisaProduto.pas' {FormTelaRetornoPesquisaProduto},
  TelaNegociacaoDivida in '..\ArquivosComuns\TelaNegociacaoDivida.pas' {FormTelaNegociacaoDivida},
  ExtensoLib in '..\ArquivosComuns\ExtensoLib.pas',
  TelaGeracaoMalaDireta in '..\ArquivosComuns\TelaGeracaoMalaDireta.pas' {FormTelaGeracaoMalaDireta},
  UnSoundPlay in '..\..\Template\UnSoundPlay.pas',
  TelaAssistenteLancamentoPlanoVariavelCheckout in 'TelaAssistenteLancamentoPlanoVariavelCheckout.pas' {FormTelaAssistenteLancamentoPlanoVariavelCheckout},
  TelaTroco in 'TelaTroco.pas' {FormTelaTroco},
  TelaFotoExpandida in 'TelaFotoExpandida.pas' {FormTelaFotoExpandida},
  BemaFi32 in 'BemaFi32.pas',
  TelaConsultaRapidaDependente in 'TelaConsultaRapidaDependente.pas' {FormTelaConsultaRapidaDependente},
  PrincipalRelatorios in 'PrincipalRelatorios.pas' {FormPrincipalRelatorios},
  TelaAutenticaUsuario in 'TelaAutenticaUsuario.pas' {FormTelaAutenticaUsuario},
  Elgin_FIT_FuncoesDLL in 'Elgin_FIT_FuncoesDLL.pas',
  TelaConsultaMesa in 'TelaConsultaMesa.pas' {FormTelaConsultaMesas},
  CadastroReservaMesa in '..\UnitLoja\CadastroReservaMesa.pas' {FormCadastroReservaMesa},
  TelaTransfereMesa in 'TelaTransfereMesa.pas' {FormTelaTransfContas},
  TelaDisplay in 'TelaDisplay.pas' {FormTelaDisplay},
  CadastroClienteHistorico in '..\UnitLoja\CadastroClienteHistorico.pas' {FormCadastroClienteHistorico},
  CadastroProdutoSerie in '..\UnitLoja\CadastroProdutoSerie.pas' {FormCadastroProdutoSerie},
  CadastroDecreto in '..\Config\CadastroDecreto.pas' {FormCadastroDecreto},
  TelaPrecoAlterado in 'TelaPrecoAlterado.pas' {FormTelaPrecoAlterado},
  TelaAvisoDebito in '..\UnitCheckout\TelaAvisoDebito.pas' {FormTelaAvisoDebito},
  TelaImpressaoDadosVenda in 'TelaImpressaoDadosVenda.pas' {FormTelaImpressaoDadosVenda},
  CadastroProfissional in '..\SISCON\CadastroProfissional.pas' {FormCadastroProfissional},
  Daruma_Framework_FISCAL in 'Daruma_Framework_FISCAL.pas',
  TelaRecargaCartao in 'TelaRecargaCartao.pas' {FormTelaRecargaCartao},
  TelaMesa in 'TelaMesa.pas' {FormTelaMesa},
  TelaObsProduto in 'TelaObsProduto.pas' {FormTelaObsProduto},
  DataModuloImpNotaFiscal in '..\UnitFaturamento\DataModuloImpNotaFiscal.pas' {DMImpNotaFiscal: TDataModule},
  TelaSplash in '..\ArquivosComuns\TelaSplash.pas' {FormSplash},
  TelaMesaCodigo in 'TelaMesaCodigo.pas' {FormTelaMesaCodigo},
  TelaSabores in 'TelaSabores.pas' {FormTelaSabores},
  TelaBordas in 'TelaBordas.pas' {FormTelaBordas},
  TelaVendedorCodigo in 'TelaVendedorCodigo.pas' {FormVendedorCodigo},
  TelaMotivoCancelamento in 'TelaMotivoCancelamento.pas' {FormTelaDadosCancelamento},
  Sigtron_FS345 in 'Sigtron_FS345.pas',
  TelaContaCodigo in 'TelaContaCodigo.pas' {FormTelaContaCodigo},
  CadastroClienteRestaurante in 'CadastroClienteRestaurante.pas' {FormCadastroClienteRestaurante},
  RelatorioCupomEmitido in 'RelatorioCupomEmitido.pas',
  RelatorioTemplate in 'RelatorioTemplate.pas' {FormRelatorioTEMPLATE},
  BalancaFilizola in '..\UnitCheckout\BalancaFilizola.pas' {FormBalancaFilizola},
  BalancaUrano in '..\UnitCheckout\BalancaUrano.pas',
  BalancaToledo in '..\UnitCheckout\BalancaToledo.pas',
  TelaAtivacao in '..\Ativador\TelaAtivacao.pas' {FormTelaAtivacao};

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
    Informa('O Advanced Control PDV Restaurante já está sendo executado.') ;
    Halt ;
  end ;

  Application.Initialize ;
  VersaoSistema := '3.0' ;
  Enter := VK_Return;
  Esc   := VK_Escape;
  F1    := Vk_F1;
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
  Application.Title := 'PDV Restaurante';

  Application.CreateForm(TDM, DM);
  if (DM.OBSAutorizacao <> '') or (dm.SQLConfigGeralCFGECBLOQ.AsString = 'S') and(not DelphiAberto) then
  begin
    FormTelaAtivacao := TFormTelaAtivacao.Create(Application);
    FormTelaAtivacao.ShowModal;

    if (DM.vSEM_INTERNET)and((DM.DataSistema-DM.SQLConfigGeralDATA_INI_SEM_NET.AsDateTime) <= 7) then
    begin
    end
    else
    if (dm.SQLConfigGeralCFGECBLOQ.AsString = 'S') then
    begin
      Application.terminate;
      Exit;
    end;
  end;
  FormTelaLogin := TFormTelaLogin.Create(Application);
  FormTelaLogin.Caption := 'Bem Vindo ao PDV Restaurante' ;
  if FormTelaLogin.ShowModal = idOk then
  begin
    Application.CreateForm(TFormTelaItens, FormTelaItens);
    Application.Run ;
  end;

end.
