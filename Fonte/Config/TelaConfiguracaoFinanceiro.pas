unit TelaConfiguracaoFinanceiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, DB, DBTables, Buttons, jpeg, ExtCtrls,
  StdCtrls, DBCtrls, RxLookup, Mask, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaConfigFinanceiro = class(TFormTelaGeralTEMPLATE)
    SQLConfigFinanceiro: TQuery;
    DSSQLConfigFinanceiro: TDataSource;
    SQLConfigFinanceiroOPTEICODPAGAR: TIntegerField;
    SQLConfigFinanceiroOPBCICODPAGAR: TIntegerField;
    SQLConfigFinanceiroNUMEICODPAGAR: TIntegerField;
    SQLConfigFinanceiroCTCRICODPAGAR: TIntegerField;
    SQLConfigFinanceiroCGFIA254HISTPAGAR: TStringField;
    SQLConfigFinanceiroOPTEICODRECEBER: TIntegerField;
    SQLConfigFinanceiroOPBCICODRECEBER: TIntegerField;
    SQLConfigFinanceiroNUMEICODRECEBER: TIntegerField;
    SQLConfigFinanceiroCGFIA254HISTRECEBE: TStringField;
    SQLConfigFinanceiroALINICODRECEBER: TIntegerField;
    SQLConfigFinanceiroPORTICODRECEBER: TIntegerField;
    SQLConfigFinanceiroCGFIUSATESOURARIA: TStringField;
    GroupBox1: TGroupBox;
    ComboOperacaoTesourariaPagar: TRxDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    ComboOperacaoBancoPagar: TRxDBLookupCombo;
    Label3: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label4: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    SQLOperacaoTesouraria: TQuery;
    SQLOperacaoBanco: TQuery;
    SQLNumerario: TQuery;
    SQLContaCorrente: TQuery;
    DSSQLOperacaoTesouraria: TDataSource;
    DSSQLOperacaoBanco: TDataSource;
    DSSQLNumerario: TDataSource;
    DSSQLContaCorrente: TDataSource;
    SQLContaCorrenteCTCRICOD: TIntegerField;
    SQLContaCorrenteBANCA5COD: TStringField;
    SQLContaCorrenteCTCRA15AGENCIA: TStringField;
    SQLContaCorrenteCTCRA15NUMERO: TStringField;
    SQLContaCorrenteCTCRA60TITULAR: TStringField;
    SQLContaCorrenteCTCRDABERTURA: TDateTimeField;
    SQLContaCorrenteCTCRN2LIMITE: TFloatField;
    SQLContaCorrenteCTCRN2SALDOATUAL: TFloatField;
    SQLContaCorrenteTMBCICOD: TIntegerField;
    SQLContaCorrentePENDENTE: TStringField;
    SQLContaCorrenteREGISTRO: TDateTimeField;
    SQLNumerarioNUMEICOD: TIntegerField;
    SQLNumerarioNUMEA30DESCR: TStringField;
    SQLNumerarioNUMECVISTAPRAZO: TStringField;
    SQLNumerarioNUMECATIVO: TStringField;
    SQLNumerarioNUMEA5TIPO: TStringField;
    SQLNumerarioOPCXICOD: TIntegerField;
    SQLNumerarioPENDENTE: TStringField;
    SQLNumerarioREGISTRO: TDateTimeField;
    SQLOperacaoTesourariaOPTEICOD: TIntegerField;
    SQLOperacaoTesourariaOPTEA60DESCR: TStringField;
    SQLOperacaoTesourariaOPTECDEBCRED: TStringField;
    SQLOperacaoTesourariaPENDENTE: TStringField;
    SQLOperacaoTesourariaREGISTRO: TDateTimeField;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ComboOperacaoTesourariaReceber: TRxDBLookupCombo;
    ComboOperacaoBancoReceber: TRxDBLookupCombo;
    RxDBLookupCombo7: TRxDBLookupCombo;
    RxDBLookupCombo8: TRxDBLookupCombo;
    DSSQLPortador: TDataSource;
    SQLPortador: TQuery;
    SQLAlinea: TQuery;
    DSSQLAlinea: TDataSource;
    Label9: TLabel;
    RxDBLookupCombo9: TRxDBLookupCombo;
    DBCheckBox1: TDBCheckBox;
    SQLOperacaoBancoOPBCICOD: TIntegerField;
    SQLOperacaoBancoOPBCA60DESCR: TStringField;
    SQLOperacaoBancoOPBCCTIPO: TStringField;
    SQLOperacaoBancoOPBCCALTSALDO: TStringField;
    SQLOperacaoBancoPENDENTE: TStringField;
    SQLOperacaoBancoREGISTRO: TDateTimeField;
    SQLConfigFinanceiroALINICODPAGAR: TIntegerField;
    Label10: TLabel;
    RxDBLookupCombo10: TRxDBLookupCombo;
    DBCheckBox2: TDBCheckBox;
    SQLConfigFinanceiroCGFICINFPLCTBXSIMP: TStringField;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    Label12: TLabel;
    DBEdit2: TDBEdit;
    SQLConfigFinanceiroOPBCICODESTORNOCRD: TIntegerField;
    SQLConfigFinanceiroOPBCICODESTORNODEB: TIntegerField;
    SQLConfigFinanceiroOPTEICODESTORNOCRD: TIntegerField;
    SQLConfigFinanceiroOPTEICODESTORNODEB: TIntegerField;
    GroupBox3: TGroupBox;
    Label13: TLabel;
    DblOpeEstornoDeb: TRxDBLookupCombo;
    Label14: TLabel;
    DblOpeEstornoCred: TRxDBLookupCombo;
    Label16: TLabel;
    DblOpeTesouCred: TRxDBLookupCombo;
    Label15: TLabel;
    DblOpeTesouDeb: TRxDBLookupCombo;
    BotaoGravar: TSpeedButton;
    SQLConfigFinanceiroCONTROLA_CONS_CONTAS_PAGAR: TStringField;
    DBCheckBox3: TDBCheckBox;
    GroupBox4: TGroupBox;
    Label20: TLabel;
    DblOpeSangria: TRxDBLookupCombo;
    SQLConfigFinanceiroOPE_BANCO_SANGRIA: TIntegerField;
    procedure DSSQLConfigFinanceiroDataChange(Sender: TObject;
      Field: TField);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure ComboOperacaoTesourariaPagarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BotaoGravarClick(Sender: TObject);
    procedure ComboOperacaoTesourariaPagarExit(Sender: TObject);
    procedure ComboOperacaoTesourariaReceberExit(Sender: TObject);
    procedure ComboOperacaoBancoPagarExit(Sender: TObject);
    procedure ComboOperacaoBancoReceberExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DblOpeEstornoDebChange(Sender: TObject);
    procedure DblOpeEstornoCredChange(Sender: TObject);
    procedure DblOpeTesouDebChange(Sender: TObject);
    procedure DblOpeTesouCredChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConfigFinanceiro: TFormTelaConfigFinanceiro;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormTelaConfigFinanceiro.DSSQLConfigFinanceiroDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  BotaoGravar.Enabled := DSSQLConfigFinanceiro.DataSet.State in DsEditModes ;
