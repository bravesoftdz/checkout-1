unit TelaImportarSaldosCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, StdCtrls, DBCtrls,
  RxLookup, Mask, ToolEdit, DB, DBTables, RxQuery;

type
  TFormTelaImportarSaldosCaixa = class(TFormTelaGeralTEMPLATE)
    Label1: TLabel;
    DtaFechto: TDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    ComboEmpresa: TRxDBLookupCombo;
    ComboTerminal: TRxDBLookupCombo;
    SQLEmpresa: TRxQuery;
    DSSQLEmpresa: TDataSource;
    SQLTerminal: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    DSSQLTerminal: TDataSource;
    BtnBaixarDoc: TSpeedButton;
    SQLFechamentoCaixa: TRxQuery;
    SQLFechamentoCaixaEMPRICOD: TIntegerField;
    SQLFechamentoCaixaTERMICOD: TIntegerField;
    SQLFechamentoCaixaFECXDLANC: TDateTimeField;
    SQLFechamentoCaixaNUMEICOD: TIntegerField;
    SQLFechamentoCaixaFECXN2VALOR: TBCDField;
    SQLFechamentoCaixaFECXCIMPTESOURARIA: TStringField;
    SQLFechamentoCaixaPENDENTE: TStringField;
    SQLFechamentoCaixaREGISTRO: TDateTimeField;
    SQLTesouraria: TRxQuery;
    SQLTesourariaTESOA13ID: TStringField;
    SQLTesourariaEMPRICOD: TIntegerField;
    SQLTesourariaTESOICOD: TIntegerField;
    SQLTesourariaTESODLANC: TDateTimeField;
    SQLTesourariaTESOCDEBCRED: TStringField;
    SQLTesourariaTESON2VLRDEB: TBCDField;
    SQLTesourariaTESON2VLRCRED: TBCDField;
    SQLTesourariaTESOA254HIST: TStringField;
    SQLTesourariaNUMEICOD: TIntegerField;
    SQLTesourariaPENDENTE: TStringField;
    SQLTesourariaREGISTRO: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure BtnBaixarDocClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaImportarSaldosCaixa: TFormTelaImportarSaldosCaixa;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormTelaImportarSaldosCaixa.FormCreate(Sender: TObject);
begin
  inherited;
  DtaFechto.Date := Date ;
  SQLEmpresa.Open ;
  SQLTerminal.Open ;
end;

procedure TFormTelaImportarSaldosCaixa.BtnBaixarDocClick(Sender: TObject);
var
  IDNextLanc : string ;
  CodNextLanc: integer ;
begin
  inherited;
  if DtaFechto.Text = '' then
    begin
      Informa('A data deve ser informada') ;
      DtaFechto.SetFocus ;
      exit ;
    end ;

  if ComboEmpresa.Text = '' then
    begin
      Informa('A empresa deve ser informada') ;
      ComboEmpresa.SetFocus ;
      exit ;
    end ;

  SQLTesouraria.Open ;

  SQLFechamentoCaixa.Close ;
  SQLFechamentoCaixa.MacroByName('MEmpresa').Value  := 'EMPRICOD = ' + ComboEmpresa.Value ;
  if ComboTerminal.Text <> '' then
    SQLFechamentoCaixa.MacroByName('MTerminal').Value := 'TERMICOD = ' + ComboTerminal.Value
  else
    SQLFechamentoCaixa.MacroByName('MTerminal').Value := '0=0'  ;

  SQLFechamentoCaixa.MacroByName('MData').Value     := 'FECXDLANC >= "' + FormatDateTime('mm/dd/yyyy 00:00:00', DtaFechto.Date) + '" and ' +
                                                       'FECXDLANC <= "' + FormatDateTime('mm/dd/yyyy 23:59:59', DtaFechto.Date) + '"' ;
  SQLFechamentoCaixa.Open ;
//  GravaArqTexto(SQLFechamentoCaixa.RealSQL.Text,'C:\Unit\Gestao\ImpSldCx.txt','NOVO');
  SQLFechamentoCaixa.First ;
  while not SQLFechamentoCaixa.Eof do
    begin
      if SQLFechamentoCaixaFECXN2VALOR.Value > 0 then
        begin
          DM.SQLTemplate.Close ;
          DM.SQLTemplate.SQL.Clear ;
          DM.SQLTemplate.SQL.Add('select Max(TESOICOD) as Maximo from TESOURARIA') ;
          DM.SQLTemplate.SQL.Add('where EMPRICOD = ' + DM.SQLConfigGeralCFGEIEMPPADRAO.AsString) ;
          DM.SQLTemplate.Open ;
          if DM.SQLTemplate.FieldByName('Maximo').Value > 0 then
            CodNextLanc := DM.SQLTemplate.FieldByName('Maximo').Value + 1
          else
            CodNextLanc := 1 ;

          IDNextLanc := FormatFloat('000', DM.SQLConfigGeralCFGEIEMPPADRAO.Value) +
                        Format('%.9d', [CodNextLanc]) ;
          IDNextLanc := IDNextLanc + DigitVerifEAN(IDNextLanc)  ;

          SQLTesouraria.Append ;
          SQLTesourariaTESOA13ID.Value     := IDNextLanc ;
          SQLTesourariaEMPRICOD.Value      := DM.SQLConfigGeralCFGEIEMPPADRAO.Value ;
          SQLTesourariaTESOICOD.Value      := CodNextLanc ;
          SQLTesourariaTESODLANC.Value     := Date ;
          SQLTesourariaTESOCDEBCRED.Value  := 'C' ;
          SQLTesourariaTESON2VLRDEB.Value  := 0 ;
          SQLTesourariaTESON2VLRCRED.Value := SQLFechamentoCaixaFECXN2VALOR.Value ;
          SQLTesourariaTESOA254HIST.Value  := 'Saldo Terminal ' + SQLFechamentoCaixaTERMICOD.AsString +
                                              ' Empresa ' + SQLFechamentoCaixaEMPRICOD.AsString ;
          SQLTesourariaNUMEICOD.Value      := SQLFechamentoCaixaNUMEICOD.Value ;
          SQLTesourariaPENDENTE.Value      := 'S' ;
          SQLTesourariaREGISTRO.Value      := Now ;
          SQLTesouraria.Post ;

          SQLFechamentoCaixa.Edit ;
          SQLFechamentoCaixaFECXCIMPTESOURARIA.Value := 'S' ;
          SQLFechamentoCaixa.Post ;
        end ;

      SQLFechamentoCaixa.Next ;
    end ;
end;

end.
