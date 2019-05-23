unit Epson_Termica;

interface

uses DataModulo, RXCtrls, Forms, RxQuery,  UnitLibrary, SysUtils, Dialogs, Controls ;

  //=================================================================================================
  // EPSON_Serial
  //=================================================================================================
  function EPSON_Serial_Abrir_Porta(dwVelocidade:Integer; wPorta:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_Serial_Abrir_Fechar_Porta_CMD(dwVelocidade:Integer;wPorta:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_Serial_Abrir_PortaAD(pszVelocidade:Pchar;pszPorta:Pchar):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_Serial_Abrir_PortaEx():Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_Serial_Fechar_Porta ():Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_Serial_Obter_Estado_Com():Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_Obter_Dados_Jornada(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_Obter_Estado_Impressora(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
  //====================================================================================================================================
  // EPSON_Fiscal
  //====================================================================================================================================
  function EPSON_Fiscal_Abrir_Cupom(pszCNPJ:PChar; pszRazaoSocial:PChar; pszEndereco1:PChar; pszEndereco2:PChar; dwPosicao:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_Fiscal_Dados_Usuario(pszCGC:PChar; pszSocialReason:PChar; pszAddress1:PChar; pszAddress2:PChar; dwPosition:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_Fiscal_Vender_Item(pszCodigo:PChar; pszDescricao:PChar; pszQuantidade:PChar; dwQuantCasasDecimais:Integer; pszUnidade:PChar; pszPrecoUnidade:PChar; dwPrecoCasasDecimais:Integer; pszAliquotas:PChar; dwLinhas:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_Fiscal_Obter_SubTotal(pszSubTotal:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_Fiscal_Pagamento(pszNumeroPagamento:PChar; pszValorPagamento:PChar; dwCasasDecimais:Integer; pszDescricao1:PChar; pszDescricao2:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_Fiscal_Desconto_Acrescimo_Item(pszValor:PChar; dwCasasDecimais:Integer; bDesconto:Boolean; bPercentagem:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_Fiscal_Desconto_Acrescimo_Subtotal(pszValor:PChar; dwCasasDecimais:Integer; bDesconto:Boolean; bPercentagem:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_Fiscal_Cancelar_Cupom():Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_Fiscal_Cancelar_Item(pszNumeroItem:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_Fiscal_Cancelar_Ultimo_Item():Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_Fiscal_Cancelar_Desconto_Acrescimo_Item(bDesconto:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_Fiscal_Cancelar_Acrescimo_Desconto_Subtotal(bDesconto:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_Fiscal_Cancelar_Item_Parcial(pszNumeroItem:PChar; pszQuantidade:PChar; dwQuantCasasDecimais:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_Fiscal_Imprimir_Mensagem(pszLinhaTexto1:PChar; pszLinhaTexto2:PChar; pszLinhaTexto3:PChar; pszLinhaTexto4:PChar; pszLinhaTexto5:PChar; pszLinhaTexto6:PChar; pszLinhaTexto7:PChar; pszLinhaTexto8:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_Fiscal_Configurar_Codigo_Barras_Mensagem(dwLinha:Integer; dwTipo:Integer; dwAltura:Integer; dwLargura:Integer; dwPosicao:Integer; dwCaracter:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_Fiscal_Fechar_CupomEx(pszTotalCupom:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_Fiscal_Fechar_Cupom(bCortarPapel:Boolean; bAdicional:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_Fiscal_Mensagem_Aplicacao(pszLinha01:PChar; pszLinha02:PChar):Integer;StdCall; External 'InterfaceEpson.dll';

  function EPSON_RelatorioFiscal_LeituraX():Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_RelatorioFiscal_RZ(pszData:PChar; pszHora:PChar; dwHorarioVerao:Integer; pszCRZ:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_RelatorioFiscal_RZEx(dwHorarioVerao:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_RelatorioFiscal_Leitura_MF(pszInicio:PChar; pszFim:PChar; dwTipoImpressao:Integer; pszBuffer:PChar; pszArquivo:PChar; pdwTamanhoBuffer:PInteger; dwTamBuffer:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_RelatorioFiscal_Salvar_LeituraX(pszArquivo:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_RelatorioFiscal_Abrir_Dia():Integer;StdCall; External 'InterfaceEpson.dll';

  function EPSON_NaoFiscal_Abrir_Relatorio_Gerencial(pszNumeroRelatorio:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_NaoFiscal_Imprimir_Linha(pszLinha:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_NaoFiscal_Fechar_Relatorio_Gerencial(bCortarPapel:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';

  function EPSON_NaoFiscal_Abrir_Comprovante(pszCNPJ:PChar;pszRazaoSocial:PChar;PszEndereco1:PChar;pszEndereco2:PChar;dwPosicao:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_NaoFiscal_Imprimir_LinhaEX(pszLinha:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_NaoFiscal_Fechar_Comprovante(bCortarPapel:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';


  function EPSON_NaoFiscal_Abrir_CCD(pszNumeroPagamento:PChar; pszValor:PChar; dwCasasDecimais:Integer; pszParcelas:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_NaoFiscal_Imprimir_15Linhas(pszLinha00:PChar;pszLinha01:PChar;pszLinha02:PChar;pszLinha03:PChar;pszLinha04:PChar;pszLinha05:PChar;pszLinha06:PChar;pszLinha07:PChar;pszLinha08:PChar;pszLinha09:PChar;pszLinha10:PChar;pszLinha11:PChar;pszLinha12:PChar;pszLinha13:PChar;pszLinha014:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_NaoFiscal_Fechar_CCD(bCortarPapel:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_NaoFiscal_Cancelar_CCD(pszNumeroPagamento:PChar; pszValor:PChar; dwCasasDecimais:Integer; pszParcelas:PChar; pszNumeroCupom:PChar):Integer;StdCall; External 'InterfaceEpson.dll';

  function EPSON_Impressora_Abrir_Gaveta():Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_Impressora_Avancar_Papel(dwLines:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_Impressora_Cortar_Papel():Integer;StdCall; External 'InterfaceEpson.dll';

  function EPSON_Obter_Dados_MF_MFD(pszInicio:PChar; pszFinal:PChar; dwTipoEntrada:Integer; dwEspelhos:Integer; dwAtoCotepe:Integer; dwSintegra:Integer; pszArquivoSaida:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_Obter_Dados_Arquivos_MF_MFD(pszInicio:PChar;pszFim:PChar;dwTipoEntrada:Integer;dwEspelhos:Integer;dwAtoCOTEPE:Integer;dwSintegra:Integer;pszArquivoSaida:PChar;pszArquivoMF:PChar;pszArquivoMFD:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_Obter_Dados_MF_MFD_Progresso(pszInicio:PChar;pszFim:PChar;dwTipoEntrada:Integer;dwEspelhos:Integer;dwAtoCOTEPE:Integer;dwSintegra:Integer;pszArquivoSaida:PChar; pszProgresso:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_Obter_AtoCOTEPE_SeparadoEX(pszFileName:PChar; dwOption:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_Obter_Arquivos_Binarios(pszInicio:PChar; pszFinal:PChar; dwTipoEntrada:Integer; pszArquivoMF:PChar; pszArquivoMFD:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_Obter_Arquivo_Binario_MF(pszArquivo:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
  function EPSON_Obter_Arquivo_Binario_MFD(pszFileName:PChar):Integer;StdCall; External 'InterfaceEpson.dll';


  //====================================================================================================================================

  Procedure atualizaRetorno(funcName:String);
  function  AbrirPortaECF_Epson_Termica : boolean ;
  function  FecharPortaECF_Epson_Termica : boolean ;
  function  AbrirGaveta_Epson_Termica : Boolean;

  procedure Leitura_X_Epson_Termica ;
  function  Reducao_Z_Epson_Termica : boolean ;

  function  AbrirCupomFiscal_Epson_Termica(Var NroCupom : String) : boolean ;
  function  ImprimeItem_Epson_Termica(Codigo: String; Descricao: String; Aliquota: String; Tipo_de_Quantidade: String; Quantidade: Double; Casas_Decimais: Integer; Valor_Unitario: Double; Tipo_de_Desconto: String; Valor_do_Desconto: Double ): boolean ;
  function  CancelaItem_Epson_Termica(Posicao: String) : boolean ;
  function  FecharCupomFiscal_Epson_Termica(TipoAcrescDesc : String; Valor, VlrAcrescDesc, VlrTroco : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery;NomeCli,EnderecoCli,CidadeCli,DocumentoCli, IDCupom, Vendedor, Plano :string; VlrImpostoMedio, AliqImpostoMedio : Double) : boolean ;
  function  CancelarCupomFiscal_Epson_Termica : boolean ;

  function  AbrirCNFV_Epson_Termica(Forma_de_Pagamento: String; Valor_Pago: Double; Numero_do_Cupom: String) : Boolean ;
  function  LinhaTextoLivre_Epson_Termica(Texto : string) : boolean ;
  function  FecharCNFV_Epson_Termica : Boolean ;


  function  AbreRelatorioGerencial_Epson_Termica : Boolean;
  function  EmiteRelatorioGerencial_Epson_Termica(Texto:String):Boolean;
  function  FechaRelatorioGerencial_Epson_Termica : Boolean;

  procedure Delay(Seconds : integer);

var
  ChrRet : array[0..999] of Char;
  IntRet, iRetorno: Integer;

implementation

uses UnitCheckoutLibrary, DB ;

Procedure atualizaRetorno(funcName:String);
  var ST1err, ST1field,ST2, ST3, ST4, ST5, Temp, T1, T2, T3, T4, T5, T6, T7: String;
  var iST3, iST4, iST5, iConta, ret: Integer;
  var flagB15, flagB14, flagB12, flagB11, flagB10, flagB09, flagB07:Boolean;
Begin

  For iConta := 1 To 2 Do
    ST1err := ST1err + ' ';

  For iConta := 1 To 2 Do
    ST1field := ST1field + ' ';

  For iConta := 1 To 4 Do
    ST2 := ST2 + ' ';

  For iConta := 1 To 4 Do
    ST3 := ST3 + ' ';

  For iConta := 1 To 4 Do
    ST4 := ST4 + ' ';

  For iConta := 1 To 4 Do
    ST5 := ST5 + ' ';

  For iConta := 1 To 20 Do
    Temp := Temp + ' ';


  ret := EPSON_Obter_Estado_Impressora(PChar(Temp));

  If ret <> 0 Then
    T7 := 'ERRO'
  Else
    begin
      If iRetorno <> 0 Then
        T7 := 'ERRO'
      Else
        T7 := 'SUCESSO';

      ST1err := Copy(Temp,1,2);
      ST1field := Copy(Temp,3,2);
      ST2 := Copy(Temp,5,4);
      ST3 := Copy(Temp,9,4);
      ST4 := Copy(Temp,13,4);
      ST5 := Copy(Temp,17,4);

      //==============================================================================
      //Par�metros do �ltimo comando
      //==============================================================================
      Case StrToInt(ST1err) of
        0:  T2 := 'Campos sem erro.';
        1:  T2 := 'Campo deve ser um ponteiro para string.';
        2:  T2 := 'String com data inv�lida.';
        3:  T2 := 'String com hora inv�lida.';
        4:  T2 := 'String n�o est� vazia ou cont�m data inv�lida.';
        5:  T2 := 'String n�o est� vazia ou cont�m hora inv�lida.';
        6:  T2 := 'String n�o pode ser vazia.';
        else  T2 := 'Erro n�o mapeado.';
      End;

      if StrToInt(ST1err) <> 0 then
        T2 := T2 + ' - Campo com erro: ' + ST1field;

      //==============================================================================
      //Estado da Comunica��o
      //==============================================================================
      Case StrToInt('$' + ST2) of
        0:  T3:= 'Porta aberta com sucesso.';
        1:  T3 := 'Porta j� est� aberta.';
        2:  T3 := 'Porta usada por outra aplica��o.';
        4:  T3 := 'N�mero de porta inv�lido.';
        5:  T3 := 'Velocidade inv�lida.';
        16: T3 := 'String n�o est� vazia ou cont�m hora inv�lida.';
        else T3 := 'Erro interno da biblioteca.';
      end;

      //==============================================================================
      //Estado da Impressora
      //==============================================================================
      flagB09 := false;
      flagB10 := false;
      T4 := '';
      iST3 := StrToInt('$' + ST3);
      //****************************************************************************
      //                       TRATAMENTO DO BIT 15                                *
      //****************************************************************************
      If (iST3 >= 32768) Then
        BEGIN
          T4 := 'Impressora(Offline) - ';
          iST3 := iST3 - 32768;
        END;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 14                                *
      //****************************************************************************
      If (iST3 >= 16384) Then
        BEGIN
          T4 := T4 + 'Erro de impress�o - ';
          iST3 := iST3 - 16384;
        END;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 13                                *
      //****************************************************************************
      If (iST3 >= 8192) Then
        BEGIN
          T4 := T4 + 'Tampa superior aberta - ';
          iST3 := iST3 - 8192;
        END;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 12                                *
      //****************************************************************************
      If (iST3 >= 4096) Then
        BEGIN
          T4 := T4 + 'Estado da gaveta = 1 - ';
          iST3 := iST3 - 4096;
        END;

      //****************************************************************************
      //                       TRATAMENTO DOS BITS 10 E 9                          *
      //****************************************************************************
      If (iST3 >= 1024) Then
        BEGIN
          flagB10 := true;
          iST3 := iST3 - 1024;
        END;

      If (iST3 >= 512) Then
        BEGIN
          flagB09 := true;
          iST3 := iST3 - 512;
        END;

      If ((flagB10 = True) And (flagB09 = True)) Then
        T4 := T4 + 'Leitura do MICR - '
      Else If ((flagB10 = True) And (flagB09 = False)) Then
        T4 := T4 + 'Esta��o Autentica��o (TMH6000 e TMU675) - '
      Else If ((flagB10 = False) And (flagB09 = True)) Then
        T4 := T4 + 'Esta��o cheque - '
      Else If ((flagB10 = False) And (flagB09 = False)) Then
        T4 := T4 + 'Impressora Online - ';

      //****************************************************************************
      //                       TRATAMENTO DO BIT 8                                 *
      //****************************************************************************
      If (iST3 >= 256) Then
        BEGIN
          T4 := T4 + 'Aguardando retirada do papel - ';
          iST3 := iST3 - 256;
        END;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 7                                 *
      //****************************************************************************
      If (iST3 >= 128) Then
        BEGIN
          T4 := T4 + 'Aguardando inser��o do papel - ';
          iST3 := iST3 - 128;
        END;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 6                                 *
      //****************************************************************************
      If (iST3 >= 64) Then
        BEGIN
          T4 := T4 + 'Estado do sensor inferior da esta��o de cheque = 1 - ';
          iST3 := iST3 - 64;
        END;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 5                                 *
      //****************************************************************************
      If (iST3 >= 32) Then
        BEGIN
          T4 := T4 + 'Estado do sensor superior da esta��o do cheque = 1 - ';
          iST3 := iST3 - 32;
        END;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 4                                 *
      //****************************************************************************
      If (iST3 >= 16) Then
        BEGIN
          T4 := T4 + 'Estado do sensor de autentica��o = 1 - ';
          iST3 := iST3 - 16;
        END;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 3                                 *
      //****************************************************************************
      If (iST3 >= 8) Then
        BEGIN
          T4 := T4 + 'Sem papel - ';
          iST3 := iST3 - 8;
        END;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 2                                 *
      //****************************************************************************
      If (iST3 >= 4) Then
        BEGIN
          T4 := T4 + 'Pouco papel - ';
          iST3 := iST3 - 4;
        END;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 1                                 *
      //****************************************************************************
      If (iST3 >= 2) Then
        BEGIN
          T4 := T4 + 'Sem papel - ';
          iST3 := iST3 - 2;
        END;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 0                                 *
      //****************************************************************************
      If (iST3 >= 1) Then
        BEGIN
          T4 := T4 + 'Pouco papel - ';
        END;

      //==============================================================================
      //Estado fiscal
      //==============================================================================
      flagB15 := false;
      flagB14 := false;
      flagB11 := false;
      flagB10 := false;
      T5 := '';

      iST4 := StrToInt('$' + ST4);

      //****************************************************************************
      //                       TRATAMENTO DOS BITS 15 E 14                         *
      //****************************************************************************
      If (iST4 >= 32768) Then
        BEGIN
          flagB15 := true;
          iST4 := iST4 - 32768;
        END;

      If (iST4 >= 16384) Then
        BEGIN
          flagB14 := true;
          iST4 := iST4 - 16384;
        END;

      If ((flagB15 = True) And (flagB14 = True)) Then
        T5 := T5 + 'Modo Fiscalizado - '
      Else If ((flagB15 = True) And (flagB14 = False)) Then
        T5 := T5 + 'Modo manufatura (N�o-Fiscalizado) - '
      Else If ((flagB15 = False) And (flagB14 = False)) Then
          T5 := T5 + 'Modo bloqueado - ';
      //****************************************************************************

      //****************************************************************************
      //                           TRATAMENTO DO BITS 12                           *
      //****************************************************************************
      If (iST4 >= 4096) Then
        BEGIN
          T5 := T5 + 'Modo de Interven��o T�cnica - ';
          iST4 := iST4 - 4096;
        END
      Else
        T5 := T5 + 'Modo de opera��o normal - ';
      //****************************************************************************

      //****************************************************************************
      //                       TRATAMENTO DOS BITS 11 E 10                         *
      //****************************************************************************
      If (iST4 >= 2048) Then
        BEGIN
          flagB11 := true;
          iST4 := iST4 - 2048;
        END;

      If (iST4 >= 1024) Then
        BEGIN
          flagB10 := true;
          iST4 := iST4 - 1024;
        END;

      If ((flagB11 = True) And (flagB10 = True)) Then
        T4 := T4 + 'Erro de leitura/escrita da Mem�ria Fiscal - '
      Else If ((flagB11 = True) And (flagB10 = False)) Then
        T4 := T4 + 'Mem�ria Fiscal cheia - '
      Else If ((flagB11 = False) And (flagB10 = True)) Then
        T4 := T4 + 'Mem�ria Fiscal em esgotamento - '
      Else If ((flagB11 = False) And (flagB10 = False)) Then
        T4 := T4 + 'Mem�ria Fiscal em opera��o normal - ';
      //****************************************************************************

      //****************************************************************************
      //                           TRATAMENTO DO BIT7                              *
      //****************************************************************************
      If (iST4 >= 128) Then
        BEGIN
          T5 := T5 + 'Per�odo de vendas aberto - ';
          iST4 := iST4 - 128;
        END
      ELSE
        T5 := T5 + 'Per�odo de vendas fechado - ';
      //****************************************************************************

      //****************************************************************************
      //                       TRATAMENTO DOS BITS 3,2,1 E 0                       *
      //****************************************************************************
      If iST4 = 9 Then
        T5 := T5 + 'Cheque ou autentica��o (TMH6000 e TMU675) - '
      Else If iST4 = 8 Then
        T5 := T5 + 'Comprovante N�o-Fiscal - '
      Else If iST4 = 4 Then
        T5 := T5 + 'Relat�rio Gerencial - '
      Else If iST4 = 3 Then
        T5 := T5 + 'Estorno de Comprovante de Cr�dito ou D�bito - '
      Else If iST4 = 2 Then
        T5 := T5 + 'Comprovante de Cr�dito ou D�bito - '
      Else If iST4 = 1 Then
        T5 := T5 + 'Cupom Fiscal aberto - '
      Else If iST4 = 0 Then
        T5 := T5 + 'Documento fechado - ';
      //****************************************************************************

      //==============================================================================
      //Estado de execu��o do �ltimo comando
      //==============================================================================
      ST5 := UpperCase(ST5);
      iST5 := StrToInt('$' + ST5);
      Case iST5 of
        $0000: T6 := 'Resultado sem erro';
        $0001: T6 := 'Erro interno';
        $0002: T6 := 'Erro de inicia��o do equipamento';
        $0003: T6 := 'Erro de processo interno';
        $0101: T6 := 'Comando inv�lido para o estado atual';
        $0102: T6 := 'Comando inv�lido para o documento atual';
        $0106: T6 := 'Comando aceito apenas fora de interven��o';
        $0107: T6 := 'Comando aceito apenas dentro de interven��o';
        $0108: T6 := 'Comando inv�lido durante processo de scan';
        $0109: T6 := 'Excesso de interven��es';
        $0201: T6 := 'Comando com frame inv�lido';
        $0202: T6 := 'Comando inv�lido';
        $0203: T6 := 'Campos em excesso';
        $0204: T6 := 'Campos em falta';
        $0205: T6 := 'Campo n�o opcional';
        $0206: T6 := 'Campo alfanum�rico inv�lido';
        $0207: T6 := 'Campo alfab�tico inv�lido';
        $0208: T6 := 'Campo num�rico inv�lido';
        $0209: T6 := 'Campo bin�rio inv�lido';
        $020A: T6 := 'Campo imprim�vel inv�lido';
        $020B: T6 := 'Campo hexadecimal inv�lido';
        $020C: T6 := 'Campo data inv�lido';
        $020D: T6 := 'Campo hora inv�lido';
        $020E: T6 := 'Campo com atributos de impress�o inv�lidos';
        $020F: T6 := 'Campo booleano inv�lido';
        $0210: T6 := 'Campo com tamanho inv�lido';
        $0211: T6 := 'Extens�o de comando inv�lida';
        $0212: T6 := 'C�digo de barra n�o permitido';
        $0213: T6 := 'Atributos de impress�o n�o permitidos';
        $0214: T6 := 'Atributos de impress�o inv�lidos';
        $0215: T6 := 'C�digo de barras incorretamente definido';
        $0217: T6 := 'Comando invalido para a porta selecionada';
        $0301: T6 := 'Erro de hardware';
        $0302: T6 := 'Impressora n�o est� pronta';
        $0303: T6 := 'Erro de Impress�o';
        $0304: T6 := 'Falta de papel';
        $0305: T6 := 'Pouco papel dispon�vel';
        $0306: T6 := 'Erro em carga ou expuls�o do papel';
        $0307: T6 := 'Caracter�stica n�o suportada pela impressora';
        $0308: T6 := 'Erro de display';
        $0309: T6 := 'Seq��ncia de scan inv�lida';
        $300A: T6 := 'N�mero de �rea de recorte inv�lido';
        $300B: T6 := 'Scanner n�o preparado';
        $300C: T6 := 'Qualidade de Logotipo n�o suportada pela impressora';
        $030E: T6 := 'Erro de leitura do microc�digo';
        $0401: T6 := 'N�mero de s�rie inv�lido';
        $0402: T6 := 'Requer dados de fiscaliza��o j� configurados';
        $0501: T6 := 'Data / Hora n�o configurada';
        $0502: T6 := 'Data inv�lida';
        $0503: T6 := 'Data em intervalo inv�lido';
        $0504: T6 := 'Nome operador inv�lido';
        $0505: T6 := 'N�mero de caixa inv�lido';
        $0508: T6 := 'Dados de Cabe�alho ou rodap� inv�lidos';
        $0509: T6 := 'Excesso de fiscaliza��o';
        $500C: T6 := 'N�mero m�ximo de meios de pagamento j� definidos';
        $050D: T6 := 'Meio de pagamento j� definido';
        $050E: T6 := 'Meio de pagamento inv�lido';
        $050F: T6 := 'Descri��o do meio de pagamento inv�lido';
        $0510: T6 := 'Valor m�ximo de desconto inv�lido';
        $0513: T6 := 'Logotipo do usu�rio inv�lido';
        $0514: T6 := 'Seq��ncia de logotipo inv�lido';
        $0515: T6 := 'Configura��o de display inv�lida';
        $0516: T6 := 'Dados do MICR inv�lidos';
        $0517: T6 := 'Campo de endere�o inv�lido';
        $0518: T6 := 'Nome da loja n�o definido';
        $0519: T6 := 'Dados fiscais n�o definidos';
        $510A: T6 := 'N�mero seq�encial do ECF inv�lido';
        $510B: T6 := 'Simbologia do GT inv�lida, devem ser todos diferentes';
        $510C: T6 := 'N�mero de CNPJ inv�lido';
        $051D: T6 := 'Senha de fiscaliza��o inv�lida';
        $051E: T6 := '�ltimo documento deve ser uma redu��o Z';
        $051F: T6 := 'S�mbolo da moeda igual ao atualmente cadastrado';
        $0520: T6 := 'Identifica��o da al�quota n�o cadastrada';
        $0521: T6 := 'Al�quota n�o cadastrada';
        $0601: T6 := 'Mem�ria de Fita-detalhe esgotada';
        $0605: T6 := 'N�mero de s�rie invalido para a Mem�ria de Fita-detalhe';
        $0606: T6 := 'Mem�ria de Fita-detalhe n�o iniciada';
        $0607: T6 := 'Mem�ria de Fita-detalhe n�o pode estar iniciada';
        $0608: T6 := 'N�mero de s�rie da Mem�ria de Fita-detalhe n�o confere';
        $0609: T6 := 'Erro Interno na Mem�ria de Fita-detalhe';
        $0701: T6 := 'Valor inv�lido para o n�mero do registro';
        $0702: T6 := 'Valor inv�lido para o n�mero do item';
        $0703: T6 := 'Intervalo inv�lido para a leitura da MFD';
        $0704: T6 := 'N�mero de usu�rio inv�lido para MFD';
        $0801: T6 := 'Comando inv�lido com jornada fiscal fechada';
        $0802: T6 := 'Comando inv�lido com jornada fiscal aberta';
        $0803: T6 := 'Mem�ria Fiscal esgotada';
        $0804: T6 := 'Jornada fiscal deve ser fechada';
        $0805: T6 := 'N�o h� meios de pagamento definidos';
        $0806: T6 := 'Excesso de meios de pagamento utilizados na jornada fiscal';
        $0807: T6 := 'Jornada fiscal sem movimento de vendas';
        $0808: T6 := 'Intervalo de jornada fiscal inv�lido';
        $0809: T6 := 'Existem mais dados para serem lidos';
        $800A: T6 := 'N�o existem mais dados para serem lidos';
        $800B: T6 := 'N�o pode abrir jornada fiscal';
        $800C: T6 := 'N�o pode fechar jornada fiscal';
        $080D: T6 := 'Limite m�ximo do per�odo fiscal atingido';
        $080E: T6 := 'Limite m�ximo do per�odo fiscal n�o atingido';
        $080F: T6 := 'Abertura da jornada fiscal n�o permitida';
        $0901: T6 := 'Valor muito grande';
        $0902: T6 := 'Valor muito pequeno';
        $0903: T6 := 'Itens em excesso';
        $0904: T6 := 'Al�quotas em excesso';
        $0905: T6 := 'Desconto ou acr�scimos em excesso';
        $0906: T6 := 'Meios de pagamento em excesso';
        $0907: T6 := 'Item n�o encontrado';
        $0908: T6 := 'Meio de pagamento n�o encontrado';
        $0909: T6 := 'Total nulo';
        $900C: T6 := 'Tipo de pagamento n�o definido';
        $090F: T6 := 'Al�quota n�o encontrada';
        $0910: T6 := 'Al�quota inv�lida';
        $0911: T6 := 'Excesso de meios de pagamento com CDC';
        $0912: T6 := 'Meio de pagamento com CDC j� emitido';
        $0913: T6 := 'Meio de pagamento com CDC ainda n�o emitido';
        $0914: T6 := 'Leitura da Mem�ria Fiscal � intervalo CRZ inv�lido';
        $0915: T6 := 'Leitura da Mem�ria Fiscal � intervalo de data inv�lido';
        $0A01: T6 := 'Opera��o n�o permitida ap�s desconto / acr�scimo';
        $0A02: T6 := 'Opera��o n�o permitida ap�s registro de pagamentos';
        $0A03: T6 := 'Tipo de item inv�lido';
        $0A04: T6 := 'Linha de descri��o em branco';
        $0A05: T6 := 'Quantidade muito pequena';
        $0A06: T6 := 'Quantidade muito grande';
        $0A07: T6 := 'Total do item com valor muito alto';
        $0A08: T6 := 'Opera��o n�o permitida antes do registro de pagamentos';
        $0A09: T6 := 'Registro de pagamento incompleto';
        $0A0A: T6 := 'Registro de pagamento finalizado';
        $0A0B: T6 := 'Valor pago inv�lido';
        $0A0C: T6 := 'Valor de desconto ou acr�scimo n�o permitido';
        $0A0E: T6 := 'Valor n�o pode ser zero';
        $0A0F: T6 := 'Opera��o n�o permitida antes do registro de itens';
        $0A11: T6 := 'Cancelamento de desconto e acr�scimo somente para item atual';
        $0A12: T6 := 'N�o foi poss�vel cancelar �ltimo Cupom Fiscal';
        $0A13: T6 := '�ltimo Cupom Fiscal n�o encontrado';
        $0A14: T6 := '�ltimo Comprovante N�o-Fiscal n�o encontrado';
        $0A15: T6 := 'Cancelamento de CDC necess�ria';
        $0A16: T6 := 'N�mero de item em Cupom Fiscal inv�lido';
        $0A17: T6 := 'Opera��o somente permitida ap�s subtotaliza��o';
        $0A18: T6 := 'Opera��o somente permitida durante a venda de itens';
        $0A19: T6 := 'Opera��o n�o permitida em item com desconto ou acr�scimo';
        $0A1A: T6 := 'D�gitos de quantidade inv�lidos';
        $0A1B: T6 := 'D�gitos de valor unit�rio inv�lido';
        $0A1C: T6 := 'N�o h� desconto ou acr�scimo a cancelar';
        $0A1D: T6 := 'N�o h� item para cancelar';
        $0A1E: T6 := 'Desconto ou acr�scimo somente no item atual';
        $0A1F: T6 := 'Desconto ou acr�scimo j� efetuado';
        $0A20: T6 := 'Desconto ou acr�scimo nulo n�o permitido';
        $0A21: T6 := 'Valor unit�rio inv�lido';
        $0A22: T6 := 'Quantidade inv�lida';
        $0A23: T6 := 'C�digo de item inv�lido';
        $0A24: T6 := 'Descri��o inv�lida';
        $0A25: T6 := 'Opera��o de desconto ou acr�scimo n�o permitida';
        $0A26: T6 := 'Mensagem promocional j� impressa';
        $0A27: T6 := 'Linhas adicionais n�o podem ser impressas';
        $0A28: T6 := 'Dados do consumidor j� impresso';
        $0A29: T6 := 'Dados do consumidor somente no fim do documento';
        $0A2A: T6 := 'Dados do consumidor somente no inicio do documento';
        $0A2B: T6 := 'Comando Inv�lido para o item';
        $0E01: T6 := 'N�mero de linhas em documento excedido';
        $0E02: T6 := 'N�mero do relat�rio inv�lido';
        $0E03: T6 := 'Opera��o n�o permitida ap�s registro de itens';
        $0E04: T6 := 'Registro de valor nulo n�o permitido';
        $0E05: T6 := 'N�o h� desconto a cancelar';
        $0E06: T6 := 'N�o h� acr�scimo a cancelar';
        $0E07: T6 := 'Opera��o somente permitida ap�s subtotaliza��o';
        $0E08: T6 := 'Opera��o somente permitida durante registro de itens';
        $0E09: T6 := 'Opera��o n�o-fiscal inv�lida';
        $0E0A: T6 := '�ltimo comprovante N�o-Fiscal n�o encontrado';
        $0E0B: T6 := 'Meio de pagamento n�o encontrado';
        $0E0C: T6 := 'N�o foi poss�vel imprimir nova via';
        $0E0D: T6 := 'N�o foi poss�vel realizar reimpress�o';
        $0E0E: T6 := 'N�o foi poss�vel imprimir nova parcela';
        $0E0F: T6 := 'N�o h� mais parcelas a imprimir';
        $0E10: T6 := 'Registro de item N�o-Fiscal inv�lido';
        $0E11: T6 := 'Desconto ou acr�scimo j� efetuado';
        $0E12: T6 := 'Valor de desconto ou acr�scimo inv�lido';
        $0E13: T6 := 'N�o foi poss�vel cancelar o item';
        $0E14: T6 := 'Itens em excesso';
        $0E15: T6 := 'Opera��o N�o-Fiscal n�o cadastrada';
        $0E16: T6 := 'Excesso de relat�rios / opera��es n�o-fiscais cadastradas';
        $0E17: T6 := 'Relat�rio n�o encontrado';
        $0E18: T6 := 'Comando n�o permitido';
        $0E19: T6 := 'Comando n�o permitido em opera��es n�o-fiscais para movimento de monet�rio';
        $0E1A: T6 := 'Comando permitido apenas em opera��es n�o-fiscais para movimento de monet�rio';
        $0E1B: T6 := 'N�mero de parcelas inv�lido para a emiss�o de CCD';
        $0E1C: T6 := 'Opera��o n�o fiscal j� cadastrada';
        $0E1D: T6 := 'Relat�rio gerencial j� cadastrado';
        $0E1E: T6 := 'Relat�rio Gerencial Inv�lido';
        $3001: T6 := 'Configura��o de cheque n�o registrada';
        $3002: T6 := 'Configura��o de cheque n�o encontrada';
        $3003: T6 := 'Valor do cheque j� impresso';
        $3004: T6 := 'Nominal ao cheque j� impresso';
        $3005: T6 := 'Linhas adicionais no cheque j� impresso';
        $3006: T6 := 'Autentica��o j� impressa';
        $3007: T6 := 'N�mero m�ximo de autentica��es j� impresso';
        Else    T6 := 'Erro desconhecido';
      end;
      //==============================================================================
    end;

  T1 := funcName;

  ShowMessage('Comando               => ' + T1 + chr(13) +
              'Estado dos Parametros => ' + T2 + chr(13) +
              'Estado da Comunicacao => ' + T3 + chr(13) +
              'Estado da Impressora  => ' + T4 + chr(13) +
              'Estado Fiscal         => ' + T5 + chr(13) +
              'Estado de Execucao    => ' + T6 + chr(13) +
              'Estado do Retorno     => ' + T7 + chr(13));

End;

function AbrirPortaECF_Epson_Termica : boolean ;
var
  szVelocidade: String;
  szPorta: String;
begin
  szVelocidade := StringOfChar(' ', 7);
  szPorta := StringOfChar(' ', 1);
  if EPSON_Serial_Abrir_PortaAD(PChar(szVelocidade), PChar(szPorta)) > 0 then
    AbrirPortaECF_Epson_Termica := True
  else
    AbrirPortaECF_Epson_Termica := False;

  // atualizaRetorno('Abrir Porta');
end ;

function FecharPortaECF_Epson_Termica : boolean ;
begin
  if EPSON_Serial_Fechar_Porta() > 0 then
    FecharPortaECF_Epson_Termica := True
  else
    FecharPortaECF_Epson_Termica := False;

  // atualizaRetorno('Fecha Porta');
end ;

procedure Leitura_X_Epson_Termica;
begin
  if EPSON_RelatorioFiscal_Abrir_Dia > 0 then
    EPSON_RelatorioFiscal_LeituraX;
    // atualizaRetorno('Leitura X');
end ;

function Reducao_Z_Epson_Termica : Boolean;
var szCRZ:String;
var iConta:Integer;
begin
  For iConta := 1 To 20 Do
    szCRZ := szCRZ + ' ';

  iRetorno := EPSON_RelatorioFiscal_RZ('', '', 2, PChar(szCRZ));
  // atualizaRetorno('Reducao Z');

  if iRetorno > 0 then
    Reducao_Z_Epson_Termica := True
  else
    Reducao_Z_Epson_Termica := False;
end ;

function CancelarCupomFiscal_Epson_Termica : boolean ;
begin
  iRetorno := EPSON_Fiscal_Cancelar_Cupom ;
  // atualizaRetorno('Cancela Cupom');

  if iRetorno = 0 then
    CancelarCupomFiscal_Epson_Termica := True
  else
   CancelarCupomFiscal_Epson_Termica := False;
end ;

function AbrirGaveta_Epson_Termica : Boolean;
begin
  if EPSON_Impressora_Abrir_Gaveta > 0 then
    AbrirGaveta_Epson_Termica := True
  else
    AbrirGaveta_Epson_Termica := False;
end ;

function AbreRelatorioGerencial_Epson_Termica : Boolean;
begin
  if EPSON_NaoFiscal_Abrir_Relatorio_Gerencial('1') = 0 then
    AbreRelatorioGerencial_Epson_Termica := True
  else
    AbreRelatorioGerencial_Epson_Termica := False;
end;

function EmiteRelatorioGerencial_Epson_Termica(Texto:String):Boolean;
begin
  if EPSON_NaoFiscal_Imprimir_Linha(pchar(Texto)) = 0 then
    EmiteRelatorioGerencial_Epson_Termica := True
  else
    EmiteRelatorioGerencial_Epson_Termica := False;
end;

function FechaRelatorioGerencial_Epson_Termica : Boolean;
begin
  if EPSON_NaoFiscal_Fechar_Relatorio_Gerencial(True) = 0 then
    FechaRelatorioGerencial_Epson_Termica := True
  else
    FechaRelatorioGerencial_Epson_Termica := False;
end;

function AbrirCupomFiscal_Epson_Termica(Var NroCupom : String) : boolean ;
var szDados: array[0..70] of Char;
var CPF : string;
var CpfOK : boolean;
begin
  try
    NroCupom := '000000';

    if NotaGaucha = 'S' then
      begin
        repeat
          CpfOK := False;
          CPF := '';
          CPF := InputBox('Nota Fiscal Gaucha!','Informar CPF no Cupom?','');
          if CPF <> '' then
            if length(CPF)=11 then
              begin
                if ValidaCPF(CPF) then
                  CpfOK := True
                else
                 ShowMessage('ERRO: O CPF DIGITADO � INV�LIDO!');
              end;
            if length(CPF)=14 then
              begin
                if ValidaCGC(CPF) then
                  CpfOK := True
                else
                 ShowMessage('ERRO: O CNPJ DIGITADO � INV�LIDO!');
              end;

          if CPF = '' then
            CpfOK := True;
        until
          CpfOK;
      end;

    EPSON_Fiscal_Abrir_Cupom(Pchar(CPF), 'CONSUMIDOR', '', '', 3);
    EPSON_Obter_Dados_Jornada(szDados);
    NroCupom := szDados[58]+szDados[59]+szDados[60]+szDados[61]+szDados[62]+szDados[63] ;
    AbrirCupomFiscal_Epson_Termica := True;
  except
    AbrirCupomFiscal_Epson_Termica := False;
  end;
end ;

function ImprimeItem_Epson_Termica(Codigo: String; Descricao: String; Aliquota: String; Tipo_de_Quantidade: String; Quantidade: Double; Casas_Decimais: Integer; Valor_Unitario: Double; Tipo_de_Desconto: String; Valor_do_Desconto: Double ): boolean ;
var UnidadeVenda, ValorUnitarioEcf, ValorDescontoEcf, QuantEcf, TipoDescEcf, FormatSTRValor, FormatSTRQTde : string;
var ValorUnitarioMenosDesconto, TotalItemECF, TotalItemCalc : Double;
begin
  Case DM.SQLTerminalAtivoTERMINRODECVALORUNIT.AsInteger of
    2: FormatSTRValor := '0.00';
    3: FormatSTRValor := '0.000';
  End;
  Case DM.SQLTerminalAtivoTERMINRODECQUANT.AsInteger of
    2: FormatSTRQTde := '0.00';
    3: FormatSTRQTde := '0.000';
  End;

  ValorUnitarioEcf           := FormatFloat(FormatSTRValor,Valor_Unitario);
  UnidadeVenda := dm.SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',dm.SQLLocate('PRODUTO','PRODICOD','UNIDICOD',Codigo));
  if Frac(Quantidade) > 0 then
    begin
      Tipo_de_Quantidade := 'F';
      TipoDescECF        := 'D';

      case DM.SQLTerminalAtivoTERMINRODECQUANT.Value of
        2 : begin
              // Remover virgura e ponto para ir com 4 digitos o valor de venda e a qtde.
              QuantEcf := FormatFloat(FormatSTRQTde,Quantidade);
              while pos('.',QuantEcf) > 0 do
                delete(QuantEcf,pos('.',QuantEcf),1);
              while pos(',',QuantEcf) > 0 do
                delete(QuantEcf,pos(',',QuantEcf),1);
              while pos('.',ValorUnitarioECF) > 0 do
                delete(ValorUnitarioECF,pos('.',ValorUnitarioECF),1);
              while pos(',',ValorUnitarioECF) > 0 do
                delete(ValorUnitarioECF,pos(',',ValorUnitarioECF),1);

              IntRet   := EPSON_Fiscal_Vender_Item(pchar(Codigo), pchar(Descricao), pchar(QuantEcf), DM.SQLTerminalAtivoTERMINRODECQUANT.AsInteger, pchar(UnidadeVenda), pchar(ValorUnitarioECF), DM.SQLTerminalAtivoTERMINRODECVALORUNIT.AsInteger,pchar(Aliquota), 1 );
            end;
        3 : begin
              TotalItemECF    := StrToFloat(FormatFloat('##0.00', StrToFloat(FormatFloat(FormatSTRValor,Valor_Unitario))*
                                 StrToFloat(FormatFloat(FormatSTRQTde,Quantidade))));
              TotalItemCalc   := Quantidade*Valor_Unitario;

              while (TotalItemECF>TotalItemCalc) do
                begin
                  Quantidade := Quantidade + 0.001;
                  TotalItemCalc := Quantidade*Valor_Unitario;
                end;

              // Remover virgura e ponto para ir com 4 digitos o valor de venda e a qtde.
              QuantEcf := FormatFloat(FormatSTRQTde,Quantidade);
              while pos('.',QuantEcf) > 0 do
                delete(QuantEcf,pos('.',QuantEcf),1);
              while pos(',',QuantEcf) > 0 do
                delete(QuantEcf,pos(',',QuantEcf),1);

              while pos('.',ValorUnitarioECF) > 0 do
                delete(ValorUnitarioECF,pos('.',ValorUnitarioECF),1);
              while pos(',',ValorUnitarioECF) > 0 do
                delete(ValorUnitarioECF,pos(',',ValorUnitarioECF),1);

              IntRet   := EPSON_Fiscal_Vender_Item(Pchar(Codigo), Pchar(Descricao), Pchar(QuantEcf), DM.SQLTerminalAtivoTERMINRODECQUANT.AsInteger, Pchar(UnidadeVenda), Pchar(ValorUnitarioEcf), DM.SQLTerminalAtivoTERMINRODECVALORUNIT.AsInteger, Pchar(Aliquota), 1);
            end;
      end;
    end
  else
    begin
      Tipo_de_Quantidade := 'I';

      // Remover virgura e ponto para ir com 4 digitos o valor de venda e a qtde.
      QuantEcf := FormatFloat(FormatSTRQTde,Quantidade);
      while pos('.',QuantEcf) > 0 do
        delete(QuantEcf,pos('.',QuantEcf),1);
      while pos(',',QuantEcf) > 0 do
        delete(QuantEcf,pos(',',QuantEcf),1);
      while pos('.',ValorUnitarioECF) > 0 do
        delete(ValorUnitarioECF,pos('.',ValorUnitarioECF),1);
      while pos(',',ValorUnitarioECF) > 0 do
        delete(ValorUnitarioECF,pos(',',ValorUnitarioECF),1);

      // O Parametro abaixo "Casas Decimais" � somente para o Valor Unitario a ser passado
      IntRet := EPSON_Fiscal_Vender_Item(Pchar(Codigo), Pchar(Descricao), Pchar(QuantEcf), DM.SQLTerminalAtivoTERMINRODECQUANT.AsInteger, Pchar(UnidadeVenda), Pchar(ValorUnitarioEcf), DM.SQLTerminalAtivoTERMINRODECVALORUNIT.AsInteger, Pchar(Aliquota), 1);
    end;

  if IntRet = 0 then
    ImprimeItem_Epson_Termica := true
  else
    ImprimeItem_Epson_Termica := false;

 // Delay(1);

  if (IntRet = 0) and (Valor_do_Desconto > 0) then
    begin
      // Remover virgura e ponto para ir com 4 digitos o valor de venda e a qtde.
      ValorDescontoEcf := FormatFloat('#0.00',Valor_do_Desconto);
      while pos('.',ValorDescontoEcf) > 0 do
        delete(ValorDescontoEcf,pos('.',ValorDescontoEcf),1);
      while pos(',',ValorDescontoEcf) > 0 do
        delete(ValorDescontoEcf,pos(',',ValorDescontoEcf),1);

      if (Tipo_de_Desconto = 'V') then
        IntRet := EPSON_Fiscal_Desconto_Acrescimo_Item(PChar(ValorDescontoEcf), 2, True, False)
      else
        IntRet := EPSON_Fiscal_Desconto_Acrescimo_Item(PChar(ValorDescontoEcf), 2, True, True);
    end;
end;

function CancelaItem_Epson_Termica(Posicao: String) : boolean ;
begin
  try
    IntRet := EPSON_Fiscal_Cancelar_Item(pchar(Posicao)) ;

    CancelaItem_Epson_Termica := True;
  except
    CancelaItem_Epson_Termica := False;
  end;
end ;

function FecharCupomFiscal_Epson_Termica(TipoAcrescDesc : String; Valor, VlrAcrescDesc, VlrTroco : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery;NomeCli,EnderecoCli,CidadeCli,DocumentoCli, IDCupom, Vendedor, Plano :string; VlrImpostoMedio, AliqImpostoMedio : Double) : boolean ;
var
  MsgFimCupom, MsgFimCupom1,MsgFimCupom2,MsgFimCupom3,MsgFimCupom4, MsgFimCupom5, MsgFimCupom6,MsgFimCupom7,MsgFimCupom8,
  NumerarioDescricao, VlrAcrescDescSTR, ValorPagamentoSTR, CNPJCPF, IERG : string ;
  TotalVista,  TotalPrazo : double ;
  I : Integer;
begin
  // INICIAR FECHAMENTO CUPOM
  VlrAcrescDescSTR := FormatFloat('##0.000',VlrAcrescDesc);
  while pos('.',VlrAcrescDescSTR) > 0 do
    delete(VlrAcrescDescSTR,pos('.',VlrAcrescDescSTR),1);
  while pos(',',VlrAcrescDescSTR) > 0 do
    delete(VlrAcrescDescSTR,pos(',',VlrAcrescDescSTR),1);

  if (VlrAcrescDesc > 0) and (TipoAcrescDesc = 'D') then
    EPSON_Fiscal_Desconto_Acrescimo_Subtotal(pchar(VlrAcrescDescSTR), 3, True, False);

  // CALCULAR TOTAL VENDA PRAZO
  SQLFPPrazo.First ;
  TotalPrazo := 0 ;
  while not SQLFPPrazo.EOF do
    begin
      TotalPrazo :=  TotalPrazo + StrToFloat(FormatFloat('##0.000',SQLFPPrazo.Fieldbyname('VALORVENCTO').AsFloat));
      SQLFPPrazo.Next;
    end ;

  // ENVIAR VALORES POR NUMERARIO AVISTA
  SQLFPVista.First;
  while not SQLFPVista.Eof do
    begin
      NumerarioDescricao := RetornaTotalizadorNumerarioECFDarumaFS345(Ecf_ID,SQLFPVista.Fieldbyname('NUMEICOD').AsString);
      ValorPagamentoSTR := FormatFloat('##0.000',SQLFPVista.Fieldbyname('VALORPARC').AsFloat);

      while pos('.',ValorPagamentoSTR) > 0 do
        delete(ValorPagamentoSTR,pos('.',ValorPagamentoSTR),1);
      while pos(',',ValorPagamentoSTR) > 0 do
        delete(ValorPagamentoSTR,pos(',',ValorPagamentoSTR),1);

      EPSON_Fiscal_Pagamento(pchar(NumerarioDescricao), pchar(ValorPagamentoSTR), 3, '', '');
      TotalVista := TotalVista + StrToFloat(FormatFloat('##0.000',SQLFPVista.Fieldbyname('VALORPARC').AsFloat)) ;
      SQLFPVista.Next ;
    end ;

{  if (TotalVista + TotalPrazo) < Valor then
    TotalPrazo := TotalPrazo + (Valor-(TotalVista + TotalPrazo)) ;

  if (TotalVista + TotalPrazo) > Valor then
    TotalPrazo := TotalPrazo - ((TotalVista + TotalPrazo)-Valor) ;}

  if TotalPrazo > 0 then
    begin
      NumerarioDescricao := RetornaTotalizadorNumerarioECFDarumaFS345(Ecf_ID,SQLFPPrazo.Fieldbyname('NUMEICOD').AsString);
      ValorPagamentoSTR  := FormatFloat('##0.000',TotalPrazo);
      while pos('.',ValorPagamentoSTR) > 0 do
        delete(ValorPagamentoSTR,pos('.',ValorPagamentoSTR),1);
      while pos(',',ValorPagamentoSTR) > 0 do
        delete(ValorPagamentoSTR,pos(',',ValorPagamentoSTR),1);

      EPSON_Fiscal_Pagamento(pchar(NumerarioDescricao), pchar(ValorPagamentoSTR), 3, '', '');
    end;

  //IMPRIMIR DADOS DO CLIENTE
  if ImprimeDadosClienteCupom = 'S' then
    begin
      if dm.SQLEmpresaEMPRCLUCROREAL.Value = 'N' then
        begin
          MsgFimCupom1 := 'Cup.ID:' + IDCupom +'  Pl:'+PlacaCliente+ '  KM:'+KmCliente;
          MsgFimCupom2 := 'Oper: ' +  copy(UsuarioAtualNome,1,10) + ' Vend: '   + copy(Vendedor,1,10) + ' Plano: ' + copy(Plano,1,10);
          MsgFimCupom3 := 'Cliente: ' + copy(ConverteAcentos(NomeCli),1,30);
          MsgFimCupom4 := 'Doc: '+ DocumentoCli;
          MsgFimCupom5 := 'Val aprox Tributos R$ ' + FormatFloat('##0.00',VlrImpostoMedio) + ' ('+FormatFloat('##0.00',AliqImpostoMedio)+'%) IBPT';
        end
      else
        begin
          MsgFimCupom1 := 'Cup.ID:' + IDCupom +'  Pl:'+PlacaCliente+ '  KM:'+KmCliente;
          MsgFimCupom2 := 'Oper: '  + copy(UsuarioAtualNome,1,10) + ' Vend: '   + copy(Vendedor,1,10) + ' Plano: ' + copy(Plano,1,10);
          MsgFimCupom3 := 'Cliente: ' + copy(ConverteAcentos(NomeCli),1,30);
          MsgFimCupom4 := DocumentoCli;
          MsgFimCupom5 := 'End: ' + ConverteAcentos(Copy(EnderecoCli, 01, 35)) + ' Cid: ' + ConverteAcentos(Copy(CidadeCli, 01, 35));
          MsgFimCupom6 := 'Val aprox Tributos R$ ' + FormatFloat('##0.00',VlrImpostoMedio) + ' ('+FormatFloat('##0.00',AliqImpostoMedio)+'%) IBPT';
        end;
    end
  else
    begin
      if dm.SQLEmpresaEMPRCLUCROREAL.Value = 'N' then
        MsgFimCupom := 'Val aprox Tributos R$ ' + FormatFloat('##0.00',VlrImpostoMedio) + ' ('+FormatFloat('##0.00',AliqImpostoMedio)+'%) IBPT'
      else
        MsgFimCupom := 'Val aprox Tributos R$ ' + FormatFloat('##0.00',VlrImpostoMedio) + ' ('+FormatFloat('##0.00',AliqImpostoMedio)+'%) IBPT';
    end;

  EPSON_Fiscal_Imprimir_Mensagem(pchar(MsgFimCupom1),pchar(MsgFimCupom2),pchar(MsgFimCupom3), pchar(MsgFimCupom4), pchar(MsgFimCupom5), pchar(MsgFimCupom6), pchar(MsgFimCupom7), pchar(MsgFimCupom));

  if EPSON_Fiscal_Fechar_Cupom(True, False) =  0 then
    FecharCupomFiscal_Epson_Termica := True
  else

    FecharCupomFiscal_Epson_Termica := False;
end;

procedure Delay(Seconds : integer);
var
  InitialTime : TTime;
  Hour, Minute, Second, MSecond : word;
begin
  InitialTime := Now;
  DecodeTime(Now - InitialTime,Hour,Minute,Second,MSecond);
  while ((Hour /3600) + (Minute / 60) + Second) < Seconds do
    begin
      DecodeTime(Now - InitialTime,Hour,Minute,Second,MSecond);
      Application.ProcessMessages;
    end;
end;

function  AbrirCNFV_Epson_Termica( Forma_de_Pagamento: String; Valor_Pago: Double; Numero_do_Cupom: String ) : Boolean ;
var
  ValorPagamentoSTR, TotalizadorEcf : string;
begin
  ValorPagamentoSTR  := FormatFloat('##0.00',Valor_Pago);
      while pos('.',ValorPagamentoSTR) > 0 do
        delete(ValorPagamentoSTR,pos('.',ValorPagamentoSTR),1);
      while pos(',',ValorPagamentoSTR) > 0 do
        delete(ValorPagamentoSTR,pos(',',ValorPagamentoSTR),1);

  if EPSON_NaoFiscal_Abrir_CCD(pchar(Forma_de_Pagamento), pchar(ValorPagamentoSTR), 2, '1') = 0 then
    AbrirCNFV_Epson_Termica := True
  else
    AbrirCNFV_Epson_Termica := False;
end ;

function LinhaTextoLivre_Epson_Termica(Texto : String) : boolean ;
begin
  if EPSON_NaoFiscal_Imprimir_LinhaEX(pchar(Texto)) = 0 then
    LinhaTextoLivre_Epson_Termica := True
  else
    LinhaTextoLivre_Epson_Termica := False;
end ;

function FecharCNFV_Epson_Termica : Boolean ;
begin
  if EPSON_NaoFiscal_Fechar_CCD(True) = 0 then
    FecharCNFV_Epson_Termica := True
  else
    FecharCNFV_Epson_Termica := False;
end ;

end.
