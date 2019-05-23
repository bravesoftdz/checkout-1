unit DataModulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataModuloTemplate, DB, DBTables, DBLists, RxQuery, Psock,
  NMsmtp;

type
  TDM = class(TDMTemplate)
    SQLEmpresa: TRxQuery;
    SQLConfigVenda: TRxQuery;
    SQLConfigVendaCFVEN3MAXLIMCRED: TBCDField;
    SQLConfigVendaCFVEN2PERCLIMCRED: TBCDField;
    SQLConfigVendaCFVECTIPOLIMCRED: TStringField;
    SQLConfigVendaCFVECRENDCONJNOLIM: TStringField;
    SQLConfigVendaCFVECARREDPARCELA: TStringField;
    SQLConfigVendaOPESICODCUPOM: TIntegerField;
    SQLConfigVendaOPESICODCANCCUPOM: TIntegerField;
    SQLConfigVendaOPESICODNF: TIntegerField;
    SQLConfigVendaOPESICODCANCNF: TIntegerField;
    SQLConfigVendaOPESICODRETORNO: TIntegerField;
    SQLConfigVendaOPESICODCANCTROCA: TIntegerField;
    SQLConfigVendaOPESICODTROCA: TIntegerField;
    SQLConfigVendaCFVECPARC0ENTRBAIX: TStringField;
    SQLConfigVendaTPRCICOD: TIntegerField;
    SQLConfigVendaCFVECFAZVENDCONSIG: TStringField;
    SQLConfigVendaOPESICODDEVOL: TIntegerField;
    SQLConfigVendaCFVECTESTALIMTCRED: TStringField;
    SQLConfigVendaCFVECSUBDEBNOLIMITE: TStringField;
    SQLConfigVendaCFVEINROCASASDEC: TIntegerField;
    SQLConfigVendaCFVEN2PERCCOFINS: TBCDField;
    SQLConfigVendaCFVEN2PERCENCARG: TBCDField;
    SQLConfigVendaCFVEN2PERCPIS: TBCDField;
    SQLConfigVendaCFVECQUITAPARCONV: TStringField;
    SQLConfigVendaCFVECFARREDVLRVEND: TStringField;
    SQLTerminalAtivo: TRxQuery;
    SQLTerminalAtivoTERMICOD: TIntegerField;
    SQLTerminalAtivoTERMA60DESCR: TStringField;
    SQLTerminalAtivoTERMCINFDADOSCLICP: TStringField;
    SQLTerminalAtivoTERMA60IMPAUTORIZCOM: TStringField;
    SQLTerminalAtivoTERMA60IMPFICHACLI: TStringField;
    SQLTerminalAtivoECFA13ID: TStringField;
    SQLTerminalAtivoTERMCSQLORDENADO: TStringField;
    SQLTerminalAtivoEMPRICOD: TIntegerField;
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
    SQLUsuarios: TRxQuery;
    SQLUsuariosUSUAICOD: TIntegerField;
    SQLUsuariosUSUAA60LOGIN: TStringField;
    SQLUsuariosUSUAA5SENHA: TStringField;
    SQLUsuariosPENDENTE: TStringField;
    SQLUsuariosREGISTRO: TDateTimeField;
    SQLPopUP: TQuery;
    SQLPopUPEXIBIRPOP: TStringField;
    SQLPopUPPOPTEMPO: TStringField;
    SQLPopUPCFGCCEXIBIRPOPTARE: TStringField;
    SQLClasseUsuario: TRxQuery;
    SQLClasseUsuarioCLASSICOD: TIntegerField;
    SQLClasseUsuarioCLASSA60DESCRICAO: TStringField;
    SQLClasseUsuarioPENDENTE: TStringField;
    SQLClasseUsuarioREGISTRO: TDateTimeField;
    EnviarEmail: TNMSMTP;
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
    procedure EnviarEmailFailure(Sender: TObject);
    procedure EnviarEmailSuccess(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    CodAtendimento, CodCliente, CodTarefa, PopUp, PopFiltro, AvisoTarefa, GridTarefa,
    GridAtendimento, CodClasse, CodUsuario, Associar, TelaVizualizacao,
    TipoHistorico, ParametroExterno :String;
    HistoricoHorario : Boolean;

    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses FormResources, UnitLibrary;

{$R *.dfm}


procedure TDM.EnviarEmailFailure(Sender: TObject);
begin
  inherited;
    Informa('houve um erro no envio do e-mail.');
end;

procedure TDM.EnviarEmailSuccess(Sender: TObject);
begin
  inherited;
  Informa('Email enviado');
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  inherited;
  if not SQLConfigGeral.Active then SQLConfigGeral.Active := True;
end;

end.
