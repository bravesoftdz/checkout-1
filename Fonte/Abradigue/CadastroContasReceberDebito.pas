unit CadastroContasReceberDebito;

interface

uses
  Variants, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls, ToolEdit,
  VarSYS, FormResources, RXDBCtrl, DBActns, ActnList, ImgList,
  ToolWin, ActnMan, ActnCtrls, ActnMenus, EDBNum, RxLookup;

type
  TFormCadastroContasReceberDebito = class(TFormCadastroTEMPLATE)
    SQLTemplateCTRCA13ID: TStringField;
    SQLTemplateEMPRICODULTREC: TIntegerField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateCTRCICOD: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
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
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateCUPOA13ID: TStringField;
    SQLTemplateTPDCICOD: TIntegerField;
    SQLTemplatePLCTA15COD: TStringField;
    SQLTemplateEmpresaUltRecCalcField: TStringField;
    SQLTemplateTerminalCalcField: TStringField;
    SQLTemplateClienteCalcField: TStringField;
    SQLTemplateNumerarioCalcField: TStringField;
    SQLTemplatePortadorCalcField: TStringField;
    SQLTemplateTipoDocumentoCalcField: TStringField;
    SQLTemplatePlanodeContasCalcField: TStringField;
    SQLTemplateEmpresaDestCalcField: TStringField;
    Label7: TLabel;
    RetornaTipoDoc: TSpeedButton;
    Label8: TLabel;
    RetornaPortador: TSpeedButton;
    SQLTemplateCTRCA30NRODUPLICBANCO: TStringField;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    SQLRecebimento: TQuery;
    SQLRecebimentoCTRCA13ID: TStringField;
    SQLRecebimentoRECEICOD: TIntegerField;
    SQLRecebimentoRECEDRECTO: TDateTimeField;
    SQLRecebimentoRECEN2VLRRECTO: TBCDField;
    SQLRecebimentoRECEN2VLRJURO: TBCDField;
    SQLRecebimentoRECEN2VLRMULTA: TBCDField;
    SQLRecebimentoRECEN2DESC: TBCDField;
    SQLRecebimentoEMPRICODREC: TIntegerField;
    DSSQLRecebimento: TDataSource;
    SQLRecebimentoSaldoCalcField: TBCDField;
    ActionMainMenuBar1: TActionMainMenuBar;
    SQLTemplateNOFIA13ID: TStringField;
    SQLTemplateCTRCDEMIS: TDateTimeField;
    SQLTemplateCTRCCSTATUS: TStringField;
    Label1: TLabel;
    BtnEmpresa: TSpeedButton;
    Label2: TLabel;
    BtnCliente: TSpeedButton;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    Label10: TLabel;
    Label5: TLabel;
    EditValor: TEvDBNumEdit;
    Label9: TLabel;
    DBEdit13: TDBEdit;
    Geraroutrolanamentoapartirdodocumentoatual1: TMenuItem;
    SQLEspelhoNovoLanc: TRxQuery;
    SQLEspelhoNovoLancCTRCA13ID: TStringField;
    SQLEspelhoNovoLancEMPRICOD: TIntegerField;
    SQLEspelhoNovoLancTERMICOD: TIntegerField;
    SQLEspelhoNovoLancCLIEA13ID: TStringField;
    SQLEspelhoNovoLancCTRCCSTATUS: TStringField;
    SQLEspelhoNovoLancCTRCINROPARC: TIntegerField;
    SQLEspelhoNovoLancCTRCDVENC: TDateTimeField;
    SQLEspelhoNovoLancCTRCN2VLR: TBCDField;
    SQLEspelhoNovoLancCTRCN2DESCFIN: TBCDField;
    SQLEspelhoNovoLancNUMEICOD: TIntegerField;
    SQLEspelhoNovoLancPORTICOD: TIntegerField;
    SQLEspelhoNovoLancCTRCN2TXJURO: TBCDField;
    SQLEspelhoNovoLancCTRCN2TXMULTA: TBCDField;
    SQLEspelhoNovoLancCTRCA5TIPOPADRAO: TStringField;
    SQLEspelhoNovoLancCUPOA13ID: TStringField;
    SQLEspelhoNovoLancTPDCICOD: TIntegerField;
    SQLEspelhoNovoLancPLCTA15COD: TStringField;
    SQLEspelhoNovoLancCTRCA30NRODUPLICBANCO: TStringField;
    SQLEspelhoNovoLancCTRCDEMIS: TDateTimeField;
    SQLTemplateTipoPadraoCalcField: TStringField;
    Label12: TLabel;
    DBEdit15: TDBEdit;
    SQLRecebimentoEmpresaLookup: TStringField;
    SQLTemplateCTRCA254HIST: TStringField;
    MemoHistorico: TDBMemo;
    Label13: TLabel;
    SQLCliente: TRxQuery;
    DSSQLCliente: TDataSource;
    SQLTipoDocumento: TRxQuery;
    DSSQLTipoDocumento: TDataSource;
    SQLConta: TRxQuery;
    DSSQLConta: TDataSource;
    SQLPortador: TRxQuery;
    DSSQLPortador: TDataSource;
    PanelPesquisa: TPanel;
    ComboCliente: TRxDBLookupCombo;
    ComboConta: TRxDBLookupCombo;
    ComboTipoDoc: TRxDBLookupCombo;
    ComboPortador: TRxDBLookupCombo;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SQLTemplateDUPLA13ID: TStringField;
    SQLTemplateHTPDICOD: TIntegerField;
    Label11: TLabel;
    DBEditHistoricoPadrao: TDBEdit;
    BtnHistorico: TSpeedButton;
    SQLTemplateHistoricoPadraoCalcField: TStringField;
    SQLTemplatePLCTA15CODDEBITO: TStringField;
    GroupPlanoContas: TGroupBox;
    PageControlPlanoContas: TPageControl;
    TabCredito: TTabSheet;
    TabDebito: TTabSheet;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    RetornaPlanoContas: TSpeedButton;
    DBEdit8: TDBEdit;
    Label14: TLabel;
    DBEdit5: TDBEdit;
    RetornaPlanoContasDebito: TSpeedButton;
    DBEdit14: TDBEdit;
    SQLTemplatePlanodeContasDebitoCalcField: TStringField;
    SQLEspelhoNovoLancCTRCA254HIST: TStringField;
    SQLEspelhoNovoLancHTPDICOD: TIntegerField;
    SQLEspelhoNovoLancPLCTA15CODDEBITO: TStringField;
    SQLContasReceber: TRxQuery;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberTERMICOD: TIntegerField;
    SQLContasReceberCTRCICOD: TIntegerField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCTRCCSTATUS: TStringField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCN2VLR: TBCDField;
    SQLContasReceberCTRCN2DESCFIN: TBCDField;
    SQLContasReceberNUMEICOD: TIntegerField;
    SQLContasReceberPORTICOD: TIntegerField;
    SQLContasReceberCTRCN2TXJURO: TBCDField;
    SQLContasReceberCTRCN2TXMULTA: TBCDField;
    SQLContasReceberCTRCA5TIPOPADRAO: TStringField;
    SQLContasReceberCTRCDULTREC: TDateTimeField;
    SQLContasReceberCTRCN2TOTREC: TBCDField;
    SQLContasReceberCTRCN2TOTJUROREC: TBCDField;
    SQLContasReceberCTRCN2TOTMULTAREC: TBCDField;
    SQLContasReceberCTRCN2TOTDESCREC: TBCDField;
    SQLContasReceberCTRCN2TOTMULTACOBR: TBCDField;
    SQLContasReceberEMPRICODULTREC: TIntegerField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberTPDCICOD: TIntegerField;
    SQLContasReceberPLCTA15COD: TStringField;
    SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField;
    SQLContasReceberNOFIA13ID: TStringField;
    SQLContasReceberCTRCDEMIS: TDateTimeField;
    SQLContasReceberPENDENTE: TStringField;
    SQLContasReceberREGISTRO: TDateTimeField;
    SQLContasReceberCTRCDREABILSPC: TDateTimeField;
    SQLContasReceberBANCA5CODCHQ: TStringField;
    SQLContasReceberCTRCA10AGENCIACHQ: TStringField;
    SQLContasReceberCTRCA15CONTACHQ: TStringField;
    SQLContasReceberCTRCA15NROCHQ: TStringField;
    SQLContasReceberCTRCA60TITULARCHQ: TStringField;
    SQLContasReceberCTRCA20CGCCPFCHQ: TStringField;
    SQLContasReceberCTRCDDEPOSCHQ: TDateTimeField;
    SQLContasReceberALINICOD: TIntegerField;
    SQLContasReceberPDVDA13ID: TStringField;
    SQLContasReceberCTRCDESTORNO: TDateTimeField;
    SQLContasReceberFRETA13ID: TStringField;
    SQLContasReceberCOBRA13ID: TStringField;
    SQLContasReceberCTRCDENVIOCOBRANCA: TDateTimeField;
    SQLContasReceberCTRCA254HIST: TStringField;
    SQLContasReceberDUPLA13ID: TStringField;
    SQLContasReceberHTPDICOD: TIntegerField;
    SQLContasReceberPLCTA15CODDEBITO: TStringField;
    DSSQLContasReceber: TDataSource;
    SQLTemplateCTRCN2TOTMULTACOBR: TBCDField;
    SQLTemplateCTRCDREABILSPC: TDateTimeField;
    SQLTemplateBANCA5CODCHQ: TStringField;
    SQLTemplateCTRCA10AGENCIACHQ: TStringField;
    SQLTemplateCTRCA15CONTACHQ: TStringField;
    SQLTemplateCTRCA15NROCHQ: TStringField;
    SQLTemplateCTRCA60TITULARCHQ: TStringField;
    SQLTemplateCTRCA20CGCCPFCHQ: TStringField;
    SQLTemplateCTRCDDEPOSCHQ: TDateTimeField;
    SQLTemplateALINICOD: TIntegerField;
    SQLTemplatePDVDA13ID: TStringField;
    SQLTemplateCTRCDESTORNO: TDateTimeField;
    SQLTemplateFRETA13ID: TStringField;
    SQLTemplateCOBRA13ID: TStringField;
    SQLTemplateCTRCDENVIOCOBRANCA: TDateTimeField;
    SQLTemplateAVALA13ID: TStringField;
    DSSQLAvalista: TDataSource;
    SQLAvalista: TRxQuery;
    SQLAvalistaAVALA13ID: TStringField;
    SQLAvalistaAVALA60RAZAOSOC: TStringField;
    SQLEmpresa: TRxQuery;
    DSSQLEmpresa: TDataSource;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    ComboEmpresa: TRxDBLookupCombo;
    ComboClienteCad: TRxDBLookupCombo;
    ComboTipoDocCad: TRxDBLookupCombo;
    ComboPortadorCad: TRxDBLookupCombo;
    SQLAvalistaAVALA60CIDRES: TStringField;
    Label15: TLabel;
    EvDBNumEdit1: TEvDBNumEdit;
    SQLTemplateCTRCCTIPOREGISTRO: TStringField;
    SQLRecebimentoRECEA254HISTORICO: TStringField;
    SQLRecebimentoRECEDDATAMOV: TDateTimeField;
    SQLEspelhoNovoLancAVALA13ID: TStringField;
    SQLEspelhoNovoLancCTRCCTIPOREGISTRO: TStringField;
    Label4: TLabel;
    DBDateEdit2: TDBDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure BtnClienteClick(Sender: TObject);
    procedure RetornaTipoDocClick(Sender: TObject);
    procedure RetornaPortadorClick(Sender: TObject);
    procedure RetornaPlanoContasClick(Sender: TObject);
    procedure Geraroutrolanamentoapartirdodocumentoatual1Click(
      Sender: TObject);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateNUMEICODChange(Sender: TField);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure BtnEmpresaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ComboClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure SQLTemplateHTPDICODChange(Sender: TField);
    procedure BtnHistoricoClick(Sender: TObject);
    procedure DBEditHistoricoPadraoExit(Sender: TObject);
    procedure DBEditHistoricoPadraoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RetornaPlanoContasDebitoClick(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SQLContasReceberBeforePost(DataSet: TDataSet);
    procedure SQLContasReceberPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboClienteCadKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboTipoDocCadKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboPortadorCadKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    Replicando : Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroContasReceberDebito: TFormCadastroContasReceberDebito;

implementation

uses  CadastroCliente, DataModulo, CadastroTipoDocumento,
  CadastroPlanodeContas, CadastroPortador, TelaConsultaNumerario,
  TelaConsultaEmpresa, TelaConsultaPlanoContas, UnitLibrary,
  CadastroHistoricoPadrao, TelaConsultaRecebimento, WaitWindow,
  TelaDadosReplicacaoContasReceber, CadastroAvalista;

{$R *.DFM}

procedure TFormCadastroContasReceberDebito.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CONTASRECEBER' ;
  SQLRecebimento.Open ;
  SQLCliente.Open;
  SQLConta.Open;
  SQLTipoDocumento.Open;
  SQLPortador.Open;
  SQLAvalista.Open;
  PageControlPlanoContas.ActivePage := TabCredito;
  Replicando := False;
end;

procedure TFormCadastroContasReceberDebito.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  //EMPRESA
  If DataSet.FieldByName('EMPRICOD').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('EMPRESA',['EMPRICOD'],[DataSet.FieldByName('EMPRICOD').AsString],1) Then
        DataSet.FieldByName('EmpresaDestCalcField').AsVariant    := DM.SQLTemplate.FindField('EMPRA60RAZAOSOC').AsVariant
      Else
        DataSet.FieldByName('EmpresaDestCalcField').asString := MensagemLookUp ;
    End
  Else
    DataSet.FieldByName('EmpresaDestCalcField').AsVariant  := Null;
  //CLIENTE
  If DataSet.FieldByName('CLIEA13ID').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('CLIENTE',['CLIEA13ID'],[DataSet.FieldByName('CLIEA13ID').AsString],1) Then
        DataSet.FieldByName('ClienteCalcField').AsVariant    := DM.SQLTemplate.FindField('CLIEA60RAZAOSOC').AsVariant
      Else
        DataSet.FieldByName('ClienteCalcField').asString := MensagemLookUp ;
    End
  Else
    DataSet.FieldByName('ClienteCalcField').AsVariant  := Null;
  //PLANO CONTAS CREDITO
   If DataSet.FieldByName('PLCTA15COD').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PLANODECONTAS',['PLCTA15COD'],[DataSet.FieldByName('PLCTA15COD').AsString],1) Then
        DataSet.FieldByName('PlanodeContasCalcField').AsVariant    := DM.SQLTemplate.FindField('PLCTA60DESCR').AsVariant
      Else
        DataSet.FieldByName('PlanodeContasCalcField').asString := MensagemLookUp ;
    End
  Else
    DataSet.FieldByName('PlanodeContasCalcField').AsVariant  := Null;

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

  //TIPO DOCUMENTO
   If DataSet.FieldByName('TPDCICOD').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('TIPODOCUMENTO',['TPDCICOD'],[DataSet.FieldByName('TPDCICOD').AsString],1) Then
        DataSet.FieldByName('TipoDocumentoCalcField').AsVariant    := DM.SQLTemplate.FindField('TPDCA60DESCR').AsVariant
      Else
        DataSet.FieldByName('TipoDocumentoCalcField').asString := MensagemLookUp ;
    End
  Else
    DataSet.FieldByName('TipoDocumentoCalcField').AsVariant  := Null;
  //PORTADOR
   if DataSet.FieldByName('PORTICOD').AsVariant <> null then
    begin
      if DM.ProcuraRegistro('PORTADOR',['PORTICOD'],[DataSet.FieldByName('PORTICOD').AsString],1) Then
        DataSet.FieldByName('PortadorCalcField').AsVariant    := DM.SQLTemplate.FindField('PORTA60DESCR').AsVariant
      else
        DataSet.FieldByName('PortadorCalcField').asString := MensagemLookUp ;
    end
  else
     DataSet.FieldByName('PortadorCalcField').AsVariant  := Null;
{  //NUMERARIO
   if DataSet.FieldByName('NUMEICOD').AsVariant <> null then
    begin
      if DM.ProcuraRegistro('NUMERARIO',['NUMEICOD'],[DataSet.FieldByName('NUMEICOD').AsString],1) Then
        begin
          DataSet.FieldByName('NumerarioCalcField').AsVariant  := DM.SQLTemplate.FindField('NUMEA30DESCR').AsVariant ;
          DataSet.FieldByName('TipoPadraoCalcField').AsVariant := DM.SQLTemplate.FindField('NUMEA5TIPO').AsVariant ;
        end
      else
        DataSet.FieldByName('NumerarioCalcField').asString := MensagemLookUp ;
    end
  else
     DataSet.FieldByName('NumerarioCalcField').AsVariant  := Null;}
  //HISTORICO PADRAO
   if DataSet.FieldByName('HTPDICOD').AsVariant <> null then
    begin
      if DM.ProcuraRegistro('HISTORICOPADRAO',['HTPDICOD'],[DataSet.FieldByName('HTPDICOD').AsString],1) Then
        DataSet.FieldByName('HistoricoPadraoCalcField').AsVariant    := DM.SQLTemplate.FindField('HTPDA100HISTORICO').AsVariant
      else
        DataSet.FieldByName('HistoricoPadraoCalcField').asString := MensagemLookUp ;
    end
  else
     DataSet.FieldByName('HistoricoPadraoCalcField').AsVariant  := Null;
end;

procedure TFormCadastroContasReceberDebito.BtnClienteClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('CLIEA13ID');
  FieldOrigem := 'CLIEA13ID' ;
  DataSetLookup := SQLCliente;
  CriaFormulario(TFormCadastroCliente, 'FormCadastroCliente', False, True, '');
end;

procedure TFormCadastroContasReceberDebito.RetornaTipoDocClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('TPDCICOD');
  FieldOrigem := 'TPDCICOD' ;
  CriaFormulario(TFormCadastroTipoDocumento, 'FormCadastroTipoDocumento', False, True, '');
end;

procedure TFormCadastroContasReceberDebito.RetornaPortadorClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PORTICOD');
  FieldOrigem := 'PORTICOD' ;
  CriaFormulario(TFormCadastroPortador, 'FormCadastroPortador', False, True, '');
end;

procedure TFormCadastroContasReceberDebito.RetornaPlanoContasClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PLCTA15COD');
  FieldOrigem := 'PLCTA15COD';
  TipoPlanoContas := 'C';
  CriaFormulario(TFormTelaConsultaPlanoContas, 'FormTelaConsultaPlanoContas', False, True, 'Contas à Receber');
end;

procedure TFormCadastroContasReceberDebito.Geraroutrolanamentoapartirdodocumentoatual1Click(
  Sender: TObject);
var
 PosicaoInicial : TBookmark;
 i, Rows : integer ;
begin
  inherited;
  try
    Application.CreateForm(TFormTelaDadosReplicacaoContasReceber,FormTelaDadosReplicacaoContasReceber);
    FormTelaDadosReplicacaoContasReceber.ShowModal;
    if FormTelaDadosReplicacaoContasReceber.ModalResult = Mrok then
      begin
        MakeWindow(DBGridLista.SelectedRows.Count,'Replicando Lançamentos...');
        PosicaoInicial := SQLTemplate.GetBookmark;
        if not SQLContasReceber.Active then SQLContasReceber.Open;
        for Rows :=0 to DBGridLista.SelectedRows.Count - 1 do
          begin
            SQLTemplate.GotoBookmark(Pointer(DBGridLista.SelectedRows.Items[Rows]));
            SQLEspelhoNovoLanc.Close ;
            SQLEspelhoNovoLanc.MacroByName('MFiltro').Value := 'CTRCA13ID = "' + SQLTemplateCTRCA13ID.Value + '"' ;
            SQLEspelhoNovoLanc.Open ;

            SQLContasReceber.Append ;
            for i := 0 to SQLEspelhoNovoLanc.FieldCount-1 do
              begin
                if (SQLEspelhoNovoLanc.Fields[i].FieldName <> 'CTRCA13ID') then
                  begin
                    if (SQLEspelhoNovoLanc.Fields[i].FieldName = 'CTRCINROPARC') then
                      SQLContasReceber.FieldByName(SQLEspelhoNovoLanc.Fields[i].FieldName).Value :=  SQLEspelhoNovoLanc.Fields[i].AsInteger + 1
                    else
                      if (SQLEspelhoNovoLanc.Fields[i].FieldName = 'CTRCDEMIS') then
                        SQLContasReceber.FieldByName(SQLEspelhoNovoLanc.Fields[i].FieldName).AsString := FormatDateTime('dd/mm/yyyy',dm.DataBaseSistema)
                      else
                        if (SQLEspelhoNovoLanc.Fields[i].FieldName = 'CTRCDVENC') then
                          SQLContasReceber.FieldByName(SQLEspelhoNovoLanc.Fields[i].FieldName).AsString := FormatDateTime('dd/mm/yyyy',IncMonth(SQLEspelhoNovoLanc.Fields[i].AsDateTime,1))
                        else
                          SQLContasReceber.FieldByName(SQLEspelhoNovoLanc.Fields[i].FieldName).Value := SQLEspelhoNovoLanc.Fields[i].AsVariant;
                  end ;
                Application.ProcessMessages;
              end;
            if FormTelaDadosReplicacaoContasReceber.MemoHist.Lines.Text <> '' then
              SQLContasReceberCTRCA254HIST.AsString := UpperCase(FormTelaDadosReplicacaoContasReceber.MemoHist.Lines.Text);
            if FormTelaDadosReplicacaoContasReceber.EditNroDuplic.Text <> '' then
              SQLContasReceberCTRCA30NRODUPLICBANCO.AsString := UpperCase(FormTelaDadosReplicacaoContasReceber.EditNroDuplic.Text);
            // Dados Fixos
            SQLContasReceber.FieldByName('CTRCDULTREC').AsVariant   := Null ;
            SQLContasReceber.FieldByName('CTRCN2TOTREC').Value      := 0 ;
            SQLContasReceber.FieldByName('CTRCN2TOTJUROREC').Value  := 0 ;
            SQLContasReceber.FieldByName('CTRCN2TOTMULTAREC').Value := 0 ;
            SQLContasReceber.FieldByName('CTRCN2TOTDESCREC').Value  := 0 ;
            SQLContasReceber.FieldByName('CTRCCSTATUS').Value       := 'A' ;
            SQLContasReceber.Post;
            if Rows = 0 then
              SetProgress(Rows + 1)
            else
              SetProgress(Rows);
            Application.ProcessMessages;
          end;
          SQLTemplate.GotoBookmark(PosicaoInicial);
          DestroyWindow;
      end
    else
      Informa('Operação Cancelada!');
  except
    on E:Exception do
      begin
        Informa('Problemas ao replicar lançamentos. ANOTE O ERRO: ' + #13 + E.Message);
        DestroyWindow;
      end;
  end;
end;

procedure TFormCadastroContasReceberDebito.DBEdit7KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaPlanoContas.Click ;
end;

procedure TFormCadastroContasReceberDebito.SQLTemplateNUMEICODChange(Sender: TField);
begin
  inherited;
  SQLTemplateCTRCA5TIPOPADRAO.AsVariant := SQLTemplateTipoPadraoCalcField.AsVariant ;
end;

procedure TFormCadastroContasReceberDebito.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited ;
  DataSet.FieldByName('CTRCN2VLR').Value         := 0 ;
  DataSet.FieldByName('CTRCN2DESCFIN').Value     := 0 ;

  if Dm.SQLConfigCrediarioCFCRN2PERCMULATRAS.AsFloat > 0 then
    DataSet.FieldByName('CTRCN2TXMULTA').Value     := Dm.SQLConfigCrediarioCFCRN2PERCMULATRAS.Value
  else
    DataSet.FieldByName('CTRCN2TXMULTA').Value     := 0 ;

  if Dm.SQLConfigCrediarioCFCRN2PERCJURATRAS.AsFloat > 0 then
    DataSet.FieldByName('CTRCN2TXJURO').Value      := Dm.SQLConfigCrediarioCFCRN2PERCJURATRAS.Value
  else
    DataSet.FieldByName('CTRCN2TXJURO').Value      := 0 ;

  DataSet.FieldByName('CTRCN2TOTREC').Value      := 0 ;
  DataSet.FieldByName('CTRCN2TOTJUROREC').Value  := 0 ;
  DataSet.FieldByName('CTRCN2TOTMULTAREC').Value := 0 ;
  DataSet.FieldByName('CTRCN2TOTDESCREC').Value  := 0 ;
  DataSet.FieldByName('CTRCCSTATUS').Value       := 'A' ;
  DataSet.FieldByName('CTRCDEMIS').Value         := Date ;
  DataSet.FieldByName('CTRCA5TIPOPADRAO').Value  := 'CRD';
  // Tipo de Registro no Contas a Receber -> N = Normal C = Credito D = Debito;
  DataSet.FieldByName('CTRCCTIPOREGISTRO').Value := 'D';

end ;

procedure TFormCadastroContasReceberDebito.BtnEmpresaClick(Sender: TObject);
begin
  inherited;
  FieldLookup := SQLTemplate.FieldByName('EMPRICOD');
  FieldOrigem := 'EMPRICOD';
  CriaFormulario(TFormTelaConsultaEmpresa,'FormTelaConsultaEmpresa',False,True,'');
end;

procedure TFormCadastroContasReceberDebito.SpeedButton1Click(Sender: TObject);
var
Clausula : String;
CampoOrdem : TField;
begin
  inherited;
  Clausula := '';
  if ComboCliente.Value <> '' then
    Clausula := 'CLIEA13ID = "' + ComboCliente.Value + '" ';

  if (ComboConta.Value <> '') and (Clausula <> '') then
    Clausula := Clausula + ' AND PLCTA15COD = "' + ComboConta.Value + '"'
  else
    if (Clausula = '') and (ComboConta.Value <> '') then
      Clausula := 'PLCTA15COD = "' + ComboConta.Value + '"';

  if (ComboTipoDoc.Value <> '') and (Clausula <> '') then
    Clausula := Clausula + ' AND TPDCICOD = ' + ComboTipoDoc.Value
  else
    if (Clausula = '') and  (ComboTipoDoc.Value <> '') then
      Clausula := 'TPDCICOD = ' + ComboTipoDoc.Value;

  if (ComboPortador.Value <> '') and (Clausula <> '') then
    Clausula := Clausula + ' AND  PORTICOD = ' + ComboPortador.Value
  else
    if (Clausula = '') and (ComboPortador.Value <> '') then
      Clausula := 'PORTICOD = ' + ComboPortador.Value;

  EditProcura.Text := '';
  EditEntre.Text   := '';
  EditE.Text       := '';
  CampoOrdem := SQLTemplate.FindField(DM.LocateByDisplayLabel(SQLTemplate,ComboOrder.Text));
  if Clausula <> '' then
    begin
      SQLTemplate.Close;
      if Pos('ORDER BY',TRxQuery(SQLTemplate).SQL.Text) <> 0 Then
        begin
          TRxQuery(SQLTemplate).SQL.Text := Trim(Copy(TRxQuery(SQLTemplate).SQL.Text,1,Pos('ORDER BY',TRxQuery(SQLTemplate).SQL.Text)-1));
        end;
      SQLTemplate.MacroByName('MFiltro').AsString := Clausula;
      SQLTemplate.SQL.Add(' ORDER BY ' + CampoOrdem.FieldName);
      SQLTemplate.Open;
    end
  else
    Informa('Pesquisa incomleta, verifique!');    
end;

procedure TFormCadastroContasReceberDebito.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  ComboCliente.Value  := '';
  ComboConta.Value    := '';
  ComboTipoDoc.Value  := '';
  ComboPortador.Value := '';
end;

procedure TFormCadastroContasReceberDebito.ComboClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if (sender as trxdblookupcombo).IsDropDown then
      if ((sender as trxdblookupcombo).Value = '')
        or ((sender as trxdblookupcombo).Value <>
            (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
          (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

procedure TFormCadastroContasReceberDebito.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  EditValor.Enabled := (SQLTemplate.FieldByName('DUPLA13ID').AsVariant = Null) and (SQLRecebimento.IsEmpty) ;
end;

procedure TFormCadastroContasReceberDebito.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
var
 Posicao : TBookMark;
begin
  if SQLTemplate.FieldByName('CTRCN2TOTREC').AsFloat > 0 then
    begin
     if Pergunta('NAO','Você não pode excluir esta parcela, existem recebimentos referentes à ela, Deseja estornar o último recebimento?') then
       begin
         SQLRecebimento.Last;
         SQLTemplate.DisableControls;
         DM.RegistraExclusao('RECEBIMENTO',TRxQuery(SQLRecebimento));
         DM.SQLTemplate.Close;
         DM.SQLTemplate.SQL.Clear;
         DM.SQLTemplate.SQL.ADD('DELETE FROM RECEBIMENTO WHERE CTRCA13ID = "' + SQLRecebimentoCTRCA13ID.AsString + '"');
         DM.SQLTemplate.SQL.ADD(' AND RECEICOD = ' + SQLRecebimentoRECEICOD.AsString);
         try
           DM.SQLTemplate.ExecSQL;
           AtualizaTotaisCabecalhoContasReceber(SQLRecebimentoCTRCA13ID.AsString);
           DM.SQLTemplate.Close;
         except
           on E:Exception do
             begin
               ShowMessage('Problemas ao estornar parcela, anote o ERRO: ' + E.Message);
               DM.SQLTemplate.Close;
             end;
         end;
         SQLRecebimento.Close;
         SQLRecebimento.Open;
         SQLTemplate.EnableControls;
       end
     else
       begin
         Abort;
         Exit;
       end;
       exit;
    end
  else
    inherited;
end;

procedure TFormCadastroContasReceberDebito.SQLTemplateHTPDICODChange(
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

procedure TFormCadastroContasReceberDebito.BtnHistoricoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('HTPDICOD');
  FieldOrigem := 'HTPDICOD';
  TipoHistoricoPadrao := 'C';
  CriaFormulario(TFormCadastroHistoricoPadrao, 'FormCadastroHistoricoPadrao', False, True, 'Contas à Receber');
end;

procedure TFormCadastroContasReceberDebito.DBEditHistoricoPadraoExit(Sender: TObject);
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

procedure TFormCadastroContasReceberDebito.DBEditHistoricoPadraoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    BtnHistorico.Click;
end;

procedure TFormCadastroContasReceberDebito.RetornaPlanoContasDebitoClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PLCTA15CODDEBITO');
  FieldOrigem := 'PLCTA15COD';
  TipoPlanoContas := 'D';
  CriaFormulario(TFormTelaConsultaPlanoContas, 'FormTelaConsultaPlanoContas', False, True, 'Contas à Receber');
end;

procedure TFormCadastroContasReceberDebito.DBEdit5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaPlanoContasDebito.Click;
end;

procedure TFormCadastroContasReceberDebito.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  DSMasterSys := DSSQLRecebimento;
  Application.CreateForm(TFormTelaConsultaRecebimento,FormTelaConsultaRecebimento);
  FormTelaConsultaRecebimento.ShowModal;
  DSMasterSys := Nil;
end;

procedure TFormCadastroContasReceberDebito.SQLContasReceberBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  SQLContasReceberEMPRICOD.AsInteger := EmpresaCorrente;
  SQLContasReceberTERMICOD.AsInteger := TerminalCorrente;
  SQLContasReceberPENDENTE.AsString  := 'S';
  SQLContasReceberREGISTRO.AsDateTime   := Now;
  if SQLContasReceber.State in [DsInsert] then
    DM.CodigoAutomatico('CONTASRECEBER',DSTemplate,SQLContasReceber,3,0);
end;

procedure TFormCadastroContasReceberDebito.SQLContasReceberPostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
var
  ID : String;
begin
  inherited;
  SQLContasReceberEMPRICOD.AsInteger := EmpresaCorrente;
  SQLContasReceberTERMICOD.AsInteger := TerminalCorrente;
  SQLContasReceberPENDENTE.AsString  := 'S';
  SQLContasReceberREGISTRO.AsDateTime   := Now;
  DataSet.FieldByName('CTRCICOD').AsInteger:=DataSet.FieldByName('CTRCICOD').AsInteger + 1;
  ID:=Format('%.3d',[EmpresaCorrente])+Format('%.3d',[TerminalCorrente])+Format('%.6d',[DataSet.FieldByName('CTRCICOD').asInteger]);
  DataSet.FieldByName('CTRCA13ID').asString:=ID+DM.DigitVerifEAN(ID);
  Action := DaRetry;
end;

procedure TFormCadastroContasReceberDebito.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if DataSetLookup <> nil then
    DataSetLookup := Nil;
end;

procedure TFormCadastroContasReceberDebito.ComboEmpresaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;
  if Key = VK_F2 then
    BtnEmpresa.Click;
end;

procedure TFormCadastroContasReceberDebito.ComboClienteCadKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;
      
  if Key = VK_F2 then
    BtnCliente.Click;
end;

procedure TFormCadastroContasReceberDebito.ComboTipoDocCadKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;
  
  if Key = VK_F2 then
    RetornaTipoDoc.Click ;

end;

procedure TFormCadastroContasReceberDebito.ComboPortadorCadKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;
  
  if Key = VK_F2 then
    RetornaPortador.Click ;

end;

end.
