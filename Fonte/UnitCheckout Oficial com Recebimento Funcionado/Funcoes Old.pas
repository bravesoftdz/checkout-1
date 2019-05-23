unit Funcoes;

interface

uses Variants, MemTable, Menus, Stdctrls, Classes, Windows, Forms,
     ECFCheckout, DBTables, Controls, Dialogs, DB, JPeg, Sysutils, DBCtrls ;

const
  Enter        : Word    = 13 ;
  ScreenWidth  : Longint = 800 ;
  ScreenHeight : Longint = 600 ;

var
  WBookmark         : TBookmark ;
  MoviCaixConcluido,
  DelContrLista,
  RetornoConsulta   : boolean ;
  VendedorAtual,
  NumerarioAtual,
  UltimoCodigo,
  TerminalAtual,
  CodiTeleEntrega,
  TermPVImp,
  CodPVImp,
  NumItem           : Integer  ;
  CodiProduto,
  CodiCli,
  CodigoProduto,
  ClienteAtual,
  TerminalModo,
  UsuarioAtual,
  UsuarioAtualNome,
  TerminalAtualNome,
  EmpresaPadrao,
  Ecf_ID,
  Ecf_CNFV,
  Ecf_CNFNV,
  ECFAtual,
  PortaECFAtual,
  CamImprMatr,
  NomeLogo,
  Versao,
  OrigemPedidoFechamento,
  BotDef,
  DescrLivreProd,
  ObservItem,
  WhoCallDiversos,
  TipoDescItem,
  TipoPadrao,
  NumerarioVistaDescr,
  ClienteVenda,
  ClienteRecto,
  EstadoFechVendaAnt,
  EstadoFechVenda,
  ProdutoCodigoRet,
  ClienteCodigoRet,
  PedidosImportados,
  NroCupomFiscal,
  TerminalAtualData : string ;
  VlrLivreProd      : Double ;
  LogTotaliz        : TextFile ;
  VendedorVenda,
  PlanoVenda,
  NumerarioVista,
  NumerarioPrazo    : integer ;
  //VARIAVEIS DE RETORNO DO CODIGO PRIMARIO DAS TELAS

function  LocateByDisplayLabel(DataSet:TDataSet;DisplayLabel:String):Integer ;
procedure Informa(Texto:string) ;
function  Pergunta(BotaoDefault, Texto:string) : boolean ;
procedure CriaForm(NomeForm:string; ObjForm : TFormClass) ;
procedure IncluirTelaLista ;
procedure ExcluirTelaLista(NomeTela : string) ;
Function  DigitVerifEAN(Cod:string) : string ;
procedure DebugMsg(Msg : string) ;
function  DelUltVirg(Msg : string) : string ;
function  ValorCampo(Campo : TField) : Variant ;
function  ConvFloatToStr(Numero : Double) : string ;
function  ConvFloatToStrECF(Numero : Double; Tam : integer) : string ;
function  ConvProdCod(Numero : string) : string ;
function  UltiDiaMes(Mes, Ano : string) : integer ;
procedure GravaMovimentoCaixa( WEMPRICOD,
                               WTERMICOD,
                               WMVCXDMOV,
                               WNUMEICOD,
                               WOPCXICOD,
                               WUSUAICOD,
                               WMVCXA15DOCORIG : string;
                               WMVCXN2VLR      : double ;
                               WMVCXA6NUMCUPOM,
                               WTIPO,
                               WMVCXA255HIST : string) ;
procedure GravaMovimentoEstoque(SqlProd,
                                SQLProdFilho,
                                SQLProdSald : TQuery;
                                EmprCod,
                                ProdCod,
                                Operacao:integer;
                                Quant:double;
                                EntrSai,
                                DataHora,
                                Valor,
                                TipoMov,
                                NumDocOrig : String) ;
function  EncontrouProduto(Codigo:string;Tabela:TObject):boolean;
function  MouseShowCursor(const Show: boolean): boolean;
procedure MontaParcelas(SQLPlnRec, SQLPlnRecParc : TQuery; DEmissao : String ;ValorVenda : double; Var Parcelas : TStrings) ;
function  Zeros(Str:String; Tam:Integer; Orient:String) : String ;
function  CriaParcelas(SQLPlnRec,
                       SQLPlnRecParc : TQuery;
                       Entrada,
                       Desconto,
                       Valor:Double;
                       Plano:integer;
                       Data : TDateTime ;
                       TpRecVistaTel, TpRecPrazoTel, TpRecVistaPDV, TpRecPrazoPDV, Documento: string;
                       var ValorJuro, Acrescimo, EntradaCalc:Double ) : Variant ;
function TrocaPontoPorVirgula(Numero : String) : string ;
procedure AtualizaTotaisCabecalhoContasReceber(NroDocumento : string) ;
function RetornaTotalizadorIcmsECF(EcfID, CodICMS : string) : String ;
function RetornaTotalizadorNumerarioECF(EcfID, CodNumerario : string) : String ;
function ConverteAcentos(Str : string) : string ;
function CalculaSaldoCaderno(Cliente : string) : Double ;
function CalculaTotalRetornoConsignacao : Double ;
function VerificaSePlanoTemParcelaVista(Plano : string) : boolean ;
procedure GravaArqTexto(Str, NomeArq : String) ;


implementation

uses DataModulo, TelaFechamentoVenda ;

function LocateByDisplayLabel(DataSet:TDataSet;DisplayLabel:string) : Integer;
var
  I : integer ;
begin
  Result := -1 ;
  for I := 0 to DataSet.FieldCount-1 do
    if DataSet.Fields[I].DisplayLabel = DisplayLabel then
    begin
      Result := I ;
      Break ;
    end ;
end ;

procedure Informa(Texto:string) ;
begin
  Application.MessageBox(PChar(Texto), PChar(Application.Title), MB_SYSTEMMODAL + MB_Ok + MB_IconExclamation)
end ;

function Pergunta(BotaoDefault, Texto:string) : boolean ;
begin
  if AnsiUpperCase(BotaoDefault) = 'SIM' then
  begin
    if Application.MessageBox(PChar(Texto), PChar(Application.Title), MB_SYSTEMMODAL + MB_YesNo + MB_IconQuestion + MB_DEFBUTTON1) = IdYes then
      Pergunta := true
    else
      Pergunta := false ;
  end
  else
    if Application.MessageBox(PChar(Texto), PChar(Application.Title), MB_SYSTEMMODAL + MB_YesNo + MB_IconQuestion + MB_DEFBUTTON2) = IdYes then
      Pergunta := true
    else
      Pergunta := false ;
end ;

procedure CriaForm(NomeForm:string; ObjForm : TFormClass) ;
var Cont      : integer ;
    ExistForm : boolean ;
    Form      : TObject ;
    NomeTela  : string ;
begin
  ExistForm := false ;
  For Cont := 0 to Screen.FormCount-1 Do
    If Screen.Forms[Cont].Name = NomeForm Then
      Begin
        ExistForm := True ;
        Break;
      End;

  if not ExistForm then
  begin
    ObjForm.Create(Application) ;
    Form := Application.FindComponent(NomeForm);
    (Form as TForm).Refresh ;
  end
  else begin
    Form := Application.FindComponent(NomeForm);
    (Form as TForm).Show ;
    (Form as TForm).Refresh ;
  end ;
  IncluirTelaLista ;
end ;

procedure IncluirTelaLista ;
var
  I      : integer;
  Tabela : TObject ;
