unit TelaExportacaoSPED;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, RxLookup, StdCtrls, DB, DBTables, RxQuery,
  Buttons, jpeg, ExtCtrls, Mask, ToolEdit, Grids, DBGrids, ComCtrls,
  RxMemDS, IniFiles;

type
  TFormTelaExportacaoSped = class(TFormTelaGeralTEMPLATE)
    DSSQLEmpresa: TDataSource;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    SQLEmpresaEMPRA60NOMEFANT: TStringField;
    SQLEmpresaEMPRCMATRIZFILIAL: TStringField;
    SQLEmpresaEMPRA20FONE: TStringField;
    SQLEmpresaEMPRA20FAX: TStringField;
    SQLEmpresaEMPRA60END: TStringField;
    SQLEmpresaEMPRA60BAI: TStringField;
    SQLEmpresaEMPRA60CID: TStringField;
    SQLEmpresaEMPRA2UF: TStringField;
    SQLEmpresaEMPRA8CEP: TStringField;
    SQLEmpresaEMPRCFISJURID: TStringField;
    SQLEmpresaEMPRA14CGC: TStringField;
    SQLEmpresaEMPRA20IE: TStringField;
    SQLEmpresaEMPRA11CPF: TStringField;
    SQLEmpresaEMPRA10RG: TStringField;
    SQLEmpresaEMPRA60EMAIL: TStringField;
    SQLEmpresaEMPRA60URL: TStringField;
    SQLEmpresaPENDENTE: TStringField;
    SQLEmpresaREGISTRO: TDateTimeField;
    SQLEmpresaEMPRA100INFSPC: TStringField;
    SQLEmpresaEMPRA15CODEAN: TStringField;
    SQLEmpresaEMPRBLOGOTIPO: TBlobField;
    SQLEmpresaEMPRA60CONTATO: TStringField;
    GroupBox3: TGroupBox;
    ComboEmpresa: TRxDBLookupCombo;
    GroupBox2: TGroupBox;
    EditDiretorio: TDirectoryEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    De: TDateEdit;
    Ate: TDateEdit;
    GroupBox5: TGroupBox;
    MemoErro: TMemo;
    SQLUnidade: TRxQuery;
    SQLEmpresaEMPRIMUNICODFED: TIntegerField;
    SQLEmpresaEMPRA20CPFCONTADOR: TStringField;
    SQLEmpresaEMPRA20CPFRESP: TStringField;
    SQLEmpresaEMPRA30CRC: TStringField;
    SQLEmpresaEMPRA40CARGOCONT: TStringField;
    SQLEmpresaEMPRA40CARGORESP: TStringField;
    SQLEmpresaEMPRA60CONTADOR: TStringField;
    SQLEmpresaEMPRIENDNRO: TIntegerField;
    SQLEmpresaEMPRIUFCODFED: TIntegerField;
    SQLEmpresaEMPRDREGJUNTA: TDateTimeField;
    SQLEmpresaEMPRA3CRT: TStringField;
    SQLEmpresaEMPRN2CREDICMS: TBCDField;
    SQLEmpresaEMPRA15CRCCONTADOR: TStringField;
    SQLEmpresaEMPRA14CNPJCONTADOR: TStringField;
    SQLEmpresaEMPRA8CEPCONTADOR: TStringField;
    SQLEmpresaEMPRA60ENDCONTADOR: TStringField;
    SQLEmpresaEMPRA60BAICONTADOR: TStringField;
    SQLEmpresaEMPRA10FONECONTADOR: TStringField;
    SQLEmpresaEMPRA10FAXCONTADOR: TStringField;
    SQLEmpresaEMPRA7CODMUNCONTADOR: TStringField;
    SQLUnidadeUNIDA5DESCR: TStringField;
    SQLUnidadeUNIDA15DESCR: TStringField;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA30CODESTRUT: TStringField;
    SQLProdutoPRODA60CODBAR: TStringField;
    SQLProdutoPRODA15CODANT: TStringField;
    SQLProdutoPRODIAGRUPGRADE: TIntegerField;
    SQLProdutoPRODA60REFER: TStringField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoPRODA30ADESCRREDUZ: TStringField;
    SQLProdutoPRODA255DESCRTEC: TStringField;
    SQLProdutoPRODICODBALANCA: TIntegerField;
    SQLProdutoPRODA15APAVIM: TStringField;
    SQLProdutoPRODA15RUA: TStringField;
    SQLProdutoPRODA15PRATEL: TStringField;
    SQLProdutoCLFSICOD: TIntegerField;
    SQLProdutoMARCICOD: TIntegerField;
    SQLProdutoUNIDICOD: TIntegerField;
    SQLProdutoGRADICOD: TIntegerField;
    SQLProdutoGRTMICOD: TIntegerField;
    SQLProdutoGRUPICOD: TIntegerField;
    SQLProdutoSUBGICOD: TIntegerField;
    SQLProdutoVARIICOD: TIntegerField;
    SQLProdutoICMSICOD: TIntegerField;
    SQLProdutoPRODN3PESOBRUTO: TBCDField;
    SQLProdutoPRODN3PESOLIQ: TBCDField;
    SQLProdutoPRODN3CAPACEMBAL: TBCDField;
    SQLProdutoPRODDCAD: TDateTimeField;
    SQLProdutoPRODDULTALTER: TDateTimeField;
    SQLProdutoPRODN3VLRVENDA: TBCDField;
    SQLProdutoPRODN3VLRVENDAPROM: TBCDField;
    SQLProdutoPRODDINIPROMO: TDateTimeField;
    SQLProdutoPRODDFIMPROMO: TDateTimeField;
    SQLProdutoPRODN3VLRCOMPRA: TBCDField;
    SQLProdutoPRODN3VLRCUSTO: TBCDField;
    SQLProdutoPRODN3VLRCUSTOMED: TBCDField;
    SQLProdutoPRODN3PERCIPI: TBCDField;
    SQLProdutoPRODN3PERCMARGLUCR: TBCDField;
    SQLProdutoPRODCATIVO: TStringField;
    SQLProdutoPRODCSERVICO: TStringField;
    SQLProdutoPRODCGERACOMIS: TStringField;
    SQLProdutoPRODN2COMISVISTA: TBCDField;
    SQLProdutoPRODN2COMISPRAZO: TBCDField;
    SQLProdutoPRODDIMOBOLIZ: TDateTimeField;
    SQLProdutoPRODICODPAI: TIntegerField;
    SQLProdutoPRODCTIPOBAIXA: TStringField;
    SQLProdutoPRODN3QTDEBAIXA: TBCDField;
    SQLProdutoCORICOD: TIntegerField;
    SQLProdutoPRODIORIGEM: TIntegerField;
    SQLProdutoPENDENTE: TStringField;
    SQLProdutoREGISTRO: TDateTimeField;
    SQLProdutoPRODDULTATUALIZ: TDateTimeField;
    SQLProdutoPRODA60DIMENSAO: TStringField;
    SQLProdutoPRODISITTRIB: TIntegerField;
    SQLProdutoPRODITIPOPRODBALAN: TStringField;
    SQLProdutoPRODICODETIQBAL: TIntegerField;
    SQLProdutoPRODIDIASVALIDADE: TIntegerField;
    SQLProdutoPRODN3VLRCOMPRAMED: TBCDField;
    SQLProdutoPRODN3DOLARCUSTO: TBCDField;
    SQLProdutoPRODN3DOLARCOMPRA: TBCDField;
    SQLProdutoPRODN3DOLARVENDA: TBCDField;
    SQLProdutoPRODBIMAGEM: TBlobField;
    SQLProdutoPRODCSUBSTRIB: TStringField;
    SQLProdutoPRODCTEMNROSERIE: TStringField;
    SQLProdutoPRODA03GARANTIA: TStringField;
    SQLProdutoPRODA254COMPQUIMICA: TStringField;
    SQLProdutoPRODCTIPO: TStringField;
    SQLProdutoPRODN2PERCFRETE: TBCDField;
    SQLProdutoPRODN2PERDA: TBCDField;
    SQLProdutoPRODN2PIS: TBCDField;
    SQLProdutoPRODN3ALTURA: TBCDField;
    SQLProdutoPRODN3COMPRIMENTO: TBCDField;
    SQLProdutoPRODN3DIMENTOTAL: TBCDField;
    SQLProdutoPRODN3LARGURA: TBCDField;
    SQLProdutoPRODA30INF01ETQBARRAS: TStringField;
    SQLProdutoPRODA30INF02ETQBARRAS: TStringField;
    SQLProdutoCOLEICOD: TIntegerField;
    SQLProdutoPRODN2PERCDESP: TBCDField;
    SQLProdutoPRODN2PERCSUBST: TBCDField;
    SQLProdutoPRODN3VLRTABFOR: TBCDField;
    SQLProdutoDECRICOD: TIntegerField;
    SQLProdutoPRODN3PERCMARGLUC2: TBCDField;
    SQLProdutoPRODN2PERCDIFICM: TBCDField;
    SQLProdutoPRODN3PERCMGLVFIXA: TBCDField;
    SQLProdutoPRODN3PERCMGLAFIXA: TBCDField;
    SQLProdutoPRODCPERMITETROCA: TStringField;
    SQLProdutoPRODDULTCOMPRA: TDateTimeField;
    SQLProdutoPRODDULTVENDA: TDateTimeField;
    SQLProdutoPRODIPRINCIPAL: TIntegerField;
    SQLProdutoPRODN3QTDULTCOMPRA: TBCDField;
    SQLProdutoPRODDPREVCOMPRA: TDateTimeField;
    SQLProdutoPRODCCOFINS: TStringField;
    SQLProdutoPRODCIMPRECEITA: TStringField;
    SQLProdutoPRODA30CULTURA: TStringField;
    SQLProdutoPRODA30DIAGNOST: TStringField;
    SQLProdutoPRODA30PRINCATV: TStringField;
    SQLProdutoPRODA10MEDIDA: TStringField;
    SQLProdutoPRODA30EPOCAPLIC: TStringField;
    SQLProdutoPRODA30EQUIPAMEN: TStringField;
    SQLProdutoPRODA30FITOTOXID: TStringField;
    SQLProdutoPRODA30CARENCIA: TStringField;
    SQLProdutoPRODA30TOXIDADE: TStringField;
    SQLProdutoPRODN3MULTIPLIC: TBCDField;
    SQLProdutoPRODN2DOSAGEM: TBCDField;
    SQLProdutoPRODTEXTENDIDO: TStringField;
    SQLProdutoPRODTOBSCOMPLEM: TStringField;
    SQLProdutoPRODN3VLRVENDA2: TBCDField;
    SQLProdutoPRODCIMPETIQCDBAR: TStringField;
    SQLProdutoPRODA254ORIENTACAO: TStringField;
    SQLProdutoPRODN3QTDVOLUME: TBCDField;
    SQLProdutoPRODCVDESTNEG: TStringField;
    SQLProdutoPRODA2CSTCOFINS: TStringField;
    SQLProdutoPRODA2CSTIPI: TStringField;
    SQLProdutoPRODA2CSTPIS: TStringField;
    SQLProdutoPRODN2ALIQCOFINS: TBCDField;
    SQLProdutoPRODN2ALIQPIS: TBCDField;
    SQLProdutoPRODCBLOQVPRAZO: TStringField;
    SQLProdutoNCMICOD: TIntegerField;
    SQLProdutoPRODN2DESCMAX: TBCDField;
    SQLProdutoPRODA1MODBC: TStringField;
    SQLProdutoPRODA1MODBCST: TStringField;
    SQLProdutoPRODA1TIPO: TStringField;
    SQLProdutoPRODA20C0DIF: TStringField;
    SQLProdutoPRODA9CODANP: TStringField;
    SQLProdutoPRODN4ALIQCIDE: TBCDField;
    SQLProdutoPRODCIMPCOZINHA: TStringField;
    SQLProdutoPRODCIMPVALE: TStringField;
    SQLProdutoPRODA30COZINHA: TStringField;
    CkBarras: TCheckBox;
    SQLEmpresaEMPRIATIVIDADE: TIntegerField;
    SQLInventario: TRxQuery;
    GroupBox4: TGroupBox;
    DataInventario: TDateEdit;
    Label6: TLabel;
    CmbModelo: TComboBox;
    Label7: TLabel;
    CmbEscrituracao: TComboBox;
    SQLEmpresaEMPRA2NATPJ: TStringField;
    SQLEmpresaEMPRA9SUFRAMA: TStringField;
    CmbIncidencia: TComboBox;
    CmbTipoTrib: TComboBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    CmbApropriacao: TComboBox;
    Label12: TLabel;
    CmbCriterioEscrit: TComboBox;
    SQLProdutoPRODA2TIPOITEM: TStringField;
    SQLProdutoNCMA30CODIGO: TStringField;
    SQLEmpresaEMPRA20IMUNIC: TStringField;
    SQLEmpresaEMPRA150CONTADOREMAIL: TStringField;
    Panel1: TPanel;
    Label5: TLabel;
    EditTabela: TEdit;
    Progress: TProgressBar;
    Label8: TLabel;
    Label2: TLabel;
    ProgressGeral: TProgressBar;
    SQLPesquisa: TRxQuery;
    SQLInventarioPRODICOD: TIntegerField;
    SQLInventarioPRODA60DESCR: TStringField;
    SQLInventarioPRODN3VLRVENDA: TBCDField;
    SQLInventarioPRODN3CAPACEMBAL: TBCDField;
    SQLInventarioPRODN3VLRCUSTO: TBCDField;
    SQLInventarioPRODN3VLRCUSTOMED: TBCDField;
    SQLInventarioPSLDN3QTDE: TBCDField;
    SQLInventarioICMSA60DESCR: TStringField;
    SQLInventarioICMSICOD: TIntegerField;
    SQLInventarioTOTAL: TFloatField;
    SQLInventarioUNIDA5DESCR: TStringField;
    SQLInventarioQTDE: TFloatField;
    Label3: TLabel;
    Label13: TLabel;
    cmbMotivoInventario: TComboBox;
    chkGeraInventario: TCheckBox;
    Label14: TLabel;
    edtContaAnalitica: TEdit;
    SQLInventarioPRODISITTRIB: TIntegerField;
    SQLInventarioICMSN2REDBASEICMS: TBCDField;
    SQLInventarioICMSN2REDBASEICMS_1: TBCDField;
    SQLInventarioPRODA60CODBAR: TStringField;
    SQLSubPesquisa: TRxQuery;
    SQLSegundaPesquisa: TRxQuery;
    SQLTerceiraPesquisa: TRxQuery;
    BtExecutar: TSpeedButton;
    SQLTerminalECF: TRxQuery;
    SQLTerminalECFTERMICOD: TIntegerField;
    SQLTerminalECFECFA13ID: TStringField;
    SQLCupom: TRxQuery;
    SQLCupomQUANTIDADE: TBCDField;
    SQLCupomVALORTOTALITEM: TFloatField;
    SQLCupomPRODICOD: TIntegerField;
    SQLCupomC410: TRxQuery;
    SQLCupomC410VALORTOTALCOFINS: TFloatField;
    SQLCupomC410VALORTOTALPIS: TFloatField;
    SQLReducaoZ: TRxQuery;
    SQLReducaoZREDUA13ID: TStringField;
    SQLReducaoZEMPRICOD: TIntegerField;
    SQLReducaoZREDUICOD: TIntegerField;
    SQLReducaoZECFA13ID: TStringField;
    SQLReducaoZTERMICOD: TIntegerField;
    SQLReducaoZREDUDEMIS: TDateTimeField;
    SQLReducaoZREDUN3VENDABRUTA: TBCDField;
    SQLReducaoZREDUN3GRANDETOTAL: TBCDField;
    SQLReducaoZREDUICONTINICIAL: TIntegerField;
    SQLReducaoZREDUICONTFINAL: TIntegerField;
    SQLReducaoZREDUICONTREDUZ: TIntegerField;
    SQLReducaoZREDUICONTREINICIO: TIntegerField;
    SQLReducaoZREDUN3ALIQ1: TBCDField;
    SQLReducaoZREDUN3BASE1: TBCDField;
    SQLReducaoZREDUN3IMPO1: TBCDField;
    SQLReducaoZREDUN3ALIQ2: TBCDField;
    SQLReducaoZREDUN3BASE2: TBCDField;
    SQLReducaoZREDUN3IMPO2: TBCDField;
    SQLReducaoZREDUN3ALIQ3: TBCDField;
    SQLReducaoZREDUN3BASE3: TBCDField;
    SQLReducaoZREDUN3IMPO3: TBCDField;
    SQLReducaoZREDUN3ALIQ4: TBCDField;
    SQLReducaoZREDUN3BASE4: TBCDField;
    SQLReducaoZREDUN3IMPO4: TBCDField;
    SQLReducaoZREDUN3ALIQ5: TBCDField;
    SQLReducaoZREDUN3BASE5: TBCDField;
    SQLReducaoZREDUN3IMPO5: TBCDField;
    SQLReducaoZREDUN3ALIQ6: TBCDField;
    SQLReducaoZREDUN3BASE6: TBCDField;
    SQLReducaoZREDUN3IMPO6: TBCDField;
    SQLReducaoZREDUN3VENDALIQ: TBCDField;
    SQLReducaoZREDUN3VLRCANC: TBCDField;
    SQLReducaoZREDUN3VLRDESC: TBCDField;
    SQLReducaoZREDUITOTCUPOM: TIntegerField;
    SQLReducaoZREDUN3ALIQ7: TBCDField;
    SQLReducaoZREDUN3BASE7: TBCDField;
    SQLReducaoZREDUN3IMPO7: TBCDField;
    SQLReducaoZREDUN3ALIQ8: TBCDField;
    SQLReducaoZREDUN3BASE8: TBCDField;
    SQLReducaoZREDUN3IMPO8: TBCDField;
    SQLReducaoZREDUN3ALIQF: TBCDField;
    SQLReducaoZREDUN3BASEF: TBCDField;
    SQLReducaoZREDUN3IMPOF: TBCDField;
    SQLReducaoZREDUN3ALIQI: TBCDField;
    SQLReducaoZREDUN3BASEI: TBCDField;
    SQLReducaoZREDUN3IMPOI: TBCDField;
    SQLReducaoZREDUN3ALIQN: TBCDField;
    SQLReducaoZREDUN3BASEN: TBCDField;
    SQLReducaoZREDUN3IMPON: TBCDField;
    SQLReducaoZREDUN3ALIQS: TBCDField;
    SQLReducaoZREDUN3BASES: TBCDField;
    SQLReducaoZREDUN3IMPOS: TBCDField;
    SQLCod_Part: TRxQuery;
    SQLCod_PartCOD_PART: TStringField;
    SQLCod_PartNOME: TStringField;
    SQLCod_PartCOD_PAIS: TStringField;
    SQLCod_PartCNPJ: TStringField;
    SQLCod_PartCPF: TStringField;
    SQLCod_PartIE: TStringField;
    SQLCod_PartCOD_MUN: TStringField;
    SQLCod_PartCOD_SUFRAMA: TStringField;
    SQLCod_PartENDERECO: TStringField;
    SQLCod_PartEND_NUM: TStringField;
    SQLCod_PartCOMPLEMENTO: TStringField;
    SQLCod_PartBAIRRO: TStringField;
    SQL0200: TRxQuery;
    SQLRegC490: TRxQuery;
    SQLRegC490CST_ICMS: TStringField;
    SQLRegC490CFOP: TStringField;
    SQLRegC490ALIQ_ICMS: TStringField;
    SQLRegC490VL_OPR: TBCDField;
    SQLRegC490VL_BC_ICMS: TBCDField;
    SQLRegC490VL_ICMS: TBCDField;
    SQLRegC490VL_BC_ICMS_ST: TBCDField;
    SQLRegC490VL_ICMS_ST: TBCDField;
    SQLRegC490VL_RED_BC: TBCDField;
    SQLRegC490VL_IPI: TBCDField;
    SQLCod_PartCOD_TRANSP: TIntegerField;
    SQLCod_PartCOD_FORN: TIntegerField;
    SQL0190: TRxQuery;
    SQL0190UND_SIGLA: TStringField;
    SQL0190UND_DESCR: TStringField;
    chkterminal: TCheckBox;
    chkItensNFe: TCheckBox;
    ChkImporta: TCheckBox;
    SQLC400: TRxQuery;
    SQLC405: TRxQuery;
    SQLC420: TRxQuery;
    SQLC460: TRxQuery;
    SQLC470: TRxQuery;
    SQLC490: TRxQuery;
    SQLC410: TRxQuery;
    ck0200: TCheckBox;
    ckC400: TCheckBox;
    Mem0220: TRxMemoryData;
    Mem0220UNIDADE: TStringField;
    ckQuestor: TCheckBox;
    edtVersao: TEdit;
    Label15: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BtExecutarClick(Sender: TObject);
    procedure chkGeraInventarioClick(Sender: TObject);
  private
    { Private declarations }
    Function  Registro_Bloco_Zero:Boolean;
    Function  Registro0150: Boolean;
    Function  Registro_Bloco_C: boolean;
    Function  Registro_Bloco_D: boolean;
    Function  Registro_Bloco_E: boolean;
    Function  Registro_Bloco_G: boolean;
    Function  Registro_Bloco_H: boolean;
    Function  Registro_Bloco_1: boolean;
    Function  Registro_Bloco_9: boolean;
    Function  RegistroC100: boolean;
    Function  RegistroC113: boolean;
    Function  RegistroC114: boolean;
    Function  RegistroC120: Boolean;
    Function  RegistroC130: Boolean;
    Function  RegistroC140: Boolean;
    Function  RegistroC141: Boolean;
    Function  RegistroC160: Boolean;
    Function  RegistroC170: Boolean;
    Function  RegistroC172: Boolean;
    Function  RegistroC190_Tabela: Boolean;
    Function  RegistroC190: Boolean;
    Function  RegistroC410(SerieECF:String; DataRDZ:String): boolean;
    Function  RegistroC420: boolean;
    Function  RegistroC420Importado(SerieECF:String; DataRDZ:String): boolean;
    Function  RegistroC425: boolean;
    Function  RegistroC460_C470_C490: boolean;
    Function  RegistroC481: boolean;
    Function  RegistroC485: boolean;
    Function  RegistroD100: Boolean;
    Function  RegistroD190: Boolean;
    Function  Registro0220(Produto:String): Boolean;
    Function  Inclui_0190(CodProduto : string): Boolean;
    Function  Inclui_0200(Produto : string; Selected: String): Boolean;
    Function  Registro0206(Produto:String): Boolean;
    Function GravaRegistros(LinhaErro : string): Boolean;
    Function RetornaValor(Campo: String):Extended;

  public
    { Public declarations }
    Arquivo : TextFile;

    CaminhoNomeArquivo, Linha, IE_Emit, IE, Fax_Emit, Fone_Emit, vEntradaSaida : String ;
    vIndEmitente, vCodParticipante, NroDocumento, vDataDocumento : String;

    Erro, CriaC400, CriaC405, CriaC481, CriaC485 : Boolean;

    I, TotalRegistros, TotalBlocoZero, Total_Bloco_A, Total_Bloco_C, Total_Bloco_D,
    Total_Bloco_E, Total_Bloco_G, Total_Bloco_H, Total_Bloco_1, Total_Bloco_9 : Integer;


    n0000, n0001, n0005, n0100, n0110, n0111, n0140, n0150, n0190, n0200, n0206, n0220, n0990 : Integer;
    n9001, n9900, n9990, n9999 : Integer;
    nA001, nA010, nA100, nA110, nA111, nA120, nA170, nA990 :Integer;
    nC001, nC010, nC100, nC105, nC110, nC111, nC113, nC114, nC115, nC120, nC130 :Integer;
    nC140, nC141, nC160, nC170, nC172, nC190, nC400, nC405, nC410, nC420, nC425, nC460, nC470, nC490, nC481, nC485, nC990 :Integer;
    nD001, nD100, nD190, nD990 : Integer;
    nE001, nE990 : Integer;
    nF001, nF100, nF990 : Integer;
    nG001, nG990 : Integer;
    nH001, nH005, nH010, nH020, nH990 : Integer;
    nM001, nM100, nM200, nM210, nM600, nM610, nM990 : Integer;
    n1001, n1010, n1100, n1105, n1300, n1310, n1320, n1350, n1360, n1370, n1990 : Integer;

    function SoNumeros(xText:String):String;
  end;

var
  FormTelaExportacaoSped: TFormTelaExportacaoSped;
  nCFOPConfig : String;
  nCFOPLubrificante : String;
  nGrupoLubrificante: String;

implementation

uses DataModulo, DataModuloTemplate, UnitLibrary;

{$R *.dfm}

Function TFormTelaExportacaoSped.SoNumeros(xText:String):String;
var p:Integer;
 nVar:String;
begin
  nVar := '';
  if xText <> '' then
  begin
    for p:= 0 to length(xText) do
      if xText[p] in (['0'..'9']) then
        nVar := nVar + xText[p];
  end else
    nVar := '';
  Result := nVar
end;

procedure TFormTelaExportacaoSped.FormCreate(Sender: TObject);
begin
  inherited;
  SQLEmpresa.Open;
end;

procedure TFormTelaExportacaoSped.BtExecutarClick(Sender: TObject);
begin
  inherited;
  TotalRegistros := 0;
  if (De.Date = null) or (ate.Date = null) then
    begin
      ShowMessage('Informe as datas antes de tentar executar a rotina!');
      Exit;
    end;
  if ComboEmpresa.Value = '' then
    begin
      ShowMessage('Informe a Empresa antes de tentar executar a rotina!');
      Exit;
    end;

  if chkGeraInventario.Checked then
  begin
    if cmbMotivoInventario.ItemIndex = -1 then
    begin
      Showmessage('Selecione o Motivo da Apuração do Inventário!');
      Exit;
    end;

    if edtContaAnalitica.Text = '' then
    begin
      Showmessage('Preecha a Informação do Código Conta Contábil Analitica!');
      Exit;
    end;
  end;

  SQLPesquisa.Close;
  SQLPesquisa.SQL.Text := 'Select * from serie';
  SQLPesquisa.Open;

  While not SQLPesquisa.Eof do
  begin
    if (SQLPesquisa.FieldByName('SERIA2TIPONOTA').AsString = '') OR (SQLPesquisa.FieldByName('SERIA2TIPONOTA').IsNull) then
    Begin
      ShowMessage('Série '+SQLPesquisa.FieldByName('SERIA5COD').AsString +' não contêm identificação de documento fiscal');
      Exit;
    End;
    SQLPesquisa.Next;
  end;
  SQLPesquisa.Close;


  ProgressGeral.Max := 100;

  CaminhoNomeArquivo := EditDiretorio.Text + '\SPED_FISCAL_'+SQLEmpresaEMPRA14CGC.AsString+'_'+FormatDateTime('ddmmyyyy',De.date)+'_'+FormatDateTime('ddmmyyyy',ate.Date)+'.TXT';
  try
    AssignFile(Arquivo,CaminhoNomeArquivo);
    Rewrite(Arquivo);
  except on E:Exception Do
  begin
    Showmessage('Falha ao Criar Arquivo: '+E.message);
    Exit;
  end; End;

  BtExecutar.Enabled := False;
  de.Enabled  := False;
  ate.Enabled := False;

  dm.SQLTemplate.Close;
  dm.SQLTemplate.sql.Clear;
  dm.SQLTemplate.sql.Add('Delete From SPED_190');
  dm.SQLTemplate.ExecSQL;

  // Se nao for importar os dados dos ECFs, apagar os Produtos, para recriar corretamente
  if not ChkImporta.Checked then
    begin
      dm.SQLTemplate.Close;
      dm.SQLTemplate.sql.Clear;
      dm.SQLTemplate.sql.Add('Delete From SPED_0200');
      dm.SQLTemplate.ExecSQL;
    end;

  if Not Registro_Bloco_Zero Then
  begin
    Showmessage('Falha ao Gerar Registro Bloco Zero');
    CloseFile(Arquivo);
    Exit;
  End;

  if not Registro_Bloco_C Then
  Begin
    Showmessage('Falha ao Gerar Bloco C');
    CloseFile(Arquivo);
    Exit;
  End;

  if Not Registro_Bloco_D Then
  Begin
    Showmessage('Falha ao Gerar Bloco D');
    CloseFile(Arquivo);
    Exit;
  End;

  if Not Registro_Bloco_E Then
  Begin
    Showmessage('Falha ao gerar Bloco E');
    CloseFile(Arquivo);
    Exit;
  End;

  if Not Registro_Bloco_G Then
  Begin
    Showmessage('Falha ao Gerar Bloco G');
    CloseFile(Arquivo);
    Exit;
  End;

  if Not Registro_Bloco_H Then
  Begin
    ShowMessage('Falha ao Gerar Bloco H');
    CloseFile(Arquivo);
    Exit;
  end;

  if Not Registro_Bloco_1 Then
  Begin
    ShowMessage('Falha ao Gerar Bloco 1');
    CloseFile(Arquivo);
    Exit;
  End;

  if Not Registro_Bloco_9 Then
  Begin
    ShowMessage('Falha ao Gerar Bloco 9');
    CloseFile(Arquivo);
    Exit;
  End;

  // Fechar Arquivo
  CloseFile(Arquivo);
  Progress.Position  := 0;
  Progress.Update;
  ProgressGeral.Position := 0;
  ProgressGeral.Update;
  BtExecutar.Enabled := True;
  de.Enabled  := True;
  ate.Enabled := True;

  ShowMessage('Geração Concluida!');
end;

Function TFormTelaExportacaoSped.Registro_Bloco_Zero: boolean;
var CodProd, CodBarrasProd, CodNCM, Versao, ErroProdutos : string;
    IncluiItem: Boolean;
Begin
  Versao := edtVersao.Text;
  if length(Versao) <> 3 then
    begin
      ShowMessage('Versao do Layout deve ter 3 caracteres! Ex.006');
      Abort;
      Exit;
    end;
  //Registro 0000 - ABERTURA DO ARQUIVO DIGITAL E IDENTIFICAÇÃO DA ENTIDADE
  TotalBlocoZero := 1;
  EditTabela.Text := 'Exportando Dados da Empresa'; EditTabela.Update;
  n0000 := 0;
  // SPED Fiscal
  Linha := '|0000|'                                                            ; // 01-Registro 0000
           Linha := Linha + Versao                  + '|'                      ; // 02-COD_VER = Versao do layout

           Linha := Linha +
           '0|'                                                                + // 03-TIPO_ESCRIT = 0=Remessa Arq Original, 1=Remessa Arq Substituido
           FormatDateTime('ddmmyyyy',De.date)       + '|'                      + // 04-DT_INI = Dt Inicial
           FormatDateTime('ddmmyyyy',ate.date)      + '|'                      + // 05-DT_FIN = Dt Final
           SQLEmpresaEMPRA60RAZAOSOC.AsString       + '|'                      + // 06-NOME = Nome da Empresa
           SQLEmpresaEMPRA14CGC.AsString            + '|'                      + // 07-CNPJ = 14
           SQLEmpresaEMPRA11CPF.AsString            + '|'                      + // 08-CPF= 11
           SQLEmpresaEMPRA2UF.AsString              + '|'                      + // 09-UF
           COPY(SQLEmpresaEMPRA20IE.AsString,0,14)  + '|'                      + // 10-IE = 14
           SQLEmpresaEMPRIMUNICODFED.AsString       + '|'                      + // 11-COD_MUN
           SQLEmpresaEMPRA15CODEAN.AsString         + '|'                      + // 12-INSCRICAO MUNICIPAL
           ''                                       + '|'                      + // 13-SUFRAMA-Superintendência da Zona Franca de Manaus
           'A'                                      + '|'                      + // 14-IND_PERFIL = Indicador da natureza da pessoa jurídica: 00 - Sociedade empresária em geral, 01 - Sociedade cooperativa
           SQLEmpresaEMPRIATIVIDADE.AsString        + '|'                      ; // 15-IND_ATIV = Indicador de tipo de atividade preponderante: 0 - Industrial ou equiparado a industrial, 1 - Prestador de serviços, 2 - Atividade de comércio, 3 - Atividade financeira, 4 - Atividade imobiliária, 9 - Outros.

  if not GravaRegistros('0000') Then Begin Result := False; Exit; End;
  inc(n0000);

  //Registro 0001 - ABERTURA BLOCO ZER0
  n0001 := 0;
  EditTabela.Text := 'Criando Bloco Zero'; EditTabela.Update;
  Linha :=   '|0001|'                                                            + // 01-Registro 0001
             '0'                                      + '|'                      ; // 02-IND_MOV = Indicador de movimento: 0- Bloco com dados informados, 1- Bloco sem dados informados.

  if not GravaRegistros('0001') Then Begin Result := False; Exit; End;
  inc(n0001);

  TotalBlocoZero := TotalBlocoZero + 1;

  {REGISTRO 0005: DADOS COMPLEMENTARES DA ENTIDADE
  Registro obrigatório utilizado para complementar as informações de identificação do informante do arquivo.}
  n0005 := 0;
  Linha := '|0005|'                                                          + // 01 REG Texto fixo contendo 0005
         SQLEmpresaEMPRA60NOMEFANT.AsString                   + '|'                      + // 02 FANTASIA Nome de fantasia associado ao nome empresarial. C 060 - O
         SQLEmpresaEMPRA8CEP.AsString                         + '|'                      + // 03 CEP Código de Endereçamento Postal. N 008* - O
         SQLEmpresaEMPRA60END.AsString                        + '|'                      + // 04 END Logradouro e endereço do imóvel. C 060 - O
         FormatDateTime('ddmmyyyy',ate.date)                  + '|'                      + // 05 NUM Número do imóvel. C 010 - OC
         SQLEmpresaEMPRIENDNRO.AsString                       + '|'                      + // 06 COMPL Dados complementares do endereço. C 060 - OC
         SQLEmpresaEMPRA60BAI.AsString                        + '|'                      + // 07 BAIRRO Bairro em que o imóvel está situado. C 060 - O
         Copy(SoNumeros(SQLEmpresaEMPRA20FONE.AsString),0,11) + '|'                      + // 08 FONE Número do telefone (DDD+FONE). C 11 - OC
         Copy(SoNumeros(SQLEmpresaEMPRA20FAX.AsString),0,11)  + '|'                      + // 09 FAX Número do fax. C 11 - OC
         SQLEmpresaEMPRA60EMAIL.AsString                      + '|'                      ; // 10 EMAIL Endereço do correio eletrônico. C - - OC}

  if not GravaRegistros('0000') Then Begin Result := False; Exit; End;
  inc(n0005);
  TotalBlocoZero := TotalBlocoZero + 1;

  //REGISTRO 0015: DADOS DO CONTRIBUINTE SUBSTITUTO  -  Ver oque é
  {01 REG Texto fixo contendo "0015" C 004 - O
   02 UF_ST Sigla da unidade da federação do contribuinte substituído.
  03 IE_ST Inscrição Estadual do contribuinte substituto na unidade da federação do contribuinte substituído.}


  //Registro 0100 - DADOS DO CONTABILISTA
  EditTabela.Text := 'Exportando Dados do Contador'; EditTabela.Update;
  n0100 := 0;
  Linha :=   '|0100|'                                                            + // 01-Registro 0100
             SQLEmpresaEMPRA60CONTADOR.Value                        + '|'                      + // 02-NOME = Nome Contador
             Copy(SQLEmpresaEMPRA20CPFCONTADOR.AsString,0,11)       + '|'                      + // 03-CPF
             SQLEmpresaEMPRA15CRCCONTADOR.AsString                  + '|'                      + // 04-CRC
             SQLEmpresaEMPRA14CNPJCONTADOR.Value                    + '|'                      + // 05-CNPJ
             SQLEmpresaEMPRA8CEPCONTADOR.Value                      + '|'                      + // 06-CEP
             SQLEmpresaEMPRA60ENDCONTADOR.Value                     + '|'                      + // 07-ENDERECO
             ''                                                     + '|'                      + // 08-NUMERO
             ''                                                     + '|'                      + // 09-COMPL
             SQLEmpresaEMPRA60BAICONTADOR.Value                     + '|'                      + // 10-BAIRRO
             SQLEmpresaEMPRA10FONECONTADOR.Value                    + '|'                      + // 11-FONE
             SQLEmpresaEMPRA10FAXCONTADOR.Value                     + '|'                      + // 12-FAX
             SQLEmpresaEMPRA150CONTADOREMAIL.AsString               + '|'                      + // 13-EMAIL
             SQLEmpresaEMPRA7CODMUNCONTADOR.Value                   + '|'                      ; // 14-COD_MUN

  if not GravaRegistros('0100') Then Begin Result := False; Exit; End;
  inc(n0100);
  TotalBlocoZero := TotalBlocoZero + 1;

  // Registro 0150 - TABELA DE CADASTRO DO PARTICIPANTE
  EditTabela.Text := 'Criando Registro 0150'; EditTabela.Update;
  if Not Registro0150 Then
  begin
    Result := False ;
    Exit;
  End;


  {REGISTRO 0175: Alteração da Tabela de Cadastro de Participante
    Este registro é de preenchimento obrigatório quando houver, dentro do período, alteração nos dados informados no
    registro 0150, campos: NOME, COD_PAIS, CNPJ, CPF, IE, COD_MUN, SUFRAMA, END, NUM, COMPL e BAIRRO.
    Página 20 de 174
    Guia Prático EFD – Versão 2.0.7
    Atualização: dezembro de 2011
    Não pode ser utilizado, em um mesmo arquivo, um mesmo código para representar um participante diferente do
    referenciado anteriormente por tal código.
    Os dados informados neste registro serão considerados até às 24:00 horas do dia anterior à data de alteração.
    Nº Campo Descrição Tipo Tam Dec Obrig
    01 REG Texto fixo contendo “0175” C 004 - O
    02 DT_ALT Data de alteração do cadastro N 008* - O
    03 NR_CAMPO Número do campo alterado (Somente campos 03 a 13) C 002 - O
    04 CONT_ANT Conteúdo anterior do campo C 100 - O
    }

  ProgressGeral.Position := 10;
  ProgressGeral.Update;

  Progress.Position:= 0;
  Progress.Update;

  // Testar movimentos para identificar os produtos que irao no SPED
  EditTabela.Text := 'Verificando Produtos... Aguarde!'; EditTabela.Update;


  if ChkImporta.Checked then
  begin
    {Caso seja marcado para importar dados das tabelas que receberam os dados importados das impressoras fiscais o
    sistema le a tabela SPED_0200 que contem os produtos lidos das ECFs.}

    SQLPesquisa.Close;
    SQLPesquisa.SQL.Text := 'Select distinct unidade.unida5descr, unidade.unida15descr from sped_C470 '+
    'left join sped_0200 on sped_0200.cod_item = sped_c470.coditem '+
    'left join produto on produto.prodicod = sped_0200.cod_item    '+
    'left join unidade on unidade.unidicod = produto.unidicod      '+
    'where  sped_c470.datareducao >= :xdataIni and sped_c470.datareducao <= :xDataFim ';
    SQLPesquisa.ParamByName('xDataIni').AsDate   := De.Date;
    SQLPesquisa.ParamByName('xDataFim').AsDate   := Ate.Date;
    SQLPesquisa.Open;

    SQL0190.Close;
    SQL0190.SQL.Text := 'SELECT * FROM SPED_190 ';
    SQL0190.Open;

    While not SQLPesquisa.Eof do
    begin
      SQL0190.Append;
      SQL0190UND_SIGLA.AsString := SQLPesquisa.Fieldbyname('UNIDA5DESCR').AsString;
      SQL0190UND_DESCR.AsString := SQLPesquisa.Fieldbyname('UNIDA15DESCR').AsString;
      SQL0190.Post;
      SQLPesquisa.Next;
    End;

    ProgressGeral.Position := 20;
    ProgressGeral.Update;


   { SQLPesquisa.Close;
    SQLPesquisa.SQL.Text := 'Select * from  SPED_0200 order by Cod_item';
    SQLPesquisa.Prepare;
    SQLPesquisa.Open;

    while not SQLPesquisa.eof do
    begin
      SQLTerceiraPesquisa.Close;
      SQLTerceiraPesquisa.SQL.Text := 'Select coditem from SPED_C470 where CodItem = :xCodigo and DataReducao >= :xDataIni and DataReducao <= :xDataFim';
      SQLTerceiraPesquisa.Prepare;
      SQLTerceiraPesquisa.ParamByName('xCodigo').AsInteger := SQLPesquisa.fieldbyname('COD_ITEM').AsInteger;
      SQLTerceiraPesquisa.ParamByName('xDataIni').AsDate   := De.Date;
      SQLTerceiraPesquisa.ParamByName('xDataFim').AsDate   := Ate.Date;
      SQLTerceiraPesquisa.Open;
      if Not SQLTerceiraPesquisa.IsEmpty then
        Inclui_0190(SQLPesquisa.fieldbyname('COD_ITEM').AsString);
      SQLTerceiraPesquisa.Close;
      SQLPesquisa.Next;
    end;}

    SQLpesquisa.Close;
  end else
  begin
    // se Checked NAO é para incluir cupons nem os itens deles
    if not ckC400.Checked then
      begin
        dm.SQLTemplate.Close;
        dm.SQLTemplate.sql.Clear;
        dm.SQLTemplate.sql.Add('Delete From SPED_0200');
        dm.SQLTemplate.ExecSQL;


        {Verificar Cupons Fiscais baseado nas Reducoes Z Digitadas}
        SQLReducaoZ.Close;
        SQLReducaoZ.MacroByName('MEmpresa').Value    := 'EMPRICOD  =  ' + ComboEmpresa.KeyValue ;
        SQLReducaoZ.MacroByName('CampoData').Value   := 'REDUDEMIS';
        SQLReducaoZ.MacroByName('DataInicial').Value := ' "' + FormatDateTime('mm/dd/yyyy',De.Date)  + '" ';
        SQLReducaoZ.MacroByName('DataFinal').Value   := ' "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '" ';
        SQLReducaoZ.Open;

        if not SQLReducaoZ.IsEmpty then
          begin
            SQLReducaoZ.first;
            while not SQLReducaoZ.eof do
              begin
                SQLCupom.Close;
                SQLCupom.MacroByName('MEmpresa').Value   := 'CUPOM.EMPRICOD  = ' + ComboEmpresa.KeyValue ;
                if chkterminal.Checked then
                  SQLCupom.MacroByName('MTerminal').Value  := '0 = 0'
                Else
                  SQLCupom.MacroByName('MTerminal').Value  := 'CUPOM.TERMICOD  = ' + SQLReducaoZTERMICOD.AsString ;
                  SQLCupom.MacroByName('MData').Value      := 'CUPOM.CUPODEMIS = "' + FormatDateTime('mm/dd/yyyy',SQLReducaoZREDUDEMIS.AsDateTime)  + '" ';
                SQLCupom.Open;
                if not SQLCupom.IsEmpty then
                  begin
                    SQLCupom.First;
                    while not SQLCupom.eof do
                      begin
                        Inclui_0200(SQLCupom.fieldbyname('PRODICOD').AsString,'S');
                        SQLCupom.Next;
                      end;
                  end;
                SQLReducaoZ.next;
              end;
          end;
        ProgressGeral.Position := 20;
        ProgressGeral.Update;
      end;
  end;

  // se gerar inventario cria o registro 0200 e filhos para os produtos adicionados ao inventario.
  if not ck0200.Checked then
    if chkGeraInventario.Checked then
      begin
        EditTabela.Text := 'Verificando Produtos que compõem o Inventario de Estoqu'; EditTabela.Update;
        EditTabela.Update;
        SQLInventario.Close;
        SQLInventario.ParamByName('xEmpresa').Value         := ComboEmpresa.KeyValue ;
        SQLInventario.ParamByName('xDataMovimento').AsDate  := DataInventario.Date;
        SQLInventario.Open;
        SQLInventario.last;
        Progress.Max := SQLInventario.RecordCount;
        SQLInventario.First;
        Progress.Position := 0;
        Progress.Update;

        While Not SQLInventario.Eof do
        begin
          Progress.position := Progress.Position + 1; Progress.update;
          Inclui_0200(SQLInventario.fieldbyname('PRODICOD').AsString,'S');
          SQLInventario.Next;
          Progress.Position := Progress.Position + 1;
        end;
        SQLInventario.close;
        ProgressGeral.Position := 25;
        ProgressGeral.Update;
      end;

  // Se nao estiver checked é para lancar os produtos no 0200
  if not ck0200.Checked then
    begin
      {Verificar Itens das Notas Fiscais de Saida e Compra do Periodo}
      SQLPesquisa.Close;
      SQLPesquisa.SQL.Text :=
      'Select DISTINCT I.prodicod from notacompraitem I                                                                 '+
      'WHERE I.NOCPA13ID IN (                                                                                           '+
      'Select N.NOCPA13ID FROM NOTACOMPRA N                                                                             '+
    // Removido Adilson, empresas q tem filiais usam a mesma serie nas compras     'Left Join SERIE S on S.SERIA5COD = N.nocpa5serie AND S.EMPRICOD = N.EMPRICOD                                     '+
      'Left Join SERIE S on S.SERIA5COD = N.nocpa5serie                                                                 '+
      'Where N.NOCPDRECEBIMENTO  >= :xDataInicial and N.NOCPDRECEBIMENTO  <= :xDataFinal AND N.EMPRICOD = :xEmpresa AND '+
      '(N.nocpcstatus = "E")                                                                                            '+
      'AND (S.seria2tiponota = "01" OR S.SERIA2TIPONOTA = "1B" OR S.SERIA2TIPONOTA = "04" OR S.SERIA2TIPONOTA = "55"))  '+
      'UNION                                                                                                            '+
      'Select DISTINCT I.prodicod from notafiscalitem I WHERE                                                           '+
      'I.NOFIA13ID IN (select N.NOFIA13ID FROM NOTAFISCAL N                                                             '+
      'Left Join SERIE S on S.SERIA5COD = N.SERIA5COD AND S.EMPRICOD = N.EMPRICOD                                       '+
      'Where N.NOFIDEMIS >= :xDataInicial and N.NOFIDEMIS <= :xDataFinal AND N.EMPRICOD = :xEmpresa AND                 '+
      '(N.NOFICSTATUS = "E")                                                                                            ';
      If chkItensNFe.Checked then // se estiver marcado inclui a serie 55 para incluir os itens da nota de venda
        SQLPesquisa.SQL.Text :=  SQLPesquisa.SQL.Text + ' AND (S.SERIA2TIPONOTA = "01" OR S.SERIA2TIPONOTA = "1B" OR S.SERIA2TIPONOTA = "04" OR S.SERIA2TIPONOTA = "55" ))  '
      Else
        SQLPesquisa.SQL.Text :=  SQLPesquisa.SQL.Text + ' AND (S.SERIA2TIPONOTA = "01" OR S.SERIA2TIPONOTA = "1B" OR S.SERIA2TIPONOTA = "04" ))  ';

      SQLPesquisa.Prepare;
      SQLPesquisa.ParamByName('xDataInicial').AsDateTime := De.Date;
      SQLPesquisa.ParamByName('xDataFinal').AsDateTime   := Ate.Date;
      SQLPesquisa.ParamByName('xEmpresa').AsInteger      := ComboEmpresa.KeyValue;
      SQLPesquisa.Open;
      if not SQLPesquisa.IsEmpty then
        begin
          SQLPesquisa.first;
          while not SQLPesquisa.eof do
            Begin
              If not SQLPesquisa.FieldByName('PRODICOD').IsNull Then
                Inclui_0200(SQLPesquisa.fieldbyname('PRODICOD').AsString,'S');
              SQLPesquisa.next;
            end;
        end;

      // verifica as unidades de conversão gravadas no campo unidicod da tabela NOTACOMPRAITEM para posterior geracao do registro 0220
      if not ckQuestor.Checked then
        begin
          SQLPesquisa.SQL.Text :=
          'Select Distinct i.unidicod, i.prodicod, n.nocpa30nro, u.* from notacompraitem i '+
          'left join unidade u on u.unidicod = i.unidicod '+
          'left join notacompra n on n.nocpa13id = i.nocpa13id  '+
        // Removido Adilson, empresas q tem filiais usam a mesma serie nas compras     'Left Join SERIE S on S.SERIA5COD = N.nocpa5serie AND S.EMPRICOD = N.EMPRICOD                                     '+
          'Left Join SERIE S on S.SERIA5COD = N.NOCPA5SERIE     '+
          'Left Join Produto p on p.prodicod = i.prodicod '+
          'Where N.NOCPDRECEBIMENTO >= :xDataInicial and N.NOCPDRECEBIMENTO <= :xDataFinal AND N.EMPRICOD = :xEmpresa AND   '+
          '(N.NOCPCSTATUS = "E" OR N.NOCPCSTATUS = "C")             '+
          'AND (S.SERIA2TIPONOTA = "01" OR S.SERIA2TIPONOTA = "1B"  '+
          'OR S.SERIA2TIPONOTA = "04" OR S.SERIA2TIPONOTA = "55")   ';
          SQLPesquisa.Prepare;
          SQLPesquisa.ParamByName('xDataInicial').AsDateTime := De.Date;
          SQLPesquisa.ParamByName('xDataFinal').AsDateTime   := Ate.Date;
          SQLPesquisa.ParamByName('xEmpresa').AsInteger      := ComboEmpresa.KeyValue;
         // SQLPesquisa.ParamByName('xProduto').AsString       := Produto;

          SQLPesquisa.Open;
          SQLPesquisa.First;

          if not SQLPesquisa.IsEmpty then
            begin
              while not SQLPesquisa.eof do
                Begin
                  if  not SQLPesquisa.FieldByName('Unidicod').isnull then
                  begin
                    SQLTerceiraPesquisa.Close;
                    SQLTerceiraPesquisa.SQL.Text := 'select * from unidade where UNIDICOD = :xUNID';
                    SQLTerceiraPesquisa.ParamByName('xUNID').AsString := SQLPesquisa.FieldByName('Unidicod').asstring;
                    SQLTerceiraPesquisa.Open;
                    SQL0190.Close;
                    SQL0190.SQL.Text := 'SELECT * FROM SPED_190 WHERE UND_SIGLA = :xSigla';
                    SQL0190.ParamByName('xSigla').AsString := SQLTerceiraPesquisa.Fieldbyname('UNIDA5DESCR').AsString;
                    SQL0190.Open;
                    if SQL0190.IsEmpty then
                      begin
                        if (not SQLTerceiraPesquisa.Fieldbyname('UNIDA5DESCR').isnull ) and (not SQLTerceiraPesquisa.Fieldbyname('UNIDA15DESCR').isnull) then
                        begin
                          SQL0190.Append;
                          SQL0190UND_SIGLA.AsString := SQLTerceiraPesquisa.Fieldbyname('UNIDA5DESCR').AsString;
                          SQL0190UND_DESCR.AsString := SQLTerceiraPesquisa.Fieldbyname('UNIDA15DESCR').AsString;
                          SQL0190.Post;
                          Result := True;
                        End Else
                        Begin
                          ShowMessage('Falha na Inclusão do Registro 0190 (Unidade) - NF Compra: '+SQLPesquisa.fieldbyname('nocpa30nro').asstring+' - Produto: '+SQLPesquisa.Fieldbyname('prodicod').asstring);
                          Result := False;
                        End;
                      End;
                    end;
                    SQLTerceiraPesquisa.Close;
                  SQLPesquisa.next;
                end;
            end;
        end;
      SQLPesquisa.Close;
      ProgressGeral.Position := 30;
      ProgressGeral.Update;
    end;

  //Registro 0190 -  IDENTIFICAÇÃO DAS UNIDADES DE MEDIDA
  n0190 := 0;
  EditTabela.Text := 'Criando Registro 0190'; EditTabela.Update;
  SQL0190.Close;
  SQL0190.SQL.Text := 'Select * from SPED_190';
  SQL0190.Open;
  While not SQL0190.Eof Do
    begin
      Linha :=   '|0190|'                                                      + // 01-Registro 0190
                 SQL0190UND_SIGLA.AsString          + '|'                      + // 02-Sigla
                 SQL0190UND_DESCR.AsString          + '|'                      ; // 03-Descrica
      If Not GravaRegistros('0190') Then Begin Result := False; Exit; End;
      Inc(n0190);
      TotalBlocoZero := TotalBlocoZero + 1;
      SQL0190.Next;
    end;
  SQL0190.Close;
  ProgressGeral.Position := 35;
  ProgressGeral.Update;

  //Registro 0200 -  IDENTIFICAÇÃO DAS MERCADORIAS
  n0200 := 0;
  EditTabela.Text := 'Criando Registro 0200'; EditTabela.Update;
  SQL0200.Close;
  SQL0200.RequestLive := False;
  if ChkImporta.Checked then
    Begin
      SQLPesquisa.Close;
      SQLPesquisa.SQL.Text := 'Select distinct sped_0200.cod_item,                                '+
      'produto.proda60descr, produto.proda60codbar, produto.prodcservico, produto.proda2tipoitem, '+
      'produto.proda1tipo, produto.prodn3capacembal,                                              '+
      'icms.icmsn2aliquota,                                                                       '+
      'ncm.ncma30codigo,                                                                          '+
      'unidade.unida5descr, unidade.unida15descr                                                  '+
      'from sped_C470                                                                             '+
      'left join sped_0200 on sped_0200.cod_item = sped_c470.coditem                              '+
      'left join produto on produto.prodicod = sped_0200.cod_item                                 '+
      'LEFT join ncm on ncm.ncmicod = produto.ncmicod                                             '+
      'left join icms on icms.icmsicod = produto.icmsicod                                         '+
      'left join unidade on unidade.unidicod = produto.unidicod                                   '+
      'where  sped_c470.datareducao >= :xDataIni and sped_c470.datareducao <= :xDataFim           ';
      SQLPesquisa.ParamByName('xDataIni').AsDate := de.Date;
      SQLPesquisa.ParamByName('xDataFim').AsDate := Ate.Date;
      SQLPesquisa.Open;

      SQL0200.RequestLive := True;
      SQL0200.Close;
      SQL0200.SQL.Text := 'SELECT * FROM SPED_0200 where COD_ITEM = :xItem';
      While not SQLPesquisa.Eof do
        begin
          EditTabela.Text := 'Selecionando Itens: '+SQLPesquisa.Fieldbyname('cod_item').AsString; EditTabela.Update;
          Try
            SQL0200.ParamByName('xItem').AsString := SQLPesquisa.Fieldbyname('cod_item').AsString;
            SQL0200.Open;
            if not SQL0200.IsEmpty then
            begin
              SQL0200.Edit;
              SQL0200.fieldbyname('Selecionado').AsString := 'S';
              SQL0200.Post;
            end;
            SQL0200.Close;
          Except on E:Exception do
          begin
            ShowMessage('Falha ao Selecionar item da tabela SPED_0200'+#13#10+'Clique OK e o processo continuará');
            SQL0200.Close;
          end;end;
          SQLPesquisa.Next;
        end;
      SQLPesquisa.Close;
    End;

  SQL0200.RequestLive := False;
  SQL0200.SQL.Text := 'Select distinct sped_0200.cod_item,                                    '+
  'produto.proda60descr, produto.proda60codbar, produto.prodcservico, produto.proda2tipoitem, '+
  'produto.proda1tipo, produto.prodn3capacembal, produto.PRODIORIGEM, produto.PRODISITTRIB,   '+
  'produto.PRODA2CSTPIS, produto.PRODA3CSTPISENTRADA, icms.icmsn2aliquota,                    '+
  'ncm.ncma30codigo,                                                                          '+
  'unidade.unida5descr, unidade.unida15descr                                                  '+
  'from SPED_0200                                                                             '+
  'left join produto on produto.prodicod = sped_0200.cod_item                                 '+
  'LEFT join ncm on ncm.ncmicod = produto.ncmicod                                             '+
  'left join icms on icms.icmsicod = produto.icmsicod                                         '+
  'left join unidade on unidade.unidicod = produto.unidicod                                   '+
  'Where sped_0200.selecionado = :xSelected'                                                   ;
  SQL0200.ParamByName('xSelected').AsString  := 'S';
  SQL0200.Open;
  Progress.Max := SQL0200.RecordCount;
  SQL0200.First;
  While not SQL0200.Eof Do
    begin
      if (SQL0200.FieldByName('ncma30codigo').IsNull) or
         (SQL0200.FieldByName('UNIDA5DESCR').AsString='') or
         (SQL0200.FieldByName('PRODIORIGEM').AsString='') or
         (SQL0200.FieldByName('PRODISITTRIB').AsString='') or
         (SQL0200.FieldByName('PRODA2CSTPIS').AsString='') or
         (SQL0200.FieldByName('PRODA3CSTPISENTRADA').AsString='') then
        begin
          ShowMessage('Produto: '+SQL0200.Fieldbyname('COD_ITEM').AsString+' Revisar Cadastro!');
          SQL0200.last;
          Abort;
          Exit;
        end;

      EditTabela.Text := 'Criando Registro 0200 - '+IntToStr(Progress.Position)+' de '+IntToStr(Progress.Max); EditTabela.Update;
      CodProd       := SQL0200.Fieldbyname('COD_ITEM').AsString;
      CodBarrasProd := SQL0200.FieldByName('PRODA60CODBAR').AsString;
      Linha :=   '|0200|'                                                                           ; // 01-Registro 0200
                 if CkBarras.Checked then
                   Linha := Linha + CodBarrasProd  + '|'       // 02-COD_ITEM
                 else
                   Linha := Linha + CodProd        + '|' ;

                 Linha := Linha + SQL0200.FieldByName('PRODA60DESCR').AsString     + '|';      // 03-DESCR_ITEM

                 If ((Copy(CodBarrasProd,0,3) <> '999') and (CodBarrasProd <> '')) and
                 ((Length(Trim(CodBarrasProd)) = 8) or (Length(Trim(CodBarrasProd)) = 12) or
                 (Length(Trim(CodBarrasProd)) = 13) or (Length(Trim(CodBarrasProd)) = 14)) then
                    Linha := Linha + Trim(CodBarrasProd)  +'|'                      // 04-COD_BARRA - REPRESENTACAO ALFANUM, SE HOUVER
                 else
                    Linha := Linha + '|'                     ; // 04-COD_BARRA - REPRESENTACAO ALFANUM, SE HOUVER

                 Linha := Linha +                                      '|'                     + // 05-COD_ANT_ITEM - Código anterior do item com relação à última informação apresentada.
                 SQL0200.FieldByName('UNIDA5DESCR').AsString         + '|' + // 06-UNID_INV
                 SQL0200.FieldByName('PRODA2TIPOITEM').AsString      + '|' + // 07-TIPO_ITEM - 00 – Mercadoria para Revenda; 01 – Matéria-Prima; 02 – Embalagem; 03 – Produto em Processo; 04 – Produto Acabado;
                 TRIM(SQL0200.FieldByName('ncma30codigo').AsString)  + '|' + // 08-COD_NCM
                                                                       '|' ; // 09-EX_IPI - Código EX, conforme a TIPI

                 if SQL0200.FieldByName('PRODCSERVICO').AsString = 'S' then
                    Linha := Linha + '00' + '|' + // 10-COD_GEN - Código do gênero do item, conforme a Tabela 4.2.1
                                            '|' +
                   SQL0200.FieldByName('ICMSN2ALIQUOTA').AsString    + '|'  // 12-ALIQ_ICMS
                 else
                    Linha := Linha + Copy(Trim(SQL0200.FieldByName('ncma30codigo').AsString),0,2) + '|' + // 10-COD_GEN - Código do gênero do item, conforme a Tabela 4.2.1
                                                        '|' + // 11-COD_LST - serviço cfme Anexo I da Lei Compl Fed nº 116/03.
                 SQL0200.FieldByName('ICMSN2ALIQUOTA').AsString    + '|' ; // 12-ALIQ_ICMS

      If Not GravaRegistros('0200') Then Begin Result := False; Exit; End;
      Inc(n0200);
      TotalBlocoZero := TotalBlocoZero + 1;

      ProgressGeral.Position := 50;
      ProgressGeral.Update;

      {REGISTRO 0205: ALTERAÇÃO DO ITEM
                  Este registro tem por objetivo informar alterações ocorridas na descrição do produto, desde que não o descaracterize ou
                  haja modificação que o identifique como sendo novo produto, caso não tenha ocorrido movimentação no período da
                  alteração do item, deverá ser informada no primeiro período em que houver movimentação do item.}

      {REGISTRO 0206: CÓDIGO DE PRODUTO CONFORME TABELA ANP (COMBUSTÍVEIS)
                      Este registro tem por objetivo informar o código correspondente ao produto constante na Tabela da Agência Nacional de
                      Petróleo (ANP) para os produtos denominados “Combustíveis”.
                      Deve ser apresentado apenas pelos contribuintes produtores, importadores e distribuidores de combustíveis.}

      if SQL0200.FieldByName('PRODA1TIPO').AsString = '4' Then // é combustivel
         if Not Registro0206(CodProd) Then Begin Result := False; Exit; End;


      {REGISTRO 0220:  FATORES DE CONVERSÃO DE UNIDADES
                      Este registro tem por objetivo informar os fatores de conversão dos itens discriminados na Tabela de Identificação
                      do Item (Produtos e Serviços) entre a unidade informada no registro 0200 e as unidades informadas nos registros dos
                      documentos fiscais.
                      Quando for utilizada unidade de inventário diferente da unidade comercial do produto é necessário informar o
                      registro 0220 para informar os fatores de conversão entre as unidades.
                      Não podem ser informados dois ou mais registros com o mesmo conteúdo no campo UNID_CONV.}

      if SQL0200.FieldByName('PRODN3CAPACEMBAL').AsString > '1' Then
         if Not Registro0220(CodProd) Then Begin Result := False; Exit; End;
      SQL0200.Next;
      Progress.Position := Progress.Position + 1;
    end;
  SQL0200.Close;
  SQL0200.RequestLive := True;
  Progress.Position:= 0;
  Progress.Update;

  SQLProduto.Open;
//    end;

{
  REGISTRO 0300: CADASTRO DE BENS OU COMPONENTES DO ATIVO IMOBILIZADO

  REGISTRO 0305: INFORMAÇÃO SOBRE A UTILIZAÇÃO DO BEM

  REGISTRO 0400: TABELA DE NATUREZA DA OPERAÇÃO/PRESTAÇÃO
                  Este registro tem por objetivo codificar os textos das diferentes naturezas da operação/prestação discriminadas nos
                  documentos fiscais. Esta codificação e suas descrições são livremente criadas e mantidas pelo contribuinte.
                  Este registro não se refere a CFOP. Algumas empresas utilizam outra classificação além das apresentados nos CFOP. Esta
                  codificação permite informar estes agrupamentos próprios.}

  {REGISTRO 0450: TABELA DE INFORMAÇÃO COMPLEMENTAR DO DOCUMENTO FISCAL
                  Este registro tem por objetivo codificar todas as informações complementares dos documentos fiscais, exigidas pela
                  legislação fiscal. Estas informações constam no campo “Dados Adicionais” dos documentos fiscais.
                  Esta codificação e suas descrições são livremente criadas e mantidas pelo contribuinte e não podem ser informados dois
                  ou mais registros com o mesmo conteúdo no campo COD_INF.
                  Deverão constar todas as informações complementares de interesse da Administração Tributária, existentes nos
                  documentos fiscais.}

  { If cmbModelo.ItemIndex = 1 then
  REGISTRO 0460: TABELA DE OBSERVAÇÕES DO LANÇAMENTO FISCAL


  {REGISTRO 0500: PLANO DE CONTAS CONTÁBEIS
                  Este registro tem o objetivo de identificar as contas contábeis utilizadas pelo contribuinte informante em sua Escrituração
                  Contábil, relacionadas às operações representativas de receitas, tributadas ou não, e dos créditos apurados.}

  {REGISTRO 0600: CENTRO DE CUSTOS
                  Este registro tem o objetivo de identificar os centros de custos referenciados nos registros de operações e documentos
                  escriturados na EFD-PIS/Cofins.
                  Não podem ser informados dois ou mais registros com a mesma combinação de conteúdo nos campos DT_ALT e
                  COD_CCUS.}

  // Registro 0990 - ENCERRA BLOCO ZER0
  EditTabela.Text := 'Fechando Bloco Zero'; EditTabela.Update;
  TotalBlocoZero := TotalBlocoZero + 1;
  Linha :=   '|0990|'                                                            +       // 01-Registro 0990
             intToStr(TotalBlocoZero)                                            + '|';  // 02-QTD_LIN_0 = Qtde Linhas
  If Not GravaRegistros('0990') Then Begin Result := False; Exit; End;
  n0990 := 1;
  TotalRegistros := TotalBlocoZero;

  Result := True;
end;

Function TFormTelaExportacaoSped.Registro0206(Produto:String):Boolean;
Begin
  EditTabela.Text := 'Criando Registro 0206 - Codigos da ANP dos Combustiveis'; EditTabela.Update;
  Linha :=   '|0206|'                                                            +       // 01-Registro 0206
             dm.SQLLocate('Produto','PRODICOD','PRODA9CODANP',Produto)           + '|';  // 02-cod_comb codigo anp do combustivel
  If Not GravaRegistros('0206') Then Begin Result := False; Exit; End;
  Inc(n0206);
  TotalBlocoZero := TotalBlocoZero + 1;
  Result := True;
End;

Function TFormTelaExportacaoSped.Registro0220(Produto:String): Boolean;
begin
  SQLTerceiraPesquisa.SQL.Text :=
  'Select Distinct i.unidicod, u.* from notacompraitem i '+
  'left join unidade u on u.unidicod = i.unidicod '+
  'left join notacompra n on n.nocpa13id = i.nocpa13id  '+
  'Left Join SERIE S on S.SERIA5COD = N.NOCPA5SERIE AND S.EMPRICOD = N.EMPRICOD '+
  'Where i.prodicod = :xProduto and N.NOCPDRECEBIMENTO >= :xDataInicial and N.NOCPDRECEBIMENTO <= :xDataFinal AND N.EMPRICOD = :xEmpresa AND   '+
  '(N.NOCPCSTATUS = "E" OR N.NOCPCSTATUS = "C")             '+
  'AND (S.SERIA2TIPONOTA = "01" OR S.SERIA2TIPONOTA = "1B"  '+
  'OR S.SERIA2TIPONOTA = "04" OR S.SERIA2TIPONOTA = "55")   '+
  'AND UNIDN3FATORCONV > 0';
  SQLTerceiraPesquisa.Prepare;
  SQLTerceiraPesquisa.ParamByName('xDataInicial').AsDateTime := De.Date;
  SQLTerceiraPesquisa.ParamByName('xDataFinal').AsDateTime   := Ate.Date;
  SQLTerceiraPesquisa.ParamByName('xEmpresa').AsInteger      := ComboEmpresa.KeyValue;
  SQLTerceiraPesquisa.ParamByName('xProduto').AsString       := Produto;
  SQLTerceiraPesquisa.Open;

  MEM0220.Open;
  While not SQLTerceiraPesquisa.Eof do
    begin
      MEM0220.First;
      if MEM0220.Locate('UNIDADE',SQLTerceiraPesquisa.Fieldbyname('UNIDA5DESCR').AsString,[]) then
        begin
          Mem0220.Append;
          Mem0220UNIDADE.Value := SQLTerceiraPesquisa.Fieldbyname('UNIDA5DESCR').AsString;
          Mem0220.Post;

          EditTabela.Text := 'Criando Registro 0220 - Conversão de Unidades'; EditTabela.Update;
          Linha :=   '|0220|'                                                                     +    // 01 REG Texto fixo contendo "0220" C 004 - O
          SQLTerceiraPesquisa.Fieldbyname('UNIDA5DESCR').AsString                           + '|' +    // 02 UNID_CONV Unidade comercial a ser convertida na unidade de estoque, referida no registro 0200.
          FormatFloat('0.000000',SQLTerceiraPesquisa.FieldbyName('UNIDN3FATORCONV').value)  + '|' ;    // 03 FAT_CONV Fator de conversão: fator utilizado para converter (multiplicar) a unidade a ser convertida na unidade adotada no inventário.

          If Not GravaRegistros('0220') Then Begin Result := False; Exit; End;
          Inc(n0220);
          TotalBlocoZero := TotalBlocoZero + 1;
        end;
      SQLTerceiraPesquisa.Next;
    end;
  SQLTerceiraPesquisa.Close;
  Mem0220.Close;
  Result := True;
End;

Function TFormTelaExportacaoSped.Registro_Bloco_C: boolean;
var Modelo_ECF, Serie_ECF, TerminalAtual : string;
    DataAtual : TDate;
    Base : Double;
    Inifile: TInifile;
begin
  // le o arquivo de configuracao para saber qual o cfop para a venda de conbustiveis
  IniFile           := TIniFile.Create ('IBGestao.ini');
  nCFOPConfig       := IniFile.ReadString('COMBUSTIVEIS','CFOP','');
  nCFOPLubrificante := IniFile.ReadString('COMBUSTIVEIS','CFOPLUBRIFICANTE','');
  nGrupoLubrificante:= IniFile.ReadString('COMBUSTIVEIS','GRUPOLUBRIFICANTE','');

  IniFile.Free;

    Result := True;
    EditTabela.Text := 'Criando - BLOCO C'; EditTabela.Update;
    EditTabela.Update;

    //Registro C001 - ABERTURA DO BLOCO C - COM MOVIMENTACAO DE ENTRADAS E SAIDAS
    EditTabela.Text := 'Criando Bloco C'; EditTabela.Update;
    Linha :=   '|C001|'                                                            + // 01-Registro C001
               '0'                                      + '|'                      ; // IND_MOV = Indicador de movimento: 0 - Bloco com dados informados, 1 - Bloco sem dados informados
    If Not GravaRegistros('C001') Then Begin Result := False;
    Exit;
    End;
    nC001 := 1;
    Total_Bloco_C := 1;

    // REGISTRO C100: DOCUMENTO - NOTA FISCAL (CÓDIGO 01), NOTA FISCAL AVULSA (CÓDIGO 1B), NOTA FISCAL DE PRODUTOR (CÓDIGO 04) e NF-e (CÓDIGO 55)
    if Not RegistroC100 Then
    Begin
      Result := False;
      Exit;
    End;


    ProgressGeral.Position := 80;
    ProgressGeral.Update;

    {Caso nao seja marcada a opcao de importar das tabelas de sped lidas diretamente das ecfs}
    // Teste para nao Criar Cupons
    if not ckc400.Checked then
      begin
        If not ChkImporta.Checked then
        Begin
          nC481 := 0;
          nC485 := 0;
          nC990 := 0;
          SQLReducaoZ.Close;
          SQLReducaoZ.MacroByName('MEmpresa').Value    := 'EMPRICOD  =  ' + ComboEmpresa.KeyValue ;
          SQLReducaoZ.MacroByName('CampoData').Value   := 'REDUDEMIS';
          SQLReducaoZ.MacroByName('DataInicial').Value := ' "' + FormatDateTime('mm/dd/yyyy',De.Date)  + '" ';
          SQLReducaoZ.MacroByName('DataFinal').Value   := ' "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '" ';
          // ESTA POR ORDEM DE TERMINAL E DEPOIS DATA MOVTO
          SQLReducaoZ.Open;
          SQLReducaoZ.Last;
          Progress.Max := SQLReducaoZ.RecordCount;
          SQLReducaoZ.First;
          if not SQLReducaoZ.IsEmpty then
          begin
            // Para o primeiro Registro Criar C400, apos tem que testar se trocou o Terminal
            CriaC400 := True;
            nC400    := 0;
            nC405    := 0;
            While not SQLReducaoZ.Eof do
              begin
                Serie_ECF     := '';
                Modelo_ECF    := DM.SQLLocate('ECF','ECFA13ID','ECFA30MODELO',  '"'+SQLReducaoZECFA13ID.AsString+'"');
                Serie_ECF     := DM.SQLLocate('ECF','ECFA13ID','ECFA20NROSERIE','"'+SQLReducaoZECFA13ID.AsString+'"');
                if Serie_ECF = '' then
                  Serie_ECF     := DM.SQLLocate('TERMINAL','TERMICOD','TERMA20NROSERIE',SQLReducaoZTERMICOD.AsString);
                TerminalAtual := SQLReducaoZTERMICOD.AsString;
                DataAtual     := SQLReducaoZREDUDEMIS.Value;
                // Teste para ver se tem que Criar o Registro C400
                if CriaC400 then
                  begin
                    Linha :=   '|C400|'                                                            + // 01-Registro C400
                               '2D'                                     + '|'                      + // 02-COD_MOD - CONFORME TABELA 4.1.1
                               Modelo_ECF                               + '|'                      + // 03-ECF_MOD
                               Serie_ECF                                + '|'                      + // 04-ECF_FAB - SERIE DO ECF
                               SQLReducaoZTERMICOD.AsString             + '|'                      ; // 05-ECF_CX  - NRO CX que usa a ECF

                    if not GravaRegistros('C400') Then Begin Result := False;
                    Exit;
                    End;
                    Inc(nC400);
                    Inc(Total_Bloco_C);

                    CriaC400 := False;
                    CRiaC405 := True;
                  end;

                // Teste para ver se tem que criar o Registro C405
                if CriaC405 then
                  begin
                    EditTabela.Text := 'Criando Registro C405 - REDUÇOES Z TOTAIS'; EditTabela.Update;
                    EditTabela.Update;

                    Base := SQLReducaoZREDUN3BASE1.Value + SQLReducaoZREDUN3BASE2.Value + SQLReducaoZREDUN3BASE3.Value + SQLReducaoZREDUN3BASE4.Value +
                            SQLReducaoZREDUN3BASE5.Value + SQLReducaoZREDUN3BASE6.Value + SQLReducaoZREDUN3BASE7.Value + SQLReducaoZREDUN3BASE8.Value +
                            SQLReducaoZREDUN3BASEF.Value + SQLReducaoZREDUN3BASEI.Value + SQLReducaoZREDUN3BASEN.Value + SQLReducaoZREDUN3BASES.Value +
                            SQLReducaoZREDUN3VLRCANC.Value;

                    Linha :=   '|C405|'                                                            + // 01-Registro C405
                               FormatDateTime('ddmmyyyy',SQLReducaoZREDUDEMIS.Value) + '|'         + // 02-DT_DOC
                               SQLReducaoZREDUICONTREINICIO.AsString                 + '|'         + // 03-CRO
                               SQLReducaoZREDUICONTREDUZ.AsString                    + '|'         + // 04-CRZ
                               SQLReducaoZREDUICONTFINAL.AsString                    + '|'         + // 05-NUM_COO_FINAL
                               SQLReducaoZREDUN3GRANDETOTAL.AsString                 + '|'         + // 06-GT_FIN
                               FormatFloat('##0.00',Base)                            + '|'         ; // 07-VL_BRT

                    if Not GravaRegistros('C405') Then
                    Begin
                      Result := False;
                      Exit;
                    End Else
                      begin
                        Inc(nC405);
                        Inc(Total_Bloco_C);
                        {Se for EFD FISCAL}
                        if Not RegistroC410('','')  Then Begin Result := False;
                        Exit;
                        End;

                        if Not RegistroC420  Then Begin Result := False;
                        Exit;
                        End;

                        // Adilson, Removido, pois apenas Perfil B usa esse registro
                        // if Not RegistroC425            Then Begin Result := False; Exit; End;

                        if Not RegistroC460_C470_C490  Then
                        Begin
                          MemoErro.Lines.Add('Deu erro no RegistroC460_C470_C490');
                          Result := False;
                          Exit;
                        End;
                      end;
                  end;
                SQLReducaoZ.Next;
                Progress.Position := Progress.Position + 1;
                Progress.Update;
                if not chkterminal.Checked then
                  if TerminalAtual <> SQLReducaoZTERMICOD.AsString then
                    CriaC400 := True;
              end;
            Linha :=   '|C990|'                                            + // 01-Registro C990
                       IntToStr(Total_Bloco_C + 1)  + '|'                  ; // Total de Registros

            if Not GravaRegistros('C990') Then
            Begin
              Result := False;
              Exit;
            End;
            Inc(nC990);
            Inc(Total_Bloco_C);
          end else
          begin
            // Testa se ainda nao foi criado o nC001, pois ele deve ser unico por arquivo, dai o cria.
            if nC001 < 1 then
              begin
                //Registro C001 - ABERTURA DO BLOCO C - SEM MOVIMENTACAO DE ENTRADAS E SAIDAS
                EditTabela.Text := 'Criando Bloco C'; EditTabela.Update;
                Linha :=   '|C001|'                                                            + // 01-Registro C001
                           '1'                                      + '|'                      ; // IND_MOV = Indicador de movimento: 0 - Bloco com dados informados, 1 - Bloco sem dados informados
                If Not GravaRegistros('C001') Then Begin Result := False;
                Exit;
                End;
                nC001 := 1;
                Total_Bloco_C := 1;

                //Registro C010 - IDENTIFICA O ESTABELECIMENTO
              end;

            Linha :=   '|C990|'                                                            + // 01-Registro C990
                       IntToStr(Total_Bloco_C+1)                + '|'                      ; // Total de Registros

            if Not GravaRegistros('C990') Then Begin Result := False;
            Exit;
            End;
            Inc(nC990);
            Inc(Total_Bloco_C);
          end;
        End Else
        begin
          //Caso seja marcada a opçcão de importar diretamente das tabelas que contem os dados lidos dos arquivos das ecfs
          CriaC400 := True;
          nC400    := 0;
          nC405    := 0;
          SQLC400.Open;
          While Not SQLC400.eof do
          begin
            Modelo_ECF    := SQLC400.fieldbyname('ECF_MODELO').AsString;
            Serie_ECF     := SQLC400.fieldbyname('NUMEROSERIEECF').AsString;
            TerminalAtual := SQLC400.fieldbyname('ECF_CAIXA').AsString;
            // Teste para ver se tem que Criar o Registro C400 - Cadastro da ECF
            EditTabela.Text := 'Criando Registro C400 - REDUÇOES Z'; EditTabela.Update;
            EditTabela.Update;

            Linha :=   '|C400|'                                                            + // 01-Registro C400
                       '2D'                                     + '|'                      + // 02-COD_MOD - CONFORME TABELA 4.1.1
                       Modelo_ECF                               + '|'                      + // 03-ECF_MOD
                       Serie_ECF                                + '|'                      + // 04-ECF_FAB - SERIE DO ECF
                       TerminalAtual                            + '|'                      ; // 05-ECF_CX  - NRO CX que usa a ECF

            if not GravaRegistros('C400') Then
            Begin
              Result := False;
              Exit;
            End;
            Inc(nC400);
            Inc(Total_Bloco_C);

            SQLC405.Close;
            SQLC405.SQL.Text := 'SELECT * FROM SPED_C405 WHERE NUMEROSERIEECF = :xNUMEROSERIE and DataReducao >= :xDataInicial and DataReducao <= :xDataFinal';
            SQLC405.ParamByName('xNumeroSerie').AsString := SQLC400.fieldbyname('NUMEROSERIEECF').AsString;
            SQLC405.ParamByName('xDataInicial').AsDate   := de.Date;
            SQLC405.ParamByName('xDataFinal').AsDate   := Ate.Date;
            SQLC405.Prepare;
            SQLC405.Open;

            While Not SQLC405.Eof do
            Begin
              EditTabela.Text := 'Criando Registro C405 - REDUÇOES Z TOTAIS'; EditTabela.Update;
              EditTabela.Update;

              // Reduções Z da ECF selecionada
              Linha :=  '|C405|'                                                            + // 01-Registro C405
                        FormatDateTime('ddmmyyyy',SQLC405.fieldbyname('DATAREDUCAO').Value)   + '|'         + // 02-DT_DOC
                        SQLC405.fieldbyname('CRO').AsString                                   + '|'         + // 03-CRO
                        SQLC405.fieldbyname('CRZ').AsString                                   + '|'         + // 04-CRZ
                        SQLC405.fieldbyname('COO_FINAL').AsString                             + '|'         + // 05-NUM_COO_FINAL
                        SQLC405.fieldbyname('GT_FIM').AsString                                + '|'         + // 06-GT_FIN
                        FormatFloat('##0.00',SQLC405.fieldbyname('VLR_BRUTO').Value)          + '|'         ; // 07-VL_BRT

              if Not GravaRegistros('C405') Then
              Begin
                Result := False;
                Exit;
              End;

              Inc(nC405);
              Inc(Total_Bloco_C);

              // Carrega a Funcao RegistroC410, Resumo Vendas PIS/Pasep
              if Not RegistroC410(Serie_ECF, SQLC405.fieldbyname('DATAREDUCAO').AsString)  Then
              Begin
                Result := False;
                Exit;
              End;

              if Not RegistroC420Importado(Serie_ECF, SQLC405.fieldbyname('DATAREDUCAO').AsString) Then
              Begin
                Result := False;
                Exit;
              End;

              SQLC460.Close;
              SQLC460.ParamByName('xSerie_ECF').AsString := Serie_ECF;
              SQLC460.ParamByName('xDATARDZ').AsDate         := StrToDate(SQLC405.fieldbyname('DATAREDUCAO').AsString);
              SQLC460.Open;
              While Not SQLC460.Eof do
              Begin
                EditTabela.Text := 'Criando Registro C460 - Serie '+Serie_ECF+ ' Data '+ SQLC405.fieldbyname('DATAREDUCAO').AsString+' COO '+SQLC460.FieldByName('NUMEROCOO').AsString;
                EditTabela.Update;


                // Soma o total do pis e do cofins para o cupom fiscal selecionado.
                SQLC410.Close;
                SQLC410.SQL.Text := 'Select SUM(VALORPIS) as VALORTOTALPIS, SUM(VALORCOFINS) AS VALORTOTALCOFINS FROM SPED_C470 WHERE '+
                'NUMEROSERIEECF = :xECFNum AND DATAREDUCAO = :xDataRDZ AND NUMEROCOO = :xCOONum';
                SQLC410.Prepare;
                SQLC410.ParamByName('xECFNum').AsString  := Serie_ECF;
                SQLC410.ParamByName('xDataRDZ').AsDate   := StrToDate(SQLC405.fieldbyname('DATAREDUCAO').AsString);
                SQLC410.ParamByName('xCOONum').AsString  := SQLC460.FieldByName('NUMEROCOO').AsString;
                SQLC410.Open;

                Linha := '|C460|'                                                                + // 01-Registro C460
                         SQLC460.FieldByName('CODMODELO').AsString                               + '|' + // 02-COD_MOD
                         SQLC460.FieldByName('CODSITUACAO').AsString                             + '|' + // 03-COD_SIT -> 00=DOC REGULAR, 02=DOC CANCELADO
                         SQLC460.FieldByName('NUMEROCOO').AsString                               + '|' + // 04-NUM_DOC
                         FormatDateTime('ddmmyyyy',SQLC460.FieldByName('DATAEMISSAO').Value)     + '|' + // 05-DT_DOC
                         FormatFloat('0.00',SQLC460.FieldByName('VALORDOC').value)               + '|' ; // 06-VL_DOC

                         if (SQLC410.FieldByName('VALORTOTALPIS').isnull) or (SQLC410.FieldByName('VALORTOTALCOFINS').isnull) then
                         begin
                           Showmessage('Atenção...'+#13#10+'Não foram localizados os Itens do registro Serie '+Serie_ECF+ ' Data '+ SQLC405.fieldbyname('DATAREDUCAO').AsString+' COO '+SQLC460.FieldByName('NUMEROCOO').AsString);
                           Linha := Linha +
                           FormatFloat('0.00',0)       + '|' + // 07-VL_PIS
                           FormatFloat('0.00',0)       + '|' ; // 08-VL_COFINS
                         end else
                         begin
                           Linha := Linha +
                           FormatFloat('0.00',SQLC410.FieldByName('VALORTOTALPIS').Value)          + '|' + // 07-VL_PIS
                           FormatFloat('0.00',SQLC410.FieldByName('VALORTOTALCOFINS').Value)       + '|' ; // 08-VL_COFINS
                         End;
                         Linha := Linha +
                         SQLC460.FieldByName('CPFCNPJ').AsString                                   + '|' + // 09-CPF_CNPJ
                         SQLC460.FieldByName('NOMEADQUIRENTE').AsString                            + '|' ; // 10-NOM_ADQ

                SQLC410.Close;

                if Not GravaRegistros('C460') Then
                Begin
                  Result := False;
                  Exit;
                End;
                Inc(nC460);
                Inc(Total_Bloco_C);

                SQLC470.Close;
                SQLC470.ParamByName('xSerie_ECF').AsString := Serie_ECF;
                SQLC470.ParamByName('xDATARDZ').AsDate         := StrToDate(SQLC405.fieldbyname('DATAREDUCAO').AsString);
                SQLC470.ParamByName('xCOO').AsString           := SQLC460.FieldByName('NUMEROCOO').AsString;
                SQLC470.Open;

                While Not SQLC470.Eof do
                Begin
                  EditTabela.Text := 'Criando Registro C470 - Itens do Cupom'; EditTabela.Update;
                  EditTabela.Update;

                  Linha := '|C470|'                                                   + // 01-Registro C470
                  SQLC470.fieldByName('CODITEM').AsString                       + '|' + // 02-COD_ITEM
                  FormatFloat('0.000',SQLC470.fieldByName('QUANTIDADE').Value)  + '|' + // 03-QTD
                  FormatFloat('0.000',SQLC470.fieldByName('QTD_CANCEL').Value)  + '|' + // 04-QTD_CANC
                  UpperCase(SQLC470.fieldByName('UNID').AsString)               + '|' + // 05-UNID
                  FormatFloat('0.00',SQLC470.fieldByName('VALORITEM').Value)    + '|' + // 06-VL_ITEM
                  SQLC470.fieldByName('CST_ICMS').AsString                      + '|' + // 07-CST_ICMS
                  SQLC470.fieldByName('CFOPITEM').AsString                      + '|' + // 08-CFOP
                  FormatFloat('0.00',SQLC470.fieldByName('ALIQUOTA').Value)     + '|' + // 09-ALIQ_ICMS
                  FormatFloat('0.00',SQLC470.fieldByName('VALORPIS').Value)     + '|' + // 10-VL_PIS
                  FormatFloat('0.00',SQLC470.fieldByName('VALORCOFINS').Value)  + '|' ; // 11-VL_COFINS

                  if Not GravaRegistros('C470') Then
                  Begin
                    Result := False;
                    Exit;
                  End;
                  Inc(nC470);
                  Inc(Total_Bloco_C);
                  SQLC470.Next;
                End;
                SQLC470.Close;

                SQLC460.Next;
              End;
              SQLC460.Close;

              SQLC490.Close;
              SQLC490.ParamByName('xSerie_ECF').AsString := Serie_ECF;
              SQLC490.ParamByName('xDATARDZ').AsDate         := StrToDate(SQLC405.fieldbyname('DATAREDUCAO').AsString);
              SQLC490.Open;
              While not SQLC490.Eof do
              Begin
                EditTabela.Text := 'Criando Registro C490 - Totalizando Cupom'; EditTabela.Update;
                EditTabela.Update;

                Linha := '|C490|'                                                       + // 01-Registro C490
                SQLC490.FieldByName('CST').AsString                               + '|' + // 02-CST_ICMS
                SQLC490.FieldByName('CFOPITEM').AsString                          + '|' + // 03-CFOP
                FormatFloat('0.00',SQLC490.FieldByName('ALIQUOTA').Value)         + '|' + // 04-ALIQ_ICMS
                FormatFloat('0.00',SQLC490.FieldByName('VALOROPERACAO').Value)    + '|' + // 05-VL_OPR
                FormatFloat('0.00',SQLC490.FieldByName('VALOR_BC_ICMS').Value)    + '|' + // 06-VL_BC_ICMS
                FormatFloat('0.00',SQLC490.FieldByName('VALOR_ICMS').Value)       + '|' + // 07-VL_ICMS
                                                                                    '|' ; // 08-COD_OBS

                if Not GravaRegistros('C490') then
                begin
                  Result := False;
                  Exit;
                end;
                Inc(nC490);
                Inc(Total_Bloco_C);

                SQLC490.Next;
              End;
              SQLC490.Close;

              Progress.Position := Progress.Position + 1;
              Progress.Update;

              SQLC405.Next;
            End; // While Not SQLC405.Eof do
            SQLC405.Close;

            SQLC400.Next;
          End; // C400
          SQLC400.Close;
          EditTabela.Text := 'Criando Registro C990 - Finalizando Bloco C'; EditTabela.Update;
          EditTabela.Update;

          Linha :=   '|C990|'                                            + // 01-Registro C990
                     IntToStr(Total_Bloco_C + 1)  + '|'                  ; // Total de Registros

          if Not GravaRegistros('C990') Then
          Begin
            Result := False;
            Exit;
          End;
          Inc(nC990);
          Inc(Total_Bloco_C);
        End;
      end
    else
      begin
        Linha :=   '|C990|'                                            + // 01-Registro C990
                   IntToStr(Total_Bloco_C + 1)  + '|'                  ; // Total de Registros

        if Not GravaRegistros('C990') Then
        Begin
          Result := False;
          Exit;
        End;
        Inc(nC990);
        Inc(Total_Bloco_C);
      end;
    Progress.Position := 0;
    Progress.Update;

    ProgressGeral.Position := 90;
    ProgressGeral.Update;
end;

Function TFormTelaExportacaoSped.RegistroC425: boolean;
var CST_PIS, ALIQ_PIS, VL_BC_PIS, VL_PIS, ALIQ_PIS_QUANT, COD_ITEM, UNIDADE, CST_COF, ALIQ_COF, VL_COF : string;
var Aliq_PisCofins, Vl_Pis_Item, Vl_Cofins_Item : double;
begin
  {Registro C425 - TEM APENAS NA EFD FISCAL}
  {REGISTRO C425: RESUMO DE ITENS DO MOVIMENTO DIÁRIO (CÓDIGO 02 e 2D).
   Este registro tem por objetivo identificar os produtos comercializados na data da movimentação relativa à Redução Z
   informada, sendo obrigatório, quando os totalizadores forem iguais a xxTnnnn, Tnnnn, Fn, In, Nn.}

  Exit;

  EditTabela.Text := 'Reg.C425 - RESUMO DE ITENS DO MOVTO DIÁRIO (CÓDIGO 02 e 2D)'; EditTabela.Update;
  EditTabela.Update;
  SQLCupom.Close;
  SQLCupom.MacroByName('MEmpresa').Value   := 'CUPOM.EMPRICOD  = ' + ComboEmpresa.KeyValue ;
  if chkterminal.Checked then
    SQLCupom.MacroByName('MTerminal').Value  := '0 = 0'
  Else
    SQLCupom.MacroByName('MTerminal').Value  := 'CUPOM.TERMICOD  = ' + SQLReducaoZTERMICOD.AsString ;
  SQLCupom.MacroByName('MData').Value      := 'CUPOM.CUPODEMIS = "' + FormatDateTime('mm/dd/yyyy',SQLReducaoZREDUDEMIS.Value)  + '" ';
  SQLCupom.Open;
  SQLCupom.Last;
  Progress.position := 0;
  Progress.Max := SQLCupom.RecordCount;
  Progress.Update;
  SQLCupom.First;
  while not SQLCupom.Eof do
    begin
      UNIDADE  := DM.SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',DM.SQLLocate('PRODUTO','PRODICOD','UNIDICOD',SQLCupomPRODICOD.AsString));

      if CkBarras.Checked then
        COD_ITEM := DM.SQLLocate('PRODUTO','PRODICOD','PRODA60CODBAR',SQLCupomPRODICOD.AsString)
      else
        COD_ITEM :=SQLCupomPRODICOD.AsString;

      // Calcula o Pis de cada item
      ALIQ_PIS := DM.SQLLocate('PRODUTO','PRODICOD','PRODN2ALIQPIS',SQLCupomPRODICOD.AsString);
      try
        Aliq_PisCofins := StrToFloat(ALIQ_PIS);
      except
        Aliq_PisCofins := 0;
      end;

      if Aliq_PisCofins > 0 then
        Vl_Pis_Item := SQLCupomVALORTOTALITEM.Value * (Aliq_PisCofins / 100)
      else
        Vl_Pis_Item := 0;

      // Calcula o Cofins de cada item
      ALIQ_COF := DM.SQLLocate('PRODUTO','PRODICOD','PRODN2ALIQCOFINS',SQLCupomPRODICOD.AsString);
      try
        Aliq_PisCofins := StrToFloat(ALIQ_COF);
      except
        Aliq_PisCofins := 0;
      end;

      if Aliq_PisCofins > 0 then
        Vl_Cofins_Item := SQLCupomVALORTOTALITEM.Value * (Aliq_PisCofins / 100)
      else
        Vl_Cofins_Item := 0;

      Linha :=   '|C425|'                                                   + // 01-Registro C425
                 COD_ITEM                                             + '|' + // 02-COD_ITEM
                 FormatFloat('0.00',SQLCupomQUANTIDADE.value)         + '|' + // 03-QTD
                 UNIDADE                                              + '|' + // 04-UNID
                 FormatFloat('0.00',SQLCupomVALORTOTALITEM.Value)     + '|' + // 05-VL ITEM
                 FormatFloat('0.00',Vl_Pis_Item)                      + '|' + // 06-VL PIS
                 FormatFloat('0.00',Vl_Cofins_Item)                   + '|' ; // 07-VL COFINS

      Vl_Cofins_Item := 0; Vl_Pis_Item := 0;
      if Not GravaRegistros('C425') Then Begin Result := False; Exit; End;
      Inc(nC425);
      Inc(Total_Bloco_C);
      SQLCupom.Next;
      Progress.position := progress.position +1;
      Progress.Update;
    end;
    ALIQ_COF := ''; ALIQ_PIS := '';
    Progress.Position := 0;
    Progress.update;
    Result := True;
end;

Function TFormTelaExportacaoSped.RegistroC460_C470_C490: boolean;
var Situacao, NroDoc, Data, Vlr_Doc, QtdItem, QtdItemCanc, Vl_Item, Aliq_Icms_Item,  Unidade, Cst_Icms, Cfop: String;
    Vlr_Pis, Vlr_Cofins, Vl_Pis_Item, Vl_Cofins_Item, Base, nQtde, PercDescTotalRateado, nVl_Item, nVl_TotItem : double;
begin
  {Limpa a Tabela pois ela tambem é usada para criar o registro C190}
  SQLRegC490.Close;
  Dm.SQLTemplate.Close;
  Dm.SQLTEMPLATE.SQL.Clear;
  DM.SQLTemplate.SQL.Text := 'Delete from SPED_REGC490';
  DM.SQLTemplate.ExecSQL;
  DM.SQLTemplate.Close;

  { REGISTRO C460: DOCUMENTO FISCAL EMITIDO POR ECF (CÓDIGO 02 e 2D).
    Este registro deve ser apresentado para a identificação dos documentos fiscais emitidos pelos usuários de
    equipamentos ECF, que foram totalizados na Redução Z.
    Para cupom fiscal cancelado, informar somente os campos COD_MOD, COD_SIT e NUM_DOC, sem os
    registros filhos.
    Obs.: Os CNPJ e CPF citados neste registro NÃO devem ser informados no registro 0150. }

  // Lancar o cabecalho de cada cupom no C460, ordenando por Nro Doc e filtrando por ECF
  SQLPesquisa.Close;
  if chkterminal.Checked then
    SQLPesquisa.SQL.Text := 'SELECT * FROM CUPOM WHERE (CUPODEMIS = :Data) AND (CUPOINRO > 0) ORDER BY CUPOINRO ASC'
  Else
   begin
     SQLPesquisa.SQL.Text := 'SELECT * FROM CUPOM WHERE (CUPODEMIS = :Data) AND (TERMICOD = :Terminal) AND (CUPOINRO>0) ORDER BY CUPOINRO ASC';
     SQLPesquisa.ParamByName('Terminal').AsString := SQLReducaoZTERMICOD.AsString;
   end;
  SQLPesquisa.ParamByName('Data').AsDate := SQLReducaoZREDUDEMIS.Value;
  SQLPesquisa.Open;
  if not SQLPesquisa.IsEmpty then
    begin
      Progress.position := 0;
      Progress.Max := SQLPesquisa.RecordCount;
      Progress.Update;
      while not SQLPesquisa.eof do
        begin
          PercDescTotalRateado := 0;
         if SQLPesquisa.fieldbyname('CUPON2DESC').Value > 0 then
            PercDescTotalRateado := (SQLPesquisa.fieldbyname('CUPON2DESC').Value / (SQLPesquisa.fieldbyname('CUPON2TOTITENS').Value-SQLPesquisa.fieldbyname('CUPON2DESCITENS').Value) ) * 100;

          // SQL Para Totalizar o Pis e Cofins dos itens e armazenar para jogar no Cabecalho
          SQLSubPesquisa.Close;
          SQLSubPesquisa.SQL.Text := 'SELECT I.*, P.PRODN2ALIQPIS, P.PRODN2ALIQCOFINS FROM CUPOMITEM I ' +
                                     'LEFT JOIN PRODUTO P ON P.PRODICOD = I.PRODICOD WHERE (CUPOA13ID = :ID)' ;
          SQLSubPesquisa.ParamByName('ID').AsString := SQLPesquisa.fieldbyname('CUPOA13ID').AsString;
          SQLSubPesquisa.Open;

          Vl_Pis_Item     := 0;
          Vlr_Pis         := 0;
          Vl_Cofins_Item  := 0;
          Vlr_Cofins      := 0;
          nVl_TotItem     := 0;

          if (not SQLSubPesquisa.IsEmpty) and (SQLPesquisa.FieldByName('cupocstatus').AsString <> 'C') then
            begin
              while not SQLSubPesquisa.eof do
                begin
                  // Vlr Total Item
                  nVl_Item := (SQLSubPesquisa.fieldbyname('CPITN3VLRUNIT').Value * SQLSubPesquisa.fieldbyname('CPITN3QTD').Value)-SQLSubPesquisa.fieldbyname('CPITN2DESC').Value;
                  nVl_TotItem := nVl_TotItem + nVl_Item;
                  if PercDescTotalRateado > 0 then
                    nVl_Item := nVl_Item - (nVl_Item * (PercDescTotalRateado/100));

                  // Calcula o Pis de cada item e totaliza
                  if SQLSubPesquisa.fieldbyname('PRODN2ALIQPIS').Value > 0 then
                    Vl_Pis_Item := nVl_Item  * (SQLSubPesquisa.fieldbyname('PRODN2ALIQPIS').Value/100)
                  else
                    Vl_Pis_Item := 0;
                  Vlr_Pis := Vlr_Pis + Vl_Pis_Item;

                  // Calcula o Cofins de cada item e totaliza
                  if SQLSubPesquisa.fieldbyname('PRODN2ALIQCOFINS').Value > 0 then
                    Vl_Cofins_Item := nVl_Item  * (SQLSubPesquisa.fieldbyname('PRODN2ALIQCOFINS').Value/100)
                  else
                    Vl_Cofins_Item := 0;
                  Vlr_Cofins := Vlr_Cofins + Vl_Cofins_Item;

                  SQLSubPesquisa.next;
                end;
            end;

          if nVl_TotItem > 0 then
            Vlr_Doc := FormatFloat('0.00',nVl_TotItem)
          else
            Vlr_Doc := FormatFloat('0.00',SQLPesquisa.fieldbyname('CUPON2TOTITENS').Value - SQLPesquisa.fieldbyname('CUPON2DESC').Value
                                                                                          - SQLPesquisa.fieldbyname('CUPON2DESCITENS').Value);

          EditTabela.Text := 'Criando Reg.C460 - EMITIDO POR ECF - '+SQLPesquisa.fieldbyname('CUPOA13ID').AsString; EditTabela.Update;
          EditTabela.Update;
          NroDoc  := FormatFloat('######000000',SQLPesquisa.fieldbyname('CUPOINRO').AsInteger);
          Data    := FormatDateTime('ddmmyyyy',SQLPesquisa.fieldbyname('CUPODEMIS').Value);

          if SQLPesquisa.fieldbyname('CUPOCSTATUS').AsString = 'A' then
            Situacao := '00'
          else
            Situacao := '02';

          if Situacao = '00' then
            Linha := '|C460|'                                                  + // 01-Registro C460
                   '2D'                                                  + '|' + // 02-COD_MOD
                   Situacao                                              + '|' + // 03-COD_SIT -> 00=DOC REGULAR, 02=DOC CANCELADO
                   NroDoc                                                + '|' + // 04-NUM_DOC
                   Data                                                  + '|' + // 05-DT_DOC
                   Vlr_Doc                                               + '|' + // 06-VL_DOC
                   FormatFloat('##0.00',Vlr_Pis)                         + '|' + // 07-VL_PIS
                   FormatFloat('##0.00',Vlr_Cofins)                      + '|' + // 08-VL_COFINS
                   ''                                                    + '|' + // 09-CPF_CNPJ
                   ''                                                    + '|'  // 10-NOM_ADQ
          else
            Linha := '|C460|'                                                  + // 01-Registro C460
                   '2D'                                                  + '|' + // 02-COD_MOD
                   Situacao                                              + '|' + // 03-COD_SIT -> 00=DOC REGULAR, 02=DOC CANCELADO
                   NroDoc                                                + '|' + // 04-NUM_DOC
                                                                           '|' + // 05-DT_DOC
                                                                           '|' + // 06-VL_DOC
                                                                           '|' + // 07-VL_PIS
                                                                           '|' + // 08-VL_COFINS
                                                                           '|' + // 09-CPF_CNPJ
                                                                           '|' ; // 10-NOM_ADQ


          if Not GravaRegistros('C460') Then Begin Result := False; Exit; End;
          Inc(nC460);
          Inc(Total_Bloco_C);

          if Situacao = '00' then
          begin
            {REGISTRO C470: ITENS DO DOCUMENTO FISCAL EMITIDO POR ECF (CÓDIGO 02 e 2D).
             Este registro deve ser apresentado para informar os itens dos documentos fiscais emitidos pelos
             usuários de equipamentos ECF, que foram totalizados na Redução Z. O serviço de competência
             municipal (ISS) deverá ser informado nesse registro, para tanto, deverá ser criado o item no registro 0200 cujo
             conteúdo do campo TIPO_ITEM será igual “09” (Serviços).}

            SQLSubPesquisa.Close;
            SQLSubPesquisa.SQL.Text := 'SELECT C.*, U.UNIDA5DESCR, P.PRODIORIGEM, P.PRODISITTRIB, P.PRODN2ALIQPIS, P.PRODN2ALIQCOFINS, '+
                                       'P.PRODA1TIPO, I.ICMSN2ALIQUOTA, P.PRODCSERVICO FROM CUPOMITEM C ' +
                                       'LEFT JOIN PRODUTO P ON P.PRODICOD = C.PRODICOD ' +
                                       'LEFT JOIN UNIDADE U ON U.UNIDICOD = P.UNIDICOD ' +
                                       'LEFT JOIN ICMS I ON I.ICMSICOD = P.ICMSICOD ' +
                                       'WHERE (CUPOA13ID = :ID)' ;

            SQLSubPesquisa.ParamByName('ID').AsString := SQLPesquisa.fieldbyname('CUPOA13ID').AsString;
            SQLSubPesquisa.Open;
            if not SQLSubPesquisa.IsEmpty then
              begin
                while not SQLSubPesquisa.eof do
                  begin
                    try
                      EditTabela.Text := 'Reg.C470 - ITENS DOC.FISCAL EMITIDO POR ECF - ' + SQLPesquisa.fieldbyname('CUPOA13ID').AsString ; EditTabela.Update;
                      EditTabela.Update;

                      // verifica o numero de casas na quantidade
                      if DM.SQLLocate('TERMINAL','TERMICOD','TERMINRODECQUANT',SQLReducaoZTERMICOD.AsString) = '2' Then
                      begin
                        QtdItem  := FormatFloat('0.000',SQLSubPesquisa.fieldbyname('CPITN3QTD').Value);
                        QtdItem  := Copy(QtdItem,0,Length(Qtditem)-1)+'0';
                        nQtde    := StrToFloat(QtdItem);
                      End Else
                      begin
                        QtdItem  := FormatFloat('0.000',SQLSubPesquisa.fieldbyname('CPITN3QTD').Value);
                        nQtde    := StrToFloat(QtdItem);
                      End;

                      if SQLSubPesquisa.fieldbyname('CPITCSTATUS').Value = 'C' then
                        begin
                          QtdItemCanc  := FormatFloat('0.000',SQLSubPesquisa.fieldbyname('CPITN3QTD').Value);
                        end
                      else
                        QtdItemCanc := '0,000';


                      Unidade  := SQLSubPesquisa.fieldbyname('UNIDA5DESCR').AsString;
                      nVl_item := (SQLSubPesquisa.fieldbyname('CPITN3VLRUNIT').Value * nQtde)-SQLSubPesquisa.fieldbyname('CPITN2DESC').Value;
                      if PercDescTotalRateado>0 then
                        nVl_item := nVl_item - (nVl_item * (PercDescTotalRateado/100));
                      Vl_Item  := FormatFloat('0.00',nVl_item);

                      Cst_Icms := SQLSubPesquisa.fieldbyname('PRODIORIGEM').AsString+SQLSubPesquisa.fieldbyname('PRODISITTRIB').AsString;
                      Cst_Icms := FormatFloat('###000',strtoint(Cst_Icms));
                      Aliq_Icms_Item := '0';

                      if (SQLSubPesquisa.fieldbyname('coitn2icmsaliq').Value > 0) then
                        begin
                          // se for prestacao de servico, coloca no devido cfop
                          If SQLSubPesquisa.FieldByName('prodcservico').AsString = 'S' Then
                            begin
                              Cfop            := '5933'; // Prestação de serviço tributado pelo ISSQN
                              Cst_Icms        := '041' ; // não Tributada
                              Aliq_Icms_Item  :=  '0'  ;
                              Base            := 0     ;
                            end
                          else
                            begin
                              // Adilson Base := ((SQLSubPesquisa.fieldbyname('CPITN3VLRUNIT').Value * nQtde)-SQLSubPesquisa.fieldbyname('CPITN2DESC').Value * (PercDescTotalRateado/100));
                              Base            := nVl_Item;
                              Cfop            := '5102';
                              Cst_Icms        := '000';
                              Aliq_Icms_Item  := FormatFloat('0.00',SQLSubPesquisa.fieldbyname('coitn2icmsaliq').Value);
                            end
                        end
                      else
                        begin
                          If SQLSubPesquisa.FieldByName('PRODA1TIPO').AsString = '4' Then // Combustivies
                            begin
                              if nCFOPConfig = '' Then
                                Cfop := '5656'
                              else
                                Cfop := nCFOPConfig;
                            end
                          else
                            if Cst_Icms = '060' then
                              Cfop := '5405'
                            Else
                              Cfop := '5102';

                          Aliq_Icms_Item := '0';
                          if (Cst_Icms = '000') or (Cst_Icms = '020') then
                            Cst_Icms := '060';
                        end;

                        // Verifica se o produto é lubrificante
                        if (nCFOPLubrificante <> '') and (SQLSubPesquisa.FieldByName('PRODA1TIPO').AsString <> '4') then
                          if Pos(SQLLocate('PRODUTO','PRODICOD','GRUPICOD',SQLSubPesquisa.fieldbyname('PRODICOD').AsString),nGrupoLubrificante) > 0 then
                             Cfop := nCFOPLubrificante;

                      // Calcula o Pis de cada item
                      if SQLSubPesquisa.fieldbyname('PRODN2ALIQPIS').Value > 0 then
                        Vl_Pis_Item := nVl_item * (SQLSubPesquisa.fieldbyname('PRODN2ALIQPIS').Value/100)
                      else
                        Vl_Pis_Item := 0;

                      // Calcula o Cofins de cada item
                      if SQLSubPesquisa.fieldbyname('PRODN2ALIQCOFINS').Value > 0 then
                        Vl_Cofins_Item := nVl_item * (SQLSubPesquisa.fieldbyname('PRODN2ALIQCOFINS').Value/100)
                      else
                        Vl_Cofins_Item := 0;

                      if Cst_Icms = '060' then
                        Cfop := '5405'
                      else
                        Cfop := '5102';

                      Linha := '|C470|'                                                    + // 01-Registro C470
                               SQLSubPesquisa.fieldbyname('PRODICOD').AsString       + '|' + // 02-COD_ITEM
                               QtdItem                                               + '|' + // 03-QTD
                               QtdItemCanc                                           + '|' + // 04-QTD_CANC
                               Unidade                                               + '|' + // 05-UNID
                               Vl_Item                                               + '|' + // 06-VL_ITEM
                               Cst_Icms                                              + '|' + // 07-CST_ICMS
                               Cfop                                                  + '|' + // 08-CFOP
                               Aliq_Icms_Item                                        + '|' + // 09-ALIQ_ICMS
                               FormatFloat('0.00',Vl_Pis_Item)                       + '|' + // 10-VL_PIS
                               FormatFloat('0.00',Vl_Cofins_Item)                    + '|' ; // 11-VL_COFINS

                      if Not GravaRegistros('C470') Then Begin Result := False;
                      Exit;
                      End;
                      Inc(nC470);
                      Inc(Total_Bloco_C);

                      // Faz teste na tabela Temporaria se ja existir o Registro Adiciona, caso contrario Inclui Reg Novo
                      {Validação do Registro: não podem ser informados dois ou mais registros com a mesma combinação de valores dos campos
                       CST_ICMS, CFOP e ALIQ_ICMS.}
                      SQLRegC490.Close;
                      SQLRegC490.MacroByName('MFiltro').Value := 'CST_ICMS = "'+Cst_Icms+'" and CFOP= "'+Cfop+'" and ALIQ_ICMS= "'+Aliq_Icms_Item+'"';
                      SQLRegC490.Open;
                      SQLRegC490.Last;
                      if SQLRegC490.IsEmpty then
                        begin
                          SQLRegC490.Append;
                          SQLRegC490CST_ICMS.Value   := Cst_Icms;
                          SQLRegC490CFOP.Value       := Cfop;

                          //SQLRegC490VL_OPR.Value     := ((SQLSubPesquisa.fieldbyname('CPITN3VLRUNIT').Value * SQLSubPesquisa.fieldbyname('CPITN3QTD').Value) );
                          SQLRegC490VL_OPR.Value     := ((SQLSubPesquisa.fieldbyname('CPITN3VLRUNIT').Value * nQtde)-SQLSubPesquisa.fieldbyname('CPITN2DESC').Value * (PercDescTotalRateado/100) );
                          SQLRegC490ALIQ_ICMS.Value  := Aliq_Icms_Item;
                          SQLRegC490VL_BC_ICMS.Value := Base;
                          if ((Cst_Icms = '000') or (Cst_Icms = '010') or (Cst_Icms = '020')) and (SQLRegC490VL_BC_ICMS.Value > 0) and (StrToFloat(Aliq_Icms_Item) > 0) then
                              SQLRegC490VL_ICMS.Value       := (Base * (StrToFloat(Aliq_Icms_Item) / 100))
                          else begin
                              SQLRegC490VL_BC_ICMS.Value :=  0 ;
                              SQLRegC490ALIQ_ICMS.Value  := '0' ;
                              SQLRegC490VL_ICMS.Value    :=  0 ;
                          end;
                          SQLRegC490.Post;
                        end
                      else
                        begin
                          SQLRegC490.Edit;
                          //SQLRegC490VL_OPR.Value := SQLRegC490VL_OPR.Value + ((SQLSubPesquisa.fieldbyname('CPITN3VLRUNIT').Value * SQLSubPesquisa.fieldbyname('CPITN3QTD').Value) );
                          SQLRegC490VL_OPR.Value := SQLRegC490VL_OPR.Value + ((SQLSubPesquisa.fieldbyname('CPITN3VLRUNIT').Value * nQtde)-SQLSubPesquisa.fieldbyname('CPITN2DESC').Value * (PercDescTotalRateado/100) );
                          if not (StrToInt(Copy(Cst_Icms,2,2)) in ([30, 40, 41, 50, 60])) then // orirem da mercadoria 0, 1 e 2
                            begin
                              SQLRegC490VL_BC_ICMS.Value := SQLRegC490VL_BC_ICMS.Value + Base;
                              if (Base > 0) and (StrToFloat(Aliq_Icms_Item) > 0) then
                                SQLRegC490VL_ICMS.Value := SQLRegC490VL_ICMS.Value + ((Base * StrToFloat(Aliq_Icms_Item)) / 100);
                            end;
                          SQLRegC490.Post;
                        end;
                    Except on e:exception do
                    begin
                      ShowMessage('Falha ao gerar Registro C470 - Produto '+SQLSubPesquisa.fieldbyname('prodicod').asstring+#13+#10+
                      E.Message);
                    end;end;
                    SQLSubPesquisa.Next;
                  end;
              end;
          End;
          SQLPesquisa.Next;
          Progress.position := progress.position +1;
          Progress.Update;
        end;
      Progress.Position := 0;
      Progress.update;
    end;

  {REGISTRO C490: REGISTRO ANALÍTICO DO MOVIMENTO DIÁRIO (CÓDIGO 02 e 2D).
   Este registro tem por objetivo representar a escrituração dos documentos fiscais emitidos por ECF e totalizados
   pela combinação de CST, CFOP e Alíquota.}
  SQLRegC490.Close;
  SQLRegC490.MacroByName('MFiltro').Value := '0=0';
  SQLRegC490.Open;
  if not SQLRegC490.IsEmpty then
    begin
      SQLRegC490.First;
      while not SQLRegC490.Eof do
        begin
          Try
            EditTabela.Text := 'Reg.C490 - TOTALIZAR POR CST, CFOP E ALIQ - Cupom: '+SQLPesquisa.fieldbyname('CUPOA13ID').AsString; EditTabela.Update;
            EditTabela.Update;
            Linha := '|C490|'                                               + // 01-Registro C490
                     SQLRegC490CST_ICMS.AsString                      + '|' + // 02-CST_ICMS
                     SQLRegC490CFOP.AsString                          + '|' + // 03-CFOP
                     SQLRegC490ALIQ_ICMS.AsString                     + '|' + // 04-ALIQ_ICMS
                     FormatFloat('0.00',SQLRegC490VL_OPR.Value)       + '|' + // 05-VL_OPR
                     FormatFloat('0.00',SQLRegC490VL_BC_ICMS.Value)   + '|' + // 06-VL_BC_ICMS
                     FormatFloat('0.00',SQLRegC490VL_ICMS.Value)      + '|' + // 07-VL_ICMS
                                                                        '|' ; // 08-COD_OBS


          Except on E:Exception do
          begin
            Showmessage('Falha ao criar Linha do Registro C490: '+E.Message);
          End; End;
          if Not GravaRegistros('C490') then begin Result := False;
            Exit;
          end;
          Inc(nC490);
          Inc(Total_Bloco_C);

          SQLRegC490.Next;
        end;
    end;
    Result := True;
end;

Function TFormTelaExportacaoSped.RegistroC481: boolean;
var CST_PIS, ALIQ_PIS, ALIQ_PIS_QUANT, VL_BC_PIS, VL_PIS, COD_ITEM : string;
begin
  if CmbModelo.ItemIndex = 1 then
    Exit;
  // Registro C481 => Resumo Vendas PIS/Pasep
  EditTabela.Text := 'Criando Registro C481 - RESUMO VENDAS PIS/PASEP'; EditTabela.Update;
  EditTabela.Update;
  SQLCupom.Close;
  SQLCupom.MacroByName('MEmpresa').Value   := 'CUPOM.EMPRICOD  = ' + ComboEmpresa.KeyValue ;
  if chkterminal.Checked then
    SQLCupom.MacroByName('MTerminal').Value  := '0 = 0 '
  else
    SQLCupom.MacroByName('MTerminal').Value  := 'CUPOM.TERMICOD  = ' + SQLReducaoZTERMICOD.AsString ;
  SQLCupom.MacroByName('MData').Value      := 'CUPOM.CUPODEMIS = "' + FormatDateTime('mm/dd/yyyy',SQLReducaoZREDUDEMIS.Value)  + '" ';
  SQLCupom.Open;
  SQLCupom.Last;
  Progress.Max := SQLCupom.RecordCount;
  SQLCupom.First;
  while not SQLCupom.Eof do
    begin
      ALIQ_PIS:= DM.SQLLocate('PRODUTO','PRODICOD','PRODN2ALIQPIS',SQLCupomPRODICOD.AsString);
      if (StrToFloat(Aliq_Pis) > 0) then
        begin
          CST_PIS := DM.SQLLocate('PRODUTO','PRODICOD','PRODA2CSTPIS',SQLCupomPRODICOD.AsString);
          VL_PIS  := FormatFloat('0.00',(SQLCupomVALORTOTALITEM.Value * (StrToFloat(ALIQ_PIS)) / 100));
          if CkBarras.Checked then
            COD_ITEM := DM.SQLLocate('PRODUTO','PRODICOD','PRODA60CODBAR',SQLCupomPRODICOD.AsString)
          else
            COD_ITEM :=SQLCupomPRODICOD.AsString;

          Linha :=   '|C481|'                                                    + // 01-Registro C481
                     CST_PIS                                               + '|' + // 02-CST_PIS
                     FormatFloat('0.00',SQLCupomVALORTOTALITEM.value)      + '|' + // 03-VL_ITEM
                     FormatFloat('0.00',SQLCupomVALORTOTALITEM.Value)      + '|' + // 04-VL_BC_PIS
                     FormatFloat('0.0000',StrToFloat(ALIQ_PIS))            + '|' + // 05-ALIQ_PIS
                                                                             '|' + // 06-QUANT_BC_PIS
                                                                             '|' + // 07-ALIQ_PIS_QUANT
                     VL_PIS                                                + '|' + // 08-VL_PIS
                     COD_ITEM                                              + '|'         + // 09-COD_ITEM
                                                                             '|'         ; // 10-COD_CTA

          if Not GravaRegistros('C481') Then Begin Result := False; Exit; End;
          Inc(nC481);
          Inc(Total_Bloco_C);
        end;
      SQLCupom.Next;
      Progress.position := progress.position +1;
    end;
    Progress.Position := 0;
    Progress.update;
end;

Function TFormTelaExportacaoSped.RegistroC485: boolean;
var CST_COFINS, ALIQ_COFINS, ALIQ_COFINS_QUANT, VL_BC_COFINS, VL_COFINS, COD_ITEM : string;
begin
  if cmbModelo.ItemIndex = 1 then
    Exit;
  // Registro C485 => Resumo Vendas COFINS
  EditTabela.Text := 'Criando Registro C485 - RESUMO VENDAS COFINS'; EditTabela.Update;
  EditTabela.Update;

  SQLCupom.Last;
  Progress.Max := SQLCupom.RecordCount;
  SQLCupom.First;
  while not SQLCupom.Eof do
    begin
      ALIQ_COFINS:= DM.SQLLocate('PRODUTO','PRODICOD','PRODN2ALIQCOFINS',SQLCupomPRODICOD.AsString);
      if (StrToFloat(ALIQ_COFINS) > 0) then
        begin
          CST_COFINS := DM.SQLLocate('PRODUTO','PRODICOD','PRODA2CSTCOFINS',SQLCupomPRODICOD.AsString);
          VL_COFINS  := FormatFloat('0.00',((SQLCupomVALORTOTALITEM.Value * StrToFloat(ALIQ_COFINS)) / 100));

          if CkBarras.Checked then
            COD_ITEM := DM.SQLLocate('PRODUTO','PRODICOD','PRODA60CODBAR',SQLCupomPRODICOD.AsString)
          else
            COD_ITEM :=SQLCupomPRODICOD.AsString;

          Linha :=   '|C485|'                                                            + // 01-Registro C485
                     CST_COFINS                                            + '|'         + // 02-CST_COFINS
                     FormatFloat('0.00',SQLCupomVALORTOTALITEM.value)      + '|'         + // 03-VL_ITEM
                     FormatFloat('0.00',SQLCupomVALORTOTALITEM.Value)      + '|'         + // 04-VL_BC_COFINS
                     FormatFloat('0.00',StrToFloat(ALIQ_COFINS))           + '|'         + // 05-ALIQ_COFINS
                                                                             '|'         + // 06-QUANT_BC_COFINS
                                                                             '|'         + // 07-ALIQ_COFINS_QUANT
                     VL_COFINS                                             + '|'         + // 08-VL_COFINS
                     COD_ITEM                                              + '|'         + // 09-COD_ITEM
                                                                             '|'         ; // 10-COD_CTA

          If Not GravaRegistros('C485') Then Begin Result := False; Exit; End;
          Inc(nC485);
          Inc(Total_Bloco_C);
        end;
      SQLCupom.Next;
      Progress.Position := Progress.Position + 1;
    end;
    Progress.Position := 0;
    Progress.update;
end;

Function TFormTelaExportacaoSped.Registro_Bloco_H: boolean;
var VL_INV, vBase : Double;
    QtdMov : Extended;
begin
  // Se o Arquivo a ser Gerado é SPED de PIS/COFINS não gera o bloco.
  Total_Bloco_H := 0;
  if not chkGeraInventario.Checked then
    begin
      //Registro H001 - ABERTURA DO BLOCO H - SEM MOVIMENTACAO NO PERIODO ESCOLHIDO
      EditTabela.Text := 'Criando Bloco H'; EditTabela.Update;
      Linha :=   '|H001|'                                                            + // 01-Registro H001
                 '1'                                      + '|'                      ; // IND_MOV = Indicador de movimento: 0 - Bloco com dados informados, 1 - Bloco sem dados informados

      if Not GravaRegistros('H001') Then Begin Result := False; Exit; End;
      Inc(Total_Bloco_H);
      nH001 := 1;

      Linha :=   '|H990|'                                                            + // 01-Registro H990
                 '2'                                      + '|'                      ; // Total de Registros

      if Not GravaRegistros('H990') Then Begin Result := False; Exit; End;
      Inc(Total_Bloco_H);
      nH990 := 1;
      Result := True;
      Exit;
    end;

  EditTabela.Text := 'Criando - REGISTRO DE INVENTARIO'; EditTabela.Update;
  EditTabela.Update;
  SQLInventario.Close;
  SQLInventario.ParamByName('xEmpresa').Value         := ComboEmpresa.KeyValue ;
  SQLInventario.ParamByName('xDataMovimento').AsDate  := DataInventario.Date;
  SQLInventario.Open;
  SQLInventario.last;
  Progress.Max := SQLInventario.RecordCount;
  SQLInventario.First;

  EditTabela.Text := 'Calculando Total do Inventário ';

  VL_INV := 0;
  Progress.Position := 0;
  Progress.Update;

  While Not SQLInventario.Eof do
  begin
    if (SQLInventario.FieldByName('Qtde').IsNull) or (SQLInventario.FieldByName('Qtde').value < 0) then
      qtdMov:= 0
    else
      QtdMov := SQLInventario.FieldByName('Qtde').value;

    VL_Inv := VL_Inv + (SQLInventario.fieldbyname('PRODN3VLRCUSTO').Value*QtdMov);
    SQLInventario.Next;
    Progress.Position := Progress.Position + 1;
  end;
  SQLInventario.First;

  EditTabela.Text := 'Registrando Itens do Inventário - Bloco H ';
  Progress.Position := 0;
  Progress.Update;

  if not SQLInventario.IsEmpty then
    begin
      //Registro H001 - ABERTURA DO BLOCO H - COM INVENTARIO DE ESTOQUE
      EditTabela.Text := 'Criando Bloco H - Registro: '+IntToStr(SQLInventario.RecNo);
      EditTabela.Update;
      Linha :=   '|H001|'                                                            + // 01-Registro H001
                 '0'                                      + '|'                      ; // IND_MOV = Indicador de movimento: 0 - Bloco com dados informados, 1 - Bloco sem dados informados

      if Not GravaRegistros('H001') Then Begin Result := False; Exit; End;
      Inc(Total_Bloco_H);
      nH001 := 1;

      //Registro H005 - ABERTURA DO BLOCO H - COM INVENTARIO DE ESTOQUE
      EditTabela.Text := 'Criando Bloco H005'; EditTabela.Update;

      Linha :=   '|H005|'                                                           + // 01-Registro H005
                 FormatDateTime('ddmmyyyy',DataInventario.date)  + '|'              + // 02-DT_INV
                 FormatFloat('0.00',VL_INV)                      + '|'              ; // 03-Valor total do estoque
                 // Copy(cmbMotivoInventario.Text,0,2)              + '|'              ;// 04-Motivo do inventario

      if Not GravaRegistros('H005') Then Begin Result := False; Exit; End;
      Inc(Total_Bloco_H);
      nH005 := 1;

      //Registro H010 - ABERTURA DO BLOCO H - COM INVENTARIO DE ESTOQUE
      EditTabela.Text := 'Criando Bloco H010'; EditTabela.Update;
      nH010 := 0;
      nH020 := 0;
      if VL_INV > 0 then
      begin
        While not SQLInventario.Eof do
        begin
          if (SQLInventario.FieldByName('Qtde').IsNull) or (SQLInventario.FieldByName('Qtde').value < 0) then
            qtdMov:= 0
          else
            QtdMov := SQLInventario.FieldByName('Qtde').value;

          Linha :=  '|H010|' ;                                                                      // 01-Registro H010
                    if CkBarras.Checked then
                      Linha := Linha + SQLINVENTARIOPRODA60CODBAR.AsString                     + '|' // 02 COD_ITEM Código do item (campo 02 do Registro 0200)
                    else
                      Linha := Linha + SQLInventarioPRODICOD.AsString                          + '|' ;
                    Linha := Linha +
                    SQLInventarioUNIDA5DESCR.AsString                                          + '|' + // 03 UNID Unidade do item
                    FormatFloat('0.000',QtdMov)                                                + '|' + // 04 QTD Quantidade do item
                    FormatFloat('0.000000',SQLInventarioPRODN3VLRCUSTO.Value)                  + '|' + // 05 VL_UNIT Valor unitário do item
                    FormatFloat('0.00',SQLInventarioPRODN3VLRCUSTO.Value * QtdMov)             + '|' + // 06 VL_ITEM Valor do item
                    '0'                                                                        + '|' + // 07 IND_PROP indicador de propriedade = 0 = item do proprietario e em seu poder
                    ''                                                                         + '|' + // 08 COD_PART indica com quem esta o produto se o IND_PROP for 1 ou 2 (propriedade e/ou com terceiros)
                    ''                                                                         + '|' + // 09 TXT_COMPL Descrição complementar
                    edtContaAnalitica.Text                                                     + '|';

         if Not GravaRegistros('H010') Then Begin Result := False; Exit; End;
          Inc(Total_Bloco_H);
          inc(nH010);

          // se MOT_INV (motivo do Inventario) for de 2 a 5 deve gerar o registro H020
          if cmbMotivoInventario.ItemIndex > 0 then
          begin
            if SQLInventarioICMSN2REDBASEICMS.value > 0 then
                       vBase:= (SQLInventarioPRODN3VLRCUSTO.Value * QtdMov) *
                       (SQLInventarioICMSN2REDBASEICMS.value / 100)
                     Else
                       vBase:= (SQLInventarioPRODN3VLRCUSTO.Value * QtdMov);

            Linha := '|H020|' +
                     SQLInventarioPRODISITTRIB.AsString                   + '|' +
                     FormatFloat('0.00',vBase)                            + '|' +
                     FormatFloat('0.00',vBase * SQLInventarioICMSN2REDBASEICMS.Value) + '|';

            if Not GravaRegistros('H020') Then Begin Result := False; Exit; End;
            Inc(Total_Bloco_H);
            inc(nH020);
          end;
          SQLInventario.Next;
          Progress.Position := Progress.Position + 1 ;
          Progress.Update;
        End;
      end;
      Inc(Total_Bloco_H);
      Linha :=   '|H990|'                 + // 01-Registro H990
                 IntToStr(Total_Bloco_H)   + '|'                      ; // Total de Registros

      if Not GravaRegistros('H990') Then Begin Result := False; Exit; End;
      nH990 := 1;
    End
  else
    begin
      //Registro H001 - ABERTURA DO BLOCO H - SEM MOVIMENTACAO NO PERIODO ESCOLHIDO
      EditTabela.Text := 'Criando Bloco H'; EditTabela.Update;
      Linha :=   '|H001|'                                                            + // 01-Registro H001
                 '1'                                      + '|'                      ; // IND_MOV = Indicador de movimento: 0 - Bloco com dados informados, 1 - Bloco sem dados informados

      if Not GravaRegistros('H001') Then Begin Result := False; Exit; End;
      Inc(Total_Bloco_H);
      nH001 := 1;

      Linha :=   '|H990|'                                                            + // 01-Registro H990
                 '2'                                      + '|'                      ; // Total de Registros

      Inc(Total_Bloco_H);
      if Not GravaRegistros('H990') Then Begin Result := False; Exit; End;
      nH990 := 1;
    end;
end;

Function TFormTelaExportacaoSped.GravaRegistros(LinhaErro : string): Boolean;
Var Gravou: Boolean;
begin
  try
    Writeln(Arquivo,Linha);
    Application.ProcessMessages;
    Gravou := True ;
  except
    Gravou := False;
    Application.ProcessMessages;
  end;
  if Gravou  = False then
    MemoErro.Lines.Add('Não foi possível criar o Registro=' + LinhaErro + ', Verifique!');
  Result := Gravou;
end;

Function TFormTelaExportacaoSped.Inclui_0190(CodProduto : string): Boolean;
begin
  if not ChkImporta.Checked then
    begin
      Result := False;
      EditTabela.Text := 'Incluindo Unidade do Produto '+CodProduto; EditTabela.Update;
      EditTabela.Update;
      SQLTerceiraPesquisa.Close;
      SQLTerceiraPesquisa.SQL.Text := 'select u.UNIDA5DESCR, u.UNIDA15DESCR from unidade u left join produto p on p.unidicod = u.unidicod where p.prodicod = :xProd';
      SQLTerceiraPesquisa.ParamByName('xProd').AsString := CodProduto;
      SQLTerceiraPesquisa.Open;
      SQL0190.Close;
      SQL0190.SQL.Text := 'SELECT * FROM SPED_190 WHERE UND_SIGLA = :xSigla';
      SQL0190.ParamByName('xSigla').AsString := SQLTerceiraPesquisa.Fieldbyname('UNIDA5DESCR').AsString;
      SQL0190.Open;
      if SQL0190.IsEmpty then
        begin
          if (not SQLTerceiraPesquisa.Fieldbyname('UNIDA5DESCR').isnull ) then
          begin
            SQL0190.Append;
            SQL0190UND_SIGLA.AsString := SQLTerceiraPesquisa.Fieldbyname('UNIDA5DESCR').AsString;
            SQL0190UND_DESCR.AsString := SQLTerceiraPesquisa.Fieldbyname('UNIDA15DESCR').AsString;
            SQL0190.Post;
            Result := True;
          End Else
            ShowMessage('Falha na Inclusão do Registro 0190 - Unidade do produto '+codProduto);
        end else
          Result := True;
      SQLTerceiraPesquisa.Close;
    end
  Else
    Result := True;
end;

Function TFormTelaExportacaoSped.Inclui_0200(Produto : string; Selected: String): Boolean;
begin
  Result := False;
  EditTabela.Text := 'Incluindo Produto '+Produto; EditTabela.Update;
  EditTabela.Update;

  SQL0200.Close;
  SQL0200.MacroByName('MFiltro').Value := 'COD_ITEM = ' + Produto;
  SQL0200.Open;
  if SQL0200.IsEmpty then
    begin
      SQL0200.Append;
      SQL0200.FieldByName('COD_ITEM').AsString    := Produto;
      SQL0200.FieldByName('SELECIONADO').AsString := 'S';
      SQL0200.Post;
      Application.ProcessMessages;
      // Inclui a unidade de medida
      Inclui_0190(Produto);
      Result := True;
    end
  else
    begin
      SQL0200.edit;
      SQL0200.FieldByName('SELECIONADO').AsString := 'S';
      SQL0200.Post;
    end;
end;

Function TFormTelaExportacaoSped.Registro0150: boolean;
var Achou, IE: String;
begin
  Try
    // Informa Clientes envolvidos nas operações de entrada e saida via tabela NOTAFISCAL
    SQLPesquisa.Close;
    SQLPesquisa.SQL.Text := 'SELECT DISTINCT C.* FROM NOTAFISCAL N '+
    'LEFT join CLIENTE C ON N.CLIEA13ID = C.CLIEA13ID '+
    'LEFT Join OPERACAOESTOQUE ES ON ES.OPESICOD = N.OPESICOD '+
    'WHERE (N.NOFIDEMIS >= :xDataInicial) and (N.NOFIDEMIS <= :xDataFinal) and (N.CLIEA13ID  IS NOT NULL) and '+
    '(N.EMPRICOD = :xEmpresa) and (N.NOFICSTATUS = "E") and (ES.opescorigemdestino = "C")';
    // Removido Adilson  or N.NOFICSTATUS = "C" , Nao devo informar Participante para notas canceladas conforme manual SPED
    SQLPesquisa.ParamByName('xDataInicial').AsDate := De.Date;
    SQLPesquisa.ParamByName('xDataFinal').AsDate   := Ate.Date;
    SQLPesquisa.ParamByName('xEmpresa').AsString   := SQLEmpresaEMPRICOD.AsString;
    SQLPesquisa.Open;
    SQLPesquisa.Last;
    Progress.Max := SQLPesquisa.RecordCount;
    SQLPesquisa.First;
    EditTabela.Text := 'Criando - BLOCO 0150 - Clientes NOTA FISCAL'; EditTabela.Update;
    n0150 := 0;

    SQLCod_Part.Close;
    dm.SQLTemplate.Close;
    dm.SQLTemplate.SQL.Clear;
    dm.sqltemplate.sql.Text := 'delete from SPED_PART';
    DM.SQLTemplate.ExecSQL;
    DM.SQLTemplate.Close;
    SQLCod_Part.Open;

    While not SQLPesquisa.EOF do
      begin
        Try
          SQLCod_Part.Append;
          SQLCod_PartCOD_PART.AsString      := SQLPesquisa.FieldByName('CLIEA13ID').AsString;
          SQLCod_PartNOME.AsString          := SQLPesquisa.FieldByName('CLIEA60RAZAOSOC').AsString;
          SQLCod_PartCOD_PAIS.AsString      := SQLPesquisa.FieldByName('CLIEICODPAIS').AsString;

          if length(SQLPesquisa.FieldByName('CLIEA14CGC').AsString)=14 then
            begin
              SQLCod_PartCNPJ.AsString          := SQLPesquisa.FieldByName('CLIEA14CGC').AsString;
              // verifica se o cliente tem inscriçao de produtor
              If ((SQLPesquisa.FieldByName('CLIEA20IE').isnull) or (SQLPesquisa.FieldByName('CLIEA20IE').AsString = '')) and (SQLPesquisa.FieldByName('CLIEA30OUTROSDOC').AsString <> '') then
                SQLCod_PartIE.AsString  := COPY(SQLPesquisa.FieldByName('CLIEA30OUTROSDOC').AsString,0,14)
              else
                SQLCod_PartIE.AsString  :=  COPY(SQLPesquisa.FieldByName('CLIEA20IE').AsString,0,14) ;
              IE := SQLCod_PartIE.AsString;
              while pos('/',IE) > 0 do
                delete(IE,pos('/',IE),1);
              while pos('.',IE) > 0 do
                delete(IE,pos('.',IE),1);
              while pos('-',IE) > 0 do
                delete(IE,pos('-',IE),1);
              if IE = 'ISENTO' then IE := '';
              SQLCod_PartIE.AsString  := IE;
            end
          else
            begin
              if length(SQLPesquisa.FieldByName('CLIEA11CPF').AsString)=11 then
                SQLCod_PartCPF.AsString := SQLPesquisa.FieldByName('CLIEA11CPF').AsString;
            end;

          SQLCod_PartCOD_MUN.AsString       := SQLPesquisa.FieldByName('CLIEIMUNICODFED').AsString;
          SQLCod_PartENDERECO.AsString      := SQLPesquisa.FieldByName('CLIEA60ENDRES').AsString;
          SQLCod_PartEND_NUM.AsString       := SQLPesquisa.FieldByName('CLIEA5NROENDRES').AsString;
          SQLCod_PartBAIRRO.AsString        := SQLPesquisa.FieldByName('CLIEA60BAIRES').AsString;
          SQLCod_PartCOD_SUFRAMA.AsString   := '';
          SQLCod_PartCOMPLEMENTO.AsString   := '';
          // Nao Aceitar cliente sem CPF ou CNPJ (um pelo menos tem que ter)
          if (SQLCod_PartCPF.AsString = '') and (SQLCod_PartCNPJ.AsString = '') then
            begin
              SQLCod_Part.Cancel;
              Showmessage('Falha ao Criar Tabela de Participantes! Falta CNPJ ou CPF!'+#13+#10+'Cliente: '+SQLPesquisa.FieldByName('CLIEA13ID').AsString);
              Result := False;
              Exit;
            end;

          SQLCod_Part.Post;
        Except on E:Exception do
        begin
          Showmessage('Falha ao Criar Tabela de Participantes (Clientes Nota Fiscal):'+#13+#10+E.Message+#13+#10+'Cliente: '+SQLPesquisa.FieldByName('CLIEA13ID').AsString);
          Result := False;
          Exit;
        end; end;
        SQLPesquisa.Next;
        Progress.Position := Progress.Position + 1;
        Progress.Update;
      end;
    SQLCod_Part.Close;
    ProgressGeral.Position := 10;

    // Informa a PROPRIA EMPRESA caso existam notas emitidas para si proprio
    SQLPesquisa.Close;
    SQLPesquisa.SQL.Text := 'SELECT DISTINCT E.* FROM NOTAFISCAL N '+
    'LEFT join EMPRESA E ON N.EMPRICODDEST = E.EMPRICOD '+
    'WHERE (N.NOFIDEMIS >= :xDataInicial) AND (N.NOFIDEMIS <= :xDataFinal) and '+
    '(N.EMPRICODDEST IS NOT NULL) and (N.Empricod = :xEmpresa) and '+
    '(N.NOFICSTATUS = "E")';
    // Removido Adilson  or N.NOFICSTATUS = "C" , Nao devo informar Participante para notas canceladas conforme manual SPED
    SQLPesquisa.ParamByName('xDataInicial').AsDate   := De.Date;
    SQLPesquisa.ParamByName('xDataFinal').AsDate     := Ate.Date;
    SQLPesquisa.ParamByName('xEmpresa').AsString     := SQLEmpresaEMPRICOD.AsString;
    SQLPesquisa.Open;
    EditTabela.Text := 'Criando - BLOCO 0150 - Empresa da NOTA FISCAL'; EditTabela.Update;
    SQLCod_Part.Open;

    if not SQLPEsquisa.IsEmpty then
    begin
      while not SQLPEsquisa.eof do
        begin
          Try
            //Registro 0150 - ABERTURA DO REGISTRO 0150 - DADOS DOS PARTICIPANTES (EMPRESAS)
            SQLCod_Part.Append;
            SQLCod_PartCOD_PART.AsString      := 'E'+SQLPesquisa.FieldByName('EMPRICOD').AsString;
            SQLCod_PartNOME.AsString          := SQLPesquisa.FieldByName('EMPRA60RAZAOSOC').AsString ;
            SQLCod_PartCOD_PAIS.AsString      := '1058';
            SQLCod_PartCNPJ.AsString          := SQLPesquisa.FieldByName('EMPRA14CGC').AsString;
            SQLCod_PartCPF.AsString           := SQLPesquisa.FieldByName('EMPRA11CPF').AsString;
            SQLCod_PartIE.AsString            := COPY(SQLPesquisa.FieldByName('EMPRA20IE').AsString,0,14);

            IE := SQLCod_PartIE.AsString;
            while pos('/',IE) > 0 do
              delete(IE,pos('/',IE),1);
            while pos('.',IE) > 0 do
              delete(IE,pos('.',IE),1);
            while pos('-',IE) > 0 do
              delete(IE,pos('-',IE),1);
            if SQLCod_PartIE.AsString = 'ISENTO' then
              IE := '';
            SQLCod_PartIE.AsString  := IE;

            SQLCod_PartCOD_MUN.AsString       := SQLPesquisa.FieldByName('EMPRIMUNICODFED').AsString;
            SQLCod_PartENDERECO.AsString      := SQLPesquisa.FieldByName('EMPRA60END').AsString;
            SQLCod_PartEND_NUM.AsString       := SQLPesquisa.FieldByName('EMPRIENDNRO').AsString;
            SQLCod_PartBAIRRO.AsString        := SQLPesquisa.FieldByName('EMPRA60BAI').AsString;
            SQLCod_PartCOD_SUFRAMA.AsString   := SQLPesquisa.FieldByName('EMPRA9SUFRAMA').AsString;
            SQLCod_PartCOMPLEMENTO.AsString   := '';
            SQLCod_Part.Post;
          Except on E:Exception do
          begin
            Showmessage('Falha ao Criar Tabela de Participantes (Empresa):'+#13+#10+E.Message+#13+#10+'Empresa: '+SQLPesquisa.FieldByName('EMPRICOD').AsString);
            Result := False;
            Exit;
          end; end;
          SQLPesquisa.Next;
        end;
    end;
    SQLPesquisa.Close;
    SQLCod_Part.Close;

    // Informa Fornecedores envolvidos nas operações de entrada e saida via tabela NOTAFISCAL
    SQLPesquisa.Close;
    SQLPesquisa.SQL.Text := 'SELECT DISTINCT F.* FROM NOTAFISCAL N '+
    'LEFT Join SERIE S on S.SERIA5COD = N.SERIA5COD AND S.EMPRICOD = N.EMPRICOD '+
    'LEFT join FORNECEDOR F ON F.FORNICOD = N.FORNICOD '+
    'LEFT Join OPERACAOESTOQUE ES ON ES.OPESICOD = N.OPESICOD '+
    'WHERE (N.NOFIDEMIS >= :xDataInicial) AND (N.NOFIDEMIS <= :xDataFinal) and '+
    '(N.FORNICOD IS NOT NULL) and (N.Empricod = :xEmpresa) and '+
    '(N.NOFICSTATUS = "E") and (ES.opescorigemdestino = "F") and '+
    '(S.SERIA2TIPONOTA = "01" OR S.SERIA2TIPONOTA = "1B" OR S.SERIA2TIPONOTA = "04" OR S.SERIA2TIPONOTA = "55")';
    // Removido Adilson  or N.NOFICSTATUS = "C" , Nao devo informar Participante para notas canceladas conforme manual SPED

    SQLPesquisa.ParamByName('xDataInicial').AsDate   := De.Date;
    SQLPesquisa.ParamByName('xDataFinal').AsDate     := Ate.Date;
    SQLPesquisa.ParamByName('xEmpresa').AsString     := SQLEmpresaEMPRICOD.AsString;
    SQLPesquisa.Open;
    SQLPesquisa.Last;
    Progress.Max := SQLPesquisa.RecordCount;
    SQLPesquisa.First;
    EditTabela.Text := 'Criando - BLOCO 0150 - Fornecedores NOTA FISCAL'; EditTabela.Update;
    SQLCod_Part.Open;
    While not SQLPesquisa.EOF do
      begin
        Try
          //Registro 0150 - ABERTURA DO REGISTRO 0150 - DADOS DOS PARTICIPANTES (CLIENTES E FORNECEDORES)
          Achou:= 'N';
          SQLCod_Part.First;
          If SQLPesquisa.FieldByName('FORNA14CGC').AsString <> '' then
            if SQLCod_Part.Locate('CNPJ',SQLPesquisa.FieldByName('FORNA14CGC').AsString,[]) then
            Begin
              SQLCod_Part.Edit;
              SQLCod_PartCOD_FORN.AsInteger := SQLPesquisa.FieldByName('FORNICOD').AsInteger;
              SQLCod_part.Post;
              Achou := 'S';
            End;
          If SQLPesquisa.FieldByName('FORNA11CPF').AsString <> '' then
            if SQLCod_Part.Locate('CPF',SQLPesquisa.FieldByName('FORNA11CPF').AsString,[]) then
            Begin
              SQLCod_Part.Edit;
              SQLCod_PartCOD_FORN.AsInteger := SQLPesquisa.FieldByName('FORNICOD').AsInteger;
              SQLCod_part.Post;
              Achou := 'S';
            End;

          If Achou = 'N' then
          Begin
            SQLCod_Part.Append;
            SQLCod_PartCOD_PART.AsString      := 'F' + SQLPesquisa.FieldByName('FORNICOD').AsString;
            SQLCod_PartCOD_FORN.AsString      := SQLPesquisa.Fieldbyname('FORNICOD').AsString;
            SQLCod_PartNOME.AsString          := SQLPesquisa.FieldByName('FORNA60RAZAOSOC').AsString ;
            SQLCod_PartCOD_PAIS.AsString      := SQLPesquisa.FieldByName('FORNICODPAIS').AsString;

            if length(SQLPesquisa.FieldByName('FORNA14CGC').AsString)=14 then
              begin
                SQLCod_PartCNPJ.AsString          := SQLPesquisa.FieldByName('FORNA14CGC').AsString;
                SQLCod_PartIE.AsString            := COPY(SQLPesquisa.FieldByName('FORNA20IE').AsString,0,14);
                IE := SQLCod_PartIE.AsString;
                while pos('/',IE) > 0 do
                  delete(IE,pos('/',IE),1);
                while pos('.',IE) > 0 do
                  delete(IE,pos('.',IE),1);
                SQLCod_PartIE.AsString  := IE;
              end
            else
              begin
                if length(SQLPesquisa.FieldByName('FORNA11CPF').AsString)=11 then
                  SQLCod_PartCPF.AsString           := SQLPesquisa.FieldByName('FORNA11CPF').AsString;
              end;

            SQLCod_PartCOD_MUN.AsString       := SQLPesquisa.FieldByName('FORNIMUNICODFED').AsString;
            SQLCod_PartENDERECO.AsString      := SQLPesquisa.FieldByName('FORNA60END').AsString;
            SQLCod_PartEND_NUM.AsString       := SQLPesquisa.FieldByName('FORNA5NROEND').AsString;
            SQLCod_PartBAIRRO.AsString        := SQLPesquisa.FieldByName('FORNA60BAI').AsString;
            SQLCod_PartCOD_SUFRAMA.AsString   := '';
            SQLCod_PartCOMPLEMENTO.AsString   := '';

            if (SQLCod_PartCPF.AsString = '') and (SQLCod_PartCNPJ.AsString = '') then
              begin
                SQLCod_Part.Cancel;
                Showmessage('Falha ao Criar Tabela de Participantes! Falta CNPJ ou CPF!'+#13+#10+
                'Fornecedor: '+SQLPesquisa.FieldByName('FORNICOD').AsString);
                Result := False;
                Exit;
              end;

            SQLCod_Part.Post;
          End;
        Except on E:Exception do
        begin
          Showmessage('Falha ao Criar Tabela de Participantes (Fornecedores Nota Fiscal):'+#13+#10+E.Message+#13+#10+'Fornecedor: '+SQLPesquisa.FieldByName('FORNICOD').AsString);
          Result := False;
          Exit;
        end; end;

        SQLPesquisa.Next;
        Progress.Position := Progress.Position + 1;
        Progress.Update;
      end;
    SQLPesquisa.Close;
    ProgressGeral.Position := 20;

    // Informa FORNECEDORES envolvidos nas operações de COMPRA via tabela NOTAFISCALCOMPRA
    SQLPesquisa.Close;
    SQLCod_Part.Close;
    SQLPesquisa.SQL.Text := 'SELECT DISTINCT F.* FROM NOTACOMPRA N '+
    'Left Join FORNECEDOR F ON F.FORNICOD = N.FORNICOD '+
    'Left Join SERIE S on S.SERIA5COD = N.NOCPA5SERIE '+
    'Where N.NOCPDRECEBIMENTO >= :xDataInicial and N.NOCPDRECEBIMENTO <= :xDataFinal AND N.EMPRICOD = :xEmpresa AND '+
    '(N.NOCPCSTATUS = "E") '+
    'AND (S.SERIA2TIPONOTA = "01" OR S.SERIA2TIPONOTA = "1B" OR S.SERIA2TIPONOTA = "04" OR S.SERIA2TIPONOTA = "55")';
    // Removido Adilson  or N.NOCPCSTATUS = "C" , Nao devo informar Participante para notas canceladas conforme manual SPED
    SQLPesquisa.ParamByName('xDataInicial').AsDate   := De.Date;
    SQLPesquisa.ParamByName('xDataFinal').AsDate     := Ate.Date;
    SQLPesquisa.ParamByName('xEmpresa').AsString     := SQLEmpresaEMPRICOD.AsString;
    SQLPesquisa.Open;
    SQLPesquisa.Last;
    Progress.Max := SQLPesquisa.RecordCount;
    SQLPesquisa.First;
    EditTabela.Text := 'Criando - BLOCO 0150 - Fornecedores NOTA COMPRA'; EditTabela.Update;
    SQLCod_Part.Open;
    While not SQLPesquisa.EOF do
      begin
        Try
          //Registro 0150 - ABERTURA DO REGISTRO 0150 - DADOS DOS PARTICIPANTES (CLIENTES E FORNECEDORES)
          Achou:= 'N';
          If SQLPesquisa.FieldByName('FORNA14CGC').AsString <> '' then
            if SQLCod_Part.Locate('CNPJ',SQLPesquisa.FieldByName('FORNA14CGC').AsString,[]) then
            Begin
              SQLCod_Part.Edit;
              SQLCod_PartCOD_FORN.AsInteger := SQLPesquisa.FieldByName('FORNICOD').AsInteger;
              SQLCod_part.Post;
              Achou := 'S';
            End;

          // Adilson Ver melhor essa pesquisa  if (SQLCod_Part.Locate('CPF;IE',VarArrayOf([SQLPesquisa.FieldByName('FORNA11CPF').AsString,DM.SQLLocate('FORNECEDOR','FORNICOD','FORNA20IE',SQLPesquisa.FieldByName('FORNICOD').AsString)]),[])) then
          If SQLPesquisa.FieldByName('FORNA11CPF').AsString <> '' then
            if SQLCod_Part.Locate('CPF',SQLPesquisa.FieldByName('FORNA11CPF').AsString,[]) then
            Begin
              SQLCod_Part.Edit;
              SQLCod_PartCOD_FORN.AsInteger := SQLPesquisa.FieldByName('FORNICOD').AsInteger;
              SQLCod_part.Post;
              Achou := 'S';
            End;

          If Achou = 'N' then
          Begin
            SQLCod_Part.Append;
            SQLCod_PartCOD_PART.AsString      := 'F' + SQLPesquisa.FieldByName('FORNICOD').AsString;
            SQLCod_PartCOD_FORN.AsString      := SQLPesquisa.Fieldbyname('FORNICOD').AsString;
            SQLCod_PartNOME.AsString          := SQLPesquisa.FieldByName('FORNA60RAZAOSOC').AsString ;
            SQLCod_PartCOD_PAIS.AsString      := SQLPesquisa.FieldByName('FORNICODPAIS').AsString;
            SQLCod_PartCNPJ.AsString          := SQLPesquisa.FieldByName('FORNA14CGC').AsString;
            SQLCod_PartCPF.AsString           := SQLPesquisa.FieldByName('FORNA11CPF').AsString;
            SQLCod_PartIE.AsString            := COPY(SQLPesquisa.FieldByName('FORNA20IE').AsString,0,14);

            IE := SQLCod_PartIE.AsString;
            while pos('/',IE) > 0 do
              delete(IE,pos('/',IE),1);
            while pos('.',IE) > 0 do
              delete(IE,pos('.',IE),1);
            SQLCod_PartIE.AsString  := IE;

            SQLCod_PartCOD_MUN.AsString       := SQLPesquisa.FieldByName('FORNIMUNICODFED').AsString;
            SQLCod_PartENDERECO.AsString      := SQLPesquisa.FieldByName('FORNA60END').AsString;
            SQLCod_PartEND_NUM.AsString       := SQLPesquisa.FieldByName('FORNA5NROEND').AsString;
            SQLCod_PartBAIRRO.AsString        := SQLPesquisa.FieldByName('FORNA60BAI').AsString;
            SQLCod_PartCOD_SUFRAMA.AsString   := '';
            SQLCod_PartCOMPLEMENTO.AsString   := '';
            SQLCod_Part.Post;
          End;
        Except on E:Exception do
        begin
          Showmessage('Falha ao Criar Tabela de Participantes (Fornecedores Nota Compra):'+#13+#10+
          E.Message+#13+#10+'Fornecedor: '+SQLPesquisa.FieldByName('FORNICOD').AsString);
          Result := False;
          Exit;
        end; end;

        SQLPesquisa.Next;
        Progress.Position := Progress.Position + 1;
        Progress.Update;
      end;
    ProgressGeral.Position := 25;

    // Informa Transportadoras envolvidas nas operações de VENDA via tabela NOTA FISCAL
    { Adilson - Removi, ver melhor a legislacao, se é necessario enviar a transportadora
    SQLCod_Part.Close;
    SQLPesquisa.Close;
    SQLCod_Part.Close;
    SQLPesquisa.SQL.Text := 'SELECT DISTINCT C.* FROM NOTAFISCAL N '+
    'LEFT Join TRANSPORTADORA C ON C.TRANICOD = N.TRANICOD '+
    'WHERE (N.NOFICSTATUS = "E" or N.NOFICSTATUS = "C") AND (N.NOFIDEMIS >= :xDataInicial) AND '+
    '(N.NOFIDEMIS <= :xDataFinal) AND (N.TRANICOD IS NOT NULL) AND (N.EMPRICOD = :xEmpresa) and '+
    '(N.SERIA5COD IN (Select SERIA5COD from SERIE where (SERIA2TIPONOTA = "01") or (SERIA2TIPONOTA = "04") ))';
    SQLPesquisa.ParamByName('xDataInicial').AsDate   := De.Date;
    SQLPesquisa.ParamByName('xDataFinal').AsDate     := Ate.Date;
    SQLPesquisa.ParamByName('xEmpresa').AsString     := SQLEmpresaEMPRICOD.AsString;
    SQLPesquisa.Open;
    SQLPesquisa.Last;
    Progress.Max := SQLPesquisa.RecordCount;
    SQLPesquisa.First;
    EditTabela.Text := 'Criando - BLOCO 0150 - TRANSP. NOTA COMPRA'; EditTabela.Update;
    SQLCod_Part.Open;
    While not SQLPesquisa.EOF do
      begin
        Try
          //Registro 0150 - ABERTURA DO REGISTRO 0150 - DADOS DOS PARTICIPANTES (CLIENTES E FORNECEDORES)
          Achou:= 'N';
          If SQLPesquisa.FieldByName('TRANA14CGC').AsString <> '' then
            if SQLCod_Part.Locate('CNPJ',SQLPesquisa.FieldByName('TRANA14CGC').AsString,[]) then
            Begin
              SQLCod_Part.Edit;
              SQLCod_PartCOD_TRANSP.AsInteger := SQLPesquisa.FieldByName('TRANICOD').AsInteger;
              SQLCod_part.Post;
              Achou := 'S';
            End;

          If SQLPesquisa.FieldByName('TRANA11CPF').AsString <> '' then
            if SQLCod_Part.Locate('CPF',SQLPesquisa.FieldByName('TRANA11CPF').AsString,[]) then
            Begin
              SQLCod_Part.Edit;
              SQLCod_PartCOD_TRANSP.AsInteger := SQLPesquisa.FieldByName('TRANICOD').AsInteger;
              SQLCod_part.Post;
              Achou := 'S';
            End;

          if ( SQLPesquisa.FieldByName('TRANA60RAZAOSOC').AsString = 'O EMITENTE' ) or ( SQLPesquisa.FieldByName('TRANA60RAZAOSOC').AsString = 'O DESTINATARIO' ) then
              Achou := 'S';

          If Achou = 'N' then
          Begin
            SQLCod_Part.Append;
            SQLCod_PartCOD_PART.AsString      := 'T' + SQLPesquisa.FieldByName('TRANICOD').AsString;
            SQLCod_PartNOME.AsString          := SQLPesquisa.FieldByName('TRANA60RAZAOSOC').AsString ;
            SQLCod_PartCOD_PAIS.AsString      := '1058';
            SQLCod_PartCNPJ.AsString          := SQLPesquisa.FieldByName('TRANA14CGC').AsString;
            SQLCod_PartCPF.AsString           := SQLPesquisa.FieldByName('TRANA11CPF').AsString;
            SQLCod_PartIE.AsString            := COPY(SQLPesquisa.FieldByName('TRANA15IE').AsString,0,14);
            SQLCod_PartCOD_TRANSP.AsString    := SQLPesquisa.Fieldbyname('TRANICOD').AsString;

            IE := SQLCod_PartIE.AsString;
            while pos('/',IE) > 0 do
              delete(IE,pos('/',IE),1);
            while pos('.',IE) > 0 do
              delete(IE,pos('.',IE),1);
            SQLCod_PartIE.AsString  := IE;

            SQLCod_PartCOD_MUN.AsString       := SQLPesquisa.FieldByName('TRANICODMUNICIPIO').AsString;
            SQLCod_PartENDERECO.AsString      := SQLPesquisa.FieldByName('TRANA60END').AsString;
            SQLCod_PartEND_NUM.AsString       := SQLPesquisa.FieldByName('TRANA5NROEND').AsString;
            SQLCod_PartBAIRRO.AsString        := SQLPesquisa.FieldByName('TRANA60BAI').AsString;
            SQLCod_PartCOD_SUFRAMA.AsString   := '';
            SQLCod_PartCOMPLEMENTO.AsString   := '';
            SQLCod_Part.Post;
          End
        Except on E:Exception do
        begin
          Showmessage('Falha ao Criar Tabela de Participantes (Fornecedores Nota Compra):'+#13+#10+
          E.Message+#13+#10+'Fornecedor: '+SQLPesquisa.FieldByName('FORNICOD').AsString);
          Result := False;
          Exit;
        end; end;
        SQLPesquisa.Next;
        Progress.Position := Progress.Position + 1;
        Progress.Update;
      end;
    ProgressGeral.Position := 30;  }

{
    // Informa Transportadoras envolvidas nas operações de COMPRA via tabela NOTAFISCALCOMPRA
    SQLCod_Part.Close;
    SQLPesquisa.Close;
    SQLCod_Part.Close;
    SQLPesquisa.SQL.Text := 'SELECT DISTINCT T.* FROM NOTACOMPRA N '+
    'LEFT join TRANSPORTADORA T ON N.TRANICOD = T.TRANICOD '+
    'WHERE (N.NOCPDRECEBIMENTO >= :DataInicial) AND '+
    '(N.NOCPDRECEBIMENTO <= :DataFinal) AND (N.TRANICOD IS NOT NULL) AND (N.EMPRICOD = :Empresa)';
    SQLPesquisa.ParamByName('DataInicial').AsDate   := De.Date;
    SQLPesquisa.ParamByName('DataFinal').AsDate     := Ate.Date;
    SQLPesquisa.ParamByName('Empresa').AsString     := SQLEmpresaEMPRICOD.AsString;
    SQLPesquisa.Open;
    SQLPesquisa.Last;
    Progress.Max := SQLPesquisa.RecordCount;
    SQLPesquisa.First;
    EditTabela.Text := 'Criando - BLOCO 0150 - TRANSP. NOTA COMPRA'; EditTabela.Update;
    SQLCod_Part.Open;
    While not SQLPesquisa.EOF do
      begin
        Try
          //Registro 0150 - ABERTURA DO REGISTRO 0150 - DADOS DOS PARTICIPANTES (CLIENTES E FORNECEDORES)
          Achou:= 'N';
          If SQLPesquisa.FieldByName('TRANA14CGC').AsString <> '' then
            if SQLCod_Part.Locate('CNPJ',SQLPesquisa.FieldByName('TRANA14CGC').AsString,[]) then
              Achou := 'S';
          If SQLPesquisa.FieldByName('TRANA11CPF').AsString <> '' then
            if SQLCod_Part.Locate('CPF',SQLPesquisa.FieldByName('TRANA11CPF').AsString,[]) then
              Achou := 'S';
          If SQLCod_Part.Locate('COD_PART',SQLPesquisa.FieldByName('TRANICOD').AsString,[]) then
              Achou := 'S';

           // Se a Transp. for O EMITENTE ou O DESTINATARIO pega os dados depois na hora de referenciar a nota.
          if ( SQLPesquisa.FieldByName('TRANA60RAZAOSOC').AsString = 'O EMITENTE' ) or ( SQLPesquisa.FieldByName('TRANA60RAZAOSOC').AsString = 'O DESTINATARIO' ) then
              Achou := 'S';

          If Achou = 'N' then
          Begin
            SQLCod_Part.Append;
            SQLCod_PartCOD_PART.AsString      := '99999' + SQLPesquisa.FieldByName('TRANICOD').AsString;
            SQLCod_PartNOME.AsString          := SQLPesquisa.FieldByName('TRANA60RAZAOSOC').AsString ;
            SQLCod_PartCOD_PAIS.AsString      := '1058';
            SQLCod_PartCNPJ.AsString          := SQLPesquisa.FieldByName('TRANA14CGC').AsString;
            SQLCod_PartCPF.AsString           := SQLPesquisa.FieldByName('TRANA11CPF').AsString;
            SQLCod_PartIE.AsString            := COPY(SQLPesquisa.FieldByName('TRANA15IE').AsString,0,14);

            IE := SQLCod_PartIE.AsString;
            while pos('/',IE) > 0 do
              delete(IE,pos('/',IE),1);
            while pos('.',IE) > 0 do
              delete(IE,pos('.',IE),1);
            SQLCod_PartIE.AsString  := IE;

            SQLCod_PartCOD_MUN.AsString       := SQLPesquisa.FieldByName('TRANICODMUNICIPIO').AsString;
            SQLCod_PartENDERECO.AsString      := SQLPesquisa.FieldByName('TRANA60END').AsString;
            SQLCod_PartEND_NUM.AsString       := SQLPesquisa.FieldByName('TRANA5NROEND').AsString;
            SQLCod_PartBAIRRO.AsString        := SQLPesquisa.FieldByName('TRANA60BAI').AsString;
            SQLCod_PartCOD_SUFRAMA.AsString   := '';
            SQLCod_PartCOMPLEMENTO.AsString   := '';
            SQLCod_Part.Post;
          End;
        Except on E:Exception do
        begin
          Showmessage('Falha ao Criar Tabela de Participantes (Fornecedores Nota Compra):'+#13+#10+
          E.Message+#13+#10+'Transportadora: '+SQLPesquisa.FieldByName('TRANICOD').AsString);
          Result := False;
          Exit;
        end; end;

        SQLPesquisa.Next;
        Progress.Position := Progress.Position + 1;
        Progress.Update;
      end; }

    // Informa Transportadoras envolvidas nas operações de conhecimentos de frete
    SQLCod_Part.Close;
    SQLPesquisa.Close;
    SQLCod_Part.Close;
    SQLPesquisa.SQL.Text := 'SELECT DISTINCT T.* FROM CONHECIMENTOS C '+
    'LEFT join TRANSPORTADORA T ON T.TRANICOD = C.COD_PART '+
    'WHERE (C.DT_AQUIS >= :xDataInicial) AND '+
    '(C.DT_AQUIS <= :xDataFinal)';
    SQLPesquisa.ParamByName('xDataInicial').AsDate   := De.Date;
    SQLPesquisa.ParamByName('xDataFinal').AsDate     := Ate.Date;
    SQLPesquisa.Open;
    SQLPesquisa.Last;
    Progress.Max := SQLPesquisa.RecordCount;
    SQLPesquisa.First;
    EditTabela.Text := 'Criando - BLOCO 0150 - Transp. CONHECIMENTOS'; EditTabela.Update;
    SQLCod_Part.Open;
    While not SQLPesquisa.EOF do
      begin
        Try
          //Registro 0150 - ABERTURA DO REGISTRO 0150 - DADOS DOS PARTICIPANTES (CLIENTES E FORNECEDORES)
          Achou:= 'N';
          If SQLPesquisa.FieldByName('TRANA14CGC').AsString <> '' then
            if SQLCod_Part.Locate('CNPJ',SQLPesquisa.FieldByName('TRANA14CGC').AsString,[]) then
            Begin
              SQLCod_Part.Edit;
              SQLCod_PartCOD_TRANSP.AsInteger := SQLPesquisa.FieldByName('TRANICOD').AsInteger;
              SQLCod_part.Post;
              Achou := 'S';
            End;

          If SQLPesquisa.FieldByName('TRANA11CPF').AsString <> '' then
            if SQLCod_Part.Locate('CPF',SQLPesquisa.FieldByName('TRANA11CPF').AsString,[]) then
            Begin
              SQLCod_Part.Edit;
              SQLCod_PartCOD_TRANSP.AsInteger := SQLPesquisa.FieldByName('TRANICOD').AsInteger;
              SQLCod_part.Post;
              Achou := 'S';
            End;

          If SQLCod_Part.Locate('COD_PART',SQLPesquisa.FieldByName('TRANICOD').AsString,[]) then
              Achou := 'S';

          // Se a Transp. for O EMITENTE ou O DESTINATARIO pega os dados depois na hora de referenciar a nota.
          if ( SQLPesquisa.FieldByName('TRANA60RAZAOSOC').AsString = 'O EMITENTE' ) or ( SQLPesquisa.FieldByName('TRANA60RAZAOSOC').AsString = 'O DESTINATARIO' ) then
              Achou := 'S';

          If Achou = 'N' then
          Begin
            If not SQLPesquisa.FieldByName('TRANICOD').IsNull then
            begin
              SQLCod_Part.Append;
              SQLCod_PartCOD_PART.AsString      := 'T' + SQLPesquisa.FieldByName('TRANICOD').AsString;
              SQLCod_PartCOD_TRANSP.AsString    := SQLPesquisa.Fieldbyname('TRANICOD').AsString;
              SQLCod_PartNOME.AsString          := SQLPesquisa.FieldByName('TRANA60RAZAOSOC').AsString ;
              SQLCod_PartCOD_PAIS.AsString      := '1058';
              SQLCod_PartCNPJ.AsString          := SQLPesquisa.FieldByName('TRANA14CGC').AsString;
              SQLCod_PartCPF.AsString           := SQLPesquisa.FieldByName('TRANA11CPF').AsString;
              SQLCod_PartIE.AsString            := COPY(SQLPesquisa.FieldByName('TRANA15IE').AsString,0,14);

              IE := SQLCod_PartIE.AsString;
              while pos('/',IE) > 0 do
                delete(IE,pos('/',IE),1);
              while pos('.',IE) > 0 do
                delete(IE,pos('.',IE),1);
              SQLCod_PartIE.AsString  := IE;

              SQLCod_PartCOD_MUN.AsString       := SQLPesquisa.FieldByName('TRANICODMUNICIPIO').AsString;
              SQLCod_PartENDERECO.AsString      := SQLPesquisa.FieldByName('TRANA60END').AsString;
              SQLCod_PartEND_NUM.AsString       := SQLPesquisa.FieldByName('TRANA5NROEND').AsString;
              SQLCod_PartBAIRRO.AsString        := SQLPesquisa.FieldByName('TRANA60BAI').AsString;
              SQLCod_PartCOD_SUFRAMA.AsString   := '';
              SQLCod_PartCOMPLEMENTO.AsString   := '';
              SQLCod_Part.Post;
            End;
          End;
        Except on E:Exception do
        begin
          Showmessage('Falha ao Criar Tabela de Participantes (Fornecedores Nota Compra):'+#13+#10+
          E.Message+#13+#10+'Transportador CONHECIMENTOS: '+SQLPesquisa.FieldByName('TRANICOD').AsString);
          Result := False;
          Exit;
        end; end;

        SQLPesquisa.Next;
        Progress.Position := Progress.Position + 1;
        Progress.Update;
      end;
    ProgressGeral.Position := 35;

{   Não é necessario informar o participante do cupom fiscal

    // Informa Clientes envolvidos nas operações de entrada e saida via tabela CUPOM
    SQLPesquisa.Close;
    SQLPesquisa.SQL.Text := 'SELECT DISTINCT C.* FROM CUPOM N LEFT join CLIENTE C ON N.CLIEA13ID = C.CLIEA13ID WHERE (N.CUPODEMIS >= :DataInicial) AND (N.CUPODEMIS <= :DataFinal) and (N.CUPOCSTATUS = :Status)';
    SQLPesquisa.ParamByName('DataInicial').AsDate   := De.Date;
    SQLPesquisa.ParamByName('DataFinal').AsDate     := Ate.Date;
    SQLPesquisa.ParamByName('Status').AsString      := 'A';
    SQLPesquisa.Open;
    SQLPesquisa.Last;
    Progress.Max := SQLPesquisa.RecordCount;
    SQLPesquisa.First;
    EditTabela.Text := 'Criando - BLOCO 0150 - Clientes CUPOM FISCAL'; EditTabela.Update;
    While not SQLPesquisa.EOF do
      begin
        Try
          SQLCod_Part.Append;
          SQLCod_PartCOD_PART.AsString      := SQLPesquisa.FieldByName('CLIEA13ID').AsString;
          SQLCod_PartNOME.AsString          := SQLPesquisa.FieldByName('CLIEA60RAZAOSOC').AsString;
          SQLCod_PartCOD_PAIS.AsString      := SQLPesquisa.FieldByName('CLIEICODPAIS').AsString;
          SQLCod_PartCNPJ.AsString          := SQLPesquisa.FieldByName('CLIEA14CGC').AsString;
          SQLCod_PartCPF.AsString           := SQLPesquisa.FieldByName('CLIEA11CPF').AsString;
          // verifica se o cliente tem inscriçao de produtor
          If ((SQLPesquisa.FieldByName('CLIEA20IE').isnull) or (SQLPesquisa.FieldByName('CLIEA20IE').AsString = '')) and (SQLPesquisa.FieldByName('CLIEA30OUTROSDOC').AsString <> '') then
            SQLCod_PartIE.AsString  := COPY(SQLPesquisa.FieldByName('CLIEA30OUTROSDOC').AsString,0,14)
          else
            SQLCod_PartIE.AsString  :=  COPY(SQLPesquisa.FieldByName('CLIEA20IE').AsString,0,14) ;
          SQLCod_PartCOD_MUN.AsString       := SQLPesquisa.FieldByName('CLIEIMUNICODFED').AsString;
          SQLCod_PartENDERECO.AsString      := SQLPesquisa.FieldByName('CLIEA60ENDRES').AsString;
          SQLCod_PartEND_NUM.AsString       := SQLPesquisa.FieldByName('CLIEA5NROENDRES').AsString;
          SQLCod_PartBAIRRO.AsString        := SQLPesquisa.FieldByName('CLIEA60BAIRES').AsString;
          SQLCod_PartCOD_SUFRAMA.AsString   := '';
          SQLCod_PartCOMPLEMENTO.AsString   := '';
          SQLCod_Part.Post;
        Except on E:Exception do
        begin
          Showmessage('Falha ao Criar Tabela de Participantes (Clientes Nota Fiscal):'+#13+#10+E.Message+#13+#10+'Cliente: '+SQLPesquisa.FieldByName('CLIEA13ID').AsString);
          Result := False;
          Exit;
        end; end;
        SQLPesquisa.Next;
        Progress.Position := Progress.Position + 1;
        Progress.Update;
      end;
    }


    Progress.Position := 0;
    Progress.Max      := SQLCod_Part.RecordCount;
    SQLCod_Part.Close;
    SQLCod_Part.Open;
    SQLCod_Part.First;
    EditTabela.Text := 'Criando - BLOCO 0150 - Gravando COD_PART'; EditTabela.Update;
    While not SQLCod_Part.EOF do
      begin
        Try
          Linha :=   '|0150|'                                                 +      // 01-Registro 0150
          SQLCod_Part.FieldByName('COD_PART').AsString                        + '|'+ // 02 COD_PART Código de identificação do participante no arquivo. C 060 - S
          SQLCod_Part.FieldByName('NOME').AsString                            + '|'+ // 03 NOME Nome pessoal ou empresarial do participante. C 100 - S
          SQLCod_Part.FieldByName('COD_PAIS').AsString                        + '|'+ // 04 COD_PAIS Código do país do participante, conforme a tabela indicada no item 3.2.1.  N  005  - S
          SQLCod_Part.FieldByName('CNPJ').AsString                            + '|'+ // 05 CNPJ CNPJ do participante. N 014* - N
          SQLCod_Part.FieldByName('CPF').AsString                             + '|'+ // 06 CPF CPF do participante. N 011* - N
          COPY(SQLCod_Part.FieldByName('IE').AsString,0,14)                   + '|'+ // 07 IE Inscrição Estadual do participante. C 014 - N
          SQLCod_Part.FieldByName('COD_MUN').AsString                         + '|'+ // 08 COD_MUN Código do município, conforme a tabela IBGE N 007* - N
          SQLCod_Part.FieldByName('COD_SUFRAMA').AsString                     + '|'+ // 09 SUFRAMA Número de inscrição do participante na Suframa C 009* - N
          SQLCod_Part.FieldByName('ENDERECO').AsString                        + '|'+ // 10 END Logradouro e endereço do imóvel C 060 - N
          SQLCod_Part.FieldByName('END_NUM').AsString                         + '|'+ // 11 NUM Número do imóvel C - - N
          SQLCod_Part.FieldByName('COMPLEMENTO').AsString                     + '|'+ // 12 COMPL Dados complementares do endereço C 060 - N
          SQLCod_Part.FieldByName('BAIRRO').AsString                          + '|'; // 13 BAIRRO Bairro em que o imóvel está situado C 060 - N

          if Not GravaRegistros('0150') Then Begin Result := False; Exit; End;
          Inc(n0150);
          TotalBlocoZero := TotalBlocoZero + 1;

        Except on E:Exception do
        begin
          Showmessage('Falha ao Criar Linha |0150| :'+#13+#10+E.Message+#13+#10+'Participante Cod.: '+SQLCod_Part.FieldByName('COD_PART').AsString);
          Result := False;
          Exit;
        end; end;
        SQLCod_Part.Next;
        Progress.Position := Progress.Position + 1;
        Progress.Update;
     end;
  ProgressGeral.Position := 40;

  Except on E:Exception do
  begin
    ShowMessage('Falha ao Gerar Registro 0150 - '+e.Message);
    Result := False;
  end;end;
  Result := True;
end;

Function TFormTelaExportacaoSped.RegistroC100: boolean;
Var ForPag, StatusNF, Chave: String;
Begin
  {Este registro deve ser gerado para cada documento fiscal código 01, 1B, 04 e 55, registrando a entrada ou saída de
  produtos ou outras situações que envolvam a emissão dos documentos fiscais mencionados, representativos de receitas
  auferidas, tributadas ou não pelo PIS/Pasep ou pela Cofins, bem como de operações de aquisições e/ou devoluções com
  direito a crédito da não cumulatividade.}
  {Para Notas Canceladas, Denegadas ou Inutilizada, devo preencher apenas REG, IND_OPER, IND_EMIT, COD_MOD, COD_SIT, SER e NUM_DOC, os
   demais campos devem ser VAZIO “||”}

  // Cria Bloco C100 com dados da Tabela NOTAFISCAL
  SQLPesquisa.Close;
  SQLSubPesquisa.Close;
  SQLPesquisa.SQL.Text := 'Select N.*, S.*, C.CLIEA60CIDRES, F.FORNA60CID, E.EMPRA60CID from NOTAFISCAL N ' +
                          'Left Join SERIE S on S.SERIA5COD = N.SERIA5COD AND S.EMPRICOD = N.EMPRICOD ' +
                          'lEFT JOIN CLIENTE C ON C.CLIEA13ID = N.CLIEA13ID  ' +
                          'LEFT JOIN FORNECEDOR F ON F.FORNICOD = N.FORNICOD ' +
                          'LEFT JOIN EMPRESA E ON E.EMPRICOD = N.EMPRICOD '+
                          'Where N.NOFIDEMIS >= :xDataInicial and N.NOFIDEMIS <= :xDataFinal AND '+
                          'N.EMPRICOD = :xEmpresa AND ' +
                          '(N.NOFICSTATUS = "E" OR N.NOFICSTATUS = "C") '+
                          'AND (S.SERIA2TIPONOTA = "01" OR S.SERIA2TIPONOTA = "1B" OR S.SERIA2TIPONOTA = "04" OR S.SERIA2TIPONOTA = "55")';
  SQLPesquisa.Prepare;
  SQLPesquisa.ParamByName('xDataInicial').AsDateTime := De.Date;
  SQLPesquisa.ParamByName('xDataFinal').AsDateTime   := Ate.Date;
  SQLPesquisa.ParamByName('xEmpresa').AsInteger      := ComboEmpresa.KeyValue;
  SQLPesquisa.Open;

  SQLPesquisa.Last;
  Progress.Max := SQLPesquisa.RecordCount;
  Progress.Position := 1;
  SQLPesquisa.First;

  nC100 := 0;
  nC140 := 0;
  EditTabela.Text := 'Criando - BLOCO C100 - NOTAS FISCAIS EMITIDAS'; EditTabela.Update;
  While not SQLPesquisa.EOF do
  begin
    if  (SQLPesquisa.FieldByName('SERIA2TIPONOTA').AsString = '01') or // Nota fiscal Normal
        (SQLPesquisa.FieldByName('SERIA2TIPONOTA').AsString = '1B') or // Nota Fiscal Avulsa
        (SQLPesquisa.FieldByName('SERIA2TIPONOTA').AsString = '04') or // Nota Fiscal de Produtor
        (SQLPesquisa.FieldByName('SERIA2TIPONOTA').AsString = '55') Then // Nota fiscal Eletronica
    begin
      StatusNF := SQLPesquisa.FieldByName('NOFICSTATUS').AsString;
      // para verificar a forma de pagamento a vista ou a prazo
      SQLSubPesquisa.Close;
      SQLSubPesquisa.SQL.Text := 'Select * From CONTASRECEBER Where NOFIA13ID = :xNOFIA13ID order by CTRCICOD';

      EditTabela.Text := 'Criando - BLOCO C100 - NOTAS FISCAIS EMITIDAS'+ SQLPesquisa.FieldByName('NOFIINUMERO').AsString; EditTabela.Update;

      NroDocumento   := SQLPesquisa.FieldByName('NOFIINUMERO').AsString;

      vDataDocumento := FormatDateTime('ddmmyyyy',SQLPesquisa.FieldByName('NOFIDEMIS').AsDateTime);

      // Verifica o Indicador de Operacao = 0- Entrada;  1- Saída
      If SQLPesquisa.FieldByName('NOFA1ENTRADASAIDA').AsString = '' then  // // 02 IND_OPER Indicador do tipo de operação: C 001* - S - 0- Entrada;  1- Saída
      begin
        If DM.SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCENTRADASAIDA',SQLPesquisa.FieldByName('OPESICOD').AsString) = 'E' Then
        Begin
          vEntradaSaida := '0';
        End Else
        Begin
          vEntradaSaida := '1';
        End;
      End Else
        if SQLPesquisa.FieldByName('NOFA1ENTRADASAIDA').AsString = 'E' then
        begin
          vEntradaSaida := '0';
        end Else
        begin
          vEntradaSaida := '1';
        End;

      if (SQLPesquisa.FieldByName('SERIA2TIPONOTA').AsString = '55') or (SQLPesquisa.FieldByName('SERIA2TIPONOTA').AsString = '57') then
        Chave := SQLPesquisa.FieldByName('NOFIA44CHAVEACESSO').AsString
      else
        Chave := '';

      { Para documentos fiscais cancelados (codigo 02 ou 03) Denegado (04), inutilizado (05) informar somente
        os campos Código da Situação, Indicador de Operacao, Codigo do Modelo e Chave do Documento para os que possuem.}
      if SQLPesquisa.FieldByName('NOFICSTATUS').AsString = 'C' Then
      begin
        Linha :=  '|C100|'                                      +      // 01 REG C100
          vEntradaSaida                                         + '|'+ // 02 IND_OPER Indicador do tipo de operação: C 001* - S - 0- Entrada;  1- Saída
          '0'                                                   + '|'+ // 03 IND_EMIT Indicador do emitente do documento fiscal:   C 001* - S -  0- Emissão própria; 1- Terceiros
                                                                  '|'+ // 04 COD_PART Código do participante (campo 02 do Registro
          SQLPesquisa.FieldByName('SERIA2TIPONOTA').AsString    + '|'; // 05 COD_MOD Código do modelo do documento fiscal, conforme a Tabela  4.1.1   C 002* - S
        if StatusNF = 'C' Then                                         // 06 COD_SIT Código da situação do documento fiscal, conforme a Tabela 4.1.2  N 002* - S
          Linha := Linha + '02|'  // Documento Cancelado
        Else
          Linha := Linha + '00|'; // Documento Regular

        Linha := Linha +                                          '|'+ // 07 SER Série do documento fiscal C 003 - OC OC
        SQLPesquisa.FieldByName('NOFIINUMERO').AsString         + '|'+ // 08 NUM_DOC Número do documento fiscal N 009 - O O
        Chave                                                   + '|'+ // 09 CHV_NFE Chave da Nota Fiscal Eletrônica N 044* - O O
                                                                  '|'+ // 10 DT_DOC Data da emissão do documento fiscal N 008* - O O
                                                                  '|'+ // 11 DT_E_S Data da entrada ou da saída N 008* - O OC
                                                                  '|'+ // 12 VL_DOC Valor total do documento fiscal N - 02 O O
                                                                  '|'+ // 13 IND_PGTO Indicador do tipo de pagamento:
                                                                  '|'+ // 14 VL_DESC Valor total do desconto N - 02 OC OC
                                                                  '|'+ // 15 VL_ABAT_NT Abatimento não tributado e não comercial Ex.
                                                                  '|'+ // 16 VL_MERC Valor total das mercadorias e serviços N - 02 O OC
                                                                  '|'+ // 17 IND_FRT Indicador do tipo do frete:
                                                                  '|'+ // 18 VL_FRT Valor do frete indicado no documento fiscal N - 02 OC OC
                                                                  '|'+ // 19 VL_SEG Valor do seguro indicado no documento fiscal N - 02 OC OC
                                                                  '|'+ // 20 VL_OUT_DA Valor de outras despesas acessórias N - 02 OC OC
                                                                  '|'+ // 21 VL_BC_ICMS Valor da base de cálculo do ICMS N - 02 OC OC
                                                                  '|'+ // 22 VL_ICMS Valor do ICMS N - 02 OC OC
                                                                  '|'+ // 23 VL_BC_ICMS_ST Valor da base de cálculo do ICMS substituição
                                                                  '|'+ // 24 VL_ICMS_ST Valor do ICMS retido por substituição tributária N - 02 OC OC
                                                                  '|'+ // 25 VL_IPI Valor total do IPI N - 02 OC OC
                                                                  '|'+ // 26 VL_PIS Valor total do PIS N - 02 OC OC
                                                                  '|'+ // 27 VL_COFINS Valor total da COFINS N - 02 OC OC
                                                                  '|'+ // 28 VL_PIS_ST Valor total do PIS retido por substituição
                                                                  '|'; // 29 VL_COFINS_ST Valor total da COFINS retido por substituição
        if Not GravaRegistros('C100') Then Begin Result := False; Exit; End;
        Inc(nC100);
        Total_Bloco_C := Total_Bloco_C + 1;
      end Else
      Begin

        Linha :=  '|C100|'                                                                           +
          vEntradaSaida                                                                        + '|'+
          '0'                                                                                  + '|'; // 03 IND_EMIT Indicador do emitente do documento fiscal:   C 001* - S -  0- Emissão própria; 1- Terceiros
          vCodParticipante := '';
          // se o cliea13id e empricoddest são nulo busca o participante da tabela Fornecedores
          if (SQLPesquisa.FieldByName('CLIEA13ID').IsNull) and (SQLPesquisa.FieldByName('EMPRICODDEST').IsNull) then  // 04 COD_PART Código do participante (campo 02 do Registro 0150):  do emitente do documento ou do remetente das mercadorias, no caso de entradas; - do adquirente, no caso de saídas  C 060 - S
          Begin
            // Pesquisa na tabela fornecedor o cnpj do participante
            vCodParticipante := DM.SQLLocate('SPED_PART','COD_FORN','COD_PART', SQLPesquisa.FieldByName('FORNICOD').AsString);
          End Else If (not (SQLPesquisa.FieldByName('CLIEA13ID').IsNull)) and (SQLPesquisa.FieldByName('EMPRICODDEST').IsNull)  then
          begin
            vCodParticipante := SQLPesquisa.FieldByName('CLIEA13ID').AsString ;
          End else
          Begin
            vCodParticipante := 'E'+SQLPesquisa.FieldByName('EMPRICODDEST').AsString ;
          End;

          if vCodParticipante = '' then
          Begin
            Showmessage('Não Foi Localizado Codigo do Participante para a NF '+SQLPesquisa.FieldByName('NOFIINUMERO').AsString );
            Result := False;
            Abort;
          End;

          Linha := Linha + vCodParticipante + '|';

          Linha := Linha + SQLPesquisa.FieldByName('SERIA2TIPONOTA').AsString                   + '|'; // 05 COD_MOD Código do modelo do documento fiscal, conforme a Tabela  4.1.1   C 002* - S
          if StatusNF = 'C' Then                                                                       // 06 COD_SIT Código da situação do documento fiscal, conforme a Tabela 4.1.2  N 002* - S
            Linha := Linha + '02|'  // Documento Cancelado
          Else
            Linha := Linha + '00|'; // Documento Regular

          Linha := Linha +
          Copy(SQLPesquisa.FieldByName('SERIA5COD').AsString,0,3)                               + '|'+ // 07 SER Série do documento fiscal C 003 - N
          SQLPesquisa.FieldByName('NOFIINUMERO').AsString                                       + '|'; // 08 NUM_DOC Número do documento fiscal N 009 - S
          if StatusNF = 'E' then
            begin
              Linha := Linha + Chave                                                            + '|' ;  // 09 CHV_NFE Chave da Nota Fiscal Eletrônica N 044* - N
              Linha := Linha + FormatDateTime('ddmmyyyy',SQLPesquisa.FieldByName('NOFIDEMIS').AsDateTime)  + '|' ;  // 10 DT_DOC Data da emissão do documento fiscal N 008* - S
              If SQLPesquisa.FieldByName('NOFIDSAIDAENTRADA').IsNull then                                           // 11 DT_E_S Data da entrada ou da saída N 008* - N
                Linha := LInha + FormatDateTime('ddmmyyyy',SQLPesquisa.FieldByName('NOFIDEMIS').AsDateTime)          + '|'
              else
                Linha := LInha + FormatDateTime('ddmmyyyy',SQLPesquisa.FieldByName('NOFIDEMIS').AsDateTime)  + '|'; // NOFIDSAIDAENTRADA , removido Adilson, pq gerava erro na validacao do PVA, quando final do mes.

              Linha := Linha + FormatFloat('0.00', SQLPesquisa.FieldByName('NOFIN2VLRNOTA').Value ) + '|'; // 12 VL_DOC Valor total do documento fiscal N - 02 S

              // verifica a forma de pagamento
              SQLSubPesquisa.Prepare;
              SQLSubPesquisa.ParamByName('xNOFIA13ID').AsString := SQLPesquisa.FieldByName('NOFIA13ID').AsString;
              SQLSubPesquisa.Open;
              SQLSubPesquisa.First;
              if SQLSubPesquisa.FieldByName('CTRCDVENC').isnull then
                ForPag := '0|'
              else
                if  ( SQLSubPesquisa.FieldByName('CTRCDVENC').AsString = SQLPesquisa.FieldByName('NOFIDEMIS').AsString) then
                  ForPag := '0|'
                else
                  ForPag := '1|';
              SQLSubPesquisa.Next;
              if SQLSubPesquisa.RecordCount > 1 then
                ForPag := '1|';
              SQLSubPesquisa.Close;
              Linha := Linha + ForPag  +                                                                   //  13 IND_PGTO Indicador do tipo de pagamento: C 001* - S
              FormatFloat('0.00',SQLPesquisa.FieldByName('NOFIN2VLRDESC').Value)                    + '|'+ // 14 VL_DESC Valor total do desconto N - 02 N
              ''                                                                                    + '|'+ //15 VL_ABAT_NT Abatimento não tributado e não comercial Ex. desconto ICMS nas remessas para ZFM. N - 02 N
              FormatFloat('0.00',SQLPesquisa.FieldByName('NOFIN2VLRPRODUTO').Value)                 + '|'; //16 VL_MERC Valor total das mercadorias e serviços N - 02 N
              If Trim(SQLPesquisa.FieldByName('NOFICFRETEPORCONTA').AsString) = 'C' then                   // 17 IND_FRT Indicador do tipo do frete: C 001* - S
                Linha := Linha + '1|'
              Else
                Linha := Linha + '0|';
              Linha := Linha +
              FormatFloat('0.00',SQLPesquisa.FieldByName('NOFIN2VLRFRETE').Value)                   + '|'+ //18 VL_FRT Valor do frete indicado no documento fiscal N - 02 N
              FormatFloat('0.00',SQLPesquisa.FieldByName('NOFIN2VLRSEGURO').Value)                  + '|'+ //19 VL_SEG Valor do seguro indicado no documento fiscal N - 02 N
              FormatFloat('0.00',SQLPesquisa.FieldByName('NOFIN2VLROUTRASDESP').Value)              + '|'+ //20 VL_OUT_DA Valor de outras despesas acessórias N - 02 N
              FormatFloat('0.00',SQLPesquisa.FieldByName('NOFIN2BASCALCICMS').Value)                + '|'+ //21 VL_BC_ICMS Valor da base de cálculo do ICMS N - 02 N
              FormatFloat('0.00',SQLPesquisa.FieldByName('NOFIN2VLRICMS').Value)                    + '|'+ //22 VL_ICMS Valor do ICMS N - 02 N
              FormatFloat('0.00',SQLPesquisa.FieldByName('NOFIN2BASCALCSUBS').Value)                + '|'+ //23 VL_BC_ICMS_ST Valor da base de cálculo do ICMS substituição tributária N - 02 N
              FormatFloat('0.00',SQLPesquisa.FieldByName('NOFIN2VLRSUBS').Value)                    + '|'+ //24 VL_ICMS_ST Valor do ICMS retido por substituição tributária N - 02 N
              FormatFloat('0.00',SQLPesquisa.FieldByName('NOFIN2VLRIPI').Value)                     + '|'+ //25 VL_IPI Valor total do IPI N - 02 N
              FormatFloat('0.00',SQLPesquisa.FieldByName('NOFIN3VLRPIS').Value)                     + '|'+ //26 VL_PIS Valor total do PIS N - 02 N
              FormatFloat('0.00',SQLPesquisa.FieldByName('NOFIN3VLRCOFINS').Value)                  + '|'+ //27 VL_COFINS Valor total da COFINS N - 02 N
              '|'+ //28 VL_PIS_ST Valor total do PIS retido por substituição tributária N - 02 N
              '|'; //29 VL_COFINS_ST Valor total da COFINS retido por substituição tributária N - 02 N
            end
          else
            Linha:=Linha + '|||||||||||||||||||||';
          if Not GravaRegistros('C100') Then Begin Result := False; Exit; End;
          Inc(nC100);
          Total_Bloco_C := Total_Bloco_C + 1;
      End;

      ProgressGeral.Position := 60;

      //REGISTRO C113: DOCUMENTO FISCAL REFERENCIADO.
        {Este registro tem por objetivo informar, detalhadamente, outros documentos fiscais que tenham sido mencionados
        nas informações complementares do documento que está sendo escriturado no registro C100, exceto cupons fiscais, que
        devem ser informados no registro C114. Exemplos: nota fiscal de remessa de mercadoria originária de venda para entrega
        futura e nota fiscal de devolução de compras}

      // Seleciona documentos referenciados diferente de 5 ( Cupons Fiscais )

    {
      SQLSegundaPesquisa.Close;
      SQLSegundaPesquisa.SQL.Text := 'Select * From NOTAFISCALREFERENCIADA WHERE NOFIA13ID = :xNOFIA13ID and TIPO <> "5"';
      SQLSegundaPesquisa.Prepare;
      SQLSegundaPesquisa.ParamByName('xNOFIA13ID').AsString := SQLPesquisa.fieldByName('NOFIA13ID').asstring;
      SQLSegundaPesquisa.Open ;

      if StatusNF = 'E' then
        begin
          if SQLPesquisa.FieldByName('SERIA2TIPONOTA').AsString <> '55' Then
              if Not RegistroC113 Then Begin Result := False; Exit; End;
        end;

      SQLSegundaPesquisa.Close;

      // Seleciona documentos referenciados iguais de 5 ( Cupons Fiscais)
      SQLSegundaPesquisa.Close;
      SQLSegundaPesquisa.SQL.Text := 'Select * From NOTAFISCALREFERENCIADA WHERE NOFIA13ID = :xNOFIA13ID and TIPO = "5"';
      SQLSegundaPesquisa.Prepare;
      SQLSegundaPesquisa.ParamByName('xNOFIA13ID').AsString := SQLPesquisa.fieldByName('NOFIA13ID').asstring;
      SQLSegundaPesquisa.Open ;

      if StatusNF = 'E' then
        begin
          if Not RegistroC114 Then Begin Result := False; Exit; End;
        end;
     }
      SQLSegundaPesquisa.Close;

      //REGISTRO C120: OPERAÇÕES DE IMPORTAÇÃO (CÓDIGO 01).
        {Este registro tem por objetivo informar detalhes das operações de importação, que estejam sendo documentadas
        pela nota fiscal escriturada no registro C100, quando o campo IND_OPER for igual a “0” (zero), indicando operação de
        entrada.}
      if StatusNF = 'E' then
        begin
          EditTabela.Text := 'Criando - BLOCO C120 - OPERAÇÕES DE IMPORTAÇÃO'; EditTabela.Update;
          if (vEntradaSaida = '0') and ( (SQLPesquisa.FieldByName('CLIEA60CIDRES').AsString = 'EXTERIOR') OR ( SQLPesquisa.FieldByName('FORNA60CID').AsString = 'EXTERIOR' ) ) then // Notas Fiscais de Entrada DE IMPORTACAO
            if Not RegistroC120 Then Begin Result := False; Exit; End;
        end;
      // REGISTRO C130: ISSQN, IRRF E PREVIDÊNCIA SOCIAL.
      if StatusNF = 'E' then
        begin
          EditTabela.Text := 'Criando - BLOCO C130 - ISSQN, IRRF E PREVIDÊNCIA SOCIAL'; EditTabela.Update;
          if (vEntradaSaida = '1') then // Nota fiscal de Saida
            if Not RegistroC130 Then Begin Result := False; Exit; End;
        end;

      // REGISTRO C140: FATURA (CÓDIGO 01)
      if StatusNF = 'E' then
        begin
          if Not RegistroC140 Then Begin Result := False; Exit; End;
        end;
      //REGISTRO C160: VOLUMES TRANSPORTADOS (CÓDIGO 01 E 04) - EXCETO COMBUSTÍVEIS.

      if (StatusNF = 'E') and (vEntradaSaida = '1') and
      ((SQLPesquisa.FieldByName('SERIA2TIPONOTA').AsString = '01') or
       (SQLPesquisa.FieldByName('SERIA2TIPONOTA').AsString = '04'))
      then // Encerada - '1' = Nota Fiscal de Saida
        begin
          EditTabela.Text := 'Criando - BLOCO C160 - VOLUMES TRANSPORTADOS'; EditTabela.Update;
          if Not RegistroC160 Then Begin Result := False; Exit; End;
        end;

      // REGISTRO C170: ITENS DO DOCUMENTO (CÓDIGO 01, 1B, 04 e 55).
      if StatusNF = 'E' then
        begin
          EditTabela.Text := 'Criando - BLOCO C170 - ITENS DO DOCUMENTO'; EditTabela.Update;
          if Not RegistroC170 Then Begin Result := False; Exit; End;
        end;

      // REGISTRO C172: OPERAÇÕES COM ISSQN (CÓDIGO 01)
      // Adilson Verificar com Judi se teremos que lancar as Notas de Servico na Entrada
      {EditTabela.Text := 'Criando - BLOCO C172 - OPERAÇÕES COM ISSQN (CÓDIGO 01)'; EditTabela.Update;
      if Not RegistroC172 Then Begin Result := False; Exit; End;}

      // REGISTRO C190: REGISTRO ANALÍTICO DO DOCUMENTO (CÓDIGO 01, 1B, 04E 55).
      EditTabela.Text := 'Criando - BLOCO C190 - REGISTRO ANALITICO'; EditTabela.Update;
      if Not RegistroC190 Then Begin Result := False; Exit; End;

    End;

    SQLPesquisa.Next;
    Progress.Position := Progress.Position + 1;
  End;

  // Cria Bloco C100 com dados da Tabela NOTACOMPRA
  // Removido Adilson porque os clientes usam a mesma serie para empresas diferentes 'Left Join SERIE S on S.SERIA5COD = N.NOCPA5SERIE AND S.EMPRICOD = N.EMPRICOD '+
  SQLSubPesquisa.Close;
  SQLPesquisa.Close;
  SQLPesquisa.SQL.Text := 'Select '+
                          '(select Sum((I.NOCIN3VLREMBAL * I.NOCIN3QTDEMBAL) * (p.prodn2aliqpis / 100)) from notacompraitem i left join produto p '+
                          'on p.prodicod = i.prodicod where i.nocpa13id = n.nocpa13id) as TOTAL_PIS, '+
                          '(select Sum((I.NOCIN3VLREMBAL * I.NOCIN3QTDEMBAL) * (p.prodn2aliqCofins / 100)) from notacompraitem i left join produto p '+
                          'on p.prodicod = i.prodicod where i.nocpa13id = n.nocpa13id) as TOTAL_COFINS, '+
                          '(Select SUM(I.NOCIN3VLREMBAL*I.NOCIN3QTDEMBAL) from notacompraitem i where i.nocpa13id = n.nocpa13id) AS TOTAL_MERC, '+
                          '(Select SUM(I.NOCIN2VBC) from notacompraitem i where i.nocpa13id = n.nocpa13id) AS VL_BC_ICMS, '+
                          '(Select SUM(I.NOCIN3VLRICMS) from notacompraitem i where i.nocpa13id = n.nocpa13id) AS VL_ICMS, '+
                          '(Select SUM(I.NOCIN2VBCST) from notacompraitem i where i.nocpa13id = n.nocpa13id) AS VL_BC_ICMS_ST, '+
                          '(Select SUM(I.NOCIN3VLRSUBST) from notacompraitem i where i.nocpa13id = n.nocpa13id) AS VL_ICMS_ST, '+
                          '(Select SUM(I.NOCIN3VLRIPI) from notacompraitem i where i.nocpa13id = n.nocpa13id) AS VL_IPI, '+
                          '(Select SUM(I.NOCIN3VLRDESC) from notacompraitem i where i.nocpa13id = n.nocpa13id) AS VL_DESC, '+
                          'N.*, S.*, F.FORNA2UF from NOTACOMPRA N '+
                          'Left Join SERIE S on S.SERIA5COD = N.NOCPA5SERIE '+
                          'Left Join FORNECEDOR F ON F.FORNICOD = N.FORNICOD '+
                          'Where N.NOCPDRECEBIMENTO >= :xDataInicial and N.NOCPDRECEBIMENTO <= :xDataFinal AND N.EMPRICOD = :xEmpresa AND '+
                          '(N.NOCPCSTATUS = "E" OR N.NOCPCSTATUS = "C") '+
                          'AND (S.SERIA2TIPONOTA = "01" OR S.SERIA2TIPONOTA = "1B" '+
                          'OR S.SERIA2TIPONOTA = "04" OR S.SERIA2TIPONOTA = "55")';
  SQLPesquisa.Prepare;
  SQLPesquisa.ParamByName('xDataInicial').AsDateTime := De.Date;
  SQLPesquisa.ParamByName('xDataFinal').AsDateTime   := Ate.Date;
  SQLPesquisa.ParamByName('xEmpresa').AsInteger      := ComboEmpresa.KeyValue;

  SQLPesquisa.Open;

  SQLPesquisa.Last;
  Progress.Max := SQLPesquisa.RecordCount;
  Progress.Position := 1;
  SQLPesquisa.First;

  EditTabela.Text := 'Criando - BLOCO C100 - NOTAS FISCAIS DE COMPRAS'; EditTabela.Update;
  While not SQLPesquisa.EOF do
  begin
     SQLSubPesquisa.Close;
     SQLSubPesquisa.SQL.Text := 'Select * From CONTASPAGAR Where NOCPA13ID = :xNOCPA13ID order by CTPGICOD';

     vEntradaSaida := '0';
     vIndEmitente  := '1';

     EditTabela.Text := 'Criando - BLOCO C100 - NOTAS COMPRA '+ SQLPesquisa.FieldByName('NOCPA30NRO').AsString; EditTabela.Update;

     vCodParticipante := '';
     NroDocumento     := SQLPesquisa.FieldByName('NOCPA30NRO').AsString;

      // Pesquisa na tabela fornecedor o cnpj do participante
      vCodParticipante := DM.SQLLocate('SPED_PART','COD_FORN','COD_PART',SQLPesquisa.FieldByName('FORNICOD').AsString);

      if vCodParticipante = '' then
      begin
        Showmessage('Codigo do Participante Não Encontrado!'+#13+#10+'Nota Compra: '+NroDocumento);
        Result := False;
        Exit;
      end;

      if (SQLPesquisa.FieldByName('SERIA2TIPONOTA').AsString = '55') or (SQLPesquisa.FieldByName('SERIA2TIPONOTA').AsString = '57') then
        Chave := SQLPesquisa.FieldByName('NOFIA44CHAVEACESSO').AsString
      else
        Chave := '';

     Linha :=  '|C100|0|'  + // Incio do registro |C100| e Indicador de Nota de Entrada |0|
            '1'                                                                                  + '|' + // 03 IND_EMIT Indicador do emitente do documento fiscal:   C 001* - S -  0- Emissão própria; 1- Terceiros
            vCodParticipante                                                                     + '|' + // 04 COD_PART Código do participante (campo 02 do Registro 0150):  do emitente do documento ou do remetente das mercadorias, no caso de entradas; - do adquirente, no caso de saídas  C 060 - S
            SQLPesquisa.FieldByName('SERIA2TIPONOTA').AsString                                   + '|' ; // 05 COD_MOD Código do modelo do documento fiscal, conforme a Tabela  4.1.1   C 002* - S
            if SQLPesquisa.FieldByName('NOCPCSTATUS').AsString = 'C' Then                                // 06 COD_SIT Código da situação do documento fiscal, conforme a Tabela 4.1.2  N 002* - S
              Linha := Linha + '02|'  // Documento Cancelado
            Else
              Linha := Linha + '00|'; // Documento Regular
            Linha := Linha +
            Copy(SQLPesquisa.FieldByName('NOCPA5SERIE').AsString,0,3)                             + '|'+ // 07 SER Série do documento fiscal C 003 - N
            SQLPesquisa.FieldByName('NOCPA30NRO').AsString                                        + '|'+ // 08 NUM_DOC Número do documento fiscal N 009 - S
            Chave                                                                                 + '|'+ // 09 CHV_NFE Chave da Nota Fiscal Eletrônica N 044* - N
            FormatDateTime('ddmmyyyy',SQLPesquisa.FieldByName('NOCPDEMISSAO').AsDateTime)         + '|'; // 10 DT_DOC Data da emissão do documento fiscal N 008* - S
            If SQLPesquisa.FieldByName('NOCPDRECEBIMENTO').IsNull then                                   // 11 DT_E_S Data da entrada ou da saída N 008* - N
            Begin
              vDataDocumento := FormatDateTime('ddmmyyyy',SQLPesquisa.FieldByName('NOCPDEMISSAO').AsDateTime);
              Linha := LInha + FormatDateTime('ddmmyyyy',SQLPesquisa.FieldByName('NOCPDEMISSAO').AsDateTime)       + '|'
            End else
            Begin
              vDataDocumento := FormatDateTime('ddmmyyyy',SQLPesquisa.FieldByName('NOCPDRECEBIMENTO').AsDateTime);
              Linha := LInha + FormatDateTime('ddmmyyyy',SQLPesquisa.FieldByName('NOCPDRECEBIMENTO').AsDateTime)   + '|';
            End;
            Linha := Linha +

            FormatFloat('0.00',SQLPesquisa.FieldByName('TOTAL_MERC').Value -
                               SQLPesquisa.FieldByName('VL_DESC').Value +
                               SQLPesquisa.FieldByName('NOCPN3VLRFRETE').Value +
                               SQLPesquisa.FieldByName('VL_ICMS_ST').Value +
                               SQLPesquisa.FieldByName('VL_IPI').Value +
                               SQLPesquisa.FieldByName('NOCPN3VLRSEGURO').Value +
                               SQLPesquisa.FieldByName('NOCPN3VLROUTRADESP').Value) + '|'; // 12 VL_DOC Valor total do documento fiscal N - 02 S

            // verifica a forma de pagamento
            SQLSubPesquisa.Prepare;
            SQLSubPesquisa.ParamByName('xNOCPA13ID').AsString := SQLPesquisa.FieldByName('NOCPA13ID').AsString;
            SQLSubPesquisa.Open;
            SQLSubPesquisa.First;
            if SQLSubPesquisa.FieldByName('CTPGDVENC').isnull then
              ForPag := '0|'
            else
              if  ( SQLSubPesquisa.FieldByName('CTPGDVENC').AsString = SQLPesquisa.FieldByName('NOCPDEMISSAO').AsString) then
                ForPag := '0|'
              else
                ForPag := '1|';
            SQLSubPesquisa.Next;
            if SQLSubPesquisa.RecordCount > 1 then
              ForPag := '1|';
            SQLSubPesquisa.Close;
            Linha := Linha + ForPag  +                                                                   //  13 IND_PGTO Indicador do tipo de pagamento: C 001* - S
            FormatFloat('0.00',SQLPesquisa.FieldByName('VL_DESC').Value)                          + '|'+ // 14 VL_DESC Valor total do desconto N - 02 N
            ''                                                                                    + '|'+ // 15 VL_ABAT_NT Abatimento não tributado e não comercial Ex. desconto ICMS nas remessas para ZFM. N - 02 N
            FormatFloat('0.00',SQLPesquisa.FieldByName('TOTAL_MERC').Value+
                               SQLPesquisa.FieldByName('VL_ICMS_ST').Value)                       + '|'; // 16 VL_MERC Valor total das mercadorias e serviços N - 02 N
            If Trim(SQLPesquisa.FieldByName('NOCPA5TIPOFRETE').AsString) = 'C' then                      // 17 IND_FRT Indicador do tipo do frete: C 001* - S
              Linha := Linha + '1|'
            Else
              Linha := Linha + '0|';
            Linha := Linha +
            FormatFloat('0.00',SQLPesquisa.FieldByName('NOCPN3VLRFRETE').Value)                   + '|'+ // 18 VL_FRT Valor do frete indicado no documento fiscal N - 02 N
            FormatFloat('0.00',SQLPesquisa.FieldByName('NOCPN3VLRSEGURO').Value)                  + '|'+ // 19 VL_SEG Valor do seguro indicado no documento fiscal N - 02 N
            FormatFloat('0.00',SQLPesquisa.FieldByName('NOCPN3VLROUTRADESP').Value)               + '|'+ // 20 VL_OUT_DA Valor de outras despesas acessórias N - 02 N

            // Problema para entrar nos Prog de Contabilidade, se tem cst <> 00 ou 20, NAO PODE GERAR CRED ICMS
            //FormatFloat('0.00',SQLPesquisa.FieldByName('VL_BC_ICMS').Value)                       + '|'+ // 21 VL_BC_ICMS Valor da base de cálculo do ICMS N - 02 N
            //FormatFloat('0.00',SQLPesquisa.FieldByName('VL_ICMS').Value)                          + '|'+ // 22 VL_ICMS Valor do ICMS N - 02 N
            //FormatFloat('0.00',SQLPesquisa.FieldByName('VL_BC_ICMS_ST').Value)                    + '|'+ // 23 VL_BC_ICMS_ST Valor da base de cálculo do ICMS substituição tributária N - 02 N
            //FormatFloat('0.00',SQLPesquisa.FieldByName('VL_ICMS_ST').Value)                       + '|'+ // 24 VL_ICMS_ST Valor do ICMS retido por substituição tributária N - 02 N

            // Teste para ver se tem que mostrar os registros 21 - 24 (Repete o C190 antes de decidir se mostrar os 21-24)
            SQLSegundaPesquisa.SQL.Text := 'Select P.PRODA60DESCR, P.PRODA2CSTIPI, P.PRODA2CSTPIS, P.PRODN2ALIQCOFINS, P.PRODIORIGEM, '+
            'P.PRODISITTRIB, P.PRODN2ALIQPIS, P.PRODN2ALIQCOFINS, P.PRODA2CSTCOFINS, P.PRODA2TIPOITEM , U.UNIDA5DESCR, I.* From NOTACOMPRAITEM I '+
            'LEFT JOIN PRODUTO P ON P.PRODICOD = I.PRODICOD '+
            'Where NOCPA13ID = :xNOFIA13ID';
            SQLSegundaPesquisa.Prepare;
            SQLSegundaPesquisa.ParamByName('xNOFIA13ID').AsString := SQLPesquisa.FieldByName('NOCPA13ID').AsString;
            SQLSegundaPesquisa.Open;


            FormatFloat('0.00',SQLPesquisa.FieldByName('VL_IPI').Value)                           + '|'+ // 25 VL_IPI Valor total do IPI N - 02 N
            FormatFloat('0.00',SQLPesquisa.FieldByName('TOTAL_PIS').Value)                        + '|'+ // 26 VL_PIS Valor total do PIS N - 02 N
            FormatFloat('0.00',SQLPesquisa.FieldByName('TOTAL_COFINS').Value)                     + '|'+ // 27 VL_COFINS Valor total da COFINS N - 02 N
                                                                                                   '0|'+ // 28 VL_PIS_ST Valor total do PIS retido por substituição tributária N - 02 N
                                                                                                   '0|'; // 29 VL_COFINS_ST Valor total da COFINS retido por substituição tributária N - 02 N

        If Not GravaRegistros('C100') Then Begin Result := False; Exit; End;
        Inc(nC100);
        Total_Bloco_C := Total_Bloco_C + 1;

      //REGISTRO C120: OPERAÇÕES DE IMPORTAÇÃO (CÓDIGO 01).
        {Este registro tem por objetivo informar detalhes das operações de importação, que estejam sendo documentadas
        pela nota fiscal escriturada no registro C100, quando o campo IND_OPER for igual a “0” (zero), indicando operação de
        entrada.}
      EditTabela.Text := 'Criando - BLOCO C120 - OPERAÇÕES DE IMPORTAÇÃO '; EditTabela.Update;
      if (vEntradaSaida = '0') and ( (SQLPesquisa.FieldByName('FORNA2UF').AsString = 'EX') ) then // Notas Fiscais de Entrada DE IMPORTACAO
        if Not RegistroC120 Then Begin Result := False; Exit; End;

      // REGISTRO C130: ISSQN, IRRF E PREVIDÊNCIA SOCIAL.
      EditTabela.Text := 'Criando - BLOCO C130 -  ISSQN, IRRF E PREVIDÊNCIA SOCIAL'; EditTabela.Update;
      if (vEntradaSaida = '1') then // Nota fiscal de Saida
        if Not RegistroC130 Then Begin Result := False; Exit; End;

      // REGISTRO C140: FATURA (CÓDIGO 01)
      EditTabela.Text := 'Criando - BLOCO C140 -  FATURA (CÓDIGO 01)'; EditTabela.Update;
      if Not RegistroC140 Then Begin Result := False; Exit; End;

      // REGISTRO C170: ITENS DO DOCUMENTO (CÓDIGO 01, 1B, 04 e 55).
      EditTabela.Text := 'Criando - BLOCO C170 -  ITENS DO DOCUMENTO (CÓDIGO 01, 1B, 04 e 55)'; EditTabela.Update;
      if Not RegistroC170 Then Begin Result := False; Exit; End;

      // REGISTRO C172: OPERAÇÕES COM ISSQN (CÓDIGO 01)
     { na entrada não apresentar
     EditTabela.Text := 'Criando - BLOCO C172 -  OPERAÇÕES COM ISSQN (CÓDIGO 01) NF COMPRA '+ SQLPesquisa.FieldByName('NOCPA30NRO').AsString; EditTabela.Update;
      if Not RegistroC172 Then Begin Result := False; Exit; End;      }

      // REGISTRO C190: REGISTRO ANALÍTICO DO DOCUMENTO (CÓDIGO 01, 1B, 04E 55).
      EditTabela.Text := 'Criando - BLOCO C190 - REGISTRO ANALITICO'; EditTabela.Update;
      if Not RegistroC190 Then Begin Result := False; Exit; End;

    SQLPesquisa.Next;
    Progress.Position := Progress.Position + 1;
  End;

  SQLPesquisa.Close;
  SQLSubPesquisa.Close;

  ProgressGeral.Position := 70;

  Result := True;
End;

Function TFormTelaExportacaoSped.RegistroC113: boolean;
Begin
  While not SQLSegundaPesquisa.Eof do
  begin
    Linha := '|C113|'                                                            + // 01 REG Texto fixo contendo "C113" C 004 - O O
           vEntradaSaida                                                   + '|' + // 02 IND_OPER Indicador do tipo de operação: 0- Entrada/aquisição; 1- Saída/prestação
           vIndEmitente                                                    + '|' + // 03 IND_EMIT Indicador do emitente do título:
           vCodParticipante                                                + '|' ; // 04 COD_PART Código do participante emitente (campo 02 do Registro 0150) do documento referenciado.
           // 05 COD_MOD Código do documento fiscal, conforme a Tabela 4.1.1
           if SQLSegundaPesquisa.FieldByName('TIPO').AsString = '1' then // 1 - Nota Fiscal Eletronica (NF-e)
              Linha := Linha + '55|'
           Else if SQLSegundaPesquisa.FieldByName('TIPO').AsString = '1' then // 2 - Conhecimento de Transporte Eletronico (CT-e)
              Linha := Linha + '57|'
           Else if SQLSegundaPesquisa.FieldByName('TIPO').AsString = '1' then // 3 - Nota Fiscal Modelo 1
              Linha := Linha + '01|'
           Else if SQLSegundaPesquisa.FieldByName('TIPO').AsString = '1' then // 4 - Nota Fiscal de Produtor
              Linha := Linha + '04|'
           Else if SQLSegundaPesquisa.FieldByName('TIPO').AsString = '1' then // 5 - Cupom Fiscal Emitido por ECF
              Linha := Linha + '2D|'
           Else
              Linha := Linha + '|';
           Linha := Linha +
           Copy(SQLSegundaPesquisa.FieldByName('SERIA5COD').AsString,0,3)  + '|' + // 06 SER Série do documento fiscal C 004 - OC OC
           ''                                                              + '|' + // 07 SUB Subsérie do documento fiscal
           SQLSegundaPesquisa.FieldByName('NUMERO').AsString               + '|' + // 08 NUM_DOC Número do documento fiscal N 009 - O O
           FormatDateTime('ddmmyyyy',SQLSegundaPesquisa.FieldByName('DATAEMISSAO').AsDateTime ); //  09 DT_DOC Data da emissão do documento fiscal. N 008* - O O

    If Not GravaRegistros('C113') Then Begin Result := False; Exit; End;
    Inc(nC113);
    Total_Bloco_C := Total_Bloco_C + 1;

    SQLSegundaPesquisa.Next;
  End;

  Result := True;
End;

Function TFormTelaExportacaoSped.RegistroC114: boolean;
Begin
  While not SQLSegundaPesquisa.Eof do
  begin
    Linha := '|C114|'                                                            + // 01 REG Texto fixo contendo "C114"
             '2D|'                                                               + // 02 COD_MOD Código do modelo do documento fiscal, conforme a tabela indicada no item 4.1.1
             SQLSegundaPesquisa.FieldByName('NUMERO_SERIE').AsString       + '|' + // 03 ECF_FAB Número de série de fabricação do ECF
             SQLSegundaPesquisa.FieldByName('NUMERO_ECF').AsString         + '|' + // 04 ECF_CX Número do caixa atribuído ao ECF N 003 - O O
             SQLSegundaPesquisa.FieldByName('NUMERO_COO').AsString         + '|' + // 05 NUM_DOC Número do documento fiscal
             FormatDateTime('ddmmyyyy',SQLSegundaPesquisa.FieldByName('DATAEMISSAO').AsDateTime ) + '|' ; //  06 DT_DOC Data da emissão do documento fiscal N 008* - O O

    If Not GravaRegistros('C114') Then Begin Result := False; Exit; End;
    Inc(nC114);
    Total_Bloco_C := Total_Bloco_C + 1;

    SQLSegundaPesquisa.Next;
  End;

  Result := True;
End;

Function TFormTelaExportacaoSped.RegistroC120: boolean;
var nDI:String;
    nPisI, nCofinsI : Extended;
Begin
  Showmessage ( 'Favor verificar os calculas para PIS e Cofins deste Modulo - Modulo Desatualizado');
  SQLSegundaPesquisa.Close;
  SQLSegundaPesquisa.SQL.Text := 'Select * from notafiscalitem where nofia13id = :xNofia13id order by nfita10diimport';
  SQLSegundaPesquisa.Prepare;
  SQLSegundaPesquisa.ParamByName('xNofia13id').Value := SQLPesquisa.FieldByName('Nofia13id').Value;
  SQLSegundaPesquisa.Open;
  While not SQLSegundaPesquisa.Eof do
  begin
    Linha := '|C120|'                                                            + // 01 REG Texto fixo contendo "C120"
    '0'                                                                    + '|' + // 02 COD_DOC_IMP Documento de importação: 0 – Declaração de Importação; 1 – Declaração Simplificada de Importação.
    SQLSegundaPesquisa.FieldByName('NFITA10DIIMPORT').AsString             + '|' ; // 03 NUM_DOC__IMP  Número do documento de Importação.
    nPisI    := 0;
    nCofinsI := 0;
    nDI := SQLSegundaPesquisa.FieldByName('NFITA10DIIMPORT').AsString;
    While  (SQLSegundaPesquisa.FieldByName('NFITA10DIIMPORT').AsString = nDi) and (not SQLSegundaPesquisa.Eof) do
    begin
      nPisI     := nPisI    + 0;
      nCofinsI  := nCofinsI + 0;
      SQLSegundaPesquisa.Next;
    End;

    Linha := Linha +
    ''                                                                     + '|' + // 04 PIS_IMP Valor pago de PIS na importação N - 02 OC
    ''                                                                     + '|' + // 05 COFINS_IMP Valor pago de COFINS na importação N - 02 OC
    ''                                                                     + '|' ; // 06 NUM_ACDRAW Número do Ato Concessório do regime Drawback

    If Not GravaRegistros('C120') Then Begin Result := False; Exit; End;
    Inc(nC120);
    Total_Bloco_C := Total_Bloco_C + 1;

  End;
  SQLSegundaPesquisa.Close;

  Result := True;
End;

Function TFormTelaExportacaoSped.RegistroC130: boolean;
var nDI:Integer;
    nPisI, nCofinsI : Extended;
Begin
 {REGISTRO C130: ISSQN, IRRF E PREVIDÊNCIA SOCIAL.
  Este registro tem por objetivo informar dados da prestação de serviços sob não-incidência ou não tributados pelo
  ICMS e ainda detalhes sobre a retenção de Imposto de Renda Retido na Fonte (IRRF) e de contribuições previdenciárias.
  Essas três situações possuem características próprias e tratamentos específicos na legislação, não guardando entre elas nenhuma relação.}

  if SQLPesquisa.Fieldbyname('NOFIN2VLRSERVICO').Value > 0 then
    begin
      Linha := '|C130|'                                                            + // 01 REG Texto fixo contendo "C130"
      FormatFloat('0.00',SQLPesquisa.Fieldbyname('NOFIN2VLRSERVICO').Value)  + '|' + // 02 VL_SERV_NT Valor dos serviços sob não-incidência ou nãotributados pelo ICMS
      FormatFloat('0.00',SQLPesquisa.Fieldbyname('NOFIN2VLRSERVICO').Value)  + '|' + // 03 VL_BC_ISSQN Valor da base de cálculo do ISSQN N - 02 O
      FormatFloat('0.00',SQLPesquisa.Fieldbyname('NOFIN2VLRISSQN').Value)    + '|' + // 04 VL_ISSQN Valor do ISSQN N - 02 OC
      ''                                                                     + '|' + // 05 VL_BC_IRRF Valor da base de cálculo do Imposto de Renda Retido na Fonte
      ''                                                                     + '|' + // 06 VL_ IRRF Valor do Imposto de Renda - Retido na Fonte N - 02 OC
      ''                                                                     + '|' + // 07 VL_BC_PREV Valor da base de cálculo de retenção da Previdência Social
      ''                                                                     + '|' ; // 08 VL_ PREV Valor destacado para retenção da Previdência Social

      If Not GravaRegistros('C130') Then Begin Result := False; Exit; End;
      Inc(nC130);
      Total_Bloco_C := Total_Bloco_C + 1;
    end;

  Result := True;
End;

Function TFormTelaExportacaoSped.RegistroC140: boolean;
var nParc : Integer;
    nVLRParc : extended;
    nNumeroDup:String;
Begin
 {REGISTRO C140: FATURA (CÓDIGO 01)
  Este registro tem por objetivo informar dados da fatura comercial, sempre que a aquisição ou venda de
  mercadorias for a prazo, por meio de notas fiscais modelo 1 ou 1A. Devem ser consideradas as informações quando da
  emissão do documento fiscal, incluindo a parcela paga no ato da operação, se for o caso.
  Nos casos onde uma única fatura diz respeito a diversas notas fiscais, para cada nota apresentada no C100, a fatura
  deve aqui ser informada, sempre com o seu valor original, sem nenhum rateio.
  Havendo mais de um tipo de título, informar o campo IND_TIT com o código ‘99’ (Outros). No campo
  DESC_TIT identificar cada um dos títulos, com números e valores. No campo VL_TIT informar o valor total da fatura.}

  if  (SQLPesquisa.FieldByName('SERIA2TIPONOTA').AsString = '01') Then // Nota fiscal Normal
    begin
      SQLSegundaPesquisa.Close;
     // if POS('CONTASRECEBER',UpperCase(SQLPesquisa.SQL.Text)) > 0 Then
      if POS('NOTAFISCAL',UpperCase(SQLPesquisa.SQL.Text)) > 0 Then
        begin
          SQLSegundaPesquisa.SQL.Text := 'Select * From CONTASRECEBER Where NOFIA13ID = :xNOFIA13ID order by CTRCICOD';
          SQLSegundaPesquisa.ParamByName('xNOFIA13ID').AsString := SQLPesquisa.FieldByName('NOFIA13ID').AsString;
          EditTabela.Text := 'Criando C140 FATURA - NF Venda: '+SQLPesquisa.FieldByName('NOFIA13ID').AsString; EditTabela.Update;
        end
      else
        begin
          SQLSegundaPesquisa.SQL.Text := 'Select * From CONTASPAGAR Where  NOCPA13ID = :xNOFIA13ID order by CTPGICOD';
          SQLSegundaPesquisa.ParamByName('xNOFIA13ID').AsString := SQLPesquisa.FieldByName('NOCPA13ID').AsString;
          EditTabela.Text := 'Criando C140 FATURA - NF Compra: '+SQLPesquisa.FieldByName('NOCPA13ID').AsString; EditTabela.Update;
        end;
      SQLSegundaPesquisa.Open;


      nParc     := 0;
      nVLRParc  := 0;
      While Not SQLSegundaPesquisa.Eof do
        begin
          Inc(nParc);
          if POS('NOTAFISCAL',UpperCase(SQLPesquisa.SQL.Text)) > 0 Then
            begin
              nVLRParc  := nVLRParc + SQLSegundaPesquisa.Fieldbyname('CTRCN2VLR').value;
              nNumeroDup:= SQLSegundaPesquisa.FieldbyName('CTRCA30NRODUPLICBANCO').ASSTRING;
            end
          else
            begin
              nVLRParc := nVLRParc + SQLSegundaPesquisa.Fieldbyname('CTPGN3VLR').value;
              nNumeroDup:= SQLSegundaPesquisa.FieldbyName('CTPGA20DOCORIG').ASSTRING;
            end;
          SQLSegundaPesquisa.Next;
        end;
      SQLSegundaPesquisa.First;

      IF not SQLSegundaPesquisa.IsEmpty then
      begin
        Linha := '|C140|'                                                            + // 01 REG Texto fixo contendo "C140" C 004 - O O
                 '0'                                                           + '|' + // 02 IND_EMIT Indicador do emitente do título: 0- Emissão própria; 1- Terceiros
                 '99'                                                          + '|' + // 03 IND_TIT Indicador do tipo de título de crédito: 00- Duplicata; 01- Cheque; 02- Promissória; 03- Recibo; 99- Outros (descrever)
                 'COBRANCA DIRETA OU POR BOLETO BANCARIO'                      + '|' + // 04 DESC_TIT Descrição complementar do título de crédito C - - OC OC
                 nNumeroDup                                                    + '|' + // 05 NUM_TIT Número ou código identificador do título de   crédito
                 IntToStr(nParc)                                               + '|' + // 06 QTD_PARC Quantidade de parcelas a receber/pagar N 002 - O O
                 FormatFloat('0.00', nVLRParc )                                + '|' ; // 07 VL_TIT Valor total dos títulos de créditos N - 02 O O

        If Not GravaRegistros('C140') Then  Begin Result := False;  Exit; End;
        Inc(nC140);
        Total_Bloco_C := Total_Bloco_C + 1;
      End;
      //REGISTRO C141: VENCIMENTO DA FATURA (CÓDIGO 01).
      if Not RegistroC141 Then Begin Result := False; Exit; End;

    end;

  Result := True;
End;

Function TFormTelaExportacaoSped.RegistroC141: boolean;
var xVLRParc : Extended;
    xNumeroDup, xVencto:String;
    xParc : Integer;
Begin
 {REGISTRO C141: VENCIMENTO DA FATURA (CÓDIGO 01).
  Este registro deve ser apresentado, obrigatoriamente, sempre que for informado o registro C140, devendo ser
  discriminados o valor e a data de vencimento de cada uma das parcelas.
  Não podem ser informados dois ou mais registros com o mesmo conteúdo para o campo NUM_PARC.}

  if  (SQLPesquisa.FieldByName('SERIA2TIPONOTA').AsString = '01') Then // Nota fiscal Normal
    begin
      SQLSegundaPesquisa.First;
      xParc := 0;
      xVLRParc := 0;
      While Not SQLSegundaPesquisa.Eof do
        begin
          inc(xParc);
          // identifica se o sql é nas contas a receber ou pagar
          if POS('NOTAFISCAL',UpperCase(SQLPesquisa.SQL.Text)) > 0 Then
            begin
              xVLRParc  := xVLRParc + SQLSegundaPesquisa.Fieldbyname('CTRCN2VLR').value;
              xVencto   := FormatDateTime('ddmmyyyy',SQLSegundaPesquisa.FieldbyName('CTRCDVENC').AsDateTime);
            end
          else
            begin
              xVLRParc := xVLRParc + SQLSegundaPesquisa.Fieldbyname('CTPGN3VLR').value;
              xVencto   := FormatDateTime('ddmmyyyy',SQLSegundaPesquisa.FieldbyName('CTPGDVENC').AsDateTime);
            end;

          Linha := '|C141|'                                                            + // 01 REG Texto fixo contendo "C141" C 004 - O O
                   IntToStr(xParc)                                               + '|' + // 02 NUM_PARC Número da parcela a receber/pagar
                   xVencto                                                       + '|' + // 03 DT_VCTO Data de vencimento da parcela N 008* - O O
                   FormatFloat('0.00', xVLRParc )                                + '|' ; // 04 VL_PARC Valor da parcela a receber/pagar N - 02 O O

          If Not GravaRegistros('C141') Then Begin Result := False; Exit; End;
          Inc(nC141);
          Total_Bloco_C := Total_Bloco_C + 1;
          SQLSegundaPesquisa.Next;
        end;
    end;
  Result := True;
End;

Function TFormTelaExportacaoSped.RegistroC160: boolean;
var vCodTransp : String;
Begin
 {REGISTRO C160: VOLUMES TRANSPORTADOS (CÓDIGO 01 E 04) - EXCETO COMBUSTÍVEIS.
  Este registro tem por objetivo informar detalhes dos volumes, do transportador e do veículo empregado no
  transporte nas operações de saídas.}

  if  (SQLPesquisa.FieldByName('NOFICSTATUS').AsString = 'E')  Then
    begin

    //vCodTransp := DM.SQLLocate('SPED_PART','COD_PART','COD_PART','"'+'99999' + SQLPesquisa.FieldByName('TRANICOD').AsString+'"');
    // Se achou é porque a transportadora foi cadastrada com o proprio codigo

    vCodTransp := DM.SQLLocate('SPED_PART','COD_TRANSP','COD_PART', SQLPesquisa.FieldByName('TRANICOD').AsString);

    If vCodTransp = '' then
    Begin
      vCodTransp := DM.SQLLocate('TRANSPORTADORA','TRANICOD','TRANA14CGC',SQLPesquisa.FieldByName('TRANICOD').AsString);

      If Length(vCodParticipante) > 11 then // é cnpj
        vCodTransp := DM.SQLLocate('SPED_PART','CNPJ','COD_PART','"'+vCodTransp+'"')
      Else
        vCodTransp := DM.SQLLocate('SPED_PART','CPF','COD_PART','"'+vCodTransp+'"');
    End;

      if vCodTransp <> '' then
      begin
        Linha := '|C160|'                                                          + // 01 REG Texto fixo contendo "C160" C 004
        vCodTransp                                                                 + '|' + // 02 COD_PART Código do participante (campo 02 do Registro 0150): - transportador, se houver
        SQLPesquisa.FieldByName('NOFIA8PLACAVEIC').AsString                        + '|' + // 03 VEIC_ID Placa de identificação do veículo automotor C 007 - OC
        FormatFloat('9999999999',Int(SQLPesquisa.FieldByName('NOFIN3QUANT').AsInteger))                            + '|' + // 04 QTD_VOL Quantidade de volumes transportados N - - O
        FormatFloat('0.00',SQLPesquisa.FieldByName('NOFIN3PESBRUT').Value)         + '|' + // 05 PESO_BRT Peso bruto dos volumes transportados (em Kg) N - 02 O
        FormatFloat('0.00',SQLPesquisa.FieldByName('NOFIN3PESLIQ').Value)          + '|' + // 06 PESO_LIQ Peso líquido dos volumes transportados (em Kg) N - 02 O
        ''                                                                         + '|' ; // 07 UF_ID Sigla da UF da placa do veículo C 002 - OC

        If Not GravaRegistros('C160') Then Begin Result := False; Exit; End;
        Inc(nC160);
        Total_Bloco_C := Total_Bloco_C + 1;
      End;
    end;

  Result := True;
End;

Function TFormTelaExportacaoSped.RegistroC170: boolean;
var OpEntraSai, UnidadeSped, CFOP :String;
    Base, Quantidade : Extended;
    nOrdem:Integer;
Begin
   {REGISTRO C170: ITENS DO DOCUMENTO (CÓDIGO 01, 1B, 04 e 55).
   Registro obrigatório para discriminar os itens da nota fiscal (mercadorias e/ou serviços constantes em notas
   conjugadas), inclusive em operações de entrada de mercadorias acompanhadas de Nota Fiscal Eletrônica (NF-e) de emissão
   de terceiros.
   Conforme item 2.4.2.2.1 do Ato COTEPE/ICMS nº 09, de 18 de abril de 2008, o termo "item" é aplicado às
   operações fiscais que envolvam mercadorias, serviços, produtos ou quaisquer outros itens concernentes às transações
   fiscais suportadas pelo documento, como, por exemplo, nota fiscal complementar, nota fiscal de ressarcimento,
   transferências de créditos e outros casos.
   Não podem ser informados para um mesmo documento fiscal dois ou mais registros com o mesmo conteúdo no
   campo NUM_ITEM.
   IMPORTANTE: para documentos de entrada, os campos de valor de imposto/contribuição, base de cálculo e alíquota só
   devem ser informados se o adquirente tiver direito à apropriação do crédito (enfoque do declarante).}

  if Pos('NOTAFISCAL',SQLPesquisa.SQL.Text) > 0 Then // Nota de Venda da Tabela Notafiscal
    begin
      if (SQLPesquisa.FieldByName('SERIA2TIPONOTA').AsString = '55') and (not chkItensNFe.Checked) Then
      begin
        Result := True;
        Exit; // se for nota eletronica propria não precisa referenciar os produtos, a não ser que o Contador solicite
      End;

      EditTabela.Text := 'Criando Registro C170 - Abrindo Tabela NOTAFISCALITEM'; EditTabela.Update;
      SQLSegundaPesquisa.SQL.Text := 'Select P.PRODA60DESCR, P.PRODA2CSTIPI, P.PRODA3CSTIPIENTRADA, P.PRODA2CSTPIS, '+
      'P.PRODA3CSTPISENTRADA, P.PRODA2CSTCOFINS, P.PRODA3CSTCOFINSENTRADA, P.PRODN2ALIQCOFINS, P.PRODN2ALIQPIS, P.PRODN2ALIQCOFINS, P.PRODIORIGEM,  '+
      'U.UNIDA5DESCR, I.* From NotaFiscalItem I '+
      'LEFT JOIN PRODUTO P ON P.PRODICOD = I.PRODICOD '+
      'LEFT JOIN UNIDADE U ON U.UNIDICOD = P.UNIDICOD '+
      'Where NOFIA13ID = :xNOFIA13ID';
      SQLSegundaPesquisa.Prepare;
      SQLSegundaPesquisa.ParamByName('xNOFIA13ID').AsString := SQLPesquisa.FieldByName('NOFIA13ID').AsString;
      SQLSegundaPesquisa.Open;

      EditTabela.Text := 'Criando Registro C170 - Itens da tabela NOTAFISCALITEM'; EditTabela.Update;
      nOrdem := 1;
      While Not SQLSegundaPesquisa.Eof do
        begin
          Try
            Base := SQLSegundaPesquisa.FieldByName('NFITN2VLRUNIT').Value * SQLSegundaPesquisa.FieldByName('NFITN3QUANT').Value;

            Linha := '|C170|'                                                                 + // 01 REG Texto fixo contendo "C170" C 004 - O O
            IntToStr(nOrdem)                                                            + '|' + // NUM_ITEM Número sequencial do item no documento fiscal N 003 - O O
            SQLSegundaPesquisa.FieldByName('PRODICOD').AsString                         + '|' + // 03 COD_ITEM Código do item (campo 02 do Registro 0200) C 060 - O O
            SQLSegundaPesquisa.FieldByName('PRODA60DESCR').AsString                     + '|' + // 04 DESCR_COMPL Descrição complementar do item como adotado no documento fiscal
            FormatFloat('0.00000',SQLSegundaPesquisa.FieldByName('NFITN3QUANT').Value)  + '|' + // 05 QTD Quantidade do item N - 05 O O
            SQLSegundaPesquisa.FieldByName('UNIDA5DESCR').AsString                      + '|' + // 06 UNID Unidade do item (Campo 02 do registro 0190) C 006 - O O
            FormatFloat('0.00', Base)                                                   + '|' + // 07 VL_ITEM Valor total do item (mercadorias ou serviços) N - 02 O O
            FormatFloat('0.00',SQLSegundaPesquisa.FieldByName('NFITN2VLRDESC').Value)   + '|' ; // 08 VL_DESC Valor do desconto comercial N - 02 OC OC
            inc(nOrdem);

            // Verifica se a operacao de estoque é de entrada ou saida
            OpEntraSai := DM.SQLLocate('OPERACAOESTOQUE','OPESICOD','OPERACAO_E_S',SQLPesquisa.FieldByName('OPESICOD').AsString);
            If OpEntraSai = 'N' Then // não movimenta estoque
              Linha := Linha +  '1|'  // 09 IND_MOV Movimentação física do ITEM/PRODUTO: 0. SIM 1. NÃO
            Else  // Saida ou Entrada
              Linha := Linha +  '0|'; // 09 IND_MOV Movimentação física do ITEM/PRODUTO: 0. SIM 1. NÃO

            // 10 CST_ICMS Código da Situação Tributária referente ao ICMS, conforme a Tabela indicada no item 4.3.1
            if length(SQLSegundaPesquisa.FieldByName('NFITICST').Value) < 3 then
              Linha := Linha + SQLSegundaPesquisa.FieldByName('PRODIORIGEM').AsString + FormatFloat('00',SQLSegundaPesquisa.FieldByName('NFITICST').Value) + '|'
            else
              Linha := Linha + FormatFloat('000',SQLSegundaPesquisa.FieldByName('NFITICST').Value) + '|';

            {
            Linha := Linha + FormatFloat('0', SQLSegundaPesquisa.FieldByName('PRODIORIGEM').Value);

            if not SQLSegundaPesquisa.FieldByName('NFITICST').IsNull then
              Linha := Linha +
              FormatFloat('00',SQLSegundaPesquisa.FieldByName('NFITICST').Value)        + '|'  // 10 CST_ICMS Código da Situação Tributária referente ao ICMS, conforme a Tabela indicada no item 4.3.1
            Else
              Linha := Linha +
              FormatFloat('00', StrToInt(DM.SQLLocate('PRODUTO','PRODICOD','PRODISITTRIB', SQLSegundaPesquisa.FieldByName('PRODICOD').AsString)))        + '|' ; // 10 CST_ICMS Código da Situação Tributária referente ao ICMS, conforme a Tabela indicada no item 4.3.1
             }


            if SQLSegundaPesquisa.FieldByName('CFOPA5CODAUX').AsString <> '' Then
              Linha := Linha + SQLSegundaPesquisa.FieldByName('CFOPA5CODAUX').AsString  + '|'  // 11 CFOP Código Fiscal de Operação e Prestação N 004* - O O
            Else
              Linha := Linha + SQLPesquisa.FieldByName('CFOPA5COD').AsString            + '|' ;  // 11 CFOP Código Fiscal de Operação e Prestação N 004* - O O
            Linha := Linha +
            ''                                                                          + '|' ; // 12 COD_NAT Código da natureza da operação (campo 02 do Registro 0400)

            if SQLSegundaPesquisa.FieldByName('NFITICST').AsInteger  in ([30, 40, 41, 50, 60]) then // para origem da mercadoria 0 = nacional = 1 importada e 2 import. adq. mercado interno
            begin
              Linha := Linha +
              '0'   + '|' + // 13 VL_BC_ICMS Valor da base de cálculo do ICMS N - 02 OC OC
              '0'   + '|' + // 14 ALIQ_ICMS Alíquota do ICMS N 006 02 OC OC
              '0'   + '|' ; // 15 VL_ICMS Valor do ICMS creditado/debitado N - 02 OC OC
            end else
            begin
              Linha := Linha +
              FormatFloat('0.00',SQLSegundaPesquisa.FieldByName('NFITN2BASEICMS').Value)  + '|' + // 13 VL_BC_ICMS Valor da base de cálculo do ICMS N - 02 OC OC
              FormatFloat('0.00',SQLSegundaPesquisa.FieldByName('NFITN2PERCICMS').Value)  + '|' + // 14 ALIQ_ICMS Alíquota do ICMS N 006 02 OC OC
              FormatFloat('0.00',SQLSegundaPesquisa.FieldByName('NFITN2VLRICMS').Value)   + '|' ; // 15 VL_ICMS Valor do ICMS creditado/debitado N - 02 OC OC
            End;

            if SQLSegundaPesquisa.FieldByName('NFITICST').AsInteger  in ([10,30,70]) then
            Begin
              Linha := Linha +
              '0'   + '|' + // 16 VL_BC_ICMS_ST Valor da base de cálculo referente à substituição tributária
              '0'   + '|' + // 17 ALIQ_ST Alíquota do ICMS da substituição tributária na unidade da federação de destino
              '0'   + '|' ; // 18 VL_ICMS_ST Valor do ICMS referente à substituição tributária N - 02 OC OC
            End Else Begin
              Linha := Linha +
              FormatFloat('0.00',SQLSegundaPesquisa.FieldByName('NFITN2BASESUBS').Value)  + '|' + // 16 VL_BC_ICMS_ST Valor da base de cálculo referente à substituição tributária
              FormatFloat('0.00',SQLSegundaPesquisa.FieldByName('NFITN2PERCSUBS').Value)  + '|' + // 17 ALIQ_ST Alíquota do ICMS da substituição tributária na unidade da federação de destino
              FormatFloat('0.00',SQLSegundaPesquisa.FieldByName('NFITN2VLRSUBS').Value)   + '|' ; // 18 VL_ICMS_ST Valor do ICMS referente à substituição tributária N - 02 OC OC
            End;
            Linha := Linha + '0'                                                          + '|' ; // 19 IND_APUR Indicador de período de apuração do IPI: 0 - Mensal; 1 - Decendial

            If (OpEntraSai = 'S') or (SQLPesquisa.FieldByName('NOFA1ENTRADASAIDA').AsString = 'S') then // operacao de estoque de Saida
              Linha := Linha + SQLSegundaPesquisa.FieldByName('PRODA2CSTIPI').Asstring + '|'  // 20 CST_IPI Código da Situação Tributária referente ao IPI, conforme a Tabela indicada no item 4.3.2.
            else if (OpEntraSai = 'E') or (SQLPesquisa.FieldByName('NOFA1ENTRADASAIDA').AsString = 'E') then //operacao de estoque de entrada
              Linha := Linha + SQLSegundaPesquisa.FieldByName('PRODA3CSTIPIENTRADA').Asstring + '|';  // 20 CST_IPI Código da Situação Tributária referente ao IPI, conforme a Tabela indicada no item 4.3.2.
            Linha := Linha +
            ''                                                                          + '|' + // 21 NAO PREENCHER - COD_ENQ Código de enquadramento legal do IPI, conforme
            FormatFloat('0.00',Base)                                                    + '|' + // 22 VL_BC_IPI Valor da base de cálculo do IPI N - 02 OC OC
            FormatFloat('0.00',SQLSegundaPesquisa.FieldByName('NFITN2PERCIPI').Value)   + '|' + // 23 ALIQ_IPI Alíquota do IPI N 006 02 OC OC
            FormatFloat('0.00',SQLSegundaPesquisa.FieldByName('NFITN2VLRIPI').Value)    + '|';  // 24 VL_IPI Valor do IPI creditado/debitado N - 02 OC OC

            If (OpEntraSai = 'S') or (SQLPesquisa.FieldByName('NOFA1ENTRADASAIDA').AsString = 'S') then // operacao de estoque de Saida
              Linha := Linha + SQLSegundaPesquisa.FieldByName('PRODA2CSTPIS').AsString                     + '|' // 25 CST_PIS Código da Situação Tributária referente ao PIS. N 002* - OC OC
            else if (OpEntraSai = 'E')  or (SQLPesquisa.FieldByName('NOFA1ENTRADASAIDA').AsString = 'E') then // operacao de estoque de entrada
              Linha := Linha + SQLSegundaPesquisa.FieldByName('PRODA3CSTPISENTRADA').Asstring              + '|' ; // 25 CST_PIS Código da Situação Tributária referente ao PIS. N 002* - OC OC

            Linha := Linha +
            FormatFloat('0.00',Base)                                                    + '|' + // 26 VL_BC_PIS Valor da base de cálculo do PIS N 02 OC OC
            FormatFloat('0.0000',SQLSegundaPesquisa.FieldByName('PRODN2ALIQPIS').Value) + '|' + // 27 ALIQ_PIS Alíquota do PIS (em percentual) N 008 04 OC OC
            ''                                                                          + '|' + // 28 QUANT_BC_PIS Quantidade – Base de cálculo PIS N 03 OC OC
            ''                                                                          + '|' + // 29 ALIQ_PIS Alíquota do PIS (em reais) N 04 OC OC
            FormatFloat('0.00',Base *
            (SQLSegundaPesquisa.FieldByName('PRODN2ALIQPIS').Value / 100) )             + '|' ; // 30 VL_PIS Valor do PIS N - 02 OC OC

            If (OpEntraSai = 'S') or (SQLPesquisa.FieldByName('NOFA1ENTRADASAIDA').AsString = 'S') then // operacao de estoque de Saida
              Linha := Linha + SQLSegundaPesquisa.FieldByName('PRODA2CSTCOFINS').AsString                  + '|'  // 31 CST_COFINS Código da Situação Tributária referente ao COFINS.
            else if (OpEntraSai = 'E')  or (SQLPesquisa.FieldByName('NOFA1ENTRADASAIDA').AsString = 'E') then //operacao de estoque de entrada
              Linha := Linha + SQLSegundaPesquisa.FieldByName('PRODA3CSTCOFINSENTRADA').AsString                  + '|' ; // 31 CST_COFINS Código da Situação Tributária referente ao COFINS.

            Linha := Linha +
            FormatFloat('0.00',Base)                                                    + '|' + // 32 VL_BC_COFINS Valor da base de cálculo da COFINS N 02 OC OC
            FormatFloat('0.0000',SQLSegundaPesquisa.FieldByName('PRODN2ALIQCOFINS').Value) + '|' + // 33 ALIQ_COFINS Alíquota do COFINS (em percentual) N 008 04 OC OC
            ''                                                                          + '|' + // 34 QUANT_BC_COFINS Quantidade – Base de cálculo COFINS N 03 OC OC
            ''                                                                          + '|' + // 35 ALIQ_COFINS Alíquota da COFINS (em reais) N 04 OC OC
            FormatFloat('0.00',Base *
            (SQLSegundaPesquisa.FieldByName('PRODN2ALIQCOFINS').Value / 100) )          + '|' + // 36 VL_COFINS Valor da COFINS N - 02 OC OC
            ''                                                                          + '|' ; // 37 COD_CTA Código da conta analítica contábil

            If Not GravaRegistros('C170') Then Begin Result := False; Exit; End;
            Inc(nC170);
            Total_Bloco_C := Total_Bloco_C + 1;
          except on E:Exception do
            begin
              Showmessage('Falha ao gerar Linha para Produto de codigo: '+SQLSegundaPesquisa.FieldByName('Prodicod').AsString +#13+#10+
              'Da Nota Fiscal Número: '+SQLPesquisa.FieldByName('NOFIINUMERO').AsString);
            end;
          end;
          SQLSegundaPesquisa.Next;
        end;
    end
  else // Nota de Compra da tabela NotaCompra
    begin
      EditTabela.Text := 'Criando Registro C170 - Abrindo tabela NOTACOMPRAITEM'; EditTabela.Update;
      SQLSegundaPesquisa.SQL.Text := 'Select P.PRODA60DESCR, P.PRODA2CSTIPI, P.PRODA2CSTPIS, P.PRODN2ALIQCOFINS, P.PRODIORIGEM, '+
      'P.PRODISITTRIB, P.PRODN2ALIQPIS, P.PRODN2ALIQCOFINS, P.PRODA2CSTCOFINS, P.PRODA2TIPOITEM , P.UNIDICOD, '+
      ' P.PRODA3CSTIPIENTRADA, P.PRODA3CSTPISENTRADA, P.PRODA3CSTCOFINSENTRADA, U.UNIDA5DESCR, I.* From NOTACOMPRAITEM I '+
      'LEFT JOIN PRODUTO P ON P.PRODICOD = I.PRODICOD '+
      'LEFT JOIN UNIDADE U ON U.UNIDICOD = I.UNIDICOD '+
      'Where NOCPA13ID = :xNOFIA13ID';
      SQLSegundaPesquisa.Prepare;
      SQLSegundaPesquisa.ParamByName('xNOFIA13ID').AsString := SQLPesquisa.FieldByName('NOCPA13ID').AsString;
      SQLSegundaPesquisa.Open;

      EditTabela.Text := 'Criando Registro C170 - Itens da tabela NOTACOMPRAITEM'; EditTabela.Update;
      nOrdem := 1;
      While Not SQLSegundaPesquisa.Eof do
        begin
          TRY
            // Multiplicar a capacidade para ficar na mesma medida da venda.
            // e tem q Pegar a Unidade do cadastro do Produto
            if ckQuestor.Checked then
              begin
                Quantidade  := SQLSegundaPesquisa.FieldByName('NOCIN3CAPEMBAL').Value * SQLSegundaPesquisa.FieldByName('NOCIN3QTDEMBAL').Value;
                UnidadeSped := dm.SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',SQLSegundaPesquisa.FieldByName('UNIDICOD').AsString);
              end
            else
              begin
                Quantidade  := SQLSegundaPesquisa.FieldByName('NOCIN3QTDEMBAL').Value;
                UnidadeSped := SQLSegundaPesquisa.FieldByName('UNIDA5DESCR').AsString;
              end;

            Base := (SQLSegundaPesquisa.FieldByName('NOCIN3VLREMBAL').Value * SQLSegundaPesquisa.FieldByName('NOCIN3QTDEMBAL').Value) +
                     SQLSegundaPesquisa.FieldByName('NOCIN3VLRSUBST').Value ;

            Linha := '|C170|'                                                           +       // 01 REG Texto fixo contendo "C170" C 004 - O O
            IntToStr(nOrdem)                                                            + '|' + // NUM_ITEM Número sequencial do item no documento fiscal N 003 - O O
            SQLSegundaPesquisa.FieldByName('PRODICOD').AsString                         + '|' + // 03 COD_ITEM Código do item (campo 02 do Registro 0200) C 060 - O O
            SQLSegundaPesquisa.FieldByName('PRODA60DESCR').AsString                     + '|' + // 04 DESCR_COMPL Descrição complementar do item como adotado no documento fiscal
            FormatFloat('0.00000',Quantidade)                                           + '|' + // 05 QTD Quantidade do item N - 05 O O
            UnidadeSped                                                                 + '|' + // 06 UNID Unidade do item (Campo 02 do registro 0190) C 006 - O O
            FormatFloat('0.00',Base )                                                   + '|' + // 07 VL_ITEM Valor total do item (mercadorias ou serviços) N - 02 O O
            FormatFloat('0.00',SQLSegundaPesquisa.FieldByName('NOCIN3VLRDESC').Value)   + '|' ; // 08 VL_DESC Valor do desconto comercial N - 02 OC OC

            inc(nOrdem);

            // Verifica se a operacao de estoque é de entrada ou saida
            OpEntraSai := DM.SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCENTRADASAIDA',SQLPesquisa.FieldByName('OPESICOD').AsString);
            If OpEntraSai = 'N' Then // não movimenta estoque
              Linha := Linha +  '1|'  // 09 IND_MOV Movimentação física do ITEM/PRODUTO: 0. SIM 1. NÃO
            Else  // Saida ou Entrada
              Linha := Linha +  '0|'; // 09 IND_MOV Movimentação física do ITEM/PRODUTO: 0. SIM 1. NÃO

            // 10 CST_ICMS Código da Situação Tributária referente ao ICMS, conforme a Tabela indicada no item 4.3.1
            if length(SQLSegundaPesquisa.FieldByName('NOCIA3CSTICMS').Value) < 3 then
              Linha := Linha + SQLSegundaPesquisa.FieldByName('NOCA1CSTORIGEM').AsString + FormatFloat('00',SQLSegundaPesquisa.FieldByName('NOCIA3CSTICMS').Value)          + '|'
            else
              Linha := Linha + FormatFloat('000',SQLSegundaPesquisa.FieldByName('NOCIA3CSTICMS').Value) + '|' ;

            // Testar se CST=10,60 tem que ser 1403 ou 2403
            if SQLSegundaPesquisa.FieldByName('CFOPA5CODAUX').AsString <> '' Then
              Linha := Linha + SQLSegundaPesquisa.FieldByName('CFOPA5CODAUX').AsString      + '|'  // 11 CFOP Código Fiscal de Operação e Prestação N 004* - O O
            else
              Linha := Linha + SQLPesquisa.FieldByName('CFOPA5COD').AsString                + '|' ;  // 11 CFOP Código Fiscal de Operação e Prestação N 004* - O O

            Linha := Linha +
            ''                                                                              + '|' ; // 12 COD_NAT Código da natureza da operação (campo 02 do Registro 0400)

            if (SQLSegundaPesquisa.FieldByName('NOCIA3CSTICMS').AsInteger in ([30, 40, 41, 50, 51, 60, 70, 90]))
            or (SQLSegundaPesquisa.FieldByName('NOCIA3CSTICMS').AsInteger in ([130, 140, 141, 150, 151, 160]))
            or (SQLSegundaPesquisa.FieldByName('NOCIA3CSTICMS').AsInteger-200 in ([30, 40, 41, 50, 51, 60, 70, 90])) then
            Begin
              Linha := Linha +
              '0'   + '|' + // 13 VL_BC_ICMS Valor da base de cálculo do ICMS N - 02 OC OC
              '0'   + '|' + // 14 ALIQ_ICMS Alíquota do ICMS N 006 02 OC OC
              '0'   + '|' ; // 15 VL_ICMS Valor do ICMS creditado/debitado N - 02 OC OC
            End Else Begin
              Linha := Linha +
              FormatFloat('0.00',SQLSegundaPesquisa.FieldByName('NOCIN2VBC').Value)           + '|' + // 13 VL_BC_ICMS Valor da base de cálculo do ICMS N - 02 OC OC
              FormatFloat('0.00',SQLSegundaPesquisa.FieldByName('NOCIN3PERCICMS').Value)      + '|' + // 14 ALIQ_ICMS Alíquota do ICMS N 006 02 OC OC
              FormatFloat('0.00',SQLSegundaPesquisa.FieldByName('NOCIN3VLRICMS').Value)       + '|' ; // 15 VL_ICMS Valor do ICMS creditado/debitado N - 02 OC OC
            End;

            if SQLSegundaPesquisa.FieldByName('NOCIA3CSTICMS').AsInteger  in ([10, 30, 70]) then
            Begin
              Linha := Linha +
              '0'   + '|' + // 16 VL_BC_ICMS_ST Valor da base de cálculo referente à substituição tributária
              '0'   + '|' + // 17 ALIQ_ST Alíquota do ICMS da substituição tributária na unidade da federação de destino
              '0'   + '|' ; // 18 VL_ICMS_ST Valor do ICMS referente à substituição tributária N - 02 OC OC
            End Else Begin
              Linha := Linha +
              FormatFloat('0.00',SQLSegundaPesquisa.FieldByName('NOCIN2VBCST').Value)         + '|' + // 16 VL_BC_ICMS_ST Valor da base de cálculo referente à substituição tributária
              FormatFloat('0.00',SQLSegundaPesquisa.FieldByName('NOCIN2PERCSUBST').Value)     + '|' + // 17 ALIQ_ST Alíquota do ICMS da substituição tributária na unidade da federação de destino
              FormatFloat('0.00',SQLSegundaPesquisa.FieldByName('NOCIN3VLRSUBST').Value )     + '|' ; // 18 VL_ICMS_ST Valor do ICMS referente à substituição tributária N - 02 OC OC
            End;

            Linha := Linha +
            '0'                                                                             + '|' + // 19 IND_APUR Indicador de período de apuração do IPI: 0 - Mensal; 1 - Decendial
            Copy(SQLSegundaPesquisa.FieldByName('NOCA3CSTIPI').Asstring,0,2)                + '|' + // 20 CST_IPI Código da Situação Tributária referente ao IPI, conforme a Tabela indicada no item 4.3.2.
// NA ENTRADA O SISTEMA TEM QUE GRAVAR NA NOTA A CST DO IPI DE ENTRADA DE 01 A   09          Copy(SQLSegundaPesquisa.FieldByName('PRODA3CSTIPIENTRADA').Asstring,0,2)        + '|' + // 20 CST_IPI Código da Situação Tributária referente ao IPI, conforme a Tabela indicada no item 4.3.2.
            ''                                                                              + '|' + // 21 NAO PREENCHER - COD_ENQ Código de enquadramento legal do IPI, conforme
            FormatFloat('0.00',SQLSegundaPesquisa.FieldByName('NOCIN2VBCIPI').Value )       + '|' + // 22 VL_BC_IPI Valor da base de cálculo do IPI N - 02 OC OC
            FormatFloat('0.00',SQLSegundaPesquisa.FieldByName('NOCIN3PERCIPI').Value)       + '|' + // 23 ALIQ_IPI Alíquota do IPI N 006 02 OC OC
            FormatFloat('0.00',SQLSegundaPesquisa.FieldByName('NOCIN3VLRIPI').Value)        + '|' ; // 24 VL_IPI Valor do IPI creditado/debitado N - 02 OC OC

            // Se o tipo de produto for materia prima (01) ou produto para revenda(00) usa credito caso contrario nao credita
            // Determinacao do PIS
           { if (SQLSegundaPesquisa.FieldByName('PRODA2TIPOITEM').AsString = '00') or (SQLSegundaPesquisa.FieldByName('PRODA2TIPOITEM').AsString = '01') then
            begin
              Linha := Linha +
              FormatFloat('0.00',SQLSegundaPesquisa.FieldByName('NOCIN2BASEPIS').Value)       + '|' + // 26 VL_BC_PIS Valor da base de cálculo do PIS N 02 OC OC
              FormatFloat('0.0000',SQLSegundaPesquisa.FieldByName('PRODN2ALIQPIS').Value)     + '|' ; // 27 ALIQ_PIS Alíquota do PIS (em percentual) N 008 04 OC OC
              if SQLSegundaPesquisa.FieldByName('NOCN4PISQTD').Value > 0 then
                Linha := Linha + FormatFloat('0.0000',SQLSegundaPesquisa.FieldByName('NOCN4PISQTD').Value)       + '|'  // 28 QUANT_BC_PIS Quantidade – Base de cálculo PIS N 03 OC OC
              Else
                Linha := Linha + '|';

              Linha := Linha + FormatFloat('0.0000',SQLSegundaPesquisa.FieldByName('NOCN4PISREAL').Value)      + '|' + // 29 ALIQ_PIS Alíquota do PIS (em reais) N 04 OC OC
              FormatFloat('0.00',SQLSegundaPesquisa.FieldByName('NOCIN2VLRPIS').Value )       + '|' ; // 30 VL_PIS Valor do PIS N - 02 OC OC
            End else }
            if (SQLSegundaPesquisa.FieldByName('PRODA2TIPOITEM').AsString = '00') or (SQLSegundaPesquisa.FieldByName('PRODA2TIPOITEM').AsString = '01') then
            begin
              Linha := Linha +
              COPY(SQLSegundaPesquisa.FieldByName('PRODA3CSTPISENTRADA').AsString,0,2)        + '|' + // 25 CST_PIS Código da Situação Tributária referente ao PIS. N 002* - OC OC
              FormatFloat('0.00',Base)                                                        + '|' + // 26 VL_BC_PIS Valor da base de cálculo do PIS N 02 OC OC
              FormatFloat('0.00',SQLSegundaPesquisa.FieldByName('PRODN2ALIQPIS').Value)       + '|' ; // 27 ALIQ_PIS Alíquota do PIS (em percentual) N 008 04 OC OC

              if SQLSegundaPesquisa.FieldByName('NOCN4PISQTD').Value > 0 then
                Linha := Linha + FormatFloat('0.000',SQLSegundaPesquisa.FieldByName('NOCN4PISQTD').Value)       + '|'  // 28 QUANT_BC_PIS Quantidade – Base de cálculo PIS N 03 OC OC
              Else
                Linha := Linha + '|';

              Linha := Linha + FormatFloat('0.0000',SQLSegundaPesquisa.FieldByName('NOCN4PISREAL').Value)      + '|' + // 29 ALIQ_PIS Alíquota do PIS (em reais) N 04 OC OC
              FormatFloat('0.00',Base * (SQLSegundaPesquisa.FieldByName('PRODN2ALIQPIS').Value / 100 ) )       + '|' ; // 30 VL_PIS Valor do PIS N - 02 OC OC
            End else
            begin
              Linha := Linha +
              '|'  + // 25 CST_PIS Código da Situação Tributária referente ao PIS. N 002* - OC OC
              '0|' + // 26 VL_BC_PIS Valor da base de cálculo do PIS N 02 OC OC
              '0|' + // 27 ALIQ_PIS Alíquota do PIS (em percentual) N 008 04 OC OC
              '0|' + // 28 QUANT_BC_PIS Quantidade – Base de cálculo PIS N 03 OC OC
              '0|' + // 29 ALIQ_PIS Alíquota do PIS (em reais) N 04 OC OC
              '0|' ; // 30 VL_PIS Valor do PIS N - 02 OC OC
            end; // fim da determinacao do PIS



            // Se o tipo de produto for materia prima (01) ou produto para revenda(00) usa credito caso contrario nao credita
            // Determinaçao do Cofins
            {if (SQLSegundaPesquisa.FieldByName('PRODA2TIPOITEM').AsString = '00') or (SQLSegundaPesquisa.FieldByName('PRODA2TIPOITEM').AsString = '01') then
            begin
              Linha := Linha +
              Copy(SQLSegundaPesquisa.FieldByName('NOCA3CSTCOFINS').AsString,0,2)             + '|' + // 31 CST_COFINS Código da Situação Tributária referente ao COFINS.
              FormatFloat('0.00',SQLSegundaPesquisa.FieldByName('NOCIN2BASECOFINS').Value)    + '|' + // 32 VL_BC_COFINS Valor da base de cálculo da COFINS N 02 OC OC
              FormatFloat('0.0000',SQLSegundaPesquisa.FieldByName('NOCIN2PERCCOFINS').Value)  + '|' ; // 33 ALIQ_COFINS Alíquota do COFINS (em percentual) N 008 04 OC OC
              If SQLSegundaPesquisa.FieldByName('NOCN4COFINSQTD').Value > 0 then
                Linha := Linha + FormatFloat('0.0000',SQLSegundaPesquisa.FieldByName('NOCN4COFINSQTD').Value)    + '|'  // 34 QUANT_BC_COFINS Quantidade – Base de cálculo COFINS N 03 OC OC
              Else
                Linha := Linha + '|';
              if SQLSegundaPesquisa.FieldByName('NOCN4COFINSREAL').Value > 0 Then
                Linha := Linha + FormatFloat('0.0000',SQLSegundaPesquisa.FieldByName('NOCN4COFINSREAL').Value)   + '|'  // 35 ALIQ_COFINS Alíquota da COFINS (em reais) N 04 OC OC
              Else
                Linha := Linha + '|';

              Linha := Linha + FormatFloat('0.00',SQLSegundaPesquisa.FieldByName('NOCIN2VLRCOFINS').Value)     + '|'  // 36 VL_COFINS Valor da COFINS N - 02 OC OC
            End Else }
            if (SQLSegundaPesquisa.FieldByName('PRODA2TIPOITEM').AsString = '00') or (SQLSegundaPesquisa.FieldByName('PRODA2TIPOITEM').AsString = '01') then
            begin
              Linha := Linha +
              Copy(SQLSegundaPesquisa.FieldByName('PRODA3CSTCOFINSENTRADA').AsString,0,2)     + '|' + // 31 CST_COFINS Código da Situação Tributária referente ao COFINS.
              FormatFloat('0.00',Base)                                                        + '|' + // 32 VL_BC_COFINS Valor da base de cálculo da COFINS N 02 OC OC
              FormatFloat('0.00',SQLSegundaPesquisa.FieldByName('PRODN2ALIQCOFINS').Value)    + '|' ; // 33 ALIQ_COFINS Alíquota do COFINS (em percentual) N 008 04 OC OC
              If SQLSegundaPesquisa.FieldByName('NOCN4COFINSQTD').Value > 0 then
                Linha := Linha + FormatFloat('0.000',SQLSegundaPesquisa.FieldByName('NOCN4COFINSQTD').Value)    + '|'  // 34 QUANT_BC_COFINS Quantidade – Base de cálculo COFINS N 03 OC OC
              Else
                Linha := Linha + '|';
              if SQLSegundaPesquisa.FieldByName('NOCN4COFINSREAL').Value > 0 Then
                Linha := Linha + FormatFloat('0.0000',SQLSegundaPesquisa.FieldByName('NOCN4COFINSREAL').Value)   + '|'  // 35 ALIQ_COFINS Alíquota da COFINS (em reais) N 04 OC OC
              Else
                Linha := Linha + '|';

              Linha := Linha + FormatFloat('0.00',Base * (SQLSegundaPesquisa.FieldByName('PRODN2ALIQCOFINS').Value / 100) )     + '|'  // 36 VL_COFINS Valor da COFINS N - 02 OC OC
            End Else
            Begin
              Linha := Linha +
              '|'     + // 31 CST_COFINS Código da Situação Tributária referente ao COFINS.
              '0|' + // 32 VL_BC_COFINS Valor da base de cálculo da COFINS N 02 OC OC
              '0|' + // 33 ALIQ_COFINS Alíquota do COFINS (em percentual) N 008 04 OC OC
              '0|' + // 34 QUANT_BC_COFINS Quantidade – Base de cálculo COFINS N 03 OC OC
              '0|' + // 35 ALIQ_COFINS Alíquota da COFINS (em reais) N 04 OC OC
              '0|' ; // 36 VL_COFINS Valor da COFINS N - 02 OC OC
            End;

            Linha := Linha +
            ''  + '|' ; // 37 COD_CTA Código da conta analítica contábil

            If Not GravaRegistros('C170') Then Begin Result := False; Exit; End;
            Inc(nC170);
            Total_Bloco_C := Total_Bloco_C + 1;
          except on E:Exception do
            begin
              Showmessage('Falha ao gerar Linha para Produto: '+SQLSegundaPesquisa.FieldByName('Prodicod').AsString +#13+#10+
              'Da Nota Fiscal de Compra Numero: '+SQLPesquisa.FieldByName('NOCPA30NRO').AsString + #13+#10+
              'Mensagem de Erro: '+e.message);
            end;
          end;
          SQLSegundaPesquisa.Next;
        end;
    end;
  Result := True;
end;

Function TFormTelaExportacaoSped.RegistroC172: boolean;
begin
 {REGISTRO C172: OPERAÇÕES COM ISSQN (CÓDIGO 01)
  Este registro tem por objetivo informar dados da prestação de serviços.}

  if  (SQLPesquisa.FieldByName('SERIA2TIPONOTA').AsString = '01') Then // Nota fiscal Normal
    begin
      SQLTerceiraPesquisa.Close;
      SQLTerceiraPesquisa.SQL.Text := 'Select * from CONFIGVENDA';
      SQLTerceiraPesquisa.Open;
      Linha := '|C172|'                                                             + // 01 REG Texto fixo contendo "C172" C 004
      FormatFloat('0.00',SQLPesquisa.FieldByname('NOFIN2VLRSERVICO').value)         + '|' + // 02 VL_BC_ISSQN Valor da base de cálculo do ISSQN N - 02 O
      FormatFloat('0.00',SQLTerceiraPesquisa.FieldByName('CFVEN3ALIQISSQN').value)  + '|' + // 03 ALIQ_ISSQN Alíquota do ISSQN N 006 02 O
      FormatFloat('0.00',SQLPesquisa.FieldByname('NOFIN2VLRISSQN').Value   )        + '|' ; // 04 VL_ISSQN Valor do ISSQN N - 02 O
      SQLTerceiraPesquisa.Close;

      If Not GravaRegistros('C172') Then Begin Result := False; Exit; End;
      Inc(nC172);
      Total_Bloco_C := Total_Bloco_C + 1;
    end;

  Result := True;
End;

Function TFormTelaExportacaoSped.RegistroC190_Tabela: boolean;
Var UfDestino:String;
    VL_OPR ,  VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST , VL_ICMS_ST, VL_RED_BC, VL_IPI : Extended;
    cst_icms, cfop, Aliq_icms_item :String;
begin
 {REGISTRO C190: REGISTRO ANALÍTICO DO DOCUMENTO (CÓDIGO 01, 1B, 04 E 55).
  Este registro tem por objetivo representar a escrituração dos documentos fiscais totalizados por CST, CFOP e Alíquota de ICMS.}

  if Pos('NOTAFISCAL',SQLPesquisa.SQL.Text) > 0 Then // Nota de Venda da Tabela Notafiscal
    begin
      if SQLPesquisa.FieldByName('NOFICSTATUS').Value = 'C' then Exit;

      EditTabela.Text := 'Criando Registro C190 - Abrindo Tabela NOTAFISCALITEM'; EditTabela.Update;
      SQLSegundaPesquisa.SQL.Text := 'Select P.PRODA60DESCR, P.PRODA2CSTIPI, P.PRODA3CSTIPIENTRADA, P.PRODA2CSTPIS, '+
      'P.PRODA3CSTPISENTRADA, P.PRODA2CSTCOFINS, P.PRODA3CSTCOFINSENTRADA, P.PRODN2ALIQPIS, P.PRODN2ALIQCOFINS, P.PRODIORIGEM,  '+
      'I.* From NotaFiscalItem I '+
      'LEFT JOIN PRODUTO P ON P.PRODICOD = I.PRODICOD '+
      'LEFT JOIN UNIDADE U ON U.UNIDICOD = P.UNIDICOD '+
      'Where NOFIA13ID = :xNOFIA13ID';
      SQLSegundaPesquisa.Prepare;
      SQLSegundaPesquisa.ParamByName('xNOFIA13ID').AsString := SQLPesquisa.FieldByName('NOFIA13ID').AsString;
      SQLSegundaPesquisa.Open;

      EditTabela.Text := 'Criando Registro C190 -  NOTAFISCAL: ' + SQLPesquisa.FieldbyName('NOFIINUMERO').AsString; EditTabela.Update;

      // Descobrir o estado do participante;
      UfDestino := '';
      if (SQLPesquisa.FieldByName('CLIEA13ID').IsNull) and (SQLPesquisa.FieldByName('EMPRICODDEST').IsNull) then                                         // 04 COD_PART Código do participante (campo 02 do Registro 0150):  do emitente do documento ou do remetente das mercadorias, no caso de entradas; - do adquirente, no caso de saídas  C 060 - S
      Begin
        // Pesquisa na tabela fornecedor o cnpj do participante
        UfDestino := DM.SQLLocate('FORNECEDOR','FORNICOD','FORNA2UF',SQLPesquisa.FieldByName('FORNICOD').AsString);
        If UfDestino = '' then
          UfDestino := DM.SQLLocate('FORNECEDOR','FORNICOD','FORNA2UF',SQLPesquisa.FieldByName('FORNICOD').AsString);
      End Else If (not (SQLPesquisa.FieldByName('CLIEA13ID').IsNull)) and (SQLPesquisa.FieldByName('EMPRICODDEST').IsNull)  then
      begin
        UfDestino := DM.SQLLocate('CLIENTE','CLIEA13ID','CLIEA2UFRES','"'+SQLPesquisa.FieldByName('CLIEA13ID').AsString+'"') ;
      End else
      Begin
        UfDestino := DM.SQLLocate('EMPRESA','EMPRICOD','EMPRA2UF',SQLPesquisa.FieldByName('EMPRICODDEST').AsString) ;
      End;

      SQLRegC490.Close;
      Dm.SQLTemplate.Close;
      Dm.SQLTEMPLATE.SQL.Clear;
      DM.SQLTemplate.SQL.Text := 'Delete from SPED_REGC490';
      DM.SQLTemplate.ExecSQL;
      DM.SQLTemplate.Close;
      SQLRegC490.Open;

      While Not SQLSegundaPesquisa.Eof do
        begin
          Try
            if length(SQLSegundaPesquisa.fieldbyname('NFITICST').Value) < 3 then
              cst_icms := formatfloat('0',SQLSegundaPesquisa.fieldbyname('PRODIORIGEM').Value)+
                          formatfloat('00',SQLSegundaPesquisa.fieldbyname('NFITICST').Value)
            else
              cst_icms := formatfloat('000',SQLSegundaPesquisa.fieldbyname('NFITICST').Value);

            If (not SQLSegundaPesquisa.FieldByName('CFOPA5CODAUX').IsNull) and (SQLSegundaPesquisa.FieldByName('CFOPA5CODAUX').AsString <> '') then
              Cfop := SQLSegundaPesquisa.Fieldbyname('CFOPA5CODAUX').AsString
            Else
              if UfDestino <> DM.SQLLocate('EMPRESA','EMPRICOD','EMPRA2UF',SQLPesquisa.FieldByName('EMPRICOD').AsString) Then
                Cfop := Dm.SQLLocate('OPERACAOESTOQUE','OPESICOD','CFOPA5CODFORAUF',SQLPesquisa.Fieldbyname('OPESICOD').AsString)
              Else
                Cfop := Dm.SQLLocate('OPERACAOESTOQUE','OPESICOD','CFOPA5CODDENTROUF',SQLPesquisa.Fieldbyname('OPESICOD').AsString);

            Aliq_icms_item := FormatFloat('0.00',SQLSegundaPesquisa.FieldByName('NFITN2PERCICMS').Value);
            SQLRegC490.Close;
            SQLRegC490.MacroByName('MFiltro').Value := 'CST_ICMS="'+cst_icms+'" and CFOP="'+Cfop+'" and ALIQ_ICMS="'+Aliq_Icms_Item+'"';
            SQLRegC490.Open;

            VL_OPR := (SQLSegundaPesquisa.FieldByName('NFITN3QUANT').Value * SQLSegundaPesquisa.FieldByName('NFITN2VLRUNIT').Value) -
            RetornaValor('NFITN2VLRFRETE')   +
            RetornaValor('NFITN2SEGURO')     +
            RetornaValor('NFITN2VLRIPI')     +
            RetornaValor('NFITN2VLRSUBS')    +
            RetornaValor('NFITN2OUTRASDESP') -
            RetornaValor('NFITN2VLRDESC')    ;

            VL_RED_BC := VL_OPR - (VL_OPR *  (RetornaValor('NFITN2PERCREDUCAO') / 100));

            if SQLRegC490.IsEmpty then
              begin
                SQLRegC490.Append;
                SQLRegC490CST_ICMS.Value   := Cst_Icms;
                SQLRegC490CFOP.Value       := Cfop;
                SQLRegC490ALIQ_ICMS.Value  := Aliq_Icms_Item;
                SQLRegC490.FieldByName('VL_OPR').Value := VL_OPR;
                SQLRegC490.FieldByName('VL_BC_ICMS').Value      := RetornaValor('NFITN2BASEICMS');
                SQLRegC490.FieldByName('VL_ICMS').Value         := RetornaValor('NFITN2VLRICMS');
                SQLRegC490.FieldByName('VL_BC_ICMS_ST').Value   := RetornaValor('NFITN2BASESUBS');
                SQLRegC490.FieldByName('VL_ICMS_ST').Value      := RetornaValor('NFITN2VLRSUBS');
                SQLRegC490.FieldByName('VL_RED_BC').Value       := VL_RED_BC;
                SQLRegC490.FieldByName('VL_IPI').Value := RetornaValor('NFITN2VLRIPI');
                SQLRegC490.Post;
              end
            else
              begin
                SQLRegC490.Edit;
                SQLRegC490.FieldByName('VL_OPR').Value          := SQLRegC490.FieldByName('VL_OPR').Value        + VL_OPR;
                SQLRegC490.FieldByName('VL_BC_ICMS').Value      := SQLRegC490.FieldByName('VL_BC_ICMS').Value    + RetornaValor('NFITN2BASEICMS');
                SQLRegC490.FieldByName('VL_ICMS').Value         := SQLRegC490.FieldByName('VL_ICMS').Value       + RetornaValor('NFITN2VLRICMS');
                SQLRegC490.FieldByName('VL_BC_ICMS_ST').Value   := SQLRegC490.FieldByName('VL_BC_ICMS_ST').Value + RetornaValor('NFITN2BASESUBS');
                SQLRegC490.FieldByName('VL_ICMS_ST').Value      := SQLRegC490.FieldByName('VL_ICMS_ST').Value    + RetornaValor('NFITN2VLRSUBS');
                SQLRegC490.FieldByName('VL_RED_BC').Value       := SQLRegC490.FieldByName('VL_RED_BC').Value     + VL_RED_BC;
                SQLRegC490.FieldByName('VL_IPI').Value          := SQLRegC490.FieldByName('VL_IPI').Value        + RetornaValor('NFITN2VLRIPI');
                SQLRegC490.Post;
              end;

          Except ON e:Exception do
          begin
            Showmessage('Falha ao Calcular RegistroC190: '+E.Message +#13+#10+'Nota Fiscal: '+SQLPesquisa.FieldByName('nofiinumero').AsString+#13+#10+' Produto: '+SQLSegundaPesquisa.fieldbyname('PRODICOD').AsString);
            Result := False;
            Exit;
          End; End;
          SQLSegundaPesquisa.Next;
      End;

      SQLRegC490.Close;
      EditTabela.Text := 'Criando Registro C190 -  Totalizando NOTAFISCAL: ' + SQLPesquisa.FieldbyName('NOFIINUMERO').AsString; EditTabela.Update;
      SQLRegC490.MacroByName('MFiltro').AsString := '0=0';
      SQLRegC490.Open;

      if not SQLRegC490.IsEmpty then
      begin
        while not SQLRegC490.Eof do
          begin
            Linha := '|C190|'                                               + // 01-Registro C190
                     SQLRegC490CST_ICMS.AsString                      + '|' + // 02-CST_ICMS
                     SQLRegC490CFOP.AsString                          + '|' ; // 03-CFOP
                     if SQLRegC490ALIQ_ICMS.AsString = '0,00' then
                        Linha := Linha +                            '0,00|'
                     Else
                        Linha := Linha + SQLRegC490ALIQ_ICMS.AsString + '|' ; // 04-ALIQ_ICMS
                     Linha := Linha +
                     FormatFloat('0.00',SQLRegC490VL_OPR.Value)       + '|' + // 05-VL_OPR
                     FormatFloat('0.00',SQLRegC490VL_BC_ICMS.Value)   + '|' + // 06-VL_BC_ICMS
                     FormatFloat('0.00',SQLRegC490VL_ICMS.Value)      + '|' + // 07-VL_ICMS
                     FormatFloat('0.00',SQLRegC490VL_BC_ICMS_ST.Value)+ '|' + // 05-VL_OPR
                     FormatFloat('0.00',SQLRegC490VL_ICMS_ST.Value)   + '|' + // 06-VL_BC_ICMS
                     FormatFloat('0.00',SQLRegC490VL_RED_BC.Value)    + '|' + // 07-VL_ICMS
                     FormatFloat('0.00',SQLRegC490VL_IPI.Value)       + '|' + // 07-VL_ICMS
                                                                        '|' ; // 08-COD_OBS

            if Not GravaRegistros('C190') Then Begin Result := False; Exit; End;
            Inc(nC190);
            Inc(Total_Bloco_C);

            SQLRegC490.Next;
          end;
        // limpa dados para novo calculo
        SQLRegC490.First;
        while not SQLRegC490.Eof do
          SQLRegC490.Delete;
      end;
    End else
    If Pos('NOTACOMPRA',SQLPesquisa.SQL.Text) > 0 Then // Notas de Compra
    Begin
      if SQLPesquisa.FieldByName('NOCPCSTATUS').Value = 'C' then Exit;

      SQLSegundaPesquisa.SQL.Text := 'Select P.PRODA60DESCR, P.PRODA2CSTIPI, P.PRODA2CSTPIS, P.PRODN2ALIQCOFINS, P.PRODIORIGEM, '+
      'P.PRODISITTRIB, P.PRODN2ALIQPIS, P.PRODN2ALIQCOFINS, P.PRODA2CSTCOFINS, P.PRODA2TIPOITEM , U.UNIDA5DESCR, I.* From NOTACOMPRAITEM I '+
      'LEFT JOIN PRODUTO P ON P.PRODICOD = I.PRODICOD '+
      'LEFT JOIN UNIDADE U ON U.UNIDICOD = P.UNIDICOD '+
      'Where NOCPA13ID = :xNOFIA13ID';
      SQLSegundaPesquisa.Prepare;
      SQLSegundaPesquisa.ParamByName('xNOFIA13ID').AsString := SQLPesquisa.FieldByName('NOCPA13ID').AsString;
      SQLSegundaPesquisa.Open;

      EditTabela.Text := 'Criando Registro C190 -  NOTA COMPRA: ' + SQLPesquisa.FieldbyName('NOCPA30NRO').AsString; EditTabela.Update;

      // Descobrir o estado do participante;
      UfDestino := DM.SQLLocate('FORNECEDOR','FORNICOD','FORNA2UF',SQLPesquisa.FieldByName('FORNICOD').AsString);
      If UfDestino = '' then
        UfDestino := DM.SQLLocate('FORNECEDOR','FORNICOD','FORNA2UF',SQLPesquisa.FieldByName('FORNICOD').AsString);

      SQLRegC490.Close;
      Dm.SQLTemplate.Close;
      Dm.SQLTEMPLATE.SQL.Clear;
      DM.SQLTemplate.SQL.Text := 'Delete from SPED_REGC490';
      DM.SQLTemplate.ExecSQL;
      DM.SQLTemplate.Close;

      SQLRegC490.Open;
      While Not SQLSegundaPesquisa.Eof do
        begin
          Try
            if length(SQLSegundaPesquisa.fieldbyname('NOCIA3CSTICMS').Value) < 3 then
              cst_icms := formatfloat('0',SQLSegundaPesquisa.fieldbyname('NOCA1CSTORIGEM').Value)+
                          formatfloat('00',SQLSegundaPesquisa.fieldbyname('NOCIA3CSTICMS').Value)
            else
              cst_icms := formatfloat('00',SQLSegundaPesquisa.fieldbyname('NOCIA3CSTICMS').Value);

            If not SQLSegundaPesquisa.FieldByName('CFOPA5CODAUX').IsNull then
              Cfop := SQLSegundaPesquisa.Fieldbyname('CFOPA5CODAUX').AsString
            Else
              if UfDestino <> DM.SQLLocate('EMPRESA','EMPRICOD','EMPRA2UF',SQLPesquisa.FieldByName('EMPRICOD').AsString) Then
                Cfop := Dm.SQLLocate('OPERACAOESTOQUE','OPESICOD','CFOPA5CODFORAUF',SQLPesquisa.Fieldbyname('OPESICOD').AsString)
              Else
                Cfop := Dm.SQLLocate('OPERACAOESTOQUE','OPESICOD','CFOPA5CODDENTROUF',SQLPesquisa.Fieldbyname('OPESICOD').AsString);

            Aliq_icms_item := FormatFloat('0.00',SQLSegundaPesquisa.FieldByName('NOCIN3PERCICMS').Value);

            SQLRegC490.Close;
            SQLRegC490.MacroByName('MFiltro').Value := 'CST_ICMS="'+cst_icms+'" and CFOP="'+Cfop+'" and ALIQ_ICMS="'+Aliq_Icms_Item+'"';
            SQLRegC490.Open;

            VL_OPR := (SQLSegundaPesquisa.FieldByName('NOCIN3QTDEMBAL').Value * SQLSegundaPesquisa.FieldByName('NOCIN3VLREMBAL').Value) -
                       RetornaValor('NOCIN3VLRDESC') +
                       RetornaValor('NOCIN3VLRFRETE') +
                       RetornaValor('NOCIN2VLRSEGURO')  +
                       RetornaValor('NOCIN3VLRIPI') +
                       RetornaValor('NOCIN3VLRSUBST') +
                       RetornaValor('NOCIN2VLRDESPESAS');

            VL_RED_BC := (VL_OPR - RetornaValor('NOCIN3VLRSUBST')) - ((VL_OPR - RetornaValor('NOCIN3VLRSUBST') ) *  (RetornaValor('NOCIN2PREDBC') / 100));

            if SQLRegC490.IsEmpty then
              begin
                SQLRegC490.Append;
                SQLRegC490CST_ICMS.Value   := Cst_Icms;
                SQLRegC490CFOP.Value       := Cfop;
                SQLRegC490ALIQ_ICMS.Value  := Aliq_Icms_Item;
                SQLRegC490.FieldByName('VL_OPR').Value  := VL_OPR;
                if (SQLSegundaPesquisa.FieldByName('NOCIA3CSTICMS').AsInteger in ([10, 30, 40, 41, 50, 51, 60, 70, 90]))
                or (SQLSegundaPesquisa.FieldByName('NOCIA3CSTICMS').AsInteger in ([130, 140, 141, 150, 151, 160])) then
                  begin
                    SQLRegC490.FieldByName('VL_BC_ICMS').Value      := 0;
                    SQLRegC490.FieldByName('VL_ICMS').Value         := 0;
                    SQLRegC490.FieldByName('VL_BC_ICMS_ST').Value   := 0;
                    SQLRegC490.FieldByName('VL_ICMS_ST').Value      := 0;
                    SQLRegC490.FieldByName('VL_RED_BC').Value       := VL_RED_BC;
                  end
                else
                  begin
                    SQLRegC490.FieldByName('VL_BC_ICMS').Value      := RetornaValor('NOCIN2VBC');
                    SQLRegC490.FieldByName('VL_ICMS').Value         := RetornaValor('NOCIN3VLRICMS');
                    SQLRegC490.FieldByName('VL_BC_ICMS_ST').Value   := RetornaValor('NOCIN2VBCST');
                    SQLRegC490.FieldByName('VL_ICMS_ST').Value      := RetornaValor('NOCIN3VLRSUBST');
                    SQLRegC490.FieldByName('VL_RED_BC').Value       := VL_RED_BC;
                  end;
                SQLRegC490.FieldByName('VL_IPI').Value          := RetornaValor('NOCIN3VLRIPI');
                SQLRegC490.Post;
              end
            else
              begin
                SQLRegC490.Edit;
                SQLRegC490.FieldByName('VL_OPR').Value := SQLRegC490.FieldByName('VL_OPR').Value + VL_OPR;
                if (SQLSegundaPesquisa.FieldByName('NOCIA3CSTICMS').AsInteger in ([10, 30, 40, 41, 50, 51, 60, 70, 90]))
                or (SQLSegundaPesquisa.FieldByName('NOCIA3CSTICMS').AsInteger in ([130, 140, 141, 150, 151, 160]))
                or (SQLSegundaPesquisa.FieldByName('NOCIA3CSTICMS').AsInteger-200 in ([10, 30, 40, 41, 50, 51, 60, 70, 90])) then
                  begin
                    SQLRegC490.FieldByName('VL_BC_ICMS').Value      := 0;
                    SQLRegC490.FieldByName('VL_ICMS').Value         := 0;
                    SQLRegC490.FieldByName('VL_BC_ICMS_ST').Value   := 0;
                    SQLRegC490.FieldByName('VL_ICMS_ST').Value      := 0;
                    SQLRegC490.FieldByName('VL_RED_BC').Value       := SQLRegC490.FieldByName('VL_RED_BC').Value      + VL_RED_BC;
                  end
                else
                  begin
                    SQLRegC490.FieldByName('VL_BC_ICMS').Value      := SQLRegC490.FieldByName('VL_BC_ICMS').Value     + RetornaValor('NOCIN2VBC');
                    SQLRegC490.FieldByName('VL_ICMS').Value         := SQLRegC490.FieldByName('VL_ICMS').Value        + RetornaValor('NOCIN3VLRICMS');
                    SQLRegC490.FieldByName('VL_BC_ICMS_ST').Value   := SQLRegC490.FieldByName('VL_BC_ICMS_ST').Value  + RetornaValor('NOCIN2VBCST');
                    SQLRegC490.FieldByName('VL_ICMS_ST').Value      := SQLRegC490.FieldByName('VL_ICMS_ST').Value     + RetornaValor('NOCIN3VLRSUBST');
                    SQLRegC490.FieldByName('VL_RED_BC').Value       := SQLRegC490.FieldByName('VL_RED_BC').Value      + VL_RED_BC;
                  end;
                SQLRegC490.FieldByName('VL_IPI').Value          := SQLRegC490.FieldByName('VL_IPI').Value         + RetornaValor('NOCIN3VLRIPI');
                SQLRegC490.Post;
              end;

          Except on e:Exception do
          begin
            Showmessage('Falha ao Calcular RegistroC190: '+E.Message +#13+#10+'Nota Compra: '+SQLPesquisa.FieldByName('NOCPA30NRO').AsString);
            Result := False;
            Exit;
          End; End;
          SQLSegundaPesquisa.Next;
      End;

      SQLRegC490.Close;
      SQLRegC490.MacroByName('MFiltro').Value := '0=0';
      EditTabela.Text := 'Criando Registro C190 -  Totalizando Nota Comra: ' + SQLPesquisa.FieldbyName('NOCPA30NRO').AsString; EditTabela.Update;
      SQLRegC490.Open;
      SQLRegC490.First;

      if not SQLRegC490.IsEmpty then
      begin
        while not SQLRegC490.Eof do
          begin
            Linha := '|C190|'                                               + // 01-Registro C190
                     SQLRegC490CST_ICMS.AsString                      + '|' + // 02-CST_ICMS
                     SQLRegC490CFOP.AsString                          + '|' ; // 03-CFOP
                     if SQLRegC490ALIQ_ICMS.AsString = '0,00' then
                        Linha := Linha +                            '0,00|'
                     Else
                        Linha := Linha + SQLRegC490ALIQ_ICMS.AsString + '|' ; // 04-ALIQ_ICMS
                     Linha := Linha +
                     FormatFloat('0.00',SQLRegC490VL_OPR.Value)       + '|' + // 05-VL_OPR
                     FormatFloat('0.00',SQLRegC490VL_BC_ICMS.Value)   + '|' + // 06-VL_BC_ICMS
                     FormatFloat('0.00',SQLRegC490VL_ICMS.Value)      + '|' + // 07-VL_ICMS
                     FormatFloat('0.00',SQLRegC490VL_BC_ICMS_ST.Value)+ '|' + // 05-VL_OPR
                     FormatFloat('0.00',SQLRegC490VL_ICMS_ST.Value)   + '|' + // 06-VL_BC_ICMS
                     FormatFloat('0.00',SQLRegC490VL_RED_BC.Value)    + '|' + // 07-VL_ICMS
                     FormatFloat('0.00',SQLRegC490VL_IPI.Value)       + '|' + // 07-VL_ICMS
                                                                        '|' ; // 08-COD_OBS

            if Not GravaRegistros('C190') Then Begin Result := False; Exit; End;
            Inc(nC190);
            Inc(Total_Bloco_C);

            SQLRegC490.Next;
          end;
        // limpa dados para novo calculo
        SQLRegC490.First;
        while not SQLRegC490.Eof do
          SQLRegC490.Delete;
      end;
    End;

    Result := True;
end;

Function TFormTelaExportacaoSped.RegistroC410(SerieECF:String; DataRDZ:String): boolean;
begin
 {REGISTRO C410: PIS E COFINS TOTALIZADOS NO DIA (CÓDIGO 02 e 2D).
  Este registro deve ser apresentado sempre que houver produtos totalizados na Redução Z que acarretem valores de PIS e COFINS a serem informados.}

  EditTabela.Text := 'Criando Registro C410 - TOTAIS DE PIS E COFINS DO DIA '+DataRDZ; EditTabela.Update;
  EditTabela.Update;
  SQLCupomC410.Close;

  if not ChkImporta.Checked Then // Se não estiver marcada a opção de gerar a partir dos dados importados....
  begin
    SQLCupomC410.MacroByName('MEmpresa').Value   := 'CUPOM.EMPRICOD  = ' + ComboEmpresa.KeyValue ;
    if chkterminal.Checked then
      SQLCupom.MacroByName('MTerminal').Value  := '0 = 0 '
    else
      SQLCupomC410.MacroByName('MTerminal').Value  := 'CUPOM.TERMICOD  = ' + SQLReducaoZTERMICOD.AsString ;
    SQLCupomC410.MacroByName('MData').Value      := 'CUPOM.CUPODEMIS = "' + FormatDateTime('mm/dd/yyyy',SQLReducaoZREDUDEMIS.Value)  + '"';
    EditTabela.Text := 'Criando Registro C410 - TOTAIS DE PIS E COFINS DO DIA '+FormatDateTime('dd/mm/yyyy',SQLReducaoZREDUDEMIS.Value); EditTabela.Update;
    SQLCupomC410.Open;
    SQLCupomC410.Last;
    Progress.Max := SQLCupomC410.RecordCount;
    Progress.position := 0;
    SQLCupomC410.First;
    while not SQLCupomC410.Eof do
    begin
      Linha :=   '|C410|';                                                           // 01-Registro C410
      if SQLCupomC410.FieldByName('VALORTOTALPIS').IsNull then
        Linha := Linha + '0,00|'
      Else
        Linha := Linha + FormatFloat('0.00',SQLCupomC410.FieldByName('VALORTOTALPIS').Value)         + '|' ; // 02-VL_PIS

      if SQLCupomC410.FieldByName('VALORTOTALCOFINS').isnull then
        Linha := Linha + '0,00|'
      Else
        Linha := Linha + FormatFloat('0.00',SQLCupomC410.FieldByName('VALORTOTALCOFINS').Value)      + '|' ; // 03-VL_COFINS

      if Not GravaRegistros('C410') Then Begin Result := False; Exit; End;
      Inc(nC410);
      Inc(Total_Bloco_C);
      SQLCupomC410.Next;
      Progress.Position := Progress.Position +1;
    end;
    Progress.Position := 0;
    Progress.update;
    SQLCupomC410.Close;
  End Else
  Begin
    SQLC410.SQL.Text := 'Select '+
         'sum (C.valorCofins) as ValorTotalCOFINS,   '+
         'sum (C.ValorPis) as ValorTotalPIS          '+
         'from SPED_C470 C                           '+
         'where C.NUMEROSERIEECF = :xNumECF and      '+
         'C.DATAREDUCAO = :xDataRDZ and              '+
         'C.QTD_CANCEL = :xCancel                    ';

    SQLC410.ParamByName('xNumECF').AsString  := SerieECF;
    SQLC410.ParamByName('xDataRDZ').AsDate   := StrToDate(DataRDZ);
    SQLC410.ParamByName('xCancel').Value     := 0;
    SQLC410.Open;

    SQLC410.Last;
    Progress.Max := SQLC410.RecordCount;
    Progress.position := 0;
    SQLC410.First;
    if (not SQLC410.FieldByName('VALORTOTALPIS').IsNull) and (not SQLC410.FieldByName('VALORTOTALCOFINS').IsNull) then
    begin
      Try
          Linha :=   '|C410|'                                                          + // 01-Registro C410
                     FormatFloat('0.00',SQLC410.FieldByName('VALORTOTALPIS').Value)         + '|' + // 02-VL_PIS
                     FormatFloat('0.00',SQLC410.FieldByName('VALORTOTALCOFINS').Value)      + '|' ; // 03-VL_COFINS
      Except on E:Exception do
      Begin
        Showmessage('Falha ao Totalizar Pis e Cofins no dia '+DataRDZ+' para a ECF '+SerieECF);
        Linha :=   '|C410|'                                                          + // 01-Registro C410
                 FormatFloat('0.00',0)         + '|' + // 02-VL_PIS
                 FormatFloat('0.00',0)      + '|' ; // 03-VL_COFINS

      End; End;

      if Not GravaRegistros('C410') Then
      Begin
        Result := False;
        Exit;
      End;
      Inc(nC410);
      Inc(Total_Bloco_C);
      SQLC410.Next;
      Progress.Position := Progress.Position +1;
    end;
    Progress.Position := 0;
    Progress.update;
    SQLC410.Close;
  End;
  Result := True;
end;

Function TFormTelaExportacaoSped.RegistroC420: boolean;
var AliquotaSTR : String;
begin
  // Registro C420 => REGISTRO DOS TOTALIZADORES PARCIAIS DA REDUÇÃO Z(COD 02 e 2D).
  EditTabela.Text := 'Criando Registro C420 - TOTAIS PARCIAIS DA REDUÇÃO Z(COD 02 e 2D)'; EditTabela.Update;
  EditTabela.Update;
  if (SQLReducaoZREDUN3ALIQ1.value>0) and (SQLReducaoZREDUN3BASE1.value>0) then
     begin
       AliquotaSTR := FormatCurr('00.00',SQLReducaoZREDUN3ALIQ1.Value);
       while pos(',', AliquotaSTR) > 0 do
         delete(AliquotaSTR,pos(',',AliquotaSTR),1);
       Linha := '|C420|'                                                     + // 01-Registro C420
       '01T'+AliquotaSTR                                               + '|' + // 02-COD_TOT_PAR
       FormatFloat('0.00',SQLReducaoZREDUN3BASE1.value)                + '|' + // 03-VLR_ACUM_TOT
       '01'                                                            + '|' + // 04-NR_TOT
                                                                         '|' ; // 05-DESCR_NR_TOT

       if Not GravaRegistros('C420') Then Begin Result := False; Exit; End;
       Progress.Position := Progress.Position + 1;
       Progress.Update;
       Inc(nC420);
       Inc(Total_Bloco_C);
     end;
  if (SQLReducaoZREDUN3ALIQ2.value>0) and (SQLReducaoZREDUN3BASE2.value>0) then
     begin
       AliquotaSTR := FormatCurr('00.00',SQLReducaoZREDUN3ALIQ2.Value);
       while pos(',', AliquotaSTR) > 0 do
         delete(AliquotaSTR,pos(',',AliquotaSTR),1);
       Linha := '|C420|'                                                   + // 01-Registro C420
       '02T'+AliquotaSTR                                             + '|' + // 02-COD_TOT_PAR
       FormatFloat('0.00',SQLReducaoZREDUN3BASE2.value)              + '|' + // 03-VLR_ACUM_TOT
       '02'                                                          + '|' + // 04-NR_TOT
                                                                       '|' ; // 05-DESCR_NR_TOT

       if Not GravaRegistros('C420') Then Begin Result := False; Exit; End;
       Progress.Position := Progress.Position + 1;
       Progress.Update;
       Inc(nC420);
       Inc(Total_Bloco_C);
     end;
  if (SQLReducaoZREDUN3ALIQ3.value>0) and (SQLReducaoZREDUN3BASE3.value>0) then
     begin
       AliquotaSTR := FormatCurr('00.00',SQLReducaoZREDUN3ALIQ3.Value);
       while pos(',', AliquotaSTR) > 0 do
         delete(AliquotaSTR,pos(',',AliquotaSTR),1);
       Linha := '|C420|'                                                   + // 01-Registro C420
       '03T'+AliquotaSTR                                             + '|' + // 02-COD_TOT_PAR
       FormatFloat('0.00',SQLReducaoZREDUN3BASE3.value)              + '|' + // 03-VLR_ACUM_TOT
       '03'                                                          + '|' + // 04-NR_TOT
                                                                       '|' ; // 05-DESCR_NR_TOT

       if Not GravaRegistros('C420') Then Begin Result := False; Exit; End;
       Progress.Position := Progress.Position + 1;
       Progress.Update;
       Inc(nC420);
       Inc(Total_Bloco_C);
     end;
  if (SQLReducaoZREDUN3ALIQ4.value>0) and (SQLReducaoZREDUN3BASE4.value>0) then
     begin
       AliquotaSTR := FormatCurr('00.00',SQLReducaoZREDUN3ALIQ4.Value);
       while pos(',', AliquotaSTR) > 0 do
         delete(AliquotaSTR,pos(',',AliquotaSTR),1);
       Linha := '|C420|'                                                   + // 01-Registro C420
       '04T'+AliquotaSTR                                             + '|' + // 02-COD_TOT_PAR
       FormatFloat('0.00',SQLReducaoZREDUN3BASE4.value)              + '|' + // 03-VLR_ACUM_TOT
       '04'                                                          + '|' + // 04-NR_TOT
                                                                       '|' ; // 05-DESCR_NR_TOT

       if Not GravaRegistros('C420') Then Begin Result := False; Exit; End;
       Progress.Position := Progress.Position + 1;
       Progress.Update;
       Inc(nC420);
       Inc(Total_Bloco_C);
     end;
  if (SQLReducaoZREDUN3ALIQ5.value>0) and (SQLReducaoZREDUN3BASE5.value>0) then
     begin
       AliquotaSTR := FormatCurr('00.00',SQLReducaoZREDUN3ALIQ5.Value);
       while pos(',', AliquotaSTR) > 0 do
         delete(AliquotaSTR,pos(',',AliquotaSTR),1);
       Linha := '|C420|'                                                   + // 01-Registro C420
       '05T'+AliquotaSTR                                             + '|' + // 02-COD_TOT_PAR
       FormatFloat('0.00',SQLReducaoZREDUN3BASE5.value)              + '|' + // 03-VLR_ACUM_TOT
       '05'                                                          + '|' + // 04-NR_TOT
                                                                       '|' ; // 05-DESCR_NR_TOT

       if Not GravaRegistros('C420') Then Begin Result := False; Exit; End;
       Progress.Position := Progress.Position + 1;
       Progress.Update;
       Inc(nC420);
       Inc(Total_Bloco_C);
     end;
  if (SQLReducaoZREDUN3ALIQ6.value>0) and (SQLReducaoZREDUN3BASE6.value>0) then
     begin
       AliquotaSTR := FormatCurr('00.00',SQLReducaoZREDUN3ALIQ6.Value);
       while pos(',', AliquotaSTR) > 0 do
         delete(AliquotaSTR,pos(',',AliquotaSTR),1);
       Linha := '|C420|'                                                   + // 01-Registro C420
       '06T'+AliquotaSTR                                             + '|' + // 02-COD_TOT_PAR
       FormatFloat('0.00',SQLReducaoZREDUN3BASE6.value)              + '|' + // 03-VLR_ACUM_TOT
       '06'                                                          + '|' + // 04-NR_TOT
                                                                       '|' ; // 05-DESCR_NR_TOT

       if Not GravaRegistros('C420') Then Begin Result := False; Exit; End;
       Progress.Position := Progress.Position + 1;
       Progress.Update;
       Inc(nC420);
       Inc(Total_Bloco_C);
     end;
  if (SQLReducaoZREDUN3ALIQ7.value>0) and (SQLReducaoZREDUN3BASE7.value>0) then
     begin
       AliquotaSTR := FormatCurr('00.00',SQLReducaoZREDUN3ALIQ7.Value);
       while pos(',', AliquotaSTR) > 0 do
         delete(AliquotaSTR,pos(',',AliquotaSTR),1);
       Linha := '|C420|'                                                   + // 01-Registro C420
       '07T'+AliquotaSTR                                             + '|' + // 02-COD_TOT_PAR
       FormatFloat('0.00',SQLReducaoZREDUN3BASE7.value)              + '|' + // 03-VLR_ACUM_TOT
       '07'                                                          + '|' + // 04-NR_TOT
                                                                       '|' ; // 05-DESCR_NR_TOT

       if Not GravaRegistros('C420') Then Begin Result := False; Exit; End;
       Progress.Position := Progress.Position + 1;
       Progress.Update;
       Inc(nC420);
       Inc(Total_Bloco_C);
     end;
  if (SQLReducaoZREDUN3ALIQ8.value>0) and (SQLReducaoZREDUN3BASE8.value>0) then
     begin
       AliquotaSTR := FormatCurr('00.00',SQLReducaoZREDUN3ALIQ8.Value);
       while pos(',', AliquotaSTR) > 0 do
         delete(AliquotaSTR,pos(',',AliquotaSTR),1);
       Linha := '|C420|'                                                   + // 01-Registro C420
       '08T'+AliquotaSTR                                             + '|' + // 02-COD_TOT_PAR
       FormatFloat('0.00',SQLReducaoZREDUN3BASE8.value)              + '|' + // 03-VLR_ACUM_TOT
       '08'                                                          + '|' + // 04-NR_TOT
                                                                       '|' ; // 05-DESCR_NR_TOT

       if Not GravaRegistros('C420') Then Begin Result := False; Exit; End;
       Progress.Position := Progress.Position + 1;
       Progress.Update;
       Inc(nC420);
       Inc(Total_Bloco_C);
     end;
  if SQLReducaoZREDUN3BASEF.value > 0 then
     begin
       Linha := '|C420|'                                                   + // 01-Registro C420
       'F1'                                                          + '|' + // 02-COD_TOT_PAR
       FormatFloat('0.00',SQLReducaoZREDUN3BASEF.value)              + '|' + // 03-VLR_ACUM_TOT
                                                                       '|' + // 04-NR_TOT
                                                                       '|' ; // 05-DESCR_NR_TOT

       if Not GravaRegistros('C420') Then Begin Result := False; Exit; End;
       Progress.Position := Progress.Position + 1;
       Progress.Update;
       Inc(nC420);
       Inc(Total_Bloco_C);
     end;
  if SQLReducaoZREDUN3BASEI.value > 0 then
     begin
       Linha := '|C420|'                                                   + // 01-Registro C420
       'I1'                                                          + '|' + // 02-COD_TOT_PAR
       FormatFloat('0.00',SQLReducaoZREDUN3BASEI.value)              + '|' + // 03-VLR_ACUM_TOT
                                                                       '|' + // 04-NR_TOT
                                                                       '|' ; // 05-DESCR_NR_TOT

       if Not GravaRegistros('C420') Then Begin Result := False; Exit; End;
       Progress.Position := Progress.Position + 1;
       Progress.Update;
       Inc(nC420);
       Inc(Total_Bloco_C);
     end;
  if SQLReducaoZREDUN3BASEN.value > 0 then
     begin
       Linha := '|C420|'                                                   + // 01-Registro C420
       'N1'                                                          + '|' + // 02-COD_TOT_PAR
       FormatFloat('0.00',SQLReducaoZREDUN3BASEN.value)              + '|' + // 03-VLR_ACUM_TOT
                                                                       '|' + // 04-NR_TOT
                                                                       '|' ; // 05-DESCR_NR_TOT

       if Not GravaRegistros('C420') Then Begin Result := False; Exit; End;
       Progress.Position := Progress.Position + 1;
       Progress.Update;
       Inc(nC420);
       Inc(Total_Bloco_C);
     end;
  if SQLReducaoZREDUN3BASES.value > 0 then
     begin
       AliquotaSTR := FormatCurr('00.00',SQLReducaoZREDUN3ALIQS.Value);
       while pos(',', AliquotaSTR) > 0 do
         delete(AliquotaSTR,pos(',',AliquotaSTR),1);

       Linha := '|C420|'                                                   + // 01-Registro C420
       '01S'+AliquotaSTR                                             + '|' + // 02-COD_TOT_PAR
       FormatFloat('0.00',SQLReducaoZREDUN3BASES.value)              + '|' + // 03-VLR_ACUM_TOT
       '01'                                                          + '|' + // 04-NR_TOT
                                                                       '|' ; // 05-DESCR_NR_TOT

       if Not GravaRegistros('C420') Then Begin Result := False; Exit; End;
       Progress.Position := Progress.Position + 1;
       Progress.Update;
       Inc(nC420);
       Inc(Total_Bloco_C);
     end;
  if SQLReducaoZREDUN3VLRCANC.value > 0 then
     begin
       Linha := '|C420|'                                                   + // 01-Registro C420
       'Can-T'                                                       + '|' + // 02-COD_TOT_PAR
       FormatFloat('0.00',SQLReducaoZREDUN3VLRCANC.value)            + '|' + // 03-VLR_ACUM_TOT
       ''                                                            + '|' + // 04-NR_TOT
                                                                       '|' ; // 05-DESCR_NR_TOT

       if Not GravaRegistros('C420') Then Begin Result := False; Exit; End;
       Progress.Position := Progress.Position + 1;
       Progress.Update;
       Inc(nC420);
       Inc(Total_Bloco_C);
     end;

  Progress.Position := 0;
  Progress.update;
end;

Function TFormTelaExportacaoSped.RegistroC420Importado(SerieECF:String; DataRDZ:String): boolean;
var AliquotaSTR : String;

begin
  //Registro C420 => REGISTRO DOS TOTALIZADORES PARCIAIS DA REDUÇÃO Z(COD 02 e 2D). Importados dos arquivos de leitura das ECFs
  EditTabela.Text := 'Criando Registro C420 - TOTAIS PARCIAIS DA REDUÇÃO Z(COD 02 e 2D)'; EditTabela.Update;
  EditTabela.Update;

  SQLC420.Close;
  SQLC420.ParamByName('xSerieECF').AsString := SerieECF;
  SQLC420.ParamByName('xDataRDZ').AsDate    := StrToDate(DataRDZ);
  SQLC420.Open;
  if not SQLC420.IsEmpty then
  begin
    While Not SQLC420.Eof  do
    Begin
       Linha := '|C420|'                                                     + // 01-Registro C420
       SQLC420.FieldByName('TOTALIZADOR').AsString                     + '|' + // 02-COD_TOT_PAR
       FormatFloat('0.00',SQLC420.FieldByName('VALORACUMULADO').Value) + '|' ; // 03-VLR_ACUM_TOT
       if (SQLC420.FieldByName('NUMEROTOTALIZADOR').Value = 0) or (SQLC420.FieldByName('NUMEROTOTALIZADOR').IsNull) Then
          Linha := Linha + '|'
       Else
          Linha := Linha + Copy('00'+Trim(SQLC420.FieldByName('NUMEROTOTALIZADOR').AsString),
          Length('00'+Trim(SQLC420.FieldByName('NUMEROTOTALIZADOR').AsString))-1,2) + '|' ;
       Linha := Linha +                                                     '|' ; // 05-DESCR_NR_TOT

       if Not GravaRegistros('C420') Then
       Begin
          Result := False;
          Exit;
       End;
       Inc(nC420);
       Inc(Total_Bloco_C);
       SQLC420.Next;
    End;
  End;
  SQLC420.Close;
  Progress.Position := 0;
  Progress.update;
  Result := True;
End;


Function TFormTelaExportacaoSped.Registro_Bloco_D: boolean;
Var TemDados:String;
Begin
  SQLPesquisa.SQL.Text := 'Select * from CONHECIMENTOS Where DT_AQUIS >= :DataInicial and DT_AQUIS <= :DataFinal';
  SQLPesquisa.ParamByName('DataInicial').AsDate   := De.Date;
  SQLPesquisa.ParamByName('DataFinal').AsDate     := Ate.Date;
  SQLPesquisa.Open;

  TemDados := '0'; // Tem movimento
  If SQLPesquisa.IsEmpty then
    TemDados := '1'; // Não Tem Movimentos

  Linha :=  '|D001|'    + // Incio do registro |D001| e Indicador de Nota de Entrada |0|
            TemDados + '|';         // 0 - Indicação de Movimento - 1 - Indicacao de Sem Movimento

  If Not GravaRegistros('D001') Then Begin Result := False; Exit; End;
  nD001 := 1;
  Total_Bloco_D := 1;

  if TemDados = '0' then
  Begin

    EditTabela.Text := 'Criando - BLOCO D100 - Notas Fiscais de TRANSPORTE'; EditTabela.Update;
    if Not RegistroD100 Then Begin Result := False; Exit; End;

  End;

  Linha := '|D990|'     + // Encerramento do registro |D990|
            IntToStr(Total_Bloco_D+1)  +'|'    ; // Numer de linha do bloco D
  If Not GravaRegistros('D990') Then Begin Result := False; Exit; End;
  nD990 := 1;
  Inc(Total_Bloco_D);
End;

Function TFormTelaExportacaoSped.RegistroD100: boolean;
var vCodTransp:String;
Begin
  EditTabela.Text := 'Gravando Registro D100 - Conhecimento Transportes';
  SQLPesquisa.Last;
  Progress.Max := SQLPesquisa.RecordCount;
  Progress.Position := 0;
  Progress.Update;
  SQLPesquisa.First;
  nD100 := 0;
  nD190 := 0;

  While not SQLPesquisa.eof do
  begin
    Try
      // NO registro 0150 as transportadoras recebem '99999' antes do seu codigo
      //vCodTransp := '99999'+ SQLPesquisa.FieldbyName('COD_PART').AsString;

      vCodTransp := DM.SQLLocate('SPED_PART','COD_TRANSP','COD_PART', SQLPesquisa.FieldByName('COD_PART').AsString);

      if vCodTransp = '' then
      Begin
        if SQLCod_Part.Locate('CNPJ', DM.SQLLocate('TRANSPORTADORA','TRANICOD','TRANA14CGC',SQLPesquisa.FieldByName('COD_PART').AsString),[]) then
           vCodTransp := SQLCod_Part.Fieldbyname('Cod_part').AsString;
        if SQLCod_Part.Locate('CNPJ', DM.SQLLocate('TRANSPORTADORA','TRANICOD','TRANA14CGC',SQLPesquisa.FieldByName('COD_PART').AsString),[]) then
           vCodTransp := SQLCod_Part.Fieldbyname('Cod_part').AsString;


      End;

      Linha := '|D100|'                                                   + // 01-Registro D100
      SQLPesquisa.FieldByName('IND_OPER').asstring                   + '|'+ // 02 IND_OPER Indicador do tipo de operação:
      SQLPesquisa.FieldByName('IND_EMIT').asstring                   + '|'+ // 03 IND_EMIT Indicador do emitente do documento fiscal:
      vCodTransp                                                     + '|'+ // 04 COD_PART Código do participante (campo 02 do Registro 0150):
      SQLPesquisa.FieldByName('COD_MOD').asstring                    + '|'+ // 05 COD_MOD Código do modelo do documento fiscal, conforme a
      SQLPesquisa.FieldByName('COD_SIT').asstring                    + '|'+ // 06 COD_SIT Código da situação do documento fiscal, conforme a
      SQLPesquisa.FieldByName('SERIE_DOC').asstring                  + '|'+ // 07 SER Série do documento fiscal C 004 - OC OC
      SQLPesquisa.FieldByName('SUBSERIE').asstring                   + '|'+ // 08 SUB Subsérie do documento fiscal C 003 - OC OC
      SQLPesquisa.FieldByName('NUM_DOC').asstring                    + '|'+ // 09 NUM_DOC Número do documento fiscal N 009 - O O
      SQLPesquisa.FieldByName('CHV_CTE').asstring                    + '|'+ // 10 CHV_CTE Chave do Conhecimento de Transporte Eletrônico N 044* - OC OC
      FormatDateTime('ddmmyyyy',SQLPesquisa.FieldByName('DT_DOC').AsDateTime) + '|'+ // 11 DT_DOC Data da emissão do documento fiscal N 008* - O O
      FormatDateTime('ddmmyyyy',SQLPesquisa.FieldByName('DT_AQUIS').AsDateTime) + '|'+ // 12 DT_A_P Data da aquisição ou da prestação do serviço N 008* - O OC
      SQLPesquisa.FieldByName('TP_CT_E').asstring                    + '|'+ // 13 TP_CT-e Tipo de Conhecimento de Transporte Eletrônico conforme
      SQLPesquisa.FieldByName('CHV_CTE_REF').asstring                + '|'+ // 14 CHV_CTE_REF Chave do CT-e de referência cujos valores foram
      FormatFloat('0.00',SQLPesquisa.FieldByName('VL_DOC').Value)    + '|'+ // 15 VL_DOC Valor total do documento fiscal N - 02 O O
      FormatFloat('0.00',SQLPesquisa.FieldByName('VL_DESC').Value)   + '|'+ // 16 VL_DESC Valor total do desconto N - 02 OC OC
      SQLPesquisa.FieldByName('IND_FRT').asstring                    + '|'+ // 17 IND_FRT Indicador do tipo do frete:
      FormatFloat('0.00',SQLPesquisa.FieldByName('VL_SERV').Value)   + '|'+ // 18 VL_SERV Valor total da prestação de serviço N - 02 O O
      FormatFloat('0.00',SQLPesquisa.FieldByName('VL_BC_ICMS').Value)   + '|'+ // 19 VL_BC_ICMS Valor da base de cálculo do ICMS N - 02 OC OC
      FormatFloat('0.00',SQLPesquisa.FieldByName('VL_ICMS').Value)   + '|'+ // 20 VL_ICMS Valor do ICMS N - 02 OC OC
      FormatFloat('0.00',SQLPesquisa.FieldByName('VL_NAOTRIBUT').Value)   + '|'+ // 21 VL_NT Valor não-tributado N - 02 OC OC
      '|'                                                            + // 22 COD_INF Código da informação complementar do documento fiscal
      SQLPesquisa.FieldByName('COD_CTA').asstring                    + '|'; // 23 COD_CTA Código da conta analítica contábil debitada/creditada C - - OC OC
    Except on E:Exception Do
    begin
      ShowMessage('Falha ao Gravar Registro: '+E.Message);
      Result  := False;
      Exit;
    end; End;

    if Not GravaRegistros('D100') Then Begin Result := False; Exit; End;
    Progress.Position := Progress.Position + 1;
    Progress.Update;
    Inc(nD100);
    Inc(Total_Bloco_D);

    // para cada blodo D100 ao nenos 1 Bloco D190
    EditTabela.Text := 'Criando - BLOCO D190 - Analitico TRANSPORTES'; EditTabela.Update;
    if Not RegistroD190 Then Begin Result := False; Exit; End;

    SQLPesquisa.Next;
  End;
  Result := True;
end;

Function TFormTelaExportacaoSped.RegistroD190: boolean;
Begin
  Try
    EditTabela.Text := 'Gravando Registro D190 - Analitico Conhecimento de Transportes';
    Linha := '|D190|'                                                              + // 01-Registro D100
    SQLPesquisa.FieldByName('CST_ICMS').asstring                              + '|'+ // 02 CST_ICMS Código da Situação Tributária, conforme a tabela
    SQLPesquisa.FieldByName('CON_CFOP').asstring                              + '|'+ // 03 CFOP Código Fiscal de Operação e Prestação, conforme
    FormatFloat('0.00',SQLPesquisa.FieldByName('ALIQ_ICMS').Value)            + '|'+ // 04 ALIQ_ICMS Alíquota do ICMS N 006 02 OC OC
    FormatFloat('0.00',SQLPesquisa.FieldByName('VL_DOC').Value)               + '|'+ // 05 VL_OPR Valor da operação correspondente à combinação
    FormatFloat('0.00',SQLPesquisa.FieldByName('VL_BC_ICMS').Value)           + '|'+ // 06 VL_BC_ICMS
    FormatFloat('0.00',SQLPesquisa.FieldByName('VL_ICMS').Value)              + '|'+ // 07 VL_ICMS
    FormatFloat('0.00',SQLPesquisa.FieldByName('RED_BC_ICMS').Value)          + '|'+ // 08 VL_RED_BC Valor não tributado em função da redução da base
    ''                                                                        + '|'; // 09 COD_OBS Código da observação do lançamento fiscal
  Except on E:Exception do
  begin
    ShowMessage('Falha ao Gravar Registro: '+E.Message);
    Result  := False;
    Exit;
  end; End;
  if Not GravaRegistros('D190') Then Begin Result := False; Exit; End;
  Inc(nD190);
  Inc(Total_Bloco_D);
  Result := True;
end;

Function TFormTelaExportacaoSped.Registro_Bloco_E: boolean;
Begin
  Linha :=  '|E001|'    + // Incio do registro |E001| e Indicador de Nota de Entrada |0|
             '1|'        ; // 0 - Indicação de Movimento - 1 - Indicacao de Sem Movimento
  If Not GravaRegistros('E001') Then Begin Result := False; Exit; End;
  nE001 := 1;
  Total_Bloco_E := 1;

  Linha := '|E990|'     + // Encerramento do registro |F990|
           '2|'        ; // Numer de linha do bloco F
  If Not GravaRegistros('E990') Then Begin Result := False; Exit; End;
  nE990 := 1;
  Inc(Total_Bloco_E);
End;

Function TFormTelaExportacaoSped.Registro_Bloco_G: boolean;
Begin
  Linha :=  '|G001|'    + // Incio do registro |G001| e Indicador de Nota de Entrada |0|
             '1|'        ; // 0 - Indicação de Movimento - 1 - Indicacao de Sem Movimento
  If Not GravaRegistros('G001') Then Begin Result := False; Exit; End;
  nG001 := 1;
  Total_Bloco_G := 1;

  Linha := '|G990|'     + // Encerramento do registro |G990|
           '2|'        ; // Numer de linha do bloco G
  If Not GravaRegistros('G990') Then Begin Result := False; Exit; End;
  nG990 := 1;
  Inc(Total_Bloco_G);
End;

Function TFormTelaExportacaoSped.Registro_Bloco_1: boolean;
var nCreditosICMS, nCombustiveis, nVendaCartao  :String;
    CombAbertura, CombFechamento : Extended;
    VolumeInicial, TotalEntradas, TotalSaidas, TotalPerdas, TotalSobras   : Extended;
    nTanque : Integer;
Begin

 { SQLPesquisa.Close;
  SQLPesquisa.SQL.Text := 'Select * from LMCCAB where Empricod = :xEmpresa and '+
  'LMCADDTMOV >= :xDataInicial and LMCADDTMOV <= :xDataFinal order by EMPRICOD, LILMICOD, LMCAIPAGATUAL, LMCADDTMOV';
  SQLPesquisa.Prepare;
  SQLPesquisa.ParamByName('xEmpresa').Value        := ComboEmpresa.KeyValue;
  SQLPesquisa.ParamByName('xDataInicial').AsString := FormatDateTime('mm/dd/yyyy',De.Date);
  SQLPesquisa.ParamByName('xDataFinal').AsString   := FormatDateTime('mm/dd/yyyy',ate.Date);
  SQLPesquisa.Open;
  CombAbertura   := 0;
  CombFechamento := 0;
  TotalEntradas  := 0;
  TotalSaidas    := 0;
  n1300          := 0;

  if SQLPesquisa.IsEmpty then
    Linha :=  '|1001|1|' // 0 - Indicação de Movimento - 1 - Indicacao de Sem Movimento
  Else
  }

  Linha :=  '|1001|1|'; // 0 - Indicação de Movimento - 1 - Indicacao de Sem Movimento

  If Not GravaRegistros('1001') Then Begin Result := False; Exit; End;
  n1001 := 1;
  Total_Bloco_1 := 1;

  // verifica se tem produto que é combustivel
  SQLPesquisa.Close;
  SQLPesquisa.SQL.Text := 'Select PRODICOD FROM PRODUTO WHERE PRODA1TIPO = :xTipo';
  SQLPesquisa.ParamByName('xTipo').AsString := '4'; // Combustiveis
  SQLPesquisa.Open;
  if SQLPesquisa.IsEmpty then
    nCombustiveis := 'N'
  Else
    nCombustiveis := 'S';
  SQLPesquisa.Close;

  // veriica se tem venda no cartao
  SQLPesquisa.SQL.Text := 'Select CUPOA13ID FROM CUPOM WHERE CUPOCTIPOPADRAO = :xTipo';
  SQLPesquisa.ParamByName('xTipo').AsString := 'CRT'; // CARTAO
  SQLPesquisa.Open;

  if SQLPesquisa.IsEmpty then
    nVendaCartao := 'N'
  Else
    nVendaCartao := 'S';
  SQLPesquisa.Close;

// com essa linha nao passava no validador

{  Linha := '|1010|' +                                                          // 01 REG Texto fixo contendo "1010"
           'N'                                                         + '|' + // 02 IND_EXP Reg. 1100 - Ocorreu averbação (conclusão) de exportação no período
           'N'                                                         + '|' + // 03 IND_CCRF Reg 1200 – Existem informações acerca de créditos de ICMS a serem controlados, definidos pela Sefaz:
           nCombustiveis                                               + '|' + // 04 IND_COMB Reg. 1300 – É comercio varejista de combustíveis:
           'N'                                                         + '|' + // 05 IND_USINA Reg. 1390 – Usinas de açúcar e/álcool – O estabelecimento é produtor de açúcar e/ou álcool carburante:
           'N'                                                         + '|' + // 06 IND_VA Reg 1400 – Existem informações a serem prestadas neste registro e o registro é obrigatório em sua Unidade da Federação:
           'N'                                                         + '|' + // 07 IND_EE Reg 1500 - A empresa é distribuidora de energia e ocorreu fornecimento de energia elétrica para consumidores de outra UF:
          // nVendaCartao                                                + '|' + // 08 IND_CART Reg 1600 - Realizou vendas com Cartão de Crédito ou de débito:
          // foi colocado N fixo pois não foi implementado o bloco 1600
           'N'                                                         + '|' + // 08 IND_CART Reg 1600 - Realizou vendas com Cartão de Crédito ou de débito:
           'N'                                                         + '|' + // 09 IND_FORM Reg. 1700 - É obrigatório em sua unidade da federação o controle de utilização de documentos fiscais em papel:
           'N'                                                         + '|' ; // 10 IND_AER Reg 1800 – A empresa prestou serviços de transporte aéreo de cargas e de passageiros:

  If Not GravaRegistros('1010') Then Begin Result := False; Exit; End;
  inc(Total_Bloco_1);
  n1010 := 1;    }


  // REGISTRO 1100: REGISTRO DE INFORMAÇÕES SOBRE EXPORTAÇÃO.
     {Este registro deve ser preenchido no mês em que se concluir a exportação direta ou indireta pelo efetivo
      exportador.}

  // REGISTRO 1105: DOCUMENTOS FISCAIS DE EXPORTAÇÃO.
     {Este registro deve ser apresentado para discriminar os documentos fiscais vinculados à exportação.}

  // REGISTRO 1110: OPERAÇÕES DE EXPORTAÇÃO INDIRETA - MERCADORIAS DE TERCEIROS.
     {Este registro deve ser apresentado para informar a origem das mercadorias adquiridas para a exportação.}

  // REGISTRO 1200: CONTROLE DE CRÉDITOS FISCAIS - ICMS.
     {Este registro demonstra a conta corrente dos créditos fiscais de ICMS, controlados extra-apuração. Cada UF determinará a
     obrigatoriedade de apresentação deste registro.}

  // REGISTRO 1210: UTILIZAÇÃO DE CRÉDITOS FISCAIS – ICMS.
     {Este registro deve ser apresentado para detalhar a utilização de créditos fiscais de ICMS no período. O somatório dos
      valores do campo 04 deste registro deve corresponder ao informado no campo 06 do registro 1200.}

  // REGISTRO 1300: MOVIMENTAÇÃO DIÁRIA DE COMBUSTÍVEIS
  {Seleciona os cabecalhos do LMC na tabela LMCCAB para o periodo de apuração}

  SQLPesquisa.Close;
  SQLPesquisa.SQL.Text := 'Select * from LMCCAB where Empricod = :xEmpresa and '+
  'LMCADDTMOV >= :xDataInicial and LMCADDTMOV <= :xDataFinal order by EMPRICOD, LILMICOD, LMCAIPAGATUAL, LMCADDTMOV';
  SQLPesquisa.Prepare;
  SQLPesquisa.ParamByName('xEmpresa').Value        := ComboEmpresa.KeyValue;
  SQLPesquisa.ParamByName('xDataInicial').AsString := FormatDateTime('mm/dd/yyyy',De.Date);
  SQLPesquisa.ParamByName('xDataFinal').AsString   := FormatDateTime('mm/dd/yyyy',ate.Date);
  SQLPesquisa.Open;
  CombAbertura   := 0;
  CombFechamento := 0;
  TotalEntradas  := 0;
  TotalSaidas    := 0;
  n1300          := 0;

  if not SQLPesquisa.IsEmpty then
  begin

    EditTabela.Text := 'Registrando LMC do Estabelecimento';
    SQLPesquisa.Last;
    Progress.Max := SQLPesquisa.RecordCount;
    Progress.Position := 0;
    Progress.Update;
    SQLPesquisa.First;

    While not SQLPesquisa.eof do
    begin
       CombAbertura  :=SQLPesquisa.FieldByname('LMCAN2TQI1').Value + SQLPesquisa.FieldByname('LMCAN2TQI2').Value +
                       SQLPesquisa.FieldByname('LMCAN2TQI3').Value + SQLPesquisa.FieldByname('LMCAN2TQI4').Value +
                       SQLPesquisa.FieldByname('LMCAN2TQI5').Value + SQLPesquisa.FieldByname('LMCAN2TQI6').Value ;

       CombFechamento:=SQLPesquisa.FieldByname('LMCAN2TQF1').Value + SQLPesquisa.FieldByname('LMCAN2TQF2').Value +
                       SQLPesquisa.FieldByname('LMCAN2TQF3').Value + SQLPesquisa.FieldByname('LMCAN2TQF4').Value +
                       SQLPesquisa.FieldByname('LMCAN2TQF5').Value + SQLPesquisa.FieldByname('LMCAN2TQF6').Value ;

       // Pesquisa entradas do produto registradas no livro, dia e pagina atual da tabela SQLPesquisa
       SQLSubPesquisa.Close;
       SQLSubPesquisa.SQL.Text := 'select sum (lmenn2qte) as Entradas from lmcentrada '+
       'where empricod = :xEmpresa and lilmicod = :xLivroCodigo and LMENIPAGATUAL = :xPag and PRODICOD = :xProd';
       SQLSubPesquisa.Parambyname('xEmpresa').value := ComboEmpresa.KeyValue;
       SQLSubPesquisa.ParamByName('xLivroCodigo').AsString := SQLPesquisa.Fieldbyname('LILMICOD').AsString;
       SQLSubPesquisa.ParamByName('xPag').AsString         := SQLPesquisa.FieldByname('LMCAIPAGATUAL').asstring;
       SQLSubPesquisa.ParamByName('xProd').AsString        := SQLPesquisa.FieldByname('PRODICOD').asstring;
       SQLSubPesquisa.Open;
       if SQLSubPesquisa.FieldByname('Entradas').value > 0 then
          TotalEntradas := SQLSubPesquisa.FieldByname('Entradas').value
       Else
          TotalEntradas := 0;

       Linha := '|1300|' +                                                  // 01 REG Texto fixo contendo "1300"
       SQLPesquisa.FieldByName('PRODICOD').AsString                                  + '|' + // 02 COD_ITEM Código do Produto, constante do registro 0200
       FormatDateTime('ddmmyyyy',SQLPesquisa.FieldbyName('LMCADDTMOV').AsDateTime)   + '|' + // DT_FECH Data do fechamento da movimentação
       FormatFloat('0.000',CombAbertura)                                             + '|' + // 04 ESTQ_ABERT Estoque no inicio do dia, em litros N - 03 O
       FormatFloat('0.000',TotalEntradas)                                            + '|' + // 05 VOL_ENTR Volume Recebido no dia (em litros) N - 03 O
       FormatFloat('0.000',CombAbertura + TotalEntradas)                             + '|' + // 06 VOL_DISP Volume Disponível (04 + 05), em litros N - 03 O
       FormatFloat('0.000',SQLPesquisa.FieldbyName('LMCAN2QTDVENDIA').Value)         + '|' + // 07 VOL_SAIDAS Volume Total das Saídas, em litros N - 03 O
       FormatFloat('0.000',SQLPesquisa.FieldbyName('LMCAN2ESTESCRIT').Value)         + '|' ; // 08 ESTQ_ESCR Estoque Escritural (06 – 07), litros N - 03 O

       if SQLPesquisa.FieldByName('LMCAN2VLRPERDSOB').Value > 0 Then
          Linha := Linha + FormatFloat('0.000',SQLPesquisa.FieldbyName('LMCAN2VLRPERDSOB').Value)          + '|'  // 09 VAL_AJ_PERDA Valor da Perda, em litros N - 03 O
       Else
         Linha := Linha + '0,00|';  // 09 VAL_AJ_PERDA Valor da Perda, em litros

       if SQLPesquisa.FieldByName('LMCAN2VLRPERDSOB').Value < 0 Then
          Linha := Linha + FormatFloat('0.000',-SQLPesquisa.FieldbyName('LMCAN2VLRPERDSOB').Value)          + '|'  // 10 VAL_AJ_GANHO Valor do ganho, em litros N - 03 O
       Else
         Linha := Linha + '0,00|';  // 09 VAL_AJ_PERDA Valor da Perda, em litros
       Linha := Linha +
       FormatFloat('0.000',SQLPesquisa.FieldbyName('LMCAN2ESTFECHAM').Value)          + '|' ; // 11 FECH_FISICO Estoque de Fechamento, em litros N - 03 O

      If Not GravaRegistros('1300') Then Begin Result := False; Exit; End;
      inc(n1300) ;
      Inc(Total_Bloco_1);

      // REGISTRO 1310: MOVIMENTAÇÃO DIÁRIA DE COMBUSTÍVEIS POR TANQUE
      SQLSubPesquisa.Close;
      // seleciona os tanques que tem o combustivel da folha lmc atual
      SQLSubPesquisa.SQL.Text := 'Select * from tanque where EMPRICOD = ' + SQLPesquisa.FieldByname('Empricod').AsString + ' and ' +
      'PRODICOD = ' + SQLPesquisa.FieldByname('PRODICOD').AsString + ' order by TANQICOD';
      SQLSubPesquisa.Open;

      nTanque := 1;
      TotalPerdas := 0;
      TotalSobras := 0;
      While not SQLSubPesquisa.eof do
      begin
        Linha := '|1310|'+
        SQLSubPesquisa.FieldByname('TANQICOD').AsString            + '|' ; // NUM_TANQUE Tanque que armazena o combustível.
        Case nTanque of           // 03 ESTQ_ABERT Estoque no inicio do dia, em litros
          1 : begin
              VolumeInicial := SQLPesquisa.FieldByname('LMCAN2TQI1').value;
              if SQLPesquisa.FieldByName('LMCAN2TQSBR1').VALUE > 0 Then
                TotalPerdas :=  TotalPerdas + SQLPesquisa.FieldByName('LMCAN2TQSBR1').value
              else
                TotalSobras :=  TotalSobras + SQLPesquisa.FieldByName('LMCAN2TQSBR1').value;
              end;

          2 : begin
              VolumeInicial := SQLPesquisa.FieldByname('LMCAN2TQI2').value;
              if SQLPesquisa.FieldByName('LMCAN2TQSBR2').VALUE > 0 Then
                TotalPerdas :=  TotalPerdas + SQLPesquisa.FieldByName('LMCAN2TQSBR2').value
              else
                TotalSobras :=  TotalSobras + SQLPesquisa.FieldByName('LMCAN2TQSBR2').value;
              end;
          3 : begin
              VolumeInicial := SQLPesquisa.FieldByname('LMCAN2TQI3').value;
              if SQLPesquisa.FieldByName('LMCAN2TQSBR3').VALUE > 0 Then
                TotalPerdas :=  TotalPerdas + SQLPesquisa.FieldByName('LMCAN2TQSBR3').value
              else
                TotalSobras :=  TotalSobras + SQLPesquisa.FieldByName('LMCAN2TQSBR3').value;
              end;
          4 : begin
              VolumeInicial := SQLPesquisa.FieldByname('LMCAN2TQI4').value;
              if SQLPesquisa.FieldByName('LMCAN2TQSBR4').VALUE > 0 Then
                TotalPerdas :=  TotalPerdas + SQLPesquisa.FieldByName('LMCAN2TQSBR4').value
              else
                TotalSobras :=  TotalSobras + SQLPesquisa.FieldByName('LMCAN2TQSBR4').value;
              end;
          5 : begin
              VolumeInicial := SQLPesquisa.FieldByname('LMCAN2TQI5').value;
              if SQLPesquisa.FieldByName('LMCAN2TQSBR5').VALUE > 0 Then
                TotalPerdas :=  TotalPerdas + SQLPesquisa.FieldByName('LMCAN2TQSBR5').value
              else
                TotalSobras :=  TotalSobras + SQLPesquisa.FieldByName('LMCAN2TQSBR5').value;
              end;
          6 : begin
              VolumeInicial := SQLPesquisa.FieldByname('LMCAN2TQI6').value;
              if SQLPesquisa.FieldByName('LMCAN2TQSBR6').VALUE > 0 Then
                TotalPerdas :=  TotalPerdas + SQLPesquisa.FieldByName('LMCAN2TQSBR6').value
              else
                TotalSobras :=  TotalSobras + SQLPesquisa.FieldByName('LMCAN2TQSBR6').value;
              end;
        End;
        Linha := Linha +  FormatFloat('0.000',VolumeInicial) + '|';

        // verifica e calcula os recebimentos no tanque no dia
        SQLSegundaPesquisa.SQL.Text := 'Select * from LMCENTRADA where EmpriCod = ' + SQLPesquisa.FieldByname('Empricod').AsString + ' and ' +
        'PRODICOD = ' + SQLPesquisa.FieldByname('PRODICOD').AsString + ' and TANQICOD = '+ SQLSUBPesquisa.Fieldbyname('TANQICOD').AsString   +
        ' and LILMICOD = '+SQLPesquisa.Fieldbyname('LILMICOD').AsString + ' and LMENIPAGATUAL = '+SQLPesquisa.Fieldbyname('LMCAIPAGATUAL').asstring;

        SQLSegundaPesquisa.prepare;
        SQLSegundaPesquisa.Open;

        TotalEntradas := 0;
        While not SQLSegundaPesquisa.Eof do
        begin
          TotalEntradas := TotalEntradas + SQLSegundaPesquisa.FieldByname('LMENN2QTE').Value;
          SQLSegundaPesquisa.Next;
        end;

        SQLSegundaPesquisa.Close;

        // verifica e calcula as vendas efetuadas no dia desde combustível
        SQLSegundaPesquisa.SQL.Text := 'Select * from LMCSaida where EmpriCod = ' + SQLPesquisa.FieldByname('Empricod').AsString + ' and ' +
        'PRODICOD = ' + SQLPesquisa.FieldByname('PRODICOD').AsString + ' and TANQICOD = '+ SQLSUBPesquisa.Fieldbyname('TANQICOD').AsString   +
        ' and LILMICOD = '+SQLPesquisa.Fieldbyname('LILMICOD').AsString + ' and LMSAIPAGATUAL = '+SQLPesquisa.Fieldbyname('LMCAIPAGATUAL').asstring;

        SQLSegundaPesquisa.prepare;
        SQLSegundaPesquisa.Open;

        TotalSaidas   := 0;

        While not SQLSegundaPesquisa.Eof do
        begin
          TotalSaidas := TotalSaidas + (SQLSegundaPesquisa.FieldByname('LMSAN2FECHAME').Value - SQLSegundaPesquisa.FieldByname('LMSAN2ABERTUR').Value - SQLSegundaPesquisa.FieldByname('LMSAN2AFERIR').Value  );
          SQLSegundaPesquisa.Next;
        end;

        Linha := Linha + FormatFloat('0.000',TotalEntradas)                           + '|' + //  04 VOL_ENTR Volume Recebido no dia (em litros)
                 FormatFloat('0.000',VolumeInicial + TotalEntradas)                   + '|' + //  05 VOL_DISP Volume Disponível (03 + 04), em litros
                 FormatFloat('0.000',TotalSaidas)                                     + '|' + //  06 VOL_SAIDAS Volume Total das Saídas, em litros
                 FormatFloat('0.000',(VolumeInicial + TotalEntradas) - TotalSaidas)   + '|' + //  07 ESTQ_ESCR Estoque Escritural(05 – 06), litros
                 FormatFloat('0.000',TotalPerdas)                                     + '|' + //  08 VAL_AJ_PERDA Valor da Perda, em litros
                 FormatFloat('0.000',-TotalSobras)                                    + '|' + //  09 VAL_AJ_GANHO Valor do ganho, em litros
                 FormatFloat('0.000',SQLPesquisa.Fieldbyname('LMCAN2ESTFECHAM').Value)+ '|'; // 10 FECH_FISICO Volume aferido no tanque, em litros. Estoque de fechamento físico do tanque.

        If Not GravaRegistros('1310') Then Begin Result := False; Exit; End;
        Inc(n1310);
        Inc(Total_Bloco_1);

        SQLSubPesquisa.Next;
        inc(nTanque);
      End;

      // REGISTRO 1320: VOLUME DE VENDAS
      SQLSegundaPesquisa.First;
      While Not SQLSegundaPesquisa.Eof do
      begin
        Linha := '|1320|'+                                                               // 01 REG Texto fixo contendo "1320"
        SQLSegundaPesquisa.Fieldbyname('BOMBICOD').AsString                         + '|' + // 02 NUM_BICO Bico Ligado à Bomba
        ''                                                                          + '|' + // 03 NR_INTERV Número da intervenção
        ''                                                                          + '|' + // 04 MOT_INTERV Motivo da Intervenção C 050 - OC
        ''                                                                          + '|' + // 05 NOM_INTERV Nome do Interventor C 030 - OC
        ''                                                                          + '|' + // 06 CNPJ_INTERV CNPJ da empresa responsável pela intervenção N 014* - OC
        ''                                                                          + '|' + // 07 CPF_INTERV CPF do técnico responsável pela intervenção N 011* - OC
        FormatFloat('0.000',SQLSegundaPesquisa.Fieldbyname('LMSAN2FECHAME').value)  + '|' + // 08 VAL_FECHA Valor da leitura final do contador, no fechamento do bico. N - 03 O
        FormatFloat('0.000',SQLSegundapesquisa.Fieldbyname('LMSAN2ABERTUR').Value)  + '|' + // 09 VAL_ABERT Valor da leitura inicial do contador, na abertura do bico. N - 03 O
        FormatFloat('0.000',SQLSegundaPesquisa.Fieldbyname('LMSAN2AFERIR').Value)   + '|' + // 10 VOL_AFERI Aferições da Bomba, em litros
        FormatFloat('0.000', (SQLSegundaPesquisa.FieldByname('LMSAN2FECHAME').Value -
        SQLSegundaPesquisa.FieldByname('LMSAN2ABERTUR').Value -
        SQLSegundaPesquisa.FieldByname('LMSAN2AFERIR').Value))                      + '|' ; // 11 VOL_VENDAS Vendas (08 – 09 - 10 ) do bico , em litros

        If Not GravaRegistros('1320') Then Begin Result := False; Exit; End;
        inc(n1320);
        Inc(Total_Bloco_1);

        SQLSegundaPesquisa.Next;
      End;

      SQLSegundaPesquisa.Close;
      Progress.Position := Progress.Position + 1;
      SQLPesquisa.Next;
    End;

    // REGISTRO 1350: BOMBAS

    SQLPesquisa.Close;
    SQLSUBPesquisa.Close;
    SQLSegundaPesquisa.Close;
    SQLPesquisa.SQL.Text := 'Select Distinct BOMBA50NROSERIE from Bomba';
    SQLPesquisa.Open;

    SQLSubPesquisa.SQL.Text := 'Select B.*, T.PRODICOD From BOMBA B LEFT JOIN TANQUE T ON T.TANQICOD = B.TANQICOD Where BOMBA50NROSERIE = :xSerie';

    While not SQLPesquisa.EOF do
    begin
      SQLSubPesquisa.Prepare;
      SQLSubPesquisa.ParamByName('xSerie').AsString := SQLPesquisa.Fieldbyname('BOMBA50NROSERIE').AsString;
      SQLSubPesquisa.Open;

      Linha := '|1350|' +                                                             // 01 REG Texto fixo contendo "1350"
      SQLSubPesquisa.Fieldbyname('BOMBA50NROSERIE').asstring                     + '|' + // 02 SERIE Número de Série da Bomba
      SQLSubPesquisa.Fieldbyname('BOMBA60FABRICANTE').asstring                   + '|' + // 03 FABRICANTE Nome do Fabricante da Bomba C 060 - O
      SQLSubPesquisa.Fieldbyname('BOMBA20MODELO').asstring                       + '|' + // 04 MODELO Modelo da Bomba C - - O
      SQLSubPesquisa.Fieldbyname('BOMBA1TIPO').asstring                          + '|' ; // 05 TIPO_MEDICAO Identificador de medição: 0 - analógico 1 – digital

      If Not GravaRegistros('1350') Then Begin Result := False; Exit; End;
      inc(n1350);
      Inc(Total_Bloco_1);

      // REGISTRO 1360: LACRES DA BOMBA
      Linha := '|1360|'   +                                                                  // 01 REG Texto fixo contendo "1360" C 004 - O
      SQLSubPesquisa.Fieldbyname('BOMBA20LACRE').asstring                                + '|' + // 02 NUM_LACRE Número do Lacre associado na Bomba C 020 - O
      FormatDateTime('ddmmyyyy',SQLSubPesquisa.Fieldbyname('BOMBDDATALACRE').AsDateTime) + '|' ; // 03 DT_APLICACAO Data de aplicação do Lacre N 008* - O

      If Not GravaRegistros('1350') Then Begin Result := False; Exit; End;
      inc(n1360);
      Inc(Total_Bloco_1);

      // Grava os Bicos de Cada Bomba
      While not SQLSubPesquisa.Eof do
      begin
        Linha := '|1370|' +                                                             // 01 REG Texto fixo contendo "1370"
        SQLSubPesquisa.Fieldbyname('BOMBICOD').asstring                            + '|' + // 02 NUM_BICO Número sequencial do bico ligado a bomba N 003 - O
        SQLSubPesquisa.Fieldbyname('PRODICOD').asstring                            + '|' + // 03 COD_ITEM Código do Produto, constante do registro 0200 C 060 - O
        SQLSubPesquisa.Fieldbyname('TANQICOD').asstring                            + '|' ; // 04 NUM_TANQUE Tanque que armazena o combustível. N - - O


        If Not GravaRegistros('1370') Then Begin Result := False; Exit; End;
        inc(n1370);
        Inc(Total_Bloco_1);

        SQLSubPesquisa.Next;
      End;

      SQLSubPesquisa.Close;
      SQLPesquisa.Next;
    End;

    SQLPesquisa.Close;
    SQLSubPesquisa.Close;
    SQLSegundaPesquisa.Close;
  End else
  begin
    SQLPesquisa.Close;
    n1300 := -1 ;
  end;

  n1990 := 1;
  Inc(Total_Bloco_1);
  Linha := '|1990|'     + // Encerramento do registro |1990|
  IntToStr(Total_Bloco_1)+'|'        ; // Numer de linha do bloco 1
  If Not GravaRegistros('1990') Then Begin Result := False; Exit; End;

  Result := True;
End;

Function TFormTelaExportacaoSped.Registro_Bloco_9: boolean;
Begin
  {-------------------------------------------------}
  Linha :=  '|9001|'    + // Incio do registro |9001| e Indicador de Nota de Entrada |0|
             '0|'       ; // 0 - Indicação de Movimento - 1 - Indicacao de Sem Movimento
  If Not GravaRegistros('9001') Then Begin Result := False; Exit; End;
  n9001 := 1;
  Total_Bloco_9 := 1;
  {-------------------------------------------------}
  n9900 := 0;
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '0000|'         + // Registro a ser totalizado
            IntToStr(n0000) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '0001|'         + // Registro a ser totalizado
            IntToStr(n0001) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '0005|'         + // Registro a ser totalizado
            IntToStr(n0005) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '0100|'         + // Registro a ser totalizado
            IntToStr(n0100) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '0150|'         + // Registro a ser totalizado
            IntToStr(n0150) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '0190|'         + // Registro a ser totalizado
            IntToStr(n0190) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '0200|'         + // Registro a ser totalizado
            IntToStr(n0200) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);

  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '0206|'         + // Registro a ser totalizado
            IntToStr(n0206) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);

  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '0220|'         + // Registro a ser totalizado
            IntToStr(n0220) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);

  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '0990|'         + // Registro a ser totalizado
            IntToStr(n0990) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C001|'         + // Registro a ser totalizado
            IntToStr(nC001) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C100|'         + // Registro a ser totalizado
            IntToStr(nC100) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C113|'         + // Registro a ser totalizado
            IntToStr(nC113) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C114|'         + // Registro a ser totalizado
            IntToStr(nC114) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C120|'         + // Registro a ser totalizado
            IntToStr(nC120) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C130|'         + // Registro a ser totalizado
            IntToStr(nC130) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C140|'         + // Registro a ser totalizado
            IntToStr(nC140) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C141|'         + // Registro a ser totalizado
            IntToStr(nC141) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C160|'         + // Registro a ser totalizado
            IntToStr(nC160) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C170|'         + // Registro a ser totalizado
            IntToStr(nC170) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C172|'         + // Registro a ser totalizado
            IntToStr(nC172) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C190|'         + // Registro a ser totalizado
            IntToStr(nC190) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C400|'         + // Registro a ser totalizado
            IntToStr(nC400) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C405|'         + // Registro a ser totalizado
            IntToStr(nC405) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C410|'         + // Registro a ser totalizado
            IntToStr(nC410) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C420|'         + // Registro a ser totalizado
            IntToStr(nC420) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C425|'         + // Registro a ser totalizado
            IntToStr(nC425) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C460|'         + // Registro a ser totalizado
            IntToStr(nC460) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C470|'         + // Registro a ser totalizado
            IntToStr(nC470) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C490|'         + // Registro a ser totalizado
            IntToStr(nC490) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'C990|'         + // Registro a ser totalizado
            IntToStr(nC990) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'D001|'         + // Registro a ser totalizado
            IntToStr(nD001) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'D100|'         + // Registro a ser totalizado
            IntToStr(nD100) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'D190|'         + // Registro a ser totalizado
            IntToStr(nD190) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'D990|'         + // Registro a ser totalizado
            IntToStr(nD990) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'E001|'         + // Registro a ser totalizado
            IntToStr(nE001) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'E990|'         + // Registro a ser totalizado
            IntToStr(nE990) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'G001|'         + // Registro a ser totalizado
            IntToStr(nG001) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'G990|'         + // Registro a ser totalizado
            IntToStr(nG990) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'H001|'         + // Registro a ser totalizado
            IntToStr(nH001) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);

  {-------------------------------------------------}
  if chkGeraInventario.Checked then
  begin
    Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
              'H005|'         + // Registro a ser totalizado
              IntToStr(nH005) + '|'; // Total de linhas do registro
    If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
    Inc(n9900);
    Inc(Total_Bloco_9);

    {-------------------------------------------------}
    Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
              'H010|'         + // Registro a ser totalizado
              IntToStr(nH010) + '|'; // Total de linhas do registro
    If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
    Inc(n9900);
    Inc(Total_Bloco_9);

  end;
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            'H990|'         + // Registro a ser totalizado
            IntToStr(nH990) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '1001|'         + // Registro a ser totalizado
            IntToStr(n1001) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
{  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '1010|'         + // Registro a ser totalizado
            IntToStr(n1010) + '|'; // Total de linhas do registro
    If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
    Inc(n9900);
    Inc(Total_Bloco_9);}
  {-------------------------------------------------}

  // se n1300 > 0 significa que tem movimento nas tabelas do LMC de postode Combustiveis
  if n1300 > 0 then
    begin
      Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
                '1300|'         + // Registro a ser totalizado
                IntToStr(n1300) + '|'; // Total de linhas do registro
      If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
      Inc(n9900);
      Inc(Total_Bloco_9);
      {-------------------------------------------------}
      Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
                '1310|'         + // Registro a ser totalizado
                IntToStr(n1310) + '|'; // Total de linhas do registro
      If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
      Inc(n9900);
      Inc(Total_Bloco_9);
      {-------------------------------------------------}
      Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
                '1320|'         + // Registro a ser totalizado
                IntToStr(n1320) + '|'; // Total de linhas do registro
      If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
      Inc(n9900);
      Inc(Total_Bloco_9);
      {-------------------------------------------------}
      Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
                '1350|'         + // Registro a ser totalizado
                IntToStr(n1350) + '|'; // Total de linhas do registro
      If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
      Inc(n9900);
      Inc(Total_Bloco_9);
      {-------------------------------------------------}
      Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
                '1360|'         + // Registro a ser totalizado
                IntToStr(n1360) + '|'; // Total de linhas do registro
      If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
      Inc(n9900);
      Inc(Total_Bloco_9);
      {-------------------------------------------------}
      Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
                '1370|'         + // Registro a ser totalizado
                IntToStr(n1370) + '|'; // Total de linhas do registro
      If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
      Inc(n9900);
      Inc(Total_Bloco_9);
      {-------------------------------------------------}
    End;

  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '1990|'         + // Registro a ser totalizado
            IntToStr(n1990) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'        + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '9001|'         + // Registro a ser totalizado
            IntToStr(n9001) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(n9900);
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'    + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '9900|'     + // Registro a ser totalizado
            IntToStr(n9900 + 3) + '|'; // Total de linhas do registro + as 3 linhas finais
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'    + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '9990|'     + // Registro a ser totalizado
            '1|'        ; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9900|'    + // Incio do registro |9900| e Indicador de Nota de Entrada |0|
            '9999|'     + // Registro a ser totalizado
            '1|'        ; // Total de linhas do registro
  If Not GravaRegistros('9900') Then Begin Result := False; Exit; End;
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Linha :=  '|9990|'    +                          // Incio do registro |9990| e Indicador de Nota de Entrada |0|
            IntToStr(Total_Bloco_9 + 2) + '|'    ; // Total de linhas do registro + as duas linhas finais
  If Not GravaRegistros('9990') Then Begin Result := False; Exit; End;
  Inc(Total_Bloco_9);
  {-------------------------------------------------}
  Inc(Total_Bloco_9); // Para para incluir na soma a linha que será gravada a seguir
  {-------------------------------------------------}
  Linha :=  '|9999|'+ // Fechamento do Bloco |9900| e Indicador de Nota de Entrada |0|
            IntToStr(TotalBlocoZero + Total_Bloco_A + Total_Bloco_C + Total_Bloco_D +
            Total_Bloco_E + Total_Bloco_G + Total_Bloco_H + Total_Bloco_1 + Total_Bloco_9) + '|'; // Total de linhas do registro
  If Not GravaRegistros('9999') Then Begin Result := False; Exit; End;
  {-------------------------------------------------}

  Result := True;
End;

procedure TFormTelaExportacaoSped.chkGeraInventarioClick(Sender: TObject);
begin
  inherited;
  GroupBox4.Enabled := chkGeraInventario.Checked;
end;

Function TFormTelaExportacaoSped.RetornaValor(Campo: String):Extended;
begin
  if SQLSegundaPesquisa.FieldByName(Campo).IsNull then
    Result := 0
  Else
    Result := SQLSegundaPesquisa.FieldByName(Campo).Value;
end;

end.


