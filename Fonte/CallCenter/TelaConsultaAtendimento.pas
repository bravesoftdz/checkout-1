unit TelaConsultaAtendimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Buttons, DBCtrls, Mask, ExtCtrls,
  RxLookup, Grids, DBGrids, jpeg;

type
  TFormTelaConsultaAtendimento = class(TForm)
    DSHelp: TDataSource;
    SQLTemplate: TQuery;
    SQLTptarefa: TQuery;
    SQLCliente: TQuery;
    SQLTemplateHELPA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateHELPICOD: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateHELPCCONTATO: TStringField;
    SQLTemplateHELPDINICIO: TDateTimeField;
    SQLTemplateHELPTSOLICITACAO: TMemoField;
    SQLTemplateHELPTSOLUCAO: TMemoField;
    SQLTemplateHELPCTIPO: TStringField;
    SQLTemplateTPHPICOD: TIntegerField;
    SQLTemplateHELPCNIVEL: TStringField;
    SQLTemplateHELPDTERMINO: TDateTimeField;
    SQLTemplateHELPCPERGUNTACHAVE: TStringField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateCLIEA60RAZAOSOC: TStringField;
    SQLTemplateCLIEA60CIDRES: TStringField;
    SQLTemplateCLIEA2UFRES: TStringField;
    SQLTemplateCLIEA60EMAIL: TStringField;
    SQLTemplateTPTAA30DESCRICAO: TStringField;
    SQLTptarefaTPTAICOD: TIntegerField;
    SQLTptarefaTPTAA30DESCRICAO: TStringField;
    PanelCabecalho: TPanel;
    LabelTitulo: TLabel;
    PanelNavigator: TPanel;
    PanelCentral: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBCheckPendente: TDBCheckBox;
    DBMemo2: TDBMemo;
    DBMemoSolucao: TDBMemo;
    DBEdit2: TDBEdit;
    Panel2: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    txtNivel: TEdit;
    DBEdit5: TDBEdit;
    DBGridAtendimento: TDBGrid;
    BtOK: TSpeedButton;
    BtCancel: TSpeedButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridAtendimentoDblClick(Sender: TObject);
    procedure DBMemoSolucaoKeyPress(Sender: TObject; var Key: Char);
    procedure DSHelpDataChange(Sender: TObject; Field: TField);
    procedure DSHelpStateChange(Sender: TObject);
    procedure BtCancelClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaAtendimento: TFormTelaConsultaAtendimento;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormTelaConsultaAtendimento.BitBtn1Click(Sender: TObject);
begin
      If not (SQLTemplate.State in dseditmodes) then
        begin
          SQLTemplate.Edit;
          if DBCheckPendente.Checked then
            SQLTemplatePENDENTE.AsString := 'S'
          else
            SQLTemplatePENDENTE.AsString := 'N';
        end;
      SQLTemplate.Post;
      FormTelaConsultaAtendimento.ModalResult := MrOk;
end;

procedure TFormTelaConsultaAtendimento.FormCreate(Sender: TObject);
var SQL :string;
begin
  if DM.GridAtendimento ='S' then
    DBGridAtendimento.Visible := true
  else
    DBGridAtendimento.Visible := false;

  if not SQLTemplate.Active then SQLTemplate.Active := TRUE;
  if DM.CodAtendimento <> '' then
    begin
      SQLTemplate.Active := false;
      SQLTemplate.SQL.Clear;
      SQL := 'SELECT * FROM HELPDESK WHERE HELPA13ID = "' + DM.CodAtendimento+'"';
      SQLTemplate.SQL.Add(SQL);
      SQLTemplate.Active := TRUE;
    end;
end;

procedure TFormTelaConsultaAtendimento.DBGridAtendimentoDblClick(Sender: TObject);
begin
      FormTelaConsultaAtendimento.ModalResult := MrOk;
      DM.CodAtendimento := '';
      DM.GridAtendimento := '';
end;

procedure TFormTelaConsultaAtendimento.DBMemoSolucaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := AnsiUpperCase(Key)[1];
end;

procedure TFormTelaConsultaAtendimento.DSHelpDataChange(
  Sender: TObject; Field: TField);
begin
  if SQLTemplatePENDENTE.AsString = 'N' then
    begin
      DBCheckPendente.Enabled := false;
      DBMemoSolucao.Enabled := false;
      DBMemoSolucao.Color := $00E0E0E0;
    end
  else
    begin
      DBCheckPendente.Enabled := true;
      DBMemoSolucao.Enabled := true;
      DBMemoSolucao.Color := clWindow;
    end


end;

procedure TFormTelaConsultaAtendimento.DSHelpStateChange(Sender: TObject);
begin
      if SQLTemplateHELPCNIVEL.AsString = 'S' then
         txtNivel.Text := 'Suporte'
      else
        if SQLTemplateHELPCNIVEL.AsString = 'T' then
           txtNivel.Text := 'Técnico'
        else
          if SQLTemplateHELPCNIVEL.AsString = 'T' then
             txtNivel.Text := 'Desenvolvimento';
end;

procedure TFormTelaConsultaAtendimento.BtCancelClick(Sender: TObject);
begin
   dm.GridAtendimento := '';
   dm.CodAtendimento  := '';
   FormTelaConsultaAtendimento.ModalResult := mrCancel;

end;

procedure TFormTelaConsultaAtendimento.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = char(#27) then BtOK.Click;
end;

end.
