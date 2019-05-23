unit TELALOGIN;

interface
uses
  VarSYS, JPEG, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Db, DBTables, ConerBtn, Grids, DBGrids,
  DBCtrls, Placemnt, RxQuery, RXCtrls, Variants, RxGIF, IniFiles, EAppProt,
  dxGDIPlusClasses, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;
type
  TFormTelaLogin = class(TForm)
    FormStorage: TFormStorage;
    SQLTerminal: TRxQuery;
    SQLTerminalTERMICOD: TIntegerField;
    SQLTerminalTERMCTIPO: TStringField;
    SQLTerminalTERMCSTATUSCAIXA: TStringField;
    SQLTerminalTERMDSTATUSCAIXA: TDateTimeField;
    SQLTerminalTERMA60DESCR: TStringField;
    SQLTerminalTERMCATIVO: TStringField;
    SQLTerminalECFA13ID: TStringField;
    SQLTerminalTERMA60NOMECOMPUT: TStringField;
    DSTblTerminal: TDataSource;
    EditTerminal: TEdit;
    Label1: TLabel;
    ComboPdv: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    SQLTerminalEMPRICOD: TIntegerField;
    RxLabel1: TLabel;
    EditSenha: TEdit;
    EditUsuario: TEdit;
    Label3: TLabel;
    logo: TImage;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ptopo: TAdvOfficeStatusBar;
    RxLabel5: TRxLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EditSenhaExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormStorageRestorePlacement(Sender: TObject);
    procedure ComboPDVExit(Sender: TObject);
    procedure EditSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    JPG : TJPEGImage ;
    BMP : TBitMap;
    NumTentativas:Integer;
  public
    { Public declarations }
  end;
var
  FormTelaLogin: TFormTelaLogin;
implementation

uses DataModulo, UnitLibrary, UnSoundPlay ;

{$R *.DFM}

procedure TFormTelaLogin.BitBtn2Click(Sender: TObject);
begin
  ModalResult := mrCancel ;
end ;

procedure TFormTelaLogin.BtnOkClick(Sender: TObject);
begin
  if ComboPDV.Text = '' then
  begin
    Informa('Selecione o Terminal');
    ComboPDV.SetFocus;
    Exit;
  end ;

  if not (SQLTerminalEMPRICOD.Value > 0) then
  begin
    Informa('N�o h� nehuma Empresa Padr�o selecionada para o terminal,  o sistema n�o pode iniciar!');
    ComboPDV.SetFocus;
    ModalResult := mrCancel ;
    Exit;
  end ;

