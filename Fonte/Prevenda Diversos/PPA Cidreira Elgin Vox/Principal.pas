unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, ComCtrls, RDprint, Inifiles, ERPrint,
  ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport, ppStrtch, ppSubRpt;

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
    TblPreVendaCabDataEntrega: TStringField;
    TblPreVendaCabTipoVenda: TStringField;
    TblPreVendaItemTroca: TStringField;
    TblPreVendaCabTroco: TFloatField;
    TblPreVendaItemComplemento: TStringField;
    TblPedidoFinanceiroNumerario: TStringField;
    TblPreVendaItemImpCozinha: TStringField;
    TblPreVendaItemImpVale: TStringField;
    TblPreVendaCabNomeClienteVenda: TStringField;
    TblPreVendaCabEnderecoClienteVenda: TStringField;
    TblPreVendaCabCidadeClienteVenda: TStringField;
    TblPreVendaCabOBSImpressaoCupom: TStringField;
    TblPreVendaCabFoneClienteVenda: TStringField;
    TblPreVendaCabBairroClienteVenda: TStringField;
    rdp: TppReport;
    dsCab: TDataSource;
    dsItem: TDataSource;
    dsFin: TDataSource;
    PipeItem: TppDBPipeline;
    PipeFin: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel8: TppLabel;
    ppDBText7: TppDBText;
    ppLabel9: TppLabel;
    ppDBText8: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppSubFinanceiro: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    TblPreVendaCabVlrEntrada: TFloatField;
    TblPreVendaCabDocumentoClienteVenda: TStringField;
    TblPreVendaCabTERMICOD: TIntegerField;
    TblPreVendaCabPRVDICOD: TIntegerField;
    TblPreVendaCabUsuarioVendaSTR: TStringField;
    ppDBText3: TppDBText;
    PipeCab: TppDBPipeline;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText11: TppDBText;
    ppLabel6: TppLabel;
    ppLabel10: TppLabel;
    TblPreVendaCabDataEmissao: TStringField;
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
var TotDesc : Double;
begin
  try
    TblPreVendacab.Open;
    TblPreVendaItem.Open;
    TblPreVendaItem.First;
    TblPedidoFinanceiro.Open;
    TotDesc := 0;
    While Not TblPreVendaItem.Eof Do
      Begin
        TotDesc := TotDesc + TblPreVendaItemDesconto.Value;
        TblPreVendaItem.Next;
      End;

    rdp.Print;

    if (Application.MessageBox(PChar('Imprimir Segunda Via?'), PChar(Application.Title), MB_SYSTEMMODAL + MB_YesNo + MB_IconQuestion + MB_DEFBUTTON2) = IdYes) then
      rdp.Print;

    TblPreVendacab.Close;
    TblPreVendaItem.Close;
    TblPedidoFinanceiro.Close;

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
