unit CadastroMotivoAfastamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBCtrls, DB, DBTables, DBActns, ActnList,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls,
  Buttons, ExtCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroMotivoAfastamento = class(TFormCadastroTEMPLATE)
    SQLTemplateMTAFICOD: TIntegerField;
    SQLTemplateMTAFA30DESCR: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroMotivoAfastamento: TFormCadastroMotivoAfastamento;

implementation

{$R *.dfm}

procedure TFormCadastroMotivoAfastamento.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'MOTIVOAFASTAMENTO';
end;

end.