begin
  if Application.FindComponent('FormTelaPrincipal') <> nil then
  begin
    Tabela := Application.FindComponent('FormTelaPrincipal').FindComponent('TblJanelas') ;
    (Tabela as TMemoryTable).Close ;
    (Tabela as TMemoryTable).EmptyTable ;
    (Tabela as TMemoryTable).Open ;
    for  I := 0 to Screen.FormCount-1 do
    begin
      if Screen.Forms[I].FormStyle = fsMDIChild then
      begin
        (Tabela as TMemoryTable).Append ;
        (Tabela as TMemoryTable).FieldByName('TituloJanela').Value := Screen.Forms[I].Caption ;
        (Tabela as TMemoryTable).FieldByName('NomeJanela').Value   := Screen.Forms[I].Name ;
        (Tabela as TMemoryTable).Post ;
        (Application.FindComponent('FormTelaPrincipal').FindComponent('ListaJanelas') as TDBLookUpComboBox).KeyValue := Screen.Forms[I].Name ;
      end ;
    end;

  end;
end ;

procedure ExcluirTelaLista(NomeTela : string) ;
var
  Tabela : TObject ;
begin
  if Application.FindComponent('FormTelaPrincipal') <> nil then
  begin
    Tabela := Application.FindComponent('FormTelaPrincipal').FindComponent('TblJanelas') ;
    (Tabela as TMemoryTable).First ;
    while not (Tabela as TMemoryTable).EOF do
    begin
      if (Tabela as TMemoryTable).FieldByName('NomeJanela').asstring = NomeTela then
      begin
        (Tabela as TMemoryTable).Delete ;
        Break ;
      end ;
      (Tabela as TMemoryTable).Next ;
    end ;
  end ;
end ;

Function DigitVerifEAN(Cod:string) : string ;
Var Digito     : string[1] ;
    DAux       : Double ;
    Par,
    Impar : Integer ;
    Str_Aux : string ;
begin
  DigitVerifEAN := '' ;

  {***********  CODIGO REDUZIDO DE PRODUTOS ***********}
  if Length(Cod) = 3 Then
  begin
    Impar := StrtoInt(Copy(Cod,1,1)) +
             StrtoInt(Copy(Cod,3,1)) ;

    Par := StrtoInt(Copy(Cod,2,1)) ;

    DAux := (Par*3) + Impar ;
    DAux := DAux / 10 ;
    Str_Aux := FloatToStr(DAux) ;
    if Pos(',', Str_Aux) > 0 then
    begin
      Digito := Copy(Str_Aux, Pos(',', Str_Aux)+1,1) ;
      Digito := floattostr(10 - strtofloat(Digito)) ;
    end
    else
      Digito := '0' ;

    DigitVerifEAN := Digito ;
  end ;

  {***********  EAN8 ***********}
  if Length(Cod) = 7 Then
  begin
    Impar := StrtoInt(Copy(Cod,01,1)) +
             StrtoInt(Copy(Cod,03,1)) +
             StrtoInt(Copy(Cod,05,1)) +
             StrtoInt(Copy(Cod,07,1)) ;

    Par := StrtoInt(Copy(Cod,02,1)) +
           StrtoInt(Copy(Cod,04,1)) +
           StrtoInt(Copy(Cod,06,1)) ;

    DAux := (Par*3)+Impar ;
    DAux := DAux / 10 ;
    Str_Aux := FloatToStr(DAux) ;
    if Pos(',', Str_Aux) > 0 then
    begin
      Digito := Copy(Str_Aux, Pos(',', Str_Aux)+1,1) ;
      Digito := floattostr(10 - strtofloat(Digito)) ;
    end
    else
      Digito := '0' ;

    DigitVerifEAN := Digito ;
  end ;

  {***********  EAN13 ***********}
  if Length(Cod) = 12 Then
  begin
    Impar := StrtoInt(Copy(Cod,01,1)) +
             StrtoInt(Copy(Cod,03,1)) +
             StrtoInt(Copy(Cod,05,1)) +
             StrtoInt(Copy(Cod,07,1)) +
             StrtoInt(Copy(Cod,09,1)) +
             StrtoInt(Copy(Cod,11,1)) ;

    Par := StrtoInt(Copy(Cod,02,1)) +
           StrtoInt(Copy(Cod,04,1)) +
           StrtoInt(Copy(Cod,06,1)) +
           StrtoInt(Copy(Cod,08,1)) +
           StrtoInt(Copy(Cod,10,1))+
           StrtoInt(Copy(Cod,12,1)) ;

    DAux := (Par*3)+Impar ;
    DAux := DAux / 10 ;
    Str_Aux := FloatToStr(DAux) ;
    if Pos(',', Str_Aux) > 0 then
    begin
      Digito := Copy(Str_Aux, Pos(',', Str_Aux)+1,1) ;
      Digito := floattostr(10 - strtofloat(Digito)) ;
    end
    else
      Digito := '0' ;

    DigitVerifEAN := Digito ;
  end ;

  {***********  DUN14 ***********}
  if Length(Cod) = 13 Then
  begin
    Impar := StrtoInt(Copy(Cod,01,1)) +
             StrtoInt(Copy(Cod,03,1)) +
             StrtoInt(Copy(Cod,05,1)) +
             StrtoInt(Copy(Cod,07,1)) +
             StrtoInt(Copy(Cod,09,1)) +
             StrtoInt(Copy(Cod,11,1)) +
             StrtoInt(Copy(Cod,13,1)) ;

    Par := StrtoInt(Copy(Cod,02,1)) +
           StrtoInt(Copy(Cod,04,1)) +
           StrtoInt(Copy(Cod,06,1)) +
           StrtoInt(Copy(Cod,08,1)) +
           StrtoInt(Copy(Cod,10,1))+
           StrtoInt(Copy(Cod,12,1)) ;

    DAux := (Impar*3)+Par ;
    DAux := DAux / 10 ;
    Str_Aux := FloatToStr(DAux) ;
    if Pos(',', Str_Aux) > 0 then
    begin
      Digito := Copy(Str_Aux, Pos(',', Str_Aux)+1,1) ;
      Digito := floattostr(10 - strtofloat(Digito)) ;
    end
    else
      Digito := '0' ;

    DigitVerifEAN := Digito ;
  end ;
end ;

procedure DebugMsg(Msg : string) ;
begin
  if FileExists('DebugMsg.Arq') then
    ShowMessage(Msg) ;
end ;

function DelUltVirg(Msg : string) : string ;
var
  i : integer ;
begin
  DelUltVirg := Msg ;
  for i := Length(Msg) downto 0 do
  begin
    if Msg[i] = ',' then
    begin
      DelUltVirg := Copy(Msg, 1, i-1) ;
      Break ;
    end ;
  end ;
end ;

function  ValorCampo(Campo : TField) : Variant ;
begin
  if (Campo.DataType <> ftFloat) and (Campo.DataType <> ftInteger) and (Campo.DataType <> ftString) and (Campo.DataType <> ftDateTime) then
  begin
    ValorCampo := Campo.AsString ;
  end
  else begin
    if (Campo.DataType = ftFloat) then
      if Campo.Value <> null then
        ValorCampo := ConvFloatToStr(Campo.Value)
      else
        ValorCampo := '0.00' ;

    if (Campo.DataType = ftInteger) then
      if Campo.Value <> null then
        ValorCampo := ConvFloatToStr(Campo.Value)
      else
        ValorCampo := 'Null' ;

    if (Campo.DataType = ftString) then
      ValorCampo := '''' + Campo.asString + '''' ;

    if (Campo.DataType = ftDateTime) then
      if Campo.Value <> Null then
        ValorCampo := '''' + FormatDateTime('mm/dd/yyyy hh:nn:ss', Campo.Value) + ''''
      else
        ValorCampo := 'Null' ;
  end ;
