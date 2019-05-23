inherited FormRelatorioFornecedoresCadastrados: TFormRelatorioFornecedoresCadastrados
  Caption = 'Listagem de Fornecedores Cadastrados'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox: TScrollBox
    inherited PanelCentro: TPanel
      Left = 197
      Top = 97
      Width = 427
      Height = 299
      inherited BtnVisualizar: TSpeedButton
        Top = 195
      end
      inherited EmpresaGroup: TGroupBox
        Height = 21
        Visible = False
      end
      inherited GroupBox1: TGroupBox
        Top = 33
        Visible = False
      end
      object RadioOrdem: TRadioGroup
        Left = 13
        Top = 129
        Width = 406
        Height = 43
        Caption = ' Ordenar Por '
        Columns = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Raz'#227'o Social'
          'Cidade'
          'CNPJ')
        ParentFont = False
        TabOrder = 3
      end
      object GroupTipoFornec: TGroupBox
        Left = 12
        Top = 75
        Width = 407
        Height = 42
        Caption = ' Tipos de Fornecedor '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object ComboTipoFornecedor: TRxDBLookupCombo
          Left = 6
          Top = 16
          Width = 395
          Height = 21
          DropDownCount = 8
          LookupField = 'TPFRICOD'
          LookupDisplay = 'TPFRA60DESCR'
          LookupSource = DSTipoFornec
          TabOrder = 0
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'FornecedoresCadastrados'
    object TblTemporariaFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.FORNECEDOR.FORNICOD'
    end
    object TblTemporariaFORNA60RAZAOSOC: TStringField
      FieldName = 'FORNA60RAZAOSOC'
      Origin = 'DB.FORNECEDOR.FORNA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaFORNA60NOMEFANT: TStringField
      FieldName = 'FORNA60NOMEFANT'
      Origin = 'DB.FORNECEDOR.FORNA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaTPFRICOD: TIntegerField
      FieldName = 'TPFRICOD'
      Origin = 'DB.FORNECEDOR.TPFRICOD'
    end
    object TblTemporariaFORNA60CONTATO: TStringField
      FieldName = 'FORNA60CONTATO'
      Origin = 'DB.FORNECEDOR.FORNA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaFORNCFISJURID: TStringField
      FieldName = 'FORNCFISJURID'
      Origin = 'DB.FORNECEDOR.FORNCFISJURID'
      FixedChar = True
      Size = 1
    end
    object TblTemporariaFORNA14CGC: TStringField
      FieldName = 'FORNA14CGC'
      Origin = 'DB.FORNECEDOR.FORNA14CGC'
      FixedChar = True
      Size = 14
    end
    object TblTemporariaFORNA20IE: TStringField
      FieldName = 'FORNA20IE'
      Origin = 'DB.FORNECEDOR.FORNA20IE'
      FixedChar = True
    end
    object TblTemporariaFORNA11CPF: TStringField
      FieldName = 'FORNA11CPF'
      Origin = 'DB.FORNECEDOR.FORNA11CPF'
      FixedChar = True
    end
    object TblTemporariaFORNA10RG: TStringField
      FieldName = 'FORNA10RG'
      Origin = 'DB.FORNECEDOR.FORNA10RG'
      FixedChar = True
      Size = 10
    end
    object TblTemporariaFORNA60END: TStringField
      FieldName = 'FORNA60END'
      Origin = 'DB.FORNECEDOR.FORNA60END'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaFORNA60BAI: TStringField
      FieldName = 'FORNA60BAI'
      Origin = 'DB.FORNECEDOR.FORNA60BAI'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaFORNA60CID: TStringField
      FieldName = 'FORNA60CID'
      Origin = 'DB.FORNECEDOR.FORNA60CID'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaFORNA2UF: TStringField
      FieldName = 'FORNA2UF'
      Origin = 'DB.FORNECEDOR.FORNA2UF'
      FixedChar = True
      Size = 2
    end
    object TblTemporariaFORNA8CEP: TStringField
      FieldName = 'FORNA8CEP'
      Origin = 'DB.FORNECEDOR.FORNA8CEP'
      FixedChar = True
      Size = 8
    end
    object TblTemporariaFORNA15FONE1: TStringField
      FieldName = 'FORNA15FONE1'
      Origin = 'DB.FORNECEDOR.FORNA15FONE1'
      FixedChar = True
      Size = 15
    end
    object TblTemporariaFORNA15FONE2: TStringField
      FieldName = 'FORNA15FONE2'
      Origin = 'DB.FORNECEDOR.FORNA15FONE2'
      FixedChar = True
      Size = 15
    end
    object TblTemporariaFORNA15FAX: TStringField
      FieldName = 'FORNA15FAX'
      Origin = 'DB.FORNECEDOR.FORNA15FAX'
      FixedChar = True
    end
    object TblTemporariaFORNA60EMAIL: TStringField
      FieldName = 'FORNA60EMAIL'
      Origin = 'DB.FORNECEDOR.FORNA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaFORNA60URL: TStringField
      FieldName = 'FORNA60URL'
      Origin = 'DB.FORNECEDOR.FORNA60URL'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaFORNTOBS: TStringField
      FieldName = 'FORNTOBS'
      Origin = 'DB.FORNECEDOR.FORNTOBS'
      FixedChar = True
      Size = 254
    end
    object TblTemporariaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.FORNECEDOR.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object TblTemporariaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.FORNECEDOR.REGISTRO'
    end
    object TblTemporariaFORNA30CODCONTABIL: TStringField
      FieldName = 'FORNA30CODCONTABIL'
      Origin = 'DB.FORNECEDOR.FORNA30CODCONTABIL'
      FixedChar = True
      Size = 30
    end
  end
  object SQLFornecedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from Fornecedor'
      'where '
      '  %MFiltro'
      '%MOrdem')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MOrdem'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 424
    Top = 5
    object SQLFornecedorFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.FORNECEDOR.FORNICOD'
    end
    object SQLFornecedorFORNA60RAZAOSOC: TStringField
      FieldName = 'FORNA60RAZAOSOC'
      Origin = 'DB.FORNECEDOR.FORNA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLFornecedorFORNA60NOMEFANT: TStringField
      FieldName = 'FORNA60NOMEFANT'
      Origin = 'DB.FORNECEDOR.FORNA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object SQLFornecedorTPFRICOD: TIntegerField
      FieldName = 'TPFRICOD'
      Origin = 'DB.FORNECEDOR.TPFRICOD'
    end
    object SQLFornecedorFORNA60CONTATO: TStringField
      FieldName = 'FORNA60CONTATO'
      Origin = 'DB.FORNECEDOR.FORNA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object SQLFornecedorFORNCFISJURID: TStringField
      FieldName = 'FORNCFISJURID'
      Origin = 'DB.FORNECEDOR.FORNCFISJURID'
      FixedChar = True
      Size = 1
    end
    object SQLFornecedorFORNA14CGC: TStringField
      FieldName = 'FORNA14CGC'
      Origin = 'DB.FORNECEDOR.FORNA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLFornecedorFORNA20IE: TStringField
      FieldName = 'FORNA20IE'
      Origin = 'DB.FORNECEDOR.FORNA20IE'
      FixedChar = True
    end
    object SQLFornecedorFORNA11CPF: TStringField
      FieldName = 'FORNA11CPF'
      Origin = 'DB.FORNECEDOR.FORNA11CPF'
      FixedChar = True
    end
    object SQLFornecedorFORNA10RG: TStringField
      FieldName = 'FORNA10RG'
      Origin = 'DB.FORNECEDOR.FORNA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLFornecedorFORNA60END: TStringField
      FieldName = 'FORNA60END'
      Origin = 'DB.FORNECEDOR.FORNA60END'
      FixedChar = True
      Size = 60
    end
    object SQLFornecedorFORNA60BAI: TStringField
      FieldName = 'FORNA60BAI'
      Origin = 'DB.FORNECEDOR.FORNA60BAI'
      FixedChar = True
      Size = 60
    end
    object SQLFornecedorFORNA60CID: TStringField
      FieldName = 'FORNA60CID'
      Origin = 'DB.FORNECEDOR.FORNA60CID'
      FixedChar = True
      Size = 60
    end
    object SQLFornecedorFORNA2UF: TStringField
      FieldName = 'FORNA2UF'
      Origin = 'DB.FORNECEDOR.FORNA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLFornecedorFORNA8CEP: TStringField
      FieldName = 'FORNA8CEP'
      Origin = 'DB.FORNECEDOR.FORNA8CEP'
      FixedChar = True
      Size = 8
    end
    object SQLFornecedorFORNA15FONE1: TStringField
      FieldName = 'FORNA15FONE1'
      Origin = 'DB.FORNECEDOR.FORNA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLFornecedorFORNA15FONE2: TStringField
      FieldName = 'FORNA15FONE2'
      Origin = 'DB.FORNECEDOR.FORNA15FONE2'
      FixedChar = True
      Size = 15
    end
    object SQLFornecedorFORNA15FAX: TStringField
      FieldName = 'FORNA15FAX'
      Origin = 'DB.FORNECEDOR.FORNA15FAX'
      FixedChar = True
    end
    object SQLFornecedorFORNA60EMAIL: TStringField
      FieldName = 'FORNA60EMAIL'
      Origin = 'DB.FORNECEDOR.FORNA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLFornecedorFORNA60URL: TStringField
      FieldName = 'FORNA60URL'
      Origin = 'DB.FORNECEDOR.FORNA60URL'
      FixedChar = True
      Size = 60
    end
    object SQLFornecedorFORNTOBS: TStringField
      FieldName = 'FORNTOBS'
      Origin = 'DB.FORNECEDOR.FORNTOBS'
      FixedChar = True
      Size = 254
    end
    object SQLFornecedorPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.FORNECEDOR.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLFornecedorREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.FORNECEDOR.REGISTRO'
    end
    object SQLFornecedorFORNA30CODCONTABIL: TStringField
      FieldName = 'FORNA30CODCONTABIL'
      Origin = 'DB.FORNECEDOR.FORNA30CODCONTABIL'
      FixedChar = True
      Size = 30
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
    Printer.Orientation = orLandscape
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
    Left = 539
    Top = 5
  end
  object DSTipoFornec: TDataSource
    DataSet = SQLTipoFornecedor
    Left = 454
    Top = 37
  end
  object SQLTipoFornecedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from  TipoFornecedor order by TPFRA60DESCR'
      ''
      '')
    Macros = <>
    Left = 426
    Top = 37
    object SQLTipoFornecedorTPFRICOD: TIntegerField
      FieldName = 'TPFRICOD'
      Origin = 'DB.TIPOFORNECEDOR.TPFRICOD'
    end
    object SQLTipoFornecedorTPFRA60DESCR: TStringField
      FieldName = 'TPFRA60DESCR'
      Origin = 'DB.TIPOFORNECEDOR.TPFRA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
end
