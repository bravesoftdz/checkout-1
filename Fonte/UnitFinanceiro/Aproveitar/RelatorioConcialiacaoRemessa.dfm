inherited FormRelatorioConcialiacaoRemessa: TFormRelatorioConcialiacaoRemessa
  Caption = 'Relat'#243'rio de Concilia'#231#227'o com Bancos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited TblTemporaria: TTable
    TableName = 'ConciliacaoBanco.DB'
    object TblTemporariaRMBCICOD: TIntegerField
      FieldName = 'RMBCICOD'
      Origin = 'DB.REMESSABANCOCONTASRECEBER.RMBCICOD'
    end
    object TblTemporariaCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.REMESSABANCOCONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaRBCRA60STATUS: TStringField
      FieldName = 'RBCRA60STATUS'
      Origin = 'DB.REMESSABANCOCONTASRECEBER.RBCRA60STATUS'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaRBCRDSTATUS: TDateTimeField
      FieldName = 'RBCRDSTATUS'
      Origin = 'DB.REMESSABANCOCONTASRECEBER.RBCRDSTATUS'
    end
    object TblTemporariaCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
    end
    object TblTemporariaCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
    end
    object TblTemporariaCTRCN2VLR: TBCDField
      FieldName = 'CTRCN2VLR'
      Precision = 15
      Size = 3
    end
  end
  object SQLConciliacaoBanco: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select '
      '    REMESSABANCOCONTASRECEBER.RMBCICOD,'
      '    REMESSABANCOCONTASRECEBER.CTRCA13ID,'
      '    REMESSABANCOCONTASRECEBER.RBCRA60STATUS,'
      '    REMESSABANCOCONTASRECEBER.RBCRDSTATUS,'
      '    CLIENTE.CLIEA60RAZAOSOC, '
      '    CONTASRECEBER.CTRCDVENC,'
      '    CONTASRECEBER.CTRCDEMIS,'
      '    CONTASRECEBER.CTRCN2VLR'
      'From '
      
        '    REMESSABANCOCONTASRECEBER inner join CONTASRECEBER on REMESS' +
        'ABANCOCONTASRECEBER.CTRCA13ID=CONTASRECEBER.CTRCA13ID and (%MDat' +
        'a) and (%MEmpresa)'
      
        '                                                                ' +
        '  inner join CLIENTE on CONTASRECEBER.CLIEA13ID=CLIENTE.CLIEA13I' +
        'D'
      'order by'
      '  RBCRDSTATUS')
    Macros = <
      item
        DataType = ftString
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 278
    Top = 34
    object SQLConciliacaoBancoRMBCICOD: TIntegerField
      FieldName = 'RMBCICOD'
      Origin = 'DB.REMESSABANCOCONTASRECEBER.RMBCICOD'
    end
    object SQLConciliacaoBancoCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.REMESSABANCOCONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLConciliacaoBancoRBCRA60STATUS: TStringField
      FieldName = 'RBCRA60STATUS'
      Origin = 'DB.REMESSABANCOCONTASRECEBER.RBCRA60STATUS'
      FixedChar = True
      Size = 60
    end
    object SQLConciliacaoBancoRBCRDSTATUS: TDateTimeField
      FieldName = 'RBCRDSTATUS'
      Origin = 'DB.REMESSABANCOCONTASRECEBER.RBCRDSTATUS'
    end
    object SQLConciliacaoBancoCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLConciliacaoBancoCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
    end
    object SQLConciliacaoBancoCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
    end
    object SQLConciliacaoBancoCTRCN2VLR: TBCDField
      FieldName = 'CTRCN2VLR'
      Precision = 15
      Size = 3
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
    Left = 170
    Top = 4
  end
end