end ;

function ConvFloatToStr(Numero : Double) : string ;
var Wstr : string ;
begin
  ConvFloatToStr := '0.00' ;
  if Numero <> null then
  begin
    Wstr := FloatToStr(Numero) ;
    ConvFloatToStr := Wstr ;
    if Pos(',', Wstr) > 0 then
      ConvFloatToStr := Copy(Wstr, 1, Pos(',', Wstr)-1) + '.' + Copy(Wstr, Pos(',', Wstr)+1, 3)
  end
  else ConvFloatToStr := '0.00' ;
end ;

function ConvFloatToStrECF(Numero : Double; Tam : integer) : string ;
var Valor : string ;
begin
  Valor := FormatFloat('#,##0.00', Numero);
  if Pos(',', Valor) > 0 then
    Delete(Valor, Pos(',', Valor), 1);
  if Pos('.',Valor) > 0 then
    Delete(Valor, Pos('.', Valor), 1);
  ConvFloatToStrECF := Zeros(Valor, Tam, 'Dir') ;
end ;

function TrocaPontoPorVirgula(Numero : String) : string ;
var Wstr : string ;
begin
  if Numero <> '' then
  begin
    if Pos('.', Wstr) > 0 then
      TrocaPontoPorVirgula := Copy(Wstr, 1, Pos('.', Wstr)-1) + ',' + Copy(Wstr, Pos('.', Wstr)+1, 3)
    else
      TrocaPontoPorVirgula := Numero ;
  end
  else TrocaPontoPorVirgula := '0,00' ;
end ;


function UltiDiaMes(Mes, Ano : string) : integer ;
var
  Present : TDateTime;
  Data    : TDateTime;
  WAno,
  WMes,
  WDia     :  Word;
begin
  if (Length(Mes) = 2) or (Length(Mes) = 1) then
    Present := StrToDate('01/' + Mes + '/' + Ano) ;

  if Length(Mes) > 2 then
    Present := StrToDate(Mes) ;

  DecodeDate(Present, WAno, WMes, WDia);
  Present := Present + (32 - WDia);
  DecodeDate(Present, WAno, WMes, WDia);
  Present := EncodeDate(WAno, WMes, 01 ) -1;
  DecodeDate(Present, WAno, WMes, WDia);
  UltiDiaMes := WDia ;
end;

procedure GravaMovimentoCaixa( WEMPRICOD,
                               WTERMICOD,
                               WMVCXDMOV,
                               WNUMEICOD,
                               WOPCXICOD,
                               WUSUAICOD,
                               WMVCXA15DOCORIG : string;
                               WMVCXN2VLR      : double ;
                               WMVCXA6NUMCUPOM,
                               WTIPO,
                               WMVCXA255HIST : string) ;
var
  ProxCod : string ;
