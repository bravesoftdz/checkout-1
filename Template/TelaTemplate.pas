unit TelaTemplate;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ToolEdit, StdCtrls, Buttons, ExtCtrls, Db, DBTables, RxQuery, DBCtrls,
  Mask, DBCGrids, Grids, DBGrids;

type
  TFormTelaTemplate = class(TForm)
    PanelBotao: TPanel;
    BtnFecharTela: TSpeedButton;
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaTemplate: TFormTelaTemplate;

implementation

uses DataModulo;

{$R *.DFM}


procedure TFormTelaTemplate.BtnFecharTelaClick(Sender: TObject);
begin
  Close;
end;

procedure TFormTelaTemplate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormTelaTemplate.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If Key = VK_Return then
    Perform(WM_NextDlgCtl,0,0);
end;

procedure TFormTelaTemplate.FormActivate(Sender: TObject);
begin
  WindowState:=wsMaximized;
  Update;
end;

end.
