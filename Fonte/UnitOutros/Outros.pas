unit OUtros;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ImgList, EWall, ExtCtrls, Menus, ComCtrls, ToolWin;

type
  TFormPrincipalOutros = class(TForm)
    RodapePrincipal: TStatusBar;
    MainMenu: TMainMenu;
    Faturamento1: TMenuItem;
    RelattriodeItensaEntregar1: TMenuItem;
    RelatoriodeProdutosaEntregar1: TMenuItem;
    BackGround: TEvWallPaper;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Financeiro1: TMenuItem;
    ContasReceber1: TMenuItem;
    ResumodeContasReceber1: TMenuItem;
    Estoque1: TMenuItem;
    QuantidadexValorVenda1: TMenuItem;
    ListadePreos1: TMenuItem;
    Relatrios1: TMenuItem;
    ApuraoICMS1: TMenuItem;
    MapaResumo1: TMenuItem;
    N2: TMenuItem;
    LivrodeMovimentaodeDefensivosAgrcolas1: TMenuItem;
    N3: TMenuItem;
    otalizadoresRedues1: TMenuItem;
    Vendas1: TMenuItem;
    VendasporVendedor1: TMenuItem;
    RelatriodeMovimentaodeProdutos1: TMenuItem;
    N4: TMenuItem;
    ControledeCilindros1: TMenuItem;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure RelatoriodeProdutosaEntregar1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure ResumodeContasReceber1Click(Sender: TObject);
    procedure QuantidadexValorVenda1Click(Sender: TObject);
    procedure ListadePreos1Click(Sender: TObject);
    procedure ApuraoICMS1Click(Sender: TObject);
    procedure MapaResumo1Click(Sender: TObject);
    procedure LivrodeMovimentaodeDefensivosAgrcolas1Click(Sender: TObject);
    procedure otalizadoresRedues1Click(Sender: TObject);
    procedure VendasporVendedor1Click(Sender: TObject);
    procedure RelatriodeMovimentaodeProdutos1Click(Sender: TObject);
    procedure ControledeCilindros1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipalOutros: TFormPrincipalOutros;

implementation

uses unPedidoVendaFiltro, unCntReceberFiltro,
  unEstoqueRelListapreco, unApuracaoICMS, unMapaResumo, unLivroDefencivos,
  unRelEstoquecustovenda, unTotalizaReducoes, unRelVendasPorVendedor,
  unRelExtratoProduto, unControleCilindros;

{$R *.DFM}

procedure TFormPrincipalOutros.BitBtn1Click(Sender: TObject);
begin
  FormPedidoVendasFiltro:= TFormPedidoVendasFiltro.Create(self);
  FormPedidoVendasFiltro.ShowModal;
end;




procedure TFormPrincipalOutros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action := caFree;
end;


procedure TFormPrincipalOutros.FormCreate(Sender: TObject);
begin
    try
        if FileExists('Bmp\Logo Retaguarda.Bmp') then
            BackGround.Picture.LoadFromFile('Bmp\Logo Retaguarda.Bmp') ;

        if FileExists('Bmp\Logo Retaguarda.Jpg') then
            BackGround.Picture.LoadFromFile('Bmp\Logo Retaguarda.Jpg') ;
    except
    end;

end;

procedure TFormPrincipalOutros.RelatoriodeProdutosaEntregar1Click(
  Sender: TObject);
begin
    FormPedidoVendasFiltro:= TFormPedidoVendasFiltro.Create(Self);
    FormPedidoVendasFiltro.ShowModal;
end;

procedure TFormPrincipalOutros.Sair1Click(Sender: TObject);
begin
    Close;
end;

procedure TFormPrincipalOutros.ResumodeContasReceber1Click(
  Sender: TObject);
begin
  FormCntReceberFiltro := TFormCntReceberFiltro.Create(self);
  FormCntReceberFiltro.ShowModal;
end;

procedure TFormPrincipalOutros.QuantidadexValorVenda1Click(
  Sender: TObject);
begin
  FormRelEstoqueCustoVenda := TFormRelEstoqueCustoVenda.Create(Self);
  FormRelEstoqueCustoVenda.ShowModal;
end;

procedure TFormPrincipalOutros.ListadePreos1Click(Sender: TObject);
begin
    FormRelListaPreco:= TFormRelListaPreco.Create(Self);
    FormRelListaPreco.ShowModal;
end;

procedure TFormPrincipalOutros.ApuraoICMS1Click(Sender: TObject);
begin
    FrmApuracaoICMS:= TFrmApuracaoICMS.Create(Self);
    FrmApuracaoICMS.ShowModal;
end;

procedure TFormPrincipalOutros.MapaResumo1Click(Sender: TObject);
begin
    FrmMapaResumo:= TFrmMapaResumo.Create(Self);
    FrmMapaResumo.ShowModal;
end;

procedure TFormPrincipalOutros.LivrodeMovimentaodeDefensivosAgrcolas1Click(
  Sender: TObject);
begin
  FrmLivroDefencivos:= TFrmLivroDefencivos.Create(Self);
  FrmLivroDefencivos.ShowModal;
end;

procedure TFormPrincipalOutros.otalizadoresRedues1Click(Sender: TObject);
begin
    FormTotalizaReducoes:= TFormTotalizaReducoes.Create(Self);
    FormTotalizaReducoes.ShowModal;

end;

procedure TFormPrincipalOutros.VendasporVendedor1Click(Sender: TObject);
begin
  Formvendasporvendedor := TFormVendasporVendedor.Create(Self);
  FormVendasPorVendedor.ShowModal;
end;

procedure TFormPrincipalOutros.RelatriodeMovimentaodeProdutos1Click(
  Sender: TObject);
begin
  FormRelatorioExtratoProduto := TFormRelatorioExtratoProduto.create(Self);
  FormRelatorioExtratoProduto.ShowModal;
end;

procedure TFormPrincipalOutros.ControledeCilindros1Click(Sender: TObject);
begin
  FrmControleCilindros := TFrmControleCilindros.Create(Self);
  FrmControleCilindros.ShowModal;
end;

end.
