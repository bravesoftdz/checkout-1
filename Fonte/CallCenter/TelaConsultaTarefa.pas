unit TelaConsultaTarefa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DB, DBTables, StdCtrls, Mask, DBCtrls, ExtCtrls, Grids,
  DBGrids, ToolEdit, RXDBCtrl, jpeg, RxQuery, ConerBtn;

type
  TFormTelaConsultaTarefa = class(TForm)
    SQLCliente: TQuery;
    SQLTptarefa: TQuery;
    DSTemplate: TDataSource;
    PanelCentral: TPanel;
    PanelBarra: TPanel;
    PanelCabecalho: TPanel;
    LabelTitulo: TLabel;
    PanelNavigator: TPanel;
    Panel1: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label11: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label16: TLabel;
    AdicionarDataHora: TSpeedButton;
    DBCheckPendente: TDBCheckBox;
    DBMemo2: TDBMemo;
    MemoSolucao: TDBMemo;
    DBEdit6: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    EditHora: TDBEdit;
    DBTermino: TDBEdit;
    Panel2: TPanel;
    Label6: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBGridTarefa: TDBGrid;
    SQLTemplate: TRxQuery;
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
    SQLTemplateTAREA13MODOTAREFA: TStringField;
    BtOK: TConerBtn;
    BtCancel: TConerBtn;
    procedure FormCreate(Sender: TObject);
    procedure BtOKClick(Sender: TObject);
    procedure DBGridTarefaDblClick(Sender: TObject);
    procedure AdicionarDataHoraClick(Sender: TObject);
    procedure BtCancelClick(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SQLTemplateBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaTarefa: TFormTelaConsultaTarefa;

implementation

uses DataModulo, UnitLibrary, TelaDataConclusao, ComCtrls, dateutils;

{$R *.dfm}

procedure TFormTelaConsultaTarefa.FormCreate(Sender: TObject);
var SQL :string;
begin
    if DM.GridTarefa = 'S' then
      DBGridTarefa.Visible := true
    else
      DBGridTarefa.Visible := false;
      
    if not SQLTemplate.Active then SQLTemplate.Active := TRUE;
    if (DM.codtarefa <> '') then
      begin
        SQLTemplate.Active := false;
        SQLTemplate.SQL.Clear;
        SQL := 'SELECT * FROM TAREFA WHERE TAREA13ID = '''+dm.codtarefa+'''';
        SQLTemplate.SQL.Add(SQL);
        SQLTemplate.Active := TRUE;
      end;
   SQLTemplate.Active := false;
   SQLTemplate.Active := TRUE;
end;

procedure TFormTelaConsultaTarefa.BtOKClick(Sender: TObject);
begin
  if DBCheckPendente.Checked then
    begin
      if not (SQLTemplate.State in DSeditmodes) then SQLTemplate.edit;
      SQLTemplateTARECPENDENTE.AsString := 'S';
      SQLTemplateTAREDTERMINO.AsString := '';
      SQLTemplate.Post;
      FormTelaConsultaTarefa.ModalResult := MrOk;
     end
  else
      try
         StrToDateTime(DBTermino.Text);
      except
      on EConvertError do
         begin
           raise Exception.Create('Você deve informar uma data valida para o término.');
           DBTermino.SetFocus;
         end;
      end;
      if not (SQLTemplate.State in DSeditmodes) then SQLTemplate.edit;
      SQLTemplateTARECPENDENTE.AsString := 'N';
      SQLTemplate.Post;
      FormTelaConsultaTarefa.ModalResult := MrOk;
      DM.CodTarefa := '';
      DM.GridTarefa := '';
end;

procedure TFormTelaConsultaTarefa.DBGridTarefaDblClick(Sender: TObject);
begin
      FormTelaConsultaTarefa.ModalResult := MrOk;
      DM.CodTarefa := '';
end;

procedure TFormTelaConsultaTarefa.AdicionarDataHoraClick(Sender: TObject);
begin
    Application.CreateForm(TFormTelaDataConclusao,FormTelaDataConclusao);
    FormTelaDataConclusao.ShowModal;
    if FormTelaDataConclusao.ModalResult = MrOk then
       begin
         SQLTemplate.Edit;
         SQLTemplateTAREDTERMINO.AsDateTime := FormTelaDataConclusao.HoraConclusao.DateTime;
         SQLTemplate.Post;
       end;
     FormTelaDataConclusao.Close;
end;

procedure TFormTelaConsultaTarefa.BtCancelClick(Sender: TObject);
begin
   DM.GridTarefa := '';
   DM.CodTarefa  := '';
   FormTelaConsultaTarefa.ModalResult := mrCancel;
end;

procedure TFormTelaConsultaTarefa.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
   if not SQLTemplateTAREDTERMINO.IsNull then
     begin
       DBTermino.Enabled         := false;
       AdicionarDataHora.Enabled := false;
       EditHora.Enabled          := false;
       MemoSolucao.Enabled       := false;
       DBCheckPendente.Enabled   := false;
     end
   else
     begin
       DBTermino.Enabled         := true;
       AdicionarDataHora.Enabled := true;
       EditHora.Enabled          := true;
       MemoSolucao.Enabled       := true;
       DBCheckPendente.Enabled   := true;
     end;

end;

procedure TFormTelaConsultaTarefa.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = Char(#27) then BtOK.Click;
end;

procedure TFormTelaConsultaTarefa.SQLTemplateBeforeOpen(DataSet: TDataSet);
begin
  if Pos('Prospect', Application.Title) > 0 then
     SQLTemplate.MacroByName('MFiltro').AsString := ' TAREA13MODOTAREFA = "PROSPECT"'
  else
     SQLTemplate.MacroByName('MFiltro').AsString := ' TAREA13MODOTAREFA = "CALLCENTER"';
end;

end.
