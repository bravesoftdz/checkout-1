unit CartaoCredito;

interface

uses
  Windows, SysUtils, Forms, Dialogs, Controls, Classes, ECFCheckout;

type
  TInfoRetorno = record
    ValorTotal : string; {003-000}
    Moeda : string; {004-000}
    CMC7 : string; {005-000}
    TipoPessoa : string; {006-000}
    DocPessoa : string; {007-000}
    DataCheque : string; {008-000}
    StatusTransacao : string; {009-000}
    NomeRede : string; {010-000}
    TipoTransacao : string; {011-000}
    NroTransacao : string; {012-000}
    TimeStampHost : string; {015-000}
    DataComprovante : string; {022-000}
    HoraComprovante : string; {023-000}
    NroTransacaoCancelada : string; {025-000}
    TimeStampTransacaoCancelada : string; {026-000}
    Finalizacao : string; {027-000}
    QtdeLinhas : integer; {028-000}
    RetornoOperador : string; {030-000}
    Banco : string; {033-000}
    Agencia : string; {034-000}
    ContaCorrente : string; {036-000}
    Print : TStrings; {Obt�m os resultados a serem impressos na ECF}
    TransacaoAutorizada : boolean; {Informa se a transa��o foi efetuada}
  end;

  TInfoImpressao = record
    ECFAtual : string;
    PortaECFAtual : string;
    TotNumECFImp : string;
    Ecf_Cnfv : string;
    Ecf_ID : string;
    NroCupomFiscal : string;
    DescricaoNumerario : string;
    ValorImp : double;
  end;
  TInfoOperacaoProvedor = record
    Administrativa  : Boolean;
    ConsultaCheque  : Boolean;
    PagamentoContas : Boolean;
    ValorOperacao   : Double;
  end;

  function AdjustPath(Path : string) : string;
  function DeleteText(Path : string) : boolean;
  function Ativo() : boolean;
  function LiberaCartao(Identificador, NroDocumento : string; ValorTotal : double) : TInfoRetorno;
  function FuncaoAdministrativa() : TInfoRetorno;
  function Confirma(NomeRede, NroTransacao, Finalizacao : string; Confirma : boolean) : TInfoRetorno;
  function ImprimeRetorno(Retorno : TInfoRetorno; InfoImpressora : TInfoImpressao; NroVias : integer; RePrint : boolean) : boolean;
  function TrataRetorno(Path,NroRetorno : string) : TInfoRetorno;

  procedure Delay(Seconds : integer);

var
  SendDirectory, ReceiveDirectory : string;
  Send, Receive : TextFile;
  Info : array of string;
  TipoOperacao : TInfoOperacaoProvedor;
implementation

uses WaitWindow, UnitLibrary, WindowsLibrary, DataModulo;

//****************************************************************************//
// M�TODO QUE VERIFICA E AJUSTA O CAMINHO PASSADO PARA N�O HAVER PROBLEMA DE  //
// DIRET�RIOS INV�LIDOS                                                       //
//****************************************************************************//
function AdjustPath(Path : string) : string;
begin
  Result := Path;
  if Result[Length(Result)] <> '\' then
    Result := Result + '\';
end;

//****************************************************************************//
// M�TODO QUE VERIFICA A EXIST�NCIA DO ARQUIVO PASSADO COMO PAR�MENTRO E      //
// APAGA-O POSTERIORMENTE                                                     //
//****************************************************************************//
function DeleteText(Path : string) : boolean;
begin
  Result := False;
  if FileExists(Path) then
    begin
      try
        DeleteFile(Path);
        Result := True;
      except
        Application.ProcessMessages;
      end;
    end;
end;

//****************************************************************************//
// M�TODO QUE PREPARA E CRIA UM ARQUIVO PARA POSTERIOR EDI��O                 //
//****************************************************************************//
procedure PrepareText(var FileText : TextFile; Text : string);
begin
  AssignFile(FileText,Text);
  Rewrite(FileText);
  Reset(FileText);
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
// M�TODO QUE AGUARDA O TEMPO PASSADO POR PAR�METRO EM SEGUNDOS. FUNCIONA COMO//
// O SLEEP, MAS COM A VANTAGEM DE N�O TRANCAR A APLICA��O                     //
//****************************************************************************//
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

