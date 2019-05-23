unit CadastroContratoFinanceiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, RxDBComb, EDBNum, ToolEdit, RXDBCtrl,
  RxLookup, DBCtrls, StdCtrls, DBTables, DBActns, ActnList, ImgList,
  RxQuery, Menus, Mask, Grids, DBGrids, ComCtrls, ExtCtrls, RXCtrls,
  Buttons, jpeg;

type
  TFormCadastroContratoFinanceiro = class(TFormCadastroTEMPLATE)
    Label5: TLabel;
    BtnPortadores: TSpeedButton;
    Label14: TLabel;
    BtnTipoDocumento: TSpeedButton;
    Label20: TLabel;
    BtnHistorico: TSpeedButton;
    Label21: TLabel;
    Label4: TLabel;
    BtnAvalista: TSpeedButton;
    GroupPlanoContas: TGroupBox;
    PageControlPlanoContas: TPageControl;
    TabCredito: TTabSheet;
    Label18: TLabel;
    RetornaPlanoContas: TSpeedButton;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    TabDebito: TTabSheet;
    Label19: TLabel;
    RetornaPlanoContasDebito: TSpeedButton;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEditHistoricoPadrao: TDBEdit;
    MemoHistorico: TDBMemo;
    ComboPortador: TRxDBLookupCombo;
    ComboTipoDoc: TRxDBLookupCombo;
    ComboAvalista: TRxDBLookupCombo;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBDateEdit;
    DBEdit3: TEvDBNumEdit;
    EvDBNumEdit4: TEvDBNumEdit;
    DBDateEdit2: TDBDateEdit;
    DBEdit12: TDBEdit;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label27: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    RxDBComboBox3: TRxDBComboBox;
    DBDateEdit3: TDBDateEdit;
    DBEdit8: TDBEdit;
    SQLNumerario: TRxQuery;
    SQLNumerarioNUMEICOD: TIntegerField;
    SQLNumerarioNUMEA30DESCR: TStringField;
    SQLNumerarioNUMEA5TIPO: TStringField;
    DSSQLNumerario: TDataSource;
    SQLPortador: TRxQuery;
    SQLPortadorPORTICOD: TIntegerField;
    SQLPortadorPORTA60DESCR: TStringField;
    DSSQLPortador: TDataSource;
    SQLTipoDocumento: TRxQuery;
    SQLTipoDocumentoTPDCICOD: TIntegerField;
    SQLTipoDocumentoTPDCA60DESCR: TStringField;
    DSSQLTipoDocumento: TDataSource;
    SQLAvalista: TRxQuery;
    SQLAvalistaAVALA13ID: TStringField;
    SQLAvalistaAVALA60RAZAOSOC: TStringField;
    SQLAvalistaAVALA60ENDRES: TStringField;
    DSSQLAvalista: TDataSource;
    SQLTemplateCTRCA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateCTRCICOD: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateCTRCCSTATUS: TStringField;
    SQLTemplateCTRCINROPARC: TIntegerField;
    SQLTemplateCTRCDVENC: TDateTimeField;
    SQLTemplateCTRCN2VLR: TBCDField;
    SQLTemplateCTRCN2DESCFIN: TBCDField;
    SQLTemplateNUMEICOD: TIntegerField;
    SQLTemplatePORTICOD: TIntegerField;
    SQLTemplateCTRCN2TXJURO: TBCDField;
    SQLTemplateCTRCN2TXMULTA: TBCDField;
    SQLTemplateCTRCA5TIPOPADRAO: TStringField;
    SQLTemplateCTRCDULTREC: TDateTimeField;
    SQLTemplateCTRCN2TOTREC: TBCDField;
    SQLTemplateCTRCN2TOTJUROREC: TBCDField;
    SQLTemplateCTRCN2TOTMULTAREC: TBCDField;
    SQLTemplateCTRCN2TOTDESCREC: TBCDField;
    SQLTemplateEMPRICODULTREC: TIntegerField;
    SQLTemplateCUPOA13ID: TStringField;
    SQLTemplateTPDCICOD: TIntegerField;
    SQLTemplatePLCTA15COD: TStringField;
    SQLTemplateCTRCA30NRODUPLICBANCO: TStringField;
    SQLTemplateNOFIA13ID: TStringField;
    SQLTemplateCTRCDEMIS: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateCTRCDREABILSPC: TDateTimeField;
    SQLTemplateCTRCN2TOTMULTACOBR: TBCDField;
    SQLTemplateBANCA5CODCHQ: TStringField;
    SQLTemplateCTRCA10AGENCIACHQ: TStringField;
    SQLTemplateCTRCA15CONTACHQ: TStringField;
    SQLTemplateCTRCA15NROCHQ: TStringField;
    SQLTemplateCTRCA60TITULARCHQ: TStringField;
    SQLTemplateCTRCA20CGCCPFCHQ: TStringField;
    SQLTemplateCTRCDDEPOSCHQ: TDateTimeField;
    SQLTemplateALINICOD: TIntegerField;
    SQLTemplateNumerarioLookUp: TStringField;
    SQLTemplatePortadorLookUp: TStringField;
    SQLTemplatePDVDA13ID: TStringField;
    SQLTemplateTipoDocumentoLookUp: TStringField;
    SQLTemplateTipoPadraoLookUp: TStringField;
    SQLTemplateCTRCA254HIST: TStringField;
    SQLTemplateHTPDICOD: TIntegerField;
    SQLTemplatePLCTA15CODDEBITO: TStringField;
    SQLTemplatePlanodeContasCreditoCalcField: TStringField;
    SQLTemplatePlanodeContasDebitoCalcField: TStringField;
    SQLTemplateHistoricoPadraoCalcField: TStringField;
    SQLTemplateAVALA13ID: TStringField;
    SQLTemplateAvalistaLookup: TStringField;
    SQLTemplateCONTA13ID: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure BtnPortadoresClick(Sender: TObject);
    procedure BtnTipoDocumentoClick(Sender: TObject);
    procedure SQLTemplateNUMEICODChange(Sender: TField);
    procedure FormActivate(Sender: TObject);
    procedure RetornaPlanoContasClick(Sender: TObject);
    procedure RetornaPlanoContasDebitoClick(Sender: TObject);
    procedure BtnHistoricoClick(Sender: TObject);
    procedure SQLTemplateHTPDICODChange(Sender: TField);
    procedure DBEditHistoricoPadraoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEditHistoricoPadraoExit(Sender: TObject);
    procedure DBEdit13KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit15KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnAvalistaClick(Sender: TObject);
    procedure ComboTipoDocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboPortadorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboAvalistaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroContratoFinanceiro: TFormCadastroContratoFinanceiro;

