{

    Rotina de geração de boletos bancários via AcbrBoleto
    Data de conclusão: 02/02/13
    Autor: Gabriel Teixeira

    * Lista de Bancos suportados pelo componente AcbrBoleto
    Nenhum
    Banco do Brasil   (Em teste)
    Santander         
    Caixa Econômica
    Caixa SICOB
    Bradesco
    Itaú
    BM - Banco Mercantil
    Sicredi
    Banco Cooperativo do Brasil
    Banrisul
    Banestes
    HSBC
    Banco do Nordeste
    webBRB - Banco de Brasilia

}


unit TelaImpressaoDuplicatas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, CurrEdit, RxLookup, StdCtrls, Mask, ToolEdit,
  DB, DBTables, RxQuery, Grids, DBGrids, Buttons, jpeg, ExtCtrls, DBCtrls,
  UnitLibrary, ShellApi, Placemnt, FileCtrl, Menus, RXCtrls, UCrpe32,
  ppCtrls, ppPrnabl, ppClass, ppCache, ppBands, ppProd, ppReport, ppDB,
  ppComm, ppRelatv, ppDBPipe, ppviewr, ppStrtch, ppMemo, gbCobranca,
  ACBrBase, ACBrBoleto, ACBrBoletoFCFortesFr, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxCheckBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, FMTBcd, DBClient, Provider, SqlExpr,
  ActnList, ComCtrls, DateUtils, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxNavigator, cxContainer, dxCore, cxDateUtils,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;


