unit RelatorioComposicaoPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, DBTables, Placemnt, DB, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, Grids,
  DBGrids, UCrpe32;

type
  TFormRelatorioComposicaoPedido = class(TFormRelatorioTEMPLATE)
    SQLPedido: TRxQuery;
    GroupBox2: TGroupBox;
    dblPedido: TRxDBLookupCombo;
    dsSQLPedido: TDataSource;
    SQLLista: TRxQuery;
    SQLPedidoCLIEA60RAZAOSOC: TStringField;
    SQLPedidoPDVDA13ID: TStringField;
    Report: TCrpe;
    TblTemporariaIDPEDIDO: TStringField;
    TblTemporariaPRODUTOPEDIDO: TIntegerField;
    TblTemporariaPRODUTOPEDIDONOME: TStringField;
    TblTemporariaPRODUTOPEDIDOREF: TStringField;
    TblTemporariaQUANTPEDIDO: TBCDField;
    TblTemporariaPRODUTOFILHO: TIntegerField;
    TblTemporariaPRODUTONOMEFILHO: TStringField;
    TblTemporariaQUANTFILHO: TBCDField;
    TblTemporariaQUANTFILHOSPEDIDO: TFloatField;
    TblTemporariaPRODUTOFILHO_S_A: TIntegerField;
    TblTemporariaPRODUTOFILHONOME_S_A: TStringField;
    TblTemporariaQUANTNETO: TBCDField;
    TblTemporariaQUANTNETOSPEDIDO: TFloatField;
    TblTemporariaQUANTESTOQUEPAI: TBCDField;
    TblTemporariaQUANTESTOQUEFILHO: TBCDField;
    TblTemporariaQUANTESTOQUENETO: TBCDField;
    chkPeriodo: TCheckBox;
    GroupBox3: TGroupBox;
    SQLCliente: TRxQuery;
    dblVendedor: TRxDBLookupCombo;
    DSSQLCliente: TDataSource;
    GroupBox4: TGroupBox;
    dblCliente: TRxDBLookupCombo;
    SQLVendedor: TRxQuery;
    DSSQLVendedor: TDataSource;
    SQLListaIDPEDIDO: TStringField;
    SQLListaPRODUTOPEDIDO: TIntegerField;
    SQLListaCLIENTEPEDIDO: TStringField;
    SQLListaDTPEDIDO: TDateTimeField;
    SQLListaVENDEDORPEDIDO: TStringField;
    SQLListaPRODUTOPEDIDONOME: TStringField;
    SQLListaPRODUTOPEDIDOREF: TStringField;
    SQLListaQUANTPEDIDO: TBCDField;
    SQLListaPRODUTOFILHO: TIntegerField;
    SQLListaPRODUTONOMEFILHO: TStringField;
    SQLListaQUANTFILHO: TBCDField;
    SQLListaQUANTFILHOSPEDIDO: TFloatField;
    SQLListaPRODUTOFILHO_S_A: TIntegerField;
    SQLListaPRODUTOFILHONOME_S_A: TStringField;
    SQLListaQUANTNETO: TBCDField;
    SQLListaQUANTNETOSPEDIDO: TFloatField;
    SQLListaQUANTESTOQUEPAI: TBCDField;
    SQLListaQUANTESTOQUEFILHO: TBCDField;
    SQLListaQUANTESTOQUENETO: TBCDField;
    SQLPedidoCLIEA13ID: TStringField;
    SQLPedidoVENDICOD: TIntegerField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dblPedidoChange(Sender: TObject);
    procedure dblClienteChange(Sender: TObject);
    procedure dblVendedorChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioComposicaoPedido: TFormRelatorioComposicaoPedido;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioComposicaoPedido.ExecutarBtnClick(Sender: TObject);
