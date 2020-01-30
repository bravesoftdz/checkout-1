unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, VarSys, ExtCtrls, ComCtrls, RDprint;

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
    TblPreVendaCabNroCreditCard: TStringField;
    TblPreVendaCabNumerarioPagto: TStringField;
    TblPreVendaCabMensagem: TStringField;
    TblPreVendaCabDataEntrega: TStringField;
    TblPreVendaCabTipoVenda: TStringField;
    TblPreVendaCabMensagem2: TMemoField;
    rdp: TRDprint;
    TblPreVendaCabNomeClienteVenda: TStringField;
    TblPreVendaCabDocumentoClienteVenda: TStringField;
    TblPreVendaCabEnderecoClienteVenda: TStringField;
    TblPreVendaCabCidadeClienteVenda: TStringField;
    TblPreVendaCabFoneClienteVenda: TStringField;
    TblPreVendaCabDataEmissao: TStringField;
    TblPreVendaCabNomeEmpresa: TStringField;
    TblPreVendaCabFoneEmpresa: TStringField;
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

uses

{$R *.dfm}

procedure TFormPrincipal.FormCreate(Sender: TObject);
var CodCliente : String;
    Linha, vCol : integer;
begin
  try
    TblPreVendaCab.Open;
    TblPreVendaItem.Open;

    CodCliente := Copy(TblPreVendaCabCliente.asString,1,13);

    TblPedidoDtEmissao.AsString              := FormatDateTime('dd/mm/yyyy',now);
    TblPedidoDtaEntrega.AsString             := TblPreVendaCabDataEntrega.AsString;
    TblPedidoComprador.asString              := '';
    TblPedidoOrdemCompra.asString            := '';
    TblPedidoVendedor.asString               := TblPreVendaCabVendedor.AsString;
    TblPedidoPlano.asString                  := TblPreVendaCabPlano.AsString;
    TblPedidoTipoVenda.asString              := TblPreVendaCabTipoVenda.AsString;
    // Tipo de Frete (Não existe na venda a balcao)
    TblPedidoTransp.asString                 := '';
    TblPedidoTipoFrete.asString              := '';
    TblPedidoValorFrete.AsString             := '';
    TblPedidoTotalDesconto.Value             := TblPreVendaCabDesconto.Value;
    TblPedidoTotal.Value                     := TblPreVendaCabTotalGeral.Value;
    TblPedidoObservacoes.asString            := '';
    TblPedidoEmail.asString                  := '';
    TblPedido.Post;

    If TblPedidoItem.Exists Then
      TblPedidoItem.DeleteTable;
    TblPedidoItem.CreateTable;
    TblPedidoItem.Open;
    TblPreVendaItem.First;
    While Not TblPreVendaItem.Eof Do
      Begin
        TblPedidoItem.Append;
        TblPedidoItemPedICod.Value     := TblPreVendaCabTicketNumero.asString;
        TblPedidoItemCodigo.Value      := TblPreVendaItemCodigo.Value;
        TblPedidoItemDescricao.Value   := dm.SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',TblPreVendaItemCodigo.AsString);
        TblPedidoItemUn.Value          := dm.SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',dm.SQLLocate('PRODUTO','PRODICOD','UNIDICOD',TblPreVendaItemCodigo.AsString));
        TblPedidoItemVlrUnitario.Value := TblPreVendaItemValorUnitario.Value;
        TblPedidoItemQtd1.Value        := TblPreVendaItemQuantidade.Value;
        TblPedidoItemVlrTotal.Value    := TblPreVendaItemValorTotal.Value;
        TblPedidoItem.Post;
        TblPreVendaItem.Next;
      End;

      TblPedidoFinanceiro.Open;

    Linha := 1;
    rdp.Abrir;
    rdp.ImpF(Linha,1,'Loja Bugaboo',[Expandido, Normal]); Inc(Linha,2);
    rdp.Imp(Linha, 1,'Rua Fernando Amaral, 161 - Lj.05'); Inc(Linha,1);
    rdp.Imp(Linha, 1,'Fone 51 3661.3704'); Inc(Linha,2);
    rdp.Imp(Linha, 1,'Controle....: '  + TblPedidoPedICod.AsString); Inc(Linha,1);
    rdp.Imp(Linha, 1,'Data........: '  + TblPedidoDtEmissao.AsString); Inc(Linha,2);
    rdp.Imp(Linha, 1,'Dados do Cliente'); Inc(Linha,1);
    rdp.Imp(Linha, 1,copy(TblPedidoDestinatario_Nome.AsString,1,30)); Inc(Linha,1);
    rdp.Imp(Linha,1,'Plano....: '+ copy(TblPedidoPlano.AsString,1,20)); Inc(Linha,1);
    rdp.Imp(Linha,1,'Vendedor.: '+ copy(TblPedidoVendedor.AsString,1,20)); Inc(Linha,2);
    rdp.Imp(Linha,1,'Codigo Descricao     Quant Vlr.Unit  Vlr.Total');    Inc(Linha);
    rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha,1);
    TblPedidoItem.First;
    While not TblPedidoItem.eof Do
      Begin
        rdp.Imp(Linha, 1,FormatFloat('######000000',TblPedidoItemCodigo.Value));
        rdp.Imp(Linha,8,copy(TblPedidoItemDescricao.AsString,1,13));
        rdp.ImpVal(Linha,22,'###',TblPedidoItemQtd1.Value,[]);
        rdp.ImpVal(Linha,30,'##0.00',TblPedidoItemVlrUnitario.Value,[]);
        rdp.ImpVal(Linha,41,'##0.00',TblPedidoItemVlrTotal.Value,[]); Inc(Linha);
        TblPedidoItem.Next;
      End;
    rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha,1);
    rdp.Imp(Linha,10,'Total Itens R$');
    rdp.ImpVal(Linha,39,'#,##0.00',TblPedidoTotal.Value+TblPedidoTotalDesconto.Value,[]);    Inc(Linha);
    rdp.Imp(Linha,10,'Desconto    R$');
    rdp.ImpVal(Linha,39,'##0.00',TblPedidoTotalDesconto.Value,[]);  Inc(Linha);
    rdp.Imp(Linha,10,'Total Geral R$');
    rdp.ImpVal(Linha,39,'#,##0.00',(TblPedidoTotal.Value),[]);  Inc(Linha,2);
    rdp.Imp(Linha, 1,'---------------------'); Inc(Linha);
    rdp.Imp(Linha, 1,'    Ass.Cliente      '); Inc(Linha,3);
    rdp.Imp(Linha, 1,'.'); Inc(Linha);
    rdp.TamanhoQteLinhas := Linha+1;
    rdp.Fechar;

  if Application.MessageBox(PChar('Imprimir Segunda Via?'), PChar(Application.Title), MB_SYSTEMMODAL + MB_YesNo + MB_IconQuestion + MB_DEFBUTTON2) = IdYes then
    begin
      Linha := 1;
      rdp.Abrir;
      rdp.ImpF(Linha,1,'Loja Bugaboo',[Expandido, Normal]); Inc(Linha,2);
      rdp.Imp(Linha, 1,'Rua Fernando Amaral, 161 - Lj.05'); Inc(Linha,1);
      rdp.Imp(Linha, 1,'Fone 51 3661.3704'); Inc(Linha,2);
      rdp.Imp(Linha, 1,'Controle....: '  + TblPedidoPedICod.AsString); Inc(Linha,1);
      rdp.Imp(Linha, 1,'Data........: '  + TblPedidoDtEmissao.AsString); Inc(Linha,2);
      rdp.Imp(Linha, 1,'Dados do Cliente'); Inc(Linha,1);
      rdp.Imp(Linha, 1,copy(TblPedidoDestinatario_Nome.AsString,1,30)); Inc(Linha,1);
      rdp.Imp(Linha,1,'Plano....: '+ copy(TblPedidoPlano.AsString,1,20)); Inc(Linha,1);
      rdp.Imp(Linha,1,'Vendedor.: '+ copy(TblPedidoVendedor.AsString,1,20)); Inc(Linha,2);
      rdp.Imp(Linha,1,'Codigo Descricao     Quant Vlr.Unit  Vlr.Total');    Inc(Linha);
      rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha,1);
      TblPedidoItem.First;
      While not TblPedidoItem.eof Do
        Begin
          rdp.Imp(Linha, 1,FormatFloat('######000000',TblPedidoItemCodigo.Value));
          rdp.Imp(Linha,8,copy(TblPedidoItemDescricao.AsString,1,13));
          rdp.ImpVal(Linha,22,'###',TblPedidoItemQtd1.Value,[]);
          rdp.ImpVal(Linha,30,'##0.00',TblPedidoItemVlrUnitario.Value,[]);
          rdp.ImpVal(Linha,41,'##0.00',TblPedidoItemVlrTotal.Value,[]); Inc(Linha);
          TblPedidoItem.Next;
        End;
      rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha,1);
      rdp.Imp(Linha,10,'Total Itens R$');
      rdp.ImpVal(Linha,39,'#,##0.00',TblPedidoTotal.Value+TblPedidoTotalDesconto.Value,[]);    Inc(Linha);
      rdp.Imp(Linha,10,'Desconto    R$');
      rdp.ImpVal(Linha,39,'##0.00',TblPedidoTotalDesconto.Value,[]);  Inc(Linha);
      rdp.Imp(Linha,10,'Total Geral R$');
      rdp.ImpVal(Linha,39,'#,##0.00',(TblPedidoTotal.Value),[]);  Inc(Linha,2);
      rdp.Imp(Linha, 1,'---------------------'); Inc(Linha);
      rdp.Imp(Linha, 1,'    Ass.Cliente      '); Inc(Linha,3);
      rdp.Imp(Linha, 1,'.'); Inc(Linha);
      rdp.TamanhoQteLinhas := Linha+1;
      rdp.Fechar;
    end;

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
