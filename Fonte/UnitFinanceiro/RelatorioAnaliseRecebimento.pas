unit RelatorioAnaliseRecebimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, DBTables, Placemnt, DB, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioAnaliseRecebimento = class(TFormRelatorioTEMPLATE)
    SQLRecebimento: TRxQuery;
    SQLRecebimentoRECEDRECTO: TDateTimeField;
    SQLRecebimentoRECEN2VLRRECTO: TBCDField;
    SQLRecebimentoRECEN2VLRJURO: TBCDField;
    SQLRecebimentoRECEN2VLRMULTA: TBCDField;
    SQLRecebimentoRECEN2DESC: TBCDField;
    SQLRecebimentoRECEN2MULTACOBR: TBCDField;
    SQLRecebimentoCTRCDVENC: TDateTimeField;
    SQLRecebimentoCTRCDEMIS: TDateTimeField;
    SQLRecebimentoCTRCN2VLR: TBCDField;
    SQLRecebimentoCTRCN2TXJURO: TBCDField;
    SQLRecebimentoCTRCN2TXMULTA: TBCDField;
    SQLRecebimentoCTRCA30NRODUPLICBANCO: TStringField;
    SQLRecebimentoCLIEA60RAZAOSOC: TStringField;
    SQLRecebimentoCUPOA13ID: TStringField;
    SQLRecebimentoCTRCINROPARC: TIntegerField;
    SQLCliente: TRxQuery;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    GroupBox2: TGroupBox;
    ComboCliente: TRxDBLookupCombo;
    Report: TCrpe;
    DSSQLCliente: TDataSource;
    CheckResumo: TCheckBox;
    CheckPeriodo: TCheckBox;
    CheckDiferenca: TCheckBox;
    GroupBox3: TGroupBox;
    ComboTipoLiq: TRxDBLookupCombo;
    SQLTipoLiquidacao: TRxQuery;
    DSSQLTipoLiquidacao: TDataSource;
    TblTemporariaRECEDRECTO: TDateTimeField;
    TblTemporariaRECEN2VLRRECTO: TBCDField;
    TblTemporariaRECEN2VLRJURO: TBCDField;
    TblTemporariaRECEN2VLRMULTA: TBCDField;
    TblTemporariaRECEN2DESC: TBCDField;
    TblTemporariaRECEN2MULTACOBR: TBCDField;
    TblTemporariaCTRCDVENC: TDateTimeField;
    TblTemporariaCTRCDEMIS: TDateTimeField;
    TblTemporariaCTRCN2VLR: TBCDField;
    TblTemporariaCTRCN2TXJURO: TBCDField;
    TblTemporariaCTRCN2TXMULTA: TBCDField;
    TblTemporariaCTRCA30NRODUPLICBANCO: TStringField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    TblTemporariaCUPOA13ID: TStringField;
    TblTemporariaCTRCINROPARC: TIntegerField;
    TblTemporariaMultaCalculada: TFloatField;
    TblTemporariaCobrancaCalculada: TFloatField;
    TblTemporariaDescontoCalculado: TFloatField;
    TblTemporariaJuroCalculado: TFloatField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioAnaliseRecebimento: TFormRelatorioAnaliseRecebimento;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioAnaliseRecebimento.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLRecebimento.Close;
  if not CheckPeriodo.Checked then
    SQLRecebimento.MacroByName('MFiltro').AsString    := 'RECEBIMENTO.RECEDRECTO >= "' + FormatDateTime('mm/dd/yyyy',de.Date) + '" AND ' +
                                                         'RECEBIMENTO.RECEDRECTO <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"'
  else
    begin
      if ComboCliente.Value = '' then
        if not Pergunta('NAO','Você selecionou "Desconsiderar Período" e "Todos os Clientes"' + #13 +
                        'Esse relatório pode demorar vários minutos. Deseja continuar?') then
          Abort;
    end;

  if ComboCliente.Value <> '' then
    SQLRecebimento.MacroByName('MCliente').AsString := 'CONTASRECEBER.CLIEA13ID = "' + ComboCliente.Value + '"'
  else
    SQLRecebimento.MacroByName('MCliente').AsString := '0=0';

  if ComboTipoLiq.Value <> '' then
    SQLRecebimento.MacroByName('MTipoLiq').AsString := 'RECEBIMENTO.TPLQICOD = ' + ComboTipoLiq.Value
  else
    SQLRecebimento.MacroByName('MTipoLiq').AsString := '0=0';

  SQLRecebimento.Open;

  if not SQLRecebimento.IsEmpty then
    begin
      if not TblTemporaria.Active then TblTemporaria.Open;
      Progresso.Min := 0;
      Progresso.Max := SQLRecebimento.RecordCount;
      Progresso.Position := 0;
      TblTemporaria.First;
      while not SQLRecebimento.Eof do
        begin
          TblTemporaria.Append;
          TblTemporariaCLIEA60RAZAOSOC.Value        := SQLRecebimentoCLIEA60RAZAOSOC.Value;
          TblTemporariaCTRCA30NRODUPLICBANCO.Value  := SQLRecebimentoCTRCA30NRODUPLICBANCO.Value;
          TblTemporariaCTRCDEMIS.Value              := SQLRecebimentoCTRCDEMIS.Value;
          TblTemporariaCTRCDVENC.Value              := SQLRecebimentoCTRCDVENC.Value;
          TblTemporariaCTRCINROPARC.Value           := SQLRecebimentoCTRCINROPARC.Value;
          TblTemporariaCTRCN2TXJURO.Value           := SQLRecebimentoCTRCN2TXJURO.Value;
          TblTemporariaCTRCN2TXMULTA.Value          := SQLRecebimentoCTRCN2TXMULTA.Value;
          TblTemporariaCTRCN2VLR.Value              := SQLRecebimentoCTRCN2VLR.Value;
          TblTemporariaCUPOA13ID.Value              := SQLRecebimentoCUPOA13ID.Value;
          TblTemporariaRECEDRECTO.Value             := SQLRecebimentoRECEDRECTO.Value;
          TblTemporariaRECEN2DESC.Value             := SQLRecebimentoRECEN2DESC.Value;
          TblTemporariaRECEN2MULTACOBR.Value        := SQLRecebimentoRECEN2MULTACOBR.Value;
          TblTemporariaRECEN2VLRJURO.Value          := SQLRecebimentoRECEN2VLRJURO.Value;
          TblTemporariaRECEN2VLRMULTA.Value         := SQLRecebimentoRECEN2VLRMULTA.Value;
          TblTemporariaRECEN2VLRRECTO.Value         := SQLRecebimentoRECEN2VLRRECTO.Value;

          TblTemporariaJuroCalculado.AsFloat := CalculaJuroMultaDesc(TblTemporariaCTRCN2VLR.AsFloat,
                                                                     dm.SQLConfigCrediarioCFCRN2PERCJURATRAS.AsFloat,
                                                                     TblTemporariaCTRCDVENC.AsDateTime,
                                                                     TblTemporariaRECEDRECTO.AsDateTime,
                                                                     TblTemporariaCTRCDVENC.AsDateTime,
                                                                     dm.SQLConfigCrediarioCFCRINRODIASTOLJUR.AsInteger,
                                                                     'JURO',
                                                                     TblTemporariaCUPOA13ID.AsString,
                                                                     TblTemporariaCTRCINROPARC.AsString);

          TblTemporariaMultaCalculada.AsFloat := CalculaJuroMultaDesc(TblTemporariaCTRCN2VLR.AsFloat,
                                                                      dm.SQLConfigCrediarioCFCRN2PERCMULATRAS.AsFloat,
                                                                      TblTemporariaCTRCDVENC.AsDateTime,
                                                                      TblTemporariaRECEDRECTO.AsDateTime,
                                                                      0,
                                                                      dm.SQLConfigCrediarioCFCRINRODIASTOLMUL.AsInteger,
                                                                      'MULTA',
                                                                      TblTemporariaCUPOA13ID.AsString,
                                                                      TblTemporariaCTRCINROPARC.AsString);

          TblTemporariaCobrancaCalculada.AsFloat := CalculaJuroMultaDesc(TblTemporariaCTRCN2VLR.AsFloat,
                                                                         dm.SQLConfigCrediarioCFCRN2PERCTAXACOBR.AsFloat,
                                                                         TblTemporariaCTRCDVENC.AsDateTime,
                                                                         TblTemporariaRECEDRECTO.AsDateTime,
                                                                         0,
                                                                         0,
                                                                         'TaxaCobranca',
                                                                         TblTemporariaCUPOA13ID.AsString,
                                                                         TblTemporariaCTRCINROPARC.AsString);

          TblTemporariaDescontoCalculado.AsFloat := CalculaJuroMultaDesc(TblTemporariaCTRCN2VLR.AsFloat,
                                                                         dm.SQLConfigCrediarioCFCRN2PERCADIANT.AsFloat,
                                                                         TblTemporariaCTRCDVENC.AsDateTime,
                                                                         TblTemporariaRECEDRECTO.AsDateTime,
                                                                         0,
                                                                         dm.SQLConfigCrediarioCFCRINRODIASADIANT.AsInteger,
                                                                         'Desconto',
                                                                         TblTemporariaCUPOA13ID.AsString,
                                                                         TblTemporariaCTRCINROPARC.AsString);

          TblTemporaria.Post;

          if CheckDiferenca.Checked then
            begin
              if (TblTemporariaRECEN2VLRRECTO.AsFloat  = TblTemporariaCTRCN2VLR.AsFloat) and
                 (TblTemporariaRECEN2VLRJURO.AsFloat   = TblTemporariaJuroCalculado.AsFloat) and
                 (TblTemporariaRECEN2VLRMULTA.AsFloat  = TblTemporariaMultaCalculada.AsFloat) and
                 (TblTemporariaRECEN2DESC.AsFloat      = TblTemporariaDescontoCalculado.AsFloat) and
                 (TblTemporariaRECEN2MULTACOBR.AsFloat = TblTemporariaCobrancaCalculada.AsFloat) then
                TblTemporaria.Delete;
            end;

          SQLRecebimento.Next;
          Progresso.Position := Progresso.Position + 1;
          Progresso.Update;
          Application.ProcessMessages;
        end;
      TblTemporaria.close;
      Progresso.Position := 0;

      Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Analise de Recebimentos.rpt';
      Report.ReportTitle       := 'Relatório Análise de Recebimentos';
      Report.WindowStyle.Title := 'Relatório Análise de Recebimentos';

     //SETAR FORMULAS REPORT
      Report.Formulas.Retrieve;
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Empresa';
      Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"';
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Emissao';
      Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"';
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'PeriodoEmissao';
      Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                            FormatDateTime('dd/mm/yyyy', Ate.Date) + '"';
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Cliente';
      Report.Formulas.Formula.Text := '"' + ComboCliente.Text + '"';

      if CheckResumo.Checked then
        begin
          Report.SectionFormat.Retrieve;
          Report.SectionFormat.Section  := 'D';
          Report.SectionFormat.Suppress := Ctrue;
        end
      else
        begin
          Report.SectionFormat.Retrieve;
          Report.SectionFormat.Section  := 'D';
          Report.SectionFormat.Suppress := cFalse;
        end;

      Report.Execute;
    end
  else
    Informa('Nenhum registro foi encontrado!');
end;

procedure TFormRelatorioAnaliseRecebimento.FormCreate(Sender: TObject);
begin
  inherited;
  SQLCliente.Open;
  SQLTipoLiquidacao.Open;
end;

end.
