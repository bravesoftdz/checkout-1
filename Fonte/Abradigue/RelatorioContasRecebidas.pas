unit RelatorioContasRecebidas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RelatorioTemplate, DBTables, Placemnt, Db, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, OleCtrls,
  UCrpe32, RXCtrls, VarSys;

type
  TFormRelatorioContasRecebidas = class(TFormRelatorioTEMPLATE)
    SQLNumerario: TQuery;
    DSSQLNumerario: TDataSource;
    SQLContasReceber: TRxQuery;
    SQLCliente: TQuery;
    DSSQLCliente: TDataSource;
    Report: TCrpe;
    TblTemporariaEMPRICODREC: TIntegerField;
    TblTemporariaRECEDRECTO: TDateTimeField;
    TblTemporariaRECEN2DESC: TBCDField;
    TblTemporariaRECEN2VLRJURO: TBCDField;
    TblTemporariaRECEN2VLRMULTA: TBCDField;
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
    GroupCliente: TGroupBox;
    ComboCliente: TRxDBLookupCombo;
    GroupNumerario: TGroupBox;
    ComboNumerario: TRxDBLookupCombo;
    CheckNroDuplic: TCheckBox;
    GroupBox4: TGroupBox;
    ListTerminal: TRxCheckListBox;
    CheckCupom: TCheckBox;
    CheckTerminal: TCheckBox;
    GroupPortador: TGroupBox;
    ComboPortador: TRxDBLookupCombo;
    SQLPortador: TQuery;
    DSSQLPortador: TDataSource;
    SQLPortadorPORTICOD: TIntegerField;
    SQLPortadorPORTA60DESCR: TStringField;
    GroupTpDoc: TGroupBox;
    ComboTipoDoc: TRxDBLookupCombo;
    SQLTipoDoc: TQuery;
    DSSQLTipoDoc: TDataSource;
    SQLTipoDocTPDCICOD: TIntegerField;
    SQLTipoDocTPDCA60DESCR: TStringField;
    TblTemporariaTPDCA60DESCR: TStringField;
    TblTemporariaPORTA60DESCR: TStringField;
    CheckPortTipoDoc: TCheckBox;
    SQLContasReceberEMPRICODREC: TIntegerField;
    SQLContasReceberRECEDRECTO: TDateTimeField;
    SQLContasReceberRECEN2DESC: TBCDField;
    SQLContasReceberRECEN2VLRJURO: TBCDField;
    SQLContasReceberRECEN2VLRMULTA: TBCDField;
    SQLContasReceberRECEN2VLRRECTO: TFloatField;
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
    SQLContasReceberTPDCA60DESCR: TStringField;
    SQLContasReceberPORTA60DESCR: TStringField;
    SQLContasReceberCTRCA13ID: TStringField;
    TblTemporariaCTRCA13ID: TStringField;
    CheckOrdemContrato: TCheckBox;
    TblTemporariaRECEN2VLRRECTO: TFloatField;
    SQLPlanoContas: TRxQuery;
    SQLPlanoContasPLCTA15COD: TStringField;
    SQLPlanoContasPLCTA60DESCR: TStringField;
    DSSQLPlanoContas: TDataSource;
    GroupPlanoContas: TGroupBox;
    ComboConta: TRxDBLookupCombo;
    procedure FormCreate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
    procedure ComboEmpresaChange(Sender: TObject);
    procedure ComboClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
  SQLTipoDoc.Open;
  SQLPortador.Open;
  SQLPlanoContas.Open;
  
  if not UsuarioMaster then
    ListaTerminal(ListTerminal,EmpresaPadrao)
  else
    ListaTerminal(ListTerminal,'');
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
  SQLContasReceber.MacrobyName('MEmpresa').Value  := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CONTASRECEBER', '') ;
  SQLContasReceber.MacrobyName('MEmpresa2').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CUPOM', '') ;

  SQLContasReceber.MacrobyName('MData').Value     := 'RECEBIMENTO.RECEDRECTO >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                     'RECEBIMENTO.RECEDRECTO <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
  SQLContasReceber.MacrobyName('MData2').Value    := 'CUPOM.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                     'CUPOM.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;

  if ComboPortador.Value <> '' then
    SQLContasReceber.MacrobyName('MPortador').Value := 'CONTASRECEBER.PORTICOD = ' + ComboPortador.Value
  else
    SQLContasReceber.MacrobyName('MPortador').Value := '0=0';

  if ComboTipoDoc.Value <> '' then
    SQLContasReceber.MacrobyName('MTipoDoc').Value  := 'CONTASRECEBER.TPDCICOD = '  + ComboTipoDoc.Value
  else
    SQLContasReceber.MacrobyName('MTipoDoc').Value  := '0=0';

  if CheckCupom.Checked then
    begin
      SQLContasReceber.MacrobyName('MCupom').Value  := 'CONTASRECEBER.CUPOA13ID IN(SELECT CUPOA13ID FROM CUPOM WHERE CUPOINRO IS NOT NULL AND CUPOINRO > 0)';
      SQLContasReceber.MacrobyName('MCupom2').Value := 'CUPOMNUMERARIO.CUPOA13ID IN(SELECT CUPOA13ID FROM CUPOM WHERE CUPOINRO IS NOT NULL AND CUPOINRO > 0)'
    end
  else
    begin
      SQLContasReceber.MacrobyName('MCupom').Value  := '0=0';
      SQLContasReceber.MacrobyName('MCupom2').Value := '0=0';
    end;
  if ComboCliente.text <> '' then
  begin
    SQLContasReceber.MacrobyName('MCliente').Value  := 'CONTASRECEBER.CLIEA13ID = "' + ComboCliente.Value + '"' ;
    SQLContasReceber.MacrobyName('MCliente2').Value := 'CUPOM.CLIEA13ID = "' + ComboCliente.Value + '"' ;
  end ;

  if ComboNumerario.text <> '' then
    begin
      SQLContasReceber.MacrobyName('MNumerario').Value  := 'CONTASRECEBER.NUMEICOD = ' + ComboNumerario.Value;
      SQLContasReceber.MacrobyName('MNumerario2').Value := 'CUPOMNUMERARIO.NUMEICOD = ' + ComboNumerario.Value;
    end
  else
    begin
      SQLContasReceber.MacrobyName('MNumerario').Value  := '0=0';
      SQLContasReceber.MacrobyName('MNumerario2').Value := '0=0';
    end;
  //SETAR O(S) TERMINAL(IS);
  if CheckTerminal.Checked then
    begin
      SQLContasReceber.MacrobyName('MTerminal').Value   := 'CONTASRECEBER.TERMICOD IN' + MontaSQLdeListaTerminal(ListTerminal);
      SQLContasReceber.MacrobyName('MTerminal2').Value  := 'CUPOM.TERMICOD IN' + MontaSQLdeListaTerminal(ListTerminal);
    end
  else
    begin
      SQLContasReceber.MacrobyName('MTerminal').Value   := '0=0';
      SQLContasReceber.MacrobyName('MTerminal2').Value  := '0=0';
    end;
  if ComboConta.Value <> '' then
    SQLContasReceber.MacrobyName('MConta').Value := 'CONTASRECEBER.PLCTA15COD = "'+ ComboConta.Value + '"'
  else
    SQLContasReceber.MacrobyName('MConta').Value := '0=0';

  SQLContasReceber.Open ;
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
          TblTemporariaCTRCA13ID.AsString := 'PD - ' + TblTemporariaPDVDA13ID.AsString;
        end;
      if TblTemporariaCUPOA13ID.AsString <> '' then
        begin
          TblTemporariaCTRCA13ID.AsString := 'CP - ' + TblTemporariaCUPOA13ID.AsString;
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
  TblTemporaria.Close;

  if not CheckPortTipoDoc.Checked then
    Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Contas Recebidas.rpt'
  else
    Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Contas Recebidas Detalhado.rpt';

  //AjustaCaminhoCrystal;

  Report.ReportTitle       := 'Relatório de Contas Recebidas';
  Report.WindowStyle.Title := 'Relatório de Contas Recebidas';
 //SETAR FORMULAS REPORT
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

  if CheckOrdemContrato.Checked then
    begin
      Report.SortFields.Retrieve;

      Report.SortFields.Clear;
      // ID Contrato
      Report.SortFields.Add(0);
      Report.SortFields.Number := 0;
      Report.SortFields.Field  := '{RelContasReceber.CUPOA13ID}';
      // ID ContasReceber
      Report.SortFields.Add(1);
      Report.SortFields.Number := 1;
      Report.SortFields.Field  := '{RelContasReceber.CTRCA13ID}';
      // Parcela
      Report.SortFields.Add(2);
      Report.SortFields.Number := 2;
      Report.SortFields.Field  := '{RelContasReceber.CTRCINROPARC}';

      Report.SortFields.Send;
    end;
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

procedure TFormRelatorioContasRecebidas.ComboClienteKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '') or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

end.
