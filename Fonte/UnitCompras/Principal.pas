unit Principal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PrincipalTemplate, Menus, ExtCtrls, jpeg, ComCtrls, ToolWin, FormResources,
  VarSys, StdCtrls, DB, DBTables, RxQuery, EWall, ImgList;

type
  TFormPrincipal = class(TFormPrincipalTemplate)
    COMPMNArquivos: TMenuItem;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    COMPMnArquivosProdutos: TMenuItem;
    COMPMnArquivosProdutosCadastro: TMenuItem;
    COMPMnArquivosProdutosGruposSubgruposVariacoes: TMenuItem;
    COMPMnArquivosProdutosCores: TMenuItem;
    COMPMnArquivosProdutosGrades: TMenuItem;
    COMPMnArquivosProdutosMarcas: TMenuItem;
    COMPMnArquivosProdutosIcms: TMenuItem;
    COMPMnArquivosProdutosIcmsporUF: TMenuItem;
    COMPMnArquivosProdutosClassificacoesFiscais: TMenuItem;
    COMPMnArquivosFornecedores: TMenuItem;
    COMPMnArquivosTransportadoras: TMenuItem;
    COMPMnSairdoSistema: TMenuItem;
    COMPMnPedidosPedidoCompra: TMenuItem;
    N2: TMenuItem;
    COMPMnArquivosProdutosUnidades: TMenuItem;
    COMPMnArquivosProdutosDecretos: TMenuItem;
    COMPMnNotasNotaCompra: TMenuItem;
    COMPMnArquivosPlanoPagamento: TMenuItem;
    COMPMNPedidos: TMenuItem;
    COMPMNNotas: TMenuItem;
    COMPMNUtilitarios: TMenuItem;
    COMPMnUtilitariosEmissaoEtiquetasCodigoBarras: TMenuItem;
    COMPMnArquivosOperacoesdeEstoque: TMenuItem;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    COMPMnEstoqueMovimentoDiversos: TMenuItem;
    COMPMNRelatorios: TMenuItem;
    COMPMnRelatoriosNotasCompra: TMenuItem;
    ToolButton5: TToolButton;
    COMPMnUtilitariosEspeciais: TMenuItem;
    COMPMnUtilitariosEspeciaisGerarRegistroSaldo: TMenuItem;
    N4: TMenuItem;
    COMPMnUtilitariosControledeAcesso: TMenuItem;
    MnRelatoriosVendasComprasPorGrupo: TMenuItem;
    N5: TMenuItem;
    DadosVerso1: TMenuItem;
    COMPMnArquivosProdutosTabelaPreco: TMenuItem;
    ReajustedePreos1: TMenuItem;
    COMPMnTipodeDocumento: TMenuItem;
    COMPMnPortadores: TMenuItem;
    Estoque1: TMenuItem;
    RecalcularCustoMdio1: TMenuItem;
    MnCOMRelGirodeEstoque: TMenuItem;
    MnCOMUtilCalculaCustoMensal: TMenuItem;
    N1: TMenuItem;
    MnCOMUTILProdutos: TMenuItem;
    MnColecao: TMenuItem;
    ToolButton7: TToolButton;
    procedure COMPMnArquivosProdutosCoresClick(Sender: TObject);
    procedure COMPMnArquivosProdutosIcmsClick(Sender: TObject);
    procedure COMPMnArquivosProdutosGradesClick(Sender: TObject);
    procedure COMPMnArquivosProdutosGruposSubgruposVariacoesClick(Sender: TObject);
    procedure COMPMnArquivosProdutosMarcasClick(Sender: TObject);
    procedure COMPMnArquivosProdutosIcmsporUFClick(Sender: TObject);
    procedure COMPMnArquivosProdutosClassificacoesFiscaisClick(Sender: TObject);
    procedure COMPMnArquivosFornecedoresClick(Sender: TObject);
    procedure COMPMnArquivosProdutosCadastroClick(Sender: TObject);
    procedure COMPMnArquivosTransportadorasClick(Sender: TObject);
    procedure COMPMnPedidosPedidoCompraClick(Sender: TObject);
    procedure COMPMnArquivosProdutosUnidadesClick(Sender: TObject);
    procedure COMPMnArquivosPlanoPagamentoClick(Sender: TObject);
    procedure COMPMnNotasNotaCompraClick(Sender: TObject);
    procedure COMPMnArquivosOperacoesdeEstoqueClick(Sender: TObject);
    procedure COMPMnUtilitariosEmissaoEtiquetasCodigoBarrasClick(Sender: TObject);
    procedure COMPMnEstoqueMovimentoDiversosClick(Sender: TObject);
    procedure COMPMnRelatoriosNotasCompraClick(Sender: TObject);
    procedure COMPMnUtilitariosEspeciaisGerarRegistroSaldoClick(
      Sender: TObject);
    procedure COMPMnArquivosEtiquetasCodigoBarrasClick(Sender: TObject);
    procedure COMPMnUtilitariosControledeAcessoClick(Sender: TObject);
    procedure MnRelatoriosVendasComprasPorGrupoClick(Sender: TObject);
    procedure DadosVerso1Click(Sender: TObject);
    procedure COMPMnArquivosProdutosTabelaPrecoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ReajustedePreos1Click(Sender: TObject);
    procedure COMPMnSairdoSistemaClick(Sender: TObject);
    procedure COMPMnTipodeDocumentoClick(Sender: TObject);
    procedure COMPMnPortadoresClick(Sender: TObject);
    procedure COMMnEmissaodeEtiquetasClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure RecalcularCustoMdio1Click(Sender: TObject);
    procedure MnCOMRelGirodeEstoqueClick(Sender: TObject);
    procedure MnCOMUtilCalculaCustoMensalClick(Sender: TObject);
    procedure COMPMnArquivosProdutosDecretosClick(Sender: TObject);
    procedure MnColecaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses CadastroCor, CadastroICMS, CadastroGrade, CadastroGrupo, CadastroMarca,
  CadastroClassificacaoFiscal, CadastroIcmsUf, CadastroFornecedor,
  CadastroProdutos, CadastroTamanho, CadastroTemplate, CadastroVariacao,
  CadastroTransportadora, CadastroPedidoCompra, CadastroEmpresa,
  CadastroUnidade, CadastroPlanoPagamento,
  CadastroNotaCompra, 
  TelaEmissaoEtiquetasCodigoBarras, CadastroOperacoesEstoque,
  CadastroMovimentosDiversosEstoque, RelatorioNotasCompra,
  TelaGerarSaldoProduto, CadastroEtiquetaCodigoBarras, CadastroClasse,
  RelatorioVendasComprasPorGrupo, TelaDadosVersaoCompras, CadastroBalanca,
  CadastroTabelaPreco, TelaReajustePreco, CadastroTipoDocumento,
  CadastroPortador, DataModulo, TelaRecalculaCustoMedio,
  RelatorioGiroEstoque, TelaCalculaCustoMensal, CadastroDecreto,
  CadastroColecao ;

