unit unRelVendasPorVendedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, UCrpe32, RxQuery, DBTables, Placemnt, DB,
  Mask, ToolEdit, RxLookup, Buttons, jpeg, ComCtrls, IBCustomDataSet,
  IBQuery, Grids, DBGrids;

type
  TFormVendasPorVendedor = class(TForm)
    Progresso: TProgressBar;
    ScrollBox: TScrollBox;
    Image1: TImage;
    BtnFecharTela: TSpeedButton;
    LblTituloTela: TPanel;
    PanelCentro: TPanel;
    BtnVisualizar: TSpeedButton;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    De: TDateEdit;
    Ate: TDateEdit;
    CheckPeriodo: TCheckBox;
    GroupBox3: TGroupBox;
    LabelSubGrupo: TLabel;
    LabelVariacao: TLabel;
    Label11: TLabel;
    Label5: TLabel;
    ComboGrupo: TRxDBLookupCombo;
    ComboMarca: TRxDBLookupCombo;
    GroupBox5: TGroupBox;
    ComboVendedor: TRxDBLookupCombo;
    GroupBox4: TGroupBox;
    ComboCliente: TRxDBLookupCombo;
    GroupProduto: TGroupBox;
    ComboProduto: TRxDBLookupCombo;
    DSSQLEmpresa: TDataSource;
    DSSQLGrupo: TDataSource;
    DSSQLSubGrupo: TDataSource;
    DSSQLVariacao: TDataSource;
    DSSQLMarca: TDataSource;
    DSSQLCliente: TDataSource;
    DSSQLProduto: TDataSource;
    DSSQLColecao: TDataSource;
    EditHoraIni: TEdit;
    EditHoraFim: TEdit;
    SQLVendedor: TIBQuery;
    SQLEmpresa: TIBQuery;
    EmpresaGroup: TGroupBox;
    Label1: TLabel;
    ComboEmpresa: TRxDBLookupCombo;
    Label6: TLabel;
    DSSQLVendedor: TDataSource;
    SQLGrupo: TIBQuery;
    SQLSubGrupo: TIBQuery;
    SQLVariacao: TIBQuery;
    SQLMarca: TIBQuery;
    SQLCliente: TIBQuery;
    SQLProduto: TIBQuery;
    SQLColecao: TIBQuery;
    ComboSubGrupo: TRxDBLookupCombo;
    ComboVariacao: TRxDBLookupCombo;
    ComboColecao: TRxDBLookupCombo;
    SQLColecaoCOLEICOD: TIntegerField;
    SQLColecaoCOLEA60DESCR: TIBStringField;
    SQLColecaoPENDENTE: TIBStringField;
    SQLColecaoREGISTRO: TDateTimeField;
    RxQuery2: TRxQuery;
    IntegerField9: TIntegerField;
    DateTimeField3: TDateTimeField;
    DateTimeField4: TDateTimeField;
    IntegerField10: TIntegerField;
    StringField4: TStringField;
    BCDField5: TBCDField;
    BCDField6: TBCDField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    FloatField4: TFloatField;
    BCDField7: TBCDField;
    IntegerField16: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    BCDField8: TBCDField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    RxQuery1: TRxQuery;
    IntegerField1: TIntegerField;
    DateTimeField1: TDateTimeField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    FloatField1: TFloatField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    BCDField3: TBCDField;
    IntegerField7: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    BCDField4: TBCDField;
    IntegerField8: TIntegerField;
    DateTimeField2: TDateTimeField;
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendasPorVendedor: TFormVendasPorVendedor;

implementation

uses unDataModule;

{$R *.dfm}

procedure TFormVendasPorVendedor.BtnFecharTelaClick(Sender: TObject);
begin
  Close;
end;

procedure TFormVendasPorVendedor.FormCreate(Sender: TObject);
begin
  SQLEmpresa.Open;
  SQLGrupo.Open ;
  SQLSubGrupo.Open ;
  SQLVariacao.Open ;
  SQLMarca.Open ;
  SQLVendedor.Open ;
  SQLCliente.Open ;
  SQLProduto.Open;
  SQLColecao.Open;
end;

procedure TFormVendasPorVendedor.BtnVisualizarClick(Sender: TObject);
var
  Entra : boolean ;
  i     : integer ;
  TextoSql: String;
