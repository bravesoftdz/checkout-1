unit CadastroOrdemProducaoPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, RxLookup, StdCtrls, DBTables, DBActns,
  ActnList, ImgList, DB, RxQuery, Menus, Mask, Grids, DBGrids, ComCtrls,
  ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls, RxDBComb, ToolEdit, RXDBCtrl;

type
  TFormCadastroOrdemProducaoPedidos = class(TFormCadastroTEMPLATE)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    dblPedido: TRxDBLookupCombo;
    SQLPedido: TRxQuery;
    dsSQLPedido: TDataSource;
    SQLPedidoPDVDA13ID: TStringField;
    SQLPedidoPDVDDEMISSAO: TDateTimeField;
    SQLPedidoPDVDCSTATUS: TStringField;
    SQLPedidoPDVDTOBS: TStringField;
    SQLPedidoUSUAA60LOGIN: TStringField;
    SQLPedidoCLIEA60RAZAOSOC: TStringField;
    SQLPedidoCLIEA60CIDRES: TStringField;
    SQLPedidoCLIEA2UFRES: TStringField;
    SQLPedidoCLIEA15FONE1: TStringField;
    Label3: TLabel;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    Label12: TLabel;
    DBEdit7: TDBEdit;
    SQLPedidoCLIEA60CONTATO: TStringField;
    Label13: TLabel;
    DBEdit8: TDBEdit;
    DBEdit6: TDBEdit;
    GroupBox2: TGroupBox;
    SQLProdutoPedidoProducao: TRxQuery;
    DBGridProdutoPedidoProducao: TDBGrid;
    dsSQLProdutoPedidoProducao: TDataSource;
    SQLProdutoPedidoProducaoIDOP: TStringField;
    SQLProdutoPedidoProducaoIDPEDIDO: TStringField;
    SQLProdutoPedidoProducaoQTDEPEDIDO: TBCDField;
    SQLProdutoPedidoProducaoIDLOTE: TStringField;
    SQLProdutoPedidoProducaoQTDELOTE: TBCDField;
    SQLProdutoPedidoProducaoCODPRODUTO: TIntegerField;
    SQLProdutoPedidoProducaoDESCRPRODUTO: TStringField;
    Label9: TLabel;
    SQLPedidoContatoCliente: TStringField;
    SQLPedidoFoneCliente: TStringField;
    SQLPedidoDtEmissao: TDateTimeField;
    SQLPedidoCidadeCliente: TStringField;
    SQLPedidoStatus: TStringField;
    Label14: TLabel;
    DBEdit4: TDBEdit;
    Label15: TLabel;
    DBEdit9: TDBEdit;
    SQLTemplateOPIDICOD: TIntegerField;
    SQLTemplateORPRA13ID: TStringField;
    SQLTemplatePRLTA13ID: TStringField;
    SQLTemplatePDVDA13ID: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure dblPedidoChange(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure DBGridProdutoPedidoProducaoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SQLPedidoCalcFields(DataSet: TDataSet);
    procedure SQLTemplateAfterOpen(DataSet: TDataSet);
    procedure SQLPedidoAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroOrdemProducaoPedidos: TFormCadastroOrdemProducaoPedidos;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormCadastroOrdemProducaoPedidos.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'ORDEMPRODUCITEMPED';
end;

procedure TFormCadastroOrdemProducaoPedidos.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateORPRA13ID.AsString := DSMasterTemplate.DataSet.FieldByName('ORPRA13ID').AsString;
  SQLTemplatePRLTA13ID.AsString := DSMasterTemplate.DataSet.FieldByName('PRLTA13ID').AsString;
end;

procedure TFormCadastroOrdemProducaoPedidos.dblPedidoChange(
  Sender: TObject);
begin
  inherited;
  SQLProdutoPedidoProducao.Close;
  SQLProdutoPedidoProducao.MacroByName('MFiltro').AsString := ' PEDIDOVENDAITEM.PDVDA13ID = "' + dblPedido.KeyValue + '" ' +
                                                              ' and (ORDEMPRODUCAOITEM.ORPRA13ID = "' + SQLTemplateORPRA13ID.AsString + '" or ORDEMPRODUCAOITEM.ORPRA13ID is null)';
  SQLProdutoPedidoProducao.Open;
end;

procedure TFormCadastroOrdemProducaoPedidos.SQLTemplateBeforePost(
  DataSet: TDataSet);
Var Produtos : String;
    Continua : Boolean;
begin
  inherited;
  Continua := True;
  if DataSet.State in [dsInsert] then //Verifica Duplicidade de Pedidos para a OP
     begin
        SQLCount.Close;
        SQLCount.SQL.Text := 'select Count(*) as Total from ORDEMPRODUCITEMPED where ORPRA13ID = "' + SQLTemplateORPRA13ID.AsString + '" and ' +
                             ' PDVDA13ID = "' + SQLTemplatePDVDA13ID.AsString + '" and ' +
                             ' PRLTA13ID = "' + SQLTemplatePRLTA13ID.AsString + '"';
        SQLCount.Open;

        if SQLCount.FieldByName('Total').AsInteger > 0 then
           begin
              Informa('Este Pedido ja esta vinculado a esta Ordem de Produção.');
              SQLCount.Close;
              Abort;
           end;
     end;

{  SQLCount.Close;
  SQLCount.SQL.Text := ' select PRODUTO.PRODICOD, PRODUTO.PRODA60DESCR, (Sum(PRODUCAOLOTE.PRLTN2QTDE) - Sum(PEDIDOVENDAITEM.PVITN3QUANT)) as VericaQtde ' +
                       ' from PEDIDOVENDAITEM ' +
                       ' left outer join PRODUCAOLOTE on PRODUCAOLOTE.PRODICOD = PEDIDOVENDAITEM.PRODICOD ' +
                       ' left outer join ORDEMPRODUCAOITEM on ORDEMPRODUCAOITEM.PRLTA13ID = PRODUCAOLOTE.PRLTA13ID ' +
                       ' left outer join PRODUTO on PRODUTO.PRODICOD = PEDIDOVENDAITEM.PRODICOD ' +
                       ' where ORDEMPRODUCAOITEM.ORPRA13ID = "' + SQLTemplateORPRA13ID.AsString + '"' +
                       ' group by PRODUTO.PRODICOD, PRODUTO.PRODA60DESCR ';
  SQLCount.Open;

  if not SQLCount.IsEmpty then
     begin
         SQLCount.First;
         while not SQLCount.Eof do
           begin
             if SQLCount.FieldByName('VericaQtde').AsFloat < 0 then
                begin
                   if Produtos = '' then
                      Produtos := SQLCount.FieldByName('PRODICOD').AsString + ' - ' + SQLCount.FieldByName('PRODA60DESCR').AsString
                   else
                      Produtos := Produtos + Char(13) + SQLCount.FieldByName('PRODICOD').AsString + ' - ' + SQLCount.FieldByName('PRODA60DESCR').AsString;
                   Continua := False;
                end;
             SQLCount.Next;
           end;
         if not Continua then
            begin
                Informa('A ordem de Produção não suprirá a quantidade necessária para ' + Char(13) +
                        'a entrega dos Pedidos a ela associada.' + Char(13) +
                        'Favor Associe mais Lotes dos produtos:' + Char(13) +
                        Produtos);
            end;
     end;}
end;

procedure TFormCadastroOrdemProducaoPedidos.DBGridProdutoPedidoProducaoDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if gdSelected in State then
     DBGridProdutoPedidoProducao.Canvas.Brush.Color := $00FCEDED;

  if not SQLProdutoPedidoProducaoIDLOTE.IsNull then
     DBGridProdutoPedidoProducao.Canvas.Font.Color := clBlue;

  DBGridProdutoPedidoProducao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFormCadastroOrdemProducaoPedidos.SQLPedidoCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if dblPedido.KeyValue <> Null then
     begin

        if not SQLPedidoCLIEA60CIDRES.IsNull then
           SQLPedidoCidadeCliente.AsString := SQLPedidoCLIEA60CIDRES.AsString + '\' + SQLPedidoCLIEA2UFRES.AsString;

        if not SQLPedidoPDVDCSTATUS.IsNull then
           case SQLPedidoPDVDCSTATUS.AsString[1] of
              'A' : SQLPedidoStatus.AsString := 'Aberto';
              'E' : SQLPedidoStatus.AsString := 'Encerrado';
              'C' : SQLPedidoStatus.AsString := 'Cancelado';
           end;
        SQLPedidoDtEmissao.AsDateTime    := SQLPedidoPDVDDEMISSAO.AsDateTime;
        SQLPedidoFoneCliente.AsString    := SQLPedidoCLIEA15FONE1.AsString;
        SQLPedidoContatoCliente.AsString := SQLPedidoCLIEA60CONTATO.AsString;
     end
  else
     begin
        SQLPedidoDtEmissao.AsVariant     := Null;
        SQLPedidoFoneCliente.AsString    := '';
        SQLPedidoContatoCliente.AsString := '';
        SQLPedidoCidadeCliente.AsString  := '';
        SQLPedidoStatus.AsString         := '';
     end;
end;

procedure TFormCadastroOrdemProducaoPedidos.SQLTemplateAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  SQLPedido.Close;
  SQLPedido.MacroByName('MFiltro').AsString := ' PRODUCAOLOTE.PRLTA13ID = "' + SQLTemplatePRLTA13ID.AsString + '"';
  SQLPedido.Open;
end;

procedure TFormCadastroOrdemProducaoPedidos.SQLPedidoAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  dblPedidoChange(Nil);
end;

end.
