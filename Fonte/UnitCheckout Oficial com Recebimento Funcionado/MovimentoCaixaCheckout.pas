unit MovimentoCaixaCheckout;
interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, ToolEdit, CurrEdit, RXLookup,
  RxDBComb, Db, DBTables, ConerBtn, Grids, DBGrids, RXCtrls, RxQuery,
  ppVar, ppPrnabl, ppClass, ppCtrls, ppCache, ppBands, ppComm, ppRelatv,
  ppProd, ppReport, ppStrtch, ppMemo, RXDBCtrl ;
type
  TFormTelaMovimentoCaixa = class(TForm)
    Label2: TLabel;
    LblValor: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    EditValor: TCurrencyEdit;
    ComboOperacaoCaixa: TRxDBLookupCombo;
    EditData: TDateEdit;
    DBEdit2: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    DBEditObs: TEdit;
    EditTipMov: TEdit;
    Panel2: TPanel;
    BtnOK: TConerBtn;
    BtnCancelar: TConerBtn;
    SQLOperacaoCaixa: TRxQuery;
    SQLNumerario: TRxQuery;
    DSTblTerminal: TDataSource;
    LblMsg: TRxLabel;
    DSQryOperacaoCaixa: TDataSource;
    DSQryNumerario: TDataSource;
    SQLTotalizadorCaixa: TRxQuery;
    SQLOperacaoCaixaOPCXICOD: TIntegerField;
    SQLOperacaoCaixaOPCXA60DESCR: TStringField;
    SQLOperacaoCaixaOPCXA5SIGLA: TStringField;
    SQLNumerarioNUMEICOD: TIntegerField;
    SQLNumerarioNUMEA30DESCR: TStringField;
    SQLTotalizadorCaixaTOTAICOD: TIntegerField;
    SQLTotalizadorCaixaTOTAA60DESCR: TStringField;
    SQLTotalizadorCaixaTOTACTRANSFSALDO: TStringField;
    SQLTotalizadorCaixaTOTACDEBITOCREDITO: TStringField;
    SQLTotalizadorCaixaTOTAIORDLIST: TIntegerField;
    SQLMovimentoCaixa: TRxQuery;
    SQLOperacaoCaixaOPCXCSOLICVLR: TStringField;
    SQLOperacaoCaixaOPCXCAUTENTICA: TStringField;
    LblNumerario: TLabel;
    ComboNumerario: TRxDBLookupCombo;
    SQLOperacaoCaixaOPCXCDEBITOCREDITO: TStringField;
    SQLEstornoCrediario: TRxQuery;
    ReportAutentic: TppReport;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel10: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    Empresa: TppLabel;
    Data: TppLabel;
    Operacao: TppLabel;
    ppLabel5: TppLabel;
    Valor: TppLabel;
    Numerario: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    Operador: TppLabel;
    Obs: TppMemo;
    SQLOperacaoCaixaOPCXCOPINTERNA: TStringField;
    PainelBomba: TPanel;
    DBGrigEncerrantesDia: TRxDBGrid;
    SQLEncerranteDiario: TRxQuery;
    SQLEncerranteDiarioENDIA13ID: TStringField;
    SQLEncerranteDiarioEMPRICOD: TIntegerField;
    SQLEncerranteDiarioENDIICOD: TIntegerField;
    SQLEncerranteDiarioENDIDDATA: TDateTimeField;
    SQLEncerranteDiarioUSUAICOD: TIntegerField;
    SQLEncerranteDiarioBOMBICOD: TIntegerField;
    SQLEncerranteDiarioPRODICOD: TIntegerField;
    SQLEncerranteDiarioENDIIENCERINI: TIntegerField;
    SQLEncerranteDiarioENDIIENCERFIM: TIntegerField;
    SQLEncerranteDiarioENDIIAFERICAO: TIntegerField;
    SQLBomba: TRxQuery;
    SQLBombaBOMBICOD: TIntegerField;
    SQLBombaBOMBA30DESCR: TStringField;
    SQLEncerranteDiarioBombaDescricao: TStringField;
    dsEncerrante: TDataSource;
    SQLBombaAux: TRxQuery;
    SQLBombaAuxEMPRICOD: TIntegerField;
    SQLBombaAuxBOMBICOD: TIntegerField;
    SQLBombaAuxTANQICOD: TIntegerField;
    SQLBombaAuxBOMBA30DESCR: TStringField;
    SQLEncerranteDiarioResultado: TFloatField;
    SQLEncerranteDiarioREGISTRO: TDateTimeField;
    SQLEncerranteDiarioPENDENTE: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EditTipMovExit(Sender: TObject);
    procedure ComboOperacaoCaixaExit(Sender: TObject);
    procedure EditDataEnter(Sender: TObject);
    procedure DBEditObsExit(Sender: TObject);
    procedure ReportAutenticBeforePrint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditEncerranteExit(Sender: TObject);
    procedure SQLEncerranteDiarioBeforePost(DataSet: TDataSet);
    procedure DBGrigEncerrantesDiaEnter(Sender: TObject);
    procedure DBGrigEncerrantesDiaExit(Sender: TObject);
    procedure SQLEncerranteDiarioCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure MostraMsg(Mensagem : string) ;
    procedure GerarTotalizadoresDiarios ;
    function  EstornoRecebimento : boolean ;
  public
  Result : TModalResult;
  NroUltCupom : Integer;
  RetornoCampoUsuario : String;
    { Public declarations }
  end;
var
  FormTelaMovimentoCaixa: TFormTelaMovimentoCaixa;
implementation

uses DataModulo, UnitLibrary, ECFCheckout, UnitCheckoutLibrary,
  TelaFechamentoCaixa, TelaConsultaRapidaCupom, Corisco_CT7000_V3,
  IMPNAOFISCAL, Sigtron_FS345, Bematech_MP20_FI_II, BemaFi32 ;

{$R *.DFM}
procedure TFormTelaMovimentoCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TFormTelaMovimentoCaixa.FormDeactivate(Sender: TObject);
begin
  Activate;
end;

procedure TFormTelaMovimentoCaixa.FormCreate(Sender: TObject);
begin
  SQLOperacaoCaixa.Open ;
  SQLTotalizadorCaixa.Open ;
  SQLNumerario.Open ;
end ;

procedure TFormTelaMovimentoCaixa.BtnCancelarClick(Sender: TObject);
begin
  Close ;
end;

procedure TFormTelaMovimentoCaixa.BtnOKClick(Sender: TObject);
var
  Operacao           : Integer ;
  CupomOk            : boolean ;
  VlrEstorn,
  Valor,
  TotalDeb,TotalCred : Double ;
  TipoRecEsc         : Variant ;
  Docum,
  OperCx,
  Tipo,
  Numerario,
  ContratoExcluido,
  TotNumECF  : string ;
  LF                 : char ;
  InfoRetornoUser    : TInfoRetornoUser;
