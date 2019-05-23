unit RelatorioFornecedoresCadastrados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, StdCtrls, ExtCtrls, DBTables, Placemnt, DB,
  Mask, ToolEdit, RxLookup, Buttons, jpeg, ComCtrls, RxQuery, UCrpe32,
  ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppProd, ppReport, ppDB,
  ppComm, ppRelatv, ppDBPipe, ppDBBDE, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormRelatorioFornecedoresCadastrados = class(TFormRelatorioTEMPLATE)
    RadioOrdem: TRadioGroup;
    SQLFornecedor: TRxQuery;
    SQLFornecedorFORNICOD: TIntegerField;
    SQLFornecedorFORNA60RAZAOSOC: TStringField;
    SQLFornecedorFORNA60NOMEFANT: TStringField;
    SQLFornecedorTPFRICOD: TIntegerField;
    SQLFornecedorFORNA60CONTATO: TStringField;
    SQLFornecedorFORNCFISJURID: TStringField;
    SQLFornecedorFORNA14CGC: TStringField;
    SQLFornecedorFORNA20IE: TStringField;
    SQLFornecedorFORNA11CPF: TStringField;
    SQLFornecedorFORNA10RG: TStringField;
    SQLFornecedorFORNA60END: TStringField;
    SQLFornecedorFORNA60BAI: TStringField;
    SQLFornecedorFORNA60CID: TStringField;
    SQLFornecedorFORNA2UF: TStringField;
    SQLFornecedorFORNA8CEP: TStringField;
    SQLFornecedorFORNA15FONE1: TStringField;
    SQLFornecedorFORNA15FONE2: TStringField;
    SQLFornecedorFORNA15FAX: TStringField;
    SQLFornecedorFORNA60EMAIL: TStringField;
    SQLFornecedorFORNA60URL: TStringField;
    SQLFornecedorFORNTOBS: TStringField;
    SQLFornecedorPENDENTE: TStringField;
    SQLFornecedorREGISTRO: TDateTimeField;
    SQLFornecedorFORNA30CODCONTABIL: TStringField;
    TblTemporariaFORNICOD: TIntegerField;
    TblTemporariaFORNA60RAZAOSOC: TStringField;
    TblTemporariaFORNA60NOMEFANT: TStringField;
    TblTemporariaTPFRICOD: TIntegerField;
    TblTemporariaFORNA60CONTATO: TStringField;
    TblTemporariaFORNCFISJURID: TStringField;
    TblTemporariaFORNA14CGC: TStringField;
    TblTemporariaFORNA20IE: TStringField;
    TblTemporariaFORNA11CPF: TStringField;
    TblTemporariaFORNA10RG: TStringField;
    TblTemporariaFORNA60END: TStringField;
    TblTemporariaFORNA60BAI: TStringField;
    TblTemporariaFORNA60CID: TStringField;
    TblTemporariaFORNA2UF: TStringField;
    TblTemporariaFORNA8CEP: TStringField;
    TblTemporariaFORNA15FONE1: TStringField;
    TblTemporariaFORNA15FONE2: TStringField;
    TblTemporariaFORNA15FAX: TStringField;
    TblTemporariaFORNA60EMAIL: TStringField;
    TblTemporariaFORNA60URL: TStringField;
    TblTemporariaFORNTOBS: TStringField;
    TblTemporariaPENDENTE: TStringField;
    TblTemporariaREGISTRO: TDateTimeField;
    TblTemporariaFORNA30CODCONTABIL: TStringField;
    Report: TCrpe;
    DSTipoFornec: TDataSource;
    SQLTipoFornecedor: TRxQuery;
    GroupTipoFornec: TGroupBox;
    ComboTipoFornecedor: TRxDBLookupCombo;
    SQLTipoFornecedorTPFRICOD: TIntegerField;
    SQLTipoFornecedorTPFRA60DESCR: TStringField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioFornecedoresCadastrados: TFormRelatorioFornecedoresCadastrados;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioFornecedoresCadastrados.ExecutarBtnClick(
  Sender: TObject);
begin
  inherited;
  SQLFornecedor.Close ;
  SQLFornecedor.MacrobyName('MFiltro').Value := '0=0';
  case RadioOrdem.ItemIndex of
    0 : SQLFornecedor.MacrobyName('MOrdem').Value := 'ORDER BY FORNA60RAZAOSOC';
    1 : SQLFornecedor.MacrobyName('MOrdem').Value := 'ORDER BY FORNA60CID';
    2 : SQLFornecedor.MacrobyName('MOrdem').Value := 'ORDER BY FORNA14CGC';
  end;

  if ComboTipoFornecedor.Value <> '' then
    SQLFornecedor.MacrobyName('MFiltro').Value := 'TPFRICOD = '+ ComboTipoFornecedor.Value;

  SQLFornecedor.Open;
  if (SQLFornecedor.IsEmpty) then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;

  TblTemporaria.Close;
  TblTemporaria.Open;

  BatchExec(SQLFornecedor, TblTemporaria) ;
  
  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Fornecedores Cadastrados.rpt';
  Report.ReportTitle        := 'Relatório de Fornecedores Cadastrados';
  Report.WindowStyle.Title  := 'Relatório de Fornecedores Cadastrados';
  Report.Execute;
end;

procedure TFormRelatorioFornecedoresCadastrados.FormCreate(
  Sender: TObject);
begin
  inherited;
  SQLTipoFornecedor.Open;
end;

end.
