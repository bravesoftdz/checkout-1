unit CadastroCotacaoCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBCtrls, ToolEdit, RXDBCtrl, RxDBComb, DB,
  DBTables, DBActns, ActnList, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, RXCtrls, Buttons, ExtCtrls, ppPrnabl, ppClass, ppviewr,
  ppCtrls, ppBands, ppCache, ppDB, ppDBPipe, ppDBBDE, ppComm, ppRelatv,
  ppProd, ppReport, RxLookup, UCrpe32, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroCotacaoCompra = class(TFormCadastroTEMPLATE)
    SQLTemplateCTCPA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateCTCPICOD: TIntegerField;
    SQLTemplateCTCPDEMIS: TDateTimeField;
    SQLTemplateCTCPCSTATUS: TStringField;
    SQLTemplateCTCPN2TOTITENS: TBCDField;
    SQLTemplateCTCPN3TOTDESC: TBCDField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    RxDBComboBox1: TRxDBComboBox;
    Label2: TLabel;
    DBDateEdit3: TDBDateEdit;
    Label6: TLabel;
    DbCodIntegrado: TDBEdit;
    LBCodPedido: TLabel;
    Panel6: TPanel;
    SQLCotacaoCompraItem: TRxQuery;
    DSSQLCotacaoCompraItem: TDataSource;
    SQLCotacaoCompraItemCTCPA13ID: TStringField;
    SQLCotacaoCompraItemCTITIPOS: TIntegerField;
    SQLCotacaoCompraItemPRODICOD: TIntegerField;
    SQLCotacaoCompraItemCTITN3CAPEMBAL: TBCDField;
    SQLCotacaoCompraItemCTITN3QTDEMBAL: TBCDField;
    SQLCotacaoCompraItemCTITN3VLREMBAL: TBCDField;
    SQLCotacaoCompraItemCTITN3VLRUNIT: TBCDField;
    SQLGeral: TRxQuery;
    ppReportCotacao: TppReport;
    PipeCotacao: TppBDEPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppEmpresa: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppIDData: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppUN: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    MnProdutoscomNecessidadeCompra: TMenuItem;
    Button4: TRxSpeedButton;
    SQLCotacaoCompraItemForn: TRxQuery;
    DSSQLCotacaoCompraItemForn: TDataSource;
    SQLCotacaoCompraItemFornCTCPA13ID: TStringField;
    SQLCotacaoCompraItemFornCTITIPOS: TIntegerField;
    SQLCotacaoCompraItemFornPRODICOD: TIntegerField;
    SQLCotacaoCompraItemFornFORNICOD: TIntegerField;
    SQLCotacaoCompraItemFornCTITN3CAPEMBAL: TBCDField;
    SQLCotacaoCompraItemFornCTITN3QTDEMBAL: TBCDField;
    SQLCotacaoCompraItemFornCTITN3VLREMBAL: TBCDField;
    SQLCotacaoCompraItemFornCTITN3VLRUNIT: TBCDField;
    SQLCotacaoCompraItemFornREGISTRO: TDateTimeField;
    SQLCotacaoCompraItemFornPENDENTE: TStringField;
    MnListaConfVencedores: TMenuItem;
    PipeVencedores: TppBDEPipeline;
    ppReportVencedores: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppEmpresa1: TppLabel;
    ppLabel13: TppLabel;
    ppIDData1: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppUN1: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppFooterBand2: TppFooterBand;
    TabSheetManutResult: TTabSheet;
    SQLCotacaoCompraItemFornProdutoDescricao: TStringField;
    SQLCotacaoCompraItemFornReferencia: TStringField;
    Panel4: TPanel;
    SQLFornecedor: TRxQuery;
    SQLFornecedorFORNICOD: TIntegerField;
    SQLFornecedorFORNA60RAZAOSOC: TStringField;
    DSSQLFornecedor: TDataSource;
    DBGrid1: TDBGrid;
    GroupFiltro: TGroupBox;
    ComboFornecedor: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    DBGrid2: TDBGrid;
    Button6: TRxSpeedButton;
    ppLabel14: TppLabel;
    ppVencedor: TppLabel;
    SQLCotacaoCompraItemFornCTITCEMPATE: TStringField;
    SQLCotacaoCompraItemREGISTRO: TDateTimeField;
    SQLCotacaoCompraItemPENDENTE: TStringField;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoPRODA60REFER: TStringField;
    SQLCotacaoCompraItemProdutoDescricao: TStringField;
    SQLCotacaoCompraItemReferencia: TStringField;
    Button5: TRxSpeedButton;
    SQLDistinct: TRxQuery;
    SQLCotacaoCompraItemFornCTITCVENCEDOR: TStringField;
    MnListaOficialVencedorPorFornec: TMenuItem;
    ppReportOficialVencedores: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppEmpresa2: TppLabel;
    ppLabel10: TppLabel;
    ppIDData2: TppLabel;
    ppLabel16: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText11: TppDBText;
    ppUN2: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppFornecedor2: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape: TppShape;
    SQLCotacaoItemConsulta: TRxQuery;
    SQLCotacaoItemConsultaCTCPA13ID: TStringField;
    SQLCotacaoItemConsultaCTITIPOS: TIntegerField;
    SQLCotacaoItemConsultaPRODICOD: TIntegerField;
    SQLCotacaoItemConsultaCTITN3CAPEMBAL: TBCDField;
    SQLCotacaoItemConsultaCTITN3QTDEMBAL: TBCDField;
    SQLCotacaoItemConsultaCTITN3VLREMBAL: TBCDField;
    SQLCotacaoItemConsultaCTITN3VLRUNIT: TBCDField;
    SQLCotacaoItemConsultaPRODA60DESCR: TStringField;
    SQLCotacaoItemConsultaPRODA60REFER: TStringField;
    dsSQLCotacaoItemConsulta: TDataSource;
    ppDBText15: TppDBText;
    ppLabel1: TppLabel;
    SQLCotacaoItemFornConsulta: TRxQuery;
    dsSQLCotacaoItemFornConsulta: TDataSource;
    SQLCotacaoItemFornConsultaCTCPA13ID: TStringField;
    SQLCotacaoItemFornConsultaCTITIPOS: TIntegerField;
    SQLCotacaoItemFornConsultaPRODICOD: TIntegerField;
    SQLCotacaoItemFornConsultaFORNICOD: TIntegerField;
    SQLCotacaoItemFornConsultaCTITN3CAPEMBAL: TBCDField;
    SQLCotacaoItemFornConsultaCTITN3QTDEMBAL: TBCDField;
    SQLCotacaoItemFornConsultaCTITN3VLREMBAL: TBCDField;
    SQLCotacaoItemFornConsultaCTITN3VLRUNIT: TBCDField;
    SQLCotacaoItemFornConsultaCTITCEMPATE: TStringField;
    SQLCotacaoItemFornConsultaCTITCVENCEDOR: TStringField;
    SQLCotacaoItemFornConsultaPRODA60DESCR: TStringField;
    SQLCotacaoItemFornConsultaPRODA60REFER: TStringField;
    ppDBText16: TppDBText;
    ppLabel15: TppLabel;
    BitBtn2: TBitBtn;
    ppVlrTotItem: TppLabel;
    ppMarca: TppLabel;
    ppLabel25: TppLabel;
    ppMarca1: TppLabel;
    ppDBText17: TppDBText;
    ppLabel29: TppLabel;
    ppMarca2: TppLabel;
    TblRelCotacaoConsulta: TTable;
    Report: TCrpe;
    TblRelCotacaoConsultaCTCPA13ID: TStringField;
    TblRelCotacaoConsultaCTITIPOS: TIntegerField;
    TblRelCotacaoConsultaPRODICOD: TIntegerField;
    TblRelCotacaoConsultaCTITN3CAPEMBAL: TBCDField;
    TblRelCotacaoConsultaCTITN3QTDEMBAL: TBCDField;
    TblRelCotacaoConsultaCTITN3VLREMBAL: TBCDField;
    TblRelCotacaoConsultaCTITN3VLRUNIT: TBCDField;
    TblRelCotacaoConsultaPRODA60DESCR: TStringField;
    TblRelCotacaoConsultaPRODA60REFER: TStringField;
    TblRelCotacaoConsultaMARCA: TStringField;
    TblRelCotacaoConsultaUNIDADE: TStringField;
    MnExportarProdutos: TMenuItem;
    AdvOfficeStatusBar2: TAdvOfficeStatusBar;
    RxLabel1: TRxLabel;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    RxLabel2: TRxLabel;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure SQLCotacaoCompraItemBeforePost(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure MnProdutoscomNecessidadeCompraClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure SQLCotacaoCompraItemFornBeforePost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure MnListaConfVencedoresClick(Sender: TObject);
    procedure ppReportCotacaoPreviewFormCreate(Sender: TObject);
    procedure ppReportVencedoresPreviewFormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ppHeaderBand2BeforePrint(Sender: TObject);
    procedure MnListaOficialVencedorPorFornecClick(Sender: TObject);
    procedure ppHeaderBand3BeforePrint(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppReportOficialVencedoresPreviewFormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure MnExportarProdutosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroCotacaoCompra: TFormCadastroCotacaoCompra;

implementation

uses DataModulo, UnitLibrary, DataModuloTemplate, WaitWindow,
  TelaCotacaoCompraItemFiltro, TelaCotacaoCompraItemFiltroDigForn;

{$R *.dfm}

procedure TFormCadastroCotacaoCompra.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'COTACAOCOMPRA';
  SQLFornecedor.Open;
end;

procedure TFormCadastroCotacaoCompra.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateCTCPCSTATUS.Value  := 'A';
  SQLTemplateCTCPDEMIS.Value    := Date;
//  SQLTemplateEMPRICOD.Value     := EmpresaCorrente;
end;

procedure TFormCadastroCotacaoCompra.Button3Click(Sender: TObject);
begin
  inherited;
  if SQLTemplateCTCPCSTATUS.Value <> 'A' then
    begin
      ShowMessage('Atenção! Cotação de Compra não esta com Status de Aberto, verifique!');
      Exit;
    end;
  Application.CreateForm(TFormTelaCotacaoCompraItemFiltro,FormTelaCotacaoCompraItemFiltro);
  SQLCotacaoItemConsulta.Close;
  SQLCotacaoItemConsulta.Open;
  if not SQLCotacaoItemConsulta.IsEmpty then
    begin
      SQLCotacaoItemConsulta.First;
      while not SQLCotacaoItemConsulta.eof do
        begin
          If DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[SQLCotacaoItemConsultaPRODICOD.AsString],1) Then
            begin
              FormTelaCotacaoCompraItemFiltro.TblTempComprados.Append;
              FormTelaCotacaoCompraItemFiltro.TblTempCompradosPRODICOD.Value        := SQLCotacaoItemConsultaPRODICOD.Value;
              FormTelaCotacaoCompraItemFiltro.TblTempCompradosPRODA60DESCR.Value    := SQLCotacaoItemConsultaPRODA60DESCR.Value;
              FormTelaCotacaoCompraItemFiltro.TblTempCompradosQTDEMBAL.AsVariant    := SQLCotacaoItemConsultaCTITN3CAPEMBAL.Value;
              FormTelaCotacaoCompraItemFiltro.TblTempCompradosQTDECOMPRADO.Value    := SQLCotacaoItemConsultaCTITN3QTDEMBAL.Value;
              FormTelaCotacaoCompraItemFiltro.TblTempCompradosPRODN3VLRCOMPRA.Value := SQLCotacaoItemConsultaCTITN3VLREMBAL.Value;
              FormTelaCotacaoCompraItemFiltro.TblTempCompradosRef.Value             := SQLCotacaoItemConsultaPRODA60REFER.Value;
              FormTelaCotacaoCompraItemFiltro.TblTempCompradosMarca.Value           := dm.SQLLocate('MARCA','MARCICOD','MARCA60DESCR',DM.SQLTemplate.FindField('MARCICOD').AsString);
              FormTelaCotacaoCompraItemFiltro.TblTempCompradosCor.Value             := dm.SQLLocate('COR','CORICOD','CORA30DESCR',DM.SQLTemplate.FindField('CORICOD').AsString);
              FormTelaCotacaoCompraItemFiltro.TblTempCompradosUltVlrCusto.Value     := SQLCotacaoItemConsultaCTITN3VLRUNIT.Value;
              if not FileExists('NaoMostraSaldoConsultaProduto.Arq') then
                begin
                  SQLGeral.Close ;
                  SQLGeral.SQL.Clear ;
                  SQLGeral.SQL.Add('select PSLDN3QTDE, PSLDN3QTDMIN, PSLDN3QTDMAX from PRODUTOSALDO') ;
                  SQLGeral.SQL.Add('where EMPRICOD = ' + EmpresaPadrao) ;
                  SQLGeral.SQL.Add('and   PRODICOD = ' + SQLCotacaoItemConsultaPRODICOD.AsString) ;
                  SQLGeral.Open ;
                  if not SQLGeral.Eof then
                    FormTelaCotacaoCompraItemFiltro.TblTempCompradosSALDO.Value  := SQLGeral.FieldByName('PSLDN3QTDE').Value;
                end;
              FormTelaCotacaoCompraItemFiltro.TblTempComprados.Post;
            end;
          SQLCotacaoItemConsulta.Next;
        end;
    end;
  FormTelaCotacaoCompraItemFiltro.ShowModal;
  if FormTelaCotacaoCompraItemFiltro.ModalResult = MrOk then
    begin
      FormTelaCotacaoCompraItemFiltro.TblTempComprados.First;
      if FormTelaCotacaoCompraItemFiltro.TblTempComprados.RecordCount > 0 then
        begin
          dm.SQLTemplate.Close;
          dm.SQLTemplate.SQL.Clear;
          dm.SQLTemplate.SQL.add('Delete from CotacaoCompraItem');
          dm.SQLTemplate.SQL.add('Where CTCPA13ID = "'+ SQLTemplateCTCPA13ID.AsString+'"');
          dm.SQLTemplate.ExecSQL;
        end;

      SQLCotacaoCompraItem.Close;
      SQLCotacaoCompraItem.Open;

      FormTelaCotacaoCompraItemFiltro.TblTempComprados.first;
      While Not FormTelaCotacaoCompraItemFiltro.TblTempComprados.Eof Do
        Begin
          if FormTelaCotacaoCompraItemFiltro.TblTempCompradosQTDECOMPRADO.Value > 0 then
            begin
              SQLCotacaoCompraItem.Append;
              SQLCotacaoCompraItemCTCPA13ID.Value        := SQLTemplateCTCPA13ID.Value;
              SQLCotacaoCompraItemPRODICOD.Value         := FormTelaCotacaoCompraItemFiltro.TblTempCompradosPRODICOD.Value;
              SQLCotacaoCompraItemCTITN3CAPEMBAL.Value   := FormTelaCotacaoCompraItemFiltro.TblTempCompradosQTDEMBAL.Value;
              SQLCotacaoCompraItemCTITN3QTDEMBAL.Value   := FormTelaCotacaoCompraItemFiltro.TblTempCompradosQTDECOMPRADO.Value;
              SQLCotacaoCompraItemCTITN3VLREMBAL.Value   := FormTelaCotacaoCompraItemFiltro.TblTempCompradosPRODN3VLRCOMPRA.Value;
              SQLCotacaoCompraItemCTITN3VLRUNIT.Value    := FormTelaCotacaoCompraItemFiltro.TblTempCompradosPRODN3VLRCOMPRA.Value/FormTelaCotacaoCompraItemFiltro.TblTempCompradosQTDEMBAL.Value;
              SQLCotacaoCompraItemREGISTRO.Value         := Now;
              SQLCotacaoCompraItemPENDENTE.Value         := 'S';
              SQLCotacaoCompraItem.Post;
            end;
          FormTelaCotacaoCompraItemFiltro.TblTempComprados.Next;
        End;
    end;
  FormTelaCotacaoCompraItemFiltro.Free;
  Button2.Click;
end;

procedure TFormCadastroCotacaoCompra.SQLCotacaoCompraItemBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  SQLCotacaoCompraItemCTITIPOS.Value := dm.ProximoCodigoUnico('CotacaoCompraItem',DataSet,DSSQLCotacaoCompraItem,1);
end;

procedure TFormCadastroCotacaoCompra.Button1Click(Sender: TObject);
begin
  inherited;
  SQLCotacaoItemConsulta.Close;
  SQLCotacaoItemConsulta.Open;
end;

procedure TFormCadastroCotacaoCompra.ppHeaderBand1BeforePrint(
  Sender: TObject);
begin
  inherited;
  ppEmpresa.Caption  := 'Empresa: '    + dm.SQLEmpresaEMPRA60NOMEFANT.AsString;
  ppIDData.Caption   := 'ID Cotação: ' + SQLTemplateCTCPA13ID.AsString + ' em ' +
                                         FormatDateTime('dd/mm/yyyy',SQLTemplateCTCPDEMIS.value);
end;

procedure TFormCadastroCotacaoCompra.ppDetailBand1BeforePrint(
  Sender: TObject);
begin
  inherited;
  ppUN.Caption    := dm.SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',dm.SQLLocate('PRODUTO','PRODICOD','UNIDICOD',SQLCotacaoItemConsultaPRODICOD.AsString));
  ppMarca.Caption := dm.SQLLocate('MARCA','MARCICOD','MARCA60DESCR', dm.SQLLocate('PRODUTO','PRODICOD','MARCICOD',SQLCotacaoItemConsultaPRODICOD.AsString));
end;

procedure TFormCadastroCotacaoCompra.MnProdutoscomNecessidadeCompraClick(
  Sender: TObject);
var I : integer;
begin
  inherited;
  SQLCotacaoItemConsulta.Close;
  SQLCotacaoItemConsulta.Open;
  // ppReportCotacao.Print;

  TblRelCotacaoConsulta.Close ;
  try
    TblRelCotacaoConsulta.DeleteTable ;
    TblRelCotacaoConsulta.CreateTable ;
  except
    on E:Exception do
      begin
        if pos('Table is busy',E.Message) > 0 then
          ShowMessage('A tabela já está sendo usada por outro módulo, por favor verifique e tente novamente.');
        TblRelCotacaoConsulta.CreateTable ;
      end;
  end ;
  TblRelCotacaoConsulta.Open ;

  // Popula tabela temp
  SQLCotacaoItemConsulta.DisableControls;
  SQLCotacaoItemConsulta.First;
  while not SQLCotacaoItemConsulta.Eof do
    begin
       TblRelCotacaoConsulta.Append;
       for I := 0 to TblRelCotacaoConsulta.FieldCount - 1 do
         try TblRelCotacaoConsulta.Fields.Fields[I].Value := SQLCotacaoItemConsulta.FieldByName(TblRelCotacaoConsulta.Fields.Fields[I].FieldName).Value; except Application.ProcessMessages end;
       TblRelCotacaoConsulta.FieldByName('MARCA').Value   := SQLLocate('MARCA','MARCICOD','MARCA60DESCR',SQLLocate('PRODUTO','PRODICOD','MARCICOD',SQLCotacaoItemConsultaPRODICOD.AsString));
       TblRelCotacaoConsulta.FieldByName('UNIDADE').Value := SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',dm.SQLLocate('PRODUTO','PRODICOD','UNIDICOD',SQLCotacaoItemConsultaPRODICOD.AsString));
       TblRelCotacaoConsulta.Post;
       SQLCotacaoItemConsulta.Next;
    end;

  SQLCotacaoItemConsulta.EnableControls;
  TblRelCotacaoConsulta.Close;

  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Cotacao Consulta.rpt' ;
  Report.ReportTitle       := 'Cotação de Preço - Bate Bola' ;
  Report.WindowStyle.Title := 'Cotação de Preço - Bate Bola' ;
  //SETAR LEGENDA DE FILTROS NO RPT\\
  Report.Formulas.Retrieve;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa' ;
  Report.Formulas.Formula.Text := '"' + dm.SQLEmpresaEMPRA60NOMEFANT.AsString + '"';
  Report.Formulas.Name         := 'ID' ;
  Report.Formulas.Formula.Text := '"' + SQLTemplateCTCPA13ID.AsString + ' em ' +
                                         FormatDateTime('dd/mm/yyyy',SQLTemplateCTCPDEMIS.value) + '"';
  Report.Formulas.Send;
  Report.Execute;

end;

procedure TFormCadastroCotacaoCompra.Button4Click(Sender: TObject);
begin
  inherited;
  if SQLTemplateCTCPCSTATUS.Value <> 'A' then
    begin
      ShowMessage('Atenção! Cotação de Compra não esta com Status de Aberto, verifique!');
      Exit;
    end;
  Application.CreateForm(TFormTelaCotacaoCompraItemFiltroDigForn,FormTelaCotacaoCompraItemFiltroDigForn);
  SQLCotacaoItemConsulta.Close;
  SQLCotacaoItemConsulta.Open;
  SQLCotacaoItemConsulta.First;
  if not SQLCotacaoItemConsulta.IsEmpty then
    begin
      while not SQLCotacaoItemConsulta.Eof do
        begin
          If DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[SQLCotacaoItemConsultaPRODICOD.AsString],1) Then
            begin
              FormTelaCotacaoCompraItemFiltroDigForn.TblTemporaria.Append;
              FormTelaCotacaoCompraItemFiltroDigForn.TblTemporariaPRODICOD.Value        := SQLCotacaoItemConsultaPRODICOD.Value;
              FormTelaCotacaoCompraItemFiltroDigForn.TblTemporariaPRODA60DESCR.Value    := SQLCotacaoItemConsultaPRODA60DESCR.Value;
              FormTelaCotacaoCompraItemFiltroDigForn.TblTemporariaPRODA60REFER.Value    := SQLCotacaoItemConsultaPRODA60REFER.Value;
              FormTelaCotacaoCompraItemFiltroDigForn.TblTemporariaQTDEMBAL.AsVariant    := SQLCotacaoItemConsultaCTITN3CAPEMBAL.Value;
              FormTelaCotacaoCompraItemFiltroDigForn.TblTemporariaQTDECOMPRADO.Value    := SQLCotacaoItemConsultaCTITN3QTDEMBAL.Value;
              FormTelaCotacaoCompraItemFiltroDigForn.TblTemporariaPRODN3VLRCOMPRA.Value := 0;
              FormTelaCotacaoCompraItemFiltroDigForn.TblTemporaria.Post;
            end;
          SQLCotacaoItemConsulta.Next;
        end;
    end;
  FormTelaCotacaoCompraItemFiltroDigForn.TblTemporaria.First;
  FormTelaCotacaoCompraItemFiltroDigForn.ShowModal;
  if FormTelaCotacaoCompraItemFiltroDigForn.ModalResult = MrOk then
    begin
      SQLCotacaoCompraItemForn.Close;
      SQLCotacaoCompraItemForn.MacroByName('MFiltro').Value := '0=0';
      SQLCotacaoCompraItemForn.Open;
      FormTelaCotacaoCompraItemFiltroDigForn.TblTemporaria.First;
      While Not FormTelaCotacaoCompraItemFiltroDigForn.TblTemporaria.Eof Do
        Begin
          if FormTelaCotacaoCompraItemFiltroDigForn.TblTemporariaPRODN3VLRCOMPRA.Value > 0 then
            begin
              SQLCotacaoCompraItemForn.Append;
              SQLCotacaoCompraItemFornCTCPA13ID.Value        := SQLTemplateCTCPA13ID.Value;
              SQLCotacaoCompraItemFornCTITIPOS.Value         := FormTelaCotacaoCompraItemFiltroDigForn.TblTemporaria.RecNo;
              SQLCotacaoCompraItemFornPRODICOD.Value         := FormTelaCotacaoCompraItemFiltroDigForn.TblTemporariaPRODICOD.Value;
              SQLCotacaoCompraItemFornCTITN3CAPEMBAL.Value   := FormTelaCotacaoCompraItemFiltroDigForn.TblTemporariaQTDEMBAL.Value;
              SQLCotacaoCompraItemFornCTITN3QTDEMBAL.Value   := FormTelaCotacaoCompraItemFiltroDigForn.TblTemporariaQTDECOMPRADO.Value;
              SQLCotacaoCompraItemFornCTITN3VLREMBAL.Value   := FormTelaCotacaoCompraItemFiltroDigForn.TblTemporariaPRODN3VLRCOMPRA.Value;
              SQLCotacaoCompraItemFornCTITN3VLRUNIT.Value    := FormTelaCotacaoCompraItemFiltroDigForn.TblTemporariaPRODN3VLRCOMPRA.Value/FormTelaCotacaoCompraItemFiltroDigForn.TblTemporariaQTDEMBAL.Value;
              SQLCotacaoCompraItemFornFORNICOD.Value         := FormTelaCotacaoCompraItemFiltroDigForn.ComboFornecedor.KeyValue;
              SQLCotacaoCompraItemFornCTITCEMPATE.Value      := 'N';
              SQLCotacaoCompraItemFornREGISTRO.Value         := Now;
              SQLCotacaoCompraItemFornPENDENTE.Value         := 'S';
              SQLCotacaoCompraItemForn.Post;
            end;
          FormTelaCotacaoCompraItemFiltroDigForn.TblTemporaria.Next;
        End;
    end;
  FormTelaCotacaoCompraItemFiltroDigForn.Free;