{$R *.DFM}

procedure TFormPrincipal.COMPMnArquivosProdutosCoresClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroCor,'FormCadastroCor',False,False,'');
end;

procedure TFormPrincipal.COMPMnArquivosProdutosIcmsClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroICMS,'FormCadastroICMS',False,False,'');
end;

procedure TFormPrincipal.COMPMnArquivosProdutosGradesClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormCadastroGrade,'FormCadastroGrade',False,False,'');
end;

procedure TFormPrincipal.COMPMnArquivosProdutosGruposSubgruposVariacoesClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormCadastroGrupo,'FormCadastroGrupo',False,False,'');
end;

procedure TFormPrincipal.COMPMnArquivosProdutosMarcasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormCadastroMarca,'FormCadastroMarca',False,False,'');
end;

procedure TFormPrincipal.COMPMnArquivosProdutosIcmsporUFClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormCadastroIcmsUf,'FormCadastroIcmsUf',False,False,'');
end;

procedure TFormPrincipal.COMPMnArquivosProdutosClassificacoesFiscaisClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormCadastroClassificacaoFiscal,'FormCadastroClassificacaoFiscal',False,False,'');
end;

procedure TFormPrincipal.COMPMnArquivosFornecedoresClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormCadastroFornecedor,'FormCadastroFornecedor',False,False,'');
end;

procedure TFormPrincipal.COMPMnArquivosProdutosCadastroClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormCadastroProduto,'FormCadastroProduto',False,False,'');
end;

procedure TFormPrincipal.COMPMnArquivosTransportadorasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormCadastroTransportadora,'FormCadastroTransportadora',False,False,'');
end;

procedure TFormPrincipal.COMPMnPedidosPedidoCompraClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormCadastroPedidoCompra,'FormCadastroPedidoCompra',False,False,'');
end;

procedure TFormPrincipal.COMPMnArquivosProdutosUnidadesClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormCadastroUnidade,'FormCadastroUnidade',False,False,'');
end;

procedure TFormPrincipal.COMPMnArquivosPlanoPagamentoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormCadastroPlanoPagamento,'FormCadastroPlanoPagamento',False,False,'');
end;

procedure TFormPrincipal.COMPMnNotasNotaCompraClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormCadastroNotaCompra,'FormCadastroNotaCompra',False,False,'');
end;

