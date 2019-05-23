unit DataModulo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  BDE, VarSYS, DataModuloTemplate, Db, DBTables, RxQuery, MemTable, DBLists,
  UCrpe32, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppProd, ppClass,
  ppReport, ppBands, ppCache, ppPrnabl, ppCtrls, ppStrtch, ppMemo, Serial,
  ExtCtrls;

type
  TDM = class(TDMTemplate)
    SQLTerminalAtivo: TRxQuery;
    SQLTerminalAtivoTERMICOD: TIntegerField;
    SQLTerminalAtivoTERMCTIPO: TStringField;
    SQLTerminalAtivoTERMCSTATUSCAIXA: TStringField;
    SQLTerminalAtivoTERMDSTATUSCAIXA: TDateTimeField;
    SQLTerminalAtivoTERMA60DESCR: TStringField;
    SQLExtratoProduto: TRxQuery;
    SQLTerminalAtivoCLIEA13ID: TStringField;
    SQLTerminalAtivoVENDICOD: TIntegerField;
    SQLTerminalAtivoPLRCICOD: TIntegerField;
    SQLTerminalAtivoTERMCMOVESTOQUE: TStringField;
    SQLTerminalAtivoTERMCUSAVENDEDOR: TStringField;
    SQLTerminalAtivoTERMCUSALIMITECRED: TStringField;
    SQLTerminalAtivoTERMA255MSGTELA: TStringField;
    SQLTerminalAtivoTERMA60IMPCARNE: TStringField;
    SQLTerminalAtivoTERMA60IMPPEDIDO: TStringField;
    SQLTerminalAtivoTERMA60IMPORCAMEN: TStringField;
    SQLTerminalAtivoTERMA60IMPCHEQUE: TStringField;
    SQLTerminalAtivoTERMA60IMPTCKAFCX: TStringField;
    SQLTerminalAtivoTERMCUSAMOEDA: TStringField;
    SQLTerminalAtivoTERMCIMPRIMECHEQUE: TStringField;
    SQLTerminalAtivoTERMCCONFIMPCARNE: TStringField;
    SQLTerminalAtivoTERMCIMPCONFDIVIDA: TStringField;
    SQLTerminalAtivoTERMCINFDADOSCLICP: TStringField;
    SQLTerminalAtivoTERMCIMPIDCUPOM: TStringField;
    SQLTerminalAtivoTERMA255MSGCARNE: TStringField;
    SQLTerminalAtivoTERMCIMPBARRASPED: TStringField;
    SQLTerminalAtivoTERMCINFDADOCLIPAD: TStringField;
    SQLTerminalAtivoTERMINRODECQUANT: TIntegerField;
    SQLTerminalAtivoTERMINUMEVISTA: TIntegerField;
    SQLTerminalAtivoTERMINUMEPRAZO: TIntegerField;
    SQLConfigGeral: TRxQuery;
    SQLConfigGeralCFGECATIVAEXPORT: TStringField;
    SQLConfigGeralCFGECATUSALDODIA: TStringField;
    SQLConfigGeralCFGEITIPMOVCONTENT: TIntegerField;
    SQLConfigGeralCFGEITIPMOVCONTSAI: TIntegerField;
    SQLConfigGeralCFGEA255PATHBLOQ: TStringField;
    SQLConfigGeralCFGECSETAREMPADREL: TStringField;
    SQLConfigGeralCFGECTROCAEMPLOGON: TStringField;
    SQLConfigGeralCFGEA255PATHFOTOCLI: TStringField;
    SQLConfigGeralCFGE1255PATHMALDIR: TStringField;
    SQLConfigGeralCFGECDELARQTEMPREL: TStringField;
    SQLConfigGeralCFGEA255PATHLOGOEMP: TStringField;
    SQLConfigGeralCFGECATUALSALDOMES: TStringField;
    SQLConfigGeralCFGECVALCODBARPROD: TStringField;
    SQLConfigGeralCFGECVALCODANTPRO: TStringField;
    SQLConfigGeralCFGECVALREFPROD: TStringField;
    SQLConfigGeralCFGECBASEPRCVENDA: TStringField;
    SQLConfigGeralCFGEIEMPPADRAO: TIntegerField;
    SQLConfigGeralCFGEA60HOSTSMTP: TStringField;
    SQLConfigGeralCFGEA60ENDRETSMTP: TStringField;
    SQLConfigGeralCFGEA60ENDHOSTPOP: TStringField;
    SQLConfigGeralCFGEA60NOMEUSERPOP: TStringField;
    SQLConfigGeralCFGEA60SENHAPOP: TStringField;
    SQLConfigGeralCGGEA30VERSAO: TStringField;
    SQLConfigGeralCFGEA255PATHVERSAO: TStringField;
    SQLConfigGeralCFGEA255PATHETIBAR: TStringField;
    SQLTerminalAtivoTERMCATIVO: TStringField;
    SQLTerminalAtivoUSUAICODATIVO: TIntegerField;
    SQLTerminalAtivoECFA13ID: TStringField;
    SQLConfigVenda: TRxQuery;
    SQLConfigVendaCFVEN2PERCLIMCRED: TBCDField;
    SQLConfigVendaCFVEN3MAXLIMCRED: TBCDField;
    SQLConfigVendaCFVECTIPOLIMCRED: TStringField;
    SQLConfigVendaCFVECARREDPARCELA: TStringField;
    SQLConfigVendaCFVECVENDAESTNEGAT: TStringField;
    SQLConfigVendaCFVECTIPOIMPPED: TStringField;
    SQLConfigVendaCFVECDADOSCHQPDV: TStringField;
    SQLConfigVendaCFVECUSADEBCREDCLI: TStringField;
    SQLConfigVendaCGVECTESTAITENSNF: TStringField;
    SQLConfigVendaCFVEN3ALIQISSQN: TBCDField;
    SQLConfigVendaCFVECIMPLEGPEDVENF: TStringField;
    SQLConfigVendaCFVEN3PERCICMFRETE: TBCDField;
    SQLConfigVendaCFVEA255OBSPADNF: TStringField;
    SQLConfigVendaCFVEITEMPOCONSPROD: TIntegerField;
    SQLConfigVendaCFVECQUITARPARCHQ: TStringField;
    SQLConfigVendaCFVEA255OBSPADRPED: TStringField;
    SQLConfigVendaOPESICODCUPOM: TIntegerField;
    SQLConfigVendaOPESICODCANCCUPOM: TIntegerField;
    SQLConfigVendaOPESICODNF: TIntegerField;
    SQLConfigVendaOPESICODCANCNF: TIntegerField;
    SQLConfigVendaCFVECRENDCONJNOLIM: TStringField;
    SQLTerminalAtivoTERMA5ECFPORTACOM: TStringField;
    SQLConfigVendaOPESICODRETORNO: TIntegerField;
    SQLTerminalAtivoTERMCIMPPREVENDA: TStringField;
    SQLConfigVendaOPESICODCANCTROCA: TIntegerField;
    SQLConfigVendaOPESICODTROCA: TIntegerField;
    SQLConfigVendaCFVECINFDADOVENDA: TStringField;
    SQLEmpresa: TRxQuery;
    SQLConfigGeralEmpresaLookup: TStringField;
    SQLConfigVendaCFVEIQTDPADRPDV: TIntegerField;
    SQLTerminalAtivoTERMCECFIMPRCONFDIV: TStringField;
    SQLTerminalAtivoTERMCAUTENTRFIMCUP: TStringField;
    SQLConfigVendaCFVECPARC0ENTRBAIX: TStringField;
    SQLConfigGeralCFGEA255PATHREPORT: TStringField;
    SQLConfigVendaCFVEA250MSGBLOQ: TStringField;
    SQLTerminalAtivoTERMCHIDECLIVENDPL: TStringField;
    SQLTerminalAtivoTERMCIMPRDADINTCUP: TStringField;
    SQLTerminalAtivoTERMCCONFFECHCUPOM: TStringField;
    SQLConfigVendaTPRCICOD: TIntegerField;
    SQLConfigVendaCFVECFAZVENDCONSIG: TStringField;
    SQLConfigVendaOPESICODDEVOL: TIntegerField;
    SQLConfigVendaMTBLICODVENDCONSIG: TIntegerField;
    SQLConfigVendaCFVECIMPPREVDCOD: TStringField;
    SQLConfigVendaCFVECFINVENDADPREVD: TStringField;
    Report: TCrpe;
    DBRel: TDatabase;
    SQLTerminalAtivoTERMA60IMPAUTORIZCOM: TStringField;
    SQLConfigVendaCFVECFINDPRODPORDESCR: TStringField;
    SQLConfigVendaOPESICODCANCPED: TIntegerField;
    SQLConfigVendaCFVECMOVESTOQUENF: TStringField;
    SQLConfigVendaCFVECMOVESTOQUEPED: TStringField;
    SQLConfigVendaCFVEICMSFRETECOD: TIntegerField;
    SQLConfigVendaOPESICODPED: TIntegerField;
    SQLConfigVendaCFVEINROITENSNF: TIntegerField;
    SQLConfigVendaTPDCICOD: TIntegerField;
    SQLConfigVendaPORTICOD: TIntegerField;
    SQLConfigVendaCFVECPEDEVLRPRODUTO: TStringField;
    SQLConfigVendaCFVECTESTALIMTCRED: TStringField;
    SQLConfigVendaCFVECSUBDEBNOLIMITE: TStringField;
    SQLConfigVendaCFVETOBSPADRAONF: TStringField;
    SQLConfigVendaCFVETOBSPADRAOPED: TStringField;
    SQLTerminalAtivoTERMCMOSTRAIDCUPOM: TStringField;
    SQLTerminalAtivoEMPRICOD: TIntegerField;
    SQLTerminalAtivoTERMCECFIMPRCLIE: TStringField;
    SQLTerminalAtivoTERMCECFIMPRVEND: TStringField;
    SQLTerminalAtivoPENDENTE: TStringField;
    SQLTerminalAtivoREGISTRO: TDateTimeField;
    SQLTerminalAtivoTERMIPROXCODCTRC: TIntegerField;
    SQLTerminalAtivoTERMA60NOMECOMPUT: TStringField;
    SQLTerminalAtivoTERMA254PATHTERM: TStringField;
    SQLTerminalAtivoTERMA60IMPFICHACLI: TStringField;
    SQLTerminalAtivoTERMITMPLIMITESERV: TIntegerField;
    SQLTerminalAtivoTERMIINTERVALOSERV: TIntegerField;
    SQLTerminalAtivoTERMINUMERECCRED: TIntegerField;
    SQLConfigGeralCFGECESTOQUEPORLOTE: TStringField;
    SQLTerminalAtivoTERMINROVIASTEF: TIntegerField;
    SQLConfigVendaCFVECQUITAPARCONV: TStringField;
    SQLConfigGeralCFGECUSASALDODIARIO: TStringField;
    SQLConfigVendaCFVECFARREDVLRVEND: TStringField;
    SQLConfigVendaCFVEINROCASASDEC: TIntegerField;
    SQLConfigGeralEmpresaPadraoCalcField: TStringField;
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
    SQLConfigVendaCFVECUSALIBERCRED: TStringField;
    SQLTerminalAtivoTERMCAUTENTIMPMATRI: TStringField;
    SQLTerminalAtivoTERMACTIPOIMPPEDORC: TStringField;
    SQLTerminalAtivoTERMTPATHPEDORC: TStringField;
    SQLConfigGeralCFGECTESTEANPROD: TStringField;
    SQLConfigGeralCFGECTESTREFPROD: TStringField;
    SQLTerminalAtivoTERMA30MODIMPNFISC: TStringField;
    SQLTerminalAtivoTERMCIMPENTCARNE: TStringField;
    SQLTerminalAtivoTPDCICOD: TIntegerField;
    SQLConfigVendaCFVECEXCLUIPEDFAT: TStringField;
    SQLConfigVendaCFVECALTPEDIMPORT: TStringField;
    SQLConfigVendaOPESICODIMPCUPOM: TIntegerField;
    SQLConfigVendaOPESICODVENDCONSIG: TIntegerField;
    SQLConfigVendaCFVEN2PERCCOFINS: TBCDField;
    SQLConfigVendaCFVEN2PERCENCARG: TBCDField;
    SQLConfigVendaCFVEN2PERCICMS: TBCDField;
    SQLConfigVendaCFVEN2PERCPIS: TBCDField;
    SQLConfigVendaCFVECSOLSENHAALTVLR: TStringField;
    SQLEmpresaEMPRA15CODEAN: TStringField;
    SQLEmpresaEMPRBLOGOTIPO: TBlobField;
    SQLConfigVendaCFVECIMPDESCRPRINF: TStringField;
    SQLConfigVendaCFVECCONTPEDVDAUSU: TStringField;
    SQLTerminalAtivoTERMCIMPCOMPTOTREC: TStringField;
    SQLTerminalAtivoTERMCNAOAUTRCTOCRD: TStringField;
    SQLConfigVendaCFVECINFPRODSUBTRI: TStringField;
    SQLConfigVendaCFVECQUITAPARCRT: TStringField;
    SQLConfigVendaCFVECFRETEPADRAO: TStringField;
    SQLConfigGeralCFGEA255EXEDUPLICATA: TStringField;
    SQLConfigGeralCFGECALCPRECOAUTOM: TStringField;
    SQLConfigGeralCFGECTIPOMARGLUCRO: TStringField;
    SQLConfigGeralCFGECUSAMARGLIQ: TStringField;
    SQLTerminalAtivoTERMCSQLORDENADO: TStringField;
    SQLTerminalAtivoCFGIICOD: TIntegerField;
    SQLTerminalAtivoTERMTPATHNF: TStringField;
    SQLTerminalAtivoTERMA5LEITPORTACOM: TStringField;
    SQLTerminalAtivoTERMA60MODLEITOR: TStringField;
    SQLTerminalAtivoTERMCDISPOENTRADA: TStringField;
    SQLTerminalAtivoTERMA60MENSAGEMPDV: TStringField;
    SQLTerminalAtivoTERMCINFDADOCARTAO: TStringField;
    SQLConfigVendaCFVECINFVLRDEVCVEN: TStringField;
    SQLTerminalAtivoTERMA30MODIMPCHQ: TStringField;
    SQLTerminalAtivoTERMA5IMPCHQPORTA: TStringField;
    SQLConfigGeralOPESICODTRANSFENTR: TIntegerField;
    SQLConfigGeralOPESICODTRANSFSAID: TIntegerField;
    SQLTerminalAtivoTERMCMOSTRATROCOCUP: TStringField;
    SQLUsuario: TRxQuery;
    SQLUsuarioUSUAICOD: TIntegerField;
    SQLUsuarioUSUAA60LOGIN: TStringField;
    SQLUsuarioUSUAA5SENHA: TStringField;
    SQLUsuarioUSUACVERDADCOMPRCLI: TStringField;
    SQLUsuarioUSUACDESBLOQCLI: TStringField;
    SQLUsuarioUSUAN2PERCDESC: TBCDField;
    SQLUsuarioUSUACVENDCLIBLOQ: TStringField;
    SQLUsuarioUSUACUSERMASTER: TStringField;
    SQLUsuarioUSUACCANCVENDA: TStringField;
    SQLUsuarioUSUACEXCLCLI: TStringField;
    SQLUsuarioUSUACCANCPREVENDA: TStringField;
    SQLUsuarioUSUCALTERASLDINVENTARIO: TStringField;
    SQLUsuarioUSUACLIBERACREDITO: TStringField;
    SQLUsuarioPENDENTE: TStringField;
    SQLUsuarioREGISTRO: TDateTimeField;
    SQLUsuarioUSUACEXCLDADOSTESO: TStringField;
    SQLUsuarioUSUACALTCAIXATES: TStringField;
    SQLUsuarioUSUACEXCMOVBCO: TStringField;
    SQLUsuarioUSUACALTVLRVENDA: TStringField;
    SQLUsuarioUSUACBLOQCTRLG: TStringField;
    SQLProdutoOrdemPesquisa: TRxQuery;
    SQLProdutoOrdemPesquisaPDOPIORDEM: TIntegerField;
    SQLProdutoOrdemPesquisaPDOPA30CAMPO: TStringField;
    SQLProduto: TRxQuery;
    SQLProdutoFilho: TRxQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    StringField1: TStringField;
    DateTimeField1: TDateTimeField;
    SQLProdutoSaldo: TRxQuery;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    BCDField4: TBCDField;
    BCDField5: TBCDField;
    BCDField6: TBCDField;
    StringField2: TStringField;
    DateTimeField2: TDateTimeField;
    SQLPreco: TRxQuery;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    BCDField7: TBCDField;
    BCDField8: TBCDField;
    BCDField9: TBCDField;
    StringField3: TStringField;
    DateTimeField3: TDateTimeField;
    SQLVendedor: TRxQuery;
    DSSQLVendedor: TDataSource;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    DSSQLPrevenda: TDataSource;
    SQLPrevenda: TRxQuery;
    SQLPrevendaTERMICOD: TIntegerField;
    SQLPrevendaPRVDICOD: TIntegerField;
    SQLPrevendaCLIEA13ID: TStringField;
    SQLPrevendaPLRCICOD: TIntegerField;
    SQLPrevendaVENDICOD: TIntegerField;
    SQLPrevendaCONVICOD: TIntegerField;
    SQLPrevendaPRVDN2TOTITENS: TBCDField;
    SQLPrevendaPRVDN2DESC: TBCDField;
    SQLPrevendaPRVDN2ACRESC: TBCDField;
    SQLPrevendaPRVDN2TOTITENSRET: TBCDField;
    SQLPrevendaPRVDCTIPOPADRAO: TStringField;
    SQLPrevendaPRVDN2CONVTAXA: TBCDField;
    SQLPrevendaPRVDINROORDCOMPRA: TIntegerField;
    SQLPrevendaPRVDCIMPORT: TStringField;
    SQLPrevendaPRVDCMARCADO: TStringField;
    SQLPrevendaCLIENTENOME: TStringField;
    SQLPrevendaCLIENTECNPJ: TStringField;
    SQLPrevendaCLIENTEENDE: TStringField;
    SQLPrevendaCLIENTECIDA: TStringField;
    SQLPrevendaCLIENTEOBS: TStringField;
    SQLPrevendaPDVDDHVENDA: TDateTimeField;
    DSSQLCliente: TDataSource;
    SQLCliente: TRxQuery;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLPlanoRecebimento: TRxQuery;
    DSSQLPlanoRecebimento: TDataSource;
    SQLPlanoRecebimentoPLRCICOD: TIntegerField;
    SQLPlanoRecebimentoPLRCA60DESCR: TStringField;
    SQLPlanoRecebimentoPLRCN2TXJURO: TBCDField;
    SQLPreVendaItem: TRxQuery;
    SQLPreVendaItemTERMICOD: TIntegerField;
    SQLPreVendaItemPRVDICOD: TIntegerField;
    SQLPreVendaItemPVITIPOS: TIntegerField;
    SQLPreVendaItemPRODICOD: TIntegerField;
    SQLPreVendaItemPVITN3QTD: TBCDField;
    SQLPreVendaItemPVITN3VLRUNIT: TBCDField;
    SQLPreVendaItemPVITN3VLRCUSTUNIT: TBCDField;
    SQLPreVendaItemPVITN2DESC: TBCDField;
    SQLPreVendaItemVENDICOD: TIntegerField;
    SQLPreVendaItemPVITN3VLRUNITLUCR: TBCDField;
    SQLPreVendaItemPVITCSTATUS: TStringField;
    SQLPreVendaItemPVITN2ICMSALIQ: TBCDField;
    SQLPreVendaItemPRODA60NROSERIE: TStringField;
    SQLPreVendaItemPVITN3QTDTROCA: TBCDField;
    DSSQLPreVendaItem: TDataSource;
    SQLPreVendaItemDescricaoProduto: TStringField;
    SQLPreVendaItemVlrTotalItem: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure SQLPreVendaItemCalcFields(DataSet: TDataSet);
    procedure DSSQLPrevendaDataChange(Sender: TObject; Field: TField);
    procedure SQLPrevendaNewRecord(DataSet: TDataSet);
    procedure SQLPrevendaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.DFM}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DB.Connected := true ;
  DBRel.Connected := true ;

  SQLUsuario.Open ;
