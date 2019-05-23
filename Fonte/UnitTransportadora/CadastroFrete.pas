unit CadastroFrete;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, VarSys, FormResources, DBCtrls, RxDBComb,
  RxLookup, UnitLibrary, UCrpe32, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroFrete = class(TFormCadastroTEMPLATE)
    SQLTemplateFRETA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateFRETICOD: TIntegerField;
    SQLTemplateCLIEA13IDREMETE: TStringField;
    SQLTemplateCLIEA13IDDESTINO: TStringField;
    SQLTemplateCLIEA13IDCONSIG: TStringField;
    SQLTemplateFRETCPAGO: TStringField;
    SQLTemplateFRETTOBS: TStringField;
    SQLTemplateFRETN2VLR: TBCDField;
    SQLTemplateFRETN2VLRTOTAL: TBCDField;
    SQLTemplateFRETN3QTDETOTAL: TBCDField;
    SQLTemplateFRETN2BASECALCULO: TBCDField;
    SQLTemplateFRETN2ICMS: TBCDField;
    SQLTemplatePLCTA15COD: TStringField;
    SQLTemplatePLRCICOD: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    TabSheetFinanceiro: TTabSheet;
    ButtonFinanceiro: TRxSpeedButton;
    ButtonCadastroRemetente: TSpeedButton;
    ButtonCadastroDestinatario: TSpeedButton;
    ButtonCadastroConsignatario: TSpeedButton;
    QueryCliente: TQuery;
    SQLTemplateCLIEA60ENDCOLETA: TStringField;
    SQLTemplateCLIEA60ENDENTREGA: TStringField;
    SQLTemplateCLIEA60REMENOME: TStringField;
    SQLTemplateCLIEA60DESTNOME: TStringField;
    SQLTemplateCLIEA60CONSNOME: TStringField;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    RadioPago: TDBRadioGroup;
    SQLTemplateFRETCSTATUS: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    ComboStatus: TRxDBComboBox;
    Label14: TLabel;
    QueryPlanoRecebimento: TQuery;
    SQLTemplatePLRCA60DESCR: TStringField;
    QueryPlanoConta: TQuery;
    SQLTemplatePLCTA60DESCR: TStringField;
    PanelPlano: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    ButtonCadastroPlanoConta: TSpeedButton;
    ButtonCadastroPlanoPagto: TSpeedButton;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Panel7: TPanel;
    Panel8: TPanel;
    DBGrid2: TDBGrid;
    Panel11: TPanel;
    Label40: TLabel;
    Label28: TLabel;
    ComboNumerarioPrazo: TRxDBLookupCombo;
    ComboNumerarioVista: TRxDBLookupCombo;
    SQLPlano: TRxQuery;
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
    SQLPlanoParcela: TRxQuery;
    SQLParcelasPrazoVendaTemp: TRxQuery;
    SQLParcelasPrazoVendaTempTERMICOD: TIntegerField;
    SQLParcelasPrazoVendaTempDATAVENCTO: TDateTimeField;
    SQLParcelasPrazoVendaTempNROPARCELA: TIntegerField;
    SQLParcelasPrazoVendaTempVALORVENCTO: TBCDField;
    SQLParcelasPrazoVendaTempNUMEICOD: TIntegerField;
    SQLParcelasPrazoVendaTempNumerarioLookup: TStringField;
    SQLParcelasPrazoVendaTempTIPOPADR: TStringField;
    DSSQLParcelasPrazoVendaTemp: TDataSource;
    SQLNumerarioVista: TRxQuery;
    SQLNumerarioVistaNUMEICOD: TIntegerField;
    SQLNumerarioVistaNUMEA30DESCR: TStringField;
    SQLNumerarioVistaNUMECVISTAPRAZO: TStringField;
    SQLNumerarioVistaNUMECATIVO: TStringField;
    SQLNumerarioVistaNUMEA5TIPO: TStringField;
    SQLNumerarioPrazo: TRxQuery;
    DSSQLNumerarioPrazo: TDataSource;
    DSSQLNumerarioVista: TDataSource;
    SQLNumerario: TRxQuery;
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
    SQLContasReceberCTRCDESTORNO: TDateTimeField;
    SQLContasReceberFRETA13ID: TStringField;
    Label15: TLabel;
    DBEdit19: TDBEdit;
    QueryFuncionario: TQuery;
    ButtonCadastroFuncionario: TSpeedButton;
    SQLTemplateFUNCA60NOME: TStringField;
    DBEdit20: TDBEdit;
    SQLTemplateFUNCA13ID: TStringField;
    MnConhecimentodeFrete: TMenuItem;
    TblFrete: TTable;
    TblFreteRemeNome: TStringField;
    TblFreteRemeEnd: TStringField;
    TblFreteRemeCidade: TStringField;
    TblFreteRemeCnpj: TStringField;
    TblFreteRemeUF: TStringField;
    TblFreteDestNome: TStringField;
    TblFreteDestEnd: TStringField;
    TblFreteDestCnpj: TStringField;
    TblFreteDestUf: TStringField;
    TblFreteConsNome: TStringField;
    TblFreteConsEnd: TStringField;
    TblFreteConsCidade: TStringField;
    TblFreteConsUf: TStringField;
    TblFreteDestCidade: TStringField;
    TblFreteProduto: TStringField;
    TblFreteNotaFiscal: TStringField;
    TblFreteQuantidade: TFloatField;
    TblFreteUnidade: TStringField;
    TblFreteValorFrete: TFloatField;
    TblFreteValorTotalFrete: TFloatField;
    DBEdit21: TDBEdit;
    QueryClienteCLIEA13ID: TStringField;
    QueryClienteCLIEA60ENDRES: TStringField;
    QueryClienteCLIEA60RAZAOSOC: TStringField;
    QueryClienteCLIEA60CIDRES: TStringField;
    QueryClienteCLIEA14CGC: TStringField;
    SQLTemplateCLIEA60REMECID: TStringField;
    SQLTemplateCLIEA14REMECGC: TStringField;
    SQLTemplateCLIEADESTCIDADE: TStringField;
    SQLTemplateCLIEA14DESTCGC: TStringField;
    SQLTemplateCLIEA60CONSCIDADE: TStringField;
    QueryClienteCLIEA2UFRES: TStringField;
    SQLTemplateCLIEA2REMEUF: TStringField;
    SQLTemplateCLIEA2DESTUF: TStringField;
    SQLTemplateCLIEA2CONSUF: TStringField;
    SQLTemplateCLIEA60CONSEND: TStringField;
    TblFretePagar: TStringField;
    TblFretePago: TStringField;
    Report: TCrpe;
    SQLTemplateVEICA13ID: TStringField;
    QueryVeiculo: TQuery;
    SQLTemplateVEICA60DESCR: TStringField;
    Label16: TLabel;
    ButtonCadastroVeiculo: TSpeedButton;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    TblFreteEspecie: TStringField;
    TblFreteObservacao: TStringField;
    Label17: TLabel;
    DBEdit24: TDBEdit;
    SQLTemplateFRETN2VLRCOMISSAO: TBCDField;
    QueryFuncionarioFUNCA13ID: TStringField;
    QueryFuncionarioEMPRICOD: TIntegerField;
    QueryFuncionarioTERMICOD: TIntegerField;
    QueryFuncionarioFUNCICOD: TIntegerField;
    QueryFuncionarioFUNCA60NOME: TStringField;
    QueryFuncionarioFUNCCAUTONOMO: TStringField;
    QueryFuncionarioPENDENTE: TStringField;
    QueryFuncionarioREGISTRO: TDateTimeField;
    QueryFuncionarioFUNCN2PERCCOMISSAO: TBCDField;
    QueryFuncionarioFUNCA11CPF: TStringField;
    QueryFuncionarioFUNCA14CNPJ: TStringField;
    QueryFuncionarioFUNCA15INSS: TStringField;
    QueryFuncionarioFUNCA60ENDRES: TStringField;
    QueryFuncionarioVEICA13ID: TStringField;
    SQLPlanoPLRCN2PERCACRESC: TBCDField;
    SQLQtdeItens: TRxQuery;
    BatchMove: TBatchMove;
    TableItensImpressao: TTable;
    SQLRomaneio: TRxQuery;
    mnRomaneiodeFrete: TMenuItem;
    DSSQLRomaneio: TDataSource;
    DBGrid1: TDBGrid;
    SQLItens: TRxQuery;
    DSSQLItens: TDataSource;
    Splitter1: TSplitter;
    SQLItensFRETA13ID: TStringField;
    SQLItensFRITICOD: TIntegerField;
    SQLItensPRODICOD: TIntegerField;
    SQLItensPRODN2VLR: TBCDField;
    SQLItensFRITN2ICMS: TBCDField;
    SQLItensFRITN2VLRICMS: TBCDField;
    SQLItensUNIDICOD: TIntegerField;
    SQLItensFRITN3QTDE: TBCDField;
    SQLItensFRITA30ESPECIE: TStringField;
    SQLItensFRITA30MARCA: TStringField;
    SQLItensREGISTRO: TDateTimeField;
    SQLItensPENDENTE: TStringField;
    SQLProduto: TRxQuery;
    SQLItensPRODA60DESCR: TStringField;
    SQLRomaneioFUNCA60NOME: TStringField;
    SQLRomaneioCLIENTE: TStringField;
    SQLRomaneioDESTINO: TStringField;
    SQLRomaneioCONSIG: TStringField;
    SQLRomaneioFRETA13ID: TStringField;
    SQLRomaneioFRITICOD: TIntegerField;
    SQLRomaneioPRODICOD: TIntegerField;
    SQLRomaneioPRODN2VLR: TBCDField;
    SQLRomaneioFRITN2ICMS: TBCDField;
    SQLRomaneioFRITN2VLRICMS: TBCDField;
    SQLRomaneioUNIDICOD: TIntegerField;
    SQLRomaneioFRITN3QTDE: TBCDField;
    SQLRomaneioFRITA30ESPECIE: TStringField;
    SQLRomaneioFRITA30MARCA: TStringField;
    SQLRomaneioREGISTRO: TDateTimeField;
    SQLRomaneioPENDENTE: TStringField;
    SQLRomaneioFRETA13ID_1: TStringField;
    SQLRomaneioEMPRICOD: TIntegerField;
    SQLRomaneioTERMICOD: TIntegerField;
    SQLRomaneioFRETICOD: TIntegerField;
    SQLRomaneioCLIEA13IDREMETE: TStringField;
    SQLRomaneioCLIEA13IDDESTINO: TStringField;
    SQLRomaneioCLIEA13IDCONSIG: TStringField;
    SQLRomaneioFRETCPAGO: TStringField;
    SQLRomaneioFRETTOBS: TStringField;
    SQLRomaneioFRETN2VLR: TBCDField;
    SQLRomaneioFRETN2VLRTOTAL: TBCDField;
    SQLRomaneioFRETN3QTDETOTAL: TBCDField;
    SQLRomaneioFRETN2BASECALCULO: TBCDField;
    SQLRomaneioFRETN2ICMS: TBCDField;
    SQLRomaneioPLCTA15COD: TStringField;
    SQLRomaneioPLRCICOD: TIntegerField;
    SQLRomaneioFRETCSTATUS: TStringField;
    SQLRomaneioREGISTRO_1: TDateTimeField;
    SQLRomaneioPENDENTE_1: TStringField;
    SQLRomaneioFRETN2VLRCOMISSAO: TBCDField;
    SQLRomaneioFUNCA13ID: TStringField;
    SQLRomaneioVEICA13ID: TStringField;
    SQLRomaneioNOCPDEMISSAO: TDateTimeField;
    SQLRomaneioPRODA60DESCR: TStringField;
    SQLItensFRITINOTAFISCAL: TStringField;
    SQLItensFRITN2VLRNOTA: TBCDField;
    SQLItensCFOPA5COD: TStringField;
    SQLItensFRITANATCARGA: TStringField;
    SQLItensFRITN2PEDAGIO: TBCDField;
    SQLItensFRITN2VLRCAT: TBCDField;
    SQLItensFRITN2VLRVALOREM: TBCDField;
    SQLItensFRITN2VOLUMES: TBCDField;
    SQLItensFRITN3OUTROS: TBCDField;
    SQLItensFRITN3PESO: TBCDField;
    SQLItensFRITN4PERCVALOREM: TBCDField;
    SQLRomaneioFRITINOTAFISCAL: TStringField;
    SQLTemplateFRITINOTAFISCAL: TStringField;
    TblFreteValorMercadoria: TFloatField;
    SQLCFOP: TRxQuery;
    SQLCFOPCFOPA5COD: TStringField;
    SQLCFOPCFOPA60DESCR: TStringField;
    SQLCFOPCFOPCVENDA: TStringField;
    SQLCFOPPENDENTE: TStringField;
    SQLCFOPREGISTRO: TDateTimeField;
    SQLCFOPCFOPCDESTVLRNTRIB: TStringField;
    ComboCFOP: TRxDBLookupCombo;
    Label18: TLabel;
    DSCFOP: TDataSource;
    SQLTemplateCFOPA5COD: TStringField;
    TblFreteCFOP: TStringField;
    QueryClienteCLIEA20IE: TStringField;
    SQLTemplateCLIEA20IEDEST: TStringField;
    SQLTemplateCLIEA20IEREM: TStringField;
    TblFreteIEDEST: TStringField;
    TblFreteIEREM: TStringField;
    TblFretevolumes: TFloatField;
    TblFreteicms: TFloatField;
    TblFretevaloricms: TFloatField;
    TblFretenatureza: TStringField;
    TblFretefretepeso: TFloatField;
    TblFreteseccat: TFloatField;
    TblFretePedagio: TFloatField;
    TblFreteoutros: TFloatField;
    TblFretefrtdata: TDateField;
    TblFretenumero: TStringField;
    TblFreteREMECEP: TStringField;
    TblFreteDESTCEP: TStringField;
    TblFreteCONSIGCEP: TStringField;
    TblFreteveimarca: TStringField;
    TblFreteveiplaca: TStringField;
    TblFreteveiufplaca: TStringField;
    TblFreteveimotorista: TStringField;
    SQLLocalizar: TRxQuery;
    SQLTemplateCLIEA13IDREDESPACH: TStringField;
    SQLTemplateFRETINROFORM: TIntegerField;
    SQLTemplateFRTDATA: TDateTimeField;
    SQLTemplateMOTORISTA: TStringField;
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonFinanceiroClick(Sender: TObject);
    procedure ButtonCadastroRemetenteClick(Sender: TObject);
    procedure ButtonCadastroDestinatarioClick(Sender: TObject);
    procedure ButtonCadastroConsignatarioClick(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure SQLTemplateAfterInsert(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure ButtonCadastroPlanoPagtoClick(Sender: TObject);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplatePLRCICODChange(Sender: TField);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure ComboNumerarioPrazoChange(Sender: TObject);
    procedure ComboNumerarioVistaChange(Sender: TObject);
    procedure SQLContasReceberBeforePost(DataSet: TDataSet);
    procedure ButtonCadastroFuncionarioClick(Sender: TObject);
    procedure MnConhecimentodeFreteClick(Sender: TObject);
    procedure ButtonCadastroVeiculoClick(Sender: TObject);
    procedure SQLContasReceberNewRecord(DataSet: TDataSet);
    procedure ReportWindowClose(Sender: TObject);
    procedure mnRomaneiodeFreteClick(Sender: TObject);
    procedure DBEdit19KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit22KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    Insert : Boolean;
    PlanoAnterior,
    PlanoNovo,
    ContasReceberCliente,
    ContasReceberID : string;
    procedure OpenTemp;
  public
    { Public declarations }
  end;

var
  FormCadastroFrete: TFormCadastroFrete;

implementation

uses CadastroFreteItem, CadastroCliente, 
  DataModulo, CadastroFuncionario, CadastroVeiculo, DataModuloTemplate,
  TelaConsultaPlanoRecebimento;

{$R *.dfm}

procedure TFormCadastroFrete.OpenTemp;
begin
  if not SQLParcelasPrazoVendaTemp.Active then
    begin
      SQLParcelasPrazoVendaTemp.Close;
      SQLParcelasPrazoVendaTemp.SQL.Clear;
      SQLParcelasPrazoVendaTemp.SQL.Add('select * from PARCELASPRAZOVENDATEMP');
      SQLParcelasPrazoVendaTemp.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual));
      SQLParcelasPrazoVendaTemp.SQL.Add('order by NROPARCELA');
      SQLParcelasPrazoVendaTemp.Open;
    end;
