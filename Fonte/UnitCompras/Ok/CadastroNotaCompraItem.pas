unit CadastroNotaCompraItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Forms, Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB,
  DBTables, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls,
  ExtCtrls, RXCtrls, Buttons, JPeg, RxDBComb, DBCtrls, VarSys,
  FormResources, EDBNum, ToolEdit, CurrEdit, RxLookup, Placemnt;

type
  TFormCadastroNotaCompraItem = class(TFormCadastroTEMPLATE)
    SQLTemplateNOCPA13ID: TStringField;
    SQLTemplateNOCIIITEM: TIntegerField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplateNOCIN3QTDBONIF: TBCDField;
    SQLTemplateNOCIN3CAPEMBAL: TBCDField;
    SQLTemplateNOCIN3QTDEMBAL: TBCDField;
    SQLTemplateNOCIN3VLRDESC: TBCDField;
    SQLTemplateNOCIN3PERCDESC: TBCDField;
    SQLTemplateNOCIN3VLRICMS: TBCDField;
    SQLTemplateNOCIN3PERCICMS: TBCDField;
    SQLTemplateNOCIN3VLRSUBST: TBCDField;
    SQLTemplateNOCIN3VLRIPI: TBCDField;
    SQLTemplateNOCIN3PERCIPI: TBCDField;
    SQLTemplateNOCIN3VLRCUSTOMED: TBCDField;
    SQLTemplateNOCIN3VLRFRETE: TBCDField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    BtnProduto: TSpeedButton;
    Label9: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label22: TLabel;
    SQLIcms: TRxQuery;
    SQLIcmsUF: TRxQuery;
    SQLTemplateProdutoLookUp: TStringField;
    SQLTemplateGradeCodLookUp: TIntegerField;
    SQLTemplateAgrupGradeLookUp: TIntegerField;
    SQLTemplateTotalItemCalc: TBCDField;
    DBEditQtde: TEvDBNumEdit;
    DBEditVUnit: TEvDBNumEdit;
    DBEditDescVlr: TEvDBNumEdit;
    DBEditDesPerc: TEvDBNumEdit;
    DBEditVlrFrete: TEvDBNumEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    EvDBNumEdit1: TEvDBNumEdit;
    Label28: TLabel;
    EvDBNumEdit2: TEvDBNumEdit;
    SQLTemplateReferenciaLookUp: TStringField;
    SQLTemplatePDCPA13ID: TStringField;
    SQLTemplatePCITIPOS: TIntegerField;
    SQLTemplateNOCIN3QTDEPED: TBCDField;
    SQLAtualizaItemPedido: TRxQuery;
    SQLTemplateNOCIN3TOTPED: TBCDField;
    SQLProdutoFornecedor: TRxQuery;
    SQLGeral: TRxQuery;
    LabelLote: TLabel;
    DBEditLote: TDBEdit;
    SQLTemplateLOTEA30NRO: TStringField;
    ButtonLote: TSpeedButton;
    SQLTotalQdte: TRxQuery;
    DSSQLTotalQdte: TDataSource;
    SQLOperacaoEstoque: TRxQuery;
    SQLOperacaoEstoqueOPESCORIGEMDESTINO: TStringField;
    SQLTemplateNOCIN2ITENSENVIADOS: TBCDField;
    GroupBoxComissaoFrete: TGroupBox;
    DBEditTarifaComissao: TDBEdit;
    Label32: TLabel;
    Label25: TLabel;
    DBEdit6: TDBEdit;
    Label26: TLabel;
    EditValorComissao: TCurrencyEdit;
    SQLTemplateNOCIN2VLRCOMISSAO: TBCDField;
    FormStorage1: TFormStorage;
    SQLTemplateCodAntigoLookup: TStringField;
    Label31: TLabel;
    SQLTemplateControlaSerieLookup: TStringField;
    MnNumerosdeSerie: TMenuItem;
    GroupNroSerie: TGroupBox;
    DBGrid1: TDBGrid;
    SQLProdutoSerie: TRxQuery;
    DSSQLProdutoSerie: TDataSource;
    SQLProdutoSeriePRSEA60NROSERIE: TStringField;
    RadioPesquisa: TRadioGroup;
    LabelFornEmpCli: TLabel;
    DBEdit27: TDBEdit;
    Label29: TLabel;
    EvDBNumEdit3: TEvDBNumEdit;
    DBEdit1: TDBEdit;
    SQLProdutoFornecedorPRODICOD: TIntegerField;
    SQLProdutoFornecedorFORNICOD: TIntegerField;
    SQLProdutoFornecedorPRFOA30REFERENCIA: TStringField;
    SQLProdutoFornecedorPENDENTE: TStringField;
    SQLProdutoFornecedorREGISTRO: TDateTimeField;
    SQLTemplateValorVendaAtual: TCurrencyField;
    SQLTemplateMargemLucro: TCurrencyField;
    SQLTemplateValorCustoAtual: TCurrencyField;
    Label6: TLabel;
    DBEditFator199: TEvDBNumEdit;
    SQLTemplateNOCIN2FATOR199: TBCDField;
    Label24: TLabel;
    SQLTemplateNOCIN2MGVENDA: TBCDField;
    SQLTemplateNOCIN2VLRVENDA: TBCDField;
    SQLTemplateQdteFator: TFloatField;
    SQLTemplateNOCIN2QTDENF: TBCDField;
    Label33: TLabel;
    PercMedioCompra: TCurrencyEdit;
    Label27: TLabel;
    SaldoAtual: TCurrencyEdit;
    LSaldo: TLabel;
    Label17: TLabel;
    DBEditIcmPerc: TEvDBNumEdit;
    Label16: TLabel;
    DBEditIcmVlr: TEvDBNumEdit;
    Label18: TLabel;
    DBEditIPIPerc: TEvDBNumEdit;
    Label19: TLabel;
    DBEditIPIVlr: TEvDBNumEdit;
    Label20: TLabel;
    DBEditVlrSbust: TEvDBNumEdit;
    SQLTemplateNOCIN2MGVENDA2: TBCDField;
    SQLTemplateNOCIN2VLRVENDA2: TBCDField;
    SQLTemplateMargemLucro2: TCurrencyField;
    SQLTemplateValorVendaAtual2: TCurrencyField;
    EvDBNumEdit5: TEvDBNumEdit;
    Label23: TLabel;
    DBEditMGVarejo: TEvDBNumEdit;
    Label36: TLabel;
    DBEditVLRVarejo: TEvDBNumEdit;
    Label37: TLabel;
    DBEditMGAtacado: TEvDBNumEdit;
    Label38: TLabel;
    DBEditVlrAtacado: TEvDBNumEdit;
    Panel4: TPanel;
    Panel6: TPanel;
    Label30: TLabel;
    DBEdit11: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label34: TLabel;
    DBEdit22: TDBEdit;
    Label35: TLabel;
    DBEdit23: TDBEdit;
    Label5: TLabel;
    Panel7: TPanel;
    Panel8: TPanel;
    Label39: TLabel;
    EvDBNumEdit10: TEvDBNumEdit;
    Label21: TLabel;
    DBEditTotalItem: TEvDBNumEdit;
    SQLTemplateUnidadeLookup: TStringField;
    Label41: TLabel;
    DBEdit21: TDBEdit;
    Label42: TLabel;
    EvDBNumEdit11: TEvDBNumEdit;
    SQLTotalQdteVLRTOTICMS: TBCDField;
    Label7: TLabel;
    Label10: TLabel;
    DBEditCofinsPerc: TEvDBNumEdit;
    Label40: TLabel;
    EvDBNumEdit6: TEvDBNumEdit;
    Label43: TLabel;
    EvDBNumEdit7: TEvDBNumEdit;
    SQLTemplateCofinsCalc: TFloatField;
    SQLTemplatePisCalc: TFloatField;
    SQLTemplateEncargosCalc: TFloatField;
    SQLTemplateValorCustoMedAtual: TFloatField;
    DBEdit28: TDBEdit;
    Label44: TLabel;
    DBEditCapEmbal: TEvDBNumEdit;
    SQLTemplateNOCIN3VLRUNIT: TBCDField;
    SQLTemplateNOCIN3VLREMBAL: TBCDField;
    SQLTemplateNOCIN2PERCDESP: TBCDField;
    Label45: TLabel;
    DBEditPercDespesas: TEvDBNumEdit;
    SQLTemplateNOCIN2PERCDIFICM: TBCDField;
    Label8: TLabel;
    EvDBNumEdit4: TEvDBNumEdit;
    Label46: TLabel;
    DBEditDifICM: TEvDBNumEdit;
    SQLTemplateNOCIN2PERCSUBST: TBCDField;
    Label47: TLabel;
    DBEditPercIcmSubst: TEvDBNumEdit;
    SQLTemplateNOCICALTPRECO: TStringField;
    EditReferencia: TEdit;
    Label49: TLabel;
    Label50: TLabel;
    EditCdProduto: TEdit;
    SQLTotalQdteTOTALQTDEITEM: TBCDField;
    SQLTotalQdteVALORTOTALNF: TFloatField;
    SQLTotalQdteTOTALQTDEITEMMEDIA: TBCDField;
    VlrMedCompra: TEvDBNumEdit;
    SQLTotalQdteVALORTOTALNFMED: TFloatField;
    Label52: TLabel;
    EvDBNumEdit8: TEvDBNumEdit;
    ComboAltPreco: TRxDBComboBox;
    Label48: TLabel;
    Label51: TLabel;
    DBEdit7: TDBEdit;
    EvDBNumEdit9: TEvDBNumEdit;
    SQLTemplateICMVendaLookUp: TStringField;
    SpeedButton1: TSpeedButton;
    Label53: TLabel;
    Label54: TLabel;
    DBEdit5: TDBEdit;
    DBEdit8: TDBEdit;
    Label55: TLabel;
    Label56: TLabel;
    SQLTemplateMargemLucroReal: TFloatField;
    SQLTemplateMargemLucroReal2: TFloatField;
    Label57: TLabel;
    EvDBNumEdit14: TEvDBNumEdit;
    SQLTemplateNOCIN3PERCFRETE: TBCDField;
    edtMargemReal: TCurrencyEdit;
    edtMargemReal2: TCurrencyEdit;
    edtSimulaMargem: TCurrencyEdit;
    Label58: TLabel;
    edtSimulaMargem2: TCurrencyEdit;
    Label59: TLabel;
    Label60: TLabel;
    DBEdit9: TDBEdit;
    SQLTemplateNCMLookUp: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure SQLTemplatePRODICODChange(Sender: TField);
    procedure SQLTemplateNOCIN3VLREMBALChange(Sender: TField);
    procedure SQLTemplateNOCIN3CAPEMBALChange(Sender: TField);
    procedure SQLTemplateNOCIN3VLRUNITChange(Sender: TField);
    procedure SQLTemplateNOCIN3VLRIPIChange(Sender: TField);
    procedure SQLTemplateNOCIN3PERCIPIChange(Sender: TField);
    procedure SQLTemplateNOCIN3QTDEMBALChange(Sender: TField);
    procedure SQLTemplateNOCIN3PERCDESCChange(Sender: TField);
    procedure SQLTemplateNOCIN3VLRDESCChange(Sender: TField);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure SQLTemplateBeforeInsert(DataSet: TDataSet);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure SQLTemplateAfterDelete(DataSet: TDataSet);
    procedure BtnProdutoClick(Sender: TObject);
    procedure SQLTemplateAfterScroll(DataSet: TDataSet);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure DBEditLoteExit(Sender: TObject);
    procedure ButtonLoteClick(Sender: TObject);
    procedure DBEditLoteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateAfterOpen(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure DBEditTarifaComissaoChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MnNumerosdeSerieClick(Sender: TObject);
    procedure RadioPesquisaClick(Sender: TObject);
    procedure SQLTemplateNOCIN2VLRVENDA2Change(Sender: TField);
    procedure DBEditVlrAtacadoExit(Sender: TObject);
    procedure SQLTemplateNOCIN3VLRFRETEChange(Sender: TField);
    procedure SQLTemplateNOCIN3VLRSUBSTChange(Sender: TField);
    procedure SQLTemplateNOCIN3VLRICMSChange(Sender: TField);
    procedure DBEditMGVarejoExit(Sender: TObject);
    procedure DBEditMGAtacadoExit(Sender: TObject);
    procedure DBEditVLRVarejoExit(Sender: TObject);
    procedure DBEditVLRVarejoEnter(Sender: TObject);
    procedure DBEditVlrAtacadoEnter(Sender: TObject);
    procedure SQLTemplateNOCIN2PERCDESPChange(Sender: TField);
    procedure SQLTemplateNOCIN2PERCDIFICMChange(Sender: TField);
    procedure SQLTemplateNOCIN2PERCSUBSTChange(Sender: TField);
    procedure EditReferenciaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditCdProdutoEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SQLTemplateNOCIN3PERCFRETEChange(Sender: TField);
    procedure SQLTemplateNOCIN3PERCICMSChange(Sender: TField);
    procedure edtSimulaMargemExit(Sender: TObject);
    procedure edtSimulaMargem2Exit(Sender: TObject);
    procedure edtSimulaMargemEnter(Sender: TObject);
    procedure edtSimulaMargem2Enter(Sender: TObject);
    procedure SQLTemplateNOCIN2VLRVENDAChange(Sender: TField);
    procedure EditCdProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEditPercIcmSubstExit(Sender: TObject);
  private
    Ocupado:Boolean;
    NovoTotalItem,
    NovoTotalDesc,
    FreteUnit : Double;
    TotalItem,
    TotalDesc, VlrVendaOld, VlrVenda2Old :Double;
    CodigoPedido : String;
    PosicaoItem  : Integer;
    QtdePed, NovaQtdePed : Double;
    AlterandoValores, IncluindoItem : Boolean;
    Procedure CalculaCampos;
    Procedure AtualizaPedidoCompra(CodigoPedidoCompra:String;PosicaoItemPedido:Integer;QtdePed,NovaQtdePed:Double);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroNotaCompraItem: TFormCadastroNotaCompraItem;

implementation

uses TelaLancamentoGradeNota, DataModulo, CadastroProdutos, UnitLibrary,
  CadastroLote, SearchLibrary, TelaConsultaProdutoGeral, TelaProdutoNumeroSerie,
  TelaPedidoCompraHistoricoComprasVendasProduto, DataModuloTemplate;

{$R *.dfm}
Procedure TFormCadastroNotaCompraItem.AtualizaPedidoCompra(CodigoPedidoCompra:String;PosicaoItemPedido:Integer;QtdePed,NovaQtdePed:Double);
Begin
  SQLAtualizaItemPedido.ParamByName('PDCPA13ID').AsString  := CodigoPedidoCompra;
  SQLAtualizaItemPedido.ParamByName('PCITIPOS').AsInteger  := PosicaoItemPedido;
  SQLAtualizaItemPedido.ParamByName('NovaQtdePed').AsFloat := NovaQtdePed;
  SQLAtualizaItemPedido.ParamByName('QtdePed').AsFloat     := QtdePed;
  SQLAtualizaItemPedido.ExecSQL;
End;

procedure TFormCadastroNotaCompraItem.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'NOTACOMPRAITEM';

  if not DM.SQLConfigCompra.Active then DM.SQLConfigCompra.Active := true;
  if DM.SQLConfigCompraCFCOCINFDADOSFRETE.AsString = 'S' then
     GroupBoxComissaoFrete.Visible := True
  else
     GroupBoxComissaoFrete.Visible := False;

  if not SQLProdutoSerie.Active then SQLProdutoSerie.Open;

end;

procedure TFormCadastroNotaCompraItem.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateTotalItemCalc.asFloat := (SQLTemplateNOCIN3VLREMBAL.AsFloat*SQLTemplateNOCIN3QTDEMBAL.asFloat)-SQLTemplateNOCIN3VLRDESC.AsFloat;
  If DM.GerandoNotaCompra Then Exit;
  If (DataSet.FieldByName('PRODICOD').AsVariant <> null) then
    Begin
      If DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[DataSet.FieldByName('PRODICOD').AsString],1) Then
        Begin
          DataSet.FieldByName('ProdutoLookup').AsVariant    := DM.SQLTemplate.FindField('PRODICOD').AsString + ' - ' + DM.SQLTemplate.FindField('PRODA60DESCR').AsVariant;

          if (DM.SQLTemplate.FindField('GRADICOD').AsVariant <> NULL) and (DM.SQLTemplate.FindField('GRTMICOD').AsVariant <> NULL) then
                DataSet.FieldByName('ProdutoLookup').AsVariant  := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                                   ' / ' + RetornaTamanhoProduto(DM.SQLTemplate.FindField('GRADICOD').AsString,
                                                                                                 DM.SQLTemplate.FindField('GRTMICOD').AsString);
          if DM.SQLTemplate.FindField('CORICOD').AsVariant <> NULL then
              DataSet.FieldByName('ProdutoLookup').AsVariant  := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                               ' / ' + RetornaCorProduto(DM.SQLTemplate.FindField('CORICOD').AsString);

          DataSet.FieldByName('GradeCodLookup').AsVariant      := DM.SQLTemplate.FindField('GRADICOD').AsVariant;
          DataSet.FieldByName('AgrupGradeLookup').AsVariant    := DM.SQLTemplate.FindField('PRODIAGRUPGRADE').AsVariant;
          DataSet.FieldByName('ReferenciaLookup').AsVariant    := DM.SQLTemplate.FindField('PRODA60REFER').AsVariant;
          DataSet.FieldByName('UnidadeLookup').AsVariant       := SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',SQLLocate('PRODUTO','PRODICOD','UNIDICOD',SQLTemplatePRODICOD.AsString));
          DataSet.FieldByName('ICMVendaLookup').AsVariant      := SQLLocate('ICMS','ICMSICOD','ICMSA60DESCR',SQLLocate('PRODUTO','PRODICOD','ICMSICOD',SQLTemplatePRODICOD.AsString));
          DataSet.FieldByName('CodAntigoLookup').AsVariant     := DM.SQLTemplate.FindField('PRODA15CODANT').AsVariant;
          DataSet.FieldByName('ControlaSerieLookup').AsVariant := DM.SQLTemplate.FindField('PRODCTEMNROSERIE').AsVariant;
          DataSet.FieldByName('ValorCustoAtual').AsVariant     := DM.SQLTemplate.FindField('PRODN3VLRCUSTO').AsVariant;
          DataSet.FieldByName('ValorCustoMedAtual').AsVariant  := DM.SQLTemplate.FindField('PRODN3VLRCUSTOMED').AsVariant;
          DataSet.FieldByName('MargemLucro').AsVariant         := DM.SQLTemplate.FindField('PRODN3PERCMGLVFIXA').AsVariant;
          DataSet.FieldByName('MargemLucroReal').AsVariant     := DM.SQLTemplate.FindField('PRODN3PERCMARGLUCR').AsVariant;
          DataSet.FieldByName('MargemLucroReal2').AsVariant    := DM.SQLTemplate.FindField('PRODN3PERCMARGLUC2').AsVariant;
          DataSet.FieldByName('ValorVendaAtual').AsVariant     := DM.SQLTemplate.FindField('PRODN3VLRVENDA').AsVariant;
          DataSet.FieldByName('MargemLucro2').AsVariant        := DM.SQLTemplate.FindField('PRODN3PERCMGLAFIXA').AsVariant;
