unit CadastroOrdemProducao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, ToolEdit, RXDBCtrl, DBCtrls, DB, DBTables,
  DBActns, ActnList, ImgList, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, ConerBtn, RxRichEd,
  RxDBComb, Placemnt, RxLookup;

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

  TFormCadastroOrdemProducao = class(TFormCadastroTEMPLATE)
    SQLTemplateORPRA13ID: TStringField;
    SQLTemplateORPRICOD: TIntegerField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateORPRNQTDETOTAL: TBCDField;
    SQLTemplateORPRDINICIO: TDateTimeField;
    SQLTemplateORPRDPREVISAO: TDateTimeField;
    SQLTemplateORPRDTERMINO: TDateTimeField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    lnlInicio: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dbeInicio: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    DBDateEdit3: TDBDateEdit;
    pnCorpoArqvore: TPanel;
    ImageListArvore: TImageList;
    SQLSelectDados: TRxQuery;
    DBGridLotes: TDBGrid;
    SQLOPItem: TRxQuery;
    dsSQLOPItem: TDataSource;
    Splitter1: TSplitter;
    SQLOPItemPRLTA13ID: TStringField;
    SQLFilhosSaldo: TRxQuery;
    lblLegenda: TLabel;
    pnLegenda: TPanel;
    shpLegendaProduto: TShape;
    lblLegandaProduto: TLabel;
    lblLegendaProdNegativo: TLabel;
    ImgLegendaProdNegativo: TImage;
    PopupMenuArvore: TPopupMenu;
    mnAcessarCadastro: TMenuItem;
    mnExpandirdaSelecao: TMenuItem;
    mnAtualizar: TMenuItem;
    N1: TMenuItem;
    mnExpandirTudo: TMenuItem;
    rchDetalhe: TRxRichEdit;
    pltDivisao: TSplitter;
    chkDetalhe: TCheckBox;
    SQLTemplateORPRCSTATUS: TStringField;
    RxDBComboBox1: TRxDBComboBox;
    Label3: TLabel;
    pnTreeView: TPanel;
    ArvoreOP: TTreeView;
    RichTemp: TRxRichEdit;
    FormStorage: TFormStorage;
    SQLConfigOP: TRxQuery;
    SQLEstoqueGeralOP: TRxQuery;
    tblTempEstoqueOP: TTable;
    SQLEstoqueGeralOPPROD: TIntegerField;
    SQLEstoqueGeralOPQTDE: TFloatField;
    tblTempEstoqueOPPROD: TIntegerField;
    tblTempEstoqueOPQTDE: TFloatField;
    BatchMove: TBatchMove;
    SQLCountEstoque: TRxQuery;
    SQLOPItemPRLTA60DESCR: TStringField;
    SQLOPItemPRLTN2QTDE: TBCDField;
    SQLOPItemPRODA60DESCR: TStringField;
    SQLOPItemPRODICOD: TIntegerField;
    dtpInicio: TDateTimePicker;
    dtpPrevTermino: TDateTimePicker;
    dtpTermino: TDateTimePicker;
    SQLOPItemORPRISEQUENCIA: TIntegerField;
    tblVericaEstoque: TTable;
    tblVericaEstoqueCod: TIntegerField;
    tblVericaEstoqueDescricao: TStringField;
    tblVericaEstoqueQtde: TFloatField;
    tblVericaEstoqueNecessario: TFloatField;
    SQLOPItemPRODN3CAPACEMBAL: TBCDField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateAfterScroll(DataSet: TDataSet);
    procedure ArvoreOPChange(Sender: TObject; Node: TTreeNode);
    procedure ArvoreRoot;
    procedure CriaNivelRoot(Node: TTreeNode);
    procedure CriaNivelPRODUTO(Node: TTreeNode);
    procedure CriaNivelPRODUTO_COMP(Node: TTreeNode);
    procedure CriaNivelATIVIDADES(Node: TTreeNode);
    procedure CriaNivelDADOS_ATIVIDADES(Node: TTreeNode);
    procedure ArvoreOPCustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure ArvoreOPMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblLegendaClick(Sender: TObject);
    procedure mnExpandirdaSelecaoClick(Sender: TObject);
    procedure mnAtualizarClick(Sender: TObject);
    procedure mnExpandirTudoClick(Sender: TObject);
    procedure chkDetalheClick(Sender: TObject);
    procedure VerDetalhe(Nodo : TTreeNode);
    Procedure IncTextForm(RichEdit : TRxRichEdit; Texto : String; Formato : TFontStyles; Cor : TColor);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure ExpandirTudo(ApartirSelecao: Boolean; Texto :String);
    procedure FazBarra(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState; Valor, Total : Double; Cor: TColor);
    procedure SQLTemplateORPRDPREVISAOChange(Sender: TField);
    function  IniciarProducao(Nivel: Integer) : Boolean;
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure MovimentaEstoque;
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure SQLTemplateORPRDINICIOChange(Sender: TField);
    procedure dtpInicioChange(Sender: TObject);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure SQLTemplateORPRDTERMINOChange(Sender: TField);
    procedure dtpPrevTerminoChange(Sender: TObject);
    procedure dtpTerminoChange(Sender: TObject);
    procedure DBGridLotesDblClick(Sender: TObject);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure CriaNivelPedido(Node: TTreeNode);
  private
    { Private declarations }
    PararExpancao, AtualizaTabTemp, AutoExand, OutroNivel : Boolean;
    UltimoDetalhe, StatusAnterior : String;
    TempoTotal   : Double;
  public
    { Public declarations }
  end;

var
  FormCadastroOrdemProducao: TFormCadastroOrdemProducao;
  NovoNodo, NovoNodoPai: TTreeNode;
  DadosDoNodo  : PDadosDoNodo;
  TipoOutrosDados : array[10..13] of string = ('Func','Recu','Equi','Cent');
  EstoqueOK : Boolean;
implementation

uses FormResources, VarSYS, CadastroOrdemProducaoItem, DataModulo,
  UnitLibrary, CadastroOrdemProducaoPedidos, WaitWindow;

{$R *.dfm}

procedure TFormCadastroOrdemProducao.FazBarra(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState; Valor, Total : Double; Cor: TColor);
Var TotalBarra : Integer;
begin
    Valor := (Valor / Total);
    TotalBarra := Round(Valor * (Rect.Right - Rect.Left));
    (Sender as TDBGrid).Canvas.Brush.Color := Cor;
    (Sender as TDBGrid).Canvas.Rectangle(Rect.Left, Rect.Top, Rect.Left + TotalBarra, Rect.Bottom);
    (Sender as TDBGrid).Canvas.Brush.Style := bsClear;
    (Sender as TDBGrid).Canvas.TextOut(Round((Rect.Left + Rect.Right)/2), Rect.Top, FormatFloat('#,##0.00' , (Valor * 100))+'%');
end;

procedure TFormCadastroOrdemProducao.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'ORDEMPRODUCAO';
end;

procedure TFormCadastroOrdemProducao.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  StatusAnterior                    := 'I';
  SQLTemplateEMPRICOD.AsInteger     := EmpresaCorrente;
  SQLTemplateORPRNQTDETOTAL.AsFloat := 0;
  SQLTemplateORPRCSTATUS.AsString   := 'A';
  SQLTemplateORPRDINICIO.AsDateTime := Date;
end;

procedure TFormCadastroOrdemProducao.SQLTemplateAfterScroll(
  DataSet: TDataSet);
begin
  ArvoreRoot;
  dtpInicio.DateTime      := SQLTemplateORPRDINICIO.AsDateTime;
  dtpPrevTermino.DateTime := SQLTemplateORPRDPREVISAO.AsDateTime;
  dtpTermino.DateTime     := SQLTemplateORPRDTERMINO.AsDateTime;
