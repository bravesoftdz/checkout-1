unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PrincipalTemplate, ExtCtrls, Menus, ComCtrls, ToolWin, FormResources,
  jpeg, EWall, Handprot;

type
  TFormPrincipal = class(TFormPrincipalTemplate)
    ButtonArquivo: TToolButton;
    MnArquivo: TMenuItem;
    MnCadastroFrete: TMenuItem;
    MnCadastroFuncionario: TMenuItem;
    MnCadastroVeiculo: TMenuItem;
    MnCadastroOperacaoFrete: TMenuItem;
    MnUtilitario: TMenuItem;
    ButtonUtilitario: TToolButton;
    MnBaixaConta: TMenuItem;
    Mn1: TMenuItem;
    MnConfig: TMenuItem;
    TRANSMnRelatorios: TMenuItem;
    MnRelListagemdeFretes: TMenuItem;
    ButtonRelatorios: TToolButton;
    Conhecimentos1: TMenuItem;
    N1: TMenuItem;
    mnuSair: TMenuItem;
    Comisses1: TMenuItem;
    procedure MnCadastroFreteClick(Sender: TObject);
    procedure MnCadastroFuncionarioClick(Sender: TObject);
    procedure MnCadastroVeiculoClick(Sender: TObject);
    procedure MnCadastroOperacaoFreteClick(Sender: TObject);
    procedure MnBaixaContaClick(Sender: TObject);
    procedure MnConfigClick(Sender: TObject);
    procedure MnRelListagemdeFretesClick(Sender: TObject);
    procedure Conhecimentos1Click(Sender: TObject);
    procedure mnuSairClick(Sender: TObject);
    procedure Comisses1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses CadastroFrete, CadastroFuncionario, CadastroVeiculo,
     CadastroOperacaoFuncionario, TelaBaixaFuncionarioContaCorrente,
  TelaConfigTransportadora, RelatorioListagemFrete, TelaConhecimento,
  RelatorioComissoes;

{$R *.dfm}

procedure TFormPrincipal.MnCadastroFreteClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroFrete,'FormCadastroFrete',True,False,'');
end;

procedure TFormPrincipal.MnCadastroFuncionarioClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroFuncionario,'FormCadastroFuncionario',True,False,'');
end;

procedure TFormPrincipal.MnCadastroVeiculoClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroVeiculo,'FormCadastroVeiculo',True,False,'');
end;

procedure TFormPrincipal.MnCadastroOperacaoFreteClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroOperacaoFuncionario,'FormCadastroOperacaoFuncionario',True,False,'');
end;

procedure TFormPrincipal.MnBaixaContaClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormTelaBaixaFuncionarioContaCorrente,'FormTelaBaixaFuncionarioContaCorrente',True,False,'');
end;

procedure TFormPrincipal.MnConfigClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormTelaConfigTransportadora,'FormTelaConfigTransportadora',True,False,'');
end;

procedure TFormPrincipal.MnRelListagemdeFretesClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormRelatorioListagemFrete,'FormRelatorioListagemFrete',False,False,'');
end;

procedure TFormPrincipal.Conhecimentos1Click(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormTelaConhecimento,'FormTelaConhecimento',False,False,'');
end;

procedure TFormPrincipal.mnuSairClick(Sender: TObject);
begin
  inherited;
  Application.Terminate;
end;

procedure TFormPrincipal.Comisses1Click(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormRelatorioComissoes,'FormRelatorioComissoes',False,False,'');
end;

end.
