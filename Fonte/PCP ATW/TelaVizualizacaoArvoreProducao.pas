unit TelaVizualizacaoArvoreProducao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, DB, Grids, DBGrids, DBTables, RxQuery,
  ComCtrls, Buttons, jpeg, ExtCtrls, StdCtrls, ImgList, DBCtrls, RXCtrls;

type
  PDadosDoNodo = ^TDadosDoNodo;
  TDadosDoNodo = Record
     Cod        : String;
     Produto    : String;
     Tipo       : String;
  end;

  TFormTelaVizualizacaoArvoreProducao = class(TFormTelaGeralTEMPLATE)
    SQLProdutos: TRxQuery;
    SQLArvore: TRxQuery;
    DSSQLProdutos: TDataSource;
    ImageList: TImageList;
    Panel: TPanel;
    pnTreeView: TPanel;
    ArvoreProducao: TTreeView;
    Splitter1: TSplitter;
    Panel2: TPanel;
    DSSQLArvore: TDataSource;
    SQLDetalhe: TRxQuery;
    dsSQLDetalhe: TDataSource;
    DBGridDetalhe: TDBGrid;
    SQLDetalheTIPO: TStringField;
    SQLDetalhePRODA60DESCR: TStringField;
    SQLDetalheVALORCOMPRA: TBCDField;
    pnTituloDetalhe: TPanel;
    Titulo: TLabel;
    SQLDetalhePSLDN3QTDE: TBCDField;
    SQLDetalheEMPRICOD: TIntegerField;
    pnDescrSimples: TPanel;
    lblDetalheProduto: TLabel;
    lblDescricao: TLabel;
    pnLegenda: TPanel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblLeganda: TLabel;
    pnSupTree: TPanel;
    chkFitroProducao: TCheckBox;
    chkEstoqueEmpresa: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure ArvoreProducaoChange(Sender: TObject; Node: TTreeNode);
    procedure DBGridDetalheDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure lblLegandaClick(Sender: TObject);
    procedure chkFitroProducaoClick(Sender: TObject);
    procedure PrimeiroNodo;
    procedure ArvoreProducaoClick(Sender: TObject);
    procedure SQLDetalheBeforeOpen(DataSet: TDataSet);
    procedure chkEstoqueEmpresaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaVizualizacaoArvoreProducao: TFormTelaVizualizacaoArvoreProducao;
  Produtos : TTreeNode;
implementation

uses DataModulo, VarSYS;

{$R *.dfm}

procedure TFormTelaVizualizacaoArvoreProducao.FormCreate(Sender: TObject);
begin
  PrimeiroNodo;
end;

procedure TFormTelaVizualizacaoArvoreProducao.PrimeiroNodo;
begin
  Produtos := ArvoreProducao.Items.Add(nil,'Produtos');
  Produtos.SelectedIndex := 1;
  Produtos.ImageIndex := 2;
end;

procedure TFormTelaVizualizacaoArvoreProducao.ArvoreProducaoChange(
  Sender: TObject; Node: TTreeNode);
Var DadosDoNodo: PDadosDoNodo;
    NovoNodo  : TTreeNode;
    CodLetra   : Integer;
