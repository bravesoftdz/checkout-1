 unit TelaConsultaRapidaCupom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, RxQuery, Grids, DBGrids, ExtCtrls, StdCtrls, CartaoCredito,
  Buttons, Mask, ToolEdit, AdvGlowButton, DBClient, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, pcnConversaoNFe,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid;

type
  TFormTelaConsultaRapidaCupom = class(TForm)
    DSSQLCupom: TDataSource;
    SQLCupom: TRxQuery;
    SQLCupomCUPOA13ID: TStringField;
    SQLCupomCUPODEMIS: TDateTimeField;
    SQLCupomCLIEA60RAZAOSOC: TStringField;
    SQLCupomVENDA60NOME: TStringField;
    SQLCupomPLRCA60DESCR: TStringField;
    PanelDescricao: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    edtDataInicial: TDateEdit;
    SQLCupomCUPOINRO: TIntegerField;
    SQLCupomVLRLIQ: TFloatField;
    SQLCupomCLIENTECNPJ: TStringField;
    btTransmite: TAdvGlowButton;
    BtInutilizarNFCE: TAdvGlowButton;
    SQLCupomCHAVEACESSO: TStringField;
    edtDataFinal: TDateEdit;
    Label2: TLabel;
    btnAtualizar: TSpeedButton;
    cdsCupom: TClientDataSet;
    cdsCupomCUPOA13ID: TStringField;
    cdsCupomCUPOINRO: TIntegerField;
    cdsCupomVLRLIQ: TFloatField;
    cdsCupomCUPODEMIS: TDateTimeField;
    cdsCupomCLIEA60RAZAOSOC: TStringField;
    cdsCupomVENDA60NOME: TStringField;
    cdsCupomPLRCA60DESCR: TStringField;
    cdsCupomCLIENTECNPJ: TStringField;
    cdsCupomCHAVEACESSO: TStringField;
    cdsCupomSelecionar: TBooleanField;
    btnEnviarTodos: TAdvGlowButton;
    cdsCupomMensagem: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1CUPOA13ID: TcxGridDBColumn;
    cxGrid1DBTableView1CUPOINRO: TcxGridDBColumn;
    cxGrid1DBTableView1VLRLIQ: TcxGridDBColumn;
    cxGrid1DBTableView1CUPODEMIS: TcxGridDBColumn;
    cxGrid1DBTableView1CHAVEACESSO: TcxGridDBColumn;
    cxGrid1DBTableView1Selecionar: TcxGridDBColumn;
    cxGrid1DBTableView1Mensagem: TcxGridDBColumn;
    lblTitulo: TLabel;
    procedure BtInutilizarNFCEClick(Sender: TObject);
    procedure btTransmiteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    Procedure AbrirDadosCupom;
    procedure btnAtualizarClick(Sender: TObject);
    procedure SQLCupomAfterOpen(DataSet: TDataSet);
    procedure btnEnviarTodosClick(Sender: TObject);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid1DBTableView1SelecionarHeaderClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtDataInicialExit(Sender: TObject);
    procedure edtDataFinalExit(Sender: TObject);
  private
    { Private declarations }
    function Consulta_NFCe : Boolean;
    procedure Inicia_NFe;
  public
    { Public declarations }
    ProvedorCartao, NomeNumerarioCartao : string;
    TempoLimite, TempoIntervalo: Integer;
    RetornoCartao : TInfoRetorno;
    DadosImpressora : TInfoImpressao;
    Cancelamento : Boolean;
  end;

var
  FormTelaConsultaRapidaCupom: TFormTelaConsultaRapidaCupom;

implementation

uses UnitLibrary, DataModulo, Principal, TelaItens;

{$R *.dfm}

procedure TFormTelaConsultaRapidaCupom.BtInutilizarNFCEClick(
  Sender: TObject);
