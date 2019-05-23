unit CadastroTipoContrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBCtrls, ExtCtrls, ComCtrls, DB, DBTables, DBActns,
  ActnList,
  ImgList, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, RXCtrls,
  Buttons, jpeg, RxRichEd, DBRichEd, SpeedBar, RXSpin;

type
  TFormCadastroTipoContrato = class(TFormCadastroTEMPLATE)
    SQLTemplateTPCTICOD: TIntegerField;
    SQLTemplateTPCTA60DESCR: TStringField;
    SQLTemplateTPCTBCORPOCONTRATO: TMemoField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    ToolbarImages: TImageList;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    PopupMenuRitch: TPopupMenu;
    ColorMenu: TPopupMenu;
    mxv1: TMenuItem;
    SQLFieldsContrato: TRxQuery;
    dbrCorpoContrato: TRxDBRichEdit;
    ControlBar: TControlBar;
    SpeedBar1: TSpeedBar;
    FontName: TComboBox;
    FontSize: TRxSpinEdit;
    SpeedbarSection1: TSpeedbarSection;
    BoldBtn: TSpeedItem;
    ItalicBtn: TSpeedItem;
    UnderlineBtn: TSpeedItem;
    ColorBtn: TSpeedItem;
    LeftBtn: TSpeedItem;
    CenterBtn: TSpeedItem;
    RightBtn: TSpeedItem;
    JustifyBtn: TSpeedItem;
    SpeedBar2: TSpeedBar;
    SpeedbarSection3: TSpeedbarSection;
    CutBtn: TSpeedItem;
    CopyBtn: TSpeedItem;
    PasteBtn: TSpeedItem;
    UndoBtn: TSpeedItem;
    RedoBtn: TSpeedItem;
    DBEdit3: TDBEdit;
    SQLFieldsContratoCONTA13ID: TStringField;
    SQLFieldsContratoEMPRICOD: TIntegerField;
    SQLFieldsContratoTERMICOD: TIntegerField;
    SQLFieldsContratoTPCTICOD: TIntegerField;
    SQLFieldsContratoCONTICOD: TIntegerField;
    SQLFieldsContratoCONTA60DESCR: TStringField;
    SQLFieldsContratoCONTA13IDCONTRATANTE: TStringField;
    SQLFieldsContratoCONTA13IDEMPCONBRANCA: TStringField;
    SQLFieldsContratoCONTA60RESPONSAVEL: TStringField;
    SQLFieldsContratoCONTIPERIODO: TIntegerField;
    SQLFieldsContratoCONTDINICIO: TDateTimeField;
    SQLFieldsContratoCONTDTERMINO: TDateTimeField;
    SQLFieldsContratoCONTCRENOVACAOAUTO: TStringField;
    SQLFieldsContratoCONTDLIMITERENOVAUTO: TDateTimeField;
    SQLFieldsContratoCONTDULTRENOV: TDateTimeField;
    SQLFieldsContratoCONTDDATABASE: TDateTimeField;
    SQLFieldsContratoCONTN3VLRPARCELA: TBCDField;
    SQLFieldsContratoCONTCSITUACAO: TStringField;
    SQLFieldsContratoCONTDDATASITUACAO: TDateTimeField;
    SQLFieldsContratoCONTCMODALIDADE: TStringField;
    SQLFieldsContratoCONTA254OBS: TStringField;
    SQLFieldsContratoPLCTA15COD: TStringField;
    SQLFieldsContratoTPDCICOD: TIntegerField;
    SQLFieldsContratoCONTA5SERIENF: TStringField;
    SQLFieldsContratoAVALA13ID: TStringField;
    SQLFieldsContratoPORTICOD: TIntegerField;
    SQLFieldsContratoCONTA60CONTATO: TStringField;
    SQLFieldsContratoHTPDICOD: TIntegerField;
    SQLFieldsContratoCONTN3PERCJUROSMES: TBCDField;
    SQLFieldsContratoREGISTRO: TDateTimeField;
    SQLFieldsContratoPENDENDE: TStringField;
    SQLFieldsContratoCONTBCORPOCONTRATO: TMemoField;
    SQLFieldsContratoCONTDEMISSAO: TDateTimeField;
    SQLFieldsContratoCONTCEXEBIRDADOEMP: TStringField;
    SQLFieldsContratoCONTCEXEBIRRODAP: TStringField;
    SQLFieldsContratoTipoContrato: TStringField;
    SQLFieldsContratoNomeContratante: TStringField;
    SQLFieldsContratoEndContratante: TStringField;
    SQLFieldsContratoDocContratante: TStringField;
    SQLFieldsContratoCidadeContratante: TStringField;
    SQLFieldsContratoCepContratante: TStringField;
    SQLFieldsContratoCidadeEmpCobranca: TStringField;
    SQLFieldsContratoNomeEmpCobranca: TStringField;
    SQLFieldsContratoEndEmpCobranca: TStringField;
    SQLFieldsContratoCepEmpCobranca: TStringField;
    SQLFieldsContratoDocEmpCobranca: TStringField;
    SQLFieldsContratoPeriodo: TStringField;
    SQLFieldsContratoSituacao: TStringField;
    SQLFieldsContratoTipoDocCobranca: TStringField;
    SQLFieldsContratoPortador: TStringField;
    SQLFieldsContratoNomeAvalista: TStringField;
    SQLFieldsContratoEndAvalista: TStringField;
    SQLFieldsContratoDocAvalista: TStringField;
    SQLFieldsContratoCidadeAvalista: TStringField;
    SQLFieldsContratoCONTN2VLRTOTAL: TBCDField;
    SQLFieldsContratoNUMEICOD: TIntegerField;
    procedure CopyBtnClick(Sender: TObject);
    procedure CutBtnClick(Sender: TObject);
    procedure PasteBtnClick(Sender: TObject);
    procedure UndoBtnClick(Sender: TObject);
    procedure BoldBtnClick(Sender: TObject);
    procedure ItalicBtnClick(Sender: TObject);
    procedure FontSizeChange(Sender: TObject);
    procedure dbrCorpoContratoChange(Sender: TObject);
    procedure UnderlineBtnClick(Sender: TObject);
    procedure LeftBtnClick(Sender: TObject);
    procedure FontNameChange(Sender: TObject);
    procedure dbrCorpoContratoMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dbrCorpoContratoProtectChange(Sender: TObject; StartPos,
      EndPos: Integer; var AllowChange: Boolean);
    procedure dbrCorpoContratoSelectionChange(Sender: TObject);
    procedure ColorItemClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure IncluiCampo(Sender: TObject);
    procedure ColorMenuPopup(Sender: TObject);
    procedure MenuItemDrawItem(Sender: TObject; ACanvas: TCanvas; ARect: TRect;
      Selected: Boolean);
    procedure RichEditChange(Sender: TObject);
    procedure UpdateCursorPos;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure RedoBtnClick(Sender: TObject);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure dbrCorpoContratoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    FUpdating: Boolean;
    FProtectChanging: Boolean;
  end;

