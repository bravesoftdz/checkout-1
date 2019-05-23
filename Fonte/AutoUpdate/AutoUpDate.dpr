program AutoUpDate;

uses
  Forms,
  Main in 'Main.pas' {FormMain},
  Help in 'Help.pas' {FormHelp},
  WindowsLibrary in '..\ArquivosComuns\WindowsLibrary.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Atualizador de Versão - ATW';
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
