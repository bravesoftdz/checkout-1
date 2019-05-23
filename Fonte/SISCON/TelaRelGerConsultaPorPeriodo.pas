unit TelaRelGerConsultaPorPeriodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, DBTables, StdCtrls, Mask, ToolEdit, DB,
  RxQuery, RxLookup, Buttons, jpeg, ExtCtrls, ppDB, ppDBPipe, ppDBBDE,
  ppBands, ppClass, ppCtrls, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, ppViewr, ppPrintr, Grids, DBGrids, ppVar;

type
  TFormTelaRelGerConsultasPorPeriodo = class(TFormTelaGeralTEMPLATE)
    GroupBoxDependente: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    ComboProfissional: TRxDBLookupCombo;
    ComboEspecialidade: TRxDBLookupCombo;
    DSSQLEspecialidade: TDataSource;
    SQLEspecialidade: TRxQuery;
    SQLEspecialidadeESPEICOD: TIntegerField;
    SQLEspecialidadeESPEA60DESCR: TStringField;
    SQLEspecialidadeESPEN3VLRCONSULTA: TBCDField;
    SQLEspecialidadeESPEN3VLRPRICONSU: TBCDField;
    DSSQLProfissional: TDataSource;
    SQLProfissional: TRxQuery;
    SQLProfissionalPROFICOD: TIntegerField;
    SQLProfissionalPROFA60NOME: TStringField;
    SQLProfissionalESPEICOD: TIntegerField;
    SQLProfissionalPROFDREG: TDateTimeField;
    SQLProfissionalPROFCSIMPLES: TStringField;
    SQLProfissionalPROFCDUPLA: TStringField;
    SQLProfissionalPROFCTRIPLA: TStringField;
    SQLProfissionalPROFCINFORMAQTDE: TStringField;
    SQLProfissionalPROFCOCULTAR: TStringField;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    De: TDateEdit;
    Ate: TDateEdit;
    SQLAgendamento: TRxQuery;
    SQLAgendamentoAGENICOD: TIntegerField;
    SQLAgendamentoCLIEA13ID: TStringField;
    SQLAgendamentoCLDPICOD: TIntegerField;
    SQLAgendamentoPROFICOD: TIntegerField;
    SQLAgendamentoAGENDMARCACAO: TDateTimeField;
    SQLAgendamentoAGENCSTATUS: TStringField;
    SQLAgendamentoAGENINRORECIBO: TIntegerField;
    SQLAgendamentoAGENDDIGIT: TDateTimeField;
    SQLAgendamentoProfissional: TStringField;
    SQLAgendamentoClienteNome: TStringField;
    SQLAgendamentoAGENN3VLRCONSULTA: TBCDField;
    SQLAgendamentoAGENN3VLRPAGO: TBCDField;
    SQLAgendamentoMOTIICOD: TIntegerField;
    SQLAgendamentoMotivoNome: TStringField;
    SQLAgendamentoAGENDPAGO: TDateTimeField;
    SQLAgendamentoClienteCodigoAntigo: TStringField;
    SQLAgendamentoDependenteNome: TStringField;
    SQLAgendamentoUSUAICOD: TIntegerField;
    DSSQLAgendamento: TDataSource;
    TblCliente: TTable;
    TblClienteCLIEA13ID: TStringField;
    TblClienteCLIEA60RAZAOSOC: TStringField;
    TblClienteCLIEA11CPF: TStringField;
    TblClienteCLIEA15FONE1: TStringField;
    TblClienteCLIEA15FONE2: TStringField;
    TblClienteCLIEA15FAX: TStringField;
    TblClienteCLIEA60ENDRES: TStringField;
    TblClienteCLIEA60BAIRES: TStringField;
    TblClienteCLIEA60CIDRES: TStringField;
    TblClienteCLIEA2UFRES: TStringField;
    TblClienteCLIEA8CEPRES: TStringField;
    TblClienteCLIEA60EMAIL: TStringField;
    TblClienteCLIEA60EMPRESA: TStringField;
    TblClienteCLIEA15FONEEMPRESA: TStringField;
    TblClienteMTBLICOD: TIntegerField;
    TblClienteCLIEA254PATHFOTO: TStringField;
    TblClienteCLIEA10CODANT: TStringField;
    TblClienteDependente: TTable;
    TblClienteDependenteCLIEA13ID: TStringField;
    TblClienteDependenteCLDPICOD: TIntegerField;
    TblClienteDependenteCLDPA60NOME: TStringField;
    TblClienteDependenteCLDPA15PARENTESCO: TStringField;
    TblClienteDependenteCLDPCAUTORIZADO: TStringField;
    TblClienteDependenteCLDPDNASC: TDateTimeField;
    TblClienteDependenteCLDPA10RG: TStringField;
    TblClienteDependenteCLDPA11CPF: TStringField;
    TblClienteDependentePENDENTE: TStringField;
    TblClienteDependenteREGISTRO: TDateTimeField;
    TblClienteDependenteCLDPA15FONE: TStringField;
    TblClienteDependenteCLDPA60EMAIL: TStringField;
    TblAtendente: TTable;
    TblAtendenteUSUAICOD: TIntegerField;
    TblAtendenteUSUAA60NOME: TStringField;
    TblProfissional: TTable;
    TblProfissionalPROFICOD: TIntegerField;
    TblProfissionalPROFA60NOME: TStringField;
    TblMotivo: TTable;
    TblMotivoMOTIICOD: TIntegerField;
    TblMotivoMOTIA60DESCR: TStringField;
    TblMotivoMOTICBLOQUEIOCLI: TStringField;
    ppReport: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel36: TppLabel;
    ppLabel45: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel1: TppLabel;
    ppDE: TppLabel;
    ppATE: TppLabel;
    ppLabel2: TppLabel;
    ppDBText29: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText31: TppDBText;
    ppDBText30: TppDBText;
    ppDBText27: TppDBText;
    ppPaciente: TppLabel;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    PipeAgendamento: TppBDEPipeline;
    RadioStatus: TRadioGroup;
    BtnImprimir: TSpeedButton;
    SQLAgendamentoAtendenteNome: TStringField;
    GroupBox2: TGroupBox;
    RadioTipo: TRadioGroup;
    ppReport2: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDE1: TppLabel;
    ppATE1: TppLabel;
    ppLabel18: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppCidade: TppLabel;
    ppPaciente1: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppNroTotalConsultasAgendadas: TppLabel;
    ppNroTotalConsultasAtendidas: TppLabel;
    ppLabel29: TppLabel;
    ppNroTotalConsultasNaoAtendidas: TppLabel;
    ppEspecialidade: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    SQLNroTotalAgendado: TRxQuery;
    SQLNroTotalAtendido: TRxQuery;
    SQLNroTotalNaoAtendido: TRxQuery;
    SQLVlrTotalAgendado: TRxQuery;
    SQLVlrTotalAtendido: TRxQuery;
    SQLVlrTotalNaoAtendido: TRxQuery;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppVlrTotalConsultasAgendadasPagas: TppLabel;
    ppVlrTotalConsultasAtendidas: TppLabel;
    ppVlrTotalConsultasNaoAtendidas: TppLabel;
    SQLNroTotalAgendadoCOUNT: TIntegerField;
    SQLNroTotalAtendidoCOUNT: TIntegerField;
    SQLNroTotalNaoAtendidoCOUNT: TIntegerField;
    SQLVlrTotalAgendadoSUM: TBCDField;
    SQLVlrTotalAtendidoSUM: TBCDField;
    SQLVlrTotalNaoAtendidoSUM: TBCDField;
    ppLabel9: TppLabel;
    SQLCidade: TQuery;
    DSSQLCidade: TDataSource;
    ComboCidade: TRxDBLookupCombo;
    ppSummaryBand1: TppSummaryBand;
    GroupBox3: TGroupBox;
    EditConvenio: TEdit;
    ppLabel10: TppLabel;
    ppVlrTotalConsultasAgendadas: TppLabel;
    SQLVlrTotalAgendadoPago: TRxQuery;
    SQLVlrTotalAgendadoPagoSUM: TBCDField;
    ppLabel11: TppLabel;
    procedure ComboEspecialidadeExit(Sender: TObject);
    procedure ppReportPreviewFormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppHeaderBand3BeforePrint(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaRelGerConsultasPorPeriodo: TFormTelaRelGerConsultasPorPeriodo;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormTelaRelGerConsultasPorPeriodo.ComboEspecialidadeExit(
  Sender: TObject);
begin
  inherited;
  if ComboEspecialidade.Value <> '' then
    begin
      SQLProfissional.Close;
      SQLProfissional.ParamByName('Especialidade').Value:=ComboEspecialidade.Value;
      SQLProfissional.Open;
      if SQLProfissional.IsEmpty then
        begin
          ShowMessage('Operação Cancelada! Possíveis Causas...'+Chr(13)+Chr(13)+
                      'Não existe nenhum profissional cadastrado para esta especialidade...');
          ComboEspecialidade.SetFocus;
        end;
    end;
end;

procedure TFormTelaRelGerConsultasPorPeriodo.ppReportPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ppReport.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppReport.PreviewForm.Viewer).ZoomPercentage := 100;
end;

