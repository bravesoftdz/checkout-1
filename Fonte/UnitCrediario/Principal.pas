unit Principal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PrincipalTemplate, Menus, ExtCtrls, jpeg, ComCtrls, ToolWin, FormResources,
  VarSys, EWall;

type
  TFormPrincipal = class(TFormPrincipalTemplate)
    CREDMNArquivos: TMenuItem;
    CREDMNRotinas: TMenuItem;
    CREDMNRelatorios: TMenuItem;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    CREDMnCadastroClientes: TMenuItem;
    CREDMnCadastroClientesCadastro: TMenuItem;
    CREDMnCadastroClientesTipoCliente: TMenuItem;
    CREDMnCadastroClientesProfissoes: TMenuItem;
    CREDMnCadastroClientesMotivoBloquerio: TMenuItem;
    CREDMnSairdoSistema: TMenuItem;
    N2: TMenuItem;
    CREDMnRotinasGeracaoCartasAviso: TMenuItem;
    CREDMnRotinasReabilitcaoCredito: TMenuItem;
    CREDMnRelatoriosReabilitacaoSPC: TMenuItem;
    CREDMnCadastroCupons: TMenuItem;
    CREDMnRelatorioExtratoClientes: TMenuItem;
    EvWallPaper: TEvWallPaper;
    CREDMNUtilitarios: TMenuItem;
    CREDMnUtilitariosControledeAcesso: TMenuItem;
    ToolButton4: TToolButton;
    N3: TMenuItem;
    CREDMnUtilitariosDadosVerso: TMenuItem;
    MnCREDVendasporperiodo: TMenuItem;
    MnCREDContasreceber: TMenuItem;
    MNCREDRELEmitidas: TMenuItem;
    MnCREDRELRecebidas: TMenuItem;
    MnCREDRELVencidas: TMenuItem;
    MnCREDRELreceber: TMenuItem;
    MnCREDRELClientescadastrados: TMenuItem;
    MnCREDRELClientesbloqueados: TMenuItem;
    MNCREDRELClientesemSPC: TMenuItem;
    procedure CREDMnCadastroClientesCadastroClick(Sender: TObject);
    procedure CREDMnCadastroClientesTipoClienteClick(Sender: TObject);
    procedure CREDMnRotinasGeracaoCartasAvisoClick(Sender: TObject);
    procedure CREDMnCadastroCuponsClick(Sender: TObject);
    procedure CREDMnRotinasReabilitcaoCreditoClick(Sender: TObject);
    procedure CREDMnRelatoriosReabilitacaoSPCClick(Sender: TObject);
    procedure CREDMnRelatorioExtratoClientesClick(Sender: TObject);
    procedure CREDMnUtilitariosControledeAcessoClick(Sender: TObject);
    procedure CREDMnUtilitariosDadosVersoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MNCREDRELEmitidasClick(Sender: TObject);
    procedure MnCREDRELRecebidasClick(Sender: TObject);
    procedure MnCREDRELVencidasClick(Sender: TObject);
    procedure MnCREDRELreceberClick(Sender: TObject);
    procedure MnCREDVendasporperiodoClick(Sender: TObject);
    procedure MnCREDRELClientescadastradosClick(Sender: TObject);
    procedure MnCREDRELClientesbloqueadosClick(Sender: TObject);
    procedure MNCREDRELClientesemSPCClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses CadastroCliente, CadastroTemplate, CadastroTipoCliente,
     TelaEnvioCartasAviso, CadastroCupom,
     TelaReabilitacaoCredito, RelatorioReabilitacaoSPC,
     RelatorioExtratoCliente, CadastroClasse, DataModulo, TelaDadosVersaoCrediario,
     RelatorioContasaReceber, RelatorioContasReceberEmitidas,
     RelatorioContasReceberVencidas, RelatorioContasRecebidas,
     RelatorioVendasPeriodo, RelatorioClienteBloqueado,
     RelatorioClienteCadastrado, RelatorioClientesSPC;

{$R *.DFM}

procedure TFormPrincipal.CREDMnCadastroClientesCadastroClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroCliente,'FormCadastroCliente',False,False,'');
end;

procedure TFormPrincipal.CREDMnCadastroClientesTipoClienteClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTipoCliente,'FormCadastroTipoCliente',False,False,'');
end;

procedure TFormPrincipal.CREDMnRotinasGeracaoCartasAvisoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaEnvioCartasAviso,'FormTelaEnvioCartasAviso',False,False,'');
end;

procedure TFormPrincipal.CREDMnCadastroCuponsClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroCupom,'FormCadastroCupom', False, False,'');
end;

procedure TFormPrincipal.CREDMnRotinasReabilitcaoCreditoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaReabilitacaoCredito,'FormTelaReabilitacaoCredito', False, False,'');
end;

procedure TFormPrincipal.CREDMnRelatoriosReabilitacaoSPCClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioReabilitacaoSPC,'FormRelatorioReabilitacaoSPC', False, False,'');
end;

procedure TFormPrincipal.CREDMnRelatorioExtratoClientesClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioExtratoCliente, 'FormRelatorioExtratoCliente', False, False, '');
end;

procedure TFormPrincipal.CREDMnUtilitariosControledeAcessoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroClasse, 'FormCadastroClasse', False, False, '');
end;

procedure TFormPrincipal.CREDMnUtilitariosDadosVersoClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormTelaDadosVersaoCrediario, 'FormTelaDadosVersaoCrediario', False, False, '');
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
  inherited;
  if FileExists('Bmp\Fundo.bmp') then
    begin
      EvWallPaper.Picture.LoadFromFile('Bmp\Fundo.Bmp') ;
    end ;
  if FileExists('Bmp\Fundo.jpg') then
    begin
      EvWallPaper.Picture.LoadFromFile('Bmp\Fundo.jpg') ;
    end ;
end;

procedure TFormPrincipal.MNCREDRELEmitidasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasReceberEmitidas, 'FormRelatorioContasReceberEmitidas', False, False, '');
end;

procedure TFormPrincipal.MnCREDRELRecebidasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasRecebidas, 'FormRelatorioContasRecebidas', False, False, '');

end;

procedure TFormPrincipal.MnCREDRELVencidasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasReceberVencidas, 'FormRelatorioContasReceberVencidas', False, False, '');

end;

procedure TFormPrincipal.MnCREDRELreceberClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasaReceber, 'FormRelatorioContasaReceber', False, False, '');

end;

procedure TFormPrincipal.MnCREDVendasporperiodoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioVendasPeriodo, 'FormRelatorioVendasPeriodo', False, False, '');
end;

procedure TFormPrincipal.MnCREDRELClientescadastradosClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioClienteCadastrado, 'FormRelatorioClienteCadastrado', False, False, '');
end;

procedure TFormPrincipal.MnCREDRELClientesbloqueadosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioClienteBloqueado, 'FormRelatorioClienteBloqueado', False, False, '');
end;

procedure TFormPrincipal.MNCREDRELClientesemSPCClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioClientesSPC, 'FormRelatorioClientesSPC', False, False, '');
end;

procedure TFormPrincipal.FormActivate(Sender: TObject);
begin
  inherited;
  Dm.SQLConfigGeral.Close;
  Dm.SQLConfigGeral.Open;
  Dm.SQLConfigVenda.Close;
  Dm.SQLConfigVenda.Open;
  Dm.SQLConfigCrediario.Close;
  Dm.SQLConfigCrediario.Open;
  Dm.SQLUsuarios.Close;
  Dm.SQLUsuarios.Open;
  Dm.SQLTerminalAtivo.Close;
  Dm.SQLTerminalAtivo.Open;
end;

end.
