unit CadastroInstrucaoBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  DBTables, DBActns, ActnList, DB, RxQuery, Menus, StdCtrls, Mask, AdvPanel,
  Grids, DBGrids, ComCtrls, RXCtrls, Buttons, ExtCtrls, DBCtrls, RxDBComb,
  FormResources, VarSYS;

type
  TFormCadastroInstrucaoBanco = class(TFormCadastroTEMPLATE)
    SQLTemplateCODIGO: TStringField;
    SQLTemplateDESCRICAO: TStringField;
    SQLTemplateUTEIS_CORRIDO: TStringField;
    SQLTemplateGERA_NOSSONUMERO: TStringField;
    SQLTemplateGERA_BOLETO: TStringField;
    SQLTemplateBANCA5COD: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label6: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBEdit9: TDBEdit;
    RetornaBanco: TSpeedButton;
    DBEdit10: TDBEdit;
    SQLTemplateNomeBancoCalcFields: TStringField;
    procedure RetornaBancoClick(Sender: TObject);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroInstrucaoBanco: TFormCadastroInstrucaoBanco;

implementation

uses
  CadastroBanco, DataModulo;

{$R *.dfm}

procedure TFormCadastroInstrucaoBanco.RetornaBancoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('BANCA5COD');
  FieldOrigem := 'BANCA5COD';
//  TipoPlanoContas := 'C';
  CriaFormulario(TFormCadastroBanco, 'FormCadastroBanco', False, True, True, 'Intrução Banco');

end;

procedure TFormCadastroInstrucaoBanco.DBEdit9KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaBanco.Click;
end;

procedure TFormCadastroInstrucaoBanco.SQLTemplateCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('BANCA5COD').AsVariant <> null then
  begin
    if DM.ProcuraRegistro('BANCO', ['BANCA5COD'], [DataSet.FieldByName('BANCA5COD').AsString], 1) then
      DataSet.FieldByName('NomeBancoCalcFields').AsVariant := DM.SQLTemplate.FindField('BANCA60NOME').AsVariant;
  end
  else
    DataSet.FieldByName('NomeBancoCalcFields').AsVariant := Null;
end;

procedure TFormCadastroInstrucaoBanco.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'INSTRUCAO_BANCO';
end;

procedure TFormCadastroInstrucaoBanco.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if SQLTemplateGERA_NOSSONUMERO.IsNull then
    SQLTemplateGERA_NOSSONUMERO.Value := 'N';
  if SQLTemplateGERA_BOLETO.IsNull then
    SQLTemplateGERA_BOLETO.Value := 'N';

  if SQLTemplateDESCRICAO.Value = '' Then
    begin
      Beep;
      ShowMessage('O campo Descrição deve ser preenchido!');
      Abort;
    end;
  if SQLTemplateBANCA5COD.Value = '' Then
    begin
      Beep;
      ShowMessage('O campo Banco deve ser preenchido!');
      Abort;
    end;

end;

end.

