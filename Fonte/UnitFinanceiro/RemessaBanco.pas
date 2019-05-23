unit RemessaBanco;

interface

uses
  SysUtils, Dialogs;

type
  TRemessa = record
    //************************************************************************//
    // REGISTROS UTILIZADOS NA GERA��O DO HEADER DO ARQUIVO, PODENDO SER USADO//
    // POSTERIOMENTE POR OUTRAS ROTINAS                                       //
    //************************************************************************//
    CODIGOEMPRESA : string; {C�DIGO DA EMPRESA - INFORMADO PELO BANCO NO CADASTRAMENTO DA CONTA}
    NOMEEMPRESA : string; {NOME DA EMPRESA}
    NUMEROBANCO : string; {N�MERO DO BANCO NA C�MARA DE COMPENSA��O}
    NOMEBANCO : string; {NOME DO BANCO POR EXTENSO}
    NUMEROREMESSA : string; {N�MERO DE REMESSA DO ARQUIVO !JAMAIS PODE SER ZERADO OU REPETIDO!}
    //************************************************************************//
    // REGISTROS UTILIZADOS NA GERA��O DOS REGISTROS DE COBRAN�A DO ARQUIVO,  //
    // PODENDO SER USADO POSTERIOMENTE POR OUTRAS ROTINAS                     //
    //************************************************************************//
    CODIGOCARTEIRA : string; {C�DIGO DA CARTEIRA DA EMPRESA CEDENTE NO BANCO}
    CODIGOAGENCIA : string; {C�DIGO DA AG�NCIA CEDENTE, SEM O D�GITO, DA EMPRESA CEDENTE NO BANCO}
    CONTACORRENTE : string; {N�MERO DA CONTA CORRENTE, COM O D�GITO, DA EMPRESA CEDENTE NO BANCO}
    CONTARECEBER : string; {N�MERO DE CONTROLE DO PARTICIPANTE}
    DESCONTOBONIFICACAO : string; {VALOR DO DESCONTO DE BONIFICA��O POR DIA}
    RATEIOCREDITO : string; {INDICADOR DE RATEIO DE CR�DITO}
    IDENTIFICACAOOCORRENCIA : string; {IDENTIFICA��O DE OCORR�NCIA}
    DATAVENCIMENTOTITULO : string; {DATA DE VENCIMENTO DO T�TULO}
    VALORTITULO : string; {VALOR DO T�TULO}
    PRIMEIRAINSTRUCAO : string; {PRIMEIRA INSTRU��O}
    SEGUNDAINSTRUCAO : string; {SEGUNDA INSTRU��O}
    VALORDIAATRASO : string; {VALOR A SER COBRADO POR DIA DE ATRASO}
    DATALIMITEDESCONTO : string; {DATA LIMITE PARA CONCESS�O DO DESCONTO}
    VALORDESCONTO : string; {VALOR DO DESCONTO}
    IDENTIFICACAOSACADO : string; {IDENTIFICA��O DO TIPO DE INSCRI��O DO SACADO}
    NUMEROINSCRICAOSACADO : string; {N�MERO DE INSCRICAO DO SACADO}
    NOMESACADO : string; {NOME DO SACADO}
    ENDERECOSACADO : string; {ENDERECO COMPLETO DO SACADO}
    CEPSACADO : string; {CEP COMPLETO N�O CONTENDO TRACO ENTRE CEP E O SUFIXO}
    PRIMEIRAMENSAGEM : string; {PRIMEIRA MENSAGEM}
    SEGUNDAMENSAGEM : string; {SEGUNDA MENSAGEM}
    SEQUENCIALREGISTRO : integer; {N�MERO SEQUENCIAL DO ARQUIVO INCREMENTANDO DE UM}
  end;

var
  Texto : TextFile;

  function NoPointComma(Value : double) : string;
  function CorrectDate(Data : TDateTime) : string;
  function DocumentNumber(Doc : string) : string;

  procedure GeraHeader(Registro : TRemessa;Caminho : string);
  procedure GeraRegistroCobranca(Registro : TRemessa);
  procedure GeraTrailler(Sequencial : integer);

