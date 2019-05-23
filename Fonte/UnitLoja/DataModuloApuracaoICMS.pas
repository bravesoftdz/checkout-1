unit DataModuloApuracaoICMS;

interface

uses
  Variants, SysUtils, Forms, Classes, DB, DBTables, RxQuery, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppBands,
  ppCtrls, ppStrtch, ppSubRpt, ppPrnabl, ppCache, ppVar;

type
  TDMApuracaoICMS = class(TDataModule)
    TblCredDeb_UfCFOP_Sint: TTable;
    SQLCupom: TRxQuery;
    TblCredDeb_UfCFOP_SintTipo: TStringField;
    TblCredDeb_UfCFOP_SintAnoMes: TStringField;
    TblCredDeb_UfCFOP_SintUF_CFOP: TStringField;
    TblCredDeb_UfCFOP_SintVlrContabil: TFloatField;
    TblCredDeb_UfCFOP_SintImpCredDeb: TFloatField;
    TblCredDeb_UfCFOP_SintBaseCalc: TFloatField;
    TblCredDeb_UfCFOP_SintIsentoNaoTrib: TFloatField;
    TblCredDeb_UfCFOP_SintOutras: TFloatField;
    SQLCupomItem: TRxQuery;
    SQLCupomItemCUPOA13ID: TStringField;
    SQLCupomItemCPITIPOS: TIntegerField;
    SQLCupomItemPRODICOD: TIntegerField;
    SQLCupomItemCPITCSTATUS: TStringField;
    SQLCupomItemCPITN3QTD: TBCDField;
    SQLCupomItemCPITN3QTDTROCA: TBCDField;
    SQLCupomItemCPITN3VLRUNIT: TBCDField;
    SQLCupomItemCPITN3VLRCUSTUNIT: TBCDField;
    SQLCupomItemCPITN2DESC: TBCDField;
    SQLCupomItemCPITN3VLRUNITLUCR: TBCDField;
    SQLCupomItemCOITN2ICMSALIQ: TBCDField;
    SQLCupomCUPOA13ID: TStringField;
    SQLCupomEMPRICOD: TIntegerField;
    SQLCupomTERMICOD: TIntegerField;
    SQLCupomCUPOICOD: TIntegerField;
    SQLCupomCUPODEMIS: TDateTimeField;
    SQLCupomCLIEA13ID: TStringField;
    SQLCupomCUPOCSTATUS: TStringField;
    SQLCupomCUPON2TOTITENS: TBCDField;
    SQLCupomCUPON2DESC: TBCDField;
    SQLCupomCUPON2ACRESC: TBCDField;
    SQLCupomCUPON2TOTITENSRET: TBCDField;
    SQLCupomCUPOINRO: TIntegerField;
    SQLCupomCUPOCTIPOPADRAO: TStringField;
    PipeApurICMSCredEntrResSint: TppBDEPipeline;
    ReportApuracao: TppReport;
    DSTblApurICMSCredEntrRes: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    NomeEmpresa: TppLabel;
    ReportCredDeb_UfCFOP_Sint: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBText1: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel1: TppLabel;
    LabelTipo: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText2: TppDBText;
    ppDBText7: TppDBText;
    SQLNotaCompra: TRxQuery;
    SQLNotaCompraItem: TRxQuery;
    SQLNotaCompraNOCPA13ID: TStringField;
    SQLNotaCompraEMPRICOD: TIntegerField;
    SQLNotaCompraNOCPICOD: TIntegerField;
    SQLNotaCompraFORNICOD: TIntegerField;
    SQLNotaCompraNOCPA4ANO: TStringField;
    SQLNotaCompraNOCPA5SERIE: TStringField;
    SQLNotaCompraNOCPA30NRO: TStringField;
    SQLNotaCompraNOCPCSTATUS: TStringField;
    SQLNotaCompraPDCPA13ID: TStringField;
    SQLNotaCompraOPESICOD: TIntegerField;
    SQLNotaCompraNOCPDEMISSAO: TDateTimeField;
    SQLNotaCompraNOCPN3SOMAITENS: TBCDField;
    SQLNotaCompraNOCPN3TOTITENS: TBCDField;
    SQLNotaCompraNOCPN3TOTDESC: TBCDField;
    SQLNotaCompraNOCPN3VLRTOTNOTA: TBCDField;
    SQLNotaCompraNOCPN3VLRBASCALICM: TBCDField;
    SQLNotaCompraNOCPN3VLRICMS: TBCDField;
    SQLNotaCompraNOCPN3VLRBCICMSSUB: TBCDField;
    SQLNotaCompraNOCPN3VLRICMSSUB: TBCDField;
    SQLNotaCompraNOCPN3VLRFRETE: TBCDField;
    SQLNotaCompraNOCPN3VLRSEGURO: TBCDField;
    SQLNotaCompraNOCPN3VLROUTRADESP: TBCDField;
    SQLNotaCompraNOCPN3VLRIPI: TBCDField;
    SQLNotaCompraNOCPN3VLRDESC: TBCDField;
    SQLNotaCompraItemNOCPA13ID: TStringField;
    SQLNotaCompraItemNOCIIITEM: TIntegerField;
    SQLNotaCompraItemPRODICOD: TIntegerField;
    SQLNotaCompraItemNOCIN3QTDBONIF: TBCDField;
    SQLNotaCompraItemNOCIN3CAPEMBAL: TBCDField;
    SQLNotaCompraItemNOCIN3QTDEMBAL: TBCDField;
    SQLNotaCompraItemNOCIN3QTDEPED: TBCDField;
    SQLNotaCompraItemNOCIN3TOTPED: TBCDField;
    SQLNotaCompraItemNOCIN3VLREMBAL: TBCDField;
    SQLNotaCompraItemNOCIN3VLRUNIT: TBCDField;
    SQLNotaCompraItemNOCIN3VLRDESC: TBCDField;
    SQLNotaCompraItemNOCIN3PERCDESC: TBCDField;
    SQLNotaCompraItemNOCIN3VLRICMS: TBCDField;
    SQLNotaCompraItemNOCIN3PERCICMS: TBCDField;
    SQLNotaCompraItemNOCIN3VLRSUBST: TBCDField;
    SQLNotaCompraItemNOCIN3VLRIPI: TBCDField;
    SQLNotaCompraItemNOCIN3PERCIPI: TBCDField;
    SQLNotaCompraItemNOCIN3VLRCUSTOMED: TBCDField;
    SQLNotaCompraItemNOCIN3VLRFRETE: TBCDField;
    SQLNotaCompraNOCPDRECEBIMENTO: TDateTimeField;
    SQLNotaCompraCFOPA5COD: TStringField;
    ppTitleBand1: TppTitleBand;
    TblApurICMSMensal: TTable;
    DSTblApurICMSMensal: TDataSource;
    SQLCFOP: TRxQuery;
    SQLCFOPCFOPA5COD: TStringField;
    SQLCFOPCFOPA60DESCR: TStringField;
    PipeApurMes: TppBDEPipeline;
    ReportRegApuraMes: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDetailBand3: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText17: TppDBText;
    TblApurICMSMensalTipo: TStringField;
    TblApurICMSMensalAnoMes: TStringField;
    TblApurICMSMensalCodCFOP: TStringField;
    TblApurICMSMensalDescrCFOP: TStringField;
    TblApurICMSMensalVlrContabil: TFloatField;
    TblApurICMSMensalImpCredDeb: TFloatField;
    TblApurICMSMensalBaseCalc: TFloatField;
    TblApurICMSMensalIsentoNaoTrib: TFloatField;
    TblApurICMSMensalOutras: TFloatField;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    SQLEmpresaEMPRA14CGC: TStringField;
    SQLEmpresaEMPRA20IE: TStringField;
    ppLabel2: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    LabelTipo2: TppLabel;
    NomeEmpresa2: TppLabel;
    CGCEMpresa2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    Periodo2: TppLabel;
    ppLabel10: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLabel11: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLabel12: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel30: TppLabel;
    TblCredDeb_UfCFOP_Ana: TTable;
    DSTblCredDeb_UfCFOP_Ana: TDataSource;
    PipeCredDeb_UfCFOP_Ana: TppBDEPipeline;
    RptCD_UfCFOP_Ana: TppSubReport;
    ppChildReport3: TppChildReport;
    ppDetailBand4: TppDetailBand;
    ppDBText8: TppDBText;
    ppLabel31: TppLabel;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppLabel32: TppLabel;
    ppSummaryBand3: TppSummaryBand;
    ppLabel33: TppLabel;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLabel34: TppLabel;
    ppDBText21: TppDBText;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel48: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBCalc16: TppDBCalc;
    ppLabel49: TppLabel;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    TblCredDeb_UfCFOP_AnaTipo: TStringField;
    TblCredDeb_UfCFOP_AnaAnoMes: TStringField;
    TblCredDeb_UfCFOP_AnaData: TDateField;
    TblCredDeb_UfCFOP_AnaUF_CFOP: TStringField;
    TblCredDeb_UfCFOP_AnaCFOP: TStringField;
    TblCredDeb_UfCFOP_AnaSerie: TStringField;
    TblCredDeb_UfCFOP_AnaOperacao: TStringField;
    TblCredDeb_UfCFOP_AnaNumNF_Cup: TStringField;
    TblCredDeb_UfCFOP_AnaVlrContabil: TFloatField;
    TblCredDeb_UfCFOP_AnaImpCredDeb: TFloatField;
    TblCredDeb_UfCFOP_AnaBaseCalc: TFloatField;
    TblCredDeb_UfCFOP_AnaIsentoNaoTrib: TFloatField;
    TblCredDeb_UfCFOP_AnaOutras: TFloatField;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    PeriodoRel1: TppLabel;
    Periodo3: TppLabel;
    SQLIcms: TRxQuery;
    SQLIcmsICMSICOD: TIntegerField;
    SQLIcmsICMSN2ALIQUOTA: TBCDField;
    SQLIcmsICMSN2PERCSUBSTSAI: TBCDField;
    SQLIcmsICMSN2PERCSUBSTENT: TBCDField;
    SQLIcmsICMSN2PERCREDUCAO: TBCDField;
    SQLIcmsICMSICODSITTRIB: TIntegerField;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoICMSICOD: TIntegerField;
    SQLIcmsICMSA60DESCR: TStringField;
    SQLCupomCFOPA5COD: TStringField;
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand2BeforePrint(Sender: TObject);
    procedure TblCredDeb_UfCFOP_SintNewRecord(DataSet: TDataSet);
    procedure TblApurICMSMensalNewRecord(DataSet: TDataSet);
    procedure TblCredDeb_UfCFOP_AnaNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Calcular(Dt1, Dt2 : TDateTime; EmpresaCab : string) ;
  end;