type
  TTipoMarcacao = (tmNome, tmAll, tmInvert);
  TTipoData = (tdHoje, tdSemana, tdMes);
  TTipoConsistencia = (tcPesquisa, tcImpressao);

  TFormTelaImpressaoDuplicata = class(TFormTelaGeralTEMPLATE)
    SQLContasReceber: TRxQuery;
    SQLCliente: TRxQuery;
    SQLEmpresa: TRxQuery;
    DSSQLContasReceber: TDataSource;
    BtnSelecionarDoc: TSpeedButton;
    Label1: TLabel;
    ComboEmpresa: TRxDBLookupCombo;
    Label9: TLabel;
    TotalContasReceber: TCurrencyEdit;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    DSSQLCliente: TDataSource;
    DSSQLEmpresa: TDataSource;
    TblDuplicatas: TTable;
    TblDuplicatasCLIEA14CGC: TStringField;
    TblDuplicatasCLIEA20IE: TStringField;
    TblDuplicatasCLIEA11CPF: TStringField;
    TblDuplicatasCLIEA10RG: TStringField;
    TblDuplicatasCLIEA60RAZAOSOC: TStringField;
    TblDuplicatasCLIEA60NOMEFANT: TStringField;
    TblDuplicatasCLIEA15FONE1: TStringField;
    TblDuplicatasCLIEA15FONE2: TStringField;
    TblDuplicatasCLIEA15FAX: TStringField;
    TblDuplicatasCLIEA60ENDRES: TStringField;
    TblDuplicatasCLIEA60BAIRES: TStringField;
    TblDuplicatasCLIEA60CIDRES: TStringField;
    TblDuplicatasCLIEA2UFRES: TStringField;
    TblDuplicatasCLIEA8CEPRES: TStringField;
    TblDuplicatasCLIEA60ENDCOB: TStringField;
    TblDuplicatasCLIEA60BAICOB: TStringField;
    TblDuplicatasCLIEA60CIDCOB: TStringField;
    TblDuplicatasCLIEA2UFCOB: TStringField;
    TblDuplicatasCLIEA8CEPCOB: TStringField;
    TblDuplicatasCLIEA13ID: TStringField;
    TblDuplicatasCTRCINROPARC: TIntegerField;
    TblDuplicatasCTRCDVENC: TDateTimeField;
    TblDuplicatasCTRCN2VLR: TBCDField;
    TblDuplicatasCTRCN2DESCFIN: TBCDField;
    TblDuplicatasNOFIA13ID: TStringField;
    TblDuplicatasCTRCA30NRODUPLICBANCO: TStringField;
    TblDuplicatasCTRCDEMIS: TDateTimeField;
    TblDuplicatasLocPagto: TStringField;
    TblDuplicatasEndPagto: TStringField;
    TblDuplicatasExtensoLin2: TStringField;
    TblDuplicatasExtensoLin1: TStringField;
    TblDuplicatasEMPRICOD: TIntegerField;
    TblDuplicatasCTRCA13ID: TStringField;
    TblDuplicatasNumeroParcelas: TIntegerField;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberTERMICOD: TIntegerField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCTRCCSTATUS: TStringField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCN2VLR: TBCDField;
    SQLContasReceberCTRCN2DESCFIN: TBCDField;
    SQLContasReceberCTRCN2TOTREC: TBCDField;
    SQLContasReceberCTRCDULTREC: TDateTimeField;
    SQLContasReceberPORTICOD: TIntegerField;
    SQLContasReceberCTRCA5TIPOPADRAO: TStringField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberNOFIA13ID: TStringField;
    SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField;
    SQLContasReceberCTRCDEMIS: TDateTimeField;
    SQLContasReceberCLIEA60RAZAOSOC: TStringField;
    SQLContasReceberCLIEA14CGC: TStringField;
    SQLContasReceberCLIEA20IE: TStringField;
    SQLContasReceberCLIEA11CPF: TStringField;
    SQLContasReceberCLIEA10RG: TStringField;
    SQLContasReceberCLIEA60NOMEFANT: TStringField;
    SQLContasReceberCLIEA15FONE1: TStringField;
    SQLContasReceberCLIEA15FONE2: TStringField;
    SQLContasReceberCLIEA15FAX: TStringField;
    SQLContasReceberCLIEA60ENDRES: TStringField;
    SQLContasReceberCLIEA60BAIRES: TStringField;
    SQLContasReceberCLIEA60CIDRES: TStringField;
    SQLContasReceberCLIEA2UFRES: TStringField;
    SQLContasReceberCLIEA8CEPRES: TStringField;
    SQLContasReceberCLIEA60ENDCOB: TStringField;
    SQLContasReceberCLIEA60BAICOB: TStringField;
    SQLContasReceberCLIEA60CIDCOB: TStringField;
    SQLContasReceberCLIEA2UFCOB: TStringField;
    SQLContasReceberCLIEA8CEPCOB: TStringField;
    FormStorage: TFormStorage;
    SQLContasReceberVALORTOTAL: TFloatField;
    SQLTotais: TRxQuery;
    Label7: TLabel;
    TblDuplicatasTotalDocumento: TFloatField;
    SQLTotaisTOTALDOCUMENTO: TBCDField;
    SQLTotaisNROPARCELAS: TIntegerField;
    SQLTotaisCTRCA30NRODUPLICBANCO: TStringField;
    EditParcelas: TEdit;
    TblDuplicatasInstrucoes: TStringField;
    MenuImp: TPopupMenu;
    MnDuplicatas: TMenuItem;
    MnBloquetos: TMenuItem;
    ComboBloqueto: TFilterComboBox;
    FileList: TFileListBox;
    Label10: TLabel;
    ButtonImp: TRxSpeedButton;
    Report: TCrpe;
    MenuOptions: TPopupMenu;
    Excluirregistroselecionado1: TMenuItem;
    SQLContasReceberDUPLA13ID: TStringField;
    TblDuplicatasDocumentos: TStringField;
    SQLTipoDocumento: TRxQuery;
    DSSQLTipoDocumento: TDataSource;
    SQLTipoDocumentoTPDCICOD: TIntegerField;
    SQLTipoDocumentoTPDCA60DESCR: TStringField;
    ComboTipoDocumento: TRxDBLookupCombo;
    Label3: TLabel;
    PipelEmpresa: TppDBPipeline;
    PipeDuplicatas: TppDBPipeline;
    ReportDuplicatasServico: TppReport;
    ppDetailBand1: TppDetailBand;
    ppShape1: TppShape;
    ppShape4: TppShape;
    ppLine2: TppLine;
    ppLine1: TppLine;
    ppShape8: TppShape;
    ppShape7: TppShape;
    ppShape6: TppShape;
    ppShape3: TppShape;
    NomeCli: TppDBText;
    EnderCli: TppDBText;
    BairroCli: TppDBText;
    DtaVenc: TppDBText;
    DtaDoc: TppDBText;
    Valor1: TppDBText;
    CepCli: TppDBText;
    CidaCli: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel1: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppShape5: TppShape;
    ppLabel5: TppLabel;
    ppLine3: TppLine;
    ppLabel6: TppLabel;
    Valor2: TppDBText;
    NumDoc: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    UfCli: TppDBText;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    CgcCli: TppDBText;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLine4: TppLine;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLine5: TppLine;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppDBText16: TppDBText;
    ppDBText9: TppDBText;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBText15: TppDBText;
    ppDBText17: TppDBText;
    ppLabel37: TppLabel;
    DSTblDuplicatas: TDataSource;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppShape2: TppShape;
    ppDBMemo1: TppDBMemo;
    DuplicatasMercantil1: TMenuItem;
    ReportDuplicataMercantil: TppReport;
    ppDetailBand2: TppDetailBand;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppLabel42: TppLabel;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppShape15: TppShape;
    ppLabel46: TppLabel;
    ppLine8: TppLine;
    ppLabel47: TppLabel;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppDBText38: TppDBText;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppDBText39: TppDBText;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLine9: TppLine;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLine10: TppLine;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppShape16: TppShape;
    ppDBMemo2: TppDBMemo;
    SQLContasReceberAVALA60RAZAOSOC: TStringField;
    TblDuplicatasAVALA60RAZAOSOC: TStringField;
    TblDuplicatasNumeroDocParc: TStringField;
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
    ppImageMercantil: TppImage;
    ppImageServico: TppImage;
    Label11: TLabel;
    ComboEmitidos: TComboBox;
    Label12: TLabel;
    ComboOrdem: TComboBox;
    Label13: TLabel;
    ComboTipoCliente: TRxDBLookupCombo;
    SQLTipoCliente: TRxQuery;
    DSSQLTipoCliente: TDataSource;
    SQLTipoClienteTPCLICOD: TIntegerField;
    SQLTipoClienteTPCLA30DESCR: TStringField;
    MnBloquetosLaser: TMenuItem;
    DSSQLContaCorrente: TDataSource;
    SQLContaCorrente: TRxQuery;
    SQLContaCorrenteCTCRICOD: TIntegerField;
    SQLContaCorrenteBANCA5COD: TStringField;
    SQLContaCorrenteCTCRA15AGENCIA: TStringField;
    SQLContaCorrenteCTCRA15NUMERO: TStringField;
    SQLContaCorrenteCTCRA60TITULAR: TStringField;
    SQLContaCorrenteCTCRDABERTURA: TDateTimeField;
    SQLContaCorrenteCTCRN2LIMITE: TBCDField;
    SQLContaCorrenteCTCRN2SALDOATUAL: TBCDField;
    SQLContaCorrenteTMBCICOD: TIntegerField;
    SQLContaCorrentePENDENTE: TStringField;
    SQLContaCorrenteREGISTRO: TDateTimeField;
    SQLContaCorrenteEMPRICOD: TIntegerField;
    SQLContaCorrenteCTCRDULTALTSALDO: TDateTimeField;
    SQLContaCorrenteCTCRA30CODCONTABIL: TStringField;
    SQLContaCorrenteCTCRA15CEDENTECOD: TStringField;
    SQLContaCorrenteCTCRA15CEDENTEDIGCOD: TStringField;
    SQLContaCorrenteCTCRA15DIGAGENCIA: TStringField;
    SQLContaCorrenteCTCRA15DIGCONTA: TStringField;
    Label14: TLabel;
    ComboContaCorrente: TRxDBLookupCombo;
    SQLContaCorrenteCTCRA15CARTEIRACOD: TStringField;
    N1: TMenuItem;
    RxSpeedButton1: TRxSpeedButton;
    SQLContaCorrenteCTCRA15DIGBANCO: TStringField;
    SQLContaCorrenteCTCRA15POSTO: TStringField;
    SQLContaCorrenteCTCRINOSSONUMERO: TIntegerField;
    SQLContaCorrenteCTCRA150LOGOBANCO: TStringField;
    SQLContasReceberTPCLICOD: TIntegerField;
    TblDuplicatasNOSSONUMERO: TStringField;
    SQLContasReceberCTRCA15NOSSONUMERO: TStringField;
    gbCobranca: TgbCobranca;
    gbTitulo: TgbTitulo;
    SQLEmpresaEMPRA60CONTATO: TStringField;
    SQLEmpresaEMPRCLUCROREAL: TStringField;
    SQLEmpresaEMPRN2VLRFUNDOPROMO: TBCDField;
    SQLEmpresaEMPRA15REGJUNTA: TStringField;
    SQLEmpresaEMPRA20IMUNIC: TStringField;
    SQLEmpresaNOMETECNICOAGRIC: TStringField;
    SQLEmpresaENDTECNICOAGRIC: TStringField;
    SQLEmpresaCIDTECNICOAGRIC: TStringField;
    SQLEmpresaCPFTECNICOAGRIC: TStringField;
    SQLEmpresaCREATECNICOAGRIC: TStringField;
    SQLEmpresaSERIE: TStringField;
    SQLEmpresaARTIGO: TStringField;
    SQLEmpresaNRORECEITATUAL: TIntegerField;
    SQLEmpresaNRORECEITAULT: TIntegerField;
    SQLEmpresaEMPRA20CPFCONTADOR: TStringField;
    SQLEmpresaEMPRA20CPFRESP: TStringField;
    SQLEmpresaEMPRA30CRC: TStringField;
    SQLEmpresaEMPRA40CARGOCONT: TStringField;
    SQLEmpresaEMPRA40CARGORESP: TStringField;
    SQLEmpresaEMPRA60CONTADOR: TStringField;
    SQLEmpresaEMPRIENDNRO: TIntegerField;
    SQLEmpresaEMPRIMUNICODFED: TIntegerField;
    SQLEmpresaEMPRIUFCODFED: TIntegerField;
    SQLEmpresaEMPRDREGJUNTA: TDateTimeField;
    SQLEmpresaEMPRA3CRT: TStringField;
    SQLEmpresaEMPRN2CREDICMS: TBCDField;
    SQLEmpresaEMPRA10FAXCONTADOR: TStringField;
    SQLEmpresaEMPRA10FONECONTADOR: TStringField;
    SQLEmpresaEMPRA14CNPJCONTADOR: TStringField;
    SQLEmpresaEMPRA60BAICONTADOR: TStringField;
    SQLEmpresaEMPRA60ENDCONTADOR: TStringField;
    SQLEmpresaEMPRA7CODMUNCONTADOR: TStringField;
    SQLEmpresaEMPRA8CEPCONTADOR: TStringField;
    SQLEmpresaEMPRA15CRCCONTADOR: TStringField;
    SQLEmpresaEMPRIATIVIDADE: TIntegerField;
    SQLEmpresaEMPRA150CONTADOREMAIL: TStringField;
    SQLEmpresaEMPRA2NATPJ: TStringField;
    SQLEmpresaEMPRA9SUFRAMA: TStringField;
    SQLEmpresaCNAEFISCAL: TStringField;
    SQLContaCorrenteCTRCINOSSONUMERO: TIntegerField;
    acbrBoletoPrint: TACBrBoletoFCFortes;
    ACBrBoleto: TACBrBoleto;
    GroupProcessamento: TGroupBox;
    Label15: TLabel;
    ComboBanco: TComboBox;
    Label16: TLabel;
    ComboLayout: TComboBox;
    radioTipoImpressao: TRadioGroup;
    CheckPrevisualizar: TCheckBox;
    SQLContasReceberMARCACAO: TStringField;
    QueryContaReceber: TSQLQuery;
    ProviderContaReceber: TDataSetProvider;
    ClientContaReceber: TClientDataSet;
    MarcarTodos1: TMenuItem;
    DesmarcarTodos1: TMenuItem;
    InverterSeleo1: TMenuItem;
    N3: TMenuItem;
    N2: TMenuItem;
    FecharAgrupamento1: TMenuItem;
    ExpandirTodos1: TMenuItem;
    RecolherTodos1: TMenuItem;
    GroupBox1: TGroupBox;
    EditLocalPagto: TEdit;
    Label5: TLabel;
    CheckLocalPagto: TCheckBox;
    EditEndPagto: TEdit;
    Label6: TLabel;
    CheckEndCob: TCheckBox;
    Label8: TLabel;
    ClientContaReceberCTRCA13ID: TStringField;
    ClientContaReceberEMPRICOD: TIntegerField;
    ClientContaReceberTERMICOD: TIntegerField;
    ClientContaReceberCLIEA13ID: TStringField;
    ClientContaReceberCTRCCSTATUS: TStringField;
    ClientContaReceberCTRCINROPARC: TIntegerField;
    ClientContaReceberCTRCDVENC: TSQLTimeStampField;
    ClientContaReceberCTRCN2VLR: TFMTBCDField;
    ClientContaReceberVALORTOTAL: TFloatField;
    ClientContaReceberCTRCN2DESCFIN: TFMTBCDField;
    ClientContaReceberCTRCN2TOTREC: TFMTBCDField;
    ClientContaReceberCTRCDULTREC: TSQLTimeStampField;
    ClientContaReceberPORTICOD: TIntegerField;
    ClientContaReceberCTRCA5TIPOPADRAO: TStringField;
    ClientContaReceberCUPOA13ID: TStringField;
    ClientContaReceberNOFIA13ID: TStringField;
    ClientContaReceberCTRCA30NRODUPLICBANCO: TStringField;
    ClientContaReceberCTRCDEMIS: TSQLTimeStampField;
    ClientContaReceberDUPLA13ID: TStringField;
    ClientContaReceberCTRCA15NOSSONUMERO: TStringField;
    StyleGrid: TcxStyleRepository;
    cxStyleNegrito: TcxStyle;
    grpPesquisa: TGroupBox;
    RadioPeriodo: TRadioGroup;
    ComboCliente: TRxDBLookupCombo;
    Label2: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label4: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    QueryContaReceberCTRCA13ID: TStringField;
    QueryContaReceberEMPRICOD: TIntegerField;
    QueryContaReceberTERMICOD: TIntegerField;
    QueryContaReceberCLIEA13ID: TStringField;
    QueryContaReceberCTRCCSTATUS: TStringField;
    QueryContaReceberCTRCINROPARC: TIntegerField;
    QueryContaReceberCTRCDVENC: TSQLTimeStampField;
    QueryContaReceberCTRCN2VLR: TFMTBCDField;
    QueryContaReceberVALORTOTAL: TFloatField;
    QueryContaReceberCTRCN2DESCFIN: TFMTBCDField;
    QueryContaReceberCTRCN2TOTREC: TFMTBCDField;
    QueryContaReceberCTRCDULTREC: TSQLTimeStampField;
    QueryContaReceberPORTICOD: TIntegerField;
    QueryContaReceberCTRCA5TIPOPADRAO: TStringField;
    QueryContaReceberCUPOA13ID: TStringField;
    QueryContaReceberNOFIA13ID: TStringField;
    QueryContaReceberCTRCA30NRODUPLICBANCO: TStringField;
    QueryContaReceberCTRCDEMIS: TSQLTimeStampField;
    QueryContaReceberDUPLA13ID: TStringField;
    QueryContaReceberCTRCA15NOSSONUMERO: TStringField;
    Action: TActionList;
    actMarcarTodos: TAction;
    actDesmarcarTodos: TAction;
    actInverterSelecao: TAction;
    StatusBarTela: TStatusBar;
    actExpandir: TAction;
    actRecolher: TAction;
    actAjustarColunas: TAction;
    actDesagrupar: TAction;
    actGrupoRazaoSocial: TAction;
    actGrupoEmissao: TAction;
    actGrupoVencimento: TAction;
    actGrupoFantasia: TAction;
    actGrupoUfRes: TAction;
    actGrupoCidadeRes: TAction;
    N4: TMenuItem;
    Desagrupar1: TMenuItem;
    AgruparporDatadeVencimento1: TMenuItem;
    AgruparporRazoSocial1: TMenuItem;
    AgruparporCidadeResid1: TMenuItem;
    AgruparporNomeFantasia1: TMenuItem;
    AgruparporDatadeEmisso1: TMenuItem;
    AgruparporUFResid1: TMenuItem;
    N5: TMenuItem;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1CLIEA13ID: TcxGridDBColumn;
    cxGrid1DBTableView1CLIEA60RAZAOSOC: TcxGridDBColumn;
    cxGrid1DBTableView1CTRCDEMIS: TcxGridDBColumn;
    cxGrid1DBTableView1CTRCDVENC: TcxGridDBColumn;
    cxGrid1DBTableView1CTRCA15NOSSONUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1CTRCA30NRODUPLICBANCO: TcxGridDBColumn;
    cxGrid1DBTableView1CTRCINROPARC: TcxGridDBColumn;
    cxGrid1DBTableView1CTRCN2VLR: TcxGridDBColumn;
    cxGrid1DBTableView1CTRCN2DESCFIN: TcxGridDBColumn;
    cxGrid1DBTableView1VALORTOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1CLIEA14CGC: TcxGridDBColumn;
    cxGrid1DBTableView1CLIEA20IE: TcxGridDBColumn;
    cxGrid1DBTableView1CLIEA11CPF: TcxGridDBColumn;
    cxGrid1DBTableView1CLIEA10RG: TcxGridDBColumn;
    cxGrid1DBTableView1CLIEA60NOMEFANT: TcxGridDBColumn;
    cxGrid1DBTableView1CLIEA15FONE1: TcxGridDBColumn;
    cxGrid1DBTableView1CLIEA15FONE2: TcxGridDBColumn;
    cxGrid1DBTableView1CLIEA15FAX: TcxGridDBColumn;
    cxGrid1DBTableView1CLIEA60ENDRES: TcxGridDBColumn;
    cxGrid1DBTableView1CLIEA60BAIRES: TcxGridDBColumn;
    cxGrid1DBTableView1CLIEA60CIDRES: TcxGridDBColumn;
    cxGrid1DBTableView1CLIEA2UFRES: TcxGridDBColumn;
    cxGrid1DBTableView1CLIEA8CEPRES: TcxGridDBColumn;
    cxGrid1DBTableView1CLIEA60ENDCOB: TcxGridDBColumn;
    cxGrid1DBTableView1CLIEA60BAICOB: TcxGridDBColumn;
    cxGrid1DBTableView1CLIEA60CIDCOB: TcxGridDBColumn;
    cxGrid1DBTableView1CLIEA2UFCOB: TcxGridDBColumn;
    cxGrid1DBTableView1CLIEA8CEPCOB: TcxGridDBColumn;
    cxGrid1DBTableView1CTRCA13ID: TcxGridDBColumn;
    cxGrid1DBTableView1EMPRICOD: TcxGridDBColumn;
    cxGrid1DBTableView1TERMICOD: TcxGridDBColumn;
    cxGrid1DBTableView1CTRCCSTATUS: TcxGridDBColumn;
    cxGrid1DBTableView1CTRCN2TOTREC: TcxGridDBColumn;
    cxGrid1DBTableView1CTRCDULTREC: TcxGridDBColumn;
    cxGrid1DBTableView1PORTICOD: TcxGridDBColumn;
    cxGrid1DBTableView1CTRCA5TIPOPADRAO: TcxGridDBColumn;
    cxGrid1DBTableView1CUPOA13ID: TcxGridDBColumn;
    cxGrid1DBTableView1NOFIA13ID: TcxGridDBColumn;
    cxGrid1DBTableView1DUPLA13ID: TcxGridDBColumn;
    cxGrid1DBTableView1AVALA60RAZAOSOC: TcxGridDBColumn;
    cxGrid1DBTableView1TPCLICOD: TcxGridDBColumn;
    cxGridLevelDocumentos: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2MARCACAO: TcxGridDBColumn;
    cxGrid1DBTableView2CTRCA13ID: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2EMPRICOD: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2TERMICOD: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2CLIEA13ID: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2CTRCCSTATUS: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2CTRCINROPARC: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2CTRCDVENC: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2CTRCN2VLR: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2VALORTOTAL: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2CTRCN2DESCFIN: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2CTRCN2TOTREC: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2CTRCDULTREC: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2PORTICOD: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2CTRCA5TIPOPADRAO: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2CUPOA13ID: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2NOFIA13ID: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2CTRCA30NRODUPLICBANCO: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2CTRCDEMIS: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2DUPLA13ID: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2CTRCA15NOSSONUMERO: TcxGridDBColumn;
    QueryContaReceberCLIEA14CGC: TStringField;
    QueryContaReceberCLIEA20IE: TStringField;
    QueryContaReceberCLIEA11CPF: TStringField;
    QueryContaReceberCLIEA10RG: TStringField;
    QueryContaReceberCLIEA60RAZAOSOC: TStringField;
    QueryContaReceberCLIEA60NOMEFANT: TStringField;
    QueryContaReceberCLIEA15FONE1: TStringField;
    QueryContaReceberCLIEA15FONE2: TStringField;
    QueryContaReceberCLIEA15FAX: TStringField;
    QueryContaReceberCLIEA60ENDRES: TStringField;
    QueryContaReceberCLIEA60BAIRES: TStringField;
    QueryContaReceberCLIEA60CIDRES: TStringField;
    QueryContaReceberCLIEA2UFRES: TStringField;
    QueryContaReceberCLIEA8CEPRES: TStringField;
    QueryContaReceberCLIEA60ENDCOB: TStringField;
    QueryContaReceberCLIEA60BAICOB: TStringField;
    QueryContaReceberCLIEA60CIDCOB: TStringField;
    QueryContaReceberCLIEA2UFCOB: TStringField;
    QueryContaReceberCLIEA8CEPCOB: TStringField;
    QueryContaReceberTPCLICOD: TIntegerField;
    QueryContaReceberAVALA60RAZAOSOC: TStringField;
    ClientContaReceberCLIEA14CGC: TStringField;
    ClientContaReceberCLIEA20IE: TStringField;
    ClientContaReceberCLIEA11CPF: TStringField;
    ClientContaReceberCLIEA10RG: TStringField;
    ClientContaReceberCLIEA60RAZAOSOC: TStringField;
    ClientContaReceberCLIEA60NOMEFANT: TStringField;
    ClientContaReceberCLIEA15FONE1: TStringField;
    ClientContaReceberCLIEA15FONE2: TStringField;
    ClientContaReceberCLIEA15FAX: TStringField;
    ClientContaReceberCLIEA60ENDRES: TStringField;
    ClientContaReceberCLIEA60BAIRES: TStringField;
    ClientContaReceberCLIEA60CIDRES: TStringField;
    ClientContaReceberCLIEA2UFRES: TStringField;
    ClientContaReceberCLIEA8CEPRES: TStringField;
    ClientContaReceberCLIEA60ENDCOB: TStringField;
    ClientContaReceberCLIEA60BAICOB: TStringField;
    ClientContaReceberCLIEA60CIDCOB: TStringField;
    ClientContaReceberCLIEA2UFCOB: TStringField;
    ClientContaReceberCLIEA8CEPCOB: TStringField;
    ClientContaReceberTPCLICOD: TIntegerField;
    ClientContaReceberAVALA60RAZAOSOC: TStringField;
    QueryContaReceberMARCACAO: TStringField;
    ClientContaReceberMARCACAO: TStringField;
    de: TcxDateEdit;
    ate: TcxDateEdit;
    SQLContaCorrenteCTCRA15CARTEIRAVARIACAO: TStringField;
    SQLContaCorrenteCTCRA15NUMEROCONVENIO: TStringField;
    mmoMensagens: TMemo;
    N6: TMenuItem;
    AjustarColunas1: TMenuItem;
    Label21: TLabel;
    QueryContaReceberCLIEA5NROENDRES: TStringField;
    ClientContaReceberCLIEA5NROENDRES: TStringField;
    procedure BtnSelecionarDocClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MnDuplicatasClick(Sender: TObject);
    procedure MnBloquetosClick(Sender: TObject);
    procedure TblDuplicatasBeforeEdit(DataSet: TDataSet);
    procedure Excluirregistroselecionado1Click(Sender: TObject);
    procedure GeraTabelaTempDuplicata;
    procedure DuplicatasMercantil1Click(Sender: TObject);
    procedure ReportDuplicataMercantilPreviewFormCreate(Sender: TObject);
    procedure ReportDuplicatasServicoPreviewFormCreate(Sender: TObject);
    procedure ReportDuplicataMercantilBeforePrint(Sender: TObject);
    procedure ReportDuplicatasServicoBeforePrint(Sender: TObject);
    procedure MnBloquetosLaserClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label19Click(Sender: TObject);
    procedure Label20Click(Sender: TObject);
    procedure actMarcarTodosExecute(Sender: TObject);
    procedure actDesmarcarTodosExecute(Sender: TObject);
    procedure actInverterSelecaoExecute(Sender: TObject);
    procedure actExpandirExecute(Sender: TObject);
    procedure actRecolherExecute(Sender: TObject);
    procedure actAjustarColunasExecute(Sender: TObject);
    procedure actGrupoRazaoSocialExecute(Sender: TObject);
    procedure actGrupoEmissaoExecute(Sender: TObject);
    procedure actDesagruparExecute(Sender: TObject);
    procedure actGrupoVencimentoExecute(Sender: TObject);
    procedure actGrupoFantasiaExecute(Sender: TObject);
    procedure actGrupoUfResExecute(Sender: TObject);
    procedure actGrupoCidadeResExecute(Sender: TObject);
    procedure AjustarColunas1Click(Sender: TObject);
    procedure Label21Click(Sender: TObject);
  private
    { Private declarations }
    totMarcados: Integer;
    {Procedimento responsável por efetuar as marcações, desmarcações e inversões de marcação na cxGrid}
    procedure MarcarRegistros(DataSet: TClientDataSet; TipoMarcacao: TTipoMarcacao);
    {Procedimento responsável por setar de forma dinâmica as datas conforme tipagem passado por parâmetro}
    procedure ProcessaDatas(TipoData: TTipoData);
    {Procedimento responsável por alterar o status da duplicata conforme confirmação do usuário (Sim/Não)}
    procedure ProcessaStatusDuplicatas;
    {Procedimento responsável por setar os campos padrões na tela e também resetar variáveis e objetos usados no processamento}
    procedure InicializaTela;
    {Procedimento de consistencia/validação de dados antes do processo de geração dos boletos}
    procedure ConsisteCampos(pTipoConsistencia: TTipoConsistencia);
  public
    { Public declarations }
    Total : Double;
    Parcelas : Integer;    
  end;