//          DataSet.FieldByName('NOCIN3PERCFRETE').AsVariant     := DM.SQLTemplate.FindField('PRODN2PERCFRETE').AsVariant;
          DataSet.FieldByName('ValorVendaAtual2').AsVariant    := DM.SQLTemplate.FindField('PRODN3VLRVENDA2').AsVariant;
          DataSet.FieldByName('CofinsCalc').AsVariant          := DM.SQLConfigVendaCFVEN2PERCCOFINS.Value;
          DataSet.FieldByName('PisCalc').AsVariant             := DM.SQLConfigVendaCFVEN2PERCPIS.Value;
          DataSet.FieldByName('EncargosCalc').AsVariant        := DM.SQLConfigVendaCFVEN2PERCENCARG.Value;
          DataSet.FieldByName('NCMLookup').AsVariant           := dm.SQLLocate('NCM','NCMICOD','NCMA100DESCR',DM.SQLTemplate.FindField('NCMICOD').AsString);
        End
      Else
        Begin
          DataSet.FieldByName('ProdutoLookup').asString        := MensagemLookUp;
          DataSet.FieldByName('GradeCodLookup').AsVariant      := NULL;
          DataSet.FieldByName('AgrupGradeLookup').AsVariant    := NULL;
          DataSet.FieldByName('ReferenciaLookup').AsVariant    := NULL;
          DataSet.FieldByName('UnidadeLookup').AsVariant       := NULL;
          DataSet.FieldByName('CodAntigoLookup').AsVariant     := NULL;
          DataSet.FieldByName('ControlaSerieLookup').AsVariant := NULL;
          DataSet.FieldByName('ValorCustoAtual').AsVariant     := NULL;
          DataSet.FieldByName('ValorCustoMedAtual').AsVariant  := NULL;
          DataSet.FieldByName('MargemLucro').AsVariant         := NULL;
          DataSet.FieldByName('MargemLucroReal').AsVariant     := NULL;
          DataSet.FieldByName('MargemLucroReal2').AsVariant    := NULL;
  //        DataSet.FieldByName('NOCIN3PERCFRETE').AsVariant     := NULL;
          DataSet.FieldByName('ValorVendaAtual').AsVariant     := NULL;
          DataSet.FieldByName('MargemLucro2').AsVariant        := NULL;
          DataSet.FieldByName('ValorVendaAtual2').AsVariant    := NULL;
          DataSet.FieldByName('NCMLookup').AsVariant           := NULL;
          DataSet.FieldByName('CofinsCalc').AsVariant          := 0;
          DataSet.FieldByName('PisCalc').AsVariant             := 0;
          DataSet.FieldByName('EncargosCalc').AsVariant        := 0;
        End;
    End
  Else
    Begin
      DataSet.FieldByName('ProdutoLookup').AsVariant        := MensagemLookUp;
      DataSet.FieldByName('GradeCodLookup').AsVariant       := NULL;
      DataSet.FieldByName('NCMLookup').AsVariant            := NULL;
      DataSet.FieldByName('AgrupGradeLookup').AsVariant     := NULL;
      DataSet.FieldByName('ReferenciaLookup').AsVariant     := NULL;
      DataSet.FieldByName('UnidadeLookup').AsVariant        := NULL;
      DataSet.FieldByName('CodAntigoLookup').AsVariant      := NULL;
      DataSet.FieldByName('ControlaSerieLookup').AsVariant  := NULL;
      DataSet.FieldByName('ValorCustoAtual').AsVariant      := NULL;
      DataSet.FieldByName('ValorCustoMedAtual').AsVariant   := NULL;
      DataSet.FieldByName('MargemLucro').AsVariant          := NULL;
      DataSet.FieldByName('MargemLucroReal').AsVariant      := NULL;
      DataSet.FieldByName('MargemLucroReal2').AsVariant     := NULL;
    //  DataSet.FieldByName('NOCIN3PERCFRETE').AsVariant      := NULL;
      DataSet.FieldByName('ValorVendaAtual').AsVariant      := NULL;
      DataSet.FieldByName('MargemLucro2').AsVariant         := NULL;
      DataSet.FieldByName('ValorVendaAtual2').AsVariant     := NULL;
      DataSet.FieldByName('CofinsCalc').AsVariant           := 0;
      DataSet.FieldByName('PisCalc').AsVariant              := 0;
      DataSet.FieldByName('EncargosCalc').AsVariant         := 0;
    End;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplatePRODICODChange(Sender: TField);
