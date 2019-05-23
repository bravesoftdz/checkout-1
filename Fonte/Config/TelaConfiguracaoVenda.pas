unit TelaConfiguracaoVenda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls, Db, Mask,
  DBTables, RxLookup, RxQuery, ActnList, DBActns, ComCtrls, RxDBComb,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaConfiguracaoVenda = class(TFormTelaGeralTEMPLATE)
    DSSQLConfigVenda: TDataSource;
    SQLOperacaoEstoque: TRxQuery;
    SQLOperacaoEstoqueOPESICOD: TIntegerField;
    SQLOperacaoEstoqueOPESA60DESCR: TStringField;
    DSSQLOperacaoEstoque: TDataSource;
    SQLConfigVenda: TRxQuery;
    ActionList1: TActionList;
    DataSetPost1: TDataSetPost;
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
    SQLConfigVendaCFVECRENDCONJNOLIM: TStringField;
    SQLConfigVendaOPESICODRETORNO: TIntegerField;
    SQLConfigVendaOPESICODCANCTROCA: TIntegerField;
    SQLConfigVendaOPESICODTROCA: TIntegerField;
    SQLConfigVendaCFVECINFDADOVENDA: TStringField;
    SQLConfigVendaCFVECPARC0ENTRBAIX: TStringField;
    SQLConfigVendaCFVEA250MSGBLOQ: TStringField;
    SQLTabelaPreco: TRxQuery;
    SQLConfigVendaTPRCICOD: TIntegerField;
    DSSQLTabelaPreco: TDataSource;
    SQLConfigVendaCFVECFAZVENDCONSIG: TStringField;
    SQLConfigVendaOPESICODDEVOL: TIntegerField;
    SQLConfigVendaMTBLICODVENDCONSIG: TIntegerField;
    SQLMotivoBloqueio: TRxQuery;
    DSSQLMotivoBloqueio: TDataSource;
    SQLConfigVendaCFVECIMPPREVDCOD: TStringField;
    SQLConfigVendaCFVECFINVENDADPREVD: TStringField;
    SQLConfigVendaCFVECFINDPRODPORDESCR: TStringField;
    SQLConfigVendaCFVECPEDEVLRPRODUTO: TStringField;
    SQLConfigVendaCFVECTESTALIMTCRED: TStringField;
    SQLConfigVendaCFVECSUBDEBNOLIMITE: TStringField;
    SQLConfigVendaCFVEINROCASASDEC: TIntegerField;
    SQLConfigVendaCFVEN2PERCCOFINS: TFloatField;
    SQLConfigVendaCFVEN2PERCENCARG: TFloatField;
    SQLConfigVendaCFVEN2PERCPIS: TFloatField;
    PageControl1: TPageControl;
    TabConfiguracoes: TTabSheet;
    TabValores: TTabSheet;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    GroupBox4: TGroupBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    GroupBox7: TGroupBox;
    DBEdit7: TDBEdit;
    GroupBox8: TGroupBox;
    ComboTabelaPreco: TRxDBLookupCombo;
    GroupBox9: TGroupBox;
    RxDBLookupCombo7: TRxDBLookupCombo;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBRadioGroup1: TDBRadioGroup;
    GroupBox10: TGroupBox;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    GroupBox5: TGroupBox;
    Label5: TLabel;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label13: TLabel;
    DBEdit8: TDBEdit;
    SQLConfigVendaCFVECQUITAPARCONV: TStringField;
    DBCheckBox15: TDBCheckBox;
    SQLConfigVendaCFVECFARREDVLRVEND: TStringField;
    DBCheckBox17: TDBCheckBox;
    SQLConfigVendaCFVECUSALIBERCRED: TStringField;
    DBCheckBox18: TDBCheckBox;
    SQLConfigVendaCFVECSOLSENHAALTVLR: TStringField;
    DBCheckBox16: TDBCheckBox;
    SQLConfigVendaCFVECCONTPEDVDAUSU: TStringField;
    SQLConfigVendaCFVECINFPRODSUBTRI: TStringField;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    SQLConfigVendaCFVECQUITAPARCRT: TStringField;
    DBCheckBox21: TDBCheckBox;
    SQLConfigVendaCFVECINFVLRDEVCVEN: TStringField;
    GroupBox3: TGroupBox;
    ComboOrdemImp: TRxDBComboBox;
    SQLConfigVendaCFVEA20ORDIMPVEND: TStringField;
    BotaoGravar: TSpeedButton;
    SQLConfigVendaVALOR_LIMITE_PAGTO: TFloatField;
    GroupBox6: TGroupBox;
    DBEdit6: TDBEdit;
    procedure BotaoGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConfiguracaoVenda: TFormTelaConfiguracaoVenda;

implementation

uses DataModulo;

{$R *.DFM}

procedure TFormTelaConfiguracaoVenda.BotaoGravarClick(Sender: TObject);
begin
  inherited;
  SQLConfigVenda.DisableControls ;
  SQLConfigVenda.Close ;
  SQLConfigVenda.Open ;
  SQLConfigVenda.EnableControls ;
end;

procedure TFormTelaConfiguracaoVenda.FormCreate(Sender: TObject);
begin
  inherited;
  SQLConfigVenda.Open ;
  SQLOperacaoEstoque.Open ;
  SQLTabelaPreco.Open ;
  SQLMotivoBloqueio.Open ;
end;

procedure TFormTelaConfiguracaoVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DM.SQLConfigVenda.Close ;
  DM.SQLConfigVenda.Open ;
end;

end.
