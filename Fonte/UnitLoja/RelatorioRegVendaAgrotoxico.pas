unit RelatorioRegVendaAgrotoxico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, StdCtrls, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, UCrpe32, RxQuery,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioRegVendaAgrotoxico = class(TFormRelatorioTEMPLATE)
    DSSQLProduto: TDataSource;
    SQLProduto: TRxQuery;
    GroupProduto: TGroupBox;
    ComboProduto: TRxDBLookupCombo;
    Report: TCrpe;
    SQLVendas: TRxQuery;
    SQLVendasEMPRICOD: TIntegerField;
    SQLVendasNOFIDEMIS: TDateTimeField;
    SQLVendasREGISTRO: TDateTimeField;
    SQLVendasPRODICOD: TIntegerField;
    SQLVendasPRODA60DESCR: TStringField;
    SQLVendasVLRTOTALITEM: TFloatField;
    SQLVendasPRODN3VLRCUSTO: TBCDField;
    SQLVendasPRODN3VLRVENDA: TBCDField;
    SQLVendasNFITN3QUANT: TBCDField;
    SQLVendasVENDICOD: TIntegerField;
    SQLVendasNOFIINUMERO: TIntegerField;
    SQLVendasCLIEA13ID: TStringField;
    SQLVendasOPESICOD: TIntegerField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaNOFIDEMIS: TDateTimeField;
    TblTemporariaREGISTRO: TDateTimeField;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPRODA60DESCR: TStringField;
    TblTemporariaVLRTOTALITEM: TFloatField;
    TblTemporariaPRODN3VLRCUSTO: TBCDField;
    TblTemporariaPRODN3VLRVENDA: TBCDField;
    TblTemporariaNFITN3QUANT: TBCDField;
    TblTemporariaVENDICOD: TIntegerField;
    TblTemporariaNOFIINUMERO: TIntegerField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaOPESICOD: TIntegerField;
    TblTemporariaNATUREZAOPERCAO: TStringField;
    TblTemporariaRECEITA: TStringField;
    TblTemporariaPRINCIPIOATIVO: TStringField;
    TblTemporariaESTOQUE: TFloatField;
    TblTemporariaCLIENTENOME: TStringField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioRegVendaAgrotoxico: TFormRelatorioRegVendaAgrotoxico;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioRegVendaAgrotoxico.ExecutarBtnClick(
  Sender: TObject);
var   i     : integer ;
begin
  inherited;
  SQLVendas.Close ;
  SQLVendas.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'NOTAFISCAL', '') ;
  SQLVendas.MacrobyName('MData').Value    := 'NOTAFISCAL.NOFIDEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                             'NOTAFISCAL.NOFIDEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;

  if ComboProduto.Value <> '' then
    SQLVendas.MacroByName('MProduto').Value := 'NOTAFISCALITEM.PRODICOD = ' + ComboProduto.Value
  else
    SQLVendas.MacroByName('MProduto').Value := '0=0';
    
  SQLVendas.Open ;

  if SQLVendas.IsEmpty then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Exit;
    end;

  TblTemporaria.Open ;
  SQLVendas.First ;
  while not SQLVendas.Eof do
    begin
      TblTemporaria.Append ;
      for i := 0 to SQLVendas.FieldCount-1 do
        if SQLVendas.Fields[i].AsString <> '' then
          TblTemporaria.FieldByName(SQLVendas.Fields[i].FieldName).AsVariant := SQLVendas.Fields[i].AsVariant ;
      TblTemporariaPRINCIPIOATIVO.Value  := dm.SQLLocate('PRODUTO','PRODICOD','PRODA30PRINCATV',TblTemporariaPRODICOD.AsString);
      TblTemporariaNATUREZAOPERCAO.Value := dm.SQLLocate('OPERACAOESTOQUE','OPESICOD','CFOPA5CODDENTROUF',TblTemporariaOPESICOD.AsString);
      if TblTemporariaNATUREZAOPERCAO.Value <> '' then
        TblTemporariaNATUREZAOPERCAO.Value := dm.SQLLocate('CFOP','CFOPA5COD','CFOPA60DESCR','"'+TblTemporariaNATUREZAOPERCAO.AsString+'"')
      else
        begin
          TblTemporariaNATUREZAOPERCAO.Value := dm.SQLLocate('OPERACAOESTOQUE','OPESICOD','CFOPA5CODFORAUF',TblTemporariaOPESICOD.AsString);
          if TblTemporariaNATUREZAOPERCAO.Value <> '' then
            TblTemporariaNATUREZAOPERCAO.Value := dm.SQLLocate('CFOP','CFOPA5COD','CFOPA60DESCR','"'+TblTemporariaNATUREZAOPERCAO.AsString+'"');
        end;

      TblTemporariaCLIENTENOME.Value := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','"'+TblTemporariaCLIEA13ID.AsString+'"');

      TblTemporaria.Post ;

      SQLVendas.Next ;
    end ;

  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Registro de Venda de Agrotoxicos.rpt' ;
  Report.ReportTitle       := 'Registro de Venda de Agrotoxicos' ;
  Report.WindowStyle.Title := 'Registro de Venda de Agrotoxicos' ;
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
  //--------------------------------------------------------------------------\\
  Report.Formulas.Send;
  Report.Execute ;
end;

procedure TFormRelatorioRegVendaAgrotoxico.FormCreate(Sender: TObject);
begin
  inherited;
  SQLProduto.Open;
end;

end.
