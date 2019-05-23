program Ponto;

uses
  Forms,
  TelaBatida in 'TelaBatida.pas' {FormTelaBatida},
  DataModulo in 'DataModulo.pas' {DM: TDataModule},
  UnSoundPlay in '..\..\Template\UnSoundPlay.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormTelaBatida, FormTelaBatida);
  Application.Run;
end.
