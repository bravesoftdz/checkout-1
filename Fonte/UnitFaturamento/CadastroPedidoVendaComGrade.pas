unit CadastroPedidoVendaComGrade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, EDBNum, RxDBComb, ToolEdit, RXDBCtrl, VarSys, FormResources,
  CurrEdit, RxLookup, UCrpe32, ValEdit, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroPedidoVendaComGrade = class(TFormCadastroTEMPLATE)
    SQLTemplatePDVDA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplatePDVDICOD: TIntegerField;
    SQLTemplateVENDICOD: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateTRANICOD: TIntegerField;
    SQLTemplatePLRCICOD: TIntegerField;
    SQLTemplatePDVDDEMISSAO: TDateTimeField;
    SQLTemplatePDVDN2VLRFRETE: TBCDField;
    SQLTemplatePDVDA30NROPEDCOMP: TStringField;
    SQLTemplatePDVDA30COMPRADOR: TStringField;
    SQLTemplatePDVDCTIPO: TStringField;
    SQLTemplatePDVDCSTATUS: TStringField;
    SQLTemplatePDVDN2VLRDESC: TBCDField;
    SQLTemplatePDVDN2TOTPROD: TBCDField;
    SQLTemplatePDVDN2TOTPED: TBCDField;
    SQLTemplatePDVDTOBS: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit3: TEvDBNumEdit;
    DBEdit4: TEvDBNumEdit;
    DBEdit5: TEvDBNumEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    DBEdit7: TEvDBNumEdit;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit13: TDBMemo;
    SQLTemplateTransportadoraLookUp: TStringField;
    DBEdit14: TDBEdit;
    SQLTemplateVendedorLookUp: TStringField;
    SQLTemplatePlanoRecebimentoLookUp: TStringField;
    SQLTemplateClienteLookUp: TStringField;
    BtnVendedor: TSpeedButton;
    BtnTransportadora: TSpeedButton;
    MnCancelarPedidodeVenda: TMenuItem;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    BtnCliente: TSpeedButton;
    DBEdit17: TDBEdit;
    Label16: TLabel;
    DBEditCGCCPF: TDBEdit;
    Label17: TLabel;
    DBEdit19: TDBEdit;
    Label18: TLabel;
    DBEdit20: TDBEdit;
    Label19: TLabel;
    DBEdit21: TDBEdit;
    Label20: TLabel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    DBEditIERG: TDBEdit;
    SQLTemplateClienteEnderecoLookUp: TStringField;
    SQLTemplateClienteEstadoLookUp: TStringField;
    SQLTemplateClienteBairroLookUp: TStringField;
    SQLTemplateClienteCEPLookUp: TStringField;
    SQLTemplateClienteCidadeLookUp: TStringField;
    Label23: TLabel;
    DBEdit24: TDBEdit;
    SQLTemplateClienteFoneLookUp: TStringField;
    EtiquetasdeCdigodeBarras1: TMenuItem;
    Label24: TLabel;
    EvDBNumEdit1: TEvDBNumEdit;
    SQLTemplatePDVDN2VLRDESCPROM: TBCDField;
    Label25: TLabel;
    DBEdit25: TDBEdit;
    SQLTemplatePDVDINROTALAO: TIntegerField;
    Button4: TRxSpeedButton;
    Button5: TRxSpeedButton;
    TabSheetFinanceiro: TTabSheet;
    Panel4: TPanel;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    BtnPlanoRecebimento: TSpeedButton;
    DBEdit16: TDBEdit;
    SQLPlano: TRxQuery;
    SQLPlanoParcela: TRxQuery;
    SQLNumerario: TRxQuery;
    SQLParcelasPrazoVendaTemp: TRxQuery;
    SQLParcelasPrazoVendaTempTERMICOD: TIntegerField;
    SQLParcelasPrazoVendaTempDATAVENCTO: TDateTimeField;
    SQLParcelasPrazoVendaTempNROPARCELA: TIntegerField;
    SQLParcelasPrazoVendaTempVALORVENCTO: TBCDField;
    SQLParcelasPrazoVendaTempNUMEICOD: TIntegerField;
    SQLParcelasPrazoVendaTempNumerarioLookup: TStringField;
    SQLParcelasPrazoVendaTempTIPOPADR: TStringField;
    DSSQLParcelasPrazoVendaTemp: TDataSource;
    SQLNumerarioPrazo: TRxQuery;
    DSSQLNumerarioPrazo: TDataSource;
    PanelFinanceiro: TPanel;
    Panel7: TPanel;
    Panel10: TPanel;
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
    SQLContasReceberCTRCN2TOTMULTACOBR: TBCDField;
    SQLContasReceberBANCA5CODCHQ: TStringField;
    SQLContasReceberCTRCA10AGENCIACHQ: TStringField;
    SQLContasReceberCTRCA15CONTACHQ: TStringField;
    SQLContasReceberCTRCA15NROCHQ: TStringField;
    SQLContasReceberCTRCA60TITULARCHQ: TStringField;
    SQLContasReceberCTRCA20CGCCPFCHQ: TStringField;
    SQLContasReceberCTRCDDEPOSCHQ: TDateTimeField;
    SQLContasReceberALINICOD: TIntegerField;
    DSSQLContasReceber: TDataSource;
    SQLRecebimento: TRxQuery;
    SQLRecebimentoCTRCA13ID: TStringField;
    SQLRecebimentoRECEICOD: TIntegerField;
    SQLRecebimentoRECEDRECTO: TDateTimeField;
    SQLRecebimentoRECEN2VLRRECTO: TBCDField;
    SQLRecebimentoRECEN2VLRJURO: TBCDField;
    SQLRecebimentoRECEN2VLRMULTA: TBCDField;
    SQLRecebimentoRECEN2DESC: TBCDField;
    SQLRecebimentoEMPRICODREC: TIntegerField;
    SQLRecebimentoTERMICODREC: TIntegerField;
    SQLRecebimentoCLIEA13ID: TStringField;
    SQLRecebimentoPENDENTE: TStringField;
    SQLRecebimentoREGISTRO: TDateTimeField;
    SQLRecebimentoRECEN2MULTACOBR: TBCDField;
    SQLContasReceberPDVDA13ID: TStringField;
    SQLTemplateClienteTabelaPrecoLookUp: TIntegerField;
    ImprimirPedidodeVenda1: TMenuItem;
    SQLTemplatePDVDCTIPOFRETE: TStringField;
    SQLTemplatePDVDDENTREGA: TDateTimeField;
    Label26: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    Label27: TLabel;
    DBDateEdit1: TDBDateEdit;
    OrdemdeServio1: TMenuItem;
    SQLPedidoItens: TRxQuery;
    SQLTemplateEmpresaLookUp: TStringField;
    Label51: TLabel;
    DBEditEmpresa: TDBEdit;
    BtnEmpresa: TSpeedButton;
    DBEdit41: TDBEdit;
    SQLTemplatePlanoClienteLookUp: TIntegerField;
    SQLTemplateVendedorClienteLookUp: TIntegerField;
    MnCalcularFinanceiro: TMenuItem;
    SQLTransportadora: TTable;
    SQLEmpresa: TTable;
    SQLPlanoRecebimento: TTable;
    Panel8: TPanel;
    Panel11: TPanel;
    Label40: TLabel;
    ComboNumerarioPrazo: TRxDBLookupCombo;
    DBGrid2: TDBGrid;
    SQLPlanoPLRCICOD: TIntegerField;
    SQLPlanoPLRCA60DESCR: TStringField;
    SQLPlanoPLRCN2TXJURO: TBCDField;
    SQLPlanoPLRCN2TXMULTA: TBCDField;
    SQLPlanoPLRCN2TXCRED: TBCDField;
    SQLPlanoPLRCN2PERCDESC: TBCDField;
    SQLPlanoPLRCCDFIX: TStringField;
    SQLPlanoPLRCIDFIXNROPARC: TIntegerField;
    SQLPlanoPLRCDFIXDVENC: TIntegerField;
    SQLPlanoPLRCCDFIXENTR: TStringField;
    SQLPlanoPLRCN2PERCENTR: TBCDField;
    SQLPlanoPLRCN2DESC: TBCDField;
    SQLPlanoPLRCCATIVO: TStringField;
    SQLPlanoPENDENTE: TStringField;
    SQLPlanoREGISTRO: TDateTimeField;
    SQLTemplateClienteFisJur: TStringField;
    SQLTemplateClienteCGC: TStringField;
    SQLTemplateClienteIE: TStringField;
    SQLTemplateClienteCPF: TStringField;
    SQLTemplateClienteRG: TStringField;
    ComboNumerarioVista: TRxDBLookupCombo;
    Label28: TLabel;
    SQLNumerarioVista: TRxQuery;
    DSSQLNumerarioVista: TDataSource;
    SQLNumerarioVistaNUMEICOD: TIntegerField;
    SQLNumerarioVistaNUMEA30DESCR: TStringField;
    SQLNumerarioVistaNUMECVISTAPRAZO: TStringField;
    SQLNumerarioVistaNUMECATIVO: TStringField;
    SQLNumerarioVistaNUMEA5TIPO: TStringField;
    SQLPlanoPLRCN2PERCACRESC: TBCDField;
    mnGerarOS: TMenuItem;
    SQLTemplatePDVDN2PERCFAT: TBCDField;
    SQLTemplatePDVDN2PERCOMIS: TBCDField;
    Label29: TLabel;
    Label30: TLabel;
    ComboVendedor: TRxDBLookupCombo;
    DSSQLVendedor: TDataSource;
    SQLVendedor: TRxQuery;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    SQLVendedorVENDN2COMISV: TBCDField;
    SQLVendedorVENDN2COMISP: TBCDField;
    SQLVendedorVENDCTIPCOMIS: TStringField;
    SQLVendedorVENDCCOMISACRESC: TStringField;
    SQLVendedorPENDENTE: TStringField;
    SQLVendedorREGISTRO: TDateTimeField;
    SQLVendedorVENDA60EMAIL: TStringField;
    SQLVendedorVENDA5FISJURID: TStringField;
    SQLVendedorVENDA14CGC: TStringField;
    SQLVendedorVENDA20IE: TStringField;
    SQLVendedorVENDA11CPF: TStringField;
    SQLVendedorVENDA10RG: TStringField;
    SQLVendedorVENDA60CONTATO: TStringField;
    SQLVendedorVENDA15FONE1: TStringField;
    SQLVendedorVENDA15FONE2: TStringField;
    SQLVendedorVENDA15FAX: TStringField;
    SQLVendedorVENDA60END: TStringField;
    SQLVendedorVENDA60BAI: TStringField;
    SQLVendedorVENDA60CID: TStringField;
    SQLVendedorVENDA2UF: TStringField;
    SQLVendedorVENDA8CEP: TStringField;
    SQLVendedorBANCA5COD: TStringField;
    SQLVendedorVENDA5AGENCIA: TStringField;
    SQLVendedorVENDA10CONTA: TStringField;
    SQLVendedorVENDA60TITULAR: TStringField;
    SQLVendedorVENDDABERTCONTA: TDateTimeField;
    SQLVendedorVENDA254OBS: TStringField;
    SQLVendedorVENDA30CORE: TStringField;
    SQLVendedorVENDA60RAZAOSOCIAL: TStringField;
    SQLVendedorVENDIDIASVALFIDEL: TIntegerField;
    SQLVendedorVENDN2PERCFIDEL: TBCDField;
    SQLVendedorVENDN2PERCIRRF: TBCDField;
    EvDBNumEdit2: TEvDBNumEdit;
    EvDBNumEdit3: TEvDBNumEdit;
    PedidoOramentocomComposioCabecalho: TMenuItem;
    SQLComposicaoItem: TRxQuery;
    SQLComposicaoItemPDVDA13ID: TStringField;
    SQLComposicaoItemPVITIITEM: TIntegerField;
    SQLComposicaoItemPVCOICOD: TIntegerField;
    SQLComposicaoItemPRODICOD: TIntegerField;
    SQLComposicaoItemPRODICODFILHO: TIntegerField;
    SQLComposicaoItemPVCON3QUANT: TBCDField;
    SQLComposicaoItemPVCON2VLRUNIT: TBCDField;
    SQLComposicaoItemPVCON2PERCDESC: TBCDField;
    SQLComposicaoItemPVCON2VLRDESC: TBCDField;
    SQLComposicaoItemPVCOA254OBS: TStringField;
    SQLComposicaoItemREGISTRO: TDateTimeField;
    SQLComposicaoItemPENDENTE: TStringField;
    SQLComposicaoItemPRODFILHODESCR: TStringField;
    SQLComposicaoItemPRODPAIDESCR: TStringField;
    BatchMoveItemComposicao: TBatchMove;
    tblComposicaoTemp: TTable;
    tblComposicaoTempPDVDA13ID: TStringField;
    tblComposicaoTempPVITIITEM: TIntegerField;
    tblComposicaoTempPVCOICOD: TIntegerField;
    tblComposicaoTempPRODICOD: TIntegerField;
    tblComposicaoTempPRODICODFILHO: TIntegerField;
    tblComposicaoTempPVCON3QUANT: TBCDField;
    tblComposicaoTempPVCON2VLRUNIT: TBCDField;
    tblComposicaoTempPVCON2PERCDESC: TBCDField;
    tblComposicaoTempPVCON2VLRDESC: TBCDField;
    tblComposicaoTempPVCOA254OBS: TStringField;
    tblComposicaoTempREGISTRO: TDateTimeField;
    tblComposicaoTempPENDENTE: TStringField;
    tblComposicaoTempPRODFILHODESCR: TStringField;
    tblComposicaoTempPRODPAIDESCR: TStringField;
    SQLPedidoItensComp: TRxQuery;
    Label31: TLabel;
    DBEdit12: TDBEdit;
    SQLTemplateUSUAA60LOGIN: TStringField;
    PedidoOramentocomComposicaoSemcabealho: TMenuItem;
    DBEdit15: TDBEdit;
    PanelPesquisa: TPanel;
    SpeedButton1: TSpeedButton;
    ComboCliente: TRxDBLookupCombo;
    DSSQLCliente: TDataSource;
    SQLCliente: TRxQuery;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteEMPRICOD: TIntegerField;
    SQLClienteCLIEICOD: TIntegerField;
    SQLClienteCLIEA5FISJURID: TStringField;
    SQLClienteCLIEA14CGC: TStringField;
    SQLClienteCLIEA20IE: TStringField;
    SQLClienteCLIEA11CPF: TStringField;
    SQLClienteCLIEA10RG: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLClienteCLIEA60NOMEFANT: TStringField;
    SQLClienteCLIEA60CONTATO: TStringField;
    SQLClienteCLIEA15FONE1: TStringField;
    SQLClienteCLIEA15FONE2: TStringField;
    SQLClienteCLIEA15FAX: TStringField;
    SQLClienteCLIEA30OUTROSDOC: TStringField;
    SQLClienteCLIECSEXO: TStringField;
    SQLClienteCLIEA60PROFISSAO: TStringField;
    SQLClienteCLIEA60ENDRES: TStringField;
    SQLClienteCLIEA60BAIRES: TStringField;
    SQLClienteCLIEA60CIDRES: TStringField;
    SQLClienteCLIEA2UFRES: TStringField;
    SQLClienteCLIEA8CEPRES: TStringField;
    SQLClienteCLIEA60EMAIL: TStringField;
    SQLClienteCLIEA60URL: TStringField;
    SQLClienteCLIEN2RENDA: TBCDField;
    SQLClienteCLIEN2LIMITECRED: TBCDField;
    SQLClienteCLIEA60NOMEPAI: TStringField;
    SQLClienteCLIEA60NOMEMAE: TStringField;
    SQLClienteCLIEDNASC: TDateTimeField;
    SQLClienteCLIECESTADOCIVIL: TStringField;
    SQLClienteTPCLICOD: TIntegerField;
    SQLClienteVENDICOD: TIntegerField;
    SQLClienteCLIEDCAD: TDateTimeField;
    SQLClienteTPRCICOD: TIntegerField;
    SQLClienteCLIEA60ENDCOB: TStringField;
    SQLClienteCLIEA60BAICOB: TStringField;
    SQLClienteCLIEA60CIDCOB: TStringField;
    SQLClienteCLIEA2UFCOB: TStringField;
    SQLClienteCLIEA8CEPCOB: TStringField;
    SQLClientePLRCICOD: TIntegerField;
    Label2: TLabel;
    DBEdit2: TDBDateEdit;
    Label3: TLabel;
    ComboTipo: TRxDBComboBox;
    Label1: TLabel;
    ComboSerie: TRxDBLookupCombo;
    Label4: TLabel;
    Combostatus: TRxDBComboBox;
    SQLSerie: TRxQuery;
    SQLSerieSERIA5COD: TStringField;
    DSSQLSerie: TDataSource;
    SQLTemplatePDVDCIMPORTADO: TStringField;
    SQLTemplateROTAICOD: TIntegerField;
    SQLTemplateSERIA5COD: TStringField;
    SQLTemplateVEICA13ID: TStringField;
    SQLTemplatePDVDA15NROPEDPALM: TStringField;
    SQLTemplateOPESICOD: TIntegerField;
    SQLTemplateNOFIAOBSCORPONF: TStringField;
    SQLTemplatePDVD8PLACAVEIC: TStringField;
    MnTrocarStatusparaAberto: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure BtnClienteClick(Sender: TObject);
    procedure BtnVendedorClick(Sender: TObject);
    procedure BtnTransportadoraClick(Sender: TObject);
    procedure BtnPlanoRecebimentoClick(Sender: TObject);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure MnCancelarPedidodeVendaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EtiquetasdeCdigodeBarras1Click(Sender: TObject);
    procedure SQLTemplatePDVDN2VLRDESCPROMChange(Sender: TField);
    procedure SQLTemplatePLRCICODChange(Sender: TField);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLContasReceberBeforePost(DataSet: TDataSet);
    procedure SQLContasReceberBeforeDelete(DataSet: TDataSet);
    procedure SQLContasReceberNewRecord(DataSet: TDataSet);
    procedure ImprimirPedidodeVenda1Click(Sender: TObject);
    procedure OrdemdeServio1Click(Sender: TObject);
    procedure BtnEmpresaClick(Sender: TObject);
    procedure DBEditEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateCLIEA13IDChange(Sender: TField);
    procedure MnCalcularFinanceiroClick(Sender: TObject);
    procedure SQLTemplateAfterInsert(DataSet: TDataSet);
    procedure ComboNumerarioPrazoChange(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure ComboNumerarioVistaChange(Sender: TObject);
    procedure GeraArquivoExternoParaImpOrcamento(IDOrcamento, CampoValorParcela, CampoDataVectoParcela : string ; SQLOrcamento, SQLOrcamentoItem, SQLParcelasVista, SQLParcelasPrazo : TRxQuery);
    procedure SQLContasReceberPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure mnGerarOSClick(Sender: TObject);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure ComboVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PedidoOramentocomComposioCabecalhoClick(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure MnTrocarStatusparaAbertoClick(Sender: TObject);
  private
    { Private declarations }
    PlanoAnterior, PlanoNovo, StatusNovo, StatusAnterior:String;
    PlanoDoCliente, CancelandoPedido,TrocaEntrada, CallDetail :Boolean;
    ValorEntrada:Double;
    ContasReceberCliente,ContasReceberID:String;
    BkpEmpresaCorrente : Integer;
  public
    { Public declarations }
  end;

var
  FormCadastroPedidoVendaComGrade: TFormCadastroPedidoVendaComGrade;

implementation

uses DataModulo, CadastroCliente, CadastroVendedor, CadastroTransportadora,
  CadastroPedidoVendaItem, TelaEmissaoEtiquetasCodigoBarras, UnitLibrary,
  CadastroPedidoVendaFinanceiro, TelaConsultaPlanoRecebimento,
  TelaConsultaEmpresa, TelaDadosOSPedidoVenda;

{$R *.dfm}

procedure TFormCadastroPedidoVendaComGrade.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA:='PEDIDOVENDA';
  if FileExists('ORDEMCONSULTAPEDIDO.INI') then
    SQLTemplate.SQL.Add('ORDER BY ' + SqlTemplate.Fields[LocateByDisplayLabel(SqlTemplate,ComboOrder.Text)].FieldName + ' DESC');
  SQLVendedor.Open;

  if not SQLCliente.Active then SQLCliente.Open;
  if not SQLSerie.Active then SQLSerie.Open;
end;

procedure TFormCadastroPedidoVendaComGrade.BtnClienteClick(Sender: TObject);
begin
  inherited;
  FieldLookup   := DsTemplate.DataSet.FieldByName('CLIEA13ID');
  FieldOrigem   := 'CLIEA13ID';
  DataSetLookup := SQLCliente;
  CriaFormulario(TFormCadastroCliente,'FormCadastroCliente',False,True,False,'');
end;

procedure TFormCadastroPedidoVendaComGrade.BtnVendedorClick(Sender: TObject);
begin
  inherited;
  FieldLookup   := DsTemplate.DataSet.FieldByName('VENDICOD');
  FieldOrigem   := 'VENDICOD';
  DataSetLookup := SQLVendedor;
  CriaFormulario(TFormCadastroVendedor,'FormCadastroVendedor',False,True,False,'');
end;

procedure TFormCadastroPedidoVendaComGrade.BtnTransportadoraClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('TRANICOD');
  FieldOrigem := 'TRANICOD';
  DataSetLookup := SQLTransportadora;
  CriaFormulario(TFormCadastroTransportadora,'FormCadastroTransportadora',False,True,True,'');
end;

procedure TFormCadastroPedidoVendaComGrade.BtnPlanoRecebimentoClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PLRCICOD');
  FieldOrigem := 'PLRCICOD';
  CriaFormulario(TFormTelaConsultaPlanoRecebimento,'FormTelaConsultaPlanoRecebimento',False,True,True,'');
end;

procedure TFormCadastroPedidoVendaComGrade.DBEdit6KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    BtnCliente.Click;
end;

procedure TFormCadastroPedidoVendaComGrade.DBEdit12KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    BtnVendedor.Click;
end;

procedure TFormCadastroPedidoVendaComGrade.DBEdit8KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    BtnTransportadora.Click;
end;

procedure TFormCadastroPedidoVendaComGrade.DBEdit9KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    BtnPlanoRecebimento.Click;
end;

procedure TFormCadastroPedidoVendaComGrade.SQLTemplateBeforePost(
  DataSet: TDataSet);
Var
  FaltaNumerario:Boolean;
begin
  if DM.SQLConfigVendaCFVECVENDEDOREXIGE.Value = 'S' then
    if SQLTemplateVENDICOD.AsString = '' then
      begin
        ShowMessage('Erro! O Vendedor esta configurado para ser Obrigatório!');
        Exit;
      end;

  BkpEmpresaCorrente := EmpresaCorrente;
  EmpresaCorrente := SQLTemplateEMPRICOD.asInteger;
  If Not DM.InserindoItemPV Then
    Begin
      If (StatusAnterior = '') and (StatusAnterior<>SQLTemplate.FindField('PDVDCSTATUS').asString) Then
        If (SQLTemplate.FindField('PDVDCSTATUS').asString <> 'A') Then
          Begin
            ShowMessage('Status Permitido: Aberto');
            EmpresaCorrente := BkpEmpresaCorrente;
            Abort;
          End;
      If (StatusAnterior = 'A') and (StatusAnterior<>SQLTemplate.FindField('PDVDCSTATUS').asString) Then
        If (SQLTemplate.FindField('PDVDCSTATUS').asString <> 'E') Then
          Begin
            ShowMessage('Status Permitido: Encerrado');
            EmpresaCorrente := BkpEmpresaCorrente;
            Abort;
          End;
      If (StatusAnterior = 'E') and (StatusAnterior<>SQLTemplate.FindField('PDVDCSTATUS').asString) Then
        If (SQLTemplate.FindField('PDVDCSTATUS').asString <> 'C') Then
          Begin
            ShowMessage('Status Permitido: Cancelado');
            EmpresaCorrente := BkpEmpresaCorrente;
            Abort;
          End;
      // Testa se o cliente possui parcelas em aberto
      if SQLTemplateCLIEA13ID.Value <> '' then
        begin
          DM.SQLTemplate.Close ;
          DM.SQLTemplate.SQL.Clear ;
          DM.SQLTemplate.SQL.Add('select') ;
          DM.SQLTemplate.SQL.Add('Count(*) as NROPARCVENC') ;
          DM.SQLTemplate.SQL.Add('from CONTASRECEBER') ;
          DM.SQLTemplate.SQL.Add('where CLIEA13ID = "' + SQLTemplateCLIEA13ID.AsString + '"') ;
          DM.SQLTemplate.SQL.Add(' and (CTRCN2VLR-CTRCN2TOTREC) > 0') ;
          DM.SQLTemplate.SQL.Add(' and (CTRCCSTATUS = "A" OR CTRCCSTATUS = "N")') ;
          DM.SQLTemplate.SQL.Add(' and (CTRCCTIPOREGISTRO = "N" OR CTRCCTIPOREGISTRO IS NULL)') ;
          DM.SQLTemplate.Open ;
          if DM.SQLTemplate.FieldByName('NROPARCVENC').Value > 0 then
            ShowMessage('Este cliente possui parcelas em aberto!');
        end
      else
        begin
          ShowMessage('Voce deve escolher um cliente para poder gravar um pedido!');
          Exit;
        end;

      StatusNovo := SQLTemplate.FindField('PDVDCSTATUS').asString;
      PlanoNovo  := SQLTemplate.FindField('PLRCICOD').asString;
      If PlanoNovo <> PlanoAnterior Then
      If PlanoNovo <> '' Then
        Begin
          FaltaNumerario := False;
          SQLParcelasPrazoVendaTemp.DisableControls;
          SQLParcelasPrazoVendaTemp.First;
          While Not SQLParcelasPrazoVendaTemp.Eof Do
            Begin
              If SQLParcelasPrazoVendaTempNUMEICOD.asVariant = Null Then
                FaltaNumerario := True;
              SQLParcelasPrazoVendaTemp.Next;
            End;
          SQLParcelasPrazoVendaTemp.First;
          SQLParcelasPrazoVendaTemp.EnableControls;
          If FaltaNumerario Then
            Begin
              ShowMessage('Selecione os Numerários!');
              EmpresaCorrente := BkpEmpresaCorrente;
              Abort;
            End;
        End;
     end;
  inherited;
end;

procedure TFormCadastroPedidoVendaComGrade.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateUSUAA60LOGIN.AsString  := UsuarioAtualNome;
  StatusAnterior                    := '';
  SQLTemplatePDVDCTIPO.Value        := 'P';
  SQLTemplatePDVDCSTATUS.Value      := 'A';
  SQLTemplatePDVDDEMISSAO.Value     := Date;
  SQLTemplatePDVDDENTREGA.Value     := Date;
  SQLTemplatePDVDN2TOTPROD.Value    := 0;
  SQLTemplatePDVDN2TOTPED.Value     := 0;
  SQLTemplatePDVDN2VLRDESC.Value    := 0;
  SQLTemplatePDVDN2VLRFRETE.Value   := 0;
  SQLTemplatePDVDCTIPOFRETE.Value   := 'C';
  SQLTemplatePDVDN2PERCFAT.Value    := 0;
  SQLTemplatePDVDN2PERCOMIS.Value   := 0;
  if DM.SQLConfigVendaCFVETOBSPADRAOPED.AsString <> '' then
    SQLTemplatePDVDTOBS.AsString := DM.SQLConfigVendaCFVETOBSPADRAOPED.AsString;
  if DM.SQLTerminalAtivoVENDICOD.AsInteger > 0 then
    SQLTemplateVENDICOD.AsInteger := DM.SQLTerminalAtivoVENDICOD.AsInteger;
end;

procedure TFormCadastroPedidoVendaComGrade.SQLTemplateBeforeEdit(
  DataSet: TDataSet);
begin
{  if (SQLTemplate.FindField('PDVDCSTATUS').AsString <> 'A') and (not CancelandoPedido) then
    begin
      Informa('Este pedido de venda não está aberto, portanto não pode ser alterado!');
      Abort;
      Exit;
    end;}
    
  StatusAnterior := SQLTemplate.FindField('PDVDCSTATUS').AsString;
  PlanoAnterior  := SQLTemplate.FindField('PLRCICOD').AsString;
  inherited;
end;

procedure TFormCadastroPedidoVendaComGrade.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
  If SQLTemplate.FindField('PDVDCSTATUS').asString<>'A' Then
    Begin
      ShowMessage('Pedido de Venda não está aberto, portanto não pode ser excluído!');
      Abort;
    End;
  inherited;
end;

procedure TFormCadastroPedidoVendaComGrade.MnCancelarPedidodeVendaClick(
  Sender: TObject);
begin
  inherited;
  if SQLTemplate.FindField('PDVDCSTATUS').asString = 'C' then
    begin
      Informa('Este Pedido/Orçamento Já Foi Cancelado!');
      Abort;
      Exit;
    end;
  If Not SQLTemplate.Eof And (SQLTemplate.FindField('PDVDCSTATUS').asString = 'E') and (Application.MessageBox('Deseja realmente cancelar o Pedido?','Atenção',MB_YesNo)=IdYes) Then
    Begin
      CancelandoPedido := True;
      SQLTemplate.Edit;
      SQLTemplate.FindField('PDVDCSTATUS').asString := 'C';
      SQLTemplate.Post;
      CancelandoPedido := False;
    End;
end;

procedure TFormCadastroPedidoVendaComGrade.Button1Click(Sender: TObject);
begin
  inherited;
  If (Sender as TRxSpeedButton).Name='Button3' Then
    Begin
      DSMasterSys := DsTemplate;
      CriaFormulario(TFormCadastroPedidoVendaItem,'FormCadastroPedidoVendaItem',True,False,True,'Pedido de Venda Nº ' + SQLTemplatePDVDA13ID.asString);
    End;
  If (Sender as TRxSpeedButton).Name='Button4' Then
    PagePrincipal.ActivePage := TabSheetFinanceiro;
  If (Sender as TRxSpeedButton).Name='Button5' Then
    Begin
      If SQLTemplate.FindField('PLRCICOD').asVariant<>Null Then
        Begin
          DSMasterSys := DsTemplate;
          CriaFormulario(TFormCadastroPedidoVendaFinanceiro,'FormCadastroPedidoVendaFinanceiro',True,False,True,'Pedido de Venda Nº ' + SQLTemplatePDVDA13ID.asString);
        End
      Else
        ShowMessage('Informe o Plano no Financeiro!');
    End;
end;

procedure TFormCadastroPedidoVendaComGrade.EtiquetasdeCdigodeBarras1Click(
  Sender: TObject);
begin
  inherited;
  EtiquetaPedidoVenda := SQLTemplate.FindField('PDVDA13ID').asString;
  CriaFormulario(TFormTelaEmissaoEtiquetasCodigoBarras,'FormTelaEmissaoEtiquetasCodigoBarras',False,False,True,'');
end;

procedure TFormCadastroPedidoVendaComGrade.SQLTemplatePDVDN2VLRDESCPROMChange(
  Sender: TField);
begin
  inherited;
  SQLTemplatePDVDN2TOTPED.asFloat := SQLTemplatePDVDN2TOTPROD.asFloat - SQLTemplatePDVDN2VLRDESCPROM.asFloat + SQLTemplatePDVDN2VLRFRETE.asFloat;
end;

procedure TFormCadastroPedidoVendaComGrade.SQLTemplatePLRCICODChange(
  Sender: TField);
Var
  Entrada, Desconto, Valor: Double;
  DiminuiAcresc, ValorJuro,Acrescimo, EntradaCalc,TaxaCred: Double;
begin
  inherited;
  if SQLTemplate.FindField('PLRCICOD').asVariant<>Null Then
    Begin
      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('delete from PARCELASPRAZOVENDATEMP') ;
      DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
      DM.SQLTemplate.ExecSQL ;

      SQLParcelasPrazoVendaTemp.Close ;
      SQLParcelasPrazoVendaTemp.SQL.Clear ;
      SQLParcelasPrazoVendaTemp.SQL.Add('select * from PARCELASPRAZOVENDATEMP') ;
      SQLParcelasPrazoVendaTemp.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
      SQLParcelasPrazoVendaTemp.SQL.Add('order by NROPARCELA') ;
      SQLParcelasPrazoVendaTemp.Open ;

      SQLPlano.Close;
      SQLPlano.ParamByName('PLRCICOD').AsInteger := SQLTemplate.FindField('PLRCICOD').asInteger;
      SQLPlano.Open;
      if not SQLPlano.Eof then
        Begin
          SQLPlanoParcela.Close;
          SQLPlanoParcela.ParamByName('PLRCICOD').AsInteger := SQLTemplate.FindField('PLRCICOD').asInteger;
          SQLPlanoParcela.Open;
          If (DM.SQLTerminalAtivoTERMINUMEVISTA.asString = '') and
             (DM.SQLTerminalAtivoTERMINUMEPRAZO.asString = '') Then
            Begin
              ShowMessage('Você deve configurar os numerários padrão deste Terminal!');
              Abort;
            End;
          SQLPlanoParcela.First;
          ValorJuro := SQLPlanoPLRCN2TXJURO.AsFloat;
          CriaParcelas(SQLParcelasPrazoVendaTemp,
                       SQLPlano,
                       SQLPlanoParcela,
                       Entrada, Desconto, SQLTemplate.FindField('PDVDN2TOTPED').asFloat , SQLTemplate.FindField('PLRCICOD').asInteger , SQLTemplate.FindField('PDVDDENTREGA').asDateTime,
                       DM.SQLTerminalAtivoTERMINUMEVISTA.asString, DM.SQLTerminalAtivoTERMINUMEPRAZO.asString,
                       DM.SQLTerminalAtivoTERMINUMEVISTA.asString, DM.SQLTerminalAtivoTERMINUMEPRAZO.asString, SQLTemplate.FindField('PDVDA13ID').asString,
                       DiminuiAcresc,ValorJuro,Acrescimo, EntradaCalc,TaxaCred);
          SQLPlanoParcela.Close;

          SQLNumerarioVista.Close;
          SQLNumerarioVista.Open;

          if Dm.SQLTerminalAtivoTERMINUMEVISTA.AsVariant <> null then
            ComboNumerarioVista.Value := Dm.SQLTerminalAtivoTERMINUMEVISTA.AsString;

          SQLNumerarioPrazo.Close;
          SQLNumerarioPrazo.Open;

          if Dm.SQLTerminalAtivoTERMINUMEPRAZO.AsVariant <> null then
            ComboNumerarioPrazo.Value := Dm.SQLTerminalAtivoTERMINUMEPRAZO.AsString;

          if ComboNumerarioVista.Value <> '' then
            ComboNumerarioVistaChange(Self);

          if ComboNumerarioPrazo.Value <> '' then
            ComboNumerarioPrazoChange(Self);
        End;
      SQLPlano.Close;
    End;
end;

procedure TFormCadastroPedidoVendaComGrade.SQLTemplateAfterPost(DataSet: TDataSet);
Var
  Erro      : Boolean;
  ValorBase : Double;
  I         : Integer;
begin
  inherited;
  If DM.InserindoItemPV Then Exit;
  If (StatusNovo = 'E') and (DM.SQLConfigVendaCFVECMOVESTOQUEPED.asString='S') Then
    Begin
      SQLPedidoItens.Close;
      SQLPedidoItens.SQL.Text := 'Select * From PEDIDOVENDAITEM Where PDVDA13ID = "' + DataSet.FindField('PDVDA13ID').AsString + '"' ;
      SQLPedidoItens.Open;
      SQLPedidoItens.First;
      While Not SQLPedidoItens.Eof Do
        Begin
          GravaMovimentoEstoque(DM.SQLProduto,
                                DM.SQLProdutoFilho,
                                DM.SQLProdutoSaldo,
                                EmpresaCorrente,//Empresa
                                SQLPedidoItens.FindField('PRODICOD').asInteger,//Produto
                                DM.SQLConfigVendaOPESICODPED.asInteger,//Operacao
                                SQLPedidoItens.FindField('PVITN3QUANT').asFloat,//Quantidade
                                'S',//ENTRADA/SAIDA
                                FormatDateTime('mm/dd/yyyy', Now),
                                SQLPedidoItens.FindField('PVITN2VLRUNIT').asString,
                                'PEDIDOVENDA',
                                SQLTemplate.FieldByName('PDVDA13ID').AsString,
                                '');
          SQLPedidoItens.Next;
        End;
      SQLPedidoItens.Close;
     // MOVIMENTA ESTOQUE DA COMPOSICAO
     if SQLPedidoItensComp.Active then SQLPedidoItensComp.Close;
     SQLPedidoItensComp.ParamByName('PDVDA13ID').AsString := SQLTemplatePDVDA13ID.AsString;
     SQLPedidoItensComp.Open;
     SQLPedidoItensComp.First;
     while not SQLPedidoItensComp.Eof do
       begin
         GravaMovimentoEstoqueSimples(DM.SQLProduto,
                                      DM.SQLProdutoFilho,
                                      DM.SQLProdutoSaldo,
                                      EmpresaCorrente,
                                      SQLPedidoItensComp.FindField('PRODICODFILHO').AsInteger,
                                      DM.SQLConfigVendaOPESICODPED.asInteger,
                                      SQLPedidoItensComp.FindField('PVCON3QUANT').AsFloat,
                                      'S',//ENTRADA/SAIDA,
                                      FormatDateTime('mm/dd/yyyy', Now),
                                      SQLPedidoItensComp.FindField('PVCON2VLRUNIT').AsString,
                                      'PEDIDOVENDA',
                                      SQLTemplate.FieldByName('PDVDA13ID').AsString,
                                      '');
         SQLPedidoItensComp.Next;
       end;
      SQLPedidoItensComp.Close;
    End;
  If (StatusNovo = 'C') Then
    Begin
      If (DM.SQLConfigVendaCFVECMOVESTOQUEPED.asString='S') Then
        Begin
          SQLPedidoItens.Close;
          SQLPedidoItens.SQL.Text:='Select * From PEDIDOVENDAITEM Where PDVDA13ID="'+DataSet.FindField('PDVDA13ID').AsString+'"';
          SQLPedidoItens.Open;
          SQLPedidoItens.First;
          While Not SQLPedidoItens.Eof Do
            Begin
              GravaMovimentoEstoque(DM.SQLProduto,
                                    DM.SQLProdutoFilho,
                                    DM.SQLProdutoSaldo,
                                    EmpresaCorrente,//Empresa
                                    SQLPedidoItens.FindField('PRODICOD').asInteger,//Produto
                                    DM.SQLConfigVendaOPESICODCANCPED.asInteger,//Operacao
                                    SQLPedidoItens.FindField('PVITN3QUANT').asFloat,//Quantidade
                                    'E',//ENTRADA/SAIDA
                                    FormatDateTime('mm/dd/yyyy', Now),
                                    SQLPedidoItens.FindField('PVITN2VLRUNIT').asString,
                                    'PEDIDOVENDA',
                                    DataSet.FindField('PDVDA13ID').AsString,
                                    '');
              SQLPedidoItens.Next;
            End;
            // MOVIMENTA ESTOQUE DA COMPOSICAO
            if SQLPedidoItensComp.Active then SQLPedidoItensComp.Close;
            SQLPedidoItensComp.ParamByName('PDVDA13ID').AsString := SQLTemplatePDVDA13ID.AsString;
            SQLPedidoItensComp.Open;
            SQLPedidoItensComp.First;
            while not SQLPedidoItensComp.Eof do
              begin
                GravaMovimentoEstoqueSimples(DM.SQLProduto,
                                             DM.SQLProdutoFilho,
                                             DM.SQLProdutoSaldo,
                                             EmpresaCorrente,
                                             SQLPedidoItensComp.FindField('PRODICODFILHO').AsInteger,
                                             DM.SQLConfigVendaOPESICODCANCPED.asInteger,
                                             SQLPedidoItensComp.FindField('PVCON3QUANT').AsFloat,
                                             'E',//ENTRADA/SAIDA,
                                             FormatDateTime('mm/dd/yyyy', Now),
                                             SQLPedidoItensComp.FindField('PVCON2VLRUNIT').AsString,
                                             'PEDIDOVENDA',
                                             SQLTemplate.FieldByName('PDVDA13ID').AsString,
                                             '');
                SQLPedidoItensComp.Next;
              end;
            SQLPedidoItensComp.Close;
        End;
      // Cancelar Contas Receber
      If Not SQLContasReceber.Active Then
        SQLContasReceber.Open;
      SQLContasReceber.First;
      While Not SQLContasReceber.Eof Do
        Begin
          SQLContasReceber.Edit;
          SQLContasReceberCTRCCSTATUS.Value := 'C';
          SQLContasReceber.Post;
          SQLContasReceber.Next;
        End;
    End;
  If PlanoNovo <> PlanoAnterior Then
    If PlanoNovo <> '' Then
      Begin
        // Gerar Contas Receber
        SQLContasReceber.Close;
        SQLContasReceber.Open;
        SQLContasReceber.First;
        While Not SQLContasReceber.Eof Do
          Begin
            SQLRecebimento.Close;
            SQLRecebimento.Open;
            While not SQLRecebimento.Eof do
              begin
                SQLRecebimento.Delete;
              end;
            SQLContasReceber.Delete;
          End;
        SQLParcelasPrazoVendaTemp.First;
        If SQLParcelasPrazoVendaTempNROPARCELA.AsInteger = 0 Then
          Begin
            SQLContasReceber.Append;
            SQLContasReceberCTRCCSTATUS.Value      := 'A';
            SQLContasReceberCTRCDEMIS.Value        := SQLTemplate.FindField('PDVDDEMISSAO').Value;
            SQLContasReceberCTRCDVENC.Value        := SQLTemplate.FindField('PDVDDENTREGA').Value;
            SQLContasReceberCTRCINROPARC.Value     := 0;
            SQLContasReceberCTRCN2VLR.Value        := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
            SQLContasReceberCTRCA5TIPOPADRAO.Value := SQLParcelasPrazoVendaTempTIPOPADR.Value;
            SQLContasReceberCLIEA13ID.Value        := SQLTemplate.FindField('CLIEA13ID').Value;
            SQLContasReceberPDVDA13ID.Value        := SQLTemplate.FindField('PDVDA13ID').Value;
            SQLContasReceberNUMEICOD.Value         := SQLParcelasPrazoVendaTempNUMEICOD.Value;
            SQLContasReceberTERMICOD.Value         := TerminalCorrente;
            SQLContasReceberTPDCICOD.asVariant     := DM.SQLConfigVendaTPDCICOD.asVariant;
            SQLContasReceberPORTICOD.asVariant     := DM.SQLConfigVendaPORTICOD.asVariant;
            SQLContasReceber.Post;
            if DM.SQLConfigVendaCFVECPARC0ENTRBAIX.asString='S' Then
              Begin
                If Not SQLRecebimento.Active Then
                  SQLRecebimento.Open;
                SQLRecebimento.Append;
                SQLRecebimentoCTRCA13ID.Value          := ContasReceberID;
                SQLRecebimentoTERMICODREC.Value        := TerminalCorrente;
                SQLRecebimentoRECEDRECTO.Value         := Now;
                SQLRecebimentoRECEICOD.Value           := 1;
                SQLRecebimentoRECEN2VLRRECTO.Value     := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
                SQLRecebimentoRECEN2VLRMULTA.Value     := 0;
                SQLRecebimentoRECEN2VLRJURO.Value      := 0;
                SQLRecebimentoRECEN2MULTACOBR.Value    := 0;
                SQLRecebimentoRECEN2DESC.Value         := 0;
                SQLRecebimentoPENDENTE.Value           := 'S';
                SQLRecebimentoEMPRICODREC.Value        := EmpresaCorrente;
                SQLRecebimentoCLIEA13ID.Value          := SQLTemplate.FieldByName('CLIEA13ID').Value;
                SQLRecebimento.Post;
                SQLContasReceber.Edit;
                SQLContasReceberCTRCN2TOTREC.Value     := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
                SQLContasReceberCTRCDULTREC.Value      := Now;
                SQLContasReceberEMPRICODULTREC.Value   := EmpresaCorrente;
                SQLContasReceber.Post;
              End;
          end;
        SQLParcelasPrazoVendaTemp.First;
        if SQLParcelasPrazoVendaTempNROPARCELA.AsInteger = 0 then
          SQLParcelasPrazoVendaTemp.Next;
        While Not SQLParcelasPrazoVendaTemp.Eof Do
          Begin
            SQLContasReceber.Append;
            SQLContasReceberCTRCCSTATUS.Value      := 'A';
            SQLContasReceberCTRCDEMIS.Value        := SQLTemplate.FindField('PDVDDEMISSAO').Value;
            SQLContasReceberCTRCDVENC.Value        := SQLParcelasPrazoVendaTempDATAVENCTO.Value;
            SQLContasReceberCTRCINROPARC.AsInteger := SQLParcelasPrazoVendaTempNROPARCELA.AsInteger;
            SQLContasReceberCTRCN2VLR.Value        := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
            SQLContasReceberCTRCA5TIPOPADRAO.Value := SQLParcelasPrazoVendaTempTIPOPADR.Value;
            SQLContasReceberCLIEA13ID.Value        := SQLTemplate.FindField('CLIEA13ID').Value;
            SQLContasReceberPDVDA13ID.Value        := SQLTemplate.FindField('PDVDA13ID').Value;
            SQLContasReceberNUMEICOD.Value         := SQLParcelasPrazoVendaTempNUMEICOD.Value;
            SQLContasReceberTERMICOD.Value         := TerminalCorrente;
            SQLContasReceberTPDCICOD.asVariant     := DM.SQLConfigVendaTPDCICOD.asVariant;
            SQLContasReceberPORTICOD.asVariant     := DM.SQLConfigVendaPORTICOD.asVariant;
            SQLContasReceber.Post;
            SQLParcelasPrazoVendaTemp.Next;
          end;
        ComboNumerarioPrazo.Value := '';
      End;
      SQLParcelasPrazoVendaTemp.Close;
  EmpresaCorrente := BkpEmpresaCorrente;
  if CallDetail then
    begin
      Button3.Click;
      CallDetail := False;
    end;
end;

procedure TFormCadastroPedidoVendaComGrade.SQLContasReceberBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  If DataSet.FindField('REGISTRO') <> Nil Then
    DataSet.FindField('REGISTRO').AsDateTime := Now ;
  If DataSet.FindField('PENDENTE')<> Nil Then
    DataSet.FindField('PENDENTE').AsString := 'S' ;
  If DataSet.FindField('EMPRICOD')<>Nil Then
    DataSet.FindField('EMPRICOD').Value := EmpresaCorrente ;
  If DataSet.FindField('TERMICOD')<>Nil Then
    DataSet.FindField('TERMICOD').Value := TerminalCorrente ;
  Case DataSet.State Of
    DsInsert: DM.CodigoAutomatico('CONTASRECEBER', DSSQLContasReceber, DataSet, 3, 0);
  end;
  ContasReceberID      := SQLContasReceberCTRCA13ID.asString;
  ContasReceberCliente := SQLContasReceberCLIEA13ID.asString;
end;

procedure TFormCadastroPedidoVendaComGrade.SQLContasReceberBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  DM.RegistraExclusao('CONTASRECEBER',SQLContasReceber);
  SQLExcluiDetalhes.MacroByName('MTabela').AsString   := 'RECEBIMENTO';
  SQLExcluiDetalhes.MacroByName('MFiltro').asString   := DM.ClausulaFiltro('CONTASRECEBER',SQLContasReceber);
  SQLExcluiDetalhes.MacroByName('MClausula').asString := 'Select *';
  SQLExcluiDetalhes.Open;
  SQLExcluiDetalhes.First;
  While Not SQLExcluiDetalhes.Eof Do
    Begin
      DM.RegistraExclusao('RECEBIMENTO',SQLExcluiDetalhes);
      SQLExcluiDetalhes.Next;
    End;
  SQLExcluiDetalhes.Close;
  SQLExcluiDetalhes.MacroByName('MClausula').asString := 'Delete';
  SQLExcluiDetalhes.ExecSQL;
end;

procedure TFormCadastroPedidoVendaComGrade.SQLContasReceberNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('PDVDA13ID').Value         := SQLTemplate.FindField('PDVDA13ID').Value;
  DataSet.FindField('CTRCINROPARC').Value      := 0 ;
  DataSet.FindField('CTRCN2DESCFIN').Value     := 0 ;
  DataSet.FindField('CTRCN2TXJURO').Value      := 0 ;
  DataSet.FindField('CTRCN2TXMULTA').Value     := 0 ;
  DataSet.FindField('CTRCN2TOTREC').Value      := 0 ;
  DataSet.FindField('CTRCN2TOTJUROREC').Value  := 0 ;
  DataSet.FindField('CTRCN2TOTMULTAREC').Value := 0 ;
  DataSet.FindField('CTRCN2TOTDESCREC').Value  := 0 ;
  DataSet.FindField('TERMICOD').Value          := TerminalCorrente;
  DataSet.FindField('EMPRICOD').Value          := EmpresaCorrente;
end;

procedure TFormCadastroPedidoVendaComGrade.ImprimirPedidodeVenda1Click(
  Sender: TObject);
begin
  inherited;
  if (DM.SQLTerminalAtivoTERMCTIPO.AsString <> '') then
    begin
      SQLContasReceber.Close;
      SQLContasReceber.Open;
      SQLPedidoItens.Close;
      SQLPedidoItens.SQL.Text := 'Select * From PEDIDOVENDAITEM Where PDVDA13ID = "' + SQLTemplate.FindField('PDVDA13ID').AsString + '"' ;
      SQLPedidoItens.Open;
      if DM.SQLTerminalAtivoTERMACTIPOIMPPEDORC.AsString <> '' then
        Case DM.SQLTerminalAtivoTERMACTIPOIMPPEDORC.AsString[1] of
          '0' : begin
                  // Prepara Impressão de Pedido/Orçamento
                  // Padrao 80 Colunas bobina;
                  Informa('A opção de impressão para bobina 80 colunas, não está disponível no módulo Faturamento!');
                  Exit;
                end;
          '1' : begin
                  // Padrão Matricial/Deskjet/Laser
                  if DM.SQLConfigGeralCFGEA255PATHREPORT.AsString <> '' then
                    begin
                      GeraArquivoExternoParaImpOrcamento(SQLTemplate.FieldByName('PDVDA13ID').AsString,SQLContasReceberCTRCN2VLR.FieldName,SQLContasReceberCTRCDVENC.FieldName,SQLTemplate,SQLPedidoItens,nil,SQLContasReceber);
                      DM.Report.DiscardSavedData    := True;
                      DM.Report.ReportName          := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Pedido Orcamento.rpt';
                      DM.Report.ReportTitle         := 'Orçamento';
                      DM.Report.WindowStyle.Title   := 'Orçamento';
                      if Dm.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString <> '' then
                        begin
                          DM.Report.Output          := toPrinter;
                          DM.Report.Printer.Name    := Dm.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString;
                        end
                      else
                        DM.Report.Output            := toWindow;

                      DM.Report.Execute;
                    end
                  else
                    Informa('O pedido/orçamento padrão não foi encontrado, verifique suas configurações!');
                end;
          '2' : begin
                  // Personalizado
                  if FileExists(DM.SQLTerminalAtivoTERMTPATHPEDORC.AsString) then
                    begin
                      GeraArquivoExternoParaImpOrcamento(SQLTemplate.FieldByName('PDVDA13ID').AsString,SQLContasReceberCTRCN2VLR.FieldName,SQLContasReceberCTRCDVENC.FieldName,SQLTemplate,SQLPedidoItens,nil,SQLContasReceber);
                      DM.Report.DiscardSavedData    := True;
                      DM.Report.ReportName          := DM.SQLTerminalAtivoTERMTPATHPEDORC.Value;
                      DM.Report.ReportTitle         := 'Orçamento';
                      DM.Report.WindowStyle.Title   := 'Orçamento';
                      if Dm.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString <> '' then
                        begin
                          DM.Report.Output          := toPrinter;
                          DM.Report.Printer.Name    := Dm.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString;
                        end
                      else
                        DM.Report.Output            := toWindow;

                      DM.Report.Execute;
                    end
                  else
                    Informa('O arquivo para impressão de pedido/orçamento personalizado não foi encontrado, verifique suas consigurações!');
                end;
          '3' : begin
                  // Arquivo Externo .exe
                  if FileExists('PedidoVenda.exe') then
                    begin
                      WinExec(PChar('PedidoVenda.exe '+ SQLTemplatePDVDA13ID.asString),SW_SHOW);
                    end
                  else
                    begin
                      Informa('Você configurou o sistema para imprimir pedido/orçamento com arquivo externo, mas o arquivo não foi encontrado favor verificar!');
                    end;
                end;
        end
      else
        begin
          if DM.SQLConfigGeralCFGEA255PATHREPORT.AsString <> '' then
            begin
              GeraArquivoExternoParaImpOrcamento(SQLTemplate.FieldByName('PDVDA13ID').AsString,SQLContasReceberCTRCN2VLR.FieldName,SQLContasReceberCTRCDVENC.FieldName,SQLTemplate,SQLPedidoItens,nil,SQLContasReceber);
              DM.Report.DiscardSavedData    := True;
              DM.Report.ReportName          := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Pedido Orcamento.rpt';
              DM.Report.ReportTitle         := 'Orçamento';
              DM.Report.WindowStyle.Title   := 'Orçamento';
              if Dm.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString <> '' then
                begin
                  DM.Report.Output          := toPrinter;
                  DM.Report.Printer.Name    := Dm.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString;
                end
              else
                DM.Report.Output            := toWindow;

              DM.Report.Execute;
            end
          else
            Informa('O pedido/orçamento padrão não foi encontrado, verifique suas configurações!');
        end;
    end
  else
    begin
      Informa('Este orçamento não será impresso porque as configurações estão incompletas!');
    end;
end;

procedure TFormCadastroPedidoVendaComGrade.OrdemdeServio1Click(Sender: TObject);
begin
  inherited;
  if (DM.SQLTerminalAtivoTERMCTIPO.AsString <> '') then
    begin
      SQLContasReceber.Close;
      SQLContasReceber.Open;
      SQLPedidoItens.Close;
      SQLPedidoItens.SQL.Text := 'Select * From PEDIDOVENDAITEM Where PDVDA13ID = "' + SQLTemplate.FindField('PDVDA13ID').AsString + '"' ;
      SQLPedidoItens.Open;
      Case DM.SQLTerminalAtivoTERMACTIPOIMPPEDORC.AsString[1] of
        '0' : begin
                // Prepara Impressão de Pedido/Orçamento
                // Padrao 80 Colunas bobina;
                Informa('A opção de impressão para bobina 80 colunas, não está disponível no módulo Faturamento!');
                Exit;
              end;
        '1' : begin
                // Padrão Matricial/Deskjet/Laser
                if DM.SQLConfigGeralCFGEA255PATHREPORT.AsString <> '' then
                  begin
                    GeraArquivoExternoParaImpOrcamento(SQLTemplate.FieldByName('PDVDA13ID').AsString,SQLContasReceberCTRCN2VLR.FieldName,SQLContasReceberCTRCDVENC.FieldName,SQLTemplate,SQLPedidoItens,nil,SQLContasReceber);
                    DM.Report.DiscardSavedData    := True;
                    DM.Report.ReportName          := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Pedido Orcamento.rpt';
                    DM.Report.ReportTitle         := 'Orçamento';
                    DM.Report.WindowStyle.Title   := 'Orçamento';
                    if Dm.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString <> '' then
                      begin
                        DM.Report.Output          := toPrinter;
                        DM.Report.Printer.Name    := Dm.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString;
                      end
                    else
                      DM.Report.Output            := toWindow;

                    DM.Report.Execute;
                  end
                else
                  Informa('O pedido/orçamento padrão não foi encontrado, verifique suas configurações!');
              end;
        '2' : begin
                // Personalizado
                if FileExists(DM.SQLTerminalAtivoTERMTPATHPEDORC.AsString) then
                  begin
                    GeraArquivoExternoParaImpOrcamento(SQLTemplate.FieldByName('PDVDA13ID').AsString,SQLContasReceberCTRCN2VLR.FieldName,SQLContasReceberCTRCDVENC.FieldName,SQLTemplate,SQLPedidoItens,nil,SQLContasReceber);
                    DM.Report.ReportName          := DM.SQLTerminalAtivoTERMTPATHPEDORC.Value;
                    DM.Report.ReportTitle         := 'Orçamento';
                    DM.Report.WindowStyle.Title   := 'Orçamento';
                    if Dm.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString <> '' then
                      begin
                        DM.Report.Output          := toPrinter;
                        DM.Report.Printer.Name    := Dm.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString;
                      end
                    else
                      DM.Report.Output            := toWindow;

                    DM.Report.Execute;
                  end
                else
                  Informa('O arquivo para impressão de pedido/orçamento personalizado não foi encontrado, verifique suas consigurações!');
              end;
        '3' : begin
                // Arquivo Externo .exe
                if FileExists('PedidoVenda.exe') then
                  begin
                    WinExec(PChar(DM.PathAplicacao + '\PedidoVenda.exe '+SQLTemplatePDVDA13ID.asString+' OS'),SW_SHOW);
                  end
                else
                  begin
                    Informa('Você configurou o sistema para imprimir pedido/orçamento com arquivo externo, mas o arquivo não foi encontrado favor verificar!');
                  end;
              end;
      end;
    end
  else
    begin
      Informa('Este orçamento não será impresso porque as configurações estão incompletas!');
    end;
end;

procedure TFormCadastroPedidoVendaComGrade.BtnEmpresaClick(Sender: TObject);
begin
  inherited;
  FieldLookUp := SQLTemplate.FindField('EMPRICOD');
  FieldOrigem := 'EMPRICOD';
  CriaFormulario(TFormTelaConsultaEmpresa,'FormTelaConsultaEmpresa',False,True,True,'');
end;

procedure TFormCadastroPedidoVendaComGrade.DBEditEmpresaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key = VK_F2 Then
    BtnEmpresa.Click;
end;

procedure TFormCadastroPedidoVendaComGrade.SQLTemplateCLIEA13IDChange(
  Sender: TField);
begin
  inherited;
  PlanoDoCliente := True;
  SQLTemplatePLRCICOD.asVariant := SQLTemplatePlanoClienteLookUp.AsVariant;
  If SQLTemplatePLRCICOD.asVariant<>Null Then
    PlanoAnterior := SQLTemplatePLRCICOD.asString;
  PlanoDoCliente := False;
  SQLTemplateVENDICOD.asVariant := SQLTemplateVendedorClienteLookUp.AsVariant;
end;

procedure TFormCadastroPedidoVendaComGrade.MnCalcularFinanceiroClick(
  Sender: TObject);
begin
  inherited;
  Button4.Click;
  SQLTemplate.Edit;
  SQLTemplatePLRCICODChange(SQLTemplatePLRCICOD);
  PlanoAnterior:='';
end;

procedure TFormCadastroPedidoVendaComGrade.SQLTemplateAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  CallDetail := True;
end;

procedure TFormCadastroPedidoVendaComGrade.ComboNumerarioPrazoChange(
  Sender: TObject);
begin
  inherited;
  if ComboNumerarioPrazo.Value <> '' then
    begin
      SQLParcelasPrazoVendaTemp.First;
      While not SQLParcelasPrazoVendaTemp.Eof do
        begin
          if SQLParcelasPrazoVendaTempNROPARCELA.AsInteger <> 0 then
            begin
              SQLParcelasPrazoVendaTemp.Edit;
              SQLParcelasPrazoVendaTempNUMEICOD.AsInteger := ComboNumerarioPrazo.KeyValue;
              SQLParcelasPrazoVendaTempTIPOPADR.AsString  := SQLLocate('NUMERARIO','NUMEICOD','NUMEA5TIPO',ComboNumerarioPrazo.Value);
              SQLParcelasPrazoVendaTemp.Post;
            end;
          SQLParcelasPrazoVendaTemp.Next;
        end;
      SQLParcelasPrazoVendaTemp.First;
    end;

end;

procedure TFormCadastroPedidoVendaComGrade.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if SQLTemplate.FieldByName('ClienteFisJur').AsString='F' then
    Begin
      DBEditCGCCPF.DataField   := SqlTemplate.FieldByName('ClienteCPF').FieldName;
      DBEditIERG.DataField     := SqlTemplate.FieldByName('ClienteRG').FieldName;
    End
  Else
    Begin
      DBEditCGCCPF.DataField   := SqlTemplate.FieldByName('ClienteCGC').FieldName;
      DBEditIERG.DataField     := SqlTemplate.FieldByName('ClienteIE').FieldName;
    End;

  mnGerarOS.Enabled := (SQLTemplatePDVDCTIPO.AsString = 'P') and (SQLTemplatePDVDCSTATUS.AsString <> 'C');
  MnCancelarPedidodeVenda.Enabled := (SQLTemplatePDVDCSTATUS.AsString = 'E');
  MnCalcularFinanceiro.Enabled    := (SQLTemplatePDVDCSTATUS.AsString = 'A');

//Permite alterar ou não
  if not UsuarioMaster then
     if (DM.SQLConfigVendaCFVECCONTPEDVDAUSU.AsString = 'S') and
        (SQLTemplateUSUAA60LOGIN.AsString <> UsuarioAtualNome) and
        ((SQLTemplateUSUAA60LOGIN.IsNull) or (SQLTemplateUSUAA60LOGIN.AsString <> '')) then
        DesabilitarBotoes(False,True,True,True,True)
     else
        if not (SQLTemplate.State in dsEditModes) then
           DesabilitarBotoes(False,False,True,True,False)
        else
           DesabilitarBotoes(True,True,False,False,True);
end;

procedure TFormCadastroPedidoVendaComGrade.ComboNumerarioVistaChange(
  Sender: TObject);
begin
  inherited;
  if ComboNumerarioVista.Value <> '' then
    begin
      SQLParcelasPrazoVendaTemp.First;
      if SQLParcelasPrazoVendaTempNROPARCELA.AsInteger = 0 then
        begin
          SQLParcelasPrazoVendaTemp.Edit;
          SQLParcelasPrazoVendaTempNUMEICOD.AsInteger := ComboNumerarioVista.KeyValue;
          SQLParcelasPrazoVendaTempTIPOPADR.AsString  := SQLLocate('NUMERARIO','NUMEICOD','NUMEA5TIPO',ComboNumerarioVista.Value);
          SQLParcelasPrazoVendaTemp.Post;
        end;
      SQLParcelasPrazoVendaTemp.First;
    end;
end;
procedure TFormCadastroPedidoVendaComGrade.GeraArquivoExternoParaImpOrcamento(IDOrcamento, CampoValorParcela, CampoDataVectoParcela : string ; SQLOrcamento, SQLOrcamentoItem, SQLParcelasVista, SQLParcelasPrazo : TRxQuery);
begin
  if not SQLOrcamento.Active then SQLOrcamento.Open;
{  SQLOrcamento.Close ;
  SQLOrcamento.MacroByName('MFiltro').Value := 'PDVDA13ID = "' + IDOrcamento  + '"';
  SQLOrcamento.Open ;}
  if SQLOrcamento.IsEmpty then
    begin
      Informa('Problemas ao imprimir orçamento!');
      Exit;
    end;
  //GRAVAR CABECALHO TICKET
  DM.TblPedidoCab.Close;
  try
    DM.TblPedidoCab.DeleteTable;
    DM.TblPedidoCab.CreateTable;
  except
    DM.TblPedidoCab.CreateTable;
  end;
  DM.TblPedidoCab.AddIndex('Primario','PedICod',[ixPrimary]);
  DM.TblPedidoCab.Open;

  DM.SQLEmpresa.Locate('EMPRICOD',EmpresaPadrao,[]);

  DM.TblPedidoCab.Append;
  If SQLOrcamento.FieldByName('PDVDCTIPO').asString = 'P' Then
    DM.TblPedidoCabPEDIDOORCAMENTO.AsString         := 'PEDIDO NRO:'
  Else
    DM.TblPedidoCabPEDIDOORCAMENTO.AsString         := 'ORÇAMENTO NRO:';
  DM.TblPedidoCabPedICod.AsString                := SQLOrcamento.FieldByName('PDVDA13ID').AsString;
  DM.TblPedidoCabEmitente_Nome.asString          := DM.SQLEmpresaEMPRA60NOMEFANT.AsString;
  DM.TblPedidoCabEmitente_Ender.asString         := DM.SQLEmpresaEMPRA60END.asString;
  DM.TblPedidoCabEmitente_Bairro.asString        := DM.SQLEmpresaEMPRA60BAI.asString;
  DM.TblPedidoCabEmitente_Cidade.asString        := DM.SQLEmpresaEMPRA60CID.asString;
  DM.TblPedidoCabEmitente_UF.asString            := DM.SQLEmpresaEMPRA2UF.asString;
  DM.TblPedidoCabEmitente_CGC.asString           := DM.SQLEmpresaEMPRA14CGC.asString;
  DM.TblPedidoCabEmitente_IE.asString            := DM.SQLEmpresaEMPRA20IE.asString;
  DM.TblPedidoCabEmitente_Fone.asString          := Dm.SQLEmpresaEMPRA20FONE.asString;
  DM.TblPedidoCabDtEmissao.Value                 := SQLOrcamento.FieldByName('PDVDDEMISSAO').Value;
  if DM.ProcuraRegistro('CLIENTE',['CLIEA13ID'],[SQLOrcamento.FieldByName('CLIEA13ID').Value],1) then
    begin
      DM.TblPedidoCabDestinatario_Nome.asString      := DM.SQLTemplate.FieldByName('CLIEA60RAZAOSOC').AsString;
      DM.TblPedidoCabDestinatario_Endereco.asString  := DM.SQLTemplate.FieldByName('CLIEA60ENDRES').AsString;
      DM.TblPedidoCabDestinatario_Bairro.asString    := DM.SQLTemplate.FieldByName('CLIEA60BAIRES').AsString;
      DM.TblPedidoCabDestinatario_Cep.asString       := DM.SQLTemplate.FieldByName('CLIEA8CEPRES').AsString;
      DM.TblPedidoCabDestinatario_Cidade.asString    := DM.SQLTemplate.FieldByName('CLIEA60CIDRES').AsString;
      DM.TblPedidoCabDestinatario_UF.asString        := DM.SQLTemplate.FieldByName('CLIEA2UFRES').AsString;

      if DM.SQLTemplate.FieldByName('CLIEA5FISJURID').AsString = 'F' then
        DM.TblPedidoCabDestinatario_CpfCgc.asString    := DM.SQLTemplate.FieldByName('CLIEA11CPF').AsString
      else
        DM.TblPedidoCabDestinatario_CpfCgc.asString    := DM.SQLTemplate.FieldByName('CLIEA14CGC').AsString;

      DM.TblPedidoCabDestinatario_IE.asString        := DM.SQLTemplate.FieldByName('CLIEA20IE').AsString;
      DM.TblPedidoCabDestinatario_Fone.asString      := DM.SQLTemplate.FieldByName('CLIEA15FONE1').AsString;
      DM.TblPedidoCabDestinatario_Fone2.AsString     := DM.SQLTemplate.FieldByName('CLIEA15FONE2').AsString;
      DM.TblPedidoCabDestinatario_Fax.asString       := DM.SQLTemplate.FieldByName('CLIEA15FAX').AsString;
    end;
    DM.TblPedidoCabTransp.asString                 := SQLTemplateTransportadoraLookUp.asString;
    DM.TblPedidoCabDtaEntrega.asVariant            := SQLTemplatePDVDDENTREGA.asVariant;
    DM.TblPedidoCabDtEmissao.AsDateTime            := SQLTemplatePDVDDEMISSAO.AsDateTime;
    DM.TblPedidoCabComprador.asString              := SQLTemplatePDVDA30COMPRADOR.asString;
    DM.TblPedidoCabOrdemCompra.asString            := SQLTemplatePDVDA30NROPEDCOMP.asString;
    DM.TblPedidoCabPlano.asString                  := SQLTemplatePlanoRecebimentoLookUp.asString;
    If SQLTemplatePDVDCTIPOFRETE.asString='C' Then
      DM.TblPedidoCabTipoFrete.asString   := '1'
    Else
      DM.TblPedidoCabTipoFrete.asString   := '2';
  DM.TblPedidoCabValorFrete.Value                := SQLOrcamento.FieldByName('PDVDN2VLRFRETE').AsFloat;
  DM.TblPedidoCabTotalDesconto.Value             := SQLOrcamento.FieldByName('PDVDN2VLRDESC').AsFloat + SQLOrcamento.FieldByName('PDVDN2VLRDESCPROM').AsFloat;
  DM.TblPedidoCabTotal.Value                     := SQLOrcamento.FieldByName('PDVDN2TOTPROD').AsFloat;
  DM.TblPedidoCabObservacoes.asString            := SQLOrcamento.FieldByName('PDVDTOBS').asString;
  DM.TblPedidoCabVendedor.asString               := SQLLocate('VENDEDOR', 'VENDICOD', 'VENDA60NOME', SQLOrcamento.FieldByName('VENDICOD').AsString);
//  DM.TblPedidoCabEmail.asString                  := AnsiLowerCase(SQLTemplateVendedorEmailLookUp.asString);
  DM.TblPedidoCabEmitente_Email.AsString         := LowerCase(DM.SQLEmpresaEMPRA60EMAIL.AsString);
  DM.TblPedidoCabEmitente_URL.AsString           := LowerCase(DM.SQLEmpresaEMPRA60URL.AsString);
  DM.TblPedidoCabEmitenteLogo.AsVariant          := DM.SQLEmpresaEMPRBLOGOTIPO.AsVariant;

  DM.TblPedidoCab.Post;
  DM.TblPedidoCab.Close;

  If DM.TblPedidoItens.Exists Then
    DM.TblPedidoItens.DeleteTable;
  DM.TblPedidoItens.CreateTable;
  DM.TblPedidoItens.Open;

  if not SQLOrcamentoItem.Active then SQLOrcamentoItem.Open;
  SQLOrcamentoItem.First;
  // Itens
  While Not SQLOrcamentoItem.Eof Do
    Begin
      DM.TblPedidoItens.Append;
      DM.TblPedidoItensVlrUnitario.Value := SQLOrcamentoItem.FieldbyName('PVITN2VLRUNIT').Value;
      DM.TblPedidoItensVlrTotal.Value    := (SQLOrcamentoItem.FieldbyName('PVITN2VLRUNIT').Value) *
                                             SQLOrcamentoItem.FieldbyName('PVITN3QUANT').Value ;

      DM.TblPedidoItensUn.Value          := SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',
                                            SQLLocate('PRODUTO','PRODICOD','UNIDICOD', SQLOrcamentoItem.FieldByName('PRODICOD').AsString));

      DM.TblPedidoItensQtd1.Value        := SQLOrcamentoItem.FieldbyName('PVITN3QUANT').Value;
      DM.TblPedidoItensPedICod.Value     := SQLOrcamentoItem.FieldbyName('PDVDA13ID').Value;
      DM.TblPedidoItensDescricao.Value   := SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',SQLOrcamentoItem.FieldbyName('PRODICOD').AsString);
      DM.TblPedidoItensReferencia.Value  := SQLLocate('PRODUTO','PRODICOD','PRODA60REFER',SQLOrcamentoItem.FieldbyName('PRODICOD').AsString);
      DM.TblPedidoItensCodigo.Value      := SQLOrcamentoItem.FieldbyName('PRODICOD').AsInteger;
      DM.TblPedidoItensCodItem.Value     := SQLOrcamentoItem.FieldbyName('PVITIITEM').AsInteger;
      DM.TblPedidoItens.Post;
      SQLOrcamentoItem.Next;
    End;

  DM.TblPedidoItens.Close;
  SQLOrcamentoItem.Close;

    DM.TblPedidoFinan.Close;
  try
    DM.TblPedidoFinan.DeleteTable;
    DM.TblPedidoFinan.CreateTable;
  except
    DM.TblPedidoFinan.CreateTable;
  end;

  DM.TblPedidoFinan.Open;

  if SQLParcelasVista <> nil then
    begin
      if not SQLParcelasVista.Active then SQLParcelasVista.Open;
      SQLParcelasVista.First;
      While not SQLParcelasVista.Eof do
        begin
          DM.TblPedidoFinan.Append;
          DM.TblPedidoFinanPedICod.Value    := IDOrcamento;
          DM.TblPedidoFinanValor.Value      := SQLParcelasVista.FieldByName(CampoValorParcela).Value;
          DM.TblPedidoFinanVencimento.Value := Date;
          DM.TblPedidoFinan.Post;
          SQLParcelasVista.Next;
        end;
    end;

  if SQLParcelasPrazo <> nil then
    begin
      SQLParcelasPrazo.First;
      if not SQLParcelasPrazo.Active then SQLParcelasPrazo.Open;
      While not SQLParcelasPrazo.Eof do
        begin
          DM.TblPedidoFinan.Append;
          DM.TblPedidoFinanPedICod.Value    := IDOrcamento;
          DM.TblPedidoFinanValor.Value      := SQLParcelasPrazo.FieldByName(CampoValorParcela).Value;
          DM.TblPedidoFinanVencimento.Value := SQLParcelasPrazo.FieldByName(CampoDataVectoParcela).Value;
          DM.TblPedidoFinan.Post;
          SQLParcelasPrazo.Next;
        end;
    end;
  DM.TblPedidoFinan.Close;
end;

procedure TFormCadastroPedidoVendaComGrade.SQLContasReceberPostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
var
 ID : String;  
begin
  inherited;
  Case DataSet.State Of
    DsInsert: begin
                DataSet.FieldByName('CTRCICOD').AsInteger:=DataSet.FieldByName('CTRCICOD').AsInteger + 1;
                ID := Format('%.3d',[EmpresaCorrente])+Format('%.3d',[TerminalCorrente])+Format('%.6d',[DataSet.FieldByName('CTRCICOD').asInteger]);
                DataSet.FieldByName('CTRCA13ID').asString:=ID+DM.DigitVerifEAN(ID);
              end;   

  end;
  Action := DaRetry;
end;

procedure TFormCadastroPedidoVendaComGrade.mnGerarOSClick(Sender: TObject);
begin
  inherited;
  DSMasterSys := DSTemplate;
  Application.CreateForm(TFormTelaDadosOSPedidoVenda,FormTelaDadosOSPedidoVenda);
  FormTelaDadosOSPedidoVenda.ShowModal;
end;

procedure TFormCadastroPedidoVendaComGrade.DSTemplateStateChange(Sender: TObject);
begin
  inherited;
  if not (SQLTemplate.State in dsEditModes) then
     mnGerarOS.Enabled := True
  else
     mnGerarOS.Enabled := False;

end;

procedure TFormCadastroPedidoVendaComGrade.ComboVendedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    BtnVendedor.Click;

  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value    <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
       (sender  as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;
end;

procedure TFormCadastroPedidoVendaComGrade.PedidoOramentocomComposioCabecalhoClick(
  Sender: TObject);
begin
  inherited;
  SQLPedidoItens.Close;
  SQLPedidoItens.SQL.Text := 'Select * From PEDIDOVENDAITEM Where PDVDA13ID = "' + SQLTemplate.FindField('PDVDA13ID').AsString + '"' ;
  SQLPedidoItens.Open;

  SQLPedidoItens.First;

  // itens da composicao
  SQLComposicaoItem.Close;
  SQLComposicaoItem.MacroByName('MFiltro').AsString := ' PDVDA13ID = "' + SQLTemplate.FindField('PDVDA13ID').AsString + '"';
  SQLComposicaoItem.Open;

  SQLContasReceber.Close;
  SQLContasReceber.Open;

  GeraArquivoExternoParaImpOrcamento(SQLTemplate.FieldByName('PDVDA13ID').AsString,SQLContasReceberCTRCN2VLR.FieldName,SQLContasReceberCTRCDVENC.FieldName,SQLTemplate,SQLPedidoItens,nil,SQLContasReceber);

  Try
    tblComposicaoTemp.Close;
    tblComposicaoTemp.DeleteTable;
    tblComposicaoTemp.CreateTable;
  except
    tblComposicaoTemp.CreateTable;
  end;

  BatchMoveItemComposicao.Execute;


  if DM.SQLConfigGeralCFGEA255PATHREPORT.AsString <> '' then
    begin
      DM.Report.DiscardSavedData    := True;
      if (Sender as TMenuItem).Name = 'PedidoOramentocomComposioCabecalho' then
        begin
          DM.Report.ReportName          := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Pedido OrcamentoComposicao.rpt';
          DM.Report.ReportTitle         := 'Orçamento com Composição - Com Cabeçalho';
          DM.Report.WindowStyle.Title   := 'Orçamento com Composição - Com Cabeçalho';
        end
      else
        begin
          DM.Report.ReportName          := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Pedido OrcamentoComposicao sem cabecalho.rpt';
          DM.Report.ReportTitle         := 'Orçamento com Composição - Sem Cabeçalho';
          DM.Report.WindowStyle.Title   := 'Orçamento com Composição - Sem Cabeçalho';
        end;
      if Dm.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString <> '' then
        begin
          DM.Report.Output          := toPrinter;
          DM.Report.Printer.Name    := Dm.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString;
        end
      else
        DM.Report.Output            := toWindow;

      DM.Report.Execute;
    end
  else
    Informa('O Pedido/Orçamento com Composição não foi encontrado, verifique suas configurações!');

end;

procedure TFormCadastroPedidoVendaComGrade.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  If DataSet.FieldByName('CLIEA13ID').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('CLIENTE',['CLIEA13ID'],[SQLTemplateCLIEA13ID.asString],1) Then
        Begin
          if DM.SQLTemplate.FindField('PLRCICOD').AsVariant <> null then
            DataSet.FieldByName('PlanoClienteLookUp').AsVariant          := DM.SQLTemplate.FindField('PLRCICOD').AsVariant;

          if DM.SQLTemplate.FindField('VENDICOD').AsVariant <>  null then
            DataSet.FieldByName('VendedorClienteLookUp').AsVariant       := DM.SQLTemplate.FindField('VENDICOD').AsVariant;

          DataSet.FieldByName('ClienteLookUp').AsVariant            := DM.SQLTemplate.FindField('CLIEA60RAZAOSOC').AsVariant;
          DataSet.FieldByName('ClienteEnderecoLookUp').AsVariant    := DM.SQLTemplate.FindField('CLIEA60ENDRES').AsVariant;
          DataSet.FieldByName('ClienteEstadoLookUp').AsVariant      := DM.SQLTemplate.FindField('CLIEA2UFRES').AsVariant;
          DataSet.FieldByName('ClienteCEPLookUp').AsVariant         := DM.SQLTemplate.FindField('CLIEA8CEPRES').AsVariant;
          DataSet.FieldByName('ClienteCidadeLookUp').AsVariant      := DM.SQLTemplate.FindField('CLIEA60CIDRES').AsVariant;
          DataSet.FieldByName('ClienteBairroLookUp').AsVariant      := DM.SQLTemplate.FindField('CLIEA60BAIRES').AsVariant;
          DataSet.FieldByName('ClienteFoneLookUp').AsVariant        := DM.SQLTemplate.FindField('CLIEA15FONE1').AsVariant;
          DataSet.FieldByName('ClienteTabelaPrecoLookUp').AsVariant := DM.SQLTemplate.FindField('TPRCICOD').AsVariant;

          if DM.SQLTemplate.FindField('PLRCICOD').AsVariant <> null then
            DataSet.FieldByName('PlanoClienteLookUp').AsVariant          := DM.SQLTemplate.FindField('PLRCICOD').AsVariant;

          if DM.SQLTemplate.FindField('VENDICOD').AsVariant <>  null then
            DataSet.FieldByName('VendedorClienteLookUp').AsVariant       := DM.SQLTemplate.FindField('VENDICOD').AsVariant;

          If DM.SQLTemplate.FindField('CLIEA5FISJURID').asString = 'F' Then
            Begin
              DataSet.FieldByName('ClienteCPF').AsVariant    := DM.SQLTemplate.FindField('CLIEA11CPF').AsVariant;
              DataSet.FieldByName('ClienteRG').AsVariant     := DM.SQLTemplate.FindField('CLIEA10RG').AsVariant;
              DataSet.FieldByName('ClienteCPF').EditMask     := '000.000.000-00;0;_';
            End
          Else
            Begin
              DataSet.FieldByName('ClienteCGC').AsVariant    := DM.SQLTemplate.FindField('CLIEA14CGC').AsVariant;
              DataSet.FieldByName('ClienteIE').AsVariant     := DM.SQLTemplate.FindField('CLIEA20IE').AsVariant;
              DataSet.FieldByName('ClienteCGC').EditMask     := '00.000.000/0000-00;0;_';
            End;
        End
      Else
        begin
          DataSet.FieldByName('ClienteLookUp').asString     := MensagemLookUp;
        end;
    End
  Else
    DataSet.FieldByName('ClienteLookUp').AsVariant := NULL;

End;


procedure TFormCadastroPedidoVendaComGrade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DataSetLookup := Nil;
end;

procedure TFormCadastroPedidoVendaComGrade.SpeedButton1Click(Sender: TObject);
var
Clausula : String;
CampoOrdem : TField;
begin
  inherited;
  Clausula := '';
  if ComboCliente.Value <> '' then
    Clausula := 'CLIEA13ID = "' + ComboCliente.Value + '" ';

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

procedure TFormCadastroPedidoVendaComGrade.MnTrocarStatusparaAbertoClick(
  Sender: TObject);
begin
  inherited;
  if SQLTemplatePDVDCSTATUS.Value <> 'C' then
    begin
      SQLTemplate.Edit;
      SQLTemplatePDVDCSTATUS.Value := 'A';
      SQLTemplate.Post;
    end
  else
    ShowMessage('O pedido está Cancelado, Verifique!');
end;

end.
