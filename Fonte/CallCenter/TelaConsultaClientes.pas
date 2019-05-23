unit TelaConsultaClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, Buttons, DBCtrls, Mask,
  ExtCtrls;

type
  TFormTelaConsultaClientes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBCheckPendente: TDBCheckBox;
    DBMemo2: TDBMemo;
    DBMemo1: TDBMemo;
    BitBtn1: TBitBtn;
    DBEdit2: TDBEdit;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    SQLTemplate: TQuery;
    SQLTptarefa: TQuery;
    SQLCliente: TQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaClientes: TFormTelaConsultaClientes;

implementation

{$R *.dfm}

end.
