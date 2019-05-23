unit PertoCheque;

interface

uses
  SysUtils, Dialogs, Forms, Windows;

type
  TInfoCheque = record
    Data : string;
    Favorecido : string;
    Cidade : string;
    Valor : string;
    Verso : string;
    BomPara : string;
    Chancelado : boolean;
    Cruzado : boolean;
  end;

//****************************************************************************//
// M�TODOS DE COMUNICA��O PELA PORTA PARALELA                                 //
//****************************************************************************//
function habilita_paralela(si : PChar) : boolean; far; stdcall external 'PertoChekPar.dll';
function desabilita_paralela : boolean; far; stdcall external 'PertoChekPar.dll';
function transmite(si : PChar) : integer; far; stdcall external 'PertoChekPar.dll';
function recebe(t : integer; bufrx : PChar) : integer; far; stdcall external 'PertoChekPar.dll';
//****************************************************************************//
// M�TODOS DE COMUNICA��O PELA PORTA SERIAL                                   //
//****************************************************************************//
function IniComm(si : PChar) : boolean; far; stdcall external 'pertochekser.dll';
function EndComm : boolean; far; stdcall external 'pertochekser.dll';
function EnvComm(si : PChar) : integer; far; stdcall external 'pertochekser.dll';
function RecComm(t : integer; bufrx : PChar) : integer; far; stdcall external 'pertochekser.dll';
//****************************************************************************//
// M�TODOS GERADOS COM INTUITO DE N�O HAVER RESTRI��ES QUANTO AO TIPO DE      //
// COMUNICA��O                                                                //
//****************************************************************************//
function HabilitaPorta(Porta : string) : boolean;
function DesabilitaPorta(Porta : string) : boolean;
function EnviaDados(Porta,Texto : string) : integer;
function RecebeDados(Porta : string; TimeOut : integer; var Resposta : array of char) : integer;
function EnviaComando(Porta, Texto : string; TimeOut : integer; var Resposta : array of char) : boolean;
//****************************************************************************//
// M�TODOS PARA ENVIO DE DADOS PARA IMPRESSORA PERTO CHECK                    //
//****************************************************************************//
function LeituraCMC7(Porta : string; TimeOut : integer; var Resposta : array of char) : boolean;
function PreencheCheque(Porta : string; TimeOut : integer; var Resposta : array of char; Cheque : TInfoCheque) : boolean;
function RetornaErro : string;

var
  LastError : integer;

implementation

function HabilitaPorta(Porta : string) : boolean;
var
  Envio : array [0..255] of char;
begin
  Result := True;
  if Pos('LPT',UpperCase(Porta)) > 0 then
    begin
      StrPCopy(Envio,Porta);
      if not habilita_paralela(Envio) then
        Result := False;
    end
  else
    if Pos('COM',UpperCase(Porta)) > 0 then
      begin
        StrPCopy(Envio,UpperCase(Porta) + ':4800,N,8,1');
        if not IniComm(Envio) then
          Result := False;
      end;
end;

function DesabilitaPorta(Porta : string) : boolean;
begin
  if Pos('LPT',UpperCase(Porta)) > 0 then
    Result := desabilita_paralela()
  else
    if Pos('COM',UpperCase(Porta)) > 0 then
      Result := EndComm();
end;

function EnviaDados(Porta,Texto : string) : integer;
begin
  Result := 0;
  if Pos('LPT',UpperCase(Porta)) > 0 then
    Result := transmite(PChar(Texto))
  else
    if Pos('COM',UpperCase(Porta)) > 0 then
      Result := EnvComm(PChar(Texto));
  LastError := Result;
end;

function RecebeDados(Porta : string; TimeOut : integer; var Resposta : array of char) : integer;
begin
  Result := 0;
  if Pos('LPT',UpperCase(Porta)) > 0 then
    Result := recebe(TimeOut,Resposta)
  else
    if Pos('COM',UpperCase(Porta)) > 0 then
      Result := RecComm(TimeOut,Resposta);
  LastError := Result;
  if LastError in [20..27] then
    begin
      Application.MessageBox('Detectamos que o cheque est� trancado na impressora, o sistema tentar� destranc�-lo automaticamente! #13 Caso o cheque n�o seja ejetado voc� ter� que remov�-lo manualmente.','Informa', MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONINFORMATION);
      EnviaComando(Porta,'>',TimeOut,Resposta);
    end;
end;

function EnviaComando(Porta,Texto : string; TimeOut : integer; var Resposta : array of char) : boolean;
begin
  Result := True;
  if HabilitaPorta(Porta) then
    begin
      if (EnviaDados(Porta,Texto) > 0) then
        begin
          if RecebeDados(Porta,TimeOut,Resposta) = 0 then
            Result := False;
        end
      else
        Result := False;
    end
  else
    Result := False;
  if not DesabilitaPorta(Porta) then
    Result := False;
end;

function LeituraCMC7(Porta : string; TimeOut : integer; var Resposta : array of char) : boolean;
begin
  Result := EnviaComando(Porta,'P',TimeOut,Resposta);
  Result := EnviaComando(Porta,'>',TimeOut,Resposta);
end;

