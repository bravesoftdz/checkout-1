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
    rdp: TRDprint;
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
var EmpresaNome, CodCliente, ImpCaixa, nVias, NroReduzido : String;
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
    EmpresaNome       := IniFile.ReadString('IB_SOFTWARE','EmpresaNome','');
    nVias             := IniFile.ReadString('IB_SOFTWARE','NroViasImpVenda','');
    ImpCaixa          := IniFile.ReadString('Restaurante','ImpCaixa','');
    IniFile.Free;

    rdp.PortaComunicacao := '';
    if ImpCaixa <> '' then
      rdp.SetPrinterbyName(ImpCaixa);
    rdp.NumerodeCopias := strToInt(nVias);

    rdp.Abrir;
    Linha := 1;
    rdp.ImpF(Linha,1,EmpresaNome,[Expandido, Normal]); Inc(Linha,2);
    // Tipo de Venda
    if TblPreVendaCabTipoVenda.Value = 'C' then
      begin rdp.ImpF(Linha, 1,'VENDA BALCAO',[Expandido, Normal]); Inc(Linha,2); end;
    if TblPreVendaCabTipoVenda.Value = 'Tele' then
      begin rdp.ImpF(Linha, 1,'VENDA TELE',[Expandido, Normal]); Inc(Linha,2); end;

    if (TblPreVendaCabTipoVenda.Value = 'C') and (TblPreVendaCabDisplayNumero.Value > 0) then
      begin
        rdp.ImpF(Linha, 1,'Display.: ' + TblPreVendaCabDisplayNumero.AsString,[Expandido, Normal]);
        Inc(Linha,2);
      end;

    if TblPreVendaCabLevarCasa.Value = 'S' then
      begin
        rdp.ImpF(Linha, 1,'** LEVAR PARA CASA **',[Expandido, Normal]);
        Inc(Linha,2);
      end;

    if TblPreVendaCabTipoVenda.Value = 'Tele' then
      begin
        NroReduzido := copy(TblPreVendaCabTicketNumero.AsString,9,12);
        rdp.ImpF(Linha, 1,'Tele Nro.: '  + NroReduzido, [Expandido, Normal]);
        Inc(Linha,1);
      end;

    rdp.Imp(Linha, 1,'Data......: '  + FormatDateTime('dd/mm/yy hh:nn', now)); Inc(Linha);
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
    rdp.Imp(Linha,1,'Codigo Descricao                              '); Inc(Linha);
    rdp.Imp(Linha,1,'                     Quant Vlr.Unit  Vlr.Total'); Inc(Linha);
    rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha,1);
    If not TblPreVendaItem.Active then TblPreVendaItem.Open;
    TblPreVendaItem.First;
    While not TblPreVendaItem.eof Do
      Begin
        rdp.ImpF(Linha, 1,copy(TblPreVendaItemDescricao.AsString,1,24),[Expandido, Normal]);  Inc(Linha);
        if length(TblPreVendaItemDescricao.AsString) > 24 then
          begin
            rdp.ImpF(Linha, 1,copy(TblPreVendaItemDescricao.AsString,25,60),[Expandido, Normal]);
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
        rdp.ImpVal(Linha,22,'##0.000',TblPreVendaItemQuantidade.Value,[]);
        rdp.ImpVal(Linha,30,'##0.00',TblPreVendaItemValorUnitario.Value,[]);
        rdp.ImpVal(Linha,41,'##0.00',TblPreVendaItemValorTotal.Value,[]); Inc(Linha);
        TblPreVendaItem.Next;
      End;
    // Final Venda
    rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha,1);
    rdp.Imp(Linha,25,'ITENS R$');
    rdp.ImpVal(Linha,41,'##0.00',TblPreVendaCabTotalGeral.Value+TblPreVendaCabDesconto.Value+TotDesc-TblPreVendaCabTaxaTele.Value,[]);    Inc(Linha);
    rdp.Imp(Linha,25,'TELE R$');
    rdp.ImpVal(Linha,41,'##0.00',TblPreVendaCabTaxaTele.Value,[]);    Inc(Linha);
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
    Inc(Linha,4);
    rdp.Imp(Linha,1,'.');
    rdp.Fechar;

    TblPreVendacab.Close;
    TblPreVendaItem.Close;
    TblPedidoFinanceiro.close;

    if FileExists('C:\Unit\Gestao\Picote.exe') then
      WinExec(Pchar('Picote.exe'),sw_Show);

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
