unit TelaConsultaRapidaItem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Grids, DBGrids, jpeg, ExtCtrls,
  DBCtrls, RXCtrls, Placemnt, RxQuery, Mask, ToolEdit, CurrEdit, RxDBComb;

type
  TFormTelaConsultaRapidaItem = class(TForm)
    DSTemplate: TDataSource;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA30CODESTRUT: TStringField;
    SQLProdutoPRODA60CODBAR: TStringField;
    SQLProdutoPRODA15CODANT: TStringField;
    SQLProdutoPRODA60REFER: TStringField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoPRODA30ADESCRREDUZ: TStringField;
    SQLProdutoPRODN3PESOBRUTO: TBCDField;
    SQLProdutoPRODN3PESOLIQ: TBCDField;
    SQLProdutoPRODN3CAPACEMBAL: TBCDField;
    SQLProdutoPRODN3VLRVENDA: TBCDField;
    RxLabel1: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    SQLProdutoPRODIAGRUPGRADE: TIntegerField;
    SQLProdutoPRODA255DESCRTEC: TStringField;
    SQLProdutoMARCICOD: TIntegerField;
    SQLProdutoPRODDINIPROMO: TDateTimeField;
    SQLProdutoPRODN3VLRVENDAPROM: TBCDField;
    FormStorage: TFormStorage;
    IndiceSelec: TEdit;
    SQLProdutoTAMANHOLOOKUP: TStringField;
    SQLProdutoGRTMICOD: TIntegerField;
    SQLProdutoCORICOD: TIntegerField;
    SQLProdutoGRADICOD: TIntegerField;
    LblNomeSistema: TRxLabel;
    SQLProdutoSaldoEmpresa: TFloatField;
    SQLGeral: TRxQuery;
    SQLCOR: TTable;
    SQLMarca: TTable;
    SQLGradeTamanho: TTable;
    RxLabel7: TRxLabel;
    RxLabel8: TRxLabel;
    RxLabel9: TRxLabel;
    SQLCORCORICOD: TIntegerField;
    SQLCORCORA30DESCR: TStringField;
    SQLMarcaMARCICOD: TIntegerField;
    SQLMarcaMARCA60DESCR: TStringField;
    SQLProdutoPRODICODBALANCA: TIntegerField;
    SQLProdutoMarcaLookup: TStringField;
    SQLProdutoCorLookup: TStringField;
    VALOR: TEdit;
    ListaIndices: TTextListBox;
    DBText1: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBGridLista: TDBGrid;
    RxLabel5: TRxLabel;
    DBText5: TDBText;
    TblGrupo: TTable;
    TblSubGrupo: TTable;
    TblVariacao: TTable;
    TblUnidade: TTable;
    SQLProdutoGrupoLookup: TStringField;
    SQLProdutoUNIDICOD: TIntegerField;
    SQLProdutoGRUPICOD: TIntegerField;
    SQLProdutoSUBGICOD: TIntegerField;
    SQLProdutoVARIICOD: TIntegerField;
    SQLProdutoSubGrupoLookup: TStringField;
    SQLProdutoVariacaoLookup: TStringField;
    SQLProdutoUnidadeLookup: TStringField;
    RxLabel10: TRxLabel;
    DBText10: TDBText;
    RxLabel11: TRxLabel;
    DBText11: TDBText;
    DBText6: TDBText;
    RxLabel12: TRxLabel;
    DBText8: TDBText;
    SQLProdutoPRODDFIMPROMO: TDateTimeField;
    SQLProdutoPRODCSUBSTRIB: TStringField;
    DBText2: TDBText;
    ComboTemSubst: TRxDBComboBox;
    procedure VALORKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListaIndicesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListaIndicesExit(Sender: TObject);
    procedure FormStorageRestorePlacement(Sender: TObject);
    procedure SQLProdutoCalcFields(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaRapidaItem: TFormTelaConsultaRapidaItem;

implementation

uses TelaItens, UnitLibrary, DataModulo;

{$R *.DFM}

procedure TFormTelaConsultaRapidaItem.VALORKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
 CampoPesq : string ;
begin
  case key of
    VK_RETURN :
        begin
          if Valor.Text = '' then
          begin
            DBGridLista.Setfocus ;
            exit ;
          end ;

          CampoPesq := '' ;
          if ListaIndices.Items[ListaIndices.ItemIndex] = 'Código Interno' then
            CampoPesq := 'PRODICOD' ;
          if ListaIndices.Items[ListaIndices.ItemIndex] = 'Descrição' then
            CampoPesq := 'PRODA60DESCR' ;
          if ListaIndices.Items[ListaIndices.ItemIndex] = 'Referência' then
            CampoPesq := 'PRODA60REFER' ;
          if ListaIndices.Items[ListaIndices.ItemIndex] = 'Código Antigo' then
            CampoPesq := 'PRODA15CODANT' ;
          if ListaIndices.Items[ListaIndices.ItemIndex] = 'Código Barras' then
            CampoPesq := 'PRODA60CODBAR' ;
          if ListaIndices.Items[ListaIndices.ItemIndex] = 'Código Balança' then
            CampoPesq := '' ;
          if ListaIndices.Items[ListaIndices.ItemIndex] = 'Código Marca' then
            CampoPesq := 'MARCICOD' ;

          if CampoPesq <> '' then
          begin
            SQLProduto.Close ;
            SQLProduto.SQL.Clear ;
            SQLProduto.SQL.Add('select * from PRODUTO') ;
            SQLProduto.SQL.Add('where') ;
            if Pos('*', Valor.Text) > 0 then
              SQLProduto.SQL.Add(CampoPesq + ' like "%' + Copy(Valor.Text, 2, Length(Valor.Text)) + '%"')
            else
              SQLProduto.SQL.Add(CampoPesq + ' like "' + Valor.Text + '%"') ;

            SQLProduto.SQL.Add('order by ' + CampoPesq) ;
            SQLProduto.Open ;
            DBGridLista.SetFocus;
          end ;
        end ;
    VK_DOWN :
        begin
          DSTemplate.DataSet.Next;
          DBGridLista.SetFocus;
        end;
    VK_UP:
        begin
          DSTemplate.DataSet.Prior;
          DBGridLista.SetFocus;
        end;
  end ;
end;

procedure TFormTelaConsultaRapidaItem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree ;
end;

procedure TFormTelaConsultaRapidaItem.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Escape then
    begin
      FormTelaItens.EntradaDados.SelectAll;
      Close;
      CodigoProduto := '';
    end;
end;

procedure TFormTelaConsultaRapidaItem.FormCreate(Sender: TObject);
begin
  FormStorage.IniFileName := Application.Title + '.ini' ;
  FormStorage.IniSection  := Name;
  FormStorage.Active      := true;

  Top    := FormTelaItens.Top ;
  Left   := FormTelaItens.Left ;
  Height := FormTelaItens.Height ;
  Width  := FormTelaItens.Width ;

  CodigoProduto := '' ;
  if not SQLCOR.Active then SQLCOR.Open;
  if not SQLMarca.Active then SQLMarca.Open;
  if not SQLGradeTamanho.Active then SQLGradeTamanho.Open;

end;

procedure TFormTelaConsultaRapidaItem.DBGridListaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_Return) then
  begin
    CodigoProduto := SQLProduto.FieldByName('PRODICOD').AsString;
    FormTelaConsultaRapidaItem.ModalResult := MrOK;
  end ;
