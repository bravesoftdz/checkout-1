inherited FormRelatorioTeleEntrega: TFormRelatorioTeleEntrega
  Left = 227
  Top = 178
  Caption = 'Relat'#243'rio de Tele-Entrega'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox: TScrollBox
    inherited PanelCentro: TPanel
      Top = 87
      Height = 317
      inherited BtnVisualizar: TSpeedButton
        Top = 287
      end
      inherited GroupBox1: TGroupBox
        Top = 196
        Caption = 'Per'#237'o&do de Entrega'
        TabOrder = 2
        inherited Label4: TLabel
          Left = 204
        end
        inherited De: TDateEdit
          Left = 30
          CheckOnExit = True
        end
        inherited Ate: TDateEdit
          Left = 231
          CheckOnExit = True
        end
        object HoraInicial: TDateTimePicker
          Left = 118
          Top = 14
          Width = 77
          Height = 21
          Date = 38047.711156770800000000
          Time = 38047.711156770800000000
          DateMode = dmUpDown
          Kind = dtkTime
          TabOrder = 2
        end
        object HoraFinal: TDateTimePicker
          Left = 319
          Top = 14
          Width = 77
          Height = 21
          Date = 38047.711156770800000000
          Time = 38047.711156770800000000
          DateMode = dmUpDown
          Kind = dtkTime
          TabOrder = 3
        end
      end
      object GroupBox2: TGroupBox
        Left = 12
        Top = 239
        Width = 407
        Height = 42
        Caption = '&Funcion'#225'rio / Entregador'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object ComboFuncionario: TRxDBLookupCombo
          Left = 6
          Top = 15
          Width = 395
          Height = 21
          DropDownCount = 8
          LookupField = 'FUNCA13ID'
          LookupDisplay = 'FUNCA60NOME'
          LookupSource = DSSQLFuncionario
          TabOrder = 0
        end
      end
      object RadioData: TRadioGroup
        Left = 13
        Top = 159
        Width = 407
        Height = 37
        Caption = '&Data da Tele-Entrega'
        Columns = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Previs'#227'o'
          'Entrega Real')
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'TeleEntrega.db'
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object TblTemporariaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
    end
    object TblTemporariaTELEDENTRPREV: TDateTimeField
      FieldName = 'TELEDENTRPREV'
    end
    object TblTemporariaTELEDENTRPREV1: TDateTimeField
      FieldName = 'TELEDENTRPREV1'
    end
    object TblTemporariaTELEDENTRPREV2: TDateTimeField
      FieldName = 'TELEDENTRPREV2'
    end
    object TblTemporariaTELEDENTRREAL: TDateTimeField
      FieldName = 'TELEDENTRREAL'
    end
    object TblTemporariaTELEA60SOLICITANTE: TStringField
      FieldName = 'TELEA60SOLICITANTE'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaTELEA60ENTRPARANOME: TStringField
      FieldName = 'TELEA60ENTRPARANOME'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaTELEA60ENTRPARAEND: TStringField
      FieldName = 'TELEA60ENTRPARAEND'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaTELEA60ENTRPARABAI: TStringField
      FieldName = 'TELEA60ENTRPARABAI'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaTELEA60ENTRPARACID: TStringField
      FieldName = 'TELEA60ENTRPARACID'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaTELEA2ENTRPARAUF: TStringField
      FieldName = 'TELEA2ENTRPARAUF'
      FixedChar = True
      Size = 2
    end
    object TblTemporariaTELEA15ENTRPARAFONE: TStringField
      FieldName = 'TELEA15ENTRPARAFONE'
      FixedChar = True
      Size = 15
    end
    object TblTemporariaTELEA60RECPORNOME: TStringField
      FieldName = 'TELEA60RECPORNOME'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaTELEADREC: TDateTimeField
      FieldName = 'TELEADREC'
    end
    object TblTemporariaTELEA1016MENSG: TMemoField
      FieldName = 'TELEA1016MENSG'
      BlobType = ftMemo
      Size = 1016
    end
    object TblTemporariaTPVDICOD: TIntegerField
      FieldName = 'TPVDICOD'
    end
    object TblTemporariaTPVDA60DESCR: TStringField
      FieldName = 'TPVDA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaFUNCA13ID: TStringField
      FieldName = 'FUNCA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaFUNCA60NOME: TStringField
      FieldName = 'FUNCA60NOME'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaEMPRA60NOMEFANT: TStringField
      FieldName = 'EMPRA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
  end
  object SQLTeleEntrega: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'TELEENTREGA.EMPRICOD,'
      'TELEENTREGA.TERMICOD,'
      'TELEENTREGA.TELEDENTRPREV,'
      'TELEENTREGA.TELEDENTRPREV1,'
      'TELEENTREGA.TELEDENTRPREV2,'
      'TELEENTREGA.TELEDENTRREAL,'
      'TELEENTREGA.TELEA60SOLICITANTE,'
      'TELEENTREGA.TELEA60ENTRPARANOME,'
      'TELEENTREGA.TELEA60ENTRPARAEND,'
      'TELEENTREGA.TELEA60ENTRPARABAI,'
      'TELEENTREGA.TELEA60ENTRPARACID,'
      'TELEENTREGA.TELEA2ENTRPARAUF,'
      'TELEENTREGA.TELEA15ENTRPARAFONE,'
      'TELEENTREGA.TELEA60RECPORNOME,'
      'TELEENTREGA.TELEADREC,'
      'TELEENTREGA.TELEA1016MENSG,'
      'TELEENTREGA.TPVDICOD,'
      'TIPOVENDA.TPVDA60DESCR,'
      'TELEENTREGA.FUNCA13ID,'
      'FUNCIONARIO.FUNCA60NOME,'
      'EMPRESA.EMPRA60NOMEFANT'
      'FROM'
      'TELEENTREGA'
      
        'LEFT OUTER JOIN TIPOVENDA   ON TELEENTREGA.TPVDICOD  = TIPOVENDA' +
        '.TPVDICOD'
      
        'LEFT OUTER JOIN FUNCIONARIO ON TELEENTREGA.FUNCA13ID = FUNCIONAR' +
        'IO.FUNCA13ID'
      
        'LEFT OUTER JOIN EMPRESA     ON TELEENTREGA.EMPRICOD  = EMPRESA.E' +
        'MPRICOD'
      'WHERE'
      '(%MDataEntrega) and'
      '(%MFuncionario)'
      ''
      ''
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'MDataEntrega'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MFuncionario'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 418
    Top = 5
    object SQLTeleEntregaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLTeleEntregaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
    end
    object SQLTeleEntregaTELEDENTRPREV: TDateTimeField
      FieldName = 'TELEDENTRPREV'
    end
    object SQLTeleEntregaTELEDENTRPREV1: TDateTimeField
      FieldName = 'TELEDENTRPREV1'
    end
    object SQLTeleEntregaTELEDENTRPREV2: TDateTimeField
      FieldName = 'TELEDENTRPREV2'
    end
    object SQLTeleEntregaTELEDENTRREAL: TDateTimeField
      FieldName = 'TELEDENTRREAL'
    end
    object SQLTeleEntregaTELEA60SOLICITANTE: TStringField
      FieldName = 'TELEA60SOLICITANTE'
      FixedChar = True
      Size = 60
    end
    object SQLTeleEntregaTELEA60ENTRPARANOME: TStringField
      FieldName = 'TELEA60ENTRPARANOME'
      FixedChar = True
      Size = 60
    end
    object SQLTeleEntregaTELEA60ENTRPARAEND: TStringField
      FieldName = 'TELEA60ENTRPARAEND'
      FixedChar = True
      Size = 60
    end
    object SQLTeleEntregaTELEA60ENTRPARABAI: TStringField
      FieldName = 'TELEA60ENTRPARABAI'
      FixedChar = True
      Size = 60
    end
    object SQLTeleEntregaTELEA60ENTRPARACID: TStringField
      FieldName = 'TELEA60ENTRPARACID'
      FixedChar = True
      Size = 60
    end
    object SQLTeleEntregaTELEA2ENTRPARAUF: TStringField
      FieldName = 'TELEA2ENTRPARAUF'
      FixedChar = True
      Size = 2
    end
    object SQLTeleEntregaTELEA15ENTRPARAFONE: TStringField
      FieldName = 'TELEA15ENTRPARAFONE'
      FixedChar = True
      Size = 15
    end
    object SQLTeleEntregaTELEA60RECPORNOME: TStringField
      FieldName = 'TELEA60RECPORNOME'
      FixedChar = True
      Size = 60
    end
    object SQLTeleEntregaTELEADREC: TDateTimeField
      FieldName = 'TELEADREC'
    end
    object SQLTeleEntregaTELEA1016MENSG: TMemoField
      FieldName = 'TELEA1016MENSG'
      BlobType = ftMemo
      Size = 1016
    end
    object SQLTeleEntregaTPVDICOD: TIntegerField
      FieldName = 'TPVDICOD'
    end
    object SQLTeleEntregaTPVDA60DESCR: TStringField
      FieldName = 'TPVDA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTeleEntregaFUNCA13ID: TStringField
      FieldName = 'FUNCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTeleEntregaFUNCA60NOME: TStringField
      FieldName = 'FUNCA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLTeleEntregaEMPRA60NOMEFANT: TStringField
      FieldName = 'EMPRA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
  end
  object SQLFuncionario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'FUNCA13ID,'
      'FUNCA60NOME'
      'FROM'
      'FUNCIONARIO'
      'ORDER BY'
      'FUNCA60NOME')
    Macros = <>
    Left = 464
    Top = 5
    object SQLFuncionarioFUNCA13ID: TStringField
      FieldName = 'FUNCA13ID'
      Origin = 'DB.FUNCIONARIO.FUNCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLFuncionarioFUNCA60NOME: TStringField
      FieldName = 'FUNCA60NOME'
      Origin = 'DB.FUNCIONARIO.FUNCA60NOME'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLFuncionario: TDataSource
    DataSet = SQLFuncionario
    Left = 492
    Top = 5
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    ReportName = 'C:\Desenv\UnitGestao Oficial\Relatorios\Vendas Por Periodo.rpt'
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
    ConnectMethod = useLogOnInfo
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
    Left = 192
    Top = 4
  end
end
