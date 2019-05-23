unit telaResumoLoja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RXCtrls, dxGDIPlusClasses, ExtCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, StdCtrls, DBCtrls, dbcgrids, AdvSmoothPanel,
  DB, DBTables, RxQuery, ComCtrls, Grids, DBGrids;

type
  TFormTelaResumoLoja = class(TForm)
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ptopo: TAdvOfficeStatusBar;
    logo_parceiro: TImage;
    RxLabel5: TRxLabel;
    AdvSmoothPanel1: TAdvSmoothPanel;
    Label6: TLabel;
    ContasPagasMesAtual: TRxQuery;
    FloatField1: TFloatField;
    dsContasPagasMesAtual: TDataSource;
    lbTotalVendaMes: TLabel;
    DSSQLTotaNumrario: TDataSource;
    SQLTotaNumerario: TRxQuery;
    SQLTotaNumerarioNUMEICOD: TIntegerField;
    SQLTotaNumerarioNUMEA30DESCR: TStringField;
    SQLTotaNumerarioTOTAL: TFloatField;
    SQLSoma: TRxQuery;
    TblMemDespesas: TTable;
    DSMemDespesas: TDataSource;
    TblMemDespesasDescricao: TStringField;
    TblMemDespesasValor: TFloatField;
    ListaParcelasVista: TDBGrid;
    DBGrid1: TDBGrid;
    SQLEstoque: TRxQuery;
    Label3: TLabel;
    DBGrid2: TDBGrid;
    SQLCompraGrupo: TRxQuery;
    SQLCompraGrupoGRUPICOD: TIntegerField;
    SQLCompraGrupoGRUPA60DESCR: TStringField;
    SQLCompraGrupoQTDETOTAL: TFloatField;
    SQLCompraGrupoTOTAL: TFloatField;
    dsSQLCompraGrupo: TDataSource;
    DBGrid3: TDBGrid;
    Label8: TLabel;
    dsVendasGrupo: TDataSource;
    VendasGrupo: TRxQuery;
    VendasGrupoGRUPICOD: TIntegerField;
    VendasGrupoGRUPA60DESCR: TStringField;
    VendasGrupoQTDETOTAL: TBCDField;
    VendasGrupoTOTAL: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaResumoLoja: TFormTelaResumoLoja;

implementation

{$R *.dfm}

