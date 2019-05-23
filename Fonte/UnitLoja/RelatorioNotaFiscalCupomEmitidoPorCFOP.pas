unit RelatorioNotaFiscalCupomEmitidoPorCFOP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, StdCtrls, DB, RxQuery, DBTables, Placemnt,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioNotaFiscalEmitidaPorCFOP = class(TFormRelatorioTEMPLATE)
    SQLNotaFiscal: TRxQuery;
    DSSQLCFOP: TDataSource;
    SQLCFOP: TRxQuery;
    DSSQLCliente: TDataSource;
    SQLCliente: TRxQuery;
    DSSQLVendedor: TDataSource;
    SQLVendedor: TRxQuery;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    GroupFiltro: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    ComboCFOP: TRxDBLookupCombo;
    ComboStatus: TComboBox;
    ComboVendedor: TRxDBLookupCombo;
    SQLCFOPCFOPA5COD: TStringField;
    Report: TCrpe;
    Label7: TLabel;
    ComboPortador: TRxDBLookupCombo;
    SQLPortador: TRxQuery;
    DSSQLPortador: TDataSource;
    SQLPortadorPORTICOD: TIntegerField;
    SQLPortadorPORTA60DESCR: TStringField;
    SQLNotaFiscalEMPRICOD: TIntegerField;
    SQLNotaFiscalCLIEA13ID: TStringField;
    SQLNotaFiscalCLIEA60RAZAOSOC: TStringField;
    SQLNotaFiscalSERIA5COD: TStringField;
    SQLNotaFiscalOPESICOD: TIntegerField;
    SQLNotaFiscalNOFIINUMERO: TIntegerField;
    SQLNotaFiscalNOFICSTATUS: TStringField;
    SQLNotaFiscalNOFIDEMIS: TDateTimeField;
    SQLNotaFiscalNOFIN2VLRNOTA: TBCDField;
    SQLNotaFiscalNOFIN2VLRSUBS: TBCDField;
    SQLNotaFiscalFORNA60RAZAOSOC: TStringField;
    SQLNotaFiscalFORNICOD: TIntegerField;
    SQLNotaFiscalEMPRESADESTINO: TIntegerField;
    SQLNotaFiscalEMPRA60RAZAOSOC: TStringField;
    SQLNotaFiscalNOFIINROTALAO: TIntegerField;
    SQLNotaFiscalCFOPA5COD: TStringField;
    SQLNotaFiscalPLRCICOD: TIntegerField;
    SQLNotaFiscalPLRCA60DESCR: TStringField;
    SQLNotaFiscalVENDICOD: TIntegerField;
    SQLNotaFiscalVENDA60NOME: TStringField;
    SQLNotaFiscalPORTICOD: TIntegerField;
    SQLNotaFiscalPORTA60DESCR: TStringField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    TblTemporariaSERIA5COD: TStringField;
    TblTemporariaOPESICOD: TIntegerField;
    TblTemporariaNOFIINUMERO: TIntegerField;
    TblTemporariaNOFICSTATUS: TStringField;
    TblTemporariaNOFIDEMIS: TDateTimeField;
    TblTemporariaNOFIN2VLRNOTA: TBCDField;
    TblTemporariaNOFIN2VLRSUBS: TBCDField;
    TblTemporariaFORNA60RAZAOSOC: TStringField;
    TblTemporariaFORNICOD: TIntegerField;
    TblTemporariaEMPRESADESTINO: TIntegerField;
    TblTemporariaEMPRA60RAZAOSOC: TStringField;
    TblTemporariaNOFIINROTALAO: TIntegerField;
    TblTemporariaCFOPA5COD: TStringField;
    TblTemporariaPLRCICOD: TIntegerField;
    TblTemporariaPLRCA60DESCR: TStringField;
    TblTemporariaVENDICOD: TIntegerField;
    TblTemporariaVENDA60NOME: TStringField;
    TblTemporariaPORTICOD: TIntegerField;
    TblTemporariaPORTA60DESCR: TStringField;
    SQLNotaFiscalNOFIN2VLRICMSFRETE: TBCDField;
    SQLNotaFiscalNOFIN2VLRICMS: TBCDField;
    TblTemporariaNOFIN2VLRICMS: TBCDField;
    TblTemporariaNOFIN2VLRICMSFRETE: TBCDField;
    SQLNotaFiscalNOFIN2BASCALCICMS: TBCDField;
    TblTemporariaNOFIN2BASCALCICMS: TBCDField;
    RadioTipo: TRadioGroup;
    CKResumido: TCheckBox;
    Label8: TLabel;
    ComboTerminal: TRxDBLookupCombo;
    SQLTerminal: TRxQuery;
    DSSQLTerminal: TDataSource;
    SQLNotaFiscalTERMICOD: TIntegerField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboPortadorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioNotaFiscalEmitidaPorCFOP: TFormRelatorioNotaFiscalEmitidaPorCFOP;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioNotaFiscalEmitidaPorCFOP.ExecutarBtnClick(
  Sender: TObject);