var
  FormTelaImpressaoDuplicata: TFormTelaImpressaoDuplicata;

implementation

uses ExtensoLib, DataModulo, TCobranca_un;

{$R *.dfm}

procedure TFormTelaImpressaoDuplicata.BtnSelecionarDocClick(Sender: TObject);
var stlSQL: TStringList;
begin
  inherited;

  if not Assigned(DM) then
    DM := TDM.Create(Self);

  {SQL Dinamico para Contas a Receber}
  stlSQL := TStringList.Create;
  try
    stlSQL.Text := trim(QueryContaReceber.SQL.Text);

    {

    /*BOLETO_EMITIDO*/   -6
    /*DATA_EMISSAO*/     -5
    /*DATA_VENCIMENTO*/  -4
    /*CLIENTE*/          -3
    /*EMPRESA*/          -2
    /*ORDENACAO*/        -1

    }

    {Fltro para campo boleto emitido - para exibição em menor escala da grid}
    stlSQL[stlSQL.Count - 6] := ' and (CTRCCEMITIDOBOLETO = '+QuotedStr('N')+')';

    {Filtro de datas quando informado na tela}
    if (de.Date > 0) and (ate.Date > 0) then
    begin
      ConsisteCampos(tcPesquisa);

      case RadioPeriodo.ItemIndex of
        0: {Data_Emissão}
          stlSQL[stlSQL.Count - 5] := ' and ((CR.CTRCDEMIS >= :pDataInicial) and (CR.CTRCDEMIS <= :pDataFinal))';

        1: {Data_Vencimento}
          stlSQL[stlSQL.Count - 4] := ' and ((CR.CTRCDVENC >= :pDataInicial) and (CR.CTRCDVENC <= :pDataInicial))';
      end;
    end else
    begin
      stlSQL[stlSQL.Count - 5] := '/*DATA_EMISSAO*/';
      stlSQL[stlSQL.Count - 4] := '/*DATA_VENCIMENTO*/';
    end;

    {Filtro para cliente quando selecionado}
    if ComboCliente.KeyValue <> Null then
    begin
      stlSQL[stlSQL.Count - 3] := ' and CR.CLIEA13ID = ' + QuotedStr(ComboCliente.KeyValue);
    end;

    {Filtro para empresa selecionada}
    if ComboEmpresa.KeyValue <> null then
    begin
      stlSQL[stlSQL.Count - 2] := ' and CR.EMPRICOD = ' + QuotedStr(ComboEmpresa.KeyValue);
    end;

    {Atualizando Instrução SQL da Query}
    QueryContaReceber.SQL.Clear;
    QueryContaReceber.SQL.Text := stlSQL.Text;

    {Passagem de Parâmetros de Data caso tenha sido informado}
    if (de.Date > 0) and (ate.Date > 0) then
    begin
      QueryContaReceber.ParamByName('pDataInicial').AsDate := De.date;
      QueryContaReceber.ParamByName('pDataFinal').AsDate := Ate.date;
    end;

    {Setando o SQLConnection - DBExpress}
    QueryContaReceber.SQLConnection := DM.SQLCON;

    {Exibindo os dados na tela}
    ClientContaReceber.Close;
    ClientContaReceber.Open;
    
  finally
    stlSQL.Free;
  end;
