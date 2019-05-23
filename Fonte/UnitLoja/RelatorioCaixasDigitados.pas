unit RelatorioCaixasDigitados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, DBTables, Placemnt, DB, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioCaixasDigitados = class(TFormRelatorioTEMPLATE)
    SQLRedNumerario: TRxQuery;
    SQLRedNumerarioREDUA13ID: TStringField;
    SQLRedNumerarioNUMEICOD: TIntegerField;
    SQLRedNumerarioREFON3VLR: TBCDField;
    SQLReducao: TRxQuery;
    SQLReducaoREDUA13ID: TStringField;
    SQLReducaoEMPRICOD: TIntegerField;
    SQLReducaoREDUICOD: TIntegerField;
    SQLReducaoECFA13ID: TStringField;
    SQLReducaoREDUDEMIS: TDateTimeField;
    SQLReducaoREDUN3VENDABRUTA: TBCDField;
    SQLReducaoREDUN3GRANDETOTAL: TBCDField;
    SQLReducaoREDUICONTINICIAL: TIntegerField;
    SQLReducaoREDUICONTFINAL: TIntegerField;
    SQLReducaoREDUICONTREDUZ: TIntegerField;
    SQLReducaoREDUICONTREINICIO: TIntegerField;
    SQLReducaoREDUN3ALIQ1: TBCDField;
    SQLReducaoREDUN3BASE1: TBCDField;
    SQLReducaoREDUN3IMPO1: TBCDField;
    SQLReducaoREDUN3ALIQ2: TBCDField;
    SQLReducaoREDUN3BASE2: TBCDField;
    SQLReducaoREDUN3IMPO2: TBCDField;
    SQLReducaoREDUN3ALIQ3: TBCDField;
    SQLReducaoREDUN3BASE3: TBCDField;
    SQLReducaoREDUN3IMPO3: TBCDField;
    SQLReducaoREDUN3ALIQ4: TBCDField;
    SQLReducaoREDUN3BASE4: TBCDField;
    SQLReducaoREDUN3IMPO4: TBCDField;
    SQLReducaoREDUN3ALIQ5: TBCDField;
    SQLReducaoREDUN3BASE5: TBCDField;
    SQLReducaoREDUN3IMPO5: TBCDField;
    SQLReducaoREDUN3ALIQ6: TBCDField;
    SQLReducaoREDUN3BASE6: TBCDField;
    SQLReducaoREDUN3IMPO6: TBCDField;
    TblTemporariaREDUA13ID: TStringField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaREDUICOD: TIntegerField;
    TblTemporariaECFA13ID: TStringField;
    TblTemporariaREDUDEMIS: TDateTimeField;
    TblTemporariaREDUN3VENDABRUTA: TBCDField;
    TblTemporariaREDUN3GRANDETOTAL: TBCDField;
    TblTemporariaREDUICONTINICIAL: TIntegerField;
    TblTemporariaREDUICONTFINAL: TIntegerField;
    TblTemporariaREDUICONTREDUZ: TIntegerField;
    TblTemporariaREDUICONTREINICIO: TIntegerField;
    TblTemporariaREDUN3ALIQ1: TBCDField;
    TblTemporariaREDUN3BASE1: TBCDField;
    TblTemporariaREDUN3IMPO1: TBCDField;
    TblTemporariaREDUN3ALIQ2: TBCDField;
    TblTemporariaREDUN3BASE2: TBCDField;
    TblTemporariaREDUN3IMPO2: TBCDField;
    TblTemporariaREDUN3ALIQ3: TBCDField;
    TblTemporariaREDUN3BASE3: TBCDField;
    TblTemporariaREDUN3IMPO3: TBCDField;
    TblTemporariaREDUN3ALIQ4: TBCDField;
    TblTemporariaREDUN3BASE4: TBCDField;
    TblTemporariaREDUN3IMPO4: TBCDField;
    TblTemporariaREDUN3ALIQ5: TBCDField;
    TblTemporariaREDUN3BASE5: TBCDField;
    TblTemporariaREDUN3IMPO5: TBCDField;
    TblTemporariaREDUN3ALIQ6: TBCDField;
    TblTemporariaREDUN3BASE6: TBCDField;
    TblTemporariaREDUN3IMPO6: TBCDField;
    RBCreditoDebito: TRadioGroup;
    SQLReducaoTERMICOD: TIntegerField;
    TblTemporariaTERMICOD: TIntegerField;
    Report: TCrpe;
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioCaixasDigitados: TFormRelatorioCaixasDigitados;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioCaixasDigitados.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLReducao.Close ;
  SQLReducao.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'REDUCAOZDIA', '') ;

  SQLReducao.MacrobyName('MData').Value    := 'REDUCAOZDIA.REDUDEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                              'REDUCAOZDIA.REDUDEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"';
  SQLReducao.Open;
  if SQLReducao.IsEmpty then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;

  BatchExec(SQLReducao, TblTemporaria) ;

  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Resumo ReducaoZ.rpt' ;
  Report.ReportTitle       := 'Resumo de Reducoes Z' ;
  Report.WindowStyle.Title := 'Resumo de Reducoes Z' ;
end;

end.
