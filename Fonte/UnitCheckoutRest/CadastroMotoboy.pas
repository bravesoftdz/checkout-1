unit CadastroMotoboy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBCtrls, DB, DBTables, DBActns, ActnList,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls,
  Buttons, ExtCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroMotoboy = class(TFormCadastroTEMPLATE)
    SQLTemplateMTBYICOD: TIntegerField;
    SQLTemplateMTBYA30DESCR: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroMotoboy: TFormCadastroMotoboy;

implementation

{$R *.dfm}

procedure TFormCadastroMotoboy.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'Motoboy';
end;

end.
