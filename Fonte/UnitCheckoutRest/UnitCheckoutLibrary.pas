unit UnitCheckoutLibrary;

interface

uses Variants, MemTable, Menus, Stdctrls, Classes, Windows, Forms,
     UCrpe32, RxQuery, DBTables, Controls, Dialogs, DB, JPeg, Sysutils, DBCtrls;

Var
  AlterarUsuario,
  VendaConsignada,
  E_Orcamento,
  DevolucaoAbateConsig,
  FinalizacaodeVenda,
  vImportarPrevenda, vImportarOrcamento, ReativarPreVenda, ContinuarPrevenda, GravaPrevendaSemFinanceiro,
  ReativarPedidoOrcamento,
  ImportandoPreVenda,
  E_PRODBALANCA : boolean ;
  CupoA13IDDevol,
  CodigoAntigoCupom : String ;
  ValorDescontoASerImportado, ValorFrete : double;


function  ConverteCodigo(Codigo : String):string;
procedure GravarTabelaTempImpPreVendaDeCupom(IDCupom : string; SQLParcelasVistaVendaTemp, SQLParcelasPrazoVendaTemp, SQLCup, SQLCupomIt : TRxQuery; Valor_Entrada : Double; Reimpressao : String) ;
procedure GravarTabelaTempImpPreVenda(Terminal, PReVenda, IDCupom : string ; SQLPreVD, SQLPreVDIt : TRxQuery) ;
procedure InformaG(Texto:string) ;
function  RetornaAliquotaICMSProduto(CodICMS : Integer) : Double;
function  RetornaREDUCAOICMSProduto(CodICMS : Integer) : Double;
function  RetornaBaseIcmsProdutosVenda(Terminal : Integer) : Double;
function  RetornaValorIcmsProdutosVenda(Terminal : Integer) : Double;
function  RetornaAliquotaMediaProduto(CodNCM, OrigemProduto : Integer) : Double;

implementation

uses DataModulo, UnitLibrary, TelaMensagem, TelaFechamentoVenda, TelaItens, DataModuloTemplate;

function  RetornaAliquotaICMSProduto(CodICMS : Integer) : Double;
var
  ICMS : TQuery;
begin
  ICMS := TQuery.Create(DM);
  ICMS.DatabaseName := 'DB';
  ICMS.Close;
  ICMS.SQL.Clear;
  ICMS.SQL.ADD('SELECT ICMSN2ALIQUOTA FROM ICMS WHERE ICMSICOD = ' + IntToStr(CodICMS));
  ICMS.Open;
  if not ICMS.IsEmpty then
    begin
      if ICMS.FindField('ICMSN2ALIQUOTA').AsFloat > 0 then
        RetornaAliquotaICMSProduto := ICMS.FindField('ICMSN2ALIQUOTA').AsFloat
      else
        RetornaAliquotaICMSProduto := 0;
    end
  else
    RetornaAliquotaICMSProduto := 17;

  ICMS.Close;
  ICMS.Destroy;
end;

function RetornaBaseIcmsProdutosVenda(Terminal : Integer) : Double;
var
  BaseICMS : TQuery;
begin
  BaseICMS := TQuery.Create(DM);
  BaseICMS.DatabaseName := 'EASY_TEMP';
  BaseICMS.Close;
  BaseICMS.SQL.Clear;
  BaseICMS.SQL.ADD('SELECT SUM(BASEICMS) AS BASE FROM ITENSVENDATEMP WHERE TERMICOD = ' + IntToStr(Terminal));
  BaseICMS.Open;
  if not BaseICMS.IsEmpty then
    begin
      if BaseICMS.FieldByName('BASE').AsFloat > 0 then
        RetornaBaseIcmsProdutosVenda := BaseICMS.FieldByName('BASE').AsFloat
      else
        RetornaBaseIcmsProdutosVenda := 0;
    end
  else
    RetornaBaseIcmsProdutosVenda := 0;

  BaseICMS.Close;
  BaseICMS.Destroy;
end;

function RetornaValorIcmsProdutosVenda(Terminal : Integer) : Double;
var
  ValorICMS : TQuery;
begin
  ValorICMS := TQuery.Create(DM);
  ValorICMS.DatabaseName := 'EASY_TEMP';
  ValorICMS.Close;
  ValorICMS.SQL.Clear;
  ValorICMS.SQL.ADD('SELECT SUM(VLRICMS) AS VLR FROM ITENSVENDATEMP WHERE TERMICOD = ' + IntToStr(Terminal));
  ValorICMS.Open;
  if not ValorICMS.IsEmpty then
    begin
      if ValorICMS.FieldByName('VLR').AsFloat > 0 then
        RetornaValorIcmsProdutosVenda := ValorICMS.FieldByName('VLR').AsFloat
      else
        RetornaValorIcmsProdutosVenda := 0;
    end
  else
    RetornaValorIcmsProdutosVenda := 0;

  ValorICMS.Close;
  ValorICMS.Destroy;
end;

function  RetornaREDUCAOICMSProduto(CodICMS : Integer) : Double;
var
  ICMS : TQuery;