var
  FormCadastroTipoContrato: TFormCadastroTipoContrato;
const
  ColorValues: array[0..16] of TColor = (
    clBlack, clMaroon, clGreen, clOlive, clNavy, clPurple, clTeal, clGray,
    clSilver, clRed, clLime, clYellow, clBlue, clFuchsia, clAqua, clWhite,
    clWindowText);
implementation

{$R *.dfm}
function ColorName(Color: TColor): string;
begin
  if (Color = clWindowText) or (Color = clWindow) or (Color = clDefault) then
    Result := 'Automatic'
  else
  begin
    Result := ColorToString(Color);
    if Pos('cl', Result) = 1 then
      Delete(Result, 1, 2);
  end;
end;


procedure TFormCadastroTipoContrato.ColorItemClick(Sender: TObject);
begin
  with Sender as TMenuItem do
  begin
    Checked := True;
    dbrCorpoContrato.SelAttributes.Color := Tag;
  end;
end;

procedure TFormCadastroTipoContrato.FormCreate(Sender: TObject);
Var I : Integer;
    NovoMenu, Item: TMenuItem;

begin
  inherited;
  Tabela := 'TIPOCONTRATO';

  for I := 0 to SQLFieldsContrato.Fields.Count - 1 do
     if (SQLFieldsContrato.Fields.Fields[I].FieldName <> SQLFieldsContrato.Fields.Fields[I].DisplayLabel) and
        (SQLFieldsContrato.Fields.Fields[I].Tag > 0) then
        begin
           NovoMenu := TMenuItem.Create(Self);
           with NovoMenu do
              begin
                 Caption := SQLFieldsContrato.Fields.Fields[I].DisplayLabel;
                 Name    := 'Menu' + SQLFieldsContrato.Fields.Fields[I].FieldName;
                 PopupMenuRitch.Items.Add(NovoMenu);
                 OnClick := IncluiCampo;
              end;
        end;

  with ColorMenu.Items do
  begin
    while Count > 0 do
      Items[Count - 1].Free;
    for I := 0 to 16 do
    begin
      Item := NewItem(ColorName(ColorValues[I]), scNone,
        False, True, ColorItemClick, 0, '');
      Item.RadioItem := True;
      Item.Tag := ColorValues[I];
      Item.OnDrawItem := MenuItemDrawItem;
      Add(Item);
    end;
  end;
  FontName.Items := Screen.Fonts;
