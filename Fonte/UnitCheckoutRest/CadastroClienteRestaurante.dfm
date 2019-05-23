inherited FormCadastroClienteRestaurante: TFormCadastroClienteRestaurante
  Left = -8
  Top = -8
  Caption = 'Cadastro de Clientes'
  ClientHeight = 706
  ClientWidth = 1366
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 1366
    Height = 706
    inherited PanelCabecalho: TPanel
      Width = 1364
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 1364
        inherited Panel1: TPanel
          Width = 1362
          inherited PanelNavigator: TPanel
            Width = 1362
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 1362
              inherited BtnFecharTela: TSpeedButton
                Left = 704
              end
            end
          end
          inherited PanelLeft: TPanel
            Left = 905
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 1364
      Height = 632
      inherited PanelBarra: TPanel
        Height = 632
        inherited Button3: TRxSpeedButton
          Tag = 4
          Caption = '&3 Credi'#225'rio'
          OnClick = Button1Click
        end
        object Button8: TRxSpeedButton
          Tag = 4
          Left = 1
          Top = 73
          Width = 127
          Height = 23
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Caption = '&8 Resumo Financeiro'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
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
          OnClick = Button1Click
        end
        object Button9: TRxSpeedButton
          Tag = 4
          Left = 1
          Top = 96
          Width = 127
          Height = 23
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Caption = '&9 Itens Comprados'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
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
          OnClick = Button1Click
        end
        object FotoCliente: TImage
          Left = 0
          Top = 501
          Width = 130
          Height = 113
          Align = alBottom
          Center = True
          IncrementalDisplay = True
          Stretch = True
          Transparent = True
          OnDblClick = FotoClienteDblClick
        end
        object Panel4: TPanel
          Left = 0
          Top = 614
          Width = 130
          Height = 18
          Align = alBottom
          BevelOuter = bvNone
          Caption = 'Foto Cliente'
          Color = 14731440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnDblClick = FotoClienteDblClick
        end
      end
      inherited PanelFundoDados: TPanel
        Width = 1234
        Height = 632
        inherited Panel5: TPanel
          Width = 1234
          Height = 632
          inherited PagePrincipal: TPageControl
            Top = 42
            Width = 1234
            Height = 590
            ActivePage = TabSheetDadosPrincipais
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 1226
                Height = 517
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CLIEA60RAZAOSOC'
                    Title.Caption = 'Nome do Cliente'
                    Width = 155
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLIEA15FONE1'
                    Width = 95
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLIEA15FONE2'
                    Title.Caption = 'Fone 2'
                    Width = 89
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLIEN3VLRFRETE'
                    Title.Caption = 'Tx.Tele'
                    Width = 45
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLIEA60CIDRES'
                    Width = 98
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLIEA60BAIRES'
                    Title.Caption = 'Bairro'
                    Width = 155
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLIEA60ENDRES'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 1226
                inherited PanelBetween: TPanel
                  Width = 832
                  inherited AdvPanel1: TAdvPanel
                    Width = 832
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 832
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 832
                    FullHeight = 0
                  end
                end
                inherited PanelIndice: TPanel
                  inherited AdvPanelIndice: TAdvPanel
                    FullHeight = 0
                  end
                end
              end
              inherited MemoDetalhes: TMemo
                Lines.Strings = (
                  'CLIENTECONTATO'
                  'CLIENTEDEPENDENTE'
                  'CLIENTEENDERECOCOBRANCA'
                  'CLIENTEENDERECOCOMERCIAL'
                  'CLIENTEENDERECOENTREGA'
                  'CLIENTEREFERENCIA'
                  'CLIENTERECEITUARIO')
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object PanelTop: TPanel
                Left = 0
                Top = 0
                Width = 1226
                Height = 361
                Align = alTop
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 0
                object Label40: TLabel
                  Left = 4
                  Top = 0
                  Width = 52
                  Height = 13
                  Caption = 'Endere'#231'o'
                  FocusControl = DBEditEnd
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label43: TLabel
                  Left = 251
                  Top = 35
                  Width = 38
                  Height = 13
                  Caption = 'Cidade'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label44: TLabel
                  Left = 549
                  Top = 35
                  Width = 14
                  Height = 13
                  Caption = 'UF'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label42: TLabel
                  Left = 4
                  Top = 35
                  Width = 34
                  Height = 13
                  Caption = 'Bairro'
                  FocusControl = DBEdit21
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label7: TLabel
                  Left = 4
                  Top = 71
                  Width = 37
                  Height = 13
                  Caption = 'Fone 1'
                  FocusControl = DBEdit4
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label8: TLabel
                  Left = 126
                  Top = 71
                  Width = 37
                  Height = 13
                  Caption = 'Fone 2'
                  FocusControl = DBEdit5
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label49: TLabel
                  Left = 251
                  Top = 71
                  Width = 30
                  Height = 13
                  Caption = 'Email'
                  FocusControl = DBEdit32
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label61: TLabel
                  Left = 255
                  Top = 109
                  Width = 30
                  Height = 13
                  Caption = 'Ativo'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label77: TLabel
                  Left = 4
                  Top = 109
                  Width = 76
                  Height = 13
                  Caption = 'Data de Nasc.'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label4: TLabel
                  Left = 129
                  Top = 109
                  Width = 56
                  Height = 13
                  Caption = 'Valor Tele'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label5: TLabel
                  Left = 502
                  Top = 109
                  Width = 73
                  Height = 13
                  Caption = 'Valor Cr'#233'dito'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label6: TLabel
                  Left = 365
                  Top = 109
                  Width = 93
                  Height = 13
                  Caption = 'Cart'#227'o Consumo'
                  FocusControl = DBEdit2
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label10: TLabel
                  Left = 464
                  Top = 0
                  Width = 44
                  Height = 13
                  Caption = 'N'#250'mero'
                  FocusControl = DBEdit6
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEditEnd: TDBEdit
                  Left = 4
                  Top = 13
                  Width = 458
                  Height = 21
                  DataField = 'CLIEA60ENDRES'
                  DataSource = DSTemplate
                  TabOrder = 0
                end
                object DBComboBox1: TDBComboBox
                  Left = 247
                  Top = 48
                  Width = 295
                  Height = 21
                  CharCase = ecUpperCase
                  DataField = 'CLIEA60CIDRES'
                  DataSource = DSTemplate
                  ItemHeight = 13
                  TabOrder = 2
                  OnEnter = DBComboBox1Enter
                end
                object ComboUFRes: TRxDBComboBox
                  Left = 546
                  Top = 48
                  Width = 47
                  Height = 21
                  Style = csDropDownList
                  DataField = 'CLIEA2UFRES'
                  DataSource = DSTemplate
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    'AC'
                    'AL'
                    'AM'
                    'AP'
                    'BA'
                    'CE'
                    'DF'
                    'ES'
                    'GO'
                    'MA'
                    'MG'
                    'MS'
                    'PA'
                    'PB'
                    'PE'
                    'PI'
                    'PR'
                    'MT'
                    'RJ'
                    'RN'
                    'RO'
                    'RR'
                    'RS'
                    'SC'
                    'SE'
                    'SP'
                    'TO'
                    'EX')
                  TabOrder = 3
                  Values.Strings = (
                    'AC'
                    'AL'
                    'AM'
                    'AP'
                    'BA'
                    'CE'
                    'DF'
                    'ES'
                    'GO'
                    'MA'
                    'MG'
                    'MS'
                    'PA'
                    'PB'
                    'PE'
                    'PI'
                    'PR'
                    'MT'
                    'RJ'
                    'RN'
                    'RO'
                    'RR'
                    'RS'
                    'SC'
                    'SE'
                    'SP'
                    'TO'
                    'EX')
                end
                object DBEdit21: TDBEdit
                  Left = 4
                  Top = 48
                  Width = 243
                  Height = 21
                  DataField = 'CLIEA60BAIRES'
                  DataSource = DSTemplate
                  TabOrder = 1
                end
                object DBEdit4: TDBEdit
                  Left = 4
                  Top = 84
                  Width = 120
                  Height = 21
                  DataField = 'CLIEA15FONE1'
                  DataSource = DSTemplate
                  TabOrder = 4
                end
                object DBEdit5: TDBEdit
                  Left = 124
                  Top = 84
                  Width = 120
                  Height = 21
                  DataField = 'CLIEA15FONE2'
                  DataSource = DSTemplate
                  TabOrder = 5
                end
                object DBEdit32: TDBEdit
                  Tag = 1
                  Left = 248
                  Top = 84
                  Width = 345
                  Height = 21
                  CharCase = ecLowerCase
                  DataField = 'CLIEA60EMAIL'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 6
                end
                object PageControl1: TPageControl
                  Left = 4
                  Top = 177
                  Width = 638
                  Height = 145
                  ActivePage = TabSheet2
                  Images = ImageList2
                  MultiLine = True
                  Style = tsFlatButtons
                  TabOrder = 13
                  object TabSheet2: TTabSheet
                    Caption = 'Observa'#231#227'o 1'
                    object MemoOBS: TDBMemo
                      Left = 0
                      Top = 0
                      Width = 630
                      Height = 113
                      Align = alClient
                      DataField = 'CLIETOBS1'
                      DataSource = DSTemplate
                      ScrollBars = ssVertical
                      TabOrder = 0
                    end
                  end
                  object TabSheet3: TTabSheet
                    Caption = 'Observa'#231#227'o 2'
                    object DBMemo2: TDBMemo
                      Left = 0
                      Top = 0
                      Width = 630
                      Height = 113
                      Align = alClient
                      DataField = 'CLIETOBS2'
                      DataSource = DSTemplate
                      ScrollBars = ssVertical
                      TabOrder = 0
                    end
                  end
                end
                object ComboAtivo: TRxDBComboBox
                  Left = 250
                  Top = 122
                  Width = 66
                  Height = 21
                  Style = csDropDownList
                  DataField = 'CLIECATIVO'
                  DataSource = DSTemplate
                  EnableValues = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemHeight = 13
                  Items.Strings = (
                    'Sim'
                    'N'#227'o')
                  ParentFont = False
                  TabOrder = 9
                  Values.Strings = (
                    'S'
                    'N')
                end
                object DBDateEdit8: TDBDateEdit
                  Left = 4
                  Top = 122
                  Width = 120
                  Height = 21
                  DataField = 'CLIEDNASC'
                  DataSource = DSTemplate
                  NumGlyphs = 2
                  TabOrder = 7
                end
                object ValorFrete: TEvDBNumEdit
                  Left = 125
                  Top = 122
                  Width = 120
                  Height = 21
                  AutoHideCalculator = False
                  DataField = 'CLIEN3VLRFRETE'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Glyph.Data = {
                    46040000424D460400000000000036000000280000001A0000000D0000000100
                    1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                    FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                    C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                    C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                    4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                    808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                    FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                    C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                    8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                    C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                    808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                    FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                    C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                    8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                    C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                    808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                    FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                    C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                    8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                    C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                    FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                    C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                    8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                    0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                    808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                    FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                    C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                    8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                    C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                    FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                    C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                    C0C0FFC0C0FFC0C0FF7F}
                  ParentFont = False
                  TabOrder = 8
                  OnEnter = ValorFreteEnter
                end
                object EvDBNumEdit1: TEvDBNumEdit
                  Left = 499
                  Top = 122
                  Width = 94
                  Height = 21
                  TabStop = False
                  AutoHideCalculator = False
                  Color = 16249066
                  DataField = 'CLIEN2LIMITECRED'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Glyph.Data = {
                    46040000424D460400000000000036000000280000001A0000000D0000000100
                    1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                    FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                    C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                    C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                    4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                    808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                    FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                    C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                    8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                    C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                    808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                    FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                    C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                    8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                    C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                    808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                    FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                    C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                    8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                    C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                    FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                    C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                    8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                    0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                    808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                    FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                    C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                    8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                    C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                    FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                    C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                    C0C0FFC0C0FFC0C0FF7F}
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 11
                end
                object DBEdit2: TDBEdit
                  Left = 362
                  Top = 122
                  Width = 133
                  Height = 21
                  DataField = 'CLIEA35NROCARTCRED'
                  DataSource = DSTemplate
                  TabOrder = 10
                  OnExit = DBEdit2Exit
                end
                object DBCheckBox3: TDBCheckBox
                  Left = 4
                  Top = 150
                  Width = 201
                  Height = 17
                  Caption = 'Permite Venda Cr'#233'diario/Boleto'
                  DataField = 'CLIECVNDCRED'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 12
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBEdit6: TDBEdit
                  Left = 464
                  Top = 13
                  Width = 133
                  Height = 21
                  DataField = 'CLIEA5NROENDRES'
                  DataSource = DSTemplate
                  TabOrder = 14
                end
              end
            end
            object TabSheetDadosCompra: TTabSheet
              Caption = 'Dados de Compra'
              ImageIndex = 7
              object PageControlDadosCompra: TPageControl
                Left = 0
                Top = 0
                Width = 1226
                Height = 564
                ActivePage = TabCarne
                Align = alClient
                Images = ImageList2
                MultiLine = True
                Style = tsFlatButtons
                TabOrder = 0
                object TabCarne: TTabSheet
                  Caption = 'Vendas - Geral'
                  OnShow = TabCarneShow
                  object DBGridDadosCompra: TDBGrid
                    Left = 0
                    Top = 37
                    Width = 1218
                    Height = 375
                    Hint = 
                      '>>>> Clique com o bot'#227'o direito para lan'#231'ar um hist'#243'rico...'#13#10'>>>' +
                      '> Clique na coluna em uma das colunas branco para reorganizar o ' +
                      'resultado...'
                    Align = alClient
                    BorderStyle = bsNone
                    Color = clWhite
                    DataSource = DSSQLParcelas
                    FixedColor = 10053171
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Options = [dgTitles, dgColumnResize, dgColLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                    ParentFont = False
                    ParentShowHint = False
                    PopupMenu = PopupMenuParcelas
                    ReadOnly = True
                    ShowHint = True
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWhite
                    TitleFont.Height = -11
                    TitleFont.Name = 'Tahoma'
                    TitleFont.Style = [fsBold]
                    OnDrawColumnCell = DBGridDadosCompraDrawColumnCell
                    OnTitleClick = DBGridDadosCompraTitleClick
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'Documento'
                        Width = 104
                        Visible = True
                      end
                      item
                        ButtonStyle = cbsEllipsis
                        Expanded = False
                        FieldName = 'CTRCDEMIS'
                        Title.Color = clWhite
                        Title.Font.Charset = DEFAULT_CHARSET
                        Title.Font.Color = clNavy
                        Title.Font.Height = -11
                        Title.Font.Name = 'Tahoma'
                        Title.Font.Style = [fsBold]
                        Width = 58
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCINROPARC'
                        Width = 19
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCDVENC'
                        Title.Color = clWhite
                        Title.Font.Charset = DEFAULT_CHARSET
                        Title.Font.Color = clNavy
                        Title.Font.Height = -11
                        Title.Font.Name = 'Tahoma'
                        Title.Font.Style = [fsBold]
                        Width = 62
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCN2VLR'
                        Title.Caption = 'Vlr.Parcela'
                        Width = 61
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'Atraso'
                        Width = 40
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCDULTREC'
                        Title.Color = clWhite
                        Title.Font.Charset = DEFAULT_CHARSET
                        Title.Font.Color = clNavy
                        Title.Font.Height = -11
                        Title.Font.Name = 'Tahoma'
                        Title.Font.Style = [fsBold]
                        Width = 59
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCN2TOTREC'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'ValorPagar'
                        Title.Caption = 'Valor Pagar'
                        Width = 69
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CUPON2TOTITENS'
                        Width = 68
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'VENDA60NOME'
                        Width = 77
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'BANCA5CODCHQ'
                        Title.Caption = 'Banco'
                        Width = 36
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCA15NROCHQ'
                        Title.Caption = 'Cheque Nro.'
                        Width = 71
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'JuroParc'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'MultaParc'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'TxCobrParc'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DescParc'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCN2TOTJUROREC'
                        Title.Caption = 'Jur.Recto'
                        Width = 55
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCN2TOTMULTAREC'
                        Title.Caption = 'Multa Recto'
                        Width = 57
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCN2TOTDESCREC'
                        Title.Caption = 'Desc.Recto'
                        Width = 60
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'EMPRICODULTREC'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CUPOA13ID'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCA13ID'
                        Title.Caption = 'ID CTRC'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'NumerarioLookup'
                        Width = 120
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'TipoPadraoLookup'
                        Width = 70
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'AVALA60RAZAOSOC'
                        Width = 120
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'PORTA60DESCR'
                        Width = 120
                        Visible = True
                      end>
                  end
                  object GroupBoxCupomObs: TGroupBox
                    Left = 0
                    Top = 412
                    Width = 1218
                    Height = 42
                    Align = alBottom
                    Caption = ' Observa'#231#227'o '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clRed
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 1
                    Visible = False
                    object DBMemo1: TDBMemo
                      Left = 2
                      Top = 15
                      Width = 635
                      Height = 25
                      Align = alClient
                      Alignment = taCenter
                      DataField = 'CUPOV254OBS'
                      DataSource = DSSQLCupomObs
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      ReadOnly = True
                      ScrollBars = ssVertical
                      TabOrder = 0
                    end
                  end
                  object GroupBox2: TGroupBox
                    Left = 0
                    Top = 454
                    Width = 1218
                    Height = 78
                    Align = alBottom
                    TabOrder = 2
                    object Label25: TLabel
                      Left = 347
                      Top = 8
                      Width = 77
                      Height = 13
                      Caption = 'Nro.P.Abertas'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label29: TLabel
                      Left = 498
                      Top = 43
                      Width = 68
                      Height = 13
                      Caption = 'D'#237'vida Atual'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label30: TLabel
                      Left = 271
                      Top = 8
                      Width = 72
                      Height = 13
                      Caption = 'Nro.Compras'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label31: TLabel
                      Left = 7
                      Top = 42
                      Width = 72
                      Height = 13
                      Caption = 'Tot Compras'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label32: TLabel
                      Left = 91
                      Top = 42
                      Width = 60
                      Height = 13
                      Caption = 'Total Pago'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label33: TLabel
                      Left = 332
                      Top = 42
                      Width = 75
                      Height = 13
                      Caption = 'Total '#224' Pagar'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label34: TLabel
                      Left = 414
                      Top = 43
                      Width = 72
                      Height = 13
                      Caption = 'Tot Vencidas'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label38: TLabel
                      Left = 428
                      Top = 8
                      Width = 75
                      Height = 13
                      Caption = 'Atraso M'#233'dio'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label39: TLabel
                      Left = 579
                      Top = 43
                      Width = 53
                      Height = 13
                      Caption = 'Lim.Atual'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label26: TLabel
                      Left = 168
                      Top = 42
                      Width = 78
                      Height = 13
                      Caption = 'Multa + Juros'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label27: TLabel
                      Left = 251
                      Top = 42
                      Width = 59
                      Height = 13
                      Caption = 'Total Desc'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object LbAvisos: TLabel
                      Left = 535
                      Top = 8
                      Width = 115
                      Height = 13
                      Alignment = taCenter
                      Caption = '           Avisos               '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold, fsUnderline]
                      ParentFont = False
                    end
                    object Label3: TLabel
                      Left = 10
                      Top = 8
                      Width = 81
                      Height = 13
                      Caption = 'Data Cadastro'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object NroParcelasAbertas: TCurrencyEdit
                      Left = 345
                      Top = 22
                      Width = 79
                      Height = 18
                      TabStop = False
                      Alignment = taCenter
                      AutoSize = False
                      BorderStyle = bsNone
                      DisplayFormat = '0'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                      ReadOnly = True
                      TabOrder = 1
                    end
                    object DivitaAtual: TCurrencyEdit
                      Left = 494
                      Top = 56
                      Width = 73
                      Height = 18
                      TabStop = False
                      AutoSize = False
                      BorderStyle = bsNone
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                      ReadOnly = True
                      TabOrder = 6
                    end
                    object NroCompras: TCurrencyEdit
                      Left = 269
                      Top = 22
                      Width = 74
                      Height = 18
                      TabStop = False
                      Alignment = taCenter
                      AutoSize = False
                      BorderStyle = bsNone
                      DisplayFormat = '0'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                      ReadOnly = True
                      TabOrder = 0
                    end
                    object TotalCompras: TCurrencyEdit
                      Left = 5
                      Top = 56
                      Width = 80
                      Height = 18
                      TabStop = False
                      AutoSize = False
                      BorderStyle = bsNone
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                      ReadOnly = True
                      TabOrder = 7
                    end
                    object TotalPago: TCurrencyEdit
                      Left = 87
                      Top = 56
                      Width = 77
                      Height = 18
                      TabStop = False
                      AutoSize = False
                      BorderStyle = bsNone
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                      ReadOnly = True
                      TabOrder = 8
                    end
                    object TotalPagar: TCurrencyEdit
                      Left = 330
                      Top = 56
                      Width = 80
                      Height = 18
                      TabStop = False
                      AutoSize = False
                      BorderStyle = bsNone
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                      ReadOnly = True
                      TabOrder = 9
                    end
                    object TotalVencidas: TCurrencyEdit
                      Left = 412
                      Top = 56
                      Width = 80
                      Height = 18
                      TabStop = False
                      AutoSize = False
                      BorderStyle = bsNone
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                      ReadOnly = True
                      TabOrder = 10
                    end
                    object AtrasoMedio: TCurrencyEdit
                      Left = 426
                      Top = 22
                      Width = 77
                      Height = 18
                      TabStop = False
                      Alignment = taCenter
                      AutoSize = False
                      BorderStyle = bsNone
                      Ctl3D = False
                      DisplayFormat = '0.00;-,0.00'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentCtl3D = False
                      ParentFont = False
                      ReadOnly = True
                      TabOrder = 2
                    end
                    object EditLimiteCredito: TCurrencyEdit
                      Left = 570
                      Top = 56
                      Width = 68
                      Height = 18
                      TabStop = False
                      AutoSize = False
                      BorderStyle = bsNone
                      Ctl3D = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentCtl3D = False
                      ParentFont = False
                      ReadOnly = True
                      TabOrder = 11
                    end
                    object TotalMulta: TCurrencyEdit
                      Left = 166
                      Top = 56
                      Width = 80
                      Height = 18
                      TabStop = False
                      AutoSize = False
                      BorderStyle = bsNone
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                      ReadOnly = True
                      TabOrder = 12
                    end
                    object TotalDesconto: TCurrencyEdit
                      Left = 248
                      Top = 56
                      Width = 80
                      Height = 18
                      TabStop = False
                      AutoSize = False
                      BorderStyle = bsNone
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                      ReadOnly = True
                      TabOrder = 13
                    end
                    object TotalJuros: TCurrencyEdit
                      Left = 166
                      Top = 56
                      Width = 80
                      Height = 18
                      TabStop = False
                      AutoSize = False
                      BorderStyle = bsNone
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                      ReadOnly = True
                      TabOrder = 14
                    end
                    object CKAviso1: TCheckBox
                      Left = 535
                      Top = 22
                      Width = 35
                      Height = 17
                      TabStop = False
                      Caption = '1'#186
                      Ctl3D = True
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlue
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentCtl3D = False
                      ParentFont = False
                      TabOrder = 3
                    end
                    object CKAviso2: TCheckBox
                      Left = 567
                      Top = 22
                      Width = 34
                      Height = 17
                      TabStop = False
                      Caption = '2'#186
                      Ctl3D = True
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clMaroon
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentCtl3D = False
                      ParentFont = False
                      TabOrder = 4
                    end
                    object CKAvisoSPC: TCheckBox
                      Left = 599
                      Top = 22
                      Width = 40
                      Height = 17
                      TabStop = False
                      Caption = 'SPC'
                      Ctl3D = True
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentCtl3D = False
                      ParentFont = False
                      TabOrder = 5
                    end
                    object DBDateEdit1: TDBDateEdit
                      Left = 6
                      Top = 21
                      Width = 117
                      Height = 21
                      DataField = 'CLIEDCAD'
                      DataSource = DSTemplate
                      ReadOnly = True
                      NumGlyphs = 2
                      TabOrder = 15
                    end
                  end
                  object GroupLegenda: TGroupBox
                    Left = 0
                    Top = 0
                    Width = 1218
                    Height = 37
                    Align = alTop
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 3
                    object Shape1: TShape
                      Left = 90
                      Top = 12
                      Width = 20
                      Height = 20
                      Brush.Color = clRed
                    end
                    object Label81: TLabel
                      Left = 113
                      Top = 15
                      Width = 50
                      Height = 13
                      Caption = 'Vencidas'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clRed
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label82: TLabel
                      Left = 202
                      Top = 16
                      Width = 84
                      Height = 13
                      Caption = 'Vencendo Hoje'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Shape2: TShape
                      Left = 179
                      Top = 12
                      Width = 20
                      Height = 20
                      Brush.Color = clBlack
                    end
                    object Label113: TLabel
                      Left = 320
                      Top = 16
                      Width = 91
                      Height = 13
                      Caption = 'Contas '#224' Vencer'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clGreen
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Shape3: TShape
                      Left = 297
                      Top = 12
                      Width = 20
                      Height = 20
                      Brush.Color = clGreen
                    end
                    object Shape4: TShape
                      Left = 423
                      Top = 12
                      Width = 20
                      Height = 20
                      Brush.Color = clBlue
                    end
                    object Label114: TLabel
                      Left = 446
                      Top = 16
                      Width = 94
                      Height = 13
                      Caption = 'Conta Negociada'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlue
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Shape5: TShape
                      Left = 553
                      Top = 12
                      Width = 20
                      Height = 20
                      Brush.Color = clMaroon
                    end
                    object Label115: TLabel
                      Left = 576
                      Top = 16
                      Width = 59
                      Height = 13
                      Caption = 'Chq.Devol.'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clMaroon
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Shape6: TShape
                      Left = 7
                      Top = 12
                      Width = 20
                      Height = 20
                      Brush.Color = clNavy
                    end
                    object Label116: TLabel
                      Left = 30
                      Top = 16
                      Width = 34
                      Height = 13
                      Caption = 'Pagas'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clNavy
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                  end
                end
                object TabCheques: TTabSheet
                  Caption = 'Somente Che&ques Recebidos'
                  ImageIndex = 1
                  OnShow = TabChequesShow
                  object DBGridCheque: TDBGrid
                    Left = 0
                    Top = 0
                    Width = 1218
                    Height = 487
                    Align = alClient
                    BorderStyle = bsNone
                    Color = clWhite
                    DataSource = DSSQLCheques
                    FixedColor = 10053171
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
                        FieldName = 'EMPRICOD'
                        Width = 36
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'BANCA5CODCHQ'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCA10AGENCIACHQ'
                        Width = 50
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCA15CONTACHQ'
                        Width = 69
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCA15NROCHQ'
                        Width = 67
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCN2VLR'
                        Width = 66
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCINROPARC'
                        Width = 22
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCDEMIS'
                        Width = 59
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCDVENC'
                        Width = 70
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCDDEPOSCHQ'
                        Width = 60
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCA60TITULARCHQ'
                        Width = 188
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCA20CGCCPFCHQ'
                        Width = 94
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CUPOA13ID'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'NOFIINUMERO'
                        Visible = True
                      end>
                  end
                  object GroupBox4: TGroupBox
                    Left = 0
                    Top = 487
                    Width = 1218
                    Height = 45
                    Align = alBottom
                    TabOrder = 1
                    object Label86: TLabel
                      Left = 434
                      Top = 8
                      Width = 68
                      Height = 13
                      Caption = 'D'#237'vida Atual'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label87: TLabel
                      Left = 326
                      Top = 8
                      Width = 82
                      Height = 13
                      Caption = 'Total Vencidos'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label88: TLabel
                      Left = 6
                      Top = 9
                      Width = 75
                      Height = 13
                      Caption = 'Atraso M'#233'dio'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label89: TLabel
                      Left = 220
                      Top = 8
                      Width = 60
                      Height = 13
                      Caption = 'Total Pago'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label90: TLabel
                      Left = 113
                      Top = 8
                      Width = 70
                      Height = 13
                      Caption = 'Nro.Cheques'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object EditDividaChq: TCurrencyEdit
                      Left = 431
                      Top = 21
                      Width = 105
                      Height = 21
                      TabStop = False
                      AutoSize = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                      ReadOnly = True
                      TabOrder = 0
                    end
                    object EditVencidoChq: TCurrencyEdit
                      Left = 324
                      Top = 21
                      Width = 105
                      Height = 21
                      TabStop = False
                      AutoSize = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                      ReadOnly = True
                      TabOrder = 1
                    end
                    object EditMedioChq: TCurrencyEdit
                      Left = 3
                      Top = 21
                      Width = 105
                      Height = 21
                      TabStop = False
                      AutoSize = False
                      DisplayFormat = '0.00;-,0.00'
                      ReadOnly = True
                      TabOrder = 2
                    end
                    object EditPagoChq: TCurrencyEdit
                      Left = 217
                      Top = 21
                      Width = 105
                      Height = 21
                      TabStop = False
                      AutoSize = False
                      ReadOnly = True
                      TabOrder = 3
                    end
                    object EditNroChq: TCurrencyEdit
                      Left = 110
                      Top = 21
                      Width = 105
                      Height = 21
                      TabStop = False
                      AutoSize = False
                      DisplayFormat = '0'
                      ReadOnly = True
                      TabOrder = 4
                    end
                  end
                end
                object TabSheet1: TTabSheet
                  Caption = 'Cr'#233'ditos e D'#233'bitos Extras'
                  ImageIndex = 2
                  object DBGrid1: TDBGrid
                    Left = 0
                    Top = 0
                    Width = 1218
                    Height = 487
                    Align = alClient
                    BorderStyle = bsNone
                    Color = clWhite
                    FixedColor = 10053171
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
                        FieldName = 'CTRCA13ID'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DebitoCreditoCalcField'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCDEMIS'
                        Width = 61
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCINROPARC'
                        Width = 33
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCN2VLR'
                        Width = 72
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCA30NRODUPLICBANCO'
                        Width = 142
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'PORTA60DESCR'
                        Width = 129
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'TPDCA60DESCR'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCDULTREC'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCN2TOTREC'
                        Visible = True
                      end>
                  end
                  object GroupBox10: TGroupBox
                    Left = 0
                    Top = 487
                    Width = 1218
                    Height = 45
                    Align = alBottom
                    TabOrder = 1
                    object Label103: TLabel
                      Left = 435
                      Top = 8
                      Width = 31
                      Height = 13
                      Caption = 'Saldo'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label104: TLabel
                      Left = 326
                      Top = 8
                      Width = 97
                      Height = 13
                      Caption = 'D'#233'bitos Baixados'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label105: TLabel
                      Left = 6
                      Top = 8
                      Width = 79
                      Height = 13
                      Caption = 'Total Cr'#233'ditos'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label106: TLabel
                      Left = 220
                      Top = 8
                      Width = 75
                      Height = 13
                      Caption = 'Total D'#233'bitos'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label107: TLabel
                      Left = 113
                      Top = 8
                      Width = 101
                      Height = 13
                      Caption = 'Cr'#233'ditos Baixados'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object EditSaldo: TCurrencyEdit
                      Left = 431
                      Top = 21
                      Width = 105
                      Height = 21
                      TabStop = False
                      AutoSize = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                      ReadOnly = True
                      TabOrder = 0
                    end
                    object EditDebitoBaixado: TCurrencyEdit
                      Left = 324
                      Top = 21
                      Width = 105
                      Height = 21
                      TabStop = False
                      AutoSize = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      ReadOnly = True
                      TabOrder = 1
                    end
                    object EditTotalCredito: TCurrencyEdit
                      Left = 3
                      Top = 21
                      Width = 105
                      Height = 21
                      TabStop = False
                      AutoSize = False
                      ReadOnly = True
                      TabOrder = 2
                    end
                    object EditTotalDebito: TCurrencyEdit
                      Left = 217
                      Top = 21
                      Width = 105
                      Height = 21
                      TabStop = False
                      AutoSize = False
                      ReadOnly = True
                      TabOrder = 3
                    end
                    object EditCreditoBaixado: TCurrencyEdit
                      Left = 110
                      Top = 21
                      Width = 105
                      Height = 21
                      TabStop = False
                      AutoSize = False
                      ReadOnly = True
                      TabOrder = 4
                    end
                  end
                end
              end
              object RadioIgnoracheque: TCheckBox
                Left = 471
                Top = 4
                Width = 197
                Height = 17
                Caption = 'Ignorar Cheques na listagem'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
            end
            object TabSheetItens: TTabSheet
              Caption = 'Itens Comprados'
              ImageIndex = 4
              OnEnter = TabSheetItensEnter
              OnExit = TabSheetItensExit
              object DBGridItens: TDBGrid
                Left = 0
                Top = 41
                Width = 1226
                Height = 523
                Align = alClient
                BorderStyle = bsNone
                Color = clWhite
                DataSource = DSSQLItem
                FixedColor = 10053171
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWhite
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = [fsBold]
                OnCellClick = DBGridItensCellClick
                OnDblClick = DBGridListaDblClick
                OnKeyDown = DBGridItensKeyDown
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'DEMISSAO'
                    Width = 63
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRODICOD'
                    Width = 52
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRODA60DESCR'
                    Width = 240
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'QTDE'
                    Width = 42
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VLRUNIT'
                    Width = 62
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VLRDESC'
                    Width = 57
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DOCUMENTO'
                    Width = 78
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPOM'
                    Title.Caption = 'Cupom'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VENDA60NOME'
                    Width = 211
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EMPRICOD'
                    Visible = True
                  end>
              end
              object PanelPesquisa: TPanel
                Left = 0
                Top = 0
                Width = 1226
                Height = 41
                Align = alTop
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 1
                object Label83: TLabel
                  Left = 4
                  Top = 3
                  Width = 109
                  Height = 13
                  Caption = 'Per'#237'odo de Emiss'#227'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label84: TLabel
                  Left = 273
                  Top = 3
                  Width = 45
                  Height = 13
                  Caption = 'Produto'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label85: TLabel
                  Left = 126
                  Top = 19
                  Width = 20
                  Height = 13
                  Caption = 'At'#233
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object EditDe: TDateEdit
                  Left = 3
                  Top = 17
                  Width = 121
                  Height = 21
                  NumGlyphs = 2
                  TabOrder = 0
                end
                object ComboProduto: TRxDBLookupCombo
                  Left = 271
                  Top = 17
                  Width = 298
                  Height = 21
                  DropDownCount = 8
                  DisplayEmpty = 'Selecione um produto...'
                  LookupField = 'PRODICOD'
                  LookupDisplay = 'PRODA60DESCR'
                  LookupSource = DSSQLProduto
                  TabOrder = 2
                  OnKeyDown = ComboProdutoKeyDown
                end
                object EditAte: TDateEdit
                  Left = 148
                  Top = 17
                  Width = 121
                  Height = 21
                  NumGlyphs = 2
                  TabOrder = 1
                end
                object BtnLocalizar: TBitBtn
                  Left = 571
                  Top = 12
                  Width = 75
                  Height = 26
                  Caption = '&Localizar'
                  TabOrder = 3
                  OnClick = BtnLocalizarClick
                  Glyph.Data = {
                    F6000000424DF60000000000000076000000280000000E000000100000000100
                    04000000000080000000CE0E0000C40E00001000000000000000000000000000
                    80000080000000808000800000008000800080800000C0C0C000808080000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777700
                    77007777777774EC0700770000004ECC000077877774ECC77000778FFF4ECC7F
                    70007780087CC7FF7000787E70887FFF70008FE7E707FFFF70008EFE7E0FFFFF
                    70008FEFE70FFFFF700078FEF0FFFFFF700077880FFFFFFF7000778FFFFFFF00
                    0000778FFFFFFF0F8700778FFFFFFF0877007788888888877700}
                end
              end
            end
          end
          inherited PanelMaster: TPanel
            Width = 1234
            Height = 1
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 1234
            object Label1: TLabel
              Left = 8
              Top = 4
              Width = 13
              Height = 13
              Caption = 'ID'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 98
              Top = 4
              Width = 172
              Height = 13
              Caption = 'Nome Completo / Raz'#227'o Social'
              FocusControl = DBEditNome
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label9: TLabel
              Left = 468
              Top = 4
              Width = 65
              Height = 13
              Caption = 'Documento'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 8
              Top = 17
              Width = 87
              Height = 21
              Color = 16249066
              DataField = 'CLIEA13ID'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEditNome: TDBEdit
              Left = 98
              Top = 17
              Width = 368
              Height = 21
              DataField = 'CLIEA60RAZAOSOC'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object DBEdit3: TDBEdit
              Left = 468
              Top = 17
              Width = 133
              Height = 21
              DataField = 'CLIEA14CGC'
              DataSource = DSTemplate
              TabOrder = 2
            end
          end
        end
      end
    end
  end
  inherited DSTemplate: TDataSource
    Tag = 1
  end
  inherited PopupMenuDiversos: TPopupMenu
    object MnProdutoscomDescontoporCliente: TMenuItem
      Caption = 'Produtos com Desconto por Cliente'
    end
    object MnADMGerarautorizacaodecompra: TMenuItem
      Caption = 'Gerar autoriza'#231#227'o de compra'
    end
    object AlterarDataBasepDadosdeCompra1: TMenuItem
      Caption = '&Alterar Data Base p/Dados de Compra'
      OnClick = AlterarDataBasepDadosdeCompra1Click
    end
    object MnGeracaoMalaDireta: TMenuItem
      Caption = 'Gera'#231#227'o de Mala Direta'
    end
    object MnCartasAvisos: TMenuItem
      Caption = 'Habilita/Desabilita Cartas de Avisos'
    end
    object MnOcultaObservacao: TMenuItem
      Caption = 'Mostra/Oculta Observa'#231#245'es da Venda'
      OnClick = MnOcultaObservacaoClick
    end
    object ListagemPersonalizada1: TMenuItem
      Caption = 'Listagem Personalizada'
    end
    object DadosdeTeleEntrega: TMenuItem
      Caption = 'Dados de Tele-Entrega'
    end
    object MnCorrigeemailparaminusculo: TMenuItem
      Caption = 'Corrige email para min'#250'sculo'
      OnClick = MnCorrigeemailparaminusculoClick
    end
    object MnExtratoCliente: TMenuItem
      Caption = 'Extrato Financeiro por Cliente'
      OnClick = MnExtratoClienteClick
    end
    object BloquearClientesqueestejamemSPC1: TMenuItem
      Caption = 
        'Bloquear Todos Clientes que estejam em SPC pelo Motivo Cod.2 (Cu' +
        'idado)'
    end
    object MnRecalcularoLimitedeCreditoInicial: TMenuItem
      Caption = 'Recalcular o Limite de Credito Inicial'
      OnClick = MnRecalcularoLimitedeCreditoInicialClick
    end
  end
  inherited PopupMenuImpressao: TPopupMenu
    object ImprimirCarneAvulso: TMenuItem
      Caption = 'Carn'#234' avulso'
      OnClick = ImprimirCarneAvulsoClick
    end
    object ImprimirParcelaCarneAvulsa: TMenuItem
      Caption = 'Parcela de carn'#234' avulsa'
      OnClick = ImprimirParcelaCarneAvulsaClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object FichaCliente1: TMenuItem
      Caption = 'Ficha Cliente'
    end
    object MnFichaClienteResumida: TMenuItem
      Caption = 'Ficha Cliente Resumida'
      OnClick = MnFichaClienteResumidaClick
    end
    object MnContratoCredito: TMenuItem
      Caption = 'Contrato Fornecimento de Credito'
      OnClick = MnContratoCreditoClick
    end
    object MnCadastroClienteItensComprados: TMenuItem
      Caption = 'Itens Comprados'
      ImageIndex = 15
      OnClick = MnCadastroClienteItensCompradosClick
    end
    object ItensCompradosConferenciaparaoDeposito1: TMenuItem
      Caption = 'Itens Comprados - Conferencia para o Deposito'
      OnClick = ItensCompradosConferenciaparaoDeposito1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object ImprimeExtratoCaderno: TMenuItem
      Caption = 'Extrato Caderno'
      Visible = False
      OnClick = ImprimeExtratoCadernoClick
    end
    object MnRelPlanilhadeVendas: TMenuItem
      Caption = 'Planilha de Vendas'
      OnClick = MnRelPlanilhadeVendasClick
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 2
    AfterInsert = SQLTemplateAfterInsert
    AfterEdit = SQLTemplateAfterEdit
    SQL.Strings = (
      'select * from CLIENTE where (%MFiltro)')
    object SQLTemplateCLIEA13ID: TStringField
      Tag = 2
      DisplayLabel = 'ID'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CLIENTE.EMPRICOD'
    end
    object SQLTemplateCLIEICOD: TIntegerField
      Tag = 1
      FieldName = 'CLIEICOD'
      Origin = 'DB.CLIENTE.CLIEICOD'
    end
    object SQLTemplateCLIEA60RAZAOSOC: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Nome / Raz'#227'o Social'
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCLIEA15FONE1: TStringField
      DisplayLabel = 'Fone 1'
      FieldName = 'CLIEA15FONE1'
      Origin = 'DB.CLIENTE.CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateCLIEA15FONE2: TStringField
      FieldName = 'CLIEA15FONE2'
      Origin = 'DB.CLIENTE.CLIEA15FONE2'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateCLIEA60ENDRES: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'CLIEA60ENDRES'
      Origin = 'DB.CLIENTE.CLIEA60ENDRES'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCLIEA60BAIRES: TStringField
      FieldName = 'CLIEA60BAIRES'
      Origin = 'DB.CLIENTE.CLIEA60BAIRES'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCLIEA60CIDRES: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CLIEA60CIDRES'
      Origin = 'DB.CLIENTE.CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCLIEA2UFRES: TStringField
      ConstraintErrorMessage = '1'
      FieldName = 'CLIEA2UFRES'
      Origin = 'DB.CLIENTE.CLIEA2UFRES'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateCLIEA8CEPRES: TStringField
      FieldName = 'CLIEA8CEPRES'
      Origin = 'DB.CLIENTE.CLIEA8CEPRES'
      EditMask = '00000-000;0;_'
      FixedChar = True
      Size = 8
    end
    object SQLTemplateCLIEA60EMAIL: TStringField
      FieldName = 'CLIEA60EMAIL'
      Origin = 'DB.CLIENTE.CLIEA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCLIEDNASC: TDateTimeField
      FieldName = 'CLIEDNASC'
      Origin = 'DB.CLIENTE.CLIEDNASC'
    end
    object SQLTemplateCLIEA254PATHFOTO: TStringField
      FieldName = 'CLIEA254PATHFOTO'
      Origin = 'DB.CLIENTE.CLIEA254PATHFOTO'
      FixedChar = True
      Size = 254
    end
    object SQLTemplateCLIETOBS1: TMemoField
      FieldName = 'CLIETOBS1'
      Origin = 'DB.CLIENTE.CLIETOBS1'
      BlobType = ftMemo
      Size = 1
    end
    object SQLTemplateCLIETOBS2: TBlobField
      FieldName = 'CLIETOBS2'
      Origin = 'DB.CLIENTE.CLIETOBS2'
      Size = 1
    end
    object SQLTemplateCLIECATIVO: TStringField
      FieldName = 'CLIECATIVO'
      Origin = 'DB.CLIENTE.CLIECATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCLIEDCAD: TDateTimeField
      FieldName = 'CLIEDCAD'
      Origin = 'DB.CLIENTE.CLIEDCAD'
    end
    object SQLTemplateCLIECVNDCHEQ: TStringField
      FieldName = 'CLIECVNDCHEQ'
      Origin = 'DB.CLIENTE.CLIECVNDCHEQ'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCLIECVNDCRED: TStringField
      FieldName = 'CLIECVNDCRED'
      Origin = 'DB.CLIENTE.CLIECVNDCRED'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCLIECTPPRCVENDA: TStringField
      FieldName = 'CLIECTPPRCVENDA'
      Origin = 'DB.CLIENTE.CLIECTPPRCVENDA'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCLIEA35NROCARTCRED: TStringField
      DisplayLabel = 'Cart'#227'o Consumo'
      FieldName = 'CLIEA35NROCARTCRED'
      Origin = 'DB.CLIENTE.CLIEA35NROCARTCRED'
      FixedChar = True
      Size = 35
    end
    object SQLTemplateCLIEA14CGC: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'CLIEA14CGC'
      Origin = 'DB.CLIENTE.CLIEA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLTemplateCLIEN2RENDA: TFloatField
      FieldName = 'CLIEN2RENDA'
      Origin = 'DB.CLIENTE.CLIEN2RENDA'
    end
    object SQLTemplateCLIEN2CONJUGERENDA: TFloatField
      FieldName = 'CLIEN2CONJUGERENDA'
      Origin = 'DB.CLIENTE.CLIEN2CONJUGERENDA'
    end
    object SQLTemplateCLIEN2LIMITECRED: TFloatField
      FieldName = 'CLIEN2LIMITECRED'
      Origin = 'DB.CLIENTE.CLIEN2LIMITECRED'
    end
    object SQLTemplateCLIEN3VLRFRETE: TFloatField
      FieldName = 'CLIEN3VLRFRETE'
      Origin = 'DB.CLIENTE.CLIEN3VLRFRETE'
    end
    object SQLTemplateCLIEA5NROENDRES: TStringField
      FieldName = 'CLIEA5NROENDRES'
      Origin = 'DB.CLIENTE.CLIEA5NROENDRES'
      Size = 5
    end
  end
  inherited SQLExcluiDetalhes: TRxQuery
    Left = 409
  end
  object SQLParcelas: TRxQuery
    DatabaseName = 'DB'
    SessionName = 'Default'
    DataSource = DSTemplate
    SQL.Strings = (
      'select'
      '  CONTASRECEBER.CUPOA13ID,'
      '  CONTASRECEBER.NOFIA13ID as NOFIA13ID,'
      '  CONTASRECEBER.CTRCA30NRODUPLICBANCO as CTRCA30NRODUPLICBANCO,'
      '  CONTASRECEBER.CLIEA13ID,'
      '  CONTASRECEBER.CTRCA13ID,'
      '  CONTASRECEBER.CTRCDULTREC,'
      '  CONTASRECEBER.CTRCDVENC,'
      '  CONTASRECEBER.CTRCDEMIS,'
      '  CONTASRECEBER.CTRCINROPARC,'
      '  CONTASRECEBER.CTRCN2TOTDESCREC,'
      '  CONTASRECEBER.CTRCN2TOTJUROREC,'
      '  CONTASRECEBER.CTRCN2TOTMULTAREC,'
      
        '  CONTASRECEBER.CTRCN2TOTREC + CONTASRECEBER.CTRCN2TOTJUROREC + ' +
        'CONTASRECEBER.CTRCN2TOTMULTAREC + CONTASRECEBER.CTRCN2TOTMULTACO' +
        'BR - CONTASRECEBER.CTRCN2TOTDESCREC as CTRCN2TOTREC,'
      '  CONTASRECEBER.CTRCN2TXJURO,'
      '  CONTASRECEBER.CTRCN2TXMULTA,'
      '  CONTASRECEBER.CTRCN2VLR,'
      '  CONTASRECEBER.CTRCCSTATUS,'
      '  CONTASRECEBER.EMPRICODULTREC,'
      '  CONTASRECEBER.NUMEICOD,'
      '  CONTASRECEBER.EMPRICOD,'
      '  CONTASRECEBER.AVALA13ID,'
      '  CONTASRECEBER.PORTICOD,'
      '  CONTASRECEBER.PDVDA13ID,'
      '  CONTASRECEBER.BANCA5CODCHQ,'
      '  CONTASRECEBER.CTRCA15NROCHQ,'
      '  CONTASRECEBER.ALINICOD,'
      '  cast('#39#39' as CHAR(01)) as CheqDevolvido'
      'from'
      '  CONTASRECEBER'
      'where'
      
        '  (CONTASRECEBER.CTRCCSTATUS = "A" or CONTASRECEBER.CTRCCSTATUS ' +
        '= "N") and'
      
        '  (CONTASRECEBER.PDVDA13ID = "" or CONTASRECEBER.PDVDA13ID IS NU' +
        'LL) and'
      '  (%MCliente) AND'
      ' (%MCheques) '
      'union all'
      'select'
      '  CUPOMNUMERARIO.CUPOA13ID,'
      '  CUPOMNUMERARIO.CUPOA13ID AS NOFIA13ID,'
      
        '  cast(CUPOMNUMERARIO.CUPOA13ID as char(30)) AS CTRCA30NRODUPLIC' +
        'BANCO,'
      '  CUPOM.CLIEA13ID,'
      '  CUPOMNUMERARIO.CUPOA13ID as CTRC13ID,'
      '  CUPOM.CUPODEMIS as CTRCDULTREC,'
      '  CUPOM.CUPODEMIS as CTRCDVENC,'
      '  CUPOM.CUPODEMIS as CTRCDEMIS,'
      '  0 as CTRCINROPARC,'
      '  0.0 as CTRCN2TOTDESCREC,'
      '  0.0 as CTRCN2TOTJUROREC,'
      '  0.0 as CTRCN2TOTMULTAREC,'
      '  CUPOMNUMERARIO.CPNMN2VLR as CTRCN2TOTREC,'
      '  0.0 as CTRCN2TXJURO,'
      '  0.0 as CTRCN2TXMULTA,'
      '  CUPOMNUMERARIO.CPNMN2VLR as CTRCN2VLR,'
      '  CUPOM.CUPOCSTATUS  as CTRCCSTATUS,'
      '  CUPOM.EMPRICOD as EMPRICODULTREC,'
      '  CUPOMNUMERARIO.NUMEICOD,'
      '  CUPOM.EMPRICOD,'
      '  cast('#39#39' as CHAR(13)) as AVALA13ID,'
      '  0  as PORTICOD,'
      '  cast('#39#39' as CHAR(13)) as PDVDA13ID,'
      '  cast('#39#39' as CHAR(5)) as BANCA5CODCHQ,'
      '  cast('#39#39' as CHAR(15)) as CTRCA15NROCHQ,'
      '  cast(Null as Integer) as ALINICOD,'
      '  cast('#39#39' as CHAR(01)) as CheqDevolvido'
      'from'
      
        '  (CUPOMNUMERARIO CUPOMNUMERARIO inner join CUPOM CUPOM on CUPOM' +
        'NUMERARIO.CUPOA13ID = CUPOM.CUPOA13ID)'
      
        '  LEFT OUTER JOIN CLIENTE CLIENTE on CUPOM.CLIEA13ID = CLIENTE.C' +
        'LIEA13ID'
      'where'
      '  CUPOM.CUPOCSTATUS = "A" and'
      '  (%MCliente2) ')
    Macros = <
      item
        DataType = ftString
        Name = 'MCliente'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MCheques'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MCliente2'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 3
    Top = 463
    object SQLParcelasCUPOA13ID: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CUPOM.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLParcelasNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLParcelasCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CUPOM.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLParcelasCTRCA13ID: TStringField
      DisplayLabel = 'ID'
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CUPOMCONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLParcelasCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object SQLParcelasCTRCINROPARC: TIntegerField
      DisplayLabel = 'Parc.'
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CONTASRECEBER.CTRCINROPARC'
    end
    object SQLParcelasCTRCDVENC: TDateTimeField
      DisplayLabel = 'Vencimento'
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLParcelasCTRCDEMIS: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'CTRCDEMIS'
      Origin = 'DB.CONTASRECEBER.CTRCDEMIS'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLParcelasCTRCDULTREC: TDateTimeField
      DisplayLabel = 'Ult.Pagto'
      FieldName = 'CTRCDULTREC'
      Origin = 'DB.CONTASRECEBER.CTRCDULTREC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLParcelasCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      Origin = 'DB.CONTASRECEBER.CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLParcelasEMPRICODULTREC: TIntegerField
      DisplayLabel = 'Emp.'#218'lt.Rec.'
      FieldName = 'EMPRICODULTREC'
      Origin = 'DB.CONTASRECEBER.EMPRICODULTREC'
    end
    object SQLParcelasCUPOCTIPOPADRAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CUPOCTIPOPADRAO'
      Origin = 'DB.CUPOM.CUPOCTIPOPADRAO'
      FixedChar = True
      Size = 5
      Calculated = True
    end
    object SQLParcelasNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.CONTASRECEBER.NUMEICOD'
    end
    object SQLParcelasValorPagar: TBCDField
      FieldKind = fkCalculated
      FieldName = 'ValorPagar'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object SQLParcelasNumerarioLookup: TStringField
      DisplayLabel = 'Numer'#225'rio'
      FieldKind = fkLookup
      FieldName = 'NumerarioLookup'
      LookupDataSet = SQLNumerario
      LookupKeyFields = 'NUMEICOD'
      LookupResultField = 'NUMEA30DESCR'
      KeyFields = 'NUMEICOD'
      Size = 30
      Lookup = True
    end
    object SQLParcelasAtraso: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Atraso'
      Calculated = True
    end
    object SQLParcelasEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLParcelasAVALA13ID: TStringField
      FieldName = 'AVALA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLParcelasPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
    end
    object SQLParcelasPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLParcelasBANCA5CODCHQ: TStringField
      FieldName = 'BANCA5CODCHQ'
      FixedChar = True
      Size = 5
    end
    object SQLParcelasCTRCA15NROCHQ: TStringField
      FieldName = 'CTRCA15NROCHQ'
      FixedChar = True
      Size = 15
    end
    object SQLParcelasALINICOD: TIntegerField
      FieldName = 'ALINICOD'
    end
    object SQLParcelasCHEQDEVOLVIDO: TStringField
      FieldName = 'CHEQDEVOLVIDO'
      FixedChar = True
      Size = 1
    end
    object SQLParcelasCTRCN2TOTDESCREC: TBCDField
      FieldName = 'CTRCN2TOTDESCREC'
      Precision = 15
      Size = 3
    end
    object SQLParcelasCTRCN2TOTJUROREC: TBCDField
      FieldName = 'CTRCN2TOTJUROREC'
      Precision = 15
      Size = 3
    end
    object SQLParcelasCTRCN2TOTMULTAREC: TBCDField
      FieldName = 'CTRCN2TOTMULTAREC'
      Precision = 15
      Size = 3
    end
    object SQLParcelasCTRCN2TOTREC: TFloatField
      FieldName = 'CTRCN2TOTREC'
    end
    object SQLParcelasCTRCN2TXJURO: TBCDField
      FieldName = 'CTRCN2TXJURO'
      Precision = 15
      Size = 3
    end
    object SQLParcelasCTRCN2TXMULTA: TBCDField
      FieldName = 'CTRCN2TXMULTA'
      Precision = 15
      Size = 3
    end
    object SQLParcelasCTRCN2VLR: TBCDField
      FieldName = 'CTRCN2VLR'
      Precision = 15
      Size = 3
    end
  end
  object DSSQLParcelas: TDataSource
    AutoEdit = False
    DataSet = SQLDadosCompra
    OnDataChange = DSSQLParcelasDataChange
    Left = 87
    Top = 463
  end
  object SQLCartaPrimeiroAviso: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'select * from CartaPrimeiroAviso'
      'where CLIEA13ID = :CLIEA13ID')
    Macros = <>
    Left = 468
    Top = 1
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLIEA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLCartaPrimeiroAvisoCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CARTAPRIMEIROAVISO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCartaPrimeiroAvisoCUPOA13ID: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CARTAPRIMEIROAVISO.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCartaPrimeiroAvisoCTRCINROPARC: TIntegerField
      DisplayLabel = 'Parc.'
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CARTAPRIMEIROAVISO.CTRCINROPARC'
    end
    object SQLCartaPrimeiroAvisoPRAVCENVIADO: TStringField
      FieldName = 'PRAVCENVIADO'
      Origin = 'DB.CARTAPRIMEIROAVISO.PRAVCENVIADO'
      FixedChar = True
      Size = 1
    end
  end
  object DSSQLCartaPrimeiroAviso: TDataSource
    DataSet = SQLCartaPrimeiroAviso
    Left = 496
    Top = 1
  end
  object SQLCartaSegundoAviso: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'select * from CartaSegundoAviso'
      'where CLIEA13ID = :CLIEA13ID')
    Macros = <>
    Left = 524
    Top = 1
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLIEA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLCartaSegundoAvisoCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CARTAPRIMEIROAVISO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCartaSegundoAvisoCUPOA13ID: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CARTAPRIMEIROAVISO.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCartaSegundoAvisoCTRCINROPARC: TIntegerField
      DisplayLabel = 'Parc.'
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CARTAPRIMEIROAVISO.CTRCINROPARC'
    end
    object SQLCartaSegundoAvisoSGAVCENVIADO: TStringField
      FieldName = 'SGAVCENVIADO'
      Origin = 'DB.CARTASEGUNDOAVISO.SGAVCENVIADO'
      FixedChar = True
      Size = 1
    end
  end
  object DSSQLCartaSegundoAviso: TDataSource
    DataSet = SQLCartaSegundoAviso
    Left = 552
    Top = 1
  end
  object SQLCartaAvisoSPC: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'select * from CartaAvisoSPC'
      'where CLIEA13ID = :CLIEA13ID')
    Macros = <>
    Left = 580
    Top = 1
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLIEA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLCartaAvisoSPCCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CARTAPRIMEIROAVISO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCartaAvisoSPCCUPOA13ID: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CARTAPRIMEIROAVISO.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCartaAvisoSPCCTRCINROPARC: TIntegerField
      DisplayLabel = 'Parc.'
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CARTAPRIMEIROAVISO.CTRCINROPARC'
    end
    object SQLCartaAvisoSPCAVSPCENVIADO: TStringField
      FieldName = 'AVSPCENVIADO'
      Origin = 'DB.CARTAAVISOSPC.AVSPCENVIADO'
      FixedChar = True
      Size = 1
    end
  end
  object DSSQLCartaAvisoSPC: TDataSource
    DataSet = SQLCartaAvisoSPC
    Left = 608
    Top = 1
  end
  object SQLCupom: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CUPOM')
    Macros = <>
    Left = 3
    Top = 407
  end
  object TblCarne: TTable
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'Carne.DB'
    Left = 3
    Top = 379
    object TblCarneEmpresaNome: TStringField
      FieldName = 'EmpresaNome'
      Size = 60
    end
    object TblCarneEmpresaEnder: TStringField
      FieldName = 'EmpresaEnder'
      Size = 60
    end
    object TblCarneEmpresaBairro: TStringField
      FieldName = 'EmpresaBairro'
      Size = 60
    end
    object TblCarneEmpresaCidade: TStringField
      FieldName = 'EmpresaCidade'
      Size = 60
    end
    object TblCarneEmpresaUF: TStringField
      FieldName = 'EmpresaUF'
      Size = 2
    end
    object TblCarneEmpresaFone: TStringField
      FieldName = 'EmpresaFone'
      Size = 30
    end
    object TblCarneMensagem: TStringField
      FieldName = 'Mensagem'
      Size = 100
    end
    object TblCarneCliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object TblCarneEndereco: TStringField
      FieldName = 'Endereco'
      Size = 60
    end
    object TblCarneBairro: TStringField
      FieldName = 'Bairro'
      Size = 60
    end
    object TblCarneCidade: TStringField
      FieldName = 'Cidade'
      Size = 60
    end
    object TblCarneCodigoCliente: TStringField
      FieldName = 'CodigoCliente'
      Size = 13
    end
    object TblCarneNumeroContrato: TStringField
      FieldName = 'NumeroContrato'
      Size = 13
    end
    object TblCarneNumeroParcela: TIntegerField
      FieldName = 'NumeroParcela'
    end
    object TblCarneContadorParcelas: TIntegerField
      FieldName = 'ContadorParcelas'
    end
    object TblCarneDataVencimento: TDateField
      FieldName = 'DataVencimento'
    end
    object TblCarneValorParcela: TFloatField
      FieldName = 'ValorParcela'
    end
    object TblCarneVendedor: TStringField
      FieldName = 'Vendedor'
      Size = 60
    end
    object TblCarneTotalCupom: TFloatField
      FieldName = 'TotalCupom'
    end
    object TblCarnePlano: TStringField
      FieldName = 'Plano'
      Size = 60
    end
    object TblCarneDataEmissao: TDateField
      FieldName = 'DataEmissao'
    end
    object TblCarneNroCupom: TStringField
      FieldName = 'NroCupom'
      Size = 6
    end
    object TblCarneTaxaCrediario: TFloatField
      FieldName = 'TaxaCrediario'
    end
    object TblCarneValorDesconto: TFloatField
      FieldName = 'ValorDesconto'
    end
    object TblCarneAcrescimo: TFloatField
      FieldName = 'Acrescimo'
    end
    object TblCarneEntrada: TFloatField
      FieldName = 'Entrada'
    end
    object TblCarneClienteDependente: TIntegerField
      FieldName = 'ClienteDependente'
    end
  end
  object SQLNumerario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from NUMERARIO')
    Macros = <>
    Left = 31
    Top = 407
  end
  object SQLItem: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'select'
      '  CUPOMITEM.CUPOA13ID AS DOCUMENTO,'
      '  CUPOM.CUPOINRO AS CUPOM,'
      '  CUPOMITEM.PRODICOD AS PRODICOD,'
      '  CUPOMITEM.CPITN3QTD AS QTDE,'
      '  CUPOMITEM.CPITN3VLRUNIT AS VLRUNIT,'
      '  CUPOMITEM.CPITN2DESC AS VLRDESC,'
      '  CUPOMITEM.CPITCSTATUS AS STATUS,'
      '  CUPOM.EMPRICOD AS EMPRICOD,'
      '  CUPOM.CLIEA13ID AS CLIEA13ID,'
      '  CUPOM.CUPODEMIS AS DEMISSAO,'
      '  PRODUTO.PRODA60DESCR AS PRODA60DESCR,'
      '  VENDEDOR.VENDA60NOME'
      'from'
      
        '  (CUPOMITEM CUPOMITEM inner join CUPOM CUPOM on CUPOMITEM.CUPOA' +
        '13ID = CUPOM.CUPOA13ID)'
      
        '  left outer join PRODUTO PRODUTO on CUPOMITEM.PRODICOD = PRODUT' +
        'O.PRODICOD'
      
        '  left outer join Vendedor on CUPOMITEM.VENDICOD = VENDEDOR.VEND' +
        'ICOD'
      'where'
      '  CUPOM.CLIEA13ID = :CLIEA13ID and'
      '  CUPOMITEM.CPITCSTATUS = "A" and'
      '  (%MProdutoCP)'
      'UNION ALL'
      'select'
      '  cast(NOTAFISCAL.NOFIINUMERO as char(13))AS DOCUMENTO,'
      '  NOTAFISCAL.NOFIINUMERO AS CUPOM,'
      '  NOTAFISCALITEM.PRODICOD AS PRODICOD,'
      '  NOTAFISCALITEM.NFITN3QUANT AS QTDE,'
      '  NOTAFISCALITEM.NFITN2VLRUNIT AS VLRUNIT,'
      '  NOTAFISCALITEM.NFITN2VLRDESC AS VLRDESC,'
      '  NOTAFISCAL.NOFICSTATUS AS STATUS,'
      '  NOTAFISCAL.EMPRICOD AS EMPRICOD,'
      '  NOTAFISCAL.CLIEA13ID AS CLIEA13ID,'
      '  NOTAFISCAL.NOFIDEMIS AS DEMISSAO,'
      '  PRODUTO.PRODA60DESCR AS PRODA60DESCR,'
      '  VENDEDOR.VENDA60NOME'
      'from'
      
        '  (NOTAFISCALITEM NOTAFISCALITEM inner join NOTAFISCAL NOTAFISCA' +
        'L on NOTAFISCALITEM.NOFIA13ID = NOTAFISCAL.NOFIA13ID)'
      
        '  left outer join PRODUTO PRODUTO on NOTAFISCALITEM.PRODICOD = P' +
        'RODUTO.PRODICOD'
      
        '  left outer join Vendedor on NOTAFISCAL.VENDICOD = VENDEDOR.VEN' +
        'DICOD'
      'where'
      '  NOTAFISCAL.CLIEA13ID = :CLIEA13ID AND'
      '  NOTAFISCAL.NOFICSTATUS = '#39'E'#39' and'
      '  (%MProdutoNF)')
    Macros = <
      item
        DataType = ftString
        Name = 'MProdutoCP'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MProdutoNF'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 3
    Top = 435
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLIEA13ID'
        ParamType = ptUnknown
        Size = 14
      end
      item
        DataType = ftFixedChar
        Name = 'CLIEA13ID'
        ParamType = ptUnknown
      end>
    object SQLItemDOCUMENTO: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'DOCUMENTO'
      FixedChar = True
      Size = 13
    end
    object SQLItemCUPOM: TIntegerField
      FieldName = 'CUPOM'
    end
    object SQLItemPRODICOD: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'PRODICOD'
    end
    object SQLItemQTDE: TBCDField
      DisplayLabel = 'Qtde'
      FieldName = 'QTDE'
      Precision = 15
      Size = 3
    end
    object SQLItemVLRUNIT: TBCDField
      DisplayLabel = 'Valor Unit'
      FieldName = 'VLRUNIT'
      Precision = 15
      Size = 3
    end
    object SQLItemVLRDESC: TBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'VLRDESC'
      Precision = 15
      Size = 3
    end
    object SQLItemSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object SQLItemEMPRICOD: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRICOD'
    end
    object SQLItemCLIEA13ID: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLItemDEMISSAO: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DEMISSAO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLItemPRODA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLItemVENDA60NOME: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDA60NOME'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLItem: TDataSource
    DataSet = SQLItem
    Left = 31
    Top = 435
  end
  object DSTblCarne: TDataSource
    DataSet = TblCarne
    Left = 31
    Top = 379
  end
  object TblDadosCompra: TTable
    DatabaseName = 'UnitGestao_Temp'
    FieldDefs = <
      item
        Name = 'CUPOA13ID'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'NOFIA13ID'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'CTRCA30NRODUPLICBANCO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CLIEA13ID'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'CTRCA13ID'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'CTRCDULTREC'
        DataType = ftDateTime
      end
      item
        Name = 'CTRCDVENC'
        DataType = ftDateTime
      end
      item
        Name = 'CTRCDEMIS'
        DataType = ftDateTime
      end
      item
        Name = 'CTRCINROPARC'
        DataType = ftInteger
      end
      item
        Name = 'CTRCN2TOTDESCREC'
        DataType = ftBCD
        Precision = 32
        Size = 3
      end
      item
        Name = 'CTRCN2TOTJUROREC'
        DataType = ftBCD
        Precision = 32
        Size = 3
      end
      item
        Name = 'CTRCN2TOTMULTAREC'
        DataType = ftBCD
        Precision = 32
        Size = 3
      end
      item
        Name = 'CTRCN2TOTREC'
        DataType = ftFloat
      end
      item
        Name = 'CTRCN2TXJURO'
        DataType = ftBCD
        Precision = 32
        Size = 3
      end
      item
        Name = 'CTRCN2TXMULTA'
        DataType = ftBCD
        Precision = 32
        Size = 3
      end
      item
        Name = 'CTRCN2VLR'
        DataType = ftBCD
        Precision = 32
        Size = 3
      end
      item
        Name = 'CTRCCSTATUS'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'EMPRICODULTREC'
        DataType = ftInteger
      end
      item
        Name = 'NUMEICOD'
        DataType = ftInteger
      end
      item
        Name = 'EMPRICOD'
        DataType = ftInteger
      end
      item
        Name = 'AVALA13ID'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'PORTICOD'
        DataType = ftInteger
      end
      item
        Name = 'PDVDA13ID'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'BANCA5CODCHQ'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'CTRCA15NROCHQ'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'ALINICOD'
        DataType = ftInteger
      end
      item
        Name = 'CHEQDEVOLVIDO'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'TblDadosCompraIndex1'
        Fields = 'CUPOA13ID;NOFIA13ID;CTRCA30NRODUPLICBANCO;CLIEA13ID;CTRCA13ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'DadosCompra.DB'
    TableType = ttParadox
    Left = 59
    Top = 463
    object TblDadosCompraCUPOA13ID: TStringField
      DisplayLabel = 'ID Cupom'
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CUPOM.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object TblDadosCompraNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      Size = 13
    end
    object TblDadosCompraCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CUPOM.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object TblDadosCompraCTRCA13ID: TStringField
      DisplayLabel = 'ID'
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CUPOMCONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object TblDadosCompraCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object TblDadosCompraCTRCINROPARC: TIntegerField
      DisplayLabel = 'Prc.'
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CONTASRECEBER.CTRCINROPARC'
    end
    object TblDadosCompraCTRCDVENC: TDateTimeField
      DisplayLabel = 'Dt.Venc.'
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object TblDadosCompraCTRCDEMIS: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'CTRCDEMIS'
      Origin = 'DB.CONTASRECEBER.CTRCDEMIS'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object TblDadosCompraCTRCDULTREC: TDateTimeField
      DisplayLabel = 'Ult.Pagto'
      FieldName = 'CTRCDULTREC'
      Origin = 'DB.CONTASRECEBER.CTRCDULTREC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object TblDadosCompraCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      Origin = 'DB.CONTASRECEBER.CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object TblDadosCompraEMPRICODULTREC: TIntegerField
      DisplayLabel = 'Emp.'#218'lt.Rec.'
      FieldName = 'EMPRICODULTREC'
      Origin = 'DB.CONTASRECEBER.EMPRICODULTREC'
    end
    object TblDadosCompraCUPOCTIPOPADRAO: TStringField
      DisplayLabel = 'Tipo Padr'#227'o'
      FieldKind = fkCalculated
      FieldName = 'CUPOCTIPOPADRAO'
      Origin = 'DB.CUPOM.CUPOCTIPOPADRAO'
      FixedChar = True
      Size = 5
      Calculated = True
    end
    object TblDadosCompraNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.CONTASRECEBER.NUMEICOD'
    end
    object TblDadosCompraCTRCN2VLR: TBCDField
      FieldName = 'CTRCN2VLR'
      Precision = 15
      Size = 3
    end
    object TblDadosCompraCTRCN2TXMULTA: TBCDField
      FieldName = 'CTRCN2TXMULTA'
      Precision = 15
      Size = 3
    end
    object TblDadosCompraCTRCN2TXJURO: TBCDField
      FieldName = 'CTRCN2TXJURO'
      Precision = 15
      Size = 3
    end
    object TblDadosCompraCTRCN2TOTREC: TFloatField
      FieldName = 'CTRCN2TOTREC'
    end
    object TblDadosCompraCTRCN2TOTMULTAREC: TBCDField
      FieldName = 'CTRCN2TOTMULTAREC'
      Precision = 15
      Size = 3
    end
    object TblDadosCompraCTRCN2TOTJUROREC: TBCDField
      FieldName = 'CTRCN2TOTJUROREC'
      Precision = 15
      Size = 3
    end
    object TblDadosCompraCTRCN2TOTDESCREC: TBCDField
      FieldName = 'CTRCN2TOTDESCREC'
      Precision = 15
      Size = 3
    end
    object TblDadosCompraCUPON2TOTITENS: TBCDField
      DisplayLabel = 'Vlr.Compra'
      FieldKind = fkCalculated
      FieldName = 'CUPON2TOTITENS'
      Origin = 'DB.CUPOM.CUPON2TOTITENS'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
      Calculated = True
    end
    object TblDadosCompraValorPagar: TBCDField
      DisplayWidth = 16
      FieldKind = fkCalculated
      FieldName = 'ValorPagar'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
      Size = 3
      Calculated = True
    end
    object TblDadosCompraNumerarioLookup: TStringField
      DisplayLabel = 'Numer'#225'rio'
      FieldKind = fkLookup
      FieldName = 'NumerarioLookup'
      LookupDataSet = SQLNumerario
      LookupKeyFields = 'NUMEICOD'
      LookupResultField = 'NUMEA30DESCR'
      KeyFields = 'NUMEICOD'
      Size = 30
      Lookup = True
    end
    object TblDadosCompraAtraso: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Atraso'
      Calculated = True
    end
    object TblDadosCompraJuroParc: TFloatField
      DisplayLabel = 'Jur.Dev.'
      FieldKind = fkCalculated
      FieldName = 'JuroParc'
      Calculated = True
    end
    object TblDadosCompraMultaParc: TFloatField
      DisplayLabel = 'Mult.Dev.'
      FieldKind = fkCalculated
      FieldName = 'MultaParc'
      Calculated = True
    end
    object TblDadosCompraTxCobrParc: TFloatField
      DisplayLabel = 'Tx.Cobr.Dev.'
      FieldKind = fkCalculated
      FieldName = 'TxCobrParc'
      Calculated = True
    end
    object TblDadosCompraDescParc: TFloatField
      DisplayLabel = 'Desc.Dev.'
      FieldKind = fkCalculated
      FieldName = 'DescParc'
      Calculated = True
    end
    object TblDadosCompraDocumento: TStringField
      FieldKind = fkCalculated
      FieldName = 'Documento'
      Size = 30
      Calculated = True
    end
    object TblDadosCompraEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object TblDadosCompraAVALA13ID: TStringField
      FieldName = 'AVALA13ID'
      FixedChar = True
      Size = 13
    end
    object TblDadosCompraPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
    end
    object TblDadosCompraPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object TblDadosCompraBANCA5CODCHQ: TStringField
      FieldName = 'BANCA5CODCHQ'
      FixedChar = True
      Size = 5
    end
    object TblDadosCompraCTRCA15NROCHQ: TStringField
      FieldName = 'CTRCA15NROCHQ'
      FixedChar = True
      Size = 15
    end
    object TblDadosCompraALINICOD: TIntegerField
      FieldName = 'ALINICOD'
    end
    object TblDadosCompraCHEQDEVOLVIDO: TStringField
      FieldName = 'CHEQDEVOLVIDO'
      FixedChar = True
      Size = 1
    end
  end
  object BatchMoveParc: TBatchMove
    Destination = TblDadosCompra
    Mode = batCopy
    Source = SQLParcelas
    Left = 31
    Top = 463
  end
  object SQLGeral: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 87
    Top = 407
  end
  object SQLCaderno: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'select * from '
      '   CADERNO'
      'where '
      '   CLIEA13ID = :CLIEA13ID'
      'order by'
      '    CLCADLANC, CLCAICOD')
    Macros = <>
    Left = 3
    Top = 491
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLIEA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLCadernoCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CADERNO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCadernoCLCADLANC: TDateTimeField
      FieldName = 'CLCADLANC'
      Origin = 'DB.CADERNO.CLCADLANC'
    end
    object SQLCadernoCLCAICOD: TIntegerField
      FieldName = 'CLCAICOD'
      Origin = 'DB.CADERNO.CLCAICOD'
    end
    object SQLCadernoCLCAN2VLRCREDITO: TBCDField
      FieldName = 'CLCAN2VLRCREDITO'
      Origin = 'DB.CADERNO.CLCAN2VLRCREDITO'
      Precision = 15
      Size = 3
    end
    object SQLCadernoCLCAN2VLRDEBITO: TBCDField
      FieldName = 'CLCAN2VLRDEBITO'
      Origin = 'DB.CADERNO.CLCAN2VLRDEBITO'
      Precision = 15
      Size = 3
    end
    object SQLCadernoCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CADERNO.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCadernoCLCAA60HIST: TStringField
      FieldName = 'CLCAA60HIST'
      Origin = 'DB.CADERNO.CLCAA60HIST'
      FixedChar = True
      Size = 60
    end
  end
  object TblCadernoCliente: TTable
    DatabaseName = 'UNITGESTAO_TEMP'
    FieldDefs = <
      item
        Name = 'CLIEA13ID'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'EMPRICOD'
        DataType = ftInteger
      end
      item
        Name = 'CLIEICOD'
        DataType = ftInteger
      end
      item
        Name = 'CLIEA5FISJURID'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'CLIEA14CGC'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'CLIEA20IE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CLIEA11CPF'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'CLIEA10RG'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CLIEA60RAZAOSOC'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CLIEA60NOMEFANT'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CLIEA60CONTATO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CLIEA15FONE1'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CLIEA15FONE2'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CLIEA15FAX'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CLIEA30OUTROSDOC'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CLIECSEXO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CLIEA60PROFISSAO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CLIEA60ENDRES'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CLIEA60BAIRES'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CLIEA60CIDRES'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CLIEA2UFRES'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CLIEA8CEPRES'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'CLIEA60EMAIL'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CLIEA60URL'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CLIEN2RENDA'
        DataType = ftBCD
        Precision = 32
        Size = 3
      end
      item
        Name = 'CLIEN2LIMITECRED'
        DataType = ftBCD
        Precision = 32
        Size = 3
      end
      item
        Name = 'CLIEA60NOMEPAI'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CLIEA60NOMEMAE'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CLIEDNASC'
        DataType = ftDateTime
      end
      item
        Name = 'CLIECESTADOCIVIL'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CLIEA60CONJUGE'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CLIEN2CONJUGERENDA'
        DataType = ftBCD
        Precision = 32
        Size = 3
      end
      item
        Name = 'CLIEDNASCCONJUGE'
        DataType = ftDateTime
      end
      item
        Name = 'CLIEA60CONJUGEEMPR'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CLIEA15CONJFONEMPR'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CLIEA60EMPRESA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CLIEA60ENDEMPRESA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CLIEA60BAIEMPRESA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CLIEA60CIDEMPRESA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CLIEA2UFEMPRESA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CLIEA8CEPEMPRESA'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'CLIEDAMISEMPRESA'
        DataType = ftDateTime
      end
      item
        Name = 'CLIEA15FONEEMPRESA'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'BANCA5COD'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'CLIEA5AGENCIA'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'CLIEA10CONTA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CLIEA60TITULAR'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CLIEDABERTCONTA'
        DataType = ftDateTime
      end
      item
        Name = 'CLIETOBS'
        DataType = ftString
        Size = 254
      end
      item
        Name = 'TPCLICOD'
        DataType = ftInteger
      end
      item
        Name = 'MTBLICOD'
        DataType = ftInteger
      end
      item
        Name = 'PROFICOD'
        DataType = ftInteger
      end
      item
        Name = 'VENDICOD'
        DataType = ftInteger
      end
      item
        Name = 'CLIEDCAD'
        DataType = ftDateTime
      end
      item
        Name = 'CLIEDPRICOMPRA'
        DataType = ftDateTime
      end
      item
        Name = 'CLIEDULTCOMPRA'
        DataType = ftDateTime
      end
      item
        Name = 'CLIEA254PATHFOTO'
        DataType = ftString
        Size = 254
      end
      item
        Name = 'CLIECRECAVISATRASO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CLIEA30NATURALIDADE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CLIECRECEBECARTAO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CLIEDENVCARTIMP'
        DataType = ftDateTime
      end
      item
        Name = 'CLIEDRETCARTIMP'
        DataType = ftDateTime
      end
      item
        Name = 'CLIEDENVCARTCLI'
        DataType = ftDateTime
      end
      item
        Name = 'CLIEA10CODCONV'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CLIEA10CODANT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PENDENTE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'REGISTRO'
        DataType = ftDateTime
      end
      item
        Name = 'CLIEA60CONJUGEMAE'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CLIEA20NROCARTCRED'
        DataType = ftString
        Size = 20
      end>
    StoreDefs = True
    TableName = 'RelCadernoCliente.DB'
    Left = 59
    Top = 491
    object TblCadernoClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CADERNO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object TblCadernoClienteCLCADLANC: TDateTimeField
      FieldName = 'CLCADLANC'
      Origin = 'DB.CADERNO.CLCADLANC'
    end
    object TblCadernoClienteCLCAICOD: TIntegerField
      FieldName = 'CLCAICOD'
      Origin = 'DB.CADERNO.CLCAICOD'
    end
    object TblCadernoClienteCLCAN2VLRCREDITO: TBCDField
      FieldName = 'CLCAN2VLRCREDITO'
      Origin = 'DB.CADERNO.CLCAN2VLRCREDITO'
      Precision = 15
      Size = 3
    end
    object TblCadernoClienteCLCAN2VLRDEBITO: TBCDField
      FieldName = 'CLCAN2VLRDEBITO'
      Origin = 'DB.CADERNO.CLCAN2VLRDEBITO'
      Precision = 15
      Size = 3
    end
    object TblCadernoClienteCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CADERNO.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object TblCadernoClienteCLCAA60HIST: TStringField
      FieldName = 'CLCAA60HIST'
      Origin = 'DB.CADERNO.CLCAA60HIST'
      FixedChar = True
      Size = 60
    end
  end
  object BatchMoveCaderno: TBatchMove
    Destination = TblCadernoCliente
    Mode = batCopy
    Source = SQLCaderno
    Left = 31
    Top = 491
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    Margins.Left = -1
    Margins.Right = -1
    Margins.Top = -1
    Margins.Bottom = -1
    DiscardSavedData = True
    LoadEngineOnUse = True
    PrintDate.Day = 0
    PrintDate.Month = 0
    PrintDate.Year = 0
    Subreports.NLinks = 0
    Subreports.OnDemand = False
    Tables.Number = -1
    SortFields.Number = -1
    GroupSortFields.Number = -1
    GroupCondition.Number = -1
    GroupCondition.GroupType = gtOther
    GroupOptions.Number = -1
    GroupOptions.GroupType = gtOther
    GroupOptions.RepeatGH = cDefault
    GroupOptions.KeepTogether = cDefault
    GroupOptions.TopNOptions = tnDefault
    GroupOptions.TopNGroups = -1
    GroupOptions.TopNDiscardOthers = cDefault
    ParamFields.ParamType = pfString
    ParamFields.ParamSource = psReport
    ParamFields.Info.AllowNull = cDefault
    ParamFields.Info.AllowEditing = cDefault
    ParamFields.Info.AllowMultipleValues = cDefault
    ParamFields.Info.ValueType = vtDiscrete
    ParamFields.Info.PartOfGroup = cDefault
    ParamFields.Info.MutuallyExclusiveGroup = cDefault
    ParamFields.Info.GroupNum = -1
    ParamFields.ValueLimit = cDefault
    ParamFields.Ranges.Number = -1
    ParamFields.Ranges.RangeBounds = IncludeStartAndEnd
    ParamFields.PLDescriptionOnly = cDefault
    ParamFields.PLSortMethod = psmDefaultSort
    ParamFields.PLSortByDescription = cDefault
    SectionFormat.BackgroundColor = clNone
    SectionHeight.Height = 0
    SQL.Params.ParamType = spChar
    LogOnInfo.Table = -1
    SessionInfo.Table = -1
    SessionInfo.Propagate = True
    Export.Excel.Constant = 9.000000000000000000
    Export.Excel.Area = 'D'
    Export.CharSepQuote = ' '
    WindowZoom.Magnification = -1
    WindowState = wsMaximized
    WindowButtonBar.CancelBtn = True
    WindowButtonBar.CloseBtn = True
    WindowButtonBar.PrintSetupBtn = True
    WindowButtonBar.SearchBtn = True
    WindowCursor.GroupArea = wcDefault
    WindowCursor.GroupAreaField = wcDefault
    WindowCursor.DetailArea = wcDefault
    WindowCursor.DetailAreaField = wcDefault
    WindowCursor.Graph = wcDefault
    GraphType.Number = -1
    GraphType.Style = barSideBySide
    GraphText.Number = -1
    GraphText.TitleFont.Charset = DEFAULT_CHARSET
    GraphText.TitleFont.Color = clWindowText
    GraphText.TitleFont.Height = -11
    GraphText.TitleFont.Name = 'MS Sans Serif'
    GraphText.TitleFont.Style = []
    GraphText.SubTitleFont.Charset = DEFAULT_CHARSET
    GraphText.SubTitleFont.Color = clWindowText
    GraphText.SubTitleFont.Height = -11
    GraphText.SubTitleFont.Name = 'MS Sans Serif'
    GraphText.SubTitleFont.Style = []
    GraphText.FootNoteFont.Charset = DEFAULT_CHARSET
    GraphText.FootNoteFont.Color = clWindowText
    GraphText.FootNoteFont.Height = -11
    GraphText.FootNoteFont.Name = 'MS Sans Serif'
    GraphText.FootNoteFont.Style = []
    GraphText.GroupsTitleFont.Charset = DEFAULT_CHARSET
    GraphText.GroupsTitleFont.Color = clWindowText
    GraphText.GroupsTitleFont.Height = -11
    GraphText.GroupsTitleFont.Name = 'MS Sans Serif'
    GraphText.GroupsTitleFont.Style = []
    GraphText.DataTitleFont.Charset = DEFAULT_CHARSET
    GraphText.DataTitleFont.Color = clWindowText
    GraphText.DataTitleFont.Height = -11
    GraphText.DataTitleFont.Name = 'MS Sans Serif'
    GraphText.DataTitleFont.Style = []
    GraphText.LegendFont.Charset = DEFAULT_CHARSET
    GraphText.LegendFont.Color = clWindowText
    GraphText.LegendFont.Height = -11
    GraphText.LegendFont.Name = 'MS Sans Serif'
    GraphText.LegendFont.Style = []
    GraphText.GroupLabelsFont.Charset = DEFAULT_CHARSET
    GraphText.GroupLabelsFont.Color = clWindowText
    GraphText.GroupLabelsFont.Height = -11
    GraphText.GroupLabelsFont.Name = 'MS Sans Serif'
    GraphText.GroupLabelsFont.Style = []
    GraphText.DataLabelsFont.Charset = DEFAULT_CHARSET
    GraphText.DataLabelsFont.Color = clWindowText
    GraphText.DataLabelsFont.Height = -11
    GraphText.DataLabelsFont.Name = 'MS Sans Serif'
    GraphText.DataLabelsFont.Style = []
    GraphOptions.Number = -1
    GraphOptions.Max = -1.000000000000000000
    GraphOptions.Min = -1.000000000000000000
    GraphOptions.DataValues = cDefault
    GraphOptions.GridLines = cDefault
    GraphOptions.Legend = cDefault
    GraphOptions.BarDirection = bdDefault
    GraphOptionInfo.Number = -1
    GraphOptionInfo.Color = gcDefault
    GraphOptionInfo.Legend = glDefault
    GraphOptionInfo.PieSize = gpsDefault
    GraphOptionInfo.PieSlice = gslDefault
    GraphOptionInfo.BarSize = gbsDefault
    GraphOptionInfo.BarDirection = bdDefault
    GraphOptionInfo.MarkerSize = gmsDefault
    GraphOptionInfo.MarkerShape = gshDefault
    GraphOptionInfo.DataPoints = gdpDefault
    GraphOptionInfo.NumberFormat = gnfDefault
    GraphOptionInfo.ViewingAngle = gvaDefault
    GraphData.Number = -1
    GraphData.RowGroupN = -1
    GraphData.ColGroupN = -1
    GraphData.SummarizedFieldN = -1
    GraphData.Direction = Unknown
    GraphAxis.Number = -1
    GraphAxis.GridLineX = gglDefault
    GraphAxis.GridLineY = gglDefault
    GraphAxis.GridLineY2 = gglDefault
    GraphAxis.GridLineZ = gglDefault
    GraphAxis.DataValuesY = gdvDefault
    GraphAxis.DataValuesY2 = gdvDefault
    GraphAxis.DataValuesZ = gdvDefault
    GraphAxis.NumberFormatY = gnfDefault
    GraphAxis.NumberFormatY2 = gnfDefault
    GraphAxis.NumberFormatZ = gnfDefault
    GraphAxis.DivisionTypeY = gdvDefault
    GraphAxis.DivisionTypeY2 = gdvDefault
    GraphAxis.DivisionTypeZ = gdvDefault
    GraphAxis.DivisionsY = 0
    GraphAxis.DivisionsY2 = 0
    GraphAxis.DivisionsZ = 0
    Left = 59
    Top = 379
  end
  object SQLBanco: TTable
    DatabaseName = 'DB'
    TableName = 'BANCO'
    Left = 31
    Top = 351
  end
  object SQLTabelaPreco: TTable
    DatabaseName = 'DB'
    TableName = 'TABELAPRECO'
    Left = 3
    Top = 351
  end
  object SQLTipoCliente: TTable
    DatabaseName = 'DB'
    TableName = 'TIPOCLIENTE'
    Left = 59
    Top = 351
  end
  object FormStorage: TFormStorage
    Options = []
    StoredProps.Strings = (
      'RadioIgnoracheque.Checked')
    StoredValues = <>
    Left = 680
    Top = 2
  end
  object Picture: TOpenPictureDialog
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofNoNetworkButton, ofEnableSizing]
    Title = 'Gest'#227'o Loja'
    Left = 115
    Top = 491
  end
  object SQLCupomObs: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select CupoA13ID, CUPOV254OBS from Cupom'
      'Where CupoA13ID = :Cupom')
    Macros = <>
    Left = 59
    Top = 435
    ParamData = <
      item
        DataType = ftString
        Name = 'Cupom'
        ParamType = ptInput
      end>
    object SQLCupomObsCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCupomObsCUPOV254OBS: TStringField
      FieldName = 'CUPOV254OBS'
      Size = 254
    end
  end
  object DSSQLCupomObs: TDataSource
    DataSet = SQLCupomObs
    Left = 8
    Top = 533
  end
  object SQLLimiteCliente: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 87
    Top = 435
  end
  object SQLLimiteParcelas: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 87
    Top = 491
  end
  object ReportPlanilhaMensalVendas: TppReport
    AutoStop = False
    DataPipeline = PipeCliente
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Legal'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 120
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 708
    Top = 2
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'PipeCliente'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 224632
      mmPrintPosition = 0
      object ppShape9: TppShape
        UserName = 'Shape9'
        mmHeight = 33073
        mmLeft = 2910
        mmTop = 2381
        mmWidth = 197115
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Planinlha de Vendas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 3440
        mmTop = 2646
        mmWidth = 196850
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4057
        mmLeft = 3440
        mmTop = 8731
        mmWidth = 12065
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA60RAZAOSOC'
        DataPipeline = PipeCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'PipeCliente'
        mmHeight = 4057
        mmLeft = 16140
        mmTop = 8731
        mmWidth = 34290
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'End.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 3440
        mmTop = 12965
        mmWidth = 8202
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA60ENDRES'
        DataPipeline = PipeCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'PipeCliente'
        mmHeight = 4057
        mmLeft = 16140
        mmTop = 12965
        mmWidth = 28575
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 3440
        mmTop = 17463
        mmWidth = 11113
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA60BAIRES'
        DataPipeline = PipeCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'PipeCliente'
        mmHeight = 4057
        mmLeft = 16140
        mmTop = 17463
        mmWidth = 27305
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 3440
        mmTop = 21960
        mmWidth = 11906
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA60CIDRES'
        DataPipeline = PipeCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'PipeCliente'
        mmHeight = 4057
        mmLeft = 16140
        mmTop = 21960
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CGC:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 3440
        mmTop = 26194
        mmWidth = 8996
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA14CGC'
        DataPipeline = PipeCliente
        DisplayFormat = '##.###.###/####-##;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'PipeCliente'
        mmHeight = 4057
        mmLeft = 16140
        mmTop = 26194
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fones:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 3440
        mmTop = 30427
        mmWidth = 9790
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA15FONE1'
        DataPipeline = PipeCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'PipeCliente'
        mmHeight = 3969
        mmLeft = 16140
        mmTop = 30427
        mmWidth = 49742
        BandType = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA15FONE2'
        DataPipeline = PipeCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'PipeCliente'
        mmHeight = 3969
        mmLeft = 66411
        mmTop = 30427
        mmWidth = 49742
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 47361
        mmLeft = 2910
        mmTop = 35719
        mmWidth = 98161
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 47361
        mmLeft = 101336
        mmTop = 35719
        mmWidth = 98690
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 47361
        mmLeft = 2910
        mmTop = 83344
        mmWidth = 98161
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 47361
        mmLeft = 101336
        mmTop = 83344
        mmWidth = 98690
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 47361
        mmLeft = 2910
        mmTop = 130969
        mmWidth = 98161
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 47361
        mmLeft = 101336
        mmTop = 130969
        mmWidth = 98690
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 47361
        mmLeft = 2910
        mmTop = 178594
        mmWidth = 98161
        BandType = 0
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 47361
        mmLeft = 101336
        mmTop = 178594
        mmWidth = 98690
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object PipeCliente: TppDBPipeline
    DataSource = DSTemplate
    OpenDataSource = False
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'PipeCliente'
    Left = 736
    Top = 2
    object PipeClienteppField1: TppField
      FieldAlias = 'CLIEA13ID'
      FieldName = 'CLIEA13ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField2: TppField
      FieldAlias = 'EMPRICOD'
      FieldName = 'EMPRICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField3: TppField
      FieldAlias = 'CLIEICOD'
      FieldName = 'CLIEICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField4: TppField
      FieldAlias = 'CLIEA60RAZAOSOC'
      FieldName = 'CLIEA60RAZAOSOC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField5: TppField
      FieldAlias = 'CLIEA60NOMEFANT'
      FieldName = 'CLIEA60NOMEFANT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField6: TppField
      FieldAlias = 'CLIEA14CGC'
      FieldName = 'CLIEA14CGC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField7: TppField
      FieldAlias = 'CLIEA20IE'
      FieldName = 'CLIEA20IE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField8: TppField
      FieldAlias = 'CLIEA11CPF'
      FieldName = 'CLIEA11CPF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField9: TppField
      FieldAlias = 'CLIEA10RG'
      FieldName = 'CLIEA10RG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField10: TppField
      FieldAlias = 'CLIEA15FONE1'
      FieldName = 'CLIEA15FONE1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField11: TppField
      FieldAlias = 'CLIEA15FONE2'
      FieldName = 'CLIEA15FONE2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField12: TppField
      FieldAlias = 'CLIEA15FAX'
      FieldName = 'CLIEA15FAX'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField13: TppField
      FieldAlias = 'CLIEA30OUTROSDOC'
      FieldName = 'CLIEA30OUTROSDOC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField14: TppField
      FieldAlias = 'CLIECSEXO'
      FieldName = 'CLIECSEXO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField15: TppField
      FieldAlias = 'CLIEA60PROFISSAO'
      FieldName = 'CLIEA60PROFISSAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField16: TppField
      FieldAlias = 'CLIEA60ENDRES'
      FieldName = 'CLIEA60ENDRES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField17: TppField
      FieldAlias = 'CLIEA60BAIRES'
      FieldName = 'CLIEA60BAIRES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField18: TppField
      FieldAlias = 'CLIEA60CIDRES'
      FieldName = 'CLIEA60CIDRES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField19: TppField
      FieldAlias = 'CLIEA2UFRES'
      FieldName = 'CLIEA2UFRES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField20: TppField
      FieldAlias = 'CLIEA8CEPRES'
      FieldName = 'CLIEA8CEPRES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField21: TppField
      FieldAlias = 'CLIEA60EMAIL'
      FieldName = 'CLIEA60EMAIL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField22: TppField
      FieldAlias = 'CLIEA60URL'
      FieldName = 'CLIEA60URL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField23: TppField
      FieldAlias = 'CLIEA60NOMEPAI'
      FieldName = 'CLIEA60NOMEPAI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField24: TppField
      FieldAlias = 'CLIEA60NOMEMAE'
      FieldName = 'CLIEA60NOMEMAE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField25: TppField
      FieldAlias = 'CLIEDNASC'
      FieldName = 'CLIEDNASC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField26: TppField
      FieldAlias = 'CLIETOBS'
      FieldName = 'CLIETOBS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField27: TppField
      FieldAlias = 'CLIEA5FISJURID'
      FieldName = 'CLIEA5FISJURID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField28: TppField
      FieldAlias = 'CLIEA60CONTATO'
      FieldName = 'CLIEA60CONTATO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField29: TppField
      FieldAlias = 'CLIEN2RENDA'
      FieldName = 'CLIEN2RENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField30: TppField
      FieldAlias = 'CLIEN2LIMITECRED'
      FieldName = 'CLIEN2LIMITECRED'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField31: TppField
      FieldAlias = 'CLIECESTADOCIVIL'
      FieldName = 'CLIECESTADOCIVIL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField32: TppField
      FieldAlias = 'CLIEA60CONJUGE'
      FieldName = 'CLIEA60CONJUGE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField33: TppField
      FieldAlias = 'CLIEA60CONJUGEMAE'
      FieldName = 'CLIEA60CONJUGEMAE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField34: TppField
      FieldAlias = 'CLIEN2CONJUGERENDA'
      FieldName = 'CLIEN2CONJUGERENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField35: TppField
      FieldAlias = 'CLIEDNASCCONJUGE'
      FieldName = 'CLIEDNASCCONJUGE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField36: TppField
      FieldAlias = 'CLIEA60EMPRESA'
      FieldName = 'CLIEA60EMPRESA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField37: TppField
      FieldAlias = 'CLIEA60ENDEMPRESA'
      FieldName = 'CLIEA60ENDEMPRESA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField38: TppField
      FieldAlias = 'CLIEA60BAIEMPRESA'
      FieldName = 'CLIEA60BAIEMPRESA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField39: TppField
      FieldAlias = 'CLIEA60CIDEMPRESA'
      FieldName = 'CLIEA60CIDEMPRESA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField40: TppField
      FieldAlias = 'CLIEA2UFEMPRESA'
      FieldName = 'CLIEA2UFEMPRESA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField41: TppField
      FieldAlias = 'CLIEA8CEPEMPRESA'
      FieldName = 'CLIEA8CEPEMPRESA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField42: TppField
      FieldAlias = 'CLIEA60CONJUGEEMPR'
      FieldName = 'CLIEA60CONJUGEEMPR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField43: TppField
      FieldAlias = 'CLIECRECEBECARTAO'
      FieldName = 'CLIECRECEBECARTAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField44: TppField
      FieldAlias = 'CLIEA5AGENCIA'
      FieldName = 'CLIEA5AGENCIA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField45: TppField
      FieldAlias = 'BANCA5COD'
      FieldName = 'BANCA5COD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField46: TppField
      FieldAlias = 'BancoLookup'
      FieldName = 'BancoLookup'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField47: TppField
      FieldAlias = 'CLIEA10CONTA'
      FieldName = 'CLIEA10CONTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField48: TppField
      FieldAlias = 'CLIEA60TITULAR'
      FieldName = 'CLIEA60TITULAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField49: TppField
      FieldAlias = 'TPCLICOD'
      FieldName = 'TPCLICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField50: TppField
      FieldAlias = 'CLIEA15CONJFONEMPR'
      FieldName = 'CLIEA15CONJFONEMPR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField51: TppField
      FieldAlias = 'CLIEDAMISEMPRESA'
      FieldName = 'CLIEDAMISEMPRESA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField52: TppField
      FieldAlias = 'CLIEA15FONEEMPRESA'
      FieldName = 'CLIEA15FONEEMPRESA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField53: TppField
      FieldAlias = 'CLIEDABERTCONTA'
      FieldName = 'CLIEDABERTCONTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField54: TppField
      FieldAlias = 'MTBLICOD'
      FieldName = 'MTBLICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField55: TppField
      FieldAlias = 'MotivoBloqueioLookup'
      FieldName = 'MotivoBloqueioLookup'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField56: TppField
      FieldAlias = 'PROFICOD'
      FieldName = 'PROFICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField57: TppField
      FieldAlias = 'ProfissaoLookup'
      FieldName = 'ProfissaoLookup'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField58: TppField
      FieldAlias = 'VENDICOD'
      FieldName = 'VENDICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField59: TppField
      FieldAlias = 'VendedorLookup'
      FieldName = 'VendedorLookup'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField60: TppField
      FieldAlias = 'CLIEDCAD'
      FieldName = 'CLIEDCAD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 59
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField61: TppField
      FieldAlias = 'CLIEDPRICOMPRA'
      FieldName = 'CLIEDPRICOMPRA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 60
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField62: TppField
      FieldAlias = 'CLIEDULTCOMPRA'
      FieldName = 'CLIEDULTCOMPRA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 61
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField63: TppField
      FieldAlias = 'CLIEA254PATHFOTO'
      FieldName = 'CLIEA254PATHFOTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 62
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField64: TppField
      FieldAlias = 'CLIECRECAVISATRASO'
      FieldName = 'CLIECRECAVISATRASO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 63
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField65: TppField
      FieldAlias = 'CLIEA30NATURALIDADE'
      FieldName = 'CLIEA30NATURALIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 64
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField66: TppField
      FieldAlias = 'CLIEDENVCARTIMP'
      FieldName = 'CLIEDENVCARTIMP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 65
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField67: TppField
      FieldAlias = 'CLIEDRETCARTIMP'
      FieldName = 'CLIEDRETCARTIMP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 66
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField68: TppField
      FieldAlias = 'CLIEDENVCARTCLI'
      FieldName = 'CLIEDENVCARTCLI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 67
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField69: TppField
      FieldAlias = 'REGISTRO'
      FieldName = 'REGISTRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 68
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField70: TppField
      FieldAlias = 'PENDENTE'
      FieldName = 'PENDENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 69
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField71: TppField
      FieldAlias = 'CLIEA10CODCONV'
      FieldName = 'CLIEA10CODCONV'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 70
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField72: TppField
      FieldAlias = 'CLIEA10CODANT'
      FieldName = 'CLIEA10CODANT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 71
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField73: TppField
      FieldAlias = 'TipoClienteLookup'
      FieldName = 'TipoClienteLookup'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 72
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField74: TppField
      FieldAlias = 'CLIEA60EMAILCONJUG'
      FieldName = 'CLIEA60EMAILCONJUG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 73
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField75: TppField
      FieldAlias = 'CLIEDCASAMENTO'
      FieldName = 'CLIEDCASAMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 74
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField76: TppField
      FieldAlias = 'TPRCICOD'
      FieldName = 'TPRCICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 75
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField77: TppField
      FieldAlias = 'TabelaPrecoLookup'
      FieldName = 'TabelaPrecoLookup'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 76
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField78: TppField
      FieldAlias = 'CLIEA35NROCARTCRED'
      FieldName = 'CLIEA35NROCARTCRED'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 77
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField79: TppField
      FieldAlias = 'CLIEA60ENDCOB'
      FieldName = 'CLIEA60ENDCOB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 78
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField80: TppField
      FieldAlias = 'CLIEA60BAICOB'
      FieldName = 'CLIEA60BAICOB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 79
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField81: TppField
      FieldAlias = 'CLIEA60CIDCOB'
      FieldName = 'CLIEA60CIDCOB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 80
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField82: TppField
      FieldAlias = 'CLIEA2UFCOB'
      FieldName = 'CLIEA2UFCOB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 81
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField83: TppField
      FieldAlias = 'CLIEA8CEPCOB'
      FieldName = 'CLIEA8CEPCOB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 82
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField84: TppField
      FieldAlias = 'PLRCICOD'
      FieldName = 'PLRCICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 83
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField85: TppField
      FieldAlias = 'PlanoRecebimentoLookUp'
      FieldName = 'PlanoRecebimentoLookUp'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 84
      Searchable = False
      Sortable = False
    end
  end
  object ImageList2: TImageList
    BlendColor = clBtnFace
    BkColor = 13160660
    DrawingStyle = dsTransparent
    ImageType = itMask
    Left = 176
    Top = 2
    Bitmap = {
      494C010103000400040010001000D4D0C800FF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400CED6D600CED6D600CED6D600CED6
      D600CED6D600CED6D600CED6D600CED6D600CED6D600CED6D600CED6D600CED6
      D600CED6D600CED6D600CED6D600CED6D600CED6D6007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D40000000000849CC60000000000847B8400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CED6D600CED6D600CED6D600CED6D6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C8D0D400C8D0D400C8D0D4000000
      0000849CC600849CC600849CC600425AA50000000000847B8400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D40000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000CED6D600CED6D600CED6D600CED6D60000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C8D0D40000000000849CC600849C
      C60084BDE70084BDE700849CC600425AA500425AA50000000000847B8400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D40000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000CED6D600CED6D600CED6D600CED6D60000000000FFFF00007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B00FFFF00007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C8D0D400849CC600425AC600425A
      A500425AA50084BDE700849CC600849CC600425AA500425AA50000000000847B
      8400C8D0D400C8D0D400C8D0D400C8D0D400FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF00000000FFFF000000
      0000CED6D600CED6D600CED6D600CED6D60000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C8D0D400849CC600003963000039
      6300849CC600849CC60084BDE700845A6300425AA500425AA500425AA5000000
      0000847B8400C8D0D400C8D0D400C8D0D40000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00007B7B7B00FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C8D0D400849CC600849CC600849C
      C60084BDE700847B8400AD9CA500C6DEC60000000000425AA500425AA500425A
      A50000000000847B8400C8D0D400C8D0D400FF000000FF000000FF000000FF00
      0000FF000000A5C6A500A5C6A500A5C6A500A5C6A500A5C6A50000C6A500A5C6
      A50000C6A50000C6A500A5C6A500A5C6A50000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF000000000000000000007B7B7B00FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C8D0D400849CC60084BDE700847B
      8400AD9CA500C6BDC600C6DEC600C6DEC6000000000000000000425AA500425A
      A500425AA50000000000847B8400C8D0D40000FFFF0000FFFF0000FFFF00FFFF
      0000000000000000000000000000000000000000000000000000A5C6A50000C6
      A500A5C6A50000C6A500A5C6A50000C6A5000000000000000000000000000000
      0000000000000000000000000000FFFF0000000000007B7B00007B7B7B00FFFF
      00000000000000000000FFFF00007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C8D0D40084BDE70042182100C6BD
      C600C6DEC600C6DEC600FFFFFF0042394200000000000000000000000000425A
      A500425AA500425AA50000000000C8D0D400FF000000FF000000FF00000000FF
      FF0000000000FFFF0000A500000000000000E7FFE70000000000A5C6A500A5C6
      A50000C6A500A5C6A50000C6A500A5C6A50000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF000000000000FF000000000000007B7B
      7B00FFFF0000FFFF0000FFFF00007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C8D0D400C8D0D40042182100C6DE
      C600FFFFFF0042394200C6DEC600FFFFFF000000000000000000000000000000
      0000425AA500425AA50000000000C8D0D40000FFFF0000FFFF0000FFFF000000
      00000000000000C6A500FFFF0000A50000000000000000000000A5C6A50000C6
      A500A5C6A50000C6A500A5C6A50000C6A50000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FF0000007B7B
      00007B7B7B00FFFF0000FFFF00007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C8D0D400C8D0D400421821004239
      4200C6DEC600FFFFFF0042394200C6DEC600C6DEC60000000000000000000000
      000000000000425AA50000000000C8D0D400000000000000000000000000CED6
      D60000000000E7FFE700E7FFE700FFFF0000A5000000A5000000A5C6A500A5C6
      A500A5C6A500A5C6A50000C6A500A5C6A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FF00
      0000000000007B7B7B0000000000CED6D6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C8D0D400C8D0D400C8D0D4004218
      210042394200C6DEC600C6DEC60042394200C6DEC600C6DEC600000000000000
      0000000000000039630000000000C8D0D400CED6D600CED6D600CED6D600CED6
      D600000000000000000000C6A50000C6A500FFFF0000A500000000000000A5C6
      A50000C6A50000C6A500A5C6A50000000000CED6D600CED6D600CED6D600CED6
      D600CED6D600CED6D600CED6D600CED6D600CED6D600CED6D60000000000FFFF
      FF007B7B000000000000CED6D600CED6D6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C8D0D400C8D0D400C8D0D400C8D0
      D4004218210042394200C6DEC600AD9CA500AD9CA500C6DEC600AD9CA500845A
      630000000000847B8400C8D0D400C8D0D400CED6D600CED6D600CED6D600CED6
      D600CED6D600CED6D60000000000E7FFE70000C6A500FFFF0000A50000000000
      0000A5C6A500A5C6A50000000000CED6D600CED6D600CED6D600CED6D600CED6
      D600CED6D600CED6D600CED6D600CED6D600CED6D600CED6D600CED6D600CED6
      D600FFFFFF00FF00000000000000CED6D6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D4004218210000000000C6DEC60042394200C6DEC600C6DEC6004239
      4200C8D0D400C8D0D400C8D0D400C8D0D400CED6D600CED6D600CED6D600CED6
      D600CED6D600CED6D600CED6D60000000000E7FFE70000C6A500FFFF0000A500
      0000A500000000000000CED6D600CED6D600CED6D600CED6D600CED6D600CED6
      D600CED6D600CED6D600CED6D600CED6D600CED6D600CED6D600CED6D600CED6
      D60000000000FFFFFF007B7B0000CED6D6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D4004218210000000000C6DEC60042394200C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400CED6D600CED6D600CED6D600CED6
      D600CED6D600CED6D600CED6D600CED6D600000000000000000000000000FFFF
      0000A5000000A5000000CED6D600CED6D600CED6D600CED6D600CED6D600CED6
      D600CED6D600CED6D600CED6D600CED6D600CED6D600CED6D600CED6D600CED6
      D600CED6D60000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D40042182100C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400CED6D600CED6D600CED6D600CED6
      D600CED6D600CED6D600CED6D600CED6D600CED6D600CED6D600CED6D600CED6
      D600FFFF0000A5000000CED6D600CED6D600CED6D600CED6D600CED6D600CED6
      D600CED6D600CED6D600CED6D600CED6D600CED6D600CED6D600CED6D600CED6
      D600CED6D600CED6D60000000000CED6D6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF80000000F87F000F00000000
      E03F000F00000000801F000F00000000800F000F000000008007000000000000
      800300000000000080010000000000008001000000000000C001000000000000
      C001100000010000E001F000FFC30000F003FC01FFF10000F80FFE03FFF10000
      FC3FFF03FFF80000FEFFFFF3FFFD000000000000000000000000000000000000
      000000000000}
  end
  object TblItensComprados: TTable
    DatabaseName = 'UnitGestao_Temp'
    TableName = 'ItensComprados.db'
    Left = 87
    Top = 351
    object TblItensCompradosDOCUMENTO: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'DOCUMENTO'
      FixedChar = True
      Size = 13
    end
    object TblItensCompradosCUPOM: TIntegerField
      FieldName = 'CUPOM'
    end
    object TblItensCompradosPRODICOD: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'PRODICOD'
    end
    object TblItensCompradosQTDE: TBCDField
      DisplayLabel = 'Qtde'
      FieldName = 'QTDE'
      Precision = 15
      Size = 3
    end
    object TblItensCompradosVLRUNIT: TBCDField
      DisplayLabel = 'Valor Unit'
      FieldName = 'VLRUNIT'
      Precision = 15
      Size = 3
    end
    object TblItensCompradosVLRDESC: TBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'VLRDESC'
      Precision = 15
      Size = 3
    end
    object TblItensCompradosSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object TblItensCompradosEMPRICOD: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRICOD'
    end
    object TblItensCompradosCLIEA13ID: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object TblItensCompradosDEMISSAO: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DEMISSAO'
    end
    object TblItensCompradosPRODA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblItensCompradosVLRTOTITEM: TBCDField
      FieldName = 'VLRTOTITEM'
      Precision = 15
      Size = 3
    end
    object TblItensCompradosNroVolumes: TFloatField
      FieldName = 'NroVolumes'
    end
  end
  object BatchItensComprados: TBatchMove
    Destination = TblItensComprados
    Source = SQLItem
    Left = 59
    Top = 407
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'PRODICOD,'
      'PRODA60DESCR'
      'FROM'
      'PRODUTO'
      'ORDER BY'
      'PRODA60DESCR')
    Macros = <>
    Left = 524
    Top = 29
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
  end
  object DSSQLProduto: TDataSource
    DataSet = SQLProduto
    Left = 496
    Top = 29
  end
  object PopupMenuParcelas: TPopupMenu
    Left = 608
    Top = 29
    object LanarHistrico1: TMenuItem
      Caption = 'Lan'#231'ar Hist'#243'rico'
    end
  end
  object DSSQLCheques: TDataSource
    DataSet = SQLCheques
    Left = 580
    Top = 29
  end
  object SQLCheques: TRxQuery
    OnCalcFields = SQLChequesCalcFields
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'select * from CONTASRECEBER where '
      'CLIEA13ID = :CLIEA13ID and '
      'CTRCA5TIPOPADRAO in( '#39'CHQ'#39','#39'CHQV'#39','#39'CHQP'#39')'
      'ORDER BY'
      'CTRCDVENC, CTRCA13ID DESC')
    Macros = <>
    Left = 552
    Top = 29
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLIEA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLChequesCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLChequesEMPRICOD: TIntegerField
      DisplayLabel = 'Empr.'
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASRECEBER.EMPRICOD'
    end
    object SQLChequesCTRCINROPARC: TIntegerField
      DisplayLabel = 'Prc'
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CONTASRECEBER.CTRCINROPARC'
    end
    object SQLChequesCTRCDVENC: TDateTimeField
      DisplayLabel = 'Vencimento'
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLChequesCTRCN2VLR: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLChequesNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.CONTASRECEBER.NUMEICOD'
    end
    object SQLChequesCTRCDULTREC: TDateTimeField
      DisplayLabel = 'Dt.'#218'lt.Rec.'
      FieldName = 'CTRCDULTREC'
      Origin = 'DB.CONTASRECEBER.CTRCDULTREC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLChequesCTRCN2TOTREC: TBCDField
      DisplayLabel = 'Vlr.Rec.'
      FieldName = 'CTRCN2TOTREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTREC'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLChequesCTRCN2TOTJUROREC: TBCDField
      DisplayLabel = 'Juros'
      FieldName = 'CTRCN2TOTJUROREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTJUROREC'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLChequesCTRCN2TOTMULTAREC: TBCDField
      DisplayLabel = 'Multa'
      FieldName = 'CTRCN2TOTMULTAREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTAREC'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLChequesCTRCN2TOTDESCREC: TBCDField
      DisplayLabel = 'Desc.'
      FieldName = 'CTRCN2TOTDESCREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTDESCREC'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLChequesEMPRICODULTREC: TIntegerField
      DisplayLabel = 'Empr.'#218'lt.Rec.'
      FieldName = 'EMPRICODULTREC'
      Origin = 'DB.CONTASRECEBER.EMPRICODULTREC'
    end
    object SQLChequesCUPOA13ID: TStringField
      DisplayLabel = 'Cupom'
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CONTASRECEBER.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLChequesCTRCA5TIPOPADRAO: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      Origin = 'DB.CONTASRECEBER.CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLChequesCTRCN2TXMULTA: TBCDField
      DisplayLabel = 'Multa'
      FieldName = 'CTRCN2TXMULTA'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXMULTA'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLChequesCTRCN2TXJURO: TBCDField
      DisplayLabel = 'Juro'
      FieldName = 'CTRCN2TXJURO'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXJURO'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLChequesBANCA5CODCHQ: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCA5CODCHQ'
      Origin = 'DB.CONTASRECEBER.BANCA5CODCHQ'
      FixedChar = True
      Size = 5
    end
    object SQLChequesCTRCA10AGENCIACHQ: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'CTRCA10AGENCIACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA10AGENCIACHQ'
      FixedChar = True
      Size = 10
    end
    object SQLChequesCTRCA15CONTACHQ: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'CTRCA15CONTACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15CONTACHQ'
      FixedChar = True
      Size = 15
    end
    object SQLChequesCTRCA15NROCHQ: TStringField
      DisplayLabel = 'Nro.Cheque'
      FieldName = 'CTRCA15NROCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15NROCHQ'
      FixedChar = True
      Size = 15
    end
    object SQLChequesCTRCA60TITULARCHQ: TStringField
      DisplayLabel = 'Titular'
      FieldName = 'CTRCA60TITULARCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA60TITULARCHQ'
      FixedChar = True
      Size = 60
    end
    object SQLChequesCTRCA20CGCCPFCHQ: TStringField
      DisplayLabel = 'CPF/CGC'
      FieldName = 'CTRCA20CGCCPFCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA20CGCCPFCHQ'
      FixedChar = True
    end
    object SQLChequesCTRCDDEPOSCHQ: TDateTimeField
      DisplayLabel = 'Dep'#243'sito'
      FieldName = 'CTRCDDEPOSCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCDDEPOSCHQ'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLChequesCTRCDEMIS: TDateTimeField
      DisplayLabel = 'Digita'#231#227'o'
      FieldName = 'CTRCDEMIS'
      Origin = 'DB.CONTASRECEBER.CTRCDEMIS'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLChequesNOFIINUMERO: TIntegerField
      DisplayLabel = 'Nota Fiscal'
      FieldKind = fkCalculated
      FieldName = 'NOFIINUMERO'
      Calculated = True
    end
    object SQLChequesNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      FixedChar = True
      Size = 13
    end
  end
  object SQLDadosCompra: TRxQuery
    AfterScroll = SQLDadosCompraAfterScroll
    OnCalcFields = SQLDadosCompraCalcFields
    DatabaseName = 'UnitGestao_Temp'
    SQL.Strings = (
      'SELECT * FROM DadosCompra.DB'
      '%MOrdem')
    Macros = <
      item
        DataType = ftString
        Name = 'MOrdem'
        ParamType = ptInput
        Value = 'ORDER BY CTRCDEMIS,CUPOA13ID,NOFIA13ID,CTRCINROPARC ASC'
      end>
    Left = 115
    Top = 463
    object SQLDadosCompraCUPOA13ID: TStringField
      DisplayLabel = 'ID Cupom'
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CUPOM.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLDadosCompraNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      Size = 13
    end
    object SQLDadosCompraCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CUPOM.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLDadosCompraCTRCA13ID: TStringField
      DisplayLabel = 'ID'
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CUPOMCONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLDadosCompraCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object SQLDadosCompraCTRCINROPARC: TIntegerField
      DisplayLabel = 'Prc.'
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CONTASRECEBER.CTRCINROPARC'
    end
    object SQLDadosCompraCTRCDVENC: TDateTimeField
      DisplayLabel = 'Dt.Venc.'
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLDadosCompraCTRCDEMIS: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'CTRCDEMIS'
      Origin = 'DB.CONTASRECEBER.CTRCDEMIS'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLDadosCompraCTRCDULTREC: TDateTimeField
      DisplayLabel = 'Ult.Pagto'
      FieldName = 'CTRCDULTREC'
      Origin = 'DB.CONTASRECEBER.CTRCDULTREC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLDadosCompraCTRCN2TOTREC: TFloatField
      DisplayLabel = 'Valor Pago'
      FieldName = 'CTRCN2TOTREC'
    end
    object SQLDadosCompraCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      Origin = 'DB.CONTASRECEBER.CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLDadosCompraEMPRICODULTREC: TIntegerField
      DisplayLabel = 'Emp.'#218'lt.Rec.'
      FieldName = 'EMPRICODULTREC'
      Origin = 'DB.CONTASRECEBER.EMPRICODULTREC'
    end
    object SQLDadosCompraCUPOCTIPOPADRAO: TStringField
      DisplayLabel = 'Tipo Padr'#227'o'
      FieldKind = fkCalculated
      FieldName = 'CUPOCTIPOPADRAO'
      Origin = 'DB.CUPOM.CUPOCTIPOPADRAO'
      FixedChar = True
      Size = 5
      Calculated = True
    end
    object SQLDadosCompraNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.CONTASRECEBER.NUMEICOD'
    end
    object SQLDadosCompraValorPagar: TBCDField
      FieldKind = fkCalculated
      FieldName = 'ValorPagar'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
      Calculated = True
    end
    object SQLDadosCompraNumerarioLookup: TStringField
      DisplayLabel = 'Numer'#225'rio'
      FieldKind = fkLookup
      FieldName = 'NumerarioLookup'
      LookupDataSet = SQLNumerario
      LookupKeyFields = 'NUMEICOD'
      LookupResultField = 'NUMEA30DESCR'
      KeyFields = 'NUMEICOD'
      Size = 30
      Lookup = True
    end
    object SQLDadosCompraAtraso: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Atraso'
      Calculated = True
    end
    object SQLDadosCompraJuroParc: TFloatField
      DisplayLabel = 'Jur.Dev.'
      FieldKind = fkCalculated
      FieldName = 'JuroParc'
      Calculated = True
    end
    object SQLDadosCompraMultaParc: TFloatField
      DisplayLabel = 'Mult.Dev.'
      FieldKind = fkCalculated
      FieldName = 'MultaParc'
      Calculated = True
    end
    object SQLDadosCompraTxCobrParc: TFloatField
      DisplayLabel = 'Tx.Cobr.Dev.'
      FieldKind = fkCalculated
      FieldName = 'TxCobrParc'
      Calculated = True
    end
    object SQLDadosCompraDescParc: TFloatField
      DisplayLabel = 'Desc.Dev.'
      FieldKind = fkCalculated
      FieldName = 'DescParc'
      Calculated = True
    end
    object SQLDadosCompraDocumento: TStringField
      FieldKind = fkCalculated
      FieldName = 'Documento'
      Size = 30
      Calculated = True
    end
    object SQLDadosCompraTipoPadraoLookup: TStringField
      DisplayLabel = 'Tipo Padr'#227'o'
      FieldKind = fkLookup
      FieldName = 'TipoPadraoLookup'
      LookupDataSet = SQLNumerario
      LookupKeyFields = 'NUMEICOD'
      LookupResultField = 'NUMEA5TIPO'
      KeyFields = 'NUMEICOD'
      Size = 5
      Lookup = True
    end
    object SQLDadosCompraEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLDadosCompraAVALA13ID: TStringField
      FieldName = 'AVALA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLDadosCompraPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
    end
    object SQLDadosCompraPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLDadosCompraVENDA60NOME: TStringField
      DisplayLabel = 'Vendedor'
      FieldKind = fkCalculated
      FieldName = 'VENDA60NOME'
      Size = 60
      Calculated = True
    end
    object SQLDadosCompraAVALA60RAZAOSOC: TStringField
      DisplayLabel = 'Avalista'
      FieldKind = fkCalculated
      FieldName = 'AVALA60RAZAOSOC'
      Size = 60
      Calculated = True
    end
    object SQLDadosCompraPORTA60DESCR: TStringField
      DisplayLabel = 'Portador'
      FieldKind = fkCalculated
      FieldName = 'PORTA60DESCR'
      Size = 60
      Calculated = True
    end
    object SQLDadosCompraBANCA5CODCHQ: TStringField
      FieldName = 'BANCA5CODCHQ'
      FixedChar = True
      Size = 5
    end
    object SQLDadosCompraCTRCA15NROCHQ: TStringField
      FieldName = 'CTRCA15NROCHQ'
      FixedChar = True
      Size = 15
    end
    object SQLDadosCompraALINICOD: TIntegerField
      FieldName = 'ALINICOD'
    end
    object SQLDadosCompraCHEQDEVOLVIDO: TStringField
      FieldName = 'CHEQDEVOLVIDO'
      Size = 1
    end
    object SQLDadosCompraCTRCN2TOTDESCREC: TBCDField
      FieldName = 'CTRCN2TOTDESCREC'
      Precision = 32
      Size = 3
    end
    object SQLDadosCompraCTRCN2TOTJUROREC: TBCDField
      FieldName = 'CTRCN2TOTJUROREC'
      Precision = 32
      Size = 3
    end
    object SQLDadosCompraCTRCN2TOTMULTAREC: TBCDField
      FieldName = 'CTRCN2TOTMULTAREC'
      Precision = 32
      Size = 3
    end
    object SQLDadosCompraCTRCN2TXJURO: TBCDField
      FieldName = 'CTRCN2TXJURO'
      Precision = 32
      Size = 3
    end
    object SQLDadosCompraCTRCN2TXMULTA: TBCDField
      FieldName = 'CTRCN2TXMULTA'
      Precision = 32
      Size = 3
    end
    object SQLDadosCompraCTRCN2VLR: TBCDField
      FieldName = 'CTRCN2VLR'
      Precision = 32
      Size = 3
    end
    object SQLDadosCompraCUPON2TOTITENS: TBCDField
      DisplayLabel = 'Vlr.Compra'
      FieldKind = fkCalculated
      FieldName = 'CUPON2TOTITENS'
      Precision = 15
      Size = 3
      Calculated = True
    end
  end
  object TblFichaCliente: TTable
    DatabaseName = 'UnitGestao_Temp'
    TableName = 'FichaCliente.DB'
    Left = 87
    Top = 379
    object TblFichaClienteCLIEA13ID: TStringField
      Tag = 2
      DisplayLabel = 'ID'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object TblFichaClienteEMPRICOD: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.CLIENTE.EMPRICOD'
    end
    object TblFichaClienteCLIEICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CLIEICOD'
      Origin = 'DB.CLIENTE.CLIEICOD'
    end
    object TblFichaClienteCLIEA60RAZAOSOC: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Nome / Raz'#227'o Social'
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblFichaClienteCLIEA60NOMEFANT: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'CLIEA60NOMEFANT'
      Origin = 'DB.CLIENTE.CLIEA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object TblFichaClienteCLIEA14CGC: TStringField
      DisplayLabel = 'CGC'
      FieldName = 'CLIEA14CGC'
      Origin = 'DB.CLIENTE.CLIEA14CGC'
      EditMask = '##.###.###/####-##;0;_'
      FixedChar = True
      Size = 14
    end
    object TblFichaClienteCLIEA20IE: TStringField
      DisplayLabel = 'Inscr.Est.'
      FieldName = 'CLIEA20IE'
      Origin = 'DB.CLIENTE.CLIEA10IE'
      FixedChar = True
    end
    object TblFichaClienteCLIEA11CPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'CLIEA11CPF'
      Origin = 'DB.CLIENTE.CLIEA11CPF'
      EditMask = '#########-##;0;_'
      FixedChar = True
      Size = 11
    end
    object TblFichaClienteCLIEA10RG: TStringField
      DisplayLabel = 'RG'
      FieldName = 'CLIEA10RG'
      Origin = 'DB.CLIENTE.CLIEA10RG'
      OnChange = SQLTemplateCLIEA10RGChange
      FixedChar = True
      Size = 10
    end
    object TblFichaClienteCLIEA15FONE1: TStringField
      DisplayLabel = 'Fone 1'
      FieldName = 'CLIEA15FONE1'
      Origin = 'DB.CLIENTE.CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object TblFichaClienteCLIEA15FONE2: TStringField
      DisplayLabel = 'Fone 2'
      FieldName = 'CLIEA15FONE2'
      Origin = 'DB.CLIENTE.CLIEA15FONE2'
      FixedChar = True
      Size = 15
    end
    object TblFichaClienteCLIEA15FAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'CLIEA15FAX'
      Origin = 'DB.CLIENTE.CLIEA15FAX'
    end
    object TblFichaClienteCLIEA30OUTROSDOC: TStringField
      DisplayLabel = 'Outro Doc.'
      FieldName = 'CLIEA30OUTROSDOC'
      Origin = 'DB.CLIENTE.CLIEA30OUTROSDOC'
      FixedChar = True
      Size = 30
    end
    object TblFichaClienteCLIECSEXO: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'CLIECSEXO'
      Origin = 'DB.CLIENTE.CLIECSEXO'
      FixedChar = True
      Size = 1
    end
    object TblFichaClienteCLIEA60PROFISSAO: TStringField
      DisplayLabel = 'Profiss'#227'o'
      FieldName = 'CLIEA60PROFISSAO'
      Origin = 'DB.CLIENTE.CLIEA60PROFISSAO'
      FixedChar = True
      Size = 60
    end
    object TblFichaClienteCLIEA60ENDRES: TStringField
      DisplayLabel = 'Endere'#231'o Res.'
      FieldName = 'CLIEA60ENDRES'
      Origin = 'DB.CLIENTE.CLIEA60ENDRES'
      FixedChar = True
      Size = 60
    end
    object TblFichaClienteCLIEA60BAIRES: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'CLIEA60BAIRES'
      Origin = 'DB.CLIENTE.CLIEA60BAIRES'
      FixedChar = True
      Size = 60
    end
    object TblFichaClienteCLIEA60CIDRES: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CLIEA60CIDRES'
      Origin = 'DB.CLIENTE.CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object TblFichaClienteCLIEA2UFRES: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Uf'
      FieldName = 'CLIEA2UFRES'
      Origin = 'DB.CLIENTE.CLIEA2UFRES'
      FixedChar = True
      Size = 2
    end
    object TblFichaClienteCLIEA8CEPRES: TStringField
      DisplayLabel = 'Cep'
      FieldName = 'CLIEA8CEPRES'
      Origin = 'DB.CLIENTE.CLIEA8CEPRES'
      EditMask = '00000-000;0;_'
      FixedChar = True
      Size = 8
    end
    object TblFichaClienteCLIEA60EMAIL: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'CLIEA60EMAIL'
      Origin = 'DB.CLIENTE.CLIEA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object TblFichaClienteCLIEA60URL: TStringField
      DisplayLabel = 'URL'
      FieldName = 'CLIEA60URL'
      Origin = 'DB.CLIENTE.CLIEA60URL'
      FixedChar = True
      Size = 60
    end
    object TblFichaClienteCLIEA60NOMEPAI: TStringField
      DisplayLabel = 'Pai'
      FieldName = 'CLIEA60NOMEPAI'
      Origin = 'DB.CLIENTE.CLIEA60NOMEPAI'
      FixedChar = True
      Size = 60
    end
    object TblFichaClienteCLIEA60NOMEMAE: TStringField
      DisplayLabel = 'Nome M'#227'e'
      FieldName = 'CLIEA60NOMEMAE'
      Origin = 'DB.CLIENTE.CLIEA60NOMEMAE'
      FixedChar = True
      Size = 60
    end
    object TblFichaClienteCLIEDNASC: TDateTimeField
      DisplayLabel = 'Dt.Nasc'
      FieldName = 'CLIEDNASC'
      Origin = 'DB.CLIENTE.CLIEDNASC'
    end
    object TblFichaClienteCLIETOBS: TStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'CLIETOBS'
      Origin = 'DB.CLIENTE.CLIETOBS'
      FixedChar = True
      Size = 254
    end
    object TblFichaClienteCLIEA5FISJURID: TStringField
      DisplayLabel = 'Tipo Pessoa'
      FieldName = 'CLIEA5FISJURID'
      Origin = 'DB.CLIENTE.CLIEA5FISJURID'
      FixedChar = True
      Size = 1
    end
    object TblFichaClienteCLIEA60CONTATO: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'CLIEA60CONTATO'
      Origin = 'DB.CLIENTE.CLIEA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object TblFichaClienteCLIEN2RENDA: TBCDField
      DisplayLabel = 'Renda'
      FieldName = 'CLIEN2RENDA'
      Origin = 'DB.CLIENTE.CLIEN2RENDA'
      DisplayFormat = '#,##0.00'
      Size = 3
    end
    object TblFichaClienteCLIEN2LIMITECRED: TBCDField
      DisplayLabel = 'Lim.Cr'#233'dito'
      FieldName = 'CLIEN2LIMITECRED'
      Origin = 'DB.CLIENTE.CLIEN2LIMITECRED'
      DisplayFormat = '#,##0.00'
      Size = 3
    end
    object TblFichaClienteCLIECESTADOCIVIL: TStringField
      DisplayLabel = 'Est.Civil'
      FieldName = 'CLIECESTADOCIVIL'
      Origin = 'DB.CLIENTE.CLIECESTADOCIVIL'
      FixedChar = True
      Size = 1
    end
    object TblFichaClienteCLIEA60CONJUGE: TStringField
      DisplayLabel = 'Nome Conjuge'
      FieldName = 'CLIEA60CONJUGE'
      Origin = 'DB.CLIENTE.CLIEA60CONJUGE'
      FixedChar = True
      Size = 60
    end
    object TblFichaClienteCLIEA60CONJUGEMAE: TStringField
      DisplayLabel = 'M'#227'e Conjuge'
      FieldName = 'CLIEA60CONJUGEMAE'
      Origin = 'DB.CLIENTE.CLIEA60CONJUGEMAE'
      FixedChar = True
      Size = 60
    end
    object TblFichaClienteCLIEN2CONJUGERENDA: TBCDField
      DisplayLabel = 'Renda Conjuge'
      FieldName = 'CLIEN2CONJUGERENDA'
      Origin = 'DB.CLIENTE.CLIEN2CONJUGERENDA'
      DisplayFormat = '#,##0.00'
      Size = 3
    end
    object TblFichaClienteCLIEDNASCCONJUGE: TDateTimeField
      DisplayLabel = 'Dt.Nasc.Conjuge'
      FieldName = 'CLIEDNASCCONJUGE'
      Origin = 'DB.CLIENTE.CLIEDNASCCONJUGE'
    end
    object TblFichaClienteCLIEA60EMPRESA: TStringField
      DisplayLabel = 'Empresa que Trabalha'
      FieldName = 'CLIEA60EMPRESA'
      Origin = 'DB.CLIENTE.CLIEA60EMPRESA'
      FixedChar = True
      Size = 60
    end
    object TblFichaClienteCLIEA60ENDEMPRESA: TStringField
      DisplayLabel = 'Ender.Empresa'
      FieldName = 'CLIEA60ENDEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA60ENDEMPRESA'
      FixedChar = True
      Size = 60
    end
    object TblFichaClienteCLIEA60BAIEMPRESA: TStringField
      DisplayLabel = 'Bairro Empresa'
      FieldName = 'CLIEA60BAIEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA60BAIEMPRESA'
      FixedChar = True
      Size = 60
    end
    object TblFichaClienteCLIEA60CIDEMPRESA: TStringField
      DisplayLabel = 'Cidade Empresa'
      FieldName = 'CLIEA60CIDEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA60CIDEMPRESA'
      FixedChar = True
      Size = 60
    end
    object TblFichaClienteCLIEA2UFEMPRESA: TStringField
      DisplayLabel = 'UF Empresa'
      FieldName = 'CLIEA2UFEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA2UFEMPRESA'
      FixedChar = True
      Size = 2
    end
    object TblFichaClienteCLIEA8CEPEMPRESA: TStringField
      DisplayLabel = 'Cep Empresa'
      FieldName = 'CLIEA8CEPEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA8CEPEMPRESA'
      EditMask = '00000-000;0;_'
      FixedChar = True
      Size = 8
    end
    object TblFichaClienteCLIEA60CONJUGEEMPR: TStringField
      DisplayLabel = 'Empresa Conjuge'
      FieldName = 'CLIEA60CONJUGEEMPR'
      Origin = 'DB.CLIENTE.CLIEA60CONJUGEEMPR'
      FixedChar = True
      Size = 60
    end
    object TblFichaClienteCLIECRECEBECARTAO: TStringField
      DisplayLabel = 'Recebe Cart'#227'o'
      FieldName = 'CLIECRECEBECARTAO'
      Origin = 'DB.CLIENTE.CLIECRECEBECARTAO'
      FixedChar = True
      Size = 1
    end
    object TblFichaClienteCLIEA5AGENCIA: TStringField
      DisplayLabel = 'AG.Banc'#225'ria'
      FieldName = 'CLIEA5AGENCIA'
      Origin = 'DB.CLIENTE.CLIEA5AGENCIA'
      FixedChar = True
      Size = 5
    end
    object TblFichaClienteBANCA5COD: TStringField
      DisplayLabel = 'C'#243'd.Banco'
      FieldName = 'BANCA5COD'
      Origin = 'DB.CLIENTE.BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object TblFichaClienteBancoLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'BancoLookup'
      LookupDataSet = SQLBanco
      LookupKeyFields = 'BANCA5COD'
      LookupResultField = 'BANCA60NOME'
      KeyFields = 'BANCA5COD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object TblFichaClienteCLIEA10CONTA: TStringField
      DisplayLabel = 'Nro.C.C.'
      FieldName = 'CLIEA10CONTA'
      Origin = 'DB.CLIENTE.CLIEA10CONTA'
      FixedChar = True
      Size = 10
    end
    object TblFichaClienteCLIEA60TITULAR: TStringField
      DisplayLabel = 'Titular C.C.'
      FieldName = 'CLIEA60TITULAR'
      Origin = 'DB.CLIENTE.CLIEA60TITULAR'
      FixedChar = True
      Size = 60
    end
    object TblFichaClienteTPCLICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Tipo Cliente'
      FieldName = 'TPCLICOD'
      Origin = 'DB.CLIENTE.TPCLICOD'
      Visible = False
    end
    object TblFichaClienteCLIEA15CONJFONEMPR: TStringField
      FieldName = 'CLIEA15CONJFONEMPR'
      Origin = 'DB.CLIENTE.CLIEA15CONJFONEMPR'
      FixedChar = True
      Size = 15
    end
    object TblFichaClienteCLIEDAMISEMPRESA: TDateTimeField
      FieldName = 'CLIEDAMISEMPRESA'
      Origin = 'DB.CLIENTE.CLIEDAMISEMPRESA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object TblFichaClienteCLIEA15FONEEMPRESA: TStringField
      FieldName = 'CLIEA15FONEEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA15FONEEMPRESA'
      FixedChar = True
      Size = 30
    end
    object TblFichaClienteCLIEDABERTCONTA: TDateTimeField
      FieldName = 'CLIEDABERTCONTA'
      Origin = 'DB.CLIENTE.CLIEDABERTCONTA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object TblFichaClienteMTBLICOD: TIntegerField
      FieldName = 'MTBLICOD'
      Origin = 'DB.CLIENTE.MTBLICOD'
      OnChange = SQLTemplateMTBLICODChange
    end
    object TblFichaClientePROFICOD: TIntegerField
      FieldName = 'PROFICOD'
      Origin = 'DB.CLIENTE.PROFICOD'
    end
    object TblFichaClienteVENDICOD: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDICOD'
      Origin = 'DB.CLIENTE.VENDICOD'
    end
    object TblFichaClienteCLIEDCAD: TDateTimeField
      DisplayLabel = 'Dt.Cadastro'
      FieldName = 'CLIEDCAD'
      Origin = 'DB.CLIENTE.CLIEDCAD'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object TblFichaClienteCLIEDPRICOMPRA: TDateTimeField
      FieldName = 'CLIEDPRICOMPRA'
      Origin = 'DB.CLIENTE.CLIEDPRICOMPRA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object TblFichaClienteCLIEDULTCOMPRA: TDateTimeField
      FieldName = 'CLIEDULTCOMPRA'
      Origin = 'DB.CLIENTE.CLIEDULTCOMPRA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object TblFichaClienteCLIEA254PATHFOTO: TStringField
      FieldName = 'CLIEA254PATHFOTO'
      Origin = 'DB.CLIENTE.CLIEA254PATHFOTO'
      FixedChar = True
      Size = 254
    end
    object TblFichaClienteCLIECRECAVISATRASO: TStringField
      FieldName = 'CLIECRECAVISATRASO'
      Origin = 'DB.CLIENTE.CLIECRECAVISATRASO'
      FixedChar = True
      Size = 1
    end
    object TblFichaClienteCLIEA30NATURALIDADE: TStringField
      FieldName = 'CLIEA30NATURALIDADE'
      Origin = 'DB.CLIENTE.CLIEA30NATURALIDADE'
      FixedChar = True
      Size = 30
    end
    object TblFichaClienteCLIEDENVCARTIMP: TDateTimeField
      FieldName = 'CLIEDENVCARTIMP'
      Origin = 'DB.CLIENTE.CLIEDENVCARTIMP'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object TblFichaClienteCLIEDRETCARTIMP: TDateTimeField
      FieldName = 'CLIEDRETCARTIMP'
      Origin = 'DB.CLIENTE.CLIEDRETCARTIMP'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object TblFichaClienteCLIEDENVCARTCLI: TDateTimeField
      FieldName = 'CLIEDENVCARTCLI'
      Origin = 'DB.CLIENTE.CLIEDENVCARTCLI'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object TblFichaClienteREGISTRO: TDateTimeField
      DisplayLabel = 'Ult.Altera'#231#227'o'
      FieldName = 'REGISTRO'
      Origin = 'DB.CLIENTE.REGISTRO'
      Visible = False
    end
    object TblFichaClientePENDENTE: TStringField
      DisplayLabel = 'Exp.Pendente'
      FieldName = 'PENDENTE'
      Origin = 'DB.CLIENTE.PENDENTE'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object TblFichaClienteCLIEA10CODCONV: TStringField
      DisplayLabel = 'C'#243'd.no Conv'#234'nio'
      FieldName = 'CLIEA10CODCONV'
      Origin = 'DB.CLIENTE.CLIEA10CODCONV'
      FixedChar = True
      Size = 10
    end
    object TblFichaClienteCLIEA10CODANT: TStringField
      DisplayLabel = 'C'#243'd.Antigo'
      FieldName = 'CLIEA10CODANT'
      Origin = 'DB.CLIENTE.CLIEA10CODANT'
      FixedChar = True
      Size = 10
    end
    object TblFichaClienteTipoClienteLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'TipoClienteLookup'
      LookupDataSet = SQLTipoCliente
      LookupKeyFields = 'TPCLICOD'
      LookupResultField = 'TPCLA30DESCR'
      KeyFields = 'TPCLICOD'
      Visible = False
      Size = 30
      Lookup = True
    end
    object TblFichaClienteCLIEA60EMAILCONJUG: TStringField
      DisplayLabel = 'E Mail'
      FieldName = 'CLIEA60EMAILCONJUG'
      Origin = 'DB.CLIENTE.CLIEA60EMAILCONJUG'
      FixedChar = True
      Size = 60
    end
    object TblFichaClienteCLIEDCASAMENTO: TDateTimeField
      DisplayLabel = 'Dt.Casamento'
      FieldName = 'CLIEDCASAMENTO'
      Origin = 'DB.CLIENTE.CLIEDCASAMENTO'
    end
    object TblFichaClienteTPRCICOD: TIntegerField
      FieldName = 'TPRCICOD'
      Origin = 'DB.CLIENTE.TPRCICOD'
    end
    object TblFichaClienteTabelaPrecoLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'TabelaPrecoLookup'
      LookupDataSet = SQLTabelaPreco
      LookupKeyFields = 'TPRCICOD'
      LookupResultField = 'TPRCA60DESCR'
      KeyFields = 'TPRCICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object TblFichaClienteCLIEA35NROCARTCRED: TStringField
      DisplayLabel = 'Nro.Cart'#227'o Cr'#233'dito'
      FieldName = 'CLIEA35NROCARTCRED'
      Origin = 'DB.CLIENTE.CLIEA35NROCARTCRED'
      FixedChar = True
      Size = 35
    end
    object TblFichaClienteCLIEA60ENDCOB: TStringField
      DisplayLabel = 'Endere'#231'o Cob.'
      FieldName = 'CLIEA60ENDCOB'
      Origin = 'DB.CLIENTE.CLIEA60ENDCOB'
      FixedChar = True
      Size = 60
    end
    object TblFichaClienteCLIEA60BAICOB: TStringField
      DisplayLabel = 'Bairro Cob.'
      FieldName = 'CLIEA60BAICOB'
      Origin = 'DB.CLIENTE.CLIEA60BAICOB'
      FixedChar = True
      Size = 60
    end
    object TblFichaClienteCLIEA60CIDCOB: TStringField
      DisplayLabel = 'Cidade Cob.'
      FieldName = 'CLIEA60CIDCOB'
      Origin = 'DB.CLIENTE.CLIEA60CIDCOB'
      FixedChar = True
      Size = 60
    end
    object TblFichaClienteCLIEA2UFCOB: TStringField
      DisplayLabel = 'Estado Cob.'
      FieldName = 'CLIEA2UFCOB'
      Origin = 'DB.CLIENTE.CLIEA2UFCOB'
      FixedChar = True
      Size = 2
    end
    object TblFichaClienteCLIEA8CEPCOB: TStringField
      DisplayLabel = 'CEP Cob.'
      FieldName = 'CLIEA8CEPCOB'
      Origin = 'DB.CLIENTE.CLIEA8CEPCOB'
      EditMask = '00000-000;0;_'
      FixedChar = True
      Size = 8
    end
    object TblFichaClientePLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.CLIENTE.PLRCICOD'
    end
    object TblFichaClienteCLIEA20NROCARTCRED: TStringField
      FieldName = 'CLIEA20NROCARTCRED'
      Origin = 'DB.CLIENTE.CLIEA20NROCARTCRED'
      FixedChar = True
    end
    object TblFichaClienteCLIEA30TEMPOMORADIA: TStringField
      DisplayLabel = 'Tempo de Moradia'
      FieldName = 'CLIEA30TEMPOMORADIA'
      Origin = 'DB.CLIENTE.CLIEA30TEMPOMORADIA'
      FixedChar = True
      Size = 30
    end
    object TblFichaClienteCLIECCASAPROPRIA: TStringField
      DisplayLabel = 'Casa Pr'#243'pria'
      FieldName = 'CLIECCASAPROPRIA'
      Origin = 'DB.CLIENTE.CLIECCASAPROPRIA'
      FixedChar = True
      Size = 1
    end
    object TblFichaClienteCLIEA60IMOB: TStringField
      DisplayLabel = 'Imobili'#225'ria'
      FieldName = 'CLIEA60IMOB'
      Origin = 'DB.CLIENTE.CLIEA60IMOB'
      FixedChar = True
      Size = 60
    end
    object TblFichaClienteCLIEN2VLRALUGUEL: TBCDField
      DisplayLabel = 'Vlr. Aluguel'
      FieldName = 'CLIEN2VLRALUGUEL'
      Origin = 'DB.CLIENTE.CLIEN2VLRALUGUEL'
      Precision = 15
      Size = 2
    end
    object TblFichaClienteCLIEA30MODVEICULO: TStringField
      DisplayLabel = 'Ve'#237'culo'
      FieldName = 'CLIEA30MODVEICULO'
      Origin = 'DB.CLIENTE.CLIEA30MODVEICULO'
      FixedChar = True
      Size = 30
    end
    object TblFichaClienteCLIEA8PLACAVEICULO: TStringField
      DisplayLabel = 'Placa Ve'#237'culo'
      FieldName = 'CLIEA8PLACAVEICULO'
      Origin = 'DB.CLIENTE.CLIEA8PLACAVEICULO'
      FixedChar = True
      Size = 8
    end
    object TblFichaClienteCLIEA4ANOVEICULO: TStringField
      DisplayLabel = 'Ano Ve'#237'culo'
      FieldName = 'CLIEA4ANOVEICULO'
      Origin = 'DB.CLIENTE.CLIEA4ANOVEICULO'
      FixedChar = True
      Size = 4
    end
    object TblFichaClienteCLIEA30LOCALIMOV1: TStringField
      DisplayLabel = 'Local Im'#243'v. 1'
      FieldName = 'CLIEA30LOCALIMOV1'
      Origin = 'DB.CLIENTE.CLIEA30LOCALIMOV1'
      FixedChar = True
      Size = 30
    end
    object TblFichaClienteCLIEA30LOCALIMOV2: TStringField
      DisplayLabel = 'Local Im'#243'v. 2'
      FieldName = 'CLIEA30LOCALIMOV2'
      Origin = 'DB.CLIENTE.CLIEA30LOCALIMOV2'
      FixedChar = True
      Size = 30
    end
    object TblFichaClienteCLIEA30TIPOIMOV1: TStringField
      DisplayLabel = 'Tipo Im'#243'v. 1'
      FieldName = 'CLIEA30TIPOIMOV1'
      Origin = 'DB.CLIENTE.CLIEA30TIPOIMOV1'
      FixedChar = True
      Size = 30
    end
    object TblFichaClienteCLIEA30TIPOIMOV2: TStringField
      DisplayLabel = 'Tipo Im'#243'v. 2'
      FieldName = 'CLIEA30TIPOIMOV2'
      Origin = 'DB.CLIENTE.CLIEA30TIPOIMOV2'
      FixedChar = True
      Size = 30
    end
    object TblFichaClienteCLIECSTATUSIMOV1: TStringField
      DisplayLabel = 'Status Im'#243'v. 1'
      FieldName = 'CLIECSTATUSIMOV1'
      Origin = 'DB.CLIENTE.CLIECSTATUSIMOV1'
      FixedChar = True
      Size = 1
    end
    object TblFichaClienteCLIECSTATUSIMOV2: TStringField
      DisplayLabel = 'Status Im'#243'v. 2'
      FieldName = 'CLIECSTATUSIMOV2'
      Origin = 'DB.CLIENTE.CLIECSTATUSIMOV2'
      FixedChar = True
      Size = 1
    end
  end
  object ReportTextos: TppReport
    AutoStop = False
    DataPipeline = PipeCliente
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Legal'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 120
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 700
    Top = 40
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'PipeCliente'
    object ppDetailBand8: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 262467
      mmPrintPosition = 0
      object ppTexto: TppRichText
        UserName = 'Texto'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        MailMerge = True
        Stretch = True
        mmHeight = 261938
        mmLeft = 0
        mmTop = 0
        mmWidth = 198702
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
    end
  end
  object dsSQLTipoDoc: TDataSource
    AutoEdit = False
    DataSet = SQLTipoDoc
    Left = 716
    Top = 446
  end
  object SQLTipoDoc: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From TipoDocumento'
      'Order by TPDCA60DESCR')
    Macros = <>
    Left = 744
    Top = 446
    object SQLTipoDocTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.TIPODOCUMENTO.TPDCICOD'
    end
    object SQLTipoDocTPDCA60DESCR: TStringField
      FieldName = 'TPDCA60DESCR'
      Origin = 'DB.TIPODOCUMENTO.TPDCA60DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object SQLPortador: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From Portador'
      'Order by PORTA60DESCR')
    Macros = <>
    Left = 744
    Top = 473
    object SQLPortadorPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.PORTADOR.PORTICOD'
    end
    object SQLPortadorPORTA60DESCR: TStringField
      FieldName = 'PORTA60DESCR'
      Origin = 'DB.PORTADOR.PORTA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object dsSQLPortador: TDataSource
    AutoEdit = False
    DataSet = SQLPortador
    Left = 716
    Top = 473
  end
  object dsSQLPlanoConta: TDataSource
    AutoEdit = False
    DataSet = SQLPlanoConta
    Left = 717
    Top = 498
  end
  object SQLPlanoConta: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From PlanodeContas'
      'where PLCTCTIPOSALDO = '#39'C'#39
      'order by PLCTA60DESCR')
    Macros = <>
    Left = 745
    Top = 498
    object SQLPlanoContaPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.PLANODECONTAS.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLPlanoContaPLCTA60DESCR: TStringField
      FieldName = 'PLCTA60DESCR'
      Origin = 'DB.PLANODECONTAS.PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLCidades: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select Distinct  CLIEA60CIDRES '
      'from CLIENTE'
      'order by'
      'CLIEA60CIDRES')
    Macros = <>
    Left = 625
    Top = 181
  end
end