end;

procedure TFormCadastroOrdemProducao.ArvoreRoot;
begin
  inherited;
  EstoqueOK := True;

  SQLOPItem.Close;
  SQLOPItem.MacroByName('MFiltro').AsString := ' ORPRA13ID = "' + SQLTemplateORPRA13ID.AsString + '"';
  SQLOPItem.Open;

  ArvoreOP.Items.Clear;
  New(DadosDoNodo);
  DadosDoNodo^.Cod        := SQLTemplateORPRA13ID.AsString;
  DadosDoNodo^.Produto    := 'Root';
  DadosDoNodo^.Tipo       := 'Root';
  DadosDoNodo^.CorTexto   := clBlack;
  NovoNodo := ArvoreOP.Items.AddNode(Nil, Nil, 'Ordem de Produção ' + SQLTemplateORPRA13ID.AsString, DadosDoNodo, naAddChild);
  NovoNodo.SelectedIndex  := 6;
  NovoNodo.ImageIndex     := 6;
  ArvoreOP.Select(ArvoreOP.Items.Item[0]);
  ArvoreOPChange(ArvoreOP, ArvoreOP.Selected);
end;

procedure TFormCadastroOrdemProducao.CriaNivelRoot(Node: TTreeNode);
begin
   SQLSelectDados.Close;
   SQLSelectDados.SQL.Text := 'select PRODUCAOLOTE.* from ORDEMPRODUCAOITEM ' +
                              'left outer join PRODUCAOLOTE on PRODUCAOLOTE.PRLTA13ID = ORDEMPRODUCAOITEM.PRLTA13ID ' +
                              'where ORDEMPRODUCAOITEM.ORPRA13ID = "' + SQLTemplateORPRA13ID.AsString + '"';
   SQLSelectDados.Open;
   SQLSelectDados.First;
   while not SQLSelectDados.Eof do
      begin
         New(DadosDoNodo);
         DadosDoNodo^.Cod        := SQLSelectDados.FieldByName('PRLTA13ID').AsString;
         DadosDoNodo^.Produto    := SQLSelectDados.FieldByName('PRLTA60DESCR').AsString;
         DadosDoNodo^.Tipo       := 'Lote';
         DadosDoNodo^.CorTexto   := clBlack;
         DadosDoNodo^.QtdePUn    := 1;
         DadosDoNodo^.NecessLote := SQLSelectDados.FieldByName('PRLTN2QTDE').AsFloat;
         NovoNodo := ArvoreOP.Items.AddNode(Nil, Node, 'Lote ' + SQLSelectDados.FieldByName('PRLTA60DESCR').AsString, DadosDoNodo, naAddChild);
         NovoNodo.SelectedIndex  := 1;
         NovoNodo.ImageIndex     := 7;
         NovoNodo.HasChildren    := True;
         SQLSelectDados.Next;
      end;
end;

procedure TFormCadastroOrdemProducao.CriaNivelPedido(Node: TTreeNode);
begin
   SQLSelectDados.Close;
   SQLSelectDados.SQL.Text := 'select PRODUTO.PRODICOD as CodProduto, PRODUTO.PRODA60DESCR as DescrProduto, ' +
                              'PEDIDOVENDAITEM.PVITN3QUANT as QtdePedido ' +
                              'from PEDIDOVENDAITEM ' +
                              'left outer join PRODUTO on PRODUTO.PRODICOD = PEDIDOVENDAITEM.PRODICOD ' +
                              'where PEDIDOVENDAITEM.PDVDA13ID = "' + PDadosDoNodo(Node.Data)^.Cod + '"';
   SQLSelectDados.Open;
   SQLSelectDados.First;
   while not SQLSelectDados.Eof do
      begin
         New(DadosDoNodo);
         DadosDoNodo^.Cod        := SQLSelectDados.FieldByName('CodProduto').AsString;
         DadosDoNodo^.Produto    := SQLSelectDados.FieldByName('DescrProduto').AsString;
         DadosDoNodo^.Tipo       := 'Produto';
         DadosDoNodo^.CorTexto   := clBlack;
         DadosDoNodo^.QtdePUn    := 0;
         DadosDoNodo^.NecessLote := 0;
         NovoNodo := ArvoreOP.Items.AddNode(Nil, Node, 'Produto ' + SQLSelectDados.FieldByName('CodProduto').AsString + ' - ' + SQLSelectDados.FieldByName('DescrProduto').AsString, DadosDoNodo, naAddChild);
         NovoNodo.SelectedIndex  := 1;
         NovoNodo.ImageIndex     := 2;

         //Verifica se tem Composição;
         SQLFilhosSaldo.Close;
         SQLFilhosSaldo.SQL.Text := 'select Count(*) as Total from PRODUTOCOMPOSICAO where PRODICOD = ' + SQLSelectDados.FieldByName('CodProduto').AsString;
         SQLFilhosSaldo.Open;

         if SQLFilhosSaldo.FieldByName('Total').AsFloat > 0 then
            NovoNodo.HasChildren := True;

         //Verifica Saldo
         SQLFilhosSaldo.Close;
         SQLFilhosSaldo.SQL.Text := 'select * from PRODUTOSALDO where PRODICOD = ' + SQLSelectDados.FieldByName('CodProduto').AsString  + ' and EMPRICOD = ' + IntToStr(EmpresaCorrente);
         SQLFilhosSaldo.Open;

         if not SQLFilhosSaldo.FieldByName('PSLDN3QTDE').IsNull then
            DadosDoNodo^.EstSaldo := SQLFilhosSaldo.FieldByName('PSLDN3QTDE').AsFloat
         else
            DadosDoNodo^.EstSaldo := 0;

         SQLFilhosSaldo.Close;

         SQLSelectDados.Next;
      end;
   SQLSelectDados.Close;
end;

