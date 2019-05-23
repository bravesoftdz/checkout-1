unit RelatorioExtratoMovimentoBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, DBCtrls,
  UCrpe32;

type
  TFormRelatorioExtratoMovimentoBanco = class(TFormRelatorioTEMPLATE)
    GroupBox2: TGroupBox;
    SQLCC: TRxQuery;
    SQLCCCTCRICOD: TIntegerField;
    SQLCCBANCA5COD: TStringField;
    SQLCCCTCRA15AGENCIA: TStringField;
    SQLCCCTCRA15NUMERO: TStringField;
    SQLCCCTCRA60TITULAR: TStringField;
    SQLCCCTCRDABERTURA: TDateTimeField;
    SQLCCCTCRN2LIMITE: TBCDField;
    SQLCCCTCRN2SALDOATUAL: TBCDField;
    ComboConta: TDBLookupComboBox;
    DSSQLCC: TDataSource;
    DBEdit33: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    SQLMovBco: TRxQuery;
    SQLMovBcoMVBCA13ID: TStringField;
    SQLMovBcoEMPRICOD: TIntegerField;
    SQLMovBcoMVBCICOD: TIntegerField;
    SQLMovBcoMVBCDLANC: TDateTimeField;
    SQLMovBcoBANCA5COD: TStringField;
    SQLMovBcoCTCRICOD: TIntegerField;
    SQLMovBcoMVBCA6NROCHQ: TStringField;
    SQLMovBcoVALORLANC: TFloatField;
    SQLMovBcoMVBCDCHQBOMPARA: TDateTimeField;
    SQLMovBcoMVBCDCHQBAIXA: TDateTimeField;
    SQLMovBcoMVBCA254HIST: TStringField;
    SQLMovBcoMVBCA60FAVORECIDO: TStringField;
    SQLMovBcoOPBCICOD: TIntegerField;
    SQLMovBcoMVBCCALTSALD: TStringField;
    TblTemporariaMVBCA13ID: TStringField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaMVBCICOD: TIntegerField;
    TblTemporariaMVBCDLANC: TDateTimeField;
    TblTemporariaBANCA5COD: TStringField;
    TblTemporariaCTCRICOD: TIntegerField;
    TblTemporariaMVBCA6NROCHQ: TStringField;
    TblTemporariaVALORLANC: TFloatField;
    TblTemporariaMVBCDCHQBOMPARA: TDateTimeField;
    TblTemporariaMVBCDCHQBAIXA: TDateTimeField;
    TblTemporariaMVBCA254HIST: TStringField;
    TblTemporariaMVBCA60FAVORECIDO: TStringField;
    TblTemporariaOPBCICOD: TIntegerField;
    TblTemporariaMVBCCALTSALD: TStringField;
    Report: TCrpe;
    SQLMovBcoOPBCA60DESCR: TStringField;
    TblTemporariaOPBCA60DESCR: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioExtratoMovimentoBanco: TFormRelatorioExtratoMovimentoBanco;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioExtratoMovimentoBanco.FormCreate(Sender: TObject);
begin
  inherited;
  SQLCC.Open ;
end;

procedure TFormRelatorioExtratoMovimentoBanco.ExecutarBtnClick(
  Sender: TObject);
var
  i : integer ;
begin
  inherited;
  if ComboConta.Text = '' then
    begin
      Informa('A conta deve ser informada !') ;
      ComboConta.SetFocus ;
      exit ;
    end ;

  SQLMovBco.Close ;
  SQLMovBco.MacrobyName('MConta').Value := 'MV.CTCRICOD = ' + IntToStr(ComboConta.KeyValue) ;
  SQLMovBco.MacrobyName('MData').Value  := 'MV.MVBCDLANC >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                           'MV.MVBCDLANC <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
  SQLMovBco.Open ;

  TblTemporaria.Open ;
  //GRAVAR SALDO ANTERIOR
  TblTemporaria.Append ;
  TblTemporariaMVBCA254HIST.Value := 'SALDO ANTERIOR' ;
  TblTemporariaVALORLANC.Value    := SaldoContaCorrente(IntToStr(ComboConta.KeyValue), De.Text) ;
  TblTemporaria.Post ;

  SQLMovBco.First ;
  while not SQLMovBco.Eof do
    begin
      TblTemporaria.Append ;
      for i := 0 to SQLMovBco.FieldCount-1 do
        if SQLMovBco.Fields[i].AsString <> '' then
          TblTemporaria.FieldByName(SQLMovBco.Fields[i].FieldName).AsVariant := SQLMovBco.Fields[i].AsVariant ;
      TblTemporaria.Post ;

      SQLMovBco.Next ;
    end ;

  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Extrato Movimento Bancario.rpt' ;
  //Report.ReportTitle       := 'Extrato de Movimento Bancário' ;
  Report.WindowStyle.Title := 'Extrato de Movimento Bancário' ;
 //SETAR MACROS CUPOM NUMERARIO
  Report.Formulas.Retrieve ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                  FormatDateTime('dd/mm/yyyy', Ate.Date) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'ContaCorrente' ;
  Report.Formulas.Formula.Text := '"' + SQLCCCTCRA60TITULAR.Value + ' ' +
                                        SQLCCCTCRA15AGENCIA.Value + ' ' +
                                        SQLCCCTCRA15NUMERO.Value + '"' ;
  Report.Execute ;
end;

end.
