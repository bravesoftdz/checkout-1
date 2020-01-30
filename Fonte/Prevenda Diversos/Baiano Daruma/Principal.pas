unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, VarSys, ExtCtrls, ComCtrls, RDprint, Inifiles,
  jpeg, StdCtrls, Buttons, Printers, Spin, dxGDIPlusClasses;

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
    TblPedidoFinanceiroTipopadrao: TStringField;
    TblPreVendaCabVlrEntrada: TFloatField;
    TblPreVendaCabTERMICOD: TIntegerField;
    TblPreVendaCabPRVDICOD: TIntegerField;
    TblPreVendaCabBairroClienteVenda: TStringField;
    TblPreVendaItemComplemento: TStringField;
    TblPedidoFinanceiroParcela: TStringField;
    TblPedidoFinanceiroPortador: TStringField;
    TblPreVendaCabClienteDependente: TStringField;
    TblPreVendaCabDisplayNumero: TIntegerField;
    btimp: TSpeedButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    evias: TSpinEdit;
    TblPreVendaItemUnidade: TStringField;
    bimp: TBitBtn;
    Image1: TImage;
    Modelo: TRadioGroup;
    rdp: TRDprint;
    TblPreVendaCabDataEmissao: TDateTimeField;
    TblPreVendaCabKM: TStringField;
    TblPreVendaCabPlacaVeiculo: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bimpClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
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
begin
  TblPreVendaCab.Open;
  TblPreVendaItem.Open;
  TblPedidoFinanceiro.Open;
  if TblPreVendaCabTipoVenda.AsString <> 'CRD' then
    Modelo.ItemIndex := 1;
end;

procedure TFormPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    TblPreVendacab.DeleteTable;
    TblPreVendaItem.DeleteTable;
    TblPedidoFinanceiro.DeleteTable;
  except
    Application.ProcessMessages;
  end;

  Action := cafree ;
end;

