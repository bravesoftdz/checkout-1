unit CadastroQuestionarioPerguntaResposta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, DBActns, ActnList, ImgList, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, DBCtrls;

type
  TFormCadastroQuestionarioPerguntaResposta = class(TFormCadastroTEMPLATE)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplateQUESICOD: TIntegerField;
    SQLTemplateQUEQICOD: TIntegerField;
    SQLTemplateQUQOICOD: TIntegerField;
    SQLTemplateQUQOA30DESCR: TStringField;
    SQLTemplateQUQOIPONTOS: TIntegerField;
    SQLTemplateQUQOIPESO: TIntegerField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroQuestionarioPerguntaResposta: TFormCadastroQuestionarioPerguntaResposta;

implementation

{$R *.dfm}

procedure TFormCadastroQuestionarioPerguntaResposta.FormCreate(
  Sender: TObject);
begin
  inherited;
  TABELA:='QUESTIONARIOOPCOES';
end;

procedure TFormCadastroQuestionarioPerguntaResposta.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('QUESICOD').Value := DataSet.DataSource.DataSet.FieldByName('QUESICOD').Value ;
  DataSet.FieldByName('QUEQICOD').Value := DataSet.DataSource.DataSet.FieldByName('QUEQICOD').Value ;
end;

end.
