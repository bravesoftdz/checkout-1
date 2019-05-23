unit udmSiTef;

interface

uses
  SysUtils, Classes, ACBrBase, ACBrTEFD, Controls, IniFiles, Forms,
  ACBrDevice, ACBrTEFDClass, ACBrUtil , ACBrTEFDCliSiTef, TypInfo, DateUtils, Dialogs;

type
  tEstadoEcfSimulado = (tpsLivre, tpsVenda, tpsSubTotal, tpsTotalPagar, tpsPagamento, tpsRelatorio);
  tpPagamento = (tpDinheiro, tpCartao);
  
  TevMostrarMensagem = Procedure(pMsg:String) of object;
  TevGetMensagem = Function:String of object;

  TdmSiTef = class(TDataModule)      
    ACBrTEFD1: TACBrTEFD;
    procedure ACBrTEFD1CliSiTefExibeMenu(Titulo: String;
      Opcoes: TStringList; var ItemSelecionado: Integer;
      var VoltarMenu: Boolean);
    procedure ACBrTEFD1CliSiTefObtemCampo(Titulo: String; TamanhoMinimo,
      TamanhoMaximo, TipoCampo: Integer;
      Operacao: TACBrTEFDCliSiTefOperacaoCampo; var Resposta: String;
      var Digitado, VoltarMenu: Boolean);
    procedure ACBrTEFD1AguardaResp(Arquivo: String;
      SegundosTimeOut: Integer; var Interromper: Boolean);
    procedure ACBrTEFD1AntesCancelarTransacao(
      RespostaPendente: TACBrTEFDResp);
    procedure ACBrTEFD1AntesFinalizarRequisicao(Req: TACBrTEFDReq);
    procedure ACBrTEFD1BloqueiaMouseTeclado(Bloqueia: Boolean;
      var Tratado: Boolean);
    procedure ACBrTEFD1ComandaECF(Operacao: TACBrTEFDOperacaoECF;
      Resp: TACBrTEFDResp; var RetornoECF: Integer);
    procedure ACBrTEFD1ComandaECFAbreVinculado(COO, IndiceECF: String;
      Valor: Double; var RetornoECF: Integer);
    procedure ACBrTEFD1ComandaECFImprimeVia(
      TipoRelatorio: TACBrTEFDTipoRelatorio; Via: Integer;
      ImagemComprovante: TStringList; var RetornoECF: Integer);
    procedure ACBrTEFD1ComandaECFPagamento(IndiceECF: String;
      Valor: Double; var RetornoECF: Integer);
    procedure ACBrTEFD1ComandaECFSubtotaliza(DescAcre: Double;
      var RetornoECF: Integer);
    procedure ACBrTEFD1DepoisConfirmarTransacoes(
      RespostasPendentes: TACBrTEFDRespostasPendentes);
    procedure ACBrTEFD1ExibeMsg(Operacao: TACBrTEFDOperacaoMensagem;
      Mensagem: String; var AModalResult: TModalResult);
    procedure ACBrTEFD1InfoECF(Operacao: TACBrTEFDInfoECF;
      var RetornoECF: String);
    procedure ACBrTEFD1MudaEstadoReq(EstadoReq: TACBrTEFDReqEstado);
    procedure ACBrTEFD1MudaEstadoResp(EstadoResp: TACBrTEFDRespEstado);
    procedure ACBrTEFD1RestauraFocoAplicacao(var Tratado: Boolean);
    procedure DataModuleDestroy(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure ACBrTEFD1DepoisCancelarTransacoes(
      RespostasPendentes: TACBrTEFDRespostasPendentes);
  private
    fExecutandoADM:Boolean;
    fValor: Double;
    fFormaPagamento:Integer;
    estadoSimuladoEcf : tEstadoEcfSimulado;
    fSiTEFIniciado, fCancelado, fPodeCancelar, fIniciouPagamento, fCancelandoAoIniciar:Boolean;
    fevGetMensagem: TevGetMensagem;
    fevMostrarMensagemOperador: TevMostrarMensagem;
    fevMostrarInstrucoes: TevMostrarMensagem;
    fevMostrarMensagemCliente: TevMostrarMensagem;
    procedure ConfigurarCliSiTef;
    procedure InicializarSiTEF;

    Procedure MostrarInstrucoes(pMsg:String);
    Procedure MostrarMensagemOperador(pMsg:String);
    Procedure MostrarMensagemCliente(pMsg:String);
    Function GetMensagemOperador:String;
   	procedure ReImprimir(pValue:String);
    { Private declarations }
  public
    { Public declarations }
    property evMostrarInstrucoes: TevMostrarMensagem read fevMostrarInstrucoes write fevMostrarInstrucoes;
    property evMostrarMensagemCliente: TevMostrarMensagem read fevMostrarMensagemCliente write fevMostrarMensagemCliente;
    property evMostrarMensagemOperador: TevMostrarMensagem read fevMostrarMensagemOperador write fevMostrarMensagemOperador;
    property evGetMensagemOperador: TevGetMensagem read fevGetMensagem write fevGetMensagem;

    Function EfetuarPagamentoSiTef(FormaPagamento: Integer; Valor: Double; NumCOO:String): Boolean;
    procedure FecharSiTEF;
    procedure FinalizarSiTEF;
    procedure CancelarSiTEF;
    function AbrirADM: Boolean;
    procedure CancelarOperacao;
  end;

  const
    fMensagemPodeCancelar = 'Tecle "ESC" para cancelar.';
    fTituloCondicaoPagamento = 'Selecione a forma de pagamento';

var
  dmSiTef: TdmSiTef;

implementation

uses DataModulo, UnitLibrary, uExibeMenu, uObtemCampo;

{$R *.dfm}

Function TdmSiTef.EfetuarPagamentoSiTef(FormaPagamento: Integer; Valor: Double; NumCOO:String):Boolean;
begin
  Result := True;
  if not ACBrTEFD1.TEFCliSiTef.Habilitado then exit;

  fValor := Valor;
  InicializarSiTEF;
  fFormaPagamento:= FormaPagamento;
  fIniciouPagamento:= True;
  Result := ACBrTEFD1.CRT( Valor, FormatFloat('00', FormaPagamento), NumCOO);  //ACBrECF1.NumCOO
  //verificar se deve guardar o ACBrECF1.NumCOO caso tenha que cancelar depois
end;

procedure TdmSiTef.ConfigurarCliSiTef;
var
  I : TACBrTEFDTipo;
  // : TACBrECFModelo;
  vCamArqSitTef, vGPAtual, vDocEmpresa:String;
  INI : TIniFile;
begin
  vCamArqSitTef := ExtractFilePath(Application.ExeName) + 'CliSiTef.ini';
  ACBrTEFD1.TEFCliSiTef.Habilitado := FileExists(vCamArqSitTef);

  if ACBrTEFD1.TEFCliSiTef.Habilitado then
  begin
    INI := TIniFile.Create(vCamArqSitTef);
    try
      vDocEmpresa:= SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA14CGC', EmpresaPadrao);
      //ACBrTEFD1.TEFCliSiTef.ParametrosAdicionais.Text := 'ParmsClient=1='+vDocEmpresa+';2='+'09033442000109';

      vGPAtual := INI.ReadString('CONF', 'GPAtual', '');
      ACBrTEFD1.TEFCliSiTef.CNPJEstabelecimento := vDocEmpresa;
      ACBrTEFD1.TEFCliSiTef.CNPJSoftwareHouse := '09033442000109';

      ACBrTEFD1.TEFCliSiTef.EnderecoIP:= INI.ReadString('CONF', 'EnderecoIP', '');
      ACBrTEFD1.TEFCliSiTef.CodigoLoja:= INI.ReadString('CONF', 'CodigoLoja', '');
      ACBrTEFD1.TEFCliSiTef.NumeroTerminal:= INI.ReadString('CONF', 'NumeroTerminal', '');
      ACBrTEFD1.TEFCliSiTef.Operador:= INI.ReadString('CONF', 'Operador', '');
      ACBrTEFD1.TEFCliSiTef.PortaPinPad:= INI.ReadInteger('CONF', 'PortaPinPad', 0);
      ACBrTEFD1.TEFCliSiTef.Restricoes:= INI.ReadString('CONF', 'Restricoes', '');
      ACBrTEFD1.TEFCliSiTef.ExibirErroRetorno:= INI.ReadBool('CONF', 'ExibirErroRetorno', True);
      ACBrTEFD1.TEFCliSiTef.UsaUTF8:= INI.ReadBool('CONF', 'UsaUTF8', False);
      ACBrTEFD1.TEFCliSiTef.LogDebug:= INI.ReadBool('CONF', 'LogDebug', False);
      ACBrTEFD1.TEFCliSiTef.DocumentoFiscal:= INI.ReadString('CONF', 'DocumentoFiscal', '');
      //ACBrTEFD1.TEFCliSiTef.ParametrosAdicionais :=

      ACBrTEFD1.MultiplosCartoes := INI.ReadBool('CONF', 'MultiplosCartoes', True);
      ACBrTEFD1.AutoAtivarGP := INI.ReadBool('CONF', 'AutoAtivarGP', True);
      ACBrTEFD1.AutoEfetuarPagamento := false;//INI.ReadBool('CONF', 'AutoEfetuarPagamento', True);
      ACBrTEFD1.AutoFinalizarCupom := false;//INI.ReadBool('CONF', 'AutoFinalizarCupom', False);
      ACBrTEFD1.CHQEmGerencial := INI.ReadBool('CONF', 'CHQEmGerencial', False);
      ACBrTEFD1.EsperaSleep := INI.ReadInteger('CONF', 'EsperaSleep', 250);
      ACBrTEFD1.EsperaSTS := INI.ReadInteger('CONF', 'EsperaSTS', 7);
      ACBrTEFD1.ImprimirViaClienteReduzida := INI.ReadBool('CONF', 'ImprimirViaClienteReduzida', False);
      ACBrTEFD1.NumeroMaximoCartoes := INI.ReadInteger('CONF', 'NumeroMaximoCartoes', 0);
    finally
      INI.Free;
    end;

    ACBrTEFD1.GPAtual := gpCliSiTef;
    For I := Low(TACBrTEFDTipo) to High(TACBrTEFDTipo) do
    begin
      if GetEnumName(TypeInfo(TACBrTEFDTipo), integer(I) ) = vGPAtual then
      begin
        ACBrTEFD1.GPAtual := I;
        Break;
      end;
    end;
    InicializarSiTEF;
//    ACBrTEFD1.CancelarTransacoesPendentes;
    fCancelandoAoIniciar := True;
    try
      ACBrTEFD1.CancelarTransacoesPendentes;
//      ACBrTEFD1.ConfirmarTransacoesPendentes;
    finally
      fCancelandoAoIniciar := False;
      FinalizarSiTEF;
    end;
  end;

end;

procedure TdmSiTef.InicializarSiTEF;
begin
  if fSiTEFIniciado then exit;

  ACBrTEFD1.Inicializar( ACBrTEFD1.GPAtual ); 
  fSiTEFIniciado:= True;
end;

procedure TdmSiTef.FinalizarSiTEF;
begin
  if not fSiTEFIniciado then exit;

  ACBrTEFD1.DesInicializar( ACBrTEFD1.GPAtual );
  fSiTEFIniciado:= False;
  //Self.FinalizarSiTEF;
end;

procedure TdmSiTef.FecharSiTEF;
begin
  if not fSiTEFIniciado then exit;

  ACBrTEFD1.ConfirmarTransacoesPendentes;
  ACBrTEFD1.ImprimirTransacoesPendentes;
  ACBrTEFD1.FinalizarCupom;
end;

procedure TdmSiTef.CancelarSiTEF;
begin
  if not fSiTEFIniciado then exit;

  ACBrTEFD1.CancelarTransacoesPendentes;
  ACBrTEFD1.FinalizarCupom;
end;


procedure TdmSiTef.ACBrTEFD1CliSiTefExibeMenu(Titulo: String;
  Opcoes: TStringList; var ItemSelecionado: Integer;
  var VoltarMenu: Boolean);
Var
  AForm : TfExibeMenu ;
  MR    : TModalResult;
  vSITEF_NRO_CONDICAO_PAG:String;
  vAtualizarNumerario:Boolean;
begin 
  vAtualizarNumerario:= False; 
  if (fTituloCondicaoPagamento = Titulo)and(fIniciouPagamento) then
  begin
    fIniciouPagamento:= False;
    vSITEF_NRO_CONDICAO_PAG := SQLLocate('NUMERARIO','NUMEICOD','SITEF_NRO_CONDICAO_PAG',InttoStr(fFormaPagamento));

    if vSITEF_NRO_CONDICAO_PAG <> '' then
    begin
      ItemSelecionado:= strtoint(vSITEF_NRO_CONDICAO_PAG);
      exit;
    end
    else vAtualizarNumerario:= True;   
  end;

  fIniciouPagamento:= False;

  AForm := TfExibeMenu.Create(self);
  try
    AForm.Panel1.Caption := Titulo;
    AForm.ListBox1.Items.AddStrings(Opcoes);

    MR := AForm.ShowModal ;

    VoltarMenu := (MR = mrRetry) ;

    if (MR = mrOK) then
    begin
      ItemSelecionado := AForm.ListBox1.ItemIndex;
      if vAtualizarNumerario then
      begin
        ExecSql(' update NUMERARIO set SITEF_NRO_CONDICAO_PAG = '+inttoStr(ItemSelecionado)
        +' where NUMEICOD = '+inttostr(fFormaPagamento),1);
      end;
    end;
  finally
    AForm.Free;
  end;
end;

procedure TdmSiTef.ACBrTEFD1CliSiTefObtemCampo(Titulo: String;
  TamanhoMinimo, TamanhoMaximo, TipoCampo: Integer;
  Operacao: TACBrTEFDCliSiTefOperacaoCampo; var Resposta: String;
  var Digitado, VoltarMenu: Boolean);
Var
  AForm : TfObtemCampo ;
  MR    : TModalResult ;
begin
  AForm := TfObtemCampo.Create(self);
  try
    AForm.Caption := AForm.Caption+' - '+inttostr(TipoCampo);
    AForm.Panel1.Caption := Titulo;
    addLog(Titulo+' Tamanho Maximo Retorno SiTef: '+ inttoStr(TamanhoMaximo));
    AForm.TamanhoMaximo  := TamanhoMaximo;
    AForm.TamanhoMinimo  := TamanhoMinimo;
    AForm.Operacao       := Operacao;
    AForm.TipoCampo      := TipoCampo;
    AForm.Edit1.Text     := Resposta; { Para usar Valores Previamente informados }

    MR := AForm.ShowModal ;

    Digitado   := (MR = mrOK) ;
    VoltarMenu := (MR = mrRetry) ;

    if Digitado then
       Resposta := AForm.Edit1.Text;
  finally
    AForm.Free;
  end;
end;

procedure TdmSiTef.ACBrTEFD1AguardaResp(Arquivo: String;
  SegundosTimeOut: Integer; var Interromper: Boolean);
var
  Msg : String ;
begin
  Msg := '' ;
  if (ACBrTEFD1.GPAtual in [gpCliSiTef, gpVeSPague]) then   // É TEF dedicado ?
   begin
     if (Arquivo = '23') then //and (not bCancelarResp.Visible) then  // Está aguardando Pin-Pad ?
     begin
        if ACBrTEFD1.TecladoBloqueado then
        begin
           ACBrTEFD1.BloquearMouseTeclado(False);  // Desbloqueia o Teclado
           // TODO: nesse ponto é necessário desbloquear o Teclado, mas permitir
           //       um clique apenas no botão cancelar.... FALTA CORRIGIR NO DEMO
        end ;

        Msg := fMensagemPodeCancelar;
        //bCancelarResp.Visible := True ;
        fCancelado := False;
     end;
   end
  else
     Msg := 'Aguardando: '+Arquivo+' '+IntToStr(SegundosTimeOut) ;

  if Msg <> '' then
   MostrarInstrucoes(Msg);

  Application.ProcessMessages;

  if fCancelado then
     Interromper := True ;
end;

procedure TdmSiTef.ACBrTEFD1AntesCancelarTransacao(
  RespostaPendente: TACBrTEFDResp);
//var
  /// Est: TACBrECFEstado;
begin
   {Est := ACBrECF1.Estado;

   case Est of
      estVenda, estPagamento :
        ACBrECF1.CancelaCupom;

      estRelatorio :
          ACBrECF1.FechaRelatorio;
   else
      if not ( Est in [estLivre, estDesconhecido, estNaoInicializada] ) then
         ACBrECF1.CorrigeEstadoErro( False ) ;
   end;}
end;

procedure TdmSiTef.ACBrTEFD1AntesFinalizarRequisicao(Req: TACBrTEFDReq);
begin
  if Req.Header = 'CRT' then
    Req.GravaInformacao(777,777,'TESTE REDECARD');
 //  Memo1.Lines.Add('Enviando: '+Req.Header+' ID: '+IntToStr( Req.ID ) );
end;

procedure TdmSiTef.ACBrTEFD1BloqueiaMouseTeclado(Bloqueia: Boolean;
  var Tratado: Boolean);
begin
  //self.Enabled := not Bloqueia ; #criarevendo
//  Memo1.Lines.Add('BloqueiaMouseTeclado = '+IfThen(Bloqueia,'SIM', 'NAO'));
  Tratado := False ;  { Deixa executar o código de Bloqueio do ACBrTEFD }
end;

procedure TdmSiTef.ACBrTEFD1ComandaECF(Operacao: TACBrTEFDOperacaoECF;
  Resp: TACBrTEFDResp; var RetornoECF: Integer);
begin
  try
    case Operacao of
      opeAbreGerencial :
         estadoSimuladoEcf := tpsLivre; 

      opeFechaCupom :
         estadoSimuladoEcf := tpsLivre;   

      opeFechaGerencial, opeFechaVinculado :
         estadoSimuladoEcf := tpsRelatorio;
    end;       
    RetornoECF := 1 ;
  except
    RetornoECF := 0 ;
  end;
end;

procedure TdmSiTef.ACBrTEFD1ComandaECFAbreVinculado(COO, IndiceECF: String;
  Valor: Double; var RetornoECF: Integer);
begin
  try
     //Memo1.Lines.Add( 'ACBrTEFD1ComandaECFAbreVinculado, COO:'+COO+
     //   ' IndiceECF: '+IndiceECF+' Valor: '+FormatFloat('0.00',Valor) ) ;
     //ACBrECF1.AbreCupomVinculado( COO, IndiceECF, Valor );
     RetornoECF := 1 ;
  except
     RetornoECF := 0 ;
  end;
end;

procedure TdmSiTef.ACBrTEFD1ComandaECFImprimeVia(
  TipoRelatorio: TACBrTEFDTipoRelatorio; Via: Integer;
  ImagemComprovante: TStringList; var RetornoECF: Integer);
begin

  try
//     case TipoRelatorio of
//       trGerencial :
//         //ACBrECF1.LinhaRelatorioGerencial( ImagemComprovante.Text ) ;
//         ReImprimir(ImagemComprovante.Text);
//
//       trVinculado :
//         //ACBrECF1.LinhaCupomVinculado( ImagemComprovante.Text )
//         ReImprimir(ImagemComprovante.Text);
//     end;
     RetornoECF := 1 ;
  except
     RetornoECF := 0 ;
  end;
end;


procedure TdmSiTef.ACBrTEFD1ComandaECFPagamento(IndiceECF: String;
  Valor: Double; var RetornoECF: Integer);
var
   Est : TACBrECFEstado ;
begin
  try
    // Memo1.Lines.Add( 'ComandaECFPagamento, IndiceECF: '+IndiceECF+
    //    ' Valor: '+FormatFloat('0.00',Valor) );
     {Est := ACBrECF1.Estado;

     if Est = estNaoFiscal then
        ACBrECF1.EfetuaPagamentoNaoFiscal(IndiceECF, Valor)
     else
        ACBrECF1.EfetuaPagamento(IndiceECF, Valor);

        }

     RetornoECF := 1 ;
  except
     RetornoECF := 0 ;
  end;
end;

procedure TdmSiTef.ACBrTEFD1ComandaECFSubtotaliza(DescAcre: Double;
  var RetornoECF: Integer);
begin
  estadoSimuladoEcf := tpsPagamento;
  RetornoECF := 1 ;
end;

procedure TdmSiTef.ReImprimir(pValue:String);
begin
  dm.ACBrPosPrinter.Device.Ativar;
  try
    dm.ACBrPosPrinter.Imprimir(pValue, True);
    dm.ACBrPosPrinter.Imprimir('</corte_parcial>', True);
  finally
    dm.ACBrPosPrinter.Device.Desativar;
  end;
end;

procedure TdmSiTef.ACBrTEFD1DepoisConfirmarTransacoes(
  RespostasPendentes: TACBrTEFDRespostasPendentes);
var
  I : Integer;
  vAtivo:Boolean;
  vCampo11:String;
begin

  Try
    if RespostasPendentes.Count > 0 then
      vAtivo := dm.ACBrPosPrinter.Device.Ativo;
  except
  end;

  for I := 0 to RespostasPendentes.Count-1  do
  begin
     with RespostasPendentes[I] do
     begin
        if not vAtivo then
          dm.ACBrPosPrinter.Device.Ativar;
          
        try
          if ImagemComprovante1aVia.Count > 0 then
          begin
            dm.ACBrPosPrinter.Imprimir(ImagemComprovante1aVia.Text);
            dm.ACBrPosPrinter.Imprimir('</corte_parcial>', True);
          end;

          if ImagemComprovante2aVia.Count > 0 then
          begin
            dm.ACBrPosPrinter.Imprimir(ImagemComprovante2aVia.Text);
            dm.ACBrPosPrinter.Imprimir('</corte_parcial>', True);
          end;

          if (ImagemComprovante1aVia.Count = 0)and(ImagemComprovante2aVia.Count = 0) then
          begin
            dm.ACBrPosPrinter.Imprimir('Transacao TEF Confirmada!', True);
            dm.ACBrPosPrinter.Imprimir('Rede: '  + Rede, True);
            dm.ACBrPosPrinter.Imprimir('NSU: '  + NSU, True);
            dm.ACBrPosPrinter.Imprimir('Valor: '  + FormatFloat('###,###,##0.00',ValorTotal), True);
            dm.ACBrPosPrinter.Imprimir('Data: '  + FormatDateTime('dd/mm/yyyy hh:mm',DataHoraTransacaoHost));
            vCampo11:= LeInformacao(11,0).AsString;

            if trim(vCampo11) <> '' then
              dm.ACBrPosPrinter.Imprimir('Campo 11: '  + LeInformacao(11,0).AsString, True);
          end;

//          dm.ACBrPosPrinter.Imprimir('</corte_parcial>', True);
        finally
          if not vAtivo then
            dm.ACBrPosPrinter.Device.Desativar;
        end;
     end;
  end;
end;

procedure TdmSiTef.ACBrTEFD1ExibeMsg(Operacao: TACBrTEFDOperacaoMensagem;
  Mensagem: String; var AModalResult: TModalResult);
var
   Fim : TDateTime;
   OldMensagem : String;
begin
  MostrarInstrucoes('');

  case Operacao of

    opmOK :
       AModalResult := MessageDlg( Mensagem, mtInformation, [mbOK], 0);

    opmYesNo :
       AModalResult := MessageDlg( Mensagem, mtConfirmation, [mbYes,mbNo], 0);

    opmExibirMsgOperador, opmRemoverMsgOperador :
         MostrarMensagemOperador(Mensagem);

    opmExibirMsgCliente, opmRemoverMsgCliente :
         MostrarMensagemCliente(Mensagem);

    opmDestaqueVia :
       begin
         try
            OldMensagem:= GetMensagemOperador;
            MostrarMensagemOperador(Mensagem);

            { Aguardando 3 segundos }
            Fim := IncSecond( now, 3)  ;
            repeat
               sleep(200) ;
               MostrarMensagemOperador(Mensagem + ' ' + IntToStr(SecondsBetween(Fim,now)));
               Application.ProcessMessages;
            until (now > Fim) ;

         finally
            MostrarMensagemOperador(OldMensagem);
         end;
       end;
  end;

  {pMensagemOperador.Visible := (lMensagemOperador.Caption <> '') ;
  pMensagemCliente.Visible  := (lMensagemCliente.Caption <> '') ;
  pMensagem.Visible := pMensagemOperador.Visible or pMensagemCliente.Visible;}
  Application.ProcessMessages;
end;

procedure TdmSiTef.ACBrTEFD1InfoECF(Operacao: TACBrTEFDInfoECF;
  var RetornoECF: String);
var
   ASubTotal: Double;
begin
   case Operacao of
     ineSubTotal :
       begin
         ASubTotal := fValor;
         RetornoECF := FloatToStr(ASubTotal);
        { if estadoSimuladoEcf = tpsPagamento then
           RetornoECF := FloatToStr(0);  

         RetornoECF := '0';  }
       end;

     ineTotalAPagar :
       RetornoECF := '0';

     ineEstadoECF :
       begin
//         Case estadoSimuladoEcf of
//           tpsRelatorio : RetornoECF := 'R' ;
//         else
           RetornoECF := 'N' ;
//         end;
       end;
   end;
   
   if fExecutandoADM then
     RetornoECF := 'L' ;   
end;

procedure TdmSiTef.ACBrTEFD1MudaEstadoReq(EstadoReq: TACBrTEFDReqEstado);
begin
   MostrarInstrucoes(GetEnumName(TypeInfo(TACBrTEFDReqEstado), Integer(EstadoReq) )) ;
   fCancelado := False ;
end;

procedure TdmSiTef.ACBrTEFD1MudaEstadoResp(
  EstadoResp: TACBrTEFDRespEstado);
begin
  MostrarInstrucoes( GetEnumName(TypeInfo(TACBrTEFDRespEstado), Integer(EstadoResp) )) ;
  //bCancelarResp.Visible     := (EstadoResp = respAguardandoResposta) ; #criarEvento
end;

procedure TdmSiTef.ACBrTEFD1RestauraFocoAplicacao(var Tratado: Boolean);
begin
  Application.BringToFront;
  Tratado := False ;  { Deixa executar o código de Foco do ACBrTEFD }
end;

function TdmSiTef.GetMensagemOperador: String;
begin
  Result := '';

  if Assigned(evGetMensagemOperador) then
    Result := evGetMensagemOperador;
end;

procedure TdmSiTef.MostrarInstrucoes(pMsg: String);
begin
  fPodeCancelar := fMensagemPodeCancelar = pMsg;

  if Assigned(fevMostrarInstrucoes) then
    fevMostrarInstrucoes(pMsg); 
end;

procedure TdmSiTef.MostrarMensagemCliente(pMsg: String);
begin
  if Assigned(fevMostrarMensagemCliente) then
    fevMostrarMensagemCliente(pMsg); 
end;

procedure TdmSiTef.MostrarMensagemOperador(pMsg: String);
begin
  if Assigned(fevMostrarMensagemOperador) then
    fevMostrarMensagemOperador(pMsg);
end;

procedure TdmSiTef.DataModuleDestroy(Sender: TObject);
begin
  if ACBrTEFD1.TEFCliSiTef.Habilitado then
  begin
    FinalizarSiTEF;
    ACBrTEFD1.TEFCliSiTef.Habilitado := False;
  end;
end;

procedure TdmSiTef.DataModuleCreate(Sender: TObject);
begin
  ConfigurarCliSiTef;
end;

procedure TdmSiTef.ACBrTEFD1DepoisCancelarTransacoes(
  RespostasPendentes: TACBrTEFDRespostasPendentes);
var
  vAtivo, vExistePendente:Boolean;
  vCampo11:String;
  I : Integer;
begin

//  vExistePendente := RespostasPendentes.Count > 0;
//  Try
//    if RespostasPendentes.Count > 0 then
//      vAtivo := dm.ACBrPosPrinter.Device.Ativo;
//  except
//  end;
//
//  for I := 0 to RespostasPendentes.Count-1  do
//  begin
//     with RespostasPendentes[I] do
//     begin
//
//        if not vAtivo then
//          dm.ACBrPosPrinter.Device.Ativar;
//
//        try
//          if ImagemComprovante1aVia.Count > 0 then
//            dm.ACBrPosPrinter.Imprimir(ImagemComprovante1aVia.Text);
//
//          if ImagemComprovante2aVia.Count > 0 then
//            dm.ACBrPosPrinter.Imprimir(ImagemComprovante1aVia.Text);
//
//          if (ImagemComprovante1aVia.Count = 0)and(ImagemComprovante2aVia.Count = 0) then
//          begin
//            dm.ACBrPosPrinter.Imprimir('Transacao TEF foi cancelada!', True);
//            dm.ACBrPosPrinter.Imprimir('Rede: '  + Rede, True);
//            dm.ACBrPosPrinter.Imprimir('NSU: '  + NSU, True);
//            dm.ACBrPosPrinter.Imprimir('Valor: '  + FormatFloat('###,###,##0.00',ValorTotal), True);
//            vCampo11:= LeInformacao(11,0).AsString;
//
//            if trim(vCampo11) <> '' then
//              dm.ACBrPosPrinter.Imprimir('Campo 11: '  + LeInformacao(11,0).AsString, True);
//          end;
//
//          dm.ACBrPosPrinter.Imprimir('</corte_parcial>', True);
//        finally
//          if not vAtivo then
//            dm.ACBrPosPrinter.Device.Desativar;
//        end;
//     end;
//  end;
//
//  if (fCancelandoAoIniciar)and(vExistePendente) then
//  begin
//    ShowMessage('Transa??o n?o foi efetuada!'+slineBreak+'Favor reter o Cupom.');
//  end;

end;

Function TdmSiTef.AbrirADM:Boolean;
begin
  if not ACBrTEFD1.TEFCliSiTef.Habilitado then exit;

  fExecutandoADM:= True;
  try
    InicializarSiTEF;
    ACBrTEFD1.ADM(ACBrTEFD1.GPAtual);  
    Result := True;
  finally
    fExecutandoADM:= False;
  end;
end;

procedure TdmSiTef.CancelarOperacao;
begin
  if not fSiTEFIniciado then exit;

  if not fPodeCancelar then exit;
  
  fCancelado := True;
end;

end.