end;

procedure TFormCadastroTipoContrato.IncluiCampo(Sender: TObject);
Var Selecao : Integer;
begin
   Selecao := dbrCorpoContrato.SelStart + Length('[@' + (Sender as TMenuItem).Caption + ']');
   dbrCorpoContrato.SelText := '[@' + (Sender as TMenuItem).Caption + ']';
   dbrCorpoContrato.SelStart := Selecao;
end;

procedure TFormCadastroTipoContrato.UnderlineBtnClick(Sender: TObject);
begin
  inherited;
  if FUpdating then
    Exit;
  if UnderlineBtn.Down then
    dbrCorpoContrato.SelAttributes.Style := dbrCorpoContrato.SelAttributes.Style + [fsUnderline]
  else
    dbrCorpoContrato.SelAttributes.Style := dbrCorpoContrato.SelAttributes.Style - [fsUnderline];

end;

procedure TFormCadastroTipoContrato.BoldBtnClick(Sender: TObject);
begin
  inherited;
  if FUpdating then
    Exit;
  if BoldBtn.Down then
    dbrCorpoContrato.SelAttributes.Style := dbrCorpoContrato.SelAttributes.Style + [fsBold]
  else
    dbrCorpoContrato.SelAttributes.Style := dbrCorpoContrato.SelAttributes.Style - [fsBold];

end;

procedure TFormCadastroTipoContrato.ItalicBtnClick(Sender: TObject);
begin
  inherited;
  if FUpdating then
    Exit;
  if ItalicBtn.Down then
    dbrCorpoContrato.SelAttributes.Style := dbrCorpoContrato.SelAttributes.Style + [fsItalic]
  else
    dbrCorpoContrato.SelAttributes.Style := dbrCorpoContrato.SelAttributes.Style - [fsItalic];

end;

procedure TFormCadastroTipoContrato.LeftBtnClick(Sender: TObject);
begin
  inherited;

  if FUpdating then
    Exit;
  dbrCorpoContrato.Paragraph.Alignment := TParaAlignment(TComponent(Sender).Tag);

end;

procedure TFormCadastroTipoContrato.CutBtnClick(Sender: TObject);
begin
  inherited;
  dbrCorpoContrato.CutToClipboard;
end;

procedure TFormCadastroTipoContrato.CopyBtnClick(Sender: TObject);
begin
  inherited;
  dbrCorpoContrato.CopyToClipboard;
end;

procedure TFormCadastroTipoContrato.PasteBtnClick(Sender: TObject);
begin
  inherited;
  dbrCorpoContrato.PasteFromClipboard;
end;


procedure TFormCadastroTipoContrato.RichEditChange(Sender: TObject);
begin
  { Undo }
  UndoBtn.Enabled := dbrCorpoContrato.CanUndo;
  { Redo }
  RedoBtn.Enabled := dbrCorpoContrato.CanRedo;

  if Self.Active then
     dbrCorpoContrato.SetFocus;
end;

procedure TFormCadastroTipoContrato.UndoBtnClick(Sender: TObject);
begin
  inherited;
   dbrCorpoContrato.Undo;
   RichEditChange(nil);
   dbrCorpoContrato.SelLength := 0;
end;

procedure TFormCadastroTipoContrato.FontNameChange(Sender: TObject);
begin
  inherited;
  if FUpdating then
    Exit;
  dbrCorpoContrato.SelAttributes.Name := FontName.Text;
  dbrCorpoContrato.SetFocus;
end;

procedure TFormCadastroTipoContrato.FontSizeChange(Sender: TObject);
begin
  inherited;
  if FUpdating then
    Exit;
  if FontSize.AsInteger > 0 then
    dbrCorpoContrato.SelAttributes.Size := FontSize.AsInteger;
