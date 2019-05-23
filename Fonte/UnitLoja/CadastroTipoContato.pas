unit CadastroTipoContato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, DB, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls, Buttons,
  ExtCtrls, DBCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroTipoContatoCobranca = class(TFormCadastroTEMPLATE)
    SQLTemplateTPCTICOD: TIntegerField;
    SQLTemplateTPCTA60DESCR: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateQUESICOD: TIntegerField;
    SQLTemplateTPRTICOD: TIntegerField;
    SQLTemplateTPCTA254OBSPADRAO: TStringField;
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
  FormCadastroTipoContatoCobranca: TFormCadastroTipoContatoCobranca;

implementation

{$R *.dfm}

procedure TFormCadastroTipoContatoCobranca.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'TipoContato';
end;

end.