begin
{  SQLVendas.Close ;
  TextoSql := '';
  SQLVendas.MacrobyName('MEmpresa').Value  := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CUPOM', '') ;
  if not CheckPeriodo.Checked then
    begin
      if (EditHoraIni.Text = '') and (EditHoraFim.Text = '') then
        begin
          TextoSql := ' CUPOM.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                      'CUPOM.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
//          SQLTrocas.MacrobyName('MData').Value    := 'CUPOM.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
//                                                     'CUPOM.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
        end
      else
        begin
          TextoSql := 'CUPOM.REGISTRO >= "' + FormatDateTime('mm/dd/yyyy', De.Date)  + ' ' + EditHoraIni.Text + '" and ' +
                                                     'CUPOM.REGISTRO <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + ' ' + EditHoraFim.Text + '"' ;
//          SQLTrocas.MacrobyName('MData').Value    := 'CUPOM.REGISTRO >= "' + FormatDateTime('mm/dd/yyyy', De.Date)  + ' ' + EditHoraIni.Text + '" and ' +
//                                                     'CUPOM.REGISTRO <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + ' ' + EditHoraFim.Text + '"' ;
        end;
    end;

  if ComboVendedor.Text <> '' then
    begin
      if TextoSQL <> '' then TextoSql := TextoSql + ' and ';
      TextoSql := TextoSql + 'CUPOM.VENDICOD = ' + ComboVendedor.Value;
//    SQLTrocas.MacrobyName('MVendedor').Value  := 'CUPOM.VENDICOD = ' + ComboVendedor.Value;
    end;

  if ComboCliente.Text <> '' then
    begin
      if TextoSQL <> '' then TextoSql := TextoSql + ' and ';
      TextoSql := TextoSql + ' CUPOM.CLIEA13ID = ' + '"' + ComboCliente.Value + '"';
//    SQLTrocas.MacrobyName('MCliente').Value  := 'CUPOM.CLIEA13ID = ' + '"' + ComboCliente.Value + '"';
    end;

  if ComboGrupo.Value <> '' then
    begin
      if TextoSQL <> '' then TextoSql := TextoSql + ' and ';
      TextoSql := TextoSql +   := 'PRODUTO.GRUPICOD = ' + ComboGrupo.Value;
//    SQLTrocas.MacroByName('MGrupo').Value      := 'PRODUTO.GRUPICOD = ' + ComboGrupo.Value;
    end;

  if ComboSubGrupo.Value <> '' then
    begin
      if TextoSQL <> '' then TextoSql := TextoSql + ' and ';
      TextoSql := TextoSql + 'PRODUTO.SUBGICOD = ' + ComboSubGrupo.Value;
//    SQLTrocas.MacroByName('MSubGrupo').Value      := 'PRODUTO.SUBGICOD = ' + ComboSubGrupo.Value;
    end;

  if ComboVariacao.Value <> '' then
    begin
      if TextoSQL <> '' then TextoSql := TextoSql + ' and ';
      TextoSql := TextoSql + 'PRODUTO.VARIICOD = ' + ComboVariacao.Value;
//    SQLTrocas.MacroByName('MVariacao').Value      := 'PRODUTO.VARIICOD = ' + ComboVariacao.Value;
    end;

  if ComboMarca.Value <> '' then
    begin
      if TextoSQL <> '' then TextoSql := TextoSql + ' and ';
      TextoSql := TextoSql + 'PRODUTO.MARCICOD = ' + ComboMarca.Value;
//    SQLTrocas.MacroByName('MMarca').Value      := 'PRODUTO.MARCICOD = ' + ComboMarca.Value;
    end;

  if ComboColecao.Value <> '' then
    begin
      if TextoSQL <> '' then TextoSql := TextoSql + ' and ';
      TextoSql := TextoSql + 'PRODUTO.COLEICOD = ' + ComboColecao.Value;
//    SQLTrocas.MacroByName('MColecao').Value      := 'PRODUTO.COLEICOD = ' + ComboColecao.Value;
    end;


  SQLVendas.Open ;
  SQLTrocas.Open;

  if SQLVendas.IsEmpty then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Exit;
    end;

  TblTemporaria.Open ;
  SQLVendas.First ;
  while not SQLVendas.Eof do
    begin
      TblTemporaria.Append ;
      for i := 0 to SQLVendas.FieldCount-1 do
        if SQLVendas.Fields[i].AsString <> '' then
          TblTemporaria.FieldByName(SQLVendas.Fields[i].FieldName).AsVariant := SQLVendas.Fields[i].AsVariant ;
      TblTemporariaPRODA60DESCR.Value   := TblTemporariaPRODA60DESCR.Value+'/'+dm.SQLLocate('COR','CORICOD','CORA30DESCR',dm.SQLLocate('PRODUTO','PRODICOD','CORICOD',TblTemporariaPRODICOD.AsString));
      TblTemporariaVendedorNome.Value   := dm.SQLLocate('VENDEDOR','VENDICOD','VENDA60NOME',TblTemporariaVENDICOD.AsString);
      TblTemporariaCPITN3QTDTROCA.value    := 0;
      TblTemporariaVLRTOTALITEMTROCA.Value := 0;
      TblTemporaria.Post ;
      SQLVendas.Next ;
    end ;


  if CheckFiltro.Checked then
    begin
      SQLContasReceber.Close;

      if not CheckPeriodo.Checked then
        SQLContasReceber.MacrobyName('MData').Value := 'CTRCDEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                       'CTRCDEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"'
      else
        SQLContasReceber.MacrobyName('MData').Value := '0=0';

      if ComboCliente.Text <> '' then
        SQLContasReceber.MacrobyName('MCliente').Value := 'CLIEA13ID = ' +'"' + ComboCliente.Value+'"'
      else
        SQLContasReceber.MacrobyName('MCliente').Value := '0=0';

      SQLContasReceber.Open;

      TblTemporaria.First;
      SQLContasReceber.First;
      Entra := False;
      while not TblTemporaria.Eof do
        begin
          if SQLContasReceber.Locate('CUPOA13ID',TblTemporariaCUPOA13ID.AsString,[]) then
            Entra := True
          else
            Entra := False;

          if not Entra then
            if SQLContasReceber.Locate('NOFIA13ID',TblTemporariaCUPOA13ID.AsString,[]) then
              Entra := True
            else
              Entra := False;
          if Entra then
            TblTemporaria.Next
          else
            TblTemporaria.Delete;
        end;
    end;
  case RadioTotal.ItemIndex of
    0 : begin
          Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Produtos Vendidos.rpt' ;
          Report.ReportTitle       := 'Relatorio de Produtos Vendidos Totalizando por Data' ;
          Report.WindowStyle.Title := 'Relatorio de Produtos Vendidos Totalizando por Data' ;
        end;
    1 : begin
          Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Produtos Vendidos Total Por Produto.rpt' ;
          Report.ReportTitle       := 'Relatorio de Produtos Vendidos Totalizando por Produto' ;
          Report.WindowStyle.Title := 'Relatorio de Produtos Vendidos Totalizando por Produto' ;
        end;
    2 : begin
          Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Produtos Vendidos Total Por Mix.rpt' ;
          Report.ReportTitle       := 'Relatorio de Produtos Vendidos Mostrando por Mix' ;
          Report.WindowStyle.Title := 'Relatorio de Produtos Vendidos Mostrando por Mix' ;
        end;
    3 : begin
          SQLTrocas.First ;
          while not SQLTrocas.Eof do
            begin
              TblTemporaria.Append ;
              for i := 0 to SQLTrocas.FieldCount-1 do
                if SQLTrocas.Fields[i].AsString <> '' then
                  TblTemporaria.FieldByName(SQLTrocas.Fields[i].FieldName).AsVariant := SQLTrocas.Fields[i].AsVariant ;
              TblTemporariaCPITN3QTD.value      := 0;
              TblTemporariaVLRTOTALITEM.Value   := 0;
              TblTemporaria.Post ;
              SQLTrocas.Next ;
            end ;
          Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Produtos Vendidos Total Por Vendedor.rpt' ;
          Report.ReportTitle       := 'Relatorio de Produtos Vendidos Total por Vendedor' ;
          Report.WindowStyle.Title := 'Relatorio de Produtos Vendidos Total por Vendedor' ;
        end;
  end;
}
end;

procedure TFormVendasPorVendedor.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    Perform(CM_Dialogkey,VK_TAB,0);
  end;
end;

end.
