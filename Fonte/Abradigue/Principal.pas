unit Principal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PrincipalTemplate, Menus, ExtCtrls, jpeg, ComCtrls, ToolWin, FormResources,
  VarSys, EWall, DB, ImgList, StdCtrls;

type
  TFormPrincipal = class(TFormPrincipalTemplate)
    MnFINCadastros: TMenuItem;
    MnFINPagar: TMenuItem;
    MNFINRelatorios: TMenuItem;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    MnFINCadastroClientes: TMenuItem;
    MnFINCadastroClientesCadastro: TMenuItem;
    MnFINCadastroClientesTipodeCliente: TMenuItem;
    MnFINCadastroClientesProfissoes: TMenuItem;
    MnFINCadastroClientesMotivoBloquerio: TMenuItem;
    MnFINSairdoSistema: TMenuItem;
    N2: TMenuItem;
    MnFINPagarLancamentos: TMenuItem;
    MnFINPagarBaixarDocumentos: TMenuItem;
    N1: TMenuItem;
    MnFINReceber: TMenuItem;
    MNFINBancos: TMenuItem;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    MnFINReceberLancamentos: TMenuItem;
    MnFINReceberBaixarDocumentos: TMenuItem;
    MnFINBancosLancarMovimentaco: TMenuItem;
    MnFINRelatoriosPagar: TMenuItem;
    MnFINRelatoriosReceber: TMenuItem;
    MnFINRelBancos: TMenuItem;
    MnFINCadastroBancos: TMenuItem;
    FINAMnCadastroPortadores: TMenuItem;
    MnFINCadastroOperacoesBancarias: TMenuItem;
    MnFINCadastroTiposDocumentos: TMenuItem;
    MnFINCadastroSituacoesCheques: TMenuItem;
    MnFINCadastroPlanoContas: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    MnFINRelReceberAReceber: TMenuItem;
    MnFINRelContasPagarVencidas: TMenuItem;
    MnFINRelContasPagarPagas: TMenuItem;
    MnFINRelContasPagarAPagar: TMenuItem;
    MNFINUtilitarios: TMenuItem;
    MnFINUtilitariosCadastroControleAcesso: TMenuItem;
    ToolButton7: TToolButton;
    MnFINRelCheques: TMenuItem;
    MnFINRelChequesRecebidos: TMenuItem;
    N6: TMenuItem;
    MnFINUtilitariosDadosVersao: TMenuItem;
    MnFINCadastroFornecedor: TMenuItem;
    MNFINRelBancoExtratoBancario: TMenuItem;
    MnFINReceberEmissaoBoletosDuplicatas: TMenuItem;
    ToolButton8: TToolButton;
    MnFINCheques: TMenuItem;
    MnFINRecebidos: TMenuItem;
    MnFINChequesRecebidosLancamentos: TMenuItem;
    MnFINCheRecebidosBaixaChequesRecebidos: TMenuItem;
    MnChequesEmitidos: TMenuItem;
    MnChqEmitidosLancamentosCheuqesEmitidos: TMenuItem;
    MnFINBancosIntegracao: TMenuItem;
    MnFINBancosRemessaArquivo: TMenuItem;
    MnFINTesouraria: TMenuItem;
    MnFINTesLancamentos: TMenuItem;
    MnFINTesEmisscaodeRecibos: TMenuItem;
    MnFINRelReceberEmitidas: TMenuItem;
    MnFINRelPagarEmitidas: TMenuItem;
    MnFINRelPlanodeContas: TMenuItem;
    MnFINRelFluxodeCaixaDiario: TMenuItem;
    NnFINRelCaixa: TMenuItem;
    MnFINRelCaixaBoletimdeCaixa: TMenuItem;
    MnFINChqEmitidosBaixaChequesEmitidos: TMenuItem;
    MnFINRelReceberRecebidas: TMenuItem;
    MnFINRelReceberVencidas: TMenuItem;
    N5: TMenuItem;
    ButtonTesouraria: TToolButton;
    MnFINRelCaixaMovimentacaodeCaixa: TMenuItem;
    MnFINRelChequesEmitidos: TMenuItem;
    MnFINRelTesouraria: TMenuItem;
    MnFINRelTesourariaSaldoDiarioConsolidado: TMenuItem;
    MnFINBancosContaCorrente: TMenuItem;
    MnFINRelPosicaoFinanceiraConsolidada: TMenuItem;
    MnFINRelContSaldodeContasReceber: TMenuItem;
    MnFINCadTipoLiquidacao: TMenuItem;
    MnFINRELRecebidasPorSetor: TMenuItem;
    MnFINRELRecebidasPorTipodeLiquidacao: TMenuItem;
    MnFINRELContasPagasPorTipodeLiquidcao: TMenuItem;
    PagasPorOrigem1: TMenuItem;
    MnFINRELRecebidasPorEmpresaOrigemRecebto: TMenuItem;
    MnFINRELContasReceberVencidasAvalista: TMenuItem;
    MnFINCadHistoricoPadrao: TMenuItem;
    MnFINCadCliExtras: TMenuItem;
    MnFINCadCliExtrasCredito: TMenuItem;
    MnFINCadCliExtrasDebito: TMenuItem;
    MnFINRelClientes: TMenuItem;
    MnFINRelClientesCreditoDebito: TMenuItem;
    MnFINRelClientesExtrato: TMenuItem;
    MnFINRelPagContSaldodeContasaPagar: TMenuItem;
    MnFINFuncionario: TMenuItem;
    MnFINFuncionarios: TMenuItem;
    MnFINPAGBaixarDocumentosFunc: TMenuItem;
    MnFINRelFuncionarios: TMenuItem;
    MnFINRelFunExtrato: TMenuItem;
    MnFinRelContabilidade: TMenuItem;
    MnFINRelContAuxiliarParaLivroCaixa: TMenuItem;
    AnlisedeRecebimentos1: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    MnCartoesCreditoManual: TMenuItem;
    MnFINTipoFornecedor: TMenuItem;
    MnOperacaoTesouraria: TMenuItem;
    MnFINRamoSubRamo: TMenuItem;
    procedure MnFINCadastroClientesCadastroClick(Sender: TObject);
    procedure MnFINCadastroClientesTipodeClienteClick(Sender: TObject);
    procedure MnFINCadastroBancosClick(Sender: TObject);
    procedure MnFINCadastroTiposDocumentosClick(Sender: TObject);
    procedure FINAMnCadastroPortadoresClick(Sender: TObject);
    procedure MnFINReceberLancamentosClick(Sender: TObject);
    procedure MnFINReceberBaixarDocumentosClick(Sender: TObject);
    procedure MnFINPagarLancamentosClick(Sender: TObject);
    procedure MnFINRelReceberAReceberClick(Sender: TObject);
    procedure MnFINRelContasPagarPagasClick(Sender: TObject);
    procedure MnFINRelContasPagarVencidasClick(Sender: TObject);
    procedure MnFINRelContasPagarAPagarClick(Sender: TObject);
    procedure MnFINPagarBaixarDocumentosClick(Sender: TObject);
    procedure MnFINUtilitariosCadastroControleAcessoClick(Sender: TObject);
    procedure MnFINCadastroPlanoContasClick(Sender: TObject);
    procedure MnFINRelChequesRecebidosClick(Sender: TObject);
    procedure MnFINCadastroSituacoesChequesClick(Sender: TObject);
    procedure MnFINCadastroFornecedorClick(Sender: TObject);
    procedure MnFINBancosLancarMovimentacoClick(Sender: TObject);
    procedure MnFINCadastroOperacoesBancariasClick(Sender: TObject);
    procedure MNFINRelBancoExtratoBancarioClick(Sender: TObject);
    procedure MnFINReceberEmissaoBoletosDuplicatasClick(Sender: TObject);
    procedure MnFINCheRecebidosBaixaChequesRecebidosClick(Sender: TObject);
    procedure MnFINChequesRecebidosLancamentosClick(Sender: TObject);
    procedure MnChqEmitidosLancamentosCheuqesEmitidosClick(Sender: TObject);
    procedure FormPrincipalB1Click(Sender: TObject);
    procedure MnFINBancosRemessaArquivoClick(Sender: TObject);
    procedure MnFINTesLancamentosClick(Sender: TObject);
    procedure MnFINTesEmisscaodeRecibosClick(Sender: TObject);
    procedure MnFINRelReceberEmitidasClick(Sender: TObject);
    procedure MnFINRelPagarEmitidasClick(Sender: TObject);
    procedure MnFINRelPlanodeContasClick(Sender: TObject);
    procedure MnFINRelFluxodeCaixaDiarioClick(Sender: TObject);
    procedure MnFINRelCaixaBoletimdeCaixaClick(Sender: TObject);
    procedure MnFINRelReceberRecebidasClick(Sender: TObject);
    procedure MnFINRelReceberVencidasClick(Sender: TObject);
    procedure MnFINRelCaixaMovimentacaodeCaixaClick(Sender: TObject);
    procedure MnFINRelChequesEmitidosClick(Sender: TObject);
    procedure MnFINRelTesourariaSaldoDiarioConsolidadoClick(
      Sender: TObject);
    procedure MnFINBancosContaCorrenteClick(Sender: TObject);
    procedure MnFINRelPosicaoFinanceiraConsolidadaClick(Sender: TObject);
    procedure MnFINRelContSaldodeContasReceberClick(Sender: TObject);
    procedure MnFINCadTipoLiquidacaoClick(Sender: TObject);
    procedure MnFINRELRecebidasPorSetorClick(Sender: TObject);
    procedure MnFINRELRecebidasPorTipodeLiquidacaoClick(Sender: TObject);
    procedure MnFINRELContasPagasPorTipodeLiquidcaoClick(Sender: TObject);
    procedure PagasPorOrigem1Click(Sender: TObject);
    procedure MnFINRELRecebidasPorEmpresaOrigemRecebtoClick(
      Sender: TObject);
    procedure MnFINRELContasReceberVencidasAvalistaClick(Sender: TObject);
    procedure MnFINSairdoSistemaClick(Sender: TObject);
    procedure MnFINCadHistoricoPadraoClick(Sender: TObject);
    procedure MnFINCadCliExtrasCreditoClick(Sender: TObject);
    procedure MnFINRelClientesCreditoDebitoClick(Sender: TObject);
    procedure MnFINRelClientesExtratoClick(Sender: TObject);
    procedure MnFINCadCliExtrasDebitoClick(Sender: TObject);
    procedure MnFINRelPagContSaldodeContasaPagarClick(Sender: TObject);
    procedure MnFINFuncionarioClick(Sender: TObject);
    procedure MnFINPAGBaixarDocumentosFuncClick(Sender: TObject);
    procedure MnFINRelFunExtratoClick(Sender: TObject);
    procedure MnFINRelContAuxiliarParaLivroCaixaClick(Sender: TObject);
    procedure AnlisedeRecebimentos1Click(Sender: TObject);
    procedure MnCartoesCreditoManualClick(Sender: TObject);
    procedure MnFINTipoFornecedorClick(Sender: TObject);
    procedure MnOperacaoTesourariaClick(Sender: TObject);
    procedure MnFINRamoSubRamoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses CadastroCliente, CadastroTemplate, CadastroTipoCliente, CadastroBanco,
  CadastroTipoDocumento, CadastroPortador, CadastroContasReceber,
  TelaBaixarDocumentosReceber, CadastroContasPagar, RelatorioContasaReceber,
  RelatorioContasReceberVencidas, RelatorioContasRecebidas,
  RelatorioContasPagarPAGAS, RelatorioContasPagarAPAGAR,
  RelatorioContasPagarVENCIDAS, TelaBaixarDocumentosPagar, CadastroClasse,
  CadastroChequesRecebidos, RelatorioChequesRecebidos, TelaBaixarChequesRecebidos,
  CadastroSituacaoCheque, CadastroFornecedor, CadastroMovimentoBanco,
  CadastroOperacaoBanco, CadastroContaCorrente,
  RelatorioExtratoMovimentoBanco, TelaPlanoContas, DataModulo,
  CadastroChequeEmitido, TelaBaixarChequesEmitidos,
  CadastroRemessaBancos, CadastroTesouraria, CadastroRecibo,
  RelatorioContasReceberEmitidas, RelatorioContasPagarEMITIDAS,
  RelatorioReceitasDespesasPlanoContas, RelatorioFluxoCaixa,
  RelatorioBoletimCaixaTesouraria, RelatorioMovimentacaoTesouraria,
  RelatorioChequeEmitido, RelatorioSaldoDiarioTesouraria, RelatorioPosicaoFinanceiraConsolidada,
  RelatorioSaldoContasaReceberContabil, CadastroTipoLiquidacao,
  RelatorioContasRecebidasPorSetor, RelatorioContasRecebidasTipoLiquidacao,
  RelatorioContasPagasTipoLiquidacao, RelatorioContasPagasPorOrigem,
  RelatorioContasRecebidasPorEmpresa,
  RelatorioContasReceberVencidasAvalista, CadastroHistoricoPadrao,
  CadastroContasReceberCredito, RelatorioCreditoDebitoPorCliente,
  RelatorioExtratoCliente, CadastroContasReceberDebito,
  RelatorioSaldoContasaPagarContabil, CadastroFuncionario,
  TelaBaixaFuncionarioContaCorrente, RelatorioExtratoFuncionario,
  RelatorioAuxiliarParaLivroCaixa, RelatorioAnaliseRecebimento,
  CadastroCartaoCreditoManual, CadastroTipoFornecedor,
  CadastroOperacaoTesouraria, CadastroRamo ;

