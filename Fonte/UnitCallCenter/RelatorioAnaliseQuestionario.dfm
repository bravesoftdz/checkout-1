inherited FormRelatorioAnaliseQuestionario: TFormRelatorioAnaliseQuestionario
  Left = 100
  Top = 75
  Caption = 'An'#225'lise de Question'#225'rio'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox: TScrollBox
    inherited PanelCentro: TPanel
      Height = 271
      inherited BtnVisualizar: TSpeedButton
        Top = 237
      end
      inherited GroupBox1: TGroupBox
        Top = 194
        object CheckAnalitico: TCheckBox
          Left = 258
          Top = 16
          Width = 131
          Height = 17
          Caption = 'Anal'#237'tico (Clientes)'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
      end
      object GroupBox2: TGroupBox
        Left = 11
        Top = 152
        Width = 407
        Height = 41
        Caption = ' Question'#225'rio '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object ComboQuestionario: TRxDBLookupCombo
          Left = 8
          Top = 14
          Width = 390
          Height = 21
          DropDownCount = 8
          LookupField = 'QUESICOD'
          LookupDisplay = 'QUESA60DESCR'
          LookupSource = DSSQLQuestionario
          TabOrder = 0
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'AnaliseQuestionario.DB'
    object TblTemporariaQUESA60DESCR: TStringField
      FieldName = 'QUESA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCLIEA15FONE1: TStringField
      FieldName = 'CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object TblTemporariaQUEQICOD: TIntegerField
      FieldName = 'QUEQICOD'
    end
    object TblTemporariaQUQOICOD: TIntegerField
      FieldName = 'QUQOICOD'
    end
    object TblTemporariaQUEQA60DESCR: TStringField
      FieldName = 'QUEQA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaQUQOA30DESCR: TStringField
      FieldName = 'QUQOA30DESCR'
      FixedChar = True
      Size = 30
    end
    object TblTemporariaNRO: TIntegerField
      FieldName = 'NRO'
    end
  end
  object DSSQLQuestionario: TDataSource
    DataSet = SQLQuestionario
    Left = 391
    Top = 37
  end
  object SQLQuestionario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From QUESTIONARIO order by QUESA60DESCR')
    Macros = <>
    Left = 361
    Top = 37
    object SQLQuestionarioQUESICOD: TIntegerField
      FieldName = 'QUESICOD'
      Origin = 'DB.QUESTIONARIO.QUESICOD'
    end
    object SQLQuestionarioQUESA60DESCR: TStringField
      FieldName = 'QUESA60DESCR'
      Origin = 'DB.QUESTIONARIO.QUESA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLAnaliseQuestionario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      '    QUESTIONARIO.QUESA60DESCR,'
      '    CLIENTE.CLIEA60RAZAOSOC,'
      '    CLIENTE.CLIEA15FONE1,'
      '    QUESTIONARIORESPOSTAS.QUEQICOD,'
      '    QUESTIONARIORESPOSTAS.QUQOICOD,'
      '    QUESTIONARIOQUESTAO.QUEQA60DESCR,'
      '    QUESTIONARIOOPCOES.QUQOA30DESCR,'
      '    Count(QUESTIONARIORESPOSTAS.QUQOICOD) as NRO'
      'From'
      '    QUESTIONARIORESPONDIDO'
      
        '    left outer join CLIENTE on QUESTIONARIORESPONDIDO.CLIEA13ID=' +
        'CLIENTE.CLIEA13ID'
      
        '    inner join QUESTIONARIORESPOSTAS ON QUESTIONARIORESPONDIDO.Q' +
        'UERA13ID=QUESTIONARIORESPOSTAS.QUERA13ID AND QUESTIONARIORESPOST' +
        'AS.QUESICOD=:QUESICOD'
      
        '    inner join QUESTIONARIO ON QUESTIONARIORESPOSTAS.QUESICOD=QU' +
        'ESTIONARIO.QUESICOD'
      
        '    inner join QUESTIONARIOQUESTAO ON QUESTIONARIORESPOSTAS.QUES' +
        'ICOD=QUESTIONARIOQUESTAO.QUESICOD AND QUESTIONARIORESPOSTAS.QUEQ' +
        'ICOD=QUESTIONARIOQUESTAO.QUEQICOD'
      
        '    inner join QUESTIONARIOOPCOES ON QUESTIONARIORESPOSTAS.QUESI' +
        'COD=QUESTIONARIOOPCOES.QUESICOD AND QUESTIONARIORESPOSTAS.QUEQIC' +
        'OD=QUESTIONARIOOPCOES.QUEQICOD and QUESTIONARIORESPOSTAS.QUQOICO' +
        'D=QUESTIONARIOOPCOES.QUQOICOD'
      'Where'
      '    QUESTIONARIORESPONDIDO.QUERDEMISSAO>=:DataInicial and'
      '    QUESTIONARIORESPONDIDO.QUERDEMISSAO<=:DataFinal'
      'group by'
      '    QUESTIONARIO.QUESA60DESCR,'
      '    CLIENTE.CLIEA60RAZAOSOC,'
      '    CLIENTE.CLIEA15FONE1,'
      '    QUESTIONARIORESPOSTAS.QUEQICOD,'
      '    QUESTIONARIORESPOSTAS.QUQOICOD,'
      '    QUESTIONARIOQUESTAO.QUEQA60DESCR,'
      '    QUESTIONARIOOPCOES.QUQOA30DESCR'
      'order by'
      '    QUESTIONARIO.QUESA60DESCR,'
      '    QUESTIONARIORESPOSTAS.QUEQICOD,'
      '    QUESTIONARIORESPOSTAS.QUQOICOD,'
      '    QUESTIONARIOOPCOES.QUQOA30DESCR,'
      '    CLIENTE.CLIEA60RAZAOSOC')
    Macros = <>
    Left = 361
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'QUESICOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'DataInicial'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'DataFinal'
        ParamType = ptUnknown
      end>
    object SQLAnaliseQuestionarioQUESA60DESCR: TStringField
      FieldName = 'QUESA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLAnaliseQuestionarioCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLAnaliseQuestionarioCLIEA15FONE1: TStringField
      FieldName = 'CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLAnaliseQuestionarioQUEQICOD: TIntegerField
      FieldName = 'QUEQICOD'
    end
    object SQLAnaliseQuestionarioQUQOICOD: TIntegerField
      FieldName = 'QUQOICOD'
    end
    object SQLAnaliseQuestionarioQUEQA60DESCR: TStringField
      FieldName = 'QUEQA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLAnaliseQuestionarioQUQOA30DESCR: TStringField
      FieldName = 'QUQOA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLAnaliseQuestionarioNRO: TIntegerField
      FieldName = 'NRO'
    end
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.DLL = '8.80'
    Version.Engine = '8.80'
    Version.FileVersion = '8.5.0.217'
    Version.Windows = 'NT/5.1'
    Version.Major = 8
    Version.Minor = 217
    ReportName = 'C:\Unit\Gestao\Relatorios\Analise de Questionario.rpt'
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
    SectionFormat.Section = 'RH'
    SectionFormat.Suppress = cTrue
    SectionFormat.NewPageBefore = cFalse
    SectionFormat.NewPageAfter = cFalse
    SectionFormat.KeepTogether = cTrue
    SectionFormat.SuppressBlankSection = cFalse
    SectionFormat.ResetPageNAfter = cFalse
    SectionFormat.PrintAtBottomOfPage = cFalse
    SectionFormat.BackgroundColor = clNone
    SectionFormat.UnderlaySection = cFalse
    SectionFormat.FreeFormPlacement = cTrue
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
    Left = 243
    Top = 4
  end
end
