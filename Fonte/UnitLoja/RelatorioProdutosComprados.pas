unit RelatorioProdutosComprados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RelatorioTemplate, Db, DBTables, ComCtrls, RxLookup, StdCtrls,
  Mask, ToolEdit, ExtCtrls, Buttons, jpeg, OleCtrls, Placemnt,
  ImgList, RxQuery, DBCtrls, UCrpe32, RXCtrls, Grids, DBGrids,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioProdutosComprados = class(TFormRelatorioTEMPLATE)
    SQLCompras: TRxQuery;
    GroupBox2: TGroupBox;
    OrdemDescricao: TRadioButton;
    OrdemCupom: TRadioButton;
    OrdemCodigo: TRadioButton;
    GroupBox3: TGroupBox;
    LabelSubGrupo: TLabel;
    LabelVariacao: TLabel;
    Label11: TLabel;
    ComboSubGrupo: TRxDBLookupCombo;
    ComboVariacao: TRxDBLookupCombo;
    ComboGrupo: TRxDBLookupCombo;
    SQLGrupo: TRxQuery;
    DSSQLGrupo: TDataSource;
    DSSQLSubGrupo: TDataSource;
    SQLSubGrupo: TRxQuery;
    DSSQLVariacao: TDataSource;
    SQLVariacao: TRxQuery;
    SQLGrupoGRUPICOD: TIntegerField;
    SQLGrupoGRUPA60DESCR: TStringField;
    SQLSubGrupoGRUPICOD: TIntegerField;
    SQLSubGrupoSUBGICOD: TIntegerField;
    SQLSubGrupoSUBGA60DESCR: TStringField;
    Label5: TLabel;
    ComboMarca: TRxDBLookupCombo;
    SQLMarca: TRxQuery;
    DSSQLMarca: TDataSource;
    SQLMarcaMARCICOD: TIntegerField;
    SQLMarcaMARCA60DESCR: TStringField;
    SQLVendedor: TQuery;
    DSSQLNumerario: TDataSource;
    Report: TCrpe;
    Timer1: TTimer;
    GroupBox4: TGroupBox;
    ComboFornecedor: TRxDBLookupCombo;
    SQLFornecedor: TRxQuery;
    dsSQLFornecedor: TDataSource;
    SQLVariacaoGRUPICOD: TIntegerField;
    SQLVariacaoSUBGICOD: TIntegerField;
    SQLVariacaoVARIICOD: TIntegerField;
    SQLVariacaoVARIA60DESCR: TStringField;
    SQLVariacaoPENDENTE: TStringField;
    SQLVariacaoREGISTRO: TDateTimeField;
    CheckPeriodo: TCheckBox;
    GroupProduto: TGroupBox;
    ComboProduto: TRxDBLookupCombo;
    SQLProduto: TRxQuery;
    DSSQLProduto: TDataSource;
    RadioTotal: TRadioGroup;
    ComboColecao: TRxDBLookupCombo;
    Label6: TLabel;
    SQLColecao: TRxQuery;
    DSSQLColecao: TDataSource;
    SQLColecaoCOLEICOD: TIntegerField;
    SQLColecaoCOLEA60DESCR: TStringField;
    GroupBox7: TGroupBox;
    CodInternoProd: TEdit;
    SQLFornecedorFORNICOD: TIntegerField;
    SQLFornecedorFORNA60RAZAOSOC: TStringField;
    SQLComprasEMPRICOD: TIntegerField;
    SQLComprasCUPODEMIS: TDateTimeField;
    SQLComprasREGISTRO: TDateTimeField;
    SQLComprasPRODICOD: TIntegerField;
    SQLComprasPRODA60DESCR: TStringField;
    SQLComprasVLRTOTALITEM: TFloatField;
    SQLComprasPRODN3VLRCUSTO: TBCDField;
    SQLComprasPRODN3VLRVENDA: TBCDField;
    SQLComprasGRUPICOD: TIntegerField;
    SQLComprasSUBGICOD: TIntegerField;
    SQLComprasVARIICOD: TIntegerField;
    SQLComprasMARCICOD: TIntegerField;
    SQLComprasCOLEICOD: TIntegerField;
    SQLComprasCPITN3QTD: TBCDField;
    SQLComprasCUPOA13ID: TStringField;
    SQLComprasFORNICOD: TIntegerField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaCUPODEMIS: TDateTimeField;
    TblTemporariaREGISTRO: TDateTimeField;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPRODA60DESCR: TStringField;
    TblTemporariaVLRTOTALITEM: TFloatField;
    TblTemporariaPRODN3VLRCUSTO: TBCDField;
    TblTemporariaPRODN3VLRVENDA: TBCDField;
    TblTemporariaGRUPICOD: TIntegerField;
    TblTemporariaSUBGICOD: TIntegerField;
    TblTemporariaVARIICOD: TIntegerField;
    TblTemporariaMARCICOD: TIntegerField;
    TblTemporariaCOLEICOD: TIntegerField;
    TblTemporariaCPITN3QTD: TBCDField;
    TblTemporariaCUPOA13ID: TStringField;
    TblTemporariaFORNICOD: TIntegerField;
    SQLComprasEMPRICODDESTCOMPRA: TIntegerField;
    TblTemporariaEMPRICODDESTCOMPRA: TIntegerField;
    SQLComprasPRODN2ALIQPIS: TBCDField;
    SQLComprasPRODN2ALIQCOFINS: TBCDField;
    TblTemporariaPRODN2ALIQPIS: TBCDField;
    TblTemporariaPRODN2ALIQCOFINS: TBCDField;
    RadioPisCofins: TRadioGroup;
    SQLComprasCFOPA5CODAUX: TStringField;
    TblTemporariaCFOPA5CODAUX: TStringField;
    SQLComprasNOCIN3VLREMBAL: TFloatField;
    TblTemporariaNOCIN3VLREMBAL: TFloatField;
    SQLComprasNOCIN3CAPEMBAL: TBCDField;
    TblTemporariaNOCIN3CAPEMBAL: TBCDField;
    SQLComprasVALORUNIT: TFloatField;
    TblTemporariaVALORUNIT: TFloatField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ComboGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboProdutoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioProdutosComprados: TFormRelatorioProdutosComprados;

