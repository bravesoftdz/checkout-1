inherited FormRelatorioVendaPorBombas: TFormRelatorioVendaPorBombas
  Left = 416
  Top = 206
  Caption = 'Vendas Por Bombas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox: TScrollBox
    inherited PanelCentro: TPanel
      Top = 92
      Height = 311
      inherited BtnVisualizar: TSpeedButton
        Top = 285
      end
      object Label7: TLabel [1]
        Left = 16
        Top = 250
        Width = 50
        Height = 13
        Caption = 'Hora:Min'
        FocusControl = Ate
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel [2]
        Left = 123
        Top = 250
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
      inherited GroupBox1: TGroupBox
        object CheckPeriodo: TCheckBox
          Left = 246
          Top = 15
          Width = 149
          Height = 17
          Caption = 'Desconsiderar Per'#237'odo'
          TabOrder = 2
        end
      end
      object GroupBox5: TGroupBox
        Left = 12
        Top = 205
        Width = 201
        Height = 40
        Caption = ' Usuario'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object ComboUsuario: TRxDBLookupCombo
          Left = 6
          Top = 14
          Width = 191
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'USUAICOD'
          LookupDisplay = 'USUAA60LOGIN'
          LookupSource = DSSQLUsuario
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox8: TGroupBox
        Left = 216
        Top = 205
        Width = 203
        Height = 40
        Caption = ' Terminal '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object ComboTerminal: TRxDBLookupCombo
          Left = 7
          Top = 14
          Width = 191
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'TERMICOD'
          LookupDisplay = 'TERMA60DESCR'
          LookupSource = DSSQLTerminal
          ParentFont = False
          TabOrder = 0
        end
      end
      object EditHoraIni: TEdit
        Left = 69
        Top = 246
        Width = 50
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object EditHoraFim: TEdit
        Left = 145
        Top = 246
        Width = 50
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'VendasPorBombas'
    object TblTemporariaCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaCUPODEMIS: TDateTimeField
      FieldName = 'CUPODEMIS'
    end
    object TblTemporariaPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object TblTemporariaPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCPITN3VLRUNIT: TBCDField
      FieldName = 'CPITN3VLRUNIT'
      Precision = 15
      Size = 3
    end
    object TblTemporariaQTDE: TBCDField
      FieldName = 'QTDE'
      Precision = 15
      Size = 3
    end
    object TblTemporariaVLRTOTALITEM: TBCDField
      FieldName = 'VLRTOTALITEM'
      Precision = 15
      Size = 3
    end
    object TblTemporariaBOMBICOD: TIntegerField
      FieldName = 'BOMBICOD'
    end
    object TblTemporariaENCERRANTE: TIntegerField
      FieldName = 'ENCERRANTE'
    end
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    ReportName = 'C:\Desenv\GestaoOficial\Relatorios\Produtos Vendidos.rpt'
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
      '"Empresa"')
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
    Left = 192
    Top = 5
  end
  object DSSQLTerminal: TDataSource
    AutoEdit = False
    DataSet = SQLTerminal
    Left = 250
    Top = 37
  end
  object SQLTerminal: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from terminal')
    Left = 222
    Top = 37
  end
  object DSSQLUsuario: TDataSource
    AutoEdit = False
    DataSet = SQLUsuario
    Left = 250
    Top = 5
  end
  object SQLUsuario: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from USUARIO'
      'Order by USUAA60LOGIN')
    Left = 222
    Top = 5
    object SQLUsuarioUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.USUARIO.USUAICOD'
    end
    object SQLUsuarioUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      Origin = 'DB.USUARIO.USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
  end
  object SQLVendas: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  CUPOMITEM.PRODICOD,'
      '  CUPOMITEM.CPITN3VLRUNIT,'
      '  CUPOMITEM.CPITN3QTD as QTDE,'
      '  CUPOMITEM.CPITN3VLRUNIT as VLRTOTALITEM,'
      '  CUPOMITEM.BOMBICOD,'
      '  CUPOMITEM.ENCERRANTE,'
      '  CUPOM.CUPOA13ID,'
      '  CUPOM.CUPODEMIS,'
      '  PRODUTO.PRODA60DESCR'
      'from'
      
        '  ((CUPOMITEM inner join CUPOM  on CUPOMITEM.CUPOA13ID = CUPOM.C' +
        'UPOA13ID)'
      
        '   left outer join PRODUTO on CUPOMITEM.PRODICOD = PRODUTO.PRODI' +
        'COD)'
      'where'
      ' CUPOM.CUPOCSTATUS <> '#39'C'#39' and CUPOMITEM.BOMBICOD > 0 and'
      '  (%MData)     and'
      '  (%MEmpresa)  and'
      '  (%MTerminal) and'
      '  (%MOperador)'
      '')
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
      end
      item
        DataType = ftString
        Name = 'MTerminal'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MOperador'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 449
    Top = 5
    object SQLVendasCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLVendasCUPODEMIS: TDateTimeField
      FieldName = 'CUPODEMIS'
    end
    object SQLVendasPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object SQLVendasPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLVendasCPITN3VLRUNIT: TBCDField
      FieldName = 'CPITN3VLRUNIT'
      Precision = 15
      Size = 3
    end
    object SQLVendasQTDE: TBCDField
      FieldName = 'QTDE'
      Precision = 15
      Size = 3
    end
    object SQLVendasVLRTOTALITEM: TBCDField
      FieldName = 'VLRTOTALITEM'
      Precision = 15
      Size = 3
    end
    object SQLVendasBOMBICOD: TIntegerField
      FieldName = 'BOMBICOD'
    end
    object SQLVendasENCERRANTE: TIntegerField
      FieldName = 'ENCERRANTE'
    end
  end
end
