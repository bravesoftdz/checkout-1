unit TelaGeracaoHorario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, DB, StdCtrls, Mask, ToolEdit, RxLookup,
  DBTables, Grids, DBGrids, Buttons, jpeg, ExtCtrls, DBCtrls, RxQuery,
  MemTable, DateUtils, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaGeracaoHorario = class(TFormTelaGeralTEMPLATE)
    SQLProfissional: TQuery;
    DSSQLProfissional: TDataSource;
    ComboProfissional: TRxDBLookupCombo;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    De: TDateEdit;
    Ate: TDateEdit;
    SQLConfigAgenda: TQuery;
    SQLConfigAgendaCFAGICOD: TIntegerField;
    SQLConfigAgendaPROFICOD: TIntegerField;
    SQLConfigAgendaUSUAICOD: TIntegerField;
    SQLConfigAgendaCFAGIINTERVALO: TIntegerField;
    SQLConfigAgendaCFAGCDOMINGO: TStringField;
    SQLConfigAgendaCFAGCSEGUNDA: TStringField;
    SQLConfigAgendaCFAGCTERCA: TStringField;
    SQLConfigAgendaCFAGCQUARTA: TStringField;
    SQLConfigAgendaCFAGCQUINTA: TStringField;
    SQLConfigAgendaCFAGCSEXTA: TStringField;
    SQLConfigAgendaCFAGCSABADO: TStringField;
    SQLFeriado: TQuery;
    SQLFeriadoFERIDDATA: TDateTimeField;
    SQLFeriadoFERIA60DESCR: TStringField;
    SQLAgenda: TRxQuery;
    SQLAgendamento: TRxQuery;
    SQLAgendamentoAGENICOD: TIntegerField;
    SQLAgendamentoCLIEA13ID: TStringField;
    SQLAgendamentoCLDPICOD: TIntegerField;
    SQLAgendamentoPROFICOD: TIntegerField;
    SQLAgendamentoAGENDMARCACAO: TDateTimeField;
    SQLAgendamentoAGENCSTATUS: TStringField;
    SQLAgendamentoAGENINRORECIBO: TIntegerField;
    SQLAgendamentoUSUAICOD: TIntegerField;
    SQLAgendamentoESPEICOD: TIntegerField;
    SQLAgendamentoAGENA254OBS: TStringField;
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
    DSSQLAgendamento: TDataSource;
    LBMens: TLabel;
    SQLConfigAgendaCFAGDFERIAINI: TDateTimeField;
    SQLConfigAgendaCFAGDFERIAFIM: TDateTimeField;
    SQLAgendaFerias: TRxQuery;
    SQLAgendaFeriasAGENICOD: TIntegerField;
    SQLAgendaFeriasCLIEA13ID: TStringField;
    SQLAgendaFeriasCLDPICOD: TIntegerField;
    SQLAgendaFeriasPROFICOD: TIntegerField;
    SQLAgendaFeriasAGENDMARCACAO: TDateTimeField;
    SQLAgendaAGENICOD: TIntegerField;
    SQLAgendaCLIEA13ID: TStringField;
    SQLAgendaCLDPICOD: TIntegerField;
    SQLAgendaPROFICOD: TIntegerField;
    SQLAgendaAGENDMARCACAO: TDateTimeField;
    SQLAgendamentoAGENDDIGIT: TDateTimeField;
    SQLAgendamentoAGENICODAGRUP: TIntegerField;
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
    SQLExisteData: TRxQuery;
    SQLExisteDataAGENDMARCACAO: TDateTimeField;
    SQLAgendamentoAGENN3VLRCONSULTA: TFloatField;
    SQLAgendamentoAGENN3VLRPAGO: TFloatField;
    SQLProfissionalVENDICOD: TIntegerField;
    SQLProfissionalVENDA60NOME: TStringField;
    SQLProfissionalESPEICOD: TIntegerField;
    ButtonGerar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure ButtonGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaGeracaoHorario: TFormTelaGeracaoHorario;

implementation

uses DataModulo, DataModuloTemplate;

{$R *.dfm}

procedure TFormTelaGeracaoHorario.FormCreate(Sender: TObject);
begin
  inherited;
  SQLProfissional.Open;
end;

procedure TFormTelaGeracaoHorario.ButtonGerarClick(Sender: TObject);
var
  I : Integer;
  HoraInicial,HoraFinal,Data,DiaAtual : TDateTime;
  Entra : Boolean;