var
  DMApuracaoICMS: TDMApuracaoICMS;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TDMApuracaoICMS.Calcular(Dt1, Dt2 : TDateTime; EmpresaCab : string) ;
Const
  Descr_Adic1 : array[10..21] of string = ('CREDITO DO IMPOSTO',
                                           'Saldo Credor Periodo Anterior Corrigido',
                                           'Creditos por Entrada',
                                           'Creditos Simbolicos',
                                           'Creditos por Estimulos Exportacao',
                                           'Creditos por Pagamentos Antecipados',
                                           'Creditos por Importacao ou Arrematacao',
                                           'Creditos por Pagamentos Responsabilidade',
                                           'Creditos por Compensacao',
                                           'Creditos Transferencias de Outros Estabelecimentos',
                                           'Creditos Cedidos de Terceiros',
                                           'Estorno de Debitos') ;
  Descr_Adic2 : array[18..26] of string = ('DEBITO DO IMPOSTO',
                                           'Creditos Transferidos p/Outros Estabelecimentos',
                                           'Creditos Cedidos de Terceiros',
                                           'Estorno de Creditos',
                                           'Debitos por Saidas',
                                           'Debitos por Importacao ou Arrematacao',
                                           'Debitos por Responsabilidade',
                                           'Debitos por Responsabilidade nao Comp.',
                                           'Debitos por Compensacao') ;

