program Wizard_Standard;

uses
  Forms,
  WizardStandard in 'WizardStandard.pas' {FormWizardStandard},
  DataModulo in '..\DataModulo.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Standard Control Wizard [Configura��es Gerais]';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormWizardStandard, FormWizardStandard);
  Application.Run;
end.
