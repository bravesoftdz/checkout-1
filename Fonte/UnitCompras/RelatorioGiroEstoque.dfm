inherited FormRelatorioGiroEstoque: TFormRelatorioGiroEstoque
  Left = 16
  Top = 24
  Caption = 'Relat'#243'rio de Giro de Estoque'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox: TScrollBox
    inherited PanelCentro: TPanel
      inherited GroupBox1: TGroupBox
        Width = 245
      end
      object GroupBox2: TGroupBox
        Left = 260
        Top = 161
        Width = 159
        Height = 41
        Caption = ' Nro.Meses Amostra'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Visible = False
        object NroMeses: TCurrencyEdit
          Left = 7
          Top = 14
          Width = 144
          Height = 21
          Alignment = taCenter
          AutoSize = False
          DisplayFormat = '#'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Value = 1
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'RelGiroEstoque.DB'
    object TblTemporariaGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
    end
    object TblTemporariaGrupo: TStringField
      FieldName = 'Grupo'
      Size = 60
    end
    object TblTemporariaComprasValor: TFloatField
      FieldName = 'ComprasValor'
    end
    object TblTemporariaComprasPercTot: TFloatField
      FieldName = 'ComprasPercTot'
    end
    object TblTemporariaVendaPotencial: TFloatField
      FieldName = 'VendaPotencial'
    end
    object TblTemporariaEstoqueValorVenda: TFloatField
      FieldName = 'EstoqueValorVenda'
    end
    object TblTemporariaEstoqueValorCusto: TFloatField
      FieldName = 'EstoqueValorCusto'
    end
    object TblTemporariaVendasValor: TFloatField
      FieldName = 'VendasValor'
    end
    object TblTemporariaVendasPercTot: TFloatField
      FieldName = 'VendasPercTot'
    end
  end
  object SQLCompras: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  PRODUTO.GRUPICOD,'
      '  GRUPO.GRUPA60DESCR,'
      
        '  sum((NOTACOMPRAITEM.NOCIN3CAPEMBAL*NOTACOMPRAITEM.NOCIN3QTDEMB' +
        'AL)* NOTACOMPRAITEM.NOCIN3VLRUNIT) as TOTAL,'
      
        '  sum((NOTACOMPRAITEM.NOCIN3CAPEMBAL*NOTACOMPRAITEM.NOCIN3QTDEMB' +
        'AL)* PRODUTO.PRODN3VLRVENDA) as VENDAPOT'
      'from'
      '   GRUPO'
      '   inner join PRODUTO on (GRUPO.GRUPICOD = PRODUTO.GRUPICOD)'
      
        '   inner join NOTACOMPRAITEM on (PRODUTO.PRODICOD = NOTACOMPRAIT' +
        'EM.PRODICOD)'
      
        '   inner join NOTACOMPRA on (NOTACOMPRAITEM.NOCPA13ID = NOTACOMP' +
        'RA.NOCPA13ID)'
      'where'
      '  (%MData)   '
      'group by'
      '  PRODUTO.GRUPICOD, GRUPO.GRUPA60DESCR')
    Macros = <
      item
        DataType = ftString
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 424
    Top = 5
    object SQLComprasGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
    end
    object SQLComprasGRUPA60DESCR: TStringField
      FieldName = 'GRUPA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLComprasTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object SQLComprasVENDAPOT: TFloatField
      FieldName = 'VENDAPOT'
    end
  end
  object SQLVendas: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  PRODUTO.GRUPICOD,'
      '  GRUPO.GRUPA60DESCR,'
      '  sum(CUPOMITEM.cpitn3qtd*CUPOMITEM.cpitn3vlrunit) as TOTAL'
      'from'
      '  GRUPO'
      '  inner join PRODUTO on (GRUPO.GRUPICOD = PRODUTO.GRUPICOD)'
      
        '  inner join CUPOMITEM on (PRODUTO.PRODICOD = CUPOMITEM.PRODICOD' +
        ')'
      '  inner join CUPOM on (CUPOMITEM.CUPOA13ID = CUPOM.CUPOA13ID)'
      'where'
      '  CUPOM.CUPOCSTATUS = '#39'A'#39' and'
      '  (%MDataCP)'
      'group by'
      '  PRODUTO.GRUPICOD, GRUPO.GRUPA60DESCR'
      ''
      'union all'
      ''
      'select'
      '  PRODUTO.GRUPICOD,'
      '  GRUPO.GRUPA60DESCR,'
      
        '  sum(NOTAFISCALITEM.NFITN3QUANT * NOTAFISCALITEM.NFITN2VLRUNIT)' +
        ' as TOTAL'
      'from'
      '  GRUPO'
      '  inner join PRODUTO on (GRUPO.GRUPICOD = PRODUTO.GRUPICOD)'
      
        '  inner join NOTAFISCALITEM on (PRODUTO.PRODICOD = NOTAFISCALITE' +
        'M.PRODICOD)'
      
        '  inner join NOTAFISCAL on (NOTAFISCALITEM.NOFIA13ID = NOTAFISCA' +
        'L.NOFIA13ID)'
      'where'
      '  NOTAFISCAL.NOFICSTATUS <> '#39'C'#39' and'
      '  (%MDataNF)'
      'group by'
      '  PRODUTO.GRUPICOD, GRUPO.GRUPA60DESCR')
    Macros = <
      item
        DataType = ftString
        Name = 'MDataCP'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MDataNF'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 456
    Top = 5
    object SQLVendasGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
    end
    object SQLVendasGRUPA60DESCR: TStringField
      FieldName = 'GRUPA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLVendasTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object SQLValorEstoqAtual: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      '  GRUPO.GRUPICOD,'
      '  GRUPO.GRUPA60DESCR,'
      
        '  sum(PRODUTOSALDO.PSLDN3QTDE * PRODUTO.PRODN3VLRCUSTO) VLRESTOQ' +
        'CUSTO,'
      
        '  sum(PRODUTOSALDO.PSLDN3QTDE * PRODUTO.PRODN3VLRVENDA) VLRESTOQ' +
        'VENDA'
      'FROM PRODUTO'
      
        '  INNER JOIN PRODUTOSALDO ON (PRODUTO.PRODICOD = PRODUTOSALDO.PR' +
        'ODICOD)'
      '  INNER JOIN GRUPO ON (PRODUTO.GRUPICOD = GRUPO.GRUPICOD)'
      'GROUP BY'
      '  GRUPO.GRUPICOD, GRUPO.GRUPA60DESCR')
    Macros = <>
    Left = 488
    Top = 5
    object SQLValorEstoqAtualGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
    end
    object SQLValorEstoqAtualGRUPA60DESCR: TStringField
      FieldName = 'GRUPA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLValorEstoqAtualVLRESTOQCUSTO: TFloatField
      FieldName = 'VLRESTOQCUSTO'
    end
    object SQLValorEstoqAtualVLRESTOQVENDA: TFloatField
      FieldName = 'VLRESTOQVENDA'
    end
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    ReportName = 'D:\DESENV\UnitGestao\Relatorios\Listagem de Produtos.rpt'
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
    ParamFields.ValueLimit = cDefault
    ParamFields.Ranges.Number = -1
    ParamFields.Ranges.RangeBounds = IncludeStartAndEnd
    ParamFields.PLDescriptionOnly = cDefault
    ParamFields.PLSortMethod = psmDefaultSort
    ParamFields.PLSortByDescription = cDefault
    Formulas.Formula.Strings = (
      '"Periodo Emissao"')
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
    Left = 225
    Top = 5
  end
end
