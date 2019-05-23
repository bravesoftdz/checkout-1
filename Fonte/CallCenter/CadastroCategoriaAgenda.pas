unit CadastroCategoriaAgenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBCtrls, DBTables, DBActns, ActnList, ImgList,
  DB, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroCategoriaAgenda = class(TFormCadastroTemplate)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEditDescr: TDBEdit;
    SQLTemplateCATEICOD: TIntegerField;
    SQLTemplateCATEA30DESCR: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroCategoriaAgenda: TFormCadastroCategoriaAgenda;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormCadastroCategoriaAgenda.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'CATEGORIAAGENDA';
end;

end.
