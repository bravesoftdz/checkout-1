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
    rdp.ImpF(Linha,1,'PIZZARIA MIA MASSA',[Expandido, Normal]); Inc(Linha);
    rdp.Imp(Linha,1,'AV. OSORIO, 110'); Inc(Linha);
    rdp.Imp(Linha,1,'3627.2283'); Inc(Linha);
    rdp.Imp(Linha,1,'9365.2519'); Inc(Linha);
    rdp.Imp(Linha,1,'9803.5377'); Inc(Linha);

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

    rdp.ImpF(Linha,1,'Cliente ..: ' + TblPreVendaCabNomeClienteVenda.AsString, [Expandido, Normal]); Inc(Linha);

    if TblPreVendaCabTipoVenda.Value = 'TELE' then
      begin
        if TblPreVendaCabEnderecoClienteVenda.AsString <> '' then
          begin
            rdp.ImpF(Linha, 1,' End.: '  + copy(TblPreVendaCabEnderecoClienteVenda.AsString,1,15),[Expandido, Normal]);
            Inc(Linha);
            if length(TblPreVendaCabEnderecoClienteVenda.AsString) > 15 then
              begin
                rdp.ImpF(Linha, 1,'       '  + copy(TblPreVendaCabEnderecoClienteVenda.AsString,16,31),[Expandido, Normal]);
                Inc(Linha);
              end;
            if length(TblPreVendaCabEnderecoClienteVenda.AsString) > 31 then
              begin
                rdp.ImpF(Linha, 1,'       '  + copy(TblPreVendaCabEnderecoClienteVenda.AsString,32,47),[Expandido, Normal]);
                Inc(Linha);
              end;
            if length(TblPreVendaCabEnderecoClienteVenda.AsString) > 47 then
              begin
                rdp.ImpF(Linha, 1,'       '  + copy(TblPreVendaCabEnderecoClienteVenda.AsString,48,length(TblPreVendaCabEnderecoClienteVenda.AsString)),[Expandido, Normal]);
                Inc(Linha);
              end;
          end;
        if TblPreVendaCabBairroClienteVenda.AsString <> '' then
          begin rdp.ImpF(Linha, 1,' Bai.: '  + TblPreVendaCabBairroClienteVenda.AsString,[Expandido, Normal]); Inc(Linha);  end;
        if TblPreVendaCabCidadeClienteVenda.AsString <> '' then
          begin rdp.ImpF(Linha, 1,' Cid.: '  + TblPreVendaCabCidadeClienteVenda.AsString,[Expandido, Normal]); Inc(Linha); end;
        if TblPreVendaCabFoneClienteVenda.AsString <> '' then
          begin rdp.ImpF(Linha, 1,' Fone: '  + TblPreVendaCabFoneClienteVenda.AsString,[Expandido, Normal]); Inc(Linha); end;
        if TblPreVendaCabOBSImpressaoCupom.AsString <> '' then
          begin rdp.ImpF(Linha, 1,' Obs.: '  + TblPreVendaCabOBSImpressaoCupom.AsString,[Expandido, Normal]); Inc(Linha); end;
      end;
    rdp.Imp(Linha, 1,'Data...: '  + FormatDateTime('dd/mm/yy hh:nn:ss',now)); Inc(Linha);
    rdp.Imp(Linha,1,'---------------------------------------'); Inc(Linha);
    rdp.Imp(Linha,1,'Quant Descricao               Vlr.Total'); Inc(Linha);
    rdp.Imp(Linha,1,'---------------------------------------'); Inc(Linha);
    If not TblPreVendaItem.Active then TblPreVendaItem.Open;
    TblPreVendaItem.First;
    While not TblPreVendaItem.eof Do
      Begin
        rdp.Imp(Linha,1,FormatFloat('##00',TblPreVendaItemQuantidade.Value));
        rdp.Imp(Linha,7,TblPreVendaItemDescricao.AsString);
        rdp.ImpVal(Linha,30,'##0.00',TblPreVendaItemValorTotal.Value,[]); Inc(Linha);

        if TblPreVendaItemComplemento.Value <> '' then
          rdp.Imp(Linha,3,TblPreVendaItemComplemento.AsString);  Inc(Linha);

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
        TblPreVendaItem.Next;
      End;
    // Final Venda
    rdp.Imp(Linha,1,'---------------------------------------'); Inc(Linha,1);
    rdp.Imp(Linha,15,'ITENS R$');
    rdp.ImpVal(Linha,30,'##0.00',TblPreVendaCabTotalGeral.Value+TblPreVendaCabDesconto.Value+TotDesc-TblPreVendaCabTaxaTele.Value,[]);    Inc(Linha);
    rdp.Imp(Linha,15,'TELE R$');
    rdp.ImpVal(Linha,30,'##0.00',TblPreVendaCabTaxaTele.Value,[]);    Inc(Linha);
    rdp.Imp(Linha,15,'TOTAL R$');
    rdp.ImpVal(Linha,30,'##0.00',TblPreVendaCabTotalGeral.Value+TblPreVendaCabDesconto.Value+TotDesc,[]);    Inc(Linha);
    TblPedidoFinanceiro.First;
    While not TblPedidoFinanceiro.eof Do
      Begin
        rdp.Imp(Linha,15,TblPedidoFinanceiroNumerario.Value);
        rdp.ImpVal(Linha,30,'##0.00',TblPedidoFinanceiroValor.Value,[]);  Inc(Linha);
        TblPedidoFinanceiro.Next;
      End;
    rdp.Imp(Linha,15,'TROCO R$');
    rdp.ImpVal(Linha,30,'##0.00',TblPreVendaCabTroco.Value,[]);  Inc(Linha,2);

    rdp.Imp(Linha,1,'.');
    rdp.TamanhoQteLinhas := Linha;
    rdp.Fechar;

    if (nVias = '2') then
      begin
        rdp.Abrir;
        Linha := 1;
        rdp.ImpF(Linha,1,'PIZZARIA MIA MASSA',[Expandido, Normal]); Inc(Linha);
        rdp.Imp(Linha,1,'AV. OSORIO, 110'); Inc(Linha);
        rdp.Imp(Linha,1,'3627.2283'); Inc(Linha);
        rdp.Imp(Linha,1,'9365.2519'); Inc(Linha);
        rdp.Imp(Linha,1,'9803.5377'); Inc(Linha);

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

        rdp.ImpF(Linha,1,'Cliente ..: ' + TblPreVendaCabNomeClienteVenda.AsString, [Expandido, Normal]); Inc(Linha);

        if TblPreVendaCabTipoVenda.Value = 'TELE' then
          begin
            rdp.ImpF(Linha, 1,' End.: '  + copy(TblPreVendaCabEnderecoClienteVenda.AsString,1,15),[Expandido, Normal]);
            Inc(Linha);
            if length(TblPreVendaCabEnderecoClienteVenda.AsString) > 15 then
              begin
                rdp.ImpF(Linha, 1,'       '  + copy(TblPreVendaCabEnderecoClienteVenda.AsString,16,31),[Expandido, Normal]);
                Inc(Linha);
              end;
            if length(TblPreVendaCabEnderecoClienteVenda.AsString) > 31 then
              begin
                rdp.ImpF(Linha, 1,'       '  + copy(TblPreVendaCabEnderecoClienteVenda.AsString,32,47),[Expandido, Normal]);
                Inc(Linha);
              end;
            if length(TblPreVendaCabEnderecoClienteVenda.AsString) > 47 then
              begin
                rdp.ImpF(Linha, 1,'       '  + copy(TblPreVendaCabEnderecoClienteVenda.AsString,48,length(TblPreVendaCabEnderecoClienteVenda.AsString)),[Expandido, Normal]);
                Inc(Linha);
              end;

            if TblPreVendaCabBairroClienteVenda.AsString <> '' then
              begin rdp.ImpF(Linha, 1,' Bai.: '  + TblPreVendaCabBairroClienteVenda.AsString,[Expandido, Normal]); Inc(Linha);  end;
            if TblPreVendaCabCidadeClienteVenda.AsString <> '' then
              begin rdp.ImpF(Linha, 1,' Cid.: '  + TblPreVendaCabCidadeClienteVenda.AsString,[Expandido, Normal]); Inc(Linha); end;
            if TblPreVendaCabFoneClienteVenda.AsString <> '' then
              begin rdp.ImpF(Linha, 1,' Fone: '  + TblPreVendaCabFoneClienteVenda.AsString,[Expandido, Normal]); Inc(Linha); end;
            if TblPreVendaCabOBSImpressaoCupom.AsString <> '' then
              begin rdp.ImpF(Linha, 1,' Obs.: '  + TblPreVendaCabOBSImpressaoCupom.AsString,[Expandido, Normal]); Inc(Linha); end;
          end;
        rdp.Imp(Linha, 1,'Data...: '  + FormatDateTime('dd/mm/yy hh:nn:ss',now)); Inc(Linha);
        rdp.Imp(Linha,1,'---------------------------------------'); Inc(Linha);
        rdp.Imp(Linha,1,'Quant Descricao               Vlr.Total'); Inc(Linha);
        rdp.Imp(Linha,1,'---------------------------------------'); Inc(Linha);
        If not TblPreVendaItem.Active then TblPreVendaItem.Open;
        TblPreVendaItem.First;
        While not TblPreVendaItem.eof Do
          Begin
            rdp.Imp(Linha,1,FormatFloat('##00',TblPreVendaItemQuantidade.Value));
            rdp.Imp(Linha,7,TblPreVendaItemDescricao.AsString);
            rdp.ImpVal(Linha,30,'##0.00',TblPreVendaItemValorTotal.Value,[]); Inc(Linha);

            if TblPreVendaItemComplemento.Value <> '' then
              rdp.Imp(Linha,3,TblPreVendaItemComplemento.AsString);  Inc(Linha);

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
            TblPreVendaItem.Next;
          End;
        // Final Venda
        rdp.Imp(Linha,1,'---------------------------------------'); Inc(Linha,1);
        rdp.Imp(Linha,15,'ITENS R$');
        rdp.ImpVal(Linha,30,'##0.00',TblPreVendaCabTotalGeral.Value+TblPreVendaCabDesconto.Value+TotDesc-TblPreVendaCabTaxaTele.Value,[]);    Inc(Linha);
        rdp.Imp(Linha,15,'TELE R$');
        rdp.ImpVal(Linha,30,'##0.00',TblPreVendaCabTaxaTele.Value,[]);    Inc(Linha);
        rdp.Imp(Linha,15,'TOTAL R$');
        rdp.ImpVal(Linha,30,'##0.00',TblPreVendaCabTotalGeral.Value+TblPreVendaCabDesconto.Value+TotDesc,[]);    Inc(Linha);
        TblPedidoFinanceiro.First;
        While not TblPedidoFinanceiro.eof Do
          Begin
            rdp.Imp(Linha,15,TblPedidoFinanceiroNumerario.Value);
            rdp.ImpVal(Linha,30,'##0.00',TblPedidoFinanceiroValor.Value,[]);  Inc(Linha);
            TblPedidoFinanceiro.Next;
          End;
        rdp.Imp(Linha,15,'TROCO R$');
        rdp.ImpVal(Linha,30,'##0.00',TblPreVendaCabTroco.Value,[]);  Inc(Linha,2);

        rdp.Imp(Linha,1,'.');
        rdp.TamanhoQteLinhas := Linha;
        rdp.Fechar;
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
