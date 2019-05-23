unit Bematech_MP20_FI_II ;

interface

uses RXCtrls, RxQuery, Forms, DBTables, SysUtils, Dialogs ;

  Function  MandaCupomBematech(strBuffer : string) : string;

  function  AbrirPortaECF_Bematech_MP20_FI_II(Porta : string) : boolean ;
  function  FecharPortaECF_Bematech_MP20_FI_II(Porta : string) : boolean ;
  function  BuscaRetorno_Bematech_MP20_FI_II : string ;
  function  LeituraX_Bematech_MP20_FI_II : boolean;
  procedure Reducao_Z_Bematech_MP20_FI_II ;
  function  AbrirGaveta_Bematech_MP20_FI_II : boolean;
  function  AbrirCupomFiscal_Bematech_MP20_FI_II(Var NroCupom : String) : boolean ;
  function  ImprimeItem_Bematech_MP20_FI_II(Codigo, Descricao, Tributo : String ; Qtde, Valor, Vlrdesco : Double) : boolean ;
  function  CancelaItem_Bematech_MP20_FI_II(Posicao: String) : boolean ;
  function  Envia_FP_Bematech_MP20_FI_II(FP:string) : boolean ;
  function  EfetuaFPCupom_Bematech_MP20_FI_II(FPNum:String;Valor : Double) : boolean ;
  function  IniciaFechamentoCupom_Bematech_MP20_FI_II(AcrescDesc : Double; Tipo : Char) : boolean ;
  function  FecharCupomFiscal_Bematech_MP20_FI_II(TipoAcrescDesc : String; Valor, VlrAcrescDesc, VlrTroco : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery;NomeCli,EnderecoCli,CidadeCli,DocumentoCli, IDCupom, Vendedor, Plano:string) : boolean ;
  function  CancelarCupomFiscal_Bematech_MP20_FI_II : boolean ;
  function  AberturaCNFV_Bematech_MP20_FI_II(FP:string) : boolean ;
  function  LinhaTextoLivre_Bematech_MP20_FI_II(Texto:String) : boolean ;
  // Fechar Cnfv
  function  EmiteCNFNV_Bematech_MP20_FI_II(Identificador, Tipo:string; Valor:Double) : boolean ;
  function  RelatorioGerencial_Bematech_MP20_FI_II(Texto : String) : boolean ;
  function  FechamentoRelatorioGerencial_Bematech_MP20_FI_II(Impressora, Porta : String) : boolean;
  function  Autenticacao_Bematech_MP20_FI_II : boolean ;
  function  StatusImpressora_Bematech_MP20_FI_II() : boolean;
  //* * * * * * * * * * * FUNCOES DLL * * * * * * * * * * *\\
  function IniPortaStr(Porta:string):integer; stdcall; external 'Mp20fi32.dll' ;
  function FormataTX(BUFFER:string):integer; stdcall; external 'Mp20fi32.dll' ;
  function FechaPorta: integer; stdcall; external 'Mp20fi32.dll' ;
  function Status_Mp20FI(var TX,ACKNAK,ST1,ST2 : integer) : integer; stdcall; external 'Mp20fi32.dll';

implementation

uses UnitLibrary, DataModulo, DB;

function  StatusImpressora_Bematech_MP20_FI_II() : boolean;
var
  info : array [1..4] of integer;
begin
  if Status_Mp20Fi(info[1],info[2],info[3],info[4]) = 0 then
    ShowMessage('0')
  else
    ShowMessage('1');
end;

