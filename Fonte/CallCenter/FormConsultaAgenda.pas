unit FormConsultaAgenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, ComCtrls, ExtCtrls;

type
  TFormTelaConsultaCompromisso = class(TForm)
    PanelCodigoDescricao: TPanel;
    PanelCabecalho: TPanel;
    MonthCalendar1: TMonthCalendar;
    SQLGeral: TQuery;
    DataSource1: TDataSource;
    Panel1: TPanel;
    SQLGeralAGENA13ID: TStringField;
    SQLGeralEMPRICOD: TIntegerField;
    SQLGeralTERMICOD: TIntegerField;
    SQLGeralAGENICOD: TIntegerField;
    SQLGeralAGENDCADASTRO: TDateTimeField;
    SQLGeralAGENDCOMPROMISSO: TDateTimeField;
    SQLGeralAGENHCOMPROMISSO: TStringField;
    SQLGeralAGENDALERTA: TDateTimeField;
    SQLGeralAGENHALERTA: TStringField;
    SQLGeralAGENTCOMPROMISSO: TMemoField;
    SQLGeralAGENDCONCLUSAO: TDateTimeField;
    SQLGeralHELPA13ID: TStringField;
    SQLGeralAGENA15STATUS: TStringField;
    SQLGeralUSUAA60LOGIN: TStringField;
    SQLGeralCATEICOD: TIntegerField;
    SQLGeralTAREICOD: TIntegerField;
    Bevel1: TBevel;
    DBGrid1: TDBGrid;
    Bevel2: TBevel;
    DBGrid2: TDBGrid;
    SQLTarefa: TQuery;
    SQLTarefaTAREA13ID: TStringField;
    SQLTarefaEMPRICOD: TIntegerField;
    SQLTarefaTERMICOD: TIntegerField;
    SQLTarefaTAREICOD: TIntegerField;
    SQLTarefaUSUAICOD: TIntegerField;
    SQLTarefaUSUAICODDEST: TIntegerField;
    SQLTarefaCLIEA13ID: TStringField;
    SQLTarefaTAREDDIGITACAO: TDateTimeField;
    SQLTarefaTAREDLEMBRETE: TDateTimeField;
    SQLTarefaTARETSOLICITACAO: TMemoField;
    SQLTarefaTAREDINICIO: TDateTimeField;
    SQLTarefaTARETEXECUCAO: TMemoField;
    SQLTarefaTAREDTERMINO: TDateTimeField;
    SQLTarefaPENDETE: TStringField;
    SQLTarefaREGISTRO: TDateTimeField;
    SQLTarefaTARECODATEND: TStringField;
    SQLTarefaTPTAICOD: TIntegerField;
    SQLTarefaTAREA30TITULO: TStringField;
    DataSource2: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaCompromisso: TFormTelaConsultaCompromisso;

implementation

{$R *.dfm}

procedure TFormTelaConsultaCompromisso.FormCreate(Sender: TObject);
VAR SQL, DATA : STRING;

begin
  SQLGeral.Active := FALSE;
  SQLGeral.SQL.Clear;
  DATA := FORMATDATETIME('MM/DD/YYYY',DATE);
  SQL := 'SELECT * FROM AGENDA WHERE AGENDCOMPROMISSO = '''+DATA+'''';
  SQLGeral.SQL.Add(SQL);
  SQLGeral.Active := TRUE;
end;

end.