procedure TFormPrincipal.COMPMnArquivosOperacoesdeEstoqueClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormCadastroOperacoesEstoque,'FormCadastroOperacoesEstoque',False,False,'');
end;

procedure TFormPrincipal.COMPMnUtilitariosEmissaoEtiquetasCodigoBarrasClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormTelaEmissaoEtiquetasCodigoBarras,'FormTelaEmissaoEtiquetasCodigoBarras',False,False,'');
end;

procedure TFormPrincipal.COMPMnEstoqueMovimentoDiversosClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormCadastroMovimentosDiversosEstoque,'FormCadastroMovimentosDiversosEstoque',False,False,'');
end;

procedure TFormPrincipal.COMPMnRelatoriosNotasCompraClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormRelatorioNotasCompra,'FormRelatorioNotasCompra',False,False,'');
end;

procedure TFormPrincipal.COMPMnUtilitariosEspeciaisGerarRegistroSaldoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormTelaGerarSaldoProduto,'FormTelaGerarSaldoProduto',False,False,'');
end;

procedure TFormPrincipal.COMPMnArquivosEtiquetasCodigoBarrasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormCadastroEtiquetaCodigoBarras,'FormCadastroEtiquetaCodigoBarras',False,False,'');
end;

procedure TFormPrincipal.COMPMnUtilitariosControledeAcessoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormCadastroClasse,'FormCadastroClasse',False,False,'');
end;

procedure TFormPrincipal.MnRelatoriosVendasComprasPorGrupoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormRelatorioVendasComprasPorGrupo,'FormRelatorioVendasComprasPorGrupo',False,False,'');
end;

procedure TFormPrincipal.DadosVerso1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormTelaDadosVersaoCompras,'FormTelaDadosVersaoCompras',False,False,'');
end;

procedure TFormPrincipal.COMPMnArquivosProdutosTabelaPrecoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormCadastroTabelaPreco,'FormCadastroTabelaPreco',False,False,'');
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
  inherited;
{  if FileExists('Bmp\Splash.bmp') then
    begin
      EvWallPaper.Picture.LoadFromFile('Bmp\Splash.Bmp') ;
    end ;
  if FileExists('Bmp\Splash.jpg') then
    begin
      EvWallPaper.Picture.LoadFromFile('Bmp\Splash.jpg') ;
    end ;}
end;

procedure TFormPrincipal.ReajustedePreos1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormTelaReajustePreco,'FormTelaReajustePreco',False,False,'');
end;

procedure TFormPrincipal.COMPMnSairdoSistemaClick(Sender: TObject);
begin
  inherited;
  FormPrincipal.Close;
  Application.Terminate;
end;

procedure TFormPrincipal.COMPMnTipodeDocumentoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormCadastroTipoDocumento,'FormCadastroTipoDocumento',False,False,'');

end;

procedure TFormPrincipal.COMPMnPortadoresClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormCadastroPortador,'FormCadastroPortador',False,False,'');

end;

procedure TFormPrincipal.COMMnEmissaodeEtiquetasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormTelaEmissaoEtiquetasCodigoBarras,'FormTelaEmissaoEtiquetasCodigoBarras',False,False,'');

end;

procedure TFormPrincipal.FormActivate(Sender: TObject);
begin
  inherited;
  Dm.SQLConfigGeral.Close;
  Dm.SQLConfigGeral.Open;
  Dm.SQLConfigCompra.Close;
  Dm.SQLConfigCompra.Open;
  Dm.SQLConfigCrediario.Close;
  Dm.SQLConfigCrediario.Open;
  Dm.SQLUsuarios.Close;
  Dm.SQLUsuarios.Open;
  Dm.SQLTerminalAtivo.Close;
  Dm.SQLTerminalAtivo.Open;
end;

procedure TFormPrincipal.RecalcularCustoMdio1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormTelaRecalculaCustoMedio,'FormTelaRecalculaCustoMedio',False,False,'');

end;

procedure TFormPrincipal.MnCOMRelGirodeEstoqueClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormRelatorioGiroEstoque,'FormRelatorioGiroEstoque',False,False,'');

end;

procedure TFormPrincipal.MnCOMUtilCalculaCustoMensalClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormTelaCalculaCustoMensal,'FormTelaCalculaCustoMensal',False,False,'');

end;

procedure TFormPrincipal.COMPMnArquivosProdutosDecretosClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormCadastroDecreto,'FormCadastroDecreto',False,False,'');
end;

procedure TFormPrincipal.MnColecaoClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroColecao,'FormCadastroColecao',False,False,'');
end;

end.
