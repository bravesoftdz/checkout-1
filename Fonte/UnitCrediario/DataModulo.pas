unit DataModulo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  VarSYS, DataModuloTemplate, Db, DBTables, RxQuery, DBLists;

type
  TDM = class(TDMTemplate)
    SQLUsuarios: TRxQuery;
    SQLUsuariosUSUAICOD: TIntegerField;
    SQLUsuariosUSUAA60LOGIN: TStringField;
    SQLUsuariosUSUAA5SENHA: TStringField;
    SQLConfigCrediario: TRxQuery;
    SQLConfigCrediarioCFCRN2PERCJURATRAS: TBCDField;
    SQLConfigCrediarioCFCRN2PERCMULATRAS: TBCDField;
    SQLConfigCrediarioCFCRINRODIASTOLJUR: TIntegerField;
    SQLConfigCrediarioCFCRINRODIASTOLMUL: TIntegerField;
    SQLConfigCrediarioCFCRN2PERCADIANT: TBCDField;
    SQLConfigCrediarioCFCRINRODIASADIANT: TIntegerField;
    SQLConfigCrediarioCFCRINRODIACARTA1A: TIntegerField;
    SQLConfigCrediarioCFCRINRODIACARTA2A: TIntegerField;
    SQLConfigCrediarioCFCRINRODIACARTA3A: TIntegerField;
    SQLConfigCrediarioCFCRA255PATHCART1A: TStringField;
    SQLConfigCrediarioCFCRA255PATHCART2A: TStringField;
    SQLConfigCrediarioCFCRA255PATHCART3A: TStringField;
    SQLConfigCrediarioCFCRCCONSMOTBLOQ: TStringField;
    SQLConfigCrediarioCFCRCCONSCARTAVISO: TStringField;
    SQLConfigCrediarioCFCRA255PATHRELSPC: TStringField;
    SQLConfigCrediarioCFCRA255PATHAUTDEP: TStringField;
    SQLConfigGeral: TRxQuery;
    SQLConfigGeralCFGEIEMPPADRAO: TIntegerField;
    SQLConfigGeralEmpresaPadraoCalcField: TStringField;
    SQLConfigVenda: TRxQuery;
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
    SQLConfigVendaCFVECRENDCONJNOLIM: TStringField;
    SQLConfigVendaOPESICODCANCTROCA: TIntegerField;
    SQLConfigVendaOPESICODTROCA: TIntegerField;
    SQLProdutoSaldo: TRxQuery;
    SQLProdutoSaldoEMPRICOD: TIntegerField;
    SQLProdutoSaldoPRODICOD: TIntegerField;
    SQLProdutoSaldoPSLDN3QTDE: TBCDField;
    SQLProdutoFilho: TRxQuery;
    DSSQLProduto: TDataSource;
    SQLProduto: TRxQuery;
    SQLConfigCrediarioCFCRINRODIACARTA4A: TIntegerField;
    SQLConfigCrediarioCFCRN2PERCTAXACOBR: TBCDField;
    SQLEmpresa: TRxQuery;
    SQLConfigGeralCFGEA255PATHREPORT: TStringField;
    SQLPreco: TRxQuery;
    SQLProdutoOrdemPesquisa: TRxQuery;
    SQLProdutoOrdemPesquisaPDOPIORDEM: TIntegerField;
    SQLProdutoOrdemPesquisaPDOPA30CAMPO: TStringField;
    SQLTerminalAtivo: TRxQuery;
    SQLTerminalAtivoTERMICOD: TIntegerField;
    SQLTerminalAtivoTERMA60DESCR: TStringField;
    SQLTerminalAtivoTERMCINFDADOSCLICP: TStringField;
    SQLTerminalAtivoTERMA60IMPAUTORIZCOM: TStringField;
    SQLTerminalAtivoTERMA60IMPFICHACLI: TStringField;
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
    SQLConfigVendaCFVETOBSPADRAONF: TStringField;
    SQLConfigVendaCFVETOBSPADRAOPED: TStringField;
    SQLConfigVendaOPESICODIMPCUPOM: TIntegerField;
    SQLConfigVendaCFVEN2PERCCOFINS: TBCDField;
    SQLConfigVendaCFVEN2PERCENCARG: TBCDField;
    SQLConfigVendaCFVEN2PERCPIS: TBCDField;
    SQLConfigVendaOPESICODVENDCONSIG: TIntegerField;
    SQLConfigVendaCFVECQUITAPARCONV: TStringField;
    SQLConfigCrediarioCFCRCBLOQVENDCLI1AV: TStringField;
    SQLConfigCrediarioCFCRCBLOQVENDCLI2AV: TStringField;
    SQLConfigCrediarioCFCRCBLOQVENDCLI3AV: TStringField;
    SQLConfigCrediarioCFCRA254PATHMALADIRETA: TStringField;
    SQLParcelas: TRxQuery;
    SQLCliente: TRxQuery;
    SQLConfigGeralCFGECUSASALDODIARIO: TStringField;
    SQLConfigGeralCFGECATUSALDODIA: TStringField;
    SQLConfigVendaCFVECFARREDVLRVEND: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    GrupoAtual, SubGrupoAtual : Integer;
  end;

var
  DM: TDM;

implementation

{$R *.DFM}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  inherited;
  SQLUsuarios.Open ;
  SQLConfigCrediario.Open ;
  SQLConfigGeral.Open ;
  EmpresaCorrente := SQLConfigGeralCFGEIEMPPADRAO.Value ;
end;

end.