end;

procedure TFormTelaImpressaoDuplicata.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLCliente.Active       then SQLCliente.Open;
  if not SQLTipoCliente.Active   then SQLTipoCliente.Open;
  if not SQLEmpresa.Active       then SQLEmpresa.Open;
  if not SQLTipoDocumento.Active then SQLTipoDocumento.Open;
  if not SQLContaCorrente.Active then SQLContaCorrente.Open;
  ComboEmpresa.Value := EmpresaPadrao;
end;

procedure TFormTelaImpressaoDuplicata.MnDuplicatasClick(Sender: TObject);
begin
  inherited;
  GeraTabelaTempDuplicata;
  // IMPRIME
  if DM.SQLConfigGeralCFGEA255EXEDUPLICATA.AsString <> '' then
    begin
      if FileExists(DM.SQLConfigGeralCFGEA255EXEDUPLICATA.AsString) then
        ShellExecute(0,'Open',PChar(DM.SQLConfigGeralCFGEA255EXEDUPLICATA.AsString),PChar(ComboEmpresa.Value),PChar(DM.PathAplicacao),SW_NORMAL)
      else
        ReportDuplicatasServico.Print;
    end
  else
    ReportDuplicatasServico.Print;
end;

procedure TFormTelaImpressaoDuplicata.MnBloquetosClick(Sender: TObject);
begin
  inherited;
  if ComboBloqueto.Text = '' then
    begin
      ShowMessage('Você deve selecionar um bloqueto !');
      ComboBloqueto.SetFocus;
      Abort;
    end;

  try
    TblDuplicatas.Close;
    TblDuplicatas.DeleteTable;
    TblDuplicatas.CreateTable;
    TblDuplicatas.Open;
  except
    TblDuplicatas.CreateTable;
    TblDuplicatas.Open;
  end;

  SQLContasReceber.First;
  while not SQLContasReceber.Eof do
    begin
      TblDuplicatas.Append;
      TblDuplicatasEMPRICOD.AsString              := SQLContasReceberEMPRICOD.AsString;
      TblDuplicatasCTRCA13ID.AsString             := SQLContasReceberCTRCA13ID.AsString;
      TblDuplicatasCLIEA13ID.AsString             := SQLContasReceberCLIEA13ID.AsString;
      TblDuplicatasNOFIA13ID.AsString             := SQLContasReceberNOFIA13ID.AsString;
      TblDuplicatasCTRCN2VLR.AsString             := SQLContasReceberCTRCN2VLR.AsString;
      TblDuplicatasCTRCDEMIS.AsString             := SQLContasReceberCTRCDEMIS.AsString;
      TblDuplicatasCTRCDVENC.AsString             := SQLContasReceberCTRCDVENC.AsString;
      TblDuplicatasCTRCINROPARC.AsString          := SQLContasReceberCTRCINROPARC.AsString;
      TblDuplicatasCTRCN2DESCFIN.AsString         := SQLContasReceberCTRCN2DESCFIN.AsString;
      TblDuplicatasNumeroDocParc.AsString         := dm.SQLLocate('NOTAFISCAL','NOFIA13ID','NOFIINUMERO','"'+SQLContasReceberNOFIA13ID.AsString+'"') + '-' + SQLContasReceberCTRCINROPARC.AsString;
      TblDuplicatasCTRCA30NRODUPLICBANCO.AsString := SQLContasReceberCTRCA30NRODUPLICBANCO.AsString;
      TblDuplicatasCLIEA14CGC.AsString            := SQLContasReceberCLIEA14CGC.AsString;
      TblDuplicatasCLIEA20IE.AsString             := SQLContasReceberCLIEA20IE.AsString;
      TblDuplicatasCLIEA11CPF.AsString            := SQLContasReceberCLIEA11CPF.AsString;
      TblDuplicatasCLIEA10RG.AsString             := SQLContasReceberCLIEA10RG.AsString;
      TblDuplicatasCLIEA60RAZAOSOC.AsString       := SQLContasReceberCLIEA60RAZAOSOC.AsString;
      TblDuplicatasCLIEA60NOMEFANT.AsString       := SQLContasReceberCLIEA60NOMEFANT.AsString;
      TblDuplicatasCLIEA15FONE1.AsString          := SQLContasReceberCLIEA15FONE1.AsString;
      TblDuplicatasCLIEA15FONE2.AsString          := SQLContasReceberCLIEA15FONE2.AsString;
      TblDuplicatasCLIEA15FAX.AsString            := SQLContasReceberCLIEA15FAX.AsString;
      TblDuplicatasCLIEA60ENDRES.AsString         := SQLContasReceberCLIEA60ENDRES.AsString;
      TblDuplicatasCLIEA60BAIRES.AsString         := SQLContasReceberCLIEA60BAIRES.AsString;
      TblDuplicatasCLIEA60CIDRES.AsString         := SQLContasReceberCLIEA60CIDRES.AsString;
      TblDuplicatasCLIEA2UFRES.AsString           := SQLContasReceberCLIEA2UFRES.AsString;
      TblDuplicatasCLIEA8CEPRES.AsString          := SQLContasReceberCLIEA8CEPRES.AsString;
      TblDuplicatasCLIEA60ENDCOB.AsString         := SQLContasReceberCLIEA60ENDCOB.AsString;
      TblDuplicatasCLIEA60BAICOB.AsString         := SQLContasReceberCLIEA60BAICOB.AsString;
      TblDuplicatasCLIEA60CIDCOB.AsString         := SQLContasReceberCLIEA60CIDCOB.AsString;
      TblDuplicatasCLIEA2UFCOB.AsString           := SQLContasReceberCLIEA2UFCOB.AsString;
      TblDuplicatasCLIEA8CEPCOB.AsString          := SQLContasReceberCLIEA8CEPCOB.AsString;
      TblDuplicatasLocPagto.AsString              := EditLocalPagto.Text;
      TblDuplicatasEndPagto.AsString              := EditEndPagto.Text;
      ValorExtenso(VExt,TblDuplicatasCTRCN2VLR.Value, '', '', 2, 85, '*',3);
      TblDuplicatasExtensoLin1.AsString           := VExt[0];
      TblDuplicatasExtensoLin2.AsString           := VExt[1];

      if SQLTotais.Locate('CTRCA30NRODUPLICBANCO',TblDuplicatasCTRCA30NRODUPLICBANCO.AsString,[]) then
        TblDuplicatasTotalDocumento.AsFloat       := SQLTotaisTOTALDOCUMENTO.AsFloat
      else
        TblDuplicatasTotalDocumento.AsFloat       := SQLContasReceberCTRCN2VLR.AsFloat;

      TblDuplicatasInstrucoes.AsString            := mmoMensagens.Lines.Text;
      TblDuplicatasDocumentos.AsString            := SQLLocate('DUPLICATA','DUPLA13ID','DUPLA254DOCS','"' + SQLContasReceberDUPLA13ID.AsString + '"' );
      TblDuplicatas.Post;
      SQLContasReceber.Next;
    end;
      TblDuplicatas.Close;
    Report.WindowStyle.Title    := 'Emissão de Documentos';
    Report.ReportTitle          := 'Emissão de Documentos';
    Report.ReportName           := Dm.PathAplicacao + 'Bloquetos\' + ComboBloqueto.Text;
    Report.Execute;
    if Pergunta('SIM','Deseja trocar o status destes Boletos para Emitidos?') then
      begin
        SQLContasReceber.First;
        while not SQLContasReceber.Eof do
          begin
            DM.SQLTemplate.Close;
            DM.SQLTemplate.Sql.Clear;
            DM.SQLTemplate.Sql.Add('UPDATE CONTASRECEBER SET Pendente="S", CTRCCEMITIDOBOLETO = "S"'+' Where CTRCA13ID = ' + '"' + SQLContasReceberCTRCA13ID.Value + '"') ;
            DM.SQLTemplate.ExecSql;
            DM.SQLTemplate.Close;
            SQLContasReceber.Next;
          end;
      end;