var ano, Modelo, Serie, Justificativa, NumeroInicial, NumeroFinal : string;
begin
  if (copy(ECFAtual,1,4) = 'NFCE')  then
    begin
      ano := FormatDateTime('yyyy',now);

      Modelo := '65';
      Serie  := dm.SQLTerminalAtivoTERMICOD.AsString;

      if not(InputQuery('WebServices Inutiliza��o ', 'Modelo', Modelo)) then
        exit;

      if not(InputQuery('WebServices Inutiliza��o ', 'Serie',  Serie)) then
        exit;

      if Modelo = '' then
        Modelo := '65';

      if Serie = '' then
        Serie  := dm.SQLTerminalAtivoTERMICOD.AsString;

      if not(InputQuery('WebServices Inutiliza��o ', 'Justificativa',  Justificativa)) then
        exit;

      if Justificativa = '' then
        Justificativa := 'Falha no processo de gera��o desta NFCe!';

      if not(InputQuery('WebServices Inutiliza��o ', 'N�mero Inicial', NumeroInicial)) then
        exit;
        
      if not(InputQuery('WebServices Inutiliza��o ', 'N�mero Final', NumeroFinal)) then
        exit;

      try
        dm.ACBrNFe.WebServices.Inutiliza(dm.SQLEmpresaEMPRA14CGC.AsString,
                                         Justificativa,
                                         StrToInt(Ano),
                                         StrToInt(Modelo),
                                         StrToInt(Serie),
                                         StrToInt(NumeroInicial),
                                         StrToInt(NumeroFinal));

        ShowMessage('Numera��o Inutilizada.');
      except
        on e:Exception do
          ShowMessage(e.message);
      end;  
    end;
end;

procedure TFormTelaConsultaRapidaCupom.btTransmiteClick(
  Sender: TObject);
begin
  ModalResult := mrOk ;
end;

procedure TFormTelaConsultaRapidaCupom.FormCreate(Sender: TObject);
begin
  edtDataInicial.Date := Now;
  edtDataFinal.Date := Now;
  AbrirDadosCupom;
end;

procedure TFormTelaConsultaRapidaCupom.AbrirDadosCupom;
begin
  SQLCupom.Close;
  SQLCupom.MacroByName('DataEmissao').Value  := 'Cupom.CUPODEMIS BETWEEN ' + Quotedstr(FormatDateTime('mm/dd/yyyy',edtDataInicial.Date))
     + ' and '+ Quotedstr(FormatDateTime('mm/dd/yyyy',edtDataFinal.Date));
  SQLCupom.MacroByName('Empresa').Value      := 'Cupom.EMPRICOD  = ' + EmpresaPadrao;
  SQLCupom.Open;
end;

procedure TFormTelaConsultaRapidaCupom.btnAtualizarClick(Sender: TObject);
begin
  AbrirDadosCupom;
end;

procedure TFormTelaConsultaRapidaCupom.SQLCupomAfterOpen(
  DataSet: TDataSet);
begin
  cdsCupom.close;
  cdsCupom.CreateDataSet;
  
  cdsCupom.DisableControls;
  SQLCupom.DisableControls;
  try
    while not SQLCupom.eof do
    begin
      cdsCupom.Insert;
      cdsCupomCUPOA13ID.Value := SQLCupomCUPOA13ID.Value;
      cdsCupomCUPOINRO.Value := SQLCupomCUPOINRO.Value;
      cdsCupomVLRLIQ.Value := SQLCupomVLRLIQ.Value;
      cdsCupomCUPODEMIS.Value := SQLCupomCUPODEMIS.Value;
      cdsCupomCLIEA60RAZAOSOC.Value := SQLCupomCLIEA60RAZAOSOC.Value;
      cdsCupomVENDA60NOME.Value := SQLCupomVENDA60NOME.Value;
      cdsCupomPLRCA60DESCR.Value := SQLCupomPLRCA60DESCR.Value;
      cdsCupomCLIENTECNPJ.Value := SQLCupomCLIENTECNPJ.Value;
      cdsCupomCHAVEACESSO.Value := SQLCupomCHAVEACESSO.Value;
      cdsCupomSelecionar.Value := True;
      cdsCupom.Post;
      SQLCupom.next;
    end;
  finally
    SQLCupom.EnableControls;
    cdsCupom.EnableControls;
  end;
end;

procedure TFormTelaConsultaRapidaCupom.btnEnviarTodosClick(
  Sender: TObject);
var
 vCupomOK, vCupomNaoOK:Integer;
