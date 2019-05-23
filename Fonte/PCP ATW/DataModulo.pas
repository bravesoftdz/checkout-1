unit DataModulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataModuloTemplate, DB, DBTables, DBLists, RxQuery;

type
  TDM = class(TDMTemplate)
    SQLConfigVenda: TQuery;
    SQLConfigVendaCFVEN3MAXLIMCRED: TBCDField;
    SQLConfigVendaCFVEN2PERCLIMCRED: TBCDField;
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
    SQLConfigVendaOPESICODRETORNO: TIntegerField;
    SQLConfigVendaOPESICODCANCTROCA: TIntegerField;
    SQLConfigVendaOPESICODTROCA: TIntegerField;
    SQLConfigVendaCFVECRENDCONJNOLIM: TStringField;
    SQLConfigVendaCFVECINFDADOVENDA: TStringField;
    SQLConfigVendaCFVEIQTDPADRPDV: TIntegerField;
    SQLConfigVendaCFVEA250MSGBLOQ: TStringField;
    SQLConfigVendaCFVECPARC0ENTRBAIX: TStringField;
    SQLConfigVendaCFVEICMSFRETECOD: TIntegerField;
    SQLConfigVendaTPRCICOD: TIntegerField;
    SQLConfigVendaCFVECFAZVENDCONSIG: TStringField;
    SQLConfigVendaCFVECMOVESTOQUENF: TStringField;
    SQLConfigVendaCFVECMOVESTOQUEPED: TStringField;
    SQLConfigVendaOPESICODCANCPED: TIntegerField;
    SQLConfigVendaOPESICODDEVOL: TIntegerField;
    SQLConfigVendaOPESICODPED: TIntegerField;
    SQLConfigVendaMTBLICODVENDCONSIG: TIntegerField;
    SQLConfigVendaCFVECFINVENDADPREVD: TStringField;
    SQLConfigVendaCFVECIMPPREVDCOD: TStringField;
    SQLConfigVendaCFVECFINDPRODPORDESCR: TStringField;
    SQLConfigVendaPORTICOD: TIntegerField;
    SQLConfigVendaTPDCICOD: TIntegerField;
    SQLConfigVendaCFVECEXCLUIPEDFAT: TStringField;
    SQLConfigVendaCFVEINROITENSNF: TIntegerField;
    SQLConfigVendaCFVECALTPEDIMPORT: TStringField;
    SQLConfigVendaCFVECPEDEVLRPRODUTO: TStringField;
    SQLConfigVendaCFVECSUBDEBNOLIMITE: TStringField;
    SQLConfigVendaCFVECTESTALIMTCRED: TStringField;
    SQLConfigVendaCFVEINROCASASDEC: TIntegerField;
    SQLConfigVendaCFVECFARREDVLRVEND: TStringField;
    SQLProdutoOrdemPesquisa: TRxQuery;
    SQLProdutoOrdemPesquisaPDOPIORDEM: TIntegerField;
    SQLProdutoOrdemPesquisaPDOPA30CAMPO: TStringField;
    SQLProdutoFilho: TRxQuery;
    SQLProduto: TRxQuery;
    SQLProdutoSaldo: TRxQuery;
    SQLProdutoSaldoEMPRICOD: TIntegerField;
    SQLProdutoSaldoPRODICOD: TIntegerField;
    SQLProdutoSaldoPSLDN3QTDE: TBCDField;
    SQLPreco: TRxQuery;
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
    SQLConfigGeralEmpresaPadraoCalcField: TStringField;
    SQLConfigGeralCFGEA60HOSTSMTP: TStringField;
    SQLConfigGeralCFGEA60ENDRETSMTP: TStringField;
    SQLConfigGeralCFGEA60ENDHOSTPOP: TStringField;
    SQLConfigGeralCFGEA60NOMEUSERPOP: TStringField;
    SQLConfigGeralCFGEA60SENHAPOP: TStringField;
    SQLConfigGeralCGGEA30VERSAO: TStringField;
    SQLConfigGeralCFGEA255PATHVERSAO: TStringField;
    SQLConfigGeralCFGEA255PATHETIBAR: TStringField;
    SQLConfigGeralEmpresaMatrizFilialLookUp: TStringField;
    SQLConfigGeralCFGEA255PATHREPORT: TStringField;
    SQLConfigGeralCFGECTESTEANPROD: TStringField;
    SQLConfigGeralCFGECTESTREFPROD: TStringField;
    SQLConfigGeralCFGEA255EXEDUPLICATA: TStringField;
    SQLConfigGeralCFGECESTOQUEPORLOTE: TStringField;
    SQLConfigGeralCFGECALCPRECOAUTOM: TStringField;
    SQLConfigGeralCFGECUSASALDODIARIO: TStringField;
    SQLConfigGeralCFGECTIPOMARGLUCRO: TStringField;
    SQLUsuarios: TRxQuery;
    SQLUsuariosUSUAICOD: TIntegerField;
    SQLUsuariosUSUAA60LOGIN: TStringField;
    SQLUsuariosUSUAA5SENHA: TStringField;
    SQLUsuariosPENDENTE: TStringField;
    SQLUsuariosREGISTRO: TDateTimeField;
    SQLUsuariosUSUACUSERMASTER: TStringField;
    SQLEmpresa: TRxQuery;
    SQLTerminalAtivo: TRxQuery;
    SQLTerminalAtivoTERMICOD: TIntegerField;
    SQLTerminalAtivoTERMA60DESCR: TStringField;
    SQLTerminalAtivoTERMCINFDADOSCLICP: TStringField;
    SQLTerminalAtivoTERMA60IMPAUTORIZCOM: TStringField;
    SQLTerminalAtivoTERMA60IMPFICHACLI: TStringField;
    SQLTerminalAtivoECFA13ID: TStringField;
    SQLTerminalAtivoTERMCSQLORDENADO: TStringField;
    SQLTerminalAtivoEMPRICOD: TIntegerField;
    SQLConfigCompra: TRxQuery;
    SQLConfigCompraCFCOITIPMOVCANCNFE: TIntegerField;
    SQLConfigCompraCFCOCALTPRCPRODENT: TStringField;
    SQLConfigCompraCFCOCTESTAITENSNFE: TStringField;
    SQLConfigCompraCFCOCTOTPRCVENPROD: TStringField;
    SQLConfigCompraCFCOCNUMSERPRODENT: TStringField;
    SQLConfigCompraCFCOCIMPLEGORDCOMP: TStringField;
    SQLConfigCompraCFCOITIPMOVNFE: TIntegerField;
    SQLConfigCompraCFCOCALTVLRCOMPRA: TStringField;
    SQLConfigCompraCFCOCALTPERCIPI: TStringField;
    SQLConfigCompraCFCOCALTVLRCUSTO: TStringField;
    SQLConfigCompraCFCOCEXCLUIPEDENT: TStringField;
    SQLConfigCompraPORTICOD: TIntegerField;
    SQLConfigCompraTPDCICOD: TIntegerField;
    SQLConfigCompraCFCOCTESTPRODFORN: TStringField;
    SQLConfigCompraCFCOCVERIFICAVLRMENOR: TStringField;
    SQLConfigCompraCFCOCINFDADOSFRETE: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    GerandoMovtoDiverso : Boolean;
    ParametroExterno    : String;
  end;

var
  DM: TDM;

implementation

uses TELALOGIN;

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  inherited;
  if not SQLConfigGeral.Active then SQLConfigGeral.Active := True;
end;

end.
