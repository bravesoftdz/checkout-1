unit CadastroEspecialidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBCtrls, DB, DBActns, ActnList, ImgList,
  DBTables, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls,
  ExtCtrls, RXCtrls, Buttons, jpeg, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroEspecialidade = class(TFormCadastroTEMPLATE)
    SQLTemplateESPEICOD: TIntegerField;
    SQLTemplateESPEA60DESCR: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    SQLTemplateESPEN3VLRCONSULTA: TFloatField;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroEspecialidade: TFormCadastroEspecialidade;

implementation

{$R *.dfm}

procedure TFormCadastroEspecialidade.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'Especialidade';
end;

procedure TFormCadastroEspecialidade.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateESPEN3VLRCONSULTA.Value := 0;
end;

end.
