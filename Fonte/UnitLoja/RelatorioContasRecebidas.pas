unit RelatorioContasRecebidas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RelatorioTemplate, DBTables, Placemnt, Db, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, OleCtrls,
  UCrpe32, RXCtrls;

type
  TFormRelatorioContasRecebidas = class(TFormRelatorioTEMPLATE)
    SQLNumerario: TQuery;
    DSSQLNumerario: TDataSource;
    SQLContasReceber: TRxQuery;
    SQLCliente: TQuery;
    DSSQLCliente: TDataSource;
    Report: TCrpe;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberEMPRICODREC: TIntegerField;
    SQLContasReceberRECEDRECTO: TDateTimeField;
    SQLContasReceberRECEN2DESC: TBCDField;
    SQLContasReceberRECEN2VLRJURO: TBCDField;
    SQLContasReceberRECEN2VLRMULTA: TBCDField;
    SQLContasReceberRECEN2VLRRECTO: TBCDField;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberNOFIA13ID: TStringField;
    SQLContasReceberPDVDA13ID: TStringField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCTRCN2VLR: TBCDField;
    SQLContasReceberEMPRICODULTREC: TIntegerField;
    SQLContasReceberSALDO: TFloatField;
    SQLContasReceberNUMEICOD: TIntegerField;
    SQLContasReceberCLIEA60RAZAOSOC: TStringField;
    TblTemporariaCTRCA13ID: TStringField;
    TblTemporariaEMPRICODREC: TIntegerField;
    TblTemporariaRECEDRECTO: TDateTimeField;
    TblTemporariaRECEN2DESC: TBCDField;
    TblTemporariaRECEN2VLRJURO: TBCDField;
    TblTemporariaRECEN2VLRMULTA: TBCDField;
    TblTemporariaRECEN2VLRRECTO: TBCDField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaCTRCDVENC: TDateTimeField;
    TblTemporariaCTRCINROPARC: TIntegerField;
    TblTemporariaCUPOA13ID: TStringField;
    TblTemporariaNOFIA13ID: TStringField;
    TblTemporariaPDVDA13ID: TStringField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaCTRCN2VLR: TBCDField;
    TblTemporariaEMPRICODULTREC: TIntegerField;
    TblTemporariaSALDO: TFloatField;
    TblTemporariaNUMEICOD: TIntegerField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    GroupBox3: TGroupBox;
    ComboCliente: TRxDBLookupCombo;
    GroupBox2: TGroupBox;
    ComboNumerario: TRxDBLookupCombo;
    CheckNroDuplic: TCheckBox;
    GroupBox4: TGroupBox;
    ListTerminal: TRxCheckListBox;
    CheckCupom: TCheckBox;
    CheckTerminal: TCheckBox;
    CKResumoDia: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
    procedure ComboEmpresaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioContasRecebidas: TFormRelatorioContasRecebidas;

implementation

uses UnitLibrary, DataModulo;

{$R *.DFM}

procedure TFormRelatorioContasRecebidas.FormCreate(Sender: TObject);
begin
  inherited;
  SQLNumerario.Open ;
  SQLCliente.Open ;
  ListaTerminal(ListTerminal,EmpresaPadrao);
end;

procedure TFormRelatorioContasRecebidas.ExecutarBtnClick(Sender: TObject);
var
  NroDuplic : String;
