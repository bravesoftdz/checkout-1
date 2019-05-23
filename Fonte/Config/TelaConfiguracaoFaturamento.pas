unit TelaConfiguracaoFaturamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  RxLookup, DB, RxQuery, ActnList, DBActns, DBTables, Mask, RxDBComb,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaConfiguracaoFaturamento = class(TFormTelaGeralTEMPLATE)
    SQLConfigVenda: TQuery;
    DSSQLConfigVenda: TDataSource;
    UpdateSQLConfigVenda: TUpdateSQL;
    ActionList1: TActionList;
    DataSetPost1: TDataSetPost;
    SQLOperacaoEstoque: TRxQuery;
    SQLOperacaoEstoqueOPESICOD: TIntegerField;
    SQLOperacaoEstoqueOPESA60DESCR: TStringField;
    DSSQLOperacaoEstoque: TDataSource;
    SQLConfigVendaCFVEN3MAXLIMCRED: TFloatField;
    SQLConfigVendaCFVEN2PERCLIMCRED: TFloatField;
    SQLConfigVendaCFVECTIPOLIMCRED: TStringField;
    SQLConfigVendaCFVECARREDPARCELA: TStringField;
    SQLConfigVendaCFVECTIPOIMPPED: TStringField;
    SQLConfigVendaCFVECDADOSCHQPDV: TStringField;
    SQLConfigVendaCFVECUSADEBCREDCLI: TStringField;
    SQLConfigVendaCGVECTESTAITENSNF: TStringField;
    SQLConfigVendaCFVEN3ALIQISSQN: TFloatField;
    SQLConfigVendaCFVECIMPLEGPEDVENF: TStringField;
    SQLConfigVendaCFVEN3PERCICMFRETE: TFloatField;
    SQLConfigVendaCFVEA255OBSPADNF: TStringField;
    SQLConfigVendaCFVEITEMPOCONSPROD: TIntegerField;
    SQLConfigVendaCFVECQUITARPARCHQ: TStringField;
    SQLConfigVendaCFVEA255OBSPADRPED: TStringField;
    SQLConfigVendaOPESICODCUPOM: TIntegerField;
    SQLConfigVendaOPESICODCANCCUPOM: TIntegerField;
    SQLConfigVendaOPESICODNF: TIntegerField;
    SQLConfigVendaOPESICODCANCNF: TIntegerField;
    SQLConfigVendaOPESICODRETORNO: TIntegerField;
    SQLConfigVendaCFVECRENDCONJNOLIM: TStringField;
    SQLConfigVendaOPESICODCANCTROCA: TIntegerField;
    SQLConfigVendaOPESICODTROCA: TIntegerField;
    SQLConfigVendaCFVECINFDADOVENDA: TStringField;
    SQLConfigVendaCFVECPARC0ENTRBAIX: TStringField;
    SQLConfigVendaCFVEIQTDPADRPDV: TIntegerField;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    GroupBox4: TGroupBox;
    SQLConfigVendaCFVEICMSFRETECOD: TIntegerField;
    SQLConfigVendaCFVECMOVESTOQUENF: TStringField;
    SQLConfigVendaCFVECMOVESTOQUEPED: TStringField;
    DBCheckBox3: TDBCheckBox;
    SQLConfigVendaOPESICODCANCPED: TIntegerField;
    SQLConfigVendaOPESICODPED: TIntegerField;
    Label4: TLabel;
    Label6: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    SQLConfigVendaPORTICOD: TIntegerField;
    SQLConfigVendaTPDCICOD: TIntegerField;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    SQLPortador: TRxQuery;
    DSSQLPortador: TDataSource;
    SQLTipoDocumento: TRxQuery;
    DSSQLTipoDocumento: TDataSource;
    SQLPortadorPORTICOD: TIntegerField;
    SQLPortadorPORTA60DESCR: TStringField;
    SQLTipoDocumentoTPDCICOD: TIntegerField;
    SQLTipoDocumentoTPDCA60DESCR: TStringField;
    SQLConfigVendaCFVECEXCLUIPEDFAT: TStringField;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    SQLConfigVendaCFVECALTPEDIMPORT: TStringField;
    SQLConfigVendaCFVETOBSPADRAONF: TStringField;
    SQLConfigVendaCFVETOBSPADRAOPED: TStringField;
    GroupBox5: TGroupBox;
    DBMemoNF: TDBMemo;
    GroupBox6: TGroupBox;
    DBMemoPedido: TDBMemo;
    SQLConfigVendaCFVEINROITENSNF: TIntegerField;
    SQLConfigVendaOPESICODIMPCUPOM: TIntegerField;
    Label10: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    Label11: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    SQLConfigVendaOPESICODVENDCONSIG: TIntegerField;
    SQLICMS: TRxQuery;
    DSSQLICMS: TDataSource;
    SQLConfigVendaCFVECIMPDESCRPRINF: TStringField;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    SQLConfigVendaCFVECCONTPEDVDAUSU: TStringField;
    SQLConfigVendaCFVECNAOIMPCLFISNF: TStringField;
    Label13: TLabel;
    RxDBLookupCombo9: TRxDBLookupCombo;
    SQLOperacaoTesouraria: TRxQuery;
    DSSQLOperacaoTesouraria: TDataSource;
    SQLOperacaoTesourariaOPTEICOD: TIntegerField;
    SQLOperacaoTesourariaOPTEA60DESCR: TStringField;
    SQLConfigVendaCFVEIOPTESVENDANF: TIntegerField;
    SQLConfigVendaCFVECFRETEPADRAO: TStringField;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    ComboICMS: TRxDBLookupCombo;
    DBEdit1: TDBEdit;
    Label26: TLabel;
    ComboFrete: TRxDBComboBox;
    SQLConfigVendaCFVECVENDEDOREXIGE: TStringField;
    DBCheckBox1: TDBCheckBox;
    SQLConfigVendaNUMEVISTA: TIntegerField;
    SQLConfigVendaNUMEPRAZO: TIntegerField;
    Label12: TLabel;
    Label14: TLabel;
    ComboNumerarioVista: TRxDBLookupCombo;
    ComboNumerarioPrazo: TRxDBLookupCombo;
    SQLNumVista: TRxQuery;
    SQLNumVistaNUMEICOD: TIntegerField;
    SQLNumVistaNUMEA30DESCR: TStringField;
    dsSQLNumVista: TDataSource;
    SQLNumPrazo: TRxQuery;
    dsSQLNumPrazo: TDataSource;
    SQLNumPrazoNUMEICOD: TIntegerField;
    SQLNumPrazoNUMEA30DESCR: TStringField;
    DBCheckBox2: TDBCheckBox;
    SQLConfigVendaCFVENIMPFINANC: TStringField;
    LabelGravar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure BtnFecharTelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConfiguracaoFaturamento: TFormTelaConfiguracaoFaturamento;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormTelaConfiguracaoFaturamento.FormCreate(Sender: TObject);
begin
  inherited;
  SQLConfigVenda.Open;
  SQLOperacaoEstoque.Open;
  SQLTipoDocumento.Open;
  SQLPortador.Open;
  SQLICMS.Open;
  SQLOperacaoTesouraria.Open;
  SQLNumVista.Open;
  SQLNumPrazo.Open;
end;

procedure TFormTelaConfiguracaoFaturamento.BtnFecharTelaClick(
  Sender: TObject);
begin
  if DM.SQLConfigVenda.Active then DM.SQLConfigVenda.Close;
  DM.SQLConfigVenda.Open;
  inherited;
end;

end.
