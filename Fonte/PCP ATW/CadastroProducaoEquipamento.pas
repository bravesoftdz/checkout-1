unit CadastroProducaoEquipamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, ToolEdit, RXDBCtrl, DBCtrls;

type
  TFormCadastroProducaoEquipamento = class(TFormCadastroTEMPLATE)
    SQLTemplatePREQA13ID: TStringField;
    SQLTemplatePREQICOD: TIntegerField;
    SQLTemplatePREQA60DESCR: TStringField;
    SQLTemplatePREQDCOMPRA: TDateTimeField;
    SQLTemplatePREQN2VLRCOMPRA: TIntegerField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplateIdade: TFloatField;
    SQLTemplateDepreciacaoMes: TFloatField;
    SQLTemplateDepreciacaoHora: TFloatField;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    SQLTemplatePREQN2TEMPOAQUEC: TIntegerField;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroProducaoEquipamento: TFormCadastroProducaoEquipamento;

implementation

uses VarSYS, UnitLibrary;

{$R *.dfm}

procedure TFormCadastroProducaoEquipamento.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PRODUCAOEQUIP';
end;

procedure TFormCadastroProducaoEquipamento.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if not SQLTemplatePREQDCOMPRA.IsNull and not SQLTemplatePREQN2VLRCOMPRA.IsNull then
     begin
        SQLTemplateIdade.AsFloat           := (- SQLTemplatePREQDCOMPRA.AsDateTime + Now) / 365;
        SQLTemplateDepreciacaoMes.AsFloat  := (SQLTemplatePREQN2VLRCOMPRA.AsFloat/SQLTemplateIdade.AsFloat)/12;
        SQLTemplateDepreciacaoHora.AsFloat := (SQLTemplateDepreciacaoMes.AsFloat / 30) / 24;
     end;
end;

procedure TFormCadastroProducaoEquipamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DSMasterSys := nil;
end;

procedure TFormCadastroProducaoEquipamento.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplatePREQN2TEMPOAQUEC.AsFloat := 0;
  SQLTemplatePREQN2VLRCOMPRA.AsFloat  := 0; 
end;

procedure TFormCadastroProducaoEquipamento.SQLTemplateDeleteError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  if pos('FOREIGN KEY', E.Message) > 0 then
     begin
       Informa('Você não pode Excluir este Equipamento de Produção, pois ja esta sendo usado na arvore de produção.' + char(#13) + 'Exclua-o da Arvore que esta usando-o e tente exclui-lo novamente.' + char(#13) + 'Obrigado.');
       Abort;
     end;
end;

end.