begin
  ICMS := TQuery.Create(DM);
  ICMS.DatabaseName := 'DB';
  ICMS.Close;
  ICMS.SQL.Clear;
  ICMS.SQL.ADD('SELECT ICMSN2REDBASEICMS FROM ICMS WHERE ICMSICOD = ' + IntToStr(CodICMS));
  ICMS.Open;
  if not ICMS.IsEmpty then
    begin
      if ICMS.FindField('ICMSN2REDBASEICMS').AsFloat > 0 then
        RetornaREDUCAOICMSProduto := ICMS.FindField('ICMSN2REDBASEICMS').AsFloat
      else
        RetornaREDUCAOICMSProduto := 0
    end
  else
    RetornaREDUCAOICMSProduto := 0;

  ICMS.Close;
  ICMS.Destroy;
end;

function ConverteCodigo(Codigo :String):string;
var
  WCodEmpr,
  WCodTerm,
  WCod      : string;
  NumPonto,
  i         : integer ;
begin
  NumPonto := 0 ;
  for i := 0 to Length(Codigo) do
    if Codigo[i] = '.' then
      Inc(NumPonto) ;

  case NumPonto of
    1 : begin
          WCodEmpr := Copy(Codigo,1,Pos('.', Codigo)-1) ;
          case Length(WCodEmpr) of
            1 : WCodEmpr := '00' + WCodEmpr ;
            2 : WCodEmpr := '0' + WCodEmpr ;
          end ;

          WCod := Copy(Codigo,Pos('.', Codigo)+1,Length(Codigo)) ;
          case Length(WCod) of
            1 : WCod := '000000' + WCod ;
            2 : WCod := '00000' + WCod ;
            3 : WCod := '0000' + WCod ;
            4 : WCod := '000' + WCod ;
            5 : WCod := '00' + WCod ;
            6 : WCod := '0' + WCod ;
          end ;
          ConverteCodigo:= WCodEmpr + WCod ;
        end ;
    2 : begin
          WCod := Codigo ;

          WCodEmpr := Copy(Codigo,1,Pos('.', Codigo)-1) ;
          case Length(WCodEmpr) of
            1 : WCodEmpr := '00' + WCodEmpr ;
            2 : WCodEmpr := '0' + WCodEmpr ;
          end ;
          Delete(WCod, 1, Pos('.', WCod)) ;

          WCodTerm := Copy(WCod,1,Pos('.', WCod)-1) ;
          case Length(WCodTerm) of
            1 : WCodTerm := '00' + WCodTerm;
            2 : WCodTerm := '0' + WCodTerm;
          end ;
          Delete(WCod, 1, Pos('.', WCod)) ;

          case Length(WCod) of
            1 : WCod := '000000' + WCod ;
            2 : WCod := '00000' + WCod ;
            3 : WCod := '0000' + WCod ;
            4 : WCod := '000' + WCod ;
            5 : WCod := '00' + WCod ;
            6 : WCod := '0' + WCod ;
          end ;
          ConverteCodigo:= WCodEmpr + WCodTerm + WCod ;
        end ;
  end ;

end;

procedure GravarTabelaTempImpPreVendaDeCupom(IDCupom : string; SQLParcelasVistaVendaTemp, SQLParcelasPrazoVendaTemp, SQLCup , SQLCupomIt : TRxQuery; Valor_Entrada : Double; Reimpressao : String ) ;
var
  TargetPrinter, NumerarioPrazo : string ;
