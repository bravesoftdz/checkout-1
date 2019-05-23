program Integrador;

uses
  VarSYS,
  Forms,
  Windows,
  Sysutils,
  Variants,
  DataModuloTemplate in '..\..\Template\DataModuloTemplate.pas' {DMTemplate: TDataModule},
  CadastroTEMPLATE in '..\..\Template\CadastroTEMPLATE.pas' {FormCadastroTemplate},
  PrincipalTemplate in '..\..\Template\PrincipalTemplate.pas' {FormPrincipalTemplate},
  FormResources in '..\..\Template\FormResources.pas',
  TelaGeralTEMPLATE in '..\..\Template\TelaGeralTEMPLATE.pas' {FormTelaGeralTEMPLATE},
  DataModulo in 'DataModulo.pas' {DM: TDataModule},
  Principal in 'Principal.pas' {FormPrincipal},
  ComCtrls in 'ComCtrls.pas',
  TelaExportacao in 'TelaExportacao.pas' {FormTelaExportacao},
  TelaImportacao in 'TelaImportacao.pas' {FormTelaImportacao},
  TelaReativacao in 'TelaReativacao.pas' {FormTelaReativacao},
  UnitLibrary in '..\ArquivosComuns\UnitLibrary.pas',
  CadastroClasse in '..\ArquivosComuns\CadastroClasse.pas' {FormCadastroClasse},
  CadastroClasseUsuario in '..\ArquivosComuns\CadastroClasseUsuario.pas' {FormCadastroClasseUsuario},
  CadastroUsuario in '..\ArquivosComuns\CadastroUsuario.pas' {FormCadastroUsuario},
  TelaPlanoContas in 'TelaPlanoContas.pas' {FormTelaPlanoContas},
  TelaImportarMovimentacaoTerminal in 'TelaImportarMovimentacaoTerminal.pas' {FormTelaImportarMovimentacaoTerminal},
  TelaExportarProdutoPDV in 'TelaExportarProdutoPDV.pas' {FormTelaExportarProdutoPDV},
  TelaLimpaMovimentacaoTerminal in 'TelaLimpaMovimentacaoTerminal.pas' {FormTelaLimpaMovimentacaoTerminal},
  TelaImpressaoTermicaCodBar in '..\ArquivosComuns\TelaImpressaoTermicaCodBar.pas' {FormTelaImpressaoTermicaCodBar},
  WindowsLibrary in '..\ArquivosComuns\WindowsLibrary.pas',
  WaitWindow in '..\ArquivosComuns\WaitWindow.pas',
  TelaExportacaoDadosRech in 'TelaExportacaoDadosRech.pas' {FormTelaExportacaoDadosRech},
  TelaExportacaoCadastros in 'TelaExportacaoCadastros.pas' {FormTelaExportacaoCadastros},
  TelaExportacaoDadosDominio in 'TelaExportacaoDadosDominio.pas' {FormTelaExportacaoDadosDominio},
  TelaExportacaoBrasilMobile in 'TelaExportacaoBrasilMobile.pas' {FormTelaExportaBrasilMobile},
  TELALOGIN in 'TelaLogin.pas' {FormTelaLogin},
  TelaImportacaoBrasilMobile in 'TelaImportacaoBrasilMobile.pas' {FormTelaImportacaoBrasilMobile},
  TelaExportacaoSintegra in 'TelaExportacaoSintegra.pas' {FormTelaExportacaoSintegra},
  TelaExportacaoCaixaEstrategia in 'TelaExportacaoCaixaEstrategia.pas' {FormTelaExportacaoCaixaEstrategia},
  TelaImportacaoFarmaciasProdutos in 'TelaImportacaoFarmaciasProdutos.pas' {FormTelaImportacaoFarmaciaProduto},
  TelaAutenticaUsuario in '..\UnitCheckout\TelaAutenticaUsuario.pas' {FormTelaAutenticaUsuario},
  TelaExportacaoSPED in 'TelaExportacaoSPED.pas' {FormTelaExportacaoSped},
  TelaExportacaoProsoft in 'TelaExportacaoProsoft.pas' {FormTelaExportacaoProsoft},
  TelaImportaSPEDDaruma in 'TelaImportaSPEDDaruma.pas' {FormImportaSPEDDaruma},
  TelaAvisoDebito in '..\UnitCheckout\TelaAvisoDebito.pas' {FormTelaAvisoDebito},
  TelaExportacaoSeller in 'TelaExportacaoSeller.pas' {FormTelaExportacaoSeller},
  TelaImportacaoSeller in 'TelaImportacaoSeller.pas' {FormTelaImportacaoSeller},
  TelaSplash in '..\ArquivosComuns\TelaSplash.pas' {FormSplash},
  CadastroEmpresa in '..\Config\CadastroEmpresa.pas' {FormCadastroEmpresa},
  backup in 'backup.pas';

