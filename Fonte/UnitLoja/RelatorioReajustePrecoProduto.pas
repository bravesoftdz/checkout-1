unit RelatorioReajustePrecoProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, DBTables, Placemnt, DB, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls;

type
  TFormRelatorioProdutoEmPromocao = class(TFormRelatorioTEMPLATE)
    SQLProdutoReajuste: TRxQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioProdutoEmPromocao: TFormRelatorioProdutoEmPromocao;

implementation

{$R *.dfm}

end.
