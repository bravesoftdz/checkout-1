unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, VarSys, ExtCtrls, ComCtrls,
  RDprint, Inifiles;

type
  TFormPrincipal = class(TForm)
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
    TicketItemPRODA30COZINHA: TStringField;
    TicketCabTaxaTele: TFloatField;
    TicketCabSequencial: TIntegerField;
    TicketCabDataEmissao: TStringField;
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
var CodCliente, ImpressoraCozinha01, ImpressoraCozinha02, ImpressoraCozinha03, ImpressoraCozinha04, ImpressoraCozinha05, arq_new : String;
var Linha, vCol : integer;
var TotDesc : Double;
var ImpCozinha1, ImpVale : boolean;
begin
  try
    TicketCab.Open;
    // Testa se tem algum registro na tabela Cabecalho
    if TicketCab.RecordCount > 0  then
      begin
        // Testa se tem que imprimir para a Cozinha Produzir
        TicketItem.Open;
        ImpCozinha1 := False;
        TicketItem.First;
        While not TicketItem.eof Do
          Begin
            if TicketItemImpCozinha.value = 'S' then
              begin
                if TicketItemPRODA30COZINHA.Value = 'Cozinha01' then ImpCozinha1 := True;
              end;
            TicketItem.Next;
          End;
        if (ImpCozinha1) then
          begin
            IniFile             := TIniFile.Create ('C:\Unit\Gestao\Parceiro.INI');
            ImpressoraCozinha01 := IniFile.ReadString('Restaurante','ImpCozinha01','');
            IniFile.Free;

            // Se a var for true e tiver impressora cadastrada no Parceiro.txt, tenta imprimir
            if (ImpCozinha1) and (ImpressoraCozinha01 <> '') then
              begin
                rdp.PortaComunicacao := '';
                rdp.SetPrinterbyName(ImpressoraCozinha01);
                rdp.Abrir;
                Linha := 1;
                if TicketCabTipoVenda.Value = 'Mesa' then
                  begin
                    rdp.ImpF(Linha, 1,'PEDIDO MESA => '+TicketCabMesaCodigo.Asstring,[Expandido, Normal]); Inc(Linha);
                    rdp.ImpF(Linha, 1,'  COMANDA  ==> '+TicketCabContaCodigo.Asstring,[Expandido, Normal]);
                    Inc(Linha,2);
                  end;
                if TicketCabTipoVenda.Value = 'Tele' then
                  begin
                    if TicketCabSequencial.Value > 0 then
                      rdp.ImpF(Linha, 1,'Tele Nro => '  + IntToStr(TicketCabSequencial.Value),[Expandido, Normal])
                    else
                      rdp.ImpF(Linha, 1,'Tele Nro => '  + TicketCabTicketNumero.Asstring,[Expandido, Normal]);
                    Inc(Linha,2);
                  end;
                if (TicketCabTipoVenda.Value = 'C') then
                  begin
                    rdp.ImpF(Linha, 1,'VENDA BALCAO',[Expandido, Normal]);
                    Inc(Linha,2);
                  end;
                if TicketCabDisplayNumero.Value > 0 then
                  begin
                    rdp.ImpF(Linha, 1,'Display.: ' + TicketCabDisplayNumero.AsString,[Expandido, Normal]);
                    Inc(Linha,2);
                  end;

                rdp.Imp(Linha, 1,'Cliente.....: '  + TicketCabNomeClienteVenda.Value); Inc(Linha,2);
                rdp.Imp(Linha, 1,'Data........: '  + TicketCabDataEmissao.Value); Inc(Linha,2);
                rdp.Imp(Linha, 1,'-----------------------------------------------'); Inc(Linha,1);
                rdp.Imp(Linha, 1,'Qtde Descricao                                 '); Inc(Linha);
                rdp.Imp(Linha, 1,'-----------------------------------------------'); Inc(Linha,1);
                TicketItem.First;
                While not TicketItem.eof Do
                  Begin
                    if TicketItemImpCozinha.value = 'S' then
                      begin
                        if TicketItemPRODA30COZINHA.Value = 'Cozinha01' then
                          begin
                            rdp.ImpF(Linha,1,FormatFloat('##00',TicketItemQuantidade.Value),[Expandido, Normal]);
                            rdp.ImpF(Linha,2,copy(TicketItemDescricao.AsString,1,21),[Expandido, Normal]); Inc(Linha);
                            if length(TicketItemDescricao.AsString) > 21 then
                              begin rdp.ImpF(Linha,3,copy(TicketItemDescricao.AsString,22,10),[Expandido, Normal]); Inc(Linha); end;
                            if TicketItemComplemento.Value <> '' then
                              begin
                                rdp.ImpF(Linha, 2,copy(TicketItemComplemento.AsString,1,21),[Expandido, Normal]); Inc(Linha);
                                if length(TicketItemComplemento.AsString) > 21 then
                                  begin rdp.ImpF(Linha, 3,copy(TicketItemComplemento.AsString,22,21),[Expandido, Normal]); Inc(Linha); end;
                                if length(TicketItemComplemento.AsString) > 42 then
                                  begin rdp.ImpF(Linha, 3,copy(TicketItemComplemento.AsString,43,21),[Expandido, Normal]); Inc(Linha); end;
                              end;
                            Inc(Linha);
                          end;
                      end;
                    TicketItem.Next;
                  End;

                if TicketCabLevarCasa.Value = 'S' then
                  begin
                    Inc(Linha);
                    rdp.ImpF(Linha, 1,'  LEVAR PARA CASA',[Expandido, Normal]); Inc(Linha,2);
                  end;

                Inc(Linha,5);
                rdp.Imp(Linha, 1,'---Final Pedido---'); Inc(Linha);
                rdp.TamanhoQteLinhas := Linha+5;
                rdp.Fechar;
              end;

            TicketCab.Close;
            TicketItem.Close;
            Application.Terminate;
          end;
      end;
    TicketCab.Close;
    TicketItem.Close;
    Application.Terminate;
  except
    TicketCab.Close;
    TicketItem.Close;
    Application.Terminate;
  end;
end;

procedure TFormPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree ;
end;

end.