begin
  inherited;
  EditCdProduto.Text := (Sender as TField).AsString;
  If (SQLTemplate.FieldByName('PRODICOD').AsVariant <> null) and (SQLTemplate.State = dsInsert) and (DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[SQLTemplate.FieldByName('PRODICOD').AsString],1)) Then
    Begin
       if DM.SQLConfigCompraCFCOCTESTPRODFORN.Value = 'S' then
         begin
           SQLProdutoFornecedor.Close;
           SQLProdutoFornecedor.MacroByName('PRODICOD').AsString := 'PRODICOD = ' + SQLTemplate.FieldByName('PRODICOD').AsString;
           SQLProdutoFornecedor.MacroByName('FORNICOD').AsString := 'FORNICOD = ' + SQLTemplate.DataSource.DataSet.FindField('FORNICOD').AsString;
           SQLProdutoFornecedor.MacroByName('Referencia').AsString := '0=0';
           SQLProdutoFornecedor.Open;
           if SQLProdutoFornecedor.IsEmpty then
             begin
               ShowMessage('Este Produto não é fornecido por ' + dm.SQLLocate('Fornecedor','Fornicod','FORNA60RAZAOSOC','"'+SQLTemplate.DataSource.DataSet.FindField('FORNICOD').AsString+'"'));
               SQLTemplate.FieldByName('PRODICOD').FocusControl ;
             end ;
         end ;

      If (SQLTemplate.State in DsEditModes) Then
        Begin
         // é aqui
          Ocupado:=True;
          If DM.SQLTemplate.FindField('PRODN3CAPACEMBAL').asFloat<>0 Then
            SQLTemplateNOCIN3CAPEMBAL.asFloat := DM.SQLTemplate.FindField('PRODN3CAPACEMBAL').asFloat;
          If SQLTemplateNOCIN3CAPEMBAL.asFloat = 0 Then
            SQLTemplateNOCIN3CAPEMBAL.asFloat := 1;
          If DM.SQLTemplate.FindField('PRODN3VLRCOMPRA').asFloat <> 0 Then
            SQLTemplateNOCIN3VLRUNIT.asFloat := DM.SQLTemplate.FindField('PRODN3VLRCOMPRA').asFloat;
          If DM.SQLTemplate.FindField('PRODN2PERCDESP').asFloat <> 0 Then
            SQLTemplateNOCIN2PERCDESP.asFloat := DM.SQLTemplate.FindField('PRODN2PERCDESP').asFloat;
          If DM.SQLTemplate.FindField('PRODN3PERCIPI').asFloat <> 0 Then
            SQLTemplateNOCIN3PERCIPI.asFloat := DM.SQLTemplate.FindField('PRODN3PERCIPI').asFloat;
          If SQLTemplateNOCIN3VLRUNIT.asFloat <> 0 Then
            SQLTemplateNOCIN3VLREMBAL.asFloat := SQLTemplateNOCIN3VLRUNIT.asFloat*SQLTemplateNOCIN3CAPEMBAL.asFloat;
          If SQLTemplateNOCIN3PERCIPI.asFloat <> 0 Then
            SQLTemplateNOCIN3VLRIPI.asFloat := SQLTemplateTotalItemCalc.asFloat*(SQLTemplateNOCIN3PERCIPI.asFloat / 100);
          If DM.SQLTemplate.FindField('PRODN2PERCSUBST').asFloat <> 0 Then
            SQLTemplateNOCIN2PERCSUBST.AsFloat := DM.SQLTemplate.FindField('PRODN2PERCSUBST').asFloat;

          If DM.SQLTemplate.FindField('PRODN2PERCFRETE').asFloat <> 0 Then
            SQLTemplateNOCIN3PERCFRETE.AsFloat := DM.SQLTemplate.FindField('PRODN2PERCFRETE').asFloat;

          if SQLTemplateMargemLucro.Value > 0 then
            SQLTemplate.FindField('NOCIN2MGVENDA').asFloat := SQLTemplateMargemLucro.Value;
          if SQLTemplateMargemLucro2.Value > 0 then
            SQLTemplate.FindField('NOCIN2MGVENDA2').asFloat := SQLTemplateMargemLucro2.Value;

          If (SQLTemplateNOCIN3PERCICMS.asFloat = 0) and (DM.SQLTemplate.FindField('ICMSICOD').Value<>Null) Then
            Begin
              SQLICMS.ParamByName('ICMSICOD').asInteger := DM.SQLTemplate.FindField('ICMSICOD').asInteger;
              SQLICMS.Open;

              If SQLTemplate.DataSource.DataSet.FindField('EmpresaUFLookUp').asString<>SQLTemplate.DataSource.DataSet.FindField('CliFornEmpEstadoLookUp').asString Then
                Begin
                  SQLICMSUF.Close;
                  SQLICMSUF.ParamByName('ICMUA2UF').asString  := SQLTemplate.DataSource.DataSet.FindField('CliFornEmpEstadoLookUp').asString;
                  SQLICMSUF.Open;
                  if SQLICMSUF.IsEmpty then
                    ShowMessage('Este estado não consta no cadastro de ICMS por UF !')
                  else
                    begin
                      if SQLICMSUF.FindField('ICMUN2ALIQUOTA').AsString = '' then
                        begin
                          ShowMessage('Este estado não possui alíquota no cadastro de ICMS por UF !');
                        end
                      else
                        begin
                          SQLTemplateNOCIN3PERCICMS.asVariant := SQLICMSUF.FindField('ICMUN2ALIQUOTA').asVariant;
                        end;
                    end;
                End
              Else
                SQLTemplateNOCIN3PERCICMS.asVariant := SQLICMS.FindField('ICMSN2ALIQUOTA').asVariant;
              SQLICMS.Close;
              SQLTemplateNOCIN3VLRICMS.asFloat := SQLTemplateTotalItemCalc.asFloat * (SQLTemplateNOCIN3PERCICMS.asFloat / 100);

              // Ajusta Dif.Icms quando o Campo Dif.Icms nao esta preenchido no Cad.Prod
              If SQLTemplate.DataSource.DataSet.FindField('EmpresaUFLookUp').asString<>SQLTemplate.DataSource.DataSet.FindField('CliFornEmpEstadoLookUp').asString Then
                If DM.SQLTemplate.FindField('PRODN2PERCDIFICM').asFloat > 0 Then
                  SQLTemplateNOCIN2PERCDIFICM.asFloat := DM.SQLTemplate.FindField('PRODN2PERCDIFICM').asFloat
                Else
                  begin
                    if StrToFloat(SQLLocate('ICMS','ICMSICOD','ICMSN2ALIQUOTA',SQLLocate('PRODUTO','PRODICOD','ICMSICOD',SQLTemplatePRODICOD.AsString))) > 0 then
                      if StrToFloat(SQLLocate('ICMS','ICMSICOD','ICMSN2ALIQUOTA',SQLLocate('PRODUTO','PRODICOD','ICMSICOD',SQLTemplatePRODICOD.AsString)))-SQLTemplateNOCIN3PERCICMS.asVariant > 0 then
                        SQLTemplateNOCIN2PERCDIFICM.asFloat := StrToFloat(SQLLocate('ICMS','ICMSICOD','ICMSN2ALIQUOTA',SQLLocate('PRODUTO','PRODICOD','ICMSICOD',SQLTemplatePRODICOD.AsString)))-SQLTemplateNOCIN3PERCICMS.asVariant;
                  end;
            End;
          Ocupado:=False;
        End;

        SQLTemplateNOCIN3PERCIPI.OnChange(SQlTemplateNocin3percipi);
        SQLTemplateNOCIN3PERCFRETE.OnChange(SQLTemplateNOCIN3PERCFRETE);
        SQLTemplateNOCIN3PERCICMS.OnChange(SQLTemplateNOCIN3PERCICMS);
        SQLTemplateNOCIN2PERCDESP.OnChange(SQLTemplateNOCIN2PERCDESP);
        SQLTemplateNOCIN2PERCSUBST.OnChange(SQLTemplateNOCIN2PERCSUBST);

      If (Not DM.GerandoPedidoCompra) and
         (Not DM.ImportandoPedidoCompra) then
        if  (SQLTemplate.FindField('GradeCodLookUp').asVariant<>Null) and
            (SQLTemplate.FindField('AgrupGradeLookUp').asVariant<>Null) Then
          begin
            CriaFormulario(TFormTelaLancamentoGradeNota,'FormTelaLancamentoGradeNota',False,False,True,'');
          end
        else
          begin
            SaldoAtual.Value := 0 ;
            if not FileExists('NaoMostraSaldoConsultaProduto.Arq') then
              begin
                SQLGeral.Close ;
                SQLGeral.SQL.Clear ;
                SQLGeral.SQL.Add('select PSLDN3QTDE, PSLDN3QTDMIN, PSLDN3QTDMAX from PRODUTOSALDO') ;
                SQLGeral.SQL.Add('where EMPRICOD = ' + EmpresaPadrao) ;
                SQLGeral.SQL.Add('and   PRODICOD = ' + SQLTemplate.FieldByName('PRODICOD').AsString) ;
                SQLGeral.Open ;
                if not SQLGeral.Eof then
                  begin
                    SaldoAtual.Font.Color := clBlack ;
                    SaldoAtual.Value := SQLGeral.FieldByName('PSLDN3QTDE').asFloat;
                    if SQLGeral.FieldByName('PSLDN3QTDMIN').Value > 0 then
                      if SQLGeral.FieldByName('PSLDN3QTDMIN').Value > SQLGeral.FieldByName('PSLDN3QTDE').Value then
                        SaldoAtual.Font.Color := clRed ;
                    if SQLGeral.FieldByName('PSLDN3QTDMAX').Value > 0 then
                      if SQLGeral.FieldByName('PSLDN3QTDMAX').Value < SQLGeral.FieldByName('PSLDN3QTDE').Value then
                        SaldoAtual.Font.Color := clBlue ;
                  end ;
                SQLGeral.Close ;
              end ;
          end ;
    End;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN3VLREMBALChange(
  Sender: TField);
