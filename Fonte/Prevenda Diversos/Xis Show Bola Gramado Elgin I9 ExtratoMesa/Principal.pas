unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, ComCtrls, RDprint, Inifiles, ppPrnabl,
  ppClass, ppCtrls, ppCache, ppBands, ppComm, ppRelatv, ppProd, ppReport,
  ppParameter, raCodMod, ppModule, daDataModule, ppDB, ppDBPipe, ppDBBDE;

type
  TFormPrincipal = class(TForm)
    TblPreVendaItem: TTable;
    TblPreVendaItemPRODICOD: TIntegerField;
    TblPreVendaItemPVITN3QTD: TBCDField;
    TblPreVendaItemPVITN3VLRUNIT: TBCDField;
    TblPreVendaItemTotalItem: TFloatField;
    TblPreVendaItemVendedor: TStringField;
    TblPreVendaItemMesaICod: TIntegerField;
    TblPreVendaItemContaICod: TIntegerField;
    TblPreVendaItemDescricaoRed: TStringField;
    TblPreVendaItemMarcado: TBooleanField;
    DSItens: TDataSource;
    PipeItens: TppBDEPipeline;
    extrato: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLine2: TppLine;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel14: TppLabel;
    lbTipoVenda: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText16: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLine3: TppLine;
    ppDBText20: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    daDataModule1: TdaDataModule;
    raCodeModule2: TraCodeModule;
    ppParameterList2: TppParameterList;
    ppLabel16: TppLabel;
    ppLabel1: TppLabel;
    lbTotal: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
    Total : Double;
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

procedure TFormPrincipal.FormCreate(Sender: TObject);
var Inifile: TInifile;
var Linha, vCol : integer;
var ImpCaixa, EmpresaNome : String;
begin
  TblPrevendaitem.open;

  IniFile      := TIniFile.Create('C:\Easy2Solutions\Gestao\Parceiro.INI');
  EmpresaNome  := IniFile.ReadString('IB_Software','EmpresaNome','');
  ImpCaixa     := IniFile.ReadString('Restaurante','ImpCaixa','');

  Total := 0;

  {Loop Itens}
  TblPrevendaitem.first;
  while not TblPrevendaitem.eof Do
    begin
      if TblPrevendaitemMarcado.Value then
        Total := Total + TblPrevendaitemTotalItem.Value;
      TblPrevendaitem.Next;
    end;

  extrato.PrinterSetup.PrinterName := ImpCaixa;
  extrato.Print ;

  TblPreVendaItem.Close;
  application.Terminate;
end;

procedure TFormPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree ;
end;

procedure TFormPrincipal.ppHeaderBand1BeforePrint(Sender: TObject);
begin
  lbTipoVenda.caption := 'MESA/COMANDA: ' + TblPreVendaItemMesaICod.AsString + ' / ' + TblPreVendaItemContaICod.AsString;
end;

procedure TFormPrincipal.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  lbTotal.caption := 'Total => R$ ' + FormatFloat('##0.00',Total);
end;

end.
