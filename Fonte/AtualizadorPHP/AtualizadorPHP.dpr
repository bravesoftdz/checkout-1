program AtualizadorPHP;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {frmAtualizarPHP},
  TelaAutenticaUsuario in 'TelaAutenticaUsuario.pas' {FormTelaAutenticaUsuario};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmAtualizarPHP, frmAtualizarPHP);
  Application.Run;
end.
