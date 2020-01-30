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
    TblPreVendaCabEmpresaEmit: TStringField;
    TblPreVendaCabEmpresaEmit_Ender: TStringField;
    TblPreVendaCabEmpresaEmit_Bairro: TStringField;
    TblPreVendaCabEmpresaEmit_Cidade: TStringField;
    TblPreVendaCabEmpresaEmit_Fone: TStringField;
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
var CodCliente, CodVendaMontado, TerminalNome, DataPedido : String;
var Linha, vCol : integer;
var TotDesc, TotConfissao : Double;
var Inifile: TInifile;
    EmpresaNome, EmpresaEndereco, EmpresaFone, NroViasImpVenda, Saltar, Obs_Venda, MostraDisplay: String;
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

    CodVendaMontado   := IntToStr(StrToInt(Copy(TblPreVendaCabTicketNumero.asString,1,3))) +'.'+
                         IntToStr(StrToInt(Copy(TblPreVendaCabTicketNumero.asString,4,3))) +'.'+
                         IntToStr(StrToInt(Copy(TblPreVendaCabTicketNumero.asString,7,7)));

    CodCliente   := Copy(TblPreVendaCabCliente.asString,1,13);

    EmpresaNome     := TblPreVendaCabEmpresaEmit.Value;
    EmpresaEndereco := TblPreVendaCabEmpresaEmit_Ender.value;
    EmpresaFone     := TblPreVendaCabEmpresaEmit_Fone.Value;

    Linha := 1;
    rdp.NumerodeCopias := 1;
    rdp.Abrir;
    rdp.ImpC(Linha, 1,EmpresaNome,[Expandido, Normal]); Inc(Linha,2);
    rdp.ImpC(Linha, 1,EmpresaEndereco,[Normal, Normal]); Inc(Linha);
    rdp.ImpC(Linha, 1,EmpresaFone,[Normal, Normal]); Inc(Linha,2);

    rdp.ImpC(Linha, 1,'Controle....: '  + CodVendaMontado,[Normal, Normal]);
    rdp.Imp(Linha, 1,'Data Ped....: '  + TblPreVendaCabDataEmissao.AsString); Inc(Linha);
    rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha);
    rdp.Imp(Linha, 1,'Cliente.: '+ copy(TblPreVendaCabNomeClienteVenda.AsString,1,35)); Inc(Linha);
    rdp.Imp(Linha, 1,'Plano...: '+ copy(TblPreVendaCabPlano.AsString,1,30)); Inc(Linha);
    rdp.Imp(Linha, 1,'Vendedor: '+ copy(TblPreVendaCabVendedor.AsString,1,30)); Inc(Linha);
    rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha);
    rdp.Imp(Linha,1,'Codigo Descricao      Quant  V.Unit  Vlr.Total');    Inc(Linha);
    rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha);
    TotDesc := 0;
    TblPreVendaItem.First;
    While not TblPreVendaItem.eof Do
      Begin
        if TblPreVendaItemTroca.value <> 'S' then
          begin
            rdp.Imp(Linha, 1,FormatFloat('######000000',TblPreVendaItemCodigo.Value));
            rdp.Imp(Linha, 8,copy(TblPreVendaItemDescricao.AsString,1,14));
            rdp.ImpVal(Linha,24,'##00',TblPreVendaItemQuantidade.Value,[]);
            rdp.ImpVal(Linha,30,'##0.00',TblPreVendaItemValorUnitario.Value,[]);
            rdp.ImpVal(Linha,41,'##0.00',TblPreVendaItemValorTotal.Value,[]); Inc(Linha);
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
            rdp.Imp(Linha, 8,copy(TblPreVendaItemDescricao.AsString,1,14));
            rdp.ImpVal(Linha,24,'##00',TblPreVendaItemQuantidade.Value,[]);
            rdp.ImpVal(Linha,30,'##0.00',TblPreVendaItemValorUnitario.Value,[]);
            rdp.ImpVal(Linha,41,'##0.00',TblPreVendaItemValorTotal.Value,[]); Inc(Linha);
          end;
        TblPreVendaItem.Next;
      End;

    // Final Venda
    rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha);
    rdp.Imp(Linha,22,'Total Itens R$');
    rdp.ImpVal(Linha,41,'##0.00',TblPreVendaCabTotalNominal.Value,[]); Inc(Linha);
    rdp.Imp(Linha,22,'Desconto    R$');
    rdp.ImpVal(Linha,41,'##0.00',TblPreVendaCabDesconto.Value+TotDesc,[]);  Inc(Linha);
    rdp.Imp(Linha,22,'Total Geral R$');
    rdp.ImpVal(Linha,41,'##0.00',(TblPreVendaCabTotalGeral.Value),[]);  Inc(Linha,3);


    rdp.Imp(Linha,1,'----------------------'); Inc(Linha);
    rdp.Imp(Linha,1,'    Ass. Cliente:'); Inc(Linha);

    Linha:=Linha+StrToInt(Saltar);
    rdp.Imp(Linha, 1,' '); Inc(Linha);
    rdp.TamanhoQteLinhas := 1;
    rdp.fechar;

    if NroViasImpVenda = '2' then
      if Application.MessageBox(PChar('Imprimir Segunda Via?'), PChar(Application.Title), MB_SYSTEMMODAL + MB_YesNo + MB_IconQuestion + MB_DEFBUTTON2) = IdYes then
        begin
          Linha := 1;
          rdp.NumerodeCopias := 1;
          rdp.Abrir;
          rdp.ImpC(Linha, 1,EmpresaNome,[Expandido, Normal]); Inc(Linha,2);
          rdp.ImpC(Linha, 1,EmpresaEndereco,[Normal, Normal]); Inc(Linha);
          rdp.ImpC(Linha, 1,EmpresaFone,[Normal, Normal]); Inc(Linha,2);

          rdp.ImpC(Linha, 1,'Controle....: '  + CodVendaMontado,[Normal, Normal]);
          rdp.Imp(Linha, 1,'Data Ped....: '  + TblPreVendaCabDataEmissao.AsString); Inc(Linha);
          rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha);
          rdp.Imp(Linha, 1,'Cliente.: '+ copy(TblPreVendaCabNomeClienteVenda.AsString,1,35)); Inc(Linha);
          rdp.Imp(Linha, 1,'Plano...: '+ copy(TblPreVendaCabPlano.AsString,1,30)); Inc(Linha);
          rdp.Imp(Linha, 1,'Vendedor: '+ copy(TblPreVendaCabVendedor.AsString,1,30)); Inc(Linha);
          rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha);
          rdp.Imp(Linha,1,'Codigo Descricao      Quant  V.Unit  Vlr.Total');    Inc(Linha);
          rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha);
          TotDesc := 0;
          TblPreVendaItem.First;
          While not TblPreVendaItem.eof Do
            Begin
              if TblPreVendaItemTroca.value <> 'S' then
                begin
                  rdp.Imp(Linha, 1,FormatFloat('######000000',TblPreVendaItemCodigo.Value));
                  rdp.Imp(Linha, 8,copy(TblPreVendaItemDescricao.AsString,1,14));
                  rdp.ImpVal(Linha,24,'##00',TblPreVendaItemQuantidade.Value,[]);
                  rdp.ImpVal(Linha,30,'##0.00',TblPreVendaItemValorUnitario.Value,[]);
                  rdp.ImpVal(Linha,41,'##0.00',TblPreVendaItemValorTotal.Value,[]); Inc(Linha);
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
                  rdp.Imp(Linha, 8,copy(TblPreVendaItemDescricao.AsString,1,14));
                  rdp.ImpVal(Linha,24,'##00',TblPreVendaItemQuantidade.Value,[]);
                  rdp.ImpVal(Linha,30,'##0.00',TblPreVendaItemValorUnitario.Value,[]);
                  rdp.ImpVal(Linha,41,'##0.00',TblPreVendaItemValorTotal.Value,[]); Inc(Linha);
                end;
              TblPreVendaItem.Next;
            End;

          // Final Venda
          rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha);
          rdp.Imp(Linha,22,'Total Itens R$');
          rdp.ImpVal(Linha,41,'##0.00',TblPreVendaCabTotalNominal.Value,[]); Inc(Linha);
          rdp.Imp(Linha,22,'Desconto    R$');
          rdp.ImpVal(Linha,41,'##0.00',TblPreVendaCabDesconto.Value+TotDesc,[]);  Inc(Linha);
          rdp.Imp(Linha,22,'Total Geral R$');
          rdp.ImpVal(Linha,41,'##0.00',(TblPreVendaCabTotalGeral.Value),[]);  Inc(Linha,3);


          rdp.Imp(Linha,1,'----------------------'); Inc(Linha);
          rdp.Imp(Linha,1,'    Ass. Cliente:'); Inc(Linha);

          Linha:=Linha+StrToInt(Saltar);
          rdp.Imp(Linha, 1,' '); Inc(Linha);
          rdp.TamanhoQteLinhas := 1;
          rdp.fechar;
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
