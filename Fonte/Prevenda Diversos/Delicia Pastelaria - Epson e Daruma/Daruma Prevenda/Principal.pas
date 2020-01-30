unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, ComCtrls, RDprint, Inifiles;

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
    TblPreVendaCabDataEmissao: TStringField;
    TblPreVendaCabUsuarioVendaSTR: TStringField;
    TblPreVendaCabTaxaTele: TFloatField;
    TblPreVendaItemPRODA30COZINHA: TStringField;
    TblPreVendaCabBusca: TStringField;
    rdp: TRDprint;
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
var CodCliente, ImpCaixa, ImpressoraCozinha01, ImpressoraCozinha02, NroReduzido,
    EmpresaNome, EmpresaEndereco, EmpresaFone, Cartao, Qtde : String;
var Linha, vCol : integer;
var TotDesc : Double;
var ImpCozinha1 : boolean;
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

    // Testa se tem que imprimir para a Cozinha Produzir
    ImpCozinha1 := False;
    TblPreVendaItem.First;
    While not TblPreVendaItem.eof Do
      Begin
        if TblPreVendaItemImpCozinha.value = 'S' then
          begin
            if TblPreVendaItemPRODA30COZINHA.Value = 'Cozinha01' then ImpCozinha1 := True;
          end;
        TblPreVendaItem.Next;
      End;


    IniFile             := TIniFile.Create('C:\Unit\Gestao\Parceiro.ini');
    EmpresaNome         := IniFile.ReadString('IB_Software','EmpresaNome','');
    ImpCaixa            := IniFile.ReadString('Restaurante','ImpCaixa','');
    ImpressoraCozinha01 := IniFile.ReadString('Restaurante','ImpCozinha01','');
    IniFile.Free;

    rdp.PortaComunicacao := '';
    if ImpCaixa <> '' then
      rdp.SetPrinterbyName(ImpCaixa);
    rdp.Abrir;
    Linha := 1;
    rdp.ImpF(Linha,1,EmpresaNome,[Expandido, Normal]); Inc(Linha,2);

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
    if TblPreVendaCabTipoVenda.Value = 'Tele' then
      begin
        if cartao = '' then
          rdp.ImpF(Linha, 1,'VENDA TELE',[Expandido, Normal])
        else
          rdp.ImpF(Linha, 1,'VENDA TELE - ' + Cartao,[Expandido, Normal]);
        Inc(Linha,2);
      end;

    if TblPreVendaCabDisplayNumero.Value > 0 then
      begin
        rdp.ImpF(Linha, 1,'Display.: ' + TblPreVendaCabDisplayNumero.AsString,[Expandido, Normal]);
        Inc(Linha,2);
      end;

    if TblPreVendaCabLevarCasa.Value = 'S' then
      begin
        rdp.ImpF(Linha, 1,' LEVAR PARA CASA',[Expandido, Normal]);
        Inc(Linha,2);
      end;
    if TblPreVendaCabBusca.Value = 'S' then
      begin
        Inc(Linha);
        rdp.ImpF(Linha, 1,'  VEM BUSCAR',[Expandido, Normal]); Inc(Linha,2);
      end;

    if TblPreVendaCabTipoVenda.Value = 'Tele' then
      begin
        NroReduzido := copy(TblPreVendaCabTicketNumero.AsString,9,12);
        rdp.ImpF(Linha, 1,'Tele Nro.: '  + NroReduzido, [Expandido, Normal]); Inc(Linha);
        if TblPreVendaCabMotoboy.Value <> '' then
          rdp.Imp(Linha, 1,'Motoboy...: ' + TblPreVendaCabMotoboy.AsString); Inc(Linha);
      end;

    rdp.ImpF(Linha,1,'Cliente: ' + TblPreVendaCabNomeClienteVenda.AsString, [Expandido, Normal]); Inc(Linha,2);

    if TblPreVendaCabTipoVenda.Value = 'Tele' then
      begin
        if TblPreVendaCabEnderecoClienteVenda.AsString <> '' then
          begin rdp.Imp(Linha, 1,'  End.: '  + TblPreVendaCabEnderecoClienteVenda.AsString); Inc(Linha);  end;
        if TblPreVendaCabBairroClienteVenda.AsString <> '' then
          begin rdp.Imp(Linha, 1,'  Bai.: '  + TblPreVendaCabBairroClienteVenda.AsString); Inc(Linha);  end;
        if TblPreVendaCabCidadeClienteVenda.AsString <> '' then
          begin rdp.Imp(Linha, 1,'  Cid.: '  + TblPreVendaCabCidadeClienteVenda.AsString); Inc(Linha); end;
        if TblPreVendaCabFoneClienteVenda.AsString <> '' then
          begin rdp.Imp(Linha, 1,'  Fone: '  + TblPreVendaCabFoneClienteVenda.AsString); Inc(Linha); end;
        if TblPreVendaCabOBSImpressaoCupom.AsString <> '' then
          begin rdp.Imp(Linha, 1,'  Obs.: '  + TblPreVendaCabOBSImpressaoCupom.AsString); Inc(Linha); end;
      end;
    rdp.Imp(Linha, 1,'Data...: '  + FormatDateTime('dd/mm/yy hh:nn:ss',now)); Inc(Linha);
    rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha);
    rdp.Imp(Linha,1,'Quant Descricao do Produto           Vlr.Total'); Inc(Linha);
    rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha);
    If not TblPreVendaItem.Active then TblPreVendaItem.Open;
    TblPreVendaItem.First;
    While not TblPreVendaItem.eof Do
      Begin
        Qtde := FormatFloat('##00',TblPreVendaItemQuantidade.Value);
        rdp.Imp(Linha, 2, Qtde);
        rdp.Imp(Linha, 7, TblPreVendaItemDescricao.AsString);
        rdp.ImpVal(Linha,41,'##0.00',TblPreVendaItemValorTotal.Value,[]); Inc(Linha);
        if TblPreVendaItemComplemento.Value <> '' then
          begin
            rdp.ImpF(Linha, 3,copy(TblPreVendaItemComplemento.AsString,1,24),[Expandido, Normal]);  Inc(Linha);
            if length(TblPreVendaItemComplemento.AsString) > 24 then
              begin
                rdp.ImpF(Linha, 1,copy(TblPreVendaItemComplemento.AsString,25,60),[Expandido, Normal]);
                Inc(Linha);
              end;
          end;
        TblPreVendaItem.Next;
      End;
    // Final Venda
    rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha,1);
    rdp.Imp(Linha,25,'SubTotal R$');
    rdp.ImpVal(Linha,41,'##0.00',TblPreVendaCabTotalGeral.Value+TblPreVendaCabDesconto.Value+TotDesc-TblPreVendaCabTaxaTele.Value,[]);    Inc(Linha);
    rdp.Imp(Linha,25,'TELE R$');
    rdp.ImpVal(Linha,41,'##0.00',TblPreVendaCabTaxaTele.Value,[]);    Inc(Linha);
    rdp.Imp(Linha,25,'TOTAL R$');
    rdp.ImpVal(Linha,41,'##0.00',TblPreVendaCabTotalGeral.Value+TblPreVendaCabDesconto.Value+TotDesc,[]);    Inc(Linha);
    TblPedidoFinanceiro.First;
    While not TblPedidoFinanceiro.eof Do
      Begin
        rdp.Imp(Linha,25,TblPedidoFinanceiroNumerario.Value);
        rdp.ImpVal(Linha,41,'##0.00',TblPedidoFinanceiroValor.Value,[]);  Inc(Linha);
        TblPedidoFinanceiro.Next;
      End;
    rdp.Imp(Linha,25,'TROCO R$');
    rdp.ImpVal(Linha,41,'##0.00',TblPreVendaCabTroco.Value,[]);

    Inc(Linha,5);
    rdp.Imp(Linha, 1,'---Final Pedido---'); Inc(Linha);
    rdp.Fechar;

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
