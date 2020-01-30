unit DataModulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataModuloTemplate, DB, DBTables, DBLists, RxQuery;

type
  TDM = class(TDMTemplate)
    SQLConfigGeral: TRxQuery;
    SQLConfigGeralCFGEA255PATHREPORT: TStringField;
    SQLConfigVenda: TRxQuery;
    SQLProdutoOrdemPesquisa: TRxQuery;
    SQLProduto: TRxQuery;
    SQLProdutoFilho: TRxQuery;
    SQLProdutoSaldo: TRxQuery;
    SQLPreco: TRxQuery;
    SQLConfigCrediario: TRxQuery;
    SQLTerminalAtivo: TRxQuery;
    SQLTerminalAtivoTERMCMOVESTOQUE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
