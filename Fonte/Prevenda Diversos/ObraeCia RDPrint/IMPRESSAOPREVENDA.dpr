program IMPRESSAOPREVENDA;

uses
  Forms,
  Principal in 'Principal.pas' {FormPrincipal},
  DataModuloTemplate in '..\..\..\Template\DataModuloTemplate.pas' {DMTemplate: TDataModule},
  DataModulo in 'DataModulo.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Impressao Pre Venda';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
