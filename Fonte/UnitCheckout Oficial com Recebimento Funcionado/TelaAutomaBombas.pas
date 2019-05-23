unit TelaAutomaBombas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RXCtrls, Menus, StdCtrls;

const
  InformandoItens            = 'InformandoItens';

type
  TFormTelaAutomaBombas = class(TForm)
    DBGridPista: TDBGrid;
    RxLabel2: TRxLabel;
    PopupMenu1: TPopupMenu;
    Aferrio1: TMenuItem;
    N1: TMenuItem;
    Aferrio2: TMenuItem;
    VerAbastecidasExcluidas1: TMenuItem;
    VerAferies1: TMenuItem;
    RxLabel1: TRxLabel;
    procedure FormCreate(Sender: TObject);
    procedure DBGridPistaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridPistaKeyPress(Sender: TObject; var Key: Char);
    procedure Aferrio1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Aferrio2Click(Sender: TObject);
    procedure VerAbastecidasExcluidas1Click(Sender: TObject);
    procedure VerAferies1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaAutomaBombas: TFormTelaAutomaBombas;
implementation

uses DataModulo, TelaItens, DataModuloTemplate, UnitLibrary,
  UnitCheckoutLibrary;

{$R *.dfm}

procedure TFormTelaAutomaBombas.FormCreate(Sender: TObject);
begin
  if not Dm.IBdb.Connected then
    Dm.IBDB.Connected := true;
  if not Dm.IBTran01.InTransaction then
    Dm.IBTran01.StartTransaction;

  dm.SQLBomba.Close;
  dm.SQLBomba.MacroByName('MFiltro').value := '0 = 0';
  dm.SQLBomba.Open;

  // se tiver algum marcado com S volta pra N
  Dm.SQLPista.Close;
  Dm.SQLPista.SQL.Text := 'Update Leiturapista set Marcado = "N" where Marcado = "S" ';
  DM.SQLPista.ExecSQL;
  Dm.SQLPista.Close;

  // se tiver algum marcado com I (impresso) apaga

{  Dm.SQLPista.Close;
  Dm.SQLPista.SQL.Text := 'Delete from Leiturapista where Marcado = "I" ';
  DM.SQLPista.ExecSQL;
  Dm.SQLPista.Close;
 }

  Dm.SQLPista.Close;
  Dm.SQLPIsta.SQL.Text := 'SELECT * FROM LEITURAPISTA  where MARCADO = "N" ORDER BY ABASTECIDA DESC';
  Dm.SQLPista.prepare;
  Dm.SqlPista.Open;
  DM.SQLPista.First;
end;

procedure TFormTelaAutomaBombas.DBGridPistaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  If DM.SQLPista.fieldbyname('MARCADO').Asstring = 'S' Then
    begin
       DBGridPista.Canvas.Font.Color:=clRed;
       DBGridPista.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
end;

procedure TFormTelaAutomaBombas.DBGridPistaKeyPress(Sender: TObject;
  var Key: Char);
  var x: TShiftState;
begin
  if key = #32 then // barra de espaço
  begin
    if dm.SQLPista.fieldbyname('data').IsNull then
      exit;
    dm.SQLPista.DisableControls;
    Dm.SQLPista.Edit;
    if dm.SQLPista.FieldByName('marcado').AsString = 'S' then
      dm.SQLPista.FieldByName('marcado').AsString := 'N'
    else
    dm.SQLPista.FieldByName('marcado').AsString := 'S';
    dm.SQLPista.Post;
    Dm.SQLPista.EnableControls;
  end
  else if key = #27 then
  begin
    if not Dm.IBTran01.InTransaction then
      dm.IBTran01.StartTransaction;
    if not Dm.SqlPista.Active then
      Dm.SQLPista.Open;
    dm.SQLPista.DisableControls;
    dm.SQLPista.First;
    while not dm.SQLPista.Eof do
    begin
      if Dm.SQLPista.FieldByName('Marcado').asstring = 'S' then
      begin
        Dm.SQLPista.Edit;
        Dm.SQLPista.FieldByName('Marcado').asstring := 'N';
        dm.SQLPista.Post;
      end;
      dm.SQLPista.Next;
    end;
    DM.SQLPista.EnableControls;
    ModalResult := mrCancel;
  end
  else if key =#13 then
  begin
    ModalResult := mrOk;
  end;
end;

