unit TelaConsultaCompromisso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, StdCtrls, Mask, DBCtrls, ComCtrls, Grids,
  DBGrids, DB, DBTables, Buttons, jpeg, ExtCtrls, RxQuery,
  ImgList, NMsmtp, Psock, NMpop3, OleCtrls, SHDocVw, RXSplit, ToolWin,
  Menus, RXCtrls, ToolEdit, RXDBCtrl, dbcgrids;

type
  TFormTelaConsultaCompromisso = class(TFormTelaGeralTEMPLATE)
    DSSQL_Agenda: TDataSource;
    DS_Tarefa: TDataSource;
    TabSheet: TPageControl;
    TSAgenda: TTabSheet;
    Panel17: TPanel;
    ImagensTreeView: TImageList;
    Panel18: TPanel;
    Panel16: TPanel;
    Panel15: TPanel;
    TreeViewCategoria: TTreeView;
    SQLAgenda: TRxQuery;
    DSAgenda: TDataSource;
    SQLAgendaAGENA13ID: TStringField;
    SQLAgendaEMPRICOD: TIntegerField;
    SQLAgendaTERMICOD: TIntegerField;
    SQLAgendaAGENICOD: TIntegerField;
    SQLAgendaAGENDCADASTRO: TDateTimeField;
    SQLAgendaAGENDCOMPROMISSO: TDateTimeField;
    SQLAgendaAGENHCOMPROMISSO: TStringField;
    SQLAgendaAGENDALERTA: TDateTimeField;
    SQLAgendaAGENHALERTA: TStringField;
    SQLAgendaAGENTCOMPROMISSO: TMemoField;
    SQLAgendaAGENDCONCLUSAO: TDateTimeField;
    SQLAgendaCATEICOD: TIntegerField;
    DBGrid2: TDBGrid;
    SQLCategoriaAgenda: TRxQuery;
    SQLAgendaCATEA30DESCR: TStringField;
    Panel19: TPanel;
    Panel20: TPanel;
    SQLCategoriaAgendaCATEICOD: TIntegerField;
    SQLCategoriaAgendaCATEA30DESCR: TStringField;
    DBMemo4: TDBMemo;
    lblInformaStatus: TLabel;
    lblInformaConclusao: TLabel;
    TSTarefa: TTabSheet;
    pnMaster: TPanel;
    pnControles: TPanel;
    pnMemos: TPanel;
    pnBotoes: TPanel;
    pnTreeView: TPanel;
    TreeViewTipoTarefa: TTreeView;
    SQLTarefa: TRxQuery;
    SQLTarefaTAREA13ID: TStringField;
    SQLTarefaEMPRICOD: TIntegerField;
    SQLTarefaTERMICOD: TIntegerField;
    SQLTarefaTAREICOD: TIntegerField;
    SQLTarefaUSUAICOD: TIntegerField;
    SQLTarefaUSUAICODDEST: TIntegerField;
    SQLTarefaCLIEA13ID: TStringField;
    SQLTarefaTAREDDIGITACAO: TDateTimeField;
    SQLTarefaTAREDLEMBRETE: TDateTimeField;
    SQLTarefaTARETSOLICITACAO: TMemoField;
    SQLTarefaTAREDINICIO: TDateTimeField;
    SQLTarefaTAREDTERMINO: TDateTimeField;
    SQLTarefaREGISTRO: TDateTimeField;
    SQLTarefaTPTAICOD: TIntegerField;
    SQLTarefaTAREA30TITULO: TStringField;
    SQLTarefaHELPA13ID: TStringField;
    DSTarefa: TDataSource;
    PopUpTipoTarefa: TPopupMenu;
    pnHistorico: TPanel;
    pnSolicitacao: TPanel;
    Memo_SQLTarefa: TDBMemo;
    Label18: TLabel;
    Label15: TLabel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    Splitter5: TSplitter;
    btIniciarTipoTarefa: TSpeedButton;
    lblDataConclusao: TLabel;
    lblDataInicio: TLabel;
    SQLDataEmAbertoTipoTarefa: TRxQuery;
    SQLDataEmAbertoTipoTarefaTAREDLEMBRETE: TDateTimeField;
    SQLDataAgendaPendente: TRxQuery;
    SQLDataAgendaPendenteAGENDCOMPROMISSO: TDateTimeField;
    SQLTarefaTARECPENDENTE: TStringField;
    SQLTarefaTAREDPRAZOMAX: TDateTimeField;
    SQLTarefaTAREDULTAGEND: TDateTimeField;
    SQLTarefaTAREHLEMBRETE: TStringField;
    AssociarTecnico: TMenuItem;
    SQLTarefaTAREA60MOTIVOADIO: TStringField;
    SQLTarefaCLASSICOD: TIntegerField;
    SQLTpTarefa: TRxQuery;
    SQLTpTarefaTPTAICOD: TIntegerField;
    SQLTpTarefaTPTAA30DESCRICAO: TStringField;
    SQLUpdate: TRxQuery;
    DBComboStatus: TComboBox;
    SQLClasses: TRxQuery;
    SQLTarefaCLASSA60DESCRICAO: TStringField;
    SQLAgendaUSUAA60LOGIN: TStringField;
    SQLAgendaAGENCSTATUS: TStringField;
    SQLAgendaAGENCALERTA: TStringField;
    SQLAgendaAGENA60ASSUNTO: TStringField;
    SQLAgendaStatus: TStringField;
    btHistorico: TSpeedButton;
    SQLTarefaHistorico: TRxQuery;
    dsSQLTarefaHistorico: TDataSource;
    DBCtrlGridHistorico: TDBCtrlGrid;
    DBMemoTarefaHistorico: TDBMemo;
    Label1: TLabel;
    pnMaisMenosCol: TPanel;
    btMenosCol: TSpeedButton;
    btMaisCol: TSpeedButton;
    SQLCliente: TRxQuery;
    SQL_Agenda: TRxQuery;
    SQL_Tarefa: TRxQuery;
    SQL_TarefaTAREA13ID: TStringField;
    SQL_TarefaEMPRICOD: TIntegerField;
    SQL_TarefaTERMICOD: TIntegerField;
    SQL_TarefaTAREICOD: TIntegerField;
    SQL_TarefaUSUAICODDEST: TIntegerField;
    SQL_TarefaCLIEA13ID: TStringField;
    SQL_TarefaTAREDDIGITACAO: TDateTimeField;
    SQL_TarefaTAREDLEMBRETE: TDateTimeField;
    SQL_TarefaTARETSOLICITACAO: TMemoField;
    SQL_TarefaTAREDINICIO: TDateTimeField;
    SQL_TarefaTAREDTERMINO: TDateTimeField;
    SQL_TarefaTARECPENDENTE: TStringField;
    SQL_TarefaREGISTRO: TDateTimeField;
    SQL_TarefaTPTAICOD: TIntegerField;
    SQL_TarefaTAREA30TITULO: TStringField;
    SQL_TarefaHELPA13ID: TStringField;
    SQL_TarefaTAREDPRAZOMAX: TDateTimeField;
    SQL_TarefaTAREDULTAGEND: TDateTimeField;
    SQL_TarefaTAREHLEMBRETE: TStringField;
    SQL_TarefaTAREA60MOTIVOADIO: TStringField;
    SQL_TarefaCLASSICOD: TIntegerField;
    SQL_TarefaUSUAICOD: TIntegerField;
    SQL_TarefaTAREA1000CHECKLIST: TMemoField;
    SQL_AgendaAGENA13ID: TStringField;
    SQL_AgendaEMPRICOD: TIntegerField;
    SQL_AgendaTERMICOD: TIntegerField;
    SQL_AgendaAGENICOD: TIntegerField;
    SQL_AgendaAGENDCADASTRO: TDateTimeField;
    SQL_AgendaAGENDCOMPROMISSO: TDateTimeField;
    SQL_AgendaAGENHCOMPROMISSO: TStringField;
    SQL_AgendaAGENDALERTA: TDateTimeField;
    SQL_AgendaAGENHALERTA: TStringField;
    SQL_AgendaAGENTCOMPROMISSO: TMemoField;
    SQL_AgendaAGENDCONCLUSAO: TDateTimeField;
    SQL_AgendaUSUAA60LOGIN: TStringField;
    SQL_AgendaCATEICOD: TIntegerField;
    SQL_AgendaAGENA60ASSUNTO: TStringField;
    SQL_AgendaAGENCALERTA: TStringField;
    SQL_AgendaAGENCSTATUS: TStringField;
    btConcluir: TSpeedButton;
    SQLTarefaPRCLA13ID: TStringField;
    SQLTarefaPRNEA13ID: TStringField;
    SQLTarefaTAREA1000CHECKLIST: TMemoField;
    SQLTarefaTARECATULIZEMAIL: TStringField;
    SQLTarefaPENDENTE: TStringField;
    SQLTarefaTAREA13MODOTAREFA: TStringField;
    SQLTarefaTARECSTATUS: TStringField;
    SQL_TarefaPRCLA13ID: TStringField;
    SQL_TarefaPRNEA13ID: TStringField;
    SQL_TarefaTARECATULIZEMAIL: TStringField;
    SQL_TarefaPENDENTE: TStringField;
    SQL_TarefaTAREA13MODOTAREFA: TStringField;
    SQL_TarefaTARECSTATUS: TStringField;
    pnLegenda: TPanel;
    Label33: TLabel;
    Label34: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    DBGridTarefa: TDBGrid;
    SQLTarefaNomeClientePropect: TStringField;
    SQLTarefaDesCricaoTipotarefa: TStringField;
    SQLTarefaUsuarioAutor: TStringField;
    SQLTarefaUsuarioDestino: TStringField;
    SQLTarefaNomeCliente: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure DBComboStatusChange(Sender: TObject);
    procedure btIniciarTipoTarefaClick(Sender: TObject);
    procedure DSTarefaDataChange(Sender: TObject; Field: TField);
    procedure TreeViewTipoTarefaChange(Sender: TObject; Node: TTreeNode);
    procedure DSAgendaDataChange(Sender: TObject; Field: TField);
    procedure TreeViewCategoriaChange(Sender: TObject; Node: TTreeNode);
    procedure AssociarTecnicoClick(Sender: TObject);
    procedure SQL_TarefaBeforeScroll(DataSet: TDataSet);
    procedure SQL_AgendaBeforeScroll(DataSet: TDataSet);
    procedure Memo1_SQLTarefaKeyPress(Sender: TObject; var Key: Char);
    procedure Memo_SQLTarefaKeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo4KeyPress(Sender: TObject; var Key: Char);
    function  PegaIndexArray(Valor : String):Integer;
    procedure SQLAgendaCalcFields(DataSet: TDataSet);
    procedure btHistoricoClick(Sender: TObject);
    procedure btMenosColClick(Sender: TObject);
    procedure btMaisColClick(Sender: TObject);
    procedure DSTarefaStateChange(Sender: TObject);
    procedure SQL_TarefaBeforePost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure btConcluirClick(Sender: TObject);
    procedure DBGridTarefaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SQLTarefaBeforeOpen(DataSet: TDataSet);
    procedure SQLTarefaAfterScroll(DataSet: TDataSet);
    procedure DBGridTarefaDblClick(Sender: TObject);
    procedure SQL_TarefaAfterPost(DataSet: TDataSet);
    procedure SQLTarefaCalcFields(DataSet: TDataSet);

  private
    { Private declarations }
    Posicao : TBookmark;
    Id : string;
  public
    { Public declarations }
  end;

