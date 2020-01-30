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
    TblPreVendaCabSequencial: TIntegerField;
    TblPreVendaCabDataEmissao: TStringField;
    TblPreVendaCabBusca: TStringField;
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

{$R *.dfm}

procedure TFormPrincipal.FormCreate(Sender: TObject);
var Inifile: TInifile;
var CodCliente, ImpCaixa, ImpressoraCozinha, nVias, EmpresaNome, Saltar : String;
var Linha, vCol : integer;
var TotDesc : Double;
var ImpCozinha, ImpVale : boolean;
begin
  try
    TblPreVendacab.Open;
    TblPreVendaItem.Open;
    TblPedidoFinanceiro.Open;
    TblPreVendaItem.First;
    TotDesc := 0;
    While Not TblPreVendaItem.Eof Do
      Begin
        TotDesc := TotDesc + TblPreVendaItemDesconto.Value;
        TblPreVendaItem.Next;
      End;

    IniFile           := TIniFile.Create('C:\Easy2Solutions\Gestao\Parceiro.INI');
    nVias             := IniFile.ReadString('IB_SOFTWARE','NroViasImpVenda','1');
    EmpresaNome       := IniFile.ReadString('IB_SOFTWARE','EmpresaNome','');
    ImpCaixa          := IniFile.ReadString('Restaurante','ImpCaixa','');
    Saltar            := IniFile.ReadString('IB_SOFTWARE','Saltar','5');
    IniFile.Free;

    rdp.PortaComunicacao := '';
    rdp.SetPrinterbyName(ImpCaixa);
    rdp.NumerodeCopias := strtoint(nVias);

    rdp.TamanhoQteLinhas      := 1;      // Linhas (deve ser 1 quando for CUPOM)
    rdp.OpcoesPreview.Preview := false;

    rdp.Abrir;
    Linha := 1;
    rdp.Imp(Linha,1,EmpresaNome); Inc(Linha,2);
    // Tipo de Venda
    if TblPreVendaCabTipoVenda.Value = 'C' then
      begin rdp.Imp(Linha, 1,'VENDA BALCAO'); Inc(Linha,2); end;
    if TblPreVendaCabTipoVenda.Value = 'Tele' then
      begin rdp.Imp(Linha, 1,'VENDA TELE'); Inc(Linha,2); end;


    if TblPreVendaCabDisplayNumero.Value > 0 then
      begin
        rdp.Imp(Linha, 1,'Display.: ' + TblPreVendaCabDisplayNumero.AsString);
        Inc(Linha,2);
      end
    else
      begin
        rdp.Imp(Linha, 1,'Controle: ' + IntToStr(TblPreVendaCabSequencial.Value)); Inc(Linha);
      end;

    if TblPreVendaCabMesaCodigo.Value > 0 then
      begin
        rdp.Imp(Linha, 1,'Mesa..: ' + TblPreVendaCabMesaCodigo.AsString);  Inc(Linha);
        if TblPreVendaCabContaCodigo.Value > 0 then
          begin
           { rdp.Imp(Linha, 1,'Conta.: ' + TblPreVendaCabContaCodigo.AsString);
            Inc(Linha); }
          end;
      end;

    rdp.Imp(Linha, 1,'Data: '  + FormatDateTime('dd/mm/yy hh:nn:ss',now)); Inc(Linha);

    if TblPreVendaCabTipoVenda.Value = 'Tele' then
      begin
        if TblPreVendaCabMotoboy.Value <> '' then
          begin rdp.Imp(Linha, 1,'Motoboy: ' + TblPreVendaCabMotoboy.AsString); Inc(Linha); end;

        rdp.Imp(Linha, 1,'Cliente: '   + TblPreVendaCabNomeClienteVenda.AsString); Inc(Linha);
        if TblPreVendaCabEnderecoClienteVenda.AsString <> '' then
          begin rdp.Imp(Linha, 1,TblPreVendaCabEnderecoClienteVenda.AsString); Inc(Linha);  end;
        if TblPreVendaCabBairroClienteVenda.AsString <> '' then
          begin rdp.Imp(Linha, 1,TblPreVendaCabBairroClienteVenda.AsString); Inc(Linha);  end;
        if TblPreVendaCabCidadeClienteVenda.AsString <> '' then
          begin rdp.Imp(Linha, 1,TblPreVendaCabCidadeClienteVenda.AsString); Inc(Linha); end;
        if TblPreVendaCabFoneClienteVenda.AsString <> '' then
          begin rdp.Imp(Linha, 1,TblPreVendaCabFoneClienteVenda.AsString); Inc(Linha); end;
        if TblPreVendaCabOBSImpressaoCupom.AsString <> '' then
          begin rdp.Imp(Linha, 1,TblPreVendaCabOBSImpressaoCupom.AsString); Inc(Linha); end;
      end;
    rdp.Imp(Linha,1,'------------------------------'); Inc(Linha,1);
    rdp.Imp(Linha,1,'Qtd Descricao                 '); Inc(Linha);
    rdp.Imp(Linha,1,'           Vlr.Unit  Vlr.Total'); Inc(Linha);
    rdp.Imp(Linha,1,'------------------------------'); Inc(Linha,1);
    If not TblPreVendaItem.Active then TblPreVendaItem.Open;
    TblPreVendaItem.First;
    While not TblPreVendaItem.eof Do
      Begin
        rdp.Imp(Linha, 1,FormatFloat('##00',TblPreVendaItemQuantidade.Value)+' '+copy(TblPreVendaItemDescricao.AsString,1,25));  Inc(Linha);
        if TblPreVendaItemComplemento.Value <> '' then
          begin
            rdp.Imp(Linha, 2,copy(TblPreVendaItemComplemento.AsString,1,30));  Inc(Linha);
          end;
        rdp.ImpVal(Linha,14,'##0.00',TblPreVendaItemValorUnitario.Value,[]);
        rdp.ImpVal(Linha,24,'##0.00',TblPreVendaItemValorTotal.Value,[]); Inc(Linha);
        TblPreVendaItem.Next;
      End;
    // Final Venda
    rdp.Imp(Linha,1,'------------------------------'); Inc(Linha,1);
    rdp.Imp(Linha,11,'ITENS R$ '+FormatFloat('##0.00',TblPreVendaCabTotalNominal.Value+TblPreVendaCabDesconto.Value+TotDesc));Inc(Linha,1);
    rdp.Imp(Linha,11,'TELE  R$ '+FormatFloat('##0.00',TblPreVendaCabTaxaTele.Value));Inc(Linha,1);
    rdp.Imp(Linha,11,'TOTAL R$ '+FormatFloat('##0.00',TblPreVendaCabTotalGeral.Value));Inc(Linha,1);
    TblPedidoFinanceiro.First;
    While not TblPedidoFinanceiro.eof Do
      Begin
        if TblPreVendaCabTipoVenda.Value = 'Tele' then
          rdp.Imp(Linha,11,TblPedidoFinanceiroNumerario.Value+' '+FormatFloat('##0.00',TblPedidoFinanceiroValor.Value))
        else
          begin
            rdp.Imp(Linha,11,TblPedidoFinanceiroNumerario.Value+' '+FormatFloat('##0.00',TblPedidoFinanceiroValor.Value));
          end;
        Inc(Linha,1);
        TblPedidoFinanceiro.Next;
      End;
    rdp.Imp(Linha,11,'TROCO R$ '+FormatFloat('##0.00',TblPreVendaCabTroco.Value)); Inc(Linha,1);

    if TblPreVendaCabLevarCasa.Value = 'S' then
      begin
        Inc(Linha);
        rdp.Imp(Linha, 1,' LEVAR PARA CASA'); Inc(Linha,2);
      end;

    {Finalizar, Saltar Papel}
    Linha:=Linha+8;
    rdp.Imp(Linha, 1,'.');
    rdp.TamanhoQteLinhas := 1;
    rdp.Fechar;

 {   rdp.gerarTXT('c:\unit\CupomFechamento.txt');
    rdp.Abortar;
    if FileExists('c:\Unit\CupomFechamento.txt') then
      WinExec( Pchar('notepad.exe /pt "c:\Unit\CupomFechamento.txt" '+'"'+ImpCaixa+'"'), SW_MINIMIZE); }

    TblPreVendacab.Close;
    TblPreVendaItem.Close;
    TblPedidoFinanceiro.Close;
    Application.Terminate;
  except
    TblPreVendacab.Close;
    TblPreVendaItem.Close;
    TblPedidoFinanceiro.Close;
    Application.Terminate;
  end;
end;

procedure TFormPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree ;
end;

end.
