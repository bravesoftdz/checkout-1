unit TelaConsultaRapidaItem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Grids, DBGrids, jpeg, ExtCtrls,
  DBCtrls, RXCtrls, Placemnt, RxQuery, Mask, ToolEdit, CurrEdit, RxDBComb,
  RxLookup;

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
    ComboMarca: TRxDBLookupCombo;
    dsSQLMarcaCombo: TDataSource;
    SQLMarcaCombo: TRxQuery;
    EditRef: TEdit;
    RxLabel2: TRxLabel;
    RxLabel6: TRxLabel;
    RxLabel13: TRxLabel;
    DBText7: TDBText;
    RxLabel14: TRxLabel;
    DBText9: TDBText;
    SQLProdutoPRODA60DIMENSAO: TStringField;
    SQLProdutoPRODBIMAGEM: TBlobField;
    lbVerFoto: TRxLabel;
    SQLProdutoPRODDPREVCOMPRA: TDateTimeField;
    RxLabel15: TRxLabel;
    DBText12: TDBText;
    DBText13: TDBText;
    RxLabel16: TRxLabel;
    SQLProdutoPRODDULTCOMPRA: TDateTimeField;
    SQLProdutoPRODN3QTDULTCOMPRA: TBCDField;
    SQLProdutoPRODN3VLRVENDA2: TBCDField;
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
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure lbVerFotoClick(Sender: TObject);
    procedure DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormActivate(Sender: TObject);
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

  Top    := FormTelaItens.Top ;
  Left   := FormTelaItens.Left ;
  Height := FormTelaItens.Height ;
  Width  := FormTelaItens.Width ;

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
  SQLProdutoSaldoEmpresa.Value := 0 ;
  if FileExists('MostraSaldo.txt') then
    begin
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
begin
  case key of
    VK_RETURN :
        begin
          If (Sender as TRxDBLookupCombo).IsDropDown Then
          begin
            (Sender as TRxDBLookUpCombo).CloseUp(True);
            Application.ProcessMessages;
          end;
          Perform(Wm_NextDlgCtl, 0, 0) ;

          SQLProduto.Close ;
          SQLProduto.SQL.Clear ;
          SQLProduto.SQL.Add('Select * from PRODUTO') ;
          SQLProduto.SQL.Add('Where PRODCATIVO = "S" and') ;
          if Valor.Text <> '' then
            begin
              if Pos('*', Valor.Text) > 0 then
                SQLProduto.SQL.Add('PRODA60DESCR like "%' + Copy(Valor.Text, 2, Length(Valor.Text)) + '%"')
              else
                SQLProduto.SQL.Add('PRODA60DESCR like "' + Valor.Text + '%"') ;

              if (EditRef.Text <> '') then
                begin
                  if Pos('*', EditRef.Text) > 0 then
                    SQLProduto.SQL.Add('and PRODA60REFER like "%' + Copy(EditRef.Text, 2, Length(EditRef.Text)) + '%"')
                  else
                    SQLProduto.SQL.Add('and PRODA60REFER like "' + EditRef.Text + '%"') ;
                end;

              if ComboMarca.Value <> '' then
                SQLProduto.SQL.Add('and MARCICOD = '+ ComboMarca.Value) ;

              SQLProduto.SQL.Add('order by PRODA60DESCR, PRODA60REFER') ;
              SQLProduto.Open ;
              if not SQLProduto.IsEmpty then
                DBGridLista.SetFocus;
            end;

          if (EditRef.Text <> '') and (VALOR.Text = '') then
            begin
              if Pos('*', EditRef.Text) > 0 then
                SQLProduto.SQL.Add('PRODA60REFER like "%' + Copy(EditRef.Text, 2, Length(EditRef.Text)) + '%"')
              else
                SQLProduto.SQL.Add('PRODA60REFER like "' + EditRef.Text + '%"') ;

              if ComboMarca.Value <> '' then
                SQLProduto.SQL.Add('and MARCICOD = '+ ComboMarca.Value) ;

              SQLProduto.SQL.Add('order by PRODA60DESCR, PRODA60REFER') ;
              SQLProduto.Open ;
              if not SQLProduto.IsEmpty then
                DBGridLista.SetFocus;
            end;

          if (ComboMarca.Value <> '') and (VALOR.Text = '') and (EditRef.Text = '') then
            begin
              SQLProduto.SQL.Add('MARCICOD = '+ ComboMarca.Value) ;

              SQLProduto.SQL.Add('order by PRODA60DESCR, PRODA60REFER') ;
              SQLProduto.Open ;
              if not SQLProduto.IsEmpty then
                DBGridLista.SetFocus;
            end;
        end ;
  end ;
end;


procedure TFormTelaConsultaRapidaItem.EditRefKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
    VK_RETURN : ComboMarca.SetFocus;
  end;
end;

procedure TFormTelaConsultaRapidaItem.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  if SQLProdutoPRODBIMAGEM.BlobSize <> 0 then
    begin
      lbVerFoto.Enabled := True;
      lbVerFoto.Update;
    end
  else
    begin
      lbVerFoto.Enabled := False;
      lbVerFoto.Update;
    end;
end;

procedure TFormTelaConsultaRapidaItem.lbVerFotoClick(Sender: TObject);
begin
  // Abrir Tela Cheia com a Foto Grande
  if (SQLProdutoPRODBIMAGEM.BlobSize <> 0) and (lbVerFoto.Enabled) then
    begin
      Application.CreateForm(TFormTelaFotoExpandida,FormTelaFotoExpandida);
      BlobStream := SQLProduto.CreateBlobStream(SQLProdutoPRODBIMAGEM,bmRead);
      JPEGImage  := TJPEGImage.Create;
      try
        JPEGImage.LoadFromStream(BlobStream);
        FormTelaFotoExpandida.Foto.Picture.Assign(JPEGImage);
      finally
        BlobStream.Free;
        JPEGImage.Free;
      end;
      FormTelaFotoExpandida.ShowModal;
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
          Brush.Color := clRed;
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

end.
