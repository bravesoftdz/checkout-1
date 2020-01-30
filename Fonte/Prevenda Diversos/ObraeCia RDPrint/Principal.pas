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
    RDprint: TRDprint;
    TblPreVendaCabVlrEntrada: TFloatField;
    TblPreVendaCabNomeClienteVenda: TStringField;
    TblPreVendaCabDocumentoClienteVenda: TStringField;
    TblPreVendaCabEnderecoClienteVenda: TStringField;
    TblPreVendaCabCidadeClienteVenda: TStringField;
    TblPreVendaCabOBSImpressaoCupom: TStringField;
    TblPreVendaItemTroca: TStringField;
    TblPedidoItemTroca: TStringField;
    TblPedidoDtEmissao: TDateTimeField;
    TblPedidoItemMarca: TStringField;
    SQLPrevendaContasReceber: TRxQuery;
    SQLPrevendaContasReceberPVCRICOD: TIntegerField;
    SQLPrevendaContasReceberTERMICOD: TIntegerField;
    SQLPrevendaContasReceberPRVDICOD: TIntegerField;
    SQLPrevendaContasReceberCLIEA13ID: TStringField;
    SQLPrevendaContasReceberNUMEICOD: TIntegerField;
    SQLPrevendaContasReceberPVCRN2VLR: TBCDField;
    SQLPrevendaNumerario: TRxQuery;
    SQLPrevendaNumerarioTERMICOD: TIntegerField;
    SQLPrevendaNumerarioPRVDICOD: TIntegerField;
    SQLPrevendaNumerarioNUMEICOD: TIntegerField;
    SQLPrevendaNumerarioPVNUN2VLR: TBCDField;
    TblPreVendaCabTERMICOD: TIntegerField;
    TblPreVendaCabPRVDICOD: TIntegerField;
    SQLPrevendaContasReceberPVCRINROPARC: TIntegerField;
    SQLPrevendaContasReceberPVCRDVENC: TDateTimeField;
    TblPreVendaCabDataEmissao: TDateTimeField;
    TblPedidoFinanceiroParcela: TStringField;
    TblPedidoFinanceiroNumerario: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    VlrBonusTroca : Double;
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses DataModulo, DataModuloTemplate;

{$R *.dfm}

