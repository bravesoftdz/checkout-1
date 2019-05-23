unit TelaItensCrediario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, jpeg, ExtCtrls, Grids, DBGrids, RXCtrls, EWall, DBCtrls, DB,
  DBTables, RxQuery;

type
  TFormTelaItensCrediario = class(TForm)
    LblNomeSistema: TRxLabel;
    DSSQLItem: TDataSource;
    SQLItem: TRxQuery;
    SQLItemDOCUMENTO: TStringField;
    SQLItemCUPOM: TIntegerField;
    SQLItemPRODICOD: TIntegerField;
    SQLItemQTDE: TFloatField;
    SQLItemVLRUNIT: TFloatField;
    SQLItemVLRDESC: TFloatField;
    SQLItemSTATUS: TStringField;
    SQLItemEMPRICOD: TIntegerField;
    SQLItemCLIEA13ID: TStringField;
    SQLItemDEMISSAO: TDateTimeField;
    SQLItemPRODA60DESCR: TStringField;
    SQLItemVENDA60NOME: TStringField;
    DBGridItens: TDBGrid;
    RxLabel6: TRxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaItensCrediario: TFormTelaItensCrediario;

implementation

uses  UnitLibrary, TelaRecebimentoCrediario, TelaConsultaContratosCliente;

{$R *.DFM}

procedure TFormTelaItensCrediario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFRee ;
end;

procedure TFormTelaItensCrediario.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
     VK_Escape : Close;
  end;
end;

procedure TFormTelaItensCrediario.FormCreate(Sender: TObject);
begin
  Top    := FormTelaConsultaContratosCliente.Top ;
  Left   := FormTelaConsultaContratosCliente.Left ;
  Height := FormTelaConsultaContratosCliente.Height ;
  Width  := FormTelaConsultaContratosCliente.Width ;

  SQLItem.ParamByName('CLIEA13ID').AsString := FormTelaRecebimentoCrediario.SQLContasReceberCLIEA13ID.AsString;
  SQLItem.ParamByName('CUPOA13ID').AsString := FormTelaConsultaContratosCliente.DBGridLista.Fields[9].AsString;
  SQLItem.Open;

end;

end.
