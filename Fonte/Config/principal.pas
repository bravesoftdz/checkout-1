unit principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PrincipalTemplate, ExtCtrls, Menus, ComCtrls, ToolWin, ImgList,
  EWall, jpeg, DB, StdCtrls, XPMan, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, dxGDIPlusClasses;

type
  TFormPrincipal = class(TFormPrincipalTemplate)
    MnCFGCadastros: TMenuItem;
    MnEmpresa: TMenuItem;
    MnTerminais: TMenuItem;
    MnCFGFinanceiro: TMenuItem;
    MnPlanosdeRecebimento: TMenuItem;
    MnOperaesdeCaixa: TMenuItem;
    MnTotalizadoresdeCaixa: TMenuItem;
    MnNumerarios: TMenuItem;
    MnCFGDecretos: TMenuItem;
    MnCFGParametros: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    MnConfGerais: TMenuItem;
    MnCFGConfigVendas: TMenuItem;
    MnOperacoesdeEstoque: TMenuItem;
    MnECF: TMenuItem;
    MnConfigOrdemdePesquisaProduto: TMenuItem;
    MnConfigEmail: TMenuItem;
    MnConvenios: TMenuItem;
    MnEtiquetasdeCodigodeBarras: TMenuItem;
    MnColetores: TMenuItem;
    MnCFGConfigFinanceiro: TMenuItem;
    MnPlanodeContas: TMenuItem;
    MnTipodeDocumentos: TMenuItem;
    MnPortadores: TMenuItem;
    MnBancos: TMenuItem;
    MnOperacoesBancrias: TMenuItem;
    SituaesdeCheques1: TMenuItem;
    MnBalanca: TMenuItem;
    Usuarios: TMenuItem;
    MnCFGEstoque: TMenuItem;
    MnCFGVendas: TMenuItem;
    MnCFGCaixa: TMenuItem;
    MnCFGSairdoSistema: TMenuItem;
    MNCFGCompras: TMenuItem;
    MnCFGConfigCompras: TMenuItem;
    MnCFGCrediario: TMenuItem;
    MnCFGConfigCrediario: TMenuItem;
    MnCGFFaturamento: TMenuItem;
    MnCFGConfigFaturamento: TMenuItem;
    MnCFGConfigInventario: TMenuItem;
    MnIntegracao: TMenuItem;
    MnConfigIntegrador: TMenuItem;
    MnCFGOperacesdeTesouraria: TMenuItem;
    MnCFGConfigRemessaBancos: TMenuItem;
    MnCFGVendasVendedores: TMenuItem;
    MNCFGProdutos: TMenuItem;
    MnCFGProdutosICMS: TMenuItem;
    MnCFGProdutosICMSporUF: TMenuItem;
    MnCFGProdutosUnidades: TMenuItem;
    MnCFGFinanceiroHistoricosPadroes: TMenuItem;
    MnCFGSuporte: TMenuItem;
    MnCFGAdministradores: TMenuItem;
    Frete1: TMenuItem;
    Parmetros1: TMenuItem;
    MnCFGFATCadastrodeOperacoesdeFrete: TMenuItem;
    MnCFGFATCadastrodeOperacoesdeDebitoCredito: TMenuItem;
    MnCFGFATCadastrodeVeiculos: TMenuItem;
    MnCFGCFOP: TMenuItem;
    MNCFGFiscal: TMenuItem;
    MnCFGFISAcumulador: TMenuItem;
    MnCFGFINTipoLiquidacao: TMenuItem;
    MotivosNaoFechamentoVenda: TMenuItem;
    MnPalms: TMenuItem;
    MnDecretos: TMenuItem;
    MnClinica: TMenuItem;
    MnEspecialidades: TMenuItem;
    MnConfigHorariosProf: TMenuItem;
    MnGerarAgendaporProfissional: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    ManutenodaAgenda1: TMenuItem;
    MnFeriados: TMenuItem;
    MnMotivosNaoAtendimento: TMenuItem;
    MnProfissionais: TMenuItem;
    MnRestaurante: TMenuItem;
    MnConfigRest: TMenuItem;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem27: TMenuItem;
    MenuItem28: TMenuItem;
    MenuItem29: TMenuItem;
    MenuItem30: TMenuItem;
    MenuItem31: TMenuItem;
    MenuItem32: TMenuItem;
    MenuItem33: TMenuItem;
    MenuItem34: TMenuItem;
    MenuItem35: TMenuItem;
    MenuItem36: TMenuItem;
    MenuItem37: TMenuItem;
    MenuItem38: TMenuItem;
    MenuItem39: TMenuItem;
    MenuItem40: TMenuItem;
    MenuItem41: TMenuItem;
    MenuItem42: TMenuItem;
    MenuItem43: TMenuItem;
    MenuItem44: TMenuItem;
    MenuItem45: TMenuItem;
    MenuItem46: TMenuItem;
    MenuItem47: TMenuItem;
    MenuItem48: TMenuItem;
    MenuItem49: TMenuItem;
    MenuItem50: TMenuItem;
    MenuItem51: TMenuItem;
    MenuItem52: TMenuItem;
    MenuItem53: TMenuItem;
    MenuItem54: TMenuItem;
    MenuItem55: TMenuItem;
    MenuItem56: TMenuItem;
    MenuItem57: TMenuItem;
    MenuItem58: TMenuItem;
    MenuItem59: TMenuItem;
    MenuItem60: TMenuItem;
    MenuItem61: TMenuItem;
    MenuItem62: TMenuItem;
    MenuItem63: TMenuItem;
    MenuItem64: TMenuItem;
    MenuItem65: TMenuItem;
    MenuItem66: TMenuItem;
    MenuItem67: TMenuItem;
    MenuItem68: TMenuItem;
    MenuItem69: TMenuItem;
    MenuItem70: TMenuItem;
    MenuItem71: TMenuItem;
    MenuItem72: TMenuItem;
    MenuItem73: TMenuItem;
    MenuItem74: TMenuItem;
    MenuItem75: TMenuItem;
    MenuItem76: TMenuItem;
    MenuItem77: TMenuItem;
    MenuItem78: TMenuItem;
    MenuItem79: TMenuItem;
    Servio1: TMenuItem;
    Parmetros2: TMenuItem;
    Servio2: TMenuItem;
    Parmetros3: TMenuItem;
    InstruoBanco1: TMenuItem;
    procedure MnEmpresaClick(Sender: TObject);
    procedure MnTerminaisClick(Sender: TObject);
    procedure MnPlanosdeRecebimentoClick(Sender: TObject);
    procedure MnOperaesdeCaixaClick(Sender: TObject);
    procedure MnTotalizadoresdeCaixaClick(Sender: TObject);
    procedure MnNumerariosClick(Sender: TObject);
    procedure MnCFGDecretosClick(Sender: TObject);
    procedure MnConfGeraisClick(Sender: TObject);
    procedure MnCFGConfigVendasClick(Sender: TObject);
    procedure MnOperacoesdeEstoqueClick(Sender: TObject);
    procedure MnECFClick(Sender: TObject);
    procedure MnConfigOrdemdePesquisaProdutoClick(Sender: TObject);
    procedure MnConfigEmailClick(Sender: TObject);
    procedure MnConveniosClick(Sender: TObject);
    procedure MnEtiquetasdeCodigodeBarrasClick(Sender: TObject);
    procedure MnColetoresClick(Sender: TObject);
    procedure MnCFGConfigFinanceiroClick(Sender: TObject);
    procedure MnPlanodeContasClick(Sender: TObject);
    procedure MnTipodeDocumentosClick(Sender: TObject);
    procedure MnPortadoresClick(Sender: TObject);
    procedure MnBancosClick(Sender: TObject);
    procedure FormPrincipalMnContaCorrenteClick(Sender: TObject);
    procedure MnOperacoesBancriasClick(Sender: TObject);
    procedure SituaesdeCheques1Click(Sender: TObject);
    procedure MnBalancaClick(Sender: TObject);
    procedure UsuariosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MnCFGSairdoSistemaClick(Sender: TObject);
    procedure MnCrediarioClick(Sender: TObject);
    procedure MnCFGConfigComprasClick(Sender: TObject);
    procedure MnCFGConfigCrediarioClick(Sender: TObject);
    procedure MnCFGConfigFaturamentoClick(Sender: TObject);
    procedure MnCFGConfigInventarioClick(Sender: TObject);
    procedure MnConfigIntegradorClick(Sender: TObject);
    procedure MnCFGOperacesdeTesourariaClick(Sender: TObject);
    procedure MnCFGConfigRemessaBancosClick(Sender: TObject);
    procedure MnCFGVendasVendedoresClick(Sender: TObject);
    procedure MnCFGProdutosICMSClick(Sender: TObject);
    procedure MnCFGProdutosICMSporUFClick(Sender: TObject);
    procedure MnCFGProdutosUnidadesClick(Sender: TObject);
    procedure MnCFGFinanceiroHistoricosPadroesClick(Sender: TObject);
    procedure MnCFGAdministradoresClick(Sender: TObject);
    procedure Parmetros1Click(Sender: TObject);
    procedure MnCFGFATCadastrodeOperacoesdeFreteClick(Sender: TObject);
    procedure MnCFGFATCadastrodeOperacoesdeDebitoCreditoClick(
      Sender: TObject);
    procedure MnCFGFATCadastrodeVeiculosClick(Sender: TObject);
    procedure MnCFGCFOPClick(Sender: TObject);
    procedure MnCFGFISAcumuladorClick(Sender: TObject);
    procedure MnCFGFINTipoLiquidacaoClick(Sender: TObject);
    procedure MotivosNaoFechamentoVendaClick(Sender: TObject);
    procedure MnPalmsClick(Sender: TObject);
    procedure MnEspecialidadesClick(Sender: TObject);
    procedure MnFeriadosClick(Sender: TObject);
    procedure MnMotivosNaoAtendimentoClick(Sender: TObject);
    procedure MnConfigHorariosProfClick(Sender: TObject);
    procedure MnGerarAgendaporProfissionalClick(Sender: TObject);
    procedure ManutenodaAgenda1Click(Sender: TObject);
    procedure MnProfissionaisClick(Sender: TObject);
    procedure MnConfigRestClick(Sender: TObject);
    procedure Parmetros3Click(Sender: TObject);
    procedure InstruoBanco1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses DataModulo, FormResources, CadastroEmpresa, CadastroCep,
     CadastroTerminal, TelaConsultaPlanoRecebimento, UnSoundPlay,
  CadastroPlanoRecebimento, CadastroOperacaoCaixa, CadastroTotalizadorCaixa,
  CadastroNumerario, CadastroDecreto, TelaConfiguracaoCrediario,
  TelaConfiguracaoEmail, TelaConfiguracaoFinanceiro, TelaConfiguracaoGeral,
  TelaConfiguracaoInventario, TelaConfiguracaoVenda,
  CadastroOperacoesEstoque, CadastroEcf, CadastroProdutoOrdemPesquisa,
  CadastroConvenio, CadastroEtiquetaCodigoBarras, CadastroConfigColetor,
  TelaPlanoContas, CadastroTipoDocumento, CadastroPortador, CadastroBanco,
  CadastroContaCorrente, CadastroOperacaoBanco, CadastroSituacaoCheque,
  CadastroBalanca, CadastroUsuario, TelaConfiguracaoCompra,
  TelaConfiguracaoFaturamento, CadastroConfigIntegracao,
  CadastroOperacaoTesouraria, CadastroConfigRemessaBanco, CadastroVendedor,
  CadastroICMS, CadastroIcmsUf, CadastroUnidade, CadastroHistoricoPadrao,
  CadastroUsuarioMaster, UnitLibrary, TelaConfigTransportadora,
  CadastroOperacaoFrete, CadastroOperacaoFuncionario, CadastroVeiculo,
  CadastroCodigoFiscalOperacao, CadastroAcumulador, CadastroTipoLiquidacao,
  CadastroMotivoNFecVenda, CadastroPalm, CadastroEspecialidade,
  CadastroFeriados, CadastroMotivoNaoAtendimento, CadastroConfigAgenda,
  TelaGeracaoHorario, TelaManutHorario, CadastroProfissional,
  TelaConfigRestaurante, CadastroConfigNotaServico, CadastroInstrucaoBanco;