end;

procedure TFormCadastroCotacaoCompra.SQLCotacaoCompraItemFornBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  SQLCotacaoCompraItemFornCTITIPOS.Value := dm.ProximoCodigoUnico('CotacaoCompraItem',DataSet,DSSQLCotacaoCompraItemForn,1);
end;

procedure TFormCadastroCotacaoCompra.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if ComboFornecedor.Value <> '' then
    begin
      SQLCotacaoCompraItemForn.Close;
      SQLCotacaoCompraItemForn.MacroByName('MFiltro').Value := 'CTCPA13ID="'+ SQLTemplateCTCPA13ID.AsString+'" and FORNICOD = '+ ComboFornecedor.Value;
      SQLCotacaoCompraItemForn.Open;
      SQLCotacaoCompraItemForn.First;
      DBGrid2.SetFocus;
    end
  else
    begin
      ShowMessage('Atenção! Não foi escolhido nenhum Fornecedor!');
      ComboFornecedor.SetFocus;
    end;
end;

procedure TFormCadastroCotacaoCompra.Button6Click(Sender: TObject);
begin
  inherited;
  if SQLTemplateCTCPCSTATUS.Value <> 'A' then
    begin
      ShowMessage('Atenção! Cotação de Compra não esta com Status de Aberto, verifique!');
      Exit;
    end;
  SQLCotacaoCompraItemForn.Close;
  PagePrincipal.ActivePage := TabSheetManutResult;