{$R *.DFM}

procedure TFormPrincipal.MnFINCadastroClientesCadastroClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormCadastroCliente,'FormCadastroCliente',False,False,'');
end;

procedure TFormPrincipal.MnFINCadastroClientesTipodeClienteClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormCadastroTipoCliente,'FormCadastroTipoCliente',False,False,'');
end;

procedure TFormPrincipal.MnFINCadastroBancosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormCadastroBanco, 'FormCadastroBanco', False, False, '');
end ;

procedure TFormPrincipal.MnFINCadastroTiposDocumentosClick(Sender: TObject);
begin
  inherited ;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormCadastroTipoDocumento, 'FormCadastroTipoDocumento', False, False, '');
end ;

procedure TFormPrincipal.FINAMnCadastroPortadoresClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormCadastroPortador, 'FormCadastroPortador', False, False, '');
end;

procedure TFormPrincipal.MnFINReceberLancamentosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroContasReceber, 'FormCadastroContasReceber', False, False, '') ;
end;

procedure TFormPrincipal.MnFINReceberBaixarDocumentosClick(Sender: TObject);
begin
  inherited;
  if dm.SQLLocate('USUARIO','USUAICOD','USUACBXCRECFIN',INTTOSTR(UsuarioCorrente)) <> 'S' then
    Showmessage('Você não possui acesso a esta rotina! Entre em contato com o administrador do sistema!')
  else
    if DM.Acesso((Sender as TMenuItem).Name) > 0 then
      CriaFormulario(TFormTelaBaixarDocumentosReceber, 'FormTelaBaixarDocumentosReceber', False, False, '') ;
