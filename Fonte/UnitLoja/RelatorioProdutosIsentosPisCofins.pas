unit RelatorioProdutosIsentosPisCofins;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, StdCtrls, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, ppDB, ppDBPipe,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, RxQuery;

type
  TFormRelatorioProdutosIsentosPisCofins = class(TFormRelatorioTEMPLATE)
    SQLPRODUTO: TRxQuery;
    dsSQLPRODUTO: TDataSource;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    lbEmpresa: TppLabel;
    lbPeriodo: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    Pipe: TppDBPipeline;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioProdutosIsentosPisCofins: TFormRelatorioProdutosIsentosPisCofins;

implementation

{$R *.dfm}

procedure TFormRelatorioProdutosIsentosPisCofins.ExecutarBtnClick(
  Sender: TObject);
begin
  inherited;
  SQLProduto.Close;
  if (ComboEmpresa.Value <> '') then
    SQLProduto.MacroByName('MEmpresa').Value := 'm.EMPRICOD = ' + ComboEmpresa.Value
  else
    SQLProduto.MacroByName('MEmpresa').Value := '0=0';

  SQLProduto.MacrobyName('MData').Value    := 'm.MVESDMOV >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                              'm.MVESDMOV <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
  SQLProduto.Open;

  ppReport1.Print;
end;

procedure TFormRelatorioProdutosIsentosPisCofins.ppHeaderBand1BeforePrint(
  Sender: TObject);
begin
  inherited;
  lbEmpresa.Caption := 'Empresa: ' + ComboEmpresa.DisplayValue;
  lbPeriodo.Caption := 'Periodo: ' + FormatDateTime('dd/mm/yyyy',De.date) + ' até ' + FormatDateTime('dd/mm/yyyy',Ate.date);
end;

end.
