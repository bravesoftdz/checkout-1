program GestaoAcesso;

uses
  Forms,
  winprocs,
  Acesso in 'Acesso.pas' {FormPrincipal},
  WaitWindow in '..\ArquivosComuns\WaitWindow.pas',
  WindowsLibrary in '..\ArquivosComuns\WindowsLibrary.pas',
  TelaConfigAlias in 'TelaConfigAlias.pas' {FormConfigAlias},
  TelaAtualizaVersao in 'TelaAtualizaVersao.pas' {FormTelaAtualizaVersao},
  Backup in 'Backup.pas' {FormBackup};

{$R *.res}
var
  hMutex :THandle;
  hndApp :THandle;
begin
  hMutex := CreateMutex (nil, False, 'OneCopyMutex');
  if WaitForSingleObject (hMutex, 0) <> Wait_TimeOut then
  begin
    Application.Initialize;
    Application.Title := 'Advanced Control Acesso';
    Application.CreateForm(TFormPrincipal, FormPrincipal);
    Application.Run;
  end
  else
  begin
    Application.MessageBox('Esta aplicativo já está sendo executado !','Acesso Informa ! ', MB_OK + MB_ICONWARNING + MB_SYSTEMMODAL);
  end;
end.

