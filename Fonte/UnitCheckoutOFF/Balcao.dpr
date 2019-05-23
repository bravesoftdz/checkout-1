program Balcao;

uses
  Forms,
  DataModuloTemplate in '..\..\Template\DataModuloTemplate.pas' {DMTemplate: TDataModule},
  UnSoundPlay in '..\..\Template\UnSoundPlay.pas',
  VarSYS in '..\..\Template\VarSYS.pas',
  TELALOGIN in 'TelaLogin.pas' {FormTelaLogin},
  DataModulo in 'DataModulo.pas' {DM: TDataModule},
  TelaItens in 'TelaItens.pas' {FormTelaItens},
  TelaAutenticaUsuario in '..\UnitCheckout\TelaAutenticaUsuario.pas' {FormTelaAutenticaUsuario};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormTelaItens, FormTelaItens);
  Application.Run;
end.
