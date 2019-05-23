unit CadastroProducaoAtividade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, DBTables, DBActns, ActnList, ImgList,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls;

type
  TFormCadastroProducaoAtividade = class(TFormCadastroTEMPLATE)
    SQLTemplatePRATA13ID: TStringField;
    SQLTemplatePRATICOD: TIntegerField;
    SQLTemplatePRATA60DESCR: TStringField;
    SQLTemplatePRATN3GASTO: TBCDField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplateEMPRICOD: TIntegerField;
    Button4: TRxSpeedButton;
    SQLTemplatePRATINROFUNC: TIntegerField;
    SQLTemplatePRATN2GASTOFUNC: TBCDField;
    Button5: TRxSpeedButton;
    SQLTemplatePRATN2CUSTOEQUIP: TBCDField;
    SQLTemplatePRATN2TOTALATIV: TBCDField;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Button6: TRxSpeedButton;
    SQLTemplateTOTALGERAL: TFloatField;
    pnBottom: TPanel;
    SQLCentroCusto: TRxQuery;
    SQLFuncionarios: TRxQuery;
    SQLRecursos: TRxQuery;
    SQLEquipamentos: TRxQuery;
    pnBot1: TPanel;
    pnBot2: TPanel;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid1: TDBGrid;
    DBGrid4: TDBGrid;
    dsSQLCentroCusto: TDataSource;
    dsSQLFuncionarios: TDataSource;
    dsSQLRecursos: TDataSource;
    dsSQLEquipamentos: TDataSource;
    SQLFuncionariosFUNCA13ID: TStringField;
    SQLFuncionariosFUNCA60NOME: TStringField;
    SQLFuncionariosFUNCA15DEPARTAMENTO: TStringField;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    SQLRecursosPRREA60DESCR: TStringField;
    SQLRecursosPRREN2VALOR: TBCDField;
    SQLEquipamentosPREQA60DESCR: TStringField;
    SQLEquipamentosPREQN2VLRCOMPRA: TIntegerField;
    SQLCentroCustoCECUA15COD: TStringField;
    SQLCentroCustoCECUA60DESCR: TStringField;
    SQLCentroCustoCECUA30CODEDIT: TStringField;
    Label12: TLabel;
    SQLTemplatePRATN2TEMPOEXEC: TBCDField;
    DBEdit8: TDBEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    Atualizado : Boolean;
  public
    { Public declarations }
  end;

var
  FormCadastroProducaoAtividade: TFormCadastroProducaoAtividade;

implementation

uses VarSYS, UnitLibrary, FormResources, CadastroAtividadesCCusto,
  CadastroAtividadeFuncionario, CadastroProducaoAtivRecursos,
  CadastroProducaoAtivEquipamentos;

{$R *.dfm}

procedure TFormCadastroProducaoAtividade.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PRODUCAOATIVIDADE';
  if not SQLCentroCusto.Active  then SQLCentroCusto.Active  := True;
  if not SQLFuncionarios.Active then SQLFuncionarios.Active := True;
  if not SQLRecursos.Active     then SQLRecursos.Active     := True;
  if not SQLEquipamentos.Active then SQLEquipamentos.Active := True;
end;

procedure TFormCadastroProducaoAtividade.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateEMPRICOD.AsInteger      := EmpresaCorrente;
  SQLTemplatePRATINROFUNC.AsFloat    := 0;
  SQLTemplatePRATN2GASTOFUNC.AsFloat := 0;
  SQLTemplatePRATN2CUSTOEQUIP.AsFloat:= 0;
  SQLTemplatePRATN2TOTALATIV.AsFloat := 0;
  SQLTemplatePRATN3GASTO.AsFloat     := 0;
  SQLTemplatePRATN2TEMPOEXEC.AsFloat := 10;
end;

procedure TFormCadastroProducaoAtividade.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  //Multiplica o valor pela qtde de minutos necessarias.
  SQLTemplateTOTALGERAL.AsFloat := ((SQLTemplatePRATN2GASTOFUNC.AsFloat +
                                    SQLTemplatePRATN2CUSTOEQUIP.AsFloat +
                                    SQLTemplatePRATN3GASTO.AsFloat) / 60) * SQLTemplatePRATN2TEMPOEXEC.AsFloat;
end;

procedure TFormCadastroProducaoAtividade.SQLTemplateAfterPost(
  DataSet: TDataSet);
begin
  inherited;
{  if Atualizado then
     begin
        SQLTemplate.Edit;
        SQLTemplatePRATN2TOTALATIV.AsFloat := SQLTemplateTOTALGERAL.AsFloat;
        Atualizado := not Atualizado;
        SQLTemplate.Post;
     end; }
end;

procedure TFormCadastroProducaoAtividade.DSTemplateStateChange(
  Sender: TObject);
begin
  inherited;
{  if FormatFloat('#,####0.0000',SQLTemplatePRATN2TOTALATIV.AsFloat) <> FormatFloat('#,####0.0000',SQLTemplateTOTALGERAL.AsFloat) then
     Atualizado := True; }
end;

procedure TFormCadastroProducaoAtividade.DBEdit3Enter(Sender: TObject);
begin
  inherited;
  SQLTemplatePRATA60DESCR.FocusControl;
end;

procedure TFormCadastroProducaoAtividade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DSMasterSys   := Nil;
  DataSetLookup := Nil;
end;

procedure TFormCadastroProducaoAtividade.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if SQLTemplatePRATN2TEMPOEXEC.AsFloat <= 0 then
     begin
        SQLTemplatePRATN2TEMPOEXEC.FocusControl;
        Informa('O tempo de execução deve ser informado.');
        Abort;
     end;
  SQLTemplatePRATN2TOTALATIV.AsFloat := SQLTemplateTOTALGERAL.AsFloat;
end;

procedure TFormCadastroProducaoAtividade.Button1Click(Sender: TObject);
begin
  inherited;
  if TSpeedButton(Sender).Name = 'Button3' then
     begin
       DSMasterSys := DSTemplate;
       CriaFormulario(TFormCadastroAtividadesCCusto, 'FormCadastroAtividadesCCusto', True, False,SQLTemplatePRATA13ID.AsString);
     end;

  if TSpeedButton(Sender).Name = 'Button4' then
     begin
        DSMasterSys := DSTemplate;
        CriaFormulario(TFormCadastroAtividadeFuncionario,'FormCadastroAtividadeFuncionario',True,False,SQLTemplatePRATA13ID.AsString);
     end;

  if TSpeedButton(Sender).Name = 'Button5' then
     begin
        DSMasterSys := DSTemplate;
        CriaFormulario(TFormCadastroProducaoAtivRecursos,'FormCadastroProducaoAtivRecursos',True,False,SQLTemplatePRATA13ID.AsString);
     end;

  if TSpeedButton(Sender).Name = 'Button6' then
     begin
        DSMasterSys := DSTemplate;
        CriaFormulario(TFormCadastroProducaoAtivEquipamentos,'FormCadastroProducaoAtivEquipamentos',True,False,'');
     end;
end;

end.
