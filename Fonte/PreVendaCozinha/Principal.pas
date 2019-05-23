unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, ComCtrls, RDprint, Inifiles, ppPrnabl,
  ppClass, ppCtrls, ppCache, ppBands, ppComm, ppRelatv, ppProd, ppReport,
  StdCtrls, ACBrNFeDANFEClass, ACBrNFeDANFeESCPOS, ACBrBase, ACBrPosPrinter;

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
    TblPreVendaItemImpCozinha: TStringField;
    TblPreVendaItemImpVale: TStringField;
    TblPreVendaItemPRODA30COZINHA: TStringField;
    ACBrPosPrinter: TACBrPosPrinter;
    Memo: TMemo;
    TblPreVendaCabTicketNumero: TStringField;
    TblPreVendaCabDataEmissao: TStringField;
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
    TblPreVendaCabClienteDependente: TIntegerField;
    TblPreVendaCabPlacaVeiculo: TStringField;
    TblPreVendaCabMesaCodigo: TIntegerField;
    TblPreVendaCabContaCodigo: TIntegerField;
    TblPreVendaCabTroco: TFloatField;
    TblPreVendaCabDisplayNumero: TIntegerField;
    TblPreVendaCabBusca: TStringField;
    TblPreVendaCabLevarCasa: TStringField;
    TblPreVendaCabBairroClienteVenda: TStringField;
    TblPreVendaCabMotoboy: TStringField;
    TblPreVendaCabTaxaTele: TFloatField;
    TblPreVendaCabSequencial: TIntegerField;
    TblPreVendaCabSeq_Dia: TIntegerField;
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
var CodCliente, NroReduzido, ImpMarca, ImpCaixaPorta,
    ImpCaixaVeloc, Cartao: String;
var SomaItens : Double;
var ImpVale : boolean;
var i : integer;
begin
  try
    memo.Lines.Clear;
    TblPreVendacab.Open;
    TblPreVendaItem.Open;
    TblPedidoFinanceiro.Open;

    TblPreVendaItem.First;
    SomaItens := 0;
    While Not TblPreVendaItem.Eof Do
      Begin
        if TblPreVendaItemImpCozinha.Value = 'S' then
          SomaItens := SomaItens + TblPreVendaItemValorUnitario.Value;
        TblPreVendaItem.Next;
      End;
    if SomaItens = 0 then
      Exit;
    IniFile             := TIniFile.Create('C:\Easy2Solutions\Gestao\Parceiro.ini');
    ImpMarca            := IniFile.ReadString('Restaurante','ImpMarca','EPSON');
    ImpCaixaPorta       := IniFile.ReadString('Restaurante','ImpCozinhaPorta','');
    ImpCaixaVeloc       := IniFile.ReadString('Restaurante','ImpCaixaVeloc','38400');
    IniFile.Free;

    memo.Lines.Add(' ');
    memo.Lines.Add(' ');
    memo.Lines.Add('</ce><e>'  +FormatFloat('00000',TblPreVendaCabSeq_Dia.Value)+'</e>');
    memo.Lines.Add('</ce><e>'  +TblPreVendaCabNomeEmpresa.Value+'</e>');
    memo.Lines.Add('</ce><e>'  +TblPreVendaCabFoneEmpresa.Value+'</e>');
    memo.Lines.Add(' ');

    if (TblPreVendaCabMesaCodigo.Value>0) and (TblPreVendaCabContaCodigo.Value>0) then
      begin
        memo.Lines.Add('</ae><e>MESA=> '+TblPreVendaCabMesaCodigo.Asstring+' COMANDA=> '+TblPreVendaCabContaCodigo.Asstring+'</e>');
        memo.Lines.Add(' ');
        memo.Lines.Add('</ae><e>Display => '+TblPreVendaCabSequencial.Asstring+'</e>');
        memo.Lines.Add(' ');
      end;

    if (TblPreVendaCabMesaCodigo.Value<1) and (TblPreVendaCabContaCodigo.Value>0) then
      begin
        memo.Lines.Add('</ae><e>COMANDA=> '+TblPreVendaCabContaCodigo.Asstring+'</e>');
        memo.Lines.Add(' ');
        memo.Lines.Add('</ae><e>Display => '+TblPreVendaCabSequencial.Asstring+'</e>');
        memo.Lines.Add(' ');
      end;

//    memo.Lines.Add('</fn>------------------------------------------------');
//    memo.Lines.Add('Data: '+FormatDateTime('dd/mm/yy hh:nn:ss',now));
//    memo.Lines.Add('</fn>------------------------------------------------');
//    memo.Lines.Add('</fn>Qte Descricao                          Vlr.Total');
//    memo.Lines.Add('</fn>------------------------------------------------');

    memo.Lines.Add('</e></fn>');

    memo.Lines.Add('</fn>------------------------------------------------');
    memo.Lines.Add('</fn>Qte Descricao                                   ');
    memo.Lines.Add('</fn>------------------------------------------------');

    If not TblPreVendaItem.Active then TblPreVendaItem.Open;
    TblPreVendaItem.First;
    While not TblPreVendaItem.eof Do
      Begin
        if TblPreVendaItemImpCozinha.Value = 'S' then
        begin
        memo.Lines.Add('</ae><e>'+FormatFloat('##00',TblPreVendaItemQuantidade.Value) + ' ' + TblPreVendaItemDescricao.AsString);
        if TblPreVendaItemComplemento.Value <> '' then
          memo.Lines.Add('   ' + TblPreVendaItemComplemento.AsString + '</e></ae>');
        memo.Lines.Add('</ae></fn>------------------------------------------------');
        end;
        TblPreVendaItem.Next;
      End;

    // Final Venda

    memo.Lines.Add('</ae>------------------------------------------------');
    if TblPreVendaCabOBSImpressaoCupom.AsString <> '' then
      Memo.Lines.Add('<e></ce>'+TblPreVendaCabOBSImpressaoCupom.AsString+'</e>');
    memo.Lines.Add(' ');
    memo.Lines.Add(' ');
    memo.Lines.Add('</corte_parcial>');

    if ImpMarca = 'EPSON'      then ACBrPosPrinter.Modelo := ppEscPosEpson;
    if ImpMarca = 'ELGIN'      then ACBrPosPrinter.Modelo := ppEscVox;
    if ImpMarca = 'BEMATECH'   then ACBrPosPrinter.Modelo := ppEscBematech;
    if ImpMarca = 'DARUMA'     then ACBrPosPrinter.Modelo := ppEscDaruma;
    if ImpMarca = 'NFCE DR700' then ACBrPosPrinter.Modelo := ppEscDaruma;
    if ImpMarca = 'NFCE DR800' then ACBrPosPrinter.Modelo := ppEscDaruma;

    ACBrPosPrinter.Device.Porta := ImpCaixaPorta;
    ACBrPosPrinter.Device.Baud  := StrToint(ImpCaixaVeloc);
    ACBrPosPrinter.Device.Ativar;
    try
      ACBrPosPrinter.Imprimir(Memo.Lines.Text);
    finally
      ACBrPosPrinter.Device.Desativar;
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