end;

procedure TFormTelaConsultaRapidaItem.ListaIndicesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    VALOR.Setfocus ;
end;

procedure TFormTelaConsultaRapidaItem.ListaIndicesExit(Sender: TObject);
begin
  IndiceSelec.Text := IntToStr(ListaIndices.ItemIndex) ;
end;

procedure TFormTelaConsultaRapidaItem.FormStorageRestorePlacement(
  Sender: TObject);
begin
  if IndiceSelec.Text <> '' then
    ListaIndices.ItemIndex := StrToInt(IndiceSelec.Text)
  else
    ListaIndices.ItemIndex := 1 ;
end;

procedure TFormTelaConsultaRapidaItem.SQLProdutoCalcFields(
  DataSet: TDataSet);
begin
  if not FileExists('NaoMostraSaldoConsultaProduto.Arq') then
    begin
      SQLProdutoSaldoEmpresa.Value := 0 ;
      SQLGeral.Close ;
      SQLGeral.SQL.Clear ;
      SQLGeral.SQL.Add('select PSLDN3QTDE from PRODUTOSALDO') ;
      SQLGeral.SQL.Add('where EMPRICOD = ' + EmpresaPadrao) ;
      SQLGeral.SQL.Add('and   PRODICOD = ' + SQLProdutoPRODICOD.AsString) ;
      SQLGeral.Open ;
      if not SQLGeral.Eof then
        SQLProdutoSaldoEmpresa.Value := SQLGeral.FieldByName('PSLDN3QTDE').Value ;
    end ;
//  SQLProdutoMarcaLookup.Value := SQLLocate('MARCA', 'MARCICOD', 'MARCA60DESCR', SQLProdutoMARCICOD.AsString) ;
//  SQLProdutoCorLookup.Value   := SQLLocate('COR', 'CORICOD', 'CORA30DESCR', SQLProdutoCORICOD.AsString) ;
end;

procedure TFormTelaConsultaRapidaItem.FormActivate(Sender: TObject);
begin
  if FormTelaItens.Visible then
    if (FormTelaItens.EntradaDados.Text <> '') and not IsNumeric(FormTelaItens.EntradaDados.Text, 'INTEGER') then
      begin
        //ESTE CÓDIGO SERVE SETAR A PROCURA POR DESCRICAO CASO ESTEJA SETADA COMO
        //ALGUM CAMPO NUMÉRICO PARA NÃO DAR ERRO
        if not ListaIndices.ItemIndex in [1,2,3,4] then
          ListaIndices.ItemIndex := 1 ;
        VALOR.Text := FormTelaItens.EntradaDados.Text ;
        VALORKeyDown(Sender,Enter,[ssAlt]);
      end ;
  VALOR.SelectAll;
  VALOR.SetFocus;
end;

end.
