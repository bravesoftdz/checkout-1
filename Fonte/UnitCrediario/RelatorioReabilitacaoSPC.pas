unit RelatorioReabilitacaoSPC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, OleCtrls,
  UCrpe32, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioReabilitacaoSPC = class(TFormRelatorioTEMPLATE)
    SQLContasReceber: TRxQuery;
    SQLLimparListaSPC: TRxQuery;
    DatabaseTemp: TDatabase;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberTERMICOD: TIntegerField;
    SQLContasReceberCTRCICOD: TIntegerField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCTRCCSTATUS: TStringField;
    SQLContasReceberCTRCDREABILSPC: TDateTimeField;
    SQLContasReceberCLIEA60RAZAOSOC: TStringField;
    SQLContasReceberCLIEA60NOMEMAE: TStringField;
    SQLContasReceberCLIEA60NOMEPAI: TStringField;
    SQLContasReceberCLIEA11CPF: TStringField;
    SQLContasReceberCLIEA10RG: TStringField;
    SQLContasReceberCLIEDNASC: TDateTimeField;
    TblTemporariaCTRCA13ID: TStringField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaTERMICOD: TIntegerField;
    TblTemporariaCTRCICOD: TIntegerField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaCTRCCSTATUS: TStringField;
    TblTemporariaCTRCDREABILSPC: TDateTimeField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    TblTemporariaCLIEA60NOMEMAE: TStringField;
    TblTemporariaCLIEA60NOMEPAI: TStringField;
    TblTemporariaCLIEA11CPF: TStringField;
    TblTemporariaCLIEA10RG: TStringField;
    TblTemporariaCLIEDNASC: TDateTimeField;
    Report: TCrpe;
    TblTemporariaReabilitar: TStringField;
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioReabilitacaoSPC: TFormRelatorioReabilitacaoSPC;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioReabilitacaoSPC.ExecutarBtnClick(Sender: TObject);
var
  I : Integer ;
  Result : string ;
begin
  inherited;
  SQLContasReceber.Close ;
  SQLContasReceber.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CONTASRECEBER', '') ;
  SQLContasReceber.MacrobyName('MFiltro').Value    := 'CONTASRECEBER.CTRCDREABILSPC >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                      'CONTASRECEBER.CTRCDREABILSPC <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
  SQLContasReceber.Open ;

  TblTemporaria.Open ;

  SQLContasReceber.First ;
  while not SQLContasReceber.Eof do
    begin
      TblTemporaria.Append ;
      for i := 0 to SQLContasReceber.FieldCount-1 do
        if SQLContasReceber.Fields[i].AsString <> '' then
          TblTemporaria.FieldByName(SQLContasReceber.Fields[i].FieldName).AsVariant := SQLContasReceber.Fields[i].AsVariant ;
      TblTemporaria.Post ;
      SQLContasReceber.Next ;
    end ;

//  BatchExec(SQLContasReceber, TblTemporaria) ;

{  TblTemporaria.Close ;

  //ESTE CAMPO FOI INCLUIDO AGORA POIS SE FOSSE INLCUIDO ANTES O BACTHMOVE NÃO
  //FUNCIONARIA
  SQLLimparListaSPC.Close ;
  SQLLimparListaSPC.SQL.Clear ;
  SQLLimparListaSPC.SQL.Add('ALTER TABLE "' + DatabaseTemp.Directory + 'RelReabilitacaoSPC.db" ADD Reabilitar CHAR(3);') ;
  SQLLimparListaSPC.ExecSQL ;

  Application.ProcessMessages ;

  TblTemporaria.FieldDefs.Clear ;
  TblTemporaria.FieldDefs.Update ;
  TblTemporaria.FieldDefs[TblTemporaria.FieldDefs.Count-1].CreateField(TblTemporaria,
                          nil,
                          TblTemporaria.FieldDefs[TblTemporaria.FieldDefs.Count-1].Name,
                          false);

  TblTemporaria.Open ;}
  TblTemporaria.First ;
  while not TblTemporaria.EOF do
  begin
    Result := SQLLocate('CARTAAVISOSPC', 'CLIEA13ID', 'CLIEA13ID', '"' + TblTemporariaCLIEA13ID.Value + '"') ;
    if Result <> '' then {Tem outra parcela em SPC}
      begin
        TblTemporaria.Edit ;
        TblTemporaria.FieldByName('Reabilitar').Value := 'Não' ;
        TblTemporaria.Edit ;
      end
    else
      begin
        TblTemporaria.Edit ;
        TblTemporaria.FieldByName('Reabilitar').Value := 'Sim' ;
        TblTemporaria.Edit ;
      end ;

    SQLLimparListaSPC.Close ;
    SQLLimparListaSPC.SQL.Clear ;
    SQLLimparListaSPC.SQL.Add('select Count(CLIEA13ID) as CONTADOR from "' + DatabaseTemp.Directory + 'RelReabilitacaoSPC.db"') ;
    SQLLimparListaSPC.SQL.Add('where  CLIEA13ID = "' + TblTemporariaCLIEA13ID.Value + '"') ;
    SQLLimparListaSPC.Open ;
    if (SQLLimparListaSPC.FielDbyName('CONTADOR').Value > 1) then {Existe mais de uma vez}
      TblTemporaria.Delete
    else
      TblTemporaria.Next ;
  end ;

  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Reablitacao de SPC.rpt' ;

  Report.ReportTitle := 'Relatório de Reabilitação de SPC' ;
  Report.Execute ;
end;

end.