var
  FormTelaConsultaCompromisso: TFormTelaConsultaCompromisso;
  I : integer;
  Lista, listadata,DataAgendaCat,ListaDataNAssociada,ListaDataAssociadaPendente,
  ListaTipoTarefa, ListaStatus, ListaDataNIniciada, ListaGrupoUsuarios, Usuario : TTreeNode;
  ImgS, Img : integer;
  IndiceStatus : Array [0..4] of String = ('NÃO INICIADA',
                                           'EM ANDAMENTO',
                                           'AGUARDANDO OUTRA PESSOA',
                                           'ADIADA',
                                           'CONCLUÍDA');
  IndiceStatusResumido : Array [0..4] of String = ('N','E','A','D','C');

implementation

uses UnitLibrary, FormResources,
  DataModulo, TelaConsultaAtendimento, TelaDataConclusao, TelaSelecaoUsuarioTarefa,
  TelaTarefaHistorico, VarSYS, CadastroHelpDesk, CadastroNegocioComposto,
  CadastroClientePropect;

{$R *.dfm}


procedure PreencheTree(SQL : TRxQuery; Tree : TTreeView; Campo, ExpressaoSQL : String );
var MacroAntiga : string;
begin
  if ExpressaoSQL <> '' then
    begin
      SQL.close;
      MacroAntiga := SQL.MacroByName('Expressao').AsString;
      SQL.MacroByName('Expressao').AsString := ExpressaoSQL;
    end;
  if Tree.Selected.Count <= 0 then
    begin
      if (Pos('Prospect', Application.Title) > 0) and (SQL.Tag = 1) then
         begin
           if SQL.MacroByName('Expressao').AsString = '0=0' then
              SQL.MacroByName('Expressao').AsString := ' TAREA13MODOTAREFA = "PROSPECT" or TAREA13MODOTAREFA = "GERAL"'
           else
              SQL.MacroByName('Expressao').AsString := SQL.MacroByName('Expressao').AsString + ' and TAREA13MODOTAREFA = "PROSPECT" or TAREA13MODOTAREFA = "GERAL"';
         end
      else if (SQL.Tag = 1) then
         begin
           if SQL.MacroByName('Expressao').AsString = '0=0' then
              SQL.MacroByName('Expressao').AsString := ' TAREA13MODOTAREFA = "CALLCENTER" or TAREA13MODOTAREFA = "GERAL"'
           else
              SQL.MacroByName('Expressao').AsString := SQL.MacroByName('Expressao').AsString + ' and TAREA13MODOTAREFA = "CALLCENTER" or TAREA13MODOTAREFA = "GERAL"';
         end;

      if not SQL.Active then SQL.Active := true;
      SQL.First;

      while not SQL.Eof do
        begin
              Tree.Items.AddChild(Tree.Selected, SQL.FieldByName(Campo).AsString);
           SQL.Next;
        end;
  if ExpressaoSQL <> '' then
    SQL.MacroByName('Expressao').AsString := MacroAntiga;
