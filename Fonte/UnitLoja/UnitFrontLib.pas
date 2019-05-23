unit UnitFrontLib;

interface

uses IBTable, MemTable, Menus, Stdctrls, Classes, Windows, Forms,
     DBTables, Controls, Dialogs, DB, JPeg, Sysutils, DBCtrls ;

const
  Enter : Word = 13 ;
  ScreenWidth : Longint  = 800 ;
  ScreenHeight : Longint = 600 ;

var
  WBookmark         : TBookmark ;
  MoviCaixConcluido,
  RetornoConsulta   : boolean ;
  VendedorAtual,
  UltimoCodigo,
  TerminalAtual,
  CodiTeleEntrega,
  NumItem           : Integer  ;
  CodiProduto,
  CodiCli,
  CodiMesa,
  CodiCOnta,
  CodiFunc,
  CodiEntreg,
  CodigoProduto,
  ClienteAtual,
  TerminalModo,
  UsuarioAtual,
  EmpresaPadrao,
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
  TerminalAtualData : string ;
  VlrLivreProd,
  DescPercItem,
  DescValItem       :  Double ;
  LogTotaliz        : TextFile ;

  //VARIAVEIS DE RETORNO DO CODIGO PRIMARIO DAS TELAS
  ProdutoCodigoRet,
  ClienteCodigoRet  : string ;

function  LocateByDisplayLabel(DataSet:TDataSet;DisplayLabel:String):Integer ;
procedure Informa(Texto:string) ;
function  Pergunta(BotaoDefault, Texto:string) : boolean ;
procedure CriaForm(NomeForm:string; ObjForm : TFormClass) ;
procedure IncluirTelaLista ;
procedure ExcluirTelaLista(NomeTela : string) ;
procedure CargaInicialTabelas ;
Function  DigitVerifEAN(Cod:string) : string ;
procedure DebugMsg(Msg : string) ;
function  DelUltVirg(Msg : string) : string ;
procedure EnviaDadosQuery(Tipo : string; Qry : TQuery; Tbl : TTable; UpdSQL : TUpdateSQL) ;
function  ValorCampo(Campo : TField) : Variant ;
function  ConvFloatToStr(Numero : Double) : string ;
function  ConvProdCod(Numero : string) : string ;
function  UltiDiaMes(Mes, Ano : string) : integer ;
procedure GravaMovimentoCaixa( WEMPRA3COD,
                               WTERMICOD,
                               WMOVICAIXDEMIS,
                               WMOVICAIXA15DOCORIG,
                               WMOVICAIXIDOCORIGPARC,
                               WOPERCAIXICOD,
                               WFUNCICOD,
                               WTIPO,
                               WMOVICAIXN2VLR,
                               WMOVICAIXA6NUMCUPOM,
                               WNUMEICOD,
                               WMOVICAIXTOBS,
                               WMOVICAIXDMOV : string ) ;

procedure GravaMovimentoEstoque(ProdCod:integer; Quant:double; EntrSai, Tipo, DataHora, Valor : String) ;

procedure GravarCCFuncionario( WEMPRA3COD,
                               WTERMICOD,
                               WCCFUNCDEMIS,
                               WFUNCICOD,
                               WTIPO,
                               WCCFUNCN2VLR,
                               WCCFUNCTOBS : string ) ;
implementation

uses DataModuloLoja ;

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
  Application.MessageBox(PChar(Texto), PChar('FrontCook'), MB_SYSTEMMODAL + MB_Ok + MB_IconExclamation)
end ;

function Pergunta(BotaoDefault, Texto:string) : boolean ;
begin
  if AnsiUpperCase(BotaoDefault) = 'SIM' then
  begin
    if Application.MessageBox(PChar(Texto), PChar('FrontCook'), MB_SYSTEMMODAL + MB_YesNo + MB_IconQuestion + MB_DEFBUTTON1) = IdYes then
      Pergunta := true
    else
      Pergunta := false ;
  end
  else
    if Application.MessageBox(PChar(Texto), PChar('FrontCook'), MB_SYSTEMMODAL + MB_YesNo + MB_IconQuestion + MB_DEFBUTTON2) = IdYes then
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

procedure CargaInicialTabelas ;
var
  Tabela : TObject ;