implementation

//****************************************************************************//
// M�TODO QUE "LIMPA" A STRING PASSADA DOS CARACTERES "SUJOS" CONTIDOS NELA   //
//****************************************************************************//
function CleanString(Clean : string; Dirty : array of string) : string;
var
  I : integer;
begin
  Result := Clean;
  for I := 0  to length(Dirty) -1 do
    while Pos(Dirty[I],Result) > 0 do
      Delete(Result,Pos(Dirty[I],Result),1);
end;

//****************************************************************************//
// M�TODO QUE PREENCHE A STRING ENVIADA COM OS CARACTERES DESEJADOS           //
//****************************************************************************//
function CompleteString(Text : string; WithText : string; Size : integer) : string;
begin
  Result := Text;
  while length(Result) < Size do
    Result := Result + WithText;
end;

//****************************************************************************//
// M�TODO QUE DEVOLVE O DIGITO DE AUTO CONFER�NCIA PARA COBRAN�A              //
//****************************************************************************//
function DigitoVerificador(NroCarteira,Nro : string) : string;
const
  FM : array [0..12] of integer = (2,7,6,5,4,3,2,7,6,5,4,3,2);
var
  Sum,I : integer;
begin
  Sum := 0;
  Result := '0';
  for I := 1 to 11 do
    begin
      if I < 3 then
        Sum := Sum + (StrToInt(NroCarteira[I]) * FM[I - 1]);
      Sum := Sum + (StrToInt(Nro[I]) * FM[I + 1]);
    end;
  Sum := (Sum mod 11);
  if Sum > 0 then
    Result := IntToStr(11 - Sum);
  if Result = '10' then
    Result := 'P';
end;

//****************************************************************************//
// M�TODO QUE DEVOLVE O VALOR PASSADO SEM PONTOS E SEM V�RGULAS               //
//****************************************************************************//
function NoPointComma(Value : double) : string;
begin
  try
    Result := FloatToStr(Value);
  except
    Result := '0';
  end;
  Result := CleanString(Result,[',','.']);
end;

//****************************************************************************//
// M�TODO QUE DEVOLVE A DATA PASSADA NO FORMATO DDMMAA CONFORME SOLICITADO    //
//****************************************************************************//
function CorrectDate(Data : TDateTime) : string;
begin
  try
    Result := DateToStr(Data);
    Result := FormatDateTime('ddmmyy',Data);
  except
    Result := '000000';
  end;
end;

//****************************************************************************//
// M�TODO QUE DEVOLVE O NUMERO DA INSCRI��O DO SACADO NO FORMATO SOLICITADO   //
//****************************************************************************//
function DocumentNumber(Doc : string) : string;
begin
  Doc := CleanString(Doc,['-','/','.']);
  if length(Trim(Doc)) = 11 then
    Result := '000';
  Result := Result + Doc;
end;

//****************************************************************************//
// M�TODO QUE CONTROLA TODO O PROCESSO DE ESCRITA NO ARQUIVO J� CRIADO        //
//****************************************************************************//
procedure WriteText(var FileText : TextFile; Text : string);
begin
  Append(FileText);
  Writeln(FileText,Text);
  CloseFile(FileText);
end;

//****************************************************************************//
// M�TODO QUE GERA O HEADER DO ARQUIVO DE REMESSA PARA COBRAN�A BANC�RIA      //
//****************************************************************************//
procedure GeraHeader(Registro : TRemessa;Caminho : string);
var
  Info : string;
