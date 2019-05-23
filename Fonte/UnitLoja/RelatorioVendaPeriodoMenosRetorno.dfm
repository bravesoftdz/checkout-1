inherited FormRelatorioVendaPeriodoMenosRetorno: TFormRelatorioVendaPeriodoMenosRetorno
  Left = 179
  Top = 102
  Caption = 'Relatorio de Vendas por Produto Descontando o Retorno'
  ClientHeight = 459
  ClientWidth = 788
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Top = 443
    Width = 788
  end
  inherited ScrollBox: TScrollBox
    Width = 788
    Height = 443
    inherited LblTituloTela: TPanel
      Width = 784
    end
    inherited PanelCentro: TPanel
      Top = 74
      Width = 432
      Height = 359
      inherited BtnVisualizar: TSpeedButton
        Left = 154
        Top = 328
      end
      inherited EmpresaGroup: TGroupBox
        Width = 410
      end
      inherited GroupBox1: TGroupBox
        Width = 411
        object CheckPeriodo: TCheckBox
          Left = 247
          Top = 16
          Width = 149
          Height = 17
          Caption = 'Desconsiderar Per'#237'odo'
          TabOrder = 2
        end
      end
      object GroupBox4: TGroupBox
        Left = 11
        Top = 245
        Width = 413
        Height = 40
        Caption = ' Opera'#231#227'o de Estoque - Remessa '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object ComboOPEstRemessa: TRxDBLookupCombo
          Left = 6
          Top = 14
          Width = 402
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'OPESICOD'
          LookupDisplay = 'OPESA60DESCR'
          LookupSource = DSSQLOperacaoEstoqueRemessa
          ParentFont = False
          TabOrder = 0
          OnKeyDown = ComboClienteKeyDown
        end
      end
      object GroupBox2: TGroupBox
        Left = 11
        Top = 285
        Width = 413
        Height = 40
        Caption = ' Opera'#231#227'o de Estoque - Retorno '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object ComboOPEstRetorno: TRxDBLookupCombo
          Left = 6
          Top = 14
          Width = 402
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'OPESICOD'
          LookupDisplay = 'OPESA60DESCR'
          LookupSource = DSSQLOperacaoEstoqueRetorno
          ParentFont = False
          TabOrder = 0
          OnKeyDown = ComboClienteKeyDown
        end
      end
      object GroupBox3: TGroupBox
        Left = 11
        Top = 202
        Width = 413
        Height = 40
        Caption = ' Cliente '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object ComboCliente: TRxDBLookupCombo
          Left = 6
          Top = 14
          Width = 402
          Height = 21
          DropDownCount = 8
          DisplayEmpty = 'Todos...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'CLIEA13ID'
          LookupDisplay = 'CLIEA60RAZAOSOC'
          LookupSource = DSSQLCliente
          ParentFont = False
          TabOrder = 0
          OnKeyDown = ComboClienteKeyDown
        end
      end
    end
    inherited PanelNavigator: TPanel
      Width = 784
      inherited AdvPanelNavigator: TAdvOfficeStatusBar
        Width = 784
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'VendaPeriodoMenosRetorno.db'
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object TblTemporariaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Size = 13
    end
    object TblTemporariaPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object TblTemporariaProdDescricao: TStringField
      FieldName = 'ProdDescricao'
      Size = 60
    end
    object TblTemporariaVlrCompra: TFloatField
      FieldName = 'VlrCompra'
    end
    object TblTemporariaMargem: TFloatField
      FieldName = 'Margem'
    end
    object TblTemporariaVlrVenda: TFloatField
      FieldName = 'VlrVenda'
    end
    object TblTemporariaQtdeVenda: TFloatField
      FieldName = 'QtdeVenda'
    end
    object TblTemporariaVlrRetorno: TFloatField
      FieldName = 'VlrRetorno'
    end
    object TblTemporariaQtdeRetorno: TFloatField
      FieldName = 'QtdeRetorno'
    end
  end
  object SQLVendasRemessa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  NOTAFISCAL.EMPRICOD,'
      '  NOTAFISCAL.NOFIDEMIS,'
      '  NOTAFISCAL.CLIEA13ID,'
      '  NOTAFISCALITEM.PRODICOD,'
      '  PRODUTO.PRODA60DESCR,'
      '  PRODUTO.PRODN3VLRCUSTO,'
      '  NOTAFISCALITEM.NFITN3QUANT,'
      '  NOTAFISCALITEM.NFITN2VLRUNIT,'
      '  NOTAFISCAL.NOFIINUMERO'
      'from'
      
        '  ((NOTAFISCALITEM inner join NOTAFISCAL on NOTAFISCALITEM.NOFIA' +
        '13ID = NOTAFISCAL.NOFIA13ID)'
      
        ' left outer join PRODUTO on NOTAFISCALITEM.PRODICOD = PRODUTO.PR' +
        'ODICOD)'
      
        ' left outer join OPERACAOESTOQUE on NOTAFISCAL.OPESICOD = OPERAC' +
        'AOESTOQUE.OPESICOD'
      'where'
      '  NOTAFISCAL.NOFICSTATUS = "E"   and'
      '  NOTAFISCALITEM.NFITN3QUANT > 0 and'
      '  (%MEmpresa) and'
      '  (%MData)    and'
      '  (%MCliente) and'
      '  (%MOPEstoque)'
      'order by'
      '  NOTAFISCALITEM.PRODICOD')
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
        Name = 'MCliente'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MOPEstoque'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 428
    Top = 5
    object SQLVendasRemessaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLVendasRemessaNOFIDEMIS: TDateTimeField
      FieldName = 'NOFIDEMIS'
    end
    object SQLVendasRemessaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLVendasRemessaPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object SQLVendasRemessaPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLVendasRemessaPRODN3VLRCUSTO: TBCDField
      FieldName = 'PRODN3VLRCUSTO'
      Precision = 15
      Size = 3
    end
    object SQLVendasRemessaNFITN3QUANT: TBCDField
      FieldName = 'NFITN3QUANT'
      Precision = 15
      Size = 3
    end
    object SQLVendasRemessaNFITN2VLRUNIT: TBCDField
      FieldName = 'NFITN2VLRUNIT'
      Precision = 15
      Size = 3
    end
    object SQLVendasRemessaNOFIINUMERO: TIntegerField
      FieldName = 'NOFIINUMERO'
    end
  end
  object SQLVendasRetorno: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '  select'
      '  NOTAFISCAL.EMPRICOD,'
      '  NOTAFISCAL.NOFIDEMIS,'
      '  NOTAFISCAL.CLIEA13ID,'
      '  NOTAFISCALITEM.PRODICOD,'
      '  PRODUTO.PRODA60DESCR,'
      '  PRODUTO.PRODN3VLRCUSTO,'
      '  NOTAFISCALITEM.NFITN3QUANT,'
      '  NOTAFISCALITEM.NFITN2VLRUNIT,'
      '  NOTAFISCAL.NOFIINUMERO'
      'from'
      
        '  ((NOTAFISCALITEM inner join NOTAFISCAL on NOTAFISCALITEM.NOFIA' +
        '13ID = NOTAFISCAL.NOFIA13ID)'
      
        ' left outer join PRODUTO on NOTAFISCALITEM.PRODICOD = PRODUTO.PR' +
        'ODICOD)'
      
        ' left outer join OPERACAOESTOQUE on NOTAFISCAL.OPESICOD = OPERAC' +
        'AOESTOQUE.OPESICOD'
      'where'
      '  NOTAFISCAL.NOFICSTATUS = "E"   and'
      '  NOTAFISCALITEM.NFITN3QUANT > 0 and'
      '  (%MEmpresa) and'
      '  (%MData)    and'
      '  (%MCliente) and'
      '  (%MOPEstoque)'
      'order by'
      '  NOTAFISCALITEM.PRODICOD')
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
        Name = 'MCliente'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MOPEstoque'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 456
    Top = 5
    object SQLVendasRetornoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLVendasRetornoNOFIDEMIS: TDateTimeField
      FieldName = 'NOFIDEMIS'
    end
    object SQLVendasRetornoCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLVendasRetornoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object SQLVendasRetornoPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLVendasRetornoPRODN3VLRCUSTO: TBCDField
      FieldName = 'PRODN3VLRCUSTO'
      Precision = 15
      Size = 3
    end
    object SQLVendasRetornoNFITN3QUANT: TBCDField
      FieldName = 'NFITN3QUANT'
      Precision = 15
      Size = 3
    end
    object SQLVendasRetornoNFITN2VLRUNIT: TBCDField
      FieldName = 'NFITN2VLRUNIT'
      Precision = 15
      Size = 3
    end
    object SQLVendasRetornoNOFIINUMERO: TIntegerField
      FieldName = 'NOFIINUMERO'
    end
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 715
    Top = 5
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CLIENTE'
      'order by CLIEA60RAZAOSOC')
    Macros = <>
    Left = 687
    Top = 5
    object SQLClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteCLIEICOD: TIntegerField
      FieldName = 'CLIEICOD'
      Origin = 'DB.CLIENTE.CLIEICOD'
    end
    object SQLClienteCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLOperacaoEstoqueRetorno: TDataSource
    DataSet = SQLOperacaoEstoqueRetorno
    Left = 655
    Top = 5
  end
  object SQLOperacaoEstoqueRetorno: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select OPESICOD, OPESA60DESCR'
      'from OPERACAOESTOQUE'
      'order by OPESA60DESCR')
    Macros = <>
    Left = 627
    Top = 5
    object SQLOperacaoEstoqueRetornoOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Origin = 'DB.OPERACAOESTOQUE.OPESICOD'
    end
    object SQLOperacaoEstoqueRetornoOPESA60DESCR: TStringField
      FieldName = 'OPESA60DESCR'
      Origin = 'DB.OPERACAOESTOQUE.OPESA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLOperacaoEstoqueRemessa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select OPESICOD, OPESA60DESCR'
      'from OPERACAOESTOQUE'
      'order by OPESA60DESCR')
    Macros = <>
    Left = 568
    Top = 5
    object IntegerField9: TIntegerField
      FieldName = 'OPESICOD'
      Origin = 'DB.OPERACAOESTOQUE.OPESICOD'
    end
    object StringField4: TStringField
      FieldName = 'OPESA60DESCR'
      Origin = 'DB.OPERACAOESTOQUE.OPESA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLOperacaoEstoqueRemessa: TDataSource
    DataSet = SQLOperacaoEstoqueRemessa
    Left = 596
    Top = 5
  end
  object DSSQLVendasRemessa: TDataSource
    DataSet = SQLVendasRemessa
    Left = 428
    Top = 33
  end
  object DSSQLVendasRetorno: TDataSource
    DataSet = SQLVendasRetorno
    Left = 456
    Top = 33
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
    Left = 186
    Top = 4
  end
end
