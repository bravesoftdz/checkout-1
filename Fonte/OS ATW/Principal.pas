unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PrincipalTemplate, Handprot, ExtCtrls, Menus, ComCtrls, ToolWin,
  jpeg, EWall;

type
  TFormPrincipal = class(TFormPrincipalTemplate)
    OS: TMenuItem;
    procedure OSClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses FormResources, CadastroTransportadora, CadastroOS, VarSYS, DataModulo;

{$R *.dfm}

procedure TFormPrincipal.OSClick(Sender: TObject);
begin
  inherited;
 if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroOS,'FormCadastroOS',False,False,'');


end;

end.