{$R *.dfm}

procedure TFormPrincipal.MnEmpresaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroEmpresa,'FormCadastroEmpresa',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnTerminaisClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTerminais, 'FormCadastroTerminais',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnPlanosdeRecebimentoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroPlanoRecebimento,'FormCadastroPlanoRecebimento',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnOperaesdeCaixaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroOperacaoCaixa, 'FormCadastroOperacaoCaixa',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnTotalizadoresdeCaixaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTotalizadorCaixa, 'FormCadastroTotalizadorCaixa',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnNumerariosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroNumerario, 'FormCadastroNumerario',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCFGDecretosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroDecreto, 'FormCadastroDecreto',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnConfGeraisClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaConfiguracaoGeral, 'FormTelaConfiguracaoGeral',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCFGConfigVendasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaConfiguracaoVenda, 'FormTelaConfiguracaoVenda',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnOperacoesdeEstoqueClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroOperacoesEstoque, 'FormCadastroOperacoesEstoque',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnECFClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroEcf, 'FormCadastroEcf',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnConfigOrdemdePesquisaProdutoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroProdutoOrdemPesquisa, 'FormCadastroProdutoOrdemPesquisa',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnConfigEmailClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaConfiguracaoEmail, 'FormTelaConfiguracaoEmail',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnConveniosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroConvenio, 'FormCadastroConvenio',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnEtiquetasdeCodigodeBarrasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroEtiquetaCodigoBarras,'FormCadastroEtiquetaCodigoBarras',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnColetoresClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroConfigColetor,'FormCadastroConfigColetor',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCFGConfigFinanceiroClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaConfigFinanceiro,'FormTelaConfigFinanceiro',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnPlanodeContasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaPlanoContas, 'FormTelaPlanoContas',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnTipodeDocumentosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTipoDocumento,'FormCadastroTipoDocumento',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnPortadoresClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroPortador, 'FormCadastroPortador',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnBancosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroBanco, 'FormCadastroBanco',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.FormPrincipalMnContaCorrenteClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroContaCorrente, 'FormCadastroContaCorrente',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnOperacoesBancriasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroOperacaoBanco, 'FormCadastroOperacaoBanco',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.SituaesdeCheques1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroSituacaoCheque, 'FormCadastroSituacaoCheque',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnBalancaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroBalanca,'FormCadastroBalanca',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.UsuariosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroUsuario,'FormCadastroUsuario',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
  inherited;
{  if FileExists('Bmp\Splash.bmp') then
    begin
      ImageLogo.Picture.LoadFromFile('Bmp\Splash.Bmp') ;
    end ;
  if FileExists('Bmp\Splash.jpg') then
    begin
      ImageLogo.Picture.LoadFromFile('Bmp\Splash.jpg') ;
    end ;}