function  RelatorioGerencial_Bematech_MP20_FI_II(Texto : String) : boolean ;
begin
  Result := False;
  if FormataTX(#27'|20|' + Texto + '|'#27) = 0 then
    Result := True;
end;

function  FechamentoRelatorioGerencial_Bematech_MP20_FI_II(Impressora, Porta : String) : boolean;
begin
  Result := False;
  if FormataTX(#27'|21|'#27) = 0 then
    Result := True;
end;

Function MandaCupomBematech(strBuffer : string) : string;
var arq : TextFile;
    i   : integer;
begin
  FormataTX(strBuffer);
  strBuffer := ''; Result := '';
  if FileExists('Status.ret') then
  begin
    AssignFile(arq,'Status.ret');
    Reset(arq);
    While not EOF(arq) do
    begin
      ReadLn(arq,strBuffer);
      Result := Result + strBuffer;
    end;
    Closefile(arq);
  end;
  Result := strBuffer;
end;

Function BuscaRetorno_Bematech_MP20_FI_II : string ;
Var
  Arquivo : TextFile;
  Retorno,
  Linha   : String;
  I       : Integer;
begin
  I       := 0 ;
  Retorno := '' ;
  while ( i < 30000) and (not FileExists('MP20FI.RET')) do
    Inc(i);
  if i < 30000 then
    begin
      AssignFile(Arquivo,'MP20FI.RET');
      Reset(Arquivo);
      while Not EOF(Arquivo) Do
        begin
          ReadLn(Arquivo,Linha);
          Retorno:=Retorno+Trim(Linha);
        end ;
      CloseFile(Arquivo);
      BuscaRetorno_Bematech_MP20_FI_II := Retorno ;
    end
  else
    ShowMessage('Sem Retorno da Impressora!');
end ;

function AbrirPortaECF_Bematech_MP20_FI_II(Porta : string) : boolean ;
begin
  if IniPortaStr(PChar(UpperCase(Porta))) = 0 then
    AbrirPortaECF_Bematech_MP20_FI_II := False
  else
    AbrirPortaECF_Bematech_MP20_FI_II := True ;
end ;

function FecharPortaECF_Bematech_MP20_FI_II ;
begin
  if FechaPorta = 0 then
    FecharPortaECF_Bematech_MP20_FI_II := False
  else
    FecharPortaECF_Bematech_MP20_FI_II := True ;
end ;

function LeituraX_Bematech_MP20_FI_II : boolean;
begin
  Result := False;
  if FormataTX(#27'|6|'#27) = 0 then
    Result := True;
end;

procedure Reducao_Z_Bematech_MP20_FI_II ;
begin
  FormataTX(#27'|5|'#27) ;
end ;

function  AbrirCupomFiscal_Bematech_MP20_FI_II(Var NroCupom : String) : boolean ;
var i : integer ;
    Arq : TextFile ;
begin
  AbrirCupomFiscal_Bematech_MP20_FI_II := false ;

  FormataTX(#27'|0|'#27);
  if FileExists('MP20FI.RET') then
    DeleteFile('MP20FI.RET');
  Application.ProcessMessages ;
  i := 0 ;
  repeat
    FormataTX(#27'|30|'#27);
    Application.ProcessMessages;
    Inc(i);
  until FileExists('MP20FI.RET') or (i > 30000) ;

  if (i > 30000) then
  begin
    Informa('A impressora recusa-se a informar o número do cupom!');
    NroCupom := InputBox('Numero do Cupom','Informe o numero','');
    exit ;
  end;

  AssignFile(Arq,'MP20FI.RET');
  Reset(Arq);
  Read(Arq, NroCupom);
  ReWrite(Arq);
  CloseFile(Arq);

  try
   NroCupom := FormatFloat('000000',StrToFloat(Copy(NroCupom,1,6)));
  except On
    EConvertError Do
      Informa('Problemas na Captura do Numero do Cupom!!');
  end;

  AbrirCupomFiscal_Bematech_MP20_FI_II := true ;
end;

function  ImprimeItem_Bematech_MP20_FI_II(Codigo, Descricao, Tributo : String ; Qtde, Valor, Vlrdesco : Double) : boolean ;
var xValue, Linha : String;
begin
  //  rotina alterado pelo judi
  if Dm.SQLConfigVendaCFVEINROCASASDEC.value = 3 then
  begin
    While length(codigo) < 13 do
      insert(' ',codigo,0);

    xValue :=  IntToStr(Round(Int(Valor))) + Copy(Format('%.3f',[Frac(Valor)]), 3, 3);
    While length(xvalue) < 8 do
      insert('0',xvalue,0);

    Linha:= #27'|56|' + PChar(Copy(Codigo, 1, 13)) +
           '|' + PChar(Format('%-29s',[Copy(Descricao, 1, 29)])) +
           '|' + PChar(Tributo) +
           '|' + Format('%.4d',[Round(Int(Qtde))]) + Copy(Format('%.3f',[Frac(Qtde)]), 3, 3) +
           '|' + xValue +
           '|' + Format('%.6d',[Round(Int(Vlrdesco))]) + Copy(Format('%.2f',[Frac(Vlrdesco)]), 3, 2) + '|'#27;

    if FormataTX(PChar(Linha)) = 0 then
        Result := True
    else
      Result := False;
  end else
  begin
    Linha := #27'|9|' + PChar(Copy(Codigo, 1, 13)) +
             '|' + PChar(Format('%-29s',[Copy(Descricao, 1, 29)])) +
             '|' + PChar(Tributo) +
             '|' + Format('%.4d',[Round(Int(Qtde))]) + Copy(Format('%.3f',[Frac(Qtde)]), 3, 3) +
             '|' + IntToStr(Round(Int(Valor))) + Copy(Format('%.2f',[Frac(Valor)]), 3, 2) +
             '|' + Format('%.6d',[Round(Int(Vlrdesco))]) + Copy(Format('%.2f',[Frac(Vlrdesco)]), 3, 2) + '|'#27;

    if FormataTX(PChar(Linha)) = 0 then
        Result := True
    else
      Result := False;
  end;
end ;

function  FecharCupomFiscal_Bematech_MP20_FI_II(TipoAcrescDesc : String; Valor, VlrAcrescDesc, VlrTroco  : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery;NomeCli,EnderecoCli,CidadeCli,DocumentoCli, IDCupom, Vendedor, Plano:string) : boolean ;
Var
  WSQL : TQuery ;
  MsgFimCupom,
  AcrescDesc : string ;
  TotalVista,
  TotalPrazo : double ;
  I : Integer;
begin
  FecharCupomFiscal_Bematech_MP20_FI_II := false ;

  if not IniciaFechamentoCupom_Bematech_MP20_FI_II(VlrAcrescDesc, TipoAcrescDesc[1]) then
    begin
      FecharCupomFiscal_Bematech_MP20_FI_II := false;
      Exit;
    end;
  //CALCULAR TOTAL VENDA PRAZO
  SQLFPPrazo.First ;
  TotalPrazo := 0 ;
  while not SQLFPPrazo.EOF do
  begin
    TotalPrazo :=  TotalPrazo + SQLFPPrazo.Fieldbyname('VALORVENCTO').AsFloat ;
    SQLFPPrazo.Next ;
  end ;
  //ENVIAR VALORES POR NUMERARIO AVISTA
  SQLFPVista.First;
  if not EnviouNumerariosECF then
    begin
      while not SQLFPVista.EOF do
      begin
        if not EfetuaFPCupom_Bematech_MP20_FI_II(RetornaTotalizadorNumerarioECF(Ecf_ID, SQLFPVista.Fieldbyname('NUMEICOD').AsString),
                                                 SQLFPVista.Fieldbyname('VALORPARC').AsFloat) then
          begin
            FecharCupomFiscal_Bematech_MP20_FI_II := false;
            Exit;
          end;

        TotalVista := TotalVista + SQLFPVista.Fieldbyname('VALORPARC').AsFloat ;
        SQLFPVista.Next ;
      end ;

      if (TotalVista + TotalPrazo) < Valor then
        TotalPrazo := TotalPrazo + (Valor-(TotalVista + TotalPrazo)) ;

      if (TotalVista + TotalPrazo) > Valor then
        TotalPrazo := TotalPrazo - ((TotalVista + TotalPrazo)-Valor) ;

      if TotalPrazo > 0 then
        begin
          if not EfetuaFPCupom_Bematech_MP20_FI_II(RetornaTotalizadorNumerarioECF(Ecf_ID, SQLFPPrazo.Fieldbyname('NUMEICOD').AsString),
                                                   TotalPrazo) then
            begin
              FecharCupomFiscal_Bematech_MP20_FI_II := false;
              Exit;
            end;
        end ;
      EnviouNumerariosECF := True;
    end;

  if ImprimeDadosClienteCupom = 'S' then
    begin
      if dm.SQLEmpresaEMPRCLUCROREAL.Value = 'N' then
        Msg := 'Cup.ID:' + IDCupom +'  Pl:'+PlacaCliente+ '  KM:' + KmCliente + Chr(10) +
               'Vend: '  + copy(Vendedor,1,10) + ' ' +
               'Plano: ' + copy(Plano,1,17) + Chr(10) +
               'Cliente: ' + ConverteAcentos(NomeCli)                     + Chr(10) +
               'DOC: ' + ConverteAcentos(DocumentoCli)                    + Chr(10) +
               'END: ' + ConverteAcentos(Copy(EnderecoCli, 01, 30))       + Chr(10) +
               '     ' + ConverteAcentos(Copy(EnderecoCli, 31, 30))       + Chr(10) +
               'CID: ' + ConverteAcentos(Copy(CidadeCli,   01, 30))       + Chr(10) +
               'Obs: ' + ConverteAcentos(Copy(OBSImpressaoCupom, 01, 30)) + Chr(10) +
               'Doc.emit p/empr.peq.Porte. Nao gera ICMS'
      else
        Msg := 'Cup.ID:' + IDCupom +'  Pl:'+PlacaCliente+ '  KM:' + KmCliente + Chr(10) +
               'Vend: '  + copy(Vendedor,1,10) + ' ' +
               'Plano: ' + copy(Plano,1,17) + Chr(10) +
               'Cliente:' + ConverteAcentos(NomeCli)                + Chr(10) +
               'DOC: ' + ConverteAcentos(DocumentoCli)              + Chr(10) +
               'END: ' + ConverteAcentos(Copy(EnderecoCli, 01, 30)) + Chr(10) +
               'CID: ' + ConverteAcentos(Copy(CidadeCli,   01, 30)) + Chr(10) +
               'Obs: ' + ConverteAcentos(Copy(OBSImpressaoCupom, 01, 30)) ;
    end ;

 if FormataTX(#27'|10|0000|' + Format('%.12d',[Round(Int(Valor))]) +
                             Copy(Format('%.2f',[Frac(Valor)]), 3, 2) +'|A|'+
                             Copy(Msg, 1, 496) + #13#10 + '|' + #27) = 0 then
   FecharCupomFiscal_Bematech_MP20_FI_II := True
 else
   begin
     FecharCupomFiscal_Bematech_MP20_FI_II := False;
     Exit;
   end;

end ;

function IniciaFechamentoCupom_Bematech_MP20_FI_II(AcrescDesc : Double; Tipo : Char) : boolean ;
begin
  if Tipo = 'A' then
   if FormataTX(#27'|32|a|'+Format('%.12d',[Round(Int(AcrescDesc))])+Copy(Format('%.2f',[Frac(AcrescDesc)]),3,2)+'|'#27) = 0 then
     IniciaFechamentoCupom_Bematech_MP20_FI_II := True
   else
     IniciaFechamentoCupom_Bematech_MP20_FI_II := False;
  if Tipo = 'D' then
    if FormataTX(#27'|32|d|'+Format('%.12d',[Round(Int(AcrescDesc))])+Copy(Format('%.2f',[Frac(AcrescDesc)]),3,2)+'|'#27) = 0 then
      IniciaFechamentoCupom_Bematech_MP20_FI_II := True
    else
      IniciaFechamentoCupom_Bematech_MP20_FI_II := False;  
End;

function Envia_FP_Bematech_MP20_FI_II(FP:string) : boolean ;
begin
  if FormataTX(#27'|71|' + Copy(FP, 1, 16) + '|'#27) = 0 then
    Envia_FP_Bematech_MP20_FI_II := True
  else
    Envia_FP_Bematech_MP20_FI_II := False;
end ;

function CancelarCupomFiscal_Bematech_MP20_FI_II : boolean ;
begin
  FormataTX(#27'|14|'#27);
end ;

function EfetuaFPCupom_Bematech_MP20_FI_II(FPNum:String;Valor : Double) : boolean ;
var
  Mens : String;
begin
  Mens := MandaCupomBematech(#27'|72|'+ PChar(Format('%.2d',[StrToInt(FPNum)])) + '|' +
                             PChar(Format('%.12d',[(Round(Int(Valor)))]) +
                             Copy(Format('%.2f',[Frac(Valor)]),3,2)) +
                            '|'#27) ;
end;

function AberturaCNFV_Bematech_MP20_FI_II(FP:string) : boolean;
begin
  Result := False;
  if FormataTX(#27'|66|' + Copy(FP, 1, 16) + '|'#27) = 0 then
    Result := True;
end;

function LinhaTextoLivre_Bematech_MP20_FI_II(Texto:String) : boolean;
begin
  Result := False;
  if FormataTX(#27'|67|' + Copy(Texto, 1, 620) + '|'#27) = 0 then
    Result := True;
end;

function EmiteCNFNV_Bematech_MP20_FI_II(Identificador, Tipo:string; Valor:Double) : boolean ;
var
  Bruto:string;
begin
  case TIPO[1] Of
    'A' : FormataTX(#27'|25|'+Identificador+'|' + Format('%.12d',[Round(Int(Valor))]) +
                                                   Copy(Format('%.2f',[Frac(Valor)]), 3, 2)+ '|' +
                                                   Copy(Identificador, 1, 16)+'|'#27) ;
    'U' : FormataTX(#27'|25|'+Identificador+'|' + Format('%.12d',[Round(Int(Valor))]) +
                                                   Copy(Format('%.2f',[Frac(Valor)]), 3, 2) + '|' +
                                                   Copy(Identificador, 1, 16)+'|'#27) ;
  else
    FormataTX(#27'|25|' + Tipo + '|' +
                          Format('%.12d',[Round(Int(Valor))]) +
                          Copy(Format('%.2f',[Frac(Valor)]), 3, 2) + '|' +
                          Copy(Identificador, 1, 16)+'|'#27) ;
  end;
end ;

function Autenticacao_Bematech_MP20_FI_II : boolean ;
begin
  FormataTX(#27'|16|'#27) ;
end ;

function AbrirGaveta_Bematech_MP20_FI_II : boolean;
begin
  if FormataTX(#27'|22|'+CHR(64)+'|'#27) = 0 then
    AbrirGaveta_Bematech_MP20_FI_II := True
  else
    AbrirGaveta_Bematech_MP20_FI_II := False;
end ;

function CancelaItem_Bematech_MP20_FI_II(Posicao: String) : boolean ;
begin
  try
    FormataTX(#27'|31|' + Format('%.4d',[StrToInt(Posicao)]) + '|'#27);
    CancelaItem_Bematech_MP20_FI_II := True;
  except
    CancelaItem_Bematech_MP20_FI_II := False;
  end;
end ;

end.
