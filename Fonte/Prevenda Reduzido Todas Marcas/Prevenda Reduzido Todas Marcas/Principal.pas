unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, ComCtrls, RDprint, Inifiles, ppPrnabl,
  ppClass, ppCtrls, ppCache, ppBands, ppComm, ppRelatv, ppProd, ppReport,
  StdCtrls, ACBrNFeDANFEClass, ACBrNFeDANFeESCPOS, ACBrBase, ACBrPosPrinter,
  RXCtrls, DBXpress, FMTBcd, SqlExpr;

type
  TFormPrincipal = class(TForm)
    TblPedidoFinanceiro: TTable;
    TblPreVendaItem: TTable;
    TblPreVendaCab: TTable;
    Memo: TMemo;
    ACBrPosPrinter: TACBrPosPrinter;
    lbEmpresa: TRxLabel;
    TblPedidoFinanceiroPedICod: TStringField;
    TblPedidoFinanceiroParcela: TStringField;
    TblPedidoFinanceiroVencimento: TDateField;
    TblPedidoFinanceiroValor: TFloatField;
    TblPedidoFinanceiroPortador: TStringField;
    TblPedidoFinanceiroNumerario: TStringField;
    TblPedidoFinanceiroTipopadrao: TStringField;
    TblPreVendaCabTicketNumero: TStringField;
    TblPreVendaCabVendedor: TStringField;
    TblPreVendaCabPlano: TStringField;
    TblPreVendaCabCliente: TStringField;
    TblPreVendaCabFoneCliente: TStringField;
    TblPreVendaCabTotalNominal: TFloatField;
    TblPreVendaCabTaxaCrediario: TFloatField;
    TblPreVendaCabAcrescimo: TFloatField;
    TblPreVendaCabDesconto: TFloatField;
    TblPreVendaCabTotalGeral: TFloatField;
    TblPreVendaCabNroCreditCard: TStringField;
    TblPreVendaCabNumerarioPagto: TStringField;
    TblPreVendaCabMensagem: TStringField;
    TblPreVendaCabDataEntrega: TStringField;
    TblPreVendaCabTipoVenda: TStringField;
    TblPreVendaCabPessoaRecebeNome: TStringField;
    TblPreVendaCabPessoaRecebeEnder: TStringField;
    TblPreVendaCabPessoaRecebeBai: TStringField;
    TblPreVendaCabPessoaRecebeCid: TStringField;
    TblPreVendaCabPessoaRecebeUF: TStringField;
    TblPreVendaCabPessoaRecebeFone: TStringField;
    TblPreVendaCabMensagem2: TMemoField;
    TblPreVendaCabVlrEntrada: TFloatField;
    TblPreVendaCabNomeClienteVenda: TStringField;
    TblPreVendaCabDocumentoClienteVenda: TStringField;
    TblPreVendaCabEnderecoClienteVenda: TStringField;
    TblPreVendaCabCidadeClienteVenda: TStringField;
    TblPreVendaCabOBSImpressaoCupom: TStringField;
    TblPreVendaCabTERMICOD: TIntegerField;
    TblPreVendaCabPRVDICOD: TIntegerField;
    TblPreVendaCabDataEmissao: TDateTimeField;
    TblPreVendaCabFoneClienteVenda: TStringField;
    TblPreVendaCabUsuarioVendaSTR: TStringField;
    TblPreVendaCabPlacaVeiculo: TStringField;
    TblPreVendaCabTroco: TFloatField;
    TblPreVendaCabPEDIDOORCAMENTO: TStringField;
    TblPreVendaCabDisplayNumero: TIntegerField;
    TblPreVendaCabMesaCodigo: TIntegerField;
    TblPreVendaCabContaCodigo: TIntegerField;
    TblPreVendaCabLevarCasa: TStringField;
    TblPreVendaCabBairroClienteVenda: TStringField;
    TblPreVendaCabKM: TStringField;
    TblPreVendaCabEmpresaEmit: TStringField;
    TblPreVendaCabEmpresaEmit_Ender: TStringField;
    TblPreVendaCabEmpresaEmit_Bairro: TStringField;
    TblPreVendaCabEmpresaEmit_Cidade: TStringField;
    TblPreVendaCabEmpresaEmit_Fone: TStringField;
    TblPreVendaCabClienteDependente: TStringField;
    TblPreVendaCabTerminal: TStringField;
    TblPreVendaItemCodigo: TIntegerField;
    TblPreVendaItemDescricao: TStringField;
    TblPreVendaItemValorUnitario: TFloatField;
    TblPreVendaItemQuantidade: TFloatField;
    TblPreVendaItemValorTotal: TFloatField;
    TblPreVendaItemDesconto: TFloatField;
    TblPreVendaItemMarca: TStringField;
    TblPreVendaItemReferencia: TStringField;
    TblPreVendaItemUnidade: TStringField;
    TblPreVendaItemTroca: TStringField;
    TblPreVendaItemComplemento: TStringField;
    TblPreVendaItemImpCozinha: TStringField;
    TblPreVendaItemImpVale: TStringField;
    Connection: TSQLConnection;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Sequencial : String;
    function GetCodigoImpressaoPreVendas(hostName, dataBase: string): string;
    procedure ImprimirCodigo(hostName, dataBase: string);
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses DataModulo;


