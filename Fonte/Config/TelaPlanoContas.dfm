inherited FormTelaPlanoContas: TFormTelaPlanoContas
  Left = 152
  Top = 72
  Width = 808
  Height = 608
  Caption = 'Plano de Contas'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 792
    Height = 570
    inherited PanelCentral: TPanel
      Width = 788
      Height = 486
      inherited PanelBarra: TPanel
        Top = 142
        Width = 0
        Height = 344
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 788
        Height = 95
        Align = alTop
        ParentColor = True
        TabOrder = 1
        object Label50: TLabel
          Left = 8
          Top = 10
          Width = 149
          Height = 13
          Caption = 'D'#237'gitos do Plano de Contas'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 533
          Top = 44
          Width = 176
          Height = 13
          Caption = 'M'#225'scara do C'#243'digo Estruturado'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object GroupBox22: TGroupBox
          Left = 8
          Top = 28
          Width = 514
          Height = 60
          Caption = 'D'#237'gito dos N'#237'veis '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object LNivel1: TLabel
            Left = 10
            Top = 17
            Width = 37
            Height = 13
            Caption = 'N'#237'vel 1'
            Enabled = False
          end
          object LNivel2: TLabel
            Left = 60
            Top = 17
            Width = 37
            Height = 13
            Caption = 'N'#237'vel 2'
            Enabled = False
          end
          object LNivel3: TLabel
            Left = 113
            Top = 17
            Width = 37
            Height = 13
            Caption = 'N'#237'vel 3'
            Enabled = False
          end
          object LNivel4: TLabel
            Left = 160
            Top = 17
            Width = 37
            Height = 13
            Caption = 'N'#237'vel 4'
            Enabled = False
          end
          object LNivel5: TLabel
            Left = 210
            Top = 17
            Width = 37
            Height = 13
            Caption = 'N'#237'vel 5'
            Enabled = False
          end
          object LNivel6: TLabel
            Left = 260
            Top = 17
            Width = 37
            Height = 13
            Caption = 'N'#237'vel 6'
            Enabled = False
          end
          object LNivel7: TLabel
            Left = 310
            Top = 17
            Width = 37
            Height = 13
            Caption = 'N'#237'vel 7'
            Enabled = False
          end
          object LNivel8: TLabel
            Left = 360
            Top = 17
            Width = 37
            Height = 13
            Caption = 'N'#237'vel 8'
            Enabled = False
          end
          object LNivel9: TLabel
            Left = 410
            Top = 17
            Width = 37
            Height = 13
            Caption = 'N'#237'vel 9'
            Enabled = False
          end
          object LNivel10: TLabel
            Left = 460
            Top = 17
            Width = 44
            Height = 13
            Caption = 'N'#237'vel 10'
            Enabled = False
          end
          object ComboNivel1: TRxDBComboBox
            Left = 10
            Top = 31
            Width = 43
            Height = 21
            Style = csDropDownList
            DataField = 'CFGCINIVEL1'
            DataSource = DSSQLConfigConta
            Enabled = False
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
            TabOrder = 0
            Values.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
          end
          object ComboNivel2: TRxDBComboBox
            Left = 60
            Top = 31
            Width = 43
            Height = 21
            Style = csDropDownList
            DataField = 'CFGCINIVEL2'
            DataSource = DSSQLConfigConta
            Enabled = False
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
            TabOrder = 1
            Values.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
          end
          object ComboNivel3: TRxDBComboBox
            Left = 110
            Top = 31
            Width = 43
            Height = 21
            Style = csDropDownList
            DataField = 'CFGCINIVEL3'
            DataSource = DSSQLConfigConta
            Enabled = False
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
            TabOrder = 2
            Values.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
          end
          object ComboNivel4: TRxDBComboBox
            Left = 160
            Top = 31
            Width = 43
            Height = 21
            Style = csDropDownList
            DataField = 'CFGCINIVEL4'
            DataSource = DSSQLConfigConta
            Enabled = False
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
            TabOrder = 3
            Values.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
          end
          object ComboNivel5: TRxDBComboBox
            Left = 210
            Top = 31
            Width = 43
            Height = 21
            Style = csDropDownList
            DataField = 'CFGCINIVEL5'
            DataSource = DSSQLConfigConta
            Enabled = False
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
            TabOrder = 4
            Values.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
          end
          object ComboNivel6: TRxDBComboBox
            Left = 260
            Top = 31
            Width = 43
            Height = 21
            Style = csDropDownList
            DataField = 'CFGCINIVEL6'
            DataSource = DSSQLConfigConta
            Enabled = False
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
            TabOrder = 5
            Values.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
          end
          object ComboNivel7: TRxDBComboBox
            Left = 310
            Top = 31
            Width = 43
            Height = 21
            Style = csDropDownList
            DataField = 'CFGCINIVEL7'
            DataSource = DSSQLConfigConta
            Enabled = False
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
            TabOrder = 6
            Values.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
          end
          object ComboNivel8: TRxDBComboBox
            Left = 360
            Top = 31
            Width = 43
            Height = 21
            Style = csDropDownList
            DataField = 'CFGCINIVEL8'
            DataSource = DSSQLConfigConta
            Enabled = False
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
            TabOrder = 7
            Values.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
          end
          object ComboNivel9: TRxDBComboBox
            Left = 410
            Top = 31
            Width = 43
            Height = 21
            Style = csDropDownList
            DataField = 'CFGCINIVEL9'
            DataSource = DSSQLConfigConta
            Enabled = False
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
            TabOrder = 8
            Values.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
          end
          object ComboNivel10: TRxDBComboBox
            Left = 460
            Top = 31
            Width = 47
            Height = 21
            Style = csDropDownList
            DataField = 'CFGCINIVEL10'
            DataSource = DSSQLConfigConta
            Enabled = False
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
            TabOrder = 9
            Values.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
          end
        end
        object ComboNiveis: TRxDBComboBox
          Left = 161
          Top = 6
          Width = 44
          Height = 21
          Style = csDropDownList
          DataField = 'CFGCNIVEIS'
          DataSource = DSSQLConfigConta
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10')
          TabOrder = 1
          Values.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10')
          OnChange = ComboNiveisChange
        end
        object DBEdit1: TDBEdit
          Left = 530
          Top = 58
          Width = 223
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CFGCA30MASCARA'
          DataSource = DSSQLConfigConta
          TabOrder = 2
          OnChange = NomeEditChange
          OnExit = NomeEditExit
        end
      end
      object Panel_Reg: TPanel
        Left = 0
        Top = 95
        Width = 788
        Height = 47
        Align = alTop
        ParentColor = True
        TabOrder = 2
        object Label51: TLabel
          Left = 6
          Top = 5
          Width = 85
          Height = 13
          Caption = 'Nome da Conta'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label52: TLabel
          Left = 260
          Top = 5
          Width = 46
          Height = 13
          Caption = 'C'#243'd Red'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label53: TLabel
          Left = 320
          Top = 5
          Width = 108
          Height = 13
          Caption = 'C'#243'digo Estruturado'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CodReduzido: TDBEdit
          Left = 258
          Top = 19
          Width = 58
          Height = 21
          Hint = 'Digite o C'#243'digo e Pressione Enter'
          DataField = 'PLCTICODREDUZ'
          MaxLength = 5
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnExit = CodReduzidoExit
        end
        object RadioConta: TDBRadioGroup
          Left = 600
          Top = 3
          Width = 153
          Height = 43
          Caption = ' Conta '
          Columns = 2
          DataField = 'PLCTCANALSINT'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'Sint'#233'tica'
            'Anal'#237'tica')
          ParentFont = False
          TabOrder = 4
          Values.Strings = (
            'S'
            'A')
          OnExit = RadioContaExit
        end
        object RadioSaldo: TDBRadioGroup
          Left = 450
          Top = 3
          Width = 147
          Height = 43
          Caption = ' Saldo '
          Columns = 2
          DataField = 'PLCTCTIPOSALDO'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'Cr'#233'dito'
            'D'#233'bito')
          ParentFont = False
          TabOrder = 3
          Values.Strings = (
            'C'
            'D'
            'A')
          OnExit = RadioSaldoExit
        end
        object CodigoEdit: TDBEdit
          Left = 318
          Top = 19
          Width = 129
          Height = 21
          TabStop = False
          Color = 16249066
          DataField = 'PLCTA30CODEDIT'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object NomeEdit: TDBEdit
          Left = 4
          Top = 19
          Width = 252
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PLCTA60DESCR'
          TabOrder = 0
          OnChange = NomeEditChange
          OnExit = NomeEditExit
        end
      end
      object PanelArvore: TPanel
        Left = 0
        Top = 142
        Width = 788
        Height = 344
        Align = alClient
        Caption = 'PanelArvore'
        TabOrder = 3
        object Arvore: TTreeView
          Left = 1
          Top = 1
          Width = 786
          Height = 326
          Hint = 'Bot'#227'o Direito do Mouse'
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HideSelection = False
          Indent = 19
          ParentFont = False
          ParentShowHint = False
          PopupMenu = PopupMenu1
          ReadOnly = True
          ShowHint = True
          TabOrder = 0
          OnChange = ArvoreChange
          OnCompare = ArvoreCompare
          OnDblClick = ArvoreDblClick
        end
        object ProgressBar: TProgressBar
          Left = 1
          Top = 327
          Width = 786
          Height = 16
          Align = alBottom
          TabOrder = 1
          Visible = False
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 788
      inherited PanelCabecalho: TPanel
        Width = 788
        inherited PanelNavigator: TPanel
          Width = 788
          object BtnGravar: TSpeedButton [0]
            Tag = 3
            Left = 5
            Top = 3
            Width = 163
            Height = 25
            Cursor = crHandPoint
            Hint = 'Fechar Tela'
            Caption = '&Gravar Config Iniciais'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Glyph.Data = {
              96010000424D9601000000000000760000002800000018000000180000000100
              0400000000002001000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000FFFFFFFFFFFFFFF
              FFF0676F700FFFFFFFFFFFFFFF06778F88700FFFFFFFFFFFFF0876F078F8700F
              FFFFFFFFF07778F68FF877000FFFFFFFF087768FFFF867600FFFFFFF077FF776
              8FF776700FFFFFFF08FF7FF776067670FFFFFFF077FF700FF7766700FFFFFFF0
              8FF7F8300FF7770FFFFFFF078FF7FF0870FF700FFFFFFF0888FF7FF0870F70FF
              FFFFFFF00788FFFF087000FFFFFFFFFFF00888FFF0870FFFFFFFFFFFFFF00888
              FF0870FFFFFFFFFFFFFFF0088F70870FFFFFFFFFFFFFFFF007000870FFFFFFFF
              FFFFFFFFF00FF0870FFFFFFFFFFFFFFFFFFFFF080FFFFFFFFFFFFFFFFFFFFFF0
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ParentFont = False
            OnClick = BtnGravarClick
          end
          object BtApagarContas: TSpeedButton [1]
            Tag = 3
            Left = 175
            Top = 3
            Width = 242
            Height = 25
            Cursor = crHandPoint
            Hint = 'Fechar Tela'
            Caption = 'Apagar todas as contas criadas'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Glyph.Data = {
              96010000424D9601000000000000760000002800000018000000180000000100
              0400000000002001000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFF000000000FFFFFFFFFFFFFF077777777000FF
              FFFFFFFFF078787727770000FFFFFFFFF0787837272700000FFFFFFFF0787837
              272700000FFFFFFFF0787837272700000FFFFFFFF078783727270000FFFFFFFF
              F078783727270FFFFFFFFFFFF070000000070FFFFFFFFFFFF007777777200FFF
              FFFFFFFF07777777777770FFFFFFFFFF07888877777770FFFFFFFFFF07888777
              777770FFFFFFFFFF08888700077770FFFFFFFFFFF0088F7737700FFFFFFFFFFF
              FFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ParentFont = False
            OnClick = BtApagarContasClick
          end
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 788
          end
        end
      end
    end
  end
  object DSSQLConfigConta: TDataSource
    DataSet = DM.SQLConfigConta
    OnStateChange = DSSQLConfigContaStateChange
    Left = 107
    Top = 19
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 558
    Top = 90
    object NovaConta: TMenuItem
      Caption = 'Nova &Conta'
      OnClick = NovaContaClick
    end
    object SubConta: TMenuItem
      Caption = 'Nova &Sub Conta'
      OnClick = SubContaClick
    end
    object Excluir: TMenuItem
      Caption = '&Excluir'
      OnClick = ExcluirClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Mn_Exp_Nivel: TMenuItem
      Caption = 'Expandir N'#237'vel'
      OnClick = Mn_Exp_NivelClick
    end
    object Mn_Cnt_Nivel: TMenuItem
      Caption = 'Fechar N'#237'vel'
      OnClick = Mn_Cnt_NivelClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Mn_Exp_Tudo: TMenuItem
      Caption = 'Expandir Tudo'
      OnClick = Mn_Exp_TudoClick
    end
    object Mn_Cnt_Tudo: TMenuItem
      Caption = 'Fechar Tudo'
      OnClick = Mn_Cnt_TudoClick
    end
  end
end
