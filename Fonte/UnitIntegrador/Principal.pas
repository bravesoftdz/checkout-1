unit Principal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PrincipalTemplate, Menus, ExtCtrls, jpeg, ComCtrls, ToolWin, FormResources,
  VarSys, EWall, DB, ImgList, StdCtrls, XPMan, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvGlowButton, dxGDIPlusClasses;

type
  TFormPrincipal = class(TFormPrincipalTemplate)
    INTGMNUtilitarios: TMenuItem;
    INTGMNIntegracaoFiliaisExportacaoLOG: TMenuItem;
    INTGMNIntegracaoFiliaisImportacaoLOG: TMenuItem;
    INTGMNIntegracaoFiliaisReativacaoLOG: TMenuItem;
    INTGMNUtilitariosControleAcesso: TMenuItem;
    INTGMNIntegracao: TMenuItem;
    INTGMNIntegracaoFiliais: TMenuItem;
    INTGMNIntegracaoTerminais: TMenuItem;
    INTGMNIntegracaoTerminaisImportarMovimetacao: TMenuItem;
    INTGMNIntegracaoTerminaisExportarProdutos: TMenuItem;
    INTGMNIntegracaoTerminaisLimparMovimentacao: TMenuItem;
    MnINTContabilidade: TMenuItem;
    MnINTContabilidadeExportaodeDados: TMenuItem;
    MnINTContabilidadeExportacaoRECH: TMenuItem;
    Cadastros1: TMenuItem;
    ExportaodeLOG1: TMenuItem;
    MnINTContDominio: TMenuItem;
    BrasilMobile1: TMenuItem;
    MnExportaDesktopPalm: TMenuItem;
    MnImportaPalmDesktop: TMenuItem;
    MnSintegra: TMenuItem;
    MnEstrategia: TMenuItem;
    Farmacias1: TMenuItem;
    MnProdutos: TMenuItem;
    SpedFiscal1: TMenuItem;
    Prosoft1: TMenuItem;
    N1: TMenuItem;
    LerArquivosECFDaruma1: TMenuItem;
    Seller1: TMenuItem;
    MNExportacaoSeller: TMenuItem;
    MNImportacaoSeller: TMenuItem;
    procedure INTGMNIntegracaoFiliaisExportacaoLOGClick(Sender: TObject);
    procedure INTGMNIntegracaoFiliaisImportacaoLOGClick(Sender: TObject);
    procedure INTGMNIntegracaoFiliaisReativacaoLOGClick(Sender: TObject);
    procedure INTGMNUtilitariosControleAcessoClick(Sender: TObject);
    procedure INTGMNIntegracaoTerminaisImportarMovimetacaoClick(
      Sender: TObject);
    procedure INTGMNIntegracaoTerminaisExportarProdutosClick(
      Sender: TObject);
    procedure INTGMNIntegracaoTerminaisLimparMovimentacaoClick(
      Sender: TObject);
    procedure MnINTContabilidadeExportacaoRECHClick(Sender: TObject);
    procedure ExportaodeLOG1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MnINTContDominioClick(Sender: TObject);
    procedure MnExportaDesktopPalmClick(Sender: TObject);
    procedure MnImportaPalmDesktopClick(Sender: TObject);
    procedure MnSintegraClick(Sender: TObject);
    procedure MnEstrategiaClick(Sender: TObject);
    procedure SpedFiscal1Click(Sender: TObject);
    procedure Prosoft1Click(Sender: TObject);
    procedure LerArquivosECFDaruma1Click(Sender: TObject);
    procedure MNExportacaoSellerClick(Sender: TObject);
    procedure MNImportacaoSellerClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses CadastroTemplate, TelaExportacao, TelaImportacao, TelaReativacao,
     CadastroClasse, TelaPlanoContas, TelaImportarMovimentacaoTerminal,
     TelaExportarProdutoPDV, TelaLimpaMovimentacaoTerminal,
     TelaExportacaoDadosRech, DataModulo, TelaExportacaoCadastros,
     TelaExportacaoDadosDominio, TelaExportacaoBrasilMobile,
     TelaImportacaoBrasilMobile, TelaExportacaoSintegra,
     TelaExportacaoCaixaEstrategia, TelaExportacaoSPED,
     TelaExportacaoProsoft, TelaImportaSPEDDaruma, TelaExportacaoSeller,
  TelaImportacaoSeller;