begin
  inherited;
  LBMens.Visible := True ;
  LBMens.Update;
  SQLConfigAgenda.Close;
  SQLConfigAgenda.ParamByName('Profissional').Value := ComboProfissional.Value;
  SQLConfigAgenda.Open;
  If SQLConfigAgenda.IsEmpty then
    begin
      ShowMessage('Este profissional não possui uma configuração para geração de horários!');
      Abort;
    end;
  MemDias.Open;
  MemDias.Edit;
  if SQLConfigAgendaCFAGCDOMINGO.AsString = 'S' then
    begin
      MemDiasDom.Value := 1;
      MemDiasDomHoraIni.Value := SQLConfigAgendaCFAGDDOMINI.AsDateTime;
      MemDiasDomHoraFim.Value := SQLConfigAgendaCFAGDDOMFIM.AsDateTime;
    end;
  if SQLConfigAgendaCFAGCSEGUNDA.AsString = 'S' then
    begin
      MemDiasSeg.Value := 1;
      MemDiasSegHoraIni.Value := SQLConfigAgendaCFAGDSEGINI.AsDateTime;
      MemDiasSegHoraFim.Value := SQLConfigAgendaCFAGDSEGFIM.AsDateTime;
    end;
  if SQLConfigAgendaCFAGCTERCA.AsString   = 'S' then
    begin
      MemDiasTer.Value := 1;
      MemDiasTerHoraIni.Value := SQLConfigAgendaCFAGDTERINI.AsDateTime;
      MemDiasTerHoraFim.Value := SQLConfigAgendaCFAGDTERFIM.AsDateTime;
    end;
  if SQLConfigAgendaCFAGCQUARTA.AsString  = 'S' then
    begin
      MemDiasQua.Value := 1;
      MemDiasQuaHoraIni.Value := SQLConfigAgendaCFAGDQUAINI.AsDateTime;
      MemDiasQuaHoraFim.Value := SQLConfigAgendaCFAGDQUAFIM.AsDateTime;
    end;
  if SQLConfigAgendaCFAGCQUINTA.AsString  = 'S' then
    begin
      MemDiasQui.Value := 1;
      MemDiasQuiHoraIni.Value := SQLConfigAgendaCFAGDQUIINI.AsDateTime;
      MemDiasQuiHoraFim.Value := SQLConfigAgendaCFAGDQUIFIM.AsDateTime;
    end;
  if SQLConfigAgendaCFAGCSEXTA.AsString   = 'S' then
    begin
      MemDiasSex.Value := 1;
      MemDiasSexHoraIni.Value := SQLConfigAgendaCFAGDSEXINI.AsDateTime;
      MemDiasSexHoraFim.Value := SQLConfigAgendaCFAGDSEXFIM.AsDateTime;
    end;
  if SQLConfigAgendaCFAGCSABADO.AsString  = 'S' then
    begin
      MemDiasSab.Value := 1;
      MemDiasSabHoraIni.Value := SQLConfigAgendaCFAGDSABINI.AsDateTime;
      MemDiasSabHoraFim.Value := SQLConfigAgendaCFAGDSABFIM.AsDateTime;
    end;
  MemDias.Post;
  SQLFeriado.Open;
  SQLAgendamento.Open;
  Data := Date;
  DiaAtual := De.Date;
  Entra := False;
  HoraInicial := Now;
  While (DiaAtual >= De.Date) and (DiaAtual <= Ate.Date) do
    begin
      if not SQLFeriado.Locate('FERIDDATA',DiaAtual,[]) then
        for I := 0 to MemDias.FieldCount -1 do
          begin
            if MemDias.Fields[I].Tag = 1 then
              begin
                if (MemDias.Fields[I].FieldName = 'Dom') and (MemDias.Fields[I].AsInteger = 1) and (DayOfWeek(DiaAtual) = 1) then
                  begin
                    HoraInicial := 0;
                    HoraFinal   := 0;
                    HoraInicial := MemDiasDomHoraIni.Value;
                    HoraFinal   := MemDiasDomHoraFim.Value;
                  end;
                if (MemDias.Fields[I].FieldName = 'Seg') and (MemDias.Fields[I].AsInteger = 1) and (DayOfWeek(DiaAtual) = 2) then
                  begin
                    HoraInicial := 0;
                    HoraFinal   := 0;
                    HoraInicial := MemDiasSegHoraIni.Value;
                    HoraFinal   := MemDiasSegHoraFim.Value;
                  end;
                if (MemDias.Fields[I].FieldName = 'Ter') and (MemDias.Fields[I].AsInteger = 1) and (DayOfWeek(DiaAtual) = 3) then
                  begin
                    HoraInicial := 0;
                    HoraFinal   := 0;
                    HoraInicial := MemDiasTerHoraIni.Value;
                    HoraFinal   := MemDiasTerHoraFim.Value;
                  end;
                if (MemDias.Fields[I].FieldName = 'Qua') and (MemDias.Fields[I].AsInteger = 1) and (DayOfWeek(DiaAtual) = 4) then
                  begin
                    HoraInicial := 0;
                    HoraFinal   := 0;
                    HoraInicial := MemDiasQuaHoraIni.Value;
                    HoraFinal   := MemDiasquaHoraFim.Value;
                  end;
                if (MemDias.Fields[I].FieldName = 'Qui') and (MemDias.Fields[I].AsInteger = 1) and (DayOfWeek(DiaAtual) = 5) then
                  begin
                    HoraInicial := 0;
                    HoraFinal   := 0;
                    HoraInicial := MemDiasQuiHoraIni.Value;
                    HoraFinal   := MemDiasQuiHoraFim.Value;
                  end;
                if (MemDias.Fields[I].FieldName = 'Sex') and (MemDias.Fields[I].AsInteger = 1) and (DayOfWeek(DiaAtual) = 6) then
                  begin
                    HoraInicial := 0;
                    HoraFinal   := 0;
                    HoraInicial := MemDiasSexHoraIni.Value;
                    HoraFinal   := MemDiasSexHoraFim.Value;
                  end;
                if (MemDias.Fields[I].FieldName = 'Sab') and (MemDias.Fields[I].AsInteger = 1) and (DayOfWeek(DiaAtual) = 7) then
                  begin
                    HoraInicial := 0;
                    HoraFinal   := 0;
                    HoraInicial := MemDiasSabHoraIni.Value;
                    HoraFinal   := MemDiasSabHoraFim.Value;
                  end;
                While HoraInicial <= HoraFinal do
                  begin
                    // Testa se este dia já está gerado, para não tentar gerar novamente...
                    SQLAgenda.Close;
                    SQLAgenda.MacroByName('Profissional').Value := 'PROFICOD = ' + ComboProfissional.Value;
                    SQLAgenda.MacroByName('Data').Value  := 'AGENDMARCACAO = ' +'"' + FormatDateTime('mm/dd/yyyy',DiaAtual) + '"';
                    SQLAgenda.Open;
                    if SQLAgenda.IsEmpty then Entra := True;
                    if Entra then
                      begin
                        if (SQLConfigAgendaCFAGDFERIAINI.Value > DiaAtual) or (SQLConfigAgendaCFAGDFERIAFIM.Value < DiaAtual) then
                          begin
                            SQLAgendamento.Append;
                            SQLAgendamentoAGENDMARCACAO.AsString := FormatDateTime('dd/mm/yyyy',DiaAtual) + ' ' +
                                                                    FormatDateTime('hh:mm:ss',Horainicial);
                            SQLAgendamentoPROFICOD.AsString      := ComboProfissional.Value;
                            SQLAgendamentoESPEICOD.Value         := SQLProfissionalESPEICOD.Value;
                            SQLAgendamentoAGENICOD.Value         := Dm.ProximoCodigoUnico('AGENDACONSULTA',SQLAgendamento,nil,0);
                            SQLAgendamentoAGENICODAGRUP.Value    := SQLAgendamentoAGENICOD.Value;
                            SQLAgendamentoAGENCSTATUS.Value      := '0';
                            SQLAgendamentoAGENN3VLRCONSULTA.value:= 0;
                            SQLAgendamentoAGENN3VLRPAGO.value    := 0;
                            SQLExisteData.Close;
                            SQLExisteData.MacroByName('ExisteDataHora').Value := 'AGENDMARCACAO = '+'"'+FormatDateTime('mm/dd/yyyy hh:mm:ss',SQLAgendamentoAGENDMARCACAO.Value)+'"' ;
                            SQLExisteData.MacroByName('Profissional').Value := 'PROFICOD = ' + ComboProfissional.Value;
                            SQLExisteData.Open;
                            if SQLExisteData.IsEmpty then
                              SQLAgendamento.Post
                            else SQLAgendamento.Cancel;
                          end;
                        HoraInicial := IncMinute(HoraInicial,SQLConfigAgendaCFAGIINTERVALO.AsInteger);
                      end;
                  end;
                end
              else
                begin
                  Break;
                end;
          end;
          DiaAtual :=IncDay(DiaAtual,1);
    end;
  LBMens.Caption := 'Processo Concluído com Sucesso !!!' ;
  LBMens.Update;
end;

end.