{$R *.RES}
var
  hMapping : hwnd ;
  erro : boolean;
begin
  //Este código foi testado no arquivo dpr do projeto
  hMapping := CreateFileMapping(HWND($FFFFFFFF),
                                nil,
                                PAGE_READONLY,
                                0,
                                32,
                                PChar(ExtractFileName(Application.ExeName))) ;

  if (hMapping <> Null)  and (GetLastError <> 0) then
    Halt;

  Application.Initialize;
  Retaguarda := True;
  Application.Title := 'Advanced Control Integrador';
  { Bloqueio neco
  if not FileExists('c:\windows\system32\vga386.dll') then
    Application.terminate; }

  Application.CreateForm(TDM, DM);
  if (UpperCase(ParamStr(1)) = 'MATRIZ') or (UpperCase(ParamStr(1)) = 'FILIAL') then
  //if Retaguarda then
    begin
      erro := False;
      DM.SQLTerminalAtivo.Close;
      DM.SQLTerminalAtivo.MacroByName('MFiltro').AsString := ' TERMA60NOMECOMPUT = "' + UpperCase(RetornarNomeComputador) + '" AND CFGIICOD IS NOT NULL';
      DM.SQLTerminalAtivo.Open;
      DM.SQLTerminalAtivo.Last;
      try
        if DM.SQLTerminalAtivo.RecordCount > 1 then
          begin
            Application.MessageBox(PChar('Existem mais de um terminal configurado para integração neste computador, favor verificar o cadastro!' + #13 + 'O SISTEMA SERÁ FECHADO!'),'Atenção',MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONEXCLAMATION);
            erro := true;
          end;
        if DM.SQLTerminalAtivo.RecordCount = 0 then
          begin
            Application.MessageBox(PChar('Nao Existe nenhum terminal configurado para integração neste computador, favor verificar o cadastro!' + #13 + 'O SISTEMA SERÁ FECHADO!'),'Atenção',MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONEXCLAMATION);
            erro := true;
          end;
        if not erro then
          begin
            Application.CreateForm(TFormPrincipal,FormPrincipal);
            EmpresaCorrente := DM.SQLTerminalAtivo.FindField('EMPRICOD').AsInteger;
            if not FileExists('C:\Easy2Solutions\NaoImporta.txt') then
              begin
                Application.CreateForm(TFormTelaImportacao,FormTelaImportacao);
                FormTelaImportacao.FormStyle := FsMdiChild;
                FormTelaImportacao.BtnIniciar.Click;
                FormTelaImportacao.Close;
                FormTelaImportacao.Free;
              end;
            if not FileExists('C:\Easy2Solutions\NaoExporta.txt') then
               begin
                Application.CreateForm(TFormTelaExportacao,FormTelaExportacao);
                FormTelaExportacao.FormStyle := FsMdiChild;

                FormTelaExportacao.BtnIniciar.Click;
                FormTelaExportacao.Close;
                FormTelaExportacao.Free;
              end;
          end;
        DM.zdb.Disconnect;
        DM.DB.Close;
        DM.Free;
        FormPrincipal.Free;
        Application.Terminate;
      except
        DM.zdb.Disconnect;
        DM.DB.Close;
        DM.Free;
        Application.Terminate;
      end;
    end
  else
    begin
      FormTelaLogin := TFormTelaLogin.Create(Application);
      if FormTelaLogin.ShowModal <> idOk then
        begin
          DM.zdb.Disconnect;
          DM.DB.Close;
          DM.Free;
          Application.Terminate;
        end;

      Application.CreateForm(TFormPrincipal, FormPrincipal);
      FormPrincipal.RodapePrincipal.Panels[1].Text := DM.SQLUsuariosUSUAA60LOGIN.Value;
      FormPrincipal.RodapePrincipal.Panels[2].Text := Dm.SQLTerminalAtivoTERMA60DESCR.AsString;
      FormPrincipal.RodapePrincipal.Panels[3].Text := DM.SQLConfigGeralEmpresaPadraoCalcField.Value;
      FormPrincipal.RodapePrincipal.Panels[4].Text := 'Validade da Licença: ' +DM.SQLConfigGeralCFGEDBLOQ.AsString;
      Application.Run;
    end;
end.
