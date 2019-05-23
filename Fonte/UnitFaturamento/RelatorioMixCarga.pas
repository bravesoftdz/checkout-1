unit RelatorioMixCarga;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, DBTables, Placemnt, DB, ComCtrls,
  StdCtrls, Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, UnitLibrary,
  UCrpe32, ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, Grids, DBGrids, ppDB, ppDBPipe, ppDBBDE, ppStrtch, ppViewr,
  ppMemo, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioMixCarga = class(TFormRelatorioTEMPLATE)
    SQLPedidoVendaItem: TRxQuery;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPRODA60DESCR: TStringField;
    RadioData: TRadioGroup;
    RadioOrder: TRadioGroup;
    TblTemporariaQtde: TBCDField;
    RadioStatus: TRadioGroup;
    SQLRota: TRxQuery;
    SQLRotaROTAICOD: TIntegerField;
    GroupBox3: TGroupBox;
    ComboRota: TRxDBLookupCombo;
    DSSQLRota: TDataSource;
    ppReportMixCarga: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppPeriodo: TppLabel;
    ppRota: TppLabel;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel35: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    TblTemporariaPVITN2VLRUNIT: TFloatField;
    SQLRotaROTAA60NOME: TStringField;
    DSSQLPedidoVendaItem: TDataSource;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBCalc1: TppDBCalc;
    SQLPedidoVendaItemPRODICOD: TIntegerField;
    SQLPedidoVendaItemPRODA60DESCR: TStringField;
    SQLPedidoVendaItemQtde: TBCDField;
    PipePedidosItensTotal: TppBDEPipeline;
    ppSummaryBand1: TppSummaryBand;
    SQLPedidoVendaItemValorTotal: TFloatField;
    ListaRotas: TListBox;
    Label5: TLabel;
    Label6: TLabel;
    InlcuirRota: TSpeedButton;
    ExcluirRota: TSpeedButton;
    ppTitleBand1: TppTitleBand;
    ppLine5: TppLine;
    ppDBCalc2: TppDBCalc;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    GroupBox2: TGroupBox;
    ComboVendedor: TRxDBLookupCombo;
    SQLVendedor: TRxQuery;
    DSSQLVendedor: TDataSource;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    ppLabel6: TppLabel;
    ppLabel13: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel39: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    LBUnidade: TppLabel;
    procedure FormCreate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
    procedure InlcuirRotaClick(Sender: TObject);
    procedure ExcluirRotaClick(Sender: TObject);
    function  SQLDeListaRota(ListaRota:TListBox) : String ;
    procedure ppTitleBand1BeforePrint(Sender: TObject);
    procedure ppReportMixCargaPreviewFormCreate(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioMixCarga: TFormRelatorioMixCarga;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioMixCarga.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLRota.Active then SQLRota.Open;
  if not SQLVendedor.Active then SQLVendedor.Open;
end;

procedure TFormRelatorioMixCarga.ExecutarBtnClick(
  Sender: TObject);
var
 I : Integer;
begin
//  inherited;
  SQLPedidoVendaItem.Close;
  SQLPedidoVendaItem.MacrobyName('Empresa').Value        := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'PEDIDOVENDA','') ;
  Case RadioData.ItemIndex of
    0 : SQLPedidoVendaItem.MacroByName('CampoData').Value := 'PedidoVenda.PDVDDEMISSAO';
    1 : SQLPedidoVendaItem.MacroByName('CampoData').Value := 'PedidoVenda.PDVDDENTREGA';
  end;

  SQLPedidoVendaItem.MacroByName('DataInicial').Value    := ' "' + FormatDateTime('mm/dd/yyyy',De.Date) + '" ';
  SQLPedidoVendaItem.MacroByName('DataFinal').Value      := ' "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '" ';

  Case RadioStatus.ItemIndex of
    0 : SQLPedidoVendaItem.MacroByName('Status').Value := 'PedidoVenda.PDVDCSTATUS = "A"';
    1 : SQLPedidoVendaItem.MacroByName('Status').Value := 'PedidoVenda.PDVDCSTATUS = "E"';
    2 : SQLPedidoVendaItem.MacroByName('Status').Value := 'PedidoVenda.PDVDCSTATUS = "C"';
    3 : SQLPedidoVendaItem.MacroByName('Status').Value := 'PedidoVenda.PDVDCSTATUS = "F"';  end;

  SQLPedidoVendaItem.MacrobyName('Rota').Value           := SQLDeListaRota(ListaRotas) ;

  if ComboVendedor.KeyValue <> null then
    SQLPedidoVendaItem.MacrobyName('Vendedor').Value := 'PedidoVenda.VENDICOD =' + ComboVendedor.KeyValue
  else
    SQLPedidoVendaItem.MacrobyName('Vendedor').Value := '0=0';

  Case RadioOrder.ItemIndex of
    0 : SQLPedidoVendaItem.MacroByName('Ordem').Value  := 'ORDER BY PedidoVendaItem.PRODICOD';
    1 : SQLPedidoVendaItem.MacroByName('Ordem').Value  := 'ORDER BY Produto.PRODA60DESCR';
  end;

  SQLPedidoVendaItem.Open;

  if SQLPedidoVendaItem.IsEmpty then
    ShowMessage('Não foi encontrado nenhum pedido para impressão! Verifique...')
  else
    ppReportMixCarga.Print;
