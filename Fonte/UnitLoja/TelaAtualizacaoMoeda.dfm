inherited FormTelaAtualizacaoMoeda: TFormTelaAtualizacaoMoeda
  Tag = 1
  Left = 159
  Top = 81
  Height = 521
  Caption = 'Atualiza'#231#227'o de Moeda'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Height = 483
    inherited PanelCentral: TPanel
      Height = 399
      inherited PanelBarra: TPanel
        Width = 799
        Height = 225
        Align = alTop
        Color = 16249066
        Font.Color = clBlack
        object Label1: TLabel
          Left = 6
          Top = 140
          Width = 120
          Height = 13
          Caption = 'Progresso da Atualiza'#231#227'o'
        end
        object Progress: TGauge
          Left = 5
          Top = 154
          Width = 188
          Height = 69
          Progress = 0
        end
        object GroupBox2: TGroupBox
          Left = 5
          Top = 94
          Width = 188
          Height = 43
          Caption = '&Valor do Dia'
          TabOrder = 2
          object EditVlrDia: TCurrencyEdit
            Left = 8
            Top = 16
            Width = 168
            Height = 21
            AutoSize = False
            DisplayFormat = '$ ,0.00;-$ ,0.00'
            TabOrder = 0
          end
        end
        object GroupBox1: TGroupBox
          Left = 5
          Top = 48
          Width = 188
          Height = 43
          Caption = '&Dia'
          TabOrder = 1
          object EditDia: TDateEdit
            Left = 6
            Top = 15
            Width = 171
            Height = 21
            DefaultToday = True
            Enabled = False
            NumGlyphs = 2
            TabOrder = 0
          end
        end
        object RadioMoeda: TRadioGroup
          Left = 5
          Top = 3
          Width = 188
          Height = 43
          Caption = '&Moeda'
          ItemIndex = 0
          Items.Strings = (
            'D'#243'lar')
          TabOrder = 0
        end
        object GroupResult: TGroupBox
          Left = 197
          Top = 137
          Width = 556
          Height = 88
          Caption = '&Resultados'
          TabOrder = 4
          object MemoResult: TMemo
            Left = 2
            Top = 15
            Width = 552
            Height = 71
            TabStop = False
            Align = alClient
            BorderStyle = bsNone
            Lines.Strings = (
              '')
            ParentColor = True
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
        object GroupFonte: TGroupBox
          Left = 197
          Top = 3
          Width = 556
          Height = 43
          Caption = '&Fonte de Extra'#231#227'o'
          TabOrder = 3
          object EditFonte: TEdit
            Left = 6
            Top = 17
            Width = 543
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 0
          end
        end
        object GroupFiltro: TGroupBox
          Left = 197
          Top = 48
          Width = 556
          Height = 89
          Caption = 'Filtro Para Produtos'
          TabOrder = 5
          object Label2: TLabel
            Left = 8
            Top = 14
            Width = 29
            Height = 13
            Caption = 'Grupo'
          end
          object Label3: TLabel
            Left = 294
            Top = 13
            Width = 46
            Height = 13
            Caption = 'Subgrupo'
          end
          object Label4: TLabel
            Left = 7
            Top = 50
            Width = 42
            Height = 13
            Caption = 'Varia'#231#227'o'
          end
          object Label5: TLabel
            Left = 294
            Top = 50
            Width = 30
            Height = 13
            Caption = 'Marca'
          end
          object ComboGrupo: TRxDBLookupCombo
            Left = 6
            Top = 29
            Width = 283
            Height = 21
            DropDownCount = 8
            LookupField = 'GRUPICOD'
            LookupDisplay = 'GRUPA60DESCR'
            LookupSource = DSSQLGrupo
            TabOrder = 0
          end
          object ComboSubGrupo: TRxDBLookupCombo
            Left = 292
            Top = 29
            Width = 261
            Height = 21
            DropDownCount = 8
            LookupField = 'SUBGICOD'
            LookupDisplay = 'SUBGA60DESCR'
            LookupSource = DSSQLSubGrupo
            TabOrder = 1
          end
          object ComboVaricacao: TRxDBLookupCombo
            Left = 5
            Top = 65
            Width = 283
            Height = 21
            DropDownCount = 8
            LookupField = 'VARIICOD'
            LookupDisplay = 'VARIA60DESCR'
            LookupSource = DSSQLVariacao
            TabOrder = 2
          end
          object ComboMarca: TRxDBLookupCombo
            Left = 291
            Top = 65
            Width = 261
            Height = 21
            DropDownCount = 8
            LookupField = 'MARCICOD'
            LookupDisplay = 'MARCA60DESCR'
            LookupSource = DSSQLMarca
            TabOrder = 3
          end
        end
      end
      object PageControl1: TPageControl
        Left = 0
        Top = 225
        Width = 799
        Height = 174
        ActivePage = TabCotacoes
        Align = alClient
        Style = tsFlatButtons
        TabOrder = 1
        object TabCotacoes: TTabSheet
          Caption = '&Cota'#231#245'es'
          object DBGridLista: TDBGrid
            Left = 0
            Top = 0
            Width = 791
            Height = 143
            Align = alClient
            BorderStyle = bsNone
            DataSource = DSSQLCotacaoMoeda
            FixedColor = 16767449
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentColor = True
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'CTMOICOD'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CTMODDIA'
                Width = 74
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CTMOA5MOEDA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CTMON3VLRDIA'
                Width = 90
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CTMOA60FONTE'
                Width = 324
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'REGISTRO'
                Visible = True
              end>
          end
        end
        object TabProdutos: TTabSheet
          Caption = '&Produtos Selecionados'
          ImageIndex = 1
          object DBGridProdutos: TDBGrid
            Left = 0
            Top = 0
            Width = 749
            Height = 112
            Align = alClient
            BorderStyle = bsNone
            DataSource = DSSQLProduto
            FixedColor = 16767449
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentColor = True
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'PRODICOD'
                Width = 43
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRODA60DESCR'
                Width = 227
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRODA60CODBAR'
                Width = 111
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRODA60REFER'
                Width = 66
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRODN3VLRCUSTO'
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRODN3DOLARCUSTO'
                Width = 67
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRODN3PERCMARGLUCR'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRODN3VLRVENDA'
                Width = 62
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRODN3VLRCOMPRA'
                Width = 68
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRODN3DOLARCOMPRA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRODN3DOLARVENDA'
                Visible = True
              end>
          end
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      inherited PanelCabecalho: TPanel
        inherited PanelNavigator: TPanel
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            object BtnAtualizarMoeda: TSpeedButton
              Tag = 3
              Left = 152
              Top = 3
              Width = 147
              Height = 25
              Cursor = crHandPoint
              Hint = 'Atualizar Moeda'
              Caption = '&Atualizar Moeda'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                F6040000424DF60400000000000036040000280000000C000000100000000100
                080000000000C0000000CE0E0000C40E00000001000000000000000000008080
                8000000080000080800000800000808000008000000080008000408080004040
                0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
                FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
                80008000FF004080FF007F7F7F00F0CAA6001084E80008E2FC000844520052C4
                E8000E64E7004684FB000DB8E70094E3F800406CF6000E94E800041944000E79
                E80007DAE900CFE4EC003BBCE4000468840064868C003FA5F30004B2CC000444
                FC0050D4F800B41E040004667B0006A0BB008CCDE7000BC4F9000584FC000594
                FC000412CC0005A8FC005CA9FC000574FC000484AC0004B8FC004494FA00BDD3
                E5006352FC00CAF6FC000498CC008FB6D3000525280044AAC9000468AA000477
                CA000564FC00052E4500044364004DC4FC009CF2FC000B55E6002FC4F8000448
                AB0064B9DA006FD4F2008CD7EC0008A7D80045B4DA002D88F8002DD4FB002C78
                F9002A98F60004062400B0E4F600437AFA004492A400042C6800055ACB002A88
                EB0023B9E80048B4FB00042A8C0021A9EA0073C4E2001C34CC0026A8F8000695
                D7005888FC0030C4EB0050E3FC002A97EC00A3311B0071656100745E5C000454
                FC0021AAD7005698FC00047AAC00296CF700CBEAF70028B7F8000764D7000554
                630057FDFC00ECF5FB005284890038ADF2000E92AB000458AA001E79EA000CB4
                DC005B79FC0040BCFC000674D6002ACDF7007EB8D600597C8500075AD7000F8C
                E800056CFC008BDCF400627478000588D6002C6CEC000E9CE60049DDFC00058C
                FC0075A3AC008F4638000428FC000404FC00C4C6C40081544C0036A0B500ACAA
                AC000635850004236C000514190005598400679EAC000414AC00047284000435
                3C000438AB00051929000419FC000438FC00DCDADC005CB7FC0004B6BC00973D
                2C00B6B5B600B02408000437450005234500073C670004597C00864D44000549
                7C000428AB00064DD500488F9A00696C6F000695BA00B1F4FC0070E8FC00C2DC
                EC0004D6FC005D59FC00579EAC0044ACD4009C3A240004081800074B99000669
                BA000677BB000757BA0006679B000488BB00052A3B00074BBB0004579C000876
                98000406B8004B899500083B5800056E7A0097BCD5003F98A90029ADC7005D68
                FC00DDE5EC002CA8BC00A3CFE600E1ECF50021B6DA003CE2FC00B6CADC00A92A
                140004245700052D5C00041C3B00053A7B000ECBE900044CFC0072DBF500ABED
                FC0073CCE9001C5E6C0074FEFC005C7A7C0004327A00458CFA00459CFA004DCC
                FB004BBADC0005102700043EC400069DD6007A5B5400053C8500A5C5DC0079B1
                D100A6D8EC00A2DEF400054B660034A7BC00041CAC0051A4FC004CADFC00B9DE
                F400349AB4008DA6AC0054CCEC000F6CE800E0E0E000A4A0A000030303030303
                0303030303030303030314141414030303030303030314181814140303030303
                1414141818141414030303141418181818181814140303141818181414181818
                1403031414141414141818181403030314181818181818181403031418181818
                1818181403030314181818141414141414030314181818141418181814030314
                1418181818181814140303031414141818141414030303030303141818140303
                0303030303031414141403030303030303030303030303030303}
              ParentFont = False
              Spacing = 10
              OnClick = BtnAtualizarMoedaClick
            end
            object BtnProduto: TSpeedButton
              Tag = 3
              Left = 4
              Top = 3
              Width = 147
              Height = 25
              Cursor = crHandPoint
              Hint = 'Selecionar Produtos'
              Caption = '&Selecionar Produtos'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                96040000424D9604000000000000360000002800000012000000140000000100
                18000000000060040000CE0E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000084A8B491B1BB9CB9C29CB9C284A8
                B484A8B443555C000000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF00000069869091B1BB9CB9C29CB9C291B1BB84A8B484A8B4546B7300
                0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000546B7384
                A8B484A8B49CB9C29CB9C29CB9C284A8B484A8B469869043555C000000FFFFFF
                00000000000000000000000000000000000000006986909CB9C29CB9C29CB9C2
                9CB9C291B1BB84A8B484A8B4698690546B73000000FFFFFF0000000000E0E4E0
                E0E4E0E0E4E0000000546B7384A8B491B1BB9CB9C29CB9C291B1BB9CB9C284A8
                B484A8B484A8B4698690000000FFFFFF0000000000E0E4E0E0E4E0E0E4E00000
                0069869084A8B49CB9C29CB9C29CB9C29CB9C291B1BB84A8B484A8B484A8B469
                86903544490000000000000000E0E4E0E0E4E0000000698690708F9991B1BB9C
                B9C29CB9C29CB9C291B1BB9CB9C284A8B484A8B484A8B484A8B443555C000000
                000000000000000000000000000084A8B400000084A8B49CB9C29CB9C291B1BB
                9CB9C284A8B484A8B484A8B484A8B484A8B4546B730000000000000000E0E4E0
                E0E4E000000084A8B400000099B7C09CB9C29CB9C291B1BB91B1BB84A8B484A8
                B484A8B484A8B484A8B4546B730000000000000000E0E4E0E0E4E00000006986
                9000000099B7C091B1BB69869084A8B484A8B469869084A8B484A8B484A8B484
                A8B46986900000000000000000E0E4E0E0E4E0000000546B7300000099B7C069
                869000000084A8B469869000000084A8B4698690000000698690546B73000000
                000000000000000000000000000000000000000099B7C069869000000084A8B4
                546B730000006D8B94546B730000000000000000000000000000000000E0E4E0
                E0E4E0E0E4E0E0E4E0000000AAC3CA6986900000005A737A3240430708080000
                000000008C9C94E0E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4
                E0000000AAC3CA698690000000000000000000A3A5A3E0E4E0E0E4E0E0E4E0E0
                E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4E0000000B8CDD369
                86900000008C9C94E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0000000
                0000000000000000000000000000000000000000AAC3CA698690000000000000
                0000000000000000000000000000000000000000000000000000000000E0E4E0
                E0E4E0E0E4E0E0E4E0000000698690546B730000008C9C94E0E4E0E0E4E0E0E4
                E0E0E4E0E0E4E0E0E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4
                E0E0E4E00000000000008C9C94E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0
                E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0
                E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              ParentFont = False
              Spacing = 10
              OnClick = BtnProdutoClick
            end
            object CheckCotacaoDia: TCheckBox
              Left = 307
              Top = 8
              Width = 321
              Height = 17
              Caption = 'Atualizar produtos utilizando '#250'ltima cota'#231#227'o do dia'
              Color = 14986888
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  object SQLCotacaoMoeda: TRxQuery
    Tag = 1
    BeforePost = SQLCotacaoMoedaBeforePost
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM COTACAOMOEDA'
      'ORDER BY'
      ''
      'CTMODDIA, '
      'REGISTRO'
      'DESC')
    Macros = <>
    Left = 280
    Top = 12
    object SQLCotacaoMoedaCTMOICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CTMOICOD'
      Origin = 'DB.COTACAOMOEDA.CTMOICOD'
    end
    object SQLCotacaoMoedaCTMODDIA: TDateTimeField
      DisplayLabel = 'Dia'
      FieldName = 'CTMODDIA'
      Origin = 'DB.COTACAOMOEDA.CTMODDIA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLCotacaoMoedaCTMOA5MOEDA: TStringField
      DisplayLabel = 'Moeda'
      FieldName = 'CTMOA5MOEDA'
      Origin = 'DB.COTACAOMOEDA.CTMOA5MOEDA'
      FixedChar = True
      Size = 5
    end
    object SQLCotacaoMoedaCTMON3VLRDIA: TBCDField
      DisplayLabel = 'Vlr. Dia'
      FieldName = 'CTMON3VLRDIA'
      Origin = 'DB.COTACAOMOEDA.CTMON3VLRDIA'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLCotacaoMoedaCTMOA60FONTE: TStringField
      DisplayLabel = 'Fonte'
      FieldName = 'CTMOA60FONTE'
      Origin = 'DB.COTACAOMOEDA.CTMOA60FONTE'
      FixedChar = True
      Size = 60
    end
    object SQLCotacaoMoedaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.COTACAOMOEDA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLCotacaoMoedaREGISTRO: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'REGISTRO'
      Origin = 'DB.COTACAOMOEDA.REGISTRO'
    end
  end
  object DSSQLCotacaoMoeda: TDataSource
    AutoEdit = False
    DataSet = SQLCotacaoMoeda
    Left = 308
    Top = 12
  end
  object SQLGeral: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 336
    Top = 12
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM PRODUTO'
      'WHERE'
      '(%GRUPO) and'
      '(%SUBGRUPO) and'
      '(%VARIACAO) and'
      '(%MARCA)')
    Macros = <
      item
        DataType = ftString
        Name = 'GRUPO'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'SUBGRUPO'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'VARIACAO'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MARCA'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 370
    Top = 12
    object SQLProdutoPRODICOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutoPRODA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODA60CODBAR: TStringField
      DisplayLabel = 'Barras'
      FieldName = 'PRODA60CODBAR'
      Origin = 'DB.PRODUTO.PRODA60CODBAR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODA15CODANT: TStringField
      DisplayLabel = 'Antigo'
      FieldName = 'PRODA15CODANT'
      Origin = 'DB.PRODUTO.PRODA15CODANT'
      FixedChar = True
      Size = 15
    end
    object SQLProdutoPRODA60REFER: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'PRODA60REFER'
      Origin = 'DB.PRODUTO.PRODA60REFER'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODN3VLRCOMPRA: TBCDField
      DisplayLabel = 'Vlr. Compra'
      FieldName = 'PRODN3VLRCOMPRA'
      Origin = 'DB.PRODUTO.PRODN3VLRCOMPRA'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3VLRCUSTO: TBCDField
      DisplayLabel = 'Vlr. Custo'
      FieldName = 'PRODN3VLRCUSTO'
      Origin = 'DB.PRODUTO.PRODN3VLRCUSTO'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3PERCMARGLUCR: TBCDField
      DisplayLabel = 'Margem'
      FieldName = 'PRODN3PERCMARGLUCR'
      Origin = 'DB.PRODUTO.PRODN3PERCMARGLUCR'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3VLRVENDA: TBCDField
      DisplayLabel = 'Vlr. Venda'
      FieldName = 'PRODN3VLRVENDA'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDA'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3DOLARCUSTO: TBCDField
      DisplayLabel = 'D'#243'lar Custo'
      FieldName = 'PRODN3DOLARCUSTO'
      Origin = 'DB.PRODUTO.PRODN3DOLARCUSTO'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3DOLARCOMPRA: TBCDField
      DisplayLabel = 'D'#243'lar Compra'
      FieldName = 'PRODN3DOLARCOMPRA'
      Origin = 'DB.PRODUTO.PRODN3DOLARCOMPRA'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3DOLARVENDA: TBCDField
      DisplayLabel = 'D'#243'lar Venda'
      FieldName = 'PRODN3DOLARVENDA'
      Origin = 'DB.PRODUTO.PRODN3DOLARVENDA'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3VLRCUSTOMED: TBCDField
      FieldName = 'PRODN3VLRCUSTOMED'
      Origin = 'DB.PRODUTO.PRODN3VLRCUSTOMED'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3VLRCOMPRAMED: TBCDField
      FieldName = 'PRODN3VLRCOMPRAMED'
      Origin = 'DB.PRODUTO.PRODN3VLRCOMPRAMED'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PRODUTO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PRODUTO.REGISTRO'
    end
  end
  object SQLGrupo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM GRUPO')
    Macros = <>
    Left = 432
    Top = 12
    object SQLGrupoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'DB.GRUPO.GRUPICOD'
    end
    object SQLGrupoGRUPA60DESCR: TStringField
      FieldName = 'GRUPA60DESCR'
      Origin = 'DB.GRUPO.GRUPA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLGrupoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.GRUPO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLGrupoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.GRUPO.REGISTRO'
    end
  end
  object DSSQLGrupo: TDataSource
    DataSet = SQLGrupo
    Left = 460
    Top = 12
  end
  object SQLSubGrupo: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLGrupo
    SQL.Strings = (
      'SELECT * FROM SUBGRUPO WHERE GRUPICOD = :GRUPICOD'
      'ORDER BY'
      'SUBGA60DESCR')
    Macros = <>
    Left = 488
    Top = 12
    ParamData = <
      item
        DataType = ftInteger
        Name = 'GRUPICOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SQLSubGrupoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'DB.SUBGRUPO.GRUPICOD'
    end
    object SQLSubGrupoSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
      Origin = 'DB.SUBGRUPO.SUBGICOD'
    end
    object SQLSubGrupoSUBGA60DESCR: TStringField
      FieldName = 'SUBGA60DESCR'
      Origin = 'DB.SUBGRUPO.SUBGA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLSubGrupoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.SUBGRUPO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLSubGrupoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.SUBGRUPO.REGISTRO'
    end
  end
  object DSSQLSubGrupo: TDataSource
    DataSet = SQLSubGrupo
    Left = 516
    Top = 12
  end
  object SQLVariacao: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLSubGrupo
    SQL.Strings = (
      'SELECT * FROM VARIACAO'
      'WHERE'
      'GRUPICOD = :GRUPICOD'
      'and'
      'SUBGICOD = :SUBGICOD'
      'ORDER BY'
      'VARIA60DESCr')
    Macros = <>
    Left = 544
    Top = 12
    ParamData = <
      item
        DataType = ftInteger
        Name = 'GRUPICOD'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'SUBGICOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SQLVariacaoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'DB.VARIACAO.GRUPICOD'
    end
    object SQLVariacaoSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
      Origin = 'DB.VARIACAO.SUBGICOD'
    end
    object SQLVariacaoVARIICOD: TIntegerField
      FieldName = 'VARIICOD'
      Origin = 'DB.VARIACAO.VARIICOD'
    end
    object SQLVariacaoVARIA60DESCR: TStringField
      FieldName = 'VARIA60DESCR'
      Origin = 'DB.VARIACAO.VARIA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLVariacaoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.VARIACAO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLVariacaoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.VARIACAO.REGISTRO'
    end
  end
  object DSSQLVariacao: TDataSource
    DataSet = SQLVariacao
    Left = 572
    Top = 12
  end
  object SQLMarca: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM MARCA'
      'ORDER BY MARCA60DESCR')
    Macros = <>
    Left = 600
    Top = 12
    object SQLMarcaMARCICOD: TIntegerField
      FieldName = 'MARCICOD'
      Origin = 'DB.MARCA.MARCICOD'
    end
    object SQLMarcaMARCA60DESCR: TStringField
      FieldName = 'MARCA60DESCR'
      Origin = 'DB.MARCA.MARCA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLMarcaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.MARCA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLMarcaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.MARCA.REGISTRO'
    end
  end
  object DSSQLMarca: TDataSource
    DataSet = SQLMarca
    Left = 628
    Top = 12
  end
  object DSSQLProduto: TDataSource
    DataSet = SQLProduto
    Left = 398
    Top = 12
  end
  object SQLProdutoComposicao: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLProduto
    RequestLive = True
    SQL.Strings = (
      'SELECT '
      '*'
      'FROM'
      'PRODUTOCOMPOSICAO'
      'WHERE '
      '(%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 656
    Top = 12
    object SQLProdutoComposicaoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTOCOMPOSICAO.PRODICOD'
    end
    object SQLProdutoComposicaoPRODICODFILHO: TIntegerField
      FieldName = 'PRODICODFILHO'
      Origin = 'DB.PRODUTOCOMPOSICAO.PRODICODFILHO'
    end
    object SQLProdutoComposicaoPRODN3QTDE: TBCDField
      FieldName = 'PRODN3QTDE'
      Origin = 'DB.PRODUTOCOMPOSICAO.PRODN3QTDE'
      Precision = 15
      Size = 3
    end
    object SQLProdutoComposicaoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PRODUTOCOMPOSICAO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoComposicaoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PRODUTOCOMPOSICAO.REGISTRO'
    end
    object SQLProdutoComposicaoPRODN3VLRTOTAL: TBCDField
      FieldName = 'PRODN3VLRTOTAL'
      Origin = 'DB.PRODUTOCOMPOSICAO.PRODN3VLRTOTAL'
      Precision = 15
      Size = 3
    end
  end
end
