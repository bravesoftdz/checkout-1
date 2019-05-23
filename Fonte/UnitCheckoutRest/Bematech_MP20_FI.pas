unit Bematech_MP20_FI ;

interface

uses RXCtrls, RxQuery, Forms, DBTables, SysUtils, Dialogs ;

  Function  MandaCupomBematech(strBuffer : string) : string;

  function  AbrirPortaECF_Bematech_MP20_FI(Porta : string) : boolean ;
  function  FecharPortaECF_Bematech_MP20_FI(Porta : string) : boolean ;
  function  BuscaRetorno_Bematech_MP20_FI : string ;
  procedure LeituraX_Bematech_MP20_FI ;
  procedure Reducao_Z_Bematech_MP20_FI ;
  function  AbrirGaveta_Bematech_MP20_FI : Boolean;
  function  AbrirCupomFiscal_Bematech_MP20_FI(Var NroCupom : String) : boolean ;
  function  ImprimeItem_Bematech_MP20_FI(Codigo, Descricao, Tributo : String ; Qtde, Valor, Vlrdesco : Double) : boolean ;
  function  CancelaItem_Bematech_MP20_FI(Posicao: String) : boolean ;
  function  Envia_FP_Bematech_MP20_FI(FP:string) : boolean ;
  function  EfetuaFPCupom_Bematech_MP20_FI(FPNum:String;Valor : Double) : boolean ;
  function  IniciaFechamentoCupom_Bematech_MP20_FI(AcrescDesc : Double; Tipo : Char) : boolean ;
  function  FecharCupomFiscal_Bematech_MP20_FI(TipoAcrescDesc : String; Valor, VlrAcrescDesc, VlrTroco : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery;NomeCli,EnderecoCli,CidadeCli, DocumentoCli, IDCupom:string) : boolean ;
  function  CancelarCupomFiscal_Bematech_MP20_FI : boolean ;
  function  AberturaCNFV_Bematech_MP20_FI(FP:string) : boolean ;
  function  LinhaTextoLivre_Bematech_MP20_FI(Texto:String) : boolean ;
  function  EmiteCNFNV_Bematech_MP20_FI(Identificador, Tipo:string; Valor:Double) : boolean ;
  function  Autenticacao_Bematech_MP20_FI : boolean ;
  //* * * * * * * * * * * FUNCOES DLL * * * * * * * * * * *\\
  function IniPortaStr(Porta:string):integer; stdcall; external 'Mp20fi32.dll' ;
  function FormataTX(BUFFER:string):integer; stdcall; external 'Mp20fi32.dll' ;
  function FechaPorta: integer; stdcall; external 'Mp20fi32.dll' ;

implementation

uses UnitLibrary, DataModulo, DB;

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

Function BuscaRetorno_Bematech_MP20_FI : string ;
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
      BuscaRetorno_Bematech_MP20_FI := Retorno ;
    end
  else
    ShowMessage('Sem Retorno da Impressora!');
end ;

function AbrirPortaECF_Bematech_MP20_FI(Porta : string) : boolean ;
begin
  if IniPortaStr(PChar(Porta)) = 0 then
    AbrirPortaECF_Bematech_MP20_FI := False
  else
    AbrirPortaECF_Bematech_MP20_FI := True ;
end ;

function FecharPortaECF_Bematech_MP20_FI ;
begin
  if FechaPorta = 0 then
    FecharPortaECF_Bematech_MP20_FI := False
  else
    FecharPortaECF_Bematech_MP20_FI := True ;
end ;

