unit CadastroProducaoRecursos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, DBTables, DBActns, ActnList, ImgList,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, RxDBComb;

type
  TFormCadastroProducaoRecursos = class(TFormCadastroTEMPLATE)
    SQLTemplatePRREA13ID: TStringField;
    SQLTemplatePRREICOD: TIntegerField;
    SQLTemplatePRREA60DESCR: TStringField;
    SQLTemplatePRREN2VALOR: TBCDField;
    SQLTemplatePRRECTIPOMEDIDA: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateUNIDICOD: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLUnidade: TRxQuery;
    SQLTemplateUNIDA5DESCR: TStringField;
    dsSQLUnidade: TDataSource;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    SQLTemplateTipoMedia: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure SQLTemplateDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroProducaoRecursos: TFormCadastroProducaoRecursos;

implementation

uses UnitLibrary, VarSYS;

{$R *.dfm}

procedure TFormCadastroProducaoRecursos.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PRODUCAORECURSOS';
  
end;

procedure TFormCadastroProducaoRecursos.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplatePRREN2VALOR.AsFloat := 0;
end;

procedure TFormCadastroProducaoRecursos.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if SQLTemplatePRREN2VALOR.AsFloat = 0 then
     begin
       Informa('Informe o valor do Recurso.');
       SQLTemplatePRREN2VALOR.FocusControl;
       Abort;
     end;
end;

procedure TFormCadastroProducaoRecursos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DSMasterSys := nil;
end;

procedure TFormCadastroProducaoRecursos.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if SQLTemplatePRRECTIPOMEDIDA.AsString = 'H' then
     SQLTemplateTipoMedia.AsString := 'Hora'
  else
    if SQLTemplatePRRECTIPOMEDIDA.AsString = 'Q' then
     SQLTemplateTipoMedia.AsString := 'Quantidade'
end;

procedure TFormCadastroProducaoRecursos.SQLTemplateDeleteError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  if pos('FOREIGN KEY', E.Message) > 0 then
     begin
       Informa('Você não pode Excluir este Recurso de Produção, pois ja esta sendo usado na arvore de produção.' + char(#13) + 'Exclua-o da Arvore que esta usando-o e tente exclui-lo novamente.' + char(#13) + 'Obrigado.');
       Abort;
     end;
end;

end.
