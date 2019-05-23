unit FormAgenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, MSNPopUp;

type
  TFormAgenda1 = class(TFormCadastroTEMPLATE)
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBMemo1: TDBMemo;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBComboBox1: TDBComboBox;
    MonthCalendar1: TMonthCalendar;
    MSNPopUp1: TMSNPopUp;
    SQLAgendaHoje: TQuery;
    TestePraVizualizar: TDataSource;
    SQLAgendaVer: TQuery;
    Timer1: TTimer;
    SQLAgendaVerCOUNT: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    SQLTemplateAGENA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateAGENICOD: TIntegerField;
    SQLTemplateAGENDCADASTRO: TDateTimeField;
    SQLTemplateAGENDCOMPROMISSO: TDateTimeField;
    SQLTemplateAGENHCOMPROMISSO: TStringField;
    SQLTemplateAGENDALERTA: TDateTimeField;
    SQLTemplateAGENHALERTA: TStringField;
    SQLTemplateAGENTCOMPROMISSO: TMemoField;
    SQLTemplateAGENDCONCLUSAO: TDateTimeField;
    SQLTemplateHELPA13ID: TStringField;
    SQLTemplateAGENA15STATUS: TStringField;
    SQLTemplateUSUAA60LOGIN: TStringField;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    HoraAlerta: TDateTimePicker;
    DBEdit2: TDBEdit;
    HoraCompromisso: TDateTimePicker;
    SQLTemplateCATEICOD: TIntegerField;
    SQLCategoria: TQuery;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    SQLTemplateTAREICOD: TIntegerField;
    SQLTarefa: TQuery;
    SQLTemplateTAREA30TITULO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure DBEdit2Exit(Sender: TObject);
    Procedure VerCompHoje();
    procedure MonthCalendar1Click(Sender: TObject);
    procedure HoraAlertaChange(Sender: TObject);
    procedure HoraCompromissoChange(Sender: TObject);
    procedure DBEdit1DblClick(Sender: TObject);
    procedure HoraAlertaEnter(Sender: TObject);
    procedure HoraCompromissoEnter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAgenda1: TFormAgenda1;
implementation

uses DataModulo;

{$R *.dfm}

Procedure TFormAgenda1.VerCompHoje();
var HOJE,SQL,AMANHA : STRING;
    Year1, Month1, Day1: Word;
    msg : integer;
begin
    SQLAgendaHoje.Active := false;
    SQLAgendaHoje.SQL.Clear;
    DecodeDate(DATE, Year1, Month1, Day1);
    HOJE :=  CURRTOSTR(MONTH1)+ '/' + CURRTOSTR(DAY1) + '/' + CURRTOSTR(YEAR1);
    AMANHA :=  CURRTOSTR(MONTH1) + '/' + CURRTOSTR(DAY1+1) + '/' + CURRTOSTR(YEAR1);
    SQL := ('SELECT count(*) FROM AGENDA WHERE AGENDCOMPROMISSO > CAST ('''+HOJE+' 00:00:00'' AS Timestamp) AND AGENDCOMPROMISSO < CAST ('''+AMANHA+' 00:00:00'' AS Timestamp) ');
    SQLAgendaHoje.SQL.Add(SQL);
    SQLAgendaHoje.Active := TRUE;
    msnpopup1.Text := '';
    if SQLAgendaHoje.FindField('count').AsInteger <> 0then
      msnpopup1.Text := 'Você tem '+inttostr(SQLAgendaHoje.FindField('count').AsInteger)+' tarefas para hoje...';
    MSNPopUp1.ShowPopUp;
end;

procedure TFormAgenda1.FormCreate(Sender: TObject);
begin
  inherited;
  MonthCalendar1.Date := date;
  TABELA := 'AGENDA';
  VerCompHoje();
end;

procedure TFormAgenda1.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
   SQLTemplateAGENDCADASTRO.Value := now()
end;

procedure TFormAgenda1.DBEdit2Exit(Sender: TObject);
var
tam,i: integer;
ver,data: string;
begin
  inherited;
  data := '';
  tam := length(SQLTemplateAGENDCOMPROMISSO.AsString)-9;
  ver := SQLTemplateAGENDCOMPROMISSO.AsString;
  for i:=1 to tam do
        begin
                data:=data+ver[i];
        end;
  MonthCalendar1.Date := strtodate(data);
end;

procedure TFormAgenda1.MonthCalendar1Click(Sender: TObject);
begin
  inherited;
  if DBEdit2.Focused then
    begin
      DBEdit2.Text := datetostr(MonthCalendar1.Date);
      DBEdit2.SetFocus;
    end
  else
    if DBEdit5.Focused then
      begin
        DBEdit5.Text := datetostr(MonthCalendar1.Date);
        DBEdit5.SetFocus;
      end
    else
      begin
        DBEdit2.SetFocus;
        DBEdit2.Text := datetostr(MonthCalendar1.Date);
      end;


end;

procedure TFormAgenda1.HoraAlertaChange(Sender: TObject);
begin
  inherited;
  DBEdit6.Text := timetostr(HoraAlerta.time);
end;

procedure TFormAgenda1.HoraCompromissoChange(Sender: TObject);
begin
  inherited;
  DBEdit4.Text := timetostr(HoraCompromisso.time);
end;

procedure TFormAgenda1.DBEdit1DblClick(Sender: TObject);
begin
  inherited;
  DBEdit1.Text := datetimetostr(now)
end;

procedure TFormAgenda1.HoraAlertaEnter(Sender: TObject);
begin
  inherited;
  DBEdit6.Text := timetostr(HoraAlerta.time);
end;

procedure TFormAgenda1.HoraCompromissoEnter(Sender: TObject);
begin
  inherited;
  DBEdit4.Text := timetostr(HoraCompromisso.time);
end;

procedure TFormAgenda1.DBEdit5Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit5.Text <> '  /  /    ') and (DBEdit2.Text <> '  /  /    ') then
    if strtodate(DBEdit5.Text) < strtodate(DBEdit2.Text) then
      begin
        showmessage('Atenção  a data do alarme é anterior a data do compromisso.'+char(#13)+'Selecione outra data posterior.');
        DBEdit5.SetFocus;
      end;
end;

end.