procedure TFormTelaRelGerConsultasPorPeriodo.FormActivate(Sender: TObject);
begin
  inherited;
  De.Text := FormatDateTime('dd/mm/yyyy', now);
  Ate.Text := FormatDateTime('dd/mm/yyyy', now);
end;

procedure TFormTelaRelGerConsultasPorPeriodo.FormCreate(Sender: TObject);
begin
  inherited;
  SQLEspecialidade.Open;
  SQLCidade.Open;
end;

procedure TFormTelaRelGerConsultasPorPeriodo.BtnImprimirClick(
  Sender: TObject);
begin
  inherited;
  TblCliente.Open;
  TblClienteDependente.Open;
  TblMotivo.Open;
  TblProfissional.Open;
  TblAtendente.Open;
  SQLAgendamento.Close;
  SQLNroTotalAgendado.Close;
  SQLNroTotalAtendido.Close;
  SQLNroTotalNaoAtendido.Close;
  SQLVlrTotalAgendado.Close;
  SQLVlrTotalAgendadoPago.Close;
  SQLVlrTotalAtendido.Close;
  SQLVlrTotalNaoAtendido.Close;
  // Inicial
  SQLAgendamento.MacroByName('Inicial').Value                      := 'AGENDMARCACAO > ' + '"' + FormatDateTime('mm/dd/yyyy 00:00',StrToDate(De.Text))+ '"';
  SQLNroTotalAgendado.MacroByName('Inicial').Value                 := 'AGENDMARCACAO > ' + '"' + FormatDateTime('mm/dd/yyyy 00:00',StrToDate(De.Text))+ '"';
  SQLNroTotalAtendido.MacroByName('Inicial').Value                 := 'AGENDMARCACAO > ' + '"' + FormatDateTime('mm/dd/yyyy 00:00',StrToDate(De.Text))+ '"';
  SQLNroTotalNaoAtendido.MacroByName('Inicial').Value              := 'AGENDMARCACAO > ' + '"' + FormatDateTime('mm/dd/yyyy 00:00',StrToDate(De.Text))+ '"';
  SQLVlrTotalAgendado.MacroByName('Inicial').Value                 := 'AGENDMARCACAO > ' + '"' + FormatDateTime('mm/dd/yyyy 00:00',StrToDate(De.Text))+ '"';
  SQLVlrTotalAgendadoPago.MacroByName('Inicial').Value             := 'AGENDMARCACAO > ' + '"' + FormatDateTime('mm/dd/yyyy 00:00',StrToDate(De.Text))+ '"';
  SQLVlrTotalAtendido.MacroByName('Inicial').Value                 := 'AGENDMARCACAO > ' + '"' + FormatDateTime('mm/dd/yyyy 00:00',StrToDate(De.Text))+ '"';
  SQLVlrTotalNaoAtendido.MacroByName('Inicial').Value              := 'AGENDMARCACAO > ' + '"' + FormatDateTime('mm/dd/yyyy 00:00',StrToDate(De.Text))+ '"';
  // Final
  SQLAgendamento.MacroByName('Final').Value                        := 'AGENDMARCACAO < ' + '"' + FormatDateTime('mm/dd/yyyy 23:59',StrToDate(Ate.Text))+ '"';
  SQLNroTotalAgendado.MacroByName('Final').Value                   := 'AGENDMARCACAO < ' + '"' + FormatDateTime('mm/dd/yyyy 23:59',StrToDate(Ate.Text))+ '"';
  SQLNroTotalAtendido.MacroByName('Final').Value                   := 'AGENDMARCACAO < ' + '"' + FormatDateTime('mm/dd/yyyy 23:59',StrToDate(Ate.Text))+ '"';
  SQLNroTotalNaoAtendido.MacroByName('Final').Value                := 'AGENDMARCACAO < ' + '"' + FormatDateTime('mm/dd/yyyy 23:59',StrToDate(Ate.Text))+ '"';
  SQLVlrTotalAgendado.MacroByName('Final').Value                   := 'AGENDMARCACAO < ' + '"' + FormatDateTime('mm/dd/yyyy 23:59',StrToDate(Ate.Text))+ '"';
  SQLVlrTotalAgendadoPago.MacroByName('Final').Value               := 'AGENDMARCACAO < ' + '"' + FormatDateTime('mm/dd/yyyy 23:59',StrToDate(Ate.Text))+ '"';
  SQLVlrTotalAtendido.MacroByName('Final').Value                   := 'AGENDMARCACAO < ' + '"' + FormatDateTime('mm/dd/yyyy 23:59',StrToDate(Ate.Text))+ '"';
  SQLVlrTotalNaoAtendido.MacroByName('Final').Value                := 'AGENDMARCACAO < ' + '"' + FormatDateTime('mm/dd/yyyy 23:59',StrToDate(Ate.Text))+ '"';
  // Especialidade
  if ComboEspecialidade.KeyValue <> null then
    begin
      SQLAgendamento.MacroByName('Especialidade').Value            := 'Espeicod = ' + ComboEspecialidade.KeyValue;
      SQLNroTotalAgendado.MacroByName('Especialidade').Value       := 'Espeicod = ' + ComboEspecialidade.KeyValue;
      SQLNroTotalAtendido.MacroByName('Especialidade').Value       := 'Espeicod = ' + ComboEspecialidade.KeyValue;
      SQLNroTotalNaoAtendido.MacroByName('Especialidade').Value    := 'Espeicod = ' + ComboEspecialidade.KeyValue;
      SQLVlrTotalAgendado.MacroByName('Especialidade').Value       := 'Espeicod = ' + ComboEspecialidade.KeyValue;
      SQLVlrTotalAgendadoPago.MacroByName('Especialidade').Value   := 'Espeicod = ' + ComboEspecialidade.KeyValue;
      SQLVlrTotalAtendido.MacroByName('Especialidade').Value       := 'Espeicod = ' + ComboEspecialidade.KeyValue;
      SQLVlrTotalNaoAtendido.MacroByName('Especialidade').Value    := 'Espeicod = ' + ComboEspecialidade.KeyValue;
    end
  else
    begin
      SQLAgendamento.MacroByName('Especialidade').Value            := '0=0';
      SQLNroTotalAgendado.MacroByName('Especialidade').Value       := '0=0';
      SQLNroTotalAtendido.MacroByName('Especialidade').Value       := '0=0';
      SQLNroTotalNaoAtendido.MacroByName('Especialidade').Value    := '0=0';
      SQLVlrTotalAgendado.MacroByName('Especialidade').Value       := '0=0';
      SQLVlrTotalAgendadoPago.MacroByName('Especialidade').Value   := '0=0';
      SQLVlrTotalAtendido.MacroByName('Especialidade').Value       := '0=0';
      SQLVlrTotalNaoAtendido.MacroByName('Especialidade').Value    := '0=0';
    end;
  // Profissional
  if ComboProfissional.KeyValue <> null then
    begin
      SQLAgendamento.MacroByName('Profissional').Value             := 'Proficod = '+ ComboProfissional.KeyValue;
      SQLNroTotalAgendado.MacroByName('Profissional').Value        := 'Proficod = '+ ComboProfissional.KeyValue;
      SQLNroTotalAtendido.MacroByName('Profissional').Value        := 'Proficod = '+ ComboProfissional.KeyValue;
      SQLNroTotalNaoAtendido.MacroByName('Profissional').Value     := 'Proficod = '+ ComboProfissional.KeyValue;
      SQLVlrTotalAgendado.MacroByName('Profissional').Value        := 'Proficod = '+ ComboProfissional.KeyValue;
      SQLVlrTotalAgendadoPago.MacroByName('Profissional').Value    := 'Proficod = '+ ComboProfissional.KeyValue;
      SQLVlrTotalAtendido.MacroByName('Profissional').Value        := 'Proficod = '+ ComboProfissional.KeyValue;
      SQLVlrTotalNaoAtendido.MacroByName('Profissional').Value     := 'Proficod = '+ ComboProfissional.KeyValue;
    end
  else
    begin
      SQLAgendamento.MacroByName('Profissional').Value             := '0=0';
      SQLNroTotalAgendado.MacroByName('Profissional').Value        := '0=0';
      SQLNroTotalAtendido.MacroByName('Profissional').Value        := '0=0';
      SQLNroTotalNaoAtendido.MacroByName('Profissional').Value     := '0=0';
      SQLVlrTotalAgendado.MacroByName('Profissional').Value        := '0=0';
      SQLVlrTotalAgendadoPago.MacroByName('Profissional').Value    := '0=0';
      SQLVlrTotalAtendido.MacroByName('Profissional').Value        := '0=0';
      SQLVlrTotalNaoAtendido.MacroByName('Profissional').Value     := '0=0';
    end;
  // Cidade
  if ComboCidade.Text <> '' then
    begin
      SQLAgendamento.MacroByName('Cidade').Value                   := 'CLIEA60CIDRES = '+'"'+ComboCidade.Value+'"';
      SQLNroTotalAgendado.MacroByName('Cidade').Value              := 'CLIEA60CIDRES = '+'"'+ComboCidade.Value+'"';
      SQLNroTotalAtendido.MacroByName('Cidade').Value              := 'CLIEA60CIDRES = '+'"'+ComboCidade.Value+'"';
      SQLNroTotalNaoAtendido.MacroByName('Cidade').Value           := 'CLIEA60CIDRES = '+'"'+ComboCidade.Value+'"';
      SQLVlrTotalAgendado.MacroByName('Cidade').Value              := 'CLIEA60CIDRES = '+'"'+ComboCidade.Value+'"';
      SQLVlrTotalAgendadoPago.MacroByName('Cidade').Value          := 'CLIEA60CIDRES = '+'"'+ComboCidade.Value+'"';
      SQLVlrTotalAtendido.MacroByName('Cidade').Value              := 'CLIEA60CIDRES = '+'"'+ComboCidade.Value+'"';
      SQLVlrTotalNaoAtendido.MacroByName('Cidade').Value           := 'CLIEA60CIDRES = '+'"'+ComboCidade.Value+'"';
    end
  else
    begin
      SQLAgendamento.MacroByName('Cidade').Value                   := '0=0';
      SQLNroTotalAgendado.MacroByName('Cidade').Value              := '0=0';
      SQLNroTotalAtendido.MacroByName('Cidade').Value              := '0=0';
      SQLNroTotalNaoAtendido.MacroByName('Cidade').Value           := '0=0';
      SQLVlrTotalAgendado.MacroByName('Cidade').Value              := '0=0';
      SQLVlrTotalAgendadoPago.MacroByName('Cidade').Value          := '0=0';
      SQLVlrTotalAtendido.MacroByName('Cidade').Value              := '0=0';
      SQLVlrTotalNaoAtendido.MacroByName('Cidade').Value           := '0=0';
    end;
  // Status
  Case RadioStatus.ItemIndex of
     -1:  begin
            SQLNroTotalAgendado.MacroByName('Status').Value     := '(AGENCSTATUS = "1" or AGENCSTATUS = "2" or AGENCSTATUS = "3")';
            SQLNroTotalAtendido.MacroByName('Status').Value     := '(AGENCSTATUS = "4" or AGENCSTATUS = "5" or AGENCSTATUS = "6")';
            SQLNroTotalNaoAtendido.MacroByName('Status').Value  := '(AGENCSTATUS = "7" or AGENCSTATUS = "8" or AGENCSTATUS = "9")';
            SQLVlrTotalAgendado.MacroByName('Status').Value     := '(AGENCSTATUS = "1" or AGENCSTATUS = "2" or AGENCSTATUS = "3")';
            SQLVlrTotalAgendadoPago.MacroByName('Status').Value := '(AGENCSTATUS = "1" or AGENCSTATUS = "2" or AGENCSTATUS = "3")';
            SQLVlrTotalAtendido.MacroByName('Status').Value     := '(AGENCSTATUS = "4" or AGENCSTATUS = "5" or AGENCSTATUS = "6")';
            SQLVlrTotalNaoAtendido.MacroByName('Status').Value  := '(AGENCSTATUS = "7" or AGENCSTATUS = "8" or AGENCSTATUS = "9")';
          end;
     0 :  begin
            SQLAgendamento.MacroByName('Status').Value          := 'AGENCSTATUS = "1"';
            SQLNroTotalAgendado.MacroByName('Status').Value     := 'AGENCSTATUS = "1"';
            SQLNroTotalAtendido.MacroByName('Status').Value     := 'AGENCSTATUS = "99"';
            SQLNroTotalNaoAtendido.MacroByName('Status').Value  := 'AGENCSTATUS = "99"';
            SQLVlrTotalAgendado.MacroByName('Status').Value     := 'AGENCSTATUS = "1"';
            SQLVlrTotalAgendadoPago.MacroByName('Status').Value := 'AGENCSTATUS = "1"';
            SQLVlrTotalAtendido.MacroByName('Status').Value     := 'AGENCSTATUS = "99"';
            SQLVlrTotalNaoAtendido.MacroByName('Status').Value  := 'AGENCSTATUS = "99"';
          end;
     1 :  begin
            SQLAgendamento.MacroByName('Status').Value          := 'AGENCSTATUS = "2"';
            SQLNroTotalAgendado.MacroByName('Status').Value     := 'AGENCSTATUS = "2"';
            SQLNroTotalAtendido.MacroByName('Status').Value     := 'AGENCSTATUS = "99"';
            SQLNroTotalNaoAtendido.MacroByName('Status').Value  := 'AGENCSTATUS = "99"';
            SQLVlrTotalAgendado.MacroByName('Status').Value     := 'AGENCSTATUS = "2"';
            SQLVlrTotalAgendadoPago.MacroByName('Status').Value := 'AGENCSTATUS = "2"';
            SQLVlrTotalAtendido.MacroByName('Status').Value     := 'AGENCSTATUS = "99"';
            SQLVlrTotalNaoAtendido.MacroByName('Status').Value  := 'AGENCSTATUS = "99"';
          end;
     2 :  begin
            SQLAgendamento.MacroByName('Status').Value          := 'AGENCSTATUS = "3"';
            SQLNroTotalAgendado.MacroByName('Status').Value     := 'AGENCSTATUS = "3"';
            SQLNroTotalAtendido.MacroByName('Status').Value     := 'AGENCSTATUS = "99"';
            SQLNroTotalNaoAtendido.MacroByName('Status').Value  := 'AGENCSTATUS = "99"';
            SQLVlrTotalAgendado.MacroByName('Status').Value     := 'AGENCSTATUS = "3"';
            SQLVlrTotalAgendadoPago.MacroByName('Status').Value := 'AGENCSTATUS = "3"';
            SQLVlrTotalAtendido.MacroByName('Status').Value     := 'AGENCSTATUS = "99"';
            SQLVlrTotalNaoAtendido.MacroByName('Status').Value  := 'AGENCSTATUS = "99"';
          end;
     3 :  begin
            SQLAgendamento.MacroByName('Status').Value          := 'AGENCSTATUS = "4"';
            SQLNroTotalAgendado.MacroByName('Status').Value     := 'AGENCSTATUS = "99"';
            SQLNroTotalAtendido.MacroByName('Status').Value     := 'AGENCSTATUS = "4"';
            SQLNroTotalNaoAtendido.MacroByName('Status').Value  := 'AGENCSTATUS = "99"';
            SQLVlrTotalAgendado.MacroByName('Status').Value     := 'AGENCSTATUS = "99"';
            SQLVlrTotalAgendadoPago.MacroByName('Status').Value := 'AGENCSTATUS = "99"';
            SQLVlrTotalAtendido.MacroByName('Status').Value     := 'AGENCSTATUS = "4"';
            SQLVlrTotalNaoAtendido.MacroByName('Status').Value  := 'AGENCSTATUS = "99"';
          end;
     4 :  begin
            SQLAgendamento.MacroByName('Status').Value          := 'AGENCSTATUS = "5"';
            SQLNroTotalAgendado.MacroByName('Status').Value     := 'AGENCSTATUS = "99"';
            SQLNroTotalAtendido.MacroByName('Status').Value     := 'AGENCSTATUS = "5"';
            SQLNroTotalNaoAtendido.MacroByName('Status').Value  := 'AGENCSTATUS = "99"';
            SQLVlrTotalAgendado.MacroByName('Status').Value     := 'AGENCSTATUS = "99"';
            SQLVlrTotalAgendadoPago.MacroByName('Status').Value := 'AGENCSTATUS = "99"';
            SQLVlrTotalAtendido.MacroByName('Status').Value     := 'AGENCSTATUS = "5"';
            SQLVlrTotalNaoAtendido.MacroByName('Status').Value  := 'AGENCSTATUS = "99"';
          end;
     5 :  begin
            SQLAgendamento.MacroByName('Status').Value          := 'AGENCSTATUS = "6"';
            SQLNroTotalAgendado.MacroByName('Status').Value     := 'AGENCSTATUS = "99"';
            SQLNroTotalAtendido.MacroByName('Status').Value     := 'AGENCSTATUS = "6"';
            SQLNroTotalNaoAtendido.MacroByName('Status').Value  := 'AGENCSTATUS = "99"';
            SQLVlrTotalAgendado.MacroByName('Status').Value     := 'AGENCSTATUS = "99"';
            SQLVlrTotalAgendadoPago.MacroByName('Status').Value := 'AGENCSTATUS = "99"';
            SQLVlrTotalAtendido.MacroByName('Status').Value     := 'AGENCSTATUS = "6"';
            SQLVlrTotalNaoAtendido.MacroByName('Status').Value  := 'AGENCSTATUS = "99"';
          end;
     6 :  begin
            SQLAgendamento.MacroByName('Status').Value          := 'AGENCSTATUS = "7"';
            SQLNroTotalAgendado.MacroByName('Status').Value     := 'AGENCSTATUS = "99"';
            SQLNroTotalAtendido.MacroByName('Status').Value     := 'AGENCSTATUS = "99"';
            SQLNroTotalNaoAtendido.MacroByName('Status').Value  := 'AGENCSTATUS = "7"';
            SQLVlrTotalAgendado.MacroByName('Status').Value     := 'AGENCSTATUS = "99"';
            SQLVlrTotalAgendadoPago.MacroByName('Status').Value := 'AGENCSTATUS = "99"';
            SQLVlrTotalAtendido.MacroByName('Status').Value     := 'AGENCSTATUS = "99"';
            SQLVlrTotalNaoAtendido.MacroByName('Status').Value  := 'AGENCSTATUS = "7"';
          end;
     7 :  begin
            SQLAgendamento.MacroByName('Status').Value          := 'AGENCSTATUS = "8"';
            SQLNroTotalAgendado.MacroByName('Status').Value     := 'AGENCSTATUS = "99"';
            SQLNroTotalAtendido.MacroByName('Status').Value     := 'AGENCSTATUS = "99"';
            SQLNroTotalNaoAtendido.MacroByName('Status').Value  := 'AGENCSTATUS = "8"';
            SQLVlrTotalAgendado.MacroByName('Status').Value     := 'AGENCSTATUS = "99"';
            SQLVlrTotalAgendadoPago.MacroByName('Status').Value := 'AGENCSTATUS = "99"';
            SQLVlrTotalAtendido.MacroByName('Status').Value     := 'AGENCSTATUS = "99"';
            SQLVlrTotalNaoAtendido.MacroByName('Status').Value  := 'AGENCSTATUS = "8"';
          end;
     8 :  begin
            SQLAgendamento.MacroByName('Status').Value          := 'AGENCSTATUS = "9"';
            SQLNroTotalAgendado.MacroByName('Status').Value     := 'AGENCSTATUS = "99"';
            SQLNroTotalAtendido.MacroByName('Status').Value     := 'AGENCSTATUS = "99"';
            SQLNroTotalNaoAtendido.MacroByName('Status').Value  := 'AGENCSTATUS = "9"';
            SQLVlrTotalAgendado.MacroByName('Status').Value     := 'AGENCSTATUS = "99"';
            SQLVlrTotalAgendadoPago.MacroByName('Status').Value := 'AGENCSTATUS = "99"';
            SQLVlrTotalAtendido.MacroByName('Status').Value     := 'AGENCSTATUS = "99"';
            SQLVlrTotalNaoAtendido.MacroByName('Status').Value  := 'AGENCSTATUS = "9"';
          end;
  end;
  SQLAgendamento.Open;

  Case RadioTipo.ItemIndex of
     0 : ppReport.Print;
     1 : begin
           SQLNroTotalAgendado.Open;
           SQLNroTotalAtendido.Open;
           SQLNroTotalNaoAtendido.Open;
           SQLVlrTotalAgendado.Open;
           SQLVlrTotalAgendadoPago.Open;
           SQLVlrTotalAtendido.Open;
           SQLVlrTotalNaoAtendido.Open;
           ppReport2.Print;
         end;
  end;
  TblCliente.Close;
  TblClienteDependente.Close;
  TblMotivo.Close;
  TblProfissional.Close;
  TblAtendente.Close;
