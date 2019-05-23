unit CadastroBalanca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, RxDBComb, ToolEdit, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroBalanca = class(TFormCadastroTEMPLATE)
    SQLTemplateCFBLICOD: TIntegerField;
    SQLTemplateCFBLA60DESCR: TStringField;
    SQLTemplateCFBLIDECIMAIS: TIntegerField;
    SQLTemplateCFBLCUSASEPAR: TStringField;
    SQLTemplateCFBLA1TIPOSEPAR: TStringField;
    SQLTemplateCFBLA254NOMEARQTXT: TStringField;
    SQLTemplateCFBLA10BALID: TStringField;
    SQLTemplateCFBLIBALIDPOS: TIntegerField;
    SQLTemplateCFBLIBALIDTAM: TIntegerField;
    SQLTemplateCFBLIBALCODPOS: TIntegerField;
    SQLTemplateCFBLIBALCODTAM: TIntegerField;
    SQLTemplateCFBLIVLRPOS: TIntegerField;
    SQLTemplateCFBLIVLRTAM: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    GroupBox4: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TRxDBComboBox;
    DBEdit16: TDBEdit;
    GroupBox5: TGroupBox;
    Label17: TLabel;
    DBEdit18: TDBEdit;
    FilePath: TDirectoryEdit;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA30ADESCRREDUZ: TStringField;
    SQLProdutoPRODN3VLRVENDA: TFloatField;
    SQLProdutoPRODICODBALANCA: TIntegerField;
    ComboTipoPreco: TRxDBComboBox;
    Label18: TLabel;
    SQLTemplateCFBLCTIPOPRECO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FilePathChange(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroBalanca: TFormCadastroBalanca;

implementation

uses UnitLibrary, CadastroConfigBalancaLayOutArq, FormResources, VarSys;

{$R *.dfm}

procedure TFormCadastroBalanca.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CONFIGBALANCA' ;
end;

procedure TFormCadastroBalanca.FilePathChange(Sender: TObject);
begin
  inherited;
  if not (SQLTemplate.State in dsEditModes) then
  begin
    Informa('Clique em Alterar antes !') ;
    exit ;
  end ;

  SQLTemplateCFBLA254NOMEARQTXT.Value := FilePath.Text ;
end;

procedure TFormCadastroBalanca.Button3Click(Sender: TObject);
begin
  inherited;
  DSMasterSys := DsTemplate;
  CriaFormulario(TFormCadastroConfigBalancaLayOutArq,'FormCadastroConfigBalancaLayOutArq',True,False,True,'');
end;

end.