procedure TFormCadastroOrdemProducao.CriaNivelPRODUTO(Node: TTreeNode);
begin
   SQLSelectDados.Close;
   SQLSelectDados.SQL.Text := 'select PRODUTO.PRODICOD, PRODUTO.PRODA60DESCR, PRODUCAOLOTE.PRLTN2QTDE from PRODUCAOLOTE ' +
                              'left outer join PRODUTO on PRODUTO.PRODICOD = PRODUCAOLOTE.PRODICOD ' +
                              'where PRODUCAOLOTE.PRLTA13ID = "' + PDadosDoNodo(Node.Data)^.Cod + '"';
   SQLSelectDados.Open;
   SQLSelectDados.First;
   while not SQLSelectDados.Eof do
      begin
         New(DadosDoNodo);
         DadosDoNodo^.Cod        := SQLSelectDados.FieldByName('PRODICOD').AsString;
         DadosDoNodo^.Produto    := SQLSelectDados.FieldByName('PRODA60DESCR').AsString;
         DadosDoNodo^.Tipo       := 'Produto';
         DadosDoNodo^.NecessLote := SQLSelectDados.FieldByName('PRLTN2QTDE').AsFloat;
         DadosDoNodo^.QtdePUn    := 1;
         DadosDoNodo^.CorTexto   := clNavy;
         NovoNodo := ArvoreOP.Items.AddNode(Nil, Node, 'Produto: '    + SQLSelectDados.FieldByName('PRODA60DESCR').AsString + '  ' +
                                                       'Quantidade: ' + SQLSelectDados.FieldByName('PRLTN2QTDE').AsString,
                                                       DadosDoNodo, naAddChild);
         NovoNodo.SelectedIndex  := 1;
         NovoNodo.ImageIndex     := 2;

         //Verifica se tem Composição;
         SQLFilhosSaldo.Close;
         SQLFilhosSaldo.SQL.Text := 'select Count(*) as Total from PRODUTOCOMPOSICAO where PRODICOD = ' + SQLSelectDados.FieldByName('PRODICOD').AsString;
         SQLFilhosSaldo.Open;
         if SQLFilhosSaldo.FieldByName('Total').AsFloat > 0 then
            NovoNodo.HasChildren := True;

         //Verifica Saldo
         SQLFilhosSaldo.Close;
         SQLFilhosSaldo.SQL.Text := 'select * from PRODUTOSALDO where PRODICOD = ' + SQLSelectDados.FieldByName('PRODICOD').AsString  + ' and EMPRICOD = ' + IntToStr(EmpresaCorrente);
         SQLFilhosSaldo.Open;

         if not SQLFilhosSaldo.FieldByName('PSLDN3QTDE').IsNull then
            DadosDoNodo^.EstSaldo := SQLFilhosSaldo.FieldByName('PSLDN3QTDE').AsFloat
         else
            DadosDoNodo^.EstSaldo := 0;

         SQLFilhosSaldo.Close;

         SQLSelectDados.Next;
      end;

   SQLSelectDados.Close;
   SQLSelectDados.SQL.Text := 'select PEDIDOVENDA.PDVDA13ID, CLIENTE.CLIEA60RAZAOSOC, ' +
                              'PEDIDOVENDA.PDVDDEMISSAO, PEDIDOVENDA.USUAA60LOGIN ' +
                              'from ORDEMPRODUCITEMPED ' +
                              'left outer join PEDIDOVENDA on PEDIDOVENDA.PDVDA13ID = ORDEMPRODUCITEMPED.PDVDA13ID ' +
                              'left outer join CLIENTE on CLIENTE.CLIEA13ID = PEDIDOVENDA.CLIEA13ID ' +
                              'where ORDEMPRODUCITEMPED.ORPRA13ID = "' + SQLTemplateORPRA13ID.AsString + '" and ' +
                              'ORDEMPRODUCITEMPED.PRLTA13ID = "' + PDadosDoNodo(Node.Data)^.Cod + '"';
   SQLSelectDados.Open;
   SQLSelectDados.First;
   while not SQLSelectDados.Eof do
      begin
         New(DadosDoNodo);
         DadosDoNodo^.Cod        := SQLSelectDados.FieldByName('PDVDA13ID').AsString;
         DadosDoNodo^.Produto    := SQLSelectDados.FieldByName('CLIEA60RAZAOSOC').AsString;
         DadosDoNodo^.Tipo       := 'Pedido';
         DadosDoNodo^.CorTexto   := clBlack;
         DadosDoNodo^.QtdePUn    := 0;
         DadosDoNodo^.NecessLote := 0;
         NovoNodo := ArvoreOP.Items.AddNode(Nil, Node, 'Pedido ' + SQLSelectDados.FieldByName('PDVDA13ID').AsString + ' - Cliente ' + SQLSelectDados.FieldByName('CLIEA60RAZAOSOC').AsString, DadosDoNodo, naAddChild);
         NovoNodo.SelectedIndex  := 1;
         NovoNodo.ImageIndex     := 15;
         NovoNodo.HasChildren    := True;
         SQLSelectDados.Next;
      end;
   SQLSelectDados.Close;
end;

procedure TFormCadastroOrdemProducao.CriaNivelPRODUTO_COMP(Node: TTreeNode);
begin
   //Isumos
   SQLSelectDados.Close;
   SQLSelectDados.SQL.Text := 'select PRODUTOCOMPOSICAO.PRODICODFILHO, PRODUTO.PRODA60DESCR, PRODUTO.PRODCTIPO from PRODUTOCOMPOSICAO ' +
                              'left outer join PRODUTO on PRODUTO.PRODICOD = PRODUTOCOMPOSICAO.PRODICODFILHO ' +
                              'where PRODUTOCOMPOSICAO.PRODICOD = ' + PDadosDoNodo(Node.Data)^.Cod;
   SQLSelectDados.Open;
   SQLSelectDados.First;
   while not SQLSelectDados.Eof do
      begin
         New(DadosDoNodo);
         DadosDoNodo^.Cod        := SQLSelectDados.FieldByName('PRODICODFILHO').AsString;
         DadosDoNodo^.Produto    := SQLSelectDados.FieldByName('PRODA60DESCR').AsString;
         DadosDoNodo^.Tipo       := 'Insumo';
         DadosDoNodo^.CorTexto   := clNavy;
         NovoNodo := ArvoreOP.Items.AddNode(Nil, Node, 'Componente ' + SQLSelectDados.FieldByName('PRODA60DESCR').AsString,
                                                       DadosDoNodo, naAddChild);
         NovoNodo.SelectedIndex  := 1;
         case SQLSelectDados.FieldByName('PRODCTIPO').AsString[1] of
            'M' : NovoNodo.ImageIndex := 3;
            'S' : NovoNodo.ImageIndex := 4;
            'P' : NovoNodo.ImageIndex := 2;
         end;
         //Verifica se tem Composição;
         SQLFilhosSaldo.Close;
         SQLFilhosSaldo.SQL.Text := 'select Count(*) as Total from PRODUTOCOMPOSICAO where PRODICOD = ' + SQLSelectDados.FieldByName('PRODICODFILHO').AsString;
         SQLFilhosSaldo.Open;
         if SQLFilhosSaldo.FieldByName('Total').AsInteger > 0 then
            NovoNodo.HasChildren := True;

         SQLFilhosSaldo.Close;
         SQLFilhosSaldo.SQL.Text := 'select * from PRODUTOCOMPOSICAO where PRODICOD = ' + PDadosDoNodo(Node.Data)^.Cod + ' and PRODICODFILHO = ' + DadosDoNodo^.Cod;
         SQLFilhosSaldo.Open;

         if PDadosDoNodo(Node.Data)^.Tipo = 'Produto' then
            DadosDoNodo^.QtdePUn    := SQLFilhosSaldo.FieldByName('PRODN3QTDE').AsFloat * StrToFloat(SQLLocate('PRODUTO', 'PRODICOD', 'PRODN3CAPACEMBAL', DadosDoNodo^.Cod))
         else
            DadosDoNodo^.QtdePUn    := SQLFilhosSaldo.FieldByName('PRODN3QTDE').AsFloat;

         DadosDoNodo^.NecessLote := PDadosDoNodo(Node.Data)^.NecessLote * DadosDoNodo^.QtdePUn;

         //Verifica Saldo
         SQLFilhosSaldo.Close;
         SQLFilhosSaldo.SQL.Text := 'select * from PRODUTOSALDO where PRODICOD = ' + SQLSelectDados.FieldByName('PRODICODFILHO').AsString + ' and EMPRICOD = ' + IntToStr(EmpresaCorrente);
         SQLFilhosSaldo.Open;
         if SQLFilhosSaldo.FieldByName('PSLDN3QTDE').AsFloat < DadosDoNodo^.NecessLote then
            begin
               if (SQLTemplateORPRCSTATUS.AsString <> 'P') or (StatusAnterior <> 'P') then
                  DadosDoNodo^.CorTexto   := clRed;
               EstoqueOK := False;
            end;

         if not SQLFilhosSaldo.FieldByName('PSLDN3QTDE').IsNull then
            DadosDoNodo^.EstSaldo := SQLFilhosSaldo.FieldByName('PSLDN3QTDE').AsFloat
         else
            DadosDoNodo^.EstSaldo := 0;

         if AtualizaTabTemp then
            begin
              if not tblVericaEstoque.Active then tblVericaEstoque.Open;
              tblVericaEstoque.Append;
              tblVericaEstoqueCod.AsString       := DadosDoNodo^.Cod;
              tblVericaEstoqueDescricao.AsString := DadosDoNodo^.Produto;
              tblVericaEstoqueQtde.AsFloat       := DadosDoNodo^.EstSaldo;
              tblVericaEstoqueNecessario.AsFloat := DadosDoNodo^.NecessLote;
              tblVericaEstoque.Post;
            end;

         SQLFilhosSaldo.Close;

         SQLSelectDados.Next;
      end;
   //Fases
   SQLSelectDados.Close;
   SQLSelectDados.SQL.Text := 'select PRODUCAOFASES.PRFAA30DESCR, PRODUCAOFASES.PRFAA13ID from PRODUCAOPRODUTOFASE ' +
                              'left outer join PRODUCAOFASES  on PRODUCAOFASES.PRFAA13ID = PRODUCAOPRODUTOFASE.PRFAA13ID ' +
                              'where PRODUCAOPRODUTOFASE.PRODICOD = ' + PDadosDoNodo(Node.Data)^.Cod;
   SQLSelectDados.Open;
   SQLSelectDados.First;
   while not SQLSelectDados.Eof do
      begin
         New(DadosDoNodo);
         DadosDoNodo^.Cod        := SQLSelectDados.FieldByName('PRFAA13ID').AsString;
         DadosDoNodo^.Produto    := SQLSelectDados.FieldByName('PRFAA30DESCR').AsString;
         DadosDoNodo^.Tipo       := 'Fase';
         DadosDoNodo^.CorTexto   := clBlack;
         NovoNodo := ArvoreOP.Items.AddNode(Nil, Node, 'Fase ' + SQLSelectDados.FieldByName('PRFAA30DESCR').AsString,
                                                       DadosDoNodo, naAddChild);
         NovoNodo.SelectedIndex  := 8;
         NovoNodo.ImageIndex     := 8;

         //Verifica se tem Atividades;
         SQLFilhosSaldo.Close;
         SQLFilhosSaldo.SQL.Text := 'select Count(*) AS Total from PRODUCAOFASESATIV where PRFAA13ID = ' + SQLSelectDados.FieldByName('PRFAA13ID').AsString;
         SQLFilhosSaldo.Open;
         if SQLFilhosSaldo.FieldByName('Total').AsInteger > 0 then
            NovoNodo.HasChildren := True;

         SQLSelectDados.Next;
      end;
