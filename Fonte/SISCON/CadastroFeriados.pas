unit CadastroFeriados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBCtrls, ToolEdit, RXDBCtrl, DB, DBActns,
  ActnList, ImgList, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroFeriados = class(TFormCadastroTEMPLATE)
    SQLTemplateFERIDDATA: TDateTimeField;
    SQLTemplateFERIA60DESCR: TStringField;
    Label1: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroFeriados: TFormCadastroFeriados;

implementation

{$R *.dfm}

procedure TFormCadastroFeriados.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'Feriado';
end;

end.
