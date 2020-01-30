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
    TblPreVendaItemValorServico: TFloatField;
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
var Total, TotalServico : Double;
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
  rdp.Imp(Linha,2, EmpresaNome); Inc(Linha,2);
  rdp.Imp(Linha,1,'EXTRATO DA MESA => '+TblPrevendaitemMesaICod.AsString); Inc(Linha,2);
  rdp.Imp(Linha, 1,'Data........: '  + FormatDateTime('dd/mm/yy hh:nn:ss',now)); Inc(Linha);
  rdp.Imp(Linha,1,'---------------------------------------'); Inc(Linha);
  rdp.Imp(Linha,1,'Codigo Descricao                       '); Inc(Linha);
  rdp.Imp(Linha,1,'             Quant Vlr.Unit   Vlr.Total'); Inc(Linha);
  rdp.Imp(Linha,1,'---------------------------------------'); Inc(Linha,1);

  {Loop Itens}
  TblPrevendaitem.first;
  while not TblPrevendaitem.eof Do
    begin
      if TblPrevendaitemMarcado.Value then
        begin
          rdp.Imp(Linha, 1,FormatFloat('####0000',TblPrevendaitemPRODICOD.Value));
          rdp.Imp(Linha, 8,copy(TblPrevendaitemDescricaoRed.AsString,1,39));  Inc(Linha);
          rdp.ImpVal(Linha,15,'##0.000',TblPrevendaitemPVITN3QTD.Value,[]);
          rdp.ImpVal(Linha,25,'##0.00',TblPrevendaitemPVITN3VLRUNIT.Value,[]);
          rdp.ImpVal(Linha,35,'##0.00',TblPrevendaitemTotalItem.Value,[]); Inc(Linha);
          Total := Total + TblPrevendaitemTotalItem.Value;
          TotalServico := TotalServico + TblPreVendaItemValorServico.Value;
        end;
      TblPrevendaitem.Next;
    end;

  // Final Venda
  rdp.Imp(Linha,1,'---------------------------------------'); Inc(Linha);
  rdp.Imp(Linha,25,'SUBTOTAL R$');
  rdp.ImpVal(Linha,35,'##0.00', Total,[]); Inc(Linha);
  rdp.Imp(Linha,25,'SERVICO R$');
  rdp.ImpVal(Linha,35,'##0.00', TotalServico,[]); Inc(Linha);
  rdp.Imp(Linha,25,'TOTAL R$');
  rdp.ImpVal(Linha,35,'##0.00', Total+TotalServico,[]);

  {Finalizar, Saltar Papel}
  Linha:=Linha+9;
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
