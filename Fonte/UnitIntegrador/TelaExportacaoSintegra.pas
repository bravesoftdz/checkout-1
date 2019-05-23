unit TelaExportacaoSintegra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, StdCtrls, Mask,
  ToolEdit, RxLookup, DB, DBTables, RxQuery, Grids, DBGrids, RXDBCtrl,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaExportacaoSintegra = class(TFormTelaGeralTEMPLATE)
    Bevel1: TBevel;
    GroupBox2: TGroupBox;
    EditDiretorio: TDirectoryEdit;
    BtExecutar: TSpeedButton;
    Label8: TLabel;
    Label3: TLabel;
    EditHoraInicio: TEdit;
    Label2: TLabel;
    EditHoraTermino: TEdit;
    EditTabela: TEdit;
    GroupBox3: TGroupBox;
    ComboEmpresa: TRxDBLookupCombo;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    De: TDateEdit;
    Label4: TLabel;
    Ate: TDateEdit;
    SQLNotaFiscal: TRxQuery;
    SQLNotaFiscalNOFIA13ID: TStringField;
    SQLNotaFiscalEMPRICOD: TIntegerField;
    SQLNotaFiscalNOFIICOD: TIntegerField;
    SQLNotaFiscalEMPRICODDEST: TIntegerField;
    SQLNotaFiscalCLIEA13ID: TStringField;
    SQLNotaFiscalFORNICOD: TIntegerField;
    SQLNotaFiscalSERIA5COD: TStringField;
    SQLNotaFiscalNOFIINUMERO: TIntegerField;
    SQLNotaFiscalNOFICSTATUS: TStringField;
    SQLNotaFiscalNOFIDEMIS: TDateTimeField;
    SQLNotaFiscalCFOPA5COD: TStringField;
    SQLNotaFiscalOPESICOD: TIntegerField;
    SQLNotaFiscalNOFIN2BASCALCICMS: TBCDField;
    SQLNotaFiscalNOFIN2VLRICMS: TBCDField;
    SQLNotaFiscalNOFIN2BASCALCSUBS: TBCDField;
    SQLNotaFiscalNOFIN2BASCALCCIPI: TBCDField;
    SQLNotaFiscalNOFIN2VLRIPI: TBCDField;
    SQLNotaFiscalNOFIN2VLRDESC: TBCDField;
    SQLNotaFiscalNOFIN2VLRFRETE: TBCDField;
    SQLNotaFiscalNOFIN2VLRSEGURO: TBCDField;
    SQLNotaFiscalNOFIN2VLROUTRASDESP: TBCDField;
    SQLNotaFiscalNOFIN2VLRSERVICO: TBCDField;
    SQLNotaFiscalNOFIN2VLRISSQN: TBCDField;
    SQLNotaFiscalNOFIN2VLRPRODUTO: TBCDField;
    SQLNotaFiscalNOFIN2VLRNOTA: TBCDField;
    SQLNotaFiscalNOFICFRETEPORCONTA: TStringField;
    SQLNotaFiscalTRANICOD: TIntegerField;
    SQLNotaFiscalNOFIN3QUANT: TBCDField;
    SQLNotaFiscalNOFIA15MARCA: TStringField;
    SQLNotaFiscalNOFIN3PESBRUT: TBCDField;
    SQLNotaFiscalNOFIN3PESLIQ: TBCDField;
    SQLNotaFiscalNOFIA8PLACAVEIC: TStringField;
    SQLNotaFiscalPLRCICOD: TIntegerField;
    SQLNotaFiscalPLCTA15COD: TStringField;
    SQLNotaFiscalPENDENTE: TStringField;
    SQLNotaFiscalREGISTRO: TDateTimeField;
    SQLNotaFiscalNOFIN2VLRDESCPROM: TBCDField;
    SQLNotaFiscalNOFIINROTALAO: TIntegerField;
    SQLNotaFiscalPDVDA13ID: TStringField;
    SQLNotaFiscalVENDICOD: TIntegerField;
    SQLNotaFiscalPDVDA60OBS: TStringField;
    SQLNotaFiscalNOFIA20ESPECIE: TStringField;
    SQLNotaFiscalNOFIA30COMPRADOR: TStringField;
    SQLNotaFiscalNOFIA30NROPEDCOMP: TStringField;
    SQLNotaFiscalNOFIN2VLRICMSFRETE: TBCDField;
    SQLNotaFiscalNOFIN2VLRSUBS: TBCDField;
    SQLNotaFiscalCUPOA13ID: TStringField;
    SQLNotaFiscalNOFIA13IDCONSIGNADA: TStringField;
    SQLNotaFiscalUSUAICOD: TIntegerField;
    SQLNotaFiscalUSUAA60LOGIN: TStringField;
    SQLNotaFiscalNOFIDCANCEL: TDateTimeField;
    SQLNotaFiscalPLCTA15CODCRED: TStringField;
    SQLNotaFiscalPLCTA15CODDEB: TStringField;
    SQLNotaFiscalCUPOA13IDCUPNEG: TStringField;
    DSSQLNotaSaida: TDataSource;
    SQLNotaEntrada: TRxQuery;
    SQLNotaEntradaNOCPA13ID: TStringField;
    SQLNotaEntradaEMPRICOD: TIntegerField;
    SQLNotaEntradaNOCPICOD: TIntegerField;
    SQLNotaEntradaFORNICOD: TIntegerField;
    SQLNotaEntradaNOCPA4ANO: TStringField;
    SQLNotaEntradaNOCPA5SERIE: TStringField;
    SQLNotaEntradaNOCPA30NRO: TStringField;
    SQLNotaEntradaNOCPCSTATUS: TStringField;
    SQLNotaEntradaPDCPA13ID: TStringField;
    SQLNotaEntradaOPESICOD: TIntegerField;
    SQLNotaEntradaNOCPDCANCELAMENTO: TDateTimeField;
    SQLNotaEntradaPLPGICOD: TIntegerField;
    SQLNotaEntradaPLCTA15COD: TStringField;
    SQLNotaEntradaNOCPDEMISSAO: TDateTimeField;
    SQLNotaEntradaNOCPDRECEBIMENTO: TDateTimeField;
    SQLNotaEntradaNOCPN3SOMAITENS: TBCDField;
    SQLNotaEntradaNOCPN3TOTITENS: TBCDField;
    SQLNotaEntradaNOCPN3TOTDESC: TBCDField;
    SQLNotaEntradaNOCPN3VLRTOTNOTA: TBCDField;
    SQLNotaEntradaNOCPN3VLRBASCALICM: TBCDField;
    SQLNotaEntradaNOCPN3VLRICMS: TBCDField;
    SQLNotaEntradaNOCPN3VLRBCICMSSUB: TBCDField;
    SQLNotaEntradaNOCPN3VLRICMSSUB: TBCDField;
    SQLNotaEntradaNOCPN3VLRFRETE: TBCDField;
    SQLNotaEntradaNOCPN3VLRSEGURO: TBCDField;
    SQLNotaEntradaNOCPN3VLROUTRADESP: TBCDField;
    SQLNotaEntradaNOCPN3VLRIPI: TBCDField;
    SQLNotaEntradaNOCPN3VLRDESC: TBCDField;
    SQLNotaEntradaCFOPA5COD: TStringField;
    SQLNotaEntradaNOCPN3PERCICMSFRET: TBCDField;
    SQLNotaEntradaNOCPA254OBS: TMemoField;
    SQLNotaEntradaTRANICOD: TIntegerField;
    SQLNotaEntradaNOCPA5TIPOFRETE: TStringField;
    SQLNotaEntradaPENDENTE: TStringField;
    SQLNotaEntradaREGISTRO: TDateTimeField;
    SQLNotaEntradaEMPRICODDEST: TIntegerField;
    SQLNotaEntradaCLIEA13ID: TStringField;
    SQLNotaEntradaUSUAA60LOGIN: TStringField;
    SQLNotaEntradaCLIEA13IDDESTINO: TStringField;
    SQLNotaEntradaFUNCA13ID: TStringField;
    DSSQLNotaEntrada: TDataSource;
    SQLEmpresa: TRxQuery;
    DSSQLEmpresa: TDataSource;
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
    Label5: TLabel;
    GroupBox4: TGroupBox;
    ComboNatureza: TComboBox;
    GroupBox5: TGroupBox;
    MemoErro: TMemo;
    SQLEmpresaEMPRA60CONTATO: TStringField;
    SQLNotaFiscaLItem: TRxQuery;
    SQLNotaFiscaLItemNOFIA13ID: TStringField;
    SQLNotaFiscaLItemNFITIITEM: TIntegerField;
    SQLNotaFiscaLItemPRODICOD: TIntegerField;
    SQLNotaFiscaLItemNFITN3QUANT: TBCDField;
    SQLNotaFiscaLItemNFITN2VLRUNIT: TBCDField;
    SQLNotaFiscaLItemNFITN2PERCDESC: TBCDField;
    SQLNotaFiscaLItemNFITN2VLRDESC: TBCDField;
    SQLNotaFiscaLItemNFITN2PERCICMS: TBCDField;
    SQLNotaFiscaLItemNFITN2BASEICMS: TBCDField;
    SQLNotaFiscaLItemNFITN2VLRICMS: TBCDField;
    SQLNotaFiscaLItemNFITN2PERCSUBS: TBCDField;
    SQLNotaFiscaLItemNFITN2BASESUBS: TBCDField;
    SQLNotaFiscaLItemNFITN2VLRSUBS: TBCDField;
    SQLNotaFiscaLItemNFITN2PERCIPI: TBCDField;
    SQLNotaFiscaLItemNFITN2VLRIPI: TBCDField;
    SQLNotaFiscaLItemNFITN2PERCISSQN: TBCDField;
    SQLNotaFiscaLItemNFITN2VLRISSQN: TBCDField;
    SQLNotaFiscaLItemNFITN2VLRFRETE: TBCDField;
    SQLNotaFiscaLItemNFITN2VLRLUCRO: TBCDField;
    SQLNotaFiscaLItemPENDENTE: TStringField;
    SQLNotaFiscaLItemREGISTRO: TDateTimeField;
    SQLNotaFiscaLItemNFITN2PERCREDUCAO: TBCDField;
    SQLNotaFiscaLItemNFITN3TOTVEND: TBCDField;
    SQLNotaFiscaLItemPDVDA13ID: TStringField;
    SQLNotaFiscaLItemPVITIITEM: TIntegerField;
    SQLNotaFiscaLItemNFITN3QUANTVEND: TBCDField;
    SQLNotaFiscaLItemNFITN2PERCCOMIS: TBCDField;
    SQLNotaFiscaLItemCPITICPOS: TIntegerField;
    SQLNotaFiscaLItemCUPOA13ID: TStringField;
    SQLNotaFiscaLItemLOTEA30NRO: TStringField;
    SQLNotaFiscaLItemNFITA254OBS: TStringField;
    SQLNotaEntradaItem: TRxQuery;
    SQLNotaEntradaItemNOCPA13ID: TStringField;
    SQLNotaEntradaItemNOCIIITEM: TIntegerField;
    SQLNotaEntradaItemPRODICOD: TIntegerField;
    SQLNotaEntradaItemNOCIN3QTDBONIF: TBCDField;
    SQLNotaEntradaItemNOCIN3CAPEMBAL: TBCDField;
    SQLNotaEntradaItemNOCIN3QTDEPED: TBCDField;
    SQLNotaEntradaItemNOCIN3TOTPED: TBCDField;
    SQLNotaEntradaItemNOCIN3VLRDESC: TBCDField;
    SQLNotaEntradaItemNOCIN3PERCDESC: TBCDField;
    SQLNotaEntradaItemNOCIN3VLRICMS: TBCDField;
    SQLNotaEntradaItemNOCIN3PERCICMS: TBCDField;
    SQLNotaEntradaItemNOCIN3VLRSUBST: TBCDField;
    SQLNotaEntradaItemNOCIN3VLRIPI: TBCDField;
    SQLNotaEntradaItemNOCIN3PERCIPI: TBCDField;
    SQLNotaEntradaItemNOCIN3VLRCUSTOMED: TBCDField;
    SQLNotaEntradaItemNOCIN3VLRFRETE: TBCDField;
    SQLNotaEntradaItemPDCPA13ID: TStringField;
    SQLNotaEntradaItemPCITIPOS: TIntegerField;
    SQLNotaEntradaItemPENDENTE: TStringField;
    SQLNotaEntradaItemREGISTRO: TDateTimeField;
    SQLNotaEntradaItemLOTEA30NRO: TStringField;
    SQLNotaEntradaItemNOCIN2VLRCOMISSAO: TBCDField;
    SQLNotaEntradaItemNOCIN2ITENSENVIADOS: TBCDField;
    TblProdutoAux: TTable;
    TblProdutoAuxPRODICOD: TIntegerField;
    CKNFEntrada: TCheckBox;
    CKNFSaida: TCheckBox;
    SQLNotaEntradaNOCPN3VLRISENTO: TBCDField;
    SQLNotaEntradaItemNOCIN3QTDEMBAL: TBCDField;
    SQLNotaEntradaItemNOCIN2FATOR199: TBCDField;
    SQLNotaEntradaItemNOCIN2MGVENDA: TBCDField;
    SQLNotaEntradaItemNOCIN2QTDENF: TBCDField;
    SQLNotaEntradaItemNOCIN2VLRVENDA: TBCDField;
    SQLNotaEntradaItemNOCIN2MGVENDA2: TBCDField;
    SQLNotaEntradaItemNOCIN2VLRVENDA2: TBCDField;
    CKD1: TCheckBox;
    SQLReducaoZ: TRxQuery;
    SQLReducaoZREDUA13ID: TStringField;
    SQLReducaoZEMPRICOD: TIntegerField;
    SQLReducaoZREDUICOD: TIntegerField;
    SQLReducaoZECFA13ID: TStringField;
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
    CKReducaoZ: TCheckBox;
    SQLD1: TRxQuery;
    SQLD1NOFIA13ID: TStringField;
    SQLD1EMPRICOD: TIntegerField;
    SQLD1NOFIICOD: TIntegerField;
    SQLD1EMPRICODDEST: TIntegerField;
    SQLD1CLIEA13ID: TStringField;
    SQLD1FORNICOD: TIntegerField;
    SQLD1SERIA5COD: TStringField;
    SQLD1NOFIINUMERO: TIntegerField;
    SQLD1NOFICSTATUS: TStringField;
    SQLD1NOFIDEMIS: TDateTimeField;
    SQLD1CFOPA5COD: TStringField;
    SQLD1OPESICOD: TIntegerField;
    SQLD1NOFIN2BASCALCICMS: TBCDField;
    SQLD1NOFIN2VLRICMS: TBCDField;
    SQLD1NOFIN2BASCALCSUBS: TBCDField;
    SQLD1NOFIN2BASCALCCIPI: TBCDField;
    SQLD1NOFIN2VLRIPI: TBCDField;
    SQLD1NOFIN2VLRDESC: TBCDField;
    SQLD1NOFIN2VLRFRETE: TBCDField;
    SQLD1NOFIN2VLRSEGURO: TBCDField;
    SQLD1NOFIN2VLROUTRASDESP: TBCDField;
    SQLD1NOFIN2VLRSERVICO: TBCDField;
    SQLD1NOFIN2VLRISSQN: TBCDField;
    SQLD1NOFIN2VLRPRODUTO: TBCDField;
    SQLD1NOFIN2VLRNOTA: TBCDField;
    SQLD1NOFICFRETEPORCONTA: TStringField;
    SQLD1TRANICOD: TIntegerField;
    SQLD1NOFIN3QUANT: TBCDField;
    SQLD1NOFIA15MARCA: TStringField;
    SQLD1NOFIN3PESBRUT: TBCDField;
    SQLD1NOFIN3PESLIQ: TBCDField;
    SQLD1NOFIA8PLACAVEIC: TStringField;
    SQLD1PLRCICOD: TIntegerField;
    SQLD1PLCTA15COD: TStringField;
    SQLD1PENDENTE: TStringField;
    SQLD1REGISTRO: TDateTimeField;
    SQLD1NOFIN2VLRDESCPROM: TBCDField;
    SQLD1NOFIINROTALAO: TIntegerField;
    SQLD1PDVDA13ID: TStringField;
    SQLD1VENDICOD: TIntegerField;
    SQLD1PDVDA60OBS: TStringField;
    SQLD1NOFIA20ESPECIE: TStringField;
    SQLD1NOFIA30COMPRADOR: TStringField;
    SQLD1NOFIA30NROPEDCOMP: TStringField;
    SQLD1NOFIN2VLRICMSFRETE: TBCDField;
    SQLD1NOFIN2VLRSUBS: TBCDField;
    SQLD1CUPOA13ID: TStringField;
    SQLD1NOFIA13IDCONSIGNADA: TStringField;
    SQLD1AVALA13ID: TStringField;
    SQLD1CUPOA13IDCUPNEG: TStringField;
    SQLD1NOFIDCANCEL: TDateTimeField;
    SQLD1PLCTA15CODCRED: TStringField;
    SQLD1PLCTA15CODDEB: TStringField;
    SQLD1USUAICOD: TIntegerField;
    SQLD1USUAA60LOGIN: TStringField;
    SQLD1ROTAICOD: TIntegerField;
    SQLD1NOFIAOBSCORPONF: TStringField;
    SQLD1NOFICEXPCONTABIL: TStringField;
    SQLD1VEICA13ID: TStringField;
    SQLD1NOFIDSAIDAENTRADA: TDateTimeField;
    SQLD1CFOPA5CODAUX: TStringField;
    SQLD1CUPOCTIPOPADRAO: TStringField;
    SQLNotaEntradaPLCTA15CODCRED: TStringField;
    SQLNotaEntradaPLCTA15CODDEB: TStringField;
    SQLNotaEntradaNOCPCEXPCONTABIL: TStringField;
    SQLNotaEntradaEMPRN2VLRFUNDOPROMO: TBCDField;
    SQLNotaEntradaNOCPN2VLROUTRAS: TBCDField;
    SQLSerie: TRxQuery;
    rxComboSerie: TRxDBLookupCombo;
    Label6: TLabel;
    dtsSerie: TDataSource;
    SQLNotaFiscalNOFIA255OBS: TMemoField;
    SQLD1NOFIA255OBS: TMemoField;
    SQLNotaEntradaEMPRICODDESTCOMPRA: TIntegerField;
    SQLReducaoZREDUN3VENDALIQ: TBCDField;
    SQLNotaEntradaItemNOCIN3VLRUNIT: TFloatField;
    SQLNotaEntradaItemNOCIN3VLREMBAL: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure BtExecutarClick(Sender: TObject);
    procedure rxComboSerieEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Arquivo : TextFile;
  end;