end;

procedure TFormTelaImpressaoDuplicata.TblDuplicatasBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.Cancel;
end;

procedure TFormTelaImpressaoDuplicata.Excluirregistroselecionado1Click(
  Sender: TObject);
begin
  inherited;
  EditParcelas.Text := IntToStr(StrToInt(EditParcelas.Text)- 1);
  TotalContasReceber.Text := FloatToStr(StrToFloat(TotalContasReceber.Text)- SQLContasReceberVALORTOTAL.AsFloat);
  SQLContasReceber.Delete;
end;

procedure TFormTelaImpressaoDuplicata.GeraTabelaTempDuplicata;
var
  FileStream : TFileStream;
  BlobStream : TStream;

begin
  try
    TblDuplicatas.Close;
    TblDuplicatas.DeleteTable;
    TblDuplicatas.CreateTable;
    TblDuplicatas.Open;
  except
    TblDuplicatas.CreateTable;
    TblDuplicatas.Open;
  end;

  SQLContasReceber.First;

  while not SQLContasReceber.Eof do
    begin
      TblDuplicatas.Append;
      TblDuplicatasEMPRICOD.AsString              := SQLContasReceberEMPRICOD.AsString;
      TblDuplicatasCTRCA13ID.AsString             := SQLContasReceberCTRCA13ID.AsString;
      TblDuplicatasCLIEA13ID.AsString             := SQLContasReceberCLIEA13ID.AsString;
      TblDuplicatasNOFIA13ID.AsString             := SQLContasReceberNOFIA13ID.AsString;
      TblDuplicatasCTRCN2VLR.AsString             := SQLContasReceberCTRCN2VLR.AsString;
      TblDuplicatasCTRCDEMIS.AsString             := SQLContasReceberCTRCDEMIS.AsString;
      TblDuplicatasCTRCDVENC.AsString             := SQLContasReceberCTRCDVENC.AsString;
      TblDuplicatasCTRCINROPARC.AsString          := SQLContasReceberCTRCINROPARC.AsString;
      TblDuplicatasCTRCN2DESCFIN.AsString         := SQLContasReceberCTRCN2DESCFIN.AsString;
      TblDuplicatasCTRCA30NRODUPLICBANCO.AsString := SQLContasReceberCTRCA30NRODUPLICBANCO.AsString;
      TblDuplicatasNumeroDocParc.AsString         := SQLContasReceberCTRCA30NRODUPLICBANCO.AsString + ' - ' + SQLContasReceberCTRCINROPARC.AsString;
      TblDuplicatasCLIEA14CGC.AsString            := SQLContasReceberCLIEA14CGC.AsString;
      TblDuplicatasCLIEA20IE.AsString             := SQLContasReceberCLIEA20IE.AsString;
      TblDuplicatasCLIEA11CPF.AsString            := SQLContasReceberCLIEA11CPF.AsString;
      TblDuplicatasCLIEA10RG.AsString             := SQLContasReceberCLIEA10RG.AsString;
      TblDuplicatasCLIEA60RAZAOSOC.AsString       := SQLContasReceberCLIEA60RAZAOSOC.AsString;
      TblDuplicatasCLIEA60NOMEFANT.AsString       := SQLContasReceberCLIEA60NOMEFANT.AsString;
      TblDuplicatasCLIEA15FONE1.AsString          := SQLContasReceberCLIEA15FONE1.AsString;
      TblDuplicatasCLIEA15FONE2.AsString          := SQLContasReceberCLIEA15FONE2.AsString;
      TblDuplicatasCLIEA15FAX.AsString            := SQLContasReceberCLIEA15FAX.AsString;
      TblDuplicatasCLIEA60ENDRES.AsString         := SQLContasReceberCLIEA60ENDRES.AsString;
      TblDuplicatasCLIEA60BAIRES.AsString         := SQLContasReceberCLIEA60BAIRES.AsString;
      TblDuplicatasCLIEA60CIDRES.AsString         := SQLContasReceberCLIEA60CIDRES.AsString;
      TblDuplicatasCLIEA2UFRES.AsString           := SQLContasReceberCLIEA2UFRES.AsString;
      TblDuplicatasCLIEA8CEPRES.AsString          := SQLContasReceberCLIEA8CEPRES.AsString;
      TblDuplicatasCLIEA60ENDCOB.AsString         := SQLContasReceberCLIEA60ENDCOB.AsString;
      TblDuplicatasCLIEA60BAICOB.AsString         := SQLContasReceberCLIEA60BAICOB.AsString;
      TblDuplicatasCLIEA60CIDCOB.AsString         := SQLContasReceberCLIEA60CIDCOB.AsString;
      TblDuplicatasCLIEA2UFCOB.AsString           := SQLContasReceberCLIEA2UFCOB.AsString;
      TblDuplicatasCLIEA8CEPCOB.AsString          := SQLContasReceberCLIEA8CEPCOB.AsString;
      TblDuplicatasAVALA60RAZAOSOC.AsString       := SQLContasReceberAVALA60RAZAOSOC.AsString;

      if CheckLocalPagto.Checked then
        TblDuplicatasLocPagto.AsString            := SQLContasReceberCLIEA60CIDCOB.AsString + '-' + SQLContasReceberCLIEA2UFCOB.AsString
      else
        TblDuplicatasLocPagto.AsString            := EditLocalPagto.Text;

      if CheckEndCob.Checked then
        TblDuplicatasEndPagto.AsString            := SQLContasReceberCLIEA60ENDCOB.AsString + '-' + SQLContasReceberCLIEA60BAICOB.AsString + ' - ' + SQLContasReceberCLIEA8CEPCOB.AsString
      else
        TblDuplicatasEndPagto.AsString            := EditEndPagto.Text;

      ValorExtenso(VExt,TblDuplicatasCTRCN2VLR.Value, '', '', 02, 70, '*',3);
      TblDuplicatasExtensoLin1.AsString           := VExt[0];
      TblDuplicatasExtensoLin2.AsString           := VExt[1];

      if SQLTotais.Locate('CTRCA30NRODUPLICBANCO',TblDuplicatasCTRCA30NRODUPLICBANCO.AsString,[]) then
        TblDuplicatasTotalDocumento.AsFloat       := SQLTotaisTOTALDOCUMENTO.AsFloat
      else
        TblDuplicatasTotalDocumento.AsFloat       := SQLContasReceberCTRCN2VLR.AsFloat;

      TblDuplicatasInstrucoes.AsString            := mmoMensagens.Lines.Text;
      TblDuplicatasDocumentos.AsString            := SQLLocate('DUPLICATA','DUPLA13ID','DUPLA254DOCS','"' + SQLContasReceberDUPLA13ID.AsString + '"' );

      TblDuplicatas.Post;
      SQLContasReceber.Next;
    end;
