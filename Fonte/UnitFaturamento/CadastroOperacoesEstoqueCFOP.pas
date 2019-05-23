unit CadastroOperacoesEstoqueCFOP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, DB, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls, Buttons,
  ExtCtrls, RxDBComb, VarSys, RxLookup, FormResources, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TCadastroOperacaoEstoqueCFOP = class(TFormCadastroTEMPLATE)
    Label13: TLabel;
    ComboOrigem: TRxDBComboBox;
    Label68: TLabel;
    ComboSitTrib: TRxDBComboBox;
    SQLTemplateOPESICOD: TIntegerField;
    SQLTemplateCSTICMS: TIntegerField;
    SQLTemplateORIGEMMERC: TIntegerField;
    SQLTemplateCFOPVENDANOUF: TStringField;
    SQLTemplateCFOPVENDAFORAUF: TStringField;
    Label4: TLabel;
    ComboCFOPDentroUF: TRxDBLookupCombo;
    btnCfopd: TSpeedButton;
    Label5: TLabel;
    ComboCFOPForaUF: TRxDBLookupCombo;
    BtnCFOPF: TSpeedButton;
    SQLCFOP: TRxQuery;
    SQLCFOPCFOPA5COD: TStringField;
    SQLCFOPCFOPA60DESCR: TStringField;
    SQLCFOPCFOPCVENDA: TStringField;
    SQLCFOPPENDENTE: TStringField;
    SQLCFOPREGISTRO: TDateTimeField;
    DSSQLCFOP: TDataSource;
    SQLTemplateCSTDescricao: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure btnCfopdClick(Sender: TObject);
    procedure BtnCFOPFClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroOperacaoEstoqueCFOP: TCadastroOperacaoEstoqueCFOP;

implementation

uses CadastroCodigoFiscalOperacao;

{$R *.dfm}

procedure TCadastroOperacaoEstoqueCFOP.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'OPERACAOESTOQUECFOP' ;
  SQLCFOP.Open;
end;

procedure TCadastroOperacaoEstoqueCFOP.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  TRxQuery(DataSet).FieldByName('OPESICOD').Value := TrxQuery(DataSet).DataSource.DataSet.FieldByName('OPESICOD').Value ;
end;

procedure TCadastroOperacaoEstoqueCFOP.btnCfopdClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('CFOPVENDANOUF');
  FieldOrigem := 'CFOPA5COD';
  DataSetLookup :=  SQLCFOP;
  CriaFormulario(TFormCadastroCodigoFiscalOperacao,'FormCadastroCodigoFiscalOperacao',False,True,True,'');
end;

procedure TCadastroOperacaoEstoqueCFOP.BtnCFOPFClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('CFOPVENDAFORAUF');
  FieldOrigem := 'CFOPA5COD';
  DataSetLookup :=  SQLCFOP;
  CriaFormulario(TFormCadastroCodigoFiscalOperacao,'FormCadastroCodigoFiscalOperacao',False,True,True,'');

end;

procedure TCadastroOperacaoEstoqueCFOP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  SQLCFOP.Close;
  Action := caFree;
end;

procedure TCadastroOperacaoEstoqueCFOP.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if (DataSet.FieldByName('CSTICMS').Value <> null) then
  begin
    Case DataSet.FieldByName('CSTICMS').Value of
     0   : DataSet.FieldByName('CSTDescricao').AsString  := 'Tributada integralmente';
    10   : DataSet.FieldByName('CSTDescricao').AsString  := 'Tributada e com cobran�a do ICMS por substitui��o tribut�ria';
    20   : DataSet.FieldByName('CSTDescricao').AsString  := 'Com redu��o de base de c�lculo';
    30   : DataSet.FieldByName('CSTDescricao').AsString  := 'Isenta ou n�o tributada e com cobran�a do ICMS por substitui��o tribut�ria';
    40   : DataSet.FieldByName('CSTDescricao').AsString  := 'Isenta';
    41   : DataSet.FieldByName('CSTDescricao').AsString  := 'N�o tributada';
    50   : DataSet.FieldByName('CSTDescricao').AsString  := 'Suspens�o';
    51   : DataSet.FieldByName('CSTDescricao').AsString  := 'Diferimento';
    60   : DataSet.FieldByName('CSTDescricao').AsString  := 'ICMS cobrado anteriormente por substitui��o tribut�ria';
    70   : DataSet.FieldByName('CSTDescricao').AsString  := 'Com redu��o de base de c�lculo e cobran�a do ICMS por substitui��o tribut�ria';
    90   : DataSet.FieldByName('CSTDescricao').AsString  := 'Outros';
    101  : DataSet.FieldByName('CSTDescricao').AsString  := 'Tributada pelo Simples Nacional com permiss�o de cr�dito. (v.2.0)';
    102  : DataSet.FieldByName('CSTDescricao').AsString  := 'Tributada pelo Simples Nacional sem permiss�o de cr�dito.';
    103  : DataSet.FieldByName('CSTDescricao').AsString  := 'Isen��o do ICMS no Simples Nacional para faixa de receita bruta.';
    300  : DataSet.FieldByName('CSTDescricao').AsString  := 'Imune.';
    400  : DataSet.FieldByName('CSTDescricao').AsString  := 'N�o tributada pelo Simples Nacional (v.2.0)';
    201  : DataSet.FieldByName('CSTDescricao').AsString  := 'Tributada pelo Simples Nacional com permiss�o de cr�dito e com cobran�a do ICMS por Substitui��o Tribut�ria';
    202  : DataSet.FieldByName('CSTDescricao').AsString  := 'Tributada pelo Simples Nacional sem permiss�o de cr�dito e com cobran�a do ICMS por Substitui��o Tribut�ria';
    203  : DataSet.FieldByName('CSTDescricao').AsString  := 'Isen��o do ICMS nos Simples Nacional para faixa de receita bruta e com cobran�a do ICMS por Substitui��o Tribut�ria';
    500  : DataSet.FieldByName('CSTDescricao').AsString  := 'ICMS cobrado anteriormente por substitui��o tribut�ria (substitu�do) ou por antecipa��o';
    900  : DataSet.FieldByName('CSTDescricao').AsString  := 'Outros';
    End;
  End;

end;

end.
