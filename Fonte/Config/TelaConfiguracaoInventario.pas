unit TelaConfiguracaoInventario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  RxLookup, DB, DBTables, RxQuery, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaConfiguracaoInventario = class(TFormTelaGeralTEMPLATE)
    DSSQLConfigInventario: TDataSource;
    SQLConfigInventario: TRxQuery;
    SQLConfigInventarioOPESICODENTRADA: TIntegerField;
    SQLConfigInventarioOPESICODSAIDA: TIntegerField;
    SQLOperacaoEstoqueSaida: TRxQuery;
    ComboEntrada: TRxDBLookupCombo;
    ComboSaida: TRxDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    DSSQLOperacaoEstoqueSaida: TDataSource;
    DSSQLOperacaoEstoqueEntrada: TDataSource;
    SQLOperacaoEstoqueEntrada: TRxQuery;
    ButtonGravar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure ButtonGravarClick(Sender: TObject);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure DSSQLConfigInventarioDataChange(Sender: TObject;
      Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConfiguracaoInventario: TFormTelaConfiguracaoInventario;

implementation

{$R *.dfm}

procedure TFormTelaConfiguracaoInventario.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLOperacaoEstoqueEntrada.Active then SQLOperacaoEstoqueEntrada.Open;
  if not SQLOperacaoEstoqueSaida.Active then SQLOperacaoEstoqueSaida.Open;  
  if not SQLConfigInventario.Active then SQLConfigInventario.Open;
 
end;

procedure TFormTelaConfiguracaoInventario.ButtonGravarClick(
  Sender: TObject);
begin
  inherited;
  if SQLConfigInventario.State in DsEditModes then
    SQLConfigInventario.Post;
end;

procedure TFormTelaConfiguracaoInventario.BtnFecharTelaClick(
  Sender: TObject);
begin
  inherited;
  if SQLConfigInventario.State in DsEditModes then
    SQLConfigInventario.Cancel;

end;

procedure TFormTelaConfiguracaoInventario.DSSQLConfigInventarioDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  ButtonGravar.Enabled := SQLConfigInventario.State in DsEditModes;
end;

end.
