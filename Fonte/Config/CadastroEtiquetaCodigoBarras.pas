unit CadastroEtiquetaCodigoBarras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, RxDBComb, ToolEdit, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroEtiquetaCodigoBarras = class(TFormCadastroTEMPLATE)
    SQLTemplateCFCBICOD: TIntegerField;
    SQLTemplateCFCBA60DESCR: TStringField;
    SQLTemplateCFCBA20MODELOIMPRESSORA: TStringField;
    SQLTemplateCFCBA100PATHEXEIMP: TStringField;
    SQLTemplateCFCBA100PATHARQTXT: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label3: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    TabSheetImpressorTermica: TTabSheet;
    Label4: TLabel;
    Label6: TLabel;
    DBEdit6: TDBMemo;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TRxDBComboBox;
    DBEdit4: TRxDBComboBox;
    OpenDialog1: TOpenDialog;
    PathArqtxt: TDirectoryEdit;
    ArqExecImpr: TFilenameEdit;
    SQLTemplateCFCBINROCOL: TIntegerField;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    SQLTemplateCFCBA254TEXTOTERM: TMemoField;
    Label9: TLabel;
    Memo1: TMemo;
    SQLTemplateCFCBA4PORTASERIAL: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure PathArqtxtChange(Sender: TObject);
    procedure ArqExecImprChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroEtiquetaCodigoBarras: TFormCadastroEtiquetaCodigoBarras;

implementation

{$R *.dfm}

procedure TFormCadastroEtiquetaCodigoBarras.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CONFIGETIQUETACODIGOBARRA' ;
end;

procedure TFormCadastroEtiquetaCodigoBarras.PathArqtxtChange(
  Sender: TObject);
begin
  inherited;
  if not (SQLTemplate.State in dsEditModes) then
    SQLTemplate.Edit ;

  SQLTemplateCFCBA100PATHARQTXT.Value := PathArqtxt.Text ;
end;

procedure TFormCadastroEtiquetaCodigoBarras.ArqExecImprChange(
  Sender: TObject);
begin
  inherited;
  if not (SQLTemplate.State in dsEditModes) then
    SQLTemplate.Edit ;

  SQLTemplateCFCBA100PATHEXEIMP.Value := ArqExecImpr.Text ;
end;

procedure TFormCadastroEtiquetaCodigoBarras.Button1Click(Sender: TObject);
begin
  inherited ;
  if TRxSpeedButton(Sender).Name = 'Button3' then
    begin
      PagePrincipal.ActivePage := TabSheetImpressorTermica ;
    end ;
end ;

end.
