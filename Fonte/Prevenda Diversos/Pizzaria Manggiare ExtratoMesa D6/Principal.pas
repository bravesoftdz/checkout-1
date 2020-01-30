unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, ComCtrls, RDprint, Inifiles, ppPrnabl,
  ppClass, ppCtrls, ppCache, ppBands, ppComm, ppRelatv, ppProd, ppReport;

type
  TFormPrincipal = class(TForm)
    TblPreVendaItem: TTable;
    rdp: TRDprint;
    TblPreVendaItemPRODICOD: TIntegerField;
    TblPreVendaItemPVITN3QTD: TBCDField;
    TblPreVendaItemPVITN3VLRUNIT: TBCDField;
    TblPreVendaItemTotalItem: TFloatField;
    TblPreVendaItemVendedor: TStringField;
    TblPreVendaItemMesaICod: TIntegerField;
    TblPreVendaItemContaICod: TIntegerField;
    TblPreVendaItemDescricaoRed: TStringField;
    TblPreVendaItemMarcado: TBooleanField;
    ppPicote: TppReport;
    ppDetailBand1: TppDetailBand;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
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
var Linha, vCol : integer;
var ImpCaixa, EmpresaNome : String;
var Total : Double;
begin
  TblPrevendaitem.open;
  
  IniFile      := TIniFile.Create('C:\Easy2Solutions\Gestao\Parceiro.INI');
  EmpresaNome  := IniFile.ReadString('IB_Software','EmpresaNome','');
  ImpCaixa     := IniFile.ReadString('Restaurante','ImpCaixa','');

  Total := 0;

  rdp.PortaComunicacao := '';
  rdp.SetPrinterbyName(ImpCaixa);
  rdp.Abrir;
  Linha := 1;

  {Cabecalho}
  rdp.Imp(Linha,1,'.'); Inc(Linha);
  rdp.Imp(Linha,1, EmpresaNome); Inc(Linha,2);
  rdp.Imp(Linha,1,'EXTRATO DA MESA => '+TblPrevendaitemMesaICod.AsString); Inc(Linha,2);
  rdp.Imp(Linha, 1,'Data........: '  + FormatDateTime('dd/mm/yy hh:nn:ss',now)); Inc(Linha);
  rdp.Imp(Linha,1,'----------------------------------------'); Inc(Linha);
  rdp.Imp(Linha,1,'Codigo Descricao                        '); Inc(Linha);
  rdp.Imp(Linha,1,'               Quant Vlr.Unit  Vlr.Total'); Inc(Linha);
  rdp.Imp(Linha,1,'----------------------------------------'); Inc(Linha);
  {Loop Itens}
  TblPrevendaitem.first;
  while not TblPrevendaitem.eof Do
    begin
      if TblPrevendaitemMarcado.Value then
        begin
          rdp.Imp(Linha, 1,FormatFloat('####0000',TblPrevendaitemPRODICOD.Value));
          rdp.Imp(Linha, 6,copy(TblPrevendaitemDescricaoRed.AsString,1,39));  Inc(Linha);
          rdp.ImpVal(Linha,10,'##0.00',TblPrevendaitemPVITN3QTD.Value,[]);
          rdp.ImpVal(Linha,20,'##0.00',TblPrevendaitemPVITN3VLRUNIT.Value,[]);
          rdp.ImpVal(Linha,35,'##0.00',TblPrevendaitemTotalItem.Value,[]); Inc(Linha);
          Total := Total + TblPrevendaitemTotalItem.Value;
        end;
      TblPrevendaitem.Next;
    end;
  // Final Venda
  rdp.Imp(Linha,1,'========================================'); Inc(Linha);
  rdp.Imp(Linha,20,'TOTAL R$');
  rdp.ImpVal(Linha,35,'##0.00', Total,[]); Inc(Linha,10);
  rdp.Imp(Linha,10,'.');
  rdp.TamanhoQteLinhas := 1;
  rdp.Fechar;

  if FileExists('Picote.exe') then
    WinExec(Pchar('Picote.exe'),SW_HIDE);

  TblPreVendaItem.Close;
  application.Terminate;
end;

procedure TFormPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree ;
end;

end.
