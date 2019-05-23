object FormTelaConsultaRapidaItem: TFormTelaConsultaRapidaItem
  Left = 1
  Top = 22
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
    Top = 444
    Width = 183
    Height = 23
    Caption = 'DESCRI'#199#195'O T'#201'CNICA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    Layout = tlBottom
    ParentFont = False
    ShadowColor = clWhite
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel3: TRxLabel
    Left = 228
    Top = 339
    Width = 38
    Height = 23
    Caption = 'COR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    Layout = tlBottom
    ParentFont = False
    ShadowColor = clWhite
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel4: TRxLabel
    Left = 436
    Top = 339
    Width = 45
    Height = 23
    Caption = 'TAM.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
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
    Height = 29
    Align = alTop
    Alignment = taCenter
    Caption = 'Consulta de Itens'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -24
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
    Left = 675
    Top = 339
    Width = 84
    Height = 23
    Caption = 'ESTOQUE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    Layout = tlBottom
    ParentFont = False
    ShadowColor = clWhite
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel8: TRxLabel
    Left = 12
    Top = 339
    Width = 119
    Height = 23
    Caption = 'C'#211'D. BARRAS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    Layout = tlBottom
    ParentFont = False
    ShadowColor = clWhite
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel9: TRxLabel
    Left = 654
    Top = 393
    Width = 128
    Height = 23
    Caption = 'SUBST TRIBUT'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    Layout = tlBottom
    ParentFont = False
    ShadowColor = clWhite
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel5: TRxLabel
    Left = 526
    Top = 339
    Width = 53
    Height = 23
    Caption = 'UNID.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    Layout = tlBottom
    ParentFont = False
    ShadowColor = clWhite
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel10: TRxLabel
    Left = 12
    Top = 391
    Width = 62
    Height = 23
    Caption = 'GRUPO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    Layout = tlBottom
    ParentFont = False
    ShadowColor = clWhite
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel11: TRxLabel
    Left = 225
    Top = 392
    Width = 96
    Height = 23
    Caption = 'SUBGRUPO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    Layout = tlBottom
    ParentFont = False
    ShadowColor = clWhite
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel12: TRxLabel
    Left = 435
    Top = 392
    Width = 89
    Height = 23
    Caption = 'VARIA'#199#195'O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    Layout = tlBottom
    ParentFont = False
    ShadowColor = clWhite
    ShadowPos = spRightBottom
    Transparent = True
  end
  object DBText8: TDBText
    Left = 11
    Top = 360
    Width = 199
    Height = 31
    Color = clWhite
    DataField = 'PRODA60CODBAR'
    DataSource = DSTemplate
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object DBText3: TDBText
    Left = 223
    Top = 360
    Width = 201
    Height = 31
    Color = clWhite
    DataField = 'CorLookup'
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
  object DBText4: TDBText
    Left = 433
    Top = 360
    Width = 72
    Height = 31
    Color = clWhite
    DataField = 'TAMANHOLOOKUP'
    DataSource = DSTemplate
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object DBText5: TDBText
    Left = 521
    Top = 360
    Width = 112
    Height = 31
    Color = clWhite
    DataField = 'UnidadeLookup'
    DataSource = DSTemplate
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object DBText10: TDBText
    Left = 11
    Top = 413
    Width = 200
    Height = 31
    Color = clWhite
    DataField = 'GrupoLookup'
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
  object DBText11: TDBText
    Left = 224
    Top = 413
    Width = 200
    Height = 31
    Color = clWhite
    DataField = 'SubGrupoLookup'
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
  object DBText6: TDBText
    Left = 434
    Top = 413
    Width = 200
    Height = 31
    Color = clWhite
    DataField = 'VariacaoLookup'
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
  object DBText1: TDBText
    Left = 11
    Top = 466
    Width = 774
    Height = 104
    Color = clWhite
    DataField = 'PRODA255DESCRTEC'
    DataSource = DSTemplate
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object DBText2: TDBText
    Left = 645
    Top = 360
    Width = 140
    Height = 31
    Color = clWhite
    DataField = 'SaldoEmpresa'
    DataSource = DSTemplate
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object IndiceSelec: TEdit
    Left = 670
    Top = 49
    Width = 121
    Height = 21
    TabOrder = 0
    Visible = False
  end
  object VALOR: TEdit
    Left = 8
    Top = 31
    Width = 501
    Height = 35
    CharCase = ecUpperCase
    Color = clWhite
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    OnKeyDown = VALORKeyDown
  end
  object ListaIndices: TTextListBox
    Left = 516
    Top = 31
    Width = 262
    Height = 33
    Color = clWhite
    ExtendedSelect = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    IntegralHeight = True
    ItemHeight = 29
    Items.Strings = (
      'C'#243'digo Interno'
      'Descri'#231#227'o'
      'Refer'#234'ncia'
      'C'#243'digo Antigo'
      'C'#243'digo Barras'
      'C'#243'digo Balan'#231'a'
      'C'#243'digo Marca')
    ParentFont = False
    TabOrder = 2
    OnExit = ListaIndicesExit
    OnKeyDown = ListaIndicesKeyDown
  end
  object DBGridLista: TDBGrid
    Left = 8
    Top = 69
    Width = 779
    Height = 268
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
        Width = 358
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
        Width = 99
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
        Width = 84
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
        Title.Caption = 'Vlr. Venda'
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
        FieldName = 'PRODN3VLRVENDAPROM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Vlr.Promo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end>
  end
  object ComboTemSubst: TRxDBComboBox
    Left = 644
    Top = 414
    Width = 145
    Height = 27
    Style = csDropDownList
    Ctl3D = False
    DataField = 'PRODCSUBSTRIB'
    DataSource = DSTemplate
    EnableValues = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 19
    Items.Strings = (
      'Sim'
      'N'#227'o')
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    TabStop = False
    Values.Strings = (
      'S'
      'N')
  end
  object DSTemplate: TDataSource
    AutoEdit = False
    DataSet = SQLProduto
    Left = 123
    Top = 166
  end
  object SQLProduto: TRxQuery
    OnCalcFields = SQLProdutoCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PRODUTO'
      'order by PRODA60DESCR')
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
  end
  object FormStorage: TFormStorage
    Active = False
    Options = [fpState]
    OnRestorePlacement = FormStorageRestorePlacement
    StoredProps.Strings = (
      'IndiceSelec.Text')
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
end
