program ImpressaoCozinha;

uses
  Forms,
  Principal in 'Principal.pas' {FormPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'CozinhaTablet';
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
