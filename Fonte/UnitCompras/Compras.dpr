program Compras;

uses
  VarSYS,
  Forms,
  Windows,
  SysUtils,
  Variants,
  DataModuloTemplate in '..\..\Template\DataModuloTemplate.pas' {DMTemplate: TDataModule},
  CadastroTEMPLATE in '..\..\Template\CadastroTEMPLATE.pas' {FormCadastroTemplate},
  PrincipalTemplate in '..\..\Template\PrincipalTemplate.pas' {FormPrincipalTemplate},
  FormResources in '..\..\Template\FormResources.pas',
  TelaGeralTEMPLATE in '..\..\Template\TelaGeralTEMPLATE.pas' {FormTelaGeralTEMPLATE},
  DataModulo in 'DataModulo.pas' {DM: TDataModule},
  TELALOGIN in 'TelaLogin.pas' {FormTelaLogin},
  CadastroProdutos in '..\ArquivosComuns\CadastroProdutos.pas' {FormCadastroProdutos},
  CadastroFornecedor in '..\ArquivosComuns\CadastroFornecedor.pas' {FormCadastroFornecedor},
  CadastroEmpresa in '..\Config\CadastroEmpresa.pas' {FormCadastroEmpresa},
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
  CadastroProfissional in '..\SISCON\CadastroProfissional.pas' {FormCadastroProfissional},
  CadastroProfissao in '..\ArquivosComuns\CadastroProfissao.pas' {FormCadastroProfissao},
  CadastroMotivoBloqueio in '..\ArquivosComuns\CadastroMotivoBloqueio.pas' {FormCadastroMotivoBloqueio},
  CadastroProdutoFornecedor in '..\ArquivosComuns\CadastroProdutoFornecedor.pas' {FormCadastroProdutoFornecedor},
  TelaLancamentoGrade in 'TelaLancamentoGrade.pas' {FormTelaLancamentoGrade},
  TelaCriacaoGrade in '..\ArquivosComuns\TelaCriacaoGrade.pas' {FormTelaCriacaoGrade},
  CadastroPlanoPagamento in '..\ArquivosComuns\CadastroPlanoPagamento.pas' {FormCadastroPlanoPagamento},
  CadastroPlanoPagamentoParcela in '..\ArquivosComuns\CadastroPlanoPagamentoParcela.pas' {FormCadastroPlanoPagamentoParcela},
  CadastroNotaCompra in 'CadastroNotaCompra.pas' {FormCadastroNotaCompra},
  CadastroNotaCompraItem in 'CadastroNotaCompraItem.pas' {FormCadastroNotaCompraItem},
  TelaLancamentoGradeNota in 'TelaLancamentoGradeNota.pas' {FormTelaLancamentoGradeNota},
  TelaImportacaoPedidoCompra in 'TelaImportacaoPedidoCompra.pas' {FormTelaImportacaoPedidoCompra},
  TelaEmissaoEtiquetasCodigoBarras in '..\ArquivosComuns\TelaEmissaoEtiquetasCodigoBarras.pas' {FormTelaEmissaoEtiquetasCodigoBarras},
  CadastroOperacoesEstoque in '..\Config\CadastroOperacoesEstoque.pas' {FormCadastroOperacoesEstoque},
  CadastroNotaCompraFinanceiro in 'CadastroNotaCompraFinanceiro.pas' {FormCadastroNotaCompraFinanceiro},
  CadastroMovimentosDiversosEstoqueItem in '..\ArquivosComuns\CadastroMovimentosDiversosEstoqueItem.pas' {FormCadastroMovimentosDiversosEstoqueItem},
  CadastroMovimentosDiversosEstoque in '..\ArquivosComuns\CadastroMovimentosDiversosEstoque.pas' {FormCadastroMovimentosDiversosEstoque},
  RelatorioTemplate in '..\..\Template\RelatorioTemplate.pas' {FormRelatorioTEMPLATE},
  RelatorioNotasCompra in 'RelatorioNotasCompra.pas' {FormRelatorioNotasCompra},
  CadastroTipoDocumento in '..\UnitFinanceiro\CadastroTipoDocumento.pas' {FormCadastroTipoDocumento},
  CadastroPortador in '..\UnitFinanceiro\CadastroPortador.pas' {FormCadastroPortador},
  TelaGerarSaldoProduto in 'TelaGerarSaldoProduto.pas' {FormTelaGerarSaldoProduto},
  CadastroEtiquetaCodigoBarras in '..\Config\CadastroEtiquetaCodigoBarras.pas' {FormCadastroEtiquetaCodigoBarras},
  CadastroClasse in '..\ArquivosComuns\CadastroClasse.pas' {FormCadastroClasse},
  CadastroClasseUsuario in '..\ArquivosComuns\CadastroClasseUsuario.pas' {FormCadastroClasseUsuario},
  CadastroUsuario in '..\ArquivosComuns\CadastroUsuario.pas' {FormCadastroUsuario},
  RelatorioVendasComprasPorGrupo in '..\ArquivosComuns\RelatorioVendasComprasPorGrupo.pas' {FormRelatorioVendasComprasPorGrupo},
  TelaDadosVersaoCompras in 'TelaDadosVersaoCompras.pas' {FormTelaDadosVersaoCompras},
  CadastroBalanca in '..\Config\CadastroBalanca.pas' {FormCadastroBalanca},
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
  TelaConsultaPlanoContasDebitos in '..\ArquivosComuns\TelaConsultaPlanoContasDebitos.pas' {FormTelaConsultaPlanoContasDebitos},
  WindowsLibrary in '..\ArquivosComuns\WindowsLibrary.pas',
  CadastroLote in '..\UnitLoja\CadastroLote.pas' {FormCadastroLote},
  CadastroSerie in '..\Config\CadastroSerie.pas' {FormCadastroSerie},
  CadastroCodigoFiscalOperacao in '..\Config\CadastroCodigoFiscalOperacao.pas' {FormCadastroCodigoFiscalOperacao},
  CadastroConfigBalancaLayOutArq in '..\Config\CadastroConfigBalancaLayOutArq.pas' {FormCadastroConfigBalancaLayOutArq},
  TelaImportaItens in '..\ArquivosComuns\TelaImportaItens.pas' {FormTelaImportaItens},
  TelaEmissaoEtiquetaGrade in '..\UnitLoja\TelaEmissaoEtiquetaGrade.pas' {FormTelaEmissaoEtiquetaGrade},
  WaitWindow in '..\ArquivosComuns\WaitWindow.pas',
  TelaConsultaEmpresa in '..\ArquivosComuns\TelaConsultaEmpresa.pas' {FormTelaConsultaEmpresa},
  TelaConsultaOperacaoEstoque in '..\ArquivosComuns\TelaConsultaOperacaoEstoque.pas' {FormTelaConsultaOperacaoEstoque},
  SearchLibrary in '..\ArquivosComuns\SearchLibrary.pas',
  TelaLancamentoGradeMovto in '..\ArquivosComuns\TelaLancamentoGradeMovto.pas' {FormTelaLancamentoGradeMovto},
  TelaConsultaCliente in '..\ArquivosComuns\TelaConsultaCliente.pas' {FormTelaConsultaCliente},
  TelaConsultaPlanoContas in '..\ArquivosComuns\TelaConsultaPlanoContas.pas' {FormTelaConsultaPlanoContas},
  TelaRetornoPesquisaProduto in '..\ArquivosComuns\TelaRetornoPesquisaProduto.pas' {FormTelaRetornoPesquisaProduto},
  TelaRecalculaCustoMedio in 'TelaRecalculaCustoMedio.pas' {FormTelaRecalculaCustoMedio},
  RelatorioGiroEstoque in 'RelatorioGiroEstoque.pas' {FormRelatorioGiroEstoque},
  CadastroEmpresaCusto in '..\Config\CadastroEmpresaCusto.pas' {FormCadastroEmpresaCusto},
  TelaCalculaCustoMensal in 'TelaCalculaCustoMensal.pas' {FormTelaCalculaCustoMensal},
  TelaConfigControle in '..\ArquivosComuns\TelaConfigControle.pas' {FormTelaConfigControle},
  TelaGeralModalTemplate in '..\..\Template\TelaGeralModalTemplate.pas' {FormTelaGeralModalTemplate},
  TelaProdutoNumeroSerie in '..\ArquivosComuns\TelaProdutoNumeroSerie.pas' {FormTelaGeralModalCadastroProdutoNumeroSerie},
  CadastroProdutoSerie in '..\UnitLoja\CadastroProdutoSerie.pas' {FormCadastroProdutoSerie},
  CadastroDecreto in '..\Config\CadastroDecreto.pas' {FormCadastroDecreto},
  CadastroColecao in '..\ArquivosComuns\CadastroColecao.pas' {FormCadastroColecao},
  CadastroHistoricoPadrao in '..\ArquivosComuns\CadastroHistoricoPadrao.pas' {FormCadastroHistoricoPadrao},
  TelaReajustePreco in 'TelaReajustePreco.pas' {FormTelaReajustePreco},
  TelaAutenticaUsuario in '..\UnitCheckout\TelaAutenticaUsuario.pas' {FormTelaAutenticaUsuario};