end;

procedure TFormCadastroOrdemProducao.CriaNivelATIVIDADES(Node: TTreeNode);
begin
   //Atividade
   SQLSelectDados.Close;
   SQLSelectDados.SQL.Text := 'select PRODUCAOATIVIDADE.PRATA13ID, PRODUCAOATIVIDADE.PRATA60DESCR from PRODUCAOFASESATIV ' +
                              'left outer join PRODUCAOATIVIDADE on PRODUCAOATIVIDADE.PRATA13ID = PRODUCAOFASESATIV.PRATA13ID ' +
                              'where PRODUCAOFASESATIV.PRFAA13ID = ' + PDadosDoNodo(Node.Data)^.Cod;
   SQLSelectDados.Open;
   SQLSelectDados.First;
   while not SQLSelectDados.Eof do
      begin
         New(DadosDoNodo);
         DadosDoNodo^.Cod        := SQLSelectDados.FieldByName('PRATA13ID').AsString;
         DadosDoNodo^.Produto    := SQLSelectDados.FieldByName('PRATA60DESCR').AsString;
         DadosDoNodo^.Tipo       := 'Atividade';
         DadosDoNodo^.CorTexto   := clBlack;
         NovoNodo := ArvoreOP.Items.AddNode(Nil, Node, 'Atividade ' + SQLSelectDados.FieldByName('PRATA60DESCR').AsString,
                                                       DadosDoNodo, naAddChild);
         NovoNodo.SelectedIndex  := 9;
         NovoNodo.ImageIndex     := 9;
         NovoNodo.HasChildren    := True;
         SQLSelectDados.Next;
      end;
end;

procedure TFormCadastroOrdemProducao.CriaNivelDADOS_ATIVIDADES(Node: TTreeNode);
Var I     : Integer;
    Texto : String;
begin
   //Outros Dados Funcionarios, Centro de Custo, Recursos, Equipamentos
   SQLSelectDados.Close;
   SQLSelectDados.SQL.Text :=
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
   SQLSelectDados.Open;
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

         SQLSelectDados.First;
         while not SQLSelectDados.Eof do
            begin
               if (SQLSelectDados.FieldByName('Tipo').AsString = TipoOutrosDados[I]) and
                  (not SQLSelectDados.FieldByName('Cod').IsNull) then
                  begin
                     New(DadosDoNodo);
                     DadosDoNodo^.Cod        := SQLSelectDados.FieldByName('Cod').AsString;
                     DadosDoNodo^.Produto    := SQLSelectDados.FieldByName('Nome').AsString;
                     DadosDoNodo^.Tipo       := SQLSelectDados.FieldByName('Tipo').AsString;
                     DadosDoNodo^.CorTexto   := clBlack;
                     NovoNodo := ArvoreOP.Items.AddNode(Nil, NovoNodoPai, SQLSelectDados.FieldByName('Nome').AsString, DadosDoNodo, naAddChild);
                     NovoNodo.SelectedIndex  := I;
                     NovoNodo.ImageIndex     := I;
                  end;
               SQLSelectDados.Next;
            end;
      end;
end;

procedure TFormCadastroOrdemProducao.ArvoreOPChange(Sender: TObject;
  Node: TTreeNode);
begin
  inherited;
  if Self.Active then
     begin
        if (PDadosDoNodo(Node.Data)^.Tipo = 'Root') and (Node.Count = 0) then
           CriaNivelRoot(Node)
        else if (PDadosDoNodo(Node.Data)^.Tipo = 'Lote') and (Node.Count = 0) then
           CriaNivelPRODUTO(Node)
        else if ((PDadosDoNodo(Node.Data)^.Tipo = 'Produto') or (PDadosDoNodo(Node.Data)^.Tipo = 'Insumo')) and (Node.Count = 0) then
           CriaNivelPRODUTO_COMP(Node)
        else if ((PDadosDoNodo(Node.Data)^.Tipo = 'Fase') or (PDadosDoNodo(Node.Data)^.Tipo = 'Insumo')) and (Node.Count = 0) then
           CriaNivelATIVIDADES(Node)
        else if ((PDadosDoNodo(Node.Data)^.Tipo = 'Atividade') or (PDadosDoNodo(Node.Data)^.Tipo = 'Insumo')) and (Node.Count = 0) then
           CriaNivelDADOS_ATIVIDADES(Node)
        else if (PDadosDoNodo(Node.Data)^.Tipo = 'Pedido') and (Node.Count = 0) then
           CriaNivelPedido(Node);
        if chkDetalhe.Checked and not AutoExand and (UltimoDetalhe <> IntToStr(Node.AbsoluteIndex)) then
           begin
             VerDetalhe(Node);
             UltimoDetalhe := IntToStr(Node.AbsoluteIndex);
           end;
     end;
end;

procedure TFormCadastroOrdemProducao.IncTextForm(RichEdit : TRxRichEdit; Texto : String; Formato : TFontStyles; Cor : TColor);
begin
    RichTEMP.Text := Texto;
    RichTEMP.SelStart := 0;
    RichTEMP.SelLength := Length(RichTEMP.Text);
    RichTEMP.SelAttributes.Style := Formato;
    RichTEMP.SelAttributes.Color := Cor;
    RichTEMP.CopyToClipboard;

    RichEdit.SelStart  := Length(RichEdit.Text);
    RichEdit.ReadOnly  := False;
    RichEdit.SelLength := 0;
    RichEdit.PasteFromClipboard;
    RichEdit.ReadOnly  := True;
