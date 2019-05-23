unit RelatorioVendaPeriodoMenosRetorno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, StdCtrls, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, RxQuery, Grids,
  DBGrids, RXDBCtrl, UCrpe32, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioVendaPeriodoMenosRetorno = class(TFormRelatorioTEMPLATE)
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaVlrCompra: TFloatField;
    TblTemporariaVlrVenda: TFloatField;
    TblTemporariaMargem: TFloatField;
    GroupBox4: TGroupBox;
    ComboOPEstRemessa: TRxDBLookupCombo;
    GroupBox2: TGroupBox;
    ComboOPEstRetorno: TRxDBLookupCombo;
    SQLVendasRemessa: TRxQuery;
    SQLVendasRetorno: TRxQuery;
    GroupBox3: TGroupBox;
    ComboCliente: TRxDBLookupCombo;
    DSSQLCliente: TDataSource;
    SQLCliente: TRxQuery;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEICOD: TIntegerField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    DSSQLOperacaoEstoqueRetorno: TDataSource;
    SQLOperacaoEstoqueRetorno: TRxQuery;
    SQLOperacaoEstoqueRetornoOPESICOD: TIntegerField;
    SQLOperacaoEstoqueRetornoOPESA60DESCR: TStringField;
    SQLOperacaoEstoqueRemessa: TRxQuery;
    IntegerField9: TIntegerField;
    StringField4: TStringField;
    DSSQLOperacaoEstoqueRemessa: TDataSource;
    CheckPeriodo: TCheckBox;
    DSSQLVendasRemessa: TDataSource;
    DSSQLVendasRetorno: TDataSource;
    SQLVendasRemessaEMPRICOD: TIntegerField;
    SQLVendasRemessaNOFIDEMIS: TDateTimeField;
    SQLVendasRemessaCLIEA13ID: TStringField;
    SQLVendasRemessaPRODICOD: TIntegerField;
    SQLVendasRemessaPRODA60DESCR: TStringField;
    SQLVendasRemessaPRODN3VLRCUSTO: TBCDField;
    SQLVendasRemessaNFITN3QUANT: TBCDField;
    SQLVendasRemessaNOFIINUMERO: TIntegerField;
    SQLVendasRetornoEMPRICOD: TIntegerField;
    SQLVendasRetornoNOFIDEMIS: TDateTimeField;
    SQLVendasRetornoCLIEA13ID: TStringField;
    SQLVendasRetornoPRODICOD: TIntegerField;
    SQLVendasRetornoPRODA60DESCR: TStringField;
    SQLVendasRetornoPRODN3VLRCUSTO: TBCDField;
    SQLVendasRetornoNFITN3QUANT: TBCDField;
    SQLVendasRetornoNOFIINUMERO: TIntegerField;
    SQLVendasRemessaNFITN2VLRUNIT: TBCDField;
    SQLVendasRetornoNFITN2VLRUNIT: TBCDField;
    TblTemporariaQtdeVenda: TFloatField;
    TblTemporariaEMPRICOD: TIntegerField;
    Report: TCrpe;
    TblTemporariaProdDescricao: TStringField;
    TblTemporariaVlrRetorno: TFloatField;
    TblTemporariaQtdeRetorno: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
    procedure ComboClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioVendaPeriodoMenosRetorno: TFormRelatorioVendaPeriodoMenosRetorno;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioVendaPeriodoMenosRetorno.FormCreate(
  Sender: TObject);
begin
  inherited;
  SQLCliente.Open;
  SQLOperacaoEstoqueRemessa.Open;
  SQLOperacaoEstoqueRetorno.Open;
end;

procedure TFormRelatorioVendaPeriodoMenosRetorno.ExecutarBtnClick(
  Sender: TObject);