begin
  DM.TblTicketPreVendaCab.Close ;
  try
    DM.TblTicketPreVendaCab.DeleteTable ;
  except
  end ;
  DM.TblTicketPreVendaCab.CreateTable ;
  DM.TblTicketPreVendaCab.Open ;

  DM.TblTicketPreVendaItem.Close ;
  try
    DM.TblTicketPreVendaItem.DeleteTable ;
  except
  end ;
  DM.TblTicketPreVendaItem.CreateTable ;
  DM.TblTicketPreVendaItem.Open ;

  DM.TblTicketPreVendaFin.Close ;
  try
    DM.TblTicketPreVendaFin.DeleteTable ;
  except
  end ;
  DM.TblTicketPreVendaFin.CreateTable ;
  DM.TblTicketPreVendaFin.Open ;

  SQLCup.Close ;
  SQLCup.MacroByName('MFiltro').Value := 'CUPOA13ID = "' + IDCupom + '"' ;
  SQLCup.Open ;
  if SQLCup.IsEmpty then
    begin
      Informa('Problemas ao Imprimir Pré-Venda!');
      Exit;
    end;
  //GRAVAR CABECALHO TICKET
  DM.TblTicketPreVendaCab.Append ;
  DM.TblTicketPreVendaCabUsuarioVendaSTR.Value  := UsuarioAtualNome;
  DM.TblTicketPreVendaCabNomeEmpresa.Value      := EmpresaAtualNome;
  DM.TblTicketPreVendaCabFoneEmpresa.Value      := DM.SQLEmpresaEMPRA20FONE.Value;

  DM.TblTicketPreVendaCabDataEmissao.AsString   := SQLCup.FieldByName('REGISTRO').AsString;
  DM.TblTicketPreVendaCabTicketNumero.AsString  := SQLCup.FieldByName('CUPOA13ID').AsString ;
  DM.TblTicketPreVendaCabVendedor.AsString      := SQLLocate('VENDEDOR', 'VENDICOD', 'VENDA60NOME', SQLCup.FieldByName('VENDICOD').AsString) ;
  DM.TblTicketPreVendaCabPlano.AsString         := SQLLocate('PLANORECEBIMENTO', 'PLRCICOD', 'PLRCA60DESCR', SQLCup.FieldByName('PLRCICOD').AsString) ;
  DM.TblTicketPreVendaCabCliente.AsString       := SQLCup.FieldByName('CLIEA13ID').Value + ' ' +
                                                   SQLLocate('CLIENTE','CLIEA13ID', 'CLIEA60RAZAOSOC', '"' + SQLCup.FieldByName('CLIEA13ID').AsString + '"') ;

  DM.TblTicketPreVendaCabClienteDependente.AsString  := SQLCup.FieldByName('CLDPICOD').AssTring ;
  DM.TblTicketPreVendaCabTotalNominal.AsString  := SQLCup.FieldByName('CUPON2TOTITENS').AsString ;
  DM.TblTicketPreVendaCabTaxaCrediario.Value    := 0 ;
  DM.TblTicketPreVendaCabTaxaTele.AsString      := SQLCup.FieldByName('CUPON3CREDTAXA').Asstring ;
  DM.TblTicketPreVendaCabAcrescimo.AsString     := SQLCup.FieldByName('CUPON2ACRESC').AsString ;
  DM.TblTicketPreVendaCabDesconto.AsString      := SQLCup.FieldByName('CUPON2DESC').AsString ;
  DM.TblTicketPreVendaCabTotalGeral.AsString    := SQLCup.FieldByName('CUPON2TOTITENS').Value + SQLCup.FieldByName('CUPON2ACRESC').Value -
                                                   SQLCup.FieldByName('CUPON2DESC').Value - SQLCup.FieldByName('CUPON3BONUSTROCA').Value ;

  DM.TblTicketPreVendaCabVlrEntrada.Value       := Valor_Entrada;
  DM.TblTicketPreVendaCabTroco.AsString         := SQLCup.FieldByName('TROCO').AsString ;
  DM.TblTicketPreVendaCabDisplayNumero.AsString := SQLCup.FieldByName('DISPICOD').AsString ;
  DM.TblTicketPreVendaCabTipoVenda.Value        := UpperCase(SQLCup.FieldByName('ORIGEMVENDA').AsString) ;
  DM.TblTicketPreVendaCabLevarCasa.value        := SQLCup.FieldByName('CUPOCLEVAR').AsString ;
  DM.TblTicketPreVendaCabBusca.value            := SQLCup.FieldByName('CUPOCBUSCA').AsString ;
  DM.TblTicketPreVendaCabMotoboy.value          := SQLCup.FieldByName('MTBYICOD').AsString ;
  DM.TblTicketPreVendaCabMesaCodigo.AsString    := SQLCup.FieldByName('MESAICOD').AsString ;
  DM.TblTicketPreVendaCabContaCodigo.AsString   := SQLCup.FieldByName('CONTAICOD').AsString;
  DM.TblTicketPreVendaCabSeq_Dia.AsInteger      := SQLCup.FieldByName('SEQ_DIA').AsInteger;

  if Reimpressao = 'N' then
    begin
      DM.TblTicketPreVendaCabNomeClienteVenda.AsString      := NomeClienteVenda;
      DM.TblTicketPreVendaCabDocumentoClienteVenda.AsString := DocumentoClienteVenda;
      DM.TblTicketPreVendaCabEnderecoClienteVenda.AsString  := EnderecoClienteVenda;
      DM.TblTicketPreVendaCabCidadeClienteVenda.AsString    := CidadeClienteVenda;
      DM.TblTicketPreVendaCabBairroClienteVenda.AsString    := BairroClienteVenda ;
      DM.TblTicketPreVendaCabFoneClienteVenda.AsString      := FoneClienteVenda;
      DM.TblTicketPreVendaCabOBSImpressaoCupom.AsString     := OBSImpressaoCupom;
      DM.TblTicketPreVendaCabPlacaVeiculo.AsString          := PlacaCliente;
    end
  else
    begin
      DM.TblTicketPreVendaCabNomeClienteVenda.AsString      := SQLCup.FieldByName('CLIENTENOME').AsString ;
      DM.TblTicketPreVendaCabDocumentoClienteVenda.AsString := SQLCup.FieldByName('CLIENTECNPJ').AsString ;
      DM.TblTicketPreVendaCabEnderecoClienteVenda.AsString  := SQLCup.FieldByName('CLIENTEENDE').AsString ;
      DM.TblTicketPreVendaCabCidadeClienteVenda.AsString    := SQLCup.FieldByName('CLIENTECIDA').AsString ;
      DM.TblTicketPreVendaCabFoneClienteVenda.AsString      := SQLCup.FieldByName('CLIENTEFONE').AsString ;
      DM.TblTicketPreVendaCabOBSImpressaoCupom.AsString     := SQLCup.FieldByName('CUPOV254OBS').AsString ;
      DM.TblTicketPreVendaCabPlacaVeiculo.AsString          := SQLCup.FieldByName('CUPOA8PLACAVEIC').AsString ;
    end;

  if DM.SQLConfigVendaCFVECINFDADOVENDA.Value = 'S' then
    begin
      if DM.TblTicketPreVendaCabFoneClienteVenda.AsString = '' then
        DM.TblTicketPreVendaCabFoneCliente.Value   := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA15FONE1', '"' + SQLCup.FieldByName('CLIEA13ID').AsString + '"') ;
      DM.TblTicketPreVendaCabNroCreditCard.Value := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA20NROCARTCRED', '"' + SQLCup.FieldByName('CLIEA13ID').AsString + '"') ;
      DM.TblTicketPreVendaCabMensagem2.Value     := MensagemVenda ;
      DM.TblTicketPreVendaCabDataEntrega.AsString := DataEntregaVenda ;

      DM.TblTicketPreVendaCabPessoaRecebeNome.AsString  := 'Nome.... : ' + NomeClienteRec ;
      DM.TblTicketPreVendaCabPessoaRecebeEnder.AsString := 'Endereco.: ' + EnderecoClienteRec ;
      DM.TblTicketPreVendaCabPessoaRecebeBai.AsString   := 'Bairro...: ' + BairroCLienteRec ;
      DM.TblTicketPreVendaCabPessoaRecebeCid.AsString   := 'Cidade...: ' + CidadeClienteRec ;
      DM.TblTicketPreVendaCabPessoaRecebeUF.AsString    := EstadoClienteRec ;
      DM.TblTicketPreVendaCabPessoaRecebeFone.AsString  := 'Fone: ' + FoneClienteRec ;
    end ;

  DM.TblTicketPreVendaCab.Post ;

  SQLCupomIt.Close ;
  SQLCupomIt.MacroByName('MFiltro').Value := 'CUPOA13ID = "' + IDCupom + '"' ;
  SQLCupomIt.Open ;

  while not SQLCupomIt.EOF do
  begin
    DM.TblTicketPreVendaItem.Append ;
    DM.TblTicketPreVendaItemCodigo.Value        := SQLCupomIt.FieldbyName('PRODICOD').Value ;
    DM.TblTicketPreVendaItemDescricao.Value     := SQLLocate('PRODUTO', 'PRODICOD', 'PRODA30ADESCRREDUZ', SQLCupomIt.FieldbyName('PRODICOD').AsString) ;
    DM.TblTicketPreVendaItemComplemento.Value   := SQLCupomIt.FieldbyName('CPITTOBS').Value ;
    DM.TblTicketPreVendaItemImpCozinha.Value    := SQLLocate('PRODUTO', 'PRODICOD', 'PRODCIMPCOZINHA', SQLCupomIt.FieldbyName('PRODICOD').AsString) ;
    DM.TblTicketPreVendaItemImpVale.Value       := SQLLocate('PRODUTO', 'PRODICOD', 'PRODCIMPVALE', SQLCupomIt.FieldbyName('PRODICOD').AsString) ;
    DM.TblTicketPreVendaItemPRODA30COZINHA.Value:= SQLLocate('PRODUTO', 'PRODICOD', 'PRODA30COZINHA', SQLCupomIt.FieldbyName('PRODICOD').AsString) ;
    if SQLCupomIt.FieldbyName('CPITN3QTD').Value > 0 then
      begin
        DM.TblTicketPreVendaItemQuantidade.Value := SQLCupomIt.FieldbyName('CPITN3QTD').Value ;
        DM.TblTicketPreVendaItemTroca.Value      := 'N';
      end;

    DM.TblTicketPreVendaItemValorUnitario.Value := (SQLCupomIt.FieldbyName('CPITN3VLRUNIT').Value + SQLCupomIt.FieldbyName('CPITN2DESC').Value) ;
    DM.TblTicketPreVendaItemValorTotal.Value    := (SQLCupomIt.FieldbyName('CPITN3VLRUNIT').Value) *
                                                   SQLCupomIt.FieldbyName('CPITN3QTD').Value ;
    DM.TblTicketPreVendaItemDesconto.Value       := SQLCupomIt.FieldbyName('CPITN2DESC').Value ;

    DM.TblTicketPreVendaItemBORDA01 .Value       := SQLCupomIt.FieldbyName('BORDA01').Value ;
    DM.TblTicketPreVendaItemBORDA02 .Value       := SQLCupomIt.FieldbyName('BORDA02').Value ;
    DM.TblTicketPreVendaItemBORDA03 .Value       := SQLCupomIt.FieldbyName('BORDA03').Value ;

    DM.TblTicketPreVendaItemSABOR01 .Value       := SQLCupomIt.FieldbyName('SABOR01').Value ;
    DM.TblTicketPreVendaItemSABOR02 .Value       := SQLCupomIt.FieldbyName('SABOR02').Value ;
    DM.TblTicketPreVendaItemSABOR03 .Value       := SQLCupomIt.FieldbyName('SABOR03').Value ;
    DM.TblTicketPreVendaItemSABOR04 .Value       := SQLCupomIt.FieldbyName('SABOR04').Value ;
    DM.TblTicketPreVendaItemSABOR05 .Value       := SQLCupomIt.FieldbyName('SABOR05').Value ;
    DM.TblTicketPreVendaItemSABOR06 .Value       := SQLCupomIt.FieldbyName('SABOR06').Value ;

    DM.TblTicketPreVendaItem.Post ;

    SQLCupomIt.Next ;
  end;

  try
    SQLParcelasVistaVendaTemp.Close;
    SQLParcelasVistaVendaTemp.Open;
    if SQLParcelasVistaVendaTemp <> nil then
      begin
        if not SQLParcelasVistaVendaTemp.IsEmpty then
          begin
            SQLParcelasVistaVendaTemp.First ;
            while not SQLParcelasVistaVendaTemp.EOF do
              begin
                DM.TblTicketPreVendaFin.Append;
                DM.TblTicketPreVendaFinPedICod.Value         := IDCupom;
                DM.TblTicketPreVendaFinValor.AsVariant       := SQLParcelasVistaVendaTemp.fieldbyname('VALORPARC').AsVariant;
                DM.TblTicketPreVendaFinNumerario.AsVariant   := SQLParcelasVistaVendaTemp.fieldbyname('NumerarioLookup').AsVariant;
                DM.TblTicketPreVendaFinVencimento.Value      := Now;
                DM.TblTicketPreVendaFin.Post;
                SQLParcelasVistaVendaTemp.Next ;
              end;
          end;
      end;

    SQLParcelasPrazoVendaTemp.Close;
    SQLParcelasPrazoVendaTemp.Open;
    if SQLParcelasPrazoVendaTemp <> nil then
      begin
        if not SQLParcelasPrazoVendaTemp.IsEmpty then
          begin
            SQLParcelasPrazoVendaTemp.First ;
            while not SQLParcelasPrazoVendaTemp.EOF do
              begin
                DM.TblTicketPreVendaFin.Append;
                DM.TblTicketPreVendaFinPedICod.Value         := IDCupom;
                DM.TblTicketPreVendaFinValor.AsVariant       := SQLParcelasPrazoVendaTemp.fieldbyname('VALORVENCTO').AsVariant;
                DM.TblTicketPreVendaFinVencimento.AsVariant  := SQLParcelasPrazoVendaTemp.fieldbyname('DATAVENCTO').AsVariant;
                DM.TblTicketPreVendaFinNumerario.AsVariant   := SQLParcelasPrazoVendaTemp.fieldbyname('NumerarioLookup').AsVariant;
                DM.TblTicketPreVendaFin.Post;
                SQLParcelasPrazoVendaTemp.Next ;
              end;
          end;
      end;
  except
    Application.ProcessMessages;
  end;

  if FileExists('ImprimirSempre.txt') then
    WinExec(Pchar('IMPRESSAOPREVENDA.EXE'),sw_Show)
  else
  begin
   if Pergunta('SIM', '* * * CONFIRMA A IMPRESSAO DO CUPOM ? * * *') then
    if FileExists('IMPRESSAOPREVENDA.EXE') then
      WinExec(Pchar('IMPRESSAOPREVENDA.EXE'),sw_Show);
  end;

  if FileExists('VALEBEBIDA.EXE') then
    WinExec(Pchar('VALEBEBIDA.EXE'),sw_Show);
  if FileExists('IMPRESSAOCOZINHA.EXE') then
    {if DM.TblTicketPreVendaCabTipoVenda.Value <> 'Tele' then}
      WinExec(Pchar('IMPRESSAOCOZINHA.EXE'),sw_Show);

  if DM.TblTicketPreVendaCab.Active then DM.TblTicketPreVendaCab.Close;
  if DM.TblTicketPreVendaItem.Active then DM.TblTicketPreVendaItem.Close;
  if DM.TblTicketPreVendaFin.Active then DM.TblTicketPreVendaFin.Close;
  if SQLCup.Active then SQLCup.Close;
  if SQLCupomIt.Active then SQLCupomIt.Close;