end;

procedure TFormPrincipal.MnFINPagarLancamentosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroContasPagar, 'FormCadastroContasPagar', False, False, '') ;
end;

procedure TFormPrincipal.MnFINRelReceberAReceberClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasaReceber, 'FormRelatorioContasaReceber', False, False, '') ;
end;

procedure TFormPrincipal.MnFINRelContasPagarPagasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasPagarPAGAS, 'FormRelatorioContasPagarPAGAS', False, False, '') ;
end;

procedure TFormPrincipal.MnFINRelContasPagarVencidasClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasPagarVENCIDAS, 'FormRelatorioContasPagarVENCIDAS', False, False, '') ;
end;

procedure TFormPrincipal.MnFINRelContasPagarAPagarClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasPagarAPAGAR, 'FormRelatorioContasPagarAPAGAR', False, False, '') ;
end;

procedure TFormPrincipal.MnFINPagarBaixarDocumentosClick(Sender: TObject);
begin
  inherited;
  if dm.SQLLocate('USUARIO','USUAICOD','USUACBXCPAGFIN',INTTOSTR(UsuarioCorrente)) <> 'S' then
    Showmessage('Você não possui acesso a esta rotina! Entre em contato com o administrador do sistema!')
  else
    if DM.Acesso((Sender as TMenuItem).Name) > 0 then
      CriaFormulario(TFormTelaBaixarDocumentosPagar, 'FormTelaBaixarDocumentosPagar', False, False, '') ;
