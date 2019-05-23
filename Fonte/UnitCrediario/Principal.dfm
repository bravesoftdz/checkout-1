inherited FormPrincipal: TFormPrincipal
  Left = 189
  Top = 76
  Height = 527
  Caption = 'Front Credi'#225'rio'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited RodapePrincipal: TStatusBar
    Top = 481
  end
  inherited PanelCabecalho: TPanel
    inherited Cabecalho: TCoolBar
      Bands = <
        item
          Control = ToolBar3
          ImageIndex = -1
          MinHeight = 21
          Width = 254
        end
        item
          Break = False
          Control = ToolBar1
          ImageIndex = -1
          MinHeight = 21
          Width = 497
        end>
      inherited ToolBar1: TToolBar [0]
        Left = 263
      end
      inherited ToolBar3: TToolBar [1]
        Width = 241
        ButtonWidth = 60
        object ToolButton1: TToolButton
          Left = 0
          Top = 0
          Caption = '&Arquivos'
          MenuItem = CREDMNArquivos
        end
        object ToolButton2: TToolButton
          Left = 60
          Top = 0
          Caption = 'R&otinas'
          MenuItem = CREDMNRotinas
        end
        object ToolButton4: TToolButton
          Left = 120
          Top = 0
          Caption = 'Utilit'#225'rios'
          MenuItem = CREDMNUtilitarios
        end
        object ToolButton3: TToolButton
          Left = 180
          Top = 0
          Caption = '&Relat'#243'rios'
          MenuItem = CREDMNRelatorios
        end
      end
    end
    inherited Panel1: TPanel
      inherited Image1: TImage
        Picture.Data = {
          055449636F6E0000010001002020100000000000E80200001600000028000000
          2000000040000000010004000000000080020000000000000000000000000000
          0000000000000000000080000080000000808000800000008000800080800000
          C0C0C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
          FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF78888888888FFFFFFFF8888FFFFFFFFF888888888888FFFFFFF
          8888FFFFFFFF88888877FFFF777FFFF88888FFFFFF88888FFFFFFFFFFFFFFF78
          8888FFFFFF8888FFFFFFFFFFFFFFFFF88888FFFFFF8888FFFFFFFFFFFFFFFFFF
          8888FFFFFF8888FFFFFFFFFFFFFFFFFF8888FFFFFF8888FFFFFFFFFFFFFFFFFF
          8888FFFFFF78888FFFFFFFFFFFFFFFFFF888FFFFFFFF8888FFFFFFFFFFFFFFFF
          F888FFFFFFFF8888FFFFFFFFFFFFFFFFF888FFFFFFFFF888887FFFFFFFFFFFFF
          8888FFFFFFFFF7888888FFFFFFFFFFFF8888FFFFFFFFFFFF888887FFFFFFFFFF
          8888FFFFFFFFFFFFFFFFFFF7888888888888FFFFFFFFFFFFFFFFFFFFF7888888
          8888FFFFFFFFFFFFFFFFFFFFFFFFF7888888FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          8888FFFFFFFFFFFFFFFFFFFFFFFFFFFF8888FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          8888FFFFFFFFF888FFFFFFFFFFFFFFFF8887FFFFFFFFF888FFFFFFFFFFFFFFFF
          888FFFFFFFFFFF88888887FFFFFFF88888FFFFFFFFFFFFFF8888888888888888
          FFFFFFFFFFFFFFFF7888888888888888FFFFFFFFFFFFFFFFFFFFFFF77FFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF00000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000}
      end
    end
  end
  inherited MainMenu: TMainMenu
    Left = 4
    Top = 56
    object CREDMNArquivos: TMenuItem
      Caption = '&Arquivos'
      object CREDMnCadastroClientes: TMenuItem
        Caption = '&Clientes'
        object CREDMnCadastroClientesCadastro: TMenuItem
          Caption = '&Cadastro'
          OnClick = CREDMnCadastroClientesCadastroClick
        end
        object CREDMnCadastroClientesTipoCliente: TMenuItem
          Caption = '&Tipos de Cliente'
          OnClick = CREDMnCadastroClientesTipoClienteClick
        end
        object CREDMnCadastroClientesProfissoes: TMenuItem
          Caption = '&Profiss'#245'es / Atividade'
        end
        object CREDMnCadastroClientesMotivoBloquerio: TMenuItem
          Caption = '&Motivos de Bloquerio'
        end
      end
      object CREDMnCadastroCupons: TMenuItem
        Caption = '&Cupons'
        OnClick = CREDMnCadastroCuponsClick
      end
      object N2: TMenuItem
        Tag = 1
        Caption = '-'
      end
      object CREDMnSairdoSistema: TMenuItem
        Caption = '&Sair do Sistema'
      end
    end
    object CREDMNRotinas: TMenuItem
      Caption = 'R&otinas'
      object CREDMnRotinasGeracaoCartasAviso: TMenuItem
        Caption = '&Gera'#231#227'o de Cartas de Aviso'
        OnClick = CREDMnRotinasGeracaoCartasAvisoClick
      end
      object CREDMnRotinasReabilitcaoCredito: TMenuItem
        Caption = '&Reabilita'#231#227'o de Cr'#233'dito'
        OnClick = CREDMnRotinasReabilitcaoCreditoClick
      end
    end
    object CREDMNUtilitarios: TMenuItem
      Caption = 'Utilit'#225'rios'
      object CREDMnUtilitariosControledeAcesso: TMenuItem
        Caption = 'Controle de Acesso'
        OnClick = CREDMnUtilitariosControledeAcessoClick
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object CREDMnUtilitariosDadosVerso: TMenuItem
        Caption = 'Dados da Vers'#227'o'
        OnClick = CREDMnUtilitariosDadosVersoClick
      end
    end
    object CREDMNRelatorios: TMenuItem
      Caption = '&Relat'#243'rios'
      object CREDMnRelatoriosReabilitacaoSPC: TMenuItem
        Caption = '&Reabilita'#231#227'o de SPC'
        OnClick = CREDMnRelatoriosReabilitacaoSPCClick
      end
      object CREDMnRelatorioExtratoClientes: TMenuItem
        Caption = 'Extrato de Clientes'
        OnClick = CREDMnRelatorioExtratoClientesClick
      end
      object MnCREDRELClientescadastrados: TMenuItem
        Caption = 'Clientes cadastrados'
        OnClick = MnCREDRELClientescadastradosClick
      end
      object MnCREDRELClientesbloqueados: TMenuItem
        Caption = 'Clientes bloqueados'
        OnClick = MnCREDRELClientesbloqueadosClick
      end
      object MNCREDRELClientesemSPC: TMenuItem
        Caption = 'Clientes em SPC'
        OnClick = MNCREDRELClientesemSPCClick
      end
      object MnCREDVendasporperiodo: TMenuItem
        Caption = 'Vendas por per'#237'odo'
        OnClick = MnCREDVendasporperiodoClick
      end
      object MnCREDContasreceber: TMenuItem
        Caption = 'Contas '#224' receber'
        object MNCREDRELEmitidas: TMenuItem
          Caption = 'Emitidas'
          OnClick = MNCREDRELEmitidasClick
        end
        object MnCREDRELRecebidas: TMenuItem
          Caption = 'Recebidas'
          OnClick = MnCREDRELRecebidasClick
        end
        object MnCREDRELVencidas: TMenuItem
          Caption = 'Vencidas'
          OnClick = MnCREDRELVencidasClick
        end
        object MnCREDRELreceber: TMenuItem
          Caption = #192' receber'
          OnClick = MnCREDRELreceberClick
        end
      end
    end
  end
  inherited ListaJanelas: TPopupMenu
    Left = 60
    Top = 56
  end
  inherited TimerDataHora: TTimer
    Left = 32
    Top = 56
  end
  object EvWallPaper: TEvWallPaper
    Enabled = True
    Style = wsStretch
    Left = 88
    Top = 56
  end
end
