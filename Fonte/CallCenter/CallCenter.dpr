program CallCenter;

uses
  Forms,
  Windows,
  SysUtils,
  Variants,
  AssistenteListagemTEMPLATE in '..\..\Template\AssistenteListagemTEMPLATE.pas' {FormAssistenteListagem},
  CadastroTEMPLATE in '..\..\Template\CadastroTEMPLATE.pas' {FormCadastroTemplate},
  ComCtrls in '..\..\Template\ComCtrls.pas',
  DataModuloTemplate in '..\..\Template\DataModuloTemplate.pas' {DMTemplate: TDataModule},
  FormResources in '..\..\Template\FormResources.pas',
  PrincipalTemplate in '..\..\Template\PrincipalTemplate.pas' {FormPrincipalTemplate},
  RelatorioTemplate in '..\..\Template\RelatorioTemplate.pas' {FormRelatorioTEMPLATE},
  TelaConsultaTemplate in '..\..\Template\TelaConsultaTemplate.pas' {FormTelaConsultaTemplate},
  TelaGeralTEMPLATE in 'TelaGeralTEMPLATE.pas' {FormTelaGeralTEMPLATE},
  TelaLoginTEMPLATE in '..\..\Template\TelaLoginTEMPLATE.pas' {FormTelaLoginTEMPLATE},
  TelaTemplate in '..\..\Template\TelaTemplate.pas' {FormTelaTemplate},
  VarSYS in '..\..\Template\VarSYS.pas',
  Principal in 'Principal.pas' {FormPrincipal},
  DataModulo in 'DataModulo.pas' {DM: TDataModule},
  UnitLibrary in '..\ArquivosComuns\UnitLibrary.pas',
  WaitWindow in '..\ArquivosComuns\WaitWindow.pas',
  TelaImpressaoTermicaCodBar in '..\ArquivosComuns\TelaImpressaoTermicaCodBar.pas' {FormTelaImpressaoTermicaCodBar},
  WindowsLibrary in '..\ArquivosComuns\WindowsLibrary.pas',
  CadastroClienteHelpDesk in 'CadastroClienteHelpDesk.pas' {FormCadastroClienteHelpDesk},
  TelaConsultaCliente in 'TelaConsultaCliente.pas' {FormTelaConsultaCliente},
  TelaLogin in 'TelaLogin.pas' {FormTelaLogin},
  CadastroHelpDesk in 'CadastroHelpDesk.pas' {FormCadastroHelpDesk},
  TelaDadosCliente in 'TelaDadosCliente.pas' {FormTelaDadosCliente},
  CadastroClienteHelpDeskProduto in 'CadastroClienteHelpDeskProduto.pas' {FormCadastroClienteHelpDeskProduto},
  TelaTempoHelp in 'TelaTempoHelp.pas' {FormTempoHelp},
  CadastrotipoHelpDesk in 'CadastrotipoHelpDesk.pas' {FormCadastroTipoHelpDesk},
  CadastroTarefa in 'CadastroTarefa.pas' {FormCadastroTarefa},
  CadastroAgenda in '..\ArquivosComuns\CadastroAgenda.pas' {FormCadastroAgenda},
  CadastroTipoTarefa in 'CadastroTipoTarefa.pas' {FormCadastroTipoTarefa},
  TelaConsultaTarefa in 'TelaConsultaTarefa.pas' {FormTelaConsultaTarefa},
  TelaConsultaCompromisso in 'TelaConsultaCompromisso.pas' {FormTelaConsultaCompromisso},
  TelaConsultaAtendimento in 'TelaConsultaAtendimento.pas' {FormTelaConsultaAtendimento},
  ConfigPopUp in 'ConfigPopUp.pas' {FormConfigPopUp},
  TelaPesquisaChave in 'TelaPesquisaChave.pas' {FormPesquisaChave},
  CadastroCategoriaAgenda in 'CadastroCategoriaAgenda.pas' {FormCadastroCategoriaAgenda},
  TelaDataConclusao in 'TelaDataConclusao.pas' {FormTelaDataConclusao},
  TelaLembreteTarefa in 'TelaLembreteTarefa.pas' {FormTelaLembreteTarefa},
  CadastroClasse in '..\ArquivosComuns\CadastroClasse.pas' {FormCadastroClasse},
  CadastroClasseUsuario in '..\ArquivosComuns\CadastroClasseUsuario.pas' {FormCadastroClasseUsuario},
  CadastroUsuario in '..\ArquivosComuns\CadastroUsuario.pas' {FormCadastroUsuario},
  TelaSelecaoUsuarioTarefa in 'TelaSelecaoUsuarioTarefa.pas' {FormTelaSelecaoUsuarioTarefa},
  CallCenterLibrary in 'CallCenterLibrary.pas',
  TelaConsultaProduto in '..\ArquivosComuns\TelaConsultaProduto.pas' {FormTelaConsultaProduto},
  TelaTarefaHistorico in 'TelaTarefaHistorico.pas' {FormTelaTarefaHistorico},
  TelaRelatorioTarefa in 'TelaRelatorioTarefa.pas' {FormTelaRelatorioTarefa},
  TelaConfigControle in '..\ArquivosComuns\TelaConfigControle.pas' {FormTelaConfigControle},
  CadastroClientePropect in '..\UnitProspect\CadastroClientePropect.pas' {FormCadastroClientePropect},
  CadastroClienteContatos in '..\UnitProspect\CadastroClienteContatos.pas' {FormCadastroClienteContatos},
  CadastroHistorico in '..\UnitProspect\CadastroHistorico.pas' {FormCadastroHistorico},
  TelaCadastroTarefa in 'TelaCadastroTarefa.pas' {FormTelaCadastroTarefa},
  CadastroNegocioComposto in '..\UnitProspect\CadastroNegocioComposto.pas' {FormCadastroNegocioComposto},
  CadastroProdutosProspect in '..\UnitProspect\CadastroProdutosProspect.pas' {FormCadastroProdutosProspect},
  CadastroVendedor in '..\ArquivosComuns\CadastroVendedor.pas' {FormCadastroVendedor},
  CadastroBanco in '..\ArquivosComuns\CadastroBanco.pas' {FormCadastroBanco},
  CadastroPlanodeContas in '..\UnitFinanceiro\CadastroPlanodeContas.pas' {FormCadastroPlanodeContas},
  CadastroPlanoRecebimento in '..\Config\CadastroPlanoRecebimento.pas' {FormCadastroPlanoRecebimento},
  CadastroPlanoRecebimentoParcela in '..\Config\CadastroPlanoRecebimentoParcela.pas' {FormCadastroPlanoRecebimentoParcela},
  CadastroFormasDeEnvio in '..\UnitProspect\CadastroFormasDeEnvio.pas' {FormCadastroFormasDeEnvio},
  TelaPesquisaTarefa in 'TelaPesquisaTarefa.pas' {FormTelaPesquisaTarefa};

