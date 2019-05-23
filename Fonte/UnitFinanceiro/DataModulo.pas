unit DataModulo;

interface

uses
  VarSYS, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DataModuloTemplate, Db, DBTables, RxQuery, DBLists, IdComponent,
  IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP, IdBaseComponent,
  IdMessage, DBXpress, SqlExpr, MidasLib, ZConnection, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ACBrNFeDANFEClass, ACBrNFeDANFeESCPOS,
  ACBrDFe, ACBrNFe, ACBrBase, ACBrPosPrinter;

type
  TDM = class(TDMTemplate)
    SQLUsuario: TQuery;
    SQLUsuarioUSUAICOD: TIntegerField;
    SQLUsuarioUSUAA60LOGIN: TStringField;
    SQLUsuarioUSUAA5SENHA: TStringField;
    SQLConfigCrediario: TQuery;
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
    SQLConfigGeral: TQuery;
    SQLConfigGeralCFGEIEMPPADRAO: TIntegerField;
    SQLConfigGeralEmpresaPadraoCalcField: TStringField;
    SQLEmpresa: TRxQuery;
    SQLConfigVenda: TRxQuery;
    SQLConfigVendaOPESICODCANCTROCA: TIntegerField;
    SQLConfigVendaOPESICODTROCA: TIntegerField;
    SQLConfigVendaOPESICODCUPOM: TIntegerField;
    SQLConfigVendaOPESICODCANCCUPOM: TIntegerField;
    SQLConfigVendaOPESICODNF: TIntegerField;
    SQLConfigVendaOPESICODCANCNF: TIntegerField;
    SQLConfigVendaOPESICODRETORNO: TIntegerField;
    SQLProdutoSaldo: TRxQuery;
    SQLProdutoSaldoEMPRICOD: TIntegerField;
    SQLProdutoSaldoPRODICOD: TIntegerField;
    SQLProdutoSaldoPSLDN3QTDE: TBCDField;
    SQLProdutoFilho: TRxQuery;
    DSSQLProduto: TDataSource;
    SQLProduto: TRxQuery;
    SQLConfigConta: TRxQuery;
    SQLConfigContaCFGCINIVEL1: TBCDField;
    SQLConfigContaCFGCNIVEIS: TIntegerField;
    SQLConfigContaCFGCINIVEL2: TBCDField;
    SQLConfigContaCFGCINIVEL3: TBCDField;
    SQLConfigContaCFGCINIVEL4: TBCDField;
    SQLConfigContaCFGCINIVEL5: TBCDField;
    SQLConfigContaCFGCINIVEL6: TBCDField;
    SQLConfigContaCFGCINIVEL7: TBCDField;
    SQLConfigContaCFGCINIVEL8: TBCDField;
    SQLConfigContaCFGCINIVEL9: TBCDField;
    SQLConfigContaCFGCINIVEL10: TBCDField;
    SQLConfigContaCFGCA30MASCARA: TStringField;
    SQLConfigContaPENDENTE: TStringField;
    SQLConfigContaREGISTRO: TDateTimeField;
    DSSQLConfigConta: TDataSource;
    UpdateSQLConfigConta: TUpdateSQL;
    SQLPlanodeContas: TRxQuery;
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
    DSSQLPlanodeContas: TDataSource;
    UpDateSQLPlanodeContas: TUpdateSQL;
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
    SQLConfigGeralCFGEA255PATHREPORT: TStringField;
    SQLConfigCrediarioCFCRINRODIACARTA4A: TIntegerField;
    SQLConfigCrediarioCFCRN2PERCTAXACOBR: TBCDField;
    SQLPreco: TRxQuery;
    SQLProdutoOrdemPesquisa: TRxQuery;
    SQLProdutoOrdemPesquisaPDOPIORDEM: TIntegerField;
    SQLProdutoOrdemPesquisaPDOPA30CAMPO: TStringField;
    SQLConfigVendaCFVECFAZVENDCONSIG: TStringField;
    SQLTerminalAtivo: TRxQuery;
    SQLTerminalAtivoTERMICOD: TIntegerField;
    SQLTerminalAtivoTERMA60DESCR: TStringField;
    SQLTerminalAtivoTERMCINFDADOSCLICP: TStringField;
    SQLTerminalAtivoTERMA60IMPAUTORIZCOM: TStringField;
    SQLTerminalAtivoTERMA60IMPFICHACLI: TStringField;
    SQLConfigVendaCFVECTIPOLIMCRED: TStringField;
    SQLConfigVendaCFVEN3MAXLIMCRED: TBCDField;
    SQLConfigVendaCFVEN2PERCLIMCRED: TBCDField;
    SQLConfigGeralCFGECATUSALDODIA: TStringField;
    SQLConfigVendaCFVECSUBDEBNOLIMITE: TStringField;
    SQLConfigVendaCFVEINROCASASDEC: TIntegerField;
    SQLConfigVendaCFVECFARREDVLRVEND: TStringField;
    SQLConfigCrediarioCFCRA254PATHMALADIRETA: TStringField;
    SQLConfigVendaCFVECTESTALIMTCRED: TStringField;
    SQLParcelas: TRxQuery;
    SQLCliente: TRxQuery;
    SQLConfigFinanceiro: TRxQuery;
    SQLConfigFinanceiroOPTEICODPAGAR: TIntegerField;
    SQLConfigFinanceiroOPBCICODPAGAR: TIntegerField;
    SQLConfigFinanceiroNUMEICODPAGAR: TIntegerField;
    SQLConfigFinanceiroCTCRICODPAGAR: TIntegerField;
    SQLConfigFinanceiroALINICODPAGAR: TIntegerField;
    SQLConfigFinanceiroCGFIA254HISTPAGAR: TStringField;
    SQLConfigFinanceiroOPTEICODRECEBER: TIntegerField;
    SQLConfigFinanceiroOPBCICODRECEBER: TIntegerField;
    SQLConfigFinanceiroNUMEICODRECEBER: TIntegerField;
    SQLConfigFinanceiroCGFIA254HISTRECEBE: TStringField;
    SQLConfigFinanceiroALINICODRECEBER: TIntegerField;
    SQLConfigFinanceiroPORTICODRECEBER: TIntegerField;
    SQLConfigFinanceiroCGFIUSATESOURARIA: TStringField;
    SQLConfigGeralCFGEA255EXEDUPLICATA: TStringField;
    SQLTeleEntrega: TRxQuery;
    SQLTeleEntregaTELEA13ID: TStringField;
    SQLTeleEntregaEMPRICOD: TIntegerField;
    SQLTeleEntregaTERMICOD: TIntegerField;
    SQLTeleEntregaTELEICOD: TIntegerField;
    SQLTeleEntregaCUPOA13ID: TStringField;
    SQLTeleEntregaNOFIA13ID: TStringField;
    SQLTeleEntregaPDVDA13ID: TStringField;
    SQLTeleEntregaTELEDENTRPREV: TDateTimeField;
    SQLTeleEntregaTELEDENTRPREV1: TDateTimeField;
    SQLTeleEntregaTELEDENTRPREV2: TDateTimeField;
    SQLTeleEntregaTELEDENTRREAL: TDateTimeField;
    SQLTeleEntregaTELEA60SOLICITANTE: TStringField;
    SQLTeleEntregaTELEA60ENTRPARANOME: TStringField;
    SQLTeleEntregaTELEA60ENTRPARAEND: TStringField;
    SQLTeleEntregaTELEA60ENTRPARABAI: TStringField;
    SQLTeleEntregaTELEA60ENTRPARACID: TStringField;
    SQLTeleEntregaTELEA2ENTRPARAUF: TStringField;
    SQLTeleEntregaTELEA15ENTRPARAFONE: TStringField;
    SQLTeleEntregaTELEA60RECPORNOME: TStringField;
    SQLTeleEntregaTELEADREC: TDateTimeField;
    SQLTeleEntregaTELEA1016MENSG: TMemoField;
    SQLTeleEntregaPENDENTE: TStringField;
    SQLTeleEntregaREGISTRO: TDateTimeField;
    UpdateSQLTeleEntrega: TUpdateSQL;
    SQLUsuarioUSUACUSERMASTER: TStringField;
    SQLConfigVendaCFVECRENDCONJNOLIM: TStringField;
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
    SQLTerminalAtivoTERMA60IMPPEDIDO: TStringField;
    TblTicketPreVendaCab: TTable;
    TblTicketPreVendaCabTicketNumero: TStringField;
    TblTicketPreVendaCabVendedor: TStringField;
    TblTicketPreVendaCabPlano: TStringField;
    TblTicketPreVendaCabCliente: TStringField;
    TblTicketPreVendaCabFoneCliente: TStringField;
    TblTicketPreVendaCabTotalNominal: TFloatField;
    TblTicketPreVendaCabTaxaCrediario: TFloatField;
    TblTicketPreVendaCabAcrescimo: TFloatField;
    TblTicketPreVendaCabDesconto: TFloatField;
    TblTicketPreVendaCabTotalGeral: TFloatField;
    TblTicketPreVendaCabNomeEmpresa: TStringField;
    TblTicketPreVendaCabFoneEmpresa: TStringField;
    TblTicketPreVendaCabNroCreditCard: TStringField;
    TblTicketPreVendaCabNumerarioPagto: TStringField;
    TblTicketPreVendaCabMensagem: TStringField;
    TblTicketPreVendaCabDataEntrega: TStringField;
    TblTicketPreVendaCabTipoVenda: TStringField;
    TblTicketPreVendaCabPessoaRecebeNome: TStringField;
    TblTicketPreVendaCabPessoaRecebeEnder: TStringField;
    TblTicketPreVendaCabPessoaRecebeBai: TStringField;
    TblTicketPreVendaCabPessoaRecebeCid: TStringField;
    TblTicketPreVendaCabPessoaRecebeUF: TStringField;
    TblTicketPreVendaCabPessoaRecebeFone: TStringField;
    TblTicketPreVendaCabMensagem2: TMemoField;
    TblTicketPreVendaItem: TTable;
    TblTicketPreVendaItemCodigo: TIntegerField;
    TblTicketPreVendaItemDescricao: TStringField;
    TblTicketPreVendaItemQuantidade: TFloatField;
    TblTicketPreVendaItemValorUnitario: TFloatField;
    TblTicketPreVendaItemValorTotal: TFloatField;
    TblTicketPreVendaItemDesconto: TFloatField;
    TblTicketPreVendaItemMarca: TStringField;
    TblTicketPreVendaItemReferencia: TStringField;
    SQLEmpresaEMPRA15CODEAN: TStringField;
    SQLEmpresaEMPRBLOGOTIPO: TBlobField;
    SQLConfigVendaCFVECINFDADOVENDA: TStringField;
    TblTicketPreVendaCabDataEmissao: TDateField;
    SQLConfigFinanceiroCGFICINFPLCTBXSIMP: TStringField;
    SQLTeleEntregaTPVDICOD: TIntegerField;
    SQLTeleEntregaFUNCA13ID: TStringField;
    SQLTeleEntregaTELEA30OCASIAO: TStringField;
    SQLConfigTransportadora: TRxQuery;
    SQLConfigTransportadoraCFTROPFUICODCREDITO: TIntegerField;
    SQLConfigTransportadoraOPFUA60DESCRCREDITO: TStringField;
    SQLConfigTransportadoraCFTROPFUICODDEBITO: TIntegerField;
    SQLConfigTransportadoraOPFUA60DESCRDEBITO: TStringField;
    SQLConfigFinanceiroOPBCICODESTORNOCRD: TIntegerField;
    SQLConfigFinanceiroOPTEICODESTORNOCRD: TIntegerField;
    SQLConfigFinanceiroOPBCICODESTORNODEB: TIntegerField;
    SQLConfigFinanceiroOPTEICODESTORNODEB: TIntegerField;
    SQLConfigGeralCFGECBLOQ: TStringField;
    SQLUsuarioUSUACVRESFINFORN: TStringField;
    SQLTerminalAtivoEMPRICOD: TIntegerField;
    SQLConfigCompra: TRxQuery;
    SQLConfigCompraCFCOITIPMOVCANCNFE: TIntegerField;
    SQLConfigCompraCFCOCALTPRCPRODENT: TStringField;
    SQLConfigCompraCFCOCTESTAITENSNFE: TStringField;
    SQLConfigCompraCFCOCTOTPRCVENPROD: TStringField;
    SQLConfigCompraCFCOCNUMSERPRODENT: TStringField;
    SQLConfigCompraCFCOCIMPLEGORDCOMP: TStringField;
    SQLConfigCompraCFCOITIPMOVNFE: TIntegerField;
    SQLConfigCompraCFCOCTESTPRODFORN: TStringField;
    SQLConfigCompraPORTICOD: TIntegerField;
    SQLConfigCompraTPDCICOD: TIntegerField;
    SQLConfigCompraCFCOCINFDADOSFRETE: TStringField;
    SQLConfigCompraCFCOCALTPERCIPI: TStringField;
    SQLConfigCompraCFCOCALTVLRCOMPRA: TStringField;
    SQLConfigCompraCFCOCALTVLRCUSTO: TStringField;
    SQLConfigCompraCFCOCEXCLUIPEDENT: TStringField;
    SQLConfigCompraCFCOCVERIFICAVLRMENOR: TStringField;
    SQLConfigCompraCFCOCPREVREALNFCOMPRAFIN: TStringField;
    SQLConfigCrediarioCFCRA255PATHCARTPE: TStringField;
    SQLConfigGeralCFGEDBLOQ: TDateTimeField;
    SQLTerminalAtivoTERMA255MSGCARNE: TStringField;
    SQLUsuarioUSUACRESUMOFIN: TStringField;
    SQLPopUP: TQuery;
    SQLPopUPPOPTEMPO: TStringField;
    SQLPopUPCFGCCEXIBIRPOPTARE: TStringField;
    SQLConfigGeralCFGECTESTEANPROD: TStringField;
    SQLConfigGeralCFGECTESTREFPROD: TStringField;
    SQLConfigGeralCFGECVALCODANTPRO: TStringField;
    SQLConfigGeralCFGECALCPRECOAUTOM: TStringField;
    SQLConfigGeralCFGECTIPOMARGLUCRO: TStringField;
    SQLConfigInventario: TRxQuery;
    SQLConfigInventarioOPESICODENTRADA: TIntegerField;
    SQLConfigInventarioOPESICODSAIDA: TIntegerField;
    SQLTerminalAtivoTERMCMOVESTOQUE: TStringField;
    SQLTerminalAtivoTERMINRODECQUANT: TIntegerField;
    SQLUsuarioUSUACPERMITEFIN: TStringField;
    TblTicketPreVendaCabUsuarioVendaSTR: TStringField;
    TblTicketPreVendaCabClienteDependente: TIntegerField;
    TblTicketPreVendaCabTroco: TFloatField;
    TblTicketPreVendaCabDisplayNumero: TIntegerField;
    TblTicketPreVendaCabLevarCasa: TStringField;
    TblTicketPreVendaCabNomeClienteVenda: TStringField;
    TblTicketPreVendaCabDocumentoClienteVenda: TStringField;
    TblTicketPreVendaCabEnderecoClienteVenda: TStringField;
    TblTicketPreVendaCabCidadeClienteVenda: TStringField;
    TblTicketPreVendaCabFoneClienteVenda: TStringField;
    TblTicketPreVendaCabOBSImpressaoCupom: TStringField;
    TblTicketPreVendaCabPlacaVeiculo: TStringField;
    TblTicketPreVendaItemComplemento: TStringField;
    TblTicketPreVendaItemImpCozinha: TStringField;
    TblTicketPreVendaItemImpVale: TStringField;
    TblTicketPreVendaItemTroca: TStringField;
    TblTicketPreVendaFin: TTable;
    TblTicketPreVendaFinPedICod: TStringField;
    TblTicketPreVendaFinParcela: TStringField;
    TblTicketPreVendaFinVencimento: TDateField;
    TblTicketPreVendaFinValor: TFloatField;
    TblTicketPreVendaFinPortador: TStringField;
    TblTicketPreVendaFinNumerario: TStringField;
    SQLTerminalAtivoTERMCIMPPREVENDA: TStringField;
    SQLEmpresaEMPRA3CRT: TStringField;
    SQLEmpresaEMPRIENDNRO: TIntegerField;
    TblTicketPreVendaCabMesaCodigo: TIntegerField;
    TblTicketPreVendaCabContaCodigo: TIntegerField;
    SQLTerminalAtivoTERMA254PATHTERM: TStringField;
    SQLConfigGeralCFGECFATURAMENSAL: TStringField;
    SQLConfigGeralCFGEDFATURAMENSAL: TDateTimeField;
    SQLEmpresaEMPRA100PROXYHOST: TStringField;
    SQLEmpresaEMPRIPROXYPORTA: TIntegerField;
    SQLEmpresaEMPRA50PROXYUSUARIO: TStringField;
    SQLEmpresaEMPRA50PROXYSENHA: TStringField;
    SQLEmpresaEMPRA50EMAILHOST: TStringField;
    SQLEmpresaEMPRIEMAILPORTA: TIntegerField;
    SQLEmpresaEMPRA50EMAILSENHA: TStringField;
    SQLEmpresaEMPRA1SSL: TStringField;
    SQLEmpresaEMPRA60EMAILCOPIA: TStringField;
    SQLEmpresaEMPRA1TSL: TStringField;
    SQLEmpresaEMPRA75EMAILUSUARIO: TStringField;
    ACBrPosPrinter: TACBrPosPrinter;
    ACBrNFe: TACBrNFe;
    ACBrNFeDANFeESCPOS: TACBrNFeDANFeESCPOS;
    procedure DataModuleCreate(Sender: TObject);
    procedure SQLConfigContaBeforeEdit(DataSet: TDataSet);
    procedure SQLConfigContaBeforePost(DataSet: TDataSet);
    procedure SQLConfigContaNewRecord(DataSet: TDataSet);
    procedure SQLPlanodeContasBeforeInsert(DataSet: TDataSet);
    procedure SQLPlanodeContasBeforePost(DataSet: TDataSet);
    procedure SQLPlanodeContasNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    function getHostName: String;
  public
    { Public declarations }
    TemClienteDiferente : Boolean;
    GrupoAtual, SubGrupoAtual : Integer;
    CodTarefa, ID_NotaFiscal_Boleto : String;
  end;

