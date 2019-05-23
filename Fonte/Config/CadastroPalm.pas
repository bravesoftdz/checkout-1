unit CadastroPalm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroPalm = class(TFormCadastroTEMPLATE)
    SQLTemplatePALMICOD: TIntegerField;
    SQLTemplatePALMA60DESCR: TStringField;
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
  FormCadastroPalm: TFormCadastroPalm;

implementation

{$R *.dfm}

procedure TFormCadastroPalm.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'Palm';
end;

end.
