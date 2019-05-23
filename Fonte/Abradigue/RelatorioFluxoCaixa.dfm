inherited FormRelatorioFluxoCaixa: TFormRelatorioFluxoCaixa
  Left = 229
  Top = 217
  Caption = 'Fluxo de Caixa'
  ClientWidth = 794
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Width = 794
    Max = 0
    Smooth = True
  end
  inherited ScrollBox: TScrollBox
    Width = 794
    inherited Image1: TImage
      Width = 790
    end
    inherited LblTituloTela: TPanel
      Width = 790
    end
    inherited PanelCentro: TPanel
      Height = 306
      inherited BtnVisualizar: TSpeedButton
        Left = 150
        Top = 261
      end
      object GroupSaldo: TGroupBox
        Left = 12
        Top = 203
        Width = 135
        Height = 45
        Caption = 'Saldo Inicial'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object SaldoInicial: TCurrencyEdit
          Left = 7
          Top = 17
          Width = 121
          Height = 21
          AutoSize = False
          CheckOnExit = True
          FormatOnEditing = True
          TabOrder = 0
        end
      end
      object RadioModoVisual: TRadioGroup
        Left = 148
        Top = 203
        Width = 271
        Height = 45
        Caption = 'Modo de Visualiza'#231#227'o'
        Columns = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Sint'#233'tico'
          'Anal'#237'tico'
          'Gr'#225'fico')
        ParentFont = False
        TabOrder = 3
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'FluxoCaixa.db'
    object TblTemporariaData: TDateTimeField
      FieldName = 'Data'
    end
    object TblTemporariaReceber: TFloatField
      FieldName = 'Receber'
    end
    object TblTemporariaPagar: TFloatField
      FieldName = 'Pagar'
    end
    object TblTemporariaSaldo: TFloatField
      FieldName = 'Saldo'
    end
  end
  object SQLReceber: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      
        'Sum(ContasReceber.CTRCN2VLR - ContasReceber.CTRCN2TOTREC) as Val' +
        'orReceber,'
      'ContasReceber.CTRCDVENC'
      'from'
      'ContasReceber'
      'where'
      ' ContasReceber.CTRCCSTATUS <> '#39'C'#39' and'
      
        ' (ContasReceber.CTRCN2TOTREC < ContasReceber.CTRCN2VLR or Contas' +
        'Receber.CTRCN2TOTREC is null )and'
      '(%Empresa)and'
      '(%Data)'
      'Group by'
      'ContasReceber.CTRCDVENC'
      'order by'
      'ContasReceber.CTRCDVENC')
    Macros = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Data'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 421
    Top = 5
    object SQLReceberVALORRECEBER: TFloatField
      FieldName = 'VALORRECEBER'
    end
    object SQLReceberCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
    end
  end
  object SQLPagar: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      
        'Sum(ContasPagar.CTPGN3VLR - ContasPagar.CTPGN2TOTPAG) as ValorPa' +
        'gar,'
      'ContasPagar.CTPGDVENC'
      'from'
      'ContasPagar'
      'where'
      
        '(ContasPagar.CTPGN3VLR > ContasPagar.CTPGN2TOTPAG or ContasPagar' +
        '.CTPGN2TOTPAG is null)and'
      '(%Empresa)and'
      '(%Data)'
      'Group by'
      'ContasPagar.CTPGDVENC'
      'order by'
      'ContasPagar.CTPGDVENC')
    Macros = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Data'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 449
    Top = 5
    object SQLPagarVALORPAGAR: TFloatField
      FieldName = 'VALORPAGAR'
    end
    object SQLPagarCTPGDVENC: TDateTimeField
      FieldName = 'CTPGDVENC'
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
    ConnectMethod = useLogOnInfo
    SQL.Params.ParamType = spChar
    LogOnInfo.Table = -1
    SessionInfo.Table = -1
    SessionInfo.Propagate = True
    Export.Excel.Constant = 9
    Export.Excel.Area = 'D'
    Export.CharSepQuote = ' '
    WindowZoom.Magnification = -1
    WindowState = wsMaximized
    WindowButtonBar.AllowDrillDown = True
    WindowButtonBar.CloseBtn = True
    WindowButtonBar.PrintSetupBtn = True
    WindowButtonBar.SearchBtn = True
    WindowButtonBar.ToolbarTips = False
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
    Left = 481
    Top = 5
  end
  object SQLReceberRegistros: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'CONTASRECEBER.CTRCA13ID    as ID,'
      'CONTASRECEBER.CTRCINROPARC as Parcela,'
      'CONTASRECEBER.CTRCDEMIS    as Emissao,'
      'Cast(CONTASRECEBER.CTRCDVENC as Date) as Vcto,'
      'CONTASRECEBER.CTRCN2VLR    as Valor,'
      'CONTASRECEBER.CTRCA30NRODUPLICBANCO as Detalhes,'
      'CLIENTE.CLIEA60RAZAOSOC    as ClienteFornecedor,'
      'PLANODECONTAS.PLCTA60DESCR as PlanoContas,'
      'TIPODOCUMENTO.TPDCA60DESCR as TipoDocumento,'
      #39'R'#39' as Tipo'
      ''
      'FROM'
      'CONTASRECEBER'
      
        'LEFT OUTER JOIN CLIENTE ON CONTASRECEBER.CLIEA13ID = CLIENTE.CLI' +
        'EA13ID'
      
        'LEFT OUTER JOIN PLANODECONTAS ON CONTASRECEBER.PLCTA15COD = PLAN' +
        'ODECONTAS.PLCTA15COD'
      
        'LEFT OUTER JOIN TIPODOCUMENTO ON CONTASRECEBER.TPDCICOD = TIPODO' +
        'CUMENTO.TPDCICOD'
      'WHERE'
      'CONTASRECEBER.CTRCCSTATUS <> '#39'C'#39' and'
      
        '(CONTASRECEBER.CTRCN2TOTREC < ContasReceber.CTRCN2VLR or CONTASR' +
        'ECEBER.CTRCN2TOTREC is null)  and'
      '(%Empresa)and'
      '(%Data)'
      'ORDER BY'
      'CONTASRECEBER.CTRCA13ID'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Data'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 421
    Top = 33
    object SQLReceberRegistrosID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 13
    end
    object SQLReceberRegistrosPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object SQLReceberRegistrosEMISSAO: TDateTimeField
      FieldName = 'EMISSAO'
    end
    object SQLReceberRegistrosVCTO: TDateTimeField
      FieldName = 'VCTO'
    end
    object SQLReceberRegistrosVALOR: TBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 3
    end
    object SQLReceberRegistrosDETALHES: TStringField
      FieldName = 'DETALHES'
      FixedChar = True
      Size = 30
    end
    object SQLReceberRegistrosCLIENTEFORNECEDOR: TStringField
      FieldName = 'CLIENTEFORNECEDOR'
      FixedChar = True
      Size = 60
    end
    object SQLReceberRegistrosPLANOCONTAS: TStringField
      FieldName = 'PLANOCONTAS'
      FixedChar = True
      Size = 60
    end
    object SQLReceberRegistrosTIPODOCUMENTO: TStringField
      FieldName = 'TIPODOCUMENTO'
      FixedChar = True
      Size = 30
    end
    object SQLReceberRegistrosTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object SQLPagarRegistros: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'CONTASPAGAR.CTPGA13ID      as ID,'
      'CONTASPAGAR.CTPGINROPARC   as Parcela,'
      'CONTASPAGAR.CTPGDTEMIS     as Emissao,'
      'Cast(CONTASPAGAR.CTPGDVENC as Date) as Vcto,'
      'CONTASPAGAR.CTPGN3VLR      as Valor,'
      'CONTASPAGAR.CTPGA254HIST   as Detalhes,'
      'FORNECEDOR.FORNA60RAZAOSOC as ClienteFornecedor,'
      'PLANODECONTAS.PLCTA60DESCR as PlanoContas,'
      'TIPODOCUMENTO.TPDCA60DESCR as TipoDocumento,'
      #39'P'#39' as Tipo'
      'FROM'
      'CONTASPAGAR'
      
        'LEFT OUTER JOIN FORNECEDOR ON CONTASPAGAR.FORNICOD = FORNECEDOR.' +
        'FORNICOD'
      
        'LEFT OUTER JOIN PLANODECONTAS ON CONTASPAGAR.PLCTA15COD = PLANOD' +
        'ECONTAS.PLCTA15COD'
      
        'LEFT OUTER JOIN TIPODOCUMENTO ON CONTASPAGAR.TPDCICOD = TIPODOCU' +
        'MENTO.TPDCICOD'
      'WHERE'
      
        '(CONTASPAGAR.CTPGN3VLR > ContasPagar.CTPGN2TOTPAG or ContasPagar' +
        '.CTPGN2TOTPAG is null) and'
      '(%Empresa)and'
      '(%Data)'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Data'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 449
    Top = 33
    object SQLPagarRegistrosID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 13
    end
    object SQLPagarRegistrosPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object SQLPagarRegistrosEMISSAO: TDateTimeField
      FieldName = 'EMISSAO'
    end
    object SQLPagarRegistrosVCTO: TDateTimeField
      FieldName = 'VCTO'
    end
    object SQLPagarRegistrosVALOR: TBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object SQLPagarRegistrosDETALHES: TStringField
      FieldName = 'DETALHES'
      FixedChar = True
      Size = 254
    end
    object SQLPagarRegistrosCLIENTEFORNECEDOR: TStringField
      FieldName = 'CLIENTEFORNECEDOR'
      FixedChar = True
      Size = 60
    end
    object SQLPagarRegistrosPLANOCONTAS: TStringField
      FieldName = 'PLANOCONTAS'
      FixedChar = True
      Size = 60
    end
    object SQLPagarRegistrosTIPODOCUMENTO: TStringField
      FieldName = 'TIPODOCUMENTO'
      FixedChar = True
      Size = 30
    end
    object SQLPagarRegistrosTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object TblRegistros: TTable
    Tag = 1
    DatabaseName = 'UnitGestao_Temp'
    TableName = 'RegistrosFluxoCaixa.db'
    Left = 362
    Top = 33
    object TblRegistrosID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 13
    end
    object TblRegistrosPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object TblRegistrosEMISSAO: TDateTimeField
      FieldName = 'EMISSAO'
    end
    object TblRegistrosVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object TblRegistrosVCTO: TDateTimeField
      FieldName = 'VCTO'
    end
    object TblRegistrosDETALHES: TStringField
      FieldName = 'DETALHES'
      FixedChar = True
      Size = 30
    end
    object TblRegistrosCLIENTEFORNECEDOR: TStringField
      FieldName = 'CLIENTEFORNECEDOR'
      FixedChar = True
      Size = 60
    end
    object TblRegistrosPLANOCONTAS: TStringField
      FieldName = 'PLANOCONTAS'
      FixedChar = True
      Size = 60
    end
    object TblRegistrosTIPODOCUMENTO: TStringField
      FieldName = 'TIPODOCUMENTO'
      FixedChar = True
      Size = 30
    end
    object TblRegistrosTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
end
