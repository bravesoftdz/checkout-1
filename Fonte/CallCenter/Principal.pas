unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PrincipalTemplate, ExtCtrls, Menus, ComCtrls, ToolWin, jpeg,
  EWall, Handprot, MSNPopUp, DB, DBTables, Grids, DBGrids, StdCtrls,
  Buttons, RxQuery, RXShell, RxMenus,ShellAPI, RxHook, ImgList;

type
  TFormPrincipal = class(TFormPrincipalTemplate)
    ToolButton1: TToolButton;
    MnCallCenterCadastros: TMenuItem;
    MnCallCentesCadastroClientes: TMenuItem;
    ButtonHelpDesk: TToolButton;
    mnAtendimento: TMenuItem;
    MnCallCenterCadastroTipodeSuporte: TMenuItem;
    mnAgenda: TMenuItem;
    SQLAgendaVer: TQuery;
    MSNPopUp1: TMSNPopUp;
    TimeLembrete: TTimer;
    mnTipoTarefa: TMenuItem;
    mnFerramentas: TMenuItem;
    mnTarefas: TMenuItem;
    ToolButton3: TToolButton;
    mnConfigurarPopUp: TMenuItem;
    mnCompromissosTarefas: TMenuItem;
    mnPesquisaChave: TMenuItem;
    mnCategoriaAgenda: TMenuItem;
    mnCadastroUsurios: TMenuItem;
    mnClasse: TMenuItem;
    mnSair: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    mnRelatrios: TMenuItem;
    mnRelTarefas: TMenuItem;
    ToolButton2: TToolButton;
    CompromissosAgenda1: TMenuItem;
    PopupMenuiconTray: TRxPopupMenu;
    MnCallCenterHelpDesk: TMenuItem;
    mnPesquisaTarefa: TMenuItem;
    procedure MnCallCentesCadastroClientesClick(Sender: TObject);
    procedure MnCallCenterCadastroTipodeSuporteClick(Sender: TObject);
    procedure mnAgendaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure TimeLembreteTimer(Sender: TObject);
    procedure mnTipoTarefaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mnTarefasClick(Sender: TObject);
    procedure MSNPopUp1Click(Sender: TObject);
    procedure mnConfigurarPopUpClick(Sender: TObject);
    procedure mnCompromissosTarefasClick(Sender: TObject);
    procedure mnPesquisaChaveClick(Sender: TObject);
    procedure mnCategoriaAgendaClick(Sender: TObject);
    procedure Cadastrousuarios1Click(Sender: TObject);
    procedure CadastroClasse1Click(Sender: TObject);
    procedure mnCadastroUsuriosClick(Sender: TObject);
    procedure mnClasseClick(Sender: TObject);
    procedure HelpDesk1Click(Sender: TObject);
    procedure TrayIconClick(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure mnRelTarefasClick(Sender: TObject);
    procedure AoMinimizarAplicacao(Sender :TObject);
    procedure AoMaximizarAplicacao(Sender :TObject);
    procedure CompromissosAgenda1Click(Sender: TObject);
    procedure MnCallCenterHelpDeskClick(Sender: TObject);
    procedure mnPesquisaTarefaClick(Sender: TObject);

  private
    { Private declarations }
    procedure MostraPrincipal(Sender : TObject);
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses CadastroClienteHelpDesk, DataModulo, FormResources, CadastroHelpDesk,
  CadastrotipoHelpDesk, CadastroTipoTarefa, CadastroAgenda, VarSYS,
  CadastroTarefa, ConfigPopUp, TelaConsultaCompromisso, TelaPesquisaChave,
  CadastroCategoriaAgenda, TelaLembreteTarefa, CadastroGrupoUsuarios,
  CadastroClasseUsuario,
  CadastroClasse, CadastroUsuario, TelaRelatorioTarefa, UnitLibrary,
  TelaPesquisaTarefa;

{$R *.dfm}

procedure TFormPrincipal.MostraPrincipal(Sender : TObject);
begin
  Application.RestoreTopMosts;
end;

procedure TFormPrincipal.MnCallCentesCadastroClientesClick(
  Sender: TObject);
begin
  inherited;
  MostraPrincipal(Sender);
  CriaFormulario(TFormCadastroClienteHelpDesk,'FormCadastroClienteHelpDesk',False,False,'');
end;

procedure TFormPrincipal.MnCallCenterCadastroTipodeSuporteClick(
  Sender: TObject);
begin
  inherited;
  MostraPrincipal(Sender);
  CriaFormulario(TFormCadastroTipoHelpDesk,'FormCadastroTipoHelpDesk',False,False,'');
end;

procedure TFormPrincipal.mnAgendaClick(Sender: TObject);
begin
  inherited;
  MostraPrincipal(Sender);
  CriaFormulario(TFormCadastroAgenda,'FormCadastroAgenda',False,False,'');
end;

procedure TFormPrincipal.BitBtn1Click(Sender: TObject);
begin
  inherited;
    MSNPopUp1.ClosePopUps;
    MSNPopUp1.Text := '';
    MSNPopUp1.Text := IntToStr(SQLAgendaVer.RecordCount)+ 'Atenção há tarefas para você';
    MSNPopUp1.ShowPopUp;
end;

procedure TFormPrincipal.TimeLembreteTimer(Sender: TObject);
var AMANHA : STRING;
    Year1, Month1, Day1: Word;
begin
  inherited;
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
            DM.SQLPopUPCFGCCEXIBIRPOPTARE.AsString := 'N'
          end;
     end;

  if  DM.SQLPopUPEXIBIRPOP.AsString = 'S' then
    begin
        DecodeDate(DATE, Year1, Month1, Day1);
        AMANHA:=  CurrToStr(Month1) + '/' + CurrToStr(Day1+1) + '/' + CurrToStr(Year1);
        SQLAgendaVer.Active := False;
        SQLAgendaVer.SQL.Text := 'select count(*) from AGENDA where (AGENDCOMPROMISSO < cast ('''+FormatDateTime('mm/dd/yyyy hh:mm:nn',Now)+''' as Timestamp) and AGENCSTATUS <> "C") and USUAA60LOGIN = "' + UsuarioAtualNome + '"';
        SQLAgendaVer.Active := True;
        if SQLAgendaVer.FieldByName('Count').AsInteger > 0 then
          begin
            MSNPopUp1.Text := 'Atenção há '+ IntToStr(SQLAgendaVer.FindField('count').AsInteger)+' tarefa(s) em atraso para você';
            MSNPopUp1.ShowPopUp;
          end;
    end;
end;

procedure TFormPrincipal.mnTipoTarefaClick(Sender: TObject);
begin
  inherited;
  MostraPrincipal(Sender);
  CriaFormulario(TFormCadastroTipoTarefa,'FormCadastroTipoTarefa',False,False,'');
end;

procedure CriarPopUp(Sender:TObject);
var NewItem: TMenuItem;
    Index : INTEGER;
begin
  Index := 0;
  //Insere Menus no IconTray PopUp
  NewItem := TMenuItem.Create((Sender as TFormPrincipal).MnCallCenterHelpDesk);
  (Sender as TFormPrincipal).PopupMenuiconTray.Items.Add(NewItem);
  NewItem.Caption := (Sender as TFormPrincipal).MnCallCenterHelpDesk.Caption;
  NewItem.Tag     := Index;
  NewItem.OnClick := (Sender as TFormPrincipal).MnCallCenterHelpDeskClick;

  NewItem := TMenuItem.Create((Sender as TFormPrincipal).mnCompromissosTarefas);
  (Sender as TFormPrincipal).PopupMenuiconTray.Items.Add(NewItem);
  NewItem.Caption := (Sender as TFormPrincipal).mnCompromissosTarefas.Caption;
  NewItem.Tag     := Index + 1;
  NewItem.OnClick := (Sender as TFormPrincipal).mnCompromissosTarefasClick;

  NewItem := TMenuItem.Create((Sender as TFormPrincipal).PopupMenuiconTray);
  (Sender as TFormPrincipal).PopupMenuiconTray.Items.Add(NewItem);
  NewItem.Caption := '-';
  NewItem.Tag     := Index + 2;

  NewItem := TMenuItem.Create((Sender as TFormPrincipal).PopupMenuiconTray);
  (Sender as TFormPrincipal).PopupMenuiconTray.Items.Add(NewItem);
  NewItem.Caption := (Sender as TFormPrincipal).mnSair.Caption;
  NewItem.Tag     := Index + 3;
  NewItem.OnClick := (Sender as TFormPrincipal).mnSairClick;

  NewItem := TMenuItem.Create((Sender as TFormPrincipal).PopupMenuiconTray);
  (Sender as TFormPrincipal).PopupMenuiconTray.Items.Add(NewItem);
  NewItem.Caption := 'Maximizar';
  NewItem.Tag     := Index + 4;
  NewItem.OnClick := (Sender as TFormPrincipal).HelpDesk1Click;
end;

procedure TFormPrincipal.AoMinimizarAplicacao(Sender :TObject);
begin
   Application.ShowMainForm := False;
   Hide;
   Application.ProcessMessages;
end;

procedure TFormPrincipal.AoMaximizarAplicacao(Sender :TObject);
begin
   Application.ShowMainForm := True;
   Show;
   Application.ProcessMessages;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
  inherited;
  if not DM.SQLPopUP.Active then DM.SQLPopUP.open;
  try
    if DM.SQLPopUPPOPTEMPO.AsVariant <> NULL then
     if DM.SQLPopUPPOPTEMPO.AsInteger > 0 then
        TimeLembrete.Interval := DM.SQLPopUPPOPTEMPO.AsInteger * 60000
     else
        TimeLembrete.Interval := 50000;

  except
    TimeLembrete.Interval := 50000;
  end;
  EmpresaCorrente   := 1;
  TerminalCorrente  := 1;
  CriarPopUp(FormPrincipal);

  Application.OnMinimize := AoMinimizarAplicacao;
  Application.OnRestore  := AoMaximizarAplicacao;

end;

procedure TFormPrincipal.mnTarefasClick(Sender: TObject);
begin
  inherited;
  MostraPrincipal(Sender);
  CriaFormulario(TFormCadastroTarefa,'FormCadastroTarefa',False,False,'Cadastro Tarefa');
end;

procedure TFormPrincipal.MSNPopUp1Click(Sender: TObject);
begin
  inherited;
  DM.PopFiltro := 'S';
  CriaFormulario(TFormCadastroAgenda,'FormCadastroAgenda',False,False,'');
end;

procedure TFormPrincipal.mnConfigurarPopUpClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFormConfigPopUp,FormConfigPopUp);
  FormConfigPopUp.ShowModal;
end;

procedure TFormPrincipal.mnCompromissosTarefasClick(Sender: TObject);
begin
  inherited;
  MostraPrincipal(Sender);
  Dm.TelaVizualizacao := 'Tarefa';
  if Application.FindComponent('FormTelaConsultaCompromisso') <> Nil then
     begin
       (Application.FindComponent('FormTelaConsultaCompromisso') as TForm).Close;
       (Application.FindComponent('FormTelaConsultaCompromisso') as TForm).Free;
     end;
  CriaFormulario(TFormTelaConsultaCompromisso,'FormTelaConsultaCompromisso',False,False,'[Tarefa]');
end;

procedure TFormPrincipal.mnPesquisaChaveClick(Sender: TObject);
begin
  inherited;
  MostraPrincipal(Sender);
  CriaFormulario(TFormPesquisaChave,'FormPesquisaChave',False,False,'');
end;

procedure TFormPrincipal.mnCategoriaAgendaClick(Sender: TObject);
begin
  inherited;
  MostraPrincipal(Sender);
  CriaFormulario(TFormCadastroCategoriaAgenda,'FormCadastroCategoriaAgenda',False,False,'');
end;

procedure TFormPrincipal.Cadastrousuarios1Click(Sender: TObject);
begin
  inherited;
  MostraPrincipal(Sender);
  CriaFormulario(TFormCadastroClasseUsuario,'FormCadastroClasseUsuario', false,false,'');
end;

procedure TFormPrincipal.CadastroClasse1Click(Sender: TObject);
begin
  inherited;
  MostraPrincipal(Sender);
  CriaFormulario(TFormCadastroClasseUsuario,'FormCadastroClasseUsuario', false,false,'');
end;

procedure TFormPrincipal.mnCadastroUsuriosClick(Sender: TObject);
begin
  inherited;
  MostraPrincipal(Sender);
  CriaFormulario(TFormCadastroUsuario,'FormCadastroUsuario',false,false,'');
end;

procedure TFormPrincipal.mnClasseClick(Sender: TObject);
begin
  inherited;
  MostraPrincipal(Sender);
  CriaFormulario(TFormCadastroClasse,'FormCadastroClasse',false,false,'');
end;

procedure TFormPrincipal.HelpDesk1Click(Sender: TObject);
begin
  inherited;
  MostraPrincipal(Sender);
end;

procedure TFormPrincipal.TrayIconClick(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  MostraPrincipal(Sender);
end;

procedure TFormPrincipal.mnRelTarefasClick(Sender: TObject);
begin
  inherited;
  MostraPrincipal(Sender);
  CriaFormulario(TFormTelaRelatorioTarefa,'FormTelaRelatorioTarefa',False,False,'');
end;

procedure TFormPrincipal.CompromissosAgenda1Click(Sender: TObject);
begin
  inherited;
  MostraPrincipal(Sender);
  Dm.TelaVizualizacao := 'Agenda';
  if Application.FindComponent('FormTelaConsultaCompromisso') <> Nil then
     begin
       (Application.FindComponent('FormTelaConsultaCompromisso') as TForm).Close;
       (Application.FindComponent('FormTelaConsultaCompromisso') as TForm).Free;
     end;
  CriaFormulario(TFormTelaConsultaCompromisso,'FormTelaConsultaCompromisso',False,False,'[Agenda]');
end;

procedure TFormPrincipal.MnCallCenterHelpDeskClick(Sender: TObject);
begin
  inherited;
  MostraPrincipal(Sender);
  CriaFormulario(TFormCadastroHelpDesk,'FormCadastroHelpDesk',False,False,'');

end;

procedure TFormPrincipal.mnPesquisaTarefaClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormTelaPesquisaTarefa,'FormTelaPesquisaTarefa', False, False,'');
end;

end.
