unit MovimentoCaixaCheckout;
interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, ToolEdit, CurrEdit, RXLookup,
  RxDBComb, Db, DBTables, ConerBtn, Grids, DBGrids, RXCtrls, RxQuery,
  ppVar, ppPrnabl, ppClass, ppCtrls, ppCache, ppBands, ppComm, ppRelatv,
  ppProd, ppReport, ppStrtch, ppMemo, RXDBCtrl, AdvSmoothPanel,
  AdvReflectionLabel, ACBrNFeDANFEClass, ACBrNFeDANFeESCPOS, pcnConversao,
  JvMemoryDataset, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter;
type
  TFormTelaMovimentoCaixa = class(TForm)
    SQLOperacaoCaixa: TRxQuery;
    SQLNumerario: TRxQuery;
    DSTblTerminal: TDataSource;
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
    SQLOperacaoCaixaOPCXCDEBITOCREDITO: TStringField;
    SQLEstornoCrediario: TRxQuery;
    ReportAutentic: TppReport;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel10: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    Empresa: TppLabel;
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
    SQLResumoMercadorias: TRxQuery;
    SQLResumoFormas: TRxQuery;
    ScrollBoxPrincipal: TScrollBox;
    AdvSmoothPanel3: TAdvSmoothPanel;
    LblNomeSistema: TRxLabel;
    LblSubTotal: TRxLabel;
    RxDBComboBox1: TRxDBComboBox;
    EditData: TDateEdit;
    RxLabel1: TRxLabel;
    EditTipMov: TEdit;
    ComboOperacaoCaixa: TRxDBLookupCombo;
    RxLabel2: TRxLabel;
    DBEditObs: TEdit;
    LblObs: TRxLabel;
    DBEdit2: TDBEdit;
    RxLabel4: TRxLabel;
    EditValor: TCurrencyEdit;
    ComboNumerario: TRxDBLookupCombo;
    LblMsg: TRxLabel;
    LblNumerario: TRxLabel;
    ScrollBoxEsquerda: TScrollBox;
    ScrollBoxDireita: TScrollBox;
    BtnCancelar: TConerBtn;
    BtnOK: TConerBtn;
    lbCliente: TRxLabel;
    ComboCliente: TRxDBLookupCombo;
    dsCliente: TDataSource;
    sqlCliente: TRxQuery;
    sqlClienteCLIEA13ID: TStringField;
    sqlClienteCLIEA60RAZAOSOC: TStringField;
    SQLClienteCredito: TRxQuery;
    SQLClienteCreditoID: TIntegerField;
    SQLClienteCreditoDATA: TDateTimeField;
    SQLClienteCreditoCLIEA13ID: TStringField;
    SQLClienteCreditoCUPOA13ID: TStringField;
    SQLClienteCreditoVALORCREDITO: TFloatField;
    SQLClienteCreditoVALORDEBITO: TFloatField;
    SQLClienteCreditoHISTORICO: TStringField;
    cdsValores: TJvMemoryData;
    cdsValoresnumeicod: TIntegerField;
    cdsValoresValor: TFloatField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsValores: TDataSource;
    cdsValoresDescricao: TStringField;
    cxGrid1DBTableView1Descricao: TcxGridDBColumn;
    cxGrid1DBTableView1Valor: TcxGridDBColumn;
    sqlFechamento: TRxQuery;
    sqlFechamentoDEBITO: TFloatField;
    sqlFechamentoCREDITO: TFloatField;
    SQLOperacaoCaixaCTCRICOD: TIntegerField;
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
    procedure SQLOperacaoCaixaAfterScroll(DataSet: TDataSet);
    procedure SQLOperacaoCaixaOPCXICODChange(Sender: TField);
  private
    { Private declarations }
    FSOLICITA_TROCO_ABERTURA, FJaInseriuTroco: Boolean;
    procedure HabilitaFechamento;
    procedure GravarFechamentoCupom;
    procedure MostraMsg(Mensagem : string) ;
    procedure GerarTotalizadoresDiarios ;
    function  EstornoRecebimento : boolean ;
  public
  Result : TModalResult;
  NroUltCupom : Integer;
  RetornoCampoUsuario, Cabecalho : String;
    { Public declarations }
  end;
var
  FormTelaMovimentoCaixa: TFormTelaMovimentoCaixa;
implementation

uses DataModulo, UnitLibrary, ECFCheckout, UnitCheckoutLibrary, Epson_Termica,
  TelaFechamentoCaixa, TelaConsultaRapidaCupom, Corisco_CT7000_V3, ACBrPosPrinter,
  IMPNAOFISCAL, Sigtron_FS345, Bematech_MP20_FI_II, BemaFi32, Elgin_FIT,
  TelaItens, udmECF, udmSiTef,
  Math;

{$R *.DFM}
procedure TFormTelaMovimentoCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cdsValores.close;
  Action := CaFree;
end;

procedure TFormTelaMovimentoCaixa.FormDeactivate(Sender: TObject);
begin
  Activate;
end;

procedure TFormTelaMovimentoCaixa.FormCreate(Sender: TObject);
begin
  {Ajustar paineis na Tela}
  Width    := Screen.Width;
  Height   := Screen.Height;
  ScrollBoxEsquerda.Width := (Screen.Width - ScrollBoxPrincipal.Width) div 2;

  SQLOperacaoCaixa.Open ;
  SQLTotalizadorCaixa.Open ;
  SQLNumerario.Open ;
  sqlCliente.Open ;

  cdsValores.open;

  with ExecSql(' select numeicod, trim(numea30descr) as numea30descr '
   +' from NUMERARIO where  (NUMECATIVO = ''S'') order by NUMEA30DESCR ') do
  begin
    while not eof do
    begin
      cdsValores.InsertRecord([FieldByName('numeicod').AsInteger, FieldByName('numea30descr').AsString, 0]);
      next;
    end;
  end;

end;

procedure TFormTelaMovimentoCaixa.BtnCancelarClick(Sender: TObject);
begin
  if FSOLICITA_TROCO_ABERTURA then
    Exit;
    
  Close ;
end;

procedure TFormTelaMovimentoCaixa.BtnOKClick(Sender: TObject);
var
  Operacao, Codigo, OperacaoSangria   : Integer ;
  CupomOk, ImprimirCancelamento : boolean ;
  VlrEstorn,
  Valor,
  TotalDeb,TotalCred,ValorTotal : Double ;
  TipoRecEsc         : Variant ;
  Docum,
  OperCx,
  Tipo,
  Numerario,
  ContratoExcluido,
  TotNumECF, texto  : string ;
  LF                 : char ;
  InfoRetornoUser    : TInfoRetornoUser;
  nResumo : TStringList;
  nTotResumo, nTotalResu : Double;
  cForma, ValorSTR : String;
  Dia, Mes, Ano : Word;
  vAux : Double;
begin
  UsuarioAutorizouOperacao := '';

  if ComboOperacaoCaixa.Text = '' then
    begin
      Informa('Selecione o tipo de opera��o!');
      Exit;
    end;


  if (SQLOperacaoCaixaOPCXCSOLICVLR.Value = 'S') and (EditValor.Value = 0) then
    begin
      Informa('Esta opera��o de caixa necessita um valor maior que zero!');
      EditValor.SetFocus ;
      Exit;
    end ;

  if (SQLOperacaoCaixaOPCXCAUTENTICA.Value = 'S') and (ComboNumerario.Text = '') then
    begin
      Informa('Esta opera��o de caixa necessita de um numer�rio!');
      ComboNumerario.SetFocus ;
      Exit;
    end ;

  if (SQLOperacaoCaixaOPCXCAUTENTICA.Value = 'S') and (SQLOperacaoCaixaOPCXCSOLICVLR.Value = 'S') then
    begin
      if (PortaECFAtual <> '') and (ECFAtual <> '') then
        AbrirGaveta(ECFAtual, PortaECFAtual);

      if (ImpNaoFiscalAtual <> '') then
        AbrirGaveta_NAOFISCAL(ImpNaoFiscalAtual,PortaImpNaoFiscalAtual);

      if SQLOperacaoCaixaOPCXA5SIGLA.Value = 'SANGR' Then {Sangria}
      begin
        if (DM.SQLUsuario.FieldByName('USUACPERMSANGRIA').AsString = 'S') and (FileExists('GAVETA.EXE')) then
          WinExec(Pchar('GAVETA.EXE'),sw_Show);
      end
      else
      begin
        if FileExists('GAVETA.EXE') then
          WinExec(Pchar('GAVETA.EXE'),sw_Show);
      end;

      if (EcfAtual = 'NFCE DR800') and not (FileExists('GAVETA.EXE')) then
        begin
          dm.ACBrPosPrinter.Device.Desativar;
          dm.ACBrPosPrinter.Device.Ativar;
          try
            DM.ACBrPosPrinter.AbrirGaveta;
          except
            Application.ProcessMessages;            
          end;
        end;
    end ;

  //DEVE SETAR VARIAVEL AQUI P/N�O ABRIR O CAIXA COM DATA DO MOV.ANTERIOR
  if StrToInt(EditTipMov.Text) = 1 then
    TerminalAtualData := EditData.Text ;

