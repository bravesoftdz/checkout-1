unit Backup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, IniFiles, FileCtrl, RXCtrls, jpeg, ExtCtrls, ComCtrls,
  Placemnt, IbServices;

type
  TFormBackup = class(TForm)
    OpenDialog: TOpenDialog;
    PanelCabecalho: TPanel;
    LabelTitulo: TLabel;
    PanelNavigator: TPanel;
    Image1: TImage;
    PanelBarra: TPanel;
    BtnFecharTela: TSpeedButton;
    PagePrincipal: TPageControl;
    Backup: TTabSheet;
    Restore: TTabSheet;
    Label2: TLabel;
    EditDataBasePath: TEdit;
    Label1: TLabel;
    EditDestinoPath: TEdit;
    BTDestinoRecuperarDataBasePath: TSpeedButton;
    BTGetDestinoPath: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    EditCaminhoNovaBase: TEdit;
    Label8: TLabel;
    EditOrigemBackup: TEdit;
    BTGetOrigemPathBackup: TSpeedButton;
    BTRestaurar: TRxSpeedButton;
    FormStorage: TFormStorage;
    BtCopiar: TRxSpeedButton;
    MemoBack: TMemo;
    MemoRest: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BTGetDestinoPathClick(Sender: TObject);
    procedure BTDestinoRecuperarDataBasePathClick(Sender: TObject);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure BTGetOrigemPathBackupClick(Sender: TObject);
    procedure BTRestaurarClick(Sender: TObject);
    procedure BtCopiarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Config : TIniFile;
  public
    { Public declarations }
    Origem, Destino : String;
  end;

var
  FormBackup: TFormBackup;

implementation

{$R *.DFM}

procedure TFormBackup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormBackup.FormDestroy(Sender: TObject);
begin
  Self := nil;
end;

procedure TFormBackup.BTGetDestinoPathClick(Sender: TObject);
begin
  OpenDialog.Filter := 'Todos os Arquivos (*.*)|*.*';
  OpenDialog.Execute;
  if OpenDialog.FileName <> '' then
    EditDestinoPath.Text := ExtractFilePath(OpenDialog.FileName);
  EditDestinoPath.SetFocus;
end;

procedure TFormBackup.BTDestinoRecuperarDataBasePathClick(Sender: TObject);
begin
  OpenDialog.Filter := 'Base de Dados InterBase (*.gdb)|*.gdb';
  OpenDialog.Execute;
  if OpenDialog.FileName <> '' then
    EditDataBasePath.Text := OpenDialog.FileName;
  EditDataBasePath.SetFocus;
end;

procedure TFormBackup.BtnFecharTelaClick(Sender: TObject);
begin
  Close;
end;

procedure TFormBackup.BTGetOrigemPathBackupClick(Sender: TObject);
begin
  OpenDialog.Filter := 'Base Compactada (*.gbk)|*.gbk';
  OpenDialog.Execute;
  if OpenDialog.FileName <> '' then
    EditOrigemBackup.Text := OpenDialog.FileName;

  EditCaminhoNovaBase.Text := ExtractFilePath(OpenDialog.FileName);
  EditCaminhoNovaBase.Text := EditCaminhoNovaBase.Text + 'BancoNovo.gdb';
  EditCaminhoNovaBase.SetFocus;
end;

procedure TFormBackup.BtCopiarClick(Sender: TObject);
var
  IBBack: TIBBackupService;
  BakName: String;
begin
  // Executa o Backup
  if not DirectoryExists('C:\Unit\Gestao\BackUp') then
     CreateDir('C:\Unit\Gestao\BackUp');

  Origem  := EditDataBasePath.Text;
  Destino := EditDestinoPath.Text + 'Backup_'+FormatDateTime('ddmmyy_hhmm',now)+'.gbk';
  IBBack := NIL;
  MemoBack.Clear;
  //  CopyFile(pCHar(EdArquivo.Text), pCHar(EdArquivo.Text+'.OLD'),True);
  try
    IBBack             := TIBBackupService.Create( NIL );
    IBBack.Protocol    := Local;
    IBBack.LoginPrompt := False;
    IBBack.Params.Values['user_name'] := 'SYSDBA';
    IBBack.Params.Values['password']  := 'masterkey';
    IBBack.DatabaseName := Origem;
    IBBack.BackupFile.Add(Destino);
    IBBack.Options := [];
    IBBack.Active  := True;
    IBBack.Verbose := True;
    IBBack.ServiceStart;
    while not IBBack.Eof do
    begin
      MemoBack.Lines.Add('Backup.. '+IBBack.GetNextLine);
      Application.ProcessMessages;
      Sleep(1);
    end;
    MemoBack.Lines.Add('Backup OK');
  finally
    IBBack.Active := False;
    FreeAndNil(IBBack);
  end;
end;

procedure TFormBackup.BTRestaurarClick(Sender: TObject);
var IBRest: TIBRestoreService;
begin
  IBRest := NIL;
  MemoRest.Clear;
  // Restore
  try
    IBRest := TIBRestoreService.Create( NIL );
    IBRest.Protocol := Local;
    IBRest.LoginPrompt := False;
    IBRest.Params.Values['user_name'] := 'SYSDBA';
    IBRest.Params.Values['password'] := 'masterkey';
    IBRest.DatabaseName.Add(EditCaminhoNovaBase.Text);
    IBRest.BackupFile.Add(EditOrigemBackup.Text);
    IBRest.PageSize := 4096;
    IBRest.Options := [Replace, UseAllSpace,CreateNewDB];
    IBRest.Active := True;
    IBRest.Verbose := True;
    IBRest.ServiceStart;
    while not IBRest.Eof do
    begin
      MemoRest.Lines.Add('Restore. '+IBRest.GetNextLine);
      Application.ProcessMessages;
      Sleep(1);
    end;
    MemoRest.Lines.Add('Restore OK');
  finally
    IBRest.Active := False;
    // DeleteFile(EditOrigemBackup.Text);
    Cursor:=crDefault;
    FreeAndNil(IBRest);
  end;
end;

procedure TFormBackup.FormCreate(Sender: TObject);
begin
  FormStorage.IniFileName := Application.Title + '.ini' ;
  FormStorage.IniSection  := Name;
  FormStorage.Active      := true;
end;

end.


