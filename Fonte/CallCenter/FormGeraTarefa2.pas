unit FormGeraTarefa2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBTables, DBActns, ActnList, ImgList, DB, RxQuery,
  Menus, DBCtrls, RxLookup, StdCtrls, Mask, Grids, DBGrids, ComCtrls,
  RXCtrls, Buttons, jpeg, unitlibrary;

type
  TFormGeraTarefa = class(TForm)
    ScrollBoxFundo: TScrollBox;
    PanelCabecalho: TPanel;
    Panel2: TPanel;
    LabelStatus: TLabel;
    LabelRegistros: TLabel;
    Panel3: TPanel;
    LabelDataHoraAlteracao: TLabel;
    Panel1: TPanel;
    LabelTitulo: TLabel;
    PanelNavigator: TPanel;
    Image1: TImage;
    LabelNovo: TSpeedButton;
    LabelAlterar: TSpeedButton;
    LabelGravar: TSpeedButton;
    LabelExcluir: TSpeedButton;
    LabelCancelar: TSpeedButton;
    LabelDiversos: TRxSpeedButton;
    LabelImpressao: TRxSpeedButton;
    Bevel1: TBevel;
    BtnRegistroAnterior: TSpeedButton;
    LabelRetornar: TSpeedButton;
    BtnProximoRegistro: TSpeedButton;
    Bevel2: TBevel;
    BtnFecharTela: TSpeedButton;
    PanelCentral: TPanel;
    PanelFundoDados: TPanel;
    Panel5: TPanel;
    PagePrincipal: TPageControl;
    TabSheetConsulta: TTabSheet;
    DBGridLista: TDBGrid;
    PanelProcura: TPanel;
    PanelBetween: TPanel;
    LabelEntre: TLabel;
    LabelEEntre: TLabel;
    EditEntre: TMaskEdit;
    EditE: TMaskEdit;
    PanelEditProcura: TPanel;
    LabelValorProcura: TLabel;
    EditProcura: TMaskEdit;
    PanelIndice: TPanel;
    LblProcurarPor: TLabel;
    LblOrdenarPor: TLabel;
    LabelOperador: TLabel;
    LabelSequencia: TLabel;
    ComboOrdem: TComboBox;
    ComboOrder: TComboBox;
    ComboOperador: TComboBox;
    ComboAscDesc: TComboBox;
    MemoDetalhes: TMemo;
    TabSheetDadosPrincipais: TTabSheet;
    PanelSolucao: TPanel;
    Label4: TLabel;
    MemoSolucao: TDBMemo;
    PanelSolicitacao: TPanel;
    Label3: TLabel;
    MemoProblema: TDBMemo;
    PanelMaster: TPanel;
    PanelCodigoDescricao: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    EditContato: TDBEdit;
    DBEdit1: TDBEdit;
    DSTemplate: TDataSource;
    PopupMenuDiversos: TPopupMenu;
    PopupMenuImpressao: TPopupMenu;
    SQLTemplate: TRxQuery;
    SQLTemplateHELPA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateHELPICOD: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateHELPCCONTATO: TStringField;
    SQLTemplateHELPDINICIO: TDateTimeField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplateHELPTSOLICITACAO: TMemoField;
    a: TMemoField;
    SQLTemplateHELPCTIPO: TStringField;
    SQLTemplateTPHPICOD: TIntegerField;
    SQLTemplateHELPCNIVEL: TStringField;
    SQLTemplateHELPDTERMINO: TDateTimeField;
    SQLTemplateHELPCPERGUNTACHAVE: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateCLIEA60RAZAOSOC: TStringField;
    SQLCount: TRxQuery;
    DSMasterTemplate: TDataSource;
    ImageList1: TImageList;
    ActionList1: TActionList;
    actAnterior: TDataSetPrior;
    actNovo: TDataSetInsert;
    actAlterar: TDataSetEdit;
    actGravar: TDataSetPost;
    actCancelar: TDataSetCancel;
    actExcluir: TDataSetDelete;
    actProximo: TDataSetNext;
    actLookup: TAction;
    SQLExcluiDetalhes: TRxQuery;
    UpdateSQLTemplate: TUpdateSQL;
    SQLCliente: TRxQuery;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLClienteCLHPDCADASTRO: TDateTimeField;
    SQLClienteCLHPDFIRSTHELP: TDateTimeField;
    SQLClienteCLHPDLASTHELP: TDateTimeField;
    SQLClienteCLHPINROHELP: TIntegerField;
    SQLClienteCLHPDFIRSTRESET: TDateTimeField;
    SQLClienteCLHPDLASTRESET: TDateTimeField;
    SQLClienteCLHPINRORESETS: TIntegerField;
    SQLClienteCLHPTDADOSTEC: TMemoField;
    DSSQLCliente: TDataSource;
    SQLClienteProduto: TRxQuery;
    SQLClienteProdutoCLIEA13ID: TStringField;
    SQLClienteProdutoPRODICOD: TIntegerField;
    SQLClienteProdutoPRODA60DESCR: TStringField;
    DSSQLClienteProduto: TDataSource;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    DSSQLProduto: TDataSource;
    Timer: TTimer;
    SQLTipoHelp: TRxQuery;
    SQLTipoHelpTPHPICOD: TIntegerField;
    SQLTipoHelpTPHPA60DESCR: TStringField;
    SQLTipoHelpTPHPCGERATAREFA: TStringField;
    DSSQLTipoHelp: TDataSource;
    ComboProduto: TRxDBLookupCombo;
    Label5: TLabel;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    CheckBox1: TCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGeraTarefa: TFormGeraTarefa;

implementation

{$R *.dfm}

end.
