unit TelaTiraTeima;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, JPEG, DBCtrls, RXCtrls, Mask, ToolEdit, CurrEdit, EWall,
  DB, DBTables, RxQuery;

type
  TFormTelaTiraTeima = class(TForm)
    RxLabel2: TRxLabel;
    DescricaoProduto: TRxLabel;
    EntradaDados: TEdit;
    DB: TDatabase;
    SQLTemplate: TRxQuery;
    BackGround: TEvWallPaper;
    Foto: TImage;
    PrecoNormal: TRxLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    BlobStream : TStream;
    JPEGImage  : TJPEGImage;
  end;

var
  FormTelaTiraTeima: TFormTelaTiraTeima;

implementation


{$R *.DFM}

procedure TFormTelaTiraTeima.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var EncontrouProduto : Boolean;
    Codigo, CodigoBarrasProduto : String;
begin
  EncontrouProduto := False;
  if (Key = VK_Return) and (EntradaDados.Text <> '') then
    begin
      Codigo := EntradaDados.Text;
      // PROCURAR NO CODIGO BARRAS PRINCIPAL
      SQLTemplate.Close ;
      SQLTemplate.SQL.Clear ;
      SQLTemplate.SQL.Add('select * from PRODUTO') ;
      SQLTemplate.SQL.Add('where PRODCATIVO = "S" and PRODA60CODBAR = "' + EntradaDados.Text + '"') ;
      SQLTemplate.Open ;
      SQLTemplate.First ;
      if not SQLTemplate.EOF then
        begin
          Codigo              := SQLTemplate.findfield('PRODICOD').AsString;
          CodigoBarrasProduto := SQLTemplate.FindField('PRODA60CODBAR').Value;
        end
      else
        begin
          // PROCURAR NA TAB.CD BARRAS AUX
          SQLTemplate.Close ;
          SQLTemplate.SQL.Clear ;
          SQLTemplate.SQL.Add('select * from PRODUTOBARRAS') ;
          SQLTemplate.SQL.Add('where PRBAA15BARRAS = "' + EntradaDados.Text + '"') ;
          SQLTemplate.Open ;
          SQLTemplate.First ;
          if not SQLTemplate.EOF then
            begin
              Codigo              := SQLTemplate.findfield('PRODICOD').AsString;
              CodigoBarrasProduto := SQLTemplate.FindField('PRBAA15BARRAS').Value;
            end;
        end;

      // PROCURAR PELO CD.INTERNO DO PRODUTO
      SQLTemplate.Close ;
      SQLTemplate.SQL.Clear ;
      SQLTemplate.SQL.Add('select * from PRODUTO') ;
      SQLTemplate.SQL.Add('where PRODCATIVO = "S" and PRODICOD = ' + Codigo) ;
      SQLTemplate.Open ;
      SQLTemplate.First ;
      if not SQLTemplate.EOF then
        EncontrouProduto := True ;

      if EncontrouProduto then
        begin
          EntradaDados.Text := '';
          EntradaDados.Update;
          DescricaoProduto.Caption := SQLTemplate.Fieldbyname('PRODA60DESCR').AsString;
          if ((SQLTemplate.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (SQLTemplate.FieldByName('PRODDFIMPROMO').AsDateTime >= Now) and (SQLTemplate.FieldByName('PRODN3VLRVENDAPROM').AsFloat>0)) or
             ((SQLTemplate.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (SQLTemplate.FieldByName('PRODDFIMPROMO').AsString = '') and (SQLTemplate.FieldByName('PRODN3VLRVENDAPROM').AsFloat>0)) then
            PrecoNormal.Caption   := FormatFloat('##0.00',SQLTemplate.FieldByName('PRODN3VLRVENDAPROM').AsFloat)
          else
            PrecoNormal.Caption   := FormatFloat('##0.00',SQLTemplate.FieldByName('PRODN3VLRVENDA').AsFloat);
        end
      else
        begin
          EntradaDados.Text := '';
          EntradaDados.Update;
          DescricaoProduto.Caption := 'Produto não Encontrado...';
          PrecoNormal.Caption      := '0,00'
          { PrecoPromocao.Value      := 0; }
        end;
    end;
end;

procedure TFormTelaTiraTeima.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree ;
  Application.Terminate;
end;

procedure TFormTelaTiraTeima.FormCreate(Sender: TObject);
begin
  db.Connected := True;

  if FileExists('Bmp\Logo PDV.Bmp') then
    Foto.Picture.LoadFromFile('Bmp\Logo PDV.Bmp') ;
  if FileExists('Bmp\Logo PDV.Jpg') then
    Foto.Picture.LoadFromFile('Bmp\Logo PDV.Jpg') ;
  if FileExists('Bmp\Fundo Consulta.Jpg') then
    BackGround.Picture.LoadFromFile('Bmp\Fundo Consulta.Jpg') ;
end;

end.
