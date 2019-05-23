unit CadastroComissoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg;

type
  TFormCadastroComissoes = class(TFormCadastroTEMPLATE)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroComissoes: TFormCadastroComissoes;

implementation

{$R *.dfm}

end.
