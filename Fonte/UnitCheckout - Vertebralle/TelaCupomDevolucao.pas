unit TelaCupomDevolucao;

interface

uses
  VarSYS, Variants, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Grids, DBGrids, jpeg, ExtCtrls, RxQuery,
  DBCtrls, DBCGrids, MemTable, RXCtrls, EWall;

type
  TFormTelaCupomDevolucao = class(TForm)
    LblNomeSistema: TRxLabel;
    Timer: TTimer;
    SQLCupom: TRxQuery;
    DSMemPrevenda: TDataSource;
    WallPaper: TEvWallPaper;
    DadosTerminal: TRxLabel;
    TblMemPreVenda: TMemoryTable;
    TblMemPreVendaMarcado: TBooleanField;
    SQLCupomCUPOA13ID: TStringField;
    SQLCupomEMPRICOD: TIntegerField;
    SQLCupomVENDICOD: TIntegerField;
    SQLCupomCUPODEMIS: TDateTimeField;
    SQLCupomCUPOCTIPOPADRAO: TStringField;
    SQLCupomCUPOCCONSIG: TStringField;
    SQLCupomCTRCN2VLR: TBCDField;
    SQLCupomCTRCN2TOTREC: TBCDField;
    TblMemPreVendaCUPOA13ID: TStringField;
    TblMemPreVendaEMPRICOD: TIntegerField;
    TblMemPreVendaVENDICOD: TIntegerField;
    TblMemPreVendaCUPODEMIS: TDateTimeField;
    TblMemPreVendaCUPOCTIPOPADRAO: TStringField;
    TblMemPreVendaCUPOCCONSIG: TStringField;
    TblMemPreVendaCTRCN2VLR: TBCDField;
    TblMemPreVendaCTRCN2TOTREC: TBCDField;
    TblMemPreVendaSaldo: TFloatField;
    DBGridLista: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TimerTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridListaColExit(Sender: TObject);
    procedure DBGridListaColEnter(Sender: TObject);
    procedure DBGridListaCellClick(Column: TColumn);
    procedure TblMemPreVendaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    OriginalOptions : TDBGridOptions;
    procedure SaveBoolean(Grid : TDBGrid) ;
  public
    { Public declarations }
  end;

var
  FormTelaCupomDevolucao: TFormTelaCupomDevolucao;

implementation

uses TelaFechamentoVenda, UnitLibrary, TelaItens, DataModulo,
     UnitCheckoutLibrary, TelaImpressaoPreVenda;

{$R *.DFM}

procedure TFormTelaCupomDevolucao.SaveBoolean(Grid : TDBGrid) ;
begin
  TblMemPreVenda.Edit ;
  TblMemPreVendaMarcado.Value := not TblMemPreVendaMarcado.Value ;
  TblMemPreVenda.Post ;
end ;

procedure TFormTelaCupomDevolucao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CupoA13IDDevol := TblMemPreVendaCUPOA13ID.Value ;
  TblMemPreVenda.Close ;
  Action := caFree ;
end;

procedure TFormTelaCupomDevolucao.TimerTimer(Sender: TObject);
begin
  Timer.Interval := 60000 ;
  Caption               := 'Advanced Control PDV    Terminal: ' + TerminalAtualNome ;
  DadosTerminal.Caption := FormatDateTime('ddddddddddddd hh:mm', Now) +
                           '    Operador: ' + UsuarioAtualNome +
                           '    Terminal: ' + TerminalAtualNome ;
end;

