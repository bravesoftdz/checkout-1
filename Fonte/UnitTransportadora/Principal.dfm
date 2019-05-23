inherited FormPrincipal: TFormPrincipal
  Left = 217
  Top = 132
  Caption = 'Gest'#227'o Transportadora'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelCabecalho: TPanel
    inherited Cabecalho: TCoolBar
      inherited ToolBar3: TToolBar
        ButtonWidth = 60
        object ButtonArquivo: TToolButton
          Left = 0
          Top = 0
          Caption = '&Arquivos'
          MenuItem = MnArquivo
        end
        object ButtonUtilitario: TToolButton
          Left = 60
          Top = 0
          Caption = '&Utilit'#225'rios'
          MenuItem = MnUtilitario
        end
        object ButtonRelatorios: TToolButton
          Left = 120
          Top = 0
          Caption = '&Relat'#243'rios'
          MenuItem = TRANSMnRelatorios
        end
      end
    end
  end
  inherited MainMenu: TMainMenu
    AutoMerge = True
    object MnArquivo: TMenuItem
      Caption = '&Arquivos'
      object MnCadastroFrete: TMenuItem
        Caption = 'Fretes'
        OnClick = MnCadastroFreteClick
      end
      object MnCadastroFuncionario: TMenuItem
        Caption = 'Funcion'#225'rios'
        OnClick = MnCadastroFuncionarioClick
      end
      object MnCadastroVeiculo: TMenuItem
        Caption = 'Ve'#237'culos'
        OnClick = MnCadastroVeiculoClick
      end
      object MnCadastroOperacaoFrete: TMenuItem
        Caption = 'Opera'#231#245'es'
        OnClick = MnCadastroOperacaoFreteClick
      end
      object Mn1: TMenuItem
        Caption = '-'
      end
      object MnConfig: TMenuItem
        Caption = 'Configura'#231#245'es'
        OnClick = MnConfigClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object mnuSair: TMenuItem
        Caption = 'Sair'
        OnClick = mnuSairClick
      end
    end
    object MnUtilitario: TMenuItem
      Caption = '&Utilit'#225'rios'
      object MnBaixaConta: TMenuItem
        Caption = 'Baixa de Contas'
        OnClick = MnBaixaContaClick
      end
      object Conhecimentos1: TMenuItem
        Caption = 'Conhecimentos'
        OnClick = Conhecimentos1Click
      end
    end
    object TRANSMnRelatorios: TMenuItem
      Caption = '&Relat'#243'rios'
      object MnRelListagemdeFretes: TMenuItem
        Caption = 'Listagem de Fretes'
        OnClick = MnRelListagemdeFretesClick
      end
      object Comisses1: TMenuItem
        Caption = 'Comiss'#245'es'
        OnClick = Comisses1Click
      end
    end
  end
end