end;

procedure TFormCadastroFrete.Button3Click(Sender: TObject);
begin
  inherited;
  DSMasterSys := DsTemplate;
  CriaFormulario(TFormCadastroFreteItem,'FormCadastroFreteItem',True,False,True,DSTemplate.DataSet.FieldByName('FRETA13ID').AsString);
end;

procedure TFormCadastroFrete.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'FRETE';
  Insert := False;
  if not SQLItens.Active then SQLItens.Active := True;
  if not SQLCFOP.Active then SQLCFOP.Active := True; 
end;

procedure TFormCadastroFrete.ButtonFinanceiroClick(Sender: TObject);
begin
  inherited;
  PagePrincipal.ActivePage := TabSheetFinanceiro;
end;

procedure TFormCadastroFrete.ButtonCadastroRemetenteClick(Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('CLIEA13IDREMETE');
  FieldOrigem := 'CLIEA13ID';
  CriaFormulario(TFormCadastroCliente,'FormCadastroCliente',False,True,False,'');
end;

procedure TFormCadastroFrete.ButtonCadastroDestinatarioClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('CLIEA13IDDESTINO');
  FieldOrigem := 'CLIEA13ID';
  CriaFormulario(TFormCadastroCliente,'FormCadastroCliente',False,True,False,'');
end;

procedure TFormCadastroFrete.ButtonCadastroConsignatarioClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('CLIEA13IDCONSIG');
  FieldOrigem := 'CLIEA13ID';
  CriaFormulario(TFormCadastroCliente,'FormCadastroCliente',False,True,False,'');
end;

procedure TFormCadastroFrete.SQLTemplateBeforePost(DataSet: TDataSet);
  function CommaToPoint(Value : Double) : String;
  begin
    Result := FormatFloat('###0.00',Value);
    Result[Pos(',',Result)] := '.';
  end;
var
  FaltaNumerario : boolean;
  Query : TQuery;
  Next : integer;
begin
  DataSet.FieldByName('FRETN2VLRTOTAL').AsFloat :=
      DataSet.FieldByName('FRETN2VLR').AsFloat ; //*
//      DataSet.FieldByName('FRETN3QTDETOTAL').AsFloat;
  PlanoNovo  := SQLTemplate.FindField('PLRCICOD').asString;
  if PlanoNovo <> PlanoAnterior then
    if PlanoNovo <> '' then
        begin
          FaltaNumerario := False;
          OpenTemp;
          SQLParcelasPrazoVendaTemp.DisableControls;
          SQLParcelasPrazoVendaTemp.First;
          while not SQLParcelasPrazoVendaTemp.Eof do
            begin
              if SQLParcelasPrazoVendaTempNUMEICOD.asVariant = Null then
                FaltaNumerario := True;
              SQLParcelasPrazoVendaTemp.Next;
            end;
          SQLParcelasPrazoVendaTemp.First;
          SQLParcelasPrazoVendaTemp.EnableControls;
          if FaltaNumerario then
            begin
              ShowMessage('Selecione os Numerários!');
              Abort;
            end;
        end;
  if not DM.SQLConfigTransportadora.Active then DM.SQLConfigTransportadora.Open;
  if DM.SQLConfigTransportadora.FieldByName('CFTROPFUICODCREDITO').AsVariant <> null then
    begin
      if DataSet.FieldByName('FRETCSTATUS').AsString = 'E' then
        if DataSet.FieldByName('FUNCA13ID').AsVariant <> null then
          begin
            Query := TQuery.Create(Application);
            Query.DatabaseName := 'DB';
            Query.SQL.Clear;
            Query.SQL.Add('SELECT MAX(FUCCICOD) AS NEXT FROM FUNCIONARIOCONTACORRENTE WHERE FUNCA13ID = "' + DataSet.FieldByName('FUNCA13ID').AsString + '"');
            Query.Open;
            Next := Query.FindField('NEXT').AsInteger + 1;
            Query.Close;
            Query.SQL.Clear;
            Query.SQL.Add('INSERT INTO FUNCIONARIOCONTACORRENTE(FUNCA13ID,FUCCICOD,FUCCN2VLRDEBITO,FUCCN2VLRCREDITO,OPFUICOD,PENDENTE,REGISTRO,FUCCN2VLRTOTREC,FUCCN2VLRULTREC,FUCCDLANCAMENTO)');
            Query.SQL.Add('VALUES ("' + DataSet.FieldByName('FUNCA13ID').AsString + '",' + IntToStr(Next) + ',0,');
            if QueryFuncionarioFUNCCAUTONOMO.AsString = 'A' then
              Query.SQL.Add(CommaToPoint((DataSet.FieldByName('FRETN3QTDETOTAL').AsFloat * DataSet.FieldByName('FRETN2VLRCOMISSAO').AsFloat)) + ',')
            else
              Query.SQL.Add(CommaToPoint((DataSet.FieldByName('FRETN3QTDETOTAL').AsFloat * DataSet.FieldByName('FRETN2VLRCOMISSAO').AsFloat) * (QueryFuncionarioFUNCN2PERCCOMISSAO.AsFloat / 100)) + ',');
            Query.SQL.Add(DM.SQLConfigTransportadoraCFTROPFUICODCREDITO.AsString + ',"S","' + FormatDateTime('mm/dd/yyyy',Now) + '",0,0,"' + FormatDateTime('mm/dd/yyyy',Now) + '");');
            Query.ExecSQL;
          end
        else
          begin
            Informa('Você deve informar o funcionário antes de encerrar o frete!');
            DataSet.FieldByName('FUNCA13ID').FocusControl;
            Abort;
          end;
    end
  else
    begin
      Informa('Você deve informar configurar o tipo de movimentação de crédito padrão nas configurações!');
      Abort;
    end;
  inherited;
end;

procedure TFormCadastroFrete.FormActivate(Sender: TObject);
begin
  inherited;
  if QueryCliente.Active then
    QueryCliente.Close;
  QueryCliente.Open;
  if QueryPlanoRecebimento.Active then
    QueryPlanoRecebimento.Close;
  QueryPlanoRecebimento.Open;
  if QueryPlanoConta.Active then
    QueryPlanoConta.Close;
  QueryPlanoConta.Open;
  if QueryFuncionario.Active then
    QueryFuncionario.Close;
  QueryFuncionario.Open;
  if QueryVeiculo.Active then
    QueryVeiculo.Close;
  QueryVeiculo.Open;
end;

procedure TFormCadastroFrete.SQLTemplateAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Insert := True;
end;

procedure TFormCadastroFrete.SQLTemplateAfterPost(DataSet: TDataSet);
begin
  inherited;
  if Insert then
    begin
      Button3.Click;
      Insert := False;
    end;
  case DataSet.FieldByName('FRETCSTATUS').AsString[1] of
    'A',
    'E' : begin
            //****************************************************************//
            //        GERA AS CONTAS A RECEBER ATRELADAS A ESTE FRETE         //
            //****************************************************************//
            SQLContasReceber.Close;
            SQLContasReceber.Open;
            SQLContasReceber.First;
            while not SQLContasReceber.Eof do
              begin
                SQLRecebimento.Close;
                SQLRecebimento.Open;
                while not SQLRecebimento.Eof do
                  begin
                    SQLRecebimento.Delete;
                  end;
                SQLContasReceber.Delete;
              end;
            OpenTemp;
            SQLParcelasPrazoVendaTemp.First;
            if SQLParcelasPrazoVendaTempNROPARCELA.AsInteger = 0 then
              begin
                SQLContasReceber.Append;
                SQLContasReceberCTRCCSTATUS.Value      := 'A';
                SQLContasReceberCTRCDEMIS.Value        := StrToDate(FormatDateTime('dd/mm/yyyy',Now));
                SQLContasReceberCTRCDVENC.AsString     := FormatDateTime('dd/mm/yyyy',Now);
                SQLContasReceberCTRCINROPARC.Value     := 0;
                SQLContasReceberCTRCN2VLR.Value        := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
                SQLContasReceberCTRCA5TIPOPADRAO.Value := SQLParcelasPrazoVendaTempTIPOPADR.Value;
                SQLContasReceberCLIEA13ID.AsString     := SQLTemplate.FindField('CLIEA13IDCONSIG').AsString;
                SQLContasReceberFRETA13ID.AsString     := SQLTemplate.FindField('FRETA13ID').AsString;
                SQLContasReceberNUMEICOD.Value         := SQLParcelasPrazoVendaTempNUMEICOD.Value;
                SQLContasReceberTERMICOD.Value         := TerminalCorrente;
                SQLContasReceberTPDCICOD.asVariant     := DM.SQLConfigVendaTPDCICOD.asVariant;
                SQLContasReceberPORTICOD.asVariant     := DM.SQLConfigVendaPORTICOD.asVariant;
                SQLContasReceber.Post;
                if DM.SQLConfigVendaCFVECPARC0ENTRBAIX.asString='S' then
                  begin
                    if not SQLRecebimento.Active Then
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
                    SQLRecebimentoCLIEA13ID.AsString       := SQLTemplate.FieldByName('CLIEA13IDCONSIG').AsString;
                    SQLRecebimento.Post;
                    SQLContasReceber.Edit;
                    SQLContasReceberCTRCN2TOTREC.Value     := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
                    SQLContasReceberCTRCDULTREC.Value      := Now;
                    SQLContasReceberEMPRICODULTREC.Value   := EmpresaCorrente;
                    SQLContasReceber.Post;
                  end;
              end;
            SQLParcelasPrazoVendaTemp.First;
            if SQLParcelasPrazoVendaTempNROPARCELA.AsInteger = 0 then
              SQLParcelasPrazoVendaTemp.Next;
            while not SQLParcelasPrazoVendaTemp.Eof do
              begin
                SQLContasReceber.Append;
                SQLContasReceberCTRCCSTATUS.Value      := 'A';
                SQLContasReceberCTRCDEMIS.Value        := StrToDate(FormatDateTime('dd/mm/yyyy',Now));
                SQLContasReceberCTRCDVENC.AsString     := FormatDateTime('dd/mm/yyyy',SQLParcelasPrazoVendaTempDATAVENCTO.Value);
                SQLContasReceberCTRCINROPARC.AsInteger := SQLParcelasPrazoVendaTempNROPARCELA.AsInteger;
                SQLContasReceberCTRCN2VLR.Value        := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
                SQLContasReceberCTRCA5TIPOPADRAO.Value := SQLParcelasPrazoVendaTempTIPOPADR.Value;
                SQLContasReceberCLIEA13ID.AsString     := SQLTemplate.FindField('CLIEA13IDCONSIG').AsString;
                SQLContasReceberFRETA13ID.AsString     := SQLTemplate.FindField('FRETA13ID').AsString;
                SQLContasReceberNUMEICOD.Value         := SQLParcelasPrazoVendaTempNUMEICOD.Value;
                SQLContasReceberTERMICOD.Value         := TerminalCorrente;
                SQLContasReceberTPDCICOD.asVariant     := DM.SQLConfigVendaTPDCICOD.asVariant;
                SQLContasReceberPORTICOD.asVariant     := DM.SQLConfigVendaPORTICOD.asVariant;
                SQLContasReceber.Post;
                SQLParcelasPrazoVendaTemp.Next;
              end;
            ComboNumerarioPrazo.Value := '';
          end;
    'C' : begin
            //****************************************************************//
            //      CANCELA AS CONTAS A RECEBER ATRELADAS A ESTE FRETE        //
            //****************************************************************//
            if PlanoNovo <> PlanoAnterior then
              if PlanoNovo <> '' then
                begin
                  if not SQLContasReceber.Active Then
                    SQLContasReceber.Open;
                  SQLContasReceber.First;
                  while not SQLContasReceber.Eof Do
                    begin
                      SQLContasReceber.Edit;
                      SQLContasReceberCTRCCSTATUS.Value := 'C';
                      SQLContasReceber.Post;
                      SQLContasReceber.Next;
                    end;
                end;
          end;
  end;
end;

procedure TFormCadastroFrete.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FRETCPAGO').AsString := 'S';
  DataSet.FieldByName('FRETCSTATUS').AsString := 'A';
  DataSet.FieldByName('FRETN3QTDETOTAL').AsFloat := 0;
  DataSet.FieldByName('FRETN2VLR').AsFloat := 0;
  DataSet.FieldByName('FRETN2VLRTOTAL').AsFloat := 0;
  DataSet.FieldByName('FRETN2BASECALCULO').AsFloat := 0;
  DataSet.FieldByName('FRETN2VLRCOMISSAO').AsFloat := 0;
  DataSet.FieldByName('FRETN2ICMS').AsFloat := 0;
  DataSet.FieldByName('EMPRICOD').AsInteger := EmpresaCorrente;
end;

procedure TFormCadastroFrete.SQLTemplateBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  PlanoAnterior  := SQLTemplate.FindField('PLRCICOD').AsString;
  if DataSet.FieldByName('FRETCSTATUS').AsString <> 'A' then
    Abort;
end;

procedure TFormCadastroFrete.ButtonCadastroPlanoPagtoClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('PLRCICOD');
  FieldOrigem := 'PLRCICOD';
  CriaFormulario(TFormTelaConsultaPlanoRecebimento,'FormTelaConsultaPlanoRecebimento',False,True,True,'');
end;

procedure TFormCadastroFrete.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    ButtonCadastroRemetente.Click;
end;

procedure TFormCadastroFrete.DBEdit10KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    ButtonCadastroDestinatario.Click;
end;

procedure TFormCadastroFrete.DBEdit11KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    ButtonCadastroDestinatario.Click;
end;

procedure TFormCadastroFrete.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F3 then
    ButtonCadastroPlanoPagto.Click;
end;

procedure TFormCadastroFrete.SQLTemplatePLRCICODChange(Sender: TField);
var
  Entrada, Desconto, Valor: Double;
  DiminuiAcresc, ValorJuro,Acrescimo, EntradaCalc,TaxaCred: Double;
begin
  inherited;
  if SQLTemplate.FindField('PLRCICOD').asVariant <> Null Then
    begin
      DM.SQLTemplate.Close;
      DM.SQLTemplate.SQL.Clear;
      DM.SQLTemplate.SQL.Add('delete from PARCELASPRAZOVENDATEMP');
      DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual));
      DM.SQLTemplate.ExecSQL;

      SQLParcelasPrazoVendaTemp.Close;
      SQLParcelasPrazoVendaTemp.SQL.Clear;
      SQLParcelasPrazoVendaTemp.SQL.Add('select * from PARCELASPRAZOVENDATEMP');
      SQLParcelasPrazoVendaTemp.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual));
      SQLParcelasPrazoVendaTemp.SQL.Add('order by NROPARCELA');
      SQLParcelasPrazoVendaTemp.Open;

      SQLPlano.Close;
      SQLPlano.ParamByName('PLRCICOD').AsInteger := SQLTemplate.FindField('PLRCICOD').asInteger;
      SQLPlano.Open;
      if not SQLPlano.Eof then
        begin
          SQLPlanoParcela.Close;
          SQLPlanoParcela.ParamByName('PLRCICOD').AsInteger := SQLTemplate.FindField('PLRCICOD').asInteger;
          SQLPlanoParcela.Open;
          if (DM.SQLTerminalAtivoTERMINUMEVISTA.asString = '') and
             (DM.SQLTerminalAtivoTERMINUMEPRAZO.asString = '') Then
            begin
              ShowMessage('Você deve configurar os numerários padrão deste Terminal!');
              Abort;
            end;
          SQLPlanoParcela.First;
          ValorJuro := SQLPlanoPLRCN2TXJURO.AsFloat;
          CriaParcelas(SQLParcelasPrazoVendaTemp,
                       SQLPlano,
                       SQLPlanoParcela,
                       Entrada,
                       Desconto,
                       SQLTemplate.FindField('FRETN2VLRTOTAL').asFloat,
                       SQLTemplate.FindField('PLRCICOD').asInteger,
                       Now,
                       DM.SQLTerminalAtivoTERMINUMEVISTA.asString,
                       DM.SQLTerminalAtivoTERMINUMEPRAZO.asString,
                       DM.SQLTerminalAtivoTERMINUMEVISTA.asString,
                       DM.SQLTerminalAtivoTERMINUMEPRAZO.asString,
                       SQLTemplate.FindField('FRETA13ID').asString,
                       DiminuiAcresc,
                       ValorJuro,
                       Acrescimo,
                       EntradaCalc,
                       TaxaCred);
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
        end;
      SQLPlano.Close;
    end;
