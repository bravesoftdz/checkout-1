program AtualizadorPHP;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {frmAtualizarPHP},
  TelaAutenticaUsuario in 'TelaAutenticaUsuario.pas' {FormTelaAutenticaUsuario};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'AtualizadorPHP';
  Application.CreateForm(TfrmAtualizarPHP, frmAtualizarPHP);
  Application.Run;
end.