begin
  //GERAR CODIGO MOVIMENTO CAIXA
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select Max(MVCXICOD) as Contador from MOVIMENTOCAIXA') ;
  DM.SQLTemplate.SQL.Add('where') ;
  DM.SQLTemplate.SQL.Add('EMPRICOD = "' + WEMPRICOD + '" and') ;
  DM.SQLTemplate.SQL.Add('TERMICOD = '  + WTERMICOD + ' and') ;
  DM.SQLTemplate.SQL.Add('MVCXDMOV = "' + WMVCXDMOV + '"') ;
  DM.SQLTemplate.ExecSQL ;
  DM.SQLTemplate.Open ;
  ProxCod := IntToStr(DM.SQLTemplate.FieldByName('Contador').AsInteger + 1) ;
  //GRAVA LANCAMENTO DO CAIXA
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('insert into MOVIMENTOCAIXA') ;
  DM.SQLTemplate.SQL.Add('(EMPRICOD,') ;
  DM.SQLTemplate.SQL.Add('TERMICOD,') ;
  DM.SQLTemplate.SQL.Add('MVCXDMOV,') ;
  DM.SQLTemplate.SQL.Add('MVCXICOD,') ;
  DM.SQLTemplate.SQL.Add('NUMEICOD,') ;
  DM.SQLTemplate.SQL.Add('OPCXICOD,') ;
  DM.SQLTemplate.SQL.Add('USUAICOD,') ;
  DM.SQLTemplate.SQL.Add('MVCXA15DOCORIG,') ;
  if WTIPO = 'D' then
    DM.SQLTemplate.SQL.Add('MVCXN2VLRDEB,') ;
  if WTIPO = 'C' then
    DM.SQLTemplate.SQL.Add('MVCXN2VLRCRED,') ;
  DM.SQLTemplate.SQL.Add('MVCXINROCUPOM,') ;
  DM.SQLTemplate.SQL.Add('MVCXA255HIST,') ;
  DM.SQLTemplate.SQL.Add('PENDENTE,') ;
  DM.SQLTemplate.SQL.Add('REGISTRO)') ;
  DM.SQLTemplate.SQL.Add('values(') ;
  DM.SQLTemplate.SQL.Add(WEMPRICOD + ', ') ;
  DM.SQLTemplate.SQL.Add(WTERMICOD + ', ') ;
  DM.SQLTemplate.SQL.Add('"' + WMVCXDMOV + '", ') ;
  DM.SQLTemplate.SQL.Add(ProxCod + ', ') ;
  DM.SQLTemplate.SQL.Add(WNUMEICOD + ', ') ;
  DM.SQLTemplate.SQL.Add(WOPCXICOD + ', ') ;
  DM.SQLTemplate.SQL.Add(WUSUAICOD + ', ') ;
  DM.SQLTemplate.SQL.Add('"' + WMVCXA15DOCORIG + '", ') ;
  if (WTIPO = 'D') or (WTIPO = 'C') then
    DM.SQLTemplate.SQL.Add(ConvFloatToStr(WMVCXN2VLR) + ', ') ;
  DM.SQLTemplate.SQL.Add(WMVCXA6NUMCUPOM + ', ') ;
  DM.SQLTemplate.SQL.Add('"' + WMVCXA255HIST + '", ') ;
  DM.SQLTemplate.SQL.Add('"S", ') ;{PENDENTE}
  DM.SQLTemplate.SQL.Add('"' + FormatDateTime('mm/dd/yyyy hh:mm:ss', Now) + '")') ;{REGISTRO}
  DM.SQLTemplate.ExecSQL ;

  if AnsiUpperCase(WNUMEICOD) <> 'NULL' then
  begin
    //GRAVA NOS TOTALIZADORES APARTIR DO NUMERARIO
    if not DM.SQLTotalizadorCaixa.Active then
      DM.SQLTotalizadorCaixa.Open ;

    DM.SQLTotalizar.Close ;
    DM.SQLTotalizar.SQL.Clear ;
    DM.SQLTotalizar.SQL.Add('select NUMEICOD, TOTAICOD, NUTOCSOMASUBTRAI') ;
    DM.SQLTotalizar.SQL.Add('from NUMERARIOTOTALIZADOR') ;
    DM.SQLTotalizar.SQL.Add('where NUMEICOD = ' + WNUMEICOD) ;
    DM.SQLTotalizar.Open ;

    DM.SQLTotalizar.First ;
    while not DM.SQLTotalizar.EOF do
    begin
      DM.SQLTotalizadorCaixa.Locate('TOTAICOD', DM.SQLTotalizar.FieldByName('TOTAICOD').AsString, []) ;
      if DM.SQLTotalizadorCaixaTOTACDEBITOCREDITO.Value = '' then
      begin
        Informa('Você deve informar se o totalizador ' + DM.SQLTotalizadorCaixaTOTAA60DESCR.Value + ' é do tipo Débito ou Crédito. Esta operação não irá totalizar no caixa!') ;
        Exit ;
      end ;

      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('Update TOTALIZADORDIARIOCAIXA') ;
      if DM.SQLTotalizadorCaixaTOTACDEBITOCREDITO.Value = 'D' then
      begin
        if DM.SQLTotalizar.FieldByName('NUTOCSOMASUBTRAI').AsString = '+' then
          DM.SQLTemplate.SQL.Add('set TODIN2VLRDEBITO = TODIN2VLRDEBITO + ' + ConvFloatToStr(WMVCXN2VLR)) ;
        if DM.SQLTotalizar.FieldByName('NUTOCSOMASUBTRAI').AsString = '-' then
          DM.SQLTemplate.SQL.Add('set TODIN2VLRDEBITO = TODIN2VLRDEBITO - ' + ConvFloatToStr(WMVCXN2VLR)) ;
      end ;
      if DM.SQLTotalizadorCaixaTOTACDEBITOCREDITO.Value = 'C' then
      begin
        if DM.SQLTotalizar.FieldByName('NUTOCSOMASUBTRAI').AsString = '+' then
          DM.SQLTemplate.SQL.Add('set TODIN2VLRCREDITO = TODIN2VLRCREDITO + ' + ConvFloatToStr(WMVCXN2VLR)) ;
        if DM.SQLTotalizar.FieldByName('NUTOCSOMASUBTRAI').AsString = '-' then
          DM.SQLTemplate.SQL.Add('set TODIN2VLRCREDITO = TODIN2VLRCREDITO - ' + ConvFloatToStr(WMVCXN2VLR)) ;
      end ;
      DM.SQLTemplate.SQL.Add('where') ;
      DM.SQLTemplate.SQL.Add('EMPRICOD = "' + EmpresaPadrao + '" and ') ;
      DM.SQLTemplate.SQL.Add('TERMICOD = '  + IntToStr(TerminalAtual) + ' and ') ;
      DM.SQLTemplate.SQL.Add('TODIDMOV = "' + FormatDateTime('mm/dd/yyyy', StrToDateTime(TerminalAtualData)) + '" and ') ;
      DM.SQLTemplate.SQL.Add('TOTAICOD = '  + DM.SQLTotalizar.FieldByName('TOTAICOD').AsString) ;
      DM.SQLTemplate.ExecSQL ;

      if FileExists('LogTotaliz') then
      begin
        WriteLn(LogTotaliz, 'Numerário ' + WNUMEICOD + ' ' +
                            DM.SQLTotalizar.FieldByName('NUTOCSOMASUBTRAI').AsString +
                            ' no Totalizador ' + DM.SQLTotalizadorCaixaTOTAA60DESCR.Value +
                            ' o valor de ' + ConvFloatToStr(WMVCXN2VLR));
     end ;


      DM.SQLTotalizar.Next ;
    end ;
  end ;

  if (WOPCXICOD <> '') and (AnsiUpperCase(WOPCXICOD) <> 'NULL') then
  begin
    //GRAVA NOS TOTALIZADORES APARTIR DA OPERACAO DE CAIXA
    if not DM.SQLTotalizadorCaixa.Active then
      DM.SQLTotalizadorCaixa.Open ;

    DM.SQLTotalizar.Close ;
    DM.SQLTotalizar.SQL.Clear ;
    DM.SQLTotalizar.SQL.Add('select OPCXICOD, TOTAICOD, OPTOCSOMASUBTRAI') ;
    DM.SQLTotalizar.SQL.Add('from OPERACAOCAIXATOTALIZADOR') ;
    DM.SQLTotalizar.SQL.Add('where OPCXICOD = ' + WOPCXICOD) ;
    DM.SQLTotalizar.Open ;
    DM.SQLTotalizar.First ;
    while not DM.SQLTotalizar.EOF do
    begin
      DM.SQLTotalizadorCaixa.Locate('TOTAICOD', DM.SQLTotalizar.FieldByName('TOTAICOD').AsString, []) ;
      if DM.SQLTotalizadorCaixaTOTACDEBITOCREDITO.Value = '' then
      begin
        Informa('Você deve informar se o totalizador ' + DM.SQLTotalizadorCaixaTOTAA60DESCR.Value + ' é do tipo Débito ou Crédito. Esta operação não irá totalizar no caixa!') ;
        Exit ;
      end ;

      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('Update TOTALIZADORDIARIOCAIXA') ;
      if DM.SQLTotalizadorCaixaTOTACDEBITOCREDITO.Value = 'D' then
      begin
        if DM.SQLTotalizar.FieldByName('OPTOCSOMASUBTRAI').AsString = '+' then
          DM.SQLTemplate.SQL.Add('set TODIVLRDEBITO = TODIVLRDEBITO + ' + ConvFloatToStr(WMVCXN2VLR)) ;
        if DM.SQLTotalizar.FieldByName('OPTOCSOMASUBTRAI').AsString = '-' then
          DM.SQLTemplate.SQL.Add('set TODIVLRDEBITO = TODIVLRDEBITO - ' + ConvFloatToStr(WMVCXN2VLR)) ;
      end ;
      if DM.SQLTotalizadorCaixaTOTACDEBITOCREDITO.Value = 'C' then
      begin
        if DM.SQLTotalizar.FieldByName('OPTOCSOMASUBTRAI').AsString = '+' then
          DM.SQLTemplate.SQL.Add('set TODIN2VLRCREDITO = TODIN2VLRCREDITO + ' + ConvFloatToStr(WMVCXN2VLR)) ;
        if DM.SQLTotalizar.FieldByName('OPTOCSOMASUBTRAI').AsString = '-' then
          DM.SQLTemplate.SQL.Add('set TODIN2VLRCREDITO = TODIN2VLRCREDITO - ' + ConvFloatToStr(WMVCXN2VLR)) ;
      end ;
      DM.SQLTemplate.SQL.Add('where') ;
      DM.SQLTemplate.SQL.Add('EMPRICOD = ' + EmpresaPadrao + ' and ') ;
      DM.SQLTemplate.SQL.Add('TERMICOD = '  + IntToStr(TerminalAtual) + ' and ') ;
      DM.SQLTemplate.SQL.Add('TODIDMOV = "' + FormatDateTime('mm/dd/yyyy', StrToDateTime(TerminalAtualData)) + '" and ') ;
      DM.SQLTemplate.SQL.Add('USUAICOD = '  + WUSUAICOD + ' and ') ;
      DM.SQLTemplate.SQL.Add('TOTAICOD = '  + DM.SQLTotalizar.FieldByName('TOTAICOD').AsString) ;
      DM.SQLTemplate.ExecSQL ;

      if FileExists('LogTotaliz') then
      begin
        WriteLn(LogTotaliz, 'Oper.Caix.' + WOPCXICOD + ' ' +
                            DM.SQLTotalizar.FieldByName('OPTOCSOMASUBTRAI').AsString +
                            ' no Totalizador ' + DM.SQLTotalizadorCaixaTOTAA60DESCR.Value +
                            ' o valor de ' + ConvFloatToStr(WMVCXN2VLR));
      end ;

      DM.SQLTotalizar.Next ;
    end ;
  end ;

  if (WOPCXICOD <> '') and (AnsiUpperCase(WOPCXICOD) <> 'NULL') then
  begin
    DM.SQLTemplate.Close ;
    DM.SQLTemplate.SQL.Clear ;
    DM.SQLTemplate.SQL.Add('select OPCXICOD, OPCXCAUTENTICA, OPCXCABREGAVETA') ;
    DM.SQLTemplate.SQL.Add('from OPERACAOCAIXA') ;
    DM.SQLTemplate.SQL.Add('where OPCXICOD = ' + WOPCXICOD) ;
    DM.SQLTemplate.Open ;
    if not DM.SQLTemplate.EOF then
    begin
      if DM.SQLTemplate.FieldByName('OPCXCAUTENTICA').Value = 'S' then
      begin
        Autenticacao(ECFAtual, //Impressora
                     PortaECFAtual,//Porta,
                     Ecf_CNFNV,//Identificador
                     Ecf_ID,//Ecf_ID
                     WMVCXA15DOCORIG,//Documento
                     '',//Parcela
                     WMVCXN2VLR,//Valor
                     StrToInt(WNUMEICOD));//NumerarioCod
      end ;

      {if DM.SQLTemplate.FieldByName('OPCXCABREGAVETA').Value = 'S' then
      begin
      end ;}
    end ;
  end ;
