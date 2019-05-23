unit RelatorioAnaliseQuestionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, RxQuery, ComCtrls,
  StdCtrls, Mask, ToolEdit, RxLookup, RXCtrls, ExtCtrls, Buttons, UCrpe32;

type
  TFormRelatorioAnaliseQuestionario = class(TFormRelatorioTEMPLATE)
    GroupBox2: TGroupBox;
    ComboQuestionario: TRxDBLookupCombo;
    DSSQLQuestionario: TDataSource;
    SQLQuestionario: TRxQuery;
    SQLQuestionarioQUESICOD: TIntegerField;
    SQLQuestionarioQUESA60DESCR: TStringField;
    SQLAnaliseQuestionario: TRxQuery;
    SQLAnaliseQuestionarioQUESA60DESCR: TStringField;
    SQLAnaliseQuestionarioCLIEA60RAZAOSOC: TStringField;
    SQLAnaliseQuestionarioCLIEA15FONE1: TStringField;
    SQLAnaliseQuestionarioQUEQA60DESCR: TStringField;
    SQLAnaliseQuestionarioQUQOA30DESCR: TStringField;
    SQLAnaliseQuestionarioNRO: TIntegerField;
    TblTemporariaQUESA60DESCR: TStringField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    TblTemporariaCLIEA15FONE1: TStringField;
    TblTemporariaQUEQA60DESCR: TStringField;
    TblTemporariaQUQOA30DESCR: TStringField;
    TblTemporariaNRO: TIntegerField;
    Report: TCrpe;
    SQLAnaliseQuestionarioQUEQICOD: TIntegerField;
    SQLAnaliseQuestionarioQUQOICOD: TIntegerField;
    TblTemporariaQUEQICOD: TIntegerField;
    TblTemporariaQUQOICOD: TIntegerField;
    CheckAnalitico: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioAnaliseQuestionario: TFormRelatorioAnaliseQuestionario;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioAnaliseQuestionario.FormCreate(Sender: TObject);
begin
  inherited;
  SQLQuestionario.Open;
end;

procedure TFormRelatorioAnaliseQuestionario.ExecutarBtnClick(
  Sender: TObject);
begin
  inherited;
  If ComboQuestionario.Value='' Then
    Begin
      Informa('Selecione o Questionário');
      Abort;
    End;
  SQLAnaliseQuestionario.Close;
  SQLAnaliseQuestionario.ParamByName('DataInicial').asDateTime := De.Date;
  SQLAnaliseQuestionario.ParamByName('DataFinal').asDateTime   := Ate.Date;
  SQLAnaliseQuestionario.ParamByName('QUESICOD').asInteger     := StrToInt(ComboQuestionario.Value);
  SQLAnaliseQuestionario.Open;
  BatchExec(SQLAnaliseQuestionario,TblTemporaria);
  //--------------------------------------------------------------------------\\
  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Analise de Questionario.rpt';
  Report.ReportTitle       := 'Relatório de Análise de Questionário' ;
  Report.WindowStyle.Title := 'Relatório de Análise de Questionário' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Retrieve ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa' ;
  Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                        FormatDateTime('dd/mm/yyyy', Ate.Date) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Send;
  If CheckAnalitico.Checked Then
    Begin
      Report.SectionFormat.Retrieve ;
      Report.SectionFormat.Section  :='GH2a';
      Report.SectionFormat.Suppress := CFalse;
      Report.SectionFormat.Section  :='GH2b';
      Report.SectionFormat.Suppress := CFalse;
      Report.SectionFormat.Section  :='D';
      Report.SectionFormat.Suppress := CFalse;
      Report.SectionFormat.Section  :='GF2';
      Report.SectionFormat.Suppress := CTrue;
      Report.SectionFormat.Send;
    End
  Else
    Begin
      Report.SectionFormat.Retrieve ;
      Report.SectionFormat.Section  :='GH2a';
      Report.SectionFormat.Suppress := CTrue;
      Report.SectionFormat.Section  :='GH2b';
      Report.SectionFormat.Suppress := CTrue;
      Report.SectionFormat.Section  :='D';
      Report.SectionFormat.Suppress := CTrue;
      Report.SectionFormat.Section  :='GF2';
      Report.SectionFormat.Suppress := CFalse;
      Report.SectionFormat.Send;
    End;
  Report.Execute;
end;

end.
