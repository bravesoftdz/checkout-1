unit TelaConsultaRapidaItem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Grids, DBGrids, jpeg, ExtCtrls,
  DBCtrls, RXCtrls, Placemnt, RxQuery, Mask, ToolEdit, CurrEdit, RxDBComb,
  RxLookup, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

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
    SQLProdutoPRODN3PESOBRUTO: TFloatField;
    SQLProdutoPRODN3PESOLIQ: TFloatField;
    SQLProdutoPRODN3CAPACEMBAL: TFloatField;
    SQLProdutoPRODN3VLRVENDA: TFloatField;
    SQLProdutoPRODIAGRUPGRADE: TIntegerField;
    SQLProdutoMARCICOD: TIntegerField;
    SQLProdutoPRODDINIPROMO: TDateTimeField;
    SQLProdutoPRODN3VLRVENDAPROM: TFloatField;
    FormStorage: TFormStorage;
    SQLProdutoTAMANHOLOOKUP: TStringField;
    SQLProdutoGRTMICOD: TIntegerField;
    SQLProdutoCORICOD: TIntegerField;
    SQLProdutoGRADICOD: TIntegerField;
    SQLProdutoSaldoEmpresa: TFloatField;
    SQLGeral: TRxQuery;
    SQLCOR: TTable;
    SQLMarca: TTable;
    SQLGradeTamanho: TTable;
    RxLabel8: TRxLabel;
    SQLCORCORICOD: TIntegerField;
    SQLCORCORA30DESCR: TStringField;
    SQLMarcaMARCICOD: TIntegerField;
    SQLMarcaMARCA60DESCR: TStringField;
    SQLProdutoPRODICODBALANCA: TIntegerField;
    SQLProdutoMarcaLookup: TStringField;
    SQLProdutoCorLookup: TStringField;
    VALOR: TEdit;
    DBGridLista: TDBGrid;
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
    ComboMarca: TRxDBLookupCombo;
    dsSQLMarcaCombo: TDataSource;
    SQLMarcaCombo: TRxQuery;
    EditRef: TEdit;
    RxLabel2: TRxLabel;
    RxLabel6: TRxLabel;
    RxLabel13: TRxLabel;
    SQLProdutoPRODA60DIMENSAO: TStringField;
    SQLProdutoPRODBIMAGEM: TBlobField;
    SQLProdutoPRODDPREVCOMPRA: TDateTimeField;
    SQLProdutoPRODDULTCOMPRA: TDateTimeField;
    SQLProdutoPRODN3QTDULTCOMPRA: TFloatField;
    SQLProdutoPRODN3VLRVENDA2: TFloatField;
    SQLProdutoPRODA255DESCRTEC: TMemoField;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ptopo: TAdvOfficeStatusBar;
    LblNomeSistema: TRxLabel;
    ImgDesligar: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLProdutoCalcFields(DataSet: TDataSet);
    procedure ComboMarcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure VALORKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditRefKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormActivate(Sender: TObject);
    procedure ImgDesligarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    BlobStream : TStream;
    JPEGImage  : TJPEGImage;
  end;

var
  FormTelaConsultaRapidaItem: TFormTelaConsultaRapidaItem;

implementation

uses TelaItens, UnitLibrary, DataModulo, TelaFotoExpandida, VarSys;

{$R *.DFM}

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
      CodigoProduto := '';
      Close;
    end;
end;

procedure TFormTelaConsultaRapidaItem.FormCreate(Sender: TObject);
begin
  FormStorage.IniFileName := Application.Title + '.ini' ;
  FormStorage.IniSection  := Name;
  FormStorage.Active      := true;

  CodigoProduto := '' ;
  if FormTelaItens.EntradaDados.Text <> '' then
    begin
      SQLProduto.Close ;
      SQLProduto.SQL.Clear ;
      SQLProduto.SQL.Add('Select * from PRODUTO') ;
      SQLProduto.SQL.Add('Where PRODCATIVO = "S" and') ;
      if Pos('*', FormTelaItens.EntradaDados.Text) > 0 then
        SQLProduto.SQL.Add('PRODA60DESCR like "%' + Copy(FormTelaItens.EntradaDados.Text, 2, Length(FormTelaItens.EntradaDados.Text)) + '%"')
      else
        SQLProduto.SQL.Add('PRODA60DESCR like "' + FormTelaItens.EntradaDados.Text + '%"') ;

      SQLProduto.SQL.Add('order by PRODA60DESCR, PRODA60REFER') ;
      SQLProduto.Open ;
    end;
  if not SQLCOR.Active then SQLCOR.Open;
  if not SQLMarca.Active then SQLMarca.Open;
  if not SQLGradeTamanho.Active then SQLGradeTamanho.Open;
  if not SQLMarcaCombo.Active then SQLMarcaCombo.Open;

  if UsaPrecoVenda <> 'A' then
    begin
      DBGridLista.Columns[4].Title.Caption := 'V.Varejo';
      DBGridLista.Columns[4].FieldName := 'PRODN3VLRVENDA';
    end
  else
    begin
      DBGridLista.Columns[4].Title.Caption := 'V.Atacado';
      DBGridLista.Columns[4].FieldName := 'PRODN3VLRVENDA2';
    end;  
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
end;

procedure TFormTelaConsultaRapidaItem.VALORKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
    VK_RETURN : EditRef.SetFocus;
    VK_DOWN   : DBGridLista.SetFocus;
  end;
