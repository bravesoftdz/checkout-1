unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCrpe32, DB, DBTables, RxQuery, VarSys, ExtCtrls, ComCtrls,
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
    ppImage1: TppImage;
    ppLabel5: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
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
    ppLabel4: TppLabel;
    ppLabel10: TppLabel;
    ppDBText19: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBText20: TppDBText;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    SQLCupomCUPODENTREGA: TDateTimeField;
    PipeCab: TppBDEPipeline;
    ppDBText22: TppDBText;
    SQLTamanho: TRxQuery;
    SQLCupomItemTamanho: TStringField;
    sqlProdutoGRADICOD: TIntegerField;
    sqlProdutoGRTMICOD: TIntegerField;
    PipeItens: TppBDEPipeline;
    ppTamanho: TppLabel;
    SQLCliente: TRxQuery;
    dsCliente: TDataSource;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteEMPRICOD: TIntegerField;
    SQLClienteCLIEICOD: TIntegerField;
    SQLClienteCLIEA14CGC: TStringField;
    SQLClienteCLIEA11CPF: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLClienteCLIEA60NOMEFANT: TStringField;
    SQLClienteCLIEA15FONE1: TStringField;
    SQLClienteCLIEA15FONE2: TStringField;
    SQLClienteCLIEA60PROFISSAO: TStringField;
    SQLClienteCLIEA60ENDRES: TStringField;
    SQLClienteCLIEA60BAIRES: TStringField;
    SQLClienteCLIEA60CIDRES: TStringField;
    SQLClienteCLIEA2UFRES: TStringField;
    SQLClienteCLIEA8CEPRES: TStringField;
    SQLClienteCLIEA60EMAIL: TStringField;
    SQLClienteCLIEIMUNICODFED: TIntegerField;
    SQLClienteCLIEA5NROENDRES: TStringField;
    ppDBText23: TppDBText;
    lbTotalItem: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    PipeCliente: TppBDEPipeline;
    PipeClienteppField1: TppField;
    PipeClienteppField2: TppField;
    PipeClienteppField3: TppField;
    PipeClienteppField4: TppField;
    PipeClienteppField5: TppField;
    PipeClienteppField6: TppField;
    PipeClienteppField7: TppField;
    PipeClienteppField8: TppField;
    PipeClienteppField9: TppField;
    PipeClienteppField10: TppField;
    PipeClienteppField11: TppField;
    PipeClienteppField12: TppField;
    PipeClienteppField13: TppField;
    PipeClienteppField18: TppField;
    PipeClienteppField19: TppField;
    PipeClienteppField20: TppField;
    PipeClienteppField21: TppField;
    PipeClienteppField22: TppField;
    PipeClienteppField23: TppField;
    PipeClienteppField90: TppField;
    PipeClienteppField102: TppField;
    function  RetornaTamanhoProduto(Produto : String ) : String;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ReportPreviewFormCreate(Sender: TObject);
    procedure ppHeaderBand2BeforePrint(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
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
  // id := '0020170000044';

  sqlcupom.close;
  sqlcupom.macrobyname('Filtro').Value := 'CUPOA13ID = "' + ID + '"';
  sqlcupom.Open;
  if not sqlcupom.IsEmpty then
    begin
      sqlcupomItem.close;
      sqlcupomItem.macrobyname('Filtro').Value := 'CUPOA13ID = "' + ID + '"';
      sqlcupomItem.Open;
      if not sqlcupomItem.IsEmpty then
        begin
          sqlcliente.close;
          sqlcliente.macrobyname('Filtro').Value := 'CLIEA13ID = "' + sqlcupom.fieldbyname('CLIEA13ID').Value + '"';
          sqlcliente.Open;

          Report.Print ;
        end;
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

procedure TFormPrincipal.ReportPreviewFormCreate(Sender: TObject);
begin
  Report.PreviewForm.WindowState := wsMaximized;
  TppViewer(Report.PreviewForm.Viewer).ZoomPercentage := 100;
end;

procedure TFormPrincipal.ppHeaderBand2BeforePrint(Sender: TObject);
begin
  Report.PreviewForm.WindowState := wsMaximized;
end;

function TFormPrincipal.RetornaTamanhoProduto(Produto : String ) : String;
var Grade, Tamanho : String;
begin
  if (Produto <> '') then
    begin

      SQLTamanho.Close;
      SQLTamanho.SQL.Text := 'SELECT GRADICOD, GRTMICOD FROM PRODUTO WHERE  PRODICOD = ' + Produto;
      SQLTamanho.Open;
      Grade := SQLTamanho.fieldbyname('GRADICOD').AsString;
      Tamanho := SQLTamanho.fieldbyname('GRTMICOD').AsString;

      if (Grade <> '') and (Tamanho <> '') then
        begin
          SQLTamanho.Close;
          SQLTamanho.SQL.Text := 'SELECT GRTMA5DESCR FROM GRADETAMANHO WHERE GRADICOD = ' + Grade + ' AND GRTMICOD = ' + Tamanho;
          SQLTamanho.Open;
          if not SQLTamanho.IsEmpty then
            Result := SQLTamanho.FindField('GRTMA5DESCR').AsString
          else
            Result := '';
        end;
      SQLTamanho.Close;
    end
  else
    Result := '';
end;

procedure TFormPrincipal.ppDetailBand2BeforePrint(Sender: TObject);
begin
  ppTamanho.caption   := RetornaTamanhoProduto(SQLCupomItemPRODICOD.AsString);
  lbTotalItem.caption := FormatFloat('##.00',SQLCupomItemCPITN3QTD.AsVariant*SQLCupomItemCPITN3VLRUNIT.AsVariant);
end;

end.