end;

procedure TFormCadastroOrdemProducao.VerDetalhe(Nodo : TTreeNode);
begin
  rchDetalhe.Clear;
  if (PDadosDoNodo(Nodo.Data)^.Tipo = 'Root') then
     begin
        IncTextForm(rchDetalhe, 'Ordem de Produção: ' + PDadosDoNodo(Nodo.Data)^.Cod, [fsBold], clNavy);
        if (SQLTemplateORPRCSTATUS.AsString = 'P') then
           IncTextForm(rchDetalhe, Char(13) + 'Iniciada em : ' + FormatDateTime('dd/mm/yyyy', SQLTemplateORPRDINICIO.AsDateTime), [], clBlack);
     end
  else if (PDadosDoNodo(Nodo.Data)^.Tipo = 'Lote') then
     begin
        IncTextForm(rchDetalhe, 'Lote: ' + PDadosDoNodo(Nodo.Data)^.Cod, [fsBold], clNavy);
        if (SQLTemplateORPRCSTATUS.AsString <> 'P') then
           IncTextForm(rchDetalhe, Char(13) + 'Necessario ' + FormatFloat('#,###0.000', PDadosDoNodo(Nodo.Data)^.NecessLote), [], clBlack);
     end
  else if (PDadosDoNodo(Nodo.Data)^.Tipo = 'Insumo') then
     begin
        IncTextForm(rchDetalhe, 'Produto: ' + PDadosDoNodo(Nodo.Data)^.Cod, [fsBold], clNavy);
        if (SQLTemplateORPRCSTATUS.AsString <> 'P') then
           begin
              IncTextForm(rchDetalhe, Char(13) + 'Posição Estoque ', [fsBold, fsItalic], clBlack);
              if (PDadosDoNodo(Nodo.Data)^.EstSaldo < PDadosDoNodo(Nodo.Data)^.NecessLote) then
                 begin
                    IncTextForm(rchDetalhe, Char(13) + 'Saldo: ' + FormatFloat('#,###0.000', PDadosDoNodo(Nodo.Data)^.EstSaldo), [fsUnderLine], clRed);
                    IncTextForm(rchDetalhe, Char(13) + 'Falta(m) ' + FormatFloat('#,###0.000', (PDadosDoNodo(Nodo.Data)^.NecessLote - PDadosDoNodo(Nodo.Data)^.EstSaldo)) + ' Item(ns) de ' + PDadosDoNodo(Nodo.Data)^.Produto + ' para completar o Produto', [fsBold], clRed);
                 end
              else
                 IncTextForm(rchDetalhe, Char(13) + 'Saldo: ' + FormatFloat('#,###0.000', PDadosDoNodo(Nodo.Data)^.EstSaldo), [], clBlack);
           end;
        IncTextForm(rchDetalhe, Char(13) + 'Quantidade por unidade:   ' + FormatFloat('#,###0.000', PDadosDoNodo(Nodo.Data)^.QtdePUn), [], clBlack);
        if (SQLTemplateORPRCSTATUS.AsString <> 'P') then
           IncTextForm(rchDetalhe, Char(13) + 'Necessario produção lote: ' + FormatFloat('#,###0.000', PDadosDoNodo(Nodo.Data)^.NecessLote), [], clBlack);
     end
  else if (PDadosDoNodo(Nodo.Data)^.Tipo = 'Produto') then
     begin
        IncTextForm(rchDetalhe, 'Produto: ' + PDadosDoNodo(Nodo.Data)^.Cod, [fsBold], clNavy);
        if (SQLTemplateORPRCSTATUS.AsString <> 'P') then
           begin
              IncTextForm(rchDetalhe, Char(13) + 'Posição Estoque ', [fsBold, fsItalic], clBlack);
              if PDadosDoNodo(Nodo.Data)^.EstSaldo < PDadosDoNodo(Nodo.Data)^.NecessLote then
                 begin
                    IncTextForm(rchDetalhe, Char(13) + 'Saldo: ' + FormatFloat('#,###0.000', PDadosDoNodo(Nodo.Data)^.EstSaldo), [fsUnderLine], clRed);
                 end
              else
                 IncTextForm(rchDetalhe, Char(13) + 'Saldo: ' + FormatFloat('#,###0.000', PDadosDoNodo(Nodo.Data)^.EstSaldo), [], clBlack);
           end
     end
  else if (PDadosDoNodo(Nodo.Data)^.Tipo = 'Fase') then
     begin
        IncTextForm(rchDetalhe, 'Fase: ' + PDadosDoNodo(Nodo.Data)^.Cod, [fsBold], clNavy);
     end
  else if (PDadosDoNodo(Nodo.Data)^.Tipo = 'Atividade') then
     begin
        IncTextForm(rchDetalhe, 'Atividade: ' + PDadosDoNodo(Nodo.Data)^.Cod, [fsBold], clNavy);
     end
  else if (PDadosDoNodo(Nodo.Data)^.Tipo = 'Func') then
     begin
        IncTextForm(rchDetalhe, 'Funcionário: ' + PDadosDoNodo(Nodo.Data)^.Cod, [fsBold], clNavy);
     end
  else if (PDadosDoNodo(Nodo.Data)^.Tipo = 'Recu') then
     begin
        IncTextForm(rchDetalhe, 'Recurso: ' + PDadosDoNodo(Nodo.Data)^.Cod, [fsBold], clNavy);
     end
  else if (PDadosDoNodo(Nodo.Data)^.Tipo = 'Cent') then
     begin
        IncTextForm(rchDetalhe, 'Centro de Custo: ' + PDadosDoNodo(Nodo.Data)^.Cod, [fsBold], clNavy);
     end
  else if (PDadosDoNodo(Nodo.Data)^.Tipo = 'Equi') then
     begin
        IncTextForm(rchDetalhe, 'Equipamento: ' + PDadosDoNodo(Nodo.Data)^.Cod, [fsBold], clNavy);
     end;
end;

procedure TFormCadastroOrdemProducao.ArvoreOPCustomDrawItem(
  Sender: TCustomTreeView; Node: TTreeNode; State: TCustomDrawState;
  var DefaultDraw: Boolean);
Var Rect : TRect;
begin
  inherited;
  Rect := Node.DisplayRect(True);
  ArvoreOP.Canvas.Font.Color := PDadosDoNodo(Node.Data)^.CorTexto;
  if PDadosDoNodo(Node.Data)^.CorTexto = clRed  then
     ImageListArvore.Draw(ArvoreOP.Canvas, Rect.Right + 10, Rect.Top, 14);
  if cdsSelected  in State then
     ArvoreOP.Canvas.Brush.Color := $00FBE7DB;     
end;

procedure TFormCadastroOrdemProducao.ArvoreOPMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ArvoreOPChange(ArvoreOP, ArvoreOP.Selected);
end;

procedure TFormCadastroOrdemProducao.lblLegendaClick(Sender: TObject);
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

procedure TFormCadastroOrdemProducao.mnExpandirdaSelecaoClick(
  Sender: TObject);
begin
  inherited;
  ExpandirTudo(True, 'Auto Expandindo');
end;

procedure TFormCadastroOrdemProducao.ExpandirTudo(ApartirSelecao: Boolean; Texto :String);
Var lblLegendaAntiga : String;
    NivelInicial, NodoSelecionado : Integer;
begin
   AtualizaTabTemp := False;
   if Pos('[Tudo]', Texto ) > 0 then
      begin
        try
           tblVericaEstoque.Close;
           tblVericaEstoque.DeleteTable;
           tblVericaEstoque.CreateTable;
        except
           tblVericaEstoque.CreateTable;
        end;
        AtualizaTabTemp := True;
      end;

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

