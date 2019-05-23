unit CadastroMovimentosDiversosEstoqueItemPCP;

interface

uses
  FormResources, VarSYS, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, ppCtrls, ppVar, ppPrnabl, ppClass, ppDB,
  ppBands, ppCache, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, RxLookup ;

type
  TFormCadastroMovimentosDiversosEstoqueItemPCP = class(TFormCadastroTEMPLATE)
    SQLTemplateMOVDA13ID: TStringField;
    SQLTemplateMVDIIITEM: TIntegerField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateMVDIN3QTD: TBCDField;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplateProdutoLookup: TStringField;
    SQLTemplateLOTEA30NRO: TStringField;
    LabelLote: TLabel;
    DBEditLote: TDBEdit;
    MnImprimirItens: TMenuItem;
    ReportItens: TppReport;
    ppDBPipeline: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    Qtde: TppDBText;
    ppDBText4: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel7: TppLabel;
    MnImportaritensdocoletor: TMenuItem;
    SQLCor: TRxQuery;
    SQLCorCORICOD: TIntegerField;
    SQLCorCORA30DESCR: TStringField;
    DSSQLCor: TDataSource;
    SQLTamanho: TRxQuery;
    SQLTamanhoGRADICOD: TIntegerField;
    SQLTamanhoGRTMICOD: TIntegerField;
    SQLTamanhoGRTMA5DESCR: TStringField;
    DSSQLTamanho: TDataSource;
    SQLGrade: TRxQuery;
    SQLGradeGRADICOD: TIntegerField;
    SQLGradeGRADA30DESCR: TStringField;
    DSSQLGrade: TDataSource;
    SQLProduto: TRxQuery;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    AcessaProduto: TSpeedButton;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoGRADICOD: TIntegerField;
    SQLProdutoGRTMICOD: TIntegerField;
    SQLProdutoCORICOD: TIntegerField;
    SQLProdutoGRADA30DESCR: TStringField;
    SQLProdutoCORA30DESCR: TStringField;
    DSSQLProduto: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODIAGRUPGRADE: TIntegerField;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    SQLProdutoPRODA60REFER: TStringField;
    PanelBottom: TPanel;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label6: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    SQLProdutoGRTMA5DESCR: TStringField;
    SQLTemplatePRODIAGRUPGRADE: TIntegerField;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure AcessaProdutoClick(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateLOTEA30NROChange(Sender: TField);
    procedure MnImprimirItensClick(Sender: TObject);
    procedure MnImportaritensdocoletorClick(Sender: TObject);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroMovimentosDiversosEstoqueItemPCP: TFormCadastroMovimentosDiversosEstoqueItemPCP;

implementation

uses DataModulo, CadastroProdutos, UnitLibrary, TelaImportaItens;
{$R *.dfm}

procedure TFormCadastroMovimentosDiversosEstoqueItemPCP.FormCreate(
  Sender: TObject);
begin
  inherited;
  Tabela := 'MOVIMENTODIVERSOITEM' ;
  if not SQLProduto.Active then SQLProduto.Open;
  if not SQLGrade.Active then SQLGrade.Open;
  if not SQLTamanho.Active then SQLTamanho.Open;
  if not SQLCor.Active then SQLCor.Open;  
end;

procedure TFormCadastroMovimentosDiversosEstoqueItemPCP.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if Dm.GerandoMovtoDiverso then exit;
  if DataSet.FieldByName('PRODICOD').AsVariant <> null then
    begin
      if DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[DataSet.FieldByName('PRODICOD').AsString],1) then
        begin
          DataSet.FieldByName('ProdutoLookup').AsVariant    := DM.SQLTemplate.FindField('PRODA60DESCR').AsVariant;
          if (DM.SQLTemplate.FindField('GRADICOD').AsVariant <> NULL) and (DM.SQLTemplate.FindField('GRTMICOD').AsVariant <> NULL) then
                DataSet.FieldByName('ProdutoLookup').AsVariant  := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                                   ' / ' + RetornaTamanhoProduto(DM.SQLTemplate.FindField('GRADICOD').AsString,
                                                                                                 DM.SQLTemplate.FindField('GRTMICOD').AsString);
          if DM.SQLTemplate.FindField('CORICOD').AsVariant <> NULL then
              DataSet.FieldByName('ProdutoLookup').AsVariant  := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                               ' / ' + RetornaCorProduto(DM.SQLTemplate.FindField('CORICOD').AsString);
          
          DataSet.FieldByName('PRODIAGRUPGRADE').AsVariant  := DM.SQLTemplate.FindField('PRODIAGRUPGRADE').AsVariant;
        end
      else
        DataSet.FieldByName('ProdutoLookup').asString     := MensagemLookUp;
    end
  else DataSet.FieldByName('ProdutoLookup').AsVariant     := Null;

