inherited FormRelatorioHistoricoProduto: TFormRelatorioHistoricoProduto
  Left = 150
  Top = 113
  Caption = 'Relat'#243'rio de Hist'#243'rico por Produto'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox: TScrollBox
    object LabelInfo: TLabel [2]
      Left = 0
      Top = 421
      Width = 786
      Height = 16
      Align = alBottom
      Alignment = taCenter
      Caption = 'LabelInfo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    inherited PanelCentro: TPanel
      Left = 222
      Height = 300
      inherited BtnVisualizar: TSpeedButton
        Top = 252
      end
      object GroupBox2: TGroupBox
        Left = 12
        Top = 202
        Width = 407
        Height = 42
        Caption = 'Produto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object ComboProduto: TRxDBLookupCombo
          Left = 5
          Top = 15
          Width = 397
          Height = 21
          DropDownCount = 8
          LookupField = 'PRODIAGRUPGRADE'
          LookupDisplay = 'PRODA60DESCR'
          LookupSource = DSSQLProduto
          TabOrder = 0
          OnKeyDown = ComboProdutoKeyDown
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'HistoricoProduto.db'
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object TblTemporariaDataMov: TDateField
      FieldName = 'DataMov'
    end
    object TblTemporariaPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object TblTemporariaQtde: TFloatField
      FieldName = 'Qtde'
    end
    object TblTemporariaPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaPRODA60REFER: TStringField
      FieldName = 'PRODA60REFER'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCORA30DESCR: TStringField
      FieldName = 'CORA30DESCR'
      FixedChar = True
      Size = 30
    end
    object TblTemporariaGRTMA5DESCR: TStringField
      FieldName = 'GRTMA5DESCR'
      FixedChar = True
      Size = 5
    end
    object TblTemporariaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 30
    end
    object TblTemporariaOPESA60DESCR: TStringField
      FieldName = 'OPESA60DESCR'
      Size = 60
    end
    object TblTemporariaEntradaSaida: TStringField
      FieldName = 'EntradaSaida'
      Size = 1
    end
    object TblTemporariaLOTEA30NRO: TStringField
      FieldName = 'LOTEA30NRO'
      Size = 30
    end
    object TblTemporariaSALDOINICIAL: TFloatField
      FieldName = 'SALDOINICIAL'
    end
  end
  object SQLCupom: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'CUPOMITEM.CUPOA13ID,'
      'CUPOMITEM.PRODICOD,'
      'CUPOMITEM.CPITN3QTD,'
      'CUPOM.CUPODEMIS,'
      'CUPOM.EMPRICOD,'
      'CUPOM.CUPOINRO,'
      'OPERACAOESTOQUE.OPESA60DESCR,'
      'OPERACAOESTOQUE.OPESCENTRADASAIDA,'
      'PRODUTO.PRODA60DESCR,'
      'PRODUTO.PRODIAGRUPGRADE,'
      'PRODUTO.PRODA60REFER,'
      'COR.CORA30DESCR,'
      'GRADETAMANHO.GRTMA5DESCR'
      'FROM'
      'CUPOMITEM'
      
        'inner      join CUPOM           on CUPOMITEM.CUPOA13ID = CUPOM.C' +
        'UPOA13ID'
      
        'left outer join OPERACAOESTOQUE on CUPOM.OPESICOD = OPERACAOESTO' +
        'QUE.OPESICOD'
      
        'left outer join PRODUTO         on CUPOMITEM.PRODICOD = PRODUTO.' +
        'PRODICOD'
      
        'left outer join COR             on PRODUTO.CORICOD  = COR.CORICO' +
        'D'
      
        'left outer join GRADETAMANHO    on PRODUTO.GRADICOD = GRADETAMAN' +
        'HO.GRADICOD AND PRODUTO.GRTMICOD = GRADETAMANHO.GRTMICOD'
      'WHERE'
      '(%Produto)'
      'and'
      'CUPOM.EMPRICOD = :EMPRESA'
      'and'
      '(%Data)'
      'and'
      'CUPOM.CUPOCSTATUS = "A"'
      ''
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'Produto'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Data'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 418
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMPRESA'
        ParamType = ptUnknown
      end>
    object SQLCupomCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCupomPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object SQLCupomCPITN3QTD: TBCDField
      FieldName = 'CPITN3QTD'
      Precision = 15
      Size = 3
    end
    object SQLCupomCUPODEMIS: TDateTimeField
      FieldName = 'CUPODEMIS'
    end
    object SQLCupomOPESA60DESCR: TStringField
      FieldName = 'OPESA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLCupomOPESCENTRADASAIDA: TStringField
      FieldName = 'OPESCENTRADASAIDA'
      FixedChar = True
      Size = 1
    end
    object SQLCupomPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLCupomPRODIAGRUPGRADE: TIntegerField
      FieldName = 'PRODIAGRUPGRADE'
    end
    object SQLCupomPRODA60REFER: TStringField
      FieldName = 'PRODA60REFER'
      FixedChar = True
      Size = 60
    end
    object SQLCupomCORA30DESCR: TStringField
      FieldName = 'CORA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLCupomGRTMA5DESCR: TStringField
      FieldName = 'GRTMA5DESCR'
      FixedChar = True
      Size = 5
    end
    object SQLCupomEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLCupomCUPOINRO: TIntegerField
      FieldName = 'CUPOINRO'
    end
  end
  object SQLNotaFiscal: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'NOTAFISCALITEM.NOFIA13ID,'
      'NOTAFISCALITEM.PRODICOD,'
      'NOTAFISCALITEM.NFITN3QUANT,'
      'NOTAFISCALITEM.LOTEA30NRO,'
      'NOTAFISCAL.NOFIDEMIS,'
      'NOTAFISCAL.EMPRICOD,'
      'NOTAFISCAL.NOFIINUMERO,'
      'OPERACAOESTOQUE.OPESA60DESCR,'
      'OPERACAOESTOQUE.OPESCENTRADASAIDA,'
      'PRODUTO.PRODA60DESCR,'
      'PRODUTO.PRODIAGRUPGRADE,'
      'PRODUTO.PRODA60REFER,'
      'COR.CORA30DESCR,'
      'GRADETAMANHO.GRTMA5DESCR'
      'FROM'
      'NOTAFISCALITEM'
      
        'inner      join NOTAFISCAL      on NOTAFISCALITEM.NOFIA13ID = NO' +
        'TAFISCAL.NOFIA13ID'
      
        'left outer join OPERACAOESTOQUE on NOTAFISCAL.OPESICOD = OPERACA' +
        'OESTOQUE.OPESICOD'
      
        'left outer join PRODUTO         on NOTAFISCALITEM.PRODICOD = PRO' +
        'DUTO.PRODICOD'
      
        'left outer join COR             on PRODUTO.CORICOD  = COR.CORICO' +
        'D'
      
        'left outer join GRADETAMANHO    on PRODUTO.GRADICOD = GRADETAMAN' +
        'HO.GRADICOD AND PRODUTO.GRTMICOD = GRADETAMANHO.GRTMICOD'
      'WHERE'
      '(%Produto)'
      'and'
      'NOTAFISCAL.EMPRICOD = :Empresa'
      'and'
      '(%Data)'
      'and'
      'NOTAFISCAL.NOFICSTATUS = "E"')
    Macros = <
      item
        DataType = ftString
        Name = 'Produto'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Data'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 446
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Empresa'
        ParamType = ptUnknown
      end>
    object SQLNotaFiscalNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object SQLNotaFiscalNFITN3QUANT: TBCDField
      FieldName = 'NFITN3QUANT'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalNOFIDEMIS: TDateTimeField
      FieldName = 'NOFIDEMIS'
    end
    object SQLNotaFiscalOPESA60DESCR: TStringField
      FieldName = 'OPESA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLNotaFiscalOPESCENTRADASAIDA: TStringField
      FieldName = 'OPESCENTRADASAIDA'
      FixedChar = True
      Size = 1
    end
    object SQLNotaFiscalPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLNotaFiscalPRODIAGRUPGRADE: TIntegerField
      FieldName = 'PRODIAGRUPGRADE'
    end
    object SQLNotaFiscalPRODA60REFER: TStringField
      FieldName = 'PRODA60REFER'
      FixedChar = True
      Size = 60
    end
    object SQLNotaFiscalCORA30DESCR: TStringField
      FieldName = 'CORA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLNotaFiscalGRTMA5DESCR: TStringField
      FieldName = 'GRTMA5DESCR'
      FixedChar = True
      Size = 5
    end
    object SQLNotaFiscalEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLNotaFiscalNOFIINUMERO: TIntegerField
      FieldName = 'NOFIINUMERO'
    end
    object SQLNotaFiscalLOTEA30NRO: TStringField
      FieldName = 'LOTEA30NRO'
      FixedChar = True
      Size = 30
    end
  end
  object SQLNotaCompra: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'NOTACOMPRAITEM.NOCPA13ID,'
      'NOTACOMPRAITEM.PRODICOD,'
      'NOTACOMPRAITEM.NOCIN3QTDEMBAL,'
      'NOTACOMPRAITEM.LOTEA30NRO,'
      'NOTACOMPRA.NOCPDRECEBIMENTO,'
      'NOTACOMPRA.EMPRICOD,'
      'NOTACOMPRA.NOCPA30NRO,'
      'OPERACAOESTOQUE.OPESA60DESCR,'
      'OPERACAOESTOQUE.OPESCENTRADASAIDA,'
      'PRODUTO.PRODA60DESCR,'
      'PRODUTO.PRODIAGRUPGRADE,'
      'PRODUTO.PRODA60REFER,'
      'COR.CORA30DESCR,'
      'GRADETAMANHO.GRTMA5DESCR'
      'FROM'
      'NOTACOMPRAITEM'
      
        'inner      join NOTACOMPRA      on NOTACOMPRAITEM.NOCPA13ID = NO' +
        'TACOMPRA.NOCPA13ID'
      
        'left outer join OPERACAOESTOQUE on NOTACOMPRA.OPESICOD = OPERACA' +
        'OESTOQUE.OPESICOD'
      
        'left outer join PRODUTO         on NOTACOMPRAITEM.PRODICOD = PRO' +
        'DUTO.PRODICOD'
      
        'left outer join COR             on PRODUTO.CORICOD  = COR.CORICO' +
        'D'
      
        'left outer join GRADETAMANHO    on PRODUTO.GRADICOD = GRADETAMAN' +
        'HO.GRADICOD AND PRODUTO.GRTMICOD = GRADETAMANHO.GRTMICOD'
      'WHERE'
      '(%Produto)'
      'and'
      'NOTACOMPRA.EMPRICOD = :EMPRESA'
      'and'
      '(%Data)'
      'and'
      'NOTACOMPRA.NOCPCSTATUS = "E"'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'Produto'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Data'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 474
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMPRESA'
        ParamType = ptUnknown
      end>
    object SQLNotaCompraNOCPA13ID: TStringField
      FieldName = 'NOCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaCompraPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object SQLNotaCompraNOCIN3QTDEMBAL: TBCDField
      FieldName = 'NOCIN3QTDEMBAL'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraNOCPDRECEBIMENTO: TDateTimeField
      FieldName = 'NOCPDRECEBIMENTO'
    end
    object SQLNotaCompraOPESA60DESCR: TStringField
      FieldName = 'OPESA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLNotaCompraOPESCENTRADASAIDA: TStringField
      FieldName = 'OPESCENTRADASAIDA'
      FixedChar = True
      Size = 1
    end
    object SQLNotaCompraPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLNotaCompraPRODIAGRUPGRADE: TIntegerField
      FieldName = 'PRODIAGRUPGRADE'
    end
    object SQLNotaCompraPRODA60REFER: TStringField
      FieldName = 'PRODA60REFER'
      FixedChar = True
      Size = 60
    end
    object SQLNotaCompraCORA30DESCR: TStringField
      FieldName = 'CORA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLNotaCompraGRTMA5DESCR: TStringField
      FieldName = 'GRTMA5DESCR'
      FixedChar = True
      Size = 5
    end
    object SQLNotaCompraEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLNotaCompraNOCPA30NRO: TStringField
      FieldName = 'NOCPA30NRO'
      FixedChar = True
      Size = 30
    end
    object SQLNotaCompraLOTEA30NRO: TStringField
      FieldName = 'LOTEA30NRO'
      FixedChar = True
      Size = 30
    end
  end
  object SQLMovimentoDiverso: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'MOVIMENTODIVERSOITEM.MOVDA13ID,'
      'MOVIMENTODIVERSOITEM.PRODICOD,'
      'MOVIMENTODIVERSOITEM.MVDIN3QTD,'
      'MOVIMENTODIVERSOITEM.LOTEA30NRO,'
      'MOVIMENTODIVERSO.MOVDDMOVIMENTO,'
      'MOVIMENTODIVERSO.EMPRICOD,'
      'OPERACAOESTOQUE.OPESA60DESCR,'
      'OPERACAOESTOQUE.OPESCENTRADASAIDA,'
      'PRODUTO.PRODA60DESCR,'
      'PRODUTO.PRODIAGRUPGRADE,'
      'PRODUTO.PRODA60REFER,'
      'COR.CORA30DESCR,'
      'GRADETAMANHO.GRTMA5DESCR'
      'FROM'
      'MOVIMENTODIVERSOITEM'
      
        'inner      join MOVIMENTODIVERSO on MOVIMENTODIVERSOITEM.MOVDA13' +
        'ID = MOVIMENTODIVERSO.MOVDA13ID'
      
        'left outer join OPERACAOESTOQUE  on MOVIMENTODIVERSO.OPESICOD = ' +
        'OPERACAOESTOQUE.OPESICOD'
      
        'left outer join PRODUTO          on MOVIMENTODIVERSOITEM.PRODICO' +
        'D = PRODUTO.PRODICOD'
      
        'left outer join COR              on PRODUTO.CORICOD  = COR.CORIC' +
        'OD'
      
        'left outer join GRADETAMANHO     on PRODUTO.GRADICOD = GRADETAMA' +
        'NHO.GRADICOD AND PRODUTO.GRTMICOD = GRADETAMANHO.GRTMICOD'
      'WHERE'
      '(%Produto)'
      'and'
      'MOVIMENTODIVERSO.EMPRICOD = :EMPRESA'
      'and'
      '(%Data)'
      'and'
      'MOVIMENTODIVERSO.MOVDCCONLUIDO = "S"')
    Macros = <
      item
        DataType = ftString
        Name = 'Produto'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Data'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 502
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMPRESA'
        ParamType = ptUnknown
      end>
    object SQLMovimentoDiversoMOVDA13ID: TStringField
      FieldName = 'MOVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLMovimentoDiversoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object SQLMovimentoDiversoMVDIN3QTD: TBCDField
      FieldName = 'MVDIN3QTD'
      Precision = 15
      Size = 3
    end
    object SQLMovimentoDiversoMOVDDMOVIMENTO: TDateTimeField
      FieldName = 'MOVDDMOVIMENTO'
    end
    object SQLMovimentoDiversoOPESA60DESCR: TStringField
      FieldName = 'OPESA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLMovimentoDiversoOPESCENTRADASAIDA: TStringField
      FieldName = 'OPESCENTRADASAIDA'
      FixedChar = True
      Size = 1
    end
    object SQLMovimentoDiversoPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLMovimentoDiversoPRODIAGRUPGRADE: TIntegerField
      FieldName = 'PRODIAGRUPGRADE'
    end
    object SQLMovimentoDiversoPRODA60REFER: TStringField
      FieldName = 'PRODA60REFER'
      FixedChar = True
      Size = 60
    end
    object SQLMovimentoDiversoCORA30DESCR: TStringField
      FieldName = 'CORA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLMovimentoDiversoGRTMA5DESCR: TStringField
      FieldName = 'GRTMA5DESCR'
      FixedChar = True
      Size = 5
    end
    object SQLMovimentoDiversoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLMovimentoDiversoLOTEA30NRO: TStringField
      FieldName = 'LOTEA30NRO'
      FixedChar = True
      Size = 30
    end
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select '
      '  PRODICOD, '
      '  PRODA60DESCR, '
      '  PRODIAGRUPGRADE,'
      '  PRODA60REFER '
      'from '
      '  PRODUTO '
      'where '
      '  PRODICOD = PRODIAGRUPGRADE'
      'order by '
      '  PRODA60DESCR')
    Macros = <>
    Left = 530
    Top = 5
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
    object SQLProdutoPRODIAGRUPGRADE: TIntegerField
      FieldName = 'PRODIAGRUPGRADE'
      Origin = 'DB.PRODUTO.PRODIAGRUPGRADE'
    end
    object SQLProdutoPRODA60REFER: TStringField
      FieldName = 'PRODA60REFER'
      Origin = 'DB.PRODUTO.PRODA60REFER'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLProduto: TDataSource
    DataSet = SQLProduto
    Left = 558
    Top = 5
  end
  object SQLSaldo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      'SUM(MVESN3QTDENTRADA-MVESN3QTDSAIDA) '
      'AS SALDO'
      'FROM'
      'MOVIMENTOESTOQUE'
      'WHERE'
      'PRODICOD = :PRODUTO'
      'AND'
      'EMPRICOD = :EMPRESA'
      'AND'
      '(%DataInicial)')
    Macros = <
      item
        DataType = ftString
        Name = 'DataInicial'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 586
    Top = 5
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRODUTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMPRESA'
        ParamType = ptUnknown
      end>
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    ReportName = 'C:\Desenv\GestaoOficial\Relatorios\Historico por Produto.rpt'
    Margins.Left = -1
    Margins.Right = -1
    Margins.Top = -1
    Margins.Bottom = -1
    DiscardSavedData = True
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
    ParamFields.DefaultValues.Strings = (
      '')
    ParamFields.CurrentValues.Strings = (
      '')
    ParamFields.ValueLimit = cDefault
    ParamFields.Ranges.Number = -1
    ParamFields.Ranges.RangeBounds = IncludeStartAndEnd
    ParamFields.PickList.Strings = (
      '')
    ParamFields.PLDescriptionOnly = cDefault
    ParamFields.PLSortMethod = psmDefaultSort
    ParamFields.PLSortByDescription = cDefault
    SectionFormat.BackgroundColor = clNone
    SectionHeight.Height = 0
    SQL.Params.ParamType = spChar
    LogOnInfo.Table = -1
    SessionInfo.Table = -1
    SessionInfo.Propagate = True
    Export.Excel.Constant = 9
    Export.Excel.Area = 'D'
    Export.CharSepQuote = ' '
    WindowZoom.Magnification = -1
    WindowState = wsMaximized
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
    GraphOptions.Max = -1
    GraphOptions.Min = -1
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
    ReportOptions.SaveDataWithReport = cFalse
    ReportOptions.SaveSummariesWithReport = cFalse
    ReportOptions.UseIndexForSpeed = cTrue
    ReportOptions.TranslateDOSStrings = cTrue
    ReportOptions.TranslateDOSMemos = cTrue
    ReportOptions.ConvertNullFieldToDefault = cFalse
    ReportOptions.PrintEngineErrorMessages = cTrue
    ReportOptions.CaseInsensitiveSQLData = cTrue
    ReportOptions.VerifyOnEveryPrint = cFalse
    ReportOptions.CreateGroupTree = cTrue
    ReportOptions.NoDataForHiddenObjects = cFalse
    ReportOptions.PerformGroupingOnServer = cFalse
    ReportOptions.ConvertDateTimeType = dtKeepAsDateTime
    ReportOptions.ZoomMode = pwNormal
    ReportOptions.AsyncQuery = cFalse
    Left = 235
    Top = 5
  end
end
