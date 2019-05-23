inherited FormRelatorioVendaPorCliente: TFormRelatorioVendaPorCliente
  Left = 139
  Top = 201
  Caption = 'Relat'#243'rio de Venda Por Cliente'
  ClientWidth = 791
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Width = 791
  end
  inherited ScrollBox: TScrollBox
    Width = 791
    inherited LblTituloTela: TPanel
      Width = 787
    end
    inherited PanelCentro: TPanel
      Top = 83
      Height = 326
      inherited BtnVisualizar: TSpeedButton
        Left = 143
        Top = 294
      end
      inherited GroupBox1: TGroupBox
        Caption = 'Per'#237'o&do de Compra'
      end
      object GroupBox2: TGroupBox
        Left = 12
        Top = 202
        Width = 407
        Height = 42
        Caption = 'Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object ComboCliente: TRxDBLookupCombo
          Left = 6
          Top = 16
          Width = 395
          Height = 21
          DropDownCount = 8
          LookupField = 'CLIEA13ID'
          LookupDisplay = 'CLIEA60RAZAOSOC'
          LookupSource = DSSQLCLIENTE
          TabOrder = 0
        end
      end
      object GroupValor: TGroupBox
        Left = 12
        Top = 244
        Width = 408
        Height = 44
        Caption = 'Faixa de Valores'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object Label5: TLabel
          Left = 8
          Top = 21
          Width = 15
          Height = 13
          Caption = '&De'
          FocusControl = De
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 141
          Top = 21
          Width = 19
          Height = 13
          Caption = 'a&t'#233
          FocusControl = Ate
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ValorInicial: TCurrencyEdit
          Left = 28
          Top = 17
          Width = 109
          Height = 21
          AutoSize = False
          TabOrder = 0
        end
        object ValorFinal: TCurrencyEdit
          Left = 165
          Top = 17
          Width = 109
          Height = 21
          AutoSize = False
          TabOrder = 1
        end
        object CheckValor: TCheckBox
          Left = 276
          Top = 18
          Width = 129
          Height = 17
          Caption = 'Usar filtro por valor'
          TabOrder = 2
        end
      end
    end
    inherited PanelNavigator: TPanel
      Width = 787
      inherited AdvPanelNavigator: TAdvOfficeStatusBar
        Width = 787
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'VendaPorCliente.db'
    object TblTemporariaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCLIEA15FONE1: TStringField
      FieldName = 'CLIEA15FONE1'
      Origin = 'DB.CLIENTE.CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object TblTemporariaCLIEA15FONE2: TStringField
      FieldName = 'CLIEA15FONE2'
      Origin = 'DB.CLIENTE.CLIEA15FONE2'
      FixedChar = True
      Size = 15
    end
    object TblTemporariaCLIEA60CIDRES: TStringField
      FieldName = 'CLIEA60CIDRES'
      Origin = 'DB.CLIENTE.CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCLIEA60EMAIL: TStringField
      FieldName = 'CLIEA60EMAIL'
      Origin = 'DB.CLIENTE.CLIEA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCLIEDPRICOMPRA: TDateTimeField
      FieldName = 'CLIEDPRICOMPRA'
      Origin = 'DB.CLIENTE.CLIEDPRICOMPRA'
    end
    object TblTemporariaCLIEDULTCOMPRA: TDateTimeField
      FieldName = 'CLIEDULTCOMPRA'
      Origin = 'DB.CLIENTE.CLIEDULTCOMPRA'
    end
    object TblTemporariaTOTALCOMPRAS: TFloatField
      FieldName = 'TOTALCOMPRAS'
    end
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
  object SQLCLIENTE: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      'CLIEA13ID,'
      'CLIEA60RAZAOSOC,'
      'CLIEA15FONE1,'
      'CLIEA15FONE2,'
      'CLIEA60CIDRES,'
      'CLIEA60EMAIL,'
      'CLIEDPRICOMPRA,'
      'CLIEDULTCOMPRA'
      'from'
      'CLIENTE'
      'where'
      '(%MCliente)'
      'and'
      '(%MDataCompra)'
      'order by'
      'CLIEA60RAZAOSOC'
      ''
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'MCliente'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MDataCompra'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 418
    Top = 5
    object SQLCLIENTECLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCLIENTECLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLCLIENTECLIEA15FONE1: TStringField
      FieldName = 'CLIEA15FONE1'
      Origin = 'DB.CLIENTE.CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLCLIENTECLIEA15FONE2: TStringField
      FieldName = 'CLIEA15FONE2'
      Origin = 'DB.CLIENTE.CLIEA15FONE2'
      FixedChar = True
      Size = 15
    end
    object SQLCLIENTECLIEA60CIDRES: TStringField
      FieldName = 'CLIEA60CIDRES'
      Origin = 'DB.CLIENTE.CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object SQLCLIENTECLIEA60EMAIL: TStringField
      FieldName = 'CLIEA60EMAIL'
      Origin = 'DB.CLIENTE.CLIEA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLCLIENTECLIEDPRICOMPRA: TDateTimeField
      FieldName = 'CLIEDPRICOMPRA'
      Origin = 'DB.CLIENTE.CLIEDPRICOMPRA'
    end
    object SQLCLIENTECLIEDULTCOMPRA: TDateTimeField
      FieldName = 'CLIEDULTCOMPRA'
      Origin = 'DB.CLIENTE.CLIEDULTCOMPRA'
    end
  end
  object DSSQLCLIENTE: TDataSource
    DataSet = SQLCLIENTE
    Left = 446
    Top = 5
  end
  object SQLVendas: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'CUPOM.CLIEA13ID,'
      
        'sum(CUPOM.CUPON2TOTITENS+CUPOM.CUPON3CREDTAXA+CUPOM.CUPON2ACRESC' +
        '-CUPOM.CUPON2DESC-CUPOM.CUPON3BONUSTROCA) as TOTALCOMPRAS'
      'from'
      'cupom'
      'where'
      '(%MEmpresa)'
      'and'
      '(%MData)'
      'group by'
      'CUPOM.CLIEA13ID'
      ''
      'union all'
      ''
      'SELECT'
      'NOTAFISCAL.CLIEA13ID,'
      'sum(NOTAFISCAL.NOFIN2VLRNOTA) as TOTALCOMPRAS'
      'FROM'
      'NOTAFISCAL'
      'WHERE'
      '(%MEmpresa1)'
      'and'
      '(%MData1)'
      'group by'
      'NOTAFISCAL.CLIEA13ID'
      '')
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
        Name = 'MEmpresa1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MData1'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 474
    Top = 5
    object SQLVendasCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLVendasTOTALCOMPRAS: TFloatField
      FieldName = 'TOTALCOMPRAS'
    end
  end
  object DSSQLVendas: TDataSource
    DataSet = SQLVendas
    Left = 502
    Top = 5
  end
end