function PreencheCheque(Porta : string; TimeOut : integer; var Resposta : array of char; Cheque : TInfoCheque) : boolean;
  function Remove(Valor : string) : string;
  begin
    Result := Valor;
    while Pos('.',Result) > 0 do
      Delete(Result,Pos('.',Result),1);
    while Pos(',',Result) > 0 do
      Delete(Result,Pos(',',Result),1);
    while Length(Result) < 12 do
      Result := '0' + Result;
    Result := Result + '000';
  end;
begin
  Result := True;
  if Cheque.Data <> '' then
    Result := EnviaComando(Porta,'!' + Cheque.Data,TimeOut,Resposta);
  if Cheque.Favorecido <> '' then
    Result := EnviaComando(Porta,'%' + Cheque.Favorecido,TimeOut,Resposta);
  if Cheque.Cidade <> '' then
    Result := EnviaComando(Porta,'#' + Cheque.Cidade,TimeOut,Resposta);
  if Cheque.Verso <> '' then
    Result := EnviaComando(Porta,'"' + Cheque.Verso + '�',TimeOut,Resposta);
  if Cheque.BomPara <> '' then
    Result := EnviaComando(Porta,'+BOM PARA: ' + Cheque.BomPara,TimeOut,Resposta);
  if ((not Cheque.Chancelado) and (not Cheque.Cruzado)) then
    Result := EnviaComando(Porta,'$4' + Remove(Cheque.Valor),TimeOut,Resposta)
  else
    if ((not Cheque.Chancelado) and (Cheque.Cruzado)) then
      Result := EnviaComando(Porta,'$8' + Remove(Cheque.Valor),TimeOut,Resposta)
    else
      Result := EnviaComando(Porta,'$1' + Remove(Cheque.Valor),TimeOut,Resposta);
end;

function RetornaErro : string;
begin
  case LastError of
    0 : Result := 'Sucesso na execu��o do comando.';
    1 :	Result := 'Mensagem com dados inv�lidos.';
    2 :	Result := 'Tamanho de mensagem inv�lido.';
    5 :	Result := 'Leitura dos caracteres magn�ticos inv�lida.';
    6 :	Result := 'Problemas no acionamento do motor 1.';
    8 :	Result := 'Problemas no acionamento do motor 2.';
    9 :	Result := 'Banco diferente do solicitado.';
   11 :	Result := 'Sensor 1 obstru�do.';
   12 :	Result := 'Sensor 2 obstru�do.';
   13 :	Result := 'Sensor 4 obstru�do.';
   14 :	Result := 'Erro o posicionamento da cabe�a de impress�o (relativo a S4).';
   15 :	Result := 'Erro o posicionamento na p�s-marca��o.';
   16 :	Result := 'D�gito verificador do cheque n�o confere.';
   17 :	Result := 'Aus�ncia de caracteres magn�ticos ou cheque na posi��o errada.';
   18 :	Result := 'Tempo esgotado.';
   19 :	Result := 'Documento mal inserido.';
   20 : Result := 'Cheque preso durante o alinhamento (S1 e S2 desobstru�dos).';
   21 :	Result := 'Cheque preso durante o alinhamento (S1 obstru�do e S2 desobstru�do).';
   22 :	Result := 'Cheque preso durante o alinhamento (S1 desobstru�do e S2 obstru�do).';
   23 :	Result := 'Cheque preso durante o alinhamento (S1 e S2 obstru�dos).';
   24 :	Result := 'Cheque preso durante o preenchimento (S1 e S2 desobstru�dos).';
   25 :	Result := 'Cheque preso durante o preenchimento (S1 obstru�do e S2 desobstru�do).';
   26 :	Result := 'Cheque preso durante o preenchimento (S1 desobstru�do e S2 obstru�do).';
   27 :	Result := 'Cheque preso durante o preenchimento (S1 e S2 obstru�dos).';
   28 :	Result := 'Caracter inexistente.';
   30 :	Result := 'N�o h� cheques na mem�ria.';
   31 :	Result := 'Lista negra interna cheia.';
   42 :	Result := 'Cheque ausente.';
   43 :	Result := 'Pin pad ou teclado ausente.';
   50 :	Result := 'Erro de transmiss�o.';
   51 :	Result := 'Erro de transmiss�o: Impressora off line, desconectada ou ocupada.';
   52 :	Result := 'Erro no pin pad.';
   60 :	Result := 'Cheque na lista negra.';
   73 :	Result := 'Cheque n�o encontrado na lista negra.';
   74 :	Result := 'Comando cancelado.';
   84 :	Result := 'Arquivo de lay out�s cheio.';
   85 :	Result := 'Lay out inexistente na mem�ria.';
   91 :	Result := 'Leitura de cart�o inv�lida.';
   97 :	Result := 'Cheque na posi��o errada.';
  111 :	Result := 'Pin pad n�o retornou EOT.';
  150 :	Result := 'Pin pad n�o retornou NAK.';
  155 :	Result := 'Pin pad n�o responde.';
  171 :	Result := 'Tempo esgotado na resposta do pin pad.';
  255 :	Result := 'Comando inexistente.';
  end;
end;

end.