begin
  inherited;
  If SQLTemplateNOCIN3CAPEMBAL.asFloat>0 Then
    Begin
      If Ocupado Then Exit;
      Ocupado:=True;
      SQLTemplateNOCIN3VLRUNIT.asFloat    := SQLTemplateNOCIN3VLREMBAL.asFloat / SQLTemplateNOCIN3CAPEMBAL.asFloat;
      SQLTemplateNOCIN3VLRDESC.asFloat    := (SQLTemplateNOCIN3VLREMBAL.AsFloat * SQLTemplateNOCIN3QTDEMBAL.asFloat) * (SQLTemplateNOCIN3PERCDESC.asFloat / 100);
      SQLTemplateNOCIN3VLRIPI.asFloat     := SQLTemplateTotalItemCalc.asFloat * (SQLTemplateNOCIN3PERCIPI.asFloat / 100);
      SQLTemplateNOCIN3VLRICMS.asFloat    := SQLTemplateTotalItemCalc.asFloat * (SQLTemplateNOCIN3PERCICMS.asFloat / 100);
      SQLTemplateNOCIN3VLRFRETE.asFloat   := SQLTemplateTotalItemCalc.asFloat * (SQLTemplateNOCIN3PERCFRETE.asFloat / 100);
      SQLTemplateNOCIN3VLRSUBST.asFloat   := SQLTemplateTotalItemCalc.asFloat * (SQLTemplateNOCIN2PERCSUBST.asFloat / 100);
      Ocupado:=False;
    End;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN3CAPEMBALChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  SQLTemplateNOCIN3VLREMBAL.asFloat := (SQLTemplateNOCIN3VLRUNIT.asFloat  * SQLTemplateNOCIN3CAPEMBAL.asFloat);
  SQLTemplateNOCIN3VLRDESC.asFloat  := (SQLTemplateNOCIN3VLREMBAL.AsFloat * SQLTemplateNOCIN3QTDEMBAL.asFloat) * (SQLTemplateNOCIN3PERCDESC.asFloat / 100);
  SQLTemplateNOCIN3VLRIPI.asFloat   := SQLTemplateTotalItemCalc.asFloat * (SQLTemplateNOCIN3PERCIPI.asFloat / 100);
  SQLTemplateNOCIN3VLRICMS.asFloat  := SQLTemplateTotalItemCalc.asFloat * (SQLTemplateNOCIN3PERCICMS.asFloat / 100);
  Ocupado:=False;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN3VLRUNITChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  SQLTemplateNOCIN3VLREMBAL.asFloat := (SQLTemplateNOCIN3VLRUNIT.asFloat  * SQLTemplateNOCIN3CAPEMBAL.asFloat);
  SQLTemplateNOCIN3VLRDESC.asFloat  := (SQLTemplateNOCIN3VLREMBAL.AsFloat * SQLTemplateNOCIN3QTDEMBAL.asFloat) * (SQLTemplateNOCIN3PERCDESC.asFloat / 100);
  SQLTemplateNOCIN3VLRIPI.asFloat   := SQLTemplateTotalItemCalc.asFloat * (SQLTemplateNOCIN3PERCIPI.asFloat / 100);
  SQLTemplateNOCIN3VLRICMS.asFloat  := SQLTemplateTotalItemCalc.asFloat * (SQLTemplateNOCIN3PERCICMS.asFloat  / 100);
  Ocupado:=False;
end;


procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN3PERCIPIChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  If (SQLTemplateNOCIN3PERCIPI.asFloat>0) and (SQLTemplateTotalItemCalc.asFloat>0) Then
    SQLTemplateNOCIN3VLRIPI.asFloat := SQLTemplateTotalItemCalc.asFloat * (SQLTemplateNOCIN3PERCIPI.asFloat / 100)
  Else
    SQLTemplateNOCIN3VLRIPI.asFloat  := 0;
  Ocupado:=False;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN3QTDEMBALChange(
  Sender: TField);
begin
  inherited;
  if Frac(SQLTemplateNOCIN3QTDEMBAL.asFloat)>0 then
    begin
      if SQLLocate('UNIDADE','UNIDICOD','UNIDCFRAC',SQLLocate('PRODUTO','PRODICOD','UNIDICOD', sqltemplatePRODICOD.AsString)) = 'N' then
        begin
          ShowMessage('Este Produto não permite Compra Fracionada!') ;
          SQLTemplateNOCIN3QTDEMBAL.asFloat := 0;
          DBEditQtde.SetFocus;
          exit ;
        end;
    end ;

  If Ocupado Then Exit;
  Ocupado:=True;
  SQLTemplateNOCIN3VLRUNIT.asFloat    := SQLTemplateNOCIN3VLREMBAL.asFloat / SQLTemplateNOCIN3CAPEMBAL.asFloat;
  SQLTemplateNOCIN3VLRDESC.asFloat    := (SQLTemplateNOCIN3VLREMBAL.AsFloat * SQLTemplateNOCIN3QTDEMBAL.asFloat) * (SQLTemplateNOCIN3PERCDESC.asFloat / 100);
  SQLTemplateNOCIN3VLRIPI.asFloat     := SQLTemplateTotalItemCalc.asFloat * (SQLTemplateNOCIN3PERCIPI.asFloat / 100);
  SQLTemplateNOCIN3VLRICMS.asFloat    := SQLTemplateTotalItemCalc.asFloat * (SQLTemplateNOCIN3PERCICMS.asFloat / 100);
  SQLTemplateNOCIN3VLRFRETE.asFloat   := (SQLTemplateTotalItemCalc.asFloat * (SQLTemplateNOCIN3PERCFRETE.asFloat / 100));
  SQLTemplateNOCIN3VLRSUBST.asFloat   := SQLTemplateTotalItemCalc.asFloat * (SQLTemplateNOCIN2PERCSUBST.asFloat / 100);
  Ocupado:=False;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN3PERCDESCChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  If (SQLTemplateNOCIN3PERCDESC.asFloat > 0) Then
    SQLTemplateNOCIN3VLRDESC.asFloat := (SQLTemplateNOCIN3VLREMBAL.AsFloat * SQLTemplateNOCIN3QTDEMBAL.asFloat) * (SQLTemplateNOCIN3PERCDESC.asFloat / 100)
  Else
    SQLTemplateNOCIN3VLRDESC.asFloat := 0;
  Ocupado:=False;
end;


procedure TFormCadastroNotaCompraItem.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('NOCPA13ID').Value := DataSet.DataSource.DataSet.FindField('NOCPA13ID').Value;
  EditCdProduto.Text := '';
  SQLTemplateNOCIN3QTDBONIF.asFloat      := 0  ;
  SQLTemplateNOCIN3CAPEMBAL.asFloat      := 1  ;
  SQLTemplateNOCIN3QTDEMBAL.asFloat      := 1  ;
  SQLTemplateNOCIN3VLREMBAL.asFloat      := 0  ;
  SQLTemplateNOCIN3VLRUNIT.asFloat       := 0  ;
  SQLTemplateNOCIN3VLRDESC.asFloat       := 0  ;
  SQLTemplateNOCIN3PERCDESC.asFloat      := 0  ;
  SQLTemplateNOCIN3VLRICMS.asFloat       := 0  ;
  SQLTemplateNOCIN3PERCICMS.asFloat      := 0  ;
  SQLTemplateNOCIN3VLRSUBST.asFloat      := 0  ;
  SQLTemplateNOCIN3VLRIPI.asFloat        := 0  ;
  SQLTemplateNOCIN3PERCIPI.asFloat       := 0  ;
  SQLTemplateNOCIN3VLRCUSTOMED.asFloat   := 0  ;
  SQLTemplateNOCIN3VLRFRETE.asFloat      := 0  ;
  SQLTemplateNOCIN3QTDEPED.asFloat       := 0  ;
  SQLTemplateNOCIN3TOTPED.asFloat        := 0  ;
  SQLTemplateNOCIN2ITENSENVIADOS.AsFloat := 0  ;
  SQLTemplateNOCIN2FATOR199.AsFloat      := 0  ;
  SQLTemplateNOCIN2MGVENDA.asFloat       := 0  ;
  SQLTemplateNOCIN2MGVENDA2.asFloat      := 0  ;
  SQLTemplateNOCICALTPRECO.Value         := 'I';
  EditcdProduto.Clear;
  IncluindoItem := True;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateBeforePost(
  DataSet: TDataSet);
