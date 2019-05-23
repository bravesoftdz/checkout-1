inherited FormRelatorioCartasAviso: TFormRelatorioCartasAviso
  Left = 193
  Top = 109
  Caption = 'Relat'#243'rio de Cartas de Aviso'
  ClientHeight = 492
  ClientWidth = 793
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Top = 476
    Width = 793
  end
  inherited ScrollBox: TScrollBox
    Width = 793
    Height = 476
    inherited LblTituloTela: TPanel
      Width = 789
    end
    inherited PanelCentro: TPanel
      Top = 84
      Height = 367
      inherited BtnVisualizar: TSpeedButton
        Top = 339
      end
      inherited EmpresaGroup: TGroupBox
        Left = 0
        Top = 0
        Width = 425
        Align = alTop
      end
      inherited GroupBox1: TGroupBox
        Left = 0
        Top = 155
        Width = 425
        Height = 48
        Align = alTop
        Caption = ''
        inherited Label3: TLabel
          Top = 23
        end
        inherited Label4: TLabel
          Top = 23
        end
        inherited De: TDateEdit
          Top = 19
          Cursor = crHandPoint
        end
        inherited Ate: TDateEdit
          Top = 19
          Cursor = crHandPoint
        end
        object chkDtProcessamento: TCheckBox
          Left = 8
          Top = -1
          Width = 156
          Height = 17
          Cursor = crHandPoint
          Caption = 'Per'#237'odo Processamento'
          TabOrder = 2
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 203
        Width = 425
        Height = 48
        Align = alTop
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Label5: TLabel
          Left = 8
          Top = 23
          Width = 15
          Height = 13
          Caption = '&De'
          FocusControl = DeVcto
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 131
          Top = 23
          Width = 19
          Height = 13
          Caption = 'a&t'#233
          FocusControl = AteVcto
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DeVcto: TDateEdit
          Left = 39
          Top = 19
          Width = 87
          Height = 21
          Cursor = crHandPoint
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          YearDigits = dyFour
          TabOrder = 0
        end
        object AteVcto: TDateEdit
          Left = 153
          Top = 19
          Width = 87
          Height = 21
          Cursor = crHandPoint
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          YearDigits = dyFour
          TabOrder = 1
        end
        object chkDtVencimento: TCheckBox
          Left = 8
          Top = -1
          Width = 137
          Height = 17
          Cursor = crHandPoint
          Caption = 'Per'#237'odo Vencimento'
          TabOrder = 2
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 251
        Width = 425
        Height = 81
        Align = alTop
        Caption = 'Pesquisar'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object chkEnviados: TCheckBox
          Left = 171
          Top = 32
          Width = 102
          Height = 17
          Cursor = crHandPoint
          AllowGrayed = True
          Caption = 'J'#225' Enviados'
          Checked = True
          State = cbChecked
          TabOrder = 5
        end
        object chkCartaCobranca: TCheckBox
          Left = 8
          Top = 61
          Width = 137
          Height = 17
          Cursor = crHandPoint
          Caption = 'Aviso Cobran'#231'a'
          TabOrder = 3
          OnClick = chkCartaCobrancaClick
        end
        object chkPrimeiroAviso: TCheckBox
          Left = 8
          Top = 14
          Width = 137
          Height = 17
          Cursor = crHandPoint
          Caption = 'Primeiro Aviso'
          TabOrder = 0
          OnClick = chkCartaCobrancaClick
        end
        object chkSegundoAviso: TCheckBox
          Left = 8
          Top = 30
          Width = 137
          Height = 17
          Cursor = crHandPoint
          Caption = 'Segundo Aviso'
          TabOrder = 1
          OnClick = chkCartaCobrancaClick
        end
        object chkAvisoSPC: TCheckBox
          Left = 8
          Top = 45
          Width = 137
          Height = 17
          Cursor = crHandPoint
          Caption = 'Aviso SPC'
          TabOrder = 2
          OnClick = chkCartaCobrancaClick
        end
        object chkTodos: TCheckBox
          Left = 171
          Top = 13
          Width = 97
          Height = 17
          Cursor = crHandPoint
          AllowGrayed = True
          Caption = 'Todos'
          TabOrder = 4
          OnClick = chkTodosClick
        end
      end
    end
    inherited PanelNavigator: TPanel
      Width = 789
      inherited AdvPanelNavigator: TAdvOfficeStatusBar
        Width = 789
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'tblConsultaCartaAviso.db'
    object TblTemporariaCLIEID: TStringField
      FieldName = 'CLIEID'
      Size = 13
    end
    object TblTemporariaCRECID: TStringField
      FieldName = 'CRECID'
      Size = 13
    end
    object TblTemporariaNROPARC: TIntegerField
      FieldName = 'NROPARC'
    end
    object TblTemporariaCUPID: TStringField
      FieldName = 'CUPID'
      Size = 13
    end
    object TblTemporariaCRECVLR: TBCDField
      FieldName = 'CRECVLR'
      Precision = 32
      Size = 3
    end
    object TblTemporariaNOMECLIE: TStringField
      FieldName = 'NOMECLIE'
      Size = 60
    end
    object TblTemporariaENVIADO: TStringField
      FieldName = 'ENVIADO'
      Size = 1
    end
    object TblTemporariaDTPROC: TDateTimeField
      FieldName = 'DTPROC'
    end
    object TblTemporariaDTVENC: TDateTimeField
      FieldName = 'DTVENC'
    end
    object TblTemporariaDIASATR: TIntegerField
      FieldName = 'DIASATR'
    end
    object TblTemporariaTABELA: TStringField
      FieldName = 'TABELA'
      Size = 3
    end
    object TblTemporariaClieNome: TStringField
      FieldName = 'ClieNome'
      Size = 60
    end
    object TblTemporariaClieFone: TStringField
      FieldName = 'ClieFone'
      Size = 30
    end
    object TblTemporariaClieCidade: TStringField
      FieldName = 'ClieCidade'
      Size = 60
    end
  end
  object SQLConsulta: TRxQuery
    OnCalcFields = SQLConsultaCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  CARTAAVISOSPC.CLIEA13ID ClieID,'
      '  CARTAAVISOSPC.CTRCA13ID CRecID,'
      '  CARTAAVISOSPC.CTRCINROPARC NroParc,'
      '  CARTAAVISOSPC.CUPOA13ID CupID,'
      '  CARTAAVISOSPC.CTRCN2VLR CRecVlr,'
      '  CARTAAVISOSPC.AVSPA60NOMECLI NomeClie,'
      '  CARTAAVISOSPC.AVSPCENVIADO Enviado,'
      '  CARTAAVISOSPC.AVSPDPROCESS DtProc,'
      '  CARTAAVISOSPC.AVSPDVENC DtVenc,'
      '  CARTAAVISOSPC.AVSPIDIASATRASO DiasAtr,'
      '  '#39'SPC'#39' Tabela'
      'from'
      'CARTAAVISOSPC'
      
        'left outer join CUPOM on CARTAAVISOSPC.CUPOA13ID = CUPOM.CUPOA13' +
        'ID'
      'where'
      '(%MFiltroSPC)'
      'and'
      '(%MEmpresa)'
      ''
      'union'
      ''
      'select'
      '  CARTAPRIMEIROAVISO.CLIEA13ID ClieID,'
      '  CARTAPRIMEIROAVISO.CTRCA13ID CRecID,'
      '  CARTAPRIMEIROAVISO.CTRCINROPARC NroParc,'
      '  CARTAPRIMEIROAVISO.CUPOA13ID CupID,'
      '  CARTAPRIMEIROAVISO.CTRCN2VLR CRecVlr,'
      '  CARTAPRIMEIROAVISO.PRAVA60NOMECLI NomeClie,'
      '  CARTAPRIMEIROAVISO.PRAVCENVIADO Enviado,'
      '  CARTAPRIMEIROAVISO.PRAVDPROCESS DtProc,'
      '  CARTAPRIMEIROAVISO.PRAVDVENC DtVenc,'
      '  CARTAPRIMEIROAVISO.PRAVIDIASATRASO DiasAtr,'
      '  '#39'1AV'#39' Tabela'
      'from'
      ' CARTAPRIMEIROAVISO'
      
        ' left outer join cupom on CARTAPRIMEIROAVISO.CUPOA13ID = CUPOM.C' +
        'UPOA13ID'
      'where'
      ' (%MFiltro1AV)'
      'and'
      '(%MEmpresa)'
      ''
      'union'
      ''
      'select'
      '  CARTASEGUNDOAVISO.CLIEA13ID ClieID,'
      '  CARTASEGUNDOAVISO.CTRCA13ID CRecID,'
      '  CARTASEGUNDOAVISO.CTRCINROPARC NroParc,'
      '  CARTASEGUNDOAVISO.CUPOA13ID CupID,'
      '  CARTASEGUNDOAVISO.CTRCN2VLR CRecVlr,'
      '  CARTASEGUNDOAVISO.SGAVA60NOMECLI NomeClie,'
      '  CARTASEGUNDOAVISO.SGAVCENVIADO Enviado,'
      '  CARTASEGUNDOAVISO.SGAVDPROCESS DtProc,'
      '  CARTASEGUNDOAVISO.SGAVDVENC DtVenc,'
      '  CARTASEGUNDOAVISO.SGAVIDIASATRASO DiasAtr,'
      '  '#39'2AV'#39' Tabela'
      'from'
      ' CARTASEGUNDOAVISO'
      
        ' left outer join cupom on CARTASEGUNDOAVISO.CUPOA13ID = CUPOM.CU' +
        'POA13ID'
      'where'
      ' (%MFiltro2AV)'
      'union'
      ''
      'select'
      '  CARTAAVISOCOBRANCA.CLIEA13ID ClieID,'
      '  CARTAAVISOCOBRANCA.CTRCA13ID CRecID,'
      '  CARTAAVISOCOBRANCA.CTRCINROPARC NroParc,'
      '  CARTAAVISOCOBRANCA.CUPOA13ID CupID,'
      '  CARTAAVISOCOBRANCA.CTRCN2VLR CRecVlr,'
      '  CARTAAVISOCOBRANCA.AVCOA60NOMECLI NomeClie,'
      '  CARTAAVISOCOBRANCA.AVCOCENVIADO Enviado,'
      '  CARTAAVISOCOBRANCA.AVCODPROCESS DtProc,'
      '  CARTAAVISOCOBRANCA.AVCODVENC DtVenc,'
      '  CARTAAVISOCOBRANCA.AVCOIDIASATRASO DiasAtr,'
      '  '#39'AvC'#39' Tabela'
      'from'
      ' CARTAAVISOCOBRANCA'
      
        ' left outer join cupom on CARTAAVISOCOBRANCA.CUPOA13ID = CUPOM.C' +
        'UPOA13ID'
      'where'
      ' (%MFiltroAvC)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltroSPC'
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
        Name = 'MFiltro1AV'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MFiltro2AV'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MFiltroAvC'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 418
    Top = 5
    object SQLConsultaCLIEID: TStringField
      FieldName = 'CLIEID'
      FixedChar = True
      Size = 13
    end
    object SQLConsultaCRECID: TStringField
      FieldName = 'CRECID'
      FixedChar = True
      Size = 13
    end
    object SQLConsultaNROPARC: TIntegerField
      FieldName = 'NROPARC'
    end
    object SQLConsultaCUPID: TStringField
      FieldName = 'CUPID'
      FixedChar = True
      Size = 13
    end
    object SQLConsultaCRECVLR: TBCDField
      FieldName = 'CRECVLR'
      Precision = 15
      Size = 3
    end
    object SQLConsultaNOMECLIE: TStringField
      FieldName = 'NOMECLIE'
      FixedChar = True
      Size = 60
    end
    object SQLConsultaENVIADO: TStringField
      FieldName = 'ENVIADO'
      FixedChar = True
      Size = 1
    end
    object SQLConsultaDTPROC: TDateTimeField
      FieldName = 'DTPROC'
    end
    object SQLConsultaDTVENC: TDateTimeField
      FieldName = 'DTVENC'
    end
    object SQLConsultaDIASATR: TIntegerField
      FieldName = 'DIASATR'
    end
    object SQLConsultaTABELA: TStringField
      FieldName = 'TABELA'
      FixedChar = True
      Size = 3
    end
    object SQLConsultaClieNome: TStringField
      FieldKind = fkCalculated
      FieldName = 'ClieNome'
      Size = 60
      Calculated = True
    end
    object SQLConsultaClieFone: TStringField
      FieldKind = fkCalculated
      FieldName = 'ClieFone'
      Size = 30
      Calculated = True
    end
    object SQLConsultaClieCidade: TStringField
      FieldKind = fkCalculated
      FieldName = 'ClieCidade'
      Size = 60
      Calculated = True
    end
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    ReportName = 'e:\Desenv\GestaoOficial\Relatorios\RelCotacaoVendas.rpt'
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
    Left = 446
    Top = 5
  end
end
