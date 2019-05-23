unit RelatorioPedidoVendaEntrega;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, UnitLibrary,
  UCrpe32, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioPedidoVendaEntrega = class(TFormRelatorioTEMPLATE)
    SQLPedidoVenda: TRxQuery;
    RadioData: TRadioGroup;
    RadioTipo: TRadioGroup;
    RadioStatus: TRadioGroup;
    GroupVendedor: TGroupBox;
    ComboVendedor: TRxDBLookupCombo;
    DSSQLVendedor: TDataSource;
    SQLVendedor: TRxQuery;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    GroupCliente: TGroupBox;
    ComboCliente: TRxDBLookupCombo;
    DSSQLCliente: TDataSource;
    SQLCliente: TRxQuery;
    SQLPedidoVendaPDVDA13ID: TStringField;
    SQLPedidoVendaEMPRICOD: TIntegerField;
    SQLPedidoVendaPDVDICOD: TIntegerField;
    SQLPedidoVendaVENDICOD: TIntegerField;
    SQLPedidoVendaCLIEA13ID: TStringField;
    SQLPedidoVendaTRANICOD: TIntegerField;
    SQLPedidoVendaPLRCICOD: TIntegerField;
    SQLPedidoVendaPDVDDEMISSAO: TDateTimeField;
    SQLPedidoVendaPDVDN2VLRFRETE: TBCDField;
    SQLPedidoVendaPDVDA30NROPEDCOMP: TStringField;
    SQLPedidoVendaPDVDA30COMPRADOR: TStringField;
    SQLPedidoVendaPDVDCTIPO: TStringField;
    SQLPedidoVendaPDVDCSTATUS: TStringField;
    SQLPedidoVendaPDVDN2VLRDESC: TBCDField;
    SQLPedidoVendaPDVDN2TOTPROD: TBCDField;
    SQLPedidoVendaPDVDN2TOTPED: TBCDField;
    SQLPedidoVendaPDVDTOBS: TStringField;
    SQLPedidoVendaPDVDN2VLRDESCPROM: TBCDField;
    SQLPedidoVendaPDVDCTIPOFRETE: TStringField;
    SQLPedidoVendaPDVDDENTREGA: TDateTimeField;
    SQLPedidoVendaPDVDINROTALAO: TIntegerField;
    SQLPedidoVendaCLIEA60NOMEFANT: TStringField;
    SQLTransportadora: TRxQuery;
    SQLTransportadoraTRANICOD: TIntegerField;
    SQLTransportadoraTRANA60RAZAOSOC: TStringField;
    SQLPlanoRecbto: TRxQuery;
    SQLPlanoRecbtoPLRCICOD: TIntegerField;
    SQLPlanoRecbtoPLRCA60DESCR: TStringField;
    TblTemporariaPDVDA13ID: TStringField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaPDVDICOD: TIntegerField;
    TblTemporariaVENDICOD: TIntegerField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    TblTemporariaTRANICOD: TIntegerField;
    TblTemporariaPLRCICOD: TIntegerField;
    TblTemporariaPDVDDEMISSAO: TDateTimeField;
    TblTemporariaPDVDN2VLRFRETE: TBCDField;
    TblTemporariaPDVDA30NROPEDCOMP: TStringField;
    TblTemporariaPDVDA30COMPRADOR: TStringField;
    TblTemporariaPDVDCTIPO: TStringField;
    TblTemporariaPDVDCSTATUS: TStringField;
    TblTemporariaPDVDN2VLRDESC: TBCDField;
    TblTemporariaPDVDN2TOTPROD: TBCDField;
    TblTemporariaPDVDN2TOTPED: TBCDField;
    TblTemporariaPDVDTOBS: TStringField;
    TblTemporariaPDVDN2VLRDESCPROM: TBCDField;
    TblTemporariaPDVDCTIPOFRETE: TStringField;
    TblTemporariaPDVDDENTREGA: TDateTimeField;
    TblTemporariaPDVDINROTALAO: TIntegerField;
    SQLPedidoVendaVendedorLookup: TStringField;
    SQLPedidoVendaTransportadoraLookup: TStringField;
    SQLPedidoVendaPlanoRecbtoLookup: TStringField;
    TblTemporariaVendedorLookup: TStringField;
    TblTemporariaTransportadoraLookup: TStringField;
    TblTemporariaPlanoRecbtoLookup: TStringField;
    RadioOrder: TRadioGroup;
    Report: TCrpe;
    SQLPedidoVendaTPDCA60DESCR: TStringField;
    TblTemporariaTPDCA60DESCR: TStringField;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60NOMEFANT: TStringField;
    TblTemporariaCLIEA60NOMEFANT: TStringField;
    SQLPedidoVendaCLIEA60RAZAOSOC: TStringField;
    SQLPedidoVendaCLIEA60ENDRES: TStringField;
    SQLPedidoVendaCLIEA60CIDRES: TStringField;
    TblTemporariaCLIEA60ENDRES: TStringField;
    TblTemporariaCLIEA60CIDRES: TStringField;
    SQLPedidoVendaCLIEA60BAIRES: TStringField;
    TblTemporariaCLIEA60BAIRES: TStringField;
    GroupSerie: TGroupBox;
    ComboSerie: TRxDBLookupCombo;
    DSSQLSerie: TDataSource;
    SQLSerie: TRxQuery;
    SQLSerieSERIA5COD: TStringField;
    SQLPedidoVendaSERIA5COD: TStringField;
    TblTemporariaSERIA5COD: TStringField;
    GroupBox2: TGroupBox;
    ComboRota: TRxDBLookupCombo;
    SQLRota: TRxQuery;
    SQLRotaROTAICOD: TIntegerField;
    SQLRotaROTAA60NOME: TStringField;
    DSSQLRota: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioPedidoVendaEntrega: TFormRelatorioPedidoVendaEntrega;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioPedidoVendaEntrega.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLCliente.Active then SQLCliente.Open;
  if not SQLVendedor.Active then SQLVendedor.Open;
  if not SQLSerie.Active then SQLSerie.Open;
  if not SQLRota.Active then SQLRota.Open;
