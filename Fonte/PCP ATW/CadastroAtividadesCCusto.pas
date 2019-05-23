unit CadastroAtividadesCCusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, RxLookup;

type
  TFormCadastroAtividadesCCusto = class(TFormCadastroTEMPLATE)
    SQLCentroCusto: TRxQuery;
    dsSQLCentroCusto: TDataSource;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    GroupBox1: TGroupBox;
    Label52: TLabel;
    Label53: TLabel;
    CodReduzido: TDBEdit;
    CodigoEdit: TDBEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    SQLUnidade: TRxQuery;
    dsSQLUnidade: TDataSource;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    SQLCentroCustoCECUA15COD: TStringField;
    SQLCentroCustoCECUICODREDUZ: TIntegerField;
    SQLCentroCustoCECUINIVEL: TIntegerField;
    SQLCentroCustoCECUA15CODPAI: TStringField;
    SQLCentroCustoCECUA30CODEDIT: TStringField;
    SQLCentroCustoCECUA60DESCR: TStringField;
    SQLTemplateCECUICODREDUZ: TIntegerField;
    SQLTemplateCECUA30CODEDIT: TStringField;
    SQLTemplatePRACN2PERRATEIO: TBCDField;
    SQLTemplatePRATA13ID: TStringField;
    SQLTemplatePRACICOD: TIntegerField;
    SQLTemplateCECUA15COD: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplatePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroAtividadesCCusto: TFormCadastroAtividadesCCusto;

implementation

uses UnitLibrary, VarSYS;

{$R *.dfm}

procedure TFormCadastroAtividadesCCusto.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PRODUCAOATIVCCUSTO';
  if not SQLUnidade.Active then SQLUnidade.Active := True;
  if not SQLCentroCusto.Active then SQLCentroCusto.Active := True;

end;

procedure TFormCadastroAtividadesCCusto.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplatePRATA13ID.AsString      := DSMasterTemplate.DataSet.FieldByName('PRATA13ID').AsString;
  SQLTemplatePRACN2PERRATEIO.AsFloat := 100;
end;

procedure TFormCadastroAtividadesCCusto.SQLTemplatePostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  if pos('PRIMARY or UNIQUE KEY', E.Message) > 0 then
     begin
       Informa('Este Centro de Custo já esta associado a essa Atividade.' + char(#13) + 'Selecione outro Centro de Custo ou cancele a operação.' + char(#13) + 'Obrigado.');
       Abort;
     end;
end;

procedure TFormCadastroAtividadesCCusto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DSMasterSys := nil;
end;

end.
