unit TelaConhecimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, StdCtrls, DB,
  DBCtrls, RXCtrls, DBTables, RxQuery, Grids, DBGrids, RxLookup, Mask,
  ToolEdit, ConerBtn, CurrEdit, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaConhecimento = class(TFormTelaGeralTEMPLATE)
    SQLNotasCompra: TRxQuery;
    SQLClientesCompras: TRxQuery;
    SQLFreteNotaCompra: TRxQuery;
    SQLFrete: TRxQuery;
    Panel3: TPanel;
    Panel2: TPanel;
    Panel1: TPanel;
    SQLClientes: TRxQuery;
    DSSQLFreteNotaCompra: TDataSource;
    SQLClientesComprasCLIEA13ID: TStringField;
    SQLClientesComprasCLIEA60RAZAOSOC: TStringField;
    DSSQLClientesCompras: TDataSource;
    SQLFreteNotaCompraFRNCICOD: TIntegerField;
    SQLFreteNotaCompraNOCPA30NRO: TStringField;
    SQLFreteNotaCompraFRETA13ID: TStringField;
    SQLMaxCount: TRxQuery;
    SQLMaxCountMAX: TIntegerField;
    DBgridMaster: TDBGrid;
    tbNotasCliente: TTable;
    tbNotasClienteNota: TIntegerField;
    tbNotasClienteIncluir: TBooleanField;
    tbNotasClienteDataEmissao: TDateField;
    tbNotasClienteDataRecebimento: TDateField;
    tbNotasClienteTotalItens: TIntegerField;
    tbNotasClienteSomaItens: TIntegerField;
    tbNotasClienteCodCliente: TStringField;
    SQLFreteFRETA13ID: TStringField;
    SQLFreteEMPRICOD: TIntegerField;
    SQLFreteTERMICOD: TIntegerField;
    SQLFreteFRETICOD: TIntegerField;
    SQLFreteCLIEA13IDREMETE: TStringField;
    SQLFreteCLIEA13IDDESTINO: TStringField;
    SQLFreteCLIEA13IDCONSIG: TStringField;
    SQLFreteFRETCPAGO: TStringField;
    SQLFreteFRETTOBS: TStringField;
    SQLFreteFRETN2VLR: TBCDField;
    SQLFreteFRETN2VLRTOTAL: TBCDField;
    SQLFreteFRETN3QTDETOTAL: TBCDField;
    SQLFreteFRETN2BASECALCULO: TBCDField;
    SQLFreteFRETN2ICMS: TBCDField;
    SQLFretePLCTA15COD: TStringField;
    SQLFretePLRCICOD: TIntegerField;
    SQLFreteFRETCSTATUS: TStringField;
    SQLFreteREGISTRO: TDateTimeField;
    SQLFretePENDENTE: TStringField;
    SQLFreteFRETN2VLRCOMISSAO: TBCDField;
    SQLFreteFUNCA13ID: TStringField;
    SQLFreteVEICA13ID: TStringField;
    DSSQLFrete: TDataSource;
    btGerarConhecimento: TSpeedButton;
    btPesquisa: TSpeedButton;
    DSSQLItens: TDataSource;
    SQLNotasCompraNOCPA13ID: TStringField;
    SQLNotasCompraEMPRICOD: TIntegerField;
    SQLNotasCompraNOCPICOD: TIntegerField;
    SQLNotasCompraFORNICOD: TIntegerField;
    SQLNotasCompraNOCPA4ANO: TStringField;
    SQLNotasCompraNOCPA5SERIE: TStringField;
    SQLNotasCompraNOCPA30NRO: TStringField;
    SQLNotasCompraNOCPCSTATUS: TStringField;
    SQLNotasCompraPDCPA13ID: TStringField;
    SQLNotasCompraOPESICOD: TIntegerField;
    SQLNotasCompraNOCPDCANCELAMENTO: TDateTimeField;
    SQLNotasCompraPLPGICOD: TIntegerField;
    SQLNotasCompraPLCTA15COD: TStringField;
    SQLNotasCompraNOCPDEMISSAO: TDateTimeField;
    SQLNotasCompraNOCPDRECEBIMENTO: TDateTimeField;
    SQLNotasCompraNOCPN3SOMAITENS: TBCDField;
    SQLNotasCompraNOCPN3TOTITENS: TBCDField;
    SQLNotasCompraNOCPN3TOTDESC: TBCDField;
    SQLNotasCompraNOCPN3VLRTOTNOTA: TBCDField;
    SQLNotasCompraNOCPN3VLRBASCALICM: TBCDField;
    SQLNotasCompraNOCPN3VLRICMS: TBCDField;
    SQLNotasCompraNOCPN3VLRBCICMSSUB: TBCDField;
    SQLNotasCompraNOCPN3VLRICMSSUB: TBCDField;
    SQLNotasCompraNOCPN3VLRFRETE: TBCDField;
    SQLNotasCompraNOCPN3VLRSEGURO: TBCDField;
    SQLNotasCompraNOCPN3VLROUTRADESP: TBCDField;
    SQLNotasCompraNOCPN3VLRIPI: TBCDField;
    SQLNotasCompraNOCPN3VLRDESC: TBCDField;
    SQLNotasCompraCFOPA5COD: TStringField;
    SQLNotasCompraNOCPN3PERCICMSFRET: TBCDField;
    SQLNotasCompraNOCPA254OBS: TMemoField;
    SQLNotasCompraTRANICOD: TIntegerField;
    SQLNotasCompraNOCPA5TIPOFRETE: TStringField;
    SQLNotasCompraPENDENTE: TStringField;
    SQLNotasCompraREGISTRO: TDateTimeField;
    SQLNotasCompraEMPRICODDEST: TIntegerField;
    SQLNotasCompraCLIEA13ID: TStringField;
    SQLNotasCompraUSUAA60LOGIN: TStringField;
    SQLItens: TRxQuery;
    SQLItensNOCPA13ID: TStringField;
    SQLItensNOCIIITEM: TIntegerField;
    SQLItensPRODICOD: TIntegerField;
    SQLItensNOCIN3QTDBONIF: TBCDField;
    SQLItensNOCIN3CAPEMBAL: TBCDField;
    SQLItensNOCIN3QTDEMBAL: TBCDField;
    SQLItensNOCIN3QTDEPED: TBCDField;
    SQLItensNOCIN3TOTPED: TBCDField;
    SQLItensNOCIN3VLREMBAL: TBCDField;
    SQLItensNOCIN3VLRUNIT: TBCDField;
    SQLItensNOCIN3VLRDESC: TBCDField;
    SQLItensNOCIN3PERCDESC: TBCDField;
    SQLItensNOCIN3VLRICMS: TBCDField;
    SQLItensNOCIN3PERCICMS: TBCDField;
    SQLItensNOCIN3VLRSUBST: TBCDField;
    SQLItensNOCIN3VLRIPI: TBCDField;
    SQLItensNOCIN3PERCIPI: TBCDField;
    SQLItensNOCIN3VLRCUSTOMED: TBCDField;
    SQLItensNOCIN3VLRFRETE: TBCDField;
    SQLItensPDCPA13ID: TStringField;
    SQLItensPCITIPOS: TIntegerField;
    SQLItensPENDENTE: TStringField;
    SQLItensREGISTRO: TDateTimeField;
    SQLItensLOTEA30NRO: TStringField;
    tbItensAgerar: TTable;
    DStbItensAgerar: TDataSource;
    tbItensAgerarCod: TFloatField;
    tbItensAgerarProdICod: TStringField;
    tbItensAgerarQtde: TFloatField;
    tbItensAgerarVlrUnit: TFloatField;
    tbItensAgerarVlrIcms: TFloatField;
    tbItensAgerarPercIcms: TFloatField;
    tbItensAgerarVlrIpi: TFloatField;
    tbItensAgerarPercIpi: TFloatField;
    tbItensAgerarNota: TFloatField;
    tbItensAgerarIncluir: TBooleanField;
    SQLFreteItens: TRxQuery;
    SQLFreteItensFRETA13ID: TStringField;
    SQLFreteItensFRITICOD: TIntegerField;
    SQLFreteItensPRODICOD: TIntegerField;
    SQLFreteItensFRITINOTAFISCAL: TIntegerField;
    SQLFreteItensPRODN2VLR: TBCDField;
    SQLFreteItensFRITN2ICMS: TBCDField;
    SQLFreteItensFRITN2VLRICMS: TBCDField;
    SQLFreteItensUNIDICOD: TIntegerField;
    SQLFreteItensFRITN3QTDE: TBCDField;
    SQLFreteItensFRITA30ESPECIE: TStringField;
    SQLFreteItensFRITA30MARCA: TStringField;
    SQLFreteItensREGISTRO: TDateTimeField;
    SQLFreteItensPENDENTE: TStringField;
    DStbNotasCliente: TDataSource;
    tbNotasClienteItensEnviado: TIntegerField;
    SQLProdutos: TRxQuery;
    tbItensAgerarPRODA60DESCR: TStringField;
    SQLExec: TRxQuery;
    PanelItensFrete: TPanel;
    Label5: TLabel;
    Panel7: TPanel;
    btOk: TConerBtn;
    DBGridItensFrete: TDBGrid;
    btCancela: TConerBtn;
    SQLItensPRODA60DESCR: TStringField;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DBLCliente: TDBLookupComboBox;
    Label3: TLabel;
    Label4: TLabel;
    De: TDateEdit;
    Label1: TLabel;
    Ate: TDateEdit;
    CheckEmissao: TCheckBox;
    SQLFuncionario: TRxQuery;
    SQLFuncionarioFUNCA13ID: TStringField;
    SQLFuncionarioEMPRICOD: TIntegerField;
    SQLFuncionarioTERMICOD: TIntegerField;
    SQLFuncionarioFUNCICOD: TIntegerField;
    SQLFuncionarioFUNCA60NOME: TStringField;
    SQLFuncionarioFUNCCAUTONOMO: TStringField;
    SQLFuncionarioPENDENTE: TStringField;
    SQLFuncionarioREGISTRO: TDateTimeField;
    SQLFuncionarioFUNCA11CPF: TStringField;
    SQLFuncionarioFUNCA14CNPJ: TStringField;
    SQLFuncionarioFUNCA15INSS: TStringField;
    SQLFuncionarioFUNCA60ENDRES: TStringField;
    SQLFuncionarioFUNCN2PERCCOMISSAO: TBCDField;
    SQLFuncionarioVEICA13ID: TStringField;
    DSSQLFuncionario: TDataSource;
    SQLVeiculo: TRxQuery;
    DSSQLVeiculo: TDataSource;
    SQLVeiculoVEICA13ID: TStringField;
    SQLVeiculoVEICA7PLACA: TStringField;
    SQLVeiculoVEICA60DESCR: TStringField;
    SQLVeiculoVEICA3OMARCA: TStringField;
    tbItensAgerarQtdeNotaDisp: TFloatField;
    GroupBox3: TGroupBox;
    DBLDestinatario: TDBLookupComboBox;
    DSSQLClientes: TDataSource;
    Label15: TLabel;
    Label16: TLabel;
    SQLClientesCLIEA13ID: TStringField;
    SQLClientesCLIEA60RAZAOSOC: TStringField;
    SQLItensNOCIN2ITENSENVIADOS: TBCDField;
    Label14: TLabel;
    Splitter1: TSplitter;
    gbTipoFrete: TGroupBox;
    RBCif: TRadioButton;
    RBFob: TRadioButton;
    Label12: TLabel;
    Label13: TLabel;
    ValorFrete: TCurrencyEdit;
    PercICMS: TCurrencyEdit;
    MemoOBS: TMemo;
    Label7: TLabel;
    SQLItensNota: TRxQuery;
    DSSQLITENSNOTA: TDataSource;
    DBGrid1: TDBGrid;
    SQLItensNotaNOCPA13ID: TStringField;
    SQLItensNotaNOCIIITEM: TIntegerField;
    SQLItensNotaPRODICOD: TIntegerField;
    SQLItensNotaNOCIN3CAPEMBAL: TBCDField;
    SQLItensNotaNOCIN3QTDEMBAL: TBCDField;
    SQLItensNotaNOCIN3QTDEPED: TBCDField;
    SQLItensNotaNOCIN3TOTPED: TBCDField;
    SQLItensNotaNOCIN3VLREMBAL: TBCDField;
    SQLItensNotaNOCIN3VLRUNIT: TBCDField;
    SQLItensNotaNOCIN3VLRDESC: TBCDField;
    SQLItensNotaNOCIN3PERCDESC: TBCDField;
    SQLItensNotaNOCIN3VLRICMS: TBCDField;
    SQLItensNotaNOCIN3PERCICMS: TBCDField;
    SQLItensNotaNOCIN3VLRSUBST: TBCDField;
    SQLItensNotaNOCIN3VLRIPI: TBCDField;
    SQLItensNotaNOCIN3PERCIPI: TBCDField;
    SQLItensNotaNOCIN3VLRCUSTOMED: TBCDField;
    SQLItensNotaNOCIN3VLRFRETE: TBCDField;
    SQLItensNotaPDCPA13ID: TStringField;
    SQLItensNotaREGISTRO: TDateTimeField;
    SQLItensNotaNOCIN2ITENSENVIADOS: TBCDField;
    SQLItensNotaPRODA60DESCR: TStringField;
    DBLookupDestinatario: TRxDBLookupCombo;
    DBLConsignatario: TRxDBLookupCombo;
    SQLDestinatariosCompra: TRxQuery;
    DSSQLDestinatariosCompra: TDataSource;
    SQLDestinatariosCompraCLIEA13IDDESTINO: TStringField;
    SQLDestinatariosCompraCLIEA60RAZAOSOC: TStringField;
    SQLItensNotaCLIEA13ID: TStringField;
    SQLNotasCompraFUNCA13ID: TStringField;
    SQLNotasCompraCLIEA13IDDESTINO: TStringField;
    SQLItensNotaCLIEA13IDDESTINO: TStringField;
    Panel4: TPanel;
    Panel5: TPanel;
    TituloGridNotas: TLabel;
    TituloGridItensNota: TLabel;
    SQLItensNotaNOCPA30NRO: TStringField;
    AguardePanel: TPanel;
    AguardeLabel: TLabel;
    AguardeTitulo: TLabel;
    tbItensAgerarFuncionario: TStringField;
    SQLItensFUNCA13ID: TStringField;
    tbItensAgerarNOCPA13ID: TStringField;
    tbItensAgerarFUNCA13ID: TStringField;
    tbItensAgerarFUNCN2PERCCOMISSAO: TFloatField;
    tbItensAgerarFUNCCAUTONOMO: TStringField;
    tbItensAgerarCLIEA13IDDESTINO: TStringField;
    tbItensAgerarCLIEA13ID: TStringField;
    tbItensAgerarCLIEA60RAZAOSOCDEST: TStringField;
    tbItensAgerarCLIEA60RAZAOSOC: TStringField;
    tbItensAgerarFUNCA60NOME: TStringField;
    tbItensAgerarNOCIN3QTDEMBAL: TFloatField;
    tbNotasClienteCLIEA13IDDESTINO: TStringField;
    tbNotasClienteCLIEA60RAZAOSOC: TStringField;
    SQLItensNotaNOCIN3QTDBONIF: TBCDField;
    SQLItensNotaPCITIPOS: TIntegerField;
    SQLItensNotaPENDENTE: TStringField;
    SQLItensNotaLOTEA30NRO: TStringField;
    SQLItensNotaNOCIN2VLRCOMISSAO: TBCDField;
    SQLItensNOCIN2VLRCOMISSAO: TBCDField;
    tbItensAgerarNOCIN2VLRCOMISSAO: TFloatField;
    ProcuraRemetente: TSpeedButton;
    btPesquisaDestanarioFiltro: TSpeedButton;
    btProcuraDestinatario: TSpeedButton;
    SQLClientesEMPRICOD: TIntegerField;
    SQLClientesCLIEICOD: TIntegerField;
    SQLClientesCLIEA5FISJURID: TStringField;
    SQLClientesCLIEA14CGC: TStringField;
    SQLClientesCLIEA20IE: TStringField;
    SQLClientesCLIEA11CPF: TStringField;
    SQLClientesCLIEA10RG: TStringField;
    SQLClientesCLIEA60NOMEFANT: TStringField;
    SQLClientesCLIEA60CONTATO: TStringField;
    SQLClientesCLIEA15FONE1: TStringField;
    SQLClientesCLIEA15FONE2: TStringField;
    SQLClientesCLIEA15FAX: TStringField;
    SQLClientesCLIEA30OUTROSDOC: TStringField;
    SQLClientesCLIECSEXO: TStringField;
    SQLClientesCLIEA60PROFISSAO: TStringField;
    SQLClientesCLIEA60ENDRES: TStringField;
    SQLClientesCLIEA60BAIRES: TStringField;
    SQLClientesCLIEA60CIDRES: TStringField;
    SQLClientesCLIEA2UFRES: TStringField;
    SQLClientesCLIEA8CEPRES: TStringField;
    SQLClientesCLIEA60EMAIL: TStringField;
    SQLClientesCLIEA60URL: TStringField;
    SQLClientesCLIEN2RENDA: TBCDField;
    SQLClientesCLIEN2LIMITECRED: TBCDField;
    SQLClientesCLIEA60NOMEPAI: TStringField;
    SQLClientesCLIEA60NOMEMAE: TStringField;
    SQLClientesCLIEDNASC: TDateTimeField;
    SQLClientesCLIECESTADOCIVIL: TStringField;
    SQLClientesCLIEA60CONJUGE: TStringField;
    SQLClientesCLIEA60CONJUGEMAE: TStringField;
    SQLClientesCLIEN2CONJUGERENDA: TBCDField;
    SQLClientesCLIEDNASCCONJUGE: TDateTimeField;
    SQLClientesCLIEA60CONJUGEEMPR: TStringField;
    SQLClientesCLIEA15CONJFONEMPR: TStringField;
    SQLClientesCLIEA60EMPRESA: TStringField;
    SQLClientesCLIEA60ENDEMPRESA: TStringField;
    SQLClientesCLIEA60BAIEMPRESA: TStringField;
    SQLClientesCLIEA60CIDEMPRESA: TStringField;
    SQLClientesCLIEA2UFEMPRESA: TStringField;
    SQLClientesCLIEA8CEPEMPRESA: TStringField;
    SQLClientesCLIEDAMISEMPRESA: TDateTimeField;
    SQLClientesCLIEA15FONEEMPRESA: TStringField;
    SQLClientesBANCA5COD: TStringField;
    SQLClientesCLIEA5AGENCIA: TStringField;
    SQLClientesCLIEA10CONTA: TStringField;
    SQLClientesCLIEA60TITULAR: TStringField;
    SQLClientesCLIEDABERTCONTA: TDateTimeField;
    SQLClientesTPCLICOD: TIntegerField;
    SQLClientesMTBLICOD: TIntegerField;
    SQLClientesPROFICOD: TIntegerField;
    SQLClientesVENDICOD: TIntegerField;
    SQLClientesCLIEDCAD: TDateTimeField;
    SQLClientesCLIEDPRICOMPRA: TDateTimeField;
    SQLClientesCLIEDULTCOMPRA: TDateTimeField;
    SQLClientesCLIEA254PATHFOTO: TStringField;
    SQLClientesCLIECRECAVISATRASO: TStringField;
    SQLClientesCLIEA30NATURALIDADE: TStringField;
    SQLClientesCLIECRECEBECARTAO: TStringField;
    SQLClientesCLIEDENVCARTIMP: TDateTimeField;
    SQLClientesCLIEDRETCARTIMP: TDateTimeField;
    SQLClientesCLIEDENVCARTCLI: TDateTimeField;
    SQLClientesCLIEA10CODCONV: TStringField;
    SQLClientesCLIEA10CODANT: TStringField;
    SQLClientesCLIEA20NROCARTCRED: TStringField;
    SQLClientesPENDENTE: TStringField;
    SQLClientesREGISTRO: TDateTimeField;
    SQLClientesCLIEA35NROCARTCRED: TStringField;
    SQLClientesCLIEA60EMAILCONJUG: TStringField;
    SQLClientesCLIEDCASAMENTO: TDateTimeField;
    SQLClientesTPRCICOD: TIntegerField;
    SQLClientesCLIEA60ENDCOB: TStringField;
    SQLClientesCLIEA60BAICOB: TStringField;
    SQLClientesCLIEA60CIDCOB: TStringField;
    SQLClientesCLIEA2UFCOB: TStringField;
    SQLClientesCLIEA8CEPCOB: TStringField;
    SQLClientesPLRCICOD: TIntegerField;
    SQLClientesCLIEA30TEMPOMORADIA: TStringField;
    SQLClientesCLIECCASAPROPRIA: TStringField;
    SQLClientesComprasCLIEA14CGC: TStringField;
    SQLClientesComprasCLIEA60CONTATO: TStringField;
    SQLClientesComprasCLIEA15FONE1: TStringField;
    SQLClientesComprasCLIEA60CIDEMPRESA: TStringField;
    SQLClientesComprasCLIEA60ENDEMPRESA: TStringField;
    SQLClientesComprasCLIEA2UFEMPRESA: TStringField;
    SQLDestinatariosCompraCLIEA14CGC: TStringField;
    SQLDestinatariosCompraCLIEA60CONTATO: TStringField;
    SQLDestinatariosCompraCLIEA15FONE1: TStringField;
    SQLDestinatariosCompraCLIEA60CIDRES: TStringField;
    SQLDestinatariosCompraCLIEA60ENDRES: TStringField;
    SQLDestinatariosCompraCLIEA2UFRES: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure DBgridMasterColExit(Sender: TObject);
    procedure DBgridMasterColEnter(Sender: TObject);
    procedure DBgridMasterDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBgridMasterKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SaveBoolean(Grid : TDBGrid) ;
    procedure btPesquisaClick(Sender: TObject);
    procedure DeChange(Sender: TObject);
    procedure btGerarConhecimentoClick(Sender: TObject);
    procedure SQLFreteItensBeforePost(DataSet: TDataSet);
    procedure DBGridItensFreteCellClick(Column: TColumn);
    procedure DBGridItensFreteColEnter(Sender: TObject);
    procedure DBGridItensFreteColExit(Sender: TObject);
    procedure DBGridItensFreteDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGridItensFreteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btOkClick(Sender: TObject);
    procedure Label5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btCancelaClick(Sender: TObject);
    procedure MemoOBSKeyPress(Sender: TObject; var Key: Char);
    procedure SQLFreteBeforePost(DataSet: TDataSet);
    procedure tbItensAgerarBeforePost(DataSet: TDataSet);
    procedure tbItensAgerarBeforeInsert(DataSet: TDataSet);
    procedure DStbNotasClienteStateChange(Sender: TObject);
    procedure DStbNotasClienteDataChange(Sender: TObject; Field: TField);
    procedure DBgridMasterDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DSSQLClientesComprasDataChange(Sender: TObject;
      Field: TField);
    procedure SQLItensNotaAfterClose(DataSet: TDataSet);
    procedure SQLItensNotaBeforeOpen(DataSet: TDataSet);
    procedure SQLItensNotaAfterOpen(DataSet: TDataSet);
    procedure DBLDestinatarioExit(Sender: TObject);
    procedure tbNotasClienteAfterOpen(DataSet: TDataSet);
    procedure tbNotasClienteBeforeClose(DataSet: TDataSet);
    procedure ProcuraRemetenteClick(Sender: TObject);
    procedure btPesquisaDestanarioFiltroClick(Sender: TObject);
    procedure btProcuraDestinatarioClick(Sender: TObject);
    procedure DSSQLDestinatariosCompraDataChange(Sender: TObject;
      Field: TField);
    procedure DBLClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupDestinatarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLDestinatarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConhecimento: TFormTelaConhecimento;
  OriginalOptions : TDBGridOptions;
  OriginalOptionsItensFrete : TDBGridOptions;