var Next : Integer;
var Cd_Fornec : String;
begin
  If (SQLTemplatePRODICOD.AsInteger <= 0) Then
    Begin
      ShowMessage('O produto deve ser informado !');
      SQLTemplatePRODICOD.FocusControl;
      Abort;
    End;

  If (SQLTemplateNOCIN3VLREMBAL.asFloat = 0) Then
    Begin
      ShowMessage('O valor da Embalagem não pode ser zero!');
      SQLTemplateNOCIN3VLREMBAL.FocusControl;
      Abort;
    End;
  If (SQLTemplateNOCIN3CAPEMBAL.asFloat = 0) Then
    Begin
      ShowMessage('A capacidade de Embalagem não pode ser zero!');
      SQLTemplateNOCIN3CAPEMBAL.FocusControl;
      Abort;
    End;
  If (SQLTemplateNOCIN3VLRUNIT.asFloat = 0) Then
    Begin
      ShowMessage('O valor unitário não pode ser zero!');
      SQLTemplateNOCIN3VLRUNIT.FocusControl;
      Abort;
    End;
  If (SQLTemplateNOCIN3QTDEMBAL.asFloat = 0) Then
    Begin
      ShowMessage('A quantidade de embalagens não pode ser zero!');
      SQLTemplateNOCIN3QTDEMBAL.FocusControl;
      Abort;
    End;

  // TESTAR NRO LOTE
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
  If DataSet.FindField('NOCIN3QTDEMBAL').asFloat > DataSet.FindField('NOCIN3TOTPED').asFloat Then
    DataSet.FindField('NOCIN3QTDEPED').asFloat   := DataSet.FindField('NOCIN3TOTPED').asFloat
  Else
    DataSet.FindField('NOCIN3QTDEPED').asFloat   := DataSet.FindField('NOCIN3QTDEMBAL').asFloat;
  NovoTotalItem := SQLTemplateTotalItemCalc.asFloat;
  NovoTotalDesc := SQLTemplateNOCIN3VLRDESC.asFloat;
  NovaQtdePed   := SQLTemplateNOCIN3QTDEPED.asFloat;
  CodigoPedido  := DataSet.FindField('PDCPA13ID').asString;
  PosicaoItem   := DataSet.FindField('PCITIPOS').asInteger;

  if DM.SQLConfigCompraCFCOCINFDADOSFRETE.AsString = 'S' then
     if SQLTemplateNOCIN2VLRCOMISSAO.IsNull then
        if Application.MessageBox('O campo Valor da Tarifa Comissão não foi preenchido.'+
                                  char(#13)+'Caso o campo permaneça nulo não sera efetuado o cálculo de comissão para o funcionário.'+
                                  char(#13)+'Desja informar o valor da Tarifa?','Advanced Control',MB_YESNO + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONQUESTION + MB_DEFBUTTON1)= iDYES then
           begin
             DBEditTarifaComissao.SetFocus;
             Abort;
           end;

  // Colocar Cod do Fornecedor x Produto
  if (SQLTemplate.FieldByName('PRODICOD').AsString = dm.sqllocate('PRODUTO','PRODICOD','PRODIAGRUPGRADE',SQLTemplate.FieldByName('PRODICOD').AsString)) and (SQLTemplate.DataSource.DataSet.FindField('FORNICOD').AsString <> '') and
     (Application.FindComponent('FormCadastroNotaCompraItem') <> nil) then
    begin
      SQLProdutoFornecedor.Close;
      SQLProdutoFornecedor.MacroByName('PRODICOD').AsString := 'PRODICOD = ' + SQLTemplate.FieldByName('PRODICOD').AsString;
      SQLProdutoFornecedor.MacroByName('FORNICOD').AsString := 'FORNICOD = ' + SQLTemplate.DataSource.DataSet.FindField('FORNICOD').AsString;
      SQLProdutoFornecedor.MacroByName('Referencia').AsString := '0=0';
      SQLProdutoFornecedor.Open;
      if SQLProdutoFornecedor.IsEmpty then
        begin
          try
            Cd_Fornec:= Inputbox('Digite o Codigo no Fornecedor...','Codigo','');
            SQLProdutoFornecedor.Append;
            SQLProdutoFornecedorPRODICOD.AsString := SQLTemplate.FieldByName('PRODICOD').AsString;
            SQLProdutoFornecedorFORNICOD.AsString := DSMasterTemplate.DataSet.FieldByName('FORNICOD').AsString;
            SQLProdutoFornecedorPRFOA30REFERENCIA.AsString := Cd_Fornec;
            SQLProdutoFornecedor.Post;
          except
            Application.ProcessMessages;
          end;
        end;
    end;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  DM.InserindoItemNC := True;
  SQLTemplate.DataSource.DataSet.Edit;
  SQLTemplate.DataSource.DataSet.AutoCalcFields := False;
  SQLTemplate.DataSource.DataSet.FindField('NOCPN3SOMAITENS').asFloat :=
  (SQLTemplate.DataSource.DataSet.FindField('NOCPN3SOMAITENS').asFloat - TotalItem) + NovoTotalItem;
  SQLTemplate.DataSource.DataSet.FindField('NOCPN3TOTDESC').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOCPN3TOTDESC').asFloat - TotalDesc) + NovoTotalDesc;
  SQLTemplate.DataSource.DataSet.Post;
  SQLTemplate.DataSource.DataSet.AutoCalcFields := True;
  if (CodigoPedido<>'') and (NovaQtdePed <> QtdePed) then
    AtualizaPedidoCompra(CodigoPedido,PosicaoItem,QtdePed,NovaQtdePed);

  SQLTotalQdte.Close;
  SQLTotalQdte.MacroByName('NotaCompra').AsString := 'NOCPA13ID = "' + DSMasterTemplate.DataSet.FieldByName('NOCPA13ID').AsString + '"';
  SQLTotalQdte.Open;
  if VlrMedCompra.Value > 0 then
    PercMedioCompra.Value := ((2 / VlrMedCompra.Value) -1 ) * 100;

  DM.InserindoItemNC:=False;

  if SQLTemplateControlaSerieLookup.AsVariant <> Null then
    if SQLTemplateControlaSerieLookup.AsString = 'S' then
      begin
        Application.CreateForm(TFormTelaGeralModalCadastroProdutoNumeroSerie,FormTelaGeralModalCadastroProdutoNumeroSerie);
        FormTelaGeralModalCadastroProdutoNumeroSerie.SQLProdutoSerie.Close;
        FormTelaGeralModalCadastroProdutoNumeroSerie.SQLProdutoSerie.MacroByName('MFiltro').AsString := 'NOCPA13ID = "' + SQLTemplateNOCPA13ID.AsString + '" AND PRODICOD = ' + SQLTemplatePRODICOD.AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.SQLProdutoSerie.Open;
        FormTelaGeralModalCadastroProdutoNumeroSerie.CodProduto          := SQLTemplatePRODICOD.AsInteger;
        FormTelaGeralModalCadastroProdutoNumeroSerie.Destino             := SQLOperacaoEstoqueOPESCORIGEMDESTINO.AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.IDNotaCompra        := SQLTemplateNOCPA13ID.AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.IDCliente           := DSMasterTemplate.DataSet.FieldByName('CLIEA13ID').AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.CodFornecedor       := DSMasterTemplate.DataSet.FieldByName('FORNICOD').AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.CodEmpresa          := DSMasterTemplate.DataSet.FieldByName('EMPRICODDEST').AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.LabelTitulo.Caption := FormTelaGeralModalCadastroProdutoNumeroSerie.LabelTitulo.Caption + ' - ' + SQLTemplateProdutoLookUp.AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.LabelTitulo.Update;
        FormTelaGeralModalCadastroProdutoNumeroSerie.QtdeSerie           := SQLTemplateNOCIN3QTDEMBAL.AsInteger;
        FormTelaGeralModalCadastroProdutoNumeroSerie.ShowModal;
      end;
  if (Application.FindComponent('FormCadastroNotaCompraItem') <> nil) then
    if IncluindoItem then
     if Pergunta('SIM','Deseja Incluir outro Item?') then
       SQLtemplate.Append
     else
       Close;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  TotalItem := SQLTemplateTotalItemCalc.asFloat;
  TotalDesc := SQLTemplateNOCIN3VLRDESC.asFloat;
  QtdePed   := SQLTemplateNOCIN3QTDEPED.asFloat;
  IncluindoItem := False;  
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  TotalItem := 0;
  TotalDesc := 0;
  QtdePed   := 0;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
  TotalItem    := SQLTemplateTotalItemCalc.asFloat;
  TotalDesc    := SQLTemplateNOCIN3VLRDESC.asFloat;
  QtdePed      := SQLTemplateNOCIN3QTDEPED.asFloat;
  CodigoPedido := DataSet.FindField('PDCPA13ID').asString;
  PosicaoItem  := DataSet.FindField('PCITIPOS').asInteger;
  inherited;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  DM.InserindoItemNC:=True;
  SQLTemplate.DataSource.DataSet.Edit;
  SQLTemplate.DataSource.DataSet.AutoCalcFields := False;
  SQLTemplate.DataSource.DataSet.FindField('NOCPN3SOMAITENS').asFloat :=
  (SQLTemplate.DataSource.DataSet.FindField('NOCPN3SOMAITENS').asFloat - TotalItem);
  SQLTemplate.DataSource.DataSet.FindField('NOCPN3TOTDESC').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOCPN3TOTDESC').asFloat - TotalDesc);
  SQLTemplate.DataSource.DataSet.Post;
  SQLTemplate.DataSource.DataSet.AutoCalcFields := True;
  If (CodigoPedido<>'') Then
    AtualizaPedidoCompra(CodigoPedido,PosicaoItem,QtdePed,0);
  SQLTotalQdte.Close;
  SQLTotalQdte.MacroByName('NotaCompra').AsString := 'NOCPA13ID = "' + DSMasterTemplate.DataSet.FieldByName('NOCPA13ID').AsString + '"';
  SQLTotalQdte.Open;
  try
    PercMedioCompra.Value := ((2 / VlrMedCompra.Value) -1 ) * 100;
  except
    Application.ProcessMessages;
  end;  
  DM.InserindoItemNC:=False;
end;

procedure TFormCadastroNotaCompraItem.BtnProdutoClick(Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('PRODICOD');
  FieldOrigem := 'PRODICOD';
  CriaFormulario(TFormCadastroProduto,'FormCadastroProduto',False,True,False,'');
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  SaldoAtual.Font.Color := clBlack ;
  SaldoAtual.Value      := 0 ;
end;

procedure TFormCadastroNotaCompraItem.DSTemplateStateChange(
  Sender: TObject);
begin
  inherited;
  If (Sender as TDataSource).State = dsBrowse Then
    Begin
      SaldoAtual.Enabled := False;
    End
  Else
    Begin
      SaldoAtual.Enabled := True;
    End;
  if DSMasterTemplate.DataSet.FieldByName('NOCPCSTATUS').AsString <> 'A' then
    DesabilitarBotoes(True,True,True,True,True);
end;

procedure TFormCadastroNotaCompraItem.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if (SQLTemplate.FindField('NOCIN2VLRVENDA').asFloat > 0) and (SQLTemplate.FieldByName('NOCIN3VLRCUSTOMED').asFloat > 0) then
    edtMargemReal.Value := ((SQLTemplate.FindField('NOCIN2VLRVENDA').asFloat/SQLTemplate.FieldByName('NOCIN3VLRCUSTOMED').asFloat)-1) * 100;
  LabelLote.Visible  := Dm.SQLConfigGeralCFGECESTOQUEPORLOTE.AsString = 'S';
  DBEditLote.Visible := Dm.SQLConfigGeralCFGECESTOQUEPORLOTE.AsString = 'S';
  ButtonLote.Visible := Dm.SQLConfigGeralCFGECESTOQUEPORLOTE.AsString = 'S';

  if SQLOperacaoEstoqueOPESCORIGEMDESTINO.AsString = 'F' then
    Begin
      LabelFornEmpCli.Caption            := 'Fornecedor';
      LabelFornEmpCli.Update;
    End;
  if SQLOperacaoEstoqueOPESCORIGEMDESTINO.AsString = 'E' then
    Begin
      LabelFornEmpCli.Caption            := 'Empresa';
      LabelFornEmpCli.Update;
    End;
  if SQLOperacaoEstoqueOPESCORIGEMDESTINO.AsString = 'C' then
    Begin
      LabelFornEmpCli.Caption            := 'Cliente';
      LabelFornEmpCli.Update;
    End;
  if not DSMasterTemplate.DataSet.FieldByName('FUNCCAUTONOMO').IsNull then
    if DSMasterTemplate.DataSet.FieldByName('FUNCCAUTONOMO').AsString = 'A' then
       EditValorComissao.Text := FloatToStr(SQLTemplateNOCIN3QTDEMBAL.AsFloat * SQLTemplateNOCIN2VLRCOMISSAO.AsFloat)
    else
       EditValorComissao.Text := FloatToStr((SQLTemplateNOCIN3QTDEMBAL.AsFloat * SQLTemplateNOCIN2VLRCOMISSAO.AsFloat) * (DSMasterTemplate.DataSet.FieldByName('FUNCN2PERCCOMISSAO').AsFloat / 100));

  // Nro Serie
  if not SQLProdutoSerie.IsEmpty then
    GroupNroSerie.Visible := True
  else
    GroupNroSerie.Visible := False;
end;

procedure TFormCadastroNotaCompraItem.DBEditLoteExit(Sender: TObject);
begin
  inherited;
  if SQLTemplateLOTEA30NRO.AsString <> '' then
    if SQLLocate('LOTE','LOTEA30NRO','LOTEA30NRO','"' + SQLTemplateLOTEA30NRO.AsString + '"') = '' then
      begin
        Informa('O número de lote informado está incorreto ou não foi cadastrado. Tente novamente !');
        (Sender as TDBEdit).SetFocus;
      end;
  if SQLTemplate.FieldByName('PRODICOD').AsVariant <> Null then
    DBEditQtde.SetFocus;
end;

procedure TFormCadastroNotaCompraItem.ButtonLoteClick(Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('LOTEA30NRO');
  FieldOrigem := 'LOTEA30NRO';
  CriaFormulario(TFormCadastroLote,'FormCadastroLote',False,True,True,'');
end;

procedure TFormCadastroNotaCompraItem.DBEditLoteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_F2) and (Dm.SQLConfigGeralCFGECESTOQUEPORLOTE.AsString = 'S') then
    ButtonLote.Click;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  if SQLTotalQdte.Active then SQLTotalQdte.Close;
  SQLTotalQdte.MacroByName('NotaCompra').AsString := 'NOCPA13ID = "' + DSMasterTemplate.DataSet.FieldByName('NOCPA13ID').AsString + '"';
  SQLTotalQdte.Open;
  if VlrMedCompra.Value > 0 then
    PercMedioCompra.Value := ((2 / VlrMedCompra.Value) -1 ) * 100;
end;

procedure TFormCadastroNotaCompraItem.FormActivate(Sender: TObject);
begin
  inherited;
   if not SQLOperacaoEstoque.Active then SQLOperacaoEstoque.Open;
   RadioPesquisa.TabStop := False;
end;

procedure TFormCadastroNotaCompraItem.DBEditTarifaComissaoChange(Sender: TObject);
begin
  inherited;
  if SQLTemplate.State in DSEditModes then
    begin
      if (SQLTemplate.DataSource.DataSet.FieldByName('NOCPN3VLRFRETE').AsFloat > 0) and
         (SQLTemplate.FindField('NOCIN3QTDEMBAL').asFloat > 0) and
         (SQLTemplate.FindField('TotalItemCalc').asFloat > 0) and
         (SQLTemplate.FindField('TotalItemCalc').asFloat > 0) and
         (SQLTemplate.DataSource.DataSet.FieldByName('NOCPN3TOTITENS').AsFloat > 0) then
        begin
          // Calculo oficial até 06112006
          //    FreteUnit :=  ((SQLTemplate.FindField('TotalItemCalc').asFloat / SQLTemplate.DataSource.DataSet.FieldByName('NOCPN3TOTITENS').AsFloat) *
          //                    SQLTemplate.DataSource.DataSet.FieldByName('NOCPN3VLRFRETE').AsFloat) / SQLTemplate.FindField('NOCIN3QTDEMBAL').asFloat;
          FreteUnit := SQLTemplate.DataSource.DataSet.FieldByName('NOCPN3VLRTOTNOTA').AsFloat/
                       (SQLTemplate.DataSource.DataSet.FieldByName('NOCPN3VLRTOTNOTA').AsFloat -
                        SQLTemplate.DataSource.DataSet.FieldByName('NOCPN3VLRFRETE').AsFloat);
          FreteUnit := (FreteUnit - 1) * 100;
          SQLTemplate.FindField('NOCIN3VLRFRETE').asFloat := SQLTemplate.FindField('NOCIN3VLREMBAL').asFloat *
                                                             (FreteUnit/100);
        end
      else
        FreteUnit := 0;

      if DSMasterTemplate.DataSet.FieldByName('FUNCCAUTONOMO').AsString = 'A' then
        EditValorComissao.Text := FloatToStr(SQLTemplateNOCIN3QTDEMBAL.AsFloat * SQLTemplateNOCIN2VLRCOMISSAO.AsFloat)
      else
        EditValorComissao.Text := FloatToStr((SQLTemplateNOCIN3QTDEMBAL.AsFloat * SQLTemplateNOCIN2VLRCOMISSAO.AsFloat) * (DSMasterTemplate.DataSet.FieldByName('FUNCN2PERCCOMISSAO').AsFloat / 100));
    end;
end;

procedure TFormCadastroNotaCompraItem.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (((Sender as TForm).ActiveControl <> EditCdProduto) and (RadioPesquisa.ItemIndex <> 0))
     or ((Application.FindComponent('FormTelaConsultaProduto') = nil)
         and ( Application.FindComponent('FormTelaLancamentoGradeNota') = nil)) then
  inherited;
end;

procedure TFormCadastroNotaCompraItem.MnNumerosdeSerieClick(
  Sender: TObject);
begin
  inherited;
  if SQLTemplateControlaSerieLookup.AsVariant <> Null then
    if SQLTemplateControlaSerieLookup.AsString = 'S' then
      begin
        Application.CreateForm(TFormTelaGeralModalCadastroProdutoNumeroSerie,FormTelaGeralModalCadastroProdutoNumeroSerie);
        FormTelaGeralModalCadastroProdutoNumeroSerie.SQLProdutoSerie.Close;
        FormTelaGeralModalCadastroProdutoNumeroSerie.SQLProdutoSerie.MacroByName('MFiltro').AsString := 'NOCPA13ID = "' + SQLTemplateNOCPA13ID.AsString + '" AND PRODICOD = ' + SQLTemplatePRODICOD.AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.SQLProdutoSerie.Open;
        FormTelaGeralModalCadastroProdutoNumeroSerie.CodProduto          := SQLTemplatePRODICOD.AsInteger;
        FormTelaGeralModalCadastroProdutoNumeroSerie.Destino             := SQLOperacaoEstoqueOPESCORIGEMDESTINO.AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.IDNotaCompra        := SQLTemplateNOCPA13ID.AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.IDCliente           := DSMasterTemplate.DataSet.FieldByName('CLIEA13ID').AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.CodFornecedor       := DSMasterTemplate.DataSet.FieldByName('FORNICOD').AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.CodEmpresa          := DSMasterTemplate.DataSet.FieldByName('EMPRICODDEST').AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.LabelTitulo.Caption := FormTelaGeralModalCadastroProdutoNumeroSerie.LabelTitulo.Caption + ' - ' + SQLTemplateProdutoLookUp.AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.LabelTitulo.Update;
        FormTelaGeralModalCadastroProdutoNumeroSerie.ShowModal;
      end;
end;

procedure TFormCadastroNotaCompraItem.RadioPesquisaClick(Sender: TObject);
begin
  inherited;
  EditCdProduto.SetFocus;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN2VLRVENDA2Change(
  Sender: TField);
begin
  inherited;
  If AlterandoValores Then Exit;
  AlterandoValores := True;
  if (SQLTemplate.FindField('NOCIN2VLRVENDA2').asFloat > 0) and (SQLTemplate.FieldByName('NOCIN3VLRCUSTOMED').asFloat > 0) then
    SQLTemplate.FindField('NOCIN2MGVENDA2').asFloat := ((SQLTemplate.FindField('NOCIN2VLRVENDA2').asFloat / SQLTemplate.FieldByName('NOCIN3VLRCUSTOMED').asFloat) - 1) * 100;
  AlterandoValores := False;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN3VLRFRETEChange(
  Sender: TField);
begin
  inherited;
  if SQLTemplatePRODICOD.AsString <> '' then
    begin
      try
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRUNIT.AsFloat  -
                                                 (SQLTemplateNOCIN3VLRDESC.AsFloat/(SQLTemplateNOCIN3CAPEMBAL.asFloat *SQLTemplateNOCIN3QTDEMBAL.AsFloat)) +
                                                 (SQLTemplateNOCIN3VLRIPI.asFloat/(SQLTemplateNOCIN3CAPEMBAL.asFloat  *SQLTemplateNOCIN3QTDEMBAL.AsFloat)) +
                                                 (SQLTemplateNOCIN3VLRSUBST.AsFloat/(SQLTemplateNOCIN3CAPEMBAL.asFloat*SQLTemplateNOCIN3QTDEMBAL.AsFloat)) +
                                                 (SQLTemplateNOCIN3VLRFRETE.AsFloat/(SQLTemplateNOCIN3CAPEMBAL.asFloat*SQLTemplateNOCIN3QTDEMBAL.AsFloat));
//                                                 SQLTemplateNOCIN3VLRFRETE.AsFloat ;
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplateNOCIN2PERCDESP.Value)/100);
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplateNOCIN2PERCDIFICM.Value)/100);
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplateCofinsCalc.Value)/100);
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplatePisCalc.Value)/100);
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplateEncargosCalc.Value)/100);
      except
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat := 0;
      end;
    end;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN3VLRSUBSTChange(
  Sender: TField);