implementation

uses DataModulo, VarSys, FormResources, TelaConsultaPortador,
  TelaConsultaTipoDocumento, TelaConsultaPlanoContas,
  CadastroHistoricoPadrao, UnitLibrary, CadastroAvalista;

{$R *.dfm}

procedure TFormCadastroContratoFinanceiro.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'CONTASRECEBER';
end;

procedure TFormCadastroContratoFinanceiro.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  //PLANO CONTAS CREDITO
   If DataSet.FieldByName('PLCTA15COD').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PLANODECONTAS',['PLCTA15COD'],[DataSet.FieldByName('PLCTA15COD').AsString],1) Then
        DataSet.FieldByName('PlanodeContasCreditoCalcField').AsVariant    := DM.SQLTemplate.FindField('PLCTA60DESCR').AsVariant
      Else
        DataSet.FieldByName('PlanodeContasCreditoCalcField').asString := MensagemLookUp ;
    End
  Else
    DataSet.FieldByName('PlanodeContasCreditoCalcField').AsVariant  := Null;

  //PLANO CONTAS DEBITO
   If DataSet.FieldByName('PLCTA15CODDEBITO').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PLANODECONTAS',['PLCTA15COD'],[DataSet.FieldByName('PLCTA15CODDEBITO').AsString],1) Then
        DataSet.FieldByName('PlanodeContasDebitoCalcField').AsVariant    := DM.SQLTemplate.FindField('PLCTA60DESCR').AsVariant
      Else
        DataSet.FieldByName('PlanodeContasDebitoCalcField').asString := MensagemLookUp ;
    End
  Else
    DataSet.FieldByName('PlanodeContasDebitoCalcField').AsVariant  := Null;


