unit TelaSelecaoUsuarioTarefa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBCtrls, DB, DBTables, RxQuery, Buttons,
  Grids, DBGrids, ToolWin, ComCtrls, ConerBtn, RxLookup;

type
  TFormTelaSelecaoUsuarioTarefa = class(TForm)
    Panel1: TPanel;
    SQLUsuarios: TRxQuery;
    DSSQLUsuarios: TDataSource;
    SQLUsuariosUSUAICOD: TIntegerField;
    SQLUsuariosUSUAA60LOGIN: TStringField;
    Panel2: TPanel;
    SQLClasse: TRxQuery;
    DSSQLClasse: TDataSource;
    SQLClasseCLASSICOD: TIntegerField;
    SQLClasseCLASSA60DESCRICAO: TStringField;
    PanelGrupoUsuario: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBLComboGrupoUsusario: TRxDBLookupCombo;
    DBLookupComboUsuario: TRxDBLookupCombo;
    ConerBtn4: TConerBtn;
    ConerBtn3: TConerBtn;
    procedure FormCreate(Sender: TObject);
    procedure DBLComboGrupoUsusarioChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaSelecaoUsuarioTarefa: TFormTelaSelecaoUsuarioTarefa;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormTelaSelecaoUsuarioTarefa.FormCreate(Sender: TObject);
begin
//Tenho a Classe e não tenho Usuario : Pega todos os usuarios da Classe.
  if (DM.CodClasse <> '') and (DM.CodUsuario ='') then
    begin
      if not SQLClasse.Active then SQLClasse.Active := true;
      SQLClasse.Locate('CLASSICOD',DM.CodClasse,[loCaseInsensitive]);
      DBLComboGrupoUsusario.KeyValue := SQLClasseCLASSICOD.Value;
      SQLUsuarios.Close;
      SQLUsuarios.MacroByName('Expressao').AsString := 'usuaicod in (select usuaicod from classeusuario where classicod ='''+dm.CodClasse+''')';
      SQLUsuarios.Open;
    end

//Tenho o Usuario e não tenho Classe : Pega todas as Classes que o Usuario existe.
  else if (DM.CodUsuario <> '') and (DM.CodClasse = '') then
    begin
      SQLClasse.Close;
      SQLClasse.SQL.Text := 'select * from CLASSE where CLASSICOD in (select CLASSICOD from classeusuario where USUAICOD ='''+dm.CodUsuario+''')';
      SQLClasse.Open;
      DBLComboGrupoUsusario.KeyValue := SQLClasseCLASSICOD.Value;
      if DBLComboGrupoUsusario.Text <> '' then
        begin
          SQLUsuarios.Close;
          SQLUsuarios.MacroByName('Expressao').AsString := ' USUAICOD IN (SELECT USUAICOD FROM CLASSEUSUARIO WHERE CLASSICOD = '''+SQLClasseCLASSICOD.AsString+''')';
          SQLUsuarios.Open;
          SQLUsuarios.Locate('USUAICOD',dm.CodUsuario,[loCaseInsensitive]);
          DBLookupComboUsuario.KeyValue := SQLUsuariosUSUAICOD.Value;
        end;
    end

//Não tenho nenhum : Pega as Classes Disponivéis, após selecionada pega os usuários dela
  else if (dm.CodUsuario = '') and (dm.CodClasse = '') then
    begin
      SQLClasse.Open;
    end;

end;

procedure TFormTelaSelecaoUsuarioTarefa.DBLComboGrupoUsusarioChange(
  Sender: TObject);
begin
  if DBLComboGrupoUsusario.Text <> '' then
    begin
      SQLUsuarios.Close;
      SQLUsuarios.MacroByName('Expressao').AsString := ' USUAICOD IN (SELECT USUAICOD FROM CLASSEUSUARIO WHERE CLASSICOD = '''+SQLClasseCLASSICOD.AsString+''')';
      SQLUsuarios.Open;
    end;
end;

end.
