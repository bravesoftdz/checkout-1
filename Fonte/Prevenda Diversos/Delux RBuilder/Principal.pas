unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCrpe32, DB, DBTables, RxQuery, VarSys, ExtCtrls, ComCtrls,
  RDprint, ppCtrls, ppStrtch, ppMemo, ppBands, ppVar, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, ppDBBDE,
  jpeg, ppSubRpt;

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
    ppLabel11: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText6: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel13: TppLabel;
    DSCab: TDataSource;
    dsItens: TDataSource;
    PipeItens: TppBDEPipeline;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppImage1: TppImage;
    TblPreVendaItemTroca: TStringField;
    PipeCab: TppBDEPipeline;
    ppDBText8: TppDBText;
    ppLabel1: TppLabel;
    TblPedidoFinanceiro: TTable;
    TblPedidoFinanceiroPedICod: TStringField;
    TblPedidoFinanceiroVencimento: TDateField;
    TblPedidoFinanceiroValor: TFloatField;
    TblPedidoFinanceiroNumerario: TStringField;
    TblPedidoFinanceiroTipopadrao: TStringField;
    TblPedidoFinanceiroParcela: TStringField;
    TblPedidoFinanceiroPortador: TStringField;
    dsfin: TDataSource;
    PipeFin: TppBDEPipeline;
    ppFinanceiro: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleTotais: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBandConfissao: TppSummaryBand;
    ppLabel15: TppLabel;
    ppDBText1: TppDBText;
    ppLabel12: TppLabel;
    ppDBText5: TppDBText;
    ppLabel8: TppLabel;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLabel3: TppLabel;
    ppConfissao: TppReport;
    ppTitleBand3: TppTitleBand;
    ppDBText13: TppDBText;
    ppLabel16: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDBText14: TppDBText;
    ppLabel25: TppLabel;
    ppImage2: TppImage;
    ppDBText15: TppDBText;
    ppLabel26: TppLabel;
    ppDetailConfissaoDivida: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppTipoVendaConfissao: TppLabel;
    ppLabel18: TppLabel;
    ppDBText16: TppDBText;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppDBText17: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppLabel29: TppLabel;
    ppTipoVenda: TppLabel;
    TblPreVendaCabPEDIDOORCAMENTO: TStringField;
    ppCondicional: TppReport;
    ppTitleBand4: TppTitleBand;
    ppDBText23: TppDBText;
    ppLabel14: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppDBText24: TppDBText;
    ppLabel30: TppLabel;
    ppImage3: TppImage;
    ppDBText25: TppDBText;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppDBText26: TppDBText;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppDetailConfissaoCondicional: TppDetailBand;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLabel43: TppLabel;
    ppTrocas: TppLabel;
    ppDescricao: TppLabel;
    ppTotalItem: TppLabel;
    ppLabel44: TppLabel;
    ppDesc: TppLabel;
    ppTotalDesconto: TppLabel;
    ppLabel45: TppLabel;
    ppDBText4: TppDBText;
    ppLabel46: TppLabel;
    ppDBText7: TppDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppTitleBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppTitleTotaisBeforePrint(Sender: TObject);
    procedure ppDetailConfissaoDividaBeforePrint(Sender: TObject);
    procedure ppDetailConfissaoCondicionalBeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TotalTtroca, TotalDesconto : Double;
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses DataModulo, DataModuloTemplate;

{$R *.dfm}

procedure TFormPrincipal.FormCreate(Sender: TObject);
var CodCliente : String;
var Linha, vCol : integer;
var TemCrediario: boolean;
begin
  try
    TotalTtroca   := 0;
    TotalDesconto := 0;
    TblPreVendaCab.Open;
    TblPreVendaItem.Open;
    TblPedidoFinanceiro.Open;

    ppReport1.Print;

    // Seg Via
    if Application.MessageBox(PChar('Imprimir Segunda Via?'), PChar(Application.Title), MB_SYSTEMMODAL + MB_YesNo + MB_IconQuestion + MB_DEFBUTTON2) = IdYes then
      ppReport1.Print;

    // Confissao de divida somente para terminal = Caixa
    TemCrediario := False;
    TblPedidoFinanceiro.first;
    while not TblPedidoFinanceiro.eof do
      begin
        if TblPedidoFinanceiroTipopadrao.Value = 'CRD' then
          TemCrediario := True;
        TblPedidoFinanceiro.next;
      end;
    TblPedidoFinanceiro.first;
    if TemCrediario then
      ppConfissao.Print;


    // Confissao Condicional, somente para terminal = Prevenda
    if TblPreVendaCabPEDIDOORCAMENTO.AsString = 'PRE-VENDA' then
      begin
        ppCondicional.print;
      end;

    // Fecha Tabelas
    TblPreVendaCab.Close;
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

procedure TFormPrincipal.ppTitleBand1BeforePrint(Sender: TObject);
begin
  if TblPreVendaCabPEDIDOORCAMENTO.AsString = 'PEDIDO' then
    ppTipoVenda.Caption := 'Cupom de Venda';
  if TblPreVendaCabPEDIDOORCAMENTO.AsString = 'PRE-VENDA' then
    ppTipoVenda.Caption := 'Cupom Condicional';
end;

procedure TFormPrincipal.ppDetailBand1BeforePrint(Sender: TObject);
begin
  if TblPreVendaItemDesconto.Value > 0 then
    begin
      ppDesc.Caption := FormatFloat('##0.00',TblPreVendaItemDesconto.Value);
      TotalDesconto  := TotalDesconto + TblPreVendaItemDesconto.Value;
    end;

  if TblPreVendaItemTroca.Value = 'S' then
    begin
      ppDescricao.Caption := '(T) '+TblPreVendaItemDescricao.Value;
      ppTotalItem.Caption := '(-)'+FormatFloat('##0.00',((TblPreVendaItemValorUnitario.Value * TblPreVendaItemQuantidade.Value)-TblPreVendaItemDesconto.Value));
      TotalTtroca := TotalTtroca + (TblPreVendaItemValorUnitario.Value * TblPreVendaItemQuantidade.Value);
    end
  else
    begin
      ppDescricao.Caption := TblPreVendaItemDescricao.Value;
      ppTotalItem.Caption := FormatFloat('##0.00',((TblPreVendaItemValorUnitario.Value * TblPreVendaItemQuantidade.Value)-TblPreVendaItemDesconto.Value));
    end;
end;

procedure TFormPrincipal.ppTitleTotaisBeforePrint(Sender: TObject);
begin
  ppTrocas.Caption := FormatFloat('##0.00',TotalTtroca);
  ppTotalDesconto.Caption := FormatFloat('##0.00',TotalDesconto);
end;

procedure TFormPrincipal.ppDetailConfissaoDividaBeforePrint(
  Sender: TObject);
begin
  if TblPreVendaItemTroca.Value = 'S' then
    ppDetailConfissaoDivida.Visible := False
  else
    ppDetailConfissaoDivida.Visible := True;
end;

procedure TFormPrincipal.ppDetailConfissaoCondicionalBeforePrint(
  Sender: TObject);
begin
  if TblPreVendaItemTroca.Value = 'S' then
    ppDetailConfissaoCondicional.Visible := False
  else
    ppDetailConfissaoCondicional.Visible := True;
end;

end.
