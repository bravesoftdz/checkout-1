unit RelatorioChequesRecebidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, ExtCtrls, DBTables, Placemnt, DB, ComCtrls,
  StdCtrls, Mask, ToolEdit, RxLookup, Buttons, jpeg, RxQuery, unitlibrary,
  OleCtrls, UCrpe32, DBCtrls;

type
  TFormRelatorioChequeRecebidos = class(TFormRelatorioTEMPLATE)
    RadioTipoRel: TRadioGroup;
    SQLPortador: TRxQuery;
    SQLAlinea: TRxQuery;
    SQLCliente: TRxQuery;
    SQLCheque: TRxQuery;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DSSQLCliente: TDataSource;
    DSSQLPortador: TDataSource;
    DSSQLAlinea: TDataSource;
    SQLChequeCTRCA13ID: TStringField;
    SQLChequeEMPRICOD: TIntegerField;
    SQLChequeTERMICOD: TIntegerField;
    SQLChequeCLIEA13ID: TStringField;
    SQLChequeCTRCCSTATUS: TStringField;
    SQLChequeCTRCINROPARC: TIntegerField;
    SQLChequeCTRCDVENC: TDateTimeField;
    SQLChequeCTRCN2VLR: TBCDField;
    SQLChequeCTRCN2DESCFIN: TBCDField;
    SQLChequeCTRCN2TOTREC: TBCDField;
    SQLChequeCTRCDULTREC: TDateTimeField;
    SQLChequePORTICOD: TIntegerField;
    SQLChequeCTRCA5TIPOPADRAO: TStringField;
    SQLChequeCUPOA13ID: TStringField;
    SQLChequeBANCA5CODCHQ: TStringField;
    SQLChequeCTRCA10AGENCIACHQ: TStringField;
    SQLChequeCTRCA15CONTACHQ: TStringField;
    SQLChequeCTRCA15NROCHQ: TStringField;
    SQLChequeCTRCA60TITULARCHQ: TStringField;
    SQLChequeCTRCA20CGCCPFCHQ: TStringField;
    SQLChequeCTRCDDEPOSCHQ: TDateTimeField;
    SQLChequeALINICOD: TIntegerField;
    SQLChequeCLIEA60RAZAOSOC: TStringField;
    SQLChequePORTA60DESCR: TStringField;
    SQLChequeALINA30DESCR: TStringField;
    TblTemporariaCTRCA13ID: TStringField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaTERMICOD: TIntegerField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaCTRCCSTATUS: TStringField;
    TblTemporariaCTRCINROPARC: TIntegerField;
    TblTemporariaCTRCDVENC: TDateTimeField;
    TblTemporariaCTRCN2VLR: TBCDField;
    TblTemporariaCTRCN2DESCFIN: TBCDField;
    TblTemporariaCTRCN2TOTREC: TBCDField;
    TblTemporariaCTRCDULTREC: TDateTimeField;
    TblTemporariaPORTICOD: TIntegerField;
    TblTemporariaCTRCA5TIPOPADRAO: TStringField;
    TblTemporariaCUPOA13ID: TStringField;
    TblTemporariaBANCA5CODCHQ: TStringField;
    TblTemporariaCTRCA10AGENCIACHQ: TStringField;
    TblTemporariaCTRCA15CONTACHQ: TStringField;
    TblTemporariaCTRCA15NROCHQ: TStringField;
    TblTemporariaCTRCA60TITULARCHQ: TStringField;
    TblTemporariaCTRCA20CGCCPFCHQ: TStringField;
    TblTemporariaCTRCDDEPOSCHQ: TDateTimeField;
    TblTemporariaALINICOD: TIntegerField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    TblTemporariaPORTA60DESCR: TStringField;
    TblTemporariaALINA30DESCR: TStringField;
    Report: TCrpe;
    ComboPortador: TDBLookupComboBox;
    ComboAlinea: TDBLookupComboBox;
    ComboCliente: TDBLookupComboBox;
    RadioData: TRadioGroup;
    SQLChequeCTRCDEMIS: TDateTimeField;
    TblTemporariaCTRCDEMIS: TDateTimeField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboPortadorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure SetarDatPeriodoEmissaoRpt;
  public
    { Public declarations }
  end;

