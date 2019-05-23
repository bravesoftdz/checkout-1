unit RelatorioExtratoFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, DBTables, Placemnt, DB, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioExtratoFuncionario = class(TFormRelatorioTEMPLATE)
    SQLExtratoFuncionario: TRxQuery;
    SQLOperacaoFunc: TRxQuery;
    SQLOperacaoFuncOPFUICOD: TIntegerField;
    SQLOperacaoFuncOPFUA60DESCR: TStringField;
    GroupOperacao: TGroupBox;
    DSSQLOperacaoFunc: TDataSource;
    ComboOperacaoFuncionario: TRxDBLookupCombo;
    GroupFuncionario: TGroupBox;
    ComboFuncionario: TRxDBLookupCombo;
    SQLFuncionario: TRxQuery;
    DSSQLFuncionario: TDataSource;
    SQLFuncionarioFUNCA13ID: TStringField;
    SQLFuncionarioFUNCA60NOME: TStringField;
    CheckData: TCheckBox;
    SQLExtratoFuncionarioFUNCA13ID: TStringField;
    SQLExtratoFuncionarioFUCCN2VLRDEBITO: TBCDField;
    SQLExtratoFuncionarioFUCCN2VLRCREDITO: TBCDField;
    SQLExtratoFuncionarioOPFUICOD: TIntegerField;
    SQLExtratoFuncionarioFUCCDLANCAMENTO: TDateTimeField;
    SQLExtratoFuncionarioFUCCN2VLRTOTREC: TBCDField;
    SQLExtratoFuncionarioFUNCA60NOME: TStringField;
    SQLExtratoFuncionarioOPFUA60DESCR: TStringField;
    TblTemporariaFUNCA13ID: TStringField;
    TblTemporariaFUCCN2VLRDEBITO: TBCDField;
    TblTemporariaFUCCN2VLRCREDITO: TBCDField;
    TblTemporariaOPFUICOD: TIntegerField;
    TblTemporariaFUCCDLANCAMENTO: TDateTimeField;
    TblTemporariaFUCCN2VLRTOTREC: TBCDField;
    TblTemporariaFUNCA60NOME: TStringField;
    TblTemporariaOPFUA60DESCR: TStringField;
    Report: TCrpe;
    procedure FormCreate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioExtratoFuncionario: TFormRelatorioExtratoFuncionario;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioExtratoFuncionario.FormCreate(Sender: TObject);
begin
  inherited;
  SQLOperacaoFunc.Open;
  SQLFuncionario.Open;
end;

procedure TFormRelatorioExtratoFuncionario.ExecutarBtnClick(
  Sender: TObject);
begin
  inherited;
  SQLExtratoFuncionario.Close;

  SQLExtratoFuncionario.MacroByName('MEmpresa').AsString := SQLDeLista(ComboEmpresa,ListaEmpresas,'','FUNCIONARIO','EMPRICOD');

  if not CheckData.Checked then
    SQLExtratoFuncionario.MacroByName('MData').AsString := 'FUNCIONARIOCONTACORRENTE.FUCCDLANCAMENTO >= "' + FormatDateTime('mm/dd/yyyy', De.Date)  + '" AND ' +
                                                           'FUNCIONARIOCONTACORRENTE.FUCCDLANCAMENTO <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"'
  else
    SQLExtratoFuncionario.MacroByName('MData').AsString := '0=0';

  if ComboFuncionario.Value <> '' then
    SQLExtratoFuncionario.MacroByName('MFuncionario').AsString := 'FUNCIONARIOCONTACORRENTE.FUNCA13ID = "' + ComboFuncionario.Value + '"'
  else
    SQLExtratoFuncionario.MacroByName('MFuncionario').AsString := '0=0';

  if ComboOperacaoFuncionario.Value <> '' then
    SQLExtratoFuncionario.MacroByName('MOperacao').AsString    := 'FUNCIONARIOCONTACORRENTE.OPFUICOD = ' + ComboOperacaoFuncionario.Value
  else
    SQLExtratoFuncionario.MacroByName('MOperacao').AsString    := '0=0';

  SQLExtratoFuncionario.Open;

  BatchExec(SQLExtratoFuncionario,TblTemporaria);

  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Extrato Funcionario.rpt';
  Report.ReportTitle       := 'Relatório Extrato Funcionário';
  Report.WindowStyle.Title := 'Relatório Extrato Funcionário';
  Report.Formulas.Retrieve;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao';
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"';
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao';
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                        FormatDateTime('dd/mm/yyyy', Ate.Date) + '"';

  if ComboFuncionario.Value <> '' then
    begin
      Report.Formulas.Name         := 'Funcionario';
      Report.Formulas.Formula.Text := '"' + ComboFuncionario.DisplayValue + '"';
    end
  else
    begin
      Report.Formulas.Name         := 'Funcionario';
      Report.Formulas.Formula.Text := '"Todos"';
    end;

  if ComboOperacaoFuncionario.Value <> '' then
    begin
      Report.Formulas.Name         := 'Operacao';
      Report.Formulas.Formula.Text := '"' + ComboOperacaoFuncionario.DisplayValue + '"';
    end
  else
    begin
      Report.Formulas.Name         := 'Operacao';
      Report.Formulas.Formula.Text := '"Todas"';
    end;

  // AjustaCaminhoCrystal;
  Report.Execute;
end;

end.
