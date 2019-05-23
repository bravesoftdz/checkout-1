program Wizard_Inicial;

uses
  Forms,
  Splash in '..\Splash.pas' {FormSplash},
  WizardInicial in 'WizardInicial.pas' {FormWizardInicial},
  DataModulo in '..\DataModulo.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormSplash, FormSplash);
  Application.CreateForm(TDM, DM);
  FormSplash.Show;
  Application.ProcessMessages;
  Application.CreateForm(TFormWizardInicial, FormWizardInicial);
  FormWizardInicial.ShowModal;
  Application.Terminate;

  Application.Run;
end.