var
  FormTelaExportacaoSintegra: TFormTelaExportacaoSintegra;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormTelaExportacaoSintegra.FormCreate(Sender: TObject);
begin
  inherited;
  SQLEmpresa.Open;
  SQLSerie.Open;
end;

procedure TFormTelaExportacaoSintegra.BtExecutarClick(Sender: TObject);
var CaminhoNomeArquivo, Linha, vSituacao : String;
    IE_Emit, IE, CNPJ_Emit, Fax_Emit, Fone_Emit, Natureza, CNPJ, UF_Nota, Modelo, Serie, CFOP, NroNotaEntrada, Vlr_Tot_Nota,
    Base_Icms_Nota, Vlr_Icms_Nota, Isento, Outras, Aliquota, AliquotaAux, AliqReg60, BaseReg60, VendaBruta, GrandeTotal, NfNroInicial, NfNroFinal, Vlr_Isentas, Vlr_Outras : String;
    Quant, VlrProdSTR, VlrProdDescItem, Base_Icms_Item, Base_Icms_Subst_Item, Vlr_Icms_Subst_Item, Vlr_IPI_Item, Aliquota_Item, SitTribCod : String;
    Erro : Boolean;
    I, Reg50Tot, Reg51Tot, Reg54Tot, Reg60Tot, Reg61Tot, Reg75Tot, Reg90Tot, TotalRegistros, NroItemNF : Integer;
    VlrProd : Double;
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
  EditHoraInicio.Text := FormatDateTime('hh:mm:ss',Now);
  EditHoraInicio.Update;

  // Abrir as Tabelas necessárias para Exportação
  SQLNotaEntrada.Close;
  SQLNotaEntrada.MacroByName('MEmpresa').Value    := 'EMPRICODDESTCOMPRA = ' + ComboEmpresa.KeyValue ;
  SQLNotaEntrada.MacroByName('CampoData').Value   := 'NOCPDRECEBIMENTO';
  SQLNotaEntrada.MacroByName('DataInicial').Value := ' "' + FormatDateTime('mm/dd/yyyy',De.Date)  + '" ';
  SQLNotaEntrada.MacroByName('DataFinal').Value   := ' "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '" ';
  SQLNotaEntrada.Open;
  SQLNotaFiscal.Close;
  SQLNotaFiscal.MacroByName('MEmpresa').Value    := 'EMPRICOD = ' + ComboEmpresa.KeyValue ;
  SQLNotaFiscal.MacroByName('CampoData').Value   := 'NOFIDEMIS';
  SQLNotaFiscal.MacroByName('DataInicial').Value := ' "' + FormatDateTime('mm/dd/yyyy',De.Date)  + '" ';
  SQLNotaFiscal.MacroByName('DataFinal').Value   := ' "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '" ';
  if rxComboSerie.Value <> '' then
    SQLNotaFiscal.MacroByName('MSerie').Value   := 'SERIA5COD =  "' + Trim(rxComboSerie.Text) + '" '
  else
    SQLNotaFiscal.MacroByName('MSerie').Value   := '0=0';

  SQLNotaFiscal.Open;
  SQLReducaoZ.Close;
  SQLReducaoZ.MacroByName('MEmpresa').Value    := 'EMPRICOD = ' + ComboEmpresa.KeyValue ;
  SQLReducaoZ.MacroByName('CampoData').Value   := 'REDUDEMIS';
  SQLReducaoZ.MacroByName('DataInicial').Value := ' "' + FormatDateTime('mm/dd/yyyy',De.Date)  + '" ';
  SQLReducaoZ.MacroByName('DataFinal').Value   := ' "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '" ';
  SQLReducaoZ.Open;
  SQLD1.Close;
  SQLD1.MacroByName('MEmpresa').Value    := 'EMPRICOD = ' + ComboEmpresa.KeyValue ;
  SQLD1.MacroByName('CampoData').Value   := 'NOFIDEMIS';
  SQLD1.MacroByName('DataInicial').Value := ' "' + FormatDateTime('mm/dd/yyyy',De.Date)  + '" ';
  SQLD1.MacroByName('DataFinal').Value   := ' "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '" ';
  SQLD1.Open;

  // Cria tabela de Produtos Temp
  TblProdutoAux.Close ;
  try
    TblProdutoAux.DeleteTable ;
  except
  end ;
  TblProdutoAux.CreateTable ;
  TblProdutoAux.AddIndex('', 'PRODICOD', [ixPrimary]);
  TblProdutoAux.Open;

  // Testa se existe movimento no periodo selecionado
  if (SQLNotaEntrada.IsEmpty) and (SQLNotaFiscal.IsEmpty) then
    begin
      ShowMessage('Não existem movimentos no período selecionado!');
      Abort;
    end;
  CaminhoNomeArquivo := EditDiretorio.Text + '\SINTEGRA_'+FormatDateTime('ddmmyyyy',De.date)+'_'+FormatDateTime('ddmmyyyy',ate.Date)+'.TXT';
  try
    AssignFile(Arquivo,CaminhoNomeArquivo);
    Rewrite(Arquivo);
    Reset(Arquivo);
    Erro := False;
  except
    Erro := True;
  end;
  if erro then
    MemoErro.Lines.Add('Não foi possível criar o arquivo, verifique!');

  //Registro10 - Mestre do Estabelecimento - Indentifição do Estabelecimento informante
  EditTabela.Text := 'Exportando Dados da Empresa';
  EditTabela.Update;
  // Corrigir o IEEmitente
  IE_Emit := SQLEmpresaEMPRA20IE.AsString;
  while pos('/',IE_Emit) > 0 do
    delete(IE_Emit,pos('/',IE_Emit),1);
  while pos('.',IE_Emit) > 0 do
    delete(IE_Emit,pos('.',IE_Emit),1);
  IE_Emit   := Preenche(IE_Emit,'',14,2);
  CNPJ_Emit := Preenche(SQLEmpresaEMPRA14CGC.AsString,'',14,2);

  // Corrigir o Fax Emitente
  Fax_Emit := SQLEmpresaEMPRA20FAX.AsString;
  while pos('(',Fax_Emit) > 0 do
    delete(Fax_Emit,pos('(',Fax_Emit),1);
  while pos(')',Fax_Emit) > 0 do
    delete(Fax_Emit,pos(')',Fax_Emit),1);
  while pos('.',Fax_Emit) > 0 do
    delete(Fax_Emit,pos('.',Fax_Emit),1);
  while pos('-',Fax_Emit) > 0 do
    delete(Fax_Emit,pos('-',Fax_Emit),1);
  while pos(' ',Fax_Emit) > 0 do
    delete(Fax_Emit,pos(' ',Fax_Emit),1);

  Case ComboNatureza.ItemIndex of
     0 : Natureza := '1';
     1 : Natureza := '2';
     2 : Natureza := '3';
   end;
  Linha :=   '10'                                                              + //Tipo do Registro   02
             CNPJ_Emit                                                         + //CNPJ                14
             IE_Emit                                                           + //IE                  14
             Preenche(copy(SQLEmpresaEMPRA60RAZAOSOC.AsString,1,35),'',35,2)   + //Nome_Contribuinte   35
             Preenche(copy(SQLEmpresaEMPRA60CID.AsString,1,30),'',30,2)        + //Municipio           30
             SQLEmpresaEMPRA2UF.AsString                                       + //UF                  02
             Preenche(Fax_Emit,'0',10,0)                                       + //Fax                 10
             FormatDateTime('yyyymmdd',De.date)                                + //Data Inicial        08
             FormatDateTime('yyyymmdd',Ate.date)                               + //Data Final          08
             '3'                                                               + //Convênio 31/99
             Natureza                                                          + //InterEstaduais - com ou sem Subs. Trib.
             '1'                                                               ; //Normal

  // Criar Primeira Linha ja com o Registro10
  try
    Append(Arquivo);
    Writeln(Arquivo,Linha);
    Erro := False;
  except
    Erro := True;
  end;
  if erro then
    MemoErro.Lines.Add('Não foi possível criar o Registro10, verifique!')
  else
    TotalRegistros := TotalRegistros+1;

  //Registro11 - Dados complementares do informante
  // Corrigir o Fax Emitente
  Fone_Emit := SQLEmpresaEMPRA20FONE.AsString;
  while pos('(',Fone_Emit) > 0 do
    delete(Fone_Emit,pos('(',Fone_Emit),1);
  while pos(')',Fone_Emit) > 0 do
    delete(Fone_Emit,pos(')',Fone_Emit),1);
  while pos('.',Fone_Emit) > 0 do
    delete(Fone_Emit,pos('.',Fone_Emit),1);
  while pos('-',Fone_Emit) > 0 do
    delete(Fone_Emit,pos('-',Fone_Emit),1);
  while pos(' ',Fone_Emit) > 0 do
    delete(Fone_Emit,pos(' ',Fone_Emit),1);

  Linha := '11'                                                           + // Tipo do Registro        02
           Preenche(copy(SQLEmpresaEMPRA60END.AsString,1,34),'',34,2)     + //Logradouro    34
           Preenche('123','0',5,0)                                        + //Número                   05
           Preenche('','',22,2)                                           + //Complemento              22
           Preenche(copy(SQLEmpresaEMPRA60BAI.AsString,1,15),'',15,2)     + //Bairro        15
           Preenche(SQLEmpresaEMPRA8CEP.AsString,'',8,2)                  + //Cep                      08
           Preenche(SQLEmpresaEMPRA60CONTATO.AsString,'',28,2)            + //Nome do Contato          24
           Preenche(Fone_Emit,'0',12,0)                                   ; //Telefone                 12

  // Criar Proxima Linha Registro11
  try
    Append(Arquivo);
    Writeln(Arquivo,Linha);
    Erro := False;
  except
    Erro := True;
  end;
  if erro then
    MemoErro.Lines.Add('Não foi possível criar o Registro11, verifique!')
  else
    TotalRegistros := TotalRegistros+1;

  // Registro50 - Registro de Total de Nota Fiscal
  // Lançar Cabecalho de notas de Entrada
  if CKNFEntrada.Checked then
    begin
      EditTabela.Text := 'Exportando Notas Fiscais de Compra';
      EditTabela.Update;
      Reg50Tot := 0;
      SQLNotaEntrada.First;
      While not SQLNotaEntrada.Eof Do
        begin
          try
            if dm.SQLLocate('FORNECEDOR','FORNICOD','FORNCFISJURID',SQLNotaEntradaFORNICOD.AsString) = 'J' then
              begin
                CNPJ := dm.SQLLocate('FORNECEDOR','FORNICOD','FORNA14CGC',SQLNotaEntradaFORNICOD.AsString);
                IE   := dm.SQLLocate('FORNECEDOR','FORNICOD','FORNA20IE',SQLNotaEntradaFORNICOD.AsString);
              end
            else
              begin
                CNPJ := dm.SQLLocate('FORNECEDOR','FORNICOD','FORNA11CPF',SQLNotaEntradaFORNICOD.AsString);
                IE   := dm.SQLLocate('FORNECEDOR','FORNICOD','FORNA10RG',SQLNotaEntradaFORNICOD.AsString);
              end;

            if IE <> '' then
              begin
                while pos('/',IE) > 0 do
                  delete(IE,pos('/',IE),1);
                while pos('.',IE) > 0 do
                  delete(IE,pos('.',IE),1);
                while pos('-',IE) > 0 do
                  delete(IE,pos('-',IE),1);
              end;

            UF_Nota  := dm.SQLLocate('FORNECEDOR','FORNICOD','FORNA2UF',SQLNotaEntradaFORNICOD.AsString);
            Modelo   := '01';
            Serie    := '1';

            // Corrige Valor Outras
            Outras  := FormatCurr('#,##0.00',SQLNotaEntradaNOCPN2VLROUTRAS.Value);
            while pos('.',Outras) > 0 do
              delete(Outras,pos('.',Outras),1);
            while pos(',',Outras) > 0 do
              delete(Outras,pos(',',Outras),1);

            // Corrige Valor Isento
            Isento  := FormatCurr('#,##0.00',SQLNotaEntradaNOCPN3VLRISENTO.Value);
            while pos('.',Isento) > 0 do
              delete(Isento,pos('.',Isento),1);
            while pos(',',Isento) > 0 do
              delete(Isento,pos(',',Isento),1);

            NroNotaEntrada := FormatFloat('######000000',StrToInt(SQLNotaEntradaNOCPA30NRO.AsString));

            // Corrigir CFOP do Emitente
            if SQLEmpresaEMPRA2UF.AsString <> UF_Nota then
              CFOP := dm.SQLLocate('OPERACAOESTOQUE','OPESICOD','CFOPA5CODFORAUF',SQLNotaEntradaOPESICOD.AsString)
            else
              CFOP := dm.SQLLocate('OPERACAOESTOQUE','OPESICOD','CFOPA5CODDENTROUF',SQLNotaEntradaOPESICOD.AsString);
            while pos('.',CFOP) > 0 do
              delete(CFOP,pos('.',CFOP),1);

            // Corrige Valor Nota
            Vlr_Tot_Nota  := FormatCurr('#,##0.00',SQLNotaEntradaNOCPN3VLRTOTNOTA.Value);
            while pos('.',Vlr_Tot_Nota) > 0 do
              delete(Vlr_Tot_Nota,pos('.',Vlr_Tot_Nota),1);
            while pos(',',Vlr_Tot_Nota) > 0 do
              delete(Vlr_Tot_Nota,pos(',',Vlr_Tot_Nota),1);

            // Corrige Base Icms Nota
            Base_Icms_Nota  := FormatCurr('#,##0.00',SQLNotaEntradaNOCPN3VLRBASCALICM.Value);
            while pos('.',Base_Icms_Nota) > 0 do
              delete(Base_Icms_Nota,pos('.',Base_Icms_Nota),1);
            while pos(',',Base_Icms_Nota) > 0 do
              delete(Base_Icms_Nota,pos(',',Base_Icms_Nota),1);

            // Corrige Valor Icms Nota
            Vlr_Icms_Nota  := FormatCurr('#,##0.00',SQLNotaEntradaNOCPN3VLRICMS.Value);
            while pos('.',Vlr_Icms_Nota) > 0 do
              delete(Vlr_Icms_Nota,pos('.',Vlr_Icms_Nota),1);
            while pos(',',Vlr_Icms_Nota) > 0 do
              delete(Vlr_Icms_Nota,pos(',',Vlr_Icms_Nota),1);

            // Corrige Valor Aliquota Nota
            Aliquota  := dm.SQLLocate('ICMSUF','ICMUA2UF','ICMUN2ALIQUOTA','"'+UF_Nota+'"');
            while pos('.',Aliquota) > 0 do
              delete(Aliquota,pos('.',Aliquota),1);
            while pos(',',Aliquota) > 0 do
              delete(Aliquota,pos(',',Aliquota),1);

            // Alimenta a situação da NF
            if SQLNotaEntradaNOCPCSTATUS.Value = 'E' then vSituacao := 'N';
            if SQLNotaEntradaNOCPCSTATUS.Value = 'C' then vSituacao := 'S';

            // Alimenta a Linha com dados do Registro50
            Linha := '50'                                                                                                    +
                     Preenche(CNPJ,'0',14,0)                                         + //CNPJ Fornecedor  14
                     Preenche(IE,'',14,2)                                            + //Insc_Est         14
                     FormatDateTime('yyyymmdd',SQLNotaEntradaNOCPDRECEBIMENTO.Value) + //Data_Emissao     08
                     Preenche(UF_Nota,'',2,2)                                        + //UF,
                     Modelo                                                          + //Modelo
                     Serie                                                           + //Serie
                     '  '                                                            + // Espaco Branco
                     Preenche(NroNotaEntrada,'0',6,0)                                + //Nro NF
                     Preenche(CFOP,'',4,2)                                           + //CFOP
                     'T'                                                             + //Emitente P=Proprio ou T=Terceiros
                     Preenche(Vlr_Tot_Nota,'0',13,0)                                 + //Valor_Total
                     Preenche(Base_Icms_Nota,'0',13,0)                               + //Base_ICMS
                     Preenche(Vlr_Icms_Nota,'0',13,0)                                + //Valor_ICMS
                     Preenche(Isento,'0',13,0)                                       + //Isento
                     Preenche(Outras,'0',13,0)                                       + //Outras
                     Preenche(Aliquota,'0',4,2)                                      + //Aliquota
                     vSituacao                                                       ; //Situacao (NS) Quanto ao cancelamento da Nota = Status da Nota
              Erro := False;
            except
              Application.ProcessMessages;
              Erro := True;
            end;
          if not erro then
            begin
              Writeln(Arquivo,Linha);
              Reg50Tot := Reg50Tot+1;
              TotalRegistros := TotalRegistros+1;
            end
          else
            MemoErro.Lines.Add('Não foi possível criar o Registro50, verifique a Nota de Compra Nro.'+SQLNotaEntradaNOCPA30NRO.AsString);

          SQLNotaEntrada.Next;
        end;
    end;

  // Registro50 - Registro de Total de Nota Fiscal
  // Lançar Cabecalho de notas de Saida
  if CKNFSaida.Checked then
    begin
      EditTabela.Text := 'Exportando Notas de Venda, Devolução e Transferências';
      EditTabela.Update;
      SQLNotaFiscal.First;
      While not SQLNotaFiscal.Eof Do
        begin
          try
            // Corrigir o IE Destinatario = Cliente ou Fornecedor
            // No caso de uma nota de devolucao por exemplo
            if SQLNotaFiscalCLIEA13ID.AsString <> '' then
              begin
                CNPJ    := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA14CGC','"'+SQLNotaFiscalCLIEA13ID.AsString+'"');
                IE      := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA20IE','"'+SQLNotaFiscalCLIEA13ID.AsString+'"');
                if CNPJ = '' then
                  CNPJ  := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA11CPF','"'+SQLNotaFiscalCLIEA13ID.AsString+'"');
                UF_Nota := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA2UFRES','"'+SQLNotaFiscalCLIEA13ID.AsString+'"');
              end;
            if SQLNotaFiscalFORNICOD.AsString <> '' then
              begin
                IE      := dm.SQLLocate('FORNECEDOR','FORNICOD','FORNA20IE',SQLNotaFiscalFORNICOD.AsString);
                CNPJ    := dm.SQLLocate('FORNECEDOR','FORNICOD','FORNA14CGC',SQLNotaFiscalFORNICOD.AsString);
                UF_Nota := dm.SQLLocate('FORNECEDOR','FORNICOD','FORNA2UF',SQLNotaFiscalFORNICOD.AsString);
              end;
            if SQLNotaFiscalEMPRICODDEST.AsString <> '' then
              begin
                IE      := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA20IE',SQLNotaFiscalEMPRICODDEST.AsString);
                CNPJ    := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA14CGC',SQLNotaFiscalEMPRICODDEST.AsString);
                UF_Nota := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA2UF',SQLNotaFiscalEMPRICODDEST.AsString);
              end;
            while pos('/',IE) > 0 do
              delete(IE,pos('/',IE),1);
            while pos('.',IE) > 0 do
              delete(IE,pos('.',IE),1);
            while pos('-',IE) > 0 do
              delete(IE,pos('-',IE),1);

            Modelo   := '01';
            Serie    := '1';
            Outras   := '0';
            Isento   := '0';

            CFOP := SQLNotaFiscalCFOPA5COD.AsString;
            delete(CFOP,pos('.',CFOP),1);

            // Corrige Valor Nota
            Vlr_Tot_Nota  := FormatCurr('#,##0.00',SQLNotaFiscalNOFIN2VLRNOTA.Value);
            while pos('.',Vlr_Tot_Nota) > 0 do
              delete(Vlr_Tot_Nota,pos('.',Vlr_Tot_Nota),1);
            while pos(',',Vlr_Tot_Nota) > 0 do
              delete(Vlr_Tot_Nota,pos(',',Vlr_Tot_Nota),1);

            // Corrige Base Icms Nota
            Base_Icms_Nota  := FormatCurr('#,##0.00',SQLNotaFiscalNOFIN2BASCALCICMS.Value);
            while pos('.',Base_Icms_Nota) > 0 do
              delete(Base_Icms_Nota,pos('.',Base_Icms_Nota),1);
            while pos(',',Base_Icms_Nota) > 0 do
              delete(Base_Icms_Nota,pos(',',Base_Icms_Nota),1);

            // Corrige Valor Icms Nota
            Vlr_Icms_Nota  := FormatCurr('#,##0.00',SQLNotaFiscalNOFIN2VLRICMS.Value);
            while pos('.',Vlr_Icms_Nota) > 0 do
              delete(Vlr_Icms_Nota,pos('.',Vlr_Icms_Nota),1);
            while pos(',',Vlr_Icms_Nota) > 0 do
              delete(Vlr_Icms_Nota,pos(',',Vlr_Icms_Nota),1);

            // Alimenta a situação da NF
            if SQLNotaFiscalNOFICSTATUS.Value = 'E' then vSituacao := 'N';
            if SQLNotaFiscalNOFICSTATUS.Value = 'C' then vSituacao := 'S';

            if IE = '' then IE := 'ISENTO';

            // Cria um Registro 50 pra cada aliquota diferente na nota
            SQLNotaFiscaLItem.Close;
            SQLNotaFiscaLItem.Open;
            AliquotaAux := '';

            // Testa se nao possui itens, pode ser uma nota especial, tipo apenas de credito de Icms
            if SQLNotaFiscaLItem.IsEmpty then
              begin
                // Se o CFOP tiver marcado como Outras entao, devo zerar os valores de Base Icms, Vlr Icms
                if dm.SQLLocate('CFOP','CFOPA5COD','CFOPCDESTVLRNTRIB','"'+SQLNotaFiscalCFOPA5COD.AsString+'"') = 'O' then
                  begin
                    Outras         := Vlr_Tot_Nota;
                    Base_Icms_Nota := '0';
                    Vlr_Icms_Nota  := '0';
                  end;
                try
                  Linha := '50'                                                                                                    +
                           Preenche(CNPJ,'0',14,0)                                         + //CNPJ Cliente, Fornecedor ou Empresa  14
                           Preenche(IE,'',14,2)                                            + //Insc_Est Cliente, Fornecedor ou Empresa        14
                           FormatDateTime('yyyymmdd',SQLNotaFiscalNOFIDEMIS.Value)         + //Data_Emissao     08
                           Preenche(UF_Nota,'',2,2)                                        + //UF,
                           Modelo                                                          + //Modelo
                           Serie                                                           + //Serie
                           '  '                                                            + // Espaco Branco
                           Preenche(SQLNotaFiscalNOFIINUMERO.AsString,'0',6,0)             + //Nro NF
                           Preenche(CFOP,'',4,2)                                           + //CFOP
                           'P'                                                             + //Emitente P=Proprio ou T=Terceiros
                           Preenche(Vlr_Tot_Nota,'0',13,0)                                 + //Valor_Total
                           Preenche(Base_Icms_Nota,'0',13,0)                               + //Base_ICMS
                           Preenche(Vlr_Icms_Nota,'0',13,0)                                + //Valor_ICMS
                           Preenche(Isento,'0',13,0)                                       + //Isento
                           Preenche(Outras,'0',13,0)                                       + //Outras
                           '0000'                                                          + //Aliquota
                           vSituacao                                                       ; //Situacao (NS) Quanto ao cancelamento da Nota = Status da Nota
                    Erro  := False;
                except
                  Application.ProcessMessages;
                  Erro := True;
                end;
                if not erro then
                  begin
                    Writeln(Arquivo,Linha);
                    Reg50Tot := Reg50Tot+1;
                    TotalRegistros := TotalRegistros+1;
                  end
                else
                  MemoErro.Lines.Add('Não foi possível criar o Registro50, verifique a Nota de Saída Nro.'+SQLNotaFiscalNOFIINUMERO.AsString);
              end;

            while not SQLNotaFiscaLItem.Eof do
              begin
                // Corrige Valor Aliquota Nota
                Aliquota := FormatCurr('#,##0.00',SQLNotaFiscaLItemNFITN2PERCICMS.Value);
                while pos('.',Aliquota) > 0 do
                  delete(Aliquota,pos('.',Aliquota),1);
                while pos(',',Aliquota) > 0 do
                  delete(Aliquota,pos(',',Aliquota),1);

                // Se o CFOP tiver marcado como Outras entao, devo zerar os valores de Base Icms, Vlr Icms
                if dm.SQLLocate('CFOP','CFOPA5COD','CFOPCDESTVLRNTRIB','"'+SQLNotaFiscalCFOPA5COD.AsString+'"') = 'O' then
                  begin
                    Outras         := Vlr_Tot_Nota;
                    Base_Icms_Nota := '0';
                    Vlr_Icms_Nota  := '0';
                    Aliquota       := '0';
                  end;

                // Alimenta a Linha com dados do Registro50
                if Aliquota <> AliquotaAux then
                  begin
                    try
                      Linha := '50'                                                                                                    +
                               Preenche(CNPJ,'0',14,0)                                         + //CNPJ Cliente, Fornecedor ou Empresa  14
                               Preenche(IE,'',14,2)                                            + //Insc_Est Cliente, Fornecedor ou Empresa        14
                               FormatDateTime('yyyymmdd',SQLNotaFiscalNOFIDEMIS.Value)         + //Data_Emissao     08
                               Preenche(UF_Nota,'',2,2)                                        + //UF,
                               Modelo                                                          + //Modelo
                               Serie                                                           + //Serie
                               '  '                                                            + // Espaco Branco
                               Preenche(SQLNotaFiscalNOFIINUMERO.AsString,'0',6,0)             + //Nro NF
                               Preenche(CFOP,'',4,2)                                           + //CFOP
                               'P'                                                             + //Emitente P=Proprio ou T=Terceiros
                               Preenche(Vlr_Tot_Nota,'0',13,0)                                 + //Valor_Total
                               Preenche(Base_Icms_Nota,'0',13,0)                               + //Base_ICMS
                               Preenche(Vlr_Icms_Nota,'0',13,0)                                + //Valor_ICMS
                               Preenche(Isento,'0',13,0)                                       + //Isento
                               Preenche(Outras,'0',13,0)                                       + //Outras
                               Preenche(Aliquota,'0',4,2)                                      + //Aliquota
                               vSituacao                                                       ; //Situacao (NS) Quanto ao cancelamento da Nota = Status da Nota
                        Erro  := False;
                    except
                      Application.ProcessMessages;
                      Erro := True;
                    end;
                    if not erro then
                      begin
                        Writeln(Arquivo,Linha);
                        Reg50Tot := Reg50Tot+1;
                        TotalRegistros := TotalRegistros+1;
                      end
                    else
                      MemoErro.Lines.Add('Não foi possível criar o Registro50, verifique a Nota de Saída Nro.'+SQLNotaFiscalNOFIINUMERO.AsString);

                  end;
                  AliquotaAux := Aliquota;
                SQLNotaFiscaLItem.next;
              end;
            SQLNotaFiscal.Next;
          except
            Application.ProcessMessages;
          end;
        end;
    end;

  // Registro54 - Registros de Produto (Classificação Fiscal)
  if CKNFEntrada.Checked then
    begin
      EditTabela.Text := 'Exportando os Itens das Notas de Compra';
      EditTabela.Update;
      Reg54Tot := 0;
      SQLNotaEntrada.First;
      While not SQLNotaEntrada.Eof Do
        begin
          SQLNotaEntradaItem.Close;
          SQLNotaEntradaItem.Open;
          SQLNotaEntradaItem.First;
          NroItemNF := 1;
          While not SQLNotaEntradaItem.Eof Do
            begin
              try
                if dm.SQLLocate('FORNECEDOR','FORNICOD','FORNCFISJURID',SQLNotaEntradaFORNICOD.AsString) = 'J' then
                  CNPJ := dm.SQLLocate('FORNECEDOR','FORNICOD','FORNA14CGC',SQLNotaEntradaFORNICOD.AsString)
                else
                  CNPJ := dm.SQLLocate('FORNECEDOR','FORNICOD','FORNA11CPF',SQLNotaEntradaFORNICOD.AsString);

                UF_Nota  := dm.SQLLocate('FORNECEDOR','FORNICOD','FORNA2UF',SQLNotaEntradaFORNICOD.AsString);
                Modelo   := '01';
                Serie    := '1';
                NroNotaEntrada := FormatFloat('######000000',StrToInt(SQLNotaEntradaNOCPA30NRO.AsString));
                // Corrigir o IEEmitente
                IE   := dm.SQLLocate('FORNECEDOR','FORNICOD','FORNA20IE',SQLNotaEntradaFORNICOD.AsString);
                while pos('/',IE) > 0 do
                  delete(IE,pos('/',IE),1);
                while pos('.',IE) > 0 do
                  delete(IE,pos('.',IE),1);

                // Corrigir CFOP do Emitente
                if SQLEmpresaEMPRA2UF.AsString <> UF_Nota then
                  CFOP := dm.SQLLocate('OPERACAOESTOQUE','OPESICOD','CFOPA5CODFORAUF',SQLNotaEntradaOPESICOD.AsString)
                else
                  CFOP := dm.SQLLocate('OPERACAOESTOQUE','OPESICOD','CFOPA5CODDENTROUF',SQLNotaEntradaOPESICOD.AsString);
                while pos('.',CFOP) > 0 do
                  delete(CFOP,pos('.',CFOP),1);

                // Corrige Quant
                Quant  := FormatCurr('#,##0.000',SQLNotaEntradaItemNOCIN3QTDEMBAL.Value);
                while pos('.',Quant) > 0 do
                  delete(Quant,pos('.',Quant),1);
                while pos(',',Quant) > 0 do
                  delete(Quant,pos(',',Quant),1);
                // Corrige Valor do Produto
                VlrProd    := (SQLNotaEntradaItemNOCIN3VLREMBAL.AsFloat * SQLNotaEntradaItemNOCIN3QTDEMBAL.Value)- SQLNotaEntradaItemNOCIN3VLRDESC.AsFloat;
                VlrProdSTR := FormatCurr('#,##0.00',VlrProd);
                while pos('.',VlrProdSTR) > 0 do
                  delete(VlrProdSTR,pos('.',VlrProdSTR),1);
                while pos(',',VlrProdSTR) > 0 do
                  delete(VlrProdSTR,pos(',',VlrProdSTR),1);
                // Corrige Valor Desconto no item
                VlrProdDescItem := FormatCurr('#,##0.00',SQLNotaEntradaItemNOCIN3VLRDESC.Value);
                while pos('.',VlrProdDescItem) > 0 do
                  delete(VlrProdDescItem,pos('.',VlrProdDescItem),1);
                while pos(',',VlrProdDescItem) > 0 do
                  delete(VlrProdDescItem,pos(',',VlrProdDescItem),1);
                // Corrige Valor IPI no item
                Vlr_IPI_Item := FormatCurr('#,##0.00',SQLNotaEntradaItemNOCIN3VLRIPI.Value);
                while pos('.',Vlr_IPI_Item) > 0 do
                  delete(Vlr_IPI_Item,pos('.',Vlr_IPI_Item),1);
                while pos(',',Vlr_IPI_Item) > 0 do
                  delete(Vlr_IPI_Item,pos(',',Vlr_IPI_Item),1);
                // Corrige Valor Aliquota Item
                Aliquota_Item  := dm.SQLLocate('ICMSUF','ICMUA2UF','ICMUN2ALIQUOTA','"'+UF_Nota+'"');
                while pos('.',Aliquota) > 0 do
                  delete(Aliquota,pos('.',Aliquota),1);
                while pos(',',Aliquota) > 0 do
                  delete(Aliquota,pos(',',Aliquota),1);

                SitTribCod  := dm.SQLLocate('PRODUTO','PRODICOD','PRODISITTRIB',SQLNotaEntradaItemPRODICOD.AsString);

                Base_Icms_Item       := VlrProdSTR;
                Base_Icms_Subst_Item := '0';
                Vlr_Icms_Subst_Item  := '0';
                // Alimenta a Linha com dados do Registro54
                Linha := '54'                                                            + // Tipo de Registro
                         Preenche(CNPJ,'0',14,0)                                         + // CNPJ Cliente, Fornecedor ou Empresa  14
                         Modelo                                                          + // Modelo
                         Serie                                                           + // Serie
                         '  '                                                            + // Espaco Branco
                         Preenche(NroNotaEntrada,'0',6,0)                                + // Nro NF
                         Preenche(CFOP,'',4,2)                                           + // CFOP
                         Preenche(SitTribCod,'0',3,0)                                    + // SitTribCod 03
                         Preenche(IntToStr(NroItemNF),'0',3,0)                           + // Nr. do item da nota 03
                         Preenche(SQLNotaEntradaItemPRODICOD.AsString,'0',5,0)           + // Cd Produtto
                         '         '                                                     + // Espaco Branco 09
                         Preenche(Quant,'0',11,0)                                        + // Quantidade
                         Preenche(VlrProdSTR,'0',12,0)                                   + // Valor unitarioxQuantidade
                         Preenche(VlrProdDescItem,'0',12,0)                              + // Valor desc no item se houver
                         Preenche(Base_Icms_Item,'0',12,0)                               + // Base_ICMS no item no meu caso é igual ao ValorEmbalagemxQuantidade-ValorDesc
                         Preenche(Base_Icms_Subst_Item,'0',12,0)                         + // Base_ICMS_Retencao no item no meu caso é igual ao Valor unitarioxQuantidade
                         Preenche(Vlr_IPI_Item,'0',12,0)                                 + // Valor de IPI no item
                         Preenche(Aliquota_Item,'0',4,2)                                 ; // Aliquota de Icms no Item
                Erro := False;
              except
                Erro := True;
              end;
              if not erro then
                begin
                  Writeln(Arquivo,Linha);
                  Reg54Tot := Reg54Tot+1;
                  TotalRegistros := TotalRegistros+1;
                  try
                    TblProdutoAux.Append;
                    TblProdutoAuxPRODICOD.Value := SQLNotaEntradaItemPRODICOD.Value;
                    TblProdutoAux.Post;
                  except
                    TblProdutoAux.Cancel;
                    Application.ProcessMessages;
                  end;
                end
              else
                MemoErro.Lines.Add('Não foi possível criar o Registro54, verifique a Nota de Compra Nro.'+SQLNotaEntradaNOCPA30NRO.AsString);
              NroItemNF := NroItemNF+1;
              SQLNotaEntradaItem.Next;
            end;
          SQLNotaEntrada.Next;
        end;
    end;

  // Registro 54 - Itens das Notas de Saida
  if CKNFSaida.Checked then
    begin
      EditTabela.Text := 'Exportando os Itens das Notas de Saída';
      EditTabela.Update;
      SQLNotaFiscal.First;
      While not SQLNotaFiscal.Eof Do
        begin
          SQLNotaFiscaLItem.Close;
          SQLNotaFiscaLItem.Open;
          SQLNotaFiscaLItem.First;
          NroItemNF := 1;
          While not SQLNotaFiscaLItem.Eof Do
            begin
              try
                // Corrigir o IE Destinatario = Cliente ou Fornecedor
                // No caso de uma nota de devolucao por exemplo
                if SQLNotaFiscalCLIEA13ID.AsString <> '' then
                  begin
                    CNPJ    := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA14CGC','"'+SQLNotaFiscalCLIEA13ID.AsString+'"');
                    IE      := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA20IE','"'+SQLNotaFiscalCLIEA13ID.AsString+'"');
                    if CNPJ = '' then
                      CNPJ  := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA11CPF','"'+SQLNotaFiscalCLIEA13ID.AsString+'"');
                    UF_Nota := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA2UFRES','"'+SQLNotaFiscalCLIEA13ID.AsString+'"');
                  end;
                if SQLNotaFiscalFORNICOD.AsString <> '' then
                  begin
                    CNPJ    := dm.SQLLocate('FORNECEDOR','FORNICOD','FORNA14CGC',SQLNotaFiscalFORNICOD.AsString);
                    IE      := dm.SQLLocate('FORNECEDOR','FORNICOD','FORNA20IE',SQLNotaFiscalFORNICOD.AsString);
                    UF_Nota := dm.SQLLocate('FORNECEDOR','FORNICOD','FORNA2UF',SQLNotaFiscalFORNICOD.AsString);
                  end;
                if SQLNotaFiscalEMPRICODDEST.AsString <> '' then
                  begin
                    IE      := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA20IE',SQLNotaFiscalEMPRICODDEST.AsString);
                    CNPJ    := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA14CGC',SQLNotaFiscalEMPRICODDEST.AsString);
                    UF_Nota := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA2UF',SQLNotaFiscalEMPRICODDEST.AsString);
                  end;
                Modelo   := '01';
                Serie    := '1';
                Outras   := '0';
                Isento   := '0';
                // Corrigir o IEEmitente
                while pos('/',IE) > 0 do
                  delete(IE,pos('/',IE),1);
                while pos('.',IE) > 0 do
                  delete(IE,pos('.',IE),1);

                // Corrigir CFOP do Emitente
                CFOP := SQLNotaFiscalCFOPA5COD.AsString;
                while pos('.',CFOP) > 0 do
                  delete(CFOP,pos('.',CFOP),1);

                // Corrige Quant
                Quant  := FormatCurr('#,##0.000',SQLNotaFiscaLItemNFITN3QUANT.Value);
                while pos('.',Quant) > 0 do
                  delete(Quant,pos('.',Quant),1);
                while pos(',',Quant) > 0 do
                  delete(Quant,pos(',',Quant),1);
                // Corrige Valor do Produto
                VlrProd    := (SQLNotaFiscaLItemNFITN2VLRUNIT.AsFloat * SQLNotaFiscaLItemNFITN3QUANT.asFloat) - SQLNotaFiscaLItemNFITN2VLRDESC.AsFloat;
                VlrProdSTR := FormatCurr('#,##0.00',VlrProd);
                while pos('.',VlrProdSTR) > 0 do
                  delete(VlrProdSTR,pos('.',VlrProdSTR),1);
                while pos(',',VlrProdSTR) > 0 do
                  delete(VlrProdSTR,pos(',',VlrProdSTR),1);
                // Corrige Valor Desconto no item
                VlrProdDescItem := FormatCurr('#,##0.00',SQLNotaFiscaLItemNFITN2VLRDESC.Value);
                while pos('.',VlrProdDescItem) > 0 do
                  delete(VlrProdDescItem,pos('.',VlrProdDescItem),1);
                while pos(',',VlrProdDescItem) > 0 do
                  delete(VlrProdDescItem,pos(',',VlrProdDescItem),1);

                // Corrige Valor Aliquota Item
                Aliquota_Item := FormatCurr('#0.00',SQLNotaFiscaLItemNFITN2PERCICMS.Value);
                while pos('.',Aliquota_Item) > 0 do
                  delete(Aliquota_Item,pos('.',Aliquota_Item),1);
                while pos(',',Aliquota_Item) > 0 do
                  delete(Aliquota_Item,pos(',',Aliquota_Item),1);

                SitTribCod  := dm.SQLLocate('PRODUTO','PRODICOD','PRODISITTRIB',SQLNotaFiscaLItemPRODICOD.AsString);

                // Corrige Base_Icms_Item no item
                Base_Icms_Item := FormatCurr('#,##0.00',SQLNotaFiscaLItemNFITN2BASEICMS.Value);
                while pos('.',Base_Icms_Item) > 0 do
                  delete(Base_Icms_Item,pos('.',Base_Icms_Item),1);
                while pos(',',Base_Icms_Item) > 0 do
                  delete(Base_Icms_Item,pos(',',Base_Icms_Item),1);

                // Corrige Base_Icms_Item no item
                Base_Icms_Subst_Item := FormatCurr('#,##0.00',SQLNotaFiscaLItemNFITN2BASESUBS.Value);
                while pos('.',Base_Icms_Subst_Item) > 0 do
                  delete(Base_Icms_Subst_Item,pos('.',Base_Icms_Subst_Item),1);
                while pos(',',Base_Icms_Subst_Item) > 0 do
                  delete(Base_Icms_Subst_Item,pos(',',Base_Icms_Subst_Item),1);

                // Corrige Valor IPI no item
                Vlr_IPI_Item := FormatCurr('#,##0.00',SQLNotaFiscaLItemNFITN2VLRIPI.Value);
                while pos('.',Vlr_IPI_Item) > 0 do
                  delete(Vlr_IPI_Item,pos('.',Vlr_IPI_Item),1);
                while pos(',',Vlr_IPI_Item) > 0 do
                  delete(Vlr_IPI_Item,pos(',',Vlr_IPI_Item),1);

                // Se o CFOP tiver marcado como Outras entao, devo zerar os valores de Base Icms, Vlr Icms
                if dm.SQLLocate('CFOP','CFOPA5COD','CFOPCDESTVLRNTRIB','"'+SQLNotaFiscalCFOPA5COD.AsString+'"') = 'O' then
                  begin
                    Base_Icms_Item := '0';
                    Aliquota_Item  := '0';
                  end;

                // Alimenta a Linha com dados do Registro54
                Linha := '54'                                                            + // Tipo de Registro
                         Preenche(CNPJ,'0',14,0)                                         + // CNPJ Cliente, Fornecedor ou Empresa  14
                         Modelo                                                          + // Modelo
                         Serie                                                           + // Serie
                         '  '                                                            + // Espaco Branco
                         Preenche(SQLNotaFiscalNOFIINUMERO.AsString,'0',6,0)             + // Nro NF
                         Preenche(CFOP,'',4,2)                                           + // CFOP
                         Preenche(SitTribCod,'0',3,0)                                    + // SitTribCod 03
                         Preenche(IntToStr(NroItemNF),'0',3,0)                           + // Nr. do item da nota 03
                         Preenche(SQLNotaFiscaLItemPRODICOD.AsString,'0',5,0)            + // Nro NF
                         '         '                                                     + // Espaco Branco 09
                         Preenche(Quant,'0',11,0)                                        + // Quantidade
                         Preenche(VlrProdSTR,'0',12,0)                                   + // Valor unitarioxQuantidade
                         Preenche(VlrProdDescItem,'0',12,0)                              + // Valor desc no item se houver
                         Preenche(Base_Icms_Item,'0',12,0)                               + // Base_ICMS no item no meu caso é igual ao ValorEmbalagemxQuantidade-ValorDesc
                         Preenche(Base_Icms_Subst_Item,'0',12,0)                         + // Base_ICMS_Retencao no item no meu caso é igual ao Valor unitarioxQuantidade
                         Preenche(Vlr_IPI_Item,'0',12,0)                                 + // Valor de IPI no item
                         Preenche(Aliquota_Item,'0',4,2)                                 ; // Aliquota de Icms no Item
                Erro := False;
              except
                Erro := True;
              end;
              if not erro then
                begin
                  Writeln(Arquivo,Linha);
                  Reg54Tot := Reg54Tot+1;
                  TotalRegistros := TotalRegistros+1;
                  try
                    TblProdutoAux.Append;
                    TblProdutoAuxPRODICOD.Value := SQLNotaFiscaLItemPRODICOD.Value;
                    TblProdutoAux.Post;
                  except
                    TblProdutoAux.Cancel;
                    Application.ProcessMessages;
                  end;
                end
              else
                MemoErro.Lines.Add('Não foi possível criar o Registro54, verifique a Nota de Saída Nro.'+SQLNotaFiscalNOFIINUMERO.AsString);
              NroItemNF := NroItemNF+1;
              SQLNotaFiscalItem.Next;
            end;
          SQLNotaFiscal.Next;
        end;
    end;

  // Registro 60M
  // Informacoes sobre o ECF - Reducoes Z diarias
  if CKReducaoZ.Checked then
    begin
      EditTabela.Text := 'Exportando Reduções Z do período';
      EditTabela.Update;
      SQLReducaoZ.First;
      While not SQLReducaoZ.Eof Do
        begin
          try
            // Corrige VendaBruta
            VendaBruta  := FormatCurr('#,##0.00',SQLReducaoZREDUN3VENDALIQ.Value);
            while pos('.',VendaBruta) > 0 do
              delete(VendaBruta,pos('.',VendaBruta),1);
            while pos(',',VendaBruta) > 0 do
              delete(VendaBruta,pos(',',VendaBruta),1);
            // Corrige GrandeTotal
            GrandeTotal  := FormatCurr('#,##0.00',SQLReducaoZREDUN3GRANDETOTAL.Value);
            while pos('.',GrandeTotal) > 0 do
              delete(GrandeTotal,pos('.',GrandeTotal),1);
            while pos(',',GrandeTotal) > 0 do
              delete(GrandeTotal,pos(',',GrandeTotal),1);

            Linha := '60M'                                                          + //Tipo de Registro
                     FormatDateTime('yyyymmdd',SQLReducaoZREDUDEMIS.Value)          + //Data Movimento
                     Preenche(SQLLocate('ECF','ECFA13ID','ECFA20NROSERIE',
                              '"'+SQLReducaoZECFA13ID.AsString+'"'),'',20,2)        + //Nro Serie do ECF
                     '0012D'                                                        + //Nro Sequencia de Caixa + 2D usado para definir q é ECF
                     Preenche(SQLReducaoZREDUICONTINICIAL.AsString,'0',6,0)         + //Contador Inicial
                     Preenche(SQLReducaoZREDUICONTFINAL.AsString,'0',6,0)           + //Contador Final
                     Preenche(SQLReducaoZREDUICONTREDUZ.AsString,'0',6,0)           + //Contador Reducao
                     Preenche(SQLReducaoZREDUICONTREINICIO.AsString,'0',3,0)        + //Contador Reinicio Operacoes
                     Preenche(VendaBruta,'0',16,0)                                  + //Venda Bruta
                     Preenche(GrandeTotal,'0',16,0)                                 + //Grande Total
                     '                                     '                        ; // 37 char
            Erro := False;
          except
            Erro := True;
          end;
          if not erro then
            begin
              Writeln(Arquivo,Linha);
              Reg60Tot := Reg60Tot+1;
              TotalRegistros := TotalRegistros+1;
            end
          else
            MemoErro.Lines.Add('Não foi possível criar o Registro60M, verifique o ID Nro.'+SQLReducaoZREDUA13ID.AsString);

          // Para cada 60M deve ser criado os registros 60A para cada Aliq com dados
          if SQLReducaoZREDUN3ALIQ1.Value > 0 then
            begin
              try
                // Corrige AliqReg60
                AliqReg60  := FormatCurr('#,##0.00',SQLReducaoZREDUN3ALIQ1.Value);
                while pos('.',AliqReg60) > 0 do
                  delete(AliqReg60,pos('.',AliqReg60),1);
                while pos(',',AliqReg60) > 0 do
                  delete(AliqReg60,pos(',',AliqReg60),1);
                // Corrige BaseReg60
                BaseReg60  := FormatCurr('#,##0.00',SQLReducaoZREDUN3BASE1.Value);
                while pos('.',BaseReg60) > 0 do
                  delete(BaseReg60,pos('.',BaseReg60),1);
                while pos(',',BaseReg60) > 0 do
                  delete(BaseReg60,pos(',',BaseReg60),1);
                Linha := '60A'                                                          + //Tipo de Registro
                         FormatDateTime('yyyymmdd',SQLReducaoZREDUDEMIS.Value)          + //Data Movimento
                         Preenche(SQLLocate('ECF','ECFA13ID','ECFA20NROSERIE',
                                  '"'+SQLReducaoZECFA13ID.AsString+'"'),'',20,2)        + //Nro Serie do ECF
                         Preenche(AliqReg60,'0',4,0)                                    + //Aliquota sem virgula
                         Preenche(BaseReg60,'0',12,0)                                   + //Valor Base para esta Aliquota
                         '                                                                               '  ; // 79 char
              except
                Erro := True;
              end;
              if not erro then
                begin
                  Writeln(Arquivo,Linha);
                  Reg60Tot := Reg60Tot+1;
                  TotalRegistros := TotalRegistros+1;
                end
              else
                MemoErro.Lines.Add('Não foi possível criar o Registro60A, verifique o ID Nro.'+SQLReducaoZREDUA13ID.AsString);
            end;
          SQLReducaoZ.Next;
        end;
    end;

  // Registro 61 - Notas Fiscais via Talão Manual
  if CKD1.Checked then
    begin
      EditTabela.Text := 'Exportando Notas de Venda D1';
      EditTabela.Update;
      SQLD1.First;
      While not SQLD1.Eof Do
        begin
          try
            // Corrige Valor Nota
            Vlr_Tot_Nota  := FormatCurr('#,##0.00',SQLD1NOFIN2VLRNOTA.Value);
            while pos('.',Vlr_Tot_Nota) > 0 do
              delete(Vlr_Tot_Nota,pos('.',Vlr_Tot_Nota),1);
            while pos(',',Vlr_Tot_Nota) > 0 do
              delete(Vlr_Tot_Nota,pos(',',Vlr_Tot_Nota),1);
            // Corrige Base Icms Nota
            Base_Icms_Nota  := FormatCurr('#,##0.00',SQLD1NOFIN2BASCALCICMS.Value);
            while pos('.',Base_Icms_Nota) > 0 do
              delete(Base_Icms_Nota,pos('.',Base_Icms_Nota),1);
            while pos(',',Base_Icms_Nota) > 0 do
              delete(Base_Icms_Nota,pos(',',Base_Icms_Nota),1);
            // Corrige Valor Icms Nota
            Vlr_Icms_Nota  := FormatCurr('#,##0.00',SQLD1NOFIN2VLRICMS.Value);
            while pos('.',Vlr_Icms_Nota) > 0 do
              delete(Vlr_Icms_Nota,pos('.',Vlr_Icms_Nota),1);
            while pos(',',Vlr_Icms_Nota) > 0 do
              delete(Vlr_Icms_Nota,pos(',',Vlr_Icms_Nota),1);

            Aliquota := '1700';
            Vlr_Isentas := '0';
            Vlr_Outras  := '0';

            Linha := '61'                                                            + // Tipo Registro
                     '                            '                                  + // Espaco Branco 28 chr
                     FormatDateTime('yyyymmdd',SQLD1NOFIDEMIS.Value)                 + // Data Movto
                     '02D  1 '                                                       + // Modelo, Serie e SubSerie
                     Preenche(SQLD1NOFIINUMERO.AsString,'0',6,0)                     + // Nro Inicial da Nota Fiscal Talao
                     Preenche(SQLD1NOFIINUMERO.AsString,'0',6,0)                     + // Nro Final da Nota Fiscal Talao
                     Preenche(Vlr_Tot_Nota,'0',13,0)                                 + // Valor_Total
                     Preenche(Base_Icms_Nota,'0',13,0)                               + // Base_ICMS
                     Preenche(Vlr_Icms_Nota,'0',12,0)                                + // Valor_ICMS
                     Preenche(Vlr_Isentas,'0',13,0)                                  + // Isentas - Coloquei o mesmo valor do Valor da Nota porque vi num exemplo
                     Preenche(Vlr_Outras,'0',13,0)                                   + // Outras - Coloquei o mesmo valor do Valor da Nota porque vi num exemplo
                     Preenche(Aliquota,'0',4,0)                                      + // Aliquota
                     ' '                                                             ; // Espaco Branco 01 char
              Erro  := False;
          except
            Application.ProcessMessages;
            Erro := True;
          end;
          if not erro then
            begin
              Writeln(Arquivo,Linha);
              Reg61Tot := Reg61Tot+1;
              TotalRegistros := TotalRegistros+1;
            end
          else
            MemoErro.Lines.Add('Não foi possível criar o Registro61, verifique a Nota de D1 Nro.'+SQLNotaFiscalNOFIINUMERO.AsString);

          SQLD1.Next;
        end;
    end;

  // Registro75 - Registros de Códigos de Produtos e Serviços
  EditTabela.Text := 'Exportando os Produtos Relacionados nas Notas';
  EditTabela.Update;
  Reg75Tot := 0;
  TblProdutoAux.First;
  While not TblProdutoAux.Eof Do
    begin
      try
        // Corrige Perc.IPI
        Vlr_IPI_Item := '';
        Vlr_IPI_Item := dm.SQLLocate('PRODUTO','PRODICOD','PRODN3PERCIPI',TblProdutoAuxPRODICOD.AsString);
        while pos('.',Vlr_IPI_Item) > 0 do
          delete(Vlr_IPI_Item,pos('.',Vlr_IPI_Item),1);
        while pos(',',Vlr_IPI_Item) > 0 do
          delete(Vlr_IPI_Item,pos(',',Vlr_IPI_Item),1);
        // Corrige Aliquota ICMS
        Aliquota_Item :=  '';
        Aliquota_Item := dm.SQLLocate('ICMS','ICMSICOD','ICMSN2ALIQUOTA',SQLLocate('PRODUTO','PRODICOD','ICMSICOD',TblProdutoAuxPRODICOD.AsString));
        while pos('.',Aliquota_Item) > 0 do
          delete(Aliquota_Item,pos('.',Aliquota_Item),1);
        while pos(',',Aliquota_Item) > 0 do
          delete(Aliquota_Item,pos(',',Aliquota_Item),1);
        // Corrige Base ICMS Red. p/op no estado
        Base_Icms_Item :=  '';
        Base_Icms_Item := dm.SQLLocate('ICMS','ICMSICOD','ICMSN2PERCREDUCAO',SQLLocate('PRODUTO','PRODICOD','ICMSICOD',TblProdutoAuxPRODICOD.AsString));
        while pos('.',Base_Icms_Item) > 0 do
          delete(Base_Icms_Item,pos('.',Base_Icms_Item),1);
        while pos(',',Base_Icms_Item) > 0 do
          delete(Base_Icms_Item,pos(',',Base_Icms_Item),1);
        // Corrige Base ICMS Red. p/op no estado
        Base_Icms_Item :=  '';
        Base_Icms_Item := dm.SQLLocate('ICMS','ICMSICOD','ICMSN2PERCREDUCAO',SQLLocate('PRODUTO','PRODICOD','ICMSICOD',TblProdutoAuxPRODICOD.AsString));
        while pos('.',Base_Icms_Item) > 0 do
          delete(Base_Icms_Item,pos('.',Base_Icms_Item),1);
        while pos(',',Base_Icms_Item) > 0 do
          delete(Base_Icms_Item,pos(',',Base_Icms_Item),1);
        // Corrige Base ICMS Subst
        Base_Icms_Subst_Item :=  '';
        Base_Icms_Subst_Item := dm.SQLLocate('ICMS','ICMSICOD','ICMSN2PERCSUBSTSAI',SQLLocate('PRODUTO','PRODICOD','ICMSICOD',TblProdutoAuxPRODICOD.AsString));
        while pos('.',Base_Icms_Subst_Item) > 0 do
          delete(Base_Icms_Subst_Item,pos('.',Base_Icms_Subst_Item),1);
        while pos(',',Base_Icms_Subst_Item) > 0 do
          delete(Base_Icms_Subst_Item,pos(',',Base_Icms_Subst_Item),1);

        // Alimenta a Linha com dados do Registro54
        Linha := '75'                                                           + //Tipo de Registro
                 FormatDateTime('yyyymmdd',De.date)                             + //Data Inicial        08
                 FormatDateTime('yyyymmdd',Ate.date)                            + //Data Final          08
                 Preenche(TblProdutoAuxPRODICOD.AsString,'0',5,0)               + //Cd Produto no Sistema
                 Preenche('','',17,2)                                           + //Cd Produto Mercosul
                 Preenche(SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',
                                    TblProdutoAuxPRODICOD.AsString),'',53,2)    + //Descrição Produto
                 Preenche(dm.SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',
                          SQLLocate('PRODUTO','PRODICOD','UNIDICOD',
                          TblProdutoAuxPRODICOD.AsString)),'',6,2)              + //Unidade de Medida
                 Preenche(SQLLocate('PRODUTO','PRODICOD','PRODISITTRIB',
                                    TblProdutoAuxPRODICOD.AsString),'0',3,0)    + //Sit.Tributaria
                 Preenche(Vlr_IPI_Item,'0',4,0)                                 + //Perc.IPI
                 Preenche(Aliquota_Item,'0',4,0)                                + //Aliquota Icms p/op.no Estado
                 Preenche(Base_Icms_Item,'0',4,0)                               + //Base Red Icms p/op.no Estado
                 Preenche(Base_Icms_Subst_Item,'0',12,0)                        ; //Base Icms Subst

        Erro := False;
      except
        Erro := True;
      end;
      if not erro then
        begin
          Writeln(Arquivo,Linha);
          Reg75Tot := Reg75Tot+1;
          TotalRegistros := TotalRegistros+1;
        end
      else
        MemoErro.Lines.Add('Não foi possível criar o Registro75, verifique o Produto Nro.'+TblProdutoAuxPRODICOD.AsString);
      TblProdutoAux.Next;
    end;

  // Finalizando a exportação Sintegra
  // Registro90 - Registro de Total de Nota Fiscal
  // Lançar Cabecalho de notas de Entrada
  EditTabela.Text := 'Criando Registro90 - Finalizando a Exportação!';
  EditTabela.Update;
  Reg90Tot := 0;
  TotalRegistros := TotalRegistros+1;
  Reg90Tot := Reg90Tot+1;
  Linha := '90'                                        + // Tipo do Registro
           CNPJ_Emit                                   + // Cnpj Emitente
           IE_Emit                                     + // Insc.Est Emitente
           '50'                                        + // tipo reg a ser totalizado
           Preenche(IntToStr(Reg50Tot),'0',8,0)        + // Total de Registros50
           '54'                                        + // tipo reg a ser totalizado
           Preenche(IntToStr(Reg54Tot),'0',8,0)        + // Total de Registros54
           '60'                                        + // tipo reg a ser totalizado
           Preenche(IntToStr(Reg60Tot),'0',8,0)        + // Total de Registros60M
           '61'                                        + // tipo reg a ser totalizado
           Preenche(IntToStr(Reg61Tot),'0',8,0)        + // Total de Registros61
           '75'                                        + // tipo reg a ser totalizado
           Preenche(IntToStr(Reg75Tot),'0',8,0)        + // Total de Registros54
           '99'                                        + // Ident.Total de Registros incluindo o Reg10 e Reg11 e Reg90
           Preenche(IntToStr(TotalRegistros),'0',8,0)  + // Total de Registro
           Preenche('','',35,2)                        + // Preenche com espaço para depois finalizar
           Preenche(IntToStr(Reg90Tot),'0',1,0)        ; // Finaliza colocando o total de reg90
  try
    Writeln(Arquivo,Linha);
    Erro := False;
  except
    Erro := True;
    application.ProcessMessages;
  end;
  if not erro then
    MemoErro.Lines.Add('Registro90 criado com sucesso!')
  else
    MemoErro.Lines.Add('Não foi possível criar o Registro90, verifique!');

  // Fechar Arquivo
  CloseFile(Arquivo);
  EditHoraTermino.Text := FormatDateTime('hh:mm:ss',Now);
  EditHoraTermino.Update;
end;

procedure TFormTelaExportacaoSintegra.rxComboSerieEnter(Sender: TObject);
begin
  inherited;
  SQLSerie.Close;
  SQLSerie.MacroByName('MEmpresa').Value    := 'EMPRICOD = ' + ComboEmpresa.KeyValue ;
  SQLSerie.Open;
end;

end.
