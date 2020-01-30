unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, declaracoes,
  Dialogs, DB, DBTables, VarSys, ExtCtrls, ComCtrls, Inifiles;

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
var Retorno : integer;
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

            ConfiguraModeloImpressora(7); // 7 = MP4200
            Retorno := IniciaPorta(pchar(ImpressoraCozinha01));
            if Retorno <> 1 then
              begin
                ShowMessage('Erro Comunicação!');
               // Exit;
              end;

            //  Retorno:=FormataTX(pchar(EmpresaNome)+#13+#10, i_tipo_letra, i_italico, i_sublinhado, i_expandido, i_enfatizado);
            {
             tipo_letra:=1 comprimido
             tipo_letra:=2 normal
             tipo_letra:=3 elite
            }

            // Se a var for true e tiver impressora cadastrada no Parceiro.txt, tenta imprimir
            if (ImpCozinha1) and (ImpressoraCozinha01 <> '') then
              begin
                if TicketCabTipoVenda.Value = 'C' then
                  FormataTX(pchar('VENDA BALCAO')+#10+#10, 2, 0, 0, 1, 0);
                if TicketCabTipoVenda.Value = 'Tele' then
                  FormataTX(pchar('VENDA TELE')+#10+#10, 2, 0, 0, 1, 0);
                if TicketCabTipoVenda.Value = 'Mesa' then
                  FormataTX(pchar('VENDA MESA')+#10+#10, 2, 0, 0, 1, 0);

                if TicketCabMesaCodigo.Value > 0 then
                  begin
                    FormataTX(pchar('Mesa.: ' + TicketCabMesaCodigo.AsString)+#10, 2, 0, 0, 1, 0);
                    FormataTX(pchar('Conta: ' + TicketCabContaCodigo.AsString)+#10+#10, 2, 0, 0, 1, 0);
                  end;

                if TicketCabDisplayNumero.Value > 0 then
                  FormataTX(pchar('Display.: ' + TicketCabDisplayNumero.AsString)+#10+#10, 2, 0, 0, 1, 0);

                if TicketCabTipoVenda.Value = 'Tele' then
                  FormataTX(pchar('Controle: ' + IntToStr(TicketCabSequencial.Value))+#10+#10, 2, 0, 0, 0, 0)
                else
                  FormataTX(pchar('Controle: ' + TicketCabTicketNumero.Value)+#10+#10, 2, 0, 0, 0, 0);


                if TicketCabTipoVenda.Value = 'Tele' then
                  begin
                    if TicketCabMotoboy.Value <> '' then
                      FormataTX(pchar('Motoboy: ' + TicketCabMotoboy.AsString)+#10, 2, 0, 0, 0, 0);

                    FormataTX(pchar('Cliente: '   + TicketCabNomeClienteVenda.AsString)+#10, 2, 0, 0, 0, 0);
                    if TicketCabEnderecoClienteVenda.AsString <> '' then
                      FormataTX(pchar('  ' + TicketCabEnderecoClienteVenda.AsString)+#10, 2, 0, 0, 0, 0);
                    if TicketCabBairroClienteVenda.AsString <> '' then
                      FormataTX(pchar('  ' + TicketCabBairroClienteVenda.AsString)+#10, 2, 0, 0, 0, 0);
                    if TicketCabCidadeClienteVenda.AsString <> '' then
                      FormataTX(pchar('  ' + TicketCabCidadeClienteVenda.AsString)+#10, 2, 0, 0, 0, 0);
                    if TicketCabFoneClienteVenda.AsString <> '' then
                      FormataTX(pchar('  ' + TicketCabFoneClienteVenda.AsString)+#10, 2, 0, 0, 0, 0);
                    if TicketCabOBSImpressaoCupom.AsString <> '' then
                      FormataTX(pchar('  ' + TicketCabOBSImpressaoCupom.AsString)+#10, 2, 0, 0, 0, 0);
                  end;

                FormataTX(pchar('Data: ' + FormatDateTime('dd/mm/yy hh:nn:ss',now))+#10, 2, 0, 0, 0, 0);
                FormataTX(pchar('----------------------------------------------')+#10, 2, 0, 0, 0, 0);
                FormataTX(pchar('Qtd Descricao                                 ')+#10, 2, 0, 0, 0, 0);
                FormataTX(pchar('----------------------------------------------')+#10, 2, 0, 0, 0, 0);
                TicketItem.First;
                While not TicketItem.eof Do
                  Begin
                    if TicketItemImpCozinha.value = 'S' then
                      begin
                        if TicketItemPRODA30COZINHA.Value = 'Cozinha01' then
                          begin
                            FormataTX(pchar(FormatFloat('##00',TicketItemQuantidade.Value)+' '+copy(TicketItemDescricao.AsString,1,30))+#10, 2, 0, 0, 1, 0);
                            if TicketItemComplemento.Value <> '' then
                              FormataTX(pchar('  ' + copy(TicketItemComplemento.AsString,1,34))+#10, 2, 0, 0, 1, 0);
                          end;
                      end;
                    TicketItem.Next;
                  End;

                FormataTX(#10, 2, 0, 0, 1, 0);

                if TicketCabLevarCasa.Value = 'S' then
                  FormataTX(pchar(' LEVAR PARA CASA')+#10, 2, 0, 0, 1, 0);

                AcionaGuilhotina(1);
              end;
            // Se a var for true e tiver impressora cadastrada no Parceiro.txt, tenta imprimir
            if (ImpCozinha2) and (ImpressoraCozinha02 <> '') then
              begin
                if TicketCabTipoVenda.Value = 'C' then
                  FormataTX(pchar('VENDA BALCAO')+#10+#10, 2, 0, 0, 1, 0);
                if TicketCabTipoVenda.Value = 'Tele' then
                  FormataTX(pchar('VENDA TELE')+#10+#10, 2, 0, 0, 1, 0);
                if TicketCabTipoVenda.Value = 'Mesa' then
                  FormataTX(pchar('VENDA MESA')+#10+#10, 2, 0, 0, 1, 0);

                if TicketCabMesaCodigo.Value > 0 then
                  begin
                    FormataTX(pchar('Mesa.: ' + TicketCabMesaCodigo.AsString)+#10, 2, 0, 0, 1, 0);
                    FormataTX(pchar('Conta: ' + TicketCabContaCodigo.AsString)+#10+#10, 2, 0, 0, 1, 0);
                  end;

                if TicketCabDisplayNumero.Value > 0 then
                  FormataTX(pchar('Display.: ' + TicketCabDisplayNumero.AsString)+#10+#10, 2, 0, 0, 1, 0);

                if TicketCabTipoVenda.Value = 'Tele' then
                  FormataTX(pchar('Controle: ' + IntToStr(TicketCabSequencial.Value))+#10+#10, 2, 0, 0, 0, 0)
                else
                  FormataTX(pchar('Controle: ' + TicketCabTicketNumero.Value)+#10+#10, 2, 0, 0, 0, 0);

                if TicketCabTipoVenda.Value = 'Tele' then
                  begin
                    if TicketCabMotoboy.Value <> '' then
                      FormataTX(pchar('Motoboy: ' + TicketCabMotoboy.AsString)+#10, 2, 0, 0, 0, 0);

                    FormataTX(pchar('Cliente: '   + TicketCabNomeClienteVenda.AsString)+#10, 2, 0, 0, 0, 0);
                    if TicketCabEnderecoClienteVenda.AsString <> '' then
                      FormataTX(pchar('  ' + TicketCabEnderecoClienteVenda.AsString)+#10, 2, 0, 0, 0, 0);
                    if TicketCabBairroClienteVenda.AsString <> '' then
                      FormataTX(pchar('  ' + TicketCabBairroClienteVenda.AsString)+#10, 2, 0, 0, 0, 0);
                    if TicketCabCidadeClienteVenda.AsString <> '' then
                      FormataTX(pchar('  ' + TicketCabCidadeClienteVenda.AsString)+#10, 2, 0, 0, 0, 0);
                    if TicketCabFoneClienteVenda.AsString <> '' then
                      FormataTX(pchar('  ' + TicketCabFoneClienteVenda.AsString)+#10, 2, 0, 0, 0, 0);
                    if TicketCabOBSImpressaoCupom.AsString <> '' then
                      FormataTX(pchar('  ' + TicketCabOBSImpressaoCupom.AsString)+#10, 2, 0, 0, 0, 0);
                  end;

                FormataTX(pchar('Data: ' + FormatDateTime('dd/mm/yy hh:nn:ss',now))+#10, 2, 0, 0, 0, 0);
                FormataTX(pchar('----------------------------------------------')+#10, 2, 0, 0, 0, 0);
                FormataTX(pchar('Qtd Descricao                                 ')+#10, 2, 0, 0, 0, 0);
                FormataTX(pchar('----------------------------------------------')+#10, 2, 0, 0, 0, 0);
                TicketItem.First;
                While not TicketItem.eof Do
                  Begin
                    if TicketItemImpCozinha.value = 'S' then
                      begin
                        if TicketItemPRODA30COZINHA.Value = 'Cozinha02' then
                          begin
                            FormataTX(pchar(FormatFloat('##00',TicketItemQuantidade.Value)+' '+copy(TicketItemDescricao.AsString,1,30))+#10, 2, 0, 0, 1, 0);
                            if TicketItemComplemento.Value <> '' then
                              FormataTX(pchar('  ' + copy(TicketItemComplemento.AsString,1,34))+#10, 2, 0, 0, 1, 0);
                          end;
                      end;
                    TicketItem.Next;
                  End;

                FormataTX(#10, 2, 0, 0, 1, 0);

                if TicketCabLevarCasa.Value = 'S' then
                  FormataTX(pchar(' LEVAR PARA CASA')+#10, 2, 0, 0, 1, 0);

                AcionaGuilhotina(1);
              end;

            // Se a var for true e tiver impressora cadastrada no Parceiro.txt, tenta imprimir
            if (ImpCozinha3) and (ImpressoraCozinha03 <> '') then
              begin
                if TicketCabTipoVenda.Value = 'C' then
                  FormataTX(pchar('VENDA BALCAO')+#10+#10, 2, 0, 0, 1, 0);
                if TicketCabTipoVenda.Value = 'Tele' then
                  FormataTX(pchar('VENDA TELE')+#10+#10, 2, 0, 0, 1, 0);
                if TicketCabTipoVenda.Value = 'Mesa' then
                  FormataTX(pchar('VENDA MESA')+#10+#10, 2, 0, 0, 1, 0);

                if TicketCabMesaCodigo.Value > 0 then
                  begin
                    FormataTX(pchar('Mesa.: ' + TicketCabMesaCodigo.AsString)+#10, 2, 0, 0, 1, 0);
                    FormataTX(pchar('Conta: ' + TicketCabContaCodigo.AsString)+#10+#10, 2, 0, 0, 1, 0);
                  end;

                if TicketCabDisplayNumero.Value > 0 then
                  FormataTX(pchar('Display.: ' + TicketCabDisplayNumero.AsString)+#10+#10, 2, 0, 0, 1, 0);

                if TicketCabTipoVenda.Value = 'Tele' then
                  FormataTX(pchar('Controle: ' + IntToStr(TicketCabSequencial.Value))+#10+#10, 2, 0, 0, 0, 0)
                else
                  FormataTX(pchar('Controle: ' + TicketCabTicketNumero.Value)+#10+#10, 2, 0, 0, 0, 0);

                if TicketCabTipoVenda.Value = 'Tele' then
                  begin
                    if TicketCabMotoboy.Value <> '' then
                      FormataTX(pchar('Motoboy: ' + TicketCabMotoboy.AsString)+#10, 2, 0, 0, 0, 0);

                    FormataTX(pchar('Cliente: '   + TicketCabNomeClienteVenda.AsString)+#10, 2, 0, 0, 0, 0);
                    if TicketCabEnderecoClienteVenda.AsString <> '' then
                      FormataTX(pchar('  ' + TicketCabEnderecoClienteVenda.AsString)+#10, 2, 0, 0, 0, 0);
                    if TicketCabBairroClienteVenda.AsString <> '' then
                      FormataTX(pchar('  ' + TicketCabBairroClienteVenda.AsString)+#10, 2, 0, 0, 0, 0);
                    if TicketCabCidadeClienteVenda.AsString <> '' then
                      FormataTX(pchar('  ' + TicketCabCidadeClienteVenda.AsString)+#10, 2, 0, 0, 0, 0);
                    if TicketCabFoneClienteVenda.AsString <> '' then
                      FormataTX(pchar('  ' + TicketCabFoneClienteVenda.AsString)+#10, 2, 0, 0, 0, 0);
                    if TicketCabOBSImpressaoCupom.AsString <> '' then
                      FormataTX(pchar('  ' + TicketCabOBSImpressaoCupom.AsString)+#10, 2, 0, 0, 0, 0);
                  end;

                FormataTX(pchar('Data: ' + FormatDateTime('dd/mm/yy hh:nn:ss',now))+#10, 2, 0, 0, 0, 0);
                FormataTX(pchar('----------------------------------------------')+#10, 2, 0, 0, 0, 0);
                FormataTX(pchar('Qtd Descricao                                 ')+#10, 2, 0, 0, 0, 0);
                FormataTX(pchar('----------------------------------------------')+#10, 2, 0, 0, 0, 0);
                TicketItem.First;
                While not TicketItem.eof Do
                  Begin
                    if TicketItemImpCozinha.value = 'S' then
                      begin
                        if TicketItemPRODA30COZINHA.Value = 'Cozinha03' then
                          begin
                            FormataTX(pchar(FormatFloat('##00',TicketItemQuantidade.Value)+' '+copy(TicketItemDescricao.AsString,1,30))+#10, 2, 0, 0, 1, 0);
                            if TicketItemComplemento.Value <> '' then
                              FormataTX(pchar('  ' + copy(TicketItemComplemento.AsString,1,34))+#10, 2, 0, 0, 1, 0);
                          end;
                      end;
                    TicketItem.Next;
                  End;

                FormataTX(#10, 2, 0, 0, 1, 0);

                if TicketCabLevarCasa.Value = 'S' then
                  FormataTX(pchar(' LEVAR PARA CASA')+#10, 2, 0, 0, 1, 0);

                AcionaGuilhotina(1);
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