begin
  inherited;
  if SQLTemplatePRODICOD.AsString <> '' then
    begin
      try
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRUNIT.AsFloat  -
                                                 (SQLTemplateNOCIN3VLRDESC.AsFloat/(SQLTemplateNOCIN3CAPEMBAL.asFloat *SQLTemplateNOCIN3QTDEMBAL.AsFloat)) +
                                                 (SQLTemplateNOCIN3VLRIPI.asFloat/(SQLTemplateNOCIN3CAPEMBAL.asFloat  *SQLTemplateNOCIN3QTDEMBAL.AsFloat)) +
                                                 (SQLTemplateNOCIN3VLRSUBST.AsFloat/(SQLTemplateNOCIN3CAPEMBAL.asFloat*SQLTemplateNOCIN3QTDEMBAL.AsFloat)) +
                                                 (SQLTemplateNOCIN3VLRFRETE.AsFloat/(SQLTemplateNOCIN3CAPEMBAL.asFloat*SQLTemplateNOCIN3QTDEMBAL.AsFloat))  ;
//                                                 SQLTemplateNOCIN3VLRFRETE.AsFloat ;
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplateNOCIN2PERCDESP.Value)/100);
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplateNOCIN2PERCDIFICM.Value)/100);
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplateCofinsCalc.Value)/100);
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplatePisCalc.Value)/100);
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplateEncargosCalc.Value)/100);
      except
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat := 0;
      end;
    end;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN3VLRICMSChange(
  Sender: TField);
begin
  inherited;
  if SQLTemplatePRODICOD.AsString <> '' then
    begin
      try
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRUNIT.AsFloat  -
                                                 (SQLTemplateNOCIN3VLRDESC.AsFloat/(SQLTemplateNOCIN3CAPEMBAL.asFloat *SQLTemplateNOCIN3QTDEMBAL.AsFloat)) +
                                                 (SQLTemplateNOCIN3VLRIPI.asFloat/(SQLTemplateNOCIN3CAPEMBAL.asFloat  *SQLTemplateNOCIN3QTDEMBAL.AsFloat)) +
                                                 (SQLTemplateNOCIN3VLRSUBST.AsFloat/(SQLTemplateNOCIN3CAPEMBAL.asFloat*SQLTemplateNOCIN3QTDEMBAL.AsFloat)) +
                                                 (SQLTemplateNOCIN3VLRFRETE.AsFloat/(SQLTemplateNOCIN3CAPEMBAL.asFloat*SQLTemplateNOCIN3QTDEMBAL.AsFloat))  ;
//                                                 SQLTemplateNOCIN3VLRFRETE.AsFloat ;
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplateNOCIN2PERCDESP.Value)/100);
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplateNOCIN2PERCDIFICM.Value)/100);
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplateCofinsCalc.Value)/100);
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplatePisCalc.Value)/100);
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplateEncargosCalc.Value)/100);
      except
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat := 0;
      end;
    end;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN3VLRIPIChange(
  Sender: TField);
