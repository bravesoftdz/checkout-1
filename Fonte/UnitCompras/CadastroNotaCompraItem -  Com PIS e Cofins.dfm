inherited FormCadastroNotaCompraItem: TFormCadastroNotaCompraItem
  Left = 230
  Top = 0
  Caption = 'Lan'#231'amento de Itens'
  ClientHeight = 664
  ClientWidth = 1105
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label25: TLabel [0]
    Left = 7
    Top = 58
    Width = 51
    Height = 13
    Caption = '% Subst.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 8404992
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label26: TLabel [1]
    Left = 7
    Top = 102
    Width = 51
    Height = 13
    Caption = '% Subst.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 8404992
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited ScrollBoxFundo: TScrollBox
    Width = 1105
    Height = 664
    inherited PanelCabecalho: TPanel
      Width = 1103
      inherited PanelNavigator: TPanel
        Width = 1103
      end
      inherited Panel2: TPanel
        Width = 1103
        inherited Panel3: TPanel
          Left = 751
        end
        inherited Panel1: TPanel
          Width = 1103
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 1103
      Height = 590
      inherited PanelBarra: TPanel
        Height = 590
        object Label29: TLabel
          Left = 15
          Top = 145
          Width = 92
          Height = 13
          Caption = 'Qtde.Total Itens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label24: TLabel
          Left = 10
          Top = 200
          Width = 99
          Height = 13
          Caption = 'Vlr M'#233'dio Compra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label33: TLabel
          Left = 17
          Top = 258
          Width = 84
          Height = 13
          Caption = '% Lucro M'#233'dio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Label39: TLabel
          Left = 22
          Top = 117
          Width = 80
          Height = 13
          Caption = 'Vlr Total Itens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label42: TLabel
          Left = 21
          Top = 173
          Width = 79
          Height = 13
          Caption = 'Vlr.Total ICMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label52: TLabel
          Left = 16
          Top = 228
          Width = 87
          Height = 13
          Caption = 'Qtde.M'#233'd Itens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label48: TLabel
          Left = 17
          Top = 289
          Width = 87
          Height = 13
          Caption = 'Alterou o Pre'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RadioPesquisa: TRadioGroup
          Left = 5
          Top = 62
          Width = 118
          Height = 53
          Caption = '&Tipo de Pesquisa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'C'#243'digos'
            'C'#243'd.Fornecedor')
          ParentFont = False
          TabOrder = 0
          OnClick = RadioPesquisaClick
        end
        object EvDBNumEdit3: TEvDBNumEdit
          Left = 7
          Top = 157
          Width = 115
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          Color = 12572888
          Ctl3D = False
          DataField = 'TOTALQTDEITEM'
          DataSource = DSSQLTotalQdte
          Decimals = 2
          EnabledBtn = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            E6020000424DE60200000000000042000000280000001A0000000D0000000100
            100003000000A402000000000000000000000000000000000000007C0000E003
            00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
            EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
            EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
            FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
            FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
            FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
            FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
            FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
            FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
            FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
            FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
            EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
            FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
            070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
            EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
            FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
            FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EFF5EFF5EFF5E}
          ParentCtl3D = False
          ParentFont = False
          ShowButton = False
          ShowSeparator = True
          TabOrder = 1
        end
        object PercMedioCompra: TCurrencyEdit
          Left = 7
          Top = 269
          Width = 115
          Height = 21
          AutoSize = False
          BorderStyle = bsNone
          Color = 12572888
          Ctl3D = False
          DisplayFormat = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          Visible = False
        end
        object EvDBNumEdit10: TEvDBNumEdit
          Left = 7
          Top = 128
          Width = 115
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          Color = 12572888
          Ctl3D = False
          DataField = 'VALORTOTALNF'
          DataSource = DSSQLTotalQdte
          Decimals = 2
          EnabledBtn = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            E6020000424DE60200000000000042000000280000001A0000000D0000000100
            100003000000A402000000000000000000000000000000000000007C0000E003
            00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
            EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
            EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
            FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
            FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
            FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
            FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
            FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
            FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
            FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
            FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
            EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
            FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
            070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
            EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
            FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
            FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EFF5EFF5EFF5E}
          ParentCtl3D = False
          ParentFont = False
          ShowButton = False
          ShowSeparator = True
          TabOrder = 3
        end
        object EvDBNumEdit11: TEvDBNumEdit
          Left = 7
          Top = 184
          Width = 115
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          Color = 12572888
          Ctl3D = False
          DataField = 'VLRTOTICMS'
          DataSource = DSSQLTotalQdte
          Decimals = 2
          EnabledBtn = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            E6020000424DE60200000000000042000000280000001A0000000D0000000100
            100003000000A402000000000000000000000000000000000000007C0000E003
            00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
            EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
            EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
            FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
            FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
            FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
            FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
            FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
            FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
            FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
            FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
            EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
            FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
            070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
            EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
            FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
            FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EFF5EFF5EFF5E}
          ParentCtl3D = False
          ParentFont = False
          ShowButton = False
          ShowSeparator = True
          TabOrder = 4
        end
        object VlrMedCompra: TEvDBNumEdit
          Left = 8
          Top = 211
          Width = 115
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          Color = 12572888
          Ctl3D = False
          DataField = 'VALORTOTALNFMED'
          DataSource = DSSQLTotalQdte
          Decimals = 2
          EnabledBtn = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            E6020000424DE60200000000000042000000280000001A0000000D0000000100
            100003000000A402000000000000000000000000000000000000007C0000E003
            00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
            EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
            EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
            FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
            FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
            FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
            FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
            FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
            FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
            FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
            FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
            EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
            FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
            070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
            EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
            FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
            FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EFF5EFF5EFF5E}
          ParentCtl3D = False
          ParentFont = False
          ShowButton = False
          ShowSeparator = True
          TabOrder = 5
        end
        object EvDBNumEdit8: TEvDBNumEdit
          Left = 8
          Top = 241
          Width = 115
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          Color = 12572888
          Ctl3D = False
          DataField = 'TOTALQTDEITEMMEDIA'
          DataSource = DSSQLTotalQdte
          Decimals = 2
          EnabledBtn = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            E6020000424DE60200000000000042000000280000001A0000000D0000000100
            100003000000A402000000000000000000000000000000000000007C0000E003
            00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
            EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
            EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
            FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
            FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
            FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
            FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
            FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
            FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
            FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
            FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
            EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
            FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
            070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
            EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
            FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
            FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EFF5EFF5EFF5E}
          ParentCtl3D = False
          ParentFont = False
          ShowButton = False
          ShowSeparator = True
          TabOrder = 6
        end
        object ComboAltPreco: TRxDBComboBox
          Left = 10
          Top = 302
          Width = 111
          Height = 21
          Style = csDropDownList
          Color = 12572888
          Ctl3D = False
          DataField = 'NOCICALTPRECO'
          DataSource = DSTemplate
          EnableValues = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Anchors = [akLeft, akTop, akRight]
          ItemHeight = 13
          Items.Strings = (
            'Aumentou'
            'Baixou'
            'Igual')
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          TabStop = False
          Values.Strings = (
            'A'
            'B'
            'I')
        end
      end
      inherited PanelFundoDados: TPanel
        Width = 973
        Height = 590
        inherited Panel5: TPanel
          Width = 973
          Height = 590
          inherited PagePrincipal: TPageControl
            Top = 176
            Width = 973
            Height = 414
            ActivePage = TabSheetDadosPrincipais
            TabIndex = 1
            TabOrder = 2
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 965
                Height = 341
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'ProdutoLookUp'
                    Title.Caption = 'Produto'
                    Width = 278
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ReferenciaLookUp'
                    Title.Caption = 'Referencia'
                    Width = 63
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOCIN3QTDEMBAL'
                    Title.Caption = 'Qtde'
                    Width = 58
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOCIN3CAPEMBAL'
                    Title.Caption = 'Cap.Embal'
                    Width = 57
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOCIN3VLREMBAL'
                    Title.Caption = 'Vlr.Embal'
                    Width = 55
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOCIN2MGVENDA'
                    Title.Caption = 'Lucro %'
                    Width = 50
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOCIN2VLRVENDA'
                    Title.Caption = 'Vlr.Venda'
                    Width = 62
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOCIN3PERCDESC'
                    Title.Caption = '% Desc'
                    Width = 51
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOCIN3VLRDESC'
                    Title.Caption = 'Vlr.Desc'
                    Width = 67
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TotalItemCalc'
                    Title.Caption = 'Vlr.Total Item'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOCIN3VLRUNIT'
                    Title.Caption = 'Vlr.Unit'#225'rio'
                    Width = 66
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOCIN3QTDBONIF'
                    Title.Caption = 'Qtde.Bonif'
                    Width = 60
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOCIN3VLRFRETE'
                    Title.Caption = 'Vlr.Frete'
                    Width = 67
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOCIN3VLRICMS'
                    Title.Caption = 'Vlr.Icms'
                    Width = 67
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOCIN3PERCICMS'
                    Title.Caption = '% Icms'
                    Width = 45
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOCIN3VLRSUBST'
                    Title.Caption = 'Vlr.Subst'
                    Width = 67
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOCIN3VLRIPI'
                    Title.Caption = 'Vlr.IPI'
                    Width = 54
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOCIN3PERCIPI'
                    Title.Caption = '% IPI'
                    Width = 41
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOCIN3VLRCUSTOMED'
                    Title.Caption = 'Vlr.Custo Medio'
                    Width = 75
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOCIN2QTDENF'
                    Title.Caption = 'Qtde.M'#233'dia'
                    Width = 72
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 965
                inherited PanelBetween: TPanel
                  Width = 571
                end
                inherited PanelEditProcura: TPanel
                  Width = 571
                end
                inherited PanelIndice: TPanel
                  inherited ComboOrdem: TComboBox
                    BevelInner = bvNone
                    BevelOuter = bvNone
                  end
                  inherited ComboAscDesc: TComboBox
                    ParentCtl3D = False
                  end
                end
              end
              inherited MemoDetalhes: TMemo
                Left = 7
                Top = 148
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label9: TLabel
                Left = 123
                Top = 45
                Width = 88
                Height = 13
                Caption = 'Qtde Comprada'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label11: TLabel
                Left = 250
                Top = 45
                Width = 131
                Height = 13
                Caption = 'Vlr Compra Embalagem'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label23: TLabel
                Left = 372
                Top = 309
                Width = 85
                Height = 13
                Caption = 'Marg Varejo %'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label36: TLabel
                Left = 680
                Top = 308
                Width = 75
                Height = 13
                Caption = 'Venda Varejo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label37: TLabel
                Left = 372
                Top = 343
                Width = 88
                Height = 13
                Caption = 'Marg Atacad %'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label38: TLabel
                Left = 675
                Top = 342
                Width = 85
                Height = 13
                Caption = 'Venda Atacado'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label30: TLabel
                Left = 20
                Top = 309
                Width = 85
                Height = 13
                Caption = 'Marg Varejo %'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label2: TLabel
                Left = 242
                Top = 309
                Width = 75
                Height = 13
                Caption = 'Venda Varejo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label34: TLabel
                Left = 20
                Top = 343
                Width = 88
                Height = 13
                Caption = 'Marg Atacad %'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label35: TLabel
                Left = 241
                Top = 343
                Width = 85
                Height = 13
                Caption = 'Venda Atacado'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label21: TLabel
                Left = 625
                Top = 48
                Width = 78
                Height = 13
                Caption = 'R$ Total Item'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label53: TLabel
                Left = 134
                Top = 309
                Width = 73
                Height = 13
                Caption = 'Marg Real %'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label54: TLabel
                Left = 134
                Top = 343
                Width = 73
                Height = 13
                Caption = 'Marg Real %'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label55: TLabel
                Left = 488
                Top = 309
                Width = 73
                Height = 13
                Caption = 'Marg Real %'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label56: TLabel
                Left = 488
                Top = 343
                Width = 73
                Height = 13
                Caption = 'Marg Real %'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label58: TLabel
                Left = 580
                Top = 308
                Width = 72
                Height = 13
                Caption = 'Aplic Marg%'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label59: TLabel
                Left = 580
                Top = 343
                Width = 72
                Height = 13
                Caption = 'Aplic Marg%'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 4
                Top = 88
                Width = 28
                Height = 13
                Caption = 'CFOP'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label83: TLabel
                Left = 407
                Top = 45
                Width = 55
                Height = 13
                Caption = '% Descto'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label84: TLabel
                Left = 486
                Top = 45
                Width = 71
                Height = 13
                Caption = 'R$ Desconto'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label85: TLabel
                Left = 7
                Top = 2
                Width = 110
                Height = 13
                Caption = 'Unidade de Compra'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label86: TLabel
                Left = 89
                Top = 88
                Width = 167
                Height = 13
                Caption = 'Descri'#231#227'o do CFOP de Compra'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label44: TLabel
                Left = 5
                Top = 45
                Width = 90
                Height = 13
                Caption = 'Cap.Embalagem'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object SpeedButton2: TSpeedButton
                Left = 341
                Top = 15
                Width = 24
                Height = 23
                Hint = 'Acessa Produtos'
                Flat = True
                Glyph.Data = {
                  E6000000424DE60000000000000076000000280000000E0000000E0000000100
                  0400000000007000000000000000000000001000000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
                  DD00DDDDDDDDDDD00D00DDDDDDDDDD000D00DDDDDDDDD000DD00DDDDDDDD000D
                  DD00DD73000800DDDD00D70888800DDDDD00D38788888DDDDD00D07778880DDD
                  DD00D07F77880DDDDD00D387F7783DDDDD00D70877807DDDDD00DD730037DDDD
                  DD00DDDDDDDDDDDDDD00}
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton2Click
              end
              object DBEditQtde: TEvDBNumEdit
                Left = 119
                Top = 62
                Width = 121
                Height = 21
                DataField = 'NOCIN3QTDEMBAL'
                DataSource = DSTemplate
                Decimals = 5
                EnabledBtn = True
                Glyph.Data = {
                  E6020000424DE60200000000000042000000280000001A0000000D0000000100
                  100003000000A402000000000000000000000000000000000000007C0000E003
                  00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                  EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                  EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                  FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                  FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                  FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                  FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                  FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                  EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                  FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                  070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                  EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                  FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5E}
                ShowButton = False
                ShowSeparator = True
                TabOrder = 1
                OnExit = DBEditQtdeExit
              end
              object DBEditMGVarejo: TEvDBNumEdit
                Left = 370
                Top = 322
                Width = 110
                Height = 21
                DataField = 'NOCIN2MGVENDA'
                DataSource = DSTemplate
                Decimals = 2
                EnabledBtn = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Glyph.Data = {
                  E6020000424DE60200000000000042000000280000001A0000000D0000000100
                  100003000000A402000000000000000000000000000000000000007C0000E003
                  00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                  EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                  EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                  FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                  FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                  FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                  FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                  FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                  EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                  FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                  070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                  EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                  FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5E}
                ParentFont = False
                ShowButton = False
                ShowSeparator = True
                TabOrder = 8
                OnEnter = DBEditMGVarejoEnter
                OnExit = DBEditMGVarejoExit
              end
              object DBEditVLRVarejo: TEvDBNumEdit
                Left = 673
                Top = 321
                Width = 103
                Height = 21
                DataField = 'NOCIN2VLRVENDA'
                DataSource = DSTemplate
                Decimals = 2
                EnabledBtn = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Glyph.Data = {
                  E6020000424DE60200000000000042000000280000001A0000000D0000000100
                  100003000000A402000000000000000000000000000000000000007C0000E003
                  00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                  EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                  EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                  FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                  FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                  FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                  FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                  FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                  EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                  FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                  070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                  EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                  FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5E}
                ParentFont = False
                ShowButton = False
                ShowSeparator = True
                TabOrder = 10
                OnEnter = DBEditVLRVarejoEnter
                OnExit = DBEditVLRVarejoExit
              end
              object DBEditMGAtacado: TEvDBNumEdit
                Left = 370
                Top = 356
                Width = 110
                Height = 21
                DataField = 'NOCIN2MGVENDA2'
                DataSource = DSTemplate
                Decimals = 2
                EnabledBtn = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Glyph.Data = {
                  E6020000424DE60200000000000042000000280000001A0000000D0000000100
                  100003000000A402000000000000000000000000000000000000007C0000E003
                  00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                  EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                  EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                  FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                  FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                  FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                  FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                  FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                  EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                  FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                  070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                  EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                  FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5E}
                ParentFont = False
                ShowButton = False
                ShowSeparator = True
                TabOrder = 11
                OnEnter = DBEditMGAtacadoEnter
                OnExit = DBEditMGAtacadoExit
              end
              object DBEditVlrAtacado: TEvDBNumEdit
                Left = 673
                Top = 355
                Width = 103
                Height = 21
                Color = clWhite
                DataField = 'NOCIN2VLRVENDA2'
                DataSource = DSTemplate
                Decimals = 2
                EnabledBtn = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Glyph.Data = {
                  E6020000424DE60200000000000042000000280000001A0000000D0000000100
                  100003000000A402000000000000000000000000000000000000007C0000E003
                  00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                  EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                  EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                  FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                  FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                  FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                  FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                  FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                  EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                  FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                  070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                  EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                  FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5E}
                ParentFont = False
                ShowButton = False
                ShowSeparator = True
                TabOrder = 13
                OnEnter = DBEditVlrAtacadoEnter
                OnExit = DBEditVlrAtacadoExit
              end
              object Panel4: TPanel
                Left = 362
                Top = 291
                Width = 414
                Height = 17
                BevelWidth = 2
                BorderWidth = 1
                Caption = 'Novos Valores de Venda'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 14
              end
              object Panel6: TPanel
                Left = 11
                Top = 291
                Width = 338
                Height = 17
                BevelWidth = 2
                BorderWidth = 1
                Caption = 'Informa'#231#245'es Atuais'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 15
              end
              object DBEdit11: TDBEdit
                Left = 17
                Top = 322
                Width = 90
                Height = 19
                TabStop = False
                BevelOuter = bvRaised
                BorderStyle = bsNone
                Color = 12572888
                Ctl3D = False
                DataField = 'MargemLucro'
                DataSource = DSTemplate
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentCtl3D = False
                ParentFont = False
                ReadOnly = True
                TabOrder = 16
              end
              object DBEdit2: TDBEdit
                Left = 239
                Top = 322
                Width = 107
                Height = 19
                TabStop = False
                BevelOuter = bvRaised
                BorderStyle = bsNone
                Color = 12572888
                Ctl3D = False
                DataField = 'ValorVendaAtual'
                DataSource = DSTemplate
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentCtl3D = False
                ParentFont = False
                ReadOnly = True
                TabOrder = 17
              end
              object DBEdit22: TDBEdit
                Left = 18
                Top = 356
                Width = 90
                Height = 19
                TabStop = False
                BevelOuter = bvRaised
                BorderStyle = bsNone
                Color = 12572888
                Ctl3D = False
                DataField = 'MargemLucro2'
                DataSource = DSTemplate
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentCtl3D = False
                ParentFont = False
                ReadOnly = True
                TabOrder = 18
              end
              object DBEdit23: TDBEdit
                Left = 239
                Top = 356
                Width = 107
                Height = 19
                TabStop = False
                BevelOuter = bvRaised
                BorderStyle = bsNone
                Color = 12572888
                Ctl3D = False
                DataField = 'ValorVendaAtual2'
                DataSource = DSTemplate
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentCtl3D = False
                ParentFont = False
                ReadOnly = True
                TabOrder = 19
              end
              object Panel7: TPanel
                Left = 353
                Top = 292
                Width = 4
                Height = 86
                TabOrder = 20
              end
              object DBEditTotalItem: TEvDBNumEdit
                Left = 626
                Top = 65
                Width = 155
                Height = 23
                TabStop = False
                BorderStyle = bsNone
                Color = 12572888
                Ctl3D = True
                DataField = 'TotalItemCalc'
                DataSource = DSTemplate
                Decimals = 2
                EnabledBtn = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clRed
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Glyph.Data = {
                  E6020000424DE60200000000000042000000280000001A0000000D0000000100
                  100003000000A402000000000000000000000000000000000000007C0000E003
                  00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                  EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                  EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                  FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                  FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                  FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                  FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                  FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                  EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                  FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                  070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                  EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                  FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5E}
                ParentCtl3D = False
                ParentFont = False
                ReadOnly = True
                ShowButton = False
                ShowSeparator = True
                TabOrder = 21
              end
              object DBEdit5: TDBEdit
                Left = 131
                Top = 322
                Width = 95
                Height = 19
                TabStop = False
                BevelOuter = bvRaised
                BorderStyle = bsNone
                Color = 12572888
                Ctl3D = False
                DataField = 'MargemLucroReal'
                DataSource = DSTemplate
                Font.Charset = ANSI_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentCtl3D = False
                ParentFont = False
                ReadOnly = True
                TabOrder = 22
              end
              object DBEdit8: TDBEdit
                Left = 132
                Top = 356
                Width = 95
                Height = 19
                TabStop = False
                BevelOuter = bvRaised
                BorderStyle = bsNone
                Color = 12572888
                Ctl3D = False
                DataField = 'MargemLucroReal2'
                DataSource = DSTemplate
                Font.Charset = ANSI_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentCtl3D = False
                ParentFont = False
                ReadOnly = True
                TabOrder = 23
              end
              object edtMargemReal: TCurrencyEdit
                Left = 488
                Top = 321
                Width = 86
                Height = 21
                AutoSize = False
                Color = clBtnFace
                DisplayFormat = ',0.00;-,0.00'
                Enabled = False
                TabOrder = 24
              end
              object edtMargemReal2: TCurrencyEdit
                Left = 488
                Top = 356
                Width = 86
                Height = 21
                AutoSize = False
                Color = clBtnFace
                DisplayFormat = ',0.00;-,0.00'
                Enabled = False
                TabOrder = 25
              end
              object edtSimulaMargem: TCurrencyEdit
                Left = 580
                Top = 321
                Width = 83
                Height = 21
                AutoSize = False
                DisplayFormat = ',0.00;-,0.00'
                TabOrder = 9
                OnEnter = edtSimulaMargemEnter
                OnExit = edtSimulaMargemExit
              end
              object edtSimulaMargem2: TCurrencyEdit
                Left = 580
                Top = 356
                Width = 83
                Height = 21
                AutoSize = False
                DisplayFormat = ',0.00;-,0.00'
                TabOrder = 12
                OnEnter = edtSimulaMargem2Enter
                OnExit = edtSimulaMargem2Exit
              end
              object PageControl1: TPageControl
                Left = 2
                Top = 140
                Width = 785
                Height = 133
                ActivePage = TabSheet1
                TabIndex = 0
                TabOrder = 7
                object TabSheet1: TTabSheet
                  Caption = 'ICMS'
                  object Label61: TLabel
                    Left = 590
                    Top = 13
                    Width = 45
                    Height = 13
                    Caption = '% ICMS'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label62: TLabel
                    Left = 411
                    Top = 14
                    Width = 88
                    Height = 13
                    Caption = 'Base Calc. ICMS'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label63: TLabel
                    Left = 658
                    Top = 14
                    Width = 61
                    Height = 13
                    Caption = 'Valor ICMS'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label71: TLabel
                    Left = 507
                    Top = 14
                    Width = 65
                    Height = 13
                    Caption = '% Redu'#231#227'o'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label7: TLabel
                    Left = 5
                    Top = 14
                    Width = 108
                    Height = 13
                    Caption = 'Origem Mercadoria'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label43: TLabel
                    Left = 124
                    Top = 14
                    Width = 108
                    Height = 13
                    Caption = 'Situa'#231#227'o Tribut'#225'ria'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label64: TLabel
                    Left = 590
                    Top = 54
                    Width = 61
                    Height = 13
                    Caption = '% Icms ST'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label65: TLabel
                    Left = 411
                    Top = 54
                    Width = 79
                    Height = 13
                    Caption = 'Base ICMS ST.'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label66: TLabel
                    Left = 658
                    Top = 54
                    Width = 78
                    Height = 13
                    Caption = 'Valor ICMS ST'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label40: TLabel
                    Left = 507
                    Top = 54
                    Width = 41
                    Height = 13
                    Caption = '% Red.'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label46: TLabel
                    Left = 310
                    Top = 55
                    Width = 95
                    Height = 13
                    Caption = '% Diferen'#231'a Icm'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object DBEdit14: TEvDBNumEdit
                    Left = 590
                    Top = 28
                    Width = 65
                    Height = 21
                    DataField = 'NOCIN3PERCICMS'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 4
                  end
                  object DBEdit15: TEvDBNumEdit
                    Left = 411
                    Top = 28
                    Width = 92
                    Height = 21
                    DataField = 'NOCIN2VBC'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 2
                    OnEnter = DBEdit15Enter
                  end
                  object DBEdit16: TEvDBNumEdit
                    Left = 658
                    Top = 28
                    Width = 95
                    Height = 21
                    DataField = 'NOCIN3VLRICMS'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 5
                  end
                  object EvDBNumEdit16: TEvDBNumEdit
                    Left = 507
                    Top = 28
                    Width = 79
                    Height = 21
                    DataField = 'NOCIN2PREDBC'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 3
                  end
                  object ComboOrigem: TRxDBComboBox
                    Left = 5
                    Top = 28
                    Width = 113
                    Height = 21
                    Style = csDropDownList
                    DataField = 'NOCA1CSTORIGEM'
                    DataSource = DSTemplate
                    EnableValues = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ItemHeight = 13
                    Items.Strings = (
                      '0-Nacional'
                      '1-Estrangeira(importa'#231#227'o direta)'
                      '2-Estrangeira(adquirida mercaso nacional)')
                    ParentFont = False
                    TabOrder = 0
                    Values.Strings = (
                      '0'
                      '1'
                      '2')
                  end
                  object ComboSitTrib: TRxDBComboBox
                    Left = 123
                    Top = 28
                    Width = 284
                    Height = 21
                    Style = csDropDownList
                    DataField = 'NOCIA3CSTICMS'
                    DataSource = DSTemplate
                    EnableValues = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ItemHeight = 13
                    Items.Strings = (
                      '00   - Tributada integralmente'
                      
                        '10   - Tributada e com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225 +
                        'ria'
                      '20   - Com redu'#231#227'o de base de c'#225'lculo'
                      
                        '30   - Isenta ou n'#227'o tributada e com cobran'#231'a do ICMS por substi' +
                        'tui'#231#227'o tribut'#225'ria'
                      '40   - Isenta'
                      '41   - N'#227'o tributada'
                      '50   - Suspens'#227'o'
                      '51   - Diferimento'
                      '60   - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria'
                      
                        '70   - Com redu'#231#227'o de base de c'#225'lculo e cobran'#231'a do ICMS por sub' +
                        'stitui'#231#227'o tribut'#225'ria'
                      '90   - Outros ')
                    ParentFont = False
                    ParentShowHint = False
                    ShowHint = False
                    TabOrder = 1
                    Values.Strings = (
                      '0'
                      '10'
                      '20'
                      '30'
                      '40'
                      '41'
                      '50'
                      '51'
                      '60'
                      '70'
                      '90')
                    OnExit = ComboSitTribExit
                  end
                  object DBEdtPercSubstTrib: TEvDBNumEdit
                    Left = 590
                    Top = 70
                    Width = 65
                    Height = 21
                    DataField = 'NOCIN2PERCSUBST'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 9
                    OnExit = DBEdtPercSubstTribExit
                  end
                  object DBEdit18: TEvDBNumEdit
                    Left = 411
                    Top = 70
                    Width = 92
                    Height = 21
                    DataField = 'NOCIN2VBCST'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 7
                  end
                  object DBEdit19: TEvDBNumEdit
                    Left = 658
                    Top = 70
                    Width = 95
                    Height = 21
                    DataField = 'NOCIN3VLRSUBST'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 10
                  end
                  object EvDBNumEdit28: TEvDBNumEdit
                    Left = 507
                    Top = 70
                    Width = 79
                    Height = 21
                    DataField = 'NOCIN2PREDBCST'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 8
                  end
                  object DBEditDifICM: TEvDBNumEdit
                    Left = 310
                    Top = 70
                    Width = 95
                    Height = 21
                    Color = clWhite
                    DataField = 'NOCIN2PERCDIFICM'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 6
                    OnExit = DBEditDifICMExit
                  end
                  object Button5: TButton
                    Left = 757
                    Top = 87
                    Width = 19
                    Height = 16
                    Caption = '.>'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 11
                    OnClick = Button4Click
                  end
                end
                object TabSheet2: TTabSheet
                  Caption = 'IPI'
                  ImageIndex = 1
                  object Label67: TLabel
                    Left = 518
                    Top = 9
                    Width = 33
                    Height = 13
                    Caption = '% IPI'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label68: TLabel
                    Left = 652
                    Top = 52
                    Width = 49
                    Height = 13
                    Caption = 'Valor IPI'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label47: TLabel
                    Left = 2
                    Top = 9
                    Width = 203
                    Height = 13
                    Caption = 'C'#243'digo da Situa'#231#227'o Tribut'#225'ria do IPI'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label78: TLabel
                    Left = 420
                    Top = 9
                    Width = 76
                    Height = 13
                    Caption = 'Base Calc. IPI'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label79: TLabel
                    Left = 575
                    Top = 9
                    Width = 65
                    Height = 13
                    Caption = 'Quant. Trib.'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label80: TLabel
                    Left = 653
                    Top = 9
                    Width = 62
                    Height = 13
                    Caption = 'R$ por Und'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object edtPercIPI: TEvDBNumEdit
                    Left = 516
                    Top = 26
                    Width = 54
                    Height = 21
                    DataField = 'NOCIN3PERCIPI'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 2
                    OnExit = edtPercIPIExit
                  end
                  object edtValorIPI: TEvDBNumEdit
                    Left = 652
                    Top = 66
                    Width = 89
                    Height = 21
                    DataField = 'NOCIN3VLRIPI'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 5
                  end
                  object cmbCSTIPI: TRxDBComboBox
                    Left = 1
                    Top = 26
                    Width = 416
                    Height = 21
                    Style = csDropDownList
                    DataField = 'NOCA3CSTIPI'
                    DataSource = DSTemplate
                    EnableValues = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ItemHeight = 13
                    Items.Strings = (
                      '00-Entrada c/ recup. de cr'#233'dito'
                      '01-Entrada tributada com al'#237'quota zero'
                      '02-Entrada isenta'
                      '03-Entrada n'#227'o-tributada'
                      '04-Entrada imune'
                      '05-Entrada com suspens'#227'o'
                      '49-Outras entradas')
                    ParentFont = False
                    ParentShowHint = False
                    ShowHint = False
                    TabOrder = 0
                    Values.Strings = (
                      '00'
                      '01'
                      '02'
                      '03'
                      '04'
                      '05'
                      '49')
                    OnChange = cmbCSTIPIChange
                  end
                  object edtBaseIPI: TEvDBNumEdit
                    Left = 420
                    Top = 26
                    Width = 92
                    Height = 21
                    DataField = 'NOCIN2VBCIPI'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 1
                    OnEnter = edtBaseIPIEnter
                  end
                  object edtQtdIPI: TEvDBNumEdit
                    Left = 573
                    Top = 26
                    Width = 74
                    Height = 21
                    DataField = 'NOCN4QTDIPI'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 3
                    OnExit = edtQtdIPIExit
                  end
                  object edtIPIreal: TEvDBNumEdit
                    Left = 651
                    Top = 26
                    Width = 88
                    Height = 21
                    DataField = 'NOCN4UNDIPI'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 4
                    OnExit = edtQtdIPIExit
                  end
                  object Button4: TButton
                    Left = 757
                    Top = 89
                    Width = 19
                    Height = 16
                    Caption = '.>'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 6
                    OnClick = Button4Click
                  end
                end
                object TabSheet3: TTabSheet
                  Caption = 'PIS'
                  ImageIndex = 2
                  object Label18: TLabel
                    Left = 516
                    Top = 9
                    Width = 35
                    Height = 13
                    Caption = '% PIS'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Visible = False
                  end
                  object Label19: TLabel
                    Left = 422
                    Top = 9
                    Width = 49
                    Height = 13
                    Caption = 'Base PIS'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Visible = False
                  end
                  object Label20: TLabel
                    Left = 646
                    Top = 54
                    Width = 51
                    Height = 13
                    Caption = 'Valor PIS'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Visible = False
                  end
                  object Label118: TLabel
                    Left = 2
                    Top = 9
                    Width = 205
                    Height = 13
                    Caption = 'C'#243'digo da Situa'#231#227'o Tribut'#225'ria do PIS'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label22: TLabel
                    Left = 570
                    Top = 9
                    Width = 65
                    Height = 13
                    Caption = 'Quant. Trib.'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Visible = False
                  end
                  object Label32: TLabel
                    Left = 648
                    Top = 9
                    Width = 62
                    Height = 13
                    Caption = 'R$ por Und'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Visible = False
                  end
                  object edtPercPis: TEvDBNumEdit
                    Left = 514
                    Top = 24
                    Width = 50
                    Height = 21
                    DataField = 'NOCIN2PERCPIS'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 2
                    Visible = False
                    OnExit = edtPercPisExit
                  end
                  object edtBasePis: TEvDBNumEdit
                    Left = 420
                    Top = 24
                    Width = 90
                    Height = 21
                    DataField = 'NOCIN2BASEPIS'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 1
                    Visible = False
                  end
                  object edtValorPis: TEvDBNumEdit
                    Left = 646
                    Top = 70
                    Width = 86
                    Height = 21
                    DataField = 'NOCIN2VLRPIS'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 5
                    Visible = False
                  end
                  object cmbCSTCofins: TRxDBComboBox
                    Left = 1
                    Top = 24
                    Width = 416
                    Height = 21
                    Style = csDropDownList
                    DataField = 'NOCA3CSTPIS'
                    DataSource = DSTemplate
                    EnableValues = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ItemHeight = 13
                    Items.Strings = (
                      
                        '50 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a' +
                        ' Receita Tributada no Mercado Interno;'
                      
                        '51 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a' +
                        ' Receita N'#227'o Tributada no Mercado Interno ;'
                      
                        '52 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a' +
                        ' Receita de Exporta'#231#227'o;'
                      
                        '53 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tribu' +
                        'tadas e N'#227'o-Tributadas no Mercado Interno;'
                      
                        '54 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tribu' +
                        'tadas no Mercado Interno e de Exporta'#231#227'o ;'
                      
                        '55 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas N'#227'o-T' +
                        'ributadas no Mercado Interno e de Exporta'#231#227'o;'
                      
                        '56 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tribu' +
                        'tadas e N'#227'o-Tributadas no Mercado Interno, e de Exporta'#231#227'o;'
                      
                        '60 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
                        'vamente a Receita Tributada no Mercado Interno;'
                      
                        '61 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
                        'vamente a Receita N'#227'o Tributada no Mercado Interno;'
                      
                        '62 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
                        'vamente a Receita de Exporta'#231#227'o;'
                      
                        '63 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Recei' +
                        'tas Tributadas e N'#227'o-Tributadas no Mercado Interno;'
                      
                        '64 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Recei' +
                        'tas Tributadas no Mercado Interno e de Exporta'#231#227'o;'
                      
                        '65 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Recei' +
                        'tas N'#227'o-Tributadas no Mercado Interno e de Exporta'#231#227'o;'
                      
                        '66 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Recei' +
                        'tas Tributadas e N'#227'o-Tributadas no Mercado Interno, e de Exporta' +
                        #231#227'o;'
                      '67 - Cr'#233'dito Presumido - Outras Opera'#231#245'es;'
                      '70 - Opera'#231#227'o de Aquisi'#231#227'o sem Direito a Cr'#233'dito;'
                      '71 - Opera'#231#227'o de Aquisi'#231#227'o com Isen'#231#227'o;'
                      '72 - Opera'#231#227'o de Aquisi'#231#227'o com Suspens'#227'o;'
                      '73 - Opera'#231#227'o de Aquisi'#231#227'o a Al'#237'quota Zero;'
                      '74 - Opera'#231#227'o de Aquisi'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o;'
                      '75 - Opera'#231#227'o de Aquisi'#231#227'o por Substitui'#231#227'o Tribut'#225'ria;'
                      '98 - Outras Opera'#231#245'es de Entrada;'
                      '99 - Outras Opera'#231#245'es;')
                    ParentFont = False
                    ParentShowHint = False
                    ShowHint = False
                    TabOrder = 0
                    Values.Strings = (
                      '50'
                      '51'
                      '52'
                      '53'
                      '54'
                      '55'
                      '56'
                      '60'
                      '61'
                      '62'
                      '63'
                      '64'
                      '65'
                      '66'
                      '67'
                      '70'
                      '71'
                      '72'
                      '73'
                      '74'
                      '75'
                      '98'
                      '99')
                    OnChange = cmbCSTCofinsChange
                  end
                  object edtPISQTD: TEvDBNumEdit
                    Left = 568
                    Top = 24
                    Width = 74
                    Height = 21
                    DataField = 'NOCN4PISQTD'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 3
                    Visible = False
                    OnExit = edtPISQTDExit
                  end
                  object edtPISReal: TEvDBNumEdit
                    Left = 646
                    Top = 24
                    Width = 88
                    Height = 21
                    DataField = 'NOCN4PISREAL'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 4
                    Visible = False
                    OnExit = edtPISQTDExit
                  end
                  object Button6: TButton
                    Left = 757
                    Top = 89
                    Width = 19
                    Height = 16
                    Caption = '.>'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 6
                    OnClick = Button4Click
                  end
                end
                object TabSheet4: TTabSheet
                  Caption = 'COFINS'
                  ImageIndex = 3
                  object Label10: TLabel
                    Left = 514
                    Top = 8
                    Width = 50
                    Height = 13
                    Caption = '% Cofins'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Visible = False
                  end
                  object Label16: TLabel
                    Left = 421
                    Top = 8
                    Width = 64
                    Height = 13
                    Caption = 'Base Cofins'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Visible = False
                  end
                  object Label17: TLabel
                    Left = 645
                    Top = 47
                    Width = 66
                    Height = 13
                    Caption = 'Valor Cofins'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Visible = False
                  end
                  object Label117: TLabel
                    Left = 0
                    Top = 8
                    Width = 226
                    Height = 13
                    Caption = 'C'#243'digo da Situa'#231#227'o Tribut'#225'ria do COFINS'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label81: TLabel
                    Left = 572
                    Top = 8
                    Width = 65
                    Height = 13
                    Caption = 'Quant. Trib.'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Visible = False
                  end
                  object Label82: TLabel
                    Left = 647
                    Top = 8
                    Width = 62
                    Height = 13
                    Caption = 'R$ por Und'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Visible = False
                  end
                  object edtPercCofins: TEvDBNumEdit
                    Left = 513
                    Top = 24
                    Width = 52
                    Height = 21
                    DataField = 'NOCIN2PERCCOFINS'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 2
                    Visible = False
                    OnExit = edtPercCofinsExit
                  end
                  object edtBaseCofins: TEvDBNumEdit
                    Left = 419
                    Top = 25
                    Width = 90
                    Height = 21
                    DataField = 'NOCIN2BASECOFINS'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 1
                    Visible = False
                  end
                  object edtValorCofins: TEvDBNumEdit
                    Left = 645
                    Top = 63
                    Width = 88
                    Height = 21
                    DataField = 'NOCIN2VLRCOFINS'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 5
                    Visible = False
                  end
                  object RxDBComboBox9: TRxDBComboBox
                    Left = 1
                    Top = 26
                    Width = 415
                    Height = 21
                    Style = csDropDownList
                    DataField = 'NOCA3CSTCOFINS'
                    DataSource = DSTemplate
                    EnableValues = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ItemHeight = 13
                    Items.Strings = (
                      
                        '50 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a' +
                        ' Receita Tributada no Mercado Interno;'
                      
                        '51 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a' +
                        ' Receita N'#227'o Tributada no Mercado Interno ;'
                      
                        '52 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a' +
                        ' Receita de Exporta'#231#227'o;'
                      
                        '53 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tribu' +
                        'tadas e N'#227'o-Tributadas no Mercado Interno;'
                      
                        '54 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tribu' +
                        'tadas no Mercado Interno e de Exporta'#231#227'o ;'
                      
                        '55 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas N'#227'o-T' +
                        'ributadas no Mercado Interno e de Exporta'#231#227'o;'
                      
                        '56 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tribu' +
                        'tadas e N'#227'o-Tributadas no Mercado Interno, e de Exporta'#231#227'o;'
                      
                        '60 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
                        'vamente a Receita Tributada no Mercado Interno;'
                      
                        '61 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
                        'vamente a Receita N'#227'o Tributada no Mercado Interno;'
                      
                        '62 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
                        'vamente a Receita de Exporta'#231#227'o;'
                      
                        '63 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Recei' +
                        'tas Tributadas e N'#227'o-Tributadas no Mercado Interno;'
                      
                        '64 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Recei' +
                        'tas Tributadas no Mercado Interno e de Exporta'#231#227'o;'
                      
                        '65 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Recei' +
                        'tas N'#227'o-Tributadas no Mercado Interno e de Exporta'#231#227'o;'
                      
                        '66 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Recei' +
                        'tas Tributadas e N'#227'o-Tributadas no Mercado Interno, e de Exporta' +
                        #231#227'o;'
                      '67 - Cr'#233'dito Presumido - Outras Opera'#231#245'es;'
                      '70 - Opera'#231#227'o de Aquisi'#231#227'o sem Direito a Cr'#233'dito;'
                      '71 - Opera'#231#227'o de Aquisi'#231#227'o com Isen'#231#227'o;'
                      '72 - Opera'#231#227'o de Aquisi'#231#227'o com Suspens'#227'o;'
                      '73 - Opera'#231#227'o de Aquisi'#231#227'o a Al'#237'quota Zero;'
                      '74 - Opera'#231#227'o de Aquisi'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o;'
                      '75 - Opera'#231#227'o de Aquisi'#231#227'o por Substitui'#231#227'o Tribut'#225'ria;'
                      '98 - Outras Opera'#231#245'es de Entrada;'
                      '99 - Outras Opera'#231#245'es;')
                    ParentFont = False
                    ParentShowHint = False
                    ShowHint = False
                    TabOrder = 0
                    Values.Strings = (
                      '50'
                      '51'
                      '52'
                      '53'
                      '54'
                      '55'
                      '56'
                      '60'
                      '61'
                      '62'
                      '63'
                      '64'
                      '65'
                      '66'
                      '67'
                      '70'
                      '71'
                      '72'
                      '73'
                      '74'
                      '75'
                      '98'
                      '99')
                    OnChange = RxDBComboBox9Change
                  end
                  object edtCofinsQTD: TEvDBNumEdit
                    Left = 570
                    Top = 24
                    Width = 70
                    Height = 21
                    DataField = 'NOCN4COFINSQTD'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 3
                    Visible = False
                    OnExit = edtCofinsQTDExit
                  end
                  object edtCofinsReal: TEvDBNumEdit
                    Left = 645
                    Top = 24
                    Width = 88
                    Height = 21
                    DataField = 'NOCN4COFINSREAL'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 4
                    Visible = False
                    OnExit = edtCofinsQTDExit
                  end
                  object Button7: TButton
                    Left = 759
                    Top = 89
                    Width = 19
                    Height = 16
                    Caption = '.>'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 6
                    OnClick = Button4Click
                  end
                end
                object TabSheet5: TTabSheet
                  Caption = 'ISSQN'
                  ImageIndex = 4
                  object Label69: TLabel
                    Left = 20
                    Top = 12
                    Width = 50
                    Height = 13
                    Caption = '% ISSQN'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label70: TLabel
                    Left = 165
                    Top = 12
                    Width = 66
                    Height = 13
                    Caption = 'Valor ISSQN'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label77: TLabel
                    Left = 84
                    Top = 12
                    Width = 64
                    Height = 13
                    Caption = 'Base ISSQN'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object EvDBNumEdit13: TEvDBNumEdit
                    Left = 18
                    Top = 26
                    Width = 59
                    Height = 21
                    DataField = 'NOCIN2PERCISS'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 0
                  end
                  object EvDBNumEdit15: TEvDBNumEdit
                    Left = 163
                    Top = 26
                    Width = 94
                    Height = 21
                    DataField = 'NOCIN2VLRISS'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 2
                  end
                  object EvDBNumEdit24: TEvDBNumEdit
                    Left = 82
                    Top = 26
                    Width = 75
                    Height = 21
                    DataField = 'NOCIN2BASEISS'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 1
                  end
                  object Button8: TButton
                    Left = 758
                    Top = 89
                    Width = 19
                    Height = 16
                    Caption = '.>'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 3
                    OnClick = Button4Click
                  end
                end
                object TabSheet6: TTabSheet
                  Caption = 'Simples Nacional'
                  ImageIndex = 5
                  object Label14: TLabel
                    Left = 3
                    Top = 11
                    Width = 118
                    Height = 13
                    Caption = '% Cred. Simples Nac.'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label15: TLabel
                    Left = 128
                    Top = 11
                    Width = 124
                    Height = 13
                    Caption = 'Valor ICMS Simpl. Nac.'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label75: TLabel
                    Left = 410
                    Top = 11
                    Width = 121
                    Height = 13
                    Caption = 'Valor ICMS  ST Retido'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label76: TLabel
                    Left = 258
                    Top = 11
                    Width = 132
                    Height = 13
                    Caption = 'Base C. ICMS  ST Retido'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object EvDBNumEdit25: TEvDBNumEdit
                    Left = 3
                    Top = 25
                    Width = 123
                    Height = 21
                    DataField = 'NOCIN2PCREDSN'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 0
                  end
                  object EvDBNumEdit26: TEvDBNumEdit
                    Left = 128
                    Top = 25
                    Width = 126
                    Height = 21
                    DataField = 'NOCIN2VCREDICMSSN'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 1
                  end
                  object EvDBNumEdit31: TEvDBNumEdit
                    Left = 410
                    Top = 25
                    Width = 126
                    Height = 21
                    DataField = 'NOCIN2VICMSSTRET'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 3
                  end
                  object EvDBNumEdit32: TEvDBNumEdit
                    Left = 258
                    Top = 25
                    Width = 147
                    Height = 21
                    DataField = 'NOCIN2VBCSTRET'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 2
                  end
                  object Button9: TButton
                    Left = 758
                    Top = 89
                    Width = 19
                    Height = 16
                    Caption = '.>'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 4
                    OnClick = Button4Click
                  end
                end
                object TabSheet7: TTabSheet
                  Caption = 'Outros'
                  ImageIndex = 6
                  object Label72: TLabel
                    Left = 83
                    Top = 12
                    Width = 48
                    Height = 13
                    Caption = 'R$ Frete'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label73: TLabel
                    Left = 335
                    Top = 11
                    Width = 72
                    Height = 13
                    Caption = 'Valor Seguro'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label74: TLabel
                    Left = 251
                    Top = 11
                    Width = 72
                    Height = 13
                    Caption = 'Outras Desp.'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label57: TLabel
                    Left = 13
                    Top = 12
                    Width = 46
                    Height = 13
                    Caption = '% Frete'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label45: TLabel
                    Left = 171
                    Top = 11
                    Width = 47
                    Height = 13
                    Caption = '% Desp.'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object EvDBNumEdit17: TEvDBNumEdit
                    Left = 83
                    Top = 26
                    Width = 84
                    Height = 21
                    DataField = 'NOCIN3VLRFRETE'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 1
                  end
                  object EvDBNumEdit18: TEvDBNumEdit
                    Left = 334
                    Top = 25
                    Width = 77
                    Height = 21
                    DataField = 'NOCIN2VLRSEGURO'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 4
                  end
                  object EvDBNumEdit19: TEvDBNumEdit
                    Left = 250
                    Top = 25
                    Width = 78
                    Height = 21
                    DataField = 'NOCIN2VLRDESPESAS'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 3
                  end
                  object EvDBNumEdit14: TEvDBNumEdit
                    Left = 9
                    Top = 26
                    Width = 68
                    Height = 21
                    DataField = 'NOCIN3PERCFRETE'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 0
                    OnExit = EvDBNumEdit14Exit
                  end
                  object DBEditPercDespesas: TEvDBNumEdit
                    Left = 172
                    Top = 25
                    Width = 73
                    Height = 21
                    Color = clWhite
                    DataField = 'NOCIN2PERCDESP'
                    DataSource = DSTemplate
                    Decimals = 2
                    EnabledBtn = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      E6020000424DE60200000000000042000000280000001A0000000D0000000100
                      100003000000A402000000000000000000000000000000000000007C0000E003
                      00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                      EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                      EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                      FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                      FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                      FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                      FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                      FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                      EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                      FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                      070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                      EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                      FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                      FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                      FF5EFF5EFF5EFF5EFF5E}
                    ParentFont = False
                    ShowButton = False
                    ShowSeparator = True
                    TabOrder = 2
                    OnExit = DBEditPercDespesasExit
                  end
                end
              end
              object DBLookupComboBox1: TDBLookupComboBox
                Left = 3
                Top = 104
                Width = 73
                Height = 21
                DataField = 'CFOPA5CODAUX'
                DataSource = DSTemplate
                KeyField = 'CFOPA5COD'
                ListField = 'CFOPA5COD'
                ListSource = dsSQLCFOP
                TabOrder = 5
              end
              object DBLookupComboBox2: TDBLookupComboBox
                Left = 79
                Top = 104
                Width = 702
                Height = 21
                DataField = 'CFOPA5CODAUX'
                DataSource = DSTemplate
                KeyField = 'CFOPA5COD'
                ListField = 'CFOPA60DESCR'
                ListSource = dsSQLCFOP
                TabOrder = 6
              end
              object EvDBNumEdit6: TEvDBNumEdit
                Left = 402
                Top = 62
                Width = 73
                Height = 21
                Color = clWhite
                DataField = 'NOCIN3PERCDESC'
                DataSource = DSTemplate
                Decimals = 2
                EnabledBtn = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  E6020000424DE60200000000000042000000280000001A0000000D0000000100
                  100003000000A402000000000000000000000000000000000000007C0000E003
                  00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                  EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                  EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                  FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                  FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                  FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                  FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                  FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                  EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                  FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                  070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                  EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                  FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5E}
                ParentFont = False
                ShowButton = False
                ShowSeparator = True
                TabOrder = 3
                OnExit = DBEditPercDespesasExit
              end
              object EvDBNumEdit7: TEvDBNumEdit
                Left = 482
                Top = 62
                Width = 107
                Height = 21
                DataField = 'NOCIN3VLRDESC'
                DataSource = DSTemplate
                Decimals = 2
                EnabledBtn = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  E6020000424DE60200000000000042000000280000001A0000000D0000000100
                  100003000000A402000000000000000000000000000000000000007C0000E003
                  00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                  EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                  EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                  FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                  FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                  FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                  FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                  FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                  EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                  FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                  070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                  EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                  FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5E}
                ParentFont = False
                ShowButton = False
                ShowSeparator = True
                TabOrder = 4
              end
              object DBEditVlrCompraEmbal: TRxDBCalcEdit
                Left = 247
                Top = 62
                Width = 147
                Height = 21
                DataField = 'NOCIN3VLREMBAL'
                DataSource = DSTemplate
                DecimalPlaces = 7
                DisplayFormat = ',0.00#####'
                NumGlyphs = 2
                TabOrder = 2
              end
              object ComboUnidade: TRxDBLookupCombo
                Left = 5
                Top = 17
                Width = 336
                Height = 21
                DropDownCount = 8
                DisplayAllFields = True
                DataField = 'UNIDICOD'
                DataSource = DSTemplate
                DisplayEmpty = '...'
                LookupField = 'UNIDICOD'
                LookupDisplay = 'UNIDA15DESCR'
                LookupSource = dsSQLUnidade
                TabOrder = 0
                OnExit = ComboUnidadeExit
              end
              object EvDBNumEdit12: TEvDBNumEdit
                Left = 4
                Top = 62
                Width = 109
                Height = 21
                TabStop = False
                Color = clBtnFace
                DataField = 'NOCIN3CAPEMBAL'
                DataSource = DSTemplate
                Decimals = 5
                EnabledBtn = True
                Glyph.Data = {
                  E6020000424DE60200000000000042000000280000001A0000000D0000000100
                  100003000000A402000000000000000000000000000000000000007C0000E003
                  00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                  EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                  EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                  FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                  FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                  FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                  FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                  FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                  EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                  FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                  070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                  EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                  FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5E}
                ReadOnly = True
                ShowButton = False
                ShowSeparator = True
                TabOrder = 26
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 0
            Width = 973
            Height = 36
            ParentCtl3D = False
            TabOrder = 0
            object Label3: TLabel
              Left = 8
              Top = 4
              Width = 22
              Height = 13
              Caption = 'Ano'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 53
              Top = 4
              Width = 29
              Height = 13
              Caption = 'S'#233'rie'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label12: TLabel
              Left = 381
              Top = 4
              Width = 80
              Height = 13
              Caption = 'Vlr Total Itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label13: TLabel
              Left = 567
              Top = 4
              Width = 76
              Height = 13
              Caption = 'Vlr Total Nota'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label28: TLabel
              Left = 475
              Top = 4
              Width = 80
              Height = 13
              Caption = 'Vlr Total Desc.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LabelFornEmpCli: TLabel
              Left = 90
              Top = 4
              Width = 64
              Height = 13
              Caption = 'Fornecedor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit3: TDBEdit
              Left = 8
              Top = 19
              Width = 39
              Height = 15
              BorderStyle = bsNone
              Color = 12572888
              Ctl3D = False
              DataField = 'NOCPA4ANO'
              DataSource = DSMasterTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit4: TDBEdit
              Left = 53
              Top = 19
              Width = 32
              Height = 15
              BorderStyle = bsNone
              Color = 12572888
              Ctl3D = False
              DataField = 'NOCPA5SERIE'
              DataSource = DSMasterTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
            end
            object EvDBNumEdit1: TEvDBNumEdit
              Left = 381
              Top = 19
              Width = 85
              Height = 15
              TabStop = False
              BorderStyle = bsNone
              Color = 12572888
              Ctl3D = True
              DataField = 'NOCPN3TOTITENS'
              DataSource = DSMasterTemplate
              Decimals = 2
              EnabledBtn = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Glyph.Data = {
                E6020000424DE60200000000000042000000280000001A0000000D0000000100
                100003000000A402000000000000000000000000000000000000007C0000E003
                00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5E}
              ParentCtl3D = False
              ParentFont = False
              ShowButton = False
              ShowSeparator = True
              TabOrder = 2
            end
            object EvDBNumEdit2: TEvDBNumEdit
              Left = 475
              Top = 19
              Width = 83
              Height = 15
              TabStop = False
              BorderStyle = bsNone
              Color = 12572888
              DataField = 'NOCPN3TOTDESC'
              DataSource = DSMasterTemplate
              Decimals = 2
              EnabledBtn = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Glyph.Data = {
                E6020000424DE60200000000000042000000280000001A0000000D0000000100
                100003000000A402000000000000000000000000000000000000007C0000E003
                00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5E}
              ParentFont = False
              ReadOnly = True
              ShowButton = False
              ShowSeparator = True
              TabOrder = 3
            end
            object DBEdit27: TDBEdit
              Left = 90
              Top = 19
              Width = 285
              Height = 15
              TabStop = False
              BorderStyle = bsNone
              Color = 12572888
              DataField = 'Descr_FornEmprCli'
              DataSource = DSMasterTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
            end
            object EvDBNumEdit5: TEvDBNumEdit
              Left = 566
              Top = 19
              Width = 83
              Height = 15
              TabStop = False
              BorderStyle = bsNone
              Color = 12572888
              Ctl3D = True
              DataField = 'NOCPN3VLRTOTNOTA'
              DataSource = DSMasterTemplate
              Decimals = 2
              EnabledBtn = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Glyph.Data = {
                E6020000424DE60200000000000042000000280000001A0000000D0000000100
                100003000000A402000000000000000000000000000000000000007C0000E003
                00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5E}
              ParentCtl3D = False
              ParentFont = False
              ShowButton = False
              ShowSeparator = True
              TabOrder = 5
            end
          end
          inherited PanelCodigoDescricao: TPanel
            Top = 36
            Width = 973
            Height = 140
            AutoSize = True
            TabOrder = 1
            object Label1: TLabel
              Left = 9
              Top = 0
              Width = 323
              Height = 13
              Caption = 'Procura por C'#243'digos ou pela Descri'#231#227'o ou  [F2 - Cadastro]'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object BtnProduto: TSpeedButton
              Left = 513
              Top = 12
              Width = 24
              Height = 23
              Hint = 'Acessa Produtos'
              Flat = True
              Glyph.Data = {
                E6000000424DE60000000000000076000000280000000E0000000E0000000100
                0400000000007000000000000000000000001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
                DD00DDDDDDDDDDD00D00DDDDDDDDDD000D00DDDDDDDDD000DD00DDDDDDDD000D
                DD00DD73000800DDDD00D70888800DDDDD00D38788888DDDDD00D07778880DDD
                DD00D07F77880DDDDD00D387F7783DDDDD00D70877807DDDDD00DD730037DDDD
                DD00DDDDDDDDDDDDDD00}
              ParentShowHint = False
              ShowHint = True
              OnClick = BtnProdutoClick
            end
            object LabelLote: TLabel
              Left = 481
              Top = 105
              Width = 50
              Height = 13
              Caption = 'Nro. Lote'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object ButtonLote: TSpeedButton
              Left = 629
              Top = 118
              Width = 23
              Height = 21
              Hint = 'Acessa Lotes'
              Flat = True
              Glyph.Data = {
                E6000000424DE60000000000000076000000280000000E0000000E0000000100
                0400000000007000000000000000000000001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
                DD00DDDDDDDDDDD00D00DDDDDDDDDD000D00DDDDDDDDD000DD00DDDDDDDD000D
                DD00DD73000800DDDD00D70888800DDDDD00D38788888DDDDD00D07778880DDD
                DD00D07F77880DDDDD00D387F7783DDDDD00D70877807DDDDD00DD730037DDDD
                DD00DDDDDDDDDDDDDD00}
              ParentShowHint = False
              ShowHint = True
              OnClick = ButtonLoteClick
            end
            object Label31: TLabel
              Left = 475
              Top = 38
              Width = 141
              Height = 13
              Caption = 'Refer'#234'ncia no Fabricante'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label27: TLabel
              Left = 9
              Top = 38
              Width = 191
              Height = 13
              Caption = 'Descri'#231#227'o do Produto Selecionado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LSaldo: TLabel
              Left = 117
              Top = 105
              Width = 78
              Height = 13
              Caption = 'Estoque Atual'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label5: TLabel
              Left = 9
              Top = 105
              Width = 91
              Height = 13
              Caption = 'Custo Unit Atual'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label41: TLabel
              Left = 624
              Top = 38
              Width = 15
              Height = 13
              Caption = 'UN'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 214
              Top = 105
              Width = 81
              Height = 13
              Caption = 'Novo Vlr.Custo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label49: TLabel
              Left = 393
              Top = 0
              Width = 63
              Height = 13
              Caption = 'Ref.F'#225'brica'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label50: TLabel
              Left = 377
              Top = 13
              Width = 13
              Height = 19
              Caption = '+'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label51: TLabel
              Left = 314
              Top = 105
              Width = 66
              Height = 13
              Caption = 'Icms Venda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object SpeedButton1: TSpeedButton
              Left = 540
              Top = 12
              Width = 114
              Height = 23
              Hint = 'Acessa Produtos'
              Caption = 'Compras e Vendas'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton1Click
            end
            object Label60: TLabel
              Left = 9
              Top = 74
              Width = 65
              Height = 13
              Caption = 'Tabela NCM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEditLote: TDBEdit
              Left = 477
              Top = 118
              Width = 151
              Height = 21
              DataField = 'LOTEA30NRO'
              DataSource = DSTemplate
              TabOrder = 7
              Visible = False
              OnExit = DBEditLoteExit
              OnKeyDown = DBEditLoteKeyDown
            end
            object DBEdit1: TDBEdit
              Left = 473
              Top = 51
              Width = 146
              Height = 25
              TabStop = False
              BevelOuter = bvRaised
              BorderStyle = bsNone
              Color = 12572888
              Ctl3D = False
              DataField = 'ReferenciaLookUp'
              DataSource = DSTemplate
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
            object SaldoAtual: TCurrencyEdit
              Left = 114
              Top = 118
              Width = 84
              Height = 21
              TabStop = False
              AutoSize = False
              BorderStyle = bsNone
              Color = 12572888
              Ctl3D = True
              DisplayFormat = '0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
            end
            object DBEdit21: TDBEdit
              Left = 623
              Top = 51
              Width = 29
              Height = 25
              TabStop = False
              BevelOuter = bvRaised
              BorderStyle = bsNone
              Color = 12572888
              Ctl3D = False
              DataField = 'UnidadeLookup'
              DataSource = DSTemplate
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
            object DBEdit28: TDBEdit
              Left = 10
              Top = 51
              Width = 456
              Height = 25
              TabStop = False
              BevelOuter = bvRaised
              BorderStyle = bsNone
              Color = 12572888
              Ctl3D = False
              DataField = 'ProdutoLookUp'
              DataSource = DSTemplate
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
            end
            object EvDBNumEdit4: TEvDBNumEdit
              Left = 213
              Top = 118
              Width = 84
              Height = 20
              TabStop = False
              BorderStyle = bsNone
              Color = 12572888
              Ctl3D = True
              DataField = 'NOCIN3VLRCUSTOMED'
              DataSource = DSTemplate
              Decimals = 5
              EnabledBtn = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Glyph.Data = {
                E6020000424DE60200000000000042000000280000001A0000000D0000000100
                100003000000A402000000000000000000000000000000000000007C0000E003
                00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5E}
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              ShowButton = False
              ShowSeparator = True
              TabOrder = 4
            end
            object EditReferencia: TEdit
              Left = 389
              Top = 13
              Width = 120
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 6
              OnKeyDown = EditReferenciaKeyDown
            end
            object EditCdProduto: TEdit
              Left = 6
              Top = 13
              Width = 371
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 5
              OnEnter = EditCdProdutoEnter
              OnKeyDown = EditCdProdutoKeyDown
            end
            object DBEdit7: TDBEdit
              Left = 315
              Top = 118
              Width = 147
              Height = 21
              TabStop = False
              BevelOuter = bvNone
              BorderStyle = bsNone
              Color = 12572888
              Ctl3D = True
              DataField = 'ICMVendaLookUp'
              DataSource = DSTemplate
              Font.Charset = ANSI_CHARSET
              Font.Color = clGreen
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 8
            end
            object EvDBNumEdit9: TEvDBNumEdit
              Left = 10
              Top = 120
              Width = 89
              Height = 20
              TabStop = False
              BorderStyle = bsNone
              Color = 12572888
              Ctl3D = True
              DataField = 'ValorCustoAtual'
              DataSource = DSTemplate
              Decimals = 5
              EnabledBtn = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clGreen
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Glyph.Data = {
                E6020000424DE60200000000000042000000280000001A0000000D0000000100
                100003000000A402000000000000000000000000000000000000007C0000E003
                00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5E}
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              ShowButton = False
              ShowSeparator = True
              TabOrder = 9
            end
            object DBEdit9: TDBEdit
              Left = 9
              Top = 86
              Width = 640
              Height = 18
              TabStop = False
              BevelOuter = bvNone
              BorderStyle = bsNone
              Color = 12572888
              Ctl3D = True
              DataField = 'NCMLookUp'
              DataSource = DSTemplate
              Font.Charset = ANSI_CHARSET
              Font.Color = clGreen
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 10
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object MnNumerosdeSerie: TMenuItem
      Caption = 'N'#250'mero(s) de S'#233'rie'
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    AfterDelete = SQLTemplateAfterDelete
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select'
      ' *'
      'From'
      '    NOTACOMPRAITEM'
      'Where'
      '    NOCPA13ID=:NOCPA13ID and '
      '    (%MFiltro)')
    ParamData = <
      item
        DataType = ftString
        Name = 'NOCPA13ID'
        ParamType = ptUnknown
      end>
    object SQLTemplateNOCPA13ID: TStringField
      Tag = 1
      FieldName = 'NOCPA13ID'
      Origin = 'DB.NOTACOMPRAITEM.NOCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateNOCIIITEM: TIntegerField
      Tag = 1
      DisplayLabel = 'Item Seq'
      FieldName = 'NOCIIITEM'
      Origin = 'DB.NOTACOMPRAITEM.NOCIIITEM'
    end
    object SQLTemplatePRODICOD: TIntegerField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PRODICOD'
      Origin = 'DB.NOTACOMPRAITEM.PRODICOD'
      OnChange = SQLTemplatePRODICODChange
    end
    object SQLTemplateNOCIN3QTDBONIF: TBCDField
      FieldName = 'NOCIN3QTDBONIF'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3QTDBONIF'
      DisplayFormat = '#,##0.000'
      Precision = 15
      Size = 3
    end
    object SQLTemplateNOCIN3CAPEMBAL: TBCDField
      ConstraintErrorMessage = '1'
      FieldName = 'NOCIN3CAPEMBAL'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3CAPEMBAL'
      OnChange = SQLTemplateNOCIN3CAPEMBALChange
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
      Precision = 15
      Size = 3
    end
    object SQLTemplateNOCIN3QTDEMBAL: TBCDField
      FieldName = 'NOCIN3QTDEMBAL'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3QTDEMBAL'
      OnChange = SQLTemplateNOCIN3QTDEMBALChange
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
      Precision = 15
      Size = 3
    end
    object SQLTemplateNOCIN3VLRDESC: TBCDField
      FieldName = 'NOCIN3VLRDESC'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLRDESC'
      OnChange = SQLTemplateNOCIN3VLRDESCChange
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateNOCIN3PERCDESC: TBCDField
      FieldName = 'NOCIN3PERCDESC'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3PERCDESC'
      OnChange = SQLTemplateNOCIN3PERCDESCChange
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateNOCIN3VLRICMS: TBCDField
      FieldName = 'NOCIN3VLRICMS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLRICMS'
      OnChange = SQLTemplateNOCIN3VLRICMSChange
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateNOCIN3PERCICMS: TBCDField
      FieldName = 'NOCIN3PERCICMS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3PERCICMS'
      OnChange = SQLTemplateNOCIN3PERCICMSChange
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateNOCIN3VLRSUBST: TBCDField
      FieldName = 'NOCIN3VLRSUBST'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLRSUBST'
      OnChange = SQLTemplateNOCIN3VLRSUBSTChange
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateNOCIN3VLRIPI: TBCDField
      FieldName = 'NOCIN3VLRIPI'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLRIPI'
      OnChange = SQLTemplateNOCIN3VLRIPIChange
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateNOCIN3PERCIPI: TBCDField
      FieldName = 'NOCIN3PERCIPI'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3PERCIPI'
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateNOCIN3VLRCUSTOMED: TBCDField
      FieldName = 'NOCIN3VLRCUSTOMED'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLRCUSTOMED'
      DisplayFormat = '#,##0.00000'
      EditFormat = '#,##0.00000'
      Precision = 15
      Size = 3
    end
    object SQLTemplateNOCIN3VLRFRETE: TBCDField
      FieldName = 'NOCIN3VLRFRETE'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLRFRETE'
      OnChange = SQLTemplateNOCIN3VLRFRETEChange
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.NOTACOMPRAITEM.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.NOTACOMPRAITEM.REGISTRO'
    end
    object SQLTemplateAgrupGradeLookUp: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'AgrupGradeLookUp'
      Visible = False
      Calculated = True
    end
    object SQLTemplateGradeCodLookUp: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'GradeCodLookUp'
      Visible = False
      Calculated = True
    end
    object SQLTemplateProdutoLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'ProdutoLookUp'
      Size = 60
      Calculated = True
    end
    object SQLTemplateTotalItemCalc: TBCDField
      FieldKind = fkCalculated
      FieldName = 'TotalItemCalc'
      Size = 3
      Calculated = True
    end
    object SQLTemplateCodAntigoLookup: TStringField
      FieldKind = fkCalculated
      FieldName = 'CodAntigoLookup'
      Visible = False
      Size = 15
      Calculated = True
    end
    object SQLTemplateReferenciaLookUp: TStringField
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'ReferenciaLookUp'
      Size = 60
      Calculated = True
    end
    object SQLTemplateValorCustoAtual: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorCustoAtual'
      DisplayFormat = '#,##0.00000'
      EditFormat = '#,##0.00000'
      Calculated = True
    end
    object SQLTemplateValorCustoMedAtual: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ValorCustoMedAtual'
      DisplayFormat = '#,##0.00000'
      EditFormat = '#,##0.00000'
      Calculated = True
    end
    object SQLTemplateMargemLucro: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'MargemLucro'
      DisplayFormat = '##0.00'
      Calculated = True
    end
    object SQLTemplateValorVendaAtual: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorVendaAtual'
      DisplayFormat = '##0.00'
      Calculated = True
    end
    object SQLTemplateMargemLucro2: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'MargemLucro2'
      DisplayFormat = '##0.00'
      Calculated = True
    end
    object SQLTemplateValorVendaAtual2: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorVendaAtual2'
      DisplayFormat = '##0.00'
      Calculated = True
    end
    object SQLTemplatePDCPA13ID: TStringField
      FieldName = 'PDCPA13ID'
      Origin = 'DB.NOTACOMPRAITEM.PDCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplatePCITIPOS: TIntegerField
      FieldName = 'PCITIPOS'
      Origin = 'DB.NOTACOMPRAITEM.PCITIPOS'
    end
    object SQLTemplateNOCIN3QTDEPED: TBCDField
      FieldName = 'NOCIN3QTDEPED'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3QTDEPED'
      DisplayFormat = '#,##0.000'
      Precision = 15
      Size = 3
    end
    object SQLTemplateNOCIN3TOTPED: TBCDField
      FieldName = 'NOCIN3TOTPED'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3TOTPED'
      DisplayFormat = '#,##0.000'
      Precision = 15
      Size = 3
    end
    object SQLTemplateLOTEA30NRO: TStringField
      FieldName = 'LOTEA30NRO'
      Origin = 'DB.NOTACOMPRAITEM.LOTEA30NRO'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateNOCIN2ITENSENVIADOS: TBCDField
      FieldName = 'NOCIN2ITENSENVIADOS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2ITENSENVIADOS'
      Precision = 15
      Size = 3
    end
    object SQLTemplateNOCIN2VLRCOMISSAO: TBCDField
      FieldName = 'NOCIN2VLRCOMISSAO'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2VLRCOMISSAO'
      Precision = 15
      Size = 2
    end
    object SQLTemplateQdteFator: TFloatField
      FieldKind = fkCalculated
      FieldName = 'QdteFator'
      Calculated = True
    end
    object SQLTemplateNOCIN2QTDENF: TBCDField
      FieldName = 'NOCIN2QTDENF'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2QTDENF'
      DisplayFormat = '#,##0.000'
      Precision = 15
      Size = 2
    end
    object SQLTemplateNOCIN2MGVENDA: TBCDField
      FieldName = 'NOCIN2MGVENDA'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2MGVENDA'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object SQLTemplateNOCIN2VLRVENDA: TBCDField
      FieldName = 'NOCIN2VLRVENDA'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2VLRVENDA'
      OnChange = SQLTemplateNOCIN2VLRVENDAChange
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object SQLTemplateNOCIN2MGVENDA2: TBCDField
      FieldName = 'NOCIN2MGVENDA2'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2MGVENDA2'
      Precision = 15
      Size = 2
    end
    object SQLTemplateNOCIN2VLRVENDA2: TBCDField
      FieldName = 'NOCIN2VLRVENDA2'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2VLRVENDA2'
      OnChange = SQLTemplateNOCIN2VLRVENDA2Change
      Precision = 15
      Size = 2
    end
    object SQLTemplateUnidadeLookup: TStringField
      FieldKind = fkCalculated
      FieldName = 'UnidadeLookup'
      Size = 5
      Calculated = True
    end
    object SQLTemplateEncargosCalc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'EncargosCalc'
      Calculated = True
    end
    object SQLTemplateNOCIN2PERCDESP: TBCDField
      FieldName = 'NOCIN2PERCDESP'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2PERCDESP'
      OnChange = SQLTemplateNOCIN2PERCDESPChange
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
      Precision = 15
      Size = 2
    end
    object SQLTemplateNOCIN2PERCDIFICM: TBCDField
      FieldName = 'NOCIN2PERCDIFICM'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2PERCDIFICM'
      OnChange = SQLTemplateNOCIN2PERCDIFICMChange
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
      Precision = 15
      Size = 2
    end
    object SQLTemplateNOCIN2PERCSUBST: TBCDField
      FieldName = 'NOCIN2PERCSUBST'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2PERCSUBST'
      OnChange = SQLTemplateNOCIN2PERCSUBSTChange
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
      Precision = 15
      Size = 2
    end
    object SQLTemplateNOCICALTPRECO: TStringField
      FieldName = 'NOCICALTPRECO'
      Origin = 'DB.NOTACOMPRAITEM.NOCICALTPRECO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateICMVendaLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'ICMVendaLookUp'
      Size = 15
      Calculated = True
    end
    object SQLTemplateMargemLucroReal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MargemLucroReal'
      Calculated = True
    end
    object SQLTemplateMargemLucroReal2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MargemLucroReal2'
      Calculated = True
    end
    object SQLTemplateNOCIN3PERCFRETE: TBCDField
      FieldName = 'NOCIN3PERCFRETE'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3PERCFRETE'
      OnChange = SQLTemplateNOCIN3PERCFRETEChange
      Precision = 15
      Size = 2
    end
    object SQLTemplateNCMLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'NCMLookUp'
      Size = 100
      Calculated = True
    end
    object SQLTemplateCFOPA5CODAUX: TStringField
      FieldName = 'CFOPA5CODAUX'
      Origin = 'DB.NOTACOMPRAITEM.CFOPA5CODAUX'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateNOCIN2FATOR199: TBCDField
      FieldName = 'NOCIN2FATOR199'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2FATOR199'
      Precision = 15
      Size = 2
    end
    object SQLTemplateNOCIN2PCREDSN: TBCDField
      FieldName = 'NOCIN2PCREDSN'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2PCREDSN'
      Precision = 9
      Size = 2
    end
    object SQLTemplateNOCIN2PMVAST: TBCDField
      FieldName = 'NOCIN2PMVAST'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2PMVAST'
      Precision = 9
      Size = 2
    end
    object SQLTemplateNOCIN2PREDBC: TBCDField
      FieldName = 'NOCIN2PREDBC'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2PREDBC'
      OnChange = SQLTemplateNOCIN3PERCICMSChange
      Precision = 9
      Size = 2
    end
    object SQLTemplateNOCIN2PREDBCST: TBCDField
      FieldName = 'NOCIN2PREDBCST'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2PREDBCST'
      Precision = 9
      Size = 2
    end
    object SQLTemplateNOCIN2VBC: TBCDField
      FieldName = 'NOCIN2VBC'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2VBC'
      OnChange = SQLTemplateNOCIN3PERCICMSChange
      Precision = 15
      Size = 2
    end
    object SQLTemplateNOCIN2VBCIPI: TBCDField
      FieldName = 'NOCIN2VBCIPI'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2VBCIPI'
      Precision = 15
      Size = 2
    end
    object SQLTemplateNOCIN2VBCST: TBCDField
      FieldName = 'NOCIN2VBCST'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2VBCST'
      Precision = 15
      Size = 2
    end
    object SQLTemplateNOCIN2VBCSTRET: TBCDField
      FieldName = 'NOCIN2VBCSTRET'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2VBCSTRET'
      Precision = 15
      Size = 2
    end
    object SQLTemplateNOCIN2VCREDICMSSN: TBCDField
      FieldName = 'NOCIN2VCREDICMSSN'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2VCREDICMSSN'
      Precision = 15
      Size = 2
    end
    object SQLTemplateNOCIN2VICMSSTRET: TBCDField
      FieldName = 'NOCIN2VICMSSTRET'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2VICMSSTRET'
      Precision = 15
      Size = 2
    end
    object SQLTemplateNOCA3CSTCOFINS: TStringField
      FieldName = 'NOCA3CSTCOFINS'
      Origin = 'DB.NOTACOMPRAITEM.NOCA3CSTCOFINS'
      Size = 3
    end
    object SQLTemplateNOCIA3CSTICMS: TStringField
      FieldName = 'NOCIA3CSTICMS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIA3CSTICMS'
      Size = 3
    end
    object SQLTemplateNOCA3CSTIPI: TStringField
      FieldName = 'NOCA3CSTIPI'
      Origin = 'DB.NOTACOMPRAITEM.NOCA3CSTIPI'
      Size = 3
    end
    object SQLTemplateNOCA3CSTPIS: TStringField
      FieldName = 'NOCA3CSTPIS'
      Origin = 'DB.NOTACOMPRAITEM.NOCA3CSTPIS'
      Size = 3
    end
    object SQLTemplateNOCIN2PERCCOFINS: TBCDField
      FieldName = 'NOCIN2PERCCOFINS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2PERCCOFINS'
      OnChange = SQLTemplateNOCIN2PERCCOFINSChange
      Precision = 9
      Size = 2
    end
    object SQLTemplateNOCIN2PERCPIS: TBCDField
      FieldName = 'NOCIN2PERCPIS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2PERCPIS'
      OnChange = SQLTemplateNOCIN2PERCPISChange
      Precision = 9
      Size = 2
    end
    object SQLTemplateNOCIN2VLRSEGURO: TBCDField
      FieldName = 'NOCIN2VLRSEGURO'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2VLRSEGURO'
      Precision = 15
      Size = 2
    end
    object SQLTemplateNOCIN2PERCISS: TBCDField
      FieldName = 'NOCIN2PERCISS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2PERCISS'
      Precision = 9
      Size = 2
    end
    object SQLTemplateNOCIN2BASEISS: TBCDField
      FieldName = 'NOCIN2BASEISS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2BASEISS'
      Precision = 9
      Size = 2
    end
    object SQLTemplateNOCIN2VLRISS: TBCDField
      FieldName = 'NOCIN2VLRISS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2VLRISS'
      Precision = 15
      Size = 2
    end
    object SQLTemplateNOCIN2BASECOFINS: TBCDField
      FieldName = 'NOCIN2BASECOFINS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2BASECOFINS'
      Precision = 15
      Size = 2
    end
    object SQLTemplateNOCIN2VLRDESPESAS: TBCDField
      FieldName = 'NOCIN2VLRDESPESAS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2VLRDESPESAS'
      Precision = 15
      Size = 2
    end
    object SQLTemplateNOCA1CSTORIGEM: TStringField
      FieldName = 'NOCA1CSTORIGEM'
      Origin = 'DB.NOTACOMPRAITEM.NOCA1CSTORIGEM'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateNOCN4QTDIPI: TBCDField
      FieldName = 'NOCN4QTDIPI'
      Origin = 'DB.NOTACOMPRAITEM.NOCN4QTDIPI'
      Precision = 15
    end
    object SQLTemplateNOCN4UNDIPI: TBCDField
      FieldName = 'NOCN4UNDIPI'
      Origin = 'DB.NOTACOMPRAITEM.NOCN4UNDIPI'
      OnChange = SQLTemplateNOCN4UNDIPIChange
      Precision = 15
    end
    object SQLTemplateNOCN4PISQTD: TBCDField
      FieldName = 'NOCN4PISQTD'
      Origin = 'DB.NOTACOMPRAITEM.NOCN4PISQTD'
      Precision = 15
    end
    object SQLTemplateNOCN4PISREAL: TBCDField
      FieldName = 'NOCN4PISREAL'
      Origin = 'DB.NOTACOMPRAITEM.NOCN4PISREAL'
      Precision = 15
    end
    object SQLTemplateNOCN4COFINSQTD: TBCDField
      FieldName = 'NOCN4COFINSQTD'
      Origin = 'DB.NOTACOMPRAITEM.NOCN4COFINSQTD'
      Precision = 15
    end
    object SQLTemplateNOCN4COFINSREAL: TBCDField
      FieldName = 'NOCN4COFINSREAL'
      Origin = 'DB.NOTACOMPRAITEM.NOCN4COFINSREAL'
      OnChange = SQLTemplateNOCN4COFINSREALChange
      Precision = 15
    end
    object SQLTemplateNOCIN2VLRCOFINS: TBCDField
      FieldName = 'NOCIN2VLRCOFINS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2VLRCOFINS'
      Precision = 15
      Size = 2
    end
    object SQLTemplateNOCIN2VLRPIS: TBCDField
      FieldName = 'NOCIN2VLRPIS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2VLRPIS'
      Precision = 15
      Size = 2
    end
    object SQLTemplateNOCIN2BASEPIS: TBCDField
      FieldName = 'NOCIN2BASEPIS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2BASEPIS'
      Precision = 15
      Size = 2
    end
    object SQLTemplateNOCIN3VLREMBAL: TFloatField
      DisplayWidth = 15
      FieldName = 'NOCIN3VLREMBAL'
      OnChange = SQLTemplateNOCIN3VLREMBALChange
      DisplayFormat = ',0.0000000'
      currency = True
    end
    object SQLTemplateNOCIN3VLRUNIT: TFloatField
      DisplayWidth = 15
      FieldName = 'NOCIN3VLRUNIT'
      OnChange = SQLTemplateNOCIN3VLRUNITChange
      DisplayFormat = ',0.0000000'
      EditFormat = ',0.0000000'
    end
    object SQLTemplateUNIDICOD: TIntegerField
      FieldName = 'UNIDICOD'
      Origin = 'DB.NOTACOMPRAITEM.UNIDICOD'
    end
  end
  inherited DSMasterTemplate: TDataSource
    AutoEdit = False
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update NOTACOMPRAITEM'
      'set'
      '  NOCPA13ID = :NOCPA13ID,'
      '  NOCIIITEM = :NOCIIITEM,'
      '  PRODICOD = :PRODICOD,'
      '  NOCIN3QTDBONIF = :NOCIN3QTDBONIF,'
      '  NOCIN3CAPEMBAL = :NOCIN3CAPEMBAL,'
      '  NOCIN3QTDEMBAL = :NOCIN3QTDEMBAL,'
      '  NOCIN3VLREMBAL = :NOCIN3VLREMBAL,'
      '  NOCIN3VLRUNIT = :NOCIN3VLRUNIT,'
      '  NOCIN3VLRDESC = :NOCIN3VLRDESC,'
      '  NOCIN3PERCDESC = :NOCIN3PERCDESC,'
      '  NOCIN3VLRICMS = :NOCIN3VLRICMS,'
      '  NOCIN3PERCICMS = :NOCIN3PERCICMS,'
      '  NOCIN3VLRSUBST = :NOCIN3VLRSUBST,'
      '  NOCIN3VLRIPI = :NOCIN3VLRIPI,'
      '  NOCIN3PERCIPI = :NOCIN3PERCIPI,'
      '  NOCIN3VLRCUSTOMED = :NOCIN3VLRCUSTOMED,'
      '  NOCIN3VLRFRETE = :NOCIN3VLRFRETE,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO'
      'where'
      '  NOCPA13ID = :OLD_NOCPA13ID and'
      '  NOCIIITEM = :OLD_NOCIIITEM')
    InsertSQL.Strings = (
      'insert into NOTACOMPRAITEM'
      
        '  (NOCPA13ID, NOCIIITEM, PRODICOD, NOCIN3QTDBONIF, NOCIN3CAPEMBA' +
        'L, NOCIN3QTDEMBAL, '
      
        '   NOCIN3VLREMBAL, NOCIN3VLRUNIT, NOCIN3VLRDESC, NOCIN3PERCDESC,' +
        ' NOCIN3VLRICMS, '
      
        '   NOCIN3PERCICMS, NOCIN3VLRSUBST, NOCIN3VLRIPI, NOCIN3PERCIPI, ' +
        'NOCIN3VLRCUSTOMED, '
      '   NOCIN3VLRFRETE, PENDENTE, REGISTRO)'
      'values'
      
        '  (:NOCPA13ID, :NOCIIITEM, :PRODICOD, :NOCIN3QTDBONIF, :NOCIN3CA' +
        'PEMBAL, '
      
        '   :NOCIN3QTDEMBAL, :NOCIN3VLREMBAL, :NOCIN3VLRUNIT, :NOCIN3VLRD' +
        'ESC, :NOCIN3PERCDESC, '
      
        '   :NOCIN3VLRICMS, :NOCIN3PERCICMS, :NOCIN3VLRSUBST, :NOCIN3VLRI' +
        'PI, :NOCIN3PERCIPI, '
      '   :NOCIN3VLRCUSTOMED, :NOCIN3VLRFRETE, :PENDENTE, :REGISTRO)')
    DeleteSQL.Strings = (
      'delete from NOTACOMPRAITEM'
      'where'
      '  NOCPA13ID = :OLD_NOCPA13ID and'
      '  NOCIIITEM = :OLD_NOCIIITEM')
  end
  object SQLIcms: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From ICMS'
      'Where ICMSICOD=:ICMSICOD')
    Macros = <>
    Left = 42
    Top = 413
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ICMSICOD'
        ParamType = ptUnknown
      end>
  end
  object SQLIcmsUF: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From ICMSUF'
      'Where '
      '   ICMUA2UF = :ICMUA2UF')
    Macros = <>
    Left = 8
    Top = 413
    ParamData = <
      item
        DataType = ftString
        Name = 'ICMUA2UF'
        ParamType = ptUnknown
      end>
  end
  object SQLAtualizaItemPedido: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Update '
      '  PEDIDOCOMPRAITEM'
      'set '
      '  PCITN3QTDENTR = PCITN3QTDENTR - :QtdePed + :NovaQtdePed'
      'Where'
      '  PDCPA13ID=:PDCPA13ID and'
      '  PCITIPOS=:PCITIPOS'
      ' ')
    Macros = <>
    Left = 8
    Top = 445
    ParamData = <
      item
        DataType = ftBCD
        Name = 'QtdePed'
        ParamType = ptUnknown
        Size = 3
      end
      item
        DataType = ftBCD
        Name = 'NovaQtdePed'
        ParamType = ptUnknown
        Size = 3
      end
      item
        DataType = ftString
        Name = 'PDCPA13ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'PCITIPOS'
        ParamType = ptUnknown
      end>
  end
  object SQLProdutoFornecedor: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * From PRODUTOFORNECEDOR'
      'Where'
      '(%PRODICOD) and'
      '(%FORNICOD) and'
      '(%Referencia)')
    Macros = <
      item
        DataType = ftString
        Name = 'PRODICOD'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'FORNICOD'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Referencia'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 8
    Top = 477
    object SQLProdutoFornecedorPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTOFORNECEDOR.PRODICOD'
    end
    object SQLProdutoFornecedorFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.PRODUTOFORNECEDOR.FORNICOD'
    end
    object SQLProdutoFornecedorPRFOA30REFERENCIA: TStringField
      FieldName = 'PRFOA30REFERENCIA'
      Origin = 'DB.PRODUTOFORNECEDOR.PRFOA30REFERENCIA'
      FixedChar = True
      Size = 30
    end
    object SQLProdutoFornecedorPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PRODUTOFORNECEDOR.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoFornecedorREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PRODUTOFORNECEDOR.REGISTRO'
    end
  end
  object SQLGeral: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 12
    Top = 514
  end
  object SQLTotalQdte: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'SELECT'
      '  SUM(NOCIN3QTDEMBAL)  AS TotalQtdeItem,'
      
        '  SUM(NOCIN3VLREMBAL*NOCIN3QTDEMBAL-NOCIN3VLRDESC) AS ValorTotal' +
        'NF,'
      '  SUM(NOCIN2QTDENF)  AS TotalQtdeItemMedia,'
      
        '  SUM(NOCIN3VLREMBAL*NOCIN3QTDEMBAL-NOCIN3VLRDESC) /SUM(NOCIN2QT' +
        'DENF)  AS ValorTotalNFMed,'
      '  sum(NOCIN2VBC) as Base_ICMS, '
      '  SUM(NOCIN3VLRICMS) AS VlrTotICMS,'
      '  sum(NOCIN2VBCST) as BASE_ICMSST, '
      '  sum(NOCIN3VLRSUBST) as Total_ICMSST '
      'FROM'
      '  NOTACOMPRAITEM'
      'WHERE'
      ' (%NotaCompra)')
    Macros = <
      item
        DataType = ftString
        Name = 'NotaCompra'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 40
    Top = 545
    object SQLTotalQdteVLRTOTICMS: TBCDField
      FieldName = 'VLRTOTICMS'
      Precision = 15
      Size = 3
    end
    object SQLTotalQdteTOTALQTDEITEM: TBCDField
      FieldName = 'TOTALQTDEITEM'
      Precision = 15
      Size = 3
    end
    object SQLTotalQdteVALORTOTALNF: TFloatField
      FieldName = 'VALORTOTALNF'
    end
    object SQLTotalQdteTOTALQTDEITEMMEDIA: TBCDField
      FieldName = 'TOTALQTDEITEMMEDIA'
      Precision = 15
      Size = 2
    end
    object SQLTotalQdteVALORTOTALNFMED: TFloatField
      FieldName = 'VALORTOTALNFMED'
    end
    object SQLTotalQdteBASE_ICMS: TBCDField
      FieldName = 'BASE_ICMS'
      Precision = 15
      Size = 2
    end
    object SQLTotalQdteBASE_ICMSST: TBCDField
      FieldName = 'BASE_ICMSST'
      Precision = 15
      Size = 2
    end
    object SQLTotalQdteTOTAL_ICMSST: TBCDField
      FieldName = 'TOTAL_ICMSST'
      Precision = 15
      Size = 3
    end
  end
  object DSSQLTotalQdte: TDataSource
    DataSet = SQLTotalQdte
    Left = 68
    Top = 545
  end
  object SQLOperacaoEstoque: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSMasterTemplate
    SQL.Strings = (
      'SELECT OPESCORIGEMDESTINO FROM OPERACAOESTOQUE'
      'WHERE'
      'OPESICOD = :OPESICOD')
    Macros = <>
    Left = 73
    Top = 413
    ParamData = <
      item
        DataType = ftInteger
        Name = 'OPESICOD'
        ParamType = ptUnknown
      end>
    object SQLOperacaoEstoqueOPESCORIGEMDESTINO: TStringField
      FieldName = 'OPESCORIGEMDESTINO'
      Origin = 'DB.OPERACAOESTOQUE.OPESCORIGEMDESTINO'
      FixedChar = True
      Size = 1
    end
  end
  object FormStorage1: TFormStorage
    Options = []
    StoredProps.Strings = (
      'RadioPesquisa.ItemIndex')
    StoredValues = <>
    Left = 448
    Top = 1
  end
  object SQLCSTConverte: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSMasterTemplate
    SQL.Strings = (
      'SELECT * FROM CSTCONVERTE WHERE (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 73
    Top = 465
    object SQLCSTConverteTIPOEMPRESA: TIntegerField
      FieldName = 'TIPOEMPRESA'
      Origin = 'DB.CSTCONVERTE.TIPOEMPRESA'
    end
    object SQLCSTConverteCSTSAIDA: TStringField
      FieldName = 'CSTSAIDA'
      Origin = 'DB.CSTCONVERTE.CSTSAIDA'
      Size = 3
    end
    object SQLCSTConverteCSTENTRADA: TStringField
      FieldName = 'CSTENTRADA'
      Origin = 'DB.CSTCONVERTE.CSTENTRADA'
      Size = 3
    end
  end
  object SQLCFOP: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'SELECT* FROM CFOP'
      'WHERE '
      'CFOPA5COD STARTING WITH "1" OR '
      'CFOPA5COD STARTING WITH "2"  OR '
      'CFOPA5COD STARTING WITH "3"'
      'Order by CFOPA5COD')
    Macros = <>
    Left = 44
    Top = 493
    object SQLCFOPCFOPA5COD: TStringField
      FieldName = 'CFOPA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLCFOPCFOPA60DESCR: TStringField
      FieldName = 'CFOPA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLCFOPCFOPCVENDA: TStringField
      FieldName = 'CFOPCVENDA'
      FixedChar = True
      Size = 1
    end
    object SQLCFOPPENDENTE: TStringField
      FieldName = 'PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLCFOPREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
    end
    object SQLCFOPCFOPCDESTVLRNTRIB: TStringField
      FieldName = 'CFOPCDESTVLRNTRIB'
      FixedChar = True
      Size = 1
    end
  end
  object dsSQLCFOP: TDataSource
    DataSet = SQLCFOP
    Left = 72
    Top = 493
  end
  object SQLUnidade: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'SELECT * FROM UNIDADE'
      'ORDER BY UNIDA5DESCR ASC')
    Macros = <>
    Left = 40
    Top = 577
    object SQLUnidadeUNIDICOD: TIntegerField
      FieldName = 'UNIDICOD'
      Origin = 'DB.UNIDADE.UNIDICOD'
    end
    object SQLUnidadeUNIDA5DESCR: TStringField
      FieldName = 'UNIDA5DESCR'
      Origin = 'DB.UNIDADE.UNIDA5DESCR'
      FixedChar = True
      Size = 5
    end
    object SQLUnidadePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.UNIDADE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLUnidadeREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.UNIDADE.REGISTRO'
    end
    object SQLUnidadeUNIDA15DESCR: TStringField
      FieldName = 'UNIDA15DESCR'
      Origin = 'DB.UNIDADE.UNIDA15DESCR'
      FixedChar = True
      Size = 15
    end
    object SQLUnidadeUNIDCFRAC: TStringField
      FieldName = 'UNIDCFRAC'
      Origin = 'DB.UNIDADE.UNIDCFRAC'
      FixedChar = True
      Size = 1
    end
    object SQLUnidadeUNIDN3FATORCONV: TBCDField
      FieldName = 'UNIDN3FATORCONV'
      Origin = 'DB.UNIDADE.UNIDN3FATORCONV'
      Precision = 15
      Size = 3
    end
  end
  object dsSQLUnidade: TDataSource
    DataSet = SQLUnidade
    Left = 68
    Top = 577
  end
end