begin
  if not cdsCupom.Locate('Selecionar', true, []) then
    raise Exception.Create('Nenhum cupom selecionado!');

  vCupomOK := 0;
  vCupomNaoOK := 0;

  cdsCupom.First;
  while not cdsCupom.eof do
  begin
    try
      if cdsCupomSelecionar.Value then
      begin
        if Consulta_NFCe then
          Inc(vCupomOK)
        else
        begin
          Imprimir_Nfce := False;
          FormTelaItens.Transmite_NFCe(cdsCupomCUPOA13ID.Value);
          Inc(vCupomOK);
        end;
      end;
    except
      on E: Exception do
      begin
        inc(vCupomNaoOK);
        cdsCupom.Edit;
        cdsCupomMensagem.Value := E.Message;
        cdsCupom.Post;
      end;
    end;
    cdsCupom.Next;
  end;
  Imprimir_Nfce := True;
  ShowMessage('Cupom(s) Enviado(s): ' + FormatFloat('000', vCupomOK)
    + sLineBreak +'Cupom(s) n�o Enviado(s): '+ FormatFloat('000', vCupomNaoOK));

end;

procedure TFormTelaConsultaRapidaCupom.cxGrid1DBTableView1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
   SQLCupom.locate('CUPOA13ID', cdsCupomCUPOA13ID.Value, []); 
   ModalResult := mrOk;
  end;
  if Key = VK_ESCAPE then  ModalResult := mrCancel;
end;

procedure TFormTelaConsultaRapidaCupom.cxGrid1DBTableView1SelecionarHeaderClick(
  Sender: TObject);
begin
  try
    cdsCupom.DisableControls;
    cdsCupom.First;
    while not cdsCupom.eof do
    begin
      cdsCupom.Edit;
      cdsCupomSelecionar.Value := not cdsCupomSelecionar.Value;
      cdsCupom.Post;
      cdsCupom.Next;
    end;
  finally
    cdsCupom.EnableControls;
  end;

end;

procedure TFormTelaConsultaRapidaCupom.FormShow(Sender: TObject);
begin
  btnEnviarTodos.Enabled := not Cancelamento;
  btTransmite.Enabled    := not Cancelamento;
  BtInutilizarNFCE.Enabled := not Cancelamento;
  cxGrid1.SetFocus;
end;

procedure TFormTelaConsultaRapidaCupom.edtDataInicialExit(Sender: TObject);
begin
  AbrirDadosCupom;
end;

procedure TFormTelaConsultaRapidaCupom.edtDataFinalExit(Sender: TObject);
begin
 AbrirDadosCupom;
end;

function TFormTelaConsultaRapidaCupom.Consulta_NFCe: Boolean;
var
  Chave : String;
