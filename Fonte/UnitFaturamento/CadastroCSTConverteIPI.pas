unit CadastroCSTConverteIPI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, DB, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls, Buttons,
  ExtCtrls, RxDBComb, FormResources, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TCadastroCSTConverterIPI = class(TFormCadastroTEMPLATE)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label68: TLabel;
    Label6: TLabel;
    SQLTemplateCSTSAIDA: TStringField;
    SQLTemplateCSTENTRADA: TStringField;
    RxDBComboBox8: TRxDBComboBox;
    RxDBComboBox12: TRxDBComboBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroCSTConverterIPI: TCadastroCSTConverterIPI;

implementation

{$R *.dfm}

procedure TCadastroCSTConverterIPI.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela :=  'CONVERTECSTIPI';
end;

end.