{  If not FileExists('C:\WINDOWS\System32\advlibcn.dll') then
  begin
    MessageDlg('Licen�a de uso inexistente, verifique junto a:'+#13+#10+''+#13+#10+'Atualy Solu��es em Inform�tica Ltda'+#13+#10+'Fone: 54 3347 2021  ou  54 9602 1455', mtWarning, [mbOK], 0);
    ModalResult:= mrCancel   ;
    exit;
  end;
 }

  if DM.SQLUsuarioUSUAA5SENHA.Value = EditSenha.Text then
  begin
    ModalResult := mrOk ;
  end
  else begin
//    Informa('Senha Inv�lida...');
    Inc(NumTentativas) ;
    if NumTentativas = 3 then
      ModalResult := mrCancel
    else
      EditSenha.SetFocus ;
  end ;

  UsuarioMaster := False;
  if DM.SQLUsuarioUSUACUSERMASTER.AsString = 'S' then
    UsuarioMaster := True
  else
    UsuarioMaster := False;

  if dm.SQLUsuarioUSUACPERMITEFAT.Value <> 'S' then
    begin
      SoundPlay('Acesso Negado.wav',Sender);
      ShowMessage('Aten��o! Usu�rio n�o possui permiss�o para entrar no m�dulo Faturamento!');
      Application.Terminate;
    end;

  DM.UsuarioAtual   := DM.SQLUsuarioUSUAICOD.Value;
  UsuarioAtualNome  := DM.SQLUsuarioUSUAA60LOGIN.Value;
  UsuarioCorrente   := DM.SQLUsuarioUSUAICOD.Value;
  TerminalCorrente  := SQLTerminalTermICod.Value;
  TerminalAtual     := TerminalCorrente;
  EmpresaPadrao     := SQLTerminalEMPRICOD.AsString;
  EmpresaCorrente   := SQLTerminalEMPRICOD.AsInteger;
  TerminalCorrente  := TerminalAtual;
  DM.SQLTerminalAtivo.MacroByName('MFiltro').asString := 'TERMICOD = ' + SQLTerminalTermICod.asString;
  DM.SQLTerminalAtivo.Open;
end ;

procedure TFormTelaLogin.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree ;
end;

procedure TFormTelaLogin.FormCreate(Sender: TObject);
var Inifile: TInifile;
    LinhaA, LinhaB, LinhaC, LinhaD: String;
const
  Msg= 'Faltam menos de 5 dias para a aplica��o bloquear. Deseja liberar agora?';
begin
  FormStorage.IniFileName := Application.Title + '.ini' ;
  FormStorage.IniSection  := Name;
  FormStorage.Active      := true;

  // VERIFICA SE EXISTE ALGUM TERMINAL CONFIGURADO PARA O COMPUTADOR
  SQLTerminal.Close ;
  if FileExists('NaoTestaTerminal.txt') then
    SQLTerminal.MacroByName('MFiltro').Value := '0=0'
  else
    SQLTerminal.MacroByName('MFiltro').Value := 'TERMA60NOMECOMPUT = "' + AnsiUpperCase(RetornarNomeComputador) + '"';
  SQLTerminal.Open ;
  if SQLTerminal.EOF then
  begin
    Informa('N�o h� nenhum terminal configurado para ser usado neste computador !') ;
    Halt ;
    exit ;
  end ;
  NumTentativas := 0 ;

  // VERIFICA CONFIGURACOES DE ESTOQUE PARA EVITAR TRANSTORNOS NO ESTOQUE POR
  // FALTA DE PARAMETROS NO SISTEMA.
  if not DM.SQLConfigVenda.Active then DM.SQLConfigVenda.Open;
  // VERIFICA CONFIGURACOES DA NOTA FISCAL
  if DM.SQLConfigVendaCFVECMOVESTOQUENF.AsString = 'S' then
    begin
      if DM.SQLConfigVendaOPESICODNF.AsVariant = Null then
        begin
          Informa('A opera��o padr�o de estoque para "VENDA" na nota fiscal n�o foi configurada, o sistema ser� fechado!');
          Halt;
          Exit;
        end
      else
        begin
          if SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCENTRADASAIDA',DM.SQLConfigVendaOPESICODNF.AsString) <> 'S' then
            begin
              Informa('A opera��o de estoque selecionada para "VENDA" na nota fiscal n�o � do tipo "SAIDA", favor verifique. O sistema ser� fechado!');
              Halt;
              Exit;
            end;
        end;
      if DM.SQLConfigVendaOPESICODCANCNF.AsVariant = Null then
        begin
          Informa('A opera��o padr�o de estoque para "CANCELAMENTO" na nota fiscal n�o foi configurada, o sistema ser� fechado!');
          Halt;
          Exit;
        end
      else
        begin
          if SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCENTRADASAIDA',DM.SQLConfigVendaOPESICODCANCNF.AsString) <> 'E' then
            begin
              Informa('A opera��o de estoque selecionada para "CANCELAMENTO" na nota fiscal n�o � do tipo "ENTRADA", favor verifique. O sistema ser� fechado!');
              Halt;
              Exit;
            end;
        end;
    end;
  // VERIFICA CONFIGURACOES DO PEDIDO
  if DM.SQLConfigVendaCFVECMOVESTOQUEPED.AsString = 'S' then
    begin
      if DM.SQLConfigVendaOPESICODPED.AsVariant = Null then
        begin
          Informa('A opera��o padr�o de estoque para "VENDA" no pedido de venda n�o foi configurada, o sistema ser� fechado!');
          Halt;
          Exit;
        end
      else
        begin
          if SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCENTRADASAIDA',DM.SQLConfigVendaOPESICODPED.AsString) <> 'S' then
            begin
              Informa('A opera��o de estoque selecionada para "VENDA" no pedido de venda n�o � do tipo "SAIDA", favor verifique. O sistema ser� fechado!');
              Halt;
              Exit;
            end;
        end;
      if DM.SQLConfigVendaOPESICODCANCPED.AsVariant = Null then
        begin
          Informa('A opera��o padr�o de estoque para "CANCELAMENTO" no pedido de venda n�o foi configurada, o sistema ser� fechado!');
          Halt;
          Exit;
        end
      else
        begin
          if SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCENTRADASAIDA',DM.SQLConfigVendaOPESICODCANCPED.AsString) <> 'E' then
            begin
              Informa('A opera��o de estoque selecionada para "CANCELAMENTO" no pedido de venda n�o � do tipo "ENTRADA", favor verifique. O sistema ser� fechado!');
              Halt;
              Exit;
            end;
        end;
    end;
  {Carrega Logo do Parceiro}
  if FileExists('Bmp\logo parceiro.jpg') then
    logo.Picture.LoadFromFile('Bmp\logo parceiro.Jpg') ;
end;

procedure TFormTelaLogin.FormShow(Sender: TObject);
begin
  //FECHAR TELA DE SPLASH
  if Application.FindComponent('FormTelaSplash') <> nil then
    (Application.FindComponent('FormTelaSplash') as TForm).Close ;

  Application.ProcessMessages ;

  if (ComboPDV.KeyValue <> '') then
    EditSenha.SetFocus
  else
    ComboPDV.SetFocus ;
End ;

procedure TFormTelaLogin.FormKeyPress(Sender: TObject; var Key: Char);
Var
  Objeto:TComponent;
begin
  if Key=char(13) Then
    begin
      Objeto:=(Sender as TForm).ActiveControl;
      Key:=CHR(0);
      Perform(Wm_NextDlgCtl,0,0);
    End;
end;

procedure TFormTelaLogin.EditSenhaExit(Sender: TObject);
begin
{   if (EditSenha.Text <> '') Then
    if (DM.SQLUsuariosUSUAA5SENHA.Value = EditSenha.Text) then
      if EditUsuario.Text <> '' then
    else
      begin
        Informa('Senha Inv�lida') ;
        Inc(NumTentativas);
        if NumTentativas = 3 Then
          ModalResult := mrCancel
        else
          EditSenha.SetFocus ;
      End;}
end;

procedure TFormTelaLogin.FormActivate(Sender: TObject);
begin
  FormTelaLogin.Caption := 'Bem Vindo ao ' + Application.Title ;
end ;

procedure TFormTelaLogin.FormStorageRestorePlacement(Sender: TObject);
begin
  try
    if EditTerminal.Text <> '' then
      ComboPDV.KeyValue := EditTerminal.Text ;
  except
    Application.ProcessMessages ;
  end ;
end;

procedure TFormTelaLogin.ComboPDVExit(Sender: TObject);
begin
  if (Sender as TDBLookUpComboBox).Text <> '' then
    EditTerminal.Text := IntToStr((Sender as TDBLookUpComboBox).KeyValue) ;
end;

procedure TFormTelaLogin.EditSenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    begin
      if not DM.SQLUsuario.Locate('USUAA5SENHA', EditSenha.Text, [])  then
        begin
          EditSenha.SetFocus;
          EditUsuario.Text := 'N�o Encontrado';
          EditUsuario.Update;
          Beep;
          SoundPlay('Acesso Negado.wav',Sender);
          Exit;
        end
      else
        begin
          EditUsuario.Text := dm.SQLUsuarioUSUAA60LOGIN.Value;
          EditUsuario.Update;
        end;
    end;
end;

end.
