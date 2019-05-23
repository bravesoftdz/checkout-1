unit TelaConsultaRapidaCupom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, RxQuery, Grids, DBGrids, ExtCtrls;

type
  TFormTelaConsultaRapidaCupom = class(TForm)
    DSSQLCupom: TDataSource;
    SQLCupom: TRxQuery;
    SQLCupomCUPOA13ID: TStringField;
    SQLCupomCUPON2TOTITENS: TBCDField;
    SQLCupomCUPODEMIS: TDateTimeField;
    SQLCupomCLIEA60RAZAOSOC: TStringField;
    SQLCupomVENDA60NOME: TStringField;
    SQLCupomPLRCA60DESCR: TStringField;
    DBGridLista: TDBGrid;
    Panel1: TPanel;
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaRapidaCupom: TFormTelaConsultaRapidaCupom;

implementation

{$R *.dfm}

procedure TFormTelaConsultaRapidaCupom.DBGridListaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    ModalResult := mrOk;
  if Key = VK_ESCAPE then
    ModalResult := mrCancel;

end;

end.
