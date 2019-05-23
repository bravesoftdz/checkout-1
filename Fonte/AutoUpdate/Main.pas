unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, ToolEdit, StdCtrls, ExtCtrls, Buttons, IniFiles, DB,
  DBTables, backup;

type
  TFormMain = class(TForm)
    PanelTop: TPanel;
    PanelCenter: TPanel;
    EditVersion: TEdit;
    LabelVersion: TLabel;
    LabelLocalDirectory: TLabel;
    EditLocalDirectory: TDirectoryEdit;
    LabelRemoteDirecotry: TLabel;
    EditRemoteDirectory: TDirectoryEdit;
    ButtonSave: TSpeedButton;
    ButtonClose: TSpeedButton;
    ButtonRestore: TSpeedButton;
    OpenDialog: TOpenDialog;
    BackUpFile: TBackupFile;
    ButtonHelp: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ButtonSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonRestoreClick(Sender: TObject);
    procedure ButtonHelpClick(Sender: TObject);
  private
    { Private declarations }
    ConfigFile : TIniFile;
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

uses WindowsLibrary, Help;

{$R *.dfm}

procedure TFormMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormMain.ButtonCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFormMain.FormDestroy(Sender: TObject);
begin
  FormMain := nil;
end;

procedure TFormMain.ButtonSaveClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente salvar suas alterações?','Atenção',MB_YESNO + MB_ICONQUESTION + MB_SETFOREGROUND + MB_SYSTEMMODAL) = ID_YES then
    begin
      ConfigFile.WriteString('CONFIG','VERSION',EditVersion.Text);
      ConfigFile.WriteString('CONFIG','LOCALDIRECTORY',EditLocalDirectory.Text);
      ConfigFile.WriteString('CONFIG','REMOTEDIRECTORY',EditRemoteDirectory.Text);
      ConfigFile.UpdateFile;
    end;
end;

procedure TFormMain.FormCreate(Sender: TObject);
  function ResolveAlias(Path : string) : string;
  var
    i : integer;
  begin
    i := 0;
    Result := UpperCase(Trim(Path));
    while Pos(':',Path) > 0 do
      begin
        inc(i);
        Path[Pos(':',Path)] := ';';
      end;
    if i > 1 then
      begin
        Result := '\\' + Result;
        Result[Pos(':',Result)] := '\';
        Delete(Result,Pos(':',Result),1);
      end;
    if Pos('DADO',Result) > 0 then
      Result := Copy(Result,1,Pos('DADO',Result) -1);
  end;
var
  MyAlias, Params : TStrings;
  I, J : integer;
begin
  ConfigFile := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'AutoUpDate.ini');
  if (ConfigFile.ReadString('CONFIG','REMOTEDIRECTORY','') = '') then
    begin
      try
        MyAlias := TStringList.Create;
        Session.GetAliasNames(MyAlias);
        for I := 0 to MyAlias.Count -1 do
          begin
            if UpperCase(MyAlias.Strings[I]) = 'UNITGESTAO' then
              begin
                Params := TStringList.Create;
                Session.GetAliasParams(MyAlias.Strings[I],Params);
                ConfigFile.WriteString('CONFIG','LOCALDIRECTORY',ExtractFilePath(Application.ExeName) + 'BACKUP');
                for J := 0 to Params.Count - 1 do
                  begin
                    if Pos('SERVER NAME',Params.Strings[J]) > 0 then
                      begin
                        ConfigFile.WriteString('CONFIG','REMOTEDIRECTORY',ResolveAlias(Copy(Params.Strings[J],Pos('=',Params.Strings[J]) + 1,(Length(Params.Strings[J]) - (Pos('=',Params.Strings[J]) + 1)))) + 'UPDATE');
                        Break;
                      end;
                  end;
                ConfigFile.UpdateFile;
                {CRIANDO A PASTA LOCAL}
                if (ConfigFile.ReadString('CONFIG','LOCALDIRECTORY','') <> '') then
                  if not DirectoryExists(ConfigFile.ReadString('CONFIG','LOCALDIRECTORY','')) then
                    if not CreateDir(ConfigFile.ReadString('CONFIG','LOCALDIRECTORY','')) then
                      Application.MessageBox('Problemas ao criar a pasta local de backup de arquivos!','Atenção',MB_OK + MB_ICONERROR + MB_SETFOREGROUND + MB_SYSTEMMODAL);
                {CRIANDO A PASTA REMOTA}
                if (ConfigFile.ReadString('CONFIG','REMOTEDIRECTORY','') <> '') then
                  if not DirectoryExists(ConfigFile.ReadString('CONFIG','REMOTEDIRECTORY','')) then
                    if not CreateDir(ConfigFile.ReadString('CONFIG','REMOTEDIRECTORY','')) then
                      Application.MessageBox('Problemas ao criar a pasta remota de atualização de arquivos!','Atenção',MB_OK + MB_ICONERROR + MB_SETFOREGROUND + MB_SYSTEMMODAL);
                Break;
              end;
          end;
      except
        MyAlias.Free;
        Params.Free;
        Application.ProcessMessages;
      end;
    end;
  EditVersion.Text := ConfigFile.ReadString('CONFIG','VERSION','');
  EditLocalDirectory.Text := ConfigFile.ReadString('CONFIG','LOCALDIRECTORY','');
  EditRemoteDirectory.Text := ConfigFile.ReadString('CONFIG','REMOTEDIRECTORY','');
