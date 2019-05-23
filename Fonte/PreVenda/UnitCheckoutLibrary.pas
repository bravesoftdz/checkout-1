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
  ReativarPreVenda,
  ReativarPedidoOrcamento,
  ImportandoPreVenda,
  E_PRODBALANCA : boolean ;
  CupoA13IDDevol,
  CodigoAntigoCupom : String ;


function  ConverteCodigo(Codigo : String):string;
procedure GravarTabelaTempImpPreVendaDeCupom(IDCupom : string; SQLParcelasVistaVendaTemp, SQLParcelasPrazoVendaTemp, SQLCup, SQLCupomIt : TRxQuery; Valor_Entrada : Double) ;
procedure GravarTabelaTempImpPreVenda(Terminal, PReVenda, IDCupom : string ; SQLPreVD, SQLPreVDIt : TRxQuery) ;
procedure InformaG(Texto:string) ;
procedure GravarTabelaTempPedidoRetorno(Doc : string; NroVias : integer) ;
procedure GravarTabelaTempImpOrcamento(IDOrcamento : string ; SQLOrcamento, SQLOrcamentoItem : TRxQuery) ;
procedure GeraArquivoExternoParaImpOrcamento(IDOrcamento, CampoValorParcela, CampoDataVectoParcela : string ; SQLOrcamento, SQLOrcamentoItem, SQLParcelasVista, SQLParcelasPrazo : TRxQuery);
function  RetornaAliquotaICMSProduto(CodICMS : Integer) : Double;
function  RetornaREDUCAOICMSProduto(CodICMS : Integer) : Double;
function  RetornaBaseIcmsProdutosVenda(Terminal : Integer) : Double;
function RetornaValorIcmsProdutosVenda(Terminal : Integer) : Double;
implementation

uses DataModulo, UnitLibrary, TelaImpressaoPreVenda, TelaMensagem,
     TelaFechamentoVenda, TelaItens, DataModuloTemplate;

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
  BaseICMS.DatabaseName := 'DB';
  BaseICMS.Close;
  BaseICMS.SQL.Clear;
  BaseICMS.SQL.ADD('SELECT SUM(BASEICMS) FROM ITENSVENDATEMP WHERE TERMICOD = ' + IntToStr(Terminal));
  BaseICMS.Open;
  if not BaseICMS.IsEmpty then
    begin
      if BaseICMS.FindField('SUM').AsFloat > 0 then
        RetornaBaseIcmsProdutosVenda := BaseICMS.FindField('SUM').AsFloat
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
  ValorICMS.DatabaseName := 'DB';
  ValorICMS.Close;
  ValorICMS.SQL.Clear;
  ValorICMS.SQL.ADD('SELECT SUM(VLRICMS) FROM ITENSVENDATEMP WHERE TERMICOD = ' + IntToStr(Terminal));
  ValorICMS.Open;
  if not ValorICMS.IsEmpty then
    begin
      if ValorICMS.FindField('SUM').AsFloat > 0 then
        RetornaValorIcmsProdutosVenda := ValorICMS.FindField('SUM').AsFloat
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

procedure GravarTabelaTempImpPreVendaDeCupom(IDCupom : string; SQLParcelasVistaVendaTemp, SQLParcelasPrazoVendaTemp, SQLCup , SQLCupomIt : TRxQuery; Valor_Entrada : Double ) ;
var
  TargetPrinter, NumerarioPrazo : string ;
