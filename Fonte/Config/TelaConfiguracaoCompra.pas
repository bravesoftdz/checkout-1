unit TelaConfiguracaoCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  RxQuery, RxLookup, DB, ActnList, DBActns, DBTables, RxDBComb,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaConfiguracaoCompra = class(TFormTelaGeralTEMPLATE)
    SQLConfigCompra: TQuery;
    DSSQLConfigCompra: TDataSource;
    UpdateSQLConfigCompra: TUpdateSQL;
    ActionList1: TActionList;
    DataSetPost1: TDataSetPost;
    SQLConfigCompraCFCOITIPMOVCANCNFE: TIntegerField;
    SQLConfigCompraCFCOCALTPRCPRODENT: TStringField;
    SQLConfigCompraCFCOCTESTAITENSNFE: TStringField;
    SQLConfigCompraCFCOCTOTPRCVENPROD: TStringField;
    SQLConfigCompraCFCOCNUMSERPRODENT: TStringField;
    SQLConfigCompraCFCOCIMPLEGORDCOMP: TStringField;
    SQLConfigCompraCFCOITIPMOVNFE: TIntegerField;
    GroupBox1: TGroupBox;
    ComboOperacaoEntrada: TRxDBLookupCombo;
    ComboOperacaoSaida: TRxDBLookupCombo;
    SQLOperacaoEstoque: TRxQuery;
    SQLOperacaoEstoqueOPESICOD: TIntegerField;
    SQLOperacaoEstoqueOPESA60DESCR: TStringField;
    DSSQLOperacaoEstoque: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    SQLConfigCompraCFCOCALTVLRCOMPRA: TStringField;
    SQLConfigCompraCFCOCALTPERCIPI: TStringField;
    SQLConfigCompraCFCOCALTVLRCUSTO: TStringField;
    DBCheckBox6: TDBCheckBox;
    SQLConfigCompraCFCOCEXCLUIPEDENT: TStringField;
    SQLConfigCompraPORTICOD: TIntegerField;
    SQLConfigCompraTPDCICOD: TIntegerField;
    SQLPortador: TRxQuery;
    SQLPortadorPORTICOD: TIntegerField;
    SQLPortadorPORTA60DESCR: TStringField;
    SQLTipoDocumento: TRxQuery;
    SQLTipoDocumentoTPDCICOD: TIntegerField;
    SQLTipoDocumentoTPDCA60DESCR: TStringField;
    DSSQLTipoDocumento: TDataSource;
    DSSQLPortador: TDataSource;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    DBCheckBox7: TDBCheckBox;
    SQLConfigCompraCFCOCTESTPRODFORN: TStringField;
    GroupBox4: TGroupBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    RxDBComboBox1: TRxDBComboBox;
    Label3: TLabel;
    DBCheckBox2: TDBCheckBox;
    SQLConfigCompraCFCOCVERIFICAVLRMENOR: TStringField;
    DBCheckBox8: TDBCheckBox;
    SQLOperacaoEstoqueOPESCENTRADASAIDA: TStringField;
    SQLConfigCompraCFCOCINFDADOSFRETE: TStringField;
    DBCheckBox9: TDBCheckBox;
    SQLConfigCompraCFCOCPREVREALNFCOMPRAFIN: TStringField;
    RxDBComboBox2: TRxDBComboBox;
    Label4: TLabel;
    DBCheckBox10: TDBCheckBox;
    SQLConfigCompraCFCOCNIMPFINPEDCOMP: TStringField;
    LabelGravar: TSpeedButton;
    SQLConfigCompraLISTAPRECO_AUTOMATICO: TStringField;
    DBCheckBox11: TDBCheckBox;
    dbchkLISTAPRECO_AUTOMATICO: TDBCheckBox;
    SQLConfigCompraCADASTRAR_TODOS_PRODUTOS: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure ComboOperacaoEntradaExit(Sender: TObject);
    procedure ComboOperacaoSaidaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConfiguracaoCompra: TFormTelaConfiguracaoCompra;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormTelaConfiguracaoCompra.FormCreate(Sender: TObject);
begin
  inherited;
  SQLConfigCompra.Open;
  SQLOperacaoEstoque.Open;
  SQLPortador.Open;
  SQLTipoDocumento.Open;
end;

procedure TFormTelaConfiguracaoCompra.ComboOperacaoEntradaExit(
  Sender: TObject);
begin
  inherited;
  if SQLOperacaoEstoqueOPESCENTRADASAIDA.AsString <> 'E' then
    begin
      Informa('Esta operação de estoque não é de entrada, favor selecione uma operação de entrada!');
      ComboOperacaoEntrada.SetFocus;
      Abort;
      Exit;
    end;
end;

procedure TFormTelaConfiguracaoCompra.ComboOperacaoSaidaExit(
  Sender: TObject);
begin
  inherited;
  if SQLOperacaoEstoqueOPESCENTRADASAIDA.AsString <> 'S' then
    begin
      Informa('Para cancelamento de NF de entrada a operação de estoque deve ser do tipo "SAIDA", favor selecione uma operação de SAIDA!');
      ComboOperacaoSaida.SetFocus;
      Abort;
      Exit;
    end;
end;

end.