begin
  AssignFile(Texto,Caminho);
  ReWrite(Texto);
  Reset(Texto);
  Info := '0'; {IDENTIFICA��O DO REGISTRO}
  Info := Info + '1'; {IDENTIFICA��O DO ARQUIVO}
  Info := Info + 'REMESSA'; {LITERAL DA REMESSA}
  Info := Info + '01'; {C�DIGO DO SERVI�O}
  Info := CompleteString(Info + 'COBRANCA',' ',26); {LITERAL DO SERVI�O}
  Info := CompleteString(Info,'0',46 - length(Trim(Copy(Registro.CODIGOEMPRESA,1,20)))) + Trim(Copy(Registro.CODIGOEMPRESA,1,20)); {C�DIGO DA EMPRESA}
  Info := CompleteString(Info + Copy(Registro.NOMEEMPRESA,1,30),' ',76); {NOME DA EMPRESA}
  Info := CompleteString(Info,'0',79 - length(Registro.NUMEROBANCO)) + Registro.NUMEROBANCO; {N�MERO DO BANCO}
  Info := CompleteString(Info + Copy(Registro.NOMEBANCO,1,15),' ',94); {NOME DO BANCO}
  Info := Info + CorrectDate(Date); {DATA DO ARQUIVO}
  Info := CompleteString(Info,' ',108); {BRANCO}
  Info := Info + 'MX'; {IDENTIFICA��O DO SISTEMA}
  Info := CompleteString(Info,'0',117 - length(Registro.NUMEROREMESSA)) + Registro.NUMEROREMESSA; {N�MERO SEQUENCIAL DO ARQUIVO}
  Info := CompleteString(Info,' ',394); {BRANCO}
  Info := Info + '000001'; {SEQUENCIAL DO REGISTRO}
  WriteText(Texto,Info);
end;

//****************************************************************************//
// M�TODO QUE GERA OS REGISTROS PARA COBRAN�A BANC�RIA                        //
//****************************************************************************//
procedure GeraRegistroCobranca(Registro : TRemessa);
var
  Info : string;
