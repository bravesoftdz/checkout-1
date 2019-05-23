program Outro;

uses
  Forms,
  Outros in 'Outros.pas' {FormPrincipalOutros},
  unDataModule in 'unDataModule.pas' {DM: TDataModule},
  unPedidoVendaFiltro in 'unPedidoVendaFiltro.pas' {FormPedidoVendasFiltro},
  UnErrorPrinter in 'UnErrorPrinter.pas' {FrmErrorPrinter},
  UnFileDemo in 'UnFileDemo.pas' {FrmFileDemo},
  unPrintSelect in 'unPrintSelect.pas' {FrmPrinters},
  unCntReceberFiltro in 'unCntReceberFiltro.pas' {FormCntReceberFiltro},
  unEstoqueRelListapreco in 'unEstoqueRelListapreco.pas' {FormRelListaPreco},
  unApuracaoICMS in 'unApuracaoICMS.pas' {FrmApuracaoICMS},
  unMapaResumo in 'unMapaResumo.pas' {FrmMapaResumo},
  unLivroDefencivos in 'unLivroDefencivos.pas' {FrmLivroDefencivos},
  unRelEstoquecustovenda in 'unRelEstoquecustovenda.pas' {FormRelEstoqueCustoVenda},
  unTotalizaReducoes in 'unTotalizaReducoes.pas' {FormTotalizaReducoes},
  unRelVendasPorVendedor in 'unRelVendasPorVendedor.pas' {FormVendasPorVendedor},
  unRelExtratoProduto in 'unRelExtratoProduto.pas' {FormRelatorioExtratoProduto},
  unControleCilindros in 'unControleCilindros.pas' {FrmControleCilindros};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormPrincipalOutros, FormPrincipalOutros);
  Application.Run;
end.