end;

procedure TFormCadastroFrete.SQLTemplateBeforeDelete(DataSet: TDataSet);
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

procedure TFormCadastroFrete.ComboNumerarioPrazoChange(Sender: TObject);
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

procedure TFormCadastroFrete.ComboNumerarioVistaChange(Sender: TObject);
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
        end
      else
        Informa('Não existem parcelas à vista para seleção de numerário !');  
      SQLParcelasPrazoVendaTemp.First;
    end;
end;

procedure TFormCadastroFrete.SQLContasReceberBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FindField('REGISTRO') <> nil then
    DataSet.FindField('REGISTRO').AsDateTime := Now;
  if DataSet.FindField('PENDENTE')<> nil then
    DataSet.FindField('PENDENTE').AsString := 'S';
  if DataSet.FindField('EMPRICOD')<> nil then
    DataSet.FindField('EMPRICOD').AsInteger := EmpresaCorrente;
  if DataSet.FindField('TERMICOD')<> nil then
    DataSet.FindField('TERMICOD').AsInteger := TerminalCorrente;
  if DataSet.State in [dsInsert] then
    DM.CodigoAutomatico('CONTASRECEBER',DSSQLContasReceber,DataSet,3,0);
  ContasReceberID := SQLContasReceberCTRCA13ID.asString;
