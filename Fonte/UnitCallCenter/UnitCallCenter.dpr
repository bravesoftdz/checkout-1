program UnitCallCenter;

uses
  Windows,
  Variants,
  VarSYS in '..\..\Template\VarSys.pas' {VarSys},
  Forms,
  SysUtils,
  DataModuloTemplate in '..\..\Template\DataModuloTemplate.pas' {DMTemplate: TDataModule},
  PrincipalTemplate in '..\..\Template\PrincipalTemplate.pas' {FormPrincipalTemplate},
  CadastroTEMPLATE in '..\..\Template\CadastroTEMPLATE.pas' {FormCadastroTEMPLATE},
  RelatorioTemplate in '..\..\Template\RelatorioTemplate.pas' {FormRelatorioTEMPLATE},
  TelaGeralTEMPLATE in '..\..\Template\TelaGeralTEMPLATE.pas' {FormTelaGeralTEMPLATE},
  Principal in 'Principal.pas' {FormPrincipal},
  CadastroCliente in '..\ArquivosComuns\CadastroCliente.pas' {FormCadastroCliente},
  DataModulo in 'DataModulo.pas' {DM: TDataModule},
  CadastroVendedor in '..\ArquivosComuns\CadastroVendedor.pas' {FormCadastroVendedor},
  CadastroProfissao in '..\ArquivosComuns\CadastroProfissao.pas' {FormCadastroProfissao},
  CadastroMotivoBloqueio in '..\ArquivosComuns\CadastroMotivoBloqueio.pas' {FormCadastroMotivoBloqueio},
  CadastroClienteDependente in '..\ArquivosComuns\CadastroClienteDependente.pas' {FormCadastroClienteDependente},
  CadastroBanco in '..\ArquivosComuns\CadastroBanco.pas' {FormCadastroBanco},
  CadastroClienteReferencia in '..\ArquivosComuns\CadastroClienteReferencia.pas' {FormCadastroClienteReferencia},
  CadastroClienteContato in '..\ArquivosComuns\CadastroClienteContato.pas' {FormCadastroClienteContato},
  UnitLibrary in '..\ArquivosComuns\UnitLibrary.pas',
  TelaConsultaTabelaPreco in '..\ArquivosComuns\TelaConsultaTabelaPreco.pas' {FormTelaConsultaTabelaPreco},
  CadastroPlanoRecebimento in '..\ArquivosComuns\CadastroPlanoRecebimento.pas' {FormCadastroPlanoRecebimento},
  CadastroPlanoRecebimentoParcela in '..\ArquivosComuns\CadastroPlanoRecebimentoParcela.pas' {FormCadastroPlanoRecebimentoParcela},
  TELALOGIN in 'TelaLogin.pas' {FormTelaLogin},
  CadastroTipoCliente in '..\ArquivosComuns\CadastroTipoCliente.pas' {FormCadastroTipoCliente},
  CadastroTipoContato in '..\ArquivosComuns\CadastroTipoContato.pas' {FormCadastroTipoContato},
  CadastroTipoClienteTipoContato in '..\ArquivosComuns\CadastroTipoClienteTipoContato.pas' {FormCadastroTipoClienteTipoContato},
  CadastroTipoRetorno in 'CadastroTipoRetorno.pas' {FormCadastroTipoRetorno},
  TelaAgendaContatos in 'TelaAgendaContatos.pas' {FormTelaAgendaContatos},
  TelaHistoricoContato in 'TelaHistoricoContato.pas' {FormTelaHistoricoContato},
  TelaObservacaoProvisoria in 'TelaObservacaoProvisoria.pas' {FormTelaObservacaoProvisoria},
  TelaRetornoContato in 'TelaRetornoContato.pas' {FormTelaRetornoContato},
  TelaConfiguracaoColunasFormulario in '..\..\Template\TelaConfiguracaoColunasFormulario.pas' {FormTelaConfiguracaoColunasFormulario},
  RelatorioListagemContato in 'RelatorioListagemContato.pas' {FormRelatorioListagemContato},
  CadastroGrupoCliente in '..\ArquivosComuns\CadastroGrupoCliente.pas' {FormCadastroGrupoCliente},
  RelatorioDesempenho in 'RelatorioDesempenho.pas' {FormRelatorioDesempenho},
  CadastroClienteCaderno in '..\ArquivosComuns\CadastroClienteCaderno.pas' {FormCadastroClienteCaderno},
  TelaEnvioEMail in '..\ArquivosComuns\TelaEnvioEMail.pas' {FormTelaEnvioEMail},
  TelaContatoImediato in '..\ArquivosComuns\TelaContatoImediato.pas' {FormTelaContatoImediato},
  TelaConsultaCEP in '..\ArquivosComuns\TelaConsultaCEP.pas' {FormTelaConsultaCEP},
  CadastroClasseUsuario in '..\ArquivosComuns\CadastroClasseUsuario.pas' {FormCadastroClasseUsuario},
  CadastroClasse in '..\ArquivosComuns\CadastroClasse.pas' {FormCadastroClasse},
  CadastroUsuario in '..\ArquivosComuns\CadastroUsuario.pas' {FormCadastroUsuario},
  TelaConfiguracaoCallCenter in 'TelaConfiguracaoCallCenter.pas' {FormTelaConfiguracaoCallCenter},
  CadastroTransportadora in '..\ArquivosComuns\CadastroTransportadora.pas' {FormCadastroTransportadora},
  TelaEnquadramentoClientes in 'TelaEnquadramentoClientes.pas' {FormTelaEnquadramentoClientes},
  CadastroQuestionario in 'CadastroQuestionario.pas' {FormCadastroQuestionario},
  CadastroQuestionarioPergunta in 'CadastroQuestionarioPergunta.pas' {FormCadastroQuestionarioPergunta},
  CadastroQuestionarioPerguntaResposta in 'CadastroQuestionarioPerguntaResposta.pas' {FormCadastroQuestionarioPerguntaResposta},
  TelaQuestionario in 'TelaQuestionario.pas' {FormTelaQuestionario},
  RelatorioAnaliseQuestionario in 'RelatorioAnaliseQuestionario.pas' {FormRelatorioAnaliseQuestionario},
  ExtensoLib in '..\ArquivosComuns\ExtensoLib.pas',
  TelaContatoImediatoCallCenter in 'TelaContatoImediatoCallCenter.pas' {FormTelaContatoImediatoCallCenter},
  TelaConsultaCliente in '..\ArquivosComuns\TelaConsultaCliente.pas' {FormTelaConsultaCliente},
  CadastroClienteEndereco in '..\ArquivosComuns\CadastroClienteEndereco.pas' {FormCadastroClienteEndereco},
  TelaConsultaPlanoContasCredito in '..\UnitFinanceiro\TelaConsultaPlanoContasCredito.pas' {FormTelaConsultaPlanoContasCredito},
  CadastroCategoriaComissao in '..\ArquivosComuns\CadastroCategoriaComissao.pas' {FormCadastroCategoriaComissao},
  CadastroCategoriaComissaoFaixa in '..\ArquivosComuns\CadastroCategoriaComissaoFaixa.pas' {FormCadastroCategoriaComissaoFaixa},
  CadastroFAQ in 'CadastroFAQ.pas' {FormCadastroFAQ},
  TelaFAQ in 'TelaFAQ.pas' {FormTelaFAQ},
  CadastroOperacoesEstoque in '..\ArquivosComuns\CadastroOperacoesEstoque.pas' {FormCadastroOperacoesEstoque},
  CadastroOperacaoEstoqueControle in '..\ArquivosComuns\CadastroOperacaoEstoqueControle.pas' {FormCadastroOperacaoEstoqueControle},
  CadastroOperacoesClienteTipo in '..\ArquivosComuns\CadastroOperacoesClienteTipo.pas' {FormCadastroOperacoesClienteTipo},
  CadastroOperacoesEmpresaTipo in '..\ArquivosComuns\CadastroOperacoesEmpresaTipo.pas' {FormCadastroOperacoesEmpresaTipo},
  CadastroTipoEstoque in '..\ArquivosComuns\CadastroTipoEstoque.pas' {FormCadastroTipoEstoque},
  CadastroSerie in '..\UnitFaturamento\CadastroSerie.pas' {FormCadastroSerie},
  CadastroCFOP in '..\ArquivosComuns\CadastroCFOP.pas' {FormCadastroCFOP},
  CadastroOperacaoCaixa in '..\UnitLoja\CadastroOperacaoCaixa.pas' {FormCadastroOperacaoCaixa},
  TelaConsultaOperacaoCaixa in '..\ArquivosComuns\TelaConsultaOperacaoCaixa.pas' {FormTelaConsultaOperacaoCaixa},
  CadastroOperacaoCaixaUsuario in '..\UnitLoja\CadastroOperacaoCaixaUsuario.pas' {FormCadastroOperacaoCaixaUsuario},
  CadastroOperacaoCaixaTotalizadorCaixa in '..\UnitLoja\CadastroOperacaoCaixaTotalizadorCaixa.pas' {FormCadastroOperacaoCaixaTotalizadorCaixa},
  CadastroTotalizadorCaixa in '..\UnitLoja\CadastroTotalizadorCaixa.pas' {FormCadastroTotalizadorCaixa},
  TelaHistoricoContatosTelefonicos in '..\ArquivosComuns\TelaHistoricoContatosTelefonicos.pas' {FormTelaHistoricoContatosTelefonicos},
  FormResources in '..\..\Template\FormResources.pas',
  TelaConsultaTemplate in '..\..\Template\TelaConsultaTemplate.pas' {FormTelaConsultaTEMPLATE},
  TelaAutenticaUsuario in '..\UnitCheckout\TelaAutenticaUsuario.pas' {FormTelaAutenticaUsuario},
  CadastroClienteHistorico in '..\UnitLoja\CadastroClienteHistorico.pas' {FormCadastroClienteHistorico},
  TelaDadosTeleEntrega in '..\UnitCheckout\TelaDadosTeleEntrega.pas' {FormTelaDadosTeleEntrega},
  CadastroProdutoSerie in '..\UnitLoja\CadastroProdutoSerie.pas' {FormCadastroProdutoSerie},
  CadastroDecreto in '..\Config\CadastroDecreto.pas' {FormCadastroDecreto},
  TelaFotoExpandida in '..\UnitCheckout\TelaFotoExpandida.pas' {FormTelaFotoExpandida},
  CadastroProfissional in '..\SISCON\CadastroProfissional.pas' {FormCadastroProfissional};