end;

procedure TFormCadastroCotacaoCompra.ppDetailBand2BeforePrint(
  Sender: TObject);
begin
  inherited;
  ppVencedor.Caption := Copy(SQLLocate('FORNECEDOR','FORNICOD','FORNA60RAZAOSOC',SQLCotacaoItemFornConsultaFORNICOD.AsString),1,22);
  ppUN1.Caption   := dm.SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',dm.SQLLocate('PRODUTO','PRODICOD','UNIDICOD',SQLCotacaoItemFornConsultaPRODICOD.AsString));
  ppMarca1.Caption := dm.SQLLocate('MARCA','MARCICOD','MARCA60DESCR', dm.SQLLocate('PRODUTO','PRODICOD','MARCICOD',SQLCotacaoItemFornConsultaPRODICOD.AsString));

  if SQLCotacaoItemFornConsultaCTITCEMPATE.Value = 'S' then
    ppShape.Brush.Color := clGray
  else
    ppShape.Brush.Color := clWhite;
end;

procedure TFormCadastroCotacaoCompra.MnListaConfVencedoresClick(
  Sender: TObject);
var I : integer;
begin
  inherited;
  // Listegm para Conferencia de Vencedores

  SQLCotacaoItemFornConsulta.Close;
  SQLCotacaoItemFornConsulta.MacroByName('MFiltro').Value := 'CTCPA13ID="'+SQLTemplateCTCPA13ID.Value+'" and CTITCVENCEDOR = "S"';
  SQLCotacaoItemFornConsulta.MacroByName('Ordem').Value   := 'ORDER BY PRODUTO.PRODA60DESCR ASC';
  SQLCotacaoItemFornConsulta.Open;
  ppReportVencedores.Print;
