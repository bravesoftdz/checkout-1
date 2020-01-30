unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCrpe32, DB, DBTables, RxQuery, VarSys, ExtCtrls, ComCtrls, Inifiles,
  RDprint;

type
  TFormPrincipal = class(TForm)
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
    TblPreVendaCabNomeEmpresa: TStringField;
    TblPreVendaCabFoneEmpresa: TStringField;
    TblPreVendaCabNroCreditCard: TStringField;
    TblPreVendaCabNumerarioPagto: TStringField;
    TblPreVendaCabMensagem: TStringField;
    TblPreVendaCabDataEntrega: TStringField;
    TblPreVendaCabTipoVenda: TStringField;
    TblPreVendaCabPessoaRecebeNome: TStringField;
    TblPreVendaCabPessoaRecebeEnder: TStringField;
    TblPreVendaCabPessoaRecebeBai: TStringField;
    TblPreVendaCabPessoaRecebeCid: TStringField;
    TblPreVendaCabPessoaRecebeUF: TStringField;
    TblPreVendaCabPessoaRecebeFone: TStringField;
    TblPreVendaCabMensagem2: TMemoField;
    RDprint: TRDprint;
    TblPreVendaCabVlrEntrada: TFloatField;
    TblPreVendaCabNomeClienteVenda: TStringField;
    TblPreVendaCabDocumentoClienteVenda: TStringField;
    TblPreVendaCabEnderecoClienteVenda: TStringField;
    TblPreVendaCabCidadeClienteVenda: TStringField;
    TblPreVendaCabOBSImpressaoCupom: TStringField;
    TblPreVendaItemTroca: TStringField;
    TblPreVendaCabFoneClienteVenda: TStringField;
    TblPreVendaCabTroco: TFloatField;
    TblPreVendaCabPEDIDOORCAMENTO: TStringField;
    TblPreVendaCabTERMICOD: TIntegerField;
    TblPreVendaCabUsuarioVendaSTR: TStringField;
    TblPreVendaCabPlacaVeiculo: TStringField;
    TblPreVendaCabBairroClienteVenda: TStringField;
    TblPreVendaCabKM: TStringField;
    TblPreVendaCabClienteDependente: TStringField;
    TblPreVendaItemUnidade: TStringField;
    TblPreVendaCabDataEmissao: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    VlrBonusTroca : Double;
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses DataModulo, DataModuloTemplate;

{$R *.dfm}

procedure TFormPrincipal.FormCreate(Sender: TObject);
var CodCliente, CodEmpresa, TerminalNome : String;
var Linha, vCol : integer;
var TotDesc : Double;
var Inifile: TInifile;
    EmpresaNome, EmpresaEndereco, EmpresaBairro, EmpresaFone: String;