begin
  Result := False;
  Inicia_NFe;
  dm.ACBrNFe.Consultar(cdsCupomCHAVEACESSO.AsString);
  if (dm.ACBrNFe.WebServices.Consulta.cStat = 613) or (dm.ACBrNFe.WebServices.Consulta.cStat = 539) then
  begin
    if dm.ACBrNFe.WebServices.Consulta.XMotivo <> '' then
    begin
      if pos('NF-e [', dm.ACBrNFe.WebServices.Consulta.XMotivo) > 0 then
      begin
        Chave := Copy(dm.ACBrNFe.WebServices.Consulta.XMotivo, pos('NF-e [', dm.ACBrNFe.WebServices.Consulta.XMotivo), 200);
        Chave := StringReplace(Chave, 'NF-e [', '', [rfReplaceAll, rfIgnoreCase]);
        Chave := StringReplace(Chave, ']', '', [rfReplaceAll]);

        if Chave <> '' then
        begin
          dm.SQLCupom.close;
          dm.SQLCupom.macrobyname('MFiltro').Value := 'CUPOA13ID = ''' + cdsCupomCUPOA13ID.Value + '''';
          dm.SQLCupom.Open;

          dm.SQLCupom.RequestLive := True;
          dm.SQLCupom.edit;
          dm.SQLCupomCHAVEACESSO.AsString := Chave;
          dm.SQLCupom.Post;

          dm.ACBrNFe.Consultar(Chave);
          if (dm.ACBrNFe.WebServices.Consulta.cStat = 100) then
          begin
            DM.SQLTemplate.Close;
            DM.SQLTemplate.SQL.Clear;
            DM.SQLTemplate.SQL.Add('Update CUPOM Set STNFE = ' + IntToStr(dm.ACBrNFe.WebServices.consulta.cStat));
            DM.SQLTemplate.SQL.Add(', PROTOCOLO=''' + dm.ACBrNFe.WebServices.consulta.Protocolo + '''');
            DM.SQLTemplate.SQL.Add(', PENDENTE=' + QuotedStr('S'));
            DM.SQLTemplate.SQL.Add(' Where CUPOA13ID =''' + cdsCupomCUPOA13ID.Value + '''');
            DM.SQLTemplate.ExecSQL;
            Result := True;
          end;
          Result := True;
        end;

//        SQLCupom.Close;
//        SQLCupom.Open;

//        ConsultarDenovo := True;
      end;
    end
    else if dm.ACBrNFe.WebServices.Consulta.protNFe.xMotivo <> '' then
    begin
      Chave := Copy(dm.ACBrNFe.WebServices.Consulta.XMotivo, pos('[chNFe:', dm.ACBrNFe.WebServices.Consulta.XMotivo), 200);
      Chave := StringReplace(Chave, '[chNFe:', '', [rfReplaceAll, rfIgnoreCase]);
      Chave := StringReplace(Chave, ']', '', [rfReplaceAll]);

      if Chave <> '' then
      begin
        if dm.SQLCupom.IsEmpty then
        begin
          dm.SQLCupom.close;
          dm.SQLCupom.macrobyname('MFiltro').Value := 'CUPOA13ID = ''' + cdsCupomCUPOA13ID.Value + '''';
          dm.SQLCupom.Open;
        end;

        dm.SQLCupom.RequestLive := True;
        dm.SQLCupom.edit;
        dm.SQLCupomCHAVEACESSO.AsString := Chave;
        dm.SQLCupom.Post;
        Result := True;
      end;
    end;
  end
  else
  if (dm.ACBrNFe.WebServices.Consulta.cStat = 100) then
  begin
    DM.SQLTemplate.Close;
    DM.SQLTemplate.SQL.Clear;
    DM.SQLTemplate.SQL.Add('Update CUPOM Set STNFE = ' + IntToStr(dm.ACBrNFe.WebServices.consulta.cStat));
    DM.SQLTemplate.SQL.Add(', PROTOCOLO=''' + dm.ACBrNFe.WebServices.consulta.Protocolo + '''');
    DM.SQLTemplate.SQL.Add(', PENDENTE=' + QuotedStr('S'));
    DM.SQLTemplate.SQL.Add(' Where CUPOA13ID =''' + cdsCupomCUPOA13ID.Value + '''');
    DM.SQLTemplate.ExecSQL;
    Result := True;
  end;

end;

procedure TFormTelaConsultaRapidaCupom.Inicia_NFe;
begin
{$IFDEF ACBrNFeOpenSSL}
  dm.ACBrNFe.Configuracoes.Certificados.ArquivoPFX := dm.sqlEmpresa.FieldByName('EMPRA100CERTIFSERIE').AsString;
  dm.ACBrNFe.Configuracoes.Certificados.Certificado := dm.sqlEmpresa.FieldByName('EMPRA100CERTIFSERIE').AsString;
  dm.ACBrNFe.Configuracoes.Certificados.Senha := dm.sqlEmpresa.FieldByName('EMPRA35CERTIFSENHA').AsString;
{$ELSE}
  dm.ACBrNFe.Configuracoes.Certificados.NumeroSerie := dm.sqlEmpresa.FieldByName('EMPRA100CERTIFSERIE').AsString;
  dm.ACBrNFe.Configuracoes.Certificados.Senha := dm.sqlEmpresa.FieldByName('EMPRA35CERTIFSENHA').AsString;
{$ENDIF}
  if dm.sqlEmpresa.FieldByName('VERSAO').AsString = '4' then
    dm.ACBrNFe.Configuracoes.Geral.VersaoDF := ve400
  else
    dm.ACBrNFe.Configuracoes.Geral.VersaoDF := ve310;
  dm.ACBrNFe.Configuracoes.Geral.IdCSC := dm.sqlEmpresa.FieldByName('idTOKEN').AsString;
  dm.ACBrNFe.Configuracoes.Geral.CSC := dm.sqlEmpresa.FieldByName('TOKEN').AsString;
  DM.ACBrNFe.Configuracoes.Geral.VersaoQRCode := veqr200;
  dm.ACBrNFeDANFeESCPOS.ViaConsumidor := True;
  dm.ACBrNFeDANFeESCPOS.ImprimeItens := True;
  dm.ACBrNFeDANFeESCPOS.ViaConsumidor := True;
  dm.ACBrNFeDANFeESCPOS.ImprimeItens := True;
end;

end.