procedure TFormPrincipal.FormCreate(Sender: TObject);
var CodCliente : String;
var Parc : Integer;
begin
  VlrBonusTroca := 0 ;
  try
    TblPreVendaCab.Open;
    TblPreVendaItem.Open;
    If TblPedido.Exists Then
      TblPedido.DeleteTable;
    TblPedido.CreateTable;
    TblPedido.AddIndex('Primario','PedICod',[ixPrimary]);
    TblPedido.Open;
    TblPedido.Append;
    TblPedidoPEDIDOORCAMENTO.AsString        := 'PRÉ VENDA NRO: ';
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
    TblPedidoDtaEntrega.AsString             := TblPreVendaCabDataEntrega.AsString;
    TblPedidoComprador.asString              := '';
    TblPedidoOrdemCompra.asString            := '';
    TblPedidoVendedor.asString               := TblPreVendaCabVendedor.AsString;
    TblPedidoPlano.asString                  := TblPreVendaCabPlano.AsString;
    // Tipo de Frete (Não existe na venda a balcao)
    TblPedidoTransp.asString                 := '';
    TblPedidoTipoFrete.asString              := '';
    TblPedidoValorFrete.AsString             := '';

    TblPedidoTotalDesconto.Value             := TblPreVendaCabDesconto.Value;
    TblPedidoTotal.Value                     := TblPreVendaCabTotalGeral.Value;
    TblPedidoObservacoes.asString            := TblPreVendaCabOBSImpressaoCupom.Value;
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
        TblPedidoItemTroca.Value       := TblPreVendaItemTroca.Value;
        TblPedidoItemVlrTotal.Value    := TblPreVendaItemValorTotal.Value;
        TblPedidoItem.Post;
        if TblPedidoItemTroca.Value = 'S' then
          VlrBonusTroca := VlrBonusTroca + (TblPedidoItemVlrUnitario.Value*TblPedidoItemQtd1.Value);
        TblPreVendaItem.Next;
      End;

    TblPedidoFinanceiro.Open;
    While not TblPedidoFinanceiro.eof Do
     TblPedidoFinanceiro.Delete;
    SQLPrevendaNumerario.Close;
    SQLPrevendaNumerario.MacroByName('MFiltro').Value := 'TERMICOD = ' + TblPreVendaCabTERMICOD.AsString + 'and PRVDICOD = ' + TblPreVendaCabPRVDICOD.AsString;
    SQLPrevendaNumerario.Open;
    SQLPrevendaContasReceber.Close;
    SQLPrevendaContasReceber.MacroByName('MFiltro').Value := 'TERMICOD = ' + TblPreVendaCabTERMICOD.AsString + 'and PRVDICOD = ' + TblPreVendaCabPRVDICOD.AsString;
    SQLPrevendaContasReceber.Open;

    if not SQLPrevendaNumerario.IsEmpty then
      begin
        SQLPrevendaNumerario.first;
        while Not SQLPrevendaNumerario.Eof Do
          begin
            TblPedidoFinanceiro.Append;
            TblPedidoFinanceiroPedICod.AsString     := TblPreVendaCabTicketNumero.asString;
            TblPedidoFinanceiroParcela.AsString     := 'Ent';
            TblPedidoFinanceiroValor.Value          := SQLPrevendaNumerarioPVNUN2VLR.Value;
            TblPedidoFinanceiroVencimento.AsString  := FormatDateTime('dd/mm/yyyy',TblPreVendaCabDataEmissao.AsDateTime);
            TblPedidoFinanceiroNumerario.AsString   := DM.SQLLocate('NUMERARIO','NUMEICOD','NUMEA30DESCR',SQLPrevendaNumerarioNUMEICOD.AsString);
            TblPedidoFinanceiro.Post;
            SQLPrevendaNumerario.Next;
          end;
      end;
    if not SQLPrevendaContasReceber.IsEmpty then
      begin
        Parc := 1;
        SQLPrevendaContasReceber.first;
        while Not SQLPrevendaContasReceber.Eof Do
          begin
            TblPedidoFinanceiro.Append;
            TblPedidoFinanceiroPedICod.AsString   := TblPreVendaCabTicketNumero.asString;
            TblPedidoFinanceiroParcela.AsString   := FormatFloat('###000',SQLPrevendaContasReceberPVCRINROPARC.Value);
            TblPedidoFinanceiroValor.Value        := SQLPrevendaContasReceberPVCRN2VLR.Value;
            TblPedidoFinanceiroVencimento.Value   := SQLPrevendaContasReceberPVCRDVENC.Value;
            TblPedidoFinanceiroNumerario.AsString := DM.SQLLocate('NUMERARIO','NUMEICOD','NUMEA30DESCR',SQLPrevendaContasReceberNUMEICOD.AsString);
            TblPedidoFinanceiro.Post;
            SQLPrevendaContasReceber.Next;
            Parc := Parc+1;
          end;
      end;
  except
    ShowMessage('Erro no Except');
    Application.Terminate;
  end;
end;

procedure TFormPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TblPedido.Close;
  TblPedidoItem.Close;
  TblPedidoFinanceiro.Close;
  Action := cafree ;
end;

