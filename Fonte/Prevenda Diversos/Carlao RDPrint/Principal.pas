Unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCrpe32, DB, DBTables, RxQuery, VarSys, ExtCtrls, ComCtrls,
  RDprint;

type
  TFormPrincipal = class(TForm)
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
    Panel1: TPanel;
    RDprint: TRDprint;
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
var Item : Integer;
begin
  try
    TblPreVendaCab.Open;
    TblPreVendaItem.Open;
    TblPreVendaItem.First;
    RDprint.Abrir;
    RDprint.Imp(1,1,'Controle: '  + TblPreVendaCabTicketNumero.AsString);
    RDprint.Imp(2,1,'Vendedor: '  + TblPreVendaCabVendedor.AsString);
    RDprint.Imp(3,1,'Plano: '     + TblPreVendaCabPlano.AsString);
    RDprint.Imp(4,1,'Cliente: '   + TblPreVendaCabCliente.AsString);
    RDprint.Imp(5,1,'--------------------------------------------');
    RDprint.Imp(6,1,'Codigo Descricao');
    RDprint.Imp(7,1,'Quant       Vlr.Unit   Vlr.Desc    Vlr.Total');
    RDprint.Imp(8,1,'--------------------------------------------');
    Item := 9;
    While not TblPreVendaItem.eof Do
      Begin
        RDprint.Imp(Item,1,TblPreVendaItemCodigo.AsString);
        RDprint.Imp(Item,8,TblPreVendaItemDescricao.AsString);
        Item := Item+1;
        RDprint.ImpVal(Item,1,'##0.00',TblPreVendaItemQuantidade.Value,[]);
        RDprint.ImpVal(Item,10,'###,##0.00',TblPreVendaItemValorUnitario.Value,[]);
        RDprint.ImpVal(Item,21,'###,##0.00',TblPreVendaItemDesconto.Value,[]);
        RDprint.ImpVal(Item,34,'###,##0.00',TblPreVendaItemValorTotal.Value,[]);
        Item := Item+1;
        TblPreVendaItem.Next;
      End;
    Item := Item+1;
    RDprint.Imp(Item,1,'--------------------------------------------');
    RDprint.Imp(item+1,10,'Total Itens');
    RDprint.ImpVal(Item+1,34,'###,##0.00',TblPreVendaCabTotalNominal.Value,[]);
    RDprint.Imp(item+2,10,'Desconto');
    RDprint.ImpVal(Item+2,34,'###,##0.00',TblPreVendaCabDesconto.Value,[]);
    RDprint.Imp(item+3,10,'Total Geral');
    RDprint.ImpVal(Item+3,34,'###,##0.00',TblPreVendaCabTotalGeral.Value,[]);
    RDprint.Fechar;
  except
    Application.ProcessMessages;
  end;

  Application.Terminate;
end;

procedure TFormPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree ;
end;

end.
