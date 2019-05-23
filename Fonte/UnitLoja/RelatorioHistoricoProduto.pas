unit RelatorioHistoricoProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, StdCtrls, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, RxQuery, UCrpe32;

type
  TFormRelatorioHistoricoProduto = class(TFormRelatorioTEMPLATE)
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaDOCUMENTO: TStringField;
    TblTemporariaPRODA60DESCR: TStringField;
    TblTemporariaPRODA60REFER: TStringField;
    TblTemporariaCORA30DESCR: TStringField;
    TblTemporariaGRTMA5DESCR: TStringField;
    TblTemporariaOPESA60DESCR: TStringField;
    SQLCupom: TRxQuery;
    SQLNotaFiscal: TRxQuery;
    SQLNotaCompra: TRxQuery;
    SQLMovimentoDiverso: TRxQuery;
    GroupBox2: TGroupBox;
    SQLProduto: TRxQuery;
    DSSQLProduto: TDataSource;
    ComboProduto: TRxDBLookupCombo;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    TblTemporariaDataMov: TDateField;
    SQLCupomCUPOA13ID: TStringField;
    SQLCupomPRODICOD: TIntegerField;
    SQLCupomCPITN3QTD: TBCDField;
    SQLCupomCUPODEMIS: TDateTimeField;
    SQLCupomOPESA60DESCR: TStringField;
    SQLCupomOPESCENTRADASAIDA: TStringField;
    SQLCupomPRODA60DESCR: TStringField;
    SQLCupomPRODIAGRUPGRADE: TIntegerField;
    SQLCupomPRODA60REFER: TStringField;
    SQLCupomCORA30DESCR: TStringField;
    SQLCupomGRTMA5DESCR: TStringField;
    SQLNotaFiscalNOFIA13ID: TStringField;
    SQLNotaFiscalPRODICOD: TIntegerField;
    SQLNotaFiscalNFITN3QUANT: TBCDField;
    SQLNotaFiscalNOFIDEMIS: TDateTimeField;
    SQLNotaFiscalOPESA60DESCR: TStringField;
    SQLNotaFiscalOPESCENTRADASAIDA: TStringField;
    SQLNotaFiscalPRODA60DESCR: TStringField;
    SQLNotaFiscalPRODIAGRUPGRADE: TIntegerField;
    SQLNotaFiscalPRODA60REFER: TStringField;
    SQLNotaFiscalCORA30DESCR: TStringField;
    SQLNotaFiscalGRTMA5DESCR: TStringField;
    SQLNotaCompraNOCPA13ID: TStringField;
    SQLNotaCompraPRODICOD: TIntegerField;
    SQLNotaCompraNOCIN3QTDEMBAL: TBCDField;
    SQLNotaCompraNOCPDRECEBIMENTO: TDateTimeField;
    SQLNotaCompraOPESA60DESCR: TStringField;
    SQLNotaCompraOPESCENTRADASAIDA: TStringField;
    SQLNotaCompraPRODA60DESCR: TStringField;
    SQLNotaCompraPRODIAGRUPGRADE: TIntegerField;
    SQLNotaCompraPRODA60REFER: TStringField;
    SQLNotaCompraCORA30DESCR: TStringField;
    SQLNotaCompraGRTMA5DESCR: TStringField;
    SQLMovimentoDiversoMOVDA13ID: TStringField;
    SQLMovimentoDiversoPRODICOD: TIntegerField;
    SQLMovimentoDiversoMVDIN3QTD: TBCDField;
    SQLMovimentoDiversoMOVDDMOVIMENTO: TDateTimeField;
    SQLMovimentoDiversoOPESA60DESCR: TStringField;
    SQLMovimentoDiversoOPESCENTRADASAIDA: TStringField;
    SQLMovimentoDiversoPRODA60DESCR: TStringField;
    SQLMovimentoDiversoPRODIAGRUPGRADE: TIntegerField;
    SQLMovimentoDiversoPRODA60REFER: TStringField;
    SQLMovimentoDiversoCORA30DESCR: TStringField;
    SQLMovimentoDiversoGRTMA5DESCR: TStringField;
    SQLCupomEMPRICOD: TIntegerField;
    SQLNotaFiscalEMPRICOD: TIntegerField;
    SQLNotaCompraEMPRICOD: TIntegerField;
    SQLMovimentoDiversoEMPRICOD: TIntegerField;
    SQLCupomCUPOINRO: TIntegerField;
    TblTemporariaEntradaSaida: TStringField;
    LabelInfo: TLabel;
    SQLNotaFiscalNOFIINUMERO: TIntegerField;
    SQLNotaCompraNOCPA30NRO: TStringField;
    TblTemporariaQtde: TFloatField;
    SQLProdutoPRODIAGRUPGRADE: TIntegerField;
    TblTemporariaLOTEA30NRO: TStringField;
    SQLNotaFiscalLOTEA30NRO: TStringField;
    SQLNotaCompraLOTEA30NRO: TStringField;
    SQLMovimentoDiversoLOTEA30NRO: TStringField;
    SQLSaldo: TRxQuery;
    Report: TCrpe;
    TblTemporariaSALDOINICIAL: TFloatField;
    SQLProdutoPRODA60REFER: TStringField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioHistoricoProduto: TFormRelatorioHistoricoProduto;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioHistoricoProduto.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  if ComboProduto.Value = '' then
    begin
      Informa('Por favor selecione um produto!');
      ComboProduto.SetFocus;
      Exit;
    end;

  if (ComboEmpresa.Value = '') or (ComboEmpresa.Text = 'Todas') then
    begin
      Informa('Por favor selecione uma empresa!');
      ComboEmpresa.SetFocus;
      Exit;
    end;
  SQLCupom.Close;
  SQLNotaFiscal.Close;
  SQLNotaCompra.Close;
  SQLMovimentoDiverso.Close;

  SQLCupom.ParamByName('Empresa').AsString      := ComboEmpresa.Value;
  SQLCupom.MacroByName('Produto').AsString      := 'PRODUTO.PRODIAGRUPGRADE = '  + ComboProduto.Value;
  SQLCupom.MacroByName('Data').AsString         := 'CUPOM.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy',De.Date) + '" AND ' +
                                                   'CUPOM.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';

  SQLNotaFiscal.ParamByName('Empresa').AsString := ComboEmpresa.Value;
  SQLNotaFiscal.MacroByName('Produto').AsString := 'PRODUTO.PRODIAGRUPGRADE = '  + ComboProduto.Value;
  SQLNotaFiscal.MacroByName('Data').AsString    := 'NOTAFISCAL.NOFIDEMIS >= "' + FormatDateTime('mm/dd/yyyy',De.Date) + '" AND ' +
                                                   'NOTAFISCAL.NOFIDEMIS <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';

  SQLNotaCompra.ParamByName('Empresa').AsString := ComboEmpresa.Value;
  SQLNotaCompra.MacroByName('Produto').AsString := 'PRODUTO.PRODIAGRUPGRADE = '  + ComboProduto.Value;
  SQLNotaCompra.MacroByName('Data').AsString    := 'NOTACOMPRA.NOCPDRECEBIMENTO >= "' + FormatDateTime('mm/dd/yyyy',De.Date) + '" AND ' +
                                                   'NOTACOMPRA.NOCPDRECEBIMENTO <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';

  SQLMovimentoDiverso.ParamByName('Empresa').AsString := ComboEmpresa.Value;
  SQLMovimentoDiverso.MacroByName('Produto').AsString := 'PRODUTO.PRODIAGRUPGRADE = '  + ComboProduto.Value;
  SQLMovimentoDiverso.MacroByName('Data').AsString    := 'MOVIMENTODIVERSO.MOVDDMOVIMENTO >= "' + FormatDateTime('mm/dd/yyyy',De.Date) + '" AND ' +
                                                         'MOVIMENTODIVERSO.MOVDDMOVIMENTO <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';
  SQLCupom.Open;
  SQLNotaFiscal.Open;
  SQLNotaCompra.Open;
  SQLMovimentoDiverso.Open;
  SQLCupom.First;
  SQLNotaFiscal.First;
  SQLNotaCompra.First;
  SQLMovimentoDiverso.First;
  // RETORNA SALDO DE ESTOQUE;
  SQLSaldo.Close;
  SQLSaldo.MacroByName('DataInicial').AsString := 'MVESDMOV < "' + FormatDateTime('mm/dd/yyyy',De.Date) + '"';
  SQLSaldo.ParamByName('PRODUTO').AsString := ComboProduto.Value;
  SQLSaldo.ParamByName('EMPRESA').AsString := ComboEmpresa.Value;
  SQLSaldo.Open;
  if not SQLSaldo.IsEmpty then
    begin
      TblTemporaria.Append;
      TblTemporariaEMPRICOD.AsString     := ComboEmpresa.Value;
      TblTemporariaPRODA60DESCR.AsString := SQLProdutoPRODA60DESCR.AsString;
      TblTemporariaPRODA60REFER.AsString := SQLProdutoPRODA60REFER.AsString;
      TblTemporariaEntradaSaida.AsString := 'I';
      TblTemporariaCORA30DESCR.AsString  := 'SALDO INICIAL';
      TblTemporariaGRTMA5DESCR.AsString  := '>>>>';
      TblTemporariaOPESA60DESCR.AsString := 'SALDO ANTERIOR AO DIA ' + FormatDateTime('dd/mm/yyyy',De.Date);
      TblTemporariaQtde.AsFloat          := SQLSaldo.FieldByName('SALDO').AsFloat;
      TblTemporariaSALDOINICIAL.AsFloat  := 0; 
      TblTemporaria.Post;
    end;
  LabelInfo.Caption := 'Verificando Cupons...';
  LabelInfo.Update;
  Progresso.Min := 0;
  Progresso.Max := SQLCupom.RecordCount;
  Progresso.Position := 0;
  if not TblTemporaria.Active then TblTemporaria.Open;
  while not SQLCupom.Eof do
    begin
      TblTemporaria.Append;
      TblTemporariaEMPRICOD.AsInteger := SQLCupomEMPRICOD.AsInteger;
      TblTemporariaPRODICOD.AsInteger := SQLCupomPRODICOD.AsInteger;
      if (SQLCupomOPESCENTRADASAIDA.AsString = 'E') or (SQLCupomOPESCENTRADASAIDA.AsString = 'D') then
        TblTemporariaQtde.AsFloat       := SQLCupomCPITN3QTD.AsFloat
      else
        TblTemporariaQtde.AsFloat       := - SQLCupomCPITN3QTD.AsFloat;
      if SQLCupomCUPOINRO.AsInteger > 0 then
        TblTemporariaDOCUMENTO.AsString := 'CP - ' + SQLCupomCUPOINRO.AsString
      else
        TblTemporariaDOCUMENTO.AsString := 'CP - ' + SQLCupomCUPOA13ID.AsString;
      TblTemporariaPRODA60DESCR.AsString := SQLCupomPRODA60DESCR.AsString;
      TblTemporariaPRODA60REFER.AsString := SQLCupomPRODA60REFER.AsString;
      TblTemporariaCORA30DESCR.AsString  := SQLCupomCORA30DESCR.AsString;
      TblTemporariaGRTMA5DESCR.AsString  := SQLCupomGRTMA5DESCR.AsString;
      TblTemporariaOPESA60DESCR.AsString := SQLCupomOPESA60DESCR.AsString;
      TblTemporariaEntradaSaida.AsString := SQLCupomOPESCENTRADASAIDA.AsString;
      TblTemporariaDataMov.AsDateTime    := SQLCupomCUPODEMIS.AsDateTime;
