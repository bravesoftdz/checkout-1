unit uDMConsCupom;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider;

type
  TDMConsCupom = class(TDataModule)
    sdsEmpresa: TSQLDataSet;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    dsEmpresa: TDataSource;
    sdsEmpresaEMPRICOD: TIntegerField;
    sdsEmpresaEMPRA60RAZAOSOC: TStringField;
    cdsEmpresaEMPRICOD: TIntegerField;
    cdsEmpresaEMPRA60RAZAOSOC: TStringField;
    sdsTerminal: TSQLDataSet;
    dspTerminal: TDataSetProvider;
    cdsTerminal: TClientDataSet;
    dsTerminal: TDataSource;
    sdsTerminalTERMICOD: TIntegerField;
    sdsTerminalTERMA60DESCR: TStringField;
    cdsTerminalTERMICOD: TIntegerField;
    cdsTerminalTERMA60DESCR: TStringField;
    sdsCupom: TSQLDataSet;
    dspCupom: TDataSetProvider;
    cdsCupom: TClientDataSet;
    dsCupom: TDataSource;
    sdsCupomCUPOA13ID: TStringField;
    sdsCupomEMPRICOD: TIntegerField;
    sdsCupomTERMICOD: TIntegerField;
    sdsCupomCUPOICOD: TIntegerField;
    sdsCupomCUPODEMIS: TSQLTimeStampField;
    sdsCupomCLIEA13ID: TStringField;
    sdsCupomPLRCICOD: TIntegerField;
    sdsCupomVENDICOD: TIntegerField;
    sdsCupomCONVICOD: TIntegerField;
    sdsCupomCUPOCSTATUS: TStringField;
    sdsCupomCUPON2TOTITENS: TFMTBCDField;
    sdsCupomCUPON2DESC: TFMTBCDField;
    sdsCupomCUPON2ACRESC: TFMTBCDField;
    sdsCupomCUPON2TOTITENSRET: TFMTBCDField;
    sdsCupomCUPOINRO: TIntegerField;
    sdsCupomCUPOCTIPOPADRAO: TStringField;
    sdsCupomCUPON2CONVTAXA: TFMTBCDField;
    sdsCupomCUPOINROORDCOMPRA: TIntegerField;
    sdsCupomCUPOA13IDTROCA: TStringField;
    sdsCupomCUPON2VLRCOMISSAO: TFMTBCDField;
    sdsCupomCUPOA20CODANT: TStringField;
    sdsCupomCUPODCANC: TSQLTimeStampField;
    sdsCupomCUPON2JUROATRAS: TFMTBCDField;
    sdsCupomCUPON2MULTAATRAS: TFMTBCDField;
    sdsCupomCUPODPAGTOCONSIG: TSQLTimeStampField;
    sdsCupomCUPON3BONUSTROCA: TFMTBCDField;
    sdsCupomCUPODENTREGA: TSQLTimeStampField;
    sdsCupomTPVDICOD: TIntegerField;
    sdsCupomUSUAICODCANC: TIntegerField;
    sdsCupomPENDENTE: TStringField;
    sdsCupomREGISTRO: TSQLTimeStampField;
    sdsCupomCUPON3CREDTAXA: TFMTBCDField;
    sdsCupomCUPOCCONSIG: TStringField;
    sdsCupomCUPOV254OBS: TStringField;
    sdsCupomCUPOA30DATACARTAO: TStringField;
    sdsCupomCUPOA30HORACARTAO: TStringField;
    sdsCupomCUPOA30NSUPROVEDOR: TStringField;
    sdsCupomCUPOA30NSUINSTITUICAO: TStringField;
    sdsCupomCUPON2DESCITENS: TFMTBCDField;
    sdsCupomCATCA13ID: TStringField;
    sdsCupomAVALA13ID: TStringField;
    sdsCupomCFOPA5COD: TStringField;
    sdsCupomCUPOA13IDCUPNEG: TStringField;
    sdsCupomCUPODQUITACAO: TSQLTimeStampField;
    sdsCupomCUPON2BASEICMS: TFMTBCDField;
    sdsCupomCUPON2VLRICMS: TFMTBCDField;
    sdsCupomOPESICOD: TIntegerField;
    sdsCupomPLCTA15CODCRED: TStringField;
    sdsCupomPLCTA15CODDEB: TStringField;
    sdsCupomCLIENTENOME: TStringField;
    sdsCupomCLIENTECNPJ: TStringField;
    sdsCupomCLIENTEENDE: TStringField;
    sdsCupomCLIENTECIDA: TStringField;
    sdsCupomCLIENTEFONE: TStringField;
    sdsCupomUSUAICODVENDA: TIntegerField;
    sdsCupomCLDPICOD: TIntegerField;
    sdsCupomCUPOA8PLACAVEIC: TStringField;
    sdsCupomORIGEMVENDA: TStringField;
    sdsCupomTROCO: TFMTBCDField;
    sdsCupomCUPOCLEVAR: TStringField;
    sdsCupomDISPICOD: TIntegerField;
    sdsCupomMTBYICOD: TIntegerField;
    sdsCupomCUPOA30ECFMOD: TStringField;
    sdsCupomCUPOA30ECFSERIE: TStringField;
    sdsCupomCUPON2VLRPIS: TFMTBCDField;
    sdsCupomCUPON2VLRCOFINS: TFMTBCDField;
    sdsCupomCLIENTEBAIRRO: TStringField;
    sdsCupomCONTAICOD: TIntegerField;
    sdsCupomMESAICOD: TIntegerField;
    sdsCupomCUPOCBUSCA: TStringField;
    sdsCupomCHAVEACESSO: TStringField;
    sdsCupomPROTOCOLO: TStringField;
    sdsCupomRECIBO: TStringField;
    sdsCupomSTNFE: TStringField;
    sdsCupomSEQ_DIA: TIntegerField;
    cdsCupomCUPOA13ID: TStringField;
    cdsCupomEMPRICOD: TIntegerField;
    cdsCupomTERMICOD: TIntegerField;
    cdsCupomCUPOICOD: TIntegerField;
    cdsCupomCUPODEMIS: TSQLTimeStampField;
    cdsCupomCLIEA13ID: TStringField;
    cdsCupomPLRCICOD: TIntegerField;
    cdsCupomVENDICOD: TIntegerField;
    cdsCupomCONVICOD: TIntegerField;
    cdsCupomCUPOCSTATUS: TStringField;
    cdsCupomCUPON2TOTITENS: TFMTBCDField;
    cdsCupomCUPON2DESC: TFMTBCDField;
    cdsCupomCUPON2ACRESC: TFMTBCDField;
    cdsCupomCUPON2TOTITENSRET: TFMTBCDField;
    cdsCupomCUPOINRO: TIntegerField;
    cdsCupomCUPOCTIPOPADRAO: TStringField;
    cdsCupomCUPON2CONVTAXA: TFMTBCDField;
    cdsCupomCUPOINROORDCOMPRA: TIntegerField;
    cdsCupomCUPOA13IDTROCA: TStringField;
    cdsCupomCUPON2VLRCOMISSAO: TFMTBCDField;
    cdsCupomCUPOA20CODANT: TStringField;
    cdsCupomCUPODCANC: TSQLTimeStampField;
    cdsCupomCUPON2JUROATRAS: TFMTBCDField;
    cdsCupomCUPON2MULTAATRAS: TFMTBCDField;
    cdsCupomCUPODPAGTOCONSIG: TSQLTimeStampField;
    cdsCupomCUPON3BONUSTROCA: TFMTBCDField;
    cdsCupomCUPODENTREGA: TSQLTimeStampField;
    cdsCupomTPVDICOD: TIntegerField;
    cdsCupomUSUAICODCANC: TIntegerField;
    cdsCupomPENDENTE: TStringField;
    cdsCupomREGISTRO: TSQLTimeStampField;
    cdsCupomCUPON3CREDTAXA: TFMTBCDField;
    cdsCupomCUPOCCONSIG: TStringField;
    cdsCupomCUPOV254OBS: TStringField;
    cdsCupomCUPOA30DATACARTAO: TStringField;
    cdsCupomCUPOA30HORACARTAO: TStringField;
    cdsCupomCUPOA30NSUPROVEDOR: TStringField;
    cdsCupomCUPOA30NSUINSTITUICAO: TStringField;
    cdsCupomCUPON2DESCITENS: TFMTBCDField;
    cdsCupomCATCA13ID: TStringField;
    cdsCupomAVALA13ID: TStringField;
    cdsCupomCFOPA5COD: TStringField;
    cdsCupomCUPOA13IDCUPNEG: TStringField;
    cdsCupomCUPODQUITACAO: TSQLTimeStampField;
    cdsCupomCUPON2BASEICMS: TFMTBCDField;
    cdsCupomCUPON2VLRICMS: TFMTBCDField;
    cdsCupomOPESICOD: TIntegerField;
    cdsCupomPLCTA15CODCRED: TStringField;
    cdsCupomPLCTA15CODDEB: TStringField;
    cdsCupomCLIENTENOME: TStringField;
    cdsCupomCLIENTECNPJ: TStringField;
    cdsCupomCLIENTEENDE: TStringField;
    cdsCupomCLIENTECIDA: TStringField;
    cdsCupomCLIENTEFONE: TStringField;
    cdsCupomUSUAICODVENDA: TIntegerField;
    cdsCupomCLDPICOD: TIntegerField;
    cdsCupomCUPOA8PLACAVEIC: TStringField;
    cdsCupomORIGEMVENDA: TStringField;
    cdsCupomTROCO: TFMTBCDField;
    cdsCupomCUPOCLEVAR: TStringField;
    cdsCupomDISPICOD: TIntegerField;
    cdsCupomMTBYICOD: TIntegerField;
    cdsCupomCUPOA30ECFMOD: TStringField;
    cdsCupomCUPOA30ECFSERIE: TStringField;
    cdsCupomCUPON2VLRPIS: TFMTBCDField;
    cdsCupomCUPON2VLRCOFINS: TFMTBCDField;
    cdsCupomCLIENTEBAIRRO: TStringField;
    cdsCupomCONTAICOD: TIntegerField;
    cdsCupomMESAICOD: TIntegerField;
    cdsCupomCUPOCBUSCA: TStringField;
    cdsCupomCHAVEACESSO: TStringField;
    cdsCupomPROTOCOLO: TStringField;
    cdsCupomRECIBO: TStringField;
    cdsCupomSTNFE: TStringField;
    cdsCupomSEQ_DIA: TIntegerField;
    SQLConsulta: TSQLQuery;
    sdsOperacaoEstoque: TSQLDataSet;
    dspOperacaoEstoque: TDataSetProvider;
    cdsOperacaoEstoque: TClientDataSet;
    dsOperacaoEstoque: TDataSource;
    sdsOperacaoEstoqueOPESICOD: TIntegerField;
    sdsOperacaoEstoqueOPESA60DESCR: TStringField;
    sdsOperacaoEstoqueOPESCENTRADASAIDA: TStringField;
    cdsOperacaoEstoqueOPESICOD: TIntegerField;
    cdsOperacaoEstoqueOPESA60DESCR: TStringField;
    cdsOperacaoEstoqueOPESCENTRADASAIDA: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMConsCupom: TDMConsCupom;

implementation

uses
  uDMConexao;

{$R *.dfm}

procedure TDMConsCupom.DataModuleCreate(Sender: TObject);
begin
  cdsEmpresa.Open;
  cdsTerminal.Open;
  cdsOperacaoEstoque.Open;
end;

end.