implementation

uses UnitLibrary, DataModulo, DataModuloTemplate;

{$R *.DFM}

procedure TFormRelatorioProdutosComprados.ExecutarBtnClick(Sender: TObject);
var
  Entra : boolean ;
  i     : integer ;
begin
  inherited;
  SQLCompras.Close ;
  SQLCompras.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'NOTACOMPRA', 'EMPRICODDESTCOMPRA') ;
  if not CheckPeriodo.Checked then
    begin
      SQLCompras.MacrobyName('MData').Value    := 'NOTACOMPRA.NOCPDRECEBIMENTO >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                  'NOTACOMPRA.NOCPDRECEBIMENTO <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
    end
  else
    begin
      SQLCompras.MacrobyName('MData').Value    := '0=0';
    end;

  if ComboFornecedor.Text <> '' then
    SQLCompras.MacrobyName('MFornec').Value  := 'NOTACOMPRA.FORNICOD = ' + ComboFornecedor.Value
  else
    SQLCompras.MacrobyName('MFornec').Value  := '0=0';

  if CodInternoProd.Text <> '' then
    SQLCompras.MacroByName('MProduto').Value   := 'NOTACOMPRAITEM.PRODICOD = ' + CodInternoProd.Text
  else
    SQLCompras.MacroByName('MProduto').Value   := '0=0';

  if ComboGrupo.Value <> '' then
    SQLCompras.MacroByName('MGrupo').Value      := 'PRODUTO.GRUPICOD = ' + ComboGrupo.Value
  else
    SQLCompras.MacroByName('MGrupo').Value      := '0=0';

  if ComboSubGrupo.Value <> '' then
    SQLCompras.MacroByName('MSubGrupo').Value      := 'PRODUTO.SUBGICOD = ' + ComboSubGrupo.Value
  else
    SQLCompras.MacroByName('MSubGrupo').Value      := '0=0';

  if ComboVariacao.Value <> '' then
    SQLCompras.MacroByName('MVariacao').Value      := 'PRODUTO.VARIICOD = ' + ComboVariacao.Value
  else
    SQLCompras.MacroByName('MVariacao').Value      := '0=0';

  if ComboMarca.Value <> '' then
    SQLCompras.MacroByName('MMarca').Value      := 'PRODUTO.MARCICOD = ' + ComboMarca.Value
  else
    SQLCompras.MacroByName('MMarca').Value      := '0=0';

  if ComboColecao.Value <> '' then
    SQLCompras.MacroByName('MColecao').Value      := 'PRODUTO.COLEICOD = ' + ComboColecao.Value
  else
    SQLCompras.MacroByName('MColecao').Value      := '0=0';

  SQLCompras.Open ;

  if SQLCompras.IsEmpty then
    begin
      Showmessage('N�o existem dados para ser impressos!');
      Exit;
    end;

  TblTemporaria.Open ;
  SQLCompras.First ;
  while not SQLCompras.Eof do
    begin
      TblTemporaria.Append ;
      for i := 0 to SQLCompras.FieldCount-1 do
        if SQLCompras.Fields[i].AsString <> '' then
          TblTemporaria.FieldByName(SQLCompras.Fields[i].FieldName).AsVariant := SQLCompras.Fields[i].AsVariant ;
      TblTemporariaPRODA60DESCR.Value   := TblTemporariaPRODA60DESCR.Value+'/'+dm.SQLLocate('COR','CORICOD','CORA30DESCR',dm.SQLLocate('PRODUTO','PRODICOD','CORICOD',TblTemporariaPRODICOD.AsString));
      TblTemporaria.Post ;
      SQLCompras.Next ;
    end ;
  case RadioPisCofins.ItemIndex of
    1 : begin
          // PisCofins Isento = 0%
          TblTemporaria.first;
          while not TblTemporaria.eof do
            begin
              if (TblTemporariaPRODN2ALIQPIS.Value > 0)  or (TblTemporariaPRODN2ALIQCOFINS.Value > 0) then
                TblTemporaria.Delete;
              TblTemporaria.Next;
            end;
          TblTemporaria.first;
        end;
    2 : begin
          // PisCofins Isento = 0%
          TblTemporaria.first;
          while not TblTemporaria.eof do
            begin
              if (TblTemporariaPRODN2ALIQPIS.Value = 0)  or (TblTemporariaPRODN2ALIQCOFINS.Value = 0) then
                TblTemporaria.Delete;
              TblTemporaria.Next;
            end;
          TblTemporaria.first;
        end;
  end;

  case RadioTotal.ItemIndex of
    0 : begin
          Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Produtos Comprados.rpt' ;
          Report.ReportTitle       := 'Produtos Comprados Totalizando por Data' ;
          Report.WindowStyle.Title := 'Produtos Comprados Totalizando por Data' ;
          if RadioPisCofins.ItemIndex = 1 then
            begin
              Report.ReportTitle       := 'Produtos Comprados Totalizando por Data - Isentos PIS E COFINS' ;
              Report.WindowStyle.Title := 'Produtos Comprados Totalizando por Data - Isentos PIS E COFINS' ;
            end;
          if RadioPisCofins.ItemIndex = 2 then
            begin
              Report.ReportTitle       := 'Produtos Comprados Totalizando por Data - Tributados PIS E COFINS' ;
              Report.WindowStyle.Title := 'Produtos Comprados Totalizando por Data - Tributados PIS E COFINS' ;
            end;
        end;
    1 : begin
          Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Produtos Comprados Total Por Produto.rpt' ;
          Report.ReportTitle       := 'Produtos Comprados Totalizando por Produto' ;
          Report.WindowStyle.Title := 'Produtos Comprados Totalizando por Produto' ;
          if RadioPisCofins.ItemIndex = 1 then
            begin
              Report.ReportTitle       := 'Produtos Comprados Totalizando por Produto - Isentos PIS E COFINS' ;
              Report.WindowStyle.Title := 'Produtos Comprados Totalizando por Produto - Isentos PIS E COFINS' ;
            end;
          if RadioPisCofins.ItemIndex = 2 then
            begin
              Report.ReportTitle       := 'Produtos Comprados Totalizando por Produto - Tributados PIS E COFINS' ;
              Report.WindowStyle.Title := 'Produtos Comprados Totalizando por Produto - Tributados PIS E COFINS' ;
            end;
        end;
    2 : begin
          Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Produtos Comprados Total Por CFOP.rpt' ;
          Report.ReportTitle       := 'Produtos Comprados Totalizando por CFOP' ;
          Report.WindowStyle.Title := 'Produtos Comprados Totalizando por CFOP' ;
          if RadioPisCofins.ItemIndex = 1 then
            begin
              Report.ReportTitle       := 'Produtos Comprados Totalizando por CFOP - Isentos PIS E COFINS' ;
              Report.WindowStyle.Title := 'Produtos Comprados Totalizando por CFOP - Isentos PIS E COFINS' ;
            end;
          if RadioPisCofins.ItemIndex = 2 then
            begin
              Report.ReportTitle       := 'Produtos Comprados Totalizando por CFOP - Tributados PIS E COFINS' ;
              Report.WindowStyle.Title := 'Produtos Comprados Totalizando por CFOP - Tributados PIS E COFINS' ;
            end;
        end;
  end;

  Report.Formulas.Retrieve ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa' ;
  Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' at� ' +
                                  FormatDateTime('dd/mm/yyyy', Ate.Date) + '"' ;
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
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'Fornecedor' ;
  if ComboFornecedor.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboFornecedor.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\

  Report.Formulas.Name := 'OrdemImpressao' ;
  if OrdemCupom.Checked then
    Report.Formulas.Formula.Text := '"Cupom"' ;
  if OrdemCodigo.Checked then
    Report.Formulas.Formula.Text := '"C�digo Produto"' ;
  if OrdemDescricao.Checked then
    Report.Formulas.Formula.Text := '"Descri��o Produto"' ;

  Report.Formulas.Send;
  Report.SortFields.Clear ;
  Report.SortFields.Add(0) ;
  Report.SortFields.Number := 0 ;
  if OrdemCupom.Checked then
      Report.SortFields.Field  := '{RelProdutosVendidos.CUPOA13ID}' ;
  if OrdemDescricao.Checked then
      Report.SortFields.Field  := '{RelProdutosVendidos.PRODA60DESCR}' ;
  if OrdemCodigo.Checked then
      Report.SortFields.Field  := '{RelProdutosVendidos.PRODICOD}' ;
  Report.SortFields.Send ;
  Report.Execute ;
