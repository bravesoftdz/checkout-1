unit TELALOGIN;
interface
uses
  VarSYS, JPEG, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Db, DBTables, ConerBtn, Grids, DBGrids,
  DBCtrls, Placemnt, RxQuery, RXCtrls, Variants, Inifiles, Mask, ToolEdit,
  CurrEdit, dxGDIPlusClasses;
type
  TFormTelaLogin = class(TForm)
    FormStorage: TFormStorage;
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
    RxLabel2: TLabel;
    RxLabel1: TLabel;
    ComboPDV: TDBLookupComboBox;
    EditUsuario: TEdit;
    EditSenha: TEdit;
    BtnOk: TBitBtn;
    BitBtn2: TBitBtn;
    EditTerminal: TEdit;
    SQLTerminalEMPRICOD: TIntegerField;
    SQLTerminalTERMA30MODIMPNFISC: TStringField;
    SQLTerminalTERMA60MODLEITOR: TStringField;
    SQLTerminalTERMCDISPOENTRADA: TStringField;
    SQLTerminalTERMA5LEITPORTACOM: TStringField;
    Label3: TLabel;
    SQLTerminalTERMCTECLREDUZ: TStringField;
    GroupBox1: TGroupBox;
    EditAliqImpostoSimples: TCurrencyEdit;
    Image1: TImage;
    LBVersaoSistema: TRxLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormStorageRestorePlacement(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
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

uses TelaSplash, DataModulo, UnitLibrary, UnitCheckoutLibrary, UnSoundPlay;

{$R *.DFM}

procedure TFormTelaLogin.BitBtn2Click(Sender: TObject);
begin
  ModalResult := mrCancel ;
end;

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
    Informa('Não há nehuma Empresa Padrão selecionada para o terminal,  o sistema não pode iniciar!');
    ComboPDV.SetFocus;
    ModalResult := mrCancel ;
    Exit;
  end ;

  if (Application.FindComponent('FormTelaItens') = Nil) then
    begin
      if SQLTerminal.RecordCount = 0 then
        ModalResult := mrOk
      else
        begin
          if DM.SQLUsuarioUSUAA5SENHA.Value = EditSenha.Text then
            ModalResult := mrOk
          else
            begin
              // Informa('Senha Inválida');
              Inc(NumTentativas);
              if NumTentativas = 3 then
                ModalResult := mrCancel
              else
                EditSenha.SetFocus;

              exit;
            end ;
        end ;
    end
  else
    ModalResult := mrOk;

  EmpresaPadrao     := SQLTerminalEMPRICOD.AsString;
  DM.UsuarioAtual   := DM.SQLUsuarioUSUAICOD.AsInteger;
  UsuarioMaster := False;
  if DM.SQLUsuarioUSUACUSERMASTER.AsString = 'S' then
    UsuarioMaster := True
  else
    UsuarioMaster := False;

  UsuarioCorrente   := DM.SQLUsuarioUSUAICOD.AsInteger;
  UsuarioAtualNome  := DM.SQLUsuarioUSUAA60LOGIN.AsString;
  TerminalAtual     := SQLTerminalTERMICOD.AsInteger;
  AliqOlhoImpostoSimples := EditAliqImpostoSimples.Value;

  if dm.SQLUsuarioUSUACPERMITECASH.Value <> 'S' then
    begin
      SoundPlay('Acesso Negado.wav',Sender);
      ShowMessage('Atenção! Usuário não possui permissão para entrar no módulo Checkout!');
      Application.Terminate;
    end;

  // IMPRESSORA NAO FISCAL
  ImpNaoFiscalAtual := '';
  PortaImpNaoFiscalAtual := '';
  TecladoReduzidoModelo  := '';
  if SQLTerminalTERMCTECLREDUZ.AsString <> '' then
    TecladoReduzidoModelo  := SQLTerminalTERMCTECLREDUZ.AsString;

  if SQLTerminalTERMA30MODIMPNFISC.AsString <> '' then
    begin
      ImpNaoFiscalAtual      := SQLTerminalTERMA30MODIMPNFISC.AsString;
      PortaImpNaoFiscalAtual := 'LPT1';
    end
  else
    begin
      ImpNaoFiscalAtual      := '';
      PortaImpNaoFiscalAtual := '';
    end;

  //LEITOR DE COD. DE BARRAS
  if SQLTerminalTERMCDISPOENTRADA.AsString = 'L' then
    if SQLTerminalTERMA60MODLEITOR.AsString <> '' then
      begin
        LeitorCodigoBarras      := SQLTerminalTERMA60MODLEITOR.AsString;
        PortaLeitorCodigoBarras := SQLTerminalTERMA5LEITPORTACOM.AsString;
      end
    else
      begin
        LeitorCodigoBarras      := '';
        PortaLeitorCodigoBarras := '';
      end;

  if DM.SQLUsuarioUSUAN2PERCDESC.Value > 0 then
      PercDesqMaxUsario := DM.SQLUsuarioUSUAN2PERCDESC.Value
    else
      PercDesqMaxUsario := 0 ;

  if not AlterarUsuario then
  begin
    TerminalAtual := SQLTerminalTERMICOD.AsInteger ;

    if TerminalAtual = TerminalCorrente then
      begin
        Informa('O terminal selecionado já está ativo, operação cancelada !');
        Abort;
      end;

    TerminalAtualNome := SQLTerminalTERMA60DESCR.Value ;
    TerminalAtualData := SQLTerminalTERMDSTATUSCAIXA.AsString ;
    TerminalModo      := SQLTerminalTERMCTIPO.Value ;
    EmpresaCorrente   := SQLTerminalEMPRICOD.AsInteger;
    TerminalCorrente  := TerminalAtual ;

    if DM.SQLEmpresa.Locate('EMPRICOD', EmpresaCorrente, []) then
      MatrizFilial := DM.SQLEmpresa.FieldByName('EMPRCMATRIZFILIAL').AsString ;

    //FILTRAR TERMINAL ATIVO
    DM.SQLTerminalAtivo.Close ;
    DM.SQLTerminalAtivo.MacroByName('MFiltro').Value := 'TERMICOD = ' + IntToStr(TerminalAtual) ;
    DM.SQLTerminalAtivo.Open ;
    //SETAR DADOS ECF
    PortaECFAtual := DM.SQLTerminalAtivoTERMA5ECFPORTACOM.Value; // Esta Linha foi colocada aqui pq alguns clientes querem abrir a gaveta sem trocar de terminal
    if DM.SQLTerminalAtivoECFA13ID.AsString <> '' then
    begin
      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('select * from ECF') ;
      DM.SQLTemplate.SQL.Add('where ECFA13ID = "' + DM.SQLTerminalAtivoECFA13ID.AsString + '"') ;
      DM.SQLTemplate.Open ;
      if not DM.SQLTemplate.IsEmpty then
      begin
        if DM.SQLTemplate.FieldByNAme('ECFA5IDENTIFICADORCNFV').AsString = '' then
        begin
          Informa('O Comprovante Não Fiscal Vinculado não foi informado. Podem ocorrer problemas no fechamento do cupom !') ;
        end ;

        if DM.SQLTemplate.FieldByNAme('ECFA5IDENTIFICADORCNFNV').AsString = '' then
        begin
          Informa('O Comprovante Não Fiscal Não Vinculado não foi informado. Podem ocorrer problemas na autenticação !') ;
        end ;

        if DM.SQLTemplate.FieldByNAme('ECFA2TRIBTXCRED').AsString = '' then
        begin
          Informa('O Tributo para Taxa de Crediário não foi informado no cadastro de ECF´s. Podem ocorrer problemas na finalização do cupom!') ;
        end;

        Ecf_ID        := DM.SQLTemplate.FieldByNAme('ECFA13ID').Value ;
        ECFAtual      := DM.SQLTemplate.FieldByNAme('ECFA30MODELO').Value ;

        if DM.SQLTerminalAtivoTERMINROVIASTEF.AsInteger <= 0 then
          NroViasTEF    := 1
        else
          NroViasTEF    := DM.SQLTerminalAtivoTERMINROVIASTEF.Value;

        NroViasTEF    := 2; // Adilson, Deixei fixo as vias TEF
        Ecf_CNFV      := DM.SQLTemplate.FieldByNAme('ECFA5IDENTIFICADORCNFV').Value;
        Ecf_CNFNV     := DM.SQLTemplate.FieldByNAme('ECFA5IDENTIFICADORCNFNV').Value;
        TributoTaxaCrediario := DM.SQLTemplate.FieldByNAme('ECFA2TRIBTXCRED').Value;

        //CamImprMatr := SQLTerminalTERMA60PATHIMPRMATR.Value ;
        if (ECFAtual <> '') and (PortaECFAtual = '') then
        begin
          Informa('A porta serial do ECF não está configurada, o sistema não irá funcionar corretamente!') ;
          ModalResult := mrCancel ;
          exit ;
        end ;
      end ;
    end
    else begin
      Ecf_ID        := '' ;
      ECFAtual      := '' ;
      Ecf_CNFV      := '' ;
      Ecf_CNFNV     := '' ;
      NroViasTEF    := 0;
      TributoTaxaCrediario := '';
    end ;

    if TerminalModo = '' then
    begin
      Informa('O Tipo de terminal não foi informado, o sistema não pode iniciar !') ;
      ModalResult := mrCancel ;
      exit ;
    end ;

    {if not DM.BloquearTerminal(IntToStr(DM.UsuarioAtual), IntToStr(TerminalAtual)) then
    begin
      Informa('Este terminal já está ativo !') ;
      ModalResult := mrCancel ;
      exit ;
    end ;}
  end ;
  AlterarUsuario := false ;
end ;

procedure TFormTelaLogin.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Image1.Free;
  Action := caFree ;
end;

procedure TFormTelaLogin.FormCreate(Sender: TObject);
var Inifile: TInifile;
    LinhaA, LinhaB, LinhaC, LinhaD: String;
begin
  FormStorage.IniFileName := Application.Title + '.ini' ;
  FormStorage.IniSection  := Name;
  FormStorage.Active      := True;

  if RetornarNomeComputador = '' then
    begin
      Informa('Não foi possível Descobrir o nome deste computador, a execução do sistema será cancelada!') ;
      Halt;
      exit;
    end;

  SQLTerminal.Close ;
  if FileExists('NaoTestaTerminal.txt') then
    SQLTerminal.MacroByName('MFiltro').Value := '0=0'
  else
    SQLTerminal.MacroByName('MFiltro').Value := 'TERMA60NOMECOMPUT = "' + AnsiUpperCase(RetornarNomeComputador) + '"';
  SQLTerminal.Open ;

  if SQLTerminal.EOF then
  begin
    Informa('Não há nenhum terminal configurado para ser usado neste computador !') ;
    Halt ;
    exit ;
  end ;

  NumTentativas := 0 ;

  // VERIFICA CONFIGURACOES DE ESTOQUE PARA EVITAR TRANSTORNOS NO ESTOQUE POR
  // FALTA DE PARAMETROS NO SISTEMA.
  if not DM.SQLConfigVenda.Active then DM.SQLConfigVenda.Open;
  // VERIFICA CONFIGURACOES DE CUPOM
  if DM.SQLTerminalAtivoTERMCMOVESTOQUE.AsString = 'S' then
    begin
      if DM.SQLConfigVendaOPESICODCUPOM.AsVariant = Null then
        begin
          Informa('A operação padrão de estoque para "VENDA" de cupom não foi configurada, o sistema será fechado!');
          Halt;
          Exit;
        end
      else
        begin
          if SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCENTRADASAIDA',DM.SQLConfigVendaOPESICODCUPOM.AsString) <> 'S' then
            begin
              Informa('A operação de estoque selecionada para "VENDA" de cupom não é do tipo "SAIDA", favor verifique. O sistema será fechado!');
              Halt;
              Exit;
            end;
        end;
      if DM.SQLConfigVendaOPESICODCANCCUPOM.AsVariant = Null then
        begin
          Informa('A operação padrão de estoque para "CANCELAMENTO" de cupom não foi configurada, o sistema será fechado!');
          Halt;
          Exit;
        end
      else
        begin
          if SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCENTRADASAIDA',DM.SQLConfigVendaOPESICODCANCCUPOM.AsString) <> 'E' then
            begin
              Informa('A operação de estoque selecionada para "CANCELAMENTO" de cupom não é do tipo "ENTRADA", favor verifique. O sistema será fechado!');
              Halt;
              Exit;
            end;
        end;
    end;
end;

procedure TFormTelaLogin.FormStorageRestorePlacement(Sender: TObject);
begin
  try
    if EditTerminal.Text <> '' then
      ComboPDV.KeyValue := EditTerminal.Text ;
  except
    Application.ProcessMessages ;
  end ;
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
      //If (Objeto is TDBLookUpComboBox) AND (Objeto as TDBLookUpComboBox).IsDropDown Then Begin (Objeto as TDBLookUpComboBox).CloseUp(True);Application.ProcessMessages;End;
      Key:=CHR(0);
      Perform(Wm_NextDlgCtl,0,0);
    End;
end;

procedure TFormTelaLogin.FormActivate(Sender: TObject);
begin
  FormTelaLogin.Caption := 'Bem Vindo ao ' + Application.Title ;

  if Application.FindComponent('FormTelaItens') <> nil then
    begin
      ComboPDV.Setfocus ;
      EditUsuario.Enabled := False;
      EditSenha.Enabled   := False;
      EditSenha.Text := Dm.SQLUsuarioUSUAA5SENHA.AsString;
    end;
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
          EditUsuario.Text := 'Não Encontrado';
          EditUsuario.Update;
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