procedure LeituraX_Bematech_MP20_FI ;
begin
  FormataTX(#27'|6|'#27) ;
end ;

procedure Reducao_Z_Bematech_MP20_FI ;
begin
  FormataTX(#27'|5|'#27) ;
end ;

function  AbrirCupomFiscal_Bematech_MP20_FI(Var NroCupom : String) : boolean ;
var i : integer ;
    Arq : TextFile ;
begin
  AbrirCupomFiscal_Bematech_MP20_FI := false ;

  FormataTX(#27'|0|'#27);
  If FileExists('MP20FI.RET') then
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

  AbrirCupomFiscal_Bematech_MP20_FI := true ;
end;

function  ImprimeItem_Bematech_MP20_FI(Codigo, Descricao, Tributo : String ; Qtde, Valor, Vlrdesco : Double) : boolean ;
var
  Linha : string ;
begin
  Linha := #27'|9|' + PChar(Copy(Codigo, 1, 13)) + '|' +
                      PChar(Format('%-29s',[Copy(Descricao, 1, 29)])) + '|' +
                      PChar(Tributo) + '|' +
                      Format('%.4d',[Round(Int(Qtde))]) + Copy(Format('%.3f',[Frac(Qtde)]), 3, 3) + '|' +
                      IntToStr(Round(Int(Valor))) + Copy(Format('%.2f',[Frac(Valor)]), 3, 2) + '|' +
                      Format('%.6d',[Round(Int(Vlrdesco))]) + Copy(Format('%.2f',[Frac(Vlrdesco)]), 3, 2) + '|'#27 ;

  if FormataTX(PChar(Linha)) = 0 then
    ImprimeItem_Bematech_MP20_FI := True
  else
    ImprimeItem_Bematech_MP20_FI := False;
end ;

function  FecharCupomFiscal_Bematech_MP20_FI(TipoAcrescDesc : String; Valor, VlrAcrescDesc, VlrTroco  : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery;NomeCli,EnderecoCli,CidadeCli,DocumentoCli, IDCupom:string) : boolean ;
Var
  WSQL : TQuery ;
  MsgFimCupom,
  AcrescDesc : string ;
  TotalVista,
  TotalPrazo : double ;
  i : Integer;
begin
  FecharCupomFiscal_Bematech_MP20_FI := false ;

{  WSQL := TQuery.Create(DM);
  WSQL.DatabaseName := 'DB';
  WSQL.Close ;
  WSQL.SQL.Clear ;
  WSQL.SQL.Add('select * from NUMERARIO') ;
  WSQL.SQL.Add('order by NUMEICOD') ;
  WSQL.Open ;
  WSQL.First ;
  while not WSQL.EOF do
  begin
    Envia_FP_Bematech_MP20_FI(WSQL.FieldByName('NUMEA30DESCR').AsString) ;
    WSQL.Next ;
  end ;}

  IniciaFechamentoCupom_Bematech_MP20_FI(VlrAcrescDesc, TipoAcrescDesc[1]) ;

  //CALCULAR TOTAL VENDA PRAZO
  SQLFPPrazo.First ;
  TotalPrazo := 0 ;
  while not SQLFPPrazo.EOF do
  begin
    TotalPrazo :=  TotalPrazo + SQLFPPrazo.Fieldbyname('VALORVENCTO').AsFloat ;
    SQLFPPrazo.Next;
  end ;
  //ENVIAR VALORES POR NUMERARIO AVISTA
  SQLFPVista.First ;
  I := SQLFPVista.RecordCount;
  while not SQLFPVista.EOF do
  begin
    if I = 1 then
      EfetuaFPCupom_Bematech_MP20_FI(RetornaNumerario(SQLFPVista.Fieldbyname('NUMEICOD').AsString),
                                     SQLFPVista.Fieldbyname('VALORPARC').AsFloat + VlrTroco)
    else
      EfetuaFPCupom_Bematech_MP20_FI(RetornaNumerario(SQLFPVista.Fieldbyname('NUMEICOD').AsString),
                                     SQLFPVista.Fieldbyname('VALORPARC').AsFloat);


    TotalVista := TotalVista + SQLFPVista.Fieldbyname('VALORPARC').AsFloat;
    SQLFPVista.Next;
    dec(I);
  end;

  if (TotalVista + TotalPrazo) < Valor then
    TotalPrazo := TotalPrazo + (Valor-(TotalVista + TotalPrazo)) ;

  if (TotalVista + TotalPrazo) > Valor then
    TotalPrazo := TotalPrazo - ((TotalVista + TotalPrazo)-Valor) ;

  if TotalPrazo > 0 then
    begin
      EfetuaFPCupom_Bematech_MP20_FI(RetornaNumerario(SQLFPPrazo.Fieldbyname('NUMEICOD').AsString),
                                        TotalPrazo) ;
    end ;


  MSG := '------------------------------------------------';
  if (Application.FindComponent('FormTelaFechamentoVenda') <> nil) and
     (DM.SQLTerminalAtivoTERMCIMPRDADINTCUP.Value <> 'N') then
    begin
       Msg := 'Cup.ID:' + IDCupom +'  Pl:'+PlacaCliente+ '  KM:'+KmCliente + Chr(10) +
                 'VEND: '  + copy(ConverteAcentos((Application.FindComponent('FormTelaFechamentoVenda').FindComponent('LblNomeVendedor') as TRxLabel).Caption),1,10)
                           + ' ' +
                 'PLANO: ' + copy(ConverteAcentos((Application.FindComponent('FormTelaFechamentoVenda').FindComponent('LblNomePlano') as TRxLabel).Caption),1,17) + Chr(10) +
                 'CLIENTE...: ' + ConverteAcentos(NomeCli)            + Chr(10) +
                 'DOC: ' + ConverteAcentos(DocumentoCli)              + Chr(10) +
                 'END: ' + ConverteAcentos(Copy(EnderecoCli, 01, 35)) + Chr(10) +
                 'CID: ' + ConverteAcentos(Copy(CidadeCli,   01, 35)) + Chr(10) +
                 'Obs: ' + ConverteAcentos(Copy(OBSImpressaoCupom,01,35));
    end ;

  if  not SQLFPPrazo.IsEmpty then
    Msg := Msg + Chr(10) + 'MERCADORIA RECEBIDA ASS:........................';

  FormataTX(#27'|34|'+PCHAR(MSG)+'|'#13#27);
{  FormataTX(#27'|10|0000|' + Format('%.12d',[Round(Int(Valor))]) +
                             Copy(Format('%.2f',[Frac(Valor)]), 3, 2) +'|A|'+
                             Copy(Msg, 1, 496) + #13#10+'|' + #27) ;}

  FecharCupomFiscal_Bematech_MP20_FI := true ;
 end ;

function IniciaFechamentoCupom_Bematech_MP20_FI(AcrescDesc : Double; Tipo : Char) : boolean ;
begin
  if Tipo = 'A' then
    FormataTX(#27'|32|a|'+Format('%.12d',[Round(Int(AcrescDesc))])+Copy(Format('%.2f',[Frac(AcrescDesc)]),3,2)+'|'#27) ;

  if Tipo = 'D' then
    FormataTX(#27'|32|d|'+Format('%.12d',[Round(Int(AcrescDesc))])+Copy(Format('%.2f',[Frac(AcrescDesc)]),3,2)+'|'#27) ;
End;

function Envia_FP_Bematech_MP20_FI(FP:string) : boolean ;
begin
  FormataTX(#27'|71|' + Copy(FP, 1, 16) + '|'#27);
end ;

function CancelarCupomFiscal_Bematech_MP20_FI : boolean ;
begin
  FormataTX(#27'|14|'#27);
end ;

function EfetuaFPCupom_Bematech_MP20_FI(FPNum:String;Valor : Double) : boolean ;
var
  Mens : String;
begin
  FormataTX(#27'|33|'+PCHAR(Format('%-22s',[FPNum]))+'|'+IntToStr(Round(Int(VALOR)))+Copy(Format('%.2f',[Frac(VALOR)]),3,2)+'|'#27);
{  Mens := MandaCupomBematech(#27'|72|' +
                             PChar(Format('%.2d',[StrToInt(FPNum)])) + '|' +
                             PChar(Format('%.12d',[(Round(Int(Valor)))]) +
                             Copy(Format('%.2f',[Frac(Valor)]),3,2)) +
                             '|'#27) ;}
end;

function AberturaCNFV_Bematech_MP20_FI(FP:string) : boolean ;
begin
  FormataTX(#27'|66|' + Copy(FP, 1, 16) + '|'#27);
end ;

function LinhaTextoLivre_Bematech_MP20_FI(Texto:String) : boolean ;
begin
  FormataTX(#27'|67|' + Copy(Texto, 1, 620) + '|'#27);
end ;

function EmiteCNFNV_Bematech_MP20_FI(Identificador, Tipo:string; Valor:Double) : boolean ;
var
  Bruto:string;
begin
  case TIPO[1] Of
    'A' : FormataTX(#27'|25|SA|'+IntToStr(Round(Int(VALOR)))+Copy(Format('%.2f',[Frac(VALOR)]),3,2)+'|'#27);
    'U' : FormataTX(#27'|25|SU|'+IntToStr(Round(Int(VALOR)))+Copy(Format('%.2f',[Frac(VALOR)]),3,2)+'|'#27);

  else
    FormataTX(#27'|25|'+Tipo+'|'+IntToStr(Round(Int(VALOR)))+Copy(Format('%.2f',[Frac(VALOR)]),3,2)+'|'#27);
  end;
end ;

function Autenticacao_Bematech_MP20_FI : boolean ;
begin
  FormataTX(#27'|16|'#27) ;
end ;

function AbrirGaveta_Bematech_MP20_FI : Boolean;
begin
  if FormataTX(#27'|22|'+CHR(64)+'|'#27) = 0 then
    AbrirGaveta_Bematech_MP20_FI := True
  else
    AbrirGaveta_Bematech_MP20_FI := False;
end ;

function CancelaItem_Bematech_MP20_FI(Posicao: String) : boolean ;
begin
  try
    FormataTX(#27'|31|' + Format('%.4d',[StrToInt(Posicao)]) + '|'#27);
    CancelaItem_Bematech_MP20_FI := True;
  except
    CancelaItem_Bematech_MP20_FI := False;
  end;  
end ;

end.
