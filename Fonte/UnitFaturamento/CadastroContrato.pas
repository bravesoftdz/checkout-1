unit CadastroContrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, DBTables, DBActns, ActnList, ImgList,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, RxLookup, DBCtrls, RxDBComb, UCrpe32, StrUtils,
  ppPrnabl, ppClass, ppStrtch, DateUtils, ShellApi,
  ppRichTx, ppDB, ppBands, ppCache, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, ppViewr, RXSpin, ToolEdit, RXDBCtrl, SpeedBar, RxRichEd,
  DBRichEd, ExtDlgs, ClipView, Clipbrd, ppCtrls, ppVar, ConerBtn;

type
  TFormCadastroContrato = class(TFormCadastroTEMPLATE)
    SQLTemplateCONTICOD: TIntegerField;
    SQLTemplateCONTA60DESCR: TStringField;
    SQLTemplateCONTA13IDCONTRATANTE: TStringField;
    SQLTemplateCONTA60CONTATO: TStringField;
    SQLTemplateCONTA13IDEMPCONBRANCA: TStringField;
    SQLTemplateCONTA60RESPONSAVEL: TStringField;
    SQLTemplateCONTIPERIODO: TIntegerField;
    SQLTemplateCONTDINICIO: TDateTimeField;
    SQLTemplateCONTDTERMINO: TDateTimeField;
    SQLTemplateCONTCRENOVACAOAUTO: TStringField;
    SQLTemplateCONTDLIMITERENOVAUTO: TDateTimeField;
    SQLTemplateCONTDULTRENOV: TDateTimeField;
    SQLTemplateCONTDDATABASE: TDateTimeField;
    SQLTemplateCONTN3VLRPARCELA: TBCDField;
    SQLTemplateCONTCSITUACAO: TStringField;
    SQLTemplateCONTDDATASITUACAO: TDateTimeField;
    SQLTemplateCONTA254OBS: TStringField;
    SQLTemplatePLCTA15COD: TStringField;
    SQLTemplateTPDCICOD: TIntegerField;
    SQLTemplateCONTA5SERIENF: TStringField;
    SQLTemplateAVALA13ID: TStringField;
    SQLTemplatePORTICOD: TIntegerField;
    SQLTemplateHTPDICOD: TIntegerField;
    SQLTemplateCONTN3PERCJUROSMES: TBCDField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENDE: TStringField;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    SQLCliente: TRxQuery;
    RxDBLookupCombo2: TRxDBLookupCombo;
    dsSQLCliente: TDataSource;
    RxDBLookupCombo1: TRxDBLookupCombo;
    SQLTemplateCONTCMODALIDADE: TStringField;
    DBMemo1: TDBMemo;
    Label18: TLabel;
    SQLPlanoConta: TRxQuery;
    SQLTipoDoc: TRxQuery;
    SQLAvalista: TRxQuery;
    SQLPortador: TRxQuery;
    dsSQLAvalista: TDataSource;
    DSSQLTipoDoc: TDataSource;
    dsSQLPortador: TDataSource;
    DSSQLPlanoConta: TDataSource;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLClienteCLIEA60CONTATO: TStringField;
    SQLPlanoContaPLCTA15COD: TStringField;
    SQLPlanoContaPLCTA60DESCR: TStringField;
    SQLTipoDocTPDCICOD: TIntegerField;
    SQLTipoDocTPDCA60DESCR: TStringField;
    SQLAvalistaAVALA13ID: TStringField;
    SQLAvalistaAVALA60RAZAOSOC: TStringField;
    SQLPortadorPORTICOD: TIntegerField;
    SQLPortadorPORTA60DESCR: TStringField;
    TabSheetCorpoContrato: TTabSheet;
    SQLTemplateCONTBCORPOCONTRATO: TMemoField;
    mnImprimirContrato: TMenuItem;
    mnGerarFinanceiro: TMenuItem;
    SQLTemplateCONTDEMISSAO: TDateTimeField;
    PopupMenuRitch: TPopupMenu;
    ToolbarImages: TImageList;
    ControlBar: TControlBar;
    GroupBox4: TGroupBox;
    SQLTipoContrato: TRxQuery;
    RxDBLookupCombo8: TRxDBLookupCombo;
    Label25: TLabel;
    dsSQLTipoContrato: TDataSource;
    SQLTipoContratoTPCTICOD: TIntegerField;
    SQLTipoContratoTPCTA60DESCR: TStringField;
    SQLTipoContratoTPCTBCORPOCONTRATO: TMemoField;
    SQLTipoContratoREGISTRO: TDateTimeField;
    SQLTipoContratoPENDENTE: TStringField;
    SQLTemplateCONTA13ID: TStringField;
    SQLTemplateTPCTICOD: TIntegerField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateTERMICOD: TIntegerField;
    ppDBPipeline: TppDBPipeline;
    objImpressao: TppReport;
    ReportDetalhe: TppDetailBand;
    Corpo: TppRichText;
    FontName: TComboBox;
    FontSize: TRxSpinEdit;
    ColorMenu: TPopupMenu;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    SpeedBar1: TSpeedBar;
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
    dbrCorpoContrato: TRxDBRichEdit;
    RedoBtn: TSpeedItem;
    OpenPictureDialog: TOpenPictureDialog;
    mnInserirImagem: TMenuItem;
    N1: TMenuItem;
    Cabecalho: TppHeaderBand;
    Rodape: TppFooterBand;
    SQLTemplateCONTCEXEBIRDADOEMP: TStringField;
    SQLTemplateCONTCEXEBIRRODAP: TStringField;
    ppSystemVariable1: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppDBImage1: TppDBImage;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLine2: TppLine;
    ppSystemVariable2: TppSystemVariable;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    SQLTemplateTipoContrato: TStringField;
    SQLTemplateNomeContratante: TStringField;
    SQLTemplateEndContratante: TStringField;
    SQLTemplateDocContratante: TStringField;
    SQLTemplateCidadeContratante: TStringField;
    SQLTemplateNomeEmpCobranca: TStringField;
    SQLTemplateEndEmpCobranca: TStringField;
    SQLTemplateDocEmpCobranca: TStringField;
    SQLTemplateCidadeEmpCobranca: TStringField;
    SQLTemplatePeriodo: TStringField;
    SQLTemplateSituacao: TStringField;
    SQLTemplateTipoDocCobranca: TStringField;
    SQLTemplatePortador: TStringField;
    SQLTemplateNomeAvalista: TStringField;
    SQLTemplateEndAvalista: TStringField;
    SQLTemplateDocAvalista: TStringField;
    SQLTemplateCidadeAvalista: TStringField;
    mnSalvarContrato: TMenuItem;
    SaveDialog: TSaveDialog;
    SQLTemplateCepContratante: TStringField;
    SQLTemplateCepEmpCobranca: TStringField;
    SQLHistoricoPadrao: TRxQuery;
    SQLHistoricoPadraoHTPDICOD: TIntegerField;
    SQLHistoricoPadraoHTPDA100HISTORICO: TStringField;
    SQLHistoricoPadraoHTPDCTIPO: TStringField;
    SQLHistoricoPadraoPENDENTE: TStringField;
    SQLHistoricoPadraoREGISTRO: TDateTimeField;
    DSSQLHistoricoPadrao: TDataSource;
    TabSheetFinanceiro: TTabSheet;
    PanelFinanceiro: TPanel;
    Panel8: TPanel;
    DBGrid2: TDBGrid;
    SQLNumerarioPrazo: TRxQuery;
    DSSQLNumerarioPrazo: TDataSource;
    SQLParcelasPrazoVendaTemp: TRxQuery;
    SQLParcelasPrazoVendaTempTERMICOD: TIntegerField;
    SQLParcelasPrazoVendaTempDATAVENCTO: TDateTimeField;
    SQLParcelasPrazoVendaTempNROPARCELA: TIntegerField;
    SQLParcelasPrazoVendaTempVALORVENCTO: TBCDField;
    SQLParcelasPrazoVendaTempNUMEICOD: TIntegerField;
    DSSQLParcelasPrazoVendaTemp: TDataSource;
    Button4: TRxSpeedButton;
    SQLParcelasPrazoVendaTempNumerarioLookup: TStringField;
    SQLParcelasPrazoVendaTempTipoPadrao: TStringField;
    SQLContasReceber: TRxQuery;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberTERMICOD: TIntegerField;
    SQLContasReceberCTRCICOD: TIntegerField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCTRCCSTATUS: TStringField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCN2VLR: TBCDField;
    SQLContasReceberCTRCN2DESCFIN: TBCDField;
    SQLContasReceberNUMEICOD: TIntegerField;
    SQLContasReceberPORTICOD: TIntegerField;
    SQLContasReceberCTRCN2TXJURO: TBCDField;
    SQLContasReceberCTRCN2TXMULTA: TBCDField;
    SQLContasReceberCTRCA5TIPOPADRAO: TStringField;
    SQLContasReceberCTRCDULTREC: TDateTimeField;
    SQLContasReceberCTRCN2TOTREC: TBCDField;
    SQLContasReceberCTRCN2TOTJUROREC: TBCDField;
    SQLContasReceberCTRCN2TOTMULTAREC: TBCDField;
    SQLContasReceberCTRCN2TOTDESCREC: TBCDField;
    SQLContasReceberEMPRICODULTREC: TIntegerField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberTPDCICOD: TIntegerField;
    SQLContasReceberPLCTA15COD: TStringField;
    SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField;
    SQLContasReceberNOFIA13ID: TStringField;
    SQLContasReceberCTRCDEMIS: TDateTimeField;
    SQLContasReceberPENDENTE: TStringField;
    SQLContasReceberREGISTRO: TDateTimeField;
    SQLContasReceberCTRCDREABILSPC: TDateTimeField;
    SQLContasReceberCTRCN2TOTMULTACOBR: TBCDField;
    SQLContasReceberBANCA5CODCHQ: TStringField;
    SQLContasReceberCTRCA10AGENCIACHQ: TStringField;
    SQLContasReceberCTRCA15CONTACHQ: TStringField;
    SQLContasReceberCTRCA15NROCHQ: TStringField;
    SQLContasReceberCTRCA60TITULARCHQ: TStringField;
    SQLContasReceberCTRCA20CGCCPFCHQ: TStringField;
    SQLContasReceberCTRCDDEPOSCHQ: TDateTimeField;
    SQLContasReceberALINICOD: TIntegerField;
    SQLContasReceberPDVDA13ID: TStringField;
    SQLContasReceberCTRCA254HIST: TStringField;
    SQLContasReceberHTPDICOD: TIntegerField;
    SQLContasReceberPLCTA15CODDEBITO: TStringField;
    SQLContasReceberPortadorLookup: TStringField;
    SQLContasReceberAVALA13ID: TStringField;
    SQLContasReceberCONTA13ID: TStringField;
    GroupBox5: TGroupBox;
    Label11: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label24: TLabel;
    DBEdit11: TDBEdit;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    RxDBLookupCombo9: TRxDBLookupCombo;
    Label26: TLabel;
    btGerarParcelas: TConerBtn;
    Label8: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    Label14: TLabel;
    DBDateEdit4: TDBDateEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label3: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    DBEdit1: TDBEdit;
    Label16: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    Label17: TLabel;
    DBDateEdit3: TDBDateEdit;
    Label27: TLabel;
    DBEdit3: TDBEdit;
    SQLTemplateCONTN2VLRTOTAL: TBCDField;
    DBCheckBox1: TDBCheckBox;
    Label12: TLabel;
    DBDateEdit5: TDBDateEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    SQLNumerarioPrazoNUMEICOD: TIntegerField;
    SQLNumerarioPrazoNUMEA30DESCR: TStringField;
    SQLNumerario: TRxQuery;
    dsSQLContasReceber: TDataSource;
    SQLTemplateNUMEICOD: TIntegerField;
    btAcessaTipoContrato: TSpeedButton;
    btAcessaCliente: TSpeedButton;
    btAcessaClientecCob: TSpeedButton;
    btAcessaPlanoContas: TSpeedButton;
    btAcessaNumerario: TSpeedButton;
    btAcessaTipoDocumento: TSpeedButton;
    btAcessaAvalista: TSpeedButton;
    btAcessaPortador: TSpeedButton;
    GroupBox6: TGroupBox;
    Label28: TLabel;
    MemoHistorico: TMemo;
    CheckHistorico: TCheckBox;
    RxDBLookupCombo10: TRxDBLookupCombo;
    btAcessaHistoricoPadrao: TSpeedButton;
    Label23: TLabel;
    DBEdit10: TDBEdit;
    N2: TMenuItem;
    Button5: TRxSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure mnImprimirContratoClick(Sender: TObject);
    procedure dbrDBCorpoContratoMouseMove(Sender: TObject;
              Shift: TShiftState; X, Y: Integer);
    procedure IncluiCampo(Sender: TObject);
    procedure UnderlineBtnClick(Sender: TObject);
    procedure BoldBtnClick(Sender: TObject);
    procedure ItalicBtnClick(Sender: TObject);
    procedure LeftBtnClick(Sender: TObject);
    procedure CutBtnClick(Sender: TObject);
    procedure CopyBtnClick(Sender: TObject);
    procedure PasteBtnClick(Sender: TObject);
    procedure UndoBtnClick(Sender: TObject);
    procedure FontNameChange(Sender: TObject);
    procedure FontSizeChange(Sender: TObject);
    procedure dbrCorpoContratoChange(Sender: TObject);
    procedure dbrCorpoContratoProtectChange(Sender: TObject; StartPos,
      EndPos: Integer; var AllowChange: Boolean);
    procedure dbrCorpoContratoSelectionChange(Sender: TObject);
    procedure ColorItemClick(Sender: TObject);
    procedure RichEditChange(Sender: TObject);
    procedure UpdateCursorPos;
    procedure ColorMenuPopup(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbrCorpoContratoMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dbrCorpoContratoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo8Change(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure objImpressaoBeforePrint(Sender: TObject);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure MenuItemDrawItem(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; Selected: Boolean);
    procedure RedoBtnClick(Sender: TObject);
    procedure mnInserirImagemClick(Sender: TObject);
    procedure SQLTemplateAfterScroll(DataSet: TDataSet);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure mnSalvarContratoClick(Sender: TObject);
    procedure GeraContrato;
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure btGerarParcelasClick(Sender: TObject);
    procedure SQLContasReceberBeforeDelete(DataSet: TDataSet);
    procedure SQLContasReceberBeforePost(DataSet: TDataSet);
    procedure SQLContasReceberNewRecord(DataSet: TDataSet);
    procedure SQLContasReceberPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure SQLTemplateAfterCancel(DataSet: TDataSet);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure DBDateEdit2Exit(Sender: TObject);
    procedure RxDBLookupCombo8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btAcessaTipoContratoClick(Sender: TObject);
    procedure btAcessaClienteClick(Sender: TObject);
    procedure btAcessaClientecCobClick(Sender: TObject);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure RxDBLookupCombo3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btAcessaPlanoContasClick(Sender: TObject);
    procedure btAcessaNumerarioClick(Sender: TObject);
    procedure btAcessaAvalistaClick(Sender: TObject);
    procedure btAcessaPortadorClick(Sender: TObject);
    procedure btAcessaTipoDocumentoClick(Sender: TObject);
    procedure btAcessaHistoricoPadraoClick(Sender: TObject);
    procedure RxDBLookupCombo10Change(Sender: TObject);
    procedure mnGerarFinanceiroClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbrCorpoContratoURLClick(Sender: TObject;
      const URLText: String; Button: TMouseButton);
    procedure MenuMeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);

  private
    { Private declarations }
    SelStart : Integer;
    FUpdating: Boolean;
    FProtectChanging, NovaDup: Boolean;
    NovoCorpo : TppRichText;
    SQLAntigo : String;
  public
    { Public declarations }
  end;

var
  FormCadastroContrato: TFormCadastroContrato;
const
  ColorValues: array[0..16] of TColor = (
    clBlack, clMaroon, clGreen, clOlive, clNavy, clPurple, clTeal, clGray,
    clSilver, clRed, clLime, clYellow, clBlue, clFuchsia, clAqua, clWhite,
    clWindowText);
  CoresNomes: array[0..16] of String = (
    'Preto', 'Marrom', 'Verde', 'Oliva', 'Azul Escuro', 'Purpura', 'Teal', 'Cinza',
    'Prata', 'Vermelho', 'Limão', 'Amarelo', 'Azul', 'Rosa', 'Azul Fraco', 'Branco',
    'Automático');

implementation

uses DataModulo, UnitLibrary, VarSys, CadastroTipoContrato, CadastroCliente,
  CadastroPlanodeContas, TelaConsultaNumerario, CadastroAvalista,
  CadastroPortador, CadastroTipoDocumento, CadastroHistoricoPadrao,
  FormResources, CadastroContratoFinanceiro;

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


procedure TFormCadastroContrato.ColorItemClick(Sender: TObject);
begin
  with Sender as TMenuItem do
  begin
    Checked := True;
    dbrCorpoContrato.SelAttributes.Color := Tag;
  end;
end;

procedure TFormCadastroContrato.FormCreate(Sender: TObject);
Var I : Integer;
    NovoMenu, Item: TMenuItem;

begin
  inherited;
  Tabela := 'CONTRATO';
  NovaDup := False;
  SQLAntigo := SQLParcelasPrazoVendaTemp.SQL.Text;
  if not SQLCliente.Active then SQLCliente.Active := True;
  if not SQLAvalista.Active then SQLAvalista.Active := True;
  if not SQLHistoricoPadrao.Active then SQLHistoricoPadrao.Active := True;
  if not SQLPlanoConta.Active then SQLPlanoConta.Active := True;
  if not SQLPortador.Active then SQLPortador.Active := True;
  if not SQLTipoDoc.Active then SQLTipoDoc.Active := True;
  if not SQLTipoContrato.Active then SQLTipoContrato.Active := True;
  if not SQLNumerarioPrazo.Active then SQLNumerarioPrazo.Active := True;

  for I := 0 to SQLTemplate.Fields.Count - 1 do
     begin
       if (SQLTemplate.Fields.Fields[I].FieldName <> SQLTemplate.Fields.Fields[I].DisplayLabel) and
          (SQLTemplate.Fields.Fields[I].Tag > 0) then
          begin
             NovoMenu := TMenuItem.Create(Self);
             with NovoMenu do
                begin
                   Caption := SQLTemplate.Fields.Fields[I].DisplayLabel;
                   Name    := 'Menu' + SQLTemplate.Fields.Fields[I].FieldName;
                   PopupMenuRitch.Items.Add(NovoMenu);
                   OnClick := IncluiCampo;
                end;
          end;
   end;

   NovoMenu := TMenuItem.Create(Self);
   with NovoMenu do
      begin
         Caption   := '-';
         Name      := 'Nd2';
         PopupMenuRitch.Items.Add(NovoMenu);
      end;

   NovoMenu := TMenuItem.Create(Self);
   with NovoMenu do
      begin
         Caption   := 'Exibir Dados da Empresa';
         Name      := 'ExDadosEmp';
         AutoCheck := True;
         PopupMenuRitch.Items.Add(NovoMenu);
      end;

   NovoMenu := TMenuItem.Create(Self);
   with NovoMenu do
      begin
         Caption   := 'Exibir Rodapé';
         Name      := 'ExRodap';
         AutoCheck := True;
         PopupMenuRitch.Items.Add(NovoMenu);
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
      Item.Hint := CoresNomes[I];
      Item.OnDrawItem := MenuItemDrawItem;
      Item.OnMeasureItem := MenuMeasureItem;
      Add(Item);
    end;
  end;
  FontName.Items := Screen.Fonts;
end;

procedure TFormCadastroContrato.MenuItemDrawItem(Sender: TObject;
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
    Brush.Color := (Sender as TMenuItem).Tag;
    FillRect(ARect);
    Brush.Style := bsClear;
    if (Sender as TMenuItem).Checked then
       begin
          Font.Color := clNavy;
          Font.Style := [fsBold, fsItalic];
       end
    else
       begin
          Font.Color := clBlack;
          Font.Style := [];
       end;
    TextOut(ARect.Left + 15, ARect.Top - 3, (Sender as TMenuItem).Hint);
  end;
end;

procedure TFormCadastroContrato.IncluiCampo(Sender: TObject);
Var Selecao : Integer;
begin
   Selecao := dbrCorpoContrato.SelStart + Length('[@' + (Sender as TMenuItem).Caption + ']');
   dbrCorpoContrato.SelText := '[@' + (Sender as TMenuItem).Caption + ']';
   dbrCorpoContrato.SelStart := Selecao;
end;

procedure TFormCadastroContrato.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (SQLTemplateCONTCRENOVACAOAUTO.AsString = 'S') and SQLTemplateCONTDLIMITERENOVAUTO.IsNull then
     begin
         Informa('Para usar a Renovação Automática você deve informar a Data Limite para o Término da Renovação.');
         Abort;
     end;

  if SQLTemplate.State in [dsInsert] then
     SQLTemplateCONTDEMISSAO.AsDateTime := Now;
  if TMenuItem(FindComponent('ExDadosEmp')).Checked  then
     SQLTemplateCONTCEXEBIRDADOEMP.AsString := 'S'
  else
     SQLTemplateCONTCEXEBIRDADOEMP.AsString := 'N';

  if TMenuItem(FindComponent('ExRodap')).Checked  then
     SQLTemplateCONTCEXEBIRRODAP.AsString := 'S'
  else
     SQLTemplateCONTCEXEBIRRODAP.AsString := 'N';
end;

procedure TFormCadastroContrato.GeraContrato;
Var I : Integer;
    Tipo : string;
begin
  DM.SQLEmpresa.Close;
  DM.SQLEmpresa.SQL.Text := 'SELECT * FROM EMPRESA WHERE EMPRICOD = ' + IntToStr(EmpresaCorrente);
  DM.SQLEmpresa.Open;

  Cabecalho.Visible := SQLTemplateCONTCEXEBIRDADOEMP.AsString = 'S';
  Rodape.Visible    := SQLTemplateCONTCEXEBIRRODAP.AsString   = 'S';

  NovoCorpo := TppRichText.Create(Self);

  Tipo := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA5FISJURID', '"' + SQLTemplateCONTA13IDCONTRATANTE.AsString + '"');
  if Tipo = 'F' then
     SQLTemplateDocContratante.EditMask := '#########-##;0;_'
  else
     SQLTemplateDocContratante.EditMask := '##.###.###/####-##;0;_';

  Tipo := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA5FISJURID', '"' + SQLTemplateCONTA13IDEMPCONBRANCA.AsString + '"');

  if Tipo = 'F' then
     SQLTemplateDocEmpCobranca.EditMask := '#########-##;0;_'
  else
     SQLTemplateDocEmpCobranca.EditMask := '##.###.###/####-##;0;_';

  NovoCorpo.RichText := SQLTemplateCONTBCORPOCONTRATO.AsVariant;

  For I := 0 to SQLTemplate.FieldCount - 1 do
     NovoCorpo.RichText := AnsiReplaceStr(NovoCorpo.RichText,'[@' + SQLTemplate.Fields.Fields[I].DisplayLabel + ']', SQLTemplate.Fields.Fields[I].DisplayText);

end;

procedure TFormCadastroContrato.mnImprimirContratoClick(Sender: TObject);
begin
  inherited;
  GeraContrato;

  Corpo.RichText := NovoCorpo.RichText;
  ReportDetalhe.Height := 11;
  Corpo.Height := ReportDetalhe.Height;
  ppDBPipeline.DataSource := DM.DSSQLEmpresa;
  objImpressao.Print;
end;

procedure TFormCadastroContrato.dbrDBCorpoContratoMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  SelStart  := LoWord(SendMessage((Sender as TWinControl).Handle, EM_CHARFROMPOS, 0, MakeLParam(X, Y)));
end;

procedure TFormCadastroContrato.UnderlineBtnClick(Sender: TObject);
begin
  inherited;
  if FUpdating then
    Exit;
  if UnderlineBtn.Down then
    dbrCorpoContrato.SelAttributes.Style := dbrCorpoContrato.SelAttributes.Style + [fsUnderline]
  else
    dbrCorpoContrato.SelAttributes.Style := dbrCorpoContrato.SelAttributes.Style - [fsUnderline];
end;

procedure TFormCadastroContrato.BoldBtnClick(Sender: TObject);
begin
  inherited;
  if FUpdating then
    Exit;
  if BoldBtn.Down then
    dbrCorpoContrato.SelAttributes.Style := dbrCorpoContrato.SelAttributes.Style + [fsBold]
  else
    dbrCorpoContrato.SelAttributes.Style := dbrCorpoContrato.SelAttributes.Style - [fsBold];
end;

procedure TFormCadastroContrato.ItalicBtnClick(Sender: TObject);
begin
  inherited;
  if FUpdating then
    Exit;
  if ItalicBtn.Down then
    dbrCorpoContrato.SelAttributes.Style := dbrCorpoContrato.SelAttributes.Style + [fsItalic]
  else
    dbrCorpoContrato.SelAttributes.Style := dbrCorpoContrato.SelAttributes.Style - [fsItalic];

end;

procedure TFormCadastroContrato.LeftBtnClick(Sender: TObject);
begin
  inherited;
  if FUpdating then
    Exit;
  dbrCorpoContrato.Paragraph.Alignment := TParaAlignment(TComponent(Sender).Tag);
end;

procedure TFormCadastroContrato.CutBtnClick(Sender: TObject);
begin
  inherited;
  dbrCorpoContrato.CutToClipboard;
end;

procedure TFormCadastroContrato.CopyBtnClick(Sender: TObject);
begin
  inherited;
  dbrCorpoContrato.CopyToClipboard;
end;

procedure TFormCadastroContrato.PasteBtnClick(Sender: TObject);
begin
  inherited;
  dbrCorpoContrato.PasteFromClipboard;
end;


procedure TFormCadastroContrato.RichEditChange(Sender: TObject);
begin
  { Undo }
  UndoBtn.Enabled := dbrCorpoContrato.CanUndo;
  { Redo }
  RedoBtn.Enabled := dbrCorpoContrato.CanRedo;

  if Self.Active then
     dbrCorpoContrato.SetFocus;
end;

procedure TFormCadastroContrato.UndoBtnClick(Sender: TObject);
begin
  inherited;
  dbrCorpoContrato.Undo;
  dbrCorpoContrato.SelLength := 0;
  RichEditChange(nil);
  dbrCorpoContratoSelectionChange(nil);
end;

procedure TFormCadastroContrato.FontNameChange(Sender: TObject);
begin
  inherited;
  if FUpdating then
    Exit;
  dbrCorpoContrato.SelAttributes.Name := FontName.Text;
  dbrCorpoContrato.SetFocus;
end;

procedure TFormCadastroContrato.FontSizeChange(Sender: TObject);
begin
  inherited;
  if FUpdating then
    Exit;
  if (FontSize.AsInteger > 0) then
    dbrCorpoContrato.SelAttributes.Size := FontSize.AsInteger;
end;

procedure TFormCadastroContrato.dbrCorpoContratoChange(Sender: TObject);
begin
  inherited;
  UndoBtn.Enabled := dbrCorpoContrato.CanUndo;
end;

procedure TFormCadastroContrato.dbrCorpoContratoProtectChange(
  Sender: TObject; StartPos, EndPos: Integer; var AllowChange: Boolean);
begin
  inherited;
   AllowChange := FProtectChanging;
end;

procedure TFormCadastroContrato.dbrCorpoContratoSelectionChange(
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

procedure TFormCadastroContrato.UpdateCursorPos;
var
  CharPos: TPoint;
begin
  CharPos := dbrCorpoContrato.CaretPos;
  CopyBtn.Enabled := dbrCorpoContrato.SelLength > 0;
end;

procedure TFormCadastroContrato.ColorMenuPopup(Sender: TObject);
var
  I: Integer;
  C: TColor;
begin
  C := dbrCorpoContrato.SelAttributes.Color;
  for I := 0 to 16 do
    ColorMenu.Items[I].Checked := (C = ColorValues[I]);
end;

procedure TFormCadastroContrato.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Sender as TForm).ActiveControl = dbrCorpoContrato then
    Exit;
  inherited;

end;

procedure TFormCadastroContrato.dbrCorpoContratoMouseDown(Sender: TObject;
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

procedure TFormCadastroContrato.dbrCorpoContratoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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

procedure TFormCadastroContrato.RxDBLookupCombo8Change(Sender: TObject);
begin
  inherited;
  SQLTemplateCONTBCORPOCONTRATO.AsVariant := SQLTipoContratoTPCTBCORPOCONTRATO.AsVariant;
end;

procedure TFormCadastroContrato.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateEMPRICOD.AsInteger := EmpresaCorrente;
  SQLTemplateTERMICOD.AsInteger := TerminalCorrente;
  SQLTemplateCONTCRENOVACAOAUTO.AsString := 'N';
  SQLTemplateCONTN3VLRPARCELA.AsFloat    := 0;
  SQLTemplateCONTN3PERCJUROSMES.AsFloat  := 0;
  SQLTemplateCONTCMODALIDADE.AsString    := 'A';
  SQLTemplateCONTCSITUACAO.AsString      := 'N';
  SQLTemplateCONTDDATASITUACAO.AsDateTime:= Now;
  SQLTemplateCONTA60DESCR.FocusControl;
end;

procedure TFormCadastroContrato.objImpressaoBeforePrint(Sender: TObject);
begin
  inherited;
  TppViewer(objImpressao.PreviewForm.Viewer).ZoomPercentage := 100;
  objImpressao.PreviewForm.WindowState := wsMaximized;
end;

procedure TFormCadastroContrato.DSTemplateStateChange(Sender: TObject);
begin
  inherited;
  ControlBar.Enabled := SQLTemplate.State in dsEditModes;
end;


procedure TFormCadastroContrato.RedoBtnClick(Sender: TObject);
begin
  inherited;
  dbrCorpoContrato.Redo;
  dbrCorpoContrato.SelLength := 0;
  RichEditChange(nil);
  dbrCorpoContratoSelectionChange(nil);
end;

procedure TFormCadastroContrato.mnInserirImagemClick(Sender: TObject);
var
  Pict: TPicture;
  Clip : TClipboard;
begin
  with OpenPictureDialog do
  begin
    if Execute then
    begin
      Pict := TPicture.Create;
      try
        Pict.LoadFromFile(FileName);
        Clip := TClipboard.Create;
        Clip.Assign(Pict.Graphic);
        dbrCorpoContrato.PasteFromClipboard;
      finally
        Pict.Free;
      end;
    end;
  end;
end;

procedure TFormCadastroContrato.SQLTemplateAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if Self.Active then
     begin
       TMenuItem(FindComponent('ExDadosEmp')).Checked := SQLTemplateCONTCEXEBIRDADOEMP.AsString = 'S';
       TMenuItem(FindComponent('ExRodap')).Checked    := SQLTemplateCONTCEXEBIRRODAP.AsString = 'S';
     end;

  if not NovaDup then
     begin
        SQLParcelasPrazoVendaTemp.Close;
        SQLParcelasPrazoVendaTemp.MacroByName('MFiltro').AsString := ' CONTA13ID  = "' + SQLTemplateCONTA13ID.AsString + '"';
        SQLParcelasPrazoVendaTemp.Open;
     end;

  btGerarParcelas.Enabled := SQLParcelasPrazoVendaTemp.IsEmpty;
end;

procedure TFormCadastroContrato.SQLTemplateCalcFields(DataSet: TDataSet);
begin
  inherited;
  if not SQLTemplateTPCTICOD.IsNull then
     SQLTemplateTipoContrato.AsString := SQLLocate('TIPOCONTRATO', 'TPCTICOD', 'TPCTA60DESCR', SQLTemplateTPCTICOD.AsString);

  if not SQLTemplateCONTA13IDCONTRATANTE.IsNull then
     begin
        if DM.ProcuraRegistro('CLIENTE', ['CLIEA13ID'], [SQLTemplateCONTA13IDCONTRATANTE.AsString],1) then
           begin
              SQLTemplateNomeContratante.AsString := DM.SQLTemplate.FieldByName('CLIEA60RAZAOSOC').AsString;
              SQLTemplateEndContratante.AsString := DM.SQLTemplate.FieldByName('CLIEA60ENDRES').AsString + ', ' + DM.SQLTemplate.FieldByName('CLIEA60BAIRES').AsString;
              if DM.SQLTemplate.FieldByName('CLIEA5FISJURID').AsString = 'F' then
                 SQLTemplateDocContratante.AsString := DM.SQLTemplate.FieldByName('CLIEA11CPF').AsString
              else
                 SQLTemplateDocContratante.AsString := DM.SQLTemplate.FieldByName('CLIEA14CGC').AsString;
              SQLTemplateCidadeContratante.AsString := DM.SQLTemplate.FieldByName('CLIEA60CIDRES').AsString + '/' + DM.SQLTemplate.FieldByName('CLIEA2UFRES').AsString;
              SQLTemplateCepContratante.AsString := DM.SQLTemplate.FieldByName('CLIEA2UFRES').AsString;
           end;
     end;

  if not SQLTemplateCONTA13IDEMPCONBRANCA.IsNull then
     begin
        if DM.ProcuraRegistro('CLIENTE', ['CLIEA13ID'], [SQLTemplateCONTA13IDEMPCONBRANCA.AsString],1) then
           begin
              SQLTemplateNomeEmpCobranca.AsString := DM.SQLTemplate.FieldByName('CLIEA60RAZAOSOC').AsString;
              SQLTemplateEndEmpCobranca.AsString := DM.SQLTemplate.FieldByName('CLIEA60ENDRES').AsString + ', ' + DM.SQLTemplate.FieldByName('CLIEA60BAIRES').AsString;
              if DM.SQLTemplate.FieldByName('CLIEA5FISJURID').AsString = 'F' then
                 SQLTemplateDocEmpCobranca.AsString := DM.SQLTemplate.FieldByName('CLIEA11CPF').AsString
              else
                 SQLTemplateDocEmpCobranca.AsString := DM.SQLTemplate.FieldByName('CLIEA14CGC').AsString;
              SQLTemplateCidadeEmpCobranca.AsString := DM.SQLTemplate.FieldByName('CLIEA60CIDRES').AsString + '/' + DM.SQLTemplate.FieldByName('CLIEA2UFRES').AsString;
              SQLTemplateCepEmpCobranca.AsString := DM.SQLTemplate.FieldByName('CLIEA2UFRES').AsString;
           end;
     end;

  if not SQLTemplateAVALA13ID.IsNull then
     begin
        if DM.ProcuraRegistro('AVALISTA', ['AVALA13ID'], [SQLTemplateAVALA13ID.AsString],1) then
           begin
              SQLTemplateNomeAvalista.AsString := DM.SQLTemplate.FieldByName('AVALA60RAZAOSOC').AsString;
              SQLTemplateEndAvalista.AsString := DM.SQLTemplate.FieldByName('AVALA60ENDRES').AsString + ', ' + DM.SQLTemplate.FieldByName('AVALA60BAIRES').AsString;
              if DM.SQLTemplate.FieldByName('AVALA5FISJURID').AsString = 'F' then
                 SQLTemplateDocAvalista.AsString := DM.SQLTemplate.FieldByName('AVALA11CPF').AsString
              else
                 SQLTemplateDocAvalista.AsString := DM.SQLTemplate.FieldByName('AVALA14CGC').AsString;
              SQLTemplateCidadeAvalista.AsString := DM.SQLTemplate.FieldByName('AVALA60CIDRES').AsString + '/' + DM.SQLTemplate.FieldByName('AVALA2UFRES').AsString;
           end;
     end;

  if SQLTemplateCONTIPERIODO.AsFloat = 30 then
     SQLTemplatePeriodo.AsString := 'Mensal';
  if SQLTemplateCONTIPERIODO.AsFloat = 60 then
     SQLTemplatePeriodo.AsString := 'Bimenstral';
  if SQLTemplateCONTIPERIODO.AsFloat = 90 then
     SQLTemplatePeriodo.AsString := 'Trimenstral';
  if SQLTemplateCONTIPERIODO.AsFloat = 180 then
     SQLTemplatePeriodo.AsString := 'Semestral';
  if SQLTemplateCONTIPERIODO.AsFloat = 360 then
     SQLTemplatePeriodo.AsString := 'Anual';

  case SQLTemplateCONTCSITUACAO.AsString[1] of
     'A' : SQLTemplateSituacao.AsString := 'Ativo';
     'C' : SQLTemplateSituacao.AsString := 'Cancelado';
     'S' : SQLTemplateSituacao.AsString := 'Suspenso';
  end;

  if not SQLTemplateTPDCICOD.IsNull then
     SQLTemplateTipoDocCobranca.AsString := SQLLocate('TIPODOCUMENTO', 'TPDCICOD', 'TPDCA60DESCR', SQLTemplateTPDCICOD.AsString);

  if not SQLTemplatePORTICOD.IsNull then
     SQLTemplatePortador.AsString := SQLLocate('PORTADOR', 'PORTICOD', 'PORTA60DESCR', SQLTemplatePORTICOD.AsString)

end;

procedure TFormCadastroContrato.mnSalvarContratoClick(Sender: TObject);
begin
  inherited;
  GeraContrato;
  if SaveDialog.Execute then
     begin
        NovoCorpo.SaveToFile(SaveDialog.FileName);
     end;
end;

procedure TFormCadastroContrato.SQLTemplateAfterPost(DataSet: TDataSet);
begin
  inherited;
  if not SQLParcelasPrazoVendaTemp.IsEmpty and NovaDup then
     begin
        // Gerar Contas Receber
        SQLContasReceber.Close;
        SQLContasReceber.ParamByName('CONTA13ID').AsString := SQLTemplateCONTA13ID.AsString;
        SQLContasReceber.Open;
        SQLContasReceber.First;
        While Not SQLParcelasPrazoVendaTemp.Eof Do
          Begin
            SQLContasReceber.Append;
            SQLContasReceberCTRCCSTATUS.Value      := 'A';
            SQLContasReceberCTRCDEMIS.Value        := SQLTemplateCONTDEMISSAO.Value;
            SQLContasReceberCTRCDVENC.Value        := SQLParcelasPrazoVendaTempDATAVENCTO.Value;
            SQLContasReceberCTRCINROPARC.Value     := SQLParcelasPrazoVendaTempNROPARCELA.Value;
            SQLContasReceberCTRCN2VLR.Value        := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
            SQLContasReceberCTRCA5TIPOPADRAO.Value := SQLParcelasPrazoVendaTempTipoPadrao.Value;
            SQLContasReceberCLIEA13ID.AsString     := SQLTemplateCONTA13IDEMPCONBRANCA.AsString;
            SQLContasReceberCONTA13ID.AsString     := SQLTemplateCONTA13ID.AsString;
            SQLContasReceberCTRCA30NRODUPLICBANCO.AsString := SQLTemplateCONTA13ID.AsString;
            // PLANO DE CONTAS
            if DM.ProcuraRegistro('NUMERARIO',['NUMEICOD'],[SQLParcelasPrazoVendaTempNUMEICOD.AsString],1) then
              begin
                if DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString <> '' then
                  SQLContasReceberPLCTA15COD.AsString  := DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString;
                if DM.SQLTemplate.FieldByName('PLCTA15CODDEB').AsString <> '' then
                  SQLContasReceberPLCTA15CODDEBITO.AsString  := DM.SQLTemplate.FieldByName('PLCTA15CODDEB').AsString;
              end;
            SQLContasReceberNUMEICOD.Value         := SQLParcelasPrazoVendaTempNUMEICOD.Value;

            SQLContasReceberTERMICOD.Value         := TerminalCorrente;
            SQLContasReceberTPDCICOD.asVariant     := SQLTemplateTPDCICOD.asVariant;
            SQLContasReceberPORTICOD.asVariant     := SQLTemplatePORTICOD.asVariant;
            if CheckHistorico.Checked then
               SQLContasReceberCTRCA254HIST.AsString  := MemoHistorico.Text;

            SQLContasReceberHTPDICOD.AsVariant        := SQLTemplateHTPDICOD.AsVariant;

            SQLContasReceberPLCTA15COD.AsVariant      := SQLTemplatePLCTA15COD.AsVariant;
            // Avalista
            if SQLTemplateAVALA13ID.AsString <> '' then
              SQLContasReceberAVALA13ID.AsString   := SQLTemplateAVALA13ID.AsString;

            SQLContasReceber.Post;
            SQLParcelasPrazoVendaTemp.Next;
          end;
        SQLContasReceber.Close;
        SQLParcelasPrazoVendaTemp.Close;
        SQLParcelasPrazoVendaTemp.RequestLive := False;
        SQLParcelasPrazoVendaTemp.SQL.Text := SQLAntigo;
        SQLParcelasPrazoVendaTemp.MacroByName('MFiltro').AsString := ' CONTA13ID  = "' + SQLTemplateCONTA13ID.AsString + '"';
        SQLParcelasPrazoVendaTemp.Open;
        NovaDup := False;
     end;
end;

procedure TFormCadastroContrato.btGerarParcelasClick(Sender: TObject);
Var
   DataVecto : TDate;
   NumParc: Integer;
   TotalMeses, Valor : Double;
begin
  inherited;
  if SQLTemplateCONTN3VLRPARCELA.AsVariant > 0 Then
    Begin
      SQLParcelasPrazoVendaTemp.Close;
      NovaDup := True;
      SQLParcelasPrazoVendaTemp.RequestLive := True;

      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('delete from PARCELASPRAZOVENDATEMP') ;
      DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
      DM.SQLTemplate.ExecSQL ;

      SQLParcelasPrazoVendaTemp.Close ;
      SQLParcelasPrazoVendaTemp.SQL.Clear ;
      SQLParcelasPrazoVendaTemp.SQL.Add('select * from PARCELASPRAZOVENDATEMP') ;
      SQLParcelasPrazoVendaTemp.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
      SQLParcelasPrazoVendaTemp.SQL.Add('order by NROPARCELA') ;
      SQLParcelasPrazoVendaTemp.Open ;

      TotalMeses := (SQLTemplateCONTDTERMINO.AsDateTime - SQLTemplateCONTDINICIO.AsDateTime);
      TotalMeses := TotalMeses / SQLTemplateCONTIPERIODO.AsInteger;

      SQLTemplateCONTN2VLRTOTAL.AsFloat := TotalMeses * SQLTemplateCONTN3VLRPARCELA.AsFloat;
      Valor := SQLTemplateCONTN2VLRTOTAL.AsFloat;
      DataVecto := Date;
      NumParc   := 1;
      while Valor > 0 do
         begin
            SQLParcelasPrazoVendaTemp.Append;
            SQLParcelasPrazoVendaTempTERMICOD.AsInteger := TerminalCorrente;
            SQLParcelasPrazoVendaTempDATAVENCTO.AsDateTime := DataVecto;
            SQLParcelasPrazoVendaTempNROPARCELA.AsInteger := NumParc;
            if Valor > SQLTemplateCONTN3VLRPARCELA.AsFloat then
               SQLParcelasPrazoVendaTempVALORVENCTO.AsFloat  := SQLTemplateCONTN3VLRPARCELA.AsFloat
            else
               SQLParcelasPrazoVendaTempVALORVENCTO.AsFloat  := Valor;
            SQLParcelasPrazoVendaTempNUMEICOD.AsInteger   := SQLNumerarioPrazoNUMEICOD.AsInteger;
            SQLParcelasPrazoVendaTemp.Post;
            DataVecto := IncDay(DataVecto, SQLTemplateCONTIPERIODO.AsInteger);
            Valor := Valor - SQLTemplateCONTN3VLRPARCELA.AsFloat;
            NumParc := NumParc + 1;
         end;
      SQLParcelasPrazoVendaTemp.Close;
      SQLParcelasPrazoVendaTemp.Open;
    end;

end;

procedure TFormCadastroContrato.SQLContasReceberBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  DM.RegistraExclusao('CONTASRECEBER',SQLContasReceber);
  SQLExcluiDetalhes.MacroByName('MTabela').AsString   := 'RECEBIMENTO';
  SQLExcluiDetalhes.MacroByName('MFiltro').asString   := DM.ClausulaFiltro('CONTASRECEBER',SQLContasReceber);
  SQLExcluiDetalhes.MacroByName('MClausula').asString := 'Select *';
  SQLExcluiDetalhes.Open;
  SQLExcluiDetalhes.First;
  While Not SQLExcluiDetalhes.Eof Do
    Begin
      DM.RegistraExclusao('RECEBIMENTO',SQLExcluiDetalhes);
      SQLExcluiDetalhes.Next;
    End;
  SQLExcluiDetalhes.Close;
  SQLExcluiDetalhes.MacroByName('MClausula').asString := 'Delete';
  SQLExcluiDetalhes.ExecSQL;
end;

procedure TFormCadastroContrato.SQLContasReceberBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  If DataSet.FindField('REGISTRO') <> Nil Then
    DataSet.FindField('REGISTRO').AsDateTime := Now ;
  If DataSet.FindField('PENDENTE')<> Nil Then
    DataSet.FindField('PENDENTE').AsString := 'S' ;
  If DataSet.FindField('EMPRICOD')<>Nil Then
    DataSet.FindField('EMPRICOD').Value := EmpresaCorrente ;
  If DataSet.FindField('TERMICOD')<>Nil Then
    DataSet.FindField('TERMICOD').Value := TerminalCorrente ;
  Case DataSet.State Of
    DsInsert: DM.CodigoAutomatico('CONTASRECEBER', DSSQLContasReceber, DataSet, 3, 0);
  end;
end;

procedure TFormCadastroContrato.SQLContasReceberNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLContasReceberCONTA13ID.AsString         := SQLTemplateCONTA13ID.AsString;
  SQLContasReceberCTRCINROPARC.AsInteger      := 0 ;
  SQLContasReceberCTRCN2DESCFIN.Value         := 0 ;
  SQLContasReceberCTRCN2TXJURO.Value          := 0 ;
  SQLContasReceberCTRCN2TXMULTA.Value         := 0 ;
  SQLContasReceberCTRCN2TOTREC.Value          := 0 ;
  SQLContasReceberCTRCN2TOTJUROREC.Value      := 0 ;
  SQLContasReceberCTRCN2TOTMULTAREC.Value     := 0 ;
  SQLContasReceberCTRCN2TOTDESCREC.Value      := 0 ;
end;

procedure TFormCadastroContrato.SQLContasReceberPostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
var
ID : String;  
begin
  inherited;
  Case DataSet.State Of
    DsInsert: begin
                DataSet.FieldByName('CTRCICOD').AsInteger:=DataSet.FieldByName('CTRCICOD').AsInteger + 1;
                ID := Format('%.3d',[EmpresaCorrente])+Format('%.3d',[TerminalCorrente])+Format('%.6d',[DataSet.FieldByName('CTRCICOD').asInteger]);
                DataSet.FieldByName('CTRCA13ID').asString:=ID+DM.DigitVerifEAN(ID);
              end;   

  end;
  Action := DaRetry;
end;

procedure TFormCadastroContrato.SQLTemplateAfterCancel(DataSet: TDataSet);
begin
  inherited;
  NovaDup := False;
  SQLParcelasPrazoVendaTemp.Close;
  SQLParcelasPrazoVendaTemp.RequestLive := False;
  if SQLAntigo <> '' then
     SQLParcelasPrazoVendaTemp.SQL.Text := SQLAntigo;
  SQLParcelasPrazoVendaTemp.MacroByName('MFiltro').AsString := ' CONTA13ID  = "' + SQLTemplateCONTA13ID.AsString + '"';
  SQLParcelasPrazoVendaTemp.Open;
end;

procedure TFormCadastroContrato.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  btGerarParcelas.Enabled :=  SQLParcelasPrazoVendaTemp.IsEmpty  and
                              (SQLTemplate.State in dsEditModes) and
                              (SQLTemplateCONTCSITUACAO.AsString = 'A') and
                              not SQLTemplateNUMEICOD.IsNull and
                              not SQLTemplatePORTICOD.IsNull and
                              not SQLTemplateTPDCICOD.IsNull and
                              not SQLTemplateCONTIPERIODO.IsNull;
  mnGerarFinanceiro.Enabled := btGerarParcelas.Enabled;
end;

procedure TFormCadastroContrato.DBDateEdit2Exit(Sender: TObject);
begin
  inherited;
  if SQLTemplateCONTDTERMINO.AsDateTime < SQLTemplateCONTDINICIO.AsDateTime then
     begin
        SQLTemplateCONTDTERMINO.FocusControl;
        Informa('A data de Término deve ser posterios a data de Inicio.');
        Abort;
     end;
end;

procedure TFormCadastroContrato.RxDBLookupCombo8KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     btAcessaTipoContrato.Click;
end;

procedure TFormCadastroContrato.RxDBLookupCombo2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     btAcessaCliente.Click;
end;

procedure TFormCadastroContrato.RxDBLookupCombo1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     btAcessaClientecCob.Click;
end;

procedure TFormCadastroContrato.btAcessaTipoContratoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := SQLTemplateTPCTICOD;
  FieldOrigem := 'TPCTICOD' ;
  DataSetLookup := SQLTipoContrato;
  CriaFormulario(TFormCadastroTipoContrato,'FormCadastroTipoContrato',False,True,True,'Contrato ' + SQLTemplateCONTA60DESCR.AsString);
end;

procedure TFormCadastroContrato.btAcessaClienteClick(Sender: TObject);
begin
  inherited;
  FieldLookup := SQLTemplateCONTA13IDCONTRATANTE;
  FieldOrigem := 'CONTA13IDCONTRATANTE' ;
  DataSetLookup := SQLCliente;
  CriaFormulario(TFormCadastroCliente,'FormCadastroCliente',False,True,False,'Contrato ' + SQLTemplateCONTA60DESCR.AsString);
end;

procedure TFormCadastroContrato.btAcessaClientecCobClick(Sender: TObject);
begin
  inherited;
  FieldLookup := SQLTemplateCONTA13IDEMPCONBRANCA;
  FieldOrigem := 'CONTA13IDEMPCONBRANCA' ;
  DataSetLookup := SQLCliente;
  CriaFormulario(TFormCadastroCliente,'FormCadastroCliente',False,True,False,'Contrato ' + SQLTemplateCONTA60DESCR.AsString);
end;

procedure TFormCadastroContrato.RxDBLookupCombo2Change(Sender: TObject);
begin
  inherited;
  if SQLTemplateCONTA13IDEMPCONBRANCA.IsNull then
     SQLTemplateCONTA13IDEMPCONBRANCA.AsVariant := SQLTemplateCONTA13IDCONTRATANTE.AsVariant;
  if SQLTemplateCONTA60CONTATO.IsNull then
     SQLTemplateCONTA60CONTATO.AsVariant := SQLClienteCLIEA60CONTATO.AsVariant;
end;

procedure TFormCadastroContrato.RxDBLookupCombo1Change(Sender: TObject);
begin
  inherited;
  if SQLTemplateCONTA60RESPONSAVEL.IsNull then
     SQLTemplateCONTA60RESPONSAVEL.AsVariant := SQLClienteCLIEA60CONTATO.AsVariant;
end;

procedure TFormCadastroContrato.RxDBLookupCombo3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     btAcessaPlanoContas.Click;
end;

procedure TFormCadastroContrato.RxDBLookupCombo9KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     btAcessaNumerario.Click;
end;

procedure TFormCadastroContrato.RxDBLookupCombo5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     btAcessaAvalista.Click;
end;

procedure TFormCadastroContrato.RxDBLookupCombo6KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     btAcessaPortador.Click;
end;

procedure TFormCadastroContrato.RxDBLookupCombo4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     btAcessaTipoDocumento.Click;
end;

procedure TFormCadastroContrato.RxDBLookupCombo10KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     btAcessaHistoricoPadrao.Click;
end;

procedure TFormCadastroContrato.btAcessaPlanoContasClick(Sender: TObject);
begin
  inherited;
  FieldLookup := SQLTemplatePLCTA15COD;
  FieldOrigem := 'PLCTA15COD' ;
  DataSetLookup := SQLPlanoConta;
  CriaFormulario(TFormCadastroPlanodeContas,'FormCadastroPlanodeContas',False,True,True,'Contrato ' + SQLTemplateCONTA60DESCR.AsString);
end;

procedure TFormCadastroContrato.btAcessaNumerarioClick(Sender: TObject);
begin
  inherited;
  FieldLookup := SQLTemplateNUMEICOD;
  FieldOrigem := 'NUMEICOD' ;
  DataSetLookup := SQLNumerarioPrazo;
  CriaFormulario(TFormTelaConsultaNumerario,'FormTelaConsultaNumerario',False,True,True,'Contrato ' + SQLTemplateCONTA60DESCR.AsString);

end;

procedure TFormCadastroContrato.btAcessaAvalistaClick(Sender: TObject);
begin
  inherited;
  FieldLookup := SQLTemplateAVALA13ID;
  FieldOrigem := 'AVALA13ID' ;
  DataSetLookup := SQLAvalista;
  CriaFormulario(TFormCadastroAvalista,'FormCadastroAvalista',False,True,True,'Contrato ' + SQLTemplateCONTA60DESCR.AsString);

end;

procedure TFormCadastroContrato.btAcessaPortadorClick(Sender: TObject);
begin
  inherited;
  FieldLookup := SQLTemplatePORTICOD;
  FieldOrigem := 'PORTICOD' ;
  DataSetLookup := SQLPortador;
  CriaFormulario(TFormCadastroPortador,'FormCadastroPortador',False,True,True,'Contrato ' + SQLTemplateCONTA60DESCR.AsString);

end;

procedure TFormCadastroContrato.btAcessaTipoDocumentoClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := SQLTemplateTPDCICOD;
  FieldOrigem := 'TPDCICOD' ;
  DataSetLookup := SQLTipoDoc;
  CriaFormulario(TFormCadastroTipoDocumento,'FormCadastroTipoDocumento',False,True,True,'Contrato ' + SQLTemplateCONTA60DESCR.AsString);
end;

procedure TFormCadastroContrato.btAcessaHistoricoPadraoClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := SQLTemplateHTPDICOD;
  FieldOrigem := 'HTPDICOD' ;
  DataSetLookup := SQLHistoricoPadrao;
  CriaFormulario(TFormCadastroHistoricoPadrao,'FormCadastroHistoricoPadrao',False,True,True,'Contrato ' + SQLTemplateCONTA60DESCR.AsString);

end;

procedure TFormCadastroContrato.RxDBLookupCombo10Change(Sender: TObject);
begin
  inherited;
  MemoHistorico.Clear;
  MemoHistorico.Text := SQLHistoricoPadraoHTPDA100HISTORICO.AsString;
end;

procedure TFormCadastroContrato.mnGerarFinanceiroClick(Sender: TObject);
begin
  inherited;
  btGerarParcelas.Click;
end;

procedure TFormCadastroContrato.Button1Click(Sender: TObject);
begin
  if TComponent(Sender).Name = 'Button3' then
     PagePrincipal.ActivePage := TabSheetCorpoContrato;

  if TComponent(Sender).Name = 'Button4' then
     PagePrincipal.ActivePage := TabSheetFinanceiro;

  if TComponent(Sender).Name = 'Button5' then
     begin
         DSMasterSys := DSTemplate;
         CriaFormulario(TFormCadastroContratoFinanceiro, 'FormCadastroContratoFinanceiro', True, False,True,'Contrato ' + SQLTemplateCONTA60DESCR.AsString);
     end;
  inherited;
end;

procedure TFormCadastroContrato.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DataSetLookup := Nil;
  DSMasterSys   := Nil;
end;

function tbKeyIsDown(const Key: integer): boolean;
begin
  Result := GetKeyState(Key) and 128 > 0;
end;


procedure TFormCadastroContrato.dbrCorpoContratoURLClick(Sender: TObject;
  const URLText: String; Button: TMouseButton);
begin
  inherited;
   if tbKeyIsDown(VK_CONTROL) then
      ShellExecute(Handle, 'open', PChar(URLText), '', '', 1);
end;

procedure TFormCadastroContrato.MenuMeasureItem(Sender: TObject;
  ACanvas: TCanvas; var Width, Height: Integer);
begin
  Width := 100;
end;

procedure TFormCadastroContrato.SQLTemplateBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if SQLTemplate.State in dseditmodes then
end;

end.





