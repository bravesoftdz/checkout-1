unit DataModulo;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDM = class(TDataModule)
    DB: TDatabase;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function SQLLocate(Tabela, CampoProcura, CampoRetorno, ValorFind : string) : string ;
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

function TDM.SQLLocate(Tabela, CampoProcura, CampoRetorno, ValorFind : string) : string ;
var
  MyQuery : TQuery ;
begin
  if ValorFind <> '' then
  begin
    MyQuery := TQuery.Create(DM);
    if MyQuery.DatabaseName = '' then
      MyQuery.DatabaseName := 'DB';
    MyQuery.Close ;
    MyQuery.SQL.Clear ;
    MyQuery.SQL.Add('select ' + CampoRetorno + ' from ' + Tabela) ;
    MyQuery.SQL.Add('where  ' + CampoProcura + ' = ' + ValorFind) ;
    MyQuery.Open ;
    if not MyQuery.EOF then
      SQLLocate := MyQuery.FieldByName(CampoRetorno).AsString
    else
      SQLLocate := '' ;
    MyQuery.Destroy ;
  end
  else
    ValorFind := '' ;
end ;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  try
    DB.Connected   := True;
  except
  end;
end;

end.