begin
  while Application.FindComponent('FormTelaImpressaoPreVenda') <> nil do
    Application.ProcessMessages ;

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
  DM.TblTicketPreVendaCabTicketNumero.AsString  := SQLCup.FieldByName('CUPOA13ID').AsString ;
  DM.TblTicketPreVendaCabVendedor.AsString      := SQLLocate('VENDEDOR', 'VENDICOD', 'VENDA60NOME', SQLCup.FieldByName('VENDICOD').AsString) ;
  DM.TblTicketPreVendaCabPlano.AsString         := SQLLocate('PLANORECEBIMENTO', 'PLRCICOD', 'PLRCA60DESCR', SQLCup.FieldByName('PLRCICOD').AsString) ;
  DM.TblTicketPreVendaCabCliente.AsString       := SQLCup.FieldByName('CLIEA13ID').Value + ' ' +
                                                   SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA60RAZAOSOC', '"' + SQLCup.FieldByName('CLIEA13ID').AsString + '"') ;
  DM.TblTicketPreVendaCabTotalNominal.AsString  := SQLCup.FieldByName('CUPON2TOTITENS').AsString ;
  DM.TblTicketPreVendaCabTaxaCrediario.Value    := 0 ;
  DM.TblTicketPreVendaCabAcrescimo.AsString     := SQLCup.FieldByName('CUPON2ACRESC').AsString ;
  DM.TblTicketPreVendaCabDesconto.AsString      := SQLCup.FieldByName('CUPON2DESC').AsString ;
  DM.TblTicketPreVendaCabTotalGeral.AsString    := SQLCup.FieldByName('CUPON2TOTITENS').Value +
                                                   SQLCup.FieldByName('CUPON2ACRESC').Value -
                                                   SQLCup.FieldByName('CUPON2DESC').Value -
                                                   SQLCup.FieldByName('CUPON3BONUSTROCA').Value ;

  DM.TblTicketPreVendaCabVlrEntrada.Value := Valor_Entrada;

  if DM.SQLConfigVendaCFVECINFDADOVENDA.Value = 'S' then
    begin
      DM.TblTicketPreVendaCabNomeEmpresa.Value   := DM.SQLConfigGeralEmpresaLookup.Value ;
      DM.TblTicketPreVendaCabFoneEmpresa.Value   := '' ;
      DM.TblTicketPreVendaCabFoneCliente.Value   := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA15FONE1', '"' + SQLCup.FieldByName('CLIEA13ID').AsString + '"') ;
      DM.TblTicketPreVendaCabNroCreditCard.Value := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA20NROCARTCRED', '"' + SQLCup.FieldByName('CLIEA13ID').AsString + '"') ;
      DM.TblTicketPreVendaCabMensagem2.Value     := MensagemVenda ;
      DM.TblTicketPreVendaCabDataEmissao.Value   := SQLCup.FieldByName('REGISTRO').Value;

      DM.TblTicketPreVendaCabNomeClienteVenda.AsString      := NomeClienteVenda;
      DM.TblTicketPreVendaCabDocumentoClienteVenda.AsString := DocumentoClienteVenda;
      DM.TblTicketPreVendaCabEnderecoClienteVenda.AsString  := EnderecoClienteVenda;
      DM.TblTicketPreVendaCabCidadeClienteVenda.AsString    := CidadeClienteVenda;
      DM.TblTicketPreVendaCabOBSImpressaoCupom.AsString     := OBSImpressaoCupom;

      DM.TblTicketPreVendaCabNumerarioPagto.Value := '' ;

      SQLParcelasVistaVendaTemp.Close;
      SQLParcelasVistaVendaTemp.Open;
      if SQLParcelasVistaVendaTemp <> nil then
        begin
          SQLParcelasVistaVendaTemp.First ;
          while not SQLParcelasVistaVendaTemp.EOF do
            begin
              if Pos(SQLParcelasVistaVendaTemp.FieldByName('NumerarioLookup').Value, DM.TblTicketPreVendaCabNumerarioPagto.Value) = 0 then
                DM.TblTicketPreVendaCabNumerarioPagto.Value := DM.TblTicketPreVendaCabNumerarioPagto.Value + ' ' +
                                                               SQLParcelasVistaVendaTemp.FieldByName('NumerarioLookup').Value ;
              SQLParcelasVistaVendaTemp.Next ;
            end ;
        end;
      try
        SQLParcelasPrazoVendaTemp.Close;
        SQLParcelasPrazoVendaTemp.Open;
        if SQLParcelasPrazoVendaTemp <> nil then
          begin
            SQLParcelasPrazoVendaTemp.First ;
            while not SQLParcelasPrazoVendaTemp.EOF do
              begin
                NumerarioPrazo := SQLLocate('NUMERARIO','NUMEICOD','NUMEA30DESCR',SQLParcelasPrazoVendaTemp.FieldByName('NUMEICOD').AsString);
                if Pos(NumerarioPrazo, DM.TblTicketPreVendaCabNumerarioPagto.AsString) = 0 then
                  DM.TblTicketPreVendaCabNumerarioPagto.Value := DM.TblTicketPreVendaCabNumerarioPagto.Value +  ' ' +
                                                                 SQLParcelasPrazoVendaTemp.FieldByName('NumerarioLookup').AsString ;
                SQLParcelasPrazoVendaTemp.Next ;
              end;
          end;
      except
        Application.ProcessMessages;
      end;

      DM.TblTicketPreVendaCabTipoVenda.Value      := SQLLocate('TIPOVENDA', 'TPVDICOD', 'TPVDA60DESCR', IntToStr(TipoVenda)) ;
      DM.TblTicketPreVendaCabDataEmissao.Value    := Date;
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
    DM.TblTicketPreVendaItemDescricao.Value     := SQLLocate('PRODUTO', 'PRODICOD', 'PRODA60DESCR', SQLCupomIt.FieldbyName('PRODICOD').AsString) ;
    if SQLCupomIt.FieldbyName('CPITN3QTDTROCA').Value > 0 then
      DM.TblTicketPreVendaItemDescricao.Value := DM.TblTicketPreVendaItemDescricao.Value + '(T)' ;

    DM.TblTicketPreVendaItemMarca.Value         := '' ;
    DM.TblTicketPreVendaItemReferencia.Value    := '' ;
    if SQLCupomIt.FieldbyName('CPITN3QTD').Value > 0 then
      DM.TblTicketPreVendaItemQuantidade.Value := SQLCupomIt.FieldbyName('CPITN3QTD').Value ;

    if SQLCupomIt.FieldbyName('CPITN3QTDTROCA').Value > 0 then
      DM.TblTicketPreVendaItemQuantidade.Value := SQLCupomIt.FieldbyName('CPITN3QTDTROCA').Value ;

    DM.TblTicketPreVendaItemValorUnitario.Value := (SQLCupomIt.FieldbyName('CPITN3VLRUNIT').Value + SQLCupomIt.FieldbyName('CPITN2DESC').Value) ;
    DM.TblTicketPreVendaItemValorTotal.Value    := (SQLCupomIt.FieldbyName('CPITN3VLRUNIT').Value) *
                                                   SQLCupomIt.FieldbyName('CPITN3QTD').Value ;
    DM.TblTicketPreVendaItemDesconto.Value       := SQLCupomIt.FieldbyName('CPITN2DESC').Value ;
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
                DM.TblTicketPreVendaFin.Post;
                SQLParcelasPrazoVendaTemp.Next ;
              end;
          end;
      end;
  except
    Application.ProcessMessages;
  end;

  if (DM.SQLTerminalAtivoTERMCIMPPREVENDA.Value = 'S') and
     ((DM.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString <> '') or (ImpNaoFiscalAtual <> '')) then
  begin
    {TargetPrinter := DM.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString ;

    TicketPreVenda.PrinterName   := Copy(TargetPrinter, 1, Pos('=', TargetPrinter)-1) ;
    TicketPreVenda.PrinterDriver := Copy(TargetPrinter, Pos('=', TargetPrinter)+1, Pos(',', TargetPrinter)-Pos('=', TargetPrinter)-1) ;
    TicketPreVenda.PrinterPort   := Copy(TargetPrinter, Pos(',', TargetPrinter)+1, 200) ;

    TicketPreVenda.PrintReport ;}
    Application.CreateForm(TFormTelaImpressaoPreVenda, FormTelaImpressaoPreVenda) ;
    FormTelaImpressaoPreVenda.ImprimeClick(Nil) ;
  end ;
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
  while Application.FindComponent('FormTelaImpressaoPreVenda') <> nil do
    Application.ProcessMessages ;

  DM.TblTicketPreVendaCab.Close ;
  try DM.TblTicketPreVendaCab.DeleteTable ; except showmessage('Nao Deletou DM.TblTicketPreVendaCab') end ;
  try DM.TblTicketPreVendaCab.CreateTable ; except showmessage('Nao Criou DM.TblTicketPreVendaCab') end ;
  DM.TblTicketPreVendaCab.Open ;

  DM.TblTicketPreVendaItem.Close ;
  try DM.TblTicketPreVendaItem.DeleteTable ; except showmessage('Nao Deletou DM.TblTicketPreVendaItem') end ;
  try DM.TblTicketPreVendaItem.CreateTable ; except showmessage('Nao Criou DM.TblTicketPreVendaItem') end ;
  DM.TblTicketPreVendaItem.Open ;

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
  DM.TblTicketPreVendaCabVendedor.AsString      := SQLLocate('VENDEDOR', 'VENDICOD', 'VENDA60NOME', SQLPreVD.FieldByName('VENDICOD').AsString) ;
  DM.TblTicketPreVendaCabPlano.AsString         := SQLLocate('PLANORECEBIMENTO', 'PLRCICOD', 'PLRCA60DESCR', SQLPreVD.FieldByName('PLRCICOD').AsString) ;
  DM.TblTicketPreVendaCabCliente.AsString       := SQLPreVD.FieldByName('CLIEA13ID').Value + ' ' +
                                                   SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA60RAZAOSOC', '"' + SQLPreVD.FieldByName('CLIEA13ID').AsString + '"') ;
  DM.TblTicketPreVendaCabTotalNominal.AsString  := SQLPreVD.FieldByName('PRVDN2TOTITENS').Value -
                                                   SQLPreVD.FieldByName('PRVDN2ACRESC').Value +
                                                   SQLPreVD.FieldByName('PRVDN2DESC').Value ;
  DM.TblTicketPreVendaCabTaxaCrediario.Value    := 0 ;
  DM.TblTicketPreVendaCabAcrescimo.AsString     := SQLPreVD.FieldByName('PRVDN2ACRESC').AsString ;
  DM.TblTicketPreVendaCabDesconto.AsString      := SQLPreVD.FieldByName('PRVDN2DESC').AsString ;
  DM.TblTicketPreVendaCabTotalGeral.AsString    := SQLPreVD.FieldByName('PRVDN2TOTITENS').Value ;

  DM.TblTicketPreVendaCabNomeClienteVenda.AsString      := NomeClienteVenda;
  DM.TblTicketPreVendaCabDocumentoClienteVenda.AsString := DocumentoClienteVenda;
  DM.TblTicketPreVendaCabEnderecoClienteVenda.AsString  := EnderecoClienteVenda;
  DM.TblTicketPreVendaCabCidadeClienteVenda.AsString    := CidadeClienteVenda;
  DM.TblTicketPreVendaCabOBSImpressaoCupom.AsString     := OBSImpressaoCupom;

  DM.TblTicketPreVendaCab.Post ;

  SQLPreVDIt.Close ;
  SQLPreVDIt.MacroByName('MFiltro').Value := 'TERMICOD = ' + Terminal + ' and PRVDICOD = ' + PReVenda ;
  SQLPreVDIt.Open ;
  while not SQLPreVDIt.EOF do
  begin
    DM.TblTicketPreVendaItem.Append ;
    DM.TblTicketPreVendaItemCodigo.Value        := SQLPreVDIt.FieldbyName('PRODICOD').Value ;
    DM.TblTicketPreVendaItemDescricao.Value     := SQLLocate('PRODUTO', 'PRODICOD', 'PRODA60DESCR', SQLPreVDIt.FieldbyName('PRODICOD').AsString) ;
    DM.TblTicketPreVendaItemMarca.Value         := '' ;
    DM.TblTicketPreVendaItemReferencia.Value    := '' ;
    // Testa se é item de normal ou de troca
    if SQLPreVDIt.FieldbyName('PVITN3QTD').Value > 0 then
      begin
        DM.TblTicketPreVendaItemQuantidade.Value    :=  SQLPreVDIt.FieldbyName('PVITN3QTD').Value ;
        DM.TblTicketPreVendaItemValorUnitario.Value := (SQLPreVDIt.FieldbyName('PVITN3VLRUNIT').Value  + SQLPreVDIt.FieldbyName('PVITN2DESC').Value) ;
        DM.TblTicketPreVendaItemValorTotal.Value    := (SQLPreVDIt.FieldbyName('PVITN3VLRUNIT').Value) * SQLPreVDIt.FieldbyName('PVITN3QTD').Value ;
      end
    else
      begin
        DM.TblTicketPreVendaItemQuantidade.Value    :=  SQLPreVDIt.FieldbyName('PVITN3QTDTROCA').Value ;
        DM.TblTicketPreVendaItemValorUnitario.Value := (SQLPreVDIt.FieldbyName('PVITN3VLRUNIT').Value  + SQLPreVDIt.FieldbyName('PVITN2DESC').Value) ;
        DM.TblTicketPreVendaItemValorTotal.Value    := (SQLPreVDIt.FieldbyName('PVITN3VLRUNIT').Value) * SQLPreVDIt.FieldbyName('PVITN3QTDTROCA').Value ;
      end;
    DM.TblTicketPreVendaItemDesconto.Value      := SQLPreVDIt.FieldbyName('PVITN2DESC').Value ;
    DM.TblTicketPreVendaItem.Post ;

    SQLPreVDIt.Next ;
  end;

  if (DM.SQLTerminalAtivoTERMCIMPPREVENDA.Value = 'S') and
     (DM.SQLConfigVendaCFVECINFDADOVENDA.Value <> 'S') and
     (DM.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString <> '') then
  begin
    {TargetPrinter := DM.SQLTerminalAtivoTERMA60IMPPEDIDO.AsString ;

    TicketPreVenda.PrinterName   := Copy(TargetPrinter, 1, Pos('=', TargetPrinter)-1) ;
    TicketPreVenda.PrinterDriver := Copy(TargetPrinter, Pos('=', TargetPrinter)+1, Pos(',', TargetPrinter)-Pos('=', TargetPrinter)-1) ;
    TicketPreVenda.PrinterPort   := Copy(TargetPrinter, Pos(',', TargetPrinter)+1, 200) ;

    TicketPreVenda.PrintReport ;}
    Application.CreateForm(TFormTelaImpressaoPreVenda, FormTelaImpressaoPreVenda) ;
    FormTelaImpressaoPreVenda.ImprimeClick(Nil) ;
  end ;
