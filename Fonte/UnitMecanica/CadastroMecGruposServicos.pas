unit CadastroMecGruposServicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, DB, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls, Buttons,
  ExtCtrls, DBCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroMecGrupoServicos = class(TFormCadastroTEMPLATE)
    SQLTemplateORDGRPSID: TIntegerField;
    SQLTemplateORDA40DESCGROUPSERV: TStringField;
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
  FormCadastroMecGrupoServicos: TFormCadastroMecGrupoServicos;

implementation

{$R *.dfm}

procedure TFormCadastroMecGrupoServicos.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'ORD_GROUPSERV'
end;

end.