begin
  inherited;
  SQLContasReceber.Close ;
  SQLContasReceber.MacrobyName('MEmpresa').Value  := '0=0' ;
  SQLContasReceber.MacrobyName('MData').Value     := '0=0' ;
  SQLContasReceber.MacrobyName('MCliente').Value  := '0=0' ;
  SQLContasReceber.MacrobyName('MCliente2').Value := '0=0' ;
  SQLContasReceber.MacrobyName('MEmpresa2').Value := '0=0' ;
  //SETAR MACROS CONTAS A RECEBER
  SQLContasReceber.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CONTASRECEBER', '') ;
  SQLContasReceber.MacrobyName('MEmpresa2').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CUPOM', '') ;

  SQLContasReceber.MacrobyName('MData').Value    := 'RECEBIMENTO.RECEDRECTO >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                    'RECEBIMENTO.RECEDRECTO <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
  SQLContasReceber.MacrobyName('MData2').Value    := 'CUPOM.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                     'CUPOM.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;


  if CheckCupom.Checked then
    begin
      SQLContasReceber.MacrobyName('MCupom').Value  := 'CONTASRECEBER.CUPOA13ID IN(SELECT CUPOA13ID FROM CUPOM WHERE CUPOINRO IS NOT NULL AND CUPOINRO > 0)';
      SQLContasReceber.MacrobyName('MCupom2').Value := 'CUPOMNUMERARIO.CUPOA13ID IN(SELECT CUPOA13ID FROM CUPOM WHERE CUPOINRO IS NOT NULL AND CUPOINRO > 0)'
    end
  else
    begin
      SQLContasReceber.MacrobyName('MCupom').Value          := '0=0';
      SQLContasReceber.MacrobyName('MCupom2').Value         := '0=0';
    end;
  if ComboCliente.text <> '' then
  begin
    SQLContasReceber.MacrobyName('MCliente').Value          := 'CONTASRECEBER.CLIEA13ID = "' + ComboCliente.Value + '"' ;
    SQLContasReceber.MacrobyName('MCliente2').Value         := 'CUPOM.CLIEA13ID = "' + ComboCliente.Value + '"' ;
  end ;

  if ComboNumerario.text <> '' then
    begin
      SQLContasReceber.MacrobyName('MNumerario').Value      := 'CONTASRECEBER.NUMEICOD = ' + ComboNumerario.Value;
      SQLContasReceber.MacrobyName('MNumerario2').Value     := 'CUPOMNUMERARIO.NUMEICOD = ' + ComboNumerario.Value;
    end
  else
    begin
      SQLContasReceber.MacrobyName('MNumerario').Value      := '0=0';
      SQLContasReceber.MacrobyName('MNumerario2').Value     := '0=0';
    end;
  //SETAR O(S) TERMINAL(IS);
  if CheckTerminal.Checked then
    begin
      SQLContasReceber.MacrobyName('MTerminal').Value           := 'CONTASRECEBER.TERMICOD IN' + MontaSQLdeListaTerminal(ListTerminal);
      SQLContasReceber.MacrobyName('MTerminal2').Value          := 'CUPOM.TERMICOD IN' + MontaSQLdeListaTerminal(ListTerminal);
    end
  else
    begin
      SQLContasReceber.MacrobyName('MTerminal').Value           := '0=0';
      SQLContasReceber.MacrobyName('MTerminal2').Value          := '0=0';
    end;

  SQLContasReceber.Open ;
  if SQLContasReceber.IsEmpty then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;
  BatchExec(SQLContasReceber, TblTemporaria) ;
  TblTemporaria.Open ;
  while not TblTemporaria.Eof do
    begin
      TblTemporaria.Edit ;
      if TblTemporariaNOFIA13ID.AsString <> '' then
        TblTemporariaCTRCA13ID.AsString := SQLLocate('NOTAFISCAL', 'NOFIA13ID','SERIA5COD', '"' + TblTemporariaNOFIA13ID.AsString + '"') + '-' +
                                           SQLLocate('NOTAFISCAL', 'NOFIA13ID','NOFIINUMERO', '"' + TblTemporariaNOFIA13ID.AsString + '"') ;

      if TblTemporariaPDVDA13ID.AsString <> '' then
        begin
          TblTemporariaCTRCA13ID.AsString := TblTemporariaPDVDA13ID.AsString;
        end;
      if TblTemporariaCUPOA13ID.AsString <> '' then
        begin
          TblTemporariaCTRCA13ID.AsString := TblTemporariaCUPOA13ID.AsString;
        end;

      if TblTemporariaCTRCA13ID.AsString = '' then
        TblTemporariaCTRCA13ID.AsString := SQLContasReceberCTRCA13ID.AsString;
      if CheckNroDuplic.Checked then
        begin
           NroDuplic := SQLLocate('CONTASRECEBER','CTRCA13ID','CTRCA30NRODUPLICBANCO','"' + TblTemporariaCTRCA13ID.AsString + '"');
          if NroDuplic <> '' then
            TblTemporariaCTRCA13ID.AsString := NroDuplic;
        end;

      TblTemporaria.Post ;
      TblTemporaria.Next ;
    end ;
  TblTemporaria.Close ;

  if not CKResumoDia.Checked then
    Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Contas Recebidas.rpt'
  else
    Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Contas Recebidas Resumo por Dia.rpt';

  Report.ReportTitle       := 'Relatório de Contas Recebidas' ;
  Report.WindowStyle.Title := 'Relatório de Contas Recebidas' ;
 //SETAR FORMULAS REPORT
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
procedure TFormRelatorioContasRecebidas.ComboEmpresaChange(
  Sender: TObject);
begin
  inherited;
  if ComboEmpresa.Text <> 'Todas' then
    ListaTerminal(ListTerminal,ComboEmpresa.Value)
  else
    ListaTerminal(ListTerminal,'');

end;

end.
