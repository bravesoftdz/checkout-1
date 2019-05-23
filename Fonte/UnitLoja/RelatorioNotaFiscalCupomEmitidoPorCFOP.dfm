inherited FormRelatorioNotaFiscalEmitidaPorCFOP: TFormRelatorioNotaFiscalEmitidaPorCFOP
  Left = 131
  Top = 125
  Caption = 'Relat'#243'rio de Notas Fiscais / Cupons Emitidos por CFOP'
  ClientHeight = 552
  ClientWidth = 792
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Top = 536
    Width = 792
  end
  inherited ScrollBox: TScrollBox
    Width = 792
    Height = 536
    inherited LblTituloTela: TPanel
      Width = 788
    end
    inherited PanelCentro: TPanel
      Left = 190
      Top = 86
      Width = 433
      Height = 425
      inherited BtnVisualizar: TSpeedButton
        Left = 286
        Top = 382
      end
      object GroupFiltro: TGroupBox
        Left = 12
        Top = 241
        Width = 407
        Height = 135
        Caption = 'Filtros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Label5: TLabel
          Left = 12
          Top = 17
          Width = 37
          Height = 13
          Caption = 'Status'
        end
        object Label6: TLabel
          Left = 210
          Top = 17
          Width = 28
          Height = 13
          Caption = 'CFOP'
        end
        object Label9: TLabel
          Left = 11
          Top = 92
          Width = 54
          Height = 13
          Caption = 'Vendedor'
        end
        object Label7: TLabel
          Left = 210
          Top = 91
          Width = 50
          Height = 13
          Caption = 'Portador'
        end
        object Label8: TLabel
          Left = 11
          Top = 54
          Width = 50
          Height = 13
          Caption = 'Terminal'
        end
        object ComboCFOP: TRxDBLookupCombo
          Left = 206
          Top = 30
          Width = 193
          Height = 21
          DropDownCount = 8
          DisplayEmpty = 'Todos...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'CFOPA5COD'
          LookupDisplay = 'CFOPA5COD'
          LookupSource = DSSQLCFOP
          ParentFont = False
          TabOrder = 1
          OnKeyDown = ComboPortadorKeyDown
        end
        object ComboStatus: TComboBox
          Left = 9
          Top = 30
          Width = 193
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemHeight = 13
          ParentFont = False
          TabOrder = 0
          Items.Strings = (
            'Aberta'
            'Encerrada'
            'Cancelada')
        end
        object ComboVendedor: TRxDBLookupCombo
          Left = 9
          Top = 105
          Width = 193
          Height = 21
          DropDownCount = 8
          DisplayEmpty = 'Todos...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'VENDICOD'
          LookupDisplay = 'VENDA60NOME'
          LookupSource = DSSQLVendedor
          ParentFont = False
          TabOrder = 3
          OnKeyDown = ComboPortadorKeyDown
        end
        object ComboPortador: TRxDBLookupCombo
          Left = 207
          Top = 105
          Width = 193
          Height = 21
          DropDownCount = 8
          DisplayEmpty = 'Todos...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'PORTICOD'
          LookupDisplay = 'PORTA60DESCR'
          LookupSource = DSSQLPortador
          ParentFont = False
          TabOrder = 4
          OnKeyDown = ComboPortadorKeyDown
        end
        object ComboTerminal: TRxDBLookupCombo
          Left = 9
          Top = 67
          Width = 390
          Height = 21
          DropDownCount = 8
          DisplayEmpty = 'Todos...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'TERMICOD'
          LookupDisplay = 'TERMA60DESCR'
          LookupSource = DSSQLTerminal
          ParentFont = False
          TabOrder = 2
          OnKeyDown = ComboPortadorKeyDown
        end
      end
      object RadioTipo: TRadioGroup
        Left = 12
        Top = 202
        Width = 408
        Height = 39
        Caption = 'Tipo'
        Columns = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 2
        Items.Strings = (
          'Cupom'
          'Notas Fiscais'
          'Cupom/NotasFiscais')
        ParentFont = False
        TabOrder = 3
      end
      object CKResumido: TCheckBox
        Left = 23
        Top = 384
        Width = 195
        Height = 17
        Caption = 'Resumido para Contabilidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
    end
    inherited PanelNavigator: TPanel
      Width = 788
      inherited AdvPanelNavigator: TAdvOfficeStatusBar
        Width = 788
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'RelNotaEmitidaCFOP.db'
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
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
    object TblTemporariaSERIA5COD: TStringField
      FieldName = 'SERIA5COD'
      FixedChar = True
      Size = 5
    end
    object TblTemporariaOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
    end
    object TblTemporariaNOFIINUMERO: TIntegerField
      FieldName = 'NOFIINUMERO'
    end
    object TblTemporariaNOFICSTATUS: TStringField
      FieldName = 'NOFICSTATUS'
      FixedChar = True
      Size = 1
    end
    object TblTemporariaNOFIDEMIS: TDateTimeField
      FieldName = 'NOFIDEMIS'
    end
    object TblTemporariaNOFIN2VLRICMS: TBCDField
      FieldName = 'NOFIN2VLRICMS'
      Precision = 15
      Size = 2
    end
    object TblTemporariaNOFIN2VLRNOTA: TBCDField
      FieldName = 'NOFIN2VLRNOTA'
      Precision = 15
      Size = 3
    end
    object TblTemporariaNOFIN2VLRSUBS: TBCDField
      FieldName = 'NOFIN2VLRSUBS'
      Precision = 15
      Size = 3
    end
    object TblTemporariaFORNA60RAZAOSOC: TStringField
      FieldName = 'FORNA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
    end
    object TblTemporariaEMPRESADESTINO: TIntegerField
      FieldName = 'EMPRESADESTINO'
    end
    object TblTemporariaEMPRA60RAZAOSOC: TStringField
      FieldName = 'EMPRA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaNOFIINROTALAO: TIntegerField
      FieldName = 'NOFIINROTALAO'
    end
    object TblTemporariaCFOPA5COD: TStringField
      FieldName = 'CFOPA5COD'
      FixedChar = True
      Size = 5
    end
    object TblTemporariaNOFIN2BASCALCICMS: TBCDField
      FieldName = 'NOFIN2BASCALCICMS'
      Precision = 15
      Size = 2
    end
    object TblTemporariaPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
    end
    object TblTemporariaPLRCA60DESCR: TStringField
      FieldName = 'PLRCA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object TblTemporariaVENDA60NOME: TStringField
      FieldName = 'VENDA60NOME'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
    end
    object TblTemporariaPORTA60DESCR: TStringField
      FieldName = 'PORTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaNOFIN2VLRICMSFRETE: TBCDField
      FieldName = 'NOFIN2VLRICMSFRETE'
      Precision = 15
      Size = 3
    end
  end
  object SQLNotaFiscal: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      '  NotaFiscal.EMPRICOD,'
      '  NotaFiscal.CLIEA13ID,'
      '  Cliente.CLIEA60RAZAOSOC,'
      '  NotaFiscal.SERIA5COD,'
      '  NotaFiscal.OPESICOD,'
      '  NotaFiscal.NOFIINUMERO,'
      '  NotaFiscal.NOFICSTATUS,'
      '  NotaFiscal.NOFIDEMIS,'
      '  NotaFiscal.NOFIN2VLRICMS,'
      '  NotaFiscal.NOFIN2VLRNOTA,'
      '  NotaFiscal.NOFIN2VLRSUBS,'
      '  Fornecedor.FORNA60RAZAOSOC,'
      '  Fornecedor.FORNICOD,'
      '  Empresa.EMPRICOD as EmpresaDestino,'
      '  Empresa.EMPRA60RAZAOSOC,'
      '  NotaFiscal.NOFIINROTALAO,'
      '  NotaFiscal.CFOPA5COD,'
      '  NotaFiscal.NOFIN2BASCALCICMS,'
      '  PlanoRecebimento.PLRCICOD,'
      '  PlanoRecebimento.PLRCA60DESCR,'
      '  Vendedor.VENDICOD,'
      '  Vendedor.VENDA60NOME,'
      '  Portador.PORTICOD,'
      '  Portador.PORTA60DESCR,'
      '  NotaFiscal.NOFIN2VLRICMSFRETE,'
      '  0    as TERMICOD'
      'From'
      '  NotaFiscal'
      
        'left outer join Cliente          on NotaFiscal.CLIEA13ID    = Cl' +
        'iente.CLIEA13ID'
      
        'left outer join Fornecedor       on NotaFiscal.FORNICOD     = Fo' +
        'rnecedor.FORNICOD'
      
        'left outer join PlanoRecebimento on NotaFiscal.PLRCICOD     = Pl' +
        'anoRecebimento.PLRCICOD'
      
        'left outer join Vendedor         on NotaFiscal.VENDICOD     = Ve' +
        'ndedor.VENDICOD'
      
        'left outer join Empresa          on NotaFiscal.EMPRICODDEST = Em' +
        'presa.EMPRICOD'
      
        'left outer join ContasReceber    on NotaFiscal.NOFIA13ID    = Co' +
        'ntasReceber.NOFIA13ID and ContasReceber.CTRCINROPARC = 1'
      
        'left outer join Portador         on ContasReceber.PORTICOD  = Po' +
        'rtador.PORTICOD'
      'Where'
      '  %Empresa'
      'and'
      '  (%CampoData Between %DataInicial and %DataFinal)'
      'and'
      '  (%Status)'
      'and'
      '  (%CFOP)'
      'and'
      '  (%Vendedor)'
      'and'
      '  (%Portador)'
      'and'
      '  (%Terminal)'
      ''
      'union all'
      ''
      'Select'
      '  Cupom.EMPRICOD,'
      '  Cupom.CLIEA13ID,'
      '  Cliente.CLIEA60RAZAOSOC,'
      '  cast('#39'CF'#39' as char(5)) as SERIA5COD,'
      '  Cupom.OPESICOD,'
      '  Cupom.CUPOINRO as NOFIINUMERO,'
      '  Cupom.CUPOCSTATUS as NOFICSTATUS,'
      '  Cupom.CUPODEMIS as NOFIDEMIS,'
      '  Cupom.CUPON2VLRICMS as NOFIN2VLRICMS,'
      
        '  (Cupom.CUPON2TOTITENS + Cupom.CUPON2ACRESC + Cupom.CUPON3CREDT' +
        'AXA - Cupom.CUPON2DESC) as NOFIN2VLRNOTA,'
      '  0.00 as NOFIN2VLRSUBS,'
      '  cast('#39#39' as Char(60)) as FORNA60RAZAOSOC,'
      '  0    as FORNICOD,'
      '  0    as EmpresaDestino,'
      '  cast('#39#39' as Char(60)) as EMPRA60RAZAOSOC,'
      '  0    as NOFIINROTALAO,'
      '  Cupom.CFOPA5COD,'
      '  Cupom.CUPON2BASEICMS as NOFIN2BASCALCICMS,'
      '  PlanoRecebimento.PLRCICOD,'
      '  PlanoRecebimento.PLRCA60DESCR,'
      '  Vendedor.VENDICOD,'
      '  Vendedor.VENDA60NOME,'
      '  Portador.PORTICOD,'
      '  Portador.PORTA60DESCR,'
      '  0.00 as NOFIN2VLRICMSFRETE,'
      '  Cupom.TERMICOD'
      'from'
      '  cupom'
      
        'left outer join Cliente          on Cupom.CLIEA13ID    = Cliente' +
        '.CLIEA13ID'
      
        'left outer join PlanoRecebimento on Cupom.PLRCICOD     = PlanoRe' +
        'cebimento.PLRCICOD'
      
        'left outer join Vendedor         on Cupom.VENDICOD     = Vendedo' +
        'r.VENDICOD'
      
        'left outer join ContasReceber    on Cupom.CUPOA13ID    = ContasR' +
        'eceber.CUPOA13ID and ContasReceber.CTRCINROPARC = 1'
      
        'left outer join Portador         on ContasReceber.PORTICOD  = Po' +
        'rtador.PORTICOD'
      'Where'
      '  %Empresa1'
      'and'
      '  (%CampoData1 Between %DataInicial1 and %DataFinal1)'
      'and'
      '  (%Status1)'
      'and'
      '  (%CFOP1)'
      'and'
      '  (%Vendedor1)'
      'and'
      '  (%Portador1)'
      'and'
      '  (%Terminal1)')
    Macros = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'CampoData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'DataInicial'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'DataFinal'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Status'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'CFOP'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Vendedor'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Portador'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Terminal'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Empresa1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'CampoData1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'DataInicial1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'DataFinal1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Status1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'CFOP1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Vendedor1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Portador1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Terminal1'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 421
    Top = 5
    object SQLNotaFiscalEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLNotaFiscalCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLNotaFiscalSERIA5COD: TStringField
      FieldName = 'SERIA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLNotaFiscalOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
    end
    object SQLNotaFiscalNOFIINUMERO: TIntegerField
      FieldName = 'NOFIINUMERO'
    end
    object SQLNotaFiscalNOFICSTATUS: TStringField
      FieldName = 'NOFICSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLNotaFiscalNOFIDEMIS: TDateTimeField
      FieldName = 'NOFIDEMIS'
    end
    object SQLNotaFiscalNOFIN2VLRICMS: TBCDField
      FieldName = 'NOFIN2VLRICMS'
      Precision = 15
      Size = 2
    end
    object SQLNotaFiscalNOFIN2VLRNOTA: TBCDField
      FieldName = 'NOFIN2VLRNOTA'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalNOFIN2VLRSUBS: TBCDField
      FieldName = 'NOFIN2VLRSUBS'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalFORNA60RAZAOSOC: TStringField
      FieldName = 'FORNA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLNotaFiscalFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
    end
    object SQLNotaFiscalEMPRESADESTINO: TIntegerField
      FieldName = 'EMPRESADESTINO'
    end
    object SQLNotaFiscalEMPRA60RAZAOSOC: TStringField
      FieldName = 'EMPRA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLNotaFiscalNOFIINROTALAO: TIntegerField
      FieldName = 'NOFIINROTALAO'
    end
    object SQLNotaFiscalCFOPA5COD: TStringField
      FieldName = 'CFOPA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLNotaFiscalNOFIN2BASCALCICMS: TBCDField
      FieldName = 'NOFIN2BASCALCICMS'
      Precision = 15
      Size = 2
    end
    object SQLNotaFiscalPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
    end
    object SQLNotaFiscalPLRCA60DESCR: TStringField
      FieldName = 'PLRCA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLNotaFiscalVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object SQLNotaFiscalVENDA60NOME: TStringField
      FieldName = 'VENDA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLNotaFiscalPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
    end
    object SQLNotaFiscalPORTA60DESCR: TStringField
      FieldName = 'PORTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLNotaFiscalNOFIN2VLRICMSFRETE: TBCDField
      FieldName = 'NOFIN2VLRICMSFRETE'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
    end
  end
  object DSSQLCFOP: TDataSource
    DataSet = SQLCFOP
    Left = 508
    Top = 5
  end
  object SQLCFOP: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      'CFOPA5COD'
      'From'
      'NOTAFISCAL'
      'GROUP BY'
      'CFOPA5COD')
    Macros = <>
    Left = 536
    Top = 5
    object SQLCFOPCFOPA5COD: TStringField
      FieldName = 'CFOPA5COD'
      Origin = 'DB.NOTAFISCAL.CFOPA5COD'
      FixedChar = True
      Size = 5
    end
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 564
    Top = 5
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select '
      'CLIEA13ID, CLIEA60RAZAOSOC'
      'From'
      'Cliente'
      'Order By'
      'CLIEA60RAZAOSOC')
    Macros = <>
    Left = 592
    Top = 5
  end
  object DSSQLVendedor: TDataSource
    DataSet = SQLVendedor
    Left = 452
    Top = 5
  end
  object SQLVendedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select VENDICOD,VENDA60NOME from VENDEDOR'
      'Order By'
      'VENDA60NOME')
    Macros = <>
    Left = 480
    Top = 5
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
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    ReportName = 
      'C:\Desenv\UnitGestao Oficial\Relatorios\Listagem Itens Pedidos d' +
      'e Venda.rpt'
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
    Left = 242
    Top = 5
  end
  object SQLPortador: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'PORTICOD,'
      'PORTA60DESCR'
      'FROM'
      'PORTADOR'
      'ORDER BY'
      'PORTA60DESCR')
    Macros = <>
    Left = 564
    Top = 33
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
    Left = 592
    Top = 33
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
    Left = 629
    Top = 4
  end
  object DSSQLTerminal: TDataSource
    DataSet = SQLTerminal
    Left = 657
    Top = 4
  end
end