end;
procedure TFormTelaImpressaoDuplicata.DuplicatasMercantil1Click(
  Sender: TObject);
begin
  inherited;
  GeraTabelaTempDuplicata;
  // IMPRIME
  if DM.SQLConfigGeralCFGEA255EXEDUPLICATA.AsString <> '' then
    begin
      if FileExists(DM.SQLConfigGeralCFGEA255EXEDUPLICATA.AsString) then
        ShellExecute(0,'Open',PChar(DM.SQLConfigGeralCFGEA255EXEDUPLICATA.AsString),PChar(ComboEmpresa.Value),PChar(DM.PathAplicacao),SW_NORMAL)
      else
        ReportDuplicataMercantil.Print;
    end
  else
    ReportDuplicataMercantil.Print;
end;

procedure TFormTelaImpressaoDuplicata.ReportDuplicataMercantilPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ReportDuplicataMercantil.PreviewForm.WindowState := wsMaximized;
end;

procedure TFormTelaImpressaoDuplicata.ReportDuplicatasServicoPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ReportDuplicatasServico.PreviewForm.WindowState  := wsMaximized;
end;

procedure TFormTelaImpressaoDuplicata.ReportDuplicataMercantilBeforePrint(
  Sender: TObject);
  var
  BlobStream : TStream;
  JPEGImage  : TBitmap;

begin
  inherited;
  // Mostra Imagem Associada a empresa
  if SQLEmpresaEMPRBLOGOTIPO.BlobSize <> 0 then
  begin
    BlobStream:= SQLEmpresa.CreateBlobStream(SQLEmpresaEMPRBLOGOTIPO,bmRead);
    JPEGImage := TBitmap.Create;
    try
      JPEGImage.LoadFromStream(BlobStream);
      ppImageMercantil.Picture.Assign(JPEGImage);
    finally
      BlobStream.Free;
      JPEGImage.Free;
    end;
  end
  else
    ppImageMercantil.Picture:=nil;

end;

procedure TFormTelaImpressaoDuplicata.ReportDuplicatasServicoBeforePrint(
  Sender: TObject);
  var
  BlobStream : TStream;
  JPEGImage  : TBitmap;

begin
  inherited;
  // Mostra Imagem Associada a empresa
  if SQLEmpresaEMPRBLOGOTIPO.BlobSize <> 0 then
  begin
    BlobStream:= SQLEmpresa.CreateBlobStream(SQLEmpresaEMPRBLOGOTIPO,bmRead);
    JPEGImage := TBitmap.Create;
    try
      JPEGImage.LoadFromStream(BlobStream);
      ppImageServico.Picture.Assign(JPEGImage);
    finally
      BlobStream.Free;
      JPEGImage.Free;
    end;
  end
  else
    ppImageServico.Picture:=nil;

end;

procedure TFormTelaImpressaoDuplicata.MnBloquetosLaserClick(Sender: TObject);
var vNossoNumero : Integer;
    Titulo: TACBrTitulo;