procedure TFormCadastroOrdemProducao.mnAtualizarClick(Sender: TObject);
begin
  inherited;
  ArvoreRoot;
end;

procedure TFormCadastroOrdemProducao.mnExpandirTudoClick(Sender: TObject);
begin
  inherited;
  ExpandirTudo(False, 'Auto Expandindo [Tudo]');
end;

procedure TFormCadastroOrdemProducao.chkDetalheClick(Sender: TObject);
begin
  inherited;
  if not AutoExand then
     begin
        if chkDetalhe.Checked then
           rchDetalhe.Width := Round(pnCorpoArqvore.Width div 2)
        else
           rchDetalhe.Width := 0;
        ArvoreOPChange(ArvoreOP, ArvoreOP.Selected);
     end;
end;

procedure TFormCadastroOrdemProducao.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if SQLTemplateORPRCSTATUS.AsString = 'A' then
     lnlInicio.Caption := 'Previsão de Inicio'
  else
     lnlInicio.Caption := 'Inicio';
end;

function TFormCadastroOrdemProducao.IniciarProducao(Nivel: Integer) : Boolean;
Var EstoqueAtual : Double;
    SQLAntigo : String;
begin
    Result := False;
    EstoqueOK := True;

    SQLEstoqueGeralOP.Close;
    if Nivel = 0 then //Verifica estoques dos Produtos/Semi Acabados
       SQLEstoqueGeralOP.SQL.Text := 'select PRODCOMPPAI.PRODICOd as Prod, (PRODCOMPPAI.PRODN3CAPACEMBAL * PRODUCAOLOTE.PRLTN2QTDE) as Qtde ' +
                                     'from ORDEMPRODUCAOITEM left outer join PRODUCAOLOTE on PRODUCAOLOTE.PRLTA13ID = ORDEMPRODUCAOITEM.PRLTA13ID ' +
                                     'left outer join PRODUTO PRODCOMPPAI on PRODCOMPPAI.PRODICOD = PRODUCAOLOTE.PRODICOD ' +
                                     'where ORDEMPRODUCAOITEM.ORPRA13ID = "' + SQLTemplateORPRA13ID.AsString + '"';

    if Nivel = 1 then //Verifica estoques dos Semi Acabados/Materias Primas sem Dimensoes
       SQLEstoqueGeralOP.SQL.Text := 'select PRODCOMPFILHO.PRODICODFILHO as Prod, PRODCOMPFILHO.PRODN3DIMENTOTAL, ((PRODCOMPPAI.PRODN3QTDE) * PRODUCAOLOTE.PRLTN2QTDE) QDTE1, ' +
                                     '((PRODCOMPPAI.PRODN3QTDE * PRODUCAOLOTE.PRLTN2QTDE) * PRODCOMPFILHO.PRODN3QTDE) as Qtde ' +
                                     'from ORDEMPRODUCAOITEM left outer join PRODUCAOLOTE on PRODUCAOLOTE.PRLTA13ID = ORDEMPRODUCAOITEM.PRLTA13ID ' +
                                     'left outer join PRODUTOCOMPOSICAO PRODCOMPPAI on PRODCOMPPAI.PRODICOD = PRODUCAOLOTE.PRODICOD ' +
                                     'left outer join PRODUTOCOMPOSICAO PRODCOMPFILHO on PRODCOMPFILHO.PRODICOD = PRODCOMPPAI.PRODICODFILHO ' +
                                     'where ORDEMPRODUCAOITEM.ORPRA13ID = "' + SQLTemplateORPRA13ID.AsString + '"';
    SQLEstoqueGeralOP.Open;

    try tblTempEstoqueOP.Close; tblTempEstoqueOP.DeleteTable; tblTempEstoqueOP.CreateTable;
    except tblTempEstoqueOP.CreateTable; end;

    BatchMove.Execute;

    if Nivel = 1 then
       begin
            SQLAntigo := SQLCountEstoque.SQL.Text;
            SQLCountEstoque.Close;
            SQLCountEstoque.SQL.Text := 'update tblTempEstoqueOP set Qtde = QDTE1 where (Qtde is null or Qtde <= 0)';
            SQLCountEstoque.ExecSQL;
            SQLCountEstoque.Close;
            SQLCountEstoque.SQL.Text := SQLAntigo;
       end;

    SQLCountEstoque.Close;
    SQLCountEstoque.Open;
    SQLCountEstoque.First;

    chkDetalhe.Checked := SQLCountEstoque.IsEmpty;
    rchDetalhe.Text := '';
    AutoExand := SQLCountEstoque.IsEmpty;
    chkDetalhe.Checked := not SQLCountEstoque.IsEmpty;

    if SQLCountEstoque.IsEmpty then
       begin
          Informa('Não há estoque lançado para este produto verifique a posição de estoque e tente novamente.');
          Abort;
       end;

    while not SQLCountEstoque.Eof do
       begin
          if DM.ProcuraRegistro('PRODUTOSALDO',['PRODICOD', 'EMPRICOD'], [SQLCountEstoque.FieldByName('PROD').AsString, IntToStr(EmpresaCorrente)], 2) then
             EstoqueAtual := DM.SQLTemplate.FieldByName('PSLDN3QTDE').AsFloat
          else
             EstoqueAtual := 0;
           if EstoqueAtual < SQLCountEstoque.FieldByName('SomaEstoque').AsFloat  then
             begin
                if rchDetalhe.Text = '' then
                   IncTextForm(rchDetalhe, 'Estoque Insuficiente', [fsBold], clRed);
                IncTextForm(rchDetalhe, Char(13) + 'Produto', [fsBold, fsUnderLine], clNavy);
                IncTextForm(rchDetalhe, Char(13) + 'Código: ' + SQLCountEstoque.FieldByName('PROD').AsString + ' - ' + SQLLocate('PRODUTO', 'PRODICOD', 'PRODA60DESCR', SQLCountEstoque.FieldByName('PROD').AsString) +
                                        Char(13) + 'Total Estoque: ' + FloatToStr(EstoqueAtual) +
                                        Char(13) + 'Estoque Necessário: ' + FormatFloat('#,###0.000', SQLCountEstoque.FieldByName('SomaEstoque').AsFloat) +
                                        Char(13) + 'Falta: ' + FormatFloat('#,###0.000', SQLCountEstoque.FieldByName('SomaEstoque').AsFloat - EstoqueAtual), [], clRed);
                EstoqueOK := False;
                AutoExand := False;
             end;
          SQLCountEstoque.Next;
       end;
    if not EstoqueOK then
       begin
          Informa('A Ordem de Produção não pode ser Iniciada.' + Char(13) +
                  'Verifique o Relatório Detalhe.');
          SQLTemplateORPRCSTATUS.AsString := 'G';
          Abort;
       end
    else
       begin
          SQLTemplate.Edit;
          if SQLTemplateORPRDINICIO.AsDateTime <> Date then
             if Application.MessageBox('Você deseja iniciar a Ordem de Produção com a data Atual?', 'Data', MB_YESNO + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONQUESTION) = idYes then
                SQLTemplateORPRDINICIO.AsDateTime := Now;
          if SQLTemplateORPRDPREVISAO.IsNull then
             begin
                Informa('Você deve informar uma data de Previsão de Término.');
                SQLTemplateORPRDPREVISAO.FocusControl;
                Abort;
             end;
          if SQLTemplateORPRDPREVISAO.AsDateTime < SQLTemplateORPRDINICIO.AsDateTime then
             begin
                Informa('A Data de Previsão de Término deve ser Superior a Data de Inicio.');
                SQLTemplateORPRDPREVISAO.FocusControl;
                Abort;
             end;
          SQLTemplateORPRCSTATUS.AsString := 'P';
          Result := True;
          AutoExand := False;
       end;
