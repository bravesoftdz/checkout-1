unit CadastroNumerarioTotalizadorECF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  FormResources, VarSYS, DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls,
  DBActns, ActnList, ImgList, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroNumerarioTotalizadorECF = class(TFormCadastroTEMPLATE)
    SQLTemplateNUMEICOD: TIntegerField;
    SQLTemplateECFA13ID: TStringField;
    SQLTemplateNUTCA5IDENTIFICADOR: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateECFCalcField: TStringField;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    SQLECF: TRxQuery;
    Label1: TLabel;
    Label2: TLabel;
    BtnListaECF: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    SQLTemplateNUTCA15NUMERARIO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure BtnListaECFClick(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroNumerarioTotalizadorECF: TFormCadastroNumerarioTotalizadorECF;

implementation

uses DataModulo, CadastroEcf;

{$R *.DFM}

procedure TFormCadastroNumerarioTotalizadorECF.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'NUMERARIOTOTALIZADORECF' ;
end;

procedure TFormCadastroNumerarioTotalizadorECF.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  Dataset.Fieldbyname('NUMEICOD').Value := SQLTemplate.Datasource.Dataset.Fieldbyname('NUMEICOD').Value ;
end;

procedure TFormCadastroNumerarioTotalizadorECF.BtnListaECFClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('ECFA13ID');
  FieldOrigem := 'ECFA13ID' ;
  CriaFormulario(TFormCadastroECF,'FormCadastroECF', False, True, True, '');
end;

procedure TFormCadastroNumerarioTotalizadorECF.DBEdit1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = Vk_F2 then
    BtnListaECF.Click ;
end;

end.
