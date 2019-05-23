unit TelaQuestionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, DB, DBTables, MemTable, ExtCtrls, Buttons,
  RXCtrls, DBCtrls, Grids, DBGrids, RxQuery, StdCtrls, Mask, VarSys;

type
  TFormTelaQuestionario = class(TFormTelaGeralTEMPLATE)
    DSPerguntas: TDataSource;
    SQLOpcoes: TRxQuery;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    SQLPergunta: TRxQuery;
    SQLPerguntaQUESICOD: TIntegerField;
    SQLPerguntaQUEQICOD: TIntegerField;
    SQLPerguntaQUEQA60DESCR: TStringField;
    SQLOpcoesQUESICOD: TIntegerField;
    SQLOpcoesQUEQICOD: TIntegerField;
    SQLOpcoesQUQOICOD: TIntegerField;
    SQLOpcoesQUQOA30DESCR: TStringField;
    LabelGravar: TSpeedButton;
    SQLQuestionario: TRxQuery;
    SQLQuestionarioQUESICOD: TIntegerField;
    SQLQuestionarioQUEQICOD: TIntegerField;
    SQLQuestionarioQUEQA60DESCR: TStringField;
    SQLQuestionarioRespondido: TRxQuery;
    SQLQuestionarioRespondidoQUERA13ID: TStringField;
    SQLQuestionarioRespondidoEMPRICOD: TIntegerField;
    SQLQuestionarioRespondidoQUERICOD: TIntegerField;
    SQLQuestionarioRespondidoCLIEA13ID: TStringField;
    SQLQuestionarioRespondidoQUERDEMISSAO: TDateTimeField;
    SQLQuestionarioRespondidoPENDENTE: TStringField;
    SQLQuestionarioRespondidoREGISTRO: TDateTimeField;
    DSSQLQuestionarioRespondido: TDataSource;
    SQLQuestionarioRespostas: TRxQuery;
    SQLQuestionarioRespostasQUERA13ID: TStringField;
    SQLQuestionarioRespostasQUESICOD: TIntegerField;
    SQLQuestionarioRespostasQUEQICOD: TIntegerField;
    SQLQuestionarioRespostasQUQOICOD: TIntegerField;
    SQLQuestionarioRespostasPENDENTE: TStringField;
    SQLQuestionarioRespostasREGISTRO: TDateTimeField;
    TblPerguntas: TTable;
    TblPerguntasQUESICOD: TIntegerField;
    TblPerguntasQUEQICOD: TIntegerField;
    Panel4: TPanel;
    Edit1: TDBEdit;
    SQLOpcoesResposta: TRxQuery;
    SQLOpcoesRespostaQUESICOD: TIntegerField;
    SQLOpcoesRespostaQUEQICOD: TIntegerField;
    SQLOpcoesRespostaQUQOICOD: TIntegerField;
    SQLOpcoesRespostaQUQOA30DESCR: TStringField;
    BtnProximoRegistro: TSpeedButton;
    BtnRegistroAnterior: TSpeedButton;
    BtnPrimeiroRegistro: TSpeedButton;
    BtnUltimoRegistro: TSpeedButton;
    TblPerguntasRespondido: TStringField;
    TblPerguntasRespostas: TTable;
    TblPerguntasRespostasQUESICOD: TIntegerField;
    TblPerguntasRespostasQUEQICOD: TIntegerField;
    TblPerguntasRespostasQUQOICOD: TIntegerField;
    DBGridLista: TDBGrid;
    TblPerguntasPerguntaLookUp: TStringField;
    TblPerguntasRespostasOpcoesLookUp: TStringField;
    DSPerguntasRepostas: TDataSource;
    TblPerguntasRespostasSelecionado: TBooleanField;
    TblPerguntasTipo: TStringField;
    SQLQuestionarioQUEQCTIPO: TStringField;
    SQLQuestionarioRespostasQRESA254OBS: TStringField;
    TblPerguntasRespostasQRESA254OBS: TStringField;
    DBMemo1: TDBMemo;
    procedure LabelGravarClick(Sender: TObject);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure TblPerguntasBeforeInsert(DataSet: TDataSet);
    procedure TblPerguntasBeforeDelete(DataSet: TDataSet);
    procedure SQLQuestionarioRespondidoBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure BtnPrimeiroRegistroClick(Sender: TObject);
    procedure BtnUltimoRegistroClick(Sender: TObject);
    procedure BtnRegistroAnteriorClick(Sender: TObject);
    procedure BtnProximoRegistroClick(Sender: TObject);
    procedure DSPerguntasDataChange(Sender: TObject; Field: TField);
    procedure DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure TblPerguntasRespostasAfterPost(DataSet: TDataSet);
    procedure DBGridListaCellClick(Column: TColumn);
    procedure DBGridListaColEnter(Sender: TObject);
    procedure DBGridListaColExit(Sender: TObject);
    procedure TblPerguntasRespostasBeforeEdit(DataSet: TDataSet);
    procedure SQLQuestionarioRespondidoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    OriginalOptions : TDBGridOptions;
    Desmarcando,CriandoQuestionario:Boolean;
    QUERA13ID:String;
    procedure SaveBoolean(Grid : TDBGrid) ;

  public
    { Public declarations }
    procedure CriaQuestionario(QUESTIONARIO:Integer);
  end;

