inherited FormPrincipal: TFormPrincipal
  Left = 22
  Top = 36
  Width = 743
  Height = 527
  Caption = 'Unit CallCenter'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited RodapePrincipal: TStatusBar
    Top = 481
    Width = 735
  end
  inherited PanelCabecalho: TPanel
    Width = 735
    inherited Cabecalho: TCoolBar
      Width = 735
      Bands = <
        item
          Control = ToolBar3
          ImageIndex = -1
          MinHeight = 21
          Width = 327
        end
        item
          Break = False
          Control = ToolBar1
          ImageIndex = -1
          MinHeight = 21
          Width = 400
        end>
      inherited ToolBar1: TToolBar [0]
        Left = 336
        Width = 387
      end
      inherited ToolBar3: TToolBar [1]
        Width = 314
        ButtonWidth = 60
        object ToolButton1: TToolButton
          Left = 0
          Top = 0
          Caption = '&Arquivos'
          MenuItem = CALLMNArquivos
        end
        object ToolButton2: TToolButton
          Left = 60
          Top = 0
          Caption = '&Utilit'#225'rios'
          MenuItem = CALLMNUtilitarios
        end
        object ToolButton3: TToolButton
          Left = 120
          Top = 0
          Caption = '&Relat'#243'rios'
          MenuItem = CALLMNRelatorios
        end
      end
    end
  end
  object PanelGerar: TPanel [2]
    Left = 208
    Top = 144
    Width = 401
    Height = 169
    TabOrder = 2
    Visible = False
    object LabelReg: TLabel
      Left = 11
      Top = 28
      Width = 375
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Contatos Gerados'
    end
    object Animate: TAnimate
      Left = 163
      Top = 65
      Width = 73
      Height = 57
      Active = False
      AutoSize = False
      CommonAVI = aviFindComputer
      StopFrame = 8
    end
    object ProgressBar: TProgressBar
      Left = 1
      Top = 151
      Width = 399
      Height = 17
      Align = alBottom
      Min = 0
      Max = 100
      Smooth = True
      TabOrder = 1
    end
  end
  inherited MainMenu: TMainMenu
    Left = 7
    object CALLMNArquivos: TMenuItem
      Caption = '&Arquivos'
      object CALLMNArquivosClientes: TMenuItem
        Caption = '&Clientes'
        object CALLMNArquivosClientesCadastro: TMenuItem
          Caption = '&Cadastro'
          OnClick = CALLMNArquivosClientesCadastroClick
        end
        object CALLMNArquivosClientesTiposdeCliente: TMenuItem
          Caption = '&Tipos de Cliente'
          OnClick = CALLMNArquivosClientesTiposdeClienteClick
        end
        object CALLMNArquivosClientesProfissoesAtividades: TMenuItem
          Caption = '&Profiss'#245'es / Atividade'
          OnClick = CALLMNArquivosClientesProfissoesAtividadesClick
        end
        object CALLMNArquivosClientesMotivosdeBloquerio: TMenuItem
          Caption = '&Motivos de Bloquerio'
          OnClick = CALLMNArquivosClientesMotivosdeBloquerioClick
        end
        object CALLMNArquivosClientesGrupos: TMenuItem
          Caption = 'Grupos'
          OnClick = CALLMNArquivosClientesGruposClick
        end
      end
      object CALLMNArquivosContato: TMenuItem
        Caption = 'Contato'
        object CALLMNArquivosContatoTipoContato: TMenuItem
          Caption = 'Tipos de Contato'
          OnClick = CALLMNArquivosContatoTipoContatoClick
        end
        object CALLMNArquivosContatoTipoRetorno: TMenuItem
          Caption = 'Tipos de Retorno'
          OnClick = CALLMNArquivosContatoTipoRetornoClick
        end
      end
      object CALLMNArquivosConfiguracoesQuestionarios: TMenuItem
        Caption = 'Question'#225'rios'
        OnClick = CALLMNArquivosConfiguracoesQuestionariosClick
      end
      object FAQ1: TMenuItem
        Caption = 'FAQ'
        OnClick = FAQ1Click
      end
      object CALLMNArquivosVendedores: TMenuItem
        Caption = '&Vendedores'
        OnClick = CALLMNArquivosVendedoresClick
      end
      object CALLMNArquivosConfiguracoes: TMenuItem
        Caption = 'Configura'#231#245'es'
        OnClick = CALLMNArquivosConfiguracoesClick
      end
    end
    object CALLMNUtilitarios: TMenuItem
      Caption = '&Utilit'#225'rios'
      object CALLMNUtilitariosAgenda: TMenuItem
        Caption = 'Agenda'
        OnClick = CALLMNUtilitariosAgendaClick
      end
      object FAQ2: TMenuItem
        Caption = 'FAQ'
        OnClick = FAQ2Click
      end
      object CALLMNUtilitariosAgendaContatoImediato: TMenuItem
        Caption = 'Contato Imediato'
        OnClick = CALLMNUtilitariosAgendaContatoImediatoClick
      end
      object CALLMNUtilitariosAgendaEnquadramento: TMenuItem
        Caption = 'Enquadramento de Clientes'
        OnClick = CALLMNUtilitariosAgendaEnquadramentoClick
      end
      object CALLMNUtilitariosEspeciais: TMenuItem
        Caption = 'Especiais'
        object CALLMNUtilitariosEspeciaisCargaInicial: TMenuItem
          Caption = 'Carga Inicial'
          OnClick = CALLMNUtilitariosEspeciaisCargaInicialClick
        end
        object ExcluirContatosdeVendedorAfastado1: TMenuItem
          Caption = 'Excluir Contatos de Vendedor Afastado'
          OnClick = ExcluirContatosdeVendedorAfastado1Click
        end
      end
      object CALLMNUtilitariosControledeAcesso: TMenuItem
        Caption = 'Controle de Acesso'
        OnClick = CALLMNUtilitariosControledeAcessoClick
      end
      object rocadeUsurio1: TMenuItem
        Caption = 'Troca de Usu'#225'rio'
        OnClick = rocadeUsurio1Click
      end
    end
    object CALLMNRelatorios: TMenuItem
      Caption = '&Relat'#243'rios'
      object CALLMNRelatoriosListagemContatos: TMenuItem
        Caption = 'Listagem Contatos'
        OnClick = CALLMNRelatoriosListagemContatosClick
      end
      object CALLMNRelatoriosDesempenho: TMenuItem
        Caption = 'Desempenho (Contato x Retorno)'
        OnClick = CALLMNRelatoriosDesempenhoClick
      end
      object CALLMNRelatoriosAnaliseQuestionario: TMenuItem
        Caption = 'An'#225'lise de Question'#225'rio'
        OnClick = CALLMNRelatoriosAnaliseQuestionarioClick
      end
    end
  end
end
