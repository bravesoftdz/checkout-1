unit CadastroContasReceber;

interface

uses
  Variants, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls, ToolEdit,
  VarSYS, FormResources, RXDBCtrl, DBActns, ActnList, ImgList,
  ToolWin, ActnMan, ActnCtrls, ActnMenus, EDBNum, RxLookup, RxDBComb;

type
  TFormCadastroContasReceber = class(TFormCadastroTEMPLATE)
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
    SQLTemplateCTRCA30NRODUPLICBANCO: TStringField;
    GroupHistRecto: TGroupBox;
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
    Label4: TLabel;
    DBEdit4: TDBDateEdit;
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
    SQLTemplateHistoricoPadraoCalcField: TStringField;
    SQLTemplatePLCTA15CODDEBITO: TStringField;
    GroupPlanoContas: TGroupBox;
    PageControlPlanoContas: TPageControl;
    TabCredito: TTabSheet;
    TabDebito: TTabSheet;
    DBEdit7: TDBEdit;
    RetornaPlanoContas: TSpeedButton;
    DBEdit8: TDBEdit;
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
    SQLRecebimentoRECEDDATAMOV: TDateTimeField;
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
    SQLAvalistaAVALA60CIDRES: TStringField;
    Label15: TLabel;
    EvDBNumEdit1: TEvDBNumEdit;
    SQLTemplateCTRCCTIPOREGISTRO: TStringField;
    SQLEspelhoNovoLancAVALA13ID: TStringField;
    SQLEspelhoNovoLancCTRCCTIPOREGISTRO: TStringField;
    SQLEspelhoNovoLancDUPLA13ID: TStringField;
    SQLContasReceberAVALA13ID: TStringField;
    SQLContasReceberCTRCCTIPOREGISTRO: TStringField;
    PanelHistPadrao: TPanel;
    Label11: TLabel;
    Label13: TLabel;
    DBEditHistoricoPadrao: TDBEdit;
    BtnHistorico: TSpeedButton;
    MemoHistorico: TDBMemo;
    ComboAvalista: TRxDBLookupCombo;
    Label52: TLabel;
    BtnAvalista: TSpeedButton;
    SQLRecebimentoCTRCA13IDCREDITO: TStringField;
    SQLRecebimentoCLIEA13ID: TStringField;
    SQLTemplateCTRCCTEMREGRECEBER: TStringField;
    SQLTemplateCONTA13ID: TStringField;
    SQLTemplateCTRCA13CTRCAIDCHQ: TStringField;
    SQLTemplateCTRCCEMITIDOBOLETO: TStringField;
    DBEdit1: TDBEdit;
    Panel7: TPanel;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    GerarMultiplosLanctos: TMenuItem;
    Label8: TLabel;
    ComboPortadorCad: TRxDBLookupCombo;
    RetornaPortador: TSpeedButton;
    RetornaTipoDoc: TSpeedButton;
    ComboTipoDocCad: TRxDBLookupCombo;
    Label7: TLabel;
    Label19: TLabel;
    ComboCompetenciaMes: TRxDBComboBox;
    ComboAno: TRxDBComboBox;
    SQLTemplateCTRCA2MESCOMP: TStringField;
    SQLTemplateCTRCA4ANOCOMP: TStringField;
    DBEdit9: TDBEdit;
    DBEdit11: TDBEdit;
    MostrarLancSemPlanoContas: TMenuItem;
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
    procedure ComboAvalistaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnAvalistaClick(Sender: TObject);
    procedure ComboTipoDocCadKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboPortadorCadKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GerarMultiplosLanctosClick(Sender: TObject);
    procedure MostrarLancSemPlanoContasClick(Sender: TObject);
  private
    Replicando : Boolean;
    function Estorna: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroContasReceber: TFormCadastroContasReceber;

implementation