{  if DBEditObs.Text <> '' then
    DBEditObs.Text := ': ' + DBEditObs.Text ;}

  Numerario := 'Null' ;

  {TEF ADM Chamada}
  if SQLOperacaoCaixaOPCXA5SIGLA.Value = 'TEFAD' Then
   begin
    FormTelaItens.TefAdm;
    Close;
   end;
   if SQLOperacaoCaixaOPCXA5SIGLA.Value = 'SITEF' then
   begin
     dmSiTef.evMostrarInstrucoes := nil;
     dmSiTef.evMostrarMensagemCliente := nil;
     dmSiTef.evMostrarMensagemOperador := nil;
     dmSiTef.evGetMensagemOperador := nil;
     if dmSiTef.AbrirADM then exit;
     Close;
   end;

   GravarFechamentoCupom;

  if SQLOperacaoCaixaOPCXA5SIGLA.Value = 'LEITX' Then {Leitura X}
    begin
      if DM.SQLUsuario.FieldByName('USUACPERMLEITX').AsString <> 'S' then
        if Pergunta('SIM','Voc� n�o tem permiss�o para realizar Leitura X! Deseja Informar Outro Usu�rio?') then
          begin
            RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACPERMLEITX',InfoRetornoUser);
            if RetornoCampoUsuario <> 'S' then
              Exit;
          end
        else
          Exit;

      // Gravar Movimento de Caixa mostrando Leitura X
      GravaMovimentoCaixa(DM.SQLTotalizadorCaixa,
                          DM.SQLTotalizar,
                          EmpresaPadrao,//WEMPRICOD
                          IntToStr(TerminalAtual),//WTERMICOD
                          FormatDateTime('mm/dd/yyyy', Now),//WMVCIXDMOV
                          'Null',//WNUMEICOD
                          SQLOperacaoCaixaOPCXICOD.AsString,//WOPCXICOD
                          IntToStr(DM.UsuarioAtual),//WUSUAICOD
                          'Leitura X',//WMVCIXA15DOCORIG
                          0,//WMOVICAIXN2VLR
                          0,//WMOVICAIXN2VLRJURO
                          0,//WMOVICAIXN2VLRMULTA
                          0,//WMOVICAIXN2VLRDEC
                          'Null',//WMOVICAIXA6NUMCUPOM
                          '',//WTIPO
                          UsuarioAtualNome+'/'+ UsuarioAutorizouOperacao,//WMVCXA255HIST
                          'N',
                          '');
      UsuarioAutorizouOperacao := '';

      MostraMsg('Aguarde, emitindo Leitura X...') ;
      Leitura_X(ECFAtual, PortaECFAtual) ;
    end ;

  // Resumo de Vendas na Impressora Fiscal
  if SQLOperacaoCaixaOPCXA5SIGLA.Value = 'RESVD' Then
    begin
      if Pergunta('SIM','Voc� deseja emitir uma Leitura X junto ao Resumo?') then
        Leitura_X(ECFAtual, PortaECFAtual) ;

       nResumo := TStringList.Create;
       Try
         MostraMsg('Aguarde, Emitindo Resumo das Vendas...') ;
         //                    1         2         3         4       8
         //           123456789012345678901234567890123456789012345678
         nResumo.Add('        RESUMO DE VENDAS DE ' + EditData.Text);
         nResumo.Add('------------------------------------------------');
         nResumo.Add('                                                ');
         nResumo.Add('MERCADORIAS                                     ');
         nResumo.Add('CODIGO DESCRICAO                 QUANT     VALOR');
         // Sql Resumo Mercadorias
         SQLResumoMercadorias.Close;
         SQLResumoMercadorias.ParamByName('DATAREF').AsDateTime := StrtoDateTime(FormatDateTime('dd/mm/yyyy 00:00:00', EditData.Date));
         SQLResumoMercadorias.Open;
         SQLResumoMercadorias.Last;
         SQLResumoMercadorias.First;
         If SQLResumoMercadorias.Eof then
           nresumo.Add('Sem Movimento de Mercadorias');

         nTotResumo := 0;
         While not SQLResumoMercadorias.Eof Do
         Begin
           nTotalResu := ArredondaValor1(SQLResumoMercadorias.FieldByName('TOTAL').AsFloat, 2);
           nResumo.Add(PadL( SQLResumoMercadorias.FieldByName('CODIGO').AsString, 6) +
                       ' ' +
                       PadR(Copy( SQLResumoMercadorias.FieldByName('DESCRICAO').AsString, 1, 21),21) +
                       ' ' +
                       PadL( FormatFloat('#,##0.000', SQLResumoMercadorias.FieldByName('QUANTIDADE').AsFloat), 9)  +
                       ' ' +
                       PadL( FormatFloat('#,##0.00', nTotalResu ), 9)
                      );
           nTotResumo := nTotResumo + nTotalResu;

           SQLResumoMercadorias.Next;
         End;
         If nTotResumo > 0 Then
           nResumo.Add(PadL('Total Mercadorias    ' + FormatFloat('#,##0.00', nTotResumo), 48));
         SQLResumoMercadorias.Close;

         nResumo.add('                                                ');

         nResumo.Add('FORMAS DE PAGAMENTO                             ');
         nResumo.Add('DESCRICAO                                  VALOR');
         // Resumo Formas Pagamento
         SQLResumoFormas.Close;
         SQLResumoFormas.ParamByName('DATAREF').AsDateTime := StrtoDateTime(FormatDateTime('dd/mm/yyyy 00:00:00', EditData.Date));
         SQLResumoFormas.Open;
         SQLResumoFormas.Last;
         SQLResumoFormas.First;
         If SQLResumoFormas.Eof then
           nresumo.Add('Sem Movimento de Formas de Pagamento');

         nTotresumo := 0;
         While not SQLResumoFormas.Eof Do
         Begin
           nTotalResu := ArredondaValor1(SQLResumoFormas.FieldByName('TOTAL').AsFloat, 2);
           cForma := SQLResumoFormas.FieldByName('Forma').AsString;
           if cForma = '' then
             cForma := 'VISTA';
           nResumo.Add(PadR( cForma, 29) +
                       ' ' +
                       PadL( FormatFloat('#,##0.00', nTotalResu), 18)
                      );

           nTotResumo := nTotResumo + nTotalResu;
           SQLResumoFormas.Next;
         End;

         If nTotResumo > 0 Then
           nResumo.Add(PadL('Total Formas Pagamento    ' + FormatFloat('#,##0.00', nTotResumo), 48));
         SQLResumoFormas.Close;
         nResumo.add('                                                ');

         Resumo_X(ECFAtual, PortaECFAtual, nResumo) ;
       Finally
         FreeAndNil(nResumo);
       end;
    end;

  if SQLOperacaoCaixaOPCXA5SIGLA.Value = 'REDUZ' Then {Redu��o Z}
    begin
      if DM.SQLUsuario.FieldByName('USUACPERMREDZ').AsString <> 'S' then
        if Pergunta('SIM','Voc� n�o tem permiss�o para realizar Redu��o Z! Deseja Informar Outro Usu�rio?') then
          begin
            RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACPERMREDZ',InfoRetornoUser);
            if RetornoCampoUsuario <> 'S' then
              Exit;
          end
        else
          Exit;

      // Gravar Movimento de Caixa mostrando Abertura de Gaveta Avulso
      GravaMovimentoCaixa(DM.SQLTotalizadorCaixa,
                          DM.SQLTotalizar,
                          EmpresaPadrao,//WEMPRICOD
                          IntToStr(TerminalAtual),//WTERMICOD
                          FormatDateTime('mm/dd/yyyy', Now),//WMVCIXDMOV
                          'Null',//WNUMEICOD
                          SQLOperacaoCaixaOPCXICOD.AsString,//WOPCXICOD
                          IntToStr(DM.UsuarioAtual),//WUSUAICOD
                          'Reduz Z',//WMVCIXA15DOCORIG
                          0,//WMOVICAIXN2VLR
                          0,//WMOVICAIXN2VLRJURO
                          0,//WMOVICAIXN2VLRMULTA
                          0,//WMOVICAIXN2VLRDEC
                          'Null',//WMOVICAIXA6NUMCUPOM
                          '',//WTIPO
                          UsuarioAtualNome+'/'+ UsuarioAutorizouOperacao,//WMVCXA255HIST
                          'N',
                          '');
      UsuarioAutorizouOperacao := '';

      if Pergunta('SIM','Esta rotina implicar� no fechamento di�rio da impressora fiscal, portanto mais nenhum cupom fiscal poder� ser impresso hoje !' + #13 + 'Deseja continuar ?') then
        begin
          MostraMsg('Aguarde, emitindo Redu��o Z...') ;
          Reducao_Z(ECFAtual, PortaECFAtual) ;
        end
      else
        exit;
    end;

  if SQLOperacaoCaixaOPCXA5SIGLA.Value = 'SANGR' Then {Sangria}
    begin
      if DM.SQLUsuario.FieldByName('USUACPERMSANGRIA').AsString <> 'S' then
        if Pergunta('SIM','Voc� n�o tem permiss�o para realizar Sangria! Deseja Informar Outro Usu�rio?') then
          begin
            RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACPERMSANGRIA',InfoRetornoUser);
            if RetornoCampoUsuario <> 'S' then
              Exit;
          end
        else
          Exit;

      if ECFAtual = 'ECF' then
       if Pergunta('SIM','Imprimir Sangria!') then
        dmECF.Sangria(EditValor.Value, 'SANGRIA', 'SANGRIA', IntToStr(ComboNumerario.KeyValue), 0);

      if ECFAtual = 'DARUMA FRAMEWORK' then
        if Pergunta('SIM','Imprimir Sangria!') then
          Sangria_Daruma_Framework(EditValor.Value, IntToStr(ComboNumerario.KeyValue));
      if ECFAtual = 'DARUMA FRAMEWORK' then
        if Pergunta('SIM','Imprimir Segunda via Sangria!') then
          Sangria_Daruma_Framework(EditValor.Value, IntToStr(ComboNumerario.KeyValue));

      if ECFAtual = 'BEMATECH MP-25 FI' then
        if Pergunta('SIM','Deseja Imprimir a Sangria!') then
          begin
            Bematech_FI_Sangria(FormatFloat('##0.00',EditValor.Value));
            texto := '*** SANGRIA ***' +#13+#10+ #13+#10+
                     'Valor..: '+FormatFloat('##0.00',EditValor.Value)+#13+#10;

            AbrirReciboFiscal(ECFAtual, texto);
          end;

      if ECFAtual = 'ELGIN MFD FIT 1E' then
        if Pergunta('SIM','Deseja Imprimir a Sangria!') then
          Sangria_Elgin_FIT(EditValor.Value);

      if ECFAtual = 'EPSON TERMICA' then
        if Pergunta('SIM','Deseja Imprimir a Sangria!') then
          begin
            ValorSTR := formatfloat('##0.00',EditValor.value);
            while pos('.',ValorSTR) > 0 do
              delete(ValorSTR, pos('.',ValorSTR),1);
            while pos(',',ValorSTR) > 0 do
              delete(ValorSTR, pos(',',ValorSTR),1);

            AbrirPortaECF(ECFAtual, Porta) ;
            EPSON_NaoFiscal_Sangria(pchar(ValorSTR), 2);
            FecharPortaECF(ECFAtual, Porta) ;
          end;

      if FileExists('GAVETA.EXE') then
        WinExec(Pchar('GAVETA.EXE'),sw_Show);

      if (EcfAtual = 'NFCE DR800') and not (FileExists('GAVETA.EXE')) then
        begin
          dm.ACBrPosPrinter.Device.Desativar;
          dm.ACBrPosPrinter.Device.Ativar;
          try
            dm.ACBrPosPrinter.AbrirGaveta;
          except
            Application.ProcessMessages;
          end;
        end;

    end ;

  if (SQLOperacaoCaixaOPCXA5SIGLA.Value = 'SUPRI') or (SQLOperacaoCaixaOPCXA5SIGLA.Value = 'TROCO') Then {Suprimento/Troco Inicial}
    begin
      if DM.SQLUsuario.FieldByName('USUACPERMSUPRI').AsString <> 'S' then
        if Pergunta('SIM','Voc� n�o tem permiss�o para realizar Suprimento/Troco Inicial! Deseja Informar Outro Usu�rio?') then
          begin
            RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACPERMSUPRI',InfoRetornoUser);
            if RetornoCampoUsuario <> 'S' then
              Exit;
          end
        else
          Exit;

      if ECFAtual = 'ECF' then
        if Pergunta('SIM','Deseja Imprimir Suprimento/Troco Inicial!') then
          dmECF.Suprimento(EditValor.Value, IntToStr(ComboNumerario.KeyValue));

      if ECFAtual = 'DARUMA FRAMEWORK' then
        if Pergunta('SIM','Deseja Imprimir Suprimento/Troco Inicial!') then
          Suprimento_Daruma_Framework(EditValor.Value, IntToStr(ComboNumerario.KeyValue));

      if ECFAtual = 'BEMATECH MP-25 FI' then
        if Pergunta('SIM','Deseja Imprimir Suprimento/Troco Inicial!') then
          begin
            Bematech_FI_Suprimento(FormatFloat('##0.00',EditValor.Value), RetornaTotalizadorNumerarioECFDarumaFS345(Ecf_ID,ComboNumerario.Value));

            texto := '*** SUPRIMENTO ***' +#13+#10+ #13+#10+
                     'Valor..: '+FormatFloat('##0.00',EditValor.Value)+#13+#10;

            AbrirReciboFiscal(ECFAtual, texto);

          end;
      if ECFAtual = 'ELGIN MFD FIT 1E' then
        if Pergunta('SIM','Deseja Imprimir Suprimento/Troco Inicial!') then
           Suprimento_Elgin_FIT(EditValor.Value, ComboNumerario.Text);

      if ECFAtual = 'EPSON TERMICA' then
        if Pergunta('SIM','Deseja Imprimir Suprimento/Troco Inicial!') then
          begin
            ValorSTR := formatfloat('##0.00',EditValor.value);
            while pos('.',ValorSTR) > 0 do
              delete(ValorSTR, pos('.',ValorSTR),1);
            while pos(',',ValorSTR) > 0 do
              delete(ValorSTR, pos(',',ValorSTR),1);

            AbrirPortaECF(ECFAtual, Porta) ;
            EPSON_NaoFiscal_Fundo_Troco(Pchar(ValorSTR), 2);
            FecharPortaECF(ECFAtual, Porta) ;
          end;

      if FileExists('GAVETA.EXE') then
         WinExec(Pchar('GAVETA.EXE'),sw_Show);

      if (EcfAtual = 'NFCE DR800') and not (FileExists('GAVETA.EXE')) then
        begin
          dm.ACBrPosPrinter.Device.Desativar;
          dm.ACBrPosPrinter.Device.Ativar;
          try
            dm.ACBrPosPrinter.AbrirGaveta;
          except
            Application.ProcessMessages;
          end;
        end;
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
          Informa('Voc� n�o tem permiss�o para cancelar este cupom!') ;
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
                               DBEditObs.Text+'='+UsuarioAtualNome+'/'+UsuarioAutorizouOperacao,//WMVCXA255HIST
                               'N',
                               '');
        UsuarioAutorizouOperacao := '';
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

  // LANCA CREDITO AO CLIENTE SELECIONADO
  if (SQLOperacaoCaixaOPCXA5SIGLA.Value = 'CREDC') then
    begin
      if DBEditObs.Text = '' then
        begin
          Showmessage('Falta informar o motivo na Observa��o!');
          Abort;
          Exit;
        end
      else
        if EditValor.Value = 0 then
          begin
            Showmessage('Falta informar o valor na Observa��o!');
            Abort;
            Exit;
          end
        else
          if ComboCliente.Value = '' then
            begin
              Showmessage('Falta informar o cliente!');
              Abort;
              Exit;
            end
          else
            begin
              SQLClienteCredito.Open;
              SQLClienteCredito.Append;
              SQLClienteCreditoID.Value            := SQLMax('clientecredito','id','0=0');
              SQLClienteCreditoDATA.AsString       := FormatDateTime('dd/mm/yyyy',now);
              SQLClienteCreditoCLIEA13ID.Value     := ComboCliente.Value;
              if SQLOperacaoCaixaOPCXCDEBITOCREDITO.Value = 'C' then
                begin {credito}
                  SQLClienteCreditoVALORCREDITO.Value  := EditValor.Value;
                  SQLClienteCreditoVALORDEBITO.Value   := 0;
                end
              else
                begin {debito}
                  SQLClienteCreditoVALORCREDITO.Value  := 0;
                  SQLClienteCreditoVALORDEBITO.Value   := EditValor.Value;
                end;
              SQLClienteCreditoHISTORICO.Value     := DBEditObs.Text;
              SQLClienteCredito.Post;
              SQLClienteCredito.Close;
            end;
    end;

  // EMITE VALE COMPRAS e VALE FUNCIONARIO e GERA CREDITO NA FICHA DO CLIENTE SELECIONADO
  if (SQLOperacaoCaixaOPCXA5SIGLA.Value = 'VLCPA') or (SQLOperacaoCaixaOPCXA5SIGLA.Value = 'VLFUN') then
    begin
      if (SQLOperacaoCaixaOPCXA5SIGLA.Value = 'VLCPA') then Cabecalho := 'Vale Compras';
      if (SQLOperacaoCaixaOPCXA5SIGLA.Value = 'VLFUN') then Cabecalho := 'Vale Func';
      if EditValor.Value > 0 then
        begin
          if DBEditObs.Text <> '' then
            begin
              if ComboNumerario.Value <> '' then
                begin
                  if ECFAtual <>  '' then
                    begin
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


                                  cdsValores.First;
                                  while not cdsValores.eof do
                                  begin
                                    if cdsValoresValor.AsCurrency > 0 then
                                    ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,cdsValoresDescricao.AsString+' '
                                       + FormatFloat('#,##0.00',cdsValoresValor.Value)+ chr(10),2,0,0,0,0);
                                    cdsValores.next;
                                  end;
                                  ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,DBEditObs.Text + chr(10),2,0,0,0,0);

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
                  Informa('O numer�rio deve ser informado!');
                  Abort;
                  Exit;
                end;
            end
          else
            begin
              Informa('A Observa��o deve ser informada!');
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
  ValorTotal := 0;
  if (SQLOperacaoCaixaOPCXA5SIGLA.AsString = 'FECHA') AND (ECFAtual <> 'ECF') then
  begin
    if Pergunta('SIM','Imprimir Fechamento?') then
    begin
      SQLFechamento.Close;
      SQLFechamento.SQL.Clear;
      SQLFechamento.SQL.Add('select sum(MVCXN2VLRDEB) DEBITO, sum(MVCXN2VLRCRED) CREDITO from MOVIMENTOCAIXA');
      SQLFechamento.SQL.Add(' where MVCXDMOV = "' + FormatDateTime('mm/dd/yyyy', EditData.Date) + '"');
      SQLFechamento.SQL.Add('and OPCXICOD = 3');
      SQLFechamento.Open;
      ValorTotal := ValorTotal + SQLFechamentoDEBITO.AsFloat;
      FormTelaItens.MemoRetornoNFE.Lines.Clear;
      FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
      FormTelaItens.MemoRetornoNFE.Lines.Add('</ce><e>'+ComboOperacaoCaixa.Text+'</e>');
      FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
      FormTelaItens.MemoRetornoNFE.Lines.Add('</ae></fn>Terminal: '+dm.SQLTerminalAtivoTERMA60DESCR.Value);
      FormTelaItens.MemoRetornoNFE.Lines.Add('Usuario : '+dm.SQLUsuarioUSUAA60LOGIN.Value);
      FormTelaItens.MemoRetornoNFE.Lines.Add('Impresso em '+FormatDateTime('dd/mm/yy hh:mm',now));
      FormTelaItens.MemoRetornoNFE.Lines.Add('Obs: '+DBEditObs.Text);
      FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
      FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
      FormTelaItens.MemoRetornoNFE.Lines.Add('</ae></fn>' + 'Sangria ' + FormatFloat('R$ ##0.00',SQLFechamentoDEBITO.AsFloat));
      FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
      cdsValores.First;
      while not cdsValores.eof do
      begin
        if cdsValoresValor.AsCurrency > 0 then
        FormTelaItens.MemoRetornoNFE.Lines.Add('</ae></fn>'+cdsValoresDescricao.AsString+' '
        + FormatFloat('R$ ##0.00',cdsValoresValor.Value));
        ValorTotal := ValorTotal + cdsValoresValor.Value;
        cdsValores.next;
      end;
      FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
      FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
      FormTelaItens.MemoRetornoNFE.Lines.Add('Valor Total: ' + FormatFloat('R$ ##0.00',ValorTotal));
      FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
      FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
      FormTelaItens.MemoRetornoNFE.Lines.Add('</corte_parcial>');

      if ECFAtual = 'ECF' then
      begin
        dmECF.ImprimirRelatorioGerencial(FormTelaItens.MemoRetornoNFE.Lines);
      end
      else begin
        dm.ACBrPosPrinter.Device.Desativar;
        dm.ACBrPosPrinter.Device.Ativar;
        dm.ACBrPosPrinter.Imprimir(FormTelaItens.MemoRetornoNFE.Lines.Text);
        FormTelaItens.MemoRetornoNFE.Lines.Clear;
        dm.ACBrPosPrinter.Device.Desativar;
      end;
    end;
  end;

  if (SQLOperacaoCaixaOPCXCAUTENTICA.Value = 'S') and (SQLOperacaoCaixaOPCXCSOLICVLR.Value = 'S') then //and (EditValor.Value > 0) then
    begin
      if ECFAtual <> '' then
        begin
          if (copy(ECFAtual,1,4) = 'NFCE') then
            begin
              if Pergunta('SIM','Autenticar Documento!') then
                begin
                  try
                    FormTelaItens.MemoRetornoNFE.Lines.Clear;
                    FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                    FormTelaItens.MemoRetornoNFE.Lines.Add('</ce><e>'+ComboOperacaoCaixa.Text+'</e>');
                    FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                    FormTelaItens.MemoRetornoNFE.Lines.Add('</ae></fn>Terminal: '+dm.SQLTerminalAtivoTERMA60DESCR.Value);
                    FormTelaItens.MemoRetornoNFE.Lines.Add('Usuario : '+dm.SQLUsuarioUSUAA60LOGIN.Value);
                    FormTelaItens.MemoRetornoNFE.Lines.Add('Impresso em '+FormatDateTime('dd/mm/yy hh:mm',now));
                    FormTelaItens.MemoRetornoNFE.Lines.Add('Obs: '+DBEditObs.Text);
                    FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                    FormTelaItens.MemoRetornoNFE.Lines.Add(' ');

