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
    mnEspaco1: TMenuItem;
    mnVendedor: TMenuItem;
    mnUtilitarios: TMenuItem;
    Pesquisa1: TMenuItem;
    N1: TMenuItem;
    mnRelatrios: TMenuItem;
    mnHistricos: TMenuItem;
    mnTarefas: TMenuItem;
    GerenciadordeTarefas1: TMenuItem;
    mnTipoTarefas: TMenuItem;
    TimeLembrete: TTimer;
    SQLAgendaVer: TQuery;
    mnConfiguraPopUp: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    mnRelatorioTarefas: TMenuItem;
    MnFuncionarios: TMenuItem;
    ControleDiriodeKM1: TMenuItem;
    MnKilometragemDiariaporFuncionario: TMenuItem;
    procedure mnClientesClick(Sender: TObject);
    procedure mnSairSistemaClick(Sender: TObject);
    procedure mnStatusClick(Sender: TObject);
    procedure mnFormasdeEnvioClick(Sender: TObject);
    procedure mnNegcioClick(Sender: TObject);
    procedure mnVendedorClick(Sender: TObject);
    procedure Pesquisa1Click(Sender: TObject);
    procedure mnHistricosClick(Sender: TObject);
    procedure GerenciadordeTarefas1Click(Sender: TObject);
    procedure mnTarefasClick(Sender: TObject);
    procedure mnTipoTarefasClick(Sender: TObject);
    procedure TimeLembreteTimer(Sender: TObject);
    procedure mnConfiguraPopUpClick(Sender: TObject);
    procedure mnRelatorioTarefasClick(Sender: TObject);
    procedure MnFuncionariosClick(Sender: TObject);
    procedure ControleDiriodeKM1Click(Sender: TObject);
    procedure MnKilometragemDiariaporFuncionarioClick(Sender: TObject);
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
  RelatorioHistorico, CadastroTarefa, DataModulo, TelaConsultaCompromisso,
  CadastroTipoTarefa, VarSYS, TelaLembreteTarefa, ConfigPopUp,
  TelaRelatorioTarefa, CadastroFuncionario, CadastroKMDIA, RelatorioKMDia;

{$R *.dfm}

procedure TFormPrincipal.mnClientesClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroClientePropect, 'FormCadastroClientePropect', False, False, '');
end;

procedure TFormPrincipal.mnSairSistemaClick(Sender: TObject);
begin
  inherited;
  Application.Terminate;
end;

procedure TFormPrincipal.mnStatusClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroStatus,'FormCadastroStatus',False,False,'');
end;

procedure TFormPrincipal.mnFormasdeEnvioClick(Sender: TObject);
begin
  inherited;
   CriaFormulario(TFormCadastroFormasDeEnvio,'FormCadastroFormasDeEnvio',False,False,'');
end;

procedure TFormPrincipal.mnNegcioClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroNegocioComposto,'FormCadastroNegocioComposto',False,False,'');
end;

procedure TFormPrincipal.mnVendedorClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroVendedor,'FormCadastroVendedor',False,False,'');
end;

procedure TFormPrincipal.Pesquisa1Click(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormTelaConsultaHistorico,'FormTelaConsultaHistorico',False, False,'');
end;

procedure TFormPrincipal.mnHistricosClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormRelatorioHistorico,'FormRelatorioHistorico', False,False,'');
end;

procedure TFormPrincipal.GerenciadordeTarefas1Click(Sender: TObject);
begin
  inherited;
  Dm.TelaVizualizacao := 'Tarefa';
  CriaFormulario(TFormTelaConsultaCompromisso,'FormTelaConsultaCompromisso',False,False,'[Tarefa]');

end;

procedure TFormPrincipal.mnTarefasClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroTarefa, 'FormCadastroTarefa', False, False,'')
end;

procedure TFormPrincipal.mnTipoTarefasClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroTipoTarefa, 'FormCadastroTipoTarefa', False, False,'')
end;

procedure TFormPrincipal.TimeLembreteTimer(Sender: TObject);
begin
  inherited;
  if not DM.SQLPopUP.Active then DM.SQLPopUP.Active := True;
  if DM.SQLPopUPCFGCCEXIBIRPOPTARE.AsString = 'S' then
     begin
       SQLAgendaVer.Close;
       SQLAgendaVer.SQL.Text := 'select count(TAREDLEMBRETE) from TAREFA where (TAREDLEMBRETE <= '''+ FormatDateTime('MM/DD/YYYY',Date)+''' and TAREDTERMINO is null) and USUAICOD = ' + IntToStr(UsuarioCorrente);
       SQLAgendaVer.Open;
       if SQLAgendaVer.FieldByName('Count').AsInteger > 0 then
          begin
            DM.SQLPopUP.Edit;
            Application.CreateForm(TFormTelaLembreteTarefa,FormTelaLembreteTarefa);
            FormTelaLembreteTarefa.Show;
            DM.SQLPopUPCFGCCEXIBIRPOPTARE.AsString := 'N';
            DM.SQLPopUP.Post;
          end;
     end;
end;


procedure TFormPrincipal.mnConfiguraPopUpClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFormConfigPopUp,FormConfigPopUp);
  FormConfigPopUp.ShowModal;
end;

procedure TFormPrincipal.mnRelatorioTarefasClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormTelaRelatorioTarefa,'FormTelaRelatorioTarefa',False,False,'');
end;

procedure TFormPrincipal.MnFuncionariosClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroFuncionario,'FormCadastroFuncionario',False,False,'');
end;

procedure TFormPrincipal.ControleDiriodeKM1Click(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormCadastroKMDIA,'FormCadastroKMDIA',False,False,'');
end;

procedure TFormPrincipal.MnKilometragemDiariaporFuncionarioClick(
  Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormRelatorioKMDia,'FormRelatorioKMDia',False,False,'');
end;

end.
