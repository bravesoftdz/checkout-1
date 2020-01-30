unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCrpe32, DB, DBTables, RxQuery, VarSys, ExtCtrls, ComCtrls,
  RDprint, ppCtrls, ppStrtch, ppMemo, ppBands, ppVar, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, ppDBBDE;

type
  TFormPrincipal = class(TForm)
    TblPedido: TTable;
    TblPedidoItem: TTable;
    TblPedidoFinanceiro: TTable;
    TblPedidoPedICod: TStringField;
    TblPedidoEmitente_Nome: TStringField;
    TblPedidoEmitente_Ender: TStringField;
    TblPedidoEmitente_Bairro: TStringField;
    TblPedidoEmitente_Cidade: TStringField;
    TblPedidoEmitente_UF: TStringField;
    TblPedidoEmitente_CGC: TStringField;
    TblPedidoEmitente_IE: TStringField;
    TblPedidoEmitente_Fone: TStringField;
    TblPedidoDtEmissao: TDateField;
    TblPedidoDestinatario_Nome: TStringField;
    TblPedidoDestinatario_Endereco: TStringField;
    TblPedidoDestinatario_Bairro: TStringField;
    TblPedidoDestinatario_Cep: TStringField;
    TblPedidoDestinatario_Cidade: TStringField;
    TblPedidoDestinatario_UF: TStringField;
    TblPedidoDestinatario_CpfCgc: TStringField;
    TblPedidoDestinatario_IE: TStringField;
    TblPedidoDestinatario_Fone: TStringField;
    TblPedidoDestinatario_Fax: TStringField;
    TblPedidoTransp: TStringField;
    TblPedidoDtaEntrega: TDateField;
    TblPedidoComprador: TStringField;
    TblPedidoOrdemCompra: TStringField;
    TblPedidoPlano: TStringField;
    TblPedidoTipoFrete: TStringField;
    TblPedidoValorFrete: TFloatField;
    TblPedidoTotalDesconto: TFloatField;
    TblPedidoTotal: TFloatField;
    TblPedidoObservacoes: TMemoField;
    TblPedidoVendedor: TStringField;
    TblPedidoEmail: TStringField;
    TblPedidoItemPedICod: TStringField;
    TblPedidoItemCodigo: TIntegerField;
    TblPedidoItemDescricao: TStringField;
    TblPedidoItemVlrUnitario: TFloatField;
    TblPedidoItemVlrTotal: TFloatField;
    TblPedidoFinanceiroPedICod: TStringField;
    TblPedidoFinanceiroVencimento: TDateField;
    TblPedidoFinanceiroValor: TFloatField;
    TblPedidoItemUn: TStringField;
    TblPedidoItemQtd1: TFloatField;
    TblPedidoItemCor: TStringField;
    TblPedidoItemTecido: TStringField;
    TblPedidoItemLegenda: TIntegerField;
    TblPedidoItemQtd2: TFloatField;
    TblPedidoItemQtd3: TFloatField;
    TblPedidoItemQtd4: TFloatField;
    TblPedidoItemQtd5: TFloatField;
    TblPedidoItemQtd6: TFloatField;
    TblPedidoItemQtd7: TFloatField;
    TblPedidoItemQtd8: TFloatField;
    TblPedidoItemQtd9: TFloatField;
    TblPedidoItemQtd10: TFloatField;
    TblPedidoItemQtd11: TFloatField;
    TblPedidoItemQtd12: TFloatField;
    TblPedidoItemQtd13: TFloatField;
    TblPedidoItemQtd14: TFloatField;
    TblPedidoItemQtd15: TFloatField;
    TblPedidoPEDIDOORCAMENTO: TStringField;
    TblPedidoEmitente_Email: TStringField;
    TblPedidoEmitente_Fax: TStringField;
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
    TblPreVendaCabTroco: TFloatField;
    ppReport1: TppReport;
    ppTitleBand1: TppTitleBand;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel17: TppLabel;
    ppLBEmpresa: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText6: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText18: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel15: TppLabel;
    DSCab: TDataSource;
    dsItens: TDataSource;
    BDEPipe: TppBDEPipeline;
    ppBDEPipeline1: TppBDEPipeline;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppLabel1: TppLabel;
    ppDBText4: TppDBText;
    ppLabel3: TppLabel;
    ppDBText5: TppDBText;
    ppDBText8: TppDBText;
    ppLabel4: TppLabel;
    ppLabel8: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    TblPreVendaCabNomeClienteVenda: TStringField;
    TblPreVendaCabEnderecoClienteVenda: TStringField;
    TblPreVendaCabFoneClienteVenda: TStringField;
    ppLabel14: TppLabel;
    ppDBText11: TppDBText;
    ppLabel16: TppLabel;
    ppDBText12: TppDBText;
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

