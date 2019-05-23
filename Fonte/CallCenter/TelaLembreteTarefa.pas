unit TelaLembreteTarefa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, RxDBComb, ExtCtrls, RxQuery, Grids,
  DBGrids, DBCtrls, Mask, Buttons, dateutils, dbcgrids, ConerBtn;

type
  TFormTelaLembreteTarefa = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SQLTarefa: TRxQuery;
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
    SQLTarefaTAREDTERMINO: TDateTimeField;
    SQLTarefaREGISTRO: TDateTimeField;
    SQLTarefaTPTAICOD: TIntegerField;
    SQLTarefaTAREA30TITULO: TStringField;
    SQLTarefaHELPA13ID: TStringField;
    SQLTarefaTAREDPRAZOMAX: TDateTimeField;
    DSLembrete: TDataSource;
    SQLTarefaTAREHLEMBRETE: TStringField;
    SQLTarefaTARECPENDENTE: TStringField;
    SQLTarefaTAREDULTAGEND: TDateTimeField;
    DBCtrlGridTarefaAviso: TDBCtrlGrid;
    DBTitulo: TDBText;
    Image1: TImage;
    DBText4: TDBText;
    DBText5: TDBText;
    ComboBoxReaviso: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lblPrazoConclusao: TLabel;
    DBTextPrazoConclusao: TDBText;
    lblObs: TLabel;
    SQLTarefaTAREA60MOTIVOADIO: TStringField;
    BtOK: TConerBtn;
    pnMais: TPanel;
    DBMemoMotivo: TDBMemo;
    btAdioOK: TConerBtn;
    btAdioCancela: TConerBtn;
    SQLTarefaTARECSTATUS: TStringField;
    SQLTarefaTAREA254MOTIVOCANCEL: TStringField;
    pnLegenda: TPanel;
    Label31: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    btAceitar: TConerBtn;
    btRecusar: TConerBtn;
    BTAdiar: TConerBtn;
    BTAbrir: TConerBtn;
    pnAdiamento: TPanel;
    pnBotoes: TPanel;
    pnBottom: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    CboReaviso: TComboBox;
    Label2: TLabel;
    pnMotivoCanc: TPanel;
    Label3: TLabel;
    DBMemoMotivoCancelamento: TDBMemo;
    procedure BtOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBCtrlGridTarefaAvisoDblClick(Sender: TObject);
    procedure DSLembreteDataChange(Sender: TObject; Field: TField);
    procedure BTAdiarClick(Sender: TObject);
    procedure btAdioOKClick(Sender: TObject);
    procedure btAdioCancelaClick(Sender: TObject);
    procedure DBMemoMotivoKeyPress(Sender: TObject; var Key: Char);
    procedure DSLembreteStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SQLTarefaAfterScroll(DataSet: TDataSet);
    procedure btRecusarClick(Sender: TObject);
    procedure btAceitarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaLembreteTarefa: TFormTelaLembreteTarefa;

implementation

uses DataModulo, Principal, TelaConsultaTarefa, FormResources, UnitLibrary;

{$R *.dfm}

procedure TFormTelaLembreteTarefa.BtOKClick(Sender: TObject);
begin
   Close;
end;

procedure TFormTelaLembreteTarefa.FormCreate(Sender: TObject);
begin
     SQLTarefa.Close;
     SQLTarefa.MacroByName('DATA').AsString := 'TAREDLEMBRETE <= "' + FormatDateTime('mm/dd/yyyy',Date) + '"';
     SQLTarefa.Open;
     if SQLTarefaTAREDPRAZOMAX.AsDateTime < Now then
       begin
         DBCtrlGridTarefaAviso.SelectedColor := $00CECEFB;
         lblObs.Caption := 'Esta tarefa estourou o prazo máximo de conclusão.'
       end
     else
       begin
         DBCtrlGridTarefaAviso.SelectedColor := $00EFEAD3;
         lblObs.Caption := ''
       end;
    pnMais.Visible := False;
end;

procedure TFormTelaLembreteTarefa.DBCtrlGridTarefaAvisoDblClick(Sender: TObject);
begin
    DM.CodTarefa := SQLTarefaTAREA13ID.AsString;
    DM.GridTarefa := 'N';
    Application.CreateForm(TFormTelaConsultaTarefa,FormTelaConsultaTarefa);
    FormTelaConsultaTarefa.ShowModal;
    if FormTelaConsultaTarefa.ModalResult = MrOK then
       FormTelaConsultaTarefa.Close;
end;

procedure TFormTelaLembreteTarefa.DSLembreteDataChange(Sender: TObject;
  Field: TField);
begin
   DBTextPrazoConclusao.Visible := SQLTarefaTAREDPRAZOMAX.Value <> 0;
   lblPrazoConclusao.Visible    := SQLTarefaTAREDPRAZOMAX.Value <> 0;
   if SQLTarefaTAREDPRAZOMAX.AsDateTime < Now then
     begin
       DBCtrlGridTarefaAviso.SelectedColor := $00CECEFB;
       lblObs.Caption := 'Esta tarefa estourou o prazo máximo de conclusão.'
     end
   else
     begin
       DBCtrlGridTarefaAviso.SelectedColor := $00EFEAD3;
       lblObs.Caption := ''
     end;
   BTAdiar.Enabled := not SQLTarefaTAREA30TITULO.IsNull and (CboReaviso.Text <> '');
   BTAbrir.Enabled := not SQLTarefaTAREA30TITULO.IsNull and (CboReaviso.Text <> '');
   btRecusar.Enabled := SQLTarefaTARECSTATUS.IsNull;
   btAceitar.Enabled := SQLTarefaTARECSTATUS.IsNull;