end;

procedure TFormTelaRelGerConsultasPorPeriodo.ppDetailBand3BeforePrint(
  Sender: TObject);
begin
  inherited;
  if SQLAgendamentoCLDPICOD.AsString = '' then
    ppPaciente1.Text := SQLAgendamentoClienteNome.Value
  else
    ppPaciente1.Text := SQLAgendamentoDependenteNome.Value;
end;

procedure TFormTelaRelGerConsultasPorPeriodo.ppHeaderBand3BeforePrint(
  Sender: TObject);
begin
  inherited;
  ppDE1.Text           := de.Text;
  ppATE1.Text          := ate.Text;
  if ComboCidade.Text <> '' then
    ppCidade.Text        := 'CIDADE: '+ ComboCidade.Text;
  if ComboEspecialidade.DisplayValue <> '' then
    ppEspecialidade.Text := 'ESPECIALIDADE: '+ ComboEspecialidade.DisplayValue;
end;

procedure TFormTelaRelGerConsultasPorPeriodo.ppReport2PreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ppReport2.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage := 100;
end;

procedure TFormTelaRelGerConsultasPorPeriodo.ppSummaryBand1BeforePrint(
  Sender: TObject);
begin
  inherited;
  ppNroTotalConsultasAgendadas.Text       := SQLNroTotalAgendadoCOUNT.AsString;
  ppNroTotalConsultasAtendidas.Text       := SQLNroTotalAtendidoCOUNT.AsString;
  ppNroTotalConsultasNaoAtendidas.Text    := SQLNroTotalNaoAtendidoCOUNT.AsString;
  ppVlrTotalConsultasAgendadas.Text       := FormatFloat('R$ ###,##0.00',SQLVlrTotalAgendadoSUM.Value);
  ppVlrTotalConsultasAgendadasPagas.Text  := FormatFloat('R$ ###,##0.00',SQLVlrTotalAgendadoPagoSUM.Value);
  ppVlrTotalConsultasAtendidas.Text       := FormatFloat('R$ ###,##0.00',SQLVlrTotalAtendidoSUM.Value);
  ppVlrTotalConsultasNaoAtendidas.Text    := FormatFloat('R$ ###,##0.00',SQLVlrTotalNaoAtendidoSUM.Value);
end;

end.