end ;

procedure GravarTabelaTempImpOrcamento(IDOrcamento : string ; SQLOrcamento, SQLOrcamentoItem : TRxQuery) ;
begin
  while Application.FindComponent('FormTelaImpressaoPreVenda') <> nil do
    Application.ProcessMessages ;

  DM.TblTicketPreVendaCab.Close ;
  try DM.TblTicketPreVendaCab.DeleteTable ; except end ;
  DM.TblTicketPreVendaCab.CreateTable ;
  DM.TblTicketPreVendaCab.Open ;

  DM.TblTicketPreVendaItem.Close ;
  try DM.TblTicketPreVendaItem.DeleteTable ; except end ;
  DM.TblTicketPreVendaItem.CreateTable ;
  DM.TblTicketPreVendaItem.Open ;

  SQLOrcamento.Close ;
  SQLOrcamento.MacroByName('MFiltro').Value := 'PDVDA13ID = "' + IDOrcamento  + '"';
  SQLOrcamento.Open ;
  if SQLOrcamento.IsEmpty then
    begin
      Informa('Problemas ao imprimir Orçamento!');
      Exit;
    end;
  //GRAVAR CABECALHO TICKET
  DM.TblTicketPreVendaCab.Append ;
  DM.TblTicketPreVendaCabTicketNumero.AsString  := SQLOrcamento.FieldByName('PDVDA13ID').AsString;
  DM.TblTicketPreVendaCabVendedor.AsString      := SQLLocate('VENDEDOR', 'VENDICOD', 'VENDA60NOME', SQLOrcamento.FieldByName('VENDICOD').AsString) ;
  DM.TblTicketPreVendaCabPlano.AsString         := SQLLocate('PLANORECEBIMENTO', 'PLRCICOD', 'PLRCA60DESCR', SQLOrcamento.FieldByName('PLRCICOD').AsString) ;
  DM.TblTicketPreVendaCabCliente.AsString       := SQLOrcamento.FieldByName('CLIEA13ID').Value + ' ' +
                                                   SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA60RAZAOSOC', '"' + SQLOrcamento.FieldByName('CLIEA13ID').AsString + '"') ;
  DM.TblTicketPreVendaCabTotalNominal.AsFloat   := SQLOrcamento.FieldByName('PDVDN2TOTPROD').AsFloat +
                                                   SQLOrcamento.FieldByName('PDVDN2VLRDESC').AsFloat +
                                                   SQLOrcamento.FieldByName('PDVDN2VLRDESCPROM').AsFloat -
                                                   SQLOrcamento.FieldByName('PDVDN2VLRFRETE').AsFloat;
  DM.TblTicketPreVendaCabTaxaCrediario.Value    := 0;
  DM.TblTicketPreVendaCabAcrescimo.AsFloat      := 0;
  DM.TblTicketPreVendaCabDesconto.AsString      := SQLOrcamento.FieldByName('PDVDN2VLRDESC').AsString ;
  DM.TblTicketPreVendaCabTotalGeral.AsString    := SQLOrcamento.FieldByName('PDVDN2TOTPROD').Value ;
  DM.TblTicketPreVendaCabMensagem.AsString      := SQLOrcamento.FieldByName('PDVDTOBS').AsString;

  DM.TblTicketPreVendaCabNomeClienteVenda.AsString      := NomeClienteVenda;
  DM.TblTicketPreVendaCabDocumentoClienteVenda.AsString := DocumentoClienteVenda;
  DM.TblTicketPreVendaCabEnderecoClienteVenda.AsString  := EnderecoClienteVenda;
  DM.TblTicketPreVendaCabCidadeClienteVenda.AsString    := CidadeClienteVenda;
  DM.TblTicketPreVendaCabOBSImpressaoCupom.AsString     := OBSImpressaoCupom;

  DM.TblTicketPreVendaCab.Post ;

  SQLOrcamentoItem.Close ;
  SQLOrcamentoItem.MacroByName('MFiltro').Value := 'PDVDA13ID = "' + IDOrcamento + '"';
  SQLOrcamentoItem.Open ;
  // Itens
  while not SQLOrcamentoItem.EOF do
  begin
    DM.TblTicketPreVendaItem.Append ;
    DM.TblTicketPreVendaItemCodigo.Value        := SQLOrcamentoItem.FieldbyName('PRODICOD').Value ;
    DM.TblTicketPreVendaItemDescricao.Value     := SQLLocate('PRODUTO', 'PRODICOD', 'PRODA60DESCR', SQLOrcamentoItem.FieldbyName('PRODICOD').AsString) ;
    DM.TblTicketPreVendaItemMarca.Value         := '' ;
    DM.TblTicketPreVendaItemReferencia.Value    := '' ;
    DM.TblTicketPreVendaItemQuantidade.Value    := SQLOrcamentoItem.FieldbyName('PVITN3QUANT').Value ;
    DM.TblTicketPreVendaItemValorUnitario.Value := (SQLOrcamentoItem.FieldbyName('PVITN2VLRUNIT').Value + SQLOrcamentoItem.FieldbyName('PVITN2VLRDESC').Value) ;
    DM.TblTicketPreVendaItemValorTotal.Value    := (SQLOrcamentoItem.FieldbyName('PVITN2VLRUNIT').Value) *
                                                   SQLOrcamentoItem.FieldbyName('PVITN3QUANT').Value ;
    DM.TblTicketPreVendaItemDesconto.Value      := SQLOrcamentoItem.FieldbyName('PVITN2VLRDESC').Value ;
    DM.TblTicketPreVendaItem.Post ;

    SQLOrcamentoItem.Next ;
  end;
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

