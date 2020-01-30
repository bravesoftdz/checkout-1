unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, ComCtrls, RDprint, Inifiles, StdCtrls ;

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
    TblPreVendaItemTroca: TStringField;
    TblPreVendaItemComplemento: TStringField;
    TblPedidoFinanceiroNumerario: TStringField;
    TblPreVendaCabTicketNumero: TStringField;
    TblPreVendaCabVendedor: TStringField;
    TblPreVendaCabPlano: TStringField;
    TblPreVendaCabCliente: TStringField;
    TblPreVendaCabTotalNominal: TFloatField;
    TblPreVendaCabTaxaCrediario: TFloatField;
    TblPreVendaCabAcrescimo: TFloatField;
    TblPreVendaCabDesconto: TFloatField;
    TblPreVendaCabTotalGeral: TFloatField;
    TblPreVendaCabNroCreditCard: TStringField;
    TblPreVendaCabNumerarioPagto: TStringField;
    TblPreVendaCabMensagem: TStringField;
    TblPreVendaCabTipoVenda: TStringField;
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
    TblPreVendaCabPlacaVeiculo: TStringField;
    TblPreVendaCabTroco: TFloatField;
    TblPreVendaCabDisplayNumero: TIntegerField;
    TblPreVendaCabMesaCodigo: TIntegerField;
    TblPreVendaCabContaCodigo: TIntegerField;
    TblPreVendaCabLevarCasa: TStringField;
    TblPreVendaCabBairroClienteVenda: TStringField;
    TblPreVendaCabBusca: TStringField;
    TblPreVendaCabMotoboy: TStringField;
    TblPreVendaCabTaxaTele: TFloatField;
    TblPreVendaCabSequencial: TIntegerField;
    TblPreVendaItemBORDA01: TStringField;
    TblPreVendaItemBORDA02: TStringField;
    TblPreVendaItemBORDA03: TStringField;
    TblPreVendaItemSABOR01: TStringField;
    TblPreVendaItemSABOR02: TStringField;
    TblPreVendaItemSABOR03: TStringField;
    TblPreVendaItemSABOR04: TStringField;
    TblPreVendaItemSABOR05: TStringField;
    TblPreVendaItemSABOR06: TStringField;
    TblPreVendaCabDataEmissao: TStringField;
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
var Linha : integer;
var CodCliente, NroReduzido, ImpCaixa, MostraDisplay, Cartao, nVias : String;
var TotDesc, TotConfissao : Double;
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

    IniFile             := TIniFile.Create('C:\Easy2Solutions\Gestao\Parceiro.ini');
    MostraDisplay       := IniFile.ReadString('IB_Software','GravarDisplaySequencial','');
    ImpCaixa            := IniFile.ReadString('Restaurante','ImpCaixa','');
    nVias               := IniFile.ReadString('IB_SOFTWARE','NroViasImpVenda','');
    IniFile.Free;

    rdp.PortaComunicacao := '';
    if ImpCaixa <> '' then
      rdp.SetPrinterbyName(ImpCaixa);

    rdp.Abrir;
    Linha := 1;
    rdp.ImpF(Linha,1,'PIZZARIA MANGGIARE',[Expandido, Normal]); Inc(Linha,2);

    {Testa se tem algum numerario Cartao}
    Cartao := '';
    TblPedidoFinanceiro.First;
    While not TblPedidoFinanceiro.eof Do
      Begin
        if TblPedidoFinanceiroNumerario.Value <> 'DINHEIRO' then
          Cartao := TblPedidoFinanceiroNumerario.Value;
        TblPedidoFinanceiro.Next;
      End;

    // Tipo de Venda
    if TblPreVendaCabTipoVenda.Value = 'C' then
      begin rdp.ImpF(Linha, 1,'VENDA BALCAO',[Expandido, Normal]); Inc(Linha,2); end;

    if TblPreVendaCabTipoVenda.Value = 'TELE' then
      begin
        if cartao = '' then
          rdp.ImpF(Linha, 1,'VENDA TELE',[Expandido, Normal])
        else
          rdp.ImpF(Linha, 1,'VENDA TELE - ' + Cartao,[Expandido, Normal]);
        Inc(Linha,2);
      end;

    if TblPreVendaCabDisplayNumero.Value > 0 then
      begin
        rdp.ImpF(Linha, 1,'Display.: ' + TblPreVendaCabDisplayNumero.AsString,[Expandido, Normal]);
        Inc(Linha,2);
      end;

    if TblPreVendaCabLevarCasa.Value = 'S' then
      begin
        rdp.ImpF(Linha, 1,' LEVAR PARA CASA',[Expandido, Normal]);
        Inc(Linha,2);
      end;
    if TblPreVendaCabBusca.Value = 'S' then
      begin
        Inc(Linha);
        rdp.ImpF(Linha, 1,'  VEM BUSCAR',[Expandido, Normal]); Inc(Linha,2);
      end;

    if TblPreVendaCabTipoVenda.Value = 'TELE' then
      begin
        NroReduzido := copy(TblPreVendaCabTicketNumero.AsString,9,12);
        rdp.ImpF(Linha, 1,'Tele Nro.: '  + NroReduzido, [Expandido, Normal]); Inc(Linha);
        if TblPreVendaCabMotoboy.Value <> '' then
          rdp.Imp(Linha, 1,'Motoboy...: ' + TblPreVendaCabMotoboy.AsString); Inc(Linha);
      end;

    if (TblPreVendaCabTipoVenda.Value = 'MESA') or (TblPreVendaCabTipoVenda.Value = 'Mesa') then
      begin
        rdp.Imp(Linha, 1,'Mesa Nro....: ' + TblPreVendaCabMesaCodigo.AsString); Inc(Linha);
      end;

    rdp.ImpF(Linha,1,'Cliente ..: ' + TblPreVendaCabNomeClienteVenda.AsString, [Expandido, Normal]); Inc(Linha);

    if TblPreVendaCabTipoVenda.Value = 'TELE' then
      begin
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
    rdp.Imp(Linha, 1,'Data...: '  + FormatDateTime('dd/mm/yy hh:nn:ss',now)); Inc(Linha);
    rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha);
    rdp.Imp(Linha,1,'Quant Descricao            Vlr.Unit  Vlr.Total'); Inc(Linha);
    rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha);
    If not TblPreVendaItem.Active then TblPreVendaItem.Open;
    TblPreVendaItem.First;
    while not TblPreVendaItem.eof Do
      begin
        rdp.ImpVal(Linha,1,'##00',TblPreVendaItemQuantidade.Value,[Expandido, Normal]);
        rdp.ImpF(Linha, 3,copy(TblPreVendaItemDescricao.AsString,1,24),[Expandido, Normal]);  Inc(Linha);
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
        if TblPreVendaItemBORDA01.Value <> '' then
          begin
            rdp.ImpF(Linha, 7,'BORDAS:',[Expandido, Normal]);  Inc(Linha);
            if TblPreVendaItemBORDA01.Value <> '' then
              begin rdp.ImpF(Linha,10,TblPreVendaItemBORDA01.Value,[Expandido, Normal]);  Inc(Linha); end;
            if TblPreVendaItemBORDA02.Value <> '' then
              begin rdp.ImpF(Linha,10,TblPreVendaItemBORDA02.Value,[Expandido, Normal]);  Inc(Linha); end;
            if TblPreVendaItemBORDA03.Value <> '' then
              begin rdp.ImpF(Linha,10,TblPreVendaItemBORDA03.Value,[Expandido, Normal]);  Inc(Linha); end;
          end;
        if TblPreVendaItemSABOR01.Value <> '' then
          begin
            rdp.ImpF(Linha, 7,'SABORES:',[Expandido, Normal]);  Inc(Linha);
            if TblPreVendaItemSABOR01.Value <> '' then
              begin rdp.ImpF(Linha,10,TblPreVendaItemSABOR01.Value,[Expandido, Normal]);  Inc(Linha); end;
            if TblPreVendaItemSABOR02.Value <> '' then
              begin rdp.ImpF(Linha,10,TblPreVendaItemSABOR02.Value,[Expandido, Normal]);  Inc(Linha); end;
            if TblPreVendaItemSABOR03.Value <> '' then
              begin rdp.ImpF(Linha,10,TblPreVendaItemSABOR03.Value,[Expandido, Normal]);  Inc(Linha); end;
            if TblPreVendaItemSABOR04.Value <> '' then
              begin rdp.ImpF(Linha,10,TblPreVendaItemSABOR04.Value,[Expandido, Normal]);  Inc(Linha); end;
            if TblPreVendaItemSABOR05.Value <> '' then
              begin rdp.ImpF(Linha,10,TblPreVendaItemSABOR05.Value,[Expandido, Normal]);  Inc(Linha); end;
            if TblPreVendaItemSABOR06.Value <> '' then
              begin rdp.ImpF(Linha,10,TblPreVendaItemSABOR06.Value,[Expandido, Normal]);  Inc(Linha); end;
          end;
        rdp.ImpVal(Linha,30,'##0.00',TblPreVendaItemValorUnitario.Value,[]);
        rdp.ImpVal(Linha,41,'##0.00',TblPreVendaItemValorTotal.Value,[]); Inc(Linha);
        TblPreVendaItem.Next;
      end;
    // Final Venda
    rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha,1);
    rdp.Imp(Linha,25,'ITENS R$');
    rdp.ImpVal(Linha,41,'##0.00',TblPreVendaCabTotalGeral.Value+TblPreVendaCabDesconto.Value+TotDesc-TblPreVendaCabTaxaTele.Value,[]);    Inc(Linha);
    rdp.Imp(Linha,25,'TELE R$');
    rdp.ImpVal(Linha,41,'##0.00',TblPreVendaCabTaxaTele.Value,[]);  Inc(Linha);
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
    rdp.ImpVal(Linha,41,'##0.00',TblPreVendaCabTroco.Value,[]);  Inc(Linha,5);

    rdp.Imp(Linha,1,'.');
    rdp.TamanhoQteLinhas := Linha;
    rdp.Fechar;

    if FileExists('Picote.exe') then
      WinExec(Pchar('Picote.exe'),SW_HIDE);

    if (nVias = '2') then
      begin
        rdp.Abrir;
        Linha := 1;
        rdp.ImpF(Linha,1,'PIZZARIA MANGGIARE',[Expandido, Normal]); Inc(Linha,2);

        {Testa se tem algum numerario Cartao}
        Cartao := '';
        TblPedidoFinanceiro.First;
        While not TblPedidoFinanceiro.eof Do
          Begin
            if TblPedidoFinanceiroNumerario.Value <> 'DINHEIRO' then
              Cartao := TblPedidoFinanceiroNumerario.Value;
            TblPedidoFinanceiro.Next;
          End;

        // Tipo de Venda
        if TblPreVendaCabTipoVenda.Value = 'C' then
          begin rdp.ImpF(Linha, 1,'VENDA BALCAO',[Expandido, Normal]); Inc(Linha,2); end;

        if TblPreVendaCabTipoVenda.Value = 'TELE' then
          begin
            if cartao = '' then
              rdp.ImpF(Linha, 1,'VENDA TELE',[Expandido, Normal])
            else
              rdp.ImpF(Linha, 1,'VENDA TELE - ' + Cartao,[Expandido, Normal]);
            Inc(Linha,2);
          end;

        if TblPreVendaCabDisplayNumero.Value > 0 then
          begin
            rdp.ImpF(Linha, 1,'Display.: ' + TblPreVendaCabDisplayNumero.AsString,[Expandido, Normal]);
            Inc(Linha,2);
          end;

        if TblPreVendaCabLevarCasa.Value = 'S' then
          begin
            rdp.ImpF(Linha, 1,' LEVAR PARA CASA',[Expandido, Normal]);
            Inc(Linha,2);
          end;
        if TblPreVendaCabBusca.Value = 'S' then
          begin
            Inc(Linha);
            rdp.ImpF(Linha, 1,'  VEM BUSCAR',[Expandido, Normal]); Inc(Linha,2);
          end;

        if TblPreVendaCabTipoVenda.Value = 'TELE' then
          begin
            NroReduzido := copy(TblPreVendaCabTicketNumero.AsString,9,12);
            rdp.ImpF(Linha, 1,'Tele Nro.: '  + NroReduzido, [Expandido, Normal]); Inc(Linha);
            if TblPreVendaCabMotoboy.Value <> '' then
              rdp.Imp(Linha, 1,'Motoboy...: ' + TblPreVendaCabMotoboy.AsString); Inc(Linha);
          end;

        if (TblPreVendaCabTipoVenda.Value = 'MESA') or (TblPreVendaCabTipoVenda.Value = 'Mesa') then
          begin
            rdp.Imp(Linha, 1,'Mesa Nro....: ' + TblPreVendaCabMesaCodigo.AsString); Inc(Linha);
          end;

        rdp.ImpF(Linha,1,'Cliente ..: ' + TblPreVendaCabNomeClienteVenda.AsString, [Expandido, Normal]); Inc(Linha);

        if TblPreVendaCabTipoVenda.Value = 'TELE' then
          begin
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
        rdp.Imp(Linha, 1,'Data...: '  + FormatDateTime('dd/mm/yy hh:nn:ss',now)); Inc(Linha);
        rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha);
        rdp.Imp(Linha,1,'Quant Descricao            Vlr.Unit  Vlr.Total'); Inc(Linha);
        rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha);
        If not TblPreVendaItem.Active then TblPreVendaItem.Open;
        TblPreVendaItem.First;
        While not TblPreVendaItem.eof Do
          Begin
            rdp.ImpVal(Linha,1,'##00',TblPreVendaItemQuantidade.Value,[Expandido, Normal]);
            rdp.ImpF(Linha, 3,copy(TblPreVendaItemDescricao.AsString,1,24),[Expandido, Normal]);  Inc(Linha);
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
            if TblPreVendaItemBORDA01.Value <> '' then
              begin
                rdp.ImpF(Linha, 7,'BORDAS:',[Expandido, Normal]);  Inc(Linha);
                if TblPreVendaItemBORDA01.Value <> '' then
                  begin rdp.ImpF(Linha,10,TblPreVendaItemBORDA01.Value,[Expandido, Normal]);  Inc(Linha); end;
                if TblPreVendaItemBORDA02.Value <> '' then
                  begin rdp.ImpF(Linha,10,TblPreVendaItemBORDA02.Value,[Expandido, Normal]);  Inc(Linha); end;
                if TblPreVendaItemBORDA03.Value <> '' then
                  begin rdp.ImpF(Linha,10,TblPreVendaItemBORDA03.Value,[Expandido, Normal]);  Inc(Linha); end;
              end;
            if TblPreVendaItemSABOR01.Value <> '' then
              begin
                rdp.ImpF(Linha, 7,'SABORES:',[Expandido, Normal]);  Inc(Linha);
                if TblPreVendaItemSABOR01.Value <> '' then
                  begin rdp.ImpF(Linha,10,TblPreVendaItemSABOR01.Value,[Expandido, Normal]);  Inc(Linha); end;
                if TblPreVendaItemSABOR02.Value <> '' then
                  begin rdp.ImpF(Linha,10,TblPreVendaItemSABOR02.Value,[Expandido, Normal]);  Inc(Linha); end;
                if TblPreVendaItemSABOR03.Value <> '' then
                  begin rdp.ImpF(Linha,10,TblPreVendaItemSABOR03.Value,[Expandido, Normal]);  Inc(Linha); end;
                if TblPreVendaItemSABOR04.Value <> '' then
                  begin rdp.ImpF(Linha,10,TblPreVendaItemSABOR04.Value,[Expandido, Normal]);  Inc(Linha); end;
                if TblPreVendaItemSABOR05.Value <> '' then
                  begin rdp.ImpF(Linha,10,TblPreVendaItemSABOR05.Value,[Expandido, Normal]);  Inc(Linha); end;
                if TblPreVendaItemSABOR06.Value <> '' then
                  begin rdp.ImpF(Linha,10,TblPreVendaItemSABOR06.Value,[Expandido, Normal]);  Inc(Linha); end;
              end;
            rdp.ImpVal(Linha,30,'##0.00',TblPreVendaItemValorUnitario.Value,[]);
            rdp.ImpVal(Linha,41,'##0.00',TblPreVendaItemValorTotal.Value,[]); Inc(Linha);
            TblPreVendaItem.Next;
          End;
        // Final Venda
        rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha,1);
        rdp.Imp(Linha,25,'ITENS R$');
        rdp.ImpVal(Linha,41,'##0.00',TblPreVendaCabTotalGeral.Value+TblPreVendaCabDesconto.Value+TotDesc-TblPreVendaCabTaxaTele.Value,[]);  Inc(Linha);
        rdp.Imp(Linha,25,'TELE R$');
        rdp.ImpVal(Linha,41,'##0.00',TblPreVendaCabTaxaTele.Value,[]);    Inc(Linha);
        rdp.Imp(Linha,25,'TOTAL R$');
        rdp.ImpVal(Linha,41,'##0.00',TblPreVendaCabTotalGeral.Value+TblPreVendaCabDesconto.Value+TotDesc,[]);  Inc(Linha);
        TblPedidoFinanceiro.First;
        While not TblPedidoFinanceiro.eof Do
          Begin
            rdp.Imp(Linha,25,TblPedidoFinanceiroNumerario.Value);
            rdp.ImpVal(Linha,41,'##0.00',TblPedidoFinanceiroValor.Value,[]);  Inc(Linha);
            TblPedidoFinanceiro.Next;
          End;
        rdp.Imp(Linha,25,'TROCO R$');
        rdp.ImpVal(Linha,41,'##0.00',TblPreVendaCabTroco.Value,[]);  Inc(Linha,5);

        rdp.Imp(Linha,1,'.');
        rdp.TamanhoQteLinhas := Linha;
        rdp.Fechar;

        if FileExists('Picote.exe') then
          WinExec(Pchar('Picote.exe'),SW_HIDE);
      end;

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
