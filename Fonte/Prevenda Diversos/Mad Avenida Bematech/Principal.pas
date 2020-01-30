unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCrpe32, DB, DBTables, RxQuery, VarSys, ExtCtrls, ComCtrls,
  RDprint;

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
    rdp: TRDprint;
    TblPedidoTipoVenda: TStringField;
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
    SQLDependente: TRxQuery;
    SQLDependenteCLIEA13ID: TStringField;
    SQLDependenteCLDPICOD: TIntegerField;
    SQLDependenteCLDPA60NOME: TStringField;
    SQLDependenteCLDPA15PARENTESCO: TStringField;
    SQLDependenteCLDPCAUTORIZADO: TStringField;
    SQLDependenteCLDPDNASC: TDateTimeField;
    SQLDependenteCLDPA10RG: TStringField;
    SQLDependenteCLDPA11CPF: TStringField;
    SQLDependentePENDENTE: TStringField;
    SQLDependenteREGISTRO: TDateTimeField;
    SQLDependenteCLDPA15FONE: TStringField;
    SQLDependenteCLDPA60EMAIL: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    NomeAutorizadoCompra : String;
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses DataModulo, DataModuloTemplate;

{$R *.dfm}

procedure TFormPrincipal.FormCreate(Sender: TObject);
var CodCliente : String;
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

    if (TblPreVendaCabNomeClienteVenda.Value = dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','"'+CodCliente+'"')) or (TblPreVendaCabNomeClienteVenda.Value = '') then
      TblPedidoDestinatario_Nome.asString  := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','"'+CodCliente+'"')
    else
      TblPedidoDestinatario_Nome.asString  := TblPreVendaCabNomeClienteVenda.Value;

    if (TblPreVendaCabEnderecoClienteVenda.Value = dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA60ENDRES','"'+CodCliente+'"')) or (TblPreVendaCabEnderecoClienteVenda.Value = '') then
      TblPedidoDestinatario_Endereco.asString  := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA60ENDRES','"'+CodCliente+'"')
    else
      TblPedidoDestinatario_Endereco.asString  := TblPreVendaCabEnderecoClienteVenda.Value;

    if (TblPreVendaCabCidadeClienteVenda.Value = dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA60CIDRES','"'+CodCliente+'"')) or (TblPreVendaCabCidadeClienteVenda.Value = '') then
      TblPedidoDestinatario_Cidade.asString  := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA60CIDRES','"'+CodCliente+'"')
    else
      TblPedidoDestinatario_Cidade.asString  := TblPreVendaCabCidadeClienteVenda.Value;

    if (TblPreVendaCabNomeClienteVenda.Value = dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','"'+CodCliente+'"')) or (TblPreVendaCabNomeClienteVenda.Value = '') then
      begin
        TblPedidoDestinatario_Nome.asString      := CodCliente+'-'+TblPedidoDestinatario_Nome.asString;
        TblPedidoDestinatario_Bairro.asString    := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA60BAIRES','"'+CodCliente+'"');
        TblPedidoDestinatario_Cep.asString       := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA8CEPRES','"'+CodCliente+'"');
        TblPedidoDestinatario_UF.asString        := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA2UFRES','"'+CodCliente+'"');
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
          end;
        TblPedidoDestinatario_Fone.asString      := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA15FONE1','"'+CodCliente+'"');
        TblPedidoDestinatario_Fax.asString       := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA15FAX','"'+CodCliente+'"');
      end;
    if TblPreVendaCabClienteDependente.Value > 0 then
      begin
        SQLDependente.Close;
        SQLDependente.MacroByName('MFiltro').Value := 'CLIEA13ID = "'+CodCliente+'" and CLDPICOD = '+TblPreVendaCabClienteDependente.AsString;
        SQLDependente.Open;
        If not SQLDependente.IsEmpty then
          NomeAutorizadoCompra := SQLDependenteCLDPA60NOME.AsString;
      end;

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
  except
    Application.Terminate;
  end;
end;

procedure TFormPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree ;
end;

procedure TFormPrincipal.FormActivate(Sender: TObject);
var Linha, vCol : integer;
begin
    Linha := 1;
    rdp.Abrir;
    rdp.Imp(Linha, 1,'AVENIDA MATERIAIS DE CONSTRUCAO'); Inc(Linha);
    rdp.Imp(Linha, 1,'Av.Paraguassu, 2178'); Inc(Linha,1);
    rdp.Imp(Linha, 1,'Fone 51 3627.2312'); Inc(Linha,2);
    rdp.Imp(Linha, 1,'Controle....: '  + TblPedidoPedICod.AsString); Inc(Linha,1);
    rdp.Imp(Linha, 1,'Data........: '  + TblPedidoDtEmissao.AsString); Inc(Linha,2);
    rdp.Imp(Linha, 1,'Dados do Cliente'); Inc(Linha,1);
    rdp.Imp(Linha, 1,copy(TblPedidoDestinatario_Nome.AsString,1,30)); Inc(Linha,1);
    if TblPedidoDestinatario_Endereco.AsString <> '' then
      rdp.Imp(Linha, 1,copy(TblPedidoDestinatario_Endereco.AsString,1,30)); Inc(Linha,1);
    if TblPedidoDestinatario_Cidade.AsString <> '' then
      rdp.Imp(Linha, 1,copy(TblPedidoDestinatario_Cidade.AsString,1,30)); Inc(Linha,1);
    if TblPedidoDestinatario_Bairro.AsString <> '' then
      rdp.Imp(Linha, 1,copy(TblPedidoDestinatario_Bairro.AsString,1,30)); Inc(Linha,1);
    if TblPedidoDestinatario_Fone.AsString <> '' then
      rdp.Imp(Linha, 1,copy(TblPedidoDestinatario_Fone.AsString,1,30)); Inc(Linha,1);
    rdp.Imp(Linha,1,'Condicao.: '+ copy(TblPedidoPlano.AsString,1,20)); Inc(Linha,1);
    rdp.Imp(Linha,1,'Vendedor.: '+ copy(TblPedidoVendedor.AsString,1,20)); Inc(Linha,2);
    rdp.Imp(Linha,1,'Codigo Descricao     Quant Vlr.Unit  Vlr.Total');    Inc(Linha);
    rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha,1);
    TblPedidoItem.First;
    While not TblPedidoItem.eof Do
      Begin
        rdp.Imp(Linha, 1,FormatFloat('######000000',TblPedidoItemCodigo.Value));
        rdp.Imp(Linha,8,copy(TblPedidoItemDescricao.AsString,1,40)); Inc(Linha);
        rdp.ImpVal(Linha,22,'###',TblPedidoItemQtd1.Value,[]);
        rdp.ImpVal(Linha,30,'##0.00',TblPedidoItemVlrUnitario.Value,[]);
        rdp.ImpVal(Linha,41,'##0.00',TblPedidoItemVlrTotal.Value,[]); Inc(Linha);
        TblPedidoItem.Next;
      End;
    rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha,1);
    rdp.Imp(Linha,10,'Total Itens R$');
    rdp.ImpVal(Linha,39,'##0.00',TblPedidoTotal.Value+TblPedidoTotalDesconto.Value,[]);    Inc(Linha);
    rdp.Imp(Linha,10,'Desconto    R$');
    rdp.ImpVal(Linha,39,'##0.00',TblPedidoTotalDesconto.Value,[]);  Inc(Linha);
    rdp.Imp(Linha,10,'Total Geral R$');
    rdp.ImpVal(Linha,39,'##0.00',(TblPedidoTotal.Value),[]);  Inc(Linha,2);
    rdp.Imp(Linha,1,'Ass.Comprador: _____________________');
    if NomeAutorizadoCompra <> '' then
      rdp.Imp(Linha,16,NomeAutorizadoCompra)
    else
      rdp.Imp(Linha,16,TblPedidoDestinatario_Nome.AsString);
    rdp.Fechar;
    TblPedido.Close;
    TblPedidoItem.Close;
    TblPedidoFinanceiro.Close;
    Application.Terminate;
end;

end.