end;

procedure TFormCadastroCotacaoCompra.ppReportCotacaoPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ppReportCotacao.PreviewForm.WindowState := wsMaximized;
end;

procedure TFormCadastroCotacaoCompra.ppReportVencedoresPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ppReportVencedores.PreviewForm.WindowState := wsMaximized;
end;

procedure TFormCadastroCotacaoCompra.Button5Click(Sender: TObject);
var vProdutoAnterior : Integer;
    vPrecoAnterior : Double;
begin
  inherited;
  // Limpa Campo Vencedores e Empate
  SQLGeral.Close;
  SQLGeral.SQL.Clear;
  SQLGeral.SQL.Add('Update COTACAOCOMPRAITEMFORN SET Pendente="S", CTITCVENCEDOR="", CTITCEMPATE=""  Where CTCPA13ID=:ID');
  SQLGeral.ParamByName('ID').AsString := SQLTemplate.FieldByName('CTCPA13ID').AsString;
  SQLGeral.ExecSQL;

  // Diz quem venceu
  SQLDistinct.Close;
  SQLDistinct.ParamByName('ID').AsString   := SQLTemplateCTCPA13ID.AsString;
  SQLDistinct.MacroByName('MFiltro').Value := '0=0';
  SQLDistinct.Open;
  SQLDistinct.First;
  While not SQLDistinct.Eof do
    begin
      SQLGeral.Close;
      SQLGeral.SQL.Clear;
      SQLGeral.SQL.Add('Update COTACAOCOMPRAITEMFORN SET Pendente="S", CTITCVENCEDOR="S" WHERE CTCPA13ID=:ID AND PRODICOD=:PRODUTO AND '+
                       'COTACAOCOMPRAITEMFORN.CTITN3VLREMBAL = (SELECT MIN(COTACAOCOMPRAITEMFORN.CTITN3VLREMBAL) FROM COTACAOCOMPRAITEMFORN WHERE CTCPA13ID=:ID AND PRODICOD=:PRODUTO)');
      SQLGeral.ParamByName('PRODUTO').AsInteger  := SQLDistinct.FieldByName('PRODICOD').AsInteger;
      SQLGeral.ParamByName('ID').AsString        := SQLTemplateCTCPA13ID.AsString;
      SQLGeral.ExecSQL;
      SQLDistinct.Next;
    end;
  SQLDistinct.Close;

  // Diz quem Empatou
  SQLDistinct.Close;
  SQLDistinct.ParamByName('ID').AsString := SQLTemplateCTCPA13ID.AsString;
  SQLDistinct.MacroByName('MFiltro').Value := 'CTITCVENCEDOR = "S"';
  SQLDistinct.Open;
  SQLDistinct.First;
  vProdutoAnterior     := 0;
  vPrecoAnterior       := 0;
  While not SQLDistinct.Eof do
    begin
      If (vProdutoAnterior    = SQLDistinct.FieldByName('PRODICOD').AsInteger) and
         (vPrecoAnterior      = SQLDistinct.FieldByName('CTITN3VLREMBAL').AsFloat) then
        begin
          SQLGeral.Close;
          SQLGeral.SQL.Clear;
          SQLGeral.SQL.Add('Update COTACAOCOMPRAITEMFORN SET Pendente="S", CTITCEMPATE="S" WHERE CTCPA13ID=:ID AND PRODICOD=:PRODUTO');
          SQLGeral.ParamByName('PRODUTO').AsInteger     := SQLDistinct.FieldByName('PRODICOD').AsInteger;
          SQLGeral.ParamByName('ID').AsString           := SQLDistinct.FieldByName('CTCPA13ID').AsString;
          SQLGeral.ExecSQL;
        end;
      vProdutoAnterior     := SQLDistinct.FieldByName('PRODICOD').AsInteger;
      vPrecoAnterior       := SQLDistinct.FieldByName('CTITN3VLREMBAL').AsFloat;
      SQLDistinct.Next;
    end;
  SQLDistinct.Close;
  if Pergunta('Sim','Deseja Imprimir Listagem para Conferencia dos Vencedores?') then
    MnListaConfVencedores.Click;
