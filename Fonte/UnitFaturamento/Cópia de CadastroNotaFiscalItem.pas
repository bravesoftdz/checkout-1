Unit CadastroNotaFiscalItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, RxDBComb, ToolEdit, RXDBCtrl, DBCtrls, VarSys, FormResources,
  EDBNum, CurrEdit, Placemnt, RxLookup;

type
  TICMSUF = Record
    nICMS,
    nRED_ICMS,
    nICMS_INTERNO,
    nMVA : Double;
    nSTFisica:String;
    nSTJuridica:String;
  end;

  TFormCadastroNotaFiscalItem = class(TFormCadastroTEMPLATE)
    SQLTemplateNOFIA13ID: TStringField;
    SQLTemplateNFITIITEM: TIntegerField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplateNFITN3QUANT: TBCDField;
    SQLTemplateNFITN2VLRUNIT: TBCDField;
    SQLTemplateNFITN2PERCDESC: TBCDField;
    SQLTemplateNFITN2VLRDESC: TBCDField;
    SQLTemplateNFITN2PERCICMS: TBCDField;
    SQLTemplateNFITN2BASEICMS: TBCDField;
    SQLTemplateNFITN2PERCSUBS: TBCDField;
    SQLTemplateNFITN2BASESUBS: TBCDField;
    SQLTemplateNFITN2VLRSUBS: TBCDField;
    SQLTemplateNFITN2PERCIPI: TBCDField;
    SQLTemplateNFITN2VLRIPI: TBCDField;
    SQLTemplateNFITN2PERCISSQN: TBCDField;
    SQLTemplateNFITN2VLRISSQN: TBCDField;
    SQLTemplateNFITN2VLRFRETE: TBCDField;
    SQLTemplateNFITN2VLRLUCRO: TBCDField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLAtualizaItemPedido: TRxQuery;
    SQLIcmsUF: TRxQuery;
    SQLIcms: TRxQuery;
    SQLTemplateAgrupGradeLookUp: TIntegerField;
    SQLTemplateGradeCodLookUp: TIntegerField;
    SQLTemplateProdutoLookUp: TStringField;
    SQLTemplateTotalItemCalc: TBCDField;
    SQLTemplateReferenciaLookUp: TStringField;
    SQLTemplateNFITN3QUANTVEND: TBCDField;
    SQLTemplatePVITIITEM: TIntegerField;
    SQLTemplatePDVDA13ID: TStringField;
    SQLTemplateNFITN3TOTVEND: TBCDField;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label26: TLabel;
    DBEdit9: TEvDBNumEdit;
    DBEdit10: TEvDBNumEdit;
    DBEdit12: TEvDBNumEdit;
    DBEdit13: TEvDBNumEdit;
    DBEdit26: TEvDBNumEdit;
    SQLTemplateNFITN2PERCREDUCAO: TBCDField;
    Label7: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    RxDBComboBox1: TRxDBComboBox;
    EvDBNumEdit1: TEvDBNumEdit;
    EvDBNumEdit2: TEvDBNumEdit;
    EvDBNumEdit3: TEvDBNumEdit;
    Label47: TLabel;
    EvDBNumEdit7: TEvDBNumEdit;
    SQLTemplateServicoLookUp: TStringField;
    SQLTemplatePesoBrutoLookUp: TBCDField;
    SQLTemplatePesoLiquidoLookUp: TBCDField;
    Label24: TLabel;
    EvDBNumEdit4: TEvDBNumEdit;
    SQLTemplateNFITN2PERCCOMIS: TBCDField;
    SQLGeral: TRxQuery;
    SQLTemplateValorCompraLookUp: TBCDField;
    SQLNumeroItens: TQuery;
    SQLTemplateCPITICPOS: TIntegerField;
    SQLTemplateCUPOA13ID: TStringField;
    SQLTemplateLOTEA30NRO: TStringField;
    MnNFImportarProdutosdoColetor: TMenuItem;
    Label25: TLabel;
    DBEdit3: TDBEdit;
    SQLTemplateNFITA254OBS: TStringField;
    GroupBox1: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBEdit14: TEvDBNumEdit;
    DBEdit15: TEvDBNumEdit;
    DBEdit16: TEvDBNumEdit;
    DBEdit17: TEvDBNumEdit;
    DBEdit18: TEvDBNumEdit;
    DBEdit19: TEvDBNumEdit;
    DBEdit20: TEvDBNumEdit;
    DBEdit21: TEvDBNumEdit;
    DBEdit22: TEvDBNumEdit;
    DBEdit23: TEvDBNumEdit;
    Label27: TLabel;
    DBEdit27: TEvDBNumEdit;
    Label9: TLabel;
    BtnProduto: TSpeedButton;
    Label28: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit11: TDBEdit;
    EditProduto: TEdit;
    RadioPesquisa: TRadioGroup;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    SQLTemplateCodAntigoLookup: TStringField;
    Label33: TLabel;
    EvDBNumEdit5: TEvDBNumEdit;
    SQLTemplateNFITN2VLRICMS: TBCDField;
    btnNmerosdeSerie: TMenuItem;
    SQLTemplateControlaSerieLookup: TStringField;
    SQLTemplateUnidadeLookup: TStringField;
    Label34: TLabel;
    DBEdit24: TDBEdit;
    LabelLote: TLabel;
    DBEditLote: TDBEdit;
    LSaldo: TLabel;
    SaldoAtual: TLabel;
    SQLTemplateCFOPA5CODAUX: TStringField;
    DSSQLCFOP: TDataSource;
    SQLCFOP: TRxQuery;
    SQLCFOPCFOPA5COD: TStringField;
    SQLCFOPCFOPA60DESCR: TStringField;
    SQLCFOPCFOPCVENDA: TStringField;
    SQLCFOPPENDENTE: TStringField;
    SQLCFOPREGISTRO: TDateTimeField;
    Label50: TLabel;
    ComboCFOP: TRxDBLookupCombo;
    MnImportarProdutosdeOutraNotaFiscal: TMenuItem;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    SQLTemplateNCMLookUp: TStringField;
    BitBtn1: TBitBtn;
    PaginaImportacao: TTabSheet;
    SQLTemplateNFITINITENS: TIntegerField;
    NFITA10DIIMPORT: TStringField;
    SQLTemplateNFITA15PEDIDOCOMPRA: TStringField;
    SQLTemplateNFITA2UFDESEMBARACO: TStringField;
    SQLTemplateNFITA60CEXPORTADOR: TStringField;
    SQLTemplateNFITA60CFABRICANTE: TStringField;
    SQLTemplateNFITA60LOCALDESEMBARACO: TStringField;
    SQLTemplateNFITDDATADI: TDateTimeField;
    SQLTemplateNFITDDESEMBARACO: TDateTimeField;
    SQLTemplateNFITINADICAO: TIntegerField;
    SQLTemplateNFITINSEQADIC: TIntegerField;
    SQLTemplateNFITN2DESCTOADIC: TBCDField;
    Label29: TLabel;
    DBEdit7: TDBEdit;
    Label32: TLabel;
    DBEdit8: TDBEdit;
    Label35: TLabel;
    DBEdit25: TDBEdit;
    Label36: TLabel;
    DBEdit28: TDBEdit;
    Label37: TLabel;
    DBEdit29: TDBEdit;
    Label38: TLabel;
    DBEdit30: TDBEdit;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    DBEdit33: TDBEdit;
    Label42: TLabel;
    DBEdit34: TDBEdit;
    Label43: TLabel;
    DBEdit35: TDBEdit;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    DBEdit36: TDBEdit;
    DBDateEdit2: TDBDateEdit;
    DBDateEdit3: TDBDateEdit;
    SQLTemplateNFITN2OUTRASDESP: TBCDField;
    SQLTemplateNFITN2SEGURO: TBCDField;
    Label48: TLabel;
    EvDBNumEdit6: TEvDBNumEdit;
    Label49: TLabel;
    EvDBNumEdit8: TEvDBNumEdit;
    Label51: TLabel;
    EvDBNumEdit9: TEvDBNumEdit;
    Label52: TLabel;
    DBEdit31: TDBEdit;
    SQLTemplateNFITICST: TIntegerField;
    SQLTemplateNFITN2BC_IMP: TBCDField;
    SQLTemplateNFITN2VALOR_DA: TBCDField;
    SQLTemplateNFITN2VALOR_II: TBCDField;
    SQLTemplateNFITN2VALOR_IOF: TBCDField;
    Label53: TLabel;
    DBEdit32: TDBEdit;
    Label54: TLabel;
    DBEdit37: TDBEdit;
    Label55: TLabel;
    DBEdit38: TDBEdit;
    Label56: TLabel;
    DBEdit39: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure BtnProdutoClick(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure SQLTemplatePRODICODChange(Sender: TField);
    procedure SQLTemplateNFITN2VLRUNITChange(Sender: TField);
    procedure SQLTemplateNFITN2VLRIPIChange(Sender: TField);
    procedure SQLTemplateNFITN2PERCIPIChange(Sender: TField);
    procedure SQLTemplateNFITN3QUANTChange(Sender: TField);
    procedure SQLTemplateNFITN2PERCDESCChange(Sender: TField);
    procedure SQLTemplateNFITN2VLRDESCChange(Sender: TField);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure SQLTemplateBeforeInsert(DataSet: TDataSet);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure SQLTemplateAfterDelete(DataSet: TDataSet);
    procedure SQLTemplateNFITN2PERCICMSChange(Sender: TField);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure DBEditLoteExit(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure SQLTemplateNFITN2PERCSUBSChange(Sender: TField);
    procedure MnNFImportarProdutosdoColetorClick(Sender: TObject);
    procedure EditProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditProdutoExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EditProdutoEnter(Sender: TObject);
    procedure SQLTemplateNFITN2PERCREDUCAOChange(Sender: TField);
    procedure btnNmerosdeSerieClick(Sender: TObject);
    procedure MnImportarProdutosdeOutraNotaFiscalClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    Ocupado:Boolean;
    NovoTotalQuant,
    NovoTotalPesoBruto,
    NovoTotalPesoLiquido,
    NovoTotalItem,
    NovoTotalDesc,
    NovoTotalBASCALCICMS,
    NovoTotalVLRICMS,
    NovoTotalBASCALCSUBS,
    NovoTotalVLRSUBS,
    NovoTotalBASCALCCIPI,
    NovoTotalVLRIPI,
    NovoTotalVLRSEGURO,
    NovoTotalVLRFrete,
    NovoTotalVLROutrasdesp,
    NovoTotalVLRSERVICO,
    NovoTotalISSQN:Double;
    TotalQuant,
    TotalPesoBruto,
    TotalPesoLiquido,
    TotalItem,
    TotalDesc,
    TotalBASCALCICMS,
    TotalVLRICMS,
    TotalBASCALCSUBS,
    TotalVLRSUBS,
    TotalBASCALCCIPI,
    TotalVLRIPI,
    TotalVLRFrete,
    TotalVLRSeguro,
    TotalVLROutrasDesp,
    TotalVLRSERVICO,
    TotalISSQN:Double;
    CodigoPedido : String;
    PosicaoItem  : Integer;
    QtdePed, NovaQtdePed,Reducao : Double;
    TemProdutoSemSubsTrib, TemProdutoComSubsTrib : Boolean;
    procedure CalculaImpostos;
    Procedure AtualizaPedidoVenda(CodigoPedidoVenda:String;PosicaoItemPedido:Integer;QtdePed,NovaQtdePed:Double);
    Function BuscaIcmsUf:TICMSUF;
    Function BuscaIcms  :TICMSUF;
  public
    { Public declarations }
  end;



var
  FormCadastroNotaFiscalItem: TFormCadastroNotaFiscalItem;
  nResultICMS:TICMSUF;

implementation

uses TelaConsultaProduto, DataModulo, TelaLancamentoGradeNotaFiscal,
  UnitLibrary, TelaSaldoPorLote, TelaImportaItens, SearchLibrary, CadastroNotaFiscal, CadastroProdutos,
  TelaNotaFiscalItemFiltro, TelaProdutoNumeroSerie,
  TelaInformaNumeroSerieProduto;

{$R *.dfm}

Procedure TFormCadastroNotaFiscalItem.CalculaImpostos;
Var
  Substituicao:Double;
  UFEmit, UFDest, Origem, FisJur, Situacao, AliquotaInterna : String;
Begin

  if (SQLTemplatePRODICOD.AsString = '') then
    Exit;

  Ocupado := True;

  // ReCarrega Array de ICMS conforme UF do Destinatario para quando for alteracao de produto
  If SQLTemplate.DataSource.DataSet.FindField('EmpresaUFLookUp').asString<>SQLTemplate.DataSource.DataSet.FindField('CliFornEmpEstadoLookUp').asString Then
    nResultICMS := BuscaIcmsUf
  else
    nResultICMS := BuscaIcms;


  FisJur := DSMasterTemplate.DataSet.FieldByName('CliFornEmpFisicaJuridica').AsString;

  // verifica a Situação Tributaria do produto para saber se faz os calculos ou nao conforme tabela do manual da migrate
  If FisJur = 'F' then
    Situacao := nResultICMS.nSTFisica
  else
    Situacao := nResultICMS.nSTJuridica;

  // Caso não tenha encontrado nas buscas acima, procura a Situação Tributaria do cadastro do Produto
  if Situacao = '' then
    Situacao := SQLLocate('PRODUTO','PRODICOD','PRODISITTRIB',SQLTEMPLATEPRODICOD.AsString);

  // calcula a margem de lucro
  SQLTemplateNFITN2VLRLUCRO.asFloat := (SQLTemplateNFITN2VLRUNIT.asFloat - SQLTemplateValorCompraLookUp.asFloat) * SQLTemplateNFITN3QUANT.asFloat;

  // Calcula o ISSQN caso for serviço
  SQLTemplateNFITN2VLRISSQN.asFloat  := SQLTemplateTotalItemCalc.asFloat*(SQLTemplateNFITN2PERCISSQN.asFloat / 100);

  // Calcula o IPI
  If (SQLTemplate.DataSource.DataSet.FindField('CalcIPILookUp').asString = 'S') Then
    SQLTemplateNFITN2VLRIPI.asFloat := (SQLTemplateTotalItemCalc.asFloat+SQLTemplateNFITN2VLRDESC.AsFloat)*(SQLTemplateNFITN2PERCIPI.asFloat / 100);

  // Calcula o ICMS
  If (SQLTemplate.DataSource.DataSet.FindField('CalcICMSLookUp').asString = 'S') and (SQLTemplateNFITN2PERCICMS.AsFloat > 0) Then
    Begin
      if (Situacao='0') or (Situacao='10') or (Situacao='20') or (Situacao='51') or (Situacao='70') or (Situacao='90') or (Situacao='900') then
      begin
       SQLTemplateNFITN2BASEICMS.asFloat     := SQLTemplateTotalItemCalc.asFloat + SQLTemplateNFITN2VLRFRETE.AsFloat;
        // Calcula a Reduçao de Base de Calculo - utilizar variavel para quando a oper.estoq. calsula somente Subst.Tribut.
        if (SQLTemplateNFITN2PERCREDUCAO.Value > 0) then
            SQLTemplateNFITN2BASEICMS.asFloat := (SQLTemplateTotalItemCalc.asFloat + SQLTemplateNFITN2VLRFRETE.AsFloat) * (SQLTemplateNFITN2PERCREDUCAO.Value / 100);
        SQLTemplateNFITN2VLRICMS.asFloat    := SQLTemplateNFITN2BASEICMS.asFloat * (SQLTemplateNFITN2PERCICMS.asFloat / 100);
      end else
      begin
        SQLTemplateNFITN2BASEICMS.asFloat     := 0;
        SQLTemplateNFITN2VLRICMS.asFloat      := 0;
        SQLTemplateNFITN2PERCICMS.AsFloat     := 0;
        SQLTemplateNFITN2PERCREDUCAO.AsFloat  := 0;
      end;
    End;

  // Calcula a substituicao tributaria
  If (SQLTemplate.DataSource.DataSet.FindField('CalcSUBSTLookUp').asString = 'S') Then
  Begin
    if (Situacao='10') or (Situacao='30') or (Situacao='70') or (Situacao='90') or (Situacao='201') or (Situacao='202') or (Situacao='203') or (Situacao='900') then
    begin
        AliquotaInterna := FloatToSTr(nResultICMS.nICMS_INTERNO);
        // se a aliquotainterna nao foi especificada pega o percentual de icms normal (aliquota icms)
        if (AliquotaInterna = '') or (AliquotaInterna= '0') then
         AliquotaInterna := FloatToSTr(SQLTemplateNFITN2PERCICMS.AsFloat);

        If SQLTemplateNFITN2PERCSUBS.asFloat > 0 Then
        Begin
          SQLTemplateNFITN2BASESUBS.asFloat   := (SQLTemplateTotalItemCalc.asFloat + SQLTemplateNFITN2VLRFRETE.AsFloat + SQLTemplateNFITN2VLRIPI.AsFloat  + SQLTemplateNFITN2OUTRASDESP.AsFloat) +
          ((SQLTemplateTotalItemCalc.asFloat+ SQLTemplateNFITN2VLRFRETE.AsFloat + SQLTemplateNFITN2VLRIPI.AsFloat + SQLTemplateNFITN2OUTRASDESP.AsFloat) * (SQLTemplateNFITN2PERCSUBS.asFloat/100));

          SQLTemplateNFITN2VLRSUBS.asFloat    := (SQLTemplateNFITN2BASESUBS.value * (StrToFloat(Aliquotainterna)/100)) -
          ((SQLTemplateTotalItemCalc.asFloat + SQLTemplateNFITN2VLRFRETE.AsFloat ) * (SQLTemplateNFITN2PERCICMS.AsFloat / 100));
        End Else
        Begin
          SQLTemplateNFITN2BASESUBS.asFloat   := 0;
          SQLTemplateNFITN2VLRSUBS.asFloat    := 0;
          SQLTemplateNFITN2PERCSUBS.AsFloat   := 0;
        End;
    End else
    Begin
        SQLTemplateNFITN2BASESUBS.asFloat   := 0;
        SQLTemplateNFITN2VLRSUBS.asFloat    := 0;
        SQLTemplateNFITN2PERCSUBS.AsFloat   := 0;
    End;
  End else
  begin
    SQLTemplateNFITN2BASESUBS.asFloat   := 0;
    SQLTemplateNFITN2VLRSUBS.asFloat    := 0;
    SQLTemplateNFITN2PERCSUBS.AsFloat   := 0;
  end;
 ocupado := False;

End;

Procedure TFormCadastroNotaFiscalItem.AtualizaPedidoVenda(CodigoPedidoVenda:String;PosicaoItemPedido:Integer;QtdePed,NovaQtdePed:Double);
Begin
  SQLAtualizaItemPedido.ParamByName('PDVDA13ID').AsString  := CodigoPedidoVenda;
  SQLAtualizaItemPedido.ParamByName('PVITIITEM').AsInteger := PosicaoItemPedido;
  SQLAtualizaItemPedido.ParamByName('NovaQtdePed').AsFloat := NovaQtdePed;
  SQLAtualizaItemPedido.ParamByName('QtdePed').AsFloat     := QtdePed;
  SQLAtualizaItemPedido.ExecSQL;
End;

procedure TFormCadastroNotaFiscalItem.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'NOTAFISCALITEM';
  NumItem := 0;
  DM.GerarNovaNota := False;
  TemProdutoComSubsTrib := False;
  TemProdutoSemSubsTrib := False;
  SQLCFOP.Open;

    case Dm.SQLConfigVendaCFVEINROCASASDEC.AsInteger of
    2 : begin
          SQLTemplateNFITN2VLRUNIT.DisplayFormat     := '##0.00';
          SQLTemplateNFITN2VLRUNIT.EditFormat        := '##0.00';
          DBEdit10.Decimals        := 2;
        end;
    3 : begin
          SQLTemplateNFITN2VLRUNIT.DisplayFormat     := '##0.000';
          SQLTemplateNFITN2VLRUNIT.EditFormat        := '##0.000';
          DBEdit10.Decimals        := 3;
        end;
    end;

end;

procedure TFormCadastroNotaFiscalItem.BtnProdutoClick(Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('PRODICOD');
  FieldOrigem := 'PRODICOD';
  CriaFormulario(TFormCadastroProduto,'FormCadastroProduto',False,True,False,'');
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  IF SQLTemplateNFITN3TOTVEND.IsNull Then
    SQLTemplateTotalItemCalc.asFloat := (SQLTemplateNFITN2VLRUNIT.AsFloat * SQLTemplateNFITN3QUANT.asFloat) - SQLTemplateNFITN2VLRDESC.AsFloat
  else
    SQLTemplateTotalItemCalc.asFloat := SQLTemplateNFITN3TOTVEND.value;

  If DM.GerandoNotaFiscal Then Exit;
  If DataSet.FieldByName('PRODICOD').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[DataSet.FieldByName('PRODICOD').AsString],1) Then
        Begin
          DataSet.FieldByName('ProdutoLookup').AsVariant    := DM.SQLTemplate.FindField('PRODA60DESCR').AsVariant;

          if (DM.SQLTemplate.FindField('GRADICOD').AsVariant <> NULL) and (DM.SQLTemplate.FindField('GRTMICOD').AsVariant <> NULL) then
                DataSet.FieldByName('ProdutoLookup').AsVariant  := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                                   ' / ' + RetornaTamanhoProduto(DM.SQLTemplate.FindField('GRADICOD').AsString,
                                                                                                 DM.SQLTemplate.FindField('GRTMICOD').AsString);
          if DM.SQLTemplate.FindField('CORICOD').AsVariant <> NULL then
              DataSet.FieldByName('ProdutoLookup').AsVariant  := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                               ' / ' + RetornaCorProduto(DM.SQLTemplate.FindField('CORICOD').AsString);

          DataSet.FieldByName('GradeCodLookup').AsVariant    := DM.SQLTemplate.FindField('GRADICOD').AsVariant;
          DataSet.FieldByName('AgrupGradeLookup').AsVariant  := DM.SQLTemplate.FindField('PRODIAGRUPGRADE').AsVariant;
          DataSet.FieldByName('ReferenciaLookup').AsVariant  := DM.SQLTemplate.FindField('PRODA60REFER').AsVariant;
          DataSet.FieldByName('NCMLookup').AsVariant         := SQLLocate('NCM','NCMICOD','NCMA30CODIGO',DM.SQLTemplate.FindField('NCMICOD').AsString);
          DataSet.FieldByName('ServicoLookup').AsVariant     := DM.SQLTemplate.FindField('PRODCSERVICO').AsVariant;
          DataSet.FieldByName('PesoBrutoLookup').AsVariant   := DM.SQLTemplate.FindField('PRODN3PESOBRUTO').AsVariant;
          DataSet.FieldByName('PesoLiquidoLookup').AsVariant := DM.SQLTemplate.FindField('PRODN3PESOLIQ').AsVariant;
          DataSet.FieldByName('ValorCompraLookUp').AsVariant := DM.SQLTemplate.FindField('PRODN3VLRCOMPRA').AsVariant;
          DataSet.FieldByName('CodAntigoLookup').AsVariant   := DM.SQLTemplate.FindField('PRODA15CODANT').AsVariant;
          DataSet.FieldByName('ControlaSerieLookup').AsVariant := DM.SQLTemplate.FindField('PRODCTEMNROSERIE').AsVariant;
          DataSet.FieldByName('UnidadeLookup').AsVariant     := DM.SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',DM.SQLTemplate.FindField('UNIDICOD').AsString);
        End
      Else
        Begin
          DataSet.FieldByName('ProdutoLookup').asString        := MensagemLookUp;
          DataSet.FieldByName('GradeCodLookup').AsVariant      := NULL;
          DataSet.FieldByName('AgrupGradeLookup').AsVariant    := NULL;
          DataSet.FieldByName('ReferenciaLookup').AsVariant    := MensagemLookUp;
          DataSet.FieldByName('NCMLookup').AsVariant           := NULL;
          DataSet.FieldByName('ServicoLookup').AsVariant       := NULL;
          DataSet.FieldByName('PesoBrutoLookup').AsVariant     := NULL;
          DataSet.FieldByName('PesoLiquidoLookup').AsVariant   := NULL;
          DataSet.FieldByName('ValorCompraLookUp').AsVariant   := NULL;
          DataSet.FieldByName('CodAntigoLookup').AsVariant     := MensagemLookUp;
          DataSet.FieldByName('NCMLookup').AsVariant           := NULL;
          DataSet.FieldByName('ControlaSerieLookup').AsVariant := NULL;
          DataSet.FieldByName('UnidadeLookup').AsVariant       := NULL;
        End;
    End
  Else
    Begin
      DataSet.FieldByName('ProdutoLookup').AsVariant       := Null;
      DataSet.FieldByName('GradeCodLookup').AsVariant      := NULL;
      DataSet.FieldByName('AgrupGradeLookup').AsVariant    := NULL;
      DataSet.FieldByName('ReferenciaLookup').AsVariant    := NULL;
      DataSet.FieldByName('NCMLookup').AsVariant           := NULL;
      DataSet.FieldByName('ServicoLookup').AsVariant       := NULL;
      DataSet.FieldByName('PesoBrutoLookup').AsVariant     := NULL;
      DataSet.FieldByName('PesoLiquidoLookup').AsVariant   := NULL;
      DataSet.FieldByName('ValorCompraLookUp').AsVariant   := NULL;
      DataSet.FieldByName('ControlaSerieLookup').AsVariant := NULL;
      DataSet.FieldByName('UnidadeLookup').AsVariant       := NULL;
    End;
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplatePRODICODChange(
  Sender: TField);
Var
  BaseCalculo:Double;
  BKPBookMark:TBookMark;
  vISSQN:Extended;
begin
  inherited;
  EditProduto.Text := SQLTemplate.FieldByName((Sender as TField).FieldName).AsString;
  If DM.GerandoNotaFiscal Then Exit;
  If (SQLTemplate.FieldByName('PRODICOD').AsVariant <> null) and (SQLTemplate.State = dsInsert) and (DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[SQLTemplate.FieldByName('PRODICOD').AsString],1)) Then
    Begin
      // Verifica Produto Com Subs. Tributária
      if (not DM.GerandoNotaFiscal) and (not DM.ImportandoColetor) and (not DM.ImportandoPedidoVenda) then
        begin
          if TemProdutoSemSubsTrib then
            if DM.SQLTemplate.FieldByName('PRODCSUBSTRIB').AsString = 'S' then
              if DM.SQLConfigVendaCFVECINFPRODSUBTRI.AsString = 'S' then
                begin
                  Informa('Já existe(m) produto(s) SEM substituição tributária nesta venda, você deve fazer uma nota fiscal separada para produtos COM substituição tributária!' + #13 + 'Para maiores informações contate o suporte!');
                  SQLTemplate.Cancel;
                  Abort;
                  Exit;
                end;
          if TemProdutoComSubsTrib then
            if DM.SQLTemplate.FieldByName('PRODCSUBSTRIB').AsString <> 'S' then
              if DM.SQLConfigVendaCFVECINFPRODSUBTRI.AsString = 'S' then
                begin
                  Informa('Já existe(m) produto(s) COM substituição tributária nesta venda, você deve fazer uma nota fiscal separada para produtos SEM substituição tributária!' + #13 + 'Para maiores informações contate o suporte!');
                  SQLTemplate.Cancel;
                  Abort;
                  Exit;
                end;
        end;

      If (SQLTemplate.State in DsEditModes) Then
        Begin
          Ocupado:=True;
          BaseCalculo:=0;
          If SQLTemplate.DataSource.DataSet.FindField('CampoImpostoLookUp').asString = '' Then
            Begin
              ShowMessage('Tipo de movimentação não tem campo para cálculo de ICMS!');
              Abort;
            End
          Else
            If DM.SQLTemplate.FindField(SQLTemplate.DataSource.DataSet.FindField('CampoImpostoLookUp').asString).asFloat <> 0 Then
              If (AnsiUpperCase(SQLTemplate.DataSource.DataSet.FindField('CampoImpostoLookUp').asString)='PRODN3VLRVENDA') Then
                SQLTemplateNFITN2VLRUNIT.asFloat := RetornaPreco(DM.SQLTemplate,DM.SQLConfigVendaTPRCICOD.asString,SQLTemplate.DataSource.DataSet.FieldByName('CliFornEmpTabelaPrecoLookUp').asString)
              Else
                SQLTemplateNFITN2VLRUNIT.asFloat := DM.SQLTemplate.FindField(SQLTemplate.DataSource.DataSet.FindField('CampoImpostoLookUp').asString).asFloat;
          If DM.SQLTemplate.FindField('PRODDIMOBOLIZ').asVariant = Null Then
            If (SQLTemplate.DataSource.DataSet.FindField('NOFIDEMIS').asDateTime - DM.SQLTemplate.FindField('PRODDIMOBOLIZ').asDateTime < 365) Then
              SQLTemplateNFITN2VLRUNIT.asFloat := SQLTemplateNFITN2VLRUNIT.asFloat - (SQLTemplateNFITN2VLRUNIT.asFloat * 0.20);

          If (SQLTemplate.DataSource.DataSet.FindField('CalcIPILookUp').asString = 'S') Then
            Begin
              If (DM.SQLTemplate.FindField('PRODN3PERCIPI').asFloat <> 0) Then
                SQLTemplateNFITN2PERCIPI.asFloat := DM.SQLTemplate.FindField('PRODN3PERCIPI').asFloat;
              SQLTemplateNFITN2VLRIPI.asFloat := SQLTemplateTotalItemCalc.asFloat*(SQLTemplateNFITN2PERCIPI.asFloat / 100);
            End;

          If DM.SQLTemplate.FindField('PRODCSERVICO').asString = 'S' Then
            Begin
              if DM.SQLTemplate.FindField('PRODA255DESCRTEC').AsString <> '' Then
                SQLTemplateNFITA254OBS.Text := DM.SQLTemplate.FindField('PRODA255DESCRTEC').AsString;
              Try
                vISSQN := StrToFloat(SQLLocate('CIDADE','CIDAA60NOME','CIDAN3ISSQN','"'+DSMasterTemplate.DataSet.FieldbyName('CLIFORNEMPCIDADELOOKUP').AsString+'"'));
              except
                vISSQN := 0;
              end;

              if vISSQN > 0 then
              begin
                SQLTemplateNFITN2PERCISSQN.asFloat := vISSQN;
                SQLTemplateNFITN2VLRISSQN.asFloat  := SQLTemplateTotalItemCalc.asFloat*(vISSQN / 100);
              end else
              begin
                SQLTemplateNFITN2PERCISSQN.asFloat := DM.SQLConfigVendaCFVEN3ALIQISSQN.asFloat;
                SQLTemplateNFITN2VLRISSQN.asFloat  := SQLTemplateTotalItemCalc.asFloat*(SQLTemplateNFITN2PERCISSQN.asFloat / 100);
              end;
            End;


          // Carrega Array de ICMS conforme UF do Destinatario
          If SQLTemplate.DataSource.DataSet.FindField('EmpresaUFLookUp').asString<>SQLTemplate.DataSource.DataSet.FindField('CliFornEmpEstadoLookUp').asString Then
            nResultICMS := BuscaIcmsUf
          else
            nResultICMS := BuscaIcms;

          // Alimenta campo de Codigo de Situação Tributária
          if DSMasterTemplate.DataSet.FieldByName('CliFornEmpFisicaJuridica').AsString = 'J' then
            SQLTemplateNFITICST.AsString            := nResultICMS.nSTJuridica
          else
            SQLTemplateNFITICST.AsString            := nResultICMS.nSTFisica;

          // se não localizou situação nas linhas acima, busca no cadastro de produtos
          if (SQLTemplateNFITICST.AsString = '') or (SQLTemplateNFITICST.IsNull) then
            SQLTemplateNFITICST.AsString := SQLLocate('PRODUTO','PRODICOD','PRODISITTRIB',SQLTEMPLATEPRODICOD.AsString);



          // Se a Oper. de Estoque Calcula ICMS
          If (SQLTemplate.DataSource.DataSet.FindField('CalcICMSLookUp').asString = 'S') Then
            SQLTemplateNFITN2PERCICMS.asFloat       := nResultICMS.nICMS;

          // Se a Oper. de Estoque Calcula Subst. Tribut.
          If (SQLTemplate.DataSource.DataSet.FindField('CalcSUBSTLookUp').asString = 'S') Then
            SQLTemplateNFITN2PERCSUBS.asFloat       := nResultICMS.nMVA;

          SQLTemplateNFITN2PERCREDUCAO.asFloat    := nResultICMS.nRED_ICMS;

          // Efetua o Calculo dos Impostos
          if not ocupado then
            CalculaImpostos;

          Ocupado:=False;
        End;


      If (Not DM.ImportandoPedidoVenda) and
         (SQLTemplate.FindField('GradeCodLookUp').asVariant<>Null) and
         (SQLTemplate.FindField('AgrupGradeLookUp').asVariant<>Null) Then
        CriaFormulario(TFormTelaLancamentoGradeNotaFiscal,'FormTelaLancamentoGradeNotaFiscal',False,False,True,'')
      else
        begin
          SaldoAtual.Caption := '0' ;
          SaldoAtual.Update;
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
                  SaldoAtual.Caption := FloatToStr(SQLGeral.FieldByName('PSLDN3QTDE').asFloat) ;
                  SaldoAtual.Update;
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

procedure TFormCadastroNotaFiscalItem.SQLTemplateNFITN2VLRUNITChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  CalculaImpostos;
  Ocupado:=False;
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateNFITN2VLRIPIChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  If (SQLTemplate.DataSource.DataSet.FindField('CalcIPILookUp').asString = 'S') Then
    If (SQLTemplateNFITN2VLRIPI.asFloat>0) and (SQLTemplateTotalItemCalc.asFloat>0) Then
      SQLTemplateNFITN2PERCIPI.asFloat := (SQLTemplateNFITN2VLRIPI.asFloat / SQLTemplateTotalItemCalc.asFloat) * 100
    Else
      Begin
        SQLTemplateNFITN2VLRIPI.asFloat  := 0;
        SQLTemplateNFITN2PERCIPI.asFloat := 0;
      End;
  Ocupado:=False;
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateNFITN2PERCIPIChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  If (SQLTemplate.DataSource.DataSet.FindField('CalcIPILookUp').asString = 'S') Then
    If (SQLTemplateNFITN2PERCIPI.asFloat>0) and (SQLTemplateTotalItemCalc.asFloat>0) Then
      SQLTemplateNFITN2VLRIPI.asFloat := SQLTemplateTotalItemCalc.asFloat * (SQLTemplateNFITN2PERCIPI.asFloat / 100)
    Else
      SQLTemplateNFITN2VLRIPI.asFloat  := 0;
  Ocupado:=False;
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateNFITN3QUANTChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  CalculaImpostos;
  Ocupado:=False;
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateNFITN2PERCDESCChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  If (SQLTemplateNFITN2PERCDESC.asFloat > 0) Then
    SQLTemplateNFITN2VLRDESC.asFloat := (SQLTemplateNFITN2VLRUNIT.AsFloat * SQLTemplateNFITN3QUANT.asFloat) * (SQLTemplateNFITN2PERCDESC.asFloat / 100)
  Else
    SQLTemplateNFITN2VLRDESC.asFloat := 0;

//  If Ocupado Then Exit;
    CalculaImpostos;
  Ocupado:=False;
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateNFITN2VLRDESCChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  If (SQLTemplateNFITN2VLRDESC.asFloat > 0) Then
    SQLTemplateNFITN2PERCDESC.asFloat := (SQLTemplateNFITN2VLRDESC.asFloat /(SQLTemplateNFITN2VLRUNIT.AsFloat * SQLTemplateNFITN3QUANT.asFloat)) * 100
  Else
    SQLTemplateNFITN2PERCDESC.asFloat := 0;
 // If Ocupado Then Exit;
    CalculaImpostos;
  Ocupado:=False;
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateNOFIA13ID.Value           := DataSet.DataSource.DataSet.FindField('NOFIA13ID').Value;
  SQLTemplateNFITN3QUANT.asFloat       :=1;
  SQLTemplateNFITN2BASEICMS.asFloat    :=0;
  SQLTemplateNFITN2BASESUBS.asFloat    :=0;
  SQLTemplateNFITN2PERCDESC.asFloat    :=0;
  SQLTemplateNFITN2PERCICMS.asFloat    :=0;
  SQLTemplateNFITN2PERCIPI.asFloat     :=0;
  SQLTemplateNFITN2PERCISSQN.asFloat   :=0;
  SQLTemplateNFITN2PERCSUBS.asFloat    :=0;
  SQLTemplateNFITN2VLRDESC.asFloat     :=0;
  SQLTemplateNFITN2VLRFRETE.asFloat    :=0;
  SQLTemplateNFITN2VLRICMS.asFloat     :=0;
  SQLTemplateNFITN2VLRIPI.asFloat      :=0;
  SQLTemplateNFITN2VLRISSQN.asFloat    :=0;
  SQLTemplateNFITN2VLRLUCRO.asFloat    :=0;
  SQLTemplateNFITN2VLRSUBS.asFloat     :=0;
  SQLTemplateNFITN2VLRUNIT.asFloat     :=0;
  SQLTemplateNFITN2BC_IMP.AsFloat      :=0;
  SQLTemplateNFITN2VALOR_DA.AsFloat    :=0;
  SQLTemplateNFITN2VALOR_II.AsFloat    :=0;
  SQLTemplateNFITN2VALOR_IOF.AsFloat   :=0;
  EditProduto.Clear;
  EditProduto.SetFocus;
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  if not DM.ImportandoPedidoVenda then
    begin
      if (DM.SQLConfigGeralCFGECESTOQUEPORLOTE.AsString = 'S') and (SQLTemplateLOTEA30NRO.AsString = '') then
        if Application.MessageBox('O número do lote não foi informado, Deseja continuar mesmo assim ?','Advanced Control',MB_YESNO + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONQUESTION + MB_DEFBUTTON1)= IdNo then
          begin
            SQLTemplateLOTEA30NRO.FocusControl;
            Abort;
          end;

      if (SQLTemplateNFITN2VLRUNIT.asFloat = 0) Then
        begin
          ShowMessage('O valor unitário não pode ser zero!');
          SQLTemplateNFITN2VLRUNIT.FocusControl;
          Abort;
        end;

      if (SQLTemplateNFITN3QUANT.asFloat = 0) Then
        begin
          ShowMessage('A quantidade não pode ser zero!');
          SQLTemplateNFITN3QUANT.FocusControl;
          Abort;
        end;

      if SQLLocate('PRODUTO','PRODICOD','PRODCSUBSTRIB',SQLTemplatePRODICOD.AsString) = 'S' then
        TemProdutoComSubsTrib := True
      else
        TemProdutoSemSubsTrib := True;
    end;
  inherited;

  if DataSet.FieldByName('NFITN3QUANT').asFloat > DataSet.FieldByName('NFITN3TOTVEND').asFloat then
    DataSet.FieldByName('NFITN3QUANTVEND').asFloat := DataSet.FieldByName('NFITN3TOTVEND').asFloat
  else
    DataSet.FieldByName('NFITN3QUANTVEND').asFloat := DataSet.FieldByName('NFITN3QUANT').asFloat;

  if DataSet.FieldByName('ServicoLookup').asString = 'S' Then
    begin
      NovoTotalQuant         := 0;
      NovoTotalPesoBruto     := 0;
      NovoTotalPesoLiquido   := 0;
      NovoTotalItem          := 0;
      NovoTotalBASCALCICMS   := 0;
      NovoTotalVLRICMS       := 0;
      NovoTotalBASCALCSUBS   := 0;
      NovoTotalVLRSUBS       := 0;
      NovoTotalBASCALCCIPI   := 0;
      NovoTotalVLRIPI        := 0;
      NovoTotalVLRSEGURO     := 0;
      NovoTotalVLRFrete      := 0;
      NovoTotalVLROutrasdesp := 0;
    end
  else
    begin
      NovoTotalQuant         := SQLTemplateNFITN3QUANT.AsFloat;
      NovoTotalPesoBruto     := SQLTemplatePesoBrutoLookUp.asFloat * SQLTemplateNFITN3QUANT.asFloat;
      NovoTotalPesoLiquido   := SQLTemplatePesoLiquidoLookUp.asFloat * SQLTemplateNFITN3QUANT.asFloat;
      NovoTotalItem          := SQLTemplateTotalItemCalc.asFloat;
      NovoTotalBASCALCICMS   := SQLTemplateNFITN2BASEICMS.asFloat;
      NovoTotalVLRICMS       := SQLTemplateNFITN2VLRICMS.asFloat;
      NovoTotalBASCALCSUBS   := SQLTemplateNFITN2BASESUBS.asFloat;
      NovoTotalVLRSUBS       := SQLTemplateNFITN2VLRSUBS.asFloat;
      if SQLTemplateNFITN2VLRIPI.asFloat > 0 then
        NovoTotalBASCALCCIPI   := SQLTemplateTotalItemCalc.asFloat
      else
        NovoTotalBASCALCCIPI   := 0;
      NovoTotalVLRIPI        := SQLTemplateNFITN2VLRIPI.asFloat;
      NovoTotalVLRSEGURO     := SQLTemplateNFITN2SEGURO.AsFloat;
      NovoTotalVLRFrete      := SQLTemplateNFITN2VLRFRETE.AsFloat;
      NovoTotalVLROutrasdesp := SQLTemplateNFITN2OUTRASDESP.AsFloat;
    end;
  NovoTotalDesc := SQLTemplateNFITN2VLRDESC.asFloat;
  if DataSet.FieldByName('ServicoLookup').asString = 'S' then
    NovoTotalVLRSERVICO  := SQLTemplateTotalItemCalc.asFloat
  else
    NovoTotalVLRSERVICO  := 0;
  NovoTotalISSQN         := SQLTemplateNFITN2VLRISSQN.asFloat;
  NovaQtdePed   := SQLTemplateNFITN3QUANTVEND.asFloat;
  CodigoPedido  := DataSet.FindField('PDVDA13ID').asString;
  PosicaoItem   := DataSet.FindField('PVITIITEM').asInteger;
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateAfterPost(
  DataSet: TDataSet);
var I : integer;
var NumeroSerie : String;
begin
  inherited;
  DM.InserindoItemNV := True;
  SQLTemplate.DataSource.DataSet.DisableControls;
  SQLTemplate.DataSource.DataSet.Edit;
  SQLTemplate.DataSource.DataSet.AutoCalcFields:=False;

  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRPRODUTO').asFloat :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRPRODUTO').asFloat - TotalItem) + NovoTotalItem + NovoTotalDesc;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRDESC').asFloat  :=
          (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRDESC').asFloat - TotalDesc) + NovoTotalDesc;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2BASCALCICMS').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN2BASCALCICMS').asFloat - TotalBASCALCICMS) + NovoTotalBASCALCICMS;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRICMS').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRICMS').asFloat - TotalVLRICMS) + NovoTotalVLRICMS;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2BASCALCSUBS').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN2BASCALCSUBS').asFloat - TotalBASCALCSUBS) + NovoTotalBASCALCSUBS;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRSUBS').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRSUBS').asFloat - TotalVLRSUBS) + NovoTotalVLRSUBS;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2BASCALCCIPI').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN2BASCALCCIPI').asFloat - TotalBASCALCCIPI) + NovoTotalBASCALCCIPI;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRIPI').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRIPI').asFloat - TotalVLRIPI) + NovoTotalVLRIPI;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRISSQN').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRISSQN').asFloat - TotalISSQN) + NovoTotalISSQN;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRSERVICO').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRSERVICO').asFloat - TotalVLRSERVICO) + NovoTotalVLRSERVICO;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN3PESBRUT').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN3PESBRUT').asFloat - TotalPesoBruto) + NovoTotalPesoBruto;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN3PESLIQ').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN3PESLIQ').asFloat - TotalPesoLiquido) + NovoTotalPesoLiquido;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN3QUANT').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN3QUANT').asFloat - TotalQuant) + NovoTotalQuant;

  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRSEGURO').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRSEGURO').asFloat - TotalVLRSEGURO) + NovoTotalVLRSEGURO;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLROUTRASDESP').asFloat  :=
    (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLROUTRASDESP').asFloat - TotalVLROutrasDesp) + NovoTotalVLROUTRASDESP;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRFRETE').asFloat  :=
    (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRFRETE').asFloat - TotalVLRFRETE) + NovoTotalVLRFRETE;

  if SQLTemplate.DataSource.DataSet.State in ([dsInsert,dsEdit]) then
    SQLTemplate.DataSource.DataSet.Post;
  SQLTemplate.DataSource.DataSet.AutoCalcFields:=True;
  SQLTemplate.DataSource.DataSet.EnableControls;
  If (CodigoPedido<>'') and (NovaQtdePed <> QtdePed) Then
    AtualizaPedidoVenda(CodigoPedido,PosicaoItem,QtdePed,NovaQtdePed);
  DM.InserindoItemNV:=False;
  Inc(NumItem);

  if SQLTemplateControlaSerieLookup.AsVariant <> Null then
    if SQLTemplateControlaSerieLookup.AsString = 'S' then
      begin
        // Informa Numero de Serie
        if DSMasterTemplate.DataSet.FieldByName('OrigemDestinoLookUp').AsString = 'C' then
          begin
            for I:=1 to SQLTemplateNFITN3QUANT.AsInteger do
              begin
                NumeroSerie := '';
                Application.CreateForm(TFormTelaInformaNumeroSerieProduto,FormTelaInformaNumeroSerieProduto);
                FormTelaInformaNumeroSerieProduto.ShowModal;
                if FormTelaInformaNumeroSerieProduto.ModalResult = MrOK then
                  begin
                    NumeroSerie := FormTelaInformaNumeroSerieProduto.EditNroSerie.Text;
                    if NumeroSerie <> '' then
                      GravaSaidaNroSerieProduto(NumeroSerie,
                                                SQLTemplatePRODICOD.AsString,
                                                'I',
                                                EmpresaPadrao,
                                                DSMasterTemplate.DataSet.FieldByName('CLIEA13ID').AsString,
                                                '',
                                                '',
                                                DSMasterTemplate.DataSet.FieldByName('NOFIA13ID').AsString,
                                                '');

                  end;
                FormTelaInformaNumeroSerieProduto.Destroy;
              end;
          end;

      end;
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  If DataSet.FieldByName('ServicoLookup').asString = 'S' Then
    Begin
      TotalQuant       := 0;
      TotalPesoBruto   := 0;
      TotalPesoLiquido := 0;
      TotalItem        := 0;
      TotalBASCALCICMS := 0;
      TotalVLRICMS     := 0;
      TotalBASCALCSUBS := 0;
      TotalVLRSUBS     := 0;
      TotalBASCALCCIPI := 0;
      TotalVLRIPI      := 0;
      TotalVLRSeguro   := 0;
      TotalVLRFrete    := 0;
      TotalVLROutrasDesp:= 0;
    End
  Else
    Begin
      TotalQuant       := SQLTemplateNFITN3QUANT.asFloat;
      TotalPesoBruto   := SQLTemplatePesoBrutoLookUp.asFloat * SQLTemplateNFITN3QUANT.asFloat;
      TotalPesoLiquido := SQLTemplatePesoLiquidoLookUp.asFloat * SQLTemplateNFITN3QUANT.asFloat;
      TotalItem        := SQLTemplateTotalItemCalc.asFloat + SQLTemplateNFITN2VLRDESC.AsFloat;  // judi alterou aqui
      TotalBASCALCICMS := SQLTemplateNFITN2BASEICMS.asFloat;
      TotalVLRICMS     := SQLTemplateNFITN2VLRICMS.asFloat;
      TotalBASCALCSUBS := SQLTemplateNFITN2BASESUBS.asFloat;
      TotalVLRSUBS     := SQLTemplateNFITN2VLRSUBS.asFloat;
      If SQLTemplateNFITN2VLRIPI.asFloat>0 Then
        TotalBASCALCCIPI   := SQLTemplateTotalItemCalc.asFloat
      Else
        TotalBASCALCCIPI   := 0;
      TotalVLRIPI      := SQLTemplateNFITN2VLRIPI.asFloat;
      TotalVLRFrete    := SQLTemplateNFITN2VLRFRETE.AsFloat;
      TotalVLRSeguro   := SQLTemplateNFITN2SEGURO.AsFloat;
      TotalVLROutrasDesp := SQLTemplateNFITN2OUTRASDESP.AsFloat;
    End;
  TotalDesc        := SQLTemplateNFITN2VLRDESC.asFloat;
  If DataSet.FieldByName('ServicoLookup').asString = 'S' Then
    TotalVLRSERVICO  := SQLTemplateTotalItemCalc.asFloat
  Else
    TotalVLRSERVICO  := 0;
  TotalISSQN         := SQLTemplateNFITN2VLRISSQN.asFloat;
  QtdePed            := SQLTemplateNFITN3QUANTVEND.asFloat;
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  if NumItem <= 0 then
    begin
      SQLNumeroItens.Close;
      SQLNumeroItens.Open;
      if SQLNumeroItens.FindField('COUNT').AsVariant <> Null then
        NumItem := SQLNumeroItens.FindField('COUNT').AsInteger
      else
        NumItem := 0;
    end;
  if DM.SQLConfigVendaCFVEINROITENSNF.Value > 0 then
    if (NumItem = DM.SQLConfigVendaCFVEINROITENSNF.AsInteger) and (not Dm.ImportandoPedidoVenda) then
      begin
        if Pergunta('SIM','O número máximo de itens para uma mesma nota foi alcançado, você deseja iniciar uma nova nota ?') then
          begin
            DM.GerarNovaNota := True;
            Close;
          end
        else
          Exit;
      end;

  TotalQuant       := 0;
  TotalPesoBruto   := 0;
  TotalPesoLiquido := 0;
  TotalItem        := 0;
  TotalDesc        := 0;
  TotalBASCALCICMS := 0;
  TotalVLRICMS     := 0;
  TotalBASCALCSUBS := 0;
  TotalVLRSUBS     := 0;
  TotalBASCALCCIPI := 0;
  TotalVLRIPI      := 0;
  TotalVLRSeguro   := 0;
  TotalVLRFrete    := 0;
  TotalVLRSERVICO  := 0;
  TotalISSQN       := 0;
  QtdePed          := 0;
  TotalVLROutrasDesp := 0;
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
  If DataSet.FieldByName('ServicoLookup').asString = 'S' Then
    Begin
      TotalQuant        := 0;
      TotalPesoBruto    := 0;
      TotalPesoLiquido  := 0;
      TotalItem         := 0;
      TotalBASCALCICMS  := 0;
      TotalVLRICMS      := 0;
      TotalBASCALCSUBS  := 0;
      TotalVLRSUBS      := 0;
      TotalBASCALCCIPI  := 0;
      TotalVLRIPI       := 0;
      TotalVLRSeguro   := 0;
      TotalVLRFrete    := 0;
      TotalVLROutrasDesp := 0;
    End
  Else
    Begin
      TotalQuant        := SQLTemplateNFITN3QUANT.asFloat;
      TotalPesoBruto    := SQLTemplatePesoBrutoLookUp.asFloat * SQLTemplateNFITN3QUANT.asFloat;
      TotalPesoLiquido  := SQLTemplatePesoLiquidoLookUp.asFloat * SQLTemplateNFITN3QUANT.asFloat;
      TotalItem         := SQLTemplateTotalItemCalc.asFloat;
      TotalBASCALCICMS  := SQLTemplateNFITN2BASEICMS.asFloat;
      TotalVLRICMS      := SQLTemplateNFITN2VLRICMS.asFloat;
      TotalBASCALCSUBS  := SQLTemplateNFITN2BASESUBS.asFloat;
      TotalVLRSUBS      := SQLTemplateNFITN2VLRSUBS.asFloat;
      If SQLTemplateNFITN2VLRIPI.asFloat>0 Then
        TotalBASCALCCIPI   := SQLTemplateTotalItemCalc.asFloat
      Else
        TotalBASCALCCIPI   := 0;
      TotalVLRIPI          := SQLTemplateNFITN2VLRIPI.asFloat;
      TotalVLRSEGURO       := SQLTemplateNFITN2SEGURO.AsFloat;
      TotalVLRFrete        := SQLTemplateNFITN2VLRFRETE.AsFloat;
      TotalVLROutrasdesp   := SQLTemplateNFITN2OUTRASDESP.AsFloat;

    End;
  TotalDesc         := SQLTemplateNFITN2VLRDESC.asFloat;
  If DataSet.FieldByName('ServicoLookup').asString = 'S' Then
    TotalVLRSERVICO := SQLTemplateTotalItemCalc.asFloat
  Else
    TotalVLRSERVICO := 0;
  TotalISSQN        := SQLTemplateNFITN2VLRISSQN.asFloat;
  QtdePed           := SQLTemplateNFITN3QUANTVEND.asFloat;
  CodigoPedido      := DataSet.FindField('PDVDA13ID').asString;
  PosicaoItem       := DataSet.FindField('PVITIITEM').asInteger;
  inherited;
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  DM.InserindoItemNV:=True;
  SQLTemplate.DataSource.DataSet.DisableControls;
  SQLTemplate.DataSource.DataSet.Edit;
  SQLTemplate.DataSource.DataSet.AutoCalcFields := False;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRPRODUTO').asFloat :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRPRODUTO').asFloat - TotalItem - TotalDesc);// SQLTemplateNFITN2VLRDESC.Value);
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRDESC').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRDESC').asFloat - TotalDesc);
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2BASCALCICMS').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN2BASCALCICMS').asFloat - TotalBASCALCICMS);
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRICMS').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRICMS').asFloat - TotalVLRICMS);
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2BASCALCSUBS').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN2BASCALCSUBS').asFloat - TotalBASCALCSUBS);
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRSUBS').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRSUBS').asFloat - TotalVLRSUBS);
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2BASCALCCIPI').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN2BASCALCCIPI').asFloat - TotalBASCALCCIPI);
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRIPI').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRIPI').asFloat - TotalVLRIPI);
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRISSQN').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRISSQN').asFloat - TotalISSQN);
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRSERVICO').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRSERVICO').asFloat - TotalVLRSERVICO);
    
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRSEGURO').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRSEGURO').asFloat - TotalVLRSEGURO);
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLROUTRASDESP').asFloat  :=
    (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLROUTRASDESP').asFloat - TotalVLROutrasDesp);
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRFRETE').asFloat  :=
    (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRFRETE').asFloat - TotalVLRFRETE);

  if SQLTemplate.DataSource.DataSet.State in ([dsInsert,dsEdit]) then
    SQLTemplate.DataSource.DataSet.Post;
  SQLTemplate.DataSource.DataSet.AutoCalcFields := True;
  SQLTemplate.DataSource.DataSet.EnableControls;
  If (CodigoPedido<>'') Then
    AtualizaPedidoVenda(CodigoPedido,PosicaoItem,QtdePed,0);
  DM.InserindoItemNV:=False;

  if NumItem <= 0 then
    begin
      SQLNumeroItens.Close;
      SQLNumeroItens.Open;
      if SQLNumeroItens.FindField('COUNT').AsVariant <> Null then
        NumItem := SQLNumeroItens.FindField('COUNT').AsInteger
      else
        NumItem := 0;
    end;
  Dec(NumItem);

end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateNFITN2PERCICMSChange(Sender: TField);
begin
  inherited;
  if SQLTemplateNFITN2PERCICMS.Value > 0 then
    nResultICMS.nICMS:= SQLTemplateNFITN2PERCICMS.AsFloat;
  If Ocupado Then Exit;
    CalculaImpostos;
  Ocupado := False;
end;

procedure TFormCadastroNotaFiscalItem.DSTemplateStateChange(
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
  if DSMasterTemplate.DataSet.FieldByName('NOFICSTATUS').AsString <> 'A' then
    DesabilitarBotoes(True,True,True,True,True);
end;

procedure TFormCadastroNotaFiscalItem.DBEditLoteExit(Sender: TObject);
begin
  inherited;
  if (Dm.SQLConfigGeralCFGECESTOQUEPORLOTE.AsString = 'S') and (SQLTemplate.State in DsEditModes) and (SQLTemplateLOTEA30NRO.AsString = '') then
    begin
      Application.CreateForm(TFormTelaSaldoPorLote,FormTelaSaldoPorLote);
      FormTelaSaldoPorLote.SQLNotaFiscalitem.Close;
      FormTelaSaldoPorLote.SQLNotaFiscalitem.ParamByName('PRODICOD').AsString := SQLTemplatePRODICOD.AsString;
      FormTelaSaldoPorLote.SQLNotaFiscalitem.Open;
      FormTelaSaldoPorLote.SQLLoteSaldo.Close;
      FormTelaSaldoPorLote.SQLLoteSaldo.MacroByName('Produto').AsString := 'PRODICOD = ' + SQLTemplatePRODICOD.AsString;
      FormTelaSaldoPorLote.SQLLoteSaldo.Open;

      FormTelaSaldoPorLote.SQLLoteSaldo.First;
      FormTelaSaldoPorLote.SQLNotaFiscalitem.First;

      FormTelaSaldoPorLote.ShowModal;
      if FormTelaSaldoPorLote.ModalResult = MrOk then
        begin
          SQLTemplateLOTEA30NRO.AsString := FormTelaSaldoPorLote.SQLLoteSaldoLOTEA30NRO.AsString;
        end
      else
        SQLTemplateLOTEA30NRO.AsString := '';

      FormTelaSaldoPorLote.Close;
    end
  else
    begin
      if SQLTemplateLOTEA30NRO.AsString <> '' then
        if SQLLocate('LOTE','LOTEA30NRO','LOTEA30NRO','"' + SQLTemplateLOTEA30NRO.AsString + '"') = '' then
          begin
            Informa('O número de lote informado está incorreto ou não foi cadastrado. Tente novamente !');
            (Sender as TDBEdit).SetFocus;
          end;
    end;
  if SQLTemplate.FieldByName('PRODICOD').AsVariant <> Null then
    DBEdit9.SetFocus;    
end;

procedure TFormCadastroNotaFiscalItem.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  LabelLote.Visible  := Dm.SQLConfigGeralCFGECESTOQUEPORLOTE.AsString = 'S';
  DBEditLote.Visible := Dm.SQLConfigGeralCFGECESTOQUEPORLOTE.AsString = 'S';
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateNFITN2PERCSUBSChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
    CalculaImpostos;
end;

procedure TFormCadastroNotaFiscalItem.MnNFImportarProdutosdoColetorClick(
  Sender: TObject);
begin
  inherited;
  if DSMasterTemplate.DataSet.FieldByName('NOFICSTATUS').AsString = 'A' then
    begin
      Application.CreateForm(TFormTelaImportaItens,FormTelaImportaItens);
//      FormTelaImportaItens.SetParams(SQLTemplate,'NFITN3QUANT',SQLTemplate.DataSource.DataSet.FieldByName('EMPRICOD').AsInteger);
      FormTelaImportaItens.ShowModal;
    end
  else
    begin
      Informa('Esta nota fiscal não está aberta, não é possível incluir produtos !');
      Abort;
    end;
end;

procedure TFormCadastroNotaFiscalItem.EditProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    BtnProduto.Click;
  if Key = VK_RETURN then
    begin
      if (EditProduto.Text <> '') and (SQLTemplate.State in DSEditModes) then
        begin
          case RadioPesquisa.ItemIndex of
            0 : begin
                  FindProduct(EditProduto,SQLTemplate.FieldByName('PRODICOD'));
                end;
            1 : begin
                  SQLTemplate.FieldByName('PRODICOD').AsInteger := ProcuraProdutoPorCodigoAntigo(EditProduto.Text);
                end;
            2 : begin
                  SQLTemplate.FieldByName('PRODICOD').AsInteger := ProcuraProdutoPorReferencia(EditProduto.Text);
                end;
          end;
        end
      else
        begin
          ProdutoDescricao := '';
          FieldLookup := SQLTemplate.FieldByName('PRODICOD');
          FieldOrigem := 'PRODICOD';
          CriaFormulario(TFormTelaConsultaProduto,'FormTelaConsultaProduto',False,True,False,'');
        end;
    end;
  if Key = VK_F3 then
    begin
      ProdutoDescricao := '';
      FieldLookup := SQLTemplate.FieldByName('PRODICOD');
      FieldOrigem := 'PRODICOD';
      CriaFormulario(TFormTelaConsultaProduto,'FormTelaConsultaProduto',False,True,False,'');
    end;
end;

procedure TFormCadastroNotaFiscalItem.EditProdutoExit(Sender: TObject);
begin
  inherited;
  if EditProduto.Text <> '' then
    if DBEditLote.Visible then
      DBEditLote.SetFocus
    else
      DBEdit9.SetFocus;
end;

procedure TFormCadastroNotaFiscalItem.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (((Sender as TForm).ActiveControl <> EditProduto) and (RadioPesquisa.ItemIndex <> 0))
     or ((Application.FindComponent('FormTelaConsultaProduto') = nil)
         and ( Application.FindComponent('FormTelaLancamentoGradeNotaFiscal') = nil)) then
  inherited;

end;

procedure TFormCadastroNotaFiscalItem.EditProdutoEnter(Sender: TObject);
begin
  inherited;
  EditProduto.SelectAll;
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateNFITN2PERCREDUCAOChange(
  Sender: TField);
begin
  inherited;
  Reducao := SQLTemplateNFITN2PERCREDUCAO.AsFloat;
  If Ocupado Then Exit;
    CalculaImpostos;
end;

procedure TFormCadastroNotaFiscalItem.btnNmerosdeSerieClick(
  Sender: TObject);
begin
  inherited;
  if SQLTemplateControlaSerieLookup.AsVariant <> Null then
    if SQLTemplateControlaSerieLookup.AsString = 'S' then
      begin
        Application.CreateForm(TFormTelaGeralModalCadastroProdutoNumeroSerie,FormTelaGeralModalCadastroProdutoNumeroSerie);
        FormTelaGeralModalCadastroProdutoNumeroSerie.SQLProdutoSerie.Close;
        FormTelaGeralModalCadastroProdutoNumeroSerie.SQLProdutoSerie.MacroByName('MFiltro').AsString := 'NOFIA13ID = "' + SQLTemplateNOFIA13ID.AsString + '" AND PRODICOD = ' + SQLTemplatePRODICOD.AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.SQLProdutoSerie.Open;
        FormTelaGeralModalCadastroProdutoNumeroSerie.CodProduto    := SQLTemplatePRODICOD.AsInteger;
        FormTelaGeralModalCadastroProdutoNumeroSerie.Destino       := DSMasterTemplate.DataSet.FieldByName('OrigemDestinoLookUp').AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.IDNotaFiscal  := SQLTemplateNOFIA13ID.AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.IDCliente     := DSMasterTemplate.DataSet.FieldByName('CLIEA13ID').AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.CodEmpresa    := DSMasterTemplate.DataSet.FieldByName('EMPRICODDEST').AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.CodFornecedor := DSMasterTemplate.DataSet.FieldByName('FORNICOD').AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.LabelTitulo.Caption := FormTelaGeralModalCadastroProdutoNumeroSerie.LabelTitulo.Caption + ' - ' + SQLTemplateProdutoLookUp.AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.LabelTitulo.Update;
        FormTelaGeralModalCadastroProdutoNumeroSerie.Status        := 'I';
        FormTelaGeralModalCadastroProdutoNumeroSerie.ShowModal;
      end;
end;

procedure TFormCadastroNotaFiscalItem.MnImportarProdutosdeOutraNotaFiscalClick(
  Sender: TObject);
begin
  inherited;
  SQLTemplate.DisableControls;
  Application.CreateForm(TFormTelaNotaFiscalItemFiltro,FormTelaNotaFiscalitemFiltro);
  FormTelaNotaFiscalItemFiltro.ShowModal;
  if FormTelaNotaFiscalItemFiltro.ModalResult = MrOk then
    begin
      FormTelaNotaFiscalItemFiltro.TblTemporaria.First;
      While Not FormTelaNotaFiscalItemFiltro.TblTemporaria.Eof Do
        Begin
          if FormTelaNotaFiscalitemFiltro.TblTemporariaQTDENFDest.Value > 0 then
            begin
              SQLTemplate.Append;
              SQLTemplatePRODICOD.Value      := FormTelaNotaFiscalItemFiltro.TblTemporariaPRODICOD.Value;
              SQLTemplateNFITN3QUANT.Value   := FormTelaNotaFiscalItemFiltro.TblTemporariaQTDENFDest.Value;
              SQLTemplateNFITN2VLRUNIT.Value := FormTelaNotaFiscalItemFiltro.TblTemporariaPRODN3VLRVENDA.Value;
              SQLTemplate.Post;
            end;
          FormTelaNotaFiscalitemFiltro.TblTemporaria.Next;
        End;
    end;
  SQLTemplate.EnableControls;
  SQLTemplate.Close;
  SQLTemplate.Open;
end;

procedure TFormCadastroNotaFiscalItem.BitBtn1Click(Sender: TObject);
  var nTotal, nAntigo : Extended;

begin
  inherited;
    nAntigo:= SQLTemplateTotalItemCalc.Value;
    nTotal := StrToFloat(InputBox('R$ Total','R$ Total do Item:',SQLTemplateTotalItemCalc.AsString));
    if not (SQLTemplate.State in ([dsEdit,dsInsert])) then
      SqlTemplate.Edit;
    if nTotal = 0 then
      SQLTemplateNFITN3TOTVEND.Clear
    else
    begin
      SQLTemplateNFITN3TOTVEND.Value := nTotal;
      SQLTemplateNFITN2VLRDESC.OnChange := nil;
      SQLTemplateNFITN2VLRDESC.asFloat := (nTotal) * (SQLTemplateNFITN2PERCDESC.asFloat / 100);
      SQLTemplateNFITN2VLRDESC.OnChange := SQLTemplateNFITN2VLRDESCChange;
    end;
end;

procedure TFormCadastroNotaFiscalItem.Button3Click(Sender: TObject);
begin
  inherited;
  PagePrincipal.ActivePage := PaginaImportacao;
end;

Function TFormCadastroNotaFiscalItem.BuscaIcms:TICMSUF;
var nICMSUF : TICMSUF;
begin

  SQLICMS.Close;
  SQLICMS.ParamByName('ICMSICOD').asInteger := DM.SQLTemplate.FindField('ICMSICOD').AsInteger;
  SQLICMS.Open;

  if SQLICMS.IsEmpty then
  begin
    ShowMessage('ATENÇÃO...'+#13#10+#13#10+'Alíquota de ICMS não cadastrado na tabela de ICMS por UF');
    nICMSUF.nICMS          := 0;
    nICMSUF.nRED_ICMS      := 0;
    nICMSUF.nICMS_INTERNO  := 0;
    nICMSUF.nMVA           := 0;
    nICMSUF.nSTFisica      := '';
    nICMSUF.nSTJuridica    := '';
  end else
  begin
    nICMSUF.nICMS          := SQLICMS.FindField('ICMSN2ICMSM1').asFloat;
    nICMSUF.nRED_ICMS      := SQLICMS.FindField('ICMSN2REDBASEICMS').asFloat;
    nICMSUF.nICMS_INTERNO  := SQLICMS.FindField('ICMSN2ICMSM1').asFloat;
    nICMSUF.nMVA           := SQLICMS.FindField('ICMSN2PERCSUBSTSAI').asFloat;
    nICMSUF.nSTFisica      := DM.SQLTemplate.FindField('PRODISITTRIB').AsString;
    nICMSUF.nSTJuridica    := DM.SQLTemplate.FindField('PRODISITTRIB').AsString;
  End;
  Result := nICMSUF;
end;


Function TFormCadastroNotaFiscalItem.BuscaIcmsUf:TICMSUF;
var SQLText, nNCM : String;
    nProduto: Integer;
    nICMSUF : TICMSUF;
begin

  SQLText  := 'Select * From ICMSUF Where ';
  nProduto := 0;
  nNCM     := '';

  // Pesquisa o UF + Cod.Produto para ver se existe algum registro especifico ao Cod Produto digitado
  SQLICMSUF.Close;
  SQLICMSUF.SQL.Text := 'Select * From ICMSUF Where ICMUA2UF =:ICMUA2UF AND PRODICOD = :pPRODICOD';
  SQLICMSUF.ParamByName('ICMUA2UF').asString  := SQLTemplate.DataSource.DataSet.FindField('CliFornEmpEstadoLookUp').asString;
  SQLICMSUF.ParamByName('pPRODICOD').AsString := SQLTemplatePRODICOD.AsString;
  SQLICMSUF.Open;

  // se obtiver algum registro como resultado cria o parametro para busca agregada ao produto caso contrario busca registro com NCM
  if not SQLICMSUF.IsEmpty then
    nProduto := SQLTemplatePRODICOD.AsInteger
  else begin
    SQLICMSUF.Close;
    SQLICMSUF.SQL.Text := 'Select * From ICMSUF Where ICMUA2UF =:ICMUA2UF AND NCMA30CODIGO = :pNCM';
    SQLICMSUF.ParamByName('ICMUA2UF').asString  := SQLTemplate.DataSource.DataSet.FindField('CliFornEmpEstadoLookUp').asString;
    SQLICMSUF.ParamByName('pNCM').AsString := SQLTemplateNCMLookUp.AsString;
    SQLICMSUF.Open;
    // se obtiver algum registro como resultado cria o parametro para busca agregada ao NCM
    if not SQLICMSUF.IsEmpty then
      nNCM := SQLTemplateNCMLookUp.AsString ;
  end;

  // Fecha e cria o novo SQL de Pesquisa
  SQLICMSUF.Close;
  SQLICMSUF.SQL.Text := 'Select * From ICMSUF Where PRODICOD = :pPRODICOD AND '+
  'ICMUA2UF =:ICMUA2UF AND TIPOPESSOA = :pPESSOA AND ENQUADRAMENTO = :pREGIME AND NCMA30CODIGO = :pNCM';

  // Se o Resultado for em branco, busca somente pelo UF + Tipo Pessoa (Fis/Jur) + Regime (Enquadramento)
  if SQLICMSUF.IsEmpty then
  begin
    SQLICMSUF.Close;
    SQLICMSUF.ParamByName('ICMUA2UF').asString  := SQLTemplate.DataSource.DataSet.FindField('CliFornEmpEstadoLookUp').asString;
    SQLICMSUF.ParamByName('pPESSOA').AsString   := SQLTemplate.DataSource.DataSet.FindField('CliFornEmpFisicaJuridica').AsString;
    SQLICMSUF.ParamByName('pRegime').AsString   := SQLTemplate.DataSource.DataSet.FindField('CliFornEmpRegime').AsString;
    SQLICMSUF.ParamByName('pPRODICOD').AsInteger:= nProduto;
    SQLICMSUF.ParamByName('pNCM').AsString      := nNCM;
    SQLICMSUF.Open;
  End;

  // Se o Resultado for em branco, busca somente pelo UF + Tipo Pessoa (Fis/Jur)
  if SQLICMSUF.IsEmpty then
  begin
    SQLICMSUF.Close;
    SQLICMSUF.ParamByName('ICMUA2UF').asString  := SQLTemplate.DataSource.DataSet.FindField('CliFornEmpEstadoLookUp').asString;
    SQLICMSUF.ParamByName('pPESSOA').AsString   := SQLTemplate.DataSource.DataSet.FindField('CliFornEmpFisicaJuridica').AsString;
    SQLICMSUF.ParamByName('pRegime').AsString   := 'A'; // Ambas
    SQLICMSUF.ParamByName('pPRODICOD').AsInteger:= nProduto;
    SQLICMSUF.ParamByName('pNCM').AsString      := nNCM;
    SQLICMSUF.Open;
  end;

  // Se o Resultado ainda for em branco, busca somente o UF
  if SQLICMSUF.IsEmpty then
  begin
    SQLICMSUF.Close;
    SQLICMSUF.ParamByName('ICMUA2UF').asString  := SQLTemplate.DataSource.DataSet.FindField('CliFornEmpEstadoLookUp').asString;
    SQLICMSUF.ParamByName('pPESSOA').AsString   := 'A';
    SQLICMSUF.ParamByName('pRegime').AsString   := 'A'; // Ambas
    SQLICMSUF.ParamByName('pPRODICOD').AsInteger:= nProduto;
    SQLICMSUF.ParamByName('pNCM').AsString      := nNCM;
    SQLICMSUF.Open;
  end;
  if SQLICMSUF.IsEmpty then
  begin
    ShowMessage('ATENÇÃO...'+#13#10+#13#10+'Alíquota de ICMS não cadastrado na tabela de ICMS por UF');
    nICMSUF.nICMS          := 0;
    nICMSUF.nRED_ICMS      := 0;
    nICMSUF.nICMS_INTERNO  := 0;
    nICMSUF.nMVA           := 0;
    nICMSUF.nSTFisica      := '';
    nICMSUF.nSTJuridica    := '';
  end else
  begin
    nICMSUF.nICMS          := SQLICMSUF.FindField('ICMUN2ALIQUOTA').asFloat;
    nICMSUF.nRED_ICMS      := SQLICMSUF.FindField('ICMUN3REDBASECALC').asFloat;
    nICMSUF.nICMS_INTERNO  := SQLICMSUF.FindField('ICMUN2ALIQUOTAINTERNA').asFloat;
    nICMSUF.nMVA           := SQLICMSUF.FindField('ICMUN3MVA').asFloat;
    nICMSUF.nSTFisica      := SQLICMSUF.FindField('ICMUISITTRIB').AsString;
    nICMSUF.nSTJuridica    := SQLICMSUF.FindField('ICMUISITTRIBJURIDICA').AsString;
  end;

  Result := nICMSUF;

end;

end.