end;
end;

procedure AtualizaMacro(SQL:TRxQuery; Macro, ExpressaoSQL: String );
begin
    SQL.close;
    SQL.MacroByName(Macro).AsString :=  ExpressaoSQL;
    SQL.Open;
    SQL.First;
end;

procedure TFormTelaConsultaCompromisso.FormCreate(Sender: TObject);
Var I : Integer;
begin
  inherited;
  TabSheet.TabWidth := 1;
  TabSheet.TabHeight:= 1;

//Imagens da Arvore
  ImgS:= 3;
  Img := 2;

  lista := TreeViewCategoria.Items.Add(nil,'Categorias');
  lista.ImageIndex := Img;
  lista.SelectedIndex := ImgS;

  DataAgendaCat := TreeViewCategoria.Items.Add(nil,'Data Agenda não Concluído');
  DataAgendaCat.ImageIndex := Img;
  DataAgendaCat.SelectedIndex := ImgS;

  ListaTipoTarefa := TreeViewTipoTarefa.Items.Add(nil,'Tipo Tarefa');
  ListaTipoTarefa.ImageIndex := Img;
  ListaTipoTarefa.SelectedIndex := ImgS;

  ListaData := TreeViewTipoTarefa.Items.Add(nil,'Data Tarefa em Aberto');
  ListaData.ImageIndex := Img;
  ListaData.SelectedIndex := ImgS;

  ListaDataNIniciada := TreeViewTipoTarefa.Items.Add(nil, 'Data Tarefa Não Iniciada');
  ListaDataNIniciada.ImageIndex := Img;
  ListaDataNIniciada.SelectedIndex := ImgS;

  ListaDataNAssociada := TreeViewTipoTarefa.Items.Add(nil,'Tarefa Não Associadas');
  ListaDataNAssociada.ImageIndex := Img;
  ListaDataNAssociada.SelectedIndex := ImgS;

  ListaDataAssociadaPendente := TreeViewTipoTarefa.Items.Add(nil,'Tarefa Associadas e Pendentes');
  ListaDataAssociadaPendente.ImageIndex := img;
  ListaDataAssociadaPendente.SelectedIndex := ImgS;

  ListaGrupoUsuarios := TreeViewTipoTarefa.Items.Add(nil,'Grupos de Usuarios');
  ListaGrupoUsuarios.ImageIndex := Img;
  ListaGrupoUsuarios.SelectedIndex := ImgS;

  ListaStatus := TreeViewCategoria.Items.Add(nil,'Status');
  ListaStatus.ImageIndex := Img;
  ListaStatus.SelectedIndex := ImgS;

  AtualizaMacro(DM.SQLUsuarios,'MFiltro','0=0');

  for I := 0 to DBGridTarefa.Columns.Count - 1 do
  begin
     if DBGridTarefa.Columns.Items[I].FieldName = 'NomeClientePropect' then
        DBGridTarefa.Columns.Items[I].Visible := (Pos('Prospect', Application.Title) > 0);
     if DBGridTarefa.Columns.Items[I].FieldName = 'NomeCliente' then
        DBGridTarefa.Columns.Items[I].Visible := not (Pos('Prospect', Application.Title) > 0);
  end;

