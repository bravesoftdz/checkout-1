inherited FormRelatorioListagemContato: TFormRelatorioListagemContato
  Left = 103
  Top = 68
  Caption = 'Listagem de Contatos'
  ClientHeight = 544
  ClientWidth = 804
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox: TScrollBox
    Width = 804
    Height = 528
    inherited Bevel2: TBevel
      Width = 800
    end
    inherited Image1: TImage
      Top = 522
      Width = 800
    end
    inherited LblTituloTela: TPanel
      Width = 800
      inherited Bevel1: TBevel
        Width = 798
      end
    end
    inherited PanelCentro: TPanel
      Top = 68
      Width = 424
      Height = 425
      inherited BtnVisualizar: TSpeedButton
        Left = 159
        Top = 395
      end
      inherited EmpresaGroup: TGroupBox
        Height = 131
        inherited ListaEmpresas: TListBox
          Height = 58
        end
      end
      inherited GroupBox1: TGroupBox
        Top = 131
      end
      object GroupBox2: TGroupBox
        Left = 11
        Top = 210
        Width = 407
        Height = 41
        Caption = ' Tipo de Cliente '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object ComboTipoCliente: TRxDBLookupCombo
          Left = 8
          Top = 14
          Width = 389
          Height = 21
          DropDownCount = 8
          LookupField = 'TPCLICOD'
          LookupDisplay = 'TPCLA30DESCR'
          LookupSource = DSTipoCliente
          TabOrder = 0
        end
      end
      object GroupBox3: TGroupBox
        Left = 11
        Top = 250
        Width = 201
        Height = 41
        Caption = ' Tipo de Contato '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object ComboTipoContato: TRxDBLookupCombo
          Left = 8
          Top = 14
          Width = 186
          Height = 21
          DropDownCount = 8
          LookupField = 'TPCTICOD'
          LookupDisplay = 'TPCTA60DESCR'
          LookupSource = DSTipoContato
          TabOrder = 0
        end
      end
      object GroupBox4: TGroupBox
        Left = 11
        Top = 291
        Width = 200
        Height = 41
        Caption = ' Vendedor '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        object ComboVendedor: TRxDBLookupCombo
          Left = 8
          Top = 13
          Width = 185
          Height = 21
          DropDownCount = 8
          LookupField = 'VENDICOD'
          LookupDisplay = 'VENDA60NOME'
          LookupSource = DSVendedor
          TabOrder = 0
        end
      end
      object TipoStatus: TRadioGroup
        Left = 11
        Top = 332
        Width = 284
        Height = 55
        Columns = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Todos Contatos'
          'Contatos '#224' Fazer'
          'Contatos Feitos')
        ParentFont = False
        TabOrder = 8
      end
      object GroupBox5: TGroupBox
        Left = 215
        Top = 250
        Width = 203
        Height = 41
        Caption = ' Tipo de Retorno '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object ComboTipoRetorno: TRxDBLookupCombo
          Left = 6
          Top = 14
          Width = 187
          Height = 21
          DropDownCount = 8
          LookupField = 'TPRTICOD'
          LookupDisplay = 'TPRTA60DESCR'
          LookupSource = DSTipoRetorno
          TabOrder = 0
        end
      end
      object GroupBox6: TGroupBox
        Left = 214
        Top = 291
        Width = 203
        Height = 41
        Caption = ' Usu'#225'rio '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        object ComboUsuario: TRxDBLookupCombo
          Left = 8
          Top = 13
          Width = 187
          Height = 21
          DropDownCount = 8
          LookupField = 'USUAICOD'
          LookupDisplay = 'USUAA60LOGIN'
          LookupSource = DSSQLUsuario
          TabOrder = 0
        end
      end
      object GroupBox7: TGroupBox
        Left = 12
        Top = 172
        Width = 407
        Height = 36
        Caption = ' Cliente '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object ComboCliente: TRxDBLookupCombo
          Left = 8
          Top = 13
          Width = 392
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
        end
      end
      object GroupOrdem: TRadioGroup
        Left = 299
        Top = 332
        Width = 118
        Height = 54
        Caption = ' Ordem '
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Cliente / Data'
          'Data / Cliente')
        ParentFont = False
        TabOrder = 9
      end
    end
  end
  inherited Progresso: TProgressBar
    Top = 528
    Width = 804
  end
  inherited TblTemporaria: TTable
    TableName = 'Contatos.DB'
    object TblTemporariaCHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 60
    end
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object TblTemporariaCONTDCONTATO: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'CONTDCONTATO'
      Origin = 'DB.CONTATO.CONTDCONTATO'
    end
    object TblTemporariaCONTICOD: TIntegerField
      FieldName = 'CONTICOD'
      Origin = 'DB.CONTATO.CONTICOD'
    end
    object TblTemporariaVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.CONTATO.VENDICOD'
    end
    object TblTemporariaCLIEA13ID: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTATO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaTPCLICOD: TIntegerField
      FieldName = 'TPCLICOD'
      Origin = 'DB.CONTATO.TPCLICOD'
    end
    object TblTemporariaTPCTICOD: TIntegerField
      FieldName = 'TPCTICOD'
      Origin = 'DB.CONTATO.TPCTICOD'
    end
    object TblTemporariaTPRTICOD: TIntegerField
      FieldName = 'TPRTICOD'
      Origin = 'DB.CONTATO.TPRTICOD'
    end
    object TblTemporariaTPCTICODPROX: TIntegerField
      FieldName = 'TPCTICODPROX'
      Origin = 'DB.CONTATO.TPCTICODPROX'
    end
    object TblTemporariaCONTDPROXCONT: TDateTimeField
      FieldName = 'CONTDPROXCONT'
      Origin = 'DB.CONTATO.CONTDPROXCONT'
    end
    object TblTemporariaCONTDREAL: TDateTimeField
      FieldName = 'CONTDREAL'
      Origin = 'DB.CONTATO.CONTDREAL'
    end
    object TblTemporariaCONTA255OBS: TStringField
      DisplayLabel = 'Obs'
      FieldName = 'CONTA255OBS'
      Origin = 'DB.CONTATO.CONTA255OBS'
      FixedChar = True
      Size = 255
    end
    object TblTemporariaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONTATO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object TblTemporariaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONTATO.REGISTRO'
    end
    object TblTemporariaCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCLIEA60CIDRES: TStringField
      FieldName = 'CLIEA60CIDRES'
      Origin = 'DB.CLIENTE.CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCLIEA2UFRES: TStringField
      FieldName = 'CLIEA2UFRES'
      Origin = 'DB.CLIENTE.CLIEA2UFRES'
      FixedChar = True
      Size = 2
    end
    object TblTemporariaTPCLA30DESCR: TStringField
      FieldName = 'TPCLA30DESCR'
      FixedChar = True
      Size = 30
    end
    object TblTemporariaTPCTA60DESCR: TStringField
      FieldName = 'TPCTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaTPRTA60DESCR: TStringField
      FieldName = 'TPRTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCNTDA254DETALHE: TStringField
      FieldName = 'CNTDA254DETALHE'
      Size = 254
    end
    object TblTemporariaCONTA60CONTATO: TStringField
      FieldName = 'CONTA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCLIEA15FONE1: TStringField
      FieldName = 'CLIEA15FONE1'
      Size = 15
    end
  end
  object SQLTipoContato: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From TipoContato order by TPCTA60DESCR ')
    Macros = <>
    Left = 274
    Top = 37
    object SQLTipoContatoTPCTICOD: TIntegerField
      FieldName = 'TPCTICOD'
      Origin = 'DB.TIPOCONTATO.TPCTICOD'
    end
    object SQLTipoContatoTPCTA60DESCR: TStringField
      FieldName = 'TPCTA60DESCR'
      Origin = 'DB.TIPOCONTATO.TPCTA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSTipoContato: TDataSource
    DataSet = SQLTipoContato
    Left = 307
    Top = 37
  end
  object SQLTipoCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From TipoCliente order by TPCLA30DESCR ')
    Macros = <>
    Left = 354
    Top = 37
    object SQLTipoClienteTPCLICOD: TIntegerField
      FieldName = 'TPCLICOD'
      Origin = 'DB.TIPOCLIENTE.TPCLICOD'
    end
    object SQLTipoClienteTPCLA30DESCR: TStringField
      FieldName = 'TPCLA30DESCR'
      Origin = 'DB.TIPOCLIENTE.TPCLA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object DSTipoCliente: TDataSource
    DataSet = SQLTipoCliente
    Left = 387
    Top = 37
  end
  object SQLVendedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From Vendedor order by VENDA60NOME')
    Macros = <>
    Left = 442
    Top = 37
    object SQLVendedorVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.VENDEDOR.VENDICOD'
    end
    object SQLVendedorVENDA60NOME: TStringField
      FieldName = 'VENDA60NOME'
      Origin = 'DB.VENDEDOR.VENDA60NOME'
      FixedChar = True
      Size = 60
    end
  end
  object DSVendedor: TDataSource
    DataSet = SQLVendedor
    Left = 475
    Top = 37
  end
  object SQLTipoRetorno: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From TipoRetorno order by TPRTA60DESCR ')
    Macros = <>
    Left = 202
    Top = 37
    object SQLTipoRetornoTPRTICOD: TIntegerField
      FieldName = 'TPRTICOD'
      Origin = 'DB.TIPORETORNO.TPRTICOD'
    end
    object SQLTipoRetornoTPRTA60DESCR: TStringField
      FieldName = 'TPRTA60DESCR'
      Origin = 'DB.TIPORETORNO.TPRTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTipoRetornoTPCTICOD: TIntegerField
      FieldName = 'TPCTICOD'
      Origin = 'DB.TIPORETORNO.TPCTICOD'
    end
  end
  object DSTipoRetorno: TDataSource
    DataSet = SQLTipoRetorno
    Left = 235
    Top = 37
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    ReportName = 'C:\Unit\Gestao\Relatorios\Vendas Por Periodo.rpt'
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
    Left = 235
    Top = 4
  end
  object SQLContato: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select CONTATO.*,'
      '       USUARIO.USUAA60LOGIN,'
      '       CLIENTE.CLIEA60RAZAOSOC,'
      '       CLIENTE.CLIEA60CIDRES,'
      '       CLIENTE.CLIEA2UFRES,'
      '       CLIENTE.CLIEA15FONE1,'
      '       TIPOCLIENTE.TPCLA30DESCR,'
      '       TIPOCONTATO.TPCTA60DESCR,'
      '       TIPORETORNO.TPRTA60DESCR,'
      '       CONTATODETALHE.CNTDA254DETALHE'
      'From '
      '  CONTATO'
      '  inner join CLIENTE on CONTATO.CLIEA13ID=CLIENTE.CLIEA13ID'
      
        '  left outer join TIPOCONTATO on CONTATO.TPCTICOD= TIPOCONTATO.T' +
        'PCTICOD'
      
        '  left outer join TIPORETORNO on CONTATO.TPRTICOD= TIPORETORNO.T' +
        'PRTICOD'
      
        '  left outer join TIPOCLIENTE on CLIENTE.TPCLICOD= TIPOCLIENTE.T' +
        'PCLICOD'
      
        '  left outer join CONTATODETALHE on CONTATO.EMPRICOD=CONTATODETA' +
        'LHE.EMPRICOD and CONTATO.CONTDCONTATO=CONTATODETALHE.CONTDCONTAT' +
        'O and CONTATO.CONTICOD=CONTATODETALHE.CONTICOD '
      '  left outer join USUARIO on CONTATO.USUAICOD=USUARIO.USUAICOD'
      'Where'
      '   (%MData) and'
      '   (%MCliente) and'
      '   (%MEmpresa) and'
      '   (%MVendedor) and'
      '   (%MTipoCliente) and'
      '   (%MTipoContato) and '
      '   (%MTipoRetorno) and '
      '   (%MFeitoAFazer) and'
      '   (%MUsuario)'
      'order by '
      '   %MOrdem')
    Macros = <
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
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MVendedor'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTipoCliente'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTipoContato'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTipoRetorno'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MFeitoAFazer'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MUsuario'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MOrdem'
        ParamType = ptInput
        Value = 'CONTDCONTATO'
      end>
    Left = 159
    Top = 5
    object SQLContatoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLContatoCONTDCONTATO: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'CONTDCONTATO'
      Origin = 'DB.CONTATO.CONTDCONTATO'
    end
    object SQLContatoCONTICOD: TIntegerField
      FieldName = 'CONTICOD'
      Origin = 'DB.CONTATO.CONTICOD'
    end
    object SQLContatoVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.CONTATO.VENDICOD'
    end
    object SQLContatoCLIEA13ID: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTATO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContatoTPCLICOD: TIntegerField
      FieldName = 'TPCLICOD'
      Origin = 'DB.CONTATO.TPCLICOD'
    end
    object SQLContatoTPCTICOD: TIntegerField
      FieldName = 'TPCTICOD'
      Origin = 'DB.CONTATO.TPCTICOD'
    end
    object SQLContatoTPRTICOD: TIntegerField
      FieldName = 'TPRTICOD'
      Origin = 'DB.CONTATO.TPRTICOD'
    end
    object SQLContatoTPCTICODPROX: TIntegerField
      FieldName = 'TPCTICODPROX'
      Origin = 'DB.CONTATO.TPCTICODPROX'
    end
    object SQLContatoCONTDPROXCONT: TDateTimeField
      FieldName = 'CONTDPROXCONT'
      Origin = 'DB.CONTATO.CONTDPROXCONT'
    end
    object SQLContatoCONTDREAL: TDateTimeField
      FieldName = 'CONTDREAL'
      Origin = 'DB.CONTATO.CONTDREAL'
    end
    object SQLContatoCONTA255OBS: TStringField
      DisplayLabel = 'Obs'
      FieldName = 'CONTA255OBS'
      Origin = 'DB.CONTATO.CONTA255OBS'
      FixedChar = True
      Size = 255
    end
    object SQLContatoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONTATO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLContatoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONTATO.REGISTRO'
    end
    object SQLContatoCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLContatoCLIEA60CIDRES: TStringField
      FieldName = 'CLIEA60CIDRES'
      Origin = 'DB.CLIENTE.CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object SQLContatoCLIEA2UFRES: TStringField
      FieldName = 'CLIEA2UFRES'
      Origin = 'DB.CLIENTE.CLIEA2UFRES'
      FixedChar = True
      Size = 2
    end
    object SQLContatoTPCLA30DESCR: TStringField
      FieldName = 'TPCLA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLContatoTPCTA60DESCR: TStringField
      FieldName = 'TPCTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLContatoTPRTA60DESCR: TStringField
      FieldName = 'TPRTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLContatoCNTDA254DETALHE: TStringField
      FieldName = 'CNTDA254DETALHE'
      Size = 254
    end
    object SQLContatoCONTA60CONTATO: TStringField
      FieldName = 'CONTA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object SQLContatoUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
    object SQLContatoCLIEA15FONE1: TStringField
      FieldName = 'CLIEA15FONE1'
      Size = 15
    end
  end
  object SQLUsuario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From USUARIO order by USUAA60LOGIN')
    Macros = <>
    Left = 514
    Top = 37
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
  object DSSQLUsuario: TDataSource
    DataSet = SQLUsuario
    Left = 547
    Top = 37
  end
  object SQLCliente: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CLIENTE '
      'Where (Not CLIEA60RAZAOSOC is Null) and (CLIEA60RAZAOSOC<>'#39#39')'
      'order by CLIEA60RAZAOSOC')
    Left = 570
    Top = 302
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 598
    Top = 302
  end
end
