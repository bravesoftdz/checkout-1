unit RelatorioGiroEstoquePorGrade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, UCrpe32, RxQuery;

type
  TFormRelatorioGiroEstoquePorGrade = class(TFormRelatorioTEMPLATE)
    TblLegenda: TTable;
    TblLegendaLEGENDA: TIntegerField;
    TblLegendaTOTAL: TStringField;
    TblLegendaQTD1: TStringField;
    TblLegendaQTD2: TStringField;
    TblLegendaQTD3: TStringField;
    TblLegendaQTD4: TStringField;
    TblLegendaQTD5: TStringField;
    TblLegendaQTD6: TStringField;
    TblLegendaQTD7: TStringField;
    TblLegendaQTD8: TStringField;
    TblLegendaQTD9: TStringField;
    TblLegendaQTD10: TStringField;
    TblLegendaQTD11: TStringField;
    TblLegendaQTD12: TStringField;
    TblLegendaQTD13: TStringField;
    TblLegendaQTD14: TStringField;
    TblLegendaQTD15: TStringField;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODIAGRUPGRADE: TIntegerField;
    SQLProdutoPRODA60REFER: TStringField;
    SQLProdutoCORA30DESCR: TStringField;
    SQLProdutoMARCA60DESCR: TStringField;
    SQLProdutoPRODN3VLRCUSTO: TBCDField;
    SQLProdutoPRODN3VLRVENDA: TBCDField;
    SQLProdutoGRUPICOD: TIntegerField;
    SQLProdutoSUBGICOD: TIntegerField;
    SQLProdutoVARIICOD: TIntegerField;
    SQLProdutoGRUPA60DESCR: TStringField;
    SQLProdutoSUBGA60DESCR: TStringField;
    SQLProdutoVARIA60DESCR: TStringField;
    SQLProdutoCORICOD: TIntegerField;
    SQLProdutoGRADICOD: TIntegerField;
    SQLProdutoGRTMICOD: TIntegerField;
    DSSQLGrupo: TDataSource;
    SQLGrupo: TRxQuery;
    SQLGrupoGRUPICOD: TIntegerField;
    SQLGrupoGRUPA60DESCR: TStringField;
    DSSQLSubGrupo: TDataSource;
    SQLSubGrupo: TRxQuery;
    SQLSubGrupoGRUPICOD: TIntegerField;
    SQLSubGrupoSUBGICOD: TIntegerField;
    SQLSubGrupoSUBGA60DESCR: TStringField;
    DSSQLVariacao: TDataSource;
    SQLVariacao: TRxQuery;
    SQLVariacaoGRUPICOD: TIntegerField;
    SQLVariacaoSUBGICOD: TIntegerField;
    SQLVariacaoVARIICOD: TIntegerField;
    SQLVariacaoVARIA60DESCR: TStringField;
    DSSQLMarca: TDataSource;
    SQLMarca: TRxQuery;
    SQLMarcaMARCICOD: TIntegerField;
    SQLMarcaMARCA60DESCR: TStringField;
    DSSQLGrade: TDataSource;
    SQLGrade: TRxQuery;
    SQLGradeGRADICOD: TIntegerField;
    SQLGradeGRADA30DESCR: TStringField;
    DSSQLUnidade: TDataSource;
    SQLUnidade: TRxQuery;
    SQLUnidadeUNIDICOD: TIntegerField;
    SQLUnidadeUNIDA5DESCR: TStringField;
    Report: TCrpe;
    GroupFiltro: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ComboGrupo: TRxDBLookupCombo;
    ComboSubGrupo: TRxDBLookupCombo;
    ComboVariacao: TRxDBLookupCombo;
    ComboMarca: TRxDBLookupCombo;
    ComboGrade: TRxDBLookupCombo;
    ComboUnidade: TRxDBLookupCombo;
    GroupCodDesc: TGroupBox;
    OrdemCodigo: TRadioButton;
    OrdemDescricao: TRadioButton;
    OrdemRef: TRadioButton;
    GroupBox4: TGroupBox;
    HidePrcCompra: TCheckBox;
    HidePrcVenda: TCheckBox;
    SQLProdutoENTRADA: TBCDField;
    SQLProdutoSAIDA: TBCDField;
    SQLProdutoRESULTADO: TBCDField;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPRODA60REFER: TStringField;
    TblTemporariaPRODA60MARCA: TStringField;
    TblTemporariaCORA60DESCR: TStringField;
    TblTemporariaPRODN2VLRCUSTO: TFloatField;
    TblTemporariaPRODN2VLRVENDA: TFloatField;
    TblTemporariaPRODN2MARGEM: TFloatField;
    TblTemporariaPRODDULTRECTO: TDateField;
    TblTemporariaGIRO: TFloatField;
    TblTemporariaTOTAL: TFloatField;
    TblTemporariaRES1: TFloatField;
    TblTemporariaQTDE1: TFloatField;
    TblTemporariaQTDS1: TFloatField;
    TblTemporariaQTD1: TFloatField;
    TblTemporariaRES2: TFloatField;
    TblTemporariaQTDE2: TFloatField;
    TblTemporariaQTDS2: TFloatField;
    TblTemporariaQTD2: TFloatField;
    TblTemporariaRES3: TFloatField;
    TblTemporariaQTDE3: TFloatField;
    TblTemporariaQTDS3: TFloatField;
    TblTemporariaQTD3: TFloatField;
    TblTemporariaRES4: TFloatField;
    TblTemporariaQTDE4: TFloatField;
    TblTemporariaQTDS4: TFloatField;
    TblTemporariaQTD4: TFloatField;
    TblTemporariaRES5: TFloatField;
    TblTemporariaQTDE5: TFloatField;
    TblTemporariaQTDS5: TFloatField;
    TblTemporariaQTD5: TFloatField;
    TblTemporariaRES6: TFloatField;
    TblTemporariaQTDE6: TFloatField;
    TblTemporariaQTDS6: TFloatField;
    TblTemporariaQTD6: TFloatField;
    TblTemporariaRES7: TFloatField;
    TblTemporariaQTDE7: TFloatField;
    TblTemporariaQTDS7: TFloatField;
    TblTemporariaQTD7: TFloatField;
    TblTemporariaRES8: TFloatField;
    TblTemporariaQTDE8: TFloatField;
    TblTemporariaQTDS8: TFloatField;
    TblTemporariaQTD8: TFloatField;
    TblTemporariaRES9: TFloatField;
    TblTemporariaQTDE9: TFloatField;
    TblTemporariaQTDS9: TFloatField;
    TblTemporariaQTD9: TFloatField;
    TblTemporariaRES10: TFloatField;
    TblTemporariaQTDE10: TFloatField;
    TblTemporariaQTDS10: TFloatField;
    TblTemporariaQTD10: TFloatField;
    TblTemporariaRES11: TFloatField;
    TblTemporariaQTDE11: TFloatField;
    TblTemporariaQTDS11: TFloatField;
    TblTemporariaQTD11: TFloatField;
    TblTemporariaRES12: TFloatField;
    TblTemporariaQTDE12: TFloatField;
    TblTemporariaQTDS12: TFloatField;
    TblTemporariaQTD12: TFloatField;
    TblTemporariaRES13: TFloatField;
    TblTemporariaQTDE13: TFloatField;
    TblTemporariaQTDS13: TFloatField;
    TblTemporariaQTD13: TFloatField;
    TblTemporariaRES14: TFloatField;
    TblTemporariaQTDE14: TFloatField;
    TblTemporariaQTDS14: TFloatField;
    TblTemporariaQTD14: TFloatField;
    TblTemporariaRES15: TFloatField;
    TblTemporariaQTDE15: TFloatField;
    TblTemporariaQTDS15: TFloatField;
    TblTemporariaQTD15: TFloatField;
    TblTemporariaGRUPICOD: TIntegerField;
    TblTemporariaSUBGICOD: TIntegerField;
    TblTemporariaVARIICOD: TIntegerField;
    TblTemporariaGRUPA60DESCR: TStringField;
    TblTemporariaSUBGA60DESCR: TStringField;
    TblTemporariaVARIA60DESCR: TStringField;
    TblTemporariaTotVenda: TFloatField;
    TblTemporariaTotCusto: TFloatField;
    TblTemporariaTOTALE: TFloatField;
    TblTemporariaRESULTADO: TFloatField;
    TblTemporariaTOTALS: TFloatField;
    SQLProdutoSALDOA: TBCDField;
    SQLProdutoSALDOD: TBCDField;
    ChkSintetico: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure ComboGrupoChange(Sender: TObject);
    procedure ComboSubGrupoChange(Sender: TObject);
    procedure SQLProdutoCalcFields(DataSet: TDataSet);
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
    Procedure VerificaGrade(Grade:Integer);
  public
    { Public declarations }
  end;

