unit RelatorioComissaoCobrador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, DBTables, Placemnt, DB, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioComissaoCobranca = class(TFormRelatorioTEMPLATE)
    SQLContasReceber: TRxQuery;
    GroupBox2: TGroupBox;
    SQLCobrador: TRxQuery;
    DSSQLCobrador: TDataSource;
    SQLCobradorCOBRA13ID: TStringField;
    SQLCobradorCOBRA60NOME: TStringField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCN2VLR: TBCDField;
    SQLContasReceberCTRCDULTREC: TDateTimeField;
    SQLContasReceberCTRCN2TOTREC: TBCDField;
    SQLContasReceberCTRCN2TOTJUROREC: TBCDField;
    SQLContasReceberCTRCN2TOTMULTAREC: TBCDField;
    SQLContasReceberCTRCN2TOTDESCREC: TBCDField;
    SQLContasReceberCTRCN2TOTMULTACOBR: TBCDField;
    SQLContasReceberCOBRA13ID: TStringField;
    SQLContasReceberCTRCDENVIOCOBRANCA: TDateTimeField;
    SQLContasReceberRECEDRECTO: TDateTimeField;
    SQLContasReceberRECEN2VLRRECTO: TBCDField;
    SQLContasReceberRECEN2VLRJURO: TBCDField;
    SQLContasReceberRECEN2VLRMULTA: TBCDField;
    SQLContasReceberRECEN2DESC: TBCDField;
    SQLContasReceberRECEN2MULTACOBR: TBCDField;
    SQLContasReceberCLIEA60RAZAOSOC: TStringField;
    SQLContasReceberCOBRA60NOME: TStringField;
    ComboCobrador: TRxDBLookupCombo;
    TblTemporariaCUPOA13ID: TStringField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaCTRCA13ID: TStringField;
    TblTemporariaCTRCINROPARC: TIntegerField;
    TblTemporariaCTRCDVENC: TDateTimeField;
    TblTemporariaCTRCN2VLR: TBCDField;
    TblTemporariaCTRCDULTREC: TDateTimeField;
    TblTemporariaCTRCN2TOTREC: TBCDField;
    TblTemporariaCTRCN2TOTJUROREC: TBCDField;
    TblTemporariaCTRCN2TOTMULTAREC: TBCDField;
    TblTemporariaCTRCN2TOTDESCREC: TBCDField;
    TblTemporariaCTRCN2TOTMULTACOBR: TBCDField;
    TblTemporariaCOBRA13ID: TStringField;
    TblTemporariaCTRCDENVIOCOBRANCA: TDateTimeField;
    TblTemporariaRECEDRECTO: TDateTimeField;
    TblTemporariaRECEN2VLRRECTO: TBCDField;
    TblTemporariaRECEN2VLRJURO: TBCDField;
    TblTemporariaRECEN2VLRMULTA: TBCDField;
    TblTemporariaRECEN2DESC: TBCDField;
    TblTemporariaRECEN2MULTACOBR: TBCDField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    TblTemporariaCOBRA60NOME: TStringField;
    TblTemporariaComissaoCapital: TFloatField;
    TblTemporariaComissaoJuro: TFloatField;
    TblTemporariaComissaoFixa: TFloatField;
    SQLCobradorCOBRN3COMISCAPITAL: TBCDField;
    SQLCobradorCOBRN3COMISJUROS: TBCDField;
    SQLCobradorCOBRN3COMISFIXA: TBCDField;
    Report: TCrpe;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioComissaoCobranca: TFormRelatorioComissaoCobranca;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioComissaoCobranca.ExecutarBtnClick(Sender: TObject);
var
 I : Integer;
begin
  inherited;
  SQLContasReceber.Close;
  SQLContasReceber.MacroByName('MEmpresa').AsString := SQLDeLista(ComboEmpresa,ListaEmpresas,'','RECEBIMENTO','');
  SQLContasReceber.MacroByName('MData').AsString    := 'RECEBIMENTO.RECEDRECTO >= "' + FormatDateTime('mm/dd/yyyy',De.Date) + '" AND ' +
                                                       'RECEBIMENTO.RECEDRECTO <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';
  if ComboCobrador.Value <> '' then
    SQLContasReceber.MacroByName('MCobrador').AsString := 'CONTASRECEBER.COBRA13ID = "' + ComboCobrador.Value + '"'
  else
    SQLContasReceber.MacroByName('MCobrador').AsString := '0=0';

  SQLContasReceber.Open;
  if SQLContasReceber.IsEmpty then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;
  SQLContasReceber.First;
//  BatchExec(SQLContasReceber,TblTemporaria);
  Progresso.Position := 0;
  Progresso.Min := 0;
  Progresso.Max := SQLContasReceber.RecordCount;
  while not SQLContasReceber.Eof do
    begin
      TblTemporaria.Append;
      for I:=0 to SQLContasReceber.FieldCount - 1 do
        begin
          if TblTemporaria.FindField(SQLContasReceber.Fields[I].FieldName) <> nil then
            TblTemporaria.FieldByName(SQLContasReceber.Fields[I].FieldName).AsVariant := SQLContasReceber.Fields[I].AsVariant;
        end;
      //CALCULA COMISSAO
      if SQLCobrador.Locate('COBRA13ID',SQLContasReceberCOBRA13ID.AsString,[]) then
        begin
          if SQLCobradorCOBRN3COMISCAPITAL.AsFloat > 0 then
            TblTemporariaComissaoCapital.AsFloat := SQLContasReceberRECEN2VLRRECTO.AsFloat * (SQLCobradorCOBRN3COMISCAPITAL.AsFloat / 100);
          if SQLCobradorCOBRN3COMISJUROS.AsFloat > 0 then
            TblTemporariaComissaoJuro.AsFloat    := SQLContasReceberRECEN2VLRJURO.AsFloat * (SQLCobradorCOBRN3COMISJUROS.AsFloat / 100);
          if SQLCobradorCOBRN3COMISFIXA.AsFloat > 0 then
            TblTemporariaComissaoFixa.AsFloat    := TblTemporariaComissaoFixa.AsFloat + SQLCobradorCOBRN3COMISFIXA.AsFloat;
        end;
      TblTemporaria.Post;
      SQLContasReceber.Next;
      Progresso.Position := Progresso.Position + 1;
      Progresso.Update;
    end;
  Progresso.Position := 0;

  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Comissao de Cobranca.rpt' ;

  Report.ReportTitle       := 'Comissões de Cobrança' ;
  Report.WindowStyle.Title := 'Comissões de Cobrança' ;
  //SETAR LEGENDA DE FILTROS NO RPT\\
  Report.Formulas.Retrieve;
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
  Report.Formulas.Name         := 'Cobrador' ;
  if ComboCobrador.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboCobrador.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Execute ;

end;

procedure TFormRelatorioComissaoCobranca.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLCobrador.Active then SQLCobrador.Open;
end;

end.
