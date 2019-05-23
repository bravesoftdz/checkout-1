unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCrpe32, DB, DBTables, RxQuery, VarSys, ExtCtrls, ComCtrls,
  RDprint, ppDB, ppBands, ppVar, ppCtrls, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppDBBDE, Inifiles;

type
  TFormPrincipal = class(TForm)
    TblPedido: TTable;
    TblPedidoItem: TTable;
    TblPedidoPedICod: TStringField;
    TblPedidoEmitente_Nome: TStringField;
    TblPedidoEmitente_Ender: TStringField;
    TblPedidoEmitente_Bairro: TStringField;
    TblPedidoEmitente_Cidade: TStringField;
    TblPedidoEmitente_UF: TStringField;
    TblPedidoEmitente_CGC: TStringField;
    TblPedidoEmitente_IE: TStringField;
    TblPedidoEmitente_Fone: TStringField;
    TblPedidoDtEmissao: TDateField;
    TblPedidoDestinatario_Nome: TStringField;
    TblPedidoDestinatario_Endereco: TStringField;
    TblPedidoDestinatario_Bairro: TStringField;
    TblPedidoDestinatario_Cep: TStringField;
    TblPedidoDestinatario_Cidade: TStringField;
    TblPedidoDestinatario_UF: TStringField;
    TblPedidoDestinatario_CpfCgc: TStringField;
    TblPedidoDestinatario_IE: TStringField;
    TblPedidoDestinatario_Fone: TStringField;
    TblPedidoDestinatario_Fax: TStringField;
    TblPedidoTransp: TStringField;
    TblPedidoDtaEntrega: TDateField;
    TblPedidoComprador: TStringField;
    TblPedidoOrdemCompra: TStringField;
    TblPedidoPlano: TStringField;
    TblPedidoTipoFrete: TStringField;
    TblPedidoValorFrete: TFloatField;
    TblPedidoTotalDesconto: TFloatField;
    TblPedidoTotal: TFloatField;
    TblPedidoObservacoes: TMemoField;
    TblPedidoVendedor: TStringField;
    TblPedidoEmail: TStringField;
    TblPedidoItemPedICod: TStringField;
    TblPedidoItemCodigo: TIntegerField;
    TblPedidoItemDescricao: TStringField;
    TblPedidoItemVlrUnitario: TFloatField;
    TblPedidoItemVlrTotal: TFloatField;
    TblPedidoItemUn: TStringField;
    TblPedidoItemQtd1: TFloatField;
    TblPedidoItemCor: TStringField;
    TblPedidoItemTecido: TStringField;
    TblPedidoItemLegenda: TIntegerField;
    TblPedidoItemQtd2: TFloatField;
    TblPedidoItemQtd3: TFloatField;
    TblPedidoItemQtd4: TFloatField;
    TblPedidoItemQtd5: TFloatField;
    TblPedidoItemQtd6: TFloatField;
    TblPedidoItemQtd7: TFloatField;
    TblPedidoItemQtd8: TFloatField;
    TblPedidoItemQtd9: TFloatField;
    TblPedidoItemQtd10: TFloatField;
    TblPedidoItemQtd11: TFloatField;
    TblPedidoItemQtd12: TFloatField;
    TblPedidoItemQtd13: TFloatField;
    TblPedidoItemQtd14: TFloatField;
    TblPedidoItemQtd15: TFloatField;
    TblPedidoPEDIDOORCAMENTO: TStringField;
    TblPedidoEmitente_Email: TStringField;
    TblPedidoEmitente_Fax: TStringField;
    TblPedidoItemTroca: TStringField;
    TblPedidoItemDesconto: TFloatField;
    TblPedidoDisplayNumero: TIntegerField;
    TblPedidoItemComplemento: TStringField;
    TblPedidoTroco: TFloatField;
    rdp: TRDprint;
    TblPedidoItemImpCozinha: TStringField;
    TblPedidoItemImpVale: TStringField;
    TblPedidoLevarCasa: TStringField;
    TblPedidoMotoboy: TStringField;
    TicketCab: TTable;
    TicketCabTicketNumero: TStringField;
    TicketCabVendedor: TStringField;
    TicketCabPlano: TStringField;
    TicketCabCliente: TStringField;
    TicketCabFoneCliente: TStringField;
    TicketCabTotalNominal: TFloatField;
    TicketCabTaxaCrediario: TFloatField;
    TicketCabAcrescimo: TFloatField;
    TicketCabDesconto: TFloatField;
    TicketCabTotalGeral: TFloatField;
    TicketCabNomeEmpresa: TStringField;
    TicketCabFoneEmpresa: TStringField;
    TicketCabNroCreditCard: TStringField;
    TicketCabNumerarioPagto: TStringField;
    TicketCabMensagem: TStringField;
    TicketCabDataEntrega: TStringField;
    TicketCabTipoVenda: TStringField;
    TicketCabPessoaRecebeNome: TStringField;
    TicketCabPessoaRecebeEnder: TStringField;
    TicketCabPessoaRecebeBai: TStringField;
    TicketCabPessoaRecebeCid: TStringField;
    TicketCabPessoaRecebeUF: TStringField;
    TicketCabPessoaRecebeFone: TStringField;
    TicketCabMensagem2: TMemoField;
    TicketCabVlrEntrada: TFloatField;
    TicketCabNomeClienteVenda: TStringField;
    TicketCabDocumentoClienteVenda: TStringField;
    TicketCabEnderecoClienteVenda: TStringField;
    TicketCabCidadeClienteVenda: TStringField;
    TicketCabOBSImpressaoCupom: TStringField;
    TicketCabTERMICOD: TIntegerField;
    TicketCabPRVDICOD: TIntegerField;
    TicketCabDataEmissao: TDateTimeField;
    TicketCabFoneClienteVenda: TStringField;
    TicketCabUsuarioVendaSTR: TStringField;
    TicketCabClienteDependente: TIntegerField;
    TicketCabPlacaVeiculo: TStringField;
    TicketCabMesaCodigo: TIntegerField;
    TicketCabContaCodigo: TIntegerField;
    TicketCabTroco: TFloatField;
    TicketCabDisplayNumero: TIntegerField;
    TicketCabLevarCasa: TStringField;
    TicketCabBairroClienteVenda: TStringField;
    TicketCabMotoboy: TStringField;
    TicketItem: TTable;
    TicketItemCodigo: TIntegerField;
    TicketItemDescricao: TStringField;
    TicketItemComplemento: TStringField;
    TicketItemQuantidade: TFloatField;
    TicketItemValorUnitario: TFloatField;
    TicketItemValorTotal: TFloatField;
    TicketItemDesconto: TFloatField;
    TicketItemMarca: TStringField;
    TicketItemReferencia: TStringField;
    TicketItemTroca: TStringField;
    TicketItemImpCozinha: TStringField;
    TicketItemImpVale: TStringField;
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
var CodCliente, ImpressoraCozinha : String;
var Linha, vCol : integer;
var TotDesc : Double;
var ImpCozinha, ImpVale : boolean;
begin
  try
    TicketCab.Open;
    // Testa se tem algum registro na tabela Cabecalho
    if TicketCabTipoVenda.AsString = 'Tele' then
      Abort;

    if TicketCab.RecordCount > 0  then
      begin
        // Testa se tem que imprimir para a Cozinha Produzir
        TicketItem.Open;
        ImpCozinha := False;
        TicketItem.First;
        While not TicketItem.eof Do
          Begin
            if TicketItemImpCozinha.value = 'S' then
              ImpCozinha := True;
            TicketItem.Next;
          End;
        if ImpCozinha then
          begin
            IniFile    := TIniFile.Create ('C:\Unit\Gestao\Parceiro.INI');
            ImpressoraCozinha := IniFile.ReadString('Restaurante','ImpCozinha','');
            IniFile.Free;

            rdp.PortaComunicacao := '';
            rdp.SetPrinterbyName(ImpressoraCozinha);
            rdp.Abrir;
            Linha := 1;
            if TicketCabTipoVenda.Value = 'Tele' then
              begin rdp.ImpF(Linha, 1,'VENDA TELE',[Expandido, Normal]); Inc(Linha,2); end
            else
              begin rdp.ImpF(Linha, 1,'VENDA BALCAO',[Expandido, Normal]); Inc(Linha,2); end;

            if TicketCabDisplayNumero.Value > 0 then
              begin
                rdp.ImpF(Linha, 1,'Display.: ' + TicketCabDisplayNumero.AsString,[Expandido, Normal]);
                Inc(Linha,2);
              end;

            if TicketCabTipoVenda.Value = 'Tele' then
              rdp.Imp(Linha, 1,'Controle....: '  + IntToStr(TicketCabTicketNumero.AsInteger))
            else
              rdp.Imp(Linha, 1,'Controle....: '  + TicketCabTicketNumero.Asstring);
            Inc(Linha,1);
            rdp.Imp(Linha, 1,'Data........: '  + FormatDateTime('dd/mm/yy hh:nn:ss',now)); Inc(Linha,2);
            rdp.Imp(Linha, 1,'----------------------------------------------'); Inc(Linha,1);
            rdp.Imp(Linha, 1,'Quant  Descricao                              '); Inc(Linha);
            rdp.Imp(Linha, 1,'----------------------------------------------'); Inc(Linha,1);
            TicketItem.First;
            While not TicketItem.eof Do
              Begin
                if TicketItemImpCozinha.value = 'S' then
                  begin
                    rdp.ImpVal(Linha,1,'##00',TicketItemQuantidade.Value,[]);
                    rdp.ImpF(Linha, 8,copy(TicketItemDescricao.AsString,1,25),[Expandido, Normal]); Inc(Linha);
                    if TicketItemComplemento.Value <> '' then
                      begin
                        rdp.Imp(Linha, 6,copy(TicketItemComplemento.AsString,1,45)); Inc(Linha);
                      end;
                  end;
                TicketItem.Next;
              End;

            if TicketCabLevarCasa.Value = 'S' then
              begin
                Inc(Linha);
                rdp.ImpF(Linha, 1,'  LEVAR PARA CASA',[Expandido, Normal]); Inc(Linha,2);
              end;

            rdp.Imp(Linha, 1,'----------------------------------------------'); Inc(Linha);
            rdp.Imp(Linha, 1,'.');
            rdp.TamanhoQteLinhas := Linha+5;
            rdp.Fechar;
          end;
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