var
  FormRelatorioGiroEstoquePorGrade: TFormRelatorioGiroEstoquePorGrade;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

Procedure TFormRelatorioGiroEstoquePorGrade.VerificaGrade(Grade:Integer);
Var
  I:Integer;
Begin
  If Not TblLegenda.Locate('LEGENDA',Grade,[LoCaseInsensitive]) Then
    Begin
      TblLegenda.Append;
      TblLegendaLEGENDA.Value  := Grade;
      TblLegendaTOTAL.asString := 'Total';
      DM.SQLTemplate.Close;
      DM.SQLTemplate.SQL.Text:= 'Select * From GRADETAMANHO Where GRADICOD='+IntToStr(Grade);
      DM.SQLTemplate.Open;
      I:=0;
      DM.SQLTemplate.First;
      While Not DM.SQLTemplate.Eof Do
        Begin
          Inc(I);
          TblLegenda.FindField('QTD'+IntToStr(I)).AsString:=DM.SQLTemplate.FindField('GRTMA5DESCR').asString;
          DM.SQLTemplate.Next;
        End;
      DM.SQLTemplate.Close;
      TblLegenda.Post;
    End;
End;
procedure TFormRelatorioGiroEstoquePorGrade.FormCreate(Sender: TObject);
begin
  inherited;
  SQLGrupo.Open;
  SQLSubGrupo.Open;
  SQLVariacao.Open;
  SQLMarca.Open;
  SQLGrade.Open;
  SQLUnidade.Open;
