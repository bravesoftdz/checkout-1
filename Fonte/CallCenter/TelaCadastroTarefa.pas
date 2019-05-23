unit TelaCadastroTarefa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, RxQuery, StdCtrls, DBCtrls, Mask, Buttons, jpeg,
  ExtCtrls, DateUtils;

type
  TFormTelaCadastroTarefa = class(TForm)
    ScrollBoxFundo: TScrollBox;
    PanelCabecalho: TPanel;
    LabelTitulo: TLabel;
    PanelNavigator: TPanel;
    LabelGravar: TSpeedButton;
    LabelCancelar: TSpeedButton;
    PanelCentral: TPanel;
    PanelBarra: TPanel;
    Panel1: TPanel;
    Label11: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    DBTituloTarefa: TDBEdit;
    DBCGrupoUsuarios: TDBLookupComboBox;
    DBCLTpTarefa: TDBLookupComboBox;
    Panel2: TPanel;
    Label9: TLabel;
    MemoDescTarefa: TDBMemo;
    SQLTemplate: TRxQuery;
    DSTemplate: TDataSource;
    SQLGrupoUsuarios: TQuery;
    DSSQLGrupoUsuarios: TDataSource;
    SQLTipoTarefa: TQuery;
    DSSQLTipoTarefa: TDataSource;
    SQLTemplateTAREA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateTAREICOD: TIntegerField;
    SQLTemplateTAREA30TITULO: TStringField;
    SQLTemplateTAREDDIGITACAO: TDateTimeField;
    SQLTemplateTAREDLEMBRETE: TDateTimeField;
    SQLTemplateTAREHLEMBRETE: TStringField;
    SQLTemplateTARETSOLICITACAO: TMemoField;
    SQLTemplateTARECPENDENTE: TStringField;
    SQLTemplateTAREDINICIO: TDateTimeField;
    SQLTemplateTAREDTERMINO: TDateTimeField;
    SQLTemplateTPTAICOD: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplatePRCLA13ID: TStringField;
    SQLTemplateHELPA13ID: TStringField;
    SQLTemplatePRNEA13ID: TStringField;
    SQLTemplateTAREDPRAZOMAX: TDateTimeField;
    SQLTemplateTAREDULTAGEND: TDateTimeField;
    SQLTemplateTAREA60MOTIVOADIO: TStringField;
    SQLTemplateUSUAICOD: TIntegerField;
    SQLTemplateUSUAICODDEST: TIntegerField;
    SQLTemplateCLASSICOD: TIntegerField;
    SQLTemplateTAREA1000CHECKLIST: TMemoField;
    SQLTemplateTARECATULIZEMAIL: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    SQLTipoTarefaTPTAICOD: TIntegerField;
    SQLTipoTarefaTPTAA30DESCRICAO: TStringField;
    SQLTipoTarefaTPTACCHECKLIST: TStringField;
    SQLTipoTarefaTPTAA1000CHECKLIST: TMemoField;
    SQLTipoTarefaTPTACINTEXT: TStringField;
    SQLTipoTarefaTPTAA13PRAZOMAX: TStringField;
    SQLTemplateTAREA13MODOTAREFA: TStringField;
    procedure DBTituloTarefaExit(Sender: TObject);
    procedure DBCGrupoUsuariosExit(Sender: TObject);
    procedure DBCLTpTarefaExit(Sender: TObject);
    procedure MemoDescTarefaKeyPress(Sender: TObject; var Key: Char);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure LabelGravarClick(Sender: TObject);
    procedure LabelCancelarClick(Sender: TObject);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaCadastroTarefa: TFormTelaCadastroTarefa;

implementation

uses DataModulo, UnitLibrary, VarSYS;

{$R *.dfm}

procedure TFormTelaCadastroTarefa.DBTituloTarefaExit(Sender: TObject);
begin
   if DBTituloTarefa.Text = '' then
    begin
      informa('Você deve informar um titulo para a tarefa');
      DBTituloTarefa.SetFocus;
    end;
end;

