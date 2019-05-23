unit TelaAtualizacaoMoeda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, StdCtrls, CurrEdit,
  Mask, ToolEdit, DB, DBTables, RxQuery, Grids, DBGrids, ComCtrls, RxLookup,
  Gauges, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaAtualizacaoMoeda = class(TFormTelaGeralTEMPLATE)
    SQLCotacaoMoeda: TRxQuery;
    DSSQLCotacaoMoeda: TDataSource;
    SQLCotacaoMoedaCTMOICOD: TIntegerField;
    SQLCotacaoMoedaCTMODDIA: TDateTimeField;
    SQLCotacaoMoedaCTMOA5MOEDA: TStringField;
    SQLCotacaoMoedaCTMON3VLRDIA: TBCDField;
    SQLCotacaoMoedaCTMOA60FONTE: TStringField;
    SQLCotacaoMoedaPENDENTE: TStringField;
    SQLCotacaoMoedaREGISTRO: TDateTimeField;
    GroupBox2: TGroupBox;
    EditVlrDia: TCurrencyEdit;
    GroupBox1: TGroupBox;
    EditDia: TDateEdit;
    RadioMoeda: TRadioGroup;
    Label1: TLabel;
    GroupResult: TGroupBox;
    MemoResult: TMemo;
    SQLGeral: TRxQuery;
    GroupFonte: TGroupBox;
    EditFonte: TEdit;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60CODBAR: TStringField;
    SQLProdutoPRODA15CODANT: TStringField;
    SQLProdutoPRODA60REFER: TStringField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoPRODN3VLRVENDA: TBCDField;
    SQLProdutoPRODN3VLRCOMPRA: TBCDField;
    SQLProdutoPRODN3VLRCUSTO: TBCDField;
    SQLProdutoPRODN3PERCMARGLUCR: TBCDField;
    SQLProdutoPRODN3DOLARCUSTO: TBCDField;
    SQLProdutoPRODN3DOLARCOMPRA: TBCDField;
    SQLProdutoPRODN3DOLARVENDA: TBCDField;
    GroupFiltro: TGroupBox;
    SQLGrupo: TRxQuery;
    DSSQLGrupo: TDataSource;
    SQLSubGrupo: TRxQuery;
    DSSQLSubGrupo: TDataSource;
    SQLVariacao: TRxQuery;
    SQLGrupoGRUPICOD: TIntegerField;
    SQLGrupoGRUPA60DESCR: TStringField;
    SQLGrupoPENDENTE: TStringField;
    SQLGrupoREGISTRO: TDateTimeField;
    SQLSubGrupoGRUPICOD: TIntegerField;
    SQLSubGrupoSUBGICOD: TIntegerField;
    SQLSubGrupoSUBGA60DESCR: TStringField;
    SQLSubGrupoPENDENTE: TStringField;
    SQLSubGrupoREGISTRO: TDateTimeField;
    SQLVariacaoGRUPICOD: TIntegerField;
    SQLVariacaoSUBGICOD: TIntegerField;
    SQLVariacaoVARIICOD: TIntegerField;
    SQLVariacaoVARIA60DESCR: TStringField;
    SQLVariacaoPENDENTE: TStringField;
    SQLVariacaoREGISTRO: TDateTimeField;
    ComboGrupo: TRxDBLookupCombo;
    Label2: TLabel;
    Label3: TLabel;
    ComboSubGrupo: TRxDBLookupCombo;
    Label4: TLabel;
    ComboVaricacao: TRxDBLookupCombo;
    Label5: TLabel;
    ComboMarca: TRxDBLookupCombo;
    DSSQLVariacao: TDataSource;
    SQLMarca: TRxQuery;
    SQLMarcaMARCICOD: TIntegerField;
    SQLMarcaMARCA60DESCR: TStringField;
    SQLMarcaPENDENTE: TStringField;
    SQLMarcaREGISTRO: TDateTimeField;
    DSSQLMarca: TDataSource;
    PageControl1: TPageControl;
    TabCotacoes: TTabSheet;
    DBGridLista: TDBGrid;
    TabProdutos: TTabSheet;
    DBGridProdutos: TDBGrid;
    DSSQLProduto: TDataSource;
    SQLProdutoPRODN3VLRCUSTOMED: TBCDField;
    SQLProdutoPRODN3VLRCOMPRAMED: TBCDField;
    Progress: TGauge;
    SQLProdutoPENDENTE: TStringField;
    SQLProdutoREGISTRO: TDateTimeField;
    SQLProdutoComposicao: TRxQuery;
    SQLProdutoComposicaoPRODICOD: TIntegerField;
    SQLProdutoComposicaoPRODICODFILHO: TIntegerField;
    SQLProdutoComposicaoPRODN3QTDE: TBCDField;
    SQLProdutoComposicaoPENDENTE: TStringField;
    SQLProdutoComposicaoREGISTRO: TDateTimeField;
    SQLProdutoComposicaoPRODN3VLRTOTAL: TBCDField;
    BtnAtualizarMoeda: TSpeedButton;
    BtnProduto: TSpeedButton;
    CheckCotacaoDia: TCheckBox;
    procedure SQLCotacaoMoedaBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure BtnAtualizarMoedaClick(Sender: TObject);
    procedure BtnProdutoClick(Sender: TObject);
  private
    CustoReais, DolarDia, ValorComposicao : Double;
    ProdutosAtualizados, ProdutosSemCusto, ProdutosSemMargem : Integer;
    Moeda : String;
  procedure  AtualizaMoeda;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaAtualizacaoMoeda: TFormTelaAtualizacaoMoeda;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormTelaAtualizacaoMoeda.SQLCotacaoMoedaBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  DM.CodigoAutomatico('COTACAOMOEDA',DSSQLCotacaoMoeda,DataSet,0,0);
