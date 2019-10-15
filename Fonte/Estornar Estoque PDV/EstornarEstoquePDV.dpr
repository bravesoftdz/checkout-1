program EstornarEstoquePDV;

uses
  Forms,
  Principal in 'Principal.pas' {frmConsultaCupons},
  uDMConexao in 'uDMConexao.pas' {DMConection: TDataModule},
  uDMConsCupom in 'uDMConsCupom.pas' {DMConsCupom: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDMConection, DMConection);
  Application.CreateForm(TfrmConsultaCupons, frmConsultaCupons);
  Application.Run;
end.