//                    if (SQLOperacaoCaixaOPCXA5SIGLA.Value = 'SANGR') or (SQLOperacaoCaixaOPCXA5SIGLA.Value = 'TROCO')  then
                      FormTelaItens.MemoRetornoNFE.Lines.Add('</ce><e><n>Valor ' + FormatFloat('R$ ##0.00',EditValor.Value) + '</n></e>');

                    {cdsValores.First;
                    while not cdsValores.eof do
                    begin
                      if cdsValoresValor.AsCurrency > 0 then
                      FormTelaItens.MemoRetornoNFE.Lines.Add('</ce><e><n>'+cdsValoresDescricao.AsString+' '
                        + FormatFloat('R$ ##0.00',cdsValoresValor.Value) + '</n></e>');
                      cdsValores.next;
                    end;}

                    FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                    FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                    FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                    FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                    FormTelaItens.MemoRetornoNFE.Lines.Add('</corte_parcial>');

                    dm.ACBrPosPrinter.Device.Desativar;
                    dm.ACBrPosPrinter.Device.Ativar;
                    dm.ACBrPosPrinter.Imprimir(FormTelaItens.MemoRetornoNFE.Lines.Text);
                    Sleep(500);
                    // dm.ACBrPosPrinter.AbrirGaveta;
                  except
                    //Application.ProcessMessages;
                    Informa('Problemas na impress�o! '+ #13 +ComboOperacaoCaixa.Text+ ' Gravado mas n�o impresso!');
                  end;
                  if Pergunta('SIM','Imprimir 2 Via Autentica��o!') then
                    begin
                      try
                        dm.ACBrPosPrinter.Imprimir(FormTelaItens.MemoRetornoNFE.Lines.Text);
                        if (ECFAtual = 'NFCE DR800') then
                          Sleep(500);
                        dm.ACBrPosPrinter.Device.Desativar;

                        //dm.ACBrPosPrinter.AbrirGaveta;
                      except
                        Application.ProcessMessages;
                      end;
                    end;
                  FormTelaItens.MemoRetornoNFE.Lines.Clear;
                  dm.ACBrPosPrinter.Device.Desativar;
                end;
            end
          else
            Autenticacao( ECFAtual, //Impressora
                          PortaECFAtual,//Porta,
                          Ecf_CNFNV,//Identificador
                          Ecf_ID,//Ecf_ID
                          DBEditObs.Text,//Documento
                          '',//Parcela
                          'Diversos',
                          EditValor.Value,//Valor
                          StrToInt(ComboNumerario.Value),'');
        end
      else
        begin
          if Pergunta('SIM', 'DESEJA IMPRIMIR COMPROVANTE ?') then
            begin
              DM.TblAutenticacao.Close ;
              try
                DM.TblAutenticacao.DeleteTable ;
              except
                Application.ProcessMessages;
              end ;
              DM.TblAutenticacao.CreateTable ;
              DM.TblAutenticacao.Open ;
              dm.TblAutenticacao.Append;
              dm.TblAutenticacaoEmpresaNome.Value   := EmpresaAtualNome;
              dm.TblAutenticacaoTerminalNome.Value  := TerminalAtualNome;
              dm.TblAutenticacaoOperacao.Value      := ComboOperacaoCaixa.Text;
              dm.TblAutenticacaoUsuarioNome.Value   := UsuarioAtualNome;
              dm.TblAutenticacaoValor.Value         := EditValor.Value;
              dm.TblAutenticacaoForma.Value         := ComboNumerario.Text;
              dm.TblAutenticacaoHistorico.Value     := DBEditObs.Text;
              dm.TblAutenticacao.Post;
              dm.TblAutenticacao.Close;

              if FileExists('AUTENTICACAO.EXE') then
                WinExec(Pchar('AUTENTICACAO.EXE'),sw_Show)
              else
                ReportAutentic.Print;

              if Pergunta('SIM', 'DESEJA IMPRIMIR SEGUNDA VIA DO COMPROVANTE ?') then
                if FileExists('AUTENTICACAO.EXE') then
                  WinExec(Pchar('AUTENTICACAO.EXE'),sw_Show)
                else
                  ReportAutentic.Print;
            end;
        end;
    end ;

  //ABERTURA DO CAIXA
  if SQLOperacaoCaixaOPCXA5SIGLA.Value = 'ABERT' Then {Abertura Caixa}
    begin
      if DM.SQLUsuario.FieldByName('USUACPERMLEITX').AsString <> 'S' then
        if Pergunta('SIM','Voc� n�o tem permiss�o para realizar Abertura de Caixa! Deseja Informar Outro Usu�rio?') then
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

      // Gravar Movimento de Caixa mostrando Abertura de Gaveta Avulso
      GravaMovimentoCaixa(DM.SQLTotalizadorCaixa,
                          DM.SQLTotalizar,
                          EmpresaPadrao,//WEMPRICOD
                          IntToStr(TerminalAtual),//WTERMICOD
                          FormatDateTime('mm/dd/yyyy', Now),//WMVCIXDMOV
                          'Null',//WNUMEICOD
                          SQLOperacaoCaixaOPCXICOD.AsString,//WOPCXICOD
                          IntToStr(DM.UsuarioAtual),//WUSUAICOD
                          'Abre Caixa',//WMVCIXA15DOCORIG
                          0,//WMOVICAIXN2VLR
                          0,//WMOVICAIXN2VLRJURO
                          0,//WMOVICAIXN2VLRMULTA
                          0,//WMOVICAIXN2VLRDEC
                          'Null',//WMOVICAIXA6NUMCUPOM
                          '',//WTIPO
                          UsuarioAtualNome+'/'+ UsuarioAutorizouOperacao,//WMVCXA255HIST
                          'N',
                          '');

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

       if (ECFAtual <> '') and (PortaECFAtual <> '') and (Copy(ECFAtual,1,4) <> 'NFCE') then
         begin
           if Pergunta('N�O', '* * * DESEJA IMPRIMIR UMA LEITURA X ? * * *') then
             begin
               MostraMsg('Aguarde, emitindo Leitura X...') ;
               Leitura_X(ECFAtual, PortaECFAtual) ;
             end ;
         end;
    end;

  //CANCELAMENTO VENDA / CUPOM
  if (SQLOperacaoCaixaOPCXA5SIGLA.Value = 'CANVV') or (SQLOperacaoCaixaOPCXA5SIGLA.Value = 'CANVP')
    or (SQLOperacaoCaixaOPCXA5SIGLA.Value = 'CANVD') Then
    begin
      InfoRetornoUser.CampoRetorno := '';
      InfoRetornoUser.CodUsuarioAutenticado  := 0;
      InfoRetornoUser.NomeUsuarioAutenticado := '';
      if AutenticaUsuario(UsuarioAtualNome,'USUACCANCVENDA',InfoRetornoUser) <> 'S' then
        begin
          Application.MessageBox('Voc� n�o tem permiss�o para cancelar vendas!','Informa',MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_DEFBUTTON1 + MB_ICONERROR);
          Exit;
        end;
      if Application.MessageBox('Voc� deseja consultar os cupons emitidos hoje ?','Pergunta',MB_YESNO + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_DEFBUTTON1 + MB_ICONQUESTION)= IdYes then
        begin
          //Abrir tela de consulta de cupom
          Application.CreateForm(TFormTelaConsultaRapidaCupom,FormTelaConsultaRapidaCupom);
          FormTelaConsultaRapidaCupom.Cancelamento := True;
          FormTelaConsultaRapidaCupom.SQLCupom.Close;
          FormTelaConsultaRapidaCupom.SQLCupom.MacroByName('DataEmissao').Value := 'Cupom.CUPODEMIS = "' + FormatDateTime('mm/dd/yyyy',Now) + '"';
          FormTelaConsultaRapidaCupom.SQLCupom.MacroByName('Empresa').Value     := 'Cupom.EMPRICOD  = ' + EmpresaPadrao;
          FormTelaConsultaRapidaCupom.SQLCupom.MacroByName('Terminal').Value    := 'Cupom.TERMICOD  = ' + IntToStr(TerminalAtual);
          FormTelaConsultaRapidaCupom.SQLCupom.MacroByName('MostraVendas').Value := '0=0';
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
          InformaG('Opera��o Cancelada');
          Abort;
        end;

      if Pos('.', Docum) > 0 then
        Docum := ConverteCodigo(Docum);

      if Pergunta('N�O', '* * * TEM CERTEZA QUE DESEJA CANCELAR ESTE CUPOM ? * * *') then
      begin
        try
          // Recupera Nro do Ult. Cupom Fiscal Emitido.
          DM.SQLTemplate.Close;
          DM.SQLTemplate.SQL.Clear;
          DM.SQLTemplate.SQL.Add('Select Max(CUPOINRO) as ULTCUPOM from CUPOM where TERMICOD = '+IntToStr(TerminalAtual));
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
            Informa('Documento n�o encontrado !');
            exit;
          end;

          if DM.SQLTemplate.Fieldbyname('TERMICOD').AsInteger <> TerminalAtual then
            begin
              Informa('Voc� est� tentado cancelar um Documento que n�o foi emitido no terminal ativo.' + #13 +
                      'Voc� deve cancel�-lo no terminal "' + SQLLocate('TERMINAL', 'TERMICOD', 'TERMA60DESCR', DM.SQLTemplate.Fieldbyname('TERMICOD').AsString) + '".');
              exit;
            end;

          if DM.SQLTemplate.Fieldbyname('CUPODEMIS').AsString <> TerminalAtualData then
          begin
            Informa('Voc� est� tentado cancelar um Documento que n�o foi emitido na mesma data do terminal ativo. Use a consulta de cupom para cancel�-lo !');
            exit;
          end;

          if DM.SQLTemplate.Fieldbyname('CUPOCSTATUS').AsString = 'C' then
          begin
            Informa('Este cupom j� est� cancelado !');
            exit;
          end;

          if (ECFAtual <> '') and (PortaECFAtual <> '') and (copy(EcfAtual,1,4) <> 'NFCE') then
            if Pergunta('N�O', '* * * CANCELAR NA IMPRESSORA FISCAL TAMBEM ? * * *') then
              CancelarCupomFiscal(ECFAtual, PortaECFAtual);

          ImprimirCancelamento := True;
          if (DM.SQLTemplate.FieldByName('CHAVEACESSO').AsString <>'') and (DM.SQLTemplate.FieldByName('PROTOCOLO').Value <> '') then
            begin
              dm.ACBrNFe.NotasFiscais.Clear;
              dm.ACBrNFe.Consultar(DM.SQLTemplate.FieldByName('CHAVEACESSO').AsString);
              if (dm.ACBrNFe.WebServices.Consulta.cStat = 100) then
                begin
                  dm.ACBrNFe.EventoNFe.Evento.Clear;
                  with dm.ACBrNFe.EventoNFe.Evento.Add do
                    begin
                      InfEvento.chNFe      := DM.SQLTemplate.FieldByName('CHAVEACESSO').AsString ;
                      InfEvento.CNPJ       := dm.SQLEmpresaEMPRA14CGC.Value;
                      InfEvento.dhEvento   := Now;
                      InfEvento.tpEvento   := teCancelamento;
                      InfEvento.detEvento.xJust := 'Cancelamento por erro no preenchimento dos dados da nfe.'; // Justificativa;
                      InfEvento.detEvento.nProt := DM.SQLTemplate.FieldByName('PROTOCOLO').Value;
                    end;

                  // Envia o Cancelamento
                  dm.ACBrNFe.EnviarEvento(1);    {trunk2}

                  // Refaz Consulta pra ver se NFCe foi Cancelado se sim
                  dm.ACBrNFe.EventoNFe.Evento.Clear;
                  dm.ACBrNFe.NotasFiscais.Clear;
                  dm.ACBrNFe.Consultar(DM.SQLTemplate.FieldByName('CHAVEACESSO').AsString);
                  if (dm.ACBrNFe.WebServices.Consulta.cStat = 101) then
                    begin
                      dm.SQLConsulta.Close;
                      dm.SQLConsulta.RequestLive := False;
                      dm.SQLConsulta.SQL.Text    := 'Update CUPOM Set STNFE='+IntToStr(dm.ACBrNFe.WebServices.consulta.cStat)+
                                                    ' Where CUPOA13ID ="'+DM.SQLTemplate.FieldByName('CUPOA13ID').AsString+'"';
                      dm.SQLConsulta.ExecSQL;
                    end
                  else
                    ImprimirCancelamento := False;
                end;
            end;
        except on  E : Exception do
          begin
            ShowMessage('Erro: ' + e.Message);
            ImprimirCancelamento := False;
          end;
        end;


        MostraMsg('Aguarde, cancelando venda...');

        { Removido Adilson, pois quando se troca de ECF no terminal o teste fica errado, pq pega o ult nro do cupom da antiga ecf
        if (ECFAtual <> '') and (PortaECFAtual <> '')  and (DM.SQLTemplate.Fieldbyname('CUPOINRO').AsInteger = NroUltCupom) then
          begin
            CancelarCupomFiscal(ECFAtual, PortaECFAtual);
            if CancelamentoCupom(Docum, IntToStr(DM.UsuarioAtual)) then
              Informa('Cupom ' + Docum + ' cancelado com sucesso !')
            else
              Informa('Problemas ao cancelar cupom !');
          end
        else
          begin}

        if CancelamentoCupom(Docum, IntToStr(DM.UsuarioAtual)) then
          begin
            Informa('Cupom ' + Docum + ' cancelado com sucesso !');
            {Se tiver usado credito nesse cupom, estornar o credito usado}

            {grava na tabela CLIENTECREDITO}
            dm.sqlConsulta.Close;
            dm.sqlConsulta.sql.text := 'select CUPOA13ID, CLIEA13ID, VALORDEBITO from CLIENTECREDITO where (VALORDEBITO>0) and CUPOA13ID="'+Docum+'"';
            dm.sqlConsulta.Open;
            if not dm.sqlConsulta.IsEmpty then
              begin
                SQLClienteCredito.Open;
                SQLClienteCredito.Append;
                SQLClienteCreditoID.Value            := SQLMax('clientecredito','id','0=0');
                SQLClienteCreditoDATA.AsString       := FormatDateTime('dd/mm/yyyy',now);
                SQLClienteCreditoCLIEA13ID.Value     := dm.sqlConsulta.fieldbyname('CLIEA13ID').Value;
                SQLClienteCreditoCUPOA13ID.Value     := dm.sqlConsulta.fieldbyname('CUPOA13ID').Value;
                SQLClienteCreditoVALORCREDITO.Value  := dm.sqlConsulta.fieldbyname('VALORDEBITO').Value;
                SQLClienteCreditoVALORDEBITO.Value   := 0;
                SQLClienteCreditoHISTORICO.Value     := 'Cancelamento Cupom '+Docum;
                SQLClienteCredito.Post;
                SQLClienteCredito.Close;
              end;
          end
        else
          begin
            Informa('Problemas ao cancelar cupom !');
            Exit;
          end;

          { final da rotina que comentei acima
          end;}

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
                               'N',
                               '');
          SQLMovimentoCaixa.Next;
        end;
        SQLMovimentoCaixa.Close;

        if ImprimirCancelamento then
        begin
          if Pergunta('SIM','Imprimir cancelamento!') then
          begin
            try
              dm.sqlConsulta.Close;
              dm.sqlConsulta.sql.text := 'select CUP.CUPOA13ID, US.USUAA60LOGIN, CUP.CUPODEMIS, TER.TERMA60DESCR, CUP.CUPON2TOTITENS, CUP.CHAVEACESSO from CUPOM CUP ';
              dm.sqlConsulta.sql.text := dm.sqlConsulta.sql.text + 'left join USUARIO US on CUP.USUAICODCANC = US.USUAICOD';
              dm.sqlConsulta.sql.text := dm.sqlConsulta.sql.text + 'left join TERMINAL TER on TER.TERMICOD = CUP.TERMICOD ';
              dm.sqlConsulta.sql.text := dm.sqlConsulta.sql.text + 'where CUPOA13ID="'+Docum+'"';
              addLog('Instru��o de cancelamento: ' + dm.sqlConsulta.sql.text);
              dm.sqlConsulta.Open;
              if not dm.sqlConsulta.IsEmpty then
              begin
                FormTelaItens.MemoRetornoNFE.Lines.Clear;
                FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                FormTelaItens.MemoRetornoNFE.Lines.Add('<ce><e>'+ComboOperacaoCaixa.Text+'</e></ce>');
                FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                FormTelaItens.MemoRetornoNFE.Lines.Add('</ae></fn>Terminal: '+dm.SQLTerminalAtivoTERMA60DESCR.Value);
                FormTelaItens.MemoRetornoNFE.Lines.Add('Usuario : '+dm.SQLUsuarioUSUAA60LOGIN.Value);
                FormTelaItens.MemoRetornoNFE.Lines.Add('Impresso em '+FormatDateTime('dd/mm/yy hh:mm',now));
                FormTelaItens.MemoRetornoNFE.Lines.Add('Cupom: ' + dm.sqlConsulta.fieldbyname('CUPOA13ID').Value);
                FormTelaItens.MemoRetornoNFE.Lines.Add('Operador: ' + dm.sqlConsulta.fieldbyname('USUAA60LOGIN').Value);
                FormTelaItens.MemoRetornoNFE.Lines.Add('Valor: ' +  FormatFloat('#,##0.000',dm.sqlConsulta.fieldbyname('CUPON2TOTITENS').Value));
                if dm.sqlConsulta.fieldbyname('CHAVEACESSO').AsString <> '' then
                  FormTelaItens.MemoRetornoNFE.Lines.Add('Chave de Acesso: ' + dm.sqlConsulta.fieldbyname('CHAVEACESSO').Value);
                FormTelaItens.MemoRetornoNFE.Lines.Add('Data Emiss�o:  ' + FormatDateTime('dd/mm/yyyy',dm.sqlConsulta.fieldbyname('CUPODEMIS').Value));
                FormTelaItens.MemoRetornoNFE.Lines.Add('Motivo: '+DBEditObs.Text);
                FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                FormTelaItens.MemoRetornoNFE.Lines.Add(' ');
                FormTelaItens.MemoRetornoNFE.Lines.Add('</corte_parcial>');
                dm.ACBrPosPrinter.Device.Desativar;
                dm.ACBrPosPrinter.Device.Ativar;
                dm.ACBrPosPrinter.Imprimir(FormTelaItens.MemoRetornoNFE.Lines.Text);
                Sleep(500);
              end;

              except
                Informa('Problemas na impress�o! '+ #13 +ComboOperacaoCaixa.Text+ ' Gravado mas n�o impresso!');
              end;
          end ;
        end;
      end;
  end;
  //FECHAMENTO DO CAIXA
  if SQLOperacaoCaixaOPCXA5SIGLA.Value = 'FECHA' Then {Fechamento Caixa}
    begin
      if DM.SQLConfigGeralVERIFICA_CUPOM_PENDENTE.AsString = 'S' then
      begin
        DecodeDate(Date,Ano,Mes,Dia);
        dm.sqlConsulta.Close;
        dm.sqlConsulta.SQL.Clear;
        dm.sqlConsulta.SQL.Add('select * from CUPOM CUP ');
        dm.sqlConsulta.SQL.Add('where CUP.CHAVEACESSO <> '''' and ');
        dm.sqlConsulta.SQL.Add('coalesce(CUP.STNFE, '''') = '''' and ');
        dm.sqlConsulta.SQL.Add('CUP.TERMICOD = ' + IntToStr(TerminalAtual) + ' and ');
        dm.sqlConsulta.SQL.Add('extract(month from CUP.CUPODEMIS) = ''' +  IntToStr(Mes) + ''' and');
        dm.sqlConsulta.SQL.Add('extract(year from CUP.CUPODEMIS) = ''' + IntToStr(Ano) + '''');
        addLog('Instru��o de busca cupons pendentes: ' + dm.sqlConsulta.sql.text);
        dm.sqlConsulta.Open;
        if not (dm.sqlConsulta.IsEmpty) then
        begin
          if Pergunta('SIM','Existem cupons pendentes de envio, deseja informar outro usu�rio! ') then
            begin
              RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'PERMITE_FECHAMENTO_PENDENTE',InfoRetornoUser);
              if RetornoCampoUsuario <> 'S' then
                Exit;
            end
            else
             exit;
        end;
      end;

      if DM.SQLUsuario.FieldByName('USUACPERMREDZ').AsString <> 'S' then
        if Pergunta('SIM','Voc� n�o tem permiss�o para realizar Fechamento de Caixa! Deseja Informar Outro Usu�rio?') then
          begin
            RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACPERMREDZ',InfoRetornoUser);
            if RetornoCampoUsuario <> 'S' then
              Exit;
          end
        else
          Exit;

       //GRAVAR STATUS DE FECHAMENTO DO CAIXA NA TABELA TERMINAL(PDV)
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

       // Gravar Movimento de Caixa mostrando Abertura de Gaveta Avulso
       GravaMovimentoCaixa(DM.SQLTotalizadorCaixa,
                           DM.SQLTotalizar,
                           EmpresaPadrao,//WEMPRICOD
                           IntToStr(TerminalAtual),//WTERMICOD
                           FormatDateTime('mm/dd/yyyy', Now),//WMVCIXDMOV
                           'Null',//WNUMEICOD
                           SQLOperacaoCaixaOPCXICOD.AsString,//WOPCXICOD
                           IntToStr(DM.UsuarioAtual),//WUSUAICOD
                           'Fecha Caixa',//WMVCIXA15DOCORIG
                           0,//WMOVICAIXN2VLR
                           0,//WMOVICAIXN2VLRJURO
                           0,//WMOVICAIXN2VLRMULTA
                           0,//WMOVICAIXN2VLRDEC
                           'Null',//WMOVICAIXA6NUMCUPOM
                           '',//WTIPO
                           UsuarioAtualNome+'/'+ UsuarioAutorizouOperacao,//WMVCXA255HIST
                           'N',
                           '');

       if (ECFAtual <> '') and (PortaECFAtual <> '') and (Copy(ECFAtual,1,4) <> 'NFCE') then
         begin
           if Pergunta('NAO','DESEJA IMPRIMIR A REDUCAO Z AGORA ?' + #13 +'Esta IMPRESSAO implicar� no fechamento di�rio da impressora fiscal, portanto mais nenhum cupom fiscal poder� ser impresso hoje !') then
             begin
               MostraMsg('Aguarde, emitindo Redu��o Z...') ;
               Reducao_Z(ECFAtual, PortaECFAtual) ;
             end;
         end;
    end ;

  if SQLOperacaoCaixaOPCXA5SIGLA.Value = 'ESTRC' Then {Estorno Recto.Credi�rio}
    begin
      EstornoRecebimento ;
    end ;

  if (FSOLICITA_TROCO_ABERTURA) and (SQLOperacaoCaixa.FieldByName('OPCXA5SIGLA').AsString = 'ABERT') and not(FJaInseriuTroco) then
  begin
    FJaInseriuTroco := True;

    with ExecSql('SELECT OPCXICOD FROM OPERACAOCAIXA WHERE OPCXA5SIGLA = ''TROCO''') do
    try
      EditTipMov.Text := FieldByName('OPCXICOD').AsString;
      EditTipMovExit(EditTipMov);
    finally
      Free;
    end;

    ComboOperacaoCaixaExit(ComboOperacaoCaixa);
    EditTipMov.Enabled := False;
    ComboOperacaoCaixa.Enabled := False;
    EditValor.SetFocus;
    Exit;
  end;

  if (SQLOperacaoCaixaCTCRICOD.Value > 0) then
  begin
    with ExecSql('SELECT OPE_BANCO_SANGRIA FROM CONFIGFINANCEIRO') do
    try
      OperacaoSangria := FieldByName('OPE_BANCO_SANGRIA').asInteger;
    finally
      Free;
    end;
    LancaMovimentacaoBanco(StrToInt(EmpresaPadrao),
                           SQLOperacaoCaixaCTCRICOD.Value,
                           OperacaoSangria,
                           0,
                           EditValor.Value,
                           0,
                           0,
                           Now,
                           'Operador: ' + UsuarioAtualNome + ' - Terminal: ' + TerminalAtualNome,
                           '',
                           '',
                           '',
                           '',
                           '');

  end;

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

  //LblValor.Visible       := (SQLOperacaoCaixaOPCXCSOLICVLR.Value = 'S') ;
  EditValor.Visible      := (SQLOperacaoCaixaOPCXCSOLICVLR.Value = 'S');
  LblNumerario.Visible   := (SQLOperacaoCaixaOPCXCAUTENTICA.Value = 'S');
  ComboNumerario.Visible := (SQLOperacaoCaixaOPCXCAUTENTICA.Value = 'S');
  if SQLOperacaoCaixaOPCXA5SIGLA.Value = 'CREDC' then
    begin
      lbCliente.Visible    := true ;
      ComboCliente.Visible := true ;
    end;

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

  NumDoc := InputBox('Estorno Recto.Credi�rio', 'Informe o N�mero do Documento', '');
  Parc   := InputBox('Estorno Recto.Credi�rio', 'Informe a Parcela', '');

  if Pos('.', NumDoc) > 0 then
    NumDoc := ConverteCodigo(NumDoc) ;

  //SETAR A VARI�VEL NUMDOC COM O ID DO CUPOM
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
    Informa('Documento n�o encontrado !') ;
    exit ;
  end ;
  //SETAR A VARI�VEL NUMDOC COM O ID DO CUPOM
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select * from CONTASRECEBER') ;
  DM.SQLTemplate.SQL.Add('where CUPOA13ID = "' + NumDoc + '"') ;
  DM.SQLTemplate.SQL.Add('and   CTRCINROPARC = ' + Parc) ;
  DM.SQLTemplate.Open ;
  if DM.SQLTemplate.EOF then
  begin
  //SETAR A VARI�VEL NUMDOC COM O ID DO CONTAS A RECEBER
    DM.SQLTemplate.Close ;
    DM.SQLTemplate.SQL.Clear ;
    DM.SQLTemplate.SQL.Add('select * from CONTASRECEBER') ;
    DM.SQLTemplate.SQL.Add('where CTRCA13ID = "' + NumDoc + '"') ;
    DM.SQLTemplate.SQL.Add('and   CTRCINROPARC = ' + Parc) ;
    DM.SQLTemplate.Open ;
  end ;

  if DM.SQLTemplate.EOF then
  begin
    Informa('N�o foi encontrado o Contas � Receber deste Cupom !') ;
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
    Informa('N�o foi encontrado nenhum pagamento deste Contas � Receber !') ;
    exit ;
  end ;

  //COLOCAR NO ULTIMO REGISTRO DE RECEBIMENTO CASO TENHA RECEBIMENTOS PARCIAIS
  //ESTORNAR SOMENTE O �LTIMO
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
      DM.SQLTemplate.SQL.Add('set Pendente="S", CTRCDESTORNO = "' + FormatDateTime('mm/dd/yyyy hh:mm:ss', Now) + '"');
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
    Informa('Estorno Cancelado Pelo Usu�rio!') ;
end ;

procedure TFormTelaMovimentoCaixa.DBEditObsExit(Sender: TObject);
begin
  if (SQLOperacaoCaixaOPCXA5SIGLA.AsString = 'CANVV') and (DBEditObs.Text = '') then
    begin
      Informa('Voc� deve especificar um movito para este cancelamento !');
      DBEditObs.SetFocus;
      Abort;
    end;
end;

procedure TFormTelaMovimentoCaixa.ReportAutenticBeforePrint(
  Sender: TObject);
begin
  Empresa.Caption   := EmpresaAtualNome;
//  Data.Caption      := FormatDateTime('dd/mm/yyyy',EditData.Date);
  Operacao.Caption  := ComboOperacaoCaixa.Text;
  OBS.Text          := DBEditObs.Text;
  Valor.Caption     := FormatFloat('#,##0.00',EditValor.Value);
  Numerario.Caption := ComboNumerario.Text;
  Operador.Caption  := UsuarioAtualNome;
end;

procedure TFormTelaMovimentoCaixa.FormShow(Sender: TObject);
begin
  EditTipMov.SetFocus;
  with ExecSql('SELECT SOLICITA_TROCO_ABERTURA FROM CONFIGGERAL') do
  try
    FSOLICITA_TROCO_ABERTURA := FieldByName('SOLICITA_TROCO_ABERTURA').AsString = 'S';
  finally
    Free;
  end;
end;

procedure TFormTelaMovimentoCaixa.GravarFechamentoCupom;
var
  COD_CUPOM_FECHAMENTO, OBSERVACOES, STATUS:String;
  i : integer;
begin

  WITH ExecSql('SELECT gen_id(G_CUPOM_FECHAMENTO,1) AS ID FROM RDB$DATABASE') do
  try
    i := StrToInt(FieldByName('ID').AsString);
    COD_CUPOM_FECHAMENTO :=  QuotedStr(FormatFloat('000',TerminalAtual) + FormatFloat('00000',i));
  finally
    free;
  end;

  if DBEditObs.Text = '' then
    OBSERVACOES := 'null'
  else
    OBSERVACOES := QuotedStr(DBEditObs.Text);

  if DM.SQLTerminalAtivoTERMCSTATUSCAIXA.AsString = '' then
    STATUS := 'null'
  else
    STATUS := QuotedStr(DM.SQLTerminalAtivoTERMCSTATUSCAIXA.AsString);

  try
{    ExecSql('INSERT INTO CUPOM_FECHAMENTO (CUPOA13ID,COD_CUPOM_FECHAMENTO, STATUS,DATA_STATUS, DATA_MOVIMENTO, OPERACAO_CAIXA, OBSERVACOES, TERMICOD)VALUES('
    +COD_CUPOM_FECHAMENTO+','+ QuotedStr(IntToStr(i)) +','+STATUS+','+
    QuotedStr(FormatDateTime('mm/dd/yyyy', DM.SQLTerminalAtivoTERMDSTATUSCAIXA.AsDateTime))
    +','+QuotedStr(FormatDateTime('mm/dd/yyyy', EditData.Date))
    +','+SQLOperacaoCaixaOPCXICOD.AsString+','+  (OBSERVACOES)+','+ IntToStr(TerminalAtual) +')',1);}
    DM.SQLTemplate.Close ;
    DM.SQLTemplate.SQL.Clear ;
    DM.SQLTemplate.SQL.Text := 'INSERT INTO CUPOM_FECHAMENTO (CUPOA13ID,COD_CUPOM_FECHAMENTO, STATUS,DATA_STATUS, DATA_MOVIMENTO, OPERACAO_CAIXA, OBSERVACOES, TERMICOD)VALUES(';
    DM.SQLTemplate.SQL.Text := DM.SQLTemplate.SQL.Text + COD_CUPOM_FECHAMENTO+','+ QuotedStr(IntToStr(i)) +','+STATUS+',';
    DM.SQLTemplate.SQL.Text := DM.SQLTemplate.SQL.Text + QuotedStr(FormatDateTime('mm/dd/yyyy', DM.SQLTerminalAtivoTERMDSTATUSCAIXA.AsDateTime));
    DM.SQLTemplate.SQL.Text := DM.SQLTemplate.SQL.Text + ','+QuotedStr(FormatDateTime('mm/dd/yyyy', EditData.Date));
    DM.SQLTemplate.SQL.Text := DM.SQLTemplate.SQL.Text + ','+SQLOperacaoCaixaOPCXICOD.AsString+','+  (OBSERVACOES)+','+ IntToStr(TerminalAtual) +')';
    DM.SQLTemplate.ExecSQL ;
  except on e: Exception do
    ShowMessage('Erro ao gravar o fechamento do cupom: '+ e.Message);
  end;
  cdsValores.First;
  while not cdsValores.eof do
  begin
    if cdsValoresValor.AsCurrency > 0 then
    begin
        {ExecSql('INSERT INTO CUPOM_FECHAMENTO_ITEM(COD_CUPOM_FECHAMENTO,COD_CPRZ,VALOR)VALUES('
        +COD_CUPOM_FECHAMENTO+','+cdsValoresnumeicod.asstring+','+
        QuotedStr(StringReplace(FormatFloat('0.00', cdsValoresValor.AsCurrency),',','.',[]))
        +')',1);}

        DM.SQLTemplate.Close ;
        DM.SQLTemplate.SQL.Clear ;
        DM.SQLTemplate.SQL.Text := 'INSERT INTO CUPOM_FECHAMENTO_ITEM(COD_CUPOM_FECHAMENTO,COD_CPRZ,VALOR)VALUES('
        +QuotedStr(IntToStr(i))+','+cdsValoresnumeicod.asstring+','+
        QuotedStr(StringReplace(FormatFloat('0.00', cdsValoresValor.AsCurrency),',','.',[]))
        +')';
        DM.SQLTemplate.ExecSQL ;

    end;
    cdsValores.next;
  end;

end;

procedure TFormTelaMovimentoCaixa.SQLOperacaoCaixaAfterScroll(
  DataSet: TDataSet);
begin
  HabilitaFechamento;
end;

procedure TFormTelaMovimentoCaixa.HabilitaFechamento;
begin
    LblNumerario.Visible := SQLOperacaoCaixaOPCXICOD.AsString = '2';
    cxGrid1.Visible := SQLOperacaoCaixaOPCXICOD.AsString = '2';
end;

procedure TFormTelaMovimentoCaixa.SQLOperacaoCaixaOPCXICODChange(
  Sender: TField);
begin
  HabilitaFechamento;
end;

end.

{
ABERT-Abertura Caixa
ABGAV-Abrir Gaveta
CANVD-Cancelamento Venda
DESRC-Desc.Recto.Credi�rio
DESVD-Desconto Venda
DFTRC-Diferen�a Troca Produtos
EVCHP-Entrada Venda Cheque-Pr�
EVCNV-Entrada Venda Conv�nio
EVCRT-Entrada Venda Cart�o
EVPRZ-Entrada Venda Prazo
FECHA-Fechamento Caixa
JURLP-Juros Recebto Lucros Perdas
JURRC-Juros Recto.Credi�rio
LEITX-Leitura X
MULLP-Multa Recebto Lucros Perdas
MULRC-Multa Recto.Credi�rio
RCCRD-Recto.Credi�rio
RECLP-Recto.Lucros Perdas
REDUZ-Redu��o Z
SANGR-Sangria
SUBBO-Substitui��o Bobina
SUPRI-Suprimento
TRCOP-Troca Operador
TROCO-Troco
VDCHQ-Venda Cheque-Pr�
VDCRD-Venda Credi�rio
VDCRT-Venda Cart�o Cr�dito
VDVIS-Venda � Vista
VLFUN-Vale Funcion�rio
CREDC-Credito Cliente
}
