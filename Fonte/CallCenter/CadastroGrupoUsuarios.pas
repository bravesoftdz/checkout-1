unit CadastroGrupoUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, RxLookup, DB, DBTables, DBActns, ActnList,
  ImgList, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls,
  ExtCtrls, RXCtrls, Buttons, jpeg, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroGrupoUsuarios = class(TFormCadastroTEMPLATE)
    Label1: TLabel;
    SQLUsuarios: TRxQuery;
    DSSQLUsuarios: TDataSource;
    SQLGrupoUsuario: TRxQuery;
    DSSQLGrupoUsuario: TDataSource;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label2: TLabel;
    SQLTemplateUSUGICOD: TIntegerField;
    SQLTemplateUSUAICOD: TIntegerField;
    SQLTemplateGRUUICOD: TIntegerField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroGrupoUsuarios: TFormCadastroGrupoUsuarios;

implementation

{$R *.dfm}

procedure TFormCadastroGrupoUsuarios.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'USUARIOSGRUPO';
  if not SQLUsuarios.Active then SQLUsuarios.Active := true;
  if not SQLGrupoUsuario.Active then SQLGrupoUsuario.Active := true;
  if not SQLTemplate.Active then SQLTemplate.Active := true;  
end;

end.
