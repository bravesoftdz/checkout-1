program VALEBEBIDA;

uses
  Forms,
  Principal in 'Principal.pas' {FormPrincipal},
  DataModulo in 'DataModulo.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Bebida';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
