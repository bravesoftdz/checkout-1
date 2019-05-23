unit uDlgTransferencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, DBClient, Buttons, ExtCtrls;

type
  TfDlgTransferencia = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    mTransfPedido: TClientDataSet;
    dsmTransfPedidoCompra: TDataSource;
    mTransfPedidoCodigo_Produto: TIntegerField;
    mTransfPedidoNome_Produto: TStringField;
    mTransfPedidoCodigo_Barra: TStringField;
    mTransfPedidoReferencia: TStringField;
    mTransfPedidoQuantidade: TFloatField;
    mTransfPedidoQuantidade_Informada: TFloatField;
    cxGrid1DBTableView1Codigo_Produto: TcxGridDBColumn;
    cxGrid1DBTableView1Nome_Produto: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Barra: TcxGridDBColumn;
    cxGrid1DBTableView1Referencia: TcxGridDBColumn;
    cxGrid1DBTableView1Quantidade: TcxGridDBColumn;
    cxGrid1DBTableView1Quantidade_Informada: TcxGridDBColumn;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDlgTransferencia: TfDlgTransferencia;

implementation

{$R *.dfm}

procedure TfDlgTransferencia.SpeedButton1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfDlgTransferencia.SpeedButton2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