//  SQLTerminalAtivo.Open ;
  SQLConfigGeral.Open ;
  SQLConfigVenda.Open ;
  SQLEmpresa.Open ;
  SQLVendedor.Open ;
  SQLCliente.Open ;
  SQLPlanoRecebimento.Open ;
  SQLPrevenda.Open;
end;

procedure TDM.SQLPreVendaItemCalcFields(DataSet: TDataSet);
begin
  inherited;
  SQLPreVendaItemVlrTotalItem.Value := (SQLPreVendaItemPVITN3VLRUNIT.Value * SQLPreVendaItemPVITN3QTD.Value) - SQLPreVendaItemPVITN2DESC.Value;
end;

procedure TDM.DSSQLPrevendaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
{  SQLprevendaitem.Close;
  SQLprevendaitem.MacroByName('MFiltro').Value := 'TERMICOD = 6 AND PRVDICOD = '+ SQLPrevendaPRVDICOD.AsString ;
  SQLprevendaitem.Open;}
end;

procedure TDM.SQLPrevendaNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLPrevendaTERMICOD.Value          := 6;
  SQLPrevendaPDVDDHVENDA.Value       := now;
  SQLPrevendaPRVDN2TOTITENS.Value    := 0;
  SQLPrevendaPRVDN2DESC.Value        := 0;
  SQLPrevendaPRVDN2ACRESC.Value      := 0;
  SQLPrevendaPRVDN2TOTITENSRET.Value := 0;
  SQLPrevendaPRVDN2CONVTAXA.Value    := 0;
  SQLPrevendaPRVDCIMPORT.Value       := 'N';
  SQLPrevendaPRVDCMARCADO.Value      := 'N';
end;

procedure TDM.SQLPrevendaBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DSSQLPrevenda.State = dsInsert then
    begin
      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('select Max(PRVDICOD) as Contador from PREVENDA') ;
//      DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
      DM.SQLTemplate.SQL.Add('where TERMICOD = 6') ;
      DM.SQLTemplate.Open ;
      if DM.SQLTemplate.FieldByName('Contador').AsString <> '' then
        SQLPrevendaPRVDICOD.Value := DM.SQLTemplate.FieldByName('Contador').Value + 1
      else
        SQLPrevendaPRVDICOD.Value := 1 ;
    end;
end;

end.

