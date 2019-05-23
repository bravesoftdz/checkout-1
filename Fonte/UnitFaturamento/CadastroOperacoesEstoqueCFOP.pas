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
    10   : DataSet.FieldByName('CSTDescricao').AsString  := 'Tributada e com cobrança do ICMS por substituição tributária';
    20   : DataSet.FieldByName('CSTDescricao').AsString  := 'Com redução de base de cálculo';
    30   : DataSet.FieldByName('CSTDescricao').AsString  := 'Isenta ou não tributada e com cobrança do ICMS por substituição tributária';
    40   : DataSet.FieldByName('CSTDescricao').AsString  := 'Isenta';
    41   : DataSet.FieldByName('CSTDescricao').AsString  := 'Não tributada';
    50   : DataSet.FieldByName('CSTDescricao').AsString  := 'Suspensão';
    51   : DataSet.FieldByName('CSTDescricao').AsString  := 'Diferimento';
    60   : DataSet.FieldByName('CSTDescricao').AsString  := 'ICMS cobrado anteriormente por substituição tributária';
    70   : DataSet.FieldByName('CSTDescricao').AsString  := 'Com redução de base de cálculo e cobrança do ICMS por substituição tributária';
    90   : DataSet.FieldByName('CSTDescricao').AsString  := 'Outros';
    101  : DataSet.FieldByName('CSTDescricao').AsString  := 'Tributada pelo Simples Nacional com permissão de crédito. (v.2.0)';
    102  : DataSet.FieldByName('CSTDescricao').AsString  := 'Tributada pelo Simples Nacional sem permissão de crédito.';
    103  : DataSet.FieldByName('CSTDescricao').AsString  := 'Isenção do ICMS no Simples Nacional para faixa de receita bruta.';
    300  : DataSet.FieldByName('CSTDescricao').AsString  := 'Imune.';
    400  : DataSet.FieldByName('CSTDescricao').AsString  := 'Não tributada pelo Simples Nacional (v.2.0)';
    201  : DataSet.FieldByName('CSTDescricao').AsString  := 'Tributada pelo Simples Nacional com permissão de crédito e com cobrança do ICMS por Substituição Tributária';
    202  : DataSet.FieldByName('CSTDescricao').AsString  := 'Tributada pelo Simples Nacional sem permissão de crédito e com cobrança do ICMS por Substituição Tributária';
    203  : DataSet.FieldByName('CSTDescricao').AsString  := 'Isenção do ICMS nos Simples Nacional para faixa de receita bruta e com cobrança do ICMS por Substituição Tributária';
    500  : DataSet.FieldByName('CSTDescricao').AsString  := 'ICMS cobrado anteriormente por substituição tributária (substituído) ou por antecipação';
    900  : DataSet.FieldByName('CSTDescricao').AsString  := 'Outros';
    End;
  End;

end;

end.
