unit TelaTarefaHistorico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ConerBtn, jpeg, DBCtrls, Mask, DB,
  DBTables, RxQuery;

type
  TFormTelaTarefaHistorico = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    LabelTitulo: TLabel;
    SQLHistoricoTarefa: TRxQuery;
    dsSQLHistoricoTarefa: TDataSource;
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox2: TGroupBox;
    Panel3: TPanel;
    GroupBox3: TGroupBox;
    DBEdit2: TDBEdit;
    PanelNavigator: TPanel;
    btOk: TConerBtn;
    btCancel: TConerBtn;
    SQLUsuario: TRxQuery;
    DBMemo1: TDBMemo;
    gboHorario: TGroupBox;
    SQLHistoricoTarefaTAREA13ID: TStringField;
    SQLHistoricoTarefaTRHTICOD: TIntegerField;
    SQLHistoricoTarefaUSUAICOD: TIntegerField;
    SQLHistoricoTarefaUSUAA60LOGIN: TStringField;
    SQLHistoricoTarefaTRHTDHORAINICIO: TDateTimeField;
    SQLHistoricoTarefaTRHTDHORAFINAL: TDateTimeField;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    SQLHistoricoTarefaTRHTEA60RESPATENEMP: TStringField;
    DBEdit5: TDBEdit;
    SQLHistoricoTarefaREGISTRO: TDateTimeField;
    SQLHistoricoTarefaPENDENTE: TStringField;
    SQLHistoricoTarefaTRHTA30NROOS: TStringField;
    Label3: TLabel;
    DBEdit6: TDBEdit;
    SQLHistoricoTarefaTRHTA1000HISTORICO: TMemoField;
    procedure SQLHistoricoTarefaBeforePost(DataSet: TDataSet);
    procedure SQLHistoricoTarefaNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaTarefaHistorico: TFormTelaTarefaHistorico;

implementation

uses DataModulo, VarSYS;

{$R *.dfm}

procedure TFormTelaTarefaHistorico.SQLHistoricoTarefaBeforePost(
  DataSet: TDataSet);
begin
   SQLHistoricoTarefa.FieldByName('TRHTICOD').AsInteger := DM.ProximoCodigoUnico('TAREFAHISTORICO',SQLHistoricoTarefa,dsSQLHistoricoTarefa,1);

   if Dm.HistoricoHorario and
     (SQLHistoricoTarefaTRHTDHORAINICIO.IsNull or SQLHistoricoTarefaTRHTDHORAFINAL.IsNull or SQLHistoricoTarefaTRHTEA60RESPATENEMP.IsNull) then
      begin
         Application.MessageBox('Informe o horario de inicio e fim.','Atenção',MB_OK + MB_SETFOREGROUND + MB_ICONINFORMATION);
         SQLHistoricoTarefaTRHTDHORAINICIO.FocusControl;
         Abort;
      end;

   if Dm.HistoricoHorario then
      SQLHistoricoTarefa.FieldByName('TRHTA1000HISTORICO').AsString := 'Data: ' + FormatDateTime('dd/mm/yyyy hh:mm',SQLHistoricoTarefa.FieldByName('REGISTRO').AsDateTime) +
                                                                      '=> Usuário: ' + SQLHistoricoTarefa.FieldByName('USUAA60LOGIN').AsString + Char(13) +
                                                                      'Inicio: ' + FormatDateTime('HH:MM', SQLHistoricoTarefaTRHTDHORAINICIO.AsDateTime) + '  Término: ' + FormatDateTime('HH:MM', SQLHistoricoTarefaTRHTDHORAFINAL.AsDateTime) +
                                                                      ' Resposavel: ' + SQLHistoricoTarefaTRHTEA60RESPATENEMP.AsString + Char(13) +
                                                                      SQLHistoricoTarefa.FieldByName('TRHTA1000HISTORICO').AsString
   else
      SQLHistoricoTarefa.FieldByName('TRHTA1000HISTORICO').AsString := 'Data: ' + FormatDateTime('dd/mm/yyyy hh:mm',SQLHistoricoTarefa.FieldByName('REGISTRO').AsDateTime) +
                                                                      '=> Usuário: ' + SQLHistoricoTarefa.FieldByName('USUAA60LOGIN').AsString + Char(13) +
                                                                      SQLHistoricoTarefa.FieldByName('TRHTA1000HISTORICO').AsString;

   SQLHistoricoTarefa.FieldByName('PENDENTE').AsString := 'S';

end;

procedure TFormTelaTarefaHistorico.SQLHistoricoTarefaNewRecord(
  DataSet: TDataSet);
begin
   SQLHistoricoTarefa.FieldByName('TAREA13ID').AsString  := DSMasterSys.DataSet.FieldByName('TAREA13ID').AsString;
   SQLHistoricoTarefa.FieldByName('REGISTRO').AsDateTime := Date;
   SQLHistoricoTarefa.FieldByName('USUAICOD').AsInteger  := UsuarioCorrente;
end;

procedure TFormTelaTarefaHistorico.FormCreate(Sender: TObject);
begin
    gboHorario.Visible := Dm.HistoricoHorario;
end;

procedure TFormTelaTarefaHistorico.DBMemo1KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := UpCase(Key);
end;

end.
