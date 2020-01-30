
unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCrpe32, DB, DBTables, RxQuery, VarSys, ExtCtrls, ComCtrls,
  RDprint;

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
    TblPreVendaCabMensagem2: TMemoField;
    RDprint: TRDprint;
    TblPreVendaCabVlrEntrada: TFloatField;
    TblPreVendaCabNomeClienteVenda: TStringField;
    TblPreVendaCabDocumentoClienteVenda: TStringField;
    TblPreVendaCabEnderecoClienteVenda: TStringField;
    TblPreVendaCabCidadeClienteVenda: TStringField;
    TblPreVendaCabOBSImpressaoCupom: TStringField;
    TblPreVendaItemTroca: TStringField;
    TblPreVendaCabTERMICOD: TIntegerField;
    TblPreVendaCabPRVDICOD: TIntegerField;
    TblPreVendaCabDataEmissao: TDateTimeField;
    TblPedidoFinanceiroParcela: TStringField;
    TblPedidoFinanceiroNumerario: TStringField;
    TblPreVendaCabFoneClienteVenda: TStringField;
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
var CodCliente : String;
var Parc, Linha, vCol : integer;
begin
  TblPreVendaCab.Open;
  TblPreVendaItem.Open;
  TblPedidoFinanceiro.Open;

  CodCliente := Copy(TblPreVendaCabCliente.asString,1,13);

  Linha := 1;
  RDprint.Abrir;
  RDprint.ImpF(Linha, 1,'PPA SANTO ANTONIO - SISTEMAS DE SEGURANCA',[Expandido, Italico]); Inc(Linha,2);
  RDprint.ImpF(Linha, 1,'AV CEL VITOR VILAVERDE, 1615 - SALA 01 - SANTO ANTONIO',[Normal]); Inc(Linha);
  RDprint.ImpF(Linha, 1,'Fone/Fax.: 51 3662 6761',[Normal]);
  RDprint.Imp(Linha,  1,'Controle...: '  + TblPreVendaCabTicketNumero.AsString);
  RDprint.Imp(Linha, 60,'Data.....: '    + TblPreVendaCabDataEmissao.AsString); Inc(Linha,2);
  RDprint.Imp(Linha,  1,'Cliente....: '  + TblPreVendaCabNomeClienteVenda.AsString);
  RDprint.Imp(Linha, 60,'CPF/CNPJ...: '  + TblPreVendaCabDocumentoClienteVenda.AsString); Inc(Linha);
  RDprint.Imp(Linha,  1,'Endereco...: '  + TblPreVendaCabEnderecoClienteVenda.AsString);
  RDprint.Imp(Linha, 60,'Cidade...: '    + TblPreVendaCabCidadeClienteVenda.AsString); Inc(Linha);
  RDprint.Imp(Linha,  1,'Fone.......: '  + TblPreVendaCabFoneClienteVenda.AsString);
  RDprint.Imp(Linha, 60,'Vendedor.: '    + TblPreVendaCabVendedor.AsString); Inc(Linha);
  RDprint.Imp(Linha,  1,'Observacao.: '  + TblPreVendaCabOBSImpressaoCupom.Value);  Inc(Linha,2);
  RDprint.Imp(Linha,  1,'Faturamento.: ' + TblPreVendaCabPlano.AsString); Inc(Linha);
  RDprint.Imp(Linha,  1,'Parcelas:');
  TblPedidoFinanceiro.First;
  While not TblPedidoFinanceiro.eof Do
    Begin
      RDprint.Imp(Linha,15,TblPedidoFinanceiroParcela.AsString);
      RDprint.Imp(Linha,25,TblPedidoFinanceiroVencimento.AsString);
      RDprint.ImpVal(Linha,40,'##0.00',TblPedidoFinanceiroValor.Value,[]);
      RDprint.Imp(Linha,55,TblPedidoFinanceiroNumerario.AsString); Inc(Linha);
      TblPedidoFinanceiro.Next;
    End;
  Inc(Linha);
  RDprint.Imp(Linha,1,'Codigo Referencia   Descricao                                        Quant Vlr.Unit Vlr.Total'); Inc(Linha);
  TblPreVendaItem.First;
  While not TblPreVendaItem.eof Do
    Begin
      RDprint.Imp(Linha, 1,FormatFloat('#####00000',TblPreVendaItemCodigo.value));
      RDprint.Imp(Linha, 8,TblPreVendaItemReferencia.AsString);
      if TblPreVendaItemTroca.value = 'S' then
        RDprint.Imp(Linha,21,'(T)'+copy(TblPreVendaItemDescricao.AsString,1,24))
      else
        RDprint.Imp(Linha,21,copy(TblPreVendaItemDescricao.AsString,1,32));
      RDprint.ImpVal(Linha,69,'##0.00',TblPreVendaItemQuantidade.Value,[]);
      RDprint.ImpVal(Linha,78,'##0.00',TblPreVendaItemValorUnitario.Value,[]);
      RDprint.ImpVal(Linha,88,'##0.00',TblPreVendaItemValorTotal.Value,[]);
      Inc(Linha);
      TblPreVendaItem.Next;
    End;
  Inc(Linha);

  RDprint.Imp(Linha,65,'Total Itens R$');
  RDprint.ImpVal(Linha,84,'###,##0.00',TblPreVendaCabTotalGeral.Value,[]); Inc(Linha);
  RDprint.Imp(Linha,65,'Desconto    R$');
  RDprint.ImpVal(Linha,84,'###,##0.00',TblPreVendaCabDesconto.Value,[]); Inc(Linha);
  RDprint.Imp(Linha, 5,'Ass.Comprador: _____________________');
  RDprint.Imp(Linha,65,'Total Geral R$');
  RDprint.ImpVal(Linha,84,'###,##0.00',TblPreVendaCabTotalGeral.Value,[]); Inc(Linha);

  RDprint.Fechar;

  if Application.MessageBox(PChar('Imprimir Segunda Via?'), PChar(Application.Title), MB_SYSTEMMODAL + MB_YesNo + MB_IconQuestion + MB_DEFBUTTON2) = IdYes then
    begin
      Linha := 1;
      RDprint.Abrir;
      RDprint.ImpF(Linha, 1,'PPA SANTO ANTONIO - SISTEMAS DE SEGURANCA',[Expandido, Italico]); Inc(Linha,2);
      RDprint.ImpF(Linha, 1,'AV CEL VITOR VILAVERDE, 1615 - SALA 01 - SANTO ANTONIO',[Normal]); Inc(Linha);
      RDprint.ImpF(Linha, 1,'Fone/Fax.: 51 3662 6761',[Normal]);
      RDprint.Imp(Linha, 60,'Segunda Via.');  Inc(Linha,2);
      RDprint.Imp(Linha,  1,'Controle...: '  + TblPreVendaCabTicketNumero.AsString);
      RDprint.Imp(Linha, 60,'Data.....: '    + TblPreVendaCabDataEmissao.AsString); Inc(Linha,2);
      RDprint.Imp(Linha,  1,'Cliente....: '  + TblPreVendaCabNomeClienteVenda.AsString);
      RDprint.Imp(Linha, 60,'CPF/CNPJ...: '  + TblPreVendaCabDocumentoClienteVenda.AsString); Inc(Linha);
      RDprint.Imp(Linha,  1,'Endereco...: '  + TblPreVendaCabEnderecoClienteVenda.AsString);
      RDprint.Imp(Linha, 60,'Cidade...: '    + TblPreVendaCabCidadeClienteVenda.AsString); Inc(Linha);
      RDprint.Imp(Linha,  1,'Fone.......: '  + TblPreVendaCabFoneClienteVenda.AsString);
      RDprint.Imp(Linha, 60,'Vendedor.: '    + TblPreVendaCabVendedor.AsString); Inc(Linha);
      RDprint.Imp(Linha,  1,'Observacao.: '  + TblPreVendaCabOBSImpressaoCupom.Value);  Inc(Linha,2);
      RDprint.Imp(Linha,  1,'Faturamento.: ' + TblPreVendaCabPlano.AsString); Inc(Linha);
      RDprint.Imp(Linha,  1,'Parcelas:');
      TblPedidoFinanceiro.First;
      While not TblPedidoFinanceiro.eof Do
        Begin
          RDprint.Imp(Linha,15,TblPedidoFinanceiroParcela.AsString);
          RDprint.Imp(Linha,25,TblPedidoFinanceiroVencimento.AsString);
          RDprint.ImpVal(Linha,40,'##0.00',TblPedidoFinanceiroValor.Value,[]);
          RDprint.Imp(Linha,55,TblPedidoFinanceiroNumerario.AsString); Inc(Linha);
          TblPedidoFinanceiro.Next;
        End;
      Inc(Linha);
      RDprint.Imp(Linha,1,'Codigo Referencia   Descricao                                        Quant Vlr.Unit Vlr.Total'); Inc(Linha);
      TblPreVendaItem.First;
      While not TblPreVendaItem.eof Do
        Begin
          RDprint.Imp(Linha, 1,FormatFloat('#####00000',TblPreVendaItemCodigo.value));
          RDprint.Imp(Linha, 8,TblPreVendaItemReferencia.AsString);
          if TblPreVendaItemTroca.value = 'S' then
            RDprint.Imp(Linha,21,'(T)'+copy(TblPreVendaItemDescricao.AsString,1,24))
          else
            RDprint.Imp(Linha,21,copy(TblPreVendaItemDescricao.AsString,1,32));
          RDprint.ImpVal(Linha,69,'##0.00',TblPreVendaItemQuantidade.Value,[]);
          RDprint.ImpVal(Linha,78,'##0.00',TblPreVendaItemValorUnitario.Value,[]);
          RDprint.ImpVal(Linha,88,'##0.00',TblPreVendaItemValorTotal.Value,[]);
          Inc(Linha);
          TblPreVendaItem.Next;
        End;
      Inc(Linha);

      RDprint.Imp(Linha,65,'Total Itens R$');
      RDprint.ImpVal(Linha,84,'###,##0.00',TblPreVendaCabTotalGeral.Value,[]); Inc(Linha);
      RDprint.Imp(Linha,65,'Desconto    R$');
      RDprint.ImpVal(Linha,84,'###,##0.00',TblPreVendaCabDesconto.Value,[]); Inc(Linha);
      RDprint.Imp(Linha, 5,'Ass.Comprador: _____________________');
      RDprint.Imp(Linha,65,'Total Geral R$');
      RDprint.ImpVal(Linha,84,'###,##0.00',TblPreVendaCabTotalGeral.Value,[]); Inc(Linha);

      RDprint.Fechar;
    end;
  Application.Terminate;
end;

procedure TFormPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TblPreVendaCab.Close;
  TblPreVendaItem.Close;
  TblPedidoFinanceiro.Close;
  Action := cafree ;
end;

end.
