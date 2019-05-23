unit CadastroDisplay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, DB, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls, Buttons,
  ExtCtrls, DBCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroDisplay = class(TFormCadastroTEMPLATE)
    SQLTemplateDISPICOD: TIntegerField;
    SQLTemplateDISPA30DESCR: TStringField;
    SQLTemplateDISPINROINICIAL: TIntegerField;
    SQLTemplateDISPINROFINAL: TIntegerField;
    SQLTemplateDISPINROATUAL: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroDisplay: TFormCadastroDisplay;

implementation

{$R *.dfm}

procedure TFormCadastroDisplay.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'Display';
end;

end.