end;

procedure TFormTelaConfigFinanceiro.BtnFecharTelaClick(Sender: TObject);
begin
  inherited;
  if SQLConfigFinanceiro.State in DsEditModes then
    SQLConfigFinanceiro.Post;
end;

procedure TFormTelaConfigFinanceiro.ComboOperacaoTesourariaPagarKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

procedure TFormTelaConfigFinanceiro.BotaoGravarClick(Sender: TObject);
begin
  inherited;
  BotaoGravar.Enabled := False;
end;

procedure TFormTelaConfigFinanceiro.ComboOperacaoTesourariaPagarExit(Sender: TObject);
begin
  inherited;
  if ComboOperacaoTesourariaPagar.Value <> '' then
    if SQLOperacaoTesourariaOPTECDEBCRED.AsString <> 'D' then
      begin
        Informa('Esta operação não é de Débito, favor selecionar outra operação!');
        ComboOperacaoTesourariaPagar.SetFocus;
        Exit;
      end;
end;

procedure TFormTelaConfigFinanceiro.ComboOperacaoTesourariaReceberExit(Sender: TObject);
begin
  inherited;
  if ComboOperacaoTesourariaReceber.Value <> '' then
    if SQLOperacaoTesourariaOPTECDEBCRED.AsString <> 'C' then
      begin
        Informa('Esta operação de tesouraria não é de Crédito, favor selecionar outra operação!');
        ComboOperacaoTesourariaReceber.SetFocus;
        Exit;
      end;
