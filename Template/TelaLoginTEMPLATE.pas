unit TelaLoginTEMPLATE;
interface
uses
  VarSYS, JPEG, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Db, DBTables, ConerBtn, Grids, DBGrids,
  DBCtrls, Placemnt, RXCtrls, RxQuery;
type
  TFormTelaLoginTEMPLATE = class(TForm)
    FormStorage: TFormStorage;
    Image1: TImage;
    Panel2: TPanel;
    EditUsuario: TEdit;
    EditSenha: TEdit;
    BtnOk: TBitBtn;
    BitBtn2: TBitBtn;
    RxLabel1: TLabel;
    RxLabel3: TLabel;
    Panel1: TPanel;
    LblRetorno: TRxLabel;
    RxLabel4: TRxLabel;
    DSTblTerminal: TDataSource;
    SQLTerminal: TRxQuery;
    SQLTerminalTERMICOD: TIntegerField;
    SQLTerminalTERMCTIPO: TStringField;
    SQLTerminalTERMCSTATUSCAIXA: TStringField;
    SQLTerminalTERMDSTATUSCAIXA: TDateTimeField;
    SQLTerminalTERMA60DESCR: TStringField;
    SQLTerminalTERMCATIVO: TStringField;
    SQLTerminalECFA13ID: TStringField;
    SQLTerminalTERMA60NOMECOMPUT: TStringField;
    SQLTerminalEMPRICOD: TIntegerField;
    EditTerminal: TEdit;
    ComboPdv: TDBLookupComboBox;
    Label1: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EditSenhaExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormStorageRestorePlacement(Sender: TObject);
  private
    { Private declarations }
    NumTentativas:Integer;
  public
    { Public declarations }
  end;
var
  FormTelaLoginTEMPLATE: TFormTelaLoginTEMPLATE;
implementation

uses DataModulo, UnitLibrary, TelaLogin ;

{$R *.DFM}

procedure TFormTelaLoginTEMPLATE.BitBtn2Click(Sender: TObject);
begin
  ModalResult := mrCancel ;
end ;

procedure TFormTelaLoginTEMPLATE.BtnOkClick(Sender: TObject);
begin
  if not DM.SQLUsuarios.Locate('USUAA60LOGIN', EditUsuario.Text, []) then
  begin
    ShowMessage('Usuário não cadastrado') ;
    EditUsuario.SetFocus ;
    Exit ;
  end ;

  if not (SQLTerminalEMPRICOD.Value > 0) then
  begin
    Informa('Não há nehuma Empresa Padrão selecionada para o terminal,  o sistema não pode iniciar!');
    ComboPDV.SetFocus;
    ModalResult := mrCancel ;
    Exit;
  end ;

  if DM.SQLUsuariosUSUAA5SENHA.Value = EditSenha.Text then
  begin
    ModalResult := mrOk ;
  end
  else begin
    ShowMessage('Senha Inválida');
    Inc(NumTentativas) ;
    if NumTentativas = 3 then
      ModalResult := mrCancel
    else
      EditSenha.SetFocus ;
  end ;

  DM.UsuarioAtual   := DM.SQLUsuariosUSUAICOD.Value ;
  UsuarioCorrente   := DM.SQLUsuariosUSUAICOD.Value ;
  TerminalCorrente  := SQLTerminalTermICod.Value ;
  TerminalAtual     := TerminalCorrente;
  EmpresaPadrao     := SQLTerminalEMPRICOD.AsString;
  EmpresaCorrente   := SQLTerminalEMPRICOD.AsInteger;
  DM.SQLTerminalAtivo.MacroByName('MFiltro').asString := 'TERMICOD = ' + SQLTerminalTermICod.asString;
  DM.SQLTerminalAtivo.Open;

end ;

procedure TFormTelaLoginTEMPLATE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree ;
end;

procedure TFormTelaLoginTEMPLATE.FormCreate(Sender: TObject);
begin
  FormStorage.IniFileName := Application.Title + '.ini' ;
  FormStorage.IniSection  := Name;
  FormStorage.Active      := true;

  NumTentativas := 0 ;
  DM.SQLUsuarios.Open ;
  SQLTerminal.Open;
end;

procedure TFormTelaLoginTEMPLATE.FormShow(Sender: TObject);
begin
  //FECHAR TELA DE SPLASH
  if Application.FindComponent('FormTelaSplash') <> nil then
    (Application.FindComponent('FormTelaSplash') as TForm).Close ;

  Application.ProcessMessages ;

  if (EditUsuario.Text <> '') and (DM.SQLUsuarios.Locate('USUAA60LOGIN', EditUsuario.Text, [])) then
    EditSenha.SetFocus
  else
    EditUsuario.SetFocus ;
End ;

procedure TFormTelaLoginTEMPLATE.FormKeyPress(Sender: TObject; var Key: Char);
Var
  Objeto : TComponent;
begin
  if Key = Char(13) Then
    begin
      Key := CHR(0) ;
      Perform(Wm_NextDlgCtl, 0, 0) ;
    End;
end;

procedure TFormTelaLoginTEMPLATE.EditSenhaExit(Sender: TObject);
begin
   if (EditSenha.Text <> '') Then
    if (DM.SQLUsuariosUSUAA5SENHA.Value = EditSenha.Text) then
      if EditUsuario.Text <> '' then
    else
      begin
        ShowMessage('Senha Inválida') ;
        Inc(NumTentativas);
        if NumTentativas = 3 Then
          ModalResult := mrCancel
        else
          EditSenha.SetFocus ;
      End;
end;

procedure TFormTelaLoginTEMPLATE.FormActivate(Sender: TObject);
begin
  FormTelaLogin.Caption := 'Bem Vindo ao ' + Application.Title ;
end ;

procedure TFormTelaLoginTEMPLATE.FormStorageRestorePlacement(
  Sender: TObject);
begin
   if EditTerminal.Text <> '' then
      ComboPdv.KeyValue := StrToInt(EditTerminal.Text);
end;

end.
