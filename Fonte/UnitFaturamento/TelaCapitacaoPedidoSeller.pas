unit TelaCapitacaoPedidoSeller;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, DBTables, RxQuery, Buttons,
  AdvOfficeStatusBar, ExtCtrls, AdvOfficeStatusBarStylers;

type
  TFormTelaCapitacaoPedidosSeller = class(TForm)
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    PanelCabecalho: TPanel;
    LabelTitulo: TLabel;
    PanelNavigator: TPanel;
    AdvPanelNavigator: TAdvOfficeStatusBar;
    BtnFecharTela: TSpeedButton;
    DSTemplate: TDataSource;
    SQLTemplate: TRxQuery;
    GroupBox1: TGroupBox;
    DBGridLista: TDBGrid;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    DBGrid2: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaCapitacaoPedidosSeller: TFormTelaCapitacaoPedidosSeller;

implementation

{$R *.dfm}

end.
