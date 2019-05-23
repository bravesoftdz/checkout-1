unit RelatorioGiroEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, CurrEdit,
  UCrpe32;

type
  TFormRelatorioGiroEstoque = class(TFormRelatorioTEMPLATE)
    SQLCompras: TRxQuery;
    SQLComprasGRUPICOD: TIntegerField;
    SQLComprasGRUPA60DESCR: TStringField;
    SQLComprasTOTAL: TFloatField;
    SQLVendas: TRxQuery;
    SQLVendasGRUPICOD: TIntegerField;
    SQLVendasGRUPA60DESCR: TStringField;
    SQLVendasTOTAL: TFloatField;
    SQLComprasVENDAPOT: TFloatField;
    SQLValorEstoqAtual: TRxQuery;
    SQLValorEstoqAtualGRUPICOD: TIntegerField;
    SQLValorEstoqAtualGRUPA60DESCR: TStringField;
    SQLValorEstoqAtualVLRESTOQCUSTO: TFloatField;
    SQLValorEstoqAtualVLRESTOQVENDA: TFloatField;
    TblTemporariaGRUPICOD: TIntegerField;
    TblTemporariaGrupo: TStringField;
    TblTemporariaComprasValor: TFloatField;
    TblTemporariaComprasPercTot: TFloatField;
    TblTemporariaVendaPotencial: TFloatField;
    TblTemporariaEstoqueValorVenda: TFloatField;
    TblTemporariaEstoqueValorCusto: TFloatField;
    TblTemporariaVendasValor: TFloatField;
    TblTemporariaVendasPercTot: TFloatField;
    GroupBox2: TGroupBox;
    NroMeses: TCurrencyEdit;
    Report: TCrpe;
    procedure FormCreate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioGiroEstoque: TFormRelatorioGiroEstoque;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioGiroEstoque.FormCreate(Sender: TObject);
begin
  inherited;
  De.Text  := '01' + FormatDateTime('/mm/yyyy', Date);
  Ate.Date := Date ;
end;

procedure TFormRelatorioGiroEstoque.ExecutarBtnClick(Sender: TObject);
var
  TotalCompras,
  TotalVendas : double ;
begin
  inherited;
  TblTemporaria.Open ;
  //COMPRAS DO PERIODO
  SQLCompras.Close ;
  SQLCompras.MacroByName('MData').Value := 'NOTACOMPRA.NOCPDRECEBIMENTO >= "' +
                                           FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                           'NOTACOMPRA.NOCPDRECEBIMENTO <= "' +
                                           FormatDateTime('mm/dd/yyyy', Ate.Date) + '"';
  //GravaArqTexto(SQLCompras.RealSQL.Text, 'C:\WINDOWS\DESKTOP\SQLCOMPRAS.TXT', 'NOVO') ;
  SQLCompras.Open ;

  SQLCompras.First ;
  TotalCompras := 0 ;
  while not SQLCompras.Eof do
    begin
      TblTemporaria.Append ;
      TblTemporariaGRUPICOD.Value          := SQLComprasGRUPICOD.Value ;
      TblTemporariaGrupo.Value             := SQLComprasGRUPA60DESCR.Value ;
      TblTemporariaComprasValor.Value      := SQLComprasTOTAL.Value ;
      TblTemporariaComprasPercTot.Value    := 0 ;
      TblTemporariaVendaPotencial.Value    := SQLComprasVENDAPOT.Value ;
      TblTemporariaEstoqueValorVenda.Value := 0 ;
      TblTemporariaEstoqueValorCusto.Value := 0 ;
      TblTemporariaVendasValor.Value       := 0 ;
      TblTemporariaVendasPercTot.Value     := 0 ;
      TblTemporaria.Post ;

      TotalCompras := TotalCompras + SQLComprasTOTAL.Value ;

      SQLCompras.Next ;
    end ;
  //VENDAS DO PERIODO
  SQLVendas.Close ;
  SQLVendas.MacroByName('MDataCP').Value := 'CUPOM.CUPODEMIS >= "' +
                                            FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                            'CUPOM.CUPODEMIS <= "' +
                                            FormatDateTime('mm/dd/yyyy', Ate.Date) + '"';
  SQLVendas.MacroByName('MDataNF').Value := 'NOTAFISCAL.NOFIDEMIS >= "' +
                                            FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                            'NOTAFISCAL.NOFIDEMIS <= "' +
                                            FormatDateTime('mm/dd/yyyy', Ate.Date) + '"';
  //GravaArqTexto(SQLVendas.RealSQL.Text, 'C:\WINDOWS\DESKTOP\SQLVENDAS.TXT', 'NOVO') ;
  SQLVendas.Open ;

  SQLVendas.First ;
  TotalVendas := 0 ;
  while not SQLVendas.Eof do
    begin
      if TblTemporaria.Locate('GRUPICOD', SQLVendasGRUPICOD.Value, []) then
        begin
          TblTemporaria.Edit ;
          TblTemporariaVendasValor.Value    := SQLVendasTOTAL.Value ;
          TblTemporariaVendasPercTot.Value  := 0 ;
          TblTemporaria.Post ;
        end ;

      TotalVendas := TotalVendas + SQLVendasTOTAL.Value ;

      SQLVendas.Next ;
    end ;
  //GRAVAR SALDO ESTOQUE ATUAL
  SQLValorEstoqAtual.Open ;
  SQLValorEstoqAtual.First ;
  while not SQLValorEstoqAtual.Eof do
    begin
      if TblTemporaria.Locate('GRUPICOD', SQLValorEstoqAtualGRUPICOD.Value, []) then
        begin
          TblTemporaria.Edit ;
          TblTemporariaEstoqueValorVenda.Value := SQLValorEstoqAtualVLRESTOQVENDA.Value ;
          TblTemporariaEstoqueValorCusto.Value := SQLValorEstoqAtualVLRESTOQCUSTO.Value ;
          TblTemporariaVendasPercTot.Value     := 0 ;
          TblTemporaria.Post ;
        end ;

      SQLValorEstoqAtual.Next ;
    end ;
  //CALCULAR PERCENTUAIS
  TblTemporaria.First ;
  while not TblTemporaria.Eof do
    begin
      TblTemporaria.Edit ;
      if (TblTemporariaVendasValor.Value>0) and (TotalVendas>0) then
        TblTemporariaVendasPercTot.AsString := FormatFloat('#,##0.00', (TblTemporariaVendasValor.Value/TotalVendas)*100) ;

      if (TblTemporariaComprasValor.Value>0) and (TotalCompras>0) then
        TblTemporariaComprasPercTot.AsString := FormatFloat('#,##0.00', (TblTemporariaComprasValor.Value/TotalCompras)*100) ;
      TblTemporaria.Post ;

      TblTemporaria.Next ;
    end ;

  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Giro de Estoque.rpt' ;
  Report.ReportTitle       := 'Relatório de Giro de Estoque' ;
  Report.WindowStyle.Title := 'Relatório de Giro de Estoque' ;
  //SETAR FORMULAS NO RPT
  Report.Formulas.Retrieve ;
  //--------------------------------------------------------------------------\\
  //Report.Formulas.Name         := 'Emissao' ;
  //Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Execute;

end ;

end.

