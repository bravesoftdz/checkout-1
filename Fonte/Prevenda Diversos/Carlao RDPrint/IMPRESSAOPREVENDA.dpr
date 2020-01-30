program IMPRESSAOPREVENDA;

uses
  Forms,
  Principal in 'Principal.pas' {FormPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Pedido de Venda';
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