procedure GravarTabelaTempPedidoRetorno(Doc : string; NroVias : integer) ;
var
  QtdeRet,
  QtdeVend     : integer ;
  VlrItensVend : double ;
begin
  if not FileExists(DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Pedido com Retorno.rpt') then
    begin
      Informa('O caminho especificado do Pedido com Retorno não foi encontrado, o pedido não será impresso !');
      exit ;
    end ;

  DM.TblCupomCab.Close ;
  DM.TblCupomFinan.Close ;
  DM.TblCupomItemRet.Close ;
  DM.TblCupomItemVend.Close ;

  {if not DM.TblCupomCab.Exists then
    begin
      DM.TblCupomCab.CreateTable ;
      DM.TblCupomCab.AddIndex('', 'CUPOA13ID', [ixPrimary]) ;
    end
  else
    DM.TblCupomCab.EmptyTable ;
  if not DM.TblCupomFinan.Exists then
    begin
      DM.TblCupomFinan.CreateTable ;
      DM.TblCupomFinan.AddIndex('', 'CUPOA13ID;DataVenc', [ixPrimary]) ;
    end
  else
    DM.TblCupomFinan.EmptyTable ;
  if not DM.TblCupomItemRet.Exists then
    begin
      DM.TblCupomItemRet.CreateTable ;
      DM.TblCupomItemRet.AddIndex('', 'CUPOA13ID;Item', [ixPrimary]) ;
    end
  else
    DM.TblCupomItemRet.EmptyTable ;
  if not DM.TblCupomItemVend.Exists then
    begin
      DM.TblCupomItemVend.CreateTable ;
      DM.TblCupomItemVend.AddIndex('', 'CUPOA13ID;Item', [ixPrimary]) ;
    end
  else
    DM.TblCupomItemVend.EmptyTable ;}

  if DM.TblCupomCab.Exists then
    DM.TblCupomCab.DeleteTable ;
  DM.TblCupomCab.CreateTable ;
  DM.TblCupomCab.AddIndex('', 'CUPOA13ID', [ixPrimary]) ;
  //--------------------------------------------------------------------------\\
  if DM.TblCupomFinan.Exists then
    DM.TblCupomFinan.DeleteTable ;
  DM.TblCupomFinan.CreateTable ;
  DM.TblCupomFinan.AddIndex('', 'CUPOA13ID;DataVenc', [ixPrimary]) ;
  //--------------------------------------------------------------------------\\
  if DM.TblCupomItemRet.Exists then
    DM.TblCupomItemRet.DeleteTable ;
  DM.TblCupomItemRet.CreateTable ;
  DM.TblCupomItemRet.AddIndex('', 'CUPOA13ID;Item', [ixPrimary]) ;
  //--------------------------------------------------------------------------\\
  if DM.TblCupomItemVend.Exists then
    DM.TblCupomItemVend.DeleteTable ;
  DM.TblCupomItemVend.CreateTable ;
  DM.TblCupomItemVend.AddIndex('', 'CUPOA13ID;Item', [ixPrimary]) ;

  DM.TblCupomCab.Open ;
  DM.TblCupomFinan.Open ;
  DM.TblCupomItemRet.Open ;
  DM.TblCupomItemVend.Open ;
  QtdeRet  := 0 ;
  QtdeVend := 0 ;
  //-------------------------------------------------------------------------\\
  DM.SQLCupom.Close ;
  DM.SQLCupom.MacroByName('MFiltro').Value := 'CUPOA13ID = "' + Doc + '"';
  DM.SQLCupom.Open ;
  if DM.SQLCupom.Eof then
    begin
      Informa('Documento não encontrado !') ;
      exit ;
    end ;
  //-------------------------------------------------------------------------\\
  DM.SQLCupomItemRetorno.Close ;
  DM.SQLCupomItemRetorno.MacroByName('MFiltro').Value := 'CUPOA13ID = "' + Doc + '"';
  DM.SQLCupomItemRetorno.Open ;
  DM.SQLCupomItemRetorno.First ;
  while not DM.SQLCupomItemRetorno.Eof do
    begin
      DM.TblCupomItemRet.Append ;
      DM.TblCupomItemRetCUPOA13ID.Value     := Doc ;
      DM.TblCupomItemRetItem.Value          := DM.SQLCupomItemRetornoCPIRIPOS.Value ;
      DM.TblCupomItemRetCodigo.Value        := DM.SQLCupomItemRetornoPRODICOD.Value ;
      DM.TblCupomItemRetDescricao.Value     := SQLLocate('PRODUTO', 'PRODICOD', 'PRODA60DESCR', DM.SQLCupomItemRetornoPRODICOD.AsString) ;
      DM.TblCupomItemRetQuant.Value         := DM.SQLCupomItemRetornoCPIRN3QTD.Value ;
      DM.TblCupomItemRetValorUnitario.Value := DM.SQLCupomItemRetornoCPIRN3VLRUNIT.Value ;
      DM.TblCupomItemRetCodigoAntigo.Value  := SQLLocate('PRODUTO', 'PRODICOD', 'PRODA15CODANT', DM.SQLCupomItemRetornoPRODICOD.AsString) ;
      DM.TblCupomItemRet.Post ;

      QtdeRet := QtdeRet + DM.SQLCupomItemRetornoCPIRN3QTD.AsInteger ;
      DM.SQLCupomItemRetorno.Next ;
    end;
  //-------------------------------------------------------------------------\\

  VlrItensVend := 0 ;
  DM.SQLCupomItem.Close ;
  DM.SQLCupomItem.MacroByName('MFiltro').Value := 'CUPOA13ID = "' + Doc + '"';
  DM.SQLCupomItem.Open ;
  DM.SQLCupomItem.First ;
  while not DM.SQLCupomItem.Eof do
    begin
      DM.TblCupomItemVend.Append ;
      DM.TblCupomItemVendCUPOA13ID.Value     := Doc ;
      DM.TblCupomItemVendItem.Value          := DM.SQLCupomItemCPITIPOS.Value ;
      DM.TblCupomItemVendCodigo.Value        := DM.SQLCupomItemPRODICOD.Value ;
      DM.TblCupomItemVendDescricao.Value     := SQLLocate('PRODUTO', 'PRODICOD', 'PRODA60DESCR', DM.SQLCupomItemPRODICOD.AsString) ;
      DM.TblCupomItemVendQuant.Value         := DM.SQLCupomItemCPITN3QTD.Value ;
      DM.TblCupomItemVendValorUnitario.Value := DM.SQLCupomItemCPITN3VLRUNIT.Value ;
      DM.TblCupomItemVendCodigoAntigo.Value  := SQLLocate('PRODUTO', 'PRODICOD', 'PRODA15CODANT', DM.SQLCupomItemPRODICOD.AsString) ;
      DM.TblCupomItemVend.Post ;

      QtdeVend     := QtdeVend + DM.SQLCupomItemCPITN3QTD.AsInteger ;
      VlrItensVend := VlrItensVend + (DM.SQLCupomItemCPITN3VLRUNIT.Value *
                                      DM.SQLCupomItemCPITN3QTD.Value);
      DM.SQLCupomItem.Next ;
    end;
  //-------------------------------------------------------------------------\\
  //O cabeçalho tem de ficar depois dos itens por causa das variaveis de quantidade
  DM.TblCupomCab.Append ;
  DM.TblCupomCabCUPOA13ID.Value          := Doc ;
  DM.TblCupomCabEmpresaEmit.Value        := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60NOMEFANT',  DM.SQLCupomEMPRICOD.AsString) ;
  DM.TblCupomCabEmpresaEmit_Ender.Value  := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60END',       DM.SQLCupomEMPRICOD.AsString) ;
  DM.TblCupomCabEmpresaEmit_Bairro.Value := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60BAI',       DM.SQLCupomEMPRICOD.AsString) ;
  DM.TblCupomCabEmpresaEmit_Cidade.Value := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60CID',       DM.SQLCupomEMPRICOD.AsString) ;
  DM.TblCupomCabEmpresaEmit_Fone.Value   := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA20FONE',      DM.SQLCupomEMPRICOD.AsString) ;
  DM.TblCupomCabCliente_Codigo.Value     := DM.SQLCupomCLIEA13ID.AsString ;
  DM.TblCupomCabCliente.Value            := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA60RAZAOSOC', '"' + DM.SQLCupomCLIEA13ID.AsString + '"') ;
  DM.TblCupomCabCliente_Ender.Value      := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA60ENDRES',   '"' + DM.SQLCupomCLIEA13ID.AsString + '"') + ' ' +
                                            'Cep: ' + SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA8CEPRES',   '"' + DM.SQLCupomCLIEA13ID.AsString + '"') ;
  DM.TblCupomCabCliente_Bairro.Value     := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA60BAIRES',   '"' + DM.SQLCupomCLIEA13ID.AsString + '"') ;
  DM.TblCupomCabCliente_Cidade.Value     := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA60CIDRES',   '"' + DM.SQLCupomCLIEA13ID.AsString + '"') ;
  DM.TblCupomCabCliente_Fone.Value       := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA15FONE1',    '"' + DM.SQLCupomCLIEA13ID.AsString + '"') ;
  DM.TblCupomCabCliente_CPF.Value        := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA11CPF',      '"' + DM.SQLCupomCLIEA13ID.AsString + '"') ;
  DM.TblCupomCabQtde_Devolvida.Value     := QtdeRet ;
  DM.TblCupomCabQtde_Retirada.Value      := QtdeVend ;
  DM.TblCupomCabCondPagto.Value          := SQLLocate('PLANORECEBIMENTO', 'PLRCICOD', 'PLRCA60DESCR', DM.SQLCupomPLRCICOD.AsString) ;
  DM.TblCupomCabVendedor.Value           := SQLLocate('VENDEDOR', 'VENDICOD', 'VENDA60NOME', DM.SQLCupomVENDICOD.AsString) ;
  DM.TblCupomCabDataEmissao.Value        := DM.SQLCupomCUPODEMIS.Value ;
  DM.TblCupomCabObservacoes.Value        := '' ;
  DM.TblCupomCabTotalBruto.Value         := DM.SQLCupomCUPON2TOTITENS.Value ;
  DM.TblCupomCabEncargosFin.Value        := 0 ;
  DM.TblCupomCabDescRetorno.Value        := DM.SQLCupomCUPON2TOTITENSRET.Value ;
  DM.TblCupomCabSaldoAnterior.Value      := CalculaSaldoCaderno(DM.SQLCupomCLIEA13ID.AsString) ;
  DM.TblCupomCabTotalDescontos.Value     := DM.SQLCupomCUPON2DESC.Value ;
  DM.TblCupomCabTotalLiquido.Value       := VlrItensVend ;
  DM.TblCupomCabCreditoTroco.Value       := 0 ;
  DM.TblCupomCabTotalPagar.Value         := DM.SQLCupomCUPON2TOTITENS.Value - DM.SQLCupomCUPON2DESC.Value;
  DM.TblCupomCabConsignada.Value         := DM.SQLCupomCUPOCCONSIG.Value ;
  DM.TblCupomCab.Post ;
  //-------------------------------------------------------------------------\\
  DM.SQLCupomNumerario.Close ;
  DM.SQLCupomNumerario.MacroByName('MFiltro').Value := 'CUPOA13ID = "' + Doc + '"';
  DM.SQLCupomNumerario.Open ;
  DM.SQLCupomNumerario.First ;
  while not DM.SQLCupomNumerario.Eof do
    begin
      DM.TblCupomFinan.Append ;
      DM.TblCupomFinanCUPOA13ID.Value := Doc ;
      DM.TblCupomFinanDataVenc.Value  := DM.SQLCupomCUPODEMIS.Value ;
      DM.TblCupomFinanValor.Value     := DM.SQLCupomNumerarioCPNMN2VLR.Value ;
      DM.TblCupomFinan.Post ;

      DM.SQLCupomNumerario.Next ;
    end ;
  //-------------------------------------------------------------------------\\
  DM.SQLContasReceber.Close ;
  DM.SQLContasReceber.MacroByName('MFiltro').Value := 'CUPOA13ID = "' + Doc + '"';
  DM.SQLContasReceber.Open ;
  DM.SQLContasReceber.First ;
  while not DM.SQLContasReceber.Eof do
    begin
      DM.TblCupomFinan.Append ;
      DM.TblCupomFinanCUPOA13ID.Value := Doc ;
      DM.TblCupomFinanDataVenc.Value  := DM.SQLContasReceberCTRCDVENC.Value ;
      DM.TblCupomFinanValor.Value     := DM.SQLContasReceberCTRCN2VLR.Value ;
      DM.TblCupomFinan.Post ;

      DM.SQLContasReceber.Next ;
    end ;

  if DM.SQLConfigGeralCFGEA255PATHREPORT.Value = '' then
    begin
      Informa('O caminho dos relatórios não informado !') ;
      exit ;
    end ;

  DM.Report.DiscardSavedData    := true ;
  DM.Report.ReportName          := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Pedido com Retorno.rpt' ;
  DM.Report.ReportTitle         := 'Pedido' ;
  DM.Report.WindowStyle.Title   := 'Pedido' ;
  DM.Report.PrintOptions.Copies := NroVias ;
  if FileExists('PrintToTela.Arq') then
    DM.Report.Output := toWindow ;
  DM.Report.Execute ;
end ;
procedure GeraArquivoExternoParaImpOrcamento(IDOrcamento, CampoValorParcela, CampoDataVectoParcela : string ; SQLOrcamento, SQLOrcamentoItem, SQLParcelasVista, SQLParcelasPrazo : TRxQuery);
begin
  if not SQLOrcamento.Active then SQLOrcamento.Open;
  SQLOrcamento.Close ;
  SQLOrcamento.MacroByName('MFiltro').Value := 'PDVDA13ID = "' + IDOrcamento  + '"';
  SQLOrcamento.Open ;
  if SQLOrcamento.IsEmpty then
    begin
      Informa('Problemas ao imprimir Orçamento!');
      Exit;
    end;
  //GRAVAR CABECALHO TICKET
  DM.TblPedidoCab.Close;
  try
    DM.TblPedidoCab.DeleteTable;
    DM.TblPedidoCab.CreateTable;
  except
    DM.TblPedidoCab.CreateTable;
  end;
  DM.TblPedidoCab.AddIndex('Primario','PedICod',[ixPrimary]);
  DM.TblPedidoCab.Open;
  DM.TblPedidoCab.Append;
  If SQLOrcamento.FieldByName('PDVDCTIPO').asString = 'P' Then
    DM.TblPedidoCabPEDIDOORCAMENTO.AsString         := 'PEDIDO NRO:'
  Else
    DM.TblPedidoCabPEDIDOORCAMENTO.AsString         := 'ORÇAMENTO NRO:';
  DM.TblPedidoCabPedICod.AsString                := SQLOrcamento.FieldByName('PDVDA13ID').AsString;
  DM.TblPedidoCabEmitente_Nome.asString          := DM.SQLEmpresaEMPRA60NOMEFANT.AsString;
  DM.TblPedidoCabEmitente_Ender.asString         := DM.SQLEmpresaEMPRA60END.asString;
  DM.TblPedidoCabEmitente_Bairro.asString        := DM.SQLEmpresaEMPRA60BAI.asString;
  DM.TblPedidoCabEmitente_Cidade.asString        := DM.SQLEmpresaEMPRA60CID.asString;
  DM.TblPedidoCabEmitente_UF.asString            := DM.SQLEmpresaEMPRA2UF.asString;
  DM.TblPedidoCabEmitente_CGC.asString           := DM.SQLEmpresaEMPRA14CGC.asString;
  DM.TblPedidoCabEmitente_IE.asString            := DM.SQLEmpresaEMPRA20IE.asString;
  DM.TblPedidoCabEmitente_Fone.asString          := Dm.SQLEmpresaEMPRA20FONE.asString;
  DM.TblPedidoCabDtEmissao.Value                 := SQLOrcamento.FieldByName('PDVDDEMISSAO').Value;
  if DM.ProcuraRegistro('CLIENTE',['CLIEA13ID'],[SQLOrcamento.FieldByName('CLIEA13ID').Value],1) then
    begin
      DM.TblPedidoCabDestinatario_Nome.asString      := DM.SQLTemplate.FieldByName('CLIEA60RAZAOSOC').AsString;
      DM.TblPedidoCabDestinatario_Endereco.asString  := DM.SQLTemplate.FieldByName('CLIEA60ENDRES').AsString;
      DM.TblPedidoCabDestinatario_Bairro.asString    := DM.SQLTemplate.FieldByName('CLIEA60BAIRES').AsString;
      DM.TblPedidoCabDestinatario_Cep.asString       := DM.SQLTemplate.FieldByName('CLIEA8CEPRES').AsString;
      DM.TblPedidoCabDestinatario_Cidade.asString    := DM.SQLTemplate.FieldByName('CLIEA60CIDRES').AsString;
      DM.TblPedidoCabDestinatario_UF.asString        := DM.SQLTemplate.FieldByName('CLIEA2UFRES').AsString;
      DM.TblPedidoCabDestinatario_CpfCgc.asString    := DM.SQLTemplate.FieldByName('CLIEA11CPF').AsString;
      DM.TblPedidoCabDestinatario_IE.asString        := DM.SQLTemplate.FieldByName('CLIEA20IE').AsString;
      DM.TblPedidoCabDestinatario_Fone.asString      := DM.SQLTemplate.FieldByName('CLIEA15FONE1').AsString;
      DM.TblPedidoCabDestinatario_Fone2.AsString     := DM.SQLTemplate.FieldByName('CLIEA15FONE2').AsString;
      DM.TblPedidoCabDestinatario_Fax.asString       := DM.SQLTemplate.FieldByName('CLIEA15FAX').AsString;
    end;
//  DM.TblPedidoCabTransp.asString                 := SQLTemplateTransportadoraLookUp.asString;
//  DM.TblPedidoCabDtaEntrega.asVariant            := SQLTemplatePDVDDENTREGA.asVariant;
//  DM.TblPedidoCabComprador.asString              := SQLTemplatePDVDA30COMPRADOR.asString;
//  DM.TblPedidoCabOrdemCompra.asString            := SQLTemplatePDVDA30NROPEDCOMP.asString;
//  DM.TblPedidoCabPlano.asString                  := SQLTemplatePlanoRecebimentoLookUp.asString;
//  If SQLTemplatePDVDCTIPOFRETE.asString='C' Then
//    DM.TblPedidoCabTipoFrete.asString   := '1'
//  Else
//    DM.TblPedidoCabTipoFrete.asString   := '2';
  DM.TblPedidoCabValorFrete.Value                := SQLOrcamento.FieldByName('PDVDN2VLRFRETE').AsFloat;
  DM.TblPedidoCabTotalDesconto.Value             := SQLOrcamento.FieldByName('PDVDN2VLRDESC').AsFloat + SQLOrcamento.FieldByName('PDVDN2VLRDESCPROM').AsFloat;
  DM.TblPedidoCabTotal.Value                     := SQLOrcamento.FieldByName('PDVDN2TOTPROD').AsFloat;
  DM.TblPedidoCabObservacoes.asString            := SQLOrcamento.FieldByName('PDVDTOBS').asString;
  DM.TblPedidoCabVendedor.asString               := SQLLocate('VENDEDOR', 'VENDICOD', 'VENDA60NOME', SQLOrcamento.FieldByName('VENDICOD').AsString);
//  DM.TblPedidoCabEmail.asString                  := AnsiLowerCase(SQLTemplateVendedorEmailLookUp.asString);
  DM.TblPedidoCabEmitente_Email.AsString         := LowerCase(DM.SQLEmpresaEMPRA60EMAIL.AsString);
  DM.TblPedidoCabEmitente_URL.AsString           := LowerCase(DM.SQLEmpresaEMPRA60URL.AsString);
  DM.TblPedidoCabEmitenteLogo.AsVariant          := DM.SQLEmpresaEMPRBLOGOTIPO.AsVariant;
  DM.TblPedidoCab.Post;
  DM.TblPedidoCab.Close;

  If DM.TblPedidoItens.Exists Then
    DM.TblPedidoItens.DeleteTable;
  DM.TblPedidoItens.CreateTable;
  DM.TblPedidoItens.Open;

  SQLOrcamentoItem.Close ;
  SQLOrcamentoItem.MacroByName('MFiltro').Value := 'PDVDA13ID = "' + IDOrcamento + '"';
  SQLOrcamentoItem.Open ;
  if not SQLOrcamentoItem.Active then SQLOrcamentoItem.Open;
  // Itens
  While Not SQLOrcamentoItem.Eof Do
    Begin
      DM.TblPedidoItens.Append;
      DM.TblPedidoItensVlrUnitario.Value := SQLOrcamentoItem.FieldbyName('PVITN2VLRUNIT').Value;
      DM.TblPedidoItensVlrTotal.Value    := (SQLOrcamentoItem.FieldbyName('PVITN2VLRUNIT').Value) *
                                             SQLOrcamentoItem.FieldbyName('PVITN3QUANT').Value ;

      DM.TblPedidoItensUn.Value          := '';
      DM.TblPedidoItensQtd1.Value        := SQLOrcamentoItem.FieldbyName('PVITN3QUANT').Value;
      DM.TblPedidoItensPedICod.Value     := SQLOrcamentoItem.FieldbyName('PDVDA13ID').Value;
      DM.TblPedidoItensDescricao.Value   := SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',SQLOrcamentoItem.FieldbyName('PRODICOD').AsString);
      DM.TblPedidoItensReferencia.Value  := SQLLocate('PRODUTO','PRODICOD','PRODA60REFER',SQLOrcamentoItem.FieldbyName('PRODICOD').AsString);
      DM.TblPedidoItensCodigo.Value      := SQLOrcamentoItem.FieldbyName('PRODICOD').AsInteger;
      DM.TblPedidoItens.Post;
      SQLOrcamentoItem.Next;
    End;

  DM.TblPedidoItens.Close;
  SQLOrcamentoItem.Close;

    DM.TblPedidoFinan.Close;
  try
    DM.TblPedidoFinan.DeleteTable;
    DM.TblPedidoFinan.CreateTable;
  except
    DM.TblPedidoFinan.CreateTable;
  end;

  DM.TblPedidoFinan.Open;

  if SQLParcelasVista <> nil then
    begin
      if not SQLParcelasVista.Active then SQLParcelasVista.Open;
      SQLParcelasVista.First;
      While not SQLParcelasVista.Eof do
        begin
          DM.TblPedidoFinan.Append;
          DM.TblPedidoFinanPedICod.Value    := IDOrcamento;
          DM.TblPedidoFinanValor.Value      := SQLParcelasVista.FieldByName('VALORPARC').Value;
          DM.TblPedidoFinanVencimento.Value := Date;
          DM.TblPedidoFinan.Post;
          SQLParcelasVista.Next;
        end;
    end;

  if SQLParcelasPrazo <> nil then
    begin
      SQLParcelasPrazo.First;
      if not SQLParcelasPrazo.Active then SQLParcelasPrazo.Open; 
      While not SQLParcelasPrazo.Eof do
        begin
          DM.TblPedidoFinan.Append;
          DM.TblPedidoFinanPedICod.Value    := IDOrcamento;
          DM.TblPedidoFinanValor.Value      := SQLParcelasPrazo.FieldByName(CampoValorParcela).Value;
          DM.TblPedidoFinanVencimento.Value := SQLParcelasPrazo.FieldByName(CampoDataVectoParcela).Value;
          DM.TblPedidoFinan.Post;
          SQLParcelasPrazo.Next;
        end;
    end;
  DM.TblPedidoFinan.Close;
end;
end.


