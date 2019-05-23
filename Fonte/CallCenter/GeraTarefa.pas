unit GeraTarefa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBCtrls, StdCtrls, DBTables, DBActns,
  ActnList, ImgList, DB, RxQuery, Menus, Mask, Grids, DBGrids, ComCtrls,
  ExtCtrls, RXCtrls, Buttons, jpeg, RxDBComb;

type
  TFormGeraTarefa = class(TFormCadastroTEMPLATE)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    Label7: TLabel;
    Label8: TLabel;
    DataSource1: TDataSource;
    DBMemo3: TDBMemo;
    Label9: TLabel;
    CLIENTE: TQuery;
    SQLATENDIMENTO: TQuery;
    SQLUSUARIO: TQuery;
    SQLTemplateTAREA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateUSUAICOD: TIntegerField;
    SQLTemplateUSUAICODDEST: TIntegerField;
    SQLTemplateTAREICOD: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateTAREDDIGITACAO: TDateTimeField;
    SQLTemplateTAREA100TITULO: TStringField;
    SQLTemplateTAREDLEMBRETE: TDateTimeField;
    SQLTemplateTARETSOLICITACAO: TMemoField;
    SQLTemplateTAREDINICIO: TDateTimeField;
    SQLTemplateTARETEXECUCAO: TMemoField;
    SQLTemplateTAREDTERMINO: TDateTimeField;
    SQLTemplatePENDETE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateCLIEA60EMAIL: TStringField;
    SQLTemplateCLIEA60RAZAOSOC: TStringField;
    SQLTemplateCLIEA60CIDRES: TStringField;
    SQLTemplateCLIEA2UFRES: TStringField;
    SQLTemplateHELPCCONTATO: TStringField;
    SQLTemplateHELPTSOLICITACAO: TStringField;
    SQLTemplateHELPTSOLUCAO: TStringField;
    SQLTemplateTARECODATEND: TStringField;
    DSUsuario: TDataSource;
    CBemail: TCheckBox;
    Label6: TLabel;
    SQLUSUARIOUSUAA60LOGIN: TStringField;
    SQLUSUARIOUSUAICOD: TIntegerField;
    SQLUSUARIOUSUAA5SENHA: TStringField;
    SQLUSUARIOUSUACVERDADCOMPRCLI: TStringField;
    SQLUSUARIOUSUACDESBLOQCLI: TStringField;
    SQLUSUARIOUSUAN2PERCDESC: TBCDField;
    SQLUSUARIOUSUACVENDCLIBLOQ: TStringField;
    SQLUSUARIOUSUACCANCVENDA: TStringField;
    SQLUSUARIOPENDENTE: TStringField;
    SQLUSUARIOREGISTRO: TDateTimeField;
    SQLUSUARIOUSUACEXCLCLI: TStringField;
    SQLUSUARIOUSUACCANCPREVENDA: TStringField;
    SQLUSUARIOUSUCALTERASLDINVENTARIO: TStringField;
    SQLUSUARIOUSUACLIBERACREDITO: TStringField;
    SQLUSUARIOUSUACUSERMASTER: TStringField;
    SQLTipoTarefa: TQuery;
    SQLTemplateTPTAICOD: TIntegerField;
    SQLTemplateTPTAA30DESCRICAO: TStringField;
    Label10: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    SQLTemplateUSUAA60LOGIN: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    SQLTemplateTAREA30TITULO: TStringField;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGeraTarefa: TFormGeraTarefa;
  codcli : string;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormGeraTarefa.FormCreate(Sender: TObject);
VAR codcli : STRING;
begin
  inherited;
  TABELA := 'TAREFA';
//  SQLUSUARIO.OPEN;
//  SQLUSUARIO.FIRST;
//  while not SQLUSUARIO.Eof do
//    BEGIN
//        RxDBComboBox1.Items.Add(SQLUSUARIOUSUAA60LOGIN.AsString);
//        SQLUSUARIO.Next;
//    END;
  if codcli <> '' then
        SQLTemplate.Locate(SQLTemplateCLIEA13ID.asstring,CODCLI,[loCaseInsensitive])

end;

procedure TFormGeraTarefa.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
 SQLTemplateEMPRICOD.AsInteger := 1;
 SQLTemplateTERMICOD.AsInteger := 1;
 SQLTemplateUSUAICOD.AsInteger  := 1;
 SQLTemplateUSUAICODDEST.AsInteger  := 1;
 
 if dm.codatendimento <> '' then
   begin
   SQLTemplateTARECODATEND.Value := dm.codatendimento;
   SQLTemplateCLIEA13ID.Value := dm.codcliente;
   end;
end;

procedure TFormGeraTarefa.SQLTemplateAfterPost(DataSet: TDataSet);

begin
  inherited;

  if CBemail.Checked then
        begin
              showmessage('Enviar e-mail: você tem uma nova tarefa.');
        end;

end;

end.