end;

procedure TFormCadastroFrete.ButtonCadastroFuncionarioClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('FUNCA13ID');
  FieldOrigem := 'FUNCA13ID';
  CriaFormulario(TFormCadastroFuncionario,'FormCadastroFuncionario',False,True,True,'');
end;

procedure TFormCadastroFrete.MnConhecimentodeFreteClick(Sender: TObject);
var
  Produto : String;
begin
  inherited;
  TblFrete.Close;
  try
    TblFrete.DeleteTable;
    TblFrete.CreateTable;
  except
    TblFrete.CreateTable;
  end;
  TblFrete.Open;

  TblFrete.Append;
  TblFretefrtdata.AsDateTime  := now;
  TblFretenumero.AsString     := SQLTemplateFRETICOD.AsString;
  TblFreteCFOP.asString       := Trim(SQLTemplateCFOPA5COD.AsString)+' '+ SQLLocate('CFOP','CFOPA5COD','CFOPA60DESCR','"'+SQLTemplateCFOPA5COD.AsString+'"');
  TblFreteRemeNome.AsString   := SQLTemplateCLIEA60REMENOME.AsString;
  TblFreteRemeEnd.AsString    := SQLTemplateCLIEA60ENDCOLETA.AsString;
  TblFreteRemeCidade.AsString := SQLTemplateCLIEA60REMECID.AsString;
  TblFreteRemeUF.AsString     := SQLTemplateCLIEA2REMEUF.AsString;
  TblFreteRemeCnpj.AsString   := SQLTemplateCLIEA14REMECGC.AsString;
  TblFreteIEREM.AsString      := SQLTemplateCLIEA20IEREM.AsString;
  TblFreteDestNome.AsString   := SQLTemplateCLIEA60DESTNOME.AsString;
  TblFreteDestEnd.AsString    := SQLTemplateCLIEA60ENDENTREGA.AsString;
  SQLLocalizar.Close;
  SQLLocalizar.SQL.Text       := 'Select * from VEICULO where (%MFiltro)';
  SQLLocalizar.MacroByName('MFiltro').asstring := 'VEICA13ID = '+ '"' + SQLTemplateVEICA13ID.AsString + '"';
  SQLLocalizar.Open;

  TblFreteveimarca.AsString   := SQLLocalizar.Fieldbyname('VEICA60DESCR').AsString;
  TblFreteveiplaca.AsString   := SQLLocalizar.Fieldbyname('VEICA7PLACA').AsString;
  TblFreteveiufplaca.AsString := SQLLocalizar.Fieldbyname('VEICA2UFPLACA').AsString;
  TblFreteveimotorista.AsString := SQLTemplateMOTORISTA.AsString;

  SQLLocalizar.Close;
  SQLLocalizar.SQL.Text       := 'Select * from cliente where (%MFiltro)';
  SQLLocalizar.MacroByName('MFiltro').asstring := 'CLIEA13ID = '+ '"' + SQLTemplateCLIEA13IDDESTINO.AsString + '"';
  SQLLocalizar.Open;
  If SQLLocalizar.FieldByName('CLIEA5FISJURID').AsString = 'F' then
  begin
    TblFreteDestCnpj.AsString   := SQLLocalizar.fieldbyname('CLIEA11CPF').AsString;
    TblFreteIEDEST.AsString     := SQLLocalizar.fieldbyname('CLIEA10RG').AsString;
  end else
  begin
    TblFreteDestCnpj.AsString   := SQLLocalizar.fieldbyname('CLIEA14CGC').AsString;
    TblFreteIEDEST.AsString     := SQLLocalizar.fieldbyname('CLIEA20IE').AsString;
  end;
  SQLLocalizar.Close;
  TblFreteDestCidade.AsString := SQLTemplateCLIEADESTCIDADE.AsString;
  TblFreteDestUf.AsString     := SQLTemplateCLIEA2DESTUF.AsString;
  TblFreteConsNome.AsString   := SQLTemplateCLIEA60CONSNOME.AsString;
  TblFreteConsEnd.AsString    := SQLTemplateCLIEA60CONSEND.AsString;
  TblFreteConsCidade.AsString := SQLTemplateCLIEA60CONSCIDADE.AsString;
  TblFreteConsUf.AsString     := SQLTemplateCLIEA2CONSUF.AsString;
  if SQLTemplateFRETCPAGO.AsString = 'S' then
  begin
    TblFretePagar.AsString      := '';
    TblFretePago.AsString       := 'X';
  end else
  begin
    TblFretePagar.AsString      := 'X';
    TblFretePago.AsString       := '';
  end;


  Produto := SQLLocate('FRETEITEM','FRETA13ID','PRODICOD','"' + SQLTemplateFRETA13ID.AsString + '"');

  if Produto <> '' then
    TblFreteProduto.AsString    := SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',Produto);
  SQLQtdeItens.Close;
  SQLQtdeItens.MacroByName('MFiltro').AsString := ' FRETA13ID = '''+SQLTemplateFRETA13ID.AsString+'''';
  SQLQtdeItens.Open;
  if SQLQtdeItens.FieldByName('COUNT').AsInteger > 1 then
     begin
       TblFreteNotaFiscal.AsString     := 'ANEXOS';
     end
  else
     TblFreteNotaFiscal.AsString     := SQLItensFRITINOTAFISCAL.AsString;
  TblFreteQuantidade.AsFloat      := SQLTemplateFRETN3QTDETOTAL.AsFloat;
  TblFretevolumes.AsString        := SQLItensFRITN2VOLUMES.AsString;
  TblFretenatureza.AsString       := SQLItensFRITANATCARGA.AsString;
  SQLCount.Close;
  SQLCount.SQL.Text := 'select Sum(FRETEITEM.PRODN2VLR) TotalMerc from FRETEITEM where ' +
                       'FRETA13ID = "' + SQLTemplateFRETA13ID.AsString  + '"';
  SQLCount.Open;

  TblFreteValorMercadoria.AsFloat := SQLCount.FieldByName('TotalMerc').AsFloat;
  TblFreteValorFrete.AsFloat      := SQLTemplateFRETN2VLR.AsFloat;
  TblFreteValorTotalFrete.AsFloat := SQLTemplateFRETN2VLRTOTAL.AsFloat;
  TblFreteEspecie.AsString        := SQLLocate('FRETEITEM','FRETA13ID','FRITA30ESPECIE','"' + SQLTemplateFRETA13ID.AsString + '"');
  TblFreteUnidade.AsString        := SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',SQLLocate('FRETEITEM','FRETA13ID','UNIDICOD','"' + SQLTemplateFRETA13ID.AsString + '"'));
  TblFreteObservacao.AsString     := SQLTemplateFRETTOBS.AsString;
  TblFrete.Post;
  BatchMove.Execute;
  TblFrete.Close;
  if not Dm.SQLConfigGeral.Active then Dm.SQLConfigGeral.Open;
  if FileExists('NFConhecimento.exe') then
    WinExec(PChar(DM.PathAplicacao + '\NFConhecimento.exe'),SW_SHOW)
  else
    begin
      Report.ReportName        := '..\Frete\Frete.rpt';
      Report.ReportTitle       :=  'Conhecimento de Frete';
      Report.WindowStyle.Title :=  'Conhecimento de Frete';
      Report.Execute;
    end;
  if SQLQtdeItens.FieldByName('COUNT').AsInteger > 1 then
     begin
       if Application.MessageBox('Este frete contem romaneio.'+char(#13)+'Deseja imprimi-lo agora?','Atenção',MB_YESNO+MB_SYSTEMMODAL+MB_ICONINFORMATION+MB_DEFBUTTON1) = iDYes then
          mnRomaneiodeFrete.Click;
     end;

end;

procedure TFormCadastroFrete.ButtonCadastroVeiculoClick(Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('VEICA13ID');
  FieldOrigem := 'VEICA13ID';
  CriaFormulario(TFormCadastroVeiculo,'FormCadastroVeiculo',False,True,True,'');
end;

procedure TFormCadastroFrete.SQLContasReceberNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('CTRCINROPARC').Value      := 0 ;
  DataSet.FindField('CTRCN2DESCFIN').Value     := 0 ;
  DataSet.FindField('CTRCN2TXJURO').Value      := 0 ;
  DataSet.FindField('CTRCN2TXMULTA').Value     := 0 ;
  DataSet.FindField('CTRCN2TOTREC').Value      := 0 ;
  DataSet.FindField('CTRCN2TOTJUROREC').Value  := 0 ;
  DataSet.FindField('CTRCN2TOTMULTAREC').Value := 0 ;
  DataSet.FindField('CTRCN2TOTDESCREC').Value  := 0 ;
end;

procedure TFormCadastroFrete.ReportWindowClose(Sender: TObject);
begin
  inherited;
  TblFrete.Close;
end;

procedure TFormCadastroFrete.mnRomaneiodeFreteClick(Sender: TObject);
begin
  inherited;
  SQLQtdeItens.Close;
  SQLQtdeItens.MacroByName('MFiltro').AsString := ' FRETA13ID = '''+SQLTemplateFRETA13ID.AsString+'''';
  SQLQtdeItens.Open;
  if SQLQtdeItens.FieldByName('COUNT').AsInteger > 1 then
     begin
       try
         TableItensImpressao.Close;
         TableItensImpressao.DeleteTable;
         TableItensImpressao.CreateTable;
       except
         TableItensImpressao.CreateTable;
       end;
       BatchMove.Execute;
       Report.ReportName             :=  Dm.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Romaneio.rpt';
       Report.ReportTitle            :=  'Romaneio de Frete';
       Report.WindowStyle.Title      :=  'Romaneio de Frete';
       Report.Execute;
     end
  else
     Informa('Não há romaneio a ser gerado para este frete.');
end;

procedure TFormCadastroFrete.DBEdit19KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    ButtonCadastroFuncionario.Click

end;

procedure TFormCadastroFrete.DBEdit22KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    ButtonCadastroVeiculo.Click;
end;

end.


