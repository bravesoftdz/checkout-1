unit DataModulo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  VarSYS, DataModuloTemplate, Db, DBTables, RxQuery, DBLists, StdCtrls,
  Variants, WindowsLibrary, ComCtrls, FileCtrl, Wininet, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdFTP,
  IdAntiFreezeBase, IdAntiFreeze, IdMessageClient, IdSMTP, IdMessage,
  DBXpress, ZConnection, SqlExpr, ZAbstractRODataset, ZAbstractDataset,
  ZDataset;

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
    SQLProdutoSaldoPSLDN3QTDE: TBCDField;
    SQLProdutoSaldoPSLDN3QTDMIN: TBCDField;
    SQLProdutoSaldoPSLDN3QTDMAX: TBCDField;
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
    SQLConfigGeralCFGECUSASALDODIARIO: TStringField;
    SQLTerminalAtivoCFGIICOD: TIntegerField;
    SQLTerminalAtivoEMPRICOD: TIntegerField;
    SQLConfigVendaCFVEINROCASASDEC: TIntegerField;
    SQLConfigVendaCFVECFARREDVLRVEND: TStringField;
    QueryConfigIntegracao: TRxQuery;
    QueryConfigIntegracaoCFGIICOD: TIntegerField;
    QueryConfigIntegracaoCFGIA60DESCR: TStringField;
    QueryConfigIntegracaoCFGICTIPOCONEXAO: TStringField;
    QueryConfigIntegracaoCFGIA100USUARIO: TStringField;
    QueryConfigIntegracaoCFGIA30SENHA: TStringField;
    QueryConfigIntegracaoCFGIA100HOST: TStringField;
    QueryConfigIntegracaoCFGIA100POP3: TStringField;
    QueryConfigIntegracaoCFGIA100SMTP: TStringField;
    QueryConfigIntegracaoCFGIIPORTA: TIntegerField;
    QueryConfigIntegracaoCFGITPATHORIGEM: TMemoField;
    QueryConfigIntegracaoCFGITPATHDESTINO: TMemoField;
    QueryConfigIntegracaoCFGA60DIALNAME: TStringField;
    SQLUsuariosUSUACUSERMASTER: TStringField;
    QueryConfigIntegracaoCFGIA5PORTAFTP: TStringField;
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
    SQLEmpresaEMPRBLOGOTIPO: TBlobField;
    SQLEmpresaEMPRA15CODEAN: TStringField;
    SQLConfigGeralCFGEA255PATHREPORT: TStringField;
    SQLConfigGeralCFGECTESTEANPROD: TStringField;
    SQLConfigGeralCFGECTESTREFPROD: TStringField;
    SQLConfigGeralCFGEA255EXEDUPLICATA: TStringField;
    SQLConfigGeralCFGECESTOQUEPORLOTE: TStringField;
    SQLConfigGeralCFGECALCPRECOAUTOM: TStringField;
    SQLConfigGeralCFGECTIPOMARGLUCRO: TStringField;
    SQLConfigGeralCFGECUSAMARGLIQ: TStringField;
    SQLConfigGeralOPESICODTRANSFENTR: TIntegerField;
    SQLConfigGeralOPESICODTRANSFSAID: TIntegerField;
    SQLConfigGeralCFGECBLOQ: TStringField;
    SQLUsuariosUSUACPERMINTEG: TStringField;
    SQLConfigCrediario: TRxQuery;
    SQLConfigCrediarioCFCRN2PERCJURATRAS: TBCDField;
    SQLConfigCrediarioCFCRN2PERCMULATRAS: TBCDField;
    SQLConfigCrediarioCFCRN2PERCADIANT: TBCDField;
    SQLConfigCrediarioCFCRINRODIASADIANT: TIntegerField;
    SQLConfigCrediarioCFCRCCONSMOTBLOQ: TStringField;
    SQLConfigCrediarioCFCRCCONSCARTAVISO: TStringField;
    SQLConfigCrediarioCFCRA255PATHRELSPC: TStringField;
    SQLConfigCrediarioCFCRA255PATHAUTDEP: TStringField;
    SQLConfigCrediarioCFCRINRODIASTOLJUR: TIntegerField;
    SQLConfigCrediarioCFCRINRODIASTOLMUL: TIntegerField;
    SQLConfigCrediarioCFCRN2PERCTAXACOBR: TBCDField;
    SQLConfigCrediarioCFCRCBLOQVENDCLI1AV: TStringField;
    SQLConfigCrediarioCFCRCBLOQVENDCLI2AV: TStringField;
    SQLConfigCrediarioCFCRCBLOQVENDCLI3AV: TStringField;
    SQLConfigCrediarioCFCRA254PATHMALADIRETA: TStringField;
    SQLConfigCrediarioCFCRIPRZMINCARTAO: TStringField;
    SQLConfigCrediarioCFCRA255PATHCARTPE: TStringField;
    SQLTerminalAtivoTERMCMOVESTOQUE: TStringField;
    SQLConfigVendaOPESICODVENDCONSIG: TIntegerField;
    SQLConfigGeralCFGEDBLOQ: TDateTimeField;
    FTPIndy: TIdFTP;
    procedure DataModuleCreate(Sender: TObject);
    procedure SQLConfigContaBeforeEdit(DataSet: TDataSet);
    procedure SQLConfigContaNewRecord(DataSet: TDataSet);
    procedure SQLPlanodeContasNewRecord(DataSet: TDataSet);
    procedure SQLPlanodeContasBeforeInsert(DataSet: TDataSet);
    procedure SQLPlanodeContasBeforePost(DataSet: TDataSet);
    procedure SQLConfigContaBeforePost(DataSet: TDataSet);
    procedure SMTPSuccess(Sender: TObject);
    procedure SMTPSendStart(Sender: TObject);
    procedure SMTPStatus(Sender: TComponent; Status: String);
    procedure SMTPConnectionFailed(Sender: TObject);
    procedure POP3DecodeStart(var FileName: String);
    procedure FTPInvalidHost(var Handled: Boolean);
    procedure FTPListItem(Listing: String);
  private
    { Private declarations }
  public
    { Public declarations }
    GrupoAtual,
    SubGrupoAtual : integer;
    LabelEvent : TLabel;
    MessageIndex : Integer;
    FileListFTP : TStrings;
    procedure GetPathFiles(var FileList : TStrings; InitialDir : string);
    function ConnectDial : Boolean;
    function RetornaTipoConexao : String;
    function ConectarHostFTP(LabelInfo:TLabel) : Boolean;
    function ReceiveFile(LabelInfo : TLabel) : boolean;
    function SendFile(PathFile,EmailFrom,EmailTo : string; LabelInfo : TLabel) : boolean;
  end;

