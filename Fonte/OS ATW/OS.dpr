program OS;

uses
  Forms,
  Windows,
  CadastroTEMPLATE in '..\..\Template\CadastroTEMPLATE.pas' {FormCadastroTEMPLATE},
  FormResources in '..\..\Template\FormResources.pas',
  VarSYS in '..\..\Template\VarSYS.pas',
  DataModuloTemplate in '..\..\Template\DataModuloTemplate.pas' {DMTemplate: TDataModule},
  UnitLibrary in '..\ArquivosComuns\UnitLibrary.pas',
  WaitWindow in '..\ArquivosComuns\WaitWindow.pas',
  WindowsLibrary in '..\ArquivosComuns\WindowsLibrary.pas',
  TelaImpressaoTermicaCodBar in '..\ArquivosComuns\TelaImpressaoTermicaCodBar.pas' {FormTelaImpressaoTermicaCodBar},
  PrincipalTemplate in '..\..\Template\PrincipalTemplate.pas' {FormPrincipalTemplate},
  Principal in 'Principal.pas' {FormPrincipal},
  CadastroOS in 'CadastroOS.pas' {FormCadastroOS},
  CadastroTransportadora in '..\ArquivosComuns\CadastroTransportadora.pas' {FormCadastroTransportadora},
  CadastroOSItem in 'CadastroOSItem.pas' {FormCadastroOSItem},
  TelaGeralTEMPLATE in '..\..\Template\TelaGeralTEMPLATE.pas' {FormTelaGeralTEMPLATE},
  TelaConsultaCliente in '..\ArquivosComuns\TelaConsultaCliente.pas',
  TelaConsultaTemplate in '..\..\Template\TelaConsultaTemplate.pas' {FormTelaConsultaTemplate},
  TELALOGIN in '..\..\Template\TelaLogin.pas' {FormTelaLogin},
  DataModulo in 'DataModulo.pas' {DM: TDataModule},
  CadastroOSItemProdutos in 'CadastroOSItemProdutos.pas' {FormCadastroOSItemProdutos},
  CadastroProdutoTabelaPreco in '..\ArquivosComuns\CadastroProdutoTabelaPreco.pas' {FormCadastroProdutoTabelaPreco},
  CadastroProdutoComposicao in '..\ArquivosComuns\CadastroProdutoComposicao.pas' {FormCadastroProdutoComposicao},
  CadastroProdutoFornecedor in '..\ArquivosComuns\CadastroProdutoFornecedor.pas' {FormCadastroProdutoFornecedor},
  CadastroProdutos in '..\ArquivosComuns\CadastroProdutos.pas' {FormCadastroProduto},
  CadastroVariacao in '..\ArquivosComuns\CadastroVariacao.pas' {FormCadastroVariacao},
  CadastroSubgrupo in '..\ArquivosComuns\CadastroSubgrupo.pas' {FormCadastroSubgrupo},
  CadastroGrade in '..\ArquivosComuns\CadastroGrade.pas' {FormCadastroGrade},
  CadastroGrupo in '..\ArquivosComuns\CadastroGrupo.pas' {FormCadastroGrupo},
  CadastroMarca in '..\ArquivosComuns\CadastroMarca.pas' {FormCadastroMarca},
  CadastroTamanho in '..\ArquivosComuns\CadastroTamanho.pas' {FormCadastroTamanho},
  CadastroCor in '..\ArquivosComuns\CadastroCor.pas' {FormCadastroCor},
  CadastroUnidade in '..\ArquivosComuns\CadastroUnidade.pas' {FormCadastroUnidade},
  CadastroICMS in '..\ArquivosComuns\CadastroICMS.pas' {FormCadastroICMS},
  CadastroClassificacaoFiscal in '..\ArquivosComuns\CadastroClassificacaoFiscal.pas' {FormCadastroClassificacaoFiscal},
  CadastroFornecedor in '..\ArquivosComuns\CadastroFornecedor.pas' {FormCadastroFornecedor},
  CadastroBanco in '..\ArquivosComuns\CadastroBanco.pas' {FormCadastroBanco},
  CadastroTipoFornecedor in '..\ArquivosComuns\CadastroTipoFornecedor.pas' {FormCadastroTipoFornecedor},
  CadastroTipoCusto in '..\ArquivosComuns\CadastroTipoCusto.pas' {FormCadastroTipoCusto},
  CadastroCep in '..\ArquivosComuns\CadastroCep.pas' {FormCadastroCep},
  TelaCriacaoGrade in '..\ArquivosComuns\TelaCriacaoGrade.pas' {FormTelaCriacaoGrade},
  TelaConsultaProduto in '..\ArquivosComuns\TelaConsultaProduto.pas' {FormTelaConsultaProduto},
  CadastroFuncionario in '..\UnitTransportadora\CadastroFuncionario.pas' {FormCadastroFuncionario},
  TelaEntregaOS in 'TelaEntregaOS.pas' {FormTelaEntregaOS},
  CadastroFuncionarioContaCorrente in '..\UnitTransportadora\CadastroFuncionarioContaCorrente.pas' {FormCadastroFuncionarioContaCorrente},
  CadastroOperacaoFuncionario in '..\UnitTransportadora\CadastroOperacaoFuncionario.pas' {FormCadastroOperacaoFuncionario},
  CadastroVeiculo in '..\UnitTransportadora\CadastroVeiculo.pas' {FormCadastroVeiculo};

{$R *.res}

begin
  Application.Initialize;
  VersaoSistema := '1.0' ;
  Retaguarda := true;
  Application.Title := 'Advanced Control OS';
  Application.CreateForm(TDM, DM);
  FormTelaLogin := TFormTelaLogin.Create(Application);
  FormTelaLogin.Caption := 'Bem Vindo ao Advanced Control OS' ;

  if FormTelaLogin.ShowModal <> idOk then
    exit ;

  Application.CreateForm(TFormPrincipal, FormPrincipal);
  FormPrincipal.RodapePrincipal.Panels[1].Text := DM.SQLUsuariosUSUAA60LOGIN.Value ;
  FormPrincipal.RodapePrincipal.Panels[2].Text := DM.SQLConfigGeralEmpresaPadraoCalcField.Value ;
  FormPrincipal.RodapePrincipal.Panels[3].Text := DM.SQLTerminalAtivoTERMA60DESCR.AsString;
  FormPrincipal.RodapePrincipal.Panels[4].Text := 'Versão ' + VersaoSistema ;

  Application.Run;
end.
