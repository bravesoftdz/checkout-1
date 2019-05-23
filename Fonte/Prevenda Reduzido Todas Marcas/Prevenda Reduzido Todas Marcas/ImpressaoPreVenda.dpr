program ImpressaoPreVenda;

{%File 'ECF deve estar em Estado de "Venda", "Pagamento"'}
{%File 'ECF deve estar em Estado de "Venda", "Pagamento"'}

uses
  Forms,
  Principal in 'Principal.pas' {FormPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Pre Venda';
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
