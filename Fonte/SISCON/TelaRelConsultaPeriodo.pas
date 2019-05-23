unit TelaRelConsultaPeriodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, StdCtrls, DB,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  DBTables, RxQuery, RxLookup, ppBands, ppCache, Mask, ToolEdit, ppCtrls,
  ppPrnabl,ppViewr, ppPrintr, OleServer, Grids, DBGrids;

type
  TFormTelaRelListConsultaPeriodo = class(TFormTelaGeralTEMPLATE)
    DSSQLAgendamento: TDataSource;
    SQLAgendamento: TRxQuery;
    PipeAgendamento: TppBDEPipeline;
    ppReport: TppReport;
    SQLAgendamentoAGENICOD: TIntegerField;
    SQLAgendamentoCLIEA13ID: TStringField;
    SQLAgendamentoCLDPICOD: TIntegerField;
    SQLAgendamentoAGENDMARCACAO: TDateTimeField;
    SQLAgendamentoAGENCSTATUS: TStringField;
    SQLAgendamentoAGENINRORECIBO: TIntegerField;
    SQLAgendamentoAGENDDIGIT: TDateTimeField;
    SQLAgendamentoClienteNome: TStringField;
    SQLAgendamentoAGENN3VLRCONSULTA: TBCDField;
    SQLAgendamentoAGENN3VLRPAGO: TBCDField;
    SQLAgendamentoAGENDPAGO: TDateTimeField;
    SQLAgendamentoClienteCodigoAntigo: TStringField;
    SQLAgendamentoDependenteNome: TStringField;
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
    TblClienteCLIETOBS: TStringField;
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
    TblProfissional: TTable;
    TblMotivo: TTable;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    GroupBoxDependente: TGroupBox;
    ComboProfissional: TRxDBLookupCombo;
    GroupBox1: TGroupBox;
    De: TDateEdit;
    Ate: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    BtnImprimir: TSpeedButton;
    ppEmpresa: TppLabel;
    ppLabel45: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppDBText29: TppDBText;
    ppDBText31: TppDBText;
    ppDBText30: TppDBText;
    ppDBText27: TppDBText;
    ppLabel1: TppLabel;
    ppDE: TppLabel;
    ppATE: TppLabel;
    ppLabel2: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppPaciente: TppLabel;
    Label3: TLabel;
    ComboEspecialidade: TRxDBLookupCombo;
    Label4: TLabel;
    DSSQLEspecialidade: TDataSource;
    SQLEspecialidade: TRxQuery;
    SQLEspecialidadeESPEICOD: TIntegerField;
    SQLEspecialidadeESPEA60DESCR: TStringField;
    SQLEspecialidadeESPEN3VLRCONSULTA: TBCDField;
    SQLProfissional: TRxQuery;
    DSSQLProfissional: TDataSource;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    SQLAgendamentoUSUAICOD: TIntegerField;
    PipeAgendamentoppField18: TppField;
    ppLabel5: TppLabel;
    ppDEP: TppLabel;
    ppLabel6: TppLabel;
    SQLProfissionalVENDICOD: TIntegerField;
    SQLProfissionalVENDA60NOME: TStringField;
    SQLProfissionalVENDN2COMISV: TBCDField;
    SQLProfissionalVENDN2COMISP: TBCDField;
    SQLProfissionalVENDCTIPCOMIS: TStringField;
    SQLProfissionalVENDCCOMISACRESC: TStringField;
    SQLProfissionalPENDENTE: TStringField;
    SQLProfissionalREGISTRO: TDateTimeField;
    SQLProfissionalVENDA60EMAIL: TStringField;
    SQLProfissionalVENDA5FISJURID: TStringField;
    SQLProfissionalVENDA14CGC: TStringField;
    SQLProfissionalVENDA20IE: TStringField;
    SQLProfissionalVENDA11CPF: TStringField;
    SQLProfissionalVENDA10RG: TStringField;
    SQLProfissionalVENDA60CONTATO: TStringField;
    SQLProfissionalVENDA15FONE1: TStringField;
    SQLProfissionalVENDA15FONE2: TStringField;
    SQLProfissionalVENDA15FAX: TStringField;
    SQLProfissionalVENDA60END: TStringField;
    SQLProfissionalVENDA60BAI: TStringField;
    SQLProfissionalVENDA60CID: TStringField;
    SQLProfissionalVENDA2UF: TStringField;
    SQLProfissionalVENDA8CEP: TStringField;
    SQLProfissionalBANCA5COD: TStringField;
    SQLProfissionalVENDA5AGENCIA: TStringField;
    SQLProfissionalVENDA10CONTA: TStringField;
    SQLProfissionalVENDA60TITULAR: TStringField;
    SQLProfissionalVENDDABERTCONTA: TDateTimeField;
    SQLProfissionalVENDA254OBS: TStringField;
    SQLProfissionalVENDA30CORE: TStringField;
    SQLProfissionalVENDA60RAZAOSOCIAL: TStringField;
    SQLProfissionalVENDIDIASVALFIDEL: TIntegerField;
    SQLProfissionalVENDN2PERCFIDEL: TBCDField;
    SQLProfissionalVENDN2PERCIRRF: TBCDField;
    SQLProfissionalESPEICOD: TIntegerField;
    TblAtendenteUSUAA60LOGIN: TStringField;
    TblMotivoMONAICOD: TIntegerField;
    TblMotivoMONAA60DESCR: TStringField;
    SQLAgendamentoPROFICOD: TIntegerField;
    SQLAgendamentoESPEICOD: TIntegerField;
    SQLAgendamentoAGENA254OBS: TStringField;
    SQLAgendamentoAGENICODAGRUP: TIntegerField;
    SQLAgendamentoAGENIUSUATEND: TIntegerField;
    SQLAgendamentoAGENIQTDE: TIntegerField;
    SQLAgendamentoMONAICOD: TIntegerField;
    TblProfissionalVENDICOD: TIntegerField;
    TblProfissionalVENDA60NOME: TStringField;
    TblProfissionalVENDN2COMISV: TBCDField;
    TblProfissionalVENDN2COMISP: TBCDField;
    TblProfissionalVENDCTIPCOMIS: TStringField;
    TblProfissionalVENDCCOMISACRESC: TStringField;
    TblProfissionalPENDENTE: TStringField;
    TblProfissionalREGISTRO: TDateTimeField;
    TblProfissionalVENDA60EMAIL: TStringField;
    TblProfissionalVENDA5FISJURID: TStringField;
    TblProfissionalVENDA14CGC: TStringField;
    TblProfissionalVENDA20IE: TStringField;
    TblProfissionalVENDA11CPF: TStringField;
    TblProfissionalVENDA10RG: TStringField;
    TblProfissionalVENDA60CONTATO: TStringField;
    TblProfissionalVENDA15FONE1: TStringField;
    TblProfissionalVENDA15FONE2: TStringField;
    TblProfissionalVENDA15FAX: TStringField;
    TblProfissionalVENDA60END: TStringField;
    TblProfissionalVENDA60BAI: TStringField;
    TblProfissionalVENDA60CID: TStringField;
    TblProfissionalVENDA2UF: TStringField;
    TblProfissionalVENDA8CEP: TStringField;
    TblProfissionalBANCA5COD: TStringField;
    TblProfissionalVENDA5AGENCIA: TStringField;
    TblProfissionalVENDA10CONTA: TStringField;
    TblProfissionalVENDA60TITULAR: TStringField;
    TblProfissionalVENDDABERTCONTA: TDateTimeField;
    TblProfissionalVENDA254OBS: TStringField;
    TblProfissionalVENDA30CORE: TStringField;
    TblProfissionalVENDA60RAZAOSOCIAL: TStringField;
    TblProfissionalVENDIDIASVALFIDEL: TIntegerField;
    TblProfissionalVENDN2PERCFIDEL: TBCDField;
    TblProfissionalVENDN2PERCIRRF: TBCDField;
    TblProfissionalESPEICOD: TIntegerField;
    SQLAgendamentoProfissional: TStringField;
    SQLAgendamentoMotivoNome: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure ppDEPrint(Sender: TObject);
    procedure ppATEPrint(Sender: TObject);
    procedure ppStatusHistConsultaPrint(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppReportPreviewFormCreate(Sender: TObject);
    procedure ComboEspecialidadeExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaRelListConsultaPeriodo: TFormTelaRelListConsultaPeriodo;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormTelaRelListConsultaPeriodo.FormCreate(Sender: TObject);
begin
  inherited;
  SQLEspecialidade.Close;
  SQLEspecialidade.Open;
end;

procedure TFormTelaRelListConsultaPeriodo.BtnImprimirClick(
  Sender: TObject);
begin
  inherited;
  TblAtendente.Open;
  TblCliente.Open;
  TblClienteDependente.Open;
  TblMotivo.Open;
  TblProfissional.Open;
  SQLAgendamento.Close;
  SQLAgendamento.MacroByName('Inicial').Value   := 'AGENDMARCACAO > ' + '"' + FormatDateTime('mm/dd/yyyy 00:00',StrToDate(De.Text))+ '"';
  SQLAgendamento.MacroByName('Final').Value     := 'AGENDMARCACAO < ' + '"' + FormatDateTime('mm/dd/yyyy 23:59',StrToDate(Ate.Text))+ '"';
  if ComboEspecialidade.KeyValue <> null then
    SQLAgendamento.MacroByName('Especialidade').Value := 'Espeicod = '+ ComboEspecialidade.KeyValue
  else
    SQLAgendamento.MacroByName('Especialidade').Value := '0=0';
  if ComboProfissional.KeyValue <> null then
    SQLAgendamento.MacroByName('Profissional').Value := 'Proficod = '+ ComboProfissional.KeyValue
  else
    SQLAgendamento.MacroByName('Profissional').Value := '0=0';
  SQLAgendamento.Open;
  ppReport.Print;
  TblAtendente.Close;
  TblCliente.Close;
  TblClienteDependente.Close;
  TblMotivo.Close;
  TblProfissional.Close;
end;

procedure TFormTelaRelListConsultaPeriodo.ppDEPrint(Sender: TObject);
begin
  inherited;
  Text := DE.Text;
end;

procedure TFormTelaRelListConsultaPeriodo.ppATEPrint(Sender: TObject);
begin
  inherited;
  Text := ATE.Text;
end;

procedure TFormTelaRelListConsultaPeriodo.ppStatusHistConsultaPrint(
  Sender: TObject);
begin
  inherited;
 // aDILSON
{  Case SQLAgendamentoAGENCSTATUS.Value[1] of
    '0': ppStatusHistConsulta.Text := '** LIVRE **' ;
    '1': ppStatusHistConsulta.Text := 'Simples (Agendamento)' ;
    '2': ppStatusHistConsulta.Text := 'Dupla   (Agendamento)' ;
    '3': ppStatusHistConsulta.Text := 'Tripla  (Agendamento)' ;
    '4': ppStatusHistConsulta.Text := 'Simples (Atendido)'    ;
    '5': ppStatusHistConsulta.Text := 'Dupla   (Atendido)'    ;
    '6': ppStatusHistConsulta.Text := 'Tripla  (Atendido)'    ;
  End;}
end;

procedure TFormTelaRelListConsultaPeriodo.ppHeaderBand1BeforePrint(
  Sender: TObject);
begin
  inherited;
  ppEmpresa.Caption := EmpresaAtualNome;
  ppDE.Text         := de.Text;
  ppATE.Text        := ate.Text;
end;

procedure TFormTelaRelListConsultaPeriodo.FormActivate(Sender: TObject);
begin
  inherited;
  De.Text := FormatDateTime('dd/mm/yyyy', now);
  Ate.Text := FormatDateTime('dd/mm/yyyy', now);
end;

procedure TFormTelaRelListConsultaPeriodo.ppDetailBand1BeforePrint(
  Sender: TObject);
begin
  inherited;
  ppDEP.Text := '';
  ppPaciente.Text := SQLAgendamentoClienteNome.AsString;
  if SQLAgendamentoDependenteNome.Value <> '' then
    begin
      ppPaciente.Text := SQLAgendamentoDependenteNome.AsString;
      ppDEP.Text      := 'DEP';
    end;
end;

procedure TFormTelaRelListConsultaPeriodo.ppReportPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ppReport.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppReport.PreviewForm.Viewer).ZoomPercentage := 100;
end;

procedure TFormTelaRelListConsultaPeriodo.ComboEspecialidadeExit(
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

end.