end ;

procedure GravaMovimentoEstoque(SqlProd,
                                SQLProdFilho,
                                SQLProdSald : TQuery;
                                EmprCod,
                                ProdCod,
                                Operacao:integer;
                                Quant:double;
                                EntrSai,
                                DataHora,
                                Valor,
                                TipoMov,
                                NumDocOrig : String) ;
var
  CodMov : integer ;
  Sair   : boolean ;
begin
  if ProdCod = 0 then
    exit ;

  SqlProd.Close ;
  SqlProd.SQL.Clear ;
  SqlProd.SQL.Add('Select * from PRODUTO') ;
  SqlProd.SQL.Add('Where PRODICOD = ' + IntToStr(ProdCod)) ;
  SqlProd.Open ;

  if not SqlProd.EOF then
    if SqlProd.FieldByName('PRODCTIPOBAIXA').Value = 'F' then
    begin
      while not SQLProdFilho.EOF do
      begin
        SQLProdSald.Close ;
        SQLProdSald.SQL.Clear ;
        SQLProdSald.SQL.Add('Select * from PRODUTOSALDO') ;
        SQLProdSald.SQL.Add('Where EMPRICOD = ' + IntToStr(EmprCod)) ;
        SQLProdSald.SQL.Add('and   PRODICOD = ' + IntToStr(ProdCod)) ;
        SQLProdSald.Open ;

        if SQLProdSald.EOF then
        begin
          SQLProdSald.Edit ;
          Case EntrSai[1] of
            'E' : SQLProdSald.FieldByName('PSLDQTDE').Value := SQLProdSald.FieldByName('PSLDQTDE').Value +
                                                               SQLProdFilho.FieldByName('PRODN3QTDEBAIXA').Value ;
            'S' : SQLProdSald.FieldByName('PSLDQTDE').Value := SQLProdSald.FieldByName('PSLDQTDE').Value -
                                                               SQLProdFilho.FieldByName('PRODN3QTDEBAIXA').Value ;
          end ;
          SQLProdSald.Post ;
        end ;

        SQLProdFilho.Next ;
      end ;
    end
    else begin
      SQLProdSald.Close ;
      SQLProdSald.Close ;
      SQLProdSald.SQL.Clear ;
      SQLProdSald.SQL.Add('Select * from PRODUTOSALDO') ;
      SQLProdSald.SQL.Add('Where EMPRICOD = ' + IntToStr(EmprCod)) ;
      SQLProdSald.SQL.Add('and   PRODICOD = ' + IntToStr(ProdCod)) ;
      SQLProdSald.Open ;

      if not SQLProdSald.EOF then
      begin
        SQLProdSald.Edit ;
        Case EntrSai[1] of
          'E' : SQLProdSald.FieldByName('PSLDN3QTDE').Value := SQLProdSald.FieldByName('PSLDN3QTDE').Value + Quant ;
          'S' : SQLProdSald.FieldByName('PSLDN3QTDE').Value := SQLProdSald.FieldByName('PSLDN3QTDE').Value - Quant ;
        end ;
        SQLProdSald.Post ;
      end ;
    end ;

  Sair := False ;
  while not Sair do
  begin
    //GRAVAR EXTRATO DE ESTOQUE
    DM.SQLTemplate.Close ;
    DM.SQLTemplate.SQL.Clear ;
    DM.SQLTemplate.SQL.Add('select Max(MVESICOD) as Contador from MOVIMENTOESTOQUE') ;
    DM.SQLTemplate.SQL.Add('where EMPRICOD = ' + IntToStr(EmprCod)) ;
    DM.SQLTemplate.ExecSQL ;
    DM.SQLTemplate.Open ;
    if DM.SQLTemplate.FieldByName('Contador').Value <> Null then
      CodMov := DM.SQLTemplate.FieldByName('Contador').Value + 1
    else
      CodMov := 1 ;

    //ROTINA PARA GRAVAR MOVIMENTO DO ESTOQUE
    DM.SQLTemplate.Close ;
    DM.SQLTemplate.SQL.Clear ;
    DM.SQLTemplate.SQL.Add('insert into MOVIMENTOESTOQUE') ;
    DM.SQLTemplate.SQL.Add('(EMPRICOD,') ;
    DM.SQLTemplate.SQL.Add('MVESDMOV,') ;
    DM.SQLTemplate.SQL.Add('MVESICOD,') ;
    DM.SQLTemplate.SQL.Add('PRODICOD,') ;
    DM.SQLTemplate.SQL.Add('OPESICOD,') ;
    if EntrSai = 'E' then
      DM.SQLTemplate.SQL.Add('MVESN3QTDENTRADA,') ;
    if EntrSai = 'S' then
      DM.SQLTemplate.SQL.Add('MVESN3QTDSAIDA,') ;

    if AnsiUpperCAse(TipoMov) = 'CUPOM' then
      DM.SQLTemplate.SQL.Add('CUPOA13ID,') ;

    DM.SQLTemplate.SQL.Add('PENDENTE,') ;
    DM.SQLTemplate.SQL.Add('REGISTRO)') ;
    DM.SQLTemplate.SQL.Add('values(') ;
    DM.SQLTemplate.SQL.Add(IntToStr(EmprCod) + ', ') ;//EMPRICOD
    DM.SQLTemplate.SQL.Add('"' + DataHora + '", ') ;//MVESDMOV
    DM.SQLTemplate.SQL.Add(FloatToStr(CodMov) +', ') ;//MVESICOD
    DM.SQLTemplate.SQL.Add(IntToStr(ProdCod) + ', ') ;//PRODICOD
    DM.SQLTemplate.SQL.Add(IntToStr(Operacao) + ', ') ;//OPESICOD,
    if EntrSai = 'E' then
      DM.SQLTemplate.SQL.Add(ConvFloatToStr(Quant) + ', ') ;//MVESN3QTDENTRADA
    if EntrSai = 'S' then
      DM.SQLTemplate.SQL.Add(ConvFloatToStr(Quant) + ', ') ;//MVESN3QTDSAIDA

    if AnsiUpperCAse(TipoMov) = 'CUPOM' then
      DM.SQLTemplate.SQL.Add('"'+ NumDocOrig + '", ') ;

    DM.SQLTemplate.SQL.Add('"S",') ;//PENDENTE
    DM.SQLTemplate.SQL.Add('"' + FormatDateTime('mm/dd/yyyy hh:mm:ss', Now) + '")') ;//REGISTRO
    try
      DM.SQLTemplate.ExecSQL ;
      Sair := true ;
    except
    end ;
  end ;