{$R *.dfm}

procedure TFormPrincipal.FormCreate(Sender: TObject);
var Inifile: TInifile;
var hostName, dataBase, CodCliente, NroReduzido, ImpMarca, ImpCaixaPorta, ImpCaixaVeloc, MostraDisplay, Cartao, NroVias, Obs_Venda,UsaSenha,Saltar  : String;
var TotDesc, TotConfissao, TotalTroca : Double;

begin
  //ImprimirCodigo('LOCALHOST', 'C:\Easy2Solutions\dados\BANCO.FDB');

  try
    memo.Lines.Clear;
    TblPreVendacab.Open;
    TblPreVendaItem.Open;
    TblPedidoFinanceiro.Open;

    TblPreVendaItem.First;
    TotDesc := 0;
    While Not TblPreVendaItem.Eof Do
      Begin
        TotDesc := TotDesc + TblPreVendaItemDesconto.Value;
        TblPreVendaItem.Next;
      End;

    IniFile             := TIniFile.Create('C:\Easy2Solutions\Gestao\Parceiro.ini');
    NroVias             := IniFile.ReadString('IB_Software','NroViasImpVenda','');
    MostraDisplay       := IniFile.ReadString('IB_Software','GravarDisplaySequencial','');
    Obs_Venda           := IniFile.ReadString('IB_Software','Obs_Venda','');
    Saltar              := Inifile.ReadString('IB_SOFTWARE','Saltar','');
    ImpMarca            := IniFile.ReadString('Restaurante','ImpMarca','');
    ImpCaixaPorta       := IniFile.ReadString('Restaurante','ImpCaixaPorta','');
    ImpCaixaVeloc       := IniFile.ReadString('Restaurante','ImpCaixaVeloc','9600');
    hostName            := IniFile.ReadString('PDV','HostName','');
    dataBase            := IniFile.ReadString('PDV','dataBase','');
    UsaSenha            := IniFile.ReadString('PDV','usasenha','');
    IniFile.Free;

    if ImpMarca = 'EPSON'    then ACBrPosPrinter.Modelo := ppEscPosEpson;
    if ImpMarca = 'BEMATECH' then ACBrPosPrinter.Modelo := ppEscBematech;
    if ImpMarca = 'ELGIN'    then ACBrPosPrinter.Modelo := ppEscVox;
    if ImpMarca = 'DR700'    then ACBrPosPrinter.Modelo := ppEscDaruma;
    if ImpMarca = 'DR800'    then ACBrPosPrinter.Modelo := ppEscDaruma;

    ACBrPosPrinter.Desativar;
    ACBrPosPrinter.Device.Porta := ImpCaixaPorta;
    ACBrPosPrinter.Device.Baud  := StrToint(ImpCaixaVeloc);

    if UsaSenha = 'S' then
      ImprimirCodigo(hostName, dataBase);

    memo.Lines.Add('</ce><e>'  +TblPreVendaCabEmpresaEmit.Value+'</e>');
    memo.Lines.Add('</fn></ce>'+TblPreVendaCabEmpresaEmit_Ender.Value);
    memo.Lines.Add('</fn></ce>'+TblPreVendaCabEmpresaEmit_Cidade.Value);
    memo.Lines.Add('</fn></ce>'+TblPreVendaCabEmpresaEmit_Fone.Value);
    memo.Lines.Add(' ');

    if TblPreVendaCabPEDIDOORCAMENTO.Value = 'ORCAMENTO' then
      memo.Lines.Add('</ce><e>Orcamento: '+TblPreVendaCabDisplayNumero.AsString+'</e>')
    else
      begin
        if (MostraDisplay = 'S') and (TblPreVendaCabDisplayNumero.Value>0) then
          memo.Lines.Add('</ce><e>Comprovante: '+Sequencial+'</e>')
