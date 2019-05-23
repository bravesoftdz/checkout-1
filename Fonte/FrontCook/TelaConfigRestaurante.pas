unit TelaConfigRestaurante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, StdCtrls, DBCtrls, Mask, DB, DBTables,
  ActnList, DBActns, Buttons, jpeg, ExtCtrls, RxLookup, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaConfigRestaurante = class(TFormTelaGeralTEMPLATE)
    ActionList1: TActionList;
    DataSetPost1: TDataSetPost;
    DSSQLConfigRestaurante: TDataSource;
    SQLConfigRestaurante: TQuery;
    SQLConfigRestauranteCONFN2TAXASERV: TFloatField;
    SQLConfigRestauranteCONFCPEDEFUNC: TStringField;
    SQLConfigRestauranteCONFCPEDECONTA: TStringField;
    SQLConfigRestauranteFUNCICODPADRAO: TIntegerField;
    SQLConfigRestauranteCONFN2TAXAENTR: TFloatField;
    Label1: TLabel;
    TxServ: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    PedeGarcom: TDBCheckBox;
    PedeConta: TDBCheckBox;
    QryFUNC: TQuery;
    DSQryFUNC: TDataSource;
    QryFUNCUSUAICOD: TIntegerField;
    QryFUNCUSUAA60LOGIN: TStringField;
    LBlGarcomPadrao: TLabel;
    CmbGarcomPadrao: TRxDBLookupCombo;
    LabelGravar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConfigRestaurante: TFormTelaConfigRestaurante;

implementation

{$R *.dfm}

procedure TFormTelaConfigRestaurante.FormCreate(Sender: TObject);
begin
  inherited;
  SQLConfigRestaurante.Open ;
end;

procedure TFormTelaConfigRestaurante.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  SQLConfigRestaurante.Close;
end;

end.