end;

procedure TFormTelaAtualizacaoMoeda.FormCreate(Sender: TObject);
begin
  inherited;
  SQLCotacaoMoeda.Open;
  SQLGrupo.Open;
  SQLSubGrupo.Open;
  SQLVariacao.Open;
  SQLMarca.Open;
end;

procedure TFormTelaAtualizacaoMoeda.BtnAtualizarMoedaClick(
  Sender: TObject);
begin
  inherited;
  if SQLProduto.IsEmpty then
    begin
      Informa('Nenhum Produto foi Selecionado. Verifique!');
      Abort;
    end;
  BtnAtualizarMoeda.Enabled := False;
  Case RadioMoeda.ItemIndex of
    0 : Moeda := 'U$$';
  end;  
  if (EditVlrDia.Value > 0) or (CheckCotacaoDia.Checked) then
    begin
      if (EditFonte.Text <> '') or (CheckCotacaoDia.Checked) then
        begin
          SQLGeral.Close;
          SQLGeral.SQL.Clear;
          SQLGeral.SQL.ADD('SELECT * FROM COTACAOMOEDA WHERE CTMOA5MOEDA = "' + MOEDA +  '" AND ');
          SQLGeral.SQL.ADD('CTMODDIA = "'+ FormatDateTime('mm/dd/yyyy',EditDia.Date) + '"');
          SQLGeral.Open;
          if not SQLGeral.IsEmpty then
            begin
              if Pergunta('NAO', 'Já existe uma cotação desta Moeda(' + Moeda + ')' + ' no dia de Hoje!' + #13
                          + 'Deseja Continuar Mesmo Assim?') then
                begin
                  AtualizaMoeda;
                end
              else
              Informa('Operação Cancelada!');
            end
          else
            AtualizaMoeda;  
        end
      else
        Informa('Por Favor Preencha a Fonte de Extração!');
    end
  else
    Informa('Por Favor Preencha o Valor da Moeda do Dia!');
  BtnAtualizarMoeda.Enabled := True;
  PageControl1.ActivePage := TabCotacoes;
  Progress.Progress := 0;
end;

procedure TFormTelaAtualizacaoMoeda.BtnProdutoClick(Sender: TObject);
begin
  inherited;
    if SQLProduto.Active then SQLProduto.Close;
    if ComboGrupo.Value <> '' then
      SQLProduto.MacroByName('GRUPO').AsString := 'GRUPICOD = ' + ComboGrupo.Value
    else
      SQLProduto.MacroByName('GRUPO').AsString := '0=0';

    if ComboSubGrupo.Value <> '' then
      SQLProduto.MacroByName('SUBGRUPO').AsString := 'SUBGICOD = ' + ComboSubGrupo.Value
    else
      SQLProduto.MacroByName('SUBGRUPO').AsString := '0=0';

    if ComboVaricacao.Value <> '' then
      SQLProduto.MacroByName('VARIACAO').AsString := 'VARIICOD = ' + ComboVaricacao.Value
    else
      SQLProduto.MacroByName('VARIACAO').AsString := '0=0';

    if ComboMarca.Value <> '' then
      SQLProduto.MacroByName('MARCA').AsString := 'MARCICOD = ' + ComboMarca.Value
    else
      SQLProduto.MacroByName('MARCA').AsString := '0=0';

    SQLProduto.Open;
    PageControl1.ActivePage := TabProdutos;
