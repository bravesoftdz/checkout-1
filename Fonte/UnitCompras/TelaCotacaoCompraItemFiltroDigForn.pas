unit TelaCotacaoCompraItemFiltroDigForn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralModalTemplate, StdCtrls, Buttons, Grids, DBGrids,
  DBCtrls, Mask, ToolEdit, RxLookup, DB, DBTables, RxQuery, jpeg, ExtCtrls,
  Placemnt, FormResources;

type
  TFormTelaCotacaoCompraItemFiltroDigForn = class(TFormTelaGeralModalTemplate)
    SQLFornecedor: TRxQuery;
    DSSQLFornecedor: TDataSource;
    DSTblTemporaria: TDataSource;
    TblTemporaria: TTable;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPRODA60DESCR: TStringField;
    TblTemporariaQTDEMBAL: TIntegerField;
    TblTemporariaPRODN3VLRCOMPRA: TBCDField;
    TblTemporariaQTDECOMPRADO: TBCDField;
    SQLFornecedorFORNICOD: TIntegerField;
    SQLFornecedorFORNA60RAZAOSOC: TStringField;
    TblTemporariaFORNICOD: TIntegerField;
    Label1: TLabel;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    GroupFiltro: TGroupBox;
    Label7: TLabel;
    ComboFornecedor: TRxDBLookupCombo;
    BTGravar: TBitBtn;
    TblTemporariaPRODA60REFER: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure ComboFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure BTGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    NotaCompraID : String
  end;
var
  FormTelaCotacaoCompraItemFiltroDigForn: TFormTelaCotacaoCompraItemFiltroDigForn;

implementation

uses DataModulo, WaitWindow, CadastroCotacaoCompra;

{$R *.dfm}

procedure TFormTelaCotacaoCompraItemFiltroDigForn.FormCreate(Sender: TObject);
begin
  inherited;
  TblTemporaria.Close ;
  try
    TblTemporaria.DeleteTable ;
    TblTemporaria.CreateTable ;
  except
    on E:Exception do
      begin
        if pos('Table is busy',E.Message) > 0 then
          ShowMessage('A tabela já está sendo usada por outro módulo, por favor verifique e tente novamente.');
        TblTemporaria.CreateTable ;
      end;
  end ;
  SQLFornecedor.Open;
  TblTemporaria.Open;
end;

procedure TFormTelaCotacaoCompraItemFiltroDigForn.ComboFornecedorKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  case key of
    VK_RETURN : begin
                  If (Sender as TRxDBLookupCombo).IsDropDown Then
                    begin
                      (Sender as TRxDBLookUpCombo).CloseUp(True);
                      Application.ProcessMessages;
                    end;
                end;
  end;
end;

procedure TFormTelaCotacaoCompraItemFiltroDigForn.BtnFecharTelaClick(
  Sender: TObject);
begin
  If Application.MessageBox(PCHAR('Não esqueca de gravar sua Cotação!'+CHR(13)+'Tem certeza que deseja fechar a tela?'),'Atenção',MB_YesNo+MB_IconQuestion+MB_SYSTEMMODAL)=Id_Yes Then
    inherited;
end;

procedure TFormTelaCotacaoCompraItemFiltroDigForn.DBGrid1DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
{   if gdSelected in State then
      DBGrid1.Canvas.Brush.Color := $00E0C8B0
   else
      begin
        if Odd(tbltemporaria.RecNo) then
          DBGrid1.Canvas.Brush.Color := $00BFD8D8
        else
          DBGrid1.Canvas.Brush.Color := DBGrid1.Color;
      end;}

 DBGrid1.Canvas.font.Color := clBlack;
 DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormTelaCotacaoCompraItemFiltroDigForn.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  FormTelaCotacaoCompraItemFiltroDigForn.KeyPreview := False;
end;

procedure TFormTelaCotacaoCompraItemFiltroDigForn.DBGrid1Exit(
  Sender: TObject);
begin
  inherited;
  FormTelaCotacaoCompraItemFiltroDigForn.KeyPreview := True;
end;

procedure TFormTelaCotacaoCompraItemFiltroDigForn.BTGravarClick(
  Sender: TObject);
begin
  if ComboFornecedor.Value = '' then
    begin
      ShowMessage('É necessário escolher um Fornecedor antes de Gravar!');
      Abort;
      Exit;
    end  
  else
    inherited;
end;

end.