end;

procedure TFormPrincipal.MnCFGSairdoSistemaClick(Sender: TObject);
begin
  inherited;
  FormPrincipal.Close;
  Application.Terminate;
end;

procedure TFormPrincipal.MnCrediarioClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaConfiguracaoCrediario,'FormTelaConfiguracaoCrediario',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCFGConfigComprasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaConfiguracaoCompra,'FormTelaConfiguracaoCompra',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCFGConfigCrediarioClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaConfiguracaoCrediario, 'FormTelaConfiguracaoCrediario',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCFGConfigFaturamentoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaConfiguracaoFaturamento, 'FormTelaConfiguracaoFaturamento',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCFGConfigInventarioClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaConfiguracaoInventario, 'FormTelaConfiguracaoInventario',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnConfigIntegradorClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroConfigIntegracao, 'FormCadastroConfigIntegracao',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCFGOperacesdeTesourariaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroOperacaoTesouraria, 'FormCadastroOperacaoTesouraria',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCFGConfigRemessaBancosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroConfigRemessaBanco,'FormCadastroConfigRemessaBanco',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCFGVendasVendedoresClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroVendedor,'FormCadastroVendedor',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCFGProdutosICMSClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroICMS,'FormCadastroICMS',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCFGProdutosICMSporUFClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroIcmsUF,'FormCadastroIcmsUF',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCFGProdutosUnidadesClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroUnidade,'FormCadastroUnidade',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCFGFinanceiroHistoricosPadroesClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroHistoricoPadrao,'FormCadastroHistoricoPadrao',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCFGAdministradoresClick(Sender: TObject);
var
  Retorno : TInfoRetornoUser;