end;

procedure TFormRelatorioPedidoVendaEntrega.ExecutarBtnClick(Sender: TObject);
var
 I : Integer;
begin
  inherited;
  De.ValidateEdit;
  Ate.ValidateEdit;

  if not SQLTransportadora.Active then SQLTransportadora.Open;
  if not SQLPlanoRecbto.Active then SQLPlanoRecbto.Open;

  SqlPedidoVenda.Close;

  SQLPedidoVenda.MacrobyName('Empresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'PEDIDOVENDA','EMPRICOD') ;

  SQLPedidoVenda.MacroByName('DataInicial').Value := ' "' + FormatDateTime('mm/dd/yyyy',De.Date) + '" ';
  SQLPedidoVenda.MacroByName('DataFinal').Value   := ' "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '" ';

  Case RadioData.ItemIndex of
    0 : SQLPedidoVenda.MacroByName('CampoData').Value := 'PedidoVenda.PDVDDEMISSAO';
    1 : SQLPedidoVenda.MacroByName('CampoData').Value := 'PedidoVenda.PDVDDENTREGA';
  end;
  Case RadioTipo.ItemIndex of
    0 : SQLPedidoVenda.MacroByName('TipoPedido').Value := 'PedidoVenda.PDVDCTIPO = "P"';
    1 : SQLPedidoVenda.MacroByName('TipoPedido').Value := 'PedidoVenda.PDVDCTIPO = "O"';
  end;
  Case RadioStatus.ItemIndex of
   -1 : SQLPedidoVenda.MacroByName('StatusPedido').Value := '0=0';
    0 : SQLPedidoVenda.MacroByName('StatusPedido').Value := 'PedidoVenda.PDVDCSTATUS = "A"';
    1 : SQLPedidoVenda.MacroByName('StatusPedido').Value := 'PedidoVenda.PDVDCSTATUS = "E"';
    2 : SQLPedidoVenda.MacroByName('StatusPedido').Value := 'PedidoVenda.PDVDCSTATUS = "C"';
    3 : SQLPedidoVenda.MacroByName('StatusPedido').Value := 'PedidoVenda.PDVDCSTATUS = "F"';
  end;

  if (ComboVendedor.KeyValue <> null) and (ComboVendedor.KeyValue > 0) then
    SQLPedidoVenda.MacroByName('Vendedor').Value := 'PedidoVenda.VENDICOD = ' + IntToStr(ComboVendedor.KeyValue)
  else
    SQLPedidoVenda.MacroByName('Vendedor').Value := '0=0';

  if ComboRota.KeyValue <> null then
    SQLPedidoVenda.MacrobyName('Rota').Value := 'PedidoVenda.ROTAICOD =' + ComboRota.KeyValue
  else
    SQLPedidoVenda.MacrobyName('Rota').Value := '0=0';

  if (ComboCliente.KeyValue <> null) and (ComboCliente.KeyValue > 0) then
    SQLPedidoVenda.MacroByName('Cliente').Value := 'PedidoVenda.CLIEA13ID = ' + ComboCliente.KeyValue
  else
    SQLPedidoVenda.MacroByName('Cliente').Value := '0=0';

  if ComboSerie.Value <> '' then
    SQLPedidoVenda.MacroByName('Serie').Value := 'PedidoVenda.SERIA5COD = ' + '"'+ComboSerie.Value+'"'
  else
    SQLPedidoVenda.MacroByName('Serie').Value := '0=0';

  Case RadioOrder.ItemIndex of
    0 : SQLPedidoVenda.MacroByName('Ordem').Value := 'ORDER BY PedidoVenda.PDVDA13ID';
    1 : SQLPedidoVenda.MacroByName('Ordem').Value := 'ORDER BY PedidoVenda.CLIEA13ID';
    2 : SQLPedidoVenda.MacroByName('Ordem').Value := 'ORDER BY PedidoVenda.PDVDDEMISSAO';
    3 : SQLPedidoVenda.MacroByName('Ordem').Value := 'ORDER BY PedidoVenda.PDVDDENTREGA';
    4 : SQLPedidoVenda.MacroByName('Ordem').Value := 'ORDER BY Cliente.CLIEA60CIDRES,Cliente.CLIEA60BAIRES';
  end;

  SQLPedidoVenda.Open;

   if not TblTemporaria.Active then
     TblTemporaria.Open;

    SQLPedidoVenda.First ;
    while not SQLPedidoVenda.Eof do
      begin
        TblTemporaria.Append ;
        for i := 0 to SQLPedidoVenda.FieldCount-1 do
          if SQLPedidoVenda.Fields[i].AsString <> '' then
            TblTemporaria.FieldByName(SQLPedidoVenda.Fields[i].FieldName).AsVariant := SQLPedidoVenda.Fields[i].AsVariant ;
        TblTemporaria.Post ;
        SQLPedidoVenda.Next ;
      end ;
   TblTemporaria.First ;
   Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Listagem Pedidos de Venda Entrega.rpt' ;

   Report.Formulas.Retrieve;
   Report.Formulas.Name := 'Emissao';
   Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss',Now) + '"';
   Report.Formulas.Name := 'PeriodoEmissao';
   Report.Formulas.Formula.Text := '"' + De.Text + ' até ' + Ate.Text + '"';
   Report.Formulas.Name := 'Data';
   case RadioData.ItemIndex of
     0 : Report.Formulas.Formula.Text := '"' + 'Data de Emissão' + '"';
     1 : Report.Formulas.Formula.Text := '"' + 'Data de Entrega' + '"';
   end;
   Report.Formulas.Name := 'Status';
   case RadioStatus.ItemIndex of
     0 : Report.Formulas.Formula.Text := '"' + 'Aberto' + '"';
     1 : Report.Formulas.Formula.Text := '"' + 'Encerrado' + '"';
     2 : Report.Formulas.Formula.Text := '"' + 'Cancelado' + '"';
   end;
   Report.Formulas.Name := 'Tipo';
   case RadioTipo.ItemIndex of
     0 : Report.Formulas.Formula.Text := '"' + 'Pedido' + '"';
     1 : Report.Formulas.Formula.Text := '"' + 'Orçamento' + '"';
   end;
   Report.Formulas.Name := 'Ordem';
   case RadioOrder.ItemIndex of
     0 : Report.Formulas.Formula.Text := '"' + 'Cliente' + '"';
     1 : Report.Formulas.Formula.Text := '"' + 'Data de Emissão' + '"';
     2 : Report.Formulas.Formula.Text := '"' + 'Data de Entrega' + '"';
   end;
   if (ComboVendedor.KeyValue <> null) and (ComboVendedor.KeyValue > 0) then
     begin
       Report.Formulas.Name := 'Vendedor';
       Report.Formulas.Formula.Text := '"' + ComboVendedor.DisplayValue + '"';
     end;
   if (ComboCliente.KeyValue <> null) and (ComboCliente.KeyValue > 0) then
     begin
       Report.Formulas.Name := 'Cliente';
       Report.Formulas.Formula.Text := '"' + ComboCliente.DisplayValue + '"';
     end;

   Report.Formulas.Send;
   Report.ReportTitle       := 'Listagem de Pedidos de Venda para o Entregador' ;
   Report.WindowStyle.Title := 'Listagem de Pedidos de Venda para o Entregador' ;
   Report.Execute;
end;

end.
