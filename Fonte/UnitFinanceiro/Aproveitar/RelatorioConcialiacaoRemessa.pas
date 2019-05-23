unit RelatorioConcialiacaoRemessa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, UCrpe32;

type
  TFormRelatorioConcialiacaoRemessa = class(TFormRelatorioTEMPLATE)
    SQLConciliacaoBanco: TRxQuery;
    SQLConciliacaoBancoRMBCICOD: TIntegerField;
    SQLConciliacaoBancoCTRCA13ID: TStringField;
    SQLConciliacaoBancoRBCRA60STATUS: TStringField;
    SQLConciliacaoBancoRBCRDSTATUS: TDateTimeField;
    SQLConciliacaoBancoCLIEA60RAZAOSOC: TStringField;
    SQLConciliacaoBancoCTRCDVENC: TDateTimeField;
    SQLConciliacaoBancoCTRCDEMIS: TDateTimeField;
    SQLConciliacaoBancoCTRCN2VLR: TBCDField;
    TblTemporariaRMBCICOD: TIntegerField;
    TblTemporariaCTRCA13ID: TStringField;
    TblTemporariaRBCRA60STATUS: TStringField;
    TblTemporariaRBCRDSTATUS: TDateTimeField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    TblTemporariaCTRCDVENC: TDateTimeField;
    TblTemporariaCTRCDEMIS: TDateTimeField;
    TblTemporariaCTRCN2VLR: TBCDField;
    Report: TCrpe;
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioConcialiacaoRemessa: TFormRelatorioConcialiacaoRemessa;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioConcialiacaoRemessa.ExecutarBtnClick(
  Sender: TObject);
begin
  inherited;
  SQLConciliacaoBanco.Close ;
  SQLConciliacaoBanco.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CONTASRECEBER', '') ;
  SQLConciliacaoBanco.MacrobyName('MData').Value    := 'REMESSABANCOCONTASRECEBER.RBCRDSTATUS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                       'REMESSABANCOCONTASRECEBER.RBCRDSTATUS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"';
  SQLConciliacaoBanco.Open;
  BatchExec(SQLConciliacaoBanco,TblTemporaria);
  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Conciliacao Bancos.rpt' ;
  Report.ReportTitle       := 'Relatório de Conciliação com Bancos' ;
  Report.WindowStyle.Title := 'Relatório de Conciliação com Bancos' ;
  Report.Formulas.Retrieve ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa' ;
  Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                        FormatDateTime('dd/mm/yyyy', Ate.Date) + '"' ;

  Report.Execute ;
end;

end.