begin
  inherited;
   if (Node.Text = 'Produtos') and (Node.Count = 0) then
     begin
        if not chkFitroProducao.Checked then
           begin
             For CodLetra := 65 to 90 do
                begin
                    NovoNodo := ArvoreProducao.Items.AddChild(Node, 'Itens Começados com ' + Chr(CodLetra));
                    NovoNodo.ImageIndex := 5;
                    NovoNodo.SelectedIndex := 5;
                end;
           end
        else
           begin
              NovoNodo := ArvoreProducao.Items.AddChild(Node, 'Produtos em Produção');
              NovoNodo.ImageIndex := 5;
              NovoNodo.SelectedIndex := 5;
           end;
     end
   else
     if (Node.ImageIndex = 5) and
        ArvoreProducao.Focused and
        (Node.Count = 0) then
        begin
           SQLProdutos.Close;
           if not chkFitroProducao.Checked then
              begin
                 SQLProdutos.MacroByName('MFiltro').AsString := ' PRODUTO.PRODA60DESCR like "' + Node.Text[Length(Node.Text)] + '%"';
                 SQLProdutos.Open;
                 Node.Text := IntToStr(SQLProdutos.RecordCount) + ' Itens Começados com ' + Node.Text[Length(Node.Text)];
              end
           else
              SQLProdutos.MacroByName('MFiltro').AsString := ' PRODUTO.PRODICOD in (select PRODICOD from PRODUTOPRODUCAO)';
           if not SQLProdutos.Active then SQLProdutos.Active := True;
           SQLProdutos.First;
           while not SQLProdutos.Eof do
             begin
               New(DadosDoNodo);
               DadosDoNodo^.Cod        := SQLProdutos.FieldByName('PRODICOD').AsString;
               DadosDoNodo^.Produto    := SQLProdutos.FieldByName('PRODA60DESCR').AsString;
               DadosDoNodo^.Tipo       := SQLProdutos.FieldByName('PRODCTIPO').AsString;
               NovoNodo := ArvoreProducao.Items.AddNode(Nil, Node, SQLProdutos.FieldByName('PRODA60DESCR').AsString, DadosDoNodo, naAddChild);
               NovoNodo.SelectedIndex  := 1;
               case SQLProdutos.FieldByName('PRODCTIPO').AsString[1] of
                  'M' : NovoNodo.ImageIndex := 3;
                  'S' : NovoNodo.ImageIndex := 4;
                  'P' : NovoNodo.ImageIndex := 2;
               end;
               SQLProdutos.Next;
             end;
        end
   else
     if (Node.Count <= 0) and (Node.Data <> Nil) then
         begin
            SQLArvore.Close;
            SQLArvore.MacroByName('MFiltro').AsString := ' PRODUTO.PRODICOD = ' + PDadosDoNodo(Node.Data)^.Cod;
            SQLArvore.Open;
            if not SQLArvore.IsEmpty then
              begin
                 SQLArvore.First;
                 while not SQLArvore.Eof do
                   begin
                     New(DadosDoNodo);
                     DadosDoNodo^.Cod     := SQLArvore.FieldByName('PRODICODFILHO').AsString;
                     DadosDoNodo^.Produto := SQLArvore.FieldByName('NOMEFILHO').AsString;
                     DadosDoNodo^.Tipo    := SQLArvore.FieldByName('PRODCTIPO').AsString;
                     NovoNodo := ArvoreProducao.Items.AddNode(Nil, Node, DadosDoNodo^.Produto, DadosDoNodo, naAddChild);
                     NovoNodo.SelectedIndex := 1;
                     case SQLArvore.FieldByName('PRODCTIPO').AsString[1] of
                        'M' : NovoNodo.ImageIndex := 3;
                        'S' : NovoNodo.ImageIndex := 4;
                        'P' : NovoNodo.ImageIndex := 2;
                     end;
                     SQLArvore.Next;
                   end;
              end;
         end;

   if Node.Data <> Nil then
      begin
         if Node.Count = 0 then
            begin
               SQLDetalhe.Close;
               SQLDetalhe.MacroByName('MFiltro').AsString := ' PRODUTO.PRODICOD = ' + PDadosDoNodo(Node.Data)^.Cod ;
               SQLDetalhe.Open;
               lblDetalheProduto.Caption := '';
            end;
         if Node.Count > 0 then
            begin
               SQLDetalhe.Close;
               SQLDetalhe.MacroByName('MFiltro').AsString := ' PRODUTO.PRODICOD in (select PRODICODFILHO from PRODUTOCOMPOSICAO where PRODICOD = ' + PDadosDoNodo(Node.Data)^.Cod + ')';
               SQLDetalhe.Open;
               lblDetalheProduto.Caption := 'Código: ' + PDadosDoNodo(Node.Data)^.Cod;
               lblDescricao.Caption      := 'Descrição: ' + PDadosDoNodo(Node.Data)^.Produto;
            end;
      end;
   pnDescrSimples.Visible := lblDetalheProduto.Caption <> '';
end;

procedure TFormTelaVizualizacaoArvoreProducao.DBGridDetalheDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if SQLDetalheTIPO.AsString <> '' then
     case SQLDetalheTIPO.AsString[1] of
         'M' : DBGridDetalhe.Canvas.Font.Color := clMaroon;
         'S' : DBGridDetalhe.Canvas.Font.Color := clGreen;
         'P' : DBGridDetalhe.Canvas.Font.Color := clNavy;
     end;

  if (Column.FieldName = 'PSLDN3QTDE') and (Column.Field.AsFloat <= 0) then
     begin
        DBGridDetalhe.Canvas.Font.Color := clRed;
        DBGridDetalhe.Canvas.Font.Style := [fsBold];
     end;

  DBGridDetalhe.DefaultDrawColumnCell(Rect, DataCol, Column,State);

  if Column.FieldName = 'TIPO' then
     begin
       if Column.Field.AsString = 'M' then
          DBGridDetalhe.Canvas.TextOut(Rect.Left, Rect.Top + 2, 'Matéria Prima');
       if Column.Field.AsString = 'S' then
          DBGridDetalhe.Canvas.TextOut(Rect.Left, Rect.Top + 2, 'Semi-Acabado');
       if Column.Field.AsString = 'P' then
          DBGridDetalhe.Canvas.TextOut(Rect.Left, Rect.Top + 2, 'Produto Acabado');
     end;
end;

procedure TFormTelaVizualizacaoArvoreProducao.lblLegandaClick(Sender: TObject);
begin
  inherited;
  pnLegenda.Visible := not pnLegenda.Visible;
  if pnLegenda.Visible then
     lblLeganda.Caption := '<< Legenda'
  else
     lblLeganda.Caption := '>> Legenda'
end;

procedure TFormTelaVizualizacaoArvoreProducao.chkFitroProducaoClick(
  Sender: TObject);
begin
  inherited;
  ArvoreProducao.Items.Clear;
  PrimeiroNodo;
  ArvoreProducao.Select(ArvoreProducao.Items.Item[0]);
  ArvoreProducao.Selected.Expand(False);
end;

procedure TFormTelaVizualizacaoArvoreProducao.ArvoreProducaoClick(
  Sender: TObject);
begin
  inherited;
  ArvoreProducaoChange(ArvoreProducao, ArvoreProducao.Selected);
end;

procedure TFormTelaVizualizacaoArvoreProducao.SQLDetalheBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  if not chkEstoqueEmpresa.Checked then
     SQLDetalhe.MacroByName('MFiltro').AsString := SQLDetalhe.MacroByName('MFiltro').AsString +
                                                  ' and EMPRICOD = ' + IntToStr(EmpresaCorrente);


end;

procedure TFormTelaVizualizacaoArvoreProducao.chkEstoqueEmpresaClick(
  Sender: TObject);
begin
  inherited;
  ArvoreProducaoChange(ArvoreProducao, ArvoreProducao.Selected);
end;

end.