end;

procedure TFormPrincipal.MnFINUtilitariosCadastroControleAcessoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormCadastroClasse, 'FormCadastroClasse', False, False, '');
end;

procedure TFormPrincipal.MnFINCadastroPlanoContasClick(Sender: TObject) ;
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormTelaPlanoContas, 'FormTelaPlanoContas', False, False, '') ;
end;

procedure TFormPrincipal.MnFINRelChequesRecebidosClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioChequeRecebidos, 'FormRelatorioChequeRecebidos', False, False, '') ;
end;

procedure TFormPrincipal.MnFINCadastroSituacoesChequesClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormCadastroSituacaoCheque, 'FormCadastroSituacaoCheque', False, False, '') ;
end;

procedure TFormPrincipal.MnFINCadastroFornecedorClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormCadastroFornecedor, 'FormCadastroFornecedor', False, False, '') ;
end;

procedure TFormPrincipal.MnFINBancosLancarMovimentacoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroMovimentoBanco, 'FormCadastroMovimentoBanco', False, False, '') ;
end;

procedure TFormPrincipal.MnFINCadastroOperacoesBancariasClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormCadastroOperacaoBanco, 'FormCadastroOperacaoBanco', False, False, '') ;
end;

procedure TFormPrincipal.MNFINRelBancoExtratoBancarioClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioExtratoMovimentoBanco, 'FormRelatorioExtratoMovimentoBanco', False, False, '') ;
end;