{$R *.DFM}

procedure TFormPrincipal.INTGMNIntegracaoFiliaisExportacaoLOGClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaExportacao,'FormTelaExportacao',False,False,True,'');
end;

procedure TFormPrincipal.INTGMNIntegracaoFiliaisImportacaoLOGClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaImportacao,'FormTelaImportacao',False,False,True,'');
end;

procedure TFormPrincipal.INTGMNIntegracaoFiliaisReativacaoLOGClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaReativacao,'FormTelaReativacao',False,False,True,'');
end;

procedure TFormPrincipal.INTGMNUtilitariosControleAcessoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroClasse,'FormCadastroClasse',False,False,True,'');
end;

procedure TFormPrincipal.INTGMNIntegracaoTerminaisImportarMovimetacaoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaImportarMovimentacaoTerminal,'FormTelaImportarMovimentacaoTerminal',False,False,True,'');
end;

procedure TFormPrincipal.INTGMNIntegracaoTerminaisExportarProdutosClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaExportarProdutoPDV,'FormTelaExportarProdutoPDV',False,False,True,'');
end;

procedure TFormPrincipal.INTGMNIntegracaoTerminaisLimparMovimentacaoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaLimpaMovimentacaoTerminal, 'FormTelaLimpaMovimentacaoTerminal',False,False,True,'');
end;

procedure TFormPrincipal.MnINTContabilidadeExportacaoRECHClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaExportacaoDadosRech, 'FormTelaExportacaoDadosRech',False,False,True,'');
end;

procedure TFormPrincipal.ExportaodeLOG1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaExportacaoCadastros, 'FormTelaExportacaoCadastros',False,False,True,'');
end;

procedure TFormPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DM.DB.Close;
end;

procedure TFormPrincipal.MnINTContDominioClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaExportacaoDadosDominio, 'FormTelaExportacaoDadosDominio',False,False,True,'');
end;

procedure TFormPrincipal.MnExportaDesktopPalmClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaExportaBrasilMobile, 'FormTelaExportaBrasilMobile',False,False,True,'');
end;

procedure TFormPrincipal.MnImportaPalmDesktopClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaImportacaoBrasilMobile, 'FormTelaImportacaoBrasilMobile',False,False,True,'');
end;

procedure TFormPrincipal.MnSintegraClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaExportacaoSintegra, 'FormTelaExportacaoSintegra',False,False,True,'');
end;

procedure TFormPrincipal.MnEstrategiaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaExportacaoCaixaEstrategia, 'FormTelaExportacaoCaixaEstrategia',False,False,True,'');
end;

procedure TFormPrincipal.SpedFiscal1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaExportacaoSped, 'FormTelaExportacaoSped',False,False,True,'');
end;

procedure TFormPrincipal.Prosoft1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaExportacaoProsoft, 'FormTelaExportacaoProsoft',False,False,True,'');

end;

procedure TFormPrincipal.LerArquivosECFDaruma1Click(Sender: TObject);
begin
  inherited;
   if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormImportaSPEDDaruma, 'FormImportaSPEDDaruma',False,False,True,'');
end;

procedure TFormPrincipal.MNExportacaoSellerClick(Sender: TObject);
begin
  inherited;
   if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaExportacaoSeller, 'FormTelaExportacaoSeller',False,False,True,'');
end;

procedure TFormPrincipal.MNImportacaoSellerClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaImportacaoSeller, 'FormTelaImportacaoSeller',False,False,True,'');
end;

end.
