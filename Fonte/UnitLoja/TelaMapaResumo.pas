unit TelaMapaResumo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  DB, DBTables, RxQuery, RxLookup, ppCtrls, ppBands, ppVar, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppDBBDE, Mask, ToolEdit, ComCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaGeracaoMapaResumo = class(TFormTelaGeralTEMPLATE)
    BtnGeraMapa: TSpeedButton;
    ComboTerminal: TRxDBLookupCombo;
    Label1: TLabel;
    SQLTerminal: TRxQuery;
    DSSQLTerminal: TDataSource;
    TblMapaResumo: TTable;
    SQLTerminalTERMICOD: TIntegerField;
    SQLTerminalEMPRICOD: TIntegerField;
    SQLTerminalCLIEA13ID: TStringField;
    SQLTerminalVENDICOD: TIntegerField;
    SQLTerminalPLRCICOD: TIntegerField;
    SQLTerminalTERMA60DESCR: TStringField;
    SQLTerminalTERMCTIPO: TStringField;
    SQLTerminalTERMCSTATUSCAIXA: TStringField;
    SQLTerminalTERMDSTATUSCAIXA: TDateTimeField;
    SQLTerminalUSUAICODATIVO: TIntegerField;
    SQLTerminalTERMCMOVESTOQUE: TStringField;
    SQLTerminalTERMINRODECQUANT: TIntegerField;
    SQLTerminalTERMINUMEVISTA: TIntegerField;
    SQLTerminalTERMINUMEPRAZO: TIntegerField;
    SQLTerminalTERMCATIVO: TStringField;
    SQLTerminalECFA13ID: TStringField;
    SQLTerminalTERMA5ECFPORTACOM: TStringField;
    SQLTerminalTERMCECFIMPRCLIE: TStringField;
    SQLTerminalTERMCECFIMPRVEND: TStringField;
    SQLTerminalTERMCECFIMPRCONFDIV: TStringField;
    SQLTerminalTERMCIMPPREVENDA: TStringField;
    SQLTerminalPENDENTE: TStringField;
    SQLTerminalREGISTRO: TDateTimeField;
    SQLTerminalTERMIPROXCODCTRC: TIntegerField;
    SQLTerminalTERMA60NOMECOMPUT: TStringField;
    SQLTerminalTERMCAUTENTRFIMCUP: TStringField;
    SQLTerminalTERMCCONFFECHCUPOM: TStringField;
    SQLTerminalTERMINUMERECCRED: TIntegerField;
    TblMapaResumoECFA13ID: TStringField;
    TblMapaResumoMAPARESDATA: TDateTimeField;
    TblMapaResumoMAPARESNUMEQUIP: TIntegerField;
    TblMapaResumoMAPARESNUMCONTORDOPER: TBCDField;
    TblMapaResumoMAPARESCONTREDU: TBCDField;
    TblMapaResumoMAPARESVENDABRUTADIA: TBCDField;
    TblMapaResumoMAPARESCANCELAMENTOS: TBCDField;
    TblMapaResumoMAPARESDESCONTO: TBCDField;
    TblMapaResumoMAPARESVALORCONTABIL: TBCDField;
    TblMapaResumoMAPARESSUBST: TBCDField;
    TblMapaResumoMAPARESISENTONAOTRIBUT: TBCDField;
    TblMapaResumoMAPARESTRIB1: TBCDField;
    TblMapaResumoMAPARESTRIB2: TBCDField;
    TblMapaResumoMAPARESTRIB3: TBCDField;
    TblMapaResumoMAPARESTRIB4: TBCDField;
    TblMapaResumoMAPARESTRIB5: TBCDField;
    TblMapaResumoMAPARESTRIB6: TBCDField;
    TblMapaResumoMAPARESTRIB7: TBCDField;
    TblMapaResumoMAPARESTRIB8: TBCDField;
    TblMapaResumoMAPARESTRIB9: TBCDField;
    TblMapaResumoMAPARESTRIB10: TBCDField;
    TblMapaResumoMAPARESTRIB11: TBCDField;
    TblMapaResumoMAPARESTRIB12: TBCDField;
    TblMapaResumoMAPARESTRIB13: TBCDField;
    TblMapaResumoMAPARESTRIB14: TBCDField;
    TblMapaResumoMAPARESTRIB15: TBCDField;
    TblMapaResumoPENDENTE: TStringField;
    TblMapaResumoREGISTRO: TDateTimeField;
    TblICMS: TTable;
    TblICMSICMSICOD: TIntegerField;
    TblICMSICMSA60DESCR: TStringField;
    TblICMSICMSN2ALIQUOTA: TBCDField;
    TblICMSICMSA5TOTECF: TStringField;
    TblICMSICMSN2PERCSUBSTSAI: TBCDField;
    TblICMSICMSN2PERCSUBSTENT: TBCDField;
    TblICMSICMSN2PERCREDUCAO: TBCDField;
    TblICMSICMSICODSITTRIB: TIntegerField;
    TblICMSPENDENTE: TStringField;
    TblICMSREGISTRO: TDateTimeField;
    TblICMSDECRICOD: TStringField;
    TblICMSICMSPOSALIQECF: TStringField;
    TblICMSICMSPOSMAPARESUMO: TIntegerField;
    TblTemporaria: TTable;
    TblTemporariaContador: TAutoIncField;
    TblTemporariaMapaResTrib5: TFloatField;
    TblTemporariaMapaResTrib4: TFloatField;
    TblTemporariaMapaResTrib3: TFloatField;
    TblTemporariaMapaResTrib2: TFloatField;
    TblTemporariaMapaResTrib1: TFloatField;
    TblTemporariaMapaResIsentoNaoTribut: TFloatField;
    TblTemporariaMapaResSubst: TFloatField;
    TblTemporariaMapaResValorContabil: TFloatField;
    TblTemporariaMapaResDesconto: TFloatField;
    TblTemporariaMapaResCancelamentos: TFloatField;
    TblTemporariaMapaResVendaBrutaDia: TFloatField;
    TblTemporariaMapaResContRedu: TFloatField;
    TblTemporariaMapaResNumContOrdOper: TFloatField;
    TblTemporariaMapaResNumEquip: TFloatField;
    TblTemporariaMapaResData: TDateField;
    TblTemporariaSoma: TFloatField;
    TblTemporariaVlrImposto: TFloatField;
    BDEPipe: TppBDEPipeline;
    ppReport: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape13: TppShape;
    ppShape3: TppShape;
    ppShape2: TppShape;
    ppShape1: TppShape;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    EmpresaNome: TppLabel;
    EmpresaEndereco: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel8: TppLabel;
    ppLabel1: TppLabel;
    EmpresaMunicipio: TppLabel;
    EmpresaUF: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppShape4: TppShape;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppShape5: TppShape;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppShape8: TppShape;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppShape9: TppShape;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppShape10: TppShape;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppShape11: TppShape;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppShape12: TppShape;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppShape14: TppShape;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppShape15: TppShape;
    ppLabel27: TppLabel;
    ppShape16: TppShape;
    ppLabel28: TppLabel;
    ppShape17: TppShape;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppShape20: TppShape;
    ppShape21: TppShape;
    ppShape22: TppShape;
    ppShape23: TppShape;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppShape24: TppShape;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    Aliq1Lbl: TppLabel;
    Aliq2Lbl: TppLabel;
    Aliq4Lbl: TppLabel;
    Aliq5Lbl: TppLabel;
    Aliq3Lbl: TppLabel;
    Detalhe: TppDetailBand;
    ppShape38: TppShape;
    ppShape7: TppShape;
    ppShape6: TppShape;
    ppShape25: TppShape;
    ppShape26: TppShape;
    ppShape27: TppShape;
    ppShape28: TppShape;
    ppShape29: TppShape;
    ppShape30: TppShape;
    ppShape31: TppShape;
    ppShape32: TppShape;
    ppShape33: TppShape;
    ppShape34: TppShape;
    ppShape35: TppShape;
    ppShape36: TppShape;
    ppShape37: TppShape;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    Aliq1: TppDBText;
    Aliq2: TppDBText;
    Aliq3: TppDBText;
    Aliq4: TppDBText;
    Aliq5: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape39: TppShape;
    ppShape54: TppShape;
    ppShape53: TppShape;
    ppShape52: TppShape;
    ppShape51: TppShape;
    ppShape50: TppShape;
    ppShape49: TppShape;
    ppShape48: TppShape;
    ppShape47: TppShape;
    ppShape45: TppShape;
    ppShape44: TppShape;
    ppShape43: TppShape;
    ppShape40: TppShape;
    ppShape46: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppLabel2: TppLabel;
    ppShape41: TppShape;
    ppShape42: TppShape;
    ppShape55: TppShape;
    ppShape56: TppShape;
    ppShape57: TppShape;
    ppLabel3: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    DSTblTemporaria: TDataSource;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    De: TDateEdit;
    Label3: TLabel;
    Progresso: TProgressBar;
    procedure BtnGeraMapaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaGeracaoMapaResumo: TFormTelaGeracaoMapaResumo;