begin
  Exit ;
  {
  //EMPRESA
  if Application.FindComponent('DMLoja').FindComponent('IBSQL') <> nil then
  begin
    Tabela  := Application.FindComponent('DMLoja').FindComponent('IBSQL') ;
    (Tabela as TQuery).Close ;
    (Tabela as TQuery).SQL.Clear ;
    (Tabela as TQuery).SQL.Add('insert into EMPRESA') ;
    (Tabela as TQuery).SQL.Add('(EmprA3Cod, EmprA60RazSoc, EmprA60NomeFant, EmprA60MatFil)') ;
    (Tabela as TQuery).SQL.Add('Values(''001'', ''EMPRESA PADRAO'', ''EMPRESA PADRAO'', ''M'')') ;
    try
      (Tabela as TQuery).ExecSQL ;
    except
    end ;
  end ;

  //CONFIGURACOES
  Tabela := Application.FindComponent('DMLoja').FindComponent('TblConfiguracao') ;
  (Tabela as TIBTable).Open ;
  if (Tabela as TIBTable).Recordcount = 0 then
  begin
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('EmprA3Cod').AsString      := '001' ;
    (Tabela as TIBTable).FieldByName('ConfA15Versao').AsString  := '' ;
    (Tabela as TIBTable).FieldByName('ConfN2TaxaServ').AsString := '0' ;
    (Tabela as TIBTable).FieldByName('ConfCPedeFunc').AsString  := 'S' ;
    (Tabela as TIBTable).FieldByName('ConfCPedeConta').AsString := 'S' ;
    (Tabela as TIBTable).Post ;
    (Tabela as TIBTable).Close ;
  end ;
  //TERMINAL
  Tabela := Application.FindComponent('DMLoja').FindComponent('TblTerminal') ;
  (Tabela as TIBTable).Open ;
  if (Tabela as TIBTable).Recordcount = 0 then
  begin
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('EmprA3Cod').AsString     := '001' ;
    (Tabela as TIBTable).FieldByName('TermICod').AsString      := '1' ;
    (Tabela as TIBTable).FieldByName('TermA30Descr').AsString  := 'PADRAO' ;
    (Tabela as TIBTable).FieldByName('TermCCaixStat').AsString := 'A' ;
    (Tabela as TIBTable).FieldByName('TermDCaix').Value        := Now ;
    (Tabela as TIBTable).Post ;
    (Tabela as TIBTable).Close ;
  end ;
  //FUNCIONARIO
  Tabela := Application.FindComponent('DMLoja').FindComponent('TblFuncionario') ;
  (Tabela as TIBTable).Open ;
  if (Tabela as TIBTable).Recordcount = 0 then
  begin
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('FuncICod').AsString    := '1' ;
    (Tabela as TIBTable).FieldByName('FuncA30Nome').AsString := 'MASTER' ;
    (Tabela as TIBTable).FieldByName('FuncN2Comis').AsString := '0' ;
    (Tabela as TIBTable).FieldByName('FuncA5Senha').AsString := '' ;
    (Tabela as TIBTable).Post ;
    (Tabela as TIBTable).Close ;
  end ;
  //OPERRACOES DE CAIXA
  Tabela := Application.FindComponent('DMLoja').FindComponent('TblOperacaoCaixa') ;
  (Tabela as TIBTable).Open ;
  if (Tabela as TIBTable).Recordcount = 0 then
  begin
    Screen.Cursor := crHourglass ;
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('OperCaixICod').AsString        := '1' ;
    (Tabela as TIBTable).FieldByName('OperCaixA30Descr').AsString    := 'Abert.Caixa' ;
    (Tabela as TIBTable).FieldByName('OperCaixCDebCred').AsString    := 'C' ;
    (Tabela as TIBTable).FieldByName('OperCaixCTotRelCaix').AsString := 'S' ;
    (Tabela as TIBTable).Post ;
    //*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('OperCaixICod').AsString        := '2' ;
    (Tabela as TIBTable).FieldByName('OperCaixA30Descr').AsString    := 'Fech.Caixa' ;
    (Tabela as TIBTable).FieldByName('OperCaixCDebCred').AsString    := 'N' ;
    (Tabela as TIBTable).FieldByName('OperCaixCTotRelCaix').AsString := 'S' ;
    (Tabela as TIBTable).Post ;
    //*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('OperCaixICod').AsString        := '3' ;
    (Tabela as TIBTable).FieldByName('OperCaixA30Descr').AsString    := 'Recto.Pendura' ;
    (Tabela as TIBTable).FieldByName('OperCaixCDebCred').AsString    := 'N' ;
    (Tabela as TIBTable).FieldByName('OperCaixCTotRelCaix').AsString := 'S' ;
    (Tabela as TIBTable).Post ;
    //*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('OperCaixICod').AsString        := '8' ;
    (Tabela as TIBTable).FieldByName('OperCaixA30Descr').AsString    := 'Sangria' ;
    (Tabela as TIBTable).FieldByName('OperCaixCDebCred').AsString    := 'D' ;
    (Tabela as TIBTable).FieldByName('OperCaixCTotRelCaix').AsString := 'S' ;
    (Tabela as TIBTable).Post ;
    {*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('OperCaixICod').AsString        := '10' ;
    (Tabela as TIBTable).FieldByName('OperCaixA30Descr').AsString    := 'Suprimento' ;
    (Tabela as TIBTable).FieldByName('OperCaixCDebCred').AsString    := 'C' ;
    (Tabela as TIBTable).FieldByName('OperCaixCTotRelCaix').AsString := 'S' ;
    (Tabela as TIBTable).Post ;
    {*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('OperCaixICod').AsString        := '11' ;
    (Tabela as TIBTable).FieldByName('OperCaixA30Descr').AsString    := 'Repique' ;
    (Tabela as TIBTable).FieldByName('OperCaixCDebCred').AsString    := 'C' ;
    (Tabela as TIBTable).FieldByName('OperCaixCTotRelCaix').AsString := 'S' ;
    (Tabela as TIBTable).Post ;
    {*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('OperCaixICod').AsString        := '12' ;
    (Tabela as TIBTable).FieldByName('OperCaixA30Descr').AsString    := 'Pagto.Comissão' ;
    (Tabela as TIBTable).FieldByName('OperCaixCDebCred').AsString    := 'C' ;
    (Tabela as TIBTable).FieldByName('OperCaixCTotRelCaix').AsString := 'S' ;
    (Tabela as TIBTable).Post ;
    {*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('OperCaixICod').AsString        := '14' ;
    (Tabela as TIBTable).FieldByName('OperCaixA30Descr').AsString    := 'Subst.Bobina' ;
    (Tabela as TIBTable).FieldByName('OperCaixCDebCred').AsString    := 'N' ;
    (Tabela as TIBTable).FieldByName('OperCaixCTotRelCaix').AsString := 'N' ;
    (Tabela as TIBTable).Post ;
    {*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('OperCaixICod').AsString        := '16' ;
    (Tabela as TIBTable).FieldByName('OperCaixA30Descr').AsString    := 'Estorno' ;
    (Tabela as TIBTable).FieldByName('OperCaixCDebCred').AsString    := 'D' ;
    (Tabela as TIBTable).FieldByName('OperCaixCTotRelCaix').AsString := 'S' ;
    (Tabela as TIBTable).Post ;
    {*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('OperCaixICod').AsString        := '18' ;
    (Tabela as TIBTable).FieldByName('OperCaixA30Descr').AsString    := 'Desc.Venda' ;
    (Tabela as TIBTable).FieldByName('OperCaixCDebCred').AsString    := 'D' ;
    (Tabela as TIBTable).FieldByName('OperCaixCTotRelCaix').AsString := 'S' ;
    (Tabela as TIBTable).Post ;
    {*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('OperCaixICod').AsString        := '20' ;
    (Tabela as TIBTable).FieldByName('OperCaixA30Descr').AsString    := 'Troca Oper.' ;
    (Tabela as TIBTable).FieldByName('OperCaixCDebCred').AsString    := 'N' ;
    (Tabela as TIBTable).FieldByName('OperCaixCTotRelCaix').AsString := 'N' ;
    (Tabela as TIBTable).Post ;
    {*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('OperCaixICod').AsString        := '22' ;
    (Tabela as TIBTable).FieldByName('OperCaixA30Descr').AsString    := 'Troco' ;
    (Tabela as TIBTable).FieldByName('OperCaixCDebCred').AsString    := 'D' ;
    (Tabela as TIBTable).FieldByName('OperCaixCTotRelCaix').AsString := 'N' ;
    (Tabela as TIBTable).Post ;
    {*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('OperCaixICod').AsString        := '24' ;
    (Tabela as TIBTable).FieldByName('OperCaixA30Descr').AsString    := 'Leitura X' ;
    (Tabela as TIBTable).FieldByName('OperCaixCDebCred').AsString    := 'N' ;
    (Tabela as TIBTable).FieldByName('OperCaixCTotRelCaix').AsString := 'N' ;
    (Tabela as TIBTable).Post ;
    {*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('OperCaixICod').AsString        := '26' ;
    (Tabela as TIBTable).FieldByName('OperCaixA30Descr').AsString    := 'Redução Z' ;
    (Tabela as TIBTable).FieldByName('OperCaixCDebCred').AsString    := 'N' ;
    (Tabela as TIBTable).FieldByName('OperCaixCTotRelCaix').AsString := 'N' ;
    (Tabela as TIBTable).Post ;
    {*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('OperCaixICod').AsString        := '28' ;
    (Tabela as TIBTable).FieldByName('OperCaixA30Descr').AsString    := 'Venda à Vista' ;
    (Tabela as TIBTable).FieldByName('OperCaixCDebCred').AsString    := 'C' ;
    (Tabela as TIBTable).FieldByName('OperCaixCTotRelCaix').AsString := 'S' ;
    (Tabela as TIBTable).Post ;
    {*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('OperCaixICod').AsString        := '30' ;
    (Tabela as TIBTable).FieldByName('OperCaixA30Descr').AsString    := 'Entr.Venda Créd.' ;
    (Tabela as TIBTable).FieldByName('OperCaixCDebCred').AsString    := 'C' ;
    (Tabela as TIBTable).FieldByName('OperCaixCTotRelCaix').AsString := 'S' ;
    (Tabela as TIBTable).Post ;
    {*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('OperCaixICod').AsString        := '32' ;
    (Tabela as TIBTable).FieldByName('OperCaixA30Descr').AsString    := 'Venda à Crédito' ;
    (Tabela as TIBTable).FieldByName('OperCaixCDebCred').AsString    := 'C' ;
    (Tabela as TIBTable).FieldByName('OperCaixCTotRelCaix').AsString := 'N' ;
    (Tabela as TIBTable).Post ;
    {*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('OperCaixICod').AsString        := '34' ;
    (Tabela as TIBTable).FieldByName('OperCaixA30Descr').AsString    := 'Venda Cheque-Pré' ;
    (Tabela as TIBTable).FieldByName('OperCaixCDebCred').AsString    := 'C' ;
    (Tabela as TIBTable).FieldByName('OperCaixCTotRelCaix').AsString := 'S' ;
    (Tabela as TIBTable).Post ;
    {*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('OperCaixICod').AsString        := '36' ;
    (Tabela as TIBTable).FieldByName('OperCaixA30Descr').AsString    := 'Venda Cart.Créd.' ;
    (Tabela as TIBTable).FieldByName('OperCaixCDebCred').AsString    := 'C' ;
    (Tabela as TIBTable).FieldByName('OperCaixCTotRelCaix').AsString := 'S' ;
    (Tabela as TIBTable).Post ;
    {*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('OperCaixICod').AsString        := '40' ;
    (Tabela as TIBTable).FieldByName('OperCaixA30Descr').AsString    := 'Cancel.Últ.Cupom' ;
    (Tabela as TIBTable).FieldByName('OperCaixCDebCred').AsString    := 'N' ;
    (Tabela as TIBTable).FieldByName('OperCaixCTotRelCaix').AsString := 'N' ;
    (Tabela as TIBTable).Post ;
    {*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('OperCaixICod').AsString        := '42' ;
    (Tabela as TIBTable).FieldByName('OperCaixA30Descr').AsString    := 'Vale Func.' ;
    (Tabela as TIBTable).FieldByName('OperCaixCDebCred').AsString    := 'D' ;
    (Tabela as TIBTable).FieldByName('OperCaixCTotRelCaix').AsString := 'S' ;
    (Tabela as TIBTable).Post ;
    {*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('OperCaixICod').AsString        := '44' ;
    (Tabela as TIBTable).FieldByName('OperCaixA30Descr').AsString    := 'Recto.L.P.' ;
    (Tabela as TIBTable).FieldByName('OperCaixCDebCred').AsString    := 'C' ;
    (Tabela as TIBTable).FieldByName('OperCaixCTotRelCaix').AsString := 'N' ;
    (Tabela as TIBTable).Post ;
    {*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('OperCaixICod').AsString        := '46' ;
    (Tabela as TIBTable).FieldByName('OperCaixA30Descr').AsString    := 'Juros Recto.L.P.';
    (Tabela as TIBTable).FieldByName('OperCaixCDebCred').AsString    := 'C' ;
    (Tabela as TIBTable).FieldByName('OperCaixCTotRelCaix').AsString := 'N' ;
    (Tabela as TIBTable).Post ;
    {*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('OperCaixICod').AsString        := '48' ;
    (Tabela as TIBTable).FieldByName('OperCaixA30Descr').AsString    := 'Multa Recto.L.P.' ;
    (Tabela as TIBTable).FieldByName('OperCaixCDebCred').AsString    := 'C' ;
    (Tabela as TIBTable).FieldByName('OperCaixCTotRelCaix').AsString := 'N' ;
    (Tabela as TIBTable).Post ;
    {*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('OperCaixICod').AsString        := '52' ;
    (Tabela as TIBTable).FieldByName('OperCaixA30Descr').AsString    := 'Rectos.Diversos' ;
    (Tabela as TIBTable).FieldByName('OperCaixCDebCred').AsString    := 'C' ;
    (Tabela as TIBTable).FieldByName('OperCaixCTotRelCaix').AsString := 'S' ;
    (Tabela as TIBTable).Post ;
    {*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('OperCaixICod').AsString        := '54' ;
    (Tabela as TIBTable).FieldByName('OperCaixA30Descr').AsString    := 'Recto.Parc.Venda Cred.' ;
    (Tabela as TIBTable).FieldByName('OperCaixCDebCred').AsString    := 'C' ;
    (Tabela as TIBTable).FieldByName('OperCaixCTotRelCaix').AsString := 'S' ;
    (Tabela as TIBTable).Post ;
    {*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('OperCaixICod').AsString        := '56' ;
    (Tabela as TIBTable).FieldByName('OperCaixA30Descr').AsString    := 'Juros Recto.Parc.Venda Cred.' ;
    (Tabela as TIBTable).FieldByName('OperCaixCDebCred').AsString    := 'C' ;
    (Tabela as TIBTable).FieldByName('OperCaixCTotRelCaix').AsString := 'S' ;
    (Tabela as TIBTable).Post ;
    {*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('OperCaixICod').AsString        := '58' ;
    (Tabela as TIBTable).FieldByName('OperCaixA30Descr').AsString    := 'Multa Recto.Parc.Venda Cred.' ;
    (Tabela as TIBTable).FieldByName('OperCaixCDebCred').AsString    := 'C' ;
    (Tabela as TIBTable).FieldByName('OperCaixCTotRelCaix').AsString := 'S' ;
    (Tabela as TIBTable).Post ;
    {*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('OperCaixICod').AsString        := '60' ;
    (Tabela as TIBTable).FieldByName('OperCaixA30Descr').AsString    := 'Desc.Recto.Parc.Venda Cred.' ;
    (Tabela as TIBTable).FieldByName('OperCaixCDebCred').AsString    := 'D' ;
    (Tabela as TIBTable).FieldByName('OperCaixCTotRelCaix').AsString := 'S' ;
    (Tabela as TIBTable).Post ;
    Screen.Cursor := crDefault ;

    (Tabela as TIBTable).Close ;
  end ;

  //OPERRACOES DE CAIXA
  Tabela := Application.FindComponent('DMLoja').FindComponent('TblNumerario') ;
  (Tabela as TIBTable).Open ;
  if (Tabela as TIBTable).Recordcount = 0 then
  begin
    Screen.Cursor := crHourglass ;
    {*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('NUMEICOD').AsString         := '1' ;
    (Tabela as TIBTable).FieldByName('NUMEA15DESCR').AsString     := 'DINHEIRO' ;
    (Tabela as TIBTable).FieldByName('NUMECVISTAPRAZO').AsString  := 'V' ;
    (Tabela as TIBTable).FieldByName('NUMEA2TOTALIZECF').AsString := '' ;
    (Tabela as TIBTable).FieldByName('NUMECPENDURA').AsString 	  := 'N' ;
    (Tabela as TIBTable).FieldByName('OPERCAIXICOD').AsString     := '28' ;
    (Tabela as TIBTable).Post ;
    {*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('NUMEICOD').AsString         := '2' ;
    (Tabela as TIBTable).FieldByName('NUMEA15DESCR').AsString     := 'CHEQUE' ;
    (Tabela as TIBTable).FieldByName('NUMECVISTAPRAZO').AsString  := 'V' ;
    (Tabela as TIBTable).FieldByName('NUMEA2TOTALIZECF').AsString := '' ;
    (Tabela as TIBTable).FieldByName('NUMECPENDURA').AsString 	  := 'N' ;
    (Tabela as TIBTable).FieldByName('OPERCAIXICOD').AsString     := '28' ;
    (Tabela as TIBTable).Post ;
    {*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('NUMEICOD').AsString         := '3' ;
    (Tabela as TIBTable).FieldByName('NUMEA15DESCR').AsString     := 'CARTAO' ;
    (Tabela as TIBTable).FieldByName('NUMECVISTAPRAZO').AsString  := 'V' ;
    (Tabela as TIBTable).FieldByName('NUMEA2TOTALIZECF').AsString := '' ;
    (Tabela as TIBTable).FieldByName('NUMECPENDURA').AsString 	  := 'N' ;
    (Tabela as TIBTable).FieldByName('OPERCAIXICOD').AsString     := '28' ;
    (Tabela as TIBTable).Post ;
    {*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('NUMEICOD').AsString         := '4' ;
    (Tabela as TIBTable).FieldByName('NUMEA15DESCR').AsString     := 'TICKET' ;
    (Tabela as TIBTable).FieldByName('NUMECVISTAPRAZO').AsString  := 'V' ;
    (Tabela as TIBTable).FieldByName('NUMEA2TOTALIZECF').AsString := '' ;
    (Tabela as TIBTable).FieldByName('NUMECPENDURA').AsString 	  := 'N' ;
    (Tabela as TIBTable).FieldByName('OPERCAIXICOD').AsString     := '' ;
    (Tabela as TIBTable).Post ;
    {*------------------------------------------------------------------------*
    (Tabela as TIBTable).Append ;
    (Tabela as TIBTable).FieldByName('NUMEICOD').AsString         := '5' ;
    (Tabela as TIBTable).FieldByName('NUMEA15DESCR').AsString     := 'PENDURA' ;
    (Tabela as TIBTable).FieldByName('NUMECVISTAPRAZO').AsString  := 'P' ;
    (Tabela as TIBTable).FieldByName('NUMEA2TOTALIZECF').AsString := '' ;
    (Tabela as TIBTable).FieldByName('NUMECPENDURA').AsString 	  := 'S' ;
    (Tabela as TIBTable).FieldByName('OPERCAIXICOD').AsString     := '' ;
    (Tabela as TIBTable).Post ;
    Screen.Cursor := crDefault ;
    (Tabela as TIBTable).Close ;
  end ;}
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

procedure EnviaDadosQuery(Tipo : string; Qry : TQuery; Tbl : TTable; UpdSQL : TUpdateSQL) ;
var Campos,
    CampoID,
    CampoCod,
    SQLLin,
    Dados    : string ;
    ProxCod,
    NumTentativas,
    i        : integer ;
    Sair     : boolean ;
begin

  if Tipo = 'Incluir' then
  begin
    //O POST NA TABELA TEMPORÁRIA DEVE SER EXECUTADO ANTES PARA QUE O(S)
    //CAMPO(S) ALTERADO(S) SEJAM GRAVADOS
    Tbl.Post ;

    CampoID  := '' ;
    CampoCod := '' ;
    ProxCod  := 0 ;

    for i := 0 to Qry.Fields.Count-1 do
      if (Pos('2', IntToStr(Qry.Fields[i].Tag)) > 0)and
         (not Qry.Fields[i].Lookup) and (not Qry.Fields[i].Calculated) then
      begin
        CampoID := Qry.Fields[i].FieldName ;
        Break ;
      end ;

    for i := 0 to Qry.Fields.Count-1 do
      if (Pos('3', IntToStr(Qry.Fields[i].Tag)) > 0)and
         (not Qry.Fields[i].Lookup) and (not Qry.Fields[i].Calculated) then
      begin
        CampoCod := Qry.Fields[i].FieldName ;
        Break ;
      end ;

    if (CampoCod <> '') and (CampoID = '') then
    begin
      ProxCod := DMLoja.ProximoCodigo(Tbl.TableName, CampoCod, '') ;
      Tbl.Edit ;
      Tbl.FieldByName(CampoCod).AsInteger := ProxCod ;
    end ;

    if (CampoCod <> '') and (CampoID <> '') then
    begin
      ProxCod := DMLoja.ProximoCodigo(Tbl.TableName, CampoCod, DMLoja.QryConfiguracaoEmprA3Cod.AsString) ;

      Tbl.Edit ;
      Tbl.FieldByName(CampoID).AsString     := DMLoja.QryConfiguracaoEmprA3Cod.AsString +
                                               FormatFloat('000000000', StrToFloat(IntToStr(ProxCod))) +
                                               DigitVerifEAN(DMLoja.QryConfiguracaoEmprA3Cod.AsString + FormatFloat('000000000', StrToFloat(IntToStr(ProxCod)))) ;
      Tbl.FieldByName('EmprA3Cod').AsString := DMLoja.QryConfiguracaoEmprA3Cod.AsString ;
      Tbl.FieldByName(CampoCod).AsInteger   := ProxCod ;

      CodiCli := Tbl.FieldByName(CampoID).AsString ;
    end ;

    Campos := '' ;
    Dados  := '' ;
    for i := 0 to Qry.Fields.Count-1 do
    begin
      if (not Qry.Fields[i].Lookup) and (not Qry.Fields[i].Calculated) then
      begin
        //if Tbl.FieldByName(Qry.Fields[i].FieldName).AsString <> '' then
        //begin
          Campos := Campos + Qry.Fields[i].FieldName + ',' ;
          Dados  := Dados  + ValorCampo(Tbl.FieldByName(Qry.Fields[i].FieldName)) + ',' ;
        //end ;
      end ;
    end ;

    Campos := DelUltVirg(Campos) ;
    Dados := DelUltVirg(Dados) ;

    UpdSQL.InsertSQL.Clear ;
    UpdSQL.InsertSQL.Add('Insert Into ' + Tbl.TableName) ;
    UpdSQL.InsertSQL.Add('(' + Campos + ')') ;
    UpdSQL.InsertSQL.Add('Values') ;
    UpdSQL.InsertSQL.Add('(' + Dados + ')') ;

    Sair          := false ;
    NumTentativas := 0 ;
    while (not Sair) and (NumTentativas < 100) do
    begin
      try
        UpdSQL.ExecSQL(ukInsert) ;
        Sair := true ;
      except
        Inc(NumTentativas) ;
        ProxCod := ProxCod + 1 ;
        if (CampoCod <> '') and (CampoID = '') then
          Tbl.FieldByName(CampoCod).AsInteger := ProxCod ;

        if (CampoCod <> '') and (CampoID <> '') then
        begin
          Tbl.FieldByName(CampoID).AsString      := DMLoja.QryConfiguracaoEmprA3Cod.AsString + FormatFloat('000000000', StrToFloat(IntToStr(ProxCod))) +
                                                    DigitVerifEAN(DMLoja.QryConfiguracaoEmprA3Cod.AsString + FormatFloat('000000000', StrToFloat(IntToStr(ProxCod)))) ;
          Tbl.FieldByName('EmprA13Cod').AsString := DMLoja.QryConfiguracaoEmprA3Cod.AsString ;
          Tbl.FieldByName(CampoCod).AsInteger    := ProxCod ;
        end ;
      end ;

    end ;

    if NumTentativas > 99 then
    begin
      Informa('Houveram problemas ao gerar o código para o campo ' +
              Qry.FieldByName(CampoCod).DisplayLabel +
              ' da Tabela ' + Tbl.TableName) ;
      exit ;
    end ;
    Tbl.Post ;

  end ;

  if Tipo = 'Alterar' then
  begin
    //O POST NA TABELA TEMPORÁRIA DEVE SER EXECUTADO ANTES PARA QUE O(S)
    //CAMPO(S) ALTERADO(S) SEJAM GRAVADOS
    Tbl.Post ;

    SQLLin := '' ;
    SQLLin := SQLLin + 'Update ' + Tbl.TableName + ' Set ' ;

    for i := 0 to Qry.Fields.Count-1 do
    begin
      if (not Qry.Fields[i].Lookup) and (not Qry.Fields[i].Calculated) then
        if (Qry.Fields[i].Tag = 0) or (Pos('99', IntToStr(Qry.Fields[i].Tag)) > 0) then
        begin
          if (Tbl.FieldByName(Qry.Fields[i].FieldName).AsString <> '') then
            SQLLin := SQLLin + Qry.Fields[i].FieldName + ' = ' + ValorCampo(Tbl.FieldByName(Qry.Fields[i].FieldName)) + ',' ;
        end ;
    end ;

    SQLLin := DelUltVirg(SQLLin) ;
    SQLLin := SQLLin + ' Where ' ;

    //O LOOP ABAIXO ENCONTRA OS CAMPOS DA CHAVE PRIMARIA P/MONTAR A CLAUSULA WHERE
    //DO SQL UPDATE
    Qry.FieldDefs.Update ;
    for i := 0 to Qry.Fields.Count-1 do
    begin
      //Procura-se o num.1 no TAG pois isto inidica chave primária
      if (Pos('1', IntToStr(Qry.Fields[i].Tag)) > 0)and
         (not Qry.Fields[i].Lookup) and
         (not Qry.Fields[i].Calculated) then
        SQLLin := SQLLin + Qry.Fields[i].FieldName + ' = ' + ValorCampo(Tbl.FieldByName(Qry.Fields[i].FieldName)) + ' and ' ;

    end ;
    SQLLin := Copy(SQLLin, 1, Length(SQLLin)-4) ;

    UpdSQL.ModifySQL.Clear ;
    UpdSQL.ModifySQL.Add(SQLLin) ;

    UpdSQL.ExecSQL(ukModify) ;
    //Qry.Refresh ;
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

procedure GravaMovimentoCaixa( WEMPRA3COD,
                               WTERMICOD,
                               WMOVICAIXDEMIS,
                               WMOVICAIXA15DOCORIG,
                               WMOVICAIXIDOCORIGPARC,
                               WOPERCAIXICOD,
                               WFUNCICOD,
                               WTIPO,
                               WMOVICAIXN2VLR,
                               WMOVICAIXA6NUMCUPOM,
                               WNUMEICOD,
                               WMOVICAIXTOBS,
                               WMOVICAIXDMOV : string ) ;
var
  ProxCod : string ;
begin
  //GERAR CODIGO MOVIMENTO CAIXA
  DMLoja.IBSQL.Close ;
  DMLoja.IBSQL.SQL.Clear ;
  DMLoja.IBSQL.SQL.Add('select max(MOVICAIXICOD) from MOVIMENTOCAIXA') ;
  DMLoja.IBSQL.SQL.Add('where') ;
  DMLoja.IBSQL.SQL.Add('EMPRA3COD = "' + WEMPRA3COD + '" and') ;
  DMLoja.IBSQL.SQL.Add('TERMICOD = '   + WTERMICOD + ' and') ;
  DMLoja.IBSQL.SQL.Add('MOVICAIXDMOV = "'  + WMOVICAIXDMOV + '"') ;
  DMLoja.IBSQL.ExecSQL ;
  DMLoja.IBSQL.Open ;
  ProxCod := IntToStr(DMLoja.IBSQL.FieldByName('Max').AsInteger + 1) ;

  //GRAVA LANCAMENTO DO CAIXA
  DMLoja.IBSQL.Close ;
  DMLoja.IBSQL.SQL.Clear ;
  DMLoja.IBSQL.SQL.Add('insert into MOVIMENTOCAIXA') ;
  DMLoja.IBSQL.SQL.Add('(EMPRA3COD,') ;
  DMLoja.IBSQL.SQL.Add('TERMICOD,') ;
  DMLoja.IBSQL.SQL.Add('MOVICAIXDEMIS,') ;
  DMLoja.IBSQL.SQL.Add('MOVICAIXICOD,') ;
  DMLoja.IBSQL.SQL.Add('MOVICAIXA15DOCORIG,') ;
  DMLoja.IBSQL.SQL.Add('MOVICAIXIDOCORIGPARC,') ;
  DMLoja.IBSQL.SQL.Add('OPERCAIXICOD,') ;
  DMLoja.IBSQL.SQL.Add('FUNCICOD,') ;
  if WTIPO = 'D' then
    DMLoja.IBSQL.SQL.Add('MOVICAIXN2VLRDEB,') ;
  if WTIPO = 'C' then
    DMLoja.IBSQL.SQL.Add('MOVICAIXN2VLRCRED,') ;
  DMLoja.IBSQL.SQL.Add('MOVICAIXA6NUMCUPOM,') ;
  DMLoja.IBSQL.SQL.Add('NUMEICOD,') ;
  DMLoja.IBSQL.SQL.Add('MOVICAIXTOBS,') ;
  DMLoja.IBSQL.SQL.Add('MOVICAIXDMOV)') ;
  DMLoja.IBSQL.SQL.Add('values(') ;
  DMLoja.IBSQL.SQL.Add('"' + WEMPRA3COD + '",') ;
  DMLoja.IBSQL.SQL.Add(WTERMICOD + ',') ;
  DMLoja.IBSQL.SQL.Add('"' + WMOVICAIXDEMIS + '",') ;
  DMLoja.IBSQL.SQL.Add(ProxCod + ',') ;
  DMLoja.IBSQL.SQL.Add('"' + WMOVICAIXA15DOCORIG + '",') ;
  DMLoja.IBSQL.SQL.Add(WMOVICAIXIDOCORIGPARC + ',') ;
  DMLoja.IBSQL.SQL.Add(WOPERCAIXICOD + ',') ;
  DMLoja.IBSQL.SQL.Add(WFUNCICOD + ',') ;
  if (WTIPO = 'D') or (WTIPO = 'C') then
    DMLoja.IBSQL.SQL.Add(WMOVICAIXN2VLR + ',') ;

  DMLoja.IBSQL.SQL.Add(WMOVICAIXA6NUMCUPOM + ',') ;
  DMLoja.IBSQL.SQL.Add(WNUMEICOD + ',') ;
  DMLoja.IBSQL.SQL.Add('"' + WMOVICAIXTOBS + '",') ;
  DMLoja.IBSQL.SQL.Add('"' + WMOVICAIXDMOV + '")') ;
  DMLoja.IBSQL.ExecSQL ;

  if AnsiUpperCase(WNUMEICOD) <> 'NULL' then
  begin
    //GRAVA NOS TOTALIZADORES APARTIR DO NUMERARIO
    if not DMLoja.QryTotalizadores.Active then
      DMLoja.QryTotalizadores.Open ;

    DMLoja.QryTotalizaEm.Close ;
    DMLoja.QryTotalizaEm.SQL.Clear ;
    DMLoja.QryTotalizaEm.SQL.Add('select NUMEICOD, TOTAICOD, NUTOCSOMASUBTRAI') ;
    DMLoja.QryTotalizaEm.SQL.Add('from NUMERARIOTOTALIZAEM') ;
    DMLoja.QryTotalizaEm.SQL.Add('where NUMEICOD = ' + WNUMEICOD) ;
    DMLoja.QryTotalizaEm.Open ;

    DMLoja.QryTotalizaEm.First ;
    while not DMLoja.QryTotalizaEm.EOF do
    begin
      DMLoja.QryTotalizadores.Locate('TOTAICOD', DMLoja.QryTotalizaEm.FieldByName('TOTAICOD').AsString, []) ;
      if DMLoja.QryTotalizadoresTOTACDEBITOCREDITO.Value = '' then
      begin
        Informa('O tipo do totalizador ' + DMLoja.QryTotalizadoresTOTAA60DESCRICAO.Value + ' não foi informado. Esta operação não irá totalizar no caixa!') ;
        Exit ;
      end ;

      DMLoja.IBSQL.Close ;
      DMLoja.IBSQL.SQL.Clear ;
      DMLoja.IBSQL.SQL.Add('Update TOTALIZADORESDIARIOS') ;
      if DMLoja.QryTotalizadoresTOTACDEBITOCREDITO.Value = 'D' then
      begin
        if DMLoja.QryTotalizaEm.FieldByName('NUTOCSOMASUBTRAI').AsString = '+' then
          DMLoja.IBSQL.SQL.Add('set TODIVLRDEBITO = TODIVLRDEBITO + ' + WMOVICAIXN2VLR) ;
        if DMLoja.QryTotalizaEm.FieldByName('NUTOCSOMASUBTRAI').AsString = '-' then
          DMLoja.IBSQL.SQL.Add('set TODIVLRDEBITO = TODIVLRDEBITO - ' + WMOVICAIXN2VLR) ;
      end ;
      if DMLoja.QryTotalizadoresTOTACDEBITOCREDITO.Value = 'C' then
      begin
        if DMLoja.QryTotalizaEm.FieldByName('NUTOCSOMASUBTRAI').AsString = '+' then
          DMLoja.IBSQL.SQL.Add('set TODIVLRCREDITO = TODIVLRCREDITO + ' + WMOVICAIXN2VLR) ;
        if DMLoja.QryTotalizaEm.FieldByName('NUTOCSOMASUBTRAI').AsString = '-' then
          DMLoja.IBSQL.SQL.Add('set TODIVLRCREDITO = TODIVLRCREDITO - ' + WMOVICAIXN2VLR) ;
      end ;
      DMLoja.IBSQL.SQL.Add('where') ;
      DMLoja.IBSQL.SQL.Add('EMPRA3COD = "' + EmpresaPadrao + '" and ') ;
      DMLoja.IBSQL.SQL.Add('TERMICOD  = '  + IntToStr(TerminalAtual) + ' and ') ;
      DMLoja.IBSQL.SQL.Add('TODIDMOV  = "' + FormatDateTime('mm/dd/yyyy', StrToDateTime(TerminalAtualData)) + '" and ') ;
      DMLoja.IBSQL.SQL.Add('TOTAICOD  = '  + DMLoja.QryTotalizaEm.FieldByName('TOTAICOD').AsString) ;
      DMLoja.IBSQL.ExecSQL ;

      if FileExists('LogTotaliz') then
      begin
        WriteLn(LogTotaliz, 'Numerário ' + WNUMEICOD + ' ' +
                            DMLoja.QryTotalizaEm.FieldByName('NUTOCSOMASUBTRAI').AsString +
                            ' no Totalizador ' + DMLoja.QryTotalizadoresTOTAA60DESCRICAO.Value +
                            ' o valor de ' + WMOVICAIXN2VLR);
     end ;


      DMLoja.QryTotalizaEm.Next ;
    end ;
  end ;

  if WOPERCAIXICOD <> '' then
  begin
    //GRAVA NOS TOTALIZADORES APARTIR DA OPERACAO DE CAIXA
    if not DMLoja.QryTotalizadores.Active then
      DMLoja.QryTotalizadores.Open ;

    DMLoja.QryTotalizaEm.Close ;
    DMLoja.QryTotalizaEm.SQL.Clear ;
    DMLoja.QryTotalizaEm.SQL.Add('select OPERCAIXICOD, TOTAICOD, OPCXTOCSOMASUBTRAI') ;
    DMLoja.QryTotalizaEm.SQL.Add('from OPERACAOCAIXATOTALIZAEM') ;
    DMLoja.QryTotalizaEm.SQL.Add('where OPERCAIXICOD = ' + WOPERCAIXICOD) ;
    DMLoja.QryTotalizaEm.Open ;

    DMLoja.QryTotalizaEm.First ;
    while not DMLoja.QryTotalizaEm.EOF do
    begin
      DMLoja.QryTotalizadores.Locate('TOTAICOD', DMLoja.QryTotalizaEm.FieldByName('TOTAICOD').AsString, []) ;
      if DMLoja.QryTotalizadoresTOTACDEBITOCREDITO.Value = '' then
      begin
        Informa('O tipo do totalizador ' + DMLoja.QryTotalizadoresTOTAA60DESCRICAO.Value + ' não foi informado. Esta operação não irá totalizar no caixa!') ;
        Exit ;
      end ;

      DMLoja.IBSQL.Close ;
      DMLoja.IBSQL.SQL.Clear ;
      DMLoja.IBSQL.SQL.Add('Update TOTALIZADORESDIARIOS') ;
      if DMLoja.QryTotalizadoresTOTACDEBITOCREDITO.Value = 'D' then
      begin
        if DMLoja.QryTotalizaEm.FieldByName('OPCXTOCSOMASUBTRAI').AsString = '+' then
          DMLoja.IBSQL.SQL.Add('set TODIVLRDEBITO = TODIVLRDEBITO + ' + WMOVICAIXN2VLR) ;
        if DMLoja.QryTotalizaEm.FieldByName('OPCXTOCSOMASUBTRAI').AsString = '-' then
          DMLoja.IBSQL.SQL.Add('set TODIVLRDEBITO = TODIVLRDEBITO - ' + WMOVICAIXN2VLR) ;
      end ;
      if DMLoja.QryTotalizadoresTOTACDEBITOCREDITO.Value = 'C' then
      begin
        if DMLoja.QryTotalizaEm.FieldByName('OPCXTOCSOMASUBTRAI').AsString = '+' then
          DMLoja.IBSQL.SQL.Add('set TODIVLRCREDITO = TODIVLRCREDITO + ' + WMOVICAIXN2VLR) ;
        if DMLoja.QryTotalizaEm.FieldByName('OPCXTOCSOMASUBTRAI').AsString = '-' then
          DMLoja.IBSQL.SQL.Add('set TODIVLRCREDITO = TODIVLRCREDITO - ' + WMOVICAIXN2VLR) ;
      end ;
      DMLoja.IBSQL.SQL.Add('where') ;
      DMLoja.IBSQL.SQL.Add('EMPRA3COD = "' + EmpresaPadrao + '" and ') ;
      DMLoja.IBSQL.SQL.Add('TERMICOD  = '  + IntToStr(TerminalAtual) + ' and ') ;
      DMLoja.IBSQL.SQL.Add('TODIDMOV  = "' + FormatDateTime('mm/dd/yyyy', StrToDateTime(TerminalAtualData)) + '" and ') ;
      DMLoja.IBSQL.SQL.Add('TOTAICOD  = '  + DMLoja.QryTotalizaEm.FieldByName('TOTAICOD').AsString) ;
      DMLoja.IBSQL.ExecSQL ;

      if FileExists('LogTotaliz') then
      begin
        WriteLn(LogTotaliz, 'Oper.Caix.' + WOPERCAIXICOD + ' ' +
                            DMLoja.QryTotalizaEm.FieldByName('OPCXTOCSOMASUBTRAI').AsString +
                            ' no Totalizador ' + DMLoja.QryTotalizadoresTOTAA60DESCRICAO.Value +
                            ' o valor de ' + WMOVICAIXN2VLR);
      end ;

      DMLoja.QryTotalizaEm.Next ;
    end ;
  end ;
end ;

procedure GravaMovimentoEstoque(ProdCod:integer; Quant:double; EntrSai, Tipo, DataHora, Valor : String) ;
var
  CodMov : double ;
  CodID  : string ;
begin
  if ProdCod = 0 then
    exit ;

  if not DMLoja.TblProduto.Active then
    DMLoja.TblProduto.Open ;

  DMLoja.TblProduto.Locate('PRODICOD', ProdCod, []) ;

  if DMLoja.TblProdutoPRODCTIPOBAIXA.Value = 'F' then
  begin
    DMLoja.SQLCompProd.Close ;
    DMLoja.SQLCompProd.SQL.Clear ;
    DMLoja.SQLCompProd.SQL.Add('Select * From PRODUTO') ;
    DMLoja.SQLCompProd.SQL.Add('Where') ;
    DMLoja.SQLCompProd.SQL.Add('PRODICODPAI = ' + IntToStr(ProdCod)) ;
    DMLoja.SQLCompProd.Open ;

    while not DMLoja.SQLCompProd.EOF do
    begin
      DMLoja.IBSQL.Close ;
      DMLoja.IBSQL.SQL.Clear ;
      DMLoja.IBSQL.SQL.Add('Update PRODUTO') ;
      DMLoja.IBSQL.SQL.Add('Set') ;
      Case EntrSai[1] of
       'E' : DMLoja.IBSQL.SQL.Add('PRODN3SALDESTOQ = PRODN3SALDESTOQ + ' + ConvFloatToStr(DMLoja.SQLCompProd.FieldByName('PRODN3QTDEBAIXA').Value)) ;
       'S' : DMLoja.IBSQL.SQL.Add('PRODN3SALDESTOQ = PRODN3SALDESTOQ - ' + ConvFloatToStr(DMLoja.SQLCompProd.FieldByName('PRODN3QTDEBAIXA').Value)) ;
      end ;
      DMLoja.IBSQL.SQL.Add('Where') ;
      DMLoja.IBSQL.SQL.Add('PRODICOD = ' + DMLoja.SQLCompProd.FieldByName('PRODICOD').AsString) ;
      DMLoja.IBSQL.ExecSQL ;

      DMLoja.SQLCompProd.Next ;
    end ;
  end
  else begin
    DMLoja.IBSQL.Close ;
    DMLoja.IBSQL.SQL.Clear ;
    DMLoja.IBSQL.SQL.Add('Update PRODUTO') ;
    DMLoja.IBSQL.SQL.Add('Set') ;
    Case EntrSai[1] of
     'E' : DMLoja.IBSQL.SQL.Add('PRODN3SALDESTOQ = PRODN3SALDESTOQ + ' + ConvFloatToStr(Quant)) ;
     'S' : DMLoja.IBSQL.SQL.Add('PRODN3SALDESTOQ = PRODN3SALDESTOQ - ' + ConvFloatToStr(Quant)) ;
    end ;
    DMLoja.IBSQL.SQL.Add('Where') ;
    DMLoja.IBSQL.SQL.Add('PRODICOD = ' + IntToStr(ProdCod)) ;
    DMLoja.IBSQL.ExecSQL ;
  end ;

  //GRAVAR EXTRATO DE ESTOQUE
  DMLoja.IBSQL.Close ;
  DMLoja.IBSQL.SQL.Clear ;
  DMLoja.IBSQL.SQL.Add('select Max(EXESICOD) from EXTRATOESTOQUE') ;
  DMLoja.IBSQL.SQL.Add('where') ;
  DMLoja.IBSQL.SQL.Add('EMPRA3COD = "' + DMLoja.QryConfiguracaoEmprA3Cod.Value + '"') ;
  DMLoja.IBSQL.ExecSQL ;
  DMLoja.IBSQL.Open ;
  CodMov := DMLoja.IBSQL.FieldByName('Max').AsFloat + 1 ;

  CodID := DMLoja.QryConfiguracaoEmprA3Cod.Value + FormatFloat('0000000000', CodMov) ;

  DMLoja.IBSQL.Close ;
  DMLoja.IBSQL.SQL.Clear ;
  DMLoja.IBSQL.SQL.Add('insert into EXTRATOESTOQUE') ;
  DMLoja.IBSQL.SQL.Add('(EXESA13ID, EMPRA3COD, EXESICOD, PRODICOD, EXESA10TIPOMOV, EXESDMOV,') ;
  DMLoja.IBSQL.SQL.Add(' EXESN3QTDE, EXESN2VLROPER)') ;
  DMLoja.IBSQL.SQL.Add('values(') ;
  DMLoja.IBSQL.SQL.Add('"' + CodID + '", ');//EXESA13ID
  DMLoja.IBSQL.SQL.Add('"' + DMLoja.QryConfiguracaoEmprA3Cod.Value + '", ') ;//EMPRA3COD
  DMLoja.IBSQL.SQL.Add(FloatToStr(CodMov) +', ') ;//EXESICOD
  DMLoja.IBSQL.SQL.Add(IntToStr(ProdCod) + ', ') ;//PRODICOD
  DMLoja.IBSQL.SQL.Add('"' + Tipo + '", ');//EXESA10TIPOMOV
  DMLoja.IBSQL.SQL.Add('"' + DataHora + '", ') ;//EXESDMOV
  DMLoja.IBSQL.SQL.Add(ConvFloatToStr(Quant) + ', ') ;//EXESN3QTDE
  DMLoja.IBSQL.SQL.Add(ConvFloatToStr(StrToFloat(Valor)) + ') ') ;//EXESN2VLROPER
  DMLoja.IBSQL.ExecSQL ;
end ;

function ConvProdCod(Numero : string) : string ;
begin
  if Numero <> '0' then
    ConvProdCod := Numero
  else
    ConvProdCod := 'Null' ;
end ;

procedure GravarCCFuncionario( WEMPRA3COD,
                               WTERMICOD,
                               WCCFUNCDEMIS,
                               WFUNCICOD,
                               WTIPO,
                               WCCFUNCN2VLR,
                               WCCFUNCTOBS : string ) ;
var
  CodID : string ;
begin
  DMLoja.IBSQL.Close ;
  DMLoja.IBSQL.SQL.Clear ;
  DMLoja.IBSQL.SQL.Add('select max(CCFUNCICOD) from CCFUNCIONARIO') ;
  DMLoja.IBSQL.SQL.Add('where') ;
  DMLoja.IBSQL.SQL.Add('EMPRA3COD = "' + WEMPRA3COD + '" and') ;
  DMLoja.IBSQL.SQL.Add('TERMICOD = '   + WTERMICOD) ;
  DMLoja.IBSQL.ExecSQL ;
  DMLoja.IBSQL.Open ;
  CodID := IntToStr(DMLoja.IBSQL.FieldByName('Max').AsInteger + 1) ;

  DMLoja.IBSQL.Close ;
  DMLoja.IBSQL.SQL.Clear ;
  DMLoja.IBSQL.SQL.Add('insert into CCFUNCIONARIO') ;
  DMLoja.IBSQL.SQL.Add('(EMPRA3COD,') ;
  DMLoja.IBSQL.SQL.Add('TERMICOD,') ;
  DMLoja.IBSQL.SQL.Add('CCFUNCICOD,') ;
  DMLoja.IBSQL.SQL.Add('CCFUNCDEMIS,') ;
  DMLoja.IBSQL.SQL.Add('FUNCICOD,') ;
  if WTIPO = 'D' then
    DMLoja.IBSQL.SQL.Add('CCFUNCN2VLRDEB,') ;
  if WTIPO = 'C' then
    DMLoja.IBSQL.SQL.Add('CCFUNCN2VLRCRED,') ;
  DMLoja.IBSQL.SQL.Add('CCFUNCTOBS,') ;
  DMLoja.IBSQL.SQL.Add('CCFUNCCSTATUS)') ;
  DMLoja.IBSQL.SQL.Add('values') ;
  DMLoja.IBSQL.SQL.Add('("' + WEMPRA3COD + '",') ;{EMPRA3COD}
  DMLoja.IBSQL.SQL.Add(WTERMICOD + ',') ;{TERMICOD}
  DMLoja.IBSQL.SQL.Add(CodID + ',') ;{CCFUNCICOD}
  DMLoja.IBSQL.SQL.Add('"' + WCCFUNCDEMIS + '", ') ;{CCFUNCDEMIS}
  DMLoja.IBSQL.SQL.Add(WFUNCICOD + ',') ;{FUNCICOD}
  DMLoja.IBSQL.SQL.Add(WCCFUNCN2VLR + ',') ;
  DMLoja.IBSQL.SQL.Add('"' + WCCFUNCTOBS + '", ') ;{CCFUNCTOBS}
  DMLoja.IBSQL.SQL.Add('"A")') ;{CCFUNCCSTATUS}
  DMLoja.IBSQL.ExecSQL ;
end ;

end.