end ;

procedure GravarTabelaTempImpPreVenda(Terminal, PReVenda, IDCupom : string ; SQLPreVD, SQLPreVDIt : TRxQuery) ;
var
  CodEnaPreV,
  ClieCod,
  TermCod,
  PrvCod  : String ;
  Acresc,
  Desco   : double ;
begin
  try DM.TblTicketPreVendaCab.Close         except Application.ProcessMessages end;
  try DM.TblTicketPreVendaCab.DeleteTable   except Application.ProcessMessages end ;
  try DM.TblTicketPreVendaCab.CreateTable   except Application.ProcessMessages end ;
  try DM.TblTicketPreVendaCab.Open          except Application.ProcessMessages end ;

  try DM.TblTicketPreVendaItem.Close        except Application.ProcessMessages end ;
  try DM.TblTicketPreVendaItem.DeleteTable  except Application.ProcessMessages end ;
  try DM.TblTicketPreVendaItem.CreateTable  except Application.ProcessMessages end ;
  try DM.TblTicketPreVendaItem.Open         except Application.ProcessMessages end ;

  try DM.TblTicketPreVendaFin.Close        except Application.ProcessMessages end ;
  try DM.TblTicketPreVendaFin.DeleteTable  except Application.ProcessMessages end ;
  try DM.TblTicketPreVendaFin.CreateTable  except Application.ProcessMessages end ;
  try DM.TblTicketPreVendaFin.Open         except Application.ProcessMessages end ;

  SQLPreVD.Close ;
  SQLPreVD.MacroByName('MFiltro').Value := 'TERMICOD = ' + Terminal + ' and PRVDICOD = ' + PReVenda ;
  SQLPreVD.Open ;
  if SQLPreVD.IsEmpty then
    begin
      Informa('Problemas ao imprimir pré-venda!');
      Exit;
    end;
  //GRAVAR CABECALHO TICKET

  CodEnaPreV := FormatFloat('000000000000', SQLPreVD.FieldByName('PRVDICOD').AsFloat) ;
  CodEnaPreV := CodEnaPreV + DigitVerifEAN(CodEnaPreV) ;
  DM.TblTicketPreVendaCab.Append ;
  DM.TblTicketPreVendaCabTicketNumero.AsString  := CodEnaPreV ;
  DM.TblTicketPreVendaCabNomeEmpresa.Value      := EmpresaAtualNome;
  DM.TblTicketPreVendaCabFoneEmpresa.Value      := DM.SQLEmpresaEMPRA20FONE.Value;

  DM.TblTicketPreVendaCabDataEmissao.AsString   := SQLPreVD.FieldByName('PDVDDHVENDA').AsString ;
  DM.TblTicketPreVendaCabVendedor.AsString      := SQLLocate('VENDEDOR', 'VENDICOD', 'VENDA60NOME', SQLPreVD.FieldByName('VENDICOD').AsString) ;
  DM.TblTicketPreVendaCabPlano.AsString         := SQLLocate('PLANORECEBIMENTO', 'PLRCICOD', 'PLRCA60DESCR', SQLPreVD.FieldByName('PLRCICOD').AsString) ;
  DM.TblTicketPreVendaCabCliente.AsString       := SQLPreVD.FieldByName('CLIEA13ID').Value + ' ' +
                                                   SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA60RAZAOSOC', '"' + SQLPreVD.FieldByName('CLIEA13ID').AsString + '"') ;
  DM.TblTicketPreVendaCabTotalNominal.AsString  := SQLPreVD.FieldByName('PRVDN2TOTITENS').Value -
                                                   SQLPreVD.FieldByName('PRVDN2ACRESC').Value -
                                                   SQLPreVD.FieldByName('PRVDN2CONVTAXA').Value +
                                                   SQLPreVD.FieldByName('PRVDN2DESC').Value ;

  DM.TblTicketPreVendaCabTaxaTele.AsString      := SQLPreVD.FieldByName('PRVDN2CONVTAXA').Asstring;
  DM.TblTicketPreVendaCabTaxaCrediario.Value    := 0 ;
  DM.TblTicketPreVendaCabAcrescimo.AsString     := SQLPreVD.FieldByName('PRVDN2ACRESC').AsString ;
  DM.TblTicketPreVendaCabDesconto.AsString      := SQLPreVD.FieldByName('PRVDN2DESC').AsString ;
  DM.TblTicketPreVendaCabTotalGeral.AsString    := SQLPreVD.FieldByName('PRVDN2TOTITENS').AsString ;
  DM.TblTicketPreVendaCabPRVDICOD.AsString      := SQLPreVD.FieldByName('PRVDICOD').AsString ;
  DM.TblTicketPreVendaCabTERMICOD.AsString      := SQLPreVD.FieldByName('TERMICOD').AsString ;
  DM.TblTicketPreVendaCabMESACODIGO.AsString    := SQLPreVD.FieldByName('MESAICOD').AsString ;
  DM.TblTicketPreVendaCabCONTACODIGO.AsString   := SQLPreVD.FieldByName('CONTAICOD').AsString ;
  DM.TblTicketPreVendaCabClienteDependente.AsString  := SQLPreVD.FieldByName('CLDPICOD').AssTring ;
  DM.TblTicketPreVendaCabTroco.AsString         := SQLPreVD.FieldByName('TROCO').AsString ;
  DM.TblTicketPreVendaCabDisplayNumero.AsString := SQLPreVD.FieldByName('DISPICOD').AsString ;
  DM.TblTicketPreVendaCabTipoVenda.Value        := uppercase(SQLPreVD.FieldByName('ORIGEMVENDA').AsString) ;
  DM.TblTicketPreVendaCabLevarCasa.value        := SQLPreVD.FieldByName('CUPOCLEVAR').AsString ;
  DM.TblTicketPreVendaCabBusca.value            := SQLPreVD.FieldByName('CUPOCBUSCA').AsString ;
  DM.TblTicketPreVendaCabMotoboy.value          := SQLPreVD.FieldByName('MTBYICOD').AsString ;
  DM.TblTicketPreVendaCabSequencial.AsString    := SQLPreVD.FieldByName('SEQUENCIAL').AsString ;
  DM.TblTicketPreVendaCabSeq_Dia.AsString       := SQLPreVD.FieldByName('SEQ_DIA').AsString;

  if NomeClienteVenda <> '' then
    DM.TblTicketPreVendaCabNomeClienteVenda.AsString      := NomeClienteVenda
  else
    DM.TblTicketPreVendaCabNomeClienteVenda.AsString      := SQLPreVD.FieldByName('CLIENTENOME').AsString ;
  if DocumentoClienteVenda <> '' then
    DM.TblTicketPreVendaCabDocumentoClienteVenda.AsString := DocumentoClienteVenda
  else
    DM.TblTicketPreVendaCabDocumentoClienteVenda.AsString := SQLPreVD.FieldByName('CLIENTECNPJ').AsString ;
  if EnderecoClienteVenda <> '' then
    DM.TblTicketPreVendaCabEnderecoClienteVenda.AsString  := EnderecoClienteVenda
  else
    DM.TblTicketPreVendaCabEnderecoClienteVenda.AsString  := SQLPreVD.FieldByName('CLIENTEENDE').AsString ;
  if CidadeClienteVenda <> '' then
    DM.TblTicketPreVendaCabCidadeClienteVenda.AsString    := CidadeClienteVenda
  else
    DM.TblTicketPreVendaCabCidadeClienteVenda.AsString    := SQLPreVD.FieldByName('CLIENTECIDA').AsString ;
 if BairroClienteVenda <> '' then
    DM.TblTicketPreVendaCabBairroClienteVenda.AsString    := BairroClienteVenda
  else
    DM.TblTicketPreVendaCabBairroClienteVenda.AsString    := SQLPreVD.FieldByName('CLIENTEBAIRRO').AsString ;
  if FoneClienteVenda <> '' then
    DM.TblTicketPreVendaCabFoneClienteVenda.AsString      := FoneClienteVenda
  else
    DM.TblTicketPreVendaCabCidadeClienteVenda.AsString    := SQLPreVD.FieldByName('CLIENTEFONE').AsString ;
  if OBSImpressaoCupom <> '' then
    DM.TblTicketPreVendaCabOBSImpressaoCupom.AsString     := OBSImpressaoCupom
  else
    DM.TblTicketPreVendaCabOBSImpressaoCupom.AsString     := SQLPreVD.FieldByName('CLIENTEOBS').AsString ;

  DM.TblTicketPreVendaCab.Post ;

  SQLPreVDIt.Close ;
  SQLPreVDIt.MacroByName('MFiltro').Value := 'TERMICOD = ' + Terminal + ' and PRVDICOD = ' + PReVenda ;
  SQLPreVDIt.Open ;
  while not SQLPreVDIt.EOF do
  begin
    DM.TblTicketPreVendaItem.Append ;
    DM.TblTicketPreVendaItemCodigo.Value        := SQLPreVDIt.FieldbyName('PRODICOD').Value ;
    DM.TblTicketPreVendaItemDescricao.Value     := SQLLocate('PRODUTO', 'PRODICOD', 'PRODA30ADESCRREDUZ', SQLPreVDIt.FieldbyName('PRODICOD').AsString) ;
    DM.TblTicketPreVendaItemComplemento.Value   := SQLPreVDIt.FieldbyName('PVITTOBS').Value ;
    DM.TblTicketPreVendaItemImpCozinha.Value    := SQLLocate('PRODUTO', 'PRODICOD', 'PRODCIMPCOZINHA', SQLPreVDIt.FieldbyName('PRODICOD').AsString) ;
    DM.TblTicketPreVendaItemImpVale.Value       := SQLLocate('PRODUTO', 'PRODICOD', 'PRODCIMPVALE', SQLPreVDIt.FieldbyName('PRODICOD').AsString) ;
    DM.TblTicketPreVendaItemPRODA30COZINHA.Value:= SQLLocate('PRODUTO', 'PRODICOD', 'PRODA30COZINHA', SQLPreVDIt.FieldbyName('PRODICOD').AsString) ;
    // Testa se é item de normal ou de troca
    if SQLPreVDIt.FieldbyName('PVITN3QTD').Value > 0 then
      begin
        DM.TblTicketPreVendaItemQuantidade.Value    :=  SQLPreVDIt.FieldbyName('PVITN3QTD').Value ;
        DM.TblTicketPreVendaItemValorUnitario.Value := (SQLPreVDIt.FieldbyName('PVITN3VLRUNIT').Value  + SQLPreVDIt.FieldbyName('PVITN2DESC').Value) ;
        DM.TblTicketPreVendaItemValorTotal.Value    := (SQLPreVDIt.FieldbyName('PVITN3VLRUNIT').Value) * SQLPreVDIt.FieldbyName('PVITN3QTD').Value ;
        DM.TblTicketPreVendaItemTroca.Value         := 'N';
      end
    else
      begin
        DM.TblTicketPreVendaItemQuantidade.Value    :=  SQLPreVDIt.FieldbyName('PVITN3QTDTROCA').Value ;
        DM.TblTicketPreVendaItemValorUnitario.Value := (SQLPreVDIt.FieldbyName('PVITN3VLRUNIT').Value  + SQLPreVDIt.FieldbyName('PVITN2DESC').Value) ;
        DM.TblTicketPreVendaItemValorTotal.Value    := (SQLPreVDIt.FieldbyName('PVITN3VLRUNIT').Value) * SQLPreVDIt.FieldbyName('PVITN3QTDTROCA').Value ;
        DM.TblTicketPreVendaItemTroca.Value         := 'S';
      end;

    DM.TblTicketPreVendaItemDesconto.Value      := SQLPreVDIt.FieldbyName('PVITN2DESC').Value ;

    DM.TblTicketPreVendaItemBORDA01 .Value      := SQLPreVDIt.FieldbyName('BORDA01').AsString ;
    DM.TblTicketPreVendaItemBORDA02 .Value      := SQLPreVDIt.FieldbyName('BORDA02').AsString ;
    DM.TblTicketPreVendaItemBORDA03 .Value      := SQLPreVDIt.FieldbyName('BORDA03').AsString ;

    DM.TblTicketPreVendaItemSABOR01 .Value      := SQLPreVDIt.FieldbyName('SABOR01').AsString ;
    DM.TblTicketPreVendaItemSABOR02 .Value      := SQLPreVDIt.FieldbyName('SABOR02').AsString ;
    DM.TblTicketPreVendaItemSABOR03 .Value      := SQLPreVDIt.FieldbyName('SABOR03').AsString ;
    DM.TblTicketPreVendaItemSABOR04 .Value      := SQLPreVDIt.FieldbyName('SABOR04').AsString ;
    DM.TblTicketPreVendaItemSABOR05 .Value      := SQLPreVDIt.FieldbyName('SABOR05').AsString ;
    DM.TblTicketPreVendaItemSABOR06 .Value      := SQLPreVDIt.FieldbyName('SABOR06').AsString ;

    DM.TblTicketPreVendaItem.Post ;

    SQLPreVDIt.Next ;
  end;

  // Financeiro
  dm.SQLTemplate.Close ;
  dm.SQLTemplate.sql.Text := 'Select * from prevendanumerario where TERMICOD = ' + Terminal + ' and PRVDICOD = ' + PReVenda ;
  dm.SQLTemplate.Open ;
  if not dm.SQLTemplate.IsEmpty then
    begin
      dm.SQLTemplate.First;
      while not dm.SQLTemplate.Eof do
      begin
        DM.TblTicketPreVendaFin.Append;
        DM.TblTicketPreVendaFinPedICod.Value         := SQLPreVDIt.FieldbyName('PRODICOD').Value ;
        DM.TblTicketPreVendaFinNumerario.AsString    := RetornaNumerario(dm.SQLTemplate.fieldbyname('NUMEICOD').AsString);
        DM.TblTicketPreVendaFinValor.Value           := dm.SQLTemplate.fieldbyname('PVNUN2VLR').AsFloat;
        DM.TblTicketPreVendaFin.Post;
        dm.SQLTemplate.Next;
      end;
    end
  else
    begin
      DM.TblTicketPreVendaFin.Append;
      DM.TblTicketPreVendaFinPedICod.Value         := SQLPreVDIt.FieldbyName('PRODICOD').Value ;
      if SQLPreVD.FieldByName('TROCO').AsVariant > 0 then
        DM.TblTicketPreVendaFinValor.Value   := SQLPreVD.FieldByName('PRVDN2TOTITENS').Value + SQLPreVD.FieldByName('TROCO').Value
      else
        DM.TblTicketPreVendaFinValor.Value   := SQLPreVD.FieldByName('PRVDN2TOTITENS').Value;
      DM.TblTicketPreVendaFinNumerario.AsVariant   := 'DINHEIRO';
      DM.TblTicketPreVendaFinVencimento.Value      := Now;
      DM.TblTicketPreVendaFin.Post;
    end;
  dm.SQLTemplate.Close ;

  try DM.TblTicketPreVendaCab.Close;  except Application.ProcessMessages end;
  try DM.TblTicketPreVendaItem.Close; except Application.ProcessMessages end;
  try DM.TblTicketPreVendaFin.Close;  except Application.ProcessMessages end;

  if (DM.SQLTerminalAtivoTERMCIMPPREVENDA.Value = 'S') then
  begin
    // Verifica se existe impressora Nao Fiscal
    if FileExists('IMPRESSAOPREVENDA.EXE') then
      WinExec(Pchar('IMPRESSAOPREVENDA.EXE'),sw_Show);

    if FileExists('VALEBEBIDA.EXE') then
      WinExec(Pchar('VALEBEBIDA.EXE'),sw_Show);

    if FileExists('IMPRESSAOCOZINHA.EXE') then
      WinExec(Pchar('IMPRESSAOCOZINHA.EXE'),sw_Show);
  end ;
