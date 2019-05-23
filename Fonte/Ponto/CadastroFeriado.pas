unit CadastroFeriado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, DB, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls, Buttons,
  ExtCtrls, ToolEdit, RXDBCtrl, DBCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroFeriado = class(TFormCadastroTEMPLATE)
    SQLTemplateFERIDDATA: TDateTimeField;
    SQLTemplateFERIA30NOME: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label2: TLabel;
    DBEditNome: TDBEdit;
    Label77: TLabel;
    DBDateEdit8: TDBDateEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroFeriado: TFormCadastroFeriado;

implementation

{$R *.dfm}

procedure TFormCadastroFeriado.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'Feriado';
end;

end.
