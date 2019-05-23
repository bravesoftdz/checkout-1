program Wizard_Faturamento;

uses
  Forms,
  WizardFaturamento in 'WizardFaturamento.pas' {FormWizardFaturamento},
  Splash in '..\Splash.pas' {FormSplash},
  DataModulo in '..\DataModulo.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormSplash, FormSplash);
  Application.CreateForm(TDM, DM);
  FormSplash.Show;
  Application.ProcessMessages;
  Application.CreateForm(TFormWizardFaturamento, FormWizardFaturamento);
  FormWizardFaturamento.ShowModal;
  Application.Terminate;

  Application.Run;
end.