end;

procedure TFormTelaConsultaCompromisso.DBComboStatusChange(
  Sender: TObject);
Var Id : String;
    Posicao : TBookmark;
begin
  inherited;
  Posicao := SQLAgenda.GetBookmark;
  Id := SQLAgendaAGENA13ID.AsString;

  if (DBComboStatus.ItemIndex = 4) and (SQLAgendaAGENDCONCLUSAO.AsString = '') then
    begin
      Application.CreateForm(TFormTelaDataConclusao,FormTelaDataConclusao);
      FormTelaDataConclusao.ShowModal;
      if FormTelaDataConclusao.ModalResult = MrOk then
        begin
          SQLUpdate.SQL.Text := ' UPDATE AGENDA SET AGENDCONCLUSAO = "'+FormatDateTime('mm/dd/yyyy',FormTelaDataConclusao.HoraConclusao.DateTime)+'", AGENCSTATUS = "C" WHERE AGENA13ID = "'+SQLAgendaAGENA13ID.AsString+'"';
          SQLUpdate.ExecSQL;
          FormTelaDataConclusao.Close;
        end
      else
        if FormTelaDataConclusao.ModalResult = MrCancel then
          begin
             SQLUpdate.SQL.Text := ' UPDATE AGENDA SET AGENCSTATUS = "C" WHERE AGENA13ID = "' + SQLAgendaAGENA13ID.AsString + '"';
             SQLUpdate.ExecSQL;
             FormTelaDataConclusao.Close;
          end;
      SQLAgenda.Close;
      SQLAgenda.Open;
      if SQLAgenda.Locate('AGENA13ID',Id,[loCaseInsensitive]) then
         SQLAgenda.GotoBookmark(Posicao);
    end
    else
       begin
         SQLUpdate.SQL.Text := ' UPDATE AGENDA SET AGENCSTATUS = "' + IndiceStatusResumido[DBComboStatus.ItemIndex] + '" WHERE AGENA13ID = "'+SQLAgendaAGENA13ID.AsString+'"';
         SQLUpdate.ExecSQL;
         SQLAgenda.Close;
         SQLAgenda.Open;
         if SQLAgenda.Locate('AGENA13ID',Id,[loCaseInsensitive]) then
            SQLAgenda.GotoBookmark(Posicao);
       end;
end;

