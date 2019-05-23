program UnitCompras;

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
  TELALOGIN in 'TelaLogin.pas' {FormTelaLogin},
  CadastroProdutos in '..\ArquivosComuns\CadastroProdutos.pas' {FormCadastroProdutos},
  CadastroFornecedor in '..\ArquivosComuns\CadastroFornecedor.pas' {FormCadastroFornecedor},
  CadastroEmpresa in '..\ArquivosComuns\CadastroEmpresa.pas' {FormCadastroEmpresa},
  Principal in 'Principal.pas' {FormPrincipal},
  UnitLibrary in '..\ArquivosComuns\UnitLibrary.pas',
  CadastroCor in '..\ArquivosComuns\CadastroCor.pas' {FormCadastroCor},
  CadastroGrade in '..\ArquivosComuns\CadastroGrade.pas' {FormCadastroGrade},
  CadastroGrupo in '..\ArquivosComuns\CadastroGrupo.pas' {FormCadastroGrupo},
  CadastroMarca in '..\ArquivosComuns\CadastroMarca.pas' {FormCadastroMarca},
  CadastroIcmsUf in '..\ArquivosComuns\CadastroIcmsUf.pas' {FormCadastroIcmsUF},
  CadastroICMS in '..\ArquivosComuns\CadastroICMS.pas' {FormCadastroICMS},
  CadastroSubgrupo in '..\ArquivosComuns\CadastroSubgrupo.pas' {FormCadastroSubgrupo},
  CadastroVariacao in '..\ArquivosComuns\CadastroVariacao.pas' {FormCadastroVariacao},
  CadastroTamanho in '..\ArquivosComuns\CadastroTamanho.pas' {FormCadastroTamanho},
  CadastroUnidade in '..\ArquivosComuns\CadastroUnidade.pas' {FormCadastroUnidade},
  CadastroClassificacaoFiscal in '..\ArquivosComuns\CadastroClassificacaoFiscal.pas' {FormCadastroClassificacaoFiscal},
  CadastroBanco in '..\ArquivosComuns\CadastroBanco.pas' {FormCadastroBanco},
  CadastroPedidoCompraItem in 'CadastroPedidoCompraItem.pas' {FormCadastroPedidoCompraItem},
  CadastroPedidoCompra in 'CadastroPedidoCompra.pas' {FormCadastroPedidoCompra},
  CadastroTipoFornecedor in '..\ArquivosComuns\CadastroTipoFornecedor.pas' {FormCadastroTipoFornecedor},
  CadastroTipoCusto in '..\ArquivosComuns\CadastroTipoCusto.pas' {FormCadastroTipoCusto},
  CadastroTransportadora in '..\ArquivosComuns\CadastroTransportadora.pas' {FormCadastroTransportadora},
  CadastroVendedor in '..\ArquivosComuns\CadastroVendedor.pas' {FormCadastroVendedor},
  CadastroProfissao in '..\ArquivosComuns\CadastroProfissao.pas' {FormCadastroProfissao},
  CadastroMotivoBloqueio in '..\ArquivosComuns\CadastroMotivoBloqueio.pas' {FormCadastroMotivoBloqueio},
  CadastroProdutoFornecedor in '..\ArquivosComuns\CadastroProdutoFornecedor.pas' {FormCadastroProdutoFornecedor},
  TelaLancamentoGrade in 'TelaLancamentoGrade.pas' {FormTelaLancamentoGrade},
  CadastroDecreto in '..\ArquivosComuns\CadastroDecreto.pas' {FormCadastroDecreto},
  TelaCriacaoGrade in '..\ArquivosComuns\TelaCriacaoGrade.pas' {FormTelaCriacaoGrade},
  CadastroPlanoPagamento in '..\ArquivosComuns\CadastroPlanoPagamento.pas' {FormCadastroPlanoPagamento},
  CadastroPlanoPagamentoParcela in '..\ArquivosComuns\CadastroPlanoPagamentoParcela.pas' {FormCadastroPlanoPagamentoParcela},
  CadastroNotaCompra in 'CadastroNotaCompra.pas' {FormCadastroNotaCompra},
  CadastroNotaCompraItem in 'CadastroNotaCompraItem.pas' {FormCadastroNotaCompraItem},
  TelaLancamentoGradeNota in 'TelaLancamentoGradeNota.pas' {FormTelaLancamentoGradeNota},
  TelaImportacaoPedidoCompra in 'TelaImportacaoPedidoCompra.pas' {FormTelaImportacaoPedidoCompra},
  TelaConfiguracaoCompra in 'TelaConfiguracaoCompra.pas' {FormTelaConfiguracaoCompra},
  TelaEmissaoEtiquetasCodigoBarras in '..\ArquivosComuns\TelaEmissaoEtiquetasCodigoBarras.pas' {FormTelaEmissaoEtiquetasCodigoBarras},
  CadastroOperacoesEstoque in '..\ArquivosComuns\CadastroOperacoesEstoque.pas' {FormCadastroOperacoesEstoque},
  CadastroNotaCompraFinanceiro in 'CadastroNotaCompraFinanceiro.pas' {FormCadastroNotaCompraFinanceiro},
  CadastroMovimentosDiversosEstoqueItem in '..\ArquivosComuns\CadastroMovimentosDiversosEstoqueItem.pas' {FormCadastroMovimentosDiversosEstoqueItem},
  CadastroMovimentosDiversosEstoque in '..\ArquivosComuns\CadastroMovimentosDiversosEstoque.pas' {FormCadastroMovimentosDiversosEstoque},
  RelatorioTemplate in '..\..\Template\RelatorioTemplate.pas' {FormRelatorioTEMPLATE},
  RelatorioNotasCompra in 'RelatorioNotasCompra.pas' {FormRelatorioNotasCompra},
  CadastroTipoDocumento in '..\UnitFinanceiro\CadastroTipoDocumento.pas' {FormCadastroTipoDocumento},
  CadastroPortador in '..\UnitFinanceiro\CadastroPortador.pas' {FormCadastroPortador},
  TelaGerarSaldoProduto in 'TelaGerarSaldoProduto.pas' {FormTelaGerarSaldoProduto},
  CadastroEtiquetaCodigoBarras in '..\ArquivosComuns\CadastroEtiquetaCodigoBarras.pas' {FormCadastroEtiquetaCodigoBarras},
  CadastroClasse in '..\ArquivosComuns\CadastroClasse.pas' {FormCadastroClasse},
  CadastroClasseUsuario in '..\ArquivosComuns\CadastroClasseUsuario.pas' {FormCadastroClasseUsuario},
  CadastroUsuario in '..\ArquivosComuns\CadastroUsuario.pas' {FormCadastroUsuario},
  RelatorioVendasComprasPorGrupo in '..\ArquivosComuns\RelatorioVendasComprasPorGrupo.pas' {FormRelatorioVendasComprasPorGrupo},
  TelaDadosVersaoCompras in 'TelaDadosVersaoCompras.pas' {FormTelaDadosVersaoCompras},
  CadastroBalanca in 'CadastroBalanca.pas' {FormCadastroBalanca},
  TelaConsultaTemplate in '..\..\Template\TelaConsultaTemplate.pas' {FormTelaConsultaTemplate},
  TelaConsultaProduto in '..\ArquivosComuns\TelaConsultaProduto.pas' {FormTelaConsultaProduto},
  TelaConsultaNotaFiscal in '..\ArquivosComuns\TelaConsultaNotaFiscal.pas' {FormTelaConsultaNotaFiscal},
  TelaConsultaPedidoCompra in '..\ArquivosComuns\TelaConsultaPedidoCompra.pas' {FormTelaConsultaPedidoCompra},
  TelaConsultaPedidoVenda in '..\ArquivosComuns\TelaConsultaPedidoVenda.pas' {FormTelaConsultaPedidoVenda},
  TelaConsultaNotaCompra in '..\ArquivosComuns\TelaConsultaNotaCompra.pas' {FormTelaConsultaNotaCompra},
  TelaConsultaTabelaPreco in '..\ArquivosComuns\TelaConsultaTabelaPreco.pas' {FormTelaConsultaTabelaPreco},
  CadastroTabelaPreco in 'CadastroTabelaPreco.pas' {FormCadastroTabelaPreco},
  CadastroTabelaPrecoProduto in 'CadastroTabelaPrecoProduto.pas' {FormCadastroTabelaPrecoProduto},
  CadastroProdutoTabelaPreco in '..\ArquivosComuns\CadastroProdutoTabelaPreco.pas' {FormCadastroProdutoTabelaPreco},
  TelaManutencaoTabelaPreco in 'TelaManutencaoTabelaPreco.pas' {FormTelaManutencaoTabelaPreco},
  CadastroProdutoComposicao in '..\ArquivosComuns\CadastroProdutoComposicao.pas' {FormCadastroProdutoComposicao},
  CadastroPedidoCompraFinanceiro in 'CadastroPedidoCompraFinanceiro.pas' {FormCadastroPedidoCompraFinanceiro},
  CadastroCep in '..\ArquivosComuns\CadastroCep.pas' {FormCadastroCep},
  TelaImpressaoTermicaCodBar in '..\ArquivosComuns\TelaImpressaoTermicaCodBar.pas' {FormTelaImpressaoTermicaCodBar},
  TelaConsultaPlanoContasDebitos in '..\ArquivosComuns\TelaConsultaPlanoContasDebitos.pas' {FormTelaConsultaPlanoContasDebitos};

//  TelaLancamentoGradeMovto in '..\ArquivosComuns\TelaLancamentoGradeMovto.pas' {FormTelaLancamentoGradeMovto},
//  TelaReajustePreco in 'TelaReajustePreco.pas' {FormTelaReajustePreco};

{$R *.RES}

begin
  Application.Initialize ;
  Retaguarda := true ;
  Application.Title := 'Gestão Compras';
  VersaoSistema := '1.35a' ;
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
