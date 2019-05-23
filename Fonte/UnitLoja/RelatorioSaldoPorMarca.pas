unit RelatorioSaldoPorMarca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, DBTables, Placemnt, DB, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, UCrpe32;

type
  TFormRelatorioSaldoPorMarca = class(TFormRelatorioTEMPLATE)
    SQLMarca: TRxQuery;
    SQLSaldo: TRxQuery;
    DSSQLMarca: TDataSource;
    SQLMarcaMARCICOD: TIntegerField;
    SQLMarcaMARCA60DESCR: TStringField;
    GroupBox2: TGroupBox;
    ComboMarca: TRxDBLookupCombo;
    Report: TCrpe;
    SQLSaldoSALDO: TBCDField;
    SQLSaldoMARCA60DESCR: TStringField;
    SQLSaldoEMPRICOD: TIntegerField;
    TblTemporariaSALDO: TBCDField;
    TblTemporariaMARCA60DESCR: TStringField;
    TblTemporariaEMPRICOD: TIntegerField;
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioSaldoPorMarca: TFormRelatorioSaldoPorMarca;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioSaldoPorMarca.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLSaldo.Close;
  SQLSaldo.MacroByName('Empresa').Value := SQLDeLista(ComboEmpresa,ListaEmpresas,'','PRODUTOSALDO','');
  if ComboMarca.Value <> '' then
    SQLSaldo.MacroByName('Marca').Value   := 'MARCA.MARCICOD = ' + ComboMarca.Value
  else
   SQLSaldo.MacroByName('Marca').Value   := '0=0';
   
  SQLSaldo.Open;
  if not SQLSaldo.IsEmpty then
    begin
      BatchExec(SQLSaldo,TblTemporaria);
      TblTemporaria.Close;
      Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Saldo por Marca.rpt';
      Report.ReportTitle       := 'Relatório de Saldo por Marca';
      Report.WindowStyle.Title := 'Relatório de Saldo por Marca';
      Report.Formulas.Retrieve ;
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Empresa' ;
      Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"' ;
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Emissao' ;
      Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Marca' ;
      if ComboMarca.Value <> '' then
        Report.Formulas.Formula.Text := '"' + ComboMarca.Text + '"'
      else
        Report.Formulas.Formula.Text := '"Todas"';      
      //--------------------------------------------------------------------------\\
      Report.Formulas.Send;
      Report.Execute;
    end
  else
    Informa('Nenhum registro foi encontrado!');  
end;

end.
