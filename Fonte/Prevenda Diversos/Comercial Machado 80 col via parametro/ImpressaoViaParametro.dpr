program ImpressaoViaParametro;

uses
  Forms,
  Principal in 'Principal.pas' {FormPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Impressao Pre Venda';
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