end;

procedure TFormCadastroOrdemProducao.SQLTemplateORPRDPREVISAOChange(
  Sender: TField);
begin
  inherited;
  if SQLTemplate.State in dsEditModes then
     SQLTemplateORPRDTERMINO.AsDateTime := SQLTemplateORPRDPREVISAO.AsDateTime;

  dtpPrevTermino.DateTime := SQLTemplateORPRDPREVISAO.AsDateTime;
end;

procedure TFormCadastroOrdemProducao.MovimentaEstoque;
Var
  Operacao : String;
  QtdeSA   : Double;
  Prod     : Integer;
begin
  if SQLTemplateORPRCSTATUS.AsString <> StatusAnterior then
     begin
        case SQLTemplateORPRCSTATUS.AsString[1] of
           'O' : begin
                    SQLOPItem.First;
                    Prod  := 0;
                    MakeWindow(SQLOPItem.RecordCount, 'Movimentando Estoque');
                    while not SQLOPItem.Eof do
                       begin
                          SetProgress(Prod);
                          GravaMovimentoEstoqueSimples(DM.SQLProduto, DM.SQLProdutoFilho, DM.SQLProdutoSaldo,
                                              SQLTemplateEMPRICOD.AsInteger,
                                              SQLOPItemPRODICOD.Value,
                                              SQLConfigOP.FieldByName('CFOPIOPESTINICIO').AsInteger,
                                              SQLOPItemPRLTN2QTDE.AsFloat * SQLOPItemPRODN3CAPACEMBAL.AsFloat,
                                              'E', FormatDateTime('mm/dd/yyyy', Now),
                                              '0', 'ORDEMPRODUCAO', SQLTemplateORPRA13ID.AsString, '');
                          SQLOPItem.Next;
                          Inc(Prod);
                       end;
                    DestroyWindow;
                 end;

           'P',
           'C' : begin
                    SQLSelectDados.Close;
                    SQLSelectDados.SQL.Text := 'select distinct PRODUCAOLOTE.PRLTA13ID, ' +
                                               'PRODUCAOLOTE.PRLTN2QTDE AS QtdeLote,  PRODUTO.PRODCTIPO, PRODUTO.PRODA60DESCR, PRODUTO.PRODN3CAPACEMBAL, ' +
                                               'PRODUTOCOMPOSICAO.PRODN3QTDE as QtdeComp, ' +
                                               '((PRODUCAOLOTE.PRLTN2QTDE * PRODUTOCOMPOSICAO.PRODN3QTDE) * PRODUTO.PRODN3CAPACEMBAL) as PRLTN2QTDE, ' +
                                               ' PRODUTOCOMPOSICAO.PRODICODFILHO as InsSA  ' +
                                               'from ORDEMPRODUCAOITEM ' +
                                               'left outer join PRODUCAOLOTE on PRODUCAOLOTE.PRLTA13ID = ORDEMPRODUCAOITEM.PRLTA13ID ' +
                                               'left outer join PRODUTOCOMPOSICAO on PRODUTOCOMPOSICAO.PRODICOD = PRODUCAOLOTE.PRODICOD ' +
                                               'left outer join PRODUTO on PRODUTO.PRODICOD = PRODUTOCOMPOSICAO.PRODICODFILHO ' +
                                               'where ORDEMPRODUCAOITEM.ORPRA13ID = "' + SQLTemplateORPRA13ID.AsString + '"' +
                                               'order by ORDEMPRODUCAOITEM.ORPRA13ID, PRODUCAOLOTE.PRLTA13ID';
                    SQLSelectDados.Open;

                    SQLConfigOP.Close;
                    SQLConfigOP.SQL.Text := 'select * from CONFIGORDEMPRODUC ';
                    SQLConfigOP.Open;

                    if SQLTemplateORPRCSTATUS.AsString[1] = 'C' then
                       Operacao := 'E'
                    else
                       Operacao := 'S';

                    if SQLSelectDados.FieldByName('InsSA').IsNull then
                       begin
                          Informa('Não foram encontrados Insumos ou Semiacabados em algum(ns) produto(s) da arvore de produção.');
                          Abort;
                       end;

                    if not SQLSelectDados.IsEmpty then
                       MakeWindow(SQLSelectDados.RecordCount, 'Movimentando Estoque');

                    SQLSelectDados.First;
                    while not SQLSelectDados.Eof do
                       begin
                            SetProgress(Prod);
                            GravaMovimentoEstoqueSimples(DM.SQLProduto, DM.SQLProdutoFilho, DM.SQLProdutoSaldo,
                                                         SQLTemplateEMPRICOD.AsInteger,
                                                         SQLSelectDados.FieldByName('InsSA').Value,
                                                         SQLConfigOP.FieldByName('CFOPIOPESTINICIO').AsInteger,
                                                         SQLSelectDados.FieldByName('PRLTN2QTDE').Value,
                                                         Operacao, FormatDateTime('mm/dd/yyyy', Now),
                                                         '0', 'ORDEMPRODUCAO', SQLTemplateORPRA13ID.AsString, '');
                            if SQLSelectDados.FieldByName('PRODCTIPO').AsString = 'S' then
                               begin
                                  SQLCount.Close;
                                  SQLCount.SQL.Text := 'select * from PRODUTOCOMPOSICAO where PRODICOD = ' + SQLSelectDados.FieldByName('InsSA').AsString;
                                  SQLCount.Open;
                                  if not SQLCount.IsEmpty then
                                     begin
                                         SQLCount.First;
                                         while not SQLCount.Eof do
                                           begin
                                              QtdeSA := ((SQLSelectDados.FieldByName('QtdeComp').Value * SQLSelectDados.FieldByName('QtdeLote').Value) * SQLCount.FieldByName('PRODN3QTDE').Value) *
                                                        StrToFloat(SQLLocate('PRODUTO', 'PRODICOD', 'PRODN3CAPACEMBAL', SQLCount.FieldByName('PRODICODFILHO').AsString));
                                              GravaMovimentoEstoqueSimples(DM.SQLProduto, DM.SQLProdutoFilho, DM.SQLProdutoSaldo,
                                                                           SQLTemplateEMPRICOD.AsInteger,
                                                                           SQLCount.FieldByName('PRODICODFILHO').Value,
                                                                           SQLConfigOP.FieldByName('CFOPIOPESTINICIO').AsInteger,
                                                                           QtdeSA,
                                                                           Operacao, FormatDateTime('mm/dd/yyyy', Now),
                                                                           '0', 'ORDEMPRODUCAO', SQLTemplateORPRA13ID.AsString, '');
                                              SQLCount.Next;
                                           end;
                                     end;
                               end;
                            SQLSelectDados.Next;
                            Inc(Prod);
                       end;
                    DestroyWindow;
                 end;
        end;
     end;
end;
procedure TFormCadastroOrdemProducao.SQLTemplateBeforePost(
  DataSet: TDataSet);
