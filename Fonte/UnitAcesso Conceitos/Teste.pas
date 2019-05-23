unit Teste;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, RXCtrls, jpeg, ExtCtrls, StdCtrls, Buttons, ConerBtn;

type
  TForm1 = class(TForm)
    Image2: TImage;
    Image1: TImage;
    Image4: TImage;
    MainMenu: TMainMenu;
    Administrao1: TMenuItem;
    Faturamento1: TMenuItem;
    Compras1: TMenuItem;
    Cash1: TMenuItem;
    Integrador1: TMenuItem;
    Credirio1: TMenuItem;
    Label2: TLabel;
    Label3: TLabel;
    BTCheckout: TConerBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
