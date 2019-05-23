inherited FormCadastroLMC: TFormCadastroLMC
  Left = 151
  Top = 96
  Caption = 'Cadastro Manual de Movimenta'#231#245'es de Combust'#237'veis'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelBarra: TPanel
        inherited Button1: TRxSpeedButton
          Down = True
        end
        inherited Button2: TRxSpeedButton
          Caption = '&2 Abertura'
        end
        inherited Button3: TRxSpeedButton
          Caption = '&3 Volume Recebido'
          Visible = True
          OnClick = Button3Click
        end
        object BtVolumeVendido: TRxSpeedButton
          Tag = 2
          Left = 1
          Top = 86
          Width = 127
          Height = 23
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Caption = '&4 Volume Vendido'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            6E040000424D6E04000000000000360000002800000014000000120000000100
            18000000000038040000CE0E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF000000000000FFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            000000000000FFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBF00
            0000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBF000000FFBF
            BFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBFFFBFBF000000FFBFBFFFBFBF
            FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF000000FFBFBFF7FEFF000000FFBFBFFFBFBFFFBFBFFF
            BFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF
            FFFFFF000000FFBFBFFFBFBFF7FEFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBF
            BFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFBFBFF7FEFFF7FEFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF
            FFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF000000FFBFBFFFBF
            BFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFF
            BFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF000000FFBFBFFFBFBFF7FEFF
            F7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBFFFBF
            BFFFBFBF000000FFFFFFFFFFFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFF7
            FEFFF7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBF
            000000FFFFFFFFFFFF000000FFBFBFFFBFBF000000000000FFBFBFFFBFBFFFBF
            BFFFBFBFF7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBF000000FF
            FFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFF000000000000000000FFBFBF
            FFBFBFFFBFBFFFBFBFF7FEFFF7FEFFFFFFFF000000000000000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
            0000FFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
            00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          GrayedInactive = False
          Layout = blGlyphLeft
          Margin = 1
          ParentFont = False
          Transparent = True
          OnClick = Button3Click
        end
        object BtFechamento: TRxSpeedButton
          Tag = 2
          Left = 1
          Top = 110
          Width = 127
          Height = 23
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Caption = '&5 Fechamento'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            6E040000424D6E04000000000000360000002800000014000000120000000100
            18000000000038040000CE0E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF000000000000FFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            000000000000FFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBF00
            0000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBF000000FFBF
            BFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBFFFBFBF000000FFBFBFFFBFBF
            FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF000000FFBFBFF7FEFF000000FFBFBFFFBFBFFFBFBFFF
            BFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF
            FFFFFF000000FFBFBFFFBFBFF7FEFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBF
            BFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFBFBFF7FEFFF7FEFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF
            FFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF000000FFBFBFFFBF
            BFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFF
            BFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF000000FFBFBFFFBFBFF7FEFF
            F7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBFFFBF
            BFFFBFBF000000FFFFFFFFFFFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFF7
            FEFFF7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBF
            000000FFFFFFFFFFFF000000FFBFBFFFBFBF000000000000FFBFBFFFBFBFFFBF
            BFFFBFBFF7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBF000000FF
            FFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFF000000000000000000FFBFBF
            FFBFBFFFBFBFFFBFBFF7FEFFF7FEFFFFFFFF000000000000000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
            0000FFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
            00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          GrayedInactive = False
          Layout = blGlyphLeft
          Margin = 1
          ParentFont = False
          Transparent = True
          OnClick = Button3Click
        end
      end
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 86
            Height = 363
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Top = 81
                Height = 256
              end
              inherited PanelProcura: TPanel
                Height = 81
                inherited PanelBetween: TPanel
                  Height = 40
                  inherited AdvPanel1: TAdvPanel
                    Height = 40
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Height = 40
                  inherited AdvPanelEditProcura: TAdvPanel
                    Height = 40
                    FullHeight = 0
                  end
                end
                inherited PanelIndice: TPanel
                  Height = 40
                  inherited AdvPanelIndice: TAdvPanel
                    Height = 40
                    FullHeight = 0
                  end
                end
                object pnllivropagina: TPanel
                  Left = 0
                  Top = 40
                  Width = 749
                  Height = 41
                  Align = alBottom
                  BevelOuter = bvNone
                  ParentColor = True
                  TabOrder = 3
                  object Label40: TLabel
                    Left = 3
                    Top = 1
                    Width = 112
                    Height = 13
                    Caption = 'Procura pela p'#225'gina'
                    FocusControl = ComboOrdem
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label41: TLabel
                    Left = 136
                    Top = 1
                    Width = 43
                    Height = 13
                    Caption = 'Do livro'
                    FocusControl = ComboOrdem
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object BTNLocalizar: TSpeedButton
                    Left = 256
                    Top = 14
                    Width = 133
                    Height = 22
                    Caption = '&Localizar'
                    Flat = True
                    Glyph.Data = {
                      F6000000424DF60000000000000076000000280000000E000000100000000100
                      04000000000080000000CE0E0000C40E00001000000000000000000000000000
                      80000080000000808000800000008000800080800000C0C0C000808080000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777700
                      77007777777774EC0700770000004ECC000077877774ECC77000778FFF4ECC7F
                      70007780087CC7FF7000787E70887FFF70008FE7E707FFFF70008EFE7E0FFFFF
                      70008FEFE70FFFFF700078FEF0FFFFFF700077880FFFFFFF7000778FFFFFFF00
                      0000778FFFFFFF0F8700778FFFFFFF0877007788888888877700}
                    OnClick = BTNLocalizarClick
                  end
                  object edtPagina: TEdit
                    Left = 1
                    Top = 16
                    Width = 123
                    Height = 21
                    TabOrder = 0
                  end
                  object edtLivro: TEdit
                    Left = 129
                    Top = 16
                    Width = 125
                    Height = 21
                    TabOrder = 1
                  end
                end
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              OnShow = TabSheetDadosPrincipaisShow
              object Label12: TLabel
                Left = 248
                Top = 128
                Width = 116
                Height = 13
                Caption = 'Estoque de Abertura'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
              end
              object Label32: TLabel
                Left = 8
                Top = 172
                Width = 73
                Height = 13
                Caption = 'Observa'#231#245'es'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object GroupBox1: TGroupBox
                Left = 9
                Top = 40
                Width = 625
                Height = 79
                Caption = ' Estoque de abertura (Medi'#231#227'o F'#237'sica no in'#237'cio do dia) '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                object Label6: TLabel
                  Left = 18
                  Top = 28
                  Width = 30
                  Height = 13
                  Caption = 'Tq N'#186
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label7: TLabel
                  Left = 119
                  Top = 28
                  Width = 30
                  Height = 13
                  Caption = 'Tq N'#186
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label8: TLabel
                  Left = 220
                  Top = 28
                  Width = 30
                  Height = 13
                  Caption = 'Tq N'#186
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label9: TLabel
                  Left = 323
                  Top = 28
                  Width = 30
                  Height = 13
                  Caption = 'Tq N'#186
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label10: TLabel
                  Left = 424
                  Top = 28
                  Width = 30
                  Height = 13
                  Caption = 'Tq N'#186
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label11: TLabel
                  Left = 527
                  Top = 28
                  Width = 30
                  Height = 13
                  Caption = 'Tq N'#186
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Edit1: TEdit
                  Left = 52
                  Top = 25
                  Width = 47
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                end
                object Edit2: TEdit
                  Left = 153
                  Top = 25
                  Width = 46
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 1
                end
                object Edit3: TEdit
                  Left = 254
                  Top = 25
                  Width = 46
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 2
                end
                object Edit4: TEdit
                  Left = 357
                  Top = 25
                  Width = 45
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 3
                end
                object Edit5: TEdit
                  Left = 458
                  Top = 25
                  Width = 45
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 4
                end
                object Edit6: TEdit
                  Left = 561
                  Top = 25
                  Width = 44
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 5
                end
                object TQI1: TEvDBNumEdit
                  Left = 17
                  Top = 48
                  Width = 83
                  Height = 21
                  TabStop = False
                  AutoHideCalculator = False
                  Ctl3D = True
                  DataField = 'LMCAN2TQI1'
                  DataSource = DSTemplate
                  Enabled = False
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
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 6
                end
                object TQI2: TEvDBNumEdit
                  Left = 118
                  Top = 48
                  Width = 83
                  Height = 21
                  TabStop = False
                  AutoHideCalculator = False
                  Ctl3D = True
                  DataField = 'LMCAN2TQI2'
                  DataSource = DSTemplate
                  Enabled = False
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
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 7
                end
                object TQI3: TEvDBNumEdit
                  Left = 219
                  Top = 48
                  Width = 83
                  Height = 21
                  TabStop = False
                  AutoHideCalculator = False
                  Ctl3D = True
                  DataField = 'LMCAN2TQI3'
                  DataSource = DSTemplate
                  Enabled = False
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
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 8
                end
                object TQI4: TEvDBNumEdit
                  Left = 321
                  Top = 48
                  Width = 83
                  Height = 21
                  TabStop = False
                  AutoHideCalculator = False
                  Ctl3D = True
                  DataField = 'LMCAN2TQI4'
                  DataSource = DSTemplate
                  Enabled = False
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
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 9
                end
                object TQI5: TEvDBNumEdit
                  Left = 422
                  Top = 48
                  Width = 83
                  Height = 21
                  TabStop = False
                  AutoHideCalculator = False
                  Ctl3D = True
                  DataField = 'LMCAN2TQI5'
                  DataSource = DSTemplate
                  Enabled = False
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
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 10
                end
                object TQI6: TEvDBNumEdit
                  Left = 524
                  Top = 48
                  Width = 83
                  Height = 21
                  TabStop = False
                  AutoHideCalculator = False
                  Ctl3D = True
                  DataField = 'LMCAN2TQI6'
                  DataSource = DSTemplate
                  Enabled = False
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
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 11
                end
              end
              object EditEstoqueAbertura: TEdit
                Left = 233
                Top = 145
                Width = 159
                Height = 19
                TabStop = False
                Ctl3D = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentCtl3D = False
                ParentFont = False
                ReadOnly = True
                TabOrder = 1
              end
              object Panel4: TPanel
                Left = 0
                Top = 0
                Width = 652
                Height = 32
                Align = alTop
                Alignment = taLeftJustify
                Caption = '  Abertura do dia'
                Color = 10053171
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -21
                Font.Name = 'Times New Roman'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
              end
              object DBMemo1: TDBMemo
                Left = 8
                Top = 188
                Width = 625
                Height = 81
                TabStop = False
                DataField = 'LMCAA100OBS'
                DataSource = DSTemplate
                MaxLength = 100
                TabOrder = 3
              end
            end
            object TabVolRecebido: TTabSheet
              Caption = 'TabVolRecebido'
              ImageIndex = 2
              object Label18: TLabel
                Left = 485
                Top = 175
                Width = 84
                Height = 13
                Caption = 'Total Recebido'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
              end
              object Label19: TLabel
                Left = 485
                Top = 246
                Width = 90
                Height = 13
                Caption = 'Total Dispon'#237'vel'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
              end
              object Label20: TLabel
                Left = 484
                Top = 104
                Width = 116
                Height = 13
                Caption = 'Estoque de Abertura'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
              end
              object Panel6: TPanel
                Left = 0
                Top = 0
                Width = 749
                Height = 32
                Align = alTop
                Alignment = taLeftJustify
                Caption = '  Volume Recebido (em Litros)'
                Color = 10053171
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -21
                Font.Name = 'Times New Roman'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
              object Panel10: TPanel
                Left = 0
                Top = 32
                Width = 749
                Height = 54
                Align = alTop
                Color = 15461355
                TabOrder = 1
                object BTEntradaNovo: TBitBtn
                  Left = 478
                  Top = 23
                  Width = 50
                  Height = 21
                  Caption = 'Novo'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  OnClick = BTEntradaNovoClick
                end
                object BTEntradaGravar: TBitBtn
                  Left = 528
                  Top = 23
                  Width = 50
                  Height = 21
                  Caption = 'Gravar'
                  Enabled = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                  OnClick = BTEntradaGravarClick
                end
                object BtEntradaExcluir: TBitBtn
                  Left = 578
                  Top = 23
                  Width = 50
                  Height = 21
                  Caption = 'Excluir'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 3
                  OnClick = BtEntradaExcluirClick
                end
                object PanelRecebido: TPanel
                  Left = 1
                  Top = 1
                  Width = 465
                  Height = 52
                  Align = alLeft
                  BevelOuter = bvNone
                  Enabled = False
                  ParentColor = True
                  TabOrder = 1
                  object Label14: TLabel
                    Left = 16
                    Top = 11
                    Width = 52
                    Height = 13
                    Caption = 'Nro da NF'
                    FocusControl = DBEditNRONF
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label15: TLabel
                    Left = 131
                    Top = 11
                    Width = 92
                    Height = 13
                    Caption = 'Data Emiss'#227'o NF'
                    FocusControl = DBEdit1
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label17: TLabel
                    Left = 247
                    Top = 11
                    Width = 81
                    Height = 13
                    Caption = 'Nro do Tanque'
                    FocusControl = DBEdit6
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label16: TLabel
                    Left = 364
                    Top = 10
                    Width = 97
                    Height = 13
                    Caption = 'Volume Recebido'
                    FocusControl = DBEdit4
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object DBEditNRONF: TDBEdit
                    Left = 13
                    Top = 24
                    Width = 110
                    Height = 21
                    DataField = 'LMENA15NRONF'
                    DataSource = DSSQLEntrada
                    TabOrder = 0
                  end
                  object DBDateEdit1: TDBDateEdit
                    Left = 128
                    Top = 24
                    Width = 110
                    Height = 21
                    DataField = 'LMENDDTNF'
                    DataSource = DSSQLEntrada
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    NumGlyphs = 2
                    ParentFont = False
                    TabOrder = 1
                  end
                  object DBEdit6: TDBEdit
                    Left = 244
                    Top = 24
                    Width = 110
                    Height = 21
                    DataField = 'TANQICOD'
                    DataSource = DSSQLEntrada
                    TabOrder = 2
                  end
                  object EvDBNumEdit1: TEvDBNumEdit
                    Left = 355
                    Top = 23
                    Width = 110
                    Height = 21
                    AutoHideCalculator = False
                    DataField = 'LMENN2QTE'
                    DataSource = DSSQLEntrada
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
                    ShowSeparator = False
                    TabOrder = 3
                    OnExit = EvDBNumEdit1Exit
                  end
                end
              end
              object Panel11: TPanel
                Left = 0
                Top = 86
                Width = 477
                Height = 251
                Align = alLeft
                Color = 12572888
                TabOrder = 2
                object DBGridVolRecebido: TDBGrid
                  Left = 1
                  Top = 1
                  Width = 475
                  Height = 249
                  Align = alClient
                  BorderStyle = bsNone
                  Color = clWhite
                  DataSource = DSSQLEntrada
                  FixedColor = 10053171
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Options = [dgTitles, dgIndicator, dgColLines, dgRowLines]
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWhite
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = []
                  OnDrawColumnCell = DBGridListaDrawColumnCell
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'LMENA15NRONF'
                      Title.Font.Charset = DEFAULT_CHARSET
                      Title.Font.Color = clWhite
                      Title.Font.Height = -11
                      Title.Font.Name = 'Tahoma'
                      Title.Font.Style = [fsBold]
                      Width = 108
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'LMENDDTNF'
                      Title.Font.Charset = DEFAULT_CHARSET
                      Title.Font.Color = clWhite
                      Title.Font.Height = -11
                      Title.Font.Name = 'Tahoma'
                      Title.Font.Style = [fsBold]
                      Width = 90
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'TANQICOD'
                      Title.Font.Charset = DEFAULT_CHARSET
                      Title.Font.Color = clWhite
                      Title.Font.Height = -11
                      Title.Font.Name = 'Tahoma'
                      Title.Font.Style = [fsBold]
                      Width = 95
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'LMENN2QTE'
                      Title.Font.Charset = DEFAULT_CHARSET
                      Title.Font.Color = clWhite
                      Title.Font.Height = -11
                      Title.Font.Name = 'Tahoma'
                      Title.Font.Style = [fsBold]
                      Width = 131
                      Visible = True
                    end>
                end
              end
              object EditTotalRecebido: TEdit
                Left = 482
                Top = 191
                Width = 146
                Height = 19
                Ctl3D = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 3
              end
              object EditTotalRecebidoDisponivel: TEdit
                Left = 482
                Top = 262
                Width = 146
                Height = 19
                Ctl3D = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 4
              end
              object EditEstoqueRecebidoAbertura: TEdit
                Left = 481
                Top = 121
                Width = 146
                Height = 19
                Ctl3D = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 5
              end
            end
            object TabVolVendido: TTabSheet
              Caption = 'TabVolVendido'
              ImageIndex = 3
              OnEnter = TabVolVendidoEnter
              object LabelInform: TLabel
                Left = 488
                Top = 104
                Width = 157
                Height = 229
                AutoSize = False
                Caption = 'Informa'#231#227'o de Tanque/Bomba'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                WordWrap = True
              end
              object Panel7: TPanel
                Left = 0
                Top = 0
                Width = 652
                Height = 32
                Align = alTop
                Alignment = taLeftJustify
                Caption = '  Volume Vendido'
                Color = 10053171
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -21
                Font.Name = 'Times New Roman'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
              object Panel12: TPanel
                Left = 0
                Top = 32
                Width = 652
                Height = 54
                Align = alTop
                Color = 15461355
                TabOrder = 1
                object BTSaidaNovo: TBitBtn
                  Left = 478
                  Top = 23
                  Width = 50
                  Height = 21
                  Caption = 'Novo'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  OnClick = BTSaidaNovoClick
                end
                object BTSaidaGravar: TBitBtn
                  Left = 528
                  Top = 23
                  Width = 50
                  Height = 21
                  Caption = 'Gravar'
                  Enabled = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                  OnClick = BTSaidaGravarClick
                end
                object BTSaidaExcluir: TBitBtn
                  Left = 578
                  Top = 23
                  Width = 50
                  Height = 21
                  Caption = 'Excluir'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 3
                  OnClick = BTSaidaExcluirClick
                end
                object PanelVendido: TPanel
                  Left = 1
                  Top = 1
                  Width = 472
                  Height = 52
                  Align = alLeft
                  BevelOuter = bvNone
                  Color = 15461355
                  Enabled = False
                  TabOrder = 1
                  object Label23: TLabel
                    Left = 100
                    Top = 11
                    Width = 61
                    Height = 13
                    Caption = 'Nro Bomba'
                    FocusControl = DBEdit7
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label24: TLabel
                    Left = 209
                    Top = 11
                    Width = 70
                    Height = 13
                    Caption = 'Fechamento'
                    FocusControl = DBEdit4
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label22: TLabel
                    Left = 293
                    Top = 11
                    Width = 51
                    Height = 13
                    Caption = 'Abertura'
                    FocusControl = DBEdit4
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label25: TLabel
                    Left = 377
                    Top = 11
                    Width = 53
                    Height = 13
                    Caption = 'Aferi'#231#245'es'
                    FocusControl = DBEdit4
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label21: TLabel
                    Left = 16
                    Top = 11
                    Width = 64
                    Height = 13
                    Caption = 'Nro Tanque'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object DBEdit7: TDBEdit
                    Left = 97
                    Top = 24
                    Width = 80
                    Height = 21
                    DataField = 'BOMBICOD'
                    DataSource = DSSQLSaida
                    TabOrder = 1
                  end
                  object EvDBNumEdit2: TEvDBNumEdit
                    Left = 206
                    Top = 24
                    Width = 80
                    Height = 21
                    AutoHideCalculator = False
                    DataField = 'LMSAN2FECHAME'
                    DataSource = DSSQLSaida
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
                    ShowSeparator = False
                    TabOrder = 2
                    OnEnter = EvDBNumEdit2Enter
                  end
                  object EvDBNumEdit3: TEvDBNumEdit
                    Left = 290
                    Top = 24
                    Width = 80
                    Height = 21
                    TabStop = False
                    AutoHideCalculator = False
                    DataField = 'LMSAN2ABERTUR'
                    DataSource = DSSQLSaida
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
                    ReadOnly = True
                    ShowSeparator = False
                    TabOrder = 3
                    OnExit = EvDBNumEdit3Exit
                  end
                  object EvDBNumEdit4: TEvDBNumEdit
                    Left = 374
                    Top = 24
                    Width = 80
                    Height = 21
                    AutoHideCalculator = False
                    DataField = 'LMSAN2AFERIR'
                    DataSource = DSSQLSaida
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
                    ShowSeparator = False
                    TabOrder = 4
                    OnExit = EvDBNumEdit4Exit
                  end
                  object DBEdit8: TDBEdit
                    Left = 16
                    Top = 24
                    Width = 73
                    Height = 21
                    DataField = 'TANQICOD'
                    DataSource = DSSQLSaida
                    TabOrder = 0
                  end
                end
              end
              object Panel13: TPanel
                Left = 0
                Top = 86
                Width = 477
                Height = 251
                Align = alLeft
                Color = 12572888
                TabOrder = 2
                object DBGrid1: TDBGrid
                  Left = 1
                  Top = 1
                  Width = 475
                  Height = 249
                  Align = alClient
                  BorderStyle = bsNone
                  Color = clWhite
                  DataSource = DSSQLSaida
                  FixedColor = 10053171
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Options = [dgTitles, dgIndicator, dgColLines, dgRowLines]
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWhite
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = []
                  OnDrawColumnCell = DBGridListaDrawColumnCell
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'TANQICOD'
                      Title.Font.Charset = DEFAULT_CHARSET
                      Title.Font.Color = clWhite
                      Title.Font.Height = -11
                      Title.Font.Name = 'Tahoma'
                      Title.Font.Style = [fsBold]
                      Width = 45
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'BOMBICOD'
                      Title.Font.Charset = DEFAULT_CHARSET
                      Title.Font.Color = clWhite
                      Title.Font.Height = -11
                      Title.Font.Name = 'Tahoma'
                      Title.Font.Style = [fsBold]
                      Width = 43
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'LMSAN2FECHAME'
                      Title.Font.Charset = DEFAULT_CHARSET
                      Title.Font.Color = clWhite
                      Title.Font.Height = -11
                      Title.Font.Name = 'Tahoma'
                      Title.Font.Style = [fsBold]
                      Width = 88
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'LMSAN2ABERTUR'
                      Title.Font.Charset = DEFAULT_CHARSET
                      Title.Font.Color = clWhite
                      Title.Font.Height = -11
                      Title.Font.Name = 'Tahoma'
                      Title.Font.Style = [fsBold]
                      Width = 94
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'LMSAN2AFERIR'
                      Title.Font.Charset = DEFAULT_CHARSET
                      Title.Font.Color = clWhite
                      Title.Font.Height = -11
                      Title.Font.Name = 'Tahoma'
                      Title.Font.Style = [fsBold]
                      Width = 89
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'QtdeVendaBico'
                      Title.Caption = 'Vendas Bico'
                      Title.Font.Charset = DEFAULT_CHARSET
                      Title.Font.Color = clWhite
                      Title.Font.Height = -11
                      Title.Font.Name = 'Tahoma'
                      Title.Font.Style = [fsBold]
                      Visible = True
                    end>
                end
              end
            end
            object TabFechamento: TTabSheet
              Caption = 'TabFechamento'
              ImageIndex = 4
              OnEnter = BTCalcularFechamentoClick
              OnShow = TabSheetDadosPrincipaisShow
              object Label39: TLabel
                Left = 8
                Top = 284
                Width = 475
                Height = 13
                Caption = 
                  'Para informar Perdas ou Sobras, altere o  valor da Concilia'#231#227'o d' +
                  'e Estoque do tanque.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Panel8: TPanel
                Left = 0
                Top = 0
                Width = 652
                Height = 32
                Align = alTop
                Alignment = taLeftJustify
                Caption = '  Fechamento do dia'
                Color = 10053171
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -21
                Font.Name = 'Times New Roman'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
              object VendaBicos: TGroupBox
                Left = 7
                Top = 48
                Width = 185
                Height = 44
                Caption = ' Qtde Total vendas nos bicos '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                object EvDBNumEdit5: TEvDBNumEdit
                  Left = 10
                  Top = 16
                  Width = 162
                  Height = 21
                  TabStop = False
                  AutoHideCalculator = False
                  Ctl3D = True
                  DataField = 'LMCAN2QTDVENDIA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
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
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                end
              end
              object GroupBox2: TGroupBox
                Left = 226
                Top = 49
                Width = 185
                Height = 44
                Caption = ' Estoque Escritural '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                object EvDBNumEdit6: TEvDBNumEdit
                  Left = 10
                  Top = 16
                  Width = 162
                  Height = 21
                  TabStop = False
                  AutoHideCalculator = False
                  Ctl3D = True
                  DataField = 'LMCAN2ESTESCRIT'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
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
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                end
              end
              object GroupBox3: TGroupBox
                Left = 445
                Top = 48
                Width = 185
                Height = 44
                Caption = ' Estoque Fechamento '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
                object EvDBNumEdit7: TEvDBNumEdit
                  Left = 10
                  Top = 16
                  Width = 162
                  Height = 21
                  TabStop = False
                  AutoHideCalculator = False
                  Ctl3D = True
                  DataField = 'LMCAN2ESTFECHAM'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
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
                  ReadOnly = True
                  TabOrder = 0
                end
              end
              object GroupBox4: TGroupBox
                Left = 7
                Top = 101
                Width = 185
                Height = 44
                Caption = ' Valor das Vendas '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 4
                object EvDBNumEdit8: TEvDBNumEdit
                  Left = 10
                  Top = 16
                  Width = 162
                  Height = 21
                  TabStop = False
                  AutoHideCalculator = False
                  Ctl3D = True
                  DataField = 'LMCAN2VLRVENDIA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
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
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                end
              end
              object GroupBox5: TGroupBox
                Left = 227
                Top = 102
                Width = 185
                Height = 44
                Caption = ' Valor Acumulado '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 5
                object EvDBNumEdit9: TEvDBNumEdit
                  Left = 10
                  Top = 16
                  Width = 162
                  Height = 21
                  TabStop = False
                  AutoHideCalculator = False
                  Ctl3D = True
                  DataField = 'LMCAN2VLRACUMES'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
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
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                end
              end
              object GroupBox6: TGroupBox
                Left = 446
                Top = 101
                Width = 185
                Height = 44
                Caption = '(+) Perdas   /  (-) Sobras '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 6
                object EditPerdasSobras: TEvDBNumEdit
                  Left = 10
                  Top = 16
                  Width = 162
                  Height = 21
                  TabStop = False
                  AutoHideCalculator = False
                  Ctl3D = True
                  DataField = 'LMCAN2VLRPERDSOB'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
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
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                end
              end
              object GroupBox7: TGroupBox
                Left = 7
                Top = 151
                Width = 625
                Height = 127
                Caption = ' Concilia'#231#227'o de Estoques '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 7
                object Label26: TLabel
                  Left = 18
                  Top = 30
                  Width = 30
                  Height = 13
                  Caption = 'Tq N'#186
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label27: TLabel
                  Left = 119
                  Top = 30
                  Width = 30
                  Height = 13
                  Caption = 'Tq N'#186
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label28: TLabel
                  Left = 220
                  Top = 30
                  Width = 30
                  Height = 13
                  Caption = 'Tq N'#186
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label29: TLabel
                  Left = 323
                  Top = 30
                  Width = 30
                  Height = 13
                  Caption = 'Tq N'#186
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label30: TLabel
                  Left = 424
                  Top = 30
                  Width = 30
                  Height = 13
                  Caption = 'Tq N'#186
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label31: TLabel
                  Left = 527
                  Top = 30
                  Width = 30
                  Height = 13
                  Caption = 'Tq N'#186
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label33: TLabel
                  Left = 16
                  Top = 78
                  Width = 84
                  Height = 13
                  Caption = 'Perdas/Sobras'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label34: TLabel
                  Left = 117
                  Top = 78
                  Width = 84
                  Height = 13
                  Caption = 'Perdas/Sobras'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label35: TLabel
                  Left = 218
                  Top = 78
                  Width = 84
                  Height = 13
                  Caption = 'Perdas/Sobras'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label36: TLabel
                  Left = 321
                  Top = 78
                  Width = 84
                  Height = 13
                  Caption = 'Perdas/Sobras'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label37: TLabel
                  Left = 422
                  Top = 78
                  Width = 84
                  Height = 13
                  Caption = 'Perdas/Sobras'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label38: TLabel
                  Left = 525
                  Top = 78
                  Width = 84
                  Height = 13
                  Caption = 'Perdas/Sobras'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Edit7: TEdit
                  Left = 52
                  Top = 25
                  Width = 47
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                end
                object Edit8: TEdit
                  Left = 153
                  Top = 25
                  Width = 46
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 1
                end
                object Edit9: TEdit
                  Left = 254
                  Top = 25
                  Width = 46
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 2
                end
                object Edit10: TEdit
                  Left = 357
                  Top = 25
                  Width = 45
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 3
                end
                object Edit11: TEdit
                  Left = 458
                  Top = 25
                  Width = 45
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 4
                end
                object Edit12: TEdit
                  Left = 561
                  Top = 25
                  Width = 44
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 5
                end
                object EvDBNumEdit10: TEvDBNumEdit
                  Left = 17
                  Top = 49
                  Width = 83
                  Height = 21
                  AutoHideCalculator = False
                  Ctl3D = True
                  DataField = 'LMCAN2TQF1'
                  DataSource = DSTemplate
                  Enabled = False
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
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 6
                  OnEnter = EvDBNumEdit10Enter
                  OnExit = EvDBNumEdit10Exit
                end
                object EvDBNumEdit11: TEvDBNumEdit
                  Left = 118
                  Top = 49
                  Width = 83
                  Height = 21
                  AutoHideCalculator = False
                  Ctl3D = True
                  DataField = 'LMCAN2TQF2'
                  DataSource = DSTemplate
                  Enabled = False
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
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 7
                  OnEnter = EvDBNumEdit10Enter
                  OnExit = EvDBNumEdit10Exit
                end
                object EvDBNumEdit12: TEvDBNumEdit
                  Left = 219
                  Top = 49
                  Width = 83
                  Height = 21
                  AutoHideCalculator = False
                  Ctl3D = True
                  DataField = 'LMCAN2TQF3'
                  DataSource = DSTemplate
                  Enabled = False
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
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 8
                  OnEnter = EvDBNumEdit10Enter
                  OnExit = EvDBNumEdit10Exit
                end
                object EvDBNumEdit13: TEvDBNumEdit
                  Left = 321
                  Top = 49
                  Width = 83
                  Height = 21
                  AutoHideCalculator = False
                  Ctl3D = True
                  DataField = 'LMCAN2TQF4'
                  DataSource = DSTemplate
                  Enabled = False
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
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 9
                  OnEnter = EvDBNumEdit10Enter
                  OnExit = EvDBNumEdit10Exit
                end
                object EvDBNumEdit14: TEvDBNumEdit
                  Left = 422
                  Top = 49
                  Width = 83
                  Height = 21
                  AutoHideCalculator = False
                  Ctl3D = True
                  DataField = 'LMCAN2TQF5'
                  DataSource = DSTemplate
                  Enabled = False
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
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 10
                  OnEnter = EvDBNumEdit10Enter
                  OnExit = EvDBNumEdit10Exit
                end
                object EvDBNumEdit15: TEvDBNumEdit
                  Left = 524
                  Top = 49
                  Width = 83
                  Height = 21
                  AutoHideCalculator = False
                  Ctl3D = True
                  DataField = 'LMCAN2TQF6'
                  DataSource = DSTemplate
                  Enabled = False
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
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 11
                  OnEnter = EvDBNumEdit10Enter
                  OnExit = EvDBNumEdit10Exit
                end
                object EvDBNumEdit16: TEvDBNumEdit
                  Left = 17
                  Top = 93
                  Width = 83
                  Height = 21
                  AutoHideCalculator = False
                  Color = clInactiveCaptionText
                  Ctl3D = True
                  DataField = 'LMCAN2TQSBR1'
                  DataSource = DSTemplate
                  Enabled = False
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
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 12
                  OnEnter = EvDBNumEdit10Enter
                end
                object EvDBNumEdit17: TEvDBNumEdit
                  Left = 118
                  Top = 93
                  Width = 83
                  Height = 21
                  AutoHideCalculator = False
                  Color = clInactiveCaptionText
                  Ctl3D = True
                  DataField = 'LMCAN2TQSBR2'
                  DataSource = DSTemplate
                  Enabled = False
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
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 13
                end
                object EvDBNumEdit18: TEvDBNumEdit
                  Left = 219
                  Top = 93
                  Width = 83
                  Height = 21
                  AutoHideCalculator = False
                  Color = clInactiveCaptionText
                  Ctl3D = True
                  DataField = 'LMCAN2TQSBR3'
                  DataSource = DSTemplate
                  Enabled = False
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
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 14
                end
                object EvDBNumEdit19: TEvDBNumEdit
                  Left = 321
                  Top = 93
                  Width = 83
                  Height = 21
                  AutoHideCalculator = False
                  Color = clInactiveCaptionText
                  Ctl3D = True
                  DataField = 'LMCAN2TQSBR4'
                  DataSource = DSTemplate
                  Enabled = False
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
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 15
                end
                object EvDBNumEdit20: TEvDBNumEdit
                  Left = 422
                  Top = 93
                  Width = 83
                  Height = 21
                  AutoHideCalculator = False
                  Color = clInactiveCaptionText
                  Ctl3D = True
                  DataField = 'LMCAN2TQSBR5'
                  DataSource = DSTemplate
                  Enabled = False
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
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 16
                end
                object EvDBNumEdit21: TEvDBNumEdit
                  Left = 524
                  Top = 93
                  Width = 83
                  Height = 21
                  AutoHideCalculator = False
                  Color = clInactiveCaptionText
                  Ctl3D = True
                  DataField = 'LMCAN2TQSBR6'
                  DataSource = DSTemplate
                  Enabled = False
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
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 17
                end
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 77
            Height = 9
          end
          inherited PanelCodigoDescricao: TPanel
            Height = 77
            object Label1: TLabel
              Left = 9
              Top = 3
              Width = 49
              Height = 13
              Caption = 'Empresa'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 529
              Top = 3
              Width = 27
              Height = 13
              Caption = 'Data'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 9
              Top = 40
              Width = 70
              Height = 13
              Caption = 'Combust'#237'vel'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 527
              Top = 40
              Width = 70
              Height = 13
              Caption = 'Pre'#231'o Venda'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label5: TLabel
              Left = 406
              Top = 3
              Width = 28
              Height = 13
              Caption = 'Livro'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label13: TLabel
              Left = 464
              Top = 3
              Width = 38
              Height = 13
              Caption = 'P'#225'gina'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 10
              Top = 16
              Width = 64
              Height = 21
              DataField = 'EMPRICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBData: TDBDateEdit
              Left = 525
              Top = 16
              Width = 89
              Height = 21
              DataField = 'LMCADDTMOV'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              NumGlyphs = 2
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit4: TDBEdit
              Left = 7
              Top = 53
              Width = 63
              Height = 21
              DataField = 'PRODICOD'
              DataSource = DSTemplate
              TabOrder = 3
            end
            object ComboProduto: TRxDBLookupCombo
              Left = 73
              Top = 53
              Width = 446
              Height = 21
              DropDownCount = 8
              DataField = 'PRODICOD'
              DataSource = DSTemplate
              DisplayEmpty = '...'
              LookupField = 'PRODICOD'
              LookupDisplay = 'PRODA60DESCR'
              LookupSource = DSSQLProduto
              TabOrder = 4
              OnExit = ComboProdutoExit
            end
            object DBEditVlrVenda: TEvDBNumEdit
              Left = 524
              Top = 53
              Width = 90
              Height = 21
              TabStop = False
              AutoHideCalculator = False
              DataField = 'LMCAN2PRECODIA'
              DataSource = DSTemplate
              Decimals = 3
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
              TabOrder = 5
            end
            object ComboEmpresa: TRxDBLookupCombo
              Left = 73
              Top = 16
              Width = 326
              Height = 21
              DropDownCount = 8
              DataField = 'EMPRICOD'
              DataSource = DSTemplate
              DisplayEmpty = '...'
              LookupField = 'EMPRICOD'
              LookupDisplay = 'EMPRA60RAZAOSOC'
              LookupSource = DSSQLEmpresa
              TabOrder = 1
              OnExit = ComboEmpresaExit
            end
            object DBEdit2: TDBEdit
              Left = 403
              Top = 16
              Width = 55
              Height = 21
              TabStop = False
              Color = 12572888
              DataField = 'LILMICOD'
              DataSource = DSTemplate
              ReadOnly = True
              TabOrder = 6
            end
            object DBEdit3: TDBEdit
              Left = 461
              Top = 16
              Width = 56
              Height = 21
              TabStop = False
              Color = 12572888
              DataField = 'LMCAIPAGATUAL'
              DataSource = DSTemplate
              ReadOnly = True
              TabOrder = 7
            end
          end
        end
      end
    end
  end
  inherited PopupMenuImpressao: TPopupMenu
    object LivroLMC1: TMenuItem
      Caption = 'Livro LMC'
      OnClick = LivroLMC1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Movimentao1: TMenuItem
      Caption = 'Movimenta'#231#227'o no Per'#237'odo'
      OnClick = Movimentao1Click
    end
  end
  inherited SQLTemplate: TRxQuery
    AfterCancel = SQLTemplateAfterCancel
    SQL.Strings = (
      'Select * From LMCCAB Where (%MFiltro)')
    object SQLTemplateEMPRICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.LMCCAB.EMPRICOD'
    end
    object SQLTemplateLILMICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Livro'
      FieldName = 'LILMICOD'
      Origin = 'DB.LMCCAB.LILMICOD'
    end
    object SQLTemplateLMCAIPAGATUAL: TIntegerField
      DisplayLabel = 'P'#225'gina'
      FieldName = 'LMCAIPAGATUAL'
      Origin = 'DB.LMCCAB.LMCAIPAGATUAL'
    end
    object SQLTemplateLMCADDTMOV: TDateTimeField
      DisplayLabel = 'Dt.Movimento'
      FieldName = 'LMCADDTMOV'
      Origin = 'DB.LMCCAB.LMCADDTMOV'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplatePRODICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'PRODICOD'
      Origin = 'DB.LMCCAB.PRODICOD'
    end
    object SQLTemplateLMCAN2PRECODIA: TBCDField
      DisplayLabel = 'Pre'#231'o Dia'
      FieldName = 'LMCAN2PRECODIA'
      Origin = 'DB.LMCCAB.LMCAN2PRECODIA'
      Precision = 15
      Size = 3
    end
    object SQLTemplateLMCAN2TQI1: TBCDField
      DisplayLabel = 'Qtd Tnq 1'
      FieldName = 'LMCAN2TQI1'
      Origin = 'DB.LMCCAB.LMCAN2TQI1'
      Precision = 15
      Size = 2
    end
    object SQLTemplateLMCAN2TQI2: TBCDField
      DisplayLabel = 'Qtd Tnq 2'
      FieldName = 'LMCAN2TQI2'
      Origin = 'DB.LMCCAB.LMCAN2TQI2'
      Precision = 15
      Size = 2
    end
    object SQLTemplateLMCAN2TQI3: TBCDField
      DisplayLabel = 'Qtd Tnq 3'
      FieldName = 'LMCAN2TQI3'
      Origin = 'DB.LMCCAB.LMCAN2TQI3'
      Precision = 15
      Size = 2
    end
    object SQLTemplateLMCAN2TQI4: TBCDField
      DisplayLabel = 'Qtd Tnq 4'
      FieldName = 'LMCAN2TQI4'
      Origin = 'DB.LMCCAB.LMCAN2TQI4'
      Precision = 15
      Size = 2
    end
    object SQLTemplateLMCAN2TQI5: TBCDField
      DisplayLabel = 'Qtd Tnq 5'
      FieldName = 'LMCAN2TQI5'
      Origin = 'DB.LMCCAB.LMCAN2TQI5'
      Precision = 15
      Size = 2
    end
    object SQLTemplateLMCAN2TQI6: TBCDField
      DisplayLabel = 'Qtd Tnq 6'
      FieldName = 'LMCAN2TQI6'
      Origin = 'DB.LMCCAB.LMCAN2TQI6'
      Precision = 15
      Size = 2
    end
    object SQLTemplateLMCAN2TQF1: TBCDField
      DisplayLabel = 'Fecha Tnq 1'
      FieldName = 'LMCAN2TQF1'
      Origin = 'DB.LMCCAB.LMCAN2TQF1'
      Precision = 15
      Size = 2
    end
    object SQLTemplateLMCAN2TQF2: TBCDField
      DisplayLabel = 'Fecha Tnq 2'
      FieldName = 'LMCAN2TQF2'
      Origin = 'DB.LMCCAB.LMCAN2TQF2'
      Precision = 15
      Size = 2
    end
    object SQLTemplateLMCAN2TQF3: TBCDField
      DisplayLabel = 'Fecha Tnq 3'
      FieldName = 'LMCAN2TQF3'
      Origin = 'DB.LMCCAB.LMCAN2TQF3'
      Precision = 15
      Size = 2
    end
    object SQLTemplateLMCAN2TQF4: TBCDField
      DisplayLabel = 'Fecha Tnq 4'
      FieldName = 'LMCAN2TQF4'
      Origin = 'DB.LMCCAB.LMCAN2TQF4'
      Precision = 15
      Size = 2
    end
    object SQLTemplateLMCAN2TQF5: TBCDField
      DisplayLabel = 'Fecha Tnq 5'
      FieldName = 'LMCAN2TQF5'
      Origin = 'DB.LMCCAB.LMCAN2TQF5'
      Precision = 15
      Size = 2
    end
    object SQLTemplateLMCAN2TQF6: TBCDField
      DisplayLabel = 'Fecha Tnq 6'
      FieldName = 'LMCAN2TQF6'
      Origin = 'DB.LMCCAB.LMCAN2TQF6'
      Precision = 15
      Size = 2
    end
    object SQLTemplateLMCAN2VLRACUMES: TBCDField
      DisplayLabel = 'Acumulado'
      FieldName = 'LMCAN2VLRACUMES'
      Origin = 'DB.LMCCAB.LMCAN2VLRACUMES'
      Precision = 15
      Size = 2
    end
    object SQLTemplateLMCAN2VLRPERDSOB: TBCDField
      DisplayLabel = 'Perdas/Sobras'
      FieldName = 'LMCAN2VLRPERDSOB'
      Origin = 'DB.LMCCAB.LMCAN2VLRPERDSOB'
      Precision = 15
      Size = 2
    end
    object SQLTemplateLMCAA100OBS: TStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'LMCAA100OBS'
      Origin = 'DB.LMCCAB.LMCAA100OBS'
      FixedChar = True
      Size = 100
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.LMCCAB.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.LMCCAB.REGISTRO'
    end
    object SQLTemplateLMCAN2QTDVENDIA: TBCDField
      DisplayLabel = 'Qtd Vendida'
      FieldName = 'LMCAN2QTDVENDIA'
      Origin = 'DB.LMCCAB.LMCAN2QTDVENDIA'
      Precision = 15
      Size = 2
    end
    object SQLTemplateLMCAN2ESTESCRIT: TBCDField
      DisplayLabel = 'Estoque Escr.'
      FieldName = 'LMCAN2ESTESCRIT'
      Origin = 'DB.LMCCAB.LMCAN2ESTESCRIT'
      Precision = 15
      Size = 2
    end
    object SQLTemplateLMCAN2ESTFECHAM: TBCDField
      DisplayLabel = 'Est.Fechamento'
      FieldName = 'LMCAN2ESTFECHAM'
      Origin = 'DB.LMCCAB.LMCAN2ESTFECHAM'
      Precision = 15
      Size = 2
    end
    object SQLTemplateLMCAN2VLRVENDIA: TBCDField
      DisplayLabel = 'R$ Venda'
      FieldName = 'LMCAN2VLRVENDIA'
      Origin = 'DB.LMCCAB.LMCAN2VLRVENDIA'
      Precision = 15
      Size = 2
    end
    object SQLTemplateLMCAN2TQSBR1: TBCDField
      DisplayLabel = 'Sobra Tnq 1'
      FieldName = 'LMCAN2TQSBR1'
      Origin = 'DB.LMCCAB.LMCAN2TQSBR1'
      Precision = 15
      Size = 2
    end
    object SQLTemplateLMCAN2TQSBR2: TBCDField
      DisplayLabel = 'Sobra Tnq 2'
      FieldName = 'LMCAN2TQSBR2'
      Origin = 'DB.LMCCAB.LMCAN2TQSBR2'
      Precision = 15
      Size = 2
    end
    object SQLTemplateLMCAN2TQSBR3: TBCDField
      DisplayLabel = 'Sobra Tnq 3'
      FieldName = 'LMCAN2TQSBR3'
      Origin = 'DB.LMCCAB.LMCAN2TQSBR3'
      Precision = 15
      Size = 2
    end
    object SQLTemplateLMCAN2TQSBR4: TBCDField
      DisplayLabel = 'Sobra Tnq 4'
      FieldName = 'LMCAN2TQSBR4'
      Origin = 'DB.LMCCAB.LMCAN2TQSBR4'
      Precision = 15
      Size = 2
    end
    object SQLTemplateLMCAN2TQSBR5: TBCDField
      DisplayLabel = 'Sobra Tnq 5'
      FieldName = 'LMCAN2TQSBR5'
      Origin = 'DB.LMCCAB.LMCAN2TQSBR5'
      Precision = 15
      Size = 2
    end
    object SQLTemplateLMCAN2TQSBR6: TBCDField
      DisplayLabel = 'Sobra Tnq 6'
      FieldName = 'LMCAN2TQSBR6'
      Origin = 'DB.LMCCAB.LMCAN2TQSBR6'
      Precision = 15
      Size = 2
    end
  end
  inherited ActionList1: TActionList
    inherited actExcluir: TDataSetDelete
      OnExecute = actExcluirExecute
    end
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT PRODICOD, PRODA60DESCR, PRODN3VLRVENDA FROM PRODUTO'
      'ORDER BY PRODA60DESCR')
    Macros = <>
    Left = 540
    Top = 2
    object SQLProdutoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutoPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODN3VLRVENDA: TBCDField
      FieldName = 'PRODN3VLRVENDA'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDA'
      Precision = 15
      Size = 3
    end
  end
  object DSSQLProduto: TDataSource
    DataSet = SQLProduto
    Left = 568
    Top = 2
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT EMPRICOD, EMPRA60RAZAOSOC, EMPRA14CGC, EMPRA20IE FROM EMP' +
        'RESA'
      'ORDER BY EMPRA60RAZAOSOC')
    Macros = <>
    Left = 599
    Top = 2
    object SQLEmpresaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.EMPRESA.EMPRICOD'
    end
    object SQLEmpresaEMPRA60RAZAOSOC: TStringField
      FieldName = 'EMPRA60RAZAOSOC'
      Origin = 'DB.EMPRESA.EMPRA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA14CGC: TStringField
      FieldName = 'EMPRA14CGC'
      Origin = 'DB.EMPRESA.EMPRA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLEmpresaEMPRA20IE: TStringField
      FieldName = 'EMPRA20IE'
      Origin = 'DB.EMPRESA.EMPRA20IE'
      FixedChar = True
    end
  end
  object DSSQLEmpresa: TDataSource
    DataSet = SQLEmpresa
    Left = 627
    Top = 2
  end
  object SQLEntrada: TRxQuery
    OnNewRecord = SQLEntradaNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM LMCENTRADA'
      'Where'
      '(%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 31
    Top = 346
    object SQLEntradaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.LMCENTRADA.EMPRICOD'
    end
    object SQLEntradaLILMICOD: TIntegerField
      FieldName = 'LILMICOD'
      Origin = 'DB.LMCENTRADA.LILMICOD'
    end
    object SQLEntradaLMENIPAGATUAL: TIntegerField
      FieldName = 'LMENIPAGATUAL'
      Origin = 'DB.LMCENTRADA.LMENIPAGATUAL'
    end
    object SQLEntradaLMENDDTMOV: TDateTimeField
      FieldName = 'LMENDDTMOV'
      Origin = 'DB.LMCENTRADA.LMENDDTMOV'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLEntradaPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.LMCENTRADA.PRODICOD'
    end
    object SQLEntradaLMENA15NRONF: TStringField
      DisplayLabel = 'Nto NF.'
      FieldName = 'LMENA15NRONF'
      Origin = 'DB.LMCENTRADA.LMENA15NRONF'
      FixedChar = True
      Size = 15
    end
    object SQLEntradaLMENDDTNF: TDateTimeField
      DisplayLabel = 'Data NF'
      FieldName = 'LMENDDTNF'
      Origin = 'DB.LMCENTRADA.LMENDDTNF'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLEntradaTANQICOD: TIntegerField
      DisplayLabel = 'Tanque'
      FieldName = 'TANQICOD'
      Origin = 'DB.LMCENTRADA.TANQICOD'
    end
    object SQLEntradaLMENN2QTE: TBCDField
      DisplayLabel = 'Volume'
      FieldName = 'LMENN2QTE'
      Origin = 'DB.LMCENTRADA.LMENN2QTE'
      Precision = 15
      Size = 2
    end
    object SQLEntradaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.LMCENTRADA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLEntradaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.LMCENTRADA.REGISTRO'
    end
  end
  object DSSQLEntrada: TDataSource
    DataSet = SQLEntrada
    Left = 59
    Top = 346
  end
  object SQLTotalRecebido: TRxQuery
    OnNewRecord = SQLEntradaNewRecord
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT SUM(LMENN2QTE) FROM LMCENTRADA'
      'Where'
      '(%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 31
    Top = 377
    object SQLTotalRecebidoSUM: TBCDField
      FieldName = 'SUM'
      Origin = 'DB.LMCENTRADA.LMENN2QTE'
      Precision = 15
      Size = 2
    end
  end
  object DSSQLSaida: TDataSource
    DataSet = SQLSaida
    Left = 59
    Top = 424
  end
  object SQLSaida: TRxQuery
    OnCalcFields = SQLSaidaCalcFields
    OnNewRecord = SQLSaidaNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM LMCSAIDA'
      'Where'
      '(%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 31
    Top = 424
    object SQLSaidaEMPRICOD: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.LMCSAIDA.EMPRICOD'
    end
    object SQLSaidaLILMICOD: TIntegerField
      DisplayLabel = 'Livro'
      FieldName = 'LILMICOD'
      Origin = 'DB.LMCSAIDA.LILMICOD'
    end
    object SQLSaidaLMSAIPAGATUAL: TIntegerField
      DisplayLabel = 'Pg.Atual'
      FieldName = 'LMSAIPAGATUAL'
      Origin = 'DB.LMCSAIDA.LMSAIPAGATUAL'
    end
    object SQLSaidaLMSADDTMOV: TDateTimeField
      FieldName = 'LMSADDTMOV'
      Origin = 'DB.LMCSAIDA.LMSADDTMOV'
    end
    object SQLSaidaPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.LMCSAIDA.PRODICOD'
    end
    object SQLSaidaTANQICOD: TIntegerField
      DisplayLabel = 'Tanque'
      FieldName = 'TANQICOD'
      Origin = 'DB.LMCSAIDA.TANQICOD'
    end
    object SQLSaidaBOMBICOD: TIntegerField
      DisplayLabel = 'Bomba'
      FieldName = 'BOMBICOD'
      Origin = 'DB.LMCSAIDA.BOMBICOD'
    end
    object SQLSaidaLMSAN2FECHAME: TBCDField
      DisplayLabel = 'Fechamento'
      FieldName = 'LMSAN2FECHAME'
      Origin = 'DB.LMCSAIDA.LMSAN2FECHAME'
      Precision = 15
      Size = 2
    end
    object SQLSaidaLMSAN2ABERTUR: TBCDField
      DisplayLabel = 'Abertura'
      FieldName = 'LMSAN2ABERTUR'
      Origin = 'DB.LMCSAIDA.LMSAN2ABERTUR'
      Precision = 15
      Size = 2
    end
    object SQLSaidaLMSAN2AFERIR: TBCDField
      DisplayLabel = 'Aferi'#231#245'es'
      FieldName = 'LMSAN2AFERIR'
      Origin = 'DB.LMCSAIDA.LMSAN2AFERIR'
      Precision = 15
      Size = 2
    end
    object SQLSaidaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.LMCSAIDA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLSaidaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.LMCSAIDA.REGISTRO'
    end
    object SQLSaidaQtdeVendaBico: TFloatField
      FieldKind = fkCalculated
      FieldName = 'QtdeVendaBico'
      Calculated = True
    end
  end
  object SQLTotalRecebidoPorTanque: TRxQuery
    OnNewRecord = SQLEntradaNewRecord
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT SUM(LMENN2QTE) FROM LMCENTRADA'
      'Where'
      '(%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 60
    Top = 377
    object SQLTotalRecebidoPorTanqueSUM: TBCDField
      FieldName = 'SUM'
      Origin = 'DB.LMCENTRADA.LMENN2QTE'
      Precision = 15
      Size = 2
    end
  end
  object SQLLMCCABAcumaladoMes: TRxQuery
    OnCalcFields = SQLSaidaCalcFields
    OnNewRecord = SQLSaidaNewRecord
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT SUM(LMCAN2VLRVENDIA) FROM LMCCAB'
      'Where'
      '(%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 31
    Top = 453
    object SQLLMCCABAcumaladoMesSUM: TBCDField
      FieldName = 'SUM'
      Origin = 'DB.LMCCAB.LMCAN2VLRVENDIA'
      Precision = 15
      Size = 2
    end
  end
  object DSSQLLivro: TDataSource
    DataSet = SQLLivro
    Left = 688
    Top = 2
  end
  object SQLLivro: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM LivroLMC'
      'Where'
      '(%MFiltro)')
    UpdateObject = UpdateLivro
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 660
    Top = 2
    object SQLLivroEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.LIVROLMC.EMPRICOD'
    end
    object SQLLivroLILMICOD: TIntegerField
      FieldName = 'LILMICOD'
      Origin = 'DB.LIVROLMC.LILMICOD'
    end
    object SQLLivroLILMIPAGATUAL: TIntegerField
      FieldName = 'LILMIPAGATUAL'
      Origin = 'DB.LIVROLMC.LILMIPAGATUAL'
    end
    object SQLLivroLILMIPAGMAX: TIntegerField
      FieldName = 'LILMIPAGMAX'
      Origin = 'DB.LIVROLMC.LILMIPAGMAX'
    end
    object SQLLivroLILMDDTABERT: TDateTimeField
      FieldName = 'LILMDDTABERT'
      Origin = 'DB.LIVROLMC.LILMDDTABERT'
    end
    object SQLLivroLILMDDTFECHA: TDateTimeField
      FieldName = 'LILMDDTFECHA'
      Origin = 'DB.LIVROLMC.LILMDDTFECHA'
    end
    object SQLLivroPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.LIVROLMC.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLLivroREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.LIVROLMC.REGISTRO'
    end
  end
  object RDprint: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = True
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 10
    Margens.Bottom = 10
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'Vanderlei Matte'
    RegistroUsuario.SerieProduto = 'SINGLE-1206/01012'
    RegistroUsuario.AutorizacaoKey = 'WUKQ-4652-CKDL-2083-NXEO'
    About = 'RDprint 4.0d - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = 'Rdprint Setup'
    TitulodoRelatorio = 'Gerado por RDprint'
    UsaGerenciadorImpr = False
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Grafico
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERICO=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox padr'#227'o PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    PortaComunicacao = 'LPT1'
    MostrarProgresso = True
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S12cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 738
    Top = 455
  end
  object UpdateLivro: TUpdateSQL
    ModifySQL.Strings = (
      'update LivroLMC'
      'set'
      '  EMPRICOD = :EMPRICOD,'
      '  LILMICOD = :LILMICOD,'
      '  LILMIPAGATUAL = :LILMIPAGATUAL,'
      '  LILMIPAGMAX = :LILMIPAGMAX,'
      '  LILMDDTABERT = :LILMDDTABERT,'
      '  LILMDDTFECHA = :LILMDDTFECHA,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO'
      'where'
      '  EMPRICOD = :OLD_EMPRICOD and'
      '  LILMICOD = :OLD_LILMICOD')
    InsertSQL.Strings = (
      'insert into LivroLMC'
      
        '  (EMPRICOD, LILMICOD, LILMIPAGATUAL, LILMIPAGMAX, LILMDDTABERT,' +
        ' '
      'LILMDDTFECHA, '
      '   PENDENTE, REGISTRO)'
      'values'
      
        '  (:EMPRICOD, :LILMICOD, :LILMIPAGATUAL, :LILMIPAGMAX, :LILMDDTA' +
        'BERT, '
      ':LILMDDTFECHA, '
      '   :PENDENTE, :REGISTRO)')
    DeleteSQL.Strings = (
      'delete from LivroLMC'
      'where'
      '  EMPRICOD = :OLD_EMPRICOD and'
      '  LILMICOD = :OLD_LILMICOD')
    Left = 720
    Top = 4
  end
  object RxQuery: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 476
    Top = 4
  end
end