//****************************************************************************//
// M�TODO QUE TRATA TODOS OS RETORNOS DO GERENCIADOR PADR�O                   //
//****************************************************************************//
function TrataRetorno(Path,NroRetorno : string) : TInfoRetorno;
  function TrataString(Text : string) : string;
  begin
    Result := Text;
    while pos('"',Result) > 0 do
      Delete(Result,pos('"',Result),1);
  end;
var
  Return : string;
  Text : TextFile;
begin
  Result.Print := TStringList.Create;
  AssignFile(Text,Path);
  Reset(Text);
   while not Eof(Text) do
    begin
      Readln(Text,Return);
      case StrToInt(Copy(Return,1,3)) of
         1 : if not (Trim(Copy(Return,10,Length(Return) - 9)) = NroRetorno) then
               begin
                 Application.MessageBox('Arquivo desconsiderado! Identificador recebido, diferente do enviado.','Aten��o',MB_OK + MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_ICONINFORMATION);
                 Break;
               end;
         3 : Result.ValorTotal := Trim(Copy(Return,10,Length(Return) - 9));
         4 : Result.Moeda := Trim(Copy(Return,10,Length(Return) - 9));
         5 : Result.CMC7 := Trim(Copy(Return,10,Length(Return) - 9));
         6 : Result.TipoPessoa := Trim(Copy(Return,10,Length(Return) - 9));
         7 : Result.DocPessoa := Trim(Copy(Return,10,Length(Return) - 9));
         8 : Result.DataCheque := Trim(Copy(Return,10,Length(Return) - 9));
         9 : begin
               Result.StatusTransacao := Trim(Copy(Return,10,Length(Return) - 9));
               Result.TransacaoAutorizada := False;
               if Result.StatusTransacao = '0' then
                 Result.TransacaoAutorizada := True;
             end;
        10 : Result.NomeRede := Trim(Copy(Return,10,Length(Return) - 9));
        11 : Result.TipoTransacao := Trim(Copy(Return,10,Length(Return) - 9));
        12 : Result.NroTransacao := Trim(Copy(Return,10,Length(Return) - 9));
        15 : Result.TimeStampHost := Trim(Copy(Return,10,Length(Return) - 9));
        22 : Result.DataComprovante := Trim(Copy(Return,10,Length(Return) - 9));
        23 : Result.HoraComprovante := Trim(Copy(Return,10,Length(Return) - 9));
        25 : Result.NroTransacaoCancelada := Trim(Copy(Return,10,Length(Return) - 9));
        26 : Result.TimeStampTransacaoCancelada := Trim(Copy(Return,10,Length(Return) - 9));
        27 : Result.Finalizacao := Trim(Copy(Return,10,Length(Return) - 9));
        28 : Result.QtdeLinhas := StrToInt(Trim(Copy(Return,10,Length(Return) - 9)));
        29 : Result.Print.Add(TrataString(Trim(Copy(Return,10,Length(Return) - 9))));
        30 : Result.RetornoOperador := Trim(Copy(Return,10,Length(Return) - 9));
        31 : Application.MessageBox(PChar(Trim(Copy(Return,10,Length(Return) - 9))),'Aten��o',MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONINFORMATION);
        33 : Result.Banco := Trim(Copy(Return,10,Length(Return) - 9));
        34 : Result.Agencia := Trim(Copy(Return,10,Length(Return) - 9));
        36 : Result.ContaCorrente := Trim(Copy(Return,10,Length(Return) - 9));
      end;
    end;
  CloseFile(Text);
  if Result.StatusTransacao = 'FF' then
    begin
      DeleteText(AdjustPath(SendDirectory) + 'IntPos.001');
      DeleteText(AdjustPath(ReceiveDirectory) + 'IntPos.001');
      DeleteText(AdjustPath(ReceiveDirectory) + 'IntPos.sts');
    end;
end;

//****************************************************************************//
// COMO QUASE TODAS AS ROTINAS NECESSITAVAM DE MESMOS PROCESSOS FOI CRIADA    //
// ESTE M�TODO                                                                //
//****************************************************************************//
function TransacaoPadrao(Info : array of string; Retorno : boolean) : TInfoRetorno;
var
  I : Integer;