uses  CadastroCliente, DataModulo, CadastroTipoDocumento,
  CadastroPlanodeContas, CadastroPortador, TelaConsultaNumerario,
  TelaConsultaEmpresa, TelaConsultaPlanoContas, UnitLibrary,
  CadastroHistoricoPadrao, TelaConsultaRecebimento, WaitWindow,
  TelaDadosReplicacaoContasReceber, CadastroAvalista, DataModuloTemplate,
  TelaAssistenteLancamentoContasReceber;

{$R *.DFM}

procedure TFormCadastroContasReceber.FormCreate(Sender: TObject);
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

procedure TFormCadastroContasReceber.SQLTemplateCalcFields(
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

procedure TFormCadastroContasReceber.BtnClienteClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('CLIEA13ID');
  FieldOrigem := 'CLIEA13ID' ;
  DataSetLookup := SQLCliente;
  CriaFormulario(TFormCadastroCliente, 'FormCadastroCliente', False, True, '');
end;

procedure TFormCadastroContasReceber.RetornaTipoDocClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('TPDCICOD');
  FieldOrigem := 'TPDCICOD' ;
  CriaFormulario(TFormCadastroTipoDocumento, 'FormCadastroTipoDocumento', False, True, '');
end;

procedure TFormCadastroContasReceber.RetornaPortadorClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PORTICOD');
  FieldOrigem := 'PORTICOD' ;
  CriaFormulario(TFormCadastroPortador, 'FormCadastroPortador', False, True, '');
end;

procedure TFormCadastroContasReceber.RetornaPlanoContasClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PLCTA15COD');
  FieldOrigem := 'PLCTA15COD';
  TipoPlanoContas := 'C';
  CriaFormulario(TFormTelaConsultaPlanoContas, 'FormTelaConsultaPlanoContas', False, True, 'Contas à Receber');
end;

procedure TFormCadastroContasReceber.Geraroutrolanamentoapartirdodocumentoatual1Click(
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
                        SQLContasReceber.FieldByName(SQLEspelhoNovoLanc.Fields[i].FieldName).AsString := FormatDateTime('dd/mm/yyyy',Now)
                      else
                        if (SQLEspelhoNovoLanc.Fields[i].FieldName = 'CTRCDVENC') then
                          SQLContasReceber.FieldByName(SQLEspelhoNovoLanc.Fields[i].FieldName).AsString := FormatDateTime('dd/mm/yyyy',IncMonth(SQLEspelhoNovoLanc.Fields[i].AsDateTime,1))
                        else
                          SQLContasReceber.FieldByName(SQLEspelhoNovoLanc.Fields[i].FieldName).Value := SQLEspelhoNovoLanc.Fields[i].AsVariant;
                  end;
                Application.ProcessMessages;
              end;

            if FormTelaDadosReplicacaoContasReceber.MemoHist.Lines.Text <> '' then
              SQLContasReceberCTRCA254HIST.AsString := UpperCase(FormTelaDadosReplicacaoContasReceber.MemoHist.Lines.Text);
              
            if FormTelaDadosReplicacaoContasReceber.EditNroDuplic.Text <> '' then
              SQLContasReceberCTRCA30NRODUPLICBANCO.AsString := UpperCase(FormTelaDadosReplicacaoContasReceber.EditNroDuplic.Text);
            // Dados Fixos
            SQLContasReceber.FieldByName('CTRCDULTREC').AsVariant   := Null;
            SQLContasReceber.FieldByName('CTRCN2TOTREC').Value      := 0;
            SQLContasReceber.FieldByName('CTRCN2TOTJUROREC').Value  := 0;
            SQLContasReceber.FieldByName('CTRCN2TOTMULTAREC').Value := 0;
            SQLContasReceber.FieldByName('CTRCN2TOTDESCREC').Value  := 0;
            SQLContasReceber.FieldByName('CTRCCSTATUS').Value       := 'A';
            SQLContasReceber.FieldByName('CTRCCTIPOREGISTRO').Value := 'N';
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

procedure TFormCadastroContasReceber.DBEdit7KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaPlanoContas.Click ;
end;

procedure TFormCadastroContasReceber.SQLTemplateNUMEICODChange(Sender: TField);
begin
  inherited;
  SQLTemplateCTRCA5TIPOPADRAO.AsVariant := SQLTemplateTipoPadraoCalcField.AsVariant ;
end;

procedure TFormCadastroContasReceber.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited ;
  DataSet.FieldByName('CTRCCEMITIDOBOLETO').Value  := 'N' ;
  DataSet.FieldByName('CTRCN2VLR').Value           := 0 ;
  DataSet.FieldByName('CTRCN2DESCFIN').Value       := 0 ;

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
  DataSet.FieldByName('CTRCDEMIS').Value         := DM.DataBaseSistema ;
  DataSet.FieldByName('CTRCA5TIPOPADRAO').Value  := 'CRD';
  // Tipo de Registro no Contas a Receber -> N = Normal C = Credito D = Debito;
  DataSet.FieldByName('CTRCCTIPOREGISTRO').Value := 'N';
  SQLTemplateCTRCA4ANOCOMP.Value    := FormatDateTime('YYYY',DM.DataBaseSistema);
end ;

procedure TFormCadastroContasReceber.BtnEmpresaClick(Sender: TObject);
begin
  inherited;
  FieldLookup := SQLTemplate.FieldByName('EMPRICOD');
  FieldOrigem := 'EMPRICOD';
  CriaFormulario(TFormTelaConsultaEmpresa,'FormTelaConsultaEmpresa',False,True,'');
end;

procedure TFormCadastroContasReceber.SpeedButton1Click(Sender: TObject);
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

procedure TFormCadastroContasReceber.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  ComboCliente.Value  := '';
  ComboConta.Value    := '';
  ComboTipoDoc.Value  := '';
  ComboPortador.Value := '';
end;

procedure TFormCadastroContasReceber.ComboClienteKeyDown(Sender: TObject;
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

procedure TFormCadastroContasReceber.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
//  EditValor.Enabled := (SQLTemplate.FieldByName('DUPLA13ID').AsVariant = Null) and (SQLRecebimento.IsEmpty) ;
end;

procedure TFormCadastroContasReceber.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
  if SQLTemplateCTRCN2TOTREC.Value > 0 then
    begin
      Informa('Você não pode excluir esta parcela, existem recebimentos referentes à ela.' + #13 +
              'Se necessário estorne o(s) Recebimento(s) e após efetue a Exclusão.');
      Abort;
    end;
  //DM.RegistraExclusao('RECEBIMENTO',TRxQuery(SQLRecebimento));
  try
    AtualizaTotaisCabecalhoContasReceber(SQLRecebimentoCTRCA13ID.AsString);
  except
    on E:Exception do
      Informa('Problemas ao estornar parcela, anote o ERRO: ' + #13 + E.Message);
  end;
  inherited;
end;

procedure TFormCadastroContasReceber.SQLTemplateHTPDICODChange(
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

procedure TFormCadastroContasReceber.BtnHistoricoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('HTPDICOD');
  FieldOrigem := 'HTPDICOD';
  TipoHistoricoPadrao := 'C';
  CriaFormulario(TFormCadastroHistoricoPadrao, 'FormCadastroHistoricoPadrao', False, True, 'Contas à Receber');
end;

procedure TFormCadastroContasReceber.DBEditHistoricoPadraoExit(Sender: TObject);
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

procedure TFormCadastroContasReceber.DBEditHistoricoPadraoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    BtnHistorico.Click;
end;

procedure TFormCadastroContasReceber.RetornaPlanoContasDebitoClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PLCTA15CODDEBITO');
  FieldOrigem := 'PLCTA15COD';
  TipoPlanoContas := 'D';
  CriaFormulario(TFormTelaConsultaPlanoContas, 'FormTelaConsultaPlanoContas', False, True, 'Contas à Receber');
end;

procedure TFormCadastroContasReceber.DBEdit5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaPlanoContasDebito.Click;
end;

procedure TFormCadastroContasReceber.DBGrid1DblClick(Sender: TObject);
var
  RetornoUsuario : TInfoRetornoUser;
begin
  inherited;
  if SQLRecebimento.IsEmpty then
    Exit;

  if not UsuarioMaster then
    begin
      if AutenticaUsuario(UsuarioAtualNome,'USUACUSERMASTER',RetornoUsuario) = 'S' then
        begin
          DSMasterSys := DSSQLRecebimento;
          Application.CreateForm(TFormTelaConsultaRecebimento,FormTelaConsultaRecebimento);
          FormTelaConsultaRecebimento.ShowModal;
          DSMasterSys := Nil;
          SQLRecebimento.Close;
          SQLRecebimento.Open;
        end
      else
        Informa('Você não tem permissão para acessar essa tela, somente um usuário master do sistema terá acesso!');
    end
  else
    begin
      DSMasterSys := DSSQLRecebimento;
      Application.CreateForm(TFormTelaConsultaRecebimento,FormTelaConsultaRecebimento);
      FormTelaConsultaRecebimento.ShowModal;
      DSMasterSys := Nil;
      SQLRecebimento.Close;
      SQLRecebimento.Open;
    end;
end;

procedure TFormCadastroContasReceber.SQLContasReceberBeforePost(
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

procedure TFormCadastroContasReceber.SQLContasReceberPostError(
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

procedure TFormCadastroContasReceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if DataSetLookup <> nil then
    DataSetLookup := Nil;
end;

procedure TFormCadastroContasReceber.ComboEmpresaKeyDown(Sender: TObject;
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

procedure TFormCadastroContasReceber.ComboClienteCadKeyDown(
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

procedure TFormCadastroContasReceber.ComboAvalistaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

  if Key = VK_F2 then
    BtnAvalista.Click;

end;

procedure TFormCadastroContasReceber.BtnAvalistaClick(Sender: TObject);
begin
  inherited;
  FieldLookUp   := SQLTemplate.FindField('AVALA13ID');
  FieldOrigem   := 'AVALA13ID';
  DataSetLookup := SQLAvalista;
  CriaFormulario(TFormCadastroAvalista,'FormCadastroAvalista',False,True,' NF NRO.: ' + DBEdit3.Text);

end;

procedure TFormCadastroContasReceber.ComboTipoDocCadKeyDown(
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

procedure TFormCadastroContasReceber.ComboPortadorCadKeyDown(
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

procedure TFormCadastroContasReceber.FormActivate(Sender: TObject);
begin
  inherited;
  SQLRecebimento.Close;
  SQLRecebimento.Open;
end;

procedure TFormCadastroContasReceber.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not SQLRecebimento.IsEmpty then
    if Column.Field = Nil then
      begin
        DBGrid1.Canvas.Brush.Color := clBtnFace;
        DBGrid1.Canvas.Font.Color  := clBtnText;
        DrawFrameControl(DBGrid1.Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH);
        DBGrid1.Canvas.TextOut(Rect.Left + 5, Rect.Top + 1, 'Estornar...');
      end;
end;

function TFormCadastroContasReceber.Estorna: Boolean;
Var StID, StValor: String;

   procedure FimEstorno;
   begin
      if Result then
        try
          StID := SQLRecebimento.Bookmark;
          SQLTemplate.Edit;
          SQLTemplateCTRCCSTATUS.AsString := 'A';
          SQLTemplate.Post;
          SQLRecebimento.Close;
          SQLRecebimento.Open;
          SQLRecebimento.Bookmark := StID;
          SQLRecebimento.Delete;
        except
        end;
      SQLCount.RequestLive := False;
   end;

begin
   try
     Result := False;
     //Verifica e Estorna Recebimentos feitos com BANCO;
     SQLCount.Close;
     SQLCount.RequestLive := True;
     SQLCount.SQL.Text := 'select * from MOVIMENTOBANCO where CTRCA13ID = "' + SQLTemplateCTRCA13ID.AsString + '" and ' +
                          'MVBCDLANC = "' + FormatDateTime('mm/dd/yyyy', SQLRecebimentoRECEDRECTO.AsDateTime) + '"'; // and ' +
                          //'(MVBCCSTATUS <> "E" or MVBCCSTATUS is Null) ';
     SQLCount.Open;

     if SQLCount.RecordCount > 0 then
       begin
         if DM.SQLConfigFinanceiroOPBCICODESTORNOCRD.IsNull then
           InformaErro('É necessário Configurar uma Operação Bancária de Estorno "Crédito" para o Contas A Receber no Configurador', True, Nil);

         if not Pergunta('Sim', 'Deseja Criar um Lançamento de Crédito no "MOVIMENTO BANCÁRIO" Valor de R$ ' +
                     FormatFloat('#,##0.00', SQLCount.FieldByName('MVBCN2VLRCRED').AsFloat) + ' referente o Estorno do Recebimento de ID : "' + SQLRecebimentoCTRCA13ID.AsString + '"?' + #13 +
                     'Clique "SIM" para Continuar e "NÃO" para Cancelar o Estorno.') then
            Abort;

         LancaMovimentacaoBanco(SQLTemplateEMPRICOD.AsInteger, SQLCount.FieldByName('CTCRICOD').AsInteger,
                              DM.SQLConfigFinanceiroOPBCICODESTORNODEB.AsInteger, 0,
                              SQLCount.FieldByName('MVBCN2VLRCRED').AsFloat, SQLCount.FieldByName('MVBCDCHQBOMPARA').AsDateTime,
                              SQLCount.FieldByName('MVBCDCHQBAIXA').AsDateTime, Date, 'Estorno de Crédito Referente Duplicata: ' + SQLTemplateCTRCINROPARC.AsString + '-' + SQLRecebimentoRECEICOD.AsString,
                              '', SQLTemplateCTRCA13ID.AsString, '', SQLCount.FieldByName('CQEMA13ID').AsString,
                              SQLCount.FieldByName('PLCTA15COD').AsString);

         SQLCount.Edit;
         SQLCount.FieldByName('MVBCCSTATUS').AsString := 'E';
         SQLCount.Post;

         SQLRecebimento.Delete;
         AtualizaTotaisCabecalhoContasReceber(SQLTemplateCTRCA13ID.AsString);

         Result := True;

         FimEstorno;
         Exit;
       end;
     //Fim Estorno Lançamentos Banco

     //Verifica e Estorna Recebimentos feitos com CAIXA;
     SQLCount.Close;
     SQLCount.SQL.Text := 'select * from TESOURARIA where CTRCA13ID = "' + SQLTemplateCTRCA13ID.AsString + '" and ' +
                          'TESODMOV = "' + FormatDateTime('mm/dd/yyyy', SQLRecebimentoRECEDRECTO.AsDateTime) + '" and ' +
                          '(TESOCSTATUS <> "E" or TESOCSTATUS is Null) ';
     SQLCount.Open;

     if SQLCount.RecordCount > 0 then
       begin
         if DM.SQLConfigFinanceiroOPTEICODESTORNOCRD.IsNull then
           InformaErro('É necessário Configurar uma Operação Tesouraria para Estorno "Crédito" para o Contas A Receber no Configurador', True, Nil);

         if not Pergunta('Sim', 'Deseja Criar um Lançamento de Crédito na "TESOURARIA/CAIXA" no valor de R$ ' +
                         FormatFloat('#,##0.00', SQLCount.FieldByName('TESON2VLRCREDITO').AsFloat) + ' referennte o Estorno do Recebimento de ID : "' + SQLRecebimentoCTRCA13ID.AsString + '"?' + #13 +
                         'Clique "SIM" para Continuar e "NÃO" para Cancelar o Estorno.') then
            Abort;

         LancaMovimentacaoTesouraria(SQLTemplateEMPRICOD.AsInteger,
                                     SQLTemplateTERMICOD.AsInteger,
                                     SQLCount.FieldByName('NUMEICOD').AsInteger,
                                     DM.SQLConfigFinanceiroOPTEICODESTORNODEB.AsInteger,
                                     SQLCount.FieldByName('TESON2VLRCREDITO').AsFloat,
                                     'Estorno de Crédito Referente Duplicata: '+ SQLTemplateCTRCINROPARC.AsString + '-' + SQLRecebimentoRECEICOD.AsString,
                                     '',
                                     SQLTemplateCTRCA13ID.AsString,
                                     SQLTemplate.FieldByName('CQEMA13ID').AsString,
                                     '',
                                     Date,
                                     SQLTemplateCTRCA13ID.AsString,'');

         SQLCount.Edit;
         SQLCount.FieldByName('TESOCSTATUS').AsString := 'E';
         SQLCount.Post;

         SQLRecebimento.Delete;
         AtualizaTotaisCabecalhoContasReceber(SQLTemplateCTRCA13ID.AsString);

         Result := True;

         FimEstorno;
         Exit;
       end;
      //Fim Estorno Recebimentos feitos com CAIXA;

      //Verifica e Estorna Recebimentos feitos com CREDITOS;
     if not SQLRecebimentoCTRCA13IDCREDITO.IsNull then
       begin
         if not Pergunta('Sim', 'Deseja Estornar a Baixa do Lançamento de Crédito do Cliente "' + SQLTemplateClienteCalcField.AsString + '" ' +
                         'no valor de R$ ' + FormatFloat('#,##0.00', SQLRecebimentoRECEN2VLRRECTO.AsFloat) +
                         ' referennte o Estorno do Recebimento de ID : "' + SQLRecebimentoCTRCA13ID.AsString + '"?' + #13 +
                         'Clique "SIM" para Continuar e "NÃO" para Cancelar o Estorno.') then
            Abort;

        try
          SQLCount.Close;
          SQLCount.SQL.Text := 'delete from RECEBIMENTO where CTRCA13ID = (select CTRCA13ID from RECEBIMENTO where CTRCA13IDCREDITO = "' + SQLRecebimentoCTRCA13IDCREDITO.AsString + '" and ' +
                               ' RECEN2VLRRECTO = ' + SQLRecebimentoRECEN2VLRRECTO.AsString + ') and ' +
                               'CLIEA13ID = "' + SQLTemplateCLIEA13ID.AsString + '"' ;

          SQLCount.ExecSQL;

          SQLRecebimento.Delete;
          AtualizaTotaisCabecalhoContasReceber(SQLTemplateCTRCA13ID.AsString);

          Result := True;

          FimEstorno;
          Exit;
        except
          on E : Exception do
          begin
            InformaErro('Ocorreu erros ao tentar estornar o Lançamento de Baixa dos Créditos do Cliente.' + #13 +
                        E.Message, True, Nil);
            Result := False;
          end;
        end;

        try
          SQLCount.Close;
          SQLCount.SQL.Text := 'delete from RECEBIMENTO where CTRCA13ID = "' + SQLRecebimentoCTRCA13IDCREDITO.AsString  + '" and ' +
                               ' RECEN2VLRRECTO = ' + SQLRecebimentoRECEN2VLRRECTO.AsString + ' and ' +
                               'CLIEA13ID = "' + SQLTemplateCLIEA13ID.AsString + '" and ' +
                               'RECEN2VLRRECTO = ' + SQLRecebimentoRECEN2VLRRECTO.AsString;
          SQLCount.ExecSQL;

          AtualizaTotaisCabecalhoContasReceber(SQLTemplateCTRCA13ID.AsString);
          AtualizaTotaisCabecalhoContasReceber(SQLRecebimentoCTRCA13IDCREDITO.AsString);

          Result := True;

          FimEstorno;
          Exit;
        except
          on E : Exception do
          begin
            InformaErro('Ocorreu erros ao tentar Atualizar o Lançamento de Créditos do Cliente.' + #13 +
                        E.Message, True, Nil);
            Result := False;
          end;
        end;
       end;
      //Fim Estorno Recebimentos feitos com CREDITOS;

      //Verifica e Estorna Recebimentos feitos com CHEQUES;
      SQLCount.Close;
      SQLCount.SQL.Text := 'select * from CONTASRECEBER where CTRCA13CTRCAIDCHQ = "' + SQLTemplateCTRCA13ID.AsString + '"';
      SQLCount.Open;

      if not SQLCount.IsEmpty then
        begin
          StID := '';
          SQLCount.First;
          while not SQLCount.Eof do
            begin
              StID := StID + SQLCount.FieldByName('CTRCA13ID').AsString + ' CHQ :' + SQLCount.FieldByName('CTRCA15NROCHQ').AsString + ', ' + #13;
              SQLCount.Next;
            end;
          StID[Length(StID)] := ' ';
          if not Pergunta('Sim', 'Os Moviventos de Cheques abaixo seram desvinculados do Recebimento Atual:' + #13 + StID + #13 +
                          'Deseja Continuar?') then
             Abort;

          SQLRecebimento.Delete;
          AtualizaTotaisCabecalhoContasReceber(SQLTemplateCTRCA13ID.AsString);

          SQLCount.First;
          while not SQLCount.Eof do
            begin
              SQLCount.Edit;
              SQLCount.FieldByName('CTRCA13CTRCAIDCHQ').Clear;
              SQLCount.Post;
              SQLCount.Next;
            end;

        end;
      //Fim Estorno Recebimentos feitos com CHEQUES;

      Result := True;
      FimEstorno;
      Exit;
      except
      on E : Exception do
        begin
          Informa(E.Message);
          SQLCount.RequestLive := False;
          Result := False;
          FimEstorno;
        end;
   end;
end;

procedure TFormCadastroContasReceber.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  if (Column.Field = Nil) and not SQLRecebimento.IsEmpty then
    if Pergunta('Sim', 'Deseja Realmente ESTORNAR este Recebimento.') then
      if not Estorna then
         InformaErro('Não foi Possivel Estornar o Lançamento Atual.', True, Nil);
end;

procedure TFormCadastroContasReceber.DBGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if DBGrid1.MouseCoord(X, Y).X = 7 then
    DBGrid1.Cursor := crHandPoint
  else
    DBGrid1.Cursor := crDefault;
end;

procedure TFormCadastroContasReceber.GerarMultiplosLanctosClick(
  Sender: TObject);
var
 I, ContadorDocumento : Integer;
 DocumentoSTR : String;
begin
  inherited;
  Application.CreateForm(TFormTelaAssistenteLancamentoContasReceber,FormTelaAssistenteLancamentoContasReceber);
  FormTelaAssistenteLancamentoContasReceber.edtEmissao.Date := Date;
  FormTelaAssistenteLancamentoContasReceber.ShowModal;
  if FormTelaAssistenteLancamentoContasReceber.ModalResult = MrOk then
    begin
      if not FormTelaAssistenteLancamentoContasReceber.RxTable.IsEmpty then
        begin
          SQLTemplate.DisableControls;
          FormTelaAssistenteLancamentoContasReceber.RxTable.First;
          try
            ContadorDocumento := StrToInt(FormTelaAssistenteLancamentoContasReceber.edtDocum.text);
          except
            Application.ProcessMessages;
            ContadorDocumento := 0;
          end;
          if ContadorDocumento > 0 then
            DocumentoSTR   := IntToStr(ContadorDocumento);

          I := 0;
          while not FormTelaAssistenteLancamentoContasReceber.RxTable.Eof do
            begin
              SQLTemplate.Append;
              if ContadorDocumento > 0 then
                SQLTemplateCTRCA30NRODUPLICBANCO.AsString  := DocumentoSTR;
              SQLTemplateCTRCA254HIST.AsString             := FormTelaAssistenteLancamentoContasReceber.RxTableDESCR.AsString;
              SQLTemplateCTRCDEMIS.AsDateTime              := FormTelaAssistenteLancamentoContasReceber.RxTableEMI.AsDateTime;
              SQLTemplateCTRCDVENC.AsDateTime              := FormTelaAssistenteLancamentoContasReceber.RxTableVENCI.AsDateTime;
              SQLTemplateCTRCN2VLR.AsFloat                 := FormTelaAssistenteLancamentoContasReceber.RxTableVALOR.AsFloat;
              SQLTemplateEMPRICOD.AsVariant                := FormTelaAssistenteLancamentoContasReceber.ComboEmpresa.KeyValue;
              SQLTemplateCLIEA13ID.AsVariant               := FormTelaAssistenteLancamentoContasReceber.ComboCliente.Value;
              SQLTemplatePLCTA15COD.AsString               := FormTelaAssistenteLancamentoContasReceber.ComboContaCredito.Value;
              SQLTemplatePLCTA15CODDEBITO.AsString         := FormTelaAssistenteLancamentoContasReceber.ComboContaDebito.Value;
              SQLTemplatePORTICOD.AsVariant                := FormTelaAssistenteLancamentoContasReceber.ComboPortador.KeyValue;
              SQLTemplateTPDCICOD.AsVariant                := FormTelaAssistenteLancamentoContasReceber.ComboTipoDoc.KeyValue;
              SQLTemplateHTPDICOD.AsVariant                := FormTelaAssistenteLancamentoContasReceber.ComboHistorico.KeyValue;
              SQLTemplateCTRCA254HIST.Value                := FormTelaAssistenteLancamentoContasReceber.edtDescricao.Text;
              SQLTemplateCTRCCSTATUS.AsString              := 'A';
              SQLTemplateCTRCA5TIPOPADRAO.AsString         := 'CRD';
              if SQLTemplateCTRCDEMIS.AsDateTime = SQLTemplateCTRCDVENC.AsDateTime then
                begin
                  SQLTemplateCTRCINROPARC.AsInteger          := I;
                  I := I-1;
                end
              else
                begin
                  SQLTemplateCTRCINROPARC.AsInteger          := I+1;
                end;
              SQLTemplate.Post;
              FormTelaAssistenteLancamentoContasReceber.RxTable.Next;
              if ContadorDocumento > 0 then
                begin
                  inc(ContadorDocumento);
                  DocumentoSTR := IntToStr(ContadorDocumento);
                end;
              inc(I);
            end;
          SQLTemplate.Close;
          SQLTemplate.MacroByName('MFiltro').AsString := 'CLIEA13ID = "' + FormTelaAssistenteLancamentoContasReceber.ComboCliente.Value + '"';
          SQLTemplate.Open;
          PagePrincipal.ActivePage := TabSheetConsulta;
          SQLTemplate.EnableControls;
          FormTelaAssistenteLancamentoContasReceber.RxTable.Close;
          FormTelaAssistenteLancamentoContasReceber.RxTable.Free;
          FormTelaAssistenteLancamentoContasReceber.Close;
          FormTelaAssistenteLancamentoContasReceber.Free;
        end;
    end;
end;

procedure TFormCadastroContasReceber.MostrarLancSemPlanoContasClick(Sender: TObject);
begin
  inherited;
  SQLTemplate.Close;
  SQLTemplate.MacroByName('MFiltro').Value := 'PLCTA15COD is Null'; 
  SQLTemplate.Open;
end;

end.
