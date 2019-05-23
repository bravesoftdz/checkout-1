unit CadastroECFAliquota;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  VarSYS, FormResources, DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls,
  DBActns, ActnList, ImgList, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroECFAliquota = class(TFormCadastroTEMPLATE)
    SQLTemplateECFA13ID: TStringField;
    SQLTemplateECALICOD: TIntegerField;
    SQLTemplateICMSICOD: TIntegerField;
    SQLTemplateECALA5TOTALIECF: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateICMSCalcField: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    RetornaICMS: TSpeedButton;
    SQLICMS: TRxQuery;
    Memo1: TMemo;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure RetornaICMSClick(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroECFAliquota: TFormCadastroECFAliquota;

implementation

uses CadastroICMS, DataModulo;

{$R *.DFM}

procedure TFormCadastroECFAliquota.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'ECFALIQUOTAICMS' ;
end;

procedure TFormCadastroECFAliquota.RetornaICMSClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('ICMSICOD') ;
  FieldOrigem := 'ICMSICOD' ;
  CriaFormulario(TFormCadastroICMS,'FormCadastroICMS',False,True,True,'Alíquota ECF ' + SQLTemplateECFA13ID.Value);
end;

procedure TFormCadastroECFAliquota.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  Dataset.Fieldbyname('ECFA13ID').Value := SQLTemplate.Datasource.Dataset.Fieldbyname('ECFA13ID').Value ;
end;

procedure TFormCadastroECFAliquota.DBEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaICMS.Click ;
end;

end.
