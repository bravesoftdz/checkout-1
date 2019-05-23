unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PrincipalTemplate, Menus, jpeg, EWall, Handprot, ExtCtrls,
  ComCtrls, ToolWin, StdCtrls, ImgList;

type
  TFormPrincipal = class(TFormPrincipalTemplate)
    mnCadastros: TMenuItem;
    mnProdutosparaProducao: TMenuItem;
    mnUtilitrios: TMenuItem;
    N1: TMenuItem;
    mnuSair: TMenuItem;
    MovimentaoEstoque1: TMenuItem;
    MateriaPrima1: TMenuItem;
    mnCentroCusto: TMenuItem;
    mnAtividades: TMenuItem;
    mnFuncionrios: TMenuItem;
    mnRecursosProduo: TMenuItem;
    mnEquipamentosProduo: TMenuItem;
    N2: TMenuItem;
    Fasesdaproduo1: TMenuItem;
    Lote1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    mnOrdemProduo: TMenuItem;
    mnRelatrios: TMenuItem;
    mnComposioPedidoVenda: TMenuItem;
    N6: TMenuItem;
    mnProducao: TMenuItem;
    mnPedidosVenda: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure mnProdutosparaProducaoClick(Sender: TObject);
    procedure mnuSairClick(Sender: TObject);
    procedure MovimentaoEstoque1Click(Sender: TObject);
    procedure MateriaPrima1Click(Sender: TObject);
    procedure mnCentroCustoClick(Sender: TObject);
    procedure mnAtividadesClick(Sender: TObject);
    procedure mnFuncionriosClick(Sender: TObject);
    procedure mnRecursosProduoClick(Sender: TObject);
    procedure mnEquipamentosProduoClick(Sender: TObject);
    procedure Fasesdaproduo1Click(Sender: TObject);
    procedure Lote1Click(Sender: TObject);
    procedure mnOrdemProduoClick(Sender: TObject);
    procedure mnComposioPedidoVendaClick(Sender: TObject);
    procedure mnProducaoClick(Sender: TObject);
    procedure mnPedidosVendaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses UnitLibrary, FormResources, CadastroInsumo, VarSYS,
  CadastroProdutoParaProducao,
   CadastroProdutosSemiAcabados,
  CadastroFornecedoresSemiAcabados, CadastroMovimentacaoEstoque,
  TelaCentroCusto, CadastroProducaoAtividade, CadastroFuncionario,
  CadastroProducaoRecursos, CadastroProducaoEquipamento,
  CadastroProducaoFases, CadastroProducaoLote, CadastroOrdemProducao,
  RelatorioComposicaoPedido, CadastroMovimentosDiversosEstoquePCP,
  RelatorioProducao, TelaPedidosVenda;

{$R *.dfm}

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
  inherited;
  Retaguarda := true; 
end;

procedure TFormPrincipal.mnProdutosparaProducaoClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroProdutoParaProducao,'FormCadastroProdutoParaProducao',false,false,'');
end;

procedure TFormPrincipal.mnuSairClick(Sender: TObject);
begin
  inherited;
  Application.Terminate;
end;

procedure TFormPrincipal.MovimentaoEstoque1Click(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroMovimentosDiversosEstoquePCP,'FormCadastroMovimentosDiversosEstoquePCP', False,False,'');
end;

procedure TFormPrincipal.MateriaPrima1Click(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroInsumo,'FormCadastroInsumo',False, False,'');
end;

procedure TFormPrincipal.mnCentroCustoClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormTelaCentroCusto,'FormTelaCentroCusto', False,False,'');
end;

procedure TFormPrincipal.mnAtividadesClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroProducaoAtividade,'FormCadastroProducaoAtividade',False,False,'');
end;

procedure TFormPrincipal.mnFuncionriosClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroFuncionario,'FormCadastroFuncionario',False,False,'Produção ');
end;

procedure TFormPrincipal.mnRecursosProduoClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroProducaoRecursos,'FormCadastroProducaoRecursos',False,False,'');
end;

procedure TFormPrincipal.mnEquipamentosProduoClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroProducaoEquipamento,'FormCadastroProducaoEquipamento',False,False,'');
end;

procedure TFormPrincipal.Fasesdaproduo1Click(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroProducaoFases,'FormCadastroProducaoFases',False,False,'');
end;

procedure TFormPrincipal.Lote1Click(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroProducaoLote,'FormCadastroProducaoLote',False,False,'');
end;

procedure TFormPrincipal.mnOrdemProduoClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroOrdemProducao,'FormCadastroOrdemProducao', False, False,'');
end;

procedure TFormPrincipal.mnComposioPedidoVendaClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormRelatorioComposicaoPedido, 'FormRelatorioComposicaoPedido', False, False, '');
end;

procedure TFormPrincipal.mnProducaoClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormRelatorioProducao, 'FormRelatorioProducao', False, False, '');
end;

procedure TFormPrincipal.mnPedidosVendaClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormTelaPedidosVenda, 'FormTelaPedidosVenda', False, False, '');
end;

end.