//  TelaLancamentoGradeMovto in '..\ArquivosComuns\TelaLancamentoGradeMovto.pas' {FormTelaLancamentoGradeMovto},

{$R *.RES}

{begin
  Application.Initialize ;
  Retaguarda := true ;
  Application.Title := 'Advanced Control Compras';
  VersaoSistema := '1.35a' ;
  Application.CreateForm(TDM, DM);
  FormTelaLogin := TFormTelaLogin.Create(Application) ;
  if FormTelaLogin.ShowModal <> idOk then
    exit ;

  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run ;}
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
    Informa('O Total Control Compras já está sendo executado.') ;
    Halt ;
  end ;

  Application.Initialize ;
  VersaoSistema := '3.0' ;
  Retaguarda := true;
  Application.Title := 'Advanced Control Compras';
  Application.CreateForm(TDM, DM);
  FormTelaLogin := TFormTelaLogin.Create(Application);
  FormTelaLogin.Caption := 'Bem Vindo ao Total Control Compras ' ;

  if FormTelaLogin.ShowModal <> idOk then
    exit ;

  Application.CreateForm(TFormPrincipal, FormPrincipal);
  FormPrincipal.RodapePrincipal.Panels[0].Text := 'Empresa: ' +DM.SQLConfigGeralEmpresaPadraoCalcField.Value;
  FormPrincipal.RodapePrincipal.Panels[1].Text := 'Terminal: '+Dm.SQLTerminalAtivoTERMA60DESCR.AsString;
  FormPrincipal.RodapePrincipal.Panels[2].Text := 'Usuário: ' +DM.SQLUsuariosUSUAA60LOGIN.Value;
  Application.Run ;

end.
