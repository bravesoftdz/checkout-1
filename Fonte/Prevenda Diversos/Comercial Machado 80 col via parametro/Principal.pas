unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, RxQuery, VarSys, ExtCtrls, ComCtrls,
  RDprint, ppDB, ppDBPipe, ppDBBDE, daDataModule, ppModule, raCodMod,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, jpeg, ppParameter, ppStrtch, ppMemo, ppViewr;

type
  TFormPrincipal = class(TForm)
    Report: TppReport;
    DSCab: TDataSource;
    DSItens: TDataSource;
    ppParameterList1: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    ppLabel7: TppLabel;
    ppDBText4: TppDBText;
    ppLabel8: TppLabel;
    ppDBText5: TppDBText;
    ppLabel9: TppLabel;
    ppLabel20: TppLabel;
    ppDBText9: TppDBText;
    ppLine7: TppLine;
    ppLine6: TppLine;
    ppLabel15: TppLabel;
    ppLabel19: TppLabel;
    ppLabel22: TppLabel;
    ppLabel27: TppLabel;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText21: TppDBText;
    ppLabel5: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText7: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppLine1: TppLine;
    ppDBText8: TppDBText;
    ppDBText3: TppDBText;
    ppDBText2: TppDBText;
    raCodeModule1: TraCodeModule;
    daDataModule2: TdaDataModule;
    ppDBText10: TppDBText;
    ppDBText15: TppDBText;
    Database: TDatabase;
    SQLCupom: TRxQuery;
    SQLCupomItem: TRxQuery;
    SQLCupomCUPOA13ID: TStringField;
    SQLCupomEMPRICOD: TIntegerField;
    SQLCupomTERMICOD: TIntegerField;
    SQLCupomCUPOICOD: TIntegerField;
    SQLCupomCUPODEMIS: TDateTimeField;
    SQLCupomCLIEA13ID: TStringField;
    SQLCupomPLRCICOD: TIntegerField;
    SQLCupomVENDICOD: TIntegerField;
    SQLCupomCUPOCSTATUS: TStringField;
    SQLCupomCUPON2TOTITENS: TBCDField;
    SQLCupomCUPON2DESC: TBCDField;
    SQLCupomCUPON2ACRESC: TBCDField;
    SQLCupomCUPOV254OBS: TStringField;
    SQLCupomCUPOA30DATACARTAO: TStringField;
    SQLCupomCUPOA30HORACARTAO: TStringField;
    SQLCupomCUPOA30NSUPROVEDOR: TStringField;
    SQLCupomCUPOA30NSUINSTITUICAO: TStringField;
    SQLCupomCUPON2DESCITENS: TBCDField;
    SQLCupomCLIENTENOME: TStringField;
    SQLCupomCLIENTECNPJ: TStringField;
    SQLCupomCLIENTEENDE: TStringField;
    SQLCupomCLIENTECIDA: TStringField;
    SQLCupomCLIENTEFONE: TStringField;
    SQLCupomCLIENTEBAIRRO: TStringField;
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
    SQLCupomItemVENDICOD: TIntegerField;
    SQLCupomItemCPITN2VLRDESCSOBTOT: TBCDField;
    SQLCupomItemCPITN2BASEICMS: TBCDField;
    SQLCupomItemCPITN2VLRICMS: TBCDField;
    SQLCupomItemCPITTOBS: TStringField;
    sqlProduto: TRxQuery;
    sqlProdutoPRODICOD: TIntegerField;
    sqlProdutoPRODA60DESCR: TStringField;
    SQLCupomItemDescricaoLookup: TStringField;
    SQLVendedor: TRxQuery;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    SQLPlano: TRxQuery;
    SQLEmpresa: TRxQuery;
    SQLPlanoPLRCICOD: TIntegerField;
    SQLPlanoPLRCA60DESCR: TStringField;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60NOMEFANT: TStringField;
    SQLCupomEmpresaFantasia: TStringField;
    SQLCupomPlanoLookup: TStringField;
    SQLCupomVendedorLookup: TStringField;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppLine2: TppLine;
    ppLabel10: TppLabel;
    ppDBText19: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBText20: TppDBText;
    SQLCupomCUPODENTREGA: TDateTimeField;
    PipeCab: TppBDEPipeline;
    SQLTamanho: TRxQuery;
    SQLCupomItemTamanho: TStringField;
    sqlProdutoGRADICOD: TIntegerField;
    sqlProdutoGRTMICOD: TIntegerField;
    PipeItens: TppBDEPipeline;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation


{$R *.dfm}

procedure TFormPrincipal.FormCreate(Sender: TObject);
var ID : String;
begin
  Database.Connected := true ;
  ID    := ParamStr(1) ;
//  id    := '0072080000058';

  sqlcupom.close;
  sqlcupom.macrobyname('Filtro').Value := 'CUPOA13ID = "' + ID + '"';
  sqlcupom.Open;
  if not sqlcupom.IsEmpty then
    begin
      sqlcupomItem.close;
      sqlcupomItem.macrobyname('Filtro').Value := 'CUPOA13ID = "' + ID + '"';
      sqlcupomItem.Open;
      if not sqlcupomItem.IsEmpty then
        Report.Print ;
    end;
  sqlcupom.close;
  sqlcupomItem.close;
  Application.Terminate;
end;

procedure TFormPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree ;
end;

end.
