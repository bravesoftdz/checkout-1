unit DataModulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataModuloTemplate, DB, DBTables, DBLists, RxQuery, DBXpress, SqlExpr,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZConnection;

type
  TDM = class(TDMTemplate)
    SQLConfigVenda: TRxQuery;
    SQLConfigVendaCFVEN2PERCLIMCRED: TBCDField;
    SQLConfigVendaCFVEN3MAXLIMCRED: TBCDField;
    SQLConfigVendaCFVECTIPOLIMCRED: TStringField;
    SQLConfigVendaCFVECRENDCONJNOLIM: TStringField;
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
    SQLConfigVendaCFVECINFDADOVENDA: TStringField;
    SQLConfigVendaCFVEIQTDPADRPDV: TIntegerField;
    SQLConfigVendaCFVECPARC0ENTRBAIX: TStringField;
    SQLConfigVendaCFVEA250MSGBLOQ: TStringField;
    SQLConfigVendaTPRCICOD: TIntegerField;
    SQLConfigVendaCFVECFAZVENDCONSIG: TStringField;
    SQLConfigVendaOPESICODDEVOL: TIntegerField;
    SQLConfigVendaMTBLICODVENDCONSIG: TIntegerField;
    SQLConfigVendaCFVECIMPPREVDCOD: TStringField;
    SQLConfigVendaCFVECFINVENDADPREVD: TStringField;
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
    SQLConfigVendaCFVEINROCASASDEC: TIntegerField;
    SQLConfigVendaCFVECFARREDVLRVEND: TStringField;
    SQLProdutoOrdemPesquisa: TRxQuery;
    SQLProdutoOrdemPesquisaPDOPIORDEM: TIntegerField;
    SQLProdutoOrdemPesquisaPDOPA30CAMPO: TStringField;
    SQLProduto: TRxQuery;
    SQLProdutoFilho: TRxQuery;
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
    SQLConfigGeralCFGEA60HOSTSMTP: TStringField;
    SQLConfigGeralCFGEA60ENDRETSMTP: TStringField;
    SQLConfigGeralCFGEA60ENDHOSTPOP: TStringField;
    SQLConfigGeralCFGEA60NOMEUSERPOP: TStringField;
    SQLConfigGeralCFGEA60SENHAPOP: TStringField;
    SQLConfigGeralCGGEA30VERSAO: TStringField;
    SQLConfigGeralCFGEA255PATHVERSAO: TStringField;
    SQLConfigGeralCFGEA255PATHETIBAR: TStringField;
    SQLConfigGeralCFGEA255PATHREPORT: TStringField;
    SQLConfigGeralCFGECESTOQUEPORLOTE: TStringField;
    SQLConfigGeralEmpresaPadraoCalcField: TStringField;
    SQLEmpresa: TRxQuery;
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
    SQLTerminalAtivoTERMCECFIMPRCONFDIV: TStringField;
    SQLTerminalAtivoTERMCAUTENTRFIMCUP: TStringField;
    SQLTerminalAtivoTERMCHIDECLIVENDPL: TStringField;
    SQLTerminalAtivoTERMCIMPRDADINTCUP: TStringField;
    SQLTerminalAtivoTERMCCONFFECHCUPOM: TStringField;
    SQLTerminalAtivoTERMA60IMPAUTORIZCOM: TStringField;
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
    SQLUsuarios: TRxQuery;
    SQLUsuariosUSUAICOD: TIntegerField;
    SQLUsuariosUSUAA60LOGIN: TStringField;
    SQLUsuariosUSUAA5SENHA: TStringField;
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
    SQLUsuariosUSUAA60EMAIL: TStringField;
    SQLUsuariosUSUAA60EMAL: TStringField;
    SQLUsuariosUSUACALTCAIXATES: TStringField;
    SQLUsuariosUSUACALTVLRVENDA: TStringField;
    SQLUsuariosUSUACEXCMOVBCO: TStringField;
    SQLClasseUsuario: TRxQuery;
    SQLClasseUsuarioCLASSICOD: TIntegerField;
    SQLClasseUsuarioCLASSA60DESCRICAO: TStringField;
    SQLClasseUsuarioPENDENTE: TStringField;
    SQLClasseUsuarioREGISTRO: TDateTimeField;
    SQLPopUP: TQuery;
    SQLPopUPEXIBIRPOP: TStringField;
    SQLPopUPPOPTEMPO: TStringField;
    SQLPopUPCFGCCEXIBIRPOPTARE: TStringField;
    SQLConfigCrediario: TRxQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    IntegerField3: TIntegerField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    SQLUsuariosUSUACPERMINTEG: TStringField;
    SQLUsuariosUSUACPERMITECONFIG: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure EnviarEmailFailure(Sender: TObject);
    procedure EnviarEmailSuccess(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TelaVizualizacao, GridAtendimento, CodAtendimento, CodCliente, CodClasse,
    CodUsuario, TipoHistorico, Associar, GridTarefa, CodTarefa : String;
    HistoricoHorario : Boolean;
    ParametroExterno : string;
  end;

var
  DM: TDM;

implementation

uses VarSYS;

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  inherited;
  Retaguarda := True;
  if not SQLConfigGeral.Active then
    SQLConfigGeral.Open;
end;

procedure TDM.EnviarEmailFailure(Sender: TObject);
begin
  inherited;
  Application.MessageBox('Houve um erro no envio do e-mail.','Informa',MB_OK + MB_SETFOREGROUND);
end;

procedure TDM.EnviarEmailSuccess(Sender: TObject);
begin
  inherited;
  Application.MessageBox('Email enviado','Informa',MB_OK + MB_SETFOREGROUND);
end;

end.
