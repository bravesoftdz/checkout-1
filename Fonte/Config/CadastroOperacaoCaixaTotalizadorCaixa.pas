unit CadastroOperacaoCaixaTotalizadorCaixa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  VarSYS, FormResources, DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls, RxDBComb,
  DBActns, ActnList, ImgList, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroOperacaoCaixaTotalizadorCaixa = class(TFormCadastroTEMPLATE)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    SQLTemplateOPCXICOD: TIntegerField;
    SQLTemplateTOTAICOD: TIntegerField;
    SQLTemplateOPTOCSOMASUBTRAI: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateTotalizadorCalcField: TStringField;
    SQLTOTALIZADORCAIXA: TRxQuery;
    Label3: TLabel;
    BtnListaTotalizador: TSpeedButton;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    ComboSomaSubtrai: TRxDBComboBox;
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure BtnListaTotalizadorClick(Sender: TObject);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroOperacaoCaixaTotalizadorCaixa: TFormCadastroOperacaoCaixaTotalizadorCaixa;

implementation

uses CadastroTotalizadorCaixa, DataModulo;

{$R *.DFM}

procedure TFormCadastroOperacaoCaixaTotalizadorCaixa.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  Dataset.Fieldbyname('OPCXICOD').Value := SQLTemplate.Datasource.Dataset.Fieldbyname('OPCXICOD').Value ;
end;

procedure TFormCadastroOperacaoCaixaTotalizadorCaixa.BtnListaTotalizadorClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('TOTAICOD');
  FieldOrigem := 'TOTAICOD' ;
  CriaFormulario(TFormCadastroTotalizadorCaixa, 'FormCadastroTotalizadorCaixa', False, True, True, '') ;
end;

procedure TFormCadastroOperacaoCaixaTotalizadorCaixa.DBEdit3KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_F2 then
    BtnListaTotalizador.Click ;
end;

procedure TFormCadastroOperacaoCaixaTotalizadorCaixa.FormCreate(
  Sender: TObject);
begin
  inherited;
  Tabela := 'OPERACAOCAIXATOTALIZADOR' ;
end;

end.
