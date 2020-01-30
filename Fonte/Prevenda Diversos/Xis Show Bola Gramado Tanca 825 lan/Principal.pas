unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCrpe32, DB, DBTables, RxQuery, VarSys, ExtCtrls, ComCtrls, IniFiles,
  RDprint, ppDB, ppDBPipe, ppDBBDE, daDataModule, ppModule, raCodMod,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, jpeg, ppParameter, ppStrtch, ppMemo, ppViewr, ppSubRpt;

type
  TFormPrincipal = class(TForm)
    PrevendaElgin: TppReport;
    DSCab: TDataSource;
    DSItens: TDataSource;
    ppParameterList1: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    ppLabel7: TppLabel;
    ppDBText4: TppDBText;
    ppLabel9: TppLabel;
    ppLine7: TppLine;
    ppLabel15: TppLabel;
    ppLabel22: TppLabel;
    ppLabel27: TppLabel;
    lbTipoVenda: TppLabel;
    ppLabel5: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText11: TppDBText;
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
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLine1: TppLine;
    SQLPrevendaItemTotalItem: TFloatField;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    SQLCliente: TRxQuery;
    SQLClienteCLIEA60NOMEFANT: TStringField;
    SQLClienteCLIEA13ID: TStringField;
    SQLPrevendaItemPRODA60NROSERIE: TStringField;
    SQLPrevendaItemPVITN3QTDTROCA: TBCDField;
    SQLPrevendaItemSITUACAO: TStringField;
    SQLPrevendaItemCOZINHA: TStringField;
    SQLPrevendaItemDATA_INICIO_PRODUCAO: TIntegerField;
    SQLPrevendaItemDATA_PEDIDO: TIntegerField;
    SQLPrevendaItemDATA_FIM_PRODUCAO: TIntegerField;
    SQLPrevendaItemBORDA01: TStringField;
    SQLPrevendaItemBORDA02: TStringField;
    SQLPrevendaItemBORDA03: TStringField;
    SQLPrevendaItemSABOR01: TStringField;
    SQLPrevendaItemSABOR02: TStringField;
    SQLPrevendaItemSABOR03: TStringField;
    SQLPrevendaItemSABOR04: TStringField;
    SQLPrevendaItemSABOR05: TStringField;
    SQLPrevendaItemSABOR06: TStringField;
    SQLPrevendaCONTAICOD: TIntegerField;
    SQLPrevendaMESAICOD: TIntegerField;
    SQLPrevendaDISPICOD: TIntegerField;
    SQLPrevendaCUPOCLEVAR: TStringField;
    SQLPrevendaMTBYICOD: TIntegerField;
    SQLPrevendaSEQUENCIAL: TIntegerField;
    PipeItens: TppBDEPipeline;
    Cozinha_Copa_Mesa: TppReport;
    ppParameterList2: TppParameterList;
    ppDBText24: TppDBText;
    ppLabel4: TppLabel;
    ppDBText17: TppDBText;
    SQLPrevendaORIGEMVENDA: TStringField;
    SQLPrevendaCUPOCBUSCA: TStringField;
    PipeCab: TppBDEPipeline;
    lbClienteBusca: TppLabel;
    ppHeaderBand_Cozinha_Copa: TppHeaderBand;
    ppLine2: TppLine;
    ppLabel8: TppLabel;
    lbTipoVendaCozinha: TppLabel;
    ppDBText1: TppDBText;
    lbClienteBuscaCozinha: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText16: TppDBText;
    ppDBText18: TppDBText;
    ppLine3: TppLine;
    ppSummaryBand1: TppSummaryBand;
    daDataModule1: TdaDataModule;
    raCodeModule2: TraCodeModule;
    ppDBText6: TppDBText;
    ppDBText5: TppDBText;
    ppDBText21: TppDBText;
    ppDBText15: TppDBText;
    ppDBText8: TppDBText;
    ppDBText7: TppDBText;
    ppDBText23: TppDBText;
    ppLabel1: TppLabel;
    SQLPrevendaVendedorNome: TStringField;
    PipeCabppField34: TppField;
    ppLabel2: TppLabel;
    ppDBText9: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    Cozinha_Tele: TppReport;
    ppHeaderBand_Tele: TppHeaderBand;
    ppLine4: TppLine;
    ppLabel6: TppLabel;
    ppLabel10: TppLabel;
    ppDBText10: TppDBText;
    ClienteBusca_Tele: TppLabel;
    ppLabel12: TppLabel;
    ppDBText20: TppDBText;
    ppDetailBand3: TppDetailBand;
    ppDBText22: TppDBText;
    ppDBText27: TppDBText;
    ppLine5: TppLine;
    ppDBText28: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    raCodeModule3: TraCodeModule;
    daDataModule3: TdaDataModule;
    ppParameterList3: TppParameterList;
    ppLabel13: TppLabel;
    ppDBText12: TppDBText;
    ppDBText19: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppLine6: TppLine;
    ppLabel11: TppLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SQLPrevendaItemCalcFields(DataSet: TDataSet);
    procedure ppHeaderBand2BeforeGenerate(Sender: TObject);
    procedure ppHeaderBand_Cozinha_CopaBeforeGenerate(Sender: TObject);
    procedure ppHeaderBand_TeleBeforeGenerate(Sender: TObject);
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
var Terminal, ID, ImpressoraCaixa, ImpressoraCozinha01, ImpressoraCozinha02, ImpressoraCozinha03, ImpressoraCozinha04, ImpressoraCozinha05 : String;
    IniFile : TIniFile;
