inherited FormTelaRecalculaCustoMedio: TFormTelaRecalculaCustoMedio
  Left = 63
  Top = 45
  Caption = 'Recalcula Custo M'#233'dio'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCabecalho: TPanel
      inherited PanelNavigator: TPanel
        object LabelDiversos: TRxSpeedButton
          Left = 3
          Top = 3
          Width = 154
          Height = 25
          Cursor = crHandPoint
          Caption = '    &Visualizar Produtos'
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
          GrayedInactive = False
          Layout = blGlyphLeft
          MarkDropDown = False
          ParentFont = False
          Transparent = True
          WordWrap = True
          OnClick = LabelDiversosClick
        end
        object RxSpeedButton1: TRxSpeedButton
          Left = 157
          Top = 3
          Width = 204
          Height = 25
          Cursor = crHandPoint
          Caption = '   &Recalcular Custo M'#233'dio'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            8E040000424D8E040000000000005600000028000000250000001B0000000100
            080000000000380400000000000000000000080000000800000000000000FF00
            000084840000FFFF000084008400C6C6C600FFFFFF00FFFFFF00060606060606
            0606060606060606060606060606060606060606060606060606060606060677
            7777060606060606060606060606060606060606060606060606060606060606
            0606060606060677777706060606060606060606060606060606060606060606
            0606060606060606060606060606060000000606060600000000000000000000
            0000000000000000000000000000000000000006060606777177060606000104
            01040104010401040104010401040104010401040104010401040100060606DD
            DDD0060606000302020202020202020202020202020202020202020202020202
            0202040006060677111706060600030202000000020000000200000002000000
            0200000000000000020201000606067777770606060003020205050002050500
            0205050002050500020705050505050002020400060606DDDDD0060606000302
            02020500020705000207050002070500020707070707070002020100060606B7
            B707060606000302020202020202020202020202020202020202020202020202
            02020400060606DDDDD006060600030202000000020000000200000002000000
            0200000002000000020201000606067771770606060003020205050002050500
            0205050002050500020505000205050002020400060606B07777060606000302
            0202050002070500020705000207050002070500020705000202010006060677
            7177060606000302020202020202020202020202020202020202020202020202
            020204000606060000D006060600030202000000020000000200000002000000
            0200000002000000020201000606064DDDD00606060003020205050002050500
            0205050002050500020505000205050002020400060606477177060606000302
            02020500020705000207050002070500020705000207050002020100060606D4
            4DD0060606000302020202020202020202020202020202020202020202020202
            0202040006060677717706060600030202000303030303030303030303030303
            0202020202020202020201000606060707700606060003020200070707070707
            0707070707070703020202020202020202020400060606444DD0060606000302
            020005050505050505050505050505030202020202020202020201000606067B
            7B07060606000302020000000000000000000000000000000202020202020202
            02020400060606DDDDD006060600030303030303030303030303030303030303
            0303030303030303030302000606067771770606060600000000000000000000
            0000000000000000000000000000000000000006060606077070060606060606
            0606060606060606060606060606060606060606060606060606060606060677
            7177060606060606060606060606060606060606060606060606060606060606
            0606060606060677777706060606060606060606060606060606060606060606
            060606060606060606060606060606DDDDD0}
          GrayedInactive = False
          Layout = blGlyphLeft
          MarkDropDown = False
          ParentFont = False
          Transparent = True
          WordWrap = True
          OnClick = RxSpeedButton1Click
        end
      end
    end
    inherited PanelCentral: TPanel
      inherited PanelBarra: TPanel
        Width = 17
        Height = 327
        Visible = False
      end
      object DBGridLista: TDBGrid
        Left = 17
        Top = 0
        Width = 740
        Height = 327
        Align = alClient
        BorderStyle = bsNone
        DataSource = DSSQLNotaCompra
        FixedColor = 16767449
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentColor = True
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'PRODICOD'
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODA60DESCR'
            Width = 308
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CustoMedio'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CompraMedio'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORCOMPRA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORICMS'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORIPI'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORFRETE'
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 327
        Width = 757
        Height = 41
        Align = alBottom
        TabOrder = 2
        object Label1: TLabel
          Left = 1
          Top = 1
          Width = 755
          Height = 39
          Align = alClient
          Alignment = taCenter
        end
      end
    end
  end
  object SQLNotaCompra: TRxQuery
    OnCalcFields = SQLNotaCompraCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      
        'Sum((NOCIN3VLRUNIT - NOCIN3VLRDESC) * (NOCIN3QTDEMBAL * NOCIN3CA' +
        'PEMBAL)) as ValorCompra,'
      'Sum(NOCIN3VLRICMS) as ValorICMS,'
      'Sum(NOCIN3VLRIPI) as ValorIPI,'
      'Sum(NOCIN3VLRFRETE) as ValorFrete,'
      'sum(NOCIN3QTDEMBAL * NOCIN3CAPEMBAL) as Qtde,'
      'NOTACOMPRAITEM.PRODICOD'
      'from'
      'NOTACOMPRAITEM'
      
        'inner join NOTACOMPRA   on NOTACOMPRAITEM.NOCPA13ID = NOTACOMPRA' +
        '.NOCPA13ID'
      'where'
      'NOCPCSTATUS = '#39'E'#39
      'and'
      'FORNICOD IS NOT NULL'
      'group by'
      'PRODICOD'
      'order by'
      'PRODICOD'
      '')
    Macros = <>
    Left = 224
    Top = 8
    object SQLNotaCompraVALORCOMPRA: TFloatField
      DisplayLabel = 'Valor de Compra'
      FieldName = 'VALORCOMPRA'
      DisplayFormat = '#,##0.00'
    end
    object SQLNotaCompraVALORICMS: TBCDField
      DisplayLabel = 'Valor de ICMS'
      FieldName = 'VALORICMS'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraVALORIPI: TBCDField
      DisplayLabel = 'Valor de IPI'
      FieldName = 'VALORIPI'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraVALORFRETE: TBCDField
      DisplayLabel = 'Valor de Frete'
      FieldName = 'VALORFRETE'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraPRODICOD: TIntegerField
      DisplayLabel = 'C'#243'd'
      FieldName = 'PRODICOD'
    end
    object SQLNotaCompraPRODA60DESCR: TStringField
      DisplayLabel = 'Produto'
      FieldKind = fkLookup
      FieldName = 'PRODA60DESCR'
      LookupDataSet = SQLProduto
      LookupKeyFields = 'PRODICOD'
      LookupResultField = 'PRODA60DESCR'
      KeyFields = 'PRODICOD'
      Size = 60
      Lookup = True
    end
    object SQLNotaCompraCustoMedio: TFloatField
      DisplayLabel = 'Custo M'#233'dio'
      FieldKind = fkCalculated
      FieldName = 'CustoMedio'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object SQLNotaCompraCompraMedio: TFloatField
      DisplayLabel = 'Compra M'#233'dia'
      FieldKind = fkCalculated
      FieldName = 'CompraMedio'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object SQLNotaCompraQTDE: TFloatField
      FieldName = 'QTDE'
    end
  end
  object DSSQLNotaCompra: TDataSource
    DataSet = SQLNotaCompra
    Left = 252
    Top = 8
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT'
      'PRODICOD,'
      'PRODA60DESCR,'
      'PRODN3VLRCUSTOMED,'
      'PRODN3VLRCOMPRAMED'
      'FROM'
      'PRODUTO'
      'order by'
      'PRODICOD ')
    Macros = <>
    Left = 280
    Top = 8
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
  end
  object SQLProdutoSaldo: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLNotaCompra
    SQL.Strings = (
      'SELECT'
      'PRODUTOSALDO.PSLDN3QTDE,'
      'PRODUTO.PRODN3VLRCUSTO'
      'FROM'
      'PRODUTOSALDO'
      
        'left outer join produto on PRODUTOSALDO.prodicod = produto.prodi' +
        'cod'
      'WHERE'
      'PRODICOD = :PRODICOD'
      'AND'
      'EMPRICOD = :Empresa')
    Macros = <>
    Left = 336
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRODICOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Empresa'
        ParamType = ptUnknown
      end>
    object SQLProdutoSaldoPSLDN3QTDE: TBCDField
      FieldName = 'PSLDN3QTDE'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDE'
      Precision = 15
      Size = 3
    end
    object SQLProdutoSaldoPRODN3VLRCUSTO: TBCDField
      FieldName = 'PRODN3VLRCUSTO'
      Origin = 'DB.PRODUTO.PRODN3VLRCUSTO'
      Precision = 15
      Size = 3
    end
  end
  object DSSQLProduto: TDataSource
    DataSet = SQLProduto
    Left = 308
    Top = 8
  end
end
