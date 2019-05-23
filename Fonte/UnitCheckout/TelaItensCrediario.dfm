object FormTelaItensCrediario: TFormTelaItensCrediario
  Left = 398
  Top = 82
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 585
  ClientWidth = 793
  Color = 14731440
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object LblNomeSistema: TRxLabel
    Left = 0
    Top = 0
    Width = 478
    Height = 35
    Alignment = taCenter
    Caption = 'Consulta de Itens do Documento'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ShadowColor = clBlack
    ShadowSize = 2
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel6: TRxLabel
    Left = 0
    Top = 567
    Width = 793
    Height = 18
    Align = alBottom
    Alignment = taCenter
    Caption = 'Pressione [ ESC ] para sair'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    ShadowColor = clBlack
    ShadowSize = 2
    ShadowPos = spRightBottom
    Transparent = True
  end
  object DBGridItens: TDBGrid
    Left = 0
    Top = 40
    Width = 793
    Height = 500
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
    Columns = <
      item
        Expanded = False
        FieldName = 'PRODICOD'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODA60DESCR'
        Width = 230
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
        FieldName = 'DEMISSAO'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DOCUMENTO'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUPOM'
        Title.Caption = 'Cupom'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENDA60NOME'
        Width = 106
        Visible = True
      end>
  end
  object DSSQLItem: TDataSource
    DataSet = SQLItem
    Left = 103
    Top = 543
  end
  object SQLItem: TRxQuery
    DatabaseName = 'DB'
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
      '  CUPOMITEM.CUPOA13ID = :CUPOA13ID and'
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
      '  (%MProdutoNF)'
      'order by 10 descending')
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
    Left = 75
    Top = 543
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLIEA13ID'
        ParamType = ptUnknown
        Size = 14
      end
      item
        DataType = ftUnknown
        Name = 'CUPOA13ID'
        ParamType = ptUnknown
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
    object SQLItemQTDE: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'QTDE'
    end
    object SQLItemVLRUNIT: TFloatField
      DisplayLabel = 'Valor Unit'
      FieldName = 'VLRUNIT'
    end
    object SQLItemVLRDESC: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'VLRDESC'
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
end
