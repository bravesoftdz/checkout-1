unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, ComCtrls, RDprint, Inifiles, ppPrnabl,
  ppClass, ppCtrls, ppCache, ppBands, ppComm, ppRelatv, ppProd,
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
    TblPreVendaCabTicketNumero: TStringField;
    TblPreVendaCabDataEmissao: TStringField;
    TblPreVendaCabVendedor: TStringField;
    TblPreVendaCabPlano: TStringField;
    TblPreVendaCabCliente: TStringField;
    TblPreVendaCabFoneCliente: TStringField;
    TblPreVendaCabTotalNominal: TFloatField;
    TblPreVendaCabTaxaCrediario: TFloatField;
    TblPreVendaCabAcrescimo: TFloatField;
    TblPreVendaCabDesconto: TFloatField;
    TblPreVendaCabTotalGeral: TFloatField;
    TblPreVendaCabNomeEmpresa: TStringField;
    TblPreVendaCabFoneEmpresa: TStringField;
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
    TblPreVendaCabFoneClienteVenda: TStringField;
    TblPreVendaCabUsuarioVendaSTR: TStringField;
    TblPreVendaCabClienteDependente: TIntegerField;
    TblPreVendaCabPlacaVeiculo: TStringField;
    TblPreVendaCabMesaCodigo: TIntegerField;
    TblPreVendaCabContaCodigo: TIntegerField;
    TblPreVendaCabTroco: TFloatField;
    TblPreVendaCabDisplayNumero: TIntegerField;
    TblPreVendaCabBusca: TStringField;
    TblPreVendaCabLevarCasa: TStringField;
    TblPreVendaCabBairroClienteVenda: TStringField;
    TblPreVendaCabMotoboy: TStringField;
    TblPreVendaCabTaxaTele: TFloatField;
    TblPreVendaCabSequencial: TIntegerField;
    TblPreVendaItemCodigo: TIntegerField;
    TblPreVendaItemDescricao: TStringField;
    TblPreVendaItemComplemento: TStringField;
    TblPreVendaItemQuantidade: TFloatField;
    TblPreVendaItemValorUnitario: TFloatField;
    TblPreVendaItemValorTotal: TFloatField;
    TblPreVendaItemDesconto: TFloatField;
    TblPreVendaItemMarca: TStringField;
    TblPreVendaItemReferencia: TStringField;
    TblPreVendaItemTroca: TStringField;
    TblPreVendaItemImpCozinha: TStringField;
    TblPreVendaItemImpVale: TStringField;
    TblPreVendaItemPRODA30COZINHA: TStringField;
    TblPreVendaItemBORDA01: TStringField;
    TblPreVendaItemBORDA02: TStringField;
    TblPreVendaItemBORDA03: TStringField;
    TblPreVendaItemSABOR01: TStringField;
    TblPreVendaItemSABOR02: TStringField;
    TblPreVendaItemSABOR03: TStringField;
    TblPreVendaItemSABOR04: TStringField;
    TblPreVendaItemSABOR05: TStringField;
    TblPreVendaItemSABOR06: TStringField;
    TblPedidoFinanceiroPedICod: TStringField;
    TblPedidoFinanceiroParcela: TStringField;
    TblPedidoFinanceiroVencimento: TDateField;
    TblPedidoFinanceiroValor: TFloatField;
    TblPedidoFinanceiroPortador: TStringField;
    TblPedidoFinanceiroNumerario: TStringField;
    TblPreVendaCabSeq_Dia: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Sequencial : String;
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
var hostName, dataBase, CodCliente, NroReduzido, ImpMarca, ImpCaixaPorta, ImpCaixaVeloc, MostraDisplay, Cartao, NroVias, Obs_Venda, Saltar : String;
var TotDesc, TotConfissao, TotalTroca : Double;
begin

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
    ImpMarca            := IniFile.ReadString('Restaurante','ImpCaixa','');
    ImpCaixaPorta       := IniFile.ReadString('Restaurante','ImpCaixaPorta','');
    ImpCaixaVeloc       := IniFile.ReadString('Restaurante','ImpCaixaVeloc','9600');
    hostName            := IniFile.ReadString('PDV','HostName','');
    dataBase            := IniFile.ReadString('PDV','dataBase','');
    Saltar              := Inifile.ReadString('IB_SOFTWARE','Saltar','');
    IniFile.Free;

    if ImpMarca = 'EPSON'    then ACBrPosPrinter.Modelo := ppEscPosEpson;
    if ImpMarca = 'BEMATECH' then ACBrPosPrinter.Modelo := ppEscBematech;
    if ImpMarca = 'ELGIN'    then ACBrPosPrinter.Modelo := ppEscVox;
    if ImpMarca = 'DR700'    then ACBrPosPrinter.Modelo := ppEscDaruma;
    if ImpMarca = 'DR800'    then ACBrPosPrinter.Modelo := ppEscDaruma;

    ACBrPosPrinter.Device.Porta := ImpCaixaPorta;
    ACBrPosPrinter.Device.Baud  := StrToint(ImpCaixaVeloc);
    ACBrPosPrinter.Desativar;

    memo.Lines.Add('</ce><e>'  +FormatFloat('00000',TblPreVendaCabSeq_Dia.Value)+'</e>');
    memo.Lines.Add('</ce><e>'  +TblPreVendaCabNomeEmpresa.Value+'</e>');
    memo.Lines.Add('</ce><e>'  +TblPreVendaCabFoneEmpresa.Value+'</e>');
    memo.Lines.Add('</fn>------------------------------------------------');
    memo.Lines.Add('</ae>Data: '+FormatDateTime('dd/mm/yy hh:nn:ss',now));
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
    memo.Lines.Add('       Quantidade     Valor Unit       Vlr.Total');
    memo.Lines.Add('------------------------------------------------');
    TblPreVendaItem.First;
    While not TblPreVendaItem.eof Do
      Begin
        if TblPreVendaItemTroca.value <> 'S' then
          begin
            memo.Lines.Add('</ae>'+TblPreVendaItemCodigo.AsString + ' ' + TblPreVendaItemDescricao.AsString);
            memo.Lines.Add('</ad>'+FormatFloat('##00.00',TblPreVendaItemQuantidade.Value)+'       '+FormatFloat('R$ ##0.00',TblPreVendaItemValorUnitario.Value)+'        '+ FormatFloat('R$ ##0.00',TblPreVendaItemValorTotal.Value)+'');
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
            memo.Lines.Add('</ad>'+FormatFloat('##00.00',TblPreVendaItemQuantidade.Value)+'     '+FormatFloat('R$ ##0.00',TblPreVendaItemValorUnitario.Value)+'     '+ FormatFloat('R$ ##0.00',TblPreVendaItemValorUnitario.Value*TblPreVendaItemQuantidade.Value)+'   ');
            TotalTroca := TotalTroca + (TblPreVendaItemValorUnitario.Value*TblPreVendaItemQuantidade.Value);
          end;
        TblPreVendaItem.Next;
      End;

    // Final Venda
    memo.Lines.Add('</ae>------------------------------------------------');
    memo.Lines.Add('</ad>ITENS R$ ' + FormatFloat('##0.00',TblPreVendaCabTotalNominal.Value)+'   ');
    memo.Lines.Add('Troco   R$ ' + FormatFloat('##0.00',TblPreVendaCabTroco.Value)+'   ');
    memo.Lines.Add('Descto  R$ ' + FormatFloat('##0.00',TblPreVendaCabDesconto.Value+TotDesc)+'   ');
    memo.Lines.Add('TOTAL   R$ ' + FormatFloat('##0.00',TblPreVendaCabTotalGeral.Value)+'   ');

    memo.Lines.Add('</ae>------------------------------------------------');
    memo.Lines.Add('</ae> Forma Pagto:' + TblPreVendaCabNumerarioPagto.AsString);
    TblPedidoFinanceiro.First;
    While not TblPedidoFinanceiro.eof Do
      Begin
        memo.Lines.Add('</ad>' + TblPedidoFinanceiroNumerario.AsString + '  ' + FormatFloat('##0.00',TblPedidoFinanceiroValor.Value)+'    ');
        TblPedidoFinanceiro.Next;
      End;

    TotConfissao := 0;
    memo.Lines.Add('</ae>------------------------------------------------');
    memo.Lines.Add('</ae>'+ Obs_Venda);
    memo.Lines.Add('</ae>------------------------------------------------');
    memo.Lines.Add(' ');
    memo.Lines.Add(' ');
    memo.Lines.Add('</corte_parcial>');

    ACBrPosPrinter.Ativar;
    ACBrPosPrinter.LinhasEntreCupons := StrToInt(Saltar);
    ACBrPosPrinter.Imprimir(Memo.Lines.Text);
    if ImpMarca = 'DR800' then sleep(100);
    ACBrPosPrinter.Desativar;
//    ShowMessage('Impressão concluída!');
//    memo.Lines.SaveToFile('C:\ImpressaoPreVenda.txt');
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

end.