uses DataModulo, DataModuloTemplate;

{$R *.dfm}

procedure TFormPrincipal.FormCreate(Sender: TObject);
var CodCliente : String;
var Linha, vCol : integer;
begin
  try
    TblPreVendaCab.Open;
    TblPreVendaItem.Open;
    If TblPedido.Exists Then
      TblPedido.DeleteTable;
    TblPedido.CreateTable;
    TblPedido.AddIndex('Primario','PedICod',[ixPrimary]);
    TblPedido.Open;
    TblPedido.Append;
    TblPedidoPEDIDOORCAMENTO.AsString        := 'VENDA NRO: ';
    TblPedidoPedICod.AsString                := TblPreVendaCabTicketNumero.asString;
    CodCliente := Copy(TblPreVendaCabCliente.asString,1,13);
    TblPedidoDestinatario_Nome.asString      := TblPreVendaCabNomeClienteVenda.Value;
    TblPedidoDestinatario_Endereco.asString  := TblPreVendaCabEnderecoClienteVenda.Value;
{    TblPedidoDestinatario_Bairro.asString    := TblPreVendaCab;
    TblPedidoDestinatario_Cep.asString       := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA8CEPRES','"'+CodCliente+'"');
    TblPedidoDestinatario_Cidade.asString    := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA60CIDRES','"'+CodCliente+'"');
    TblPedidoDestinatario_UF.asString        := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA2UFRES','"'+CodCliente+'"');
    TblPedidoDestinatario_Fax.asString       := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA15FAX','"'+CodCliente+'"');
    // Testa se é Fisica ou Juridica
    if dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA5FISJURID','"'+CodCliente+'"') = 'F' then
      begin
        TblPedidoDestinatario_CpfCgc.asString    := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA11CPF','"'+CodCliente+'"');
        TblPedidoDestinatario_IE.asString        := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA10RG','"'+CodCliente+'"');
      end
    else
      begin
        TblPedidoDestinatario_CpfCgc.asString    := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA14CGC','"'+CodCliente+'"');
        TblPedidoDestinatario_IE.asString        := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA20IE','"'+CodCliente+'"');
      end;  }
    TblPedidoDestinatario_Fone.asString      := TblPreVendaCabFoneClienteVenda.Value;
    TblPedidoDtEmissao.AsString              := FormatDateTime('dd/mm/yyyy',now);
    TblPedidoDtaEntrega.AsString             := TblPreVendaCabDataEntrega.AsString;
    TblPedidoComprador.asString              := '';
    TblPedidoOrdemCompra.asString            := '';
    TblPedidoVendedor.asString               := TblPreVendaCabVendedor.AsString;
    TblPedidoPlano.asString                  := TblPreVendaCabPlano.AsString;
    // TblPedidoTipoVenda.asString              := TblPreVendaCabTipoVenda.AsString;
    // Tipo de Frete (Não existe na venda a balcao)
    TblPedidoTransp.asString                 := '';
    TblPedidoTipoFrete.asString              := '';
    TblPedidoValorFrete.AsString             := '';
    TblPedidoTotalDesconto.Value             := TblPreVendaCabDesconto.Value;
    TblPedidoTotal.Value                     := TblPreVendaCabTotalGeral.Value;
    // TblPedidoTroco.Value                     := TblPreVendaCabTroco.Value;
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

   ppReport1.Print;

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
