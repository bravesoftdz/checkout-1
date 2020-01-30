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
    TblPreVendaCabTaxaTele: TFloatField;
    TblPreVendaCabDataEmissao: TStringField;
    rdp: TRDprint;
    TblPreVendaCabBusca: TStringField;
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
var CodCliente, ImpCaixa, nVias, NroReduzido : String;
var Linha, vCol : integer;
var TotDesc : Double;
begin
  try
    TblPreVendacab.Open;
    TblPreVendaItem.Open;
    TblPreVendaItem.First;
    TotDesc := 0;
    While Not TblPreVendaItem.Eof Do
      Begin
        TotDesc := TotDesc + TblPreVendaItemDesconto.Value;
        TblPreVendaItem.Next;
      End;

    TblPedidoFinanceiro.Open;

    IniFile           := TIniFile.Create('C:\Unit\Gestao\Parceiro.INI');
    nVias             := IniFile.ReadString('IB_SOFTWARE','NroViasImpVenda','');
    ImpCaixa          := IniFile.ReadString('Restaurante','ImpCaixa','');
    IniFile.Free;

    rdp.PortaComunicacao := '';
    if ImpCaixa <> '' then
      rdp.SetPrinterbyName(ImpCaixa);
    rdp.NumerodeCopias := strToInt(nVias);
    rdp.Abrir;
    Linha := 1;
    rdp.ImpF(Linha,1,'MEKI BURGUER 3785.4100',[Expandido, Normal]); Inc(Linha,2);
    // Tipo de Venda
    if TblPreVendaCabTipoVenda.Value = 'C' then
      begin rdp.ImpF(Linha, 1,'VENDA BALCAO',[Expandido, Normal]); Inc(Linha,2); end;
    if TblPreVendaCabTipoVenda.Value = 'Tele' then
      begin rdp.ImpF(Linha, 1,'VENDA TELE',[Expandido, Normal]); Inc(Linha,2); end;

    if TblPreVendaCabLevarCasa.Value = 'S' then
      begin
        rdp.ImpF(Linha, 1,'** LEVAR PARA CASA **',[Expandido, Normal]);
        Inc(Linha,2);
      end;

    if (TblPreVendaCabTipoVenda.Value = 'C') and (TblPreVendaCabDisplayNumero.Value > 0) then
      begin
        rdp.ImpF(Linha, 1,'Display.: ' + TblPreVendaCabDisplayNumero.AsString,[Expandido, Normal]);
        Inc(Linha,2);
      end;

    if TblPreVendaCabTipoVenda.Value = 'Tele' then
      begin
        rdp.ImpF(Linha, 1,'Tele Nro.: '  + TblPreVendaCabSequencial.AsString, [Expandido, Normal]);
        Inc(Linha,1);
      end;

    rdp.Imp(Linha, 1,'Data......: '  + TblPreVendaCabDataEmissao.AsString); Inc(Linha);
    rdp.Imp(Linha, 1,'Cliente ..: '  + TblPreVendaCabNomeClienteVenda.AsString); Inc(Linha);
    if TblPreVendaCabTipoVenda.Value = 'Tele' then
      begin
        if TblPreVendaCabMotoboy.Value <> '' then
          rdp.Imp(Linha, 1,'Motoboy...: ' + TblPreVendaCabMotoboy.AsString); Inc(Linha);
        if TblPreVendaCabEnderecoClienteVenda.AsString <> '' then
          begin
            rdp.ImpF(Linha, 1,' ' + copy(TblPreVendaCabEnderecoClienteVenda.AsString,1,23),[Expandido, Normal]); Inc(Linha);
            if length(TblPreVendaCabEnderecoClienteVenda.AsString) > 23 then
              begin
                rdp.ImpF(Linha, 1,' ' + copy(TblPreVendaCabEnderecoClienteVenda.AsString,24,60),[Expandido, Normal]); Inc(Linha);
              end;
          end;
        if TblPreVendaCabBairroClienteVenda.AsString <> '' then
          begin rdp.ImpF(Linha, 1,' ' + TblPreVendaCabBairroClienteVenda.AsString,[Expandido, Normal]); Inc(Linha);  end;
        if TblPreVendaCabCidadeClienteVenda.AsString <> '' then
          begin rdp.ImpF(Linha, 1,' ' + TblPreVendaCabCidadeClienteVenda.AsString,[Expandido, Normal]); Inc(Linha); end;
        if TblPreVendaCabFoneClienteVenda.AsString <> '' then
          begin rdp.Imp(Linha, 1,' Fone: '  + TblPreVendaCabFoneClienteVenda.AsString); Inc(Linha); end;
        if TblPreVendaCabOBSImpressaoCupom.AsString <> '' then
          begin rdp.ImpF(Linha, 1,' '  + TblPreVendaCabOBSImpressaoCupom.AsString,[Expandido, Normal]); Inc(Linha); end;
      end;
    rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha,1);
    rdp.Imp(Linha,1,'Quant  Descricao                              '); Inc(Linha);
    rdp.Imp(Linha,1,'                           Vlr.Unit  Vlr.Total'); Inc(Linha);
    rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha,1);
    If not TblPreVendaItem.Active then TblPreVendaItem.Open;
    TblPreVendaItem.First;
    While not TblPreVendaItem.eof Do
      Begin
        rdp.ImpVal(Linha,1,'##00',TblPreVendaItemQuantidade.Value,[Expandido, Normal]);
        rdp.ImpF(Linha, 3,copy(TblPreVendaItemDescricao.AsString,1,20),[Expandido, Normal]);  Inc(Linha);
        if length(TblPreVendaItemDescricao.AsString) > 20 then
          begin
            rdp.ImpF(Linha, 1,copy(TblPreVendaItemDescricao.AsString,21,60),[Expandido, Normal]);
            Inc(Linha);
          end;

        if TblPreVendaItemComplemento.Value <> '' then
          begin
            rdp.ImpF(Linha, 3,copy(TblPreVendaItemComplemento.AsString,1,24),[Expandido, Normal]);  Inc(Linha);
            if length(TblPreVendaItemDescricao.AsString) > 24 then
              begin
                rdp.ImpF(Linha, 1,copy(TblPreVendaItemComplemento.AsString,25,60),[Expandido, Normal]);
                Inc(Linha);
              end;
          end;
        rdp.ImpVal(Linha,30,'##0.00',TblPreVendaItemValorUnitario.Value,[]);
        rdp.ImpVal(Linha,41,'##0.00',TblPreVendaItemValorTotal.Value,[]); Inc(Linha);
        TblPreVendaItem.Next;
      End;
    // Final Venda
    rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha,1);
    rdp.Imp(Linha,25,'ITENS R$');
    rdp.ImpVal(Linha,41,'##0.00',TblPreVendaCabTotalGeral.Value+TblPreVendaCabDesconto.Value+TotDesc-TblPreVendaCabTaxaTele.Value,[]);    Inc(Linha);
    if TblPreVendaCabTipoVenda.Value = 'Tele' then
      begin
        rdp.Imp(Linha,25,'TELE R$');
        rdp.ImpVal(Linha,41,'##0.00',TblPreVendaCabTaxaTele.Value,[]);    Inc(Linha);
      end;
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
    rdp.Imp(Linha,1,'.'); Inc(Linha);
    rdp.TamanhoQteLinhas := Linha+1;
    rdp.Fechar;

    {Rodape}
    if (TblPreVendaCabTipoVenda.Value = 'C') and (TblPreVendaCabDisplayNumero.Value > 0) then
      begin
        ShowMessage('Destaque o Papel!');
        rdp.PortaComunicacao := '';
        if ImpCaixa <> '' then
          rdp.SetPrinterbyName(ImpCaixa);
        rdp.TamanhoQteLinhas := 1;
        rdp.Abrir;
        Linha := 1;
        rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha);
        rdp.ImpF(Linha, 1,'Display.: ' + TblPreVendaCabDisplayNumero.AsString,[Expandido, Normal]); Inc(Linha);
        rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha);
        Inc(Linha,7);
        rdp.Imp(Linha,1,'.');
        rdp.TamanhoQteLinhas := Linha+1;
        rdp.Fechar;
      end;

    TblPreVendacab.Close;
    TblPreVendaItem.Close;
    TblPedidoFinanceiro.Close;

    Application.Terminate;
  except
    Application.Terminate;
  end;
end;

procedure TFormPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree ;
end;

end.
