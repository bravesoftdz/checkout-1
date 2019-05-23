program Wizard_Loja;

uses
  Forms,
  Splash in '..\Splash.pas' {FormSplash},
  WizardADM in 'WizardADM.pas' {FormWizardADM},
  DataModulo in '..\DataModulo.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormSplash, FormSplash);
  Application.CreateForm(TDM, DM);
  FormSplash.Show;
  Application.ProcessMessages;
  Application.CreateForm(TFormWizardADM, FormWizardADM);
  FormWizardADm.ShowModal;
  Application.Terminate;

  Application.Run;
end.
