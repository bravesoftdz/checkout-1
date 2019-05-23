unit CadastroProducaoAtivEquipamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, RxLookup, DBCtrls, ToolEdit, RXDBCtrl;

type
  TFormCadastroProducaoAtivEquipamentos = class(TFormCadastroTEMPLATE)
    SQLTemplatePREQA13ID: TStringField;
    SQLTemplatePRATA13ID: TStringField;
    SQLTemplatePRAEICOD: TIntegerField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    SQLEquip: TRxQuery;
    SQLTemplateEMPRICOD: TIntegerField;
    StringField1: TStringField;
    SQLTemplatePREQA60DESCR: TStringField;
    dsSQLEquip: TDataSource;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLEquipPREQDCOMPRA: TDateTimeField;
    SQLEquipPREQN2VLRCOMPRA: TIntegerField;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    SQLTemplateIdade: TFloatField;
    SQLTemplateDepreciacaoMes: TFloatField;
    SQLTemplateDepreciacaoHora: TFloatField;
    SQLTemplatePREQDCOMPRA: TDateField;
    SQLTemplatePREQN2VLRCOMPRA: TFloatField;
    DBEdit7: TDBEdit;
    AcessaEquipamento: TSpeedButton;
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplatePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AcessaEquipamentoClick(Sender: TObject);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    ValorAnterior : Double;
  public
    { Public declarations }
  end;

var
  FormCadastroProducaoAtivEquipamentos: TFormCadastroProducaoAtivEquipamentos;

implementation

uses UnitLibrary, VarSYS, CadastroProducaoEquipamento, FormResources;

{$R *.dfm}

procedure TFormCadastroProducaoAtivEquipamentos.SQLTemplateCalcFields(DataSet: TDataSet);
begin
  inherited;
  if not SQLTemplatePREQN2VLRCOMPRA.IsNull and not SQLTemplatePREQDCOMPRA.IsNull then
     begin
        SQLTemplateIdade.AsFloat           := (- SQLTemplatePREQDCOMPRA.AsDateTime + Now) / 365;
        SQLTemplateDepreciacaoMes.AsFloat  := (SQLTemplatePREQN2VLRCOMPRA.AsFloat/SQLTemplateIdade.AsFloat)/12;
        SQLTemplateDepreciacaoHora.AsFloat := (SQLTemplateDepreciacaoMes.AsFloat / 30) / 24;
     end;
end;

procedure TFormCadastroProducaoAtivEquipamentos.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PRODUCAOATIVEQUIP';
end;

procedure TFormCadastroProducaoAtivEquipamentos.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  DSMasterTemplate.DataSet.Edit;
  DSMasterTemplate.DataSet.FieldByName('PRATN2CUSTOEQUIP').AsFloat := DSMasterTemplate.DataSet.FieldByName('PRATN2CUSTOEQUIP').AsFloat - SQLTemplateDepreciacaoHora.AsFloat;
  DSMasterTemplate.DataSet.Post;
end;

procedure TFormCadastroProducaoAtivEquipamentos.SQLTemplateBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  ValorAnterior := SQLTemplateDepreciacaoHora.AsFloat;
end;

procedure TFormCadastroProducaoAtivEquipamentos.SQLTemplateAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  if ValorAnterior <> SQLTemplateDepreciacaoHora.AsFloat then
     begin
        DSMasterTemplate.DataSet.Edit;
        DSMasterTemplate.DataSet.FieldByName('PRATN2CUSTOEQUIP').AsFloat := DSMasterTemplate.DataSet.FieldByName('PRATN2CUSTOEQUIP').AsFloat + (SQLTemplateDepreciacaoHora.AsFloat - ValorAnterior);
        DSMasterTemplate.DataSet.Post;
     end;
end;

procedure TFormCadastroProducaoAtivEquipamentos.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplatePRATA13ID.AsString := DSMasterTemplate.DataSet.FieldByName('PRATA13ID').AsString;
end;

procedure TFormCadastroProducaoAtivEquipamentos.SQLTemplatePostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  if pos('PRIMARY or UNIQUE KEY', E.Message) > 0 then
     begin
       Informa('Este Equipamento já esta associado a essa Atividade.' + char(#13) + 'Selecione outro Equipamento ou cancele a operação.' + char(#13) + 'Obrigado.');
       Abort;
     end;
end;

procedure TFormCadastroProducaoAtivEquipamentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DSMasterSys   := Nil;
  DataSetLookup := Nil;
end;

procedure TFormCadastroProducaoAtivEquipamentos.AcessaEquipamentoClick(
  Sender: TObject);
begin
  inherited;
  FieldOrigem := 'PREQA13ID';
  FieldLookup := SQLTemplatePREQA13ID;
  DataSetLookup := SQLEquip;
  CriaFormulario(TFormCadastroProducaoEquipamento,'FormCadastroProducaoEquipamento',False,True,'Atividade: ' + SQLTemplatePRATA13ID.AsString);
end;

procedure TFormCadastroProducaoAtivEquipamentos.RxDBLookupCombo1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     AcessaEquipamento.Click;
end;

end.
