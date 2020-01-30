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
    TicketItemPRODA30COZINHA: TStringField;
    TicketCabSequencial: TIntegerField;
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
var Inifile: TInifile;
var CodCliente, ImpressoraCozinha01, ImpressoraCozinha02, ImpressoraCozinha03 : String;
var Linha, vCol : integer;
var TotDesc : Double;
var ImpCozinha1, ImpCozinha2, ImpCozinha3 , ImpVale : boolean;
begin
  try
    TicketCab.Open;
    // Testa se tem algum registro na tabela Cabecalho
    if TicketCab.RecordCount > 0  then
      begin
        // Testa se tem que imprimir para a Cozinha Produzir
        TicketItem.Open;
        ImpCozinha1 := False;
        ImpCozinha2 := False;
        ImpCozinha3 := False;
        TicketItem.First;
        while not TicketItem.eof Do
          begin
            if TicketItemImpCozinha.value = 'S' then
              begin
                if TicketItemPRODA30COZINHA.Value = 'Cozinha01' then ImpCozinha1 := True;
                if TicketItemPRODA30COZINHA.Value = 'Cozinha02' then ImpCozinha2 := True;
                if TicketItemPRODA30COZINHA.Value = 'Cozinha03' then ImpCozinha3 := True;
              end;
            TicketItem.Next;
          end;
        if (ImpCozinha1) or (ImpCozinha2) or (ImpCozinha3) then
          begin
            IniFile             := TIniFile.Create ('C:\Unit\Gestao\Parceiro.INI');
            ImpressoraCozinha01 := IniFile.ReadString('Restaurante','ImpCozinha01','');
            ImpressoraCozinha02 := IniFile.ReadString('Restaurante','ImpCozinha02','');
            ImpressoraCozinha03 := IniFile.ReadString('Restaurante','ImpCozinha03','');
            IniFile.Free;

            // Se a var for true e tiver impressora cadastrada no Parceiro.txt, tenta imprimir
            if (ImpCozinha1) and (ImpressoraCozinha01 <> '') then
              begin
                rdp.PortaComunicacao := '';
                rdp.SetPrinterbyName(ImpressoraCozinha01);
                rdp.Abrir;
                Linha := 1;
                if TicketCabTipoVenda.Value = 'Tele' then
                  begin rdp.ImpF(Linha, 1,'VENDA TELE',[Expandido, Normal]); Inc(Linha,2); end;
                if TicketCabTipoVenda.Value = 'C' then
                  begin rdp.ImpF(Linha, 1,'VENDA BALCAO',[Expandido, Normal]); Inc(Linha,2); end;
                if TicketCabTipoVenda.Value = 'Mesa' then
                  begin rdp.ImpF(Linha, 1,'VENDA MESAS',[Expandido, Normal]); Inc(Linha,2); end;

                if TicketCabMesaCodigo.Value > 0 then
                  begin
                    rdp.ImpF(Linha, 1,'Mesa.: ' + TicketCabMesaCodigo.AsString,[Expandido, Normal]);   Inc(Linha);
                    rdp.ImpF(Linha, 1,'Conta: ' + TicketCabContaCodigo.AsString,[Expandido, Normal]);
                    Inc(Linha,2);
                  end;

                if TicketCabDisplayNumero.Value > 0 then
                  begin
                    rdp.ImpF(Linha, 1,'Display.: ' + TicketCabDisplayNumero.AsString,[Expandido, Normal]);
                    Inc(Linha,2);
                  end;

                if TicketCabTipoVenda.Value = 'Tele' then
                  rdp.Imp(Linha, 1,'Controle....: '  + IntToStr(TicketCabSequencial.Value))
                else
                  rdp.Imp(Linha, 1,'Controle....: '  + TicketCabTicketNumero.Asstring);
                Inc(Linha,1);
                rdp.Imp(Linha, 1,'Data........: '  + FormatDateTime('dd/mm/yy hh:nn:ss',now)); Inc(Linha,2);
                rdp.Imp(Linha, 1,'----------------------------------------------'); Inc(Linha,1);
                rdp.Imp(Linha, 1,'Qtd Descricao                                 '); Inc(Linha);
                rdp.Imp(Linha, 1,'----------------------------------------------'); Inc(Linha,1);
                TicketItem.First;
                While not TicketItem.eof Do
                  Begin
                    if TicketItemImpCozinha.value = 'S' then
                      begin
                        if TicketItemPRODA30COZINHA.Value = 'Cozinha01' then
                          begin
                            rdp.ImpF(Linha, 1,FormatFloat('##00',TicketItemQuantidade.Value)+' '+copy(TicketItemDescricao.AsString,1,30),[Expandido, Normal]);  Inc(Linha);
                            if TicketItemComplemento.Value <> '' then
                              begin rdp.ImpF(Linha, 2,copy(TicketItemComplemento.AsString,1,35),[Expandido, Normal]); Inc(Linha); end;
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
            // Se a var for true e tiver impressora cadastrada no Parceiro.txt, tenta imprimir
            if (ImpCozinha2) and (ImpressoraCozinha02 <> '') then
              begin
                rdp.PortaComunicacao := '';
                rdp.SetPrinterbyName(ImpressoraCozinha02);
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
                  rdp.Imp(Linha, 1,'Controle....: '  + IntToStr(TicketCabSequencial.Value))
                else
                  rdp.Imp(Linha, 1,'Controle....: '  + TicketCabTicketNumero.Asstring);
                Inc(Linha,1);
                rdp.Imp(Linha, 1,'Data........: '  + FormatDateTime('dd/mm/yy hh:nn:ss',now)); Inc(Linha,2);
                rdp.Imp(Linha, 1,'----------------------------------------------'); Inc(Linha,1);
                rdp.Imp(Linha, 1,'Qtd Descricao                                 '); Inc(Linha);
                rdp.Imp(Linha, 1,'----------------------------------------------'); Inc(Linha,1);
                TicketItem.First;
                While not TicketItem.eof Do
                  Begin
                    if TicketItemImpCozinha.value = 'S' then
                      begin
                        if TicketItemPRODA30COZINHA.Value = 'Cozinha02' then
                          begin
                            rdp.ImpF(Linha, 1,FormatFloat('##00',TicketItemQuantidade.Value)+' '+copy(TicketItemDescricao.AsString,1,30),[Expandido, Normal]);  Inc(Linha);
                            if TicketItemComplemento.Value <> '' then
                              begin rdp.ImpF(Linha, 2,copy(TicketItemComplemento.AsString,1,35),[Expandido, Normal]); Inc(Linha); end;
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

            // Se a var for true e tiver impressora cadastrada no Parceiro.txt, tenta imprimir
            if (ImpCozinha3) and (ImpressoraCozinha03 <> '') then
              begin
                rdp.PortaComunicacao := '';
                rdp.SetPrinterbyName(ImpressoraCozinha03);
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
                  rdp.Imp(Linha, 1,'Controle....: '  + IntToStr(TicketCabSequencial.Value))
                else
                  rdp.Imp(Linha, 1,'Controle....: '  + TicketCabTicketNumero.Asstring);
                Inc(Linha,1);
                rdp.Imp(Linha, 1,'Data........: '  + FormatDateTime('dd/mm/yy hh:nn:ss',now)); Inc(Linha,2);
                rdp.Imp(Linha, 1,'----------------------------------------------'); Inc(Linha,1);
                rdp.Imp(Linha, 1,'Qtd Descricao                                 '); Inc(Linha);
                rdp.Imp(Linha, 1,'----------------------------------------------'); Inc(Linha,1);
                TicketItem.First;
                While not TicketItem.eof Do
                  Begin
                    if TicketItemImpCozinha.value = 'S' then
                      begin
                        if TicketItemPRODA30COZINHA.Value = 'Cozinha01' then
                          begin
                            rdp.ImpF(Linha, 1,FormatFloat('##00',TicketItemQuantidade.Value)+' '+copy(TicketItemDescricao.AsString,1,30),[Expandido, Normal]);  Inc(Linha);
                            if TicketItemComplemento.Value <> '' then
                              begin rdp.ImpF(Linha, 2,copy(TicketItemComplemento.AsString,1,35),[Expandido, Normal]); Inc(Linha); end;
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
