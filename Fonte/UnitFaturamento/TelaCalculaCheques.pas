unit TelaCalculaCheques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RxLookup, StdCtrls;

type
  TFormTelaCalculaCheques = class(TForm)
    Label12: TLabel;
    ComboPlanoRecto: TRxDBLookupCombo;
    Memo1: TMemo;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaCalculaCheques: TFormTelaCalculaCheques;

implementation

uses CadastroPedidoVenda;

{$R *.dfm}

procedure TFormTelaCalculaCheques.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

end.
