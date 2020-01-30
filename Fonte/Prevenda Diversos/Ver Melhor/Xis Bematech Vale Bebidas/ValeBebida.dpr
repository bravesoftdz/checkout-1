program ValeBebida;

uses
  Forms,
  Principal in 'Principal.pas' {FormPrincipal},
  declaracoes in '..\Xis Modelo Prevenda Bematech\declaracoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Bebida';
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