begin
  inherited;
  {Valida e consiste informações de uso da tela parâmetro tipo de consistencia: Impressão / Pesquisa}
  ConsisteCampos(tcImpressao);

  {Loop para inclusão de bloquetos no componente acbrBoleto}
  ClientContaReceber.First;
  while not ClientContaReceber.Eof do
  begin
    if (ClientContaReceber.FieldByName('MARCACAO').AsString = 'T') then
    begin
     {Adiciona titulo na lista}
     Titulo := ACBrBoleto.CriarTituloNaLista;

      with Titulo do
      begin
        {Dados básicos sobre o boleto}
        Vencimento        := ClientContaReceberCTRCDVENC.AsDateTime;
        DataDocumento     := ClientContaReceberCTRCDEMIS.AsDateTime;
        NumeroDocumento   := ClientContaReceberCTRCA30NRODUPLICBANCO.AsString;
        ACBrBoleto.Banco.TipoCobranca := TACBrTipoCobranca(ComboBanco.ItemIndex);

        {definir nas configurações a espécie a ser utilizada.}
        EspecieDoc        := 'DS'; {duplicata de serviço (não aconselho a ser fixo).}

        {informação de aceite terá de ser informada, tenho que localizar se você possui essa informação.}
        Aceite            := atNao;

        DataProcessamento := Now;
        Carteira          := SQLContaCorrenteCTCRA15CARTEIRACOD.AsString;

        if (ClientContaReceberCTRCA15NOSSONUMERO.AsString = EmptyStr) or (ClientContaReceberCTRCA15NOSSONUMERO.IsNull) then
        begin
          {Adquire o Nosso Número}
          NossoNumero     := Trim(TCobranca.RetornaNossoNumero(COMBOContaCorrente.keyValue));
          {Atualiza o valor adquirido na tabela de contas a receber}
          DM.SQLTemplate.Close;
          DM.SQLTemplate.Sql.Clear;
          DM.SQLTemplate.Sql.Add('UPDATE CONTASRECEBER SET CTRCA15NOSSONUMERO = "'+ NossoNumero +
          '" Where CTRCA13ID = ' + '"' + ClientContaReceberCTRCA13ID.AsString + '"') ;
          DM.SQLTemplate.ExecSql;
          DM.SQLTemplate.Close;
        end else
        begin
          NossoNumero     := Trim(ClientContaReceberCTRCA15NOSSONUMERO.AsString);
        end;

        ValorDocumento    := ClientContaReceberCTRCN2VLR.AsFloat;

        {informações acerca do sacado.}
        with Sacado do
        begin
          NomeSacado     := ClientContaReceberCLIEA60RAZAOSOC.AsString;

          if Trim(ClientContaReceberCLIEA14CGC.AsString) <> '' then
            CNPJCPF      := ClientContaReceberCLIEA14CGC.AsString;
          if Trim(ClientContaReceberCLIEA11CPF.AsString) <> '' then
            CNPJCPF      := ClientContaReceberCLIEA11CPF.AsString;

          if not CheckEndCob.Checked then
          begin
            Logradouro := ClientContaReceberCLIEA60ENDRES.AsString;
            Numero     := ClientContaReceberCLIEA5NROENDRES.AsString;
            Bairro     := ClientContaReceberCLIEA60BAIRES.AsString;
            Cidade     := ClientContaReceberCLIEA60CIDRES.AsString;
            UF         := ClientContaReceberCLIEA2UFRES.AsString;
            CEP        := ClientContaReceberCLIEA8CEPRES.AsString;

          end else
          begin
            Logradouro := ClientContaReceberCLIEA60ENDCOB.AsString;
            Numero     := ''; {acredito que deverá ser preenchido ou S/N}
            Bairro     := ClientContaReceberCLIEA60BAICOB.AsString;
            Cidade     := ClientContaReceberCLIEA60CIDCOB.AsString;
            UF         := ClientContaReceberCLIEA2UFCOB.AsString;
            CEP        := ClientContaReceberCLIEA8CEPCOB.AsString;

          end;
        end; //fim bloco dados do sacado.

        ValorAbatimento    := 0.00;
        LocalPagamento     := EditLocalPagto.Text;
        ValorMoraJuros     := 0.00;
        ValorDesconto      := 0.00;
        DataMoraJuros      := 0;
        DataDesconto       := 0;
        DataAbatimento     := 0;
        DataProtesto       := 0; {aqui é possivel calcular e configurar a data que será enviado a protesto,
                                  ou seja, data_vencimento + incDay(Dias_base_protesto) *ver nos dados da conta essa informação }
        PercentualMulta    := 0;
        Mensagem.Text      := mmoMensagens.Lines.Text;

        {Configurando os componentes para impressão / geração do boleto}
        ACBrBoleto.ACBrBoletoFC.DirLogo := SQLContaCorrente.FieldByName('CTCRA150LOGOBANCO').AsString;
        ACBrBoletoPrint.LayOut          := TAcbrBolLayOut(ComboLayout.ItemIndex);
        acbrBoletoPrint.SoftwareHouse   := 'MULTISTORE INFORMÁTICA';

        {Para Layout = Carnê utilizar o contador de parcelas presente no Contas a Receber}
        if (ACBrBoletoPrint.LayOut = lCarne) then
        begin
          Titulo.Parcela := ClientContaReceberCTRCINROPARC.AsInteger;
          //Titulo.TotalParcelas := 999;
        end else
        begin
          Titulo.Parcela := 1;
          Titulo.TotalParcelas := 1;
        end;

        {Informações do Cedente}
        With ACBrBoleto.Cedente do
        begin
          Nome                          := dm.SQLEmpresaEMPRA60RAZAOSOC.AsString;
          Agencia                       := SQLContaCorrenteCTCRA15AGENCIA.AsString;// + '-' + SQLContaCorrenteCTCRA15DIGAGENCIA.AsString;
          AgenciaDigito                 := SQLContaCorrenteCTCRA15DIGAGENCIA.AsString;
          Conta                         := SQLContaCorrenteCTCRA15NUMERO.AsString;// + '-' + SQLContaCorrenteCTCRA15DIGCONTA.AsString;
          ContaDigito                   := SQLContaCorrenteCTCRA15DIGCONTA.AsString;

          if ACBrBoleto.Banco.TipoCobranca = cobBancoDoBrasil then
          begin
            CodigoCedente := Agencia + ' / '+ Conta;
          end else
          begin
            CodigoCedente := SQLContaCorrenteCTCRA15CEDENTECOD.AsString + '-' + SQLContaCorrenteCTCRA15CEDENTEDIGCOD.AsString;
          end;

          Modalidade                    := SQLContaCorrenteCTCRA15CARTEIRAVARIACAO.AsString;
          UF                            := dm.SQLEmpresaEMPRA2UF.AsString;
          CNPJCPF                       := dm.SQLEmpresaEMPRA14CGC.AsString;
          Convenio                      := SQLContaCorrenteCTCRA15NUMEROCONVENIO.AsString;
          Carteira                      := SQLContaCorrenteCTCRA15CARTEIRACOD.AsString;
          NomeClienteVenda              := SQLContaCorrenteCTCRA60TITULAR.AsString;

          Logradouro                    := dm.SQLEmpresaEMPRA60END.AsString;
          NumeroRes                     := IntToStr(dm.SQLEmpresaEMPRIENDNRO.AsInteger);
          Bairro                        := dm.SQLEmpresaEMPRA60BAI.AsString;
          Cidade                        := dm.SQLEmpresaEMPRA60CID.AsString;
          UF                            := dm.SQLEmpresaEMPRA2UF.AsString;

        end;

      end;  {fim with_titulo}

    end; {fim if marcação = 'T'}

    ClientContaReceber.Next;

  end;

    acbrBoletoPrint.MostrarPreview := CheckPrevisualizar.Checked;

    {Impressão do boleto}
    if (radioTipoImpressao.ItemIndex = 0) then
    begin
      ACbrBoleto.ACBrBoletoFC.Filtro := fiNenhum;
      titulo.ACBrBoleto.Imprimir;
    end;

    {Visualização em PDF}
    if (radioTipoImpressao.ItemIndex = 1) then
    begin
      ACbrBoleto.ACBrBoletoFC.Filtro := fiPDF;
      ACBrBoleto.ACBrBoletoFC.NomeArquivo := 'BoletoImpressao.pdf';
      titulo.ACBrBoleto.GerarPDF;
      if CheckPrevisualizar.Checked then
        ShellExecute(Handle, nil, PChar(ACBrBoleto.ACBrBoletoFC.NomeArquivo), nil, nil, SW_SHOWMAXIMIZED);
    end;

    {Visualização em HTML}
    if (radioTipoImpressao.ItemIndex = 2) then
    begin
      ACbrBoleto.ACBrBoletoFC.Filtro := fiHTML;
      ACBrBoleto.ACBrBoletoFC.NomeArquivo := 'BoletoImpressao.html';
      titulo.ACBrBoleto.GerarHTML;
      if CheckPrevisualizar.Checked then
        ShellExecute(Handle, nil, PChar(ACBrBoleto.ACBrBoletoFC.NomeArquivo), nil, nil, SW_SHOWMAXIMIZED);
    end;

    {Através de questionamento é possível alterar o status das duplicatas selecionadas}
    ProcessaStatusDuplicatas;

    //Close;  -> comentado por Gabriel T. em 17/01/13 as 22:28

end;

procedure TFormTelaImpressaoDuplicata.FormShow(Sender: TObject);
begin
  inherited;
  if DirectoryExists(DM.PathAplicacao + 'Bloquetos') then
  begin
    FileList.Directory := DM.PathAplicacao + 'Bloquetos';
    ComboBloqueto.Clear;
    ComboBloqueto.Items := FileList.Items;
    ComboBloqueto.Update;
  end;
end;

procedure TFormTelaImpressaoDuplicata.MarcarRegistros(
  DataSet: TClientDataSet; TipoMarcacao: TTipoMarcacao);
  var s: String;
begin
  try
    DataSet.DisableControls;
    Cursor := crHourGlass;
    cxGrid1.BeginUpdate;
    totMarcados := 0;
    s := DataSet.Filter;
    {Aplica o filtro no dataset para alterar somente os registros necessários}
    if Trim(s) <> EmptyStr then
    begin
      case TipoMarcacao of
        tmAll:
          DataSet.Filter := s + ' and (MARCACAO = ''F'')';
        tmNome:
          DataSet.Filter := s + ' and (MARCACAO = ''T'')';
        tmInvert:
          DataSet.Filter := s + ' and (MARCACAO = ''T'' or MARCACAO = ''F'')';
      end;
    end else
    begin
      case TipoMarcacao of
        tmAll:
          DataSet.Filter := 'MARCACAO = ''F''';
        tmNome:
          DataSet.Filter := 'MARCACAO = ''T''';
        tmInvert:
          DataSet.Filter := 'MARCACAO = ''T'' or MARCACAO = ''F''';
      end;
    end;

    DataSet.Filtered := True; {Filtro aplicado}
    DataSet.First;

    {Varremos agora o DataSet alterando o campo marcação conforme função solicitada.}
    while not DataSet.Eof do
    begin
      Application.ProcessMessages; {Evitamos que a tela pare de responder}
      DataSet.Edit;
        Case TipoMarcacao of
          tmAll:
          begin
            DataSet['MARCACAO'] := 'T';
            inc(totMarcados, 1);
          end;

          tmNome:
          begin
            DataSet['MARCACAO'] := 'F';
            dec(totMarcados, 1);
          end;

          tmInvert:
          begin
            if DataSet.FieldByName('MARCACAO').AsString = 'T' then
            begin
              DataSet['MARCACAO'] := 'F';
              dec(totMarcados, 1);
            end;
            if DataSet.FieldByName('MARCACAO').AsString = 'F' then
            begin
              DataSet['MARCACAO'] := 'T';
              inc(totMarcados, 1);
            end;
          end;
        end;
      DataSet.Post;
    end;
  finally
    DataSet.Filtered := False;
    DataSet.EnableControls;
    Cursor := crDefault;
    cxGrid1.EndUpdate;
    StatusBarTela.Panels[0].text := 'Total de Registros Selecionados: '+IntToStr(totMarcados);
  end;
