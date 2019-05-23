unit Principal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PrincipalTemplate, Menus, ExtCtrls, jpeg, ComCtrls, ToolWin, FormResources,
  VarSys, EWall, DB, ImgList, StdCtrls, Buttons, DBTables, RxQuery, Grids,
  DBGrids, RXDBCtrl, AdvGlowButton, XPMan, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, dxGDIPlusClasses, RXCtrls;

type
  TFormPrincipal = class(TFormPrincipalTemplate)
    MnFINCadastros: TMenuItem;
    MnFINPagar: TMenuItem;
    MNFINRelatorios: TMenuItem;
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
    MnFINRelCheques: TMenuItem;
    MnFINRelChequesRecebidos: TMenuItem;
    N6: TMenuItem;
    MnFINUtilitariosDadosVersao: TMenuItem;
    MnFINCadastroFornecedor: TMenuItem;
    MNFINRelBancoExtratoBancario: TMenuItem;
    MnFINReceberEmissaoBoletosDuplicatas: TMenuItem;
    MnFINChequesRecebidosLancamentos: TMenuItem;
    MnFINCheRecebidosBaixaChequesRecebidos: TMenuItem;
    MnChqEmitidosLancamentosCheuqesEmitidos: TMenuItem;
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
    MnFINRelCaixaMovimentacaodeCaixa: TMenuItem;
    MnFINRelChequesEmitidos: TMenuItem;
    MnFINReceberDuplicatasGeracaoDuplicatas: TMenuItem;
    MnFINReceberDuplicatas: TMenuItem;
    MnFinReceberDuplicatasCadastrodeDuplicatas: TMenuItem;
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
    MnFINCadastroProtocoloChequeRecebido: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    MnAgendaTelefonica: TMenuItem;
    MnMostrarResumoFinanceiro: TMenuItem;
    MnGerenciarTarefas: TMenuItem;
    N19: TMenuItem;
    MnAdicionarTarefas: TMenuItem;
    MnConfigPopLembreteTarefa: TMenuItem;
    SQLAgendaVer: TQuery;
    TimeLembrete: TTimer;
    MnAcompanharTarefascriadaspeloUsuarioAtual: TMenuItem;
    RxLabel5: TRxLabel;
    bClientes: TAdvGlowButton;
    SQLClienteFaturaMensal: TRxQuery;
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
    procedure MnFINUtilitariosDadosVersaoClick(Sender: TObject);
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
    procedure MnFINReceberDuplicatasGeracaoDuplicatasClick(Sender: TObject);
    procedure MnFinReceberDuplicatasCadastrodeDuplicatasClick(
      Sender: TObject);
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
    procedure MnFINPAGBaixarDocumentosFuncClick(Sender: TObject);
    procedure MnFINRelFunExtratoClick(Sender: TObject);
    procedure MnFINRelContAuxiliarParaLivroCaixaClick(Sender: TObject);
    procedure AnlisedeRecebimentos1Click(Sender: TObject);
    procedure MnCartoesCreditoManualClick(Sender: TObject);
    procedure MnFINTipoFornecedorClick(Sender: TObject);
    procedure MnOperacaoTesourariaClick(Sender: TObject);
    procedure MnFINRamoSubRamoClick(Sender: TObject);
    procedure MnFINCadastroProtocoloChequeRecebidoClick(Sender: TObject);
    procedure MnAgendaTelefonicaClick(Sender: TObject);
    procedure MnMostrarResumoFinanceiroClick(Sender: TObject);
    procedure MnGerenciarTarefasClick(Sender: TObject);
    procedure MnAdicionarTarefasClick(Sender: TObject);
    procedure MnConfigPopLembreteTarefaClick(Sender: TObject);
    procedure TimeLembreteTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MnAcompanharTarefascriadaspeloUsuarioAtualClick(
      Sender: TObject);
    procedure bClientesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  RelatorioContasReceberVencidas, RelatorioContasRecebidas, UnSoundPlay,
  RelatorioContasPagarPAGAS, RelatorioContasPagarAPAGAR,
  RelatorioContasPagarVENCIDAS, TelaBaixarDocumentosPagar, CadastroClasse,
  CadastroChequesRecebidos, TelaDadosVersaoFin,
  RelatorioChequesRecebidos, TelaBaixarChequesRecebidos,
  CadastroSituacaoCheque, CadastroFornecedor, CadastroMovimentoBanco,
  CadastroOperacaoBanco, CadastroContaCorrente,
  RelatorioExtratoMovimentoBanco, TelaPlanoContas, DataModulo,
  TelaImpressaoDuplicatas, CadastroChequeEmitido, TelaBaixarChequesEmitidos,
  CadastroRemessaBancos, CadastroTesouraria, CadastroRecibo,
  RelatorioContasReceberEmitidas, RelatorioContasPagarEMITIDAS,
  RelatorioReceitasDespesasPlanoContas, RelatorioFluxoCaixa,
  RelatorioBoletimCaixaTesouraria, RelatorioMovimentacaoTesouraria,
  RelatorioChequeEmitido, TelaGeracaoDuplicata, CadastroDuplicata,
  RelatorioSaldoDiarioTesouraria, RelatorioPosicaoFinanceiraConsolidada,
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
  CadastroOperacaoTesouraria, CadastroRamo, CadastroProtocoloChequeRecebido,
  CadastroAgendaTelefonica, TelaLembreteTarefa, TelaCadastroTarefa, ConfigPopUp,
  TelaResumoFinanceiro, TelaLembreteTarefa2 , DataModuloTemplate;

