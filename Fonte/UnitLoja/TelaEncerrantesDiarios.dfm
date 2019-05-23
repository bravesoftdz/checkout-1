inherited FormTelaEncerranteDiario: TFormTelaEncerranteDiario
  Left = 240
  Top = 118
  Width = 1008
  Height = 556
  Caption = 'Digita'#231#227'o de Encerrantes Diarios'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 1000
    Height = 522
    inherited PanelCabecalho: TPanel
      Width = 996
      Height = 67
      inherited PanelNavigator: TPanel
        Top = 35
        Width = 996
        inherited Image1: TImage
          Width = 996
        end
        object Label11: TLabel
          Left = 10
          Top = 9
          Width = 27
          Height = 13
          Caption = 'Data'
          FocusControl = Data
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 138
          Top = 9
          Width = 53
          Height = 13
          Caption = 'Operador'
          FocusControl = Data
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object BtnVisualizar: TSpeedButton
          Left = 512
          Top = 4
          Width = 125
          Height = 25
          Cursor = crHandPoint
          Hint = 'Visualizar Relat'#243'rio'
          Caption = ' &Visualizar impress'#227'o'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Margin = 1
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Spacing = 3
          OnClick = BtnVisualizarClick
        end
        object Data: TDateEdit
          Left = 41
          Top = 4
          Width = 86
          Height = 21
          DefaultToday = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          YearDigits = dyFour
          TabOrder = 0
        end
        object ComboOperador: TRxDBLookupCombo
          Left = 198
          Top = 4
          Width = 308
          Height = 21
          DropDownCount = 8
          DisplayEmpty = 'Todos...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'USUAICOD'
          LookupDisplay = 'USUAA60LOGIN'
          LookupSource = DSSQLOperador
          ParentFont = False
          TabOrder = 1
        end
      end
    end
    inherited PanelCentral: TPanel
      Top = 67
      Width = 996
      Height = 451
      inherited PanelBarra: TPanel
        Width = 5
        Height = 451
      end
      object PainelBomba: TPanel
        Left = 42
        Top = 6
        Width = 773
        Height = 236
        Color = 14731440
        TabOrder = 1
        object DBGrigEncerrantesDia: TRxDBGrid
          Left = 1
          Top = 1
          Width = 771
          Height = 234
          Align = alClient
          DataSource = dsEncerrante
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Color = 14731440
              Expanded = False
              FieldName = 'BOMBICOD'
              ReadOnly = True
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 62
              Visible = True
            end
            item
              Color = 14731440
              Expanded = False
              FieldName = 'BombaDescricao'
              ReadOnly = True
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 227
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENDIN2ENCERINI'
              Title.Caption = 'Enc.Inicial'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENDIN2ENCERFIM'
              Title.Caption = 'Enc.Final'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENDIN2AFERICAO'
              Title.Caption = 'Aferi'#231#227'o (-)'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 100
              Visible = True
            end
            item
              Color = 14731440
              Expanded = False
              FieldName = 'Resultado'
              ReadOnly = True
              Title.Caption = 'Resultado (=)'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 100
              Visible = True
            end>
        end
      end
      object Panel1: TPanel
        Left = 98
        Top = 254
        Width = 619
        Height = 181
        Color = 12572888
        TabOrder = 2
        TabStop = True
        object Label1: TLabel
          Left = 175
          Top = 6
          Width = 276
          Height = 20
          Caption = 'Valores para Presta'#231#227'o de Contas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 15
          Top = 40
          Width = 72
          Height = 13
          Caption = 'Valor Moeda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 15
          Top = 63
          Width = 120
          Height = 13
          Caption = 'Valor Cheque a Vista'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 15
          Top = 86
          Width = 113
          Height = 13
          Caption = 'Valor Cheque Prazo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 15
          Top = 111
          Width = 97
          Height = 13
          Caption = 'Valor Nota Prazo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 15
          Top = 134
          Width = 103
          Height = 13
          Caption = 'Valor Nota Avulsa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 15
          Top = 157
          Width = 115
          Height = 13
          Caption = 'Valor Cart'#227'o Cr'#233'dito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 327
          Top = 40
          Width = 65
          Height = 13
          Caption = 'Valor Vales'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 327
          Top = 63
          Width = 103
          Height = 13
          Caption = 'Valor Ordem Frete'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 327
          Top = 86
          Width = 113
          Height = 13
          Caption = 'Valor Outras Saidas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EvDBNumEdit1: TEvDBNumEdit
          Left = 148
          Top = 36
          Width = 133
          Height = 21
          Color = clWhite
          DataField = 'VLRMOEDA'
          DataSource = DSPrestaContas
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
          TabOrder = 0
        end
        object EvDBNumEdit2: TEvDBNumEdit
          Left = 148
          Top = 59
          Width = 133
          Height = 21
          Color = clWhite
          DataField = 'VLRCHVISTA'
          DataSource = DSPrestaContas
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
          TabOrder = 1
        end
        object EvDBNumEdit3: TEvDBNumEdit
          Left = 148
          Top = 83
          Width = 133
          Height = 21
          Color = clWhite
          DataField = 'VLRCHPRAZO'
          DataSource = DSPrestaContas
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
          TabOrder = 2
        end
        object EvDBNumEdit4: TEvDBNumEdit
          Left = 148
          Top = 107
          Width = 133
          Height = 21
          Color = clWhite
          DataField = 'VLRNTPRAZO'
          DataSource = DSPrestaContas
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
          TabOrder = 3
        end
        object EvDBNumEdit5: TEvDBNumEdit
          Left = 148
          Top = 130
          Width = 133
          Height = 21
          Color = clWhite
          DataField = 'VLRNTAVULSO'
          DataSource = DSPrestaContas
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
          TabOrder = 4
        end
        object EvDBNumEdit6: TEvDBNumEdit
          Left = 148
          Top = 153
          Width = 133
          Height = 21
          Color = clWhite
          DataField = 'VLRCARCREDITO'
          DataSource = DSPrestaContas
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
        end
        object EvDBNumEdit7: TEvDBNumEdit
          Left = 444
          Top = 36
          Width = 133
          Height = 21
          Color = clWhite
          DataField = 'VLRVALES'
          DataSource = DSPrestaContas
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
        end
        object EvDBNumEdit8: TEvDBNumEdit
          Left = 444
          Top = 60
          Width = 133
          Height = 21
          Color = clWhite
          DataField = 'VLRORFRE'
          DataSource = DSPrestaContas
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
          TabOrder = 7
        end
        object EvDBNumEdit9: TEvDBNumEdit
          Left = 444
          Top = 83
          Width = 133
          Height = 21
          Color = clWhite
          DataField = 'VLROUTSAIDA'
          DataSource = DSPrestaContas
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
          TabOrder = 8
        end
      end
    end
  end
  object SQLPrestaContas: TRxQuery
    BeforePost = SQLPrestaContasBeforePost
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from PRESTACONTAS'
      'where '
      '  (%MEmpresa) and '
      '  (%MData) and '
      '  (%MUsuario)'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MUsuario'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 574
    Top = 434
    object SQLPrestaContasEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.PRESTACONTAS.EMPRICOD'
    end
    object SQLPrestaContasPRECODATA: TDateTimeField
      FieldName = 'PRECODATA'
      Origin = 'DB.PRESTACONTAS.PRECODATA'
    end
    object SQLPrestaContasUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.PRESTACONTAS.USUAICOD'
    end
    object SQLPrestaContasVLRMOEDA: TBCDField
      FieldName = 'VLRMOEDA'
      Origin = 'DB.PRESTACONTAS.VLRMOEDA'
      Precision = 15
      Size = 2
    end
    object SQLPrestaContasVLRCHPRAZO: TBCDField
      FieldName = 'VLRCHPRAZO'
      Origin = 'DB.PRESTACONTAS.VLRCHPRAZO'
      Precision = 15
      Size = 2
    end
    object SQLPrestaContasVLRNTPRAZO: TBCDField
      FieldName = 'VLRNTPRAZO'
      Origin = 'DB.PRESTACONTAS.VLRNTPRAZO'
      Precision = 15
      Size = 2
    end
    object SQLPrestaContasVLRNTAVULSO: TBCDField
      FieldName = 'VLRNTAVULSO'
      Origin = 'DB.PRESTACONTAS.VLRNTAVULSO'
      Precision = 15
      Size = 2
    end
    object SQLPrestaContasVLRCARCREDITO: TBCDField
      FieldName = 'VLRCARCREDITO'
      Origin = 'DB.PRESTACONTAS.VLRCARCREDITO'
      Precision = 15
      Size = 2
    end
    object SQLPrestaContasVLRVALES: TBCDField
      FieldName = 'VLRVALES'
      Origin = 'DB.PRESTACONTAS.VLRVALES'
      Precision = 15
      Size = 2
    end
    object SQLPrestaContasVLRORFRE: TBCDField
      FieldName = 'VLRORFRE'
      Origin = 'DB.PRESTACONTAS.VLRORFRE'
      Precision = 15
      Size = 2
    end
    object SQLPrestaContasVLROUTSAIDA: TBCDField
      FieldName = 'VLROUTSAIDA'
      Origin = 'DB.PRESTACONTAS.VLROUTSAIDA'
      Precision = 15
      Size = 2
    end
    object SQLPrestaContasREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PRESTACONTAS.REGISTRO'
    end
    object SQLPrestaContasPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PRESTACONTAS.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLPrestaContasVLRCHVISTA: TBCDField
      FieldName = 'VLRCHVISTA'
      Origin = 'DB.PRESTACONTAS.VLRCHVISTA'
      Precision = 15
      Size = 2
    end
  end
  object DSPrestaContas: TDataSource
    DataSet = SQLPrestaContas
    Left = 545
    Top = 434
  end
  object dsEncerrante: TDataSource
    DataSet = SQLEncerranteDiario
    Left = 98
    Top = 207
  end
  object SQLEncerranteDiario: TRxQuery
    Tag = 2
    BeforePost = SQLEncerranteDiarioBeforePost
    OnCalcFields = SQLEncerranteDiarioCalcFields
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from ENCERRANTEDIARIO'
      'where '
      '  (%MEmpresa) and '
      '  (%MData) and '
      '  (%MUsuario)'
      'order by'
      '  BOMBICOD')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MUsuario'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 129
    Top = 208
    object SQLEncerranteDiarioENDIA13ID: TStringField
      Tag = 2
      FieldName = 'ENDIA13ID'
      Origin = 'DB.ENCERRANTEDIARIO.ENDIA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLEncerranteDiarioEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.ENCERRANTEDIARIO.EMPRICOD'
    end
    object SQLEncerranteDiarioENDIICOD: TIntegerField
      Tag = 1
      FieldName = 'ENDIICOD'
      Origin = 'DB.ENCERRANTEDIARIO.ENDIICOD'
    end
    object SQLEncerranteDiarioENDIDDATA: TDateTimeField
      FieldName = 'ENDIDDATA'
      Origin = 'DB.ENCERRANTEDIARIO.ENDIDDATA'
    end
    object SQLEncerranteDiarioUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.ENCERRANTEDIARIO.USUAICOD'
    end
    object SQLEncerranteDiarioBOMBICOD: TIntegerField
      DisplayLabel = 'Cd.Bomba'
      FieldName = 'BOMBICOD'
      Origin = 'DB.ENCERRANTEDIARIO.BOMBICOD'
    end
    object SQLEncerranteDiarioPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.ENCERRANTEDIARIO.PRODICOD'
    end
    object SQLEncerranteDiarioBombaDescricao: TStringField
      FieldKind = fkLookup
      FieldName = 'BombaDescricao'
      LookupDataSet = SQLBomba
      LookupKeyFields = 'BOMBICOD'
      LookupResultField = 'BOMBA30DESCR'
      KeyFields = 'BOMBICOD'
      Size = 30
      Lookup = True
    end
    object SQLEncerranteDiarioResultado: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Resultado'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Calculated = True
    end
    object SQLEncerranteDiarioENDIN2ENCERINI: TBCDField
      FieldName = 'ENDIN2ENCERINI'
      Origin = 'DB.ENCERRANTEDIARIO.ENDIN2ENCERINI'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object SQLEncerranteDiarioENDIN2ENCERFIM: TBCDField
      FieldName = 'ENDIN2ENCERFIM'
      Origin = 'DB.ENCERRANTEDIARIO.ENDIN2ENCERFIM'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object SQLEncerranteDiarioENDIN2AFERICAO: TBCDField
      FieldName = 'ENDIN2AFERICAO'
      Origin = 'DB.ENCERRANTEDIARIO.ENDIN2AFERICAO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 9
      Size = 2
    end
  end
  object SQLBombaAux: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from BOMBA'
      'where  (%MEmpresa) ')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 161
    Top = 208
    object SQLBombaAuxEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.BOMBA.EMPRICOD'
    end
    object SQLBombaAuxBOMBICOD: TIntegerField
      FieldName = 'BOMBICOD'
      Origin = 'DB.BOMBA.BOMBICOD'
    end
    object SQLBombaAuxTANQICOD: TIntegerField
      FieldName = 'TANQICOD'
      Origin = 'DB.BOMBA.TANQICOD'
    end
    object SQLBombaAuxBOMBA30DESCR: TStringField
      FieldName = 'BOMBA30DESCR'
      Origin = 'DB.BOMBA.BOMBA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object SQLBomba: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from BOMBA')
    Macros = <>
    Left = 193
    Top = 208
    object SQLBombaBOMBICOD: TIntegerField
      FieldName = 'BOMBICOD'
      Origin = 'DB.BOMBA.BOMBICOD'
    end
    object SQLBombaBOMBA30DESCR: TStringField
      FieldName = 'BOMBA30DESCR'
      Origin = 'DB.BOMBA.BOMBA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object SQLItensVendidos: TRxQuery
    AutoCalcFields = False
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  CUPOMITEM.PRODICOD,'
      '  sum(CUPOMITEM.CPITN3QTD-CUPOMITEM.CPITN3QTDTROCA) as QTDE,'
      
        '  sum(CUPOMITEM.CPITN3VLRUNIT * CUPOMITEM.CPITN3QTD) as VLRTOTAL' +
        'ITEM'
      'from'
      '  CUPOMITEM '
      'inner join CUPOM  on CUPOMITEM.CUPOA13ID = CUPOM.CUPOA13ID'
      'where'
      '  (%MEmpresa)   and'
      '  (%MData) and '
      '  (%MBomba)'
      'group by'
      '  CUPOMITEM.PRODICOD')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MBomba'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 188
    Top = 237
    object SQLItensVendidosPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object SQLItensVendidosQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object SQLItensVendidosVLRTOTALITEM: TFloatField
      FieldName = 'VLRTOTALITEM'
    end
  end
  object SQLUltimoEncer: TRxQuery
    Tag = 2
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from ENCERRANTEDIARIO'
      'where '
      '  (%MEmpresa) and '
      '  (%MBomba)'
      'order by'
      '  ENDIN2ENCERFIM ')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MBomba'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 153
    Top = 240
    object SQLUltimoEncerENDIA13ID: TStringField
      FieldName = 'ENDIA13ID'
      Origin = 'DB.ENCERRANTEDIARIO.ENDIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLUltimoEncerEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.ENCERRANTEDIARIO.EMPRICOD'
    end
    object SQLUltimoEncerENDIICOD: TIntegerField
      FieldName = 'ENDIICOD'
      Origin = 'DB.ENCERRANTEDIARIO.ENDIICOD'
    end
    object SQLUltimoEncerENDIDDATA: TDateTimeField
      FieldName = 'ENDIDDATA'
      Origin = 'DB.ENCERRANTEDIARIO.ENDIDDATA'
    end
    object SQLUltimoEncerUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.ENCERRANTEDIARIO.USUAICOD'
    end
    object SQLUltimoEncerBOMBICOD: TIntegerField
      FieldName = 'BOMBICOD'
      Origin = 'DB.ENCERRANTEDIARIO.BOMBICOD'
    end
    object SQLUltimoEncerPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.ENCERRANTEDIARIO.PRODICOD'
    end
    object SQLUltimoEncerENDIN2ENCERINI: TBCDField
      FieldName = 'ENDIN2ENCERINI'
      Origin = 'DB.ENCERRANTEDIARIO.ENDIN2ENCERINI'
      Precision = 15
      Size = 2
    end
    object SQLUltimoEncerENDIN2ENCERFIM: TBCDField
      FieldName = 'ENDIN2ENCERFIM'
      Origin = 'DB.ENCERRANTEDIARIO.ENDIN2ENCERFIM'
      Precision = 15
      Size = 2
    end
    object SQLUltimoEncerENDIN2AFERICAO: TBCDField
      FieldName = 'ENDIN2AFERICAO'
      Origin = 'DB.ENCERRANTEDIARIO.ENDIN2AFERICAO'
      Precision = 9
      Size = 2
    end
  end
  object SQLOperador: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from USUARIO'
      'order by USUAA60LOGIN')
    Macros = <>
    Left = 393
    Top = 37
  end
  object DSSQLOperador: TDataSource
    DataSet = SQLOperador
    Left = 421
    Top = 37
  end
  object FormStorage1: TFormStorage
    StoredValues = <>
    Left = 864
    Top = 42
  end
end
