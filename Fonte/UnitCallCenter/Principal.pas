unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PrincipalTemplate, ExtCtrls, Menus, jpeg, ComCtrls, ToolWin,
  EWall, FormResources, VarSys, StdCtrls, ImgList;

type
  TFormPrincipal = class(TFormPrincipalTemplate)
    CALLMNArquivos: TMenuItem;
    CALLMNUtilitarios: TMenuItem;
    CALLMNRelatorios: TMenuItem;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    CALLMNArquivosClientes: TMenuItem;
    CALLMNArquivosClientesMotivosdeBloquerio: TMenuItem;
    CALLMNArquivosClientesProfissoesAtividades: TMenuItem;
    CALLMNArquivosClientesTiposdeCliente: TMenuItem;
    CALLMNArquivosClientesCadastro: TMenuItem;
    CALLMNArquivosVendedores: TMenuItem;
    CALLMNArquivosContato: TMenuItem;
    CALLMNArquivosContatoTipoContato: TMenuItem;
    CALLMNArquivosContatoTipoRetorno: TMenuItem;
    CALLMNUtilitariosAgenda: TMenuItem;
    CALLMNRelatoriosListagemContatos: TMenuItem;
    CALLMNRelatoriosDesempenho: TMenuItem;
    CALLMNUtilitariosEspeciais: TMenuItem;
    CALLMNUtilitariosEspeciaisCargaInicial: TMenuItem;
    PanelGerar: TPanel;
    LabelReg: TLabel;
    Animate: TAnimate;
    ProgressBar: TProgressBar;
    ExcluirContatosdeVendedorAfastado1: TMenuItem;
    CALLMNArquivosClientesGrupos: TMenuItem;
    CALLMNUtilitariosControledeAcesso: TMenuItem;
    CALLMNArquivosConfiguracoes: TMenuItem;
    CALLMNUtilitariosAgendaEnquadramento: TMenuItem;
    CALLMNArquivosConfiguracoesQuestionarios: TMenuItem;
    CALLMNUtilitariosAgendaContatoImediato: TMenuItem;
    CALLMNRelatoriosAnaliseQuestionario: TMenuItem;
    rocadeUsurio1: TMenuItem;
    FAQ1: TMenuItem;
    FAQ2: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure CALLMNArquivosClientesCadastroClick(Sender: TObject);
    procedure CALLMNArquivosClientesTiposdeClienteClick(Sender: TObject);
    procedure CALLMNArquivosClientesProfissoesAtividadesClick(
      Sender: TObject);
    procedure CALLMNArquivosClientesMotivosdeBloquerioClick(
      Sender: TObject);
    procedure CALLMNArquivosVendedoresClick(Sender: TObject);
    procedure CALLMNArquivosContatoTipoContatoClick(Sender: TObject);
    procedure CALLMNArquivosContatoTipoRetornoClick(Sender: TObject);
    procedure CALLMNUtilitariosAgendaClick(Sender: TObject);
    procedure CALLMNUtilitariosEspeciaisCargaInicialClick(Sender: TObject);
    procedure ExcluirContatosdeVendedorAfastado1Click(Sender: TObject);
    procedure CALLMNRelatoriosListagemContatosClick(Sender: TObject);
    procedure CALLMNArquivosClientesGruposClick(Sender: TObject);
    procedure CALLMNRelatoriosDesempenhoClick(Sender: TObject);
    procedure CALLMNUtilitariosControledeAcessoClick(Sender: TObject);
    procedure CALLMNArquivosConfiguracoesClick(Sender: TObject);
    procedure CALLMNUtilitariosAgendaEnquadramentoClick(Sender: TObject);
    procedure CALLMNArquivosConfiguracoesQuestionariosClick(
      Sender: TObject);
    procedure CALLMNUtilitariosAgendaContatoImediatoClick(Sender: TObject);
    procedure rocadeUsurio1Click(Sender: TObject);
    procedure FAQ1Click(Sender: TObject);
    procedure FAQ2Click(Sender: TObject);
    procedure CALLMNRelatoriosAnaliseQuestionarioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses CadastroCliente, CadastroMotivoBloqueio, CadastroTipoCliente,
  CadastroVendedor, DataModulo, CadastroProfissao, CadastroTipoContato,
  CadastroTipoRetorno, TelaAgendaContatos, UnitLibrary,
  RelatorioListagemContato, CadastroGrupoCliente, RelatorioDesempenho,
  CadastroClasse, TelaConfiguracaoCallCenter, TelaEnquadramentoClientes,
  CadastroQuestionario, TelaContatoImediato, TelaContatoImediatoCallCenter,
  TELALOGIN, TelaFAQ, CadastroFAQ, RelatorioAnaliseQuestionario;