Var ListaProdutos : TStringList;
begin
  inherited;
  try
    TblTemporaria.Close;
    TblTemporaria.DeleteTable;
    TblTemporaria.CreateTable;
  except
     TblTemporaria.CreateTable;
  end;

  SQLLista.MacroByName('MFiltro').AsString := '0=0';

  SQLLista.Close;
  SQLLista.MacroByName('MEmpresa').AsString := ' PRODUTOSALDO.EMPRICOD = ' + Copy(ComboEmpresa.Text, 0, Pos('-', ComboEmpresa.Text) - 1);
  if dblPedido.Text <> '...' then
     SQLLista.MacroByName('MFiltro').AsString := ' PEDIDOVENDAITEM.PDVDA13ID = "' + dblPedido.KeyValue + '"';

  if dblCliente.Text <> '...' then
     begin
       if SQLLista.MacroByName('MFiltro').AsString = '0=0' then
          SQLLista.MacroByName('MFiltro').AsString := ' PEDIDOVENDAITEM.PDVDA13ID in ( select PDVDA13ID from PEDIDOVENDA where CLIEA13ID = "' + dblCliente.KeyValue + '")'
       else
          SQLLista.MacroByName('MFiltro').AsString := SQLLista.MacroByName('MFiltro').AsString + ' and PEDIDOVENDAITEM.PDVDA13ID in ( select PDVDA13ID from PEDIDOVENDA where CLIEA13ID = "' + dblCliente.KeyValue + '")';
     end;

  if dblVendedor.Text <> '...' then
     begin
       if SQLLista.MacroByName('MFiltro').AsString = '0=0' then
          SQLLista.MacroByName('MFiltro').AsString := ' PEDIDOVENDAITEM.PDVDA13ID in ( select PDVDA13ID from PEDIDOVENDA where VENDICOD = ' + dblVendedor.KeyValue + ')'
       else
          SQLLista.MacroByName('MFiltro').AsString := SQLLista.MacroByName('MFiltro').AsString + 'and PEDIDOVENDAITEM.PDVDA13ID in ( select PDVDA13ID from PEDIDOVENDA where VENDICOD = ' + dblVendedor.KeyValue + ')';
     end;

  if chkPeriodo.Checked then
     begin
       if De.Date > Ate.Date then
          begin
             Informa('A Data Final não pode ser anterior que a Data Inicial');
             Ate.SetFocus;
             Abort;
          end;
       if SQLLista.MacroByName('MFiltro').AsString = '0=0' then
          SQLLista.MacroByName('MFiltro').AsString := ' PEDIDOVENDAITEM.PDVDA13ID in ( select PDVDA13ID from PEDIDOVENDA where PDVDDEMISSAO > Cast("' + FormatDateTime('mm/dd/yyyy hh:mm:nn', De.Date) + '" as TimeStamp) and '+
                                                                                                                              'PDVDDEMISSAO < Cast("' + FormatDateTime('mm/dd/yyyy hh:mm:nn', Ate.Date) + '" as TimeStamp)) '
       else
          SQLLista.MacroByName('MFiltro').AsString := SQLLista.MacroByName('MFiltro').AsString + ' and ' +
                                                      ' PEDIDOVENDAITEM.PDVDA13ID in ( select PDVDA13ID from PEDIDOVENDA where PDVDDEMISSAO > Cast("' + FormatDateTime('mm/dd/yyyy hh:mm:nn', De.Date) + '" as TimeStamp) and '+
                                                                                                                              'PDVDDEMISSAO < Cast("' + FormatDateTime('mm/dd/yyyy hh:mm:nn', Ate.Date) + '" as TimeStamp)) ';
     end;

  BatchMove.Destination := TblTemporaria;
  BatchMove.Mode        := batCopy;
  BatchMove.Source      := SQLLista;

  BatchMove.Execute;

  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Composição Pedido Venda.rpt';

  Report.Formulas.Retrieve;
  if chkPeriodo.Checked then
     begin
        Report.Formulas.Name := 'PeriodoEmissao';
        Report.Formulas.Formula.Text := '"De ' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' + FormatDateTime('dd/mm/yyyy', Ate.Date) + '"';
     end;
  Report.Formulas.Name := 'Pedido';
  Report.Formulas.Formula.Text := '"' + dblPedido.Text + '"';
  Report.Formulas.Send;

  Report.Execute;
end;

procedure TFormRelatorioComposicaoPedido.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLPedido.Active   then SQLPedido.Active   := True;
  if not SQLCliente.Active  then SQLCliente.Active  := True;
  if not SQLVendedor.Active then SQLVendedor.Active := True;
end;
procedure TFormRelatorioComposicaoPedido.dblPedidoChange(Sender: TObject);
begin
  inherited;
  if dblPedido.KeyValue = Null then
     dblCliente.KeyValue := ''
  else
     begin
        dblCliente.KeyValue  := SQLPedidoCLIEA13ID.AsVariant;
        dblVendedor.KeyValue := SQLPedidoVENDICOD.AsVariant;
     end;
end;

procedure TFormRelatorioComposicaoPedido.dblClienteChange(Sender: TObject);
begin
  inherited;
  SQLPedido.Close;

  if (dblCliente.KeyValue <> null) and (dblPedido.KeyValue = null) then
     SQLPedido.MacroByName('MFiltro').AsString := ' PEDIDOVENDA.CLIEA13ID = "' + dblCliente.KeyValue + '"'
  else
     SQLPedido.MacroByName('MFiltro').AsString := '0=0';

  SQLPedido.Open;
end;

procedure TFormRelatorioComposicaoPedido.dblVendedorChange(
  Sender: TObject);
begin
  inherited;
  SQLPedido.Close;

  if (dblVendedor.KeyValue <> null) and (dblPedido.KeyValue = null) then
     SQLPedido.MacroByName('MFiltro').AsString := ' PEDIDOVENDA.VENDICOD = ' + IntToStr(dblVendedor.KeyValue)
  else
     SQLPedido.MacroByName('MFiltro').AsString := '0=0';

  SQLPedido.Open;
end;

end.