var
  DM: TDM;

implementation

uses TelaSplash;

{$R *.DFM}

function SizeArquivo(Arquivo: string): Integer;
begin
  with TFileStream.Create(Arquivo, fmOpenRead or fmShareExclusive) do
  try
    Result := Size;
  finally
    Free;
  end;
end;

procedure TDM.GetPathFiles(var FileList : TStrings; InitialDir : string);
var
  List : TFileListBox;
  Form : TForm;
  I : integer;
begin
  Application.CreateForm(TForm,Form);
  Form.Hide;
  List := TFileListBox.Create(Form);
  FileList := TStringList.Create;
  List.Parent := Form;
  List.Directory := InitialDir;
  for I := 0 to List.Count -1 do
    FileList.Add(List.Items.Strings[I]);
  List.Free;
  Form.Free;
end;

function TDM.ConnectDial : Boolean;
const
  RASBASE = 600;
  // CONSTANTES DE ERRO //
  ERROR_NO_CONNECTION      = RASBASE + 68;
  ERROR_USER_DISCONNECTION = RASBASE + 31;
var
  Return : DWORD;
  Constant : DWORD;
  W : THandle;
begin
  Constant := 0;
  W := GetCapture;

  {SE O CAMPO CFGA60DIALNAME FOR DIFERENTE DE VAZIO O SISTEMA DISPARA A DIALUP}
  if QueryConfigIntegracao.FieldByName('CFGA60DIALNAME').AsString <> '' then
    Return := InternetDial(W, PChar(QueryConfigIntegracao.FieldByName('CFGA60DIALNAME').AsString), INTERNET_DIAL_UNATTENDED,@Constant,0);

  if Return = ERROR_SUCCESS then
    Result := True
  else
    begin
      if QueryConfigIntegracao.FieldByName('CFGA60DIALNAME').AsString <> '' then
        Result := False
      else
        Result := True;
    end;
end;

