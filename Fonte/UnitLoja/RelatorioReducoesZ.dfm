inherited FormRelatorioReducaoZ: TFormRelatorioReducaoZ
  Left = 270
  Top = 126
  Caption = 'Relatorio de Redu'#231#245'es Z'
  ClientWidth = 793
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Width = 793
  end
  inherited ScrollBox: TScrollBox
    Width = 793
    inherited PanelCentro: TPanel
      Left = 179
      Width = 430
      Height = 317
      inherited BtnVisualizar: TSpeedButton
        Left = 290
        Top = 260
      end
      object GroupBox3: TGroupBox
        Left = 12
        Top = 206
        Width = 407
        Height = 40
        Caption = ' Terminal '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object ComboTerminal: TRxDBLookupCombo
          Left = 8
          Top = 14
          Width = 393
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
      object RadioTotalizar: TRadioGroup
        Left = 12
        Top = 251
        Width = 247
        Height = 37
        Caption = ' Totalizar por '
        Columns = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Numerario'
          'Aliquota')
        ParentFont = False
        TabOrder = 3
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 789
      inherited PanelCabecalho: TPanel
        Width = 789
        inherited PanelNavigator: TPanel
          Width = 789
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 789
          end
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'ReducaoZDia.db'
    object TblTemporariaNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.REDUCAOZDIAFORMA.NUMEICOD'
    end
    object TblTemporariaREFON3VLR: TBCDField
      FieldName = 'REFON3VLR'
      Origin = 'DB.REDUCAOZDIAFORMA.REFON3VLR'
      Precision = 15
      Size = 3
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
    object TblTemporariaREDUN3VLRCANC: TBCDField
      FieldName = 'REDUN3VLRCANC'
      Origin = 'DB.REDUCAOZDIA.REDUN3VLRCANC'
      Precision = 15
      Size = 3
    end
    object TblTemporariaREDUN3VLRDESC: TBCDField
      FieldName = 'REDUN3VLRDESC'
      Origin = 'DB.REDUCAOZDIA.REDUN3VLRDESC'
      Precision = 15
      Size = 3
    end
    object TblTemporariaREDUN3VENDALIQ: TBCDField
      FieldName = 'REDUN3VENDALIQ'
      Origin = 'DB.REDUCAOZDIA.REDUN3VENDALIQ'
      Precision = 15
      Size = 3
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
    object TblTemporariaTERMINAL: TStringField
      FieldName = 'TERMINAL'
      Size = 30
    end
    object TblTemporariaNUMERARIO: TStringField
      FieldName = 'NUMERARIO'
      Size = 30
    end
    object TblTemporariaLBALIQ1: TStringField
      FieldName = 'LBALIQ1'
      Size = 10
    end
    object TblTemporariaLBALIQ2: TStringField
      FieldName = 'LBALIQ2'
      Size = 10
    end
    object TblTemporariaLBALIQ3: TStringField
      FieldName = 'LBALIQ3'
      Size = 10
    end
    object TblTemporariaLBALIQ4: TStringField
      FieldName = 'LBALIQ4'
      Size = 10
    end
    object TblTemporariaLBALIQ5: TStringField
      FieldName = 'LBALIQ5'
      Size = 10
    end
    object TblTemporariaLBALIQ6: TStringField
      FieldName = 'LBALIQ6'
      Size = 10
    end
    object TblTemporariaDinheiro: TFloatField
      FieldName = 'Dinheiro'
    end
    object TblTemporariaChequeVista: TFloatField
      FieldName = 'ChequeVista'
    end
    object TblTemporariaChequePre: TFloatField
      FieldName = 'ChequePre'
    end
    object TblTemporariaRedeShop: TFloatField
      FieldName = 'RedeShop'
    end
    object TblTemporariaRedeCard: TFloatField
      FieldName = 'RedeCard'
    end
    object TblTemporariaVisaElectron: TFloatField
      FieldName = 'VisaElectron'
    end
    object TblTemporariaVisa: TFloatField
      FieldName = 'Visa'
    end
    object TblTemporariaBanriDeb: TFloatField
      FieldName = 'BanriDeb'
    end
    object TblTemporariaBanriCred: TFloatField
      FieldName = 'BanriCred'
    end
    object TblTemporariaFatura: TFloatField
      FieldName = 'Fatura'
    end
    object TblTemporariaTicket: TFloatField
      FieldName = 'Ticket'
    end
    object TblTemporariaBonus: TFloatField
      FieldName = 'Bonus'
    end
    object TblTemporariaAmex: TFloatField
      FieldName = 'Amex'
    end
    object TblTemporariaSuperCompras: TFloatField
      FieldName = 'SuperCompras'
    end
    object TblTemporariaRefeisul: TFloatField
      FieldName = 'Refeisul'
    end
    object TblTemporariaQuero: TFloatField
      FieldName = 'Quero'
    end
    object TblTemporariaREDUITOTCUPOM: TIntegerField
      FieldName = 'REDUITOTCUPOM'
      Origin = 'DB.REDUCAOZDIA.REDUITOTCUPOM'
    end
  end
  object SQLReducaoZNum: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      '  ReducaoZDia.TERMICOD,'
      '  ReducaoZDiaForma.NUMEICOD,'
      '  ReducaoZDiaForma.REFON3VLR,'
      '  ReducaoZDia.REDUDEMIS,'
      '  ReducaoZDia.REDUN3VENDABRUTA,'
      '  ReducaoZDia.REDUN3VLRCANC,'
      '  ReducaoZDia.REDUN3VLRDESC,'
      '  ReducaoZDia.REDUN3VENDALIQ,'
      '  ReducaoZDia.REDUN3ALIQ1,'
      '  ReducaoZDia.REDUN3BASE1,'
      '  ReducaoZDia.REDUN3IMPO1,'
      '  ReducaoZDia.REDUN3ALIQ2,'
      '  ReducaoZDia.REDUN3BASE2,'
      '  ReducaoZDia.REDUN3IMPO2,'
      '  ReducaoZDia.REDUN3ALIQ3,'
      '  ReducaoZDia.REDUN3BASE3,'
      '  ReducaoZDia.REDUN3IMPO3,'
      '  ReducaoZDia.REDUN3ALIQ4,'
      '  ReducaoZDia.REDUN3BASE4,'
      '  ReducaoZDia.REDUN3IMPO4,'
      '  ReducaoZDia.REDUN3ALIQ5,'
      '  ReducaoZDia.REDUN3BASE5,'
      '  ReducaoZDia.REDUN3IMPO5,'
      '  ReducaoZDia.REDUN3ALIQ6,'
      '  ReducaoZDia.REDUN3BASE6,'
      '  ReducaoZDia.REDUN3IMPO6,'
      '  ReducaoZDia.REDUITOTCUPOM'
      'From'
      
        '  ReducaoZDiaForma Inner Join ReducaoZDia on ReducaoZDiaForma.RE' +
        'DUA13ID = ReducaoZDia.REDUA13ID'
      'Where'
      '  (%MEmpresa) and'
      '  (%MFiltro)  and'
      '  (%MTerminal)'
      'Order by'
      '  ReducaoZDia.REDUDEMIS asc,  ReducaoZDia.TERMICOD')
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
      end
      item
        DataType = ftString
        Name = 'MTerminal'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 418
    Top = 5
    object SQLReducaoZNumNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.REDUCAOZDIAFORMA.NUMEICOD'
    end
    object SQLReducaoZNumREFON3VLR: TBCDField
      FieldName = 'REFON3VLR'
      Origin = 'DB.REDUCAOZDIAFORMA.REFON3VLR'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZNumREDUDEMIS: TDateTimeField
      FieldName = 'REDUDEMIS'
      Origin = 'DB.REDUCAOZDIA.REDUDEMIS'
    end
    object SQLReducaoZNumREDUN3VENDABRUTA: TBCDField
      FieldName = 'REDUN3VENDABRUTA'
      Origin = 'DB.REDUCAOZDIA.REDUN3VENDABRUTA'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZNumREDUN3VLRCANC: TBCDField
      FieldName = 'REDUN3VLRCANC'
      Origin = 'DB.REDUCAOZDIA.REDUN3VLRCANC'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZNumREDUN3VLRDESC: TBCDField
      FieldName = 'REDUN3VLRDESC'
      Origin = 'DB.REDUCAOZDIA.REDUN3VLRDESC'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZNumREDUN3VENDALIQ: TBCDField
      FieldName = 'REDUN3VENDALIQ'
      Origin = 'DB.REDUCAOZDIA.REDUN3VENDALIQ'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZNumREDUN3ALIQ1: TBCDField
      FieldName = 'REDUN3ALIQ1'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ1'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZNumREDUN3BASE1: TBCDField
      FieldName = 'REDUN3BASE1'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE1'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZNumREDUN3IMPO1: TBCDField
      FieldName = 'REDUN3IMPO1'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO1'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZNumREDUN3ALIQ2: TBCDField
      FieldName = 'REDUN3ALIQ2'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ2'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZNumREDUN3BASE2: TBCDField
      FieldName = 'REDUN3BASE2'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE2'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZNumREDUN3IMPO2: TBCDField
      FieldName = 'REDUN3IMPO2'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO2'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZNumREDUN3ALIQ3: TBCDField
      FieldName = 'REDUN3ALIQ3'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ3'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZNumREDUN3BASE3: TBCDField
      FieldName = 'REDUN3BASE3'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE3'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZNumREDUN3IMPO3: TBCDField
      FieldName = 'REDUN3IMPO3'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO3'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZNumREDUN3ALIQ4: TBCDField
      FieldName = 'REDUN3ALIQ4'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ4'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZNumREDUN3BASE4: TBCDField
      FieldName = 'REDUN3BASE4'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE4'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZNumREDUN3IMPO4: TBCDField
      FieldName = 'REDUN3IMPO4'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO4'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZNumREDUN3ALIQ5: TBCDField
      FieldName = 'REDUN3ALIQ5'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ5'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZNumREDUN3BASE5: TBCDField
      FieldName = 'REDUN3BASE5'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE5'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZNumREDUN3IMPO5: TBCDField
      FieldName = 'REDUN3IMPO5'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO5'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZNumREDUN3ALIQ6: TBCDField
      FieldName = 'REDUN3ALIQ6'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ6'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZNumREDUN3BASE6: TBCDField
      FieldName = 'REDUN3BASE6'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE6'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZNumREDUN3IMPO6: TBCDField
      FieldName = 'REDUN3IMPO6'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO6'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZNumTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.REDUCAOZDIA.TERMICOD'
    end
    object SQLReducaoZNumREDUITOTCUPOM: TIntegerField
      FieldName = 'REDUITOTCUPOM'
      Origin = 'DB.REDUCAOZDIA.REDUITOTCUPOM'
    end
  end
  object SQLTerminal: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TERMINAL'
      'Where'
      '(%MFiltro)'
      'order by TERMA60DESCR')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 631
    Top = 5
  end
  object DSSQLTerminal: TDataSource
    DataSet = SQLTerminal
    Left = 659
    Top = 5
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    ReportName = 'C:\Desenv\GestaoOficial\Relatorios\Vendas Por Periodo.rpt'
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
    Left = 240
    Top = 4
  end
  object SQLReducaoZAliq: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      '  ReducaoZDia.TERMICOD,'
      '  ReducaoZDia.REDUDEMIS,'
      '  ReducaoZDia.REDUN3VENDABRUTA,'
      '  ReducaoZDia.REDUN3VLRCANC,'
      '  ReducaoZDia.REDUN3VLRDESC,'
      '  ReducaoZDia.REDUN3VENDALIQ,'
      '  ReducaoZDia.REDUN3ALIQ1,'
      '  ReducaoZDia.REDUN3BASE1,'
      '  ReducaoZDia.REDUN3IMPO1,'
      '  ReducaoZDia.REDUN3ALIQ2,'
      '  ReducaoZDia.REDUN3BASE2,'
      '  ReducaoZDia.REDUN3IMPO2,'
      '  ReducaoZDia.REDUN3ALIQ3,'
      '  ReducaoZDia.REDUN3BASE3,'
      '  ReducaoZDia.REDUN3IMPO3,'
      '  ReducaoZDia.REDUN3ALIQ4,'
      '  ReducaoZDia.REDUN3BASE4,'
      '  ReducaoZDia.REDUN3IMPO4,'
      '  ReducaoZDia.REDUN3ALIQ5,'
      '  ReducaoZDia.REDUN3BASE5,'
      '  ReducaoZDia.REDUN3IMPO5,'
      '  ReducaoZDia.REDUN3ALIQ6,'
      '  ReducaoZDia.REDUN3BASE6,'
      '  ReducaoZDia.REDUN3IMPO6,'
      '  ReducaoZDia.REDUITOTCUPOM'
      'From'
      '  ReducaoZDia'
      'Where'
      '  (%MEmpresa) and'
      '  (%MFiltro)  and'
      '  (%MTerminal)'
      'Order by'
      '  ReducaoZDia.REDUDEMIS asc,  ReducaoZDia.TERMICOD')
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
      end
      item
        DataType = ftString
        Name = 'MTerminal'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 448
    Top = 5
    object SQLReducaoZAliqTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.REDUCAOZDIA.TERMICOD'
    end
    object SQLReducaoZAliqREDUDEMIS: TDateTimeField
      FieldName = 'REDUDEMIS'
      Origin = 'DB.REDUCAOZDIA.REDUDEMIS'
    end
    object SQLReducaoZAliqREDUN3VENDABRUTA: TBCDField
      FieldName = 'REDUN3VENDABRUTA'
      Origin = 'DB.REDUCAOZDIA.REDUN3VENDABRUTA'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZAliqREDUN3VLRCANC: TBCDField
      FieldName = 'REDUN3VLRCANC'
      Origin = 'DB.REDUCAOZDIA.REDUN3VLRCANC'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZAliqREDUN3VLRDESC: TBCDField
      FieldName = 'REDUN3VLRDESC'
      Origin = 'DB.REDUCAOZDIA.REDUN3VLRDESC'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZAliqREDUN3VENDALIQ: TBCDField
      FieldName = 'REDUN3VENDALIQ'
      Origin = 'DB.REDUCAOZDIA.REDUN3VENDALIQ'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZAliqREDUN3ALIQ1: TBCDField
      FieldName = 'REDUN3ALIQ1'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ1'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZAliqREDUN3BASE1: TBCDField
      FieldName = 'REDUN3BASE1'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE1'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZAliqREDUN3IMPO1: TBCDField
      FieldName = 'REDUN3IMPO1'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO1'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZAliqREDUN3ALIQ2: TBCDField
      FieldName = 'REDUN3ALIQ2'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ2'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZAliqREDUN3BASE2: TBCDField
      FieldName = 'REDUN3BASE2'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE2'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZAliqREDUN3IMPO2: TBCDField
      FieldName = 'REDUN3IMPO2'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO2'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZAliqREDUN3ALIQ3: TBCDField
      FieldName = 'REDUN3ALIQ3'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ3'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZAliqREDUN3BASE3: TBCDField
      FieldName = 'REDUN3BASE3'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE3'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZAliqREDUN3IMPO3: TBCDField
      FieldName = 'REDUN3IMPO3'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO3'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZAliqREDUN3ALIQ4: TBCDField
      FieldName = 'REDUN3ALIQ4'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ4'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZAliqREDUN3BASE4: TBCDField
      FieldName = 'REDUN3BASE4'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE4'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZAliqREDUN3IMPO4: TBCDField
      FieldName = 'REDUN3IMPO4'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO4'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZAliqREDUN3ALIQ5: TBCDField
      FieldName = 'REDUN3ALIQ5'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ5'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZAliqREDUN3BASE5: TBCDField
      FieldName = 'REDUN3BASE5'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE5'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZAliqREDUN3IMPO5: TBCDField
      FieldName = 'REDUN3IMPO5'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO5'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZAliqREDUN3ALIQ6: TBCDField
      FieldName = 'REDUN3ALIQ6'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ6'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZAliqREDUN3BASE6: TBCDField
      FieldName = 'REDUN3BASE6'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE6'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZAliqREDUN3IMPO6: TBCDField
      FieldName = 'REDUN3IMPO6'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO6'
      Precision = 15
      Size = 3
    end
    object SQLReducaoZAliqREDUITOTCUPOM: TIntegerField
      FieldName = 'REDUITOTCUPOM'
      Origin = 'DB.REDUCAOZDIA.REDUITOTCUPOM'
    end
  end
end