{$R *.dfm}
procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
  inherited;
  if FileExists('Bmp\Fundo.bmp') then
    begin
      EvWallPaper.Picture.LoadFromFile('Bmp\Fundo.Bmp') ;
    end ;
  if FileExists('Bmp\Fundo.jpg') then
    begin
      EvWallPaper.Picture.LoadFromFile('Bmp\Fundo.jpg') ;
    end ;
  Habilita_Menu(SQLLocate('CLASSEUSUARIO','USUAICOD','CLASSICOD',IntToStr(UsuarioCorrente)),MainMenu,ToolBar3);
end;

procedure TFormPrincipal.CALLMNArquivosClientesCadastroClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroCliente,'FormCadastroCliente',False,False,'');
end;

procedure TFormPrincipal.CALLMNArquivosClientesTiposdeClienteClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTipoCliente,'FormCadastroTipoCliente',False,False,'');
end;

procedure TFormPrincipal.CALLMNArquivosClientesProfissoesAtividadesClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario( TFormCadastroProfissao, 'FormCadastroProfissao', False, False, '');
end;

procedure TFormPrincipal.CALLMNArquivosClientesMotivosdeBloquerioClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario( TFormCadastroMotivoBloqueio, 'FormCadastroMotivoBloqueio', False, False, '');
end;

procedure TFormPrincipal.CALLMNArquivosVendedoresClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario( TFormCadastroVendedor, 'FormCadastroVendedor', False, False, '');
end;

procedure TFormPrincipal.CALLMNArquivosContatoTipoContatoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario( TFormCadastroTipoContato, 'FormCadastroTipoContato', False, False, '');
end;

procedure TFormPrincipal.CALLMNArquivosContatoTipoRetornoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario( TFormCadastroTipoRetorno, 'FormCadastroTipoRetorno', False, False, '');
end;

procedure TFormPrincipal.CALLMNUtilitariosAgendaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario( TFormTelaAgendaContatos, 'FormTelaAgendaContatos', False, False, '');
end;

procedure TFormPrincipal.CALLMNUtilitariosEspeciaisCargaInicialClick(
  Sender: TObject);
begin
  inherited;
  PanelGerar.Top := (Height - PanelGerar.Height) div 2;
  PanelGerar.Left := (Width - PanelGerar.Width) div 2;
  PanelGerar.Visible:=True;
  Animate.Active := True;
  ProgressBar.Position := 0;
  DM.SQLCliente.Open;
  DM.SQLCliente.First;
  DM.SQLNovoContato.Open;
  ProgressBar.Max := DM.SQLCliente.RecordCount;
  While Not DM.SQLCliente.Eof Do
    Begin
      DM.SQLNovoContato.Append;
      DM.SQLNovoContatoEMPRICOD.asInteger      := DM.SQLConfigGeralCFGEIEMPPADRAO.asInteger;
      DM.SQLNovoContatoCONTDCONTATO.asDateTime := Date + DM.SQLClienteTCTCIINTERVALO.asInteger;
      DM.SQLNovoContatoCLIEA13ID.asString      := DM.SQLClienteCLIEA13ID.asString;
      DM.SQLNovoContatoVENDICOD.asInteger      := DM.SQLClienteVENDICOD.asInteger;
      DM.SQLNovoContatoTPCTICOD.asInteger      := DM.SQLClienteTPCTICOD.asInteger;
      DM.SQLNovoContatoTPCLICOD.asInteger      := DM.SQLClienteTPCLICOD.asInteger;
      DM.SQLNovoContato.Post;
      ProgressBar.Position := ProgressBar.Position + 1;
      LabelReg.Caption := IntToStr(ProgressBar.Position)+' Contatos Gerados';
      DM.SQLCliente.Next;
    End;
  DM.SQLCliente.Close;
  DM.SQLNovoContato.Close;
  ProgressBar.Position := ProgressBar.Position + 1;
  Informa('Operação Concluída!');
  PanelGerar.Visible:=False;
  Animate.Active := False;
