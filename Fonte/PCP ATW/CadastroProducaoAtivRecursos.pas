unit CadastroProducaoAtivRecursos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, RxLookup;

type
  TFormCadastroProducaoAtivRecursos = class(TFormCadastroTEMPLATE)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplatePRREA13ID: TStringField;
    SQLTemplatePRATA13ID: TStringField;
    SQLTemplatePRARICOD: TIntegerField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLRecursos: TRxQuery;
    SQLRecursosPRREA13ID: TStringField;
    SQLRecursosPRREA60DESCR: TStringField;
    SQLRecursosPRREN2VALOR: TBCDField;
    SQLRecursosPRRECTIPOMEDIDA: TStringField;
    SQLRecursosUNIDICOD: TIntegerField;
    SQLTemplatePRREN2VALOR: TFloatField;
    SQLTemplatePRRECTIPOMEDIDA: TStringField;
    SQLTemplateUNIDICOD: TIntegerField;
    GroupBox1: TGroupBox;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label3: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    SQLUnidade: TRxQuery;
    SQLTemplateUNIDA5DESCR: TStringField;
    dsSQLRecursos: TDataSource;
    DBRadioGroup1: TDBRadioGroup;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    AcessaRecursos: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplatePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AcessaRecursosClick(Sender: TObject);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    ValorAnterior : Double;
  public
    { Public declarations }
  end;

var
  FormCadastroProducaoAtivRecursos: TFormCadastroProducaoAtivRecursos;

implementation

uses UnitLibrary, VarSYS, CadastroProducaoRecursos, FormResources;

{$R *.dfm}

procedure TFormCadastroProducaoAtivRecursos.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PRODUCAOATIVRECUR';
  ValorAnterior := 0;
end;

procedure TFormCadastroProducaoAtivRecursos.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplatePRATA13ID.AsString := DSMasterTemplate.DataSet.FieldByName('PRATA13ID').AsString;
end;

procedure TFormCadastroProducaoAtivRecursos.SQLTemplatePostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  if pos('PRIMARY or UNIQUE KEY', E.Message) > 0 then
     begin
       Informa('Este Recurso já esta associado a essa Atividade.' + char(#13) + 'Selecione outro Recurso ou cancele a operação.' + char(#13) + 'Obrigado.');
       Abort;
     end;
end;

procedure TFormCadastroProducaoAtivRecursos.SQLTemplateBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  ValorAnterior := SQLTemplatePRREN2VALOR.AsFloat;
end;

procedure TFormCadastroProducaoAtivRecursos.SQLTemplateAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  if ValorAnterior <> SQLTemplatePRREN2VALOR.AsFloat then
     begin
        DSMasterTemplate.DataSet.Edit;
        DSMasterTemplate.DataSet.FieldByName('PRATN3GASTO').AsFloat := DSMasterTemplate.DataSet.FieldByName('PRATN3GASTO').AsFloat + (SQLTemplatePRREN2VALOR.AsFloat - ValorAnterior);
        DSMasterTemplate.DataSet.Post;
     end;

end;

procedure TFormCadastroProducaoAtivRecursos.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  DSMasterTemplate.DataSet.Edit;
  DSMasterTemplate.DataSet.FieldByName('PRATN3GASTO').AsFloat := DSMasterTemplate.DataSet.FieldByName('PRATN3GASTO').AsFloat - SQLTemplatePRREN2VALOR.AsFloat;
  DSMasterTemplate.DataSet.Post;
end;

procedure TFormCadastroProducaoAtivRecursos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DSMasterSys   := Nil;
  DataSetLookup := Nil;
end;

procedure TFormCadastroProducaoAtivRecursos.AcessaRecursosClick(
  Sender: TObject);
begin
  inherited;
  FieldOrigem := 'PRREA13ID';
  FieldLookup := SQLTemplatePRREA13ID;
  DataSetLookup := SQLRecursos;
  CriaFormulario(TFormCadastroProducaoRecursos,'FormCadastroProducaoRecursos',False,True,'Atividade: ' + SQLTemplatePRATA13ID.AsString);
end;

procedure TFormCadastroProducaoAtivRecursos.RxDBLookupCombo1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     AcessaRecursos.Click;
end;

end.
