unit CadastroTipoTarefa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBCtrls, DB, DBTables, DBActns, ActnList,
  ImgList, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls,
  ExtCtrls, RXCtrls, Buttons, jpeg, RxDBComb;

type
  TFormCadastroTipoTarefa = class(TFormCadastroTEMPLATE)
    SQLTemplateTPTAICOD: TIntegerField;
    SQLTemplateTPTAA30DESCRICAO: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplateTPTACINTEXT: TStringField;
    RxDBComboBox1: TRxDBComboBox;
    Label3: TLabel;
    chkCheckList: TDBCheckBox;
    SQLTemplateTPTACCHECKLIST: TStringField;
    pnCheckList: TPanel;
    mmCheckList: TDBMemo;
    Label4: TLabel;
    Panel6: TPanel;
    Label5: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    SQLTemplateTPTAA13PRAZOMAX: TStringField;
    SQLTemplateTPTAA1000CHECKLIST: TMemoField;
    procedure FormCreate(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure chkCheckListClick(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroTipoTarefa: TFormCadastroTipoTarefa;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormCadastroTipoTarefa.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'TIPOTAREFA';
end;

procedure TFormCadastroTipoTarefa.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  pnCheckList.Visible := (SQLTemplateTPTACCHECKLIST.AsString = 'S');
end;

procedure TFormCadastroTipoTarefa.chkCheckListClick(Sender: TObject);
begin
  inherited;
  if SQLTemplate.State in dsEditModes then
     pnCheckList.Visible := chkCheckList.Checked;
end;

procedure TFormCadastroTipoTarefa.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (SQLTemplateTPTACCHECKLIST.AsString = 'S') and ((SQLTemplateTPTAA1000CHECKLIST.AsString = '') or (SQLTemplateTPTAA1000CHECKLIST.IsNull)) then
     begin
        SQLTemplateTPTAA1000CHECKLIST.FocusControl;
        Informa('Você deve informar a sequencia de CheckList.');
        Abort;
     end;
end;

procedure TFormCadastroTipoTarefa.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateTPTACCHECKLIST.AsString := 'N';
  SQLTemplateTPTACINTEXT.AsString    := 'I';  
end;

end.