end;

procedure TFormTelaConfigFinanceiro.ComboOperacaoBancoPagarExit(
  Sender: TObject);
begin
  inherited;
  if ComboOperacaoBancoPagar.Value <> '' then
    if SQLOperacaoBancoOPBCCTIPO.AsString <> 'D' then
      begin
        Informa('Esta operação bancária não é de Débito, favor selecionar outra operação!');
        ComboOperacaoBancoPagar.SetFocus;
        Exit;
      end;
end;

procedure TFormTelaConfigFinanceiro.ComboOperacaoBancoReceberExit(
  Sender: TObject);
begin
  inherited;
  if ComboOperacaoBancoReceber.Value <> '' then
    if SQLOperacaoBancoOPBCCTIPO.AsString <> 'C' then
      begin
        Informa('Esta operação bancária não é de Crédito, favor selecionar outra operação!');
        ComboOperacaoBancoReceber.SetFocus;
        Exit;
      end;
end;

procedure TFormTelaConfigFinanceiro.FormCreate(Sender: TObject);
begin
  inherited;
  SQLOperacaoBanco.Open;
  SQLConfigFinanceiro.Open;
  SQLContaCorrente.Open;
  SQLNumerario.Open;
  SQLPortador.Open;
  SQLAlinea.Open;
  SQLOperacaoTesouraria.Open;
end;

procedure TFormTelaConfigFinanceiro.DblOpeEstornoDebChange(
  Sender: TObject);
begin
  inherited;
  if SQLOperacaoBanco.Locate(SQLOperacaoBancoOPBCICOD.FieldName, DblOpeEstornoDeb.KeyValue, [locaseinsensitive]) then
    if SQLOperacaoBancoOPBCCTIPO.AsString <> 'D' then
      begin
        Informa('Informe uma Operação de Débito para este item.');
        SQLConfigFinanceiroOPBCICODESTORNODEB.FocusControl;
        DblOpeEstornoDeb.KeyValue := '';
        Abort;
      end;
end;

procedure TFormTelaConfigFinanceiro.DblOpeEstornoCredChange(
  Sender: TObject);
begin
  inherited;
  if SQLOperacaoBanco.Locate(SQLOperacaoBancoOPBCICOD.FieldName, DblOpeEstornoCred.KeyValue, [loCaseInsensitive]) then
    if SQLOperacaoBancoOPBCCTIPO.AsString <> 'C' then
      begin
        Informa('Informe uma Operação de Crédito para este item.');
        SQLConfigFinanceiroOPBCICODESTORNOCRD.FocusControl;
        DblOpeEstornoCred.KeyValue := '';
        Abort;
      end;
end;

procedure TFormTelaConfigFinanceiro.DblOpeTesouDebChange(
  Sender: TObject);
begin
  inherited;
  if SQLOperacaoTesouraria.Locate(SQLOperacaoTesourariaOPTEICOD.FieldName, DblOpeTesouDeb.KeyValue, [locaseinsensitive]) then
    if SQLOperacaoTesourariaOPTECDEBCRED.AsString <> 'D' then
      begin
        Informa('Informe uma Operação de Débito para este item.');
        SQLConfigFinanceiroOPTEICODESTORNODEB.FocusControl;
        DblOpeTesouDeb.KeyValue := '';
        Abort;
      end;
end;

procedure TFormTelaConfigFinanceiro.DblOpeTesouCredChange(
  Sender: TObject);
begin
  inherited;
  if SQLOperacaoTesouraria.Locate(SQLOperacaoTesourariaOPTEICOD.FieldName, DblOpeTesouCred.KeyValue, [locaseinsensitive]) then
    if SQLOperacaoTesourariaOPTECDEBCRED.AsString <> 'C' then
      begin
        Informa('Informe uma Operação de Crédito para este item.');
        SQLConfigFinanceiroOPTEICODESTORNOCRD.FocusControl;
        DblOpeTesouCred.KeyValue := '';
        Abort;
      end;
end;

end.