//          memo.Lines.Add('</ce><e>Comprovante: '+TblPreVendaCabDisplayNumero.AsString+'</e>')
        else
          memo.Lines.Add('<ce><e>ID: '+TblPreVendaCabTicketNumero.AsString+'</e></ce>');
      end;
    memo.Lines.Add('</fn>------------------------------------------------');
    memo.Lines.Add('</ae>Data: '+FormatDateTime('dd/mm/yy hh:nn:ss',now));
    // memo.Lines.Add('Terminal: '+TblPreVendaCabTerminal.Value);
    memo.Lines.Add('Operador: '+TblPreVendaCabUsuarioVendaSTR.AsString);
    memo.Lines.Add('Vendedor: '+TblPreVendaCabVendedor.AsString);
    memo.Lines.Add('</fn>------------------------------------------------');
    memo.Lines.Add('</ae><e>DADOS DO CLIENTE</e>');
    memo.Lines.Add('</fn>------------------------------------------------');
    memo.Lines.Add('</ae><e>'+TblPreVendaCabNomeClienteVenda.Asstring);
      if TblPreVendaCabDocumentoClienteVenda.AsString <> '' then
        memo.Lines.Add(TblPreVendaCabDocumentoClienteVenda.Asstring);
      if TblPreVendaCabFoneClienteVenda.AsString <> '' then
        memo.Lines.Add(TblPreVendaCabFoneClienteVenda.Asstring);
      if TblPreVendaCabEnderecoClienteVenda.AsString <> '' then
        memo.Lines.Add(TblPreVendaCabEnderecoClienteVenda.Asstring);
      if TblPreVendaCabBairroClienteVenda.AsString <> '' then
        memo.Lines.Add(TblPreVendaCabBairroClienteVenda.Asstring);
      if TblPreVendaCabCidadeClienteVenda.AsString <> '' then
        memo.Lines.Add(TblPreVendaCabCidadeClienteVenda.Asstring);
      if TblPreVendaCabFoneClienteVenda.AsString <> '' then
        memo.Lines.Add(TblPreVendaCabFoneCliente.Asstring);
      if TblPreVendaCabOBSImpressaoCupom.AsString <> '' then
        memo.Lines.Add('Obs: '+TblPreVendaCabOBSImpressaoCupom.Asstring);
    memo.Lines.Add('</e></fn>');
    memo.Lines.Add('------------------------------------------------');
    memo.Lines.Add('Codigo Descricao                                ');
    memo.Lines.Add(' Quantidade   Valor Unit   Valor Desc  Vlr.Total');
    memo.Lines.Add('------------------------------------------------');
    TblPreVendaItem.First;

    While not TblPreVendaItem.eof Do
      Begin
        if TblPreVendaItemTroca.value <> 'S' then
          begin
            memo.Lines.Add('</ae>'+TblPreVendaItemCodigo.AsString + ' ' + TblPreVendaItemDescricao.AsString);
       {     if TblPreVendaItemComplemento.AsString<>'' then
              memo.Lines.Add('</ae>'+TblPreVendaItemComplemento.Value); }
            memo.Lines.Add('</ad>'+FormatFloat('##00.00',TblPreVendaItemQuantidade.Value)+'     '
                                  +FormatFloat('R$ ##0.00',TblPreVendaItemValorUnitario.Value)+ '     '
                                  +FormatFloat('R$ ##0.00',TblPreVendaItemDesconto.Value)+'     '
                                  +FormatFloat('R$ ##0.00',TblPreVendaItemValorTotal.Value)+' ');
          end;
        TblPreVendaItem.Next;
      End;

    // Testa se tem  Troca
    TblPreVendaItem.First;
    While not TblPreVendaItem.eof Do
      Begin
        if TblPreVendaItemTroca.value = 'S' then
          begin
            memo.Lines.Add('------------------------------------------------');
            memo.Lines.Add('</ae><e>D E V O L U C A O</e></fn>');
            memo.Lines.Add('------------------------------------------------');
            TblPreVendaItem.Last;
          end;
        TblPreVendaItem.Next;
      End;
    // Imprime Itens se tem  Troca
    TblPreVendaItem.First;
    While not TblPreVendaItem.eof Do
      Begin
        if TblPreVendaItemTroca.value = 'S' then
          begin
            memo.Lines.Add('</ae>'+TblPreVendaItemCodigo.AsString + ' ' + TblPreVendaItemDescricao.AsString);
    {        if TblPreVendaItemComplemento.AsString<>'' then
              memo.Lines.Add('</ae>'+TblPreVendaItemComplemento.Value); }
            memo.Lines.Add('</ad>'+FormatFloat('##00.00',TblPreVendaItemQuantidade.Value)+'     '+FormatFloat('R$ ##0.00',TblPreVendaItemValorUnitario.Value)+'     '+ FormatFloat('R$ ##0.00',TblPreVendaItemValorUnitario.Value*TblPreVendaItemQuantidade.Value)+'   ');
            TotalTroca := TotalTroca + (TblPreVendaItemValorUnitario.Value*TblPreVendaItemQuantidade.Value);
          end;
        TblPreVendaItem.Next;
      End;

    // Final Venda
    memo.Lines.Add('</ae>------------------------------------------------');
    memo.Lines.Add('</ad>ITENS R$ ' + FormatFloat('##0.00',TblPreVendaCabTotalNominal.Value)+'   ');
    memo.Lines.Add('Trocas  R$ ' + FormatFloat('##0.00',TotalTroca)+'   ');
    memo.Lines.Add('Descto  R$ ' + FormatFloat('##0.00',TblPreVendaCabDesconto.Value)+'   ');
    memo.Lines.Add('TOTAL   R$ ' + FormatFloat('##0.00',TblPreVendaCabTotalGeral.Value)+'   ');
    TblPedidoFinanceiro.First;
    TotConfissao := 0;
    if TblPreVendaCabPEDIDOORCAMENTO.Value <> 'ORCAMENTO' then
      begin
        While not TblPedidoFinanceiro.eof Do
          Begin
            if (TblPedidoFinanceiroTipopadrao.Value = 'CRD') or (TblPedidoFinanceiroTipopadrao.Value = 'CRTF') then
              TotConfissao := TotConfissao + TblPedidoFinanceiroValor.Value;

            if TblPedidoFinanceiro.RecNo = 1 then
              begin
                if (TblPedidoFinanceiroTipopadrao.Value = 'CRD') or (TblPedidoFinanceiroTipopadrao.Value = 'CRTF') then
                  memo.Lines.Add(FormatDateTime('dd/mm/yy',TblPedidoFinanceiroVencimento.Value) + ' ' + TblPedidoFinanceiroNumerario.Value + ' ' + FormatFloat('R$ ##0.00',TblPedidoFinanceiroValor.Value)+'   ')
                else
                  memo.Lines.Add(TblPedidoFinanceiroNumerario.Value + ' ' + FormatFloat('R$ ##0.00',TblPedidoFinanceiroValor.Value+TblPreVendaCabTroco.Value)+'   ');
              end
            else
              memo.Lines.Add(FormatDateTime('dd/mm/yy',TblPedidoFinanceiroVencimento.Value) + ' ' + TblPedidoFinanceiroNumerario.Value + ' ' + FormatFloat('R$ ##0.00',TblPedidoFinanceiroValor.Value)+'   ');

            TblPedidoFinanceiro.Next;
          End;
        memo.Lines.Add(' ');
        memo.Lines.Add('<n>TROCO R$ ' + FormatFloat('##0.00',TblPreVendaCabTroco.Value) + '</n>   ');
      end;
    memo.Lines.Add('</ae>------------------------------------------------');
    memo.Lines.Add('</ae>'+ Obs_Venda);
    memo.Lines.Add('</ae>------------------------------------------------');
    memo.Lines.Add(' ');
    memo.Lines.Add(' ');
    memo.Lines.Add('</corte_parcial>');

    if (TblPreVendaCabTipoVenda.Value = 'CRD') or (TblPreVendaCabTipoVenda.Value = 'CRTF') then
      begin
        memo.Lines.Add(' ');
        memo.Lines.Add(' ');
        memo.Lines.Add('</ce><e>'  +TblPreVendaCabEmpresaEmit.Value+'</e>');
        memo.Lines.Add('</fn></ce>'+TblPreVendaCabEmpresaEmit_Ender.Value);
        memo.Lines.Add('</fn></ce>'+TblPreVendaCabEmpresaEmit_Cidade.Value);
        memo.Lines.Add('</fn></ce>'+TblPreVendaCabEmpresaEmit_Fone.Value);
        memo.Lines.Add(' ');
        memo.Lines.Add('</ae></fn>Controle....: '+TblPreVendaCabTicketNumero.AsString);
        memo.Lines.Add('Impresso em.: '+FormatDateTime('dd/mm/yy hh:nn:ss', now));
        memo.Lines.Add('Operador: '+TblPreVendaCabUsuarioVendaSTR.AsString);
        memo.Lines.Add('Vendedor: '+TblPreVendaCabVendedor.AsString);
        memo.Lines.Add('Terminal: '+TblPreVendaCabTerminal.Value);
        memo.Lines.Add('------------------------------------------------');
        memo.Lines.Add('</ce><n>CONFISSAO DE DIVIDA</n>');
        memo.Lines.Add('------------------------------------------------');
        memo.Lines.Add('</ad><n>TOTAL R$ ' + FormatFloat('##0.00',TotConfissao)+'</n>   ');
        memo.Lines.Add(' ');
        memo.Lines.Add('</ae>- DECLARO PARA OS DEVIDOS FINS, QUE RECEBI AS ');
        memo.Lines.Add('MERCADORIAS E  QUE PAGAREI  PELA  COMPRA  NO');
        memo.Lines.Add('VENCIMENTO ACORDADO');
        memo.Lines.Add(' ');
        memo.Lines.Add('ASS. ___________________________');
        memo.Lines.Add('      '+TblPreVendaCabNomeClienteVenda.AsString);
        memo.Lines.Add(' ');
        memo.Lines.Add(' ');
        memo.Lines.Add(' ');
        memo.Lines.Add(' ');
        memo.Lines.Add('</corte_parcial>');
      end;

    ACBrPosPrinter.Ativar;
    ACBrPosPrinter.LinhasEntreCupons := StrToInt(Saltar);
    ACBrPosPrinter.Imprimir(Memo.Lines.Text);
    if ImpMarca = 'DR800' then sleep(100);
    ACBrPosPrinter.Desativar;

