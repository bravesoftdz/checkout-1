unit CadastroProdutoParaProducao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, RxLookup, Placemnt, RxRichEd, UCrpe32;

type
  PDadosDoNodo = ^TDadosDoNodo;
  TDadosDoNodo = Record
     Cod        : String;
     Produto    : String;
     Tipo       : String;
     CorTexto   : TColor;
     EstSaldo   : Double;
     QtdePUn    : Double;
     NecessLote : Double;
  end;

  TFormCadastroProdutoParaProducao = class(TFormCadastroTEMPLATE)
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    Label1: TLabel;
    SQLProduto: TRxQuery;
    DBLProduto: TRxDBLookupCombo;
    SQLTemplatePRODICOD: TIntegerField;
    DSSQLProduto: TDataSource;
    SQLTemplatePRODA60DESCR: TStringField;
    SQLExec: TRxQuery;
    AcessaFornecedor: TSpeedButton;
    dsSQLInsumo: TDataSource;
    SQLInsumo: TRxQuery;
    Splitter1: TSplitter;
    QueryProduto: TQuery;
    Button4: TRxSpeedButton;
    SQLFases: TRxQuery;
    dsSQLFases: TDataSource;
    SQLFasesPRFAA13ID: TStringField;
    SQLFasesPRFAN2TEMPOTOTAL: TBCDField;
    SQLFasesPRFAN2CUSTOTOTAL: TBCDField;
    SQLFasesPRFAA30DESCR: TStringField;
    SQLFasesDias: TFloatField;
    SQLFasesHora: TFloatField;
    SQLFasesMinutos: TFloatField;
    pnClient: TPanel;
    DBGridInsumo: TDBGrid;
    Splitter2: TSplitter;
    DBGridFases: TDBGrid;
    SQLTemplatePRPRICOD: TIntegerField;
    SQLFasesPRODICOD: TIntegerField;
    SQLInsumoPRODICODFILHO: TIntegerField;
    SQLInsumoPRODN3QTDE: TBCDField;
    SQLInsumoPRODN3VLRTOTAL: TBCDField;
    SQLInsumoPRODA60DESCR: TStringField;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    ImageListArvore: TImageList;
    pnGeral: TPanel;
    ArvoreOP: TTreeView;
    SQLItem: TRxQuery;
    PopupMenuArvore: TPopupMenu;
    mnExpandirdaSelecao: TMenuItem;
    mnExpandirTudo: TMenuItem;
    N1: TMenuItem;
    mnAtualizar: TMenuItem;
    pnLegenda: TPanel;
    shpLegendaProduto: TShape;
    lblLegandaProduto: TLabel;
    lblLegendaProdNegativo: TLabel;
    ImgLegendaProdNegativo: TImage;
    lblLegenda: TLabel;
    FormStorage: TFormStorage;
    rchDetalhe: TRxRichEdit;
    pltDivisao: TSplitter;
    chkDetalhe: TCheckBox;
    RichTemp: TRxRichEdit;
    mmTEMP: TMemo;
    tblFichaTecComposicao: TTable;
    SQLFichaTecComposicao: TRxQuery;
    SQLFichaTecComposicaoPRODUTORAIZ: TIntegerField;
    SQLFichaTecComposicaoPRODUTORAIZNOME: TStringField;
    SQLFichaTecComposicaoPRODFILHO: TIntegerField;
    SQLFichaTecComposicaoPRODFILHONOME: TStringField;
    SQLFichaTecComposicaoQTDEFILHO: TBCDField;
    SQLFichaTecComposicaoPRODNETO: TIntegerField;
    SQLFichaTecComposicaoPRODNETONOME: TStringField;
    SQLFichaTecComposicaoQTDENETO: TBCDField;
    tblFichaTecComposicaoPRODUTORAIZ: TIntegerField;
    tblFichaTecComposicaoPRODUTORAIZNOME: TStringField;
    tblFichaTecComposicaoPRODFILHO: TIntegerField;
    tblFichaTecComposicaoPRODFILHONOME: TStringField;
    tblFichaTecComposicaoQTDEFILHO: TBCDField;
    tblFichaTecComposicaoPRODNETO: TIntegerField;
    tblFichaTecComposicaoPRODNETONOME: TStringField;
    tblFichaTecComposicaoQTDENETO: TBCDField;
    BatchMove: TBatchMove;
    mnImprimirFichaTecnicaDetalhe: TMenuItem;
    SQLFichaTecFasesAtividades: TRxQuery;
    SQLFichaTecFasesAtividadesPRODUTORAIS: TIntegerField;
    SQLFichaTecFasesAtividadesPRODUTORAISNOME: TStringField;
    SQLFichaTecFasesAtividadesFASENOME: TStringField;
    SQLFichaTecFasesAtividadesTEMPOTOTALFASE: TBCDField;
    SQLFichaTecFasesAtividadesCUSTOTOTALFASE: TBCDField;
    SQLFichaTecFasesAtividadesATIVIDADE: TStringField;
    SQLFichaTecFasesAtividadesTEMPOEXECUCAO: TBCDField;
    SQLFichaTecFasesAtividadesGASTOFUNCIONARIO: TBCDField;
    SQLFichaTecFasesAtividadesGASTOEQUIPAMENTO: TBCDField;
    SQLFichaTecFasesAtividadesGASTORECURSOS: TBCDField;
    SQLFichaTecFasesAtividadesGASTOTOTAL: TBCDField;
    tblFichaTecFasesAtividades: TTable;
    tblFichaTecFasesAtividadesPRODUTORAIS: TIntegerField;
    tblFichaTecFasesAtividadesPRODUTORAISNOME: TStringField;
    tblFichaTecFasesAtividadesFASENOME: TStringField;
    tblFichaTecFasesAtividadesTEMPOTOTALFASE: TBCDField;
    tblFichaTecFasesAtividadesCUSTOTOTALFASE: TBCDField;
    tblFichaTecFasesAtividadesATIVIDADE: TStringField;
    tblFichaTecFasesAtividadesTEMPOEXECUCAO: TBCDField;
    tblFichaTecFasesAtividadesGASTOFUNCIONARIO: TBCDField;
    tblFichaTecFasesAtividadesGASTOEQUIPAMENTO: TBCDField;
    tblFichaTecFasesAtividadesGASTORECURSOS: TBCDField;
    tblFichaTecFasesAtividadesGASTOTOTAL: TBCDField;
    Report: TCrpe;
    SQLProdutoTipoProduto: TStringField;
    SQLProdutoPRODCTIPO: TStringField;
    mnImprimirFichaTecnicaResumida: TMenuItem;
    SQLFichaTecResumida: TRxQuery;
    tblFichaDetalhadaTemp: TTable;
    SQLResumo: TRxQuery;
    tblRelatorioResumo: TTable;
    tblRelatorioResumoSemiAcabadoCod: TIntegerField;
    tblRelatorioResumoSemiAcabadoNome: TStringField;
    tblRelatorioResumoSemiAcabadoQtde: TFloatField;
    tblRelatorioResumoSemiAcabadoEstoque: TFloatField;
    tblRelatorioResumoInsumoCod: TIntegerField;
    tblRelatorioResumoInsumoNome: TStringField;
    tblRelatorioResumoInsumoQtde: TFloatField;
    tblRelatorioResumoInsumoEstoque: TFloatField;
    tblRelatorioResumoSemiAcabadoQdteTotal: TFloatField;
    tblRelatorioResumoInsumoQdteTotal: TFloatField;
    SQLFichaTecResumidaPRODUTORAIZ: TIntegerField;
    SQLFichaTecResumidaPRODUTORAIZNOME: TStringField;
    SQLFichaTecResumidaPRODUTOQTDE: TBCDField;
    SQLFichaTecResumidaINSUMOSEMIACABADO: TIntegerField;
    SQLFichaTecResumidaINSUMOSEMIACABADONOME: TStringField;
    SQLFichaTecResumidaINSUMOSEMIACABADOTIPO: TStringField;
    SQLFichaTecResumidaINSUMOSEMIACABADOQTDE: TBCDField;
    SQLFichaTecResumidaINSUMOSEMIACABADOTOTAL: TFloatField;
    SQLFichaTecResumidaINSUMO: TIntegerField;
    SQLFichaTecResumidaINSUMONOME: TStringField;
    SQLFichaTecResumidaINSUMOTIPO: TStringField;
    SQLFichaTecResumidaINSUMOQTDE: TBCDField;
    SQLFichaTecResumidaINSUMOTOTAL: TFloatField;
    tblFichaDetalhadaTempPRODUTORAIZ: TIntegerField;
    tblFichaDetalhadaTempPRODUTORAIZNOME: TStringField;
    tblFichaDetalhadaTempPRODUTOQTDE: TBCDField;
    tblFichaDetalhadaTempINSUMOSEMIACABADO: TIntegerField;
    tblFichaDetalhadaTempINSUMOSEMIACABADONOME: TStringField;
    tblFichaDetalhadaTempINSUMOSEMIACABADOTIPO: TStringField;
    tblFichaDetalhadaTempINSUMOSEMIACABADOQTDE: TBCDField;
    tblFichaDetalhadaTempINSUMOSEMIACABADOTOTAL: TFloatField;
    tblFichaDetalhadaTempINSUMO: TIntegerField;
    tblFichaDetalhadaTempINSUMONOME: TStringField;
    tblFichaDetalhadaTempINSUMOTIPO: TStringField;
    tblFichaDetalhadaTempINSUMOQTDE: TBCDField;
    tblFichaDetalhadaTempINSUMOTOTAL: TFloatField;
    tblRelatorioResumoSemiAcabadoUnidade: TStringField;
    tblRelatorioResumoInsumoUnidade: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLTemplatePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure AcessaFornecedorClick(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure SQLFasesCalcFields(DataSet: TDataSet);
    procedure DBGridInsumoDblClick(Sender: TObject);
    procedure DBGridFasesDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridListaDblClick(Sender: TObject);
    procedure SQLTemplateAfterScroll(DataSet: TDataSet);
    procedure ArvoreRoot;
    procedure CriaNivelPRODUTO_COMP(Node: TTreeNode);
    procedure CriaNivelATIVIDADES(Node: TTreeNode);
    procedure CriaNivelDADOS_ATIVIDADES(Node: TTreeNode);
    procedure VerDetalhe(Nodo : TTreeNode);
    procedure ArvoreOPChange(Sender: TObject; Node: TTreeNode);
    procedure SQLTemplatePRODICODChange(Sender: TField);
    procedure ArvoreOPCustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure mnExpandirdaSelecaoClick(Sender: TObject);
    procedure mnExpandirTudoClick(Sender: TObject);
    procedure mnAtualizarClick(Sender: TObject);
    procedure ExpandirTudo(ApartirSelecao: Boolean; Texto :String);
    procedure lblLegendaClick(Sender: TObject);
    procedure chkDetalheClick(Sender: TObject);
    procedure IncTextForm(RichEdit : TRxRichEdit; Texto : String);
    procedure mnImprimirFichaTecnicaDetalheClick(Sender: TObject);
    procedure SQLProdutoCalcFields(DataSet: TDataSet);
    procedure DBLProdutoChange(Sender: TObject);
    procedure mnImprimirFichaTecnicaResumidaClick(Sender: TObject);
    procedure VerificaDetalhe;
    function  SemiacabadoDup(CodSemiAcabado : Integer) : boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    DadosDoNodo  : PDadosDoNodo;
    NovoNodo, NovoNodoPai: TTreeNode;
    EstoqueOK, OutroNivel, PararExpancao, AutoExand : Boolean;
    UltimoDetalhe : String;
    Semiacabados : TStrings;
  public
    { Public declarations }
  end;

var
  FormCadastroProdutoParaProducao: TFormCadastroProdutoParaProducao;
  TipoOutrosDados : array[10..13] of string = ('Func','Recu','Equi','Cent');
  TAGSTIPOFONTE_SYS : array[0..2] of TFontStyle = (fsBold, fsItalic, fsUnderline);
implementation

uses FormResources, VarSYS, UnitLibrary,
  CadastroProdutos, CadastroProdutoProducaoInsumo,
  CadastroProducaoProdutoFase, DataModulo, DataModuloTemplate;

{$R *.dfm}

procedure TFormCadastroProdutoParaProducao.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLProduto.Active then SQLProduto.Active := True;
  if not SQLFases.Active   then SQLFases.Active   := True;
  TABELA := 'PRODUTOPRODUCAO';
end;

procedure TFormCadastroProdutoParaProducao.SQLTemplateAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  Button3.Click;
end;

procedure TFormCadastroProdutoParaProducao.SQLTemplatePostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  Application.MessageBox('Verifique se o produto já esta na produção','Atenção',MB_OK+MB_ICONEXCLAMATION+MB_SYSTEMMODAL);
  Abort;
end;

procedure TFormCadastroProdutoParaProducao.AcessaFornecedorClick(
  Sender: TObject);
begin
  inherited;
  FieldOrigem   := 'PRODICOD';
  FieldLookup   := DsTemplate.DataSet.FieldByName('PRODICOD');
  DataSetLookup := SQLProduto;
  CriaFormulario(TFormCadastroProduto,'FormCadastroProduto',False,True,'') ;
end;

procedure TFormCadastroProdutoParaProducao.DSTemplateDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  SQLInsumo.Close;
  SQLFases.Close;

  if not SQLTemplatePRODICOD.IsNull then
     begin
        SQLInsumo.MacroByName('MFiltro').AsString := ' PRODUTOCOMPOSICAO.PRODICOD = ' + SQLTemplatePRODICOD.AsString;
        SQLInsumo.Open;
        SQLFases.MacroByName('MFiltro').AsString := ' PRODUCAOPRODUTOFASE.PRODICOD = ' + SQLTemplatePRODICOD.AsString;
        SQLFases.Open;
     end;
end;

procedure TFormCadastroProdutoParaProducao.SQLFasesCalcFields(
  DataSet: TDataSet);
Var A1,A2,A3, Tempo : Double;
begin
  inherited;
  if not SQLFasesPRFAN2TEMPOTOTAL.IsNull then
     begin
        Tempo := SQLFasesPRFAN2TEMPOTOTAL.AsFloat;
        
        if pos(',',FloatToStr((Tempo/60) / 24)) > 0 then
           A1 := StrToFloat(copy(FloatToStr((Tempo/60) / 24),0,pos(',',FloatToStr((Tempo/60) / 24))-1))
        else
           A1 := (Tempo/60) / 24;

        if pos(',',FloatToStr((Tempo/60) - (A1 * 24))) > 0 then
           A2 := StrToFloat(copy(FloatToStr((Tempo/60) - (A1 * 24)),0,pos(',',FloatToStr((Tempo/60) - (A1 * 24)))-1))
        else
           A2 := (Tempo/60) - (A1 * 24);

        A3 := (((Tempo/60) - (A1 * 24) - (A2)) * 60);

        SQLFasesDias.AsFloat    := A1;
        SQLFasesHora.AsFloat    := A2;
        SQLFasesMinutos.AsFloat := A3;
     end;
end;


procedure TFormCadastroProdutoParaProducao.DBGridInsumoDblClick(
  Sender: TObject);
begin
  inherited;
  Button3.Click;
end;

procedure TFormCadastroProdutoParaProducao.DBGridFasesDblClick(
  Sender: TObject);
begin
  inherited;
  Button4.Click;
end;

procedure TFormCadastroProdutoParaProducao.FormActivate(Sender: TObject);
begin
  inherited;
  DSTemplateDataChange(SQLTemplate,SQLTemplatePRPRICOD);
end;

procedure TFormCadastroProdutoParaProducao.Button1Click(Sender: TObject);
begin
  inherited;
  If (Sender as TRxSpeedButton).Name = 'Button3' Then
    begin
      DSMasterSys := DsTemplate;
      CriaFormulario(TFormCadastroProdutoProducaoInsumo,'FormCadastroProdutoProducaoInsumo',False,False,SQLTemplatePRODA60DESCR.AsString);
    end ;
  If (Sender as TRxSpeedButton).Name = 'Button4' Then
    begin
      DSMasterSys := DSTemplate;
      CriaFormulario(TFormCadastroProducaoProdutoFase,'FormCadastroProducaoProdutoFase',True,False,'');
    end;

end;

procedure TFormCadastroProdutoParaProducao.DBGridListaDblClick(
  Sender: TObject);
begin
  inherited;
  Button2.Click;
end;

procedure TFormCadastroProdutoParaProducao.ArvoreRoot;
begin
  inherited;
  ArvoreOP.Items.Clear;
  New(DadosDoNodo);
  DadosDoNodo^.Cod        := SQLTemplatePRODICOD.AsString;
  DadosDoNodo^.Produto    := SQLTemplatePRODA60DESCR.AsString;
  DadosDoNodo^.Tipo       := 'Produto';
  DadosDoNodo^.CorTexto   := clBlack;
  SQLCount.Close;
  SQLCount.SQL.Text := 'select PSLDN3QTDE from PRODUTOSALDO where PRODICOD = ' + SQLTemplatePRODICOD.AsString + ' and EMPRICOD = ' + IntToStr(EmpresaCorrente);
  SQLCount.Open;
  if SQLCount.FieldByName('PSLDN3QTDE').IsNull then
     DadosDoNodo^.EstSaldo := 0
  else
     DadosDoNodo^.EstSaldo := SQLCount.FieldByName('PSLDN3QTDE').AsFloat;
  NovoNodo := ArvoreOP.Items.AddNode(Nil, Nil, 'Produto ' + SQLTemplatePRODA60DESCR.AsString, DadosDoNodo, naAddChild);
  NovoNodo.SelectedIndex  := 2;
  NovoNodo.ImageIndex     := 2;
  ArvoreOP.Select(ArvoreOP.Items.Item[0]);
  ArvoreOPChange(ArvoreOP, ArvoreOP.Selected);
end;

procedure TFormCadastroProdutoParaProducao.SQLTemplateAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  if not SQLTemplatePRODICOD.IsNull then
     ArvoreRoot;
end;

procedure TFormCadastroProdutoParaProducao.CriaNivelPRODUTO_COMP(Node: TTreeNode);
begin
   //Isumos
   SQLExec.Close;
   SQLExec.SQL.Text := 'select PRODUTOCOMPOSICAO.PRODICODFILHO, PRODUTO.PRODA60DESCR, PRODUTO.PRODCTIPO from PRODUTOCOMPOSICAO ' +
                              'left outer join PRODUTO on PRODUTO.PRODICOD = PRODUTOCOMPOSICAO.PRODICODFILHO ' +
                              'where PRODUTOCOMPOSICAO.PRODICOD = ' + PDadosDoNodo(Node.Data)^.Cod;
   SQLExec.Open;
   SQLExec.First;
   while not SQLExec.Eof do
      begin
         New(DadosDoNodo);
         DadosDoNodo^.Cod        := SQLExec.FieldByName('PRODICODFILHO').AsString;
         DadosDoNodo^.Produto    := SQLExec.FieldByName('PRODA60DESCR').AsString;
         DadosDoNodo^.Tipo       := 'Insumo';
         DadosDoNodo^.CorTexto   := clNavy;
         NovoNodo := ArvoreOP.Items.AddNode(Nil, Node, 'Componente ' + SQLExec.FieldByName('PRODA60DESCR').AsString,
                                                       DadosDoNodo, naAddChild);
         NovoNodo.SelectedIndex  := 1;
         case SQLExec.FieldByName('PRODCTIPO').AsString[1] of
            'M' : NovoNodo.ImageIndex := 3;
            'S' : NovoNodo.ImageIndex := 4;
            'P' : NovoNodo.ImageIndex := 2;
         end;
         //Verifica se tem Composição;
         SQLCount.Close;
         SQLCount.SQL.Text := 'select Count(*) as Total from PRODUTOCOMPOSICAO where PRODICOD = ' + SQLExec.FieldByName('PRODICODFILHO').AsString;
         SQLCount.Open;
         if SQLCount.FieldByName('Total').AsInteger > 0 then
            NovoNodo.HasChildren := True;

         SQLCount.Close;
         SQLCount.SQL.Text := 'select * from PRODUTOCOMPOSICAO where PRODICOD = ' + PDadosDoNodo(Node.Data)^.Cod + ' and PRODICODFILHO = ' + DadosDoNodo^.Cod;
         SQLCount.Open;

         DadosDoNodo^.QtdePUn    := SQLCount.FieldByName('PRODN3QTDE').AsFloat;
         DadosDoNodo^.NecessLote := SQLCount.FieldByName('PRODN3QTDE').AsFloat;

         //Verifica Saldo
         SQLCount.Close;
         SQLCount.SQL.Text := 'select * from PRODUTOSALDO where PRODICOD = ' + SQLExec.FieldByName('PRODICODFILHO').AsString + ' and EMPRICOD = ' + IntToStr(EmpresaCorrente);
         SQLCount.Open;
         if SQLCount.FieldByName('PSLDN3QTDE').AsFloat < DadosDoNodo^.NecessLote then
            begin
               DadosDoNodo^.CorTexto   := clRed;
               EstoqueOK := False;
            end;

         if not SQLCount.FieldByName('PSLDN3QTDE').IsNull then
            DadosDoNodo^.EstSaldo := SQLCount.FieldByName('PSLDN3QTDE').AsFloat
         else
            DadosDoNodo^.EstSaldo := 0;

         SQLCount.Close;

         SQLExec.Next;
      end;
   //Fases
   SQLExec.Close;
   SQLExec.SQL.Text := 'select PRODUCAOFASES.PRFAA30DESCR, PRODUCAOFASES.PRFAA13ID from PRODUCAOPRODUTOFASE ' +
                       'left outer join PRODUCAOFASES  on PRODUCAOFASES.PRFAA13ID = PRODUCAOPRODUTOFASE.PRFAA13ID ' +
                       'where PRODUCAOPRODUTOFASE.PRODICOD = ' + PDadosDoNodo(Node.Data)^.Cod;
   SQLExec.Open;
   SQLExec.First;
   while not SQLExec.Eof do
      begin
         New(DadosDoNodo);
         DadosDoNodo^.Cod        := SQLExec.FieldByName('PRFAA13ID').AsString;
         DadosDoNodo^.Produto    := SQLExec.FieldByName('PRFAA30DESCR').AsString;
         DadosDoNodo^.Tipo       := 'Fase';
         DadosDoNodo^.CorTexto   := clBlack;
         NovoNodo := ArvoreOP.Items.AddNode(Nil, Node, 'Fase ' + SQLExec.FieldByName('PRFAA30DESCR').AsString,
                                                       DadosDoNodo, naAddChild);
         NovoNodo.SelectedIndex  := 8;
         NovoNodo.ImageIndex     := 8;

         //Verifica se tem Atividades;
         SQLCount.Close;
         SQLCount.SQL.Text := 'select Count(*) AS Total from PRODUCAOFASESATIV where PRFAA13ID = ' + SQLExec.FieldByName('PRFAA13ID').AsString;
         SQLCount.Open;
         if SQLCount.FieldByName('Total').AsInteger > 0 then
            NovoNodo.HasChildren := True;

         SQLExec.Next;
      end;
end;

procedure TFormCadastroProdutoParaProducao.CriaNivelATIVIDADES(Node: TTreeNode);
begin
   //Atividade
   SQLExec.Close;
   SQLExec.SQL.Text := 'select PRODUCAOATIVIDADE.PRATA13ID, PRODUCAOATIVIDADE.PRATA60DESCR from PRODUCAOFASESATIV ' +
                       'left outer join PRODUCAOATIVIDADE on PRODUCAOATIVIDADE.PRATA13ID = PRODUCAOFASESATIV.PRATA13ID ' +
                       'where PRODUCAOFASESATIV.PRFAA13ID = ' + PDadosDoNodo(Node.Data)^.Cod;
   SQLExec.Open;
   SQLExec.First;
   while not SQLExec.Eof do
      begin
         New(DadosDoNodo);
         DadosDoNodo^.Cod        := SQLExec.FieldByName('PRATA13ID').AsString;
         DadosDoNodo^.Produto    := SQLExec.FieldByName('PRATA60DESCR').AsString;
         DadosDoNodo^.Tipo       := 'Atividade';
         DadosDoNodo^.CorTexto   := clBlack;
         NovoNodo := ArvoreOP.Items.AddNode(Nil, Node, 'Atividade ' + SQLExec.FieldByName('PRATA60DESCR').AsString,
                                                       DadosDoNodo, naAddChild);
         NovoNodo.SelectedIndex  := 9;
         NovoNodo.ImageIndex     := 9;
         NovoNodo.HasChildren    := True;
         SQLExec.Next;
      end;
end;

procedure TFormCadastroProdutoParaProducao.CriaNivelDADOS_ATIVIDADES(Node: TTreeNode);
Var I     : Integer;
    Texto : String;
begin
   //Outros Dados Funcionarios, Centro de Custo, Recursos, Equipamentos
   SQLExec.Close;
   SQLExec.SQL.Text :=
   'select Cast(FUNCIONARIO.FUNCA13ID as Char(15)) as Cod, FUNCIONARIO.FUNCA60NOME as Nome, "Func" as Tipo ' +
   'from PRODUCAOATIVIDADE ' +
   'left outer join PRODUCAOATIVFUNC on PRODUCAOATIVFUNC.PRATA13ID = PRODUCAOATIVIDADE.PRATA13ID ' +
   'left outer join FUNCIONARIO on FUNCIONARIO.FUNCA13ID = PRODUCAOATIVFUNC.FUNCA13ID ' +
   'where PRODUCAOATIVIDADE.PRATA13ID = "' + PDadosDoNodo(Node.Data)^.Cod + '" ' +

   'union ' +
   'select Cast(PRODUCAORECURSOS.PRREA13ID as Char(15))as Cod, PRODUCAORECURSOS.PRREA60DESCR as Nome, "Recu" as Tipo ' +
   'from PRODUCAOATIVIDADE ' +
   'left outer join PRODUCAOATIVRECUR on PRODUCAOATIVRECUR.PRATA13ID = PRODUCAOATIVIDADE.PRATA13ID ' +
   'left outer join PRODUCAORECURSOS on PRODUCAORECURSOS.PRREA13ID = PRODUCAOATIVRECUR.PRREA13ID ' +
   'where PRODUCAOATIVIDADE.PRATA13ID = "' + PDadosDoNodo(Node.Data)^.Cod + '" ' +

   'union ' +
   'select Cast(PRODUCAOEQUIP.PREQA13ID as Char(15)) as Cod, PRODUCAOEQUIP.PREQA60DESCR as Nome, "Equi" as Tipo ' +
   'from PRODUCAOATIVIDADE ' +
   'left outer join PRODUCAOATIVEQUIP on PRODUCAOATIVEQUIP.PRATA13ID = PRODUCAOATIVIDADE.PRATA13ID ' +
   'left outer join PRODUCAOEQUIP on PRODUCAOEQUIP.PREQA13ID = PRODUCAOATIVEQUIP.PREQA13ID ' +
   'where PRODUCAOATIVIDADE.PRATA13ID = "' + PDadosDoNodo(Node.Data)^.Cod + '" ' +

   'union ' +
   'select CENTROCUSTO.CECUA15COD as Cod, CENTROCUSTO.CECUA60DESCR as Nome, "Cent" as Tipo ' +
   'from PRODUCAOATIVIDADE ' +
   'left outer join PRODUCAOATIVCCUSTO on PRODUCAOATIVCCUSTO.PRATA13ID = PRODUCAOATIVIDADE.PRATA13ID ' +
   'left outer join CENTROCUSTO on CENTROCUSTO.CECUA15COD = PRODUCAOATIVCCUSTO.CECUA15COD ' +

   'where PRODUCAOATIVIDADE.PRATA13ID = "' + PDadosDoNodo(Node.Data)^.Cod + '"';
   SQLExec.Open;
   For I := 10 to 13 do
      begin
         case I of
           10 : Texto := 'Funcionário' ;
           11 : Texto := 'Recurso';
           12 : Texto := 'Equipamento';
           13 : Texto := 'Centro Custo';
         end;

         New(DadosDoNodo);
         DadosDoNodo^.Cod        := IntToStr(I);
         DadosDoNodo^.Produto    := Texto;
         DadosDoNodo^.Tipo       := TipoOutrosDados[I];
         DadosDoNodo^.CorTexto   := clGreen;

         NovoNodoPai := ArvoreOP.Items.AddNode(Nil, Node,Texto, DadosDoNodo, naAddChild);
         NovoNodoPai.SelectedIndex  := I;
         NovoNodoPai.ImageIndex     := I;

         SQLExec.First;
         while not SQLExec.Eof do
            begin
               if (SQLExec.FieldByName('Tipo').AsString = TipoOutrosDados[I]) and
                  (not SQLExec.FieldByName('Cod').IsNull) then
                  begin
                     New(DadosDoNodo);
                     DadosDoNodo^.Cod        := SQLExec.FieldByName('Cod').AsString;
                     DadosDoNodo^.Produto    := SQLExec.FieldByName('Nome').AsString;
                     DadosDoNodo^.Tipo       := SQLExec.FieldByName('Tipo').AsString;
                     DadosDoNodo^.CorTexto   := clBlack;
                     NovoNodo := ArvoreOP.Items.AddNode(Nil, NovoNodoPai, SQLExec.FieldByName('Nome').AsString, DadosDoNodo, naAddChild);
                     NovoNodo.SelectedIndex  := I;
                     NovoNodo.ImageIndex     := I;
                  end;
               SQLExec.Next;
            end;
      end;
end;

procedure TFormCadastroProdutoParaProducao.ArvoreOPChange(Sender: TObject;
  Node: TTreeNode);
begin
  inherited;
  if Self.Active then
     begin
        if ((PDadosDoNodo(Node.Data)^.Tipo = 'Produto') or (PDadosDoNodo(Node.Data)^.Tipo = 'Insumo')) and (Node.Count = 0) then
           CriaNivelPRODUTO_COMP(Node)
        else if ((PDadosDoNodo(Node.Data)^.Tipo = 'Fase') or (PDadosDoNodo(Node.Data)^.Tipo = 'Insumo')) and (Node.Count = 0) then
           CriaNivelATIVIDADES(Node)
        else if ((PDadosDoNodo(Node.Data)^.Tipo = 'Atividade') or (PDadosDoNodo(Node.Data)^.Tipo = 'Insumo')) and (Node.Count = 0) then
           CriaNivelDADOS_ATIVIDADES(Node);
        if chkDetalhe.Checked and not AutoExand and (UltimoDetalhe <> IntToStr(Node.AbsoluteIndex)) then
           begin
             VerDetalhe(Node);
             UltimoDetalhe := IntToStr(Node.AbsoluteIndex);
           end;
     end;
end;

procedure TFormCadastroProdutoParaProducao.VerDetalhe(Nodo : TTreeNode);
begin
  rchDetalhe.Clear;
  if (PDadosDoNodo(Nodo.Data)^.Tipo = 'Insumo') then
     begin
        IncTextForm(rchDetalhe, '<[STYLE FSBOLD /STYLE] [COLOR clNavy /COLOR]>Produto: ' + PDadosDoNodo(Nodo.Data)^.Cod + ' - ' + PDadosDoNodo(Nodo.Data)^.Produto +
                                Char(13) + '<[STYLE fsBold, fsItalic /STYLE] [COLOR clBlack /COLOR]> Posição Estoque ' + Char(13) + '<$;');
        if (PDadosDoNodo(Nodo.Data)^.EstSaldo < PDadosDoNodo(Nodo.Data)^.NecessLote) then
           IncTextForm(rchDetalhe,'<[STYLE fsUnderLine /STYLE] [COLOR clRed /COLOR]>Saldo: ' + FormatFloat('#,##0.00', PDadosDoNodo(Nodo.Data)^.EstSaldo) + Char(13) + '<$;>')
        else
           IncTextForm(rchDetalhe,'<>Saldo: ' + FormatFloat('#,##0.00', PDadosDoNodo(Nodo.Data)^.EstSaldo) + Char(13) + '<$;');
     end
  else if (PDadosDoNodo(Nodo.Data)^.Tipo = 'Produto') then
     begin
        IncTextForm(rchDetalhe, '<[STYLE FSBOLD /STYLE] [COLOR clNavy /COLOR]>Produto: ' + PDadosDoNodo(Nodo.Data)^.Cod + ' - ' + PDadosDoNodo(Nodo.Data)^.Produto +
                                Char(13) + '<[STYLE  fsBold, fsItalic /STYLE] [COLOR clBlack /COLOR]>Posição Estoque ' + Char(13) + '<$;');
        if PDadosDoNodo(Nodo.Data)^.EstSaldo < PDadosDoNodo(Nodo.Data)^.NecessLote then
           begin
              IncTextForm(rchDetalhe, '<[STYLE fsUnderLine /STYLE] [COLOR clRed /COLOR]> Saldo: ' + FormatFloat('#,##0.00', PDadosDoNodo(Nodo.Data)^.EstSaldo) + Char(13) + '<$;>');
           end
        else
           IncTextForm(rchDetalhe, '<>Saldo: ' + FormatFloat('#,##0.00', PDadosDoNodo(Nodo.Data)^.EstSaldo) + Char(13) + '<$;>');
        SQLCount.Close;
        SQLCount.SQL.Text := 'select distinct PRODFILHOCOMP.PRODICODFILHO as ProdutoNeto, PRODNETO.PRODA60DESCR as ProdutoNetoNome, ' +
                             'sum(PRODFILHOCOMP.PRODN3DIMENTOTAL * COMP.PRODN3QTDE) as TotalDimensoes ' +
                             'from PRODUTOCOMPOSICAO COMP left outer join PRODUTO PRODFILHO on PRODFILHO.PRODICOD = COMP.PRODICODFILHO ' +
                             'left outer join PRODUTOCOMPOSICAO PRODFILHOCOMP on PRODFILHOCOMP.PRODICOD = PRODFILHO.PRODICOD ' +
                             'left outer join PRODUTO PRODNETO on PRODNETO.PRODICOD = PRODFILHOCOMP.PRODICODFILHO ' +
                             'where COMP.PRODICOD = ' + PDadosDoNodo(Nodo.Data)^.Cod + ' group by PRODFILHOCOMP.PRODICODFILHO, PRODNETO.PRODA60DESCR';
        SQLCount.Open;
        SQLCount.First;
        while not SQLCount.Eof do
           begin
              if SQLCount.FieldByName('ProdutoNetoNome').AsString <> '' then
              IncTextForm(rchDetalhe,'<[COLOR clNavy /COLOR]>Matéria Prima necessária: ' + SQLCount.FieldByName('ProdutoNeto').AsString + ' - ' + SQLCount.FieldByName('ProdutoNetoNome').AsString + Char(13) + '<$;>');
              SQLCount.Next;
           end;
     end
  else if (PDadosDoNodo(Nodo.Data)^.Tipo = 'Fase') then
     begin
        IncTextForm(rchDetalhe,'<[STYLE FSBOLD,FSITALIC /STYLE]> Fase: ' + PDadosDoNodo(Nodo.Data)^.Cod + '<$;>');
     end
  else if (PDadosDoNodo(Nodo.Data)^.Tipo = 'Atividade') then
     begin
        IncTextForm(rchDetalhe, '<[STYLE FSBOLD /STYLE] [COLOR clNavy /COLOR]>Atividade: ' + PDadosDoNodo(Nodo.Data)^.Cod + '<$;');
     end
  else if (PDadosDoNodo(Nodo.Data)^.Tipo = 'Func') then
     begin
        IncTextForm(rchDetalhe, '<[STYLE FSBOLD /STYLE] [COLOR clNavy /COLOR]>Funcionário: ' + PDadosDoNodo(Nodo.Data)^.Cod + '<$;');
     end
  else if (PDadosDoNodo(Nodo.Data)^.Tipo = 'Recu') then
     begin
        IncTextForm(rchDetalhe, '<[STYLE FSBOLD /STYLE] [COLOR clNavy /COLOR]>Recurso: ' + PDadosDoNodo(Nodo.Data)^.Cod + '<$;');
     end
  else if (PDadosDoNodo(Nodo.Data)^.Tipo = 'Cent') then
     begin
        IncTextForm(rchDetalhe, '<[STYLE FSBOLD /STYLE] [COLOR clNavy /COLOR]>Centro de Custo: ' + PDadosDoNodo(Nodo.Data)^.Cod + '<$;');
     end
  else if (PDadosDoNodo(Nodo.Data)^.Tipo = 'Equi') then
     begin
        IncTextForm(rchDetalhe, '<[STYLE FSBOLD /STYLE] [COLOR clNavy /COLOR]>Equipamento: ' + PDadosDoNodo(Nodo.Data)^.Cod + '<$;');
     end;
end;

function EstiloTexto(Estilo : String) : TFontStyles ;
begin
    Result := [];
    if Pos(UpperCase('fsBold'), UpperCase(Estilo)) > 0 then
       Result := [fsBold];
    if Pos(UpperCase('fsItalic'), UpperCase(Estilo)) > 0 then
       Result := Result + [fsItalic];
    if Pos(UpperCase('fsUnderline'), UpperCase(Estilo)) > 0 then
       Result := Result + [fsUnderline];
end;

procedure TFormCadastroProdutoParaProducao.IncTextForm(RichEdit : TRxRichEdit; Texto : String);
Var I, PosInicial, PosFinal : Integer;
    PosInicialTEXTO, PosFinalTEXTO, Posicao : Integer;
Label Inicio;
begin
    PosInicialTEXTO := 0;
    PosFinalTEXTO   := 0;
    PosInicial      := 0;
    PosFinal        := 0;
    Posicao := 0;
    Inicio:
    for I := Posicao to Length(Texto) do
      begin
         if Texto[I - 1] + Texto[I] = '$;' then
            Exit;
         if Texto[I] = '<' then
            begin
               if PosInicialTEXTO <> 0 then
                  PosFinalTEXTO := I;
               PosInicial := I;
            end;
         if Texto[I] = '>' then
            PosFinal   := I;
         if PosInicial < PosFinal then
            begin
              mmTEMP.Lines.Add(Copy(Texto, PosInicial, PosFinal - (PosInicial - 1)));
              PosInicialTEXTO := PosFinal;
              PosInicial := 0;
              PosFinal   := 0;
            end;

         if PosInicialTEXTO < PosFinalTEXTO then
            begin
              RichTEMP.Text      := Copy(Texto, PosInicialTEXTO + 1, PosFinalTEXTO - (PosInicialTEXTO + 1));
              RichTEMP.SelStart  := 0;
              RichTEMP.SelLength := Length(RichTEMP.Text);
              if Trim(Copy(mmTEMP.Text, Pos('[SIZE',mmTEMP.Lines.Text) + 5, Pos('/SIZE]',mmTEMP.Lines.Text) - Pos('[SIZE',mmTEMP.Lines.Text) - 5)) <> '' then
                 RichTEMP.SelAttributes.Size  := StrToInt(Trim(Copy(mmTEMP.Text, Pos('[SIZE',mmTEMP.Lines.Text) + 5, Pos('/SIZE]',mmTEMP.Lines.Text) - Pos('[SIZE',mmTEMP.Lines.Text) - 5)))
              else
                 RichTEMP.SelAttributes.Size  := 8;
              if Trim(Copy(mmTEMP.Text, Pos('[COLOR',mmTEMP.Lines.Text) + 6, Pos('/COLOR]',mmTEMP.Lines.Text) - Pos('[COLOR',mmTEMP.Lines.Text) - 6)) <> '' then
                RichTEMP.SelAttributes.Color := StringToColor(Trim(Copy(mmTEMP.Text, Pos('[COLOR',mmTEMP.Lines.Text) + 6, Pos('/COLOR]',mmTEMP.Lines.Text) - Pos('[COLOR',mmTEMP.Lines.Text) - 6)))
              else
                RichTEMP.SelAttributes.Color := clBlack;
              if Copy(mmTEMP.Text, Pos('[STYLE',mmTEMP.Lines.Text) + 6, Pos('/STYLE]',mmTEMP.Lines.Text) - Pos('[STYLE',mmTEMP.Lines.Text) - 6) <> '' then
                 RichTEMP.SelAttributes.Style := EstiloTexto(Copy(mmTEMP.Text, Pos('[STYLE',mmTEMP.Lines.Text) + 6, Pos('/STYLE]',mmTEMP.Lines.Text) - Pos('[STYLE',mmTEMP.Lines.Text) - 6))
              else
                 RichTEMP.SelAttributes.Style := [];
              RichTEMP.CopyToClipboard;
              RichEdit.SelStart  := Length(RichEdit.Text);
              RichEdit.SelLength := 0;
              RichEdit.ReadOnly  := False;
              RichEdit.PasteFromClipboard;
              RichEdit.ReadOnly  := True;
              Posicao := PosFinalTEXTO;
              PosInicialTEXTO    := 0;
              PosFinalTEXTO   := 0;
              mmTEMP.Clear;
              Break;
            end;
      end;
    goto Inicio;
end;

procedure TFormCadastroProdutoParaProducao.SQLTemplatePRODICODChange(
  Sender: TField);
begin
  inherited;
  ArvoreRoot;
end;

procedure TFormCadastroProdutoParaProducao.ArvoreOPCustomDrawItem(
  Sender: TCustomTreeView; Node: TTreeNode; State: TCustomDrawState;
  var DefaultDraw: Boolean);
Var Rect : TRect;
begin
  inherited;
  Rect := Node.DisplayRect(True);
  ArvoreOP.Canvas.Font.Color := PDadosDoNodo(Node.Data)^.CorTexto;
  if PDadosDoNodo(Node.Data)^.CorTexto = clRed  then
     ImageListArvore.Draw(ArvoreOP.Canvas, Rect.Right + 10, Rect.Top, 14);
  if cdsSelected in State then
     ArvoreOP.Canvas.Brush.Color := $00FBE7DB;

end;

procedure TFormCadastroProdutoParaProducao.ExpandirTudo(ApartirSelecao: Boolean; Texto :String);
Var lblLegendaAntiga : String;
    NivelInicial, NodoSelecionado : Integer;
begin
   AutoExand          := True;
   lblLegendaAntiga   := lblLegenda.Caption;
   lblLegenda.Caption := Texto;
   lblLegenda.Tag     := 1;
   NivelInicial       := ArvoreOP.Selected.Level;
   NodoSelecionado    := ArvoreOP.Selected.AbsoluteIndex;

   if not ApartirSelecao then
      ArvoreOP.Select(ArvoreOP.Items.Item[0]);

   PararExpancao := False;
   OutroNivel    := False;
   while not (ArvoreOP.Selected.GetNext = Nil) or ArvoreOP.Selected.HasChildren and
         not PararExpancao do
      begin
         if (ArvoreOP.Selected.Level <= NivelInicial) and OutroNivel and ApartirSelecao then
            Break;
         if (ArvoreOP.Selected.Level = NivelInicial) then
            OutroNivel := True;
         ArvoreOPChange(ArvoreOP, ArvoreOP.Selected);
         ArvoreOP.Selected.Expand(True);
         ArvoreOP.Select(ArvoreOP.Selected.GetNext);
         Application.ProcessMessages;
      end;
   lblLegenda.Caption := lblLegendaAntiga;
   lblLegenda.Tag     := 0;
    if not ApartirSelecao then
       ArvoreOP.Select(ArvoreOP.Items.Item[0])
    else
       ArvoreOP.Select(ArvoreOP.Items.Item[NodoSelecionado]);
   AutoExand          := False;
end;

procedure TFormCadastroProdutoParaProducao.mnExpandirdaSelecaoClick(
  Sender: TObject);
begin
  inherited;
  ExpandirTudo(True, 'Auto Expandindo');
end;

procedure TFormCadastroProdutoParaProducao.mnExpandirTudoClick(
  Sender: TObject);
begin
  inherited;
  ExpandirTudo(False, 'Auto Expandindo');
end;

procedure TFormCadastroProdutoParaProducao.mnAtualizarClick(
  Sender: TObject);
begin
  inherited;
  ArvoreRoot;
end;

procedure TFormCadastroProdutoParaProducao.lblLegendaClick(
  Sender: TObject);
begin
  inherited;
  if lblLegenda.Tag = 0 then
     begin
        pnLegenda.Visible := not pnLegenda.Visible;
        if pnLegenda.Visible then
           lblLegenda.Caption := '> Legenda  '
        else
           lblLegenda.Caption := '< Legenda  ';
     end
  else
     PararExpancao := True;
end;

procedure TFormCadastroProdutoParaProducao.chkDetalheClick(
  Sender: TObject);
begin
  inherited;
  if not AutoExand then
     begin
        if chkDetalhe.Checked then
           rchDetalhe.Width := Round(pnGeral.Width div 2)
        else
           rchDetalhe.Width := 0;
        ArvoreOPChange(ArvoreOP, ArvoreOP.Selected);
     end;
end;

procedure RefazTabela(Tabela : TTable; Abrir: Boolean);
begin
    try
       Tabela.Close;
       Tabela.DeleteTable;
       Tabela.CreateTable;
    except
       Tabela.CreateTable;
    end;
    if Abrir then
       Tabela.Open;
end;

procedure TFormCadastroProdutoParaProducao.mnImprimirFichaTecnicaDetalheClick(
  Sender: TObject);
begin
  inherited;
  SQLFichaTecComposicao.Close;
  SQLFichaTecComposicao.MacroByName('MFiltro').AsString := ' PRODUTORAIZ.PRODICOD = ' + SQLTemplatePRODICOD.AsString;
  SQLFichaTecComposicao.Open;

  RefazTabela(tblFichaTecComposicao, False);

  BatchMove.Destination := tblFichaTecComposicao;
  BatchMove.Source      := SQLFichaTecComposicao;
  BatchMove.Execute;

  SQLFichaTecFasesAtividades.Close;
  SQLFichaTecFasesAtividades.MacroByName('MFiltro').AsString := ' PRODUTORAIZ.PRODICOD = ' + SQLTemplatePRODICOD.AsString;
  SQLFichaTecFasesAtividades.Open;

  RefazTabela(tblFichaTecFasesAtividades, False);

  BatchMove.Destination := tblFichaTecFasesAtividades;
  BatchMove.Source      := SQLFichaTecFasesAtividades;
  BatchMove.Execute;

  Report.ReportTitle := 'Ficha Técnica de Produto';
  Report.WindowStyle.Title := 'Ficha Técnica de Produto';
  Report.ReportName  := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\FichaTecnicaProdutoParaProducao.rpt';

  Report.Formulas.Retrieve;
  Report.Formulas.Name := 'Empresa';
  Report.Formulas.Formula.Text := '"' + EmpresaAtualNome + '"';

  Report.Execute;
end;

procedure TFormCadastroProdutoParaProducao.SQLProdutoCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  case SQLProdutoPRODCTIPO.AsString[1] of
      'P' : SQLProdutoTipoProduto.AsString := 'Produto';
      'S' : SQLProdutoTipoProduto.AsString := 'Semi-Acabado';
  end;
end;

procedure TFormCadastroProdutoParaProducao.DBLProdutoChange(
  Sender: TObject);
begin
  inherited;
  if DBLProduto.KeyValue = '' then
     ArvoreOP.Items.Clear;
end;

function TFormCadastroProdutoParaProducao.SemiacabadoDup(CodSemiAcabado : Integer) : boolean;
Var I : Integer;
begin
    for I := 0 to Semiacabados.Count - 1 do
       begin
          if Semiacabados.Strings[I] = IntToStr(CodSemiAcabado) then
             begin
                Result := True;
                Break;
             end
          else
             begin
                Result := False;
             end;
       end;
    Semiacabados.Add(IntToStr(CodSemiAcabado));
end;

procedure TFormCadastroProdutoParaProducao.VerificaDetalhe;
Var Field : String;
begin
  Semiacabados := TStringList.Create;  //Verifica se o semiacabado não ta duplicado e procegue

  SQLResumo.Close;
  SQLResumo.Open;
  SQLResumo.First;

  while not SQLResumo.Eof do
     begin
       if not tblRelatorioResumo.Active then tblRelatorioResumo.Active := True;
       if SQLResumo.FindField('Tipo').AsString = 'M' then
          begin
             if tblRelatorioResumo.Locate('InsumoCod', SQLResumo.Fields.Fields[1].AsInteger, [loCaseInsensitive]) then
                begin
                   tblRelatorioResumo.Edit;
                   tblRelatorioResumoInsumoQdteTotal.AsFloat := tblRelatorioResumoInsumoQdteTotal.AsFloat + SQLResumo.Fields.Fields[4].AsFloat;     //Qtde
                end
             else
                begin
                   tblRelatorioResumo.Append;
                   tblRelatorioResumoInsumoQdteTotal.AsFloat := SQLResumo.Fields.Fields[4].AsFloat;     //Total
                end;
             tblRelatorioResumoInsumoCod.AsInteger     := SQLResumo.Fields.Fields[1].AsInteger;   //Código
             tblRelatorioResumoInsumoNome.AsString     := SQLResumo.Fields.Fields[2].AsString;    //Nome
             tblRelatorioResumoInsumoQtde.AsFloat      := SQLResumo.Fields.Fields[3].AsFloat;     //Qtde
             tblRelatorioResumoInsumoUnidade.AsString  := SQLLocate('UNIDADE', 'UNIDICOD', 'UNIDA5DESCR', SQLLocate('PRODUTO', 'PRODICOD', 'UNIDICOD', SQLResumo.Fields.Fields[1].AsString));
             DM.ProcuraRegistro('PRODUTOSALDO',['PRODICOD','EMPRICOD'],[SQLResumo.Fields.Fields[1].AsString, IntToStr(EmpresaCorrente)], 2);
             tblRelatorioResumoInsumoEstoque.AsVariant := DM.SQLTemplate.FieldByName('PSLDN3QTDE').AsVariant;
             tblRelatorioResumo.Post;
          end;

       if SQLResumo.FindField('Tipo').AsString = 'S' then
          begin
             if not SemiacabadoDup(SQLResumo.Fields.Fields[1].AsInteger) then
                begin
                   tblRelatorioResumo.Append;
                   tblRelatorioResumoSemiAcabadoCod.AsInteger     := SQLResumo.Fields.Fields[1].AsInteger;
                   tblRelatorioResumoSemiAcabadoNome.AsString     := SQLResumo.Fields.Fields[2].AsString;
                   tblRelatorioResumoSemiAcabadoQtde.AsFloat      := SQLResumo.Fields.Fields[3].AsFloat;
                   tblRelatorioResumoSemiAcabadoUnidade.AsString  := SQLLocate('UNIDADE', 'UNIDICOD', 'UNIDA5DESCR', SQLLocate('PRODUTO', 'PRODICOD', 'UNIDICOD', SQLResumo.Fields.Fields[1].AsString));
                   tblRelatorioResumoSemiAcabadoQdteTotal.AsFloat := SQLResumo.Fields.Fields[3].AsFloat;
                   DM.ProcuraRegistro('PRODUTOSALDO',['PRODICOD','EMPRICOD'],[SQLResumo.Fields.Fields[1].AsString, IntToStr(EmpresaCorrente)], 2);
                   tblRelatorioResumoSemiAcabadoEstoque.AsVariant := DM.SQLTemplate.FieldByName('PSLDN3QTDE').AsVariant;
                   tblRelatorioResumo.Post;
                end;
          end;
       SQLResumo.Next;
     end;
  Semiacabados.Free;
end;

procedure TFormCadastroProdutoParaProducao.mnImprimirFichaTecnicaResumidaClick(
  Sender: TObject);
begin
  inherited;
  SQLFichaTecResumida.Close;
  SQLFichaTecResumida.MacroByName('MFiltro').AsString := ' PRODUTORAIZ.PRODICOD = ' + SQLTemplatePRODICOD.AsString;
  SQLFichaTecResumida.Open;

  RefazTabela(tblFichaDetalhadaTemp, False);

  BatchMove.Destination := tblFichaDetalhadaTemp;
  BatchMove.Source      := SQLFichaTecResumida;
  BatchMove.Execute;

  RefazTabela(tblRelatorioResumo, False);

  VerificaDetalhe;

  SQLFichaTecFasesAtividades.Close;
  SQLFichaTecFasesAtividades.MacroByName('MFiltro').AsString := ' PRODUTORAIZ.PRODICOD = ' + SQLTemplatePRODICOD.AsString;
  SQLFichaTecFasesAtividades.Open;

  RefazTabela(tblFichaTecFasesAtividades, False);

  BatchMove.Destination := tblFichaTecFasesAtividades;
  BatchMove.Source      := SQLFichaTecFasesAtividades;
  BatchMove.Execute;

  Report.ReportTitle := 'Ficha Técnica de Produto [Resumida]';
  Report.WindowStyle.Title := 'Ficha Técnica de Produto [Resumida]';
  Report.ReportName  := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\FichaTecnicaProdutoParaProducaoResumida.rpt';

  Report.Formulas.Retrieve;
  Report.Formulas.Name := 'Empresa';
  Report.Formulas.Formula.Text := '"' + EmpresaAtualNome + '"';

  Report.Execute;
end;

procedure TFormCadastroProdutoParaProducao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DSMasterSys   := Nil;
  DataSetLookup := Nil;
end;

end.