var
  FormTelaQuestionario: TFormTelaQuestionario;

implementation

uses DataModulo;

{$R *.dfm}
procedure TFormTelaQuestionario.SaveBoolean(Grid : TDBGrid) ;
begin
  Grid.SelectedField.Dataset.Edit ;
  Grid.SelectedField.AsBoolean := not Grid.SelectedField.AsBoolean ;
  Grid.SelectedField.Dataset.Post ;
end ;

procedure TFormTelaQuestionario.CriaQuestionario(QUESTIONARIO:Integer);
Begin
  CriandoQuestionario := True;
  If Not TblPerguntas.Active Then TblPerguntas.Open;
  If Not TblPerguntasRespostas.Active Then TblPerguntasRespostas.Open;
  While TblPerguntas.RecordCount>0 Do
    Begin
      While TblPerguntasRespostas.RecordCount>0 Do
        TblPerguntasRespostas.Delete;
      TblPerguntas.Delete;
    End;
  SQLQuestionario.ParamByName('QUESICOD').asInteger := QUESTIONARIO;
  SQLQuestionario.Open;
  SQLQuestionario.First;
  While Not SQLQuestionario.Eof Do
    Begin
      TblPerguntas.Append;
      TblPerguntasQUESICOD.asInteger  := SQLQuestionarioQUESICOD.asInteger;
      TblPerguntasQUEQICOD.asInteger  := SQLQuestionarioQUEQICOD.asInteger;
      TblPerguntasRespondido.asString := 'N';
      TblPerguntasTipo.asString       := SQLQuestionarioQUEQCTIPO.asString;
      TblPerguntas.Post;
      SQLOpcoesResposta.ParamByName('QUESICOD').asInteger:=SQLQuestionarioQUESICOD.asInteger;
      SQLOpcoesResposta.ParamByName('QUEQICOD').asInteger:=SQLQuestionarioQUEQICOD.asInteger;
      SQLOpcoesResposta.Open;
      SQLOpcoesResposta.First;
      While Not SQLOpcoesResposta.Eof Do
        Begin
          TblPerguntasRespostas.Append;
          TblPerguntasRespostasQUESICOD.asInteger := SQLQuestionarioQUESICOD.asInteger;
          TblPerguntasRespostasQUEQICOD.asInteger := SQLQuestionarioQUEQICOD.asInteger;
          TblPerguntasRespostasQUQOICOD.asInteger := SQLOpcoesRespostaQUQOICOD.asInteger;
          TblPerguntasRespostasSelecionado.Value  := False;
          TblPerguntasRespostas.Post;
          SQLOpcoesResposta.Next;
        End;
      SQLOpcoesResposta.Close;
      SQLQuestionario.Next;
    End;
  SQLQuestionario.Close;
  CriandoQuestionario := False;
  TblPerguntas.First;
End;

