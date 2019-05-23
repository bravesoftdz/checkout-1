unit TelaDescricaoTecnicaProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Buttons, ConerBtn;

type
  TFormTelaDescricaoTecnicaProduto = class(TForm)   
    MemoDescrTec: TDBMemo;
    BtnOK: TConerBtn;
    BtnCancelar: TConerBtn;
    procedure BtnOKClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaDescricaoTecnicaProduto: TFormTelaDescricaoTecnicaProduto;

implementation

uses TelaItens;

{$R *.dfm}

procedure TFormTelaDescricaoTecnicaProduto.BtnOKClick(Sender: TObject);
begin
  FormTelaDescricaoTecnicaProduto.ModalResult := MrOk;
end;

procedure TFormTelaDescricaoTecnicaProduto.BtnCancelarClick(
  Sender: TObject);
begin
  FormTelaDescricaoTecnicaProduto.ModalResult := mrCancel;
end;

end.
