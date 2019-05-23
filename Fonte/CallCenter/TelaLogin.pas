unit TelaLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaLoginTEMPLATE, DB, DBTables, RxQuery, Placemnt, RXCtrls,
  StdCtrls, Buttons, DBCtrls, ExtCtrls, jpeg, Menus, RxMenus, RXShell;

type
  TFormTelaLogin = class(TFormTelaLoginTEMPLATE)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaLogin: TFormTelaLogin;

implementation

{$R *.dfm}

end.