begin
  inherited;
  if SQLLocate('USUARIO','USUACUSERMASTER','USUAICOD','"S"') <> '' then
    begin
      if AutenticaUsuario(UsuarioAtualNome,'USUACUSERMASTER',Retorno) = 'S' then
        begin
          Application.CreateForm(TFormCadastroUsuarioMaster,FormCadastroUsuarioMaster);
          if not FormCadastroUsuarioMaster.SQLUsuario.Active then FormCadastroUsuarioMaster.SQLUsuario.Open;
          FormCadastroUsuarioMaster.ShowModal;
          FormCadastroUsuarioMaster.Close;
        end
      else
        begin
          Informa('Um usuário master já foi criado, você não tem permissão para criar um usuário master!');
          exit;
        end;
    end
  else
    begin
      Application.CreateForm(TFormCadastroUsuarioMaster,FormCadastroUsuarioMaster);
      if not FormCadastroUsuarioMaster.SQLUsuario.Active then FormCadastroUsuarioMaster.SQLUsuario.Open;
      FormCadastroUsuarioMaster.ShowModal;
      FormCadastroUsuarioMaster.Close;
    end;
end;

procedure TFormPrincipal.Parmetros1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaConfigTransportadora,'FormTelaConfigTransportadora',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCFGFATCadastrodeOperacoesdeFreteClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroOperacaoFrete,'FormCadastroOperacaoFrete',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCFGFATCadastrodeOperacoesdeDebitoCreditoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroOperacaoFuncionario,'FormCadastroOperacaoFuncionario',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCFGFATCadastrodeVeiculosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroVeiculo,'FormCadastroVeiculo',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCFGCFOPClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroCodigoFiscalOperacao,'FormCadastroCodigoFiscalOperacao',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCFGFISAcumuladorClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroAcumulador,'FormCadastroAcumulador',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCFGFINTipoLiquidacaoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTipoLiquidacao,'FormCadastroTipoLiquidacao',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MotivosNaoFechamentoVendaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroMotivoNFecVenda,'FormCadastroMotivoNFecVenda',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnPalmsClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroPalm,'FormCadastroPalm',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnEspecialidadesClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroEspecialidade,'FormCadastroEspecialidade',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFeriadosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroFeriados,'FormCadastroFeriados',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnMotivosNaoAtendimentoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroMotivoNaoAtendimento,'FormCadastroMotivoNaoAtendimento',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnConfigHorariosProfClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroConfigAgendaProf,'FormCadastroConfigAgendaProf',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnGerarAgendaporProfissionalClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaGeracaoHorario,'FormTelaGeracaoHorario',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.ManutenodaAgenda1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaManutHorario,'FormTelaManutHorario',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnProfissionaisClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroProfissional,'FormCadastroProfissional',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnConfigRestClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaConfigRestaurante, 'FormTelaConfigRestaurante',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.Parmetros3Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroNotaServico, 'FormCadastroNotaServico',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.InstruoBanco1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroInstrucaoBanco, 'FormCadastroInstrucaoBanco',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

end.