{$R *.DFM}

procedure TFormPrincipal.MnFINCadastroClientesCadastroClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroCliente,'FormCadastroCliente',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINCadastroClientesTipodeClienteClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTipoCliente,'FormCadastroTipoCliente',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);    
end;

procedure TFormPrincipal.MnFINCadastroBancosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroBanco, 'FormCadastroBanco',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);    
end ;

procedure TFormPrincipal.MnFINCadastroTiposDocumentosClick(Sender: TObject);
begin
  inherited ;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTipoDocumento, 'FormCadastroTipoDocumento',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end ;

procedure TFormPrincipal.FINAMnCadastroPortadoresClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroPortador, 'FormCadastroPortador',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINReceberLancamentosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroContasReceber, 'FormCadastroContasReceber',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINReceberBaixarDocumentosClick(Sender: TObject);
begin
  inherited;
  if dm.SQLLocate('USUARIO','USUAICOD','USUACBXCRECFIN',INTTOSTR(UsuarioCorrente)) <> 'S' then
    Showmessage('Você não possui acesso a esta rotina! Entre em contato com o administrador do sistema!')
  else
    if DM.Acesso((Sender as TMenuItem).Name) > 0 then
      CriaFormulario(TFormTelaBaixarDocumentosReceber, 'FormTelaBaixarDocumentosReceber',False,False,False,'')
    else
      soundplay('acesso negado.wav',sender);
end;

procedure TFormPrincipal.MnFINPagarLancamentosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroContasPagar, 'FormCadastroContasPagar',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);    
end;

procedure TFormPrincipal.MnFINRelReceberAReceberClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasaReceber, 'FormRelatorioContasaReceber',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);    
end;

procedure TFormPrincipal.MnFINRelContasPagarPagasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasPagarPAGAS, 'FormRelatorioContasPagarPAGAS',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);    
end;

procedure TFormPrincipal.MnFINRelContasPagarVencidasClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasPagarVENCIDAS, 'FormRelatorioContasPagarVENCIDAS',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);    
end;

procedure TFormPrincipal.MnFINRelContasPagarAPagarClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasPagarAPAGAR, 'FormRelatorioContasPagarAPAGAR',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);    
end;