begin
  try
    VlrBonusTroca := 0 ;
    TblPreVendaCab.Open;
    TblPreVendaItem.Open;

    IniFile := TIniFile.Create ('C:\Unit\Gestao\Parceiro.INI');
    EmpresaNome     := IniFile.ReadString('IB_Software','EmpresaNome','');
    EmpresaBairro   := IniFile.ReadString('IB_Software','EmpresaBairro','');
    EmpresaEndereco := IniFile.ReadString('IB_Software','EmpresaEndereco','');
    EmpresaFone     := IniFile.ReadString('IB_Software','EmpresaFone','');
    IniFile.Free;

    CodEmpresa   := IntToStr(StrToInt(Copy(TblPreVendaCabTicketNumero.asString,1,3)));
    CodCliente   := Copy(TblPreVendaCabCliente.asString,1,13);
    TerminalNome := dm.SQLLocate('TERMINAL','TERMICOD','TERMA60DESCR',TblPreVendaCabTERMICOD.AsString);
    Linha := 3;
    RDprint.PortaComunicacao := '';
    RDprint.NumerodeCopias := 1;
    RDprint.Abrir;
    RDprint.ImpC(Linha, 1,EmpresaNome,[Expandido, Normal]); Inc(Linha,2);
    RDprint.ImpC(Linha, 1,EmpresaEndereco,[Normal, Normal]); Inc(Linha);
    RDprint.ImpC(Linha, 1,EmpresaBairro,[Normal, Normal]); Inc(Linha);
    RDprint.ImpC(Linha, 1,EmpresaFone,[Normal, Normal]); Inc(Linha,2);
    RDprint.ImpC(Linha, 1,TblPreVendaCabPEDIDOORCAMENTO.AsString,[Expandido, Normal]); Inc(Linha);
    RDprint.Imp(Linha,  1,'Controle....: '  + TblPreVendaCabTicketNumero.AsString);
    RDprint.Imp(Linha, 50,'Data........: '  + TblPreVendaCabDataEmissao.AsString); Inc(Linha,2);
    RDprint.Imp(Linha,  1,'Cliente.....: '  + TblPreVendaCabNomeClienteVenda.AsString); Inc(Linha);
    RDprint.Imp(Linha,  1,'End/Bairro..: '  + TblPreVendaCabEnderecoClienteVenda.AsString+' / '+TblPreVendaCabBairroClienteVenda.AsString);
    RDprint.Imp(Linha, 50,'Cidade......: '  + TblPreVendaCabCidadeClienteVenda.AsString); Inc(Linha);
    RDprint.Imp(Linha,  1,'CPF/CNPJ....: '  + TblPreVendaCabDocumentoClienteVenda.AsString);
    RDprint.Imp(Linha, 50,'Fone........: '  + TblPreVendaCabFoneClienteVenda.AsString);  Inc(Linha);
    RDprint.Imp(Linha,  1,'Faturamento.: '  + TblPreVendaCabPlano.AsString);
    RDprint.Imp(Linha, 50,'Vendedor....: '  + TblPreVendaCabVendedor.AsString); Inc(Linha);
    RDprint.Imp(Linha,1,'---------------------------------------------------------------------------------------------');    Inc(Linha);
    RDprint.Imp(Linha,1,'Codigo Referencia   Descricao                                Un  Quant    Vlr.Unit  Vlr.Total');    Inc(Linha);
    RDprint.Imp(Linha,1,'---------------------------------------------------------------------------------------------');    Inc(Linha);
    TblPreVendaItem.First;
    While not TblPreVendaItem.eof Do
      Begin
        RDprint.Imp(Linha, 1,FormatFloat('#####00000',TblPreVendaItemCodigo.value));
        RDprint.Imp(Linha, 8,TblPreVendaItemReferencia.value);
        if TblPreVendaItemTroca.value = 'S' then
          RDprint.Imp(Linha,21,'(T)'+TblPreVendaItemDescricao.AsString)
        else
          RDprint.Imp(Linha,21,TblPreVendaItemDescricao.AsString);

        RDprint.Imp(Linha,62,TblPreVendaItemUnidade.AsString);
        RDprint.ImpVal(Linha,65,'##0.00',TblPreVendaItemQuantidade.Value,[]);
        RDprint.ImpVal(Linha,73,'###,##0.00',TblPreVendaItemValorUnitario.Value,[]);
        RDprint.ImpVal(Linha,84,'###,##0.00',TblPreVendaItemValorTotal.Value,[]);
        Inc(Linha);
        TblPreVendaItem.Next;
      End;
    RDprint.Imp(Linha, 1,'---------------------------------------------------------------------------------------------'); Inc(Linha);
    RDprint.Imp(Linha, 1,'Obs.:');
    RDprint.Imp(Linha,65,'Total Itens R$');
    RDprint.ImpVal(Linha,84,'###,##0.00',TblPreVendaCabTotalNominal.Value,[]); Inc(Linha);
    RDprint.Imp(Linha, 1,TblPreVendaCabOBSImpressaoCupom.Value);
    RDprint.Imp(Linha,65,'Desconto    R$');
    RDprint.ImpVal(Linha,84,'###,##0.00',TblPreVendaCabDesconto.Value,[]); Inc(Linha);
    RDprint.Imp(Linha, 5,'_____________________');
    RDprint.Imp(Linha,65,'Bonus Troca R$');
    RDprint.ImpVal(Linha,84,'###,##0.00',VlrBonusTroca,[]); Inc(Linha);
    RDprint.Imp(Linha, 5,'     Ass.Cliente     ');
    RDprint.Imp(Linha,65,'Total Geral R$');
    RDprint.ImpVal(Linha,84,'###,##0.00',TblPreVendaCabTotalNominal.Value-TblPreVendaCabDesconto.Value,[]);
    // Ejetar Papel
    // RDprint.Imp(33,1,'.');
    
    RDprint.Fechar;
    TblPreVendaCab.Close;
    TblPreVendaitem.Close;
    Application.Terminate;
  except
    TblPreVendaCab.Close;
    TblPreVendaitem.Close;
    Application.Terminate;
  end;
end;

procedure TFormPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree ;
end;

end.
