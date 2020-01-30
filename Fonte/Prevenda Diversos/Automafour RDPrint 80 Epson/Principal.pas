unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, VarSys, ExtCtrls, ComCtrls, RDprint, Inifiles;

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
    TblPreVendaItemTroca: TStringField;
    TblPreVendaCabTroco: TFloatField;
    TblPreVendaCabPEDIDOORCAMENTO: TStringField;
    TblPedidoFinanceiroNumerario: TStringField;
    TblPreVendaCabNomeClienteVenda: TStringField;
    TblPreVendaCabDocumentoClienteVenda: TStringField;
    TblPreVendaCabEnderecoClienteVenda: TStringField;
    TblPreVendaCabCidadeClienteVenda: TStringField;
    TblPreVendaCabOBSImpressaoCupom: TStringField;
    TblPreVendaCabFoneClienteVenda: TStringField;
    TblPreVendaCabUsuarioVendaSTR: TStringField;
    TblPreVendaCabPlacaVeiculo: TStringField;
    TblPedidoFinanceiroTipopadrao: TStringField;
    TblPreVendaCabVlrEntrada: TFloatField;
    TblPreVendaCabTERMICOD: TIntegerField;
    TblPreVendaCabPRVDICOD: TIntegerField;
    TblPreVendaCabBairroClienteVenda: TStringField;
    TblPreVendaCabKM: TStringField;
    TblPreVendaItemComplemento: TStringField;
    TblPreVendaItemImpCozinha: TStringField;
    TblPreVendaItemImpVale: TStringField;
    TblPedidoFinanceiroParcela: TStringField;
    TblPedidoFinanceiroPortador: TStringField;
    TblPreVendaCabClienteDependente: TStringField;
    TblPreVendaCabDataEmissao: TDateTimeField;
    TblPreVendaCabDisplayNumero: TIntegerField;
    rdp: TRDprint;
    TblPreVendaCabEmpresaEmit: TStringField;
    TblPreVendaCabEmpresaEmit_Ender: TStringField;
    TblPreVendaCabEmpresaEmit_Bairro: TStringField;
    TblPreVendaCabEmpresaEmit_Cidade: TStringField;
    TblPreVendaCabEmpresaEmit_Fone: TStringField;
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
var CodCliente, CodEmpresa, TerminalNome, DataPedido : String;
var Linha, vCol : integer;
var TotDesc, TotConfissao : Double;
var Inifile: TInifile;
var NroViasImpVenda, Saltar, Obs_Venda, MostraDisplay: String;
begin
  try
    IniFile := TIniFile.Create ('C:\Unit\Gestao\Parceiro.INI');
    NroViasImpVenda := IniFile.ReadString('IB_Software','NroViasImpVenda','');
    Saltar          := IniFile.ReadString('IB_Software','Saltar','');
    Obs_Venda       := IniFile.ReadString('IB_Software','Obs_Venda','');
    MostraDisplay   := IniFile.ReadString('IB_Software','GravarDisplaySequencial','');
    IniFile.Free;

    TblPreVendaCab.Open;
    TblPreVendaItem.Open;
    TblPedidoFinanceiro.Open;

    CodEmpresa   := IntToStr(StrToInt(Copy(TblPreVendaCabTicketNumero.asString,1,3)));
    CodCliente   := Copy(TblPreVendaCabCliente.asString,1,13);

    // TerminalNome := dm.SQLLocate('TERMINAL','TERMICOD','TERMA60DESCR',TblPreVendaCabTERMICOD.AsString);
    // DataPedido   := TblPreVendaCabDataEmissao.AsString;

    Linha := 1;
    rdp.NumerodeCopias := 1;
    rdp.Abrir;
    rdp.ImpF(Linha, 1,TblPreVendaCabEmpresaEmit.Value,[Expandido, Italico]); Inc(Linha,2);
    rdp.ImpF(Linha, 1,TblPreVendaCabEmpresaEmit_Ender.Value,[Normal]); Inc(Linha);
    rdp.ImpF(Linha, 1,TblPreVendaCabEmpresaEmit_Fone.Value,[Normal]);
    rdp.Imp(Linha, 60,'Pedido de Venda v3.01') ; Inc(Linha,2);
    rdp.Imp(Linha,  1,'Controle...: '  + TblPreVendaCabTicketNumero.AsString);
    rdp.Imp(Linha, 60,'Data.....: '    + FormatDateTime('dd/mm/yy hh:mm',now)); Inc(Linha,2);
    rdp.Imp(Linha,  1,'Cliente....: '  + TblPreVendaCabNomeClienteVenda.AsString); Inc(Linha);
    rdp.Imp(Linha,  1,'Endereco...: '  + TblPreVendaCabEnderecoClienteVenda.AsString);
    rdp.Imp(Linha, 60,'Cidade...: '    + TblPreVendaCabCidadeClienteVenda.AsString); Inc(Linha);
    rdp.Imp(Linha,  1,'CPF/CNPJ...: '  + TblPreVendaCabDocumentoClienteVenda.AsString); Inc(Linha);
    rdp.Imp(Linha,  1,'Fone.......: '  + TblPreVendaCabFoneClienteVenda.AsString);
    rdp.Imp(Linha, 60,'Vendedor.: '    + TblPreVendaCabVendedor.AsString); Inc(Linha);
    rdp.Imp(Linha,  1,'Observacao.: '  + TblPreVendaCabOBSImpressaoCupom.Value);  Inc(Linha,2);
    rdp.Imp(Linha,  1,'Faturamento.: ' + TblPreVendaCabPlano.AsString); Inc(Linha);
    rdp.Imp(Linha,  1,'Parcelas:');     Inc(Linha);
    TblPedidoFinanceiro.First;
    While not TblPedidoFinanceiro.eof Do
      Begin
        rdp.Imp(Linha,15,TblPedidoFinanceiroParcela.AsString);
        rdp.Imp(Linha,25,TblPedidoFinanceiroVencimento.AsString);
        rdp.ImpVal(Linha,40,'##0.00',TblPedidoFinanceiroValor.Value,[]);
        rdp.Imp(Linha,55,TblPedidoFinanceiroNumerario.AsString); Inc(Linha);
        TblPedidoFinanceiro.Next;
      End;

    Inc(Linha,2);

    rdp.Imp(Linha,1,'Codigo Referencia   Descricao                             Quant Vlr.Unit  Vlr.Desc  Vlr.Total'); Inc(Linha);
    rdp.Imp(Linha,1,'---------------------------------------------------------------------------------------------'); Inc(Linha);
    TotDesc := 0;
    TblPreVendaItem.First;
    While not TblPreVendaItem.eof Do
      Begin
        if TblPreVendaItemTroca.value <> 'S' then
          begin
            rdp.Imp(Linha, 1,FormatFloat('######000000',TblPreVendaItemCodigo.Value));
            rdp.Imp(Linha, 8,TblPreVendaItemReferencia.Value);
            rdp.Imp(Linha,21,TblPreVendaItemDescricao.AsString); Inc(Linha);
            rdp.ImpVal(Linha,59,'##0.00',TblPreVendaItemQuantidade.Value,[]);
            rdp.ImpVal(Linha,67,'##0.00',TblPreVendaItemValorUnitario.Value,[]);
            rdp.ImpVal(Linha,77,'##0.00',TblPreVendaItemDesconto.Value,[]);
            rdp.ImpVal(Linha,88,'##0.00',TblPreVendaItemValorTotal.Value,[]); Inc(Linha);
          end;
        TotDesc := TotDesc + TblPreVendaItemDesconto.Value;
        TblPreVendaItem.Next;
      End;

    // Testa se tem  Troca
    TblPreVendaItem.First;
    While not TblPreVendaItem.eof Do
      Begin
        if TblPreVendaItemTroca.value = 'S' then
          begin
            rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha);
            rdp.ImpF(Linha,1,'   D E V O L U C A O',[Expandido, Normal]); Inc(Linha);
            rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha);
            TblPreVendaItem.Last;
          end;
        TblPreVendaItem.Next;
      End;
    // Imprime Itens se tem  Troca
    TblPreVendaItem.First;
    While not TblPreVendaItem.eof Do
      Begin
        if TblPreVendaItemTroca.value = 'S' then
          begin
            rdp.Imp(Linha, 1,FormatFloat('######000000',TblPreVendaItemCodigo.Value));
            rdp.Imp(Linha, 8,TblPreVendaItemReferencia.Value);
            rdp.Imp(Linha,21,TblPreVendaItemDescricao.AsString); Inc(Linha);
            rdp.ImpVal(Linha,59,'##0.00',TblPreVendaItemQuantidade.Value,[]);
            rdp.ImpVal(Linha,67,'##0.00',TblPreVendaItemValorUnitario.Value,[]);
            rdp.ImpVal(Linha,77,'##0.00',TblPreVendaItemDesconto.Value,[]);
            rdp.ImpVal(Linha,88,'##0.00',TblPreVendaItemValorTotal.Value,[]); Inc(Linha);
          end;
        TblPreVendaItem.Next;
      End;

    // Final Venda
    rdp.Imp(Linha,1,'---------------------------------------------------------------------------------------------'); Inc(Linha);
    rdp.Imp(Linha,50,'Total Itens R$');
    rdp.ImpVal(Linha,88,'##0.00',TblPreVendaCabTotalNominal.Value,[]); Inc(Linha);

    rdp.Imp(Linha,50,'Desconto    R$');
    rdp.ImpVal(Linha,88,'##0.00',TblPreVendaCabDesconto.Value+TotDesc,[]);
    Inc(Linha);

    rdp.Imp(Linha, 5,'ASS. Comprador ___________________________');
    rdp.Imp(Linha,50,'Total Geral R$');
    rdp.ImpVal(Linha,88,'##0.00',(TblPreVendaCabTotalGeral.Value),[]);  Inc(Linha);
    rdp.Imp(Linha, 20,TblPreVendaCabNomeClienteVenda.AsString); Inc(Linha);

    rdp.Fechar;

    if NroViasImpVenda = '2' then
      if Application.MessageBox(PChar('Imprimir Segunda Via?'), PChar(Application.Title), MB_SYSTEMMODAL + MB_YesNo + MB_IconQuestion + MB_DEFBUTTON2) = IdYes then
        begin
          Linha := 1;
          rdp.NumerodeCopias := 1;
          rdp.Abrir;
          rdp.ImpF(Linha, 1,TblPreVendaCabEmpresaEmit.Value,[Expandido, Italico]); Inc(Linha,2);
          rdp.ImpF(Linha, 1,TblPreVendaCabEmpresaEmit_Ender.Value,[Normal]); Inc(Linha);
          rdp.ImpF(Linha, 1,TblPreVendaCabEmpresaEmit_Fone.Value,[Normal]);
          rdp.Imp(Linha, 60,'Pedido de Venda v3.00'); Inc(Linha,2);
          rdp.Imp(Linha,  1,'Controle...: '  + TblPreVendaCabTicketNumero.AsString);
          rdp.Imp(Linha,  1,'Pedido de Venda 3.0:');
          rdp.Imp(Linha, 60,'Data.....: '    + FormatDateTime('dd/mm/yy hh:mm',now)); Inc(Linha,2);
          rdp.Imp(Linha,  1,'Cliente....: '  + TblPreVendaCabNomeClienteVenda.AsString); Inc(Linha);
          rdp.Imp(Linha,  1,'Endereco...: '  + TblPreVendaCabEnderecoClienteVenda.AsString);
          rdp.Imp(Linha, 60,'Cidade...: '    + TblPreVendaCabCidadeClienteVenda.AsString); Inc(Linha);
          rdp.Imp(Linha,  1,'CPF/CNPJ...: '  + TblPreVendaCabDocumentoClienteVenda.AsString); Inc(Linha);
          rdp.Imp(Linha,  1,'Fone.......: '  + TblPreVendaCabFoneClienteVenda.AsString);
          rdp.Imp(Linha, 60,'Vendedor.: '    + TblPreVendaCabVendedor.AsString); Inc(Linha);
          rdp.Imp(Linha,  1,'Observacao.: '  + TblPreVendaCabOBSImpressaoCupom.Value);  Inc(Linha,2);
          rdp.Imp(Linha,  1,'Faturamento.: ' + TblPreVendaCabPlano.AsString); Inc(Linha);
          rdp.Imp(Linha,  1,'Parcelas:');     Inc(Linha);
          TblPedidoFinanceiro.First;
          While not TblPedidoFinanceiro.eof Do
            Begin
              rdp.Imp(Linha,15,TblPedidoFinanceiroParcela.AsString);
              rdp.Imp(Linha,25,TblPedidoFinanceiroVencimento.AsString);
              rdp.ImpVal(Linha,40,'##0.00',TblPedidoFinanceiroValor.Value,[]);
              rdp.Imp(Linha,55,TblPedidoFinanceiroNumerario.AsString); Inc(Linha);
              TblPedidoFinanceiro.Next;
            End;

          Inc(Linha,2);

          rdp.Imp(Linha,1,'Codigo Referencia   Descricao                             Quant Vlr.Unit  Vlr.Desc  Vlr.Total'); Inc(Linha);
          rdp.Imp(Linha,1,'---------------------------------------------------------------------------------------------'); Inc(Linha);
          TotDesc := 0;
          TblPreVendaItem.First;
          While not TblPreVendaItem.eof Do
            Begin
              if TblPreVendaItemTroca.value <> 'S' then
                begin
                  rdp.Imp(Linha, 1,FormatFloat('######000000',TblPreVendaItemCodigo.Value));
                  rdp.Imp(Linha, 8,TblPreVendaItemReferencia.Value);
                  rdp.Imp(Linha,21,TblPreVendaItemDescricao.AsString); Inc(Linha);
                  rdp.ImpVal(Linha,59,'##0.00',TblPreVendaItemQuantidade.Value,[]);
                  rdp.ImpVal(Linha,67,'##0.00',TblPreVendaItemValorUnitario.Value,[]);
                  rdp.ImpVal(Linha,77,'##0.00',TblPreVendaItemDesconto.Value,[]);
                  rdp.ImpVal(Linha,88,'##0.00',TblPreVendaItemValorTotal.Value,[]); Inc(Linha);
                end;
              TotDesc := TotDesc + TblPreVendaItemDesconto.Value;
              TblPreVendaItem.Next;
            End;

          // Testa se tem  Troca
          TblPreVendaItem.First;
          While not TblPreVendaItem.eof Do
            Begin
              if TblPreVendaItemTroca.value = 'S' then
                begin
                  rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha);
                  rdp.ImpF(Linha,1,'   D E V O L U C A O',[Expandido, Normal]); Inc(Linha);
                  rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha);
                  TblPreVendaItem.Last;
                end;
              TblPreVendaItem.Next;
            End;
          // Imprime Itens se tem  Troca
          TblPreVendaItem.First;
          While not TblPreVendaItem.eof Do
            Begin
              if TblPreVendaItemTroca.value = 'S' then
                begin
                  rdp.Imp(Linha, 1,FormatFloat('######000000',TblPreVendaItemCodigo.Value));
                  rdp.Imp(Linha, 8,TblPreVendaItemReferencia.Value);
                  rdp.Imp(Linha,21,TblPreVendaItemDescricao.AsString); Inc(Linha);
                  rdp.ImpVal(Linha,59,'##0.00',TblPreVendaItemQuantidade.Value,[]);
                  rdp.ImpVal(Linha,67,'##0.00',TblPreVendaItemValorUnitario.Value,[]);
                  rdp.ImpVal(Linha,77,'##0.00',TblPreVendaItemDesconto.Value,[]);
                  rdp.ImpVal(Linha,88,'##0.00',TblPreVendaItemValorTotal.Value,[]); Inc(Linha);
                end;
              TblPreVendaItem.Next;
            End;

          // Final Venda
          rdp.Imp(Linha,1,'---------------------------------------------------------------------------------------------'); Inc(Linha);
          rdp.Imp(Linha,50,'Total Itens R$');
          rdp.ImpVal(Linha,88,'##0.00',TblPreVendaCabTotalNominal.Value,[]); Inc(Linha);

          rdp.Imp(Linha,50,'Desconto    R$');
          rdp.ImpVal(Linha,88,'##0.00',TblPreVendaCabDesconto.Value+TotDesc,[]);
          Inc(Linha);

          rdp.Imp(Linha, 5,'ASS. Comprador ___________________________');
          rdp.Imp(Linha,50,'Total Geral R$');
          rdp.ImpVal(Linha,88,'##0.00',(TblPreVendaCabTotalGeral.Value),[]);  Inc(Linha);
          rdp.Imp(Linha, 20,TblPreVendaCabNomeClienteVenda.AsString); Inc(Linha);

          rdp.Fechar;
        end;

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