end;

procedure TFormTelaImpressaoDuplicata.Label4Click(Sender: TObject);
begin
  inherited;
  ProcessaDatas(tdHoje);
end;

procedure TFormTelaImpressaoDuplicata.Label19Click(Sender: TObject);
begin
  inherited;
  ProcessaDatas(tdSemana);
end;

procedure TFormTelaImpressaoDuplicata.Label20Click(Sender: TObject);
begin
  inherited;
  ProcessaDatas(tdMes);
end;

procedure TFormTelaImpressaoDuplicata.ProcessaDatas(TipoData: TTipoData);
begin
  case TipoData of
    tdHoje:
    begin
      De.date := Date;
      Ate.Date := Date;
    end;

    tdSemana:
    begin
      De.date := StartOfTheWeek(De.date);
      Ate.Date := Date;
    end;

    tdMes:
    begin
      De.Date := StartOfTheMonth(Date);
      Ate.Date := EndOfTheMonth(De.Date);
    end;

  end;
end;

procedure TFormTelaImpressaoDuplicata.actMarcarTodosExecute(
  Sender: TObject);
begin
  inherited;
  MarcarRegistros(ClientContaReceber,tmAll);
end;

procedure TFormTelaImpressaoDuplicata.actDesmarcarTodosExecute(
  Sender: TObject);
begin
  inherited;
  MarcarRegistros(ClientContaReceber,tmNome);
end;

procedure TFormTelaImpressaoDuplicata.actInverterSelecaoExecute(
  Sender: TObject);
begin
  inherited;
  MarcarRegistros(ClientContaReceber,tmInvert);
end;

procedure TFormTelaImpressaoDuplicata.actExpandirExecute(Sender: TObject);
begin
  inherited;
  cxGrid1DBTableView1.ViewData.Expand(true);
end;

procedure TFormTelaImpressaoDuplicata.actRecolherExecute(Sender: TObject);
begin
  inherited;
  cxGrid1DBTableView1.ViewData.Collapse(true);
end;

procedure TFormTelaImpressaoDuplicata.actAjustarColunasExecute(
  Sender: TObject);
begin
  inherited;
  cxGrid1DBTableView1.ApplyBestFit;
end;

procedure TFormTelaImpressaoDuplicata.actGrupoRazaoSocialExecute(
  Sender: TObject);
begin
  inherited;
  actDesagruparExecute(Self);
  cxGrid1DBTableView1CLIEA60RAZAOSOC.GroupIndex := 0;
end;

procedure TFormTelaImpressaoDuplicata.actGrupoEmissaoExecute(
  Sender: TObject);
begin
  inherited;
  actDesagruparExecute(Self);
  cxGrid1DBTableView1CTRCDEMIS.GroupIndex := 0;
end;

procedure TFormTelaImpressaoDuplicata.actDesagruparExecute(
  Sender: TObject);
begin
  inherited;
  cxGrid1DBTableView1CTRCDEMIS.GroupIndex := -1;
  cxGrid1DBTableView1CLIEA60RAZAOSOC.GroupIndex := -1;
  cxGrid1DBTableView1CLIEA60NOMEFANT.GroupIndex := -1;
  cxGrid1DBTableView1CTRCDVENC.GroupIndex := -1;
  cxGrid1DBTableView1CLIEA2UFRES.GroupIndex := -1;
  cxGrid1DBTableView1CLIEA60CIDRES.GroupIndex := -1;
end;

procedure TFormTelaImpressaoDuplicata.actGrupoVencimentoExecute(
  Sender: TObject);
begin
  inherited;
  actDesagruparExecute(Self);
  cxGrid1DBTableView1CTRCDVENC.GroupIndex := 0;
end;

procedure TFormTelaImpressaoDuplicata.actGrupoFantasiaExecute(
  Sender: TObject);
begin
  inherited;
  actDesagruparExecute(Self);
  cxGrid1DBTableView1CLIEA60NOMEFANT.GroupIndex := 0;
end;

procedure TFormTelaImpressaoDuplicata.actGrupoUfResExecute(
  Sender: TObject);
begin
  inherited;
  actDesagruparExecute(Self);
  cxGrid1DBTableView1CLIEA2UFRES.GroupIndex := 0;
end;

procedure TFormTelaImpressaoDuplicata.actGrupoCidadeResExecute(
  Sender: TObject);
begin
  inherited;
  actDesagruparExecute(Self);
  cxGrid1DBTableView1CLIEA60CIDRES.GroupIndex := 0;
end;

procedure TFormTelaImpressaoDuplicata.ProcessaStatusDuplicatas;
begin
  if Pergunta('SIM','Deseja trocar o status destes Boletos para Emitidos?') then
  begin
    ClientContaReceber.First;
    try
      ClientContaReceber.DisableControls;
      Cursor := crHourGlass;
        while not ClientContaReceber.Eof do
        begin
          {Aplica a ação em somente os registros marcados}
          if ClientContaReceber.FieldByName('MARCACAO').AsString = 'T' then
          begin
            DM.SQLTemplate.Close;
            DM.SQLTemplate.Sql.Clear;
            DM.SQLTemplate.Sql.Add('UPDATE CONTASRECEBER SET Pendente="S", CTRCCEMITIDOBOLETO = "S"'+' Where CTRCA13ID = ' + '"' + ClientContaReceberCTRCA13ID.Value + '"') ;
            DM.SQLTemplate.ExecSql;
            DM.SQLTemplate.Close;
          end;
          ClientContaReceber.Next;
        end;
    finally
      ClientContaReceber.EnableControls;
      Cursor := crDefault;
    end;
  end;
  {Prepara a tela e componente AcbrBoleto para novo processamento não sendo preciso reiniciar a tarefa}
  InicializaTela;
end;

procedure TFormTelaImpressaoDuplicata.InicializaTela;
begin
  ACBrBoleto.ListadeBoletos.Clear;
  ClientContaReceber.Close;
  ComboCliente.KeyValue := -1;
  ComboContaCorrente.KeyValue := -1;
  De.Clear;
  Ate.Clear;
end;

procedure TFormTelaImpressaoDuplicata.ConsisteCampos(pTipoConsistencia: TTipoConsistencia);
begin
  if (pTipoConsistencia = tcPesquisa) then
  begin
    {Datas}
    if ((de.Date > 0) or (ate.Date > 0)) then
    begin
      if (ate.Date < 0) then
      begin
        {Informar a Data Final}
        MessageDlg('Informe a Data Final para visualização dos dados.', mtInformation, [mbOk], 0);
        ate.SetFocus;
        Abort;
      end;
      if (de.Date < 0) then
      begin
        {Informar a Data Inicial}
        MessageDlg('Informe a Data Inicial para visualização dos dados.', mtInformation, [mbOk], 0);
        de.SetFocus;
        Abort;
      end;
    end;

    if (ate.Date < de.Date) then
    begin
      {Data Final Inválida}
      MessageDlg('A Data Final informada é inválida, verifique!', mtInformation, [mbOk], 0);
      ate.SetFocus;
      Abort;
    end;

    if (de.Date > ate.Date) then
    begin
      {Data Inicial Inválida}
      MessageDlg('A Data Inicial informada é inválida, verifique!', mtInformation, [mbOk], 0);
      de.SetFocus;
      Abort;
    end;
  end;

  if (pTipoConsistencia = tcImpressao) then
  begin
    {Conta bancária do Cedente}
    if (ComboContaCorrente.KeyValue = -1) then
    begin
      MessageDlg('A Conta Corrente do Cedente não foi informada, verifique!', mtInformation, [mbOk], 0);
      Abort;
    end;
  end;
  
end;
procedure TFormTelaImpressaoDuplicata.AjustarColunas1Click(
  Sender: TObject);
begin
  inherited;
  cxGrid1DBTableView1.ApplyBestFit;
end;

procedure TFormTelaImpressaoDuplicata.Label21Click(Sender: TObject);
begin
  inherited;
  ComboCliente.KeyValue := -1;
end;

end.
