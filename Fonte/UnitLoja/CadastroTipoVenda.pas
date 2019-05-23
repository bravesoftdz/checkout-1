unit CadastroTipoVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroTipoVenda = class(TFormCadastroTEMPLATE)
    SQLTemplateTPVDICOD: TIntegerField;
    SQLTemplateTPVDA60DESCR: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
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
  FormCadastroTipoVenda: TFormCadastroTipoVenda;

implementation

{$R *.dfm}

procedure TFormCadastroTipoVenda.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'TIPOVENDA' ;
end;

end.