end ;

function ConvProdCod(Numero : string) : string ;
begin
  if Numero <> '0' then
    ConvProdCod := Numero
  else
    ConvProdCod := 'Null' ;
end ;

function EncontrouProduto(Codigo:string;Tabela:TObject):Boolean;
begin
  (Tabela as TQuery).Close ;
  (Tabela as TQuery).SQL.Clear ;
  (Tabela as TQuery).SQL.Add('select * from PRODUTO') ;
  (Tabela as TQuery).SQL.Add('where PRODICOD = ' + Codigo) ;
  (Tabela as TQuery).Open ;
  (Tabela as TQuery).First ;
  EncontrouProduto := false ;
  if not (Tabela as TQuery).EOF then
    begin
      EncontrouProduto := True ;
    end;
end ;

function MouseShowCursor(const Show: boolean): boolean;
var
  I: integer;
begin
  I := ShowCursor(LongBool(true));
  if Show then begin
    Result := I >= 0;
    while I < 0 do begin
      Result := ShowCursor(LongBool(true)) >= 0;
      Inc(I);
    end;
  end else begin
    Result := I < 0;
    while I >= 0 do begin
      Result := ShowCursor(LongBool(false)) < 0;
      Dec(I);
    end;
  end;
end;

procedure MontaParcelas(SQLPlnRec, SQLPlnRecParc : TQuery; DEmissao : String ;ValorVenda : double; Var Parcelas : TStrings) ;
var
  MyStringList : TStrings ;
  ContParc     : integer ;
  VlrEntrada,
  NroDias,
  NroParc,
  VlrOutras    : double ;
  DataEmiss    : TDate ;
  MesIniDFix,
  DiaFix       : string ;
begin
  MyStringList := TStringList.Create ;
  MyStringList.Clear ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select Count(*) from PLANORECEBIMENTOPARCELA') ;
  DM.SQLTemplate.SQL.Add('where PLRCICOD = ' + SQLPlnRec.FieldByName('PLRCICOD').asString) ;
  DM.SQLTemplate.ExecSQL ;
  DM.SQLTemplate.Open ;

  ContParc   := DM.SQLTemplate.Fieldbyname('Count').Value ;
  VlrEntrada := 0 ;
  VlrOutras  := ValorVenda / ContParc ;
  DataEmiss  := Date ;

  if SQLPlnRec.FieldByName('PLRCCDFIX').AsString <> 'S' then
  begin
    SQLPlnRecParc.First ;
    if DEmissao = FormatDateTime('dd/mm/yyyy', DataEmiss + NroDias) then
      NroParc := SQLPlnRecParc.FieldByName('PLRPINROPARC').AsFloat-1
    else
      NroParc := SQLPlnRecParc.FieldByName('PLRPINROPARC').AsFloat ;

    while not SQLPlnRecParc.EOF do
    begin
      NroDias := SQLPlnRecParc.FieldByName('PLRPINRODIAS').asFloat ;

      MyStringList.Add(FormatFloat('000', NroParc) +
                       FormatDateTime('dd/mm/yyyy', DataEmiss + NroDias) +
                       FormatFloat('###0.00', VlrOutras)) ;

      SQLPlnRecParc.Next ;
      NroParc := NroParc + 1 ;
    end ;
  end
  else begin
    DiaFix     := FormatFloat('00', SQLPlnRec.FieldByName('PLRCIDFIXDVENC').AsFloat) ;
    MesIniDFix := FormatDateTime('mm', Date) ;
    if SQLPlnRec.FieldByName('PLRCIDFIXENTR').Value <> 'S' then
      MesIniDFix := FormatFloat('00', StrToFloat(MesIniDFix) + 1) ;

    {for i := 0 to SQLPlnRec.FieldByName('PLRCIDFIXNROPARC').Value do
    begin
        DEmissao = FormatDateTime('yyyy', Date) then

        MyStringList.Add(FormatFloat('000', NroParc) +
                         FormatDateTime('dd/mm/yyyy', DataEmiss + NroDias) +
                         FormatFloat('###0.00', VlrOutras)) ;
      end ;
    end ;}
  end ;

  Parcelas := MyStringList ;
end ;

function Zeros(Str:String; Tam:Integer; Orient:String) : String ;
Var Dif, i : integer ;
begin
  Dif := Tam - Length(Str) ;
  for i := 1 to Dif do
  begin
    if Orient = 'Esq' then
      Str := Str + '0' ;
    if Orient = 'Dir' then
      Str := '0' + Str ;
  End ;

  Zeros := Str ;
end ;

function CriaParcelas(SQLPlnRec,
                      SQLPlnRecParc : TQuery;
                      Entrada,
                      Desconto,
                      Valor:Double;
                      Plano:integer;
                      Data : TDateTime ;
                      TpRecVistaTel,
                      TpRecPrazoTel,
                      TpRecVistaPDV,
                      TpRecPrazoPDV,
                      Documento: string ;
                      var ValorJuro, Acrescimo, EntradaCalc:Double ) : Variant ;
var
  OffSet,
  NumeroParcelas,
  I               : Integer;
  TotParc,
  Acumulado,
  ValorDevido,
  Arredondamento   : Double;
  DiasAnterior     : TDateTime;
  VarAno,
  VarMes,
  VarDia,
  VarDiaOficial    : Word;
  Erro             : Boolean;