end;

procedure TFormCadastroContratoFinanceiro.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('CONTA13ID').Value          := DSMasterTemplate.DataSet.FindField('CONTA13ID').Value;
  DataSet.FindField('CLIEA13ID').Value          := DSMasterTemplate.DataSet.FindField('CONTA13IDEMPCONBRANCA').Value;
  DataSet.FindField('CTRCDEMIS').Value          := DSMasterTemplate.DataSet.FindField('CONTDEMISSAO').Value;
  DataSet.FindField('CTRCCSTATUS').Value        := 'A';
  DataSet.FindField('CTRCN2TXJURO').Value       := 0;
  DataSet.FindField('CTRCN2TXMULTA').Value      := 0;
  DataSet.FindField('CTRCN2TOTREC').Value       := 0;
  DataSet.FindField('CTRCN2TOTJUROREC').Value   := 0;
  DataSet.FindField('CTRCN2TOTMULTAREC').Value  := 0;
  DataSet.FindField('CTRCN2TOTDESCREC').Value   := 0;
  DataSet.FindField('CTRCN2TOTMULTACOBR').Value := 0;
  DataSet.FindField('CTRCN2TOTMULTACOBR').Value := 0;
  DataSet.FindField('CTRCN2DESCFIN').Value      := 0;
  DataSet.FindField('NUMEICOD').Value           := DM.SQLTerminalAtivoTERMINUMEPRAZO.AsVariant;
  DataSet.FindField('TPDCICOD').Value           := DM.SQLConfigVendaTPDCICOD.AsVariant;
  DataSet.FindField('PORTICOD').Value           := DM.SQLConfigVendaPORTICOD.AsVariant;

end;

procedure TFormCadastroContratoFinanceiro.BtnPortadoresClick(
  Sender: TObject);
begin
  inherited;
  FieldLookUp   := SQLTemplate.FindField('PORTICOD');
  FieldOrigem   := 'PORTICOD';
  DataSetLookup := SQLPortador;
  CriaFormulario(TFormTelaConsultaPortador,'FormTelaConsultaPortador',False,True,True,'');

end;

procedure TFormCadastroContratoFinanceiro.BtnTipoDocumentoClick(
  Sender: TObject);
begin
  inherited;
  FieldLookUp   := SQLTemplate.FindField('TPDCICOD');
  FieldOrigem   := 'TPDCICOD';
  DataSetLookup := SQLTipoDocumento;
  CriaFormulario(TFormTelaConsultaTipoDocumento,'FormTelaConsultaTipoDocumento',False,True,True,'');

end;

procedure TFormCadastroContratoFinanceiro.SQLTemplateNUMEICODChange(
  Sender: TField);
begin
  inherited;
  SQLTemplateCTRCA5TIPOPADRAO.Value := SQLTemplateTipoPadraoLookUp.asString;
end;

procedure TFormCadastroContratoFinanceiro.FormActivate(Sender: TObject);
begin
  inherited;
  PanelMaster.Refresh;
end;

procedure TFormCadastroContratoFinanceiro.RetornaPlanoContasClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PLCTA15COD');
  FieldOrigem := 'PLCTA15COD';
  TipoPlanoContas := 'C';
  CriaFormulario(TFormTelaConsultaPlanoContas, 'FormTelaConsultaPlanoContas',False,True,True,'');

end;

procedure TFormCadastroContratoFinanceiro.RetornaPlanoContasDebitoClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PLCTA15CODDEBITO');
  FieldOrigem := 'PLCTA15COD';
  TipoPlanoContas := 'D';
  CriaFormulario(TFormTelaConsultaPlanoContas, 'FormTelaConsultaPlanoContas',False,True,True,'');

end;

procedure TFormCadastroContratoFinanceiro.BtnHistoricoClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('HTPDICOD');
  FieldOrigem := 'HTPDICOD';
  TipoHistoricoPadrao := 'C';
  CriaFormulario(TFormCadastroHistoricoPadrao, 'FormCadastroHistoricoPadrao',False,True,True,'');
end;

