unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, RxQuery, VarSys, ExtCtrls, ComCtrls, Inifiles, declaracoes;

type
  TFormPrincipal = class(TForm)
    TicketPrevendaItem: TTable;
    TicketPrevendaItemCodigo: TIntegerField;
    TicketPrevendaItemDescricao: TStringField;
    TicketPrevendaItemComplemento: TStringField;
    TicketPrevendaItemQuantidade: TFloatField;
    TicketPrevendaItemValorUnitario: TFloatField;
    TicketPrevendaItemValorTotal: TFloatField;
    TicketPrevendaItemDesconto: TFloatField;
    TicketPrevendaItemMarca: TStringField;
    TicketPrevendaItemReferencia: TStringField;
    TicketPrevendaItemTroca: TStringField;
    TicketPrevendaItemImpCozinha: TStringField;
    TicketPrevendaItemImpVale: TStringField;
    TicketPreVendaCab: TTable;
    TicketPreVendaCabTicketNumero: TStringField;
    TicketPreVendaCabVendedor: TStringField;
    TicketPreVendaCabPlano: TStringField;
    TicketPreVendaCabCliente: TStringField;
    TicketPreVendaCabFoneCliente: TStringField;
    TicketPreVendaCabTotalNominal: TFloatField;
    TicketPreVendaCabTaxaCrediario: TFloatField;
    TicketPreVendaCabAcrescimo: TFloatField;
    TicketPreVendaCabDesconto: TFloatField;
    TicketPreVendaCabTotalGeral: TFloatField;
    TicketPreVendaCabNomeEmpresa: TStringField;
    TicketPreVendaCabFoneEmpresa: TStringField;
    TicketPreVendaCabNroCreditCard: TStringField;
    TicketPreVendaCabNumerarioPagto: TStringField;
    TicketPreVendaCabMensagem: TStringField;
    TicketPreVendaCabDataEntrega: TStringField;
    TicketPreVendaCabTipoVenda: TStringField;
    TicketPreVendaCabPessoaRecebeNome: TStringField;
    TicketPreVendaCabPessoaRecebeEnder: TStringField;
    TicketPreVendaCabPessoaRecebeBai: TStringField;
    TicketPreVendaCabPessoaRecebeCid: TStringField;
    TicketPreVendaCabPessoaRecebeUF: TStringField;
    TicketPreVendaCabPessoaRecebeFone: TStringField;
    TicketPreVendaCabMensagem2: TMemoField;
    TicketPreVendaCabVlrEntrada: TFloatField;
    TicketPreVendaCabNomeClienteVenda: TStringField;
    TicketPreVendaCabDocumentoClienteVenda: TStringField;
    TicketPreVendaCabEnderecoClienteVenda: TStringField;
    TicketPreVendaCabCidadeClienteVenda: TStringField;
    TicketPreVendaCabOBSImpressaoCupom: TStringField;
    TicketPreVendaCabTERMICOD: TIntegerField;
    TicketPreVendaCabPRVDICOD: TIntegerField;
    TicketPreVendaCabDataEmissao: TDateTimeField;
    TicketPreVendaCabFoneClienteVenda: TStringField;
    TicketPreVendaCabUsuarioVendaSTR: TStringField;
    TicketPreVendaCabClienteDependente: TIntegerField;
    TicketPreVendaCabPlacaVeiculo: TStringField;
    TicketPreVendaCabMesaCodigo: TIntegerField;
    TicketPreVendaCabContaCodigo: TIntegerField;
    TicketPreVendaCabTroco: TFloatField;
    TicketPreVendaCabDisplayNumero: TIntegerField;
    TicketPreVendaCabLevarCasa: TStringField;
    TicketPreVendaCabBairroClienteVenda: TStringField;
    TicketPreVendaCabMotoboy: TStringField;
    TicketPreVendaCabTaxaTele: TFloatField;
    TicketPreVendaCabSequencial: TIntegerField;
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
var CodCliente, ImpCaixa, EmpresaNome : String;
var i, Retorno : integer;
var TotDesc : Double;
var ImpVale : boolean;
begin
  try
    TicketPreVendaCab.Open;
    // Testa se tem algum registro na tabela Cabecalho
    if (TicketPreVendaCab.RecordCount>0) and  (TicketPreVendaCabTipoVenda.Value <> 'Tele') then
      begin
        // Testa se tem que imprimir VALE BEBIDA
        ImpVale := False;
        TicketPrevendaItem.Open;
        TicketPrevendaItem.First;
        While not TicketPrevendaItem.eof Do
          Begin
            if TicketPrevendaItemImpVale.value = 'S' then
              ImpVale := True;
            TicketPrevendaItem.Next;
          End;
        if ImpVale then
          begin
            IniFile           := TIniFile.Create('C:\Unit\Gestao\Parceiro.INI');
            EmpresaNome       := IniFile.ReadString('IB_SOFTWARE','EmpresaNome','');
            ImpCaixa          := IniFile.ReadString('Restaurante','ImpCaixa','');
            Inifile.Free;

            ConfiguraModeloImpressora(7); // 7 = MP4200
            Retorno := IniciaPorta(pchar(ImpCaixa));
            if Retorno <> 1 then
              begin
                ShowMessage('Erro Comunicação!');
                Application.Terminate;
              end;

            //  Retorno:=FormataTX(pchar(EmpresaNome)+#13+#10, i_tipo_letra, i_italico, i_sublinhado, i_expandido, i_enfatizado);
            {
             tipo_letra:=1 comprimido
             tipo_letra:=2 normal
             tipo_letra:=3 elite
            }

            TicketPrevendaItem.First;
            While not TicketPrevendaItem.eof Do
              Begin
                if TicketPrevendaItemImpVale.value = 'S' then
                  begin
                    for i:= TicketPrevendaItemQuantidade.AsInteger -1 downto 0 do
                      begin
                        FormataTX(pchar(EmpresaNome)+#10+#10, 2, 0, 0, 1, 0);
                        if TicketPreVendaCabMesaCodigo.Value > 0 then
                          begin
                            FormataTX(pchar('Mesa.: ' + TicketPreVendaCabMesaCodigo.AsString)+#10, 2, 0, 0, 1, 0);
                            FormataTX(pchar('Conta: ' + TicketPreVendaCabContaCodigo.AsString)+#10+#10, 2, 0, 0, 1, 0);
                          end;
                        if TicketPreVendaCabDisplayNumero.Value > 0 then
                          FormataTX(pchar('Display.: ' + TicketPreVendaCabDisplayNumero.AsString)+#10+#10, 2, 0, 0, 1, 0);

                        FormataTX(pchar('VALE 01 BEBIDA')+#10+#10, 2, 0, 0, 1, 0);
                        FormataTX(pchar(copy(TicketPrevendaItemDescricao.AsString,1,30))+#10+#10, 2, 0, 0, 1, 0);
                        if TicketPrevendaItemComplemento.Value <> '' then
                          FormataTX(pchar(copy(TicketPrevendaItemComplemento.AsString,1,30))+#10+#10, 2, 0, 0, 1, 0);
                        FormataTX(pchar('                 ' + FormatFloat('##0.00',TicketPreVendaItemValorUnitario.Value))+#10, 2, 0, 0, 0, 0);
                        FormataTX(pchar('Data Validade ===> ' + FormatDateTime('dd/mm/yy',now))+#10, 2, 0, 0, 0, 0);
                        AcionaGuilhotina(1);
                      end;
                  end;
                TicketPrevendaItem.Next;
              End;
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
