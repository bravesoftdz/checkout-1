unit TelaImpressaoPreVenda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppComm, ppRelatv, ppCache, ppDB, ppDBPipe, ppDBBDE, ppProd, ppClass,
  ppReport, ppCtrls, ppPrnabl, ppBands, StdCtrls, Buttons, Db, DBTables,
  ppBarCod, ppVar, MemTable, ppStrtch, ppMemo;

type
  TFormTelaImpressaoPreVenda = class(TForm)
    ppReport1: TppReport;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    Imprime: TBitBtn;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText10: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel12: TppLabel;
    ppLabel14: TppLabel;
    ppDBText12: TppDBText;
    ppLabel15: TppLabel;
    ppDBTextAss: TppDBText;
    ppLabel18: TppLabel;
    ppDBText16: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    DSTblTicketPreVendaCab: TDataSource;
    ppLabel16: TppLabel;
    ppDBText17: TppDBText;
    ppLabel17: TppLabel;
    ppDBText18: TppDBText;
    TblTicketPreVendaCab: TTable;
    BDEPipe: TppBDEPipeline;
    ppTitleBand1: TppTitleBand;
    TblTicketPreVendaItem: TTable;
    DSTblTicketPreVendaItem: TDataSource;
    TblTicketPreVendaCabTicketNumero: TStringField;
    TblTicketPreVendaCabVendedor: TStringField;
    TblTicketPreVendaCabPlano: TStringField;
    TblTicketPreVendaCabCliente: TStringField;
    TblTicketPreVendaCabTotalNominal: TFloatField;
    TblTicketPreVendaCabTaxaCrediario: TFloatField;
    TblTicketPreVendaCabAcrescimo: TFloatField;
    TblTicketPreVendaCabDesconto: TFloatField;
    TblTicketPreVendaCabTotalGeral: TFloatField;
    TblTicketPreVendaItemCodigo: TIntegerField;
    TblTicketPreVendaItemDescricao: TStringField;
    TblTicketPreVendaItemQuantidade: TFloatField;
    TblTicketPreVendaItemValorUnitario: TFloatField;
    TblTicketPreVendaItemValorTotal: TFloatField;
    TblTicketPreVendaItemDesconto: TFloatField;
    TblTicketPreVendaItemMarca: TStringField;
    TblTicketPreVendaItemReferencia: TStringField;
    ppBDEPipeline1: TppBDEPipeline;
    ppLabel8: TppLabel;
    ppDBText4: TppDBText;
    ppDBText8: TppDBText;
    ppDBText13: TppDBText;
    ppLabel19: TppLabel;
    ppLabel11: TppLabel;
    ppLabel20: TppLabel;
    ppLBEmpresa: TppLabel;
    ppLabel21: TppLabel;
    ppDBMemo1: TppDBMemo;
    TblTicketPreVendaCabMensagem: TStringField;
    ppLabel13: TppLabel;
    TblTicketPreVendaCabFoneCliente: TStringField;
    TblTicketPreVendaCabNomeEmpresa: TStringField;
    TblTicketPreVendaCabFoneEmpresa: TStringField;
    TblTicketPreVendaCabNroCreditCard: TStringField;
    TblTicketPreVendaCabNumerarioPagto: TStringField;
    TblTicketPreVendaCabDataEntrega: TStringField;
    TblTicketPreVendaCabTipoVenda: TStringField;
    TblTicketPreVendaCabPessoaRecebeNome: TStringField;
    TblTicketPreVendaCabPessoaRecebeEnder: TStringField;
    TblTicketPreVendaCabPessoaRecebeBai: TStringField;
    TblTicketPreVendaCabPessoaRecebeCid: TStringField;
    TblTicketPreVendaCabPessoaRecebeUF: TStringField;
    TblTicketPreVendaCabPessoaRecebeFone: TStringField;
    TblTicketPreVendaCabMensagem2: TMemoField;
    TblTicketPreVendaCabDataEmissao: TDateField;
    ppDBText11: TppDBText;
    ppDBText15: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    TblTicketPreVendaCabVlrEntrada: TFloatField;
    TblTicketPreVendaFin: TTable;
    TblTicketPreVendaFinPedICod: TStringField;
    TblTicketPreVendaFinVencimento: TDateField;
    TblTicketPreVendaFinValor: TFloatField;
    TblTicketPreVendaFinPortador: TStringField;
    TblTicketPreVendaItemTroca: TStringField;
    ppLabel22: TppLabel;
    ppDBCalc1: TppDBCalc;
    TblTicketPreVendaFinParcela: TStringField;
    TblTicketPreVendaFinNumerario: TStringField;
    TblTicketPreVendaCabUsuarioVendaSTR: TStringField;
    procedure ImprimeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ppTitleBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
    TotalProdutos, TotalGeral : double ;
    NomeEmpresa,FoneEmpresa : String;
  public
    { Public declarations }
  end;

var
  FormTelaImpressaoPreVenda: TFormTelaImpressaoPreVenda;

implementation

uses DataModulo, UnitLibrary;

{$R *.DFM}
procedure TFormTelaImpressaoPreVenda.ImprimeClick(Sender: TObject);
var Arquivo : TextFile ;
var vLin1Itens, vLin2Itens : String ;
begin
 // Verifica se existe impressora Nao Fiscal
 if FileExists('C:\Unit\Gestao\IMPRESSAOPREVENDA.EXE') then
   begin
     if FileExists('C:\Unit\Gestao\ImprimirSempre.txt') then
       WinExec(Pchar('IMPRESSAOPREVENDA.EXE'),sw_Show)
     else
       begin
         if dm.SQLTerminalAtivoTERMCIMPPREVENDASIM.Value = 'S' then
           if Pergunta('SIM','Imprimir Prevenda / Orçamento?') then
             WinExec(Pchar('IMPRESSAOPREVENDA.EXE'),sw_Show);
         if dm.SQLTerminalAtivoTERMCIMPPREVENDASIM.Value <> 'S' then
           if Pergunta('NAO','Imprimir Prevenda / Orçamento?') then
             WinExec(Pchar('IMPRESSAOPREVENDA.EXE'),sw_Show);
       end;
   end
 else
   begin
      try
        TblTicketPreVendaCab.Open ;
        TblTicketPreVendaItem.Open ;
        TblTicketPreVendaFin.Open ;
      except
        Application.ProcessMessages;
      end;
   end;
 Close;
end;

procedure TFormTelaImpressaoPreVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TblTicketPreVendaCab.Close ;
  TblTicketPreVendaItem.Close ;
  TblTicketPreVendaFin.Close ;
  Action := CAfree ;
end;

procedure TFormTelaImpressaoPreVenda.FormCreate(Sender: TObject);
begin
  Caption := '' ;
end;

Procedure TFormTelaImpressaoPreVenda.ppTitleBand1BeforePrint(
  Sender: TObject);
begin
  ppLBEmpresa.Caption := NomeEmpresa;
end;

end.