var
  ValorBaseCalcSom,
  ValorBaseCalcUnit,
  ValorTotal,
  ValorContabil,
  ValorImposto,
  ValorIsentoNTrib,
  ValorOutras      : double ;
  UfCFOP           : string ;
  i                : integer;
begin
//----------------------------------------------------------------------------\\
  if TblCredDeb_UfCFOP_Sint.Active then TblCredDeb_UfCFOP_Sint.Close ;
  if TblCredDeb_UfCFOP_Sint.Exists then
    TblCredDeb_UfCFOP_Sint.DeleteTable ;
  TblCredDeb_UfCFOP_Sint.CreateTable ;
  TblCredDeb_UfCFOP_Sint.Open ;
//----------------------------------------------------------------------------\\
  if TblApurICMSMensal.Active then TblApurICMSMensal.Close ;
  if TblApurICMSMensal.Exists then
    TblApurICMSMensal.DeleteTable ;
  TblApurICMSMensal.CreateTable ;
  TblApurICMSMensal.Open ;
//----------------------------------------------------------------------------\\
  if TblCredDeb_UfCFOP_Ana.Active then TblCredDeb_UfCFOP_Ana.Close ;
  if TblCredDeb_UfCFOP_Ana.Exists then
    TblCredDeb_UfCFOP_Ana.DeleteTable ;
  TblCredDeb_UfCFOP_Ana.CreateTable ;
  TblCredDeb_UfCFOP_Ana.Open ;
//----------------------------------------------------------------------------\\
  SQLEmpresa.Close ;
  SQLEmpresa.MacroByName('MFiltro').Value := 'EMPRICOD = ' + EmpresaCab ;
  SQLEmpresa.Open ;
