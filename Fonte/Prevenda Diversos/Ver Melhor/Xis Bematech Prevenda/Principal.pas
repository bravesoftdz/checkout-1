unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, RxQuery, VarSys, ExtCtrls, ComCtrls,
  Inifiles, declaracoes;

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
    TblPreVendaCabDataEmissao: TDateField;
    TblPreVendaItemTroca: TStringField;
    TblPreVendaCabMesaCodigo: TIntegerField;
    TblPreVendaCabContaCodigo: TIntegerField;
    TblPreVendaCabTroco: TFloatField;
    TblPreVendaCabDisplayNumero: TIntegerField;
    TblPreVendaItemComplemento: TStringField;
    TblPedidoFinanceiroNumerario: TStringField;
    TblPreVendaItemImpCozinha: TStringField;
    TblPreVendaItemImpVale: TStringField;
    TblPreVendaCabLevarCasa: TStringField;
    TblPreVendaCabNomeClienteVenda: TStringField;
    TblPreVendaCabEnderecoClienteVenda: TStringField;
    TblPreVendaCabCidadeClienteVenda: TStringField;
    TblPreVendaCabOBSImpressaoCupom: TStringField;
    TblPreVendaCabFoneClienteVenda: TStringField;
    TblPreVendaCabClienteDependente: TIntegerField;
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
{$R *.dfm}

