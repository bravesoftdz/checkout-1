unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PrincipalTemplate, Menus, EWall, jpeg, ExtCtrls,
  ComCtrls, ToolWin, DB, ImgList, DBTables, StdCtrls;

type
  TFormPrincipal = class(TFormPrincipalTemplate)
    mnCadastro: TMenuItem;
    mnClientes: TMenuItem;
    mnEspaco2: TMenuItem;
    mnSairSistema: TMenuItem;
    mnStatus: TMenuItem;
    mnFormasdeEnvio: TMenuItem;
    mnNegcio: TMenuItem;
    mnVendedor: TMenuItem;
    mnUtilitarios: TMenuItem;
    Pesquisa1: TMenuItem;
    N1: TMenuItem;
    mnRelatrios: TMenuItem;
    mnHistricos: TMenuItem;
    SQLAgendaVer: TQuery;
    N2: TMenuItem;
    MnFuncionarios: TMenuItem;
    ControleDiriodeKM1: TMenuItem;
    MnKilometragemDiariaporFuncionario: TMenuItem;
    MnTiposTarefas: TMenuItem;
    procedure mnClientesClick(Sender: TObject);
    procedure mnSairSistemaClick(Sender: TObject);
    procedure mnStatusClick(Sender: TObject);
    procedure mnFormasdeEnvioClick(Sender: TObject);
    procedure mnNegcioClick(Sender: TObject);
    procedure mnVendedorClick(Sender: TObject);
    procedure Pesquisa1Click(Sender: TObject);
    procedure mnHistricosClick(Sender: TObject);
    procedure MnFuncionariosClick(Sender: TObject);
    procedure ControleDiriodeKM1Click(Sender: TObject);
    procedure MnKilometragemDiariaporFuncionarioClick(Sender: TObject);
    procedure MnTiposTarefasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses UnitLibrary, FormResources, CadastroHistorico,
  CadastroFormasDeEnvio,
    CadastroBanco, CadastroNegocioComposto, TelaConsultaHistorico,
  CadastroStatus, CadastroClientePropect, CadastroVendedor,
  RelatorioHistorico, DataModulo, VarSYS, CadastroFuncionario, CadastroKMDIA, RelatorioKMDia,
  CadastroTipoTarefa;

{$R *.dfm}

procedure TFormPrincipal.mnClientesClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroClientePropect, 'FormCadastroClientePropect', False, False, False,'');
end;

procedure TFormPrincipal.mnSairSistemaClick(Sender: TObject);
begin
  inherited;
  Application.Terminate;
end;

procedure TFormPrincipal.mnStatusClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroStatus,'FormCadastroStatus',False,False,True,'');
end;

procedure TFormPrincipal.mnFormasdeEnvioClick(Sender: TObject);
begin
  inherited;
   CriaFormulario(TFormCadastroFormasDeEnvio,'FormCadastroFormasDeEnvio',False,False,True,'');
end;

procedure TFormPrincipal.mnNegcioClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroNegocioComposto,'FormCadastroNegocioComposto',False,False,True,'');
end;

procedure TFormPrincipal.mnVendedorClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroVendedor,'FormCadastroVendedor',False,False,True,'');
end;

procedure TFormPrincipal.Pesquisa1Click(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormTelaConsultaHistorico,'FormTelaConsultaHistorico',False, False,False,'');
end;

procedure TFormPrincipal.mnHistricosClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormRelatorioHistorico,'FormRelatorioHistorico', False,False,False,'');
end;

procedure TFormPrincipal.MnFuncionariosClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroFuncionario,'FormCadastroFuncionario',False,False,True,'');
end;

procedure TFormPrincipal.ControleDiriodeKM1Click(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroKMDIA,'FormCadastroKMDIA',False,False,False,'');
end;

procedure TFormPrincipal.MnKilometragemDiariaporFuncionarioClick(
  Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormRelatorioKMDia,'FormRelatorioKMDia',False,False,False,'');
end;

procedure TFormPrincipal.MnTiposTarefasClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroTipoTarefa,'FormCadastroTipoTarefa',False,False,True,'');
end;

end.
