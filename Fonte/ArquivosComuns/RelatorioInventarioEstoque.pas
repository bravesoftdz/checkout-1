unit RelatorioInventarioEstoque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RelatorioTemplate, Placemnt, Db, DBTables, ComCtrls, RxLookup,
  StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, jpeg, OleCtrls, 
  ImgList, RxQuery, UCrpe32, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioInventarioEstoque = class(TFormRelatorioTEMPLATE)
    SQLProdutoSaldo: TRxQuery;
    SQLProdutoSaldoPRODICOD: TIntegerField;
    SQLProdutoSaldoPRODA60DESCR: TStringField;
    SQLProdutoSaldoSALDO: TFloatField;
    SQLProdutoSaldoTOTAL: TFloatField;
    SQLProdutoSaldoUNIDA5DESCR: TStringField;
    SQLProdutoSaldoGRUPA60DESCR: TStringField;
    SQLProdutoSaldoGRUPICOD: TIntegerField;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPRODA60DESCR: TStringField;
    TblTemporariaSALDO: TFloatField;
    TblTemporariaTOTAL: TFloatField;
    TblTemporariaUNIDA5DESCR: TStringField;
    TblTemporariaGRUPA60DESCR: TStringField;
    TblTemporariaPRODN3VLRCUSTO: TFloatField;
    TblTemporariaGRUPICOD: TIntegerField;
    Report: TCrpe;
    SQLDelSaldoZero: TRxQuery;
    GroupCodDesc: TGroupBox;
    OrdemCodigo: TRadioButton;
    OrdemDescricao: TRadioButton;
    SQLProdutoSaldoPRODN3VLRVENDA: TFloatField;
    TblTemporariaPRODN3VLRVENDA: TFloatField;
    CKMostraVlrVenda: TCheckBox;
    SQLProdutoSaldoVENDATOTAL: TFloatField;
    TblTemporariaVENDATOTAL: TFloatField;
    CKMostraSaldoZero: TCheckBox;
    SQLProdutoSaldoPRODN3VLRCUSTO: TFloatField;
    GroupBox3: TGroupBox;
    LabelSubGrupo: TLabel;
    LabelVariacao: TLabel;
    Label11: TLabel;
    Label5: TLabel;
    ComboSubGrupo: TRxDBLookupCombo;
    ComboVariacao: TRxDBLookupCombo;
    ComboGrupo: TRxDBLookupCombo;
    ComboMarca: TRxDBLookupCombo;
    SQLGrupo: TRxQuery;
    SQLGrupoGRUPICOD: TIntegerField;
    SQLGrupoGRUPA60DESCR: TStringField;
    DSSQLGrupo: TDataSource;
    SQLSubGrupo: TRxQuery;
    SQLSubGrupoSUBGICOD: TIntegerField;
    SQLSubGrupoGRUPICOD: TIntegerField;
    SQLSubGrupoSUBGA60DESCR: TStringField;
    DSSQLSubGrupo: TDataSource;
    SQLVariacao: TRxQuery;
    SQLVariacaoVARIICOD: TIntegerField;
    SQLVariacaoGRUPICOD: TIntegerField;
    SQLVariacaoSUBGICOD: TIntegerField;
    SQLVariacaoVARIA60DESCR: TStringField;
    SQLVariacaoPENDENTE: TStringField;
    SQLVariacaoREGISTRO: TDateTimeField;
    DSSQLVariacao: TDataSource;
    SQLMarca: TRxQuery;
    SQLMarcaMARCICOD: TIntegerField;
    SQLMarcaMARCA60DESCR: TStringField;
    DSSQLMarca: TDataSource;
    ckSemQuebraGRupo: TCheckBox;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioInventarioEstoque: TFormRelatorioInventarioEstoque;

implementation

uses DataModulo;

{$R *.DFM}

procedure TFormRelatorioInventarioEstoque.ExecutarBtnClick(
  Sender: TObject);
begin
  inherited;
  SQLProdutoSaldo.Close ;
  SQLProdutoSaldo.MacrobyName('MSaldo').Value := 'select sum(PRODUTOSALDO.PSLDN3QTDE) ' +
                                                 'from PRODUTOSALDO ' +
                                                 'where PRODUTOSALDO.PRODICOD = PRODUTO.PRODICOD ' +
                                                 'and ('+ SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'PRODUTOSALDO', '') +')' ;
  SQLProdutoSaldo.MacrobyName('MSaldo1').Value := 'select sum(PRODUTOSALDO.PSLDN3QTDE) ' +
                                                  'from PRODUTOSALDO ' +
                                                  'where PRODUTOSALDO.PRODICOD = PRODUTO.PRODICOD ' +
                                                  'and ('+ SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'PRODUTOSALDO', '') +')' ;

  if OrdemCodigo.Checked then
    SQLProdutoSaldo.MacrobyName('MOrdem').Value := 'PRODUTO.PRODICOD' ;

  if OrdemDescricao.Checked then
    SQLProdutoSaldo.MacrobyName('MOrdem').Value := 'PRODUTO.PRODA60DESCR' ;

  if ComboGrupo.Value <> '' then
    SQLProdutoSaldo.MacrobyName('MGrupo').Value := 'PRODUTO.GRUPICOD = ' + ComboGrupo.Value;

  if ComboSubGrupo.Value <> '' then
    SQLProdutoSaldo.MacroByName('MSubGrupo').Value := 'PRODUTO.SUBGICOD = ' + ComboSubGrupo.Value;

  if ComboVariacao.Value <> '' then
    SQLProdutoSaldo.MacroByName('MVariacao').Value := 'PRODUTO.VARIICOD = ' + ComboVariacao.Value;

  if ComboMarca.Value <> '' then
    SQLProdutoSaldo.MacroByName('MMarca').Value    := 'PRODUTO.MARCICOD = ' + ComboMarca.Value;

  SQLProdutoSaldo.Open ;
  if (SQLProdutoSaldo.IsEmpty) then
    begin
      Showmessage('N�o existem dados para ser impressos!');
      Abort;
    end;
  BatchExec(SQLProdutoSaldo, TblTemporaria) ;

  if not CKMostraSaldoZero.Checked then
    SQLDelSaldoZero.ExecSQL ;

  if not CKMostraVlrVenda.Checked then
    Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Inventario de Estoque.rpt'
  else
    begin
      if ckSemQuebraGRupo.Checked then
        Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Inventario de Estoque com Valor Venda sem Quebra Grupo.rpt'
      else
        Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Inventario de Estoque com Valor Venda.rpt';
    end;
  Report.WindowStyle.Title := 'Relat�rio Invent�rio de Estoque por Grupo' ;
  Report.ReportTitle       := 'Relat�rio Invent�rio de Estoque por Grupo' ;
  Report.Formulas.Retrieve ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
  Report.Execute ;
end;

procedure TFormRelatorioInventarioEstoque.FormCreate(Sender: TObject);
begin
  inherited;
  SQLMarca.Open;
  SQLGrupo.Open;
  SQLSubGrupo.Open;
  SQLVariacao.Open;
end;

end.