end;

procedure TFormRelatorioGiroEstoquePorGrade.ComboGrupoChange(
  Sender: TObject);
begin
  inherited;
  ComboSubGrupo.Enabled:=(ComboGrupo.Value<>'');
  If ComboGrupo.Value = '' Then
    ComboSubGrupo.Value:='';
end;

procedure TFormRelatorioGiroEstoquePorGrade.ComboSubGrupoChange(
  Sender: TObject);
begin
  inherited;
  ComboVariacao.Enabled:=(ComboSubGrupo.Value<>'');
  If ComboSubGrupo.Value = '' Then
    ComboVariacao.Value:='';
end;

procedure TFormRelatorioGiroEstoquePorGrade.SQLProdutoCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  If DataSet.FindField('SALDOA').AsVariant<>Null Then
    DataSet.FindField('RESULTADO').AsFloat := DataSet.FindField('SALDOA').AsFloat + DataSet.FindField('ENTRADA').AsFloat - DataSet.FindField('SAIDA').AsFloat
  Else
    DataSet.FindField('RESULTADO').AsFloat := DataSet.FindField('SALDOD').AsFloat + DataSet.FindField('ENTRADA').AsFloat - DataSet.FindField('SAIDA').AsFloat
end;

procedure TFormRelatorioGiroEstoquePorGrade.ExecutarBtnClick(
  Sender: TObject);
Var
  CorAnt, GradeAnt:String;
  Posicao : Integer;
  SaldoI:Double;
