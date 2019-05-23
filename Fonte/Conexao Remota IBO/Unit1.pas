unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, IB_CursorGrid, IB_Components, IB_Grid;

type
  TForm1 = class(TForm)
    DB: TIB_Connection;
    tr: TIB_Transaction;
    SQLProd: TIB_Query;
    dsSQLProd: TIB_DataSource;
    IB_Grid1: TIB_Grid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  db.Open;
  SQLProd.Open;
end;

end.