implementation

uses SWEDA7000, DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormTelaGeracaoMapaResumo.BtnGeraMapaClick(Sender: TObject);
var
  Porta, Aux, Equip, Data, Linha, ECF : String;
begin
  inherited;
  // Gerar Mapa Resumo

  if ComboTerminal.Value = '' then
    begin
      Application.MessageBox('Você deve selecionar o terminal !',Pchar('Informa'),MB_Ok+MB_IconExclamation);
      Abort ;
    end;

  ECF := SQLLocate('ECF','ECFA13ID','ECFA30MODELO','"' + SQLTerminalECFA13ID.AsString + '"');
  if ECF <> 'SWEDAS7000' then
  begin
    Application.MessageBox('O ECF configurado não é Sweda S7000!',Pchar('Informa'),MB_Ok+MB_IconExclamation);
    Abort ;
  end ;

  Screen.Cursor := crHourGlass ;

  TblMapaResumo.Open ;

  Porta := SQLTerminalTERMA5ECFPORTACOM.AsString;
  if Porta = 'COM1' then
    AbrePorta(1,5);
  if Porta = 'COM2' then
    AbrePorta(2,5);
  if Porta = 'COM3' then
    AbrePorta(3,5);
  if Porta = 'COM4' then
    AbrePorta(4,5);

  MandaCupomSweda('.271');
  Linha := SWEDA7000.Str ;
  Delete(Linha,1,3) ;
  Equip  := Copy(Linha,01,03) ;
  Aux    := Copy(Linha,05,06) ;
  Data   := Copy(Aux,01,02) + '/' +
            Copy(Aux,03,02) + '/' +
            Copy(Aux,05,02) ;

  if Application.MessageBox(PChar('Confirma a geração do mapa de ' + Data + ' da ECF ' + Equip + '?'),'Atenção',MB_SYSTEMMODAL+MB_YesNo+MB_IconQuestion) = IdYes then
  else
    exit ;
  Screen.Cursor := crHourGlass ;
  if not TblMapaResumo.FindKey([ECF,FormatDateTime('dd/mm/yyyy',StrToDate(Data)), StrToInt(Equip)]) then
  begin
    TblMapaResumo.Append ;
    TblMapaResumoMapaResNumEquip.AsString := TblMapaResumoMapaResNumEquip.AsString ;
  end
  else
    TblMapaResumo.Edit ;

  TblMapaResumoECFA13ID.AsString        := ECF;
  TblMapaResumoMapaResNumEquip.AsString := Equip ;

  //Tipo Operacao := Copy(Linha,04,01) ;
  TblMapaResumoMapaResData.AsString := Data ;

  if Copy(Linha,11,04) <> '    ' then
    TblMapaResumoMapaResNumContOrdOper.AsString := Copy(Linha,11,04) ;
  //Centavos          := Copy(Linha,15,01) ;
  //Treinamento       := Copy(Linha,16,01) ;
  //Grande Total      := Copy(Linha,17,17) ;
  //Cont.Irred.Cup.Canc.:= Copy(Linha,34,04) ;
  if Copy(Linha,38,04) <> '    ' then
    TblMapaResumoMapaResContRedu.AsString := Copy(Linha,38,04) ;
  if Copy(Linha,42,12) <> '            ' then
      TblMapaResumoMapaResVendaBrutaDia.AsString := Copy(Linha,42,10) + ',' + Copy(Linha,52,02) ;
  //Cont.It.Canc.Dia := Copy(Linha,54,04) ;
  //Tot.It.Canc.Dia := Copy(Linha,58,12) ;
  //Cont.Vend.Canc.Dia := Copy(Linha,70,04) ;
  if Copy(Linha,74,12) <> '            ' then
    TblMapaResumoMapaResCancelamentos.AsString := Copy(Linha,74,10) + ',' + Copy(Linha,84,02) ;
  //Cont.Desc.Dia := Copy(Linha,86,04) ;
  if Copy(Linha,90,12) <> '            ' then
    TblMapaResumoMapaResDesconto.AsString := Copy(Linha,90,10) + ',' + Copy(Linha,100,02);
  if Copy(Linha,102,12) <> '            ' then
    TblMapaResumoMapaResValorContabil.AsString := Copy(Linha,102,10) + ',' + Copy(Linha,112,02);{Total Liquido}
  //Cont.Cup.NãoFisc.Irredut.:= Copy(Linha,114,04) ;
  //Cont.Cup.Fisc.Irredut.:= Copy(Linha,118,04) ;
  //Modelo de ECF:= Copy(Linha,122,01) ;

  MandaCupomSweda('.272') ;
  Linha := SWEDA7000.Str;
  Delete(Linha,1,3) ;
  //NumEquip.text := Copy(Linha,01,03) ;
  //Tipo Operacao := Copy(Linha,04,01) ;
  //Identific.Equip. := Copy(Linha,05,01) ;
  if Copy(Linha,16,12) <> '            ' then
    TblMapaResumoMapaResIsentoNaoTribut.asstring := Copy(Linha,16,10) + ',' + Copy(Linha,26,02) ;
  if Copy(Linha,28,12) <> '            ' then
    TblMapaResumoMapaResIsentoNaoTribut.asfloat := TblMapaResumoMapaResIsentoNaoTribut.asfloat + Strtofloat(Copy(Linha,28,10) + ',' + Copy(Linha,38,02)) ;
  if Copy(Linha,40,12) <> '            ' then
  if Copy(Linha,40,12) <> '            ' then
      TblMapaResumoMapaResSubst.asstring := Copy(Linha,40,10) + ',' + Copy(Linha,50,02) ;
  //Total "ISSQN" := Copy(Linha,52,12) ;
  //Contador "ISSQN" := Copy(Linha,64,04) ;
  //"000000000000000000000000" := Copy(Linha,68,24) ;

  //IdentTrib1.caption := Copy(Linha,92,03) ;
  if Copy(Linha,95,12) <> '' then
    TblMapaResumoMapaResTrib1.asstring := Copy(Linha,95,10) + ',' + Copy(Linha,105,02) ;

  MandaCupomSweda('.273') ;
  Linha := SWEDA7000.Str;
  Delete(Linha,1,7) ;

  //IdentTrib2.caption := Copy(Linha,01,03) ;
  if Copy(Linha,04,12) <> '            ' then
    TblMapaResumoMapaResTrib2.asstring := Copy(Linha,04,10) + ',' + Copy(Linha,14,02) ;
  //IdentTrib3.caption := Copy(Linha,16,03) ;
  if Copy(Linha,19,12) <> '            ' then
    TblMapaResumoMapaResTrib3.asstring := Copy(Linha,19,10) + ',' + Copy(Linha,29,02) ;
  //IdentTrib4.caption := Copy(Linha,31,03) ;
  if Copy(Linha,34,12) <> '            ' then
    TblMapaResumoMapaResTrib4.asstring := Copy(Linha,34,10) + ',' + Copy(Linha,44,02) ;
  //IdentTrib5.caption := Copy(Linha,46,03) ;
  if Copy(Linha,49,12) <> '            ' then
    TblMapaResumoMapaResTrib5.asstring := Copy(Linha,49,10) + ',' + Copy(Linha,59,02) ;
  //IdentTrib6.caption := Copy(Linha,61,03) ;
  if Copy(Linha,64,12) <> '            ' then
    TblMapaResumoMapaResTrib6.asstring := Copy(Linha,64,10) + ',' + Copy(Linha,74,02) ;
  //IdentTrib7.caption := Copy(Linha,76,03) ;
  if Copy(Linha,79,12) <> '            ' then
    TblMapaResumoMapaResTrib7.asstring := Copy(Linha,79,10) + ',' + Copy(Linha,89,02) ;
  //IdentTrib8.caption := Copy(Linha,91,03) ;
  if Copy(Linha,94,12) <> '            ' then
    TblMapaResumoMapaResTrib8.asstring := Copy(Linha,94,10) + ',' + Copy(Linha,104,02) ;
  MandaCupomSweda('.274') ;
  Linha := SWEDA7000.Str;
  Delete(Linha,1,7) ;
  //IdentTrib9.caption  := Copy(Linha,01,03) ;
  if Copy(Linha,04,12) <> '            ' then
    TblMapaResumoMapaResTrib9.asstring := Copy(Linha,04,10) + ',' + Copy(Linha,14,02) ;
  //IdentTrib10.caption := Copy(Linha,16,03) ;
  if Copy(Linha,19,12) <> '            ' then
    TblMapaResumoMapaResTrib10.asstring := Copy(Linha,19,10) + ',' + Copy(Linha,29,02) ;
  //IdentTrib11.caption := Copy(Linha,31,03) ;
  if Copy(Linha,34,12) <> '            ' then
    TblMapaResumoMapaResTrib11.asstring := Copy(Linha,34,10) + ',' + Copy(Linha,44,02) ;
  //IdentTrib12.caption := Copy(Linha,46,03) ;
  if Copy(Linha,49,12) <> '            ' then
    TblMapaResumoMapaResTrib12.asstring := Copy(Linha,49,10) + ',' + Copy(Linha,59,02) ;
  //IdentTrib13.caption := Copy(Linha,61,03) ;
  if Copy(Linha,64,12) <> '            ' then
    TblMapaResumoMapaResTrib13.asstring := Copy(Linha,64,10) + ',' + Copy(Linha,74,02) ;
  //IdentTrib14.caption := Copy(Linha,76,03) ;
  if Copy(Linha,79,12) <> '            ' then
    TblMapaResumoMapaResTrib14.asstring := Copy(Linha,79,10) + ',' + Copy(Linha,89,02) ;
  //IdentTrib15.caption := Copy(Linha,91,03) ;
  if Copy(Linha,94,12) <> '            ' then
    TblMapaResumoMapaResTrib15.asstring := Copy(Linha,94,10) + ',' + Copy(Linha,104,02) ;

  TblMapaResumoPENDENTE.AsString := 'S';
  TblMapaResumoREGISTRO.AsDateTime := Now;
  TblMapaResumo.post ;

  if Porta = 'COM1' then
    FechaPorta(1);
  if Porta = 'COM2' then
    FechaPorta(2);
  if Porta = 'COM3' then
    FechaPorta(3);
  if Porta = 'COM4' then
    FechaPorta(4);

  Screen.Cursor := CRDefault ;
  ShowMessage('Mapa Resumo Gerado Com Sucesso !') ;

