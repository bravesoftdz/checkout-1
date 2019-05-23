unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ZConnection,
  ExtCtrls, DBCtrls, dbcgrids, StdCtrls, AdvSmoothPanel, RXCtrls, IniFiles,
  dxGDIPlusClasses, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormPrincipal = class(TForm)
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ptopo: TAdvOfficeStatusBar;
    logo_parceiro: TImage;
    RxLabel5: TRxLabel;
    dsSQLTerminalPDVs: TDataSource;
    TimerPDVs: TTimer;
    AdvSmoothPanel3: TAdvSmoothPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    CtrlGridTerminal: TDBCtrlGrid;
    DBText2: TDBText;
    DBText1: TDBText;
    shpStatusPDV: TShape;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    ZdbServidor: TZConnection;
    Zterminal: TZQuery;
    ZterminalTERMICOD: TIntegerField;
    ZterminalTERMA60DESCR: TStringField;
    ZterminalONLINE: TStringField;
    ZterminalDATAULTENVIO: TDateTimeField;
    ZterminalDATAULTRECTO: TDateTimeField;
    ZterminalTERMCSTATUSCAIXA: TStringField;
    ZterminalTERMDSTATUSCAIXA: TDateTimeField;
    ZterminalTOTALDIA: TFloatField;
    Label3: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBText8: TDBText;
    ZsomaVenda: TZQuery;
    ZsomaVendaTOTALDIA: TFloatField;
    dsSoma: TDataSource;
    procedure TimerPDVsTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CtrlGridTerminalPaintPanel(DBCtrlGrid: TDBCtrlGrid;
      Index: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

procedure TFormPrincipal.TimerPDVsTimer(Sender: TObject);
begin
  zterminal.close;
  zterminal.Open;
  ZsomaVenda.Close;
  ZsomaVenda.open;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
var Inifile: TInifile;
begin
  top  := 0;
  left := 0;
  IniFile := TIniFile.Create(ExtractFilePath(Application.ExeName)+'Parceiro.ini');
  ZdbServidor.HostName  := IniFile.ReadString('SERVIDOR','HostName','');
  ZdbServidor.Database  := IniFile.ReadString('SERVIDOR','Database','');
  IniFile.Free;
  try
    ZdbServidor.Connected := True;
    Application.ProcessMessages;
  except
    showmessage('Falha de Conexao ao Servidor! Verifique arquivo Parceiro.ini');
    Application.ProcessMessages;
  end;

end;

procedure TFormPrincipal.CtrlGridTerminalPaintPanel(
  DBCtrlGrid: TDBCtrlGrid; Index: Integer);
begin
  if ZterminalONLINE.Value = 'S' then
    shpStatusPDV.Brush.Color := clLime
  else
    shpStatusPDV.Brush.Color := clRed;
end;

procedure TFormPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ZdbServidor.Connected := False;
  Action := Cafree;
end;

end.