end;

procedure TFormTelaLembreteTarefa.BTAdiarClick(Sender: TObject);
begin
    SQLTarefa.Edit;
    pnAdiamento.Visible  := True;
    pnMotivoCanc.Visible := False;
    pnMais.Visible       := True;
    pnMais.Visible       := True;
end;

procedure TFormTelaLembreteTarefa.btAdioOKClick(Sender: TObject);
var Data : TDate;
    Hora : TTime;
begin
    if DBMemoMotivo.Field.FieldName = 'TAREA60MOTIVOADIO' then
       begin
          if SQLTarefaTAREDPRAZOMAX.Value <> 0 then
            begin
              if CboReaviso.Text <> '' then
                begin
                  SQLTarefa.Edit;
                  pnMais.Visible := False;
                  if CboReaviso.Text[4] = 'D' then
                     begin
                       Data := IncDay(SQLTarefaTAREDLEMBRETE.AsDateTime,strtoint(Copy(CboReaviso.Text,0,2)));
                       SQLTarefaTAREDLEMBRETE.AsDateTime := Data;
                     end
                  else if CboReaviso.Text[4] = 'H' then
                          begin
                            Hora := IncHour(StrToTime(SQLTarefaTAREHLEMBRETE.AsString),StrToInt(Copy(CboReaviso.Text,0,2)));
                            SQLTarefaTAREHLEMBRETE.AsString := TimeToStr(Hora);
                          end
                       else if CboReaviso.Text[4] = 'M' then
                              begin
                                 Hora := IncMinute(StrToTime(SQLTarefaTAREHLEMBRETE.AsString),StrToInt(Copy(CboReaviso.Text,0,2)));
                                 SQLTarefaTAREHLEMBRETE.AsString := TimeToStr(Hora);
                              end;
                end;
              if (SQLTarefaTAREDLEMBRETE.AsDateTime + SQLTarefaTAREHLEMBRETE.AsDateTime) >= SQLTarefaTAREDPRAZOMAX.AsDateTime then
                 begin
                   Informa('O novo horáio fica além do prazo máximo de conclusão.' + char(13) + 'Por favor contate o Administrador.');
                   SQLTarefa.Cancel;
                 end
              else
                if Length(SQLTarefaTAREA60MOTIVOADIO.AsString) < 5  then
                  begin
                    Informa('Você deve informar um motivo para o adiamento da tarefa.' + Char(#13) + 'Tente novamente');
                    SQLTarefa.Cancel;
                  end
                else
                  SQLTarefa.Post;
            end;
          CboReaviso.ItemIndex := - 1;
          BTAdiar.Enabled := False;
       end;
    if DBMemoMotivo.Field.FieldName = 'TAREA254MOTIVOCANCEL' then
       begin
          if SQLTarefaTAREA254MOTIVOCANCEL.IsNull then
             begin
                Informa('Você deve informar um motivo para Recusar a Tarefa.');
                SQLTarefa.Cancel;
             end
          else
             SQLTarefa.Post;
       end;
end;

procedure TFormTelaLembreteTarefa.btAdioCancelaClick(Sender: TObject);
begin
    pnMais.Visible := False;
    SQLTarefa.Cancel;
    CboReaviso.ItemIndex := 0;
end;

procedure TFormTelaLembreteTarefa.DBMemoMotivoKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := UpCase(Key)
end;

procedure TFormTelaLembreteTarefa.DSLembreteStateChange(Sender: TObject);
begin
   BtOK.Enabled := not (SQLTarefa.State in dsEditModes);
end;

procedure TFormTelaLembreteTarefa.FormClose(Sender: TObject;
  var Action: TCloseAction);
var Min : String;
begin
  if not DM.SQLPopUP.Active then DM.SQLPopUP.Active := True;
  DM.SQLPopUP.Edit;
  if CboReaviso.Text = 'Não Avisar' then
    DM.SQLPopUPCFGCCEXIBIRPOPTARE.AsString := 'N'
  else
    begin
      DM.SQLPopUPCFGCCEXIBIRPOPTARE.AsString := 'S';
    end;
  Min := Copy(ComboBoxReaviso.Text,0,2);
  FormPrincipal.TimeLembrete.Interval := StrToInt(Min) * 60000;
  DM.SQLPopUPPOPTEMPO.AsString := Min;
  DM.SQLPopUPCFGCCEXIBIRPOPTARE.AsString := 'S';
  DM.SQLPopUP.Post;
  Action := caFree;
end;

procedure TFormTelaLembreteTarefa.SQLTarefaAfterScroll(DataSet: TDataSet);
begin
    if pnMais.Visible then
      begin
        pnMais.Visible := False;
        SQLTarefa.Cancel;
      end;
end;

procedure TFormTelaLembreteTarefa.btRecusarClick(Sender: TObject);
begin
   SQLTarefa.Edit;
   SQLTarefaTARECSTATUS.AsString := 'N';
   pnMotivoCanc.Visible := True;
   pnAdiamento.Visible  := False;
   pnMais.Visible       := True;
end;

procedure TFormTelaLembreteTarefa.btAceitarClick(Sender: TObject);
begin
   SQLTarefa.Edit;
   SQLTarefaTARECSTATUS.AsString := 'A';
   SQLTarefa.Post;
end;

end.
