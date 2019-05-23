unit TelaConfigTransportadora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, StdCtrls, DBCtrls,
  DB, DBTables, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaConfigTransportadora = class(TFormTelaGeralTEMPLATE)
    Label9: TLabel;
    Label1: TLabel;
    ComboOperacaoCredito: TDBLookupComboBox;
    ComboOperacaoDebito: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConfigTransportadora: TFormTelaConfigTransportadora;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormTelaConfigTransportadora.FormCreate(Sender: TObject);
begin
  inherited;
  if not DM.SQLConfigTransportadora.Active then
    DM.SQLConfigTransportadora.Open;
  if not DM.QueryOperacaoCredito.Active then
    DM.QueryOperacaoCredito.Open;
  if not DM.QueryOperacaoDebito.Active then
    DM.QueryOperacaoDebito.Open;
  DM.SQLConfigTransportadora.Edit;
end;

procedure TFormTelaConfigTransportadora.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if DM.SQLConfigTransportadora.State in dsEditModes then
    DM.SQLConfigTransportadora.Post;
  if DM.QueryOperacaoCredito.Active then
    DM.QueryOperacaoCredito.Close;
  if DM.QueryOperacaoDebito.Active then
    DM.QueryOperacaoDebito.Close;
end;

end.
