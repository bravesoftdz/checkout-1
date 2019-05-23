inherited FormTelaConsultaRastreabilidade: TFormTelaConsultaRastreabilidade
  Left = 196
  Top = 119
  Width = 897
  Height = 585
  Caption = ':.. Consultar Rastreabilidade do Produto ..:'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 881
    Height = 547
    inherited PanelCentral: TPanel
      Width = 877
      Height = 463
      inherited PanelBarra: TPanel
        Top = 158
        Width = 15
        Height = 305
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 877
        Height = 158
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 1
        object Label1: TLabel
          Left = 9
          Top = 8
          Width = 148
          Height = 25
          Caption = 'Tipos de Filtro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 13
          Top = 41
          Width = 77
          Height = 19
          Caption = '- Produto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 13
          Top = 123
          Width = 139
          Height = 19
          Caption = '- (SN) Nro. Serial'
          FocusControl = EditNroSerial
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 13
          Top = 71
          Width = 70
          Height = 19
          Caption = '- Cliente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 13
          Top = 98
          Width = 103
          Height = 19
          Caption = '- Fornecedor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ComboProduto: TRxDBLookupCombo
          Left = 320
          Top = 39
          Width = 457
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          DisplayEmpty = 'Digite aqui a Referencia do produto...'
          LookupField = 'PRODICOD'
          LookupDisplay = 'PRODICOD;PRODA60DESCR;PRODA60REFER'
          LookupDisplayIndex = 2
          LookupSource = DSSQLProdutoAux
          TabOrder = 1
        end
        object EditNroSerial: TEdit
          Left = 217
          Top = 122
          Width = 249
          Height = 21
          TabOrder = 6
        end
        object EditCdProduto: TEdit
          Left = 217
          Top = 39
          Width = 99
          Height = 21
          TabOrder = 0
        end
        object EditIDCliente: TEdit
          Left = 217
          Top = 69
          Width = 99
          Height = 21
          TabOrder = 2
        end
        object ComboCliente: TRxDBLookupCombo
          Left = 320
          Top = 69
          Width = 457
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          DisplayEmpty = 'Digite aqui o Nome do Cliente'
          LookupField = 'CLIEA13ID'
          LookupDisplay = 'CLIEA60RAZAOSOC'
          LookupDisplayIndex = 2
          LookupSource = DSSQLCliente
          TabOrder = 3
        end
        object EditCdFornec: TEdit
          Left = 217
          Top = 96
          Width = 99
          Height = 21
          TabOrder = 4
        end
        object ComboForn: TRxDBLookupCombo
          Left = 320
          Top = 96
          Width = 457
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          DisplayEmpty = 'Digite aqui o Nome do Fornecedor'
          LookupField = 'FORNICOD'
          LookupDisplay = 'FORNA60RAZAOSOC'
          LookupDisplayIndex = 2
          LookupSource = dsSQLFornec
          TabOrder = 5
        end
      end
      object DBGridGrade: TDBGrid
        Left = 15
        Top = 158
        Width = 862
        Height = 305
        TabStop = False
        Align = alClient
        DataSource = DSFiltro
        FixedColor = 16767449
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgCancelOnExit]
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'PRSECSTATUS'
            Title.Caption = 'Status'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRSEA60NROSERIE'
            Title.Caption = '(SN) N'#250'mero de S'#233'rie'
            Width = 127
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODA60DESCR'
            Title.Caption = 'Descr.Produto'
            Width = 218
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FORNICOD'
            Title.Caption = 'Fornecedor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOCPA13ID'
            Title.Caption = 'Nf.Compra'
            Width = 123
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA13ID'
            Title.Caption = 'Cliente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOFIA13ID'
            Title.Caption = 'Nf.Fiscal'
            Width = 108
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CUPOA13ID'
            Title.Caption = 'Cupom Fiscal'
            Width = 104
            Visible = True
          end>
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 877
      inherited PanelCabecalho: TPanel
        Width = 877
        inherited PanelNavigator: TPanel
          Width = 877
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 877
            inherited BtnFecharTela: TSpeedButton
              Left = 789
            end
            object BtProcurar: TSpeedButton
              Left = 11
              Top = 3
              Width = 139
              Height = 25
              Caption = 'Procurar Produto'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                F6000000424DF60000000000000076000000280000000E000000100000000100
                04000000000080000000CE0E0000C40E00001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777700
                77007777777774EC0700770000004ECC000077877774ECC77000778FFF4ECC7F
                70007780087CC7FF7000787E70887FFF70008FE7E707FFFF70008EFE7E0FFFFF
                70008FEFE70FFFFF700078FEF0FFFFFF700077880FFFFFFF7000778FFFFFFF00
                0000778FFFFFFF0F8700778FFFFFFF0877007788888888877700}
              ParentFont = False
              OnClick = BtProcurarClick
            end
          end
        end
      end
    end
  end
  object DSSQLProdutoAux: TDataSource
    DataSet = SQLProdutoAux
    Left = 784
    Top = 116
  end
  object SQLProdutoAux: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      'PRODICOD, '
      'PRODA60DESCR,'
      'PRODA60REFER'
      'FROM '
      'PRODUTO'
      'WHERE'
      'PRODICOD = PRODIAGRUPGRADE'
      'ORDER BY  PRODA60REFER')
    Macros = <>
    Left = 812
    Top = 116
    object SQLProdutoAuxPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoAuxPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutoAuxPRODA60REFER: TStringField
      FieldName = 'PRODA60REFER'
      Origin = 'DB.PRODUTO.PRODA60REFER'
      FixedChar = True
      Size = 60
    end
  end
  object SQLFiltro: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      '  PRODUTOSERIE.PRODICOD,'
      '  PRODUTOSERIE.PRSEA60NROSERIE,'
      '  PRODUTOSERIE.FORNICOD,'
      '  PRODUTOSERIE.CLIEA13ID,'
      '  PRODUTOSERIE.NOCPA13ID,'
      '  PRODUTOSERIE.NOFIA13ID,'
      '  PRODUTOSERIE.CUPOA13ID,'
      '  PRODUTOSERIE.MOVDA13ID,'
      '  PRODUTOSERIE.PRSECSTATUS,'
      '  PRODUTO.PRODA60DESCR'
      'FROM'
      
        '  PRODUTOSERIE inner join PRODUTO on PRODUTO.PRODICOD = PRODUTOS' +
        'ERIE.PRODICOD'
      'WHERE'
      ' (%MSerial)  and'
      ' (%MProduto) and'
      ' (%MCliente) and'
      ' (%MFornec)')
    Macros = <
      item
        DataType = ftString
        Name = 'MSerial'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MProduto'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MCliente'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MFornec'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 234
    Top = 51
    object SQLFiltroPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTOSERIE.PRODICOD'
    end
    object SQLFiltroFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.PRODUTOSERIE.FORNICOD'
    end
    object SQLFiltroCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.PRODUTOSERIE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLFiltroNOCPA13ID: TStringField
      FieldName = 'NOCPA13ID'
      Origin = 'DB.PRODUTOSERIE.NOCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLFiltroNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      Origin = 'DB.PRODUTOSERIE.NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLFiltroCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.PRODUTOSERIE.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLFiltroMOVDA13ID: TStringField
      FieldName = 'MOVDA13ID'
      Origin = 'DB.PRODUTOSERIE.MOVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLFiltroPRSECSTATUS: TStringField
      FieldName = 'PRSECSTATUS'
      Origin = 'DB.PRODUTOSERIE.PRSECSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLFiltroPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLFiltroPRSEA60NROSERIE: TStringField
      FieldName = 'PRSEA60NROSERIE'
      Origin = 'DB.PRODUTOSERIE.PRSEA60NROSERIE'
      FixedChar = True
      Size = 60
    end
  end
  object DSFiltro: TDataSource
    DataSet = SQLFiltro
    Left = 206
    Top = 51
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 784
    Top = 148
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      '  CLIEA13ID,'
      '  CLIEA60RAZAOSOC'
      'FROM '
      '  CLIENTE'
      'WHERE'
      '  (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 812
    Top = 148
    object SQLClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
  end
  object dsSQLFornec: TDataSource
    DataSet = SQLFornec
    Left = 784
    Top = 180
  end
  object SQLFornec: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      '  FORNICOD,'
      '  FORNA60RAZAOSOC'
      'FROM '
      '  FORNECEDOR'
      'WHERE'
      '  (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 812
    Top = 180
    object SQLFornecFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.FORNECEDOR.FORNICOD'
    end
    object SQLFornecFORNA60RAZAOSOC: TStringField
      FieldName = 'FORNA60RAZAOSOC'
      Origin = 'DB.FORNECEDOR.FORNA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
  end
end
