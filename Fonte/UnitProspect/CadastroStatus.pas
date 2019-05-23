unit CadastroStatus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls;

type
  TFormCadastroStatus = class(TFormCadastroTEMPLATE)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplatePRNSICOD: TIntegerField;
    SQLTemplatePRNSCPEDEMOTIVO: TStringField;
    SQLTemplatePRNSA60DESCR: TStringField;
    SQLTemplatePRNSCALTERA: TStringField;
    GroupBox1: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroStatus: TFormCadastroStatus;

implementation

uses VarSYS;

{$R *.dfm}

procedure TFormCadastroStatus.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PRNEGOCIACAOSTATUS';
end;

procedure TFormCadastroStatus.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplatePRNSCPEDEMOTIVO.AsString := 'N';
  SQLTemplatePRNSCALTERA.AsString     := 'N';
end;

end.
