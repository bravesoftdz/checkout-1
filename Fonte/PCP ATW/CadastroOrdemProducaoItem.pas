unit CadastroOrdemProducaoItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, RxLookup, ToolEdit, RXDBCtrl, DBCtrls, RxDBComb;

type
  TFormCadastroOrdemProducaoItem = class(TFormCadastroTEMPLATE)
    SQLTemplateORPRA13ID: TStringField;
    SQLTemplateOPITICOD: TIntegerField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    SQLLote: TRxQuery;
    dsSQLLote: TDataSource;
    SQLTemplatePRLTA13ID: TStringField;
    DBDateEdit3: TDBDateEdit;
    Label5: TLabel;
    Label4: TLabel;
    DBDateEdit2: TDBDateEdit;
    DBDateEdit1: TDBDateEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    gpoTempo: TGroupBox;
    lblTempoProducaoLote: TLabel;
    SQLCountTOTAL: TRxQuery;
    SQLCountTOTALTEMPOTOTAL: TBCDField;
    SQLCountTOTALCAPACIDADE: TBCDField;
    SQLCountTOTALMEDIA: TFloatField;
    SQLLotePRLTA13ID: TStringField;
    SQLLotePRLTA60DESCR: TStringField;
    SQLLotePRLTN2TEMPOTOTAL: TBCDField;
    SQLLotePRLTN2QTDE: TBCDField;
    SQLTemplateDescricaoLote: TStringField;
    SQLTemplateORPRISEQUENCIA: TIntegerField;
    SQLLotePRLTCSTATUS: TStringField;
    GroupBox2: TGroupBox;
    dblLote: TRxDBLookupCombo;
    Label7: TLabel;
    cboSequencia: TRxDBComboBox;
    AcessaLote: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure AcessaLoteClick(Sender: TObject);
    procedure dblLoteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure SQLTemplateAfterDelete(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateAfterOpen(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroOrdemProducaoItem: TFormCadastroOrdemProducaoItem;
  TempoTotal  : Double;
  Estado      : String;
implementation

uses VarSYS, CadastroProducaoLote, FormResources, DataModulo, UnitLibrary,
  CadastroOrdemProducaoPedidos;

{$R *.dfm}

procedure TFormCadastroOrdemProducaoItem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DSMasterSys   := Nil;
  DataSetLookup := Nil;
end;

procedure TFormCadastroOrdemProducaoItem.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'ORDEMPRODUCAOITEM';
  if not SQLLote.Active then SQLLote.Active := True;
end;

procedure TFormCadastroOrdemProducaoItem.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateORPRA13ID.AsString := DSMasterTemplate.DataSet.FieldByName('ORPRA13ID').AsString;
end;

procedure TFormCadastroOrdemProducaoItem.DSTemplateDataChange(
  Sender: TObject; Field: TField);
Var A1,A2,A3, Tempo : Double;
begin
  inherited;
  if Field = SQLTemplatePRLTA13ID then
     begin
      lblTempoProducaoLote.Caption := '';
      TempoTotal := 0;
      if dblLote.Text <> '...' then
         TempoTotal := SQLLotePRLTN2TEMPOTOTAL.AsFloat;

      if TempoTotal <> 0 then
         begin
            Tempo := SQLLotePRLTN2QTDE.AsFloat * TempoTotal;

            if pos(',',FloatToStr((Tempo/60) / 24)) > 0 then
               A1 := StrToFloat(copy(FloatToStr((Tempo/60) / 24),0,pos(',',FloatToStr((Tempo/60) / 24))-1))
            else
               A1 := (Tempo/60) / 24;

            if pos(',',FloatToStr((Tempo/60) - (A1 * 24))) > 0 then
               A2 := StrToFloat(copy(FloatToStr((Tempo/60) - (A1 * 24)),0,pos(',',FloatToStr((Tempo/60) - (A1 * 24)))-1))
            else
               A2 := (Tempo/60) - (A1 * 24);

            A3 := (((Tempo/60) - (A1 * 24) - (A2)) * 60);

            if A1 <> 0 then
               if lblTempoProducaoLote.Caption = '' then
                  lblTempoProducaoLote.Caption := FloatToStr(A1) + ' Dias'
               else
                  lblTempoProducaoLote.Caption := lblTempoProducaoLote.Caption + ' e ' + FloatToStr(A1) + ' Dias';
            if A2 <> 0 then
               if lblTempoProducaoLote.Caption = '' then
                  lblTempoProducaoLote.Caption := FloatToStr(A2) + ' Horas'
               else
                  lblTempoProducaoLote.Caption := lblTempoProducaoLote.Caption + ' e ' + FloatToStr(A2) + ' Horas';
            if A3 <> 0 then
               if lblTempoProducaoLote.Caption = '' then
                  lblTempoProducaoLote.Caption := FloatToStr(A3) + ' Minutos'
               else
                  lblTempoProducaoLote.Caption := lblTempoProducaoLote.Caption  + ' e ' + FloatToStr(A3) + ' Minutos';
         end;
     end;
  gpoTempo.Visible := TempoTotal <> 0;
end;

procedure TFormCadastroOrdemProducaoItem.AcessaLoteClick(Sender: TObject);
begin
  inherited;
  FieldLookup   := SQLTemplatePRLTA13ID;
  FieldOrigem   := 'PRLTA13ID';
  DataSetLookup := SQLLote;
  CriaFormulario(TFormCadastroProducaoLote,'FormCadastroProducaoLote',False,True,'');
end;

procedure TFormCadastroOrdemProducaoItem.dblLoteKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     AcessaLote.Click;
end;

procedure TFormCadastroOrdemProducaoItem.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateDescricaoLote.AsString := DM.SQLLocate('PRODUCAOLOTE', 'PRLTA13ID', 'PRLTA60DESCR', '"' + SQLTemplatePRLTA13ID.AsString + '"');
end;

procedure TFormCadastroOrdemProducaoItem.SQLTemplateAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  DSMasterTemplate.DataSet.Edit;
  DSMasterTemplate.DataSet.FieldByName('ORPRNQTDETOTAL').AsFloat := DSMasterTemplate.DataSet.FieldByName('ORPRNQTDETOTAL').AsFloat - 1;
  DSMasterTemplate.DataSet.Post;
end;

procedure TFormCadastroOrdemProducaoItem.SQLTemplateAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  if Estado =  'Insert' then
     begin
       DSMasterTemplate.DataSet.Edit;
       DSMasterTemplate.DataSet.FieldByName('ORPRNQTDETOTAL').AsFloat := DSMasterTemplate.DataSet.FieldByName('ORPRNQTDETOTAL').AsFloat + 1;
       DSMasterTemplate.DataSet.Post;
       Estado := '';
     end;
end;

procedure TFormCadastroOrdemProducaoItem.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if SQLTemplate.State in [dsInsert] then
     Estado := 'Insert'
  else
     Estado := '';
  if (SQLLotePRLTCSTATUS.AsString <> 'N') and (dblLote.KeyValue <> Null) then
     begin
        Informa('O Status do Lote de ser Igual a "Nenhum".');
        dblLote.KeyValue := '';
        Abort;
     end;
end;

procedure TFormCadastroOrdemProducaoItem.SQLTemplateAfterOpen(
  DataSet: TDataSet);
Var I : Integer;
begin
  inherited;
  if not SQLTemplateORPRA13ID.IsNull and (cboSequencia.Items.Count <= 0) then
     begin
        SQLCount.Close;
        SQLCount.SQL.Text := ' select Count(*) as Total from ORDEMPRODUCAOITEM where ORPRA13ID = "' + SQLTemplateORPRA13ID.AsString + '"';
        SQLCount.Open;

        if SQLTemplateORPRISEQUENCIA.AsInteger < SQLCount.FieldByName('Total').AsInteger then
           begin
              for I := 1 to SQLCount.FieldByName('Total').AsInteger  do
                 begin
                    cboSequencia.Items.Add(IntToStr(I));
                    cboSequencia.Values.Add(IntToStr(I));
                 end;
           end
        else
           begin
              for I := 1 to SQLTemplateORPRISEQUENCIA.AsInteger  do
                 begin
                    cboSequencia.Items.Add(IntToStr(I));
                    cboSequencia.Values.Add(IntToStr(I));
                 end;
           end;
        SQLCount.Close;
     end
  else
     if SQLTemplateORPRA13ID.IsNull and (cboSequencia.Items.Count <= 0) then
        cboSequencia.Items.Add('1');
  if DSMasterTemplate.DataSet.FieldByName('ORPRCSTATUS').AsString[1] in ['P', 'C', 'O'] then
     DesabilitarBotoes(True, True, True, True, True);
end;

procedure TFormCadastroOrdemProducaoItem.Button1Click(Sender: TObject);
begin
  inherited;
  if TControl(Sender).Name = 'Button3' then
    begin
      DSMasterSys := DSTemplate;
      CriaFormulario(TFormCadastroOrdemProducaoPedidos,'FormCadastroOrdemProducaoPedidos', True, False, 'Ordem Produção : ' + SQLTemplateORPRA13ID.AsString);
    end;
end;

procedure TFormCadastroOrdemProducaoItem.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  SQLCount.Close;
  SQLCount.SQL.Text := 'update PRODUCAOLOTE set PRLTCSTATUS = "N" where PRLTA13ID = "' + SQLTemplatePRLTA13ID.AsString + '"';
  SQLCount.ExecSQL;

  SQLCount.Close;
  SQLCount.SQL.Text := 'delete From ORDEMPRODUCITEMPED Where PRLTA13ID = "' + SQLTemplatePRLTA13ID.AsString + '" and ORPRA13ID = "' + SQLTemplateORPRA13ID.AsString + '"';
  SQLCount.ExecSQL;
end;

end.