end;

procedure TFormTelaGeracaoMapaResumo.FormCreate(Sender: TObject);
begin
  inherited;
  SQLTerminal.Open;
end;

procedure TFormTelaGeracaoMapaResumo.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass ;

  EmpresaNome.Caption      := 'Nome: ' +  SQLLocate('EMPRESA','EMPRICOD','EMPRA60NOMEFANT',EmpresaPadrao) ;
  EmpresaEndereco.Caption  := 'Endereço: ' + SQLLocate('EMPRESA','EMPRICOD','EMPRA60END',EmpresaPadrao) ;
  EmpresaMunicipio.Caption := 'Município: ' + SQLLocate('EMPRESA','EMPRICOD','EMPRA60BAI',EmpresaPadrao) ;
  EmpresaUf.Caption        := 'Uf: ' + SQLLocate('EMPRESA','EMPRICOD','EMPRA2UF',EmpresaPadrao) ;

  TblICMS.Open;
  TblICMS.First ;

  TblMapaResumo.Open;
  TblMapaResumo.First ;
  Progresso.Min := TblMapaResumo.RecNo;
  Progresso.Max := TblMapaResumo.RecordCount;
  Progresso.Position := 0;

  try
    TblTemporaria.Close;
    TblTemporaria.DeleteTable;
    TblTemporaria.CreateTable;
  except
    TblTemporaria.CreateTable;
  end;
    TblTemporaria.Open;
  while not TblMapaResumo.EOF do
  begin
    if TblMapaResumoMapaResData.Value = De.Date then
    begin
      TblTemporaria.Append ;
      TblTemporariaMapaResData.Value            := TblMapaResumoMapaResData.Value ;
      TblTemporariaMapaResNumEquip.Value        := TblMapaResumoMapaResNumEquip.Value ;
      TblTemporariaMapaResNumContOrdOper.Value  := TblMapaResumoMapaResNumContOrdOper.Value ;
      TblTemporariaMapaResContRedu.Value        := TblMapaResumoMapaResContRedu.Value ;
      TblTemporariaMapaResVendaBrutaDia.Value   := TblMapaResumoMapaResVendaBrutaDia.Value ;
      TblTemporariaMapaResCancelamentos.Value   := TblMapaResumoMapaResCancelamentos.Value ;
      TblTemporariaMapaResDesconto.Value        := TblMapaResumoMapaResDesconto.Value ;
      TblTemporariaMapaResValorContabil.Value   := TblMapaResumoMapaResValorContabil.Value ;
      TblTemporariaMapaResSubst.Value           := TblMapaResumoMapaResSubst.Value ;
      TblTemporariaMapaResIsentoNaoTribut.Value := TblMapaResumoMapaResIsentoNaoTribut.Value ;
      TblTemporariaSoma.Value                   := 0 ;
      TblTemporariaVlrImposto.Value             := 0 ;

      Aliq1Lbl.Caption := '' ;
      Aliq2Lbl.Caption := '' ;
      Aliq3Lbl.Caption := '' ;
      Aliq4Lbl.Caption := '' ;
      Aliq5Lbl.Caption := '' ;
      TblICMS.First ;
      while not TblICMS.EOF do
      begin
        case TblICMSICMSPOSMAPARESUMO.Value of
          1 : begin
                Aliq1Lbl.Caption := FormatFloat('00', TblICMSICMSN2ALIQUOTA.Value) + '%' ;
                TblTemporariaMapaResTrib1.Value := TblMapaResumo.FieldByName(TblICMSICMSPOSALIQECF.Value).Value ;
                TblTemporariaSoma.Value := TblTemporariaSoma.Value +
                                           TblMapaResumo.FieldByName(TblICMSICMSPOSALIQECF.Value).Value ;
                TblTemporariaVlrImposto.Value := TblTemporariaVlrImposto.Value +
                                                 (TblMapaResumo.FieldByName(TblICMSICMSPOSALIQECF.Value).Value * (TblICMSICMSN2ALIQUOTA.Value/100)) ;
              end ;
          2 : begin
                Aliq2Lbl.Caption := FormatFloat('00', TblICMSICMSN2ALIQUOTA.Value) + '%' ;
                TblTemporariaMapaResTrib2.Value := TblMapaResumo.FieldByName(TblICMSICMSPOSALIQECF.Value).Value ;
                TblTemporariaSoma.Value := TblTemporariaSoma.Value +
                                           TblMapaResumo.FieldByName(TblICMSICMSPOSALIQECF.Value).Value ;
                TblTemporariaVlrImposto.Value := TblTemporariaVlrImposto.Value +
                                                 (TblMapaResumo.FieldByName(TblICMSICMSPOSALIQECF.Value).Value * (TblICMSICMSN2ALIQUOTA.Value/100)) ;
              end ;
          3 : begin
                Aliq3Lbl.Caption := FormatFloat('00', TblICMSICMSN2ALIQUOTA.Value) + '%' ;
                TblTemporariaMapaResTrib3.Value := TblMapaResumo.FieldByName(TblICMSICMSPOSALIQECF.Value).Value ;
                TblTemporariaSoma.Value := TblTemporariaSoma.Value +
                                           TblMapaResumo.FieldByName(TblICMSICMSPOSALIQECF.Value).Value ;
                TblTemporariaVlrImposto.Value := TblTemporariaVlrImposto.Value +
                                                 (TblMapaResumo.FieldByName(TblICMSICMSPOSALIQECF.Value).Value * (TblICMSICMSN2ALIQUOTA.Value/100)) ;
              end ;
          4 : begin
                Aliq4Lbl.Caption := FormatFloat('00', TblICMSICMSN2ALIQUOTA.Value) + '%' ;
                TblTemporariaMapaResTrib4.Value := TblMapaResumo.FieldByName(TblICMSICMSPOSALIQECF.Value).Value ;
                TblTemporariaSoma.Value := TblTemporariaSoma.Value +
                                           TblMapaResumo.FieldByName(TblICMSICMSPOSALIQECF.Value).Value ;
                TblTemporariaVlrImposto.Value := TblTemporariaVlrImposto.Value +
                                                 (TblMapaResumo.FieldByName(TblICMSICMSPOSALIQECF.Value).Value * (TblICMSICMSN2ALIQUOTA.Value/100)) ;
              end ;
          5 : begin
                Aliq5Lbl.Caption := FormatFloat('00', TblICMSICMSN2ALIQUOTA.Value) + '%' ;
                TblTemporariaMapaResTrib5.Value := TblMapaResumo.FieldByName(TblICMSICMSPOSALIQECF.Value).Value ;
                TblTemporariaSoma.Value := TblTemporariaSoma.Value +
                                           TblMapaResumo.FieldByName(TblICMSICMSPOSALIQECF.Value).Value ;
                TblTemporariaVlrImposto.Value := TblTemporariaVlrImposto.Value +
                                                 (TblMapaResumo.FieldByName(TblICMSICMSPOSALIQECF.Value).Value * (TblICMSICMSN2ALIQUOTA.Value/100)) ;
              end ;
        end ;

        TblICMS.Next ;
      end ;

      TblTemporaria.Post ;
    end ;

    TblMapaResumo.Next ;
    Progresso.Position := Progresso.Position + 1 ;

    if TblMapaResumoMapaResData.Value > De.Date then
      Break ;
  end ;
  Progresso.Position := 0 ;

  ppReport.Print ;

  TblMapaResumo.Filter   := '' ;
  TblMapaResumo.Filtered := false ;
  Screen.Cursor             := crDefault ;

end;

end.
