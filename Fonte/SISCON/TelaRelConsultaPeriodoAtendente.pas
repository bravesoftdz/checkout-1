unit TelaRelConsultaPeriodoAtendente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, StdCtrls, ppBands,
  ppCtrls, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB, ppComm,
  ppRelatv, ppDBPipe, ppDBBDE, DBTables, DB, RxQuery, Mask, ToolEdit,
  RxLookup, ppViewr, ppPrintr, OleServer, ppStrtch, ppSubRpt, Grids,
  DBGrids;

type
  TFormTelaRelConsultaPeriodoAtendente = class(TFormTelaGeralTEMPLATE)
    BtnImprimir: TSpeedButton;
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
    TblAtendenteUSUAA60NOME: TStringField;
    TblProfissional: TTable;
    TblProfissionalPROFICOD: TIntegerField;
    TblProfissionalPROFA60NOME: TStringField;
    TblMotivo: TTable;
    TblMotivoMOTIICOD: TIntegerField;
    TblMotivoMOTIA60DESCR: TStringField;
    TblMotivoMOTICBLOQUEIOCLI: TStringField;
    ppReportEmitidos: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel36: TppLabel;
    ppLabel45: TppLabel;
    ppLabel54: TppLabel;
    ppLabel56: TppLabel;
    ppLabel1: TppLabel;
    ppDE: TppLabel;
    ppATE: TppLabel;
    ppLabel2: TppLabel;
    ppDBAtendente: TppDBText;
    ppLabel3: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText30: TppDBText;
    ppDBText27: TppDBText;
    ppPaciente: TppDBText;
    ppFooterBand1: TppFooterBand;
    GroupBoxDependente: TGroupBox;
    ComboAtendente: TRxDBLookupCombo;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    De: TDateEdit;
    Ate: TDateEdit;
    SQLAtendente: TQuery;
    DSSQLAtendente: TDataSource;
    SQLAtendenteUSUAICOD: TIntegerField;
    SQLAtendenteUSUAA60NOME: TStringField;
    ppDBText1: TppDBText;
    ppLabel8: TppLabel;
    ppDBText3: TppDBText;
    ppLine2: TppLine;
    SQLAgendaCancel: TRxQuery;
    DSSqlAgendaCancel: TDataSource;
    SQLAgendaCancelAGECICOD: TIntegerField;
    SQLAgendaCancelCLIEA13ID: TStringField;
    SQLAgendaCancelCLDPICOD: TIntegerField;
    SQLAgendaCancelPROFICOD: TIntegerField;
    SQLAgendaCancelESPEICOD: TIntegerField;
    SQLAgendaCancelMOTIICOD: TIntegerField;
    SQLAgendaCancelAGECDMARCACAO: TDateTimeField;
    SQLAgendaCancelUSUAICOD: TIntegerField;
    SQLAgendaCancelAGECDDIGIT: TDateTimeField;
    SQLAgendaCancelAGECINRORECIBO: TIntegerField;
    SQLAgendaCancelAGECN3VLRCONSULTA: TBCDField;
    SQLAgendaCancelAGECN3VLRPAGO: TBCDField;
    SQLAgendaCancelAGECDPAGO: TDateTimeField;
    SQLAgendaCancelAGECIUSUARIOCANC: TIntegerField;
    SQLAgendaCancelAGECDCANC: TDateTimeField;
    SQLAgendaCancelClienteNome: TStringField;
    SQLAgendaCancelDependenteNome: TStringField;
    ppLabel4: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppReportCancelados: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDeCanc: TppLabel;
    ppATECANC: TppLabel;
    ppLabel14: TppLabel;
    ppAtendenteCanc: TppDBText;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLine1: TppLine;
    ppLabel17: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppPacienteCanc: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLabel18: TppLabel;
    ppDBCalc2: TppDBCalc;
    SQLAgendaCancelAtendente: TStringField;
    SQLAgendaCancelClienteCodigoAntigo: TStringField;
    PipeAgendaCancel: TppBDEPipeline;
    ppReportEmitidosCancelados: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel13: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDE1: TppLabel;
    ppATE1: TppLabel;
    ppLabel25: TppLabel;
    ppAtendente1: TppDBText;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLine3: TppLine;
    ppLabel28: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText11: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppLabel29: TppLabel;
    ppDBCalc3: TppDBCalc;
    SQLAgendaCancelProfissional: TStringField;
    ppDBCalc4: TppDBCalc;
    ppLine4: TppLine;
    DSSQLMovimentoCX: TDataSource;
    SQLMovimentoCX: TRxQuery;
    SQLMovimentoCXMVCXDMOV: TDateTimeField;
    SQLMovimentoCXCLIEA13ID: TStringField;
    SQLMovimentoCXCLDPICOD: TIntegerField;
    SQLMovimentoCXMVCXN2VLRCRED: TBCDField;
    SQLMovimentoCXMVCXN2VLRDEB: TBCDField;
    SQLMovimentoCXESPEICOD: TIntegerField;
    SQLMovimentoCXPROFICOD: TIntegerField;
    SQLMovimentoCXUSUAICOD: TIntegerField;
    SQLMovimentoCXMVCXINRORECIBO: TIntegerField;
    SQLMovimentoCXAtendente: TStringField;
    SQLMovimentoCXProfissional: TStringField;
    SQLMovimentoCXDependente: TStringField;
    RadioTipo: TRadioGroup;
    SQLMovimentoCXMVCXICOD: TIntegerField;
    ppLine5: TppLine;
    SQLMovimentoCXPaciente: TStringField;
    ppField1: TppField;
    PipeEmitiCancelad: TppBDEPipeline;
    ppDBText2: TppDBText;
    procedure BtnImprimirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppReportEmitidosPreviewFormCreate(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppHeaderBand2BeforePrint(Sender: TObject);
    procedure ppReportCanceladosPreviewFormCreate(Sender: TObject);
    procedure ppReportEmitidosCanceladosPreviewFormCreate(Sender: TObject);
    procedure ppHeaderBand3BeforePrint(Sender: TObject);
    procedure SQLMovimentoCXCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaRelConsultaPeriodoAtendente: TFormTelaRelConsultaPeriodoAtendente;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormTelaRelConsultaPeriodoAtendente.BtnImprimirClick(
  Sender: TObject);
begin
  inherited;
  SQLMovimentoCX.Close;
  SQLAgendaCancel.Close;
  SQLAgendaCancel.MacroByName('Inicial').Value  := 'AGECDCANC >= ' + '"' + FormatDateTime('mm/dd/yyyy',StrToDate(De.Text))+ '"';
  SQLAgendaCancel.MacroByName('Final').Value    := 'AGECDCANC <= ' + '"' + FormatDateTime('mm/dd/yyyy',StrToDate(Ate.Text))+ '"';
  SQLMovimentoCX.MacroByName('Inicial').Value   := 'MVCXDMOV >= ' + '"' + FormatDateTime('mm/dd/yyyy',StrToDate(De.Text))+ '"';
  SQLMovimentoCX.MacroByName('Final').Value     := 'MVCXDMOV <= ' + '"' + FormatDateTime('mm/dd/yyyy',StrToDate(Ate.Text))+ '"';
  if ComboAtendente.KeyValue<>null then
    begin
      SQLAgendaCancel.MacroByName('Atendente').Value  := 'Usuaicod = '+ ComboAtendente.KeyValue;
      SQLMovimentoCX.MacroByName('Atendente').Value   := 'Usuaicod = '+ ComboAtendente.KeyValue;
    end
  else
    begin
      SQLAgendaCancel.MacroByName('Atendente').Value  := '0=0';
      SQLMovimentoCX.MacroByName('Atendente').Value   := '0=0';
    end;
  case RadioTipo.ItemIndex of
    0 : begin
          SQLMovimentoCX.Open;
          ppReportEmitidosCancelados.Print;
        end;
    1 : begin
          SQLMovimentoCX.Open;
          ppReportEmitidos.Print;
        end;
    2 : begin
          SQLAgendaCancel.Open;
          ppReportCancelados.Print;
        end;
  end;
end;

procedure TFormTelaRelConsultaPeriodoAtendente.FormActivate(
  Sender: TObject);
begin
  inherited;
  SQLAtendente.Close;
  SQLAtendente.Open;
  De.Text := FormatDateTime('dd/mm/yyyy', now);
  Ate.Text := FormatDateTime('dd/mm/yyyy', now);
end;

procedure TFormTelaRelConsultaPeriodoAtendente.ppHeaderBand1BeforePrint(
  Sender: TObject);
begin
  inherited;
  ppDE.Text   := de.Text;
  ppATE.Text  := ate.Text;
  if ComboAtendente.KeyValue=null then
    ppDBAtendente.Text := 'Todos os Atendentes'
end;

procedure TFormTelaRelConsultaPeriodoAtendente.ppReportEmitidosPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ppReportEmitidos.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppReportEmitidos.PreviewForm.Viewer).ZoomPercentage := 100;
end;