//      TblTemporariaLOTEA30NRO.AsString   :=
      TblTemporaria.Post;
      SQLCupom.Next;
      Progresso.Position := Progresso.Position + 1;
      Progresso.Update;
    end;

  LabelInfo.Caption := 'Verificando Notas Fiscais...';
  LabelInfo.Update;
  Progresso.Min := 0;
  Progresso.Max := SQLNotaFiscal.RecordCount;
  Progresso.Position := 0;
  while not SQLNotaFiscal.Eof do
    begin
      TblTemporaria.Append;
      TblTemporariaEMPRICOD.AsInteger := SQLNotaFiscalEMPRICOD.AsInteger;
      TblTemporariaPRODICOD.AsInteger := SQLNotaFiscalPRODICOD.AsInteger;
      if (SQLNotaFiscalOPESCENTRADASAIDA.AsString = 'E') or (SQLNotaFiscalOPESCENTRADASAIDA.AsString = 'D') then
        TblTemporariaQtde.AsFloat       := SQLNotaFiscalNFITN3QUANT.AsFloat
      else
        TblTemporariaQtde.AsFloat       := - SQLNotaFiscalNFITN3QUANT.AsFloat;
      if SQLNotaFiscalNOFIINUMERO.AsVariant <> null then
        TblTemporariaDOCUMENTO.AsString := 'NF - ' + SQLNotaFiscalNOFIINUMERO.AsString
      else
        TblTemporariaDOCUMENTO.AsString := 'NF - ' + SQLNotaFiscalNOFIA13ID.AsString;
      TblTemporariaPRODA60DESCR.AsString := SQLNotaFiscalPRODA60DESCR.AsString;
      TblTemporariaPRODA60REFER.AsString := SQLNotaFiscalPRODA60REFER.AsString;
      TblTemporariaCORA30DESCR.AsString  := SQLNotaFiscalCORA30DESCR.AsString;
      TblTemporariaGRTMA5DESCR.AsString  := SQLNotaFiscalGRTMA5DESCR.AsString;
      TblTemporariaOPESA60DESCR.AsString := SQLNotaFiscalOPESA60DESCR.AsString;
      TblTemporariaEntradaSaida.AsString := SQLNotaFiscalOPESCENTRADASAIDA.AsString;
      TblTemporariaDataMov.AsDateTime    := SQLNotaFiscalNOFIDEMIS.AsDateTime;
      TblTemporariaLOTEA30NRO.AsString   := SQLNotaFiscalLOTEA30NRO.AsString;
      TblTemporaria.Post;
      SQLNotaFiscal.Next;
      Progresso.Position := Progresso.Position + 1;
      Progresso.Update;
    end;

  LabelInfo.Caption := 'Verificando Notas de Compra...';
  LabelInfo.Update;
  Progresso.Min := 0;
  Progresso.Max := SQLNotaCompra.RecordCount;
  Progresso.Position := 0;
  while not SQLNotaCompra.Eof do
    begin
      TblTemporaria.Append;
      TblTemporariaEMPRICOD.AsInteger := SQLNotaCompraEMPRICOD.AsInteger;
      TblTemporariaPRODICOD.AsInteger := SQLNotaCompraPRODICOD.AsInteger;
      if (SQLNotaCompraOPESCENTRADASAIDA.AsString = 'E') or (SQLNotaCompraOPESCENTRADASAIDA.AsString = 'D') then
        TblTemporariaQtde.AsFloat       := SQLNotaCompraNOCIN3QTDEMBAL.AsFloat
      else
        TblTemporariaQtde.AsFloat       := - SQLNotaCompraNOCIN3QTDEMBAL.AsFloat;
      if SQLNotaCompraNOCPA30NRO.AsVariant <> null then
        TblTemporariaDOCUMENTO.AsString := 'NC - ' + SQLNotaCompraNOCPA30NRO.AsString
      else
        TblTemporariaDOCUMENTO.AsString := 'NC - ' + SQLNotaCompraNOCPA13ID.AsString;
      TblTemporariaPRODA60DESCR.AsString := SQLNotaCompraPRODA60DESCR.AsString;
      TblTemporariaPRODA60REFER.AsString := SQLNotaCompraPRODA60REFER.AsString;
      TblTemporariaCORA30DESCR.AsString  := SQLNotaCompraCORA30DESCR.AsString;
      TblTemporariaGRTMA5DESCR.AsString  := SQLNotaCompraGRTMA5DESCR.AsString;
      TblTemporariaOPESA60DESCR.AsString := SQLNotaCompraOPESA60DESCR.AsString;
      TblTemporariaEntradaSaida.AsString := SQLNotaCompraOPESCENTRADASAIDA.AsString;
      TblTemporariaDataMov.AsDateTime    := SQLNotaCompraNOCPDRECEBIMENTO.AsDateTime;
      TblTemporariaLOTEA30NRO.AsString   := SQLNotaCompraLOTEA30NRO.AsString;
      TblTemporaria.Post;
      SQLNotaCompra.Next;
      Progresso.Position := Progresso.Position + 1;
      Progresso.Update;
    end;

  LabelInfo.Caption := 'Verificando Movimentos Diversos...';
  LabelInfo.Update;
  Progresso.Min := 0;
  Progresso.Max := SQLMovimentoDiverso.RecordCount;
  Progresso.Position := 0;
  while not SQLMovimentoDiverso.Eof do
    begin
      TblTemporaria.Append;
      TblTemporariaEMPRICOD.AsInteger := SQLMovimentoDiversoEMPRICOD.AsInteger;
      TblTemporariaPRODICOD.AsInteger := SQLMovimentoDiversoPRODICOD.AsInteger;
      if (SQLMovimentoDiversoOPESCENTRADASAIDA.AsString = 'E') or (SQLMovimentoDiversoOPESCENTRADASAIDA.AsString = 'D') then
        TblTemporariaQtde.AsFloat       := SQLMovimentoDiversoMVDIN3QTD.AsFloat
      else
        TblTemporariaQtde.AsFloat       := - SQLMovimentoDiversoMVDIN3QTD.AsFloat;
      TblTemporariaDOCUMENTO.AsString := 'MD - ' + SQLMovimentoDiversoMOVDA13ID.AsString;
      TblTemporariaPRODA60DESCR.AsString := SQLMovimentoDiversoPRODA60DESCR.AsString;
      TblTemporariaPRODA60REFER.AsString := SQLMovimentoDiversoPRODA60REFER.AsString;
      TblTemporariaCORA30DESCR.AsString  := SQLMovimentoDiversoCORA30DESCR.AsString;
      TblTemporariaGRTMA5DESCR.AsString  := SQLMovimentoDiversoGRTMA5DESCR.AsString;
      TblTemporariaOPESA60DESCR.AsString := SQLMovimentoDiversoOPESA60DESCR.AsString;
      TblTemporariaEntradaSaida.AsString := SQLMovimentoDiversoOPESCENTRADASAIDA.AsString;
      TblTemporariaDataMov.AsDateTime    := SQLMovimentoDiversoMOVDDMOVIMENTO.AsDateTime;
      TblTemporariaLOTEA30NRO.AsString   := SQLMovimentoDiversoLOTEA30NRO.AsString;
      TblTemporaria.Post;
      SQLMovimentoDiverso.Next;
      Progresso.Position := Progresso.Position + 1;
      Progresso.Update;
    end;
  LabelInfo.Caption  := '';
  LabelInfo.Update;
  Progresso.Position := 0;
  Progresso.Update;
  TblTemporaria.Close;
  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Historico por Produto.rpt';
  Report.ReportTitle       := 'Relatório de Histórico por Produto';
  Report.WindowStyle.Title := 'Relatório de Histórico por Produto';
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
  Report.Formulas.Name         := 'Produto';
  Report.Formulas.Formula.Text := '"'+ ComboProduto.DisplayValue + '"';
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Referencia';
  Report.Formulas.Formula.Text := '"'+ SQLProdutoPRODA60REFER.AsString + '"';
  //--------------------------------------------------------------------------\\
  Report.Formulas.Send;
  Report.Execute;
end;

procedure TFormRelatorioHistoricoProduto.FormCreate(Sender: TObject);
begin
  inherited;
  LabelInfo.Caption := '';
  if not SQLProduto.Active then SQLProduto.Open; 
end;

procedure TFormRelatorioHistoricoProduto.ComboProdutoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value    <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
       (sender  as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

end.
