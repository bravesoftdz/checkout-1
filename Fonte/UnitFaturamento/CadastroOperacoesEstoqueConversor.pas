unit CadastroOperacoesEstoqueConversor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, DBTables, DBActns, ActnList, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls, Buttons,
  ExtCtrls, RxLookup, VarSys, FormResources, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TCadastroOperacoesEstoqueConverte = class(TFormCadastroTEMPLATE)
    SQLTemplateOPESICOD: TIntegerField;
    SQLTemplateCFOP: TStringField;
    SQLTemplateCFOPCONVERTE: TStringField;
    SQLCFOP: TRxQuery;
    SQLCFOPCFOPA5COD: TStringField;
    SQLCFOPCFOPA60DESCR: TStringField;
    SQLCFOPCFOPCVENDA: TStringField;
    SQLCFOPPENDENTE: TStringField;
    SQLCFOPREGISTRO: TDateTimeField;
    DSSQLCFOP: TDataSource;
    Label4: TLabel;
    ComboCFOPDentroUF: TRxDBLookupCombo;
    Label5: TLabel;
    ComboCFOPForaUF: TRxDBLookupCombo;
    btnCfopd: TSpeedButton;
    BtnCFOPF: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btnCfopdClick(Sender: TObject);
    procedure BtnCFOPFClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroOperacoesEstoqueConverte: TCadastroOperacoesEstoqueConverte;

implementation

uses CadastroCodigoFiscalOperacao, UnitLibrary;

{$R *.dfm}

procedure TCadastroOperacoesEstoqueConverte.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'OPERACAOESTOQUECONVERSOR';
  SQLCFOP.Open;
end;

procedure TCadastroOperacoesEstoqueConverte.btnCfopdClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('CFOP');
  FieldOrigem := 'CFOPA5COD';
  DataSetLookup :=  SQLCFOP;
  CriaFormulario(TFormCadastroCodigoFiscalOperacao,'FormCadastroCodigoFiscalOperacao',False,True,True,'');
end;

procedure TCadastroOperacoesEstoqueConverte.BtnCFOPFClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('CFOPCONVERTE');
  FieldOrigem := 'CFOPA5COD';
  DataSetLookup :=  SQLCFOP;
  CriaFormulario(TFormCadastroCodigoFiscalOperacao,'FormCadastroCodigoFiscalOperacao',False,True,True,'');
end;

procedure TCadastroOperacoesEstoqueConverte.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  SQLCFOP.Close;
end;

procedure TCadastroOperacoesEstoqueConverte.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateOPESICOD.Value := DSMasterTemplate.DataSet.FieldbyName('OPESICOD').Value;

end;

end.
