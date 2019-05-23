unit CadastroFAQ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DB, DBActns, ActnList, ImgList,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, DBCtrls;

type
  TFormCadastroFAQ = class(TFormCadastroTEMPLATE)
    SQLTemplateFAQUA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateFAQUICOD: TIntegerField;
    SQLTemplateFAQUA60DESR: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroFAQ: TFormCadastroFAQ;

implementation

{$R *.dfm}

procedure TFormCadastroFAQ.FormCreate(Sender: TObject);
begin
  TABELA := 'FAQ';
  inherited;
end;

end.