procedure TFormPrincipal.FormCreate(Sender: TObject);
var Inifile: TInifile;
var CodCliente, ImpCaixa, ImpressoraCozinha, nVias, EmpresaNome, nSaltar : String;
var Retorno : integer;
var TotDesc : Double;
var ImpCozinha, ImpVale : boolean;
begin
  try
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

    IniFile           := TIniFile.Create('C:\Unit\Gestao\Parceiro.INI');
    EmpresaNome       := IniFile.ReadString('IB_SOFTWARE','EmpresaNome','');
    nVias             := IniFile.ReadString('IB_SOFTWARE','NroViasImpVenda','');
    nSaltar           := IniFile.ReadString('IB_SOFTWARE','Saltar','');
    ImpCaixa          := IniFile.ReadString('Restaurante','ImpCaixa','');
    IniFile.Free;

    ConfiguraModeloImpressora(7); // 7 = MP4200
    Retorno := IniciaPorta(pchar(ImpCaixa));

  //  Retorno:=FormataTX(pchar(EmpresaNome)+#13+#10, i_tipo_letra, i_italico, i_sublinhado, i_expandido, i_enfatizado);
  {
   tipo_letra:=1 comprimido
   tipo_letra:=2 normal
   tipo_letra:=3 elite
  }

    FormataTX(pchar(EmpresaNome)+#10+#10, 2, 0, 0, 1, 0);

    // Tipo de Venda
    if TblPreVendaCabTipoVenda.Value = 'C' then
      FormataTX(pchar('VENDA BALCAO')+#10+#10, 2, 0, 0, 1, 0);
    if TblPreVendaCabTipoVenda.Value = 'Tele' then
      FormataTX(pchar('VENDA TELE')+#10+#10, 2, 0, 0, 1, 0);
    if TblPreVendaCabTipoVenda.Value = 'Mesa' then
      FormataTX(pchar('VENDA MESA')+#10+#10, 2, 0, 0, 1, 0);

    if TblPreVendaCabMesaCodigo.Value > 0 then
      begin
        FormataTX(pchar('Mesa.: ' + TblPreVendaCabMesaCodigo.AsString)+#10, 2, 0, 0, 1, 0);
        FormataTX(pchar('Conta: ' + TblPreVendaCabContaCodigo.AsString)+#10+#10, 2, 0, 0, 1, 0);
      end;

    if TblPreVendaCabDisplayNumero.Value > 0 then
      FormataTX(pchar('Display.: ' + TblPreVendaCabDisplayNumero.AsString)+#10+#10, 2, 0, 0, 1, 0);

    if TblPreVendaCabTipoVenda.Value = 'Tele' then
      FormataTX(pchar('Controle: ' + IntToStr(TblPreVendaCabSequencial.Value))+#10+#10, 2, 0, 0, 0, 0)
    else
      FormataTX(pchar('Controle: ' + TblPreVendaCabTicketNumero.Value)+#10+#10, 2, 0, 0, 0, 0);

    FormataTX(pchar('Data: ' + FormatDateTime('dd/mm/yy hh:nn:ss',now))+#10, 2, 0, 0, 0, 0);

    if TblPreVendaCabTipoVenda.Value = 'Tele' then
      begin
        if TblPreVendaCabMotoboy.Value <> '' then
          FormataTX(pchar('Motoboy: ' + TblPreVendaCabMotoboy.AsString)+#10, 2, 0, 0, 0, 0);

        FormataTX(pchar('Cliente: '   + TblPreVendaCabNomeClienteVenda.AsString)+#10, 2, 0, 0, 0, 0);
        if TblPreVendaCabEnderecoClienteVenda.AsString <> '' then
          FormataTX(pchar('  ' + TblPreVendaCabEnderecoClienteVenda.AsString)+#10, 2, 0, 0, 0, 0);
        if TblPreVendaCabBairroClienteVenda.AsString <> '' then
          FormataTX(pchar('  ' + TblPreVendaCabBairroClienteVenda.AsString)+#10, 2, 0, 0, 0, 0);
        if TblPreVendaCabCidadeClienteVenda.AsString <> '' then
          FormataTX(pchar('  ' + TblPreVendaCabCidadeClienteVenda.AsString)+#10, 2, 0, 0, 0, 0);
        if TblPreVendaCabFoneClienteVenda.AsString <> '' then
          FormataTX(pchar('  ' + TblPreVendaCabFoneClienteVenda.AsString)+#10, 2, 0, 0, 0, 0);
        if TblPreVendaCabOBSImpressaoCupom.AsString <> '' then
          FormataTX(pchar('  ' + TblPreVendaCabOBSImpressaoCupom.AsString)+#10, 2, 0, 0, 0, 0);
      end;
    FormataTX(pchar('----------------------------------------------')+#10, 2, 0, 0, 0, 0);
    FormataTX(pchar('Qtd Descricao                                 ')+#10, 2, 0, 0, 0, 0);
    FormataTX(pchar('                           Vlr.Unit  Vlr.Total')+#10, 2, 0, 0, 0, 0);
    FormataTX(pchar('----------------------------------------------')+#10, 2, 0, 0, 0, 0);
    If not TblPreVendaItem.Active then TblPreVendaItem.Open;
    TblPreVendaItem.First;
    While not TblPreVendaItem.eof Do
      Begin
        FormataTX(pchar(FormatFloat('##00',TblPreVendaItemQuantidade.Value)+' '+copy(TblPreVendaItemDescricao.AsString,1,30))+#10, 2, 0, 0, 0, 0);
        if TblPreVendaItemComplemento.Value <> '' then
          FormataTX(pchar('  ' + copy(TblPreVendaItemComplemento.AsString,1,34))+#10, 2, 0, 0, 1, 0);
        FormataTX(pchar('  ' + FormatFloat('##0.00',TblPreVendaItemValorUnitario.Value)), 2, 0, 0, 0, 0);
        FormataTX(pchar('  ' + FormatFloat('##0.00',TblPreVendaItemValorTotal.Value))+#10, 2, 0, 0, 0, 0);
        TblPreVendaItem.Next;
      End;
    // Final Venda
    FormataTX(pchar('----------------------------------------------')+#10, 2, 0, 0, 0, 0);
    FormataTX(pchar('         ITENS R$ '+FormatFloat('##0.00',TblPreVendaCabTotalNominal.Value+TblPreVendaCabDesconto.Value+TotDesc))+#10, 2, 0, 0, 0, 0);
    FormataTX(pchar('         TELE  R$ '+FormatFloat('##0.00',TblPreVendaCabTaxaTele.Value))+#10, 2, 0, 0, 0, 0);
    FormataTX(pchar('         ------------------------------')+#10, 2, 0, 0, 0, 0);
    FormataTX(pchar('         TOTAL  R$ '+FormatFloat('##0.00',TblPreVendaCabTotalGeral.Value))+#10, 2, 0, 0, 0, 0);
    TblPedidoFinanceiro.First;
    While not TblPedidoFinanceiro.eof Do
      Begin
        if TblPreVendaCabTipoVenda.Value = 'Tele' then
          FormataTX(pchar('         '+TblPedidoFinanceiroNumerario.Value+' '+FormatFloat('##0.00',TblPedidoFinanceiroValor.Value))+#10, 2, 0, 0, 0, 0)
        else
          begin
            if TblPedidoFinanceiro.RecordCount = 1 then
              FormataTX(pchar('         '+TblPedidoFinanceiroNumerario.Value+' '+FormatFloat('##0.00',TblPedidoFinanceiroValor.Value))+#10, 2, 0, 0, 0, 0)
            else
              FormataTX(pchar('         '+TblPedidoFinanceiroNumerario.Value+' '+FormatFloat('##0.00',TblPedidoFinanceiroValor.Value))+#10, 2, 0, 0, 0, 0);
          end;
        TblPedidoFinanceiro.Next;
      End;
    FormataTX(pchar('         ------------------------------')+#10, 2, 0, 0, 0, 0);
    FormataTX(pchar('         TROCO  R$ '+FormatFloat('##0.00',TblPreVendaCabTroco.Value))+#10, 2, 0, 0, 0, 0);

    if TblPreVendaCabLevarCasa.Value = 'S' then
      FormataTX(pchar(' LEVAR PARA CASA')+#10, 2, 0, 0, 1, 0);

    AcionaGuilhotina(1);

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