procedure TFormTelaConsultaCompromisso.btIniciarTipoTarefaClick(Sender: TObject);
var Posicao : TBookmark;
begin
  if SQL_Tarefa.FieldByName('USUAICOD').AsInteger <> UsuarioCorrente then
     begin
        Informa('Operação Cancelada' + Char(#13) + 'O usuário logado não é o Autor dessa tarefa assim não tem permissão de altera-la.');
        SQL_Tarefa.Cancel;
     end;
     
  inherited;
  if SQLTarefaUSUAICOD.IsNull then
    Informa('Não é permitido iniciar uma tarefa sem um usuário associado.')
  else
    begin
      Posicao := SQLTarefa.GetBookmark;
      Application.CreateForm(TFormTelaDataConclusao,FormTelaDataConclusao);
      FormTelaDataConclusao.ShowModal;
      if FormTelaDataConclusao.ModalResult = MrOk then
        begin
          SQLUpdate.SQL.Text := 'UPDATE TAREFA SET TAREDINICIO = "'+ FormatDateTime('mm/dd/yyyy hh:mm:nn',FormTelaDataConclusao.HoraConclusao.DateTime)+'" WHERE TAREA13ID = "'+SQLTarefaTAREA13ID.AsString+'"';
          SQLUpdate.ExecSQL;
          FormTelaDataConclusao.Close;
          SQLTarefa.Close;
          SQLTarefa.Open;
          SQLTarefa.GotoBookmark(Posicao);
          btIniciarTipoTarefa.Visible := false;
        end;
    end;

end;

procedure TFormTelaConsultaCompromisso.DSTarefaDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
//Se não há data de inicio mostra o botão cadastro da data e não mostra a data vazia
  if SQLTarefaTAREDINICIO.IsNull or (length(SQLTarefaTAREDINICIO.AsString)<5) then   //////Mostra dados se já houve inicio ou cadastra data de inicio
     begin
       lblDataInicio.Visible := false;
       btIniciarTipoTarefa.Visible := true;
       lblDataConclusao.Visible := false;
     end
  else
     begin
       lblDataInicio.Visible := true;
       lblDataInicio.Caption := 'Tarefa iniciada em ' + SQLTarefaTAREDINICIO.asstring;
       btIniciarTipoTarefa.Visible := false;
     end;

  if SQLTarefaTARECPENDENTE.AsString = 'S' then
    begin
     btConcluir.Visible := TRUE;
     lblDataConclusao.Visible := false;
     btHistorico.Visible := True;
    end
  else
    if SQLTarefaTARECPENDENTE.AsString = 'N' then
      begin
       btConcluir.Visible := false;
       lblDataConclusao.Visible := true;
       lblDataConclusao.Caption := 'Tarefa concluida em ' + SQLTarefaTAREDTERMINO.AsString;
       lblDataInicio.Visible := False;
       btHistorico.Visible := False;
      end
    else
      if SQLTarefaTAREA13ID.isNull then
        begin
         btConcluir.Visible := false;
         lblDataConclusao.Visible := False;
         btIniciarTipoTarefa.Visible := false;
        end;
end;

procedure TFormTelaConsultaCompromisso.TreeViewTipoTarefaChange(
  Sender: TObject; Node: TTreeNode);
begin
  inherited;
//Verifica os pais
  if TreeViewTipoTarefa.Selected.Text = 'Tipo Tarefa'                      then
    PreencheTree(SQLTpTarefa,TreeViewTipoTarefa,'TPTAA30DESCRICAO','')
  else
    if TreeViewTipoTarefa.Selected.Text = 'Data Tarefa em Aberto'          then
      PreencheTree(SQLDataEmAbertoTipoTarefa,TreeViewTipoTarefa,'TAREDLEMBRETE',' TARECPENDENTE = "S"')
  else
    if TreeViewTipoTarefa.Selected.Text = 'Data Tarefa Não Iniciada'       then
      PreencheTree(SQLDataEmAbertoTipoTarefa,TreeViewTipoTarefa,'TAREDLEMBRETE',' TAREDINICIO IS NULL')
  else
    if TreeViewTipoTarefa.Selected.Text = 'Tarefa Não Associadas'          then
      PreencheTree(SQLDataEmAbertoTipoTarefa,TreeViewTipoTarefa,'TAREDLEMBRETE',' USUAICOD IS NULL')
  else
    if TreeViewTipoTarefa.Selected.Text = 'Tarefa Associadas e Pendentes'  then
      PreencheTree(SQLDataEmAbertoTipoTarefa,TreeViewTipoTarefa,'TAREDLEMBRETE',' USUAICOD IS NOT NULL AND TARECPENDENTE = "S"')
  else
    if TreeViewTipoTarefa.Selected.Text = 'Grupos de Usuarios' then
     if TreeViewTipoTarefa.Selected.Count <= 0 then
      begin
        i := 0;
        if not DM.SQLClasseUsuario.Active then dm.SQLClasseUsuario.Active := true;
        if not DM.SQLUsuarios.Active      then dm.SQLUsuarios.Active := true;
        DM.SQLClasseUsuario.First;
        while not dm.SQLClasseUsuario.Eof do
          begin
            Usuario := TreeViewTipoTarefa.Items.AddChild(TreeViewTipoTarefa.Selected, dm.SQLClasseUsuarioCLASSA60DESCRICAO.AsString);
            TreeViewTipoTarefa.Selected.ImageIndex    := Img;
            TreeViewTipoTarefa.Selected.SelectedIndex := ImgS;
            AtualizaMacro(DM.SQLUsuarios,'MFiltro',' USUAICOD in (SELECT USUAICOD from CLASSEUSUARIO where CLASSICOD = '''+dm.SQLClasseUsuarioCLASSICOD.AsString+''')');
            while not dm.SQLUsuarios.Eof  do
              begin
                TreeViewTipoTarefa.Items.AddChild(Usuario,dm.SQLUsuariosUSUAA60LOGIN.AsString);
                dm.SQLUsuarios.next;
              end;
           DM.SQLClasseUsuario.Next;
         end;
         AtualizaMacro(DM.SQLUsuarios,'MFiltro','0=0');
      end;

//Verifica os filhos
  if not TreeViewTipoTarefa.Selected.IsFirstNode then
    if TreeViewTipoTarefa.Selected.Parent.Index >= 0 then
      if (TreeViewTipoTarefa.Selected.Parent.Text = 'Tipo Tarefa') and (TreeViewTipoTarefa.Selected.Parent.Index = 0) then
        AtualizaMacro(SQLTarefa,'Expressao','tptaicod in (select tptaicod from tipotarefa where tptaa30descricao = '''+ TreeViewTipoTarefa.Selected.Text+''')')
    else
      if (TreeViewTipoTarefa.Selected.Parent.Text = 'Data Tarefa em Aberto') and (TreeViewTipoTarefa.Selected.Parent.Index = 1) then
          AtualizaMacro(SQLTarefa,'Expressao','TAREDLEMBRETE = '''+FORMATDATETIME('MM/DD/YYYY',strtodate(TreeViewTipoTarefa.Selected.Text))+''' and TARECPENDENTE = ''S''')
    else
        if (TreeViewTipoTarefa.Selected.Parent.Text = 'Data Tarefa Não Iniciada') and (TreeViewTipoTarefa.Selected.Parent.Index = 2) then
          AtualizaMacro(SQLTarefa,'Expressao','TAREDLEMBRETE = '''+FORMATDATETIME('MM/DD/YYYY',strtodate(TreeViewTipoTarefa.Selected.Text))+''' and TAREDINICIO IS NULL')
    else
        if (TreeViewTipoTarefa.Selected.Parent.Text = 'Tarefa Não Associadas') and (TreeViewTipoTarefa.Selected.Parent.Index = 3) then
          AtualizaMacro(SQLTarefa,'Expressao','TAREDLEMBRETE = '''+FORMATDATETIME('MM/DD/YYYY',strtodate(TreeViewTipoTarefa.Selected.Text))+''' and USUAICOD IS NULL')
   else
        if TreeViewTipoTarefa.Selected.Parent.Index = 4 then
          AtualizaMacro(SQLTarefa,'Expressao','TAREDLEMBRETE = '''+FORMATDATETIME('MM/DD/YYYY',strtodate(TreeViewTipoTarefa.Selected.Text))+''' and USUAICOD IS NOT NULL and TARECPENDENTE =''S''')
    else
        if (TreeViewTipoTarefa.Selected.Parent.Text = 'Grupos de Usuarios') then
          AtualizaMacro(SQLTarefa,'Expressao','CLASSICOD in (select CLASSICOD from CLASSE where CLASSA60DESCRICAO = '''+ TreeViewTipoTarefa.Selected.Text+''')')
    else
        if (TreeViewTipoTarefa.Selected.Parent.Text <> 'Tipo Tarefa') and (TreeViewTipoTarefa.Selected.Parent.Index >= 0) then
          AtualizaMacro(SQLTarefa,'Expressao','USUAICOD in (select USUAICOD from USUARIO where USUAA60LOGIN = '''+ TreeViewTipoTarefa.Selected.Text+''')');

end;

function TFormTelaConsultaCompromisso.PegaIndexArray(Valor : String): Integer;
Var I : Integer;
begin
//Procura pelo Valor e retorna a posição no Array
    for I := Low(IndiceStatusResumido) to High(IndiceStatusResumido) do
        if IndiceStatusResumido[I] = Valor then
           begin
             Result := I;
             Exit;
           end
        else
            Result := -1;
end;

procedure TFormTelaConsultaCompromisso.DSAgendaDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  if not SQLAgenda.IsEmpty then
    begin
     SQL_Agenda.Active := true;
     SQL_Agenda.Locate('AGENA13ID',SQLAgendaAGENA13ID.AsString,[loCaseInsensitive]);
    end
  else
    if SQL_Agenda.Active then SQL_Agenda.Active := false;
       DBComboStatus.ItemIndex :=  PegaIndexArray(SQLAgendaAGENCSTATUS.AsString);

  if SQLAgendaAGENDCONCLUSAO.IsNull then
    begin
      lblInformaConclusao.Visible := False;
    end
  else
    begin
      lblInformaConclusao.Visible := True;
      lblInformaConclusao.Caption := 'Concluido em ' + DateTimeToStr(SQLAgendaAGENDCONCLUSAO.Value);
    end;

  DBComboStatus.Enabled := not (SQLAgendaAGENCSTATUS.AsString = 'C');

  lblInformaStatus.Visible := not SQLAgendaAGENCSTATUS.IsNull;
  DBComboStatus.Visible    := not SQLAgendaAGENCSTATUS.IsNull;
end;

procedure TFormTelaConsultaCompromisso.TreeViewCategoriaChange(
  Sender: TObject; Node: TTreeNode);
begin
  inherited;
  if TreeViewCategoria.Selected.Text = 'Categorias' then
      PreencheTree(SQLCategoriaAgenda,TreeViewCategoria,'CATEA30DESCR','')
  else
    if TreeViewCategoria.Selected.Text = 'Data Agenda não Concluído' then
        PreencheTree(SQLDataAgendaPendente,TreeViewCategoria,'AGENDCOMPROMISSO',' AGENCSTATUS <> "C" AND AGENDCONCLUSAO is NULL ')
  else
    if (TreeViewCategoria.Selected.Text = 'Status') then
      if TreeViewCategoria.Selected.Count <= 0 then
        begin
           TreeViewCategoria.Items.AddChild(TreeViewCategoria.Selected,'0-NÃO INICIADA');
           TreeViewCategoria.Items.AddChild(TreeViewCategoria.Selected,'1-EM ANDAMENTO');
           TreeViewCategoria.Items.AddChild(TreeViewCategoria.Selected,'2-AGUARDANDO OUTRA PESSOA');
           TreeViewCategoria.Items.AddChild(TreeViewCategoria.Selected,'3-ADIADA');
           TreeViewCategoria.Items.AddChild(TreeViewCategoria.Selected,'4-CONCLUÍDA');
        end;

  if TreeViewCategoria.Selected.Parent <> nil then
    if TreeViewCategoria.Selected.Parent.Index = 0 then
       AtualizaMacro(SQLAgenda,'Expressao','CATEICOD IN (SELECT CATEICOD FROM CATEGORIAAGENDA WHERE CATEA30DESCR = "'+ TreeViewCategoria.Selected.Text + '")')
    else
      if TreeViewCategoria.Selected.Parent.Index = 1 then
        AtualizaMacro(SQLAgenda,'Expressao','AGENDCOMPROMISSO = "' + FormatDateTime('MM/DD/YYYY',StrToDate(TreeViewCategoria.Selected.Text)) + '" AND AGENCSTATUS <> "C"')
    else
      if TreeViewCategoria.Selected.Parent.Index = 2 then
        AtualizaMacro(SQLAgenda,'Expressao','AGENCSTATUS = "' + IndiceStatusResumido[StrToInt(Copy(TreeViewCategoria.Selected.Text,0,1))] + '"');
end;

procedure TFormTelaConsultaCompromisso.AssociarTecnicoClick(
  Sender: TObject);
var
  Posicao : TBookMark;
  SQL,Id : String;
begin
  inherited;
  DM.CodClasse := SQLTarefaCLASSICOD.AsString;
  DM.CodUsuario := SQLTarefaUSUAICOD.AsString;
  Application.CreateForm(TFormTelaSelecaoUsuarioTarefa,FormTelaSelecaoUsuarioTarefa);
  FormTelaSelecaoUsuarioTarefa.ShowModal;
  if FormTelaSelecaoUsuarioTarefa.ModalResult = Mrok then
    begin
      Posicao := SQLTarefa.GetBookmark;
      Id := SQLTarefaTAREA13ID.AsString;
      if (FormTelaSelecaoUsuarioTarefa.DBLookupComboUsuario.Text <> '') or (FormTelaSelecaoUsuarioTarefa.DBLComboGrupoUsusario.Text <> '') then
        begin
          SQL := '';
          SQL := 'UPDATE TAREFA SET ';
          if FormTelaSelecaoUsuarioTarefa.DBLookupComboUsuario.Text <> '' then
             SQL := SQL + ' USUAICOD  = "' + FormTelaSelecaoUsuarioTarefa.SQLUsuariosUSUAICOD.AsString + '"';
          if (FormTelaSelecaoUsuarioTarefa.DBLookupComboUsuario.Text <> '') and (FormTelaSelecaoUsuarioTarefa.DBLComboGrupoUsusario.Text <> '') then
             SQL := SQL + ', ';
          if FormTelaSelecaoUsuarioTarefa.DBLComboGrupoUsusario.Text <> '' then
             SQL := SQL + ' CLASSICOD = "' + FormTelaSelecaoUsuarioTarefa.SQLClasseCLASSICOD.AsString + '"';
          SQL := SQL + ' where TAREA13ID = "' + SQLTarefaTAREA13ID.AsString + '"';
          SQLUpdate.SQL.Text := sql;
          SQLUpdate.ExecSQL;
          SQLTarefa.Close;
          SQLTarefa.Open;
          if  SQLTarefa.Locate('TAREA13ID',id,[loCaseInsensitive])
            then SQLTarefa.GotoBookmark(Posicao);
          DM.Associar := '';
        end;
    end;
end;

procedure TFormTelaConsultaCompromisso.SQL_TarefaBeforeScroll(
  DataSet: TDataSet);
begin
  inherited;
  if SQL_Tarefa.State in DsEditModes then
     SQL_Tarefa.Post;
end;

procedure TFormTelaConsultaCompromisso.SQL_AgendaBeforeScroll(
  DataSet: TDataSet);
begin
  inherited;
  if SQL_Agenda.State in DsEditModes then
    SQL_Agenda.Post;
end;

procedure TFormTelaConsultaCompromisso.Memo1_SQLTarefaKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  Key := UpCase(Key);
end;

procedure TFormTelaConsultaCompromisso.Memo_SQLTarefaKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  Key := UpCase(Key);
end;

procedure TFormTelaConsultaCompromisso.DBMemo4KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key := UpCase(Key);
end;

procedure TFormTelaConsultaCompromisso.SQLAgendaCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  SQLAgendaStatus.AsString := IndiceStatus[PegaIndexArray(SQLAgendaAGENCSTATUS.AsString)]
end;

procedure TFormTelaConsultaCompromisso.btHistoricoClick(Sender: TObject);
begin
  inherited;
  DSMasterSys := DS_Tarefa;
  Application.CreateForm(TFormTelaTarefaHistorico,FormTelaTarefaHistorico);
  if not FormTelaTarefaHistorico.SQLHistoricoTarefa.Active then
     FormTelaTarefaHistorico.SQLHistoricoTarefa.Active := True;
  FormTelaTarefaHistorico.SQLHistoricoTarefa.Append;
  FormTelaTarefaHistorico.ShowModal;
  if FormTelaTarefaHistorico.ModalResult = MrOk then
     begin
        FormTelaTarefaHistorico.SQLHistoricoTarefa.Post;
        SQLTarefaHistorico.Close;
        SQLTarefaHistorico.Open;
     end
  else
     FormTelaTarefaHistorico.SQLHistoricoTarefa.Cancel;

  FormTelaTarefaHistorico.Close;
  FormTelaTarefaHistorico.Free;
  DSMasterSys := Nil;
end;

procedure TFormTelaConsultaCompromisso.btMenosColClick(Sender: TObject);
begin
  inherited;
  DBCtrlGridHistorico.RowCount := DBCtrlGridHistorico.RowCount - 1;
end;

procedure TFormTelaConsultaCompromisso.btMaisColClick(Sender: TObject);
begin
  inherited;
  DBCtrlGridHistorico.RowCount := DBCtrlGridHistorico.RowCount + 1;
end;

procedure TFormTelaConsultaCompromisso.DSTarefaStateChange(
  Sender: TObject);
begin
  inherited;
  btHistorico.Visible := not SQLTarefa.IsEmpty;
end;

procedure TFormTelaConsultaCompromisso.SQL_TarefaBeforePost(
  DataSet: TDataSet);
begin
  if SQL_Tarefa.FieldByName('USUAICOD').AsInteger <> UsuarioCorrente then
     begin
        Informa('Operação Cancelada' + Char(#13) + 'O usuário logado não é o Autor dessa tarefa assim não tem permissão de altera-la.');
        SQL_Tarefa.Cancel;
        Abort;
     end;
  inherited;
end;

procedure TFormTelaConsultaCompromisso.FormActivate(Sender: TObject);
begin
  inherited;
  if Dm.TelaVizualizacao = 'Agenda' then
     TSAgenda.Show
  else
     TSTarefa.Show;
end;

procedure TFormTelaConsultaCompromisso.btConcluirClick(Sender: TObject);
begin
  if SQL_Tarefa.FieldByName('USUAICODDEST').AsInteger <> UsuarioCorrente then
     begin
        Informa('Operação Cancelada' + Char(#13) + 'O usuário logado não é o Autor dessa tarefa assim não tem permissão de altera-la.');
        SQL_Tarefa.Cancel;
        Abort;
     end;

  if not SQL_Tarefa.IsEmpty then
     if SQL_TarefaTAREDINICIO.IsNull then
        begin
          Informa('Você não pode concluir uma tarefa não iniciada.');
          Abort;
        end
      else
        begin
          if SQL_TarefaTARECPENDENTE.AsString = 'S' then
            begin
              Application.CreateForm(TFormTelaDataConclusao,FormTelaDataConclusao);
              FormTelaDataConclusao.ShowModal;
              if FormTelaDataConclusao.ModalResult = MrCancel then
                 Abort;
            end;
        end;

    SQL_Tarefa.Edit;
    SQL_TarefaTARECPENDENTE.AsString := 'N';
    SQL_Tarefa.Post;
end;

procedure TFormTelaConsultaCompromisso.DBGridTarefaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if SQLTarefaTARECSTATUS.AsString = 'A' then
     DBGridTarefa.Canvas.Font.Color := clBlack;
  if SQLTarefaTARECSTATUS.AsString = 'N' then
     DBGridTarefa.Canvas.Font.Color := $004A4AFF;
  if SQLTarefaTARECSTATUS.IsNull then
     DBGridTarefa.Canvas.Font.Color := clGreen;

  if SQLTarefaUSUAICODDEST.AsInteger = UsuarioCorrente then
     DBGridTarefa.Canvas.Font.Style := []
  else
     DBGridTarefa.Canvas.Font.Style := [fsItalic];

  if gdSelected in State then
     DBGridTarefa.Canvas.Brush.Color := $00EDE0D1;


  DBGridTarefa.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFormTelaConsultaCompromisso.DBGrid2DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if SQLTarefaUSUAICOD.AsInteger = UsuarioCorrente then
     DBGridTarefa.Canvas.Font.Color := clBlack
  else
     DBGridTarefa.Canvas.Font.Color := $00000097;

  if gdSelected in State then
     DBGridTarefa.Canvas.Brush.Color := $00FFF0E6; 

  DBGridTarefa.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFormTelaConsultaCompromisso.SQLTarefaBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  if Pos('Prospect', Application.Title) > 0 then
     begin
       if SQLTarefa.MacroByName('MFiltro').AsString = '0=0' then
          SQLTarefa.MacroByName('MFiltro').AsString := ' TAREA13MODOTAREFA = "PROSPECT" or TAREA13MODOTAREFA = "GERAL"'
       else
          SQLTarefa.MacroByName('MFiltro').AsString := SQLTarefa.MacroByName('MFiltro').AsString + ' and TAREA13MODOTAREFA = "PROSPECT" or TAREA13MODOTAREFA = "GERAL"';
     end
  else
     begin
       if SQLTarefa.MacroByName('MFiltro').AsString = '0=0' then
          SQLTarefa.MacroByName('MFiltro').AsString := ' TAREA13MODOTAREFA = "CALLCENTER" or TAREA13MODOTAREFA = "GERAL"'
       else
          SQLTarefa.MacroByName('MFiltro').AsString := SQLTarefa.MacroByName('MFiltro').AsString + ' and TAREA13MODOTAREFA = "CALLCENTER" or TAREA13MODOTAREFA = "GERAL"';
     end;
end;

procedure TFormTelaConsultaCompromisso.SQLTarefaAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  AssociarTecnico.Enabled := SQLTarefaUSUAICODDEST.IsNull;

  SQLTarefaHistorico.Close;
  SQLTarefaHistorico.MacroByName('MFiltro').AsString := ' TAREA13ID = "' + SQLTarefa.FieldByName('TAREA13ID').AsString + '"';
  SQLTarefaHistorico.Open;

  if not SQLTarefa.IsEmpty then
    begin
      SQL_Tarefa.Close;
      SQL_Tarefa.MacroByName('MFiltro').AsString := ' TAREA13ID = "' + SQLTarefaTAREA13ID.AsString + '"';
      SQL_Tarefa.Open;
      Memo_SQLTarefa.Enabled := not SQLTarefaTAREDTERMINO.IsNull and SQL_Tarefa.IsEmpty;
    end
  else
    if SQL_Tarefa.Active then SQL_Tarefa.Active := false;

end;

procedure TFormTelaConsultaCompromisso.DBGridTarefaDblClick(
  Sender: TObject);
begin
  inherited;
  if not SQLTarefaHELPA13ID.IsNull then
     begin
       DM.ParametroExterno := ' HELPA13ID = "' + SQLTarefaHELPA13ID.AsString + '"';
       CriaFormulario(TFormCadastroHelpDesk,'FormCadastroHelpDesk',False,False,'');
       Abort;
     end;
  if not SQLTarefaPRNEA13ID.IsNull then
     begin
       DM.ParametroExterno := ' PRNEA13ID = "' + SQLTarefaPRNEA13ID.AsString + '"';
       CriaFormulario(TFormCadastroNegocioComposto,'FormCadastroNegocioComposto',False,False,'');
       Abort;
     end;
  if not SQLTarefaPRCLA13ID.IsNull then
     begin
       DM.ParametroExterno := ' PRCLA13ID = "' + SQLTarefaPRCLA13ID.AsString + '"';
       CriaFormulario(TFormCadastroClientePropect,'FormCadastroClientePropect',False,False,'');
       Abort;
     end;

end;

procedure TFormTelaConsultaCompromisso.SQL_TarefaAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  Id := SQLTarefaTAREA13ID.AsString;
  Posicao := SQLTarefa.GetBookmark;
  SQLTarefa.Close;
  SQLTarefa.Open;
  if SQLTarefa.Locate('TAREA13ID', Id, [loCaseInsensitive]) then
     SQLTarefa.GotoBookmark(Posicao);
  Id:= '';
end;

procedure TFormTelaConsultaCompromisso.SQLTarefaCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if not SQLTarefaPRCLA13ID.IsNull then
     SQLTarefaNomeClientePropect.AsString := SQLLocate('PROSPECTCLIENTE','PRCLA13ID', 'PRCLA60RAZAOSOC', '"' + SQLTarefaPRCLA13ID.AsString + '"');

  if not SQLTarefaTPTAICOD.IsNull  then
     SQLTarefaDesCricaoTipotarefa.AsString := SQLLocate('TIPOTAREFA','TPTAICOD', 'TPTAA30DESCRICAO', SQLTarefaTPTAICOD.AsString);

  if not SQLTarefaUSUAICOD.IsNull  then
     SQLTarefaUsuarioAutor.AsString := SQLLocate('USUARIO','USUAICOD', 'USUAA60LOGIN', SQLTarefaUSUAICOD.AsString);

  if not SQLTarefaUSUAICODDEST.IsNull  then
     SQLTarefaUsuarioDestino.AsString := SQLLocate('USUARIO','USUAICOD', 'USUAA60LOGIN', SQLTarefaUSUAICODDEST.AsString);

  if not SQLTarefaCLIEA13ID.IsNull then
     SQLTarefaNomeCliente.AsString := SQLLocate('CLIENTE','CLIEA13ID', 'CLIEA60RAZAOSOC', '"' + SQLTarefaCLIEA13ID.AsString + '"');

end;

end.
