unit CadastroEmpresaCusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, ToolEdit, RXDBCtrl, RxDBComb, DBCtrls, 
  EDBNum, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroEmpresaCusto = class(TFormCadastroTEMPLATE)
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateEMCTICOD: TIntegerField;
    SQLTemplateEMCTA2MES: TStringField;
    SQLTemplateEMCTA4ANO: TStringField;
    SQLTemplateEMCTA60DESCR: TStringField;
    SQLTemplateEMCTCFIXOVARIA: TStringField;
    SQLTemplateEMCTN2VALOR: TFloatField;
    SQLTemplateEMCTN2PERC: TFloatField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ComboMes: TRxDBComboBox;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    ComboFixVar: TRxDBComboBox;
    ComboDescricacao: TRxDBComboBox;
    EditValor: TEvDBNumEdit;
    EditPerc: TEvDBNumEdit;
    procedure FormCreate(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure ComboFixVarChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroEmpresaCusto: TFormCadastroEmpresaCusto;

implementation

{$R *.dfm}

procedure TFormCadastroEmpresaCusto.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'EMPRESACUSTO';
end;

procedure TFormCadastroEmpresaCusto.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  EditValor.Enabled := SQLTemplateEMCTCFIXOVARIA.AsString = 'F';
  EditPerc.Enabled  := SQLTemplateEMCTCFIXOVARIA.AsString = 'V';
end;

procedure TFormCadastroEmpresaCusto.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateEMPRICOD.AsInteger  := DSMasterTemplate.DataSet.FieldByName('EMPRICOD').AsInteger;
  SQLTemplateEMCTA2MES.AsString  := FormatDateTime('mm',Date);
  SQLTemplateEMCTA4ANO.AsString  := FormatDateTime('yyyy',Date);
  SQLTemplateEMCTN2PERC.AsFloat  := 0;
  SQLTemplateEMCTN2VALOR.AsFloat := 0;
end;

procedure TFormCadastroEmpresaCusto.ComboFixVarChange(Sender: TObject);
begin
  inherited;
  EditValor.Enabled := SQLTemplateEMCTCFIXOVARIA.AsString = 'F';
  EditPerc.Enabled  := SQLTemplateEMCTCFIXOVARIA.AsString = 'V';
end;

end.