begin
  if ComboOperacaoCaixa.Text = '' then
    begin
      Informa('Selecione o tipo de operação!');
      Exit;
    end ;

  if (SQLOperacaoCaixaOPCXCSOLICVLR.Value = 'S') and (EditValor.Value = 0) then
    begin
      Informa('Esta operação de caixa necessita um valor maior que zero!');
      EditValor.SetFocus ;
      Exit;
    end ;

  if (SQLOperacaoCaixaOPCXCAUTENTICA.Value = 'S') and (ComboNumerario.Text = '') then
    begin
      Informa('Esta operação de caixa necessita de um numerário!');
      ComboNumerario.SetFocus ;
      Exit;
    end ;

  if (SQLOperacaoCaixaOPCXCAUTENTICA.Value = 'S') and (SQLOperacaoCaixaOPCXCSOLICVLR.Value = 'S') then
    begin
      if (PortaECFAtual <> '') and (ECFAtual <> '') then
        AbrirGaveta(ECFAtual, PortaECFAtual);
      if (ImpNaoFiscalAtual <> '') then
        AbrirGaveta_NAOFISCAL(ImpNaoFiscalAtual,PortaImpNaoFiscalAtual);
    end ;

  //DEVE SETAR VARIAVEL AQUI P/NÃO ABRIR O CAIXA COM DATA DO MOV.ANTERIOR
  if StrToInt(EditTipMov.Text) = 1 then
    TerminalAtualData := EditData.Text ;

  if DBEditObs.Text <> '' then
    DBEditObs.Text := ': ' + DBEditObs.Text ;

  Numerario := 'Null' ;

  if SQLOperacaoCaixaOPCXA5SIGLA.Value = 'LEITX' Then {Leitura X}
    begin
      if DM.SQLUsuario.FieldByName('USUACPERMLEITX').AsString <> 'S' then
        if Pergunta('SIM','Você não tem permissão para realizar Leitura X! Deseja Informar Outro Usuário?') then
          begin
            RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACPERMLEITX',InfoRetornoUser);
            if RetornoCampoUsuario <> 'S' then
              Exit;
          end
        else
          Exit;

       MostraMsg('Aguarde, emitindo Leitura X...') ;
       Leitura_X(ECFAtual, PortaECFAtual) ;
    end ;

  if SQLOperacaoCaixaOPCXA5SIGLA.Value = 'REDUZ' Then {Redução Z}
    begin
      if DM.SQLUsuario.FieldByName('USUACPERMREDZ').AsString <> 'S' then
        if Pergunta('SIM','Você não tem permissão para realizar Redução Z! Deseja Informar Outro Usuário?') then
          begin
            RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACPERMREDZ',InfoRetornoUser);
            if RetornoCampoUsuario <> 'S' then
              Exit;
          end
        else
          Exit;

       if Pergunta('SIM','Esta rotina implicará no fechamento diário da impressora fiscal, portanto mais nenhum cupom fiscal poderá ser impresso hoje !' + #13 + 'Deseja continuar ?') then
         begin
           MostraMsg('Aguarde, emitindo Redução Z...') ;
           Reducao_Z(ECFAtual, PortaECFAtual) ;
         end
       else
         exit;
    end ;

  if SQLOperacaoCaixaOPCXA5SIGLA.Value = 'SANGR' Then {Sangria}
    begin
      if DM.SQLUsuario.FieldByName('USUACPERMSANGRIA').AsString <> 'S' then
        if Pergunta('SIM','Você não tem permissão para realizar Sangria! Deseja Informar Outro Usuário?') then
          begin
            RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACPERMSANGRIA',InfoRetornoUser);
            if RetornoCampoUsuario <> 'S' then
              Exit;
          end
        else
          Exit;  

      if ECFAtual = 'DARUMA FS345' then
        Sangria_Daruma_FS345(EditValor.Value);
    end ;

  if SQLOperacaoCaixaOPCXA5SIGLA.Value = 'SUBBO' Then {Substituição Bobina}
    begin
    end ;

  if SQLOperacaoCaixaOPCXA5SIGLA.Value = 'SUPRI' Then {Suprimento}
    begin
      if DM.SQLUsuario.FieldByName('USUACPERMSUPRI').AsString <> 'S' then
        if Pergunta('SIM','Você não tem permissão para realizar Suprimento! Deseja Informar Outro Usuário?') then
          begin
            RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACPERMSUPRI',InfoRetornoUser);
            if RetornoCampoUsuario <> 'S' then
              Exit;
          end
        else
          Exit;  

      if ECFAtual = 'DARUMA FS345' then
        Suprimento_Daruma_FS345(EditValor.Value, IntToStr(ComboNumerario.KeyValue));
    end ;

  if SQLOperacaoCaixaOPCXA5SIGLA.Value = 'TRCOP' Then {Troca Operador}
    begin
    end ;

  //GRAVAR MOVIMENTO DO CAIXA
  //CANCELA CUPOM NO TERMINAL PRE-VENDA
  if SQLOperacaoCaixaOPCXA5SIGLA.Value = 'CCPRE' Then
    begin
      if SQLLocate('USUARIO', 'USUAICOD', 'USUACCANCVENDA', IntToStr(DM.UsuarioAtual)) <> 'S' then
        begin
          Informa('Você não tem permissão para cancelar este cupom!') ;
          exit ;
        end ;
      if (ECFAtual <> '') and (PortaECFAtual <> '') then
        begin
          try
            CancelarCupomFiscal(ECFAtual, PortaECFAtual) ;
            Informa('Cupom Cancelado !') ;
          except
            Informa('Problemas ao cancelar cupom !') ;
          end ;
        end;
    end;

    if (SQLOperacaoCaixaOPCXA5SIGLA.Value <> 'CANVV') and
       (SQLOperacaoCaixaOPCXA5SIGLA.Value <> 'CANVD') and
       (SQLOperacaoCaixaOPCXA5SIGLA.Value <> 'ESTRC') and  // Estorno Recto Crediario
       (SQLOperacaoCaixaOPCXA5SIGLA.Value <> 'ESTTR') and  // Estorno Troco Inicial
       (SQLOperacaoCaixaOPCXA5SIGLA.Value <> 'CANVP') then
      begin
        if (ComboNumerario.Text <> '') and (ComboNumerario.Visible) then
          Numerario := ComboNumerario.KeyValue ;
        if EditValor.Value > 0 then
          GravaMovimentoCaixa( DM.SQLTotalizadorCaixa,
                               DM.SQLTotalizar,
                               EmpresaPadrao,//WEMPRICOD
                               IntToStr(TerminalAtual),//WTERMICOD
                               FormatDateTime('mm/dd/yyyy', Now),//WMVCIXDMOV
                               Numerario,//WNUMEICOD
                               EditTipMov.Text,//WOPCXICOD
                               IntToStr(DM.UsuarioAtual),//WUSUAICOD
                               '',//WMVCIXA15DOCORIG
                               EditValor.Value,//WMOVICAIXN2VLR
                               0,//WMOVICAIXN2VLRJURO
                               0,//WMOVICAIXN2VLRMULTA
                               0,//WMOVICAIXN2VLRDEC
                               'Null',//WMOVICAIXA6NUMCUPOM
                               SQLOperacaoCaixaOPCXCDEBITOCREDITO.Value,//WTIPO
                               DBEditObs.Text,//WMVCXA255HIST
                               'N',
                               '');
      end ;

  // LANCA ESTORNO DO TROCO INICIAL
    if (SQLOperacaoCaixaOPCXA5SIGLA.Value = 'ESTTR') then
      begin
        if (ComboNumerario.Text <> '') and (ComboNumerario.Visible) then
          Numerario := ComboNumerario.KeyValue ;
        if EditValor.Value > 0 then
          GravaMovimentoCaixa( DM.SQLTotalizadorCaixa,
                               DM.SQLTotalizar,
                               EmpresaPadrao,//WEMPRICOD
                               IntToStr(TerminalAtual),//WTERMICOD
                               FormatDateTime('mm/dd/yyyy', Now),//WMVCIXDMOV
                               Numerario,//WNUMEICOD
                               '4',//WOPCXICOD
                               IntToStr(DM.UsuarioAtual),//WUSUAICOD
                               '',//WMVCIXA15DOCORIG
                               EditValor.Value,//WMOVICAIXN2VLR
                               0,//WMOVICAIXN2VLRJURO
                               0,//WMOVICAIXN2VLRMULTA
                               0,//WMOVICAIXN2VLRDEC
                               'Null',//WMOVICAIXA6NUMCUPOM
                               SQLOperacaoCaixaOPCXCDEBITOCREDITO.Value,//WTIPO
                               DBEditObs.Text,//WMVCXA255HIST
                               'R',
                               '');
      end ;

  // EMITE VALE COMPRAS
  if SQLOperacaoCaixaOPCXA5SIGLA.Value = 'VLCPA' then
    begin
      if EditValor.Value > 0 then
        begin
          if DBEditObs.Text <> '' then
            begin
              if ComboNumerario.Value <> '' then
                begin
                  TotNumECF := '01';
                  if ECFAtual <>  '' then
                    begin
                      if (ECFAtual <> 'BEMATECH MP-20 FI') then
                        begin
                          TotNumECF := RetornaTotalizadorNumerarioECF(Ecf_ID, ComboNumerario.KeyValue);
                          EmiteCNFNV(ECFAtual,PortaECFAtual,Ecf_CNFNV,'Vale Compras - ' + DBEditObs.Text,ComboNumerario.Value,EditValor.Value);
                          if ECFAtual = 'SIGTRON FS345' then
                            EnviaFP_Sigtron_FS345(TotNumECF,DBEditObs.Text,EditValor.Value);
                        end;
                    end
                  else
                    begin
                      if ImpNaoFiscalAtual <> '' then
                        begin
                          try
                            if AbrirPortaNAOFISCAL(ImpNaoFiscalAtual,PortaImpNaoFiscalAtual) then
                              if ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,DM.SQLEmpresaEMPRA60NOMEFANT.AsString+chr(10),3,0,0,0,1) then
                                begin
                                  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'-----------------------------------------------'+chr(10),2,0,0,0,0);
                                  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,' DOCUMENTO NAO FISCAL'+chr(10),2,0,0,1,0);
                                  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'     VALE COMPRAS '+chr(10),2,0,0,1,0);
                                  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'-----------------------------------------------'+chr(10),2,0,0,0,0);
                                  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Valor....: R$ ' + FormatFloat('#,##0.00',EditValor.Value) + ' ' + DBEditObs.Text + chr(10),2,0,0,0,0);
                                  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'-----------------------------------------------'+chr(10),2,0,0,0,0);
                                  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Dt: ' + FormatDateTime('dd/mm/yyyy hh:nn',Now) +
                                                                                    '  Op: '+ Copy(UsuarioAtualNome,1,20) + chr(10),2,0,0,0,0);
                                  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'-----------------------------------------------'+chr(10),2,0,0,0,0);
                                  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                                  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                                  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                                  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                                  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                                  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                                  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                                  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                                end;
                          except
                            on E:Exception do
                              begin
                                Informa('Problemas ao imprimir comprovante. ANOTE O ERRO: ' + #13 + E.Message);
                                Screen.Cursor := crDefault;
//                                Exit;
                              end;
                          end;
                          FecharPortaNAOFISCAL(ImpNaoFiscalAtual);
                        end;
                    end;
                end
              else
                begin
                  Informa('O numerário deve ser informado!');
                  Abort;
                  Exit;
                end;
            end
          else
            begin
              Informa('A Observação deve ser informada!');
              Abort;
              Exit;
            end;
        end
      else
        begin
          Informa('O Valor deve ser maior que zero!');
          Abort;
          Exit;
        end;
    end;

  if (SQLOperacaoCaixaOPCXCAUTENTICA.Value = 'S') and
     (SQLOperacaoCaixaOPCXCSOLICVLR.Value = 'S') and
     (EditValor.Value > 0) then
    begin
      if ECFAtual <> '' then
        Autenticacao( ECFAtual, //Impressora
                      PortaECFAtual,//Porta,
                      Ecf_CNFNV,//Identificador
                      Ecf_ID,//Ecf_ID
                      DBEditObs.Text,//Documento
                      '',//Parcela
                      'Diversos',
                      EditValor.Value,//Valor
                      StrToInt(ComboNumerario.Value),'')//NumerarioCod
      else
        begin
          if DM.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString <> '' then
            begin
              if Pergunta('SIM', 'DESEJA IMPRIMIR COMPROVANTE ?') then
                begin
                  ReportAutentic.Print;
                  if Pergunta('SIM', 'DESEJA IMPRIMIR SEGUNDA VIA DO COMPROVANTE ?') then
                    ReportAutentic.Print;
                end;
            end;
        end;
    end ;
  //ABERTURA DO CAIXA
  if SQLOperacaoCaixaOPCXA5SIGLA.Value = 'ABERT' Then {Abertura Caixa}
    begin
      if DM.SQLUsuario.FieldByName('USUACPERMLEITX').AsString <> 'S' then
        if Pergunta('SIM','Você não tem permissão para realizar Abertura de Caixa! Deseja Informar Outro Usuário?') then
          begin
            RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACPERMLEITX',InfoRetornoUser);
            if RetornoCampoUsuario <> 'S' then
              Exit;
          end
        else
          Exit;

       //GRAVAR STATUS DE ABERTURA DO CAIXA NA TABELA TERMINAL(PDV)
       DM.SQLTemplate.Close;
       DM.SQLTemplate.SQL.Clear;
       DM.SQLTemplate.SQL.Add('update TERMINAL');
       DM.SQLTemplate.SQL.Add('set');
       DM.SQLTemplate.SQL.Add('TERMCSTATUSCAIXA = "A",');
       DM.SQLTemplate.SQL.Add('TERMDSTATUSCAIXA = "' + FormatDateTime('mm/dd/yyyy', EditData.Date) + '"');
       DM.SQLTemplate.SQL.Add('where');
       DM.SQLTemplate.SQL.Add('TERMICOD = ' + IntToStr(TerminalAtual));
       DM.SQLTemplate.ExecSQL;

       DM.SQLTerminalAtivo.Close;
       DM.SQLTerminalAtivo.Open;

       TerminalAtualData := DM.SQLTerminalAtivo.FieldByName('TERMDSTATUSCAIXA').AsString;

//  Retirado por Adilson 24/06/2006 pq nao estou mais calculando os totalizadores ao final de cada
//  Op. do Checkout, com isso nao preciso me preocupar em criar os totalizadores pois serao criados na
//  rotina de recalculo do movimento do dia, ficando mais rapido o fechamento da venda
//       GerarTotalizadoresDiarios;

       if ECFAtual = 'CORISCO CT7000 V3' then
         begin
           AbreECF_Corisco_CT3000_V3;
         end;

       if ECFAtual = 'BEMATECH MP-20 FI II' then
         begin
           DM.SQLTemplate.Close;
           DM.SQLTemplate.SQL.Clear;
           DM.SQLTemplate.SQL.Add('select * from NUMERARIO');
           DM.SQLTemplate.SQL.Add('order by NUMEICOD');
           DM.SQLTemplate.Open;
           DM.SQLTemplate.First;
           AbrirPortaECF(ECFAtual,PortaECFAtual);
           while not DM.SQLTemplate.EOF do
           begin
             try
               Envia_FP_Bematech_MP20_FI_II(DM.SQLTemplate.FieldByName('NUMEA30DESCR').Value);
             except
             end;
             DM.SQLTemplate.Next;
           end;
           FecharPortaECF(ECFAtual,PortaECFAtual);
         end;

       if ECFAtual = 'BEMATECH MP-25 FI' then
         begin
           DM.SQLTemplate.Close;
           DM.SQLTemplate.SQL.Clear;
           DM.SQLTemplate.SQL.Add('select * from NUMERARIO');
           DM.SQLTemplate.SQL.Add('order by NUMEICOD');
           DM.SQLTemplate.Open;
           DM.SQLTemplate.First;
           AbrirPortaECF(ECFAtual,PortaECFAtual);
           while not DM.SQLTemplate.EOF do
           begin
             try
               EnviaFP_Bematech_MP25_FI(DM.SQLTemplate.FieldByName('NUMEA30DESCR').Value,0);
             except
             end;
             DM.SQLTemplate.Next;
           end;
           FecharPortaECF(ECFAtual,PortaECFAtual);
         end;

       if (ECFAtual <> '') and (PortaECFAtual <> '') then
         if Pergunta('NÃO', '* * * DESEJA IMPRIMIR UMA LEITURA X ? * * *') then
           begin
             MostraMsg('Aguarde, emitindo Leitura X...') ;
             Leitura_X(ECFAtual, PortaECFAtual) ;
           end ;
    end;

  //ABRIR GAVETA
  if SQLOperacaoCaixaOPCXA5SIGLA.Value = 'ABGAV' Then
    begin
      if (PortaECFAtual <> '') and (ECFAtual <> '') then
        AbrirGaveta(ECFAtual, PortaECFAtual);
      if (ImpNaoFiscalAtual <> '') then
        AbrirGaveta_NAOFISCAL(ImpNaoFiscalAtual,PortaImpNaoFiscalAtual);
    end ;
  //CANCELAMENTO VENDA / CUPOM
  if (SQLOperacaoCaixaOPCXA5SIGLA.Value = 'CANVV') or (SQLOperacaoCaixaOPCXA5SIGLA.Value = 'CANVP')
    or (SQLOperacaoCaixaOPCXA5SIGLA.Value = 'CANVD') Then
    begin
      InfoRetornoUser.CampoRetorno := '';
      InfoRetornoUser.CodUsuarioAutenticado  := 0;
      InfoRetornoUser.NomeUsuarioAutenticado := '';
      if AutenticaUsuario(UsuarioAtualNome,'USUACCANCVENDA',InfoRetornoUser) <> 'S' then
        begin
          Application.MessageBox('Você não tem permissão para cancelar vendas!','Informa',MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_DEFBUTTON1 + MB_ICONERROR);
          Exit;
        end;
      if Application.MessageBox('Você deseja consultar os cupons emitidos hoje ?','Pergunta',MB_YESNO + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_DEFBUTTON1 + MB_ICONQUESTION)= IdYes then
        begin
          //Abrir tela de consulta de cupom
          Application.CreateForm(TFormTelaConsultaRapidaCupom,FormTelaConsultaRapidaCupom);
          FormTelaConsultaRapidaCupom.SQLCupom.Close;
          FormTelaConsultaRapidaCupom.SQLCupom.MacroByName('DataEmissao').Value := 'Cupom.CUPODEMIS = "' + FormatDateTime('mm/dd/yyyy',Now) + '"';
          FormTelaConsultaRapidaCupom.SQLCupom.MacroByName('Empresa').Value     := 'Cupom.EMPRICOD  = ' + EmpresaPadrao;
          FormTelaConsultaRapidaCupom.SQLCupom.MacroByName('Terminal').Value    := 'Cupom.TERMICOD  = ' + IntToStr(TerminalAtual);
          FormTelaConsultaRapidaCupom.SQLCupom.Open;
          FormTelaConsultaRapidaCupom.ShowModal;
          if FormTelaConsultaRapidaCupom.ModalResult = MrOk then
            Docum := FormTelaConsultaRapidaCupom.SQLCupomCUPOA13ID.AsString
          else
            Docum := '';
          FormTelaConsultaRapidaCupom.Close;
        end
      else
        Docum := InputBox('Cancelamento de cupom', 'Informe o Documento que deseja cancelar...', '');

      if Length(Docum) <= 0 then
        begin
          InformaG('Operação Cancelada');
          Abort;
        end;

      if Pos('.', Docum) > 0 then
        Docum := ConverteCodigo(Docum);

      if Pergunta('NÃO', '* * * TEM CERTEZA QUE DESEJA CANCELAR ESTE CUPOM ? * * *') then
      begin
        // Recupera Nro do Ult. Cupom Fiscal Emitido.
        DM.SQLTemplate.Close;
        DM.SQLTemplate.SQL.Clear;
        DM.SQLTemplate.SQL.Add('select Max(CUPOINRO) as ULTCUPOM from CUPOM');
        DM.SQLTemplate.Open;
        NroUltCupom := DM.SQLTemplate.FieldByName('ULTCUPOM').AsInteger;
        ///////////////////////////

        DM.SQLTemplate.Close;
        DM.SQLTemplate.SQL.Clear;
        DM.SQLTemplate.SQL.Add('select * from CUPOM');
        DM.SQLTemplate.SQL.Add('where CUPOA13ID = "' + Docum + '"');
        DM.SQLTemplate.Open;
        if DM.SQLTemplate.EOF then
        begin
          Informa('Documento não encontrado !');
          exit;
        end;

        if DM.SQLTemplate.Fieldbyname('TERMICOD').AsInteger <> TerminalAtual then
        begin
          Informa('Você está tentado cancelar um Documento que não foi emitido no terminal ativo.' + #13 +
                  'Você deve cancelá-lo no terminal "' + SQLLocate('TERMINAL', 'TERMICOD', 'TERMA60DESCR', DM.SQLTemplate.Fieldbyname('TERMICOD').AsString) + '".');
          exit;
        end;

        if DM.SQLTemplate.Fieldbyname('CUPODEMIS').AsString <> TerminalAtualData then
        begin
          Informa('Você está tentado cancelar um Documento que não foi emitido na mesma data do terminal ativo. Use a consulta de cupom para cancelá-lo !');
          exit;
        end;

        if DM.SQLTemplate.Fieldbyname('CUPOCSTATUS').AsString = 'C' then
        begin
          Informa('Este cupom já está cancelado !');
          exit;
        end;

        MostraMsg('Aguarde, cancelando venda...');
        if (ECFAtual <> '') and
           (PortaECFAtual <> '') then //and
           //(DM.SQLTemplate.Fieldbyname('CUPOINRO').AsInteger = NroUltCupom) then
        begin
          CancelarCupomFiscal(ECFAtual, PortaECFAtual);
          if CancelamentoCupom(Docum, IntToStr(DM.UsuarioAtual)) then
            Informa('Cupom ' + Docum + ' cancelado com sucesso !')
          else
            Informa('Problemas ao cancelar cupom !');
        end
        else begin
          if CancelamentoCupom(Docum, IntToStr(DM.UsuarioAtual)) then
            Informa('Cupom ' + Docum + ' cancelado com sucesso !')
          else
            begin
              Informa('Problemas ao cancelar cupom !');
              Exit;
            end;
        end;

        //ESTORNAR MOVIMENTOS DO CAIXA DOS NUMERARIOS DO CUPOM
       //Comentario comeca aqui::::>>>
        SQLMovimentoCaixa.Close;
        SQLMovimentoCaixa.SQL.Clear;
        SQLMovimentoCaixa.SQL.Add('select * from MOVIMENTOCAIXA');
        SQLMovimentoCaixa.SQL.Add('where MVCXA15DOCORIG = "' + Docum + '"');
//        SQLMovimentoCaixa.SQL.Add(' and NUMEICOD > 0');
        SQLMovimentoCaixa.Open;
        while not SQLMovimentoCaixa.EOF do
        begin
          if SQLMovimentoCaixa.FieldByName('MVCXN2VLRCRED').Value > 0 then
          begin
            VlrEstorn := SQLMovimentoCaixa.FieldByName('MVCXN2VLRCRED').Value;
            Tipo      := 'D';
          end;

          if SQLMovimentoCaixa.FieldByName('MVCXN2VLRDEB').Value > 0 then
          begin
            VlrEstorn := SQLMovimentoCaixa.FieldByName('MVCXN2VLRDEB').Value;
            Tipo      := 'C';
          end ;
          if SQLMovimentoCaixa.FieldByName('OPCXICOD').Value > 0 then
            OperCx := SQLMovimentoCaixa.FieldByName('OPCXICOD').AsString
          else
            OperCx := 'Null';

          GravaMovimentoCaixa( DM.SQLTotalizadorCaixa,
                               DM.SQLTotalizar,
                               EmpresaPadrao,
                               IntToStr(TerminalAtual),
                               FormatDateTime('mm/dd/yyyy', Now),
                               SQLMovimentoCaixa.FieldByName('NUMEICOD').AsString,
                               {EditTipMov.Text,}OperCx,
                               IntToStr(DM.UsuarioAtual),
                               Docum,
                               VlrEstorn,
                               0,//WMOVICAIXN2VLRJURO
                               0,//WMOVICAIXN2VLRMULTA
                               0,//WMOVICAIXN2VLRDEC
                               'Null',//WMOVICAIXA6NUMCUPOM
                               Tipo,// Credito
                               'ESTORNO ' + SQLMovimentoCaixa.FieldByName('MVCXA255HIST').AsString + '  ' + DBEditObs.Text,
                               'R',
                               '');
          SQLMovimentoCaixa.Next;
        end;
      SQLMovimentoCaixa.Close;
    end;
  end;
  //FECHAMENTO DO CAIXA
  if SQLOperacaoCaixaOPCXA5SIGLA.Value = 'FECHA' Then {Fechamento Caixa}
    begin
      if DM.SQLUsuario.FieldByName('USUACPERMREDZ').AsString <> 'S' then
        if Pergunta('SIM','Você não tem permissão para realizar Fechamento de Caixa! Deseja Informar Outro Usuário?') then
          begin
            RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACPERMREDZ',InfoRetornoUser);
            if RetornoCampoUsuario <> 'S' then
              Exit;
          end
        else
          Exit;

       //GRAVAR STATUS DE FECHAMENTO DO CAIXA NA TABELA TERMINAL(PDV)
       DM.SQLTemplate.Close;
       DM.SQLTemplate.SQL.Clear;
       DM.SQLTemplate.SQL.Add('SELECT * FROM FECHAMENTOCAIXA WHERE FECXDDATAMOV  = ' + '"' + FormatDateTime('mm/dd/yyyy',Dm.SQLTerminalAtivoTERMDSTATUSCAIXA.AsDateTime)+ '"');
       DM.SQLTemplate.SQL.Add('AND USUAICOD = ' + IntToStr(Dm.UsuarioAtual));
       DM.SQLTemplate.Open;
{       if DM.SQLTemplate.IsEmpty then
         begin
           Application.CreateForm(TFormTelaFechamentoCaixa,FormTelaFechamentoCaixa);
           FormTelaFechamentoCaixa.ShowModal;
         end
       else
         InformaG('Já foram informados os dados de fechamento do caixa para este operador...' + #13 + 'Por favor contate seu administrador !');}

       DM.SQLTemplate.Close ;
       DM.SQLTemplate.SQL.Clear ;
       DM.SQLTemplate.SQL.Add('update TERMINAL') ;
       DM.SQLTemplate.SQL.Add('set') ;
       DM.SQLTemplate.SQL.Add('TERMCSTATUSCAIXA = "F"') ;
       //DM.SQLTemplate.SQL.Add('TERMDSTATUSCAIXA = "' + FormatDateTime('mm/dd/yyyy', EditData.Date) + '"') ;
       DM.SQLTemplate.SQL.Add('where') ;
       DM.SQLTemplate.SQL.Add('TERMICOD = ' + IntToStr(TerminalAtual)) ;
       DM.SQLTemplate.ExecSQL ;
       // FECHAR E REABRIR O TERMINALATIVO, SO PRA ATUALIZAR AS CONFIGURACOES
       DM.SQLTerminalAtivo.Close;
       DM.SQLTerminalAtivo.Open;

       if (ECFAtual <> '') and (PortaECFAtual <> '') then
         if Pergunta('NAO','DESEJA IMPRIMIR A REDUCAO Z AGORA ?' + #13 +'Esta IMPRESSAO implicará no fechamento diário da impressora fiscal, portanto mais nenhum cupom fiscal poderá ser impresso hoje !') then
           begin
             MostraMsg('Aguarde, emitindo Redução Z...') ;
             Reducao_Z(ECFAtual, PortaECFAtual) ;
           end;
    end ;

  if SQLOperacaoCaixaOPCXA5SIGLA.Value = 'ESTRC' Then {Estorno Recto.Crediário}
    begin
      EstornoRecebimento ;
    end ;

  MoviCaixConcluido := True ;
  Close ;
end;

procedure TFormTelaMovimentoCaixa.FormKeyPress(Sender: TObject; var Key: Char);
Var
  Objeto:TComponent;
begin
  if Key = char(13) Then
    begin
      Objeto:=(Sender as TForm).ActiveControl;
      If (Objeto is TRxDBLookUpCombo) and
         (Objeto as TRxDBLookUpCombo).IsDropDown Then
      begin
        (Objeto as TRxDBLookUpCombo).CloseUp(True);
        Application.ProcessMessages;
      end;

      Key := CHR(0) ;
      Perform(Wm_NextDlgCtl, 0, 0) ;
    end;
end;

procedure TFormTelaMovimentoCaixa.MostraMsg(Mensagem : string) ;
begin
  LblMsg.Caption := Mensagem ;
  LblMsg.Refresh ;
end ;

procedure TFormTelaMovimentoCaixa.EditTipMovExit(Sender: TObject);
begin
  if EditTipMov.Text <> '' then
    ComboOperacaoCaixa.Value := EditTipMov.Text ;
end;

procedure TFormTelaMovimentoCaixa.ComboOperacaoCaixaExit(Sender: TObject);
begin
  if ComboOperacaoCaixa.Text <> '' then
    EditTipMov.Text := ComboOperacaoCaixa.Value ;

  LblValor.Visible       := (SQLOperacaoCaixaOPCXCSOLICVLR.Value = 'S') ;
  EditValor.Visible      := (SQLOperacaoCaixaOPCXCSOLICVLR.Value = 'S') ;
  LblNumerario.Visible   := (SQLOperacaoCaixaOPCXCAUTENTICA.Value = 'S') ;
  ComboNumerario.Visible := (SQLOperacaoCaixaOPCXCAUTENTICA.Value = 'S') ;
  if SQLOperacaoCaixaOPCXA5SIGLA.AsString = 'ENCER' then
    begin
      PainelBomba.Visible := True;
      SQLEncerranteDiario.Close;
      SQLEncerranteDiario.MacroByName('MEmpresa').Value := 'EMPRICOD  = ' + EmpresaPadrao;
      SQLEncerranteDiario.MacroByName('MData').Value    := 'ENDIDDATA = "' + FormatDateTime('mm/dd/yyyy',Date) + '"';
      SQLEncerranteDiario.MacroByName('MUsuario').Value := 'USUAICOD  = ' + IntToStr(DM.UsuarioAtual);
      SQLEncerranteDiario.Open;
      if SQLEncerranteDiario.IsEmpty then
        begin
          SQLBombaAux.Close;
          SQLBombaAux.MacroByName('MEmpresa').Value := 'EMPRICOD  = ' + EmpresaPadrao;
          SQLBombaAux.Open;
          if not SQLBombaAux.IsEmpty then
            begin
              SQLBombaAux.First;
              while not SQLBombaAux.eof do
                begin
                  SQLEncerranteDiario.Append;
                  SQLEncerranteDiarioEMPRICOD.Value        := SQLBombaAuxEMPRICOD.Value;
                  SQLEncerranteDiarioUSUAICOD.Value        := Dm.UsuarioAtual;
                  SQLEncerranteDiarioENDIDDATA.AsString    := FormatDateTime('dd/mm/yyyy',Now);
                  SQLEncerranteDiarioBOMBICOD.Value        := SQLBombaAuxBOMBICOD.Value;
                  SQLEncerranteDiarioBombaDescricao.Value  := SQLBombaAuxBOMBA30DESCR.Value;
                  SQLEncerranteDiarioENDIIENCERINI.Value   := 0;
                  SQLEncerranteDiarioENDIIENCERFIM.Value   := 0;
                  SQLEncerranteDiarioENDIIAFERICAO.Value   := 0;
                  SQLEncerranteDiarioREGISTRO.Value        := Now;
                  SQLEncerranteDiarioPENDENTE.Value        := 'S';
                  SQLEncerranteDiario.Post;
                  SQLBombaAux.Next;
                end;
              SQLEncerranteDiario.Close;
              SQLEncerranteDiario.MacroByName('MEmpresa').Value := 'EMPRICOD  = ' + EmpresaPadrao;
              SQLEncerranteDiario.MacroByName('MData').Value    := 'ENDIDDATA = "' + FormatDateTime('mm/dd/yyyy',Now) + '"';
              SQLEncerranteDiario.MacroByName('MUsuario').Value := 'USUAICOD  = ' + IntToStr(DM.UsuarioAtual);
              SQLEncerranteDiario.Open;
            end;
        end;
    end
  else
    PainelBomba.Visible := False;
end ;

procedure TFormTelaMovimentoCaixa.GerarTotalizadoresDiarios ;
begin
  SQLTotalizadorCaixa.Open ;
  while not SQLTotalizadorCaixa.EOF do
  begin
    DM.SQLTemplate.Close ;
    DM.SQLTemplate.SQL.Clear ;
    DM.SQLTemplate.SQL.Add('insert into TOTALIZADORDIARIOCAIXA') ;
    DM.SQLTemplate.SQL.Add('(EMPRICOD, TERMICOD, TODIDMOV, USUAICOD, TOTAICOD,') ;
    DM.SQLTemplate.SQL.Add('TODIN2VLRDEBITO, TODIN2VLRCREDITO, PENDENTE, REGISTRO)') ;
    DM.SQLTemplate.SQL.Add('Values(') ;
    DM.SQLTemplate.SQL.Add(EmpresaPadrao + ', ') ;
    DM.SQLTemplate.SQL.Add(IntToStr(TerminalAtual) + ', ') ;
    DM.SQLTemplate.SQL.Add('"' + FormatDateTime('mm/dd/yyyy', StrToDateTime(TerminalAtualData)) + '", ') ;
    DM.SQLTemplate.SQL.Add(IntToStr(DM.UsuarioAtual) + ', ') ;
    DM.SQLTemplate.SQL.Add(SQLTotalizadorCaixaTOTAICOD.AsString + ', ') ;
    DM.SQLTemplate.SQL.Add('0, 0, "S", "' + FormatDateTime('mm/dd/yyyy hh:nn:ss', Now) + '")' ) ;
    try
      DM.SQLTemplate.ExecSQL ;
    except
    end ;

    SQLTotalizadorCaixa.Next ;
  end ;
end ;

procedure TFormTelaMovimentoCaixa.EditDataEnter(Sender: TObject);
begin
  if EditData.Date = 0 then
  begin
    EditData.Date := DM.SQLTerminalAtivoTERMDSTATUSCAIXA.Value ;
  end ;
end;

function  TFormTelaMovimentoCaixa.EstornoRecebimento : boolean ;
var
  NumDoc, IDContasReceber,
  Parc,
  CodRec : string ;
  TotalRecto : Double;
begin
  EstornoRecebimento := false ;
  TotalRecto := 0;

  NumDoc := InputBox('Estorno Recto.Crediário', 'Informe o Número do Documento', '');
  Parc   := InputBox('Estorno Recto.Crediário', 'Informe a Parcela', '');

  if Pos('.', NumDoc) > 0 then
    NumDoc := ConverteCodigo(NumDoc) ;

  //SETAR A VARIÁVEL NUMDOC COM O ID DO CUPOM
  if Length(NumDoc) = 10 then
    NumDoc := SQLLocate('CUPOM', 'CUPOA20CODANT', 'CUPOA13ID', '"' + NumDoc + '"') ;

  if Length(NumDoc) = 13 then
    IDContasReceber := NumDoc;

  if Length(NumDoc) = 13 then
    NumDoc := SQLLocate('CUPOM', 'CUPOA13ID', 'CUPOA13ID',  '"' + NumDoc + '"') ;

  if NumDoc = '' then
    NumDoc := SQLLocate('CONTASRECEBER', 'CTRCA13ID', 'CTRCA13ID',  '"' + IDContasReceber + '"') ;

  if NumDoc = '' then
  begin
    Informa('Documento não encontrado !') ;
    exit ;
  end ;
  //SETAR A VARIÁVEL NUMDOC COM O ID DO CUPOM
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select * from CONTASRECEBER') ;
  DM.SQLTemplate.SQL.Add('where CUPOA13ID = "' + NumDoc + '"') ;
  DM.SQLTemplate.SQL.Add('and   CTRCINROPARC = ' + Parc) ;
  DM.SQLTemplate.Open ;
  if DM.SQLTemplate.EOF then
  begin
  //SETAR A VARIÁVEL NUMDOC COM O ID DO CONTAS A RECEBER
    DM.SQLTemplate.Close ;
    DM.SQLTemplate.SQL.Clear ;
    DM.SQLTemplate.SQL.Add('select * from CONTASRECEBER') ;
    DM.SQLTemplate.SQL.Add('where CTRCA13ID = "' + NumDoc + '"') ;
    DM.SQLTemplate.SQL.Add('and   CTRCINROPARC = ' + Parc) ;
    DM.SQLTemplate.Open ;
  end ;

  if DM.SQLTemplate.EOF then
  begin
    Informa('Não foi encontrado o Contas à Receber deste Cupom !') ;
    exit ;
  end ;

  NumDoc := DM.SQLTemplate.FieldByName('CTRCA13ID').Value ;
  //VERIFICAR SE TEM ALGUM RECEBIMENTO
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select * from RECEBIMENTO') ;
  DM.SQLTemplate.SQL.Add('where CTRCA13ID = "' + NumDoc + '"') ;
  DM.SQLTemplate.Open ;
  if DM.SQLTemplate.EOF then
  begin
    Informa('Não foi encontrado nenhum pagamento deste Contas à Receber !') ;
    exit ;
  end ;

  //COLOCAR NO ULTIMO REGISTRO DE RECEBIMENTO CASO TENHA RECEBIMENTOS PARCIAIS
  //ESTORNAR SOMENTE O ÚLTIMO
  DM.SQLTemplate.Last ;
  CodRec := DM.SQLTemplate.FieldByName('RECEICOD').Value ;
  TotalRecto := DM.SQLTemplate.FieldByName('RECEN2VLRRECTO').AsFloat +
                DM.SQLTemplate.FieldByName('RECEN2VLRJURO').AsFloat  +
                DM.SQLTemplate.FieldByName('RECEN2VLRMULTA').AsFloat -
                DM.SQLTemplate.FieldByName('RECEN2DESC').AsFloat;

  if Pergunta('NAO','Deseja realmente estornar este recebimento ?' + #13 +
              'Valor : R$ ' + FormatCurr('#,##0.00',DM.SQLTemplate.FieldByName('RECEN2VLRRECTO').AsFloat) + #13 +
              'Juros : R$ ' + FormatCurr('#,##0.00',DM.SQLTemplate.FieldByName('RECEN2VLRJURO').AsFloat)  + #13 +
              'Multa : R$ ' + FormatCurr('#,##0.00',DM.SQLTemplate.FieldByName('RECEN2VLRMULTA').AsFloat) + #13 +
              'Desc  : R$ ' + FormatCurr('#,##0.00',DM.SQLTemplate.FieldByName('RECEN2DESC').AsFloat)     + #13 +
              'TOTAL : R$ ' + FormatCurr('#,##0.00',TotalRecto) + #13 +
              'Contrato: ' + NumDoc + #13 +
              'Parcela: ' + Parc) then
    begin
      // OBTER VALORES PARA GRAVAR NO MOVIMENTO DO CAIXA
      SQLEstornoCrediario.Close ;
      SQLEstornoCrediario.SQL.Clear ;
      SQLEstornoCrediario.SQL.Add('Select * from RECEBIMENTO') ;
      SQLEstornoCrediario.SQL.Add('where CTRCA13ID = "' + NumDoc + '"') ;
      SQLEstornoCrediario.SQL.Add('and   RECEICOD  = ' + CodRec) ;
      SQLEstornoCrediario.Open ;

      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('delete from RECEBIMENTO') ;
      DM.SQLTemplate.SQL.Add('where CTRCA13ID = "' + NumDoc + '"') ;
      DM.SQLTemplate.SQL.Add('and   RECEICOD  = ' + CodRec) ;
      DM.SQLTemplate.ExecSQL ;

      AtualizaTotaisCabecalhoContasReceber(NumDoc);

      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('update CONTASRECEBER') ;
      DM.SQLTemplate.SQL.Add('set CTRCDESTORNO = "' + FormatDateTime('mm/dd/yyyy hh:mm:ss', Now) + '"');
      DM.SQLTemplate.SQL.Add('where CTRCA13ID = "' + NumDoc + '"') ;
      DM.SQLTemplate.ExecSQL ;

      //LANCA NO CAIXA
      GravaMovimentoCaixa( DM.SQLTotalizadorCaixa,
                           DM.SQLTotalizar,
                           EmpresaPadrao,//WEMPRICOD
                           IntToStr(TerminalAtual),//WTERMICOD
                           FormatDateTime('mm/dd/yyyy', Now),//WMVCIXDMOV
                           ComboNumerario.KeyValue,//WNUMEICOD
                           '25',//WOPCXICOD
                           IntToStr(DM.UsuarioAtual),//WUSUAICOD
                           NumDoc+'/'+Parc,//WMVCIXA15DOCORIG
                           TotalRecto,//WTotal Recebido
                           SQLEstornoCrediario.FieldByName('RECEN2VLRJURO').AsFloat,//WMOVICAIXN2VLRJURO
                           SQLEstornoCrediario.FieldByName('RECEN2VLRMULTA').AsFloat,//WMOVICAIXN2VLRMULTA
                           SQLEstornoCrediario.FieldByName('RECEN2DESC').AsFloat,//WMOVICAIXN2VLRDEC
                           'Null',//WMOVICAIXA6NUMCUPOM
                           SQLOperacaoCaixaOPCXCDEBITOCREDITO.Value,//WTIPO
                           DBEditObs.Text,//WMVCXA255HIST
                           'R',
                           '');
      EstornoRecebimento := true ;
      //REGISTRA EXCLUSAO
      Dm.RegistraExclusao('RECEBIMENTO',SQLEstornoCrediario);

      Informa('Estorno efetuado com sucesso !') ;
    end
  else
    Informa('Estorno Cancelado Pelo Usuário!') ;
end ;

procedure TFormTelaMovimentoCaixa.DBEditObsExit(Sender: TObject);
begin
  if (SQLOperacaoCaixaOPCXA5SIGLA.AsString = 'CANVV') and (DBEditObs.Text = '') then
    begin
      Informa('Você deve especificar um movito para este cancelamento !');
      DBEditObs.SetFocus;
      Abort;
    end;
end;

procedure TFormTelaMovimentoCaixa.ReportAutenticBeforePrint(
  Sender: TObject);
begin
  Empresa.Caption   := EmpresaAtualNome;
  Data.Caption      := FormatDateTime('dd/mm/yyyy',EditData.Date);
  Operacao.Caption  := ComboOperacaoCaixa.Text;
  OBS.Text          := DBEditObs.Text;
  Valor.Caption     := FormatFloat('#,##0.00',EditValor.Value);
  Numerario.Caption := ComboNumerario.Text;
  Operador.Caption  := UsuarioAtualNome;
end;

procedure TFormTelaMovimentoCaixa.FormShow(Sender: TObject);
begin
  EditTipMov.SetFocus;
end;

procedure TFormTelaMovimentoCaixa.EditEncerranteExit(Sender: TObject);
begin
  BtnOK.SetFocus;
end;

procedure TFormTelaMovimentoCaixa.SQLEncerranteDiarioBeforePost(
  DataSet: TDataSet);
begin
  Case DataSet.State Of
    DsInsert: dm.CodigoAutomatico('ENCERRANTEDIARIO', dsEncerrante, DataSet, 2, 0);
  end ;
end;

procedure TFormTelaMovimentoCaixa.DBGrigEncerrantesDiaEnter(
  Sender: TObject);
begin
  FormTelaMovimentoCaixa.KeyPreview := False;
end;

procedure TFormTelaMovimentoCaixa.DBGrigEncerrantesDiaExit(
  Sender: TObject);
begin
  if dsEncerrante.State in DSEditModes then
    SQLEncerranteDiario.Post;
  FormTelaMovimentoCaixa.KeyPreview := True;
end;

procedure TFormTelaMovimentoCaixa.SQLEncerranteDiarioCalcFields(
  DataSet: TDataSet);
begin
  if (SQLEncerranteDiarioENDIIENCERFIM.Value > 0) and (SQLEncerranteDiarioENDIIENCERINI.Value > 0) then
    SQLEncerranteDiarioResultado.Value :=  SQLEncerranteDiarioENDIIENCERFIM.Value -
                                           SQLEncerranteDiarioENDIIENCERINI.Value -
                                           SQLEncerranteDiarioENDIIAFERICAO.Value;
end;

end.

{
ABERT-Abertura Caixa
ABGAV-Abrir Gaveta
CANVD-Cancelamento Venda
DESRC-Desc.Recto.Crediário
DESVD-Desconto Venda
DFTRC-Diferença Troca Produtos
EVCHP-Entrada Venda Cheque-Pré
EVCNV-Entrada Venda Convênio
EVCRT-Entrada Venda Cartão
EVPRZ-Entrada Venda Prazo
FECHA-Fechamento Caixa
JURLP-Juros Recebto Lucros Perdas
JURRC-Juros Recto.Crediário
LEITX-Leitura X
MULLP-Multa Recebto Lucros Perdas
MULRC-Multa Recto.Crediário
RCCRD-Recto.Crediário
RECLP-Recto.Lucros Perdas
REDUZ-Redução Z
SANGR-Sangria
SUBBO-Substituição Bobina
SUPRI-Suprimento
TRCOP-Troca Operador
TROCO-Troco
VDCHQ-Venda Cheque-Pré
VDCRD-Venda Crediário
VDCRT-Venda Cartão Crédito
VDVIS-Venda à Vista
VLFUN-Vale Funcionário
ENCER-Encerrantes Postos Gasolina
}
