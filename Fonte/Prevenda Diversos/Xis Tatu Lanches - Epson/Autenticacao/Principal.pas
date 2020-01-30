unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, ComCtrls, RDprint, Inifiles;

type
  TFormPrincipal = class(TForm)
    TblAutentic: TTable;
    TblAutenticEmpresaNome: TStringField;
    TblAutenticOperacao: TStringField;
    TblAutenticHistorico: TStringField;
    TblAutenticUsuarioNome: TStringField;
    TblAutenticValor: TFloatField;
    TblAutenticForma: TStringField;
    rdp: TRDprint;
    TblAutenticTerminalNome: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

procedure TFormPrincipal.FormCreate(Sender: TObject);
var Inifile: TInifile;
var Linha : integer;
var Impressora : string;
begin
  try
    TblAutentic.Open;
    IniFile             := TIniFile.Create ('C:\Easy2Solutions\Gestao\Parceiro.INI');
    Impressora := IniFile.ReadString('Restaurante','ImpCaixa','');
    IniFile.Free;

    rdp.PortaComunicacao := '';
    rdp.SetPrinterbyName(Impressora);
    Linha := 1;
    rdp.Abrir;
    rdp.Imp(Linha,1,copy(TblAutenticEmpresaNome.AsString,1,24)); Inc(Linha,2);
    rdp.Imp(Linha, 1,'Terminal....: '  + TblAutenticTerminalNome.AsString); Inc(Linha);
    rdp.Imp(Linha, 1,'Operacao....: '  + TblAutenticOperacao.AsString); Inc(Linha);
    rdp.Imp(Linha, 1,'Valor.......: ');
    rdp.ImpVal(Linha,15,'##0.00', TblAutenticValor.value,[]); Inc(Linha);
    rdp.Imp(Linha, 1,'Forma Pgto..: '  + TblAutenticForma.Value); Inc(Linha);
    rdp.Imp(Linha, 1,'Usuario.....: '  + TblAutenticUsuarioNome.Value); Inc(Linha);
    rdp.Imp(Linha, 1,'Observacao..: '  + TblAutenticHistorico.Value); Inc(Linha);
    rdp.Imp(Linha, 1,'Emitido em..: '  + FormatDateTime('dd/mm/yy hh:nn:ss', now)); Inc(Linha,6);
    rdp.Imp(Linha, 1,'.'); Inc(Linha);
    rdp.TamanhoQteLinhas := Linha+5;
    rdp.gerarTXT('c:\Easy2Solutions\Autenticacao.txt');
    rdp.Abortar;
    if FileExists('c:\Easy2Solutions\Autenticacao.txt') then
      WinExec( Pchar('notepad.exe /pt "c:\Easy2Solutions\Autenticacao.txt" '+'"'+Impressora+'"'), SW_MINIMIZE);


    TblAutentic.Close;
    Application.Terminate;
  except
    TblAutentic.Close;
    Application.Terminate;
  end;
end;

procedure TFormPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree ;
end;

end.