function TDM.ReceiveFile(LabelInfo : TLabel) : boolean;
  function Ok(FileName : string; ListFile : TStrings) : boolean;
  var
    J : integer;
  begin
    Result := False;
    if UpperCase(ExtractFileExt(FileName)) = '.LOG' then
      for J := 0 to ListFile.Count -1 do
        if ((Copy(FileName,1,Pos('.',FileName) -1) =
             Copy(ListFile.Strings[J],1,Pos('.',ListFile.Strings[J]) -1)) and
             (ExtractFileExt(ListFile.Strings[J]) = '.OK')) then
          begin
            Result := True;
            Break;
          end;
  end;
var
  f: file of Byte;
  size: Longint;
  FileList : TStrings;
  I, Tenta : integer;
  EmpresaAtual, EmpresaEmail  : String;
begin
  Result := False;
  Screen.Cursor := crHourGlass;
  LabelEvent := LabelInfo;
  SQLTerminalAtivo.Close;
  SQLTerminalAtivo.Open;
  if SQLTerminalAtivo.FieldByName('CFGIICOD').AsVariant <> null then
    begin
      if QueryConfigIntegracao.Active then
        QueryConfigIntegracao.Close;
      QueryConfigIntegracao.SQL.Clear;
      QueryConfigIntegracao.SQL.Add('SELECT * FROM CONFIGINTEGRACAO WHERE CFGIICOD = ' + SQLTerminalAtivo.FieldByName('CFGIICOD').AsString);
      QueryConfigIntegracao.Open;
      QueryConfigIntegracao.Last;
      if QueryConfigIntegracao.RecordCount > 0 then
        begin
          if ConnectDial then
            begin
              case QueryConfigIntegracao.FieldByName('CFGICTIPOCONEXAO').AsString[1] of
                'E' : begin
                        {try
                          if POP3.Connected then
                            POP3.Disconnect;
                          POP3.UserID := QueryConfigIntegracao.FieldByName('CFGIA100USUARIO').AsString;
                          POP3.Password := QueryConfigIntegracao.FieldByName('CFGIA30SENHA').AsString;
                          POP3.Host := QueryConfigIntegracao.FieldByName('CFGIA100POP3').AsString;
                          POP3.Connect;
                          for I := 1 to POP3.MailCount do
                            begin
                              LabelEvent.Caption := 'Recebendo email ' + IntToStr(I) + ' de  ' + IntToStr(POP3.MailCount);
                              LabelEvent.Update;
                              EmpresaAtual := FormatFloat('000',EmpresaCorrente);
                              POP3.GetSummary(I);
                              EmpresaEmail := POP3.Summary.Subject;
                              if Pos(EmpresaAtual,EmpresaEmail) > 0 then
                                begin
                                  MessageIndex := I;
                                  POP3.GetMailMessage(I);
                                  if MessageIndex = I then
                                    POP3.DeleteMailMessage(I);
                                end;
                            end;
                          LabelEvent.Caption := 'Término da recepção do(s) email(s)';
                          LabelEvent.Update;
                          Result := True;
                          POP3.Disconnect;
                        except on E : Exception do
                          begin
                            Application.MessageBox(PChar('Problemas ao receber email(s): ' + E.Message),'Atenção',MB_OK + MB_ICONINFORMATION + MB_SETFOREGROUND);
                          end;
                        end;}
                      end;

                'F' : begin
                        FTPIndy.Disconnect;
                        FTPIndy.Username := QueryConfigIntegracao.FieldByName('CFGIA100USUARIO').AsString;
                        FTPIndy.Password := QueryConfigIntegracao.FieldByName('CFGIA30SENHA').AsString;
                        FTPIndy.Host := QueryConfigIntegracao.FieldByName('CFGIA100HOST').AsString;
                        try
                          if QueryConfigIntegracao.FieldByName('CFGIA5PORTAFTP').AsString <> '' then
                            FTPIndy.Port := StrToInt(QueryConfigIntegracao.FieldByName('CFGIA5PORTAFTP').AsString)
                          else
                            FTPIndy.Port := 21;
                        except
                          FTPIndy.Port := 21;
                        end;
                        For Tenta := 0 to 5 do
                          begin
                            try
                              FTPIndy.Connect;
                              if FTPIndy.Connected then
                                FTPIndy.ChangeDir(QueryConfigIntegracao.FieldByName('CFGITPATHORIGEM').AsString);
                              Break;
                            except
                              Application.ProcessMessages;
                            end;
                          end;
                        if FTPIndy.Connected then
                          begin
                            try
                              FileListFTP := TStringList.Create;
                              FTPIndy.List(FileListFTP,'',false);
                              for I := 0 to FileListFTP.Count -1 do
                                begin
                                  if ((FileListFTP.Strings[I] <> '.') and (FileListFTP.Strings[I] <> '..')) then
                                    if ((EmpresaCorrente = StrToInt(Copy(FileListFTP.Strings[I],1,3))) and
                                       (ExtractFileExt(FileListFTP.Strings[I]) = '.LOG')) then
                                      begin
                                        if FileExists(PathAplicacao + '\Importa\Log\' + FileListFTP.Strings[I]) then
                                          begin
                                            try
                                              DeleteFile(Pchar(PathAplicacao + '\Importa\Log\' + FileListFTP.Strings[I]));
                                            except
                                              Application.ProcessMessages;
                                            end;
                                          end;
                                        try
                                          LabelEvent.Caption := 'Recebendo Arquivo(s)';
                                          LabelEvent.Update;
                                          LabelInfo.Caption := 'Recebendo Arquivo '+ FileListFTP.Strings[I];
                                          LabelInfo.Update;
                                          FtpIndy.Get(FileListFTP.Strings[I], PathAplicacao + '\Importa\Log\' + FileListFTP.Strings[I], true);
                                        except
                                          LabelEvent.Caption := 'Erro Recebendo Arquivo(s)';
                                          LabelEvent.Update;
                                          Application.ProcessMessages;
                                          Screen.Cursor := crDefault;
                                          LabelInfo.Caption := 'Erro Recebendo arquivo '+ FileListFTP.Strings[I];
                                          LabelInfo.Update;
                                          Result := False;
                                          Sleep(100);
                                          if FTPIndy.Connected then
                                            FTPIndy.Disconnect;
                                          Application.Terminate;
                                        end;

                                        // Testar se o arquivo veio zerado! Muito Importante
                                        AssignFile(f, PathAplicacao + '\Importa\Log\' + FileListFTP.Strings[I]);
                                        Reset(f);
                                        try
                                          Size := FileSize(f);
                                        finally
                                          CloseFile(f);
                                        end;

                                        // Apagar Arquivos do ftp caso tenha baixado correto!
                                        if Size > 0  then
                                          begin
                                            try
                                              LabelEvent.Caption := 'Apagando Arquivo(s)';
                                              LabelEvent.Update;
                                              LabelInfo.Caption := 'Apagando Arquivo '+ FileListFTP.Strings[I];
                                              LabelInfo.Update;
                                              FtpIndy.Delete(FileListFTP.Strings[I]);
                                              Result := True;
                                            except
                                              LabelEvent.Caption := 'Erro Apagando Arquivo(s)';
                                              LabelEvent.Update;
                                              Application.ProcessMessages;
                                              Screen.Cursor := crDefault;
                                              LabelInfo.Caption := 'Erro Apagando arquivo '+ FileListFTP.Strings[I];
                                              LabelInfo.Update;
                                              Result := False;
                                              Sleep(100);
                                              Application.Terminate;
                                            end;
                                          end
                                        else
                                          begin
                                            // Se Size for Zero, apagar o arquivo recebido pois veio com Erro e tentara ser recebido novamente no prox ciclo de exportacao!
                                            try
                                              DeleteFile(Pchar(PathAplicacao + '\Importa\Log\' + FileListFTP.Strings[I]));
                                            except
                                              Application.ProcessMessages;
                                            end;
                                          end;
                                      end;
                                end;
                              FTPIndy.Disconnect;
                              LabelEvent.Caption := 'Download Concluido!';
                              LabelEvent.Update;
                              LabelInfo.Caption := 'Download Concluido!';
                              LabelInfo.Update;
                            except
                              Application.ProcessMessages;
                              Screen.Cursor := crDefault;
                            end;
                          end;
                      end;
                'L' : begin
                        if DirectoryExists(QueryConfigIntegracao.FieldByName('CFGITPATHORIGEM').AsString) then
                          begin
                            try
                              LabelInfo.Caption := 'Recebendo Arquivo(s)';
                              LabelInfo.Update;
                              GetPathFiles(FileList,QueryConfigIntegracao.FieldByName('CFGITPATHORIGEM').AsString);
                              Application.ProcessMessages;
                              for I := 0 to FileList.Count -1 do
                                if ExtractFileExt(FileList.Strings[I]) = '.LOG' then
                                  if EmpresaCorrente = StrToInt(Copy(FileList.Strings[I],1,3)) then
                                    begin
                                      For Tenta := 0 to 5 do
                                        begin
                                          try
                                            FileCopy(PathAplicacao + '\IMPORTA\LOG\' + FileList.Strings[I],QueryConfigIntegracao.FieldByName('CFGITPATHORIGEM').AsString + '\' + FileList.Strings[I]);
                                            Sleep(50);
                                            DeleteFile(QueryConfigIntegracao.FieldByName('CFGITPATHORIGEM').AsString + '\' + FileList.Strings[I]);
                                            Break;
                                          except
                                            Sleep(100);
                                            Application.ProcessMessages;
                                          end;
                                        end;
                                    end;
                              LabelInfo.Caption := 'Arquivo(s) Recebido(s)';
                              LabelInfo.Update;
                              Result := True;
                            except on E : Exception do
                              begin
                                Screen.Cursor := crDefault;
                                LabelInfo.Caption := 'Problemas ao receber arquivo(s)';
                                LabelInfo.Update;
                                Application.MessageBox(PChar('Problemas ao receber arquivo(s)' + #13 + E.Message),'Atenção',MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONINFORMATION);
                              end;
                            end;
                          end
                        else
                          Application.MessageBox('Pasta de origem do(s) arquivo(s) de importação não foi encontrada!','Atenção',MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONINFORMATION);
                      end;
              end;
            end;
        end
      else
        Application.MessageBox('A configuração para envio de arquivos deste terminal não foi encontrada!','Atenção',MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONINFORMATION);
    end
  else
    Application.MessageBox('Não existe nenhum tipo de configuração para envio de arquivos neste terminal!','Atenção',MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONINFORMATION);
  Screen.Cursor := crDefault;
end;

function TDM.SendFile(PathFile,EmailFrom,EmailTo : string; LabelInfo : TLabel) : boolean;
var
  Arqs,Size : Integer;
  JaExiste : Boolean;
  FileList : TStrings;
begin
  Result := False;
  Screen.Cursor := crHourGlass;
  LabelEvent := LabelInfo;
  SQLTerminalAtivo.Close;
  SQLTerminalAtivo.Open;
  if SQLTerminalAtivo.FieldByName('CFGIICOD').AsVariant <> null then
    begin
      if QueryConfigIntegracao.Active then
        QueryConfigIntegracao.Close;
      QueryConfigIntegracao.SQL.Clear;
      QueryConfigIntegracao.SQL.Add('SELECT * FROM CONFIGINTEGRACAO WHERE CFGIICOD = ' + SQLTerminalAtivo.FieldByName('CFGIICOD').AsString);
      QueryConfigIntegracao.Open;
      QueryConfigIntegracao.Last;
      if QueryConfigIntegracao.RecordCount > 0 then
        begin
          if ConnectDial then
            begin
              if QueryConfigIntegracao.FieldByName('CFGICTIPOCONEXAO').AsVariant <> null then
                begin
                  case QueryConfigIntegracao.FieldByName('CFGICTIPOCONEXAO').AsString[1] of
                    'E' : begin
                            {
                            if SMTP.Connected then
                              SMTP.Disconnect;
                            // Retorna Email da Matriz
                            if MatrizFilial = 'F' then
                              SQLEmpresa.Locate('EMPRCMATRIZFILIAL','M',[]);
                            EmailTo := SQLEmpresaEMPRA60EMAIL.AsString;
                            ShowMessage(EmailTo);
                            SMTP.Username := QueryConfigIntegracao.FieldByName('CFGIA100USUARIO').AsString;
                            SMTP.Host     := QueryConfigIntegracao.FieldByName('CFGIA100SMTP').AsString;

                            IdMsgSend.From.Name := AnsiLowerCase(EmailFrom);
                            SMTP.PostMessage.ToAddress.Clear;
                            SMTP.PostMessage.ToAddress.Add(AnsiLowerCase(EmailTo));
                            SMTP.PostMessage.Attachments.Clear;
                            SMTP.PostMessage.Attachments.Add(DM.PathAplicacao + '\EXPORTA\LOG\' + PathFile);
                            SMTP.PostMessage.Subject := PathFile;
                            SMTP.PostMessage.Date := FormatDateTime('dd/mm/yyyy hh:mm:nn',Now);
                            SMTP.Connect;
                            if SMTP.Connected then
                              begin
                                try
                                  SMTP.SendMail;
                                  DeleteFile(Dm.PathAplicacao + '\EXPORTA\LOG\' + PathFile);
                                  Result := True;
                                  LabelInfo.Caption := 'Arquivo(s) enviado(s) com sucesso...';
                                  LabelInfo.Update;
                                except
                                  Application.ProcessMessages;
                                  Screen.Cursor := crDefault;
                                end;
                              end; }
                          end;
                    'F' : begin
                            if FTPIndy.Connected then
                              begin
                                LabelInfo.Caption  := 'Enviando Arquivo(s)';
                                LabelInfo.Update;
                                LabelEvent.Caption := 'Enviando Arquivo(s)';
                                LabelEvent.Update;
                                try
                                  Application.ProcessMessages;
                                  FTPIndy.Put(Dm.PathAplicacao + '\EXPORTA\LOG\' + PathFile, PathFile, true);
                                  LabelEvent.Caption := 'Arquivo(s) enviado(s) com sucesso!';
                                  LabelEvent.Update;
                                  LabelInfo.Caption  := 'Arquivo(s) Enviado(s)';
                                  LabelInfo.Update;
                                  Result := True;
                                except
                                  Application.ProcessMessages;
                                  LabelEvent.Caption := 'Falha ao enviar Arquivo!';
                                  LabelEvent.Update;
                                  LabelInfo.Caption  := 'Falha ao enviar Arquivo(s)';
                                  LabelInfo.Update;
                                  Result := False;
                                end;
                                if Result then
                                  begin
                                    try
                                      Application.ProcessMessages;
                                      PathFile := Copy(PathFile,1,Length(PathFile) - 3) + 'LOG';
                                      DeleteFile(Dm.PathAplicacao + '\EXPORTA\LOG\' + PathFile);
                                    except
                                      Application.ProcessMessages;
                                    end;
                                  end;
                                Application.ProcessMessages;
                                Screen.Cursor := crDefault;
                              end;
                          end;
                    'L' : begin
                            if DirectoryExists(QueryConfigIntegracao.FieldByName('CFGITPATHDESTINO').AsString) then
                              begin
                                try
                                  LabelInfo.Caption := 'Enviando arquivo(s) para pasta remota...';
                                  LabelInfo.Update;
                                  Sleep(100); {Neco pediu pra colocar esse delay}
                                  FileCopy(QueryConfigIntegracao.FieldByName('CFGITPATHDESTINO').AsString + '\' + PathFile,Dm.PathAplicacao + 'EXPORTA\LOG\' + PathFile);
                                  Sleep(100); {Neco pediu pra colocar esse delay}
                                  DeleteFile(Dm.PathAplicacao + '\EXPORTA\LOG\' + PathFile);
                                  Sleep(100); {Neco pediu pra colocar esse delay}
                                  LabelInfo.Caption := 'Arquivo(s) enviado(s) OK para a pasta remota...';
                                  LabelInfo.Update;
                                  Result := True;
                                except on E : Exception do
                                  begin
                                    Screen.Cursor := crDefault;
                                    LabelInfo.Caption := 'Problemas ao enviar o(s) arquivo(s) para a pasta remota...';
                                    LabelInfo.Update;
                                   // Adilson comentei a linha abaixo pq nos clientes uilinton com hamashi dava msg erro mas copiava o arquivo apos o Enter
                                   { Application.MessageBox(PChar('Problemas ao enviar o(s) arquivo(s) para a pasta remota!' + #13 + E.Message),'Atenção',MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONINFORMATION); }
                                  end;
                                end;
                              end
                            else
                              Application.MessageBox('Pasta de destino do(s) arquivo(s) de exportação não foi encontrada!','Atenção',MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONINFORMATION);
                          end;
                  end;
                end
              else
                Application.MessageBox('O tipo de conexão não foi configurado corretamente!','Atenção',MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONINFORMATION);
            end;
        end
      else
        Application.MessageBox('A configuração para envio de arquivos deste terminal não foi encontrada!','Atenção',MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONINFORMATION);
    end
  else
    Application.MessageBox('Não existe nenhum tipo de configuração para envio de arquivos neste terminal!','Atenção',MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONINFORMATION);
  Screen.Cursor := crDefault;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  inherited;
  FormSplash.close;
  FormSplash.Free;
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

procedure TDM.SMTPSuccess(Sender: TObject);
begin
  inherited;
  LabelEvent.Caption := 'Email enviado com sucesso...';
  LabelEvent.Update;
end;

procedure TDM.SMTPSendStart(Sender: TObject);
begin
  inherited;
  LabelEvent.Caption := 'Enviando email...';
  LabelEvent.Update;
end;

procedure TDM.SMTPStatus(Sender: TComponent; Status: String);
begin
  inherited;
  LabelEvent.Caption := Status;
  LabelEvent.Update;
end;

procedure TDM.SMTPConnectionFailed(Sender: TObject);
begin
  inherited;
  LabelEvent.Caption := 'Falha na conexão...';
  LabelEvent.Update;
end;

procedure TDM.POP3DecodeStart(var FileName: String);
begin
  inherited;
{  if StrToInt(Copy(Trim(POP3.MailMessage.Subject),1,3)) = EmpresaCorrente then
    begin
      POP3.MailMessage.Attachments.SaveToFile(DM.PathAplicacao + '\IMPORTA\LOG\' + FileName);
    end
  else
    MessageIndex := 0;}
end;

procedure TDM.FTPInvalidHost(var Handled: Boolean);
begin
  inherited;
  LabelEvent.Caption := 'O Host configurado é inválido, favor verifique suas configurações!';
  LabelEvent.Update;
end;

function TDM.ConectarHostFTP(LabelInfo:TLabel) : Boolean;
var
 I : Integer;
begin
  Result := False;
  Screen.Cursor := crHourGlass;
  LabelEvent := LabelInfo;
  For I := 0 to 5 do
    begin
      FTPIndy.Disconnect;
      FTPIndy.Username := QueryConfigIntegracao.FieldByName('CFGIA100USUARIO').AsString;
      FTPIndy.Password := QueryConfigIntegracao.FieldByName('CFGIA30SENHA').AsString;
      FTPIndy.Host     := QueryConfigIntegracao.FieldByName('CFGIA100HOST').AsString;
      try
        if QueryConfigIntegracao.FieldByName('CFGIA5PORTAFTP').AsString <> '' then
          FTPIndy.Port := StrToInt(QueryConfigIntegracao.FieldByName('CFGIA5PORTAFTP').AsString)
        else
          FTPIndy.Port := 21 ;
      except
        FTPIndy.Port   := 21 ;
      end;
      try
        FTPIndy.Connect;
        if FTPIndy.Connected then
          FTPIndy.ChangeDir(QueryConfigIntegracao.FieldByName('CFGITPATHDESTINO').AsString);
        Result := True;
        Break;
        Exit;
      except
        if FTPIndy.Connected then
          FTPIndy.Disconnect;
        Result := False;
      end;
      Screen.Cursor := crDefault;
      Application.ProcessMessages;
    end;
end;

function TDM.RetornaTipoConexao : String;
begin
  SQLTerminalAtivo.Close;
  SQLTerminalAtivo.Open;
  if SQLTerminalAtivo.FieldByName('CFGIICOD').AsVariant <> null then
    begin
      if QueryConfigIntegracao.Active then
        QueryConfigIntegracao.Close;
      QueryConfigIntegracao.SQL.Clear;
      QueryConfigIntegracao.SQL.Add('SELECT * FROM CONFIGINTEGRACAO WHERE CFGIICOD = ' + SQLTerminalAtivo.FieldByName('CFGIICOD').AsString);
      QueryConfigIntegracao.Open;
      QueryConfigIntegracao.Last;
      if QueryConfigIntegracao.RecordCount > 0 then
        begin
          RetornaTipoConexao := QueryConfigIntegracao.FieldByName('CFGICTIPOCONEXAO').AsString;
        end
      else
        Application.MessageBox('A configuração para envio de arquivos deste terminal não foi encontrada!','Atenção',MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONINFORMATION);
    end
  else
    Application.MessageBox('Não existe nenhum tipo de configuração para envio de arquivos neste terminal!','Atenção',MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONINFORMATION);
end;

procedure TDM.FTPListItem(Listing: String);
begin
  inherited;
  if ((Listing <> '') AND (Listing <> '.') AND (Listing <> '..')) then
    FileListFTP.Add(Listing);
end;

end.
