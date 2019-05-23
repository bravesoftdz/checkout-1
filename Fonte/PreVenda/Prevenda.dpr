program Prevenda;

uses
  Forms,
  DataModuloTemplate in '..\..\Template\DataModuloTemplate.pas' {DMTemplate: TDataModule},
  DataModulo in 'DataModulo.pas' {DM: TDataModule},
  TelaItens in 'TelaItens.pas' {FormTelaItens},
  CadastroTEMPLATE in '..\..\Template\CadastroTEMPLATE.pas' {FormCadastroTEMPLATE};
  // TELALOGIN in 'TelaLogin.pas' {FormTelaLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
//  FormTelaLogin := TFormTelaLogin.Create(Application);
//  FormTelaLogin.Caption := 'Bem Vindo ao Advanced Control PDV ' ;
//  if FormTelaLogin.ShowModal <> idOk then
//    exit ;

  Application.CreateForm(TFormTelaItens, FormTelaItens);
  Application.Run;
end.