end;


procedure TFormRelatorioMixCarga.InlcuirRotaClick(Sender: TObject);
var i : integer ;
begin
  inherited;
  if ComboRota.Value <> 'Todas' then
  begin
    for i := 0 to ListaRotas.Items.Count-1 do
      if ListaRotas.Items.Strings[i] = ComboRota.Text then
        exit ;

    ListaRotas.Items.Add(ComboRota.Text) ;
  end ;
end;

procedure TFormRelatorioMixCarga.ExcluirRotaClick(Sender: TObject);
begin
  inherited;
  if ListaRotas.Items.Count > 0 then
    ListaRotas.Items.Delete(ListaRotas.ItemIndex) ;
end;

function TFormRelatorioMixCarga.SQLDeListaRota(ListaRota:TListBox) : String ;
var i   : integer ;
    SQLRota : string ;
begin
  if ListaRota.Items.Count = 0 then
  begin
    if (ComboRota.Text <> '') and (ComboRota.Text <> 'Todas')then
      SQLRota := 'PedidoVenda.RotaIcod = ' + '"' + ComboRota.Value + '"'
    else
      SQLRota := '0=0' ;
  end
  else begin
    SQLRota := '' ;
    for I:=0 To ListaRota.Items.Count-1 Do
    begin
      if I = ListaRota.Items.Count-1 Then
        SQLRota := SQLRota + 'PedidoVenda.RotaIcod = ' + '"' + Copy(ListaRota.Items[I],1,Pos('-',ListaRota.Items[I]) - 1) + '"'
      else
        SQLRota := SQLRota + 'PedidoVenda.RotaIcod = ' + '"' + Copy(ListaRota.Items[I],1,Pos('-',ListaRota.Items[I]) - 1) + '"' + ' or '
    end ;
  end ;

  SQLDeListaRota := SQLRota ;
end ;

procedure TFormRelatorioMixCarga.ppTitleBand1BeforePrint(Sender: TObject);
var i : integer;
begin
  inherited;
  ppPeriodo.Caption := 'Período de Entrega:  '+De.Text+ '  até  '+ Ate.Text;
  ppRota.Caption := 'Rota(s): ';
  for I:=0 To ListaRotas.Items.Count-1 Do
  begin
    if I = ListaRotas.Items.Count-1 Then
      ppRota.Caption := ppRota.Caption + ListaRotas.Items.Strings[I]
    else
      ppRota.Caption := ppRota.Caption + ListaRotas.Items.Strings[I] + ', ';
  end ;
end;

procedure TFormRelatorioMixCarga.ppReportMixCargaPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ppReportMixCarga.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppReportMixCarga.PreviewForm.Viewer).ZoomPercentage := 100;
end;

procedure TFormRelatorioMixCarga.ppDetailBand1BeforePrint(Sender: TObject);
begin
  inherited;
  LbUnidade.Caption := dm.SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',DM.SQLLocate('PRODUTO','PRODICOD','UNIDICOD',SQLPedidoVendaItemPRODICOD.AsString));
end;

end.
