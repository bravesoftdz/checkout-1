object FormTelaConsultaRapidaItem: TFormTelaConsultaRapidaItem
  Left = 222
  Top = 62
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 573
  ClientWidth = 792
  Color = 14731440
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object RxLabel1: TRxLabel
    Left = 12
    Top = 469
    Width = 178
    Height = 19
    Caption = 'DESCRI'#199#195'O T'#201'CNICA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Layout = tlBottom
    ParentFont = False
    ShadowColor = clWhite
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel3: TRxLabel
    Left = 200
    Top = 383
    Width = 37
    Height = 19
    Caption = 'COR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Layout = tlBottom
    ParentFont = False
    ShadowColor = clWhite
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel4: TRxLabel
    Left = 398
    Top = 383
    Width = 44
    Height = 19
    Caption = 'TAM.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Layout = tlBottom
    ParentFont = False
    ShadowColor = clWhite
    ShadowPos = spRightBottom
    Transparent = True
  end
  object LblNomeSistema: TRxLabel
    Left = 0
    Top = 0
    Width = 792
    Height = 45
    Align = alTop
    Alignment = taCenter
    Caption = 'Consulta de Itens'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -37
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ShadowColor = clBlack
    ShadowSize = 2
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel7: TRxLabel
    Left = 680
    Top = 383
    Width = 79
    Height = 19
    Caption = 'ESTOQUE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Layout = tlBottom
    ParentFont = False
    ShadowColor = clWhite
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel8: TRxLabel
    Left = 12
    Top = 383
    Width = 116
    Height = 19
    Caption = 'C'#211'D. BARRAS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Layout = tlBottom
    ParentFont = False
    ShadowColor = clWhite
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel9: TRxLabel
    Left = 650
    Top = 427
    Width = 130
    Height = 19
    Caption = 'PREV.ENTREGA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Layout = tlBottom
    ParentFont = False
    ShadowColor = clWhite
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel5: TRxLabel
    Left = 476
    Top = 383
    Width = 50
    Height = 19
    Caption = 'UNID.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Layout = tlBottom
    ParentFont = False
    ShadowColor = clWhite
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel10: TRxLabel
    Left = 12
    Top = 425
    Width = 61
    Height = 19
    Caption = 'GRUPO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Layout = tlBottom
    ParentFont = False
    ShadowColor = clWhite
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel11: TRxLabel
    Left = 225
    Top = 426
    Width = 94
    Height = 19
    Caption = 'SUBGRUPO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Layout = tlBottom
    ParentFont = False
    ShadowColor = clWhite
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel12: TRxLabel
    Left = 435
    Top = 426
    Width = 159
    Height = 19
    Caption = 'VALOR PROMO'#199#195'O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Layout = tlBottom
    ParentFont = False
    ShadowColor = clWhite
    ShadowPos = spRightBottom
    Transparent = True
  end
  object DBText8: TDBText
    Left = 11
    Top = 402
    Width = 180
    Height = 23
    Color = clWhite
    DataField = 'PRODA60CODBAR'
    DataSource = DSTemplate
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object DBText3: TDBText
    Left = 195
    Top = 402
    Width = 197
    Height = 23
    Color = clWhite
    DataField = 'CorLookup'
    DataSource = DSTemplate
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object DBText4: TDBText
    Left = 395
    Top = 402
    Width = 72
    Height = 23
    Color = clWhite
    DataField = 'TAMANHOLOOKUP'
    DataSource = DSTemplate
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object DBText5: TDBText
    Left = 471
    Top = 402
    Width = 64
    Height = 23
    Color = clWhite
    DataField = 'UnidadeLookup'
    DataSource = DSTemplate
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object DBText10: TDBText
    Left = 11
    Top = 445
    Width = 200
    Height = 23
    Color = clWhite
    DataField = 'GrupoLookup'
    DataSource = DSTemplate
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object DBText11: TDBText
    Left = 224
    Top = 445
    Width = 206
    Height = 23
    Color = clWhite
    DataField = 'SubGrupoLookup'
    DataSource = DSTemplate
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object DBText6: TDBText
    Left = 434
    Top = 445
    Width = 200
    Height = 23
    Color = clWhite
    DataField = 'PRODN3VLRVENDAPROM'
    DataSource = DSTemplate
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object DBText1: TDBText
    Left = 11
    Top = 489
    Width = 622
    Height = 81
    Color = clWhite
    DataField = 'PRODA255DESCRTEC'
    DataSource = DSTemplate
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object DBText2: TDBText
    Left = 656
    Top = 402
    Width = 129
    Height = 23
    Alignment = taRightJustify
    Color = clWhite
    DataField = 'SaldoEmpresa'
    DataSource = DSTemplate
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object RxLabel2: TRxLabel
    Left = 369
    Top = 45
    Width = 107
    Height = 19
    Caption = 'REFERENCIA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Layout = tlBottom
    ParentFont = False
    ShadowColor = clWhite
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel6: TRxLabel
    Left = 541
    Top = 45
    Width = 63
    Height = 19
    Caption = 'MARCA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Layout = tlBottom
    ParentFont = False
    ShadowColor = clWhite
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel13: TRxLabel
    Left = 12
    Top = 45
    Width = 99
    Height = 19
    Caption = 'DESCRICAO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Layout = tlBottom
    ParentFont = False
    ShadowColor = clWhite
    ShadowPos = spRightBottom
    Transparent = True
  end
  object DBText7: TDBText
    Left = 644
    Top = 445
    Width = 141
    Height = 23
    Alignment = taCenter
    Color = clWhite
    DataField = 'PRODDPREVCOMPRA'
    DataSource = DSTemplate
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object RxLabel14: TRxLabel
    Left = 549
    Top = 384
    Width = 79
    Height = 19
    Caption = 'MEDIDAS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Layout = tlBottom
    ParentFont = False
    ShadowColor = clWhite
    ShadowPos = spRightBottom
    Transparent = True
  end
  object DBText9: TDBText
    Left = 538
    Top = 402
    Width = 113
    Height = 23
    Alignment = taCenter
    Color = clWhite
    DataField = 'PRODA60DIMENSAO'
    DataSource = DSTemplate
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object lbVerFoto: TRxLabel
    Left = 546
    Top = 469
    Width = 84
    Height = 19
    Caption = 'VER FOTO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    Layout = tlBottom
    ParentFont = False
    ShadowColor = clWhite
    ShadowPos = spRightBottom
    Transparent = True
    OnClick = lbVerFotoClick
  end
  object RxLabel15: TRxLabel
    Left = 644
    Top = 471
    Width = 139
    Height = 19
    Caption = 'DT.ULT.COMPRA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Layout = tlBottom
    ParentFont = False
    ShadowColor = clWhite
    ShadowPos = spRightBottom
    Transparent = True
  end
  object DBText12: TDBText
    Left = 644
    Top = 490
    Width = 141
    Height = 23
    Alignment = taCenter
    Color = clWhite
    DataField = 'PRODDULTCOMPRA'
    DataSource = DSTemplate
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object DBText13: TDBText
    Left = 644
    Top = 532
    Width = 141
    Height = 23
    Alignment = taCenter
    Color = clWhite
    DataField = 'PRODN3QTDULTCOMPRA'
    DataSource = DSTemplate
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object RxLabel16: TRxLabel
    Left = 645
    Top = 513
    Width = 128
    Height = 19
    Caption = 'Q.ULT.COMPRA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Layout = tlBottom
    ParentFont = False
    ShadowColor = clWhite
    ShadowPos = spRightBottom
    Transparent = True
  end
  object VALOR: TEdit
    Left = 8
    Top = 64
    Width = 351
    Height = 25
    CharCase = ecUpperCase
    Color = clWhite
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnKeyDown = VALORKeyDown
  end
  object DBGridLista: TDBGrid
    Left = 8
    Top = 91
    Width = 779
    Height = 292
    BorderStyle = bsNone
    Color = clWhite
    Ctl3D = False
    DataSource = DSTemplate
    FixedColor = 10053171
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGridListaDrawColumnCell
    OnKeyDown = DBGridListaKeyDown
    Columns = <
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'PRODICOD'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODA60DESCR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 312
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODA60REFER'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 154
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MarcaLookup'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Caption = 'Marca'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 76
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PRODN3VLRVENDA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Varejo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 82
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PRODN3VLRVENDA2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Vlr.Atacado'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end>
  end
  object ComboMarca: TRxDBLookupCombo
    Left = 536
    Top = 63
    Width = 250
    Height = 26
    DropDownCount = 8
    Ctl3D = True
    DisplayEmpty = 'Todas as Marcas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'MARCICOD'
    LookupDisplay = 'MARCA60DESCR'
    LookupSource = dsSQLMarcaCombo
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    OnKeyDown = ComboMarcaKeyDown
  end
  object EditRef: TEdit
    Left = 365
    Top = 64
    Width = 165
    Height = 25
    CharCase = ecUpperCase
    Color = clWhite
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    OnKeyDown = EditRefKeyDown
  end
  object DSTemplate: TDataSource
    AutoEdit = False
    DataSet = SQLProduto
    OnDataChange = DSTemplateDataChange
    Left = 123
    Top = 166
  end
  object SQLProduto: TRxQuery
    OnCalcFields = SQLProdutoCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PRODUTO where PRODCATIVO = '#39'S'#39
      'order by PRODA60DESCR, PRODA60REFER')
    Macros = <>
    Left = 95
    Top = 166
    object SQLProdutoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutoPRODA30CODESTRUT: TStringField
      FieldName = 'PRODA30CODESTRUT'
      Origin = 'DB.PRODUTO.PRODA30CODESTRUT'
      FixedChar = True
      Size = 30
    end
    object SQLProdutoPRODA60CODBAR: TStringField
      FieldName = 'PRODA60CODBAR'
      Origin = 'DB.PRODUTO.PRODA60CODBAR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODA15CODANT: TStringField
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
    object SQLProdutoPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCRI'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODA30ADESCRREDUZ: TStringField
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'PRODA30ADESCRREDUZ'
      Origin = 'DB.PRODUTO.PRODA30ADESCRREDUZ'
      FixedChar = True
      Size = 30
    end
    object SQLProdutoPRODN3PESOBRUTO: TBCDField
      FieldName = 'PRODN3PESOBRUTO'
      Origin = 'DB.PRODUTO.PRODN3PESOBRUTO'
      Size = 3
    end
    object SQLProdutoGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
      Origin = 'DB.PRODUTO.GRADICOD'
    end
    object SQLProdutoGRTMICOD: TIntegerField
      FieldName = 'GRTMICOD'
      Origin = 'DB.PRODUTO.GRTMICOD'
    end
    object SQLProdutoTAMANHOLOOKUP: TStringField
      FieldKind = fkLookup
      FieldName = 'TAMANHOLOOKUP'
      LookupDataSet = SQLGradeTamanho
      LookupKeyFields = 'GRADICOD;GRTMICOD'
      LookupResultField = 'GRTMA5DESCR'
      KeyFields = 'GRADICOD;GRTMICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLProdutoCORICOD: TIntegerField
      FieldName = 'CORICOD'
      Origin = 'DB.PRODUTO.CORICOD'
    end
    object SQLProdutoPRODN3PESOLIQ: TBCDField
      FieldName = 'PRODN3PESOLIQ'
      Origin = 'DB.PRODUTO.PRODN3PESOLIQ'
      Size = 3
    end
    object SQLProdutoPRODN3VLRVENDA: TBCDField
      FieldName = 'PRODN3VLRVENDA'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDA'
      DisplayFormat = '#,##0.00 '
      Size = 3
    end
    object SQLProdutoPRODIAGRUPGRADE: TIntegerField
      FieldName = 'PRODIAGRUPGRADE'
      Origin = 'DB.PRODUTO.PRODIAGRUPGRADE'
    end
    object SQLProdutoPRODN3CAPACEMBAL: TBCDField
      FieldName = 'PRODN3CAPACEMBAL'
      Origin = 'DB.PRODUTO.PRODN3CAPACEMBAL'
      Size = 3
    end
    object SQLProdutoPRODA255DESCRTEC: TStringField
      FieldName = 'PRODA255DESCRTEC'
      Origin = 'DB.PRODUTO.PRODA255DESCRTEC'
      FixedChar = True
      Size = 255
    end
    object SQLProdutoMARCICOD: TIntegerField
      FieldName = 'MARCICOD'
      Origin = 'DB.PRODUTO.MARCICOD'
    end
    object SQLProdutoPRODDINIPROMO: TDateTimeField
      FieldName = 'PRODDINIPROMO'
      Origin = 'DB.PRODUTO.PRODDINIPROMO'
    end
    object SQLProdutoPRODN3VLRVENDAPROM: TBCDField
      FieldName = 'PRODN3VLRVENDAPROM'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDAPROM'
      DisplayFormat = '#,##0.00 '
      Size = 3
    end
    object SQLProdutoSaldoEmpresa: TFloatField
      DisplayLabel = 'Saldo'
      FieldKind = fkCalculated
      FieldName = 'SaldoEmpresa'
      DisplayFormat = '###0.000'
      Calculated = True
    end
    object SQLProdutoPRODICODBALANCA: TIntegerField
      FieldName = 'PRODICODBALANCA'
      Origin = 'DB.PRODUTO.PRODICODBALANCA'
    end
    object SQLProdutoMarcaLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'MarcaLookup'
      LookupDataSet = SQLMarca
      LookupKeyFields = 'MARCICOD'
      LookupResultField = 'MARCA60DESCR'
      KeyFields = 'MARCICOD'
      Size = 60
      Lookup = True
    end
    object SQLProdutoCorLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'CorLookup'
      LookupDataSet = SQLCOR
      LookupKeyFields = 'CORICOD'
      LookupResultField = 'CORA30DESCR'
      KeyFields = 'CORICOD'
      Size = 30
      Lookup = True
    end
    object SQLProdutoGrupoLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'GrupoLookup'
      LookupDataSet = TblGrupo
      LookupKeyFields = 'GRUPICOD'
      LookupResultField = 'GRUPA60DESCR'
      KeyFields = 'GRUPICOD'
      Size = 60
      Lookup = True
    end
    object SQLProdutoUNIDICOD: TIntegerField
      FieldName = 'UNIDICOD'
      Origin = 'DB.PRODUTO.UNIDICOD'
    end
    object SQLProdutoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'DB.PRODUTO.GRUPICOD'
    end
    object SQLProdutoSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
      Origin = 'DB.PRODUTO.SUBGICOD'
    end
    object SQLProdutoVARIICOD: TIntegerField
      FieldName = 'VARIICOD'
      Origin = 'DB.PRODUTO.VARIICOD'
    end
    object SQLProdutoSubGrupoLookup: TStringField
      DisplayWidth = 60
      FieldKind = fkLookup
      FieldName = 'SubGrupoLookup'
      LookupDataSet = TblSubGrupo
      LookupKeyFields = 'GRUPICOD;SUBGICOD'
      LookupResultField = 'SUBGA60DESCR'
      KeyFields = 'GRUPICOD;SUBGICOD'
      Size = 60
      Lookup = True
    end
    object SQLProdutoVariacaoLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'VariacaoLookup'
      LookupDataSet = TblVariacao
      LookupKeyFields = 'GRUPICOD;SUBGICOD;VARIICOD'
      LookupResultField = 'VARIA60DESCR'
      KeyFields = 'GRUPICOD;SUBGICOD;VARIICOD'
      Size = 60
      Lookup = True
    end
    object SQLProdutoUnidadeLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'UnidadeLookup'
      LookupDataSet = TblUnidade
      LookupKeyFields = 'UNIDICOD'
      LookupResultField = 'UNIDA5DESCR'
      KeyFields = 'UNIDICOD'
      Size = 5
      Lookup = True
    end
    object SQLProdutoPRODDFIMPROMO: TDateTimeField
      FieldName = 'PRODDFIMPROMO'
      Origin = 'DB.PRODUTO.PRODDFIMPROMO'
    end
    object SQLProdutoPRODCSUBSTRIB: TStringField
      FieldName = 'PRODCSUBSTRIB'
      Origin = 'DB.PRODUTO.PRODCSUBSTRIB'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoPRODA60DIMENSAO: TStringField
      FieldName = 'PRODA60DIMENSAO'
      Origin = 'DB.PRODUTO.PRODA60DIMENSAO'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODBIMAGEM: TBlobField
      FieldName = 'PRODBIMAGEM'
      Origin = 'DB.PRODUTO.PRODBIMAGEM'
      Size = 1
    end
    object SQLProdutoPRODDPREVCOMPRA: TDateTimeField
      FieldName = 'PRODDPREVCOMPRA'
      Origin = 'DB.PRODUTO.PRODDPREVCOMPRA'
    end
    object SQLProdutoPRODDULTCOMPRA: TDateTimeField
      FieldName = 'PRODDULTCOMPRA'
      Origin = 'DB.PRODUTO.PRODDULTCOMPRA'
    end
    object SQLProdutoPRODN3QTDULTCOMPRA: TBCDField
      FieldName = 'PRODN3QTDULTCOMPRA'
      Origin = 'DB.PRODUTO.PRODN3QTDULTCOMPRA'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3VLRVENDA2: TBCDField
      FieldName = 'PRODN3VLRVENDA2'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDA2'
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 3
    end
  end
  object FormStorage: TFormStorage
    Active = False
    Options = [fpState]
    StoredValues = <>
    Left = 179
    Top = 194
  end
  object SQLGeral: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 95
    Top = 222
  end
  object SQLCOR: TTable
    DatabaseName = 'DB'
    TableName = 'COR'
    Left = 95
    Top = 194
    object SQLCORCORICOD: TIntegerField
      FieldName = 'CORICOD'
      Required = True
    end
    object SQLCORCORA30DESCR: TStringField
      FieldName = 'CORA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object SQLMarca: TTable
    DatabaseName = 'DB'
    TableName = 'MARCA'
    Left = 123
    Top = 194
    object SQLMarcaMARCICOD: TIntegerField
      FieldName = 'MARCICOD'
      Required = True
    end
    object SQLMarcaMARCA60DESCR: TStringField
      FieldName = 'MARCA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLGradeTamanho: TTable
    DatabaseName = 'DB'
    TableName = 'GRADETAMANHO'
    Left = 151
    Top = 194
  end
  object TblGrupo: TTable
    DatabaseName = 'DB'
    TableName = 'GRUPO'
    Left = 123
    Top = 222
  end
  object TblSubGrupo: TTable
    DatabaseName = 'DB'
    TableName = 'SUBGRUPO'
    Left = 151
    Top = 222
  end
  object TblVariacao: TTable
    DatabaseName = 'DB'
    TableName = 'VARIACAO'
    Left = 179
    Top = 222
  end
  object TblUnidade: TTable
    DatabaseName = 'DB'
    TableName = 'UNIDADE'
    Left = 151
    Top = 166
  end
  object dsSQLMarcaCombo: TDataSource
    AutoEdit = False
    DataSet = SQLMarcaCombo
    Left = 123
    Top = 259
  end
  object SQLMarcaCombo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select MARCICOD, MARCA60DESCR from Marca'
      'Order by MARCA60DESCR')
    Macros = <>
    Left = 123
    Top = 287
  end
end