begin
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('delete from PARCELASPRAZOVENDATEMP') ;
  DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
  DM.SQLTemplate.ExecSQL ;

  FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Close ;
  FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Open ;
  FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.DisableControls;

  if FormTelaFechamentoVenda.SQLPlanoRecebimentoPLRCCDFIX.Value <> 'S' then
    begin
      FormTelaFechamentoVenda.SQLPlanoRecebimentoParcela.First;
      if FormTelaFechamentoVenda.SQLPlanoRecebimentoParcelaPLRPINRODIAS.Value = 0 then
        OffSet := 1
      else
        OffSet := 0 ;

      while not FormTelaFechamentoVenda.SQLPlanoRecebimentoParcela.EOF  do
      begin
        FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Append ;
        FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempTERMICOD.Value   := TerminalAtual ;
        FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempNROPARCELA.Value := FormTelaFechamentoVenda.SQLPlanoRecebimentoParcelaPLRPINROPARC.Value-OffSet ;
        FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempDATAVENCTO.Value := Data +
                                                                             FormTelaFechamentoVenda.SQLPlanoRecebimentoParcelaPLRPINRODIAS.Value ;
        FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Post ;

        FormTelaFechamentoVenda.SQLPlanoRecebimentoParcela.Next;
      end ;
    end
  else
    begin
      DecodeDate(Date, VarAno, VarMes, VarDiaOficial);

      if FormTelaFechamentoVenda.SQLPlanoRecebimentoPLRCCDFIXENTR.Value = 'S' then
        OffSet := 1
      else
        OffSet := 0 ;

      for I := 1-OffSet to FormTelaFechamentoVenda.SQLPlanoRecebimentoPLRCIDFIXNROPARC.Value-OffSet Do
        begin
          FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Append ;
          FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempTERMICOD.Value   := TerminalAtual ;
          FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempNROPARCELA.Value := I ;

          if (FormTelaFechamentoVenda.SQLPlanoRecebimentoPLRCCDFIXENTR.Value = 'S') and (I = 1-OffSet) Then
            FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempDATAVENCTO.Value := Data
          else
            begin
              VarDia := VarDiaOficial ;
              Inc(VarMes) ;
              If VarMes > 12 Then
                Begin
                  VarMes := 1 ;
                  Inc(VarAno);
                End ;
              Erro := true ;
              while Erro do
                try
                  FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempDATAVENCTO.asString := Format('%.2d',[VarDia]) + '/' +
                                                                                          Format('%.2d',[VarMes]) + '/' +
                                                                                          Format('%.4d',[VarAno]) ;
                  Erro := False ;
                except
                  Dec(VarDia) ;
                  Erro := true ;
                end ;
            end ;

          FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Post ;
        end ;
    end ;

  FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Close ;
  FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Open ;
  FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.First ;

  if FormTelaFechamentoVenda.SQLPlanoRecebimentoPLRCCDFIX.Value <> 'S' then
  begin
    DM.SQLTemplate.Close ;
    DM.SQLTemplate.SQL.Clear ;
    DM.SQLTemplate.SQL.Add('select Count(*) from PLANORECEBIMENTOPARCELA') ;
    DM.SQLTemplate.SQL.Add('where PLRCICOD = ' + FormTelaFechamentoVenda.SQLPlanoRecebimentoPLRCICOD.asString) ;
    DM.SQLTemplate.Open ;

    NumeroParcelas := DM.SQLTemplate.Fieldbyname('Count').Value
  end
  else
    NumeroParcelas := FormTelaFechamentoVenda.SQLPlanoRecebimentoPLRCIDFIXNROPARC.AsInteger ;

  ValorDevido := Valor + FormTelaFechamentoVenda.SQLPlanoRecebimentoPLRCN2TXCRED.Value - Desconto ;
  Acrescimo   := 0 ;

  if Entrada > 0 then
  begin
    ValorDevido := ValorDevido - Entrada;

    FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Edit ;
    FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempVALORVENCTO.Value := Entrada ;
    FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Post ;
    FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Next ;
    Dec(NumeroParcelas) ;
  end ;

  FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Close ;
  FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Open ;

  if NumeroParcelas > 0 then
  begin
    Acumulado    := 0 ;
    DiasAnterior := Data;
    Valor := ValorDevido / NumeroParcelas;
    for I := 1 To NumeroParcelas Do
      begin
        ValorJuro    := (ValorDevido * (FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempDATAVENCTO.Value - DiasAnterior) *
                        FormTelaFechamentoVenda.SQLPlanoRecebimentoPLRCN2TXJURO.Value/30/100);
        DiasAnterior := FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempDATAVENCTO.Value ;
        Acrescimo    := Acrescimo + ValorJuro ;
        Acumulado    := Acumulado + Valor + ValorJuro ;
        ValorDevido  := ValorDevido - Valor ;

        if NumeroParcelas <> 1 then
          FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Next ;
      end ;

    For I := 1 To NumeroParcelas-1 do
     FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Prior ;

    //Valor := StrToFloat(FormatFloat('#,##0.00', Acumulado / NumeroParcelas)) ;
    Valor := Acumulado / NumeroParcelas ;
    while Not FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.EOF do
    begin
      FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Edit ;
      FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempVALORVENCTO.AsString := FormatFloat('#,##0.00', Valor);
      FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Post ;

      FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Next ;
    end ;

    if (TipoPadrao <> 'CRT') then
    begin
      Arredondamento := 0 ;
      case DM.SQLConfigVendaCFVECARREDPARCELA.Value[1] of
        'P'://Arrendondamentos para a Primeira Parcela
            begin
              FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.First ;
              while not FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.EOF do
              begin
                Arredondamento := Arredondamento +
                                  Frac(FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempVALORVENCTO.Value);
                FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Edit;
                FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempVALORVENCTO.Value := FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempVALORVENCTO.Value -
                                                                                      Frac(FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempVALORVENCTO.Value) ;
                FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Post ;

                FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Next ;
              end;

              FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.First;
              FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Edit;
              FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempVALORVENCTO.Value := FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempVALORVENCTO.Value +
                                                                                    Arredondamento ;
              FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Post;

              //CALCULAR TOTAL DAS PARCELAS
              TotParc := 0 ;
              FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.First;
              while not FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.EOF do
              begin
                TotParc := TotParc + FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempVALORVENCTO.Value ;
                FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Next;
              end ;
              TotParc := StrToFloat(FloatToStr(Acumulado+Entrada)) -
                         StrToFloat(FloatToStr(TotParc)) ;
              FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.First;
              FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Edit;
              FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempVALORVENCTO.Value := FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempVALORVENCTO.Value +
                                                                                             TotParc ;
              FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Post ;
            end;
        'U'://Arrendondamentos para a Primeira Última
            begin
              FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Last ;
              FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Prior ;
              while not FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Bof do
              begin
                Arredondamento := Arredondamento +
                                  Frac(FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempVALORVENCTO.Value) ;
                FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Edit ;
                FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempVALORVENCTO.Value := FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempVALORVENCTO.Value -
                                                                                      Frac(FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempVALORVENCTO.Value) ;
                FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Post ;
                FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Prior ;
              end;
              FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Last;
              FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Edit;
              FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempVALORVENCTO.Value := FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempVALORVENCTO.Value +
                                                                                    Arredondamento ;
              FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Post;

              //CALCULAR TOTAL DAS PARCELAS
              TotParc := 0 ;
              FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.First;
              while not FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.EOF do
              begin
                TotParc := TotParc + FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempVALORVENCTO.Value ;

                FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Next ;
              end ;
              TotParc := StrToFloat(FloatToStr(Acumulado+Entrada)) -
                         StrToFloat(FloatToStr(TotParc)) ;
              FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Last;
              FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Edit;
              FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempVALORVENCTO.Value := FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempVALORVENCTO.Value +
                                                                                    TotParc ;
              FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Post;
            end;
        'N'://Nâo Arrendondamentos
            begin
              //CALCULAR TOTAL DAS PARCELAS
              {TotParc := 0 ;
              Dm.TblMEMParcelas.First;
              while not Dm.TblMEMParcelas.EOF do
              begin
                TotParc := TotParc + Dm.TblMEMParcelasContratoParcelaValor.Value ;
                Dm.TblMEMParcelas.Next;
              end ;
              TotParc := StrToFloat(FloatToStr(Acumulado+Entrada)) -
                         StrToFloat(FloatToStr(TotParc)) ;
              FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Last;
              FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Edit;
              FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempContratoParcelaValor.Value := FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempContratoParcelaValor.Value +
                                                             TotParc ;
              FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempContratoParcelaSaldo.Value := FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempContratoParcelaValor.Value ;
              FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Post;}
            end;
      end ;
    end ;
  end ;

  //VER O PLANO É COM ENTRADA, SE FOR DEVE JOGAR O VALOR DA ENTRADA PARA O CAMPO ENTRADA
  //E DELETAR DAS PARCELAS POIS SERÁ GRAVADO NUMA TABELA DIFERENTE
  FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.First ;
  if FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempDATAVENCTO.Value = Date then
  begin
    EntradaCalc := FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempVALORVENCTO.Value ;
    FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Delete ;
  end
  else EntradaCalc := 0 ;

  FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Close ;
  FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Open ;
  FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.EnableControls ;