begin
  inherited;
  If TblLegenda.Active Then TblLegenda.Close;
  If TblLegenda.Exists Then TblLegenda.DeleteTable;
  TblLegenda.CreateTable;
  TblLegenda.Open;

  If SQLProduto.Active Then SQLProduto.Close;

  SQLProduto.MacrobyName('MEmpresa1').Value  := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'EMP', '');
  SQLProduto.MacrobyName('MEmpresa2').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'MOVIMENTOESTOQUE', '');

  SQLProduto.MacrobyName('MData').Value    := 'MOVIMENTOESTOQUE.MVESDMOV >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                              'MOVIMENTOESTOQUE.MVESDMOV <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"';

  SQLProduto.ParamByName('DataInicial').AsDateTime := De.Date;

  //SETAR MACROS
  if ComboGrupo.KeyValue <> null then
    SQLProduto.MacroByName('MGrupo').Value := 'PRODUTO.GRUPICOD = ' + ComboGrupo.Value
  else
    SQLProduto.MacroByName('MGrupo').Value := '0=0';

  if ComboSubGrupo.KeyValue <> null then
    SQLProduto.MacroByName('MSubGrupo').Value := 'PRODUTO.SUBGICOD = ' + ComboSubGrupo.Value
  else
    SQLProduto.MacroByName('MSubGrupo').Value := '0=0';

  if ComboVariacao.KeyValue <> null then
    SQLProduto.MacroByName('MVariacao').Value := 'PRODUTO.VARIICOD = ' + ComboVariacao.Value
  else
    SQLProduto.MacroByName('MVariacao').Value := '0=0';

  if ComboMarca.KeyValue <> null then
    SQLProduto.MacroByName('MMarca').Value := 'PRODUTO.MARCICOD = ' + ComboMarca.Value
  else
    SQLProduto.MacroByName('MMarca').Value := '0=0';

  if ComboGrade.KeyValue <> null then
    SQLProduto.MacroByName('MGrade').Value := 'PRODUTO.GRADICOD = ' + ComboGrade.Value
  else
    SQLProduto.MacroByName('MGrade').Value := '0=0';

  if ComboUnidade.KeyValue <> null then
    SQLProduto.MacroByName('MUnidade').Value := 'PRODUTO.UNIDICOD = ' + ComboUnidade.Value
  else
    SQLProduto.MacroByName('MUnidade').Value := '0=0';

  if OrdemCodigo.Checked then
    SQLProduto.MacroByName('MOrdem').Value := 'PRODUTO.GRUPICOD,PRODUTO.SUBGICOD,PRODUTO.VARIICOD,PRODUTO.PRODIAGRUPGRADE, PRODUTO.CORICOD, PRODUTO.GRADICOD, PRODUTO.GRTMICOD';
  if OrdemDescricao.Checked then
    SQLProduto.MacroByName('MOrdem').Value := 'PRODUTO.GRUPICOD,PRODUTO.SUBGICOD,PRODUTO.VARIICOD,PRODUTO.PRODA60DESCR, PRODUTO.PRODIAGRUPGRADE, PRODUTO.CORICOD, PRODUTO.GRADICOD, PRODUTO.GRTMICOD';
  If OrdemRef.Checked then
    SQLProduto.MacroByName('MOrdem').Value := 'PRODUTO.GRUPICOD,PRODUTO.SUBGICOD,PRODUTO.VARIICOD,PRODUTO.PRODA60REFER, PRODUTO.PRODIAGRUPGRADE, PRODUTO.CORICOD, PRODUTO.GRADICOD, PRODUTO.GRTMICOD';

  If TblTemporaria.Active Then TblTemporaria.Close;

  TblTemporaria.Open;

  SQLProduto.Open ;
  SQLProduto.First;CorAnt:='';GradeAnt:='';
  While Not SQLProduto.Eof Do
    Begin
      If (SQLProdutoSALDOA.asFloat<>0) or (SQLProdutoSALDOD.asFloat<>0) or (SQLProdutoENTRADA.asFloat<>0) or (SQLProdutoSAIDA.asFloat<>0) Then
        Begin
          If (CorAnt<>SQLProdutoCORICOD.asString) or (GradeAnt<>SQLProdutoPRODIAGRUPGRADE.asString) Then
            Begin
              GradeAnt := SQLProdutoPRODIAGRUPGRADE.asString;
              CorAnt   := SQLProdutoCORICOD.asString;
              VerificaGrade(SQLProdutoGRADICOD.asInteger);
              TblTemporaria.Append;
              TblTemporariaPRODDULTRECTO.AsVariant := Null;
              TblTemporariaPRODICOD.asInteger      := SQLProdutoPRODIAGRUPGRADE.asInteger;
              If Not HidePrcCompra.Checked Then
                TblTemporariaPRODN2VLRVENDA.asFloat  := SQLProdutoPRODN3VLRVENDA.asFloat;
              If Not HidePrcVenda.Checked Then
                TblTemporariaPRODN2VLRCUSTO.asFloat  := SQLProdutoPRODN3VLRCUSTO.asFloat;
              If (SQLProdutoPRODN3VLRCUSTO.asFloat>0) and (Not HidePrcCompra.Checked) and (Not HidePrcVenda.Checked) Then
                TblTemporariaPRODN2MARGEM.asFloat    := ((SQLProdutoPRODN3VLRVENDA.asFloat/SQLProdutoPRODN3VLRCUSTO.asFloat)-1)*100
              Else
                TblTemporariaPRODN2MARGEM.asFloat    := 0;
              TblTemporariaPRODA60REFER.asString   := SQLProdutoPRODA60REFER.asString;
              TblTemporariaPRODA60MARCA.asString   := SQLProdutoMARCA60DESCR.asString;
              TblTemporariaSUBGICOD.asInteger      := SQLProdutoSUBGICOD.asInteger;
              TblTemporariaSUBGA60DESCR.asString   := SQLProdutoSUBGA60DESCR.asString;
              TblTemporariaGRUPICOD.asInteger      := SQLProdutoGRUPICOD.asInteger;
              TblTemporariaGRUPA60DESCR.asString   := SQLProdutoGRUPA60DESCR.asString;
              TblTemporariaVARIICOD.asInteger      := SQLProdutoVARIICOD.asInteger;
              TblTemporariaVARIA60DESCR.asString   := SQLProdutoVARIA60DESCR.asString;
              TblTemporariaCORA60DESCR.asString    := SQLProdutoCORA30DESCR.asString;
            End
          Else
            TblTemporaria.Edit;
          If SQLProdutoSALDOA.asVariant<>Null Then
            SaldoI := SQLProdutoSALDOA.asFloat
          Else
            SaldoI := SQLProdutoSALDOD.asFloat;
          TblTemporariaTOTAL.asFloat     := TblTemporariaTOTAL.asFloat + SaldoI;
          TblTemporariaTOTALE.asFloat    := TblTemporariaTOTALE.asFloat + SQLProdutoENTRADA.asFloat;
          TblTemporariaTOTALS.asFloat    := TblTemporariaTOTALS.asFloat + SQLProdutoSAIDA.asFloat;
          TblTemporariaRESULTADO.asFloat := TblTemporariaTOTAL.asFloat + TblTemporariaTOTALE.asFloat - TblTemporariaTOTALS.asFloat;
          If TblTemporariaTOTAL.asFloat+TblTemporariaTOTALE.asFloat>0 Then
            TblTemporariaGIRO.asFLoat      := TblTemporariaTOTALS.asFloat / (TblTemporariaTOTAL.asFloat+TblTemporariaTOTALE.asFloat)
          Else
            TblTemporariaGIRO.asFLoat      := 0;
          TblTemporariaTotVenda.asFloat := TblTemporariaTotVenda.asFloat + (SQLProdutoPRODN3VLRVENDA.asFloat*SaldoI);
          TblTemporariaTotCusto.asFloat := TblTemporariaTotCusto.asFloat + (SQLProdutoPRODN3VLRCUSTO.asFloat*SaldoI);
          If (SQLProdutoGRADICOD.asVariant<>Null) and (SQLProdutoGRTMICOD.asVariant<>Null) Then
            Begin
              Posicao := PosicaoGrade(SQLProdutoGRADICOD.asInteger,SQLProdutoGRTMICOD.asInteger);
              TblTemporaria.FindField('QTD'+IntToStr(Posicao)).asFloat := TblTemporaria.FindField('QTD'+IntToStr(Posicao)).asFloat + SaldoI;
              TblTemporaria.FindField('QTDE'+IntToStr(Posicao)).asFloat := TblTemporaria.FindField('QTDE'+IntToStr(Posicao)).asFloat + SQLProdutoENTRADA.asFloat;
              TblTemporaria.FindField('QTDS'+IntToStr(Posicao)).asFloat := TblTemporaria.FindField('QTDS'+IntToStr(Posicao)).asFloat + SQLProdutoSAIDA.asFloat;
              TblTemporaria.FindField('RES'+IntToStr(Posicao)).asFloat := TblTemporaria.FindField('QTD'+IntToStr(Posicao)).asFloat + TblTemporaria.FindField('QTDE'+IntToStr(Posicao)).asFloat - TblTemporaria.FindField('QTDS'+IntToStr(Posicao)).asFloat;
            End;
          TblTemporaria.Post;
        End;
      SQLProduto.Next;
    End;
  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Giro de Estoque por Grade.rpt' ;
  Report.ReportTitle       := 'Relatório Giro de Estoque por Grade' ;
  Report.WindowStyle.Title := 'Relatório Giro de Estoque por Grade' ;
  //SETAR FORMULAS NO RPT
  Report.Formulas.Retrieve ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'Grupo' ;
  if ComboGrupo.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboGrupo.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'SubGrupo' ;
  if ComboSubGrupo.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboSubGrupo.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'Variacao' ;
  if ComboVariacao.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboVariacao.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'Marca' ;
  if ComboMarca.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboMarca.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'Grade' ;
  if ComboGrade.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboGrade.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'Unidade' ;
  if ComboUnidade.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboUnidade.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'OrdemImpressao' ;
  if OrdemCodigo.Checked then
    Report.Formulas.Formula.Text := '"Código"' ;
  if OrdemDescricao.Checked then
    Report.Formulas.Formula.Text := '"Descrição"' ;

  If ChkSintetico.Checked Then
    Begin
      Report.SectionFormat.Retrieve ;
      Report.SectionFormat.Section:='D';
      Report.SectionFormat.Suppress:= CTrue;
      Report.SectionFormat.Send;
    End
  Else
    Begin
      Report.SectionFormat.Retrieve ;
      Report.SectionFormat.Section:='D';
      Report.SectionFormat.Suppress:= CFalse;
      Report.SectionFormat.Send;
    End;

  Report.Execute;
end;

end.