end;

procedure TFormCadastroTipoContrato.dbrCorpoContratoChange(Sender: TObject);
begin
  inherited;
  UndoBtn.Enabled := dbrCorpoContrato.CanUndo;
end;

procedure TFormCadastroTipoContrato.dbrCorpoContratoProtectChange(
  Sender: TObject; StartPos, EndPos: Integer; var AllowChange: Boolean);
begin
  inherited;
  AllowChange := FProtectChanging;
end;

procedure TFormCadastroTipoContrato.dbrCorpoContratoSelectionChange(
  Sender: TObject);
begin
  inherited;
   with dbrCorpoContrato.Paragraph do
  try
    FUpdating := True;
    BoldBtn.Down := fsBold in dbrCorpoContrato.SelAttributes.Style;
    ItalicBtn.Down := fsItalic in dbrCorpoContrato.SelAttributes.Style;
    UnderlineBtn.Down := fsUnderline in dbrCorpoContrato.SelAttributes.Style;
    FontSize.AsInteger := dbrCorpoContrato.SelAttributes.Size;
    FontName.ItemIndex := FontName.Items.IndexOf(dbrCorpoContrato.SelAttributes.Name);
    case Ord(Alignment) of
      0: LeftBtn.Down := True;
      1: RightBtn.Down := True;
      2: CenterBtn.Down := True;
      3: JustifyBtn.Down := True;
    end;
    UpdateCursorPos;
  finally
    FUpdating := False;
  end;
end;

procedure TFormCadastroTipoContrato.UpdateCursorPos;
var
  CharPos: TPoint;
begin
  CharPos := dbrCorpoContrato.CaretPos;
  CopyBtn.Enabled := dbrCorpoContrato.SelLength > 0;
end;


procedure TFormCadastroTipoContrato.ColorMenuPopup(Sender: TObject);
var
  I: Integer;
  C: TColor;
begin
  C := dbrCorpoContrato.SelAttributes.Color;
  for I := 0 to 16 do
    ColorMenu.Items[I].Checked := (C = ColorValues[I]);
end;

procedure TFormCadastroTipoContrato.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Sender as TForm).ActiveControl = dbrCorpoContrato then
    Exit;
  inherited;

end;

procedure TFormCadastroTipoContrato.dbrCorpoContratoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if not (SQLTemplate.State in dsEditModes) and (Button = mbRight) then
     begin
        if Application.MessageBox('Você deve estar em modo de Edição para alterar o contrato.' + Char(13) +
                               'Deseja edita-lo agora?', 'Atenção', MB_YESNO + MB_SETFOREGROUND + MB_ICONQUESTION + MB_DEFBUTTON2) = idYes then
           SQLTemplate.Edit
        else
           Abort;
     end;
  if Button = mbRight then
     PopupMenuRitch.Popup(X,Y);
end;

procedure TFormCadastroTipoContrato.MenuItemDrawItem(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; Selected: Boolean);
begin
  inherited;
  ARect.Left := ARect.Left + 5;
  ARect.Right := ARect.Left + 12;
  ARect.Top := ARect.Top + 6;
  ARect.Bottom := ARect.Top + 13;
  with ACanvas do
  begin
    Brush.Color := clMenuText;
    FrameRect(ARect);
    InflateRect(ARect, -1, -1);
    Brush.Color := (Sender as TWinControl).Tag;
    FillRect(ARect);
  end;
end;
procedure TFormCadastroTipoContrato.RedoBtnClick(Sender: TObject);
begin
  inherited;
  dbrCorpoContrato.Redo;
  dbrCorpoContrato.SelLength := 0;
  RichEditChange(nil);
  dbrCorpoContratoSelectionChange(nil);
end;

procedure TFormCadastroTipoContrato.DSTemplateStateChange(Sender: TObject);
begin
  inherited;
  ControlBar.Enabled := SQLTemplate.State in dsEditModes;
end;

procedure TFormCadastroTipoContrato.dbrCorpoContratoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if not (SQLTemplate.State in dsEditModes) then
     begin
        if Application.MessageBox('Você deve estar em modo de Edição para alterar o contrato.' + Char(13) +
                               'Deseja edita-lo agora?', 'Atenção', MB_YESNO + MB_SETFOREGROUND + MB_ICONQUESTION + MB_DEFBUTTON2) = idYes then
           SQLTemplate.Edit
        else
           Abort;
     end;
end;

end.