Var SQLAntigo : String;
begin
  inherited;
  if (SQLTemplateORPRCSTATUS.AsString = 'P') and (StatusAnterior <> 'P') then
     begin
        //Retona FALSE se na arvore de Produção há algum item com Estoque
        //inferior ao necessario.
        ArvoreRoot;

        mnExpandirTudo.Click;

        SQLAntigo := SQLCountEstoque.SQL.Text;
        SQLCountEstoque.Close;
        SQLCountEstoque.SQL.Text := 'select cod, Qtde, sum(necessario) - Qtde as EstoqueFalta, sum(necessario) as Nescessario from tblVericaEstoque ' +
                                    'group by cod, Qtde  ';
        SQLCountEstoque.Open;

        SQLCountEstoque.First;

        rchDetalhe.Text := '';
        IncTextForm(rchDetalhe, 'Estoque Insuficiente', [fsBold], clRed);
        IncTextForm(rchDetalhe, Char(13) + 'Produto(s)', [fsBold, fsUnderLine], clNavy);
        while not SQLCountEstoque.Eof do
          begin
            if SQLCountEstoque.FieldByName('EstoqueFalta').AsFloat > 0 then
               begin
                  IncTextForm(rchDetalhe, Char(13) + 'Código: ' + SQLCountEstoque.FieldByName('Cod').AsString + ' - ' + SQLLocate('PRODUTO', 'PRODICOD', 'PRODA60DESCR', SQLCountEstoque.FieldByName('Cod').AsString) +
                                          Char(13) + 'Total Estoque: ' + SQLCountEstoque.FieldByName('Qtde').AsString +
                                          Char(13) + 'Estoque Necessário: ' + FormatFloat('#,###0.000', SQLCountEstoque.FieldByName('Nescessario').AsFloat) +
                                          Char(13) + 'Falta: ' + FormatFloat('#,###0.000', SQLCountEstoque.FieldByName('EstoqueFalta').AsFloat), [], clRed);
                  EstoqueOK := False;
               end;
            SQLCountEstoque.Next;
          end;
        SQLCountEstoque.Close;
    if not EstoqueOK then
       begin
          Informa('A Ordem de Produção não pode ser Iniciada.' + Char(13) +
                  'Verifique o Relatório Detalhe.');
          SQLTemplateORPRCSTATUS.AsString := 'G';
          Abort;
       end
    else
       begin
          SQLTemplate.Edit;
          if SQLTemplateORPRDINICIO.AsDateTime <> Date then
             if Application.MessageBox('Você deseja iniciar a Ordem de Produção com a data Atual?', 'Data', MB_YESNO + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONQUESTION) = idYes then
                SQLTemplateORPRDINICIO.AsDateTime := Now;
          if SQLTemplateORPRDPREVISAO.IsNull then
             begin
                Informa('Você deve informar uma data de Previsão de Término.');
                SQLTemplateORPRDPREVISAO.FocusControl;
                Abort;
             end;
          if SQLTemplateORPRDPREVISAO.AsDateTime < SQLTemplateORPRDINICIO.AsDateTime then
             begin
                Informa('A Data de Previsão de Término deve ser Superior a Data de Inicio.');
                SQLTemplateORPRDPREVISAO.FocusControl;
                Abort;
             end;
          SQLTemplateORPRCSTATUS.AsString := 'P';
          AutoExand := False;
       end;

    SQLCountEstoque.Close;
    SQLCountEstoque.SQL.Text := SQLAntigo;
  end;
  MovimentaEstoque;
end;

procedure TFormCadastroOrdemProducao.DBGridListaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if (Column.Title.Caption = 'Prazo Conclusão') and
      not SQLTemplateORPRDPREVISAO.IsNull and
      not SQLTemplateORPRDINICIO.IsNull and
      not (SQLTemplateORPRCSTATUS.AsString <> 'P') then
     begin
        if (SQLTemplateORPRDPREVISAO.AsDateTime > Date)  then
            FazBarra(Sender, Rect, DataCol, Column, State,
                    Date - SQLTemplateORPRDINICIO.AsDateTime,
                    SQLTemplateORPRDPREVISAO.AsDateTime - SQLTemplateORPRDINICIO.AsDateTime, clGreen)
        else
            FazBarra(Sender, Rect, DataCol, Column, State,
                    100, 100, clGreen)
     end
  else
    if (Column.FieldName = 'ORPRCSTATUS') and not SQLTemplateORPRCSTATUS.IsNull then
       case SQLTemplateORPRCSTATUS.AsString[1] of
         'A' : DBGridLista.Canvas.TextOut(Rect.Left, Rect.Top + 2, 'Aberta');
         'G' : DBGridLista.Canvas.TextOut(Rect.Left, Rect.Top + 2, 'Aguardando...');
         'P' : DBGridLista.Canvas.TextOut(Rect.Left, Rect.Top + 2, 'Produzindo...');
         'C' : DBGridLista.Canvas.TextOut(Rect.Left, Rect.Top + 2, 'Cancelada');
         'O' : DBGridLista.Canvas.TextOut(Rect.Left, Rect.Top + 2, 'Concluida');
       end;
end;

procedure TFormCadastroOrdemProducao.SQLTemplateBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  StatusAnterior := SQLTemplateORPRCSTATUS.AsString;
end;

procedure TFormCadastroOrdemProducao.Button1Click(Sender: TObject);
begin
  inherited;
  if TControl(Sender).Name = 'Button3' then
    begin
      DSMasterSys := DSTemplate;
      CriaFormulario(TFormCadastroOrdemProducaoItem,'FormCadastroOrdemProducaoItem', True, False, 'Ordem Produção : ' + SQLTemplateORPRA13ID.AsString);
    end;
end;

procedure TFormCadastroOrdemProducao.SQLTemplateORPRDINICIOChange(
  Sender: TField);
begin
  inherited;
  dtpInicio.DateTime := SQLTemplateORPRDINICIO.AsDateTime;
end;

procedure TFormCadastroOrdemProducao.dtpInicioChange(Sender: TObject);
begin
  inherited;
  SQLTemplateORPRDINICIO.AsDateTime := dtpInicio.DateTime;
end;

procedure TFormCadastroOrdemProducao.DSTemplateStateChange(
  Sender: TObject);
begin
  inherited;
  dtpInicio.Enabled      := SQLTemplate.State in dsEditModes;
  dtpPrevTermino.Enabled := SQLTemplate.State in dsEditModes;
  dtpTermino.Enabled     := SQLTemplate.State in dsEditModes;
end;

procedure TFormCadastroOrdemProducao.SQLTemplateORPRDTERMINOChange(
  Sender: TField);
begin
  inherited;
  dtpTermino.DateTime := SQLTemplateORPRDTERMINO.AsDateTime;
end;

procedure TFormCadastroOrdemProducao.dtpPrevTerminoChange(Sender: TObject);
begin
  inherited;
  SQLTemplateORPRDPREVISAO.AsDateTime := dtpPrevTermino.DateTime;
end;

procedure TFormCadastroOrdemProducao.dtpTerminoChange(Sender: TObject);
begin
  inherited;
  SQLTemplateORPRDTERMINO.AsDateTime := dtpTermino.DateTime;
end;

procedure TFormCadastroOrdemProducao.DBGridLotesDblClick(Sender: TObject);
begin
  inherited;
  Button3.Click;
end;

procedure TFormCadastroOrdemProducao.SQLTemplateAfterPost(
  DataSet: TDataSet);
Var Lotes : String;
begin
  inherited;
  SQLCount.Close;
  SQLCount.SQL.Text := 'update PRODUCAOLOTE set ';
  case SQLTemplateORPRCSTATUS.AsString[1] of
     'A','G' : SQLCount.SQL.Add('PRLTCSTATUS = "A" '); //Se OP Aberta ou Aguardando Lote fica Aguardando assim esta associado
     'P' :     SQLCount.SQL.Add('PRLTCSTATUS = "P" '); //OP Produzindo = Lote Produzindo
     'C' :     SQLCount.SQL.Add('PRLTCSTATUS = "N" '); //OP Cancelado = Lote Liberado
     'O' :     SQLCount.SQL.Add('PRLTCSTATUS = "C" '); //OP Concluido = Lote Concluido
  end;
  SQLCount.SQL.Add('where PRLTA13ID in ' +
                   '(select PRLTA13ID from ORDEMPRODUCAOITEM where ORPRA13ID = "' + SQLTemplateORPRA13ID.AsString + '")');
  SQLCount.ExecSQL;
end;

end.
