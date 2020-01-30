program AUTENTICACAO;

uses
  Forms,
  Principal in 'Principal.pas' {FormPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Autenticacao';
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
