unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, ComCtrls, RDprint, Inifiles, ppPrnabl,
  ppClass, ppCtrls, ppCache, ppBands, ppComm, ppRelatv, ppProd, ppReport,
  StdCtrls, ACBrNFeDANFEClass, ACBrNFeDANFeESCPOS, ACBrBase, ACBrPosPrinter;

type
  TFormPrincipal = class(TForm)
    TblPedidoFinanceiro: TTable;
    TblPedidoFinanceiroPedICod: TStringField;
    TblPedidoFinanceiroVencimento: TDateField;
    TblPedidoFinanceiroValor: TFloatField;
    TblPreVendaItem: TTable;
    TblPreVendaItemCodigo: TIntegerField;
    TblPreVendaItemDescricao: TStringField;
    TblPreVendaItemQuantidade: TFloatField;
    TblPreVendaItemValorUnitario: TFloatField;
    TblPreVendaItemValorTotal: TFloatField;
    TblPreVendaItemDesconto: TFloatField;
    TblPreVendaItemMarca: TStringField;
    TblPreVendaItemReferencia: TStringField;
    TblPreVendaCab: TTable;
    TblPreVendaItemTroca: TStringField;
    TblPreVendaItemComplemento: TStringField;
    TblPedidoFinanceiroNumerario: TStringField;
    TblPreVendaItemImpCozinha: TStringField;
    TblPreVendaItemImpVale: TStringField;
    TblPreVendaItemPRODA30COZINHA: TStringField;
    ACBrPosPrinter: TACBrPosPrinter;
    ACBrNFeDANFeESCPOS: TACBrNFeDANFeESCPOS;
    Memo: TMemo;
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
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
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
var CodCliente, NroReduzido, ImpMarca, ImpCaixaPorta,
    ImpCaixaVeloc, Cartao: String;