end;

procedure TFormTelaConsultaRapidaItem.ComboMarcaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var Filtro, FiltroRef : string;
var I, vtamanho : integer;
begin
  case key of
    VK_RETURN :
        begin
          // Monta Filtro SQL para executar a pesquisa de produto
          Filtro := '';
          if (Valor.Text <> '') then
            begin
              if not FileExists('ProcuraContendo.txt') then
                begin
                  if Pos('*', Valor.Text) > 0 then
                    Filtro := 'PRODA60DESCR like "%' + Copy(Valor.Text, 2, Length(Valor.Text)) + '%"'
                  else
                    Filtro := 'PRODA60DESCR like "' + Valor.Text + '%"';
                end
              else
                begin
                  vtamanho   := length(Valor.Text)+1 ;
                  Valor.Text := Trim(Valor.Text)+' ' ;
                  Filtro   := '%';
                  For I := 1 to vtamanho do
                    begin
                      If Copy(Valor.Text,I,1)=' ' then
                        Filtro := Filtro+'%'
                      else
                        Filtro := Filtro+copy(Valor.Text,I,1);
                    end;
                  Filtro := 'PRODA60DESCR like "' + Filtro + '"';
                end;
            end;

          if (EditRef.Text <> '') then
            if (Filtro = '') then
              begin
                if not FileExists('ProcuraContendo.txt') then
                  begin
                    if Pos('*', Valor.Text) > 0 then
                      Filtro := 'PRODA60REFER like "' + Copy(EditRef.Text, 2, Length(EditRef.Text)) + '%"'
                    else
                      Filtro := 'PRODA60REFER like "%' + EditRef.Text + '%"';
                  end
                else
                  begin
                    vtamanho   := length(EditRef.Text)+1 ;
                    EditRef.Text := Trim(EditRef.Text)+' ' ;
                    FiltroRef   := '%';
                    For I := 1 to vtamanho do
                      begin
                        If Copy(EditRef.Text,I,1)=' ' then
                          FiltroRef := FiltroRef + '%'
                        else
                          FiltroRef := FiltroRef + copy(EditRef.Text,I,1);
                      end;
                    Filtro := 'PRODA60REFER like "' + FiltroRef + '"';
                  end;
              end
            else
              begin
                if not FileExists('ProcuraContendo.txt') then
                  begin
                    if Pos('*', Valor.Text) > 0 then
                      Filtro := Filtro + ' and PRODA60REFER like "' + Copy(EditRef.Text, 2, Length(EditRef.Text)) + '%"'
                    else
                      Filtro := Filtro + ' and PRODA60REFER like "%' + EditRef.Text + '%"';
                  end
                else
                  begin
                    vtamanho     := length(EditRef.Text)+1 ;
                    EditRef.Text := Trim(EditRef.Text)+' ' ;
                    FiltroRef    := FiltroRef + '%';
                    For I := 1 to vtamanho do
                      begin
                        If Copy(EditRef.Text,I,1)=' ' then
                          FiltroRef := FiltroRef + '%'
                        else
                          FiltroRef := FiltroRef + copy(EditRef.Text,I,1);
                      end;
                    Filtro := Filtro + ' and PRODA60REFER like "' + FiltroRef + '"';
                  end;
              end;

          if (ComboMarca.Value <> '') then
            if (Filtro = '') then
              Filtro :=  'MARCICOD = '+ ComboMarca.Value
            else
              Filtro :=  Filtro + ' and MARCICOD = '+ ComboMarca.Value;

          // Final do Filtro SQL
          if Filtro <> '' then
            begin
              SQLProduto.Close ;
              SQLProduto.SQL.Clear ;
              SQLProduto.SQL.Add('Select * from PRODUTO') ;
              SQLProduto.SQL.Add('Where PRODCATIVO = "S" and') ;
              SQLProduto.SQL.Add(Filtro);
              SQLProduto.SQL.Add('order by PRODA60DESCR, PRODA60REFER');
              SQLProduto.Open ;
              if not SQLProduto.IsEmpty then
                DBGridLista.SetFocus;
            end
          else
            valor.SetFocus;
        end;
  end ;
end;


procedure TFormTelaConsultaRapidaItem.EditRefKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
    VK_RETURN : ComboMarca.SetFocus;
  end;
end;

procedure TFormTelaConsultaRapidaItem.DBGridListaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ((SQLProduto.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (SQLProduto.FieldByName('PRODDFIMPROMO').AsDateTime >= Now) and (SQLProduto.FieldByName('PRODN3VLRVENDAPROM').AsFloat > 0)) or
     ((SQLProduto.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (SQLProduto.FieldByName('PRODDFIMPROMO').AsString = '') and (SQLProduto.FieldByName('PRODN3VLRVENDAPROM').AsFloat > 0)) then
    begin
      with (Sender as TDBGrid).Canvas do
        begin
          Brush.Color := $00E0C8B0;
          FillRect(Rect);
          TextOut(Rect.Left, Rect.Top,Column.Field.Text);
        end;
    end;
end;

procedure TFormTelaConsultaRapidaItem.FormActivate(Sender: TObject);
begin
  if not SQLProduto.IsEmpty then
    DBGridLista.SetFocus;
end;

procedure TFormTelaConsultaRapidaItem.ImgDesligarClick(Sender: TObject);
begin
  Close;
end;

end.
