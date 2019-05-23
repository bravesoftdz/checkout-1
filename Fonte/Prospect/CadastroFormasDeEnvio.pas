unit CadastroFormasDeEnvio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls;

type
  TFormCadastroFormasDeEnvio = class(TFormCadastroTEMPLATE)
    SQLTemplatePNFEICOD: TIntegerField;
    SQLTemplatePNFEA60DESCR: TStringField;
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
  FormCadastroFormasDeEnvio: TFormCadastroFormasDeEnvio;

implementation

uses VarSYS;

{$R *.dfm}

procedure TFormCadastroFormasDeEnvio.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PRNEFORMAENVIO';
end;

end.
