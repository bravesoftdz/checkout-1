unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, ComCtrls, RDprint, Inifiles, ppPrnabl,
  ppClass, ppCtrls, ppCache, ppBands, ppComm, ppRelatv, ppProd, ppReport;

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
    TblPreVendaCabUsuarioVendaSTR: TStringField;
    TblPreVendaCabTaxaTele: TFloatField;
    TblPreVendaItemPRODA30COZINHA: TStringField;
    TblPreVendaCabBusca: TStringField;
    TblPreVendaCabDataEmissao: TStringField;
    rdp: TRDprint;
    TblPreVendaCabSequencial: TIntegerField;
    ppPicote: TppReport;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
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
var CodCliente, ImpCaixa, ImpressoraCozinha01, nVias, NroReduzido,
    EmpresaNome, EmpresaEndereco, EmpresaFone, Cartao, Saltar : String;
var Linha, vCol : integer;
var TotDesc : Double;
var ImpCozinha1 : boolean;
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

    // Testa se tem que imprimir para a Cozinha Produzir
    ImpCozinha1 := False;
    TblPreVendaItem.First;
    While not TblPreVendaItem.eof Do
      Begin
        if TblPreVendaItemImpCozinha.value = 'S' then
          begin
            if TblPreVendaItemPRODA30COZINHA.Value = 'Cozinha01' then ImpCozinha1 := True;
          end;
        TblPreVendaItem.Next;
      End;

    IniFile             := TIniFile.Create('C:\Easy2Solutions\Gestao\Parceiro.ini');
    EmpresaNome         := IniFile.ReadString('IB_Software','EmpresaNome','');
    EmpresaEndereco     := IniFile.ReadString('IB_Software','EmpresaEndereco','');
    EmpresaFone         := IniFile.ReadString('IB_Software','EmpresaFone','');
    Saltar              := IniFile.ReadString('IB_Software','Saltar','');
    nVias               := IniFile.ReadString('IB_SOFTWARE','NroViasImpVenda','');
    ImpCaixa            := IniFile.ReadString('Restaurante','ImpCaixa','');
    ImpressoraCozinha01 := IniFile.ReadString('Restaurante','ImpCozinha01','');
    IniFile.Free;

    rdp.PortaComunicacao := '';
    if ImpCaixa <> '' then
      rdp.SetPrinterbyName(ImpCaixa);

    rdp.NumerodeCopias := 1;
    rdp.Abrir;
    Linha := 1;

    rdp.Imp(Linha,1,'.'); Inc(Linha);
    rdp.Imp(Linha,1,EmpresaNome); Inc(Linha,2);

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
      begin rdp.Imp(Linha, 1,'VENDA BALCAO'); Inc(Linha,2); end;

    if TblPreVendaCabTipoVenda.Value = 'Tele' then
      begin
        if cartao = '' then
          rdp.Imp(Linha, 1,'VENDA TELE => ' + TblPreVendaCabSequencial.AsString)
        else
          rdp.Imp(Linha, 1,'VENDA TELE => ' + TblPreVendaCabSequencial.AsString + ' - ' +Cartao);
        Inc(Linha,2);
      end;

    if TblPreVendaCabTipoVenda.Value = 'Mesa' then
      begin
        rdp.Imp(Linha, 1,'PEDIDO MESA => '+TblPreVendaCabMesaCodigo.Asstring);  Inc(Linha);
        rdp.Imp(Linha, 1,'    COMANDA => '+TblPreVendaCabContaCodigo.Asstring); Inc(Linha,2);
      end;

    if TblPreVendaCabDisplayNumero.Value > 0 then
      begin
        rdp.Imp(Linha, 1,'Display.: ' + TblPreVendaCabDisplayNumero.AsString);
        Inc(Linha,2);
      end;

    if TblPreVendaCabLevarCasa.Value = 'S' then
      begin
        rdp.Imp(Linha, 1,' LEVAR PARA CASA');
        Inc(Linha,2);
      end;
    if TblPreVendaCabBusca.Value = 'S' then
      begin
        Inc(Linha);
        rdp.Imp(Linha, 1,'  CLIENTE VEM BUSCAR'); Inc(Linha,2);
      end;

    if TblPreVendaCabTipoVenda.Value = 'Tele' then
      begin
        rdp.Imp(Linha, 1,'Tele Nro.: '  + TblPreVendaCabSequencial.AsString); Inc(Linha);
        if TblPreVendaCabMotoboy.Value <> '' then
          rdp.Imp(Linha, 1,'Motoboy...: ' + TblPreVendaCabMotoboy.AsString); Inc(Linha);
      end;

    rdp.Imp(Linha,1,'Cliente: ' + TblPreVendaCabNomeClienteVenda.AsString); Inc(Linha);

    if TblPreVendaCabTipoVenda.Value = 'Tele' then
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
    rdp.Imp(Linha,1,'-------------------------------------------'); Inc(Linha);
    rdp.Imp(Linha,1,'Quant Descricao         Vlr.Unit  Vlr.Total'); Inc(Linha);
    rdp.Imp(Linha,1,'-------------------------------------------'); Inc(Linha);
    If not TblPreVendaItem.Active then TblPreVendaItem.Open;
    TblPreVendaItem.First;
    While not TblPreVendaItem.eof Do
      Begin
        rdp.Imp(Linha,1,FormatFloat('##00',TblPreVendaItemQuantidade.Value));
        rdp.Imp(Linha,4,TblPreVendaItemDescricao.AsString);  Inc(Linha);
        if TblPreVendaItemComplemento.Value <> '' then
          begin
            rdp.Imp(Linha, 3,copy(TblPreVendaItemComplemento.AsString,1,33));  Inc(Linha);
            if length(TblPreVendaItemComplemento.AsString) > 33 then
              begin
                rdp.Imp(Linha, 3,copy(TblPreVendaItemComplemento.AsString,34,67));
                Inc(Linha);
                if length(TblPreVendaItemComplemento.AsString) > 67 then
                  begin
                    rdp.Imp(Linha, 3,copy(TblPreVendaItemComplemento.AsString,68,101));
                    Inc(Linha);
                    if length(TblPreVendaItemComplemento.AsString) > 101 then
                      begin
                        rdp.Imp(Linha, 3,copy(TblPreVendaItemComplemento.AsString,102,135));
                        Inc(Linha);
                        if length(TblPreVendaItemComplemento.AsString) > 135 then
                          begin
                            rdp.Imp(Linha, 3,copy(TblPreVendaItemComplemento.AsString,136,169));
                            Inc(Linha);
                            if length(TblPreVendaItemComplemento.AsString) > 170 then
                              begin
                                rdp.Imp(Linha, 3,copy(TblPreVendaItemComplemento.AsString,171,200));
                                Inc(Linha);
                              end;
                          end;
                      end;
                  end;
              end;
          end;
        rdp.ImpVal(Linha,20,'##0.00',TblPreVendaItemValorUnitario.Value,[]);
        rdp.ImpVal(Linha,35,'##0.00',TblPreVendaItemValorTotal.Value,[]); Inc(Linha);
        TblPreVendaItem.Next;
      End;
    // Final Venda
    rdp.Imp(Linha,1,'-------------------------------------------'); Inc(Linha,1);
    rdp.Imp(Linha,20,'ITENS R$');
    rdp.ImpVal(Linha,35,'##0.00',TblPreVendaCabTotalGeral.Value+TblPreVendaCabDesconto.Value+TotDesc-TblPreVendaCabTaxaTele.Value,[]);  Inc(Linha);
    rdp.Imp(Linha,20,'TELE R$');
    rdp.ImpVal(Linha,35,'##0.00',TblPreVendaCabTaxaTele.Value,[]);  Inc(Linha);
    rdp.Imp(Linha,20,'TOTAL R$');
    rdp.ImpVal(Linha,35,'##0.00',TblPreVendaCabTotalGeral.Value+TblPreVendaCabDesconto.Value+TotDesc,[]);  Inc(Linha);
    TblPedidoFinanceiro.First;
    While not TblPedidoFinanceiro.eof Do
      Begin
        rdp.Imp(Linha,20,TblPedidoFinanceiroNumerario.Value);
        rdp.ImpVal(Linha,35,'##0.00',TblPedidoFinanceiroValor.Value,[]);  Inc(Linha);
        TblPedidoFinanceiro.Next;
      End;
    rdp.Imp(Linha,20,'TROCO R$');
    rdp.ImpVal(Linha,35,'##0.00',TblPreVendaCabTroco.Value,[]);

    {Finalizar, Saltar Papel}
    Linha:=Linha+5;
    rdp.Imp(Linha, 1,'.');
    rdp.TamanhoQteLinhas := 1;
    rdp.fechar;

    {Picote}
    ppPicote.Print;

    {Segunda Via}
    if Application.MessageBox(PChar('Imprimir Segunda Via?'), PChar(Application.Title), MB_SYSTEMMODAL + MB_YesNo + MB_IconQuestion + MB_DEFBUTTON2) = IdYes then
      begin
        rdp.Abrir;
        Linha := 1;

        rdp.Imp(Linha,1,';'); Inc(Linha);
        rdp.Imp(Linha,1,EmpresaNome); Inc(Linha,2);

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
          begin rdp.Imp(Linha, 1,'VENDA BALCAO'); Inc(Linha,2); end;

        if TblPreVendaCabTipoVenda.Value = 'Tele' then
          begin
            if cartao = '' then
              rdp.Imp(Linha, 1,'VENDA TELE => ' + TblPreVendaCabSequencial.AsString)
            else
              rdp.Imp(Linha, 1,'VENDA TELE => ' + TblPreVendaCabSequencial.AsString + ' - ' +Cartao);
            Inc(Linha,2);
          end;


        if TblPreVendaCabDisplayNumero.Value > 0 then
          begin
            rdp.Imp(Linha, 1,'Display.: ' + TblPreVendaCabDisplayNumero.AsString);
            Inc(Linha,2);
          end;

        if TblPreVendaCabLevarCasa.Value = 'S' then
          begin
            rdp.Imp(Linha, 1,' LEVAR PARA CASA');
            Inc(Linha,2);
          end;
        if TblPreVendaCabBusca.Value = 'S' then
          begin
            Inc(Linha);
            rdp.Imp(Linha, 1,'  CLIENTE VEM BUSCAR'); Inc(Linha,2);
          end;

        if TblPreVendaCabTipoVenda.Value = 'Tele' then
          begin
            rdp.Imp(Linha, 1,'Tele Nro.: '  + TblPreVendaCabSequencial.AsString); Inc(Linha);
            if TblPreVendaCabMotoboy.Value <> '' then
              rdp.Imp(Linha, 1,'Motoboy...: ' + TblPreVendaCabMotoboy.AsString); Inc(Linha);
          end;

        rdp.Imp(Linha,1,'Cliente: ' + TblPreVendaCabNomeClienteVenda.AsString); Inc(Linha);

        if TblPreVendaCabTipoVenda.Value = 'Tele' then
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
        rdp.Imp(Linha,1,'-------------------------------------------'); Inc(Linha);
        rdp.Imp(Linha,1,'Quant Descricao         Vlr.Unit  Vlr.Total'); Inc(Linha);
        rdp.Imp(Linha,1,'-------------------------------------------'); Inc(Linha);
        If not TblPreVendaItem.Active then TblPreVendaItem.Open;
        TblPreVendaItem.First;
        While not TblPreVendaItem.eof Do
          Begin
            rdp.Imp(Linha,1,FormatFloat('##00',TblPreVendaItemQuantidade.Value));
            rdp.Imp(Linha,4,TblPreVendaItemDescricao.AsString);  Inc(Linha);
            if TblPreVendaItemComplemento.Value <> '' then
              begin
                rdp.Imp(Linha, 3,copy(TblPreVendaItemComplemento.AsString,1,33));  Inc(Linha);
                if length(TblPreVendaItemComplemento.AsString) > 33 then
                  begin
                    rdp.Imp(Linha, 3,copy(TblPreVendaItemComplemento.AsString,34,67));
                    Inc(Linha);
                    if length(TblPreVendaItemComplemento.AsString) > 67 then
                      begin
                        rdp.Imp(Linha, 3,copy(TblPreVendaItemComplemento.AsString,68,101));
                        Inc(Linha);
                        if length(TblPreVendaItemComplemento.AsString) > 101 then
                          begin
                            rdp.Imp(Linha, 3,copy(TblPreVendaItemComplemento.AsString,102,135));
                            Inc(Linha);
                            if length(TblPreVendaItemComplemento.AsString) > 135 then
                              begin
                                rdp.Imp(Linha, 3,copy(TblPreVendaItemComplemento.AsString,136,169));
                                Inc(Linha);
                                if length(TblPreVendaItemComplemento.AsString) > 170 then
                                  begin
                                    rdp.Imp(Linha, 3,copy(TblPreVendaItemComplemento.AsString,171,200));
                                    Inc(Linha);
                                  end;
                              end;
                          end;
                      end;
                  end;
              end;
            rdp.ImpVal(Linha,20,'##0.00',TblPreVendaItemValorUnitario.Value,[]);
            rdp.ImpVal(Linha,35,'##0.00',TblPreVendaItemValorTotal.Value,[]); Inc(Linha);
            TblPreVendaItem.Next;
          End;
        // Final Venda
        rdp.Imp(Linha,1,'-------------------------------------------'); Inc(Linha,1);
        rdp.Imp(Linha,20,'ITENS R$');
        rdp.ImpVal(Linha,35,'##0.00',TblPreVendaCabTotalGeral.Value+TblPreVendaCabDesconto.Value+TotDesc-TblPreVendaCabTaxaTele.Value,[]);  Inc(Linha);
        rdp.Imp(Linha,20,'TELE R$');
        rdp.ImpVal(Linha,35,'##0.00',TblPreVendaCabTaxaTele.Value,[]);  Inc(Linha);
        rdp.Imp(Linha,20,'TOTAL R$');
        rdp.ImpVal(Linha,35,'##0.00',TblPreVendaCabTotalGeral.Value+TblPreVendaCabDesconto.Value+TotDesc,[]);  Inc(Linha);
        TblPedidoFinanceiro.First;
        While not TblPedidoFinanceiro.eof Do
          Begin
            rdp.Imp(Linha,20,TblPedidoFinanceiroNumerario.Value);
            rdp.ImpVal(Linha,35,'##0.00',TblPedidoFinanceiroValor.Value,[]);  Inc(Linha);
            TblPedidoFinanceiro.Next;
          End;
        rdp.Imp(Linha,20,'TROCO R$');
        rdp.ImpVal(Linha,35,'##0.00',TblPreVendaCabTroco.Value,[]);

        {Finalizar, Saltar Papel}
        Linha:=Linha+5;
        rdp.Imp(Linha, 1,'.');
        rdp.TamanhoQteLinhas := 1;
        rdp.fechar;

        {Picote}
        ppPicote.Print;
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
