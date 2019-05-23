unit CadastroAtividadeFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, RxLookup;

type
  TFormCadastroAtividadeFuncionario = class(TFormCadastroTEMPLATE)
    SQLFuncionario: TRxQuery;
    dsSQLFuncionario: TDataSource;
    SQLFuncionarioFUNCA13ID: TStringField;
    SQLFuncionarioFUNCA10FONE1: TStringField;
    SQLFuncionarioFUNCA15SETOR: TStringField;
    SQLFuncionarioFUNCN3VLRREMUN: TBCDField;
    SQLFuncionarioFUNCN2PERCENCARGOS: TBCDField;
    SQLTemplatePRATA13ID: TStringField;
    SQLTemplateFUNCA13ID: TStringField;
    SQLTemplatePRAFICOD: TIntegerField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    SQLFuncionarioFUNCA60NOME: TStringField;
    GroupBox1: TGroupBox;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    SQLTemplateFUNCA60NOME: TStringField;
    SQLTemplateFUNCA10FONE1: TStringField;
    SQLTemplateFUNCA15SETOR: TStringField;
    SQLTemplateFUNCN3VLRREMUN: TFloatField;
    SQLTemplateFUNCN2PERCENCARGOS: TFloatField;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    ButtonFuncionario: TSpeedButton;
    SQLFuncionarioFUNCN2CARGAHORDIA: TBCDField;
    SQLTemplateFUNCN2CARGAHORDIA: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure SQLTemplatePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonFuncionarioClick(Sender: TObject);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateAfterDelete(DataSet: TDataSet);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    ValorAnterior : Double;
  public
    { Public declarations }
  end;

var
  FormCadastroAtividadeFuncionario: TFormCadastroAtividadeFuncionario;

implementation

uses UnitLibrary, VarSYS, CadastroFuncionario, FormResources;

{$R *.dfm}

procedure TFormCadastroAtividadeFuncionario.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PRODUCAOATIVFUNC';
  if not SQLFuncionario.Active then SQLFuncionario.Active := True;
  ValorAnterior := 0;
end;

procedure TFormCadastroAtividadeFuncionario.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplatePRATA13ID.AsString := DSMasterTemplate.DataSet.FieldByName('PRATA13ID').AsString;
end;

procedure TFormCadastroAtividadeFuncionario.SQLTemplateAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  SQLCount.Close;
  SQLCount.SQL.Text := 'select count (FUNCA13ID) as TotFunc from PRODUCAOATIVFUNC where PRATA13ID = "' + SQLTemplatePRATA13ID.AsString + '"';
  SQLCount.Open;

  if ValorAnterior <> SQLTemplateFUNCN3VLRREMUN.AsFloat then
     begin
        DSMasterTemplate.DataSet.Edit;
        DSMasterTemplate.DataSet.FieldByName('PRATN2GASTOFUNC').AsFloat := DSMasterTemplate.DataSet.FieldByName('PRATN2GASTOFUNC').AsFloat + ((((SQLTemplateFUNCN3VLRREMUN.AsFloat * (1+(SQLTemplateFUNCN2PERCENCARGOS.AsFloat)/100)) - ValorAnterior)/30) / SQLTemplateFUNCN2CARGAHORDIA.AsFloat);
        DSMasterTemplate.DataSet.FieldByName('PRATINROFUNC').AsFloat := SQLCount.FieldByName('TotFunc').AsFloat;
        DSMasterTemplate.DataSet.Post;
     end;

end;

procedure TFormCadastroAtividadeFuncionario.SQLTemplateBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  ValorAnterior := SQLTemplateFUNCN3VLRREMUN.AsFloat * (1+(SQLTemplateFUNCN2PERCENCARGOS.AsFloat)/100);
end;

procedure TFormCadastroAtividadeFuncionario.SQLTemplatePostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  if pos('PRIMARY or UNIQUE KEY', E.Message) > 0 then
     begin
       Informa('Este Funcioário já esta associado a essa Atividade.' + char(#13) + 'Selecione outro Funcionário ou cancele a operação.' + char(#13) + 'Obrigado.');
       Abort;
     end;

end;

procedure TFormCadastroAtividadeFuncionario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DSMasterSys   := Nil;
  DataSetLookup := Nil;
end;

procedure TFormCadastroAtividadeFuncionario.ButtonFuncionarioClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := SQLTemplateFUNCA13ID;
  FieldOrigem := 'FUNCA13ID';
  DataSetLookup := SQLFuncionario;
  CriaFormulario(TFormCadastroFuncionario,'FormCadastroFuncionario',False,True,'Atividade: ' + SQLTemplatePRATA13ID.AsString);

end;

procedure TFormCadastroAtividadeFuncionario.RxDBLookupCombo1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     ButtonFuncionario.Click;
end;

procedure TFormCadastroAtividadeFuncionario.SQLTemplateAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  SQLCount.Close;
  SQLCount.SQL.Text := 'select count (FUNCA13ID) as TotFunc from PRODUCAOATIVFUNC where PRATA13ID = "' + SQLTemplatePRATA13ID.AsString + '"';
  SQLCount.Open;

  DSMasterTemplate.DataSet.Edit;
  DSMasterTemplate.DataSet.FieldByName('PRATN2GASTOFUNC').AsFloat := DSMasterTemplate.DataSet.FieldByName('PRATN2GASTOFUNC').AsFloat - ValorAnterior;
  DSMasterTemplate.DataSet.FieldByName('PRATINROFUNC').AsFloat := SQLCount.FieldByName('TotFunc').AsFloat;
  DSMasterTemplate.DataSet.Post;
end;

procedure TFormCadastroAtividadeFuncionario.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  ValorAnterior := ((((SQLTemplateFUNCN3VLRREMUN.AsFloat * (1+(SQLTemplateFUNCN2PERCENCARGOS.AsFloat)/100)) - ValorAnterior)/30)/ SQLTemplateFUNCN2CARGAHORDIA.AsFloat);
end;

end.
