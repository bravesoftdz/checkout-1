unit CadastroProducaoFasesAtividade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, RxLookup, DBCtrls;

type
  TFormCadastroProducaoFasesAtividade = class(TFormCadastroTEMPLATE)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    DBEdit10: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    SQLAtividade: TRxQuery;
    SQLAtividadePRATA13ID: TStringField;
    SQLAtividadePRATA60DESCR: TStringField;
    SQLAtividadePRATN3GASTO: TBCDField;
    SQLAtividadePRATINROFUNC: TIntegerField;
    SQLAtividadePRATN2GASTOFUNC: TBCDField;
    SQLAtividadePRATN2CUSTOEQUIP: TBCDField;
    SQLAtividadePRATN2TOTALATIV: TBCDField;
    SQLAtividadePRATN2TEMPOEXEC: TBCDField;
    DSSQLAtividade: TDataSource;
    SQLTemplatePRATA13ID: TStringField;
    SQLTemplatePRFAA13ID: TStringField;
    SQLTemplatePFATICOD: TIntegerField;
    SQLTemplatePRATN2TEMPOEXEC: TIntegerField;
    SQLTemplatePRATN2GASTOFUNC: TFloatField;
    SQLTemplatePRATN2CUSTOEQUIP: TFloatField;
    SQLTemplatePRATN3GASTO: TFloatField;
    SQLTemplatePRATN2TOTALATIV: TFloatField;
    AcessaAtividade: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplatePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure AcessaAtividadeClick(Sender: TObject);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    ValorAnterior, ValorAnteriorCusto : Double;
  public
    { Public declarations }
  end;

var
  FormCadastroProducaoFasesAtividade: TFormCadastroProducaoFasesAtividade;

implementation

uses UnitLibrary, VarSYS, FormResources,
  CadastroProducaoAtividade;

{$R *.dfm}

procedure TFormCadastroProducaoFasesAtividade.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PRODUCAOFASESATIV';
  ValorAnterior := 0;
  ValorAnteriorCusto := 0;
end;

procedure TFormCadastroProducaoFasesAtividade.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplatePRFAA13ID.AsString := DSMasterTemplate.DataSet.FieldByName('PRFAA13ID').AsString;
end;

procedure TFormCadastroProducaoFasesAtividade.SQLTemplatePostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  if pos('PRIMARY or UNIQUE KEY', E.Message) > 0 then
     begin
       Informa('Esta Atividade já esta associado a essa Fase.' + char(#13) + 'Selecione outra Atividade ou cancele a operação.' + char(#13) + 'Obrigado.');
       Abort;
     end;
end;

procedure TFormCadastroProducaoFasesAtividade.SQLTemplateAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  if (ValorAnteriorCusto <> SQLTemplatePRATN2TOTALATIV.AsFloat) or (ValorAnterior <> SQLTemplatePRATN2TEMPOEXEC.AsFloat) then
     begin
        DSMasterTemplate.DataSet.Edit;
        DSMasterTemplate.DataSet.FieldByName('PRFAN2TEMPOTOTAL').AsFloat := DSMasterTemplate.DataSet.FieldByName('PRFAN2TEMPOTOTAL').AsFloat + (SQLTemplatePRATN2TEMPOEXEC.AsFloat - ValorAnterior);
        DSMasterTemplate.DataSet.FieldByName('PRFAN2CUSTOTOTAL').AsFloat := DSMasterTemplate.DataSet.FieldByName('PRFAN2CUSTOTOTAL').AsFloat + (SQLTemplatePRATN2TOTALATIV.AsFloat - ValorAnteriorCusto);
        DSMasterTemplate.DataSet.Post;
     end;
end;

procedure TFormCadastroProducaoFasesAtividade.SQLTemplateBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  ValorAnterior      := SQLTemplatePRATN2TEMPOEXEC.AsFloat;
  ValorAnteriorCusto := SQLTemplatePRATN2TOTALATIV.AsFloat;
end;

procedure TFormCadastroProducaoFasesAtividade.AcessaAtividadeClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := SQLTemplatePRATA13ID;
  FieldOrigem := 'PRATA13ID';
  DataSetLookup := SQLAtividade;
  CriaFormulario(TFormCadastroProducaoAtividade,'FormCadastroProducaoAtividade',False,True,'Atividade: ' + SQLTemplatePRATA13ID.AsString);

end;

procedure TFormCadastroProducaoFasesAtividade.RxDBLookupCombo1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     AcessaAtividade.Click;
end;

procedure TFormCadastroProducaoFasesAtividade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DSMasterSys   := Nil;
  DataSetLookup := Nil;
end;

end.