begin
  inherited;
  if ComboOPEstRemessa.KeyValue = null then
    begin
      Showmessage('Voce deve informar a operação de estoque de Remessa!');
      exit;
    end;
  if ComboOPEstRetorno.KeyValue = null then
    begin
      Showmessage('Voce deve informar a operação de estoque de Retorno!');
      exit;
    end;

  SQLVendasRemessa.Close;
  SQLVendasRetorno.Close;
  SQLVendasRemessa.MacrobyName('MEmpresa').Value  := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'NOTAFISCAL', '') ;
  SQLVendasRetorno.MacrobyName('MEmpresa').Value  := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'NOTAFISCAL', '') ;

  if not CheckPeriodo.Checked then
    begin
      SQLVendasRemessa.MacrobyName('MData').Value := 'NOTAFISCAL.NOFIDEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                     'NOTAFISCAL.NOFIDEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
      SQLVendasRetorno.MacrobyName('MData').Value := 'NOTAFISCAL.NOFIDEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                     'NOTAFISCAL.NOFIDEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
    end
  else
    begin
      SQLVendasRemessa.MacrobyName('MData').Value := '0=0';
      SQLVendasRetorno.MacrobyName('MData').Value := '0=0';
    end;

  if ComboCliente.Value <> '' then
    begin
      SQLVendasRemessa.MacrobyName('MCliente').Value := 'NOTAFISCAL.CLIEA13ID = ' + '"' + ComboCliente.Value + '"';
      SQLVendasRetorno.MacrobyName('MCliente').Value := 'NOTAFISCAL.CLIEA13ID = ' + '"' + ComboCliente.Value + '"';
    end
  else
    begin
      SQLVendasRemessa.MacrobyName('MCliente').Value  := '0=0';
      SQLVendasRetorno.MacrobyName('MCliente').Value  := '0=0';
    end;

  SQLVendasRemessa.MacrobyName('MOPEstoque').Value := 'NOTAFISCAL.OPESICOD = '    + ComboOPEstRemessa.KeyValue ;
  SQLVendasRetorno.MacrobyName('MOPEstoque').Value := 'NOTAFISCAL.OPESICOD = '    + ComboOPEstRetorno.KeyValue ;

  SQLVendasRemessa.Open;
  SQLVendasRetorno.Open;

  TblTemporaria.Open ;

  SQLVendasRemessa.First ;
  while not SQLVendasRemessa.Eof do
    begin
      TblTemporaria.First;
      if not TblTemporaria.Locate('PRODICOD',SQLVendasRemessaPRODICOD.AsString,[]) then
        begin
          TblTemporaria.Append ;
          TblTemporariaEMPRICOD.Value      := SQLVendasRemessaEMPRICOD.Value ;
          TblTemporariaCLIEA13ID.Value     := SQLVendasRemessaCLIEA13ID.Value ;
          TblTemporariaPRODICOD.Value      := SQLVendasRemessaPRODICOD.Value ;
          TblTemporariaProdDescricao.Value := SQLVendasRemessaPRODA60DESCR.Value ;
          TblTemporariaQtdeVenda.Value     := SQLVendasRemessaNFITN3QUANT.Value;
          TblTemporariaVlrVenda.Value      := SQLVendasRemessaNFITN2VLRUNIT.Value * SQLVendasRemessaNFITN3QUANT.Value ;
          TblTemporariaVlrCompra.Value     := SQLVendasRemessaPRODN3VLRCUSTO.Value;
          TblTemporariaVlrRetorno.Value    := 0;
          TblTemporariaQtdeRetorno.Value   := 0;
        end
      else
        begin
          TblTemporaria.Edit;
          TblTemporariaVlrVenda.Value    := TblTemporariaVlrVenda.Value  + (SQLVendasRemessaNFITN2VLRUNIT.Value * SQLVendasRemessaNFITN3QUANT.Value);
          TblTemporariaQtdeVenda.Value   := TblTemporariaQtdeVenda.Value + SQLVendasRemessaNFITN3QUANT.Value;
        end;
      TblTemporaria.Post ;
      SQLVendasRemessa.Next ;
    end ;

  SQLVendasRetorno.First ;
  while not SQLVendasRetorno.Eof do
    begin
      TblTemporaria.First;
      if TblTemporaria.Locate('PRODICOD',SQLVendasRetornoPRODICOD.AsString,[]) then
        begin
          TblTemporaria.Edit;
          TblTemporariaVlrRetorno.Value  := TblTemporariaVlrRetorno.Value  + (SQLVendasRetornoNFITN2VLRUNIT.Value * SQLVendasRetornoNFITN3QUANT.Value) ;
          TblTemporariaQtdeRetorno.Value := TblTemporariaQtdeRetorno.Value + SQLVendasRetornoNFITN3QUANT.Value ;
          TblTemporaria.Post ;
        end;
      SQLVendasRetorno.Next ;
    end ;

  TblTemporaria.First ;
  while not TblTemporaria.Eof do
    begin
      TblTemporaria.Edit;
      TblTemporariaVlrCompra.Value  := (TblTemporariaQtdeVenda.Value - TblTemporariaQtdeRetorno.Value) * TblTemporariaVlrCompra.Value;
      TblTemporariaMargem.Value     := (TblTemporariaVlrVenda.Value - TblTemporariaVlrRetorno.Value) - TblTemporariaVlrCompra.Value ;
      TblTemporaria.Post ;
      TblTemporaria.Next ;
    end ;

  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Vendas Remessa menos Retorno.rpt' ;
  Report.ReportTitle       := 'Relatorio de Vendas Remessa menos Retorno' ;
  Report.WindowStyle.Title := 'Relatorio de Vendas Remessa menos Retorno' ;
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
  Report.Formulas.Name := 'Cliente' ;
  if ComboCliente.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboCliente.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;

  Report.Formulas.Send;
  Report.Execute ;
end;

procedure TFormRelatorioVendaPeriodoMenosRetorno.ComboClienteKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

end.
