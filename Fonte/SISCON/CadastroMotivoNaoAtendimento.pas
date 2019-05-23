unit CadastroMotivoNaoAtendimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBCtrls, DB, DBTables, DBActns, ActnList,
  ImgList, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls,
  ExtCtrls, RXCtrls, Buttons, jpeg, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroMotivoNaoAtendimento = class(TFormCadastroTEMPLATE)
    SQLTemplateMONAICOD: TIntegerField;
    SQLTemplateMONAA60DESCR: TStringField;
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
  FormCadastroMotivoNaoAtendimento: TFormCadastroMotivoNaoAtendimento;

implementation

{$R *.dfm}

procedure TFormCadastroMotivoNaoAtendimento.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'MOTIVONAOATEND'; 
end;

end.