procedure TFormTelaCupomDevolucao.FormCreate(Sender: TObject);
begin
  Top    := FormTelaItens.Top ;
  Left   := FormTelaItens.Left ;
  Height := FormTelaItens.Height ;
  Width  := FormTelaItens.Width ;

  TblMemPreVenda.Open ;

  if not DevolucaoAbateConsig then
    begin
      DBGridLista.Columns[5].Visible := false ;
      DBGridLista.Columns[6].Visible := false ;
      SQLCupom.Close ;
      SQLCupom.SQL.Clear ;
      SQLCupom.SQL.Add('select') ;
      SQLCupom.SQL.Add('CP.CUPOA13ID, CP.CLIEA13ID, CP.EMPRICOD, CP.VENDICOD,') ;
      SQLCupom.SQL.Add('CP.CUPODEMIS, CP.CUPOCTIPOPADRAO, CP.CUPOCCONSIG,') ;
      SQLCupom.SQL.Add('CP.CUPON2TOTITENS as CTRCN2VLR, CP.CUPON2TOTITENS as CTRCN2TOTREC') ;
      SQLCupom.SQL.Add('from CUPOM CP') ;
      SQLCupom.SQL.Add('where') ;
      SQLCupom.SQL.Add('CP.CUPOCSTATUS = "A" and') ;
      SQLCupom.SQL.Add('CP.CLIEA13ID = "' + ClienteVenda + '"') ;
      SQLCupom.Open ;
    end
  else
    begin
      DBGridLista.Columns[5].Visible := true ;
      DBGridLista.Columns[6].Visible := true ;
      SQLCupom.Close ;
      SQLCupom.SQL.Clear ;
      SQLCupom.SQL.Add('select') ;
      SQLCupom.SQL.Add('CP.CUPOA13ID, CP.CLIEA13ID, CP.EMPRICOD, CP.VENDICOD,') ;
      SQLCupom.SQL.Add('CP.CUPODEMIS, CP.CUPOCTIPOPADRAO, CP.CUPOCCONSIG,') ;
      SQLCupom.SQL.Add('CR.CTRCN2VLR, CR.CTRCN2TOTREC') ;
      SQLCupom.SQL.Add('from CUPOM CP, CONTASRECEBER CR') ;
      SQLCupom.SQL.Add('where') ;
      SQLCupom.SQL.Add('CP.CUPOA13ID = CR.CUPOA13ID and') ;
      SQLCupom.SQL.Add('CP.CUPOCSTATUS = "A" and') ;
      SQLCupom.SQL.Add('CP.CLIEA13ID = "' + ClienteVenda + '" and') ;
      SQLCupom.SQL.Add('CP.CUPOCCONSIG = "S" and') ;
      SQLCupom.SQL.Add('CR.CTRCN2VLR > CR.CTRCN2TOTREC') ;
      SQLCupom.Open ;
    end ;

  TblMemPrevenda.Open ;

  SQLCupom.First ;
  while not SQLCupom.EOF do
    begin
      TblMemPrevenda.Append ;
      TblMemPreVendaCUPOA13ID.Value       := SQLCupomCUPOA13ID.Value ;
      TblMemPreVendaEMPRICOD.Value        := SQLCupomEMPRICOD.Value ;
      TblMemPreVendaVENDICOD.Value        := SQLCupomVENDICOD.Value ;
      TblMemPreVendaCUPODEMIS.Value       := SQLCupomCUPODEMIS.Value ;
      TblMemPreVendaCUPOCTIPOPADRAO.Value := SQLCupomCUPOCTIPOPADRAO.Value ;
      TblMemPreVendaCTRCN2VLR.Value       := SQLCupomCTRCN2VLR.Value ;
      TblMemPreVendaCTRCN2TOTREC.Value    := SQLCupomCTRCN2TOTREC.Value ;
      TblMemPreVendaMarcado.Value         := false ;
      TblMemPrevenda.Post ;

      SQLCupom.Next
    end ;
  TblMemPrevenda.First ;
end;

procedure TFormTelaCupomDevolucao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_Escape then
    Close ;
end;

procedure TFormTelaCupomDevolucao.DBGridListaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_SPACE) then
    SaveBoolean(DBGridLista) ;

  if Key = VK_Return then
    begin
      Close ;
    end ;
end ;

procedure TFormTelaCupomDevolucao.DBGridListaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
Const
  CtrlState : array[Boolean] of Integer = (DFCS_BUTTONCHECK,
                                           DFCS_BUTTONCHECK or DFCS_CHECKED);
begin
  inherited;
  if Column.Field.DataType = ftBoolean then
    begin
      DBGridLista.Canvas.FillRect(Rect);
      DrawFrameControl(DBGridLista.Canvas.Handle,
                       Rect,
                       DFC_BUTTON,
                       CtrlState[Column.Field.AsBoolean]);
    end;
end;

procedure TFormTelaCupomDevolucao.DBGridListaColExit(Sender: TObject);
begin
  if DBGridLista.SelectedField.DataType = ftBoolean then
    DBGridLista.Options := OriginalOptions;
end;

procedure TFormTelaCupomDevolucao.DBGridListaColEnter(Sender: TObject);
begin
  if DBGridLista.SelectedField.DataType = ftBoolean then
    begin
      OriginalOptions := DBGridLista.Options ;
      DBGridLista.Options := DBGridLista.Options - [dgEditing] ;
    end ;
end;

procedure TFormTelaCupomDevolucao.DBGridListaCellClick(Column: TColumn);
begin
  if DBGridLista.SelectedField.DataType = ftBoolean then
    SaveBoolean(DBGridLista) ;
end;

procedure TFormTelaCupomDevolucao.TblMemPreVendaCalcFields(DataSet: TDataSet);
begin
  TblMemPreVendaSaldo.Value := TblMemPreVendaCTRCN2VLR.Value -
                               TblMemPreVendaCTRCN2TOTREC.Value
end;

end.
