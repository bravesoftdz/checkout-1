unit TelaObsProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, RXCtrls, DB, DBTables, Grids, DBGrids, Buttons,
  StdCtrls, DBCtrls, dbcgrids, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaObsProduto = class(TForm)
    DSMemObsProduto: TDataSource;
    TblMemObsProduto: TTable;
    TblMemObsProdutoMarcado: TBooleanField;
    TblMemObsProdutoSigla: TStringField;
    DBGridItens: TDBGrid;
    Memo: TMemo;
    Label1: TLabel;
    TblMemObsProdutoQuantidade: TStringField;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ptopo: TAdvOfficeStatusBar;
    lbTitulo: TRxLabel;
    ImgDesligar: TImage;
    btDesmarcar: TSpeedButton;
    btMarcar: TSpeedButton;
    btRetornar: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure DBGridItensDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btDesmarcarClick(Sender: TObject);
    procedure btMarcarClick(Sender: TObject);
    procedure btRetornarClick(Sender: TObject);
    procedure CtrlGridProdutosClick(Sender: TObject);
    procedure DBGridItensColExit(Sender: TObject);
    procedure DBGridItensDblClick(Sender: TObject);
    procedure ImgDesligarClick(Sender: TObject);
  private
    { Private declarations }
    OriginalOptions : TDBGridOptions;
    procedure ItemSaveBoolean(Grid : TDBGrid) ;
  public
    { Public declarations }
  end;

var
  FormTelaObsProduto: TFormTelaObsProduto;

implementation

uses DataModulo, DataModuloTemplate;

{$R *.dfm}

procedure TFormTelaObsProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree ;
end;

procedure TFormTelaObsProduto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_Return then
    Perform(Wm_NextDlgCtl,0,0);
  if Key = VK_Escape then
    Close ;
end;

procedure TFormTelaObsProduto.FormCreate(Sender: TObject);
begin
  try
    TblMemObsProduto.Close ;
    TblMemObsProduto.DeleteTable ;
    TblMemObsProduto.CreateTable ;
  except
    TblMemObsProduto.CreateTable ;
  end ;

  TblMemObsProduto.open;
  // Carregar itens na temporaria itens
  dm.SQLTemplate.Close;
  dm.SQLTemplate.sql.Text := 'Select * from ObsProdutoRest where OBPRA1TIPO="O" Order by OBPRIORDEM ASC' ;
  dm.SQLTemplate.Open;
  dm.SQLTemplate.first;
  while not dm.SQLTemplate.eof do
    begin
      TblMemObsProduto.Append ;
      TblMemObsProdutoQuantidade.Value := '1' ;
      TblMemObsProdutoSigla.Value      := dm.SQLTemplate.fieldbyname('OBPRA15SIGLA').Value ;
      TblMemObsProdutoMarcado.Value    := False;
      TblMemObsProduto.Post ;
      dm.SQLTemplate.Next ;
    end;
  dm.SQLTemplate.Close;

  TblMemObsProduto.close;
  TblMemObsProduto.open;
end;

procedure TFormTelaObsProduto.ItemSaveBoolean(Grid : TDBGrid) ;
begin
  TblMemObsProduto.Edit ;
  TblMemObsProdutoMarcado.Value := not TblMemObsProdutoMarcado.Value ;
  TblMemObsProduto.Post ;
end ;

procedure TFormTelaObsProduto.DBGridItensDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
Const
  CtrlState : array[Boolean] of Integer = (DFCS_BUTTONCHECK,
                                           DFCS_BUTTONCHECK or DFCS_CHECKED);
begin
  if Column.Field.DataType = ftBoolean then
    begin
      DBGridItens.Canvas.FillRect(Rect);
      DrawFrameControl(DBGridItens.Canvas.Handle,
                       Rect,
                       DFC_BUTTON,
                       CtrlState[Column.Field.AsBoolean]);
    end;
end;

procedure TFormTelaObsProduto.DBGridItensKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_SPACE ) then
    begin
      DBGridItens.Columns[0].ReadOnly := True;

      if TblMemObsProdutoMarcado.AsBoolean = True then
        ItemSaveBoolean(DBGridItens)
      else
        ItemSaveBoolean(DBGridItens);

      DBGridItens.Columns[0].ReadOnly := False;
    end;
end;

procedure TFormTelaObsProduto.btDesmarcarClick(Sender: TObject);
begin
  TblMemObsProduto.First;
  while not TblMemObsProduto.eof do
    begin
      TblMemObsProduto.Edit;
      TblMemObsProdutoMarcado.Value := False;
      TblMemObsProduto.Post;
      TblMemObsProduto.Next;
    end;
  TblMemObsProduto.First;
end;

procedure TFormTelaObsProduto.btMarcarClick(Sender: TObject);
begin
  TblMemObsProduto.First;
  while not TblMemObsProduto.eof do
    begin
      TblMemObsProduto.Edit;
      TblMemObsProdutoMarcado.Value := True;
      TblMemObsProduto.Post;
      TblMemObsProduto.Next;
    end;
  TblMemObsProduto.First;
end;

procedure TFormTelaObsProduto.btRetornarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormTelaObsProduto.CtrlGridProdutosClick(Sender: TObject);
begin
  ItemSaveBoolean(DBGridItens);
end;

procedure TFormTelaObsProduto.DBGridItensColExit(Sender: TObject);
begin
  if DBGridItens.SelectedField.DataType = ftBoolean then
    DBGridItens.Options := OriginalOptions;
end;

procedure TFormTelaObsProduto.DBGridItensDblClick(Sender: TObject);
begin
  if TblMemObsProdutoMarcado.AsBoolean = True then
    ItemSaveBoolean(DBGridItens)
  else
    ItemSaveBoolean(DBGridItens);
end;

procedure TFormTelaObsProduto.ImgDesligarClick(Sender: TObject);
begin
  Close;
end;

end.
