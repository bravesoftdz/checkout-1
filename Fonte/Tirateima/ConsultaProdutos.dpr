program ConsultaProdutos;

uses
  Forms,
  TelaTiraTeima in 'TelaTiraTeima.pas' {FormTelaTiraTeima};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormTelaTiraTeima, FormTelaTiraTeima);
  Application.Run;
end.
