program Prospect;

uses
  Forms,
  Windows,
  CadastroTEMPLATE in '..\..\Template\CadastroTEMPLATE.pas' {FormCadastroTEMPLATE},
  DataModuloTemplate in '..\..\Template\DataModuloTemplate.pas' {DMTemplate: TDataModule},
  FormResources in '..\..\Template\FormResources.pas',
  PrincipalTemplate in '..\..\Template\PrincipalTemplate.pas' {FormPrincipalTemplate},
  TelaGeralTEMPLATE in '..\..\Template\TelaGeralTEMPLATE.pas' {FormTelaGeralTEMPLATE},
  TELALOGIN in '..\..\Template\TelaLogin.pas' {FormTelaLogin},
  VarSYS in '..\..\Template\VarSYS.pas',
  Principal in 'Principal.pas' {FormPrincipal},
  DataModulo in 'DataModulo.pas' {DM: TDataModule},
  WindowsLibrary in '..\ArquivosComuns\WindowsLibrary.pas',
  UnitLibrary in '..\ArquivosComuns\UnitLibrary.pas',
  WaitWindow in '..\ArquivosComuns\WaitWindow.pas',
  TelaImpressaoTermicaCodBar in '..\ArquivosComuns\TelaImpressaoTermicaCodBar.pas' {FormTelaImpressaoTermicaCodBar},
  CadastroClientePropect in 'CadastroClientePropect.pas' {FormCadastroClientePropect},
  CadastroClienteContatos in 'CadastroClienteContatos.pas' {FormCadastroClienteContatos},
  CadastroHistorico in 'CadastroHistorico.pas' {FormCadastroHistorico},
  CadastroFormasDeEnvio in 'CadastroFormasDeEnvio.pas' {FormCadastroFormasDeEnvio},
  CadastroProdutosProspect in 'CadastroProdutosProspect.pas' {FormCadastroProdutosProspect},
  CadastroVendedor in '..\ArquivosComuns\CadastroVendedor.pas' {FormCadastroVendedor},
  CadastroBanco in '..\ArquivosComuns\CadastroBanco.pas' {FormCadastroBanco},
  CadastroPlanoRecebimentoParcela in '..\Config\CadastroPlanoRecebimentoParcela.pas' {FormCadastroPlanoRecebimentoParcela},
  CadastroPlanoRecebimento in '..\Config\CadastroPlanoRecebimento.pas' {FormCadastroPlanoRecebimento},
  CadastroNegocioComposto in 'CadastroNegocioComposto.pas' {FormCadastroNegocioComposto},
  TelaConsultaHistorico in 'TelaConsultaHistorico.pas' {FormTelaConsultaHistorico},
  CadastroStatus in 'CadastroStatus.pas' {FormCadastroStatus},
  RelatorioTemplate in '..\..\Template\RelatorioTemplate.pas' {FormRelatorioTEMPLATE},
  RelatorioHistorico in 'RelatorioHistorico.pas' {FormRelatorioHistorico},
  TelaConsultaTemplate in '..\..\Template\TelaConsultaTemplate.pas' {FormTelaConsultaTemplate},
  TelaConsultaCliente in '..\CallCenter\TelaConsultaCliente.pas' {FormTelaConsultaCliente},
  TelaConsultaProduto in '..\ArquivosComuns\TelaConsultaProduto.pas' {FormTelaConsultaProduto},
  CallCenterLibrary in '..\CallCenter\CallCenterLibrary.pas',
  TelaFechamentoNegocio in 'TelaFechamentoNegocio.pas' {FormTelaFechamentoNegocio},
  CadastroKMDIA in 'CadastroKMDIA.pas' {FormCadastroKMDIA},
  CadastroFuncionario in '..\ArquivosComuns\CadastroFuncionario.pas' {FormCadastroFuncionario},
  RelatorioKMDia in 'RelatorioKMDia.pas' {FormRelatorioKMDia},
  TelaAutenticaUsuario in '..\UnitCheckout\TelaAutenticaUsuario.pas' {FormTelaAutenticaUsuario},
  CadastroTipoTarefa in 'CadastroTipoTarefa.pas' {FormCadastroTipoTarefa};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Advanced Control Prospect';
  Application.CreateForm(TDM, DM);
  FormTelaLogin := TFormTelaLogin.Create(Application);
  if FormTelaLogin.ShowModal = IDOK then
    begin
      Application.CreateForm(TFormPrincipal, FormPrincipal);
      FormPrincipal.RodapePrincipal.Panels[1].Text := DM.SQLUsuariosUSUAA60LOGIN.Value;
      FormPrincipal.RodapePrincipal.Panels[2].Text := Dm.SQLTerminalAtivoTERMA60DESCR.AsString;
      FormPrincipal.RodapePrincipal.Panels[3].Text := DM.SQLConfigGeralEmpresaPadraoCalcField.Value;
      Application.Run;
    end
  else
    Application.Terminate;
end.
