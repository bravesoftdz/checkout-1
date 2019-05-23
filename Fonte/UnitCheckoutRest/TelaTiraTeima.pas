unit TelaTiraTeima;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, JPEG, DBCtrls, RXCtrls, Mask, ToolEdit, CurrEdit, EWall,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaTiraTeima = class(TForm)
    RxLabel1: TRxLabel;
    LBPreco: TRxLabel;
    TimerTiraTela: TTimer;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    SaldoAtual: TCurrencyEdit;
    PrecoNormal: TCurrencyEdit;
    PrecoPromocao: TCurrencyEdit;
    DescricaoProduto: TRxLabel;
    Foto: TImage;
    DescricaoTecnica: TLabel;
    RxLabel5: TRxLabel;
    EntradaDados: TEdit;
    LBMarca: TRxLabel;
    lbPREVCOMPRA: TRxLabel;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ptopo: TAdvOfficeStatusBar;
    LblNomeSistema: TRxLabel;
    ImgDesligar: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TimerTiraTelaTimer(Sender: TObject);
    procedure ImgDesligarClick(Sender: TObject);
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

uses TelaItens, UnitLibrary, DataModulo, UnitCheckoutLibrary, DBTables;

{$R *.DFM}

procedure TFormTelaTiraTeima.FormCreate(Sender: TObject);
begin
  if DM.SQLConfigVendaCFVEITEMPOCONSPROD.Value > 0 then
    TimerTiraTela.Interval := DM.SQLConfigVendaCFVEITEMPOCONSPROD.Value * 1000 ;
end;

procedure TFormTelaTiraTeima.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_Escape) then Close ;
  if (Key = VK_Return) and (EntradaDados.Text <> '') then
    begin
      if EncontrouProduto(EntradaDados.Text,FormTelaItens.SQLProduto) then
        begin
          // RETORNA SALDO DO PRODUTO
          DM.SQLTemplate.Close;
          DM.SQLTemplate.SQL.Clear;
          DM.SQLTemplate.SQL.Add('select PRODUTO.PRODICOD,');
          DM.SQLTemplate.SQL.Add('(select PRODUTOSALDO.PSLDN3QTDE from PRODUTOSALDO');
          DM.SQLTemplate.SQL.Add('where PRODUTOSALDO.EMPRICOD = ' + EmpresaPadrao);
          DM.SQLTemplate.SQL.Add('and   PRODUTOSALDO.PRODICOD = PRODUTO.PRODICOD) as QUANT');
          DM.SQLTemplate.SQL.Add('from PRODUTO');
          DM.SQLTemplate.SQL.Add('where PRODUTO.PRODICOD = ' + FormTelaItens.SQLProdutoPRODICOD.AsString);
          DM.SQLTemplate.Open ;

          EntradaDados.Text        := CodigoProduto;
          EntradaDados.Update;
          DescricaoProduto.Caption := FormTelaItens.SQLProdutoPRODICOD.AsString+'-'+FormTelaItens.SQLProduto.FieldByName('PRODA60DESCR').AsString;
          PrecoNormal.Value        := FormTelaItens.SQLProduto.FieldByName('PRODN3VLRVENDA').AsFloat;
          if ((FormTelaItens.SQLProduto.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (FormTelaItens.SQLProduto.FieldByName('PRODDFIMPROMO').AsDateTime >= Now)) or
             ((FormTelaItens.SQLProduto.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (FormTelaItens.SQLProduto.FieldByName('PRODDFIMPROMO').AsString = '')) then
            PrecoPromocao.Value    := FormTelaItens.SQLProduto.FieldByName('PRODN3VLRVENDAPROM').AsFloat
          else
            PrecoPromocao.Value    := 0;
          if FormTelaItens.SQLProduto.FieldByName('PRODA255DESCRTEC').AsString <> '' then
            DescricaoTecnica.Caption := 'Ref.'+FormTelaItens.SQLProduto.FieldByName('PRODA60REFER').AsString+CHR(13)+
                                                          FormTelaItens.SQLProduto.FieldByName('PRODA255DESCRTEC').AsString;

          LBMarca.Caption         := dm.SQLLocate('MARCA','MARCICOD','MARCA60DESCR',FormTelaItens.SQLProdutoMARCICOD.AsString);
          if FormTelaItens.SQLProduto.FieldByName('PRODDPREVCOMPRA').AsString <> '' then
            lbPREVCOMPRA.Caption  := 'Prev.Compra. '+ FormTelaItens.SQLProduto.FieldByName('PRODDPREVCOMPRA').AsString
          else
            lbPREVCOMPRA.Caption  := '';
          SaldoAtual.Value := 0;
          if DM.SQLTemplate.FieldByName('QUANT').AsString <> '' then
            SaldoAtual.Value := DM.SQLTemplate.FieldByName('QUANT').Value;

          // Mostra Imagem Associada ao Produto
          {if (FormTelaItens.SQLProdutoPRODBIMAGEM.BlobSize <> 0) then
            begin
              BlobStream := FormTelaItens.SQLProduto.CreateBlobStream(FormTelaItens.SQLProdutoPRODBIMAGEM,bmRead);
              JPEGImage  := TJPEGImage.Create;
              try
                JPEGImage.LoadFromStream(BlobStream);
                Foto.Picture.Assign(JPEGImage);
              finally
                BlobStream.Free;
                JPEGImage.Free;
              end;
            end
          else
            Foto.Picture.Assign(FormTelaItens.Foto.Picture) ;}
        end
      else
        InformaG('Produto não encontrado!');
    end;
end;

procedure TFormTelaTiraTeima.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree ;
  FormTelaItens.SQLProduto.Close;
end;

procedure TFormTelaTiraTeima.TimerTiraTelaTimer(Sender: TObject);
begin
  Close ;
end;

procedure TFormTelaTiraTeima.ImgDesligarClick(Sender: TObject);
begin
  Close;
end;

end.
