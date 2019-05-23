unit DataModulo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DataModuloTemplate, Db, DBTables, RxQuery, DBLists, VarSys;

type
  TDM = class(TDMTemplate)
    SQLUsuarios: TRxQuery;
    SQLUsuariosUSUAICOD: TIntegerField;
    SQLUsuariosUSUAA60LOGIN: TStringField;
    SQLUsuariosUSUAA5SENHA: TStringField;
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
    SQLEmpresa: TRxQuery;
    SQLConfigVenda: TRxQuery;
    SQLConfigVendaCFVEN3MAXLIMCRED: TBCDField;
    SQLConfigVendaCFVEN2PERCLIMCRED: TBCDField;
    SQLConfigVendaCFVECTIPOLIMCRED: TStringField;
    SQLConfigVendaCFVECARREDPARCELA: TStringField;
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
    SQLConfigVendaOPESICODRETORNO: TIntegerField;
    SQLConfigCrediario: TRxQuery;
    SQLProduto: TRxQuery;
    DSSQLProduto: TDataSource;
    SQLProdutoFilho: TRxQuery;
    SQLProdutoSaldo: TRxQuery;
    SQLConfigCompra: TRxQuery;
    SQLConfigCompraCFCOITIPMOVCANCNFE: TIntegerField;
    SQLConfigCompraCFCOCALTPRCPRODENT: TStringField;
    SQLConfigCompraCFCOCTESTAITENSNFE: TStringField;
    SQLConfigCompraCFCOCTOTPRCVENPROD: TStringField;
    SQLConfigCompraCFCOCNUMSERPRODENT: TStringField;
    SQLConfigCompraCFCOCIMPLEGORDCOMP: TStringField;
    SQLConfigCompraCFCOITIPMOVNFE: TIntegerField;
    SQLConfigGeralEmpresaMatrizFilialLookUp: TStringField;
    SQLProdutoSaldoEMPRICOD: TIntegerField;
    SQLProdutoSaldoPRODICOD: TIntegerField;
    SQLProdutoSaldoPSLDN3QTDE: TBCDField;
    SQLProdutoSaldoPSLDN3QTDMIN: TBCDField;
    SQLProdutoSaldoPSLDN3QTDMAX: TBCDField;
    SQLConfigVendaOPESICODCANCTROCA: TIntegerField;
    SQLConfigVendaOPESICODTROCA: TIntegerField;
    SQLConfigGeralCFGEA255PATHREPORT: TStringField;
    SQLConfigCompraCFCOCALTVLRCOMPRA: TStringField;
    SQLConfigCompraCFCOCALTPERCIPI: TStringField;
    SQLConfigCompraCFCOCALTVLRCUSTO: TStringField;
    SQLTerminalAtivo: TRxQuery;
    SQLTerminalAtivoTERMICOD: TIntegerField;
    SQLTerminalAtivoTERMCTIPO: TStringField;
    SQLTerminalAtivoTERMCSTATUSCAIXA: TStringField;
    SQLTerminalAtivoTERMDSTATUSCAIXA: TDateTimeField;
    SQLTerminalAtivoTERMA60DESCR: TStringField;
    SQLTerminalAtivoCLIEA13ID: TStringField;
    SQLTerminalAtivoVENDICOD: TIntegerField;
    SQLTerminalAtivoPLRCICOD: TIntegerField;
    SQLTerminalAtivoECFA13ID: TStringField;
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
    SQLTerminalAtivoTERMCATIVO: TStringField;
    SQLTerminalAtivoUSUAICODATIVO: TIntegerField;
    SQLTerminalAtivoTERMA5ECFPORTACOM: TStringField;
    SQLTerminalAtivoTERMCIMPPREVENDA: TStringField;
    SQLConfigGeralCFGECTESTEANPROD: TStringField;
    SQLConfigGeralCFGECTESTREFPROD: TStringField;
    SQLPreco: TRxQuery;
    SQLConfigVendaTPRCICOD: TIntegerField;
    SQLProdutoOrdemPesquisa: TRxQuery;
    SQLProdutoOrdemPesquisaPDOPIORDEM: TIntegerField;
    SQLProdutoOrdemPesquisaPDOPA30CAMPO: TStringField;
    SQLConfigCompraCFCOCEXCLUIPEDENT: TStringField;
    SQLConfigCompraPORTICOD: TIntegerField;
    SQLConfigCompraTPDCICOD: TIntegerField;
    SQLConfigCompraCFCOCTESTPRODFORN: TStringField;
    SQLParcelas: TRxQuery;
    SQLCliente: TRxQuery;
    SQLConfigVendaCFVECSUBDEBNOLIMITE: TStringField;
    SQLConfigVendaCFVECTESTALIMTCRED: TStringField;
    SQLConfigVendaCFVEINROCASASDEC: TIntegerField;
    SQLConfigCompraCFCOCVERIFICAVLRMENOR: TStringField;
    SQLConfigGeralCFGECESTOQUEPORLOTE: TStringField;
    SQLConfigGeralCFGECALCPRECOAUTOM: TStringField;
    SQLConfigVendaCFVEN2PERCCOFINS: TBCDField;
    SQLConfigVendaCFVEN2PERCENCARG: TBCDField;
    SQLConfigVendaCFVEN2PERCPIS: TBCDField;
    SQLConfigGeralCFGECUSASALDODIARIO: TStringField;
    SQLConfigGeralCFGECTIPOMARGLUCRO: TStringField;
    SQLConfigVendaCFVECFARREDVLRVEND: TStringField;
    SQLConfigCompraCFCOCINFDADOSFRETE: TStringField;
    QueryOperacaoDebito: TQuery;
    QueryOperacaoCredito: TQuery;
    SQLConfigTransportadora: TRxQuery;
    SQLConfigTransportadoraCFTROPFUICODCREDITO: TIntegerField;
    SQLConfigTransportadoraOPFUA60DESCRCREDITO: TStringField;
    SQLConfigTransportadoraCFTROPFUICODDEBITO: TIntegerField;
    SQLConfigTransportadoraOPFUA60DESCRDEBITO: TStringField;
    DsSQLConfigTransportadora: TDataSource;
    SQLUsuariosUSUACVERDADCOMPRCLI: TStringField;
    SQLUsuariosUSUACDESBLOQCLI: TStringField;
    SQLUsuariosUSUAN2PERCDESC: TBCDField;
    SQLUsuariosUSUACVENDCLIBLOQ: TStringField;
    SQLUsuariosUSUACCANCVENDA: TStringField;
    SQLUsuariosPENDENTE: TStringField;
    SQLUsuariosREGISTRO: TDateTimeField;
    SQLUsuariosUSUACEXCLCLI: TStringField;
    SQLUsuariosUSUACCANCPREVENDA: TStringField;
    SQLUsuariosUSUCALTERASLDINVENTARIO: TStringField;
    SQLUsuariosUSUACLIBERACREDITO: TStringField;
    SQLUsuariosUSUACUSERMASTER: TStringField;
    SQLUsuariosUSUACEXCLDADOSTESO: TStringField;
    SQLUsuariosUSUACALTCAIXATES: TStringField;
    SQLUsuariosUSUACEXCMOVBCO: TStringField;
    SQLUsuariosUSUAA60EMAIL: TStringField;
    SQLUsuariosUSUACALTVLRVENDA: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    InserindoItemPC,
    InserindoItemNC,
    ImportandoPedidoCompra,
    GerandoPedidoCompra,
    GerandoNotaCompra,
    GerandoMovtoDiverso:Boolean;
    TabelaPrecoAssistente:String;
    ConfigEtiqueta : Integer;    
  end;

var
  DM: TDM;

implementation

uses UnitLibrary;

{$R *.DFM}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  inherited;
  SQLUsuarios.Open ;
  SQLConfigGeral.Open ;
  SQLConfigCompra.Open ;
  SQLConfigVenda.Open;
  SQLEmpresa.Open ;
end;

end.