{$R *.res}

var
  hMapping : hwnd ;
begin
  hMapping := CreateFileMapping(HWND($FFFFFFFF),
                                nil,
                                PAGE_READONLY,
                                0,
                                32,
                                PChar(ExtractFileName(Application.ExeName))) ;

  if (hMapping <> Null)  and (GetLastError <> 0) then
  begin
    Informa('O Unit CallCenter já está sendo executado.') ;
    Halt ;
  end ;

  Application.Initialize ;

  Retaguarda := true ;
  Application.Title := 'Unit CallCenter' ;

  RetornaVersaoArquivo(Application.ExeName, 'P', VersaoAtualSis) ;
  DataVersaoAtual := FileDateToDateTime(FileAge(Application.ExeName));

  Application.CreateForm(TDM, DM);
  if (DM.SQLConfigGeralCFGEA255PATHVERSAO.Value <> '') and
     (UpperCase(ExtractFileName(Application.ExeName)) = 'UNITCALLCENTER.EXE') and
     (Fileexists(ExtractFilePath(Application.ExeName) + 'AtualizaEXE.exe')) then
    begin
      RetornaVersaoArquivo(DM.SQLConfigGeralCFGEA255PATHVERSAO.Value + '\UNITCALLCENTER.EXE', 'P', VersaoNovaSis) ;
      If DirectoryExists(ExtractFileDir(DM.SQLConfigGeralCFGEA255PATHVERSAO.Value + '\UNITCALLCENTER.EXE')) and FileExists(DM.SQLConfigGeralCFGEA255PATHVERSAO.Value + '\UNITCALLCENTER.EXE') Then
        DataVersaoServ := FileDateToDateTime(FileAge(DM.SQLConfigGeralCFGEA255PATHVERSAO.Value + '\UNITCALLCENTER.EXE'));
      if (VersaoAtualSis <> '') and (VersaoNovaSis <> '') then
        if (DataVersaoServ>DataVersaoAtual) or ((DataVersaoServ>DataVersaoAtual) and (VersaoNova(VersaoAtualSis, VersaoNovaSis))) then
          if Pergunta('NAO', 'O sistema detectou que a versão atual(' + VersaoAtualSis+ ') é mais antiga que a do servidor(' + VersaoNovaSis + ') , deseja atualizar agora ?') then
            begin
              LinhaExe := DM.SQLConfigGeralCFGEA255PATHVERSAO.Value + ' ' + Application.ExeName ;
              Winexec(PChar(ExtractFilePath(Application.ExeName) + 'AtualizaEXE.exe ' + LinhaExe), sw_Show) ;
              Halt(0) ;
              exit ;
            end ;
    end ;

  FormTelaLogin := TFormTelaLogin.Create(Application);
  FormTelaLogin.Caption := 'Bem Vindo ao Unit CallCenter ' ;

  if FormTelaLogin.ShowModal <> idOk then
    exit ;

  Application.CreateForm(TFormPrincipal, FormPrincipal);


  FormPrincipal.RodapePrincipal.Panels[1].Text := DM.SQLUsuariosUSUAA60LOGIN.Value ;
  if DM.SQLEmpresa.Locate('EMPRICOD', StrToInt(RetornarEmpresaAtual), []) then
    FormPrincipal.RodapePrincipal.Panels[2].Text := DM.SQLEmpresa.FindField('EMPRA60RAZAOSOC').asString
  Else
    FormPrincipal.RodapePrincipal.Panels[2].Text := DM.SQLConfigGeralEmpresaPadraoCalcField.asString;
  FormPrincipal.RodapePrincipal.Panels[3].Text := DM.SQLTerminalAtivoTERMA60DESCR.AsString;
  FormPrincipal.RodapePrincipal.Panels[4].Text := 'Versão ' + VersaoAtualSis ;

  Application.Run ;
end.
