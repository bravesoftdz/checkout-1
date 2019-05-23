program Atualizador;

uses
  Forms,
  TelaPrincipal in 'TelaPrincipal.pas' {FormTelaPrincipal},
  WaitWindow in '..\ArquivosComuns\WaitWindow.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Atualizador do Banco de Dados';
  Application.CreateForm(TFormTelaPrincipal, FormTelaPrincipal);
  Application.Run;
end.
