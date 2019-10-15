unit uDMConexao;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, Forms, IniFiles, Dialogs,
  FMTBcd;

type
  TDMConection = class(TDataModule)
    scoDados: TSQLConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    function Fnc_ArquivoConfiguracao: string;
  public
    { Public declarations }
  end;

var
  DMConection: TDMConection;

implementation

{$R *.dfm}
const
  cArquivoConfiguracao = 'Parceiro.ini';

function TDMConection.Fnc_ArquivoConfiguracao: string;
begin
  Result := ExtractFilePath(Application.ExeName) + cArquivoConfiguracao;
end;


procedure TDMConection.DataModuleCreate(Sender: TObject);
var
  Config: TIniFile;
  vTexto: String;
begin
  scoDados.Connected      := False;
  scoDados.KeepConnection := True;
  vTexto := Fnc_ArquivoConfiguracao;
  if not FileExists(Fnc_ArquivoConfiguracao) then
  begin
    MessageDlg(' Arquivo Parceiro.ini não Configurado!',mtInformation,[mbOk],0);
    Exit;
  end;
  Config := TIniFile.Create(Fnc_ArquivoConfiguracao);
  scoDados.LoadParamsFromIniFile(Fnc_ArquivoConfiguracao);
  try
    try
      scoDados.Params.Values['DRIVERNAME'] := 'INTERBASE';
      scoDados.Params.Values['SQLDIALECT'] := '3';
      scoDados.Params.Values['DATABASE']   := Config.ReadString('Automafour', 'DATABASE', '');
      scoDados.Params.Values['USER_NAME']  := Config.ReadString('Automafour', 'USERNAME', '');
      scoDados.Params.Values['PASSWORD']   := Config.ReadString('Automafour', 'PASSWORD', '');
      scoDados.Connected := True;
    except
      on E: exception do
      begin
        raise Exception.Create('Erro ao conectar ao banco de dados:' + #13 +
                               'Mensagem: ' + E.Message + #13 +
                               'Classe: ' + E.ClassName + #13 + #13 +
                               'Dados da Conexao ' + #13 +
                               'Banco de Dados: '  + scoDados.Params.Values['Database'] + #13 +
                               'Usuário: '         + scoDados.Params.Values['User_Name']);
      end;
    end;
  finally
    FreeAndNil(Config);
  end;
end;

end.