procedure TFormPrincipal.bimpClick(Sender: TObject);
var CodCliente, CodEmpresa, TerminalNome, DataPedido : String;
var Linha, vCol : integer;
var TotDesc, TotConfissao : Double;
var Inifile: TInifile;
var EmpresaNome, EmpresaEndereco, EmpresaFone, Saltar, Obs_Venda, MostraDisplay, ImpBobina, ImpLX300: String;
begin
  // Bobina
  if Modelo.ItemIndex = 0 then
    begin
      try
        IniFile := TIniFile.Create ('C:\Unit\Gestao\Parceiro.INI');
        EmpresaNome     := IniFile.ReadString('IB_Software','EmpresaNome','');
        EmpresaEndereco := IniFile.ReadString('IB_Software','EmpresaEndereco','');
        EmpresaFone     := IniFile.ReadString('IB_Software','EmpresaFone','');
        Saltar          := IniFile.ReadString('IB_Software','Saltar','');
        Obs_Venda       := IniFile.ReadString('IB_Software','Obs_Venda','');
        MostraDisplay   := IniFile.ReadString('IB_Software','GravarDisplaySequencial','');
        ImpBobina       := IniFile.ReadString('IB_Software','ImpBobina','');
        ImpLX300        := IniFile.ReadString('IB_Software','ImpLX300','');
        IniFile.Free;

        CodEmpresa := IntToStr(StrToInt(Copy(TblPreVendaCabTicketNumero.asString,1,3)));
        CodCliente := Copy(TblPreVendaCabCliente.asString,1,13);

        Linha := 1;

        rdp.PortaComunicacao := '';
        rdp.SetPrinterbyName(ImpBobina);
        rdp.NumerodeCopias := evias.Value;
        rdp.Abrir;

        rdp.ImpC(Linha, 3,EmpresaNome,[Expandido, Normal]); Inc(Linha,2);
        rdp.Imp(Linha,  3,EmpresaEndereco); Inc(Linha);
        rdp.Imp(Linha,  3,EmpresaFone); Inc(Linha,2);
        rdp.ImpC(Linha, 3,TblPreVendaCabPEDIDOORCAMENTO.AsString,[Expandido, Normal]); Inc(Linha);

        if (MostraDisplay = 'S') and (TblPreVendaCabDisplayNumero.Value>0) then
          rdp.Imp(Linha, 3,'Controle....: '  + TblPreVendaCabDisplayNumero.AsString)
        else
          rdp.Imp(Linha, 3,'Controle....: '  + TblPreVendaCabTicketNumero.AsString);

        Inc(Linha);

        rdp.Imp(Linha, 3,'Data Ped....: '  + TblPreVendaCabDataEmissao.AsString); Inc(Linha);
        rdp.Imp(Linha, 3,'Impresso em.: '  + FormatDateTime('dd/mm/yyyy hh:nn:ss', now)); Inc(Linha,2);
        rdp.Imp(Linha, 3,'Codigo    Descricao                          ');    Inc(Linha);
        rdp.Imp(Linha, 3,'       Vlr.Unit     Quant   V.Desc  Vlr.Total');    Inc(Linha);
        rdp.Imp(Linha, 3,'---------------------------------------------');    Inc(Linha);

        TotDesc := 0;
        TblPreVendaItem.First;
        While not TblPreVendaItem.eof Do
          Begin
            if TblPreVendaItemTroca.value <> 'S' then
              begin
                rdp.Imp(Linha, 3,FormatFloat('######000000',TblPreVendaItemCodigo.Value));
                rdp.Imp(Linha,10,copy(TblPreVendaItemDescricao.AsString,1,30));  Inc(Linha);
                rdp.ImpVal(Linha,11,'##0.00',TblPreVendaItemValorUnitario.Value,[]);
                rdp.ImpVal(Linha,20,'##0.000',TblPreVendaItemQuantidade.Value,[]);
                rdp.ImpVal(Linha,30,'##0.00',TblPreVendaItemDesconto.Value,[]);
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
                rdp.Imp(Linha, 3,'---------------------------------------------'); Inc(Linha);
                rdp.ImpF(Linha,3,'   D E V O L U C A O',[Expandido, Normal]);     Inc(Linha);
                rdp.Imp(Linha, 3,'---------------------------------------------'); Inc(Linha);
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
                rdp.Imp(Linha, 3,FormatFloat('######000000',TblPreVendaItemCodigo.Value));
                rdp.Imp(Linha,10,copy(TblPreVendaItemDescricao.AsString,1,30));  Inc(Linha);
                rdp.ImpVal(Linha,11,'##0.00',TblPreVendaItemValorUnitario.Value,[]);
                rdp.ImpVal(Linha,20,'##0.000',TblPreVendaItemQuantidade.Value,[]);
                rdp.ImpVal(Linha,30,'##0.00',TblPreVendaItemDesconto.Value,[]);
                rdp.ImpVal(Linha,41,'##0.00',TblPreVendaItemValorTotal.Value,[]); Inc(Linha);
              end;
            TblPreVendaItem.Next;
          End;
        // Final Venda
        rdp.Imp(Linha,3,'---------------------------------------------'); Inc(Linha);
        rdp.Imp(Linha,22,'Total Itens R$');
        rdp.ImpVal(Linha,41,'##0.00',TblPreVendaCabTotalNominal.Value,[]); Inc(Linha);
        rdp.Imp(Linha,22,'Desconto    R$');
        rdp.ImpVal(Linha,41,'##0.00',TblPreVendaCabDesconto.Value+TotDesc,[]);
        Inc(Linha);
        rdp.Imp(Linha,3,'                     ------------------------'); Inc(Linha);
        rdp.Imp(Linha,22,'Total Geral R$');
        rdp.ImpVal(Linha,41,'##0.00',(TblPreVendaCabTotalGeral.Value),[]);  Inc(Linha);
        // Numerarios da venda
        if TblPreVendaCabPEDIDOORCAMENTO.AsString = 'PEDIDO' then
          begin
            TotConfissao := 0;
            TblPedidoFinanceiro.Open;
            while not TblPedidoFinanceiro.eof do
              begin
                if TblPedidoFinanceiroTipopadrao.Value = 'CRD' then
                  rdp.Imp(Linha,10,FormatDateTime('dd/mm/yyyy',TblPedidoFinanceiroVencimento.Value));

                rdp.Imp(Linha,22,TblPedidoFinanceiroNumerario.Value);
                if (TblPedidoFinanceiro.RecordCount = 1) and (TblPreVendaCabTroco.Value > 0) and (TblPedidoFinanceiroTipopadrao.Value= 'DIN') then
                  rdp.ImpVal(Linha,41,'##0.00',(TblPedidoFinanceiroValor.Value+TblPreVendaCabTroco.Value),[])
                else
                  rdp.ImpVal(Linha,41,'##0.00',(TblPedidoFinanceiroValor.Value),[]);
                Inc(Linha);
                if TblPedidoFinanceiroTipopadrao.Value = 'CRD' then
                  TotConfissao := TotConfissao + TblPedidoFinanceiroValor.Value;
                TblPedidoFinanceiro.Next;
              end;
            TblPedidoFinanceiro.Close;
          end;
        if TblPreVendaCabPEDIDOORCAMENTO.AsString = 'PEDIDO' then
          begin
            rdp.Imp(Linha,3,'                     ------------------------'); Inc(Linha);
            rdp.Imp(Linha,22,'Troco R$');
            rdp.ImpVal(Linha,41,'##0.00',(TblPreVendaCabTroco.Value),[]);  Inc(Linha);
          end;

        rdp.Imp(Linha, 3,'---------------------------------------------'); Inc(Linha);
        rdp.Imp(Linha, 3,'Cliente.: '+ copy(TblPreVendaCabNomeClienteVenda.AsString,1,35)); Inc(Linha);
        if TblPreVendaCabClienteDependente.AsString <> '' then
          begin rdp.Imp(Linha, 3,'Autoriz.: '+ TblPreVendaCabClienteDependente.AsString); Inc(Linha); end;
        if TblPreVendaCabFoneClienteVenda.AsString <> '' then
          begin rdp.Imp(Linha, 3,'          '+ copy(TblPreVendaCabFoneClienteVenda.AsString,1,35)); Inc(Linha); end;
        if TblPreVendaCabEnderecoClienteVenda.AsString <> '' then
          begin rdp.Imp(Linha, 3,'          '+ copy(TblPreVendaCabEnderecoClienteVenda.AsString,1,35)); Inc(Linha); end;
        if TblPreVendaCabBairroClienteVenda.AsString <> '' then
          begin rdp.Imp(Linha, 3,'          '+ copy(TblPreVendaCabBairroClienteVenda.AsString,1,35)); Inc(Linha); end;
        if TblPreVendaCabCidadeClienteVenda.AsString <> '' then
          begin rdp.Imp(Linha, 3,'          '+ copy(TblPreVendaCabCidadeClienteVenda.AsString,1,35)); Inc(Linha); end;
        if TblPreVendaCabPlacaVeiculo.AsString <> '' then
          begin rdp.Imp(Linha, 3,'Placa:    '+ TblPreVendaCabPlacaVeiculo.AsString); Inc(Linha); end;
        rdp.Imp(Linha, 3,'Plano...: '+ copy(TblPreVendaCabPlano.AsString,1,30)); Inc(Linha);
        rdp.Imp(Linha, 3,'Vendedor: '+ copy(TblPreVendaCabVendedor.AsString,1,30)); Inc(Linha);
        rdp.Imp(Linha, 3,'Operador: '+ copy(TblPreVendaCabUsuarioVendaSTR.AsString,1,30)); Inc(Linha);
        rdp.Imp(Linha, 3,'Terminal: '+ FormatFloat('###000',TblPreVendaCabTERMICOD.Value)); Inc(Linha);
        rdp.Imp(Linha, 3,'Observ..: '+ copy(TblPreVendaCabOBSImpressaoCupom.AsString,1,30)); Inc(Linha);
        rdp.Imp(Linha, 3,'---------------------------------------------'); Inc(Linha);
        rdp.Imp(Linha, 3,Obs_Venda); Inc(Linha);
        rdp.Imp(Linha, 3,'---------------------------------------------'); Inc(Linha,2);

        if TblPreVendaCabTipoVenda.Value = 'CRD' then
          begin
            Inc(Linha,2);
            rdp.ImpC(Linha, 3,EmpresaNome,[Expandido, Normal]); Inc(Linha,2);
            rdp.Imp(Linha,  3,EmpresaEndereco); Inc(Linha);
            rdp.Imp(Linha,  3,EmpresaFone); Inc(Linha,2);
            rdp.Imp(Linha,  3,'Controle....: '  + TblPreVendaCabTicketNumero.AsString); Inc(Linha);
            rdp.Imp(Linha,  3,'Impresso em.: '  + FormatDateTime('dd/mm/yy hh:nn:ss', now)); Inc(Linha);
            rdp.Imp(Linha,  3,'Operador: '+ copy(TblPreVendaCabUsuarioVendaSTR.AsString,1,30)); Inc(Linha);
            rdp.Imp(Linha,  3,'Terminal: '+ FormatFloat('###000',TblPreVendaCabTERMICOD.Value)); Inc(Linha);
            rdp.Imp(Linha,  3,'---------------------------------------------'); Inc(Linha);
            rdp.Imp(Linha,  3,'           CONFISSAO DE DIVIDA              '); Inc(Linha);
            rdp.Imp(Linha,  3,'---------------------------------------------'); Inc(Linha);
            rdp.Imp(Linha,20,'Valor R$');
            rdp.ImpVal(Linha,41,'##0.00',(TotConfissao),[]);  Inc(Linha);
            rdp.Imp(Linha, 3,' DECLARO PARA OS DEVIDOS FINS, QUE RECEBI AS'); Inc(Linha);
            rdp.Imp(Linha, 3,' MERCADORIAS E  QUE PAGAREI  PELA  COMPRA NO'); Inc(Linha);
            rdp.Imp(Linha, 3,' VENCIMENTO ACORDADO!                       '); Inc(Linha,2);
            rdp.Imp(Linha, 3,'ASS. _______________________________________'); Inc(Linha);
            rdp.Imp(Linha, 5,TblPreVendaCabNomeClienteVenda.AsString); Inc(Linha);
          end;
        Linha:=Linha+StrToInt(Saltar);
        rdp.Imp(Linha, 3,' '); Inc(Linha);
        rdp.TamanhoQteLinhas := Linha;
        rdp.Fechar;
        Application.ProcessMessages;
      except
        Application.ProcessMessages;
      end;
    end;

  // Epson Lx300
  if Modelo.ItemIndex = 1 then
    begin
      try
        IniFile := TIniFile.Create ('C:\Unit\Gestao\Parceiro.INI');
        EmpresaNome     := IniFile.ReadString('IB_Software','EmpresaNome','');
        EmpresaEndereco := IniFile.ReadString('IB_Software','EmpresaEndereco','');
        EmpresaFone     := IniFile.ReadString('IB_Software','EmpresaFone','');
        Saltar          := IniFile.ReadString('IB_Software','Saltar','');
        Obs_Venda       := IniFile.ReadString('IB_Software','Obs_Venda','');
        MostraDisplay   := IniFile.ReadString('IB_Software','GravarDisplaySequencial','');
        ImpBobina       := IniFile.ReadString('IB_Software','ImpBobina','');
        ImpLX300        := IniFile.ReadString('IB_Software','ImpLX300','');
        IniFile.Free;

        CodEmpresa   := IntToStr(StrToInt(Copy(TblPreVendaCabTicketNumero.asString,1,3)));
        CodCliente   := Copy(TblPreVendaCabCliente.asString,1,13);

        Linha := 1;
        rdp.NumerodeCopias := evias.Value;
        rdp.PortaComunicacao := '';
        rdp.SetPrinterbyName(ImpLX300);
        rdp.Abrir;
        rdp.Imp(Linha, 3,EmpresaNome);
        rdp.Imp(Linha, 55,TblPreVendaCabPEDIDOORCAMENTO.AsString); Inc(Linha);
        rdp.Imp(Linha,  3,EmpresaEndereco);
        rdp.Imp(Linha, 55,'Controle: '  + TblPreVendaCabTicketNumero.AsString);  Inc(Linha);
        rdp.Imp(Linha,  3,EmpresaFone);
        rdp.Imp(Linha, 40,'Vendedor: '+ TblPreVendaCabVendedor.AsString);
        rdp.Imp(Linha, 64,'Data.: '  + FormatDateTime('dd/mm/yyyy',TblPreVendaCabDataEmissao.Value)); Inc(Linha);
        rdp.Imp(Linha,  3,'Cliente.: '+ TblPreVendaCabNomeClienteVenda.AsString);
        rdp.Imp(Linha, 40,'Autoriz.: '+ TblPreVendaCabClienteDependente.AsString);
        rdp.Imp(Linha, 64,'Fone: '+ TblPreVendaCabFoneClienteVenda.AsString); Inc(Linha);
        rdp.Imp(Linha,  3,'Endereco: '+ TblPreVendaCabEnderecoClienteVenda.AsString);
        rdp.Imp(Linha, 40,'Bairro: '+ TblPreVendaCabBairroClienteVenda.AsString);
        rdp.Imp(Linha, 64,'Cidade: '+ TblPreVendaCabCidadeClienteVenda.AsString); Inc(Linha);
        rdp.Imp(Linha, 3,'------------------------------------------------------------------------------'); Inc(Linha);
        rdp.Imp(Linha, 3,'Produto                            Un Marca       Quant   Vlr.Unit   Vlr.Total'); Inc(Linha);
        rdp.Imp(Linha, 3,'------------------------------------------------------------------------------'); Inc(Linha);
        TotDesc := 0;
        TblPreVendaItem.First;
        While not TblPreVendaItem.eof Do
          Begin
            if TblPreVendaItemTroca.value <> 'S' then
              begin
                rdp.Imp(Linha,3,TblPreVendaItemCodigo.AsString+'-'+copy(TblPreVendaItemDescricao.AsString,1,25));
                rdp.Imp(Linha,38,TblPreVendaItemUnidade.AsString);
                rdp.Imp(Linha,41,TblPreVendaItemMarca.AsString);
                rdp.ImpVal(Linha,51 ,'##0.000',TblPreVendaItemQuantidade.Value,[]);
                rdp.ImpVal(Linha,63,'##0.00',TblPreVendaItemValorUnitario.Value,[]);
                rdp.ImpVal(Linha,74,'##0.00',TblPreVendaItemValorTotal.Value,[]); Inc(Linha);
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
                rdp.Imp(Linha, 3,'---------------------------------------------'); Inc(Linha);
                rdp.ImpF(Linha,3,'   D E V O L U C A O',[Expandido, Normal]);     Inc(Linha);
                rdp.Imp(Linha, 3,'---------------------------------------------'); Inc(Linha);
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
                rdp.Imp(Linha,3,TblPreVendaItemCodigo.AsString+'-'+copy(TblPreVendaItemDescricao.AsString,1,25));
                rdp.Imp(Linha,38,TblPreVendaItemUnidade.AsString);
                rdp.Imp(Linha,41,TblPreVendaItemMarca.AsString);
                rdp.ImpVal(Linha,51 ,'##0.000',TblPreVendaItemQuantidade.Value,[]);
                rdp.ImpVal(Linha,63,'##0.00',TblPreVendaItemValorUnitario.Value,[]);
                rdp.ImpVal(Linha,74,'##0.00',TblPreVendaItemValorTotal.Value,[]); Inc(Linha);
              end;
            TblPreVendaItem.Next;
          End;
        // Final Venda
        rdp.Imp(Linha, 3,'------------------------------------------------------------------------------'); Inc(Linha);
        rdp.Imp(Linha, 3,'ASS. _______________________________________');
        rdp.Imp(Linha,54,'Total Geral R$');
        rdp.ImpVal(Linha,74,'##0.00',TblPreVendaCabTotalNominal.Value,[]); Inc(Linha);

        Linha:=Linha+StrToInt(Saltar);
        rdp.Imp(Linha, 3,' '); Inc(Linha);
        rdp.TamanhoQteLinhas := Linha;
        rdp.Fechar;
        Application.ProcessMessages;
      except
        Application.ProcessMessages;
      end;
    end;
end;

procedure TFormPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=char(13) Then
    Perform(Wm_NextDlgCtl,0,0);
end;

end.
