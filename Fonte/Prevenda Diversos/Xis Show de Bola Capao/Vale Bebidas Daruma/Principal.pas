unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, VarSys, ExtCtrls, ComCtrls, RDprint, Inifiles, DB;

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
var CodCliente, ImpCozinha, EmpresaNome, Saltar : String;
var Linha, vCol, i : integer;
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
            ImpCozinha        := IniFile.ReadString('Restaurante','ImpCozinha02','');
            Saltar            := IniFile.ReadString('IB_Software','Saltar','');
            TicketPrevendaItem.First;
            While not TicketPrevendaItem.eof Do
              Begin
                if TicketPrevendaItemImpVale.value = 'S' then
                  begin
                    for i:= TicketPrevendaItemQuantidade.AsInteger -1 downto 0 do
                      begin
                        Linha := 1;
                        rdp.PortaComunicacao := '';
                        rdp.SetPrinterbyName('ImpCozinha');
                        rdp.Abrir;
                        rdp.ImpF(Linha, 10,EmpresaNome,[Expandido, Normal]); Inc(Linha,2);
                        rdp.ImpF(Linha, 10,'VALE 01 BEBIDA',[Expandido, Normal]); Inc(Linha,2);
                        rdp.Imp(Linha, 1,'----------------------------------------------'); Inc(Linha);
                        rdp.ImpF(Linha, 1,copy(TicketPrevendaItemDescricao.AsString,1,30),[Expandido, Normal]);
                        rdp.ImpVal(Linha,41,'##0.00',TicketPrevendaItemValorUnitario.Value,[]); Inc(Linha);
                        rdp.Imp(Linha, 1,'Data Validade ===> '  + FormatDateTime('dd/mm/yy',now)); Inc(Linha,2);
                        rdp.Imp(Linha, 1,'----------------------------------------------'); Inc(Linha,2);
                        rdp.Imp(Linha, 1,'.');
                        rdp.TamanhoQteLinhas := Linha + StrToInt(Saltar);
                        rdp.Fechar;
                        if FileExists('C:\Unit\Gestao\Picote.exe') then
                          WinExec(Pchar('Picote.exe'),sw_Show);
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
