unit CadastroRoteiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, DBTables, DBActns, ActnList, ImgList,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls;

type
  TFormCadastroRoteiro = class(TFormCadastroTEMPLATE)
    SQLTemplateROTEICOD: TIntegerField;
    SQLTemplatePALMICOD: TIntegerField;
    SQLTemplateVENDICOD: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateROTEINROSEMANA: TIntegerField;
    SQLTemplateROTEINRODIASEMANA: TIntegerField;
    SQLTemplateROTEISEQDIARIA: TIntegerField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label24: TLabel;
    DBEdit16: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    SQLTemplateROTAICOD: TIntegerField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroRoteiro: TFormCadastroRoteiro;

implementation

{$R *.dfm}

procedure TFormCadastroRoteiro.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'Roteiro';
end;

end.