begin
  IniFile              := TIniFile.Create ('C:\Easy2Solutions\Gestao\Parceiro.INI');
  ImpressoraCaixa      := IniFile.ReadString('Restaurante','ImpCaixa','');
  ImpressoraCozinha01  := IniFile.ReadString('Restaurante','ImpCozinha01','');
  ImpressoraCozinha02  := IniFile.ReadString('Restaurante','ImpCozinha02','');
  ImpressoraCozinha03  := IniFile.ReadString('Restaurante','ImpCozinha03','');
  ImpressoraCozinha04  := IniFile.ReadString('Restaurante','ImpCozinha04','');
  ImpressoraCozinha05  := IniFile.ReadString('Restaurante','ImpCozinha05','');
  IniFile.Free;

  if ImpressoraCaixa = '' then
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
      sqlprevenda.edit;
      sqlprevendaPRVDCIMPRESSO.Value := 'S';
      try
        sqlprevenda.post;
      except
        sqlprevenda.cancel;
      end;

      {Tele Imprimir todos itens na cozinha01}
      if SQLPrevendaORIGEMVENDA.Value = 'TELE' then
        begin
          {Cupom Caixa}
          sqlprevendaitem.close;
          sqlprevendaitem.macrobyname('Filtro').Value := 'TERMICOD = ' + Terminal + ' and PRVDICOD = ' + ID;
          sqlprevendaitem.Open;
          if not sqlprevendaitem.IsEmpty then
            begin
              //Prevenda.PrinterSetup.PrinterName := ImpressoraCaixa;
              //Prevenda.Print ;
              Cozinha_Tele.PrinterSetup.PrinterName := ImpressoraCozinha01;
              Cozinha_Tele.Print ;
            end;
        end;

      if SQLPrevendaORIGEMVENDA.Value = 'MESA' then
        begin
          {Cozinha01}
          sqlprevendaitem.close;
          sqlprevendaitem.macrobyname('Filtro').Value := 'TERMICOD = ' + Terminal + ' and PRVDICOD = ' + ID + ' and COZINHA = "COZINHA01"';
          sqlprevendaitem.Open;
          if not sqlprevendaitem.IsEmpty then
            begin
              Cozinha_Copa_Mesa.PrinterSetup.PrinterName := ImpressoraCozinha01;
              Cozinha_Copa_Mesa.Print ;
            end;

          {Cozinha02}
          sqlprevendaitem.close;
          sqlprevendaitem.macrobyname('Filtro').Value := 'TERMICOD = ' + Terminal + ' and PRVDICOD = ' + ID + ' and COZINHA = "COZINHA02"';
          sqlprevendaitem.Open;
          if not sqlprevendaitem.IsEmpty then
            begin
              Cozinha_Copa_Mesa.PrinterSetup.PrinterName := ImpressoraCozinha02;
              Cozinha_Copa_Mesa.Print ;
            end;

          {Cozinha03}
          sqlprevendaitem.close;
          sqlprevendaitem.macrobyname('Filtro').Value := 'TERMICOD = ' + Terminal + ' and PRVDICOD = ' + ID + ' and COZINHA = "COZINHA03"';
          sqlprevendaitem.Open;
          if not sqlprevendaitem.IsEmpty then
            begin
              Cozinha_Copa_Mesa.PrinterSetup.PrinterName := ImpressoraCozinha03;
              Cozinha_Copa_Mesa.Print ;
            end;

          {Cozinha04}
          sqlprevendaitem.close;
          sqlprevendaitem.macrobyname('Filtro').Value := 'TERMICOD = ' + Terminal + ' and PRVDICOD = ' + ID + ' and COZINHA = "COZINHA04"';
          sqlprevendaitem.Open;
          if not sqlprevendaitem.IsEmpty then
            begin
              Cozinha_Copa_Mesa.PrinterSetup.PrinterName := ImpressoraCozinha04;
              Cozinha_Copa_Mesa.Print ;
            end;

          {Cozinha05}
          sqlprevendaitem.close;
          sqlprevendaitem.macrobyname('Filtro').Value := 'TERMICOD = ' + Terminal + ' and PRVDICOD = ' + ID + ' and COZINHA = "COZINHA05"';
          sqlprevendaitem.Open;
          if not sqlprevendaitem.IsEmpty then
            begin
              Cozinha_Copa_Mesa.PrinterSetup.PrinterName := ImpressoraCozinha05;
              Cozinha_Copa_Mesa.Print ;
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

procedure TFormPrincipal.ppHeaderBand2BeforeGenerate(Sender: TObject);
begin
  if SQLPrevendaORIGEMVENDA.Value = 'MESA' then
    lbTipoVenda.caption := 'MESA/COMANDA: ' + SQLPrevendaMESAICOD.AsString + ' / ' + SQLPrevendaCONTAICOD.AsString;
  if SQLPrevendaORIGEMVENDA.Value = 'TELE' then
    lbTipoVenda.caption := 'TELE: ' + SQLPrevendaSEQUENCIAL.AsString;
  if SQLPrevendaCUPOCLEVAR.value = 'S' then
    lbClienteBusca.Visible := true
  else
    lbClienteBusca.Visible := false;
end;

procedure TFormPrincipal.ppHeaderBand_Cozinha_CopaBeforeGenerate(Sender: TObject);
begin
  if SQLPrevendaCUPOCLEVAR.value = 'S' then
    lbClienteBuscaCozinha.Visible := true
  else
    lbClienteBuscaCozinha.Visible := false;
end;

procedure TFormPrincipal.ppHeaderBand_TeleBeforeGenerate(Sender: TObject);
begin
  if SQLPrevendaCUPOCLEVAR.value = 'S' then
    ClienteBusca_Tele.Visible := true
  else
    ClienteBusca_Tele.Visible := false;
end;

end.
