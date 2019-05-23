inherited FormRelatorioContasReceberVencidasAvalista: TFormRelatorioContasReceberVencidasAvalista
  Left = 204
  Top = 175
  Caption = 'Relat'#243'rio de Contas '#224' Receber Vencidas - Avalista'
  ClientHeight = 523
  ClientWidth = 796
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Top = 507
    Width = 796
  end
  inherited ScrollBox: TScrollBox
    Width = 796
    Height = 507
    inherited PanelCentro: TPanel
      Left = 158
      Top = 92
      Height = 362
      inherited BtnVisualizar: TSpeedButton
        Left = 154
        Top = 331
      end
      inherited GroupBox1: TGroupBox
        Width = 245
      end
      object GroupBox3: TGroupBox
        Left = 12
        Top = 203
        Width = 407
        Height = 40
        Caption = ' Cliente '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object ComboCliente: TRxDBLookupCombo
          Left = 8
          Top = 14
          Width = 390
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'CLIEA13ID'
          LookupDisplay = 'CLIEA60RAZAOSOC'
          LookupSource = DSSQLCliente
          ParentFont = False
          TabOrder = 0
          OnKeyDown = ComboClienteKeyDown
        end
      end
      object OrdIDCli: TCheckBox
        Left = 258
        Top = 165
        Width = 163
        Height = 17
        Caption = 'Ordenar por ID do Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object CheckNroDuplic: TCheckBox
        Left = 258
        Top = 184
        Width = 153
        Height = 17
        Caption = 'Imprime Nro. Duplicata'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object GroupBox4: TGroupBox
        Left = 12
        Top = 243
        Width = 407
        Height = 40
        Caption = 'Portador'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object ComboPortador: TRxDBLookupCombo
          Left = 8
          Top = 14
          Width = 390
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'PORTICOD'
          LookupDisplay = 'PORTA60DESCR'
          LookupSource = DSSQLPortador
          ParentFont = False
          TabOrder = 0
          OnKeyDown = ComboClienteKeyDown
        end
      end
      object GroupBox2: TGroupBox
        Left = 12
        Top = 283
        Width = 407
        Height = 40
        Caption = 'Avalista'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        object ComboAvalista: TRxDBLookupCombo
          Left = 8
          Top = 14
          Width = 390
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'AVALA13ID'
          LookupDisplay = 'AVALA60RAZAOSOC'
          LookupSource = DSSQLAvalista
          ParentFont = False
          TabOrder = 0
          OnKeyDown = ComboClienteKeyDown
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 792
      inherited PanelCabecalho: TPanel
        Width = 792
        inherited PanelNavigator: TPanel
          Width = 792
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 792
          end
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'RelContasVencidasAvalista.Db'
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object TblTemporariaCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
    end
    object TblTemporariaCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
    end
    object TblTemporariaDTVENC: TStringField
      FieldName = 'DTVENC'
      FixedChar = True
      Size = 11
    end
    object TblTemporariaCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCTRCN2VLR: TBCDField
      FieldName = 'CTRCN2VLR'
      Precision = 15
      Size = 3
    end
    object TblTemporariaEMPRICODULTREC: TIntegerField
      FieldName = 'EMPRICODULTREC'
    end
    object TblTemporariaDTULTREC: TStringField
      FieldName = 'DTULTREC'
      FixedChar = True
      Size = 11
    end
    object TblTemporariaCTRCN2TOTREC: TBCDField
      FieldName = 'CTRCN2TOTREC'
      Precision = 15
      Size = 3
    end
    object TblTemporariaCTRCN2TXJURO: TBCDField
      FieldName = 'CTRCN2TXJURO'
      Precision = 15
      Size = 3
    end
    object TblTemporariaCTRCN2TXMULTA: TBCDField
      FieldName = 'CTRCN2TXMULTA'
      Precision = 15
      Size = 3
    end
    object TblTemporariaCTRCN2TOTDESCREC: TBCDField
      FieldName = 'CTRCN2TOTDESCREC'
      Precision = 15
      Size = 3
    end
    object TblTemporariaSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object TblTemporariaNUMEA30DESCR: TStringField
      FieldName = 'NUMEA30DESCR'
      FixedChar = True
      Size = 30
    end
    object TblTemporariaNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
    end
    object TblTemporariaCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object TblTemporariaCLIEA15FONE1: TStringField
      FieldName = 'CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object TblTemporariaCLIEA15FONE2: TStringField
      FieldName = 'CLIEA15FONE2'
      FixedChar = True
      Size = 15
    end
    object TblTemporariaAVALA60RAZAOSOC: TStringField
      FieldName = 'AVALA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaPORTA60DESCR: TStringField
      FieldName = 'PORTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaTPDCA60DESCR: TStringField
      FieldName = 'TPDCA60DESCR'
      FixedChar = True
      Size = 30
    end
    object TblTemporariaCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
    end
  end
  object SQLAvalista: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select '
      'AVALA13ID,'
      'AVALA60RAZAOSOC'
      'FROM'
      'AVALISTA'
      'ORDER BY'
      'AVALA60RAZAOSOC')
    Left = 570
    Top = 385
    object SQLAvalistaAVALA13ID: TStringField
      FieldName = 'AVALA13ID'
      Origin = 'DB.AVALISTA.AVALA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLAvalistaAVALA60RAZAOSOC: TStringField
      FieldName = 'AVALA60RAZAOSOC'
      Origin = 'DB.AVALISTA.AVALA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLAvalista: TDataSource
    DataSet = SQLAvalista
    Left = 598
    Top = 385
  end
  object SQLContasReceber: TRxQuery
    DatabaseName = 'DB'
    SessionName = 'Default'
    SQL.Strings = (
      'select'
      '  CONTASRECEBER.EMPRICOD,'
      '  CONTASRECEBER.CTRCDVENC,'
      '  CONTASRECEBER.CTRCA13ID,'
      '  CONTASRECEBER.CTRCINROPARC,'
      '  CAST(CONTASRECEBER.CTRCDVENC AS CHAR(11)) AS DTVENC,'
      '  CONTASRECEBER.CUPOA13ID,'
      '  CONTASRECEBER.PDVDA13ID,'
      '  CONTASRECEBER.NOFIA13ID,'
      '  CONTASRECEBER.CLIEA13ID,'
      '  CLIENTE.CLIEA60RAZAOSOC,'
      '  CONTASRECEBER.CTRCN2VLR,'
      '  CONTASRECEBER.EMPRICODULTREC,'
      '  CAST(CONTASRECEBER.CTRCDULTREC AS CHAR(11)) AS DTULTREC,'
      '  CONTASRECEBER.CTRCN2TOTREC,'
      '  CONTASRECEBER.CTRCN2TXJURO,'
      '  CONTASRECEBER.CTRCN2TXMULTA,'
      '  CONTASRECEBER.CTRCN2TOTDESCREC,'
      '  (CONTASRECEBER.CTRCN2VLR-CONTASRECEBER.CTRCN2TOTREC) AS SALDO,'
      '  NUMERARIO.NUMEA30DESCR,'
      '  CONTASRECEBER.NUMEICOD,'
      '  CONTASRECEBER.CTRCA30NRODUPLICBANCO,'
      '  CLIENTE.CLIEA15FONE1,'
      '  CLIENTE.CLIEA15FONE2,'
      '  AVALISTA.AVALA60RAZAOSOC,'
      '  PORTADOR.PORTA60DESCR,'
      '  TIPODOCUMENTO.TPDCA60DESCR,'
      '  CONTASRECEBER.CTRCDEMIS'
      'from'
      '  CONTASRECEBER'
      
        '  inner join      CLIENTE       on CONTASRECEBER.CLIEA13ID = CLI' +
        'ENTE.CLIEA13ID'
      
        '  Left outer JOIN NUMERARIO     on CONTASRECEBER.NUMEICOD  = NUM' +
        'ERARIO.NUMEICOD'
      
        '  left outer join AVALISTA      on CONTASRECEBER.AVALA13ID = AVA' +
        'LISTA.AVALA13ID'
      
        '  left outer join PORTADOR      on CONTASRECEBER.PORTICOD  = POR' +
        'TADOR.PORTICOD'
      
        '  left outer join TIPODOCUMENTO on CONTASRECEBER.TPDCICOD  = TIP' +
        'ODOCUMENTO.TPDCICOD'
      'where'
      '  (%MEmpresa) and'
      '  (%MData) and'
      '  (%MCliente) and'
      
        '  (CONTASRECEBER.CTRCA5TIPOPADRAO not in('#39'CHQ'#39','#39'CHQV'#39','#39'CHQP'#39')) a' +
        'nd'
      
        '  ((Not CONTASRECEBER.NOFIA13ID is NULL) OR (Not CONTASRECEBER.C' +
        'UPOA13ID is NULL)'
      '   OR (Not CONTASRECEBER.CTRCA13ID is Null)) and'
      '  (CONTASRECEBER.CTRCCSTATUS = "A") and'
      
        '  (CONTASRECEBER.AVALA13ID is not null and CONTASRECEBER.AVALA13' +
        'ID <> '#39#39') and'
      '  (CONTASRECEBER.CTRCN2VLR-CONTASRECEBER.CTRCN2TOTREC) > 0 and'
      '  (%MPortador) and'
      '  (%MAvalista)'
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
        Name = 'MCliente'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MPortador'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MAvalista'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 426
    Top = 5
    object SQLContasReceberEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLContasReceberCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
    end
    object SQLContasReceberCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
    end
    object SQLContasReceberDTVENC: TStringField
      FieldName = 'DTVENC'
      FixedChar = True
      Size = 11
    end
    object SQLContasReceberCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCTRCN2VLR: TBCDField
      FieldName = 'CTRCN2VLR'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberEMPRICODULTREC: TIntegerField
      FieldName = 'EMPRICODULTREC'
    end
    object SQLContasReceberDTULTREC: TStringField
      FieldName = 'DTULTREC'
      FixedChar = True
      Size = 11
    end
    object SQLContasReceberCTRCN2TOTREC: TBCDField
      FieldName = 'CTRCN2TOTREC'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCN2TXJURO: TBCDField
      FieldName = 'CTRCN2TXJURO'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCN2TXMULTA: TBCDField
      FieldName = 'CTRCN2TXMULTA'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCN2TOTDESCREC: TBCDField
      FieldName = 'CTRCN2TOTDESCREC'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object SQLContasReceberNUMEA30DESCR: TStringField
      FieldName = 'NUMEA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLContasReceberNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
    end
    object SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object SQLContasReceberCLIEA15FONE1: TStringField
      FieldName = 'CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCLIEA15FONE2: TStringField
      FieldName = 'CLIEA15FONE2'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberAVALA60RAZAOSOC: TStringField
      FieldName = 'AVALA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberPORTA60DESCR: TStringField
      FieldName = 'PORTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberTPDCA60DESCR: TStringField
      FieldName = 'TPDCA60DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLContasReceberCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
    end
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 598
    Top = 305
  end
  object SQLCliente: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CLIENTE'
      'order by CLIEA60RAZAOSOC')
    Left = 570
    Top = 305
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    ReportName = 'D:\DESENV\UnitGestao\Relatorios\Contas a Receber Vencidas.rpt'
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
    Left = 250
    Top = 5
  end
  object SQLPortador: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      'PORTICOD,'
      'PORTA60DESCR'
      'from'
      'PORTADOR'
      'order by'
      'PORTA60DESCR')
    Left = 570
    Top = 346
    object SQLPortadorPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.PORTADOR.PORTICOD'
    end
    object SQLPortadorPORTA60DESCR: TStringField
      FieldName = 'PORTA60DESCR'
      Origin = 'DB.PORTADOR.PORTA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLPortador: TDataSource
    DataSet = SQLPortador
    Left = 598
    Top = 346
  end
end