begin
  if DirectoryExists(AdjustPath(SendDirectory)) then
    begin
      DeleteText(AdjustPath(SendDirectory) + 'IntPos.001');
      DeleteText(AdjustPath(SendDirectory) + 'IntPos.tmp');
      PrepareText(Send,AdjustPath(SendDirectory) + 'IntPos.tmp');
      for I := 0 to Length(Info) - 1 do
        WriteText(Send,Info[I]);
      Application.ProcessMessages;
      Rename(Send,AdjustPath(SendDirectory) + 'IntPos.001');
      if Retorno then
        begin
          while not FileExists(AdjustPath(ReceiveDirectory) + 'IntPos.001') do
            Application.ProcessMessages;
          Result := TrataRetorno(AdjustPath(ReceiveDirectory) + 'IntPos.001','1');
        end
      else
        Delay(3);
      if not (Result.QtdeLinhas > 0) then
        begin
          DeleteText(AdjustPath(ReceiveDirectory) + 'IntPos.sts');
          DeleteText(AdjustPath(ReceiveDirectory) + 'IntPos.001');
        end;
    end
  else
    Application.MessageBox('O diret�rio informado � inexistente! Opera��o Cancelada!','Aten��o',MB_OK + MB_ICONERROR + MB_SETFOREGROUND + MB_SYSTEMMODAL);
end;

//****************************************************************************//
// M�TODO QUE VERIFICA SE O GERENCIADOR PADR�O EST� ATIVO                     //
//****************************************************************************//
function Ativo() : boolean;
var
  Init : TTime;
  Other, Second : Word;
begin
  Result := False;
  if (DirectoryExists(AdjustPath(SendDirectory)) and
      DirectoryExists(AdjustPath(ReceiveDirectory))) then
    begin
      DeleteText(AdjustPath(SendDirectory) + 'IntPos.001');
      DeleteText(AdjustPath(SendDirectory) + 'IntPos.tmp');
      PrepareText(Send,AdjustPath(SendDirectory) + 'IntPos.tmp');
      WriteText(Send,'000-000 = ATV');
      WriteText(Send,'001-000 = 1');
      WriteText(Send,'999-999 = 0');
      Application.ProcessMessages;
      Rename(Send,AdjustPath(SendDirectory) + 'IntPos.001');
      Init := Now;
      repeat
        DecodeTime(Now - Init,Other,Other,Second,Other);
        if FileExists(AdjustPath(ReceiveDirectory) + 'IntPos.Sts') then
          begin
            Result := True;
            DeleteFile(AdjustPath(ReceiveDirectory) + 'IntPos.Sts');
            Second := 8;
          end;
      until (Second > 6);
    end
  else
    Application.MessageBox('O diret�rio informado � inexistente! Opera��o Cancelada!','Aten��o',MB_OK + MB_ICONERROR + MB_SETFOREGROUND + MB_SYSTEMMODAL);
end;

//****************************************************************************//
// M�TODO QUE EFETUA A LIBERA��O DO CART�O OU CHEQUE PARA CR�DITO OU D�BITO   //
//****************************************************************************//
function LiberaCartao(Identificador, NroDocumento : string; ValorTotal : double) : TInfoRetorno;
  function TrataValor(Valor : double) : string;
  var
    Temp : string;
  begin
    Result := FormatFloat('#,##0.00',Valor);
    Temp := Copy(Result,Pos(',',Result) + 1,Length(Result) - Pos(',',Result));
    if Length(Temp) < 2 then
      Result := Result + '0';
    while Pos('.',Result) > 0 do
      Delete(Result,Pos('.',Result),1);
    while Pos(',',Result) > 0 do
      Delete(Result,Pos(',',Result),1);
  end;
begin
  SetLength(Info,5);
  Info[0] := '000-000 = ' + UpperCase(Identificador);
  Info[1] := '001-000 = 1';
  Info[2] := '002-000 = ' + NroDocumento;
  Info[3] := '003-000 = ' + TrataValor(ValorTotal);
  Info[4] := '999-999 = 0';
  Result := TransacaoPadrao(Info,True);
end;