procedure TFormTelaRelConsultaPeriodoAtendente.ppDetailBand2BeforePrint(
  Sender: TObject);
begin
  inherited;
  ppPacienteCanc.Text := SQLAgendaCancelClienteNome.AsString;
  if SQLAgendaCancelDependenteNome.Value <> '' then
    ppPacienteCanc.Text := SQLAgendaCancelDependenteNome.AsString;
end;


procedure TFormTelaRelConsultaPeriodoAtendente.ppHeaderBand2BeforePrint(
  Sender: TObject);
begin
  inherited;
  ppDECANC.Text   := de.Text;
  ppATECANC.Text  := ate.Text;
  if ComboAtendente.KeyValue=null then
    ppAtendenteCanc.Text := 'Todos os Atendentes'
end;

procedure TFormTelaRelConsultaPeriodoAtendente.ppReportCanceladosPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ppReportCancelados.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppReportCancelados.PreviewForm.Viewer).ZoomPercentage := 100;
end;

procedure TFormTelaRelConsultaPeriodoAtendente.ppReportEmitidosCanceladosPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ppReportEmitidosCancelados.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppReportEmitidosCancelados.PreviewForm.Viewer).ZoomPercentage := 100;
end;

procedure TFormTelaRelConsultaPeriodoAtendente.ppHeaderBand3BeforePrint(
  Sender: TObject);
begin
  inherited;
  ppDE1.Text   := de.Text;
  ppATE1.Text  := ate.Text;
  if ComboAtendente.KeyValue=null then
    ppAtendente1.Text := 'Todos os Atendentes';
end;

procedure TFormTelaRelConsultaPeriodoAtendente.SQLMovimentoCXCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  SQLMovimentoCXPaciente.Value := SQLMovimentoCXCLIEA13ID.Value;
  if SQLMovimentoCXDependente.Value <> '' then
    SQLMovimentoCXPaciente.Value := SQLMovimentoCXDependente.Value;
end;

end.
