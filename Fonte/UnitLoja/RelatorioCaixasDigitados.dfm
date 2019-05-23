inherited FormRelatorioCaixasDigitados: TFormRelatorioCaixasDigitados
  Left = 198
  Top = 108
  Caption = 'Relatorio Movimentos dos Caixas Digitados'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox: TScrollBox
    inherited PanelCentro: TPanel
      Height = 294
      inherited BtnVisualizar: TSpeedButton
        Top = 258
      end
      inherited EmpresaGroup: TGroupBox
        Height = 128
        inherited IncluirEmpresa: TSpeedButton
          Top = 68
        end
        inherited ExcluirEmpresa: TSpeedButton
          Top = 94
        end
        inherited ListaEmpresas: TListBox
          Height = 54
        end
      end
      inherited GroupBox1: TGroupBox
        Top = 136
      end
      object RBCreditoDebito: TRadioGroup
        Left = 13
        Top = 181
        Width = 404
        Height = 55
        Caption = ' Tipo Relatorio '
        Columns = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Totais por Aliquota'
          'Totais por Aliquota e por Terminal'
          'Totais por Numerario'
          'Movimento por Numerario')
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  inherited TblTemporaria: TTable
    object TblTemporariaREDUA13ID: TStringField
      FieldName = 'REDUA13ID'
      Origin = 'DB.REDUCAOZDIA.REDUA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.REDUCAOZDIA.EMPRICOD'
    end
    object TblTemporariaREDUICOD: TIntegerField
      FieldName = 'REDUICOD'
      Origin = 'DB.REDUCAOZDIA.REDUICOD'
    end
    object TblTemporariaECFA13ID: TStringField
      FieldName = 'ECFA13ID'
      Origin = 'DB.REDUCAOZDIA.ECFA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaREDUDEMIS: TDateTimeField
      FieldName = 'REDUDEMIS'
      Origin = 'DB.REDUCAOZDIA.REDUDEMIS'
    end
    object TblTemporariaREDUN3VENDABRUTA: TBCDField
      FieldName = 'REDUN3VENDABRUTA'
      Origin = 'DB.REDUCAOZDIA.REDUN3VENDABRUTA'
      Precision = 15
      Size = 3
    end
    object TblTemporariaREDUN3GRANDETOTAL: TBCDField
      FieldName = 'REDUN3GRANDETOTAL'
      Origin = 'DB.REDUCAOZDIA.REDUN3GRANDETOTAL'
      Precision = 15
      Size = 3
    end
    object TblTemporariaREDUICONTINICIAL: TIntegerField
      FieldName = 'REDUICONTINICIAL'
      Origin = 'DB.REDUCAOZDIA.REDUICONTINICIAL'
    end
    object TblTemporariaREDUICONTFINAL: TIntegerField
      FieldName = 'REDUICONTFINAL'
      Origin = 'DB.REDUCAOZDIA.REDUICONTFINAL'
    end
    object TblTemporariaREDUICONTREDUZ: TIntegerField
      FieldName = 'REDUICONTREDUZ'
      Origin = 'DB.REDUCAOZDIA.REDUICONTREDUZ'
    end
    object TblTemporariaREDUICONTREINICIO: TIntegerField
      FieldName = 'REDUICONTREINICIO'
      Origin = 'DB.REDUCAOZDIA.REDUICONTREINICIO'
    end
    object TblTemporariaREDUN3ALIQ1: TBCDField
      FieldName = 'REDUN3ALIQ1'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ1'
      Precision = 15
      Size = 3
    end
    object TblTemporariaREDUN3BASE1: TBCDField
      FieldName = 'REDUN3BASE1'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE1'
      Precision = 15
      Size = 3
    end
    object TblTemporariaREDUN3IMPO1: TBCDField
      FieldName = 'REDUN3IMPO1'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO1'
      Precision = 15
      Size = 3
    end
    object TblTemporariaREDUN3ALIQ2: TBCDField
      FieldName = 'REDUN3ALIQ2'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ2'
      Precision = 15
      Size = 3
    end
    object TblTemporariaREDUN3BASE2: TBCDField
      FieldName = 'REDUN3BASE2'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE2'
      Precision = 15
      Size = 3
    end
    object TblTemporariaREDUN3IMPO2: TBCDField
      FieldName = 'REDUN3IMPO2'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO2'
      Precision = 15
      Size = 3
    end
    object TblTemporariaREDUN3ALIQ3: TBCDField
      FieldName = 'REDUN3ALIQ3'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ3'
      Precision = 15
      Size = 3
    end
    object TblTemporariaREDUN3BASE3: TBCDField
      FieldName = 'REDUN3BASE3'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE3'
      Precision = 15
      Size = 3
    end
    object TblTemporariaREDUN3IMPO3: TBCDField
      FieldName = 'REDUN3IMPO3'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO3'
      Precision = 15
      Size = 3
    end
    object TblTemporariaREDUN3ALIQ4: TBCDField
      FieldName = 'REDUN3ALIQ4'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ4'
      Precision = 15
      Size = 3
    end
    object TblTemporariaREDUN3BASE4: TBCDField
      FieldName = 'REDUN3BASE4'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE4'
      Precision = 15
      Size = 3
    end
    object TblTemporariaREDUN3IMPO4: TBCDField
      FieldName = 'REDUN3IMPO4'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO4'
      Precision = 15
      Size = 3
    end
    object TblTemporariaREDUN3ALIQ5: TBCDField
      FieldName = 'REDUN3ALIQ5'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ5'
      Precision = 15
      Size = 3
    end
    object TblTemporariaREDUN3BASE5: TBCDField
      FieldName = 'REDUN3BASE5'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE5'
      Precision = 15
      Size = 3
    end
    object TblTemporariaREDUN3IMPO5: TBCDField
      FieldName = 'REDUN3IMPO5'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO5'
      Precision = 15
      Size = 3
    end
    object TblTemporariaREDUN3ALIQ6: TBCDField
      FieldName = 'REDUN3ALIQ6'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ6'
      Precision = 15
      Size = 3
    end
    object TblTemporariaREDUN3BASE6: TBCDField
      FieldName = 'REDUN3BASE6'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE6'
      Precision = 15
      Size = 3
    end
    object TblTemporariaREDUN3IMPO6: TBCDField
      FieldName = 'REDUN3IMPO6'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO6'
      Precision = 15
      Size = 3
    end
    object TblTemporariaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.REDUCAOZDIA.TERMICOD'
    end
  end
  object SQLRedNumerario: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select'
      '*'
      'From'
      'REDUCAOZDIAFORMA'
      'Where'
      'REDUA13ID = :REDUA13ID'
      'order by'
      'NUMEICOD')
    Macros = <>
    Left = 531
    Top = 4
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'REDUA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLRedNumerarioREDUA13ID: TStringField
      FieldName = 'REDUA13ID'
      Origin = 'DB.REDUCAOZDIAFORMA.REDUA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRedNumerarioNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.REDUCAOZDIAFORMA.NUMEICOD'
    end
    object SQLRedNumerarioREFON3VLR: TBCDField
      FieldName = 'REFON3VLR'
      Origin = 'DB.REDUCAOZDIAFORMA.REFON3VLR'
      Precision = 15
      Size = 3
    end
  end
  object SQLReducao: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * From'
      '  REDUCAOZDIA'
      'Where'
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
    Left = 502
    Top = 4
    object SQLReducaoREDUA13ID: TStringField
      FieldName = 'REDUA13ID'
      Origin = 'DB.REDUCAOZDIA.REDUA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLReducaoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.REDUCAOZDIA.EMPRICOD'
    end
    object SQLReducaoREDUICOD: TIntegerField
      FieldName = 'REDUICOD'
      Origin = 'DB.REDUCAOZDIA.REDUICOD'
    end
    object SQLReducaoECFA13ID: TStringField
      FieldName = 'ECFA13ID'
      Origin = 'DB.REDUCAOZDIA.ECFA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLReducaoREDUDEMIS: TDateTimeField
      FieldName = 'REDUDEMIS'
      Origin = 'DB.REDUCAOZDIA.REDUDEMIS'
    end
    object SQLReducaoREDUN3VENDABRUTA: TBCDField
      FieldName = 'REDUN3VENDABRUTA'
      Origin = 'DB.REDUCAOZDIA.REDUN3VENDABRUTA'
      Precision = 15
      Size = 3
    end
    object SQLReducaoREDUN3GRANDETOTAL: TBCDField
      FieldName = 'REDUN3GRANDETOTAL'
      Origin = 'DB.REDUCAOZDIA.REDUN3GRANDETOTAL'
      Precision = 15
      Size = 3
    end
    object SQLReducaoREDUICONTINICIAL: TIntegerField
      FieldName = 'REDUICONTINICIAL'
      Origin = 'DB.REDUCAOZDIA.REDUICONTINICIAL'
    end
    object SQLReducaoREDUICONTFINAL: TIntegerField
      FieldName = 'REDUICONTFINAL'
      Origin = 'DB.REDUCAOZDIA.REDUICONTFINAL'
    end
    object SQLReducaoREDUICONTREDUZ: TIntegerField
      FieldName = 'REDUICONTREDUZ'
      Origin = 'DB.REDUCAOZDIA.REDUICONTREDUZ'
    end
    object SQLReducaoREDUICONTREINICIO: TIntegerField
      FieldName = 'REDUICONTREINICIO'
      Origin = 'DB.REDUCAOZDIA.REDUICONTREINICIO'
    end
    object SQLReducaoREDUN3ALIQ1: TBCDField
      FieldName = 'REDUN3ALIQ1'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ1'
      Precision = 15
      Size = 3
    end
    object SQLReducaoREDUN3BASE1: TBCDField
      FieldName = 'REDUN3BASE1'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE1'
      Precision = 15
      Size = 3
    end
    object SQLReducaoREDUN3IMPO1: TBCDField
      FieldName = 'REDUN3IMPO1'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO1'
      Precision = 15
      Size = 3
    end
    object SQLReducaoREDUN3ALIQ2: TBCDField
      FieldName = 'REDUN3ALIQ2'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ2'
      Precision = 15
      Size = 3
    end
    object SQLReducaoREDUN3BASE2: TBCDField
      FieldName = 'REDUN3BASE2'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE2'
      Precision = 15
      Size = 3
    end
    object SQLReducaoREDUN3IMPO2: TBCDField
      FieldName = 'REDUN3IMPO2'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO2'
      Precision = 15
      Size = 3
    end
    object SQLReducaoREDUN3ALIQ3: TBCDField
      FieldName = 'REDUN3ALIQ3'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ3'
      Precision = 15
      Size = 3
    end
    object SQLReducaoREDUN3BASE3: TBCDField
      FieldName = 'REDUN3BASE3'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE3'
      Precision = 15
      Size = 3
    end
    object SQLReducaoREDUN3IMPO3: TBCDField
      FieldName = 'REDUN3IMPO3'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO3'
      Precision = 15
      Size = 3
    end
    object SQLReducaoREDUN3ALIQ4: TBCDField
      FieldName = 'REDUN3ALIQ4'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ4'
      Precision = 15
      Size = 3
    end
    object SQLReducaoREDUN3BASE4: TBCDField
      FieldName = 'REDUN3BASE4'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE4'
      Precision = 15
      Size = 3
    end
    object SQLReducaoREDUN3IMPO4: TBCDField
      FieldName = 'REDUN3IMPO4'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO4'
      Precision = 15
      Size = 3
    end
    object SQLReducaoREDUN3ALIQ5: TBCDField
      FieldName = 'REDUN3ALIQ5'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ5'
      Precision = 15
      Size = 3
    end
    object SQLReducaoREDUN3BASE5: TBCDField
      FieldName = 'REDUN3BASE5'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE5'
      Precision = 15
      Size = 3
    end
    object SQLReducaoREDUN3IMPO5: TBCDField
      FieldName = 'REDUN3IMPO5'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO5'
      Precision = 15
      Size = 3
    end
    object SQLReducaoREDUN3ALIQ6: TBCDField
      FieldName = 'REDUN3ALIQ6'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ6'
      Precision = 15
      Size = 3
    end
    object SQLReducaoREDUN3BASE6: TBCDField
      FieldName = 'REDUN3BASE6'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE6'
      Precision = 15
      Size = 3
    end
    object SQLReducaoREDUN3IMPO6: TBCDField
      FieldName = 'REDUN3IMPO6'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO6'
      Precision = 15
      Size = 3
    end
    object SQLReducaoTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.REDUCAOZDIA.TERMICOD'
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
end