var
  DM: TDM;

implementation

uses TelaSplash;

{$R *.DFM}

procedure TDM.DataModuleCreate(Sender: TObject);
var
  DiaSemana : String;
begin
  inherited;
  FormSplash.lbDados.Caption := 'Abrindo Tabela de Parametros...'; FormSplash.lbDados.Update;
  SQLConfigCrediario.Open ;
  SQLConfigGeral.Open ;
  SQLConfigCompra.Open ;
  SQLConta.Open ;
  SQLConfigConta.Open ;
  SQLConfigFinanceiro.Open;
  SQLConfigVenda.Open;
  SQLPopUP.Open;
  SQLPlanodeContas.Open ;
  FormSplash.lbDados.Caption := 'Abrindo Tabela de Usuarios...'; FormSplash.lbDados.Update;
  SQLUsuario.Open ;

  FormSplash.lbDados.Caption := 'Licença de uso Válida até => '+FormatDateTime('dd/mm/yyyy',SQLConfigGeralCFGEDBLOQ.Value) ; FormSplash.lbDados.Update;
  Sleep(1000);
  FormSplash.close;
end;

function TDM.getHostName: String;
var
  qry: TQuery;
begin
  qry := TQuery.Create(Application);
  try
    qry.DatabaseName := 'DB';
    qry.SQL.Add('Select @@servername as HOST');
    qry.Open;
    result := qry.Fields[0].AsString;
  finally
    qry.Free;
  end;
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

procedure TDM.SQLConfigContaNewRecord(DataSet: TDataSet);
var
  I:Integer;
begin
  inherited;
  DataSet.FieldByName('CFGCNIVEIS').Value:=1;
  for I:= 1 to 10 do
    DataSet.FieldByName('CFGCINIVEL'+IntToStr(I)).Value:=1;
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
  DataSet.FindField('PENDENTE').AsString   := 'S' ;
end;

procedure TDM.SQLPlanodeContasNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('PLCTCANALSINT').Value  := 'S';
  DataSet.FieldByName('PLCTCTIPOSALDO').Value := 'A';
end;

end.
