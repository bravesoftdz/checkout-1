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
var CodCliente, ImpCaixa, ImpressoraCozinha, nVias, NroReduzido : String;
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

    IniFile           := TIniFile.Create('C:\Unit\Gestao\Parceiro.INI');
    nVias             := IniFile.ReadString('IB_SOFTWARE','NroViasImpVenda','');
    ImpCaixa          := IniFile.ReadString('Restaurante','ImpCaixa','');
    ImpressoraCozinha := IniFile.ReadString('Restaurante','ImpCozinha01','');
    IniFile.Free;

    rdp.PortaComunicacao := '';
    rdp.SetPrinterbyName(ImpCaixa);
    rdp.NumerodeCopias := strToInt(nVias);
    rdp.Abrir;
    Linha := 1;
    rdp.ImpF(Linha,1,' XIS SHOW DE BOLA',[Expandido, Normal]); Inc(Linha,2);
    // Tipo de Venda
    if TblPreVendaCabTipoVenda.Value = 'C' then
      begin rdp.ImpF(Linha, 1,'VENDA BALCAO',[Expandido, Normal]); Inc(Linha,2); end;
    if TblPreVendaCabTipoVenda.Value = 'Tele' then
      begin rdp.ImpF(Linha, 1,'VENDA TELE',[Expandido, Normal]); Inc(Linha,2); end;


    if TblPreVendaCabDisplayNumero.Value > 0 then
      begin
        rdp.ImpF(Linha, 1,'Display.: ' + TblPreVendaCabDisplayNumero.AsString,[Expandido, Normal]);
        Inc(Linha,2);
      end;

    if TblPreVendaCabTipoVenda.Value = 'Tele' then
      begin
        NroReduzido := copy(TblPreVendaCabTicketNumero.AsString,9,12);
        rdp.ImpF(Linha, 1,'Tele Nro.: '  + NroReduzido, [Expandido, Normal]);
        Inc(Linha,1);
      end;

    rdp.Imp(Linha, 1,'Data........: '  + FormatDateTime('dd/mm/yy hh:nn:ss',now)); Inc(Linha);
    if TblPreVendaCabTipoVenda.Value = 'Tele' then
      begin
        if TblPreVendaCabMotoboy.Value <> '' then
          rdp.Imp(Linha, 1,'Motoboy...: ' + TblPreVendaCabMotoboy.AsString); Inc(Linha);
        rdp.Imp(Linha, 1,'Cliente ..: '   + TblPreVendaCabNomeClienteVenda.AsString); Inc(Linha);
        if TblPreVendaCabEnderecoClienteVenda.AsString <> '' then
          begin rdp.Imp(Linha, 1,'  End.: '  + TblPreVendaCabEnderecoClienteVenda.AsString); Inc(Linha);  end;
        if TblPreVendaCabBairroClienteVenda.AsString <> '' then
          begin rdp.Imp(Linha, 1,'  Bai.: '  + TblPreVendaCabBairroClienteVenda.AsString); Inc(Linha);  end;
        if TblPreVendaCabCidadeClienteVenda.AsString <> '' then
          begin rdp.Imp(Linha, 1,'  Cid.: '  + TblPreVendaCabCidadeClienteVenda.AsString); Inc(Linha); end;
        if TblPreVendaCabFoneClienteVenda.AsString <> '' then
          begin rdp.Imp(Linha, 1,'  Fone: '  + TblPreVendaCabFoneClienteVenda.AsString); Inc(Linha); end;
        if TblPreVendaCabOBSImpressaoCupom.AsString <> '' then
          begin rdp.Imp(Linha, 1,'  Obs.: '  + TblPreVendaCabOBSImpressaoCupom.AsString); Inc(Linha); end;
      end;
    rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha,1);
    rdp.Imp(Linha,1,'Codigo Descricao                              '); Inc(Linha);
    rdp.Imp(Linha,1,'                     Quant Vlr.Unit  Vlr.Total'); Inc(Linha);
    rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha,1);
    If not TblPreVendaItem.Active then TblPreVendaItem.Open;
    TblPreVendaItem.First;
    While not TblPreVendaItem.eof Do
      Begin
        rdp.Imp(Linha, 1,FormatFloat('######000000',TblPreVendaItemCodigo.Value));
        rdp.Imp(Linha, 8,copy(TblPreVendaItemDescricao.AsString,1,39));  Inc(Linha);
        if TblPreVendaItemComplemento.Value <> '' then
          rdp.Imp(Linha, 8,copy(TblPreVendaItemComplemento.AsString,1,39));  Inc(Linha);
        rdp.ImpVal(Linha,22,'##0.000',TblPreVendaItemQuantidade.Value,[]);
        rdp.ImpVal(Linha,30,'##0.00',TblPreVendaItemValorUnitario.Value,[]);
        rdp.ImpVal(Linha,41,'##0.00',TblPreVendaItemValorTotal.Value,[]); Inc(Linha);
        TblPreVendaItem.Next;
      End;
    // Final Venda
    rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha,1);
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
    rdp.ImpVal(Linha,41,'##0.00',TblPreVendaCabTroco.Value,[]);  Inc(Linha);

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

    if TblPreVendaCabTipoVenda.Value = 'Tele' then
      begin
        rdp.PortaComunicacao := '';
        rdp.SetPrinterbyName(ImpressoraCozinha);
        rdp.NumerodeCopias := strToInt(nVias);
        rdp.Abrir;
        Linha := 1;
        rdp.ImpF(Linha,1,' XIS SHOW DE BOLA',[Expandido, Normal]); Inc(Linha,2);
        // Tipo de Venda
        if TblPreVendaCabTipoVenda.Value = 'C' then
          begin rdp.ImpF(Linha, 1,'VENDA BALCAO',[Expandido, Normal]); Inc(Linha,2); end;
        if TblPreVendaCabTipoVenda.Value = 'Tele' then
          begin rdp.ImpF(Linha, 1,'VENDA TELE',[Expandido, Normal]); Inc(Linha,2); end;

        rdp.ImpF(Linha, 1,'Tele Nro.: '  + NroReduzido, [Expandido, Normal]); Inc(Linha,1);
        rdp.Imp(Linha, 1,'Data........: '  + FormatDateTime('dd/mm/yy hh:nn:ss',now)); Inc(Linha);
        if TblPreVendaCabMotoboy.Value <> '' then
          rdp.Imp(Linha, 1,'Motoboy...: ' + TblPreVendaCabMotoboy.AsString); Inc(Linha);
        rdp.Imp(Linha, 1,'Cliente ..: '   + TblPreVendaCabNomeClienteVenda.AsString); Inc(Linha);
        if TblPreVendaCabEnderecoClienteVenda.AsString <> '' then
          begin rdp.Imp(Linha, 1,'  End.: '  + TblPreVendaCabEnderecoClienteVenda.AsString); Inc(Linha); end;
        if TblPreVendaCabBairroClienteVenda.AsString <> '' then
          begin rdp.Imp(Linha, 1,'  Bai.: '  + TblPreVendaCabBairroClienteVenda.AsString); Inc(Linha); end;
        if TblPreVendaCabCidadeClienteVenda.AsString <> '' then
          begin rdp.Imp(Linha, 1,'  Cid.: '  + TblPreVendaCabCidadeClienteVenda.AsString); Inc(Linha); end;
        if TblPreVendaCabFoneClienteVenda.AsString <> '' then
          begin rdp.Imp(Linha, 1,'  Fone: '  + TblPreVendaCabFoneClienteVenda.AsString); Inc(Linha); end;
        if TblPreVendaCabOBSImpressaoCupom.AsString <> '' then
          begin rdp.Imp(Linha, 1,'  Obs.: '  + TblPreVendaCabOBSImpressaoCupom.AsString); Inc(Linha); end;

        rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha,1);
        rdp.Imp(Linha,1,'Descricao                                     '); Inc(Linha);
        rdp.Imp(Linha,1,'                     Quant Vlr.Unit  Vlr.Total'); Inc(Linha);
        rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha,1);
        If not TblPreVendaItem.Active then TblPreVendaItem.Open;
        TblPreVendaItem.First;
        While not TblPreVendaItem.eof Do
          Begin
            rdp.ImpF(Linha, 1,copy(TblPreVendaItemDescricao.AsString,1,39),[Expandido, Normal]);  Inc(Linha);
            if TblPreVendaItemComplemento.Value <> '' then
              rdp.ImpF(Linha, 4,copy(TblPreVendaItemComplemento.AsString,1,39),[Expandido, Normal]);  Inc(Linha);
            rdp.ImpVal(Linha,22,'##0.00',TblPreVendaItemQuantidade.Value,[]);
            rdp.ImpVal(Linha,30,'##0.00',TblPreVendaItemValorUnitario.Value,[]);
            rdp.ImpVal(Linha,41,'##0.00',TblPreVendaItemValorTotal.Value,[]); Inc(Linha);
            TblPreVendaItem.Next;
          End;
        // Final Venda
        rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha,1);
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
        rdp.ImpVal(Linha,41,'##0.00',TblPreVendaCabTroco.Value,[]);  Inc(Linha);

        if TblPreVendaCabLevarCasa.Value = 'S' then
          begin
            Inc(Linha);
            rdp.ImpF(Linha, 1,' LEVAR PARA CASA',[Expandido, Normal]); Inc(Linha,2);
          end;

        rdp.Imp(Linha, 1,'----------------------------------------------'); Inc(Linha);
        rdp.Imp(Linha, 1,'.');

        rdp.TamanhoQteLinhas := Linha+5;
        rdp.Fechar;
      end;

    TblPreVendacab.Close;
    TblPreVendaItem.Close;

    IF FileExists('GAVETA.EXE') THEN
      WinExec(Pchar('GAVETA.EXE'),sw_Show);

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
