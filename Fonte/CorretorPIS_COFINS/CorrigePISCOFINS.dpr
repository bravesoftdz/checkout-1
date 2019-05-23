program CorrigePISCOFINS;

uses
  Forms,
  unPrincipal in 'unPrincipal.pas' {Form1},
  unDataModulo in 'unDataModulo.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
