unit CadastroMotivoFechamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls;

type
  TFormCadastroMotivoFechamento = class(TFormCadastroTEMPLATE)
    SQLTemplatePNMFICOD: TIntegerField;
    SQLTemplatePNMFA60DESCR: TStringField;
    SQLTemplatePNMFCPEDEMOTIVO: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroMotivoFechamento: TFormCadastroMotivoFechamento;

implementation

uses VarSYS;

{$R *.dfm}

procedure TFormCadastroMotivoFechamento.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PRNEMOTIVOFECHA';
end;

procedure TFormCadastroMotivoFechamento.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplatePNMFCPEDEMOTIVO.AsString := 'N';
end;

end.