procedure TFormTelaCadastroTarefa.DBCGrupoUsuariosExit(Sender: TObject);
begin
  inherited;
  if DBCGrupoUsuarios.Text = '' then
    begin
      Informa('Você deve informar um grupo de usuários para o envio da tarefa.');
      DBCGrupoUsuarios.SetFocus;
    end;
end;

procedure TFormTelaCadastroTarefa.DBCLTpTarefaExit(Sender: TObject);
begin
  inherited;
  if DBCLTpTarefa.Text = '' then
    begin
      Informa('Você deve informar um tipo para a tarefa.');
      DBCLTpTarefa.SetFocus;
    end;

end;

procedure TFormTelaCadastroTarefa.MemoDescTarefaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  key := UpCase(key)
end;

procedure TFormTelaCadastroTarefa.SQLTemplateBeforePost(DataSet: TDataSet);
var
  Nova : TDateTime;
begin
  inherited;
  DM.CodigoAutomatico('TAREFA',DSTemplate,SQLTemplate,3,0);
  if not SQLTipoTarefaTPTAA13PRAZOMAX.IsNull then
    begin
      if SQLTipoTarefaTPTAA13PRAZOMAX.AsString <> '1' then  // 0 = Imediato 1 = Indeterminado
        begin
          Nova := IncHour(Now, SQLTipoTarefaTPTAA13PRAZOMAX.AsInteger);
          SQLTemplateTAREDPRAZOMAX.AsDateTime := Nova;
        end
      else
          SQLTemplateTAREDPRAZOMAX.value := Now;
    end;

  SQLTemplateTAREDDIGITACAO.AsDateTime    := Now;
  SQLTemplateTARECPENDENTE.AsString       := 'S';
  SQLTemplateTAREDLEMBRETE.AsDateTime     := Date;
  SQLTemplateTAREHLEMBRETE.AsString       := FormatDateTime('hh:mm', Time);
  SQLTemplateCLIEA13ID.AsString           := DM.CodCliente;
  SQLTemplateHELPA13ID.AsString           := DM.CodAtendimento;
  SQLTemplateTAREA1000CHECKLIST.AsVariant := SQLTipoTarefaTPTAA1000CHECKLIST.AsVariant;

  SQLTemplateREGISTRO.AsDateTime          := Now;
  SQLTemplatePENDENTE.AsString            := 'S';

end;

procedure TFormTelaCadastroTarefa.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateEMPRICOD.AsInteger      := EmpresaCorrente;
  SQLTemplateTERMICOD.AsInteger      := TerminalCorrente;
  SQLTemplateUSUAICODDEST.AsInteger  := UsuarioCorrente;
  SQLTemplateUSUAICOD.AsInteger      := UsuarioCorrente;
  if Pos('Prospect', Application.Title) > 0 then
     SQLTemplateTAREA13MODOTAREFA.AsString := 'PROSPECT'
  else
     SQLTemplateTAREA13MODOTAREFA.AsString := 'CALLCENTER';  
end;

procedure TFormTelaCadastroTarefa.FormCreate(Sender: TObject);
begin
  inherited;
  self.FormStyle := fsNormal;
  if not SQLTemplate.Active      then SQLTemplate.Active      := true;
  if not SQLGrupoUsuarios.Active then SQLGrupoUsuarios.Active := true;
  if not SQLTipoTarefa.Active    then SQLTipoTarefa.Active    := true;
  SQLTemplate.Append;
end;

procedure TFormTelaCadastroTarefa.LabelGravarClick(Sender: TObject);
begin
  inherited;
  SQLTemplate.Post;
  Self.Close;
end;

procedure TFormTelaCadastroTarefa.LabelCancelarClick(Sender: TObject);
begin
  inherited;
  SQLTemplate.Cancel;
  Self.Close;
end;

procedure TFormTelaCadastroTarefa.DSTemplateStateChange(Sender: TObject);
begin
  inherited;
  LabelGravar.Enabled   := SQLTemplate.State in DsEditModes;
  LabelCancelar.Enabled := SQLTemplate.State in DsEditModes;
end;

procedure TFormTelaCadastroTarefa.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #27 then close;
end;























end.
