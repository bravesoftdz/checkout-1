unit DataModulo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  VarSYS, DataModuloTemplate, Db, DBTables, RxQuery, DBLists, IdComponent,
  IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP, IdBaseComponent,
  IdMessage, DBXpress, ZConnection, SqlExpr, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection;

type
  TDM = class(TDMTemplate)
    SQLConfigGeral: TQuery;
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
    SQLUsuarios: TQuery;
    SQLUsuariosUSUAICOD: TIntegerField;
    SQLUsuariosUSUAA60LOGIN: TStringField;
    SQLUsuariosUSUAA5SENHA: TStringField;
    SQLUsuariosPENDENTE: TStringField;
    SQLUsuariosREGISTRO: TDateTimeField;
    SQLConfigGeralEmpresaPadraoCalcField: TStringField;
    SQLEmpresa: TRxQuery;
    SQLConfigVenda: TQuery;
    SQLProdutoSaldo: TRxQuery;
    SQLProdutoSaldoEMPRICOD: TIntegerField;
    SQLProdutoSaldoPRODICOD: TIntegerField;
    SQLProdutoSaldoPSLDN3QTDE: TFloatField;
    SQLProdutoSaldoPSLDN3QTDMIN: TFloatField;
    SQLProdutoSaldoPSLDN3QTDMAX: TFloatField;
    SQLProdutoFilho: TRxQuery;
    DSSQLProduto: TDataSource;
    SQLProduto: TRxQuery;
    SQLConfigConta: TRxQuery;
    SQLConfigContaCFGCINIVEL1: TFloatField;
    SQLConfigContaCFGCNIVEIS: TIntegerField;
    SQLConfigContaCFGCINIVEL2: TFloatField;
    SQLConfigContaCFGCINIVEL3: TFloatField;
    SQLConfigContaCFGCINIVEL4: TFloatField;
    SQLConfigContaCFGCINIVEL5: TFloatField;
    SQLConfigContaCFGCINIVEL6: TFloatField;
    SQLConfigContaCFGCINIVEL7: TFloatField;
    SQLConfigContaCFGCINIVEL8: TFloatField;
    SQLConfigContaCFGCINIVEL9: TFloatField;
    SQLConfigContaCFGCINIVEL10: TFloatField;
    SQLConfigContaCFGCA30MASCARA: TStringField;
    SQLConfigContaPENDENTE: TStringField;
    SQLConfigContaREGISTRO: TDateTimeField;
    DSSQLConfigConta: TDataSource;
    UpdateSQLConfigConta: TUpdateSQL;
    SQLPlanodeContas: TRxQuery;
    DSSQLPlanodeContas: TDataSource;
    UpDateSQLPlanodeContas: TUpdateSQL;
    SQLPlanodeContasPLCTA15COD: TStringField;
    SQLPlanodeContasPLCTICODREDUZ: TIntegerField;
    SQLPlanodeContasPLCTINIVEL: TIntegerField;
    SQLPlanodeContasPLCTA15CODPAI: TStringField;
    SQLPlanodeContasPLCTA30CODEDIT: TStringField;
    SQLPlanodeContasPLCTA60DESCR: TStringField;
    SQLPlanodeContasPLCTCANALSINT: TStringField;
    SQLPlanodeContasPLCTCTIPOSALDO: TStringField;
    SQLPlanodeContasPENDENTE: TStringField;
    SQLPlanodeContasREGISTRO: TDateTimeField;
    SQLConta: TRxQuery;
    SQLContaPLCTA15COD: TStringField;
    SQLContaPLCTICODREDUZ: TIntegerField;
    SQLContaPLCTINIVEL: TIntegerField;
    SQLContaPLCTA15CODPAI: TStringField;
    SQLContaPLCTA30CODEDIT: TStringField;
    SQLContaPLCTA60DESCR: TStringField;
    SQLContaPLCTCANALSINT: TStringField;
    SQLContaPLCTCTIPOSALDO: TStringField;
    SQLContaPENDENTE: TStringField;
    SQLContaREGISTRO: TDateTimeField;
    SQLPreco: TRxQuery;
    SQLProdutoOrdemPesquisa: TRxQuery;
    SQLProdutoOrdemPesquisaPDOPIORDEM: TIntegerField;
    SQLProdutoOrdemPesquisaPDOPA30CAMPO: TStringField;
    SQLConfigVendaCFVEN3MAXLIMCRED: TFloatField;
    SQLConfigVendaCFVEN2PERCLIMCRED: TFloatField;
    SQLConfigVendaCFVECTIPOLIMCRED: TStringField;
    SQLConfigVendaCFVECARREDPARCELA: TStringField;
    SQLConfigVendaCFVECTIPOIMPPED: TStringField;
    SQLConfigVendaCFVECDADOSCHQPDV: TStringField;
    SQLConfigVendaCFVECUSADEBCREDCLI: TStringField;
    SQLConfigVendaCGVECTESTAITENSNF: TStringField;
    SQLConfigVendaCFVEN3ALIQISSQN: TFloatField;
    SQLConfigVendaCFVECIMPLEGPEDVENF: TStringField;
    SQLConfigVendaCFVEN3PERCICMFRETE: TFloatField;
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
    SQLTerminalAtivo: TRxQuery;
    SQLTerminalAtivoTERMICOD: TIntegerField;
    SQLTerminalAtivoTERMA60DESCR: TStringField;
    SQLTerminalAtivoTERMCINFDADOSCLICP: TStringField;
    SQLTerminalAtivoTERMA60IMPAUTORIZCOM: TStringField;
    SQLTerminalAtivoTERMA60IMPFICHACLI: TStringField;
    SQLTerminalAtivoECFA13ID: TStringField;
    SQLTerminalAtivoTERMCSQLORDENADO: TStringField;
    SQLConfigCrediario: TRxQuery;
    SQLConfigCrediarioCFCRN2PERCMULATRAS: TFloatField;
    SQLConfigCrediarioCFCRN2PERCJURATRAS: TFloatField;
    SQLConfigCrediarioCFCRINRODIASTOLJUR: TIntegerField;
    SQLConfigCrediarioCFCRINRODIASTOLMUL: TIntegerField;
    SQLConfigCrediarioCFCRN2PERCTAXACOBR: TFloatField;
    SQLConfigCrediarioCFCRN2PERCADIANT: TFloatField;
    SQLConfigCrediarioCFCRINRODIASADIANT: TIntegerField;
    SQLConfigCrediarioCFCRINRODIACARTA1A: TIntegerField;
    SQLConfigCrediarioCFCRINRODIACARTA2A: TIntegerField;
    SQLConfigCrediarioCFCRINRODIACARTA3A: TIntegerField;
    SQLConfigCrediarioCFCRINRODIACARTA4A: TIntegerField;
    SQLConfigCrediarioCFCRA255PATHCART1A: TStringField;
    SQLConfigCrediarioCFCRA255PATHCART2A: TStringField;
    SQLConfigCrediarioCFCRA255PATHCART3A: TStringField;
    SQLConfigCrediarioCFCRCCONSMOTBLOQ: TStringField;
    SQLConfigCrediarioCFCRCCONSCARTAVISO: TStringField;
    SQLConfigCrediarioCFCRA255PATHRELSPC: TStringField;
    SQLConfigCrediarioCFCRA255PATHAUTDEP: TStringField;
    SQLConfigCrediarioCFCRCBLOQVENDCLI1AV: TStringField;
    SQLConfigCrediarioCFCRCBLOQVENDCLI2AV: TStringField;
    SQLConfigCrediarioCFCRCBLOQVENDCLI3AV: TStringField;
    SQLConfigCrediarioCFCRA254PATHMALADIRETA: TStringField;
    SQLConfigGeralCFGECUSASALDODIARIO: TStringField;
    SQLConfigGeralCFGECTIPOMARGLUCRO: TStringField;
    SQLConfigVendaCFVECFARREDVLRVEND: TStringField;
    SQLConfigVendaCFVEINROCASASDEC: TIntegerField;
    SQLConfigVendaCFVECUSALIBERCRED: TStringField;
    SQLConfigGeralCFGEA255PATHREPORT: TStringField;
    SQLConfigGeralCFGECTESTEANPROD: TStringField;
    SQLConfigGeralCFGECTESTREFPROD: TStringField;
    SQLConfigGeralCFGEA255EXEDUPLICATA: TStringField;
    SQLConfigGeralCFGECESTOQUEPORLOTE: TStringField;
    SQLConfigGeralCFGECALCPRECOAUTOM: TStringField;
    SQLConfigGeralCFGECUSAMARGLIQ: TStringField;
    SQLConfigTransportadora: TRxQuery;
    SQLConfigTransportadoraCFTROPFUICODCREDITO: TIntegerField;
    SQLConfigTransportadoraOPFUA60DESCRCREDITO: TStringField;
    SQLConfigTransportadoraCFTROPFUICODDEBITO: TIntegerField;
    SQLConfigTransportadoraOPFUA60DESCRDEBITO: TStringField;
    DsSQLConfigTransportadora: TDataSource;
    QueryOperacaoCredito: TQuery;
    QueryOperacaoDebito: TQuery;
    SQLUsuariosUSUACVERDADCOMPRCLI: TStringField;
    SQLUsuariosUSUACDESBLOQCLI: TStringField;
    SQLUsuariosUSUAN2PERCDESC: TFloatField;
    SQLUsuariosUSUACVENDCLIBLOQ: TStringField;
    SQLUsuariosUSUACCANCVENDA: TStringField;
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
    SQLTerminalAtivoTERMCIMPRDADINTCUP: TStringField;
    SQLConfigVendaCFVECFRETEPADRAO: TStringField;
    SQLUsuariosUSUACBLOQCTRLG: TStringField;
    SQLTerminalAtivoTERMA60IMPNF: TStringField;
    SQLConfigGeralOPESICODTRANSFENTR: TIntegerField;
    SQLConfigGeralOPESICODTRANSFSAID: TIntegerField;
    SQLConfigGeralCFGECBLOQ: TStringField;
    SQLUsuariosUSUACBXCPAGFIN: TStringField;
    SQLUsuariosUSUACBXCRECFIN: TStringField;
    SQLUsuariosUSUACVISULUCVEND: TStringField;
    SQLUsuariosUSUCENCERRAMVTODVS: TStringField;
    SQLUsuariosUSUACPERMITECONFIG: TStringField;
    SQLTerminalAtivoCLIEA13ID: TStringField;
    SQLTerminalAtivoTERMCMOVESTOQUE: TStringField;
    SQLConfigGeralCFGEDBLOQ: TDateTimeField;
    SQLConfigVendaCFVENIMPFINANC: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure SQLConfigContaBeforeEdit(DataSet: TDataSet);
    procedure SQLConfigContaNewRecord(DataSet: TDataSet);
    procedure SQLPlanodeContasNewRecord(DataSet: TDataSet);
    procedure SQLPlanodeContasBeforeInsert(DataSet: TDataSet);
    procedure SQLPlanodeContasBeforePost(DataSet: TDataSet);
    procedure SQLConfigContaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    GrupoAtual, SubGrupoAtual : Integer;
    TipoHistoricoPadrao : String;
  end;

