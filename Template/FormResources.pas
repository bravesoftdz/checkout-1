 unit FormResources;

interface

uses
  Variants, Buttons, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DataModulo, ExtCtrls, StdCtrls, DB, Menus, VarSys, RXQuery;

function  ExisteFormulario(NomeFormulario : String) : Boolean;
function  CriaFormulario(Formulario : TFormClass; NomeFormulario : String; Detail, Retorno, AbreTabela : Boolean;Titulo:String; ShowModal: Boolean = False):Integer;
procedure PreencherLookup(DataSet: TDataSet;
  Tabela: string; CampoChave, Valores: array of string; NumCampos: Integer;
  CampoLookup, CampoResultado: string);
procedure AtualizaTabelaLookup(DataSet : TDataSet);

implementation

uses UnitLibrary, UnSoundPlay;

function ExisteFormulario(NomeFormulario:String):Boolean;
var
  Cont:Integer;
Begin
  ExisteFormulario:=False;
  For Cont:=0 to Screen.FormCount-1 Do
    If Screen.Forms[Cont].Name = NomeFormulario Then
      Begin
        ExisteFormulario := True ;
        Break ;
      End ;
end;

procedure AtualizaTabelaLookup(DataSet : TDataSet);
begin
  if Dm.AtualizaLookup then
    begin
      DataSet.Close;
      DataSet.Open;
    end;
end;

function CriaFormulario(Formulario: TFormClass; NomeFormulario: String;
  Detail, Retorno, AbreTabela: Boolean; Titulo: string; ShowModal: Boolean): Integer;
var
  Form, Objeto, QueryTemplate : TObject;
  i            : integer;
  MyPopUpItems : array [0..33] of TMenuItem ;
  JaExiste     : boolean ;
  RetornoUser      : TInfoRetornoUser;
begin
  try
    if DM.VerificaBloqueioJanela(NomeFormulario) and (not UsuarioMaster) and (Application.Title <> 'Cupom Fiscal') then
       begin
          DM.SQLTemplate.Close;
          DM.SQLTemplate.SQL.Text := ' select * from USUARIOPERMISSOES ' +
                                     ' where USUAICOD = ' + IntToStr(UsuarioCorrente) +
                                     ' and USPEA60NOMETELA = "' + NomeFormulario + '"';
          DM.SQLTemplate.Open;
          if DM.SQLTemplate.IsEmpty then
             begin
                Application.MessageBox(Pchar('O Usu�rio Atual (' + UsuarioAtualNome + ') n�o tem permiss�o de Acesso!' + #13 + 'Para maiores informa��es contate o Administrador do Sistema!'),'Acesso Negado',MB_OK + MB_ICONEXCLAMATION + MB_SYSTEMMODAL + MB_SETFOREGROUND);
                Abort;
                Exit;
             end;
       end;

    // Testa se a tabela do formulario master est� em edi��o ou inser��o.
    if (DSMasterSys <> nil) and (Detail = True) then
      begin
        if DSMasterSys.DataSet.State in DsEditModes then
          begin
            Application.MessageBox('Existem informa��es n�o gravadas, voc� deve gravar antes de continuar !','Informa��o',MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONINFORMATION);
            Abort;
          end;
      end;
    LockWindowUpdate(GetDesktopWindow) ;
    If ExisteFormulario(NomeFormulario) then
      Form := Application.FindComponent(NomeFormulario)
    Else
      Begin
        Formulario.Create(Application);
        Form := Application.FindComponent(NomeFormulario);
        (Form as TForm).Name := NomeFormulario;
        if Retaguarda Then
          begin
            (Form as TForm).FormStyle   := FsMDIChild;
            (Form as TForm).WindowState := wsMaximized;
          end
        else
          begin
            if Application.FindComponent('FormTelaItens') <> nil then
              begin
                (Form as TForm).Top    := (Application.FindComponent('FormTelaItens') as TForm).Top ;
                (Form as TForm).Left   := (Application.FindComponent('FormTelaItens') as TForm).Left ;
                (Form as TForm).Height := (Application.FindComponent('FormTelaItens') as TForm).Height ;
                (Form as TForm).Width  := (Application.FindComponent('FormTelaItens') as TForm).Width ;
              end ;
          end ;
        If Titulo <> '' Then
          Titulo := Titulo + ' - ' ;
        (Form as TForm).Caption := Titulo + (Form as TForm).Caption ;
        ((Form as TForm).FindComponent('LabelTitulo') as TLabel).Caption := (Form as TForm).Caption;

        Objeto := (Form as TForm).FindComponent('LabelRetornar');
        If Objeto <> Nil Then
          begin
            (Objeto as TSpeedButton).Visible := Retorno;
          end;

        Objeto := (Form as TForm).FindComponent('LabelTodos');
        If Objeto <> Nil Then
          (Objeto as TSpeedButton).Visible := Not Detail;

        Objeto := (Form as TForm).FindComponent('PanelMaster');
        If Objeto <> Nil Then
          (Objeto as TPanel).Visible := Detail;

        If Detail Then
          (Form as TForm).ActiveControl:=(Form as TForm).FindComponent('DBGridLista') as TWinControl;

        Objeto := (Form as TForm).FindComponent('DSTemplate');
        If (Objeto <> Nil) and ((Objeto as TDataSource).DataSet <> Nil) then
          if AbreTabela Then
            (Objeto as TDataSource).DataSet.Active := True
          else
            begin
              QueryTemplate := (Form as TForm).FindComponent('SQLTemplate');
              (QueryTemplate as TRxQuery).MacroByName('MFiltro').asString := (QueryTemplate as TRxQuery).Fields[0].FieldName + ' IS NULL';
              (Objeto as TDataSource).DataSet.Active := True;
            end;
      End;

    if not(ShowModal) then
    begin
      Result := mrNone;
      (Form as TForm).Show;
    end;
  finally
    LockWindowUpdate(0);

    if ShowModal then
      Result := (Form as TForm).ShowModal;
  end;
  //========================================================================//
  // Autor: Jonas Loss          Data: 26/06/2003.
  // Verifica se o formul�rio tem TAG = 1
  // Ent�o verifica se o usu�rio LOGADO � um usu�rio MASTER...
  // Se n�o for um usu�rio MASTER n�o permite o acesso, somente a visualiza��o.
  //========================================================================//
  if (Form as TForm).Tag = 1 then
  begin
    if AutenticaUsuario(UsuarioAtualNome,'USUACUSERMASTER',RetornoUser) <> 'S' then
    begin
      Informa('Voc� n�o tem permiss�o para acessar este m�dulo!');
      (Form as TForm).Free;
    end;
  end;
End;

procedure PreencherLookup(DataSet: TDataSet;
  Tabela: string; CampoChave, Valores: array of string; NumCampos: Integer;
  CampoLookup, CampoResultado: string);
var
  Contador: Integer;
begin
  for Contador := 0 to NumCampos - 1 do
    begin
      if (DataSet.FieldByName(CampoChave[Contador]).AsVariant = null) then
      begin
        DataSet.FieldByName(CampoLookup).AsVariant:=Null;
        Exit;
      end;
    end;
  if DM.ProcuraRegistro(Tabela,CampoChave, Valores,NumCampos) then
    DataSet.FieldByName(CampoLookup).AsVariant := DM.SQLTemplate.FindField(
      CampoResultado).AsVariant;
end;

end.