procedure TFormPrincipal.MnFINReceberEmissaoBoletosDuplicatasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaImpressaoDuplicata,'FormTelaImpressaoDuplicata',False,False,'');

end;

procedure TFormPrincipal.MnFINCheRecebidosBaixaChequesRecebidosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaBaixarChequesRecebidos, 'FormTelaBaixarChequesRecebidos', False, False, '') ;

end;

procedure TFormPrincipal.MnFINChequesRecebidosLancamentosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroChequesRecebidos, 'FormCadastroChequesRecebidos', False, False, '') ;
end;

procedure TFormPrincipal.MnChqEmitidosLancamentosCheuqesEmitidosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormCadastroChequeEmitido,'FormCadastroChequeEmitido',False,False,'');

end;

procedure TFormPrincipal.FormPrincipalB1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormTelaBaixarChequeEmitido,'FormTelaBaixarChequeEmitido',False,False,'');

end;

procedure TFormPrincipal.MnFINBancosRemessaArquivoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroRemessaBancos,'FormCadastroRemessaBancos',False,False,'');

end;

procedure TFormPrincipal.MnFINTesLancamentosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTesouraria,'FormCadastroTesouraria',False,False,'');
end;

procedure TFormPrincipal.MnFINTesEmisscaodeRecibosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroRecibo,'FormCadastroRecibo',False,False,'');
end;

procedure TFormPrincipal.MnFINRelReceberEmitidasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasReceberEmitidas,'FormRelatorioContasReceberEmitidas',False,False,'');
end;

procedure TFormPrincipal.MnFINRelPagarEmitidasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasPagarEmitidas,'FormRelatorioContasPagarEmitidas',False,False,'');
end;

procedure TFormPrincipal.MnFINRelPlanodeContasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioReceitasDespesasPlanoContas,'FormRelatorioReceitasDespesasPlanoContas',False,False,'');
end;

procedure TFormPrincipal.MnFINRelFluxodeCaixaDiarioClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormRelatorioFluxoCaixa,'FormRelatorioFluxoCaixa',False,False,'');

end;

procedure TFormPrincipal.MnFINRelCaixaBoletimdeCaixaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioBoletimCaixaTesouraria,'FormRelatorioBoletimCaixaTesouraria',False,False,'');

end;

procedure TFormPrincipal.MnFINRelReceberRecebidasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasRecebidas, 'FormRelatorioContasRecebidas', False, False, '');

end;

procedure TFormPrincipal.MnFINRelReceberVencidasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasReceberVencidas, 'FormRelatorioContasReceberVencidas', False, False, '');
end;

procedure TFormPrincipal.MnFINRelCaixaMovimentacaodeCaixaClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioMovimentacaoTesouraria, 'FormRelatorioMovimentacaoTesouraria', False, False, '');
end;

procedure TFormPrincipal.MnFINRelChequesEmitidosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioChequeEmitido, 'FormRelatorioChequeEmitido', False, False, '');
end;

procedure TFormPrincipal.MnFINRelTesourariaSaldoDiarioConsolidadoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioSaldoDiarioTesouraria,'FormRelatorioSaldoDiarioTesouraria', False, False, '');
end;

procedure TFormPrincipal.MnFINBancosContaCorrenteClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroContaCorrente,'FormCadastroContaCorrente', False, False, '');

end;

procedure TFormPrincipal.MnFINRelPosicaoFinanceiraConsolidadaClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioSaldoDiarioPosicaoFinanceiraConsolidada,'FormRelatorioSaldoDiarioPosicaoFinanceiraConsolidada', False, False, '');