var
  DM: TDM;

implementation

uses TelaSplash;

{$R *.DFM}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  inherited;
  FormSplash.lbDados.Caption := 'Abrindo Tabela de Filiais...'; FormSplash.lbDados.Update;
  SQLConfigGeral.Open;
  SQLConfigVenda.Open;
  SQLConfigCrediario.Open;
  FormSplash.lbDados.Caption := 'Abrindo Tabela de Usuarios...'; FormSplash.lbDados.Update;
  SQLUsuarios.Open;
  FormSplash.close;
end;

procedure TDM.SQLConfigContaBeforeEdit(DataSet: TDataSet);
Var
  Existe:Boolean;
begin
  SQLTemplate.SQL.Text:='Select Count(*) as CONTAS From PLANODECONTAS';
  SQLTemplate.Open;
  Existe := SQLTemplate.FindField('CONTAS').asInteger > 0;
  SQLTemplate.Close;
  If Existe Then
    Begin
      ShowMessage('A estrutura do Plano de Contas não pode ser alterada se já existirem Contas!');
      Abort;
    End;
  inherited;
end;

procedure TDM.SQLConfigContaNewRecord(DataSet: TDataSet);
var
  I:Integer;
begin
  inherited;
  DataSet.FieldByName('CFGCNIVEIS').Value:=1;
  for I:= 1 to 10 do
    DataSet.FieldByName('CFGCINIVEL'+IntToStr(I)).Value:=1;
