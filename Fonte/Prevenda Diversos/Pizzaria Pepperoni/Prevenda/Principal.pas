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
    TblPreVendaCabTipoVenda: TStringField;
    TblPreVendaCabMensagem2: TMemoField;
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
    TblPreVendaCabDataEmissao: TStringField;
    TblPreVendaCabBusca: TStringField;
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
var CodCliente, ImpCaixa, nVias, NroReduzido : String;
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

    IniFile           := TIniFile.Create('C:\Easy2Solutions\Gestao\Parceiro.INI');
    ImpCaixa          := IniFile.ReadString('Restaurante','ImpCaixa','');
    IniFile.Free;

    rdp.PortaComunicacao := '';
    rdp.SetPrinterbyName(ImpCaixa);
    rdp.Abrir;
    Linha := 1;
    rdp.ImpF(Linha,1,'PIZZARIA PEPPERONI',[Expandido, Normal]); Inc(Linha,2);
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
    rdp.Imp(Linha,1,'--------------------------------------------'); Inc(Linha,1);
    rdp.Imp(Linha,1,'Quant Descricao                    Vlr.Total'); Inc(Linha);
    rdp.Imp(Linha,1,'--------------------------------------------'); Inc(Linha,1);
    If not TblPreVendaItem.Active then TblPreVendaItem.Open;
    TblPreVendaItem.First;
    While not TblPreVendaItem.eof Do
      Begin
        rdp.ImpVal(Linha,1,'##00',TblPreVendaItemQuantidade.Value,[]);
        rdp.Imp(Linha, 5,TblPreVendaItemDescricao.Value);
        rdp.ImpVal(Linha,37,'##0.00',TblPreVendaItemValorTotal.Value,[]); Inc(Linha);

        if TblPreVendaItemComplemento.Value <> '' then
          begin
            Inc(Linha);
            rdp.Imp(Linha, 5,'OBS:'); Inc(Linha);
            rdp.Imp(Linha, 5,TblPreVendaItemComplemento.Value); Inc(Linha);
          end;

        if TblPreVendaItemBORDA01.Value <> '' then
          begin
            Inc(Linha);
            rdp.Imp(Linha, 5,'BORDAS:'); Inc(Linha);
            if TblPreVendaItemBORDA01.Value <> '' then
              rdp.Imp(Linha, 5,TblPreVendaItemBORDA01.Value); Inc(Linha);
            if TblPreVendaItemBORDA02.Value <> '' then
              rdp.Imp(Linha, 5,TblPreVendaItemBORDA02.Value); Inc(Linha);
            if TblPreVendaItemBORDA03.Value <> '' then
              rdp.Imp(Linha, 5,TblPreVendaItemBORDA03.Value); Inc(Linha);
          end;
        if TblPreVendaItemSABOR01.Value <> '' then
          begin
            rdp.Imp(Linha, 5,'SABORES:'); Inc(Linha);
            if TblPreVendaItemSABOR01.Value <> '' then
              begin
                rdp.Imp(Linha, 5,TblPreVendaItemSABOR01.Value); Inc(Linha);
              end;
            if TblPreVendaItemSABOR02.Value <> '' then
              begin
                rdp.Imp(Linha, 5,TblPreVendaItemSABOR02.Value); Inc(Linha);
              end;
            if TblPreVendaItemSABOR03.Value <> '' then
              begin
                rdp.Imp(Linha, 5,TblPreVendaItemSABOR03.Value); Inc(Linha);
              end;
            if TblPreVendaItemSABOR04.Value <> '' then
              begin
                rdp.Imp(Linha, 5,TblPreVendaItemSABOR04.Value); Inc(Linha);
              end;
            if TblPreVendaItemSABOR05.Value <> '' then
              begin
                rdp.Imp(Linha, 5,TblPreVendaItemSABOR05.Value); Inc(Linha);
              end;
            if TblPreVendaItemSABOR06.Value <> '' then
              begin
                rdp.Imp(Linha, 5,TblPreVendaItemSABOR06.Value); Inc(Linha);
              end;  
          end;
        TblPreVendaItem.Next;
      End;
    // Final Venda
    rdp.Imp(Linha,1,'---------------------------------------------'); Inc(Linha,1);
    rdp.Imp(Linha,25,'SUB TOTAL R$');
    rdp.ImpVal(Linha,41,'##0.00',TblPreVendaCabTotalNominal.Value+TblPreVendaCabDesconto.Value+TotDesc,[]);    Inc(Linha);
    rdp.Imp(Linha,25,'TX. TELE  R$');
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
    rdp.ImpVal(Linha,41,'##0.00',TblPreVendaCabTroco.Value,[]);  Inc(Linha);

    if TblPreVendaCabLevarCasa.Value = 'S' then
      begin
        Inc(Linha);
        rdp.ImpF(Linha, 1,' LEVAR PARA CASA',[Expandido, Normal]); Inc(Linha,2);
      end;

    rdp.Imp(Linha, 1,'---------------------------------------------'); Inc(Linha);
    rdp.Imp(Linha, 1,'          OBRIGADO PELA PREFERENCIA!         '); Inc(Linha);
    rdp.Imp(Linha, 1,'.');

    rdp.TamanhoQteLinhas := Linha;
    rdp.Fechar;

    {Picote}
    if FileExists('Picote.exe') then
      WinExec(Pchar('Picote.exe'),SW_HIDE);


    if Application.MessageBox(PChar('Imprimir Segunda Via?'), PChar(Application.Title), MB_SYSTEMMODAL + MB_YesNo + MB_IconQuestion + MB_DEFBUTTON2) = IdYes then
      begin
        Linha := 1;
        rdp.Abrir;
        rdp.ImpF(Linha,1,'PIZZARIA PEPPERONI',[Expandido, Normal]); Inc(Linha,2);
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
        rdp.Imp(Linha,1,'--------------------------------------------'); Inc(Linha,1);
        rdp.Imp(Linha,1,'Quant Descricao                    Vlr.Total'); Inc(Linha);
        rdp.Imp(Linha,1,'--------------------------------------------'); Inc(Linha,1);
        If not TblPreVendaItem.Active then TblPreVendaItem.Open;
        TblPreVendaItem.First;
        While not TblPreVendaItem.eof Do
          Begin
            rdp.ImpVal(Linha,1,'##00',TblPreVendaItemQuantidade.Value,[]);
            rdp.Imp(Linha, 5,TblPreVendaItemDescricao.Value);
            rdp.ImpVal(Linha,37,'##0.00',TblPreVendaItemValorTotal.Value,[]); Inc(Linha);

            if TblPreVendaItemComplemento.Value <> '' then
              begin
                Inc(Linha);
                rdp.Imp(Linha, 5,'OBS:'); Inc(Linha);
                rdp.Imp(Linha, 5,TblPreVendaItemComplemento.Value); Inc(Linha);
              end;

            if TblPreVendaItemBORDA01.Value <> '' then
              begin
                Inc(Linha);
                rdp.Imp(Linha, 5,'BORDAS:'); Inc(Linha);
                if TblPreVendaItemBORDA01.Value <> '' then
                  rdp.Imp(Linha, 5,TblPreVendaItemBORDA01.Value); Inc(Linha);
                if TblPreVendaItemBORDA02.Value <> '' then
                  rdp.Imp(Linha, 5,TblPreVendaItemBORDA02.Value); Inc(Linha);
                if TblPreVendaItemBORDA03.Value <> '' then
                  rdp.Imp(Linha, 5,TblPreVendaItemBORDA03.Value); Inc(Linha);
              end;
            if TblPreVendaItemSABOR01.Value <> '' then
              begin
                rdp.Imp(Linha, 5,'SABORES:'); Inc(Linha);
                if TblPreVendaItemSABOR01.Value <> '' then
                  begin
                    rdp.Imp(Linha, 5,TblPreVendaItemSABOR01.Value); Inc(Linha);
                  end;
                if TblPreVendaItemSABOR02.Value <> '' then
                  begin
                    rdp.Imp(Linha, 5,TblPreVendaItemSABOR02.Value); Inc(Linha);
                  end;
                if TblPreVendaItemSABOR03.Value <> '' then
                  begin
                    rdp.Imp(Linha, 5,TblPreVendaItemSABOR03.Value); Inc(Linha);
                  end;
                if TblPreVendaItemSABOR04.Value <> '' then
                  begin
                    rdp.Imp(Linha, 5,TblPreVendaItemSABOR04.Value); Inc(Linha);
                  end;
                if TblPreVendaItemSABOR05.Value <> '' then
                  begin
                    rdp.Imp(Linha, 5,TblPreVendaItemSABOR05.Value); Inc(Linha);
                  end;
                if TblPreVendaItemSABOR06.Value <> '' then
                  begin
                    rdp.Imp(Linha, 5,TblPreVendaItemSABOR06.Value); Inc(Linha);
                  end;
              end;
            TblPreVendaItem.Next;
          End;
        // Final Venda
        rdp.Imp(Linha,1,'---------------------------------------------'); Inc(Linha,1);
        rdp.Imp(Linha,25,'SUB TOTAL R$');
        rdp.ImpVal(Linha,41,'##0.00',TblPreVendaCabTotalNominal.Value+TblPreVendaCabDesconto.Value+TotDesc,[]);    Inc(Linha);
        rdp.Imp(Linha,25,'TX. TELE  R$');
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
        rdp.ImpVal(Linha,41,'##0.00',TblPreVendaCabTroco.Value,[]);  Inc(Linha);

        if TblPreVendaCabLevarCasa.Value = 'S' then
          begin
            Inc(Linha);
            rdp.ImpF(Linha, 1,' LEVAR PARA CASA',[Expandido, Normal]); Inc(Linha,2);
          end;

        rdp.Imp(Linha, 1,'---------------------------------------------'); Inc(Linha);
        rdp.Imp(Linha, 1,'          OBRIGADO PELA PREFERENCIA!         '); Inc(Linha);
        rdp.Imp(Linha, 1,'.');

        rdp.TamanhoQteLinhas := Linha;
        rdp.Fechar;

        {Picote}
        if FileExists('Picote.exe') then
          WinExec(Pchar('Picote.exe'),SW_HIDE);
      end;

    TblPreVendacab.Close;
    TblPreVendaItem.Close;
    Application.Terminate;
  except
    TblPreVendacab.Close;
    TblPreVendaItem.Close;
    Application.Terminate;
  end;
end;

procedure TFormPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree ;
end;

end.