procedure TFormCadastroContratoFinanceiro.SQLTemplateHTPDICODChange(
  Sender: TField);
begin
  inherited;
  //HISTORICO PADRAO
   if DSTemplate.DataSet.FieldByName('HTPDICOD').AsVariant <> null then
    begin
      if DM.ProcuraRegistro('HISTORICOPADRAO',['HTPDICOD'],[DSTemplate.DataSet.FieldByName('HTPDICOD').AsString],1) Then
        begin
          DSTemplate.DataSet.FieldByName('HistoricoPadraoCalcField').AsVariant    := DM.SQLTemplate.FindField('HTPDA100HISTORICO').AsVariant;
          if (DSTemplate.DataSet.State in DsEditModes) then
             DSTemplate.DataSet.FieldByName('CTRCA254HIST').AsVariant             := DSTemplate.DataSet.FieldByName('HistoricoPadraoCalcField').AsVariant;
        end
      else
        DSTemplate.DataSet.FieldByName('HistoricoPadraoCalcField').asString := MensagemLookUp ;
    end
  else
     DSTemplate.DataSet.FieldByName('HistoricoPadraoCalcField').AsVariant  := Null;

end;

procedure TFormCadastroContratoFinanceiro.DBEditHistoricoPadraoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    BtnHistorico.Click;

end;

procedure TFormCadastroContratoFinanceiro.DBEditHistoricoPadraoExit(
  Sender: TObject);
var
  Tam : Integer;
begin
  inherited;
  if DBEditHistoricoPadrao.Text <> '' then
    begin
      MemoHistorico.SetFocus;
      Tam := Length(MemoHistorico.Text) + 2;
      MemoHistorico.SelStart := Tam;
    end;
end;

procedure TFormCadastroContratoFinanceiro.DBEdit13KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaPlanoContas.Click ;
end;

procedure TFormCadastroContratoFinanceiro.DBEdit15KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaPlanoContasDebito.Click;
end;

procedure TFormCadastroContratoFinanceiro.BtnAvalistaClick(
  Sender: TObject);
begin
  inherited;
  FieldLookUp   := SQLTemplate.FindField('AVALA13ID');
  FieldOrigem   := 'AVALA13ID';
  DataSetLookup := SQLAvalista;
  CriaFormulario(TFormCadastroAvalista,'FormCadastroAvalista',False,True,True,'');

end;

procedure TFormCadastroContratoFinanceiro.ComboTipoDocKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = Vk_Return then
    if ((Sender as TRxDBLookupCombo).Value = '')
    or ((Sender as TRxDBLookupCombo).Value <> (Sender as TRxDBLookupCombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (Sender as TRxDBLookupCombo).KeyValue := (Sender as TRxDBLookupCombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

  if Key = VK_F2 then
    BtnTipoDocumento.Click;
end;

procedure TFormCadastroContratoFinanceiro.ComboPortadorKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_Return then
    if ((Sender as TRxDBLookupCombo).Value = '')
    or ((Sender as TRxDBLookupCombo).Value <> (Sender as TRxDBLookupCombo).LookupSource.DataSet.FieldByName((Sender as TRxDBLookupCombo).LookupField).Value) then
      (Sender as TRxDBLookupCombo).KeyValue := (Sender as TRxDBLookupCombo).LookupSource.DataSet.FieldByName((Sender as TRxDBLookupCombo).LookupField).Value;

  if Key = VK_F2 then
    BtnPortadores.Click;
end;

procedure TFormCadastroContratoFinanceiro.ComboAvalistaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = Vk_Return then
    if ((Sender as TRxDBLookupCombo).Value = '')
    or ((Sender as TRxDBLookupCombo).Value <> (Sender as TRxDBLookupCombo).LookupSource.DataSet.FieldByName((Sender as TRxDBLookupCombo).LookupField).Value) then
      (Sender as TRxDBLookupCombo).KeyValue := (Sender as TRxDBLookupCombo).LookupSource.DataSet.FieldByName((Sender as TRxDBLookupCombo).LookupField).Value;

  if Key = VK_F2 then
    BtnAvalista.Click;
end;

procedure TFormCadastroContratoFinanceiro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DataSetLookup := Nil;
end;

end.