procedure TFormPrincipal.MnFINPagarBaixarDocumentosClick(Sender: TObject);
begin
  inherited;
  if dm.SQLLocate('USUARIO','USUAICOD','USUACBXCPAGFIN',INTTOSTR(UsuarioCorrente)) <> 'S' then
    Showmessage('Você não possui acesso a esta rotina! Entre em contato com o administrador do sistema!')
  else
    if DM.Acesso((Sender as TMenuItem).Name) > 0 then
      CriaFormulario(TFormTelaBaixarDocumentosPagar, 'FormTelaBaixarDocumentosPagar',False,False,False,'')
    else
      SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINUtilitariosCadastroControleAcessoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroClasse, 'FormCadastroClasse',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINUtilitariosDadosVersaoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaDadosVersaoFin, 'FormTelaDadosVersaoFin',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINCadastroPlanoContasClick(Sender: TObject) ;
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaPlanoContas, 'FormTelaPlanoContas',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINRelChequesRecebidosClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioChequeRecebidos, 'FormRelatorioChequeRecebidos',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINCadastroSituacoesChequesClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroSituacaoCheque, 'FormCadastroSituacaoCheque',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINCadastroFornecedorClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroFornecedor, 'FormCadastroFornecedor',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINBancosLancarMovimentacoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroMovimentoBanco, 'FormCadastroMovimentoBanco',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINCadastroOperacoesBancariasClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroOperacaoBanco, 'FormCadastroOperacaoBanco',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MNFINRelBancoExtratoBancarioClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioExtratoMovimentoBanco, 'FormRelatorioExtratoMovimentoBanco',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINReceberEmissaoBoletosDuplicatasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaImpressaoDuplicata,'FormTelaImpressaoDuplicata',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINCheRecebidosBaixaChequesRecebidosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaBaixarChequesRecebidos, 'FormTelaBaixarChequesRecebidos',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINChequesRecebidosLancamentosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroChequesRecebidos, 'FormCadastroChequesRecebidos',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnChqEmitidosLancamentosCheuqesEmitidosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroChequeEmitido,'FormCadastroChequeEmitido',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.FormPrincipalB1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaBaixarChequeEmitido,'FormTelaBaixarChequeEmitido',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINBancosRemessaArquivoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroRemessaBancos,'FormCadastroRemessaBancos',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINTesLancamentosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTesouraria,'FormCadastroTesouraria',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINTesEmisscaodeRecibosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroRecibo,'FormCadastroRecibo',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINRelReceberEmitidasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasReceberEmitidas,'FormRelatorioContasReceberEmitidas',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINRelPagarEmitidasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasPagarEmitidas,'FormRelatorioContasPagarEmitidas',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINRelPlanodeContasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioReceitasDespesasPlanoContas,'FormRelatorioReceitasDespesasPlanoContas',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINRelFluxodeCaixaDiarioClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioFluxoCaixa,'FormRelatorioFluxoCaixa',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINRelCaixaBoletimdeCaixaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioBoletimCaixaTesouraria,'FormRelatorioBoletimCaixaTesouraria',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINRelReceberRecebidasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasRecebidas, 'FormRelatorioContasRecebidas',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINRelReceberVencidasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasReceberVencidas, 'FormRelatorioContasReceberVencidas',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINRelCaixaMovimentacaodeCaixaClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioMovimentacaoTesouraria, 'FormRelatorioMovimentacaoTesouraria',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINRelChequesEmitidosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioChequeEmitido, 'FormRelatorioChequeEmitido',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINReceberDuplicatasGeracaoDuplicatasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaGeracaoDuplicata,'FormTelaGeracaoDuplicata',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFinReceberDuplicatasCadastrodeDuplicatasClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroDuplicata,'FormCadastroDuplicata',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINRelTesourariaSaldoDiarioConsolidadoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioSaldoDiarioTesouraria,'FormRelatorioSaldoDiarioTesouraria',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINBancosContaCorrenteClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroContaCorrente,'FormCadastroContaCorrente',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINRelPosicaoFinanceiraConsolidadaClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioSaldoDiarioPosicaoFinanceiraConsolidada,'FormRelatorioSaldoDiarioPosicaoFinanceiraConsolidada',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINRelContSaldodeContasReceberClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioSaldoContasReceberContabil,'FormRelatorioSaldoContasReceberContabil',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINCadTipoLiquidacaoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTipoLiquidacao,'FormCadastroTipoLiquidacao',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINRELRecebidasPorSetorClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasRecebidasPorSetor,'FormRelatorioContasRecebidasPorSetor',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINRELRecebidasPorTipodeLiquidacaoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasRecebidasTipoLiquidacao,'FormRelatorioContasRecebidasTipoLiquidacao',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINRELContasPagasPorTipodeLiquidcaoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasPagasTipoLiquidacao,'FormRelatorioContasPagasTipoLiquidacao',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.PagasPorOrigem1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasPagasPorOrigem,'FormRelatorioContasPagasPorOrigem',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINRELRecebidasPorEmpresaOrigemRecebtoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasRecebidasPorEmpresa,'FormRelatorioContasRecebidasPorEmpresa',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINRELContasReceberVencidasAvalistaClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasReceberVencidasAvalista,'FormRelatorioContasReceberVencidasAvalista',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
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
    CriaFormulario(TFormCadastroHistoricoPadrao,'FormCadastroHistoricoPadrao',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINCadCliExtrasCreditoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroContasReceberCredito,'FormCadastroContasReceberCredito',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINRelClientesCreditoDebitoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioCreditoDebitoPorCliente,'FormRelatorioCreditoDebitoPorCliente',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINRelClientesExtratoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioExtratoCliente,'FormRelatorioExtratoCliente',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINCadCliExtrasDebitoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroContasReceberDebito,'FormCadastroContasReceberDebito',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINRelPagContSaldodeContasaPagarClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioSaldoContasPagarContabil,'FormRelatorioSaldoContasPagarContabil',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINPAGBaixarDocumentosFuncClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaBaixaFuncionarioContaCorrente, 'FormTelaBaixaFuncionarioContaCorrente',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINRelFunExtratoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioExtratoFuncionario, 'FormRelatorioExtratoFuncionario',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINRelContAuxiliarParaLivroCaixaClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioAuxiliarLivroCaixa, 'FormRelatorioAuxiliarLivroCaixa',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.AnlisedeRecebimentos1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioAnaliseRecebimento, 'FormRelatorioAnaliseRecebimento',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCartoesCreditoManualClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroCartaoCreditoManual, 'FormCadastroCartaoCreditoManual',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINTipoFornecedorClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTipoFornecedor, 'FormCadastroTipoFornecedor',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnOperacaoTesourariaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroOperacaoTesouraria,'FormCadastroOperacaoTesouraria',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINRamoSubRamoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroRamo,'FormCadastroRamo',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINCadastroProtocoloChequeRecebidoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroProtocoloChequeRecebido,'FormCadastroProtocoloChequeRecebido',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnAgendaTelefonicaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroAgendaTelefonica,'FormCadastroAgendaTelefonica',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnMostrarResumoFinanceiroClick(Sender: TObject);
begin
  inherited;
  if dm.SQLLocate('USUARIO','USUAICOD','USUACRESUMOFIN',INTTOSTR(UsuarioCorrente)) = 'S' then
    begin
      Application.CreateForm(TFormTelaResumoFinanceiro,FormTelaResumoFinanceiro);
      FormTelaResumoFinanceiro.ShowModal;
    end
  else
    begin
      try SoundPlay('Acesso Negado.wav',Sender); except Application.ProcessMessages; end;
      ShowMessage('Acesso Negado! Usuario sem permissão para ver o Resumo Financeiro!');
    end;
end;

procedure TFormPrincipal.MnGerenciarTarefasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    begin
      Application.CreateForm(TFormTelaLembreteTarefa,FormTelaLembreteTarefa);
      FormTelaLembreteTarefa.ShowModal;
    end
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnAdicionarTarefasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    begin
      Application.CreateForm(TFormTelaCadastroTarefa,FormTelaCadastroTarefa);
      FormTelaCadastroTarefa.ShowModal;
    end
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnConfigPopLembreteTarefaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    begin
      Application.CreateForm(TFormConfigPopUp,FormConfigPopUp);
      FormConfigPopUp.ShowModal;
    end
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.TimeLembreteTimer(Sender: TObject);
var AMANHA : STRING;
    Year1, Month1, Day1: Word;
begin
  inherited;
  if DM.SQLPopUPCFGCCEXIBIRPOPTARE.AsString = 'S' then
    begin
      SQLAgendaVer.Close;
      SQLAgendaVer.SQL.Text := 'Select Count(*) From TAREFA Where  USUAICODDEST = ' + IntToStr(UsuarioCorrente) + ' and TARECSTATUS <> "T"';
      SQLAgendaVer.Open;
      if (SQLAgendaVer.FieldByName('Count').AsInteger > 0) then
        begin
          if Application.FindComponent('FormTelaLembreteTarefa') = nil then
            begin
              Application.CreateForm(TFormTelaLembreteTarefa,FormTelaLembreteTarefa);
              FormTelaLembreteTarefa.Show;
            end;  
        end;
    end;
end;

procedure TFormPrincipal.FormShow(Sender: TObject);
var ID, dia, mes, ano : string;
begin
  inherited;
  {Gera Fatura Mensal}
  if (dm.SQLConfigGeralCFGECFATURAMENSAL.AsString = 'S') and (dm.SQLConfigGeralCFGEDFATURAMENSAL.Value < Now) then
    begin
      if Application.MessageBox(PChar('GERAR PARCELAS A RECEBER MENSAIS?'), PChar(Application.Title), MB_SYSTEMMODAL + MB_YesNo + MB_IconQuestion + MB_DEFBUTTON2) = IdNo then
        Exit;

      SQLClienteFaturaMensal.Close;
      SQLClienteFaturaMensal.sql.Text := 'SELECT CLIEA13ID, TPDCICOD, PORTICOD, DIAVENCTO, CTRCN2VLR, PLCTA15COD FROM CLIENTE WHERE (CTRCN2VLR > 0 and TPDCICOD > 0 and PORTICOD > 0 and DIAVENCTO <> "")';
      SQLClienteFaturaMensal.open;
      if not SQLClienteFaturaMensal.IsEmpty then
        begin
          while not SQLClienteFaturaMensal.eof do
            begin
              dm.SQLTemplate.close;
              dm.SQLTemplate.sql.clear;
              dm.SQLTemplate.sql.add('insert into contasreceber (CTRCA13ID, EMPRICOD, TERMICOD, CTRCICOD, CTRCCSTATUS, CTRCCEMITIDOBOLETO, CTRCA5TIPOPADRAO, CTRCINROPARC, CTRCA2MESCOMP, CTRCA4ANOCOMP, CLIEA13ID, CTRCDEMIS, CTRCDVENC, CTRCN2VLR, CTRCN2TOTREC, ');
              dm.SQLTemplate.sql.add('CTRCN2TOTJUROREC, CTRCN2TOTMULTAREC, CTRCN2TOTDESCREC, CTRCN2DESCFIN, TPDCICOD, PORTICOD, PLCTA15COD, CTRCA254HIST, REGISTRO, PENDENTE) ');
              dm.SQLTemplate.sql.add('values (:CTRCA13ID, :EMPRICOD, :TERMICOD, :CTRCICOD, "A", "N","CRD", 1, :CTRCA2MESCOMP, :CTRCA4ANOCOMP, :CLIEA13ID, :CTRCDEMIS, :CTRCDVENC, :CTRCN2VLR, 0.00, 0.00, 0.00, 0.00, 0.00, ');
              dm.SQLTemplate.sql.add(':TPDCICOD, :PORTICOD, :PLCTA15COD, "Contrato Mensal - Lancto Automatico", :REGISTRO, :PENDENTE) ');
              //Pega Prox Codigo por empresa + terminal
              dm.sqlconsulta.Close;
              dm.sqlconsulta.sql.Text := 'Select max(CTRCICOD) from contasreceber where empricod='+intTostr(EmpresaCorrente)+' and termicod='+intTostr(TerminalCorrente);
              dm.sqlconsulta.open;

              ID := Format('%.3d',[EmpresaCorrente])+Format('%.3d',[TerminalCorrente])+Format('%.6d',[dm.sqlconsulta.FieldByName('MAX').AsInteger+1]);
              ID := id + dm.DigitVerifEAN(id);

              dm.SQLTemplate.ParamByName('CTRCA13ID').AsString   := ID;
              dm.SQLTemplate.ParamByName('EMPRICOD').AsInteger   := EmpresaCorrente;
              dm.SQLTemplate.ParamByName('TERMICOD').AsInteger   := TerminalCorrente;
              dm.SQLTemplate.ParamByName('CTRCICOD').AsInteger   := dm.sqlconsulta.FieldByName('MAX').AsInteger + 1;
              dm.SQLTemplate.ParamByName('CLIEA13ID').AsString   := SQLClienteFaturaMensal.fieldbyname('CLIEA13ID').AsString;
              dm.SQLTemplate.ParamByName('CTRCN2VLR').AsString   := SQLClienteFaturaMensal.fieldbyname('CTRCN2VLR').AsString;
              dm.SQLTemplate.ParamByName('TPDCICOD').AsString    := SQLClienteFaturaMensal.fieldbyname('TPDCICOD').AsString;
              dm.SQLTemplate.ParamByName('PORTICOD').AsString    := SQLClienteFaturaMensal.fieldbyname('PORTICOD').AsString;
              dm.SQLTemplate.ParamByName('PLCTA15COD').AsString  := SQLClienteFaturaMensal.fieldbyname('PLCTA15COD').AsString;

              dm.SQLTemplate.ParamByName('CTRCDEMIS').AsDateTime := dm.SQLConfigGeralCFGEDFATURAMENSAL.AsDateTime;

              dia := FormatFloat('00',SQLClienteFaturaMensal.fieldbyname('DIAVENCTO').asinteger);
              mes := FormatDateTime('MM',dm.SQLConfigGeralCFGEDFATURAMENSAL.AsDateTime);
              ano := FormatDateTime('YYYY',dm.SQLConfigGeralCFGEDFATURAMENSAL.AsDateTime);

              dm.SQLTemplate.ParamByName('CTRCDVENC').AsString   := mes+'/'+dia+'/'+ano;

              dm.SQLTemplate.ParamByName('CTRCA2MESCOMP').AsString  := mes;
              dm.SQLTemplate.ParamByName('CTRCA4ANOCOMP').AsString  := ano;

              dm.SQLTemplate.ParamByName('PENDENTE').AsString    := 'S';
              dm.SQLTemplate.ParamByName('REGISTRO').AsDatetime  := now;
              dm.SQLTemplate.Prepare;
              try
                dm.SQLTemplate.ExecSQL;
                application.ProcessMessages;
              except
                application.ProcessMessages;
              end;

              SQLClienteFaturaMensal.next;
            end;
        end;

      dm.SQLConfigGeral.Edit;
      dm.SQLConfigGeralCFGEDFATURAMENSAL.AsString := FormatDateTime('01/mm/yyyy',Now+30);
      dm.SQLConfigGeral.Post;
    end;

  if dm.SQLLocate('USUARIO','USUAICOD','USUACRESUMOFIN',INTTOSTR(UsuarioCorrente)) = 'S' then
    begin
      Application.CreateForm(TFormTelaResumoFinanceiro,FormTelaResumoFinanceiro);
      FormTelaResumoFinanceiro.ShowModal;
    end;
end;

procedure TFormPrincipal.MnAcompanharTarefascriadaspeloUsuarioAtualClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    begin
      Application.CreateForm(TFormTelaLembreteTarefa2,FormTelaLembreteTarefa2);
      FormTelaLembreteTarefa2.ShowModal;
    end
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.bClientesClick(Sender: TObject);
begin
  inherited;
  MnFINCadastroClientesCadastro.Click;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
  inherited;
  FormPrincipal.Menu := MainMenu;
end;

end.