end;

procedure TFormCadastroCotacaoCompra.ppHeaderBand2BeforePrint(
  Sender: TObject);
begin
  inherited;
  ppEmpresa1.Caption  := 'Empresa: '    + dm.SQLEmpresaEMPRA60NOMEFANT.AsString;
  ppIDData1.Caption   := 'ID Cotação: ' + SQLTemplateCTCPA13ID.AsString + ' em ' +
                                         FormatDateTime('dd/mm/yyyy',SQLTemplateCTCPDEMIS.value);
end;

procedure TFormCadastroCotacaoCompra.MnListaOficialVencedorPorFornecClick(
  Sender: TObject);
begin
  inherited;
  SQLCotacaoItemFornConsulta.Close;
  SQLCotacaoItemFornConsulta.MacroByName('MFiltro').Value := 'CTCPA13ID="'+SQLTemplateCTCPA13ID.Value+'" and CTITCVENCEDOR = "S"';
  SQLCotacaoItemFornConsulta.MacroByName('Ordem').Value := 'ORDER BY FORNICOD, PRODUTO.PRODA60DESCR ASC';
  SQLCotacaoItemFornConsulta.Open;

  ppReportOficialVencedores.Print;
end;

procedure TFormCadastroCotacaoCompra.ppHeaderBand3BeforePrint(
  Sender: TObject);