//****************************************************************************//
// M�TODO QUE ACIONA AS FUN��ES ADMINISTRATIVAS DO GERENCIADOR PADR�O         //
//****************************************************************************//
function FuncaoAdministrativa() : TInfoRetorno;
begin
  SetLength(Info,3);
  Info[0] := '000-000 = ADM';
  Info[1] := '001-000 = 1';
  Info[2] := '999-999 = 0';
  Result := TransacaoPadrao(Info,True);
end;

//****************************************************************************//
// M�TODO QUE EFETUA A CONFIRMA��O OU N�O DE VENDA E IMPRESS�O DO CUPOM       //
//****************************************************************************//
function Confirma(NomeRede, NroTransacao, Finalizacao : string; Confirma : boolean) : TInfoRetorno;
begin
  SetLength(Info,6);
  if Confirma then
    Info[0] := '000-000 = CNF'
  else
    Info[0] := '000-000 = NCN';
  Info[1] := '001-000 = 1';
  Info[2] := '999-999 = 0';
  Info[3] := '010-000 = ' + NomeRede;
  Info[4] := '012-000 = ' + NroTransacao;
  Info[5] := '027-000 = ' + Finalizacao;
  Result := TransacaoPadrao(Info,False);
end;

//****************************************************************************//
// M�TODO QUE EFETUA A IMPRESS�O E CONFIRMA��O OU N�O DE VENDA E IMPRESS�O DO //
// CUPOM                                                                      //
//****************************************************************************//
function ImprimeRetorno(Retorno : TInfoRetorno; InfoImpressora : TInfoImpressao; NroVias : integer; RePrint : boolean) : boolean;
var
  I, Linhas : integer;
  Texto, TextoTotal, Index : Integer;
  NoBreak : TextFile;
  X : boolean;
  Msg : String;
  NumEcf : Char;