{$R *.res}


var
  hMapping : hwnd ;
begin
  //Este código foi testado no arquivo dpr do projeto
  hMapping := CreateFileMapping(HWND($FFFFFFFF),
                                nil,
                                PAGE_READONLY,
                                0,
                                32,
                                PChar(ExtractFileName(Application.ExeName))) ;

  if (hMapping <> Null)  and (GetLastError <> 0) then
  begin
    //if not Pergunta('NAO', 'O Unit Checkout já está sendo executado, deseja abrir outra cópia ?') then
    Informa('O Advanced Control Call Center já está sendo executado.') ;
    Halt ;
  end ;

  Application.Initialize ;
  VersaoSistema := '3.0' ;
  Retaguarda := true;
  Application.Title := 'Advanced Control Call Center';

  Application.CreateForm(TDM, DM);
  FormTelaLogin := TFormTelaLogin.Create(Application);
  FormTelaLogin.Caption := 'Bem Vindo ao Advanced Control Call Center ' ;

  if FormTelaLogin.ShowModal <> idOk then
    Exit;

  Application.CreateForm(TFormPrincipal, FormPrincipal);
  FormPrincipal.RodapePrincipal.Panels[1].Text := DM.SQLUsuariosUSUAA60LOGIN.Value;
  FormPrincipal.RodapePrincipal.Panels[2].Text := DM.SQLTerminalAtivoTERMA60DESCR.AsString;
  FormPrincipal.RodapePrincipal.Panels[3].Text := DM.SQLConfigGeralEmpresaPadraoCalcField.Value;
  Application.Run ;
end.