end ;

procedure AtualizaTotaisCabecalhoContasReceber(NroDocumento : string) ;
var
  RECEN2VLRRECTO,
  RECEN2VLRJURO,
  RECEN2DESC,
  RECEN2VLRMULTA : double ;
  DATAULTREC     : TDateTime ;
  EMPRULTREC  : integer ;
begin
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select sum(RECEN2VLRRECTO) AS RECTO,') ;
  DM.SQLTemplate.SQL.Add('sum(RECEN2VLRJURO) AS JURO,') ;
  DM.SQLTemplate.SQL.Add('sum(RECEN2DESC) AS DESCO,') ;
  DM.SQLTemplate.SQL.Add('sum(RECEN2VLRMULTA) AS MULTA from RECEBIMENTO') ;
  DM.SQLTemplate.SQL.Add('where CTRCA13ID = "' + NroDocumento + '"') ;
  DM.SQLTemplate.SQL.Add('group by CTRCA13ID') ;
  DM.SQLTemplate.Open ;
  if not DM.SQLTemplate.EOF then
  begin
    RECEN2VLRRECTO := DM.SQLTemplate.FieldByName('RECTO').Value ;
    RECEN2VLRJURO  := DM.SQLTemplate.FieldByName('JURO').Value ;
    RECEN2DESC     := DM.SQLTemplate.FieldByName('DESCO').Value ;
    RECEN2VLRMULTA := DM.SQLTemplate.FieldByName('MULTA').Value ;

    DM.SQLTemplate.Close ;
    DM.SQLTemplate.SQL.Clear ;
    DM.SQLTemplate.SQL.Add('select RECEDRECTO,EMPRICODREC from RECEBIMENTO') ;
    DM.SQLTemplate.SQL.Add('where CTRCA13ID = "' + NroDocumento + '"') ;
    DM.SQLTemplate.SQL.Add('order by RECEDRECTO') ;
    DM.SQLTemplate.Open ;
    DM.SQLTemplate.Last ;
    DATAULTREC := DM.SQLTemplate.FieldByName('RECEDRECTO').Value ;
    EMPRULTREC := DM.SQLTemplate.FieldByName('EMPRICODREC').Value ;

    DM.SQLTemplate.Close ;
    DM.SQLTemplate.SQL.Clear ;
    DM.SQLTemplate.SQL.Add('update CONTASRECEBER') ;
    DM.SQLTemplate.SQL.Add('set') ;
    DM.SQLTemplate.SQL.Add('CTRCDULTREC = "'  + FormatDateTime('mm/dd/yyyy', DATAULTREC) + '", ') ;
    DM.SQLTemplate.SQL.Add('CTRCN2TOTREC = ' + ConvFloatToStr(RECEN2VLRRECTO) + ', ') ;
    DM.SQLTemplate.SQL.Add('CTRCN2TOTJUROREC = ' + ConvFloatToStr(RECEN2VLRJURO)  + ', ') ;
    DM.SQLTemplate.SQL.Add('CTRCN2TOTMULTAREC = ' + ConvFloatToStr(RECEN2VLRMULTA) + ', ') ;
    DM.SQLTemplate.SQL.Add('CTRCN2TOTDESCREC = ' + ConvFloatToStr(RECEN2DESC) + ', ') ;
    DM.SQLTemplate.SQL.Add('EMPRICODULTREC = ' + IntToStr(EMPRULTREC)) ;
    DM.SQLTemplate.SQL.Add('where CTRCA13ID = "' + NroDocumento + '"') ;
    DM.SQLTemplate.ExecSQL ;
  end ;
end ;

function RetornaTotalizadorIcmsECF(EcfID, CodICMS : string) : string ;
begin
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select * from ECFALIQUOTAICMS') ;
  DM.SQLTemplate.SQL.Add('where ECFA13ID = "' + EcfID + '"') ;
  DM.SQLTemplate.SQL.Add('and   ICMSICOD = ' + CodICMS) ;
  DM.SQLTemplate.Open ;
  if DM.SQLTemplate.Fieldbyname('ECALA5TOTALIECF').AsString <> '' then
    RetornaTotalizadorIcmsECF := DM.SQLTemplate.Fieldbyname('ECALA5TOTALIECF').AsString
  else
    RetornaTotalizadorIcmsECF := '' ;
end ;

function RetornaTotalizadorNumerarioECF(EcfID, CodNumerario : string) : String ;
begin
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select * from NUMERARIOTOTALIZADORECF') ;
  DM.SQLTemplate.SQL.Add('where ECFA13ID = "' + EcfID + '"') ;
  DM.SQLTemplate.SQL.Add('and   NUMEICOD = ' + CodNumerario) ;
  DM.SQLTemplate.Open ;
  if DM.SQLTemplate.Fieldbyname('NUTCA5IDENTIFICADOR').AsString <> '' then
    RetornaTotalizadorNumerarioECF := DM.SQLTemplate.Fieldbyname('NUTCA5IDENTIFICADOR').AsString
  else
    RetornaTotalizadorNumerarioECF := '' ;
end ;

function ConverteAcentos(Str : string) : string ;
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

function CalculaSaldoCaderno(Cliente : string) : Double ;
begin
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select Sum(CLCAN2VLRCREDITO) - Sum(CLCAN2VLRDEBITO) as Saldo') ;
  DM.SQLTemplate.SQL.Add('from CADERNO') ;
  DM.SQLTemplate.SQL.Add('where CLIEA13ID = "' + Cliente + '"') ;
  DM.SQLTemplate.Open ;
  if DM.SQLTemplate.FieldByName('Saldo').Value > 0 then
    CalculaSaldoCaderno := DM.SQLTemplate.FieldByName('Saldo').Value
  else
    CalculaSaldoCaderno := 0 ;
end ;

function CalculaTotalRetornoConsignacao : Double ;
begin
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select Sum(VLRTOTAL) as TotalRetorno') ;
  DM.SQLTemplate.SQL.Add('from ITENSRETORNOTEMP') ;
  DM.SQLTemplate.SQL.Add('where CLIENTE  = "' + ClienteVenda + '"') ;
  DM.SQLTemplate.SQL.Add('and   TERMICOD = ' + IntToStr(TerminalAtual)) ;
  DM.SQLTemplate.Open ;
  if DM.SQLTemplate.FieldByName('TotalRetorno').Value > 0 then
    CalculaTotalRetornoConsignacao := DM.SQLTemplate.FieldByName('TotalRetorno').Value
  else
    CalculaTotalRetornoConsignacao := 0 ;
end ;

function VerificaSePlanoTemParcelaVista(Plano : string) : boolean ;
begin
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select PLRCICOD, PLRPINRODIAS from PLANORECEBIMENTOPARCELA') ;
  DM.SQLTemplate.SQL.Add('where PLRCICOD = ' + Plano) ;
  DM.SQLTemplate.SQL.Add('and   PLRPINRODIAS = 0') ;
  DM.SQLTemplate.Open ;
  if not DM.SQLTemplate.EOF then
    VerificaSePlanoTemParcelaVista := true
  else
    VerificaSePlanoTemParcelaVista := false ;
end ;

procedure GravaArqTexto(Str, NomeArq : String) ;
var TxtFil : TextFile ;
begin
  AssignFile(TxtFil, NomeArq) ;
  Rewrite(TxtFil) ;
  WriteLn( TxtFil, Str) ;
  Closefile(TxtFil) ;
end ;

end.