begin
  Info := '1'; {IDENTIFICA��O DO REGISTRO}
  Info := CompleteString(Info,'0',6); {AG�NCIA DE D�BITO}
  Info := CompleteString(Info,' ',7); {DV DA AG�NCIA DE D�BITO}
  Info := CompleteString(Info,'0',12); {RAZ�O DA CONTA CORRENTE DE D�BITO}
  Info := CompleteString(Info,'0',19); {N�MERO DA CONTA CORRENTE DE D�BITO}
  Info := CompleteString(Info,' ',20); {DV DA CONTA CORRENTE DE D�BITO}
  Info := CompleteString(Info + '0' + Registro.CODIGOCARTEIRA + Registro.CODIGOAGENCIA + Registro.CONTACORRENTE,' ',37); {IDENTIFICA��O DA EMPRESA CEDENTE NO BANCO}
  Info := CompleteString(Info + Copy(Registro.CONTARECEBER,1,25),' ',62); {N�MERO DE CONTROLE DO PARTICIPANTE}
  Info := CompleteString(Info + Registro.NUMEROBANCO,' ',65); {C�DIGO DO BANCO A SER DEBITADO NA C�MARA DE COMPENSA��O}
  Info := CompleteString(Info,'0',70); {ZERO}
  Info := CompleteString(Info,'0',81); {IDENTIFICA��O DO T�TULO NO BANCO}
  Info := CompleteString(Info,'0',82); {D�GITO DE AUTO CONFER�NCIA}
  Info := CompleteString(Info,'0',92 - length(Registro.DESCONTOBONIFICACAO)) + Registro.DESCONTOBONIFICACAO; {DESCONTO BONIFICA��O POR DIA}
  Info := CompleteString(Info + '1',' ',93); {CONDI��O PARA EMISS�O DA PAPELETA DE COBRAN�A}
  Info := CompleteString(Info + 'N',' ',94); {IDENTIFICA��O SE EMITE PAPELETA PARA DEBITO AUTOMATICO}
  Info := CompleteString(Info,' ',104); {IDENTIFICA��O DA OPERA��O DO BANCO}
  Info := CompleteString(Info + Registro.RATEIOCREDITO,' ',105); {INDICADOR DE RATEIO DE CR�DITO}
  Info := CompleteString(Info + '2',' ',106); {ENDERE�AMENTO PARA AVISO DE D�BITO AUTOM�TICO EM CONTA CORRENTE}
  Info := CompleteString(Info,' ',108); {BRANCO}
  Info := CompleteString(Info,'0',110 - length(Registro.IDENTIFICACAOOCORRENCIA)) + Registro.IDENTIFICACAOOCORRENCIA; {IDENTIFICA��O DA OCORR�NCIA}
  Info := CompleteString(Info,' ',120); {N�MERO DO DOCUMENTO}
  Info := Info + Registro.DATAVENCIMENTOTITULO; {DATA DE VENCIMENTO DO T�TULO}
  Info := CompleteString(Info,' ',139 - length(Registro.VALORTITULO)) + Registro.VALORTITULO; {VALOR DO T�TULO}
  Info := CompleteString(Info,'0',142); {BANCO ENCARREGADO DA COBRAN�A}
  Info := CompleteString(Info,'0',147); {AG�NCIA DEPOSIT�RIA}
  Info := Info + '99'; {ESP�CIE DE T�TULO}
  Info := Info + 'A'; {IDENTIFICA��O}
  Info := Info + CorrectDate(Date); {DATA DE EMISS�O DO T�TULO}
  Info := Info + Registro.PRIMEIRAINSTRUCAO; {PRIMEIRA INSTRU��O}
  Info := Info + Registro.SEGUNDAINSTRUCAO; {SEGUNDA INSTRU��O}
  Info := CompleteString(Info,'0',173 - length(Registro.VALORDIAATRASO)) + Registro.VALORDIAATRASO; {VALOR A SER COBRADO POR DIA DE ATRASO}
  Info := Info + Registro.DATALIMITEDESCONTO; {DATA LIMITE PARA CONCESS�O DE DESCONTO}
  Info := CompleteString(Info,'0',192 - length(Registro.VALORDESCONTO)) + Registro.VALORDESCONTO; {VALOR DO DESCONTO}
  Info := CompleteString(Info,'0',205); {VALOR DO IOF}
  Info := CompleteString(Info,'0',218); {VALOR DO ABATIMENTO A SER CONCEDIDO OU CANCELADO}
  Info := Info + Registro.IDENTIFICACAOSACADO; {IDENTIFICA��O DO TIPO DE INSCRI��O DO SACADO}
  Info := CompleteString(Info,'0',234 - length(Registro.NUMEROINSCRICAOSACADO)) + Registro.NUMEROINSCRICAOSACADO; {N�MERO DE INSCRI��O DO SACADO}
  Info := CompleteString(Info + Copy(Registro.NOMESACADO,1,40),' ',274); {NOME DO SACADO}
  Info := CompleteString(Info + Copy(Registro.ENDERECOSACADO,1,40),' ',314); {ENDERE�O COMPLETO}
  Info := CompleteString(Info + Copy(Registro.PRIMEIRAMENSAGEM,1,12),' ',326); {PRIMEIRA MENSAGEM}
  Info := CompleteString(Info,'0',334 - length(Registro.CEPSACADO)) + Registro.CEPSACADO; {CEP DO SACADO E SUFIXO DO CEP}
  Info := CompleteString(Info + Copy(Registro.SEGUNDAMENSAGEM,1,60),' ',394); {SACADOR AVALISTA OU SEGUNDA MENSAGEM}
  Info := CompleteString(Info,'0',400 - length(IntToStr(Registro.SEQUENCIALREGISTRO))) + IntToStr(Registro.SEQUENCIALREGISTRO); {SEQUENCIAL DO REGISTRO}
  WriteText(Texto,Info);
end;

//****************************************************************************//
// M�TODO QUE GERA O TRAILLER DO ARQUIVO DE REMESSA PARA COBRAN�A BANC�RIA    //
//****************************************************************************//
procedure GeraTrailler(Sequencial : integer);
var
  Info : string;
begin
  Info := '9'; {IDENTIFICA��O DO REGISTRO}
  Info := CompleteString(Info,' ',394); {BRANCO}
  Info := CompleteString(Info,'0',400 - length(IntToStr(Sequencial))) + IntToStr(Sequencial); {SEQUENCIAL DO REGISTRO}
  WriteText(Texto,Info);
end;

end.