begin
  inherited;
  ppEmpresa2.Caption    := 'Empresa:    ' + dm.SQLEmpresaEMPRA60NOMEFANT.AsString;
  ppIDData2.Caption     := 'ID Cotação: ' + SQLTemplateCTCPA13ID.AsString + '  em  ' +
                                            FormatDateTime('dd/mm/yyyy',SQLTemplateCTCPDEMIS.value);
  ppFornecedor2.Caption := 'Fornecedor: '+SQLLocate('FORNECEDOR','FORNICOD','FORNA60RAZAOSOC',SQLCotacaoItemFornConsultaFORNICOD.AsString);
end;

procedure TFormCadastroCotacaoCompra.ppDetailBand3BeforePrint(
  Sender: TObject);
begin
  inherited;
  ppUN2.Caption := dm.SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',dm.SQLLocate('PRODUTO','PRODICOD','UNIDICOD',SQLCotacaoItemFornConsultaPRODICOD.AsString));
  ppMarca2.Caption := dm.SQLLocate('MARCA','MARCICOD','MARCA60DESCR', dm.SQLLocate('PRODUTO','PRODICOD','MARCICOD',SQLCotacaoItemFornConsultaPRODICOD.AsString));
  ppVlrTotItem.Caption := FloatToStr(SQLCotacaoItemFornConsultaCTITN3QTDEMBAL.Value * SQLCotacaoItemFornConsultaCTITN3VLREMBAL.Value)