var DataEmissao, DataNew : TdateTime;
var NroCupomINI, NroCupomFim : String;
begin
  inherited;
  SQLNotaFiscal.Close;

  SQLNotaFiscal.MacrobyName('Empresa').Value      := SQLDeLista(ComboEmpresa, ListaEmpresas,'','NotaFiscal','') ;
  SQLNotaFiscal.MacrobyName('Empresa1').Value     := SQLDeLista(ComboEmpresa, ListaEmpresas,'','Cupom','') ;

  SQLNotaFiscal.MacroByName('CampoData').Value    := 'NotaFiscal.NOFIDEMIS';
  SQLNotaFiscal.MacroByName('CampoData1').Value   := 'Cupom.CUPODEMIS';

  Case RadioTipo.ItemIndex of
    0 : begin
          SQLNotaFiscal.MacroByName('DataInicial').Value  := '"01/01/1890"';
          SQLNotaFiscal.MacroByName('DataFinal').Value    := '"01/01/1890"';
          SQLNotaFiscal.MacroByName('DataInicial1').Value := ' "' + FormatDateTime('mm/dd/yyyy',De.Date)  + '" ';
          SQLNotaFiscal.MacroByName('DataFinal1').Value   := ' "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '" ';
        end;
    1 : begin
          SQLNotaFiscal.MacroByName('DataInicial').Value  := ' "' + FormatDateTime('mm/dd/yyyy',De.Date)  + '" ';
          SQLNotaFiscal.MacroByName('DataFinal').Value    := ' "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '" ';
          SQLNotaFiscal.MacroByName('DataInicial1').Value := '"01/01/1890"';
          SQLNotaFiscal.MacroByName('DataFinal1').Value   := '"01/01/1890"';
        end;
    2 : begin
          SQLNotaFiscal.MacroByName('DataInicial').Value  := ' "' + FormatDateTime('mm/dd/yyyy',De.Date)  + '" ';
          SQLNotaFiscal.MacroByName('DataFinal').Value    := ' "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '" ';
          SQLNotaFiscal.MacroByName('DataInicial1').Value := ' "' + FormatDateTime('mm/dd/yyyy',De.Date)  + '" ';
          SQLNotaFiscal.MacroByName('DataFinal1').Value   := ' "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '" ';
        end;
  end;

  if (ComboVendedor.KeyValue <> null) and (ComboVendedor.KeyValue > 0) then
    begin
      SQLNotaFiscal.MacroByName('Vendedor').Value  := 'NOTAFISCAL.VENDICOD = ' + IntToStr(ComboVendedor.KeyValue);
      SQLNotaFiscal.MacroByName('Vendedor1').Value := 'CUPOM.VENDICOD = ' + IntToStr(ComboVendedor.KeyValue);
    end
  else
    begin
      SQLNotaFiscal.MacroByName('Vendedor').Value  := '0=0';
      SQLNotaFiscal.MacroByName('Vendedor1').Value := '0=0';
    end;

  SQLNotaFiscal.MacroByName('Status').Value := '0=0';

  Case ComboStatus.ItemIndex of
    0 : begin
          SQLNotaFiscal.MacroByName('Status').Value  := 'NotaFiscal.NOFICSTATUS = "A"';
          SQLNotaFiscal.MacroByName('Status1').Value := 'Cupom.CUPOCSTATUS = "A"';
        end;
    1 : begin
          SQLNotaFiscal.MacroByName('Status').Value  := 'NotaFiscal.NOFICSTATUS = "E"';
          SQLNotaFiscal.MacroByName('Status1').Value := 'Cupom.CUPOCSTATUS = "A"';
        end;
    2 : begin
          SQLNotaFiscal.MacroByName('Status').Value  := 'NotaFiscal.NOFICSTATUS = "C"';
          SQLNotaFiscal.MacroByName('Status1').Value := 'Cupom.CUPOCSTATUS = "C"';
        end;
  end;

  if ComboCFOP.Value <> '' then
    begin
      SQLNotaFiscal.MacroByName('CFOP').Value  := 'NotaFiscal.CFOPA5COD = "' + ComboCFOP.Value + '"';
      SQLNotaFiscal.MacroByName('CFOP1').Value := 'Cupom.CFOPA5COD = "' + ComboCFOP.Value + '"';
    end
  else
    begin
      SQLNotaFiscal.MacroByName('CFOP').Value  := '0=0';
      SQLNotaFiscal.MacroByName('CFOP1').Value := '0=0';
    end;

  if ComboPortador.Value <> '' then
    begin
      SQLNotaFiscal.MacroByName('Portador').Value  := 'ContasReceber.PORTICOD = ' + ComboPortador.Value;
      SQLNotaFiscal.MacroByName('Portador1').Value := 'ContasReceber.PORTICOD = ' + ComboPortador.Value;
    end
  else
    begin
      SQLNotaFiscal.MacroByName('Portador').Value  := '0=0';
      SQLNotaFiscal.MacroByName('Portador1').Value := '0=0';
    end;

  if ComboTerminal.Value <> '' then
    begin
      SQLNotaFiscal.MacroByName('Terminal').Value  := '0=0';
      SQLNotaFiscal.MacroByName('Terminal1').Value := 'Cupom.TERMICOD = ' + ComboTerminal.Value;
    end
  else
    begin
      SQLNotaFiscal.MacroByName('Terminal').Value  := '0=0';
      SQLNotaFiscal.MacroByName('Terminal1').Value := '0=0';
    end;

  SQLNotaFiscal.Open;
  if (SQLNotaFiscal.IsEmpty) then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;

  BatchExec(SQLNotaFiscal,TblTemporaria);

  if not CKResumido.Checked then
    Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Notas Fiscais Cupons Emitidos Por CFOP.rpt'
  else
    Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Notas Fiscais Cupons Emitidos Por CFOP Resumido.rpt';

  Report.Formulas.Retrieve;

  Report.Formulas.Name := 'Empresa' ;
  Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"' ;

  Report.Formulas.Name := 'Emissao';
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss',Now) + '"';

  Report.Formulas.Name := 'PeriodoEmissao';
  Report.Formulas.Formula.Text := '"' + De.Text + ' até ' + Ate.Text + '"';

  Report.Formulas.Name := 'StatusFiltro';
  Report.Formulas.Formula.Text := '"' + ComboStatus.Text + '"';

  if ComboCFOP.Value <> '' then
    begin
      Report.Formulas.Name := 'CFOP';
      Report.Formulas.Formula.Text := '"' + ComboCFOP.DisplayValue + '"';
    end;

  if (ComboVendedor.KeyValue <> null) and (ComboVendedor.KeyValue > 0) then
    begin
      Report.Formulas.Name := 'Vendedor';
      Report.Formulas.Formula.Text := '"' + ComboVendedor.DisplayValue + '"';
    end;

  if ComboPortador.Value <> '' then
    begin
      Report.Formulas.Name := 'Portador';
      Report.Formulas.Formula.Text := '"' + ComboPortador.DisplayValue + '"';
    end;

  if CKResumido.Checked then
    begin
      TblTemporaria.Open;
      TblTemporaria.First;
      while not TblTemporaria.eof do
        begin
          NroCupomINI := TblTemporariaNOFIINUMERO.AsString;
          DataEmissao := TblTemporariaNOFIDEMIS.Value;
          DataNew     := TblTemporariaNOFIDEMIS.Value;
          while DataEmissao = DataNew do
            begin
              NroCupomFim := TblTemporariaNOFIINUMERO.AsString;
              TblTemporaria.Edit;
              TblTemporariaNOFIINUMERO.AsString   := NroCupomINI;
              TblTemporariaNOFIINROTALAO.AsString := NroCupomFim;
              TblTemporaria.Post;
              TblTemporaria.next;
              DataNew := TblTemporariaNOFIDEMIS.Value;
              if TblTemporaria.Eof then DataNew := 0;
            end;
        end;
      TblTemporaria.Close;
    end;
  Report.Formulas.Send;
  Report.ReportTitle       := 'Relatório de Notas Fiscais / Cupons Emitidos Por CFOP' ;
  Report.WindowStyle.Title := 'Relatório de Notas Fiscais / Cupons Emitidos Por CFOP' ;
  Report.Execute;
end;

procedure TFormRelatorioNotaFiscalEmitidaPorCFOP.FormCreate(
  Sender: TObject);
begin
  inherited;
  SQLVendedor.Open;
  SQLCFOP.Open;
  SQLPortador.Open;
  SQLTerminal.Open;
end;

procedure TFormRelatorioNotaFiscalEmitidaPorCFOP.ComboPortadorKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

end.