procedure TFormPrincipal.FormActivate(Sender: TObject);
var Linha, vCol : integer;
begin
    Linha := 1;
    RDprint.Abrir;
    RDprint.ImpF(Linha, 1,'REDEMAC OBRA & CIA',[Expandido, Italico]);
    RDprint.ImpF(Linha,60,'Pre Venda', [Normal]); Inc(Linha,2);
    RDprint.Imp(Linha,  1,'Controle...: '  + TblPedidoPedICod.AsString);
    RDprint.Imp(Linha, 60,'Data.....: '    + FormatDateTime('dd/mm/yyyy hh:mm',TblPreVendaCabDataEmissao.Value)); Inc(Linha,2);
    RDprint.Imp(Linha,  1,'Cliente....: '  + TblPedidoDestinatario_Nome.AsString); Inc(Linha);
    RDprint.Imp(Linha,  1,'Endereco...: '  + TblPedidoDestinatario_Endereco.AsString);
    RDprint.Imp(Linha, 60,'Cidade...: '    + TblPedidoDestinatario_Cidade.AsString+'/'+TblPedidoDestinatario_UF.AsString); Inc(Linha);
    RDprint.Imp(Linha,  1,'CPF/CNPJ...: '  + TblPedidoDestinatario_CpfCgc.AsString);
    RDprint.Imp(Linha, 60,'RG/IE....: '    + TblPedidoDestinatario_IE.AsString); Inc(Linha);
    RDprint.Imp(Linha,  1,'Fone.......: '  + TblPedidoDestinatario_Fone.AsString);
    RDprint.Imp(Linha, 35,'Fax.: '         + TblPedidoDestinatario_Fax.AsString);
    RDprint.Imp(Linha, 60,'Vendedor.: '    + TblPedidoVendedor.AsString); Inc(Linha);
    RDprint.Imp(Linha,  1,'Observacao.: '  + TblPedidoObservacoes.Value);  Inc(Linha,2);
    RDprint.Imp(Linha,  1,'Faturamento.: ' + TblPedidoPlano.AsString); Inc(Linha);
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
    RDprint.Imp(Linha,1,'Codigo   Quant      Un Descricao                                           Vlr.Unit Vlr.Total'); Inc(Linha);
    TblPedidoItem.First;
    While not TblPedidoItem.eof Do
      Begin
        RDprint.Imp(Linha, 1,FormatFloat('#####00000',TblPedidoItemCodigo.value));
        RDprint.ImpVal(Linha,10,'##0.000',TblPedidoItemQtd1.Value,[]);
        RDprint.Imp(Linha,21,TblPedidoItemUn.AsString);
        if TblPedidoItemTroca.value = 'S' then
          RDprint.Imp(Linha,24,'(T)'+copy(TblPedidoItemDescricao.AsString,1,50))
        else
          RDprint.Imp(Linha,24,copy(TblPedidoItemDescricao.AsString,1,50));
        RDprint.ImpVal(Linha,78,'##0.00',TblPedidoItemVlrUnitario.Value,[]);
        RDprint.ImpVal(Linha,88,'##0.00',TblPedidoItemVlrTotal.Value,[]);
        Inc(Linha);
        TblPedidoItem.Next;
      End;
    Inc(Linha);
    RDprint.Imp(Linha,65,'Total Itens R$');
    RDprint.ImpVal(Linha,84,'###,##0.00',TblPedidoTotal.Value + VlrBonusTroca +TblPedidoTotalDesconto.Value,[]); Inc(Linha);
    RDprint.Imp(Linha,65,'Desconto    R$');
    RDprint.ImpVal(Linha,84,'###,##0.00',TblPedidoTotalDesconto.Value,[]); Inc(Linha);
    RDprint.Imp(Linha,65,'Bonus Troca R$');
    RDprint.ImpVal(Linha,84,'###,##0.00',VlrBonusTroca,[]); Inc(Linha);
    RDprint.Imp(Linha, 5,'Ass.Cliente: _____________________');
    RDprint.Imp(Linha,65,'Total Geral R$');
    RDprint.ImpVal(Linha,84,'###,##0.00',TblPedidoTotal.Value,[]);
    RDprint.Imp(60,1,'.');
    RDprint.Fechar;

    Application.Terminate;
end;

end.
