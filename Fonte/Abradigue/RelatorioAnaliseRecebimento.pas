unit RelatorioAnaliseRecebimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, DBTables, Placemnt, DB, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, UCrpe32;

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
        if not Pergunta('NAO','Voc� selecionou "Desconsiderar Per�odo" e "Todos os Clientes"' + #13 +
                        'Esse relat�rio pode demorar v�rios minutos. Deseja continuar?') then
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
      BatchExec(SQLRecebimento,TblTemporaria);
      TblTemporaria.Open;
      Progresso.Min := 0;
      Progresso.Max := TblTemporaria.RecordCount;
      Progresso.Position := 0;
      TblTemporaria.First;
      while not TblTemporaria.Eof do
        begin
          TblTemporaria.Edit;
          TblTemporariaJuroCalculado.AsFloat := CalculaJuroMultaDesc(TblTemporariaCTRCN2VLR.AsFloat,
                                                                     dm.SQLConfigCrediarioCFCRN2PERCJURATRAS.AsFloat,
                                                                     TblTemporariaCTRCDVENC.AsDateTime,
                                                                     TblTemporariaRECEDRECTO.AsDateTime,
                                                                     dm.SQLConfigCrediarioCFCRINRODIASTOLJUR.AsInteger,
                                                                     'JURO',
                                                                     TblTemporariaCUPOA13ID.AsString,
                                                                     TblTemporariaCTRCINROPARC.AsString);

          TblTemporariaMultaCalculada.AsFloat := CalculaJuroMultaDesc(TblTemporariaCTRCN2VLR.AsFloat,
                                                                      dm.SQLConfigCrediarioCFCRN2PERCMULATRAS.AsFloat,
                                                                      TblTemporariaCTRCDVENC.AsDateTime,
                                                                      TblTemporariaRECEDRECTO.AsDateTime,
                                                                      dm.SQLConfigCrediarioCFCRINRODIASTOLMUL.AsInteger,
                                                                      'MULTA',
                                                                      TblTemporariaCUPOA13ID.AsString,
                                                                      TblTemporariaCTRCINROPARC.AsString);

          TblTemporariaCobrancaCalculada.AsFloat := CalculaJuroMultaDesc(TblTemporariaCTRCN2VLR.AsFloat,
                                                                         dm.SQLConfigCrediarioCFCRN2PERCTAXACOBR.AsFloat,
                                                                         TblTemporariaCTRCDVENC.AsDateTime,
                                                                         TblTemporariaRECEDRECTO.AsDateTime,
                                                                         0,
                                                                         'TaxaCobranca',
                                                                         TblTemporariaCUPOA13ID.AsString,
                                                                         TblTemporariaCTRCINROPARC.AsString);

          TblTemporariaDescontoCalculado.AsFloat := CalculaJuroMultaDesc(TblTemporariaCTRCN2VLR.AsFloat,
                                                                         dm.SQLConfigCrediarioCFCRN2PERCADIANT.AsFloat,
                                                                         TblTemporariaCTRCDVENC.AsDateTime,
                                                                         TblTemporariaRECEDRECTO.AsDateTime,
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
                TblTemporaria.Delete
              else
                TblTemporaria.Next;
            end
          else
            TblTemporaria.Next;
          Progresso.Position := Progresso.Position + 1;
          Progresso.Update;
          Application.ProcessMessages;
        end;
      Progresso.Position := 0;

      Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Analise de Recebimentos.rpt';
      Report.ReportTitle       := 'Relat�rio An�lise de Recebimentos';
      Report.WindowStyle.Title := 'Relat�rio An�lise de Recebimentos';

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
      Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' at� ' +
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