var TotDesc : Double;
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
    ImpMarca            := IniFile.ReadString('Restaurante','ImpMarca','EPSON');
    ImpCaixaPorta       := IniFile.ReadString('Restaurante','ImpCaixaPorta','');
    ImpCaixaVeloc       := IniFile.ReadString('Restaurante','ImpCaixaVeloc','38400');
    IniFile.Free;

    memo.Lines.Add(' ');
    memo.Lines.Add(' ');
    memo.Lines.Add('</ce><e>'  +TblPreVendaCabNomeEmpresa.Value+'</e>');
    memo.Lines.Add('</fn></ce>'+TblPreVendaCabFoneEmpresa.Value);
    memo.Lines.Add(' ');

    {Testa se tem algum numerario Cartao}
    Cartao := '';
    TblPedidoFinanceiro.First;
    While not TblPedidoFinanceiro.eof Do
      Begin
        if TblPedidoFinanceiroNumerario.Value <> 'DINHEIRO' then
          Cartao := TblPedidoFinanceiroNumerario.Value;
        TblPedidoFinanceiro.Next;
      End;

    // Tipo de Venda
    if TblPreVendaCabTipoVenda.Value = 'C' then
      begin
        memo.Lines.Add('</ae><e>VENDA BALCAO</e>');
        memo.Lines.Add(' ');
      end;

    if (TblPreVendaCabTipoVenda.Value = 'TELE') or (TblPreVendaCabTipoVenda.Value = 'Tele') then
      begin
        if cartao = '' then
          memo.Lines.Add('</ae><e>VENDA TELE</e>')
        else
          memo.Lines.Add('</ae><e>VENDA TELE - '+Cartao+'</e>');
        memo.Lines.Add(' ');
      end;

    if (TblPreVendaCabTipoVenda.Value = 'MESA') or (TblPreVendaCabTipoVenda.Value = 'Mesa') then
      begin
        memo.Lines.Add('</ae><e>MESA=> '+TblPreVendaCabMesaCodigo.Asstring+' COMANDA=> '+TblPreVendaCabContaCodigo.Asstring+'</e>');
        memo.Lines.Add(' ');
      end;

    if TblPreVendaCabDisplayNumero.Value > 0 then
      begin
        memo.Lines.Add('</ae><e>Display => '+TblPreVendaCabDisplayNumero.Asstring+'</e>');
        memo.Lines.Add(' ');
      end;

    if TblPreVendaCabLevarCasa.Value = 'S' then
      begin
        memo.Lines.Add('</ae><e>LEVAR PARA CASA</e>');
        memo.Lines.Add(' ');
      end;

    if TblPreVendaCabBusca.Value = 'S' then
      begin
        memo.Lines.Add('</ae><e>CLIENTE VEM BUSCAR</e>');
        memo.Lines.Add(' ');
      end;

    if (TblPreVendaCabTipoVenda.Value = 'TELE') or (TblPreVendaCabTipoVenda.Value = 'Tele') then
      begin
        memo.Lines.Add('</ae><e>Tele Nro => '+TblPreVendaCabSequencial.Asstring+'</e>');
        if TblPreVendaCabMotoboy.Value <> '' then
          memo.Lines.Add('</ae></fn><n>Motoboy => '+TblPreVendaCabMotoboy.Asstring+'</n>');
        memo.Lines.Add(' ');
      end;

    memo.Lines.Add('</fn>------------------------------------------------');
    memo.Lines.Add('Data: '+FormatDateTime('dd/mm/yy hh:nn:ss',now));
    memo.Lines.Add('</fn>------------------------------------------------');
    memo.Lines.Add('</ce><e>DADOS DO CLIENTE</e>');
    memo.Lines.Add('</fn>------------------------------------------------');
    memo.Lines.Add('</ae><e>'+TblPreVendaCabNomeClienteVenda.Asstring);
    if (TblPreVendaCabTipoVenda.Value = 'TELE') or (TblPreVendaCabTipoVenda.Value = 'Tele') then
      begin
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
          memo.Lines.Add('Obs: '+TblPreVendaCabOBSImpressaoCupom.Asstring+'</e>');
      end;
    memo.Lines.Add('</fn>------------------------------------------------');
    memo.Lines.Add('</fn>Qte Descricao                          Vlr.Total');
    memo.Lines.Add('</fn>------------------------------------------------');
    If not TblPreVendaItem.Active then TblPreVendaItem.Open;
    TblPreVendaItem.First;
    While not TblPreVendaItem.eof Do
      Begin
        memo.Lines.Add('</ae><e>'+FormatFloat('##00',TblPreVendaItemQuantidade.Value) + ' ' + TblPreVendaItemDescricao.AsString);
        if TblPreVendaItemComplemento.Value <> '' then
          memo.Lines.Add('   ' + TblPreVendaItemComplemento.AsString + '</e></ae>');
        memo.Lines.Add('</ad></fn><n>' + FormatFloat('R$ ##0.00',TblPreVendaItemValorTotal.Value) + '   </n>');
        memo.Lines.Add('</ae></fn>------------------------------------------------');
        TblPreVendaItem.Next;
      End;

    // Final Venda
    memo.Lines.Add('</ad></fn><n>ITENS R$ ' + FormatFloat('##0.00',TblPreVendaCabTotalGeral.Value+TblPreVendaCabDesconto.Value+TotDesc-TblPreVendaCabTaxaTele.Value) + '   </n></fn>');
    memo.Lines.Add('</ad></fn><n>TELE  R$ ' + FormatFloat('##0.00',TblPreVendaCabTaxaTele.Value) + '   </n></fn>');
    memo.Lines.Add('</ad></fn><n>TOTAL R$ ' + FormatFloat('##0.00',TblPreVendaCabTotalGeral.Value+TblPreVendaCabDesconto.Value+TotDesc) + '   </n></fn>');
    TblPedidoFinanceiro.First;
    While not TblPedidoFinanceiro.eof Do
      Begin
        memo.Lines.Add('</ad></fn><n>' +TblPedidoFinanceiroNumerario.Value + ' ' + FormatFloat('R$ ##0.00',TblPedidoFinanceiroValor.Value) + '   </n></fn>');
        TblPedidoFinanceiro.Next;
      End;
    memo.Lines.Add(' ');
    memo.Lines.Add('</ad></fn><n>TROCO R$ ' + FormatFloat('##0.00',TblPreVendaCabTroco.Value) + '   </n></fn>');
    memo.Lines.Add(' ');
    memo.Lines.Add(' ');
    memo.Lines.Add(' ');
    memo.Lines.Add(' ');
    memo.Lines.Add('</corte_parcial>');

    if ImpMarca = 'BEMATECH' then ACBrPosPrinter.Modelo := ppEscBematech;
    if ImpMarca = 'DARUMA'   then ACBrPosPrinter.Modelo := ppEscDaruma;
    if ImpMarca = 'EPSON'    then ACBrPosPrinter.Modelo := ppEscPosEpson;
    if ImpMarca = 'ELGIN'    then ACBrPosPrinter.Modelo := ppEscElgin;

    ACBrPosPrinter.Device.Porta := ImpCaixaPorta;
    ACBrPosPrinter.Device.Baud  := StrToint(ImpCaixaVeloc);
    ACBrPosPrinter.Device.Ativar;
    try
      ACBrPosPrinter.Imprimir(Memo.Lines.Text);
    finally
      ACBrPosPrinter.Device.Desativar;
    end;

    //Segunda Via
    memo.Lines.Clear;

    memo.Lines.Add(' ');
    memo.Lines.Add(' ');
    memo.Lines.Add('</ce><e>'  +TblPreVendaCabNomeEmpresa.Value+'</e>');
    memo.Lines.Add('</fn></ce>'+TblPreVendaCabFoneEmpresa.Value);
    memo.Lines.Add(' ');

    {Testa se tem algum numerario Cartao}
    Cartao := '';
    TblPedidoFinanceiro.First;
    While not TblPedidoFinanceiro.eof Do
      Begin
        if TblPedidoFinanceiroNumerario.Value <> 'DINHEIRO' then
          Cartao := TblPedidoFinanceiroNumerario.Value;
        TblPedidoFinanceiro.Next;
      End;

    // Tipo de Venda
    if TblPreVendaCabTipoVenda.Value = 'C' then
      begin
        memo.Lines.Add('</ae><e>VENDA BALCAO</e>');
        memo.Lines.Add(' ');
      end;

    if (TblPreVendaCabTipoVenda.Value = 'TELE') or (TblPreVendaCabTipoVenda.Value = 'Tele') then
      begin
        if cartao = '' then
          memo.Lines.Add('</ae><e>VENDA TELE</e>')
        else
          memo.Lines.Add('</ae><e>VENDA TELE - '+Cartao+'</e>');
        memo.Lines.Add(' ');
      end;

    if (TblPreVendaCabTipoVenda.Value = 'MESA') or (TblPreVendaCabTipoVenda.Value = 'Mesa') then
      begin
        memo.Lines.Add('</ae><e>MESA=> '+TblPreVendaCabMesaCodigo.Asstring+' COMANDA=> '+TblPreVendaCabContaCodigo.Asstring+'</e>');
        memo.Lines.Add(' ');
      end;

    if TblPreVendaCabDisplayNumero.Value > 0 then
      begin
        memo.Lines.Add('</ae><e>Display => '+TblPreVendaCabDisplayNumero.Asstring+'</e>');
        memo.Lines.Add(' ');
      end;

    if TblPreVendaCabLevarCasa.Value = 'S' then
      begin
        memo.Lines.Add('</ae><e>LEVAR PARA CASA</e>');
        memo.Lines.Add(' ');
      end;

    if TblPreVendaCabBusca.Value = 'S' then
      begin
        memo.Lines.Add('</ae><e>CLIENTE VEM BUSCAR</e>');
        memo.Lines.Add(' ');
      end;

    if (TblPreVendaCabTipoVenda.Value = 'TELE') or (TblPreVendaCabTipoVenda.Value = 'Tele') then
      begin
        memo.Lines.Add('</ae><e>Tele Nro => '+TblPreVendaCabSequencial.Asstring+'</e>');
        if TblPreVendaCabMotoboy.Value <> '' then
          memo.Lines.Add('</fn><n>Motoboy => '+TblPreVendaCabMotoboy.Asstring+' </n>');
        memo.Lines.Add(' ');
      end;

    memo.Lines.Add('</fn>------------------------------------------------');
    memo.Lines.Add('Data: '+FormatDateTime('dd/mm/yy hh:nn:ss',now));
    memo.Lines.Add('------------------------------------------------');
    memo.Lines.Add('</ce><e>DADOS DO CLIENTE</e>');
    memo.Lines.Add('</ae></fn>------------------------------------------------');
    memo.Lines.Add('</ae><e>'+TblPreVendaCabNomeClienteVenda.Asstring);
    if (TblPreVendaCabTipoVenda.Value = 'TELE') or (TblPreVendaCabTipoVenda.Value = 'Tele') then
      begin
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
          memo.Lines.Add('Obs: '+TblPreVendaCabOBSImpressaoCupom.Asstring+'</e></ae>');
      end;
    memo.Lines.Add('</ae></fn>------------------------------------------------');
    memo.Lines.Add('Qte Descricao                          Vlr.Total</fn>');
    memo.Lines.Add('------------------------------------------------</fn>');
    If not TblPreVendaItem.Active then TblPreVendaItem.Open;
    TblPreVendaItem.First;
    While not TblPreVendaItem.eof Do
      Begin
        memo.Lines.Add('</ae><e>'+FormatFloat('##00',TblPreVendaItemQuantidade.Value) + ' ' + TblPreVendaItemDescricao.AsString + '</e>');
        if TblPreVendaItemComplemento.Value <> '' then
          memo.Lines.Add('<e>'+'   ' + TblPreVendaItemComplemento.AsString+'</e>');
        memo.Lines.Add('</ad></fn><n>' + FormatFloat('R$ ##0.00',TblPreVendaItemValorTotal.Value) + '   </n>');
        memo.Lines.Add('</ae></fn>------------------------------------------------');
        TblPreVendaItem.Next;
      End;

    // Final Venda
    memo.Lines.Add('</ad></fn><n>ITENS R$ ' + FormatFloat('##0.00',TblPreVendaCabTotalGeral.Value+TblPreVendaCabDesconto.Value+TotDesc-TblPreVendaCabTaxaTele.Value) + '   </n></fn>');
    memo.Lines.Add('</ad></fn><n>TELE  R$ ' + FormatFloat('##0.00',TblPreVendaCabTaxaTele.Value) + '   </n></fn>');
    memo.Lines.Add('</ad></fn><n>TOTAL R$ ' + FormatFloat('##0.00',TblPreVendaCabTotalGeral.Value+TblPreVendaCabDesconto.Value+TotDesc) + '   </n></fn>');
    TblPedidoFinanceiro.First;
    While not TblPedidoFinanceiro.eof Do
      Begin
        memo.Lines.Add('</ad></fn><n>' +TblPedidoFinanceiroNumerario.Value + ' ' + FormatFloat('R$ ##0.00',TblPedidoFinanceiroValor.Value) + '   </n>');
        TblPedidoFinanceiro.Next;
      End;
    memo.Lines.Add(' ');
    memo.Lines.Add('</ad></fn><n>TROCO R$ ' + FormatFloat('##0.00',TblPreVendaCabTroco.Value) + '   </n></fn>');
    memo.Lines.Add(' ');
    memo.Lines.Add(' ');
    memo.Lines.Add(' ');
    memo.Lines.Add(' ');
    memo.Lines.Add('</corte_parcial>');

    ACBrPosPrinter.Device.Ativar;
    try
      ACBrPosPrinter.Imprimir(Memo.Lines.text);
    finally
      ACBrPosPrinter.Device.Desativar;
    end;

    //Via Entregador
    if (TblPreVendaCabTipoVenda.Value = 'TELE') or (TblPreVendaCabTipoVenda.Value = 'Tele') then
      begin
        memo.Lines.Clear;
        memo.Lines.Add(' ');
        memo.Lines.Add(' ');
        memo.Lines.Add(' ');
        memo.Lines.Add('</ae><e><n>VIA ENTREGADOR</n></e>');
        memo.Lines.Add(' ');
        memo.Lines.Add('<e><n>Tele Nro.: '+TblPreVendaCabSequencial.Asstring+'</n></e>');
        memo.Lines.Add(' ');
        memo.Lines.Add('<n>Hora Pedido: '+FormatDateTime('dd/mm hh:mm',Now)+'</n>');
        memo.Lines.Add(' ');
        memo.Lines.Add('<n>Hora Saida.: ___:___</n>');
        memo.Lines.Add(' ');
        memo.Lines.Add('<n>Motoboy....: ________________________</n>');
        memo.Lines.Add(' ');
        memo.Lines.Add(' ');
        memo.Lines.Add(' ');
        memo.Lines.Add(' ');
        memo.Lines.Add('</corte_parcial>');

        ACBrPosPrinter.Device.Ativar;
        try
          ACBrPosPrinter.Imprimir(Memo.Lines.Text);
        finally
          ACBrPosPrinter.Device.Desativar;
        end;
      end;

    TblPreVendacab.Close;
    TblPreVendaItem.Close;
    TblPedidoFinanceiro.Close;

    Application.Terminate;
  except
    TblPreVendacab.Close;
    TblPreVendaItem.Close;
    TblPedidoFinanceiro.Close;

    Application.Terminate;
  end;
end;

procedure TFormPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree ;
end;

end.