//----------------------------------------------------------------------------\\
  //LANCAR CFOP DE ENTRADAS
  SQLCFOP.Open ;
  while not SQLCFOP.Eof do
    begin
      if (Copy(SQLCFOPCFOPA5COD.Value,1,1) = '1') or (Copy(SQLCFOPCFOPA5COD.Value,1,1) = '2') then
        begin
          TblApurICMSMensal.Append ;
          TblApurICMSMensalTipo.Value      := 'CRED_ENTR' ;
          TblApurICMSMensalAnoMes.Value    := FormatDateTime('yymm', Dt1) ;
          TblApurICMSMensalCodCFOP.Value   := SQLCFOPCFOPA5COD.Value ;
          TblApurICMSMensalDescrCFOP.Value := SQLCFOPCFOPA60DESCR.Value ;
          TblApurICMSMensal.Post ;
        end ;
      SQLCFOP.Next ;
    end ;
  //RODAPE CREDITOS
  TblApurICMSMensal.Append ;
  TblApurICMSMensalTipo.Value             := 'CRED_ENTR' ;
  TblApurICMSMensalAnoMes.Value           := 'TOTALCRED' ;
  TblApurICMSMensalCodCFOP.Value          := '' ;
  TblApurICMSMensalDescrCFOP.Value        := 'Totais' ;
  TblApurICMSMensal.Post ;
  for i := 8 to 21 do
    begin
      if i < 11 then
        begin
          TblApurICMSMensal.Append ;
          TblApurICMSMensalTipo.Value             := 'CRED_ENTR' ;
          TblApurICMSMensalAnoMes.Value           := '' ;
          TblApurICMSMensalCodCFOP.Value          := '' ;
          if i = 10 then
            TblApurICMSMensalDescrCFOP.Value := Descr_Adic1[i]
          else
            TblApurICMSMensalDescrCFOP.Value := '' ;
          TblApurICMSMensalVlrContabil.AsString   := '' ;
          TblApurICMSMensalImpCredDeb.AsString    := '' ;
          TblApurICMSMensalBaseCalc.AsString      := '' ;
          TblApurICMSMensalIsentoNaoTrib.AsString := '' ;
          TblApurICMSMensalOutras.AsString        := '' ;
          TblApurICMSMensal.Post ;
        end ;

      if (i >= 11) and (i <= 21) then
        begin
          TblApurICMSMensal.Append ;
          TblApurICMSMensalTipo.Value      := 'CRED_ENTR' ;
          TblApurICMSMensalAnoMes.Value    := FormatDateTime('yymm', Dt1) ;
          if i > 10 then
            TblApurICMSMensalCodCFOP.Value := IntToStr(i) ;
          TblApurICMSMensalDescrCFOP.Value := Descr_Adic1[i] ;
          TblApurICMSMensalVlrContabil.AsString   := '' ;
          TblApurICMSMensalImpCredDeb.AsString    := '' ;
          TblApurICMSMensalBaseCalc.Value         := 0 ;
          TblApurICMSMensalIsentoNaoTrib.AsString := '' ;
          TblApurICMSMensalOutras.AsString        := '' ;
          TblApurICMSMensal.Post ;
        end ;
    end ;
  //LANCAR CFOP DE SAIDAS
  SQLCFOP.First ;
  while not SQLCFOP.Eof do
    begin
      if (Copy(SQLCFOPCFOPA5COD.Value,1,1) = '5') or
         (Copy(SQLCFOPCFOPA5COD.Value,1,1) = '6') then
        begin
          TblApurICMSMensal.Append ;
          TblApurICMSMensalTipo.Value      := 'DEB_SAI' ;
          TblApurICMSMensalAnoMes.Value    := FormatDateTime('yymm', Dt1) ;
          TblApurICMSMensalCodCFOP.Value   := SQLCFOPCFOPA5COD.Value ;
          TblApurICMSMensalDescrCFOP.Value := SQLCFOPCFOPA60DESCR.Value ;
          TblApurICMSMensal.Post ;
        end ;
      SQLCFOP.Next ;
    end ;
  //RODAPE DEBITOS
  TblApurICMSMensal.Append ;
  TblApurICMSMensalTipo.Value             := 'DEB_SAI' ;
  TblApurICMSMensalAnoMes.Value           := 'TOTALDEB' ;
  TblApurICMSMensalCodCFOP.Value          := '' ;
  TblApurICMSMensalDescrCFOP.Value        := 'Totais' ;
  TblApurICMSMensal.Post ;
  for i := 16 to 26 do
    begin
      if i <= 18 then
        begin
          TblApurICMSMensal.Append ;
          TblApurICMSMensalTipo.Value             := 'DEB_SAI' ;
          TblApurICMSMensalAnoMes.Value           := '' ;
          TblApurICMSMensalCodCFOP.Value          := '' ;
          if i = 18 then
            TblApurICMSMensalDescrCFOP.Value := Descr_Adic2[i]
          else
            TblApurICMSMensalDescrCFOP.Value := '' ;
          TblApurICMSMensalVlrContabil.AsString   := '' ;
          TblApurICMSMensalImpCredDeb.AsString    := '' ;
          TblApurICMSMensalBaseCalc.AsString      := '' ;
          TblApurICMSMensalIsentoNaoTrib.AsString := '' ;
          TblApurICMSMensalOutras.AsString        := '' ;
          TblApurICMSMensal.Post ;
        end ;

      if (i >= 19) and (i <= 26) then
        begin
          TblApurICMSMensal.Append ;
          TblApurICMSMensalTipo.Value             := 'DEB_SAI' ;
          TblApurICMSMensalAnoMes.Value           := FormatDateTime('yymm', Dt1) ;
          TblApurICMSMensalCodCFOP.Value          := IntToStr(i) ;
          TblApurICMSMensalDescrCFOP.Value        := Descr_Adic2[i] ;
          TblApurICMSMensalVlrContabil.AsString   := '' ;
          TblApurICMSMensalImpCredDeb.AsString    := '' ;
          TblApurICMSMensalBaseCalc.Value         := 0 ;
          TblApurICMSMensalIsentoNaoTrib.AsString := '' ;
          TblApurICMSMensalOutras.AsString        := '' ;
          TblApurICMSMensal.Post ;
        end ;
    end ;
