inherited FormRelatorioMovimentoCaixaFaturamento: TFormRelatorioMovimentoCaixaFaturamento
  Left = 443
  Top = 126
  Caption = 'Relatorio Caixa Faturamento'
  PixelsPerInch = 96
  TextHeight = 13
  object ppReport: TppReport
    AutoStop = False
    DataPipeline = PipeSQLNotasEmitidas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 756
    Top = 156
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'PipeSQLNotasEmitidas'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 35719
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Movimento Caixa Faturamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 5122
        mmLeft = 265
        mmTop = 7938
        mmWidth = 65405
        BandType = 1
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Per'#237'odo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 191
        mmTop = 15346
        mmWidth = 13377
        BandType = 1
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Terminal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3754
        mmLeft = 265
        mmTop = 19579
        mmWidth = 15140
        BandType = 1
      end
      object LbPeriodo: TppLabel
        UserName = 'LbPeriodo'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbPeriodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3629
        mmLeft = 15346
        mmTop = 15610
        mmWidth = 14389
        BandType = 1
      end
      object LbTerminal: TppLabel
        UserName = 'LbTerminal'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbTerminal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3629
        mmLeft = 18521
        mmTop = 19579
        mmWidth = 15766
        BandType = 1
      end
      object ppLabel9: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3754
        mmLeft = 265
        mmTop = 23548
        mmWidth = 14014
        BandType = 1
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3754
        mmLeft = 16669
        mmTop = 23548
        mmWidth = 26776
        BandType = 1
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Responsaveis pelo Caixa Ass.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 265
        mmTop = 31485
        mmWidth = 46567
        BandType = 1
      end
      object ppOperador: TppLabel
        UserName = 'Operador'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Operador:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 265
        mmTop = 27517
        mmWidth = 16129
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 11906
      mmPrintPosition = 0
      object ppLabel10: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Rela'#231#227'o de Notas Fiscais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3429
        mmLeft = 0
        mmTop = 265
        mmWidth = 34883
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Valor NF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3429
        mmLeft = 52123
        mmTop = 6879
        mmWidth = 12107
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Serie / Numero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3429
        mmLeft = 2646
        mmTop = 6879
        mmWidth = 21971
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NOFIINUMERO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 14288
        mmTop = 0
        mmWidth = 4763
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NOFIN2VLRNOTA'
        DataPipeline = PipeSQLNotasEmitidas
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeSQLNotasEmitidas'
        mmHeight = 3503
        mmLeft = 43921
        mmTop = 201
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SERIA5COD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3429
        mmLeft = 3175
        mmTop = 265
        mmWidth = 1566
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 17463
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'PipePrevenda'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 12171
        mmWidth = 197300
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = PipePrevenda
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Version = '10.06'
          mmColumnWidth = 0
          DataPipelineName = 'PipePrevenda'
          object ppTitleBand5: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 16404
            mmPrintPosition = 0
            object ppLabel15: TppLabel
              UserName = 'Label6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Prevendas Canceladas '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold, fsUnderline]
              Transparent = True
              mmHeight = 4233
              mmLeft = 3175
              mmTop = 3175
              mmWidth = 40386
              BandType = 1
            end
            object ppLabel4: TppLabel
              UserName = 'Label1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Cliente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold, fsUnderline]
              Transparent = True
              mmHeight = 4233
              mmLeft = 3440
              mmTop = 10848
              mmWidth = 12277
              BandType = 1
            end
            object ppLabel5: TppLabel
              UserName = 'Label2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Motivo do Cancelamento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold, fsUnderline]
              Transparent = True
              mmHeight = 4233
              mmLeft = 98690
              mmTop = 11113
              mmWidth = 43434
              BandType = 1
            end
            object ppLabel6: TppLabel
              UserName = 'Label3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Valor Pedido'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold, fsUnderline]
              Transparent = True
              mmHeight = 4498
              mmLeft = 173567
              mmTop = 11113
              mmWidth = 22267
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppDBText5: TppDBText
              UserName = 'DBText4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'CLIENTENOME'
              DataPipeline = PipePrevenda
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'PipePrevenda'
              mmHeight = 3754
              mmLeft = 2646
              mmTop = 0
              mmWidth = 93134
              BandType = 4
            end
            object ppDBText8: TppDBText
              UserName = 'DBText7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'PRVDN2TOTITENS'
              DataPipeline = PipePrevenda
              DisplayFormat = 'R$ #,0.00;-R$ #,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipePrevenda'
              mmHeight = 3754
              mmLeft = 174361
              mmTop = 0
              mmWidth = 20638
              BandType = 4
            end
            object ppDBText6: TppDBText
              UserName = 'DBText6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'OBS'
              DataPipeline = PipePrevenda
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'PipePrevenda'
              mmHeight = 3704
              mmLeft = 98425
              mmTop = 265
              mmWidth = 69850
              BandType = 4
            end
          end
          object SumarioNumerarios: TppSummaryBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 8731
            mmPrintPosition = 0
          end
        end
      end
      object ppLine11: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 11377
        mmWidth = 197115
        BandType = 7
      end
      object ppLine12: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 2910
        mmTop = 794
        mmWidth = 61383
        BandType = 7
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc1'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NOFIN2VLRNOTA'
        DataPipeline = PipeSQLNotasEmitidas
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeSQLNotasEmitidas'
        mmHeight = 3429
        mmLeft = 27781
        mmTop = 1588
        mmWidth = 36788
        BandType = 7
      end
    end
  end
  object SQLPrevenda: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * From Prevenda'
      'where'
      ' (%MFiltro) and'
      ' (%MEmpresa) and'
      ' SITUACAO = '#39'CANCELADO'#39
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 664
    Top = 187
    object SQLPrevendaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.PREVENDA.EMPRICOD'
    end
    object SQLPrevendaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.PREVENDA.TERMICOD'
    end
    object SQLPrevendaPRVDICOD: TIntegerField
      FieldName = 'PRVDICOD'
      Origin = 'DB.PREVENDA.PRVDICOD'
    end
    object SQLPrevendaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.PREVENDA.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPrevendaPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.PREVENDA.PLRCICOD'
    end
    object SQLPrevendaVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.PREVENDA.VENDICOD'
    end
    object SQLPrevendaPRVDN2TOTITENS: TBCDField
      FieldName = 'PRVDN2TOTITENS'
      Origin = 'DB.PREVENDA.PRVDN2TOTITENS'
      Precision = 15
      Size = 3
    end
    object SQLPrevendaPRVDN2DESC: TBCDField
      FieldName = 'PRVDN2DESC'
      Origin = 'DB.PREVENDA.PRVDN2DESC'
      Precision = 15
      Size = 3
    end
    object SQLPrevendaPRVDCIMPORT: TStringField
      FieldName = 'PRVDCIMPORT'
      Origin = 'DB.PREVENDA.PRVDCIMPORT'
      FixedChar = True
      Size = 1
    end
    object SQLPrevendaCLIENTENOME: TStringField
      FieldName = 'CLIENTENOME'
      Origin = 'DB.PREVENDA.CLIENTENOME'
      FixedChar = True
      Size = 60
    end
    object SQLPrevendaPDVDDHVENDA: TDateTimeField
      FieldName = 'PDVDDHVENDA'
      Origin = 'DB.PREVENDA.PDVDDHVENDA'
    end
    object SQLPrevendaPLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'DB.PREVENDA.PLACA'
      Size = 10
    end
    object SQLPrevendaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'DB.PREVENDA.SITUACAO'
    end
    object SQLPrevendaOBS: TStringField
      FieldName = 'OBS'
      Origin = 'DB.PREVENDA.OBS'
      Size = 200
    end
  end
  object DSSQLPrevenda: TDataSource
    AutoEdit = False
    DataSet = SQLPrevenda
    Left = 692
    Top = 187
  end
  object PipePrevenda: TppBDEPipeline
    DataSource = DSSQLPrevenda
    UserName = 'PipePrevenda'
    Left = 723
    Top = 187
    object PipePrevendappField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'EMPRICOD'
      FieldName = 'EMPRICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object PipePrevendappField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'TERMICOD'
      FieldName = 'TERMICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object PipePrevendappField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRVDICOD'
      FieldName = 'PRVDICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object PipePrevendappField4: TppField
      FieldAlias = 'CLIEA13ID'
      FieldName = 'CLIEA13ID'
      FieldLength = 13
      DisplayWidth = 13
      Position = 3
    end
    object PipePrevendappField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'PLRCICOD'
      FieldName = 'PLRCICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object PipePrevendappField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENDICOD'
      FieldName = 'VENDICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object PipePrevendappField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRVDN2TOTITENS'
      FieldName = 'PRVDN2TOTITENS'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 6
    end
    object PipePrevendappField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRVDN2DESC'
      FieldName = 'PRVDN2DESC'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 7
    end
    object PipePrevendappField9: TppField
      FieldAlias = 'PRVDCIMPORT'
      FieldName = 'PRVDCIMPORT'
      FieldLength = 1
      DisplayWidth = 1
      Position = 8
    end
    object PipePrevendappField10: TppField
      FieldAlias = 'CLIENTENOME'
      FieldName = 'CLIENTENOME'
      FieldLength = 60
      DisplayWidth = 60
      Position = 9
    end
    object PipePrevendappField11: TppField
      FieldAlias = 'PDVDDHVENDA'
      FieldName = 'PDVDDHVENDA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 10
    end
    object PipePrevendappField12: TppField
      FieldAlias = 'PLACA'
      FieldName = 'PLACA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 11
    end
    object PipePrevendappField13: TppField
      FieldAlias = 'SITUACAO'
      FieldName = 'SITUACAO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 12
    end
    object PipePrevendappField14: TppField
      FieldAlias = 'OBS'
      FieldName = 'OBS'
      FieldLength = 200
      DisplayWidth = 200
      Position = 13
    end
  end
  object SQLNotaFiscal: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      'NotaFiscal.EMPRICOD,'
      'NotaFiscal.CLIEA13ID,'
      'Cliente.CLIEA60RAZAOSOC,'
      'NotaFiscal.SERIA5COD,'
      'NotaFiscal.OPESICOD,'
      'NotaFiscal.NOFIINUMERO,'
      'NotaFiscal.NOFICSTATUS,'
      'NotaFiscal.NOFIDEMIS,'
      'NotaFiscal.NOFIN2VLRICMS,'
      'NotaFiscal.NOFIN2VLRNOTA,'
      'NotaFiscal.NOFIN2VLRSUBS,'
      'NotaFiscal.NOFIN3VLRPIS,'
      'NotaFiscal.NOFIN3VLRCOFINS,'
      'Fornecedor.FORNA60RAZAOSOC'
      'From'
      'NotaFiscal'
      
        'left outer join Cliente on NotaFiscal.CLIEA13ID = Cliente.CLIEA1' +
        '3ID'
      
        'left outer join Fornecedor on NotaFiscal.FORNICOD = Fornecedor.F' +
        'ORNICOD'
      'Where'
      '%Empresa and'
      '(NotaFiscal.NOFIDEMIS Between %DataInicial and %DataFinal)'
      'ORDER BY'
      '  NOFIINUMERO')
    Macros = <
      item
        DataType = ftString
        Name = 'Empresa'
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
      end>
    Left = 664
    Top = 157
    object SQLNotaFiscalEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.NOTAFISCAL.EMPRICOD'
    end
    object SQLNotaFiscalCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.NOTAFISCAL.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLNotaFiscalFORNA60RAZAOSOC: TStringField
      FieldName = 'FORNA60RAZAOSOC'
      Size = 60
    end
    object SQLNotaFiscalSERIA5COD: TStringField
      FieldName = 'SERIA5COD'
      Origin = 'DB.NOTAFISCAL.SERIA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLNotaFiscalOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Origin = 'DB.NOTAFISCAL.OPESICOD'
    end
    object SQLNotaFiscalNOFIINUMERO: TIntegerField
      FieldName = 'NOFIINUMERO'
      Origin = 'DB.NOTAFISCAL.NOFIINUMERO'
    end
    object SQLNotaFiscalNOFICSTATUS: TStringField
      FieldName = 'NOFICSTATUS'
      Origin = 'DB.NOTAFISCAL.NOFICSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLNotaFiscalNOFIDEMIS: TDateTimeField
      FieldName = 'NOFIDEMIS'
      Origin = 'DB.NOTAFISCAL.NOFIDEMIS'
    end
    object SQLNotaFiscalNOFIN2VLRNOTA: TBCDField
      FieldName = 'NOFIN2VLRNOTA'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRNOTA'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalNOFIN2VLRICMS: TBCDField
      FieldName = 'NOFIN2VLRICMS'
      Precision = 15
      Size = 2
    end
    object SQLNotaFiscalNOFIN2VLRSUBS: TBCDField
      FieldName = 'NOFIN2VLRSUBS'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRSUBS'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalNOFIN3VLRPIS: TBCDField
      FieldName = 'NOFIN3VLRPIS'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalNOFIN3VLRCOFINS: TBCDField
      FieldName = 'NOFIN3VLRCOFINS'
      Precision = 15
      Size = 3
    end
  end
  object DSSQLNotaFiscal: TDataSource
    AutoEdit = False
    DataSet = SQLNotaFiscal
    Left = 692
    Top = 157
  end
  object PipeSQLNotasEmitidas: TppBDEPipeline
    DataSource = DSSQLNotaFiscal
    UserName = 'PipeSQLNotasEmitidas'
    Left = 723
    Top = 157
    object PipeSQLNotasEmitidasppField1: TppField
      FieldAlias = 'EMPRICOD'
      FieldName = 'EMPRICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object PipeSQLNotasEmitidasppField2: TppField
      FieldAlias = 'CLIEA13ID'
      FieldName = 'CLIEA13ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object PipeSQLNotasEmitidasppField3: TppField
      FieldAlias = 'CLIEA60RAZAOSOC'
      FieldName = 'CLIEA60RAZAOSOC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object PipeSQLNotasEmitidasppField4: TppField
      FieldAlias = 'FORNA60RAZAOSOC'
      FieldName = 'FORNA60RAZAOSOC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object PipeSQLNotasEmitidasppField5: TppField
      FieldAlias = 'SERIA5COD'
      FieldName = 'SERIA5COD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object PipeSQLNotasEmitidasppField6: TppField
      FieldAlias = 'OPESICOD'
      FieldName = 'OPESICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object PipeSQLNotasEmitidasppField7: TppField
      FieldAlias = 'OperacaoLookup'
      FieldName = 'OperacaoLookup'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object PipeSQLNotasEmitidasppField8: TppField
      FieldAlias = 'NOFIINUMERO'
      FieldName = 'NOFIINUMERO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object PipeSQLNotasEmitidasppField9: TppField
      FieldAlias = 'NOFICSTATUS'
      FieldName = 'NOFICSTATUS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object PipeSQLNotasEmitidasppField10: TppField
      FieldAlias = 'NOFIDEMIS'
      FieldName = 'NOFIDEMIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object PipeSQLNotasEmitidasppField11: TppField
      FieldAlias = 'NOFIN2VLRNOTA'
      FieldName = 'NOFIN2VLRNOTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object PipeSQLNotasEmitidasppField12: TppField
      FieldAlias = 'NOFIN2VLRICMS'
      FieldName = 'NOFIN2VLRICMS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object PipeSQLNotasEmitidasppField13: TppField
      FieldAlias = 'NOFIN2VLRSUBS'
      FieldName = 'NOFIN2VLRSUBS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object PipeSQLNotasEmitidasppField14: TppField
      FieldAlias = 'NOFIN3VLRPIS'
      FieldName = 'NOFIN3VLRPIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object PipeSQLNotasEmitidasppField15: TppField
      FieldAlias = 'NOFIN3VLRCOFINS'
      FieldName = 'NOFIN3VLRCOFINS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
  end
end