//  RectCell : TRect;
  HaNotasSelecionadas : Boolean;
implementation

uses UnitLibrary, dateutils, DataModulo, Principal, PrincipalTemplate,
  Types, VarSYS, TelaConsultaCliente, FormResources, TelaConsultaGeral;

{$R *.dfm}

function CommaToPoint(Value : Double) : String;
begin
    Result := FormatFloat('###0.00',Value);
    Result[Pos(',',Result)] := '.';
end;


procedure TFormTelaConhecimento.SaveBoolean(Grid : TDBGrid) ;

begin
  Grid.Options := Grid.Options - [dgEditing];
  Grid.SelectedField.Dataset.Edit ;
  Grid.SelectedField.DataSet.FieldByName('Incluir').AsBoolean := not Grid.SelectedField.DataSet.FieldByName('Incluir').AsBoolean;
  Grid.SelectedField.Dataset.Post;
end ;

procedure TFormTelaConhecimento.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLClientes.Active         then SQLClientes.Active := true;
  if not SQLClientesCompras.Active  then SQLClientesCompras.Active := true;
  if not SQLFuncionario.Active      then SQLFuncionario.Active := True;
end;

procedure TFormTelaConhecimento.DBgridMasterColExit(Sender: TObject);
begin
  inherited;
  if (DBgridMaster.SelectedField.DataType = ftBoolean) then
    DBgridMaster.Options := OriginalOptions;