begin
  inherited;
  if SQLTemplatePRODICOD.AsString <> '' then
    begin
      try
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRUNIT.AsFloat  -
                                                 (SQLTemplateNOCIN3VLRDESC.AsFloat/(SQLTemplateNOCIN3CAPEMBAL.asFloat *SQLTemplateNOCIN3QTDEMBAL.AsFloat)) +
                                                 (SQLTemplateNOCIN3VLRIPI.asFloat/(SQLTemplateNOCIN3CAPEMBAL.asFloat  *SQLTemplateNOCIN3QTDEMBAL.AsFloat)) +
                                                 (SQLTemplateNOCIN3VLRSUBST.AsFloat/(SQLTemplateNOCIN3CAPEMBAL.asFloat*SQLTemplateNOCIN3QTDEMBAL.AsFloat)) +
                                                 (SQLTemplateNOCIN3VLRFRETE.AsFloat/(SQLTemplateNOCIN3CAPEMBAL.asFloat*SQLTemplateNOCIN3QTDEMBAL.AsFloat))  ;
//                                                 SQLTemplateNOCIN3VLRFRETE.AsFloat ;
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplateNOCIN2PERCDESP.Value)/100);
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplateNOCIN2PERCDIFICM.Value)/100);
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplateCofinsCalc.Value)/100);
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplatePisCalc.Value)/100);
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplateEncargosCalc.Value)/100);
      except
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat := 0;
      end;
    end;

  If Ocupado Then Exit;
  Ocupado:=True;
  If (SQLTemplateNOCIN3VLRIPI.asFloat>0) and (SQLTemplateTotalItemCalc.asFloat>0) Then
    SQLTemplateNOCIN3PERCIPI.asFloat := (SQLTemplateNOCIN3VLRIPI.asFloat / SQLTemplateTotalItemCalc.asFloat) * 100
  Else
    Begin
      SQLTemplateNOCIN3VLRIPI.asFloat  := 0;
      SQLTemplateNOCIN3PERCIPI.asFloat := 0;
    End;
  Ocupado:=False;
end;


procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN2PERCDESPChange(
  Sender: TField);
begin
  inherited;
  if SQLTemplatePRODICOD.AsString <> '' then
    begin
      try
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRUNIT.AsFloat  -
                                                 (SQLTemplateNOCIN3VLRDESC.AsFloat/(SQLTemplateNOCIN3CAPEMBAL.asFloat *SQLTemplateNOCIN3QTDEMBAL.AsFloat)) +
                                                 (SQLTemplateNOCIN3VLRIPI.asFloat/(SQLTemplateNOCIN3CAPEMBAL.asFloat  *SQLTemplateNOCIN3QTDEMBAL.AsFloat)) +
                                                 (SQLTemplateNOCIN3VLRSUBST.AsFloat/(SQLTemplateNOCIN3CAPEMBAL.asFloat*SQLTemplateNOCIN3QTDEMBAL.AsFloat)) +
                                                 (SQLTemplateNOCIN3VLRFRETE.AsFloat/(SQLTemplateNOCIN3CAPEMBAL.asFloat*SQLTemplateNOCIN3QTDEMBAL.AsFloat))  ;
//                                                 SQLTemplateNOCIN3VLRFRETE.AsFloat ;
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplateNOCIN2PERCDESP.Value)/100);
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplateNOCIN2PERCDIFICM.Value)/100);
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplateCofinsCalc.Value)/100);
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplatePisCalc.Value)/100);
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplateEncargosCalc.Value)/100);
      except
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat := 0;
      end;
    end;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN2PERCDIFICMChange(
  Sender: TField);
begin
  inherited;
  if SQLTemplatePRODICOD.AsString <> '' then
    begin
      try
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRUNIT.AsFloat  -
                                                 (SQLTemplateNOCIN3VLRDESC.AsFloat/(SQLTemplateNOCIN3CAPEMBAL.asFloat *SQLTemplateNOCIN3QTDEMBAL.AsFloat)) +
                                                 (SQLTemplateNOCIN3VLRIPI.asFloat/(SQLTemplateNOCIN3CAPEMBAL.asFloat  *SQLTemplateNOCIN3QTDEMBAL.AsFloat)) +
                                                 (SQLTemplateNOCIN3VLRSUBST.AsFloat/(SQLTemplateNOCIN3CAPEMBAL.asFloat*SQLTemplateNOCIN3QTDEMBAL.AsFloat)) +
                                                 (SQLTemplateNOCIN3VLRFRETE.AsFloat/(SQLTemplateNOCIN3CAPEMBAL.asFloat*SQLTemplateNOCIN3QTDEMBAL.AsFloat))  ;
//                                                 SQLTemplateNOCIN3VLRFRETE.AsFloat ;
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplateNOCIN2PERCDESP.Value)/100);
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplateNOCIN2PERCDIFICM.Value)/100);
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplateCofinsCalc.Value)/100);
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplatePisCalc.Value)/100);
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplateEncargosCalc.Value)/100);
      except
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat := 0;
      end;
    end;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN3VLRDESCChange(
  Sender: TField);
begin
  inherited;
  if SQLTemplatePRODICOD.AsString <> '' then
    begin
      try
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRUNIT.AsFloat  -
                                                 (SQLTemplateNOCIN3VLRDESC.AsFloat/(SQLTemplateNOCIN3CAPEMBAL.asFloat *SQLTemplateNOCIN3QTDEMBAL.AsFloat)) +
                                                 (SQLTemplateNOCIN3VLRIPI.asFloat/(SQLTemplateNOCIN3CAPEMBAL.asFloat  *SQLTemplateNOCIN3QTDEMBAL.AsFloat)) +
                                                 (SQLTemplateNOCIN3VLRSUBST.AsFloat/(SQLTemplateNOCIN3CAPEMBAL.asFloat*SQLTemplateNOCIN3QTDEMBAL.AsFloat)) +
                                                 (SQLTemplateNOCIN3VLRFRETE.AsFloat/(SQLTemplateNOCIN3CAPEMBAL.asFloat*SQLTemplateNOCIN3QTDEMBAL.AsFloat))  ;
//                                                 SQLTemplateNOCIN3VLRFRETE.AsFloat ;
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplateNOCIN2PERCDESP.Value)/100);
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplateNOCIN2PERCDIFICM.Value)/100);
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplateCofinsCalc.Value)/100);
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplatePisCalc.Value)/100);
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRCUSTOMED.asFloat + ((SQLTemplateNOCIN3VLRUNIT.AsFloat*SQLTemplateEncargosCalc.Value)/100);
      except
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat := 0;
      end;
    end;

  If Ocupado Then Exit;
  Ocupado:=True;
  If (SQLTemplateNOCIN3VLRDESC.asFloat > 0) Then
    SQLTemplateNOCIN3PERCDESC.asFloat := (SQLTemplateNOCIN3VLRDESC.asFloat /(SQLTemplateNOCIN3VLREMBAL.AsFloat * SQLTemplateNOCIN3QTDEMBAL.asFloat)) * 100
  Else
    SQLTemplateNOCIN3PERCDESC.asFloat := 0;
  Ocupado:=False;
end;

procedure TFormCadastroNotaCompraItem.DBEditMGVarejoExit(Sender: TObject);
begin
  inherited;
  if (SQLTemplate.FindField('NOCIN3VLRCUSTOMED').asFloat > 0) and (SQLTemplate.FindField('NOCIN2MGVENDA').asFloat > 0) then
    begin
      { SQLTemplate.FindField('NOCIN2VLRVENDA').asFloat := SQLTemplateNOCIN3VLRCUSTOMED.asFloat *
                                                         (1+((SQLTemplateCofinsCalc.AsFloat/100)   +
                                                             (SQLTemplatePisCalc.AsFloat/100)      +
                                                             (SQLTemplateEncargosCalc.AsFloat/100))); }
      SQLTemplate.FindField('NOCIN2VLRVENDA').asFloat := SQLTemplateNOCIN3VLRCUSTOMED.asFloat ;
      SQLTemplate.FindField('NOCIN2VLRVENDA').asFloat := SQLTemplate.FindField('NOCIN2VLRVENDA').asFloat *
                                                         (1+((SQLTemplateNOCIN2MGVENDA.asFloat/100)));
    end;
end;

procedure TFormCadastroNotaCompraItem.DBEditMGAtacadoExit(Sender: TObject);
begin
  inherited;
  if (SQLTemplate.FindField('NOCIN3VLRCUSTOMED').asFloat > 0) and (SQLTemplate.FindField('NOCIN2MGVENDA2').asFloat > 0) then
    begin
      SQLTemplate.FindField('NOCIN2VLRVENDA2').asFloat := SQLTemplateNOCIN3VLRCUSTOMED.asFloat ;
      SQLTemplate.FindField('NOCIN2VLRVENDA2').asFloat := SQLTemplate.FindField('NOCIN2VLRVENDA2').asFloat *
                                                         (1+((SQLTemplateNOCIN2MGVENDA.asFloat/100)));
    end;
end;

procedure TFormCadastroNotaCompraItem.DBEditVLRVarejoEnter(
  Sender: TObject);
begin
  inherited;
  VlrVendaOld := SQLTemplate.FindField('NOCIN2VLRVENDA').asFloat;
end;

procedure TFormCadastroNotaCompraItem.DBEditVLRVarejoExit(Sender: TObject);
begin
  inherited;
  if (VlrVendaOld <> SQLTemplate.FindField('NOCIN2VLRVENDA').asFloat) and (SQLTemplate.FindField('NOCIN2VLRVENDA').asFloat > 0) and (SQLTemplate.FieldByName('NOCIN3VLRCUSTOMED').asFloat > 0) then
    begin
      try
//        SQLTemplate.FindField('NOCIN2MGVENDA').asFloat := ((SQLTemplate.FindField('NOCIN2VLRVENDA').asFloat / SQLTemplate.FieldByName('NOCIN3VLRCUSTOMED').asFloat) - 1) * 100;
        edtMargemReal.Value := ((SQLTemplate.FindField('NOCIN2VLRVENDA').asFloat / SQLTemplate.FieldByName('NOCIN3VLRCUSTOMED').asFloat) - 1) * 100;
      except
        Application.ProcessMessages;
      end;
    end;
  if (SQLTemplateNOCIN2FATOR199.Value > 0) then
    SQLTemplateNOCIN2QTDENF.Value   := (SQLTemplateNOCIN3QTDEMBAL.Value * SQLTemplate.FindField('NOCIN2VLRVENDA').asFloat)/SQLTemplateNOCIN2FATOR199.Value
  else
    SQLTemplateNOCIN2QTDENF.Value   := SQLTemplateNOCIN3QTDEMBAL.Value;

end;

procedure TFormCadastroNotaCompraItem.DBEditVlrAtacadoEnter(
  Sender: TObject);
begin
  inherited;
  VlrVenda2Old := SQLTemplate.FindField('NOCIN2VLRVENDA2').asFloat;
end;

procedure TFormCadastroNotaCompraItem.DBEditVlrAtacadoExit(
  Sender: TObject);