end;
procedure TFormTelaAtualizacaoMoeda.AtualizaMoeda;
begin
  SQLCotacaoMoeda.Append;
  SQLCotacaoMoedaCTMOA5MOEDA.AsString  := MOEDA;
  SQLCotacaoMoedaCTMOA60FONTE.AsString := EditFonte.Text;
  SQLCotacaoMoedaCTMODDIA.AsDateTime   := EditDia.Date;
  SQLCotacaoMoedaCTMON3VLRDIA.AsFloat  := EditVlrDia.Value;
  SQLCotacaoMoedaPENDENTE.AsString     := 'S';
  SQLCotacaoMoedaREGISTRO.AsDateTime   := Now;
  SQLCotacaoMoeda.Post;
  SQLCotacaoMoeda.Close;
  SQLCotacaoMoeda.Open;
  SQLProduto.Last;
  SQLProduto.First;
  MemoResult.Lines.Clear;
  MemoResult.Lines.Append('Início da Atualização...');
  MemoResult.Lines.Append(IntToStr(SQLProduto.RecordCount) + ' Produtos Selecionados...');
  MemoResult.Update;
  Progress.Progress := 0;
  Progress.MinValue := 0;
  Progress.MaxValue := SQLProduto.RecordCount;
  Progress.Update;
  DolarDia := EditVlrDia.Value;
  ProdutosAtualizados := 0;
  ProdutosSemCusto    := 0;
  ProdutosSemMargem   := 0;
  SQLProdutoComposicao.Open;
  while not SQLProduto.Eof do
    begin
      if SQLProdutoPRODN3DOLARCUSTO.AsFloat > 0 then
        begin
          if SQLProdutoPRODN3PERCMARGLUCR.AsFloat > 0 then
            begin
              CustoReais := SQLProdutoPRODN3DOLARCUSTO.AsFloat * DolarDia;
              SQLProduto.Edit;
              SQLProdutoPRODN3VLRVENDA.AsFloat := CalculaPrecoVenda(SQLProdutoPRODICOD.AsInteger,CustoReais,SQLProdutoPRODN3PERCMARGLUCR.AsFloat);
              // Lança histórico de reajuste de preços.
              LancaReajustePreco(SQLProdutoPRODN3VLRVENDA.AsFloat,
                                 SQLProdutoPRODN3VLRCOMPRA.AsFloat,
                                 SQLProdutoPRODN3VLRCOMPRAMED.AsFloat,
                                 SQLProdutoPRODN3VLRCUSTO.AsFloat,
                                 SQLProdutoPRODN3VLRCUSTOMED.AsFloat,
                                 SQLProdutoPRODN3PERCMARGLUCR.AsFloat,
                                 SQLProdutoPRODICOD.AsInteger);

              SQLProdutoPENDENTE.AsString   := 'S';
              SQLProdutoREGISTRO.AsDateTime := Now;
              SQLProduto.Post;
              SQLProdutoComposicao.Close;
              SQLProdutoComposicao.MacroByName('MFiltro').AsString := 'PRODICODFILHO = ' + SQLProdutoPRODICOD.AsString;
              SQLProdutoComposicao.Open;
              if not SQLProdutoComposicao.IsEmpty then
                begin
                  SQLProdutoComposicao.Edit;
                  SQLProdutoComposicaoPRODN3VLRTOTAL.AsFloat := SQLProdutoPRODN3VLRVENDA.AsFloat;
                  SQLProdutoComposicao.Post;
                end;
              ProdutosAtualizados := ProdutosAtualizados + 1;
            end
          else
            Inc(ProdutosSemMargem);
        end
      else
        Inc(ProdutosSemCusto);

      SQLProduto.Next;
      Progress.Progress := Progress.Progress + 1;
      Progress.Update;
      Application.ProcessMessages;
    end;
    
    SQLProduto.First;
    Progress.Progress := 0;
    Progress.MinValue := 0;
    Progress.MaxValue := SQLProduto.RecordCount;
    while not SQLProduto.Eof do
      begin
        SQLProdutoComposicao.Close;
        SQLProdutoComposicao.MacroByName('MFiltro').AsString := 'PRODICOD = ' + SQLProdutoPRODICOD.AsString;
        SQLProdutoComposicao.Open;
        if not SQLProdutoComposicao.IsEmpty then
          begin
            SQLProdutoComposicao.First;
            while not SQLProdutoComposicao.Eof do
              begin
                ValorComposicao := ValorComposicao + (SQLProdutoComposicaoPRODN3VLRTOTAL.AsFloat);
                SQLProdutoComposicao.Next;
                SQLProdutoComposicaoPRODICOD.AsString;
              end;
            if ValorComposicao > 0 then
              begin
                SQLProduto.Edit;
                SQLProdutoPRODN3VLRVENDA.AsFloat := ValorComposicao;
                SQLProduto.Post;
              end;
          end;
        SQLProduto.Next;
        ValorComposicao := 0;
        Progress.Progress := Progress.Progress + 1;
        Application.ProcessMessages;
      end;

    MemoResult.Lines.Append(IntToStr(ProdutosAtualizados) + ' Produtos Atualizados!');
    MemoResult.Lines.Append(IntToStr(ProdutosSemCusto)    + ' Produtos NÃO Atualizados. Sem Custo!');
    MemoResult.Lines.Append(IntToStr(ProdutosSemMargem)   + ' Produtos NÃO Atualizados. Sem Margem!');
    MemoResult.Update;
    MemoResult.Lines.Strings[0];
    Informa('Término da Atualização!');
end;
end.
