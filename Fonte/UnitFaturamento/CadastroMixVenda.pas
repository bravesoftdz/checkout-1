unit CadastroMixVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, DB, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls, Buttons,
  ExtCtrls, DBCtrls;

type
  TFormCadastroMixVenda = class(TFormCadastroTEMPLATE)
    Label24: TLabel;
    DBEdit16: TDBEdit;
    SQLTemplateMIXN2PERCVOLUME: TBCDField;
    SQLTemplateMIXN2PERCDESCONTO: TBCDField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroMixVenda: TFormCadastroMixVenda;

implementation

{$R *.dfm}

procedure TFormCadastroMixVenda.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'MIXVENDA';
end;

end.