begin
  inherited;
  if (VlrVenda2Old <> SQLTemplate.FindField('NOCIN2VLRVENDA2').asFloat) and (SQLTemplate.FindField('NOCIN2VLRVENDA2').asFloat > 0) and (SQLTemplate.FieldByName('NOCIN3VLRCUSTOMED').asFloat > 0) then
    begin
      try
        SQLTemplate.FindField('NOCIN2MGVENDA2').asFloat := ((SQLTemplate.FindField('NOCIN2VLRVENDA2').asFloat / SQLTemplate.FieldByName('NOCIN3VLRCUSTOMED').asFloat) - 1) * 100;
      except
        Application.ProcessMessages;
      end;
    end;

  if DSTemplate.State = dsInsert then
    begin
      try
        SQLtemplate.Post;
      except
        Application.ProcessMessages;
      end;
    end;
end;


procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN2PERCSUBSTChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  If (SQLTemplateNOCIN2PERCSUBST.asFloat>0) and (SQLTemplateTotalItemCalc.asFloat>0) Then
    SQLTemplateNOCIN3VLRSUBST.asFloat := SQLTemplateTotalItemCalc.asFloat * (SQLTemplateNOCIN2PERCSUBST.asFloat / 100)
  Else
    SQLTemplateNOCIN3VLRSUBST.asFloat  := 0;
  Ocupado:=False;
end;

procedure TFormCadastroNotaCompraItem.EditReferenciaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  ProdutoDescricao  := '';
  ProdutoReferencia := '';
  if Key = VK_F2 then
    BtnProduto.Click;
  if Key = VK_F3 then
    begin
      FieldLookup := SQLTemplate.FieldByName('PRODICOD');
      FieldOrigem := 'PRODICOD';
      CriaFormulario(TFormTelaConsultaProdutoGeral,'FormTelaConsultaProdutoGeral',False,True,True,'');
    end;
  if Key = VK_RETURN then
    begin
      if (SQLTemplate.State in DSEditModes) then
        begin
          ProdutoDescricao  := EditCdProduto.Text;
          ProdutoReferencia := EditReferencia.Text;
          DM.ProcurandoProduto := True;
          TabSheetDadosPrincipais.SetFocus; // Foco colocado para pular para o Campo Qtde Comprado
          case RadioPesquisa.ItemIndex of
            0 : try
                  if FindProduct(EditCdProduto,SQLTemplate.FieldByName('PRODICOD')) then
                    begin
                      // Testa se o Produto ja foi incluido e da Alerta
                      SQLGeral.Close ;
                      SQLGeral.SQL.Clear ;
                      SQLGeral.SQL.Add('Select PRODICOD from NOTACOMPRAITEM') ;
                      SQLGeral.SQL.Add('where NOCPA13ID = "' + SQLTemplateNOCPA13ID.AsString+'"') ;
                      SQLGeral.SQL.Add('and   PRODICOD = ' + SQLTemplatePRODICOD.AsString) ;
                      SQLGeral.Open ;
                      if not SQLGeral.IsEmpty then
                        begin
                          ShowMessage('Este produto ja foi incluido nessa nota fiscal!');
                          EditCdProduto.SetFocus;
                        end;
                      SQLGeral.Close;
                    end;
                except
                  Application.ProcessMessages;
                end;
            1 : begin
                  SQLProdutoFornecedor.Close;
                  SQLProdutoFornecedor.MacroByName('PRODICOD').AsString := '0=0';
                  SQLProdutoFornecedor.MacroByName('FORNICOD').AsString := 'FORNICOD = ' + SQLTemplate.DataSource.DataSet.FindField('FORNICOD').AsString;
                  SQLProdutoFornecedor.MacroByName('Referencia').AsString := 'PRFOA30REFERENCIA = '+'"'+EditCDProduto.Text+'"';
                  SQLProdutoFornecedor.Open;
                  if not SQLProdutoFornecedor.IsEmpty then
                    begin
                      SQLTemplate.FieldByName('PRODICOD').AsInteger := SQLProdutoFornecedor.FieldByName('PRODICOD').asInteger;
                      // Testa se o Produto esta Ativo
                      SQLGeral.Close ;
                      SQLGeral.SQL.Clear ;
                      SQLGeral.SQL.Add('Select PRODICOD, PRODCATIVO from PRODUTO') ;
                      SQLGeral.SQL.Add('where PRODICOD = ' + SQLProdutoFornecedor.FieldByName('PRODICOD').AsString) ;
                      SQLGeral.SQL.Add('and PRODCATIVO = "S"') ;
                      SQLGeral.Open ;
                      if SQLGeral.IsEmpty then
                        begin
                          SQLTemplate.FieldByName('PRODICOD').AsString := '';
                          EditCdProduto.SetFocus;
                        end
                      else
                        begin
                          // Testa se o Produto ja foi incluido
                          SQLGeral.Close ;
                          SQLGeral.SQL.Clear ;
                          SQLGeral.SQL.Add('Select PRODICOD from NOTACOMPRAITEM') ;
                          SQLGeral.SQL.Add('where NOCPA13ID = "' + SQLTemplateNOCPA13ID.AsString+'"') ;
                          SQLGeral.SQL.Add('and   PRODICOD = ' + SQLTemplatePRODICOD.AsString) ;
                          SQLGeral.Open ;
                          if not SQLGeral.IsEmpty then
                            begin
                              ShowMessage('Este produto ja foi incluido nessa nota fiscal!');
                              EditCdProduto.SetFocus;
                            end;
                          SQLGeral.Close;
                        end;
                    end;
                end;
          end;
          DM.ProcurandoProduto := True;
        end;
    end;
end;

procedure TFormCadastroNotaCompraItem.EditCdProdutoEnter(Sender: TObject);
begin
  inherited;
  EditCdProduto.SelectAll;
end;

procedure TFormCadastroNotaCompraItem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SQLTotalQdteVALORTOTALNF.Value < DSMasterTemplate.DataSet.FieldByName('NOCPN3TOTITENS').Value then
    begin
      if not Pergunta('SIM','O sistema encontrou diferença!' + chr(13)+
                  'Total Nota ('+FormatFloat('#,##0.00',DSMasterTemplate.DataSet.FieldByName('NOCPN3TOTITENS').AsFloat)+') <> Total dos Itens Digitados ('+FormatFloat('#,##0.00',SQLTotalQdteVALORTOTALNF.asFloat)+')' + chr(13) +
                  'Tem certeza que deseja fechar a tela de itens?') then
        begin
          Abort;
          Exit;
        end
      else
        inherited;
    end
  else
    inherited;
end;

procedure TFormCadastroNotaCompraItem.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFormTelaPedidoCompraHistoricoComprasVendasProduto,FormTelaPedidoCompraHistoricoComprasVendasProduto);
  FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLNotasCompra.Close;
  FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLNotasCompra.MacroByName('MProduto').Value := 'NotaCompraItem.PRODICOD = '+SQLTemplatePRODICOD.AsString;
  FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLNotasCompra.Open;
  FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLVendas.Close;
  FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLVendas.MacroByName('MProduto').Value  := 'CUPOMITEM.PRODICOD = '+SQLTemplatePRODICOD.AsString;
  FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLVendas.MacroByName('MProduto1').Value := 'NOTAFISCALITEM.PRODICOD = '+SQLTemplatePRODICOD.AsString;
  FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLVendas.Open;
  FormTelaPedidoCompraHistoricoComprasVendasProduto.LBProduto.Caption := 'Produto => '+SQLTemplateProdutoLookUp.Value;
  FormTelaPedidoCompraHistoricoComprasVendasProduto.ShowModal;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN3PERCFRETEChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  If (SQLTemplateNOCIN3PERCFRETE.asFloat>0) and (SQLTemplateTotalItemCalc.asFloat>0) Then
    SQLTemplateNOCIN3VLRFRETE.asFloat := SQLTemplateTotalItemCalc.asFloat * (SQLTemplateNOCIN3PERCFRETE.asFloat / 100)
  Else
    SQLTemplateNOCIN3VLRFRETE.asFloat  := 0;
  Ocupado:=False;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN3PERCICMSChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  If (SQLTemplateNOCIN3PERCICMS.asFloat>0) and (SQLTemplateTotalItemCalc.asFloat>0) Then
    SQLTemplateNOCIN3VLRICMS.asFloat := SQLTemplateTotalItemCalc.asFloat * (SQLTemplateNOCIN3PERCICMS.asFloat / 100)
  Else
    SQLTemplateNOCIN3VLRICMS.asFloat  := 0;
  Ocupado:=False;

end;

procedure TFormCadastroNotaCompraItem.edtSimulaMargemExit(Sender: TObject);
begin
  inherited;
  if edtSimulaMargem.Value > 0 then
  begin
    SQLTemplateNOCIN2VLRVENDA.value := SQLTemplateNOCIN3VLRCUSTOMED.Value + (SQLTemplateNOCIN3VLRCUSTOMED.Value * (edtSimulaMargem.value / 100));
    DBEditVLRVarejoExit(DBEditVLRVarejo);
  end;
end;

procedure TFormCadastroNotaCompraItem.edtSimulaMargem2Exit(
  Sender: TObject);
begin
  inherited;
  if edtSimulaMargem2.Value > 0 then
  begin
    SQLTemplateNOCIN2VLRVENDA2.value := SQLTemplateNOCIN3VLRCUSTOMED.Value + (SQLTemplateNOCIN3VLRCUSTOMED.Value * (edtSimulaMargem2.value / 100));
    DBEditVlrAtacadoExit(DBEditVlrAtacado);
  end;
end;

procedure TFormCadastroNotaCompraItem.edtSimulaMargemEnter(
  Sender: TObject);
begin
  inherited;
  edtSimulaMargem.Value := SQLTemplateNOCIN2MGVENDA.Value;
end;

procedure TFormCadastroNotaCompraItem.edtSimulaMargem2Enter(
  Sender: TObject);
begin
  inherited;
  edtSimulaMargem2.value := SQLTemplateNOCIN2MGVENDA2.Value;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN2VLRVENDAChange(
  Sender: TField);
begin
  inherited;
  if SQLTemplate.FindField('ValorVendaAtual').AsFloat > SQLTemplate.FindField('NOCIN2VLRVENDA').asFloat then
    SQLTemplate.FindField('NOCICALTPRECO').Value := 'B';
  if SQLTemplate.FindField('ValorVendaAtual').AsFloat = SQLTemplate.FindField('NOCIN2VLRVENDA').asFloat then
    SQLTemplate.FindField('NOCICALTPRECO').Value := 'I';
  if SQLTemplate.FindField('ValorVendaAtual').AsFloat < SQLTemplate.FindField('NOCIN2VLRVENDA').asFloat then
    SQLTemplate.FindField('NOCICALTPRECO').Value := 'A';
end;

Procedure TFormCadastroNotaCompraItem.CalculaCampos;
begin

end;

procedure TFormCadastroNotaCompraItem.EditCdProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    BtnProduto.Click;
end;

procedure TFormCadastroNotaCompraItem.DBEditPercIcmSubstExit(
  Sender: TObject);
begin
  inherited;
  try
    If (SQLTemplateNOCIN2PERCSUBST.asFloat>0) and (SQLTemplateTotalItemCalc.asFloat>0) Then
      SQLTemplateNOCIN3VLRSUBST.asFloat := SQLTemplateTotalItemCalc.asFloat * (SQLTemplateNOCIN2PERCSUBST.asFloat / 100)
    Else
      SQLTemplateNOCIN3VLRSUBST.asFloat  := 0;
  except
    Application.ProcessMessages;
  end;
end;

end.
