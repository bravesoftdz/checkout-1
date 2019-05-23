program Wizard_Compras;

uses
  Forms,
  WizardCompras in 'WizardCompras.pas' {FormWizardCompras},
  Splash in '..\Splash.pas' {FormSplash},
  DataModulo in '..\DataModulo.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormSplash, FormSplash);
  Application.CreateForm(TDM, DM);
  FormSplash.Show;
  Application.ProcessMessages;
  Application.CreateForm(TFormWizardCompras, FormWizardCompras);
  FormWizardCompras.ShowModal;
  Application.Terminate;
  Application.Run;
end.
