unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, ComCtrls, RDprint, Inifiles;

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
  
  IniFile      := TIniFile.Create('C:\Unit\Gestao\Parceiro.INI');
  EmpresaNome  := IniFile.ReadString('IB_Software','EmpresaNome','');
  ImpCaixa     := IniFile.ReadString('Restaurante','ImpCaixa','');

  Total := 0;

  rdp.PortaComunicacao := '';
  rdp.SetPrinterbyName(ImpCaixa);
  rdp.Abrir;
  Linha := 1;

  {Cabecalho}
  rdp.ImpF(Linha,1, EmpresaNome, [Expandido, Normal]); Inc(Linha,2);
  rdp.ImpF(Linha,1,'EXTRATO DA MESA => '+TblPrevendaitemMesaICod.AsString ,[Expandido, Normal]); Inc(Linha,2);
  rdp.Imp(Linha, 1,'Data........: '  + FormatDateTime('dd/mm/yy hh:nn:ss',now)); Inc(Linha);
  rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha,1);
  rdp.Imp(Linha,1,'Codigo Descricao                              '); Inc(Linha);
  rdp.Imp(Linha,1,'                     Quant Vlr.Unit  Vlr.Total'); Inc(Linha);
  rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha,1);

  {Loop Itens}
  TblPrevendaitem.first;
  while not TblPrevendaitem.eof Do
    begin
      if TblPrevendaitemMarcado.Value then
        begin
          rdp.Imp(Linha, 1,FormatFloat('####0000',TblPrevendaitemPRODICOD.Value));
          rdp.Imp(Linha, 8,copy(TblPrevendaitemDescricaoRed.AsString,1,39));  Inc(Linha);
          rdp.ImpVal(Linha,22,'##0.000',TblPrevendaitemPVITN3QTD.Value,[]);
          rdp.ImpVal(Linha,30,'##0.00',TblPrevendaitemPVITN3VLRUNIT.Value,[]);
          rdp.ImpVal(Linha,41,'##0.00',TblPrevendaitemTotalItem.Value,[]); Inc(Linha);
          Total := Total + TblPrevendaitemTotalItem.Value;
        end;
      TblPrevendaitem.Next;
    end;

  // Final Venda
  rdp.Imp(Linha,1,'----------------------------------------------'); Inc(Linha,1);
  rdp.Imp(Linha,25,'TOTAL R$');
  rdp.ImpVal(Linha,41,'##0.00', Total,[]);

  {Finalizar, Saltar Papel}
  Linha:=Linha+5;
  rdp.Imp(Linha, 1,'.');
  rdp.TamanhoQteLinhas := 1;
  rdp.Fechar;

  TblPreVendaItem.Close;
  application.Terminate;
end;

procedure TFormPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree ;
end;

end.