procedure TFormTelaQuestionario.LabelGravarClick(Sender: TObject);
begin
  inherited;
  If TblPerguntas.State in dsEditModes Then
    TblPerguntas.Post;
  TblPerguntas.First;
  While Not TblPerguntas.Eof Do
    Begin
      If TblPerguntasRespondido.asString='N' Then
        Begin
          ShowMessage('Existem Perguntas sem Respostas!');
          DSPerguntas.DataSet := TblPerguntas;
          DSPerguntasRepostas.DataSet := TblPerguntasRespostas;
          Abort;
        End;
      TblPerguntas.Next;
    End;
  SQLQuestionarioRespondido.Open;
  SQLQuestionarioRespondido.Append;
  SQLQuestionarioRespondidoCLIEA13ID.asString      := DM.ClienteQuestionario;
  SQLQuestionarioRespondidoQUERDEMISSAO.asDateTime := Date;
  SQLQuestionarioRespondido.Post;
  SQLQuestionarioRespostas.Open;
  TblPerguntas.First;
  While Not TblPerguntas.Eof Do
    Begin
      TblPerguntasRespostas.First;
      While Not TblPerguntasRespostas.Eof Do
        Begin
          If TblPerguntasRespostasSelecionado.Value = True Then
            Begin
              SQLQuestionarioRespostas.Append;
              SQLQuestionarioRespostasREGISTRO.asDateTime  := Now;
              SQLQuestionarioRespostasPENDENTE.asString    := 'S';
              SQLQuestionarioRespostasQUEQICOD.asInteger   := TblPerguntasRespostasQUEQICOD.asInteger;
              SQLQuestionarioRespostasQUERA13ID.asString   := QUERA13ID;
              SQLQuestionarioRespostasQUESICOD.asInteger   := TblPerguntasRespostasQUESICOD.asInteger;
              SQLQuestionarioRespostasQUQOICOD.asInteger   := TblPerguntasRespostasQUQOICOD.asInteger;
              SQLQuestionarioRespostasQRESA254OBS.asString := TblPerguntasRespostasQRESA254OBS.asString;
              SQLQuestionarioRespostas.Post;
            End;
          TblPerguntasRespostas.Next;
        End;
      TblPerguntas.Next;
    End;
  DM.ClienteQuestionario := '';
  Close;
end;

procedure TFormTelaQuestionario.BtnFecharTelaClick(Sender: TObject);
begin
  DM.ClienteQuestionario := '0';
  inherited;
end;

procedure TFormTelaQuestionario.TblPerguntasBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  If Not CriandoQuestionario Then Abort;
end;

procedure TFormTelaQuestionario.TblPerguntasBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  If Not CriandoQuestionario Then Abort;
end;

procedure TFormTelaQuestionario.SQLQuestionarioRespondidoBeforePost(DataSet: TDataSet);
begin
  inherited;
  If DataSet.FindField('REGISTRO') <> Nil Then
    DataSet.FindField('REGISTRO').AsDateTime := Now ;
  If DataSet.FindField('PENDENTE')<> Nil Then
    DataSet.FindField('PENDENTE').AsString := 'S' ;
  Case DataSet.State Of
    DsInsert: begin
                if (DataSet.Tag in [1,2,3]) Then
                  DM.CodigoAutomatico('QUESTIONARIORESPONDIDO', DSSQLQuestionarioRespondido, DataSet, 2, 0);
              End;
  end;
  QUERA13ID := SQLQuestionarioRespondidoQUERA13ID.asString;
end;

procedure TFormTelaQuestionario.FormCreate(Sender: TObject);
begin
  inherited;
  If TblPerguntas.Active Then TblPerguntas.Close;
  If TblPerguntas.Exists Then TblPerguntas.DeleteTable;
  TblPerguntas.CreateTable;
  TblPerguntas.AddIndex('Primario','QUESICOD;QUEQICOD',[IxPrimary]);
  If TblPerguntasRespostas.Active Then TblPerguntasRespostas.Close;
  If TblPerguntasRespostas.Exists Then TblPerguntasRespostas.DeleteTable;
  TblPerguntasRespostas.CreateTable;
  TblPerguntasRespostas.AddIndex('Primario','QUESICOD;QUEQICOD;QUQOICOD',[IxPrimary]);
  CriaQuestionario(DM.CodigoQuestioario);
end;

procedure TFormTelaQuestionario.BtnPrimeiroRegistroClick(Sender: TObject);
begin
  inherited;
  TblPerguntas.First;
end;

procedure TFormTelaQuestionario.BtnUltimoRegistroClick(Sender: TObject);
begin
  inherited;
  TblPerguntas.Last;
end;

procedure TFormTelaQuestionario.BtnRegistroAnteriorClick(Sender: TObject);
begin
  inherited;
  TblPerguntas.Prior;
end;

procedure TFormTelaQuestionario.BtnProximoRegistroClick(Sender: TObject);
begin
  inherited;
  TblPerguntas.Next;
end;

