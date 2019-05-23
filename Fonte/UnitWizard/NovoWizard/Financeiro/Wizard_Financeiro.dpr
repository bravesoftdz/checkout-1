program Wizard_Financeiro;

uses
  Forms,
  WizardFinanceiro in 'WizardFinanceiro.pas' {FormWizardFinanceiro},
  Splash in '..\Splash.pas' {FormSplash},
  DataModulo in '..\DataModulo.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormSplash, FormSplash);
  Application.CreateForm(TDM, DM);
  FormSplash.Show;
  Application.ProcessMessages;
  Application.CreateForm(TFormWizardFinanceiro, FormWizardFinanceiro);
  FormWizardFinanceiro.ShowModal;
  Application.Terminate;
  Application.Run;
end.
