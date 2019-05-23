unit CadastroQuestionarioPergunta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBCtrls, DB, DBActns, ActnList, ImgList,
  DBTables, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls,
  ExtCtrls, RXCtrls, Buttons, VarSys, FormResources, RxDBComb;

type
  TFormCadastroQuestionarioPergunta = class(TFormCadastroTEMPLATE)
    SQLTemplateQUESICOD: TIntegerField;
    SQLTemplateQUEQICOD: TIntegerField;
    SQLTemplateQUEQA60DESCR: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label5: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    SQLTemplateQUEQCTIPO: TStringField;
    Label3: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroQuestionarioPergunta: TFormCadastroQuestionarioPergunta;

implementation

uses CadastroQuestionarioPerguntaResposta;

{$R *.dfm}

procedure TFormCadastroQuestionarioPergunta.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA:='QUESTIONARIOQUESTAO';
end;

procedure TFormCadastroQuestionarioPergunta.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('QUESICOD').Value := DataSet.DataSource.DataSet.FieldByName('QUESICOD').Value ;
end;

procedure TFormCadastroQuestionarioPergunta.Button1Click(Sender: TObject);
begin
  inherited;
  if TRxSpeedButton(Sender).Name = 'Button3' then
    Begin
      DSMasterSys := DSTemplate;
      CriaFormulario(TFormCadastroQuestionarioPerguntaResposta,
                     'FormCadastroQuestionarioPerguntaResposta',
                     True,
                     False, 'Pergunta ' + SQLTemplateQUEQA60DESCR.asString);
    End;
end;

end.