begin
  I := 0;
  X := RePrint;
  Result := False;
  Application.Restore;
  if Retorno.QtdeLinhas > 0 then
    begin
      if Retorno.RetornoOperador <> '' then
        MakeWindowMessage(Retorno.RetornoOperador)
      else
        if RePrint then
          MakeWindowMessage('Aguarde enquanto est� sendo reimpresso o comprovante TEF!');
      DeleteText(ExtractFilePath(Application.ExeName) + 'NoBreak.txt');
      AssignFile(NoBreak,ExtractFilePath(Application.ExeName) + 'NoBreak.txt');
      Rewrite(NoBreak);
      Writeln(NoBreak,Retorno.Print.Text);
      CloseFile(NoBreak);
      FileCopy(Dm.PathAplicacao + 'intpos.001',ReceiveDirectory + 'intpos.001');
      while I < NroVias do
        begin
          repeat
            Delay(1);
            if not X then
              begin
                Result := AbrirCNFV(InfoImpressora.ECFAtual,
                                    InfoImpressora.PortaECFAtual,
                                    InfoImpressora.TotNumECFImp,
                                    InfoImpressora.Ecf_Cnfv[1],
                                    InfoImpressora.Ecf_ID,
                                    InfoImpressora.NroCupomFiscal,
                                    InfoImpressora.DescricaoNumerario,
                                    InfoImpressora.ValorImp);
              end
            else
              begin
                TextoTotal := Length(Retorno.Print.Text);
                Texto := 618;
                Index := 0; 
                while Index < TextoTotal do
                  begin
                    Result := RelatorioGerencial(InfoImpressora.ECFAtual,
                                                 InfoImpressora.PortaECFAtual,
                                                 Trim(Copy(Retorno.Print.Text,Index + 1,Texto)));
                    if ((TextoTotal - Index) < 0) or ((TextoTotal - Index) < 618) then
                      Texto := (TextoTotal - Index)
                    else
                      Texto := 618;
                    Index := Index + Texto;  
                  end;
              end;
            Delay(1);
            if not X then
              for Linhas := 0 to Retorno.Print.Count - 1 do
                begin
                  // VER SE � NECESSARIO COLOCAR UMA OBS PRA INFORMAR QUE � UMA REIMPRESSAO DO COMPROVANTE
                  if not Result then
                    begin
                      LinhaTextoLivre(InfoImpressora.ECFAtual,InfoImpressora.PortaECFAtual,
                                      'REIMPRESSAO DE COMPROVANTE' + Chr(10));
                    end;
                  Result := LinhaTextoLivre(InfoImpressora.ECFAtual,InfoImpressora.PortaECFAtual,
                                            Retorno.Print.Strings[Linhas] + Chr(10));
                  if not Result then
                    Break;
                end;
            if not Result then
              if Application.MessageBox('A impressora n�o responde. Poss�veis problemas:' + #13 + #13 +
                                        'A impressora pode estar desligada!' + #13 +
                                        'Os cabos est�o mal conectados ou com defeito!' + #13 +
                                        'A impressora pode estar sem papel!' + #13 +
                                        'A impressora n�o est� preparada para imprimir!' + #13 +
                                        'Se n�o for nenhum dos itens acima contate seu revendedor!' + #13 +
                                        'Deseja tentar novamente?','Aten��o',MB_YESNO + MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_ICONQUESTION) = ID_YES then
                begin
                  Result := True;
                  if Reprint then
                    begin
                      X := True;
                    end
                  else
                    X := False;
                  I := -1;
                  Retorno.Print.Strings[0];
                end
              else
                begin
                  if not RePrint then
                    begin
                      Confirma(Retorno.NomeRede,Retorno.NroTransacao,Retorno.Finalizacao,False);
                      Msg := 'A transa��o de Transfer�ncia Eletr�nica de Fundos(TEF) foi cancelada!' + #13 + #13 +
                             'Rede --> ' + Retorno.NomeRede + #13 +
                             'Documento(NSU) --> ' + Retorno.NroTransacao + #13;
                      if Retorno.ValorTotal <> ' ' then
                        Msg := Msg + 'Valor --> ' + Retorno.ValorTotal;
                      Application.MessageBox(PChar(Msg),'Aten��o',MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONINFORMATION);
                    end
                  else
                    Application.MessageBox('N�o foi poss�vel efetuar a reimpress�o do comprovante!' + #13 + #13 +
                                           'Poss�veis problemas:' + #13 + #13 +
                                           'A impressora pode estar desligada!' + #13 +
                                           'Os cabos est�o mal conectados ou com defeito!' + #13 +
                                           'A impressora pode estar sem papel!' + #13 +
                                           'A impressora n�o est� preparada para imprimir!' + #13 +
                                           'Se n�o for nenhum dos itens acima contate seu revendedor!' + #13 +
                                           'Voc� poder� tentar novamente ou cancelar a venda atrav�s de uma fun��o administrativa!' + #13,
                                           'Aten��o',MB_OK + MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_ICONINFORMATION);
                  Result := False;
                  I := NroVias;
                  Confirma(Retorno.NomeRede,Retorno.NroTransacao,Retorno.Finalizacao,False);
                  DeleteText(ExtractFilePath(Application.ExeName) + 'NoBreak.txt');
                  Break;
                end;
            Delay(3);
            if ((I + 1) = NroVias) then
              begin
                if not X then
                  Result := FecharCNFV(InfoImpressora.ECFAtual,InfoImpressora.PortaECFAtual)
                else
                  Result := FechamentoRelatorioGerencial(InfoImpressora.ECFAtual,InfoImpressora.PortaECFAtual);
              end;
          until Result;
          if Result then
            inc(I)
          else
            Break;
        end;
      Delay(5); 
      if Result then
        begin
          Confirma(Retorno.NomeRede,Retorno.NroTransacao,Retorno.Finalizacao,True);
          DeleteText(ExtractFilePath(Application.ExeName) + 'NoBreak.txt');
        end;
      if ((Retorno.RetornoOperador <> '') or
          (RePrint)) then
        DestroyWindow();
    end
  else
    begin
      if Retorno.RetornoOperador <> '' then
        Application.MessageBox(PChar(Retorno.RetornoOperador),'Aten��o',MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONINFORMATION);
      if Retorno.NomeRede = 'BANRISUL' then
        begin
          if Retorno.TransacaoAutorizada then
            Confirma(Retorno.NomeRede,Retorno.NroTransacao,Retorno.Finalizacao,True)
          else
            Confirma(Retorno.NomeRede,Retorno.NroTransacao,Retorno.Finalizacao,False);
        end;
    end;
    DeleteText(Dm.PathAplicacao + 'intpos.001');
end;

end.