end;

procedure TFormPrincipal.ExcluirContatosdeVendedorAfastado1Click(
  Sender: TObject);
Var
  NumVendedor,NomeVendedor:String;
begin
  inherited;
  Try
    NumVendedor:=IntToStr(StrToInt(InputBox('Excluir COntatos Pendentes de Vendedor','Digite o Código do Vendedor','0')));
    DM.SQLTemplate.Close;
    DM.SQLTemplate.SQL.Text := 'Select * From VENDEDOR Where VENDICOD='+NumVendedor;
    DM.SQLTemplate.Open;
    If Not DM.SQLTemplate.Eof Then
      Begin
        NomeVendedor := DM.SQLTemplate.FindField('VENDA60NOME').asString;
        If Pergunta('NÃO','Deseja Excluir todos os Contatos Pendente do Vendedor '+NomeVendedor) Then
          Begin
            DM.SQLExcluirContatos.ParamByName('VENDICOD').asInteger := StrToInt(NumVendedor);
            DM.SQLExcluirContatos.ExecSQL;
            Informa('Contatos excluidos com sucesso! Não esqueça de vincular os clientes deste vendedor a outro(s) para fazer uma carga inicial e retivar o contato!');
          End;
      End
    Else
      Informa('Vendedor Inexistente!');
    DM.SQLTemplate.Close;
  Except
    Informa('Número de Vendedor Inválido!');
  End;
end;

procedure TFormPrincipal.CALLMNRelatoriosListagemContatosClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioListagemContato, 'FormRelatorioListagemContato', False, False, '');
end;

procedure TFormPrincipal.CALLMNArquivosClientesGruposClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroGrupoCliente, 'FormCadastroGrupoCliente', False, False, '');
end;

procedure TFormPrincipal.CALLMNRelatoriosDesempenhoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioDesempenho, 'FormRelatorioDesempenho', False, False, '');
end;

procedure TFormPrincipal.CALLMNUtilitariosControledeAcessoClick(
  Sender: TObject);
begin
  inherited;
  If DM.Acesso((Sender as TMenuItem).Name)>0 Then
    CriaFormulario(TFormCadastroClasse, 'FormCadastroClasse', False, False, '');
end;

procedure TFormPrincipal.CALLMNArquivosConfiguracoesClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario( TFormTelaConfiguracaoCallCenter, 'FormTelaConfiguracaoCallCenter', False, False, '');
end;

procedure TFormPrincipal.CALLMNUtilitariosAgendaEnquadramentoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaEnquadramentoClientes, 'FormTelaEnquadramentoClientes', False, False, '');
end;

procedure TFormPrincipal.CALLMNArquivosConfiguracoesQuestionariosClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario( TFormCadastroQuestionario, 'FormCadastroQuestionario', False, False, '');
end;

procedure TFormPrincipal.CALLMNUtilitariosAgendaContatoImediatoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaContatoImediatoCallCenter,'FormTelaContatoImediatoCallCenter',False,False,'') ;
end;

procedure TFormPrincipal.rocadeUsurio1Click(Sender: TObject);
Var
  I:Integer;
begin
  inherited;
  For I := 0 to Screen.FormCount-1 Do
    If Screen.Forms[I].Name <> 'FormPrincipal' Then
      Screen.Forms[I].Close;
  EmLogin := true ;
  FormTelaLogin := TFormTelaLogin.Create(Application) ;
  if FormTelaLogin.ShowModal <> idOk then
    exit
  Else
    FormPrincipal.RodapePrincipal.Panels[1].Text := DM.SQLUsuariosUSUAA60LOGIN.Value ;
  EmLogin := false ;
end;

procedure TFormPrincipal.FAQ1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario( TFormCadastroFAQ, 'FormCadastroFAQ', False, False, '');
end;

procedure TFormPrincipal.FAQ2Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario( TFormTelaFAQ, 'FormTelaFAQ', False, False, '');
end;

procedure TFormPrincipal.CALLMNRelatoriosAnaliseQuestionarioClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario( TFormRelatorioAnaliseQuestionario, 'FormRelatorioAnaliseQuestionario', False, False, '');
end;

end.