var
  FormRelatorioChequeRecebidos: TFormRelatorioChequeRecebidos;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioChequeRecebidos.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  {-------------------------------------------------
    Autor : Jonas Batista Loss
    CR = CONTAS A RECEBER
  --------------------------------------------------}
  if TblTemporaria.Active then
    TblTemporaria.Close ;
  try
    TblTemporaria.DeleteTable;
    TblTemporaria.CreateTable;
  except
    TblTemporaria.CreateTable;
  end;

  if not TblTemporaria.Active then
    TblTemporaria.Open;
  if SQLCheque.Active then
    SQLCheque.Close;
  case RadioTipoRel.ItemIndex of
  0: begin
       SQLCheque.MacroByName('MCampoFiltro').Value := 'CR.CTRCDULTREC is null';
       if RadioData.ItemIndex = 0 then
         SQLCheque.MacroByName('MFiltro').Value      := 'CR.CTRCDVENC'
       else
         SQLCheque.MacroByName('MFiltro').Value      := 'CR.CTRCDEMIS';
       SQLCheque.MacroByName('MDataInicial').Value := ' "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" ';
       SQLCheque.MacroByName('MDataFinal').Value   := ' "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '" ';
     end;
  1: begin
       SQLCheque.MacroByName('MCampoFiltro').Value := 'CR.CTRCDULTREC is not null';
       if RadioData.ItemIndex = 0 then
         SQLCheque.MacroByName('MFiltro').Value      := 'CR.CTRCDVENC'
       else
         SQLCheque.MacroByName('MFiltro').Value      := 'CR.CTRCDEMIS';
       SQLCheque.MacroByName('MDataInicial').Value := ' "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" ';
       SQLCheque.MacroByName('MDataFinal').Value   := ' "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '" ';
     end;
  2: begin
       SQLCheque.MacroByName('MCampoFiltro').Value := 'CR.CTRCDULTREC is null';
       SQLCheque.MacroByName('MFiltro').Value      := 'CR.CTRCDEMIS ';
       SQLCheque.MacroByName('MDataInicial').Value := ' "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" ';
       SQLCheque.MacroByName('MDataFinal').Value   := ' "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '" ';
     end;
  end;
  //-----------------------------------------------------------------------------------------------------------------\\
  SQLCheque.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CR', '');
  if ComboPortador.KeyValue <> null then
    SQLCheque.MacroByName('MPortador' ).Value := 'CR.PORTICOD = ' + IntToStr(ComboPortador.KeyValue)
  else
    SQLCheque.MacroByName('MPortador' ).Value := '0=0' ;

  if ComboAlinea.KeyValue <> null then
    SQLCheque.MacroByName('MAlinea' ).Value := 'CR.ALINICOD = ' + IntToStr(ComboAlinea.KeyValue)
  else
    SQLCheque.MacroByName('MAlinea' ).Value := '0=0' ;

  if ComboCliente.KeyValue <> null then
    SQLCheque.MacroByName('MCliente' ).Value := 'CR.CLIEA13ID = "' + SQLCliente.FieldByName('CLIEA13ID').AsString + '"'
  else
    SQLCheque.MacroByName('MCliente' ).Value := '0=0' ;

  SQLCheque.Open;
  BatchExec(SQLCheque,TblTemporaria) ;

  case RadioTipoRel.ItemIndex of
    0: begin
         Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Cheques Recebidos.rpt' ;
         Report.ReportTitle       := 'Relatório de Cheques Vencidos' ;
         Report.WindowStyle.Title := 'Relatório de Cheques Vencidos' ;
         SetarDatPeriodoEmissaoRpt ;
         Report.Execute ;
       end;
    1: begin
         Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Cheques Recebidos.rpt';
         Report.ReportTitle       := 'Relatório de Cheques Baixados' ;
         Report.WindowStyle.Title := 'Relatório de Cheques Baixados' ;
         SetarDatPeriodoEmissaoRpt ;
         Report.Execute ;
       end;
    2: begin
         Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Cheques Recebidos.rpt';
         Report.ReportTitle       := 'Relatório de Cheques Recebidos' ;
         Report.WindowStyle.Title := 'Relatório de Cheques Recebidos' ;
         SetarDatPeriodoEmissaoRpt ;
         Report.Execute ;
       end;
  end ;
end ;

procedure TFormRelatorioChequeRecebidos.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLPortador.Active then SQLPortador.Open ;
  if not SQLAlinea.Active then SQLAlinea.Open ;
  if not SQLCliente.Active then SQLCliente.Open ;
  RadioTipoRel.ItemIndex := 0;
end;

procedure TFormRelatorioChequeRecebidos.SetarDatPeriodoEmissaoRpt;
begin
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
  Report.Formulas.Name         := 'Portador' ;
  if ComboPortador.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboPortador.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Situacao' ;
  if ComboAlinea.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboAlinea.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Cliente' ;
  if ComboCliente.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboCliente.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
end ;

procedure TFormRelatorioChequeRecebidos.ComboPortadorKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as TDBLookupComboBox).KeyValue = '')
    or ((sender as TDBLookupComboBox).KeyValue <> (sender as TDBLookupComboBox).ListSource.DataSet.FieldByName((sender as TDBLookupComboBox).KeyField).Value) then
      (sender as TDBLookupComboBox).KeyValue := (sender as TDBLookupComboBox).ListSource.DataSet.FieldByName((sender as TDBLookupComboBox).KeyField).Value;
  if Key = VK_Escape then
    (sender as TDBLookupComboBox).KeyValue := Null;
end;

end.