end ;

procedure InformaG(Texto:string) ;
begin
  Beep ;
  Application.CreateForm(TFormTelaMensagem, FormTelaMensagem) ;
  FormTelaMensagem.LblMsg.Caption := Texto ;
  FormTelaMensagem.LblMsg.Refresh ;
  FormTelaMensagem.ShowModal ;
  FormTelaMensagem.BringToFront;
end ;

function  RetornaAliquotaMediaProduto(CodNCM, OrigemProduto : Integer) : Double;
var
  NCM : TQuery;
begin
  NCM := TQuery.Create(DM);
  NCM.DatabaseName := 'DB';
  NCM.Close;
  NCM.SQL.Clear;
  NCM.SQL.ADD('SELECT NCMN2ALIQNAC, NCMN2ALIQIMP FROM NCM WHERE NCMICOD = ' + IntToStr(CodNCM));
  NCM.Open;
  if not NCM.IsEmpty then
    begin
      if OrigemProduto = 0 then
        begin
          if NCM.FindField('NCMN2ALIQNAC').AsFloat > 0 then
            RetornaAliquotaMediaProduto := NCM.FindField('NCMN2ALIQNAC').AsFloat
          else
            RetornaAliquotaMediaProduto := 0;
        end
      else
        begin
          if NCM.FindField('NCMN2ALIQIMP').AsFloat > 0 then
            RetornaAliquotaMediaProduto := NCM.FindField('NCMN2ALIQIMP').AsFloat
          else
            RetornaAliquotaMediaProduto := 0;
        end;
    end
  else
    RetornaAliquotaMediaProduto := 0;

  NCM.Close;
  NCM.Destroy;
end;

end.


