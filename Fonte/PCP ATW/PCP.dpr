program PCP;

uses
  Forms,
  Windows,
  AssistenteListagemTEMPLATE in '..\..\Template\AssistenteListagemTEMPLATE.pas' {FormAssistenteListagem},
  CadastroTEMPLATE in '..\..\Template\CadastroTEMPLATE.pas' {FormCadastroTEMPLATE},
  ComCtrls in '..\..\Template\ComCtrls.pas',
  DataModuloTemplate in '..\..\Template\DataModuloTemplate.pas' {DMTemplate: TDataModule},
  FormResources in '..\..\Template\FormResources.pas',
  PrincipalTemplate in '..\..\Template\PrincipalTemplate.pas' {FormPrincipalTemplate},
  RelatorioTemplate in '..\..\Template\RelatorioTemplate.pas' {FormRelatorioTEMPLATE},
  TelaConsultaTemplate in '..\..\Template\TelaConsultaTemplate.pas' {FormTelaConsultaTemplate},
  TelaGeralTEMPLATE in '..\..\Template\TelaGeralTEMPLATE.pas' {FormTelaGeralTEMPLATE},
  TelaTemplate in '..\..\Template\TelaTemplate.pas' {FormTelaTemplate},
  VarSYS in '..\..\Template\VarSYS.pas',
  DataModulo in 'DataModulo.pas' {DM: TDataModule},
  UnitLibrary in '..\ArquivosComuns\UnitLibrary.pas',
  WaitWindow in '..\ArquivosComuns\WaitWindow.pas',
  TelaImpressaoTermicaCodBar in '..\ArquivosComuns\TelaImpressaoTermicaCodBar.pas' {FormTelaImpressaoTermicaCodBar},
  WindowsLibrary in '..\ArquivosComuns\WindowsLibrary.pas',
  Principal in 'Principal.pas' {FormPrincipal},
  CadastroProdutoParaProducao in 'CadastroProdutoParaProducao.pas' {FormCadastroProdutoParaProducao},
  CadastroProdutoProducaoInsumo in 'CadastroProdutoProducaoInsumo.pas' {FormCadastroProdutoProducaoInsumo},
  CadastroFornecedor in 'CadastroFornecedor.pas' {FormCadastroFornecedor},
  CadastroBanco in '..\ArquivosComuns\CadastroBanco.pas' {FormCadastroBanco},
  CadastroTipoFornecedor in '..\ArquivosComuns\CadastroTipoFornecedor.pas' {FormCadastroTipoFornecedor},
  CadastroTipoCusto in '..\ArquivosComuns\CadastroTipoCusto.pas' {FormCadastroTipoCusto},
  CadastroCep in '..\ArquivosComuns\CadastroCep.pas' {FormCadastroCep},
  CadastroUnidade in '..\ArquivosComuns\CadastroUnidade.pas' {FormCadastroUnidade},
  CadastroMarca in '..\ArquivosComuns\CadastroMarca.pas' {FormCadastroMarca},
  CadastroICMS in '..\ArquivosComuns\CadastroICMS.pas' {FormCadastroICMS},
  CadastroIcmsUf in '..\ArquivosComuns\CadastroIcmsUf.pas' {FormCadastroIcmsUF},
  CadastroProdutoTabelaPreco in '..\ArquivosComuns\CadastroProdutoTabelaPreco.pas' {FormCadastroProdutoTabelaPreco},
  CadastroProdutoComposicao in '..\ArquivosComuns\CadastroProdutoComposicao.pas' {FormCadastroProdutoComposicao},
  CadastroProdutoFornecedor in '..\ArquivosComuns\CadastroProdutoFornecedor.pas' {FormCadastroProdutoFornecedor},
  CadastroProdutos in '..\ArquivosComuns\CadastroProdutos.pas' {FormCadastroProduto},
  CadastroVariacao in '..\ArquivosComuns\CadastroVariacao.pas' {FormCadastroVariacao},
  CadastroSubgrupo in '..\ArquivosComuns\CadastroSubgrupo.pas' {FormCadastroSubgrupo},
  CadastroGrade in '..\ArquivosComuns\CadastroGrade.pas' {FormCadastroGrade},
  CadastroGrupo in '..\ArquivosComuns\CadastroGrupo.pas' {FormCadastroGrupo},
  CadastroTamanho in '..\ArquivosComuns\CadastroTamanho.pas' {FormCadastroTamanho},
  TelaCriacaoGrade in '..\ArquivosComuns\TelaCriacaoGrade.pas' {FormTelaCriacaoGrade},
  CadastroClassificacaoFiscal in '..\ArquivosComuns\CadastroClassificacaoFiscal.pas' {FormCadastroClassificacaoFiscal},
  CadastroCor in '..\ArquivosComuns\CadastroCor.pas' {FormCadastroCor},
  TelaConsultaProduto in '..\ArquivosComuns\TelaConsultaProduto.pas' {FormTelaConsultaProduto},
  CadastroInsumo in 'CadastroInsumo.pas' {FormCadastroInsumo},
  CadastroInsumosFilhos in 'CadastroInsumosFilhos.pas' {FormCadastroInsumosFilhos},
  TelaLoginTEMPLATE in '..\..\Template\TelaLoginTEMPLATE.pas' {FormTelaLoginTEMPLATE},
  TelaLogin in 'TelaLogin.pas' {FormTelaLogin},
  TelaCentroCusto in 'TelaCentroCusto.pas' {FormTelaCentroCusto},
  CadastroProducaoAtividade in 'CadastroProducaoAtividade.pas' {FormCadastroProducaoAtividade},
  CadastroAtividadesCCusto in 'CadastroAtividadesCCusto.pas' {FormCadastroAtividadesCCusto},
  CadastroVeiculo in '..\ArquivosComuns\CadastroVeiculo.pas' {FormCadastroVeiculo},
  CadastroAtividadeFuncionario in 'CadastroAtividadeFuncionario.pas' {FormCadastroAtividadeFuncionario},
  CadastroProducaoRecursos in 'CadastroProducaoRecursos.pas' {FormCadastroProducaoRecursos},
  CadastroProducaoAtivRecursos in 'CadastroProducaoAtivRecursos.pas' {FormCadastroProducaoAtivRecursos},
  CadastroProducaoEquipamento in 'CadastroProducaoEquipamento.pas' {FormCadastroProducaoEquipamento},
  CadastroProducaoAtivEquipamentos in 'CadastroProducaoAtivEquipamentos.pas' {FormCadastroProducaoAtivEquipamentos},
  CadastroProducaoFases in 'CadastroProducaoFases.pas' {FormCadastroProducaoFases},
  CadastroProducaoFasesAtividade in 'CadastroProducaoFasesAtividade.pas' {FormCadastroProducaoFasesAtividade},
  CadastroProducaoLote in 'CadastroProducaoLote.pas' {FormCadastroProducaoLote},
  CadastroProducaoProdutoFase in 'CadastroProducaoProdutoFase.pas' {FormCadastroProducaoProdutoFase},
  CadastroFuncionario in '..\ArquivosComuns\CadastroFuncionario.pas' {FormCadastroFuncionario},
  CadastroFuncionarioContaCorrente in '..\ArquivosComuns\CadastroFuncionarioContaCorrente.pas' {FormCadastroFuncionarioContaCorrente},
  CadastroOperacaoFuncionario in '..\ArquivosComuns\CadastroOperacaoFuncionario.pas' {FormCadastroOperacaoFuncionario},
  CadastroOrdemProducao in 'CadastroOrdemProducao.pas' {FormCadastroOrdemProducao},
  CadastroOrdemProducaoItem in 'CadastroOrdemProducaoItem.pas' {FormCadastroOrdemProducaoItem},
  RelatorioComposicaoPedido in 'RelatorioComposicaoPedido.pas' {FormRelatorioComposicaoPedido},
  TelaImportaItens in '..\ArquivosComuns\TelaImportaItens.pas' {FormTelaImportaItens},
  TelaConsultaEmpresa in '..\ArquivosComuns\TelaConsultaEmpresa.pas' {FormTelaConsultaEmpresa},
  TelaConsultaOperacaoEstoque in '..\ArquivosComuns\TelaConsultaOperacaoEstoque.pas' {FormTelaConsultaOperacaoEstoque},
  CadastroMovimentosDiversosEstoquePCP in 'CadastroMovimentosDiversosEstoquePCP.pas' {FormCadastroMovimentosDiversosEstoquePCP},
  CadastroMovimentosDiversosEstoqueItemPCP in 'CadastroMovimentosDiversosEstoqueItemPCP.pas' {FormCadastroMovimentosDiversosEstoqueItemPCP},
  CadastroOrdemProducaoPedidos in 'CadastroOrdemProducaoPedidos.pas' {FormCadastroOrdemProducaoPedidos},
  RelatorioProducao in 'RelatorioProducao.pas' {FormRelatorioProducao},
  TelaConfigControle in '..\ArquivosComuns\TelaConfigControle.pas' {FormTelaConfigControle},
  TelaGerenciamentoAcesso in '..\..\Template\TelaGerenciamentoAcesso.pas' {FormTelaGerenciamentoAcesso},
  TelaPedidosVenda in 'TelaPedidosVenda.pas' {FormTelaPedidosVenda},
  SysUtils,
  TelaGerarOrdemProducao in 'TelaGerarOrdemProducao.pas' {FormTelaGerarOrdemProducao},
  TelaGerarOrdemCompra in 'TelaGerarOrdemCompra.pas' {FormTelaGerarOrdemCompra},
  CadastroProdutoSerie in '..\UnitLoja\CadastroProdutoSerie.pas' {FormCadastroProdutoSerie};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Controle de Produção';
  Application.CreateForm(TDM, DM);
  FormTelaLogin := TFormTelaLogin.Create(Application);
  if FormTelaLogin.ShowModal = idOK then
    begin
      Application.CreateForm(TFormPrincipal, FormPrincipal);
      FormPrincipal.RodapePrincipal.Panels[1].Text := DM.SQLUsuariosUSUAA60LOGIN.Value;
      FormPrincipal.RodapePrincipal.Panels[2].Text := Dm.SQLTerminalAtivoTERMA60DESCR.AsString;
      FormPrincipal.RodapePrincipal.Panels[3].Text := IntToStr(EmpresaCorrente) + ' - ' + DM.SQLConfigGeralEmpresaPadraoCalcField.Value;
    end
  else
    Application.Terminate;
  Application.Run;
end.
