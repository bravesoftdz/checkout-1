unit PrincipalOutros;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, Menus, StdCtrls, ExtCtrls, OleCtrls, SHDocVw, jpeg, ComCtrls,
  RXCtrls, ToolWin, DBCtrls, EWall, IniFiles, VarSys, ImgList,
  DB, DBTables, RxQuery, ShellApi;

const
  MAX = 10;
type
  TInfoForm = record
    FormClass : TFormClass;
    FormName : String;
  end;
  TFormPrincipalOutros = class(TForm)
    RodapePrincipal: TStatusBar;
    MainMenu: TMainMenu;
    PanelCabecalho: TPanel;
    Cabecalho: TCoolBar;
    ToolBar3: TToolBar;
    ListaJanelas: TPopupMenu;
    ToolBar1: TToolBar;
    ToolButton6: TToolButton;
    TimerDataHora: TTimer;
    BackGround: TEvWallPaper;
    PopupSobre: TPopupMenu;
    InformacoesdeLicenca: TMenuItem;
    BtnSobre: TToolButton;
    MnResetRemoto: TMenuItem;
    PopupMenuSeguranca: TPopupMenu;
    mnControlarAcesso: TMenuItem;
    ImagensSeguranca: TImageList;
    ToolButton1: TToolButton;
    Faturamento1: TMenuItem;
    RelattriodeItensaEntregar1: TMenuItem;
    RelatriodeProdutosaEntregar1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure RelatriodeProdutosaEntregar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
  end;

var
  FormPrincipalOutros: TFormPrincipalOutros;

implementation

uses FormRelatorioPedidosItensEntregarFiltro;


{$R *.DFM}


procedure TFormPrincipalOutros.FormCreate(Sender: TObject);
begin
  if FileExists('Bmp\Logo Retaguarda.Bmp') then
    BackGround.Picture.LoadFromFile('Bmp\Logo Retaguarda.Bmp') ;

  if FileExists('Bmp\Logo Retaguarda.Jpg') then
    BackGround.Picture.LoadFromFile('Bmp\Logo Retaguarda.Jpg') ;

end;

procedure TFormPrincipalOutros.RelatriodeProdutosaEntregar1Click(
  Sender: TObject);
begin
    FormRelatorioItensEntregar := TFormRelatorioItensEntregar.Create(self);
end;

procedure TFormPrincipalOutros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action := caFree;
end;

end.
