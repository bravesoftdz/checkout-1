unit unDataModulo;

interface

uses
  SysUtils, Classes, IBDatabase, DB, IBCustomDataSet, IBQuery, IBSQL;

type
  TDM = class(TDataModule)
    IBDataBase: TIBDatabase;
    ibTrans: TIBTransaction;
    ibItens: TIBQuery;
    dsItens: TDataSource;
    IBSQL: TIBSQL;
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