end;

procedure TFormRelatorioProdutosComprados.FormCreate(Sender: TObject);
begin
  inherited;
  SQLGrupo.Open ;
  SQLSubGrupo.Open ;
  SQLVariacao.Open ;
  SQLMarca.Open ;
  SQLFornecedor.Open ;
  SQLProduto.Open;
  SQLColecao.Open;
end;

procedure TFormRelatorioProdutosComprados.Timer1Timer(Sender: TObject);
begin
  inherited;
  if ComboGrupo.Text <> '' then
    ComboSubGrupo.Enabled := true
  else
    ComboSubGrupo.Enabled := false ;

  if ComboSubGrupo.Text <> '' then
    ComboVariacao.Enabled := true
  else
    ComboVariacao.Enabled := false ;

  if CheckPeriodo.Checked then
    begin
      De.Enabled  := False;
      Ate.Enabled := False;
    end
  else
    begin
      De.Enabled  := True;
      Ate.Enabled := True;
    end;
end;

procedure TFormRelatorioProdutosComprados.ComboGrupoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value    <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
       (sender  as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

procedure TFormRelatorioProdutosComprados.ComboProdutoExit(Sender: TObject);
begin
  inherited;
  if ComboProduto.Value <> '' then
    CodInternoProd.Text := ComboProduto.Value; 
end;

end.
