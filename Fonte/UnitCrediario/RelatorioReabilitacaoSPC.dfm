inherited FormRelatorioReabilitacaoSPC: TFormRelatorioReabilitacaoSPC
  Left = 274
  Top = 156
  Caption = 'Relat'#243'rio de Reabilita'#231#227'o SPC'
  PixelsPerInch = 96
  TextHeight = 13
  inherited TblTemporaria: TTable
    TableName = 'RelReabilitacaoSPC.db'
    object TblTemporariaCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASRECEBER.EMPRICOD'
    end
    object TblTemporariaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.CONTASRECEBER.TERMICOD'
    end
    object TblTemporariaCTRCICOD: TIntegerField
      FieldName = 'CTRCICOD'
      Origin = 'DB.CONTASRECEBER.CTRCICOD'
    end
    object TblTemporariaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTASRECEBER.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      Origin = 'DB.CONTASRECEBER.CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object TblTemporariaCTRCDREABILSPC: TDateTimeField
      FieldName = 'CTRCDREABILSPC'
      Origin = 'DB.CONTASRECEBER.CTRCDREABILSPC'
    end
    object TblTemporariaCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCLIEA60NOMEMAE: TStringField
      FieldName = 'CLIEA60NOMEMAE'
      Origin = 'DB.CLIENTE.CLIEA60NOMEMAE'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCLIEA60NOMEPAI: TStringField
      FieldName = 'CLIEA60NOMEPAI'
      Origin = 'DB.CLIENTE.CLIEA60NOMEPAI'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCLIEA11CPF: TStringField
      FieldName = 'CLIEA11CPF'
      Origin = 'DB.CLIENTE.CLIEA11CPF'
      FixedChar = True
      Size = 11
    end
    object TblTemporariaCLIEA10RG: TStringField
      FieldName = 'CLIEA10RG'
      Origin = 'DB.CLIENTE.CLIEA10RG'
      FixedChar = True
      Size = 10
    end
    object TblTemporariaCLIEDNASC: TDateTimeField
      FieldName = 'CLIEDNASC'
      Origin = 'DB.CLIENTE.CLIEDNASC'
    end
    object TblTemporariaReabilitar: TStringField
      FieldName = 'Reabilitar'
      Size = 3
    end
  end
  object SQLContasReceber: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  CONTASRECEBER.CTRCA13ID,'
      '  CONTASRECEBER.EMPRICOD,'
      '  CONTASRECEBER.TERMICOD,'
      '  CONTASRECEBER.CTRCICOD,'
      '  CONTASRECEBER.CLIEA13ID,'
      '  CONTASRECEBER.CTRCCSTATUS,'
      '  CONTASRECEBER.CTRCDREABILSPC,'
      '  CLIENTE.CLIEA60RAZAOSOC,'
      '  CLIENTE.CLIEA60NOMEMAE,'
      '  CLIENTE.CLIEA60NOMEPAI,'
      '  CLIENTE.CLIEA11CPF,'
      '  CLIENTE.CLIEA10RG,'
      '  CLIENTE.CLIEDNASC'
      'from'
      
        '  CONTASRECEBER CONTASRECEBER inner join CLIENTE CLIENTE on CONT' +
        'ASRECEBER.CLIEA13ID = CLIENTE.CLIEA13ID'
      'where'
      '  (%MEmpresa) and'
      '  (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 423
    Top = 5
    object SQLContasReceberCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASRECEBER.EMPRICOD'
    end
    object SQLContasReceberTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.CONTASRECEBER.TERMICOD'
    end
    object SQLContasReceberCTRCICOD: TIntegerField
      FieldName = 'CTRCICOD'
      Origin = 'DB.CONTASRECEBER.CTRCICOD'
    end
    object SQLContasReceberCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTASRECEBER.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      Origin = 'DB.CONTASRECEBER.CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberCTRCDREABILSPC: TDateTimeField
      FieldName = 'CTRCDREABILSPC'
      Origin = 'DB.CONTASRECEBER.CTRCDREABILSPC'
    end
    object SQLContasReceberCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCLIEA60NOMEMAE: TStringField
      FieldName = 'CLIEA60NOMEMAE'
      Origin = 'DB.CLIENTE.CLIEA60NOMEMAE'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCLIEA60NOMEPAI: TStringField
      FieldName = 'CLIEA60NOMEPAI'
      Origin = 'DB.CLIENTE.CLIEA60NOMEPAI'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCLIEA11CPF: TStringField
      FieldName = 'CLIEA11CPF'
      Origin = 'DB.CLIENTE.CLIEA11CPF'
      FixedChar = True
      Size = 11
    end
    object SQLContasReceberCLIEA10RG: TStringField
      FieldName = 'CLIEA10RG'
      Origin = 'DB.CLIENTE.CLIEA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLContasReceberCLIEDNASC: TDateTimeField
      FieldName = 'CLIEDNASC'
      Origin = 'DB.CLIENTE.CLIEDNASC'
    end
  end
  object SQLLimparListaSPC: TRxQuery
    DatabaseName = 'Easy_Temp'
    Macros = <>
    Left = 456
    Top = 5
  end
  object DatabaseTemp: TDatabase
    AliasName = 'Easy_Temp'
    DatabaseName = 'DBTemp'
    SessionName = 'Default'
    Left = 489
    Top = 5
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
    Left = 242
    Top = 4
  end
end