//   memo.Lines.SaveToFile('C:\ImpressaoPreVenda.txt');
    // Segunda Via
    if NroVias = '2' then
      begin
        if Application.MessageBox(PChar('Imprimir Segunda Via?'), PChar(Application.Title), MB_SYSTEMMODAL + MB_YesNo + MB_IconQuestion + MB_DEFBUTTON2) = IdYes then
          begin
            ACBrPosPrinter.Ativar;
            ACBrPosPrinter.Imprimir(Memo.Lines.Text);
            if ImpMarca = 'DR800' then sleep(100);
            ACBrPosPrinter.Desativar;
          end;
      end;

    TblPreVendacab.Close;
    TblPreVendaItem.Close;
    TblPedidoFinanceiro.Close;

    Application.Terminate;
  except
    on E : Exception do
      ShowMessage('Erro ao abrir tabela temporária! ' + #13 + 'Erro: ' + #13 + e.Message);
  end;
end;

procedure TFormPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree ;
end;

procedure TFormPrincipal.ImprimirCodigo(hostName, dataBase: string);
begin
  Sequencial := '1';
//  memo.Lines.Add(' ');
//  memo.Lines.Add(' ');
  memo.Lines.Add(' ');
  memo.Lines.Add(' ');
  memo.Lines.Add('</ce><n><e>' + 'Pedido Nº:' + '</e></n>');
  memo.Lines.Add(' ');
  memo.Lines.Add(' ');
  memo.Lines.Add('</ce><n><e>' + GetCodigoImpressaoPreVendas(hostName, dataBase) + '</e></n>');
  memo.Lines.Add(' ');
  memo.Lines.Add(' ');
  memo.Lines.Add('</ce><n><e>' + 'Aguarde ser chamado' + '</e></n>');
  memo.Lines.Add(' ');
  memo.Lines.Add(' ');
  memo.Lines.Add(' ');
  memo.Lines.Add(' ');
  memo.Lines.Add(' ');
  memo.Lines.Add('</corte_parcial>');

  //memo.Lines.SaveToFile('C:\ImpressaoPreVenda.txt');
end;

function TFormPrincipal.GetCodigoImpressaoPreVendas(hostName, dataBase: string): string;
var
  Query: TSQLQuery;
  SQL: string;
begin
  Result := '1';

  try
    Connection.Params.Values['DataBase'] := hostName + ':' + dataBase;
    Connection.Open;

    Query               := TSQLQuery.Create(nil);
    Query.SQLConnection := Connection;

    SQL := 'SELECT CODIGO FROM IMPRESSAO_PREVENDA WHERE DATA = ' + QuotedStr(FormatDateTime('dd.mm.yyyy 00:00:00', Now));
    try
      Query.SQL.Add(SQL);
      Query.Open;
    except
      on e: Exception do
      ShowMessage(e.ClassName + 'Erro gerado, com mensagem: ' + e.Message);
    end;

    if not(Query.IsEmpty) then
    begin
      Result := Query.FieldByName('CODIGO').AsString;
      Connection.ExecuteDirect('UPDATE IMPRESSAO_PREVENDA SET CODIGO = ' + IntToStr(StrToInt(Result) + 1) + ' WHERE DATA = ' + QuotedStr(FormatDateTime('dd.mm.yyyy 00:00:00', Now)));
    end
    else Connection.ExecuteDirect('INSERT INTO IMPRESSAO_PREVENDA VALUES (' + QuotedStr(FormatDateTime('dd.mm.yyyy 00:00:00', Now)) + ', 1, ''M'')');
    Sequencial :=  Result;
  finally
    Query.Free;
    Connection.CloseDataSets;
    Connection.Close;
  end;
end;

end.