procedure TFormTelaQuestionario.DSPerguntasDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  If Field=Nil Then
    Begin
      BtnProximoRegistro.Enabled  := TblPerguntas.Active and Not TblPerguntas.Eof;
      BtnRegistroAnterior.Enabled := TblPerguntas.Active and Not TblPerguntas.Bof;
      BtnPrimeiroRegistro.Enabled := TblPerguntas.Active and Not TblPerguntas.Bof;
      BtnUltimoRegistro.Enabled   := TblPerguntas.Active and Not TblPerguntas.Eof;
    End;
end;

procedure TFormTelaQuestionario.DBGridListaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
Const
  CtrlState : array[Boolean] of Integer = (DFCS_BUTTONCHECK,
                                           DFCS_BUTTONCHECK or DFCS_CHECKED);
begin
  inherited;
  if Column.Field.DataType = ftBoolean then
    begin
      DBGridLista.Canvas.FillRect(Rect);
      DrawFrameControl(DBGridLista.Canvas.Handle,
                       Rect,
                       DFC_BUTTON,
                       CtrlState[Column.Field.AsBoolean]);
    end;
end;

procedure TFormTelaQuestionario.TblPerguntasRespostasAfterPost(
  DataSet: TDataSet);
Var
  Nenhum:Boolean;
  Posicao:TBookMark;
begin
  inherited;
  If CriandoQuestionario OR Desmarcando Then Exit;
  Nenhum:=True;
  Posicao := TblPerguntasRespostas.GetBookmark;
  TblPerguntasRespostas.DisableControls;
  TblPerguntasRespostas.First;
  While Not TblPerguntasRespostas.Eof Do
    Begin
      If TblPerguntasRespostasSelecionado.Value = True Then
        Begin
          Nenhum:=False;
          Break;
        End;
      TblPerguntasRespostas.Next;
    End;
  If Nenhum Then
    Begin
      If TblPerguntasRespondido.Value = 'S' Then
        Begin
          TblPerguntas.Edit;
          TblPerguntasRespondido.Value := 'N';
          TblPerguntas.Post;
        End;
    End
  Else
    If TblPerguntasRespondido.Value = 'N' Then
      Begin
        TblPerguntas.Edit;
        TblPerguntasRespondido.Value := 'S';
        TblPerguntas.Post;
      End;
  TblPerguntasRespostas.EnableControls;
  TblPerguntasRespostas.GotoBookmark(Posicao);
end;

procedure TFormTelaQuestionario.DBGridListaCellClick(Column: TColumn);
begin
  inherited;
  if DBGridLista.SelectedField.DataType = ftBoolean then
    SaveBoolean(DBGridLista) ;
end;

procedure TFormTelaQuestionario.DBGridListaColEnter(Sender: TObject);
begin
  inherited;
  if DBGridLista.SelectedField.DataType = ftBoolean then
    begin
      OriginalOptions := DBGridLista.Options ;
      DBGridLista.Options := DBGridLista.Options - [dgEditing] ;
    end ;
end;

procedure TFormTelaQuestionario.DBGridListaColExit(Sender: TObject);
begin
  inherited;
  if DBGridLista.SelectedField.DataType = ftBoolean then
    DBGridLista.Options := OriginalOptions;
end;

procedure TFormTelaQuestionario.TblPerguntasRespostasBeforeEdit(
  DataSet: TDataSet);
Var
  Posicao:TBookMark;
begin
  inherited;
  If Desmarcando Then Exit;
  If (TblPerguntasTipo.AsString = 'A') Then
    Begin
      Desmarcando:=True;
      Posicao := TblPerguntasRespostas.GetBookmark;
      TblPerguntasRespostas.DisableControls;
      TblPerguntasRespostas.First;
      While Not TblPerguntasRespostas.Eof Do
        Begin
          If (TblPerguntasRespostasSelecionado.Value=True) Then
            Begin
              TblPerguntasRespostas.Edit;
              TblPerguntasRespostasSelecionado.Value := False;
              TblPerguntasRespostas.Post;
            End;
          TblPerguntasRespostas.Next;
        End;
      TblPerguntasRespostas.EnableControls;
      TblPerguntasRespostas.GotoBookmark(Posicao);
      Desmarcando := False;
    End;
end;

procedure TFormTelaQuestionario.SQLQuestionarioRespondidoNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('EMPRICOD').Value := EmpresaCorrente;
end;

end.