procedure TFormTelaResumoLoja.FormCreate(Sender: TObject);
var Mes, ProxMes, ano: String;
var TotVendasMes, TotComprasMes : Double;
begin
  try
    TblMemDespesas.Close ;
    TblMemDespesas.DeleteTable ;
    TblMemDespesas.CreateTable ;
  except
    TblMemDespesas.CreateTable ;
  end ;
  TblMemDespesas.open;

  // Total de vendas por numerario
  Mes := FormatDateTime('mm',now);
  ano := FormatDateTime('yyyy',now);
  if strtoint(mes) < 12 then
    ProxMes := FormatFloat('##00',strtoint(mes) + 1)
  else
    ProxMes := '01';

  SQLTotaNumerario.Close ;
  SQLTotaNumerario.MacroByName('Filtro').Value := 'MOVIMENTOCAIXA.MVCXDMOV >= "' + mes + '/01/' + ano + '" and ' +
                                                  'MOVIMENTOCAIXA.MVCXDMOV < "' + proxmes +'/01/' + ano + '"';

  SQLTotaNumerario.Open ;
  SQLTotaNumerario.DisableControls;
  TotVendasMes := 0;
  while not SQLTotaNumerario.eof do
    begin
      TotVendasMes := TotVendasMes + SQLTotaNumerarioTOTAL.Value;
      SQLTotaNumerario.next;
    end;
  SQLTotaNumerario.first;
  SQLTotaNumerario.EnableControls;
  lbTotalVendaMes.Caption := lbTotalVendaMes.Caption + FormatFloat('R$##0.00',TotVendasMes);
  lbTotalVendaMes.Update;

  // Total de Pedidos Compras do Mes
  SQLSoma.Close;
  SQLSoma.SQl.Clear;
  SQLSoma.SQL.Add('SELECT sum(PDCPN2TOTITENS - PDCPN2DESCPROM + PDCPN2VLRENCARGO + PDCPN2VLRFRETE) as Total FROM PEDIDOCOMPRA');
  SQLSoma.SQL.Add('WHERE ');
  SQLSoma.SQL.Add('PDCPDEMIS >= "' + mes + '/01/' + ano + '" and ' +
                  'PDCPDEMIS < "' + proxmes +'/01/' + ano + '"');
  SQLSoma.Open;
  If not SQLSoma.IsEmpty then
    if SQLSoma.FieldByName('Total').Value > 0 then
      begin
        TblMemDespesas.Append;
        TblMemDespesasDescricao.Value := 'Total de Pedidos de Compras no Mes';
        TblMemDespesasValor.Value     := SQLSoma.FieldByName('Total').Value;
        TblMemDespesas.Post;
      end;

  // Total de Compras do Mes
  SQLSoma.Close;
  SQLSoma.SQl.Clear;
  SQLSoma.SQL.Add('SELECT sum(NOCPN3VLRTOTNOTA) as Total FROM NOTACOMPRA');
  SQLSoma.SQL.Add('WHERE NOCPCSTATUS <> "E" and ');
  SQLSoma.SQL.Add('NOCPDEMISSAO >= "' + mes + '/01/' + ano + '" and ' +
                  'NOCPDEMISSAO < "' + proxmes +'/01/' + ano + '"');
  SQLSoma.Open;
  If not SQLSoma.IsEmpty then
    if SQLSoma.FieldByName('Total').Value > 0 then
      begin
        TblMemDespesas.Append;
        TblMemDespesasDescricao.Value := 'Total de Compras no Mes';
        TblMemDespesasValor.Value     := SQLSoma.FieldByName('Total').Value;
        TblMemDespesas.Post;
      end;

  // Total de Pagamentos no mes
  SQLSoma.Close;
  SQLSoma.SQl.Clear;
  SQLSoma.SQL.Add('SELECT sum(CTPGN2TOTPAG) as Total FROM CONTASPAGAR where ');
  SQLSoma.SQL.Add('CTPGDULTPAGTO >= "' + mes + '/01/' + ano + '" and ' +
                  'CTPGDULTPAGTO < "' + proxmes +'/01/' + ano + '"');
  SQLSoma.Open;
  If not SQLSoma.IsEmpty then
    if SQLSoma.FieldByName('Total').Value > 0 then
      begin
        TblMemDespesas.Append;
        TblMemDespesasDescricao.Value := 'Pagamentos no Mes';
        TblMemDespesasValor.Value     := SQLSoma.FieldByName('Total').Value;
        TblMemDespesas.Post;
      end;

  // A Pagar Vencidas
  SQLSoma.Close;
  SQLSoma.SQl.Clear;
  SQLSoma.SQL.Add('SELECT sum(CTPGN3VLR - CTPGN2TOTPAG) as Total FROM CONTASPAGAR');
  SQLSoma.SQL.Add('WHERE CTPGDVENC < ' + '"' + FormatDateTime('mm/dd/yyy',Now) + '"');
  SQLSoma.Open;
  If not SQLSoma.IsEmpty then
    if SQLSoma.FieldByName('Total').Value > 0 then
      begin
        TblMemDespesas.Append;
        TblMemDespesasDescricao.Value := 'Total de Contas Vencidas';
        TblMemDespesasValor.Value     := SQLSoma.FieldByName('Total').Value;
        TblMemDespesas.Post;
      end;

  // A Pagar Vencendo Hoje
  SQLSoma.Close;
  SQLSoma.SQl.Clear;
  SQLSoma.SQL.Add('SELECT sum(CTPGN3VLR - CTPGN2TOTPAG) as Total FROM CONTASPAGAR');
  SQLSoma.SQL.Add('WHERE CTPGDVENC = ' + '"' + FormatDateTime('mm/dd/yyy',Now) + '"');
  SQLSoma.Open;
  If not SQLSoma.IsEmpty then
    if SQLSoma.FieldByName('Total').Value > 0 then
      begin
        TblMemDespesas.Append;
        TblMemDespesasDescricao.Value := 'Contas que Vencem Hoje';
        TblMemDespesasValor.Value     := SQLSoma.FieldByName('Total').Value;
        TblMemDespesas.Post;
      end;

  // A Pagar A Vencer 7 dias
  SQLSoma.Close;
  SQLSoma.SQl.Clear;
  SQLSoma.SQL.Add('SELECT sum(CTPGN3VLR - CTPGN2TOTPAG) as Total FROM CONTASPAGAR');
  SQLSoma.SQL.Add('WHERE CTPGDVENC > ' + '"' + FormatDateTime('mm/dd/yyy',Now) + '"');
  SQLSoma.SQL.Add('AND   CTPGDVENC < ' + '"' + FormatDateTime('mm/dd/yyy',Now+8) + '"');
  SQLSoma.Open;
  If not SQLSoma.IsEmpty then
    if SQLSoma.FieldByName('Total').Value > 0 then
      begin
        TblMemDespesas.Append;
        TblMemDespesasDescricao.Value := 'Contas que Vencem em 7 dias';
        TblMemDespesasValor.Value     := SQLSoma.FieldByName('Total').Value;
        TblMemDespesas.Post;
      end;

  // Custo do Estoque Atual
  SQLEstoque.close;
  SQLEstoque.Open;
  If not SQLEstoque.IsEmpty then
    if SQLEstoque.FieldByName('Total').Value > 0 then
      begin
        TblMemDespesas.Append;
        TblMemDespesasDescricao.Value := 'Estoque Atual em Reais';
        TblMemDespesasValor.Value     := SQLEstoque.FieldByName('Total').Value;
        TblMemDespesas.Post;
      end;
  SQLEstoque.close;

  // Compras por Grupo
  SQLCompraGrupo.close;
  SQLCompraGrupo.MacroByName('MData').Value := 'NOTACOMPRA.NOCPDRECEBIMENTO >= "' + mes + '/01/' + ano + '" and ' +
                                               'NOTACOMPRA.NOCPDRECEBIMENTO < "' + proxmes +'/01/' + ano + '"';
  SQLCompraGrupo.Open;

  // Vendas por Grupo
  VendasGrupo.close;
  VendasGrupo.MacroByName('MData').Value := 'CUPOM.CUPODEMIS >= "' + mes + '/01/' + ano + '" and ' +
                                            'CUPOM.CUPODEMIS < "' + proxmes +'/01/' + ano + '"';
  VendasGrupo.Open;
end;

procedure TFormTelaResumoLoja.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TblMemDespesas.close;
end;

end.
