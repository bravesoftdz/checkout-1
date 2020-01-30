unit DataModulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataModuloTemplate, DB, DBTables, DBLists, RxQuery, DBXpress,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZConnection, SqlExpr,
  IdComponent, IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP,
  IdBaseComponent, IdMessage;

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
