program Wizard_Cash;

uses
  Forms,
  Splash in '..\Splash.pas' {FormSplash},
  WizardCash in 'WizardCash.pas' {FormWizardCash},
  DataModulo in '..\DataModulo.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormSplash, FormSplash);
  Application.CreateForm(TDM, DM);
  FormSplash.Show;
  Application.ProcessMessages;
  Application.CreateForm(TFormWizardCash, FormWizardCash);
  FormWizardCash.ShowModal;
  Application.Terminate;

  Application.Run;
end.
