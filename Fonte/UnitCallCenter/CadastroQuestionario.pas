unit CadastroQuestionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, DBActns, ActnList, ImgList, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, DBCtrls, VarSys, FormResources, UCrpe32;

type
  TFormCadastroQuestionario = class(TFormCadastroTEMPLATE)
    SQLTemplateQUESICOD: TIntegerField;
    SQLTemplateQUESA60DESCR: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Questionrio1: TMenuItem;
    ReportQuestionario: TCrpe;
    SQLQuestionarioPergunta: TRxQuery;
    SQLQuestionarioPerguntaResposta: TRxQuery;
    DSQuetionarioPergunta: TDataSource;
    TblQuestionario: TTable;
    TblQuestionarioPergunta: TTable;
    TblQuestionarioPerguntaResposta: TTable;
    DSQuestionario: TDataSource;
    DSQuestionarioPergunta: TDataSource;
    TblQuestionarioQUESICOD: TIntegerField;
    TblQuestionarioQUESA60DESCR: TStringField;
    SQLQuestionarioPerguntaQUESICOD: TIntegerField;
    SQLQuestionarioPerguntaQUEQICOD: TIntegerField;
    SQLQuestionarioPerguntaQUEQA60DESCR: TStringField;
    SQLQuestionarioPerguntaPENDENTE: TStringField;
    SQLQuestionarioPerguntaREGISTRO: TDateTimeField;
    SQLQuestionarioPerguntaQUEQCTIPO: TStringField;
    TblQuestionarioPerguntaQUESICOD: TIntegerField;
    TblQuestionarioPerguntaQUEQICOD: TIntegerField;
    TblQuestionarioPerguntaQUEQA60DESCR: TStringField;
    TblQuestionarioPerguntaQUEQCTIPO: TStringField;
    SQLQuestionarioPerguntaRespostaQUESICOD: TIntegerField;
    SQLQuestionarioPerguntaRespostaQUEQICOD: TIntegerField;
    SQLQuestionarioPerguntaRespostaQUQOICOD: TIntegerField;
    SQLQuestionarioPerguntaRespostaQUQOA30DESCR: TStringField;
    SQLQuestionarioPerguntaRespostaQUQOIPONTOS: TIntegerField;
    SQLQuestionarioPerguntaRespostaQUQOIPESO: TIntegerField;
    SQLQuestionarioPerguntaRespostaPENDENTE: TStringField;
    SQLQuestionarioPerguntaRespostaREGISTRO: TDateTimeField;
    TblQuestionarioPerguntaRespostaQUESICOD: TIntegerField;
    TblQuestionarioPerguntaRespostaQUEQICOD: TIntegerField;
    TblQuestionarioPerguntaRespostaQUQOICOD: TIntegerField;
    TblQuestionarioPerguntaRespostaQUQOA30DESCR: TStringField;
    TblQuestionarioPerguntaRespostaQUQOIPONTOS: TIntegerField;
    TblQuestionarioPerguntaRespostaQUQOIPESO: TIntegerField;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Questionrio1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroQuestionario: TFormCadastroQuestionario;

implementation

uses CadastroQuestionarioPergunta, DataModulo;

{$R *.dfm}

procedure TFormCadastroQuestionario.Button1Click(Sender: TObject);
begin
  inherited;
  if TRxSpeedButton(Sender).Name = 'Button3' then
    Begin
      DSMasterSys := DSTemplate;
      CriaFormulario(TFormCadastroQuestionarioPergunta,
                     'FormCadastroQuestionarioPergunta',
                     True,
                     False, 'Questionário ' + SQLTemplateQUESA60DESCR.asString);
    End;
end;

procedure TFormCadastroQuestionario.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA:='QUESTIONARIO';
End;

procedure TFormCadastroQuestionario.Questionrio1Click(Sender: TObject);
begin
  inherited;
  SQLQuestionarioPergunta.Open;
  SQLQuestionarioPerguntaResposta.Open;
  TblQuestionario.CreateTable;
  TblQuestionario.AddIndex('QuestionarioPri','QUESICOD',[IxPrimary]);
  TblQuestionarioPergunta.CreateTable;
  TblQuestionarioPergunta.AddIndex('QuestPerguntaPri','QUESICOD;QUEQICOD',[IxPrimary]);
  TblQuestionarioPerguntaResposta.CreateTable;
  TblQuestionarioPerguntaResposta.AddIndex('QuestPerguntaRespPri','QUESICOD;QUEQICOD;QUQOICOD',[IxPrimary]);
  TblQuestionario.Open;
  TblQuestionarioPergunta.Open;
  TblQuestionarioPerguntaResposta.Open;
  TblQuestionario.Append;
  TblQuestionarioQUESICOD.asInteger     := SQLTemplateQUESICOD.AsInteger;
  TblQuestionarioQUESA60DESCR.asString  := SQLTemplateQUESA60DESCR.asString;
  TblQuestionario.Post;
  SQLQuestionarioPergunta.First;
  While Not SQLQuestionarioPergunta.Eof Do
    Begin
      TblQuestionarioPergunta.Append;
      TblQuestionarioPerguntaQUESICOD.asInteger    := SQLQuestionarioPerguntaQUESICOD.asInteger;
      TblQuestionarioPerguntaQUEQICOD.asInteger    := SQLQuestionarioPerguntaQUEQICOD.asInteger;
      TblQuestionarioPerguntaQUEQCTIPO.asString    := SQLQuestionarioPerguntaQUEQCTIPO.asString;
      TblQuestionarioPerguntaQUEQA60DESCR.asString := SQLQuestionarioPerguntaQUEQA60DESCR.asString;
      TblQuestionarioPergunta.Post;
      SQLQuestionarioPerguntaResposta.First;
      While Not SQLQuestionarioPerguntaResposta.Eof Do
        Begin
          TblQuestionarioPerguntaResposta.Append;
          TblQuestionarioPerguntaRespostaQUESICOD.asInteger    := SQLQuestionarioPerguntaRespostaQUESICOD.asInteger;
          TblQuestionarioPerguntaRespostaQUEQICOD.asInteger    := SQLQuestionarioPerguntaRespostaQUEQICOD.asInteger;
          TblQuestionarioPerguntaRespostaQUQOICOD.asInteger    := SQLQuestionarioPerguntaRespostaQUQOICOD.asInteger;
          TblQuestionarioPerguntaRespostaQUQOA30DESCR.asString := SQLQuestionarioPerguntaRespostaQUQOA30DESCR.asString;
          TblQuestionarioPerguntaResposta.Post;
          SQLQuestionarioPerguntaResposta.Next;
        End;
      SQLQuestionarioPergunta.Next;
    End;
  TblQuestionarioPerguntaResposta.Close;
  TblQuestionarioPergunta.Close;
  TblQuestionario.Close;
  SQLQuestionarioPerguntaResposta.Close;
  SQLQuestionarioPergunta.Close;
  ReportQuestionario.ReportName     := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Questionario.rpt' ;
  ReportQuestionario.Execute ;
end;

end.
