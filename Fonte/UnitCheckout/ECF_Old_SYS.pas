Unit ECF_Old_SYS;
interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Bematech_MP20FI1, Bematech_MP20FI2, Sigtron, URANO1EFC;
var
  VendaEspecial : boolean ;
         ;
  StrAux        : string ;

  function  Erros_Schalter(NumErro : integer) : string ;
  Function  MandaCupomSweda(strBuffer : string) : string;
  function  AbrePortaECF(Impressora:String;PORTA,LIB:String):Boolean;
  function  FechaPortaECF(Impressora, PORTA:String):Boolean;
  function  Abre_Cupom_Fiscal(Impressora:String) : string ;
  procedure Programa_Moeda(Impressora:String;Moeda:PChar);

  procedure Reducao_Z(Impressora:String);
  procedure Leitura_X(Impressora:String);

  procedure Insere_Aliquota(Impressora:String;Aliquota:Double);
  procedure Leitura_Memoria_Fiscal(Impressora:String;Inicio,Fim:Integer);
  procedure Venda_Item(Impressora:String;NUMITEM,CODIGO,DESCRICAO,TRIBUTO,UNID:String;QTDE,VALOR,PERCDESC,VLRDESCO:Double;NumDecQuant:integer);
  procedure Fechamento_Cupom_Fiscal_sem_FP(Impressora : string; VALOR, DESCONTO, ACRESC : Double; MSG, DOCUMENTO, VENDEDOR, APrazo : string );
  procedure Cancelamento_Item_anterior(Impressora:string;ITEM:Integer);
  procedure Cancelamento_Cupom_Fiscal(Tipo,Impressora:String);
  procedure Autenticacao_de_documento(Impressora, MSG: string;Valor:Double);
  procedure Liga_Desliga_Horario_Verao(Impressora:String);
  function  Status_Impressora(Impressora:String):String;
  procedure Impressao_nao_Sujeita_ao_ICMS(Impressora:String;MSG:string;Cupom:Integer);
  procedure Fecha_Cupom_Nao_Sujeito_ao_ICMS(Impressora:string);
  procedure Acionamento_Gaveta(Impressora:String);
  function  Status_Gaveta(Impressora:String):Boolean;
  procedure Recebimentos_nao_Sujeitos_ao_ICMS(Impressora:String;VALOR:Double;TIPO:Char);
  function  Retorno_Aliquotas(Impressora:String):String;
  function  Retorno_Totalizadores_Parciais(Impressora:String):String;
  function  Retorno_Subtotal(Impressora:String):String;
  function  Retorno_Numero_Cupom(Impressora:String):String;
  procedure Cancelamento_Item(Impressora:String;ITEM:Integer);
  procedure Inicia_Fechamento_Cupom(Impressora:String;DESCONTO:Double;Tipo:Char);
  procedure Envia_FP(Impressora:string;NUMERO:Integer;FP:string);
  procedure Efetua_FP_Cupom(Impressora:String;FP:String;Tipo:Char;VALOR:Double;FPNum:Integer;Id:String);
  procedure Termina_fechamento_de_cupom(Impressora:String;MSG:String);
  function  Retorno_de_variaveis_da_impressora(Impressora:String;VARIAVEL:Integer):String;
  procedure Vinculacao_ao_ISS(Impressora:String;ArrayICMS:String);
  procedure Programa_truncamento_arredondamento(Impressora:String;ARREDONDAMENTO:Boolean);
  procedure Nomeia_totalizadores_parciais_nao_sujeitos_ao_ICMS(Impressora:String;TOTALIZADOR:Integer;NOME:String);
  procedure Venda_de_Item_com_Valor_Fracionario_de_3_Digitos(Impressora:String;CODIGO,DESCRICAO,TRIBUTO:String;QTDE,VALOR,DESCONTO:Double);
  procedure Emite_CNFNV(Impressora:string;DescTipo,Tipo,MSG:string;Valor:Double);
  procedure Abertura_CNFV(Impressora:string;Tipo,FPID:String;Cupom:Integer;FP:string;Valor:Double);
  procedure Fechamento_CNFV(Impressora:string);
  procedure Linha_Texto(Impressora:string;Texto:String);
  procedure TotalizacaoCupom(Totalizador,Impressora,DescAcres: string; Total,DESCONTO: Double);
  procedure InformacaoesConsumidor(Impressora,Nome,Endereco,Documento:String);
  function  ConverteAcentos(Str: string): string;
  function  PreencheDir(Descricao,Str:String;Tamanho,Posicao:Integer):String ;
  function  Preenche( STRI, FloodStr:String; TAM:Integer ; JUST : Integer):String ;

  //DECLARAR AS DLL DA SWEDA
  Function AbrePorta(Numero,Timeout:Integer):Boolean; far; Export;
  external 'SERSWEDA.DLL' index 1;
  Function EnviaComando(Texto1:PChar):ShortString; far; Export;
  external 'SERSWEDA.DLL' index 2;
  Function FechaPorta(Numero:Integer):Boolean; far; Export;
  external 'SERSWEDA.DLL' index 3;

implementation

  //DECLARAR AS DLL DA SCHALTER
  function ecfDescItem ( byTipo:integer; szDescr:LPSTR; szValor:LPSTR ): integer;stdcall; external 'dll32phi.dll';
  function ecfAutentica (operador: LPSTR): integer;stdcall;                                                                                           external 'dll32phi.dll';
  function ecfAbreGaveta : integer;stdcall;                                                                                                           external 'dll32phi.dll';
  function ecfImpCab (byEst: integer): integer;stdcall;                                                                                               external 'dll32phi.dll';
  function ecfVenda_Item (szCodigo: LPSTR; szDescricao:LPSTR; szQInteira:LPSTR; szQFracionada:LPSTR; szValor:LPSTR; byTaxa:integer): integer;stdcall; external 'dll32phi.dll';
  function ecfVendaItem78(szDescr: LPSTR; szValor:LPSTR; byTaxa: integer): integer;stdcall; external 'dll32phi.dll';
  function ecfVendaItem3d(szCodigo: LPSTR; szDescricao: LPSTR; szQuantidade: LPSTR; szValor:LPSTR; byTaxa: integer; Unidade:LPSTR; Digitos:LPSTR): integer;stdcall; external 'dll32phi.dll';
  function ecfLeitMemFisc (byTipo:integer; szDi:LPSTR; szDf:LPSTR; wRi:integer; wRf:integer; archive:LPSTR ): integer;stdcall;                        external 'dll32phi.dll';
  function ecfPagCancPag (byTipo: integer; szDescr:LPSTR; szValor:LPSTR; byMens:integer;byLmens:integer): integer;stdcall;                            external 'dll32phi.dll';
  function ecfPagamento (byTipo: integer; szPos:LPSTR; szValor:LPSTR; byLmens:integer): integer;stdcall; external 'dll32phi.dll';
  function ChangePort(chose:integer): integer;stdcall;                                                                                                external 'dll32phi.dll';
  function ecfStatusImp : PChar; stdcall;                                                                                                             external 'dll32phi.dll';
  function ecfImpLinha(szLinha: LPSTR): integer;stdcall;                                                                                              external 'dll32phi.dll';
  function ecfInicCupomNFiscal(szTipo: integer): integer;stdcall;                                                                                     external 'dll32phi.dll';
  function ecfStatusCupom(var general_flag: integer): PChar;stdcall;                                                                                  external 'dll32phi.dll';
  function ecfFimTrans(operador: LPSTR): integer;stdcall; external 'dll32phi.dll';
  function ecfCancDoc(operador: LPSTR): integer;stdcall; external 'dll32phi.dll';
  function ecfLeituraX(operador: LPSTR): integer;stdcall; external 'dll32phi.dll';
  function ecfReducaoZ(operador: LPSTR): integer;stdcall; external 'dll32phi.dll';
  function ecfCancAcresDescSubTotal ( byAcres:integer; byTipo:integer; szDescr:LPSTR; szValor:LPSTR): integer;stdcall; external 'dll32phi.dll';
  function ecfCancItemDef ( szItem : LPSTR; szDescr:LPSTR ): integer;stdcall; external 'dll32phi.dll';
  function ecfRZGerencial(operador: LPSTR): integer;stdcall; external 'dll32phi.dll';
  function ecfLXGerencial(operador: LPSTR): integer;stdcall; external 'dll32phi.dll';
  function ecfCancVenda(operador: LPSTR): integer;stdcall; external 'dll32phi.dll';
  function ecfLineFeed (byEst: integer; wLin:integer): integer;stdcall; external 'dll32phi.dll';

var ErroStr : string ;

Function  MandaCupomSweda(strBuffer : string) : string;
var
  Comando : array[0..512] of char ;
  Str     : string ;