end;

procedure TFormTelaConhecimento.DBgridMasterColEnter(Sender: TObject);
begin
  inherited;
   if DBgridMaster.SelectedField.DataType = ftBoolean then
      begin
        OriginalOptions := DBgridMaster.Options ;
        DBgridMaster.Options := DBgridMaster.Options - [dgEditing] ;
      end;
end;

procedure AtualizaBanco (DataSet : TRxQuery ;Tabela, Campos, Condicao : string);
begin
   DataSet.Close;
   DataSet.SQL.Text := 'Update '+Tabela+' set '+Campos+' where '+Condicao;
   DataSet.ExecSQL;
end;

procedure TFormTelaConhecimento.DBgridMasterDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
Const
  StateCheck  : array[Boolean] of Integer = (DFCS_BUTTONCHECK,
                                             DFCS_BUTTONCHECK or DFCS_CHECKED);
begin
  inherited;
  if not tbNotasCliente.IsEmpty then
    begin
      if  Column.Index > 0 then
        if (Column.Field.DataType = ftBoolean) then
          begin
            DBgridMaster.Canvas.FillRect(Rect);
            DrawFrameControl(DBgridMaster.Canvas.Handle,
                             Rect,
                             DFC_BUTTON ,
                             StateCheck[Column.Field.AsBoolean] + DFCS_FLAT);
          end;
    end;
