program ValeBebida;

uses
  Forms,
  Principal in 'Principal.pas' {FormPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Bebida';
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
