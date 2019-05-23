unit RelatorioKMDia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, StdCtrls, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, RxQuery, ppCtrls,
  ppPrnabl, ppClass, ppBands, ppCache, ppProd, ppReport, ppDB, ppComm,
  ppRelatv, ppDBPipe, ppDBBDE;

type
  TFormRelatorioKMDia = class(TFormRelatorioTEMPLATE)
    SQLKMDIA: TRxQuery;
    SQLKMDIAKMDIA13ID: TStringField;
    SQLKMDIAEMPRICOD: TIntegerField;
    SQLKMDIAKMDIICOD: TIntegerField;
    SQLKMDIAKMDIDDATA: TDateTimeField;
    SQLKMDIAKMDICSTATUS: TStringField;
    SQLKMDIAKMDIIINICIAL: TIntegerField;
    SQLKMDIAKMDIIFINAL: TIntegerField;
    SQLKMDIAREGISTRO: TDateTimeField;
    SQLKMDIAPENDENTE: TStringField;
    SQLFunc: TRxQuery;
    SQLFuncFUNCA13ID: TStringField;
    SQLFuncEMPRICOD: TIntegerField;
    SQLFuncTERMICOD: TIntegerField;
    SQLFuncFUNCICOD: TIntegerField;
    SQLFuncFUNCA60NOME: TStringField;
    SQLFuncFUNCCAUTONOMO: TStringField;
    SQLFuncPENDENTE: TStringField;
    SQLFuncREGISTRO: TDateTimeField;
    SQLFuncFUNCA11CPF: TStringField;
    SQLFuncFUNCA14CNPJ: TStringField;
    SQLFuncFUNCA15INSS: TStringField;
    SQLFuncFUNCA60ENDRES: TStringField;
    SQLFuncFUNCN2PERCCOMISSAO: TBCDField;
    SQLFuncVEICA13ID: TStringField;
    SQLFuncBANCA5COD: TStringField;
    SQLFuncFUNC5AGENCIA: TStringField;
    SQLFuncFUNCA10CELULAR: TStringField;
    SQLFuncFUNCA10CONTA: TStringField;
    SQLFuncFUNCA10FONE1: TStringField;
    SQLFuncFUNCA10FONE2: TStringField;
    SQLFuncFUNCA15CARGOFUNCAO: TStringField;
    SQLFuncFUNCA15CERTRESERVISTA: TStringField;
    SQLFuncFUNCA15CNH: TStringField;
    SQLFuncFUNCA15DEPARTAMENTO: TStringField;
    SQLFuncFUNCA15INSCEST: TStringField;
    SQLFuncFUNCA15INSMUN: TStringField;
    SQLFuncFUNCA15ORGEMISSOR: TStringField;
    SQLFuncFUNCA15SETOR: TStringField;
    SQLFuncFUNCA2UF: TStringField;
    SQLFuncFUNCA30BAIRRO: TStringField;
    SQLFuncFUNCA30EMAIL: TStringField;
    SQLFuncFUNCA30HORARIOTRABALHO: TStringField;
    SQLFuncFUNCA30NACIONALIDADE: TStringField;
    SQLFuncFUNCA30NATURALIDADE: TStringField;
    SQLFuncFUNCA30RECADO: TStringField;
    SQLFuncFUNCA30RG: TStringField;
    SQLFuncFUNCA30SISTEMATIC: TStringField;
    SQLFuncFUNCA30TITELEITOR: TStringField;
    SQLFuncFUNCA30URL: TStringField;
    SQLFuncFUNCA60CIDADE: TStringField;
    SQLFuncFUNCA60DEPARTFILIAL: TStringField;
    SQLFuncFUNCA60ENDFUNC: TStringField;
    SQLFuncFUNCA60NOMEFANT: TStringField;
    SQLFuncFUNCA60TITULAR: TStringField;
    SQLFuncFUNCA8CEP: TStringField;
    SQLFuncFUNCCTIPO: TStringField;
    SQLFuncFUNCCTIPOREMUN: TStringField;
    SQLFuncFUNCDABERTCONTA: TDateTimeField;
    SQLFuncFUNCDADMISSAO: TDateTimeField;
    SQLFuncFUNCDALTCONTRAT: TDateTimeField;
    SQLFuncFUNCDCONSTITICAO: TDateTimeField;
    SQLFuncFUNCDDEMISSAO: TDateTimeField;
    SQLFuncFUNCN2PERCENCARGOS: TBCDField;
    SQLFuncFUNCN3VLRREMUN: TBCDField;
    SQLFuncFUNCNVLRRANCHO: TBCDField;
    SQLFuncFUNCNVLRVR: TBCDField;
    SQLFuncFUNCNVLRVT: TBCDField;
    SQLKMDIAFUNCA13ID: TStringField;
    SQLKMDIAFuncionarioNome: TStringField;
    SQLKMDIAFuncionarioCargo: TStringField;
    TblTemporariaEmpresaCodigo: TIntegerField;
    TblTemporariaEmpresaRazao: TStringField;
    TblTemporariaFuncionarioNome: TStringField;
    TblTemporariaFuncionarioCargo: TStringField;
    TblTemporariaData: TDateField;
    TblTemporariaKMInicial: TStringField;
    TblTemporariaKMFinal: TStringField;
    ComboFunc: TRxDBLookupCombo;
    Label5: TLabel;
    DSSQLFunc: TDataSource;
    Pipe: TppBDEPipeline;
    DSSQSLKMDIA: TDataSource;
    ppReport: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLine1: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioKMDia: TFormRelatorioKMDia;

implementation

{$R *.dfm}

procedure TFormRelatorioKMDia.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLKMDIA.Close;
  if ComboEmpresa.KeyValue = null then
    SQLKMDIA.MacroByName('MEmpresa').Value  := '0=0'
  else
    SQLKMDIA.MacroByName('MEmpresa').Value  := 'EMPRICOD = ' + ComboEmpresa.KeyValue;
  if ComboFunc.Value = '' then
    begin
      ShowMessage('É preciso informar um funcionário!');
      abort;
    end
  else
    SQLKMDIA.MacroByName('MFunc').Value := 'FUNCA13ID = "'+ ComboFunc.Value + '"';

  SQLKMDIA.MacroByName('MData').Value := 'KMDIDDATA >= "' + FormatDateTime('mm/dd/yyyy', De.Date) +
                                         '" and KMDIDDATA <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"';
  SQLKMDIA.Open;
  ppReport.Print;
end;

procedure TFormRelatorioKMDia.FormCreate(Sender: TObject);
begin
  inherited;
  SQLFunc.Open;
end;

end.