end;

procedure TFormPrincipal.MnFINRelContSaldodeContasReceberClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioSaldoContasReceberContabil,'FormRelatorioSaldoContasReceberContabil', False, False, '');

end;

procedure TFormPrincipal.MnFINCadTipoLiquidacaoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTipoLiquidacao,'FormCadastroTipoLiquidacao', False, False, '');
end;

procedure TFormPrincipal.MnFINRELRecebidasPorSetorClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasRecebidasPorSetor,'FormRelatorioContasRecebidasPorSetor', False, False, '');

end;

procedure TFormPrincipal.MnFINRELRecebidasPorTipodeLiquidacaoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasRecebidasTipoLiquidacao,'FormRelatorioContasRecebidasTipoLiquidacao', False, False, '');

end;

procedure TFormPrincipal.MnFINRELContasPagasPorTipodeLiquidcaoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasPagasTipoLiquidacao,'FormRelatorioContasPagasTipoLiquidacao', False, False,'');
end;

procedure TFormPrincipal.PagasPorOrigem1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasPagasPorOrigem,'FormRelatorioContasPagasPorOrigem',False,False,'');
end;

procedure TFormPrincipal.MnFINRELRecebidasPorEmpresaOrigemRecebtoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasRecebidasPorEmpresa,'FormRelatorioContasRecebidasPorEmpresa',False,False,'');

end;

procedure TFormPrincipal.MnFINRELContasReceberVencidasAvalistaClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasReceberVencidasAvalista,'FormRelatorioContasReceberVencidasAvalista',False,False,'');
end;

procedure TFormPrincipal.MnFINSairdoSistemaClick(Sender: TObject);
begin
  inherited;
  FormPrincipal.Close;
  Application.Terminate;
end;

procedure TFormPrincipal.MnFINCadHistoricoPadraoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroHistoricoPadrao,'FormCadastroHistoricoPadrao',False,False,'');
end;

procedure TFormPrincipal.MnFINCadCliExtrasCreditoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroContasReceberCredito,'FormCadastroContasReceberCredito',False,False,'');

end;

procedure TFormPrincipal.MnFINRelClientesCreditoDebitoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioCreditoDebitoPorCliente,'FormRelatorioCreditoDebitoPorCliente',False,False,'');
end;

procedure TFormPrincipal.MnFINRelClientesExtratoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioExtratoCliente,'FormRelatorioExtratoCliente',False,False,'');
end;

procedure TFormPrincipal.MnFINCadCliExtrasDebitoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroContasReceberDebito,'FormCadastroContasReceberDebito',False,False,'');
end;

procedure TFormPrincipal.MnFINRelPagContSaldodeContasaPagarClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioSaldoContasPagarContabil,'FormRelatorioSaldoContasPagarContabil',False,False,'');
end;

procedure TFormPrincipal.MnFINFuncionarioClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroFuncionario, 'FormCadastroFuncionario',False,False,'');

end;

procedure TFormPrincipal.MnFINPAGBaixarDocumentosFuncClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaBaixaFuncionarioContaCorrente, 'FormTelaBaixaFuncionarioContaCorrente',False,False,'');

end;

procedure TFormPrincipal.MnFINRelFunExtratoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioExtratoFuncionario, 'FormRelatorioExtratoFuncionario',False,False,'');

end;

procedure TFormPrincipal.MnFINRelContAuxiliarParaLivroCaixaClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioAuxiliarLivroCaixa, 'FormRelatorioAuxiliarLivroCaixa',False,False,'');

end;

procedure TFormPrincipal.AnlisedeRecebimentos1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioAnaliseRecebimento, 'FormRelatorioAnaliseRecebimento',False,False,'');
end;

procedure TFormPrincipal.MnCartoesCreditoManualClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroCartaoCreditoManual, 'FormCadastroCartaoCreditoManual',False,False,'');
end;

procedure TFormPrincipal.MnFINTipoFornecedorClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTipoFornecedor, 'FormCadastroTipoFornecedor',False,False,'');
end;

procedure TFormPrincipal.MnOperacaoTesourariaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormCadastroOperacaoTesouraria,'FormCadastroOperacaoTesouraria',False,False,'');
end;

procedure TFormPrincipal.MnFINRamoSubRamoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  CriaFormulario(TFormCadastroRamo,'FormCadastroRamo',False,False,'');
end;

end.