end;

procedure TFormTelaConhecimento.DBgridMasterKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_SPACE ) then
     SaveBoolean(DBgridMaster);

  if (Key = VK_Return) and (tbNotasCliente.State in DSEditModes) then
     tbNotasCliente.Post;
end;

procedure TFormTelaConhecimento.btPesquisaClick(Sender: TObject);
begin
  inherited;
  DBLCliente.SetFocus;
  if DBLCliente.KeyValue = null then
    begin
      DBLCliente.SetFocus;
      raise Exception.Create('Você deve escolher um cliente.');
    end;
  try
    tbNotasCliente.Close;
    tbNotasCliente.DeleteTable;
    tbNotasCliente.CreateTable;
    tbNotasCliente.Open;
  except
    begin
       tbNotasCliente.CreateTable;
       tbNotasCliente.Open;
    end;
  end;

   if DBLCliente.Text <> '' then
     begin
       SQLNotasCompra.Close;
       SQLNotasCompra.SQL.Text := ' select * from NOTACOMPRA where CLIEA13ID = '''+DBLCliente.KeyValue+''' and NOCPA13ID in (select NOCPA13ID from NOTACOMPRAITEM where NOCIN2ITENSENVIADOS < NOCIN3QTDEMBAL)';
       if DBLookupDestinatario.KeyValue <> Null then
          begin
            SQLNotasCompra.SQL.Add(' and CLIEA13IDDESTINO ='''+DBLookupDestinatario.KeyValue+'''');
          end;
       if not CheckEmissao.Checked then
         begin
           try
             StrToDate(de.Text);
           except
             on EConvertError do
               begin
                 de.SetFocus;
                 raise Exception.Create('Informe uma data valida ou marque, Desconsiderar Data de Emissão.');
               end;
           end;
           SQLNotasCompra.SQL.Add(' and NOCPDEMISSAO >= '''+FormatDateTime('mm/dd/yyyy',de.Date)+''' and NOCPDEMISSAO  <= '''+FormatDateTime('mm/dd/yyyy',ate.Date)+''' order by NOCPA30NRO, NOCPDEMISSAO ');
         end;
       SQLNotasCompra.Open;
       if not SQLNotasCompra.IsEmpty then
         begin
           SQLNotasCompra.First;
           AguardePanel.Left := (Self.Width - AguardePanel.Width) div 2;
           AguardePanel.Top  := (Self.Height - AguardePanel.Height) div 2;
           AguardeLabel.Caption := 'Pesquisando Notas do Cliente ' + char(#13) + DBLCliente.Text;
           AguardePanel.Visible := True;
           Application.ProcessMessages;
           while not SQLNotasCompra.Eof do
             begin
               tbNotasCliente.Append;
               tbNotasCliente.FieldByName('Nota').AsInteger                 := SQLNotasCompra.Fieldbyname('NOCPA30NRO').AsInteger;
               tbNotasCliente.FieldByName('DataEmissao').AsDateTime         := SQLNotasCompra.Fieldbyname('NOCPDEMISSAO').AsDateTime;
               tbNotasCliente.FieldByName('DataRecebimento').AsDateTime     := SQLNotasCompra.Fieldbyname('NOCPDRECEBIMENTO').AsDateTime;
               tbNotasCliente.FieldByName('TotalItens').AsInteger           := SQLNotasCompra.Fieldbyname('NOCPN3TOTITENS').AsInteger;
               tbNotasCliente.FieldByName('CodCliente').AsString            := SQLNotasCompra.Fieldbyname('CLIEA13ID').AsString;
               tbNotasCliente.FieldByName('SomaItens').AsInteger            := SQLNotasCompra.Fieldbyname('NOCPN3SOMAITENS').AsInteger;
               Application.ProcessMessages;
               SQLNotasCompra.Next;
             end;
           AguardePanel.Visible := False;
         end;
    end;
end;

procedure TFormTelaConhecimento.DeChange(Sender: TObject);
begin
  inherited;
  ate.Date := de.Date;
end;

procedure TFormTelaConhecimento.btGerarConhecimentoClick(Sender: TObject);
begin
  inherited;
  if not SQLItens.Active then SQLItens.Active := True;
  OriginalOptionsItensFrete := DBGridItensFrete.Options;
  HaNotasSelecionadas := False;
  try
    FloatToStr(DBLCliente.KeyValue);
  except
    raise Exception.Create('Voce deve informar um cliente, efetuar a pesquisar, selecionar as notas desejadas.'+char(#13)+'depois gerar o conhecimento.'+char(#13)+'Obrigado');
  end;

  if DBLDestinatario.KeyValue = null then
    begin
      Informa('Escolha um Destinatário.');
      DBLDestinatario.SetFocus;
    end
  else
      begin
        if RBCif.Checked or RBFob.Checked then
          begin
            try
            if (StrToFloat(ValorFrete.Text) > 0) then
                StrToFloat(PercICMS.Text)
            else
               raise Exception.Create('');
            except
               on E : EConvertError do
                 begin
                   PercICMS.SetFocus;
                   raise Exception.Create('Informe a alicota de Icms para o transporte.'+char(#13)+'Se não houver por favor indique 0.'+char(#13)+'Obrigado.');
                 end;
               on E : Exception do
                 begin
                   ValorFrete.SetFocus;
                   raise Exception.Create('Informe o valor de ferte para o transporte.'+char(#13)+'Obrigado.');
                 end;
            end;
          end
        else
           begin
             gbTipoFrete.SetFocus;
             raise Exception.Create('Você deve informar o tipo de frete.'+char(#13)+'Obrigado.');
           end;
        if not SQLFuncionario.Active then SQLFuncionario.Active := true;
        PanelItensFrete.Left := (Self.Width - PanelItensFrete.Width) div 2;
        PanelItensFrete.Top  := (Self.Height - PanelItensFrete.Height) div 2;
        try
          tbItensAgerar.Close;
          tbItensAgerar.DeleteTable;
          tbItensAgerar.CreateTable;
          tbItensAgerar.Open;
        except
          tbItensAgerar.CreateTable;
          tbItensAgerar.Open;
        end;
        tbNotasCliente.First;
        AguardePanel.Left := (Self.Width - AguardePanel.Width) div 2;
        AguardePanel.Top  := (Self.Height - AguardePanel.Height) div 2;
        AguardeLabel.Caption := 'Verificando Itens da(s) Nota(s) Selecionada(s).';
        AguardePanel.Visible := True;
        Application.ProcessMessages;
        while not tbNotasCliente.eof do
          begin
            if tbNotasClienteIncluir.Value then
              begin
                HaNotasSelecionadas := True;
                SQLItens.Close;
                SQLItens.SQL.Text := 'select * from NOTACOMPRAITEM where NOCPA13ID in (select NOCPA13ID from NOTACOMPRA where NOCPA30NRO = '''+tbNotasClienteNota.AsString+''' and CLIEA13ID in (select CLIEA13ID from CLIENTE where CLIEA60RAZAOSOC = '''+DBLCliente.Text+'''))';
                SQLItens.Open;
                while not SQLItens.Eof do
                  begin
                    if (SQLItensNOCIN3QTDEMBAL.AsFloat - SQLItensNOCIN2ITENSENVIADOS.AsFloat) > 0  then
                       begin
                         tbItensAgerar.Insert;
                         tbItensAgerarCod.Value                := tbItensAgerar.RecordCount + 1;
                         tbItensAgerarNota.Value               := tbNotasClienteNota.Value;
                         tbItensAgerarQtde.Value               := SQLItensNOCIN3QTDEMBAL.AsFloat - SQLItensNOCIN2ITENSENVIADOS.AsFloat;
                         tbItensAgerarQtdeNotaDisp.Value       := SQLItensNOCIN3QTDEMBAL.AsFloat - SQLItensNOCIN2ITENSENVIADOS.AsFloat;
                         tbItensAgerarProdICod.Value           := SQLItensPRODICOD.AsString;
                         tbItensAgerarVlrUnit.Value            := SQLItensNOCIN3VLRUNIT.AsInteger;
                         tbItensAgerarVlrIcms.Value            := SQLItensNOCIN3VLRICMS.AsInteger;
                         tbItensAgerarPercIcms.Value           := SQLItensNOCIN3PERCICMS.AsInteger;
                         tbItensAgerarVlrIpi.Value             := SQLItensNOCIN3VLRIPI.AsInteger;
                         tbItensAgerarPercIpi.Value            := SQLItensNOCIN3PERCIPI.AsInteger;
                         tbItensAgerarFuncionario.Value        := SQLItensFUNCA13ID.AsString;
                         tbItensAgerarIncluir.AsBoolean        := True;
                         tbItensAgerar.Post;
                         Application.ProcessMessages;
                       end;
                    SQLItens.Next;
                  end;
              end;
              tbNotasCliente.Next;
          end;
        AguardePanel.Visible := False;
        if not HaNotasSelecionadas then
           Informa('Não há notas selecionadas para geração de frete.'+char(#13)+'Por favor selecione as notas que deseja gerar o frete.');
        if not tbItensAgerar.IsEmpty then
           begin
             PanelItensFrete.Visible := true;
             DBGridItensFrete.SetFocus;
           end;
      end;
end;

procedure TFormTelaConhecimento.SQLFreteItensBeforePost(DataSet: TDataSet);
begin
  inherited;
  SQLMaxCount.Close;
  SQLMaxCount.SQL.Text               := 'select max (FRITICOD) from FRETEITEM';
  SQLMaxCount.open;
  SQLFreteItensFRITICOD.AsInteger    := SQLMaxCountMAX.AsInteger + 1;
  SQLFreteItensREGISTRO.AsDateTime        := now;
  SQLFreteItensPENDENTE.AsString     := 'S';
end;

procedure TFormTelaConhecimento.DBGridItensFreteCellClick(Column: TColumn);
begin
  inherited;
    if DBGridItensFrete.SelectedField.DataType = ftBoolean then
      begin
        OriginalOptionsItensFrete := DBGridItensFrete.Options ;
        DBGridItensFrete.Options := DBGridItensFrete.Options - [dgEditing] ;
        SaveBoolean(DBGridItensFrete);
      end
    else
      OriginalOptions := DBGridItensFrete.Options + [dgEditing] ;
end;

procedure TFormTelaConhecimento.DBGridItensFreteColEnter(Sender: TObject);
begin
  inherited;
  if DBGridItensFrete.SelectedField.DisplayName = 'Qtde' then
     begin
       OriginalOptionsItensFrete := DBGridItensFrete.Options;
       DBGridItensFrete.Options := DBGridItensFrete.Options + [dgEditing];
     end
  else  if DBGridItensFrete.SelectedField.DataType = ftBoolean then
     begin
       OriginalOptionsItensFrete := DBGridItensFrete.Options;
       DBGridItensFrete.Options := DBGridItensFrete.Options - [dgEditing];
     end
  else
    OriginalOptionsItensFrete := DBGridItensFrete.Options + [dgEditing] ;
end;

procedure TFormTelaConhecimento.DBGridItensFreteColExit(Sender: TObject);
var Posicao : TBookmark;
begin
  inherited;
  DBGridItensFrete.Options := OriginalOptionsItensFrete - [dgEditing];
    if (tbItensAgerarQtdeNotaDisp.AsFloat < tbItensAgerarQtde.AsFloat) or (tbItensAgerarQtde.AsFloat <= 0.00) then
      begin
        Posicao:= tbItensAgerar.GetBookmark;
        Informa('O valor digitado não é valido.'+char(#13)+'Verifique se o valor não esta maior que o disponivel ou menor/igual a 0.'+char(#13)+'E tente novamente.');
        Abort;
        tbItensAgerar.GotoBookmark(Posicao);
      end;

end;

procedure TFormTelaConhecimento.DBGridItensFreteDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const  StateCheck  : array[Boolean] of Integer = (DFCS_BUTTONCHECK,
                                             DFCS_BUTTONCHECK or DFCS_CHECKED);

begin
  inherited;
  if Column.Index < 4 then
    if (Column.Field.DataType = ftBoolean) then
      begin
        DBGridItensFrete.Canvas.FillRect(Rect);
        DrawFrameControl(DBGridItensFrete.Canvas.Handle,
                         Rect,
                         DFC_BUTTON,
                         StateCheck[Column.Field.AsBoolean] + DFCS_FLAT);
      end;
end;

procedure TFormTelaConhecimento.DBGridItensFreteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if ( Key = VK_SPACE ) and ( DBGridItensFrete.SelectedField.DataType = ftBoolean ) then
    SaveBoolean(DBGridItensFrete);
  if (Key = VK_Return) then
    begin
      key := 40;
    end;
end;

procedure TFormTelaConhecimento.btOkClick(Sender: TObject);
var Enviar    : string;
    QtdeTotal : Longint;
    Next : Integer;
begin
   inherited;
   QtdeTotal := 0;
   HaNotasSelecionadas := false;
   try
     begin
       if tbItensAgerar.Active then tbItensAgerar.Active := true;
       tbItensAgerar.First;
       while not tbItensAgerar.Eof do
         begin
            if tbItensAgerarIncluir.Value then
              begin
                HaNotasSelecionadas := true;
                break;
              end;
            tbItensAgerar.Next;
         end;
       if HaNotasSelecionadas = false then
          begin
             raise Exception.Create('Não há itens selecionados.'+char(#13)+'Por favor selecione os itens desejados ou clique em Cancelar para sair.'+char(#13)+'Obrigado.');
          end;
       PanelItensFrete.Visible := False;
       DM.DB.StartTransaction;  //Começo da transação
       if not tbItensAgerar.IsEmpty then
         begin
           if not SQLFreteItens.Active then SQLFreteItens.Active := true;
           tbNotasCliente.first;
           if not SQLFrete.Active then SQLFrete.Active := true;
           SQLFrete.Append;
           SQLFreteCLIEA13IDREMETE.AsString                 := SQLClientesComprasCLIEA13ID.AsString;
           SQLFreteCLIEA13IDDESTINO.AsString                := SQLClientesComprasCLIEA13ID.AsString;
           if RBCif.Checked then SQLFreteFRETCPAGO.AsString := 'S'
           else SQLFreteFRETCPAGO.AsString                  := 'N';
           SQLFreteFRETTOBS.AsString                        := MemoOBS.Text;
           SQLFrete.Post;
           while not tbNotasCliente.Eof do
             begin
               if tbNotasClienteIncluir.AsBoolean then
                 begin
                   tbItensAgerar.first;
                   while not tbItensAgerar.eof do
                     begin
                       if tbItensAgerarIncluir.AsBoolean and (tbNotasClienteNota.AsString = tbItensAgerarNota.AsString) then  //Se a Nota esta selecionada e é igual a seleção atual
                         begin                                                                                                //Então ele vai incluir os itens no FreteItens e por Sim na inclusão da nota
                           SQLFreteItens.Append;                                                                              //no frete, se nenhum item da nota estiver selecionado a nota não é incluida.
                           SQLFreteItensFRETA13ID.AsString             := SQLFreteFRETA13ID.AsString;
                           SQLFreteItensPRODICOD.AsInteger             := tbItensAgerarProdICod.AsInteger;
                           SQLFreteItensFRITINOTAFISCAL.AsString       := tbItensAgerarNota.AsString;
                           SQLFreteItensPRODN2VLR.AsInteger            := tbItensAgerarVlrUnit.AsInteger;
                           SQLFreteItensFRITN2ICMS.AsInteger           := tbItensAgerarVlrIcms.AsInteger;
                           SQLFreteItensFRITN3QTDE.AsInteger           := tbItensAgerarQtde.AsInteger;
                           AtualizaBanco(SQLExec,'NOTACOMPRAITEM',' NOCIN2ITENSENVIADOS = '+ConvFloatToStr(tbItensAgerarQtde.AsFloat) +' + NOCIN2ITENSENVIADOS ', ' NOCPA13ID in (select NOCPA13ID from NOTACOMPRA where NOCPA30NRO = '+SQLFreteItensFRITINOTAFISCAL.AsString+') and PRODICOD = ' +SQLFreteItensPRODICOD.AsString);
                           Application.ProcessMessages;
                           QtdeTotal := QtdeTotal + tbItensAgerarQtde.AsInteger;
                           SQLFreteItens.Post;
                           Enviar := 'S';

{                          ///Comissão  Esta sendo gerada na Nota De Compra - Itens / Gravar
                           SQLExec.Close;
                           SQLExec.SQL.Text := 'select MAX(FUCCICOD) from FUNCIONARIOCONTACORRENTE';
                           SQLExec.Open;
                           Next := SQLExec.FieldByName('MAX').AsInteger;
                           SQLExec.Close;
                           SQLExec.SQL.Text := ('INSERT INTO FUNCIONARIOCONTACORRENTE(FUNCA13ID,FUCCICOD,FUCCN2VLRDEBITO,FUCCN2VLRCREDITO,OPFUICOD,PENDENTE,REGISTRO,FUCCN2VLRTOTREC,FUCCN2VLRULTREC,FUCCDLANCAMENTO,NOCPA13ID)');
                           SQLExec.SQL.Add('VALUES (''' + tbItensAgerarFuncionario.AsString + ''', '+IntToStr(Next + 1)+' ,0,');
                           if tbItensAgerarFUNCCAUTONOMO.AsString = 'A' then
                             SQLExec.SQL.Add(CommaToPoint((tbItensAgerarQtde.AsFloat * tbItensAgerarNOCIN2VLRCOMISSAO.AsFloat)) + ',')
                           else
                             SQLExec.SQL.Add(CommaToPoint((tbItensAgerarQtde.AsFloat * tbItensAgerarNOCIN2VLRCOMISSAO.AsFloat) * (tbItensAgerarFUNCN2PERCCOMISSAO.AsFloat / 100)) + ',');
                           if not DM.SQLConfigTransportadora.Active then DM.SQLConfigTransportadora.Active := true;
                           SQLExec.SQL.Add(DM.SQLConfigTransportadoraCFTROPFUICODCREDITO.AsString + ',"S","' + FormatDateTime('mm/dd/yyyy',Now) + '",0,0,"' + FormatDateTime('mm/dd/yyyy',Now) + '",'''+tbItensAgerarNOCPA13ID.AsString+''');');
                           SQLExec.ExecSQL;}
                         end;
                       tbItensAgerar.next;
                     end;
                 end;
               if enviar = 'S' then
                 begin
                   if not SQLFreteNotaCompra.Active then SQLFreteNotaCompra.Active := true;
                   SQLMaxCount.Close;
                   SQLMaxCount.SQL.Text := 'select max (FRNCICOD) from FRETENOTACOMPRA';
                   SQLMaxCount.Open;
                   if not SQLFrete.Active then SQLFrete.Active := true;
                   SQLFreteNotaCompra.Append;
                   SQLFreteNotaCompraFRNCICOD.AsInteger    := SQLMaxCountMAX.AsInteger + 1;
                   SQLFreteNotaCompraNOCPA30NRO.AsInteger  := tbNotasClienteNota.AsInteger;
                   SQLFreteNotaCompraFRETA13ID.AsString    := SQLFreteFRETA13ID.AsString;
                   TbItensAgerar.First;
                   SQLFreteNotaCompra.post;
                   enviar := 'N';
                 end;
               Application.ProcessMessages;
               tbNotasCliente.Next;
             end;
           tbItensAgerar.Close;
         end;
  //Fim e grava a transção ou se houve erro ...
       SQLFrete.Edit;
       SQLFreteFRETN3QTDETOTAL.AsFloat  := QtdeTotal;
       SQLFrete.Post;
       DM.DB.Commit;
       Informa('Conhecimento gerado com sucesso.');
       //Reseta Tudo
       SQLItensNota.Close;
       SQLVeiculo.Close;
       ValorFrete.Text := '0';
       PercICMS.Clear;
       MemoOBS.Clear;
       tbNotasCliente.Close;
       DBLDestinatario.KeyValue := null;
       DBLConsignatario.KeyValue := -1;
     end;
   except
     begin
       if HaNotasSelecionadas = false then
         begin
            DBGridItensFrete.SetFocus;
            raise Exception.Create('Não há itens selecionados.'+char(#13)+'Por favor selecione os itens desejados ou clique em Cancelar para sair.'+char(#13)+'Obrigado.');
         end;
       if DM.DB.InTransaction then  //...da um restore no banco não gravando alterações.
         begin
           DM.DB.Rollback;
           raise Exception.Create('Algum erro aconteceu na transação');
         end;
     end;
   end;
end;

procedure TFormTelaConhecimento.Label5MouseDown(Sender: TObject;
Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const SC_DragMove = $F012{a magic number};
begin
    ReleaseCapture;
    PanelItensFrete.perform(WM_SysCommand, SC_DragMove, 0);
end;


procedure TFormTelaConhecimento.btCancelaClick(Sender: TObject);
begin
  inherited;
  PanelItensFrete.Visible := false;
  tbItensAgerar.Close;
  tbItensAgerar.DeleteTable;
end;

procedure TFormTelaConhecimento.MemoOBSKeyPress(Sender: TObject;
  var Key: Char);
begin
  key := UpCase(key);

end;

procedure TFormTelaConhecimento.SQLFreteBeforePost(DataSet: TDataSet);
begin
  inherited;
  SQLFreteEMPRICOD.Value := 1;
  SQLFreteTERMICOD.Value := 1;
  if SQLFrete.State in [dsinsert] then
     dm.CodigoAutomatico('FRETE',DSSQLFrete,SQLFrete,3,0);
  SQLFreteFRETCSTATUS.AsString        := 'A'; 
  SQLFretePENDENTE.AsString           := 'S';
  SQLFreteVEICA13ID.AsString          := SQLVeiculoVEICA13ID.AsString;
  SQLFreteFUNCA13ID.AsString          := SQLFuncionarioFUNCA13ID.AsString;
  if DBLConsignatario.KeyValue <> null then
    SQLFreteCLIEA13IDCONSIG.AsString  := DBLConsignatario.KeyValue;;
  SQLFreteCLIEA13IDDESTINO.AsString   := DBLDestinatario.KeyValue;
  SQLFreteREGISTRO.AsDateTime         := NOW;
  SQLFreteFRETN2VLR.AsFloat           := StrToFloat(ValorFrete.Text);
  SQLFreteFRETN2VLRTOTAL.AsFloat      := SQLFreteFRETN2VLR.AsFloat * SQLFreteFRETN3QTDETOTAL.AsFloat;
  SQLFreteFRETN2BASECALCULO.AsFloat   := SQLFreteFRETN2VLRTOTAL.AsFloat;
  SQLFreteFRETN2ICMS.AsInteger        := strtoint(PercICMS.Text);
  SQLFreteFRETN2VLRCOMISSAO.AsFloat   := SQLFreteFRETN2VLRTOTAL.AsFloat * (SQLFuncionarioFUNCN2PERCCOMISSAO.AsFloat/100);
end;

procedure TFormTelaConhecimento.tbItensAgerarBeforePost(DataSet: TDataSet);
begin
    inherited;
    if (tbItensAgerarQtdeNotaDisp.AsFloat < tbItensAgerarQtde.AsFloat) or (tbItensAgerarQtde.AsFloat <= 0.00)then
      begin
        Informa('O valor digitado não é valido.'+char(#13)+'Verifique se o valor não esta maior que o disponivel ou menor/igual a 0.'+char(#13)+'E tente novamente.');
        Abort;
      end;
end;

procedure TFormTelaConhecimento.tbItensAgerarBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  if PanelItensFrete.Visible then Abort
end;

procedure TFormTelaConhecimento.DStbNotasClienteStateChange(
  Sender: TObject);
begin
  inherited;
  btGerarConhecimento.Enabled := not (tbNotasCliente.IsEmpty);
end;

procedure TFormTelaConhecimento.DStbNotasClienteDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  TituloGridItensNota.Caption := 'Itens da Nota ' + SQLItensNotaNOCPA30NRO.AsString;
end;

procedure TFormTelaConhecimento.DBgridMasterDblClick(Sender: TObject);
begin
  inherited;
  OriginalOptions := DBgridMaster.Options;
  DBgridMaster.Options := DBgridMaster.Options - [dgEditing] ;
  SaveBoolean(DBgridMaster);
end;

procedure TFormTelaConhecimento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F5 then
     btPesquisa.Click;
  if Key = VK_F6 then
     btGerarConhecimento.Click;

end;

procedure TFormTelaConhecimento.DSSQLClientesComprasDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  if DBLCliente.Keyvalue <> null then
    begin
      SQLDestinatariosCompra.Close;
      SQLDestinatariosCompra.MacroByName('MFiltro').AsString := ' CLIEA13ID ='''+DBLCliente.KeyValue+'''';
      SQLDestinatariosCompra.Open;
    end;
end;

procedure TFormTelaConhecimento.SQLItensNotaAfterClose(DataSet: TDataSet);
begin
  inherited;
  TituloGridItensNota.Caption := 'Itens da Nota ';
end;

procedure TFormTelaConhecimento.SQLItensNotaBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  AguardePanel.Left := (Self.Width - AguardePanel.Width) div 2;
  AguardePanel.Top  := (Self.Height - AguardePanel.Height) div 2;
  AguardeLabel.Caption := 'Verificando Itens da Nota Selecionada.';
  AguardePanel.Visible := True;
  Application.ProcessMessages;
end;

procedure TFormTelaConhecimento.SQLItensNotaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  AguardePanel.Visible := False;
end;

procedure TFormTelaConhecimento.DBLDestinatarioExit(Sender: TObject);
begin
  inherited;
  if (DBLDestinatario.KeyValue <> null) then
     DBLConsignatario.KeyValue := DBLDestinatario.KeyValue;
end;

procedure TFormTelaConhecimento.tbNotasClienteAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if not SQLItensNota.Active then SQLItensNota.Active := True;
end;

procedure TFormTelaConhecimento.tbNotasClienteBeforeClose(
  DataSet: TDataSet);
begin
  inherited;
  if SQLItensNota.Active then SQLItensNota.Active := False;
end;

procedure TFormTelaConhecimento.ProcuraRemetenteClick(Sender: TObject);
begin
  inherited;
  DSMasterSys := DSSQLClientesCompras;
  Application.CreateForm(TFormTelaConsultaGeral,FormTelaConsultaGeral);
  FormTelaConsultaGeral.ShowModal;
  if FormTelaConsultaGeral.ModalResult = mrOk then
     DBLCliente.KeyValue := DSSQLClientesCompras.DataSet.FieldByName('CLIEA13ID').Value;
end;

procedure TFormTelaConhecimento.btPesquisaDestanarioFiltroClick(Sender: TObject);
begin
  inherited;
  DSMasterSys := DSSQLDestinatariosCompra;
  Application.CreateForm(TFormTelaConsultaGeral,FormTelaConsultaGeral);
  FormTelaConsultaGeral.ShowModal;
  if FormTelaConsultaGeral.ModalResult = mrOk then
     DBLookupDestinatario.KeyValue := DSSQLDestinatariosCompra.DataSet.FieldByName('CLIEA13IDDESTINO').Value;
end;

procedure TFormTelaConhecimento.btProcuraDestinatarioClick(Sender: TObject);
begin
  inherited;
  DSMasterSys := DSSQLClientes;
  Application.CreateForm(TFormTelaConsultaGeral,FormTelaConsultaGeral);
  FormTelaConsultaGeral.ShowModal;
  if FormTelaConsultaGeral.ModalResult = mrOk then
     begin
       DBLDestinatario.KeyValue  := DSSQLClientes.DataSet.FieldByName('CLIEA13ID').Value;
       DBLConsignatario.KeyValue := DSSQLClientes.DataSet.FieldByName('CLIEA13ID').Value;
     end;
end;
procedure TFormTelaConhecimento.DSSQLDestinatariosCompraDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  if not SQLDestinatariosCompra.IsEmpty then
     btPesquisaDestanarioFiltro.Enabled := True
  else
     btPesquisaDestanarioFiltro.Enabled := False;

end;

procedure TFormTelaConhecimento.DBLClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     ProcuraRemetente.Click;
end;

procedure TFormTelaConhecimento.DBLookupDestinatarioKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     btPesquisaDestanarioFiltro.Click;

end;

procedure TFormTelaConhecimento.DBLDestinatarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    if Key = VK_F2 then
     btProcuraDestinatario.Click;

end;

end.