end;

procedure TFormMain.ButtonRestoreClick(Sender: TObject);
var
  Path : string;
  Log : TextFile;
begin
  OpenDialog.InitialDir := ConfigFile.ReadString('CONFIG','LOCALDIRECTORY','');
  OpenDialog.Title := 'Selecione os arquivos para restaurar a versão...';
  OpenDialog.Execute;
  Path := OpenDialog.FileName;
  if FileExists(Path) then
    begin
      if Application.MessageBox('Deseja realmente restaurar a versão?','Atenção',MB_YESNO + MB_ICONQUESTION + MB_SETFOREGROUND + MB_SYSTEMMODAL) = ID_YES then
        begin
          if DirectoryExists(ConfigFile.ReadString('CONFIG','REMOTEDIRECTORY','')) then
            begin
              try
                Screen.Cursor := crHourGlass;
                BackUpFile.Restore(Path,ExtractFilePath(Application.ExeName));
                BackUpFile.Restore(Path,ConfigFile.ReadString('CONFIG','REMOTEDIRECTORY',''));
                ConfigFile.WriteString('CONFIG','VERSION',FloatToStr(GetVersion(Copy(Path,1,Length(Path) - 4) + '.exe')));
                AssignFile(Log,ExtractFilePath(Application.ExeName) + 'AutoUpDate.log');
                if not FileExists(ExtractFilePath(Application.ExeName) + 'AutoUpDate.log') then
                  Rewrite(Log);
                Reset(Log);
                Append(Log);
                Writeln(Log,'Restore efetuado em ' + FormatDateTime('dd/mm/yyyy hh:nn:ss',Now) + ' no caminho ' + Path);
                CloseFile(Log);
                Screen.Cursor := crDefault;
              except on E : Exception do
                begin
                  Application.MessageBox(PChar('Problemas restaurando a versão. Transmita a mensagem ao revendedor: ' + #13 + E.Message),'Atenção',MB_OK + MB_ICONERROR + MB_SETFOREGROUND + MB_SYSTEMMODAL);
                  Screen.Cursor := crDefault;
                end;
              end;
            end
          else
            Application.MessageBox(PChar('Pasta remota não está acessível ou não existe! ' + ConfigFile.ReadString('CONFIG','REMOTEDIRECTORY','')),'Atenção',MB_OK + MB_ICONERROR + MB_SETFOREGROUND + MB_SYSTEMMODAL);
        end;
    end
  else
    Application.MessageBox('Arquivo selecionado é inválido! Selecione corretamente.','Atenção',MB_OK + MB_ICONERROR + MB_SETFOREGROUND + MB_SYSTEMMODAL);
end;

procedure TFormMain.ButtonHelpClick(Sender: TObject);
begin
  Application.CreateForm(TFormHelp,FormHelp);
  FormHelp.ShowModal;
end;

end.
