unit RelatorioEstoquePorColecao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, UCrpe32, DB, RxQuery, DBTables, Placemnt,
  StdCtrls, Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls;

type
  TFormRelatorioEstoquePorColecao = class(TFormRelatorioTEMPLATE)
    SQLColecao: TRxQuery;
    DSSQLColecao: TDataSource;
    SQLSaldo: TRxQuery;
    SQLSaldoSALDO: TBCDField;
    SQLSaldoEMPRICOD: TIntegerField;
    SQLSaldoMARCA60DESCR: TStringField;
    GroupBox2: TGroupBox;
    ComboColecao: TRxDBLookupCombo;
    Report: TCrpe;
    SQLColecaoCOLEICOD: TIntegerField;
    SQLColecaoCOLEA60DESCR: TStringField;
    SQLGeral: TQuery;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioEstoquePorColecao: TFormRelatorioEstoquePorColecao;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioEstoquePorColecao.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLSaldo.Close;
  SQLSaldo.MacroByName('Empresa').Value := SQLDeLista(ComboEmpresa,ListaEmpresas,'','PRODUTOSALDO','');

  if ComboColecao.Value <> '' then
    SQLSaldo.MacroByName('Colecao').Value := 'COLECAO.COLEICOD = ' + ComboColecao.Value
  else
    SQLSaldo.MacroByName('Colecao').Value := '0=0';

  SQLSaldo.Open;
  if (SQLSaldo.IsEmpty) then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;
  if not SQLSaldo.IsEmpty then
    begin
      BatchExec(SQLSaldo,TblTemporaria);
      TblTemporaria.Close;
      SQLGeral.ExecSQL;
      Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Estoque por Colecao.rpt';
      Report.ReportTitle       := 'Relatório de Estoque por Colecao';
      Report.WindowStyle.Title := 'Relatório de Estoque por Colecao';
      Report.Formulas.Retrieve;
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Empresa';
      Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"';
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Emissao';
      Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"';
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Colecao';
      if ComboColecao.Value <> '' then
        Report.Formulas.Formula.Text := '"' + ComboColecao.Text + '"'
      else
        Report.Formulas.Formula.Text := '"Todas"';
      //--------------------------------------------------------------------------\\
      Report.Formulas.Send;
      // AjustaCaminhoCrystal;
      Report.Execute;
    end
  else
    Informa('Nenhum registro foi encontrado!');
end;

procedure TFormRelatorioEstoquePorColecao.FormCreate(Sender: TObject);
begin
  inherited;
  SQLColecao.Open;
end;

end.
