unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCrpe32, DB, DBTables, RxQuery, VarSys, ExtCtrls, ComCtrls, IniFiles,
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
    ppLabel9: TppLabel;
    ppLine7: TppLine;
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
    ppSummaryBand2: TppSummaryBand;
    raCodeModule1: TraCodeModule;
    daDataModule2: TdaDataModule;
    Database: TDatabase;
    SQLPrevenda: TRxQuery;
    SQLPrevendaItem: TRxQuery;
    sqlProduto: TRxQuery;
    sqlProdutoPRODICOD: TIntegerField;
    sqlProdutoPRODA60DESCR: TStringField;
    SQLVendedor: TRxQuery;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    SQLPlano: TRxQuery;
    SQLEmpresa: TRxQuery;
    SQLPlanoPLRCICOD: TIntegerField;
    SQLPlanoPLRCA60DESCR: TStringField;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60NOMEFANT: TStringField;
    ppDBText18: TppDBText;
    sqlProdutoGRADICOD: TIntegerField;
    sqlProdutoGRTMICOD: TIntegerField;
    SQLPrevendaItemTERMICOD: TIntegerField;
    SQLPrevendaItemPRVDICOD: TIntegerField;
    SQLPrevendaItemPVITIPOS: TIntegerField;
    SQLPrevendaItemPRODICOD: TIntegerField;
    SQLPrevendaItemPVITN3QTD: TBCDField;
    SQLPrevendaItemPVITN3VLRUNIT: TBCDField;
    SQLPrevendaItemPVITN3VLRCUSTUNIT: TBCDField;
    SQLPrevendaItemPVITN2DESC: TBCDField;
    SQLPrevendaItemVENDICOD: TIntegerField;
    SQLPrevendaItemPVITN3VLRUNITLUCR: TBCDField;
    SQLPrevendaItemPVITCSTATUS: TStringField;
    SQLPrevendaItemPVITN2ICMSALIQ: TBCDField;
    SQLPrevendaItemPVITTOBS: TStringField;
    SQLPrevendaItemDESCRICAO: TStringField;
    SQLPrevendaTERMICOD: TIntegerField;
    SQLPrevendaPRVDICOD: TIntegerField;
    SQLPrevendaCLIEA13ID: TStringField;
    SQLPrevendaPLRCICOD: TIntegerField;
    SQLPrevendaVENDICOD: TIntegerField;
    SQLPrevendaCONVICOD: TIntegerField;
    SQLPrevendaPRVDN2TOTITENS: TBCDField;
    SQLPrevendaPRVDN2DESC: TBCDField;
    SQLPrevendaPRVDN2ACRESC: TBCDField;
    SQLPrevendaPRVDCTIPOPADRAO: TStringField;
    SQLPrevendaPRVDCIMPORT: TStringField;
    SQLPrevendaPRVDCMARCADO: TStringField;
    SQLPrevendaCLIENTENOME: TStringField;
    SQLPrevendaCLIENTECNPJ: TStringField;
    SQLPrevendaCLIENTEENDE: TStringField;
    SQLPrevendaCLIENTECIDA: TStringField;
    SQLPrevendaCLIENTEOBS: TStringField;
    SQLPrevendaPDVDDHVENDA: TDateTimeField;
    SQLPrevendaPDVCPRECONCLU: TStringField;
    SQLPrevendaCLIENTEFONE: TStringField;
    SQLPrevendaTROCO: TBCDField;
    SQLPrevendaCLIENTEBAIRRO: TStringField;
    SQLPrevendaEMPRICOD: TIntegerField;
    SQLPrevendaPRVDCIMPRESSO: TStringField;
    SQLPrevendaTOTAL_ITENS: TIntegerField;
    PipeCab: TppBDEPipeline;
    PipeItens: TppBDEPipeline;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBText10: TppDBText;
    ppLine1: TppLine;
    SQLPrevendaItemTotalItem: TFloatField;
    PipeItensppField15: TppField;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    SQLPrevendaPlanoDescricao: TStringField;
    PipeCabppField26: TppField;
    ppDBText5: TppDBText;
    ppLabel4: TppLabel;
    ppLine2: TppLine;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ReportEntrega: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel11: TppLabel;
    ppLine3: TppLine;
    ppLabel12: TppLabel;
    ppLabel20: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText16: TppDBText;
    ppDBText19: TppDBText;
    ppLine4: TppLine;
    ppSummaryBand1: TppSummaryBand;
    daDataModule1: TdaDataModule;
    raCodeModule2: TraCodeModule;
    ppParameterList2: TppParameterList;
    SQLPrevendaPLACA: TStringField;
    SQLPrevendaOBPRA15SIGLA: TStringField;
    PipeCabppField27: TppField;
    PipeCabppField28: TppField;
    ppDBText6: TppDBText;
    ppLabel10: TppLabel;
    ppLabel21: TppLabel;
    SQLPrevendaADICIONAL: TStringField;
    PipeCabppField29: TppField;
    ppDBText7: TppDBText;
    SQLCliente: TRxQuery;
    SQLClienteCLIEA60NOMEFANT: TStringField;
    SQLClienteCLIEA13ID: TStringField;
    SQLPrevendaClienteFantasia: TStringField;
    PipeCabppField30: TppField;
    ppDBText15: TppDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SQLPrevendaItemCalcFields(DataSet: TDataSet);
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
var Terminal, ID, Impressora : String;
    IniFile : TIniFile;
begin
  IniFile     := TIniFile.Create ('C:\Easy2Solutions\Gestao\Parceiro.INI');
  Impressora  := IniFile.ReadString('Restaurante','ImpCaixa','');
  IniFile.Free;

  if Impressora = '' then
    begin
      ShowMessage('Impressora nao configurada no arquivo Parceiro.INI');
      Exit;
    end;

  Database.Connected := true ;
  Terminal := ParamStr(1) ;
  ID       := ParamStr(2) ;
  sqlprevenda.close;
  sqlprevenda.macrobyname('Filtro').Value := 'TERMICOD = ' + Terminal + ' and PRVDICOD = ' + ID;
  sqlprevenda.Open;
  if not sqlprevenda.IsEmpty then
    begin
      sqlprevendaitem.close;
      sqlprevendaitem.macrobyname('Filtro').Value := 'TERMICOD = ' + Terminal + ' and PRVDICOD = ' + ID;
      sqlprevendaitem.Open;
      if not sqlprevendaitem.IsEmpty then
        begin
          report.PrinterSetup.PrinterName := Impressora;
          ReportEntrega.PrinterSetup.PrinterName := Impressora;
          {1 Via}
          Report.Print ;
          {Seg Via}
          Report.Print ;
          {Entrega}
          ReportEntrega.Print ;

          sqlprevenda.edit;
          sqlprevendaPRVDCIMPRESSO.Value := 'S';
          try
            sqlprevenda.post;
          except
            sqlprevenda.cancel;
          end;
        end;
    end;
  SQLPrevenda.close;
  SQLPrevendaItem.close;
  Application.Terminate;
end;

procedure TFormPrincipal.SQLPrevendaItemCalcFields(DataSet: TDataSet);
begin
  if (SQLPrevendaItemPVITN3VLRUNIT.Value > 0) and (SQLPrevendaItemPVITN3QTD.Value > 0) then
    SQLPrevendaItemTotalItem.Value := SQLPrevendaItemPVITN3QTD.Value * SQLPrevendaItemPVITN3VLRUNIT.Value;
end;

procedure TFormPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree ;
end;

end.
