
unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, VarSys, ExtCtrls, ComCtrls,
  RDprint;

type
  TFormPrincipal = class(TForm)
    RDprint: TRDprint;
    TblPedidoFinanceiro: TTable;
    TblPedidoFinanceiroPedICod: TStringField;
    TblPedidoFinanceiroVencimento: TDateField;
    TblPedidoFinanceiroValor: TFloatField;
    TblPedidoFinanceiroNumerario: TStringField;
    TblPedidoFinanceiroTipopadrao: TStringField;
    TblPedidoFinanceiroParcela: TStringField;
    TblPedidoFinanceiroPortador: TStringField;
    TblPreVendaItem: TTable;
    TblPreVendaItemCodigo: TIntegerField;
    TblPreVendaItemDescricao: TStringField;
    TblPreVendaItemQuantidade: TFloatField;
    TblPreVendaItemValorUnitario: TFloatField;
    TblPreVendaItemValorTotal: TFloatField;
    TblPreVendaItemDesconto: TFloatField;
    TblPreVendaItemMarca: TStringField;
    TblPreVendaItemReferencia: TStringField;
    TblPreVendaItemTroca: TStringField;
    TblPreVendaItemComplemento: TStringField;
    TblPreVendaItemImpCozinha: TStringField;
    TblPreVendaItemImpVale: TStringField;
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
    TblPreVendaCabTroco: TFloatField;
    TblPreVendaCabPEDIDOORCAMENTO: TStringField;
    TblPreVendaCabClienteDependente: TStringField;
    TblPreVendaCabNomeClienteVenda: TStringField;
    TblPreVendaCabDocumentoClienteVenda: TStringField;
    TblPreVendaCabEnderecoClienteVenda: TStringField;
    TblPreVendaCabCidadeClienteVenda: TStringField;
    TblPreVendaCabBairroClienteVenda: TStringField;
    TblPreVendaCabOBSImpressaoCupom: TStringField;
    TblPreVendaCabFoneClienteVenda: TStringField;
    TblPreVendaCabUsuarioVendaSTR: TStringField;
    TblPreVendaCabPlacaVeiculo: TStringField;
    TblPreVendaCabVlrEntrada: TFloatField;
    TblPreVendaCabTERMICOD: TIntegerField;
    TblPreVendaCabPRVDICOD: TIntegerField;
    TblPreVendaCabKM: TStringField;
    TblPreVendaCabDataEmissao: TDateTimeField;
    TblPreVendaCabDisplayNumero: TIntegerField;
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
var Linha : integer;
var TotDesc : Double;
begin
  try
    TblPreVendaCab.Open;
    TblPreVendaItem.Open;

    Linha := 1;
    RDprint.Abrir;
    RDprint.ImpF(Linha, 1,'FERRAGEM TRINDADE',[Expandido, Italico]); Inc(Linha,2);
    RDprint.ImpF(Linha, 1,'AV FERNANDES BASTOS, 1371 - CENTRO - TRAMANDAI',[Normal]); Inc(Linha);
    RDprint.ImpF(Linha, 1,'Fone/Fax.: 51 3684 1227',[Normal]); Inc(Linha,2);
    RDprint.Imp(Linha,  1,'Orçamento..: '  + TblPreVendaCabTicketNumero.AsString);
    RDprint.Imp(Linha, 60,'Data.....: '    + TblPreVendaCabDataEmissao.AsString); Inc(Linha,2);
    RDprint.Imp(Linha,  1,'Cliente....: '  + copy(TblPreVendaCabNomeClienteVenda.AsString,1,35)); Inc(Linha);
    RDprint.Imp(Linha,  1,'Endereco...: '  + copy(TblPreVendaCabEnderecoClienteVenda.AsString,1,35));
    RDprint.Imp(Linha, 60,'Cidade...: '    + copy(TblPreVendaCabCidadeClienteVenda.AsString,1,35)); Inc(Linha);
    RDprint.Imp(Linha,  1,'Plano......: '  + copy(TblPreVendaCabPlano.AsString,1,35)); Inc(Linha);
    RDprint.Imp(Linha, 60,'Vendedor.: '    + copy(TblPreVendaCabVendedor.AsString,1,30)); Inc(Linha,2);
    RDprint.Imp(Linha,1,'----------------------------------------------------------------------------------'); Inc(Linha);
    RDprint.Imp(Linha,1,'Codigo Descricao                                    Vlr.Unit Quant  Desc Vlr.Total'); Inc(Linha);
    TotDesc := 0;
    TblPreVendaItem.First;
    While not TblPreVendaItem.eof Do
      Begin
        RDprint.Imp(Linha, 1,FormatFloat('######000000',TblPreVendaItemCodigo.Value));
        RDprint.Imp(Linha, 8,copy(TblPreVendaItemDescricao.AsString,1,40));
        RDprint.ImpVal(Linha,58,'##0.00',TblPreVendaItemValorUnitario.Value,[]);
        RDprint.ImpVal(Linha,68,'##0.000',TblPreVendaItemQuantidade.Value,[]);
        RDprint.ImpVal(Linha,78,'##0.00',TblPreVendaItemDesconto.Value,[]);
        RDprint.ImpVal(Linha,88,'##0.00',TblPreVendaItemValorTotal.Value,[]); Inc(Linha);
        TotDesc := TotDesc + TblPreVendaItemDesconto.Value;
        TblPreVendaItem.Next;
      End;

    RDprint.Imp(Linha,65,'Total Itens R$');
    RDprint.ImpVal(Linha,84,'##0.00',TblPreVendaCabTotalNominal.Value,[]); Inc(Linha);
    RDprint.Imp(Linha,65,'Desconto    R$');
    RDprint.ImpVal(Linha,84,'##0.00',TblPreVendaCabDesconto.Value+TotDesc,[]);
    Inc(Linha);
    RDprint.Imp(Linha,65,'                     -------------------------'); Inc(Linha);
    RDprint.Imp(Linha,65,'Total Geral R$');
    RDprint.ImpVal(Linha,84,'##0.00',(TblPreVendaCabTotalGeral.Value),[]);  Inc(Linha);
    RDprint.Fechar;

    if Application.MessageBox(PChar('Imprimir Segunda Via?'), PChar(Application.Title), MB_SYSTEMMODAL + MB_YesNo + MB_IconQuestion + MB_DEFBUTTON2) = IdYes then
      begin
        Linha := 1;
        RDprint.Abrir;
        RDprint.ImpF(Linha, 1,'FERRAGEM TRINDADE',[Expandido, Italico]); Inc(Linha,2);
        RDprint.ImpF(Linha, 1,'AV FERNANDES BASTOS, 1371 - CENTRO - TRAMANDAI',[Normal]); Inc(Linha);
        RDprint.ImpF(Linha, 1,'Fone/Fax.: 51 3684 1227',[Normal]); Inc(Linha,2);
        RDprint.Imp(Linha,  1,'Orçamento..: '  + TblPreVendaCabTicketNumero.AsString);
        RDprint.Imp(Linha, 60,'Data.....: '    + TblPreVendaCabDataEmissao.AsString); Inc(Linha,2);
        RDprint.Imp(Linha,  1,'Cliente....: '  + copy(TblPreVendaCabNomeClienteVenda.AsString,1,35)); Inc(Linha);
        RDprint.Imp(Linha,  1,'Endereco...: '  + copy(TblPreVendaCabEnderecoClienteVenda.AsString,1,35));
        RDprint.Imp(Linha, 60,'Cidade...: '    + copy(TblPreVendaCabCidadeClienteVenda.AsString,1,35)); Inc(Linha);
        RDprint.Imp(Linha,  1,'Plano......: '  + copy(TblPreVendaCabPlano.AsString,1,35)); Inc(Linha);
        RDprint.Imp(Linha, 60,'Vendedor.: '    + copy(TblPreVendaCabVendedor.AsString,1,30)); Inc(Linha,2);
        RDprint.Imp(Linha,1,'----------------------------------------------------------------------------------'); Inc(Linha);
        RDprint.Imp(Linha,1,'Codigo Descricao                                    Vlr.Unit Quant  Desc Vlr.Total'); Inc(Linha);
        TotDesc := 0;
        TblPreVendaItem.First;
        While not TblPreVendaItem.eof Do
          Begin
            RDprint.Imp(Linha, 1,FormatFloat('######000000',TblPreVendaItemCodigo.Value));
            RDprint.Imp(Linha, 8,copy(TblPreVendaItemDescricao.AsString,1,40));
            RDprint.ImpVal(Linha,58,'##0.00',TblPreVendaItemValorUnitario.Value,[]);
            RDprint.ImpVal(Linha,68,'##0.000',TblPreVendaItemQuantidade.Value,[]);
            RDprint.ImpVal(Linha,78,'##0.00',TblPreVendaItemDesconto.Value,[]);
            RDprint.ImpVal(Linha,88,'##0.00',TblPreVendaItemValorTotal.Value,[]); Inc(Linha);
            TotDesc := TotDesc + TblPreVendaItemDesconto.Value;
            TblPreVendaItem.Next;
          End;

        RDprint.Imp(Linha,65,'Total Itens R$');
        RDprint.ImpVal(Linha,84,'##0.00',TblPreVendaCabTotalNominal.Value,[]); Inc(Linha);
        RDprint.Imp(Linha,65,'Desconto    R$');
        RDprint.ImpVal(Linha,84,'##0.00',TblPreVendaCabDesconto.Value+TotDesc,[]);
        Inc(Linha);
        RDprint.Imp(Linha,65,'                     -------------------------'); Inc(Linha);
        RDprint.Imp(Linha,65,'Total Geral R$');
        RDprint.ImpVal(Linha,84,'##0.00',(TblPreVendaCabTotalGeral.Value),[]);  Inc(Linha);
        RDprint.Fechar;
      end;
    TblPreVendaCab.close;  
    TblPreVendaItem.close;
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
