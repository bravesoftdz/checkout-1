unit TelaManutHorario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, StdCtrls, Mask,
  ToolEdit, RxLookup, DB, DBTables, RxQuery, MemTable, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaManutHorario = class(TFormTelaGeralTEMPLATE)
    Label22: TLabel;
    ComboProfissional: TRxDBLookupCombo;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    De: TDateEdit;
    Ate: TDateEdit;
    SQLProfissional: TQuery;
    DSSQLProfissional: TDataSource;
    SQLConfigAgenda: TQuery;
    SQLConfigAgendaCFAGICOD: TIntegerField;
    SQLConfigAgendaPROFICOD: TIntegerField;
    SQLConfigAgendaUSUAICOD: TIntegerField;
    SQLConfigAgendaCFAGDFERIAINI: TDateTimeField;
    SQLConfigAgendaCFAGDFERIAFIM: TDateTimeField;
    SQLConfigAgendaCFAGIINTERVALO: TIntegerField;
    SQLConfigAgendaCFAGCDOMINGO: TStringField;
    SQLConfigAgendaCFAGCSEGUNDA: TStringField;
    SQLConfigAgendaCFAGCTERCA: TStringField;
    SQLConfigAgendaCFAGCQUARTA: TStringField;
    SQLConfigAgendaCFAGCQUINTA: TStringField;
    SQLConfigAgendaCFAGCSEXTA: TStringField;
    SQLConfigAgendaCFAGCSABADO: TStringField;
    SQLConfigAgendaCFAGDDOMINI: TDateTimeField;
    SQLConfigAgendaCFAGDDOMFIM: TDateTimeField;
    SQLConfigAgendaCFAGDSEGINI: TDateTimeField;
    SQLConfigAgendaCFAGDSEGFIM: TDateTimeField;
    SQLConfigAgendaCFAGDTERINI: TDateTimeField;
    SQLConfigAgendaCFAGDTERFIM: TDateTimeField;
    SQLConfigAgendaCFAGDQUAINI: TDateTimeField;
    SQLConfigAgendaCFAGDQUAFIM: TDateTimeField;
    SQLConfigAgendaCFAGDQUIINI: TDateTimeField;
    SQLConfigAgendaCFAGDQUIFIM: TDateTimeField;
    SQLConfigAgendaCFAGDSEXINI: TDateTimeField;
    SQLConfigAgendaCFAGDSEXFIM: TDateTimeField;
    SQLConfigAgendaCFAGDSABINI: TDateTimeField;
    SQLConfigAgendaCFAGDSABFIM: TDateTimeField;
    SQLFeriado: TQuery;
    SQLFeriadoFERIDDATA: TDateTimeField;
    SQLFeriadoFERIA60DESCR: TStringField;
    SQLAgenda: TRxQuery;
    SQLAgendaAGENICOD: TIntegerField;
    SQLAgendaCLIEA13ID: TStringField;
    SQLAgendaCLDPICOD: TIntegerField;
    SQLAgendaPROFICOD: TIntegerField;
    SQLAgendaAGENDMARCACAO: TDateTimeField;
    SQLAgendaFerias: TRxQuery;
    SQLAgendaFeriasAGENICOD: TIntegerField;
    SQLAgendaFeriasCLIEA13ID: TStringField;
    SQLAgendaFeriasCLDPICOD: TIntegerField;
    SQLAgendaFeriasPROFICOD: TIntegerField;
    SQLAgendaFeriasAGENDMARCACAO: TDateTimeField;
    DSSQLAgendamento: TDataSource;
    SQLAgendamento: TRxQuery;
    SQLAgendamentoAGENICOD: TIntegerField;
    SQLAgendamentoCLIEA13ID: TStringField;
    SQLAgendamentoCLDPICOD: TIntegerField;
    SQLAgendamentoAGENICODAGRUP: TIntegerField;
    SQLAgendamentoPROFICOD: TIntegerField;
    SQLAgendamentoAGENDMARCACAO: TDateTimeField;
    SQLAgendamentoAGENCSTATUS: TStringField;
    SQLAgendamentoAGENINRORECIBO: TIntegerField;
    SQLAgendamentoUSUAICOD: TIntegerField;
    SQLAgendamentoESPEICOD: TIntegerField;
    SQLAgendamentoAGENA254OBS: TStringField;
    SQLAgendamentoAGENDDIGIT: TDateTimeField;
    SQLAgendamentoAGENN3VLRCONSULTA: TFloatField;
    SQLAgendamentoAGENN3VLRPAGO: TFloatField;
    MemDias: TMemoryTable;
    MemDiasDom: TIntegerField;
    MemDiasSeg: TIntegerField;
    MemDiasTer: TIntegerField;
    MemDiasQua: TIntegerField;
    MemDiasQui: TIntegerField;
    MemDiasSex: TIntegerField;
    MemDiasSab: TIntegerField;
    MemDiasDomHoraIni: TDateTimeField;
    MemDiasDomHoraFim: TDateTimeField;
    MemDiasSegHoraIni: TDateTimeField;
    MemDiasSegHoraFim: TDateTimeField;
    MemDiasTerHoraIni: TDateTimeField;
    MemDiasTerHoraFim: TDateTimeField;
    MemDiasQuaHoraIni: TDateTimeField;
    MemDiasQuaHoraFim: TDateTimeField;
    MemDiasQuiHoraIni: TDateTimeField;
    MemDiasQuiHoraFim: TDateTimeField;
    MemDiasSexHoraIni: TDateTimeField;
    MemDiasSexHoraFim: TDateTimeField;
    MemDiasSabHoraIni: TDateTimeField;
    MemDiasSabHoraFim: TDateTimeField;
    SQLExisteData: TRxQuery;
    SQLExisteDataAGENDMARCACAO: TDateTimeField;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EditHoraInicial: TEdit;
    EditHoraFinal: TEdit;
    SQLAgendamentoExcluir: TRxQuery;
    SQLProfissionalVENDICOD: TIntegerField;
    SQLProfissionalVENDA60NOME: TStringField;
    SQLProfissionalESPEICOD: TIntegerField;
    ButtonGerarManual: TSpeedButton;
    BtApagaHorarios: TSpeedButton;
    procedure ButtonGerarManualClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaManutHorario: TFormTelaManutHorario;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormTelaManutHorario.ButtonGerarManualClick(Sender: TObject);
var
  I : Integer;
  HoraInicial,HoraFinal,Data,DiaAtual : TDateTime;
  Entra : Boolean;
begin
  inherited;

  end;

procedure TFormTelaManutHorario.FormCreate(Sender: TObject);
begin
  inherited;
  SQLProfissional.Open;
end;

end.