begin
  StrPCopy(Comando,#27+ strBuffer + '}');
  Str := EnviaComando(Comando);
  MandaCupomSweda := Str;
  if Pos('}', Str) > 0 then
    Delete(Str, Pos('}', Str), 1) ;
  if Copy(Str, 7, 4) = 'ERRO' then
    Application.MessageBox(PChar(Copy(Str, 12, Length(Str))), 'Informa', MB_SYSTEMMODAL+MB_IconExclamation+MB_Ok)
end ;

function  Erros_Schalter(NumErro : integer) : string ;
begin
  if VendaEspecial then Exit;
  case NumErro of
    00: ErroStr := 'Comando OK' ;
    01: ErroStr := 'Erro de checksum' ;
    02: ErroStr := 'Timeout RX' ;
    03: ErroStr := 'Memória insuficiente' ;
    04: ErroStr := 'Impressora fora de linha ou desligada' ;
    10: ErroStr := 'Erro de sobreposição' ;
    11: ErroStr := 'Erro de paridade' ;
    12: ErroStr := 'Erro de sobreposição e paridade' ;
    13: ErroStr := 'Erro de formato' ;
    14: ErroStr := 'Erro de sobreposição e formato' ;
    15: ErroStr := 'Erro de paridade e sobreposição' ;
    16: ErroStr := 'Erro de sobreposição, paridade e formato' ;
    20: ErroStr := 'Erro no cadastro de bancos' ;
    21: ErroStr := 'Banco não cadastrado' ;
    22: ErroStr := 'Moeda não cadastrada' ;
    23: ErroStr := 'Extenso excedido' ;
    65: ErroStr := 'Em venda' ;
    66: ErroStr := 'Limite de cabeçalho alcançado' ;
    68: ErroStr := 'Cabeçalho impresso' ;
    69: ErroStr := 'Não começou venda' ;
    70: ErroStr := 'Valor inválido' ;
    73: ErroStr := 'Valor a menor' ;
    74: ErroStr := 'Valor a maior' ;
    78: ErroStr := 'Número máximo de Reduções Z alcançado' ;
    79: ErroStr := 'Erro de comunicação' ;
    80: ErroStr := 'Palavra reservada' ;
    81: ErroStr := 'Papel próximo do fim' ;
    82: ErroStr := 'Data não localizada' ;
    84: ErroStr := 'Erro de memória fiscal' ;
    85: ErroStr := 'Perda da RAM' ;
    86: ErroStr := 'Não houve pagamento' ;
    87: ErroStr := 'Cupom já totalizado' ;
    88: ErroStr := 'Não pode cancelar venda' ;
    89: ErroStr := 'Comando não completo' ;
    90: ErroStr := 'Cupom aberto' ;
    91: ErroStr := 'Não há cupom a cancelar' ;
    92: ErroStr := 'Tabela de taxa não inicializada' ;
    94: ErroStr := 'Seleção de taxa inválida' ;
    95: ErroStr := 'Cancelamento inválido' ;
    96: ErroStr := 'Nada a retificar' ;
    97: ErroStr := 'Redução não localizada' ;
    98: ErroStr := 'Cabeçalho não carregado' ;
    99: ErroStr := 'Impressora em intervenção técnica' ;
    100: ErroStr := 'Impressora em período de venda' ;
    101: ErroStr := 'Somente com intervenção técnica' ;
    102: ErroStr := 'Desconto inválido' ;
    103: ErroStr := 'Limite de linhas alcançado' ;
    104: ErroStr := 'Somente após o total' ;
    105: ErroStr := 'Dados inválidos' ;
    106: ErroStr := 'Alteração de taxa não disponível' ;
    107: ErroStr := 'Comando inválido' ;
    108: ErroStr := 'Não houve o fechamento do dia' ;
    109: ErroStr := 'Erro irrecuperável' ;
    110: ErroStr := 'Alteração inválida' ;
    111: ErroStr := 'Data já alterada' ;
    112: ErroStr := 'Alíquota não carregada' ;
    113: ErroStr := 'Fechamento diário não realizado' ;
    114: ErroStr := 'Abertura do dia inválida' ;
    115: ErroStr := 'Fechamento já realizado' ;
    116: ErroStr := 'Ajuste somente de +/- 1 hora' ;
    117: ErroStr := 'Acréscimo inválido' ;
    118: ErroStr := 'Pagamento incompleto' ;
    121: ErroStr := 'Erro de gravação na memória fiscal' ;
    126: ErroStr := 'Comando fora de seqüência' ;
    127: ErroStr := 'Autenticação sem papel' ;
    132: ErroStr := 'Queda de energia' ;
    133: ErroStr := 'Data inválida' ;
    134: ErroStr := 'Item fora da faixa' ;
    135: ErroStr := 'Item não vendido' ;
    136: ErroStr := 'Parâmetro errado' ;
    137: ErroStr := 'Limite de valor ultrapassado' ;
    138: ErroStr := 'Relógio fora de operação' ;
    139: ErroStr := 'Pagamento não definido' ;
    140: ErroStr := 'Limite de autenticação excedido' ;
    141: ErroStr := 'Comando inválido' ;
    142: ErroStr := 'Posição já programada' ;
    143: ErroStr := 'Posição inexistente' ;
    144: ErroStr := 'Cupom vinculado pendente' ;
    145: ErroStr := 'Excesso de documentos vinculados' ;
    147: ErroStr := 'Em horário já solicitado' ;
    148: ErroStr := 'Oscilador do relógio desativado' ;
    149: ErroStr := 'Formas de pagamento não inicializadas' ;
    150: ErroStr := 'Inscrição Estadual inválida' ;
    151: ErroStr := 'Extenso excedido' ;
    152: ErroStr := 'Cupom está com subtotal zerado' ;
    153: ErroStr := 'Codificação do GT já programada' ;
    154: ErroStr := 'Não há vinculados a cupom' ;
    155: ErroStr := 'Redução não permitida' ;
    156: ErroStr := 'Caracter repetido na codificação do GT' ;
    157: ErroStr := 'Caracter proibido na codificação do GT' ;
    606: ErroStr := 'Não foi possível setar os parâmetros configuráveis da porta serial' ;
    707: ErroStr := 'Não foi possível programar os parâmetros setados referentes à porta serial' ;
    808: ErroStr := 'Não foi possível limpar a fila de transmissão' ;
    809: ErroStr := 'Não foi possível limpar a fila de recepção' ;
    909: ErroStr := 'Ocorreu um erro na programação interna dos timeouts da porta serial' ;
    1010: ErroStr := 'A porta serial requisitada está bloqueada por outro aplicativo.' ;
    1020: ErroStr := 'A porta serial já encontra-se aberta e não pode ser aberta pelo aplicativo corrente.' ;
    1030: ErroStr := 'Ocorreu um problema desconhecido na recepção de retorno simples da impressora.' ;
  end ;

  if ErroStr = '' then
    //Erros_Schalter := 'Erro não especificado: ' + IntToStr(NumErro)
    Application.MessageBox(PChar('Erro não especificado: ' + IntToStr(NumErro)),'Schalter Informa',MB_SYSTEMMODAL+MB_IconExclamation+MB_Ok)
  else
    //Erros_Schalter := ErroStr ;
    Application.MessageBox(PChar(ErroStr),'Schalter Informa',MB_SYSTEMMODAL+MB_IconExclamation+MB_Ok);
end ;

Function AbrePortaECF(Impressora:String; PORTA,LIB:string):Boolean;
var Aviso   : string ;
begin
  if VendaEspecial then Exit;
  If Impressora = 'URANO1EFC' then
    InicializaDLL(PORTA);
  If Impressora = 'SwedaS7000' then
  begin
    if PORTA = 'COM1' then
      if AbrePorta(1, 5) then
        AbrePortaECF := True
      else
        AbrePortaECF := False;

    if PORTA = 'COM2' then
      if AbrePorta(2, 5) then
        AbrePortaECF := True
      else
        AbrePortaECF := False;
  end ;

  if Impressora = 'BEMATECH_1' then
    if BEMATECH_mp20fi1.IniPortaStr(PCHAR(PORTA))=0 then
      AbrePortaECF := False
    else
      AbrePortaECF := True;

  if Impressora = 'BEMATECH_2' then
    if BEMATECH_mp20fi2.IniPortaStr(PCHAR(PORTA))= 0 then
      AbrePortaECF := False
    Else
      AbrePortaECF := True;

  if (Impressora = 'SIGTRON300') or (Impressora = 'SIGTRON345') then
  begin
    CompSigtron.SigDrCm.LibName := LIB ;
    CompSigtron.SigDrCm.CommConfig := PORTA + ': baud=9600 parity=N data=8 stop=1' ;
    if not CompSigtron.SigDrCm.Open then
      AbrePortaECF := false
    else
      AbrePortaECF := true ;
  end ;

  if (Impressora = 'Schalter') or (Impressora = 'Schaltr302') then
  begin
    if PORTA = 'COM1' then
    begin
      ChangePort(0);
      Retorno := ecfLineFeed(1,0);
      if Retorno <> 0 then
        Erros_Schalter(Retorno) ;
    end ;

    if PORTA = 'COM2' then
    begin
      ChangePort(1);
      Retorno := ecfLineFeed(1,0);
      if Retorno <> 0 then
        Erros_Schalter(Retorno) ;
    end ;
  end ;
End;

function  FechaPortaECF(Impressora, PORTA:String):boolean;
begin
  if VendaEspecial then Exit;
  If Impressora = 'URANO1EFC' then
    FinalizaDLL;
  if Impressora='BEMATECH_1' then
    If BEMATECH_mp20fi1.FechaPorta = 0 then
      FechaPortaECF := false
    Else
      FechaPortaECF := true ;

  if Impressora='BEMATECH_2' Then
    if BEMATECH_mp20fi2.FechaPorta=0 then
      FechaPortaECF := false
    Else
      FechaPortaECF := true ;

  if (Impressora='SIGTRON300') or (Impressora='SIGTRON345') then
  begin
    try
      FechaPortaECF := true ;
      CompSigtron.SigDrCm.Close;
    except
      FechaPortaECF := false ;
      Application.ProcessMessages;
    end ;
  end ;
  if Impressora='SwedaS7000' then
    if not FechaPorta(StrToInt(Copy(PORTA,4,1))) then
      FechaPortaECF := false
    Else
      FechaPortaECF := true ;
End;

function  Abre_Cupom_Fiscal(Impressora:String) : string ;
var MsgRet : string ;
begin
  if VendaEspecial then Exit ;

  if Impressora = 'URANO1EFC' then
    ImprimeCabecalho;

  MsgRet := '' ;

  if Impressora = 'SwedaS7000' then
  begin
    MsgRet := MandaCupomSweda('.17') ;
  end ;

  if Impressora='BEMATECH_1' then
  begin
    BEMATECH_mp20fi1.FormataTX(#27'|0|'#27);
    If FileExists('MP20FI.RET') then
      DeleteFile('MP20FI.RET');
  end ;

  if Impressora='BEMATECH_2' then
  begin
    BEMATECH_mp20fi2.FormataTX(#27'|0|'#27);
    If FileExists('MP20FI.RET') then
      DeleteFile('MP20FI.RET');
  end;

  if (Impressora='SIGTRON300') or (Impressora='SIGTRON345') then
  begin
    CompSigtron.SigDrCm.CmdName := 'AberturaCupomFiscal' ;
    CompSigtron.SigDrCm.Send ;
  End;

  if (Impressora = 'Schalter') or (Impressora = 'Schaltr302') then
  begin
    Retorno := ecfImpCab(2) ;
    if Retorno <> 0 then
    begin
      MsgRet := 'Erro' ;
      Erros_Schalter(Retorno) ;
    end ;
  end ;

  Abre_Cupom_Fiscal := MsgRet ;
End;

procedure Programa_Moeda(Impressora:String;Moeda:PChar);
begin
  if VendaEspecial then Exit;

  If Impressora='BEMATECH_1' Then
    BEMATECH_mp20fi1.FormataTX(#27'|1|'+Moeda+'|'#27);
  If Impressora='BEMATECH_2' Then
    BEMATECH_mp20fi2.FormataTX(#27'|1|'+Moeda+'|'#27);
End;

Procedure Reducao_Z(Impressora:String);
Var
  DataHora:String;
begin
  if VendaEspecial then Exit;

  if Impressora = 'URANO1EFC' then
    begin
      Relatorio_XZ('1');
      AvancaLinhas('7');
    end;

  if Impressora='BEMATECH_1' then
    BEMATECH_mp20fi1.FormataTX(#27'|5|'#27) ;

  if Impressora='BEMATECH_2' then
    BEMATECH_mp20fi2.FormataTX(#27'|5|'#27);

  if (Impressora='SIGTRON300') or (Impressora='SIGTRON345') then
  begin
    DataHora := InputBox('Reducao Z', 'Digite a date e hora conforme exemplo', 'dd/mm/aa hh:mm:ss');
    CompSigtron.SigDrCm.CmdName := 'ReducaoZ' ;
    CompSigtron.SigDrCm.Param['Dia'] := Copy(DataHora,1,2) ;
    CompSigtron.SigDrCm.Param['Mes'] := Copy(DataHora,4,2) ;
    CompSigtron.SigDrCm.Param['Ano'] := Copy(DataHora,7,2) ;
    CompSigtron.SigDrCm.Param['Hora'] := Copy(DataHora,10,2) ;
    CompSigtron.SigDrCm.Param['Minuto'] := Copy(DataHora,13,2) ;
    CompSigtron.SigDrCm.Param['Segundo'] := Copy(DataHora,16,2) ;
    CompSigtron.SigDrCm.Send ;
  end ;

  if (Impressora = 'Schalter') or (Impressora = 'Schaltr302') then
  begin
    Retorno := ecfReducaoZ('') ;
    if Retorno <> 0 then
      Erros_Schalter(Retorno) ;
  end ;

  if Impressora = 'SwedaS7000' then
  begin
    MandaCupomSweda('.14' + DateToStr(Date)) ;
  end ;
End;

Procedure Leitura_X(Impressora:String);
begin
  if VendaEspecial then Exit;

  if Impressora = 'URANO1EFC' then
    begin
      Relatorio_XZ('0');
      AvancaLinhas('7');
    end;

  If Impressora = 'BEMATECH_1' Then
    BEMATECH_mp20fi1.FormataTX(#27'|6|'#27);
  If Impressora = 'BEMATECH_2' Then
    BEMATECH_mp20fi2.FormataTX(#27'|6|'#27);

  If (Impressora = 'SIGTRON300') or
     (Impressora = 'SIGTRON345') then
    Begin
      CompSigtron.SigDrCm.CmdName := 'LeituraX' ;
      CompSigtron.SigDrCm.Send ;
    End;

  if (Impressora = 'Schalter') or (Impressora = 'Schaltr302') then
  begin
    Retorno := ecfLeituraX('') ;
    if Retorno <> 0 then
      Erros_Schalter(Retorno) ;
  end ;

  if Impressora = 'SwedaS7000' then
  begin
    MandaCupomSweda('.13') ;
  end ;
end ;

Procedure Insere_Aliquota(Impressora:String;Aliquota:Double);
begin
  if VendaEspecial then Exit ;

  If Impressora='BEMATECH_1' Then
    BEMATECH_mp20fi1.FormataTX(#27'|7|'+Copy(FloatToStr(Aliquota),1,2)+Copy(FloatToStr(Aliquota),4,2)+'|'#27);

  If Impressora='BEMATECH_2' Then
    BEMATECH_mp20fi2.FormataTX(#27'|7|'+Copy(FloatToStr(Aliquota),1,2)+Copy(FloatToStr(Aliquota),4,2)+'|'#27);
End;

procedure Leitura_Memoria_Fiscal(Impressora:string;Inicio,Fim:Integer);
begin
  if VendaEspecial then Exit;
  If Impressora='BEMATECH_1' Then
    BEMATECH_mp20fi1.FormataTX(#27'|8|'+Format('%.4d',[Inicio])+'|'+Format('%.4d',[Fim])+'|I|'#27);
  If Impressora='BEMATECH_2' then
    BEMATECH_mp20fi2.FormataTX(#27'|8|'+Format('%.4d',[Inicio])+'|'+Format('%.4d',[Fim])+'|I|'#27);
end ;

procedure Abertura_CNFV(Impressora:string;Tipo,FPID:String;Cupom:Integer;FP:string;Valor:Double);
var
  V:string;
begin
  if VendaEspecial then Exit;
  if Impressora = 'URANO1EFC' then
    EmiteVinculado(IntToStr(Cupom),FPID);
  if Impressora='BEMATECH_2' then
    BEMATECH_mp20fi2.FormataTX(#27'|66|'+Copy(FP,1,16)+'|'#27);
  if Impressora='SIGTRON345' then
    begin
      V := FormatFloat('#,##0.00', Valor);
      if Pos(',',V) > 0 then
        Delete(V, Pos(',',V), 1);
      if Pos('.',V) > 0 then
        Delete(V, Pos('.',V), 1);
      V := PreencheDir( V, '0', 12,0) ;

      CompSigtron.SigDrCm.CmdName := 'AberturaCNFV' ;
      CompSigtron.SigDrCm.Param['IdentificacaoCNFV'] := Tipo;
      CompSigtron.SigDrCm.Param['TipoCNFV']          := FPID;
      CompSigtron.SigDrCm.Param['COOorigem']         := Format('%.6d',[Cupom]);
      CompSigtron.SigDrCm.Param['ValorVinculado']    := V;
      CompSigtron.SigDrCm.Send ;
    end;
end ;

procedure Fechamento_CNFV(Impressora:string);
begin
  if VendaEspecial then Exit;
  if Impressora = 'URANO1EFC' then
    FechaCupom('OPERADOR');
  if Impressora='SIGTRON345' then
    begin
      if VendaEspecial then Exit;
      CompSigtron.SigDrCm.CmdName := 'FechamentoComprovante' ;
      CompSigtron.SigDrCm.Send ;
    end;
end ;

procedure Linha_Texto(Impressora:string;Texto:String) ;
begin
  if Impressora = 'URANO1EFC' then
    LinhasLivres(Texto);
  if Impressora='BEMATECH_2' then
    BEMATECH_mp20fi2.FormataTX(#27'|67|'+Copy(Texto,1,620)+'|'#27);
  if Impressora='SIGTRON345' then
    begin
      if VendaEspecial then Exit;
      CompSigtron.SigDrCm.CmdName := 'LinhaTexto' ;
      CompSigtron.SigDrCm.Param['TextoLivre'] := Texto;
      CompSigtron.SigDrCm.Send ;
    end;
end ;

procedure Emite_CNFNV(Impressora:string;DescTipo,Tipo,MSG:string;Valor:Double) ;
var
  Bruto:string;
begin
  if VendaEspecial then Exit;
  if Impressora = 'URANO1EFC' then
    CargaNaoVinculado(Tipo,Msg);
  If Impressora='BEMATECH_1' Then
    Case TIPO[1] Of
      'A':BEMATECH_mp20fi1.FormataTX(#27'|25|SA|'+IntToStr(Round(Int(VALOR)))+Copy(Format('%.2f',[Frac(VALOR)]),3,2)+'|'#27);
      'U':BEMATECH_mp20fi1.FormataTX(#27'|25|SU|'+IntToStr(Round(Int(VALOR)))+Copy(Format('%.2f',[Frac(VALOR)]),3,2)+'|'#27);
    Else
      BEMATECH_mp20fi1.FormataTX(#27'|25|'+Tipo+'|'+IntToStr(Round(Int(VALOR)))+Copy(Format('%.2f',[Frac(VALOR)]),3,2)+'|'#27);
    End;
  If Impressora='BEMATECH_2' Then
    Case TIPO[1] Of
      'A':BEMATECH_mp20fi2.FormataTX(#27'|25|SA|'+Format('%.12d',[Round(Int(VALOR))])+Copy(Format('%.2f',[Frac(VALOR)]),3,2)+'|'+Copy(DescTipo,1,16)+'|'#27);
      'U':BEMATECH_mp20fi2.FormataTX(#27'|25|SU|'+Format('%.12d',[Round(Int(VALOR))])+Copy(Format('%.2f',[Frac(VALOR)]),3,2)+'|'+Copy(DescTipo,1,16)+'|'#27);
    Else
      BEMATECH_mp20fi2.FormataTX(#27'|25|'+Tipo+'|'+Format('%.12d',[Round(Int(VALOR))])+Copy(Format('%.2f',[Frac(VALOR)]),3,2)+'|'+Copy(DescTipo,1,16)+'|'#27);
    End;

  if (Impressora='SIGTRON345') then
    Begin
      CompSigtron.SigDrCm.CmdName := 'EmissaoCNFNV' ;
      CompSigtron.SigDrCm.Param['IdentificacaoCNFNV'] := Tipo;
      CompSigtron.SigDrCm.Param['DescontoAcrescimo'] := '1'; // Desc Valor

      Bruto := FormatFloat('#,##0.00', Valor);
      if Pos(',',Bruto) > 0 then
        Delete(Bruto, Pos(',',Bruto), 1);
      if Pos('.',Bruto) > 0 then
        Delete(Bruto, Pos('.',Bruto), 1);
      Bruto       := PreencheDir( Bruto, '0', 12,0) ;

      CompSigtron.SigDrCm.Param['Valor'] := '000000000000';
      CompSigtron.SigDrCm.Param['Mensagem'] := Bruto + MSG  + Chr(10) ;
      CompSigtron.SigDrCm.Send ;
    end;
end ;

procedure TotalizacaoCupom(Totalizador,Impressora,DescAcres: string; Total,DESCONTO: Double) ;
var
  AcrescDesc : string ;
begin
  if VendaEspecial then
    Exit ;

  if (Impressora='SIGTRON300') or (Impressora='SIGTRON345') then
  begin
    AcrescDesc := FormatFloat('#,##0.00',DESCONTO);
    if Pos(',',AcrescDesc) > 0 then
      Delete(AcrescDesc, Pos(',',AcrescDesc), 1);
    if Pos('.',AcrescDesc) > 0 then
      Delete(AcrescDesc, Pos('.',AcrescDesc), 1);
    AcrescDesc := Preenche(AcrescDesc, '0', 12, 0) ;

    CompSigtron.SigDrCm.CmdName := 'TotalizacaoCupomFiscal' ;

    if (Impressora='SIGTRON300') then
    begin
      CompSigtron.SigDrCm.Param['TipoDesconto'] := '0';
      CompSigtron.SigDrCm.Param['Desconto']     := AcrescDesc ;
    end ;

    if (Impressora='SIGTRON345') then
    begin
      if DescAcres='A' then
        CompSigtron.SigDrCm.Param['TipoDescAcres'] := '5'
      else
        CompSigtron.SigDrCm.Param['TipoDescAcres'] := '1';

      CompSigtron.SigDrCm.Param['ValorDescAcres'] := AcrescDesc;
    end ;

    CompSigtron.SigDrCm.Send ;
  end ;

  if (Impressora = 'Schalter') or (Impressora = 'Schaltr302') then
  begin
    AcrescDesc := FormatFloat('#,##0.00',DESCONTO);
    if Pos(',',AcrescDesc) > 0 then
      Delete(AcrescDesc, Pos(',',AcrescDesc), 1);
    if Pos('.',AcrescDesc) > 0 then
      Delete(AcrescDesc, Pos('.',AcrescDesc), 1);
    AcrescDesc := Preenche(AcrescDesc, '0', 10, 0) ;

    if DescAcres = 'D' then
       ecfCancAcresDescSubTotal(0, 0, PChar('Desconto'), PChar(AcrescDesc)) ;
    if DescAcres = 'A' then
       ecfCancAcresDescSubTotal(1, 0, PChar('Acrescimo'), PChar(AcrescDesc)) ;
  end ;

  if Impressora = 'SwedaS7000' then
  begin
    if DESCONTO > 0 then
    begin
      AcrescDesc := FormatFloat('#,##0.00', DESCONTO) ;
      if Pos(',', AcrescDesc) > 0 then
        Delete(AcrescDesc, Pos(',', AcrescDesc), 1) ;
      if Pos('.', AcrescDesc) > 0 then
        Delete(AcrescDesc, Pos('.',AcrescDesc), 1) ;
      AcrescDesc := Preenche(AcrescDesc, '0', 12, 0) ;
      MandaCupomSweda('.03' + '          ' + AcrescDesc + 'N') ;
    end ;

    StrAux := FormatFloat('#,##0.00', Total) ;
    if Pos(',',StrAux) > 0 then
       Delete(StrAux, Pos(',',StrAux), 1);
    if Pos('.',StrAux) > 0 then
       Delete(StrAux, Pos('.',StrAux), 1);

    StrAux := Preenche(StrAux,  '0', 12, 0) ;
    MandaCupomSweda('.10' + Totalizador + StrAux) ;
  end ;
end ;

procedure Venda_Item(Impressora:String;NUMITEM,CODIGO,DESCRICAO,TRIBUTO,UNID:String;QTDE,VALOR,PERCDESC,VLRDESCO:Double;NumDecQuant:integer);
Var
  MensagemSigtron,
  Mensagem1,
  Mensagem2,
  Quant,
  QuantFrac,
  Desco,
  VlUnit,
  TotalItemSigtron,
  Preco,
  TIPO : String;  //para sigtron
begin
  if VendaEspecial then
    Exit ;

  Descricao := ConverteAcentos(DESCRICAO);

  if Impressora = 'URANO1EFC' then
    begin
      if Frac(QTDE)<>0 then
        Quant:=FormatFloat('000.000',QTDE)
      else
        Quant:=Format('%.7d',[Round(Int(QTDE))]);
      If NumDecQuant=3 Then
        VlUnit:=Format('%.6d',[Round(Int(VALOR))])+Copy(FormatFloat('#,##0.000',Frac(VALOR)),3,3)
      else
        VlUnit:=Format('%.7d',[Round(Int(VALOR))])+Copy(FormatFloat('#,##0.00',Frac(VALOR)),3,2);
      If NumDecQuant=3 then
        TIPO:='2'
      else
        TIPO:='0';
      VendaItem(CODIGO,DESCRICAO,Quant,VlUnit,TRIBUTO,UNID,TIPO);
      if VLRDESCO<>0 then
        DescontoItem('0','Desconto',Format('%.9d',[Round(Int(VLRDESCO))])+Copy(Format('%.2f',[Frac(VLRDESCO)]),3,2));
    end;

  if Impressora='BEMATECH_1' then
  begin
    BEMATECH_mp20fi1.FormataTX(#27'|9|'
    +PCHAR(Copy(CODIGO,1,13))+'|'
    +PCHAR(Format('%-29s',[Copy(DESCRICAO,1,29)]))+'|'+PCHAR(TRIBUTO)+'|'
    +Format('%.4d',[Round(Int(QTDE))])+Copy(Format('%.3f',[Frac(QTDE)]),3,3)+'|'
    +IntToStr(Round(Int(VALOR)))+Copy(Format('%.2f',[Frac(VALOR)]),3,2)+'|'
    +Format('%.6d',[Round(Int(VLRDESCO))])+Copy(Format('%.2f',[Frac(VLRDESCO)]),3,2)+'|'#27);
  end ;

  if Impressora='BEMATECH_2' then
  begin
    BEMATECH_mp20fi2.FormataTX(#27'|9|'
    +PCHAR(Copy(CODIGO,1,13))+'|'
    +PCHAR(Format('%-29s',[Copy(DESCRICAO,1,29)]))+'|'+PCHAR(TRIBUTO)+'|'
    +Format('%.4d',[Round(Int(QTDE))])+Copy(Format('%.3f',[Frac(QTDE)]),3,3)+'|'
    +IntToStr(Round(Int(VALOR)))+Copy(Format('%.2f',[Frac(VALOR)]),3,2)+'|'
    +Format('%.6d',[Round(Int(VLRDESCO))])+Copy(Format('%.2f',[Frac(VLRDESCO)]),3,2)+'|'#27);
  end ;

  If (Impressora='SIGTRON300') or (Impressora='SIGTRON345') then
  begin
    Desco := FormatFloat('#,##0.00', PERCDESC);
    if Pos(',',Desco) > 0 then
      Delete(Desco, Pos(',',Desco), 1);
    if Pos('.',Desco) > 0 then
      Delete(Desco, Pos('.',Desco), 1);
    Desco := PreencheDir( Desco, '0', 04,0) ;

    Preco := FormatFloat('#,##0.00', VALOR);
    if NumDecQuant = 0 then
      Quant := Format('%.5d', [Round(Int(QTDE))])
    Else
      if NumDecQuant = 3 then
        Begin
          If QTDE<=9.999 Then
            Quant := FormatFloat('0.000', QTDE)
          Else
            If QTDE<=99.99 Then
              Quant := FormatFloat('00.00', QTDE)
            Else
              If QTDE<=999.9 Then
                Quant := FormatFloat('000.0', QTDE)
              Else
                Quant := Format('%.5d', [Round(Int(QTDE))]);
        End
      Else
        Begin
          If QTDE<=99.99 Then
            Quant := FormatFloat('00.00', QTDE)
          Else
            If QTDE<=999.9 Then
              Quant := FormatFloat('000.0', QTDE)
            Else
              Quant := Format('%.5d', [Round(Int(QTDE))]);
        End;

    If (Impressora = 'SIGTRON345') then
      begin
        if Pos(',',Preco) > 0 then
          Delete(Preco, Pos(',',Preco), 1);
        if Pos('.',Preco) > 0 then
          Delete(Preco, Pos('.',Preco), 1);
        Preco       := PreencheDir( Preco, '0', 09,0) ;
        CompSigtron.SigDrCm.CmdName                     := 'DescricaoProduto2Linhas13Digitos' ;
        CompSigtron.SigDrCm.Param['SituacaoTributaria'] := TRIBUTO;
        StrAux := Format('%.13d',[StrToInt(CODIGO)]) ;
        CompSigtron.SigDrCm.Param['Codigo']             := StrAux ;
        CompSigtron.SigDrCm.Param['PrecoUnitario']      := Preco;
        CompSigtron.SigDrCm.Param['Quantidade']         := Quant;
        StrAux := Format('%2s' ,[UNID]) ;
        CompSigtron.SigDrCm.Param['Unidade']            := StrAux ;
        StrAux := Format('%30s',[DESCRICAO]) ;
        CompSigtron.SigDrCm.Param['Descricao']          := StrAux ;
        CompSigtron.SigDrCm.Param['DescontoAcrescimo']   := '0' ;
        CompSigtron.SigDrCm.Param['PorcentagemDescAcres']:= Desco;
      end
      else
        begin
          TotalItemSigtron  := '';
          Mensagem1   := PreencheDir(CODIGO + ' - ' + Descricao,' ',48,1);
          Mensagem2   := Quant + ' ' + UNID + ' x ' + Preco;
          MensagemSigtron := Mensagem1 + Mensagem2 ;
          TotalItemSigtron  := FormatFloat('#,##0.00', (QTDE * VALOR));

          if Pos(',',TotalItemSigtron) > 0 then
            Delete(TotalItemSigtron, Pos(',',TotalItemSigtron),1);
          if Pos('.',TotalItemSigtron) > 0 then
            Delete(TotalItemSigtron, Pos('.',TotalItemSigtron), 1);
          TotalItemSigtron := PreencheDir(TotalItemSigtron, '0',9,0) ;

          CompSigtron.SigDrCm.CmdName := 'DescricaoProdutoFormatoLivre';
          CompSigtron.SigDrCm.Param['Mensagem']           := MensagemSigtron;
          CompSigtron.SigDrCm.Param['SituacaoTribitaria'] := TRIBUTO;
          CompSigtron.SigDrCm.Param['PorcentagemDesconto']:= Desco;
          CompSigtron.SigDrCm.Param['TotalItem']          := TotalItemSigtron;
        end;
    CompSigtron.SigDrCm.Send ;
  end ;

  if (Impressora = 'Schalter') then
  begin
    Desco := FormatFloat('#,##0.00', PERCDESC);
    if Pos(',',Desco) > 0 then
      Delete(Desco, Pos(',',Desco), 1);
    if Pos('.',Desco) > 0 then
      Delete(Desco, Pos('.',Desco), 1);
    Desco       := PreencheDir( Desco,    '0', 04,0) ;

    Preco  := FormatFloat('#,##0.00', VALOR * QTDE);
    if Pos(',',Preco) > 0 then
      Delete(Preco, Pos(',',Preco), 1);
    if Pos('.',Preco) > 0 then
      Delete(Preco, Pos('.',Preco), 1);
    VlUnit := FormatFloat('#,##0.00', VALOR);

    Preco  := PreencheDir( Preco,  '0', 09, 0) ;
    VlUnit := PreencheDir( VlUnit, ' ', 12, 0) ;

    if NumDecQuant = 2 then
       Quant  := FormatFloat('0000.00', QTDE) ;
    if NumDecQuant = 3 then
       Quant  := FormatFloat('000.000', QTDE) ;
    if NumDecQuant = 0 then
      Quant  := FormatFloat('0000000', QTDE) ;

    StrAux := Copy(PreencheDir(NUMITEM   ,'0' , 04, 0), 1, 13) + ' '      + {05}
              Copy(PreencheDir(CODIGO   ,'0' , 13, 0), 1, 13)  + ' '      + {14}
              Copy(PreencheDir(DESCRICAO, ' ', 33, 1), 1, 33)  + ' '      + {34}
              Quant                                            + ' X  R$' + {13}
              VlUnit                                                        {12} ;

    Retorno := ecfVendaItem78(PChar(StrAux), PChar(Preco), StrToInt(TRIBUTO)) ;
    if Retorno <> 0 then
      Erros_Schalter(Retorno) ;
  end ;

  if (Impressora = 'Schaltr302') then
  begin
    Desco := FormatFloat('#,##0.00', PERCDESC);
    if Pos(',',Desco) > 0 then
      Delete(Desco, Pos(',',Desco), 1);
    if Pos('.',Desco) > 0 then
      Delete(Desco, Pos('.',Desco), 1);
    Desco       := PreencheDir( Desco,    '0', 04,0) ;

    //Preco  := FormatFloat('#,##0.00', VALOR * QTDE);
    VlUnit := FormatFloat('#,##0.00', VALOR);
    if Pos(',',VlUnit) > 0 then
      Delete(VlUnit, Pos(',',VlUnit), 1);
    if Pos('.',Preco) > 0 then
      Delete(VlUnit, Pos('.',VlUnit), 1);

    //Preco  := PreencheDir( Preco,  '0', 09, 0) ;
    //VlUnit := PreencheDir( VlUnit, ' ', 12, 0) ;

    //Codigo    := Preenche(CODIGO,    '0', 13, 0) ;
    Quant     := Copy(FormatFloat('000.000', QTDE), 1, 3) ;
    //QuantFrac := Copy(FormatFloat('000.000', QTDE), 5, 3) ;
    QuantFrac := FormatFloat('000.000', QTDE) ;
    //VlUnit    := Preenche( VlUnit,    '0', 09, 0) ;
    //Preco     := Preenche( Preco,     '0', 12, 0) ;
    //DESCRICAO := Preenche( Descricao, '' , 24, 2) ;
    //DESCO     := Preenche( DESCO,     '0', 12, 0) ;
    //Unid      := Preenche( Unid,      '0', 02, 0) ;

    //Retorno := ecfVendaItem78(PChar(StrAux), PChar(Preco), StrToInt(TRIBUTO)) ;
    //Retorno := ecfVenda_Item (PChar(CODIGO), PChar(Descricao), PChar(Quant), PChar(QuantFrac), PChar(VlUnit), StrToInt(TRIBUTO)) ;
    Retorno := ecfVendaItem3d(PChar(Codigo),
                              PChar(Descricao),
                              PChar(QuantFrac),
                              PChar(VlUnit),
                              StrToInt(Tributo),
                              PChar(Unid),
                              '2') ;
    if Retorno <> 0 then
      Erros_Schalter(Retorno) ;

    if VLRDESCO > 0 then
    begin
      Desco := FormatFloat('#,##0.00', VLRDESCO);
      if Pos(',',Desco) > 0 then
        Delete(Desco, Pos(',',Desco), 1);
      if Pos('.',Desco) > 0 then
        Delete(Desco, Pos('.',Desco), 1);
      Desco := PreencheDir( Desco,    '0', 05,0) ;

      Retorno := ecfDescItem(0, '', PChar(Desco)) ;
      if Retorno <> 0 then
        Erros_Schalter(Retorno) ;
    end ;
  end ;

  if Impressora = 'SwedaS7000' then
  begin
    Desco := FormatFloat('#,##0.00', VLRDESCO);
    if Pos(',',Desco) > 0 then
      Delete(Desco, Pos(',',Desco), 1);
    if Pos('.',Desco) > 0 then
      Delete(Desco, Pos('.',Desco), 1);

    VlUnit := FormatFloat('#,##0.00', VALOR);
    if Pos(',',VlUnit) > 0 then
      Delete(VlUnit, Pos(',',VlUnit), 1);
    if Pos('.',VlUnit) > 0 then
      Delete(VlUnit, Pos('.',VlUnit), 1);

    Quant := FormatFloat('000.000', QTDE) ;
    if Pos(',',Quant) > 0 then
      Delete(Quant, Pos(',',Quant), 1);
    if Pos('.',Quant) > 0 then
      Delete(Quant, Pos('.',Quant), 1);

    Preco  := FormatFloat('#,##0.00', VALOR * QTDE);
    if Pos('.',Preco) > 0 then
      Delete(Preco,Pos('.',Preco), 1);
    if Pos(',',Preco) > 0 then
      Delete(Preco,Pos(',',Preco), 1);

    CODIGO    := Preenche( CODIGO,    '0', 13, 0) ;
    Quant     := Preenche( Quant,     '0', 07, 0) ;
    VlUnit    := Preenche( VlUnit,    '0', 09, 0) ;
    Preco     := Preenche( Preco,     '0', 12, 0) ;
    DESCRICAO := Preenche( '^' + Descricao, '' , 24, 2) ;
    DESCO     := Preenche( DESCO,     '0', 12, 0) ;
    Unid      := Preenche( Unid,      '0', 02, 0) ;

    StrAux := CODIGO   +
              Quant     +
              VlUnit   +
              Preco     +
              Copy(Descricao,1,24) +
             'T' + TRIBUTO ;

    MandaCupomSweda('.01' + StrAux) ;

    if VLRDESCO > 0 then
      MandaCupomSweda('.02          ' + DESCO) ;
  end ;

End;

procedure Fechamento_Cupom_Fiscal_sem_FP(Impressora : string; VALOR, DESCONTO, ACRESC : Double; MSG, DOCUMENTO, VENDEDOR, APrazo : string );
var
  AcrescDesc : string ;
  I : Integer;
begin
  if VendaEspecial then Exit;

  MSG := ConverteAcentos(MSG);

  if Impressora='URANO1EFC' then
    begin
      if ACRESC<>0 then
        AcrescimoSubtotal('2', 'Acréscimo',
        Format('%.8d',[Round(Int(ACRESC))])+Copy(FormatFloat('#,##0.00',Frac(ACRESC)),3,2));

      Application.ProcessMessages;

      if DESCONTO<>0 then
        DescontoSubtotal('0', 'Desconto',Format('%.8d',[Round(Int(DESCONTO))])+Copy(FormatFloat('#,##0.00',Frac(DESCONTO)),3,2));

      While (EstadoImpressora <> 120) do
        Application.ProcessMessages;

      if (MSG<>'') and (Length(MSG) < 192) then
        Propaganda('0',MSG);

      While (EstadoImpressora <> 121) do
        Application.ProcessMessages;

      FechaCupom('OPERADOR');

      Application.ProcessMessages;

      AvancaLinhas('7');
    end;

  if Impressora='BEMATECH_1' then
    BEMATECH_mp20fi1.FormataTX(#27'|10|0000|'
    +Format('%.12d',[Round(Int(VALOR))])+Copy(Format('%.2f',[Frac(VALOR)]),3,2)
    +'|A|'+Copy(MSG,1,496)+ #13#10+'|'+ #27);

  if Impressora='BEMATECH_2' then
    BEMATECH_mp20fi2.FormataTX(#27'|10|0000|'
    +Format('%.12d',[Round(Int(VALOR))])+Copy(Format('%.2f',[Frac(VALOR)]),3,2)
    +'|A|'+Copy(MSG,1,496)+ #13#10+'|'+ #27);

  if Impressora = 'SIGTRON300' then
  begin
     AcrescDesc := FormatFloat('#,##0.00',DESCONTO);
    if Pos(',', AcrescDesc) > 0 then
      Delete( AcrescDesc, Pos(',', AcrescDesc), 1);
    if Pos('.', AcrescDesc) > 0 then
      Delete( AcrescDesc, Pos('.', AcrescDesc), 1);
     AcrescDesc := Preenche( AcrescDesc, '0', 12, 0) ;

    CompSigtron.SigDrCm.CmdName           := 'FechamentoCupomComDescontoGlobalValor' ;
    CompSigtron.SigDrCm.Param['Valor']    := AcrescDesc ;
    CompSigtron.SigDrCm.Param['Mensagem'] := MSG + chr(255                           );
    CompSigtron.SigDrCm.Send ;
  end ;

  if Impressora = 'SIGTRON345' then
  begin
    CompSigtron.SigDrCm.CmdName := 'FechamentoCupomComMensagem';
    CompSigtron.SigDrCm.Param['Mensagem'] := MSG + Chr(10);
    CompSigtron.SigDrCm.Send;
  end ;

  if (Impressora = 'Schalter') or (Impressora = 'Schaltr302') then
  begin
    Retorno := ecfFimTrans('') ;
    if Retorno <> 0 then
      Erros_Schalter(Retorno) ;
  end ;

  if Impressora = 'SwedaS7000' then
  begin
    MandaCupomSweda('.12' + '1' + Copy(Preenche(MSG,' ',40, 02),1,40)) ;
  end ;
end ;

procedure Cancelamento_Item_anterior(Impressora:string;ITEM:Integer);
begin
  if VendaEspecial then Exit;
  If Impressora='URANO1EFC' then
    CancelaItem('Item '+IntToStr(ITEM)+' Cancelado',IntToStr(ITEM));
  If Impressora='BEMATECH_1' Then
    BEMATECH_mp20fi1.FormataTX(#27'|13|'#27);
  If Impressora='BEMATECH_2' Then
    BEMATECH_mp20fi2.FormataTX(#27'|13|'#27);

  if (Impressora='SIGTRON300') or (Impressora='SIGTRON345') then
  begin
    CompSigtron.SigDrCm.CmdName := 'CancelamentoItem' ;
    CompSigtron.SigDrCm.Param['Item'] := Preenche( IntToStr(ITEM),  '0', 03, 0);
    CompSigtron.SigDrCm.Send ;
  end;

  if (Impressora = 'Schalter') or (Impressora = 'Schaltr302') then
  begin
    Retorno := ecfCancItemDef(PChar(Preenche(IntToStr(ITEM),'0',04,0)), '') ;
    if Retorno <> 0 then
      Erros_Schalter(Retorno) ;
  end ;

  if Impressora = 'SwedaS7000' then
  begin
    MandaCupomSweda('.04') ;
  end ;
end ;

procedure Cancelamento_Cupom_Fiscal(Tipo,Impressora:String);
begin
  if VendaEspecial then
    Exit ;

  if Impressora = 'URANO1EFC' then
    begin
      if Tipo = 'A' then
        CancelaVenda('Operador');
      if Tipo = 'F' then
        CancelaCupom('1','Operador');
    end;
  if Impressora = 'BEMATECH_1' Then
    BEMATECH_mp20fi1.FormataTX(#27'|14|'#27);

  if Impressora = 'BEMATECH_2' Then
    BEMATECH_mp20fi2.FormataTX(#27'|14|'#27);

  if Impressora = 'SIGTRON300' then
  begin
    CompSigtron.SigDrCm.CmdName := 'CancelamentoUltimoCupom' ;
    CompSigtron.SigDrCm.Send ;
  end ;

  if Impressora = 'SIGTRON345' then
  begin
    CompSigtron.SigDrCm.CmdName := 'CancelaDocumento' ;
    CompSigtron.SigDrCm.Send ;
  end ;

  if (Impressora = 'Schalter') or (Impressora = 'Schaltr302') then
  begin
    if Tipo = 'A' then
      Retorno := ecfCancVenda('');
    if Tipo = 'F' then
      Retorno := ecfCancDoc('');
    if Retorno <> 0 then
      Erros_Schalter(Retorno) ;
  end ;

  if Impressora = 'SwedaS7000' then
  begin
    MandaCupomSweda('.05') ;
  end ;
end ;

procedure Autenticacao_de_documento(Impressora, MSG: string;Valor:Double);
begin
  if VendaEspecial then Exit;
  MSG:=ConverteAcentos(MSG);
  If Impressora='BEMATECH_1' Then
    BEMATECH_mp20fi1.FormataTX(#27'|16|'#27);
  If Impressora='BEMATECH_2' Then
    BEMATECH_mp20fi2.FormataTX(#27'|16|'#27);

  if (Impressora='SIGTRON300') then
  begin
    FechaPortaECF(Impressora, '');
    AbrePortaECF(Impressora, Copy(CompSigtron.SigDrCm.CommConfig, 1, 4), 'OperacaoEspecial');
    CompSigtron.SigDrCm.CmdName           := 'Autenticacao';
    //A FS300 ACEITA 30 CARACTERES NA AUTENTICACAO
    CompSigtron.SigDrCm.Param['Mensagem'] := MSG + FormatFloat('R$ #,##0.00',Valor) +chr(10);
    CompSigtron.SigDrCm.Send ;

    FechaPortaECF(Impressora, '');
    AbrePortaECF(Impressora, Copy(CompSigtron.SigDrCm.CommConfig, 1, 4), 'Fiscal');
  end;

  if (Impressora='SIGTRON345') then
  begin
    FechaPortaECF(Impressora, '');
    AbrePortaECF(Impressora, Copy(CompSigtron.SigDrCm.CommConfig, 1, 4), 'OperacaoEspecial');
    CompSigtron.SigDrCm.CmdName           := 'Autenticacao' ;
    //A FS345 ACEITA 13 CARACTERES NA AUTENTICACAO
    CompSigtron.SigDrCm.Param['Mensagem'] := Copy(MSG,1,13);
    CompSigtron.SigDrCm.Send ;

    FechaPortaECF(Impressora, '');
    AbrePortaECF(Impressora, Copy(CompSigtron.SigDrCm.CommConfig, 1, 4), 'Fiscal');
  end;

  if (Impressora = 'Schalter') or (Impressora = 'Schaltr302') then
  begin
    Retorno := ecfAutentica(PChar('AUT ' + MSG + FormatFloat('R$ #,##0.00', Valor)));
    if Retorno <> 0 then
      Erros_Schalter(Retorno) ;
  end ;
end ;

Procedure Liga_Desliga_Horario_Verao(Impressora:String);
begin
  if VendaEspecial then Exit;
  If Impressora='BEMATECH_1' Then
    BEMATECH_mp20fi1.FormataTX(#27'|18|'#27);
  If Impressora='BEMATECH_2' Then
    BEMATECH_mp20fi2.FormataTX(#27'|18|'#27);
End;

Function Status_Impressora(Impressora:String):String;
begin
  if VendaEspecial then Exit;
  If Impressora='BEMATECH_1' Then
    Begin
      BEMATECH_mp20fi1.FormataTX(#27'|19|'#27);
      Status_Impressora:=BEMATECH_mp20fi1.BuscaRetorno;
    End;
  If Impressora='BEMATECH_2' Then
  begin
    BEMATECH_mp20fi2.FormataTX(#27'|19|'#27);
    Status_Impressora:=BEMATECH_mp20fi2.BuscaRetorno;
  end ;
End;

procedure Impressao_nao_Sujeita_ao_ICMS(Impressora:string;MSG:string;Cupom:Integer);
var
  V:String;
begin
  if VendaEspecial then
   Exit ;

  MSG := ConverteAcentos(MSG);
  if Impressora = 'BEMATECH_1' then
    BEMATECH_mp20fi1.FormataTX(#27'|20|' + PCHAR(MSG) + '|'#27) ;
  if Impressora = 'BEMATECH_2' then
    BEMATECH_mp20fi2.FormataTX(#27'|20|' + PCHAR(MSG) + '|'#27) ;

  if (Impressora='SIGTRON345') then
    if MSG = '' then
    begin
      CompSigtron.SigDrCm.CmdName                      := 'EmissaoCNFNV';
      CompSigtron.SigDrCm.Param['IdentificacaoCNFNV']  := 'A';
      CompSigtron.SigDrCm.Param['DescontoAcrescimo']   := '0';
      CompSigtron.SigDrCm.Param['COOorigem']           := Format('%.6d',[Cupom]);{Format('%.6d',[StrToInt(Retorno_Numero_Cupom(Impressora))]);}
      CompSigtron.SigDrCm.Param['ValorVinculado']      := '000000000000';
      CompSigtron.SigDrCm.Send ;
    end
    else
      begin
        CompSigtron.SigDrCm.CmdName                      := 'AberturaCNFV';
        CompSigtron.SigDrCm.Param['IdentificacaoCNFV']   := 'A';
        CompSigtron.SigDrCm.Param['TipoCNFV']            := 'A';
        CompSigtron.SigDrCm.Param['COOorigem']           := Format('%.6d',[Cupom]);{Format('%.6d',[StrToInt(Retorno_Numero_Cupom(Impressora))]);}
        CompSigtron.SigDrCm.Param['ValorVinculado']      := '000000000000';
        CompSigtron.SigDrCm.Send ;

        CompSigtron.SigDrCm.CmdName                      := 'LinhaTexto';
        CompSigtron.SigDrCm.Param['TextoLivre']          := MSG;
        CompSigtron.SigDrCm.Send ;
      end;

  if (Impressora='SIGTRON300') then
    if Msg = '' then
      begin
        CompSigtron.SigDrCm.CmdName := 'AberturaCuposSemICMS' ;
        CompSigtron.SigDrCm.Send;
      end
    else
      CompSigtron.SigDrCm.Write(Msg) ;
End;

procedure Fecha_Cupom_Nao_Sujeito_ao_ICMS(Impressora:String);
begin
  if VendaEspecial then Exit;
  If Impressora='BEMATECH_1' Then
    BEMATECH_mp20fi1.FormataTX(#27'|21|'#27);
  If Impressora='BEMATECH_2' Then
    BEMATECH_mp20fi2.FormataTX(#27'|21|'#27);
  If(Impressora='SIGTRON345') then
    begin
      CompSigtron.SigDrCm.CmdName := 'FechamentoComprovante';
      CompSigtron.SigDrCm.Send ;
    end;
  If (Impressora='SIGTRON300') then
    Begin
      CompSigtron.SigDrCm.CmdName := 'FechamentoCupomSemICMS';
      CompSigtron.SigDrCm.Send;
    end;
End;

Procedure Acionamento_Gaveta(Impressora:String);
begin
  if VendaEspecial then Exit;
  if Impressora='BEMATECH_1' then
    BEMATECH_mp20fi1.FormataTX(#27'|22|'+CHR(64)+'|'#27);
  if Impressora='BEMATECH_2' then
    BEMATECH_mp20fi2.FormataTX(#27'|22|'+CHR(64)+'|'#27);

  if (Impressora='SIGTRON300') or (Impressora='SIGTRON345') then
  begin
    FechaPortaECF(Impressora, '') ;
    AbrePortaECF(Impressora, Copy(CompSigtron.SigDrCm.CommConfig, 1, 4), 'OperacaoEspecial') ;
    CompSigtron.SigDrCm.CmdName := 'AbreGaveta' ;
    CompSigtron.SigDrCm.Send ;
    FechaPortaECF(Impressora, '') ;
    AbrePortaECF(Impressora, Copy(CompSigtron.SigDrCm.CommConfig, 1, 4), 'Fiscal');
  end ;

  if (Impressora = 'Schalter') or (Impressora = 'Schaltr302') then
  begin
    Retorno := ecfAbreGaveta ;
    if Retorno <> 0 then
      Erros_Schalter(Retorno) ;
  end ;
end ;

Function Status_Gaveta(Impressora:String) : boolean ;
begin
  if VendaEspecial then
    Exit ;

  if Impressora='BEMATECH_1' then
    begin
      BEMATECH_mp20fi1.FormataTX(#27'|23|'#13#27);
      If Copy(BEMATECH_mp20fi1.BuscaRetorno,1,3)='000' Then Status_Gaveta:=True Else Status_Gaveta:=False;
    end ;

  if Impressora='BEMATECH_2' then
    begin
      BEMATECH_mp20fi2.FormataTX(#27'|23|'#13#27);
      if Copy(BEMATECH_mp20fi2.BuscaRetorno,1,3)='000' then
        Status_Gaveta := true
      else
        Status_Gaveta := false ;
    end ;
end ;

Procedure Recebimentos_nao_Sujeitos_ao_ICMS(Impressora:String;VALOR:Double;TIPO:Char);
{ A - SANGRIA}
{ U - SUPRIMENTO}
begin
  if VendaEspecial then Exit;
  If Impressora='BEMATECH_1' Then
    Case TIPO Of
      'A':BEMATECH_mp20fi1.FormataTX(#27'|25|SA|'+IntToStr(Round(Int(VALOR)))+Copy(Format('%.2f',[Frac(VALOR)]),3,2)+'|'#27);
      'U':BEMATECH_mp20fi1.FormataTX(#27'|25|SU|'+IntToStr(Round(Int(VALOR)))+Copy(Format('%.2f',[Frac(VALOR)]),3,2)+'|'#27);
    End;
  If Impressora='BEMATECH_2' Then
    Case TIPO Of
      'A':BEMATECH_mp20fi2.FormataTX(#27'|25|SA|'+IntToStr(Round(Int(VALOR)))+Copy(Format('%.2f',[Frac(VALOR)]),3,2)+'|'#27);
      'U':BEMATECH_mp20fi2.FormataTX(#27'|25|SU|'+IntToStr(Round(Int(VALOR)))+Copy(Format('%.2f',[Frac(VALOR)]),3,2)+'|'#27);
    End;
End;
Function Retorno_Aliquotas(Impressora:String):String;
begin
  if VendaEspecial then Exit;
  If Impressora='BEMATECH_1' Then
    Begin
      BEMATECH_mp20fi1.FormataTX(#27'|26|'#27);
      Retorno_Aliquotas:=BEMATECH_mp20fi1.BuscaRetorno;
    End;
  If Impressora='BEMATECH_2' Then
    Begin
      BEMATECH_mp20fi2.FormataTX(#27'|26|'#27);
      Retorno_Aliquotas:=BEMATECH_mp20fi2.BuscaRetorno;
    End;
End;
Function Retorno_Totalizadores_Parciais(Impressora:String):String;
begin
  if VendaEspecial then Exit;
  If Impressora='BEMATECH_1' Then
    Begin
      BEMATECH_mp20fi1.FormataTX(#27'|27|'#27);
      Retorno_Totalizadores_Parciais:=BEMATECH_mp20fi1.BuscaRetorno;
    End;
  If Impressora='BEMATECH_2' Then
    Begin
      BEMATECH_mp20fi2.FormataTX(#27'|27|'#27);
      Retorno_Totalizadores_Parciais:=BEMATECH_mp20fi2.BuscaRetorno;
    End;
End;
Function Retorno_Subtotal(Impressora:String):String;
begin
  if VendaEspecial then Exit;
  if Impressora='BEMATECH_1' then
  begin
    BEMATECH_mp20fi1.FormataTX(#27'|29|'#27);
    Retorno_Subtotal:=BEMATECH_mp20fi1.BuscaRetorno;
  end ;

  if Impressora='BEMATECH_2' then
  begin
    BEMATECH_mp20fi2.FormataTX(#27'|29|'#27);
    Retorno_Subtotal:=BEMATECH_mp20fi2.BuscaRetorno;
  end ;
end ;

function Retorno_Numero_Cupom(Impressora:string) : string ;
var
  NumCupRet : PChar;
  Aux_Pchar : PChar;
  IntAux    : integer;
  NumCup    : string ;
begin
  Retorno_Numero_Cupom:='';
  if VendaEspecial then Exit;
  If Impressora='BEMATECH_1' Then
    Begin
      BEMATECH_mp20fi1.FormataTX(#27'|30|'#27);
      Retorno_Numero_Cupom := BEMATECH_mp20fi1.BuscaRetorno;
    End;
  If Impressora='BEMATECH_2' Then
    Begin
      BEMATECH_mp20fi2.FormataTX(#27'|30|'#27);
      Retorno_Numero_Cupom := BEMATECH_mp20fi2.BuscaRetorno;
    End;

  If (Impressora='SIGTRON300') or (Impressora='SIGTRON345') then
    Retorno_Numero_Cupom := CompSigtron.SigDrCm.Ret['NumeroCupom'] ;

  if (Impressora = 'Schalter') or (Impressora = 'Schaltr302') then
  begin
    NumCupRet := ecfStatusCupom(IntAux);
    Aux_Pchar := StrPos(NumCupRet, 'Erro');
    IntAux    := 0 ;
    if Aux_Pchar = nil then
      Retorno_Numero_Cupom := Format('%6s',[Copy(NumCupRet, 6, 6)]);
  end ;

  If Impressora = 'SwedaS7000' then
  begin
    NumCup := MandaCupomSweda('.27') ;
    NumCup := Copy(NumCup, 14,04) ;
    //NumCup := IntToStr(StrToInt(NumCup)+1) ;
    Retorno_Numero_Cupom := Format('%6s',[NumCup]);
  end ;
end ;

Procedure Cancelamento_Item(Impressora:String;ITEM:Integer);
begin
  if VendaEspecial then Exit;
  If Impressora='URANO1EFC' then
    CancelaItem('Item '+IntToStr(ITEM)+' Cancelado',IntToStr(ITEM));
  If Impressora='BEMATECH_1' Then
    BEMATECH_mp20fi1.FormataTX(#27'|31|'+Format('%.4d',[ITEM])+'|'#27);
  If Impressora='BEMATECH_2' Then
    BEMATECH_mp20fi2.FormataTX(#27'|31|'+Format('%.4d',[ITEM])+'|'#27);

  If (Impressora='SIGTRON300') or (Impressora='SIGTRON345') then
    begin
      CompSigtron.SigDrCm.CmdName := 'CancelamentoItem' ;
      CompSigtron.SigDrCm.Param['Item'] := Preenche( IntToStr(ITEM),  '0', 03, 0);
      CompSigtron.SigDrCm.Send ;
    end;

  if (Impressora = 'Schalter') or (Impressora = 'Schaltr302') then
  begin
    Retorno := ecfCancItemDef(PChar(Preenche(IntToStr(ITEM),'0',04,0)), '') ;
    if Retorno <> 0 then
      Erros_Schalter(Retorno) ;
  end ;

  if Impressora = 'SwedaS7000' then
  begin
    MandaCupomSweda('.04' + Preenche(IntToStr(ITEM), '0', 03, 0)) ;
  end ;
End;

Procedure Inicia_Fechamento_Cupom(Impressora:String;DESCONTO:Double;Tipo:Char);
begin
  if VendaEspecial then Exit;
  If Impressora='BEMATECH_1' then
    if Tipo = 'A' then
      BEMATECH_mp20fi1.FormataTX(#27'|32|a|'+Format('%.12d',[Round(Int(DESCONTO))])+Copy(Format('%.2f',[Frac(DESCONTO)]),3,2)+'|'#27)
    else
      BEMATECH_mp20fi1.FormataTX(#27'|32|d|'+Format('%.12d',[Round(Int(DESCONTO))])+Copy(Format('%.2f',[Frac(DESCONTO)]),3,2)+'|'#27);
  If Impressora='BEMATECH_2' then
    if Tipo = 'A' then
      BEMATECH_mp20fi2.FormataTX(#27'|32|a|'+Format('%.12d',[Round(Int(DESCONTO))])+Copy(Format('%.2f',[Frac(DESCONTO)]),3,2)+'|'#27)
    else
      BEMATECH_mp20fi2.FormataTX(#27'|32|d|'+Format('%.12d',[Round(Int(DESCONTO))])+Copy(Format('%.2f',[Frac(DESCONTO)]),3,2)+'|'#27);
End;
procedure Envia_FP(Impressora:String;NUMERO:Integer;FP:string);
begin
  If Impressora='URANO1EFC' then
    FormaPagamento(IntToStr(NUMERO),FP);
  If Impressora='BEMATECH_2' then
    BEMATECH_mp20fi2.FormataTX(#27'|71|'+Copy(FP,1,16)+'|'#27);
end ;

procedure Efetua_FP_Cupom(Impressora:String;FP:String;Tipo:Char;VALOR:Double;FPNum:Integer;Id:string) ;
var
  ValorPagto : String;
begin
  if VendaEspecial then Exit;
  If Impressora='BEMATECH_1' then
    BEMATECH_mp20fi1.FormataTX(#27'|33|'+PCHAR(Format('%-22s',[FP]))+'|'+IntToStr(Round(Int(VALOR)))+Copy(Format('%.2f',[Frac(VALOR)]),3,2)+'|'#27);

  If Impressora='BEMATECH_2' then
    BEMATECH_mp20fi2.FormataTX(#27'|72|'+PChar(Format('%.2d',[FPNum]))+'|'+PChar(Format('%.12d',[(Round(Int(VALOR)))])+Copy(Format('%.2f',[Frac(VALOR)]),3,2))+'|'#27);

  if (Impressora='URANO1EFC') then
    Pagamento(ID,FP,Format('%.8d',[Round(Int(VALOR))])+Copy(FormatFloat('#,##0.00',Frac(VALOR)),3,2),'1');

  if (Impressora='SIGTRON345') then
  begin
    ValorPagto := FormatFloat('#,##0.00', VALOR);
    if Pos(',',ValorPagto) > 0 then
      Delete(ValorPagto, Pos(',',ValorPagto), 1);
    if Pos('.',ValorPagto) > 0 then
      Delete(ValorPagto, Pos('.',ValorPagto), 1);
    ValorPagto       := PreencheDir( ValorPagto,    '0', 12,0) ;

    CompSigtron.SigDrCm.CmdName := 'DescricaoPagamento' ;
    CompSigtron.SigDrCm.Param['FormaPagamento'] := Id;
    CompSigtron.SigDrCm.Param['ValorPagamento'] := ValorPagto;
    CompSigtron.SigDrCm.Param['LinhaAdicional'] := Chr(255);
    CompSigtron.SigDrCm.Send ;
  end ;

  if (Impressora = 'Schalter') or (Impressora = 'Schaltr302') then
  begin
    ValorPagto := FormatFLoat('#,##0.00', VALOR) ;
    if Pos(',',ValorPagto) > 0 then
      Delete(ValorPagto, Pos(',',ValorPagto), 1);
    if Pos('.',ValorPagto) > 0 then
      Delete(ValorPagto, Pos('.',ValorPagto), 1);
    Retorno := ecfPagamento (0, PChar(Id), PChar(ValorPagto), 0);
    if Retorno <> 0 then
      Erros_Schalter(Retorno) ;
  end ;
End;

procedure Termina_fechamento_de_cupom(Impressora:String;MSG:String);
begin
  if VendaEspecial then Exit;
  MSG:=ConverteAcentos(MSG);
  If Impressora='BEMATECH_1' Then
    BEMATECH_mp20fi1.FormataTX(#27'|34|'+PCHAR(MSG)+'|'#13#27);
  If Impressora='BEMATECH_2' Then
    BEMATECH_mp20fi2.FormataTX(#27'|34|'+PCHAR(MSG)+'|'#13#27);
End;

Function Retorno_de_variaveis_da_impressora(Impressora:String;VARIAVEL:Integer):String;
begin
  if VendaEspecial then Exit;
  If Impressora='BEMATECH_1' Then
    Begin
      BEMATECH_mp20fi1.FormataTX(#27'|35|'+Format('%.2d',[VARIAVEL])+'|'#27);
      Retorno_de_variaveis_da_impressora:=BEMATECH_mp20fi1.BuscaRetorno;
    End;
  If Impressora='BEMATECH_2' Then
    Begin
      BEMATECH_mp20fi2.FormataTX(#27'|35|'+Format('%.2d',[VARIAVEL])+'|'#27);
      Retorno_de_variaveis_da_impressora:=BEMATECH_mp20fi2.BuscaRetorno;
    End;
End;

procedure Vinculacao_ao_ISS(Impressora:String;ArrayICMS:String);
begin
  if VendaEspecial then Exit;
  If Impressora='BEMATECH_1' Then
    BEMATECH_mp20fi1.FormataTX(#27'|38|'+PCHAR(ArrayICMS)+'|'#27);
  If Impressora='BEMATECH_2' Then
    BEMATECH_mp20fi2.FormataTX(#27'|38|'+PCHAR(ArrayICMS)+'|'#27);
end ;

procedure Programa_truncamento_arredondamento(Impressora:string;ARREDONDAMENTO:Boolean);
begin
  if VendaEspecial then Exit;
  If Impressora='BEMATECH_1' Then
    If ARREDONDAMENTO Then
      BEMATECH_mp20fi1.FormataTX(#27'|39|1|'#27)
    Else
      BEMATECH_mp20fi1.FormataTX(#27'|39|0|'#27);
  If Impressora='BEMATECH_2' Then
    If ARREDONDAMENTO Then
      BEMATECH_mp20fi2.FormataTX(#27'|39|1|'#27)
    Else
      BEMATECH_mp20fi2.FormataTX(#27'|39|0|'#27);
end ;

procedure Nomeia_totalizadores_parciais_nao_sujeitos_ao_ICMS(Impressora:String;TOTALIZADOR:Integer;NOME:String);
begin
  if VendaEspecial then Exit;
  If Impressora='BEMATECH_1' Then
    BEMATECH_mp20fi1.FormataTX(#27'|40|'+IntToStr(TOTALIZADOR)+'|'+PCHAR(NOME)+'|'#27);
  If Impressora='BEMATECH_2' Then
    BEMATECH_mp20fi2.FormataTX(#27'|40|'+IntToStr(TOTALIZADOR)+'|'+PCHAR(NOME)+'|'#27);
end ;

procedure Venda_de_Item_com_Valor_Fracionario_de_3_Digitos(Impressora:String;CODIGO,DESCRICAO,TRIBUTO:String;QTDE,VALOR,DESCONTO:Double);
begin
  if VendaEspecial then Exit;
  DESCRICAO:=ConverteAcentos(DESCRICAO);
  If Impressora='BEMATECH_1' Then
    BEMATECH_mp20fi1.FormataTX(#27'|56|'
    +PCHAR(Copy(CODIGO,1,13))+'|'
    +PCHAR(Copy(DESCRICAO,1,29))+'|x'+PCHAR(TRIBUTO)+'|'
    +Format('%.4d',[Round(Int(QTDE))])+Copy(Format('%.3f',[Frac(QTDE)]),3,3)+'|'
    +IntToStr(Round(Int(VALOR)))+Copy(Format('%.3f',[Frac(VALOR)]),3,3)+'|'
    +Format('%.6d',[Round(Int(DESCONTO))])+Copy(Format('%.2f',[Frac(DESCONTO)]),3,2)+'|'#27);
  If Impressora='BEMATECH_2' Then
    BEMATECH_mp20fi2.FormataTX(#27'|56|'
    +PCHAR(Copy(CODIGO,1,13))+'|'
    +PCHAR(Copy(DESCRICAO,1,29))+'|'+PCHAR(TRIBUTO)+'|'
    +Format('%.4d',[Round(Int(QTDE))])+Copy(Format('%.3f',[Frac(QTDE)]),3,3)+'|'
    +IntToStr(Round(Int(VALOR)))+Copy(Format('%.3f',[Frac(VALOR)]),3,3)+'|'
    +Format('%.6d',[Round(Int(DESCONTO))])+Copy(Format('%.2f',[Frac(DESCONTO)]),3,2)+'|'#27);
end ;
procedure InformacaoesConsumidor(Impressora,Nome,Endereco,Documento:String);
Begin
  if VendaEspecial then Exit;
  if (Impressora='SIGTRON345') then
    begin
      CompSigtron.SigDrCm.CmdName := 'IdentificacaoConsumidor' ;
      CompSigtron.SigDrCm.Param['Nome'] := Format('%-42s',[Copy(Nome,1,42)]);
      CompSigtron.SigDrCm.Param['Endereco'] := Format('%-84s',[Copy(Endereco,1,84)]);
      CompSigtron.SigDrCm.Param['Documento'] := Format('%-42s',[Copy(Documento,1,42)]);
      CompSigtron.SigDrCm.Send;
    End;
End;
Function ConverteAcentos(Str: string): string;
const
  NumChars = 47;
  Acentuados: array [1..NumChars] of Char = ('Á', 'É', 'Í', 'Ó', 'Ú',
                                             'á', 'é', 'í', 'ó', 'ú',
                                             'À', 'È', 'Ì', 'Ò', 'Ù',
                                             'à', 'è', 'ì', 'ò', 'ù',
                                             'Â', 'Ê', 'Î', 'Ô', 'Û',
                                             'â', 'ê', 'î', 'ô', 'û',
                                             'Ã', 'Õ', 'ã', 'õ',
                                             'Ä', 'Ë', 'Ï', 'Ö', 'Ü',
                                             'ä', 'ë', 'ï', 'ö', 'ü',
                                             'Ç', 'ç', 'º');
  Normais: array [1..NumChars] of Char = ('A', 'e', 'I', 'O', 'U',
                                          'a', 'e', 'i', 'o', 'u',
                                          'A', 'E', 'I', 'O', 'U',
                                          'a', 'e', 'i', 'o', 'u',
                                          'A', 'E', 'I', 'O', 'U',
                                          'a', 'e', 'i', 'o', 'u',
                                          'A', 'O', 'a', 'o',
                                          'A', 'E', 'I', 'O', 'U',
                                          'a', 'e', 'i', 'o', 'u',
                                          'C', 'c', '.');
var
  Len, C: Integer;
  { --- }
  function ConvChar(Ch: Char): Char;
  var
    I: Integer;
  begin
    for I := 1 to NumChars do
      if Acentuados[I] = Ch then
      begin
        Result := Normais[I];
        Exit;
      end;
    Result := Ch;
  end;
  { --- }
begin
  Result := '';
  Len := Length(Str);
  for C := 1 to Len do
    Result := Result+ConvChar(Str[C]);
end;
Function PreencheDir(Descricao,Str:String;Tamanho,Posicao:Integer):String ;
var
 i,Dif:integer;
begin
  if VendaEspecial then Exit;
  Dif:=Tamanho - length(Descricao);
  For i:= 1 to Dif do
  //posicacao a esquerda/direita
  If Posicao = 0 then
     Descricao  := Str  + Descricao
     else
      Descricao := Descricao + str;
  ////===========================
  PreencheDir := Descricao;
end;
Function Preenche( STRI, FloodStr:String; TAM:Integer ; JUST : Integer):String ;
VAR Conta   : Integer ;
    Aux_Str : String ;
begin
  if VendaEspecial then Exit;
  Aux_Str := '' ;
  FOR Conta := 1 TO (Tam-Length(STRI)) DO
     if FloodStr = '' then
       AUX_STR := AUX_STR + ' '
     else
        AUX_STR := AUX_STR + FloodStr ;
  IF JUST = 0 THEN //Esquerda
    AUX_STR := AUX_STR + STRI ;
  IF JUST = 2 THEN //Direita
    AUX_STR := STRI + AUX_STR ;
  Preenche := AUX_STR ;
End ;
end.