end;

procedure TFormCadastroCotacaoCompra.ppReportOficialVencedoresPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ppReportOficialVencedores.PreviewForm.WindowState := wsMaximized;
end;

procedure TFormCadastroCotacaoCompra.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if not SQLCotacaoCompraItemForn.IsEmpty then
    begin
      SQLCotacaoCompraItemForn.First;
      While not SQLCotacaoCompraItemForn.eof do
        SQLCotacaoCompraItemForn.Delete;
      ShowMessage('Processo de Exclusão Concluido!');  
    end
  else
    ShowMessage('Nenhum Registro foi encontrado!');  

end;

procedure TFormCadastroCotacaoCompra.MnExportarProdutosClick(
  Sender: TObject);
var CaminhoNomeArquivo, Linha : String;
    Arquivo : TextFile;
begin
  inherited;
  if SQLCotacaoItemConsulta.Active then
    if SQLCotacaoItemConsulta.IsEmpty then
      begin
        ShowMessage('A Cotação Atual esta vazia! Verifique!');
        abort;
        exit;
      end;

  if Pergunta('Nao','Deseja gerar o arquivo ..\ProdutosCotacao.txt?') then
    begin
      CaminhoNomeArquivo := '..\ProdutosCotacao.txt';
      AssignFile(Arquivo,CaminhoNomeArquivo);
      Rewrite(Arquivo);
      Reset(Arquivo);
      Append(Arquivo);
      Linha := '';
      // Criar Proximas Linhas
      SQLCotacaoItemConsulta.First;
      While not SQLCotacaoItemConsulta.Eof Do
        begin
          try
            Linha    := SQLCotacaoItemConsultaPRODICOD.AsString+'|'+SQLCotacaoItemConsultaPRODA60DESCR.Value +'|'+
                        SQLCotacaoItemConsultaCTITN3QTDEMBAL.AsString;
            Writeln(Arquivo,Linha);
          except
            Application.ProcessMessages;
          end;
          SQLCotacaoItemConsulta.Next;
        end;

      // Fechar Arquivo
      CloseFile(Arquivo);
      ShowMessage('Concluído com Sucesso!');
    end;
end;

end.