//----------------------------------------------------------------------------\\
  //************************************ VERIFICAR ENTRADAS ************************************
  SQLNotaCompra.Close ;
  {SQLNotaCompra.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CUPOM', '') ;}
  SQLNotaCompra.MacrobyName('MData').Value := 'NOCPDRECEBIMENTO >= "' + FormatDateTime('mm/dd/yyyy', Dt1) + '" and ' +
                                              'NOCPDRECEBIMENTO <= "' + FormatDateTime('mm/dd/yyyy', Dt2) + '"' ;
  SQLNotaCompra.Open ;
  Screen.Cursor := -11 ;
  while not SQLNotaCompra.EOF do
    begin
      ValorBaseCalcSom := 0 ;
      ValorImposto     := 0 ;
      ValorIsentoNTrib := 0 ;
      ValorContabil    := 0 ;
      ValorTotal       := 0 ;
      SQLNotaCompraItem.Close ;
      SQLNotaCompraItem.MacroByName('MFiltro').Value := 'NOCPA13ID = ' + SQLNotaCompraNOCPA13ID.Value ;
      SQLNotaCompraItem.Open ;
      while not SQLNotaCompraItem.Eof do
        begin
          SQLProduto.Close ;
          SQLProduto.MacroByName('MFiltro').Value := 'PRODICOD = ' + SQLNotaCompraItemPRODICOD.AsString ;
          SQLProduto.Open ;
          if not SQLProduto.Eof then
            begin
              SQLIcms.Close ;
              SQLIcms.MacroByName('MFiltro').Value := 'ICMSICOD = ' + SQLProdutoICMSICOD.AsString ;
              SQLIcms.Open ;
              if not SQLIcms.EOF then
                begin
                  ValorTotal       := (SQLNotaCompraItemNOCIN3VLRUNIT.Value * (SQLNotaCompraItemNOCIN3QTDEMBAL.Value*SQLNotaCompraItemNOCIN3CAPEMBAL.Value)) ;
                  ValorContabil     := ValorContabil + ValorTotal ;
                  ValorBaseCalcSom  := ValorBaseCalcSom + ValorTotal ;
                  ValorBaseCalcUnit := ValorTotal ;

                  if SQLIcmsICMSN2PERCREDUCAO.Value > 0 then
                    begin
                      ValorBaseCalcSom  := ValorBaseCalcSom - (ValorTotal * (SQLIcmsICMSN2PERCREDUCAO.Value/100)) ;
                      ValorBaseCalcUnit := ValorBaseCalcUnit - (ValorTotal * (SQLIcmsICMSN2PERCREDUCAO.Value/100)) ;
                    end ;

                  if SQLIcmsICMSN2ALIQUOTA.Value > 0 then
                    ValorImposto := ValorImposto + (ValorBaseCalcUnit * (SQLIcmsICMSN2ALIQUOTA.Value/100)) ;
                  if ValorBaseCalcUnit < ValorTotal then
                    ValorIsentoNTrib := ValorIsentoNTrib + (ValorTotal - ValorBaseCalcUnit) ;
                end ;
            end ;

          SQLNotaCompraItem.Next ;
        end ;

      UfCFOP := SQLLocate('FORNECEDOR', 'FORNICOD', 'FORNA2UF', SQLNotaCompraFORNICOD.AsString) + '-' +
                                                                SQLNotaCompraCFOPA5COD.Value ;
      //GRAVAR VALORES SINTETICOS
      if not TblCredDeb_UfCFOP_Sint.Locate('Tipo;UF_CFOP', VarArrayOf(['CRED_ENTR', UfCFOP]), []) then
        begin
          TblCredDeb_UfCFOP_Sint.Append ;
          TblCredDeb_UfCFOP_SintTipo.Value          := 'CRED_ENTR' ;
          TblCredDeb_UfCFOP_SintAnoMes.Value        := FormatDateTime('yymm', SQLNotaCompraNOCPDRECEBIMENTO.Value) ;
          TblCredDeb_UfCFOP_SintUF_CFOP.Value       := UfCFOP ;
          TblCredDeb_UfCFOP_SintVlrContabil.Value   := ValorContabil ;
          TblCredDeb_UfCFOP_SintImpCredDeb.Value    := ValorImposto ;
          if ValorImposto > 0 then
            TblCredDeb_UfCFOP_SintBaseCalc.Value := ValorBaseCalcSom
          else
            TblCredDeb_UfCFOP_SintIsentoNaoTrib.Value := ValorIsentoNTrib ;
          TblCredDeb_UfCFOP_SintOutras.Value        := 0 ;
          TblCredDeb_UfCFOP_Sint.Post ;
        end
      else
        begin
          TblCredDeb_UfCFOP_Sint.Edit ;
          TblCredDeb_UfCFOP_SintVlrContabil.Value   := TblCredDeb_UfCFOP_SintVlrContabil.Value +
                                                       ValorContabil ;
          TblCredDeb_UfCFOP_SintImpCredDeb.Value    := TblCredDeb_UfCFOP_SintImpCredDeb.Value +
                                                       ValorContabil ;
          if ValorImposto > 0 then
            TblCredDeb_UfCFOP_SintBaseCalc.Value := TblCredDeb_UfCFOP_SintBaseCalc.Value + ValorBaseCalcSom
          else
            TblCredDeb_UfCFOP_SintIsentoNaoTrib.Value := TblCredDeb_UfCFOP_SintIsentoNaoTrib.Value + ValorIsentoNTrib ;
          TblCredDeb_UfCFOP_Sint.Post ;
        end ;
      //GRAVAR VALORES ANALÍTICOS
      TblCredDeb_UfCFOP_Ana.Append ;
      TblCredDeb_UfCFOP_AnaTipo.Value        := 'CRED_ENTR' ;
      TblCredDeb_UfCFOP_AnaAnoMes.Value      := FormatDateTime('yymm', SQLNotaCompraNOCPDRECEBIMENTO.Value) ;
      TblCredDeb_UfCFOP_AnaData.Value        := SQLNotaCompraNOCPDRECEBIMENTO.Value ;
      TblCredDeb_UfCFOP_AnaCFOP.Value        := SQLNotaCompraCFOPA5COD.Value ;
      TblCredDeb_UfCFOP_AnaSerie.Value       := SQLNotaCompraNOCPA5SERIE.Value ;
      TblCredDeb_UfCFOP_AnaOperacao.Value    := 'CREDITO ICMS' ;
      TblCredDeb_UfCFOP_AnaUF_CFOP.Value     := UfCFOP ;
      TblCredDeb_UfCFOP_AnaNumNF_Cup.Value   := SQLNotaCompraNOCPA30NRO.Value ;
      TblCredDeb_UfCFOP_AnaVlrContabil.Value := ValorContabil ;
      TblCredDeb_UfCFOP_AnaImpCredDeb.Value  := ValorImposto ;
      if ValorImposto > 0 then
        TblCredDeb_UfCFOP_AnaBaseCalc.Value := ValorBaseCalcSom
      else
        TblCredDeb_UfCFOP_AnaIsentoNaoTrib.Value := ValorIsentoNTrib ;
      TblCredDeb_UfCFOP_AnaOutras.Value          := 0 ;
      TblCredDeb_UfCFOP_Ana.Post ;
      //----------------------------------------------------------------------------\\
      if TblApurICMSMensal.Locate('CodCFOP', SQLNotaCompraCFOPA5COD.Value, []) then
        begin
          TblApurICMSMensal.Edit ;
          TblApurICMSMensalVlrContabil.Value := TblApurICMSMensalVlrContabil.Value + ValorContabil ;
          TblApurICMSMensalImpCredDeb.Value := TblApurICMSMensalImpCredDeb.Value + ValorImposto ;
          if ValorImposto > 0 then
            TblApurICMSMensalBaseCalc.Value := TblApurICMSMensalBaseCalc.Value + ValorBaseCalcSom ;
          TblApurICMSMensalIsentoNaoTrib.Value := TblApurICMSMensalIsentoNaoTrib.Value + ValorIsentoNTrib ;
          TblApurICMSMensal.Post ;
        end ;

      SQLNotaCompra.Next ;
    end ;
  Screen.Cursor := 0 ;
 //************************************ VERIFICAR VENDAS DE CUPOM ************************************
  SQLCupom.Close ;
  {SQLCupom.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CUPOM', '') ;}
  SQLCupom.MacrobyName('MData').Value    := 'CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy', Dt1) + '" and ' +
                                            'CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Dt2) + '"' ;
  //GravaArqTexto(SQLCupom.RealSQL.Text, 'C:\Unit\Gestao\ProdVend.txt', 'NOVO') ;
  SQLCupom.Open ;
  Screen.Cursor := -11 ;
  while not SQLCupom.EOF do
    begin
      ValorBaseCalcSom := 0 ;
      ValorImposto     := 0 ;
      ValorIsentoNTrib := 0 ;
      ValorContabil    := 0 ;
      SQLCupomItem.Close ;
      SQLCupomItem.MacroByName('MFiltro').Value := 'CUPOA13ID = "' + SQLCupomCUPOA13ID.Value + '"' ;
      SQLCupomItem.Open ;
      while not SQLCupomItem.Eof do
        begin
          SQLProduto.Close ;
          SQLProduto.MacroByName('MFiltro').Value := 'PRODICOD = ' + SQLCupomItemPRODICOD.AsString ;
          SQLProduto.Open ;
          if not SQLProduto.Eof then
            begin
              SQLIcms.Close ;
              SQLIcms.MacroByName('MFiltro').Value := 'ICMSICOD = ' + SQLProdutoICMSICOD.AsString ;
              SQLIcms.Open ;
              if not SQLIcms.Eof then
                begin
                  ValorTotal        := SQLCupomItemCPITN3VLRUNIT.Value * SQLCupomItemCPITN3QTD.Value ;
                  ValorContabil     := ValorContabil + ValorTotal ;
                  ValorBaseCalcSom  := ValorBaseCalcSom + ValorTotal ;
                  ValorBaseCalcUnit := ValorTotal ;

                  if SQLIcmsICMSN2PERCREDUCAO.Value > 0 then
                    begin
                      ValorBaseCalcSom  := ValorBaseCalcSom - (ValorTotal * (SQLIcmsICMSN2PERCREDUCAO.Value/100)) ;
                      ValorBaseCalcUnit := ValorBaseCalcUnit - (ValorTotal * (SQLIcmsICMSN2PERCREDUCAO.Value/100)) ;
                    end ;

                  if SQLIcmsICMSN2ALIQUOTA.Value > 0 then
                    ValorImposto := ValorImposto + (ValorBaseCalcUnit * (SQLIcmsICMSN2ALIQUOTA.Value/100)) ;
                  if ValorBaseCalcUnit < ValorTotal then
                    ValorIsentoNTrib := ValorIsentoNTrib + (ValorTotal - ValorBaseCalcUnit) ;
                end ;
            end ;

          SQLCupomItem.Next ;
        end ;

      UfCFOP := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA2UFRES', '"' + SQLCupomCLIEA13ID.AsString + '"') + '-' +
                SQLCupomCFOPA5COD.Value ;
      //GRAVAR VALORES SINTÉTICOS
      if not TblCredDeb_UfCFOP_Sint.Locate('Tipo;UF_CFOP', VarArrayOf(['DEB_SAI', UfCFOP]), []) then
        begin
          TblCredDeb_UfCFOP_Sint.Append ;
          TblCredDeb_UfCFOP_SintTipo.Value          := 'DEB_SAI' ;
          TblCredDeb_UfCFOP_SintAnoMes.Value        := FormatDateTime('yymm', SQLCupomCUPODEMIS.Value) ;
          TblCredDeb_UfCFOP_SintUF_CFOP.Value       := UfCFOP ;
          TblCredDeb_UfCFOP_SintVlrContabil.Value   := ValorContabil ;
          TblCredDeb_UfCFOP_SintImpCredDeb.Value    := ValorImposto ;
          TblCredDeb_UfCFOP_SintBaseCalc.Value      := ValorBaseCalcSom ;
          TblCredDeb_UfCFOP_SintIsentoNaoTrib.Value := ValorIsentoNTrib ;
          TblCredDeb_UfCFOP_SintOutras.Value        := 0 ;
          TblCredDeb_UfCFOP_Sint.Post ;
        end
      else
        begin
          TblCredDeb_UfCFOP_Sint.Edit ;
          TblCredDeb_UfCFOP_SintVlrContabil.Value   := TblCredDeb_UfCFOP_SintVlrContabil.Value + ValorContabil ;
          TblCredDeb_UfCFOP_SintImpCredDeb.Value    := TblCredDeb_UfCFOP_SintImpCredDeb.Value + ValorImposto ;
          TblCredDeb_UfCFOP_SintBaseCalc.Value := TblCredDeb_UfCFOP_SintBaseCalc.Value + ValorBaseCalcSom ;
          TblCredDeb_UfCFOP_SintIsentoNaoTrib.Value := TblCredDeb_UfCFOP_SintIsentoNaoTrib.Value + ValorIsentoNTrib ;
          TblCredDeb_UfCFOP_Sint.Post ;
        end ;
      //GRAVAR VALORES ANALÍTICOS
      TblCredDeb_UfCFOP_Ana.Append ;
      TblCredDeb_UfCFOP_AnaTipo.Value        := 'DEB_SAI' ;
      TblCredDeb_UfCFOP_AnaAnoMes.Value      := FormatDateTime('yymm', SQLCupomCUPODEMIS.Value) ;
      TblCredDeb_UfCFOP_AnaData.Value        := SQLCupomCUPODEMIS.Value ;
      TblCredDeb_UfCFOP_AnaUF_CFOP.Value     := UfCFOP ;
      TblCredDeb_UfCFOP_AnaCFOP.Value        := SQLCupomCFOPA5COD.Value ;
      TblCredDeb_UfCFOP_AnaSerie.Value       := 'U' ;
      TblCredDeb_UfCFOP_AnaOperacao.Value    := 'DEBITO ICMS' ;
      TblCredDeb_UfCFOP_AnaNumNF_Cup.Value   := Copy(SQLCupomCUPOA13ID.Value,8,6) ;
      TblCredDeb_UfCFOP_AnaVlrContabil.Value := ValorContabil ;
      TblCredDeb_UfCFOP_AnaImpCredDeb.Value  := ValorImposto ;
      if ValorImposto > 0 then
        TblCredDeb_UfCFOP_AnaBaseCalc.Value := ValorContabil ;
      TblCredDeb_UfCFOP_AnaIsentoNaoTrib.Value := ValorIsentoNTrib ;
      TblCredDeb_UfCFOP_AnaOutras.Value        := 0 ;
      TblCredDeb_UfCFOP_Ana.Post ;
//----------------------------------------------------------------------------\\
      if TblApurICMSMensal.Locate('CodCFOP', SQLCupomCFOPA5COD.Value, []) then
        begin
          TblApurICMSMensal.Edit ;
          TblApurICMSMensalVlrContabil.Value := TblApurICMSMensalVlrContabil.Value +
                                                ValorContabil ;
          TblApurICMSMensalImpCredDeb.Value  := TblApurICMSMensalImpCredDeb.Value +
                                                ValorImposto ;
          if ValorImposto > 0 then
            TblApurICMSMensalBaseCalc.Value := TblApurICMSMensalBaseCalc.Value +
                                               ValorContabil ;
          TblApurICMSMensalIsentoNaoTrib.Value := TblApurICMSMensalIsentoNaoTrib.Value +
                                                  ValorIsentoNTrib ;
          TblApurICMSMensal.Post ;
        end ;

      SQLCupom.Next ;
    end ;
  //COLOCAR VALOR NEGATIVO NO IMPOSTO DE SAIDA
  TblCredDeb_UfCFOP_Sint.First ;
  while not TblCredDeb_UfCFOP_Sint.Eof do
    begin
      if TblCredDeb_UfCFOP_SintTipo.Value = 'DEB_SAI' then
        begin
          TblCredDeb_UfCFOP_Sint.Edit ;
          TblCredDeb_UfCFOP_SintImpCredDeb.AsString := '-' + TblCredDeb_UfCFOP_SintImpCredDeb.AsString ;
          TblCredDeb_UfCFOP_Sint.Post ;
        end ;
      TblCredDeb_UfCFOP_Sint.Next ;
    end ;
  //CALCULAR OS TOTAIS PARA OS CFOPS DE ENTRADA
  ValorBaseCalcSom    := 0 ;
  ValorImposto     := 0 ;
  ValorIsentoNTrib := 0 ;
  ValorContabil    := 0 ;
  ValorOutras      := 0 ;
  TblApurICMSMensal.First ;
  while not (TblApurICMSMensal.Eof) and (TblApurICMSMensalAnoMes.Value <> 'TOTALC') do
    begin
      ValorImposto     := ValorImposto     + TblApurICMSMensalImpCredDeb.Value ;
      ValorIsentoNTrib := ValorIsentoNTrib + TblApurICMSMensalIsentoNaoTrib.Value ;
      ValorBaseCalcSom := ValorBaseCalcSom + TblApurICMSMensalBaseCalc.Value ;
      ValorContabil    := ValorContabil    + TblApurICMSMensalVlrContabil.Value ;
      ValorOutras      := ValorOutras      + TblApurICMSMensalOutras.Value ;

      TblApurICMSMensal.Next ;
    end ;

  if TblApurICMSMensal.Locate('AnoMes', 'TOTALC', []) then
    begin
      TblApurICMSMensal.Edit ;
      TblApurICMSMensalImpCredDeb.Value    := ValorImposto ;
      TblApurICMSMensalIsentoNaoTrib.Value := ValorIsentoNTrib ;
      TblApurICMSMensalBaseCalc.Value      := ValorBaseCalcSom ;
      TblApurICMSMensalVlrContabil.Value   := ValorContabil ;
      TblApurICMSMensalOutras.Value        := ValorOutras ;
      TblApurICMSMensal.Post ;
    end ;

  if TblApurICMSMensal.Locate('CodCFOP', '12', []) then
    begin
      TblApurICMSMensal.Edit ;
      TblApurICMSMensalBaseCalc.Value := ValorImposto ;
      TblApurICMSMensal.Post ;
    end ;
  //CALCULAR OS TOTAIS PARA OS CFOPS DE SAIDAS
  ValorBaseCalcSom := 0 ;
  ValorImposto     := 0 ;
  ValorIsentoNTrib := 0 ;
  ValorContabil    := 0 ;
  ValorOutras      := 0 ;
  TblApurICMSMensal.First ;
  TblApurICMSMensal.Locate('Tipo', 'DEB_SAI', []) ;
  while not (TblApurICMSMensal.Eof) and (TblApurICMSMensalAnoMes.Value <> 'TOTALD') do
    begin
      ValorImposto     := ValorImposto     + TblApurICMSMensalImpCredDeb.Value ;
      ValorIsentoNTrib := ValorIsentoNTrib + TblApurICMSMensalIsentoNaoTrib.Value ;
      ValorBaseCalcSom := ValorBaseCalcSom + TblApurICMSMensalBaseCalc.Value ;
      ValorContabil    := ValorContabil    + TblApurICMSMensalVlrContabil.Value ;
      ValorOutras      := ValorOutras      + TblApurICMSMensalOutras.Value ;

      TblApurICMSMensal.Next ;
    end ;

  if TblApurICMSMensal.Locate('AnoMes', 'TOTALD', []) then
    begin
      TblApurICMSMensal.Edit ;
      TblApurICMSMensalImpCredDeb.Value    := ValorImposto ;
      TblApurICMSMensalIsentoNaoTrib.Value := ValorIsentoNTrib ;
      TblApurICMSMensalBaseCalc.Value      := ValorBaseCalcSom ;
      TblApurICMSMensalVlrContabil.Value   := ValorContabil ;
      TblApurICMSMensalOutras.Value        := ValorOutras ;
      TblApurICMSMensal.Post ;
    end ;

  if TblApurICMSMensal.Locate('CodCFOP', '22', []) then
    begin
      TblApurICMSMensal.Edit ;
      TblApurICMSMensalBaseCalc.Value := ValorImposto ;
      TblApurICMSMensal.Post ;
    end ;

  Screen.Cursor := 0 ;
  NomeEmpresa.Caption := SQLEmpresaEMPRA60RAZAOSOC.Value + '  CGC:' +
                         SQLEmpresaEMPRA14CGC.Value + '  IE:' +
                         SQLEmpresaEMPRA20IE.Value ;

  NomeEmpresa2.Caption := SQLEmpresaEMPRA60RAZAOSOC.Value ;
  CGCEmpresa2.Caption := '  CNPJ:' + SQLEmpresaEMPRA14CGC.Value +
                         '  Insc.ICMS:' + SQLEmpresaEMPRA20IE.Value ;
  PeriodoRel1.Caption := 'UNID: FPE DE ' +
                         FormatDateTime('dd/mm/yyyy', Dt1) + ' A ' +
                         FormatDateTime('dd/mm/yyyy', Dt2) ;
  Periodo2.Caption := 'Periodo de :' +
                      FormatDateTime('dd/mm/yyyy', Dt1) + ' a ' +
                      FormatDateTime('dd/mm/yyyy', Dt2) ;
  Periodo3.Caption := 'Periodo de :' +
                      FormatDateTime('dd/mm/yyyy', Dt1) + ' a ' +
                      FormatDateTime('dd/mm/yyyy', Dt2) ;
  ReportApuracao.Print ;
end ;

procedure TDMApuracaoICMS.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
  if TblCredDeb_UfCFOP_SintTipo.Value = 'CRED_ENTR' then
    LabelTipo.Caption := 'CFO: CREDITO/ENTRADAS - ANO/MES:' ;
  if TblCredDeb_UfCFOP_SintTipo.Value = 'DEB_SAI' then
    LabelTipo.Caption := 'CFO: DEBITOS/SAIDAS - ANO/MES:' ;
end;

procedure TDMApuracaoICMS.ppGroupHeaderBand2BeforePrint(Sender: TObject);
begin
  if TblApurICMSMensalTipo.Value = 'CRED_ENTR' then
    LabelTipo2.Caption := 'REGISTRO DE ICMS MENSAL - ENTRADAS' ;
  if TblApurICMSMensalTipo.Value = 'DEB_SAI' then
    LabelTipo2.Caption := 'REGISTRO DE ICMS MENSAL - SAIDAS' ;
end;

procedure TDMApuracaoICMS.TblCredDeb_UfCFOP_SintNewRecord(
  DataSet: TDataSet);
begin
  TblCredDeb_UfCFOP_SintVlrContabil.Value   := 0 ;
  TblCredDeb_UfCFOP_SintImpCredDeb.Value    := 0 ;
  TblCredDeb_UfCFOP_SintBaseCalc.Value      := 0 ;
  TblCredDeb_UfCFOP_SintIsentoNaoTrib.Value := 0 ;
  TblCredDeb_UfCFOP_SintOutras.Value        := 0 ;
end;

procedure TDMApuracaoICMS.TblApurICMSMensalNewRecord(DataSet: TDataSet);
begin
  TblApurICMSMensalVlrContabil.Value   := 0 ;
  TblApurICMSMensalImpCredDeb.Value    := 0 ;
  TblApurICMSMensalBaseCalc.Value      := 0 ;
  TblApurICMSMensalIsentoNaoTrib.Value := 0 ;
  TblApurICMSMensalOutras.Value        := 0 ;
end;

procedure TDMApuracaoICMS.TblCredDeb_UfCFOP_AnaNewRecord(
  DataSet: TDataSet);
begin
  TblCredDeb_UfCFOP_AnaVlrContabil.Value   := 0 ;
  TblCredDeb_UfCFOP_AnaImpCredDeb.Value    := 0 ;
  TblCredDeb_UfCFOP_AnaBaseCalc.Value      := 0 ;
  TblCredDeb_UfCFOP_AnaIsentoNaoTrib.Value := 0 ;
  TblCredDeb_UfCFOP_AnaOutras.Value        := 0 ;
end;

end.
