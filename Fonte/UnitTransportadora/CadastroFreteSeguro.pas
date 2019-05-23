unit CadastroFreteSeguro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, VarSys, FormResources, RxDBComb;

type
  TFormCadastroFreteSeguro = class(TFormCadastroTEMPLATE)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    RxDBComboBox3: TRxDBComboBox;
    Label23: TLabel;
    SQLTemplateFRETA13ID: TStringField;
    SQLTemplateFRETICOD: TIntegerField;
    SQLTemplateFRSGA1RESPONSAVEL: TStringField;
    SQLTemplateFRSGA60SEGURADORA: TStringField;
    SQLTemplateFRSGA20APOLICE: TStringField;
    SQLTemplateFRSGA20AVERBACAO: TStringField;
    SQLTemplateFRSGN2VALORAVERBA: TBCDField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure SQLTemplateBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroFreteSeguro: TFormCadastroFreteSeguro;

implementation

uses TelaConsultaProduto, CadastroUnidade;

{$R *.dfm}


procedure TFormCadastroFreteSeguro.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'FRETESEGURO';
end;

procedure TFormCadastroFreteSeguro.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('FRETA13ID').Value := DataSet.DataSource.DataSet.FindField('FRETA13ID').Value;
end;

procedure TFormCadastroFreteSeguro.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
var
  Qtde,BaseCalculo,Icms,Frete : double;
begin
  if DSMasterTemplate.DataSet.FieldByName('FRETCSTATUS').AsString <> 'A' then
    Abort
  else
     inherited;
end;

procedure TFormCadastroFreteSeguro.SQLTemplateBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if DSMasterTemplate.DataSet.FieldByName('FRETCSTATUS').AsString <> 'A' then
    Abort
end;

procedure TFormCadastroFreteSeguro.SQLTemplateBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  if DSMasterTemplate.DataSet.FieldByName('FRETCSTATUS').AsString <> 'A' then
    Abort;
end;

end.