procedure TFormTelaAutomaBombas.Aferrio1Click(Sender: TObject);
var Retorno : TInfoRetornoUser;
begin
  if AutenticaUsuario(UsuarioAtualNome,'USUACUSERMASTER',Retorno) = 'S' then
  begin
    FormTelaItens.TimerPista.Enabled := false;
    if Pergunta('NAO','Confirma a Exclusão dos Registros Marcados ?') then
    begin
      dm.SQLPista.First;
      Dm.SQLPista.DisableControls;
      while not dm.sqlpista.Eof do
      begin
        if dm.SQLPistaMARCADO.AsString = 'S' then
        Begin
          dm.SQLPista.Edit;
          DM.SQLPista.FieldByName('Marcado').AsString := 'E';
          DM.SQLPista.Post;
        end else
          Dm.SQLPista.Next;
      end;
      dM.SQLPista.Close;
      dM.SQLPista.Open;
      Dm.SQLPista.EnableControls;
    end;
    IF UpperCase(Porta) <> 'FALSE' THEN
       FormTelaItens.TimerPista.Enabled := True;
  end;
end;

procedure TFormTelaAutomaBombas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Dm.IBTran01.InTransaction then
    Dm.IBTran01.Commit;
end;

procedure TFormTelaAutomaBombas.Aferrio2Click(Sender: TObject);
var Retorno : TInfoRetornoUser;
begin
  if AutenticaUsuario(UsuarioAtualNome,'USUACUSERMASTER',Retorno) = 'S' then
  begin
    if dm.SQLPista.fieldbyname('data').IsNull then
      exit;
    FormTelaItens.TimerPista.Enabled := false;
    dm.SQLPista.DisableControls;
    IF dM.SQLPista.FieldByName('MARCADO').AsString <> 'A' Then
    begin
      if Pergunta('SIM','Confirma que este registro é de Aferição?') then
      begin
        Dm.SQLPista.Edit;
        dm.SQLPista.FieldByName('marcado').AsString := 'A';
        dm.SQLPista.Post;
      end;
    end else
    begin
      if Pergunta('NAO','Item Marcado como Aferição. Desmarcar?') then
      begin
        Dm.SQLPista.Edit;
        dm.SQLPista.FieldByName('marcado').AsString := 'N';
        dm.SQLPista.Post;
      end;
    end;
    IF UpperCase(Porta) <> 'FALSE' THEN
      FormTelaItens.TimerPista.Enabled := True;
    Dm.SQLPista.EnableControls;
  end;
end;

procedure TFormTelaAutomaBombas.VerAbastecidasExcluidas1Click(
  Sender: TObject);
var Retorno : TInfoRetornoUser;
begin
  if AutenticaUsuario(UsuarioAtualNome,'USUACUSERMASTER',Retorno) = 'S' then
  begin
    FormTelaItens.TimerPista.Enabled := False;
    if VerAbastecidasExcluidas1.Caption =  '&Ver Abastecidas Excluidas' then
    begin
      RxLabel1.Caption := 'Abastecidas Excluidas';
      VerAbastecidasExcluidas1.Caption := 'Ver Abastecidas Pendentes';
      Dm.SQLPista.Close;
      Dm.SQLPIsta.SQL.Text := 'SELECT * FROM LEITURAPISTA  where MARCADO = "E" ORDER BY ABASTECIDA DESC';
      Dm.SQLPista.prepare;
      Dm.SqlPista.Open;
    end else
    begin
      RxLabel1.Caption := 'Abastecidas Pendentes';
      VerAbastecidasExcluidas1.caption := 'Ver Abastecidas Excluidas';
      Dm.SQLPista.Close;
      Dm.SQLPIsta.SQL.Text := 'SELECT * FROM LEITURAPISTA  where MARCADO = "A" AND MARCADO <> "E" ORDER BY ABASTECIDA DESC';
      Dm.SQLPista.prepare;
      Dm.SqlPista.Open;
    end;
    IF UpperCase(Porta) <> 'FALSE' THEN
      FormTelaItens.TimerPista.Enabled := True;
  end;
end;

procedure TFormTelaAutomaBombas.VerAferies1Click(Sender: TObject);
var Retorno : TInfoRetornoUser;
begin
  if AutenticaUsuario(UsuarioAtualNome,'USUACUSERMASTER',Retorno) = 'S' then
  begin
    RxLabel1.Caption := 'Aferições';
    VerAbastecidasExcluidas1.Caption := 'Ver Abastecidas Pendentes';
    Dm.SQLPista.Close;
    Dm.SQLPIsta.SQL.Text := 'SELECT * FROM LEITURAPISTA  where MARCADO = "A" ORDER BY ABASTECIDA DESC';
    Dm.SQLPista.prepare;
    Dm.SqlPista.Open;
  end;
end;

end.
