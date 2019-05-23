unit unDataModule;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, IBDatabase, Inifiles;

type
  TDM = class(TDataModule)
    IBDatabase: TIBDatabase;
    ibTrans: TIBTransaction;
    ibPedidoVenda: TIBQuery;
    ibPedidoVendaItens: TIBQuery;
    dtsPedidoVenda: TDataSource;
    dtsPedidovendaItem: TDataSource;
    ibEmpresa: TIBQuery;
    dtsEmpresa: TDataSource;
    IBMarcas: TIBQuery;
    dtsMarcas: TDataSource;
    IBMarcasMARCICOD: TIntegerField;
    IBMarcasMARCA60DESCR: TIBStringField;
    IBMarcasPENDENTE: TIBStringField;
    IBMarcasREGISTRO: TDateTimeField;
    ibGrupos: TIBQuery;
    dtsGrupos: TDataSource;
    ibGruposGRUPICOD: TIntegerField;
    ibGruposGRUPA60DESCR: TIBStringField;
    ibGruposPENDENTE: TIBStringField;
    ibGruposREGISTRO: TDateTimeField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.DFM}

procedure TDM.DataModuleCreate(Sender: TObject);
var I : integer;
    txt : textfile;
    entrada : string;
begin
  assignfile(txt,'C:\Conceitos ERP\conexao.ini');
  reset(txt);
  while not eof(txt) do
  begin
    readln(txt,entrada);
  end;

  try
    IBDataBase.Connected := False;
    IBDataBase.DatabaseName:=trim(entrada);
    IBDataBase.Connected := True;
    IBTrans.StartTransaction;
  except
    ShowMessage('Falha ao localizar o Banco de Dados! Verifique arquivo conexao.ini');
    Abort;
    Exit;
  end;


  try
    Screen.Cursor:= crNone;

    for i:= 0 to ComponentCount -1 do
    begin
        If Components[i] is TIBQuery then
        begin
            Try
            (Components[i] as TIBQuery).Open;
            Except
            Messagedlg('Não foi possível abrir o arquivo '+
            (Components[i] as TIBQuery).Name, mterror, [mbok],0);
            end;
        end;
    end
  finally
    Screen.cursor:= crDefault;
  end;
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
var I : integer;
begin
  for i:= 0 to ComponentCount -1 do
     if Components[i] is TIBQuery then
       (Components[i] as TIBQuery).Close;
  if IBTrans.InTransaction then
    IBTrans.Commit;
  IBDatabase.Connected := false;
end;

end.
