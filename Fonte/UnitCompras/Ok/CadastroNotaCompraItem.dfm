inherited FormCadastroNotaCompraItem: TFormCadastroNotaCompraItem
  Left = 265
  Top = 125
  Caption = 'Lan'#231'amento de Itens'
  ClientHeight = 582
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Height = 582
    inherited PanelCentral: TPanel
      Height = 508
      inherited PanelBarra: TPanel
        Height = 508
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
        Height = 508
        inherited Panel5: TPanel
          Height = 508
          inherited PagePrincipal: TPageControl
            Top = 176
            Height = 332
            ActivePage = TabSheetDadosPrincipais
            TabIndex = 1
            TabOrder = 2
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 259
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
                Left = 8
                Top = 2
                Width = 27
                Height = 13
                Caption = 'Qtde'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label11: TLabel
                Left = 146
                Top = 2
                Width = 62
                Height = 13
                Caption = 'Vlr Compra'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label14: TLabel
                Left = 388
                Top = 2
                Width = 45
                Height = 13
                Caption = 'Vlr Desc'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label15: TLabel
                Left = 336
                Top = 2
                Width = 43
                Height = 13
                Caption = '% Desc'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label22: TLabel
                Left = 7
                Top = 38
                Width = 48
                Height = 13
                Caption = 'Vlr Frete'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 333
                Top = 37
                Width = 57
                Height = 13
                Caption = 'Fator 1,99'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label17: TLabel
                Left = 216
                Top = 2
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
              object Label16: TLabel
                Left = 270
                Top = 2
                Width = 47
                Height = 13
                Caption = 'Vlr ICMS'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label18: TLabel
                Left = 455
                Top = 2
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
              object Label19: TLabel
                Left = 507
                Top = 2
                Width = 35
                Height = 13
                Caption = 'Vlr IPI'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label20: TLabel
                Left = 146
                Top = 37
                Width = 50
                Height = 13
                Caption = 'Vlr Subst'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label23: TLabel
                Left = 312
                Top = 92
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
                Left = 564
                Top = 91
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
                Left = 312
                Top = 126
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
                Left = 559
                Top = 125
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
                Left = 12
                Top = 92
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
                Left = 209
                Top = 92
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
                Left = 12
                Top = 126
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
                Left = 208
                Top = 126
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
                Left = 401
                Top = 37
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
              object Label7: TLabel
                Left = 0
                Top = 215
                Width = 652
                Height = 91
                Align = alBottom
                Caption = 
                  '  Informa'#231#245'es e F'#243'rmulas:'#13#10'  Cofins, Pis e Outros = S'#227'o campos a' +
                  'limentados pelas config. iniciais.'#13#10'  Valor Custo              =' +
                  ' Valor Compra - Desc + Ipi Compra + Vlr Subst + Frete + Despesas' +
                  ' Adicionais;'#13#10'  Valor Venda             = Novo Valor Custo  * ( ' +
                  '1 - (Margem Lucro + Icms Venda + Perc.Cofins + Perc.Pis + Perc.O' +
                  'utros)/100).'#13#10'  Fator 1,99                = Usado para lojas de ' +
                  '1,99 que n'#227'o vendem via sistema, mas querem controlar estoque ba' +
                  'seado na compra.'#13#10'                                       Quando ' +
                  'usado,divide a quantidade comprada pelo fator chegando ao estoqu' +
                  'e m'#233'dio de compra.'#13#10'  Cap.Embalagem      = Quantidade de produto' +
                  's que possui uma embalagem.'
                Font.Charset = ANSI_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label10: TLabel
                Left = 483
                Top = 37
                Width = 50
                Height = 13
                Caption = 'Cofins %'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label40: TLabel
                Left = 539
                Top = 37
                Width = 32
                Height = 13
                Caption = 'Pis %'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label43: TLabel
                Left = 586
                Top = 37
                Width = 54
                Height = 13
                Caption = 'Outros %'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label44: TLabel
                Left = 76
                Top = 2
                Width = 58
                Height = 13
                Caption = 'Cap.Embal'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label45: TLabel
                Left = 214
                Top = 37
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
              object Label46: TLabel
                Left = 269
                Top = 37
                Width = 49
                Height = 13
                Caption = '% D.Icm'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label47: TLabel
                Left = 75
                Top = 37
                Width = 45
                Height = 13
                Caption = '% I.Sub'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label53: TLabel
                Left = 115
                Top = 92
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
                Left = 115
                Top = 126
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
                Left = 404
                Top = 92
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
                Left = 404
                Top = 126
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
              object Label57: TLabel
                Left = 574
                Top = 2
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
              object Label58: TLabel
                Left = 482
                Top = 91
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
                Left = 482
                Top = 126
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
              object DBEditQtde: TEvDBNumEdit
                Left = 4
                Top = 15
                Width = 68
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
                TabOrder = 0
                OnChange = DBEditTarifaComissaoChange
              end
              object DBEditVUnit: TEvDBNumEdit
                Left = 144
                Top = 15
                Width = 68
                Height = 21
                DataField = 'NOCIN3VLREMBAL'
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
                TabOrder = 2
                OnChange = DBEditTarifaComissaoChange
              end
              object DBEditDescVlr: TEvDBNumEdit
                Left = 385
                Top = 15
                Width = 65
                Height = 21
                DataField = 'NOCIN3VLRDESC'
                DataSource = DSTemplate
                Decimals = 2
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
                TabOrder = 6
                OnChange = DBEditTarifaComissaoChange
              end
              object DBEditDesPerc: TEvDBNumEdit
                Left = 333
                Top = 15
                Width = 50
                Height = 21
                DataField = 'NOCIN3PERCDESC'
                DataSource = DSTemplate
                Decimals = 2
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
                TabOrder = 5
                OnChange = DBEditTarifaComissaoChange
              end
              object DBEditVlrFrete: TEvDBNumEdit
                Left = 4
                Top = 51
                Width = 68
                Height = 21
                Color = clWhite
                DataField = 'NOCIN3VLRFRETE'
                DataSource = DSTemplate
                Decimals = 2
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
                TabOrder = 10
              end
              object GroupBoxComissaoFrete: TGroupBox
                Left = 4
                Top = 226
                Width = 884
                Height = 80
                Caption = ' Comiss'#227'o de Frete '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 23
                object Label32: TLabel
                  Left = 6
                  Top = 16
                  Width = 90
                  Height = 13
                  Caption = 'Tarifa Comiss'#227'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label25: TLabel
                  Left = 104
                  Top = 14
                  Width = 65
                  Height = 13
                  Caption = 'Funcion'#225'rio'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label26: TLabel
                  Left = 574
                  Top = 14
                  Width = 54
                  Height = 13
                  Caption = 'Comiss'#227'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEditTarifaComissao: TDBEdit
                  Left = 5
                  Top = 28
                  Width = 92
                  Height = 21
                  Color = clWhite
                  DataField = 'NOCIN2VLRCOMISSAO'
                  DataSource = DSTemplate
                  TabOrder = 0
                  OnChange = DBEditTarifaComissaoChange
                end
                object DBEdit6: TDBEdit
                  Left = 103
                  Top = 28
                  Width = 434
                  Height = 21
                  TabStop = False
                  BorderStyle = bsNone
                  Color = 12572888
                  DataField = 'FUNCA60NOME'
                  DataSource = DSMasterTemplate
                  TabOrder = 1
                end
                object EditValorComissao: TCurrencyEdit
                  Left = 554
                  Top = 28
                  Width = 81
                  Height = 21
                  TabStop = False
                  AutoSize = False
                  BorderStyle = bsNone
                  Color = 12572888
                  DisplayFormat = 'R$ , 0.00;-R$ , 0.00'
                  TabOrder = 2
                end
              end
              object GroupNroSerie: TGroupBox
                Left = 5
                Top = 161
                Width = 408
                Height = 65
                Caption = 'N'#250'mero(s) de S'#233'rie'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 22
                Visible = False
                object DBGrid1: TDBGrid
                  Left = 2
                  Top = 15
                  Width = 404
                  Height = 48
                  Align = alClient
                  BorderStyle = bsNone
                  Color = clWhite
                  DataSource = DSSQLProdutoSerie
                  FixedColor = 10053171
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Options = [dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                  ParentFont = False
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWhite
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = [fsBold]
                  OnDblClick = DBGridListaDblClick
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'PRSEA60NROSERIE'
                      Visible = True
                    end>
                end
              end
              object DBEditFator199: TEvDBNumEdit
                Left = 333
                Top = 50
                Width = 56
                Height = 21
                Color = clWhite
                DataField = 'NOCIN2FATOR199'
                DataSource = DSTemplate
                Decimals = 2
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
                TabOrder = 15
              end
              object DBEditIcmPerc: TEvDBNumEdit
                Left = 214
                Top = 15
                Width = 50
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
                TabOrder = 3
              end
              object DBEditIcmVlr: TEvDBNumEdit
                Left = 266
                Top = 15
                Width = 65
                Height = 21
                Color = clWhite
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
                TabOrder = 4
              end
              object DBEditIPIPerc: TEvDBNumEdit
                Left = 452
                Top = 15
                Width = 50
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
                TabOrder = 7
              end
              object DBEditIPIVlr: TEvDBNumEdit
                Left = 504
                Top = 15
                Width = 65
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
                TabOrder = 8
              end
              object DBEditVlrSbust: TEvDBNumEdit
                Left = 142
                Top = 50
                Width = 68
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
                TabOrder = 12
              end
              object DBEditMGVarejo: TEvDBNumEdit
                Left = 310
                Top = 105
                Width = 90
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
                TabOrder = 16
                OnExit = DBEditMGVarejoExit
              end
              object DBEditVLRVarejo: TEvDBNumEdit
                Left = 557
                Top = 104
                Width = 88
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
                TabOrder = 18
                OnEnter = DBEditVLRVarejoEnter
                OnExit = DBEditVLRVarejoExit
              end
              object DBEditMGAtacado: TEvDBNumEdit
                Left = 310
                Top = 139
                Width = 90
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
                TabOrder = 19
                OnExit = DBEditMGAtacadoExit
              end
              object DBEditVlrAtacado: TEvDBNumEdit
                Left = 557
                Top = 138
                Width = 88
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
                TabOrder = 21
                OnEnter = DBEditVlrAtacadoEnter
                OnExit = DBEditVlrAtacadoExit
              end
              object Panel4: TPanel
                Left = 306
                Top = 74
                Width = 339
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
                TabOrder = 24
              end
              object Panel6: TPanel
                Left = 3
                Top = 74
                Width = 298
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
                TabOrder = 25
              end
              object DBEdit11: TDBEdit
                Left = 9
                Top = 105
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
                TabOrder = 26
              end
              object DBEdit2: TDBEdit
                Left = 206
                Top = 105
                Width = 90
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
                TabOrder = 27
              end
              object DBEdit22: TDBEdit
                Left = 10
                Top = 139
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
                TabOrder = 28
              end
              object DBEdit23: TDBEdit
                Left = 206
                Top = 139
                Width = 90
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
                TabOrder = 29
              end
              object Panel7: TPanel
                Left = 301
                Top = 75
                Width = 4
                Height = 86
                TabOrder = 30
              end
              object Panel8: TPanel
                Left = 647
                Top = 75
                Width = 3
                Height = 86
                TabOrder = 31
              end
              object DBEditTotalItem: TEvDBNumEdit
                Left = 402
                Top = 50
                Width = 75
                Height = 20
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
                TabOrder = 35
              end
              object DBEditCofinsPerc: TEvDBNumEdit
                Left = 482
                Top = 50
                Width = 50
                Height = 19
                TabStop = False
                BorderStyle = bsNone
                Color = 12572888
                Ctl3D = False
                DataField = 'CofinsCalc'
                DataSource = DSTemplate
                Decimals = 2
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
                ParentCtl3D = False
                ReadOnly = True
                ShowButton = False
                ShowSeparator = True
                TabOrder = 32
              end
              object EvDBNumEdit6: TEvDBNumEdit
                Left = 534
                Top = 50
                Width = 50
                Height = 19
                TabStop = False
                BorderStyle = bsNone
                Color = 12572888
                DataField = 'PisCalc'
                DataSource = DSTemplate
                Decimals = 2
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
                TabOrder = 33
              end
              object EvDBNumEdit7: TEvDBNumEdit
                Left = 586
                Top = 50
                Width = 50
                Height = 19
                TabStop = False
                BorderStyle = bsNone
                Color = 12572888
                DataField = 'EncargosCalc'
                DataSource = DSTemplate
                Decimals = 2
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
                TabOrder = 34
              end
              object DBEditCapEmbal: TEvDBNumEdit
                Left = 74
                Top = 15
                Width = 68
                Height = 21
                DataField = 'NOCIN3CAPEMBAL'
                DataSource = DSTemplate
                Decimals = 3
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
                OnChange = DBEditTarifaComissaoChange
              end
              object DBEditPercDespesas: TEvDBNumEdit
                Left = 212
                Top = 50
                Width = 50
                Height = 21
                Color = clWhite
                DataField = 'NOCIN2PERCDESP'
                DataSource = DSTemplate
                Decimals = 2
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
                TabOrder = 13
              end
              object DBEditDifICM: TEvDBNumEdit
                Left = 268
                Top = 50
                Width = 61
                Height = 21
                Color = clWhite
                DataField = 'NOCIN2PERCDIFICM'
                DataSource = DSTemplate
                Decimals = 2
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
                TabOrder = 14
              end
              object DBEditPercIcmSubst: TEvDBNumEdit
                Left = 74
                Top = 50
                Width = 68
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
                TabOrder = 11
                OnExit = DBEditPercIcmSubstExit
              end
              object DBEdit5: TDBEdit
                Left = 112
                Top = 105
                Width = 90
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
                TabOrder = 36
              end
              object DBEdit8: TDBEdit
                Left = 113
                Top = 139
                Width = 90
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
                TabOrder = 37
              end
              object EvDBNumEdit14: TEvDBNumEdit
                Left = 571
                Top = 15
                Width = 66
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
                TabOrder = 9
              end
              object edtMargemReal: TCurrencyEdit
                Left = 404
                Top = 104
                Width = 74
                Height = 21
                AutoSize = False
                Color = clBtnFace
                DisplayFormat = ',0.00;-,0.00'
                Enabled = False
                TabOrder = 38
              end
              object edtMargemReal2: TCurrencyEdit
                Left = 404
                Top = 139
                Width = 74
                Height = 21
                AutoSize = False
                Color = clBtnFace
                DisplayFormat = ',0.00;-,0.00'
                Enabled = False
                TabOrder = 39
              end
              object edtSimulaMargem: TCurrencyEdit
                Left = 482
                Top = 104
                Width = 72
                Height = 21
                AutoSize = False
                DisplayFormat = ',0.00;-,0.00'
                TabOrder = 17
                OnEnter = edtSimulaMargemEnter
                OnExit = edtSimulaMargemExit
              end
              object edtSimulaMargem2: TCurrencyEdit
                Left = 482
                Top = 139
                Width = 72
                Height = 21
                AutoSize = False
                DisplayFormat = ',0.00;-,0.00'
                TabOrder = 20
                OnEnter = edtSimulaMargem2Enter
                OnExit = edtSimulaMargem2Exit
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 0
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
              Left = 6
              Top = 51
              Width = 460
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
      OnClick = MnNumerosdeSerieClick
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    AfterDelete = SQLTemplateAfterDelete
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select '
      '    * '
      'From '
      '    NOTACOMPRAITEM '
      'Where '
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
      OnChange = SQLTemplateNOCIN3PERCIPIChange
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
    object SQLTemplateControlaSerieLookup: TStringField
      FieldKind = fkCalculated
      FieldName = 'ControlaSerieLookup'
      Size = 1
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
    object SQLTemplateNOCIN2FATOR199: TBCDField
      FieldName = 'NOCIN2FATOR199'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2FATOR199'
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
    object SQLTemplateCofinsCalc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CofinsCalc'
      Calculated = True
    end
    object SQLTemplatePisCalc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PisCalc'
      Calculated = True
    end
    object SQLTemplateEncargosCalc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'EncargosCalc'
      Calculated = True
    end
    object SQLTemplateNOCIN3VLRUNIT: TBCDField
      FieldName = 'NOCIN3VLRUNIT'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLRUNIT'
      OnChange = SQLTemplateNOCIN3VLRUNITChange
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
      Precision = 15
      Size = 5
    end
    object SQLTemplateNOCIN3VLREMBAL: TBCDField
      FieldName = 'NOCIN3VLREMBAL'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLREMBAL'
      OnChange = SQLTemplateNOCIN3VLREMBALChange
      DisplayFormat = '#,##0.00000'
      EditFormat = '#,##0.00000'
      Precision = 15
      Size = 5
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
      ' '
      '')
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
      '  SUM(NOCIN3VLRICMS) AS VlrTotICMS,'
      '  SUM(NOCIN2QTDENF)  AS TotalQtdeItemMedia,'
      
        '  SUM(NOCIN3VLREMBAL*NOCIN3QTDEMBAL-NOCIN3VLRDESC) /SUM(NOCIN2QT' +
        'DENF)  AS ValorTotalNFMed'
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
  object SQLProdutoSerie: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'SELECT'
      'PRSEA60NROSERIE'
      'FROM'
      'PRODUTOSERIE'
      'WHERE'
      'NOCPA13ID = :NOCPA13ID'
      'and'
      'PRODICOD  = :PRODICOD')
    Macros = <>
    Left = 40
    Top = 514
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'NOCPA13ID'
        ParamType = ptUnknown
        Size = 14
      end
      item
        DataType = ftInteger
        Name = 'PRODICOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SQLProdutoSeriePRSEA60NROSERIE: TStringField
      DisplayLabel = 'Nro. S'#233'rie'
      FieldName = 'PRSEA60NROSERIE'
      Origin = 'DB.PRODUTOSERIE.PRSEA60NROSERIE'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLProdutoSerie: TDataSource
    DataSet = SQLProdutoSerie
    Left = 68
    Top = 514
  end
end