end;

procedure TFormCadastroMovimentosDiversosEstoqueItemPCP.AcessaProdutoClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('PRODICOD');
  FieldOrigem := 'PRODICOD';
  CriaFormulario(TFormCadastroProduto,'FormCadastroProduto',False,True,'');
end;

procedure TFormCadastroMovimentosDiversosEstoqueItemPCP.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateMOVDA13ID.Value   := DSMasterTemplate.DataSet.FindField('MOVDA13ID').Value ;
  SQLTemplateMVDIN3QTD.AsFloat := 0;
end ;

procedure TFormCadastroMovimentosDiversosEstoqueItemPCP.DSTemplateDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  LabelLote.Visible    := DM.SQLConfigGeralCFGECESTOQUEPORLOTE.AsString = 'S';
  DbEditLote.Visible   := DM.SQLConfigGeralCFGECESTOQUEPORLOTE.AsString = 'S';
end;

procedure TFormCadastroMovimentosDiversosEstoqueItemPCP.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  if SQLTemplateLOTEA30NRO.AsString <> '' then
    if SQLLocate('LOTE','LOTEA30NRO','LOTEA30NRO','"' + SQLTemplateLOTEA30NRO.AsString + '"') = '' then
      begin
        Informa('O número de lote informado está incorreto ou não foi cadastrado. Tente novamente !');
        SQLTemplateLOTEA30NRO.FocusControl;
        Abort;
      end;

  if (DM.SQLConfigGeralCFGECESTOQUEPORLOTE.AsString = 'S') and (SQLTemplateLOTEA30NRO.AsString = '') then
    if Application.MessageBox('O número do lote não foi informado, Deseja continuar mesmo assim ?','Advanced Control',MB_YESNO + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONQUESTION + MB_DEFBUTTON1)= iDNo then
      begin
        SQLTemplateLOTEA30NRO.FocusControl;
        Abort;
      end;

  inherited;
end;

procedure TFormCadastroMovimentosDiversosEstoqueItemPCP.SQLTemplateLOTEA30NROChange(
  Sender: TField);
begin
  inherited;
  if (Sender as TField).AsString <> '' then
    if SQLLocate('LOTE','LOTEA30NRO','LOTEA30NRO','"' + SQLTemplateLOTEA30NRO.AsString + '"') = '' then
      begin
        Informa('O número de lote informado está incorreto ou não foi cadastrado. Tente novamente !');
        SQLTemplateLOTEA30NRO.FocusControl;
      end;

end;

procedure TFormCadastroMovimentosDiversosEstoqueItemPCP.MnImprimirItensClick(
  Sender: TObject);
begin
  inherited;
  ReportItens.Print;
end;

procedure TFormCadastroMovimentosDiversosEstoqueItemPCP.MnImportaritensdocoletorClick(
  Sender: TObject);
begin
  inherited;
  if DSMasterTemplate.DataSet.FieldByName('MOVDCCONLUIDO').AsString = 'N' then
    begin
      Application.CreateForm(TFormTelaImportaItens,FormTelaImportaItens);
      FormTelaImportaItens.SetParams(SQLTemplate,'MVDIN3QTD',SQLTemplate.DataSource.DataSet.FieldByName('EMPRICOD').AsInteger);
      FormTelaImportaItens.ShowModal;
    end
  else
    begin
      Informa('Este movimento já foi encerrado, não é possível incluir produtos !');
      Abort;
    end;
end;

procedure TFormCadastroMovimentosDiversosEstoqueItemPCP.DSTemplateStateChange(
  Sender: TObject);
begin
  inherited;
  if (DSMasterTemplate.DataSet.FindField('MOVDCCONLUIDO').AsString = 'S') or
     ((UsuarioCorrente <>  DSMasterTemplate.DataSet.FieldByName('USUAICOD').AsInteger) and (DSMasterTemplate.DataSet.FieldByName('USUAICOD').AsVariant <> null)) then
       DesabilitarBotoes(True,True,True,True,True);
end;

procedure TFormCadastroMovimentosDiversosEstoqueItemPCP.RxDBLookupCombo1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    AcessaProduto.Click;
end;

end.
