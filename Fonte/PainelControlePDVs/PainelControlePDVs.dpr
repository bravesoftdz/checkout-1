program PainelControlePDVs;

uses
  Forms,
  Principal in 'Principal.pas' {FormPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
