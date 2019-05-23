unit UnitLibrary;

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
procedure CargaInicialTabelas ;
Function  DigitVerifEAN(Cod:string) : string ;
procedure DebugMsg(Msg : string) ;
function  DelUltVirg(Msg : string) : string ;
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

function SQLLocate(Tabela, CampoPesq, CampoRet, Valor : string) : string ;

implementation

uses DataModulo ;

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

procedure CargaInicialTabelas ;
var
  Tabela : TObject ;
begin
  Exit ;
  {
  //EMPRESA
  if Application.FindComponent('DM').FindComponent('IBSQL') <> nil then
  begin
    Tabela  := Application.FindComponent('DM').FindComponent('IBSQL') ;
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
  Tabela := Application.FindComponent('DM').FindComponent('TblConfiguracao') ;
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
  Tabela := Application.FindComponent('DM').FindComponent('TblTerminal') ;
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
  Tabela := Application.FindComponent('DM').FindComponent('TblFuncionario') ;
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
  Tabela := Application.FindComponent('DM').FindComponent('TblOperacaoCaixa') ;
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
  Tabela := Application.FindComponent('DM').FindComponent('TblNumerario') ;
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
  {DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select max(MOVICAIXICOD) from MOVIMENTOCAIXA') ;
  DM.SQLTemplate.SQL.Add('where') ;
  DM.SQLTemplate.SQL.Add('EMPRA3COD = "' + WEMPRA3COD + '" and') ;
  DM.SQLTemplate.SQL.Add('TERMICOD = '   + WTERMICOD + ' and') ;
  DM.SQLTemplate.SQL.Add('MOVICAIXDMOV = "'  + WMOVICAIXDMOV + '"') ;
  DM.SQLTemplate.ExecSQL ;
  DM.SQLTemplate.Open ;
  ProxCod := IntToStr(DM.SQLTemplate.FieldByName('Max').AsInteger + 1) ;

  //GRAVA LANCAMENTO DO CAIXA
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('insert into MOVIMENTOCAIXA') ;
  DM.SQLTemplate.SQL.Add('(EMPRA3COD,') ;
  DM.SQLTemplate.SQL.Add('TERMICOD,') ;
  DM.SQLTemplate.SQL.Add('MOVICAIXDEMIS,') ;
  DM.SQLTemplate.SQL.Add('MOVICAIXICOD,') ;
  DM.SQLTemplate.SQL.Add('MOVICAIXA15DOCORIG,') ;
  DM.SQLTemplate.SQL.Add('MOVICAIXIDOCORIGPARC,') ;
  DM.SQLTemplate.SQL.Add('OPERCAIXICOD,') ;
  DM.SQLTemplate.SQL.Add('FUNCICOD,') ;
  if WTIPO = 'D' then
    DM.SQLTemplate.SQL.Add('MOVICAIXN2VLRDEB,') ;
  if WTIPO = 'C' then
    DM.SQLTemplate.SQL.Add('MOVICAIXN2VLRCRED,') ;
  DM.SQLTemplate.SQL.Add('MOVICAIXA6NUMCUPOM,') ;
  DM.SQLTemplate.SQL.Add('NUMEICOD,') ;
  DM.SQLTemplate.SQL.Add('MOVICAIXTOBS,') ;
  DM.SQLTemplate.SQL.Add('MOVICAIXDMOV)') ;
  DM.SQLTemplate.SQL.Add('values(') ;
  DM.SQLTemplate.SQL.Add('"' + WEMPRA3COD + '",') ;
  DM.SQLTemplate.SQL.Add(WTERMICOD + ',') ;
  DM.SQLTemplate.SQL.Add('"' + WMOVICAIXDEMIS + '",') ;
  DM.SQLTemplate.SQL.Add(ProxCod + ',') ;
  DM.SQLTemplate.SQL.Add('"' + WMOVICAIXA15DOCORIG + '",') ;
  DM.SQLTemplate.SQL.Add(WMOVICAIXIDOCORIGPARC + ',') ;
  DM.SQLTemplate.SQL.Add(WOPERCAIXICOD + ',') ;
  DM.SQLTemplate.SQL.Add(WFUNCICOD + ',') ;
  if (WTIPO = 'D') or (WTIPO = 'C') then
    DM.SQLTemplate.SQL.Add(WMOVICAIXN2VLR + ',') ;

  DM.SQLTemplate.SQL.Add(WMOVICAIXA6NUMCUPOM + ',') ;
  DM.SQLTemplate.SQL.Add(WNUMEICOD + ',') ;
  DM.SQLTemplate.SQL.Add('"' + WMOVICAIXTOBS + '",') ;
  DM.SQLTemplate.SQL.Add('"' + WMOVICAIXDMOV + '")') ;
  DM.SQLTemplate.ExecSQL ;

  if AnsiUpperCase(WNUMEICOD) <> 'NULL' then
  begin
    //GRAVA NOS TOTALIZADORES APARTIR DO NUMERARIO
    if not DM.QryTotalizadores.Active then
      DM.QryTotalizadores.Open ;

    DM.QryTotalizaEm.Close ;
    DM.QryTotalizaEm.SQL.Clear ;
    DM.QryTotalizaEm.SQL.Add('select NUMEICOD, TOTAICOD, NUTOCSOMASUBTRAI') ;
    DM.QryTotalizaEm.SQL.Add('from NUMERARIOTOTALIZAEM') ;
    DM.QryTotalizaEm.SQL.Add('where NUMEICOD = ' + WNUMEICOD) ;
    DM.QryTotalizaEm.Open ;

    DM.QryTotalizaEm.First ;
    while not DM.QryTotalizaEm.EOF do
    begin
      DM.QryTotalizadores.Locate('TOTAICOD', DM.QryTotalizaEm.FieldByName('TOTAICOD').AsString, []) ;
      if DM.QryTotalizadoresTOTACDEBITOCREDITO.Value = '' then
      begin
        Informa('O tipo do totalizador ' + DM.QryTotalizadoresTOTAA60DESCRICAO.Value + ' não foi informado. Esta operação não irá totalizar no caixa!') ;
        Exit ;
      end ;

      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('Update TOTALIZADORESDIARIOS') ;
      if DM.QryTotalizadoresTOTACDEBITOCREDITO.Value = 'D' then
      begin
        if DM.QryTotalizaEm.FieldByName('NUTOCSOMASUBTRAI').AsString = '+' then
          DM.SQLTemplate.SQL.Add('set TODIVLRDEBITO = TODIVLRDEBITO + ' + WMOVICAIXN2VLR) ;
        if DM.QryTotalizaEm.FieldByName('NUTOCSOMASUBTRAI').AsString = '-' then
          DM.SQLTemplate.SQL.Add('set TODIVLRDEBITO = TODIVLRDEBITO - ' + WMOVICAIXN2VLR) ;
      end ;
      if DM.QryTotalizadoresTOTACDEBITOCREDITO.Value = 'C' then
      begin
        if DM.QryTotalizaEm.FieldByName('NUTOCSOMASUBTRAI').AsString = '+' then
          DM.SQLTemplate.SQL.Add('set TODIVLRCREDITO = TODIVLRCREDITO + ' + WMOVICAIXN2VLR) ;
        if DM.QryTotalizaEm.FieldByName('NUTOCSOMASUBTRAI').AsString = '-' then
          DM.SQLTemplate.SQL.Add('set TODIVLRCREDITO = TODIVLRCREDITO - ' + WMOVICAIXN2VLR) ;
      end ;
      DM.SQLTemplate.SQL.Add('where') ;
      DM.SQLTemplate.SQL.Add('EMPRA3COD = "' + EmpresaPadrao + '" and ') ;
      DM.SQLTemplate.SQL.Add('TERMICOD  = '  + IntToStr(TerminalAtual) + ' and ') ;
      DM.SQLTemplate.SQL.Add('TODIDMOV  = "' + FormatDateTime('mm/dd/yyyy', StrToDateTime(TerminalAtualData)) + '" and ') ;
      DM.SQLTemplate.SQL.Add('TOTAICOD  = '  + DM.QryTotalizaEm.FieldByName('TOTAICOD').AsString) ;
      DM.SQLTemplate.ExecSQL ;

      if FileExists('LogTotaliz') then
      begin
        WriteLn(LogTotaliz, 'Numerário ' + WNUMEICOD + ' ' +
                            DM.QryTotalizaEm.FieldByName('NUTOCSOMASUBTRAI').AsString +
                            ' no Totalizador ' + DM.QryTotalizadoresTOTAA60DESCRICAO.Value +
                            ' o valor de ' + WMOVICAIXN2VLR);
     end ;


      DM.QryTotalizaEm.Next ;
    end ;
  end ;

  if WOPERCAIXICOD <> '' then
  begin
    //GRAVA NOS TOTALIZADORES APARTIR DA OPERACAO DE CAIXA
    if not DM.QryTotalizadores.Active then
      DM.QryTotalizadores.Open ;

    DM.QryTotalizaEm.Close ;
    DM.QryTotalizaEm.SQL.Clear ;
    DM.QryTotalizaEm.SQL.Add('select OPERCAIXICOD, TOTAICOD, OPCXTOCSOMASUBTRAI') ;
    DM.QryTotalizaEm.SQL.Add('from OPERACAOCAIXATOTALIZAEM') ;
    DM.QryTotalizaEm.SQL.Add('where OPERCAIXICOD = ' + WOPERCAIXICOD) ;
    DM.QryTotalizaEm.Open ;

    DM.QryTotalizaEm.First ;
    while not DM.QryTotalizaEm.EOF do
    begin
      DM.QryTotalizadores.Locate('TOTAICOD', DM.QryTotalizaEm.FieldByName('TOTAICOD').AsString, []) ;
      if DM.QryTotalizadoresTOTACDEBITOCREDITO.Value = '' then
      begin
        Informa('O tipo do totalizador ' + DM.QryTotalizadoresTOTAA60DESCRICAO.Value + ' não foi informado. Esta operação não irá totalizar no caixa!') ;
        Exit ;
      end ;

      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('Update TOTALIZADORESDIARIOS') ;
      if DM.QryTotalizadoresTOTACDEBITOCREDITO.Value = 'D' then
      begin
        if DM.QryTotalizaEm.FieldByName('OPCXTOCSOMASUBTRAI').AsString = '+' then
          DM.SQLTemplate.SQL.Add('set TODIVLRDEBITO = TODIVLRDEBITO + ' + WMOVICAIXN2VLR) ;
        if DM.QryTotalizaEm.FieldByName('OPCXTOCSOMASUBTRAI').AsString = '-' then
          DM.SQLTemplate.SQL.Add('set TODIVLRDEBITO = TODIVLRDEBITO - ' + WMOVICAIXN2VLR) ;
      end ;
      if DM.QryTotalizadoresTOTACDEBITOCREDITO.Value = 'C' then
      begin
        if DM.QryTotalizaEm.FieldByName('OPCXTOCSOMASUBTRAI').AsString = '+' then
          DM.SQLTemplate.SQL.Add('set TODIVLRCREDITO = TODIVLRCREDITO + ' + WMOVICAIXN2VLR) ;
        if DM.QryTotalizaEm.FieldByName('OPCXTOCSOMASUBTRAI').AsString = '-' then
          DM.SQLTemplate.SQL.Add('set TODIVLRCREDITO = TODIVLRCREDITO - ' + WMOVICAIXN2VLR) ;
      end ;
      DM.SQLTemplate.SQL.Add('where') ;
      DM.SQLTemplate.SQL.Add('EMPRA3COD = "' + EmpresaPadrao + '" and ') ;
      DM.SQLTemplate.SQL.Add('TERMICOD  = '  + IntToStr(TerminalAtual) + ' and ') ;
      DM.SQLTemplate.SQL.Add('TODIDMOV  = "' + FormatDateTime('mm/dd/yyyy', StrToDateTime(TerminalAtualData)) + '" and ') ;
      DM.SQLTemplate.SQL.Add('TOTAICOD  = '  + DM.QryTotalizaEm.FieldByName('TOTAICOD').AsString) ;
      DM.SQLTemplate.ExecSQL ;

      if FileExists('LogTotaliz') then
      begin
        WriteLn(LogTotaliz, 'Oper.Caix.' + WOPERCAIXICOD + ' ' +
                            DM.QryTotalizaEm.FieldByName('OPCXTOCSOMASUBTRAI').AsString +
                            ' no Totalizador ' + DM.QryTotalizadoresTOTAA60DESCRICAO.Value +
                            ' o valor de ' + WMOVICAIXN2VLR);
      end ;

      DM.QryTotalizaEm.Next ;
    end ;
  end ;}
end ;

procedure GravaMovimentoEstoque(ProdCod:integer; Quant:double; EntrSai, Tipo, DataHora, Valor : String) ;
var
  CodMov : double ;
  CodID  : string ;
begin
  {if ProdCod = 0 then
    exit ;

  if not DM.TblProduto.Active then
    DM.TblProduto.Open ;

  DM.TblProduto.Locate('PRODICOD', ProdCod, []) ;

  if DM.TblProdutoPRODCTIPOBAIXA.Value = 'F' then
  begin
    DM.SQLCompProd.Close ;
    DM.SQLCompProd.SQL.Clear ;
    DM.SQLCompProd.SQL.Add('Select * From PRODUTO') ;
    DM.SQLCompProd.SQL.Add('Where') ;
    DM.SQLCompProd.SQL.Add('PRODICODPAI = ' + IntToStr(ProdCod)) ;
    DM.SQLCompProd.Open ;

    while not DM.SQLCompProd.EOF do
    begin
      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('Update PRODUTO') ;
      DM.SQLTemplate.SQL.Add('Set') ;
      Case EntrSai[1] of
       'E' : DM.SQLTemplate.SQL.Add('PRODN3SALDESTOQ = PRODN3SALDESTOQ + ' + ConvFloatToStr(DM.SQLCompProd.FieldByName('PRODN3QTDEBAIXA').Value)) ;
       'S' : DM.SQLTemplate.SQL.Add('PRODN3SALDESTOQ = PRODN3SALDESTOQ - ' + ConvFloatToStr(DM.SQLCompProd.FieldByName('PRODN3QTDEBAIXA').Value)) ;
      end ;
      DM.SQLTemplate.SQL.Add('Where') ;
      DM.SQLTemplate.SQL.Add('PRODICOD = ' + DM.SQLCompProd.FieldByName('PRODICOD').AsString) ;
      DM.SQLTemplate.ExecSQL ;

      DM.SQLCompProd.Next ;
    end ;
  end
  else begin
    DM.SQLTemplate.Close ;
    DM.SQLTemplate.SQL.Clear ;
    DM.SQLTemplate.SQL.Add('Update PRODUTO') ;
    DM.SQLTemplate.SQL.Add('Set') ;
    Case EntrSai[1] of
     'E' : DM.SQLTemplate.SQL.Add('PRODN3SALDESTOQ = PRODN3SALDESTOQ + ' + ConvFloatToStr(Quant)) ;
     'S' : DM.SQLTemplate.SQL.Add('PRODN3SALDESTOQ = PRODN3SALDESTOQ - ' + ConvFloatToStr(Quant)) ;
    end ;
    DM.SQLTemplate.SQL.Add('Where') ;
    DM.SQLTemplate.SQL.Add('PRODICOD = ' + IntToStr(ProdCod)) ;
    DM.SQLTemplate.ExecSQL ;
  end ;

  //GRAVAR EXTRATO DE ESTOQUE
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select Max(EXESICOD) from EXTRATOESTOQUE') ;
  DM.SQLTemplate.SQL.Add('where') ;
  DM.SQLTemplate.SQL.Add('EMPRA3COD = "' + DM.QryConfiguracaoEmprA3Cod.Value + '"') ;
  DM.SQLTemplate.ExecSQL ;
  DM.SQLTemplate.Open ;
  CodMov := DM.SQLTemplate.FieldByName('Max').AsFloat + 1 ;

  CodID := DM.QryConfiguracaoEmprA3Cod.Value + FormatFloat('0000000000', CodMov) ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('insert into EXTRATOESTOQUE') ;
  DM.SQLTemplate.SQL.Add('(EXESA13ID, EMPRA3COD, EXESICOD, PRODICOD, EXESA10TIPOMOV, EXESDMOV,') ;
  DM.SQLTemplate.SQL.Add(' EXESN3QTDE, EXESN2VLROPER)') ;
  DM.SQLTemplate.SQL.Add('values(') ;
  DM.SQLTemplate.SQL.Add('"' + CodID + '", ');//EXESA13ID
  DM.SQLTemplate.SQL.Add('"' + DM.QryConfiguracaoEmprA3Cod.Value + '", ') ;//EMPRA3COD
  DM.SQLTemplate.SQL.Add(FloatToStr(CodMov) +', ') ;//EXESICOD
  DM.SQLTemplate.SQL.Add(IntToStr(ProdCod) + ', ') ;//PRODICOD
  DM.SQLTemplate.SQL.Add('"' + Tipo + '", ');//EXESA10TIPOMOV
  DM.SQLTemplate.SQL.Add('"' + DataHora + '", ') ;//EXESDMOV
  DM.SQLTemplate.SQL.Add(ConvFloatToStr(Quant) + ', ') ;//EXESN3QTDE
  DM.SQLTemplate.SQL.Add(ConvFloatToStr(StrToFloat(Valor)) + ') ') ;//EXESN2VLROPER
  DM.SQLTemplate.ExecSQL ;}
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
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select max(CCFUNCICOD) from CCFUNCIONARIO') ;
  DM.SQLTemplate.SQL.Add('where') ;
  DM.SQLTemplate.SQL.Add('EMPRA3COD = "' + WEMPRA3COD + '" and') ;
  DM.SQLTemplate.SQL.Add('TERMICOD = '   + WTERMICOD) ;
  DM.SQLTemplate.ExecSQL ;
  DM.SQLTemplate.Open ;
  CodID := IntToStr(DM.SQLTemplate.FieldByName('Max').AsInteger + 1) ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('insert into CCFUNCIONARIO') ;
  DM.SQLTemplate.SQL.Add('(EMPRA3COD,') ;
  DM.SQLTemplate.SQL.Add('TERMICOD,') ;
  DM.SQLTemplate.SQL.Add('CCFUNCICOD,') ;
  DM.SQLTemplate.SQL.Add('CCFUNCDEMIS,') ;
  DM.SQLTemplate.SQL.Add('FUNCICOD,') ;
  if WTIPO = 'D' then
    DM.SQLTemplate.SQL.Add('CCFUNCN2VLRDEB,') ;
  if WTIPO = 'C' then
    DM.SQLTemplate.SQL.Add('CCFUNCN2VLRCRED,') ;
  DM.SQLTemplate.SQL.Add('CCFUNCTOBS,') ;
  DM.SQLTemplate.SQL.Add('CCFUNCCSTATUS)') ;
  DM.SQLTemplate.SQL.Add('values') ;
  DM.SQLTemplate.SQL.Add('("' + WEMPRA3COD + '",') ;{EMPRA3COD}
  DM.SQLTemplate.SQL.Add(WTERMICOD + ',') ;{TERMICOD}
  DM.SQLTemplate.SQL.Add(CodID + ',') ;{CCFUNCICOD}
  DM.SQLTemplate.SQL.Add('"' + WCCFUNCDEMIS + '", ') ;{CCFUNCDEMIS}
  DM.SQLTemplate.SQL.Add(WFUNCICOD + ',') ;{FUNCICOD}
  DM.SQLTemplate.SQL.Add(WCCFUNCN2VLR + ',') ;
  DM.SQLTemplate.SQL.Add('"' + WCCFUNCTOBS + '", ') ;{CCFUNCTOBS}
  DM.SQLTemplate.SQL.Add('"A")') ;{CCFUNCCSTATUS}
  DM.SQLTemplate.ExecSQL ;
end ;

function SQLLocate(Tabela, CampoPesq, CampoRet, Valor : string) : string ;
begin
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select ' + CampoPesq + ', ' + CampoRet + ' from ' + Tabela) ;
  DM.SQLTemplate.SQL.Add('where ' + CampoPesq + ' = ' + Valor) ;
  DM.SQLTemplate.Open ;
  if DM.SQLTemplate.EOF then
    SQLLocate := ''
  else
    SQLLocate := DM.SQLTemplate.FieldByName(CampoRet).AsString ;
  DM.SQLTemplate.Close ;
end ;


end.