end;

procedure TDM.SQLPlanodeContasNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('PLCTCANALSINT').Value  := 'S';
  DataSet.FieldByName('PLCTCTIPOSALDO').Value := 'A';
end;

procedure TDM.SQLPlanodeContasBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  If DM.SQLPlanodeContas.Active Then DM.SQLPlanodeContas.Close;
  DM.SQLPlanodeContas.MacroByName('MFiltro').asString:=DM.SQLPlanodeContas.Fields[0].FieldName + ' IS NULL';
  DM.SQLPlanodeContas.Open;
end;

procedure TDM.SQLPlanodeContasBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('REGISTRO').AsDateTime := Now ;
  DataSet.FindField('PENDENTE').AsString := 'S' ;
end;

procedure TDM.SQLConfigContaBeforePost(DataSet: TDataSet);
Var
  Soma,NumGraus,Teste,NivelGraus:Integer;
  Mascara:String;
begin
  inherited;
  If DataSet.State = dsInsert Then
    Begin
      Soma:=SQLConfigContaCFGCINIVEL1.asInteger+
            SQLConfigContaCFGCINIVEL2.asInteger+
            SQLConfigContaCFGCINIVEL3.asInteger+
            SQLConfigContaCFGCINIVEL4.asInteger+
            SQLConfigContaCFGCINIVEL5.asInteger+
            SQLConfigContaCFGCINIVEL6.asInteger+
            SQLConfigContaCFGCINIVEL7.asInteger+
            SQLConfigContaCFGCINIVEL8.asInteger+
            SQLConfigContaCFGCINIVEL9.asInteger+
            SQLConfigContaCFGCINIVEL10.AsInteger;
      If Soma>15 Then
        Begin
          Application.Messagebox('A soma dos Graus deve ser no máximo 15.','GVDASA Informa',MB_Ok+MB_IconInformation);
          SysUtils.Abort;
        End;
      Mascara:='';
      For NumGraus:=1 to SQLConfigContaCFGCNIVEIS.asInteger Do
        Begin
          If (NumGraus>1) Then Mascara:=Mascara+'.';
          Teste:=1;
          Teste:=SQLConfigConta.FieldByName('CFGCINIVEL'+IntToStr(NumGraus)).AsInteger;
          For NivelGraus:=1 to Teste Do
             Mascara:=Mascara+'_';
        End;
      SQLConfigContaCFGCA30MASCARA.asString:=Mascara;
    End;
  DataSet.FindField('REGISTRO').AsDateTime := Now ;
  DataSet.FindField('PENDENTE').AsString := 'S' ;
end;

end.
