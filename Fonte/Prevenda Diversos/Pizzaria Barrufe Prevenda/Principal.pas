unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCrpe32, DB, DBTables, RxQuery, VarSys, ExtCtrls, ComCtrls,
  RDprint, ppDB, ppBands, ppVar, ppCtrls, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppDBBDE, Inifiles;

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
    TblPreVendaCabDataEmissao: TDateField;
    TblPreVendaItemTroca: TStringField;
    TblPreVendaCabMesaCodigo: TIntegerField;
    TblPreVendaCabContaCodigo: TIntegerField;
    TblPreVendaCabTroco: TFloatField;
    TblPreVendaCabDisplayNumero: TIntegerField;
    TblPreVendaItemComplemento: TStringField;
    TblPedidoFinanceiroNumerario: TStringField;
    rdp: TRDprint;
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
var CodCliente, ImpCaixa, ImpressoraCozinha, nVias : String;
var Linha, vCol : integer;
var TotDesc : Double;
var ImpCozinha, ImpVale : boolean;
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

    rdp.PortaComunicacao := '';
    rdp.Abrir;
    Linha := 1;
    rdp.ImpF(Linha,1,'PIZZARIA BARRUFI',[Expandido, Normal]); Inc(Linha,2);
    // Tipo de Venda
    if TblPreVendaCabTipoVenda.Value = 'C' then
      begin rdp.ImpF(Linha, 1,'VENDA BALCAO',[Expandido, Normal]); Inc(Linha,2); end;
    if TblPreVendaCabTipoVenda.Value = 'Tele' then
      begin rdp.ImpF(Linha, 1,'VENDA TELE',[Expandido, Normal]); Inc(Linha,2); end;


    if (TblPreVendaCabDisplayNumero.Value > 0) and (TblPreVendaCabTipoVenda.Value = 'C') then
      begin
        rdp.ImpF(Linha, 1,'Display.: ' + TblPreVendaCabDisplayNumero.AsString,[Expandido, Normal]);
        Inc(Linha,2);
      end;

    if TblPreVendaCabTipoVenda.Value = 'Tele' then
      begin
        rdp.Imp(Linha, 1,'Controle: ' + IntToStr(TblPreVendaCabSequencial.Value)); Inc(Linha,2);
      end
    else
      begin
        rdp.Imp(Linha, 1,'Controle: '  + TblPreVendaCabTicketNumero.Value); Inc(Linha,1);
      end;

    rdp.Imp(Linha, 1,'Data: '  + FormatDateTime('dd/mm/yy hh:nn:ss',now)); Inc(Linha);

    if TblPreVendaCabTipoVenda.Value = 'Tele' then
      begin
        if TblPreVendaCabMotoboy.Value <> '' then
          begin rdp.ImpF(Linha, 1,'Motoboy: ' + TblPreVendaCabMotoboy.AsString,[Expandido, Normal]); Inc(Linha); end;

        rdp.ImpF(Linha, 1,'Cliente: '   + TblPreVendaCabNomeClienteVenda.AsString,[Expandido, Normal]); Inc(Linha);
        if TblPreVendaCabEnderecoClienteVenda.AsString <> '' then
          begin
            if length(TblPreVendaCabEnderecoClienteVenda.AsString) > 20 then
              begin
                rdp.ImpF(Linha, 1,copy(TblPreVendaCabEnderecoClienteVenda.AsString,1,20),[Expandido, Normal]); Inc(Linha);
                rdp.ImpF(Linha, 1,copy(TblPreVendaCabEnderecoClienteVenda.AsString,21,40),[Expandido, Normal]); Inc(Linha);
              end
            else
              begin
                rdp.ImpF(Linha, 1,TblPreVendaCabEnderecoClienteVenda.AsString,[Expandido, Normal]); Inc(Linha);
              end;
          end;
        if TblPreVendaCabBairroClienteVenda.AsString <> '' then
          begin rdp.ImpF(Linha, 1,TblPreVendaCabBairroClienteVenda.AsString,[Expandido, Normal]); Inc(Linha);  end;
        if TblPreVendaCabCidadeClienteVenda.AsString <> '' then
          begin rdp.ImpF(Linha, 1,TblPreVendaCabCidadeClienteVenda.AsString,[Expandido, Normal]); Inc(Linha); end;
        if TblPreVendaCabFoneClienteVenda.AsString <> '' then
          begin rdp.ImpF(Linha, 1,TblPreVendaCabFoneClienteVenda.AsString,[Expandido, Normal]); Inc(Linha); end;
        if TblPreVendaCabOBSImpressaoCupom.AsString <> '' then
          begin rdp.ImpF(Linha, 1,TblPreVendaCabOBSImpressaoCupom.AsString,[Expandido, Normal]); Inc(Linha); end;
      end;
    rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha,1);
    rdp.Imp(Linha,1,'Qtd Descricao                                 '); Inc(Linha);
    rdp.Imp(Linha,1,'                           Vlr.Unit  Vlr.Total'); Inc(Linha);
    rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha,1);
    If not TblPreVendaItem.Active then TblPreVendaItem.Open;
    TblPreVendaItem.First;
    While not TblPreVendaItem.eof Do
      Begin
        rdp.ImpF(Linha, 1,FormatFloat('##00',TblPreVendaItemQuantidade.Value)+' '+copy(TblPreVendaItemDescricao.AsString,1,30),[Expandido, Normal]);  Inc(Linha);
        if TblPreVendaItemComplemento.Value <> '' then
          begin
            if length(TblPreVendaItemComplemento.AsString) > 20 then
              begin
                rdp.ImpF(Linha, 2,copy(TblPreVendaItemComplemento.AsString,1,20),[Expandido, Normal]); Inc(Linha);
                rdp.ImpF(Linha, 2,copy(TblPreVendaItemComplemento.AsString,21,40),[Expandido, Normal]); Inc(Linha);
              end
            else
              begin
                rdp.ImpF(Linha, 2,copy(TblPreVendaItemComplemento.AsString,1,34),[Expandido, Normal]);  Inc(Linha);
              end;  
          end;
        rdp.ImpVal(Linha,30,'##0.00',TblPreVendaItemValorUnitario.Value,[]);
        rdp.ImpVal(Linha,41,'##0.00',TblPreVendaItemValorTotal.Value,[]); Inc(Linha);
        TblPreVendaItem.Next;
      End;
    // Final Venda
    rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha,1);
    rdp.ImpF(Linha,15,'ITENS R$ '+FormatFloat('##0.00',TblPreVendaCabTotalNominal.Value+TblPreVendaCabDesconto.Value+TotDesc),[Expandido, Normal]);Inc(Linha,1);
    rdp.ImpF(Linha,15,'TELE  R$ '+FormatFloat('##0.00',TblPreVendaCabTaxaTele.Value),[Expandido, Normal]);Inc(Linha,1);
    rdp.Imp(Linha,15,'------------------------------'); Inc(Linha,1);
    rdp.ImpF(Linha,15,'TOTAL R$ '+FormatFloat('##0.00',TblPreVendaCabTotalGeral.Value),[Expandido, Normal]);Inc(Linha,1);
    TblPedidoFinanceiro.First;
    While not TblPedidoFinanceiro.eof Do
      Begin
        if TblPreVendaCabTipoVenda.Value = 'Tele' then
          rdp.ImpF(Linha,15,TblPedidoFinanceiroNumerario.Value+' '+FormatFloat('##0.00',TblPedidoFinanceiroValor.Value),[Expandido, Normal])
        else
          begin
            if TblPedidoFinanceiro.RecordCount = 1 then
              rdp.ImpF(Linha,15,TblPedidoFinanceiroNumerario.Value+' '+FormatFloat('##0.00',TblPedidoFinanceiroValor.Value+TblPreVendaCabTroco.Value),[Expandido, Normal])
            else
              rdp.ImpF(Linha,15,TblPedidoFinanceiroNumerario.Value+' '+FormatFloat('##0.00',TblPedidoFinanceiroValor.Value),[Expandido, Normal]);
          end;
        Inc(Linha,1);
        TblPedidoFinanceiro.Next;
      End;
    rdp.Imp(Linha,15,'------------------------------'); Inc(Linha,1);
    rdp.ImpF(Linha,15,'TROCO R$ '+FormatFloat('##0.00',TblPreVendaCabTroco.Value),[Expandido, Normal]); Inc(Linha,1);

    if TblPreVendaCabLevarCasa.Value = 'S' then
      begin
        Inc(Linha);
        rdp.ImpF(Linha, 1,' LEVAR PARA CASA',[Expandido, Normal]); Inc(Linha,2);
      end;

    rdp.Imp(Linha, 1,'----------------------------------------------'); Inc(Linha);
    rdp.Imp(Linha, 1,'           WWWW.CONCEITOSSISTEMAS.COM         '); Inc(Linha,2);
    rdp.Imp(Linha, 1,'.');

    rdp.TamanhoQteLinhas := Linha+5;
    rdp.Fechar;

    TblPreVendacab.Close;
    TblPreVendaItem.Close;
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
