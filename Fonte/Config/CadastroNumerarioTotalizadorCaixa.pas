unit CadastroNumerarioTotalizadorCaixa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  FormResources, VarSYS, DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls, RxDBComb,
  DBActns, ActnList, ImgList, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroNumerarioTotalizadorCaixa = class(TFormCadastroTEMPLATE)
    SQLTemplateNUMEICOD: TIntegerField;
    SQLTemplateTOTAICOD: TIntegerField;
    SQLTemplateNUTOCSOMASUBTRAI: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateTotalizadorCalcField: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    SQLTotalizador: TRxQuery;
    Label3: TLabel;
    BtnListaTotalizador: TSpeedButton;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    ComboSomaSubtrai: TRxDBComboBox;
    procedure BtnListaTotalizadorClick(Sender: TObject);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroNumerarioTotalizadorCaixa: TFormCadastroNumerarioTotalizadorCaixa;

implementation

uses CadastroTotalizadorCaixa, DataModulo;

{$R *.DFM}

procedure TFormCadastroNumerarioTotalizadorCaixa.BtnListaTotalizadorClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('TOTAICOD');
  FieldOrigem := 'TOTAICOD' ;
  CriaFormulario(TFormCadastroTotalizadorCaixa, 'FormCadastroTotalizadorCaixa', False, True, True, '') ;
end;

procedure TFormCadastroNumerarioTotalizadorCaixa.DBEdit3KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_F2 then
    BtnListaTotalizador.Click ;
end;

procedure TFormCadastroNumerarioTotalizadorCaixa.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  Dataset.Fieldbyname('NUMEICOD').Value := SQLTemplate.Datasource.Dataset.Fieldbyname('NUMEICOD').Value ;
end;

procedure TFormCadastroNumerarioTotalizadorCaixa.FormActivate(
  Sender: TObject);
begin
  inherited;
  Tabela := 'NUMERARIOTOTALIZADOR' ;
end;

end.
